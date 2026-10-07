Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/default-job?download=true
inline.NumInlined: 246
inline.NumDeleted: 147
begin_hunk_0_@_ZN2v88platform15DefaultJobStateD0Ev:bb.a
  %i.m = add nsw i32 %i.l, -1
  store i32 %i.m, ptr %i.j, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.n = atomicrmw volatile add ptr %i.j, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i.i.i.i = phi i32 [ %i.l, %bb.c ], [ %i.n, %bb.d ]
  %i.o = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.o, label %bb.e, label %_ZN2v88platform15DefaultJobStateD2Ev.exit

bb.e:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  %i.p = load ptr, ptr %i.i, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #15, !inline_history !20
  br label %_ZN2v88platform15DefaultJobStateD2Ev.exit

_ZN2v88platform15DefaultJobStateD2Ev.exit:        ; preds = %_ZNSt10unique_ptrIN2v87JobTaskESt14default_deleteIS1_EED2Ev.exit.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #16
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN2v88platform15DefaultJobState25NotifyConcurrencyIncreaseEv(ptr noundef nonnull align 8 dereferenceable(100) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %1 = alloca %"class.v8::SourceLocation", align 8 ; 4 uses
  %2 = alloca %"class.std::unique_ptr.6", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load atomic i8, ptr %i.a monotonic, align 8, !range !12, !noundef !13
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d) #15
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef i64 %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.h, i64 noundef %i.f) #15, !inline_history !14
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.n = load i64, ptr %i.m, align 8
  %.sroa.speculated.i = tail call noundef i64 @llvm.umin.i64(i64 %i.n, i64 %i.l) ; 2 uses
  %i.o = load i64, ptr %i.e, align 8              ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8              ; 3 uses
  %i.r = add i64 %i.q, %i.o
  %i.s = icmp ugt i64 %.sroa.speculated.i, %i.r
  br i1 %i.s, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.thread

_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.thread: ; preds = %bb.b
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d) #15
  br label %.loopexit

_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit:      ; preds = %bb.b
  %i.t = sub i64 %.sroa.speculated.i, %i.o        ; 3 uses
  %i.u = sub i64 %i.t, %i.q
  store i64 %i.t, ptr %i.p, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = load i8, ptr %i.v, align 8
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d) #15
  %.not = icmp eq i64 %i.t, %i.q
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZNSt12__shared_ptrIN2v88platform15DefaultJobStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.018 = phi i64 [ 0, %.lr.ph ], [ %i.bp, %_ZNSt12__shared_ptrIN2v88platform15DefaultJobStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
  %i.aa = load ptr, ptr %i.y, align 8, !noalias !27 ; 9 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 6 uses
  %i.ad = load atomic i32, ptr %i.ac monotonic, align 8, !noalias !27
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %.06.i.i.i.i.i = phi i32 [ %i.ad, %bb.d ], [ %i.ah, %bb.f ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i = icmp eq i32 %.06.i.i.i.i.i, 0
  br i1 %.not.not.not.i.not.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = add nsw i32 %.06.i.i.i.i.i, 1
  %i.af = cmpxchg weak ptr %i.ac, i32 %.06.i.i.i.i.i, i32 %i.ae acq_rel monotonic, align 8, !noalias !27 ; 2 uses
  %i.ag = extractvalue { i32, i1 } %i.af, 1
  %i.ah = extractvalue { i32, i1 } %i.af, 0
  br i1 %i.ag, label %bb.g, label %bb.e, !llvm.loop !0

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i: ; preds = %bb.c, %bb.e
  call void @abort() #17, !noalias !27
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.ai = load ptr, ptr %i.x, align 8, !noalias !27
  %i.aj = load ptr, ptr %i.g, align 8
  %i.ak = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #18, !noalias !28, !inline_history !1 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aa, i64 12 ; 4 uses
  %i.am = load i8, ptr @__libc_single_threaded, align 1, !noalias !28
  %.not.i.i.i.i.i = icmp eq i8 %i.am, 0
  br i1 %.not.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = load i32, ptr %i.al, align 4, !noalias !28
  %i.ao = add nsw i32 %i.an, 1
  store i32 %i.ao, ptr %i.al, align 4, !noalias !28
  br label %_ZSt11make_uniqueIN2v88platform16DefaultJobWorkerEJSt10shared_ptrINS1_15DefaultJobStateEEPNS0_7JobTaskEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

bb.i:                                             ; preds = %bb.g
  %i.ap = atomicrmw volatile add ptr %i.al, i32 1 acq_rel, align 4, !noalias !28 ; 0 uses
  br label %_ZSt11make_uniqueIN2v88platform16DefaultJobWorkerEJSt10shared_ptrINS1_15DefaultJobStateEEPNS0_7JobTaskEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

_ZSt11make_uniqueIN2v88platform16DefaultJobWorkerEJSt10shared_ptrINS1_15DefaultJobStateEEPNS0_7JobTaskEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.h, %bb.i
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2v88platform16DefaultJobWorkerE, i64 16), ptr %i.ak, align 8, !noalias !28
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.ai, ptr %i.aq, align 8, !noalias !28
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store ptr %i.aa, ptr %i.ar, align 8, !noalias !28
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  store ptr %i.aj, ptr %i.as, align 8, !noalias !28
  %i.at = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.au = ptrtoint ptr %i.ak to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr @.constant, ptr %1, align 8
  store i64 %i.au, ptr %2, align 8
  %i.av = load ptr, ptr %i.at, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 144
  %i.ax = load ptr, ptr %i.aw, align 8
  call void %i.ax(ptr noundef nonnull align 8 dereferenceable(8) %i.at, i8 noundef zeroext %i.w, ptr noundef nonnull align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %1) #15, !inline_history !2
  %i.ay = load ptr, ptr %2, align 8               ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i, label %bb.j, label %_ZNKSt14default_deleteIN2v84TaskEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN2v84TaskEEclEPS1_.exit.i.i.i: ; preds = %_ZSt11make_uniqueIN2v88platform16DefaultJobWorkerEJSt10shared_ptrINS1_15DefaultJobStateEEPNS0_7JobTaskEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8
  call void %i.bb(ptr noundef nonnull align 8 dereferenceable(8) %i.ay) #15, !inline_history !3
  br label %bb.j

bb.j:                                             ; preds = %_ZNKSt14default_deleteIN2v84TaskEEclEPS1_.exit.i.i.i, %_ZSt11make_uniqueIN2v88platform16DefaultJobWorkerEJSt10shared_ptrINS1_15DefaultJobStateEEPNS0_7JobTaskEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.bc = load atomic i64, ptr %i.ac acquire, align 8 ; 2 uses
  %i.bd = icmp eq i64 %i.bc, 4294967297
  %i.be = trunc i64 %i.bc to i32                  ; 2 uses
  br i1 %i.bd, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.ac, align 8
  store i32 0, ptr %i.al, align 4
  %i.bf = load ptr, ptr %i.aa, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8
  call void %i.bh(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #15, !inline_history !4
  %i.bi = load ptr, ptr %i.aa, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #15, !inline_history !4
  br label %_ZNSt12__shared_ptrIN2v88platform15DefaultJobStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.bl = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i11 = icmp eq i8 %i.bl, 0
  br i1 %.not.i.i.i11, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bm = add nsw i32 %i.be, -1
  store i32 %i.bm, ptr %i.ac, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.bn = atomicrmw volatile add ptr %i.ac, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i = phi i32 [ %i.be, %bb.m ], [ %i.bn, %bb.n ]
  %i.bo = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bo, label %bb.o, label %_ZNSt12__shared_ptrIN2v88platform15DefaultJobStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !16

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #15
  br label %_ZNSt12__shared_ptrIN2v88platform15DefaultJobStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN2v88platform15DefaultJobStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.o
  %i.bp = add nuw i64 %.018, 1                    ; 2 uses
  %3 = icmp ult i64 %i.bp, %i.u
  br i1 %3, label %bb.c, label %.loopexit, !llvm.loop !26

.loopexit:                                        ; preds = %_ZNSt12__shared_ptrIN2v88platform15DefaultJobStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.thread, %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i64 @_ZNK2v88platform15DefaultJobState20CappedMaxConcurrencyEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(100) %0, i64 noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i64 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef %1) #15
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.h = load i64, ptr %i.g, align 8
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.h, i64 %i.f)
  ret i64 %.sroa.speculated
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN2v88platform15DefaultJobState18CallOnWorkerThreadENS_12TaskPriorityESt10unique_ptrINS_4TaskESt14default_deleteIS4_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(100) %0, i8 noundef zeroext %1, ptr nofree noundef align 8 captures(none) %2) local_unnamed_addr #2 align 2 {
bb.a:
  %3 = alloca %"class.v8::SourceLocation", align 8 ; 4 uses
  %4 = alloca %"class.std::unique_ptr.6", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load i64, ptr %2, align 8
  store ptr null, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr @.constant, ptr %3, align 8
  store i64 %i.c, ptr %4, align 8
  %i.d = load ptr, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  %i.f = load ptr, ptr %i.e, align 8
  call void %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i8 noundef zeroext %1, ptr noundef nonnull align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %3) #15, !inline_history !29
  %i.g = load ptr, ptr %4, align 8                ; 3 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN2v84TaskESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN2v84TaskEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN2v84TaskEEclEPS1_.exit.i.i: ; preds = %bb.a
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  call void %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.g) #15, !inline_history !30
  br label %_ZNSt10unique_ptrIN2v84TaskESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN2v84TaskESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN2v84TaskEEclEPS1_.exit.i.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN2v88platform15DefaultJobState4JoinEv(ptr noundef nonnull align 8 dereferenceable(100) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %1 = alloca %"class.v8::SourceLocation", align 8 ; 4 uses
  %2 = alloca %"class.std::unique_ptr.6", align 8 ; 5 uses
  %3 = alloca %"class.v8::platform::DefaultJobState::JobDelegate", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 9 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 2, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 6 uses
  %i.d = load i64, ptr %i.c, align 8
  %i.e = add i64 %i.d, 1
  store i64 %i.e, ptr %i.c, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 11 uses
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %i.h = add i64 %i.g, 1
  store i64 %i.h, ptr %i.f, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef i64 %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.j, i64 noundef %i.g) #15, !inline_history !31
  %i.o = load i64, ptr %i.c, align 8
  %.sroa.speculated.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.o, i64 %i.n) ; 2 uses
  %i.p = load i64, ptr %i.f, align 8              ; 3 uses
  %i.q = icmp ugt i64 %i.p, %.sroa.speculated.i.i
  %i.r = icmp ugt i64 %i.p, 1
  %or.cond1.i = and i1 %i.q, %i.r
  br i1 %or.cond1.i, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 88
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  tail call void @_ZN2v84base17ConditionVariable4WaitEPNS0_5MutexE(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull %i.a) #15
  %i.t = load i64, ptr %i.f, align 8
  %i.u = add i64 %i.t, -1
  %i.v = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call noundef i64 %i.y(ptr noundef nonnull align 8 dereferenceable(8) %i.v, i64 noundef %i.u) #15, !inline_history !31
  %i.aa = load i64, ptr %i.c, align 8
  %.sroa.speculated.i6.i = tail call noundef i64 @llvm.umin.i64(i64 %i.aa, i64 %i.z) ; 2 uses
  %i.ab = load i64, ptr %i.f, align 8             ; 3 uses
  %i.ac = icmp ugt i64 %i.ab, %.sroa.speculated.i6.i
  %i.ad = icmp ugt i64 %i.ab, 1
  %or.cond.i = and i1 %i.ac, %i.ad
  br i1 %or.cond.i, label %bb.b, label %.critedge.i, !llvm.loop !32

.critedge.i:                                      ; preds = %bb.b, %bb.a
  %i.ae = phi i64 [ %i.p, %bb.a ], [ %i.ab, %bb.b ] ; 2 uses
  %.0.lcssa.i = phi i64 [ %.sroa.speculated.i.i, %bb.a ], [ %.sroa.speculated.i6.i, %bb.b ] ; 3 uses
  %.not.i = icmp eq i64 %.0.lcssa.i, 0
  br i1 %.not.i, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit33, label %"_ZZN2v88platform15DefaultJobState4JoinEvENK3$_0clEv.exit"

"_ZZN2v88platform15DefaultJobState4JoinEvENK3$_0clEv.exit": ; preds = %.critedge.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8            ; 3 uses
  %i.ah = add i64 %i.ag, %i.ae
  %i.ai = icmp ugt i64 %.0.lcssa.i, %i.ah
  br i1 %i.ai, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.thread

_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.thread: ; preds = %"_ZZN2v88platform15DefaultJobState4JoinEvENK3$_0clEv.exit"
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #15
  br label %._crit_edge

_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit:      ; preds = %"_ZZN2v88platform15DefaultJobState4JoinEvENK3$_0clEv.exit"
  %i.aj = sub i64 %.0.lcssa.i, %i.ae              ; 3 uses
  %i.ak = sub i64 %i.aj, %i.ag
  store i64 %i.aj, ptr %i.af, align 8
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #15
  %.not = icmp eq i64 %i.aj, %i.ag
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.c

._crit_edge:                                      ; preds = %_ZNSt12__shared_ptrIN2v88platform15DefaultJobStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.thread, %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN2v88platform15DefaultJobState11JobDelegateE, i64 16), ptr %3, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %0, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store i8 -1, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 17
  store i8 1, ptr %i.aq, align 1
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 18
  store i8 0, ptr %i.ar, align 2
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 88
  br label %bb.p

bb.c:                                             ; preds = %.lr.ph, %_ZNSt12__shared_ptrIN2v88platform15DefaultJobStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.043 = phi i64 [ 0, %.lr.ph ], [ %i.ci, %_ZNSt12__shared_ptrIN2v88platform15DefaultJobStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
  %i.at = load ptr, ptr %i.am, align 8, !noalias !39 ; 9 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 6 uses
  %i.aw = load atomic i32, ptr %i.av monotonic, align 8, !noalias !39
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %.06.i.i.i.i.i = phi i32 [ %i.aw, %bb.d ], [ %i.ba, %bb.f ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i = icmp eq i32 %.06.i.i.i.i.i, 0
  br i1 %.not.not.not.i.not.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ax = add nsw i32 %.06.i.i.i.i.i, 1
  %i.ay = cmpxchg weak ptr %i.av, i32 %.06.i.i.i.i.i, i32 %i.ax acq_rel monotonic, align 8, !noalias !39 ; 2 uses
  %i.az = extractvalue { i32, i1 } %i.ay, 1
  %i.ba = extractvalue { i32, i1 } %i.ay, 0
  br i1 %i.az, label %bb.g, label %bb.e, !llvm.loop !0

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i: ; preds = %bb.c, %bb.e
  call void @abort() #17, !noalias !39
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.bb = load ptr, ptr %i.al, align 8, !noalias !39
  %i.bc = load ptr, ptr %i.i, align 8
  %i.bd = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #18, !noalias !40, !inline_history !1 ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.at, i64 12 ; 4 uses
  %i.bf = load i8, ptr @__libc_single_threaded, align 1, !noalias !40
  %.not.i.i.i.i.i = icmp eq i8 %i.bf, 0
  br i1 %.not.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bg = load i32, ptr %i.be, align 4, !noalias !40
  %i.bh = add nsw i32 %i.bg, 1
  store i32 %i.bh, ptr %i.be, align 4, !noalias !40
  br label %_ZSt11make_uniqueIN2v88platform16DefaultJobWorkerEJSt10shared_ptrINS1_15DefaultJobStateEEPNS0_7JobTaskEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

bb.i:                                             ; preds = %bb.g
  %i.bi = atomicrmw volatile add ptr %i.be, i32 1 acq_rel, align 4, !noalias !40 ; 0 uses
  br label %_ZSt11make_uniqueIN2v88platform16DefaultJobWorkerEJSt10shared_ptrINS1_15DefaultJobStateEEPNS0_7JobTaskEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

_ZSt11make_uniqueIN2v88platform16DefaultJobWorkerEJSt10shared_ptrINS1_15DefaultJobStateEEPNS0_7JobTaskEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.h, %bb.i
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2v88platform16DefaultJobWorkerE, i64 16), ptr %i.bd, align 8, !noalias !40
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr %i.bb, ptr %i.bj, align 8, !noalias !40
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store ptr %i.at, ptr %i.bk, align 8, !noalias !40
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  store ptr %i.bc, ptr %i.bl, align 8, !noalias !40
  %i.bm = load ptr, ptr %i.an, align 8            ; 2 uses
  %i.bn = ptrtoint ptr %i.bd to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr @.constant, ptr %1, align 8
  store i64 %i.bn, ptr %2, align 8
  %i.bo = load ptr, ptr %i.bm, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 144
  %i.bq = load ptr, ptr %i.bp, align 8
  call void %i.bq(ptr noundef nonnull align 8 dereferenceable(8) %i.bm, i8 noundef zeroext 2, ptr noundef nonnull align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %1) #15, !inline_history !2
  %i.br = load ptr, ptr %2, align 8               ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i, label %bb.j, label %_ZNKSt14default_deleteIN2v84TaskEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN2v84TaskEEclEPS1_.exit.i.i.i: ; preds = %_ZSt11make_uniqueIN2v88platform16DefaultJobWorkerEJSt10shared_ptrINS1_15DefaultJobStateEEPNS0_7JobTaskEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(8) %i.br) #15, !inline_history !3
  br label %bb.j

bb.j:                                             ; preds = %_ZNKSt14default_deleteIN2v84TaskEEclEPS1_.exit.i.i.i, %_ZSt11make_uniqueIN2v88platform16DefaultJobWorkerEJSt10shared_ptrINS1_15DefaultJobStateEEPNS0_7JobTaskEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.bv = load atomic i64, ptr %i.av acquire, align 8 ; 2 uses
  %i.bw = icmp eq i64 %i.bv, 4294967297
  %i.bx = trunc i64 %i.bv to i32                  ; 2 uses
  br i1 %i.bw, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.av, align 8
  store i32 0, ptr %i.be, align 4
  %i.by = load ptr, ptr %i.at, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8
  call void %i.ca(ptr noundef nonnull align 8 dereferenceable(16) %i.at) #15, !inline_history !4
  %i.cb = load ptr, ptr %i.at, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8
  call void %i.cd(ptr noundef nonnull align 8 dereferenceable(16) %i.at) #15, !inline_history !4
  br label %_ZNSt12__shared_ptrIN2v88platform15DefaultJobStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.ce = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i19 = icmp eq i8 %i.ce, 0
  br i1 %.not.i.i.i19, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cf = add nsw i32 %i.bx, -1
  store i32 %i.cf, ptr %i.av, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.cg = atomicrmw volatile add ptr %i.av, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i = phi i32 [ %i.bx, %bb.m ], [ %i.cg, %bb.n ]
  %i.ch = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ch, label %bb.o, label %_ZNSt12__shared_ptrIN2v88platform15DefaultJobStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !16

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.at) #15
  br label %_ZNSt12__shared_ptrIN2v88platform15DefaultJobStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN2v88platform15DefaultJobStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.o
  %i.ci = add nuw i64 %.043, 1                    ; 2 uses
  %4 = icmp ult i64 %i.ci, %i.ak
  br i1 %4, label %bb.c, label %._crit_edge, !llvm.loop !37

bb.p:                                             ; preds = %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit30, %._crit_edge
  %i.cj = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8
  call void %i.cm(ptr noundef nonnull align 8 dereferenceable(8) %i.cj, ptr noundef nonnull %3) #15
  call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #15
  %i.cn = load i64, ptr %i.f, align 8
  %i.co = add i64 %i.cn, -1
  %i.cp = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = call noundef i64 %i.cs(ptr noundef nonnull align 8 dereferenceable(8) %i.cp, i64 noundef %i.co) #15, !inline_history !31
  %i.cu = load i64, ptr %i.c, align 8
  %.sroa.speculated.i.i20 = call noundef i64 @llvm.umin.i64(i64 %i.cu, i64 %i.ct) ; 2 uses
  %i.cv = load i64, ptr %i.f, align 8             ; 2 uses
  %i.cw = icmp ugt i64 %i.cv, %.sroa.speculated.i.i20
  %i.cx = icmp ugt i64 %i.cv, 1
  %or.cond1.i21 = and i1 %i.cw, %i.cx
  br i1 %or.cond1.i21, label %.lr.ph.i25, label %.critedge.i22

.lr.ph.i25:                                       ; preds = %bb.p, %.lr.ph.i25
  call void @_ZN2v84base17ConditionVariable4WaitEPNS0_5MutexE(ptr noundef nonnull align 8 dereferenceable(8) %i.as, ptr noundef nonnull %i.a) #15
  %i.cy = load i64, ptr %i.f, align 8
  %i.cz = add i64 %i.cy, -1
  %i.da = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = call noundef i64 %i.dd(ptr noundef nonnull align 8 dereferenceable(8) %i.da, i64 noundef %i.cz) #15, !inline_history !31
  %i.df = load i64, ptr %i.c, align 8
  %.sroa.speculated.i6.i26 = call noundef i64 @llvm.umin.i64(i64 %i.df, i64 %i.de) ; 2 uses
  %i.dg = load i64, ptr %i.f, align 8             ; 2 uses
  %i.dh = icmp ugt i64 %i.dg, %.sroa.speculated.i6.i26
  %i.di = icmp ugt i64 %i.dg, 1
  %or.cond.i27 = and i1 %i.dh, %i.di
  br i1 %or.cond.i27, label %.lr.ph.i25, label %.critedge.i22, !llvm.loop !32

.critedge.i22:                                    ; preds = %.lr.ph.i25, %bb.p
  %.0.lcssa.i23 = phi i64 [ %.sroa.speculated.i.i20, %bb.p ], [ %.sroa.speculated.i6.i26, %.lr.ph.i25 ]
  %.not.i24 = icmp eq i64 %.0.lcssa.i23, 0
  br i1 %.not.i24, label %bb.q, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit30

_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit30:    ; preds = %.critedge.i22
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #15
  br label %bb.p, !llvm.loop !38

bb.q:                                             ; preds = %.critedge.i22
  store i64 0, ptr %i.f, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 72
  store atomic i8 1, ptr %i.dj monotonic, align 8
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #15
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN2v88platform15DefaultJobState11JobDelegateE, i64 16), ptr %3, align 8
  %i.dk = load i8, ptr %i.ap, align 8             ; 2 uses
  %.not.i31 = icmp eq i8 %i.dk, -1
  br i1 %.not.i31, label %_ZN2v88platform15DefaultJobState11JobDelegateD2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dl = load ptr, ptr %i.ao, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 96
  %i.dn = zext nneg i8 %i.dk to i32
  %i.do = shl nuw i32 1, %i.dn
  %i.dp = xor i32 %i.do, -1
  %i.dq = atomicrmw and ptr %i.dm, i32 %i.dp release, align 4 ; 0 uses
  br label %_ZN2v88platform15DefaultJobState11JobDelegateD2Ev.exit

_ZN2v88platform15DefaultJobState11JobDelegateD2Ev.exit: ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %bb.s

_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit33:    ; preds = %.critedge.i
  store i64 0, ptr %i.f, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 72
  store atomic i8 1, ptr %i.dr monotonic, align 8
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #15
  br label %bb.s

bb.s:                                             ; preds = %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit33, %_ZN2v88platform15DefaultJobState11JobDelegateD2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN2v88platform15DefaultJobState13CancelAndWaitEv(ptr noundef nonnull align 8 dereferenceable(100) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  store atomic i8 1, ptr %i.b monotonic, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8
  %.not1 = icmp eq i64 %i.d, 0
  br i1 %.not1, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  tail call void @_ZN2v84base17ConditionVariable4WaitEPNS0_5MutexE(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull %i.a) #15
  %i.f = load i64, ptr %i.c, align 8
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit, label %bb.b, !llvm.loop !5

_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit:      ; preds = %bb.b, %bb.a
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #15
  ret void
}

declare void @_ZN2v84base17ConditionVariable4WaitEPNS0_5MutexE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN2v88platform15DefaultJobState15CancelAndDetachEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(100) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  store atomic i8 1, ptr %i.a monotonic, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN2v88platform15DefaultJobState8IsActiveEv(ptr noundef nonnull align 8 dereferenceable(100) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8
  %i.f = load ptr, ptr %i.c, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef i64 %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef %i.e) #15
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %bb.b, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.j = load i64, ptr %i.d, align 8
  %i.k = icmp ne i64 %i.j, 0
  br label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit

_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit:      ; preds = %bb.b, %bb.a
  %i.l = phi i1 [ true, %bb.a ], [ %i.k, %bb.b ]
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #15
  ret i1 %i.l
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN2v88platform15DefaultJobState15CanRunFirstTaskEv(ptr noundef nonnull align 8 dereferenceable(100) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8
  %i.d = add i64 %i.c, -1
  store i64 %i.d, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load atomic i8, ptr %i.e monotonic, align 8, !range !12, !noundef !13
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef i64 %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i64 noundef %i.i) #15, !inline_history !14
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.q = load i64, ptr %i.p, align 8
  %.sroa.speculated.i = tail call noundef i64 @llvm.umin.i64(i64 %i.q, i64 %i.o)
  %.not = icmp ult i64 %i.i, %.sroa.speculated.i
  br i1 %.not, label %bb.c, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.r = load i64, ptr %i.h, align 8
  %i.s = add i64 %i.r, 1
  store i64 %i.s, ptr %i.h, align 8
  br label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit

_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit:      ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i1 [ true, %bb.c ], [ false, %bb.a ], [ false, %bb.b ]
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #15
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN2v88platform15DefaultJobState10DidRunTaskEv(ptr noundef nonnull align 8 dereferenceable(100) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %1 = alloca %"class.v8::SourceLocation", align 8 ; 4 uses
  %2 = alloca %"class.std::unique_ptr.6", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8
  %i.d = add i64 %i.c, -1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef i64 %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef %i.d) #15, !inline_history !14
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.l = load i64, ptr %i.k, align 8
  %.sroa.speculated.i = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 %i.j) ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.n = load atomic i8, ptr %i.m monotonic, align 8, !range !12, !noundef !13
  %i.o = trunc nuw i8 %i.n to i1
  %.pre = load i64, ptr %i.b, align 8             ; 4 uses
  %i.p = icmp ugt i64 %.pre, %.sroa.speculated.i
  %or.cond = select i1 %i.o, i1 true, i1 %i.p     ; 2 uses
  br i1 %or.cond, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.thread, label %bb.b

_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.thread: ; preds = %bb.a
  %i.q = add i64 %.pre, -1
  store i64 %i.q, ptr %i.b, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @_ZN2v84base17ConditionVariable9NotifyOneEv(ptr noundef nonnull align 8 dereferenceable(8) %i.r) #15
  br label %.loopexit.sink.split

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8              ; 3 uses
  %i.u = add i64 %i.t, %.pre
  %i.v = icmp ugt i64 %.sroa.speculated.i, %i.u
  br i1 %i.v, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit, label %.loopexit.sink.split

_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit:      ; preds = %bb.b
  %i.w = sub nuw i64 %.sroa.speculated.i, %.pre   ; 3 uses
  %i.x = sub i64 %i.w, %i.t
  store i64 %i.w, ptr %i.s, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.z = load i8, ptr %i.y, align 8
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #15
  %.not = icmp eq i64 %i.w, %i.t
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZNSt12__shared_ptrIN2v88platform15DefaultJobStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.030 = phi i64 [ 0, %.lr.ph ], [ %i.bs, %_ZNSt12__shared_ptrIN2v88platform15DefaultJobStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
  %i.ad = load ptr, ptr %i.ab, align 8, !noalias !46 ; 9 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 6 uses
  %i.ag = load atomic i32, ptr %i.af monotonic, align 8, !noalias !46
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %.06.i.i.i.i.i = phi i32 [ %i.ag, %bb.d ], [ %i.ak, %bb.f ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i = icmp eq i32 %.06.i.i.i.i.i, 0
  br i1 %.not.not.not.i.not.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = add nsw i32 %.06.i.i.i.i.i, 1
  %i.ai = cmpxchg weak ptr %i.af, i32 %.06.i.i.i.i.i, i32 %i.ah acq_rel monotonic, align 8, !noalias !46 ; 2 uses
  %i.aj = extractvalue { i32, i1 } %i.ai, 1
  %i.ak = extractvalue { i32, i1 } %i.ai, 0
  br i1 %i.aj, label %bb.g, label %bb.e, !llvm.loop !0

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i: ; preds = %bb.c, %bb.e
  call void @abort() #17, !noalias !46
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.al = load ptr, ptr %i.aa, align 8, !noalias !46
  %i.am = load ptr, ptr %i.e, align 8
  %i.an = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #18, !noalias !47, !inline_history !1 ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ad, i64 12 ; 4 uses
  %i.ap = load i8, ptr @__libc_single_threaded, align 1, !noalias !47
  %.not.i.i.i.i.i = icmp eq i8 %i.ap, 0
  br i1 %.not.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = load i32, ptr %i.ao, align 4, !noalias !47
  %i.ar = add nsw i32 %i.aq, 1
  store i32 %i.ar, ptr %i.ao, align 4, !noalias !47
  br label %_ZSt11make_uniqueIN2v88platform16DefaultJobWorkerEJSt10shared_ptrINS1_15DefaultJobStateEEPNS0_7JobTaskEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

bb.i:                                             ; preds = %bb.g
  %i.as = atomicrmw volatile add ptr %i.ao, i32 1 acq_rel, align 4, !noalias !47 ; 0 uses
  br label %_ZSt11make_uniqueIN2v88platform16DefaultJobWorkerEJSt10shared_ptrINS1_15DefaultJobStateEEPNS0_7JobTaskEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

_ZSt11make_uniqueIN2v88platform16DefaultJobWorkerEJSt10shared_ptrINS1_15DefaultJobStateEEPNS0_7JobTaskEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.h, %bb.i
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2v88platform16DefaultJobWorkerE, i64 16), ptr %i.an, align 8, !noalias !47
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.al, ptr %i.at, align 8, !noalias !47
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store ptr %i.ad, ptr %i.au, align 8, !noalias !47
  %i.av = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  store ptr %i.am, ptr %i.av, align 8, !noalias !47
  %i.aw = load ptr, ptr %i.ac, align 8            ; 2 uses
  %i.ax = ptrtoint ptr %i.an to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr @.constant, ptr %1, align 8
  store i64 %i.ax, ptr %2, align 8
  %i.ay = load ptr, ptr %i.aw, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 144
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, i8 noundef zeroext %i.z, ptr noundef nonnull align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %1) #15, !inline_history !2
  %i.bb = load ptr, ptr %2, align 8               ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i, label %bb.j, label %_ZNKSt14default_deleteIN2v84TaskEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN2v84TaskEEclEPS1_.exit.i.i.i: ; preds = %_ZSt11make_uniqueIN2v88platform16DefaultJobWorkerEJSt10shared_ptrINS1_15DefaultJobStateEEPNS0_7JobTaskEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load ptr, ptr %i.bd, align 8
  call void %i.be(ptr noundef nonnull align 8 dereferenceable(8) %i.bb) #15, !inline_history !3
  br label %bb.j

bb.j:                                             ; preds = %_ZNKSt14default_deleteIN2v84TaskEEclEPS1_.exit.i.i.i, %_ZSt11make_uniqueIN2v88platform16DefaultJobWorkerEJSt10shared_ptrINS1_15DefaultJobStateEEPNS0_7JobTaskEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.bf = load atomic i64, ptr %i.af acquire, align 8 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 4294967297
  %i.bh = trunc i64 %i.bf to i32                  ; 2 uses
  br i1 %i.bg, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.af, align 8
  store i32 0, ptr %i.ao, align 4
  %i.bi = load ptr, ptr %i.ad, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #15, !inline_history !4
  %i.bl = load ptr, ptr %i.ad, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #15, !inline_history !4
  br label %_ZNSt12__shared_ptrIN2v88platform15DefaultJobStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.bo = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i19 = icmp eq i8 %i.bo, 0
  br i1 %.not.i.i.i19, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bp = add nsw i32 %i.bh, -1
  store i32 %i.bp, ptr %i.af, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.bq = atomicrmw volatile add ptr %i.af, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i = phi i32 [ %i.bh, %bb.m ], [ %i.bq, %bb.n ]
  %i.br = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.br, label %bb.o, label %_ZNSt12__shared_ptrIN2v88platform15DefaultJobStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !16

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #15
  br label %_ZNSt12__shared_ptrIN2v88platform15DefaultJobStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN2v88platform15DefaultJobStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.o
  %i.bs = add nuw i64 %.030, 1                    ; 2 uses
  %3 = icmp ult i64 %i.bs, %i.x
  br i1 %3, label %bb.c, label %.loopexit, !llvm.loop !45

.loopexit.sink.split:                             ; preds = %bb.b, %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.thread
  %cond28.ph = xor i1 %or.cond, true
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #15
  br label %.loopexit

.loopexit:                                        ; preds = %_ZNSt12__shared_ptrIN2v88platform15DefaultJobStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %.loopexit.sink.split, %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit
  %cond28 = phi i1 [ %cond28.ph, %.loopexit.sink.split ], [ true, %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit ], [ true, %_ZNSt12__shared_ptrIN2v88platform15DefaultJobStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
  ret i1 %cond28
}

declare void @_ZN2v84base17ConditionVariable9NotifyOneEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN2v88platform15DefaultJobState14UpdatePriorityENS_12TaskPriorityE(ptr noundef nonnull align 8 dereferenceable(100) %0, i8 noundef zeroext %1) local_unnamed_addr #2 align 2 {
_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %1, ptr %i.b, align 8
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN2v88platform16DefaultJobHandleC2ESt10shared_ptrINS0_15DefaultJobStateEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr nofree noundef align 8 captures(none) %1) unnamed_addr #8 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN2v88platform16DefaultJobHandleE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %1, align 8
  store ptr %i.b, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr null, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  store ptr null, ptr %i.d, align 8
  store ptr %i.e, ptr %i.c, align 8
  store ptr null, ptr %1, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN2v88platform16DefaultJobHandleD2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(24) dereferenceable(24) initializes((0, 8)) %0) unnamed_addr #2 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN2v88platform16DefaultJobHandleE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN2v88platform15DefaultJobStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4
  %i.h = load ptr, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #15, !inline_history !4
  %i.k = load ptr, ptr %i.b, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #15, !inline_history !4
  br label %_ZNSt12__shared_ptrIN2v88platform15DefaultJobStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN2v88platform15DefaultJobStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !16

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #15
  br label %_ZNSt12__shared_ptrIN2v88platform15DefaultJobStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN2v88platform15DefaultJobStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN2v88platform16DefaultJobHandleD0Ev(ptr noundef nonnull align 8 dereferenceable(24) initializes((0, 8)) %0) unnamed_addr #2 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN2v88platform16DefaultJobHandleE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN2v88platform16DefaultJobHandleD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4
  %i.h = load ptr, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #15, !inline_history !48
  %i.k = load ptr, ptr %i.b, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #15, !inline_history !48
  br label %_ZN2v88platform16DefaultJobHandleD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN2v88platform16DefaultJobHandleD2Ev.exit, !prof !16

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #15, !inline_history !49
  br label %_ZN2v88platform16DefaultJobHandleD2Ev.exit

_ZN2v88platform16DefaultJobHandleD2Ev.exit:       ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN2v88platform16DefaultJobHandle4JoinEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @_ZN2v88platform15DefaultJobState4JoinEv(ptr noundef nonnull align 8 dereferenceable(100) %i.b)
  store ptr null, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 8 uses
  store ptr null, ptr %i.c, align 8
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZNSt12__shared_ptrIN2v88platform15DefaultJobStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 4294967297
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.e, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.i, align 4
  %i.j = load ptr, ptr %i.d, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #15, !inline_history !6
  %i.m = load ptr, ptr %i.d, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #15, !inline_history !6
  br label %_ZNSt12__shared_ptrIN2v88platform15DefaultJobStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.p = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = add nsw i32 %i.h, -1
  store i32 %i.q, ptr %i.e, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

end_hunk_0
