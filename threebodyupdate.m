clc
clear
command = ['What do you want to do? ��Ҫ��ʲô��',char(13,10)','[N] New Universe �µ�����',char(13,10)','[L] Load Universe �µ�����',char(13,10)','You will: �㽫Ҫ��']
answer = input(command,'s')
while and(~isequal(answer, 'N'),~isequal(answer, 'L'))
    clear command
    clear answer
    command = ['What do you want to do? ��Ҫ��ʲô��',char(13,10)','[N] New Universe �µ�����',char(13,10)','[L] Load Universe �µ�����',char(13,10)','You will: �㽫Ҫ��']
    answer = input(command,'s')
    while isequal(answer, 'L')
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
        while isequal(answer, '0')
            Round=Round+1
            [civilizations,systems,wars,communications,DestroyedSystems,DestroyedCivilizations,CombinedCivilizations,answer]=ActingRound(civilizations,systems,wars,communications,DestroyedSystems,DestroyedCivilizations,Round,OTCN,CombinedCivilizations)
        end
    end
end
while isequal(answer, 'L')
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
    while isequal(answer, '0')
        Round=Round+1
        [civilizations,systems,wars,communications,DestroyedSystems,DestroyedCivilizations,CombinedCivilizations,answer]=ActingRound(civilizations,systems,wars,communications,DestroyedSystems,DestroyedCivilizations,Round,OTCN,CombinedCivilizations)
    end
end
while isequal(answer, 'N')
    Round=1
    r=input('Radius ����뾶=');
    TSN=input('Total Systems Number ��ϵ����=');
    TCN=input('Total Civilizations Number ��������=');
    while TSN<TCN
        disp('Total Civilizations Number cannot be larger than Total Systems Number. �����������ܴ�����ϵ������')
        TSN=input('Total Systems Number ��ϵ����=');
        TCN=input('Total Civilizations Number ��������=');
    end
    disp('Universe parameters setting is completed. �������������ɡ�')
    disp(sprintf('Radius ����뾶= %d',r))
    disp(sprintf('Total Systems Number ��ϵ����= %d',TSN))
    disp(sprintf('Total Civilizations Number ��������= %d',TCN))
    command = 'Do you want to change the setting? [Y/N] �Ƿ�������ã�����Y��ѡ���ǣ�����N��ѡ���';
    answer = input(command,'s')
    while isequal(answer, 'Y')
        r=input('Radius ����뾶=');
        TSN=input('Total Systems Number ��ϵ����=');
        TCN=input('Total Civilizations Number ��������=');
        while TSN<TCN
            disp('Total Civilizations Number cannot be larger than Total Systems Number. �����������ܴ�����ϵ������')
            TSN=input('Total Systems Number ��ϵ����=');
            TCN=input('Total Civilizations Number ��������=');
        end
        disp('Universe parameters setting is completed. �������������ɡ�')
        disp(sprintf('Radius ����뾶= %d',r))
        disp(sprintf('Total Systems Number ��ϵ����= %d',TSN))
        disp(sprintf('Total Civilizations Number ��������= %d',TCN))
        command = 'Do you want to change the setting? [Y/N] �Ƿ�������ã�����Y��ѡ���ǣ�����N��ѡ���';
        answer = input(command,'s')
    end

    while and(~isequal(answer, 'N'),~isequal(answer, 'Y'))
        clear command
        clear answer
        command = 'You need to press "Y" or "N" to change the setting. [Y/N] ��Ӧ����Y��N�������á�����Y��ѡ���ǣ�����N��ѡ���';
        answer = input(command,'s')
        while isequal(answer, 'Y')
            r=input('Radius ����뾶=');
            TSN=input('Total Systems Number ��ϵ����=');
            TCN=input('Total Civilizations Number ��������=');
            while TSN<TCN
                disp('Total Civilizations Number cannot be larger than Total Systems Number. �����������ܴ�����ϵ������')
                TSN=input('Total Systems Number ��ϵ����=');
                TCN=input('Total Civilizations Number ��������=');
            end
            disp('Universe parameters setting is completed. �������������ɡ�')
            disp(sprintf('Radius ����뾶= %d',r))
            disp(sprintf('Total Systems Number ��ϵ����= %d',TSN))
            disp(sprintf('Total Civilizations Number ��������= %d',TCN))
            command = 'Do you want to change the setting? [Y/N] �Ƿ�������ã�����Y��ѡ���ǣ�����N��ѡ���';
            answer = input(command,'s')
        end
    end

    clear command
    clear answer

    OTCN=TCN+1
    DestroyedSystems=[]
    DestroyedCivilizations=[]
    CombinedCivilizations=[]
    wars=[]
    communications=[]
    systems=zeros(TSN,10)
    NUMBER=(1:TSN)
    systems(:,1)=NUMBER
    systems(:,4)=r*rand(TSN,1)
    systems(:,5)=2*pi*rand(TSN,1)
    X=systems(:,4).*cos(systems(:,5))
    systems(:,2)=X
    Y=systems(:,4).*sin(systems(:,5))
    systems(:,3)=Y
    RS=10*rand(TSN,1)
    systems(:,6)=RS
    systems(1:TCN,7)=(1:TCN)
    O=systems(:,7)
    EC=zeros(TSN,1)+0.1
    systems(:,8)=EC
    E=tansig(EC)
    systems(:,9)=EC
    TG=systems(:,10)

    systems(:,4:5)=[]

    civilizations=zeros(TCN,21)
    NM=(1:TCN)
    civilizations(:,1)=NM
    TP=randi([1,3],TCN,1)
    civilizations(:,2)=TP
    ND=10*rand(TCN,1)
    civilizations(:,3)=ND
    NIC=2*rand(TCN,1)-2
    civilizations(:,4)=NIC
    SN=[]
    SR=[]
    for tcn=1:TCN
        sn=length(find(O==NM(tcn)))
        sr=sum(RS(find(O==NM(tcn))))
        SN=[SN,sn]
        SR=[SR,sr]
    end
    clear tcn
    clear sn
    clear sr
    SN=SN'
    SR=SR'
    civilizations(:,5)=SN
    civilizations(:,6)=SR
    PL=randi([1,10],TCN,1)
    civilizations(:,9)=PL
    T=(rand(TCN,1)+0.5).*exp(PL)
    civilizations(:,7)=T
    TRC=5*rand(TCN,1)-4
    civilizations(:,8)=TRC
    TB=logsig(10*(log(civilizations(:,7))-PL-0.5))
    civilizations(:,10)=TB
    RC=10*atan((log(T).*PL)/100)+0.6
    RC(find(RC<0.01))=0.01
    civilizations(:,11)=RC
    TR=SR.*RC
    civilizations(:,12)=TR
    RA=TR./ND
    civilizations(:,13)=RA
    RR=TR-ND
    civilizations(:,14)=RR
    V=2*log(T+1)
    civilizations(:,15)=V
    ER=PL
    civilizations(:,16)=ER
    CR=1.2*PL
    civilizations(:,17)=CR
    A=T.*PL
    civilizations(:,18)=A
    D=1.1*A
    civilizations(:,19)=D
    DS=2*T.*PL-2.2026e+05
    civilizations(:,20)=DS
    civilizations(:,21)=TP
    civilizations(find(RA<=1.2),21)=3
    civilizations(find(~TP),21)=0
    AT=civilizations(:,21)

    outputfile(civilizations,systems,wars,communications,DestroyedSystems,DestroyedCivilizations,CombinedCivilizations,Round)

    disp('In the beginning Programming Doge created the universe. �����̵����������档')
    disp('And the Program of Doge moved upon the systems of the universe. �����ĳ�������������֮�ϡ�')
    disp('And Doge said, Let there be civilizations: and there were civilizations. ����˵��Ҫ��������������������')
    disp('And Doge saw the civilizations, that they were crappy fakes: and Doge divided the crappy fakes from other crappy fakes. The first round. ��������������һ���������Ͱ�һ�Ѷ������ֿ������ǵ�һ���غϡ�')
    disp('In Doge they (the people of civilizations) trust. RAmen! ���ǣ������������������������ţ�')

    command = 'Next round? [0] Save Game. [1] ����0��������һ�غϡ�����1���洢���档';
    answer = input(command,'s')

    while and(~isequal(answer, '0'),~isequal(answer, '1'))
        command = 'Are you kidding Great Doge? Doge said it should be "0" or "1"! ���ڶ�ΰ����������������𣿵���˵Ҫ����0��������һ�غϻ�1��������Ϸ��';
        answer = input(command,'s')
    end
    while isequal(answer, '0')
        Round=Round+1
        [civilizations,systems,wars,communications,DestroyedSystems,DestroyedCivilizations,CombinedCivilizations,answer]=ActingRound(civilizations,systems,wars,communications,DestroyedSystems,DestroyedCivilizations,Round,OTCN,CombinedCivilizations)
    end
    while isequal(answer, '1')
        command = ['Input the file name you want to save: ����Ҫ�洢����Ϸ��']
        savegame = input(command,'s')
        filename=[savegame,'.mat']
        save(filename)
        command = 'Next round? [0] Save Game. [1] ����0��������һ�غϡ�����1���洢���档';
        answer = input(command,'s')
        while and(~isequal(answer, '0'),~isequal(answer, '1'))
            command = 'Are you kidding Great Doge? Doge said it should be "0" or "1"! ���ڶ�ΰ����������������𣿵���˵Ҫ����0��������һ�غϻ�1��������Ϸ��';
            answer = input(command,'s')
        end
        while isequal(answer, '0')
            Round=Round+1
            [civilizations,systems,wars,communications,DestroyedSystems,DestroyedCivilizations,CombinedCivilizations,answer]=ActingRound(civilizations,systems,wars,communications,DestroyedSystems,DestroyedCivilizations,Round,OTCN,CombinedCivilizations)
        end
    end
end