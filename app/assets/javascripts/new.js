$(function ()
{
  // onはマッチした要素の任意のイベントをバインドする。また対象となるエレメントは、現在だけでなく将来マッチするものも含む。
  // changeは input 、textarea、select要素専用のイベント。
  // eはprogressevent。起ったイベントの様々な要素が含まれる。
  $('input:file').on('change', function (e)
  {
    // FileReaderとはHTML5 世代の機能でユーザーのPC内にあるファイルやバッファ上の生データに対して、読み取りアクセスを行えるオブジェクトです。
    var reader = new FileReader();
    reader.onload = function (e)
    {
      var loadImageUri = e.target.result
      // .attr('src',loadImageUri)はimageのsrcをloadImageUriび置き換える
      $('#preview').attr('src', loadImageUri);
    }
    // readAsDataURLはDataURIScheme文字列を取得します。
    reader.readAsDataURL(e.target.files[0]);

  }
  )
})
