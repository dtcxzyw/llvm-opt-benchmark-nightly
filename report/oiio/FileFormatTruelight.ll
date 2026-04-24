inline.NumInlined: 914
inline.NumDeleted: 386
begin_hunk_0_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE:bb.a
  br label %.outer

.outer:                                           ; preds = %.outer.backedge, %bb.r
  %.sroa.0356.0.ph = phi ptr [ null, %bb.r ], [ %.sroa.0356.0.ph.be, %.outer.backedge ] ; 43 uses
  %.sroa.17.0.ph = phi ptr [ null, %bb.r ], [ %.sroa.17.0.ph.be, %.outer.backedge ] ; 14 uses
  %.sroa.30.0.ph = phi ptr [ null, %bb.r ], [ %.sroa.30.0.ph.be, %.outer.backedge ] ; 32 uses
  %.072.ph = phi i8 [ 0, %bb.r ], [ %.072.ph.be, %.outer.backedge ] ; 2 uses
  %.070.ph = phi i8 [ 0, %bb.r ], [ %.070.ph.be, %.outer.backedge ] ; 2 uses
  br label %.backedge
end_hunk_0
begin_hunk_1_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE:bb.a
  %.pre584 = load ptr, ptr %i.hq, align 8, !tbaa !26
  %bcmp.i211 = call i32 @bcmp(ptr %.pre584, ptr nonnull @.str.15, i64 %i.hs)
  %i.li = icmp eq i32 %bcmp.i211, 0
  br i1 %i.li, label %_ZNSt6vectorIfSaIfEE7reserveEm.exit.thread, label %_ZNSt6vectorIfSaIfEE7reserveEm.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit214: ; preds = %bb.ai
  %.pre585 = load ptr, ptr %i.hq, align 8, !tbaa !26
  %bcmp.i213 = call i32 @bcmp(ptr %.pre585, ptr nonnull @.str.16, i64 %i.hs)
  %i.lj = icmp eq i32 %bcmp.i213, 0
  br i1 %i.lj, label %_ZNSt6vectorIfSaIfEE7reserveEm.exit.thread, label %_ZNSt6vectorIfSaIfEE7reserveEm.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit216: ; preds = %bb.ai
  %.pre586 = load ptr, ptr %i.hq, align 8, !tbaa !26
end_hunk_1
begin_hunk_2_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE:bb.a
  %i.lk = icmp eq i32 %bcmp.i215, 0
  br i1 %i.lk, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit216.thread, label %_ZNSt6vectorIfSaIfEE7reserveEm.exit

_ZNSt6vectorIfSaIfEE7reserveEm.exit.thread:       ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit212, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit214
  %.173.ph = phi i8 [ 0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit214 ], [ 1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit212 ] ; 2 uses
  %.171.ph = phi i8 [ 1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit214 ], [ 0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit212 ] ; 2 uses
  %22 = trunc nuw i8 %.173.ph to i1
  %23 = trunc nuw i8 %.171.ph to i1
  br label %bb.br

_ZNSt6vectorIfSaIfEE7reserveEm.exit:              ; preds = %bb.ag, %_ZN11StringUtils10StartsWithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit214, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit212, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit203, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %bb.ai, %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit.i207, %bb.bo, %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit.i, %bb.bg, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit216
  %.sroa.0356.2 = phi ptr [ %i.le, %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit.i207 ], [ %.sroa.0356.0.ph, %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit.i ], [ %.sroa.0356.0.ph, %bb.bo ], [ %.sroa.0356.0.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit214 ], [ %.sroa.0356.0.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit216 ], [ %.sroa.0356.0.ph, %bb.ai ], [ %.sroa.0356.0.ph, %bb.bg ], [ %.sroa.0356.0.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit212 ], [ %.sroa.0356.0.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit203 ], [ %.sroa.0356.0.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %.sroa.0356.0.ph, %_ZN11StringUtils10StartsWithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc.exit ], [ %.sroa.0356.0.ph, %bb.ag ] ; 2 uses
  %.sroa.17.1 = phi ptr [ %i.lg, %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit.i207 ], [ %.sroa.17.0.ph, %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit.i ], [ %.sroa.17.0.ph, %bb.bo ], [ %.sroa.17.0.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit214 ], [ %.sroa.17.0.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit216 ], [ %.sroa.17.0.ph, %bb.ai ], [ %.sroa.17.0.ph, %bb.bg ], [ %.sroa.17.0.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit212 ], [ %.sroa.17.0.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit203 ], [ %.sroa.17.0.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %.sroa.17.0.ph, %_ZN11StringUtils10StartsWithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc.exit ], [ %.sroa.17.0.ph, %bb.ag ] ; 2 uses
end_hunk_2
begin_hunk_3_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE:bb.a
  %or.cond = select i1 %i.ll, i1 true, i1 %i.lm
  br i1 %or.cond, label %bb.br, label %.outer.backedge

bb.br:                                            ; preds = %_ZNSt6vectorIfSaIfEE7reserveEm.exit.thread, %_ZNSt6vectorIfSaIfEE7reserveEm.exit
  %24 = phi i1 [ %23, %_ZNSt6vectorIfSaIfEE7reserveEm.exit.thread ], [ %i.lm, %_ZNSt6vectorIfSaIfEE7reserveEm.exit ]
  %25 = phi i1 [ %22, %_ZNSt6vectorIfSaIfEE7reserveEm.exit.thread ], [ %i.ll, %_ZNSt6vectorIfSaIfEE7reserveEm.exit ]
  %.171396 = phi i8 [ %.171.ph, %_ZNSt6vectorIfSaIfEE7reserveEm.exit.thread ], [ %.070.ph, %_ZNSt6vectorIfSaIfEE7reserveEm.exit ] ; 7 uses
  %.173394 = phi i8 [ %.173.ph, %_ZNSt6vectorIfSaIfEE7reserveEm.exit.thread ], [ %.072.ph, %_ZNSt6vectorIfSaIfEE7reserveEm.exit ] ; 7 uses
  %.sroa.30.2392 = phi ptr [ %.sroa.30.0.ph, %_ZNSt6vectorIfSaIfEE7reserveEm.exit.thread ], [ %.sroa.30.2, %_ZNSt6vectorIfSaIfEE7reserveEm.exit ] ; 14 uses
  %.sroa.17.1391 = phi ptr [ %.sroa.17.0.ph, %_ZNSt6vectorIfSaIfEE7reserveEm.exit.thread ], [ %.sroa.17.1, %_ZNSt6vectorIfSaIfEE7reserveEm.exit ] ; 8 uses
  %.sroa.0356.2390 = phi ptr [ %.sroa.0356.0.ph, %_ZNSt6vectorIfSaIfEE7reserveEm.exit.thread ], [ %.sroa.0356.2, %_ZNSt6vectorIfSaIfEE7reserveEm.exit ] ; 16 uses
  %i.ln = invoke noundef zeroext i1 @_ZN16OpenColorIO_v2_519StringVecToFloatVecERSt6vectorIfSaIfEERKS0_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EE(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %bb.bs unwind label %.loopexit404.loopexit.split-lp

end_hunk_3
begin_hunk_4_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE:bb.a
  br i1 %i.lt, label %bb.bu, label %.outer.backedge

bb.bu:                                            ; preds = %bb.bt
  br i1 %25, label %bb.bv, label %bb.ck

bb.bv:                                            ; preds = %bb.bu
  %.not.i217 = icmp eq ptr %.sroa.17.1391, %.sroa.30.2392
end_hunk_4
begin_hunk_5_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE:bb.a
  br label %.outer.backedge

bb.ck:                                            ; preds = %bb.bu
  br i1 %24, label %bb.cl, label %.outer.backedge

bb.cl:                                            ; preds = %bb.ck
  %i.ny = load ptr, ptr %i.dj, align 8, !tbaa !65 ; 4 uses
end_hunk_5
