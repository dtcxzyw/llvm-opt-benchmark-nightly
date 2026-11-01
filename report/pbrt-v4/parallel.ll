Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/parallel?download=true
inline.NumInlined: 1169
inline.NumDeleted: 335
begin_hunk_0_@_ZN4pbrt11ParallelForEllSt8functionIFvllEE:bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 0, ptr %i.s, align 8, !tbaa !61
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.t, i8 0, i64 17, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4pbrt17ParallelForLoop1DE, i64 16), ptr %3, align 8, !tbaa !51
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.u, i8 0, i64 24, i1 false)
  store ptr %i.p, ptr %i.v, align 8, !tbaa !76
  %.not.i.i.not.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt14_Function_baseD2Ev.exit, label %_ZN4pbrt17ParallelForLoop1DC2ElliSt8functionIFvllEE.exit

_ZN4pbrt17ParallelForLoop1DC2ElliSt8functionIFvllEE.exit: ; preds = %_ZNSt8functionIFvllEEC2EOS1_.exit
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 56
  store <2 x i64> %.sroa.0.sroa.0.0, ptr %i.u, align 8, !tbaa !23
  store ptr %i.r, ptr %i.w, align 8, !tbaa !72
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZNSt8functionIFvllEEC2EOS1_.exit, %_ZN4pbrt17ParallelForLoop1DC2ElliSt8functionIFvllEE.exit
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 72
  store i64 %0, ptr %i.x, align 8, !tbaa !80
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 80
  store i64 %1, ptr %i.y, align 8, !tbaa !91
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 88
  store i32 %i.n, ptr %i.z, align 8, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !192)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  store ptr %i.aa, ptr %4, align 8, !tbaa !30, !alias.scope !192
  %i.ab = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.aa) #23, !noalias !192 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not.i.i.i.i, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.ab) #25
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.e
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i:       ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i8 1, ptr %i.ac, align 8, !tbaa !31, !alias.scope !192
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !49, !noalias !192 ; 3 uses
  %.not.i13 = icmp eq ptr %i.ae, null
  br i1 %.not.i13, label %_ZN4pbrt10ThreadPool12AddToJobListEPNS_11ParallelJobE.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store ptr %3, ptr %i.af, align 8, !tbaa !62, !noalias !192
  br label %_ZN4pbrt10ThreadPool12AddToJobListEPNS_11ParallelJobE.exit

_ZN4pbrt10ThreadPool12AddToJobListEPNS_11ParallelJobE.exit: ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i, %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.ae, ptr %i.ag, align 8, !tbaa !63, !noalias !192
  store ptr %3, ptr %i.ad, align 8, !tbaa !49, !noalias !192
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  call void @_ZNSt18condition_variable10notify_allEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ah) #23, !noalias !192
  br label %bb.g

bb.g:                                             ; preds = %_ZN4pbrt10ThreadPool12AddToJobListEPNS_11ParallelJobE.exit, %_ZNK4pbrt11ParallelJob8FinishedEv.exit.thread
  %i.ai = load ptr, ptr %3, align 8, !tbaa !51
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = invoke noundef zeroext i1 %i.ak(ptr noundef nonnull align 8 dereferenceable(33) %3)
          to label %.noexc14 unwind label %bb.i, !inline_history !1

.noexc14:                                         ; preds = %bb.g
  %i.am = load i32, ptr %i.s, align 8
  %i.an = icmp ne i32 %i.am, 0
  %or.cond.not = select i1 %i.al, i1 true, i1 %i.an
  br i1 %or.cond.not, label %_ZNK4pbrt11ParallelJob8FinishedEv.exit.thread, label %bb.l

_ZNK4pbrt11ParallelJob8FinishedEv.exit.thread:    ; preds = %.noexc14
  %i.ao = load ptr, ptr @_ZN4pbrt11ParallelJob10threadPoolE, align 8, !tbaa !78
  invoke void @_ZN4pbrt10ThreadPool10WorkOrWaitEPSt11unique_lockISt5mutexEb(ptr noundef nonnull align 8 dereferenceable(128) %i.ao, ptr noundef nonnull %4, i1 noundef zeroext true)
          to label %bb.g unwind label %bb.i, !llvm.loop !191

bb.h:                                             ; preds = %bb.e
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit

bb.i:                                             ; preds = %bb.g, %_ZNK4pbrt11ParallelJob8FinishedEv.exit.thread
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.ar = load i8, ptr %i.ac, align 8, !tbaa !31, !range !41, !noundef !58
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.j, label %_ZNSt11unique_lockISt5mutexED2Ev.exit

bb.j:                                             ; preds = %bb.i
  %i.at = load ptr, ptr %4, align 8, !tbaa !30    ; 2 uses
  %.not.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.au = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.at) #23 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit

bb.l:                                             ; preds = %.noexc14
  %i.av = load i8, ptr %i.ac, align 8, !tbaa !31, !range !41, !noundef !58
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.m, label %_ZNSt11unique_lockISt5mutexED2Ev.exit16

bb.m:                                             ; preds = %bb.l
  %i.ax = load ptr, ptr %4, align 8, !tbaa !30    ; 2 uses
  %.not.i.i15 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i15, label %_ZNSt11unique_lockISt5mutexED2Ev.exit16, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ay = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ax) #23 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit16

_ZNSt11unique_lockISt5mutexED2Ev.exit16:          ; preds = %bb.l, %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4pbrt17ParallelForLoop1DE, i64 16), ptr %3, align 8, !tbaa !51
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !72 ; 2 uses
  %.not.i.i17 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i17, label %_ZN4pbrt17ParallelForLoop1DD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit16
  %i.bb = invoke noundef zeroext i1 %i.ba(ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %i.u, i32 noundef 3)
          to label %_ZN4pbrt17ParallelForLoop1DD2Ev.exit unwind label %bb.p, !inline_history !92 ; 0 uses

bb.p:                                             ; preds = %bb.o
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  call void @__clang_call_terminate(ptr %i.bd) #27, !inline_history !92
  unreachable

_ZN4pbrt17ParallelForLoop1DD2Ev.exit:             ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit16, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.q

bb.q:                                             ; preds = %bb.c, %_ZN4pbrt17ParallelForLoop1DD2Ev.exit
  ret void

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.ap, %bb.h ], [ %i.aq, %bb.i ], [ %i.aq, %bb.j ], [ %i.aq, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @_ZN4pbrt17ParallelForLoop1DD2Ev(ptr noundef nonnull align 8 dead_on_return(92) dereferenceable(92) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_ZN4pbrt14RunningThreadsEv() local_unnamed_addr #11 {
bb.a:
  %i.a = load ptr, ptr @_ZN4pbrt11ParallelJob10threadPoolE, align 8, !tbaa !78 ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !53
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !56
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 3
  %i.i = trunc i64 %i.h to i32
  %i.j = add i32 %i.i, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.k = phi i32 [ %i.j, %bb.b ], [ 1, %bb.a ]
  ret i32 %i.k
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4pbrt17ParallelForLoop1DD2Ev(ptr noundef nonnull align 8 dead_on_return(92) dereferenceable(92) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4pbrt17ParallelForLoop1DE, i64 16), ptr %0, align 8, !tbaa !51
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !72   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = invoke noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #27
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4pbrt13ParallelFor2DERKNS_7Bounds2IiEESt8functionIFvS1_EE(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %0, ptr nofree noundef align 8 dereferenceable(32) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.pbrt::Bounds2", align 8     ; 5 uses
  %3 = alloca %"class.pbrt::ParallelForLoop2D", align 8 ; 20 uses
  %.sroa.0 = alloca %"class.std::_Function_base", align 8 ; 3 uses
  %4 = alloca %"class.std::unique_lock", align 8  ; 8 uses
  %i.a = load ptr, ptr @_ZN4pbrt11ParallelJob10threadPoolE, align 8, !tbaa !78 ; 6 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4pbrt8LogFatalIJRA24_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef 308, ptr noundef nonnull @.str.7, ptr noundef nonnull align 1 dereferenceable(24) @.str.17) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 4, !tbaa !88
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !88   ; 2 uses
  %.not.i = icmp sge i32 %i.b, %i.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.h = load i32, ptr %i.g, align 4              ; 2 uses
  %i.i = icmp sge i32 %i.f, %i.h
  %i.j = select i1 %.not.i, i1 true, i1 %i.i
  br i1 %i.j, label %bb.u, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 4 ; 3 uses
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %.sroa.0.0.copyload.i to i32
  %.sroa.2.0.extract.shift.i.i = lshr i64 %.sroa.0.0.copyload.i, 32
  %.sroa.2.0.extract.trunc.i.i = trunc nuw i64 %.sroa.2.0.extract.shift.i.i to i32
  %i.k = sub nsw i32 %i.d, %.sroa.0.0.extract.trunc.i.i
  %i.l = sub nsw i32 %i.h, %.sroa.2.0.extract.trunc.i.i
  %i.m = mul nsw i32 %i.l, %i.k                   ; 2 uses
  %i.n = icmp eq i32 %i.m, 1
  br i1 %i.n, label %bb.e, label %_ZN4pbrt14RunningThreadsEv.exit

bb.e:                                             ; preds = %bb.d
  %.sroa.2.0.copyload = load i64, ptr %i.c, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i64 %.sroa.0.0.copyload.i, ptr %2, align 8
  %5 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.sroa.2.0.copyload, ptr %5, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !72
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %bb.f, label %_ZNKSt8functionIFvN4pbrt7Bounds2IiEEEEclES2_.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt25__throw_bad_function_callv() #25
  unreachable

_ZNKSt8functionIFvN4pbrt7Bounds2IiEEEEclES2_.exit: ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !90
  call void %i.r(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 4 dereferenceable(16) %2), !inline_history !2
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.u

_ZN4pbrt14RunningThreadsEv.exit:                  ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !53
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !56
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = trunc i64 %i.x to i32
  %i.z = and i32 %i.y, -8
  %i.aa = add i32 %i.z, 8
  %i.ab = sdiv i32 %i.m, %i.aa
  %i.ac = sitofp i32 %i.ab to double
  %i.ad = tail call noundef double @sqrt(double noundef %i.ac) #23
  %i.ae = fptosi double %i.ad to i32
  %i.af = tail call i32 @llvm.smax.i32(i32 %i.ae, i32 1)
  %i.ag = tail call i32 @llvm.umin.i32(i32 %i.af, i32 32)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, i8 0, i64 24, i1 false)
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !90
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !72 ; 3 uses
  %.not.i.i.not.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.not.i, label %_ZNSt8functionIFvN4pbrt7Bounds2IiEEEEC2EOS4_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4pbrt14RunningThreadsEv.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !93
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvN4pbrt7Bounds2IiEEEEC2EOS4_.exit

_ZNSt8functionIFvN4pbrt7Bounds2IiEEEEC2EOS4_.exit: ; preds = %_ZN4pbrt14RunningThreadsEv.exit, %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 0, ptr %i.al, align 8, !tbaa !61
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.am, i8 0, i64 17, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4pbrt17ParallelForLoop2DE, i64 16), ptr %3, align 8, !tbaa !51
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.an, i8 0, i64 24, i1 false)
  store ptr %i.ai, ptr %i.ao, align 8, !tbaa !90
  %.not.i.i.not.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt8functionIFvN4pbrt7Bounds2IiEEEEC2EOS4_.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, i64 16, i1 false), !tbaa.struct !93
  store ptr %i.ak, ptr %i.ap, align 8, !tbaa !72
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.h, %_ZNSt8functionIFvN4pbrt7Bounds2IiEEEEC2EOS4_.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, ptr noundef nonnull align 4 dereferenceable(16) %0, i64 16, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.as = load i64, ptr %0, align 4
  store i64 %i.as, ptr %i.ar, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 96
  store i32 %i.ag, ptr %i.at, align 8, !tbaa !87
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !196)
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  store ptr %i.au, ptr %4, align 8, !tbaa !30, !alias.scope !196
  %i.av = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.au) #23, !noalias !196 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.av, 0
  br i1 %.not.i.i.i.i, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.av) #25
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.i
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i:       ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i8 1, ptr %i.aw, align 8, !tbaa !31, !alias.scope !196
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !49, !noalias !196 ; 3 uses
  %.not.i26 = icmp eq ptr %i.ay, null
  br i1 %.not.i26, label %_ZN4pbrt10ThreadPool12AddToJobListEPNS_11ParallelJobE.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store ptr %3, ptr %i.az, align 8, !tbaa !62, !noalias !196
  br label %_ZN4pbrt10ThreadPool12AddToJobListEPNS_11ParallelJobE.exit

_ZN4pbrt10ThreadPool12AddToJobListEPNS_11ParallelJobE.exit: ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i, %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.ay, ptr %i.ba, align 8, !tbaa !63, !noalias !196
  store ptr %3, ptr %i.ax, align 8, !tbaa !49, !noalias !196
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  call void @_ZNSt18condition_variable10notify_allEv(ptr noundef nonnull align 8 dereferenceable(48) %i.bb) #23, !noalias !196
  br label %bb.k

bb.k:                                             ; preds = %_ZN4pbrt10ThreadPool12AddToJobListEPNS_11ParallelJobE.exit, %_ZNK4pbrt11ParallelJob8FinishedEv.exit.thread
  %i.bc = load ptr, ptr %3, align 8, !tbaa !51
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = invoke noundef zeroext i1 %i.be(ptr noundef nonnull align 8 dereferenceable(33) %3)
          to label %.noexc27 unwind label %bb.m, !inline_history !1

.noexc27:                                         ; preds = %bb.k
  %i.bg = load i32, ptr %i.al, align 8
  %i.bh = icmp ne i32 %i.bg, 0
  %or.cond.not = select i1 %i.bf, i1 true, i1 %i.bh
  br i1 %or.cond.not, label %_ZNK4pbrt11ParallelJob8FinishedEv.exit.thread, label %bb.p

_ZNK4pbrt11ParallelJob8FinishedEv.exit.thread:    ; preds = %.noexc27
  %i.bi = load ptr, ptr @_ZN4pbrt11ParallelJob10threadPoolE, align 8, !tbaa !78
  invoke void @_ZN4pbrt10ThreadPool10WorkOrWaitEPSt11unique_lockISt5mutexEb(ptr noundef nonnull align 8 dereferenceable(128) %i.bi, ptr noundef nonnull %4, i1 noundef zeroext true)
          to label %bb.k unwind label %bb.m, !llvm.loop !195

bb.l:                                             ; preds = %bb.i
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit

bb.m:                                             ; preds = %bb.k, %_ZNK4pbrt11ParallelJob8FinishedEv.exit.thread
  %i.bk = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.bl = load i8, ptr %i.aw, align 8, !tbaa !31, !range !41, !noundef !58
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %bb.n, label %_ZNSt11unique_lockISt5mutexED2Ev.exit

bb.n:                                             ; preds = %bb.m
  %i.bn = load ptr, ptr %4, align 8, !tbaa !30    ; 2 uses
  %.not.i.i28 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i28, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bo = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.bn) #23 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit

bb.p:                                             ; preds = %.noexc27
  %i.bp = load i8, ptr %i.aw, align 8, !tbaa !31, !range !41, !noundef !58
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %bb.q, label %_ZNSt11unique_lockISt5mutexED2Ev.exit30

bb.q:                                             ; preds = %bb.p
  %i.br = load ptr, ptr %4, align 8, !tbaa !30    ; 2 uses
  %.not.i.i29 = icmp eq ptr %i.br, null
  br i1 %.not.i.i29, label %_ZNSt11unique_lockISt5mutexED2Ev.exit30, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bs = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.br) #23 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit30

_ZNSt11unique_lockISt5mutexED2Ev.exit30:          ; preds = %bb.p, %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4pbrt17ParallelForLoop2DE, i64 16), ptr %3, align 8, !tbaa !51
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !72 ; 2 uses
  %.not.i.i31 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i31, label %_ZN4pbrt17ParallelForLoop2DD2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit30
  %i.bv = invoke noundef zeroext i1 %i.bu(ptr noundef nonnull align 8 dereferenceable(32) %i.an, ptr noundef nonnull align 8 dereferenceable(32) %i.an, i32 noundef 3)
          to label %_ZN4pbrt17ParallelForLoop2DD2Ev.exit unwind label %bb.t, !inline_history !94 ; 0 uses

bb.t:                                             ; preds = %bb.s
  %i.bw = landingpad { ptr, i32 }
          catch ptr null
  %i.bx = extractvalue { ptr, i32 } %i.bw, 0
  call void @__clang_call_terminate(ptr %i.bx) #27, !inline_history !94
  unreachable

_ZN4pbrt17ParallelForLoop2DD2Ev.exit:             ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit30, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.u

bb.u:                                             ; preds = %bb.c, %_ZN4pbrt17ParallelForLoop2DD2Ev.exit, %_ZNKSt8functionIFvN4pbrt7Bounds2IiEEEEclES2_.exit
  ret void

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %bb.o, %bb.n, %bb.m, %bb.l
  %.pn = phi { ptr, i32 } [ %i.bj, %bb.l ], [ %i.bk, %bb.m ], [ %i.bk, %bb.n ], [ %i.bk, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @_ZN4pbrt17ParallelForLoop2DD2Ev(ptr noundef nonnull align 8 dead_on_return(100) dereferenceable(100) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4pbrt17ParallelForLoop2DD2Ev(ptr noundef nonnull align 8 dead_on_return(100) dereferenceable(100) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4pbrt17ParallelForLoop2DE, i64 16), ptr %0, align 8, !tbaa !51
end_hunk_0
