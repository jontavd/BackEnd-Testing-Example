# encoding: utf-8

$url = 'http://jsonplaceholder.typicode.com/posts/'

Quando(/^eu solicitar a lista de posts$/) do
  @last_response = HTTParty.get($url)
end

Entao(/^recebo a lista completa$/) do
    @last_response.each do |post|
    	puts 'id: ' + post['id'].to_s + ' id do usuario: ' + post['userId'].to_s
	end
end

Quando(/^eu informar o (\d+) do post$/) do |id|
  @last_response = HTTParty.get($url + id)
end

Entao(/^recebo o usuario, titulo e a descricao$/) do
   if @last_response.not_found? then
  	puts 'Post inexistente - 404 ERROR'
  else
  	puts 'Titulo: ' + @last_response['title'].to_s
    puts ' Descricao: ' + @last_response['body'].to_s
  end
end

Quando(/^eu criar um novo post$/) do
	@last_response = HTTParty.post($url,
    :query => { title: 'foo', body: 'bar', userId: 1})
end

Entao(/^confirmo a criacao de um novo post$/) do
  puts 'id do post: ' + @last_response['id'].to_s
end

Quando(/^eu passar um (\d+) de um post para deletar$/) do |id|
  @last_response = HTTParty.delete($url + id)
end

Entao(/^confirmo que o post foi deletado$/) do
  if @last_response.not_found? then
  	puts 'Post inexistente - 404 ERROR'
  else
  	puts 'Post deletado'
  end
end

Quando(/^eu escolher um (\d+) de um post para alterar$/) do |id|
  @last_response = HTTParty.put($url + id)
end

Entao(/^altero o titulo do post para 'atualizado'$/) do
  if @last_response.not_found? then
  	puts 'Post inexistente - 404 ERROR'
  else
  	puts 'Post atualizado'
  end
end
