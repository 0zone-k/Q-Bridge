
window.addEventListener('turbo:load', function() {

  console.log('Alert file loaded');

  // 初期化
  let unreadCount = 0;

  // ユーザーネームの要素を取得
  const noticeElement = document.getElementsByClassName('notice');

  if (!noticeElement) {
      console.error('Notice element not found');
      return;
  }

  // 新しい回答が来たときに呼び出す関数
  function newAnswerReceived() {
      unreadCount++;
      updateUnreadCount();
  }

  // 未読数を更新する関数
  function updateUnreadCount() {
      if (unreadCount > 0) {
          noticeElement.innerHTML = `${unreadCount}`;
      } else {
          noticeElement.innerHTML = "";
      }
  }

  // 例: 新しい回答が来たときに関数を呼び出す
  // ここを実際の回答受信イベントに置き換えてください
  setTimeout(newAnswerReceived, 3000); // 3秒後に新しい回答を受信したと仮定
});