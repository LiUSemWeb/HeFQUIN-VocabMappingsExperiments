# define URIs
old_uri_course="<http://www.lehigh.edu/~zhp2/2004/0401/univ-bench.owl#Course>"
old_uri_GraduateCourse="<http://www.lehigh.edu/~zhp2/2004/0401/univ-bench.owl#GraduateCourse>"
new_uri_course="<http://www.tmp-example#Course>"
escaped_old_uri_course=$(echo "$old_uri_course" | sed 's/[\/&]/\\&/g') # escape forward slashes and ampersands
escaped_old_uri_GraduateCourse=$(echo "$old_uri_GraduateCourse" | sed 's/[\/&]/\\&/g') # escape forward slashes and ampersands
escaped_new_uri_course=$(echo "$new_uri_course" | sed 's/[\/&]/\\&/g') # escape forward slashes and ampersands

old_uri_GraduateStudent="<http://www.lehigh.edu/~zhp2/2004/0401/univ-bench.owl#GraduateStudent>"
new_uri_GraduateStudent="<http://www.tmp-example#GraduateStudent>"
escaped_old_uri_GraduateStudent=$(echo "$old_uri_GraduateStudent" | sed 's/[\/&]/\\&/g') # escape forward slashes and ampersands
escaped_new_uri_GraduateStudent=$(echo "$new_uri_GraduateStudent" | sed 's/[\/&]/\\&/g') # escape forward slashes and ampersands

old_uri_UndergraduateStudent="<http://www.lehigh.edu/~zhp2/2004/0401/univ-bench.owl#UndergraduateStudent>"
escaped_old_uri_UndergraduateStudent=$(echo "$old_uri_UndergraduateStudent" | sed 's/[\/&]/\\&/g') # escape forward slashes and ampersands
new_uri_Student="<http://www.tmp-example#Student>"
escaped_new_uri_Student=$(echo "$new_uri_Student" | sed 's/[\/&]/\\&/g') # escape forward slashes and ampersands


old_uri_TeachingAssistant="<http://www.lehigh.edu/~zhp2/2004/0401/univ-bench.owl#TeachingAssistant>"
escaped_old_uri_TeachingAssistant=$(echo "$old_uri_TeachingAssistant" | sed 's/[\/&]/\\&/g') # escape forward slashes and ampersands

old_uri_ResearchAssistant="<http://www.lehigh.edu/~zhp2/2004/0401/univ-bench.owl#ResearchAssistant>"
escaped_old_uri_ResearchAssistant=$(echo "$old_uri_ResearchAssistant" | sed 's/[\/&]/\\&/g') # escape forward slashes and ampersands

old_uri_AssistantProfessor="<http://www.lehigh.edu/~zhp2/2004/0401/univ-bench.owl#AssistantProfessor>"
old_uri_AssociateProfessor="<http://www.lehigh.edu/~zhp2/2004/0401/univ-bench.owl#AssociateProfessor>"
old_uri_FullProfessor="<http://www.lehigh.edu/~zhp2/2004/0401/univ-bench.owl#FullProfessor>"
new_uri_Professor="<http://www.tmp-example#Professor>"
escaped_old_uri_AssistantProfessor=$(echo "$old_uri_AssistantProfessor" | sed 's/[\/&]/\\&/g') # escape forward slashes and ampersands
escaped_old_uri_AssociateProfessor=$(echo "$old_uri_AssociateProfessor" | sed 's/[\/&]/\\&/g') # escape forward slashes and ampersands
escaped_old_uri_FullProfessor=$(echo "$old_uri_FullProfessor" | sed 's/[\/&]/\\&/g') # escape forward slashes and ampersands
escaped_new_uri_Professor=$(echo "$new_uri_Professor" | sed 's/[\/&]/\\&/g') # escape forward slashes and ampersands

old_uri_Lecturer="<http://www.lehigh.edu/~zhp2/2004/0401/univ-bench.owl#Lecturer>"
new_uri_Faculty="<http://www.tmp-example#Faculty>"
escaped_old_uri_Lecturer=$(echo "$old_uri_Lecturer" | sed 's/[\/&]/\\&/g') # escape forward slashes and ampersands
escaped_new_uri_Faculty=$(echo "$new_uri_Faculty" | sed 's/[\/&]/\\&/g') # escape forward slashes and ampersands


old_uri_advisor="<http://www.lehigh.edu/~zhp2/2004/0401/univ-bench.owl#advisor>"
new_uri_supervisor="<http://www.tmp-example#supervisor>"
escaped_old_uri_advisor=$(echo "$old_uri_advisor" | sed 's/[\/&]/\\&/g') # escape forward slashes and ampersands
escaped_new_uri_supervisor=$(echo "$new_uri_supervisor" | sed 's/[\/&]/\\&/g') # escape forward slashes and ampersands

old_uri_worksFor="<http://www.lehigh.edu/~zhp2/2004/0401/univ-bench.owl#worksFor>"
new_uri_worksAt="<http://www.tmp-example#worksAt>"
escaped_old_uri_worksFor=$(echo "$old_uri_worksFor" | sed 's/[\/&]/\\&/g') # escape forward slashes and ampersands
escaped_new_uri_worksAt=$(echo "$new_uri_worksAt" | sed 's/[\/&]/\\&/g') # escape forward slashes and ampersands

old_uri_teacherOf="<http://www.lehigh.edu/~zhp2/2004/0401/univ-bench.owl#teacherOf>"
new_uri_teaches="<http://www.tmp-example#teaches>"
escaped_old_uri_teacherOf=$(echo "$old_uri_teacherOf" | sed 's/[\/&]/\\&/g') # escape forward slashes and ampersands
escaped_new_uri_teaches=$(echo "$new_uri_teaches" | sed 's/[\/&]/\\&/g') # escape forward slashes and ampersands

old_uri_telephone="<http://www.lehigh.edu/~zhp2/2004/0401/univ-bench.owl#telephone>"
new_uri_phoneNumber="<http://www.tmp-example#phoneNumber>"
escaped_old_uri_telephone=$(echo "$old_uri_telephone" | sed 's/[\/&]/\\&/g') # escape forward slashes and ampersands
escaped_new_uri_phoneNumber=$(echo "$new_uri_phoneNumber" | sed 's/[\/&]/\\&/g') # escape forward slashes and ampersands

old_uri_emailAddress="<http://www.lehigh.edu/~zhp2/2004/0401/univ-bench.owl#emailAddress>"
new_uri_email="<http://www.tmp-example#email>"
escaped_old_uri_emailAddress=$(echo "$old_uri_emailAddress" | sed 's/[\/&]/\\&/g') # escape forward slashes and ampersands
escaped_new_uri_email=$(echo "$new_uri_email" | sed 's/[\/&]/\\&/g') # escape forward slashes and ampersands

old_uri_researchInterest="<http://www.lehigh.edu/~zhp2/2004/0401/univ-bench.owl#researchInterest>"
new_uri_researchTopic="<http://www.tmp-example#researchTopic>"
escaped_old_uri_researchInterest=$(echo "$old_uri_researchInterest" | sed 's/[\/&]/\\&/g') # escape forward slashes and ampersands
escaped_new_uri_researchTopic=$(echo "$new_uri_researchTopic" | sed 's/[\/&]/\\&/g') # escape forward slashes and ampersands

old_uri_memberOf="<http://www.lehigh.edu/~zhp2/2004/0401/univ-bench.owl#memberOf>"
new_uri_memberOf="<http://www.tmp-example#memberOf>"
escaped_old_uri_memberOf=$(echo "$old_uri_memberOf" | sed 's/[\/&]/\\&/g') # escape forward slashes and ampersands
escaped_new_uri_memberOf=$(echo "$new_uri_memberOf" | sed 's/[\/&]/\\&/g') # escape forward slashes and ampersands


old_uri_subOrganizationOf="<http://www.lehigh.edu/~zhp2/2004/0401/univ-bench.owl#subOrganizationOf>"
new_uri_isPartOf="<http://www.tmp-example#isPartOf>"
escaped_old_uri_subOrganizationOf=$(echo "$old_uri_subOrganizationOf" | sed 's/[\/&]/\\&/g') # escape forward slashes and ampersands
escaped_new_uri_isPartOf=$(echo "$new_uri_isPartOf" | sed 's/[\/&]/\\&/g') # escape forward slashes and ampersands


old_uri_publicationAuthor="<http://www.lehigh.edu/~zhp2/2004/0401/univ-bench.owl#publicationAuthor>"
new_uri_writtenBy="<http://www.tmp-example#writtenBy>"
escaped_old_uri_publicationAuthor=$(echo "$old_uri_publicationAuthor" | sed 's/[\/&]/\\&/g') # escape forward slashes and ampersands
escaped_new_uri_writtenBy=$(echo "$new_uri_writtenBy" | sed 's/[\/&]/\\&/g') # escape forward slashes and ampersands

old_uri_doctoralDegreeFrom="<http://www.lehigh.edu/~zhp2/2004/0401/univ-bench.owl#doctoralDegreeFrom>"
old_uri_mastersDegreeFrom="<http://www.lehigh.edu/~zhp2/2004/0401/univ-bench.owl#mastersDegreeFrom>"
old_uri_undergraduateDegreeFrom="<http://www.lehigh.edu/~zhp2/2004/0401/univ-bench.owl#undergraduateDegreeFrom>"
new_uri_degreeFrom="<http://www.tmp-example#degreeFrom>"
escaped_old_uri_doctoralDegreeFrom=$(echo "$old_uri_doctoralDegreeFrom" | sed 's/[\/&]/\\&/g') # escape forward slashes and ampersands
escaped_old_uri_mastersDegreeFrom=$(echo "$old_uri_mastersDegreeFrom" | sed 's/[\/&]/\\&/g') # escape forward slashes and ampersands
escaped_old_uri_undergraduateDegreeFrom=$(echo "$old_uri_undergraduateDegreeFrom" | sed 's/[\/&]/\\&/g') # escape forward slashes and ampersands
escaped_new_uri_degreeFrom=$(echo "$new_uri_degreeFrom" | sed 's/[\/&]/\\&/g') # escape forward slashes and ampersands

old_uri_takesCourse="<http://www.lehigh.edu/~zhp2/2004/0401/univ-bench.owl#takesCourse>"
new_uri_registersCourse="<http://www.tmp-example#registersCourse>"
escaped_old_uri_takesCourse=$(echo "$old_uri_takesCourse" | sed 's/[\/&]/\\&/g') # escape forward slashes and ampersands
escaped_new_uri_registersCourse=$(echo "$new_uri_registersCourse" | sed 's/[\/&]/\\&/g') # escape forward slashes and ampersands

old_uri_headOf="<http://www.lehigh.edu/~zhp2/2004/0401/univ-bench.owl#headOf>"
new_uri_worksAt="<http://www.tmp-example#worksAt>"
escaped_old_uri_headOf=$(echo "$old_uri_headOf" | sed 's/[\/&]/\\&/g') # escape forward slashes and ampersands
escaped_new_uri_worksAt=$(echo "$new_uri_worksAt" | sed 's/[\/&]/\\&/g') # escape forward slashes and ampersands

i=0
while [ "$i" -le 9 ];
do
  suffix="$i"
  sed "s/$escaped_old_uri_course/$escaped_new_uri_course/g" < original_datasets/University$suffix.nt > tmplocalvocab_datasets/University$suffix.nt

  sed -i -e "s/$escaped_old_uri_UndergraduateStudent/$escaped_new_uri_Student/g" tmplocalvocab_datasets/University$suffix.nt

  sed -i -e "s/$escaped_old_uri_TeachingAssistant/$escaped_old_uri_UndergraduateStudent/g" tmplocalvocab_datasets/University$suffix.nt

  sed -i -e "s/$escaped_old_uri_ResearchAssistant/$escaped_old_uri_UndergraduateStudent/g" tmplocalvocab_datasets/University$suffix.nt

  sed -i -e "s/$escaped_old_uri_AssistantProfessor/$escaped_new_uri_Professor/g" tmplocalvocab_datasets/University$suffix.nt

  sed -i -e "s/$escaped_old_uri_AssociateProfessor/$escaped_new_uri_Professor/g" tmplocalvocab_datasets/University$suffix.nt

  sed -i -e "s/$escaped_old_uri_FullProfessor/$escaped_new_uri_Professor/g" tmplocalvocab_datasets/University$suffix.nt

  sed -i -e "s/$escaped_old_uri_Lecturer/$escaped_new_uri_Faculty/g" tmplocalvocab_datasets/University$suffix.nt

  sed -i -e "s/$escaped_old_uri_advisor/$escaped_new_uri_supervisor/g" tmplocalvocab_datasets/University$suffix.nt

  sed -i -e "s/$escaped_old_uri_worksFor/$escaped_new_uri_worksAt/g" tmplocalvocab_datasets/University$suffix.nt

  sed -i -e "s/$escaped_old_uri_teacherOf/$escaped_new_uri_teaches/g" tmplocalvocab_datasets/University$suffix.nt

  sed -i -e "s/$escaped_old_uri_telephone/$escaped_new_uri_phoneNumber/g" tmplocalvocab_datasets/University$suffix.nt

  sed -i -e "s/$escaped_old_uri_emailAddress/$escaped_new_uri_email/g" tmplocalvocab_datasets/University$suffix.nt

  sed -i -e "s/$escaped_old_uri_researchInterest/$escaped_new_uri_researchTopic/g" tmplocalvocab_datasets/University$suffix.nt

  sed -i -e "s/$escaped_old_uri_memberOf/$escaped_new_uri_memberOf/g" tmplocalvocab_datasets/University$suffix.nt

  sed -i -e "s/$escaped_old_uri_subOrganizationOf/$escaped_new_uri_isPartOf/g" tmplocalvocab_datasets/University$suffix.nt

  sed -i -e "s/$escaped_old_uri_publicationAuthor/$escaped_new_uri_writtenBy/g" tmplocalvocab_datasets/University$suffix.nt

  sed -i -e "s/$escaped_old_uri_doctoralDegreeFrom/$escaped_new_uri_degreeFrom/g" tmplocalvocab_datasets/University$suffix.nt

  sed -i -e "s/$escaped_old_uri_mastersDegreeFrom/$escaped_new_uri_degreeFrom/g" tmplocalvocab_datasets/University$suffix.nt

  sed -i -e "s/$escaped_old_uri_undergraduateDegreeFrom/$escaped_new_uri_degreeFrom/g" tmplocalvocab_datasets/University$suffix.nt

  sed -i -e "s/$escaped_old_uri_takesCourse/$escaped_new_uri_registersCourse/g" tmplocalvocab_datasets/University$suffix.nt

  sed -i -e "s/$escaped_old_uri_headOf/$escaped_new_uri_worksAt/g" tmplocalvocab_datasets/University$suffix.nt

  sed -i -e "s/$escaped_old_uri_GraduateCourse/$escaped_new_uri_course/g" tmplocalvocab_datasets/University$suffix.nt

  grep "$escaped_old_uri_GraduateStudent" tmplocalvocab_datasets/University$suffix.nt | sed "s/$escaped_old_uri_GraduateStudent/$escaped_new_uri_GraduateStudent/g" >> tmplocalvocab_datasets/University$suffix.nt
  grep "$escaped_old_uri_GraduateStudent" tmplocalvocab_datasets/University$suffix.nt | sed "s/$escaped_old_uri_GraduateStudent/$escaped_new_uri_Student/g" >> tmplocalvocab_datasets/University$suffix.nt

  sed -i -e "/${escaped_old_uri_GraduateStudent}/d" tmplocalvocab_datasets/University$suffix.nt

  i=$(( i + 1 ))
done
