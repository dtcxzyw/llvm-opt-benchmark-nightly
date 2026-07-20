inline.NumInlined: 5469
inline.NumDeleted: 2421
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN6duckdb14BoundStatementD2Ev:bb.a
  br label %_ZSt8_DestroyIPN6duckdb14BoundStatementEEvT_S3_.exit.i

_ZSt8_DestroyIPN6duckdb14BoundStatementEEvT_S3_.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb14BoundStatementEEvT_S3_.exit.i.loopexit, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit
  %i.p = phi ptr [ %.pre, %_ZSt8_DestroyIPN6duckdb14BoundStatementEEvT_S3_.exit.i.loopexit ], [ %i.l, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit ] ; 2 uses
  %.not.i.i.i13 = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i13, label %_ZNSt6vectorIN6duckdb14BoundStatementESaIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6duckdb14BoundStatementEEvT_S3_.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.p) #31, !inline_history !591
  br label %_ZNSt6vectorIN6duckdb14BoundStatementESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb14BoundStatementESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb14BoundStatementEEvT_S3_.exit.i, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !592  ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !595  ; 2 uses
  %.not4.i.i.i7 = icmp eq ptr %i.r, %i.t
  br i1 %.not4.i.i.i7, label %_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_6BinderELb1EEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i8

.lr.ph.i.i.i8:                                    ; preds = %_ZNSt6vectorIN6duckdb14BoundStatementESaIS1_EED2Ev.exit, %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_6BinderELb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i9 = phi ptr [ %i.al, %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_6BinderELb1EEEEvPT_.exit.i.i.i ], [ %i.r, %_ZNSt6vectorIN6duckdb14BoundStatementESaIS1_EED2Ev.exit ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i9, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !184  ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_6BinderELb1EEEEvPT_.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 4 uses
  %i.x = load atomic i64, ptr %i.w acquire, align 8 ; 2 uses
  %i.y = icmp eq i64 %i.x, 4294967297
  %i.z = trunc i64 %i.x to i32                    ; 2 uses
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.w, align 8, !tbaa !186
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  store i32 0, ptr %i.aa, align 4, !tbaa !188
  %i.ab = load ptr, ptr %i.v, align 8, !tbaa !19
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #30, !inline_history !596
  %i.ae = load ptr, ptr %i.v, align 8, !tbaa !19
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #30, !inline_history !596
  br label %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_6BinderELb1EEEEvPT_.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.ah = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.ah, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = add nsw i32 %i.z, -1
  store i32 %i.ai, ptr %i.w, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.aj = atomicrmw volatile add ptr %i.w, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.z, %bb.g ], [ %i.aj, %bb.h ]
  %i.ak = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.ak, label %bb.i, label %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_6BinderELb1EEEEvPT_.exit.i.i.i, !prof !80

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #30
  br label %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_6BinderELb1EEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6duckdb10shared_ptrINS0_6BinderELb1EEEEvPT_.exit.i.i.i: ; preds = %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.e, %.lr.ph.i.i.i8
  %i.al = getelementptr inbounds nuw i8, ptr %.05.i.i.i9, i64 16 ; 2 uses
  %.not.i.i.i10 = icmp eq ptr %i.al, %i.t
  br i1 %.not.i.i.i10, label %_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_6BinderELb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i8, !llvm.loop !597

_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_6BinderELb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_6BinderELb1EEEEvPT_.exit.i.i.i
  %.pr.i11 = load ptr, ptr %i.q, align 8, !tbaa !592
  br label %_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_6BinderELb1EEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_6BinderELb1EEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_6BinderELb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIN6duckdb14BoundStatementESaIS1_EED2Ev.exit
  %i.am = phi ptr [ %.pr.i11, %_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_6BinderELb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.r, %_ZNSt6vectorIN6duckdb14BoundStatementESaIS1_EED2Ev.exit ] ; 2 uses
  %.not.i.i1.i12 = icmp eq ptr %i.am, null
  br i1 %.not.i.i1.i12, label %_ZNSt6vectorIN6duckdb10shared_ptrINS0_6BinderELb1EEESaIS3_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_6BinderELb1EEES3_EvT_S5_RSaIT0_E.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.am) #31
  br label %_ZNSt6vectorIN6duckdb10shared_ptrINS0_6BinderELb1EEESaIS3_EED2Ev.exit

_ZNSt6vectorIN6duckdb10shared_ptrINS0_6BinderELb1EEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_6BinderELb1EEES3_EvT_S5_RSaIT0_E.exit.i, %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !24 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !22 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ao, %i.aq
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIN6duckdb10shared_ptrINS0_6BinderELb1EEESaIS3_EED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.au, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.ao, %_ZNSt6vectorIN6duckdb10shared_ptrINS0_6BinderELb1EEESaIS3_EED2Ev.exit ] ; 3 uses
  %i.ar = load ptr, ptr %.05.i.i.i, align 8, !tbaa !16 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.ar) #31
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.au, %i.aq
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !321

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.an, align 8, !tbaa !24
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIN6duckdb10shared_ptrINS0_6BinderELb1EEESaIS3_EED2Ev.exit
  %i.av = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.ao, %_ZNSt6vectorIN6duckdb10shared_ptrINS0_6BinderELb1EEESaIS3_EED2Ev.exit ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.av) #31
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.k
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !562 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !565 ; 2 uses
  %.not4.i.i.i1 = icmp eq ptr %i.ax, %i.az
  br i1 %.not4.i.i.i1, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i2

.lr.ph.i.i.i2:                                    ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %.lr.ph.i.i.i2
  %.05.i.i.i3 = phi ptr [ %i.ba, %.lr.ph.i.i.i2 ], [ %i.ax, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ] ; 2 uses
  tail call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i3) #30
  %i.ba = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 24 ; 2 uses
  %.not.i.i.i4 = icmp eq ptr %i.ba, %i.az
  br i1 %.not.i.i.i4, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i2, !llvm.loop !598

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i2
  %.pr.i5 = load ptr, ptr %i.aw, align 8, !tbaa !562
  br label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.bb = phi ptr [ %.pr.i5, %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.ax, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ] ; 2 uses
  %.not.i.i1.i6 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i1.i6, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.bb) #31
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, %bb.l
  %i.bc = load ptr, ptr %0, align 8, !tbaa !569   ; 3 uses
  %.not.i = icmp eq ptr %i.bc, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !19
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load ptr, ptr %i.be, align 8
  tail call void %i.bf(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.bc) #30, !inline_history !599
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb13SecretManager17GetSecretStoragesEv(ptr dead_on_unwind noalias nofree writable sret(%"class.duckdb::vector.664") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(344) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #30 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #32
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 176
  %.sroa.010.018 = load ptr, ptr %i.c, align 8, !tbaa !94 ; 2 uses
  %.not19 = icmp eq ptr %.sroa.010.018, null
  br i1 %.not19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.c

._crit_edge:                                      ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb13SecretStorageEESaIS3_EE9push_backEOS3_.exit, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %.lcssa15 = phi ptr [ null, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit ], [ %i.at, %_ZNSt6vectorISt17reference_wrapperIN6duckdb13SecretStorageEESaIS3_EE9push_backEOS3_.exit ]
  store ptr %.lcssa15, ptr %0, align 8
  %i.f = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #30 ; 0 uses
  ret void

bb.c:                                             ; preds = %.lr.ph, %_ZNSt6vectorISt17reference_wrapperIN6duckdb13SecretStorageEESaIS3_EE9push_backEOS3_.exit
  %i.g = phi ptr [ null, %.lr.ph ], [ %i.as, %_ZNSt6vectorISt17reference_wrapperIN6duckdb13SecretStorageEESaIS3_EE9push_backEOS3_.exit ] ; 7 uses
  %.sroa.010.020 = phi ptr [ %.sroa.010.018, %.lr.ph ], [ %.sroa.010.0, %_ZNSt6vectorISt17reference_wrapperIN6duckdb13SecretStorageEESaIS3_EE9push_backEOS3_.exit ] ; 2 uses
  %i.h = phi ptr [ null, %.lr.ph ], [ %i.at, %_ZNSt6vectorISt17reference_wrapperIN6duckdb13SecretStorageEESaIS3_EE9push_backEOS3_.exit ] ; 13 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.020, i64 40
  %i.j = invoke noundef nonnull align 8 dereferenceable(49) ptr @_ZNK6duckdb10unique_ptrINS_13SecretStorageESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %bb.d unwind label %.loopexit  ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !600
  %.not.i.i6 = icmp eq ptr %i.g, %i.k
  br i1 %.not.i.i6, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = ptrtoint ptr %i.j to i64
  store i64 %i.l, ptr %i.g, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %i.m, ptr %i.d, align 8, !tbaa !602
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb13SecretStorageEESaIS3_EE9push_backEOS3_.exit

bb.f:                                             ; preds = %bb.d
  %i.n = ptrtoint ptr %i.g to i64
  %i.o = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.p = sub i64 %i.n, %i.o                       ; 3 uses
  %i.q = icmp eq i64 %i.p, 9223372036854775800
  br i1 %i.q, label %bb.g, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb13SecretStorageEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  store ptr %i.h, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.111) #32
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.g
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb13SecretStorageEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.f
  %i.r = ashr exact i64 %i.p, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.r, i64 1)
  %i.s = add nsw i64 %.sroa.speculated.i.i.i.i, %i.r ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.r
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.s, i64 1152921504606846975)
  %i.v = select i1 %i.t, i64 1152921504606846975, i64 %i.u ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.v, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #34
          to label %.noexc7 unwind label %.loopexit ; 8 uses

.noexc7:                                          ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb13SecretStorageEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.p
  %i.z = ptrtoint ptr %i.j to i64
  store i64 %i.z, ptr %i.y, align 8
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.h, %i.g
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb13SecretStorageEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc7
  %i.aa = ptrtoaddr ptr %i.x to i64
  %2 = ptrtoaddr ptr %i.g to i64
  %3 = ptrtoaddr ptr %i.h to i64
  %i.ab = sub i64 %2, %3
  %i.ac = add i64 %i.ab, -8                       ; 2 uses
  %i.ad = lshr i64 %i.ac, 3
  %i.ae = add nuw nsw i64 %i.ad, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ac, 24
  %i.af = sub i64 %i.o, %i.aa
  %diff.check = icmp ugt i64 %i.af, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.preheader40, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ae, 4611686018427387900     ; 3 uses
  %i.ag = shl i64 %n.vec, 3                       ; 2 uses
  %i.ah = getelementptr i8, ptr %i.x, i64 %i.ag   ; 2 uses
  %i.ai = getelementptr i8, ptr %i.h, i64 %i.ag
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aj = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.x, i64 %i.aj ; 2 uses
  %next.gep37 = getelementptr i8, ptr %i.h, i64 %i.aj ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !603)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !606)
  %i.ak = getelementptr i8, ptr %next.gep37, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep37, align 8, !alias.scope !606, !noalias !603
  %wide.load38 = load <2 x i64>, ptr %i.ak, align 8, !alias.scope !606, !noalias !603
  %i.al = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !603, !noalias !606
  store <2 x i64> %wide.load38, ptr %i.al, align 8, !alias.scope !603, !noalias !606
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !608

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb13SecretStorageEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader40

.lr.ph.i.i.i.i.i.i.i.preheader40:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ah, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.h, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ai, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader40, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader40 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader40 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !603)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !606)
  %i.an = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !alias.scope !606, !noalias !603
  store i64 %i.an, ptr %.012.i.i.i.i.i.i.i, align 8, !alias.scope !603, !noalias !606
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ao, %i.g
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb13SecretStorageEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !611

_ZNSt6vectorISt17reference_wrapperIN6duckdb13SecretStorageEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc7
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.x, %.noexc7 ], [ %i.ah, %middle.block ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb13SecretStorageEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb13SecretStorageEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.h) #31
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb13SecretStorageEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb13SecretStorageEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.h, %_ZNSt6vectorISt17reference_wrapperIN6duckdb13SecretStorageEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  store ptr %i.aq, ptr %i.d, align 8, !tbaa !602
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.ar, ptr %i.e, align 8, !tbaa !600
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb13SecretStorageEESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorISt17reference_wrapperIN6duckdb13SecretStorageEESaIS3_EE9push_backEOS3_.exit: ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb13SecretStorageEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.e
  %i.as = phi ptr [ %i.aq, %_ZNSt6vectorISt17reference_wrapperIN6duckdb13SecretStorageEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.m, %bb.e ]
  %i.at = phi ptr [ %i.x, %_ZNSt6vectorISt17reference_wrapperIN6duckdb13SecretStorageEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.h, %bb.e ] ; 2 uses
  %.sroa.010.0 = load ptr, ptr %.sroa.010.020, align 8, !tbaa !94 ; 2 uses
  %.not = icmp eq ptr %.sroa.010.0, null
  br i1 %.not, label %._crit_edge, label %bb.c

.loopexit:                                        ; preds = %bb.c, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb13SecretStorageEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.h, ptr %0, align 8
  br label %bb.i

.loopexit.split-lp:                               ; preds = %bb.g
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.i:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb13SecretStorageEESaIS3_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.h) #31
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb13SecretStorageEESaIS3_EED2Ev.exit

_ZNSt6vectorISt17reference_wrapperIN6duckdb13SecretStorageEESaIS3_EED2Ev.exit: ; preds = %bb.i, %bb.j
  %i.au = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #30 ; 0 uses
  resume { ptr, i32 } %lpad.phi
}

declare void @_ZN6duckdb10StringUtil5LowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(48) ptr @_ZNK6duckdb10unique_ptrINS_11SecretEntryESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.0", align 1  ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !178    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_11SecretEntryESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !80

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.109, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !16     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #30
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_11SecretEntryESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb13SecretManager15GetSecretByNameENS_18CatalogTransactionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr dead_on_unwind noalias writable sret(%"class.duckdb::unique_ptr.490") align 8 %0, ptr noundef nonnull align 8 dereferenceable(344) %1, ptr noundef byval(%"struct.duckdb::CatalogTransaction") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.duckdb::unique_ptr.490", align 8 ; 6 uses
  %6 = alloca %"class.duckdb::optional_ptr.608", align 8 ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::allocator.0", align 1  ; 5 uses
  %9 = alloca %"class.duckdb::vector.664", align 8 ; 6 uses
  %10 = alloca %"class.duckdb::unique_ptr.490", align 8 ; 8 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %12 = alloca %"class.std::allocator.0", align 1 ; 5 uses
  tail call void @_ZN6duckdb13SecretManager17InitializeSecretsENS_18CatalogTransactionE(ptr noundef nonnull align 8 dereferenceable(344) %1, ptr noundef nonnull byval(%"struct.duckdb::CatalogTransaction") align 8 %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  store ptr null, ptr %5, align 8, !tbaa !162
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !10
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.d = invoke ptr @_ZN6duckdb13SecretManager16GetSecretStorageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(344) %1, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.c unwind label %bb.g       ; 2 uses

bb.c:                                             ; preds = %bb.b
  store ptr %i.d, ptr %6, align 8
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.j

end_hunk_0
begin_hunk_1_@_ZN6duckdb29InvalidConfigurationExceptionC2IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES9_DpOT_:bb.a
  br label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %bb.b
  %i.i = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.a, %bb.b ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i1.i.i, label %_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.i) #31
  br label %_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.d ], [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30, !noalias !615
  br label %common.resume

_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_.exit: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30, !noalias !615
  invoke void @_ZN6duckdb29InvalidConfigurationExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_.exit
  %i.k = load ptr, ptr %4, align 8, !tbaa !16     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.k) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret void

bb.f:                                             ; preds = %_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %4, align 8, !tbaa !16     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.o) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb13SecretManager16DropSecretByNameENS_18CatalogTransactionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15OnEntryNotFoundENS_17SecretPersistTypeES9_(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef byval(%"struct.duckdb::CatalogTransaction") align 8 %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i8 noundef zeroext %3, i8 noundef zeroext %4, ptr noundef nonnull align 8 dereferenceable(32) %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.duckdb::vector.664", align 8 ; 15 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::allocator.0", align 1  ; 5 uses
  %9 = alloca %"class.duckdb::vector.664", align 8 ; 6 uses
  %10 = alloca %"class.duckdb::unique_ptr.490", align 8 ; 7 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %14 = alloca %"class.std::allocator.0", align 1 ; 5 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %19 = alloca %"class.std::allocator.0", align 1 ; 5 uses
  tail call void @_ZN6duckdb13SecretManager17InitializeSecretsENS_18CatalogTransactionE(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef nonnull byval(%"struct.duckdb::CatalogTransaction") align 8 %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !10
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = invoke ptr @_ZN6duckdb13SecretManager16GetSecretStorageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.c unwind label %bb.g       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb13SecretStorageEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.55, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.e unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN6duckdb21InvalidInputExceptionC2IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES9_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTIN6duckdb21InvalidInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.bq unwind label %bb.h

bb.g:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %bb.e
  %.043 = phi i1 [ false, %bb.f ], [ true, %bb.e ] ; 2 uses
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.i = load ptr, ptr %7, align 8, !tbaa !16     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  call void @_ZdlPv(ptr noundef %i.i) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br i1 %.043, label %bb.i, label %bb.bo

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br i1 %.043, label %bb.i, label %bb.bo

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn133 = phi { ptr, i32 } [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.e) #30
  br label %bb.bo

_ZNKSt6vectorISt17reference_wrapperIN6duckdb13SecretStorageEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.l = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #34
          to label %_ZNSt6vectorISt17reference_wrapperIN6duckdb13SecretStorageEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i unwind label %bb.j ; 4 uses

_ZNSt6vectorISt17reference_wrapperIN6duckdb13SecretStorageEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb13SecretStorageEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.o = ptrtoint ptr %i.d to i64
  store i64 %i.o, ptr %i.l, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  store ptr %i.l, ptr %6, align 8, !tbaa !618
  store ptr %i.p, ptr %i.n, align 8, !tbaa !602
  store ptr %i.p, ptr %i.m, align 8, !tbaa !600
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb13SecretStorageEESaIS3_EE9push_backEOS3_.exit

bb.j:                                             ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb13SecretStorageEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.k:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  invoke void @_ZN6duckdb13SecretManager17GetSecretStoragesEv(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::vector.664") align 8 %9, ptr noundef nonnull align 8 dereferenceable(344) %0)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.r = load ptr, ptr %9, align 8, !tbaa !194    ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !194  ; 2 uses
  %.not141163 = icmp eq ptr %i.r, %i.t
  br i1 %.not141163, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  br label %bb.o

._crit_edge:                                      ; preds = %bb.ae, %bb.l
  %i.w = phi ptr [ null, %bb.l ], [ %i.cm, %bb.ae ]
  %.not.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb13SecretStorageEESaIS3_EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge
  call void @_ZdlPv(ptr noundef nonnull %i.r) #31
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb13SecretStorageEESaIS3_EED2Ev.exit

_ZNSt6vectorISt17reference_wrapperIN6duckdb13SecretStorageEESaIS3_EED2Ev.exit: ; preds = %._crit_edge, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  %.pre = load ptr, ptr %6, align 8, !tbaa !618
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb13SecretStorageEESaIS3_EE9push_backEOS3_.exit

bb.n:                                             ; preds = %bb.k
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.o:                                             ; preds = %.lr.ph, %bb.ae
  %i.y = phi ptr [ null, %.lr.ph ], [ %i.cm, %bb.ae ] ; 9 uses
  %.sroa.0124.0164 = phi ptr [ %i.r, %.lr.ph ], [ %i.cn, %bb.ae ] ; 5 uses
  switch i8 %4, label %bb.u [
    i8 2, label %bb.p
    i8 1, label %bb.s
  ]

bb.p:                                             ; preds = %bb.o
  %i.z = load ptr, ptr %.sroa.0124.0164, align 8, !tbaa !196 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !19
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 72
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = invoke noundef zeroext i1 %i.ac(ptr noundef nonnull align 8 dereferenceable(49) %i.z)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  br i1 %i.ad, label %bb.u, label %bb.ae

bb.r:                                             ; preds = %bb.s, %bb.p
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.s:                                             ; preds = %bb.o
  %i.af = load ptr, ptr %.sroa.0124.0164, align 8, !tbaa !196 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !19
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 72
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = invoke noundef zeroext i1 %i.ai(ptr noundef nonnull align 8 dereferenceable(49) %i.af)
          to label %bb.t unwind label %bb.r

bb.t:                                             ; preds = %bb.s
  br i1 %i.aj, label %bb.ae, label %bb.u

bb.u:                                             ; preds = %bb.q, %bb.o, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  %i.ak = load ptr, ptr %.sroa.0124.0164, align 8, !tbaa !196 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !19
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 56
  %i.an = load ptr, ptr %i.am, align 8
  invoke void %i.an(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.490") align 8 %10, ptr noundef nonnull align 8 dereferenceable(49) %i.ak, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr nonnull %1)
          to label %bb.v unwind label %bb.ab

bb.v:                                             ; preds = %bb.u
  %i.ao = load ptr, ptr %10, align 8, !tbaa !178
  %.not143 = icmp eq ptr %i.ao, null
  br i1 %.not143, label %_ZNSt10unique_ptrIN6duckdb11SecretEntryESt14default_deleteIS1_EED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ap = load ptr, ptr %.sroa.0124.0164, align 8, !tbaa !196 ; 2 uses
  %i.aq = load ptr, ptr %i.v, align 8, !tbaa !600
  %.not.i.i64 = icmp eq ptr %i.y, %i.aq
  br i1 %.not.i.i64, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ar = ptrtoint ptr %i.ap to i64
  store i64 %i.ar, ptr %i.y, align 8
  %i.as = load ptr, ptr %i.u, align 8, !tbaa !602
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  store ptr %i.at, ptr %i.u, align 8, !tbaa !602
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb13SecretStorageEESaIS3_EE9push_backEOS3_.exit79

bb.y:                                             ; preds = %bb.w
  %i.au = load ptr, ptr %6, align 8, !tbaa !618   ; 8 uses
  %i.av = ptrtoint ptr %i.y to i64
  %i.aw = ptrtoint ptr %i.au to i64               ; 2 uses
  %i.ax = sub i64 %i.av, %i.aw                    ; 3 uses
  %i.ay = icmp eq i64 %i.ax, 9223372036854775800
  br i1 %i.ay, label %bb.z, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb13SecretStorageEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i65

bb.z:                                             ; preds = %bb.y
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.111) #32
          to label %.noexc77 unwind label %.loopexit.split-lp150

.noexc77:                                         ; preds = %bb.z
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb13SecretStorageEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i65: ; preds = %bb.y
  %i.az = ashr exact i64 %i.ax, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i66 = call i64 @llvm.umax.i64(i64 %i.az, i64 1)
  %i.ba = add nsw i64 %.sroa.speculated.i.i.i.i66, %i.az ; 2 uses
  %i.bb = icmp ult i64 %i.ba, %i.az
  %i.bc = call i64 @llvm.umin.i64(i64 %i.ba, i64 1152921504606846975)
  %i.bd = select i1 %i.bb, i64 1152921504606846975, i64 %i.bc ; 3 uses
  %.not.i.i.i.i67 = icmp ne i64 %i.bd, 0
  call void @llvm.assume(i1 %.not.i.i.i.i67)
  %i.be = shl nuw nsw i64 %i.bd, 3
  %i.bf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.be) #34
          to label %.noexc78 unwind label %.loopexit149 ; 8 uses

.noexc78:                                         ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb13SecretStorageEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i65
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.ax
  %i.bh = ptrtoint ptr %i.ap to i64
  store i64 %i.bh, ptr %i.bg, align 8
  %.not10.i.i.i.i.i.i.i68 = icmp eq ptr %i.au, %i.y
  br i1 %.not10.i.i.i.i.i.i.i68, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb13SecretStorageEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i73, label %.lr.ph.i.i.i.i.i.i.i69.preheader

.lr.ph.i.i.i.i.i.i.i69.preheader:                 ; preds = %.noexc78
  %i.bi = ptrtoaddr ptr %i.bf to i64
  %20 = ptrtoaddr ptr %i.y to i64
  %21 = ptrtoaddr ptr %i.au to i64
  %i.bj = sub i64 %20, %21
  %i.bk = add i64 %i.bj, -8                       ; 2 uses
  %i.bl = lshr i64 %i.bk, 3
  %i.bm = add nuw nsw i64 %i.bl, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bk, 24
  %i.bn = sub i64 %i.aw, %i.bi
  %diff.check = icmp ugt i64 %i.bn, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i69.preheader207, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i69.preheader
  %n.vec = and i64 %i.bm, 4611686018427387900     ; 3 uses
  %i.bo = shl i64 %n.vec, 3                       ; 2 uses
  %i.bp = getelementptr i8, ptr %i.bf, i64 %i.bo  ; 2 uses
  %i.bq = getelementptr i8, ptr %i.au, i64 %i.bo
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.br = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bf, i64 %i.br ; 2 uses
  %next.gep204 = getelementptr i8, ptr %i.au, i64 %i.br ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !619)
  call void @llvm.experimental.noalias.scope.decl(metadata !622)
  %i.bs = getelementptr i8, ptr %next.gep204, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep204, align 8, !alias.scope !622, !noalias !619
  %wide.load205 = load <2 x i64>, ptr %i.bs, align 8, !alias.scope !622, !noalias !619
  %i.bt = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !619, !noalias !622
  store <2 x i64> %wide.load205, ptr %i.bt, align 8, !alias.scope !619, !noalias !622
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bu = icmp eq i64 %index.next, %n.vec
  br i1 %i.bu, label %middle.block, label %vector.body, !llvm.loop !624

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bm, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb13SecretStorageEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i73, label %.lr.ph.i.i.i.i.i.i.i69.preheader207

.lr.ph.i.i.i.i.i.i.i69.preheader207:              ; preds = %.lr.ph.i.i.i.i.i.i.i69.preheader, %middle.block
  %.012.i.i.i.i.i.i.i70.ph = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i.i.i69.preheader ], [ %i.bp, %middle.block ]
  %.0911.i.i.i.i.i.i.i71.ph = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i.i.i69.preheader ], [ %i.bq, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i69

.lr.ph.i.i.i.i.i.i.i69:                           ; preds = %.lr.ph.i.i.i.i.i.i.i69.preheader207, %.lr.ph.i.i.i.i.i.i.i69
  %.012.i.i.i.i.i.i.i70 = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i.i.i69 ], [ %.012.i.i.i.i.i.i.i70.ph, %.lr.ph.i.i.i.i.i.i.i69.preheader207 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i71 = phi ptr [ %i.bw, %.lr.ph.i.i.i.i.i.i.i69 ], [ %.0911.i.i.i.i.i.i.i71.ph, %.lr.ph.i.i.i.i.i.i.i69.preheader207 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !619)
  call void @llvm.experimental.noalias.scope.decl(metadata !622)
  %i.bv = load i64, ptr %.0911.i.i.i.i.i.i.i71, align 8, !alias.scope !622, !noalias !619
  store i64 %i.bv, ptr %.012.i.i.i.i.i.i.i70, align 8, !alias.scope !619, !noalias !622
  %i.bw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i71, i64 8 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i70, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i72 = icmp eq ptr %i.bw, %i.y
  br i1 %.not.i.i.i.i.i.i.i72, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb13SecretStorageEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i73, label %.lr.ph.i.i.i.i.i.i.i69, !llvm.loop !625

_ZNSt6vectorISt17reference_wrapperIN6duckdb13SecretStorageEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i73: ; preds = %.lr.ph.i.i.i.i.i.i.i69, %middle.block, %.noexc78
  %.0.lcssa.i.i.i.i.i.i.i74 = phi ptr [ %i.bf, %.noexc78 ], [ %i.bp, %middle.block ], [ %i.bx, %.lr.ph.i.i.i.i.i.i.i69 ]
  %i.by = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i74, i64 8 ; 2 uses
  %.not.i23.i.i.i75 = icmp eq ptr %i.au, null
  br i1 %.not.i23.i.i.i75, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb13SecretStorageEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i76, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb13SecretStorageEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i73
  call void @_ZdlPv(ptr noundef nonnull %i.au) #31
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb13SecretStorageEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i76

_ZNSt6vectorISt17reference_wrapperIN6duckdb13SecretStorageEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i76: ; preds = %bb.aa, %_ZNSt6vectorISt17reference_wrapperIN6duckdb13SecretStorageEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i73
  store ptr %i.bf, ptr %6, align 8, !tbaa !618
  store ptr %i.by, ptr %i.u, align 8, !tbaa !602
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bd
  store ptr %i.bz, ptr %i.v, align 8, !tbaa !600
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb13SecretStorageEESaIS3_EE9push_backEOS3_.exit79

bb.ab:                                            ; preds = %bb.u
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

.loopexit149:                                     ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb13SecretStorageEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i65
  %lpad.loopexit151 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

.loopexit.split-lp150:                            ; preds = %bb.z
  %lpad.loopexit.split-lp152 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.ac:                                            ; preds = %.loopexit.split-lp150, %.loopexit149
  %lpad.phi153 = phi { ptr, i32 } [ %lpad.loopexit151, %.loopexit149 ], [ %lpad.loopexit.split-lp152, %.loopexit.split-lp150 ]
  call void @_ZNSt10unique_ptrIN6duckdb11SecretEntryESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #30
  br label %bb.af

_ZNSt6vectorISt17reference_wrapperIN6duckdb13SecretStorageEESaIS3_EE9push_backEOS3_.exit79: ; preds = %bb.x, %_ZNSt6vectorISt17reference_wrapperIN6duckdb13SecretStorageEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i76
  %i.cb = phi ptr [ %i.at, %bb.x ], [ %i.by, %_ZNSt6vectorISt17reference_wrapperIN6duckdb13SecretStorageEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i76 ] ; 2 uses
  %.pr = load ptr, ptr %10, align 8, !tbaa !178   ; 5 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb11SecretEntryESt14default_deleteIS1_EED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb13SecretStorageEESaIS3_EE9push_backEOS3_.exit79
  %i.cc = getelementptr inbounds nuw i8, ptr %.pr, i64 40
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !179 ; 3 uses
  %.not.i.i.i.i80 = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.i.i80, label %_ZNSt10unique_ptrIKN6duckdb10BaseSecretESt14default_deleteIS2_EED2Ev.exit.i.i.i, label %_ZNKSt14default_deleteIKN6duckdb10BaseSecretEEclEPS2_.exit.i.i.i.i

_ZNKSt14default_deleteIKN6duckdb10BaseSecretEEclEPS2_.exit.i.i.i.i: ; preds = %bb.ad
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !19
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8
  call void %i.cg(ptr noundef nonnull align 8 dead_on_return(129) dereferenceable(129) %i.cd) #30, !inline_history !203
  br label %_ZNSt10unique_ptrIKN6duckdb10BaseSecretESt14default_deleteIS2_EED2Ev.exit.i.i.i

_ZNSt10unique_ptrIKN6duckdb10BaseSecretESt14default_deleteIS2_EED2Ev.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIKN6duckdb10BaseSecretEEclEPS2_.exit.i.i.i.i, %bb.ad
  %i.ch = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !16 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.pr, i64 24
  %i.ck = icmp eq ptr %i.ci, %i.cj
  br i1 %i.ck, label %_ZNKSt14default_deleteIN6duckdb11SecretEntryEEclEPS1_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIKN6duckdb10BaseSecretESt14default_deleteIS2_EED2Ev.exit.i.i.i
  call void @_ZdlPv(ptr noundef %i.ci) #31
  br label %_ZNKSt14default_deleteIN6duckdb11SecretEntryEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb11SecretEntryEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIKN6duckdb10BaseSecretESt14default_deleteIS2_EED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %.pr) #31
  br label %_ZNSt10unique_ptrIN6duckdb11SecretEntryESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb11SecretEntryESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.v, %_ZNSt6vectorISt17reference_wrapperIN6duckdb13SecretStorageEESaIS3_EE9push_backEOS3_.exit79, %_ZNKSt14default_deleteIN6duckdb11SecretEntryEEclEPS1_.exit.i
  %i.cl = phi ptr [ %i.y, %bb.v ], [ %i.cb, %_ZNSt6vectorISt17reference_wrapperIN6duckdb13SecretStorageEESaIS3_EE9push_backEOS3_.exit79 ], [ %i.cb, %_ZNKSt14default_deleteIN6duckdb11SecretEntryEEclEPS1_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  br label %bb.ae

bb.ae:                                            ; preds = %bb.t, %bb.q, %_ZNSt10unique_ptrIN6duckdb11SecretEntryESt14default_deleteIS1_EED2Ev.exit
  %i.cm = phi ptr [ %i.y, %bb.t ], [ %i.y, %bb.q ], [ %i.cl, %_ZNSt10unique_ptrIN6duckdb11SecretEntryESt14default_deleteIS1_EED2Ev.exit ] ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.0124.0164, i64 8 ; 2 uses
  %.not141 = icmp eq ptr %i.cn, %i.t
  br i1 %.not141, label %._crit_edge, label %bb.o

bb.af:                                            ; preds = %bb.ac, %bb.ab
  %.pn58 = phi { ptr, i32 } [ %lpad.phi153, %bb.ac ], [ %i.ca, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.r
  %.pn58.pn = phi { ptr, i32 } [ %.pn58, %bb.af ], [ %i.ae, %bb.r ]
  %.not.i.i.i81 = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i81, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb13SecretStorageEESaIS3_EED2Ev.exit82, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @_ZdlPv(ptr noundef nonnull %i.r) #31
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb13SecretStorageEESaIS3_EED2Ev.exit82

_ZNSt6vectorISt17reference_wrapperIN6duckdb13SecretStorageEESaIS3_EED2Ev.exit82: ; preds = %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  br label %bb.bo

_ZNSt6vectorISt17reference_wrapperIN6duckdb13SecretStorageEESaIS3_EE9push_backEOS3_.exit: ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb13SecretStorageEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %_ZNSt6vectorISt17reference_wrapperIN6duckdb13SecretStorageEESaIS3_EED2Ev.exit
  %i.co = phi ptr [ %.pre, %_ZNSt6vectorISt17reference_wrapperIN6duckdb13SecretStorageEESaIS3_EED2Ev.exit ], [ %i.l, %_ZNSt6vectorISt17reference_wrapperIN6duckdb13SecretStorageEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ] ; 5 uses
  %i.cp = phi ptr [ %i.w, %_ZNSt6vectorISt17reference_wrapperIN6duckdb13SecretStorageEESaIS3_EED2Ev.exit ], [ %i.p, %_ZNSt6vectorISt17reference_wrapperIN6duckdb13SecretStorageEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ] ; 4 uses
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = ptrtoint ptr %i.co to i64
  %i.cs = sub i64 %i.cq, %i.cr
  %i.ct = icmp ugt i64 %i.cs, 8
  br i1 %i.ct, label %bb.ai, label %bb.av

bb.ai:                                            ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb13SecretStorageEESaIS3_EE9push_backEOS3_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  %i.cu = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  store ptr %i.cu, ptr %11, align 8, !tbaa !15
  %i.cv = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  store i64 0, ptr %i.cv, align 8, !tbaa !10
  store i8 0, ptr %i.cu, align 8, !tbaa !18
  %.not142165 = icmp eq ptr %i.co, %i.cp
  br i1 %.not142165, label %._crit_edge169, label %.lr.ph168

.lr.ph168:                                        ; preds = %bb.ai
  %i.cw = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 5 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 4 uses
  br label %bb.aj

._crit_edge169:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, %bb.ai
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %11) #30
  %i.cy = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.56, ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %bb.aq unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93.thread

bb.aj:                                            ; preds = %.lr.ph168, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87
  %.sroa.0117.0166 = phi ptr [ %i.co, %.lr.ph168 ], [ %i.dz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  %i.cz = load ptr, ptr %.sroa.0117.0166, align 8, !tbaa !196 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !19
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = invoke noundef nonnull align 8 dereferenceable(32) ptr %i.dc(ptr noundef nonnull align 8 dereferenceable(49) %i.cz)
          to label %bb.ak unwind label %bb.ao     ; 2 uses

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.experimental.noalias.scope.decl(metadata !626)
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !16, !noalias !626
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
end_hunk_1
