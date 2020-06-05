$(document).ready(function () {

    function load_data(query) {
        $.ajax({
            url: "php/liveSearch.php",
            method: "POST",
            data: {
                query: query
            },
            success: function (data) {
                $('#result').html(data); // Display the output there
            }
        });
    }

    $('#search_text').keyup(function () {
        let search = $(this).val(); // Input from the text box
        if (search != '') {
            load_data(search); // If it's not empty pass the input through load_data()
        } else {
            load_data();
        }

    });

});