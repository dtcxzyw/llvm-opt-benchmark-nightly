inline.NumInlined: 18938
inline.NumDeleted: 8313
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 82
loop-unroll.NumUnrolled: 121
begin_hunk_0_@_ZNSt10unique_ptrIN6duckdb14CSVWriterStateESt14default_deleteIS1_EED2Ev:bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !1360   ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZNKSt14default_deleteIN6duckdb14CSVWriterStateEEclEPS1_.exit

_ZNKSt14default_deleteIN6duckdb14CSVWriterStateEEclEPS1_.exit: ; preds = %bb.a
  tail call void @_ZN6duckdb14CSVWriterStateD1Ev(ptr noundef nonnull align 8 dead_on_return(18) dereferenceable(18) %i.a) #29
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #31
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt14default_deleteIN6duckdb14CSVWriterStateEEclEPS1_.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb18ExpressionExecutorD2Ev(ptr noundef nonnull align 8 dead_on_return(65) dereferenceable(65) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1377 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1380 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_23ExpressionExecutorStateESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_23ExpressionExecutorStateESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.j, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_23ExpressionExecutorStateESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8, !tbaa !1381 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_23ExpressionExecutorStateESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1383 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb23ExpressionExecutorStateEEclEPS1_.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb15ExpressionStateEEclEPS1_.exit.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb15ExpressionStateEEclEPS1_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !48
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %i.f) #29, !inline_history !1557
  br label %_ZNKSt14default_deleteIN6duckdb23ExpressionExecutorStateEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb23ExpressionExecutorStateEEclEPS1_.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb15ExpressionStateEEclEPS1_.exit.i.i.i.i.i.i.i.i, %bb.b
  tail call void @_ZdlPv(ptr noundef nonnull %i.e) #31
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_23ExpressionExecutorStateESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_23ExpressionExecutorStateESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb23ExpressionExecutorStateEEclEPS1_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_23ExpressionExecutorStateESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1386

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_23ExpressionExecutorStateESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_23ExpressionExecutorStateESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !1377
  br label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_23ExpressionExecutorStateESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_23ExpressionExecutorStateESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_23ExpressionExecutorStateESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.k = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_23ExpressionExecutorStateESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_23ExpressionExecutorStateESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_23ExpressionExecutorStateESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.k) #31
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_23ExpressionExecutorStateESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_23ExpressionExecutorStateESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_23ExpressionExecutorStateESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, %bb.c
  %i.l = load ptr, ptr %0, align 8, !tbaa !1387   ; 2 uses
  %.not.i.i.i1 = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIPKN6duckdb10ExpressionESaIS3_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_23ExpressionExecutorStateESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.l) #31
  br label %_ZNSt6vectorIPKN6duckdb10ExpressionESaIS3_EED2Ev.exit

_ZNSt6vectorIPKN6duckdb10ExpressionESaIS3_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_23ExpressionExecutorStateESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit, %bb.d
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72)) unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb18WriteCSVFlushBatchERNS_13ClientContextERNS_12FunctionDataERNS_18GlobalFunctionDataERNS_17PreparedBatchDataE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.duckdb::unique_ptr.912", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(18) ptr @_ZNK6duckdb10unique_ptrINS_14CSVWriterStateESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  tail call void @_ZN6duckdb9CSVWriter5FlushERNS_14CSVWriterStateE(ptr noundef nonnull align 8 dereferenceable(1248) %i.a, ptr noundef nonnull align 8 dereferenceable(18) %i.c)
  %i.d = load i64, ptr %i.b, align 8, !tbaa !1360
  store i64 %i.d, ptr %4, align 8, !tbaa !1360
  store ptr null, ptr %i.b, align 8, !tbaa !1360
  invoke void @_ZN6duckdb18GlobalWriteCSVData15StoreLocalStateENS_10unique_ptrINS_14CSVWriterStateESt14default_deleteIS2_ELb1EEE(ptr noundef nonnull align 8 dereferenceable(1320) %2, ptr noundef nonnull %4)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %4, align 8, !tbaa !1360   ; 3 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb14CSVWriterStateESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb14CSVWriterStateEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb14CSVWriterStateEEclEPS1_.exit.i: ; preds = %bb.b
  call void @_ZN6duckdb14CSVWriterStateD1Ev(ptr noundef nonnull align 8 dead_on_return(18) dereferenceable(18) %i.e) #29
  call void @_ZdlPv(ptr noundef nonnull %i.e) #31
  br label %_ZNSt10unique_ptrIN6duckdb14CSVWriterStateESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb14CSVWriterStateESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.b, %_ZNKSt14default_deleteIN6duckdb14CSVWriterStateEEclEPS1_.exit.i
  ret void

bb.c:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN6duckdb14CSVWriterStateESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #29
  resume { ptr, i32 } %i.f
}

declare void @_ZN6duckdb9CSVWriter5FlushERNS_14CSVWriterStateE(ptr noundef nonnull align 8 dereferenceable(1248), ptr noundef nonnull align 8 dereferenceable(18)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb18GlobalWriteCSVData15StoreLocalStateENS_10unique_ptrINS_14CSVWriterStateESt14default_deleteIS2_ELb1EEE(ptr noundef nonnull align 8 dereferenceable(1320) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1256 ; 3 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #29 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #30
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.c = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_14CSVWriterStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.c unwind label %bb.i       ; 2 uses

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_12MemoryStreamESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.c
  invoke void @_ZN6duckdb12MemoryStream6RewindEv(ptr noundef nonnull align 8 dereferenceable(48) %i.e)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %.noexc
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i8 0, ptr %i.f, align 8, !tbaa !1558
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1296 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1304 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1546 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1312 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1559
  %.not.i.i3 = icmp eq ptr %i.i, %i.k
  br i1 %.not.i.i3, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load i64, ptr %1, align 8, !tbaa !1360
  store i64 %i.l, ptr %i.i, align 8, !tbaa !1360
  store ptr null, ptr %1, align 8, !tbaa !1360
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.m, ptr %i.h, align 8, !tbaa !1546
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14CSVWriterStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

bb.f:                                             ; preds = %bb.d
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !1560 ; 10 uses
  %i.o = ptrtoint ptr %i.i to i64                 ; 3 uses
  %i.p = ptrtoint ptr %i.n to i64                 ; 3 uses
  %i.q = sub i64 %i.o, %i.p                       ; 3 uses
  %i.r = icmp eq i64 %i.q, 9223372036854775800
  br i1 %i.r, label %bb.g, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14CSVWriterStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.139) #30
          to label %.noexc4 unwind label %bb.i

.noexc4:                                          ; preds = %bb.g
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14CSVWriterStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.f
  %i.s = ashr exact i64 %i.q, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.s, i64 1)
  %i.t = add nsw i64 %.sroa.speculated.i.i.i.i, %i.s ; 2 uses
  %i.u = icmp ult i64 %i.t, %i.s
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.t, i64 1152921504606846975)
  %i.w = select i1 %i.u, i64 1152921504606846975, i64 %i.v ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.w, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.x = shl nuw nsw i64 %i.w, 3
  %i.y = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #32
          to label %.noexc5 unwind label %bb.i    ; 10 uses

.noexc5:                                          ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14CSVWriterStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.q
  %i.aa = load i64, ptr %1, align 8, !tbaa !1360
  store i64 %i.aa, ptr %i.z, align 8, !tbaa !1360
  store ptr null, ptr %1, align 8, !tbaa !1360
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.n, %i.i
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14CSVWriterStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc5
  %i.ab = sub i64 %i.o, %i.p
  %i.ac = add i64 %i.ab, -8                       ; 2 uses
  %i.ad = lshr i64 %i.ac, 3
  %i.ae = add nuw nsw i64 %i.ad, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ac, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader14, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.af = add i64 %i.o, -8
  %i.ag = sub i64 %i.af, %i.p
  %i.ah = and i64 %i.ag, -8
  %i.ai = add i64 %i.ah, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.y, i64 %i.ai
  %scevgep10 = getelementptr i8, ptr %i.n, i64 %i.ai
  %bound0 = icmp ult ptr %i.y, %scevgep10
  %bound1 = icmp ult ptr %i.n, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader14, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ae, 4611686018427387900     ; 3 uses
  %i.aj = shl i64 %n.vec, 3                       ; 2 uses
  %i.ak = getelementptr i8, ptr %i.y, i64 %i.aj   ; 2 uses
  %i.al = getelementptr i8, ptr %i.n, i64 %i.aj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.am = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.y, i64 %i.am ; 2 uses
  %next.gep11 = getelementptr i8, ptr %i.n, i64 %i.am ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1561)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1564)
  %i.an = getelementptr i8, ptr %next.gep11, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep11, align 8, !tbaa !1360, !alias.scope !1566, !noalias !1561
  %wide.load12 = load <2 x i64>, ptr %i.an, align 8, !tbaa !1360, !alias.scope !1566, !noalias !1561
  %i.ao = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !1360, !alias.scope !1569, !noalias !1566
  store <2 x i64> %wide.load12, ptr %i.ao, align 8, !tbaa !1360, !alias.scope !1569, !noalias !1566
  %i.ap = getelementptr i8, ptr %next.gep11, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep11, align 8, !tbaa !1360, !alias.scope !1566, !noalias !1561
  store <2 x ptr> splat (ptr null), ptr %i.ap, align 8, !tbaa !1360, !alias.scope !1566, !noalias !1561
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !1571

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14CSVWriterStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader14

.lr.ph.i.i.i.i.i.i.i.preheader14:                 ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.y, %vector.memcheck ], [ %i.y, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ak, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.n, %vector.memcheck ], [ %i.n, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.al, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader14, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader14 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader14 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1561)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1564)
  %i.ar = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !1360, !alias.scope !1564, !noalias !1561
  store i64 %i.ar, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !1360, !alias.scope !1561, !noalias !1564
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !1360, !alias.scope !1564, !noalias !1561
  %i.as = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.as, %i.i
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14CSVWriterStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1572

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14CSVWriterStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc5
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.y, %.noexc5 ], [ %i.ak, %middle.block ], [ %i.at, %.lr.ph.i.i.i.i.i.i.i ]
  %i.au = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14CSVWriterStateESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14CSVWriterStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.n) #31
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14CSVWriterStateESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14CSVWriterStateESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.h, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14CSVWriterStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.y, ptr %i.g, align 8, !tbaa !1560
  store ptr %i.au, ptr %i.h, align 8, !tbaa !1546
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.w
  store ptr %i.av, ptr %i.j, align 8, !tbaa !1559
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14CSVWriterStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14CSVWriterStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14CSVWriterStateESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.e
  %i.aw = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #29 ; 0 uses
  ret void

bb.i:                                             ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14CSVWriterStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.g, %.noexc, %bb.c, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.ax = landingpad { ptr, i32 }
          cleanup
  %i.ay = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #29 ; 0 uses
  resume { ptr, i32 } %i.ax
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZN6duckdb19WriteCSVRotateFilesERNS_12FunctionDataERKNS_12optional_idxE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) #7 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !989
  %i.b = icmp ne i64 %i.a, -1
  ret i1 %i.b
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6duckdb22WriteCSVRotateNextFileERNS_18GlobalFunctionDataERNS_12FunctionDataERKNS_12optional_idxE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #0 {
bb.a:
  %i.a = load i64, ptr %2, align 8, !tbaa !989
  %.not = icmp eq i64 %i.a, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = tail call noundef i64 @_ZN6duckdb9CSVWriter8FileSizeEv(ptr noundef nonnull align 8 dereferenceable(1248) %i.b)
  %i.d = tail call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %i.e = icmp ugt i64 %i.c, %i.d
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = phi i1 [ false, %bb.a ], [ %i.e, %bb.b ]
  ret i1 %i.f
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb15CSVCopyFunction16RegisterFunctionERNS_16BuiltinFunctionsE(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %1 = alloca %"class.duckdb::CopyFunction", align 8 ; 28 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.duckdb::TableFunction", align 8 ; 13 uses
  %4 = alloca %"class.duckdb::CopyFunction", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.a, ptr noundef nonnull align 1 dereferenceable(3) @.str.45, i64 3, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 3, ptr %i.b, align 8, !tbaa !25
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 19
  store i8 0, ptr %i.c, align 1, !tbaa !24
  invoke void @_ZN6duckdb12CopyFunctionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(888) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.a unwind label %bb.r

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.d = load ptr, ptr %2, align 8, !tbaa !18     ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  call void @_ZdlPv(ptr noundef %i.d) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 152
  store ptr @_ZN6duckdbL12WriteCSVBindERNS_13ClientContextERNS_21CopyFunctionBindInputERKNS_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaISA_EEERKNS4_INS_11LogicalTypeELb1ESaISF_EEE, ptr %i.f, align 8, !tbaa !1573
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 160
  store ptr @_ZN6duckdbL18CSVListCopyOptionsERNS_13ClientContextERNS_16CopyOptionsInputE, ptr %i.g, align 8, !tbaa !1579
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 168
  store ptr @_ZN6duckdbL23WriteCSVInitializeLocalERNS_16ExecutionContextERNS_12FunctionDataE, ptr %i.h, align 8, !tbaa !1580
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 176
  store ptr @_ZN6duckdbL24WriteCSVInitializeGlobalERNS_13ClientContextERNS_12FunctionDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr %i.i, align 8, !tbaa !1581
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 192
  store ptr @_ZN6duckdbL12WriteCSVSinkERNS_16ExecutionContextERNS_12FunctionDataERNS_18GlobalFunctionDataERNS_17LocalFunctionDataERNS_9DataChunkE, ptr %i.j, align 8, !tbaa !1582
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 200
  store ptr @_ZN6duckdbL15WriteCSVCombineERNS_16ExecutionContextERNS_12FunctionDataERNS_18GlobalFunctionDataERNS_17LocalFunctionDataE, ptr %i.k, align 8, !tbaa !1583
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 208
  store ptr @_ZN6duckdb16WriteCSVFinalizeERNS_13ClientContextERNS_12FunctionDataERNS_18GlobalFunctionDataE, ptr %i.l, align 8, !tbaa !1584
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 216
  store ptr @_ZN6duckdb21WriteCSVExecutionModeEbb, ptr %i.m, align 8, !tbaa !1585
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 232
  store ptr @_ZN6duckdb20WriteCSVPrepareBatchERNS_13ClientContextERNS_12FunctionDataERNS_18GlobalFunctionDataENS_10unique_ptrINS_20ColumnDataCollectionESt14default_deleteIS7_ELb1EEE, ptr %i.n, align 8, !tbaa !1586
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 240
  store ptr @_ZN6duckdb18WriteCSVFlushBatchERNS_13ClientContextERNS_12FunctionDataERNS_18GlobalFunctionDataERNS_17PreparedBatchDataE, ptr %i.o, align 8, !tbaa !1587
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 256
  store ptr @_ZN6duckdb19WriteCSVRotateFilesERNS_12FunctionDataERKNS_12optional_idxE, ptr %i.p, align 8, !tbaa !1588
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 264
  store ptr @_ZN6duckdb22WriteCSVRotateNextFileERNS_18GlobalFunctionDataERNS_12FunctionDataERKNS_12optional_idxE, ptr %i.q, align 8, !tbaa !1589
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 288
  store ptr @_ZN6duckdb17MultiFileFunctionINS_16CSVMultiFileInfoEE17MultiFileBindCopyERNS_13ClientContextERNS_25CopyFromFunctionBindInputERNS_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaISD_EEERNS7_INS_11LogicalTypeELb1ESaISH_EEE, ptr %i.r, align 8, !tbaa !1590
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  invoke void @_ZN6duckdb20ReadCSVTableFunction11GetFunctionEv(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::TableFunction") align 8 %3)
          to label %bb.b unwind label %bb.s

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.t = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN6duckdb14SimpleFunctionaSERKS0_(ptr noundef nonnull align 8 dereferenceable(544) %i.s, ptr noundef nonnull align 8 dereferenceable(544) %3)
          to label %.noexc12 unwind label %bb.t   ; 0 uses

.noexc12:                                         ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 504
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 208
  invoke void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb11LogicalTypeEESaISA_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE18_M_assign_elementsIRKSL_EEvOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.u, ptr noundef nonnull align 8 dereferenceable(56) %i.v)
          to label %.noexc13 unwind label %bb.t

.noexc13:                                         ; preds = %.noexc12
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 560
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 264
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(254) %i.w, ptr noundef nonnull align 8 dereferenceable(254) %i.x, i64 254, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 816
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 520 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 528
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 824
  %i.ac = load <2 x ptr>, ptr %i.z, align 8, !tbaa !166
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i8 0, i64 16, i1 false)
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !42 ; 8 uses
end_hunk_0
begin_hunk_1_@_ZN6duckdb18ReadCSVReplacementERNS_13ClientContextERNS_20ReplacementScanInputENS_12optional_ptrINS_19ReplacementScanDataELb1EEE:bb.a

bb.as:                                            ; preds = %._crit_edge.i.i147
  %i.ee = landingpad { ptr, i32 }
          cleanup
  %i.ef = load ptr, ptr %17, align 8, !tbaa !18   ; 2 uses
  %i.eg = icmp eq ptr %i.ef, %i.dl
  br i1 %i.eg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163: ; preds = %bb.as
  call void @_ZdlPv(ptr noundef %i.ef) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #29
  br label %bb.at

bb.at:                                            ; preds = %bb.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165
  %.pn69.pn = phi { ptr, i32 } [ %i.ee, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165 ], [ %i.ed, %bb.ar ]
  %i.eh = load ptr, ptr %16, align 8, !tbaa !18   ; 2 uses
  %i.ei = icmp eq ptr %i.eh, %i.dh
  br i1 %i.ei, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166: ; preds = %bb.at
  call void @_ZdlPv(ptr noundef %i.eh) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168: ; preds = %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #29
  br label %bb.au

bb.au:                                            ; preds = %bb.aq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168
  %.pn69.pn.pn.pn = phi { ptr, i32 } [ %.pn69.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168 ], [ %i.ec, %bb.aq ]
  %i.ej = load ptr, ptr %15, align 8, !tbaa !18   ; 2 uses
  %i.ek = icmp eq ptr %i.ej, %i.dd
  br i1 %i.ek, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169: ; preds = %bb.au
  call void @_ZdlPv(ptr noundef %i.ej) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171: ; preds = %bb.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #29
  br label %bb.av

bb.av:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171, %bb.ap
  %.pn69.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn69.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171 ], [ %i.eb, %bb.ap ]
  %i.el = load ptr, ptr %14, align 8, !tbaa !18   ; 2 uses
  %i.em = icmp eq ptr %i.el, %i.cz
  br i1 %i.em, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172: ; preds = %bb.av
  call void @_ZdlPv(ptr noundef %i.el) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  br label %bb.cl

bb.aw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !1717)
  %i.en = invoke noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #32
          to label %.noexc175 unwind label %bb.bw ; 3 uses

.noexc175:                                        ; preds = %bb.aw
  invoke void @_ZN6duckdb16TableFunctionRefC1Ev(ptr noundef nonnull align 8 dereferenceable(121) %i.en)
          to label %bb.ay unwind label %bb.ax, !noalias !1717

bb.ax:                                            ; preds = %.noexc175
  %i.eo = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.en) #31, !noalias !1717
  br label %.body

bb.ay:                                            ; preds = %.noexc175
  store ptr %i.en, ptr %18, align 8, !tbaa !1720, !alias.scope !1717
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #29
  %i.ep = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 5 uses
  store ptr %i.ep, ptr %21, align 8, !tbaa !22
  %i.eq = load ptr, ptr %5, align 8, !tbaa !18    ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.es = load i64, ptr %i.er, align 8, !tbaa !25 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 %i.es, ptr %i.a, align 8, !tbaa !23
  %i.et = icmp ugt i64 %i.es, 15
  br i1 %i.et, label %.noexc.i177, label %._crit_edge.i.i176

.noexc.i177:                                      ; preds = %bb.ay
  %i.eu = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc178 unwind label %bb.bx ; 2 uses

.noexc178:                                        ; preds = %.noexc.i177
  store ptr %i.eu, ptr %21, align 8, !tbaa !18
  %i.ev = load i64, ptr %i.a, align 8, !tbaa !23
  store i64 %i.ev, ptr %i.ep, align 8, !tbaa !24
  br label %._crit_edge.i.i176

._crit_edge.i.i176:                               ; preds = %.noexc178, %bb.ay
  %i.ew = phi ptr [ %i.eu, %.noexc178 ], [ %i.ep, %bb.ay ] ; 2 uses
  switch i64 %i.es, label %bb.ba [
    i64 1, label %bb.az
    i64 0, label %bb.bb
  ]

bb.az:                                            ; preds = %._crit_edge.i.i176
  %i.ex = load i8, ptr %i.eq, align 1, !tbaa !24
  store i8 %i.ex, ptr %i.ew, align 1, !tbaa !24
  br label %bb.bb

bb.ba:                                            ; preds = %._crit_edge.i.i176
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ew, ptr align 1 %i.eq, i64 %i.es, i1 false)
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az, %._crit_edge.i.i176
  %i.ey = load i64, ptr %i.a, align 8, !tbaa !23  ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i64 %i.ey, ptr %i.ez, align 8, !tbaa !25
  %i.fa = load ptr, ptr %21, align 8, !tbaa !18
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.ey
  store i8 0, ptr %i.fb, align 1, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  invoke void @_ZN6duckdb5ValueC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %20, ptr noundef nonnull %21)
          to label %bb.bc unwind label %bb.by

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.fc = invoke noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #32
          to label %.noexc179 unwind label %bb.bz ; 6 uses

.noexc179:                                        ; preds = %bb.bc
  call void @_ZN6duckdb5ValueC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) %20) #29, !noalias !1721
  invoke void @_ZN6duckdb18ConstantExpressionC1ENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(120) %i.fc, ptr noundef nonnull %4)
          to label %bb.be unwind label %bb.bd, !noalias !1721

bb.bd:                                            ; preds = %.noexc179
  %i.fd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #29, !noalias !1721
  call void @_ZdlPv(ptr noundef nonnull %i.fc) #31, !noalias !1721
  br label %.body180

bb.be:                                            ; preds = %.noexc179
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #29, !noalias !1721
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.fe = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 4 uses
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !1414 ; 6 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !1417
  %.not.i.i = icmp eq ptr %i.ff, %i.fh
  br i1 %.not.i.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.fi = ptrtoint ptr %i.fc to i64
  store i64 %i.fi, ptr %i.ff, align 8, !tbaa !1048
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  store ptr %i.fj, ptr %i.fe, align 8, !tbaa !1414
  br label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit

bb.bg:                                            ; preds = %bb.be
  %i.fk = load ptr, ptr %19, align 8, !tbaa !1418 ; 10 uses
  %i.fl = ptrtoint ptr %i.ff to i64               ; 3 uses
  %i.fm = ptrtoint ptr %i.fk to i64               ; 3 uses
  %i.fn = sub i64 %i.fl, %i.fm                    ; 3 uses
  %i.fo = icmp eq i64 %i.fn, 9223372036854775800
  br i1 %i.fo, label %bb.bh, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.bh:                                            ; preds = %bb.bg
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.139) #30
          to label %.noexc182 unwind label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit209

.noexc182:                                        ; preds = %bb.bh
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.bg
  %i.fp = ashr exact i64 %i.fn, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.fp, i64 1)
  %i.fq = add nsw i64 %.sroa.speculated.i.i.i.i, %i.fp ; 2 uses
  %i.fr = icmp ult i64 %i.fq, %i.fp
  %i.fs = call i64 @llvm.umin.i64(i64 %i.fq, i64 1152921504606846975)
  %i.ft = select i1 %i.fr, i64 1152921504606846975, i64 %i.fs ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ft, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.fu = shl nuw nsw i64 %i.ft, 3
  %i.fv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fu) #32
          to label %.noexc183 unwind label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit209 ; 10 uses

.noexc183:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.fn
  %i.fx = ptrtoint ptr %i.fc to i64
  store i64 %i.fx, ptr %i.fw, align 8, !tbaa !1048
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.fk, %i.ff
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc183
  %i.fy = sub i64 %i.fl, %i.fm
  %i.fz = add i64 %i.fy, -8                       ; 2 uses
  %i.ga = lshr i64 %i.fz, 3
  %i.gb = add nuw nsw i64 %i.ga, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.fz, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader334, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.gc = add i64 %i.fl, -8
  %i.gd = sub i64 %i.gc, %i.fm
  %i.ge = and i64 %i.gd, -8
  %i.gf = add i64 %i.ge, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.fv, i64 %i.gf
  %scevgep330 = getelementptr i8, ptr %i.fk, i64 %i.gf
  %bound0 = icmp ult ptr %i.fv, %scevgep330
  %bound1 = icmp ult ptr %i.fk, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader334, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.gb, 4611686018427387900     ; 3 uses
  %i.gg = shl i64 %n.vec, 3                       ; 2 uses
  %i.gh = getelementptr i8, ptr %i.fv, i64 %i.gg  ; 2 uses
  %i.gi = getelementptr i8, ptr %i.fk, i64 %i.gg
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gj = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.fv, i64 %i.gj ; 2 uses
  %next.gep331 = getelementptr i8, ptr %i.fk, i64 %i.gj ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1724)
  call void @llvm.experimental.noalias.scope.decl(metadata !1727)
  %i.gk = getelementptr i8, ptr %next.gep331, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep331, align 8, !tbaa !1048, !alias.scope !1729, !noalias !1724
  %wide.load332 = load <2 x i64>, ptr %i.gk, align 8, !tbaa !1048, !alias.scope !1729, !noalias !1724
  %i.gl = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !1048, !alias.scope !1732, !noalias !1729
  store <2 x i64> %wide.load332, ptr %i.gl, align 8, !tbaa !1048, !alias.scope !1732, !noalias !1729
  %i.gm = getelementptr i8, ptr %next.gep331, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep331, align 8, !tbaa !1048, !alias.scope !1729, !noalias !1724
  store <2 x ptr> splat (ptr null), ptr %i.gm, align 8, !tbaa !1048, !alias.scope !1729, !noalias !1724
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gn = icmp eq i64 %index.next, %n.vec
  br i1 %i.gn, label %middle.block, label %vector.body, !llvm.loop !1734

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gb, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader334

.lr.ph.i.i.i.i.i.i.i.preheader334:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.fv, %vector.memcheck ], [ %i.fv, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.gh, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.fk, %vector.memcheck ], [ %i.fk, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.gi, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader334, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.gq, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader334 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.gp, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader334 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1724)
  call void @llvm.experimental.noalias.scope.decl(metadata !1727)
  %i.go = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !1048, !alias.scope !1727, !noalias !1724
  store i64 %i.go, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !1048, !alias.scope !1724, !noalias !1727
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !1048, !alias.scope !1727, !noalias !1724
  %i.gp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.gp, %i.ff
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1735

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc183
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.fv, %.noexc183 ], [ %i.gh, %middle.block ], [ %i.gq, %.lr.ph.i.i.i.i.i.i.i ]
  %i.gr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.fk, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.bi

bb.bi:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.fk) #31
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.bi, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.fv, ptr %19, align 8, !tbaa !1418
  store ptr %i.gr, ptr %i.fe, align 8, !tbaa !1414
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %i.ft
  store ptr %i.gs, ptr %i.fg, align 8, !tbaa !1417
  br label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.bf
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %20) #29
  %i.gt = load ptr, ptr %21, align 8, !tbaa !18   ; 2 uses
  %i.gu = icmp eq ptr %i.gt, %i.ep
  br i1 %i.gu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186: ; preds = %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.gt) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188: ; preds = %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #29
  invoke void @_ZN6duckdb9make_uniqINS_18FunctionExpressionEJRA14_KcNS_6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS7_ELb1EEELb1ESaISA_EEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.1088") align 8 %22, ptr noundef nonnull align 1 dereferenceable(14) @.str.87, ptr noundef nonnull align 8 dereferenceable(24) %19)
          to label %bb.bj unwind label %bb.cb

bb.bj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188
  %i.gv = load ptr, ptr %22, align 8, !tbaa !1736 ; 4 uses
  store ptr null, ptr %22, align 8, !tbaa !1736
  %i.gw = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_16TableFunctionRefESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %bb.bk unwind label %bb.cc

bb.bk:                                            ; preds = %bb.bj
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 104 ; 2 uses
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !1048 ; 3 uses
  store ptr %i.gv, ptr %i.gx, align 8, !tbaa !1048
  %.not.i.i.i.i.i = icmp eq ptr %i.gy, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit191, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.bk
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !48
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %i.hb = load ptr, ptr %i.ha, align 8
  call void %i.hb(ptr noundef nonnull align 8 dereferenceable(56) %i.gy) #29, !inline_history !1738
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit191

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit191: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i, %bb.bk
  %i.hc = load ptr, ptr %22, align 8, !tbaa !1736 ; 3 uses
  %.not.i192 = icmp eq ptr %i.hc, null
  br i1 %.not.i192, label %_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb18FunctionExpressionEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb18FunctionExpressionEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit191
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !48
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  %i.hf = load ptr, ptr %i.he, align 8
  call void %i.hf(ptr noundef nonnull align 8 dereferenceable(209) %i.hc) #29, !inline_history !1739
  br label %_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit191, %_ZNKSt14default_deleteIN6duckdb18FunctionExpressionEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #29
  %i.hg = invoke noundef zeroext i1 @_ZN6duckdb10FileSystem7HasGlobERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.bl unwind label %bb.cd

bb.bl:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit
  br i1 %i.hg, label %bb.ch, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.hh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb10FileSystem13GetFileSystemERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(512) %1)
          to label %bb.bn unwind label %bb.ce

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #29
  invoke void @_ZN6duckdb10FileSystem15ExtractBaseNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %23, ptr noundef nonnull align 8 dereferenceable(8) %i.hh, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.bo unwind label %bb.cf

bb.bo:                                            ; preds = %bb.bn
  %i.hi = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_16TableFunctionRefESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %bb.bp unwind label %bb.cg     ; 5 uses

bb.bp:                                            ; preds = %bb.bo
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 16 ; 5 uses
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !18 ; 6 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hi, i64 32 ; 2 uses
  %i.hm = icmp eq ptr %i.hk, %i.hl
  %i.hn = load ptr, ptr %23, align 8, !tbaa !18   ; 6 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 4 uses
  %i.hp = icmp eq ptr %i.hn, %i.ho                ; 2 uses
  br i1 %i.hm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i198, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i193

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i198: ; preds = %bb.bp
  br i1 %i.hp, label %bb.bq, label %.thread.i199

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i193: ; preds = %bb.bp
  br i1 %i.hp, label %bb.bq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i194

bb.bq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i193, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i198
  %i.hq = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 2 uses
  %i.hr = load i64, ptr %i.hq, align 8, !tbaa !25 ; 3 uses
  %i.hs = icmp ult i64 %i.hr, 16
  call void @llvm.assume(i1 %i.hs)
  %.not21.i = icmp eq ptr %23, %i.hj
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit200, label %bb.br, !prof !51

bb.br:                                            ; preds = %bb.bq
  switch i64 %i.hr, label %bb.bt [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i196
    i64 1, label %bb.bs
  ]

bb.bs:                                            ; preds = %bb.br
  %i.ht = load i8, ptr %i.hn, align 1, !tbaa !24
  store i8 %i.ht, ptr %i.hk, align 1, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i196

bb.bt:                                            ; preds = %bb.br
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hk, ptr align 1 %i.hn, i64 %i.hr, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i196

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i196: ; preds = %bb.bt, %bb.bs, %bb.br
  %i.hu = load i64, ptr %i.hq, align 8, !tbaa !25 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hi, i64 24
  store i64 %i.hu, ptr %i.hv, align 8, !tbaa !25
  %i.hw = load ptr, ptr %i.hj, align 8, !tbaa !18
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 %i.hu
  store i8 0, ptr %i.hx, align 1, !tbaa !24
  %.pre.i197 = load ptr, ptr %23, align 8, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit200

.thread.i199:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i198
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hi, i64 24
end_hunk_1
begin_hunk_2_@_ZN6duckdb23ReadDuckDBTableFunction15ReplacementScanERNS_13ClientContextERNS_20ReplacementScanInputENS_12optional_ptrINS_19ReplacementScanDataELb1EEE:bb.a
  br label %bb.p

bb.p:                                             ; preds = %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167 ], [ %i.ba, %bb.l ]
  %i.bh = load ptr, ptr %10, align 8, !tbaa !18   ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.s
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168: ; preds = %bb.p
  call void @_ZdlPv(ptr noundef %i.bh) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  br label %bb.q

bb.q:                                             ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170 ], [ %i.az, %bb.k ]
  %i.bj = load ptr, ptr %9, align 8, !tbaa !18    ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.o
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171: ; preds = %bb.q
  call void @_ZdlPv(ptr noundef %i.bj) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  br label %bb.r

bb.r:                                             ; preds = %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173
  %.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173 ], [ %i.ay, %bb.j ]
  %i.bl = load ptr, ptr %8, align 8, !tbaa !18    ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.k
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174: ; preds = %bb.r
  call void @_ZdlPv(ptr noundef %i.bl) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  br label %bb.s

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176, %bb.i
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176 ], [ %i.ax, %bb.i ]
  %i.bn = load ptr, ptr %7, align 8, !tbaa !18    ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.g
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177: ; preds = %bb.s
  call void @_ZdlPv(ptr noundef %i.bn) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %bb.bi

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !1773)
  %i.bp = invoke noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #32
          to label %.noexc180 unwind label %bb.at ; 3 uses

.noexc180:                                        ; preds = %bb.t
  invoke void @_ZN6duckdb16TableFunctionRefC1Ev(ptr noundef nonnull align 8 dereferenceable(121) %i.bp)
          to label %bb.v unwind label %bb.u, !noalias !1773

bb.u:                                             ; preds = %.noexc180
  %i.bq = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.bp) #31, !noalias !1773
  br label %.body

bb.v:                                             ; preds = %.noexc180
  store ptr %i.bp, ptr %13, align 8, !tbaa !1720, !alias.scope !1773
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #29
  %i.br = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 5 uses
  store ptr %i.br, ptr %16, align 8, !tbaa !22
  %i.bs = load ptr, ptr %5, align 8, !tbaa !18    ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !25 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 %i.bu, ptr %i.a, align 8, !tbaa !23
  %i.bv = icmp ugt i64 %i.bu, 15
  br i1 %i.bv, label %.noexc.i182, label %._crit_edge.i.i181

.noexc.i182:                                      ; preds = %bb.v
  %i.bw = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc183 unwind label %bb.au ; 2 uses

.noexc183:                                        ; preds = %.noexc.i182
  store ptr %i.bw, ptr %16, align 8, !tbaa !18
  %i.bx = load i64, ptr %i.a, align 8, !tbaa !23
  store i64 %i.bx, ptr %i.br, align 8, !tbaa !24
  br label %._crit_edge.i.i181

._crit_edge.i.i181:                               ; preds = %.noexc183, %bb.v
  %i.by = phi ptr [ %i.bw, %.noexc183 ], [ %i.br, %bb.v ] ; 2 uses
  switch i64 %i.bu, label %bb.x [
    i64 1, label %bb.w
    i64 0, label %bb.y
  ]

bb.w:                                             ; preds = %._crit_edge.i.i181
  %i.bz = load i8, ptr %i.bs, align 1, !tbaa !24
  store i8 %i.bz, ptr %i.by, align 1, !tbaa !24
  br label %bb.y

bb.x:                                             ; preds = %._crit_edge.i.i181
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.by, ptr align 1 %i.bs, i64 %i.bu, i1 false)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %._crit_edge.i.i181
  %i.ca = load i64, ptr %i.a, align 8, !tbaa !23  ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 %i.ca, ptr %i.cb, align 8, !tbaa !25
  %i.cc = load ptr, ptr %16, align 8, !tbaa !18
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.ca
  store i8 0, ptr %i.cd, align 1, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  invoke void @_ZN6duckdb5ValueC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %15, ptr noundef nonnull %16)
          to label %bb.z unwind label %bb.av

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.ce = invoke noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #32
          to label %.noexc184 unwind label %bb.aw ; 6 uses

.noexc184:                                        ; preds = %bb.z
  call void @_ZN6duckdb5ValueC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) %15) #29, !noalias !1776
  invoke void @_ZN6duckdb18ConstantExpressionC1ENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(120) %i.ce, ptr noundef nonnull %4)
          to label %bb.ab unwind label %bb.aa, !noalias !1776

bb.aa:                                            ; preds = %.noexc184
  %i.cf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #29, !noalias !1776
  call void @_ZdlPv(ptr noundef nonnull %i.ce) #31, !noalias !1776
  br label %.body185

bb.ab:                                            ; preds = %.noexc184
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #29, !noalias !1776
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.cg = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 4 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !1414 ; 6 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !1417
  %.not.i.i = icmp eq ptr %i.ch, %i.cj
  br i1 %.not.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ck = ptrtoint ptr %i.ce to i64
  store i64 %i.ck, ptr %i.ch, align 8, !tbaa !1048
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store ptr %i.cl, ptr %i.cg, align 8, !tbaa !1414
  br label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit

bb.ad:                                            ; preds = %bb.ab
  %i.cm = load ptr, ptr %14, align 8, !tbaa !1418 ; 10 uses
  %i.cn = ptrtoint ptr %i.ch to i64               ; 3 uses
  %i.co = ptrtoint ptr %i.cm to i64               ; 3 uses
  %i.cp = sub i64 %i.cn, %i.co                    ; 3 uses
  %i.cq = icmp eq i64 %i.cp, 9223372036854775800
  br i1 %i.cq, label %bb.ae, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.139) #30
          to label %.noexc187 unwind label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit206

.noexc187:                                        ; preds = %bb.ae
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ad
  %i.cr = ashr exact i64 %i.cp, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.cr, i64 1)
  %i.cs = add nsw i64 %.sroa.speculated.i.i.i.i, %i.cr ; 2 uses
  %i.ct = icmp ult i64 %i.cs, %i.cr
  %i.cu = call i64 @llvm.umin.i64(i64 %i.cs, i64 1152921504606846975)
  %i.cv = select i1 %i.ct, i64 1152921504606846975, i64 %i.cu ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.cv, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.cw = shl nuw nsw i64 %i.cv, 3
  %i.cx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cw) #32
          to label %.noexc188 unwind label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit206 ; 10 uses

.noexc188:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.cp
  %i.cz = ptrtoint ptr %i.ce to i64
  store i64 %i.cz, ptr %i.cy, align 8, !tbaa !1048
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.cm, %i.ch
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc188
  %i.da = sub i64 %i.cn, %i.co
  %i.db = add i64 %i.da, -8                       ; 2 uses
  %i.dc = lshr i64 %i.db, 3
  %i.dd = add nuw nsw i64 %i.dc, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.db, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader329, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.de = add i64 %i.cn, -8
  %i.df = sub i64 %i.de, %i.co
  %i.dg = and i64 %i.df, -8
  %i.dh = add i64 %i.dg, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.cx, i64 %i.dh
  %scevgep325 = getelementptr i8, ptr %i.cm, i64 %i.dh
  %bound0 = icmp ult ptr %i.cx, %scevgep325
  %bound1 = icmp ult ptr %i.cm, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader329, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dd, 4611686018427387900     ; 3 uses
  %i.di = shl i64 %n.vec, 3                       ; 2 uses
  %i.dj = getelementptr i8, ptr %i.cx, i64 %i.di  ; 2 uses
  %i.dk = getelementptr i8, ptr %i.cm, i64 %i.di
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dl = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cx, i64 %i.dl ; 2 uses
  %next.gep326 = getelementptr i8, ptr %i.cm, i64 %i.dl ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1779)
  call void @llvm.experimental.noalias.scope.decl(metadata !1782)
  %i.dm = getelementptr i8, ptr %next.gep326, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep326, align 8, !tbaa !1048, !alias.scope !1784, !noalias !1779
  %wide.load327 = load <2 x i64>, ptr %i.dm, align 8, !tbaa !1048, !alias.scope !1784, !noalias !1779
  %i.dn = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !1048, !alias.scope !1787, !noalias !1784
  store <2 x i64> %wide.load327, ptr %i.dn, align 8, !tbaa !1048, !alias.scope !1787, !noalias !1784
  %i.do = getelementptr i8, ptr %next.gep326, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep326, align 8, !tbaa !1048, !alias.scope !1784, !noalias !1779
  store <2 x ptr> splat (ptr null), ptr %i.do, align 8, !tbaa !1048, !alias.scope !1784, !noalias !1779
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dp = icmp eq i64 %index.next, %n.vec
  br i1 %i.dp, label %middle.block, label %vector.body, !llvm.loop !1789

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dd, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader329

.lr.ph.i.i.i.i.i.i.i.preheader329:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.cx, %vector.memcheck ], [ %i.cx, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.dj, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.cm, %vector.memcheck ], [ %i.cm, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.dk, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader329, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.ds, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader329 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.dr, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader329 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1779)
  call void @llvm.experimental.noalias.scope.decl(metadata !1782)
  %i.dq = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !1048, !alias.scope !1782, !noalias !1779
  store i64 %i.dq, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !1048, !alias.scope !1779, !noalias !1782
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !1048, !alias.scope !1782, !noalias !1779
  %i.dr = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.dr, %i.ch
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1790

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc188
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.cx, %.noexc188 ], [ %i.dj, %middle.block ], [ %i.ds, %.lr.ph.i.i.i.i.i.i.i ]
  %i.dt = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.cm, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.cm) #31
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.af, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.cx, ptr %14, align 8, !tbaa !1418
  store ptr %i.dt, ptr %i.cg, align 8, !tbaa !1414
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.cv
  store ptr %i.du, ptr %i.ci, align 8, !tbaa !1417
  br label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.ac
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %15) #29
  %i.dv = load ptr, ptr %16, align 8, !tbaa !18   ; 2 uses
  %i.dw = icmp eq ptr %i.dv, %i.br
  br i1 %i.dw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190: ; preds = %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.dv) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192: ; preds = %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #29
  invoke void @_ZN6duckdb9make_uniqINS_18FunctionExpressionEJRA12_KcNS_6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS7_ELb1EEELb1ESaISA_EEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.1088") align 8 %17, ptr noundef nonnull align 1 dereferenceable(12) @.str.116, ptr noundef nonnull align 8 dereferenceable(24) %14)
          to label %bb.ag unwind label %bb.ay

bb.ag:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192
  %i.dx = load ptr, ptr %17, align 8, !tbaa !1736 ; 4 uses
  store ptr null, ptr %17, align 8, !tbaa !1736
  %i.dy = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_16TableFunctionRefESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.ah unwind label %bb.az

bb.ah:                                            ; preds = %bb.ag
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 104 ; 2 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !1048 ; 3 uses
  store ptr %i.dx, ptr %i.dz, align 8, !tbaa !1048
  %.not.i.i.i.i.i = icmp eq ptr %i.ea, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit195, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.ah
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !48
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8
  call void %i.ed(ptr noundef nonnull align 8 dereferenceable(56) %i.ea) #29, !inline_history !1738
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit195

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit195: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i, %bb.ah
  %i.ee = load ptr, ptr %17, align 8, !tbaa !1736 ; 3 uses
  %.not.i196 = icmp eq ptr %i.ee, null
  br i1 %.not.i196, label %_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb18FunctionExpressionEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb18FunctionExpressionEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit195
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !48
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8
  call void %i.eh(ptr noundef nonnull align 8 dereferenceable(209) %i.ee) #29, !inline_history !1739
  br label %_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit195, %_ZNKSt14default_deleteIN6duckdb18FunctionExpressionEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #29
  %i.ei = invoke noundef zeroext i1 @_ZN6duckdb10FileSystem7HasGlobERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.ai unwind label %bb.ba

bb.ai:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit
  br i1 %i.ei, label %bb.be, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ej = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb10FileSystem13GetFileSystemERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(512) %1)
          to label %bb.ak unwind label %bb.bb

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #29
  invoke void @_ZN6duckdb10FileSystem15ExtractBaseNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr noundef nonnull align 8 dereferenceable(8) %i.ej, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.al unwind label %bb.bc

bb.al:                                            ; preds = %bb.ak
  %i.ek = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_16TableFunctionRefESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.am unwind label %bb.bd     ; 5 uses

bb.am:                                            ; preds = %bb.al
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 16 ; 5 uses
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !18 ; 6 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 32 ; 2 uses
  %i.eo = icmp eq ptr %i.em, %i.en
  %i.ep = load ptr, ptr %18, align 8, !tbaa !18   ; 6 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 4 uses
  %i.er = icmp eq ptr %i.ep, %i.eq                ; 2 uses
  br i1 %i.eo, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.am
  br i1 %i.er, label %bb.an, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.am
  br i1 %i.er, label %bb.an, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.an:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.es = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.et = load i64, ptr %i.es, align 8, !tbaa !25 ; 3 uses
  %i.eu = icmp ult i64 %i.et, 16
  call void @llvm.assume(i1 %i.eu)
  %.not21.i = icmp eq ptr %18, %i.el
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.ao, !prof !51

bb.ao:                                            ; preds = %bb.an
  switch i64 %i.et, label %bb.aq [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.ap
  ]

bb.ap:                                            ; preds = %bb.ao
  %i.ev = load i8, ptr %i.ep, align 1, !tbaa !24
  store i8 %i.ev, ptr %i.em, align 1, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.aq:                                            ; preds = %bb.ao
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.em, ptr align 1 %i.ep, i64 %i.et, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.aq, %bb.ap, %bb.ao
  %i.ew = load i64, ptr %i.es, align 8, !tbaa !25 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ek, i64 24
  store i64 %i.ew, ptr %i.ex, align 8, !tbaa !25
  %i.ey = load ptr, ptr %i.el, align 8, !tbaa !18
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.ew
  store i8 0, ptr %i.ez, align 1, !tbaa !24
  %.pre.i = load ptr, ptr %18, align 8, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ek, i64 24
end_hunk_2
begin_hunk_3_@_ZN6duckdbL10UnnestBindERNS_13ClientContextERNS_22TableFunctionBindInputERNS_6vectorINS_11LogicalTypeELb1ESaIS5_EEERNS4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaISE_EEE:bb.a
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.aq) #31, !noalias !2590
  br label %common.resume

_ZNSt10unique_ptrIN6duckdb14UnnestBindDataESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6duckdb14UnnestBindDataE, i64 16), ptr %i.aq, align 8, !tbaa !48, !noalias !2590
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  call void @_ZN6duckdb11LogicalTypeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %5) #29, !noalias !2590, !inline_history !2593
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #29, !noalias !2590
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  store ptr %i.aq, ptr %0, align 8, !tbaa !149
  ret void

bb.o:                                             ; preds = %bb.m
  %i.at = landingpad { ptr, i32 }
          cleanup
  %i.au = load ptr, ptr %8, align 8, !tbaa !18    ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.z
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %bb.o
  call void @_ZdlPv(ptr noundef %i.au) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  br label %common.resume

bb.p:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdbL10UnnestInitERNS_13ClientContextERNS_22TableFunctionInitInputE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr.559") align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(104) %2) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.duckdb::LogicalType", align 8 ; 6 uses
  %4 = alloca %"struct.duckdb::LogicalType", align 8 ; 6 uses
  %5 = alloca %"class.duckdb::unique_ptr.2905", align 8 ; 10 uses
  %6 = alloca %"class.duckdb::unique_ptr.2914", align 8 ; 11 uses
  tail call void @_ZNK6duckdb12optional_ptrIKNS_12FunctionDataELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %i.a = load ptr, ptr %2, align 8, !tbaa !255
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2594)
  %i.b = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #32, !noalias !2594 ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb17UnnestGlobalStateE, i64 16), ptr %i.b, align 8, !tbaa !48, !noalias !2594
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false), !noalias !2594
  store ptr %i.b, ptr %5, align 8, !tbaa !2597, !alias.scope !2594
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.e = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #32
          to label %.noexc unwind label %bb.r     ; 7 uses

.noexc:                                           ; preds = %bb.a
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.b unwind label %bb.c, !noalias !2599

bb.b:                                             ; preds = %.noexc
  invoke void @_ZN6duckdb24BoundReferenceExpressionC1ENS_11LogicalTypeEm(ptr noundef nonnull align 8 dereferenceable(96) %i.e, ptr noundef nonnull %4, i64 noundef 0)
          to label %bb.f unwind label %bb.d, !noalias !2599

bb.c:                                             ; preds = %.noexc
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #29, !noalias !2599
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn.i = phi { ptr, i32 } [ %i.g, %bb.d ], [ %i.f, %bb.c ]
  call void @_ZdlPv(ptr noundef nonnull %i.e) #31, !noalias !2599
  br label %_ZNKSt14default_deleteIN6duckdb17UnnestGlobalStateEEclEPS1_.exit.i35

bb.f:                                             ; preds = %bb.b
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #29, !noalias !2599
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  %i.h = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb8ListType12GetChildTypeERKNS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.g unwind label %bb.s

bb.g:                                             ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !2602)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.i = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #32
          to label %.noexc11 unwind label %bb.s   ; 3 uses

.noexc11:                                         ; preds = %bb.g
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.h unwind label %bb.i, !noalias !2602

bb.h:                                             ; preds = %.noexc11
  invoke void @_ZN6duckdb21BoundUnnestExpressionC1ENS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(96) %i.i, ptr noundef nonnull %3)
          to label %bb.l unwind label %bb.j, !noalias !2602

bb.i:                                             ; preds = %.noexc11
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #29, !noalias !2602
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn.i10 = phi { ptr, i32 } [ %i.k, %bb.j ], [ %i.j, %bb.i ]
  call void @_ZdlPv(ptr noundef nonnull %i.i) #31, !noalias !2602
  br label %_ZNKSt14default_deleteIN6duckdb24BoundReferenceExpressionEEclEPS1_.exit.i32

bb.l:                                             ; preds = %bb.h
  store ptr %i.i, ptr %6, align 8, !tbaa !2605, !alias.scope !2602
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #29, !noalias !2602
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.l = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_21BoundUnnestExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.m unwind label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit24

bb.m:                                             ; preds = %bb.l
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 88 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1063 ; 3 uses
  store ptr %i.e, ptr %i.m, align 8, !tbaa !1063
  %.not.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !48
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(88) %i.n) #29, !inline_history !2607
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i, %bb.m
  %i.r = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_17UnnestGlobalStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.n unwind label %bb.t       ; 3 uses

bb.n:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.t = load ptr, ptr %6, align 8, !tbaa !2605   ; 5 uses
  store ptr null, ptr %6, align 8, !tbaa !2605
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1391 ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1542
  %.not.i.i = icmp eq ptr %i.v, %i.x
  br i1 %.not.i.i, label %bb.o, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit18.thread

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit18.thread: ; preds = %bb.n
  %i.y = ptrtoint ptr %i.t to i64
  store i64 %i.y, ptr %i.v, align 8, !tbaa !1063
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.z, ptr %i.u, align 8, !tbaa !1391
  %i.aa = load ptr, ptr %5, align 8, !tbaa !2597
  store ptr %i.aa, ptr %0, align 8, !tbaa !270
  br label %_ZNSt10unique_ptrIN6duckdb24BoundReferenceExpressionESt14default_deleteIS1_EED2Ev.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !1390 ; 10 uses
  %i.ac = ptrtoint ptr %i.v to i64                ; 3 uses
  %i.ad = ptrtoint ptr %i.ab to i64               ; 3 uses
  %i.ae = sub i64 %i.ac, %i.ad                    ; 3 uses
  %i.af = icmp eq i64 %i.ae, 9223372036854775800
  br i1 %i.af, label %bb.p, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.139) #30
          to label %.noexc14 unwind label %bb.u

.noexc14:                                         ; preds = %bb.p
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.o
  %i.ag = ashr exact i64 %i.ae, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ag, i64 1)
  %i.ah = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ag ; 2 uses
  %i.ai = icmp ult i64 %i.ah, %i.ag
  %i.aj = call i64 @llvm.umin.i64(i64 %i.ah, i64 1152921504606846975)
  %i.ak = select i1 %i.ai, i64 1152921504606846975, i64 %i.aj ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ak, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.al = shl nuw nsw i64 %i.ak, 3
  %i.am = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.al) #32
          to label %.noexc15 unwind label %bb.u   ; 10 uses

.noexc15:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ae
  %i.ao = ptrtoint ptr %i.t to i64
  store i64 %i.ao, ptr %i.an, align 8, !tbaa !1063
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.ab, %i.v
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc15
  %i.ap = sub i64 %i.ac, %i.ad
  %i.aq = add i64 %i.ap, -8                       ; 2 uses
  %i.ar = lshr i64 %i.aq, 3
  %i.as = add nuw nsw i64 %i.ar, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aq, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader68, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.at = add i64 %i.ac, -8
  %i.au = sub i64 %i.at, %i.ad
  %i.av = and i64 %i.au, -8
  %i.aw = add i64 %i.av, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.am, i64 %i.aw
  %scevgep64 = getelementptr i8, ptr %i.ab, i64 %i.aw
  %bound0 = icmp ult ptr %i.am, %scevgep64
  %bound1 = icmp ult ptr %i.ab, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader68, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.as, 4611686018427387900     ; 3 uses
  %i.ax = shl i64 %n.vec, 3                       ; 2 uses
  %i.ay = getelementptr i8, ptr %i.am, i64 %i.ax  ; 2 uses
  %i.az = getelementptr i8, ptr %i.ab, i64 %i.ax
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ba = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.am, i64 %i.ba ; 2 uses
  %next.gep65 = getelementptr i8, ptr %i.ab, i64 %i.ba ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2608)
  call void @llvm.experimental.noalias.scope.decl(metadata !2611)
  %i.bb = getelementptr i8, ptr %next.gep65, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep65, align 8, !tbaa !1063, !alias.scope !2613, !noalias !2608
  %wide.load66 = load <2 x i64>, ptr %i.bb, align 8, !tbaa !1063, !alias.scope !2613, !noalias !2608
  %i.bc = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !1063, !alias.scope !2616, !noalias !2613
  store <2 x i64> %wide.load66, ptr %i.bc, align 8, !tbaa !1063, !alias.scope !2616, !noalias !2613
  %i.bd = getelementptr i8, ptr %next.gep65, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep65, align 8, !tbaa !1063, !alias.scope !2613, !noalias !2608
  store <2 x ptr> splat (ptr null), ptr %i.bd, align 8, !tbaa !1063, !alias.scope !2613, !noalias !2608
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !2618

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader68

.lr.ph.i.i.i.i.i.i.i.preheader68:                 ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.am, %vector.memcheck ], [ %i.am, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ay, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.ab, %vector.memcheck ], [ %i.ab, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.az, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader68, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.bh, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader68 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bg, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader68 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2608)
  call void @llvm.experimental.noalias.scope.decl(metadata !2611)
  %i.bf = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !1063, !alias.scope !2611, !noalias !2608
  store i64 %i.bf, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !1063, !alias.scope !2608, !noalias !2611
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !1063, !alias.scope !2611, !noalias !2608
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bg, %i.v
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !2619

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc15
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.am, %.noexc15 ], [ %i.ay, %middle.block ], [ %i.bh, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i23.i.i.i, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit18, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ab) #31
  %.pre.pre = load ptr, ptr %6, align 8, !tbaa !2605
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit18

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit18: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, %bb.q
  %.pre = phi ptr [ %.pre.pre, %bb.q ], [ null, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i ] ; 3 uses
  store ptr %i.am, ptr %i.s, align 8, !tbaa !1390
  store ptr %i.bi, ptr %i.u, align 8, !tbaa !1391
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.ak
  store ptr %i.bj, ptr %i.w, align 8, !tbaa !1542
  %i.bk = load ptr, ptr %5, align 8, !tbaa !2597
  store ptr null, ptr %5, align 8, !tbaa !2597
  store ptr %i.bk, ptr %0, align 8, !tbaa !270
  %.not.i19 = icmp eq ptr %.pre, null
  br i1 %.not.i19, label %_ZNSt10unique_ptrIN6duckdb24BoundReferenceExpressionESt14default_deleteIS1_EED2Ev.exit.thread, label %_ZNSt10unique_ptrIN6duckdb24BoundReferenceExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb24BoundReferenceExpressionESt14default_deleteIS1_EED2Ev.exit.thread: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit18.thread, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br label %_ZNSt10unique_ptrIN6duckdb17UnnestGlobalStateESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb24BoundReferenceExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit18
  %i.bl = load ptr, ptr %.pre, align 8, !tbaa !48
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(96) %.pre) #29, !inline_history !2620
  %.pr = load ptr, ptr %5, align 8, !tbaa !2597   ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  %.not.i21 = icmp eq ptr %.pr, null
  br i1 %.not.i21, label %_ZNSt10unique_ptrIN6duckdb17UnnestGlobalStateESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb17UnnestGlobalStateEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb17UnnestGlobalStateEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb24BoundReferenceExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.bo = load ptr, ptr %.pr, align 8, !tbaa !48
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8
  call void %i.bq(ptr noundef nonnull align 8 dereferenceable(32) %.pr) #29, !inline_history !2621
  br label %_ZNSt10unique_ptrIN6duckdb17UnnestGlobalStateESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb17UnnestGlobalStateESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb24BoundReferenceExpressionESt14default_deleteIS1_EED2Ev.exit.thread, %_ZNSt10unique_ptrIN6duckdb24BoundReferenceExpressionESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb17UnnestGlobalStateEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  ret void

bb.r:                                             ; preds = %bb.a
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIN6duckdb17UnnestGlobalStateEEclEPS1_.exit.i35

bb.s:                                             ; preds = %bb.g, %bb.f
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIN6duckdb24BoundReferenceExpressionEEclEPS1_.exit.i32

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit24: ; preds = %bb.l
  %i.bt = landingpad { ptr, i32 }
          cleanup
  %i.bu = load ptr, ptr %i.e, align 8, !tbaa !48
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr noundef nonnull align 8 dereferenceable(88) %i.e) #29, !inline_history !1543
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit27

bb.t:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit27

bb.u:                                             ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.p
  %i.by = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i25 = icmp eq ptr %i.t, null
  br i1 %.not.i25, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit27, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i26

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i26: ; preds = %bb.u
  %i.bz = load ptr, ptr %i.t, align 8, !tbaa !48
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8
  call void %i.cb(ptr noundef nonnull align 8 dereferenceable(88) %i.t) #29, !inline_history !1543
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit27

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit27: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i26, %bb.u, %bb.t, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit24
  %.pn = phi { ptr, i32 } [ %i.bt, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit24 ], [ %i.bx, %bb.t ], [ %i.by, %bb.u ], [ %i.by, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i26 ] ; 2 uses
  %i.cc = load ptr, ptr %6, align 8, !tbaa !2605  ; 3 uses
  %.not.i28 = icmp eq ptr %i.cc, null
  br i1 %.not.i28, label %.body, label %_ZNKSt14default_deleteIN6duckdb21BoundUnnestExpressionEEclEPS1_.exit.i29

_ZNKSt14default_deleteIN6duckdb21BoundUnnestExpressionEEclEPS1_.exit.i29: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit27
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !48
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8
  call void %i.cf(ptr noundef nonnull align 8 dereferenceable(96) %i.cc) #29, !inline_history !2620
  br label %.body

_ZNKSt14default_deleteIN6duckdb24BoundReferenceExpressionEEclEPS1_.exit.i32: ; preds = %bb.k, %bb.s
  %.pn.pn = phi { ptr, i32 } [ %.pn.i10, %bb.k ], [ %i.bs, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  %i.cg = load ptr, ptr %i.e, align 8, !tbaa !48
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8
  call void %i.ci(ptr noundef nonnull align 8 dereferenceable(96) %i.e) #29, !inline_history !1431
  br label %_ZNKSt14default_deleteIN6duckdb17UnnestGlobalStateEEclEPS1_.exit.i35

.body:                                            ; preds = %_ZNKSt14default_deleteIN6duckdb21BoundUnnestExpressionEEclEPS1_.exit.i29, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  %.pre50 = load ptr, ptr %5, align 8, !tbaa !2597 ; 2 uses
  %.not.i34 = icmp eq ptr %.pre50, null
  br i1 %.not.i34, label %_ZNSt10unique_ptrIN6duckdb17UnnestGlobalStateESt14default_deleteIS1_EED2Ev.exit36, label %_ZNKSt14default_deleteIN6duckdb17UnnestGlobalStateEEclEPS1_.exit.i35

_ZNKSt14default_deleteIN6duckdb17UnnestGlobalStateEEclEPS1_.exit.i35: ; preds = %_ZNKSt14default_deleteIN6duckdb24BoundReferenceExpressionEEclEPS1_.exit.i32, %bb.r, %bb.e, %.body
  %.pn.pn.pn62 = phi { ptr, i32 } [ %.pn, %.body ], [ %.pn.pn, %_ZNKSt14default_deleteIN6duckdb24BoundReferenceExpressionEEclEPS1_.exit.i32 ], [ %i.br, %bb.r ], [ %.pn.i, %bb.e ]
  %i.cj = phi ptr [ %.pre50, %.body ], [ %i.b, %_ZNKSt14default_deleteIN6duckdb24BoundReferenceExpressionEEclEPS1_.exit.i32 ], [ %i.b, %bb.r ], [ %i.b, %bb.e ] ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !48
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8
  call void %i.cm(ptr noundef nonnull align 8 dereferenceable(32) %i.cj) #29, !inline_history !2621
  br label %_ZNSt10unique_ptrIN6duckdb17UnnestGlobalStateESt14default_deleteIS1_EED2Ev.exit36

_ZNSt10unique_ptrIN6duckdb17UnnestGlobalStateESt14default_deleteIS1_EED2Ev.exit36: ; preds = %.body, %_ZNKSt14default_deleteIN6duckdb17UnnestGlobalStateEEclEPS1_.exit.i35
  %.pn.pn.pn63 = phi { ptr, i32 } [ %.pn, %.body ], [ %.pn.pn.pn62, %_ZNKSt14default_deleteIN6duckdb17UnnestGlobalStateEEclEPS1_.exit.i35 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  resume { ptr, i32 } %.pn.pn.pn63
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdbL15UnnestLocalInitERNS_16ExecutionContextERNS_22TableFunctionInitInputEPNS_24GlobalTableFunctionStateE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr.587") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr nofree nonnull readnone align 8 captures(none) %2, ptr noundef %3) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.duckdb::unique_ptr.2927", align 8 ; 7 uses
  %5 = alloca %"class.duckdb::unique_ptr.2936", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2622)
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #32, !noalias !2622 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb16UnnestLocalStateE, i64 16), ptr %i.a, align 8, !tbaa !48, !noalias !2622
end_hunk_3
begin_hunk_4_@_ZN6duckdb17MultiFileFunctionINS_16CSVMultiFileInfoEE19MultiFileInitGlobalERNS_13ClientContextERNS_22TableFunctionInitInputE:bb.a

bb.as:                                            ; preds = %bb.ar
  %i.fp = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_14BaseFileReaderELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fn)
          to label %bb.at unwind label %bb.y      ; 2 uses

bb.at:                                            ; preds = %bb.as
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #29
  invoke void @_ZNK6duckdb13MultiFileList12GetFirstFileEv(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::OpenFileInfo") align 8 %12, ptr noundef nonnull align 8 dereferenceable(8) %i.bb)
          to label %bb.au unwind label %bb.bj

bb.au:                                            ; preds = %bb.at
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fp, i64 32
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !25 ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !25
  %i.fv = icmp eq i64 %i.fs, %i.fu
  br i1 %i.fv, label %bb.av, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

bb.av:                                            ; preds = %bb.au
  %i.fw = icmp eq i64 %i.fs, 0
  br i1 %i.fw, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fx = load ptr, ptr %12, align 8, !tbaa !18
  %i.fy = load ptr, ptr %i.fq, align 8, !tbaa !18
  %bcmp.i = call i32 @bcmp(ptr %i.fy, ptr %i.fx, i64 %i.fs)
  %i.fz = icmp eq i32 %bcmp.i, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.au, %bb.av, %bb.aw
  %i.ga = phi i1 [ false, %bb.au ], [ %i.fz, %bb.aw ], [ true, %bb.av ]
  %i.gb = getelementptr inbounds nuw i8, ptr %12, i64 40
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !42 ; 8 uses
  %.not.i.i.i.i183 = icmp eq ptr %i.gc, null
  br i1 %.not.i.i.i.i183, label %_ZN6duckdb10shared_ptrINS_20ExtendedOpenFileInfoELb1EED2Ev.exit.i, label %bb.ax

bb.ax:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 8 ; 4 uses
  %i.ge = load atomic i64, ptr %i.gd acquire, align 8 ; 2 uses
  %i.gf = icmp eq i64 %i.ge, 4294967297
  %i.gg = trunc i64 %i.ge to i32                  ; 2 uses
  br i1 %i.gf, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  store i32 0, ptr %i.gd, align 8, !tbaa !45
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gc, i64 12
  store i32 0, ptr %i.gh, align 4, !tbaa !47
  %i.gi = load ptr, ptr %i.gc, align 8, !tbaa !48
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  %i.gk = load ptr, ptr %i.gj, align 8
  call void %i.gk(ptr noundef nonnull align 8 dereferenceable(16) %i.gc) #29, !inline_history !1078
  %i.gl = load ptr, ptr %i.gc, align 8, !tbaa !48
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 24
  %i.gn = load ptr, ptr %i.gm, align 8
  call void %i.gn(ptr noundef nonnull align 8 dereferenceable(16) %i.gc) #29, !inline_history !1078
  br label %_ZN6duckdb10shared_ptrINS_20ExtendedOpenFileInfoELb1EED2Ev.exit.i

bb.az:                                            ; preds = %bb.ax
  %i.go = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i.i.i184 = icmp eq i8 %i.go, 0
  br i1 %.not.i.i.i.i.i184, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gp = add nsw i32 %i.gg, -1
  store i32 %i.gp, ptr %i.gd, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.bb:                                            ; preds = %bb.az
  %i.gq = atomicrmw volatile add ptr %i.gd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.bb, %bb.ba
  %.0.i.i.i.i.i.i = phi i32 [ %i.gg, %bb.ba ], [ %i.gq, %bb.bb ]
  %i.gr = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.gr, label %bb.bc, label %_ZN6duckdb10shared_ptrINS_20ExtendedOpenFileInfoELb1EED2Ev.exit.i, !prof !51

bb.bc:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gc) #29
  br label %_ZN6duckdb10shared_ptrINS_20ExtendedOpenFileInfoELb1EED2Ev.exit.i

_ZN6duckdb10shared_ptrINS_20ExtendedOpenFileInfoELb1EED2Ev.exit.i: ; preds = %bb.bc, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.ay, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.gs = load ptr, ptr %12, align 8, !tbaa !18   ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.gu = icmp eq ptr %i.gs, %i.gt
  br i1 %i.gu, label %_ZN6duckdb12OpenFileInfoD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN6duckdb10shared_ptrINS_20ExtendedOpenFileInfoELb1EED2Ev.exit.i
  call void @_ZdlPv(ptr noundef %i.gs) #31
  br label %_ZN6duckdb12OpenFileInfoD2Ev.exit

_ZN6duckdb12OpenFileInfoD2Ev.exit:                ; preds = %_ZN6duckdb10shared_ptrINS_20ExtendedOpenFileInfoELb1EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  br i1 %i.ga, label %bb.bd, label %bb.bm

bb.bd:                                            ; preds = %_ZN6duckdb12OpenFileInfoD2Ev.exit
  %i.gv = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_20MultiFileGlobalStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.be unwind label %bb.y      ; 3 uses

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !3416)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.gw = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #32
          to label %.noexc186 unwind label %bb.bk ; 13 uses

.noexc186:                                        ; preds = %bb.be
  %i.gx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.gy = load <2 x ptr>, ptr %i.fn, align 8, !tbaa !166, !noalias !3416
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fn, i8 0, i64 16, i1 false)
  store ptr null, ptr %i.gx, align 8, !tbaa !42, !noalias !3416
  store <2 x ptr> %i.gy, ptr %i.gw, align 8, !tbaa !166, !noalias !3416
  store ptr null, ptr %3, align 8, !tbaa !2032, !noalias !3416
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gw, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gz, i8 0, i64 16, i1 false), !noalias !3416
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gw, i64 32
  store i8 2, ptr %i.ha, align 8, !tbaa !3419, !noalias !3416
  call void @llvm.experimental.noalias.scope.decl(metadata !3440)
  %i.hb = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #32
          to label %bb.bf unwind label %.body.i185, !noalias !3416 ; 2 uses

.body.i185:                                       ; preds = %.noexc186
  %i.hc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb8weak_ptrINS_14BaseFileReaderELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.gz) #29, !noalias !3416
  call void @_ZN6duckdb10shared_ptrINS_14BaseFileReaderELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(160) %i.gw) #29, !noalias !3416
  call void @_ZN6duckdb10shared_ptrINS_14BaseFileReaderELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #29, !noalias !3416
  call void @_ZdlPv(ptr noundef nonnull %i.gw) #31, !noalias !3416
  br label %.body187

bb.bf:                                            ; preds = %.noexc186
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gw, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.hb, i8 0, i64 40, i1 false), !noalias !3443
  store ptr %i.hb, ptr %i.hd, align 8, !tbaa !3444, !alias.scope !3440, !noalias !3416
  %i.he = getelementptr inbounds nuw i8, ptr %i.gw, i64 48
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gw, i64 112
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gw, i64 128 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.he, i8 0, i64 64, i1 false), !noalias !3416
  store ptr %i.hg, ptr %i.hf, align 8, !tbaa !22, !noalias !3416
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gw, i64 120
  store i64 0, ptr %i.hh, align 8, !tbaa !25, !noalias !3416
  store i8 0, ptr %i.hg, align 8, !tbaa !24, !noalias !3416
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gw, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hi, i8 0, i64 16, i1 false), !noalias !3416
  store ptr %i.gw, ptr %13, align 8, !tbaa !3400, !alias.scope !3416
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gv, i64 112 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gv, i64 120 ; 3 uses
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !3399 ; 6 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gv, i64 128 ; 2 uses
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !3403
  %.not.i.i189 = icmp eq ptr %i.hl, %i.hn
  %i.ho = ptrtoint ptr %i.gw to i64               ; 2 uses
  br i1 %.not.i.i189, label %bb.bg, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit204.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit204.thread: ; preds = %bb.bf
  store i64 %i.ho, ptr %i.hl, align 8, !tbaa !3400
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  store ptr %i.hp, ptr %i.hk, align 8, !tbaa !3399
  br label %_ZNSt10unique_ptrIN6duckdb19MultiFileReaderDataESt14default_deleteIS1_EED2Ev.exit207

bb.bg:                                            ; preds = %bb.bf
  %i.hq = load ptr, ptr %i.hj, align 8, !tbaa !3398 ; 10 uses
  %i.hr = ptrtoint ptr %i.hl to i64               ; 3 uses
  %i.hs = ptrtoint ptr %i.hq to i64               ; 3 uses
  %i.ht = sub i64 %i.hr, %i.hs                    ; 3 uses
  %i.hu = icmp eq i64 %i.ht, 9223372036854775800
  br i1 %i.hu, label %bb.bh, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i190

bb.bh:                                            ; preds = %bb.bg
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.139) #30
          to label %.noexc202 unwind label %bb.bl

.noexc202:                                        ; preds = %bb.bh
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i190: ; preds = %bb.bg
  %i.hv = ashr exact i64 %i.ht, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i191 = call i64 @llvm.umax.i64(i64 %i.hv, i64 1)
  %i.hw = add nsw i64 %.sroa.speculated.i.i.i.i191, %i.hv ; 2 uses
  %i.hx = icmp ult i64 %i.hw, %i.hv
  %i.hy = call i64 @llvm.umin.i64(i64 %i.hw, i64 1152921504606846975)
  %i.hz = select i1 %i.hx, i64 1152921504606846975, i64 %i.hy ; 3 uses
  %.not.i.i.i.i192 = icmp ne i64 %i.hz, 0
  call void @llvm.assume(i1 %.not.i.i.i.i192)
  %i.ia = shl nuw nsw i64 %i.hz, 3
  %i.ib = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ia) #32
          to label %.noexc203 unwind label %bb.bl ; 10 uses

.noexc203:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i190
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 %i.ht
  store i64 %i.ho, ptr %i.ic, align 8, !tbaa !3400
  %.not10.i.i.i.i.i.i.i193 = icmp eq ptr %i.hq, %i.hl
  br i1 %.not10.i.i.i.i.i.i.i193, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i198, label %.lr.ph.i.i.i.i.i.i.i194.preheader

.lr.ph.i.i.i.i.i.i.i194.preheader:                ; preds = %.noexc203
  %i.id = sub i64 %i.hr, %i.hs
  %i.ie = add i64 %i.id, -8                       ; 2 uses
  %i.if = lshr i64 %i.ie, 3
  %i.ig = add nuw nsw i64 %i.if, 1                ; 2 uses
  %min.iters.check463 = icmp ult i64 %i.ie, 136
  br i1 %min.iters.check463, label %.lr.ph.i.i.i.i.i.i.i194.preheader484, label %vector.memcheck456

vector.memcheck456:                               ; preds = %.lr.ph.i.i.i.i.i.i.i194.preheader
  %i.ih = add i64 %i.hr, -8
  %i.ii = sub i64 %i.ih, %i.hs
  %i.ij = and i64 %i.ii, -8
  %i.ik = add i64 %i.ij, 8                        ; 2 uses
  %scevgep457 = getelementptr i8, ptr %i.ib, i64 %i.ik
  %scevgep458 = getelementptr i8, ptr %i.hq, i64 %i.ik
  %bound0459 = icmp ult ptr %i.ib, %scevgep458
  %bound1460 = icmp ult ptr %i.hq, %scevgep457
  %found.conflict461 = and i1 %bound0459, %bound1460
  br i1 %found.conflict461, label %.lr.ph.i.i.i.i.i.i.i194.preheader484, label %vector.ph464

vector.ph464:                                     ; preds = %vector.memcheck456
  %n.vec466 = and i64 %i.ig, 4611686018427387900  ; 3 uses
  %i.il = shl i64 %n.vec466, 3                    ; 2 uses
  %i.im = getelementptr i8, ptr %i.ib, i64 %i.il  ; 2 uses
  %i.in = getelementptr i8, ptr %i.hq, i64 %i.il
  br label %vector.body467

vector.body467:                                   ; preds = %vector.body467, %vector.ph464
  %index468 = phi i64 [ 0, %vector.ph464 ], [ %index.next473, %vector.body467 ] ; 2 uses
  %i.io = shl i64 %index468, 3                    ; 2 uses
  %next.gep469 = getelementptr i8, ptr %i.ib, i64 %i.io ; 2 uses
  %next.gep470 = getelementptr i8, ptr %i.hq, i64 %i.io ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3445)
  call void @llvm.experimental.noalias.scope.decl(metadata !3448)
  %i.ip = getelementptr i8, ptr %next.gep470, i64 16
  %wide.load471 = load <2 x i64>, ptr %next.gep470, align 8, !tbaa !3400, !alias.scope !3450, !noalias !3445
  %wide.load472 = load <2 x i64>, ptr %i.ip, align 8, !tbaa !3400, !alias.scope !3450, !noalias !3445
  %i.iq = getelementptr i8, ptr %next.gep469, i64 16
  store <2 x i64> %wide.load471, ptr %next.gep469, align 8, !tbaa !3400, !alias.scope !3453, !noalias !3450
  store <2 x i64> %wide.load472, ptr %i.iq, align 8, !tbaa !3400, !alias.scope !3453, !noalias !3450
  %i.ir = getelementptr i8, ptr %next.gep470, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep470, align 8, !tbaa !3400, !alias.scope !3450, !noalias !3445
  store <2 x ptr> splat (ptr null), ptr %i.ir, align 8, !tbaa !3400, !alias.scope !3450, !noalias !3445
  %index.next473 = add nuw i64 %index468, 4       ; 2 uses
  %i.is = icmp eq i64 %index.next473, %n.vec466
  br i1 %i.is, label %middle.block474, label %vector.body467, !llvm.loop !3455

middle.block474:                                  ; preds = %vector.body467
  %cmp.n475 = icmp eq i64 %i.ig, %n.vec466
  br i1 %cmp.n475, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i198, label %.lr.ph.i.i.i.i.i.i.i194.preheader484

.lr.ph.i.i.i.i.i.i.i194.preheader484:             ; preds = %vector.memcheck456, %.lr.ph.i.i.i.i.i.i.i194.preheader, %middle.block474
  %.012.i.i.i.i.i.i.i195.ph = phi ptr [ %i.ib, %vector.memcheck456 ], [ %i.ib, %.lr.ph.i.i.i.i.i.i.i194.preheader ], [ %i.im, %middle.block474 ]
  %.0911.i.i.i.i.i.i.i196.ph = phi ptr [ %i.hq, %vector.memcheck456 ], [ %i.hq, %.lr.ph.i.i.i.i.i.i.i194.preheader ], [ %i.in, %middle.block474 ]
  br label %.lr.ph.i.i.i.i.i.i.i194

.lr.ph.i.i.i.i.i.i.i194:                          ; preds = %.lr.ph.i.i.i.i.i.i.i194.preheader484, %.lr.ph.i.i.i.i.i.i.i194
  %.012.i.i.i.i.i.i.i195 = phi ptr [ %i.iv, %.lr.ph.i.i.i.i.i.i.i194 ], [ %.012.i.i.i.i.i.i.i195.ph, %.lr.ph.i.i.i.i.i.i.i194.preheader484 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i196 = phi ptr [ %i.iu, %.lr.ph.i.i.i.i.i.i.i194 ], [ %.0911.i.i.i.i.i.i.i196.ph, %.lr.ph.i.i.i.i.i.i.i194.preheader484 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3445)
  call void @llvm.experimental.noalias.scope.decl(metadata !3448)
  %i.it = load i64, ptr %.0911.i.i.i.i.i.i.i196, align 8, !tbaa !3400, !alias.scope !3448, !noalias !3445
  store i64 %i.it, ptr %.012.i.i.i.i.i.i.i195, align 8, !tbaa !3400, !alias.scope !3445, !noalias !3448
  store ptr null, ptr %.0911.i.i.i.i.i.i.i196, align 8, !tbaa !3400, !alias.scope !3448, !noalias !3445
  %i.iu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i196, i64 8 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i195, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i197 = icmp eq ptr %i.iu, %i.hl
  br i1 %.not.i.i.i.i.i.i.i197, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i198, label %.lr.ph.i.i.i.i.i.i.i194, !llvm.loop !3456

_ZNSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i198: ; preds = %.lr.ph.i.i.i.i.i.i.i194, %middle.block474, %.noexc203
  %.0.lcssa.i.i.i.i.i.i.i199 = phi ptr [ %i.ib, %.noexc203 ], [ %i.im, %middle.block474 ], [ %i.iv, %.lr.ph.i.i.i.i.i.i.i194 ]
  %i.iw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i199, i64 8
  %.not.i23.i.i.i200 = icmp eq ptr %i.hq, null
  br i1 %.not.i23.i.i.i200, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit204, label %bb.bi

bb.bi:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i198
  call void @_ZdlPv(ptr noundef nonnull %i.hq) #31
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit204

_ZNSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit204: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i198, %bb.bi
  store ptr %i.ib, ptr %i.hj, align 8, !tbaa !3398
  store ptr %i.iw, ptr %i.hk, align 8, !tbaa !3399
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %i.ib, i64 %i.hz
  store ptr %i.ix, ptr %i.hm, align 8, !tbaa !3403
  br label %_ZNSt10unique_ptrIN6duckdb19MultiFileReaderDataESt14default_deleteIS1_EED2Ev.exit207

_ZNSt10unique_ptrIN6duckdb19MultiFileReaderDataESt14default_deleteIS1_EED2Ev.exit207: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit204, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit204.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  br label %bb.bm

bb.bj:                                            ; preds = %bb.at
  %i.iy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  br label %.body

bb.bk:                                            ; preds = %bb.be
  %i.iz = landingpad { ptr, i32 }
          cleanup
  br label %.body187

bb.bl:                                            ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i190, %bb.bh
  %i.ja = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN6duckdb19MultiFileReaderDataESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %13) #29
  br label %.body187

.body187:                                         ; preds = %bb.bk, %.body.i185, %bb.bl
  %.pn114 = phi { ptr, i32 } [ %i.ja, %bb.bl ], [ %i.iz, %bb.bk ], [ %i.hc, %.body.i185 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  br label %.body

bb.bm:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit182, %bb.am, %_ZN6duckdb12OpenFileInfoD2Ev.exit, %_ZNSt10unique_ptrIN6duckdb19MultiFileReaderDataESt14default_deleteIS1_EED2Ev.exit207, %bb.ar, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit
  %i.jb = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_20MultiFileGlobalStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.bn unwind label %bb.y

bb.bn:                                            ; preds = %bb.bm
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 96
  store atomic i64 0, ptr %i.jc seq_cst, align 8
  %i.jd = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_20MultiFileGlobalStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.bo unwind label %bb.y

bb.bo:                                            ; preds = %bb.bn
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 200
  %i.jf = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6duckdb11ColumnIndexESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.je, ptr noundef nonnull align 8 dereferenceable(24) %i.bp)
          to label %_ZN6duckdb6vectorINS_11ColumnIndexELb1ESaIS1_EEaSERKS3_.exit unwind label %bb.y, !inline_history !3457 ; 0 uses

_ZN6duckdb6vectorINS_11ColumnIndexELb1ESaIS1_EEaSERKS3_.exit: ; preds = %bb.bo
  %i.jg = load ptr, ptr %i.c, align 8, !tbaa !263
  %i.jh = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_20MultiFileGlobalStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.bp unwind label %bb.bz

bb.bp:                                            ; preds = %_ZN6duckdb6vectorINS_11ColumnIndexELb1ESaIS1_EEaSERKS3_.exit
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 224
  %i.jj = ptrtoint ptr %i.jg to i64
  store i64 %i.jj, ptr %i.ji, align 8, !tbaa !1067
  %i.jk = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_20MultiFileGlobalStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.bq unwind label %bb.y

bb.bq:                                            ; preds = %bb.bp
  %i.jl = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jk, i64 248
  %i.jn = load i64, ptr %i.jl, align 8, !tbaa !1988
  store i64 %i.jn, ptr %i.jm, align 8, !tbaa !1988
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #29
  %i.jo = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  %i.jp = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_24MultiFileReaderInterfaceESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.jo)
          to label %bb.br unwind label %bb.ca     ; 2 uses

bb.br:                                            ; preds = %bb.bq
  %i.jq = invoke noundef nonnull align 8 dereferenceable(256) ptr @_ZNK6duckdb10unique_ptrINS_20MultiFileGlobalStateESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.bs unwind label %bb.ca

bb.bs:                                            ; preds = %bb.br
  %i.jr = load ptr, ptr %i.jp, align 8, !tbaa !48
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 96
  %i.jt = load ptr, ptr %i.js, align 8
  invoke void %i.jt(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.559") align 8 %14, ptr noundef nonnull align 8 dereferenceable(8) %i.jp, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull align 8 dereferenceable(480) %i.a, ptr noundef nonnull align 8 dereferenceable(256) %i.jq)
          to label %bb.bt unwind label %bb.ca

bb.bt:                                            ; preds = %bb.bs
  %i.ju = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_20MultiFileGlobalStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.bu unwind label %bb.cb

bb.bu:                                            ; preds = %bb.bt
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 240 ; 2 uses
  %i.jw = load ptr, ptr %14, align 8, !tbaa !1877
  store ptr null, ptr %14, align 8, !tbaa !1877
  %i.jx = load ptr, ptr %i.jv, align 8, !tbaa !1877 ; 3 uses
  store ptr %i.jw, ptr %i.jv, align 8, !tbaa !1877
  %.not.i.i.i.i.i209 = icmp eq ptr %i.jx, null
  br i1 %.not.i.i.i.i.i209, label %_ZNSt10unique_ptrIN6duckdb24GlobalTableFunctionStateESt14default_deleteIS1_EED2Ev.exit, label %_ZN6duckdb10unique_ptrINS_24GlobalTableFunctionStateESt14default_deleteIS1_ELb1EEaSEOS4_.exit

_ZN6duckdb10unique_ptrINS_24GlobalTableFunctionStateESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %bb.bu
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !48
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 8
  %i.ka = load ptr, ptr %i.jz, align 8
  call void %i.ka(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.jx) #29, !inline_history !1974
  %.pr298 = load ptr, ptr %14, align 8, !tbaa !1877 ; 3 uses
  %.not.i210 = icmp eq ptr %.pr298, null
  br i1 %.not.i210, label %_ZNSt10unique_ptrIN6duckdb24GlobalTableFunctionStateESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb24GlobalTableFunctionStateEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb24GlobalTableFunctionStateEEclEPS1_.exit.i: ; preds = %_ZN6duckdb10unique_ptrINS_24GlobalTableFunctionStateESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  %i.kb = load ptr, ptr %.pr298, align 8, !tbaa !48
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 8
  %i.kd = load ptr, ptr %i.kc, align 8
  call void %i.kd(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.pr298) #29, !inline_history !1878
  br label %_ZNSt10unique_ptrIN6duckdb24GlobalTableFunctionStateESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb24GlobalTableFunctionStateESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.bu, %_ZN6duckdb10unique_ptrINS_24GlobalTableFunctionStateESt14default_deleteIS1_ELb1EEaSEOS4_.exit, %_ZNKSt14default_deleteIN6duckdb24GlobalTableFunctionStateEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  %i.ke = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN6duckdb13TaskScheduler12GetSchedulerERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(512) %1)
          to label %bb.bv unwind label %bb.y

bb.bv:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb24GlobalTableFunctionStateESt14default_deleteIS1_EED2Ev.exit
  %i.kf = invoke noundef i32 @_ZN6duckdb13TaskScheduler15NumberOfThreadsEv(ptr noundef nonnull align 8 dereferenceable(124) %i.ke)
          to label %bb.bw unwind label %bb.y

bb.bw:                                            ; preds = %bb.bv
  %i.kg = invoke noundef i64 @_ZN6duckdb15NumericCastImplImiLb0EE7ConvertEi(i32 noundef %i.kf)
          to label %_ZN6duckdb11NumericCastImivEET_T0_.exit unwind label %bb.y

_ZN6duckdb11NumericCastImivEET_T0_.exit:          ; preds = %bb.bw
  %i.kh = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_20MultiFileGlobalStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.bx unwind label %bb.y

end_hunk_4
begin_hunk_5_@_ZN6duckdb17MultiFileFunctionINS_16CSVMultiFileInfoEE22TryInitializeNextBatchERNS_13ClientContextERKNS_17MultiFileBindDataERNS_19MultiFileLocalStateERNS_20MultiFileGlobalStateE:bb.a
  %.not.i.i = icmp eq ptr %i.ep, null
  br i1 %.not.i.i, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.eq = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ep) #29 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %_ZN6duckdb10shared_ptrINS_14BaseFileReaderELb1EED2Ev.exit.thread, %bb.bo, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  ret i1 %.2

bb.bq:                                            ; preds = %.loopexit, %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.af, %bb.ar, %bb.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn65.pn = phi { ptr, i32 } [ %i.bs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.cp, %bb.ar ], [ %.pn83, %bb.ah ], [ %i.bs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.bq, %bb.af ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.er = load i8, ptr %i.b, align 8, !tbaa !2463, !range !129, !noundef !114
  %i.es = trunc nuw i8 %i.er to i1
  br i1 %i.es, label %bb.br, label %_ZNSt11unique_lockISt5mutexED2Ev.exit79

bb.br:                                            ; preds = %bb.bq
  %i.et = load ptr, ptr %4, align 8, !tbaa !2464  ; 2 uses
  %.not.i.i78 = icmp eq ptr %i.et, null
  br i1 %.not.i.i78, label %_ZNSt11unique_lockISt5mutexED2Ev.exit79, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.eu = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.et) #29 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit79

_ZNSt11unique_lockISt5mutexED2Ev.exit79:          ; preds = %bb.bq, %bb.br, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  resume { ptr, i32 } %.pn65.pn

bb.bt:                                            ; preds = %bb.ae
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6duckdb12optional_ptrINS_19MultiFileReaderDataELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.0", align 1  ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !3348
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #29 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.247, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !18     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #29
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN6duckdb17MultiFileFunctionINS_16CSVMultiFileInfoEE14TryGetNextFileERNS_20MultiFileGlobalStateERSt11unique_lockISt5mutexE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(9) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.duckdb::OpenFileInfo", align 8 ; 12 uses
  %3 = alloca %"class.duckdb::unique_ptr.3053", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !22
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !25
  store i8 0, ptr %i.a, align 8, !tbaa !24
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !3395, !nonnull !114, !align !115
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = invoke noundef zeroext i1 @_ZNK6duckdb13MultiFileList4ScanERNS_21MultiFileListScanDataERNS_12OpenFileInfoE(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(12) %i.f, ptr noundef nonnull align 8 dereferenceable(48) %2)
          to label %bb.b unwind label %bb.c       ; 2 uses

bb.b:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.d, label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !3524)
  %i.i = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #32
          to label %.noexc unwind label %bb.j     ; 4 uses

.noexc:                                           ; preds = %bb.d
  invoke void @_ZN6duckdb19MultiFileReaderDataC2ERKNS_12OpenFileInfoE(ptr noundef nonnull align 8 dereferenceable(160) %i.i, ptr noundef nonnull align 8 dereferenceable(48) %2)
          to label %bb.f unwind label %bb.e, !noalias !3524

bb.e:                                             ; preds = %.noexc
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.i) #31, !noalias !3524
  br label %.body

bb.f:                                             ; preds = %.noexc
  store ptr %i.i, ptr %3, align 8, !tbaa !3400, !alias.scope !3524
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !3399 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !3403
  %.not.i.i = icmp eq ptr %i.m, %i.o
  %i.p = ptrtoint ptr %i.i to i64                 ; 2 uses
  br i1 %.not.i.i, label %bb.g, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.f
  store i64 %i.p, ptr %i.m, align 8, !tbaa !3400
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.q, ptr %i.l, align 8, !tbaa !3399
  br label %_ZNSt10unique_ptrIN6duckdb19MultiFileReaderDataESt14default_deleteIS1_EED2Ev.exit

bb.g:                                             ; preds = %bb.f
  %i.r = load ptr, ptr %i.k, align 8, !tbaa !3398 ; 10 uses
  %i.s = ptrtoint ptr %i.m to i64                 ; 3 uses
  %i.t = ptrtoint ptr %i.r to i64                 ; 3 uses
  %i.u = sub i64 %i.s, %i.t                       ; 3 uses
  %i.v = icmp eq i64 %i.u, 9223372036854775800
  br i1 %i.v, label %bb.h, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.139) #30
          to label %.noexc10 unwind label %bb.k

.noexc10:                                         ; preds = %bb.h
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.g
  %i.w = ashr exact i64 %i.u, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.w, i64 1)
  %i.x = add nsw i64 %.sroa.speculated.i.i.i.i, %i.w ; 2 uses
  %i.y = icmp ult i64 %i.x, %i.w
  %i.z = call i64 @llvm.umin.i64(i64 %i.x, i64 1152921504606846975)
  %i.aa = select i1 %i.y, i64 1152921504606846975, i64 %i.z ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.aa, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ab = shl nuw nsw i64 %i.aa, 3
  %i.ac = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #32
          to label %.noexc11 unwind label %bb.k   ; 10 uses

.noexc11:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.u
  store i64 %i.p, ptr %i.ad, align 8, !tbaa !3400
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.r, %i.m
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc11
  %i.ae = sub i64 %i.s, %i.t
  %i.af = add i64 %i.ae, -8                       ; 2 uses
  %i.ag = lshr i64 %i.af, 3
  %i.ah = add nuw nsw i64 %i.ag, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.af, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader22, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.ai = add i64 %i.s, -8
  %i.aj = sub i64 %i.ai, %i.t
  %i.ak = and i64 %i.aj, -8
  %i.al = add i64 %i.ak, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ac, i64 %i.al
  %scevgep18 = getelementptr i8, ptr %i.r, i64 %i.al
  %bound0 = icmp ult ptr %i.ac, %scevgep18
  %bound1 = icmp ult ptr %i.r, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader22, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ah, 4611686018427387900     ; 3 uses
  %i.am = shl i64 %n.vec, 3                       ; 2 uses
  %i.an = getelementptr i8, ptr %i.ac, i64 %i.am  ; 2 uses
  %i.ao = getelementptr i8, ptr %i.r, i64 %i.am
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ap = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ac, i64 %i.ap ; 2 uses
  %next.gep19 = getelementptr i8, ptr %i.r, i64 %i.ap ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3527)
  call void @llvm.experimental.noalias.scope.decl(metadata !3530)
  %i.aq = getelementptr i8, ptr %next.gep19, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep19, align 8, !tbaa !3400, !alias.scope !3532, !noalias !3527
  %wide.load20 = load <2 x i64>, ptr %i.aq, align 8, !tbaa !3400, !alias.scope !3532, !noalias !3527
  %i.ar = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !3400, !alias.scope !3535, !noalias !3532
  store <2 x i64> %wide.load20, ptr %i.ar, align 8, !tbaa !3400, !alias.scope !3535, !noalias !3532
  %i.as = getelementptr i8, ptr %next.gep19, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep19, align 8, !tbaa !3400, !alias.scope !3532, !noalias !3527
  store <2 x ptr> splat (ptr null), ptr %i.as, align 8, !tbaa !3400, !alias.scope !3532, !noalias !3527
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !3537

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader22

.lr.ph.i.i.i.i.i.i.i.preheader22:                 ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ac, %vector.memcheck ], [ %i.ac, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.an, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.r, %vector.memcheck ], [ %i.r, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ao, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader22, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader22 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader22 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3527)
  call void @llvm.experimental.noalias.scope.decl(metadata !3530)
  %i.au = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !3400, !alias.scope !3530, !noalias !3527
  store i64 %i.au, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !3400, !alias.scope !3527, !noalias !3530
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !3400, !alias.scope !3530, !noalias !3527
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.av, %i.m
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !3538

_ZNSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc11
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ac, %.noexc11 ], [ %i.an, %middle.block ], [ %i.aw, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.r) #31
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, %bb.i
  store ptr %i.ac, ptr %i.k, align 8, !tbaa !3398
  store ptr %i.ax, ptr %i.l, align 8, !tbaa !3399
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.aa
  store ptr %i.ay, ptr %i.n, align 8, !tbaa !3403
  br label %_ZNSt10unique_ptrIN6duckdb19MultiFileReaderDataESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb19MultiFileReaderDataESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %bb.l

bb.j:                                             ; preds = %bb.d
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.k:                                             ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.h
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN6duckdb19MultiFileReaderDataESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #29
  br label %.body

.body:                                            ; preds = %bb.j, %bb.e, %bb.k
  %.pn = phi { ptr, i32 } [ %i.ba, %bb.k ], [ %i.az, %bb.j ], [ %i.j, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %bb.s

bb.l:                                             ; preds = %bb.b, %_ZNSt10unique_ptrIN6duckdb19MultiFileReaderDataESt14default_deleteIS1_EED2Ev.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !42 ; 8 uses
  %.not.i.i.i.i12 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i.i12, label %_ZN6duckdb10shared_ptrINS_20ExtendedOpenFileInfoELb1EED2Ev.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 4 uses
  %i.be = load atomic i64, ptr %i.bd acquire, align 8 ; 2 uses
  %i.bf = icmp eq i64 %i.be, 4294967297
  %i.bg = trunc i64 %i.be to i32                  ; 2 uses
  br i1 %i.bf, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.bd, align 8, !tbaa !45
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 12
  store i32 0, ptr %i.bh, align 4, !tbaa !47
  %i.bi = load ptr, ptr %i.bc, align 8, !tbaa !48
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(16) %i.bc) #29, !inline_history !1078
  %i.bl = load ptr, ptr %i.bc, align 8, !tbaa !48
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(16) %i.bc) #29, !inline_history !1078
  br label %_ZN6duckdb10shared_ptrINS_20ExtendedOpenFileInfoELb1EED2Ev.exit.i

bb.o:                                             ; preds = %bb.m
  %i.bo = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i.i.i = icmp eq i8 %i.bo, 0
  br i1 %.not.i.i.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bp = add nsw i32 %i.bg, -1
  store i32 %i.bp, ptr %i.bd, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.bq = atomicrmw volatile add ptr %i.bd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i.i = phi i32 [ %i.bg, %bb.p ], [ %i.bq, %bb.q ]
  %i.br = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.br, label %bb.r, label %_ZN6duckdb10shared_ptrINS_20ExtendedOpenFileInfoELb1EED2Ev.exit.i, !prof !51

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bc) #29
  br label %_ZN6duckdb10shared_ptrINS_20ExtendedOpenFileInfoELb1EED2Ev.exit.i

_ZN6duckdb10shared_ptrINS_20ExtendedOpenFileInfoELb1EED2Ev.exit.i: ; preds = %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.n, %bb.l
  %i.bs = load ptr, ptr %2, align 8, !tbaa !18    ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.a
  br i1 %i.bt, label %_ZN6duckdb12OpenFileInfoD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN6duckdb10shared_ptrINS_20ExtendedOpenFileInfoELb1EED2Ev.exit.i
  call void @_ZdlPv(ptr noundef %i.bs) #31
  br label %_ZN6duckdb12OpenFileInfoD2Ev.exit

_ZN6duckdb12OpenFileInfoD2Ev.exit:                ; preds = %_ZN6duckdb10shared_ptrINS_20ExtendedOpenFileInfoELb1EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret i1 %i.g

bb.s:                                             ; preds = %.body, %bb.c
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.h, %bb.c ]
  call void @_ZN6duckdb12OpenFileInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator.0", align 1  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !3399
  %i.e = load ptr, ptr %0, align 8, !tbaa !3398   ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %1, ptr %i.a, align 8, !tbaa !23
  store i64 %i.i, ptr %i.b, align 8, !tbaa !23
  %.not.i.i = icmp ult i64 %1, %i.i
  br i1 %.not.i.i, label %_ZN6duckdb6vectorINS_10unique_ptrINS_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE3getILb1EEERS5_m.exit, label %bb.b, !prof !53

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #29 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.161, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
end_hunk_5
begin_hunk_6_@_ZN6duckdb17MultiFileFunctionINS_19DuckDBMultiFileInfoEE19MultiFileInitGlobalERNS_13ClientContextERNS_22TableFunctionInitInputE:bb.a

bb.as:                                            ; preds = %bb.ar
  %i.fp = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_14BaseFileReaderELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fn)
          to label %bb.at unwind label %bb.y      ; 2 uses

bb.at:                                            ; preds = %bb.as
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #29
  invoke void @_ZNK6duckdb13MultiFileList12GetFirstFileEv(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::OpenFileInfo") align 8 %12, ptr noundef nonnull align 8 dereferenceable(8) %i.bb)
          to label %bb.au unwind label %bb.bj

bb.au:                                            ; preds = %bb.at
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fp, i64 32
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !25 ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !25
  %i.fv = icmp eq i64 %i.fs, %i.fu
  br i1 %i.fv, label %bb.av, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

bb.av:                                            ; preds = %bb.au
  %i.fw = icmp eq i64 %i.fs, 0
  br i1 %i.fw, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fx = load ptr, ptr %12, align 8, !tbaa !18
  %i.fy = load ptr, ptr %i.fq, align 8, !tbaa !18
  %bcmp.i = call i32 @bcmp(ptr %i.fy, ptr %i.fx, i64 %i.fs)
  %i.fz = icmp eq i32 %bcmp.i, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.au, %bb.av, %bb.aw
  %i.ga = phi i1 [ false, %bb.au ], [ %i.fz, %bb.aw ], [ true, %bb.av ]
  %i.gb = getelementptr inbounds nuw i8, ptr %12, i64 40
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !42 ; 8 uses
  %.not.i.i.i.i183 = icmp eq ptr %i.gc, null
  br i1 %.not.i.i.i.i183, label %_ZN6duckdb10shared_ptrINS_20ExtendedOpenFileInfoELb1EED2Ev.exit.i, label %bb.ax

bb.ax:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 8 ; 4 uses
  %i.ge = load atomic i64, ptr %i.gd acquire, align 8 ; 2 uses
  %i.gf = icmp eq i64 %i.ge, 4294967297
  %i.gg = trunc i64 %i.ge to i32                  ; 2 uses
  br i1 %i.gf, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  store i32 0, ptr %i.gd, align 8, !tbaa !45
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gc, i64 12
  store i32 0, ptr %i.gh, align 4, !tbaa !47
  %i.gi = load ptr, ptr %i.gc, align 8, !tbaa !48
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  %i.gk = load ptr, ptr %i.gj, align 8
  call void %i.gk(ptr noundef nonnull align 8 dereferenceable(16) %i.gc) #29, !inline_history !1078
  %i.gl = load ptr, ptr %i.gc, align 8, !tbaa !48
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 24
  %i.gn = load ptr, ptr %i.gm, align 8
  call void %i.gn(ptr noundef nonnull align 8 dereferenceable(16) %i.gc) #29, !inline_history !1078
  br label %_ZN6duckdb10shared_ptrINS_20ExtendedOpenFileInfoELb1EED2Ev.exit.i

bb.az:                                            ; preds = %bb.ax
  %i.go = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i.i.i184 = icmp eq i8 %i.go, 0
  br i1 %.not.i.i.i.i.i184, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gp = add nsw i32 %i.gg, -1
  store i32 %i.gp, ptr %i.gd, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.bb:                                            ; preds = %bb.az
  %i.gq = atomicrmw volatile add ptr %i.gd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.bb, %bb.ba
  %.0.i.i.i.i.i.i = phi i32 [ %i.gg, %bb.ba ], [ %i.gq, %bb.bb ]
  %i.gr = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.gr, label %bb.bc, label %_ZN6duckdb10shared_ptrINS_20ExtendedOpenFileInfoELb1EED2Ev.exit.i, !prof !51

bb.bc:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gc) #29
  br label %_ZN6duckdb10shared_ptrINS_20ExtendedOpenFileInfoELb1EED2Ev.exit.i

_ZN6duckdb10shared_ptrINS_20ExtendedOpenFileInfoELb1EED2Ev.exit.i: ; preds = %bb.bc, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.ay, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.gs = load ptr, ptr %12, align 8, !tbaa !18   ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.gu = icmp eq ptr %i.gs, %i.gt
  br i1 %i.gu, label %_ZN6duckdb12OpenFileInfoD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN6duckdb10shared_ptrINS_20ExtendedOpenFileInfoELb1EED2Ev.exit.i
  call void @_ZdlPv(ptr noundef %i.gs) #31
  br label %_ZN6duckdb12OpenFileInfoD2Ev.exit

_ZN6duckdb12OpenFileInfoD2Ev.exit:                ; preds = %_ZN6duckdb10shared_ptrINS_20ExtendedOpenFileInfoELb1EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  br i1 %i.ga, label %bb.bd, label %bb.bm

bb.bd:                                            ; preds = %_ZN6duckdb12OpenFileInfoD2Ev.exit
  %i.gv = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_20MultiFileGlobalStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.be unwind label %bb.y      ; 3 uses

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !3724)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.gw = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #32
          to label %.noexc186 unwind label %bb.bk ; 13 uses

.noexc186:                                        ; preds = %bb.be
  %i.gx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.gy = load <2 x ptr>, ptr %i.fn, align 8, !tbaa !166, !noalias !3724
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fn, i8 0, i64 16, i1 false)
  store ptr null, ptr %i.gx, align 8, !tbaa !42, !noalias !3724
  store <2 x ptr> %i.gy, ptr %i.gw, align 8, !tbaa !166, !noalias !3724
  store ptr null, ptr %3, align 8, !tbaa !2032, !noalias !3724
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gw, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gz, i8 0, i64 16, i1 false), !noalias !3724
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gw, i64 32
  store i8 2, ptr %i.ha, align 8, !tbaa !3419, !noalias !3724
  call void @llvm.experimental.noalias.scope.decl(metadata !3727)
  %i.hb = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #32
          to label %bb.bf unwind label %.body.i185, !noalias !3724 ; 2 uses

.body.i185:                                       ; preds = %.noexc186
  %i.hc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb8weak_ptrINS_14BaseFileReaderELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.gz) #29, !noalias !3724
  call void @_ZN6duckdb10shared_ptrINS_14BaseFileReaderELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(160) %i.gw) #29, !noalias !3724
  call void @_ZN6duckdb10shared_ptrINS_14BaseFileReaderELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #29, !noalias !3724
  call void @_ZdlPv(ptr noundef nonnull %i.gw) #31, !noalias !3724
  br label %.body187

bb.bf:                                            ; preds = %.noexc186
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gw, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.hb, i8 0, i64 40, i1 false), !noalias !3730
  store ptr %i.hb, ptr %i.hd, align 8, !tbaa !3444, !alias.scope !3727, !noalias !3724
  %i.he = getelementptr inbounds nuw i8, ptr %i.gw, i64 48
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gw, i64 112
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gw, i64 128 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.he, i8 0, i64 64, i1 false), !noalias !3724
  store ptr %i.hg, ptr %i.hf, align 8, !tbaa !22, !noalias !3724
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gw, i64 120
  store i64 0, ptr %i.hh, align 8, !tbaa !25, !noalias !3724
  store i8 0, ptr %i.hg, align 8, !tbaa !24, !noalias !3724
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gw, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hi, i8 0, i64 16, i1 false), !noalias !3724
  store ptr %i.gw, ptr %13, align 8, !tbaa !3400, !alias.scope !3724
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gv, i64 112 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gv, i64 120 ; 3 uses
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !3399 ; 6 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gv, i64 128 ; 2 uses
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !3403
  %.not.i.i189 = icmp eq ptr %i.hl, %i.hn
  %i.ho = ptrtoint ptr %i.gw to i64               ; 2 uses
  br i1 %.not.i.i189, label %bb.bg, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit204.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit204.thread: ; preds = %bb.bf
  store i64 %i.ho, ptr %i.hl, align 8, !tbaa !3400
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  store ptr %i.hp, ptr %i.hk, align 8, !tbaa !3399
  br label %_ZNSt10unique_ptrIN6duckdb19MultiFileReaderDataESt14default_deleteIS1_EED2Ev.exit207

bb.bg:                                            ; preds = %bb.bf
  %i.hq = load ptr, ptr %i.hj, align 8, !tbaa !3398 ; 10 uses
  %i.hr = ptrtoint ptr %i.hl to i64               ; 3 uses
  %i.hs = ptrtoint ptr %i.hq to i64               ; 3 uses
  %i.ht = sub i64 %i.hr, %i.hs                    ; 3 uses
  %i.hu = icmp eq i64 %i.ht, 9223372036854775800
  br i1 %i.hu, label %bb.bh, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i190

bb.bh:                                            ; preds = %bb.bg
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.139) #30
          to label %.noexc202 unwind label %bb.bl

.noexc202:                                        ; preds = %bb.bh
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i190: ; preds = %bb.bg
  %i.hv = ashr exact i64 %i.ht, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i191 = call i64 @llvm.umax.i64(i64 %i.hv, i64 1)
  %i.hw = add nsw i64 %.sroa.speculated.i.i.i.i191, %i.hv ; 2 uses
  %i.hx = icmp ult i64 %i.hw, %i.hv
  %i.hy = call i64 @llvm.umin.i64(i64 %i.hw, i64 1152921504606846975)
  %i.hz = select i1 %i.hx, i64 1152921504606846975, i64 %i.hy ; 3 uses
  %.not.i.i.i.i192 = icmp ne i64 %i.hz, 0
  call void @llvm.assume(i1 %.not.i.i.i.i192)
  %i.ia = shl nuw nsw i64 %i.hz, 3
  %i.ib = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ia) #32
          to label %.noexc203 unwind label %bb.bl ; 10 uses

.noexc203:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i190
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 %i.ht
  store i64 %i.ho, ptr %i.ic, align 8, !tbaa !3400
  %.not10.i.i.i.i.i.i.i193 = icmp eq ptr %i.hq, %i.hl
  br i1 %.not10.i.i.i.i.i.i.i193, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i198, label %.lr.ph.i.i.i.i.i.i.i194.preheader

.lr.ph.i.i.i.i.i.i.i194.preheader:                ; preds = %.noexc203
  %i.id = sub i64 %i.hr, %i.hs
  %i.ie = add i64 %i.id, -8                       ; 2 uses
  %i.if = lshr i64 %i.ie, 3
  %i.ig = add nuw nsw i64 %i.if, 1                ; 2 uses
  %min.iters.check463 = icmp ult i64 %i.ie, 136
  br i1 %min.iters.check463, label %.lr.ph.i.i.i.i.i.i.i194.preheader484, label %vector.memcheck456

vector.memcheck456:                               ; preds = %.lr.ph.i.i.i.i.i.i.i194.preheader
  %i.ih = add i64 %i.hr, -8
  %i.ii = sub i64 %i.ih, %i.hs
  %i.ij = and i64 %i.ii, -8
  %i.ik = add i64 %i.ij, 8                        ; 2 uses
  %scevgep457 = getelementptr i8, ptr %i.ib, i64 %i.ik
  %scevgep458 = getelementptr i8, ptr %i.hq, i64 %i.ik
  %bound0459 = icmp ult ptr %i.ib, %scevgep458
  %bound1460 = icmp ult ptr %i.hq, %scevgep457
  %found.conflict461 = and i1 %bound0459, %bound1460
  br i1 %found.conflict461, label %.lr.ph.i.i.i.i.i.i.i194.preheader484, label %vector.ph464

vector.ph464:                                     ; preds = %vector.memcheck456
  %n.vec466 = and i64 %i.ig, 4611686018427387900  ; 3 uses
  %i.il = shl i64 %n.vec466, 3                    ; 2 uses
  %i.im = getelementptr i8, ptr %i.ib, i64 %i.il  ; 2 uses
  %i.in = getelementptr i8, ptr %i.hq, i64 %i.il
  br label %vector.body467

vector.body467:                                   ; preds = %vector.body467, %vector.ph464
  %index468 = phi i64 [ 0, %vector.ph464 ], [ %index.next473, %vector.body467 ] ; 2 uses
  %i.io = shl i64 %index468, 3                    ; 2 uses
  %next.gep469 = getelementptr i8, ptr %i.ib, i64 %i.io ; 2 uses
  %next.gep470 = getelementptr i8, ptr %i.hq, i64 %i.io ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3731)
  call void @llvm.experimental.noalias.scope.decl(metadata !3734)
  %i.ip = getelementptr i8, ptr %next.gep470, i64 16
  %wide.load471 = load <2 x i64>, ptr %next.gep470, align 8, !tbaa !3400, !alias.scope !3736, !noalias !3731
  %wide.load472 = load <2 x i64>, ptr %i.ip, align 8, !tbaa !3400, !alias.scope !3736, !noalias !3731
  %i.iq = getelementptr i8, ptr %next.gep469, i64 16
  store <2 x i64> %wide.load471, ptr %next.gep469, align 8, !tbaa !3400, !alias.scope !3739, !noalias !3736
  store <2 x i64> %wide.load472, ptr %i.iq, align 8, !tbaa !3400, !alias.scope !3739, !noalias !3736
  %i.ir = getelementptr i8, ptr %next.gep470, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep470, align 8, !tbaa !3400, !alias.scope !3736, !noalias !3731
  store <2 x ptr> splat (ptr null), ptr %i.ir, align 8, !tbaa !3400, !alias.scope !3736, !noalias !3731
  %index.next473 = add nuw i64 %index468, 4       ; 2 uses
  %i.is = icmp eq i64 %index.next473, %n.vec466
  br i1 %i.is, label %middle.block474, label %vector.body467, !llvm.loop !3741

middle.block474:                                  ; preds = %vector.body467
  %cmp.n475 = icmp eq i64 %i.ig, %n.vec466
  br i1 %cmp.n475, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i198, label %.lr.ph.i.i.i.i.i.i.i194.preheader484

.lr.ph.i.i.i.i.i.i.i194.preheader484:             ; preds = %vector.memcheck456, %.lr.ph.i.i.i.i.i.i.i194.preheader, %middle.block474
  %.012.i.i.i.i.i.i.i195.ph = phi ptr [ %i.ib, %vector.memcheck456 ], [ %i.ib, %.lr.ph.i.i.i.i.i.i.i194.preheader ], [ %i.im, %middle.block474 ]
  %.0911.i.i.i.i.i.i.i196.ph = phi ptr [ %i.hq, %vector.memcheck456 ], [ %i.hq, %.lr.ph.i.i.i.i.i.i.i194.preheader ], [ %i.in, %middle.block474 ]
  br label %.lr.ph.i.i.i.i.i.i.i194

.lr.ph.i.i.i.i.i.i.i194:                          ; preds = %.lr.ph.i.i.i.i.i.i.i194.preheader484, %.lr.ph.i.i.i.i.i.i.i194
  %.012.i.i.i.i.i.i.i195 = phi ptr [ %i.iv, %.lr.ph.i.i.i.i.i.i.i194 ], [ %.012.i.i.i.i.i.i.i195.ph, %.lr.ph.i.i.i.i.i.i.i194.preheader484 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i196 = phi ptr [ %i.iu, %.lr.ph.i.i.i.i.i.i.i194 ], [ %.0911.i.i.i.i.i.i.i196.ph, %.lr.ph.i.i.i.i.i.i.i194.preheader484 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3731)
  call void @llvm.experimental.noalias.scope.decl(metadata !3734)
  %i.it = load i64, ptr %.0911.i.i.i.i.i.i.i196, align 8, !tbaa !3400, !alias.scope !3734, !noalias !3731
  store i64 %i.it, ptr %.012.i.i.i.i.i.i.i195, align 8, !tbaa !3400, !alias.scope !3731, !noalias !3734
  store ptr null, ptr %.0911.i.i.i.i.i.i.i196, align 8, !tbaa !3400, !alias.scope !3734, !noalias !3731
  %i.iu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i196, i64 8 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i195, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i197 = icmp eq ptr %i.iu, %i.hl
  br i1 %.not.i.i.i.i.i.i.i197, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i198, label %.lr.ph.i.i.i.i.i.i.i194, !llvm.loop !3742

_ZNSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i198: ; preds = %.lr.ph.i.i.i.i.i.i.i194, %middle.block474, %.noexc203
  %.0.lcssa.i.i.i.i.i.i.i199 = phi ptr [ %i.ib, %.noexc203 ], [ %i.im, %middle.block474 ], [ %i.iv, %.lr.ph.i.i.i.i.i.i.i194 ]
  %i.iw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i199, i64 8
  %.not.i23.i.i.i200 = icmp eq ptr %i.hq, null
  br i1 %.not.i23.i.i.i200, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit204, label %bb.bi

bb.bi:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i198
  call void @_ZdlPv(ptr noundef nonnull %i.hq) #31
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit204

_ZNSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit204: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i198, %bb.bi
  store ptr %i.ib, ptr %i.hj, align 8, !tbaa !3398
  store ptr %i.iw, ptr %i.hk, align 8, !tbaa !3399
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %i.ib, i64 %i.hz
  store ptr %i.ix, ptr %i.hm, align 8, !tbaa !3403
  br label %_ZNSt10unique_ptrIN6duckdb19MultiFileReaderDataESt14default_deleteIS1_EED2Ev.exit207

_ZNSt10unique_ptrIN6duckdb19MultiFileReaderDataESt14default_deleteIS1_EED2Ev.exit207: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit204, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit204.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  br label %bb.bm

bb.bj:                                            ; preds = %bb.at
  %i.iy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  br label %.body

bb.bk:                                            ; preds = %bb.be
  %i.iz = landingpad { ptr, i32 }
          cleanup
  br label %.body187

bb.bl:                                            ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i190, %bb.bh
  %i.ja = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN6duckdb19MultiFileReaderDataESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %13) #29
  br label %.body187

.body187:                                         ; preds = %bb.bk, %.body.i185, %bb.bl
  %.pn114 = phi { ptr, i32 } [ %i.ja, %bb.bl ], [ %i.iz, %bb.bk ], [ %i.hc, %.body.i185 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  br label %.body

bb.bm:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit182, %bb.am, %_ZN6duckdb12OpenFileInfoD2Ev.exit, %_ZNSt10unique_ptrIN6duckdb19MultiFileReaderDataESt14default_deleteIS1_EED2Ev.exit207, %bb.ar, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit
  %i.jb = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_20MultiFileGlobalStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.bn unwind label %bb.y

bb.bn:                                            ; preds = %bb.bm
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 96
  store atomic i64 0, ptr %i.jc seq_cst, align 8
  %i.jd = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_20MultiFileGlobalStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.bo unwind label %bb.y

bb.bo:                                            ; preds = %bb.bn
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 200
  %i.jf = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6duckdb11ColumnIndexESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.je, ptr noundef nonnull align 8 dereferenceable(24) %i.bp)
          to label %_ZN6duckdb6vectorINS_11ColumnIndexELb1ESaIS1_EEaSERKS3_.exit unwind label %bb.y, !inline_history !3457 ; 0 uses

_ZN6duckdb6vectorINS_11ColumnIndexELb1ESaIS1_EEaSERKS3_.exit: ; preds = %bb.bo
  %i.jg = load ptr, ptr %i.c, align 8, !tbaa !263
  %i.jh = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_20MultiFileGlobalStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.bp unwind label %bb.bz

bb.bp:                                            ; preds = %_ZN6duckdb6vectorINS_11ColumnIndexELb1ESaIS1_EEaSERKS3_.exit
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 224
  %i.jj = ptrtoint ptr %i.jg to i64
  store i64 %i.jj, ptr %i.ji, align 8, !tbaa !1067
  %i.jk = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_20MultiFileGlobalStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.bq unwind label %bb.y

bb.bq:                                            ; preds = %bb.bp
  %i.jl = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jk, i64 248
  %i.jn = load i64, ptr %i.jl, align 8, !tbaa !1988
  store i64 %i.jn, ptr %i.jm, align 8, !tbaa !1988
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #29
  %i.jo = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  %i.jp = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_24MultiFileReaderInterfaceESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.jo)
          to label %bb.br unwind label %bb.ca     ; 2 uses

bb.br:                                            ; preds = %bb.bq
  %i.jq = invoke noundef nonnull align 8 dereferenceable(256) ptr @_ZNK6duckdb10unique_ptrINS_20MultiFileGlobalStateESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.bs unwind label %bb.ca

bb.bs:                                            ; preds = %bb.br
  %i.jr = load ptr, ptr %i.jp, align 8, !tbaa !48
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 96
  %i.jt = load ptr, ptr %i.js, align 8
  invoke void %i.jt(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.559") align 8 %14, ptr noundef nonnull align 8 dereferenceable(8) %i.jp, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull align 8 dereferenceable(480) %i.a, ptr noundef nonnull align 8 dereferenceable(256) %i.jq)
          to label %bb.bt unwind label %bb.ca

bb.bt:                                            ; preds = %bb.bs
  %i.ju = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_20MultiFileGlobalStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.bu unwind label %bb.cb

bb.bu:                                            ; preds = %bb.bt
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 240 ; 2 uses
  %i.jw = load ptr, ptr %14, align 8, !tbaa !1877
  store ptr null, ptr %14, align 8, !tbaa !1877
  %i.jx = load ptr, ptr %i.jv, align 8, !tbaa !1877 ; 3 uses
  store ptr %i.jw, ptr %i.jv, align 8, !tbaa !1877
  %.not.i.i.i.i.i209 = icmp eq ptr %i.jx, null
  br i1 %.not.i.i.i.i.i209, label %_ZNSt10unique_ptrIN6duckdb24GlobalTableFunctionStateESt14default_deleteIS1_EED2Ev.exit, label %_ZN6duckdb10unique_ptrINS_24GlobalTableFunctionStateESt14default_deleteIS1_ELb1EEaSEOS4_.exit

_ZN6duckdb10unique_ptrINS_24GlobalTableFunctionStateESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %bb.bu
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !48
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 8
  %i.ka = load ptr, ptr %i.jz, align 8
  call void %i.ka(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.jx) #29, !inline_history !1974
  %.pr298 = load ptr, ptr %14, align 8, !tbaa !1877 ; 3 uses
  %.not.i210 = icmp eq ptr %.pr298, null
  br i1 %.not.i210, label %_ZNSt10unique_ptrIN6duckdb24GlobalTableFunctionStateESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb24GlobalTableFunctionStateEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb24GlobalTableFunctionStateEEclEPS1_.exit.i: ; preds = %_ZN6duckdb10unique_ptrINS_24GlobalTableFunctionStateESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  %i.kb = load ptr, ptr %.pr298, align 8, !tbaa !48
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 8
  %i.kd = load ptr, ptr %i.kc, align 8
  call void %i.kd(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.pr298) #29, !inline_history !1878
  br label %_ZNSt10unique_ptrIN6duckdb24GlobalTableFunctionStateESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb24GlobalTableFunctionStateESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.bu, %_ZN6duckdb10unique_ptrINS_24GlobalTableFunctionStateESt14default_deleteIS1_ELb1EEaSEOS4_.exit, %_ZNKSt14default_deleteIN6duckdb24GlobalTableFunctionStateEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  %i.ke = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN6duckdb13TaskScheduler12GetSchedulerERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(512) %1)
          to label %bb.bv unwind label %bb.y

bb.bv:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb24GlobalTableFunctionStateESt14default_deleteIS1_EED2Ev.exit
  %i.kf = invoke noundef i32 @_ZN6duckdb13TaskScheduler15NumberOfThreadsEv(ptr noundef nonnull align 8 dereferenceable(124) %i.ke)
          to label %bb.bw unwind label %bb.y

bb.bw:                                            ; preds = %bb.bv
  %i.kg = invoke noundef i64 @_ZN6duckdb15NumericCastImplImiLb0EE7ConvertEi(i32 noundef %i.kf)
          to label %_ZN6duckdb11NumericCastImivEET_T0_.exit unwind label %bb.y

_ZN6duckdb11NumericCastImivEET_T0_.exit:          ; preds = %bb.bw
  %i.kh = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_20MultiFileGlobalStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.bx unwind label %bb.y

end_hunk_6
begin_hunk_7_@_ZN6duckdb17MultiFileFunctionINS_19DuckDBMultiFileInfoEE22TryInitializeNextBatchERNS_13ClientContextERKNS_17MultiFileBindDataERNS_19MultiFileLocalStateERNS_20MultiFileGlobalStateE:bb.a
  %i.dw = load ptr, ptr %i.dq, align 8, !tbaa !48
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.dy = load ptr, ptr %i.dx, align 8
  call void %i.dy(ptr noundef nonnull align 8 dereferenceable(16) %i.dq) #29, !inline_history !2080
  %i.dz = load ptr, ptr %i.dq, align 8, !tbaa !48
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  %i.eb = load ptr, ptr %i.ea, align 8
  call void %i.eb(ptr noundef nonnull align 8 dereferenceable(16) %i.dq) #29, !inline_history !2080
  br label %_ZN6duckdb10shared_ptrINS_14BaseFileReaderELb1EED2Ev.exit, !llvm.loop !3763

bb.bf:                                            ; preds = %bb.bd
  %i.ec = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i.i.i73 = icmp eq i8 %i.ec, 0
  br i1 %.not.i.i.i.i.i73, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ed = add nsw i32 %i.du, -1
  store i32 %i.ed, ptr %i.dr, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i74

bb.bh:                                            ; preds = %bb.bf
  %i.ee = atomicrmw volatile add ptr %i.dr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i74

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i74: ; preds = %bb.bh, %bb.bg
  %.0.i.i.i.i.i.i75 = phi i32 [ %i.du, %bb.bg ], [ %i.ee, %bb.bh ]
  %i.ef = icmp eq i32 %.0.i.i.i.i.i.i75, 1
  br i1 %i.ef, label %bb.bi, label %_ZN6duckdb10shared_ptrINS_14BaseFileReaderELb1EED2Ev.exit, !prof !51, !llvm.loop !3763

bb.bi:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i74
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dq) #29
  br label %_ZN6duckdb10shared_ptrINS_14BaseFileReaderELb1EED2Ev.exit, !llvm.loop !3763

bb.bj:                                            ; preds = %bb.l
  %i.eg = atomicrmw add ptr %i.g, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_14BaseFileReaderELb1EED2Ev.exit, !llvm.loop !3763

bb.bk:                                            ; preds = %bb.l
  %i.eh = invoke noundef zeroext i1 @_ZN6duckdb17MultiFileFunctionINS_19DuckDBMultiFileInfoEE15TryOpenNextFileERNS_13ClientContextERKNS_17MultiFileBindDataERNS_19MultiFileLocalStateERNS_20MultiFileGlobalStateERSt11unique_lockISt5mutexE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(480) %1, ptr noundef nonnull align 8 dereferenceable(208) %2, ptr noundef nonnull align 8 dereferenceable(256) %3, ptr noundef nonnull align 8 dereferenceable(9) %4)
          to label %bb.bl unwind label %bb.af

bb.bl:                                            ; preds = %bb.bk
  br i1 %i.eh, label %_ZN6duckdb10shared_ptrINS_14BaseFileReaderELb1EED2Ev.exit, label %bb.bm, !llvm.loop !3763

bb.bm:                                            ; preds = %bb.bl
  %i.ei = load i8, ptr %i.ae, align 8, !tbaa !3419
  %i.ej = icmp eq i8 %i.ei, 1
  br i1 %i.ej, label %bb.bn, label %_ZN6duckdb10shared_ptrINS_14BaseFileReaderELb1EED2Ev.exit

bb.bn:                                            ; preds = %bb.bm
  %i.ek = load atomic i64, ptr %i.g seq_cst, align 8
  invoke void @_ZN6duckdb17MultiFileFunctionINS_19DuckDBMultiFileInfoEE11WaitForFileEmRNS_20MultiFileGlobalStateERSt11unique_lockISt5mutexE(i64 noundef %i.ek, ptr noundef nonnull align 8 dereferenceable(256) %3, ptr noundef nonnull align 8 dereferenceable(9) %4)
          to label %_ZN6duckdb10shared_ptrINS_14BaseFileReaderELb1EED2Ev.exit unwind label %bb.af

_ZN6duckdb10shared_ptrINS_14BaseFileReaderELb1EED2Ev.exit: ; preds = %_ZN6duckdb8weak_ptrINS_14BaseFileReaderELb1EEaSIS1_TnNSt9enable_ifIXsr17compatible_with_tIT_S1_EE5valueEiE4typeELi0EEERS2_RKNS_10shared_ptrIS5_Lb1EEE.exit, %bb.be, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i74, %bb.bi, %bb.bm, %bb.bn, %bb.bl, %bb.bj
  %i.el = load i8, ptr %i.d, align 8, !tbaa !3518, !range !129, !noundef !114
  %i.em = trunc nuw i8 %i.el to i1
  br i1 %i.em, label %_ZN6duckdb10shared_ptrINS_14BaseFileReaderELb1EED2Ev.exit.thread, label %bb.c

_ZN6duckdb10shared_ptrINS_14BaseFileReaderELb1EED2Ev.exit.thread: ; preds = %_ZN6duckdb10shared_ptrINS_14BaseFileReaderELb1EED2Ev.exit, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, %bb.aq, %bb.ap, %bb.i
  %.2 = phi i1 [ true, %bb.aq ], [ false, %bb.i ], [ true, %bb.ap ], [ false, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit ], [ false, %_ZN6duckdb10shared_ptrINS_14BaseFileReaderELb1EED2Ev.exit ]
  %i.en = load i8, ptr %i.b, align 8, !tbaa !2463, !range !129, !noundef !114
  %i.eo = trunc nuw i8 %i.en to i1
  br i1 %i.eo, label %bb.bo, label %_ZNSt11unique_lockISt5mutexED2Ev.exit

bb.bo:                                            ; preds = %_ZN6duckdb10shared_ptrINS_14BaseFileReaderELb1EED2Ev.exit.thread
  %i.ep = load ptr, ptr %4, align 8, !tbaa !2464  ; 2 uses
  %.not.i.i = icmp eq ptr %i.ep, null
  br i1 %.not.i.i, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.eq = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ep) #29 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %_ZN6duckdb10shared_ptrINS_14BaseFileReaderELb1EED2Ev.exit.thread, %bb.bo, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  ret i1 %.2

bb.bq:                                            ; preds = %.loopexit, %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.af, %bb.ar, %bb.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn65.pn = phi { ptr, i32 } [ %i.bs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.cp, %bb.ar ], [ %.pn83, %bb.ah ], [ %i.bs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.bq, %bb.af ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.er = load i8, ptr %i.b, align 8, !tbaa !2463, !range !129, !noundef !114
  %i.es = trunc nuw i8 %i.er to i1
  br i1 %i.es, label %bb.br, label %_ZNSt11unique_lockISt5mutexED2Ev.exit79

bb.br:                                            ; preds = %bb.bq
  %i.et = load ptr, ptr %4, align 8, !tbaa !2464  ; 2 uses
  %.not.i.i78 = icmp eq ptr %i.et, null
  br i1 %.not.i.i78, label %_ZNSt11unique_lockISt5mutexED2Ev.exit79, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.eu = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.et) #29 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit79

_ZNSt11unique_lockISt5mutexED2Ev.exit79:          ; preds = %bb.bq, %bb.br, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  resume { ptr, i32 } %.pn65.pn

bb.bt:                                            ; preds = %bb.ae
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN6duckdb17MultiFileFunctionINS_19DuckDBMultiFileInfoEE14TryGetNextFileERNS_20MultiFileGlobalStateERSt11unique_lockISt5mutexE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(9) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.duckdb::OpenFileInfo", align 8 ; 12 uses
  %3 = alloca %"class.duckdb::unique_ptr.3053", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !22
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !25
  store i8 0, ptr %i.a, align 8, !tbaa !24
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !3395, !nonnull !114, !align !115
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = invoke noundef zeroext i1 @_ZNK6duckdb13MultiFileList4ScanERNS_21MultiFileListScanDataERNS_12OpenFileInfoE(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(12) %i.f, ptr noundef nonnull align 8 dereferenceable(48) %2)
          to label %bb.b unwind label %bb.c       ; 2 uses

bb.b:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.d, label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !3764)
  %i.i = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #32
          to label %.noexc unwind label %bb.j     ; 4 uses

.noexc:                                           ; preds = %bb.d
  invoke void @_ZN6duckdb19MultiFileReaderDataC2ERKNS_12OpenFileInfoE(ptr noundef nonnull align 8 dereferenceable(160) %i.i, ptr noundef nonnull align 8 dereferenceable(48) %2)
          to label %bb.f unwind label %bb.e, !noalias !3764

bb.e:                                             ; preds = %.noexc
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.i) #31, !noalias !3764
  br label %.body

bb.f:                                             ; preds = %.noexc
  store ptr %i.i, ptr %3, align 8, !tbaa !3400, !alias.scope !3764
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !3399 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !3403
  %.not.i.i = icmp eq ptr %i.m, %i.o
  %i.p = ptrtoint ptr %i.i to i64                 ; 2 uses
  br i1 %.not.i.i, label %bb.g, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.f
  store i64 %i.p, ptr %i.m, align 8, !tbaa !3400
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.q, ptr %i.l, align 8, !tbaa !3399
  br label %_ZNSt10unique_ptrIN6duckdb19MultiFileReaderDataESt14default_deleteIS1_EED2Ev.exit

bb.g:                                             ; preds = %bb.f
  %i.r = load ptr, ptr %i.k, align 8, !tbaa !3398 ; 10 uses
  %i.s = ptrtoint ptr %i.m to i64                 ; 3 uses
  %i.t = ptrtoint ptr %i.r to i64                 ; 3 uses
  %i.u = sub i64 %i.s, %i.t                       ; 3 uses
  %i.v = icmp eq i64 %i.u, 9223372036854775800
  br i1 %i.v, label %bb.h, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.139) #30
          to label %.noexc10 unwind label %bb.k

.noexc10:                                         ; preds = %bb.h
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.g
  %i.w = ashr exact i64 %i.u, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.w, i64 1)
  %i.x = add nsw i64 %.sroa.speculated.i.i.i.i, %i.w ; 2 uses
  %i.y = icmp ult i64 %i.x, %i.w
  %i.z = call i64 @llvm.umin.i64(i64 %i.x, i64 1152921504606846975)
  %i.aa = select i1 %i.y, i64 1152921504606846975, i64 %i.z ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.aa, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ab = shl nuw nsw i64 %i.aa, 3
  %i.ac = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #32
          to label %.noexc11 unwind label %bb.k   ; 10 uses

.noexc11:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.u
  store i64 %i.p, ptr %i.ad, align 8, !tbaa !3400
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.r, %i.m
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc11
  %i.ae = sub i64 %i.s, %i.t
  %i.af = add i64 %i.ae, -8                       ; 2 uses
  %i.ag = lshr i64 %i.af, 3
  %i.ah = add nuw nsw i64 %i.ag, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.af, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader22, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.ai = add i64 %i.s, -8
  %i.aj = sub i64 %i.ai, %i.t
  %i.ak = and i64 %i.aj, -8
  %i.al = add i64 %i.ak, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ac, i64 %i.al
  %scevgep18 = getelementptr i8, ptr %i.r, i64 %i.al
  %bound0 = icmp ult ptr %i.ac, %scevgep18
  %bound1 = icmp ult ptr %i.r, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader22, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ah, 4611686018427387900     ; 3 uses
  %i.am = shl i64 %n.vec, 3                       ; 2 uses
  %i.an = getelementptr i8, ptr %i.ac, i64 %i.am  ; 2 uses
  %i.ao = getelementptr i8, ptr %i.r, i64 %i.am
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ap = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ac, i64 %i.ap ; 2 uses
  %next.gep19 = getelementptr i8, ptr %i.r, i64 %i.ap ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3767)
  call void @llvm.experimental.noalias.scope.decl(metadata !3770)
  %i.aq = getelementptr i8, ptr %next.gep19, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep19, align 8, !tbaa !3400, !alias.scope !3772, !noalias !3767
  %wide.load20 = load <2 x i64>, ptr %i.aq, align 8, !tbaa !3400, !alias.scope !3772, !noalias !3767
  %i.ar = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !3400, !alias.scope !3775, !noalias !3772
  store <2 x i64> %wide.load20, ptr %i.ar, align 8, !tbaa !3400, !alias.scope !3775, !noalias !3772
  %i.as = getelementptr i8, ptr %next.gep19, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep19, align 8, !tbaa !3400, !alias.scope !3772, !noalias !3767
  store <2 x ptr> splat (ptr null), ptr %i.as, align 8, !tbaa !3400, !alias.scope !3772, !noalias !3767
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !3777

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader22

.lr.ph.i.i.i.i.i.i.i.preheader22:                 ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ac, %vector.memcheck ], [ %i.ac, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.an, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.r, %vector.memcheck ], [ %i.r, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ao, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader22, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader22 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader22 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3767)
  call void @llvm.experimental.noalias.scope.decl(metadata !3770)
  %i.au = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !3400, !alias.scope !3770, !noalias !3767
  store i64 %i.au, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !3400, !alias.scope !3767, !noalias !3770
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !3400, !alias.scope !3770, !noalias !3767
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.av, %i.m
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !3778

_ZNSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc11
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ac, %.noexc11 ], [ %i.an, %middle.block ], [ %i.aw, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.r) #31
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, %bb.i
  store ptr %i.ac, ptr %i.k, align 8, !tbaa !3398
  store ptr %i.ax, ptr %i.l, align 8, !tbaa !3399
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.aa
  store ptr %i.ay, ptr %i.n, align 8, !tbaa !3403
  br label %_ZNSt10unique_ptrIN6duckdb19MultiFileReaderDataESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb19MultiFileReaderDataESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %bb.l

bb.j:                                             ; preds = %bb.d
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.k:                                             ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.h
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN6duckdb19MultiFileReaderDataESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #29
  br label %.body

.body:                                            ; preds = %bb.j, %bb.e, %bb.k
  %.pn = phi { ptr, i32 } [ %i.ba, %bb.k ], [ %i.az, %bb.j ], [ %i.j, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %bb.s

bb.l:                                             ; preds = %bb.b, %_ZNSt10unique_ptrIN6duckdb19MultiFileReaderDataESt14default_deleteIS1_EED2Ev.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !42 ; 8 uses
  %.not.i.i.i.i12 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i.i12, label %_ZN6duckdb10shared_ptrINS_20ExtendedOpenFileInfoELb1EED2Ev.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 4 uses
  %i.be = load atomic i64, ptr %i.bd acquire, align 8 ; 2 uses
  %i.bf = icmp eq i64 %i.be, 4294967297
  %i.bg = trunc i64 %i.be to i32                  ; 2 uses
  br i1 %i.bf, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.bd, align 8, !tbaa !45
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 12
  store i32 0, ptr %i.bh, align 4, !tbaa !47
  %i.bi = load ptr, ptr %i.bc, align 8, !tbaa !48
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(16) %i.bc) #29, !inline_history !1078
  %i.bl = load ptr, ptr %i.bc, align 8, !tbaa !48
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(16) %i.bc) #29, !inline_history !1078
  br label %_ZN6duckdb10shared_ptrINS_20ExtendedOpenFileInfoELb1EED2Ev.exit.i

bb.o:                                             ; preds = %bb.m
  %i.bo = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i.i.i = icmp eq i8 %i.bo, 0
  br i1 %.not.i.i.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bp = add nsw i32 %i.bg, -1
  store i32 %i.bp, ptr %i.bd, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.bq = atomicrmw volatile add ptr %i.bd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i.i = phi i32 [ %i.bg, %bb.p ], [ %i.bq, %bb.q ]
  %i.br = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.br, label %bb.r, label %_ZN6duckdb10shared_ptrINS_20ExtendedOpenFileInfoELb1EED2Ev.exit.i, !prof !51

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bc) #29
  br label %_ZN6duckdb10shared_ptrINS_20ExtendedOpenFileInfoELb1EED2Ev.exit.i

_ZN6duckdb10shared_ptrINS_20ExtendedOpenFileInfoELb1EED2Ev.exit.i: ; preds = %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.n, %bb.l
  %i.bs = load ptr, ptr %2, align 8, !tbaa !18    ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.a
  br i1 %i.bt, label %_ZN6duckdb12OpenFileInfoD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN6duckdb10shared_ptrINS_20ExtendedOpenFileInfoELb1EED2Ev.exit.i
  call void @_ZdlPv(ptr noundef %i.bs) #31
  br label %_ZN6duckdb12OpenFileInfoD2Ev.exit

_ZN6duckdb12OpenFileInfoD2Ev.exit:                ; preds = %_ZN6duckdb10shared_ptrINS_20ExtendedOpenFileInfoELb1EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret i1 %i.g

bb.s:                                             ; preds = %.body, %bb.c
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.h, %bb.c ]
  call void @_ZN6duckdb12OpenFileInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17MultiFileFunctionINS_19DuckDBMultiFileInfoEE23InitializeFileScanStateERNS_13ClientContextERNS_19MultiFileReaderDataERNS_19MultiFileLocalStateERNS_6vectorImLb1ESaImEEE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(160) %1, ptr noundef nonnull align 8 dereferenceable(208) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.duckdb::vector.96", align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.b = ptrtoint ptr %1 to i64
  store i64 %i.b, ptr %i.a, align 8, !tbaa !3400
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.d = tail call noundef nonnull align 8 dereferenceable(280) ptr @_ZNK6duckdb10shared_ptrINS_14BaseFileReaderELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 104 ; 3 uses
  %i.f = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_14BaseFileReaderELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 112 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !3539
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !1077
  %.not101 = icmp eq ptr %i.i, %i.j
  br i1 %.not101, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 240
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 216
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 224
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 232
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 184
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 160
end_hunk_7
begin_hunk_8_@_ZN6duckdb17MultiFileFunctionINS_12_GLOBAL__N_119DirectMultiFileInfoINS1_17ReadBlobOperationEEEE19MultiFileInitGlobalERNS_13ClientContextERNS_22TableFunctionInitInputE:bb.a

bb.as:                                            ; preds = %bb.ar
  %i.fp = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_14BaseFileReaderELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fn)
          to label %bb.at unwind label %bb.y      ; 2 uses

bb.at:                                            ; preds = %bb.as
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #29
  invoke void @_ZNK6duckdb13MultiFileList12GetFirstFileEv(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::OpenFileInfo") align 8 %12, ptr noundef nonnull align 8 dereferenceable(8) %i.bb)
          to label %bb.au unwind label %bb.bj

bb.au:                                            ; preds = %bb.at
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fp, i64 32
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !25 ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !25
  %i.fv = icmp eq i64 %i.fs, %i.fu
  br i1 %i.fv, label %bb.av, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

bb.av:                                            ; preds = %bb.au
  %i.fw = icmp eq i64 %i.fs, 0
  br i1 %i.fw, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fx = load ptr, ptr %12, align 8, !tbaa !18
  %i.fy = load ptr, ptr %i.fq, align 8, !tbaa !18
  %bcmp.i = call i32 @bcmp(ptr %i.fy, ptr %i.fx, i64 %i.fs)
  %i.fz = icmp eq i32 %bcmp.i, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.au, %bb.av, %bb.aw
  %i.ga = phi i1 [ false, %bb.au ], [ %i.fz, %bb.aw ], [ true, %bb.av ]
  %i.gb = getelementptr inbounds nuw i8, ptr %12, i64 40
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !42 ; 8 uses
  %.not.i.i.i.i183 = icmp eq ptr %i.gc, null
  br i1 %.not.i.i.i.i183, label %_ZN6duckdb10shared_ptrINS_20ExtendedOpenFileInfoELb1EED2Ev.exit.i, label %bb.ax

bb.ax:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 8 ; 4 uses
  %i.ge = load atomic i64, ptr %i.gd acquire, align 8 ; 2 uses
  %i.gf = icmp eq i64 %i.ge, 4294967297
  %i.gg = trunc i64 %i.ge to i32                  ; 2 uses
  br i1 %i.gf, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  store i32 0, ptr %i.gd, align 8, !tbaa !45
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gc, i64 12
  store i32 0, ptr %i.gh, align 4, !tbaa !47
  %i.gi = load ptr, ptr %i.gc, align 8, !tbaa !48
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  %i.gk = load ptr, ptr %i.gj, align 8
  call void %i.gk(ptr noundef nonnull align 8 dereferenceable(16) %i.gc) #29, !inline_history !1078
  %i.gl = load ptr, ptr %i.gc, align 8, !tbaa !48
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 24
  %i.gn = load ptr, ptr %i.gm, align 8
  call void %i.gn(ptr noundef nonnull align 8 dereferenceable(16) %i.gc) #29, !inline_history !1078
  br label %_ZN6duckdb10shared_ptrINS_20ExtendedOpenFileInfoELb1EED2Ev.exit.i

bb.az:                                            ; preds = %bb.ax
  %i.go = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i.i.i184 = icmp eq i8 %i.go, 0
  br i1 %.not.i.i.i.i.i184, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gp = add nsw i32 %i.gg, -1
  store i32 %i.gp, ptr %i.gd, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.bb:                                            ; preds = %bb.az
  %i.gq = atomicrmw volatile add ptr %i.gd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.bb, %bb.ba
  %.0.i.i.i.i.i.i = phi i32 [ %i.gg, %bb.ba ], [ %i.gq, %bb.bb ]
  %i.gr = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.gr, label %bb.bc, label %_ZN6duckdb10shared_ptrINS_20ExtendedOpenFileInfoELb1EED2Ev.exit.i, !prof !51

bb.bc:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gc) #29
  br label %_ZN6duckdb10shared_ptrINS_20ExtendedOpenFileInfoELb1EED2Ev.exit.i

_ZN6duckdb10shared_ptrINS_20ExtendedOpenFileInfoELb1EED2Ev.exit.i: ; preds = %bb.bc, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.ay, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.gs = load ptr, ptr %12, align 8, !tbaa !18   ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.gu = icmp eq ptr %i.gs, %i.gt
  br i1 %i.gu, label %_ZN6duckdb12OpenFileInfoD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN6duckdb10shared_ptrINS_20ExtendedOpenFileInfoELb1EED2Ev.exit.i
  call void @_ZdlPv(ptr noundef %i.gs) #31
  br label %_ZN6duckdb12OpenFileInfoD2Ev.exit

_ZN6duckdb12OpenFileInfoD2Ev.exit:                ; preds = %_ZN6duckdb10shared_ptrINS_20ExtendedOpenFileInfoELb1EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  br i1 %i.ga, label %bb.bd, label %bb.bm

bb.bd:                                            ; preds = %_ZN6duckdb12OpenFileInfoD2Ev.exit
  %i.gv = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_20MultiFileGlobalStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.be unwind label %bb.y      ; 3 uses

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !3830)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.gw = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #32
          to label %.noexc186 unwind label %bb.bk ; 13 uses

.noexc186:                                        ; preds = %bb.be
  %i.gx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.gy = load <2 x ptr>, ptr %i.fn, align 8, !tbaa !166, !noalias !3830
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fn, i8 0, i64 16, i1 false)
  store ptr null, ptr %i.gx, align 8, !tbaa !42, !noalias !3830
  store <2 x ptr> %i.gy, ptr %i.gw, align 8, !tbaa !166, !noalias !3830
  store ptr null, ptr %3, align 8, !tbaa !2032, !noalias !3830
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gw, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gz, i8 0, i64 16, i1 false), !noalias !3830
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gw, i64 32
  store i8 2, ptr %i.ha, align 8, !tbaa !3419, !noalias !3830
  call void @llvm.experimental.noalias.scope.decl(metadata !3833)
  %i.hb = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #32
          to label %bb.bf unwind label %.body.i185, !noalias !3830 ; 2 uses

.body.i185:                                       ; preds = %.noexc186
  %i.hc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb8weak_ptrINS_14BaseFileReaderELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.gz) #29, !noalias !3830
  call void @_ZN6duckdb10shared_ptrINS_14BaseFileReaderELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(160) %i.gw) #29, !noalias !3830
  call void @_ZN6duckdb10shared_ptrINS_14BaseFileReaderELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #29, !noalias !3830
  call void @_ZdlPv(ptr noundef nonnull %i.gw) #31, !noalias !3830
  br label %.body187

bb.bf:                                            ; preds = %.noexc186
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gw, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.hb, i8 0, i64 40, i1 false), !noalias !3836
  store ptr %i.hb, ptr %i.hd, align 8, !tbaa !3444, !alias.scope !3833, !noalias !3830
  %i.he = getelementptr inbounds nuw i8, ptr %i.gw, i64 48
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gw, i64 112
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gw, i64 128 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.he, i8 0, i64 64, i1 false), !noalias !3830
  store ptr %i.hg, ptr %i.hf, align 8, !tbaa !22, !noalias !3830
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gw, i64 120
  store i64 0, ptr %i.hh, align 8, !tbaa !25, !noalias !3830
  store i8 0, ptr %i.hg, align 8, !tbaa !24, !noalias !3830
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gw, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hi, i8 0, i64 16, i1 false), !noalias !3830
  store ptr %i.gw, ptr %13, align 8, !tbaa !3400, !alias.scope !3830
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gv, i64 112 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gv, i64 120 ; 3 uses
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !3399 ; 6 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gv, i64 128 ; 2 uses
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !3403
  %.not.i.i189 = icmp eq ptr %i.hl, %i.hn
  %i.ho = ptrtoint ptr %i.gw to i64               ; 2 uses
  br i1 %.not.i.i189, label %bb.bg, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit204.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit204.thread: ; preds = %bb.bf
  store i64 %i.ho, ptr %i.hl, align 8, !tbaa !3400
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  store ptr %i.hp, ptr %i.hk, align 8, !tbaa !3399
  br label %_ZNSt10unique_ptrIN6duckdb19MultiFileReaderDataESt14default_deleteIS1_EED2Ev.exit207

bb.bg:                                            ; preds = %bb.bf
  %i.hq = load ptr, ptr %i.hj, align 8, !tbaa !3398 ; 10 uses
  %i.hr = ptrtoint ptr %i.hl to i64               ; 3 uses
  %i.hs = ptrtoint ptr %i.hq to i64               ; 3 uses
  %i.ht = sub i64 %i.hr, %i.hs                    ; 3 uses
  %i.hu = icmp eq i64 %i.ht, 9223372036854775800
  br i1 %i.hu, label %bb.bh, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i190

bb.bh:                                            ; preds = %bb.bg
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.139) #30
          to label %.noexc202 unwind label %bb.bl

.noexc202:                                        ; preds = %bb.bh
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i190: ; preds = %bb.bg
  %i.hv = ashr exact i64 %i.ht, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i191 = call i64 @llvm.umax.i64(i64 %i.hv, i64 1)
  %i.hw = add nsw i64 %.sroa.speculated.i.i.i.i191, %i.hv ; 2 uses
  %i.hx = icmp ult i64 %i.hw, %i.hv
  %i.hy = call i64 @llvm.umin.i64(i64 %i.hw, i64 1152921504606846975)
  %i.hz = select i1 %i.hx, i64 1152921504606846975, i64 %i.hy ; 3 uses
  %.not.i.i.i.i192 = icmp ne i64 %i.hz, 0
  call void @llvm.assume(i1 %.not.i.i.i.i192)
  %i.ia = shl nuw nsw i64 %i.hz, 3
  %i.ib = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ia) #32
          to label %.noexc203 unwind label %bb.bl ; 10 uses

.noexc203:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i190
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 %i.ht
  store i64 %i.ho, ptr %i.ic, align 8, !tbaa !3400
  %.not10.i.i.i.i.i.i.i193 = icmp eq ptr %i.hq, %i.hl
  br i1 %.not10.i.i.i.i.i.i.i193, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i198, label %.lr.ph.i.i.i.i.i.i.i194.preheader

.lr.ph.i.i.i.i.i.i.i194.preheader:                ; preds = %.noexc203
  %i.id = sub i64 %i.hr, %i.hs
  %i.ie = add i64 %i.id, -8                       ; 2 uses
  %i.if = lshr i64 %i.ie, 3
  %i.ig = add nuw nsw i64 %i.if, 1                ; 2 uses
  %min.iters.check463 = icmp ult i64 %i.ie, 136
  br i1 %min.iters.check463, label %.lr.ph.i.i.i.i.i.i.i194.preheader484, label %vector.memcheck456

vector.memcheck456:                               ; preds = %.lr.ph.i.i.i.i.i.i.i194.preheader
  %i.ih = add i64 %i.hr, -8
  %i.ii = sub i64 %i.ih, %i.hs
  %i.ij = and i64 %i.ii, -8
  %i.ik = add i64 %i.ij, 8                        ; 2 uses
  %scevgep457 = getelementptr i8, ptr %i.ib, i64 %i.ik
  %scevgep458 = getelementptr i8, ptr %i.hq, i64 %i.ik
  %bound0459 = icmp ult ptr %i.ib, %scevgep458
  %bound1460 = icmp ult ptr %i.hq, %scevgep457
  %found.conflict461 = and i1 %bound0459, %bound1460
  br i1 %found.conflict461, label %.lr.ph.i.i.i.i.i.i.i194.preheader484, label %vector.ph464

vector.ph464:                                     ; preds = %vector.memcheck456
  %n.vec466 = and i64 %i.ig, 4611686018427387900  ; 3 uses
  %i.il = shl i64 %n.vec466, 3                    ; 2 uses
  %i.im = getelementptr i8, ptr %i.ib, i64 %i.il  ; 2 uses
  %i.in = getelementptr i8, ptr %i.hq, i64 %i.il
  br label %vector.body467

vector.body467:                                   ; preds = %vector.body467, %vector.ph464
  %index468 = phi i64 [ 0, %vector.ph464 ], [ %index.next473, %vector.body467 ] ; 2 uses
  %i.io = shl i64 %index468, 3                    ; 2 uses
  %next.gep469 = getelementptr i8, ptr %i.ib, i64 %i.io ; 2 uses
  %next.gep470 = getelementptr i8, ptr %i.hq, i64 %i.io ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3837)
  call void @llvm.experimental.noalias.scope.decl(metadata !3840)
  %i.ip = getelementptr i8, ptr %next.gep470, i64 16
  %wide.load471 = load <2 x i64>, ptr %next.gep470, align 8, !tbaa !3400, !alias.scope !3842, !noalias !3837
  %wide.load472 = load <2 x i64>, ptr %i.ip, align 8, !tbaa !3400, !alias.scope !3842, !noalias !3837
  %i.iq = getelementptr i8, ptr %next.gep469, i64 16
  store <2 x i64> %wide.load471, ptr %next.gep469, align 8, !tbaa !3400, !alias.scope !3845, !noalias !3842
  store <2 x i64> %wide.load472, ptr %i.iq, align 8, !tbaa !3400, !alias.scope !3845, !noalias !3842
  %i.ir = getelementptr i8, ptr %next.gep470, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep470, align 8, !tbaa !3400, !alias.scope !3842, !noalias !3837
  store <2 x ptr> splat (ptr null), ptr %i.ir, align 8, !tbaa !3400, !alias.scope !3842, !noalias !3837
  %index.next473 = add nuw i64 %index468, 4       ; 2 uses
  %i.is = icmp eq i64 %index.next473, %n.vec466
  br i1 %i.is, label %middle.block474, label %vector.body467, !llvm.loop !3847

middle.block474:                                  ; preds = %vector.body467
  %cmp.n475 = icmp eq i64 %i.ig, %n.vec466
  br i1 %cmp.n475, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i198, label %.lr.ph.i.i.i.i.i.i.i194.preheader484

.lr.ph.i.i.i.i.i.i.i194.preheader484:             ; preds = %vector.memcheck456, %.lr.ph.i.i.i.i.i.i.i194.preheader, %middle.block474
  %.012.i.i.i.i.i.i.i195.ph = phi ptr [ %i.ib, %vector.memcheck456 ], [ %i.ib, %.lr.ph.i.i.i.i.i.i.i194.preheader ], [ %i.im, %middle.block474 ]
  %.0911.i.i.i.i.i.i.i196.ph = phi ptr [ %i.hq, %vector.memcheck456 ], [ %i.hq, %.lr.ph.i.i.i.i.i.i.i194.preheader ], [ %i.in, %middle.block474 ]
  br label %.lr.ph.i.i.i.i.i.i.i194

.lr.ph.i.i.i.i.i.i.i194:                          ; preds = %.lr.ph.i.i.i.i.i.i.i194.preheader484, %.lr.ph.i.i.i.i.i.i.i194
  %.012.i.i.i.i.i.i.i195 = phi ptr [ %i.iv, %.lr.ph.i.i.i.i.i.i.i194 ], [ %.012.i.i.i.i.i.i.i195.ph, %.lr.ph.i.i.i.i.i.i.i194.preheader484 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i196 = phi ptr [ %i.iu, %.lr.ph.i.i.i.i.i.i.i194 ], [ %.0911.i.i.i.i.i.i.i196.ph, %.lr.ph.i.i.i.i.i.i.i194.preheader484 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3837)
  call void @llvm.experimental.noalias.scope.decl(metadata !3840)
  %i.it = load i64, ptr %.0911.i.i.i.i.i.i.i196, align 8, !tbaa !3400, !alias.scope !3840, !noalias !3837
  store i64 %i.it, ptr %.012.i.i.i.i.i.i.i195, align 8, !tbaa !3400, !alias.scope !3837, !noalias !3840
  store ptr null, ptr %.0911.i.i.i.i.i.i.i196, align 8, !tbaa !3400, !alias.scope !3840, !noalias !3837
  %i.iu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i196, i64 8 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i195, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i197 = icmp eq ptr %i.iu, %i.hl
  br i1 %.not.i.i.i.i.i.i.i197, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i198, label %.lr.ph.i.i.i.i.i.i.i194, !llvm.loop !3848

_ZNSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i198: ; preds = %.lr.ph.i.i.i.i.i.i.i194, %middle.block474, %.noexc203
  %.0.lcssa.i.i.i.i.i.i.i199 = phi ptr [ %i.ib, %.noexc203 ], [ %i.im, %middle.block474 ], [ %i.iv, %.lr.ph.i.i.i.i.i.i.i194 ]
  %i.iw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i199, i64 8
  %.not.i23.i.i.i200 = icmp eq ptr %i.hq, null
  br i1 %.not.i23.i.i.i200, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit204, label %bb.bi

bb.bi:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i198
  call void @_ZdlPv(ptr noundef nonnull %i.hq) #31
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit204

_ZNSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit204: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i198, %bb.bi
  store ptr %i.ib, ptr %i.hj, align 8, !tbaa !3398
  store ptr %i.iw, ptr %i.hk, align 8, !tbaa !3399
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %i.ib, i64 %i.hz
  store ptr %i.ix, ptr %i.hm, align 8, !tbaa !3403
  br label %_ZNSt10unique_ptrIN6duckdb19MultiFileReaderDataESt14default_deleteIS1_EED2Ev.exit207

_ZNSt10unique_ptrIN6duckdb19MultiFileReaderDataESt14default_deleteIS1_EED2Ev.exit207: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit204, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit204.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  br label %bb.bm

bb.bj:                                            ; preds = %bb.at
  %i.iy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  br label %.body

bb.bk:                                            ; preds = %bb.be
  %i.iz = landingpad { ptr, i32 }
          cleanup
  br label %.body187

bb.bl:                                            ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i190, %bb.bh
  %i.ja = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN6duckdb19MultiFileReaderDataESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %13) #29
  br label %.body187

.body187:                                         ; preds = %bb.bk, %.body.i185, %bb.bl
  %.pn114 = phi { ptr, i32 } [ %i.ja, %bb.bl ], [ %i.iz, %bb.bk ], [ %i.hc, %.body.i185 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  br label %.body

bb.bm:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit182, %bb.am, %_ZN6duckdb12OpenFileInfoD2Ev.exit, %_ZNSt10unique_ptrIN6duckdb19MultiFileReaderDataESt14default_deleteIS1_EED2Ev.exit207, %bb.ar, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit
  %i.jb = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_20MultiFileGlobalStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.bn unwind label %bb.y

bb.bn:                                            ; preds = %bb.bm
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 96
  store atomic i64 0, ptr %i.jc seq_cst, align 8
  %i.jd = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_20MultiFileGlobalStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.bo unwind label %bb.y

bb.bo:                                            ; preds = %bb.bn
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 200
  %i.jf = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6duckdb11ColumnIndexESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.je, ptr noundef nonnull align 8 dereferenceable(24) %i.bp)
          to label %_ZN6duckdb6vectorINS_11ColumnIndexELb1ESaIS1_EEaSERKS3_.exit unwind label %bb.y, !inline_history !3457 ; 0 uses

_ZN6duckdb6vectorINS_11ColumnIndexELb1ESaIS1_EEaSERKS3_.exit: ; preds = %bb.bo
  %i.jg = load ptr, ptr %i.c, align 8, !tbaa !263
  %i.jh = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_20MultiFileGlobalStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.bp unwind label %bb.bz

bb.bp:                                            ; preds = %_ZN6duckdb6vectorINS_11ColumnIndexELb1ESaIS1_EEaSERKS3_.exit
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 224
  %i.jj = ptrtoint ptr %i.jg to i64
  store i64 %i.jj, ptr %i.ji, align 8, !tbaa !1067
  %i.jk = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_20MultiFileGlobalStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.bq unwind label %bb.y

bb.bq:                                            ; preds = %bb.bp
  %i.jl = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jk, i64 248
  %i.jn = load i64, ptr %i.jl, align 8, !tbaa !1988
  store i64 %i.jn, ptr %i.jm, align 8, !tbaa !1988
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #29
  %i.jo = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  %i.jp = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_24MultiFileReaderInterfaceESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.jo)
          to label %bb.br unwind label %bb.ca     ; 2 uses

bb.br:                                            ; preds = %bb.bq
  %i.jq = invoke noundef nonnull align 8 dereferenceable(256) ptr @_ZNK6duckdb10unique_ptrINS_20MultiFileGlobalStateESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.bs unwind label %bb.ca

bb.bs:                                            ; preds = %bb.br
  %i.jr = load ptr, ptr %i.jp, align 8, !tbaa !48
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 96
  %i.jt = load ptr, ptr %i.js, align 8
  invoke void %i.jt(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.559") align 8 %14, ptr noundef nonnull align 8 dereferenceable(8) %i.jp, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull align 8 dereferenceable(480) %i.a, ptr noundef nonnull align 8 dereferenceable(256) %i.jq)
          to label %bb.bt unwind label %bb.ca

bb.bt:                                            ; preds = %bb.bs
  %i.ju = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_20MultiFileGlobalStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.bu unwind label %bb.cb

bb.bu:                                            ; preds = %bb.bt
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 240 ; 2 uses
  %i.jw = load ptr, ptr %14, align 8, !tbaa !1877
  store ptr null, ptr %14, align 8, !tbaa !1877
  %i.jx = load ptr, ptr %i.jv, align 8, !tbaa !1877 ; 3 uses
  store ptr %i.jw, ptr %i.jv, align 8, !tbaa !1877
  %.not.i.i.i.i.i209 = icmp eq ptr %i.jx, null
  br i1 %.not.i.i.i.i.i209, label %_ZNSt10unique_ptrIN6duckdb24GlobalTableFunctionStateESt14default_deleteIS1_EED2Ev.exit, label %_ZN6duckdb10unique_ptrINS_24GlobalTableFunctionStateESt14default_deleteIS1_ELb1EEaSEOS4_.exit

_ZN6duckdb10unique_ptrINS_24GlobalTableFunctionStateESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %bb.bu
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !48
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 8
  %i.ka = load ptr, ptr %i.jz, align 8
  call void %i.ka(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.jx) #29, !inline_history !1974
  %.pr298 = load ptr, ptr %14, align 8, !tbaa !1877 ; 3 uses
  %.not.i210 = icmp eq ptr %.pr298, null
  br i1 %.not.i210, label %_ZNSt10unique_ptrIN6duckdb24GlobalTableFunctionStateESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb24GlobalTableFunctionStateEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb24GlobalTableFunctionStateEEclEPS1_.exit.i: ; preds = %_ZN6duckdb10unique_ptrINS_24GlobalTableFunctionStateESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  %i.kb = load ptr, ptr %.pr298, align 8, !tbaa !48
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 8
  %i.kd = load ptr, ptr %i.kc, align 8
  call void %i.kd(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.pr298) #29, !inline_history !1878
  br label %_ZNSt10unique_ptrIN6duckdb24GlobalTableFunctionStateESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb24GlobalTableFunctionStateESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.bu, %_ZN6duckdb10unique_ptrINS_24GlobalTableFunctionStateESt14default_deleteIS1_ELb1EEaSEOS4_.exit, %_ZNKSt14default_deleteIN6duckdb24GlobalTableFunctionStateEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  %i.ke = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN6duckdb13TaskScheduler12GetSchedulerERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(512) %1)
          to label %bb.bv unwind label %bb.y

bb.bv:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb24GlobalTableFunctionStateESt14default_deleteIS1_EED2Ev.exit
  %i.kf = invoke noundef i32 @_ZN6duckdb13TaskScheduler15NumberOfThreadsEv(ptr noundef nonnull align 8 dereferenceable(124) %i.ke)
          to label %bb.bw unwind label %bb.y

bb.bw:                                            ; preds = %bb.bv
  %i.kg = invoke noundef i64 @_ZN6duckdb15NumericCastImplImiLb0EE7ConvertEi(i32 noundef %i.kf)
          to label %_ZN6duckdb11NumericCastImivEET_T0_.exit unwind label %bb.y

_ZN6duckdb11NumericCastImivEET_T0_.exit:          ; preds = %bb.bw
  %i.kh = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_20MultiFileGlobalStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.bx unwind label %bb.y

end_hunk_8
begin_hunk_9_@_ZN6duckdb17MultiFileFunctionINS_12_GLOBAL__N_119DirectMultiFileInfoINS1_17ReadBlobOperationEEEE22TryInitializeNextBatchERNS_13ClientContextERKNS_17MultiFileBindDataERNS_19MultiFileLocalStateERNS_20MultiFileGlobalStateE:bb.a
  unreachable

bb.fn:                                            ; preds = %bb.fm
  store i8 1, ptr %i.b, align 8, !tbaa !2463
  %i.ph = load atomic i64, ptr %i.g seq_cst, align 8
  %i.pi = load ptr, ptr %i.i, align 8, !tbaa !3399
  %i.pj = load ptr, ptr %i.h, align 8, !tbaa !3398
  %i.pk = ptrtoint ptr %i.pi to i64
  %i.pl = ptrtoint ptr %i.pj to i64
  %i.pm = sub i64 %i.pk, %i.pl
  %i.pn = ashr exact i64 %i.pm, 3
  %i.po = icmp ult i64 %i.ph, %i.pn
  br i1 %i.po, label %bb.fo, label %_ZNSt11unique_lockISt5mutexED2Ev.exit17.thread.i

bb.fo:                                            ; preds = %bb.fn
  %i.pp = load atomic i64, ptr %i.g seq_cst, align 8
  %i.pq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %i.pp)
          to label %bb.fp unwind label %_ZNSt11unique_lockISt5mutexED2Ev.exit.loopexit.i

bb.fp:                                            ; preds = %bb.fo
  %i.pr = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_19MultiFileReaderDataESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.pq)
          to label %bb.fq unwind label %_ZNSt11unique_lockISt5mutexED2Ev.exit.loopexit.i

bb.fq:                                            ; preds = %bb.fp
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 32
  %i.pt = load i8, ptr %i.ps, align 8, !tbaa !3419
  %.not.i110 = icmp eq i8 %i.pt, 1
  br i1 %.not.i110, label %_ZNSt11unique_lockISt5mutexED2Ev.exit17.i, label %_ZNSt11unique_lockISt5mutexED2Ev.exit17.thread.i

_ZNSt11unique_lockISt5mutexED2Ev.exit.loopexit.i: ; preds = %bb.fp, %bb.fo
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit.i108

_ZNSt11unique_lockISt5mutexED2Ev.exit.loopexit.split-lp.i: ; preds = %.invoke463
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit.i108

_ZNSt11unique_lockISt5mutexED2Ev.exit.i108:       ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit.loopexit.split-lp.i, %_ZNSt11unique_lockISt5mutexED2Ev.exit.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %_ZNSt11unique_lockISt5mutexED2Ev.exit.loopexit.i ], [ %lpad.loopexit.split-lp.i, %_ZNSt11unique_lockISt5mutexED2Ev.exit.loopexit.split-lp.i ]
  %i.pu = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.oy) #29 ; 0 uses
  br label %.body101

_ZNSt11unique_lockISt5mutexED2Ev.exit17.thread.i: ; preds = %bb.fq, %bb.fn
  %i.pv = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.oy) #29 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_14BaseFileReaderELb1EED2Ev.exit

_ZNSt11unique_lockISt5mutexED2Ev.exit17.i:        ; preds = %bb.fq
  %i.pw = load i8, ptr %i.d, align 8, !tbaa !3518, !range !129, !noundef !114
  %i.px = trunc nuw i8 %i.pw to i1
  %i.py = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.oy) #29 ; 0 uses
  br i1 %i.px, label %_ZN6duckdb10shared_ptrINS_14BaseFileReaderELb1EED2Ev.exit, label %bb.fk

_ZN6duckdb10shared_ptrINS_14BaseFileReaderELb1EED2Ev.exit: ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit17.i, %_ZNSt11unique_lockISt5mutexED2Ev.exit17.thread.i, %bb.fi, %_ZN6duckdb8weak_ptrINS_14BaseFileReaderELb1EEaSIS1_TnNSt9enable_ifIXsr17compatible_with_tIT_S1_EE5valueEiE4typeELi0EEERS2_RKNS_10shared_ptrIS5_Lb1EEE.exit, %bb.cq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i79, %bb.cu, %.loopexit139, %bb.cv
  %i.pz = load i8, ptr %i.d, align 8, !tbaa !3518, !range !129, !noundef !114
  %i.qa = trunc nuw i8 %i.pz to i1
  br i1 %i.qa, label %_ZN6duckdb10shared_ptrINS_14BaseFileReaderELb1EED2Ev.exit.thread, label %bb.c

_ZN6duckdb10shared_ptrINS_14BaseFileReaderELb1EED2Ev.exit.thread: ; preds = %_ZN6duckdb10shared_ptrINS_14BaseFileReaderELb1EED2Ev.exit, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, %_ZN6duckdb17MultiFileFunctionINS_12_GLOBAL__N_119DirectMultiFileInfoINS1_17ReadBlobOperationEEEE23InitializeFileScanStateERNS_13ClientContextERNS_19MultiFileReaderDataERNS_19MultiFileLocalStateERNS_6vectorImLb1ESaImEEE.exit, %bb.ao, %bb.i
  %.2 = phi i1 [ true, %_ZN6duckdb17MultiFileFunctionINS_12_GLOBAL__N_119DirectMultiFileInfoINS1_17ReadBlobOperationEEEE23InitializeFileScanStateERNS_13ClientContextERNS_19MultiFileReaderDataERNS_19MultiFileLocalStateERNS_6vectorImLb1ESaImEEE.exit ], [ false, %bb.i ], [ true, %bb.ao ], [ false, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit ], [ false, %_ZN6duckdb10shared_ptrINS_14BaseFileReaderELb1EED2Ev.exit ]
  %i.qb = load i8, ptr %i.b, align 8, !tbaa !2463, !range !129, !noundef !114
  %i.qc = trunc nuw i8 %i.qb to i1
  br i1 %i.qc, label %bb.fr, label %_ZNSt11unique_lockISt5mutexED2Ev.exit

bb.fr:                                            ; preds = %_ZN6duckdb10shared_ptrINS_14BaseFileReaderELb1EED2Ev.exit.thread
  %i.qd = load ptr, ptr %10, align 8, !tbaa !2464 ; 2 uses
  %.not.i.i120 = icmp eq ptr %i.qd, null
  br i1 %.not.i.i120, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.qe = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.qd) #29 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %_ZN6duckdb10shared_ptrINS_14BaseFileReaderELb1EED2Ev.exit.thread, %bb.fr, %bb.fs
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  ret i1 %.2

.body101:                                         ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %.loopexit140, %.loopexit.split-lp141, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.db, %_ZNSt11unique_lockISt5mutexED2Ev.exit102.i, %bb.cd, %bb.cc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt11unique_lockISt5mutexED2Ev.exit.i108, %bb.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn65.pn = phi { ptr, i32 } [ %i.ja, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.bz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.pn127, %bb.ag ], [ %i.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn41.pn.pn.pn.i, %bb.cc ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp141 ], [ %lpad.phi.i, %_ZNSt11unique_lockISt5mutexED2Ev.exit.i108 ], [ %i.he, %bb.cd ], [ %.pn78.i, %_ZNSt11unique_lockISt5mutexED2Ev.exit102.i ], [ %.pn5.i, %bb.db ], [ %i.ja, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %lpad.loopexit142, %.loopexit140 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit136, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit144, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp145, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.qf = load i8, ptr %i.b, align 8, !tbaa !2463, !range !129, !noundef !114
  %i.qg = trunc nuw i8 %i.qf to i1
  br i1 %i.qg, label %bb.ft, label %_ZNSt11unique_lockISt5mutexED2Ev.exit123

bb.ft:                                            ; preds = %.body101
  %i.qh = load ptr, ptr %10, align 8, !tbaa !2464 ; 2 uses
  %.not.i.i122 = icmp eq ptr %i.qh, null
  br i1 %.not.i.i122, label %_ZNSt11unique_lockISt5mutexED2Ev.exit123, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.qi = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.qh) #29 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit123

_ZNSt11unique_lockISt5mutexED2Ev.exit123:         ; preds = %.body101, %bb.ft, %bb.fu
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  resume { ptr, i32 } %.pn65.pn

bb.fv:                                            ; preds = %bb.ae
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN6duckdb17MultiFileFunctionINS_12_GLOBAL__N_119DirectMultiFileInfoINS1_17ReadBlobOperationEEEE14TryGetNextFileERNS_20MultiFileGlobalStateERSt11unique_lockISt5mutexE(ptr noundef nonnull align 8 dereferenceable(256) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.duckdb::OpenFileInfo", align 8 ; 12 uses
  %2 = alloca %"class.duckdb::unique_ptr.3053", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store ptr %i.a, ptr %1, align 8, !tbaa !22
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !25
  store i8 0, ptr %i.a, align 8, !tbaa !24
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !3395, !nonnull !114, !align !115
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = invoke noundef zeroext i1 @_ZNK6duckdb13MultiFileList4ScanERNS_21MultiFileListScanDataERNS_12OpenFileInfoE(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(12) %i.f, ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.b unwind label %bb.c       ; 2 uses

bb.b:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.d, label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !3873)
  %i.i = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #32
          to label %.noexc unwind label %bb.j     ; 4 uses

.noexc:                                           ; preds = %bb.d
  invoke void @_ZN6duckdb19MultiFileReaderDataC2ERKNS_12OpenFileInfoE(ptr noundef nonnull align 8 dereferenceable(160) %i.i, ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.f unwind label %bb.e, !noalias !3873

bb.e:                                             ; preds = %.noexc
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.i) #31, !noalias !3873
  br label %.body

bb.f:                                             ; preds = %.noexc
  store ptr %i.i, ptr %2, align 8, !tbaa !3400, !alias.scope !3873
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !3399 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !3403
  %.not.i.i = icmp eq ptr %i.m, %i.o
  %i.p = ptrtoint ptr %i.i to i64                 ; 2 uses
  br i1 %.not.i.i, label %bb.g, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.f
  store i64 %i.p, ptr %i.m, align 8, !tbaa !3400
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.q, ptr %i.l, align 8, !tbaa !3399
  br label %_ZNSt10unique_ptrIN6duckdb19MultiFileReaderDataESt14default_deleteIS1_EED2Ev.exit

bb.g:                                             ; preds = %bb.f
  %i.r = load ptr, ptr %i.k, align 8, !tbaa !3398 ; 10 uses
  %i.s = ptrtoint ptr %i.m to i64                 ; 3 uses
  %i.t = ptrtoint ptr %i.r to i64                 ; 3 uses
  %i.u = sub i64 %i.s, %i.t                       ; 3 uses
  %i.v = icmp eq i64 %i.u, 9223372036854775800
  br i1 %i.v, label %bb.h, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.139) #30
          to label %.noexc10 unwind label %bb.k

.noexc10:                                         ; preds = %bb.h
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.g
  %i.w = ashr exact i64 %i.u, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.w, i64 1)
  %i.x = add nsw i64 %.sroa.speculated.i.i.i.i, %i.w ; 2 uses
  %i.y = icmp ult i64 %i.x, %i.w
  %i.z = call i64 @llvm.umin.i64(i64 %i.x, i64 1152921504606846975)
  %i.aa = select i1 %i.y, i64 1152921504606846975, i64 %i.z ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.aa, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ab = shl nuw nsw i64 %i.aa, 3
  %i.ac = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #32
          to label %.noexc11 unwind label %bb.k   ; 10 uses

.noexc11:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.u
  store i64 %i.p, ptr %i.ad, align 8, !tbaa !3400
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.r, %i.m
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc11
  %i.ae = sub i64 %i.s, %i.t
  %i.af = add i64 %i.ae, -8                       ; 2 uses
  %i.ag = lshr i64 %i.af, 3
  %i.ah = add nuw nsw i64 %i.ag, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.af, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader10, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.ai = add i64 %i.s, -8
  %i.aj = sub i64 %i.ai, %i.t
  %i.ak = and i64 %i.aj, -8
  %i.al = add i64 %i.ak, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ac, i64 %i.al
  %scevgep6 = getelementptr i8, ptr %i.r, i64 %i.al
  %bound0 = icmp ult ptr %i.ac, %scevgep6
  %bound1 = icmp ult ptr %i.r, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader10, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ah, 4611686018427387900     ; 3 uses
  %i.am = shl i64 %n.vec, 3                       ; 2 uses
  %i.an = getelementptr i8, ptr %i.ac, i64 %i.am  ; 2 uses
  %i.ao = getelementptr i8, ptr %i.r, i64 %i.am
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ap = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ac, i64 %i.ap ; 2 uses
  %next.gep7 = getelementptr i8, ptr %i.r, i64 %i.ap ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3876)
  call void @llvm.experimental.noalias.scope.decl(metadata !3879)
  %i.aq = getelementptr i8, ptr %next.gep7, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep7, align 8, !tbaa !3400, !alias.scope !3881, !noalias !3876
  %wide.load8 = load <2 x i64>, ptr %i.aq, align 8, !tbaa !3400, !alias.scope !3881, !noalias !3876
  %i.ar = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !3400, !alias.scope !3884, !noalias !3881
  store <2 x i64> %wide.load8, ptr %i.ar, align 8, !tbaa !3400, !alias.scope !3884, !noalias !3881
  %i.as = getelementptr i8, ptr %next.gep7, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep7, align 8, !tbaa !3400, !alias.scope !3881, !noalias !3876
  store <2 x ptr> splat (ptr null), ptr %i.as, align 8, !tbaa !3400, !alias.scope !3881, !noalias !3876
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !3886

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader10

.lr.ph.i.i.i.i.i.i.i.preheader10:                 ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ac, %vector.memcheck ], [ %i.ac, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.an, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.r, %vector.memcheck ], [ %i.r, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ao, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader10, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader10 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader10 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3876)
  call void @llvm.experimental.noalias.scope.decl(metadata !3879)
  %i.au = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !3400, !alias.scope !3879, !noalias !3876
  store i64 %i.au, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !3400, !alias.scope !3876, !noalias !3879
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !3400, !alias.scope !3879, !noalias !3876
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.av, %i.m
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !3887

_ZNSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc11
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ac, %.noexc11 ], [ %i.an, %middle.block ], [ %i.aw, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.r) #31
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, %bb.i
  store ptr %i.ac, ptr %i.k, align 8, !tbaa !3398
  store ptr %i.ax, ptr %i.l, align 8, !tbaa !3399
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.aa
  store ptr %i.ay, ptr %i.n, align 8, !tbaa !3403
  br label %_ZNSt10unique_ptrIN6duckdb19MultiFileReaderDataESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb19MultiFileReaderDataESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.l

bb.j:                                             ; preds = %bb.d
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.k:                                             ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.h
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN6duckdb19MultiFileReaderDataESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #29
  br label %.body

.body:                                            ; preds = %bb.j, %bb.e, %bb.k
  %.pn = phi { ptr, i32 } [ %i.ba, %bb.k ], [ %i.az, %bb.j ], [ %i.j, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.s

bb.l:                                             ; preds = %bb.b, %_ZNSt10unique_ptrIN6duckdb19MultiFileReaderDataESt14default_deleteIS1_EED2Ev.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !42 ; 8 uses
  %.not.i.i.i.i12 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i.i12, label %_ZN6duckdb10shared_ptrINS_20ExtendedOpenFileInfoELb1EED2Ev.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 4 uses
  %i.be = load atomic i64, ptr %i.bd acquire, align 8 ; 2 uses
  %i.bf = icmp eq i64 %i.be, 4294967297
  %i.bg = trunc i64 %i.be to i32                  ; 2 uses
  br i1 %i.bf, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.bd, align 8, !tbaa !45
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 12
  store i32 0, ptr %i.bh, align 4, !tbaa !47
  %i.bi = load ptr, ptr %i.bc, align 8, !tbaa !48
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(16) %i.bc) #29, !inline_history !1078
  %i.bl = load ptr, ptr %i.bc, align 8, !tbaa !48
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(16) %i.bc) #29, !inline_history !1078
  br label %_ZN6duckdb10shared_ptrINS_20ExtendedOpenFileInfoELb1EED2Ev.exit.i

bb.o:                                             ; preds = %bb.m
  %i.bo = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i.i.i = icmp eq i8 %i.bo, 0
  br i1 %.not.i.i.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bp = add nsw i32 %i.bg, -1
  store i32 %i.bp, ptr %i.bd, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.bq = atomicrmw volatile add ptr %i.bd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i.i = phi i32 [ %i.bg, %bb.p ], [ %i.bq, %bb.q ]
  %i.br = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.br, label %bb.r, label %_ZN6duckdb10shared_ptrINS_20ExtendedOpenFileInfoELb1EED2Ev.exit.i, !prof !51

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bc) #29
  br label %_ZN6duckdb10shared_ptrINS_20ExtendedOpenFileInfoELb1EED2Ev.exit.i

_ZN6duckdb10shared_ptrINS_20ExtendedOpenFileInfoELb1EED2Ev.exit.i: ; preds = %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.n, %bb.l
  %i.bs = load ptr, ptr %1, align 8, !tbaa !18    ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.a
  br i1 %i.bt, label %_ZN6duckdb12OpenFileInfoD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN6duckdb10shared_ptrINS_20ExtendedOpenFileInfoELb1EED2Ev.exit.i
  call void @_ZdlPv(ptr noundef %i.bs) #31
  br label %_ZN6duckdb12OpenFileInfoD2Ev.exit

_ZN6duckdb12OpenFileInfoD2Ev.exit:                ; preds = %_ZN6duckdb10shared_ptrINS_20ExtendedOpenFileInfoELb1EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  ret i1 %i.g

bb.s:                                             ; preds = %.body, %bb.c
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.h, %bb.c ]
  call void @_ZN6duckdb12OpenFileInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %1) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_119DirectMultiFileInfoINS0_17ReadBlobOperationEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #8 align 2 {
bb.a:
  tail call void @_ZN6duckdb24MultiFileReaderInterfaceD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #29
  tail call void @_ZdlPv(ptr noundef nonnull %0) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_119DirectMultiFileInfoINS0_17ReadBlobOperationEE17InitializeOptionsERNS_13ClientContextENS_12optional_ptrINS_17TableFunctionInfoELb1EEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr.1300") align 8 captures(none) initializes((0, 8)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree nonnull readnone align 8 captures(none) %2, ptr nofree readnone captures(none) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3888)
  %i.a = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #32, !noalias !3888 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb21BaseFileReaderOptionsE, i64 16), ptr %i.a, align 8, !tbaa !48, !noalias !3888
  store ptr %i.a, ptr %0, align 8, !tbaa !1645, !alias.scope !3888
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZN6duckdb12_GLOBAL__N_119DirectMultiFileInfoINS0_17ReadBlobOperationEE15ParseCopyOptionERNS_13ClientContextERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_6vectorINS_5ValueELb1ESaISF_EEERNS_21BaseFileReaderOptionsERNSE_ISB_Lb1ESaISB_EEERNSE_INS_11LogicalTypeELb1ESaISP_EEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree nonnull readnone align 8 captures(none) %2, ptr nofree nonnull readnone align 8 captures(none) %3, ptr nofree nonnull readnone align 8 captures(none) %4, ptr nofree nonnull readnone align 8 captures(none) %5, ptr nofree nonnull readnone align 8 captures(none) %6) unnamed_addr #15 align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZN6duckdb12_GLOBAL__N_119DirectMultiFileInfoINS0_17ReadBlobOperationEE11ParseOptionERNS_13ClientContextERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_5ValueERNS_16MultiFileOptionsERNS_21BaseFileReaderOptionsE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree nonnull readnone align 8 captures(none) %2, ptr nofree nonnull readnone align 8 captures(none) %3, ptr nofree nonnull readnone align 8 captures(none) %4, ptr nofree nonnull readnone align 8 captures(none) %5) unnamed_addr #15 align 2 {
bb.a:
  ret i1 true
}

end_hunk_9
begin_hunk_10_@_ZN6duckdb17MultiFileFunctionINS_12_GLOBAL__N_119DirectMultiFileInfoINS1_17ReadTextOperationEEEE19MultiFileInitGlobalERNS_13ClientContextERNS_22TableFunctionInitInputE:bb.a

bb.as:                                            ; preds = %bb.ar
  %i.fp = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_14BaseFileReaderELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fn)
          to label %bb.at unwind label %bb.y      ; 2 uses

bb.at:                                            ; preds = %bb.as
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #29
  invoke void @_ZNK6duckdb13MultiFileList12GetFirstFileEv(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::OpenFileInfo") align 8 %12, ptr noundef nonnull align 8 dereferenceable(8) %i.bb)
          to label %bb.au unwind label %bb.bj

bb.au:                                            ; preds = %bb.at
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fp, i64 32
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !25 ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !25
  %i.fv = icmp eq i64 %i.fs, %i.fu
  br i1 %i.fv, label %bb.av, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

bb.av:                                            ; preds = %bb.au
  %i.fw = icmp eq i64 %i.fs, 0
  br i1 %i.fw, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fx = load ptr, ptr %12, align 8, !tbaa !18
  %i.fy = load ptr, ptr %i.fq, align 8, !tbaa !18
  %bcmp.i = call i32 @bcmp(ptr %i.fy, ptr %i.fx, i64 %i.fs)
  %i.fz = icmp eq i32 %bcmp.i, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.au, %bb.av, %bb.aw
  %i.ga = phi i1 [ false, %bb.au ], [ %i.fz, %bb.aw ], [ true, %bb.av ]
  %i.gb = getelementptr inbounds nuw i8, ptr %12, i64 40
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !42 ; 8 uses
  %.not.i.i.i.i183 = icmp eq ptr %i.gc, null
  br i1 %.not.i.i.i.i183, label %_ZN6duckdb10shared_ptrINS_20ExtendedOpenFileInfoELb1EED2Ev.exit.i, label %bb.ax

bb.ax:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 8 ; 4 uses
  %i.ge = load atomic i64, ptr %i.gd acquire, align 8 ; 2 uses
  %i.gf = icmp eq i64 %i.ge, 4294967297
  %i.gg = trunc i64 %i.ge to i32                  ; 2 uses
  br i1 %i.gf, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  store i32 0, ptr %i.gd, align 8, !tbaa !45
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gc, i64 12
  store i32 0, ptr %i.gh, align 4, !tbaa !47
  %i.gi = load ptr, ptr %i.gc, align 8, !tbaa !48
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  %i.gk = load ptr, ptr %i.gj, align 8
  call void %i.gk(ptr noundef nonnull align 8 dereferenceable(16) %i.gc) #29, !inline_history !1078
  %i.gl = load ptr, ptr %i.gc, align 8, !tbaa !48
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 24
  %i.gn = load ptr, ptr %i.gm, align 8
  call void %i.gn(ptr noundef nonnull align 8 dereferenceable(16) %i.gc) #29, !inline_history !1078
  br label %_ZN6duckdb10shared_ptrINS_20ExtendedOpenFileInfoELb1EED2Ev.exit.i

bb.az:                                            ; preds = %bb.ax
  %i.go = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i.i.i184 = icmp eq i8 %i.go, 0
  br i1 %.not.i.i.i.i.i184, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gp = add nsw i32 %i.gg, -1
  store i32 %i.gp, ptr %i.gd, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.bb:                                            ; preds = %bb.az
  %i.gq = atomicrmw volatile add ptr %i.gd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.bb, %bb.ba
  %.0.i.i.i.i.i.i = phi i32 [ %i.gg, %bb.ba ], [ %i.gq, %bb.bb ]
  %i.gr = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.gr, label %bb.bc, label %_ZN6duckdb10shared_ptrINS_20ExtendedOpenFileInfoELb1EED2Ev.exit.i, !prof !51

bb.bc:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gc) #29
  br label %_ZN6duckdb10shared_ptrINS_20ExtendedOpenFileInfoELb1EED2Ev.exit.i

_ZN6duckdb10shared_ptrINS_20ExtendedOpenFileInfoELb1EED2Ev.exit.i: ; preds = %bb.bc, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.ay, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.gs = load ptr, ptr %12, align 8, !tbaa !18   ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.gu = icmp eq ptr %i.gs, %i.gt
  br i1 %i.gu, label %_ZN6duckdb12OpenFileInfoD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN6duckdb10shared_ptrINS_20ExtendedOpenFileInfoELb1EED2Ev.exit.i
  call void @_ZdlPv(ptr noundef %i.gs) #31
  br label %_ZN6duckdb12OpenFileInfoD2Ev.exit

_ZN6duckdb12OpenFileInfoD2Ev.exit:                ; preds = %_ZN6duckdb10shared_ptrINS_20ExtendedOpenFileInfoELb1EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  br i1 %i.ga, label %bb.bd, label %bb.bm

bb.bd:                                            ; preds = %_ZN6duckdb12OpenFileInfoD2Ev.exit
  %i.gv = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_20MultiFileGlobalStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.be unwind label %bb.y      ; 3 uses

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !3977)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.gw = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #32
          to label %.noexc186 unwind label %bb.bk ; 13 uses

.noexc186:                                        ; preds = %bb.be
  %i.gx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.gy = load <2 x ptr>, ptr %i.fn, align 8, !tbaa !166, !noalias !3977
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fn, i8 0, i64 16, i1 false)
  store ptr null, ptr %i.gx, align 8, !tbaa !42, !noalias !3977
  store <2 x ptr> %i.gy, ptr %i.gw, align 8, !tbaa !166, !noalias !3977
  store ptr null, ptr %3, align 8, !tbaa !2032, !noalias !3977
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gw, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gz, i8 0, i64 16, i1 false), !noalias !3977
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gw, i64 32
  store i8 2, ptr %i.ha, align 8, !tbaa !3419, !noalias !3977
  call void @llvm.experimental.noalias.scope.decl(metadata !3980)
  %i.hb = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #32
          to label %bb.bf unwind label %.body.i185, !noalias !3977 ; 2 uses

.body.i185:                                       ; preds = %.noexc186
  %i.hc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb8weak_ptrINS_14BaseFileReaderELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.gz) #29, !noalias !3977
  call void @_ZN6duckdb10shared_ptrINS_14BaseFileReaderELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(160) %i.gw) #29, !noalias !3977
  call void @_ZN6duckdb10shared_ptrINS_14BaseFileReaderELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #29, !noalias !3977
  call void @_ZdlPv(ptr noundef nonnull %i.gw) #31, !noalias !3977
  br label %.body187

bb.bf:                                            ; preds = %.noexc186
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gw, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.hb, i8 0, i64 40, i1 false), !noalias !3983
  store ptr %i.hb, ptr %i.hd, align 8, !tbaa !3444, !alias.scope !3980, !noalias !3977
  %i.he = getelementptr inbounds nuw i8, ptr %i.gw, i64 48
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gw, i64 112
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gw, i64 128 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.he, i8 0, i64 64, i1 false), !noalias !3977
  store ptr %i.hg, ptr %i.hf, align 8, !tbaa !22, !noalias !3977
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gw, i64 120
  store i64 0, ptr %i.hh, align 8, !tbaa !25, !noalias !3977
  store i8 0, ptr %i.hg, align 8, !tbaa !24, !noalias !3977
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gw, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hi, i8 0, i64 16, i1 false), !noalias !3977
  store ptr %i.gw, ptr %13, align 8, !tbaa !3400, !alias.scope !3977
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gv, i64 112 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gv, i64 120 ; 3 uses
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !3399 ; 6 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gv, i64 128 ; 2 uses
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !3403
  %.not.i.i189 = icmp eq ptr %i.hl, %i.hn
  %i.ho = ptrtoint ptr %i.gw to i64               ; 2 uses
  br i1 %.not.i.i189, label %bb.bg, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit204.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit204.thread: ; preds = %bb.bf
  store i64 %i.ho, ptr %i.hl, align 8, !tbaa !3400
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  store ptr %i.hp, ptr %i.hk, align 8, !tbaa !3399
  br label %_ZNSt10unique_ptrIN6duckdb19MultiFileReaderDataESt14default_deleteIS1_EED2Ev.exit207

bb.bg:                                            ; preds = %bb.bf
  %i.hq = load ptr, ptr %i.hj, align 8, !tbaa !3398 ; 10 uses
  %i.hr = ptrtoint ptr %i.hl to i64               ; 3 uses
  %i.hs = ptrtoint ptr %i.hq to i64               ; 3 uses
  %i.ht = sub i64 %i.hr, %i.hs                    ; 3 uses
  %i.hu = icmp eq i64 %i.ht, 9223372036854775800
  br i1 %i.hu, label %bb.bh, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i190

bb.bh:                                            ; preds = %bb.bg
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.139) #30
          to label %.noexc202 unwind label %bb.bl

.noexc202:                                        ; preds = %bb.bh
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i190: ; preds = %bb.bg
  %i.hv = ashr exact i64 %i.ht, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i191 = call i64 @llvm.umax.i64(i64 %i.hv, i64 1)
  %i.hw = add nsw i64 %.sroa.speculated.i.i.i.i191, %i.hv ; 2 uses
  %i.hx = icmp ult i64 %i.hw, %i.hv
  %i.hy = call i64 @llvm.umin.i64(i64 %i.hw, i64 1152921504606846975)
  %i.hz = select i1 %i.hx, i64 1152921504606846975, i64 %i.hy ; 3 uses
  %.not.i.i.i.i192 = icmp ne i64 %i.hz, 0
  call void @llvm.assume(i1 %.not.i.i.i.i192)
  %i.ia = shl nuw nsw i64 %i.hz, 3
  %i.ib = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ia) #32
          to label %.noexc203 unwind label %bb.bl ; 10 uses

.noexc203:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i190
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 %i.ht
  store i64 %i.ho, ptr %i.ic, align 8, !tbaa !3400
  %.not10.i.i.i.i.i.i.i193 = icmp eq ptr %i.hq, %i.hl
  br i1 %.not10.i.i.i.i.i.i.i193, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i198, label %.lr.ph.i.i.i.i.i.i.i194.preheader

.lr.ph.i.i.i.i.i.i.i194.preheader:                ; preds = %.noexc203
  %i.id = sub i64 %i.hr, %i.hs
  %i.ie = add i64 %i.id, -8                       ; 2 uses
  %i.if = lshr i64 %i.ie, 3
  %i.ig = add nuw nsw i64 %i.if, 1                ; 2 uses
  %min.iters.check463 = icmp ult i64 %i.ie, 136
  br i1 %min.iters.check463, label %.lr.ph.i.i.i.i.i.i.i194.preheader484, label %vector.memcheck456

vector.memcheck456:                               ; preds = %.lr.ph.i.i.i.i.i.i.i194.preheader
  %i.ih = add i64 %i.hr, -8
  %i.ii = sub i64 %i.ih, %i.hs
  %i.ij = and i64 %i.ii, -8
  %i.ik = add i64 %i.ij, 8                        ; 2 uses
  %scevgep457 = getelementptr i8, ptr %i.ib, i64 %i.ik
  %scevgep458 = getelementptr i8, ptr %i.hq, i64 %i.ik
  %bound0459 = icmp ult ptr %i.ib, %scevgep458
  %bound1460 = icmp ult ptr %i.hq, %scevgep457
  %found.conflict461 = and i1 %bound0459, %bound1460
  br i1 %found.conflict461, label %.lr.ph.i.i.i.i.i.i.i194.preheader484, label %vector.ph464

vector.ph464:                                     ; preds = %vector.memcheck456
  %n.vec466 = and i64 %i.ig, 4611686018427387900  ; 3 uses
  %i.il = shl i64 %n.vec466, 3                    ; 2 uses
  %i.im = getelementptr i8, ptr %i.ib, i64 %i.il  ; 2 uses
  %i.in = getelementptr i8, ptr %i.hq, i64 %i.il
  br label %vector.body467

vector.body467:                                   ; preds = %vector.body467, %vector.ph464
  %index468 = phi i64 [ 0, %vector.ph464 ], [ %index.next473, %vector.body467 ] ; 2 uses
  %i.io = shl i64 %index468, 3                    ; 2 uses
  %next.gep469 = getelementptr i8, ptr %i.ib, i64 %i.io ; 2 uses
  %next.gep470 = getelementptr i8, ptr %i.hq, i64 %i.io ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3984)
  call void @llvm.experimental.noalias.scope.decl(metadata !3987)
  %i.ip = getelementptr i8, ptr %next.gep470, i64 16
  %wide.load471 = load <2 x i64>, ptr %next.gep470, align 8, !tbaa !3400, !alias.scope !3989, !noalias !3984
  %wide.load472 = load <2 x i64>, ptr %i.ip, align 8, !tbaa !3400, !alias.scope !3989, !noalias !3984
  %i.iq = getelementptr i8, ptr %next.gep469, i64 16
  store <2 x i64> %wide.load471, ptr %next.gep469, align 8, !tbaa !3400, !alias.scope !3992, !noalias !3989
  store <2 x i64> %wide.load472, ptr %i.iq, align 8, !tbaa !3400, !alias.scope !3992, !noalias !3989
  %i.ir = getelementptr i8, ptr %next.gep470, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep470, align 8, !tbaa !3400, !alias.scope !3989, !noalias !3984
  store <2 x ptr> splat (ptr null), ptr %i.ir, align 8, !tbaa !3400, !alias.scope !3989, !noalias !3984
  %index.next473 = add nuw i64 %index468, 4       ; 2 uses
  %i.is = icmp eq i64 %index.next473, %n.vec466
  br i1 %i.is, label %middle.block474, label %vector.body467, !llvm.loop !3994

middle.block474:                                  ; preds = %vector.body467
  %cmp.n475 = icmp eq i64 %i.ig, %n.vec466
  br i1 %cmp.n475, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i198, label %.lr.ph.i.i.i.i.i.i.i194.preheader484

.lr.ph.i.i.i.i.i.i.i194.preheader484:             ; preds = %vector.memcheck456, %.lr.ph.i.i.i.i.i.i.i194.preheader, %middle.block474
  %.012.i.i.i.i.i.i.i195.ph = phi ptr [ %i.ib, %vector.memcheck456 ], [ %i.ib, %.lr.ph.i.i.i.i.i.i.i194.preheader ], [ %i.im, %middle.block474 ]
  %.0911.i.i.i.i.i.i.i196.ph = phi ptr [ %i.hq, %vector.memcheck456 ], [ %i.hq, %.lr.ph.i.i.i.i.i.i.i194.preheader ], [ %i.in, %middle.block474 ]
  br label %.lr.ph.i.i.i.i.i.i.i194

.lr.ph.i.i.i.i.i.i.i194:                          ; preds = %.lr.ph.i.i.i.i.i.i.i194.preheader484, %.lr.ph.i.i.i.i.i.i.i194
  %.012.i.i.i.i.i.i.i195 = phi ptr [ %i.iv, %.lr.ph.i.i.i.i.i.i.i194 ], [ %.012.i.i.i.i.i.i.i195.ph, %.lr.ph.i.i.i.i.i.i.i194.preheader484 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i196 = phi ptr [ %i.iu, %.lr.ph.i.i.i.i.i.i.i194 ], [ %.0911.i.i.i.i.i.i.i196.ph, %.lr.ph.i.i.i.i.i.i.i194.preheader484 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3984)
  call void @llvm.experimental.noalias.scope.decl(metadata !3987)
  %i.it = load i64, ptr %.0911.i.i.i.i.i.i.i196, align 8, !tbaa !3400, !alias.scope !3987, !noalias !3984
  store i64 %i.it, ptr %.012.i.i.i.i.i.i.i195, align 8, !tbaa !3400, !alias.scope !3984, !noalias !3987
  store ptr null, ptr %.0911.i.i.i.i.i.i.i196, align 8, !tbaa !3400, !alias.scope !3987, !noalias !3984
  %i.iu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i196, i64 8 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i195, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i197 = icmp eq ptr %i.iu, %i.hl
  br i1 %.not.i.i.i.i.i.i.i197, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i198, label %.lr.ph.i.i.i.i.i.i.i194, !llvm.loop !3995

_ZNSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i198: ; preds = %.lr.ph.i.i.i.i.i.i.i194, %middle.block474, %.noexc203
  %.0.lcssa.i.i.i.i.i.i.i199 = phi ptr [ %i.ib, %.noexc203 ], [ %i.im, %middle.block474 ], [ %i.iv, %.lr.ph.i.i.i.i.i.i.i194 ]
  %i.iw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i199, i64 8
  %.not.i23.i.i.i200 = icmp eq ptr %i.hq, null
  br i1 %.not.i23.i.i.i200, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit204, label %bb.bi

bb.bi:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i198
  call void @_ZdlPv(ptr noundef nonnull %i.hq) #31
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit204

_ZNSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit204: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i198, %bb.bi
  store ptr %i.ib, ptr %i.hj, align 8, !tbaa !3398
  store ptr %i.iw, ptr %i.hk, align 8, !tbaa !3399
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %i.ib, i64 %i.hz
  store ptr %i.ix, ptr %i.hm, align 8, !tbaa !3403
  br label %_ZNSt10unique_ptrIN6duckdb19MultiFileReaderDataESt14default_deleteIS1_EED2Ev.exit207

_ZNSt10unique_ptrIN6duckdb19MultiFileReaderDataESt14default_deleteIS1_EED2Ev.exit207: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit204, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit204.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  br label %bb.bm

bb.bj:                                            ; preds = %bb.at
  %i.iy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  br label %.body

bb.bk:                                            ; preds = %bb.be
  %i.iz = landingpad { ptr, i32 }
          cleanup
  br label %.body187

bb.bl:                                            ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i190, %bb.bh
  %i.ja = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN6duckdb19MultiFileReaderDataESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %13) #29
  br label %.body187

.body187:                                         ; preds = %bb.bk, %.body.i185, %bb.bl
  %.pn114 = phi { ptr, i32 } [ %i.ja, %bb.bl ], [ %i.iz, %bb.bk ], [ %i.hc, %.body.i185 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  br label %.body

bb.bm:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit182, %bb.am, %_ZN6duckdb12OpenFileInfoD2Ev.exit, %_ZNSt10unique_ptrIN6duckdb19MultiFileReaderDataESt14default_deleteIS1_EED2Ev.exit207, %bb.ar, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit
  %i.jb = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_20MultiFileGlobalStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.bn unwind label %bb.y

bb.bn:                                            ; preds = %bb.bm
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 96
  store atomic i64 0, ptr %i.jc seq_cst, align 8
  %i.jd = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_20MultiFileGlobalStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.bo unwind label %bb.y

bb.bo:                                            ; preds = %bb.bn
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 200
  %i.jf = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6duckdb11ColumnIndexESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.je, ptr noundef nonnull align 8 dereferenceable(24) %i.bp)
          to label %_ZN6duckdb6vectorINS_11ColumnIndexELb1ESaIS1_EEaSERKS3_.exit unwind label %bb.y, !inline_history !3457 ; 0 uses

_ZN6duckdb6vectorINS_11ColumnIndexELb1ESaIS1_EEaSERKS3_.exit: ; preds = %bb.bo
  %i.jg = load ptr, ptr %i.c, align 8, !tbaa !263
  %i.jh = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_20MultiFileGlobalStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.bp unwind label %bb.bz

bb.bp:                                            ; preds = %_ZN6duckdb6vectorINS_11ColumnIndexELb1ESaIS1_EEaSERKS3_.exit
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 224
  %i.jj = ptrtoint ptr %i.jg to i64
  store i64 %i.jj, ptr %i.ji, align 8, !tbaa !1067
  %i.jk = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_20MultiFileGlobalStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.bq unwind label %bb.y

bb.bq:                                            ; preds = %bb.bp
  %i.jl = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jk, i64 248
  %i.jn = load i64, ptr %i.jl, align 8, !tbaa !1988
  store i64 %i.jn, ptr %i.jm, align 8, !tbaa !1988
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #29
  %i.jo = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  %i.jp = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_24MultiFileReaderInterfaceESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.jo)
          to label %bb.br unwind label %bb.ca     ; 2 uses

bb.br:                                            ; preds = %bb.bq
  %i.jq = invoke noundef nonnull align 8 dereferenceable(256) ptr @_ZNK6duckdb10unique_ptrINS_20MultiFileGlobalStateESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.bs unwind label %bb.ca

bb.bs:                                            ; preds = %bb.br
  %i.jr = load ptr, ptr %i.jp, align 8, !tbaa !48
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 96
  %i.jt = load ptr, ptr %i.js, align 8
  invoke void %i.jt(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.559") align 8 %14, ptr noundef nonnull align 8 dereferenceable(8) %i.jp, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull align 8 dereferenceable(480) %i.a, ptr noundef nonnull align 8 dereferenceable(256) %i.jq)
          to label %bb.bt unwind label %bb.ca

bb.bt:                                            ; preds = %bb.bs
  %i.ju = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_20MultiFileGlobalStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.bu unwind label %bb.cb

bb.bu:                                            ; preds = %bb.bt
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 240 ; 2 uses
  %i.jw = load ptr, ptr %14, align 8, !tbaa !1877
  store ptr null, ptr %14, align 8, !tbaa !1877
  %i.jx = load ptr, ptr %i.jv, align 8, !tbaa !1877 ; 3 uses
  store ptr %i.jw, ptr %i.jv, align 8, !tbaa !1877
  %.not.i.i.i.i.i209 = icmp eq ptr %i.jx, null
  br i1 %.not.i.i.i.i.i209, label %_ZNSt10unique_ptrIN6duckdb24GlobalTableFunctionStateESt14default_deleteIS1_EED2Ev.exit, label %_ZN6duckdb10unique_ptrINS_24GlobalTableFunctionStateESt14default_deleteIS1_ELb1EEaSEOS4_.exit

_ZN6duckdb10unique_ptrINS_24GlobalTableFunctionStateESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %bb.bu
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !48
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 8
  %i.ka = load ptr, ptr %i.jz, align 8
  call void %i.ka(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.jx) #29, !inline_history !1974
  %.pr298 = load ptr, ptr %14, align 8, !tbaa !1877 ; 3 uses
  %.not.i210 = icmp eq ptr %.pr298, null
  br i1 %.not.i210, label %_ZNSt10unique_ptrIN6duckdb24GlobalTableFunctionStateESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb24GlobalTableFunctionStateEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb24GlobalTableFunctionStateEEclEPS1_.exit.i: ; preds = %_ZN6duckdb10unique_ptrINS_24GlobalTableFunctionStateESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  %i.kb = load ptr, ptr %.pr298, align 8, !tbaa !48
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 8
  %i.kd = load ptr, ptr %i.kc, align 8
  call void %i.kd(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.pr298) #29, !inline_history !1878
  br label %_ZNSt10unique_ptrIN6duckdb24GlobalTableFunctionStateESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb24GlobalTableFunctionStateESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.bu, %_ZN6duckdb10unique_ptrINS_24GlobalTableFunctionStateESt14default_deleteIS1_ELb1EEaSEOS4_.exit, %_ZNKSt14default_deleteIN6duckdb24GlobalTableFunctionStateEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  %i.ke = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN6duckdb13TaskScheduler12GetSchedulerERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(512) %1)
          to label %bb.bv unwind label %bb.y

bb.bv:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb24GlobalTableFunctionStateESt14default_deleteIS1_EED2Ev.exit
  %i.kf = invoke noundef i32 @_ZN6duckdb13TaskScheduler15NumberOfThreadsEv(ptr noundef nonnull align 8 dereferenceable(124) %i.ke)
          to label %bb.bw unwind label %bb.y

bb.bw:                                            ; preds = %bb.bv
  %i.kg = invoke noundef i64 @_ZN6duckdb15NumericCastImplImiLb0EE7ConvertEi(i32 noundef %i.kf)
          to label %_ZN6duckdb11NumericCastImivEET_T0_.exit unwind label %bb.y

_ZN6duckdb11NumericCastImivEET_T0_.exit:          ; preds = %bb.bw
  %i.kh = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_20MultiFileGlobalStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.bx unwind label %bb.y

end_hunk_10
begin_hunk_11_@_ZN6duckdb17MultiFileFunctionINS_12_GLOBAL__N_119DirectMultiFileInfoINS1_17ReadTextOperationEEEE22TryInitializeNextBatchERNS_13ClientContextERKNS_17MultiFileBindDataERNS_19MultiFileLocalStateERNS_20MultiFileGlobalStateE:bb.a
  unreachable

bb.fn:                                            ; preds = %bb.fm
  store i8 1, ptr %i.b, align 8, !tbaa !2463
  %i.ph = load atomic i64, ptr %i.g seq_cst, align 8
  %i.pi = load ptr, ptr %i.i, align 8, !tbaa !3399
  %i.pj = load ptr, ptr %i.h, align 8, !tbaa !3398
  %i.pk = ptrtoint ptr %i.pi to i64
  %i.pl = ptrtoint ptr %i.pj to i64
  %i.pm = sub i64 %i.pk, %i.pl
  %i.pn = ashr exact i64 %i.pm, 3
  %i.po = icmp ult i64 %i.ph, %i.pn
  br i1 %i.po, label %bb.fo, label %_ZNSt11unique_lockISt5mutexED2Ev.exit17.thread.i

bb.fo:                                            ; preds = %bb.fn
  %i.pp = load atomic i64, ptr %i.g seq_cst, align 8
  %i.pq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %i.pp)
          to label %bb.fp unwind label %_ZNSt11unique_lockISt5mutexED2Ev.exit.loopexit.i

bb.fp:                                            ; preds = %bb.fo
  %i.pr = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_19MultiFileReaderDataESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.pq)
          to label %bb.fq unwind label %_ZNSt11unique_lockISt5mutexED2Ev.exit.loopexit.i

bb.fq:                                            ; preds = %bb.fp
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 32
  %i.pt = load i8, ptr %i.ps, align 8, !tbaa !3419
  %.not.i110 = icmp eq i8 %i.pt, 1
  br i1 %.not.i110, label %_ZNSt11unique_lockISt5mutexED2Ev.exit17.i, label %_ZNSt11unique_lockISt5mutexED2Ev.exit17.thread.i

_ZNSt11unique_lockISt5mutexED2Ev.exit.loopexit.i: ; preds = %bb.fp, %bb.fo
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit.i108

_ZNSt11unique_lockISt5mutexED2Ev.exit.loopexit.split-lp.i: ; preds = %.invoke463
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit.i108

_ZNSt11unique_lockISt5mutexED2Ev.exit.i108:       ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit.loopexit.split-lp.i, %_ZNSt11unique_lockISt5mutexED2Ev.exit.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %_ZNSt11unique_lockISt5mutexED2Ev.exit.loopexit.i ], [ %lpad.loopexit.split-lp.i, %_ZNSt11unique_lockISt5mutexED2Ev.exit.loopexit.split-lp.i ]
  %i.pu = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.oy) #29 ; 0 uses
  br label %.body101

_ZNSt11unique_lockISt5mutexED2Ev.exit17.thread.i: ; preds = %bb.fq, %bb.fn
  %i.pv = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.oy) #29 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_14BaseFileReaderELb1EED2Ev.exit

_ZNSt11unique_lockISt5mutexED2Ev.exit17.i:        ; preds = %bb.fq
  %i.pw = load i8, ptr %i.d, align 8, !tbaa !3518, !range !129, !noundef !114
  %i.px = trunc nuw i8 %i.pw to i1
  %i.py = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.oy) #29 ; 0 uses
  br i1 %i.px, label %_ZN6duckdb10shared_ptrINS_14BaseFileReaderELb1EED2Ev.exit, label %bb.fk

_ZN6duckdb10shared_ptrINS_14BaseFileReaderELb1EED2Ev.exit: ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit17.i, %_ZNSt11unique_lockISt5mutexED2Ev.exit17.thread.i, %bb.fi, %_ZN6duckdb8weak_ptrINS_14BaseFileReaderELb1EEaSIS1_TnNSt9enable_ifIXsr17compatible_with_tIT_S1_EE5valueEiE4typeELi0EEERS2_RKNS_10shared_ptrIS5_Lb1EEE.exit, %bb.cq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i79, %bb.cu, %.loopexit139, %bb.cv
  %i.pz = load i8, ptr %i.d, align 8, !tbaa !3518, !range !129, !noundef !114
  %i.qa = trunc nuw i8 %i.pz to i1
  br i1 %i.qa, label %_ZN6duckdb10shared_ptrINS_14BaseFileReaderELb1EED2Ev.exit.thread, label %bb.c

_ZN6duckdb10shared_ptrINS_14BaseFileReaderELb1EED2Ev.exit.thread: ; preds = %_ZN6duckdb10shared_ptrINS_14BaseFileReaderELb1EED2Ev.exit, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, %_ZN6duckdb17MultiFileFunctionINS_12_GLOBAL__N_119DirectMultiFileInfoINS1_17ReadTextOperationEEEE23InitializeFileScanStateERNS_13ClientContextERNS_19MultiFileReaderDataERNS_19MultiFileLocalStateERNS_6vectorImLb1ESaImEEE.exit, %bb.ao, %bb.i
  %.2 = phi i1 [ true, %_ZN6duckdb17MultiFileFunctionINS_12_GLOBAL__N_119DirectMultiFileInfoINS1_17ReadTextOperationEEEE23InitializeFileScanStateERNS_13ClientContextERNS_19MultiFileReaderDataERNS_19MultiFileLocalStateERNS_6vectorImLb1ESaImEEE.exit ], [ false, %bb.i ], [ true, %bb.ao ], [ false, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit ], [ false, %_ZN6duckdb10shared_ptrINS_14BaseFileReaderELb1EED2Ev.exit ]
  %i.qb = load i8, ptr %i.b, align 8, !tbaa !2463, !range !129, !noundef !114
  %i.qc = trunc nuw i8 %i.qb to i1
  br i1 %i.qc, label %bb.fr, label %_ZNSt11unique_lockISt5mutexED2Ev.exit

bb.fr:                                            ; preds = %_ZN6duckdb10shared_ptrINS_14BaseFileReaderELb1EED2Ev.exit.thread
  %i.qd = load ptr, ptr %10, align 8, !tbaa !2464 ; 2 uses
  %.not.i.i120 = icmp eq ptr %i.qd, null
  br i1 %.not.i.i120, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.qe = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.qd) #29 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %_ZN6duckdb10shared_ptrINS_14BaseFileReaderELb1EED2Ev.exit.thread, %bb.fr, %bb.fs
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  ret i1 %.2

.body101:                                         ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %.loopexit140, %.loopexit.split-lp141, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.db, %_ZNSt11unique_lockISt5mutexED2Ev.exit102.i, %bb.cd, %bb.cc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt11unique_lockISt5mutexED2Ev.exit.i108, %bb.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn65.pn = phi { ptr, i32 } [ %i.ja, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.bz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.pn127, %bb.ag ], [ %i.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn41.pn.pn.pn.i, %bb.cc ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp141 ], [ %lpad.phi.i, %_ZNSt11unique_lockISt5mutexED2Ev.exit.i108 ], [ %i.he, %bb.cd ], [ %.pn78.i, %_ZNSt11unique_lockISt5mutexED2Ev.exit102.i ], [ %.pn5.i, %bb.db ], [ %i.ja, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %lpad.loopexit142, %.loopexit140 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit136, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit144, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp145, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.qf = load i8, ptr %i.b, align 8, !tbaa !2463, !range !129, !noundef !114
  %i.qg = trunc nuw i8 %i.qf to i1
  br i1 %i.qg, label %bb.ft, label %_ZNSt11unique_lockISt5mutexED2Ev.exit123

bb.ft:                                            ; preds = %.body101
  %i.qh = load ptr, ptr %10, align 8, !tbaa !2464 ; 2 uses
  %.not.i.i122 = icmp eq ptr %i.qh, null
  br i1 %.not.i.i122, label %_ZNSt11unique_lockISt5mutexED2Ev.exit123, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.qi = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.qh) #29 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit123

_ZNSt11unique_lockISt5mutexED2Ev.exit123:         ; preds = %.body101, %bb.ft, %bb.fu
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  resume { ptr, i32 } %.pn65.pn

bb.fv:                                            ; preds = %bb.ae
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN6duckdb17MultiFileFunctionINS_12_GLOBAL__N_119DirectMultiFileInfoINS1_17ReadTextOperationEEEE14TryGetNextFileERNS_20MultiFileGlobalStateERSt11unique_lockISt5mutexE(ptr noundef nonnull align 8 dereferenceable(256) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.duckdb::OpenFileInfo", align 8 ; 12 uses
  %2 = alloca %"class.duckdb::unique_ptr.3053", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store ptr %i.a, ptr %1, align 8, !tbaa !22
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !25
  store i8 0, ptr %i.a, align 8, !tbaa !24
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !3395, !nonnull !114, !align !115
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = invoke noundef zeroext i1 @_ZNK6duckdb13MultiFileList4ScanERNS_21MultiFileListScanDataERNS_12OpenFileInfoE(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(12) %i.f, ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.b unwind label %bb.c       ; 2 uses

bb.b:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.d, label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !4020)
  %i.i = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #32
          to label %.noexc unwind label %bb.j     ; 4 uses

.noexc:                                           ; preds = %bb.d
  invoke void @_ZN6duckdb19MultiFileReaderDataC2ERKNS_12OpenFileInfoE(ptr noundef nonnull align 8 dereferenceable(160) %i.i, ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.f unwind label %bb.e, !noalias !4020

bb.e:                                             ; preds = %.noexc
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.i) #31, !noalias !4020
  br label %.body

bb.f:                                             ; preds = %.noexc
  store ptr %i.i, ptr %2, align 8, !tbaa !3400, !alias.scope !4020
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !3399 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !3403
  %.not.i.i = icmp eq ptr %i.m, %i.o
  %i.p = ptrtoint ptr %i.i to i64                 ; 2 uses
  br i1 %.not.i.i, label %bb.g, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.f
  store i64 %i.p, ptr %i.m, align 8, !tbaa !3400
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.q, ptr %i.l, align 8, !tbaa !3399
  br label %_ZNSt10unique_ptrIN6duckdb19MultiFileReaderDataESt14default_deleteIS1_EED2Ev.exit

bb.g:                                             ; preds = %bb.f
  %i.r = load ptr, ptr %i.k, align 8, !tbaa !3398 ; 10 uses
  %i.s = ptrtoint ptr %i.m to i64                 ; 3 uses
  %i.t = ptrtoint ptr %i.r to i64                 ; 3 uses
  %i.u = sub i64 %i.s, %i.t                       ; 3 uses
  %i.v = icmp eq i64 %i.u, 9223372036854775800
  br i1 %i.v, label %bb.h, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.139) #30
          to label %.noexc10 unwind label %bb.k

.noexc10:                                         ; preds = %bb.h
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.g
  %i.w = ashr exact i64 %i.u, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.w, i64 1)
  %i.x = add nsw i64 %.sroa.speculated.i.i.i.i, %i.w ; 2 uses
  %i.y = icmp ult i64 %i.x, %i.w
  %i.z = call i64 @llvm.umin.i64(i64 %i.x, i64 1152921504606846975)
  %i.aa = select i1 %i.y, i64 1152921504606846975, i64 %i.z ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.aa, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ab = shl nuw nsw i64 %i.aa, 3
  %i.ac = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #32
          to label %.noexc11 unwind label %bb.k   ; 10 uses

.noexc11:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.u
  store i64 %i.p, ptr %i.ad, align 8, !tbaa !3400
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.r, %i.m
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc11
  %i.ae = sub i64 %i.s, %i.t
  %i.af = add i64 %i.ae, -8                       ; 2 uses
  %i.ag = lshr i64 %i.af, 3
  %i.ah = add nuw nsw i64 %i.ag, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.af, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader10, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.ai = add i64 %i.s, -8
  %i.aj = sub i64 %i.ai, %i.t
  %i.ak = and i64 %i.aj, -8
  %i.al = add i64 %i.ak, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ac, i64 %i.al
  %scevgep6 = getelementptr i8, ptr %i.r, i64 %i.al
  %bound0 = icmp ult ptr %i.ac, %scevgep6
  %bound1 = icmp ult ptr %i.r, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader10, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ah, 4611686018427387900     ; 3 uses
  %i.am = shl i64 %n.vec, 3                       ; 2 uses
  %i.an = getelementptr i8, ptr %i.ac, i64 %i.am  ; 2 uses
  %i.ao = getelementptr i8, ptr %i.r, i64 %i.am
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ap = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ac, i64 %i.ap ; 2 uses
  %next.gep7 = getelementptr i8, ptr %i.r, i64 %i.ap ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4023)
  call void @llvm.experimental.noalias.scope.decl(metadata !4026)
  %i.aq = getelementptr i8, ptr %next.gep7, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep7, align 8, !tbaa !3400, !alias.scope !4028, !noalias !4023
  %wide.load8 = load <2 x i64>, ptr %i.aq, align 8, !tbaa !3400, !alias.scope !4028, !noalias !4023
  %i.ar = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !3400, !alias.scope !4031, !noalias !4028
  store <2 x i64> %wide.load8, ptr %i.ar, align 8, !tbaa !3400, !alias.scope !4031, !noalias !4028
  %i.as = getelementptr i8, ptr %next.gep7, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep7, align 8, !tbaa !3400, !alias.scope !4028, !noalias !4023
  store <2 x ptr> splat (ptr null), ptr %i.as, align 8, !tbaa !3400, !alias.scope !4028, !noalias !4023
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !4033

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader10

.lr.ph.i.i.i.i.i.i.i.preheader10:                 ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ac, %vector.memcheck ], [ %i.ac, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.an, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.r, %vector.memcheck ], [ %i.r, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ao, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader10, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader10 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader10 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4023)
  call void @llvm.experimental.noalias.scope.decl(metadata !4026)
  %i.au = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !3400, !alias.scope !4026, !noalias !4023
  store i64 %i.au, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !3400, !alias.scope !4023, !noalias !4026
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !3400, !alias.scope !4026, !noalias !4023
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.av, %i.m
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !4034

_ZNSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc11
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ac, %.noexc11 ], [ %i.an, %middle.block ], [ %i.aw, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.r) #31
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, %bb.i
  store ptr %i.ac, ptr %i.k, align 8, !tbaa !3398
  store ptr %i.ax, ptr %i.l, align 8, !tbaa !3399
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.aa
  store ptr %i.ay, ptr %i.n, align 8, !tbaa !3403
  br label %_ZNSt10unique_ptrIN6duckdb19MultiFileReaderDataESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb19MultiFileReaderDataESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.l

bb.j:                                             ; preds = %bb.d
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.k:                                             ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_19MultiFileReaderDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.h
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN6duckdb19MultiFileReaderDataESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #29
  br label %.body

.body:                                            ; preds = %bb.j, %bb.e, %bb.k
  %.pn = phi { ptr, i32 } [ %i.ba, %bb.k ], [ %i.az, %bb.j ], [ %i.j, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.s

bb.l:                                             ; preds = %bb.b, %_ZNSt10unique_ptrIN6duckdb19MultiFileReaderDataESt14default_deleteIS1_EED2Ev.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !42 ; 8 uses
  %.not.i.i.i.i12 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i.i12, label %_ZN6duckdb10shared_ptrINS_20ExtendedOpenFileInfoELb1EED2Ev.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 4 uses
  %i.be = load atomic i64, ptr %i.bd acquire, align 8 ; 2 uses
  %i.bf = icmp eq i64 %i.be, 4294967297
  %i.bg = trunc i64 %i.be to i32                  ; 2 uses
  br i1 %i.bf, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.bd, align 8, !tbaa !45
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 12
  store i32 0, ptr %i.bh, align 4, !tbaa !47
  %i.bi = load ptr, ptr %i.bc, align 8, !tbaa !48
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(16) %i.bc) #29, !inline_history !1078
  %i.bl = load ptr, ptr %i.bc, align 8, !tbaa !48
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(16) %i.bc) #29, !inline_history !1078
  br label %_ZN6duckdb10shared_ptrINS_20ExtendedOpenFileInfoELb1EED2Ev.exit.i

bb.o:                                             ; preds = %bb.m
  %i.bo = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i.i.i = icmp eq i8 %i.bo, 0
  br i1 %.not.i.i.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bp = add nsw i32 %i.bg, -1
  store i32 %i.bp, ptr %i.bd, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.bq = atomicrmw volatile add ptr %i.bd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i.i = phi i32 [ %i.bg, %bb.p ], [ %i.bq, %bb.q ]
  %i.br = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.br, label %bb.r, label %_ZN6duckdb10shared_ptrINS_20ExtendedOpenFileInfoELb1EED2Ev.exit.i, !prof !51

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bc) #29
  br label %_ZN6duckdb10shared_ptrINS_20ExtendedOpenFileInfoELb1EED2Ev.exit.i

_ZN6duckdb10shared_ptrINS_20ExtendedOpenFileInfoELb1EED2Ev.exit.i: ; preds = %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.n, %bb.l
  %i.bs = load ptr, ptr %1, align 8, !tbaa !18    ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.a
  br i1 %i.bt, label %_ZN6duckdb12OpenFileInfoD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN6duckdb10shared_ptrINS_20ExtendedOpenFileInfoELb1EED2Ev.exit.i
  call void @_ZdlPv(ptr noundef %i.bs) #31
  br label %_ZN6duckdb12OpenFileInfoD2Ev.exit

_ZN6duckdb12OpenFileInfoD2Ev.exit:                ; preds = %_ZN6duckdb10shared_ptrINS_20ExtendedOpenFileInfoELb1EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  ret i1 %i.g

bb.s:                                             ; preds = %.body, %bb.c
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.h, %bb.c ]
  call void @_ZN6duckdb12OpenFileInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %1) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nounwind
declare void @_ZN6duckdb24MultiFileReaderInterfaceD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_119DirectMultiFileInfoINS0_17ReadTextOperationEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #8 align 2 {
bb.a:
  tail call void @_ZN6duckdb24MultiFileReaderInterfaceD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #29
  tail call void @_ZdlPv(ptr noundef nonnull %0) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_119DirectMultiFileInfoINS0_17ReadTextOperationEE17InitializeOptionsERNS_13ClientContextENS_12optional_ptrINS_17TableFunctionInfoELb1EEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr.1300") align 8 captures(none) initializes((0, 8)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree nonnull readnone align 8 captures(none) %2, ptr nofree readnone captures(none) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4035)
  %i.a = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #32, !noalias !4035 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb21BaseFileReaderOptionsE, i64 16), ptr %i.a, align 8, !tbaa !48, !noalias !4035
  store ptr %i.a, ptr %0, align 8, !tbaa !1645, !alias.scope !4035
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZN6duckdb12_GLOBAL__N_119DirectMultiFileInfoINS0_17ReadTextOperationEE15ParseCopyOptionERNS_13ClientContextERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_6vectorINS_5ValueELb1ESaISF_EEERNS_21BaseFileReaderOptionsERNSE_ISB_Lb1ESaISB_EEERNSE_INS_11LogicalTypeELb1ESaISP_EEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree nonnull readnone align 8 captures(none) %2, ptr nofree nonnull readnone align 8 captures(none) %3, ptr nofree nonnull readnone align 8 captures(none) %4, ptr nofree nonnull readnone align 8 captures(none) %5, ptr nofree nonnull readnone align 8 captures(none) %6) unnamed_addr #15 align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZN6duckdb12_GLOBAL__N_119DirectMultiFileInfoINS0_17ReadTextOperationEE11ParseOptionERNS_13ClientContextERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_5ValueERNS_16MultiFileOptionsERNS_21BaseFileReaderOptionsE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree nonnull readnone align 8 captures(none) %2, ptr nofree nonnull readnone align 8 captures(none) %3, ptr nofree nonnull readnone align 8 captures(none) %4, ptr nofree nonnull readnone align 8 captures(none) %5) unnamed_addr #15 align 2 {
bb.a:
end_hunk_11
