inline.NumInlined: 1995
inline.NumDeleted: 945
begin_hunk_0_@__cxa_atexit

; Function Attrs: nofree nounwind
declare void @__cxa_guard_abort(ptr) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN5arrow2io23GetIOThreadPoolCapacityEv() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN5arrow2io8internal15GetIOThreadPoolEvE4pool acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN5arrow2io8internal15GetIOThreadPoolEv.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5arrow2io8internal15GetIOThreadPoolEvE4pool) #32
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN5arrow2io8internal15GetIOThreadPoolEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke fastcc void @_ZN5arrow2io8internal12_GLOBAL__N_116MakeIOThreadPoolEv()
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt12__shared_ptrIN5arrow8internal10ThreadPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr nonnull @_ZZN5arrow2io8internal15GetIOThreadPoolEvE4pool, ptr nonnull @__dso_handle) #32 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5arrow2io8internal15GetIOThreadPoolEvE4pool) #32
  br label %_ZN5arrow2io8internal15GetIOThreadPoolEv.exit

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN5arrow2io8internal15GetIOThreadPoolEvE4pool) #32
  resume { ptr, i32 } %i.e

_ZN5arrow2io8internal15GetIOThreadPoolEv.exit:    ; preds = %bb.a, %bb.b, %bb.d
  %i.f = load ptr, ptr @_ZZN5arrow2io8internal15GetIOThreadPoolEvE4pool, align 8, !tbaa !8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !30
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef i32 %i.i(ptr noundef nonnull align 8 dereferenceable(33) %i.f)
  ret i32 %i.j
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow2io23SetIOThreadPoolCapacityEi(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, i32 noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN5arrow2io8internal15GetIOThreadPoolEvE4pool acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN5arrow2io8internal15GetIOThreadPoolEv.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5arrow2io8internal15GetIOThreadPoolEvE4pool) #32
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN5arrow2io8internal15GetIOThreadPoolEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke fastcc void @_ZN5arrow2io8internal12_GLOBAL__N_116MakeIOThreadPoolEv()
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt12__shared_ptrIN5arrow8internal10ThreadPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr nonnull @_ZZN5arrow2io8internal15GetIOThreadPoolEvE4pool, ptr nonnull @__dso_handle) #32 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5arrow2io8internal15GetIOThreadPoolEvE4pool) #32
  br label %_ZN5arrow2io8internal15GetIOThreadPoolEv.exit

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN5arrow2io8internal15GetIOThreadPoolEvE4pool) #32
  resume { ptr, i32 } %i.e

_ZN5arrow2io8internal15GetIOThreadPoolEv.exit:    ; preds = %bb.a, %bb.b, %bb.d
  %i.f = load ptr, ptr @_ZZN5arrow2io8internal15GetIOThreadPoolEvE4pool, align 8, !tbaa !8
  tail call void @_ZN5arrow8internal10ThreadPool11SetCapacityEi(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(33) %i.f, i32 noundef %1)
  ret void
}

declare void @_ZN5arrow8internal10ThreadPool11SetCapacityEi(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8, ptr noundef nonnull align 8 dereferenceable(33), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5arrow2io13FileInterfaceD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(28) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39   ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt23enable_shared_from_thisIN5arrow2io13FileInterfaceEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 3 uses
  %i.d = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i.i = icmp eq i8 %i.d, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr %i.c, align 4, !tbaa !3    ; 2 uses
  %i.f = add nsw i32 %i.e, -1
  store i32 %i.f, ptr %i.c, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.g = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i.i.i = phi i32 [ %i.e, %bb.c ], [ %i.g, %bb.d ]
  %i.h = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.h, label %bb.e, label %_ZNSt23enable_shared_from_thisIN5arrow2io13FileInterfaceEED2Ev.exit

bb.e:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #32, !inline_history !41
  br label %_ZNSt23enable_shared_from_thisIN5arrow2io13FileInterfaceEED2Ev.exit

_ZNSt23enable_shared_from_thisIN5arrow2io13FileInterfaceEED2Ev.exit: ; preds = %bb.a, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.e
  ret void
}

; Function Attrs: cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define void @_ZN5arrow2io13FileInterfaceD0Ev(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(28) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @llvm.trap() #33
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #6

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow2io13FileInterface10CloseAsyncEv(ptr dead_on_unwind noalias writable sret(%"class.arrow::Future") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(28) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.arrow::Status", align 8     ; 10 uses
  %3 = alloca %"class.std::__shared_ptr.4", align 8 ; 6 uses
  %4 = alloca %"class.std::unique_ptr.138", align 8 ; 7 uses
  %5 = alloca %"class.arrow::Future", align 16    ; 11 uses
  %6 = alloca %"class.std::_Bind", align 8        ; 6 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 10 uses
  %8 = alloca %"class.arrow::Status", align 8     ; 7 uses
  %9 = alloca %"class.arrow::internal::FnOnce", align 8 ; 6 uses
  %10 = alloca %"class.std::_Bind", align 8       ; 8 uses
  %11 = alloca %"class.arrow::StopToken", align 16 ; 6 uses
  %12 = alloca %"class.arrow::internal::FnOnce.129", align 8 ; 7 uses
  %13 = alloca %"struct.arrow::internal::TaskHints", align 8 ; 5 uses
  %14 = alloca %"class.arrow::StopToken", align 16 ; 7 uses
  %15 = alloca %"class.arrow::Result", align 8    ; 13 uses
  %i.a = load atomic i8, ptr @_ZGVZN5arrow2io18default_io_contextEvE20g_default_io_context acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN5arrow2io18default_io_contextEv.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5arrow2io18default_io_contextEvE20g_default_io_context) #32
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN5arrow2io18default_io_contextEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN5arrow2io9IOContextC2Ev(ptr noundef nonnull align 8 dereferenceable(40) @_ZZN5arrow2io18default_io_contextEvE20g_default_io_context)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5arrow2io9IOContextD2Ev, ptr nonnull @_ZZN5arrow2io18default_io_contextEvE20g_default_io_context, ptr nonnull @__dso_handle) #32 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5arrow2io18default_io_contextEvE20g_default_io_context) #32
  br label %_ZN5arrow2io18default_io_contextEv.exit

common.resume:                                    ; preds = %.body, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.e ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN5arrow2io18default_io_contextEvE20g_default_io_context) #32
  br label %common.resume

_ZN5arrow2io18default_io_contextEv.exit:          ; preds = %bb.a, %bb.b, %bb.d
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5arrow2io18default_io_contextEvE20g_default_io_context, i64 8), align 8, !tbaa !24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !39, !noalias !42 ; 5 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZN5arrow2io18default_io_contextEv.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.l = load atomic i32, ptr %i.k monotonic, align 8, !noalias !42
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.06.i.i.i.i.i = phi i32 [ %i.l, %bb.f ], [ %i.p, %bb.h ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i = icmp eq i32 %.06.i.i.i.i.i, 0
  br i1 %.not.not.not.i.not.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = add nsw i32 %.06.i.i.i.i.i, 1
  %i.n = cmpxchg weak ptr %i.k, i32 %.06.i.i.i.i.i, i32 %i.m acq_rel monotonic, align 8, !noalias !42 ; 2 uses
  %i.o = extractvalue { i32, i1 } %i.n, 1
  %i.p = extractvalue { i32, i1 } %i.n, 0
  br i1 %i.o, label %_ZNSt23enable_shared_from_thisIN5arrow2io13FileInterfaceEE16shared_from_thisEv.exit, label %bb.g, !llvm.loop !45

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i: ; preds = %bb.g, %_ZN5arrow2io18default_io_contextEv.exit
  %i.q = tail call ptr @__cxa_allocate_exception(i64 8) #32, !noalias !42 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12bad_weak_ptr, i64 16), ptr %i.q, align 8, !tbaa !30, !noalias !42
  tail call void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTISt12bad_weak_ptr, ptr nonnull @_ZNSt12bad_weak_ptrD1Ev) #34, !noalias !42
  unreachable

_ZNSt23enable_shared_from_thisIN5arrow2io13FileInterfaceEE16shared_from_thisEv.exit: ; preds = %bb.h
  %i.r = load ptr, ptr %i.g, align 8, !tbaa !47, !noalias !42 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %14, i8 0, i64 16, i1 false), !alias.scope !53, !noalias !50
  tail call void @llvm.experimental.noalias.scope.decl(metadata !56)
  call void @llvm.lifetime.start.p0(ptr nonnull %13), !noalias !50
  call void @llvm.lifetime.start.p0(ptr nonnull %9), !noalias !50
  call void @llvm.lifetime.start.p0(ptr nonnull %10), !noalias !50
  call void @llvm.lifetime.start.p0(ptr nonnull %11), !noalias !50
  store i32 0, ptr %13, align 8, !noalias !50
  %.sroa.25.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %13, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.25.0..sroa_idx.i, i8 -1, i64 24, i1 false), !noalias !50
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32, !noalias !59
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, i8 0, i64 16, i1 false), !alias.scope !60, !noalias !59
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32, !noalias !63
  invoke void @_ZN5arrow10FutureImpl4MakeEv(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.138") align 8 %4)
          to label %bb.i unwind label %bb.k, !noalias !63

bb.i:                                             ; preds = %_ZNSt23enable_shared_from_thisIN5arrow2io13FileInterfaceEE16shared_from_thisEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32, !noalias !63
  invoke void @_ZNSt12__shared_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.j unwind label %bb.l, !noalias !63

bb.j:                                             ; preds = %bb.i
  %i.s = load ptr, ptr %3, align 8, !tbaa !64, !noalias !63 ; 2 uses
  store ptr null, ptr %3, align 8, !tbaa !64, !noalias !63
  store ptr %i.s, ptr %5, align 16, !tbaa !64, !alias.scope !60, !noalias !59
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !26, !noalias !63 ; 2 uses
  store ptr %i.v, ptr %i.u, align 8, !tbaa !26, !alias.scope !60, !noalias !59
  %.pre.i.i.i = load ptr, ptr %4, align 8, !tbaa !64, !noalias !63 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32, !noalias !63
  %.not.i.i.i.i = icmp eq ptr %.pre.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow6FutureINS_8internal5EmptyEE4MakeEv.exit.i.i, label %_ZNKSt14default_deleteIN5arrow10FutureImplEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN5arrow10FutureImplEEclEPS1_.exit.i.i.i.i: ; preds = %bb.j
  %i.w = load ptr, ptr %.pre.i.i.i, align 8, !tbaa !30, !noalias !63
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !noalias !63
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(72) %.pre.i.i.i) #32, !noalias !63, !inline_history !66
  %.pre.i.i = load ptr, ptr %5, align 16, !tbaa !67, !noalias !69
  %.pre76.i.i = load ptr, ptr %i.u, align 8, !tbaa !26, !noalias !59
  br label %_ZN5arrow6FutureINS_8internal5EmptyEE4MakeEv.exit.i.i

bb.k:                                             ; preds = %_ZNSt23enable_shared_from_thisIN5arrow2io13FileInterfaceEE16shared_from_thisEv.exit
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN5arrow10FutureImplESt14default_deleteIS1_EED2Ev.exit6.i.i.i

bb.l:                                             ; preds = %bb.i
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = load ptr, ptr %4, align 8, !tbaa !64, !noalias !63 ; 3 uses
  %.not.i4.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i4.i.i.i, label %_ZNSt10unique_ptrIN5arrow10FutureImplESt14default_deleteIS1_EED2Ev.exit6.i.i.i, label %_ZNKSt14default_deleteIN5arrow10FutureImplEEclEPS1_.exit.i5.i.i.i

_ZNKSt14default_deleteIN5arrow10FutureImplEEclEPS1_.exit.i5.i.i.i: ; preds = %bb.l
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !30, !noalias !63
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !noalias !63
  call void %i.ae(ptr noundef nonnull align 8 dereferenceable(72) %i.ab) #32, !noalias !63, !inline_history !66
  br label %_ZNSt10unique_ptrIN5arrow10FutureImplESt14default_deleteIS1_EED2Ev.exit6.i.i.i

_ZNSt10unique_ptrIN5arrow10FutureImplESt14default_deleteIS1_EED2Ev.exit6.i.i.i: ; preds = %_ZNKSt14default_deleteIN5arrow10FutureImplEEclEPS1_.exit.i5.i.i.i, %bb.l, %bb.k
  %.pn.i.i.i = phi { ptr, i32 } [ %i.z, %bb.k ], [ %i.aa, %bb.l ], [ %i.aa, %_ZNKSt14default_deleteIN5arrow10FutureImplEEclEPS1_.exit.i5.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32, !noalias !63
  call void @_ZN5arrow6FutureINS_8internal5EmptyEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #32, !noalias !59
  br label %.body.i

_ZN5arrow6FutureINS_8internal5EmptyEE4MakeEv.exit.i.i: ; preds = %_ZNKSt14default_deleteIN5arrow10FutureImplEEclEPS1_.exit.i.i.i.i, %bb.j
  %i.af = phi ptr [ %i.v, %bb.j ], [ %.pre76.i.i, %_ZNKSt14default_deleteIN5arrow10FutureImplEEclEPS1_.exit.i.i.i.i ] ; 6 uses
  %i.ag = phi ptr [ %i.s, %bb.j ], [ %.pre.i.i, %_ZNKSt14default_deleteIN5arrow10FutureImplEEclEPS1_.exit.i.i.i.i ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32, !noalias !63
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32, !noalias !59
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5arrow10WeakFutureINS_8internal5EmptyEEC2ERKNS_6FutureIS2_EE.exit.i.i, label %bb.m

bb.m:                                             ; preds = %_ZN5arrow6FutureINS_8internal5EmptyEE4MakeEv.exit.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 3 uses
  %i.aj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33, !noalias !69
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.aj, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZSt4bindIN5arrow6detail14ContinueFutureEJRNS0_6FutureINS0_8internal5EmptyEEEZNS0_2io13FileInterface10CloseAsyncEvE3$_0EENSt12_Bind_helperIXsr15__is_socketlikeIT_EE5valueESC_JDpT0_EE4typeEOSC_DpOSD_.exit.i.i", label %.thread.i

.thread.i:                                        ; preds = %bb.m
  %i.ak = load i32, ptr %i.ai, align 4, !tbaa !3, !noalias !69
  %i.al = add nsw i32 %i.ak, 1
  store i32 %i.al, ptr %i.ai, align 4, !tbaa !3, !noalias !69
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  br label %bb.o

"_ZSt4bindIN5arrow6detail14ContinueFutureEJRNS0_6FutureINS0_8internal5EmptyEEEZNS0_2io13FileInterface10CloseAsyncEvE3$_0EENSt12_Bind_helperIXsr15__is_socketlikeIT_EE5valueESC_JDpT0_EE4typeEOSC_DpOSD_.exit.i.i": ; preds = %bb.m
  %i.an = atomicrmw volatile add ptr %i.ai, i32 1 acq_rel, align 4, !noalias !69 ; 0 uses
  %.pr.pre.i.i = load ptr, ptr %i.u, align 8, !tbaa !26, !noalias !59 ; 4 uses
  %.pre78.i.i = load ptr, ptr %5, align 16, !tbaa !67, !noalias !59 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %.pr.pre.i.i, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5arrow10WeakFutureINS_8internal5EmptyEEC2ERKNS_6FutureIS2_EE.exit.i.i, label %bb.n

bb.n:                                             ; preds = %"_ZSt4bindIN5arrow6detail14ContinueFutureEJRNS0_6FutureINS0_8internal5EmptyEEEZNS0_2io13FileInterface10CloseAsyncEvE3$_0EENSt12_Bind_helperIXsr15__is_socketlikeIT_EE5valueESC_JDpT0_EE4typeEOSC_DpOSD_.exit.i.i"
  %.pre.i = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33, !noalias !59
  %i.ao = icmp eq i8 %.pre.i, 0
  %i.ap = getelementptr inbounds nuw i8, ptr %.pr.pre.i.i, i64 12 ; 2 uses
  br i1 %i.ao, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n, %.thread.i
  %i.aq = phi ptr [ %i.am, %.thread.i ], [ %i.ap, %bb.n ] ; 2 uses
  %i.ar = phi ptr [ %i.ag, %.thread.i ], [ %.pre78.i.i, %bb.n ]
  %.pr91.i19.i = phi ptr [ %i.af, %.thread.i ], [ %.pr.pre.i.i, %bb.n ]
  %i.as = load i32, ptr %i.aq, align 4, !tbaa !3, !noalias !59
  %i.at = add nsw i32 %i.as, 1
  store i32 %i.at, ptr %i.aq, align 4, !tbaa !3, !noalias !59
  br label %_ZN5arrow10WeakFutureINS_8internal5EmptyEEC2ERKNS_6FutureIS2_EE.exit.i.i

bb.p:                                             ; preds = %bb.n
  %i.au = atomicrmw volatile add ptr %i.ap, i32 1 acq_rel, align 4, !noalias !59 ; 0 uses
  br label %_ZN5arrow10WeakFutureINS_8internal5EmptyEEC2ERKNS_6FutureIS2_EE.exit.i.i

_ZN5arrow10WeakFutureINS_8internal5EmptyEEC2ERKNS_6FutureIS2_EE.exit.i.i: ; preds = %bb.p, %bb.o, %"_ZSt4bindIN5arrow6detail14ContinueFutureEJRNS0_6FutureINS0_8internal5EmptyEEEZNS0_2io13FileInterface10CloseAsyncEvE3$_0EENSt12_Bind_helperIXsr15__is_socketlikeIT_EE5valueESC_JDpT0_EE4typeEOSC_DpOSD_.exit.i.i", %_ZN5arrow6FutureINS_8internal5EmptyEE4MakeEv.exit.i.i
  %i.av = phi ptr [ %.pre78.i.i, %bb.p ], [ %.pre78.i.i, %"_ZSt4bindIN5arrow6detail14ContinueFutureEJRNS0_6FutureINS0_8internal5EmptyEEEZNS0_2io13FileInterface10CloseAsyncEvE3$_0EENSt12_Bind_helperIXsr15__is_socketlikeIT_EE5valueESC_JDpT0_EE4typeEOSC_DpOSD_.exit.i.i" ], [ %i.ar, %bb.o ], [ %i.ag, %_ZN5arrow6FutureINS_8internal5EmptyEE4MakeEv.exit.i.i ]
  %i.aw = phi ptr [ %.pr.pre.i.i, %bb.p ], [ null, %"_ZSt4bindIN5arrow6detail14ContinueFutureEJRNS0_6FutureINS0_8internal5EmptyEEEZNS0_2io13FileInterface10CloseAsyncEvE3$_0EENSt12_Bind_helperIXsr15__is_socketlikeIT_EE5valueESC_JDpT0_EE4typeEOSC_DpOSD_.exit.i.i" ], [ %.pr91.i19.i, %bb.o ], [ null, %_ZN5arrow6FutureINS_8internal5EmptyEE4MakeEv.exit.i.i ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32, !noalias !59
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32, !noalias !59
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store ptr %i.r, ptr %i.ax, align 8, !tbaa !72, !noalias !59
  %i.ay = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store ptr %i.i, ptr %i.ay, align 8, !tbaa !26, !noalias !59
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr %i.ag, ptr %i.az, align 8, !tbaa !67, !noalias !59
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  store ptr %i.af, ptr %i.ba, align 8, !tbaa !26, !noalias !59
  store <4 x ptr> splat (ptr null), ptr %i.ah, align 8, !tbaa !14, !noalias !59
  %i.bb = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #35
          to label %bb.q unwind label %_ZN5arrow8internal6FnOnceIFvvEED2Ev.exit35.i.i, !noalias !59 ; 6 uses

bb.q:                                             ; preds = %_ZN5arrow10WeakFutureINS_8internal5EmptyEEC2ERKNS_6FutureIS2_EE.exit.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ax, i8 0, i64 32, i1 false), !noalias !59
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN5arrow8internal6FnOnceIFvvEE6FnImplISt5_BindIFNS_6detail14ContinueFutureENS_6FutureINS0_5EmptyEEEZNS_2io13FileInterface10CloseAsyncEvE3$_0EEEE", i64 16), ptr %i.bb, align 8, !tbaa !30, !noalias !59
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store ptr %i.r, ptr %i.bc, align 8, !tbaa !72, !noalias !59
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  store ptr %i.i, ptr %i.bd, align 8, !tbaa !26, !noalias !59
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  store ptr %i.ag, ptr %i.be, align 8, !tbaa !67, !noalias !59
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  store ptr %i.af, ptr %i.bf, align 8, !tbaa !26, !noalias !59
  store ptr %i.bb, ptr %9, align 8, !tbaa !74, !noalias !59
  %i.bg = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.bi = load <2 x ptr>, ptr %14, align 16, !tbaa !14, !noalias !59
  store ptr null, ptr %i.bh, align 8, !tbaa !26, !noalias !59
  store <2 x ptr> %i.bi, ptr %11, align 16, !tbaa !14, !noalias !59
  store ptr null, ptr %14, align 16, !tbaa !76, !noalias !59
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #32, !noalias !59
  %i.bj = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #35
          to label %bb.r unwind label %_ZN5arrow8internal6FnOnceIFvRKNS_6StatusEEED2Ev.exit27.i.i, !noalias !59 ; 4 uses

bb.r:                                             ; preds = %bb.q
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN5arrow8internal6FnOnceIFvRKNS_6StatusEEE6FnImplIZNS0_8Executor6SubmitIZNS_2io13FileInterface10CloseAsyncEvE3$_0JENS_6FutureINS0_5EmptyEEEEENS_6ResultIT1_EENS0_9TaskHintsENS_9StopTokenEOT_DpOT0_E3$_0EE", i64 16), ptr %i.bj, align 8, !tbaa !30, !noalias !59
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store ptr %i.av, ptr %i.bk, align 8, !tbaa !77, !noalias !59
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  store ptr %i.aw, ptr %i.bl, align 8, !tbaa !39, !noalias !59
  store ptr %i.bj, ptr %12, align 8, !tbaa !79, !noalias !59
  %i.bm = load ptr, ptr %i.f, align 8, !tbaa !30, !noalias !59
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  %i.bo = load ptr, ptr %i.bn, align 8, !noalias !59
  invoke void %i.bo(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull byval(%"struct.arrow::internal::TaskHints") align 8 %13, ptr noundef nonnull %9, ptr noundef nonnull %11, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %_ZN5arrow6StatusD2Ev.exit.i.i unwind label %bb.an, !noalias !59

_ZN5arrow6StatusD2Ev.exit.i.i:                    ; preds = %bb.r
  %i.bp = load ptr, ptr %8, align 8, !tbaa !81, !noalias !59
  store ptr %i.bp, ptr %7, align 8, !tbaa !81, !noalias !59
  store ptr null, ptr %8, align 8, !tbaa !81, !noalias !59
  %i.bq = load ptr, ptr %12, align 8, !tbaa !79, !noalias !59 ; 3 uses
  %.not.i.i16.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i16.i.i, label %"_ZZN5arrow8internal8Executor6SubmitIZNS_2io13FileInterface10CloseAsyncEvE3$_0JENS_6FutureINS0_5EmptyEEEEENS_6ResultIT1_EENS0_9TaskHintsENS_9StopTokenEOT_DpOT0_EN3$_0D2Ev.exit.i.i", label %_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_6StatusEEE4ImplEEclEPS8_.exit.i.i.i.i

_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_6StatusEEE4ImplEEclEPS8_.exit.i.i.i.i: ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !30, !noalias !59
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !noalias !59
  call void %i.bt(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bq) #32, !noalias !59, !inline_history !84
  br label %"_ZZN5arrow8internal8Executor6SubmitIZNS_2io13FileInterface10CloseAsyncEvE3$_0JENS_6FutureINS0_5EmptyEEEEENS_6ResultIT1_EENS0_9TaskHintsENS_9StopTokenEOT_DpOT0_EN3$_0D2Ev.exit.i.i"

"_ZZN5arrow8internal8Executor6SubmitIZNS_2io13FileInterface10CloseAsyncEvE3$_0JENS_6FutureINS0_5EmptyEEEEENS_6ResultIT1_EENS0_9TaskHintsENS_9StopTokenEOT_DpOT0_EN3$_0D2Ev.exit.i.i": ; preds = %_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_6StatusEEE4ImplEEclEPS8_.exit.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32, !noalias !59
  %i.bu = load ptr, ptr %i.bg, align 8, !tbaa !26, !noalias !59 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow9StopTokenD2Ev.exit.i.i, label %bb.s

bb.s:                                             ; preds = %"_ZZN5arrow8internal8Executor6SubmitIZNS_2io13FileInterface10CloseAsyncEvE3$_0JENS_6FutureINS0_5EmptyEEEEENS_6ResultIT1_EENS0_9TaskHintsENS_9StopTokenEOT_DpOT0_EN3$_0D2Ev.exit.i.i"
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 4 uses
  %i.bw = load atomic i64, ptr %i.bv acquire, align 8, !noalias !59 ; 2 uses
  %i.bx = icmp eq i64 %i.bw, 4294967297
  %i.by = trunc i64 %i.bw to i32                  ; 2 uses
  br i1 %i.bx, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.bv, align 8, !tbaa !27, !noalias !59
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 12
  store i32 0, ptr %i.bz, align 4, !tbaa !29, !noalias !59
  %i.ca = load ptr, ptr %i.bu, align 8, !tbaa !30, !noalias !59
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8, !noalias !59
  call void %i.cc(ptr noundef nonnull align 8 dereferenceable(16) %i.bu) #32, !noalias !59, !inline_history !85
  %i.cd = load ptr, ptr %i.bu, align 8, !tbaa !30, !noalias !59
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8, !noalias !59
  call void %i.cf(ptr noundef nonnull align 8 dereferenceable(16) %i.bu) #32, !noalias !59, !inline_history !85
  br label %_ZN5arrow9StopTokenD2Ev.exit.i.i

bb.u:                                             ; preds = %bb.s
  %i.cg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33, !noalias !59
  %.not.i.i.i.i19.i.i = icmp eq i8 %i.cg, 0
  br i1 %.not.i.i.i.i19.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ch = add nsw i32 %i.by, -1
  store i32 %i.ch, ptr %i.bv, align 8, !tbaa !3, !noalias !59
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.ci = atomicrmw volatile add ptr %i.bv, i32 -1 acq_rel, align 4, !noalias !59
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.by, %bb.v ], [ %i.ci, %bb.w ]
  %i.cj = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.cj, label %bb.x, label %_ZN5arrow9StopTokenD2Ev.exit.i.i, !prof !34

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bu) #32, !noalias !59
  br label %_ZN5arrow9StopTokenD2Ev.exit.i.i

_ZN5arrow9StopTokenD2Ev.exit.i.i:                 ; preds = %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.t, %"_ZZN5arrow8internal8Executor6SubmitIZNS_2io13FileInterface10CloseAsyncEvE3$_0JENS_6FutureINS0_5EmptyEEEEENS_6ResultIT1_EENS0_9TaskHintsENS_9StopTokenEOT_DpOT0_EN3$_0D2Ev.exit.i.i"
  %i.ck = load ptr, ptr %9, align 8, !tbaa !74, !noalias !59 ; 3 uses
  %.not.i.i20.i.i = icmp eq ptr %i.ck, null
  br i1 %.not.i.i20.i.i, label %_ZN5arrow8internal6FnOnceIFvvEED2Ev.exit.i.i, label %_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvvEE4ImplEEclEPS5_.exit.i.i.i.i

_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvvEE4ImplEEclEPS5_.exit.i.i.i.i: ; preds = %_ZN5arrow9StopTokenD2Ev.exit.i.i
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !30, !noalias !59
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !noalias !59
  call void %i.cn(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ck) #32, !noalias !59, !inline_history !86
  br label %_ZN5arrow8internal6FnOnceIFvvEED2Ev.exit.i.i

_ZN5arrow8internal6FnOnceIFvvEED2Ev.exit.i.i:     ; preds = %_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvvEE4ImplEEclEPS5_.exit.i.i.i.i, %_ZN5arrow9StopTokenD2Ev.exit.i.i
  %i.co = load ptr, ptr %i.ba, align 8, !tbaa !26, !noalias !59 ; 8 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.co, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt10_Head_baseILm0EN5arrow6FutureINS0_8internal5EmptyEEELb0EED2Ev.exit.i.i.i.i, label %bb.y

bb.y:                                             ; preds = %_ZN5arrow8internal6FnOnceIFvvEED2Ev.exit.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8 ; 4 uses
  %i.cq = load atomic i64, ptr %i.cp acquire, align 8, !noalias !59 ; 2 uses
  %i.cr = icmp eq i64 %i.cq, 4294967297
  %i.cs = trunc i64 %i.cq to i32                  ; 2 uses
  br i1 %i.cr, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %i.cp, align 8, !tbaa !27, !noalias !59
  %i.ct = getelementptr inbounds nuw i8, ptr %i.co, i64 12
  store i32 0, ptr %i.ct, align 4, !tbaa !29, !noalias !59
  %i.cu = load ptr, ptr %i.co, align 8, !tbaa !30, !noalias !59
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8, !noalias !59
  call void %i.cw(ptr noundef nonnull align 8 dereferenceable(16) %i.co) #32, !noalias !59, !inline_history !87
  %i.cx = load ptr, ptr %i.co, align 8, !tbaa !30, !noalias !59
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8, !noalias !59
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(16) %i.co) #32, !noalias !59, !inline_history !87
  br label %_ZNSt10_Head_baseILm0EN5arrow6FutureINS0_8internal5EmptyEEELb0EED2Ev.exit.i.i.i.i

bb.aa:                                            ; preds = %bb.y
  %i.da = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33, !noalias !59
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.da, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.db = add nsw i32 %i.cs, -1
  store i32 %i.db, ptr %i.cp, align 8, !tbaa !3, !noalias !59
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.ac:                                            ; preds = %bb.aa
  %i.dc = atomicrmw volatile add ptr %i.cp, i32 -1 acq_rel, align 4, !noalias !59
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.ac, %bb.ab
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.cs, %bb.ab ], [ %i.dc, %bb.ac ]
  %i.dd = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.dd, label %bb.ad, label %_ZNSt10_Head_baseILm0EN5arrow6FutureINS0_8internal5EmptyEEELb0EED2Ev.exit.i.i.i.i, !prof !34

bb.ad:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.co) #32, !noalias !59
  br label %_ZNSt10_Head_baseILm0EN5arrow6FutureINS0_8internal5EmptyEEELb0EED2Ev.exit.i.i.i.i

_ZNSt10_Head_baseILm0EN5arrow6FutureINS0_8internal5EmptyEEELb0EED2Ev.exit.i.i.i.i: ; preds = %bb.ad, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.z, %_ZN5arrow8internal6FnOnceIFvvEED2Ev.exit.i.i
  %.val.i.i.i.i = load ptr, ptr %i.ay, align 8, !tbaa !26, !noalias !59 ; 8 uses
  %.not.i.i.i.i1.i.i.i.i = icmp eq ptr %.val.i.i.i.i, null
  br i1 %.not.i.i.i.i1.i.i.i.i, label %"_ZNSt5_BindIFN5arrow6detail14ContinueFutureENS0_6FutureINS0_8internal5EmptyEEEZNS0_2io13FileInterface10CloseAsyncEvE3$_0EED2Ev.exit.i.i", label %bb.ae

bb.ae:                                            ; preds = %_ZNSt10_Head_baseILm0EN5arrow6FutureINS0_8internal5EmptyEEELb0EED2Ev.exit.i.i.i.i
  %i.de = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 8 ; 4 uses
  %i.df = load atomic i64, ptr %i.de acquire, align 8, !noalias !59 ; 2 uses
  %i.dg = icmp eq i64 %i.df, 4294967297
  %i.dh = trunc i64 %i.df to i32                  ; 2 uses
  br i1 %i.dg, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  store i32 0, ptr %i.de, align 8, !tbaa !27, !noalias !59
  %i.di = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 12
  store i32 0, ptr %i.di, align 4, !tbaa !29, !noalias !59
  %i.dj = load ptr, ptr %.val.i.i.i.i, align 8, !tbaa !30, !noalias !59
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dl = load ptr, ptr %i.dk, align 8, !noalias !59
  call void %i.dl(ptr noundef nonnull align 8 dereferenceable(16) %.val.i.i.i.i) #32, !noalias !59, !inline_history !88
  %i.dm = load ptr, ptr %.val.i.i.i.i, align 8, !tbaa !30, !noalias !59
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %i.do = load ptr, ptr %i.dn, align 8, !noalias !59
  call void %i.do(ptr noundef nonnull align 8 dereferenceable(16) %.val.i.i.i.i) #32, !noalias !59, !inline_history !88
  br label %"_ZNSt5_BindIFN5arrow6detail14ContinueFutureENS0_6FutureINS0_8internal5EmptyEEEZNS0_2io13FileInterface10CloseAsyncEvE3$_0EED2Ev.exit.i.i"

bb.ag:                                            ; preds = %bb.ae
  %i.dp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33, !noalias !59
  %.not.i.i.i.i.i2.i.i.i.i = icmp eq i8 %i.dp, 0
  br i1 %.not.i.i.i.i.i2.i.i.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dq = add nsw i32 %i.dh, -1
  store i32 %i.dq, ptr %i.de, align 8, !tbaa !3, !noalias !59
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i.i.i

bb.ai:                                            ; preds = %bb.ag
  %i.dr = atomicrmw volatile add ptr %i.de, i32 -1 acq_rel, align 4, !noalias !59
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i.i.i: ; preds = %bb.ai, %bb.ah
  %.0.i.i.i.i.i.i4.i.i.i.i = phi i32 [ %i.dh, %bb.ah ], [ %i.dr, %bb.ai ]
  %i.ds = icmp eq i32 %.0.i.i.i.i.i.i4.i.i.i.i, 1
  br i1 %i.ds, label %bb.aj, label %"_ZNSt5_BindIFN5arrow6detail14ContinueFutureENS0_6FutureINS0_8internal5EmptyEEEZNS0_2io13FileInterface10CloseAsyncEvE3$_0EED2Ev.exit.i.i", !prof !34

bb.aj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.val.i.i.i.i) #32, !noalias !59
  br label %"_ZNSt5_BindIFN5arrow6detail14ContinueFutureENS0_6FutureINS0_8internal5EmptyEEEZNS0_2io13FileInterface10CloseAsyncEvE3$_0EED2Ev.exit.i.i"

"_ZNSt5_BindIFN5arrow6detail14ContinueFutureENS0_6FutureINS0_8internal5EmptyEEEZNS0_2io13FileInterface10CloseAsyncEvE3$_0EED2Ev.exit.i.i": ; preds = %bb.aj, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i.i.i, %bb.af, %_ZNSt10_Head_baseILm0EN5arrow6FutureINS0_8internal5EmptyEEELb0EED2Ev.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32, !noalias !59
  %i.dt = load ptr, ptr %7, align 8, !tbaa !81, !noalias !59
  %i.du = icmp eq ptr %i.dt, null
  br i1 %i.du, label %"_ZNSt5_BindIFN5arrow6detail14ContinueFutureENS0_6FutureINS0_8internal5EmptyEEEZNS0_2io13FileInterface10CloseAsyncEvE3$_0EED2Ev.exit58.thread.i.i", label %bb.ak, !prof !89

bb.ak:                                            ; preds = %"_ZNSt5_BindIFN5arrow6detail14ContinueFutureENS0_6FutureINS0_8internal5EmptyEEEZNS0_2io13FileInterface10CloseAsyncEvE3$_0EED2Ev.exit.i.i"
  call void @_ZN5arrow6ResultINS_6FutureINS_8internal5EmptyEEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(8) %7) #32
  %i.dv = load ptr, ptr %7, align 8, !tbaa !81, !noalias !59 ; 2 uses
  %.not.i21.i.i = icmp eq ptr %i.dv, null
  br i1 %.not.i21.i.i, label %"_ZNSt5_BindIFN5arrow6detail14ContinueFutureENS0_6FutureINS0_8internal5EmptyEEEZNS0_2io13FileInterface10CloseAsyncEvE3$_0EED2Ev.exit58.i.i", label %bb.al, !prof !89

bb.al:                                            ; preds = %bb.ak
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 1
end_hunk_0
begin_hunk_1_@_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev:bb.a

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.h
  %.pr = load ptr, ptr %0, align 8, !tbaa !81     ; 2 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread, !prof !118

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread: ; preds = %bb.a, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit
  %i.t = phi ptr [ %.pr, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit ], [ %i.a, %bb.a ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !90, !range !100, !noundef !101
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %_ZN5arrow6StatusD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread
  tail call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #32
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread, %bb.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow2io11InputStream4PeekEl(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.15") align 8 %0, ptr nofree nonnull readnone align 8 captures(none) %1, i64 %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  call void @_ZN5arrow6Status8FromArgsIJRA21_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, i8 noundef signext 10, ptr noundef nonnull align 1 dereferenceable(21) @.str)
  call void @_ZN5arrow6ResultISt17basic_string_viewIcSt11char_traitsIcEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #32
  %i.a = load ptr, ptr %3, align 8, !tbaa !81     ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.b, !prof !89

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.c = load i8, ptr %i.b, align 1, !tbaa !90, !range !100, !noundef !101
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_ZN5arrow6StatusD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #32
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt17basic_string_viewIcSt11char_traitsIcEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator.92", align 1 ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  store ptr null, ptr %0, align 8, !tbaa !81
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.h

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !81
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.g, !prof !34

bb.b:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.23, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  invoke void @_ZNK5arrow6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5arrow8internal14DieWithMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.c = load ptr, ptr %2, align 8, !tbaa !127    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.f = load i64, ptr %i.d, align 8, !tbaa !33
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.h = load ptr, ptr %5, align 8, !tbaa !127    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !33
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  %i.m = load ptr, ptr %3, align 8, !tbaa !127    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.p = load i64, ptr %i.n, align 8, !tbaa !33
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZN5arrow6StatusC2ERKS0_.exit
  ret void

bb.h:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #33
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @_ZNK5arrow2io11InputStream18supports_zero_copyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #8 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN5arrow2io11InputStream12ReadMetadataEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::Result.19") align 8 captures(none) initializes((0, 24)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow2io11InputStream17ReadMetadataAsyncERKNS0_9IOContextE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Future.26") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Result.19", align 8  ; 7 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 11 uses
  %5 = alloca %"class.std::__shared_ptr.4", align 8 ; 6 uses
  %6 = alloca %"class.std::unique_ptr.138", align 8 ; 7 uses
  %7 = alloca %"class.arrow::Future.26", align 16 ; 11 uses
  %8 = alloca %"class.std::_Bind.178", align 8    ; 6 uses
  %9 = alloca %"class.arrow::Status", align 8     ; 10 uses
  %10 = alloca %"class.arrow::Status", align 8    ; 7 uses
  %11 = alloca %"class.arrow::internal::FnOnce", align 8 ; 6 uses
  %12 = alloca %"class.std::_Bind.178", align 8   ; 8 uses
  %13 = alloca %"class.arrow::StopToken", align 16 ; 6 uses
  %14 = alloca %"class.arrow::internal::FnOnce.129", align 8 ; 7 uses
  %15 = alloca %"struct.arrow::internal::TaskHints", align 8 ; 6 uses
  %16 = alloca %"class.arrow::StopToken", align 16 ; 7 uses
  %17 = alloca %"class.std::shared_ptr.27", align 8 ; 9 uses
  %18 = alloca %"class.arrow::Result.30", align 8 ; 13 uses
  %19 = alloca %"struct.arrow::io::IOContext", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #32
  %i.a = load ptr, ptr %1, align 8, !tbaa !30
  %i.b = getelementptr i8, ptr %i.a, i64 -56
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr i8, ptr %1, i64 %i.c       ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 8
  %i.f = getelementptr i8, ptr %i.d, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !39, !noalias !128 ; 9 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 6 uses
  %i.j = load atomic i32, ptr %i.i monotonic, align 8, !noalias !128
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.06.i.i.i.i.i = phi i32 [ %i.j, %bb.b ], [ %i.n, %bb.d ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i = icmp eq i32 %.06.i.i.i.i.i, 0
  br i1 %.not.not.not.i.not.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = add nsw i32 %.06.i.i.i.i.i, 1
  %i.l = cmpxchg weak ptr %i.i, i32 %.06.i.i.i.i.i, i32 %i.k acq_rel monotonic, align 8, !noalias !128 ; 2 uses
  %i.m = extractvalue { i32, i1 } %i.l, 1
  %i.n = extractvalue { i32, i1 } %i.l, 0
  br i1 %i.m, label %_ZNSt23enable_shared_from_thisIN5arrow2io13FileInterfaceEE16shared_from_thisEv.exit, label %bb.c, !llvm.loop !45

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i: ; preds = %bb.c, %bb.a
  %i.o = tail call ptr @__cxa_allocate_exception(i64 8) #32, !noalias !128 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12bad_weak_ptr, i64 16), ptr %i.o, align 8, !tbaa !30, !noalias !128
  tail call void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTISt12bad_weak_ptr, ptr nonnull @_ZNSt12bad_weak_ptrD1Ev) #34, !noalias !128
  unreachable

_ZNSt23enable_shared_from_thisIN5arrow2io13FileInterfaceEE16shared_from_thisEv.exit: ; preds = %bb.d
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !47, !noalias !128 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !131)
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_ZSt20dynamic_pointer_castIN5arrow2io11InputStreamENS1_13FileInterfaceEESt10shared_ptrIT_EOS4_IT0_E.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt23enable_shared_from_thisIN5arrow2io13FileInterfaceEE16shared_from_thisEv.exit
  %i.r = tail call ptr @__dynamic_cast(ptr nonnull %i.p, ptr nonnull @_ZTIN5arrow2io13FileInterfaceE, ptr nonnull @_ZTIN5arrow2io11InputStreamE, i64 -1) #32, !noalias !131 ; 2 uses
  %.not.not.i = icmp eq ptr %i.r, null
  br i1 %.not.not.i, label %_ZSt20dynamic_pointer_castIN5arrow2io11InputStreamENS1_13FileInterfaceEESt10shared_ptrIT_EOS4_IT0_E.exit, label %_ZSt20dynamic_pointer_castIN5arrow2io11InputStreamENS1_13FileInterfaceEESt10shared_ptrIT_EOS4_IT0_E.exit.thread

_ZSt20dynamic_pointer_castIN5arrow2io11InputStreamENS1_13FileInterfaceEESt10shared_ptrIT_EOS4_IT0_E.exit.thread: ; preds = %bb.e
  store ptr %i.r, ptr %17, align 8, !tbaa !134, !alias.scope !131
  %i.s = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %i.g, ptr %i.s, align 8, !tbaa !26, !alias.scope !131
  br label %_ZNSt12__shared_ptrIN5arrow2io13FileInterfaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZSt20dynamic_pointer_castIN5arrow2io11InputStreamENS1_13FileInterfaceEESt10shared_ptrIT_EOS4_IT0_E.exit: ; preds = %_ZNSt23enable_shared_from_thisIN5arrow2io13FileInterfaceEE16shared_from_thisEv.exit, %bb.e
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %17, i8 0, i64 16, i1 false), !alias.scope !131
  %i.t = load atomic i64, ptr %i.i acquire, align 8 ; 2 uses
  %i.u = icmp eq i64 %i.t, 4294967297
  %i.v = trunc i64 %i.t to i32                    ; 2 uses
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZSt20dynamic_pointer_castIN5arrow2io11InputStreamENS1_13FileInterfaceEESt10shared_ptrIT_EOS4_IT0_E.exit
  store i32 0, ptr %i.i, align 8, !tbaa !27
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 0, ptr %i.w, align 4, !tbaa !29
  %i.x = load ptr, ptr %i.g, align 8, !tbaa !30
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #32, !inline_history !120
  %i.aa = load ptr, ptr %i.g, align 8, !tbaa !30
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #32, !inline_history !120
  br label %_ZNSt12__shared_ptrIN5arrow2io13FileInterfaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.g:                                             ; preds = %_ZSt20dynamic_pointer_castIN5arrow2io11InputStreamENS1_13FileInterfaceEESt10shared_ptrIT_EOS4_IT0_E.exit
  %i.ad = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i = icmp eq i8 %i.ad, 0
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = add nsw i32 %i.v, -1
  store i32 %i.ae, ptr %i.i, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.af = atomicrmw volatile add ptr %i.i, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i = phi i32 [ %i.v, %bb.h ], [ %i.af, %bb.i ]
  %i.ag = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ag, label %bb.j, label %_ZNSt12__shared_ptrIN5arrow2io13FileInterfaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !34

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #32
  br label %_ZNSt12__shared_ptrIN5arrow2io13FileInterfaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow2io13FileInterfaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZSt20dynamic_pointer_castIN5arrow2io11InputStreamENS1_13FileInterfaceEESt10shared_ptrIT_EOS4_IT0_E.exit.thread, %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %19, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 24, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %19, i64 24 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %19, i64 32 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !26 ; 2 uses
  %i.am = load <2 x ptr>, ptr %i.ai, align 8, !tbaa !14
  store <2 x ptr> %i.am, ptr %i.ah, align 8, !tbaa !14
  %.not.i.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow2io9IOContextC2ERKS1_.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow2io13FileInterfaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 3 uses
  %i.ao = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ao, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = load i32, ptr %i.an, align 4, !tbaa !3
  %i.aq = add nsw i32 %i.ap, 1
  store i32 %i.aq, ptr %i.an, align 4, !tbaa !3
  br label %_ZN5arrow2io9IOContextC2ERKS1_.exit

bb.m:                                             ; preds = %bb.k
  %i.ar = atomicrmw volatile add ptr %i.an, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5arrow2io9IOContextC2ERKS1_.exit

_ZN5arrow2io9IOContextC2ERKS1_.exit:              ; preds = %_ZNSt12__shared_ptrIN5arrow2io13FileInterfaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.l, %bb.m
  %i.as = load ptr, ptr %17, align 8, !tbaa !134  ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !26 ; 5 uses
  %.not.i.i.i6 = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i6, label %_ZNSt10shared_ptrIN5arrow2io11InputStreamEEC2ERKS3_.exit, label %bb.n

bb.n:                                             ; preds = %_ZN5arrow2io9IOContextC2ERKS1_.exit
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 3 uses
  %i.aw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i.i = icmp eq i8 %i.aw, 0
  br i1 %.not.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ax = load i32, ptr %i.av, align 4, !tbaa !3
  %i.ay = add nsw i32 %i.ax, 1
  store i32 %i.ay, ptr %i.av, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow2io11InputStreamEEC2ERKS3_.exit

bb.p:                                             ; preds = %bb.n
  %i.az = atomicrmw volatile add ptr %i.av, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow2io11InputStreamEEC2ERKS3_.exit

_ZNSt10shared_ptrIN5arrow2io11InputStreamEEC2ERKS3_.exit: ; preds = %_ZN5arrow2io9IOContextC2ERKS1_.exit, %bb.o, %bb.p
  tail call void @llvm.experimental.noalias.scope.decl(metadata !137)
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  %i.ba = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !25, !noalias !137
  %i.bc = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !24, !noalias !137 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !140)
  %i.be = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.bf = load ptr, ptr %i.aj, align 8, !tbaa !26, !noalias !143 ; 2 uses
  %i.bg = load <2 x ptr>, ptr %i.ah, align 8, !tbaa !14, !noalias !143
  store <2 x ptr> %i.bg, ptr %16, align 16, !tbaa !14, !alias.scope !140, !noalias !137
  %.not.i.i.i.i.i.i7 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i.i.i7, label %_ZNK5arrow2io9IOContext10stop_tokenEv.exit.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt10shared_ptrIN5arrow2io11InputStreamEEC2ERKS3_.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 3 uses
  %i.bi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33, !noalias !143
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.bi, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bj = load i32, ptr %i.bh, align 4, !tbaa !3, !noalias !143
  %i.bk = add nsw i32 %i.bj, 1
  store i32 %i.bk, ptr %i.bh, align 4, !tbaa !3, !noalias !143
  br label %_ZNK5arrow2io9IOContext10stop_tokenEv.exit.i

bb.s:                                             ; preds = %bb.q
  %i.bl = atomicrmw volatile add ptr %i.bh, i32 1 acq_rel, align 4, !noalias !143 ; 0 uses
  br label %_ZNK5arrow2io9IOContext10stop_tokenEv.exit.i

_ZNK5arrow2io9IOContext10stop_tokenEv.exit.i:     ; preds = %bb.s, %bb.r, %_ZNSt10shared_ptrIN5arrow2io11InputStreamEEC2ERKS3_.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !144)
  call void @llvm.lifetime.start.p0(ptr nonnull %15), !noalias !137
  call void @llvm.lifetime.start.p0(ptr nonnull %11), !noalias !137
  call void @llvm.lifetime.start.p0(ptr nonnull %12), !noalias !137
  call void @llvm.lifetime.start.p0(ptr nonnull %13), !noalias !137
  store i32 0, ptr %15, align 8, !noalias !137
  %i.bm = getelementptr inbounds nuw i8, ptr %15, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i8 -1, i64 16, i1 false), !noalias !137
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %15, i64 24
  store i64 %i.bb, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !137
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32, !noalias !147
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %7, i8 0, i64 16, i1 false), !alias.scope !148, !noalias !147
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32, !noalias !151
  invoke void @_ZN5arrow10FutureImpl4MakeEv(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.138") align 8 %6)
          to label %bb.t unwind label %bb.v, !noalias !151

bb.t:                                             ; preds = %_ZNK5arrow2io9IOContext10stop_tokenEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32, !noalias !151
  invoke void @_ZNSt12__shared_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.u unwind label %bb.w, !noalias !151

bb.u:                                             ; preds = %bb.t
  %i.bn = load ptr, ptr %5, align 8, !tbaa !64, !noalias !151 ; 2 uses
  store ptr null, ptr %5, align 8, !tbaa !64, !noalias !151
  store ptr %i.bn, ptr %7, align 16, !tbaa !64, !alias.scope !148, !noalias !147
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.bq = load ptr, ptr %i.bo, align 8, !tbaa !26, !noalias !151 ; 2 uses
  store ptr %i.bq, ptr %i.bp, align 8, !tbaa !26, !alias.scope !148, !noalias !147
  %.pre.i.i.i = load ptr, ptr %6, align 8, !tbaa !64, !noalias !151 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32, !noalias !151
  %.not.i.i.i.i8 = icmp eq ptr %.pre.i.i.i, null
  br i1 %.not.i.i.i.i8, label %_ZN5arrow6FutureISt10shared_ptrIKNS_16KeyValueMetadataEEE4MakeEv.exit.i.i, label %_ZNKSt14default_deleteIN5arrow10FutureImplEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN5arrow10FutureImplEEclEPS1_.exit.i.i.i.i: ; preds = %bb.u
  %i.br = load ptr, ptr %.pre.i.i.i, align 8, !tbaa !30, !noalias !151
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !noalias !151
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(72) %.pre.i.i.i) #32, !noalias !151, !inline_history !152
  %.pre.i.i = load ptr, ptr %7, align 16, !tbaa !67, !noalias !153
  %.pre76.i.i = load ptr, ptr %i.bp, align 8, !tbaa !26, !noalias !147
  br label %_ZN5arrow6FutureISt10shared_ptrIKNS_16KeyValueMetadataEEE4MakeEv.exit.i.i

bb.v:                                             ; preds = %_ZNK5arrow2io9IOContext10stop_tokenEv.exit.i
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN5arrow10FutureImplESt14default_deleteIS1_EED2Ev.exit6.i.i.i

bb.w:                                             ; preds = %bb.t
  %i.bv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bw = load ptr, ptr %6, align 8, !tbaa !64, !noalias !151 ; 3 uses
  %.not.i4.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i4.i.i.i, label %_ZNSt10unique_ptrIN5arrow10FutureImplESt14default_deleteIS1_EED2Ev.exit6.i.i.i, label %_ZNKSt14default_deleteIN5arrow10FutureImplEEclEPS1_.exit.i5.i.i.i

_ZNKSt14default_deleteIN5arrow10FutureImplEEclEPS1_.exit.i5.i.i.i: ; preds = %bb.w
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !30, !noalias !151
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !noalias !151
  call void %i.bz(ptr noundef nonnull align 8 dereferenceable(72) %i.bw) #32, !noalias !151, !inline_history !152
  br label %_ZNSt10unique_ptrIN5arrow10FutureImplESt14default_deleteIS1_EED2Ev.exit6.i.i.i

_ZNSt10unique_ptrIN5arrow10FutureImplESt14default_deleteIS1_EED2Ev.exit6.i.i.i: ; preds = %_ZNKSt14default_deleteIN5arrow10FutureImplEEclEPS1_.exit.i5.i.i.i, %bb.w, %bb.v
  %.pn.i.i.i = phi { ptr, i32 } [ %i.bu, %bb.v ], [ %i.bv, %bb.w ], [ %i.bv, %_ZNKSt14default_deleteIN5arrow10FutureImplEEclEPS1_.exit.i5.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32, !noalias !151
  call void @_ZN5arrow6FutureISt10shared_ptrIKNS_16KeyValueMetadataEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #32, !noalias !147
  br label %.body.i

_ZN5arrow6FutureISt10shared_ptrIKNS_16KeyValueMetadataEEE4MakeEv.exit.i.i: ; preds = %_ZNKSt14default_deleteIN5arrow10FutureImplEEclEPS1_.exit.i.i.i.i, %bb.u
  %i.ca = phi ptr [ %i.bq, %bb.u ], [ %.pre76.i.i, %_ZNKSt14default_deleteIN5arrow10FutureImplEEclEPS1_.exit.i.i.i.i ] ; 6 uses
  %i.cb = phi ptr [ %i.bn, %bb.u ], [ %.pre.i.i, %_ZNKSt14default_deleteIN5arrow10FutureImplEEclEPS1_.exit.i.i.i.i ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32, !noalias !151
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32, !noalias !147
  %i.cc = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5arrow10WeakFutureISt10shared_ptrIKNS_16KeyValueMetadataEEEC2ERKNS_6FutureIS4_EE.exit.i.i, label %bb.x

bb.x:                                             ; preds = %_ZN5arrow6FutureISt10shared_ptrIKNS_16KeyValueMetadataEEE4MakeEv.exit.i.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 3 uses
  %i.ce = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33, !noalias !153
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ce, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZSt4bindIN5arrow6detail14ContinueFutureEJRNS0_6FutureISt10shared_ptrIKNS0_16KeyValueMetadataEEEEZNS0_2io11InputStream17ReadMetadataAsyncERKNSA_9IOContextEE3$_0EENSt12_Bind_helperIXsr15__is_socketlikeIT_EE5valueESH_JDpT0_EE4typeEOSH_DpOSI_.exit.i.i", label %.thread.i9

.thread.i9:                                       ; preds = %bb.x
  %i.cf = load i32, ptr %i.cd, align 4, !tbaa !3, !noalias !153
  %i.cg = add nsw i32 %i.cf, 1
  store i32 %i.cg, ptr %i.cd, align 4, !tbaa !3, !noalias !153
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ca, i64 12
  br label %bb.z

"_ZSt4bindIN5arrow6detail14ContinueFutureEJRNS0_6FutureISt10shared_ptrIKNS0_16KeyValueMetadataEEEEZNS0_2io11InputStream17ReadMetadataAsyncERKNSA_9IOContextEE3$_0EENSt12_Bind_helperIXsr15__is_socketlikeIT_EE5valueESH_JDpT0_EE4typeEOSH_DpOSI_.exit.i.i": ; preds = %bb.x
  %i.ci = atomicrmw volatile add ptr %i.cd, i32 1 acq_rel, align 4, !noalias !153 ; 0 uses
  %.pr.pre.i.i = load ptr, ptr %i.bp, align 8, !tbaa !26, !noalias !147 ; 4 uses
  %.pre78.i.i = load ptr, ptr %7, align 16, !tbaa !67, !noalias !147 ; 3 uses
  %.not.i.i.i.i.i3.i = icmp eq ptr %.pr.pre.i.i, null
  br i1 %.not.i.i.i.i.i3.i, label %_ZN5arrow10WeakFutureISt10shared_ptrIKNS_16KeyValueMetadataEEEC2ERKNS_6FutureIS4_EE.exit.i.i, label %bb.y

bb.y:                                             ; preds = %"_ZSt4bindIN5arrow6detail14ContinueFutureEJRNS0_6FutureISt10shared_ptrIKNS0_16KeyValueMetadataEEEEZNS0_2io11InputStream17ReadMetadataAsyncERKNSA_9IOContextEE3$_0EENSt12_Bind_helperIXsr15__is_socketlikeIT_EE5valueESH_JDpT0_EE4typeEOSH_DpOSI_.exit.i.i"
  %.pre.i = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33, !noalias !147
  %i.cj = icmp eq i8 %.pre.i, 0
  %i.ck = getelementptr inbounds nuw i8, ptr %.pr.pre.i.i, i64 12 ; 2 uses
  br i1 %i.cj, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y, %.thread.i9
  %i.cl = phi ptr [ %i.ch, %.thread.i9 ], [ %i.ck, %bb.y ] ; 2 uses
  %i.cm = phi ptr [ %i.cb, %.thread.i9 ], [ %.pre78.i.i, %bb.y ]
  %.pr91.i22.i = phi ptr [ %i.ca, %.thread.i9 ], [ %.pr.pre.i.i, %bb.y ]
  %i.cn = load i32, ptr %i.cl, align 4, !tbaa !3, !noalias !147
  %i.co = add nsw i32 %i.cn, 1
  store i32 %i.co, ptr %i.cl, align 4, !tbaa !3, !noalias !147
  br label %_ZN5arrow10WeakFutureISt10shared_ptrIKNS_16KeyValueMetadataEEEC2ERKNS_6FutureIS4_EE.exit.i.i

bb.aa:                                            ; preds = %bb.y
  %i.cp = atomicrmw volatile add ptr %i.ck, i32 1 acq_rel, align 4, !noalias !147 ; 0 uses
  br label %_ZN5arrow10WeakFutureISt10shared_ptrIKNS_16KeyValueMetadataEEEC2ERKNS_6FutureIS4_EE.exit.i.i

_ZN5arrow10WeakFutureISt10shared_ptrIKNS_16KeyValueMetadataEEEC2ERKNS_6FutureIS4_EE.exit.i.i: ; preds = %bb.aa, %bb.z, %"_ZSt4bindIN5arrow6detail14ContinueFutureEJRNS0_6FutureISt10shared_ptrIKNS0_16KeyValueMetadataEEEEZNS0_2io11InputStream17ReadMetadataAsyncERKNSA_9IOContextEE3$_0EENSt12_Bind_helperIXsr15__is_socketlikeIT_EE5valueESH_JDpT0_EE4typeEOSH_DpOSI_.exit.i.i", %_ZN5arrow6FutureISt10shared_ptrIKNS_16KeyValueMetadataEEE4MakeEv.exit.i.i
  %i.cq = phi ptr [ %.pre78.i.i, %bb.aa ], [ %.pre78.i.i, %"_ZSt4bindIN5arrow6detail14ContinueFutureEJRNS0_6FutureISt10shared_ptrIKNS0_16KeyValueMetadataEEEEZNS0_2io11InputStream17ReadMetadataAsyncERKNSA_9IOContextEE3$_0EENSt12_Bind_helperIXsr15__is_socketlikeIT_EE5valueESH_JDpT0_EE4typeEOSH_DpOSI_.exit.i.i" ], [ %i.cm, %bb.z ], [ %i.cb, %_ZN5arrow6FutureISt10shared_ptrIKNS_16KeyValueMetadataEEE4MakeEv.exit.i.i ]
  %i.cr = phi ptr [ %.pr.pre.i.i, %bb.aa ], [ null, %"_ZSt4bindIN5arrow6detail14ContinueFutureEJRNS0_6FutureISt10shared_ptrIKNS0_16KeyValueMetadataEEEEZNS0_2io11InputStream17ReadMetadataAsyncERKNSA_9IOContextEE3$_0EENSt12_Bind_helperIXsr15__is_socketlikeIT_EE5valueESH_JDpT0_EE4typeEOSH_DpOSI_.exit.i.i" ], [ %.pr91.i22.i, %bb.z ], [ null, %_ZN5arrow6FutureISt10shared_ptrIKNS_16KeyValueMetadataEEE4MakeEv.exit.i.i ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32, !noalias !147
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32, !noalias !147
  %i.cs = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  store ptr %i.as, ptr %i.cs, align 8, !tbaa !134, !noalias !147
  %i.ct = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  store ptr %i.au, ptr %i.ct, align 8, !tbaa !26, !noalias !147
  %i.cu = getelementptr inbounds nuw i8, ptr %12, i64 24
  store ptr %i.cb, ptr %i.cu, align 8, !tbaa !67, !noalias !147
  %i.cv = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 2 uses
  store ptr %i.ca, ptr %i.cv, align 8, !tbaa !26, !noalias !147
  store <4 x ptr> splat (ptr null), ptr %i.cc, align 8, !tbaa !14, !noalias !147
  %i.cw = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #35
          to label %bb.ab unwind label %_ZN5arrow8internal6FnOnceIFvvEED2Ev.exit35.i.i, !noalias !147 ; 6 uses

bb.ab:                                            ; preds = %_ZN5arrow10WeakFutureISt10shared_ptrIKNS_16KeyValueMetadataEEEC2ERKNS_6FutureIS4_EE.exit.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cs, i8 0, i64 32, i1 false), !noalias !147
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN5arrow8internal6FnOnceIFvvEE6FnImplISt5_BindIFNS_6detail14ContinueFutureENS_6FutureISt10shared_ptrIKNS_16KeyValueMetadataEEEEZNS_2io11InputStream17ReadMetadataAsyncERKNSE_9IOContextEE3$_0EEEE", i64 16), ptr %i.cw, align 8, !tbaa !30, !noalias !147
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  store ptr %i.as, ptr %i.cx, align 8, !tbaa !134, !noalias !147
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  store ptr %i.au, ptr %i.cy, align 8, !tbaa !26, !noalias !147
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 32
  store ptr %i.cb, ptr %i.cz, align 8, !tbaa !67, !noalias !147
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 40
  store ptr %i.ca, ptr %i.da, align 8, !tbaa !26, !noalias !147
  store ptr %i.cw, ptr %11, align 8, !tbaa !74, !noalias !147
  %i.db = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.dc = load <2 x ptr>, ptr %16, align 16, !tbaa !14, !noalias !147
  store ptr null, ptr %i.be, align 8, !tbaa !26, !noalias !147
  store <2 x ptr> %i.dc, ptr %13, align 16, !tbaa !14, !noalias !147
  store ptr null, ptr %16, align 16, !tbaa !76, !noalias !147
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #32, !noalias !147
  %i.dd = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #35
          to label %bb.ac unwind label %_ZN5arrow8internal6FnOnceIFvRKNS_6StatusEEED2Ev.exit27.i.i, !noalias !147 ; 4 uses

bb.ac:                                            ; preds = %bb.ab
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN5arrow8internal6FnOnceIFvRKNS_6StatusEEE6FnImplIZNS0_8Executor6SubmitIZNS_2io11InputStream17ReadMetadataAsyncERKNSA_9IOContextEE3$_0JENS_6FutureISt10shared_ptrIKNS_16KeyValueMetadataEEEEEENS_6ResultIT1_EENS0_9TaskHintsENS_9StopTokenEOT_DpOT0_E3$_0EE", i64 16), ptr %i.dd, align 8, !tbaa !30, !noalias !147
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store ptr %i.cq, ptr %i.de, align 8, !tbaa !77, !noalias !147
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  store ptr %i.cr, ptr %i.df, align 8, !tbaa !39, !noalias !147
  store ptr %i.dd, ptr %14, align 8, !tbaa !79, !noalias !147
  %i.dg = load ptr, ptr %i.bd, align 8, !tbaa !30, !noalias !147
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 48
  %i.di = load ptr, ptr %i.dh, align 8, !noalias !147
  invoke void %i.di(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %i.bd, ptr noundef nonnull byval(%"struct.arrow::internal::TaskHints") align 8 %15, ptr noundef nonnull %11, ptr noundef nonnull %13, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %_ZN5arrow6StatusD2Ev.exit.i.i unwind label %bb.ay, !noalias !147

_ZN5arrow6StatusD2Ev.exit.i.i:                    ; preds = %bb.ac
  %i.dj = load ptr, ptr %10, align 8, !tbaa !81, !noalias !147
  store ptr %i.dj, ptr %9, align 8, !tbaa !81, !noalias !147
  store ptr null, ptr %10, align 8, !tbaa !81, !noalias !147
  %i.dk = load ptr, ptr %14, align 8, !tbaa !79, !noalias !147 ; 3 uses
  %.not.i.i16.i.i = icmp eq ptr %i.dk, null
  br i1 %.not.i.i16.i.i, label %"_ZZN5arrow8internal8Executor6SubmitIZNS_2io11InputStream17ReadMetadataAsyncERKNS3_9IOContextEE3$_0JENS_6FutureISt10shared_ptrIKNS_16KeyValueMetadataEEEEEENS_6ResultIT1_EENS0_9TaskHintsENS_9StopTokenEOT_DpOT0_EN3$_0D2Ev.exit.i.i", label %_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_6StatusEEE4ImplEEclEPS8_.exit.i.i.i.i

_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_6StatusEEE4ImplEEclEPS8_.exit.i.i.i.i: ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !30, !noalias !147
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8, !noalias !147
  call void %i.dn(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.dk) #32, !noalias !147, !inline_history !156
  br label %"_ZZN5arrow8internal8Executor6SubmitIZNS_2io11InputStream17ReadMetadataAsyncERKNS3_9IOContextEE3$_0JENS_6FutureISt10shared_ptrIKNS_16KeyValueMetadataEEEEEENS_6ResultIT1_EENS0_9TaskHintsENS_9StopTokenEOT_DpOT0_EN3$_0D2Ev.exit.i.i"

"_ZZN5arrow8internal8Executor6SubmitIZNS_2io11InputStream17ReadMetadataAsyncERKNS3_9IOContextEE3$_0JENS_6FutureISt10shared_ptrIKNS_16KeyValueMetadataEEEEEENS_6ResultIT1_EENS0_9TaskHintsENS_9StopTokenEOT_DpOT0_EN3$_0D2Ev.exit.i.i": ; preds = %_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_6StatusEEE4ImplEEclEPS8_.exit.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32, !noalias !147
  %i.do = load ptr, ptr %i.db, align 8, !tbaa !26, !noalias !147 ; 8 uses
  %.not.i.i.i.i.i10 = icmp eq ptr %i.do, null
  br i1 %.not.i.i.i.i.i10, label %_ZN5arrow9StopTokenD2Ev.exit.i.i, label %bb.ad

bb.ad:                                            ; preds = %"_ZZN5arrow8internal8Executor6SubmitIZNS_2io11InputStream17ReadMetadataAsyncERKNS3_9IOContextEE3$_0JENS_6FutureISt10shared_ptrIKNS_16KeyValueMetadataEEEEEENS_6ResultIT1_EENS0_9TaskHintsENS_9StopTokenEOT_DpOT0_EN3$_0D2Ev.exit.i.i"
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8 ; 4 uses
  %i.dq = load atomic i64, ptr %i.dp acquire, align 8, !noalias !147 ; 2 uses
  %i.dr = icmp eq i64 %i.dq, 4294967297
  %i.ds = trunc i64 %i.dq to i32                  ; 2 uses
  br i1 %i.dr, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i32 0, ptr %i.dp, align 8, !tbaa !27, !noalias !147
  %i.dt = getelementptr inbounds nuw i8, ptr %i.do, i64 12
  store i32 0, ptr %i.dt, align 4, !tbaa !29, !noalias !147
  %i.du = load ptr, ptr %i.do, align 8, !tbaa !30, !noalias !147
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %i.dw = load ptr, ptr %i.dv, align 8, !noalias !147
  call void %i.dw(ptr noundef nonnull align 8 dereferenceable(16) %i.do) #32, !noalias !147, !inline_history !157
  %i.dx = load ptr, ptr %i.do, align 8, !tbaa !30, !noalias !147
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  %i.dz = load ptr, ptr %i.dy, align 8, !noalias !147
  call void %i.dz(ptr noundef nonnull align 8 dereferenceable(16) %i.do) #32, !noalias !147, !inline_history !157
  br label %_ZN5arrow9StopTokenD2Ev.exit.i.i

bb.af:                                            ; preds = %bb.ad
  %i.ea = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33, !noalias !147
  %.not.i.i.i.i19.i.i = icmp eq i8 %i.ea, 0
  br i1 %.not.i.i.i.i19.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.eb = add nsw i32 %i.ds, -1
  store i32 %i.eb, ptr %i.dp, align 8, !tbaa !3, !noalias !147
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.ah:                                            ; preds = %bb.af
  %i.ec = atomicrmw volatile add ptr %i.dp, i32 -1 acq_rel, align 4, !noalias !147
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.ah, %bb.ag
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ds, %bb.ag ], [ %i.ec, %bb.ah ]
  %i.ed = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ed, label %bb.ai, label %_ZN5arrow9StopTokenD2Ev.exit.i.i, !prof !34

bb.ai:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.do) #32, !noalias !147
  br label %_ZN5arrow9StopTokenD2Ev.exit.i.i

_ZN5arrow9StopTokenD2Ev.exit.i.i:                 ; preds = %bb.ai, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.ae, %"_ZZN5arrow8internal8Executor6SubmitIZNS_2io11InputStream17ReadMetadataAsyncERKNS3_9IOContextEE3$_0JENS_6FutureISt10shared_ptrIKNS_16KeyValueMetadataEEEEEENS_6ResultIT1_EENS0_9TaskHintsENS_9StopTokenEOT_DpOT0_EN3$_0D2Ev.exit.i.i"
  %i.ee = load ptr, ptr %11, align 8, !tbaa !74, !noalias !147 ; 3 uses
  %.not.i.i20.i.i = icmp eq ptr %i.ee, null
  br i1 %.not.i.i20.i.i, label %_ZN5arrow8internal6FnOnceIFvvEED2Ev.exit.i.i, label %_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvvEE4ImplEEclEPS5_.exit.i.i.i.i

_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvvEE4ImplEEclEPS5_.exit.i.i.i.i: ; preds = %_ZN5arrow9StopTokenD2Ev.exit.i.i
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !30, !noalias !147
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8, !noalias !147
  call void %i.eh(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ee) #32, !noalias !147, !inline_history !158
  br label %_ZN5arrow8internal6FnOnceIFvvEED2Ev.exit.i.i

_ZN5arrow8internal6FnOnceIFvvEED2Ev.exit.i.i:     ; preds = %_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvvEE4ImplEEclEPS5_.exit.i.i.i.i, %_ZN5arrow9StopTokenD2Ev.exit.i.i
  %i.ei = load ptr, ptr %i.cv, align 8, !tbaa !26, !noalias !147 ; 8 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ei, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt10_Head_baseILm0EN5arrow6FutureISt10shared_ptrIKNS0_16KeyValueMetadataEEEELb0EED2Ev.exit.i.i.i.i, label %bb.aj

bb.aj:                                            ; preds = %_ZN5arrow8internal6FnOnceIFvvEED2Ev.exit.i.i
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8 ; 4 uses
  %i.ek = load atomic i64, ptr %i.ej acquire, align 8, !noalias !147 ; 2 uses
  %i.el = icmp eq i64 %i.ek, 4294967297
  %i.em = trunc i64 %i.ek to i32                  ; 2 uses
  br i1 %i.el, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store i32 0, ptr %i.ej, align 8, !tbaa !27, !noalias !147
  %i.en = getelementptr inbounds nuw i8, ptr %i.ei, i64 12
  store i32 0, ptr %i.en, align 4, !tbaa !29, !noalias !147
  %i.eo = load ptr, ptr %i.ei, align 8, !tbaa !30, !noalias !147
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %i.eq = load ptr, ptr %i.ep, align 8, !noalias !147
  call void %i.eq(ptr noundef nonnull align 8 dereferenceable(16) %i.ei) #32, !noalias !147, !inline_history !159
  %i.er = load ptr, ptr %i.ei, align 8, !tbaa !30, !noalias !147
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 24
  %i.et = load ptr, ptr %i.es, align 8, !noalias !147
  call void %i.et(ptr noundef nonnull align 8 dereferenceable(16) %i.ei) #32, !noalias !147, !inline_history !159
  br label %_ZNSt10_Head_baseILm0EN5arrow6FutureISt10shared_ptrIKNS0_16KeyValueMetadataEEEELb0EED2Ev.exit.i.i.i.i

bb.al:                                            ; preds = %bb.aj
  %i.eu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33, !noalias !147
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.eu, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ev = add nsw i32 %i.em, -1
  store i32 %i.ev, ptr %i.ej, align 8, !tbaa !3, !noalias !147
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.an:                                            ; preds = %bb.al
  %i.ew = atomicrmw volatile add ptr %i.ej, i32 -1 acq_rel, align 4, !noalias !147
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.an, %bb.am
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.em, %bb.am ], [ %i.ew, %bb.an ]
  %i.ex = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.ex, label %bb.ao, label %_ZNSt10_Head_baseILm0EN5arrow6FutureISt10shared_ptrIKNS0_16KeyValueMetadataEEEELb0EED2Ev.exit.i.i.i.i, !prof !34

bb.ao:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ei) #32, !noalias !147
  br label %_ZNSt10_Head_baseILm0EN5arrow6FutureISt10shared_ptrIKNS0_16KeyValueMetadataEEEELb0EED2Ev.exit.i.i.i.i

_ZNSt10_Head_baseILm0EN5arrow6FutureISt10shared_ptrIKNS0_16KeyValueMetadataEEEELb0EED2Ev.exit.i.i.i.i: ; preds = %bb.ao, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.ak, %_ZN5arrow8internal6FnOnceIFvvEED2Ev.exit.i.i
  %.val.i.i.i.i = load ptr, ptr %i.ct, align 8, !tbaa !26, !noalias !147 ; 8 uses
  %.not.i.i.i.i1.i.i.i.i = icmp eq ptr %.val.i.i.i.i, null
  br i1 %.not.i.i.i.i1.i.i.i.i, label %"_ZNSt5_BindIFN5arrow6detail14ContinueFutureENS0_6FutureISt10shared_ptrIKNS0_16KeyValueMetadataEEEEZNS0_2io11InputStream17ReadMetadataAsyncERKNS9_9IOContextEE3$_0EED2Ev.exit.i.i", label %bb.ap

bb.ap:                                            ; preds = %_ZNSt10_Head_baseILm0EN5arrow6FutureISt10shared_ptrIKNS0_16KeyValueMetadataEEEELb0EED2Ev.exit.i.i.i.i
  %i.ey = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 8 ; 4 uses
  %i.ez = load atomic i64, ptr %i.ey acquire, align 8, !noalias !147 ; 2 uses
  %i.fa = icmp eq i64 %i.ez, 4294967297
  %i.fb = trunc i64 %i.ez to i32                  ; 2 uses
  br i1 %i.fa, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  store i32 0, ptr %i.ey, align 8, !tbaa !27, !noalias !147
  %i.fc = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 12
  store i32 0, ptr %i.fc, align 4, !tbaa !29, !noalias !147
  %i.fd = load ptr, ptr %.val.i.i.i.i, align 8, !tbaa !30, !noalias !147
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  %i.ff = load ptr, ptr %i.fe, align 8, !noalias !147
  call void %i.ff(ptr noundef nonnull align 8 dereferenceable(16) %.val.i.i.i.i) #32, !noalias !147, !inline_history !160
  %i.fg = load ptr, ptr %.val.i.i.i.i, align 8, !tbaa !30, !noalias !147
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 24
  %i.fi = load ptr, ptr %i.fh, align 8, !noalias !147
  call void %i.fi(ptr noundef nonnull align 8 dereferenceable(16) %.val.i.i.i.i) #32, !noalias !147, !inline_history !160
  br label %"_ZNSt5_BindIFN5arrow6detail14ContinueFutureENS0_6FutureISt10shared_ptrIKNS0_16KeyValueMetadataEEEEZNS0_2io11InputStream17ReadMetadataAsyncERKNS9_9IOContextEE3$_0EED2Ev.exit.i.i"

bb.ar:                                            ; preds = %bb.ap
  %i.fj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33, !noalias !147
  %.not.i.i.i.i.i2.i.i.i.i = icmp eq i8 %i.fj, 0
  br i1 %.not.i.i.i.i.i2.i.i.i.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fk = add nsw i32 %i.fb, -1
  store i32 %i.fk, ptr %i.ey, align 8, !tbaa !3, !noalias !147
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i.i.i

bb.at:                                            ; preds = %bb.ar
  %i.fl = atomicrmw volatile add ptr %i.ey, i32 -1 acq_rel, align 4, !noalias !147
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i.i.i: ; preds = %bb.at, %bb.as
  %.0.i.i.i.i.i.i4.i.i.i.i = phi i32 [ %i.fb, %bb.as ], [ %i.fl, %bb.at ]
  %i.fm = icmp eq i32 %.0.i.i.i.i.i.i4.i.i.i.i, 1
  br i1 %i.fm, label %bb.au, label %"_ZNSt5_BindIFN5arrow6detail14ContinueFutureENS0_6FutureISt10shared_ptrIKNS0_16KeyValueMetadataEEEEZNS0_2io11InputStream17ReadMetadataAsyncERKNS9_9IOContextEE3$_0EED2Ev.exit.i.i", !prof !34

bb.au:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.val.i.i.i.i) #32, !noalias !147
  br label %"_ZNSt5_BindIFN5arrow6detail14ContinueFutureENS0_6FutureISt10shared_ptrIKNS0_16KeyValueMetadataEEEEZNS0_2io11InputStream17ReadMetadataAsyncERKNS9_9IOContextEE3$_0EED2Ev.exit.i.i"

"_ZNSt5_BindIFN5arrow6detail14ContinueFutureENS0_6FutureISt10shared_ptrIKNS0_16KeyValueMetadataEEEEZNS0_2io11InputStream17ReadMetadataAsyncERKNS9_9IOContextEE3$_0EED2Ev.exit.i.i": ; preds = %bb.au, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i.i.i, %bb.aq, %_ZNSt10_Head_baseILm0EN5arrow6FutureISt10shared_ptrIKNS0_16KeyValueMetadataEEEELb0EED2Ev.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32, !noalias !147
  %i.fn = load ptr, ptr %9, align 8, !tbaa !81, !noalias !147
  %i.fo = icmp eq ptr %i.fn, null
  br i1 %i.fo, label %"_ZNSt5_BindIFN5arrow6detail14ContinueFutureENS0_6FutureISt10shared_ptrIKNS0_16KeyValueMetadataEEEEZNS0_2io11InputStream17ReadMetadataAsyncERKNS9_9IOContextEE3$_0EED2Ev.exit58.thread.i.i", label %bb.av, !prof !89

bb.av:                                            ; preds = %"_ZNSt5_BindIFN5arrow6detail14ContinueFutureENS0_6FutureISt10shared_ptrIKNS0_16KeyValueMetadataEEEEZNS0_2io11InputStream17ReadMetadataAsyncERKNS9_9IOContextEE3$_0EED2Ev.exit.i.i"
  call void @_ZN5arrow6ResultINS_6FutureISt10shared_ptrIKNS_16KeyValueMetadataEEEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(8) %9) #32
  %i.fp = load ptr, ptr %9, align 8, !tbaa !81, !noalias !147 ; 2 uses
  %.not.i21.i.i = icmp eq ptr %i.fp, null
  br i1 %.not.i21.i.i, label %"_ZNSt5_BindIFN5arrow6detail14ContinueFutureENS0_6FutureISt10shared_ptrIKNS0_16KeyValueMetadataEEEEZNS0_2io11InputStream17ReadMetadataAsyncERKNS9_9IOContextEE3$_0EED2Ev.exit58.i.i", label %bb.aw, !prof !89

bb.aw:                                            ; preds = %bb.av
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 1
end_hunk_1
begin_hunk_2_@_ZN5arrow2io23MakeInputStreamIteratorESt10shared_ptrINS0_11InputStreamEEl:bb.a

_ZNSt10shared_ptrIN5arrow2io11InputStreamEEC2ERKS3_.exit: ; preds = %bb.e, %bb.g, %bb.h
  %i.w = phi ptr [ null, %bb.e ], [ %i.q, %bb.g ], [ %.pre8, %bb.h ] ; 2 uses
  %i.x = phi ptr [ %i.n, %bb.e ], [ %i.n, %bb.g ], [ %.pre, %bb.h ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.y = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #35
          to label %_ZN5arrow2io12_GLOBAL__N_124InputStreamBlockIteratorD2Ev.exit unwind label %bb.i ; 5 uses

_ZN5arrow2io12_GLOBAL__N_124InputStreamBlockIteratorD2Ev.exit: ; preds = %_ZNSt10shared_ptrIN5arrow2io11InputStreamEEC2ERKS3_.exit
  store ptr %i.x, ptr %i.y, align 8, !tbaa !134
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.w, ptr %i.z, align 8, !tbaa !26
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store i64 %2, ptr %i.aa, align 8
  %.sroa.11.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store i8 0, ptr %.sroa.11.16..sroa_idx, align 8
  store ptr null, ptr %0, align 8, !tbaa !81
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 ptrtoint (ptr @_ZN5arrow8IteratorISt10shared_ptrINS_6BufferEEE6DeleteINS_2io12_GLOBAL__N_124InputStreamBlockIteratorEEEvPv to i64), ptr %i.ab, align 8, !tbaa !14
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = ptrtoint ptr %i.y to i64
  store i64 %i.ad, ptr %i.ac, align 8, !tbaa !14
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @_ZN5arrow8IteratorISt10shared_ptrINS_6BufferEEE4NextINS_2io12_GLOBAL__N_124InputStreamBlockIteratorEEENS_6ResultIS3_EEPv, ptr %i.ae, align 8, !tbaa !180
  br label %_ZNSt12__shared_ptrIN5arrow2io11InputStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.i:                                             ; preds = %_ZNSt10shared_ptrIN5arrow2io11InputStreamEEC2ERKS3_.exit
  %i.af = landingpad { ptr, i32 }
          cleanup
  tail call fastcc void @_ZN5arrow2io12_GLOBAL__N_124InputStreamBlockIteratorD2Ev(ptr %i.w) #32
  call void @_ZNSt12__shared_ptrIN5arrow2io11InputStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #32
  resume { ptr, i32 } %i.af

_ZNSt12__shared_ptrIN5arrow2io11InputStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5arrow2io12_GLOBAL__N_124InputStreamBlockIteratorD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultINS_8IteratorISt10shared_ptrINS_6BufferEEEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator.92", align 1 ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  store ptr null, ptr %0, align 8, !tbaa !81
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.h

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !81
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.g, !prof !34

bb.b:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.23, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  invoke void @_ZNK5arrow6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5arrow8internal14DieWithMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.c = load ptr, ptr %2, align 8, !tbaa !127    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.f = load i64, ptr %i.d, align 8, !tbaa !33
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.h = load ptr, ptr %5, align 8, !tbaa !127    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !33
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  %i.m = load ptr, ptr %3, align 8, !tbaa !127    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.p = load i64, ptr %i.n, align 8, !tbaa !33
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZN5arrow6StatusC2ERKS0_.exit
  ret void

bb.h:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #33
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZN5arrow2io12_GLOBAL__N_124InputStreamBlockIteratorD2Ev(ptr %.8.val) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i.i = icmp eq ptr %.8.val, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow2io11InputStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.8.val, i64 8 ; 4 uses
  %i.b = load atomic i64, ptr %i.a acquire, align 8 ; 2 uses
  %i.c = icmp eq i64 %i.b, 4294967297
  %i.d = trunc i64 %i.b to i32                    ; 2 uses
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.a, align 8, !tbaa !27
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 12
  store i32 0, ptr %i.e, align 4, !tbaa !29
  %i.f = load ptr, ptr %.8.val, align 8, !tbaa !30
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(16) %.8.val) #32, !inline_history !178
  %i.i = load ptr, ptr %.8.val, align 8, !tbaa !30
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %.8.val) #32, !inline_history !178
  br label %_ZNSt12__shared_ptrIN5arrow2io11InputStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.l = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i = icmp eq i8 %i.l, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = add nsw i32 %i.d, -1
  store i32 %i.m, ptr %i.a, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.n = atomicrmw volatile add ptr %i.a, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.d, %bb.e ], [ %i.n, %bb.f ]
  %i.o = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.o, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow2io11InputStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !34

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.8.val) #32
  br label %_ZNSt12__shared_ptrIN5arrow2io11InputStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow2io11InputStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5arrow2io16RandomAccessFileD2Ev(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !30
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr i8, ptr %i.a, i64 -56
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %0, i64 %i.e
  store ptr %i.c, ptr %i.f, align 8, !tbaa !30
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = load ptr, ptr %0, align 8, !tbaa !30
  %i.j = getelementptr i8, ptr %i.i, i64 -64
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds i8, ptr %0, i64 %i.k
  store ptr %i.h, ptr %i.l, align 8, !tbaa !30
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5arrow2io16RandomAccessFileE, i64 200), ptr %i.m, align 8, !tbaa !30
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !190  ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5arrow2io16RandomAccessFile4ImplESt14default_deleteIS3_EED2Ev.exit, label %_ZNKSt14default_deleteIN5arrow2io16RandomAccessFile4ImplEEclEPS3_.exit.i

_ZNKSt14default_deleteIN5arrow2io16RandomAccessFile4ImplEEclEPS3_.exit.i: ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef 40) #36
  br label %_ZNSt10unique_ptrIN5arrow2io16RandomAccessFile4ImplESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow2io16RandomAccessFile4ImplESt14default_deleteIS3_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN5arrow2io16RandomAccessFile4ImplEEclEPS3_.exit.i
  ret void
}

; Function Attrs: cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define void @_ZN5arrow2io16RandomAccessFileD1Ev(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @llvm.trap() #33
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write) uwtable
define void @_ZTv0_n24_N5arrow2io16RandomAccessFileD1Ev(ptr nofree readonly captures(none) %0) unnamed_addr #10 align 2 {
bb.a:
  tail call void @llvm.trap() #33
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write) uwtable
define void @_ZThn8_N5arrow2io16RandomAccessFileD1Ev(ptr nofree readnone captures(none) %0) unnamed_addr #10 align 2 {
bb.a:
  tail call void @llvm.trap() #33
  unreachable
}

; Function Attrs: cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define void @_ZN5arrow2io16RandomAccessFileD0Ev(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @llvm.trap() #33
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write) uwtable
define void @_ZTv0_n24_N5arrow2io16RandomAccessFileD0Ev(ptr nofree readonly captures(none) %0) unnamed_addr #10 align 2 {
bb.a:
  tail call void @llvm.trap() #33
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write) uwtable
define void @_ZThn8_N5arrow2io16RandomAccessFileD0Ev(ptr nofree readnone captures(none) %0) unnamed_addr #10 align 2 {
bb.a:
  tail call void @llvm.trap() #33
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow2io16RandomAccessFileC2Ev(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !30
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %i.b, i64 -56
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %0, i64 %i.f
  store ptr %i.d, ptr %i.g, align 8, !tbaa !30
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = load ptr, ptr %0, align 8, !tbaa !30
  %i.k = getelementptr i8, ptr %i.j, i64 -64
  %i.l = load i64, ptr %i.k, align 8
  %i.m = getelementptr inbounds i8, ptr %0, i64 %i.l
  store ptr %i.i, ptr %i.m, align 8, !tbaa !30
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5arrow2io8SeekableE, i64 16), ptr %i.n, align 8, !tbaa !30
  %i.o = load ptr, ptr %1, align 8                ; 2 uses
  store ptr %i.o, ptr %0, align 8, !tbaa !30
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr i8, ptr %i.o, i64 -56
  %i.s = load i64, ptr %i.r, align 8
  %i.t = getelementptr inbounds i8, ptr %0, i64 %i.s
  store ptr %i.q, ptr %i.t, align 8, !tbaa !30
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = load ptr, ptr %0, align 8, !tbaa !30
  %i.x = getelementptr i8, ptr %i.w, i64 -64
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds i8, ptr %0, i64 %i.y
  store ptr %i.v, ptr %i.z, align 8, !tbaa !30
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5arrow2io16RandomAccessFileE, i64 200), ptr %i.n, align 8, !tbaa !30
  %i.aa = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #35 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.aa, i8 0, i64 40, i1 false)
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !190
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow2io16RandomAccessFile6ReadAtEllPv(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.51") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2, i64 noundef %3, ptr noundef %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !190  ; 3 uses
  %i.c = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #32 ; 2 uses
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.c) #34
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !30
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  invoke void %i.g(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef %2)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.f

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.h = load ptr, ptr %6, align 8, !tbaa !81     ; 2 uses
  store ptr %i.h, ptr %5, align 8, !tbaa !81
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZN5arrow6StatusD2Ev.exit17, label %bb.c, !prof !89

bb.c:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @_ZN5arrow6ResultIlEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %5) #32
  %i.j = load ptr, ptr %5, align 8, !tbaa !81     ; 2 uses
  %.not.i12 = icmp eq ptr %i.j, null
  br i1 %.not.i12, label %_ZN5arrow6StatusD2Ev.exit13, label %bb.d, !prof !89

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !90, !range !100, !noundef !101
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %_ZN5arrow6StatusD2Ev.exit13, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #32
  br label %_ZN5arrow6StatusD2Ev.exit13

_ZN5arrow6StatusD2Ev.exit13:                      ; preds = %bb.c, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  br label %bb.h

bb.f:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  br label %bb.i

_ZN5arrow6StatusD2Ev.exit17:                      ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  %i.o = load ptr, ptr %1, align 8, !tbaa !30
  %i.p = getelementptr i8, ptr %i.o, i64 -64
  %i.q = load i64, ptr %i.p, align 8
  %i.r = getelementptr inbounds i8, ptr %1, i64 %i.q ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !30
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  invoke void %i.u(ptr dead_on_unwind writable sret(%"class.arrow::Result.51") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %i.r, i64 noundef %3, ptr noundef %4)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit17
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.h:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit13, %_ZN5arrow6StatusD2Ev.exit17
  %i.w = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #32 ; 0 uses
  ret void

bb.i:                                             ; preds = %bb.g, %bb.f
  %.pn10 = phi { ptr, i32 } [ %i.v, %bb.g ], [ %i.n, %bb.f ]
  %i.x = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #32 ; 0 uses
  resume { ptr, i32 } %.pn10
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultIlEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator.92", align 1 ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  store ptr null, ptr %0, align 8, !tbaa !81
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.h

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !81
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.g, !prof !34

bb.b:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.23, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  invoke void @_ZNK5arrow6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5arrow8internal14DieWithMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.c = load ptr, ptr %2, align 8, !tbaa !127    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.f = load i64, ptr %i.d, align 8, !tbaa !33
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.h = load ptr, ptr %5, align 8, !tbaa !127    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !33
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  %i.m = load ptr, ptr %3, align 8, !tbaa !127    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.p = load i64, ptr %i.n, align 8, !tbaa !33
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZN5arrow6StatusC2ERKS0_.exit
  ret void

bb.h:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #33
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow2io16RandomAccessFile6ReadAtEll(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.11") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !190  ; 3 uses
  %i.c = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #32 ; 2 uses
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

end_hunk_2
begin_hunk_3_@_ZN5arrow2io16RandomAccessFile6ReadAtEll:bb.a
  %i.h = load ptr, ptr %5, align 8, !tbaa !81     ; 2 uses
  store ptr %i.h, ptr %4, align 8, !tbaa !81
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZN5arrow6StatusD2Ev.exit16, label %bb.c, !prof !89

bb.c:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %4) #32
  %i.j = load ptr, ptr %4, align 8, !tbaa !81     ; 2 uses
  %.not.i11 = icmp eq ptr %i.j, null
  br i1 %.not.i11, label %_ZN5arrow6StatusD2Ev.exit12, label %bb.d, !prof !89

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !90, !range !100, !noundef !101
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %_ZN5arrow6StatusD2Ev.exit12, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #32
  br label %_ZN5arrow6StatusD2Ev.exit12

_ZN5arrow6StatusD2Ev.exit12:                      ; preds = %bb.c, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %bb.h

bb.f:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %bb.i

_ZN5arrow6StatusD2Ev.exit16:                      ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  %i.o = load ptr, ptr %1, align 8, !tbaa !30
  %i.p = getelementptr i8, ptr %i.o, i64 -64
  %i.q = load i64, ptr %i.p, align 8
  %i.r = getelementptr inbounds i8, ptr %1, i64 %i.q ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !30
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  invoke void %i.u(ptr dead_on_unwind writable sret(%"class.arrow::Result.11") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %i.r, i64 noundef %3)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit16
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.h:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit12, %_ZN5arrow6StatusD2Ev.exit16
  %i.w = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #32 ; 0 uses
  ret void

bb.i:                                             ; preds = %bb.g, %bb.f
  %.pn9 = phi { ptr, i32 } [ %i.v, %bb.g ], [ %i.n, %bb.f ]
  %i.x = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #32 ; 0 uses
  resume { ptr, i32 } %.pn9
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator.92", align 1 ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  store ptr null, ptr %0, align 8, !tbaa !81
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.h

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !81
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.g, !prof !34

bb.b:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.23, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  invoke void @_ZNK5arrow6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5arrow8internal14DieWithMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.c = load ptr, ptr %2, align 8, !tbaa !127    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.f = load i64, ptr %i.d, align 8, !tbaa !33
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.h = load ptr, ptr %5, align 8, !tbaa !127    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !33
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  %i.m = load ptr, ptr %3, align 8, !tbaa !127    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.p = load i64, ptr %i.n, align 8, !tbaa !33
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZN5arrow6StatusC2ERKS0_.exit
  ret void

bb.h:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #33
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow2io16RandomAccessFile9ReadAsyncERKNS0_9IOContextEll(ptr dead_on_unwind noalias writable sret(%"class.arrow::Future.55") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %2, i64 noundef %3, i64 noundef %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.arrow::Result.11", align 8  ; 7 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 11 uses
  %7 = alloca %"class.std::__shared_ptr.4", align 8 ; 6 uses
  %8 = alloca %"class.std::unique_ptr.138", align 8 ; 7 uses
  %9 = alloca %"class.arrow::Future.55", align 16 ; 11 uses
  %10 = alloca %"class.std::_Bind.195", align 8   ; 11 uses
  %11 = alloca %"class.arrow::Status", align 8    ; 10 uses
  %12 = alloca %"class.arrow::Status", align 8    ; 7 uses
  %13 = alloca %"class.arrow::internal::FnOnce", align 8 ; 6 uses
  %14 = alloca %"class.std::_Bind.195", align 8   ; 9 uses
  %15 = alloca %"class.arrow::StopToken", align 16 ; 6 uses
  %16 = alloca %"class.arrow::internal::FnOnce.129", align 8 ; 7 uses
  %17 = alloca %"struct.arrow::internal::TaskHints", align 8 ; 6 uses
  %18 = alloca %"class.arrow::StopToken", align 16 ; 7 uses
  %19 = alloca %"class.std::shared_ptr.56", align 8 ; 9 uses
  %20 = alloca %"class.arrow::Result.59", align 8 ; 13 uses
  %21 = alloca %"struct.arrow::io::IOContext", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #32
  %i.a = load ptr, ptr %1, align 8, !tbaa !30
  %i.b = getelementptr i8, ptr %i.a, i64 -56
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr i8, ptr %1, i64 %i.c       ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 8
  %i.f = getelementptr i8, ptr %i.d, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !39, !noalias !192 ; 9 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 6 uses
  %i.j = load atomic i32, ptr %i.i monotonic, align 8, !noalias !192
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.06.i.i.i.i.i = phi i32 [ %i.j, %bb.b ], [ %i.n, %bb.d ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i = icmp eq i32 %.06.i.i.i.i.i, 0
  br i1 %.not.not.not.i.not.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = add nsw i32 %.06.i.i.i.i.i, 1
  %i.l = cmpxchg weak ptr %i.i, i32 %.06.i.i.i.i.i, i32 %i.k acq_rel monotonic, align 8, !noalias !192 ; 2 uses
  %i.m = extractvalue { i32, i1 } %i.l, 1
  %i.n = extractvalue { i32, i1 } %i.l, 0
  br i1 %i.m, label %_ZNSt23enable_shared_from_thisIN5arrow2io13FileInterfaceEE16shared_from_thisEv.exit, label %bb.c, !llvm.loop !45

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i: ; preds = %bb.c, %bb.a
  %i.o = tail call ptr @__cxa_allocate_exception(i64 8) #32, !noalias !192 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12bad_weak_ptr, i64 16), ptr %i.o, align 8, !tbaa !30, !noalias !192
  tail call void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTISt12bad_weak_ptr, ptr nonnull @_ZNSt12bad_weak_ptrD1Ev) #34, !noalias !192
  unreachable

_ZNSt23enable_shared_from_thisIN5arrow2io13FileInterfaceEE16shared_from_thisEv.exit: ; preds = %bb.d
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !47, !noalias !192 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !195)
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_ZSt20dynamic_pointer_castIN5arrow2io16RandomAccessFileENS1_13FileInterfaceEESt10shared_ptrIT_EOS4_IT0_E.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt23enable_shared_from_thisIN5arrow2io13FileInterfaceEE16shared_from_thisEv.exit
  %i.r = tail call ptr @__dynamic_cast(ptr nonnull %i.p, ptr nonnull @_ZTIN5arrow2io13FileInterfaceE, ptr nonnull @_ZTIN5arrow2io16RandomAccessFileE, i64 -1) #32, !noalias !195 ; 2 uses
  %.not.not.i = icmp eq ptr %i.r, null
  br i1 %.not.not.i, label %_ZSt20dynamic_pointer_castIN5arrow2io16RandomAccessFileENS1_13FileInterfaceEESt10shared_ptrIT_EOS4_IT0_E.exit, label %_ZSt20dynamic_pointer_castIN5arrow2io16RandomAccessFileENS1_13FileInterfaceEESt10shared_ptrIT_EOS4_IT0_E.exit.thread

_ZSt20dynamic_pointer_castIN5arrow2io16RandomAccessFileENS1_13FileInterfaceEESt10shared_ptrIT_EOS4_IT0_E.exit.thread: ; preds = %bb.e
  store ptr %i.r, ptr %19, align 8, !tbaa !198, !alias.scope !195
  %i.s = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr %i.g, ptr %i.s, align 8, !tbaa !26, !alias.scope !195
  br label %_ZNSt12__shared_ptrIN5arrow2io13FileInterfaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZSt20dynamic_pointer_castIN5arrow2io16RandomAccessFileENS1_13FileInterfaceEESt10shared_ptrIT_EOS4_IT0_E.exit: ; preds = %_ZNSt23enable_shared_from_thisIN5arrow2io13FileInterfaceEE16shared_from_thisEv.exit, %bb.e
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %19, i8 0, i64 16, i1 false), !alias.scope !195
  %i.t = load atomic i64, ptr %i.i acquire, align 8 ; 2 uses
  %i.u = icmp eq i64 %i.t, 4294967297
  %i.v = trunc i64 %i.t to i32                    ; 2 uses
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZSt20dynamic_pointer_castIN5arrow2io16RandomAccessFileENS1_13FileInterfaceEESt10shared_ptrIT_EOS4_IT0_E.exit
  store i32 0, ptr %i.i, align 8, !tbaa !27
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 0, ptr %i.w, align 4, !tbaa !29
  %i.x = load ptr, ptr %i.g, align 8, !tbaa !30
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #32, !inline_history !120
  %i.aa = load ptr, ptr %i.g, align 8, !tbaa !30
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #32, !inline_history !120
  br label %_ZNSt12__shared_ptrIN5arrow2io13FileInterfaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.g:                                             ; preds = %_ZSt20dynamic_pointer_castIN5arrow2io16RandomAccessFileENS1_13FileInterfaceEESt10shared_ptrIT_EOS4_IT0_E.exit
  %i.ad = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i = icmp eq i8 %i.ad, 0
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = add nsw i32 %i.v, -1
  store i32 %i.ae, ptr %i.i, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.af = atomicrmw volatile add ptr %i.i, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i = phi i32 [ %i.v, %bb.h ], [ %i.af, %bb.i ]
  %i.ag = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ag, label %bb.j, label %_ZNSt12__shared_ptrIN5arrow2io13FileInterfaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !34

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #32
  br label %_ZNSt12__shared_ptrIN5arrow2io13FileInterfaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow2io13FileInterfaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZSt20dynamic_pointer_castIN5arrow2io16RandomAccessFileENS1_13FileInterfaceEESt10shared_ptrIT_EOS4_IT0_E.exit.thread, %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %21, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 24, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %21, i64 24 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %21, i64 32 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !26 ; 2 uses
  %i.am = load <2 x ptr>, ptr %i.ai, align 8, !tbaa !14
  store <2 x ptr> %i.am, ptr %i.ah, align 8, !tbaa !14
  %.not.i.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow2io9IOContextC2ERKS1_.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow2io13FileInterfaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 3 uses
  %i.ao = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ao, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = load i32, ptr %i.an, align 4, !tbaa !3
  %i.aq = add nsw i32 %i.ap, 1
  store i32 %i.aq, ptr %i.an, align 4, !tbaa !3
  br label %_ZN5arrow2io9IOContextC2ERKS1_.exit

bb.m:                                             ; preds = %bb.k
  %i.ar = atomicrmw volatile add ptr %i.an, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5arrow2io9IOContextC2ERKS1_.exit

_ZN5arrow2io9IOContextC2ERKS1_.exit:              ; preds = %_ZNSt12__shared_ptrIN5arrow2io13FileInterfaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.l, %bb.m
  %i.as = load ptr, ptr %19, align 8, !tbaa !198  ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !26 ; 5 uses
  %.not.i.i.i8 = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i8, label %_ZNSt10shared_ptrIN5arrow2io16RandomAccessFileEEC2ERKS3_.exit, label %bb.n

bb.n:                                             ; preds = %_ZN5arrow2io9IOContextC2ERKS1_.exit
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 3 uses
  %i.aw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i.i = icmp eq i8 %i.aw, 0
  br i1 %.not.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ax = load i32, ptr %i.av, align 4, !tbaa !3
  %i.ay = add nsw i32 %i.ax, 1
  store i32 %i.ay, ptr %i.av, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow2io16RandomAccessFileEEC2ERKS3_.exit

bb.p:                                             ; preds = %bb.n
  %i.az = atomicrmw volatile add ptr %i.av, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow2io16RandomAccessFileEEC2ERKS3_.exit

_ZNSt10shared_ptrIN5arrow2io16RandomAccessFileEEC2ERKS3_.exit: ; preds = %_ZN5arrow2io9IOContextC2ERKS1_.exit, %bb.o, %bb.p
  tail call void @llvm.experimental.noalias.scope.decl(metadata !201)
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  %i.ba = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !25, !noalias !201
  %i.bc = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !24, !noalias !201 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !204)
  %i.be = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.bf = load ptr, ptr %i.aj, align 8, !tbaa !26, !noalias !207 ; 2 uses
  %i.bg = load <2 x ptr>, ptr %i.ah, align 8, !tbaa !14, !noalias !207
  store <2 x ptr> %i.bg, ptr %18, align 16, !tbaa !14, !alias.scope !204, !noalias !201
  %.not.i.i.i.i.i.i9 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i.i.i9, label %_ZNK5arrow2io9IOContext10stop_tokenEv.exit.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt10shared_ptrIN5arrow2io16RandomAccessFileEEC2ERKS3_.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 3 uses
  %i.bi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33, !noalias !207
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.bi, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bj = load i32, ptr %i.bh, align 4, !tbaa !3, !noalias !207
  %i.bk = add nsw i32 %i.bj, 1
  store i32 %i.bk, ptr %i.bh, align 4, !tbaa !3, !noalias !207
  br label %_ZNK5arrow2io9IOContext10stop_tokenEv.exit.i

bb.s:                                             ; preds = %bb.q
  %i.bl = atomicrmw volatile add ptr %i.bh, i32 1 acq_rel, align 4, !noalias !207 ; 0 uses
  br label %_ZNK5arrow2io9IOContext10stop_tokenEv.exit.i

_ZNK5arrow2io9IOContext10stop_tokenEv.exit.i:     ; preds = %bb.s, %bb.r, %_ZNSt10shared_ptrIN5arrow2io16RandomAccessFileEEC2ERKS3_.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !208)
  call void @llvm.lifetime.start.p0(ptr nonnull %17), !noalias !201
  call void @llvm.lifetime.start.p0(ptr nonnull %13), !noalias !201
  call void @llvm.lifetime.start.p0(ptr nonnull %14), !noalias !201
  call void @llvm.lifetime.start.p0(ptr nonnull %15), !noalias !201
  store i32 0, ptr %17, align 8, !noalias !201
  %i.bm = getelementptr inbounds nuw i8, ptr %17, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i8 -1, i64 16, i1 false), !noalias !201
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %17, i64 24
  store i64 %i.bb, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !201
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32, !noalias !211
  tail call void @llvm.experimental.noalias.scope.decl(metadata !212)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %9, i8 0, i64 16, i1 false), !alias.scope !212, !noalias !211
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32, !noalias !215
  invoke void @_ZN5arrow10FutureImpl4MakeEv(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.138") align 8 %8)
          to label %bb.t unwind label %bb.v, !noalias !215

bb.t:                                             ; preds = %_ZNK5arrow2io9IOContext10stop_tokenEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32, !noalias !215
  invoke void @_ZNSt12__shared_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.u unwind label %bb.w, !noalias !215

bb.u:                                             ; preds = %bb.t
  %i.bn = load ptr, ptr %7, align 8, !tbaa !64, !noalias !215 ; 2 uses
  store ptr null, ptr %7, align 8, !tbaa !64, !noalias !215
  store ptr %i.bn, ptr %9, align 16, !tbaa !64, !alias.scope !212, !noalias !211
  %i.bo = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  %i.bq = load ptr, ptr %i.bo, align 8, !tbaa !26, !noalias !215 ; 2 uses
  store ptr %i.bq, ptr %i.bp, align 8, !tbaa !26, !alias.scope !212, !noalias !211
  %.pre.i.i.i = load ptr, ptr %8, align 8, !tbaa !64, !noalias !215 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32, !noalias !215
  %.not.i.i.i.i10 = icmp eq ptr %.pre.i.i.i, null
  br i1 %.not.i.i.i.i10, label %_ZN5arrow6FutureISt10shared_ptrINS_6BufferEEE4MakeEv.exit.i.i, label %_ZNKSt14default_deleteIN5arrow10FutureImplEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN5arrow10FutureImplEEclEPS1_.exit.i.i.i.i: ; preds = %bb.u
  %i.br = load ptr, ptr %.pre.i.i.i, align 8, !tbaa !30, !noalias !215
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !noalias !215
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(72) %.pre.i.i.i) #32, !noalias !215, !inline_history !216
  %.pre.i.i = load ptr, ptr %9, align 16, !tbaa !67, !noalias !217
  %.pre76.i.i = load ptr, ptr %i.bp, align 8, !tbaa !26, !noalias !211
  br label %_ZN5arrow6FutureISt10shared_ptrINS_6BufferEEE4MakeEv.exit.i.i

bb.v:                                             ; preds = %_ZNK5arrow2io9IOContext10stop_tokenEv.exit.i
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN5arrow10FutureImplESt14default_deleteIS1_EED2Ev.exit6.i.i.i

bb.w:                                             ; preds = %bb.t
  %i.bv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bw = load ptr, ptr %8, align 8, !tbaa !64, !noalias !215 ; 3 uses
  %.not.i4.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i4.i.i.i, label %_ZNSt10unique_ptrIN5arrow10FutureImplESt14default_deleteIS1_EED2Ev.exit6.i.i.i, label %_ZNKSt14default_deleteIN5arrow10FutureImplEEclEPS1_.exit.i5.i.i.i

_ZNKSt14default_deleteIN5arrow10FutureImplEEclEPS1_.exit.i5.i.i.i: ; preds = %bb.w
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !30, !noalias !215
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !noalias !215
  call void %i.bz(ptr noundef nonnull align 8 dereferenceable(72) %i.bw) #32, !noalias !215, !inline_history !216
  br label %_ZNSt10unique_ptrIN5arrow10FutureImplESt14default_deleteIS1_EED2Ev.exit6.i.i.i

_ZNSt10unique_ptrIN5arrow10FutureImplESt14default_deleteIS1_EED2Ev.exit6.i.i.i: ; preds = %_ZNKSt14default_deleteIN5arrow10FutureImplEEclEPS1_.exit.i5.i.i.i, %bb.w, %bb.v
  %.pn.i.i.i = phi { ptr, i32 } [ %i.bu, %bb.v ], [ %i.bv, %bb.w ], [ %i.bv, %_ZNKSt14default_deleteIN5arrow10FutureImplEEclEPS1_.exit.i5.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32, !noalias !215
  call void @_ZN5arrow6FutureISt10shared_ptrINS_6BufferEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #32, !noalias !211
  br label %.body.i

_ZN5arrow6FutureISt10shared_ptrINS_6BufferEEE4MakeEv.exit.i.i: ; preds = %_ZNKSt14default_deleteIN5arrow10FutureImplEEclEPS1_.exit.i.i.i.i, %bb.u
  %i.ca = phi ptr [ %i.bq, %bb.u ], [ %.pre76.i.i, %_ZNKSt14default_deleteIN5arrow10FutureImplEEclEPS1_.exit.i.i.i.i ] ; 6 uses
  %i.cb = phi ptr [ %i.bn, %bb.u ], [ %.pre.i.i, %_ZNKSt14default_deleteIN5arrow10FutureImplEEclEPS1_.exit.i.i.i.i ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32, !noalias !215
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32, !noalias !211
  %i.cc = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ce = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 3 uses
  store i64 %3, ptr %i.ce, align 8, !noalias !211
  %.sroa.13.16..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i64 %4, ptr %.sroa.13.16..sroa_idx, align 8, !noalias !211
  %i.cf = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.cg = getelementptr inbounds nuw i8, ptr %10, i64 48
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5arrow10WeakFutureISt10shared_ptrINS_6BufferEEEC2ERKNS_6FutureIS3_EE.exit.i.i, label %bb.x

bb.x:                                             ; preds = %_ZN5arrow6FutureISt10shared_ptrINS_6BufferEEE4MakeEv.exit.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 3 uses
  %i.ci = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33, !noalias !217
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ci, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZSt4bindIN5arrow6detail14ContinueFutureEJRNS0_6FutureISt10shared_ptrINS0_6BufferEEEEZNS0_2io16RandomAccessFile9ReadAsyncERKNS9_9IOContextEllE3$_0EENSt12_Bind_helperIXsr15__is_socketlikeIT_EE5valueESG_JDpT0_EE4typeEOSG_DpOSH_.exit.i.i", label %.thread.i11

.thread.i11:                                      ; preds = %bb.x
  %i.cj = load i32, ptr %i.ch, align 4, !tbaa !3, !noalias !217
  %i.ck = add nsw i32 %i.cj, 1
  store i32 %i.ck, ptr %i.ch, align 4, !tbaa !3, !noalias !217
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ca, i64 12
  br label %bb.z

"_ZSt4bindIN5arrow6detail14ContinueFutureEJRNS0_6FutureISt10shared_ptrINS0_6BufferEEEEZNS0_2io16RandomAccessFile9ReadAsyncERKNS9_9IOContextEllE3$_0EENSt12_Bind_helperIXsr15__is_socketlikeIT_EE5valueESG_JDpT0_EE4typeEOSG_DpOSH_.exit.i.i": ; preds = %bb.x
  %i.cm = atomicrmw volatile add ptr %i.ch, i32 1 acq_rel, align 4, !noalias !217 ; 0 uses
  %.pr.pre.i.i = load ptr, ptr %i.bp, align 8, !tbaa !26, !noalias !211 ; 4 uses
  %.pre78.i.i = load ptr, ptr %9, align 16, !tbaa !67, !noalias !211 ; 3 uses
  %.not.i.i.i.i.i3.i = icmp eq ptr %.pr.pre.i.i, null
  br i1 %.not.i.i.i.i.i3.i, label %_ZN5arrow10WeakFutureISt10shared_ptrINS_6BufferEEEC2ERKNS_6FutureIS3_EE.exit.i.i, label %bb.y

bb.y:                                             ; preds = %"_ZSt4bindIN5arrow6detail14ContinueFutureEJRNS0_6FutureISt10shared_ptrINS0_6BufferEEEEZNS0_2io16RandomAccessFile9ReadAsyncERKNS9_9IOContextEllE3$_0EENSt12_Bind_helperIXsr15__is_socketlikeIT_EE5valueESG_JDpT0_EE4typeEOSG_DpOSH_.exit.i.i"
  %.pre.i = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33, !noalias !211
  %i.cn = icmp eq i8 %.pre.i, 0
  %i.co = getelementptr inbounds nuw i8, ptr %.pr.pre.i.i, i64 12 ; 2 uses
  br i1 %i.cn, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y, %.thread.i11
  %i.cp = phi ptr [ %i.cl, %.thread.i11 ], [ %i.co, %bb.y ] ; 2 uses
  %i.cq = phi ptr [ %i.cb, %.thread.i11 ], [ %.pre78.i.i, %bb.y ]
  %.pr91.i22.i = phi ptr [ %i.ca, %.thread.i11 ], [ %.pr.pre.i.i, %bb.y ]
  %i.cr = load i32, ptr %i.cp, align 4, !tbaa !3, !noalias !211
  %i.cs = add nsw i32 %i.cr, 1
  store i32 %i.cs, ptr %i.cp, align 4, !tbaa !3, !noalias !211
  br label %_ZN5arrow10WeakFutureISt10shared_ptrINS_6BufferEEEC2ERKNS_6FutureIS3_EE.exit.i.i

bb.aa:                                            ; preds = %bb.y
  %i.ct = atomicrmw volatile add ptr %i.co, i32 1 acq_rel, align 4, !noalias !211 ; 0 uses
  br label %_ZN5arrow10WeakFutureISt10shared_ptrINS_6BufferEEEC2ERKNS_6FutureIS3_EE.exit.i.i

_ZN5arrow10WeakFutureISt10shared_ptrINS_6BufferEEEC2ERKNS_6FutureIS3_EE.exit.i.i: ; preds = %bb.aa, %bb.z, %"_ZSt4bindIN5arrow6detail14ContinueFutureEJRNS0_6FutureISt10shared_ptrINS0_6BufferEEEEZNS0_2io16RandomAccessFile9ReadAsyncERKNS9_9IOContextEllE3$_0EENSt12_Bind_helperIXsr15__is_socketlikeIT_EE5valueESG_JDpT0_EE4typeEOSG_DpOSH_.exit.i.i", %_ZN5arrow6FutureISt10shared_ptrINS_6BufferEEE4MakeEv.exit.i.i
  %i.cu = phi ptr [ %.pre78.i.i, %bb.aa ], [ %.pre78.i.i, %"_ZSt4bindIN5arrow6detail14ContinueFutureEJRNS0_6FutureISt10shared_ptrINS0_6BufferEEEEZNS0_2io16RandomAccessFile9ReadAsyncERKNS9_9IOContextEllE3$_0EENSt12_Bind_helperIXsr15__is_socketlikeIT_EE5valueESG_JDpT0_EE4typeEOSG_DpOSH_.exit.i.i" ], [ %i.cq, %bb.z ], [ %i.cb, %_ZN5arrow6FutureISt10shared_ptrINS_6BufferEEE4MakeEv.exit.i.i ]
  %i.cv = phi ptr [ %.pr.pre.i.i, %bb.aa ], [ null, %"_ZSt4bindIN5arrow6detail14ContinueFutureEJRNS0_6FutureISt10shared_ptrINS0_6BufferEEEEZNS0_2io16RandomAccessFile9ReadAsyncERKNS9_9IOContextEllE3$_0EENSt12_Bind_helperIXsr15__is_socketlikeIT_EE5valueESG_JDpT0_EE4typeEOSG_DpOSH_.exit.i.i" ], [ %.pr91.i22.i, %bb.z ], [ null, %_ZN5arrow6FutureISt10shared_ptrINS_6BufferEEE4MakeEv.exit.i.i ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #32, !noalias !211
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #32, !noalias !211
  %i.cw = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store ptr %i.as, ptr %i.cw, align 8, !tbaa !198, !noalias !211
  %i.cx = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  store ptr null, ptr %i.cd, align 8, !tbaa !26, !noalias !211
  store ptr %i.au, ptr %i.cx, align 8, !tbaa !26, !noalias !211
  store ptr null, ptr %i.cc, align 8, !tbaa !198, !noalias !211
  %i.cy = getelementptr inbounds nuw i8, ptr %14, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cy, ptr noundef nonnull align 8 dereferenceable(16) %i.ce, i64 16, i1 false), !noalias !211
  %i.cz = getelementptr inbounds nuw i8, ptr %14, i64 40 ; 2 uses
  store ptr %i.cb, ptr %i.cz, align 8, !tbaa !67, !noalias !211
  %i.da = getelementptr inbounds nuw i8, ptr %14, i64 48 ; 2 uses
  store ptr null, ptr %i.cg, align 8, !tbaa !26, !noalias !211
  store ptr %i.ca, ptr %i.da, align 8, !tbaa !26, !noalias !211
  store ptr null, ptr %i.cf, align 8, !tbaa !67, !noalias !211
  %i.db = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #35
          to label %bb.ab unwind label %_ZN5arrow8internal6FnOnceIFvvEED2Ev.exit35.i.i, !noalias !211 ; 7 uses

bb.ab:                                            ; preds = %_ZN5arrow10WeakFutureISt10shared_ptrINS_6BufferEEEC2ERKNS_6FutureIS3_EE.exit.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cw, i8 0, i64 16, i1 false), !noalias !211
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dc, ptr noundef nonnull align 8 dereferenceable(16) %i.ce, i64 16, i1 false), !noalias !211
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cz, i8 0, i64 16, i1 false), !noalias !211
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN5arrow8internal6FnOnceIFvvEE6FnImplISt5_BindIFNS_6detail14ContinueFutureENS_6FutureISt10shared_ptrINS_6BufferEEEEZNS_2io16RandomAccessFile9ReadAsyncERKNSD_9IOContextEllE3$_0EEEE", i64 16), ptr %i.db, align 8, !tbaa !30, !noalias !211
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  store ptr %i.as, ptr %i.dd, align 8, !tbaa !198, !noalias !211
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  store ptr %i.au, ptr %i.de, align 8, !tbaa !26, !noalias !211
  %i.df = getelementptr inbounds nuw i8, ptr %i.db, i64 48
  store ptr %i.cb, ptr %i.df, align 8, !tbaa !67, !noalias !211
  %i.dg = getelementptr inbounds nuw i8, ptr %i.db, i64 56
  store ptr %i.ca, ptr %i.dg, align 8, !tbaa !26, !noalias !211
  store ptr %i.db, ptr %13, align 8, !tbaa !74, !noalias !211
  %i.dh = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.di = load <2 x ptr>, ptr %18, align 16, !tbaa !14, !noalias !211
  store ptr null, ptr %i.be, align 8, !tbaa !26, !noalias !211
  store <2 x ptr> %i.di, ptr %15, align 16, !tbaa !14, !noalias !211
  store ptr null, ptr %18, align 16, !tbaa !76, !noalias !211
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #32, !noalias !211
  %i.dj = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #35
          to label %bb.ac unwind label %_ZN5arrow8internal6FnOnceIFvRKNS_6StatusEEED2Ev.exit27.i.i, !noalias !211 ; 4 uses

bb.ac:                                            ; preds = %bb.ab
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN5arrow8internal6FnOnceIFvRKNS_6StatusEEE6FnImplIZNS0_8Executor6SubmitIZNS_2io16RandomAccessFile9ReadAsyncERKNSA_9IOContextEllE3$_0JENS_6FutureISt10shared_ptrINS_6BufferEEEEEENS_6ResultIT1_EENS0_9TaskHintsENS_9StopTokenEOT_DpOT0_E3$_0EE", i64 16), ptr %i.dj, align 8, !tbaa !30, !noalias !211
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  store ptr %i.cu, ptr %i.dk, align 8, !tbaa !77, !noalias !211
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  store ptr %i.cv, ptr %i.dl, align 8, !tbaa !39, !noalias !211
  store ptr %i.dj, ptr %16, align 8, !tbaa !79, !noalias !211
  %i.dm = load ptr, ptr %i.bd, align 8, !tbaa !30, !noalias !211
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 48
  %i.do = load ptr, ptr %i.dn, align 8, !noalias !211
  invoke void %i.do(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %12, ptr noundef nonnull align 8 dereferenceable(8) %i.bd, ptr noundef nonnull byval(%"struct.arrow::internal::TaskHints") align 8 %17, ptr noundef nonnull %13, ptr noundef nonnull %15, ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %_ZN5arrow6StatusD2Ev.exit.i.i unwind label %bb.ay, !noalias !211

_ZN5arrow6StatusD2Ev.exit.i.i:                    ; preds = %bb.ac
  %i.dp = load ptr, ptr %12, align 8, !tbaa !81, !noalias !211
  store ptr %i.dp, ptr %11, align 8, !tbaa !81, !noalias !211
  store ptr null, ptr %12, align 8, !tbaa !81, !noalias !211
  %i.dq = load ptr, ptr %16, align 8, !tbaa !79, !noalias !211 ; 3 uses
  %.not.i.i16.i.i = icmp eq ptr %i.dq, null
  br i1 %.not.i.i16.i.i, label %"_ZZN5arrow8internal8Executor6SubmitIZNS_2io16RandomAccessFile9ReadAsyncERKNS3_9IOContextEllE3$_0JENS_6FutureISt10shared_ptrINS_6BufferEEEEEENS_6ResultIT1_EENS0_9TaskHintsENS_9StopTokenEOT_DpOT0_EN3$_0D2Ev.exit.i.i", label %_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_6StatusEEE4ImplEEclEPS8_.exit.i.i.i.i

_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_6StatusEEE4ImplEEclEPS8_.exit.i.i.i.i: ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !30, !noalias !211
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !noalias !211
  call void %i.dt(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.dq) #32, !noalias !211, !inline_history !220
  br label %"_ZZN5arrow8internal8Executor6SubmitIZNS_2io16RandomAccessFile9ReadAsyncERKNS3_9IOContextEllE3$_0JENS_6FutureISt10shared_ptrINS_6BufferEEEEEENS_6ResultIT1_EENS0_9TaskHintsENS_9StopTokenEOT_DpOT0_EN3$_0D2Ev.exit.i.i"

"_ZZN5arrow8internal8Executor6SubmitIZNS_2io16RandomAccessFile9ReadAsyncERKNS3_9IOContextEllE3$_0JENS_6FutureISt10shared_ptrINS_6BufferEEEEEENS_6ResultIT1_EENS0_9TaskHintsENS_9StopTokenEOT_DpOT0_EN3$_0D2Ev.exit.i.i": ; preds = %_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_6StatusEEE4ImplEEclEPS8_.exit.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32, !noalias !211
  %i.du = load ptr, ptr %i.dh, align 8, !tbaa !26, !noalias !211 ; 8 uses
  %.not.i.i.i.i.i12 = icmp eq ptr %i.du, null
  br i1 %.not.i.i.i.i.i12, label %_ZN5arrow9StopTokenD2Ev.exit.i.i, label %bb.ad

bb.ad:                                            ; preds = %"_ZZN5arrow8internal8Executor6SubmitIZNS_2io16RandomAccessFile9ReadAsyncERKNS3_9IOContextEllE3$_0JENS_6FutureISt10shared_ptrINS_6BufferEEEEEENS_6ResultIT1_EENS0_9TaskHintsENS_9StopTokenEOT_DpOT0_EN3$_0D2Ev.exit.i.i"
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8 ; 4 uses
  %i.dw = load atomic i64, ptr %i.dv acquire, align 8, !noalias !211 ; 2 uses
  %i.dx = icmp eq i64 %i.dw, 4294967297
  %i.dy = trunc i64 %i.dw to i32                  ; 2 uses
  br i1 %i.dx, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i32 0, ptr %i.dv, align 8, !tbaa !27, !noalias !211
  %i.dz = getelementptr inbounds nuw i8, ptr %i.du, i64 12
  store i32 0, ptr %i.dz, align 4, !tbaa !29, !noalias !211
  %i.ea = load ptr, ptr %i.du, align 8, !tbaa !30, !noalias !211
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.ec = load ptr, ptr %i.eb, align 8, !noalias !211
  call void %i.ec(ptr noundef nonnull align 8 dereferenceable(16) %i.du) #32, !noalias !211, !inline_history !221
  %i.ed = load ptr, ptr %i.du, align 8, !tbaa !30, !noalias !211
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 24
  %i.ef = load ptr, ptr %i.ee, align 8, !noalias !211
  call void %i.ef(ptr noundef nonnull align 8 dereferenceable(16) %i.du) #32, !noalias !211, !inline_history !221
  br label %_ZN5arrow9StopTokenD2Ev.exit.i.i

bb.af:                                            ; preds = %bb.ad
  %i.eg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33, !noalias !211
  %.not.i.i.i.i19.i.i = icmp eq i8 %i.eg, 0
  br i1 %.not.i.i.i.i19.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.eh = add nsw i32 %i.dy, -1
  store i32 %i.eh, ptr %i.dv, align 8, !tbaa !3, !noalias !211
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.ah:                                            ; preds = %bb.af
  %i.ei = atomicrmw volatile add ptr %i.dv, i32 -1 acq_rel, align 4, !noalias !211
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.ah, %bb.ag
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.dy, %bb.ag ], [ %i.ei, %bb.ah ]
  %i.ej = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ej, label %bb.ai, label %_ZN5arrow9StopTokenD2Ev.exit.i.i, !prof !34

bb.ai:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.du) #32, !noalias !211
  br label %_ZN5arrow9StopTokenD2Ev.exit.i.i

_ZN5arrow9StopTokenD2Ev.exit.i.i:                 ; preds = %bb.ai, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.ae, %"_ZZN5arrow8internal8Executor6SubmitIZNS_2io16RandomAccessFile9ReadAsyncERKNS3_9IOContextEllE3$_0JENS_6FutureISt10shared_ptrINS_6BufferEEEEEENS_6ResultIT1_EENS0_9TaskHintsENS_9StopTokenEOT_DpOT0_EN3$_0D2Ev.exit.i.i"
  %i.ek = load ptr, ptr %13, align 8, !tbaa !74, !noalias !211 ; 3 uses
  %.not.i.i20.i.i = icmp eq ptr %i.ek, null
  br i1 %.not.i.i20.i.i, label %_ZN5arrow8internal6FnOnceIFvvEED2Ev.exit.i.i, label %_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvvEE4ImplEEclEPS5_.exit.i.i.i.i

_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvvEE4ImplEEclEPS5_.exit.i.i.i.i: ; preds = %_ZN5arrow9StopTokenD2Ev.exit.i.i
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !30, !noalias !211
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !noalias !211
  call void %i.en(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ek) #32, !noalias !211, !inline_history !222
  br label %_ZN5arrow8internal6FnOnceIFvvEED2Ev.exit.i.i

_ZN5arrow8internal6FnOnceIFvvEED2Ev.exit.i.i:     ; preds = %_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvvEE4ImplEEclEPS5_.exit.i.i.i.i, %_ZN5arrow9StopTokenD2Ev.exit.i.i
  %i.eo = load ptr, ptr %i.da, align 8, !tbaa !26, !noalias !211 ; 8 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.eo, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt10_Head_baseILm0EN5arrow6FutureISt10shared_ptrINS0_6BufferEEEELb0EED2Ev.exit.i.i.i.i, label %bb.aj

bb.aj:                                            ; preds = %_ZN5arrow8internal6FnOnceIFvvEED2Ev.exit.i.i
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8 ; 4 uses
  %i.eq = load atomic i64, ptr %i.ep acquire, align 8, !noalias !211 ; 2 uses
  %i.er = icmp eq i64 %i.eq, 4294967297
  %i.es = trunc i64 %i.eq to i32                  ; 2 uses
  br i1 %i.er, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store i32 0, ptr %i.ep, align 8, !tbaa !27, !noalias !211
  %i.et = getelementptr inbounds nuw i8, ptr %i.eo, i64 12
  store i32 0, ptr %i.et, align 4, !tbaa !29, !noalias !211
  %i.eu = load ptr, ptr %i.eo, align 8, !tbaa !30, !noalias !211
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %i.ew = load ptr, ptr %i.ev, align 8, !noalias !211
  call void %i.ew(ptr noundef nonnull align 8 dereferenceable(16) %i.eo) #32, !noalias !211, !inline_history !223
  %i.ex = load ptr, ptr %i.eo, align 8, !tbaa !30, !noalias !211
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 24
  %i.ez = load ptr, ptr %i.ey, align 8, !noalias !211
  call void %i.ez(ptr noundef nonnull align 8 dereferenceable(16) %i.eo) #32, !noalias !211, !inline_history !223
  br label %_ZNSt10_Head_baseILm0EN5arrow6FutureISt10shared_ptrINS0_6BufferEEEELb0EED2Ev.exit.i.i.i.i

bb.al:                                            ; preds = %bb.aj
  %i.fa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33, !noalias !211
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.fa, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fb = add nsw i32 %i.es, -1
  store i32 %i.fb, ptr %i.ep, align 8, !tbaa !3, !noalias !211
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.an:                                            ; preds = %bb.al
  %i.fc = atomicrmw volatile add ptr %i.ep, i32 -1 acq_rel, align 4, !noalias !211
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.an, %bb.am
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.es, %bb.am ], [ %i.fc, %bb.an ]
  %i.fd = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.fd, label %bb.ao, label %_ZNSt10_Head_baseILm0EN5arrow6FutureISt10shared_ptrINS0_6BufferEEEELb0EED2Ev.exit.i.i.i.i, !prof !34

bb.ao:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.eo) #32, !noalias !211
  br label %_ZNSt10_Head_baseILm0EN5arrow6FutureISt10shared_ptrINS0_6BufferEEEELb0EED2Ev.exit.i.i.i.i

_ZNSt10_Head_baseILm0EN5arrow6FutureISt10shared_ptrINS0_6BufferEEEELb0EED2Ev.exit.i.i.i.i: ; preds = %bb.ao, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.ak, %_ZN5arrow8internal6FnOnceIFvvEED2Ev.exit.i.i
  %.val.i.i.i.i = load ptr, ptr %i.cx, align 8, !tbaa !26, !noalias !211 ; 8 uses
  %.not.i.i.i.i1.i.i.i.i = icmp eq ptr %.val.i.i.i.i, null
  br i1 %.not.i.i.i.i1.i.i.i.i, label %"_ZNSt5_BindIFN5arrow6detail14ContinueFutureENS0_6FutureISt10shared_ptrINS0_6BufferEEEEZNS0_2io16RandomAccessFile9ReadAsyncERKNS8_9IOContextEllE3$_0EED2Ev.exit.i.i", label %bb.ap

bb.ap:                                            ; preds = %_ZNSt10_Head_baseILm0EN5arrow6FutureISt10shared_ptrINS0_6BufferEEEELb0EED2Ev.exit.i.i.i.i
  %i.fe = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 8 ; 4 uses
  %i.ff = load atomic i64, ptr %i.fe acquire, align 8, !noalias !211 ; 2 uses
  %i.fg = icmp eq i64 %i.ff, 4294967297
  %i.fh = trunc i64 %i.ff to i32                  ; 2 uses
  br i1 %i.fg, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  store i32 0, ptr %i.fe, align 8, !tbaa !27, !noalias !211
  %i.fi = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 12
  store i32 0, ptr %i.fi, align 4, !tbaa !29, !noalias !211
  %i.fj = load ptr, ptr %.val.i.i.i.i, align 8, !tbaa !30, !noalias !211
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %i.fl = load ptr, ptr %i.fk, align 8, !noalias !211
  call void %i.fl(ptr noundef nonnull align 8 dereferenceable(16) %.val.i.i.i.i) #32, !noalias !211, !inline_history !224
  %i.fm = load ptr, ptr %.val.i.i.i.i, align 8, !tbaa !30, !noalias !211
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 24
  %i.fo = load ptr, ptr %i.fn, align 8, !noalias !211
  call void %i.fo(ptr noundef nonnull align 8 dereferenceable(16) %.val.i.i.i.i) #32, !noalias !211, !inline_history !224
  br label %"_ZNSt5_BindIFN5arrow6detail14ContinueFutureENS0_6FutureISt10shared_ptrINS0_6BufferEEEEZNS0_2io16RandomAccessFile9ReadAsyncERKNS8_9IOContextEllE3$_0EED2Ev.exit.i.i"

bb.ar:                                            ; preds = %bb.ap
  %i.fp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33, !noalias !211
  %.not.i.i.i.i.i2.i.i.i.i = icmp eq i8 %i.fp, 0
  br i1 %.not.i.i.i.i.i2.i.i.i.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fq = add nsw i32 %i.fh, -1
  store i32 %i.fq, ptr %i.fe, align 8, !tbaa !3, !noalias !211
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i.i.i

bb.at:                                            ; preds = %bb.ar
  %i.fr = atomicrmw volatile add ptr %i.fe, i32 -1 acq_rel, align 4, !noalias !211
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i.i.i: ; preds = %bb.at, %bb.as
  %.0.i.i.i.i.i.i4.i.i.i.i = phi i32 [ %i.fh, %bb.as ], [ %i.fr, %bb.at ]
  %i.fs = icmp eq i32 %.0.i.i.i.i.i.i4.i.i.i.i, 1
  br i1 %i.fs, label %bb.au, label %"_ZNSt5_BindIFN5arrow6detail14ContinueFutureENS0_6FutureISt10shared_ptrINS0_6BufferEEEEZNS0_2io16RandomAccessFile9ReadAsyncERKNS8_9IOContextEllE3$_0EED2Ev.exit.i.i", !prof !34

bb.au:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.val.i.i.i.i) #32, !noalias !211
  br label %"_ZNSt5_BindIFN5arrow6detail14ContinueFutureENS0_6FutureISt10shared_ptrINS0_6BufferEEEEZNS0_2io16RandomAccessFile9ReadAsyncERKNS8_9IOContextEllE3$_0EED2Ev.exit.i.i"

"_ZNSt5_BindIFN5arrow6detail14ContinueFutureENS0_6FutureISt10shared_ptrINS0_6BufferEEEEZNS0_2io16RandomAccessFile9ReadAsyncERKNS8_9IOContextEllE3$_0EED2Ev.exit.i.i": ; preds = %bb.au, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i.i.i, %bb.aq, %_ZNSt10_Head_baseILm0EN5arrow6FutureISt10shared_ptrINS0_6BufferEEEELb0EED2Ev.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32, !noalias !211
  %i.ft = load ptr, ptr %11, align 8, !tbaa !81, !noalias !211
  %i.fu = icmp eq ptr %i.ft, null
  br i1 %i.fu, label %"_ZNSt5_BindIFN5arrow6detail14ContinueFutureENS0_6FutureISt10shared_ptrINS0_6BufferEEEEZNS0_2io16RandomAccessFile9ReadAsyncERKNS8_9IOContextEllE3$_0EED2Ev.exit58.thread.i.i", label %bb.av, !prof !89

bb.av:                                            ; preds = %"_ZNSt5_BindIFN5arrow6detail14ContinueFutureENS0_6FutureISt10shared_ptrINS0_6BufferEEEEZNS0_2io16RandomAccessFile9ReadAsyncERKNS8_9IOContextEllE3$_0EED2Ev.exit.i.i"
  call void @_ZN5arrow6ResultINS_6FutureISt10shared_ptrINS_6BufferEEEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %20, ptr noundef nonnull align 8 dereferenceable(8) %11) #32
  %i.fv = load ptr, ptr %11, align 8, !tbaa !81, !noalias !211 ; 2 uses
  %.not.i21.i.i = icmp eq ptr %i.fv, null
  br i1 %.not.i21.i.i, label %"_ZNSt5_BindIFN5arrow6detail14ContinueFutureENS0_6FutureISt10shared_ptrINS0_6BufferEEEEZNS0_2io16RandomAccessFile9ReadAsyncERKNS8_9IOContextEllE3$_0EED2Ev.exit58.i.i", label %bb.aw, !prof !89

bb.aw:                                            ; preds = %bb.av
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 1
end_hunk_3
begin_hunk_4_@_ZN5arrow6ResultINS_6FutureINS_8internal5EmptyEEEEC2ERKNS_6StatusE:bb.a
bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5arrow8internal14DieWithMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.c = load ptr, ptr %2, align 8, !tbaa !127    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.f = load i64, ptr %i.d, align 8, !tbaa !33
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.h = load ptr, ptr %5, align 8, !tbaa !127    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !33
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  %i.m = load ptr, ptr %3, align 8, !tbaa !127    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.p = load i64, ptr %i.n, align 8, !tbaa !33
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZN5arrow6StatusC2ERKS0_.exit
  ret void

bb.h:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #33
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6FutureINS_8internal5EmptyEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !27
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !29
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #32, !inline_history !252
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #32, !inline_history !252
  br label %_ZNSt12__shared_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !34

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #32
  br label %_ZNSt12__shared_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

declare void @_ZN5arrow10FutureImpl4MakeEv(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.138") align 8) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt10shared_ptrIN5arrow10FutureImplEEaSIS1_St14default_deleteIS1_EEENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS1_LN9__gnu_cxx12_Lock_policyE2EESt10unique_ptrIT_T0_EEE5valueERS2_E4typeEOSF_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__shared_ptr.4", align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  call void @_ZNSt12__shared_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26   ; 8 uses
  %i.c = load <2 x ptr>, ptr %0, align 8, !tbaa !14
  %i.d = load <2 x ptr>, ptr %2, align 16, !tbaa !14
  store <2 x ptr> %i.d, ptr %0, align 8, !tbaa !14
  store <2 x ptr> %i.c, ptr %2, align 16, !tbaa !14
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EEaSIS1_St14default_deleteIS1_EEENSt9enable_ifIXsr6__and_ISt20__sp_compatible_withIPT_PS1_ESt14is_convertibleINSt10unique_ptrISA_T0_E7pointerESC_ESt21is_move_constructibleISG_EEE5valueERS4_E4typeEOSH_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 4294967297
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.e, align 8, !tbaa !27
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !29
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #32, !inline_history !396
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #32, !inline_history !396
  br label %_ZNSt12__shared_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EEaSIS1_St14default_deleteIS1_EEENSt9enable_ifIXsr6__and_ISt20__sp_compatible_withIPT_PS1_ESt14is_convertibleINSt10unique_ptrISA_T0_E7pointerESC_ESt21is_move_constructibleISG_EEE5valueERS4_E4typeEOSH_.exit

bb.d:                                             ; preds = %bb.b
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = add nsw i32 %i.h, -1
  store i32 %i.q, ptr %i.e, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.r = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.h, %bb.e ], [ %i.r, %bb.f ]
  %i.s = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.s, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EEaSIS1_St14default_deleteIS1_EEENSt9enable_ifIXsr6__and_ISt20__sp_compatible_withIPT_PS1_ESt14is_convertibleINSt10unique_ptrISA_T0_E7pointerESC_ESt21is_move_constructibleISG_EEE5valueERS4_E4typeEOSH_.exit, !prof !34

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #32
  br label %_ZNSt12__shared_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EEaSIS1_St14default_deleteIS1_EEENSt9enable_ifIXsr6__and_ISt20__sp_compatible_withIPT_PS1_ESt14is_convertibleINSt10unique_ptrISA_T0_E7pointerESC_ESt21is_move_constructibleISG_EEE5valueERS4_E4typeEOSH_.exit

_ZNSt12__shared_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EEaSIS1_St14default_deleteIS1_EEENSt9enable_ifIXsr6__and_ISt20__sp_compatible_withIPT_PS1_ESt14is_convertibleINSt10unique_ptrISA_T0_E7pointerESC_ESt21is_move_constructibleISG_EEE5valueERS4_E4typeEOSH_.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !64     ; 6 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !67
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  store ptr null, ptr %i.b, align 8, !tbaa !26
  %i.c = icmp eq ptr %i.a, null
  br i1 %i.c, label %_ZNSt12__shared_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS1_S1_EENSt9enable_ifIXsr15__has_esft_baseIT0_EE5valueEvE4typeEPT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #35
          to label %bb.c unwind label %bb.x       ; 10 uses

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %1, align 8, !tbaa !64
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 7 uses
  store i32 1, ptr %i.e, align 8, !tbaa !27
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 12 ; 2 uses
  store i32 1, ptr %i.f, align 4, !tbaa !29
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt19_Sp_counted_deleterIPN5arrow10FutureImplESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.d, align 8, !tbaa !30
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.a, ptr %i.g, align 8, !tbaa !397
  %i.h = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.thread

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.thread: ; preds = %bb.c
  store i32 2, ptr %i.e, align 8, !tbaa !3
  br label %bb.j

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i: ; preds = %bb.c
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i = load ptr, ptr %i.b, align 8, !tbaa !26 ; 8 uses
  %.not8.i = icmp eq ptr %.pr.pre.i, null
  br i1 %.not8.i, label %bb.j, label %bb.d

bb.d:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %.pr.pre.i, i64 8 ; 4 uses
  %i.k = load atomic i64, ptr %i.j acquire, align 8 ; 2 uses
  %i.l = icmp eq i64 %i.k, 4294967297
  %i.m = trunc i64 %i.k to i32                    ; 2 uses
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.j, align 8, !tbaa !27
  %i.n = getelementptr inbounds nuw i8, ptr %.pr.pre.i, i64 12
  store i32 0, ptr %i.n, align 4, !tbaa !29
  %i.o = load ptr, ptr %.pr.pre.i, align 8, !tbaa !30
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i) #32, !inline_history !399
  %i.r = load ptr, ptr %.pr.pre.i, align 8, !tbaa !30
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i) #32, !inline_history !399
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i9.i = icmp eq i8 %i.u, 0
  br i1 %.not.i9.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = add nsw i32 %i.m, -1
  store i32 %i.v, ptr %i.j, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.h:                                             ; preds = %bb.f
  %i.w = atomicrmw volatile add ptr %i.j, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i = phi i32 [ %i.m, %bb.g ], [ %i.w, %bb.h ]
  %i.x = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.x, label %bb.i, label %bb.j, !prof !34

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i) #32
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.thread, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.e, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i
  store ptr %i.d, ptr %i.b, align 8, !tbaa !26
  %i.y = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.z = icmp eq i64 %i.y, 4294967297
  %i.aa = trunc i64 %i.y to i32                   ; 2 uses
  br i1 %i.z, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.e, align 8, !tbaa !27
  store i32 0, ptr %i.f, align 4, !tbaa !29
  %i.ab = load ptr, ptr %i.d, align 8, !tbaa !30
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #32, !inline_history !243
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !30
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #32, !inline_history !243
  br label %bb.p

bb.l:                                             ; preds = %bb.j
  %i.ah = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i7 = icmp eq i8 %i.ah, 0
  br i1 %.not.i.i7, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = add nsw i32 %i.aa, -1
  store i32 %i.ai, ptr %i.e, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8

bb.n:                                             ; preds = %bb.l
  %i.aj = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8: ; preds = %bb.n, %bb.m
  %.0.i.i.i9 = phi i32 [ %i.aa, %bb.m ], [ %i.aj, %bb.n ]
  %i.ak = icmp eq i32 %.0.i.i.i9, 1
  br i1 %i.ak, label %bb.o, label %bb.p, !prof !34

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #32
  br label %bb.p

bb.p:                                             ; preds = %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8, %bb.o
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !39 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt10__weak_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.thread.i.i.i, label %_ZNKSt10__weak_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i

_ZNKSt10__weak_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i: ; preds = %bb.p
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load atomic i32, ptr %i.ao monotonic, align 8
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %_ZNKSt10__weak_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.thread.i.i.i, label %_ZNSt12__shared_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS1_S1_EENSt9enable_ifIXsr15__has_esft_baseIT0_EE5valueEvE4typeEPT_.exit

_ZNKSt10__weak_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.thread.i.i.i: ; preds = %_ZNKSt10__weak_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i, %bb.p
  store ptr %i.a, ptr %i.al, align 8, !tbaa !77
  %i.ar = load ptr, ptr %i.b, align 8, !tbaa !26  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNKSt10__weak_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.thread.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 12 ; 3 uses
  %i.at = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i3.i.i.i = icmp eq i8 %i.at, 0
  br i1 %.not.i.i3.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.au = load i32, ptr %i.as, align 4, !tbaa !3
  %i.av = add nsw i32 %i.au, 1
  store i32 %i.av, ptr %i.as, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.aw = atomicrmw volatile add ptr %i.as, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i.i.i = load ptr, ptr %i.am, align 8, !tbaa !39
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i: ; preds = %bb.s, %bb.r, %_ZNKSt10__weak_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.thread.i.i.i
  %i.ax = phi ptr [ %.pre.i.i.i, %bb.s ], [ %i.an, %bb.r ], [ %i.an, %_ZNKSt10__weak_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.thread.i.i.i ] ; 4 uses
  %.not6.i.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not6.i.i.i.i, label %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i, label %bb.t

bb.t:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 12 ; 3 uses
  %i.az = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i7.i.i.i.i = icmp eq i8 %i.az, 0
  br i1 %.not.i7.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ba = load i32, ptr %i.ay, align 4, !tbaa !3  ; 2 uses
  %i.bb = add nsw i32 %i.ba, -1
  store i32 %i.bb, ptr %i.ay, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.v:                                             ; preds = %bb.t
  %i.bc = atomicrmw volatile add ptr %i.ay, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.v, %bb.u
  %.0.i.i.i.i.i.i = phi i32 [ %i.ba, %bb.u ], [ %i.bc, %bb.v ]
  %i.bd = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.bd, label %bb.w, label %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i

bb.w:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  %i.be = load ptr, ptr %i.ax, align 8, !tbaa !30
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8
  tail call void %i.bg(ptr noundef nonnull align 8 dereferenceable(16) %i.ax) #32, !inline_history !400
  br label %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i

_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i: ; preds = %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i
  store ptr %i.ar, ptr %i.am, align 8, !tbaa !39
  br label %_ZNSt12__shared_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS1_S1_EENSt9enable_ifIXsr15__has_esft_baseIT0_EE5valueEvE4typeEPT_.exit

_ZNSt12__shared_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS1_S1_EENSt9enable_ifIXsr15__has_esft_baseIT0_EE5valueEvE4typeEPT_.exit: ; preds = %bb.a, %_ZNKSt10__weak_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i, %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i
  ret void

bb.x:                                             ; preds = %bb.b
  %i.bh = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.b) #32
  resume { ptr, i32 } %i.bh
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN5arrow10FutureImplESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #36
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN5arrow10FutureImplESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !401  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNKSt14default_deleteIN5arrow10FutureImplEEclEPS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(72) %i.b) #32, !inline_history !403
  br label %_ZNKSt14default_deleteIN5arrow10FutureImplEEclEPS1_.exit

_ZNKSt14default_deleteIN5arrow10FutureImplEEclEPS1_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN5arrow10FutureImplESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt19_Sp_counted_deleterIPN5arrow10FutureImplESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #36
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt19_Sp_counted_deleterIPN5arrow10FutureImplESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !286  ; 3 uses
  %i.c = icmp eq ptr %i.b, @_ZTSSt14default_deleteIN5arrow10FutureImplEE
  br i1 %i.c, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.b, align 1, !tbaa !33
  %.not.i = icmp eq i8 %i.d, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread3, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.b
  %i.e = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(41) @_ZTSSt14default_deleteIN5arrow10FutureImplEE) #32
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread3

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.a, %_ZNKSt9type_infoeqERKS_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_ZNKSt9type_infoeqERKS_.exit.thread3

_ZNKSt9type_infoeqERKS_.exit.thread3:             ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit, %_ZNKSt9type_infoeqERKS_.exit.thread
  %i.h = phi ptr [ %i.g, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.b ]
  ret ptr %i.h
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #20

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @"_ZN5arrow8internal6FnOnceIFvvEE6FnImplISt5_BindIFNS_6detail14ContinueFutureENS_6FutureINS0_5EmptyEEEZNS_2io13FileInterface10CloseAsyncEvE3$_0EEED2Ev"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) initializes((0, 8)) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN5arrow8internal6FnOnceIFvvEE6FnImplISt5_BindIFNS_6detail14ContinueFutureENS_6FutureINS0_5EmptyEEEZNS_2io13FileInterface10CloseAsyncEvE3$_0EEEE", i64 16), ptr %0, align 8, !tbaa !30
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26   ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt10_Head_baseILm0EN5arrow6FutureINS0_8internal5EmptyEEELb0EED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !27
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !29
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #32, !inline_history !404
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #32, !inline_history !404
  br label %_ZNSt10_Head_baseILm0EN5arrow6FutureINS0_8internal5EmptyEEELb0EED2Ev.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt10_Head_baseILm0EN5arrow6FutureINS0_8internal5EmptyEEELb0EED2Ev.exit.i.i, !prof !34

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #32
  br label %_ZNSt10_Head_baseILm0EN5arrow6FutureINS0_8internal5EmptyEEELb0EED2Ev.exit.i.i

_ZNSt10_Head_baseILm0EN5arrow6FutureINS0_8internal5EmptyEEELb0EED2Ev.exit.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.c, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i.i = load ptr, ptr %i.r, align 8, !tbaa !26 ; 8 uses
  %.not.i.i.i.i1.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not.i.i.i.i1.i.i, label %"_ZNSt5_BindIFN5arrow6detail14ContinueFutureENS0_6FutureINS0_8internal5EmptyEEEZNS0_2io13FileInterface10CloseAsyncEvE3$_0EED2Ev.exit", label %bb.h

bb.h:                                             ; preds = %_ZNSt10_Head_baseILm0EN5arrow6FutureINS0_8internal5EmptyEEELb0EED2Ev.exit.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8 ; 4 uses
  %i.t = load atomic i64, ptr %i.s acquire, align 8 ; 2 uses
  %i.u = icmp eq i64 %i.t, 4294967297
  %i.v = trunc i64 %i.t to i32                    ; 2 uses
  br i1 %i.u, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.s, align 8, !tbaa !27
  %i.w = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 12
  store i32 0, ptr %i.w, align 4, !tbaa !29
  %i.x = load ptr, ptr %.val.i.i, align 8, !tbaa !30
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %.val.i.i) #32, !inline_history !405
  %i.aa = load ptr, ptr %.val.i.i, align 8, !tbaa !30
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %.val.i.i) #32, !inline_history !405
  br label %"_ZNSt5_BindIFN5arrow6detail14ContinueFutureENS0_6FutureINS0_8internal5EmptyEEEZNS0_2io13FileInterface10CloseAsyncEvE3$_0EED2Ev.exit"

bb.j:                                             ; preds = %bb.h
  %i.ad = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i.i.i2.i.i = icmp eq i8 %i.ad, 0
  br i1 %.not.i.i.i.i.i2.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = add nsw i32 %i.v, -1
  store i32 %i.ae, ptr %i.s, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i

bb.l:                                             ; preds = %bb.j
  %i.af = atomicrmw volatile add ptr %i.s, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i4.i.i = phi i32 [ %i.v, %bb.k ], [ %i.af, %bb.l ]
  %i.ag = icmp eq i32 %.0.i.i.i.i.i.i4.i.i, 1
  br i1 %i.ag, label %bb.m, label %"_ZNSt5_BindIFN5arrow6detail14ContinueFutureENS0_6FutureINS0_8internal5EmptyEEEZNS0_2io13FileInterface10CloseAsyncEvE3$_0EED2Ev.exit", !prof !34

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.val.i.i) #32
  br label %"_ZNSt5_BindIFN5arrow6detail14ContinueFutureENS0_6FutureINS0_8internal5EmptyEEEZNS0_2io13FileInterface10CloseAsyncEvE3$_0EED2Ev.exit"

"_ZNSt5_BindIFN5arrow6detail14ContinueFutureENS0_6FutureINS0_8internal5EmptyEEEZNS0_2io13FileInterface10CloseAsyncEvE3$_0EED2Ev.exit": ; preds = %_ZNSt10_Head_baseILm0EN5arrow6FutureINS0_8internal5EmptyEEELb0EED2Ev.exit.i.i, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i, %bb.m
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @"_ZN5arrow8internal6FnOnceIFvvEE6FnImplISt5_BindIFNS_6detail14ContinueFutureENS_6FutureINS0_5EmptyEEEZNS_2io13FileInterface10CloseAsyncEvE3$_0EEED0Ev"(ptr noundef nonnull align 8 dereferenceable(48) initializes((0, 8)) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN5arrow8internal6FnOnceIFvvEE6FnImplISt5_BindIFNS_6detail14ContinueFutureENS_6FutureINS0_5EmptyEEEZNS_2io13FileInterface10CloseAsyncEvE3$_0EEEE", i64 16), ptr %0, align 8, !tbaa !30
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26   ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt10_Head_baseILm0EN5arrow6FutureINS0_8internal5EmptyEEELb0EED2Ev.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !27
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !29
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #32, !inline_history !406
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #32, !inline_history !406
  br label %_ZNSt10_Head_baseILm0EN5arrow6FutureINS0_8internal5EmptyEEELb0EED2Ev.exit.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt10_Head_baseILm0EN5arrow6FutureINS0_8internal5EmptyEEELb0EED2Ev.exit.i.i.i, !prof !34

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #32, !inline_history !407
  br label %_ZNSt10_Head_baseILm0EN5arrow6FutureINS0_8internal5EmptyEEELb0EED2Ev.exit.i.i.i

_ZNSt10_Head_baseILm0EN5arrow6FutureINS0_8internal5EmptyEEELb0EED2Ev.exit.i.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.c, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i.i.i = load ptr, ptr %i.r, align 8, !tbaa !26 ; 8 uses
  %.not.i.i.i.i1.i.i.i = icmp eq ptr %.val.i.i.i, null
  br i1 %.not.i.i.i.i1.i.i.i, label %"_ZN5arrow8internal6FnOnceIFvvEE6FnImplISt5_BindIFNS_6detail14ContinueFutureENS_6FutureINS0_5EmptyEEEZNS_2io13FileInterface10CloseAsyncEvE3$_0EEED2Ev.exit", label %bb.h

bb.h:                                             ; preds = %_ZNSt10_Head_baseILm0EN5arrow6FutureINS0_8internal5EmptyEEELb0EED2Ev.exit.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 8 ; 4 uses
  %i.t = load atomic i64, ptr %i.s acquire, align 8 ; 2 uses
  %i.u = icmp eq i64 %i.t, 4294967297
  %i.v = trunc i64 %i.t to i32                    ; 2 uses
  br i1 %i.u, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.s, align 8, !tbaa !27
  %i.w = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 12
  store i32 0, ptr %i.w, align 4, !tbaa !29
  %i.x = load ptr, ptr %.val.i.i.i, align 8, !tbaa !30
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %.val.i.i.i) #32, !inline_history !408
  %i.aa = load ptr, ptr %.val.i.i.i, align 8, !tbaa !30
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %.val.i.i.i) #32, !inline_history !408
  br label %"_ZN5arrow8internal6FnOnceIFvvEE6FnImplISt5_BindIFNS_6detail14ContinueFutureENS_6FutureINS0_5EmptyEEEZNS_2io13FileInterface10CloseAsyncEvE3$_0EEED2Ev.exit"

bb.j:                                             ; preds = %bb.h
  %i.ad = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i.i.i2.i.i.i = icmp eq i8 %i.ad, 0
  br i1 %.not.i.i.i.i.i2.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = add nsw i32 %i.v, -1
  store i32 %i.ae, ptr %i.s, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.af = atomicrmw volatile add ptr %i.s, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i4.i.i.i = phi i32 [ %i.v, %bb.k ], [ %i.af, %bb.l ]
  %i.ag = icmp eq i32 %.0.i.i.i.i.i.i4.i.i.i, 1
  br i1 %i.ag, label %bb.m, label %"_ZN5arrow8internal6FnOnceIFvvEE6FnImplISt5_BindIFNS_6detail14ContinueFutureENS_6FutureINS0_5EmptyEEEZNS_2io13FileInterface10CloseAsyncEvE3$_0EEED2Ev.exit", !prof !34

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.val.i.i.i) #32, !inline_history !407
  br label %"_ZN5arrow8internal6FnOnceIFvvEE6FnImplISt5_BindIFNS_6detail14ContinueFutureENS_6FutureINS0_5EmptyEEEZNS_2io13FileInterface10CloseAsyncEvE3$_0EEED2Ev.exit"

"_ZN5arrow8internal6FnOnceIFvvEE6FnImplISt5_BindIFNS_6detail14ContinueFutureENS_6FutureINS0_5EmptyEEEZNS_2io13FileInterface10CloseAsyncEvE3$_0EEED2Ev.exit": ; preds = %_ZNSt10_Head_baseILm0EN5arrow6FutureINS0_8internal5EmptyEEELb0EED2Ev.exit.i.i.i, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i.i, %bb.m
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #36
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZN5arrow8internal6FnOnceIFvvEE6FnImplISt5_BindIFNS_6detail14ContinueFutureENS_6FutureINS0_5EmptyEEEZNS_2io13FileInterface10CloseAsyncEvE3$_0EEE6invokeEv"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %2 = alloca %"class.arrow::Future", align 16    ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val3.i.i = load ptr, ptr %i.c, align 8, !tbaa !26 ; 2 uses
  %i.e = load <2 x ptr>, ptr %i.b, align 8, !tbaa !14
  store <2 x ptr> %i.e, ptr %2, align 16, !tbaa !14
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.val3.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN5arrow6FutureINS_8internal5EmptyEEC2ERKS3_.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.val3.i.i, i64 8 ; 3 uses
  %i.g = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.g, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.f, align 4, !tbaa !3
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr %i.f, align 4, !tbaa !3
  br label %_ZN5arrow6FutureINS_8internal5EmptyEEC2ERKS3_.exit.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.j = atomicrmw volatile add ptr %i.f, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5arrow6FutureINS_8internal5EmptyEEC2ERKS3_.exit.i.i.i.i

_ZN5arrow6FutureINS_8internal5EmptyEEC2ERKS3_.exit.i.i.i.i: ; preds = %bb.d, %bb.c, %bb.a
  %.val.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !72 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.k = load ptr, ptr %.val.i.i.i.i, align 8, !tbaa !30, !noalias !409
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !noalias !409
  invoke void %i.m(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %1, ptr noundef nonnull align 8 dereferenceable(28) %.val.i.i.i.i)
          to label %.noexc.i.i.i.i unwind label %bb.r, !inline_history !412

.noexc.i.i.i.i:                                   ; preds = %_ZN5arrow6FutureINS_8internal5EmptyEEC2ERKS3_.exit.i.i.i.i
  invoke void @_ZN5arrow6FutureINS_8internal5EmptyEE12MarkFinishedIS2_vEEvNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %1)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %.noexc.i.i.i.i
  %i.n = load ptr, ptr %1, align 8, !tbaa !81     ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i.i, label %bb.k, label %bb.f, !prof !89

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %i.p = load i8, ptr %i.o, align 1, !tbaa !90, !range !100, !noundef !101
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #32
  br label %bb.k

bb.h:                                             ; preds = %.noexc.i.i.i.i
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.s = load ptr, ptr %1, align 8, !tbaa !81     ; 2 uses
  %.not.i2.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i2.i.i.i.i.i, label %.body.i.i.i.i, label %bb.i, !prof !89

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %i.u = load i8, ptr %i.t, align 1, !tbaa !90, !range !100, !noundef !101
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %.body.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #32
  br label %.body.i.i.i.i

bb.k:                                             ; preds = %bb.g, %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !26   ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i.i.i.i, label %"_ZNSt5_BindIFN5arrow6detail14ContinueFutureENS0_6FutureINS0_8internal5EmptyEEEZNS0_2io13FileInterface10CloseAsyncEvE3$_0EEclIJEvEET0_DpOT_.exit", label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 4 uses
  %i.y = load atomic i64, ptr %i.x acquire, align 8 ; 2 uses
  %i.z = icmp eq i64 %i.y, 4294967297
  %i.aa = trunc i64 %i.y to i32                   ; 2 uses
  br i1 %i.z, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.x, align 8, !tbaa !27
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  store i32 0, ptr %i.ab, align 4, !tbaa !29
  %i.ac = load ptr, ptr %i.w, align 8, !tbaa !30
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
end_hunk_4
begin_hunk_5_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm:bb.a
  %i.l = select i1 %i.i, i64 15, i64 %i.k
  %.not = icmp ugt i64 %i.f, %i.l
  br i1 %.not, label %bb.l, label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 %1 ; 5 uses
  %i.n = add i64 %2, %1                           ; 2 uses
  %i.o = sub i64 %i.b, %i.n                       ; 3 uses
  %i.p = icmp ult ptr %3, %i.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.b
  %i.r = icmp ult ptr %i.q, %3
  %i.s = select i1 %i.p, i1 true, i1 %i.r
  br i1 %i.s, label %bb.e, label %bb.k, !prof !89

bb.e:                                             ; preds = %bb.d
  %.not35 = icmp eq i64 %i.b, %i.n
  %.not36 = icmp eq i64 %2, %4
  %or.cond = or i1 %.not36, %.not35
  br i1 %or.cond, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 %4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 %2 ; 2 uses
  %cond38 = icmp eq i64 %i.o, 1
  br i1 %cond38, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.v = load i8, ptr %i.u, align 1, !tbaa !33
  store i8 %i.v, ptr %i.t, align 1, !tbaa !33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit

bb.h:                                             ; preds = %bb.f
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.t, ptr align 1 %i.u, i64 %i.o, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit: ; preds = %bb.h, %bb.g, %bb.e
  switch i64 %4, label %bb.j [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
    i64 1, label %bb.i
  ]

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit
  %i.w = load i8, ptr %3, align 1, !tbaa !33
  store i8 %i.w, ptr %i.m, align 1, !tbaa !33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %3, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.k:                                             ; preds = %bb.d
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.m, i64 noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %i.o) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit, %bb.j, %bb.i, %bb.k, %bb.l
  store i64 %i.f, ptr %i.a, align 8, !tbaa !292
  %i.x = load ptr, ptr %0, align 8, !tbaa !127
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f
  store i8 0, ptr %i.y, align 1, !tbaa !33
  ret ptr %0
}

; Function Attrs: cold
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #26

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !292  ; 5 uses
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 5 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !127    ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = icmp eq ptr %i.g, %i.h                   ; 3 uses
  br i1 %i.i, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %bb.a, %bb.b
  %i.k = load i64, ptr %i.h, align 8              ; 2 uses
  %i.l = select i1 %i.i, i64 15, i64 %i.k         ; 2 uses
  %i.m = icmp slt i64 %i.f, 0
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #34
  unreachable

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.n = icmp ugt i64 %i.f, %i.l
  br i1 %i.n, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.o = shl nuw i64 %i.l, 1                      ; 2 uses
  %i.p = icmp ult i64 %i.f, %i.o
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.o, i64 9223372036854775807)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.0 = phi i64 [ %spec.store.select.i, %bb.f ], [ %i.f, %bb.e ], [ %i.f, %bb.d ] ; 2 uses
  %i.q = add nuw i64 %.0, 1                       ; 2 uses
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !34

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt17__throw_bad_allocv() #34
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.g
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #35 ; 5 uses
  switch i64 %1, label %bb.j [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
    i64 1, label %bb.i
  ]

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.t = load i8, ptr %i.g, align 1, !tbaa !33
  store i8 %i.t, ptr %i.s, align 1, !tbaa !33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr align 1 %i.g, i64 %1, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, %bb.j, %bb.i
  %i.u = icmp ne ptr %3, null
  %i.v = icmp ne i64 %4, 0
  %or.cond = and i1 %i.u, %i.v
  br i1 %or.cond, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %1 ; 2 uses
  %cond = icmp eq i64 %4, 1
  br i1 %cond, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.x = load i8, ptr %3, align 1, !tbaa !33
  store i8 %i.x, ptr %i.w, align 1, !tbaa !33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.m:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull align 1 %3, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26: ; preds = %bb.m, %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %.not25 = icmp eq i64 %i.b, %i.c
  br i1 %.not25, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27, label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 %1
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %4 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 %1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %2 ; 2 uses
  %cond29 = icmp eq i64 %i.d, 1
  br i1 %cond29, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !33
  store i8 %i.ac, ptr %i.z, align 1, !tbaa !33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

bb.p:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr align 1 %i.ab, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27: ; preds = %bb.p, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.ad = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.ad)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.ae = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.ae) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.s, ptr %0, align 8, !tbaa !127
  store i64 %.0, ptr %i.h, align 8, !tbaa !33
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @"_ZN5arrow8internal6FnOnceIFvRKNS_6StatusEEE6FnImplIZNS0_8Executor6SubmitIZNS_2io13FileInterface10CloseAsyncEvE3$_0JENS_6FutureINS0_5EmptyEEEEENS_6ResultIT1_EENS0_9TaskHintsENS_9StopTokenEOT_DpOT0_E3$_0ED2Ev"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN5arrow8internal6FnOnceIFvRKNS_6StatusEEE6FnImplIZNS0_8Executor6SubmitIZNS_2io13FileInterface10CloseAsyncEvE3$_0JENS_6FutureINS0_5EmptyEEEEENS_6ResultIT1_EENS0_9TaskHintsENS_9StopTokenEOT_DpOT0_E3$_0EE", i64 16), ptr %0, align 8, !tbaa !30
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.a, align 8, !tbaa !39  ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %.val, null
  br i1 %.not.i.i.i.i, label %"_ZZN5arrow8internal8Executor6SubmitIZNS_2io13FileInterface10CloseAsyncEvE3$_0JENS_6FutureINS0_5EmptyEEEEENS_6ResultIT1_EENS0_9TaskHintsENS_9StopTokenEOT_DpOT0_EN3$_0D2Ev.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 12 ; 3 uses
  %i.c = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i.i.i = icmp eq i8 %i.c, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr %i.b, align 4, !tbaa !3    ; 2 uses
  %i.e = add nsw i32 %i.d, -1
  store i32 %i.e, ptr %i.b, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.f = atomicrmw volatile add ptr %i.b, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i.i.i.i = phi i32 [ %i.d, %bb.c ], [ %i.f, %bb.d ]
  %i.g = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.g, label %bb.e, label %"_ZZN5arrow8internal8Executor6SubmitIZNS_2io13FileInterface10CloseAsyncEvE3$_0JENS_6FutureINS0_5EmptyEEEEENS_6ResultIT1_EENS0_9TaskHintsENS_9StopTokenEOT_DpOT0_EN3$_0D2Ev.exit"

bb.e:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  %i.h = load ptr, ptr %.val, align 8, !tbaa !30
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %.val) #32, !inline_history !417
  br label %"_ZZN5arrow8internal8Executor6SubmitIZNS_2io13FileInterface10CloseAsyncEvE3$_0JENS_6FutureINS0_5EmptyEEEEENS_6ResultIT1_EENS0_9TaskHintsENS_9StopTokenEOT_DpOT0_EN3$_0D2Ev.exit"

"_ZZN5arrow8internal8Executor6SubmitIZNS_2io13FileInterface10CloseAsyncEvE3$_0JENS_6FutureINS0_5EmptyEEEEENS_6ResultIT1_EENS0_9TaskHintsENS_9StopTokenEOT_DpOT0_EN3$_0D2Ev.exit": ; preds = %bb.a, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.e
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @"_ZN5arrow8internal6FnOnceIFvRKNS_6StatusEEE6FnImplIZNS0_8Executor6SubmitIZNS_2io13FileInterface10CloseAsyncEvE3$_0JENS_6FutureINS0_5EmptyEEEEENS_6ResultIT1_EENS0_9TaskHintsENS_9StopTokenEOT_DpOT0_E3$_0ED0Ev"(ptr noundef nonnull align 8 dereferenceable(24) initializes((0, 8)) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN5arrow8internal6FnOnceIFvRKNS_6StatusEEE6FnImplIZNS0_8Executor6SubmitIZNS_2io13FileInterface10CloseAsyncEvE3$_0JENS_6FutureINS0_5EmptyEEEEENS_6ResultIT1_EENS0_9TaskHintsENS_9StopTokenEOT_DpOT0_E3$_0EE", i64 16), ptr %0, align 8, !tbaa !30
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !39 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i.i.i.i, label %"_ZN5arrow8internal6FnOnceIFvRKNS_6StatusEEE6FnImplIZNS0_8Executor6SubmitIZNS_2io13FileInterface10CloseAsyncEvE3$_0JENS_6FutureINS0_5EmptyEEEEENS_6ResultIT1_EENS0_9TaskHintsENS_9StopTokenEOT_DpOT0_E3$_0ED2Ev.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.val.i, i64 12 ; 3 uses
  %i.c = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i.i.i.i = icmp eq i8 %i.c, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr %i.b, align 4, !tbaa !3    ; 2 uses
  %i.e = add nsw i32 %i.d, -1
  store i32 %i.e, ptr %i.b, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.f = atomicrmw volatile add ptr %i.b, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.d, %bb.c ], [ %i.f, %bb.d ]
  %i.g = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.g, label %bb.e, label %"_ZN5arrow8internal6FnOnceIFvRKNS_6StatusEEE6FnImplIZNS0_8Executor6SubmitIZNS_2io13FileInterface10CloseAsyncEvE3$_0JENS_6FutureINS0_5EmptyEEEEENS_6ResultIT1_EENS0_9TaskHintsENS_9StopTokenEOT_DpOT0_E3$_0ED2Ev.exit"

bb.e:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  %i.h = load ptr, ptr %.val.i, align 8, !tbaa !30
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %.val.i) #32, !inline_history !418
  br label %"_ZN5arrow8internal6FnOnceIFvRKNS_6StatusEEE6FnImplIZNS0_8Executor6SubmitIZNS_2io13FileInterface10CloseAsyncEvE3$_0JENS_6FutureINS0_5EmptyEEEEENS_6ResultIT1_EENS0_9TaskHintsENS_9StopTokenEOT_DpOT0_E3$_0ED2Ev.exit"

"_ZN5arrow8internal6FnOnceIFvRKNS_6StatusEEE6FnImplIZNS0_8Executor6SubmitIZNS_2io13FileInterface10CloseAsyncEvE3$_0JENS_6FutureINS0_5EmptyEEEEENS_6ResultIT1_EENS0_9TaskHintsENS_9StopTokenEOT_DpOT0_E3$_0ED2Ev.exit": ; preds = %bb.a, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #36
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZN5arrow8internal6FnOnceIFvRKNS_6StatusEEE6FnImplIZNS0_8Executor6SubmitIZNS_2io13FileInterface10CloseAsyncEvE3$_0JENS_6FutureINS0_5EmptyEEEEENS_6ResultIT1_EENS0_9TaskHintsENS_9StopTokenEOT_DpOT0_E3$_0E6invokeES4_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.arrow::Future", align 8     ; 9 uses
  %3 = alloca %"class.arrow::Status", align 8     ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !419)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !39, !noalias !422 ; 5 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5arrow10WeakFutureINS_8internal5EmptyEE3getEv.exit.thread.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.e = load atomic i32, ptr %i.d monotonic, align 8, !noalias !422
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.06.i.i.i.i.i.i.i = phi i32 [ %i.e, %bb.b ], [ %i.i, %bb.d ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i.i = icmp eq i32 %.06.i.i.i.i.i.i.i, 0
  br i1 %.not.not.not.i.not.i.i.i.i.i.i, label %_ZN5arrow10WeakFutureINS_8internal5EmptyEE3getEv.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = add nsw i32 %.06.i.i.i.i.i.i.i, 1
  %i.g = cmpxchg weak ptr %i.d, i32 %.06.i.i.i.i.i.i.i, i32 %i.f acq_rel monotonic, align 8, !noalias !422 ; 2 uses
  %i.h = extractvalue { i32, i1 } %i.g, 1
  %i.i = extractvalue { i32, i1 } %i.g, 0
  br i1 %i.h, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i, label %bb.c, !llvm.loop !45

_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i: ; preds = %bb.d
  %i.j = load atomic i32, ptr %i.d monotonic, align 8, !noalias !422
  %.fr.i.i.i.i.i = freeze i32 %i.j
  %.not.i.i.i.i.i = icmp eq i32 %.fr.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow10WeakFutureINS_8internal5EmptyEE3getEv.exit.thread.i, label %_ZN5arrow10WeakFutureINS_8internal5EmptyEE3getEv.exit.i

_ZN5arrow10WeakFutureINS_8internal5EmptyEE3getEv.exit.thread.i: ; preds = %bb.c, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i, %bb.a
  %.sroa.3.1.i.ph.i = phi ptr [ null, %bb.a ], [ %i.c, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i ], [ null, %bb.c ] ; 2 uses
  store ptr null, ptr %2, align 8, !tbaa !67, !alias.scope !419
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.sroa.3.1.i.ph.i, ptr %i.k, align 8, !tbaa !26, !alias.scope !419
  br label %_ZN5arrow6StatusD2Ev.exit.i

_ZN5arrow10WeakFutureINS_8internal5EmptyEE3getEv.exit.i: ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i
  %i.l = load ptr, ptr %i.a, align 8, !noalias !422 ; 2 uses
  store ptr %i.l, ptr %2, align 8, !tbaa !67, !alias.scope !419
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %i.c, ptr %i.m, align 8, !tbaa !26, !alias.scope !419
  %.not.i.i.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.not.i, label %_ZN5arrow6StatusD2Ev.exit.thread.i, label %bb.e

bb.e:                                             ; preds = %_ZN5arrow10WeakFutureINS_8internal5EmptyEE3getEv.exit.i
  store ptr null, ptr %3, align 8, !tbaa !81
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZN5arrow6StatusC2ERKS0_.exit.i unwind label %bb.i

_ZN5arrow6StatusC2ERKS0_.exit.i:                  ; preds = %bb.e
  invoke void @_ZN5arrow6FutureINS_8internal5EmptyEE12MarkFinishedIS2_vEEvNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %3)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit.i
  %i.n = load ptr, ptr %3, align 8, !tbaa !81     ; 2 uses
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %_ZN5arrow6StatusD2Ev.exitthread-pre-split.i, label %bb.g, !prof !89

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %i.p = load i8, ptr %i.o, align 1, !tbaa !90, !range !100, !noundef !101
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %_ZN5arrow6StatusD2Ev.exitthread-pre-split.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #32
  br label %_ZN5arrow6StatusD2Ev.exitthread-pre-split.i

bb.i:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5arrow6StatusD2Ev.exit6.i

bb.j:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit.i
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.t = load ptr, ptr %3, align 8, !tbaa !81     ; 2 uses
  %.not.i5.i = icmp eq ptr %i.t, null
  br i1 %.not.i5.i, label %_ZN5arrow6StatusD2Ev.exit6.i, label %bb.k, !prof !89

bb.k:                                             ; preds = %bb.j
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !90, !range !100, !noundef !101
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %_ZN5arrow6StatusD2Ev.exit6.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #32
  br label %_ZN5arrow6StatusD2Ev.exit6.i

_ZN5arrow6StatusD2Ev.exitthread-pre-split.i:      ; preds = %bb.h, %bb.g, %bb.f
  %.pr.i = load ptr, ptr %i.m, align 8, !tbaa !26
  br label %_ZN5arrow6StatusD2Ev.exit.i

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %_ZN5arrow6StatusD2Ev.exitthread-pre-split.i, %_ZN5arrow10WeakFutureINS_8internal5EmptyEE3getEv.exit.thread.i
  %i.x = phi ptr [ %.pr.i, %_ZN5arrow6StatusD2Ev.exitthread-pre-split.i ], [ %.sroa.3.1.i.ph.i, %_ZN5arrow10WeakFutureINS_8internal5EmptyEE3getEv.exit.thread.i ] ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i, label %"_ZZN5arrow8internal8Executor6SubmitIZNS_2io13FileInterface10CloseAsyncEvE3$_0JENS_6FutureINS0_5EmptyEEEEENS_6ResultIT1_EENS0_9TaskHintsENS_9StopTokenEOT_DpOT0_EN3$_0clERKNS_6StatusE.exit", label %_ZN5arrow6StatusD2Ev.exit.thread.i

_ZN5arrow6StatusD2Ev.exit.thread.i:               ; preds = %_ZN5arrow6StatusD2Ev.exit.i, %_ZN5arrow10WeakFutureINS_8internal5EmptyEE3getEv.exit.i
  %i.y = phi ptr [ %i.x, %_ZN5arrow6StatusD2Ev.exit.i ], [ %i.c, %_ZN5arrow10WeakFutureINS_8internal5EmptyEE3getEv.exit.i ] ; 7 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 4 uses
  %i.aa = load atomic i64, ptr %i.z acquire, align 8 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 4294967297
  %i.ac = trunc i64 %i.aa to i32                  ; 2 uses
  br i1 %i.ab, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit.thread.i
  store i32 0, ptr %i.z, align 8, !tbaa !27
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  store i32 0, ptr %i.ad, align 4, !tbaa !29
  %i.ae = load ptr, ptr %i.y, align 8, !tbaa !30
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #32, !inline_history !425
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !30
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #32, !inline_history !425
  br label %"_ZZN5arrow8internal8Executor6SubmitIZNS_2io13FileInterface10CloseAsyncEvE3$_0JENS_6FutureINS0_5EmptyEEEEENS_6ResultIT1_EENS0_9TaskHintsENS_9StopTokenEOT_DpOT0_EN3$_0clERKNS_6StatusE.exit"

bb.n:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit.thread.i
  %i.ak = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i.i7.i = icmp eq i8 %i.ak, 0
  br i1 %.not.i.i.i.i7.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.al = add nsw i32 %i.ac, -1
  store i32 %i.al, ptr %i.z, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.am = atomicrmw volatile add ptr %i.z, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i.i.i = phi i32 [ %i.ac, %bb.o ], [ %i.am, %bb.p ]
  %i.an = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.an, label %bb.q, label %"_ZZN5arrow8internal8Executor6SubmitIZNS_2io13FileInterface10CloseAsyncEvE3$_0JENS_6FutureINS0_5EmptyEEEEENS_6ResultIT1_EENS0_9TaskHintsENS_9StopTokenEOT_DpOT0_EN3$_0clERKNS_6StatusE.exit", !prof !34

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #32
  br label %"_ZZN5arrow8internal8Executor6SubmitIZNS_2io13FileInterface10CloseAsyncEvE3$_0JENS_6FutureINS0_5EmptyEEEEENS_6ResultIT1_EENS0_9TaskHintsENS_9StopTokenEOT_DpOT0_EN3$_0clERKNS_6StatusE.exit"

_ZN5arrow6StatusD2Ev.exit6.i:                     ; preds = %bb.l, %bb.k, %bb.j, %bb.i
  %.pn.i = phi { ptr, i32 } [ %i.r, %bb.i ], [ %i.s, %bb.j ], [ %i.s, %bb.k ], [ %i.s, %bb.l ]
  call void @_ZN5arrow6FutureINS_8internal5EmptyEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  resume { ptr, i32 } %.pn.i

"_ZZN5arrow8internal8Executor6SubmitIZNS_2io13FileInterface10CloseAsyncEvE3$_0JENS_6FutureINS0_5EmptyEEEEENS_6ResultIT1_EENS0_9TaskHintsENS_9StopTokenEOT_DpOT0_EN3$_0clERKNS_6StatusE.exit": ; preds = %_ZN5arrow6StatusD2Ev.exit.i, %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret void
end_hunk_5
begin_hunk_6_@"_ZNSt5_BindIFN5arrow6detail14ContinueFutureENS0_6FutureISt10shared_ptrIKNS0_16KeyValueMetadataEEEEZNS0_2io11InputStream17ReadMetadataAsyncERKNS9_9IOContextEE3$_0EED2Ev":bb.a
  %.not.i.i.i.i1.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i.i.i1.i, label %"_ZNSt11_Tuple_implILm0EJN5arrow6FutureISt10shared_ptrIKNS0_16KeyValueMetadataEEEEZNS0_2io11InputStream17ReadMetadataAsyncERKNS7_9IOContextEE3$_0EED2Ev.exit", label %bb.h

bb.h:                                             ; preds = %_ZNSt10_Head_baseILm0EN5arrow6FutureISt10shared_ptrIKNS0_16KeyValueMetadataEEEELb0EED2Ev.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %.val.i, i64 8 ; 4 uses
  %i.t = load atomic i64, ptr %i.s acquire, align 8 ; 2 uses
  %i.u = icmp eq i64 %i.t, 4294967297
  %i.v = trunc i64 %i.t to i32                    ; 2 uses
  br i1 %i.u, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.s, align 8, !tbaa !27
  %i.w = getelementptr inbounds nuw i8, ptr %.val.i, i64 12
  store i32 0, ptr %i.w, align 4, !tbaa !29
  %i.x = load ptr, ptr %.val.i, align 8, !tbaa !30
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %.val.i) #32, !inline_history !446
  %i.aa = load ptr, ptr %.val.i, align 8, !tbaa !30
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %.val.i) #32, !inline_history !446
  br label %"_ZNSt11_Tuple_implILm0EJN5arrow6FutureISt10shared_ptrIKNS0_16KeyValueMetadataEEEEZNS0_2io11InputStream17ReadMetadataAsyncERKNS7_9IOContextEE3$_0EED2Ev.exit"

bb.j:                                             ; preds = %bb.h
  %i.ad = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.ad, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = add nsw i32 %i.v, -1
  store i32 %i.ae, ptr %i.s, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

bb.l:                                             ; preds = %bb.j
  %i.af = atomicrmw volatile add ptr %i.s, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i4.i = phi i32 [ %i.v, %bb.k ], [ %i.af, %bb.l ]
  %i.ag = icmp eq i32 %.0.i.i.i.i.i.i4.i, 1
  br i1 %i.ag, label %bb.m, label %"_ZNSt11_Tuple_implILm0EJN5arrow6FutureISt10shared_ptrIKNS0_16KeyValueMetadataEEEEZNS0_2io11InputStream17ReadMetadataAsyncERKNS7_9IOContextEE3$_0EED2Ev.exit", !prof !34

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.val.i) #32
  br label %"_ZNSt11_Tuple_implILm0EJN5arrow6FutureISt10shared_ptrIKNS0_16KeyValueMetadataEEEEZNS0_2io11InputStream17ReadMetadataAsyncERKNS7_9IOContextEE3$_0EED2Ev.exit"

"_ZNSt11_Tuple_implILm0EJN5arrow6FutureISt10shared_ptrIKNS0_16KeyValueMetadataEEEEZNS0_2io11InputStream17ReadMetadataAsyncERKNS7_9IOContextEE3$_0EED2Ev.exit": ; preds = %_ZNSt10_Head_baseILm0EN5arrow6FutureISt10shared_ptrIKNS0_16KeyValueMetadataEEEELb0EED2Ev.exit.i, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.m
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultINS_6FutureISt10shared_ptrIKNS_16KeyValueMetadataEEEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator.92", align 1 ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  store ptr null, ptr %0, align 8, !tbaa !81
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.h

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !81
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.g, !prof !34

bb.b:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.23, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  invoke void @_ZNK5arrow6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5arrow8internal14DieWithMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.c = load ptr, ptr %2, align 8, !tbaa !127    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.f = load i64, ptr %i.d, align 8, !tbaa !33
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.h = load ptr, ptr %5, align 8, !tbaa !127    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !33
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  %i.m = load ptr, ptr %3, align 8, !tbaa !127    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.p = load i64, ptr %i.n, align 8, !tbaa !33
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZN5arrow6StatusC2ERKS0_.exit
  ret void

bb.h:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #33
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6FutureISt10shared_ptrIKNS_16KeyValueMetadataEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !27
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !29
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #32, !inline_history !252
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #32, !inline_history !252
  br label %_ZNSt12__shared_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !34

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #32
  br label %_ZNSt12__shared_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @"_ZN5arrow8internal6FnOnceIFvvEE6FnImplISt5_BindIFNS_6detail14ContinueFutureENS_6FutureISt10shared_ptrIKNS_16KeyValueMetadataEEEEZNS_2io11InputStream17ReadMetadataAsyncERKNSE_9IOContextEE3$_0EEED2Ev"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) initializes((0, 8)) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN5arrow8internal6FnOnceIFvvEE6FnImplISt5_BindIFNS_6detail14ContinueFutureENS_6FutureISt10shared_ptrIKNS_16KeyValueMetadataEEEEZNS_2io11InputStream17ReadMetadataAsyncERKNSE_9IOContextEE3$_0EEEE", i64 16), ptr %0, align 8, !tbaa !30
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26   ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt10_Head_baseILm0EN5arrow6FutureISt10shared_ptrIKNS0_16KeyValueMetadataEEEELb0EED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !27
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !29
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #32, !inline_history !447
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #32, !inline_history !447
  br label %_ZNSt10_Head_baseILm0EN5arrow6FutureISt10shared_ptrIKNS0_16KeyValueMetadataEEEELb0EED2Ev.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt10_Head_baseILm0EN5arrow6FutureISt10shared_ptrIKNS0_16KeyValueMetadataEEEELb0EED2Ev.exit.i.i, !prof !34

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #32
  br label %_ZNSt10_Head_baseILm0EN5arrow6FutureISt10shared_ptrIKNS0_16KeyValueMetadataEEEELb0EED2Ev.exit.i.i

_ZNSt10_Head_baseILm0EN5arrow6FutureISt10shared_ptrIKNS0_16KeyValueMetadataEEEELb0EED2Ev.exit.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.c, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i.i = load ptr, ptr %i.r, align 8, !tbaa !26 ; 8 uses
  %.not.i.i.i.i1.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not.i.i.i.i1.i.i, label %"_ZNSt5_BindIFN5arrow6detail14ContinueFutureENS0_6FutureISt10shared_ptrIKNS0_16KeyValueMetadataEEEEZNS0_2io11InputStream17ReadMetadataAsyncERKNS9_9IOContextEE3$_0EED2Ev.exit", label %bb.h

bb.h:                                             ; preds = %_ZNSt10_Head_baseILm0EN5arrow6FutureISt10shared_ptrIKNS0_16KeyValueMetadataEEEELb0EED2Ev.exit.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8 ; 4 uses
  %i.t = load atomic i64, ptr %i.s acquire, align 8 ; 2 uses
  %i.u = icmp eq i64 %i.t, 4294967297
  %i.v = trunc i64 %i.t to i32                    ; 2 uses
  br i1 %i.u, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.s, align 8, !tbaa !27
  %i.w = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 12
  store i32 0, ptr %i.w, align 4, !tbaa !29
  %i.x = load ptr, ptr %.val.i.i, align 8, !tbaa !30
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %.val.i.i) #32, !inline_history !448
  %i.aa = load ptr, ptr %.val.i.i, align 8, !tbaa !30
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %.val.i.i) #32, !inline_history !448
  br label %"_ZNSt5_BindIFN5arrow6detail14ContinueFutureENS0_6FutureISt10shared_ptrIKNS0_16KeyValueMetadataEEEEZNS0_2io11InputStream17ReadMetadataAsyncERKNS9_9IOContextEE3$_0EED2Ev.exit"

bb.j:                                             ; preds = %bb.h
  %i.ad = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i.i.i2.i.i = icmp eq i8 %i.ad, 0
  br i1 %.not.i.i.i.i.i2.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = add nsw i32 %i.v, -1
  store i32 %i.ae, ptr %i.s, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i

bb.l:                                             ; preds = %bb.j
  %i.af = atomicrmw volatile add ptr %i.s, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i4.i.i = phi i32 [ %i.v, %bb.k ], [ %i.af, %bb.l ]
  %i.ag = icmp eq i32 %.0.i.i.i.i.i.i4.i.i, 1
  br i1 %i.ag, label %bb.m, label %"_ZNSt5_BindIFN5arrow6detail14ContinueFutureENS0_6FutureISt10shared_ptrIKNS0_16KeyValueMetadataEEEEZNS0_2io11InputStream17ReadMetadataAsyncERKNS9_9IOContextEE3$_0EED2Ev.exit", !prof !34

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.val.i.i) #32
  br label %"_ZNSt5_BindIFN5arrow6detail14ContinueFutureENS0_6FutureISt10shared_ptrIKNS0_16KeyValueMetadataEEEEZNS0_2io11InputStream17ReadMetadataAsyncERKNS9_9IOContextEE3$_0EED2Ev.exit"

"_ZNSt5_BindIFN5arrow6detail14ContinueFutureENS0_6FutureISt10shared_ptrIKNS0_16KeyValueMetadataEEEEZNS0_2io11InputStream17ReadMetadataAsyncERKNS9_9IOContextEE3$_0EED2Ev.exit": ; preds = %_ZNSt10_Head_baseILm0EN5arrow6FutureISt10shared_ptrIKNS0_16KeyValueMetadataEEEELb0EED2Ev.exit.i.i, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i, %bb.m
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @"_ZN5arrow8internal6FnOnceIFvvEE6FnImplISt5_BindIFNS_6detail14ContinueFutureENS_6FutureISt10shared_ptrIKNS_16KeyValueMetadataEEEEZNS_2io11InputStream17ReadMetadataAsyncERKNSE_9IOContextEE3$_0EEED0Ev"(ptr noundef nonnull align 8 dereferenceable(48) initializes((0, 8)) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN5arrow8internal6FnOnceIFvvEE6FnImplISt5_BindIFNS_6detail14ContinueFutureENS_6FutureISt10shared_ptrIKNS_16KeyValueMetadataEEEEZNS_2io11InputStream17ReadMetadataAsyncERKNSE_9IOContextEE3$_0EEEE", i64 16), ptr %0, align 8, !tbaa !30
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26   ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt10_Head_baseILm0EN5arrow6FutureISt10shared_ptrIKNS0_16KeyValueMetadataEEEELb0EED2Ev.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !27
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !29
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #32, !inline_history !449
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #32, !inline_history !449
  br label %_ZNSt10_Head_baseILm0EN5arrow6FutureISt10shared_ptrIKNS0_16KeyValueMetadataEEEELb0EED2Ev.exit.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt10_Head_baseILm0EN5arrow6FutureISt10shared_ptrIKNS0_16KeyValueMetadataEEEELb0EED2Ev.exit.i.i.i, !prof !34

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #32, !inline_history !450
  br label %_ZNSt10_Head_baseILm0EN5arrow6FutureISt10shared_ptrIKNS0_16KeyValueMetadataEEEELb0EED2Ev.exit.i.i.i

_ZNSt10_Head_baseILm0EN5arrow6FutureISt10shared_ptrIKNS0_16KeyValueMetadataEEEELb0EED2Ev.exit.i.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.c, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i.i.i = load ptr, ptr %i.r, align 8, !tbaa !26 ; 8 uses
  %.not.i.i.i.i1.i.i.i = icmp eq ptr %.val.i.i.i, null
  br i1 %.not.i.i.i.i1.i.i.i, label %"_ZN5arrow8internal6FnOnceIFvvEE6FnImplISt5_BindIFNS_6detail14ContinueFutureENS_6FutureISt10shared_ptrIKNS_16KeyValueMetadataEEEEZNS_2io11InputStream17ReadMetadataAsyncERKNSE_9IOContextEE3$_0EEED2Ev.exit", label %bb.h

bb.h:                                             ; preds = %_ZNSt10_Head_baseILm0EN5arrow6FutureISt10shared_ptrIKNS0_16KeyValueMetadataEEEELb0EED2Ev.exit.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 8 ; 4 uses
  %i.t = load atomic i64, ptr %i.s acquire, align 8 ; 2 uses
  %i.u = icmp eq i64 %i.t, 4294967297
  %i.v = trunc i64 %i.t to i32                    ; 2 uses
  br i1 %i.u, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.s, align 8, !tbaa !27
  %i.w = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 12
  store i32 0, ptr %i.w, align 4, !tbaa !29
  %i.x = load ptr, ptr %.val.i.i.i, align 8, !tbaa !30
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %.val.i.i.i) #32, !inline_history !451
  %i.aa = load ptr, ptr %.val.i.i.i, align 8, !tbaa !30
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %.val.i.i.i) #32, !inline_history !451
  br label %"_ZN5arrow8internal6FnOnceIFvvEE6FnImplISt5_BindIFNS_6detail14ContinueFutureENS_6FutureISt10shared_ptrIKNS_16KeyValueMetadataEEEEZNS_2io11InputStream17ReadMetadataAsyncERKNSE_9IOContextEE3$_0EEED2Ev.exit"

bb.j:                                             ; preds = %bb.h
  %i.ad = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i.i.i2.i.i.i = icmp eq i8 %i.ad, 0
  br i1 %.not.i.i.i.i.i2.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = add nsw i32 %i.v, -1
  store i32 %i.ae, ptr %i.s, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.af = atomicrmw volatile add ptr %i.s, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i4.i.i.i = phi i32 [ %i.v, %bb.k ], [ %i.af, %bb.l ]
  %i.ag = icmp eq i32 %.0.i.i.i.i.i.i4.i.i.i, 1
  br i1 %i.ag, label %bb.m, label %"_ZN5arrow8internal6FnOnceIFvvEE6FnImplISt5_BindIFNS_6detail14ContinueFutureENS_6FutureISt10shared_ptrIKNS_16KeyValueMetadataEEEEZNS_2io11InputStream17ReadMetadataAsyncERKNSE_9IOContextEE3$_0EEED2Ev.exit", !prof !34

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.val.i.i.i) #32, !inline_history !450
  br label %"_ZN5arrow8internal6FnOnceIFvvEE6FnImplISt5_BindIFNS_6detail14ContinueFutureENS_6FutureISt10shared_ptrIKNS_16KeyValueMetadataEEEEZNS_2io11InputStream17ReadMetadataAsyncERKNSE_9IOContextEE3$_0EEED2Ev.exit"

"_ZN5arrow8internal6FnOnceIFvvEE6FnImplISt5_BindIFNS_6detail14ContinueFutureENS_6FutureISt10shared_ptrIKNS_16KeyValueMetadataEEEEZNS_2io11InputStream17ReadMetadataAsyncERKNSE_9IOContextEE3$_0EEED2Ev.exit": ; preds = %_ZNSt10_Head_baseILm0EN5arrow6FutureISt10shared_ptrIKNS0_16KeyValueMetadataEEEELb0EED2Ev.exit.i.i.i, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i.i, %bb.m
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #36
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZN5arrow8internal6FnOnceIFvvEE6FnImplISt5_BindIFNS_6detail14ContinueFutureENS_6FutureISt10shared_ptrIKNS_16KeyValueMetadataEEEEZNS_2io11InputStream17ReadMetadataAsyncERKNSE_9IOContextEE3$_0EEE6invokeEv"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.arrow::Result.19", align 8  ; 9 uses
  %2 = alloca %"class.arrow::Future.26", align 16 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val3.i.i = load ptr, ptr %i.c, align 8, !tbaa !26 ; 2 uses
  %i.e = load <2 x ptr>, ptr %i.b, align 8, !tbaa !14
  store <2 x ptr> %i.e, ptr %2, align 16, !tbaa !14
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.val3.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN5arrow6FutureISt10shared_ptrIKNS_16KeyValueMetadataEEEC2ERKS5_.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.val3.i.i, i64 8 ; 3 uses
  %i.g = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.g, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.f, align 4, !tbaa !3
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr %i.f, align 4, !tbaa !3
  br label %_ZN5arrow6FutureISt10shared_ptrIKNS_16KeyValueMetadataEEEC2ERKS5_.exit.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.j = atomicrmw volatile add ptr %i.f, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5arrow6FutureISt10shared_ptrIKNS_16KeyValueMetadataEEEC2ERKS5_.exit.i.i.i.i

_ZN5arrow6FutureISt10shared_ptrIKNS_16KeyValueMetadataEEEC2ERKS5_.exit.i.i.i.i: ; preds = %bb.d, %bb.c, %bb.a
  %.val.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !134 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.k = load ptr, ptr %.val.i.i.i.i, align 8, !tbaa !30, !noalias !452
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !noalias !452
  invoke void %i.m(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.19") align 8 %1, ptr noundef nonnull align 8 dereferenceable(8) %.val.i.i.i.i)
          to label %.noexc.i.i.i.i unwind label %bb.v, !inline_history !455

.noexc.i.i.i.i:                                   ; preds = %_ZN5arrow6FutureISt10shared_ptrIKNS_16KeyValueMetadataEEEC2ERKS5_.exit.i.i.i.i
  invoke void @_ZN5arrow6FutureISt10shared_ptrIKNS_16KeyValueMetadataEEE12MarkFinishedENS_6ResultIS4_EE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %1)
          to label %bb.e unwind label %bb.n

bb.e:                                             ; preds = %.noexc.i.i.i.i
  %i.n = load ptr, ptr %1, align 8, !tbaa !81     ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.f, label %_ZN5arrow6ResultISt10shared_ptrIKNS_16KeyValueMetadataEEE7DestroyEv.exit.thread.i.i.i.i.i.i, !prof !89

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !26   ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrIKNS_16KeyValueMetadataEEE7DestroyEv.exit.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  %i.s = load atomic i64, ptr %i.r acquire, align 8 ; 2 uses
  %i.t = icmp eq i64 %i.s, 4294967297
  %i.u = trunc i64 %i.s to i32                    ; 2 uses
  br i1 %i.t, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.r, align 8, !tbaa !27
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !29
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !30
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #32, !inline_history !456
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !30
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #32, !inline_history !456
  br label %_ZN5arrow6ResultISt10shared_ptrIKNS_16KeyValueMetadataEEE7DestroyEv.exit.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = add nsw i32 %i.u, -1
  store i32 %i.ad, ptr %i.r, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.ae = atomicrmw volatile add ptr %i.r, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.u, %bb.j ], [ %i.ae, %bb.k ]
  %i.af = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.af, label %bb.l, label %_ZN5arrow6ResultISt10shared_ptrIKNS_16KeyValueMetadataEEE7DestroyEv.exit.i.i.i.i.i.i, !prof !34

end_hunk_6
begin_hunk_7_@_ZN5arrow6FutureISt10shared_ptrIKNS_16KeyValueMetadataEEE14DoMarkFinishedENS_6ResultIS4_EE:bb.a
  br i1 %.not.i.i.i.i.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrIKNS_16KeyValueMetadataEEEC2IS4_vEEONS0_IT_EE.exit.i
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !14
  invoke void %i.t(ptr noundef nonnull %i.s)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #33
  unreachable

bb.h:                                             ; preds = %bb.f, %_ZN5arrow6ResultISt10shared_ptrIKNS_16KeyValueMetadataEEEC2IS4_vEEONS0_IT_EE.exit.i
  store ptr @_ZZN5arrow6FutureISt10shared_ptrIKNS_16KeyValueMetadataEEE9SetResultENS_6ResultIS4_EEENUlPvE_8__invokeES8_, ptr %i.q, align 8, !tbaa !14
  %i.w = load ptr, ptr %2, align 8, !tbaa !81     ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.i, label %_ZN5arrow6ResultISt10shared_ptrIKNS_16KeyValueMetadataEEE7DestroyEv.exit.thread.i, !prof !89

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !26   ; 8 uses
  %.not.i.i.i.i.i2 = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i.i2, label %_ZN5arrow6ResultISt10shared_ptrIKNS_16KeyValueMetadataEEE7DestroyEv.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 4 uses
  %i.ab = load atomic i64, ptr %i.aa acquire, align 8 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 4294967297
  %i.ad = trunc i64 %i.ab to i32                  ; 2 uses
  br i1 %i.ac, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.aa, align 8, !tbaa !27
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  store i32 0, ptr %i.ae, align 4, !tbaa !29
  %i.af = load ptr, ptr %i.z, align 8, !tbaa !30
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #32, !inline_history !461
  %i.ai = load ptr, ptr %i.z, align 8, !tbaa !30
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8
  call void %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #32, !inline_history !461
  br label %_ZN5arrow6ResultISt10shared_ptrIKNS_16KeyValueMetadataEEE7DestroyEv.exit.i

bb.l:                                             ; preds = %bb.j
  %i.al = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i.i.i.i = icmp eq i8 %i.al, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = add nsw i32 %i.ad, -1
  store i32 %i.am, ptr %i.aa, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.an = atomicrmw volatile add ptr %i.aa, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ad, %bb.m ], [ %i.an, %bb.n ]
  %i.ao = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ao, label %bb.o, label %_ZN5arrow6ResultISt10shared_ptrIKNS_16KeyValueMetadataEEE7DestroyEv.exit.i, !prof !34

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #32
  br label %_ZN5arrow6ResultISt10shared_ptrIKNS_16KeyValueMetadataEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrIKNS_16KeyValueMetadataEEE7DestroyEv.exit.i: ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.k, %bb.i
  %.pr.i = load ptr, ptr %2, align 8, !tbaa !81   ; 2 uses
  %.not.i.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i, label %_ZN5arrow6ResultISt10shared_ptrIKNS_16KeyValueMetadataEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrIKNS_16KeyValueMetadataEEE7DestroyEv.exit.thread.i, !prof !118

_ZN5arrow6ResultISt10shared_ptrIKNS_16KeyValueMetadataEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrIKNS_16KeyValueMetadataEEE7DestroyEv.exit.i, %bb.h
  %i.ap = phi ptr [ %.pr.i, %_ZN5arrow6ResultISt10shared_ptrIKNS_16KeyValueMetadataEEE7DestroyEv.exit.i ], [ %i.w, %bb.h ]
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !90, !range !100, !noundef !101
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %_ZN5arrow6ResultISt10shared_ptrIKNS_16KeyValueMetadataEEED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrIKNS_16KeyValueMetadataEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #32
  br label %_ZN5arrow6ResultISt10shared_ptrIKNS_16KeyValueMetadataEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrIKNS_16KeyValueMetadataEEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrIKNS_16KeyValueMetadataEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrIKNS_16KeyValueMetadataEEE7DestroyEv.exit.thread.i, %bb.p
  %i.at = load ptr, ptr %0, align 8, !tbaa !67    ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !14
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !81
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %bb.q, label %bb.s, !prof !89

bb.q:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrIKNS_16KeyValueMetadataEEED2Ev.exit
  call void @_ZN5arrow10FutureImpl12MarkFinishedEv(ptr noundef nonnull align 8 dereferenceable(72) %i.at)
  br label %bb.t

bb.r:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrIKNS_16KeyValueMetadataEEEC2IS4_vEEONS0_IT_EE.exit
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow6ResultISt10shared_ptrIKNS_16KeyValueMetadataEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #32
  resume { ptr, i32 } %i.ay

bb.s:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrIKNS_16KeyValueMetadataEEED2Ev.exit
  call void @_ZN5arrow10FutureImpl10MarkFailedEv(ptr noundef nonnull align 8 dereferenceable(72) %i.at)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.q
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN5arrow6FutureISt10shared_ptrIKNS_16KeyValueMetadataEEE9SetResultENS_6ResultIS4_EEENUlPvE_8__invokeES8_(ptr noundef %0) #25 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %_ZZN5arrow6FutureISt10shared_ptrIKNS_16KeyValueMetadataEEE9SetResultENS_6ResultIS4_EEENKUlPvE_clES8_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !81     ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %_ZN5arrow6ResultISt10shared_ptrIKNS_16KeyValueMetadataEEE7DestroyEv.exit.thread.i.i, !prof !89

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !26   ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrIKNS_16KeyValueMetadataEEE7DestroyEv.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.f, align 8, !tbaa !27
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !29
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !30
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #32, !inline_history !469
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !30
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #32, !inline_history !469
  br label %_ZN5arrow6ResultISt10shared_ptrIKNS_16KeyValueMetadataEEE7DestroyEv.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.g ], [ %i.s, %bb.h ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.i, label %_ZN5arrow6ResultISt10shared_ptrIKNS_16KeyValueMetadataEEE7DestroyEv.exit.i.i, !prof !34

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #32
  br label %_ZN5arrow6ResultISt10shared_ptrIKNS_16KeyValueMetadataEEE7DestroyEv.exit.i.i

_ZN5arrow6ResultISt10shared_ptrIKNS_16KeyValueMetadataEEE7DestroyEv.exit.i.i: ; preds = %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.e, %bb.c
  %.pr.i.i = load ptr, ptr %0, align 8, !tbaa !81 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.pr.i.i, null
  br i1 %.not.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrIKNS_16KeyValueMetadataEEED2Ev.exit.i, label %_ZN5arrow6ResultISt10shared_ptrIKNS_16KeyValueMetadataEEE7DestroyEv.exit.thread.i.i, !prof !118

_ZN5arrow6ResultISt10shared_ptrIKNS_16KeyValueMetadataEEE7DestroyEv.exit.thread.i.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrIKNS_16KeyValueMetadataEEE7DestroyEv.exit.i.i, %bb.b
  %i.u = phi ptr [ %.pr.i.i, %_ZN5arrow6ResultISt10shared_ptrIKNS_16KeyValueMetadataEEE7DestroyEv.exit.i.i ], [ %i.b, %bb.b ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %i.w = load i8, ptr %i.v, align 1, !tbaa !90, !range !100, !noundef !101
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %_ZN5arrow6ResultISt10shared_ptrIKNS_16KeyValueMetadataEEED2Ev.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrIKNS_16KeyValueMetadataEEE7DestroyEv.exit.thread.i.i
  tail call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #32
  br label %_ZN5arrow6ResultISt10shared_ptrIKNS_16KeyValueMetadataEEED2Ev.exit.i

_ZN5arrow6ResultISt10shared_ptrIKNS_16KeyValueMetadataEEED2Ev.exit.i: ; preds = %bb.j, %_ZN5arrow6ResultISt10shared_ptrIKNS_16KeyValueMetadataEEE7DestroyEv.exit.thread.i.i, %_ZN5arrow6ResultISt10shared_ptrIKNS_16KeyValueMetadataEEE7DestroyEv.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #36
  br label %_ZZN5arrow6FutureISt10shared_ptrIKNS_16KeyValueMetadataEEE9SetResultENS_6ResultIS4_EEENKUlPvE_clES8_.exit

_ZZN5arrow6FutureISt10shared_ptrIKNS_16KeyValueMetadataEEE9SetResultENS_6ResultIS4_EEENKUlPvE_clES8_.exit: ; preds = %bb.a, %_ZN5arrow6ResultISt10shared_ptrIKNS_16KeyValueMetadataEEED2Ev.exit.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @"_ZN5arrow8internal6FnOnceIFvRKNS_6StatusEEE6FnImplIZNS0_8Executor6SubmitIZNS_2io11InputStream17ReadMetadataAsyncERKNSA_9IOContextEE3$_0JENS_6FutureISt10shared_ptrIKNS_16KeyValueMetadataEEEEEENS_6ResultIT1_EENS0_9TaskHintsENS_9StopTokenEOT_DpOT0_E3$_0ED2Ev"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN5arrow8internal6FnOnceIFvRKNS_6StatusEEE6FnImplIZNS0_8Executor6SubmitIZNS_2io11InputStream17ReadMetadataAsyncERKNSA_9IOContextEE3$_0JENS_6FutureISt10shared_ptrIKNS_16KeyValueMetadataEEEEEENS_6ResultIT1_EENS0_9TaskHintsENS_9StopTokenEOT_DpOT0_E3$_0EE", i64 16), ptr %0, align 8, !tbaa !30
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.a, align 8, !tbaa !39  ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %.val, null
  br i1 %.not.i.i.i.i, label %"_ZZN5arrow8internal8Executor6SubmitIZNS_2io11InputStream17ReadMetadataAsyncERKNS3_9IOContextEE3$_0JENS_6FutureISt10shared_ptrIKNS_16KeyValueMetadataEEEEEENS_6ResultIT1_EENS0_9TaskHintsENS_9StopTokenEOT_DpOT0_EN3$_0D2Ev.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 12 ; 3 uses
  %i.c = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i.i.i = icmp eq i8 %i.c, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr %i.b, align 4, !tbaa !3    ; 2 uses
  %i.e = add nsw i32 %i.d, -1
  store i32 %i.e, ptr %i.b, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.f = atomicrmw volatile add ptr %i.b, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i.i.i.i = phi i32 [ %i.d, %bb.c ], [ %i.f, %bb.d ]
  %i.g = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.g, label %bb.e, label %"_ZZN5arrow8internal8Executor6SubmitIZNS_2io11InputStream17ReadMetadataAsyncERKNS3_9IOContextEE3$_0JENS_6FutureISt10shared_ptrIKNS_16KeyValueMetadataEEEEEENS_6ResultIT1_EENS0_9TaskHintsENS_9StopTokenEOT_DpOT0_EN3$_0D2Ev.exit"

bb.e:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  %i.h = load ptr, ptr %.val, align 8, !tbaa !30
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %.val) #32, !inline_history !470
  br label %"_ZZN5arrow8internal8Executor6SubmitIZNS_2io11InputStream17ReadMetadataAsyncERKNS3_9IOContextEE3$_0JENS_6FutureISt10shared_ptrIKNS_16KeyValueMetadataEEEEEENS_6ResultIT1_EENS0_9TaskHintsENS_9StopTokenEOT_DpOT0_EN3$_0D2Ev.exit"

"_ZZN5arrow8internal8Executor6SubmitIZNS_2io11InputStream17ReadMetadataAsyncERKNS3_9IOContextEE3$_0JENS_6FutureISt10shared_ptrIKNS_16KeyValueMetadataEEEEEENS_6ResultIT1_EENS0_9TaskHintsENS_9StopTokenEOT_DpOT0_EN3$_0D2Ev.exit": ; preds = %bb.a, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.e
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @"_ZN5arrow8internal6FnOnceIFvRKNS_6StatusEEE6FnImplIZNS0_8Executor6SubmitIZNS_2io11InputStream17ReadMetadataAsyncERKNSA_9IOContextEE3$_0JENS_6FutureISt10shared_ptrIKNS_16KeyValueMetadataEEEEEENS_6ResultIT1_EENS0_9TaskHintsENS_9StopTokenEOT_DpOT0_E3$_0ED0Ev"(ptr noundef nonnull align 8 dereferenceable(24) initializes((0, 8)) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN5arrow8internal6FnOnceIFvRKNS_6StatusEEE6FnImplIZNS0_8Executor6SubmitIZNS_2io11InputStream17ReadMetadataAsyncERKNSA_9IOContextEE3$_0JENS_6FutureISt10shared_ptrIKNS_16KeyValueMetadataEEEEEENS_6ResultIT1_EENS0_9TaskHintsENS_9StopTokenEOT_DpOT0_E3$_0EE", i64 16), ptr %0, align 8, !tbaa !30
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !39 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i.i.i.i, label %"_ZN5arrow8internal6FnOnceIFvRKNS_6StatusEEE6FnImplIZNS0_8Executor6SubmitIZNS_2io11InputStream17ReadMetadataAsyncERKNSA_9IOContextEE3$_0JENS_6FutureISt10shared_ptrIKNS_16KeyValueMetadataEEEEEENS_6ResultIT1_EENS0_9TaskHintsENS_9StopTokenEOT_DpOT0_E3$_0ED2Ev.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.val.i, i64 12 ; 3 uses
  %i.c = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i.i.i.i = icmp eq i8 %i.c, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr %i.b, align 4, !tbaa !3    ; 2 uses
  %i.e = add nsw i32 %i.d, -1
  store i32 %i.e, ptr %i.b, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.f = atomicrmw volatile add ptr %i.b, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.d, %bb.c ], [ %i.f, %bb.d ]
  %i.g = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.g, label %bb.e, label %"_ZN5arrow8internal6FnOnceIFvRKNS_6StatusEEE6FnImplIZNS0_8Executor6SubmitIZNS_2io11InputStream17ReadMetadataAsyncERKNSA_9IOContextEE3$_0JENS_6FutureISt10shared_ptrIKNS_16KeyValueMetadataEEEEEENS_6ResultIT1_EENS0_9TaskHintsENS_9StopTokenEOT_DpOT0_E3$_0ED2Ev.exit"

bb.e:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  %i.h = load ptr, ptr %.val.i, align 8, !tbaa !30
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %.val.i) #32, !inline_history !471
  br label %"_ZN5arrow8internal6FnOnceIFvRKNS_6StatusEEE6FnImplIZNS0_8Executor6SubmitIZNS_2io11InputStream17ReadMetadataAsyncERKNSA_9IOContextEE3$_0JENS_6FutureISt10shared_ptrIKNS_16KeyValueMetadataEEEEEENS_6ResultIT1_EENS0_9TaskHintsENS_9StopTokenEOT_DpOT0_E3$_0ED2Ev.exit"

"_ZN5arrow8internal6FnOnceIFvRKNS_6StatusEEE6FnImplIZNS0_8Executor6SubmitIZNS_2io11InputStream17ReadMetadataAsyncERKNSA_9IOContextEE3$_0JENS_6FutureISt10shared_ptrIKNS_16KeyValueMetadataEEEEEENS_6ResultIT1_EENS0_9TaskHintsENS_9StopTokenEOT_DpOT0_E3$_0ED2Ev.exit": ; preds = %bb.a, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #36
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZN5arrow8internal6FnOnceIFvRKNS_6StatusEEE6FnImplIZNS0_8Executor6SubmitIZNS_2io11InputStream17ReadMetadataAsyncERKNSA_9IOContextEE3$_0JENS_6FutureISt10shared_ptrIKNS_16KeyValueMetadataEEEEEENS_6ResultIT1_EENS0_9TaskHintsENS_9StopTokenEOT_DpOT0_E3$_0E6invokeES4_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.arrow::Future.26", align 8  ; 9 uses
  %3 = alloca %"class.arrow::Result.19", align 8  ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !472)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !39, !noalias !475 ; 5 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5arrow10WeakFutureISt10shared_ptrIKNS_16KeyValueMetadataEEE3getEv.exit.thread.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.e = load atomic i32, ptr %i.d monotonic, align 8, !noalias !475
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.06.i.i.i.i.i.i.i = phi i32 [ %i.e, %bb.b ], [ %i.i, %bb.d ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i.i = icmp eq i32 %.06.i.i.i.i.i.i.i, 0
  br i1 %.not.not.not.i.not.i.i.i.i.i.i, label %_ZN5arrow10WeakFutureISt10shared_ptrIKNS_16KeyValueMetadataEEE3getEv.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = add nsw i32 %.06.i.i.i.i.i.i.i, 1
  %i.g = cmpxchg weak ptr %i.d, i32 %.06.i.i.i.i.i.i.i, i32 %i.f acq_rel monotonic, align 8, !noalias !475 ; 2 uses
  %i.h = extractvalue { i32, i1 } %i.g, 1
  %i.i = extractvalue { i32, i1 } %i.g, 0
  br i1 %i.h, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i, label %bb.c, !llvm.loop !45

_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i: ; preds = %bb.d
  %i.j = load atomic i32, ptr %i.d monotonic, align 8, !noalias !475
  %.fr.i.i.i.i.i = freeze i32 %i.j
  %.not.i.i.i.i.i = icmp eq i32 %.fr.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow10WeakFutureISt10shared_ptrIKNS_16KeyValueMetadataEEE3getEv.exit.thread.i, label %_ZN5arrow10WeakFutureISt10shared_ptrIKNS_16KeyValueMetadataEEE3getEv.exit.i

_ZN5arrow10WeakFutureISt10shared_ptrIKNS_16KeyValueMetadataEEE3getEv.exit.thread.i: ; preds = %bb.c, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i, %bb.a
  %.sroa.3.1.i.ph.i = phi ptr [ null, %bb.a ], [ %i.c, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i ], [ null, %bb.c ] ; 2 uses
  store ptr null, ptr %2, align 8, !tbaa !67, !alias.scope !472
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.sroa.3.1.i.ph.i, ptr %i.k, align 8, !tbaa !26, !alias.scope !472
  br label %_ZN5arrow6ResultISt10shared_ptrIKNS_16KeyValueMetadataEEED2Ev.exit.i

_ZN5arrow10WeakFutureISt10shared_ptrIKNS_16KeyValueMetadataEEE3getEv.exit.i: ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i
  %i.l = load ptr, ptr %i.a, align 8, !noalias !475 ; 2 uses
  store ptr %i.l, ptr %2, align 8, !tbaa !67, !alias.scope !472
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %i.c, ptr %i.m, align 8, !tbaa !26, !alias.scope !472
  %.not.i.i.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.not.i, label %_ZN5arrow6ResultISt10shared_ptrIKNS_16KeyValueMetadataEEED2Ev.exit.thread.i, label %bb.e

bb.e:                                             ; preds = %_ZN5arrow10WeakFutureISt10shared_ptrIKNS_16KeyValueMetadataEEE3getEv.exit.i
  call void @_ZN5arrow6ResultISt10shared_ptrIKNS_16KeyValueMetadataEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %1) #32
  invoke void @_ZN5arrow6FutureISt10shared_ptrIKNS_16KeyValueMetadataEEE12MarkFinishedENS_6ResultIS4_EE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %3)
          to label %bb.f unwind label %bb.o

bb.f:                                             ; preds = %bb.e
  %i.n = load ptr, ptr %3, align 8, !tbaa !81     ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.g, label %_ZN5arrow6ResultISt10shared_ptrIKNS_16KeyValueMetadataEEE7DestroyEv.exit.thread.i.i, !prof !89

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !26   ; 8 uses
  %.not.i.i.i.i.i3.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i3.i, label %_ZN5arrow6ResultISt10shared_ptrIKNS_16KeyValueMetadataEEE7DestroyEv.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  %i.s = load atomic i64, ptr %i.r acquire, align 8 ; 2 uses
  %i.t = icmp eq i64 %i.s, 4294967297
  %i.u = trunc i64 %i.s to i32                    ; 2 uses
  br i1 %i.t, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.r, align 8, !tbaa !27
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !29
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !30
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #32, !inline_history !478
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !30
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #32, !inline_history !478
  br label %_ZN5arrow6ResultISt10shared_ptrIKNS_16KeyValueMetadataEEE7DestroyEv.exit.i.i

bb.j:                                             ; preds = %bb.h
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = add nsw i32 %i.u, -1
  store i32 %i.ad, ptr %i.r, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ae = atomicrmw volatile add ptr %i.r, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.u, %bb.k ], [ %i.ae, %bb.l ]
  %i.af = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.af, label %bb.m, label %_ZN5arrow6ResultISt10shared_ptrIKNS_16KeyValueMetadataEEE7DestroyEv.exit.i.i, !prof !34

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #32
  br label %_ZN5arrow6ResultISt10shared_ptrIKNS_16KeyValueMetadataEEE7DestroyEv.exit.i.i

_ZN5arrow6ResultISt10shared_ptrIKNS_16KeyValueMetadataEEE7DestroyEv.exit.i.i: ; preds = %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.i, %bb.g
  %.pr.i.i = load ptr, ptr %3, align 8, !tbaa !81 ; 2 uses
  %.not.i.i4.i = icmp eq ptr %.pr.i.i, null
  br i1 %.not.i.i4.i, label %_ZN5arrow6ResultISt10shared_ptrIKNS_16KeyValueMetadataEEED2Ev.exitthread-pre-split.i, label %_ZN5arrow6ResultISt10shared_ptrIKNS_16KeyValueMetadataEEE7DestroyEv.exit.thread.i.i, !prof !118

_ZN5arrow6ResultISt10shared_ptrIKNS_16KeyValueMetadataEEE7DestroyEv.exit.thread.i.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrIKNS_16KeyValueMetadataEEE7DestroyEv.exit.i.i, %bb.f
  %i.ag = phi ptr [ %.pr.i.i, %_ZN5arrow6ResultISt10shared_ptrIKNS_16KeyValueMetadataEEE7DestroyEv.exit.i.i ], [ %i.n, %bb.f ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !90, !range !100, !noundef !101
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %_ZN5arrow6ResultISt10shared_ptrIKNS_16KeyValueMetadataEEED2Ev.exitthread-pre-split.i, label %bb.n

bb.n:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrIKNS_16KeyValueMetadataEEE7DestroyEv.exit.thread.i.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #32
  br label %_ZN5arrow6ResultISt10shared_ptrIKNS_16KeyValueMetadataEEED2Ev.exitthread-pre-split.i

bb.o:                                             ; preds = %bb.e
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow6ResultISt10shared_ptrIKNS_16KeyValueMetadataEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #32
  call void @_ZN5arrow6FutureISt10shared_ptrIKNS_16KeyValueMetadataEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  resume { ptr, i32 } %i.ak

_ZN5arrow6ResultISt10shared_ptrIKNS_16KeyValueMetadataEEED2Ev.exitthread-pre-split.i: ; preds = %bb.n, %_ZN5arrow6ResultISt10shared_ptrIKNS_16KeyValueMetadataEEE7DestroyEv.exit.thread.i.i, %_ZN5arrow6ResultISt10shared_ptrIKNS_16KeyValueMetadataEEE7DestroyEv.exit.i.i
  %.pr.i = load ptr, ptr %i.m, align 8, !tbaa !26
  br label %_ZN5arrow6ResultISt10shared_ptrIKNS_16KeyValueMetadataEEED2Ev.exit.i

_ZN5arrow6ResultISt10shared_ptrIKNS_16KeyValueMetadataEEED2Ev.exit.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrIKNS_16KeyValueMetadataEEED2Ev.exitthread-pre-split.i, %_ZN5arrow10WeakFutureISt10shared_ptrIKNS_16KeyValueMetadataEEE3getEv.exit.thread.i
  %i.al = phi ptr [ %.pr.i, %_ZN5arrow6ResultISt10shared_ptrIKNS_16KeyValueMetadataEEED2Ev.exitthread-pre-split.i ], [ %.sroa.3.1.i.ph.i, %_ZN5arrow10WeakFutureISt10shared_ptrIKNS_16KeyValueMetadataEEE3getEv.exit.thread.i ] ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i.i, label %"_ZZN5arrow8internal8Executor6SubmitIZNS_2io11InputStream17ReadMetadataAsyncERKNS3_9IOContextEE3$_0JENS_6FutureISt10shared_ptrIKNS_16KeyValueMetadataEEEEEENS_6ResultIT1_EENS0_9TaskHintsENS_9StopTokenEOT_DpOT0_EN3$_0clERKNS_6StatusE.exit", label %_ZN5arrow6ResultISt10shared_ptrIKNS_16KeyValueMetadataEEED2Ev.exit.thread.i

_ZN5arrow6ResultISt10shared_ptrIKNS_16KeyValueMetadataEEED2Ev.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrIKNS_16KeyValueMetadataEEED2Ev.exit.i, %_ZN5arrow10WeakFutureISt10shared_ptrIKNS_16KeyValueMetadataEEE3getEv.exit.i
  %i.am = phi ptr [ %i.al, %_ZN5arrow6ResultISt10shared_ptrIKNS_16KeyValueMetadataEEED2Ev.exit.i ], [ %i.c, %_ZN5arrow10WeakFutureISt10shared_ptrIKNS_16KeyValueMetadataEEE3getEv.exit.i ] ; 7 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 4 uses
  %i.ao = load atomic i64, ptr %i.an acquire, align 8 ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 4294967297
  %i.aq = trunc i64 %i.ao to i32                  ; 2 uses
  br i1 %i.ap, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrIKNS_16KeyValueMetadataEEED2Ev.exit.thread.i
  store i32 0, ptr %i.an, align 8, !tbaa !27
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  store i32 0, ptr %i.ar, align 4, !tbaa !29
  %i.as = load ptr, ptr %i.am, align 8, !tbaa !30
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load ptr, ptr %i.at, align 8
  call void %i.au(ptr noundef nonnull align 8 dereferenceable(16) %i.am) #32, !inline_history !479
  %i.av = load ptr, ptr %i.am, align 8, !tbaa !30
end_hunk_7
begin_hunk_8_@pthread_mutex_unlock

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @"_ZNSt5_BindIFN5arrow6detail14ContinueFutureENS0_6FutureISt10shared_ptrINS0_6BufferEEEEZNS0_2io16RandomAccessFile9ReadAsyncERKNS8_9IOContextEllE3$_0EED2Ev"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26   ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10_Head_baseILm0EN5arrow6FutureISt10shared_ptrINS0_6BufferEEEELb0EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !27
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !29
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #32, !inline_history !510
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #32, !inline_history !510
  br label %_ZNSt10_Head_baseILm0EN5arrow6FutureISt10shared_ptrINS0_6BufferEEEELb0EED2Ev.exit.i

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt10_Head_baseILm0EN5arrow6FutureISt10shared_ptrINS0_6BufferEEEELb0EED2Ev.exit.i, !prof !34

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #32
  br label %_ZNSt10_Head_baseILm0EN5arrow6FutureISt10shared_ptrINS0_6BufferEEEELb0EED2Ev.exit.i

_ZNSt10_Head_baseILm0EN5arrow6FutureISt10shared_ptrINS0_6BufferEEEELb0EED2Ev.exit.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.c, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i = load ptr, ptr %i.r, align 8, !tbaa !26 ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i.i.i1.i, label %"_ZNSt11_Tuple_implILm0EJN5arrow6FutureISt10shared_ptrINS0_6BufferEEEEZNS0_2io16RandomAccessFile9ReadAsyncERKNS6_9IOContextEllE3$_0EED2Ev.exit", label %bb.h

bb.h:                                             ; preds = %_ZNSt10_Head_baseILm0EN5arrow6FutureISt10shared_ptrINS0_6BufferEEEELb0EED2Ev.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %.val.i, i64 8 ; 4 uses
  %i.t = load atomic i64, ptr %i.s acquire, align 8 ; 2 uses
  %i.u = icmp eq i64 %i.t, 4294967297
  %i.v = trunc i64 %i.t to i32                    ; 2 uses
  br i1 %i.u, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.s, align 8, !tbaa !27
  %i.w = getelementptr inbounds nuw i8, ptr %.val.i, i64 12
  store i32 0, ptr %i.w, align 4, !tbaa !29
  %i.x = load ptr, ptr %.val.i, align 8, !tbaa !30
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %.val.i) #32, !inline_history !511
  %i.aa = load ptr, ptr %.val.i, align 8, !tbaa !30
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %.val.i) #32, !inline_history !511
  br label %"_ZNSt11_Tuple_implILm0EJN5arrow6FutureISt10shared_ptrINS0_6BufferEEEEZNS0_2io16RandomAccessFile9ReadAsyncERKNS6_9IOContextEllE3$_0EED2Ev.exit"

bb.j:                                             ; preds = %bb.h
  %i.ad = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.ad, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = add nsw i32 %i.v, -1
  store i32 %i.ae, ptr %i.s, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

bb.l:                                             ; preds = %bb.j
  %i.af = atomicrmw volatile add ptr %i.s, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i4.i = phi i32 [ %i.v, %bb.k ], [ %i.af, %bb.l ]
  %i.ag = icmp eq i32 %.0.i.i.i.i.i.i4.i, 1
  br i1 %i.ag, label %bb.m, label %"_ZNSt11_Tuple_implILm0EJN5arrow6FutureISt10shared_ptrINS0_6BufferEEEEZNS0_2io16RandomAccessFile9ReadAsyncERKNS6_9IOContextEllE3$_0EED2Ev.exit", !prof !34

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.val.i) #32
  br label %"_ZNSt11_Tuple_implILm0EJN5arrow6FutureISt10shared_ptrINS0_6BufferEEEEZNS0_2io16RandomAccessFile9ReadAsyncERKNS6_9IOContextEllE3$_0EED2Ev.exit"

"_ZNSt11_Tuple_implILm0EJN5arrow6FutureISt10shared_ptrINS0_6BufferEEEEZNS0_2io16RandomAccessFile9ReadAsyncERKNS6_9IOContextEllE3$_0EED2Ev.exit": ; preds = %_ZNSt10_Head_baseILm0EN5arrow6FutureISt10shared_ptrINS0_6BufferEEEELb0EED2Ev.exit.i, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.m
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultINS_6FutureISt10shared_ptrINS_6BufferEEEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator.92", align 1 ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  store ptr null, ptr %0, align 8, !tbaa !81
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.h

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !81
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.g, !prof !34

bb.b:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.23, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  invoke void @_ZNK5arrow6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5arrow8internal14DieWithMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.c = load ptr, ptr %2, align 8, !tbaa !127    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.f = load i64, ptr %i.d, align 8, !tbaa !33
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.h = load ptr, ptr %5, align 8, !tbaa !127    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !33
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  %i.m = load ptr, ptr %3, align 8, !tbaa !127    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.p = load i64, ptr %i.n, align 8, !tbaa !33
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZN5arrow6StatusC2ERKS0_.exit
  ret void

bb.h:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #33
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @"_ZN5arrow8internal6FnOnceIFvvEE6FnImplISt5_BindIFNS_6detail14ContinueFutureENS_6FutureISt10shared_ptrINS_6BufferEEEEZNS_2io16RandomAccessFile9ReadAsyncERKNSD_9IOContextEllE3$_0EEED2Ev"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) initializes((0, 8)) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN5arrow8internal6FnOnceIFvvEE6FnImplISt5_BindIFNS_6detail14ContinueFutureENS_6FutureISt10shared_ptrINS_6BufferEEEEZNS_2io16RandomAccessFile9ReadAsyncERKNSD_9IOContextEllE3$_0EEEE", i64 16), ptr %0, align 8, !tbaa !30
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26   ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt10_Head_baseILm0EN5arrow6FutureISt10shared_ptrINS0_6BufferEEEELb0EED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !27
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !29
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #32, !inline_history !512
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #32, !inline_history !512
  br label %_ZNSt10_Head_baseILm0EN5arrow6FutureISt10shared_ptrINS0_6BufferEEEELb0EED2Ev.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt10_Head_baseILm0EN5arrow6FutureISt10shared_ptrINS0_6BufferEEEELb0EED2Ev.exit.i.i, !prof !34

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #32
  br label %_ZNSt10_Head_baseILm0EN5arrow6FutureISt10shared_ptrINS0_6BufferEEEELb0EED2Ev.exit.i.i

_ZNSt10_Head_baseILm0EN5arrow6FutureISt10shared_ptrINS0_6BufferEEEELb0EED2Ev.exit.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.c, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i.i = load ptr, ptr %i.r, align 8, !tbaa !26 ; 8 uses
  %.not.i.i.i.i1.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not.i.i.i.i1.i.i, label %"_ZNSt5_BindIFN5arrow6detail14ContinueFutureENS0_6FutureISt10shared_ptrINS0_6BufferEEEEZNS0_2io16RandomAccessFile9ReadAsyncERKNS8_9IOContextEllE3$_0EED2Ev.exit", label %bb.h

bb.h:                                             ; preds = %_ZNSt10_Head_baseILm0EN5arrow6FutureISt10shared_ptrINS0_6BufferEEEELb0EED2Ev.exit.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8 ; 4 uses
  %i.t = load atomic i64, ptr %i.s acquire, align 8 ; 2 uses
  %i.u = icmp eq i64 %i.t, 4294967297
  %i.v = trunc i64 %i.t to i32                    ; 2 uses
  br i1 %i.u, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.s, align 8, !tbaa !27
  %i.w = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 12
  store i32 0, ptr %i.w, align 4, !tbaa !29
  %i.x = load ptr, ptr %.val.i.i, align 8, !tbaa !30
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %.val.i.i) #32, !inline_history !513
  %i.aa = load ptr, ptr %.val.i.i, align 8, !tbaa !30
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %.val.i.i) #32, !inline_history !513
  br label %"_ZNSt5_BindIFN5arrow6detail14ContinueFutureENS0_6FutureISt10shared_ptrINS0_6BufferEEEEZNS0_2io16RandomAccessFile9ReadAsyncERKNS8_9IOContextEllE3$_0EED2Ev.exit"

bb.j:                                             ; preds = %bb.h
  %i.ad = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i.i.i2.i.i = icmp eq i8 %i.ad, 0
  br i1 %.not.i.i.i.i.i2.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = add nsw i32 %i.v, -1
  store i32 %i.ae, ptr %i.s, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i

bb.l:                                             ; preds = %bb.j
  %i.af = atomicrmw volatile add ptr %i.s, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i4.i.i = phi i32 [ %i.v, %bb.k ], [ %i.af, %bb.l ]
  %i.ag = icmp eq i32 %.0.i.i.i.i.i.i4.i.i, 1
  br i1 %i.ag, label %bb.m, label %"_ZNSt5_BindIFN5arrow6detail14ContinueFutureENS0_6FutureISt10shared_ptrINS0_6BufferEEEEZNS0_2io16RandomAccessFile9ReadAsyncERKNS8_9IOContextEllE3$_0EED2Ev.exit", !prof !34

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.val.i.i) #32
  br label %"_ZNSt5_BindIFN5arrow6detail14ContinueFutureENS0_6FutureISt10shared_ptrINS0_6BufferEEEEZNS0_2io16RandomAccessFile9ReadAsyncERKNS8_9IOContextEllE3$_0EED2Ev.exit"

"_ZNSt5_BindIFN5arrow6detail14ContinueFutureENS0_6FutureISt10shared_ptrINS0_6BufferEEEEZNS0_2io16RandomAccessFile9ReadAsyncERKNS8_9IOContextEllE3$_0EED2Ev.exit": ; preds = %_ZNSt10_Head_baseILm0EN5arrow6FutureISt10shared_ptrINS0_6BufferEEEELb0EED2Ev.exit.i.i, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i, %bb.m
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @"_ZN5arrow8internal6FnOnceIFvvEE6FnImplISt5_BindIFNS_6detail14ContinueFutureENS_6FutureISt10shared_ptrINS_6BufferEEEEZNS_2io16RandomAccessFile9ReadAsyncERKNSD_9IOContextEllE3$_0EEED0Ev"(ptr noundef nonnull align 8 dereferenceable(64) initializes((0, 8)) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN5arrow8internal6FnOnceIFvvEE6FnImplISt5_BindIFNS_6detail14ContinueFutureENS_6FutureISt10shared_ptrINS_6BufferEEEEZNS_2io16RandomAccessFile9ReadAsyncERKNSD_9IOContextEllE3$_0EEEE", i64 16), ptr %0, align 8, !tbaa !30
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26   ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt10_Head_baseILm0EN5arrow6FutureISt10shared_ptrINS0_6BufferEEEELb0EED2Ev.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !27
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !29
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #32, !inline_history !514
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #32, !inline_history !514
  br label %_ZNSt10_Head_baseILm0EN5arrow6FutureISt10shared_ptrINS0_6BufferEEEELb0EED2Ev.exit.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt10_Head_baseILm0EN5arrow6FutureISt10shared_ptrINS0_6BufferEEEELb0EED2Ev.exit.i.i.i, !prof !34

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #32, !inline_history !515
  br label %_ZNSt10_Head_baseILm0EN5arrow6FutureISt10shared_ptrINS0_6BufferEEEELb0EED2Ev.exit.i.i.i

_ZNSt10_Head_baseILm0EN5arrow6FutureISt10shared_ptrINS0_6BufferEEEELb0EED2Ev.exit.i.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.c, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i.i.i = load ptr, ptr %i.r, align 8, !tbaa !26 ; 8 uses
  %.not.i.i.i.i1.i.i.i = icmp eq ptr %.val.i.i.i, null
  br i1 %.not.i.i.i.i1.i.i.i, label %"_ZN5arrow8internal6FnOnceIFvvEE6FnImplISt5_BindIFNS_6detail14ContinueFutureENS_6FutureISt10shared_ptrINS_6BufferEEEEZNS_2io16RandomAccessFile9ReadAsyncERKNSD_9IOContextEllE3$_0EEED2Ev.exit", label %bb.h

bb.h:                                             ; preds = %_ZNSt10_Head_baseILm0EN5arrow6FutureISt10shared_ptrINS0_6BufferEEEELb0EED2Ev.exit.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 8 ; 4 uses
  %i.t = load atomic i64, ptr %i.s acquire, align 8 ; 2 uses
  %i.u = icmp eq i64 %i.t, 4294967297
  %i.v = trunc i64 %i.t to i32                    ; 2 uses
  br i1 %i.u, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.s, align 8, !tbaa !27
  %i.w = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 12
  store i32 0, ptr %i.w, align 4, !tbaa !29
  %i.x = load ptr, ptr %.val.i.i.i, align 8, !tbaa !30
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %.val.i.i.i) #32, !inline_history !516
  %i.aa = load ptr, ptr %.val.i.i.i, align 8, !tbaa !30
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %.val.i.i.i) #32, !inline_history !516
  br label %"_ZN5arrow8internal6FnOnceIFvvEE6FnImplISt5_BindIFNS_6detail14ContinueFutureENS_6FutureISt10shared_ptrINS_6BufferEEEEZNS_2io16RandomAccessFile9ReadAsyncERKNSD_9IOContextEllE3$_0EEED2Ev.exit"

bb.j:                                             ; preds = %bb.h
  %i.ad = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i.i.i2.i.i.i = icmp eq i8 %i.ad, 0
  br i1 %.not.i.i.i.i.i2.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = add nsw i32 %i.v, -1
  store i32 %i.ae, ptr %i.s, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.af = atomicrmw volatile add ptr %i.s, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i4.i.i.i = phi i32 [ %i.v, %bb.k ], [ %i.af, %bb.l ]
  %i.ag = icmp eq i32 %.0.i.i.i.i.i.i4.i.i.i, 1
  br i1 %i.ag, label %bb.m, label %"_ZN5arrow8internal6FnOnceIFvvEE6FnImplISt5_BindIFNS_6detail14ContinueFutureENS_6FutureISt10shared_ptrINS_6BufferEEEEZNS_2io16RandomAccessFile9ReadAsyncERKNSD_9IOContextEllE3$_0EEED2Ev.exit", !prof !34

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.val.i.i.i) #32, !inline_history !515
  br label %"_ZN5arrow8internal6FnOnceIFvvEE6FnImplISt5_BindIFNS_6detail14ContinueFutureENS_6FutureISt10shared_ptrINS_6BufferEEEEZNS_2io16RandomAccessFile9ReadAsyncERKNSD_9IOContextEllE3$_0EEED2Ev.exit"

"_ZN5arrow8internal6FnOnceIFvvEE6FnImplISt5_BindIFNS_6detail14ContinueFutureENS_6FutureISt10shared_ptrINS_6BufferEEEEZNS_2io16RandomAccessFile9ReadAsyncERKNSD_9IOContextEllE3$_0EEED2Ev.exit": ; preds = %_ZNSt10_Head_baseILm0EN5arrow6FutureISt10shared_ptrINS0_6BufferEEEELb0EED2Ev.exit.i.i.i, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i.i, %bb.m
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #36
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZN5arrow8internal6FnOnceIFvvEE6FnImplISt5_BindIFNS_6detail14ContinueFutureENS_6FutureISt10shared_ptrINS_6BufferEEEEZNS_2io16RandomAccessFile9ReadAsyncERKNSD_9IOContextEllE3$_0EEE6invokeEv"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.arrow::Result.11", align 8  ; 9 uses
  %2 = alloca %"class.arrow::Future.55", align 16 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val3.i.i = load ptr, ptr %i.c, align 8, !tbaa !26 ; 2 uses
  %i.e = load <2 x ptr>, ptr %i.b, align 8, !tbaa !14
  store <2 x ptr> %i.e, ptr %2, align 16, !tbaa !14
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.val3.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN5arrow6FutureISt10shared_ptrINS_6BufferEEEC2ERKS4_.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.val3.i.i, i64 8 ; 3 uses
  %i.g = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.g, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.f, align 4, !tbaa !3
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr %i.f, align 4, !tbaa !3
  br label %_ZN5arrow6FutureISt10shared_ptrINS_6BufferEEEC2ERKS4_.exit.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.j = atomicrmw volatile add ptr %i.f, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5arrow6FutureISt10shared_ptrINS_6BufferEEEC2ERKS4_.exit.i.i.i.i

_ZN5arrow6FutureISt10shared_ptrINS_6BufferEEEC2ERKS4_.exit.i.i.i.i: ; preds = %bb.d, %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !198, !noalias !517 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load i64, ptr %i.l, align 8, !tbaa !520, !noalias !517
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = load i64, ptr %i.n, align 8, !tbaa !523, !noalias !517
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !30, !noalias !517
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 88
  %i.r = load ptr, ptr %i.q, align 8, !noalias !517
  invoke void %i.r(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.11") align 8 %1, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 noundef %i.m, i64 noundef %i.o)
          to label %.noexc.i.i.i.i unwind label %bb.v, !inline_history !524

.noexc.i.i.i.i:                                   ; preds = %_ZN5arrow6FutureISt10shared_ptrINS_6BufferEEEC2ERKS4_.exit.i.i.i.i
  invoke void @_ZN5arrow6FutureISt10shared_ptrINS_6BufferEEE12MarkFinishedENS_6ResultIS3_EE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %1)
          to label %bb.e unwind label %bb.n

bb.e:                                             ; preds = %.noexc.i.i.i.i
  %i.s = load ptr, ptr %1, align 8, !tbaa !81     ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.f, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i.i.i.i.i, !prof !89

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !26   ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 4 uses
  %i.x = load atomic i64, ptr %i.w acquire, align 8 ; 2 uses
  %i.y = icmp eq i64 %i.x, 4294967297
  %i.z = trunc i64 %i.x to i32                    ; 2 uses
  br i1 %i.y, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.w, align 8, !tbaa !27
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  store i32 0, ptr %i.aa, align 4, !tbaa !29
  %i.ab = load ptr, ptr %i.v, align 8, !tbaa !30
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #32, !inline_history !525
  %i.ae = load ptr, ptr %i.v, align 8, !tbaa !30
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #32, !inline_history !525
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ah = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ah, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = add nsw i32 %i.z, -1
  store i32 %i.ai, ptr %i.w, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.aj = atomicrmw volatile add ptr %i.w, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.k, %bb.j
end_hunk_8
begin_hunk_9_@_ZN5arrow6FutureISt10shared_ptrINS_6BufferEEE14DoMarkFinishedENS_6ResultIS3_EE:bb.a
  br i1 %.not.i.i.i.i.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2IS3_vEEONS0_IT_EE.exit.i
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !14
  invoke void %i.t(ptr noundef nonnull %i.s)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #33
  unreachable

bb.h:                                             ; preds = %bb.f, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2IS3_vEEONS0_IT_EE.exit.i
  store ptr @_ZZN5arrow6FutureISt10shared_ptrINS_6BufferEEE9SetResultENS_6ResultIS3_EEENUlPvE_8__invokeES7_, ptr %i.q, align 8, !tbaa !14
  %i.w = load ptr, ptr %2, align 8, !tbaa !81     ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.i, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i, !prof !89

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !26   ; 8 uses
  %.not.i.i.i.i.i2 = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i.i2, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 4 uses
  %i.ab = load atomic i64, ptr %i.aa acquire, align 8 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 4294967297
  %i.ad = trunc i64 %i.ab to i32                  ; 2 uses
  br i1 %i.ac, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.aa, align 8, !tbaa !27
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  store i32 0, ptr %i.ae, align 4, !tbaa !29
  %i.af = load ptr, ptr %i.z, align 8, !tbaa !30
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #32, !inline_history !125
  %i.ai = load ptr, ptr %i.z, align 8, !tbaa !30
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8
  call void %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #32, !inline_history !125
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i

bb.l:                                             ; preds = %bb.j
  %i.al = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i.i.i.i = icmp eq i8 %i.al, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = add nsw i32 %i.ad, -1
  store i32 %i.am, ptr %i.aa, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.an = atomicrmw volatile add ptr %i.aa, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ad, %bb.m ], [ %i.an, %bb.n ]
  %i.ao = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ao, label %bb.o, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, !prof !34

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #32
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i: ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.k, %bb.i
  %.pr.i = load ptr, ptr %2, align 8, !tbaa !81   ; 2 uses
  %.not.i.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i, !prof !118

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, %bb.h
  %i.ap = phi ptr [ %.pr.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i ], [ %i.w, %bb.h ]
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !90, !range !100, !noundef !101
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #32
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i, %bb.p
  %i.at = load ptr, ptr %0, align 8, !tbaa !67    ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !14
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !81
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %bb.q, label %bb.s, !prof !89

bb.q:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit
  call void @_ZN5arrow10FutureImpl12MarkFinishedEv(ptr noundef nonnull align 8 dereferenceable(72) %i.at)
  br label %bb.t

bb.r:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2IS3_vEEONS0_IT_EE.exit
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #32
  resume { ptr, i32 } %i.ay

bb.s:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit
  call void @_ZN5arrow10FutureImpl10MarkFailedEv(ptr noundef nonnull align 8 dereferenceable(72) %i.at)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.q
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN5arrow6FutureISt10shared_ptrINS_6BufferEEE9SetResultENS_6ResultIS3_EEENUlPvE_8__invokeES7_(ptr noundef %0) #25 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %_ZZN5arrow6FutureISt10shared_ptrINS_6BufferEEE9SetResultENS_6ResultIS3_EEENKUlPvE_clES7_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !81     ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i, !prof !89

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !26   ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.f, align 8, !tbaa !27
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !29
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !30
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #32, !inline_history !536
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !30
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #32, !inline_history !536
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.g ], [ %i.s, %bb.h ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.i, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, !prof !34

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #32
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i: ; preds = %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.e, %bb.c
  %.pr.i.i = load ptr, ptr %0, align 8, !tbaa !81 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.pr.i.i, null
  br i1 %.not.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit.i, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i, !prof !118

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, %bb.b
  %i.u = phi ptr [ %.pr.i.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i ], [ %i.b, %bb.b ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %i.w = load i8, ptr %i.v, align 1, !tbaa !90, !range !100, !noundef !101
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i
  tail call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #32
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit.i: ; preds = %bb.j, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #36
  br label %_ZZN5arrow6FutureISt10shared_ptrINS_6BufferEEE9SetResultENS_6ResultIS3_EEENKUlPvE_clES7_.exit

_ZZN5arrow6FutureISt10shared_ptrINS_6BufferEEE9SetResultENS_6ResultIS3_EEENKUlPvE_clES7_.exit: ; preds = %bb.a, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @"_ZN5arrow8internal6FnOnceIFvRKNS_6StatusEEE6FnImplIZNS0_8Executor6SubmitIZNS_2io16RandomAccessFile9ReadAsyncERKNSA_9IOContextEllE3$_0JENS_6FutureISt10shared_ptrINS_6BufferEEEEEENS_6ResultIT1_EENS0_9TaskHintsENS_9StopTokenEOT_DpOT0_E3$_0ED2Ev"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN5arrow8internal6FnOnceIFvRKNS_6StatusEEE6FnImplIZNS0_8Executor6SubmitIZNS_2io16RandomAccessFile9ReadAsyncERKNSA_9IOContextEllE3$_0JENS_6FutureISt10shared_ptrINS_6BufferEEEEEENS_6ResultIT1_EENS0_9TaskHintsENS_9StopTokenEOT_DpOT0_E3$_0EE", i64 16), ptr %0, align 8, !tbaa !30
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.a, align 8, !tbaa !39  ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %.val, null
  br i1 %.not.i.i.i.i, label %"_ZZN5arrow8internal8Executor6SubmitIZNS_2io16RandomAccessFile9ReadAsyncERKNS3_9IOContextEllE3$_0JENS_6FutureISt10shared_ptrINS_6BufferEEEEEENS_6ResultIT1_EENS0_9TaskHintsENS_9StopTokenEOT_DpOT0_EN3$_0D2Ev.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 12 ; 3 uses
  %i.c = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i.i.i = icmp eq i8 %i.c, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr %i.b, align 4, !tbaa !3    ; 2 uses
  %i.e = add nsw i32 %i.d, -1
  store i32 %i.e, ptr %i.b, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.f = atomicrmw volatile add ptr %i.b, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i.i.i.i = phi i32 [ %i.d, %bb.c ], [ %i.f, %bb.d ]
  %i.g = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.g, label %bb.e, label %"_ZZN5arrow8internal8Executor6SubmitIZNS_2io16RandomAccessFile9ReadAsyncERKNS3_9IOContextEllE3$_0JENS_6FutureISt10shared_ptrINS_6BufferEEEEEENS_6ResultIT1_EENS0_9TaskHintsENS_9StopTokenEOT_DpOT0_EN3$_0D2Ev.exit"

bb.e:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  %i.h = load ptr, ptr %.val, align 8, !tbaa !30
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %.val) #32, !inline_history !537
  br label %"_ZZN5arrow8internal8Executor6SubmitIZNS_2io16RandomAccessFile9ReadAsyncERKNS3_9IOContextEllE3$_0JENS_6FutureISt10shared_ptrINS_6BufferEEEEEENS_6ResultIT1_EENS0_9TaskHintsENS_9StopTokenEOT_DpOT0_EN3$_0D2Ev.exit"

"_ZZN5arrow8internal8Executor6SubmitIZNS_2io16RandomAccessFile9ReadAsyncERKNS3_9IOContextEllE3$_0JENS_6FutureISt10shared_ptrINS_6BufferEEEEEENS_6ResultIT1_EENS0_9TaskHintsENS_9StopTokenEOT_DpOT0_EN3$_0D2Ev.exit": ; preds = %bb.a, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.e
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @"_ZN5arrow8internal6FnOnceIFvRKNS_6StatusEEE6FnImplIZNS0_8Executor6SubmitIZNS_2io16RandomAccessFile9ReadAsyncERKNSA_9IOContextEllE3$_0JENS_6FutureISt10shared_ptrINS_6BufferEEEEEENS_6ResultIT1_EENS0_9TaskHintsENS_9StopTokenEOT_DpOT0_E3$_0ED0Ev"(ptr noundef nonnull align 8 dereferenceable(24) initializes((0, 8)) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN5arrow8internal6FnOnceIFvRKNS_6StatusEEE6FnImplIZNS0_8Executor6SubmitIZNS_2io16RandomAccessFile9ReadAsyncERKNSA_9IOContextEllE3$_0JENS_6FutureISt10shared_ptrINS_6BufferEEEEEENS_6ResultIT1_EENS0_9TaskHintsENS_9StopTokenEOT_DpOT0_E3$_0EE", i64 16), ptr %0, align 8, !tbaa !30
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !39 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i.i.i.i, label %"_ZN5arrow8internal6FnOnceIFvRKNS_6StatusEEE6FnImplIZNS0_8Executor6SubmitIZNS_2io16RandomAccessFile9ReadAsyncERKNSA_9IOContextEllE3$_0JENS_6FutureISt10shared_ptrINS_6BufferEEEEEENS_6ResultIT1_EENS0_9TaskHintsENS_9StopTokenEOT_DpOT0_E3$_0ED2Ev.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.val.i, i64 12 ; 3 uses
  %i.c = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i.i.i.i = icmp eq i8 %i.c, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr %i.b, align 4, !tbaa !3    ; 2 uses
  %i.e = add nsw i32 %i.d, -1
  store i32 %i.e, ptr %i.b, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.f = atomicrmw volatile add ptr %i.b, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.d, %bb.c ], [ %i.f, %bb.d ]
  %i.g = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.g, label %bb.e, label %"_ZN5arrow8internal6FnOnceIFvRKNS_6StatusEEE6FnImplIZNS0_8Executor6SubmitIZNS_2io16RandomAccessFile9ReadAsyncERKNSA_9IOContextEllE3$_0JENS_6FutureISt10shared_ptrINS_6BufferEEEEEENS_6ResultIT1_EENS0_9TaskHintsENS_9StopTokenEOT_DpOT0_E3$_0ED2Ev.exit"

bb.e:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  %i.h = load ptr, ptr %.val.i, align 8, !tbaa !30
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %.val.i) #32, !inline_history !538
  br label %"_ZN5arrow8internal6FnOnceIFvRKNS_6StatusEEE6FnImplIZNS0_8Executor6SubmitIZNS_2io16RandomAccessFile9ReadAsyncERKNSA_9IOContextEllE3$_0JENS_6FutureISt10shared_ptrINS_6BufferEEEEEENS_6ResultIT1_EENS0_9TaskHintsENS_9StopTokenEOT_DpOT0_E3$_0ED2Ev.exit"

"_ZN5arrow8internal6FnOnceIFvRKNS_6StatusEEE6FnImplIZNS0_8Executor6SubmitIZNS_2io16RandomAccessFile9ReadAsyncERKNSA_9IOContextEllE3$_0JENS_6FutureISt10shared_ptrINS_6BufferEEEEEENS_6ResultIT1_EENS0_9TaskHintsENS_9StopTokenEOT_DpOT0_E3$_0ED2Ev.exit": ; preds = %bb.a, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #36
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZN5arrow8internal6FnOnceIFvRKNS_6StatusEEE6FnImplIZNS0_8Executor6SubmitIZNS_2io16RandomAccessFile9ReadAsyncERKNSA_9IOContextEllE3$_0JENS_6FutureISt10shared_ptrINS_6BufferEEEEEENS_6ResultIT1_EENS0_9TaskHintsENS_9StopTokenEOT_DpOT0_E3$_0E6invokeES4_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.arrow::Future.55", align 8  ; 9 uses
  %3 = alloca %"class.arrow::Result.11", align 8  ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !539)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !39, !noalias !542 ; 5 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5arrow10WeakFutureISt10shared_ptrINS_6BufferEEE3getEv.exit.thread.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.e = load atomic i32, ptr %i.d monotonic, align 8, !noalias !542
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.06.i.i.i.i.i.i.i = phi i32 [ %i.e, %bb.b ], [ %i.i, %bb.d ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i.i = icmp eq i32 %.06.i.i.i.i.i.i.i, 0
  br i1 %.not.not.not.i.not.i.i.i.i.i.i, label %_ZN5arrow10WeakFutureISt10shared_ptrINS_6BufferEEE3getEv.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = add nsw i32 %.06.i.i.i.i.i.i.i, 1
  %i.g = cmpxchg weak ptr %i.d, i32 %.06.i.i.i.i.i.i.i, i32 %i.f acq_rel monotonic, align 8, !noalias !542 ; 2 uses
  %i.h = extractvalue { i32, i1 } %i.g, 1
  %i.i = extractvalue { i32, i1 } %i.g, 0
  br i1 %i.h, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i, label %bb.c, !llvm.loop !45

_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i: ; preds = %bb.d
  %i.j = load atomic i32, ptr %i.d monotonic, align 8, !noalias !542
  %.fr.i.i.i.i.i = freeze i32 %i.j
  %.not.i.i.i.i.i = icmp eq i32 %.fr.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow10WeakFutureISt10shared_ptrINS_6BufferEEE3getEv.exit.thread.i, label %_ZN5arrow10WeakFutureISt10shared_ptrINS_6BufferEEE3getEv.exit.i

_ZN5arrow10WeakFutureISt10shared_ptrINS_6BufferEEE3getEv.exit.thread.i: ; preds = %bb.c, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i, %bb.a
  %.sroa.3.1.i.ph.i = phi ptr [ null, %bb.a ], [ %i.c, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i ], [ null, %bb.c ] ; 2 uses
  store ptr null, ptr %2, align 8, !tbaa !67, !alias.scope !539
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.sroa.3.1.i.ph.i, ptr %i.k, align 8, !tbaa !26, !alias.scope !539
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit.i

_ZN5arrow10WeakFutureISt10shared_ptrINS_6BufferEEE3getEv.exit.i: ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i
  %i.l = load ptr, ptr %i.a, align 8, !noalias !542 ; 2 uses
  store ptr %i.l, ptr %2, align 8, !tbaa !67, !alias.scope !539
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %i.c, ptr %i.m, align 8, !tbaa !26, !alias.scope !539
  %.not.i.i.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.not.i, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit.thread.i, label %bb.e

bb.e:                                             ; preds = %_ZN5arrow10WeakFutureISt10shared_ptrINS_6BufferEEE3getEv.exit.i
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %1) #32
  invoke void @_ZN5arrow6FutureISt10shared_ptrINS_6BufferEEE12MarkFinishedENS_6ResultIS3_EE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %3)
          to label %bb.f unwind label %bb.o

bb.f:                                             ; preds = %bb.e
  %i.n = load ptr, ptr %3, align 8, !tbaa !81     ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.g, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i, !prof !89

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !26   ; 8 uses
  %.not.i.i.i.i.i3.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i3.i, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  %i.s = load atomic i64, ptr %i.r acquire, align 8 ; 2 uses
  %i.t = icmp eq i64 %i.s, 4294967297
  %i.u = trunc i64 %i.s to i32                    ; 2 uses
  br i1 %i.t, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.r, align 8, !tbaa !27
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !29
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !30
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #32, !inline_history !545
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !30
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #32, !inline_history !545
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i

bb.j:                                             ; preds = %bb.h
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = add nsw i32 %i.u, -1
  store i32 %i.ad, ptr %i.r, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ae = atomicrmw volatile add ptr %i.r, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.u, %bb.k ], [ %i.ae, %bb.l ]
  %i.af = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.af, label %bb.m, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, !prof !34

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #32
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i: ; preds = %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.i, %bb.g
  %.pr.i.i = load ptr, ptr %3, align 8, !tbaa !81 ; 2 uses
  %.not.i.i4.i = icmp eq ptr %.pr.i.i, null
  br i1 %.not.i.i4.i, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exitthread-pre-split.i, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i, !prof !118

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, %bb.f
  %i.ag = phi ptr [ %.pr.i.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i ], [ %i.n, %bb.f ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !90, !range !100, !noundef !101
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exitthread-pre-split.i, label %bb.n

bb.n:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #32
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exitthread-pre-split.i

bb.o:                                             ; preds = %bb.e
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #32
  call void @_ZN5arrow6FutureISt10shared_ptrINS_6BufferEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  resume { ptr, i32 } %i.ak

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exitthread-pre-split.i: ; preds = %bb.n, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i
  %.pr.i = load ptr, ptr %i.m, align 8, !tbaa !26
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exitthread-pre-split.i, %_ZN5arrow10WeakFutureISt10shared_ptrINS_6BufferEEE3getEv.exit.thread.i
  %i.al = phi ptr [ %.pr.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exitthread-pre-split.i ], [ %.sroa.3.1.i.ph.i, %_ZN5arrow10WeakFutureISt10shared_ptrINS_6BufferEEE3getEv.exit.thread.i ] ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i.i, label %"_ZZN5arrow8internal8Executor6SubmitIZNS_2io16RandomAccessFile9ReadAsyncERKNS3_9IOContextEllE3$_0JENS_6FutureISt10shared_ptrINS_6BufferEEEEEENS_6ResultIT1_EENS0_9TaskHintsENS_9StopTokenEOT_DpOT0_EN3$_0clERKNS_6StatusE.exit", label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit.thread.i

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit.i, %_ZN5arrow10WeakFutureISt10shared_ptrINS_6BufferEEE3getEv.exit.i
  %i.am = phi ptr [ %i.al, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit.i ], [ %i.c, %_ZN5arrow10WeakFutureISt10shared_ptrINS_6BufferEEE3getEv.exit.i ] ; 7 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 4 uses
  %i.ao = load atomic i64, ptr %i.an acquire, align 8 ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 4294967297
  %i.aq = trunc i64 %i.ao to i32                  ; 2 uses
  br i1 %i.ap, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit.thread.i
  store i32 0, ptr %i.an, align 8, !tbaa !27
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  store i32 0, ptr %i.ar, align 4, !tbaa !29
  %i.as = load ptr, ptr %i.am, align 8, !tbaa !30
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load ptr, ptr %i.at, align 8
  call void %i.au(ptr noundef nonnull align 8 dereferenceable(16) %i.am) #32, !inline_history !546
  %i.av = load ptr, ptr %i.am, align 8, !tbaa !30
end_hunk_9
begin_hunk_10_@_ZN5arrow6FutureISt10shared_ptrINS_6BufferEEE20InitializeFromResultENS_6ResultIS3_EE:bb.a
  %i.bj = extractvalue { ptr, i32 } %i.bi, 0
  call void @__clang_call_terminate(ptr %i.bj) #33
  unreachable

bb.u:                                             ; preds = %bb.s, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2IS3_vEEONS0_IT_EE.exit.i
  store ptr @_ZZN5arrow6FutureISt10shared_ptrINS_6BufferEEE9SetResultENS_6ResultIS3_EEENUlPvE_8__invokeES7_, ptr %i.be, align 8, !tbaa !14
  %i.bk = load ptr, ptr %5, align 8, !tbaa !81    ; 2 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %bb.v, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i, !prof !89

bb.v:                                             ; preds = %bb.u
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !26 ; 8 uses
  %.not.i.i.i.i.i15 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i.i.i15, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 4 uses
  %i.bp = load atomic i64, ptr %i.bo acquire, align 8 ; 2 uses
  %i.bq = icmp eq i64 %i.bp, 4294967297
  %i.br = trunc i64 %i.bp to i32                  ; 2 uses
  br i1 %i.bq, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %i.bo, align 8, !tbaa !27
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  store i32 0, ptr %i.bs, align 4, !tbaa !29
  %i.bt = load ptr, ptr %i.bn, align 8, !tbaa !30
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #32, !inline_history !125
  %i.bw = load ptr, ptr %i.bn, align 8, !tbaa !30
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #32, !inline_history !125
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i

bb.y:                                             ; preds = %bb.w
  %i.bz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i.i.i.i = icmp eq i8 %i.bz, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ca = add nsw i32 %i.br, -1
  store i32 %i.ca, ptr %i.bo, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.aa:                                            ; preds = %bb.y
  %i.cb = atomicrmw volatile add ptr %i.bo, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.aa, %bb.z
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.br, %bb.z ], [ %i.cb, %bb.aa ]
  %i.cc = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.cc, label %bb.ab, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, !prof !34

bb.ab:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #32
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i: ; preds = %bb.ab, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.x, %bb.v
  %.pr.i = load ptr, ptr %5, align 8, !tbaa !81   ; 2 uses
  %.not.i.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i, !prof !118

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, %bb.u
  %i.cd = phi ptr [ %.pr.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i ], [ %i.bk, %bb.u ]
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 1
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !90, !range !100, !noundef !101
  %i.cg = trunc nuw i8 %i.cf to i1
  br i1 %i.cg, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #32
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i, %bb.ac
  ret void

bb.ad:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2IS3_vEEONS0_IT_EE.exit
  %i.ch = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #32
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %_ZNSt10unique_ptrIN5arrow10FutureImplESt14default_deleteIS1_EED2Ev.exit12, %_ZNSt10unique_ptrIN5arrow10FutureImplESt14default_deleteIS1_EED2Ev.exit6
  %.pn = phi { ptr, i32 } [ %i.ch, %bb.ad ], [ %i.z, %_ZNSt10unique_ptrIN5arrow10FutureImplESt14default_deleteIS1_EED2Ev.exit6 ], [ %i.aj, %_ZNSt10unique_ptrIN5arrow10FutureImplESt14default_deleteIS1_EED2Ev.exit12 ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal12JoinToStringIJRA46_KcRlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(46) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !434, !nonnull !101, !align !444
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(46) %1) #32
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(46) %1, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA46_KcRlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS4_EEDaSG_.exit unwind label %bb.c ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA46_KcRlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS4_EEDaSG_.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !434, !nonnull !101, !align !444
  %i.f = load i64, ptr %2, align 8, !tbaa !246
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef %i.f)
          to label %_ZZN5arrow8internal12JoinToStringIJRA46_KcRlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS5_EEDaSG_.exit unwind label %bb.d ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA46_KcRlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS5_EEDaSG_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA46_KcRlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS4_EEDaSG_.exit
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA46_KcRlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS5_EEDaSG_.exit
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  ret void

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.d:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA46_KcRlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS4_EEDaSG_.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA46_KcRlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS5_EEDaSG_.exit
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  %.pn6 = phi { ptr, i32 } [ %i.j, %bb.e ], [ %i.i, %bb.d ], [ %i.h, %bb.c ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  resume { ptr, i32 } %.pn6
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal12JoinToStringIJRA41_KcRlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(41) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !434, !nonnull !101, !align !444
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(41) %1) #32
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(41) %1, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA41_KcRlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS4_EEDaSG_.exit unwind label %bb.c ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA41_KcRlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS4_EEDaSG_.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !434, !nonnull !101, !align !444
  %i.f = load i64, ptr %2, align 8, !tbaa !246
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef %i.f)
          to label %_ZZN5arrow8internal12JoinToStringIJRA41_KcRlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS5_EEDaSG_.exit unwind label %bb.d ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA41_KcRlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS5_EEDaSG_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA41_KcRlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS4_EEDaSG_.exit
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA41_KcRlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS5_EEDaSG_.exit
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  ret void

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.d:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA41_KcRlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS4_EEDaSG_.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA41_KcRlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS5_EEDaSG_.exit
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  %.pn6 = phi { ptr, i32 } [ %i.j, %bb.e ], [ %i.i, %bb.d ], [ %i.h, %bb.c ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  resume { ptr, i32 } %.pn6
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow2io17FileSegmentReaderELN9__gnu_cxx12_Lock_policyE2EEC2ISaIvEJSt10shared_ptrINS1_16RandomAccessFileEERlSB_EEESt20_Sp_alloc_shared_tagIT_EDpOT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::shared_ptr.56", align 8 ; 5 uses
  store ptr null, ptr %0, align 8, !tbaa !556
  %i.a = tail call noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #35, !noalias !559 ; 18 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !27
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 4 uses
  store i32 1, ptr %i.c, align 4, !tbaa !29
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow2io17FileSegmentReaderESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !30
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.e = load ptr, ptr %2, align 8, !tbaa !198    ; 2 uses
  store ptr %i.e, ptr %5, align 8, !tbaa !198
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !26   ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !26
  store ptr %i.h, ptr %i.f, align 8, !tbaa !26
  store ptr null, ptr %2, align 8, !tbaa !198
  %i.i = load i64, ptr %3, align 8, !tbaa !246
  %i.j = load i64, ptr %4, align 8, !tbaa !246
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 88 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 96 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.l, i8 0, i64 20, i1 false)
  store ptr getelementptr inbounds nuw inrange(-64, 56) (i8, ptr @_ZTCN5arrow2io17FileSegmentReaderE0_NS0_8internal29InputStreamConcurrencyWrapperIS1_EE, i64 240), ptr %i.k, align 8, !tbaa !30
  store ptr getelementptr inbounds nuw inrange(-64, 112) (i8, ptr @_ZTCN5arrow2io17FileSegmentReaderE0_NS0_8internal29InputStreamConcurrencyWrapperIS1_EE, i64 64), ptr %i.d, align 8, !tbaa !30
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  invoke void @_ZN5arrow2io8internal22SharedExclusiveCheckerC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.m)
          to label %bb.b unwind label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5arrow2io13FileInterfaceD2Ev(ptr noundef nonnull align 8 dereferenceable(28) %i.k) #32
  call void @_ZNSt12__shared_ptrIN5arrow2io16RandomAccessFileELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #32
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 120) #36
  resume { ptr, i32 } %i.n

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store ptr getelementptr inbounds nuw inrange(-64, 56) (i8, ptr @_ZTVN5arrow2io17FileSegmentReaderE, i64 248), ptr %i.k, align 8, !tbaa !30
  store ptr getelementptr inbounds nuw inrange(-64, 120) (i8, ptr @_ZTVN5arrow2io17FileSegmentReaderE, i64 64), ptr %i.d, align 8, !tbaa !30
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %i.e, ptr %i.q, align 8, !tbaa !198
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.h, ptr %i.r, align 8, !tbaa !26
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i8 0, ptr %i.s, align 8, !tbaa !562
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 0, ptr %i.t, align 8, !tbaa !570
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i64 %i.i, ptr %i.u, align 8, !tbaa !571
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i64 %i.j, ptr %i.v, align 8, !tbaa !572
  store i32 0, ptr %i.p, align 8, !tbaa !573
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  store ptr %i.a, ptr %i.o, align 8, !tbaa !26
  store ptr %i.d, ptr %0, align 8, !tbaa !578
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 104 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !39   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i, label %bb.c, label %_ZNKSt10__weak_ptrIN5arrow2io13FileInterfaceELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i

_ZNKSt10__weak_ptrIN5arrow2io13FileInterfaceELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i: ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load atomic i32, ptr %i.y monotonic, align 8
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.c, label %_ZNSt12__shared_ptrIN5arrow2io17FileSegmentReaderELN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS2_S2_EENSt9enable_ifIXsr15__has_esft_baseIT0_EE5valueEvE4typeEPT_.exit

bb.c:                                             ; preds = %bb.b, %_ZNKSt10__weak_ptrIN5arrow2io13FileInterfaceELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i
  store ptr %i.k, ptr %i.l, align 8, !tbaa !47
  %i.ab = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i3.i.i.i = icmp eq i8 %i.ab, 0
  br i1 %.not.i.i3.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = load i32, ptr %i.c, align 4, !tbaa !3
  %i.ad = add nsw i32 %i.ac, 1
  store i32 %i.ad, ptr %i.c, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.ae = atomicrmw volatile add ptr %i.c, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i.i.i = load ptr, ptr %i.w, align 8, !tbaa !39
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i: ; preds = %bb.e, %bb.d
  %i.af = phi ptr [ %.pre.i.i.i, %bb.e ], [ %i.x, %bb.d ] ; 4 uses
  %.not6.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not6.i.i.i.i, label %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 12 ; 3 uses
  %i.ah = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i7.i.i.i.i = icmp eq i8 %i.ah, 0
  br i1 %.not.i7.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = load i32, ptr %i.ag, align 4, !tbaa !3  ; 2 uses
  %i.aj = add nsw i32 %i.ai, -1
  store i32 %i.aj, ptr %i.ag, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.ak = atomicrmw volatile add ptr %i.ag, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i = phi i32 [ %i.ai, %bb.g ], [ %i.ak, %bb.h ]
  %i.al = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.al, label %bb.i, label %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  %i.am = load ptr, ptr %i.af, align 8, !tbaa !30
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #32, !inline_history !579
  br label %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i

_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i: ; preds = %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i
  store ptr %i.a, ptr %i.w, align 8, !tbaa !39
  br label %_ZNSt12__shared_ptrIN5arrow2io17FileSegmentReaderELN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS2_S2_EENSt9enable_ifIXsr15__has_esft_baseIT0_EE5valueEvE4typeEPT_.exit

_ZNSt12__shared_ptrIN5arrow2io17FileSegmentReaderELN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS2_S2_EENSt9enable_ifIXsr15__has_esft_baseIT0_EE5valueEvE4typeEPT_.exit: ; preds = %_ZNKSt10__weak_ptrIN5arrow2io13FileInterfaceELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i, %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow2io17FileSegmentReaderESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 120) #36
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow2io17FileSegmentReaderESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaIvEE7destroyIN5arrow2io17FileSegmentReaderEEEvRS0_PT_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(72) %i.a) #32, !inline_history !580
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow2io17FileSegmentReaderESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow2io17FileSegmentReaderESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 120) #36
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow2io17FileSegmentReaderESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !286  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !33
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #32
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow2io8internal29InputStreamConcurrencyWrapperINS0_17FileSegmentReaderEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #33
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow2io8internal29InputStreamConcurrencyWrapperINS0_17FileSegmentReaderEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #33
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow2io8internal29InputStreamConcurrencyWrapperINS0_17FileSegmentReaderEE4ReadElPv(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.51") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2, ptr noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN5arrow2io17FileSegmentReader6DoReadElPv(ptr dead_on_unwind writable sret(%"class.arrow::Result.51") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 noundef %2, ptr noundef %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow2io8internal29InputStreamConcurrencyWrapperINS0_17FileSegmentReaderEE4ReadEl(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.11") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN5arrow2io17FileSegmentReader6DoReadEl(ptr dead_on_unwind writable sret(%"class.arrow::Result.11") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 noundef %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow2io8internal29InputStreamConcurrencyWrapperINS0_17FileSegmentReaderEE4PeekEl(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.15") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !30
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr dead_on_unwind writable sret(%"class.arrow::Result.15") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow2io8internal29InputStreamConcurrencyWrapperINS0_17FileSegmentReaderEE5CloseEv(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !581)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i8 1, ptr %i.a, align 8, !tbaa !562, !noalias !581
  store ptr null, ptr %0, align 8, !tbaa !81, !alias.scope !584
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow2io8internal29InputStreamConcurrencyWrapperINS0_17FileSegmentReaderEE5AbortEv(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !30
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 96
end_hunk_10
