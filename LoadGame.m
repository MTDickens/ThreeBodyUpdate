function [answer]=LoadGame(answer)
command = ['Input the file name you want to load: ����Ҫ��ȡ����Ϸ��']
savegame = input(command,'s')
filename=[savegame,'.mat']
load(filename)
command = 'Next round? [0] ����0��������һ�غϡ�';
answer = input(command,'s')
while ~isequal(answer, '0')
    command = 'Are you kidding Great Doge? Doge said it should be "0"! ���ڶ�ΰ����������������𣿵���˵Ҫ����0��������һ�غϣ�';
    answer = input(command,'s')
end