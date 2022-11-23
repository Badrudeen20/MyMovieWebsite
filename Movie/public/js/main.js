
const menu = (()=>{
let flag  = true
    $('.bi-list').click(function(){
        if(flag){
            $('.menubar').removeClass('d-none')
            flag = false
        }else{
            $('.menubar').addClass('d-none')
            flag = true
        }
    })
})()


//drop down mwnu
const dropdown = (()=>{
    let flag  = true
    $('.drop').click(function(){
        if(flag){
            $('.down').removeClass('d-none')
            $('.dropdownIcon').removeClass('bi-chevron-down')
            $('.dropdownIcon').addClass('bi-chevron-up')
            flag = false
        }else{
            $('.down').addClass('d-none')
            $('.dropdownIcon').removeClass('bi-chevron-up')
            $('.dropdownIcon').addClass('bi-chevron-down')
            flag = true
        }
        
    })
})()




//selected menu list
$('.sidebarlist .ulList .liList').each(function(){
    $(this).click(function(){
         removeActiveList($(this))
    })
})

//selected menu drop list
$('.sidebarlist .ulChildList .liChildList').each(function(){
    $(this).click(function(){
         removeActiveList($(this))
    })
})


//remove active
function removeActiveList(active){
    $('.sidebarlist ul li').each(function(){
      $(this).removeClass('active')
    })
    const selected =  active.attr('data-id')
    $(`[data-id="${selected}"]`).addClass('active')
}


//reply
const replayArr = []
    function replyForm(postId,commentId){
        if(replayArr.includes(commentId)){
            $('#form'+commentId).html('')
            replayArr.splice(replayArr.indexOf(commentId), 1); 
        }else{
            $('#form'+commentId).html(`
                <div class="card border-0 mb-3" >
                    <form class="row" action="/postComment" method="POST">
                    <div class="col-md-8">
                        <div class="form-group">
                        <textarea class="form-control"  rows="3" placeholder="Share your thoughts..." name="content"></textarea>
                        </div>
                        <div class="form-group mt-3">
                        <input class="form-control"   placeholder="Enter name" name="name" />
                        </div>
                    
                        <input  type="hidden" name="postId" value="${postId}"/>
                        <input type="hidden" name="responseTo" value="${commentId}"  />
                        
                        <div class="form-group">
                        <button type="submit" class="btn btn-primary mt-2 float-right">Reply</button>
                        </div>
                    </div>
                    </form>
                </div>
            `)
            replayArr.push(commentId)
        }
       
    }

    console.log(replayArr)
  
