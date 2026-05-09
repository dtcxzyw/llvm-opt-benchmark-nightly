inline.NumInlined: 32
inline.NumDeleted: 3
begin_hunk_0_@Build_Status_Map:bb.a
  %i.ak = insertelement <2 x i32> %i.aj, i32 %i.z, i64 1
  %i.al = sitofp <2 x i32> %i.ak to <2 x double>
  %i.am = fcmp olt <2 x double> %i.ai, %i.al      ; 2 uses
  %i.an = extractelement <2 x i1> %i.am, i64 1    ; 2 uses
  %.2.us = select i1 %i.an, i32 3, i32 0
  %1 = select i1 %i.an, i32 5, i32 2
  %i.ao = extractelement <2 x i1> %i.am, i64 0
  %.3.us = select i1 %i.ao, i32 %1, i32 %.2.us
  %i.ap = tail call i32 @rand() #7
end_hunk_0
