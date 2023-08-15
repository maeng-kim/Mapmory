// JSON 데이터를 변수에 정의
let hashtagsData = [
    {"model":"post.hashtag","pk":1,"fields":{"name":"#조용한"}},
    {"model":"post.hashtag","pk":2,"fields":{"name":"#힙한"}},
    {"model":"post.hashtag","pk":3,"fields":{"name":"#E들의"}},
    {"model":"post.hashtag","pk":4,"fields":{"name":"#시끄러운"}},
    {"model":"post.hashtag","pk":5,"fields":{"name":"#화려한"}},
    {"model":"post.hashtag","pk":6,"fields":{"name":"#편안한"}},
    {"model":"post.hashtag","pk":7,"fields":{"name":"#I들의"}},
    {"model":"post.hashtag","pk":8,"fields":{"name":"#귀여운"}},
    {"model":"post.hashtag","pk":9,"fields":{"name":"#한식"}},
    {"model":"post.hashtag","pk":10,"fields":{"name":"#중식"}},
    {"model":"post.hashtag","pk":11,"fields":{"name":"#양식"}},
    {"model":"post.hashtag","pk":12,"fields":{"name":"#일식"}},
    {"model":"post.hashtag","pk":13,"fields":{"name":"#사진찍기좋은"}},
    {"model":"post.hashtag","pk":14,"fields":{"name":"#단체모임"}},
    {"model":"post.hashtag","pk":15,"fields":{"name":"#혼밥하기좋은"}},
    {"model":"post.hashtag","pk":16,"fields":{"name":"#넓은"}},
    {"model":"post.hashtag","pk":17,"fields":{"name":"#요즘뜨는"}},
    {"model":"post.hashtag","pk":18,"fields":{"name":"#뷰맛집"}},
    {"model":"post.hashtag","pk":19,"fields":{"name":"#먹방"}},
    {"model":"post.hashtag","pk":20,"fields":{"name":"#데이트하기좋은"}},
    {"model":"post.hashtag","pk":21,"fields":{"name":"#재밌는"}},
];

let selectedHashtags = [];

function createHashtagCheckboxes() {
    const container1 = document.createElement('div');
    const container2 = document.createElement('div');
    const container3 = document.createElement('div');

    container1.innerHTML = '<h2 style="font-size=20px">#분위기</h2>';
    container2.innerHTML = '<h2 style="font-size=20px">#음식</h2>';
    container3.innerHTML = '<h2 style="font-size=20px">#추천 이유</h2>';

    container1.className = 'hashtag1';
    container2.className = 'hashtag2';
    container3.className = 'hashtag3';

    const containers = [container1, container2, container3];

    // 해시태그를 3개 그룹으로 나누기
    const group1 = hashtagsData.slice(0, 8);
    const group2 = hashtagsData.slice(8, 12);
    const group3 = hashtagsData.slice(12);

    // 각 그룹에 해당하는 컨테이너에 체크박스를 생성
    generateCheckboxes(group1, container1);
    generateCheckboxes(group2, container2);
    generateCheckboxes(group3, container3);

    // 컨테이너를 페이지에 추가
    containers.forEach(container => {
        document.getElementById('hashtag-container').appendChild(container);
    });
}

function generateCheckboxes(group, container) {
    let checkboxesHTML = '';

    group.forEach((hashtag, index) => {
        const name = hashtag.fields.name;
        checkboxesHTML += `<input id="check1" type="checkbox" name="hashtags" value="${name}">
                        <label for="check1">${name} </label>`;

        // 해시태그 체크박스 2개마다 행 바꾸기
        if ((index + 1) % 2 === 0 || (group.length % 2 !== 0 && index === group.length - 1)) {
            checkboxesHTML += '<br>';
        }
    });

    container.innerHTML += checkboxesHTML;
}

function submitSelection() {
    const checkboxes = document.getElementsByName('hashtags');

    selectedHashtags = Array.from(checkboxes)
        .filter(checkbox => checkbox.checked)
        .map(checkbox => checkbox.value);

    if (selectedHashtags.length >= 3) {
        const createPostUrl = `/post/create_post/${username}/`; 
       /* location.href = createPostUrl; */
        document.getElementById("hashtagForm").submit();
    } else {
        alert('3개 이상 선택해주세요');
    }
}


window.onload = createHashtagCheckboxes;

