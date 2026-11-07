Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/parallel?download=true
inline.NumInlined: 1169
inline.NumDeleted: 335
begin_hunk_0_@_ZNSt6vectorISt6threadSaIS0_EED2Ev:bb.a
_ZNSt12_Vector_baseISt6threadSaIS0_EED2Ev.exit:   ; preds = %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit, %bb.d
  ret void
}

declare void @_ZN4pbrt3LogENS_8LogLevelEPKciS2_(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4pbrt10ThreadPool10WorkOrWaitEPSt11unique_lockISt5mutexEb(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 {
bb.a:
  %.not13 = xor i1 %2, true
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 65
  %i.b = load i8, ptr %i.a, align 1, !range !41
  %i.c = trunc nuw i8 %i.b to i1
  %or.cond = select i1 %.not13, i1 %i.c, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @_ZNSt18condition_variable4waitERSt11unique_lockISt5mutexE(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(9) %1)
  br label %_ZNK4pbrt11ParallelJob8FinishedEv.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.018 = load ptr, ptr %i.e, align 8, !tbaa !59  ; 2 uses
  %.not19 = icmp eq ptr %.018, null
  br i1 %.not19, label %.critedge16, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.020 = phi ptr [ %.0, %bb.d ], [ %.018, %bb.c ] ; 8 uses
  %i.f = load ptr, ptr %.020, align 8, !tbaa !51
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(33) %.020)
  br i1 %i.i, label %.critedge, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %.020, i64 24
  %.0 = load ptr, ptr %i.j, align 8, !tbaa !59    ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %.critedge16, label %.lr.ph, !llvm.loop !157

.critedge:                                        ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %.020, i64 8 ; 5 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !61
  %i.m = add nsw i32 %i.l, 1
  store i32 %i.m, ptr %i.k, align 8, !tbaa !61
  %i.n = load ptr, ptr %.020, align 8, !tbaa !51
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(33) %.020, ptr noundef %1)
  %i.q = load ptr, ptr %1, align 8, !tbaa !30     ; 2 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.critedge
  tail call void @_ZSt20__throw_system_errori(i32 noundef 1) #25
  unreachable

bb.f:                                             ; preds = %.critedge
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.s = load i8, ptr %i.r, align 8, !tbaa !31, !range !41, !noundef !58
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_system_errori(i32 noundef 35) #25
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.u = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.q) #23 ; 2 uses
  %.not.i.i = icmp eq i32 %i.u, 0
  br i1 %.not.i.i, label %_ZNSt11unique_lockISt5mutexE4lockEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.u) #25
  unreachable

_ZNSt11unique_lockISt5mutexE4lockEv.exit:         ; preds = %bb.h
  store i8 1, ptr %i.r, align 8, !tbaa !31
  %i.v = load i32, ptr %i.k, align 8, !tbaa !61
  %i.w = add nsw i32 %i.v, -1
  store i32 %i.w, ptr %i.k, align 8, !tbaa !61
  %i.x = load ptr, ptr %.020, align 8, !tbaa !51
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call noundef zeroext i1 %i.z(ptr noundef nonnull align 8 dereferenceable(33) %.020), !inline_history !1
  br i1 %i.aa, label %_ZNK4pbrt11ParallelJob8FinishedEv.exit.thread, label %_ZNK4pbrt11ParallelJob8FinishedEv.exit

_ZNK4pbrt11ParallelJob8FinishedEv.exit:           ; preds = %_ZNSt11unique_lockISt5mutexE4lockEv.exit
  %i.ab = load i32, ptr %i.k, align 8, !tbaa !61
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.j, label %_ZNK4pbrt11ParallelJob8FinishedEv.exit.thread

bb.j:                                             ; preds = %_ZNK4pbrt11ParallelJob8FinishedEv.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @_ZNSt18condition_variable10notify_allEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ad) #23
  br label %_ZNK4pbrt11ParallelJob8FinishedEv.exit.thread

.critedge16:                                      ; preds = %bb.d, %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @_ZNSt18condition_variable4waitERSt11unique_lockISt5mutexE(ptr noundef nonnull align 8 dereferenceable(48) %i.ae, ptr noundef nonnull align 8 dereferenceable(9) %1)
  br label %_ZNK4pbrt11ParallelJob8FinishedEv.exit.thread

_ZNK4pbrt11ParallelJob8FinishedEv.exit.thread:    ; preds = %_ZNSt11unique_lockISt5mutexE4lockEv.exit, %.critedge16, %bb.j, %_ZNK4pbrt11ParallelJob8FinishedEv.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4pbrt10ThreadPool12AddToJobListEPNS_11ParallelJobE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_lock") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !30
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #23 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #25
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit:         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.c, align 8, !tbaa !31
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !49   ; 3 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %2, ptr %i.f, align 8, !tbaa !62
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.e, ptr %i.g, align 8, !tbaa !63
  store ptr %2, ptr %i.d, align 8, !tbaa !49
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 80
  tail call void @_ZNSt18condition_variable10notify_allEv(ptr noundef nonnull align 8 dereferenceable(48) %i.h) #23
  ret void
}

declare void @_ZNSt18condition_variable4waitERSt11unique_lockISt5mutexE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(9)) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN4pbrt10ThreadPool17RemoveFromJobListEPNS_11ParallelJobE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(128) %0, ptr nofree noundef captures(none) initializes((32, 33)) %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !62   ; 3 uses
  %.not = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !63   ; 4 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.d, ptr %i.e, align 8, !tbaa !63
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.d, ptr %i.f, align 8, !tbaa !49
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.not10 = icmp eq ptr %i.d, null
  br i1 %.not10, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.b, ptr %i.g, align 8, !tbaa !62
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i8 1, ptr %i.h, align 8, !tbaa !64
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN4pbrt10ThreadPool12WorkOrReturnEv(ptr noundef nonnull align 8 dereferenceable(128) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::unique_lock", align 8  ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.a, ptr %1, align 8, !tbaa !30
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.c = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #23 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.c) #25
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit:         ; preds = %bb.a
  store i8 1, ptr %i.b, align 8, !tbaa !31
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.01124 = load ptr, ptr %i.d, align 8, !tbaa !59 ; 2 uses
  %.not25.not = icmp eq ptr %.01124, null
  br i1 %.not25.not, label %bb.l, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, %bb.d
  %.01126 = phi ptr [ %.011, %bb.d ], [ %.01124, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit ] ; 8 uses
  %i.e = load ptr, ptr %.01126, align 8, !tbaa !51
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = invoke noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(33) %.01126)
          to label %bb.c unwind label %.loopexit.split-lp.thread ; 3 uses

bb.c:                                             ; preds = %.lr.ph
  br i1 %i.h, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.01126, i64 24
  %.011 = load ptr, ptr %i.i, align 8, !tbaa !59  ; 2 uses
  %.not.not = icmp eq ptr %.011, null
  br i1 %.not.not, label %.critedge12, label %.lr.ph, !llvm.loop !158

.loopexit.split-lp.thread:                        ; preds = %.lr.ph
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

.loopexit.split-lp:                               ; preds = %.invoke, %.critedge, %bb.j
  %lpad.loopexit.split-lp28 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre = load i8, ptr %i.b, align 8, !tbaa !31, !range !41
  %i.j = trunc nuw i8 %.pre to i1
  br i1 %i.j, label %bb.e, label %_ZNSt11unique_lockISt5mutexED2Ev.exit

bb.e:                                             ; preds = %.loopexit.split-lp.thread, %.loopexit.split-lp
  %lpad.phi37 = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit.split-lp.thread ], [ %lpad.loopexit.split-lp28, %.loopexit.split-lp ] ; 2 uses
  %i.k = load ptr, ptr %1, align 8, !tbaa !30     ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.k) #23 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %.loopexit.split-lp, %bb.e, %bb.f
  %lpad.phi36 = phi { ptr, i32 } [ %lpad.loopexit.split-lp28, %.loopexit.split-lp ], [ %lpad.phi37, %bb.e ], [ %lpad.phi37, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  resume { ptr, i32 } %lpad.phi36

.critedge:                                        ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.01126, i64 8 ; 5 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !61
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.m, align 8, !tbaa !61
  %i.p = load ptr, ptr %.01126, align 8, !tbaa !51
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  invoke void %i.r(ptr noundef nonnull align 8 dereferenceable(33) %.01126, ptr noundef nonnull %1)
          to label %bb.g unwind label %.loopexit.split-lp

bb.g:                                             ; preds = %.critedge
  %i.s = load ptr, ptr %1, align 8, !tbaa !30     ; 2 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %.invoke, label %bb.h

.invoke:                                          ; preds = %bb.i, %bb.h, %bb.g
  %i.t = phi i32 [ 35, %bb.h ], [ 1, %bb.g ], [ %i.w, %bb.i ]
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.t) #25
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.u = load i8, ptr %i.b, align 8, !tbaa !31, !range !41, !noundef !58
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %.invoke, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.s) #23 ; 2 uses
  %.not.i.i13 = icmp eq i32 %i.w, 0
  br i1 %.not.i.i13, label %bb.j, label %.invoke

bb.j:                                             ; preds = %bb.i
  store i8 1, ptr %i.b, align 8, !tbaa !31
  %i.x = load i32, ptr %i.m, align 8, !tbaa !61
  %i.y = add nsw i32 %i.x, -1
  store i32 %i.y, ptr %i.m, align 8, !tbaa !61
  %i.z = load ptr, ptr %.01126, align 8, !tbaa !51
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = invoke noundef zeroext i1 %i.ab(ptr noundef nonnull align 8 dereferenceable(33) %.01126)
          to label %.noexc16 unwind label %.loopexit.split-lp, !inline_history !1

.noexc16:                                         ; preds = %bb.j
  br i1 %i.ac, label %.critedge12, label %_ZNK4pbrt11ParallelJob8FinishedEv.exit

_ZNK4pbrt11ParallelJob8FinishedEv.exit:           ; preds = %.noexc16
  %i.ad = load i32, ptr %i.m, align 8, !tbaa !61
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.k, label %.critedge12

bb.k:                                             ; preds = %_ZNK4pbrt11ParallelJob8FinishedEv.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @_ZNSt18condition_variable10notify_allEv(ptr noundef nonnull align 8 dereferenceable(48) %i.af) #23
  br label %.critedge12

.critedge12:                                      ; preds = %bb.d, %.noexc16, %_ZNK4pbrt11ParallelJob8FinishedEv.exit, %bb.k
  %i.ag = load i8, ptr %i.b, align 8, !tbaa !31
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.l, label %_ZNSt11unique_lockISt5mutexED2Ev.exit18

bb.l:                                             ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, %.critedge12
  %.not2140 = phi i1 [ %i.h, %.critedge12 ], [ false, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit ] ; 2 uses
  %i.ai = load ptr, ptr %1, align 8, !tbaa !30    ; 2 uses
  %.not.i.i17 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i17, label %_ZNSt11unique_lockISt5mutexED2Ev.exit18, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aj = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ai) #23 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit18

_ZNSt11unique_lockISt5mutexED2Ev.exit18:          ; preds = %.critedge12, %bb.l, %bb.m
  %.not2139 = phi i1 [ %i.h, %.critedge12 ], [ %.not2140, %bb.l ], [ %.not2140, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  ret i1 %.not2139
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4pbrt10ThreadPool13ForEachThreadESt8functionIFvvEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0, ptr nofree noundef align 8 dereferenceable(32) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::function.8", align 8   ; 11 uses
  %3 = alloca %"class.std::function.5", align 8   ; 9 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #26 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !53
  %i.d = load ptr, ptr %0, align 8, !tbaa !56
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 3
  %i.i = trunc i64 %i.h to i32
  %i.j = add i32 %i.i, 1                          ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.a, i8 0, i64 40, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  tail call void @_ZNSt18condition_variableC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.k) #23
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i32 %i.j, ptr %i.l, align 8, !tbaa !37
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 92
  store i32 %i.j, ptr %i.m, align 4, !tbaa !40
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !53
  %i.o = load ptr, ptr %0, align 8, !tbaa !56
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = ashr exact i64 %i.r, 3
  %i.t = add nsw i64 %i.s, 1
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.a, ptr %3, align 8, !tbaa !66
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %1, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !68
  store ptr @"_ZNSt17_Function_handlerIFvlEZN4pbrt10ThreadPool13ForEachThreadESt8functionIFvvEEE3$_0E9_M_invokeERKSt9_Any_dataOl", ptr %i.v, align 8, !tbaa !71
  store ptr @"_ZNSt17_Function_handlerIFvlEZN4pbrt10ThreadPool13ForEachThreadESt8functionIFvvEEE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation", ptr %i.u, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.y, align 8
  %i.z = ptrtoint ptr %3 to i64
  store i64 %i.z, ptr %2, align 8, !tbaa !74
  store ptr @_ZNSt17_Function_handlerIFvllEZN4pbrt11ParallelForEllSt8functionIFvlEEEUlllE_E9_M_invokeERKSt9_Any_dataOlSA_, ptr %i.x, align 8, !tbaa !76
  store ptr @_ZNSt17_Function_handlerIFvllEZN4pbrt11ParallelForEllSt8functionIFvlEEEUlllE_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation, ptr %i.w, align 8, !tbaa !72
  invoke void @_ZN4pbrt11ParallelForEllSt8functionIFvllEE(i64 noundef 0, i64 noundef %i.t, ptr nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.aa = load ptr, ptr %i.w, align 8, !tbaa !72  ; 2 uses
  %.not.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = invoke noundef zeroext i1 %i.aa(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %bb.h unwind label %bb.d       ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  call void @__clang_call_terminate(ptr %i.ad) #27
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.ae = landingpad { ptr, i32 }
          cleanup
  %i.af = load ptr, ptr %i.w, align 8, !tbaa !72  ; 2 uses
  %.not.i3.i = icmp eq ptr %i.af, null
  br i1 %.not.i3.i, label %.body, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = invoke noundef zeroext i1 %i.af(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %.body unwind label %bb.g      ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  call void @__clang_call_terminate(ptr %i.ai) #27
  unreachable

bb.h:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.aj = load ptr, ptr %i.u, align 8, !tbaa !72  ; 2 uses
  %.not.i = icmp eq ptr %i.aj, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = invoke noundef zeroext i1 %i.aj(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  call void @__clang_call_terminate(ptr %i.am) #27
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.h, %bb.i
  ret void

.body:                                            ; preds = %bb.e, %bb.f
  %i.an = load ptr, ptr %i.u, align 8, !tbaa !72  ; 2 uses
  %.not.i3 = icmp eq ptr %i.an, null
  br i1 %.not.i3, label %_ZNSt14_Function_baseD2Ev.exit4, label %bb.k

bb.k:                                             ; preds = %.body
  %i.ao = invoke noundef zeroext i1 %i.an(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit4 unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  call void @__clang_call_terminate(ptr %i.aq) #27
  unreachable

_ZNSt14_Function_baseD2Ev.exit4:                  ; preds = %.body, %bb.k
  resume { ptr, i32 } %i.ae
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4pbrt10ThreadPool7DisableEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(128) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 65 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !77, !range !41, !noundef !58
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4pbrt8LogFatalIJRA10_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef 152, ptr noundef nonnull @.str.7, ptr noundef nonnull align 1 dereferenceable(10) @.str.8) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  store i8 1, ptr %i.a, align 1, !tbaa !77
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !49
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4pbrt8LogFatalIJRA19_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef 154, ptr noundef nonnull @.str.7, ptr noundef nonnull align 1 dereferenceable(19) @.str.9) #25
  unreachable

bb.e:                                             ; preds = %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZN4pbrt8LogFatalIJRA10_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 1 dereferenceable(10) %4) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.a, ptr %5, align 8, !tbaa !19, !alias.scope !161
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !22, !alias.scope !161
  store i8 0, ptr %i.a, align 8, !tbaa !23, !alias.scope !161
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRA10_KcJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS2_OT_DpOT0_(ptr noundef nonnull align 8 %5, ptr noundef %3, ptr noundef nonnull align 1 dereferenceable(10) %4)
          to label %_ZN4pbrt12StringPrintfIJRA10_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.d = load ptr, ptr %5, align 8, !tbaa !24, !alias.scope !161 ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8, !tbaa !23, !alias.scope !161
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #24
  br label %common.resume

common.resume:                                    ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.c, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_ZN4pbrt12StringPrintfIJRA10_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit: ; preds = %bb.a
  %i.h = load ptr, ptr %5, align 8, !tbaa !24
  invoke void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %i.h) #25
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN4pbrt12StringPrintfIJRA10_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit
  unreachable

bb.d:                                             ; preds = %_ZN4pbrt12StringPrintfIJRA10_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %5, align 8, !tbaa !24     ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.a
end_hunk_0
