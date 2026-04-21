inline.NumInlined: 550
inline.NumDeleted: 364
begin_hunk_0_@_ZN5folly3sslL22getSubjectNamesFromBIOEP6bio_st:bb.a
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt10unique_ptrI7x509_stN5folly23static_function_deleterIS0_XadL_Z9X509_freeEEEEED2Ev.exit.i, %bb.a
  %i.c = phi ptr [ %i.aw, %_ZNSt10unique_ptrI7x509_stN5folly23static_function_deleterIS0_XadL_Z9X509_freeEEEEED2Ev.exit.i ], [ null, %bb.a ] ; 11 uses
  %i.d = phi ptr [ %i.ax, %_ZNSt10unique_ptrI7x509_stN5folly23static_function_deleterIS0_XadL_Z9X509_freeEEEEED2Ev.exit.i ], [ null, %bb.a ] ; 5 uses
  %i.e = phi ptr [ %i.ay, %_ZNSt10unique_ptrI7x509_stN5folly23static_function_deleterIS0_XadL_Z9X509_freeEEEEED2Ev.exit.i ], [ null, %bb.a ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
end_hunk_0
begin_hunk_1_@_ZN5folly3sslL22getSubjectNamesFromBIOEP6bio_st:bb.a
  tail call void @llvm.assume(i1 %.not.i.i3.i.i)
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #26
          to label %.noexc5.i.i unwind label %.loopexit.i ; 11 uses

.noexc5.i.i:                                      ; preds = %_ZNKSt6vectorISt10unique_ptrI12X509_name_stN5folly23static_function_deleterIS1_XadL_Z14X509_NAME_freeEEEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.m
end_hunk_1
begin_hunk_2_@_ZN5folly3sslL22getSubjectNamesFromBIOEP6bio_st:bb.a

.lr.ph.i.i.i.i.i.i.preheader.a:                   ; preds = %.noexc5.i.i
  %i.w = add i64 %i.k, -8
  %i.x = sub i64 %i.w, %i.l                       ; 2 uses
  %i.y = lshr i64 %i.x, 3
  %i.z = add nuw nsw i64 %i.y, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.x, 120
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader16, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader.a
end_hunk_2
begin_hunk_3_@_ZN5folly3sslL22getSubjectNamesFromBIOEP6bio_st:bb.a
  %bound0 = icmp ult ptr %i.u, %scevgep9
  %bound1 = icmp ult ptr %i.c, %scevgep7
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.preheader16, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.z, 4611686018427387888      ; 4 uses
  %i.ad = shl i64 %n.vec, 3
  %i.ae = getelementptr i8, ptr %i.u, i64 %i.ad   ; 2 uses
  %i.af = shl i64 %n.vec, 3
end_hunk_3
begin_hunk_4_@_ZN5folly3sslL22getSubjectNamesFromBIOEP6bio_st:bb.a
  store <4 x ptr> zeroinitializer, ptr %i.ap, align 8, !tbaa !106, !alias.scope !116, !noalias !111
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block.a, label %vector.body, !llvm.loop !121

middle.block.a:                                   ; preds = %vector.body
  %cmp.n.a = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n.a, label %_ZNSt6vectorISt10unique_ptrI12X509_name_stN5folly23static_function_deleterIS1_XadL_Z14X509_NAME_freeEEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader16

.lr.ph.i.i.i.i.i.i.preheader16:                   ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.preheader.a, %middle.block.a
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.u, %vector.memcheck ], [ %i.u, %.lr.ph.i.i.i.i.i.i.preheader.a ], [ %i.ae, %middle.block.a ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i.i.i.i.i.preheader.a ], [ %i.ag, %middle.block.a ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader16, %.lr.ph.i.i.i.i.i.i
end_hunk_4
begin_hunk_5_@_ZN5folly3sslL22getSubjectNamesFromBIOEP6bio_st:bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.as, %i.d
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrI12X509_name_stN5folly23static_function_deleterIS1_XadL_Z14X509_NAME_freeEEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !124

_ZNSt6vectorISt10unique_ptrI12X509_name_stN5folly23static_function_deleterIS1_XadL_Z14X509_NAME_freeEEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block.a, %.noexc5.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.u, %.noexc5.i.i ], [ %i.ae, %middle.block.a ], [ %i.at, %.lr.ph.i.i.i.i.i.i ]
  %i.au = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt10unique_ptrI12X509_name_stN5folly23static_function_deleterIS1_XadL_Z14X509_NAME_freeEEEEESaIS5_EE9push_backEOS5_.exit.i.i, label %bb.g
end_hunk_5
begin_hunk_6_@_ZN5folly3sslL22getSubjectNamesFromBIOEP6bio_st:bb.a
  br label %_ZNSt6vectorISt10unique_ptrI12X509_name_stN5folly23static_function_deleterIS1_XadL_Z14X509_NAME_freeEEEEESaIS5_EE9push_backEOS5_.exit.i.i

_ZNSt6vectorISt10unique_ptrI12X509_name_stN5folly23static_function_deleterIS1_XadL_Z14X509_NAME_freeEEEEESaIS5_EE9push_backEOS5_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorISt10unique_ptrI12X509_name_stN5folly23static_function_deleterIS1_XadL_Z14X509_NAME_freeEEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.u, ptr %0, align 8, !tbaa !125
  store ptr %i.au, ptr %i.a, align 8, !tbaa !108
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.s ; 2 uses
  store ptr %i.av, ptr %i.b, align 8, !tbaa !126
  br label %bb.i

.loopexit.i:                                      ; preds = %_ZNKSt6vectorISt10unique_ptrI12X509_name_stN5folly23static_function_deleterIS1_XadL_Z14X509_NAME_freeEEEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
end_hunk_6
begin_hunk_7_@_ZNSt10unique_ptrI6bio_stN5folly23static_function_deleterIS0_XadL_Z9BIO_vfreeEEEEED2Ev:bb.a
; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt10unique_ptrI12X509_name_stN5folly23static_function_deleterIS1_XadL_Z14X509_NAME_freeEEEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !125    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !108  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
end_hunk_7
begin_hunk_8_@_ZNSt6vectorISt10unique_ptrI12X509_name_stN5folly23static_function_deleterIS1_XadL_Z14X509_NAME_freeEEEEESaIS5_EED2Ev:bb.a
_ZSt8_DestroyISt10unique_ptrI12X509_name_stN5folly23static_function_deleterIS1_XadL_Z14X509_NAME_freeEEEEEEvPT_.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt10unique_ptrI12X509_name_stN5folly23static_function_deleterIS1_XadL_Z14X509_NAME_freeEEEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !127

_ZSt8_DestroyIPSt10unique_ptrI12X509_name_stN5folly23static_function_deleterIS1_XadL_Z14X509_NAME_freeEEEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt10unique_ptrI12X509_name_stN5folly23static_function_deleterIS1_XadL_Z14X509_NAME_freeEEEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !125
  br label %_ZSt8_DestroyIPSt10unique_ptrI12X509_name_stN5folly23static_function_deleterIS1_XadL_Z14X509_NAME_freeEEEEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPSt10unique_ptrI12X509_name_stN5folly23static_function_deleterIS1_XadL_Z14X509_NAME_freeEEEEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrI12X509_name_stN5folly23static_function_deleterIS1_XadL_Z14X509_NAME_freeEEEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
end_hunk_8
begin_hunk_9_@_ZNSt6vectorISt10unique_ptrI12X509_name_stN5folly23static_function_deleterIS1_XadL_Z14X509_NAME_freeEEEEESaIS5_EED2Ev:bb.a

bb.d:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrI12X509_name_stN5folly23static_function_deleterIS1_XadL_Z14X509_NAME_freeEEEEES5_EvT_S7_RSaIT0_E.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !126
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
end_hunk_9
begin_hunk_10_@llvm.umax.i64
!121 = distinct !{!121, !57, !122, !123}
!122 = !{!"llvm.loop.isvectorized", i32 1}
!123 = !{!"llvm.loop.unroll.runtime.disable"}
!124 = distinct !{!124, !57, !122}
!125 = !{!109, !110, i64 0}
!126 = !{!109, !110, i64 16}
!127 = distinct !{!127, !57}
end_hunk_10
