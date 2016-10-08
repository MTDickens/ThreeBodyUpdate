function outputfile(civilizations,systems,wars,communications,DestroyedSystems,DestroyedCivilizations,CombinedCivilizations,Round)
SYSTEMS={'Number ���','x','y','Resource ��Դ','Owner ������','Evident Coefficient ��Ŀϵ��','Evident ��Ŀ��','Target	���'}
CIVILIZATIONS={'Name ����','Type ����','Need ����','Need Increasing Coefficient ��������ϵ��','Systems Number ��ϵ����','System Resource ��ϵ��Դ','Technique �Ƽ�','Technique Revolution Coefficient ��������ϵ��','Physics Level ����ȼ�','Technique Break ����ͻ��','Resource Coefficient ��Դϵ��','Total Resource ��Դ����','Resource Adequacy ��Դ��ԣ��','Remaining Resource ʣ����Դ','View ��Ұ','Expansion Range ���ŷ�Χ','Communication Range ������Χ','Attack ����','Defence ����','Destroy ����','Acting Type �ж�����'}
COMMUNICATIONS={'Civilization 1 ����1','Civilization 2 ����2','Distance ����','Technique 1 �Ƽ�1','Technique 2 �Ƽ�2','Communication Range 1 ������Χ1','Communication Range 2 ������Χ2','Communication Progress ������չ','Completeness of Communication ������ɶ�'}
WARS={'Civilization 1 ����1','Civilization 2 ����2','Distance ����','System 1 ��ϵ1','System 2 ��ϵ2','Start Time ��սʱ��','Attack 1 ����1','Defence 1 ����1','Destroy 1 ����1','Attack 2 ����2','Defence 2 ����2','Destroy 2 ����2','Winning Side ʤ��'}
DC={'Destroyed Civilization ����������','Type ����','Need ����','Technique �Ƽ�','Physics Level ����ȼ�','Resource Coefficient ��Դϵ��','View ��Ұ','Expansion Range ���ŷ�Χ','Communication Range ������Χ','Attack ����','Defence ����','Destroy ����','Destroyed Time ������ʱ��'}
DS={'Destroyed Number ��������ϵ','x x����','y y����','Resource ��Դ','Owner ������','Evident ��Ŀ��','Destroyed Time ������ʱ��'}
CC={'Civilization ���ϲ�����','Type ����','Need ����','Technique �Ƽ�','Physics Level ����ȼ�','Resource Coefficient ��Դϵ��','View ��Ұ','Expansion Range ���ŷ�Χ','Communication Range ������Χ','Attack ����','Defence ����','Destroy ����','Combined Time �ϲ�ʱ��','New Civilization ������'}

excelname=strcat('Universe_Round_',num2str(Round),'.xlsx')
xlswrite(excelname, SYSTEMS, 'Systems', 'A1');
xlswrite(excelname,CIVILIZATIONS , 'Civilizations', 'A1'); 
xlswrite(excelname,COMMUNICATIONS , 'Communications', 'A1'); 
xlswrite(excelname,WARS , 'Wars', 'A1');
xlswrite(excelname,DC , 'Destroyed Civilizations', 'A1');
xlswrite(excelname,DS , 'Destroyed Systems', 'A1');
xlswrite(excelname,CC , 'Combined Civilizations', 'A1');
if ~isempty(systems)
    xlswrite(excelname, systems, 'Systems', 'A2'); 
end
if ~isempty(civilizations)
    xlswrite(excelname,civilizations , 'Civilizations', 'A2'); 
end
if ~isempty(communications)
    xlswrite(excelname,communications , 'Communications', 'A2'); 
end
if ~isempty(wars)
    xlswrite(excelname,wars , 'Wars', 'A2');
end
if ~isempty(DestroyedCivilizations)
    xlswrite(excelname,DestroyedCivilizations , 'Destroyed Civilizations', 'A2');
end
if ~isempty(DestroyedSystems)
    xlswrite(excelname,DestroyedSystems , 'Destroyed Systems', 'A2');
end
if ~isempty(CombinedCivilizations)
    xlswrite(excelname,CombinedCivilizations , 'Combined Civilizations', 'A2');
end