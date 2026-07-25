inline.NumInlined: 6986
inline.NumDeleted: 3568
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN6duckdb8Executor19ReschedulePipelinesERKNS_6vectorINS_10shared_ptrINS_12MetaPipelineELb1EEELb1ESaIS4_EEERNS1_INS2_INS_5EventELb1EEELb1ESaISA_EEE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  ret void

bb.d:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb17ScheduleEventDataD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  resume { ptr, i32 } %i.p
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6duckdb8Executor12NextExecutorEv(ptr noundef nonnull align 8 dereferenceable(424) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !676  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !232
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !251
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 4
  %.not = icmp ult i64 %i.b, %i.j                 ; 2 uses
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.k = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb6vectorINS_10shared_ptrINS_8PipelineELb1EEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.b)
  %i.l = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_8PipelineELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.k)
  tail call void @_ZN6duckdb8Pipeline5ResetEv(ptr noundef nonnull align 8 dereferenceable(224) %i.l)
  %i.m = load ptr, ptr %0, align 8, !tbaa !61, !nonnull !132, !align !133
  %i.n = load i64, ptr %i.a, align 8, !tbaa !676
  %i.o = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb6vectorINS_10shared_ptrINS_8PipelineELb1EEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.n)
  %i.p = tail call noundef nonnull align 8 dereferenceable(224) ptr @_ZNK6duckdb10shared_ptrINS_8PipelineELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.o)
  %i.q = tail call noalias noundef nonnull dereferenceable(520) ptr @_Znwm(i64 noundef 520) #37, !noalias !677 ; 3 uses
  invoke void @_ZN6duckdb16PipelineExecutorC1ERNS_13ClientContextERNS_8PipelineE(ptr noundef nonnull align 8 dereferenceable(513) %i.q, ptr noundef nonnull align 8 dereferenceable(512) %i.m, ptr noundef nonnull align 8 dereferenceable(224) %i.p)
          to label %_ZN6duckdb9make_uniqINS_16PipelineExecutorEJRNS_13ClientContextERNS_8PipelineEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.c, !noalias !677

bb.c:                                             ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.q) #36, !noalias !677
  resume { ptr, i32 } %i.r

_ZN6duckdb9make_uniqINS_16PipelineExecutorEJRNS_13ClientContextERNS_8PipelineEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !426  ; 3 uses
  store ptr %i.q, ptr %i.s, align 8, !tbaa !426
  %.not.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb16PipelineExecutorESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb16PipelineExecutorEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb16PipelineExecutorEEclEPS1_.exit.i.i.i.i.i: ; preds = %_ZN6duckdb9make_uniqINS_16PipelineExecutorEJRNS_13ClientContextERNS_8PipelineEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  tail call void @_ZN6duckdb16PipelineExecutorD2Ev(ptr noundef nonnull align 8 dead_on_return(513) dereferenceable(513) %i.t) #34
  tail call void @_ZdlPv(ptr noundef nonnull %i.t) #36
  br label %_ZNSt10unique_ptrIN6duckdb16PipelineExecutorESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb16PipelineExecutorESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6duckdb16PipelineExecutorEEclEPS1_.exit.i.i.i.i.i, %_ZN6duckdb9make_uniqINS_16PipelineExecutorEJRNS_13ClientContextERNS_8PipelineEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.u = load i64, ptr %i.a, align 8, !tbaa !676
  %i.v = add i64 %i.u, 1
  store i64 %i.v, ptr %i.a, align 8, !tbaa !676
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZNSt10unique_ptrIN6duckdb16PipelineExecutorESt14default_deleteIS1_EED2Ev.exit
  ret i1 %.not
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb8Pipeline5ResetEv(ptr noundef nonnull align 8 dereferenceable(224) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.duckdb::unique_ptr.242", align 8 ; 7 uses
  tail call void @_ZN6duckdb8Pipeline9ResetSinkEv(ptr noundef nonnull align 8 dereferenceable(224) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !270  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !270  ; 2 uses
  %.not19 = icmp eq ptr %i.b, %i.d
  br i1 %.not19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %bb.g, %bb.a
  call void @_ZN6duckdb8Pipeline11ResetSourceEb(ptr noundef nonnull align 8 dereferenceable(224) %0, i1 noundef zeroext false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 25
  store atomic i8 1, ptr %i.f seq_cst, align 1
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %.sroa.011.020 = phi ptr [ %i.b, %.lr.ph ], [ %i.ab, %bb.g ] ; 2 uses
  %i.g = load ptr, ptr %.sroa.011.020, align 8, !tbaa !680 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 96 ; 3 uses
  %i.i = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.h) #34 ; 2 uses
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZSt20__throw_system_errori(i32 noundef %i.i) #35
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 88 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !682
  %.not15 = icmp eq ptr %i.k, null
  br i1 %.not15, label %bb.d, label %bb.g

bb.d:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #34
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !156, !nonnull !132, !align !133
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !61, !nonnull !132, !align !133
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !28
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  %i.p = load ptr, ptr %i.o, align 8
  invoke void %i.p(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.242") align 8 %1, ptr noundef nonnull align 8 dereferenceable(136) %i.g, ptr noundef nonnull align 8 dereferenceable(512) %i.m)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %1, align 8, !tbaa !682
  store ptr null, ptr %1, align 8, !tbaa !682
  %i.r = load ptr, ptr %i.j, align 8, !tbaa !682  ; 3 uses
  store ptr %i.q, ptr %i.j, align 8, !tbaa !682
  %.not.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb19GlobalOperatorStateESt14default_deleteIS1_EED2Ev.exit, label %_ZN6duckdb10unique_ptrINS_19GlobalOperatorStateESt14default_deleteIS1_ELb1EEaSEOS4_.exit

_ZN6duckdb10unique_ptrINS_19GlobalOperatorStateESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %bb.e
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !28
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.r) #34, !inline_history !683
  %.pr = load ptr, ptr %1, align 8, !tbaa !682    ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb19GlobalOperatorStateESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb19GlobalOperatorStateEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb19GlobalOperatorStateEEclEPS1_.exit.i: ; preds = %_ZN6duckdb10unique_ptrINS_19GlobalOperatorStateESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  %i.v = load ptr, ptr %.pr, align 8, !tbaa !28
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.pr) #34, !inline_history !684
  br label %_ZNSt10unique_ptrIN6duckdb19GlobalOperatorStateESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb19GlobalOperatorStateESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.e, %_ZN6duckdb10unique_ptrINS_19GlobalOperatorStateESt14default_deleteIS1_ELb1EEaSEOS4_.exit, %_ZNKSt14default_deleteIN6duckdb19GlobalOperatorStateEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  %i.z = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.h) #34 ; 0 uses
  resume { ptr, i32 } %i.y

bb.g:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb19GlobalOperatorStateESt14default_deleteIS1_EED2Ev.exit, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.aa = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.h) #34 ; 0 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.011.020, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ab, %i.d
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb8Executor14VerifyPipelineERNS_8PipelineE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(424) %0, ptr noundef nonnull align 8 dereferenceable(224) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.duckdb::vector.21", align 8 ; 6 uses
  %3 = alloca %"class.duckdb::vector.21", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  call void @_ZN6duckdb8Pipeline12GetOperatorsEv(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::vector.21") align 8 %2, ptr noundef nonnull align 8 dereferenceable(224) %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !259  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !259  ; 3 uses
  %.not50 = icmp eq ptr %i.b, %i.d
  %.pre = load ptr, ptr %2, align 8               ; 7 uses
  br i1 %.not50, label %._crit_edge53, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = icmp ne ptr %i.f, %.pre
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.fr = freeze i1 %i.g
  br i1 %.fr, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %.pre to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 3
  %umax57 = tail call i64 @llvm.umax.i64(i64 %i.l, i64 1)
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EED2Ev.exit21.us
  %.sroa.041.051.us = phi ptr [ %4, %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EED2Ev.exit21.us ], [ %i.b, %.lr.ph.split.us.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.m = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_8PipelineELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.041.051.us)
          to label %bb.b unwind label %.split.us

bb.b:                                             ; preds = %.lr.ph.split.us
  invoke void @_ZN6duckdb8Pipeline12GetOperatorsEv(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::vector.21") align 8 %3, ptr noundef nonnull align 8 dereferenceable(224) %i.m)
          to label %.preheader46.us unwind label %.split.us

._crit_edge49.split.us.thread:                    ; preds = %._crit_edge.us, %._crit_edge49.split.us
  tail call void @_ZdlPv(ptr noundef nonnull %i.x) #36
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EED2Ev.exit21.us

_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EED2Ev.exit21.us: ; preds = %._crit_edge49.split.us.thread, %._crit_edge49.split.us
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  %4 = getelementptr inbounds nuw i8, ptr %.sroa.041.051.us, i64 16 ; 2 uses
  %.not.us = icmp eq ptr %4, %i.d
  br i1 %.not.us, label %._crit_edge53, label %.lr.ph.split.us

bb.c:                                             ; preds = %.preheader.us, %bb.d
  %.01447.us = phi i64 [ 0, %.preheader.us ], [ %i.u, %bb.d ] ; 2 uses
  %i.n = load ptr, ptr %i.v, align 8, !tbaa !680  ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.01447.us
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !680
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !28
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = invoke noundef zeroext i1 %i.s(ptr noundef nonnull align 8 dereferenceable(136) %i.n, ptr noundef nonnull align 8 dereferenceable(136) %i.p)
          to label %bb.d unwind label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EED2Ev.exit34.thread ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.u = add nuw i64 %.01447.us, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.u, %i.ab
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.c, !llvm.loop !685

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %.01548.us = phi i64 [ %i.ac, %._crit_edge.us ], [ 0, %.preheader.us.preheader ] ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %.01548.us
  br label %bb.c

.preheader46.us:                                  ; preds = %bb.b
  %i.w = load ptr, ptr %i.h, align 8, !tbaa !330  ; 2 uses
  %i.x = load ptr, ptr %3, align 8, !tbaa !334    ; 6 uses
  %.not55 = icmp eq ptr %i.w, %i.x
  br i1 %.not55, label %._crit_edge49.split.us, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %.preheader46.us
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 3
  br label %.preheader.us

._crit_edge.us:                                   ; preds = %bb.d
  %i.ac = add nuw i64 %.01548.us, 1               ; 2 uses
  %exitcond58.not = icmp eq i64 %i.ac, %umax57
  br i1 %exitcond58.not, label %._crit_edge49.split.us.thread, label %.preheader.us, !llvm.loop !686

._crit_edge49.split.us:                           ; preds = %.preheader46.us
  %.not.i.i.i20.us = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i20.us, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EED2Ev.exit21.us, label %._crit_edge49.split.us.thread

.split.us:                                        ; preds = %bb.b, %.lr.ph.split.us
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EED2Ev.exit34

._crit_edge53:                                    ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EED2Ev.exit21, %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EED2Ev.exit21.us, %bb.a
  %.not.i.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge53
  tail call void @_ZdlPv(ptr noundef nonnull %.pre) #36
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EED2Ev.exit

_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EED2Ev.exit: ; preds = %._crit_edge53, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  ret void

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EED2Ev.exit21
  %.sroa.041.051 = phi ptr [ %i.ag, %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EED2Ev.exit21 ], [ %i.b, %.lr.ph ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.ae = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_8PipelineELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.041.051)
          to label %bb.f unwind label %.split

bb.f:                                             ; preds = %.lr.ph.split
  invoke void @_ZN6duckdb8Pipeline12GetOperatorsEv(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::vector.21") align 8 %3, ptr noundef nonnull align 8 dereferenceable(224) %i.ae)
          to label %.preheader46 unwind label %.split

.preheader46:                                     ; preds = %bb.f
  %i.af = load ptr, ptr %3, align 8, !tbaa !334   ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EED2Ev.exit21, label %bb.g

bb.g:                                             ; preds = %.preheader46
  tail call void @_ZdlPv(ptr noundef nonnull %i.af) #36
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EED2Ev.exit21

_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EED2Ev.exit21: ; preds = %.preheader46, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.041.051, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.ag, %i.d
  br i1 %.not, label %._crit_edge53, label %.lr.ph.split

.split:                                           ; preds = %bb.f, %.lr.ph.split
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EED2Ev.exit34

_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EED2Ev.exit34.thread: ; preds = %bb.c
  %i.ai = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.x) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  br label %bb.h

_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EED2Ev.exit34: ; preds = %.split, %.split.us
  %.pn.pn = phi { ptr, i32 } [ %i.ah, %.split ], [ %i.ad, %.split.us ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  %.not.i.i.i35 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i35, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EED2Ev.exit36, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EED2Ev.exit34.thread, %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EED2Ev.exit34
  %.pn.pn69 = phi { ptr, i32 } [ %i.ai, %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EED2Ev.exit34.thread ], [ %.pn.pn, %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EED2Ev.exit34 ]
  tail call void @_ZdlPv(ptr noundef nonnull %.pre) #36
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EED2Ev.exit36

_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EED2Ev.exit36: ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EED2Ev.exit34, %bb.h
  %.pn.pn70 = phi { ptr, i32 } [ %.pn.pn, %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EED2Ev.exit34 ], [ %.pn.pn69, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  resume { ptr, i32 } %.pn.pn70
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb8Pipeline12GetOperatorsEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::vector.21") align 8 captures(none) initializes((0, 24)) %0, ptr noundef nonnull align 8 dereferenceable(224) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZNKSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  tail call void @_ZNK6duckdb12optional_ptrINS_16PhysicalOperatorELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !485
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.e = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #37 ; 5 uses
  %i.f = ptrtoint ptr %i.b to i64
  store i64 %i.f, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 6 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !334
  store ptr %i.g, ptr %i.c, align 8, !tbaa !330
  store ptr %i.g, ptr %i.d, align 8, !tbaa !337
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !270  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !270  ; 2 uses
  %.not66 = icmp eq ptr %i.i, %i.k
  br i1 %.not66, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE9push_backEOS3_.exit24, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.l = phi ptr [ %i.e, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.az, %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE9push_backEOS3_.exit24 ] ; 8 uses
  %i.m = phi ptr [ %i.g, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.ba, %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE9push_backEOS3_.exit24 ] ; 5 uses
  %i.n = phi ptr [ %i.g, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.bb, %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE9push_backEOS3_.exit24 ] ; 4 uses
  store ptr %i.n, ptr %i.c, align 8
  store ptr %i.m, ptr %i.d, align 8
  store ptr %i.l, ptr %0, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !485
  %.not52 = icmp eq ptr %i.p, null
  br i1 %.not52, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE9push_backEOS3_.exit42, label %bb.d

.lr.ph:                                           ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i, %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE9push_backEOS3_.exit24
  %.sroa.047.067 = phi ptr [ %i.bc, %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE9push_backEOS3_.exit24 ], [ %i.i, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %i.q = phi ptr [ %i.bb, %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE9push_backEOS3_.exit24 ], [ %i.g, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 8 uses
  %i.r = phi ptr [ %i.ba, %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE9push_backEOS3_.exit24 ], [ %i.g, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 4 uses
  %i.s = phi ptr [ %i.az, %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE9push_backEOS3_.exit24 ], [ %i.e, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 11 uses
  %i.t = load ptr, ptr %.sroa.047.067, align 8, !tbaa !680 ; 2 uses
  %.not.i.i9 = icmp eq ptr %i.q, %i.r
  br i1 %.not.i.i9, label %bb.b, label %bb.a

bb.a:                                             ; preds = %.lr.ph
  %i.u = ptrtoint ptr %i.t to i64
  store i64 %i.u, ptr %i.q, align 8
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE9push_backEOS3_.exit24

bb.b:                                             ; preds = %.lr.ph
  %i.v = ptrtoint ptr %i.q to i64                 ; 2 uses
  %i.w = ptrtoint ptr %i.s to i64                 ; 3 uses
  %i.x = sub i64 %i.v, %i.w                       ; 3 uses
  %i.y = icmp eq i64 %i.x, 9223372036854775800
  br i1 %i.y, label %bb.c, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i10

bb.c:                                             ; preds = %bb.b
  store ptr %i.q, ptr %i.c, align 8
  store ptr %i.r, ptr %i.d, align 8
  store ptr %i.s, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.30) #35
          to label %.noexc22 unwind label %.loopexit.split-lp

.noexc22:                                         ; preds = %bb.c
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i10: ; preds = %bb.b
  %i.z = ashr exact i64 %i.x, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i11 = tail call i64 @llvm.umax.i64(i64 %i.z, i64 1)
  %i.aa = add nsw i64 %.sroa.speculated.i.i.i.i11, %i.z ; 2 uses
  %i.ab = icmp ult i64 %i.aa, %i.z
  %i.ac = tail call i64 @llvm.umin.i64(i64 %i.aa, i64 1152921504606846975)
  %i.ad = select i1 %i.ab, i64 1152921504606846975, i64 %i.ac ; 3 uses
  %.not.i.i.i.i12 = icmp ne i64 %i.ad, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i12)
  %i.ae = shl nuw nsw i64 %i.ad, 3
  %i.af = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #37
          to label %.noexc23 unwind label %.loopexit ; 8 uses

.noexc23:                                         ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i10
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.x
  %i.ah = ptrtoint ptr %i.t to i64
  store i64 %i.ah, ptr %i.ag, align 8
  %.not10.i.i.i.i.i.i.i13 = icmp eq ptr %i.s, %i.q
  br i1 %.not10.i.i.i.i.i.i.i13, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i21, label %.lr.ph.i.i.i.i.i.i.i14.preheader

.lr.ph.i.i.i.i.i.i.i14.preheader:                 ; preds = %.noexc23
  %i.ai = ptrtoaddr ptr %i.af to i64
  %i.aj = sub i64 %i.v, %i.w
  %i.ak = add i64 %i.aj, -8                       ; 2 uses
  %i.al = lshr i64 %i.ak, 3
  %i.am = add nuw nsw i64 %i.al, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ak, 24
  %i.an = sub i64 %i.w, %i.ai
  %diff.check = icmp ugt i64 %i.an, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i14.preheader152, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i14.preheader
  %n.vec = and i64 %i.am, 4611686018427387900     ; 3 uses
  %i.ao = shl i64 %n.vec, 3                       ; 2 uses
  %i.ap = getelementptr i8, ptr %i.af, i64 %i.ao  ; 2 uses
end_hunk_0
