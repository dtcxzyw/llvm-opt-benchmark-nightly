Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/parallel_impl?download=true
inline.NumInlined: 443
inline.NumDeleted: 200
begin_hunk_0_@_ZN2cv10ThreadPool3runERKNS_5RangeERKNS_16ParallelLoopBodyEd:bb.a

bb.cb:                                            ; preds = %bb.bz
  %i.ka = atomicrmw volatile add ptr %i.jn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i88

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i88: ; preds = %bb.cb, %bb.ca
  %.0.i.i.i.i.i.i89 = phi i32 [ %i.jq, %bb.ca ], [ %i.ka, %bb.cb ]
  %i.kb = icmp eq i32 %.0.i.i.i.i.i.i89, 1
  br i1 %i.kb, label %bb.cc, label %_ZN2cv3PtrINS_11ParallelJobEE7releaseEv.exit, !prof !47

bb.cc:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i88
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jm) #3
  br label %_ZN2cv3PtrINS_11ParallelJobEE7releaseEv.exit

_ZN2cv3PtrINS_11ParallelJobEE7releaseEv.exit:     ; preds = %bb.bw, %bb.by, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i88, %bb.cc
  %i.kc = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.n) #3 ; 0 uses
  br label %bb.ce

bb.cd:                                            ; preds = %bb.d, %bb.b, %bb.a
  %i.kd = load ptr, ptr %2, align 8, !tbaa !45
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 16
  %i.kf = load ptr, ptr %i.ke, align 8
  tail call void %i.kf(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(8) %1)
  br label %bb.ce

bb.ce:                                            ; preds = %bb.bp, %_ZN2cv3PtrINS_11ParallelJobEE7releaseEv.exit, %bb.cd, %bb.f
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef range(i64 0, 4294967296) i64 @_ZN2cv10ThreadPool15getNumOfThreadsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(176) %0) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !60
  %i.b = zext i32 %i.a to i64
  ret i64 %i.b
}

; Function Attrs: noreturn
declare void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !69
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.19) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #3 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  store i64 %i.d, ptr %i.a, align 8, !tbaa !91
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !77
  %i.g = load i64, ptr %i.a, align 8, !tbaa !91
  store i64 %i.g, ptr %i.b, align 8, !tbaa !46
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !46
  store i8 %i.i, ptr %i.h, align 1, !tbaa !46
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !91   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !71
  %i.l = load ptr, ptr %0, align 8, !tbaa !77
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv10ThreadPool15setNumOfThreadsEj(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !60
  %.not = icmp eq i32 %1, %i.a
  br i1 %.not, label %_ZN2cv10ThreadPool11reconfigureEj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %1, ptr %0, align 8, !tbaa !60
  %i.b = icmp eq i32 %1, 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.d = load ptr, ptr %i.c, align 8
  %.not.i = icmp eq ptr %i.d, null
  %or.cond = select i1 %i.b, i1 %.not.i, i1 false
  br i1 %or.cond, label %bb.c, label %_ZN2cv10ThreadPool11reconfigureEj.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !81
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !80
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZN2cv10ThreadPool11reconfigureEj.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.j) #3 ; 0 uses
  %i.l = tail call noundef zeroext i1 @_ZN2cv10ThreadPool12reconfigure_Ej(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 noundef 0) ; 0 uses
  %i.m = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.j) #3 ; 0 uses
  br label %_ZN2cv10ThreadPool11reconfigureEj.exit

_ZN2cv10ThreadPool11reconfigureEj.exit:           ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef range(i64 0, 4294967296) i64 @_ZN2cv33parallel_pthreads_get_threads_numEv() local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN2cv10ThreadPool8instanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN2cv10ThreadPool8instanceEv.exit, !prof !94

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2cv10ThreadPool8instanceEvE8instance) #3
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN2cv10ThreadPool8instanceEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = invoke noalias noundef nonnull dereferenceable(176) ptr @_Znwm(i64 noundef 176) #24
          to label %bb.d unwind label %bb.f       ; 3 uses

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN2cv10ThreadPoolC2Ev(ptr noundef nonnull align 8 dereferenceable(176) %i.d)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  store ptr %i.d, ptr @_ZZN2cv10ThreadPool8instanceEvE8instance, align 8, !tbaa !89
  %i.e = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZZN2cv10ThreadPool8instanceEvE8instance) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN2cv10ThreadPool8instanceEvE8instance) #3
  br label %_ZN2cv10ThreadPool8instanceEv.exit

bb.f:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 176) #22
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn.i = phi { ptr, i32 } [ %i.g, %bb.g ], [ %i.f, %bb.f ]
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN2cv10ThreadPool8instanceEvE8instance) #3
  resume { ptr, i32 } %.pn.i

_ZN2cv10ThreadPool8instanceEv.exit:               ; preds = %bb.a, %bb.b, %bb.e
  %i.h = load ptr, ptr @_ZZN2cv10ThreadPool8instanceEvE8instance, align 8, !tbaa !89
  %i.i = load i32, ptr %i.h, align 8, !tbaa !60
  %i.j = zext i32 %i.i to i64
  ret i64 %i.j
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv33parallel_pthreads_set_threads_numEi(i32 noundef %0) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i32 %0, 0
  %i.b = load atomic i8, ptr @_ZGVZN2cv10ThreadPool8instanceEvE8instance acquire, align 8
  %i.c = icmp eq i8 %i.b, 0                       ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  br i1 %i.c, label %bb.c, label %_ZN2cv10ThreadPool8instanceEv.exit, !prof !94

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2cv10ThreadPool8instanceEvE8instance) #3
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %_ZN2cv10ThreadPool8instanceEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = invoke noalias noundef nonnull dereferenceable(176) ptr @_Znwm(i64 noundef 176) #24
          to label %bb.e unwind label %bb.n       ; 3 uses

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN2cv10ThreadPoolC2Ev(ptr noundef nonnull align 8 dereferenceable(176) %i.e)
          to label %bb.f unwind label %1

bb.f:                                             ; preds = %bb.e
  store ptr %i.e, ptr @_ZZN2cv10ThreadPool8instanceEvE8instance, align 8, !tbaa !89
  %i.f = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZZN2cv10ThreadPool8instanceEvE8instance) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN2cv10ThreadPool8instanceEvE8instance) #3
  br label %_ZN2cv10ThreadPool8instanceEv.exit

1:                                                ; preds = %bb.e
  %2 = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %1, %bb.o
  %.sink = phi ptr [ %i.j, %bb.o ], [ %i.e, %1 ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.m, %bb.o ], [ %2, %1 ]
  tail call void @_ZdlPvm(ptr noundef nonnull %.sink, i64 noundef 176) #22
  br label %common.resume

common.resume:                                    ; preds = %bb.g, %bb.n
  %common.resume.op = phi { ptr, i32 } [ %i.l, %bb.n ], [ %common.resume.op.ph, %bb.g ]
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN2cv10ThreadPool8instanceEvE8instance) #3
  resume { ptr, i32 } %common.resume.op

_ZN2cv10ThreadPool8instanceEv.exit:               ; preds = %bb.b, %bb.c, %bb.f
  %i.g = load ptr, ptr @_ZZN2cv10ThreadPool8instanceEvE8instance, align 8, !tbaa !89 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !60
  %.not.i2 = icmp eq i32 %i.h, 0
  br i1 %.not.i2, label %_ZN2cv10ThreadPool15setNumOfThreadsEj.exit, label %bb.h

bb.h:                                             ; preds = %_ZN2cv10ThreadPool8instanceEv.exit
  store i32 0, ptr %i.g, align 8, !tbaa !60
  br label %_ZN2cv10ThreadPool15setNumOfThreadsEj.exit

bb.i:                                             ; preds = %bb.a
  br i1 %i.c, label %bb.j, label %_ZN2cv10ThreadPool8instanceEv.exit5, !prof !94

bb.j:                                             ; preds = %bb.i
  %i.i = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2cv10ThreadPool8instanceEvE8instance) #3
  %.not.i3 = icmp eq i32 %i.i, 0
  br i1 %.not.i3, label %_ZN2cv10ThreadPool8instanceEv.exit5, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.j = invoke noalias noundef nonnull dereferenceable(176) ptr @_Znwm(i64 noundef 176) #24
          to label %bb.l unwind label %bb.n       ; 3 uses

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN2cv10ThreadPoolC2Ev(ptr noundef nonnull align 8 dereferenceable(176) %i.j)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l
  store ptr %i.j, ptr @_ZZN2cv10ThreadPool8instanceEvE8instance, align 8, !tbaa !89
  %i.k = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZZN2cv10ThreadPool8instanceEvE8instance) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN2cv10ThreadPool8instanceEvE8instance) #3
  br label %_ZN2cv10ThreadPool8instanceEv.exit5

bb.n:                                             ; preds = %bb.d, %bb.k
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.o:                                             ; preds = %bb.l
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

_ZN2cv10ThreadPool8instanceEv.exit5:              ; preds = %bb.i, %bb.j, %bb.m
  %i.n = load ptr, ptr @_ZZN2cv10ThreadPool8instanceEvE8instance, align 8, !tbaa !89 ; 7 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !60
  %.not.i6 = icmp eq i32 %0, %i.o
  br i1 %.not.i6, label %_ZN2cv10ThreadPool15setNumOfThreadsEj.exit, label %bb.p

bb.p:                                             ; preds = %_ZN2cv10ThreadPool8instanceEv.exit5
  store i32 %0, ptr %i.n, align 8, !tbaa !60
  %i.p = icmp eq i32 %0, 1
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 160
  %i.r = load ptr, ptr %i.q, align 8
  %.not.i.i7 = icmp eq ptr %i.r, null
  %or.cond.i = select i1 %i.p, i1 %.not.i.i7, i1 false
  br i1 %or.cond.i, label %bb.q, label %_ZN2cv10ThreadPool15setNumOfThreadsEj.exit

bb.q:                                             ; preds = %bb.p
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 136
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 144
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !81
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !80
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZN2cv10ThreadPool15setNumOfThreadsEj.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.y = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.x) #3 ; 0 uses
  %i.z = tail call noundef zeroext i1 @_ZN2cv10ThreadPool12reconfigure_Ej(ptr noundef nonnull align 8 dereferenceable(176) %i.n, i32 noundef 0) ; 0 uses
  %i.aa = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.x) #3 ; 0 uses
  br label %_ZN2cv10ThreadPool15setNumOfThreadsEj.exit

_ZN2cv10ThreadPool15setNumOfThreadsEj.exit:       ; preds = %bb.r, %bb.q, %bb.p, %_ZN2cv10ThreadPool8instanceEv.exit5, %bb.h, %_ZN2cv10ThreadPool8instanceEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv21parallel_for_pthreadsERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %2) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN2cv10ThreadPool8instanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN2cv10ThreadPool8instanceEv.exit, !prof !94

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2cv10ThreadPool8instanceEvE8instance) #3
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN2cv10ThreadPool8instanceEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = invoke noalias noundef nonnull dereferenceable(176) ptr @_Znwm(i64 noundef 176) #24
          to label %bb.d unwind label %bb.f       ; 3 uses

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN2cv10ThreadPoolC2Ev(ptr noundef nonnull align 8 dereferenceable(176) %i.d)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  store ptr %i.d, ptr @_ZZN2cv10ThreadPool8instanceEvE8instance, align 8, !tbaa !89
  %i.e = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZZN2cv10ThreadPool8instanceEvE8instance) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN2cv10ThreadPool8instanceEvE8instance) #3
  br label %_ZN2cv10ThreadPool8instanceEv.exit

bb.f:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 176) #22
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn.i = phi { ptr, i32 } [ %i.g, %bb.g ], [ %i.f, %bb.f ]
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN2cv10ThreadPool8instanceEvE8instance) #3
  resume { ptr, i32 } %.pn.i

_ZN2cv10ThreadPool8instanceEv.exit:               ; preds = %bb.a, %bb.b, %bb.e
  %i.h = load ptr, ptr @_ZZN2cv10ThreadPool8instanceEvE8instance, align 8, !tbaa !89
  tail call void @_ZN2cv10ThreadPool3runERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 8 dereferenceable(176) %i.h, ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %2)
  ret void
}

; Function Attrs: nounwind
declare i32 @sched_yield() local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIPKvEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !45
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #3, !inline_history !147
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !18   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !18
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !45
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #3, !inline_history !147
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN2cv12WorkerThread19thread_loop_wrapperEPv(ptr noundef %0) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = load ptr, ptr @__itt_thread_set_name_ptr__3_0, align 8, !tbaa !88 ; 2 uses
  %.not.not = icmp eq ptr %i.a, null
  br i1 %.not.not, label %.critedge8, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #3
  %i.b = tail call noundef i32 @_ZN2cv5utils11getThreadIDEv()
  call void (ptr, ptr, ...) @_ZN2cv6formatB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef nonnull @.str.18, i32 noundef %i.b)
  %i.c = load ptr, ptr %1, align 8, !tbaa !77
  invoke void %i.a(ptr noundef %i.c)
          to label %.critedge unwind label %bb.c

.critedge:                                        ; preds = %bb.b
  %i.d = load ptr, ptr %1, align 8, !tbaa !77     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.critedge
  %i.g = load i64, ptr %i.e, align 8, !tbaa !46
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #3
  br label %.critedge8

.critedge8:                                       ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZN2cv12WorkerThread11thread_bodyEv(ptr noundef nonnull align 8 dereferenceable(144) %0)
  ret ptr null

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %1, align 8, !tbaa !77     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %bb.c
  %i.m = load i64, ptr %i.k, align 8, !tbaa !46
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #3
  resume { ptr, i32 } %i.i
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #0

declare void @_ZN2cv6formatB5cxx11EPKcz(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #2

; Function Attrs: nofree nounwind
end_hunk_0
