inline.NumInlined: 649
inline.NumDeleted: 340
begin_hunk_0_@_ZN8facebook5velox4exec19inferTypeWithSpacesERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEb:bb.a
  %n.mod.vf = and i64 %i.z, 15                    ; 2 uses
  %i.aa = icmp eq i64 %n.mod.vf, 0
  %i.ab = select i1 %i.aa, i64 16, i64 %n.mod.vf  ; 2 uses
  %n.vec = sub nsw i64 %i.z, %i.ab                ; 4 uses
  %i.ac = shl i64 %n.vec, 5
  %i.ad = getelementptr i8, ptr %i.u, i64 %i.ac
  %13 = shl i64 %n.vec, 5
  %i.ae = getelementptr i8, ptr %i.c, i64 %13
  %i.af = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %i.t, i64 0
  br label %vector.body

end_hunk_0
begin_hunk_1_@_ZN8facebook5velox4exec19inferTypeWithSpacesERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEb:bb.a
  %n.mod.vf184 = and i64 %i.z, 3                  ; 2 uses
  %i.bb = icmp eq i64 %n.mod.vf184, 0
  %i.bc = select i1 %i.bb, i64 4, i64 %n.mod.vf184
  %n.vec185 = sub nsw i64 %i.z, %i.bc             ; 3 uses
  %i.bd = shl i64 %n.vec185, 5
  %i.be = getelementptr i8, ptr %i.u, i64 %i.bd
  %14 = shl i64 %n.vec185, 5
  %i.bf = getelementptr i8, ptr %i.c, i64 %14
  %i.bg = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

end_hunk_1
