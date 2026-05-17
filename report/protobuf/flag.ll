inline.NumInlined: 600
inline.NumDeleted: 245
begin_hunk_0_@_ZNK4absl12lts_2025051214flags_internal8FlagImpl4ReadEPv:bb.a
  %i.i = lshr i8 %i.h, 1
  %i.j = and i8 %i.i, 3
  switch i8 %i.j, label %default.unreachable14 [
    i8 0, label %bb.c
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
  ]

bb.c:                                             ; preds = %_ZNK4absl12lts_2025051214flags_internal8FlagImpl9DataGuardEv.exit, %_ZNK4absl12lts_2025051214flags_internal8FlagImpl9DataGuardEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !25
  %i.m = call noundef ptr %i.l(i32 noundef 9, ptr noundef null, ptr noundef null, ptr noundef null), !inline_history !37
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = getelementptr inbounds i8, ptr %0, i64 %i.n
  %i.p = load atomic i64, ptr %i.o acquire, align 8
  store i64 %i.p, ptr %i.c, align 8, !tbaa !49
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !25
  %i.r = call noundef ptr %i.q(i32 noundef 4, ptr noundef null, ptr noundef null, ptr noundef null), !inline_history !36
  %i.s = ptrtoint ptr %i.r to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr nonnull align 8 %i.c, i64 %i.s, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_ZN4absl12lts_202505129MutexLockD2Ev.exit7

bb.d:                                             ; preds = %_ZNK4absl12lts_2025051214flags_internal8FlagImpl9DataGuardEv.exit
  call void @_ZNK4absl12lts_2025051214flags_internal8FlagImpl22ReadSequenceLockedDataEPv(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1)
  br label %_ZN4absl12lts_202505129MutexLockD2Ev.exit7

bb.e:                                             ; preds = %_ZNK4absl12lts_2025051214flags_internal8FlagImpl9DataGuardEv.exit
  call void @_ZN4absl12lts_202505125Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !25
  %i.v = invoke noundef ptr %i.u(i32 noundef 9, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %bb.f unwind label %bb.j, !inline_history !97

bb.f:                                             ; preds = %bb.e
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = getelementptr inbounds i8, ptr %0, i64 %i.w
  %i.y = load atomic i64, ptr %i.x acquire, align 8 ; 3 uses
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !25
  %i.aa = and i64 %i.y, -4
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = invoke noundef ptr %i.z(i32 noundef 3, ptr noundef %i.ab, ptr noundef %1, ptr noundef null)
          to label %bb.g unwind label %bb.j, !inline_history !140 ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.ad = and i64 %i.y, 3
  %or.cond.not = icmp eq i64 %i.ad, 1
  br i1 %or.cond.not, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.ae = load ptr, ptr %i.t, align 8, !tbaa !25
  %i.af = invoke noundef ptr %i.ae(i32 noundef 9, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %bb.i unwind label %bb.j, !inline_history !97

bb.i:                                             ; preds = %bb.h
  %i.ag = or disjoint i64 %i.y, 2
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = getelementptr inbounds i8, ptr %0, i64 %i.ah
  store atomic i64 %i.ag, ptr %i.ai release, align 8
  br label %bb.l

bb.j:                                             ; preds = %bb.h, %bb.f, %bb.e
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %_ZN4absl12lts_202505129MutexLockD2Ev.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  call void @__clang_call_terminate(ptr %i.al) #24
  unreachable

_ZN4absl12lts_202505129MutexLockD2Ev.exit:        ; preds = %bb.j
  resume { ptr, i32 } %i.aj

bb.l:                                             ; preds = %bb.i, %bb.g
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %_ZN4absl12lts_202505129MutexLockD2Ev.exit7 unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  call void @__clang_call_terminate(ptr %i.an) #24
  unreachable

default.unreachable14:                            ; preds = %_ZNK4absl12lts_2025051214flags_internal8FlagImpl9DataGuardEv.exit
  unreachable

_ZN4absl12lts_202505129MutexLockD2Ev.exit7:       ; preds = %bb.l, %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK4absl12lts_2025051214flags_internal8FlagImpl11ReadOneWordEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca { i64, i64 }, align 8             ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 ptrtoint (ptr @_ZN4absl12lts_2025051214flags_internal8FlagImpl4InitEv to i64), ptr %i.a, align 8, !tbaa !24
  %.fca.1.gep.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %.fca.1.gep.i, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store ptr %0, ptr %i.b, align 8, !tbaa !43
  %i.d = load atomic i32, ptr %i.c acquire, align 4
  %.not.i.i = icmp eq i32 %i.d, 221
  br i1 %.not.i.i, label %_ZNK4absl12lts_2025051214flags_internal8FlagImpl9DataGuardEv.exit, label %bb.b, !prof !45

bb.b:                                             ; preds = %bb.a
  call void @_ZN4absl12lts_2025051213base_internal12CallOnceImplIMNS0_14flags_internal8FlagImplEFvvEJPS4_EEEvPSt6atomicIjENS1_14SchedulingModeEOT_DpOT0_(ptr noundef nonnull align 4 dereferenceable(4) %i.c, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %_ZNK4absl12lts_2025051214flags_internal8FlagImpl9DataGuardEv.exit

_ZNK4absl12lts_2025051214flags_internal8FlagImpl9DataGuardEv.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !25
  %i.g = call noundef ptr %i.f(i32 noundef 9, ptr noundef null, ptr noundef null, ptr noundef null), !inline_history !37
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = getelementptr inbounds i8, ptr %0, i64 %i.h
  %i.j = load atomic i64, ptr %i.i acquire, align 8
  ret i64 %i.j
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK4absl12lts_2025051214flags_internal8FlagImpl11ReadOneBoolEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca { i64, i64 }, align 8             ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 ptrtoint (ptr @_ZN4absl12lts_2025051214flags_internal8FlagImpl4InitEv to i64), ptr %i.a, align 8, !tbaa !24
  %.fca.1.gep.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %.fca.1.gep.i, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store ptr %0, ptr %i.b, align 8, !tbaa !43
  %i.d = load atomic i32, ptr %i.c acquire, align 4
  %.not.i.i = icmp eq i32 %i.d, 221
  br i1 %.not.i.i, label %_ZNK4absl12lts_2025051214flags_internal8FlagImpl9DataGuardEv.exit, label %bb.b, !prof !45

bb.b:                                             ; preds = %bb.a
  call void @_ZN4absl12lts_2025051213base_internal12CallOnceImplIMNS0_14flags_internal8FlagImplEFvvEJPS4_EEEvPSt6atomicIjENS1_14SchedulingModeEOT_DpOT0_(ptr noundef nonnull align 4 dereferenceable(4) %i.c, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %_ZNK4absl12lts_2025051214flags_internal8FlagImpl9DataGuardEv.exit

_ZNK4absl12lts_2025051214flags_internal8FlagImpl9DataGuardEv.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !25
  %i.g = call noundef ptr %i.f(i32 noundef 9, ptr noundef null, ptr noundef null, ptr noundef null), !inline_history !37
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = getelementptr inbounds i8, ptr %0, i64 %i.h
  %i.j = load atomic i64, ptr %i.i acquire, align 8
  %i.k = trunc i64 %i.j to i1
  ret i1 %i.k
}

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2025051214flags_internal8FlagImpl5WriteEPKv(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %i.a = alloca { i64, i64 }, align 8             ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %"class.std::unique_ptr", align 8   ; 7 uses
  %4 = alloca %"struct.absl::lts_20250512::flags_internal::DynValueDeleter", align 8 ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %9 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %10 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %11 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 ptrtoint (ptr @_ZN4absl12lts_2025051214flags_internal8FlagImpl4InitEv to i64), ptr %i.a, align 8, !tbaa !24
  %.fca.1.gep.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %.fca.1.gep.i, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store ptr %0, ptr %i.b, align 8, !tbaa !43
  %i.d = load atomic i32, ptr %i.c acquire, align 4
  %.not.i.i = icmp eq i32 %i.d, 221
  br i1 %.not.i.i, label %_ZNK4absl12lts_2025051214flags_internal8FlagImpl9DataGuardEv.exit, label %bb.b, !prof !45

bb.b:                                             ; preds = %bb.a
  call void @_ZN4absl12lts_2025051213base_internal12CallOnceImplIMNS0_14flags_internal8FlagImplEFvvEJPS4_EEEvPSt6atomicIjENS1_14SchedulingModeEOT_DpOT0_(ptr noundef nonnull align 4 dereferenceable(4) %i.c, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %_ZNK4absl12lts_2025051214flags_internal8FlagImpl9DataGuardEv.exit

_ZNK4absl12lts_2025051214flags_internal8FlagImpl9DataGuardEv.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  call void @_ZN4absl12lts_202505125Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !25
  %i.h = invoke noundef ptr %i.g(i32 noundef 5, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %bb.c unwind label %bb.j, !inline_history !46

bb.c:                                             ; preds = %_ZNK4absl12lts_2025051214flags_internal8FlagImpl9DataGuardEv.exit
  %12 = insertelement <13 x ptr> poison, ptr %i.h, i64 0
  %13 = shufflevector <13 x ptr> %12, <13 x ptr> poison, <13 x i32> zeroinitializer
  %14 = icmp eq <13 x ptr> %13, <ptr @_ZN4absl12lts_2025051213base_internal11FastTypeTagIbE9kDummyVarE, ptr @_ZN4absl12lts_2025051213base_internal11FastTypeTagIsE9kDummyVarE, ptr @_ZN4absl12lts_2025051213base_internal11FastTypeTagItE9kDummyVarE, ptr @_ZN4absl12lts_2025051213base_internal11FastTypeTagIiE9kDummyVarE, ptr @_ZN4absl12lts_2025051213base_internal11FastTypeTagIjE9kDummyVarE, ptr @_ZN4absl12lts_2025051213base_internal11FastTypeTagIlE9kDummyVarE, ptr @_ZN4absl12lts_2025051213base_internal11FastTypeTagImE9kDummyVarE, ptr @_ZN4absl12lts_2025051213base_internal11FastTypeTagIxE9kDummyVarE, ptr @_ZN4absl12lts_2025051213base_internal11FastTypeTagIyE9kDummyVarE, ptr @_ZN4absl12lts_2025051213base_internal11FastTypeTagIdE9kDummyVarE, ptr @_ZN4absl12lts_2025051213base_internal11FastTypeTagIfE9kDummyVarE, ptr @_ZN4absl12lts_2025051213base_internal11FastTypeTagINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9kDummyVarE, ptr @_ZN4absl12lts_2025051213base_internal11FastTypeTagISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEE9kDummyVarE>
  %15 = bitcast <13 x i1> %14 to i13
  %i.i = icmp eq i13 %15, 0
  br i1 %i.i, label %bb.d, label %bb.v

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !25   ; 2 uses
  %i.k = invoke noundef ptr %i.j(i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %.noexc unwind label %bb.k, !inline_history !113 ; 3 uses

.noexc:                                           ; preds = %bb.d
  %i.l = invoke noundef ptr %i.j(i32 noundef 3, ptr noundef %1, ptr noundef %i.k, ptr noundef null)
          to label %_ZN4absl12lts_2025051214flags_internal5CloneEPFPvNS1_6FlagOpEPKvS2_S2_ES5_.exit unwind label %bb.k, !inline_history !113 ; 0 uses

_ZN4absl12lts_2025051214flags_internal5CloneEPFPvNS1_6FlagOpEPKvS2_S2_ES5_.exit: ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !25
  invoke void @_ZN4absl12lts_2025051214flags_internal15DynValueDeleterC1EPFPvNS1_6FlagOpEPKvS3_S3_E(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %i.m)
          to label %bb.e unwind label %bb.l

bb.e:                                             ; preds = %_ZN4absl12lts_2025051214flags_internal5CloneEPFPvNS1_6FlagOpEPKvS2_S2_ES5_.exit
  %i.n = load i64, ptr %4, align 8, !tbaa !65
  store i64 %i.n, ptr %3, align 8, !tbaa !65
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %i.k, ptr %i.o, align 8, !tbaa !60
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.p, ptr %5, align 8, !tbaa !81
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.q, align 8, !tbaa !82
  store i8 0, ptr %i.p, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.r = load ptr, ptr %i.f, align 8, !tbaa !25
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.s, ptr %6, align 8, !tbaa !81, !alias.scope !141
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store i64 0, ptr %i.t, align 8, !tbaa !82, !alias.scope !141
  store i8 0, ptr %i.s, align 8, !tbaa !24, !alias.scope !141
  %i.u = invoke noundef ptr %i.r(i32 noundef 8, ptr noundef %1, ptr noundef nonnull align 8 %6, ptr noundef null)
          to label %_ZN4absl12lts_2025051214flags_internal7UnparseB5cxx11EPFPvNS1_6FlagOpEPKvS2_S2_ES5_.exit unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = load ptr, ptr %6, align 8, !tbaa !52, !alias.scope !141 ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.s
  br i1 %i.x, label %.body, label %.body.sink.split

_ZN4absl12lts_2025051214flags_internal7UnparseB5cxx11EPFPvNS1_6FlagOpEPKvS2_S2_ES5_.exit: ; preds = %bb.e
  %i.y = load ptr, ptr %i.f, align 8, !tbaa !25
  %i.z = load ptr, ptr %6, align 8, !tbaa !52
  %i.aa = load i64, ptr %i.t, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i64 %i.aa, ptr %2, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.z, ptr %i.ab, align 8
  %i.ac = invoke noundef ptr %i.y(i32 noundef 7, ptr noundef nonnull %2, ptr noundef %i.k, ptr noundef nonnull %5)
          to label %bb.g unwind label %bb.m, !inline_history !135

bb.g:                                             ; preds = %_ZN4absl12lts_2025051214flags_internal7UnparseB5cxx11EPFPvNS1_6FlagOpEPKvS2_S2_ES5_.exit
  %.not = icmp eq ptr %i.ac, null
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br i1 %.not, label %bb.h, label %bb.p

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  store i64 21, ptr %8, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @.str.8, ptr %i.ad, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !48 ; 2 uses
  %i.ag = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.af) #23
  store i64 %i.ag, ptr %9, align 8, !tbaa !49
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.af, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  store i64 19, ptr %10, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr @.str.9, ptr %i.ah, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  %i.ai = load ptr, ptr %6, align 8, !tbaa !52
  %i.aj = load i64, ptr %i.t, align 8, !tbaa !82
  store i64 %i.aj, ptr %11, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %i.ai, ptr %i.ak, align 8
  invoke void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_S3_S3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef nonnull align 8 dereferenceable(48) %11)
          to label %bb.i unwind label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.al = load atomic ptr, ptr @_ZN4absl12lts_2025051216raw_log_internal21internal_log_functionB5cxx11E acquire, align 8
  invoke void %i.al(i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 608, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %_ZNK4absl12lts_2025051213base_internal10AtomicHookIPFvNS0_11LogSeverityEPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclIJS3_RKS5_iSB_EEEvDpOT_.exit unwind label %bb.o, !inline_history !51

_ZNK4absl12lts_2025051213base_internal10AtomicHookIPFvNS0_11LogSeverityEPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclIJS3_RKS5_iSB_EEEvDpOT_.exit: ; preds = %bb.i
  %i.am = load ptr, ptr %7, align 8, !tbaa !52    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNK4absl12lts_2025051213base_internal10AtomicHookIPFvNS0_11LogSeverityEPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclIJS3_RKS5_iSB_EEEvDpOT_.exit
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !24
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNK4absl12lts_2025051213base_internal10AtomicHookIPFvNS0_11LogSeverityEPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclIJS3_RKS5_iSB_EEEvDpOT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.p

bb.j:                                             ; preds = %_ZNK4absl12lts_2025051214flags_internal8FlagImpl9DataGuardEv.exit, %bb.v
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.k:                                             ; preds = %.noexc, %bb.d
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.l:                                             ; preds = %_ZN4absl12lts_2025051214flags_internal5CloneEPFPvNS1_6FlagOpEPKvS2_S2_ES5_.exit
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.u

bb.m:                                             ; preds = %_ZN4absl12lts_2025051214flags_internal7UnparseB5cxx11EPFPvNS1_6FlagOpEPKvS2_S2_ES5_.exit
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.n:                                             ; preds = %bb.h
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

bb.o:                                             ; preds = %bb.i
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ax = load ptr, ptr %7, align 8, !tbaa !52    ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %bb.o
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !24
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.bb) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27, %bb.n
  %.pn = phi { ptr, i32 } [ %i.av, %bb.n ], [ %i.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27 ], [ %i.aw, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.t

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.g
  %i.bc = load ptr, ptr %6, align 8, !tbaa !52    ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.s
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %bb.p
  %i.be = load i64, ptr %i.s, align 8, !tbaa !24
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bf) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.bg = load ptr, ptr %5, align 8, !tbaa !52    ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.p
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32
  %i.bi = load i64, ptr %i.p, align 8, !tbaa !24
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bj) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.bk = load ptr, ptr %i.o, align 8, !tbaa !65  ; 2 uses
  %.not.i = icmp eq ptr %i.bk, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIvN4absl12lts_2025051214flags_internal15DynValueDeleterEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35
  %i.bl = load ptr, ptr %3, align 8, !tbaa !18    ; 2 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %_ZNSt10unique_ptrIvN4absl12lts_2025051214flags_internal15DynValueDeleterEED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bn = invoke noundef ptr %i.bl(i32 noundef 1, ptr noundef null, ptr noundef nonnull %i.bk, ptr noundef null)
          to label %_ZNSt10unique_ptrIvN4absl12lts_2025051214flags_internal15DynValueDeleterEED2Ev.exit unwind label %bb.s, !inline_history !90 ; 0 uses

end_hunk_0
