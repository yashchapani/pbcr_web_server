
(function ($) {
    "use strict";

    

    /*==================================================================
    [ Focus Contact2 ]*/
    $('.input2').each(function(){
        $(this).on('blur', function(){
            if($(this).val().trim() != "") {
                $(this).addClass('has-val');
            }
            else {
                $(this).removeClass('has-val');
            }
        })    
    })
            
  
    
    /*==================================================================
    [ Validate ]*/
    var name = $('.validate-input input[name="name"]');
    var pan = $('.validate-input input[name="pan"]');
    var aadhaar = $('.validate-input input[name="aadhaar"]');
    var address = $('.validate-input input[name="address"]');


    $("#search").click(function(){
        var check = true;
        if($(pan).val().trim() == '' && $(name).val().trim() == '' && 
            $(aadhaar).val().trim() == '' && $(address).val().trim() == ''){
                showValidate(pan);
                showValidate(name);
                showValidate(address);
                showValidate(aadhaar);
                check=false;
        }
        var panNum = $("#pan").val();
        var nameVal = $("#name").val();
        var addressVal = $("#address").val();
        var aadhaarVal = $("#aadhaar").val();
        console.log(check);
        var tim = 1;
        if(check == true){
            $.post("process.jsp",
                {
                    pan: panNum,
                    name: nameVal,
                    address: addressVal,
                    aadhaar: aadhaarVal

                },
                function(response, status) {
                    if(status == "success")
                    {
                        //populating content row
                        tim = response[1][0].time;
                        response = response[0];
                        var content = '';
                        
                        for(var i = 0; i < response.length; i++)
                        {
                            var trans_id = '<tr><td>'+ response[i].transactionId+'</td>';
                            var pdf_link = '<td><a href = "'+ response[i].pdfLink +'" target="_blank">Click Here To Download Pdf</a></td></tr>';

                            content+= trans_id + pdf_link;
                        }

                        $("#content-tbody").html(content);
                        $("#myModal").modal('show');
                        $(".modal-title").html("Transaction details for the given parameters obtained in " + tim + "s ");
                    }
                    
                }
            );

            // setting the header of modal
            
        }   



        return check;
    });


    $('.input2').each(function(){
        $(this).focus(function(){
            $('.input2').each(function(){
                hideValidate(this);
            });
       });
    });

    function showValidate(input) {
        var thisAlert = $(input).parent();

        $(thisAlert).addClass('alert-validate');
    }

    function hideValidate(input) {
        var thisAlert = $(input).parent();

        $(thisAlert).removeClass('alert-validate');
    }


    $("#search").click(function(){



        });
    
    

})(jQuery);