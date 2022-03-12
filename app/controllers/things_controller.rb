class ThingsController < ApplicationController
  def show
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: 'file_name', # pdfファイルの名前。これがないとエラーが出ます
               layout: 'pdf.html.erb', # レイアウトファイルの指定。views/layoutsが読まれます。
               template: 'things/show.html.erb' # テンプレートファイルの指定。viewsフォルダが読み込まれます。
      end
    end
  end
end
