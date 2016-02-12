def compare_versions(version1,version2)
  v1 = version1.split(".")
  v2 = version2.split(".")
  
  v1.map! {|elt| elt.to_i}
  v2.map! {|elt| elt.to_i}
  
  i = 0
  while i < v1.length && i < v2.length
    return false if v1[i] < v2[i]
    p v1[i]
    p v2[i]
    i+=1 
  end
  if v2.length > v1.length
    return false
  else
    return true
  end
end

compare_versions("11", "10")#, true, 'Testing versions without subversion')
compare_versions("11", "11")#, true, 'Test equal versions')
compare_versions("10.4.6", "10.4")#, true, 'Adding a subversion should make this version "larger"')
compare_versions("10.4", "10.4.8")#, false, 'Adding a subversion should make this version "larger"')
compare_versions("10.4", "11")#, false, 'Subversion precedence is smaller than Version')
compare_versions("10.4", "10.10")#, false, 'Version value is not the same as its decimal value')
compare_versions("10.4.9", "10.5")#, false, 'Adding subversion does not make it larger than a greater version')

# this is much better though:
#def compare_versions(version1,version2)
#  (version1.split('.').map(&:to_i) <=> version2.split('.').map(&:to_i)) == -1 ? false : true
#end
