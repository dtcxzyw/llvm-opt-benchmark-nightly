inline.NumInlined: 743
inline.NumDeleted: 339
begin_hunk_0_@_ZN5folly4joinIA2_cSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPNS_5RangeIPKcEESt6vectorIS8_SaIS8_EEEEETnPNSt9enable_ifIXsr3std10is_base_ofISt20forward_iterator_tagNSt15iterator_traitsIT0_E17iterator_categoryEEE5valueEvE4typeELPv0EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_SI_SI_:bb.a

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.u, 12
  %n.vec = and i64 %i.u, 2305843009213693936      ; 4 uses
  %i.v = mul i64 %n.vec, -16                      ; 2 uses
  %i.w = getelementptr i8, ptr %i.j, i64 %i.v
  %i.x = getelementptr i8, ptr %i.i, i64 %i.v
  %i.y = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %i.p, i64 0
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.e, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN5folly4joinIA2_cSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPNS_5RangeIPKcEESt6vectorIS8_SaIS8_EEEEETnPNSt9enable_ifIXsr3std10is_base_ofISt20forward_iterator_tagNSt15iterator_traitsIT0_E17iterator_categoryEEE5valueEvE4typeELPv0EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_SI_SI_:bb.a
vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i64 [ %i.ay, %vec.epilog.iter.check ], [ %i.p, %vector.main.loop.iter.check ]
  %n.vec35 = and i64 %i.u, 2305843009213693948    ; 3 uses
  %i.az = mul i64 %n.vec35, -16                   ; 2 uses
  %i.ba = getelementptr i8, ptr %i.j, i64 %i.az
  %i.bb = getelementptr i8, ptr %i.i, i64 %i.az
  %i.bc = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %bc.merge.rdx, i64 0
  %broadcast.splatinsert36 = insertelement <4 x i64> poison, i64 %i.e, i64 0
  %broadcast.splat37 = shufflevector <4 x i64> %broadcast.splatinsert36, <4 x i64> poison, <4 x i32> zeroinitializer
end_hunk_1
