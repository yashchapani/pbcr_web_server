<%@ page import = "pbcr.*" %>
<%@ page import ="java.util.*"%>
<%@ page import ="java.lang.*"%>
<%@ page import="org.json.simple.*"%>
<%@ page import="com.google.gson.Gson" %>

<%!	
	public ArrayList<Result> merge(ArrayList<Result> result, ArrayList<Result> result1){
		int i,j;
        for(i = 0,j = 0; i < result.size() && j < result1.size();){
            long id1 = result.get(i).getTransactionId();
            long id2 = result1.get(j).getTransactionId();
            if(id2 < id1){
                result.remove(i);                
            }
            else if(id1 < id2){
                j++;
            }
            else{
                i++;
                j++;
            }
        
        }
        while(i < result.size()){
            result.remove(i);
        }
        return result;
	}
%>
<%
	String hash = "1220e81e9caed8b70129ece1fa71dd7b0cfd948cdcab0727112607d6ad21eb2a1c18";
	int nt = 8;
	int f = 0;
	String pan = request.getParameter("pan");
	String name = request.getParameter("name");
	String address = request.getParameter("address");
	String aadhaar = request.getParameter("aadhaar");
	long startTime = System.nanoTime();
	ArrayList<Result> result = new ArrayList<>();
	if(!"".equals(pan)){
		ArrayList<Result> result1 = SingleVsMulti.findTransactionDetails(nt, "pan", pan, hash);
		Collections.sort(result1);
		if(f == 0){
			f = 1;
			result = result1;
		}
		else{
			result = merge(result, result1);
		}
	}
	if(!"".equals(name)){
		ArrayList<Result> result1 = SingleVsMulti.findTransactionDetails(nt, "name", name, hash);
		Collections.sort(result1);
		if(f == 0){
			f = 1;
			result = result1;
		}
		else{
			result = merge(result, result1);
		}
	}
	if(!"".equals(address)){
		ArrayList<Result> result1 = SingleVsMulti.findTransactionDetails(nt, "address", address, hash);
		Collections.sort(result1);
		if(f == 0){
			f = 1;
			result = result1;
		}
		else{
			result = merge(result, result1);
		}
	}
	if(!"".equals(aadhaar)){
		ArrayList<Result> result1 = SingleVsMulti.findTransactionDetails(nt, "aadhaar", aadhaar, hash);
		Collections.sort(result1);
		if(f == 0){
			f = 1;
			result = result1;
		}
		else{
			result = merge(result, result1);
		}
	}
	long endTime = System.nanoTime();
	double totalTime = ((double)(endTime - startTime)) / 1000000000;

	Gson gson = new Gson();
	String jsn = gson.toJson(result);
	String timeJsn = "[{\"time\":" + (gson.toJson(totalTime)).substring(0,6) + "}]";
	response.setContentType("application/json");
	response.getWriter().print("[" + jsn + "," + timeJsn + "]");
	out.flush();



	/*
	at every 300 127- 342904
	Ran numbers are:-
	82712150
	38458809
	28043203
	56585285
	99956967
	13576806
	4381000
	26723853
	49440911
	4604552
	18892526
	21565350
	31618579
	76153541
	29711746

	*/
%>
