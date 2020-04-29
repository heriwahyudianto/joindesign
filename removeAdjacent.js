function stringReducer(s) {
  let sLength = s.length
  let n = 1
  do {
    s = s.replace(/aa|bb|cc|dd|ee|ff|gg|hh|ii|jj|kk|ll|mm|nn|oo|pp|qq|rr|ss|tt|uu|vv|ww|xx|yy|zz/, '')
    n++
    if (n === sLength) {
      break
    }
  } while (s.length > 1)
  if (s.length === 0) {
    return 'Empty String'
  } 
  return s
}

var str = 'aaabccddd'// abd
//str = 'baab' // empty string
//str = 'aa'  // empty string
//str = 'zzaabpsskmm' //bpk
console.log(stringReducer(str))