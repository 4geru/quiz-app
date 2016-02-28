print '<table>'
for i in range(0,5):
    print '\t\t<tr >'
    for j in range(1,6):
        print "\t\t\t<td><button type='button' name='btn{0}' value='<%=@content.problem{0}%>' class='btn btn-default' onclick='sent(<%=@content.problem{0}%>,{0})'>{0}</button></td>".format(i * 5 + j),
    print '\n\t\t</tr>'
print '</table>'