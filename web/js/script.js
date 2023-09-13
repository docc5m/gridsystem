$(function() {

    window.addEventListener('message', (event) => {

        data            = event.data
    

        if(data.toggle) {

            var sidebar     = document.getElementById('sidebar')
            sidebar.innerHTML = `

                <div class="logo">
                    <div>
                        <img alt="image" src="${data.logo}" class="clothes-icon21"/>
                    </div>
                </div>

                <div class="message">
                    <div id="text">
                        <span class="text">${data.text}</spawn>
                    </div>
                    <div>
                        <span class="text">PRESS <span class="control">${data.control}</span> FOR INTERACT </spawn>
                    </div>
                </div>
            `
            // $('#container').css({"display" : "flex"})
            $('#container').fadeIn();

        } else {
            $('#container').fadeOut();
        }

    });
});