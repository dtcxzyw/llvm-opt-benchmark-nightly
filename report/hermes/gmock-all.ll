inline.NumInlined: 1907
inline.NumDeleted: 759
begin_hunk_0_@_ZNK7testing8internal35UnorderedElementsAreMatcherImplBase38VerifyAllElementsAndMatchersAreMatchedERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EERKNS0_11MatchMatrixEPNS_19MatchResultListenerE:bb.a
  br label %_ZNSt6vectorIcSaIcEEC2EmRKcRKS0_.exit

_ZNSt6vectorIcSaIcEEC2EmRKcRKS0_.exit:            ; preds = %.noexc38, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.15105.0 = phi i64 [ %i.e, %.noexc38 ], [ 0, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i ] ; 3 uses
  %.sroa.099.0 = phi ptr [ %i.c, %.noexc38 ], [ null, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i ] ; 11 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !160  ; 18 uses
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %bb.b, label %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i39

end_hunk_0
begin_hunk_1_@_ZNK7testing8internal35UnorderedElementsAreMatcherImplBase38VerifyAllElementsAndMatchersAreMatchedERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EERKNS0_11MatchMatrixEPNS_19MatchResultListenerE:bb.a

bb.c:                                             ; preds = %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i39
  %i.i = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #32
          to label %_ZNSt6vectorIcSaIcEEC2EmRKcRKS0_.exit45.thread unwind label %bb.d ; 12 uses

_ZNSt6vectorIcSaIcEEC2EmRKcRKS0_.exit45.thread:   ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.g
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.i, i8 0, i64 %i.g, i1 false)
  %i.k = ptrtoint ptr %i.j to i64                 ; 2 uses
  br i1 %.not.i.i.i.i, label %.preheader, label %.preheader130.us.preheader
end_hunk_1
begin_hunk_2_@_ZNK7testing8internal35UnorderedElementsAreMatcherImplBase38VerifyAllElementsAndMatchersAreMatchedERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EERKNS0_11MatchMatrixEPNS_19MatchResultListenerE:bb.a
.preheader130.us.preheader:                       ; preds = %_ZNSt6vectorIcSaIcEEC2EmRKcRKS0_.exit45.thread
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.m = load ptr, ptr %i.l, align 8              ; 4 uses
  %scevgep = getelementptr i8, ptr %.sroa.099.0, i64 %i.a ; 2 uses
  %scevgep187 = getelementptr i8, ptr %i.i, i64 %i.g ; 2 uses
  %i.n = mul i64 %i.g, %i.a
  %scevgep188 = getelementptr i8, ptr %i.m, i64 %i.n ; 2 uses
  %min.iters.check = icmp ult i64 %i.g, 4
  %bound0 = icmp ult ptr %.sroa.099.0, %scevgep187
  %bound1 = icmp ult ptr %i.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0189 = icmp ult ptr %.sroa.099.0, %scevgep188
  %bound1190 = icmp ult ptr %i.m, %scevgep
  %found.conflict191 = and i1 %bound0189, %bound1190
  %conflict.rdx = or i1 %found.conflict, %found.conflict191
  %bound0192 = icmp ult ptr %i.i, %scevgep188
  %bound1193 = icmp ult ptr %i.m, %scevgep187
  %found.conflict194 = and i1 %bound0192, %bound1193
  %conflict.rdx195 = or i1 %conflict.rdx, %found.conflict194
  %min.iters.check196 = icmp ult i64 %i.g, 32
end_hunk_2
begin_hunk_3_@_ZNK7testing8internal35UnorderedElementsAreMatcherImplBase38VerifyAllElementsAndMatchersAreMatchedERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EERKNS0_11MatchMatrixEPNS_19MatchResultListenerE:bb.a
  br i1 %exitcond156.not, label %.preheader, label %iter.check, !llvm.loop !234

.preheader:                                       ; preds = %._crit_edge.us, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i39, %_ZNSt6vectorIcSaIcEEC2EmRKcRKS0_.exit45.thread
  %.sroa.091.0172 = phi ptr [ %i.i, %_ZNSt6vectorIcSaIcEEC2EmRKcRKS0_.exit45.thread ], [ null, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i39 ], [ %i.i, %._crit_edge.us ] ; 6 uses
  %.sroa.15.0170 = phi i64 [ %i.k, %_ZNSt6vectorIcSaIcEEC2EmRKcRKS0_.exit45.thread ], [ 0, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i39 ], [ %i.k, %._crit_edge.us ] ; 2 uses
  %i.bt = ptrtoint ptr %.sroa.091.0172 to i64     ; 2 uses
  %i.bu = sub i64 %.sroa.15.0170, %i.bt           ; 3 uses
  %.not153 = icmp eq i64 %.sroa.15.0170, %i.bt
  br i1 %.not153, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
end_hunk_3
begin_hunk_4_@_ZNK7testing8internal35UnorderedElementsAreMatcherImplBase38VerifyAllElementsAndMatchersAreMatchedERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EERKNS0_11MatchMatrixEPNS_19MatchResultListenerE:bb.a
  %.0140 = phi i8 [ 1, %.lr.ph ], [ %.1, %bb.m ]
  %storemerge139 = phi i64 [ 0, %.lr.ph ], [ %i.cz, %bb.m ] ; 4 uses
  %.0111138 = phi ptr [ @.str.29, %.lr.ph ], [ %.1112, %bb.m ] ; 5 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.091.0172, i64 %storemerge139
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !14
  %.not34 = icmp eq i8 %i.cc, 0
  br i1 %.not34, label %bb.f, label %bb.m
end_hunk_4
begin_hunk_5_@_ZNK7testing8internal35UnorderedElementsAreMatcherImplBase38VerifyAllElementsAndMatchersAreMatchedERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EERKNS0_11MatchMatrixEPNS_19MatchResultListenerE:bb.a

._crit_edge148:                                   ; preds = %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit, %._crit_edge
  %.2.lcssa = phi i8 [ %.0.lcssa, %._crit_edge ], [ %.3, %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit ]
  %.not.i.i.i = icmp eq ptr %.sroa.091.0172, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %._crit_edge148
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.091.0172, i64 noundef %i.bu) #31
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %._crit_edge148, %bb.n
end_hunk_5
begin_hunk_6_@_ZNK7testing8internal35UnorderedElementsAreMatcherImplBase38VerifyAllElementsAndMatchersAreMatchedERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EERKNS0_11MatchMatrixEPNS_19MatchResultListenerE:bb.a
bb.ab:                                            ; preds = %bb.s, %bb.t, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa
  %i.eh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i77 = icmp eq ptr %.sroa.091.0172, null
  br i1 %.not.i.i.i77, label %_ZNSt6vectorIcSaIcEED2Ev.exit78.thread, label %bb.ac

bb.ac:                                            ; preds = %.thread, %bb.ab
  %.pn182 = phi { ptr, i32 } [ %i.cy, %.thread ], [ %i.eh, %bb.ab ]
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.091.0172, i64 noundef %i.bu) #31
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit78

_ZNSt6vectorIcSaIcEED2Ev.exit78:                  ; preds = %bb.ac, %bb.d
end_hunk_6
