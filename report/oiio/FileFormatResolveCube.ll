inline.NumInlined: 1076
inline.NumDeleted: 393
begin_hunk_0_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE:bb.a
  br label %.outer.outer.outer, !llvm.loop !39

bb.em:                                            ; preds = %bb.g
  %.sroa.22.0.ph.ph.lcssa2401 = phi ptr [ %.sroa.22.0.ph.ph, %bb.g ] ; 4 uses
  %.sroa.14.0.ph.ph.lcssa2375 = phi ptr [ %.sroa.14.0.ph.ph, %bb.g ] ; 2 uses
  %.sroa.0647.0.ph.ph.lcssa2342 = phi ptr [ %.sroa.0647.0.ph.ph, %bb.g ] ; 9 uses
end_hunk_0
begin_hunk_1_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE:bb.a
vector.ph1727:                                    ; preds = %.lr.ph
  %n.vec1729 = and i64 %i.agp, -8                 ; 3 uses
  %scevgep2468 = getelementptr i8, ptr %i.ako, i64 16 ; 2 uses
  %scevgep2472 = getelementptr i8, ptr %.sroa.0647.0.ph.ph, i64 16 ; 2 uses
  br label %vector.body1730

vector.body1730:                                  ; preds = %vector.body1730, %vector.ph1727
end_hunk_1
begin_hunk_2_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE:bb.a
  %lsr.iv2478 = phi i64 [ %xtraiter, %scalar.ph.prol.preheader ], [ %lsr.iv.next, %scalar.ph.prol ]
  %.0879.prol = phi i64 [ %i.akz, %scalar.ph.prol ], [ %.0879.ph, %scalar.ph.prol.preheader ] ; 3 uses
  %i.akw = shl i64 %.0879.prol, 2
  %scevgep2477 = getelementptr i8, ptr %.sroa.0647.0.ph.ph, i64 %i.akw
  %i.akx = load float, ptr %scevgep2477, align 4, !tbaa !36
  %i.aky = shl i64 %.0879.prol, 2
  %scevgep2476 = getelementptr i8, ptr %i.ako, i64 %i.aky
end_hunk_2
begin_hunk_3_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE:bb.a

scalar.ph.preheader2234:                          ; preds = %scalar.ph.prol.loopexit
  %scevgep2479 = getelementptr i8, ptr %i.ako, i64 12 ; 4 uses
  %scevgep2487 = getelementptr i8, ptr %.sroa.0647.0.ph.ph, i64 12 ; 4 uses
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader2234, %scalar.ph
end_hunk_3
