d = fopen('C:\�����\���\in6.txt', 'r');
stroka1 = fgetl(d);
stroka1n1 = strrep(stroka1, ' ', '');
l = length(stroka1n1);
r = regexp(stroka1, ' ', 'split');
stroka1n2 = r{end};
for i=2:length(r)-1
stroka1n2 = [stroka1n2 ' ' r{i}];
end
stroka1n2 = [stroka1n2 ' ' r{1}];


stroka1n3 = strrep(stroka1, '1980', '������ ��������� �����������');
stroka1n3 = strrep(stroka1n3, '5', '����');
stroka1n3 = strrep(stroka1n3, '4', '������');

nr1 = [];

expression = '[1234567890]';
for i=1:length(r)
if strcmp(r{i}, expression) == 0
nr1=[nr1, str2double(r{i})];
end

end

nr2 = [];
nr3 = [];
nr4 = [];


str2 = fgetl(d);
r = regexp(str2, ' ', 'split');
for i=1:4
nr2 = [nr2, str2double(r{i})];
end


stroka3 = fgetl(d);
r = regexp(stroka3, ' ', 'split');
for i=1:4
nr3 = [nr3, str2double(r{i})];
end

stroka4 = fgetl(d);
r = regexp(stroka4, ' ', 'split');
for i=1:4
nr4 = [nr4, str2double(r{i})];
end	


x = [1:0.1:5];
y = sin(6*x);

File1NameExp='step';
DirName1=['C:\�����\���\' File1NameExp];
cd(DirName1);
FileHtml=fopen(['lab4_10.html'],'wt');
fprintf(FileHtml,['<HTML>\n']);
fprintf(FileHtml,['<head>\n']);
fprintf(FileHtml,['<title>����� �� ������������ ������ �4\n']);
fprintf(FileHtml,['</title>\n']);
fprintf(FileHtml,['<META HTTP-EQUIV="Content-Type"CONTENT="text/html; charset=windows">\n']);
fprintf(FileHtml,['</head>\n']);
fprintf(FileHtml,['<body>\n']);
fprintf(FileHtml,['<center><H3>�����<br>�� ������������ ������ �4</h3></center>\n']);
h1=figure('Name','��������� ����������� (�������� Image0)im3d');

fprintf(FileHtml,['<br><br> ���������� ���������� \n']);
fprintf(FileHtml,['<br><br> ������ �������: ' num2str(l) '\n']);
fprintf(FileHtml,['<br><br> ������ �������: ' stroka1n2 '\n']);
fprintf(FileHtml,['<br><br> ������ �������: ' stroka1n3 '\n']);
fprintf(FileHtml,['<br><br> ��������� �������: ' num2str(nr1) '\n']);
fprintf(FileHtml,['<br><br> ������ �������: \n']);
fprintf(FileHtml,['<br><br>' num2str(nr2) '\n']);
fprintf(FileHtml,['<br><br>' num2str(nr3) '\n']);
fprintf(FileHtml,['<br><br>' num2str(nr4) '\n']);

hold on;
plot(x,y);
hold off;

FileName000=['var6.jpg'];
saveas(h1,FileName000);
fprintf(FileHtml,['<br><br> ������� \n']);
fprintf(FileHtml,['<a href="' FileName000 '">']);
fprintf(FileHtml,['<br><img src="'...
FileName000 '" height="' '" >' '\n']);
fprintf(FileHtml,['</a>\n']);
fprintf(FileHtml,['</body>\n']);
fprintf(FileHtml,['</HTML>\n']);
fclose(FileHtml);
disp('���������� ���������');

fclose(d);