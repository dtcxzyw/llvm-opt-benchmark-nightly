Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_func_cast?download=true
inline.NumInlined: 41041
inline.NumDeleted: 4767
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 222
loop-unroll.NumUnrolled: 235
begin_hunk_0_@_ZN6duckdb17VectorCastHelpers11TryCastLoopINS_8bignum_tENS_9hugeint_tENS_15BignumToIntCastEEEbRNS_6VectorES6_mRNS_14CastParametersE:bb.a
bb.a:
  %4 = alloca %"struct.duckdb::VectorTryCastData", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store ptr %1, ptr %4, align 8, !tbaa !166
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %3, ptr %i.a, align 8, !tbaa !168
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i8 1, ptr %i.b, align 8, !tbaa !170
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !147
  %i.e = icmp ne ptr %i.d, null
  call void @_ZN6duckdb13UnaryExecutor15ExecuteStandardINS_8bignum_tENS_9hugeint_tENS_19GenericUnaryWrapperENS_21VectorTryCastOperatorINS_15BignumToIntCastEEEEEvRNS_6VectorES9_mPvbNS_14FunctionErrorsE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, ptr noundef nonnull %4, i1 noundef zeroext %i.e, i8 noundef zeroext 1)
  %i.f = load i8, ptr %i.b, align 8, !tbaa !170, !range !150, !noundef !73
  %i.g = trunc nuw i8 %i.f to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  ret i1 %i.g
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN6duckdb17VectorCastHelpers11TryCastLoopINS_8bignum_tENS_10uhugeint_tENS_15BignumToIntCastEEEbRNS_6VectorES6_mRNS_14CastParametersE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(57) %3) #0 comdat align 2 {
bb.a:
  %4 = alloca %"struct.duckdb::VectorTryCastData", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store ptr %1, ptr %4, align 8, !tbaa !166
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %3, ptr %i.a, align 8, !tbaa !168
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i8 1, ptr %i.b, align 8, !tbaa !170
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !147
  %i.e = icmp ne ptr %i.d, null
  call void @_ZN6duckdb13UnaryExecutor15ExecuteStandardINS_8bignum_tENS_10uhugeint_tENS_19GenericUnaryWrapperENS_21VectorTryCastOperatorINS_15BignumToIntCastEEEEEvRNS_6VectorES9_mPvbNS_14FunctionErrorsE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, ptr noundef nonnull %4, i1 noundef zeroext %i.e, i8 noundef zeroext 1)
  %i.f = load i8, ptr %i.b, align 8, !tbaa !170, !range !150, !noundef !73
  %i.g = trunc nuw i8 %i.f to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  ret i1 %i.g
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN6duckdb17VectorCastHelpers10StringCastINS_8bignum_tENS_19BignumCastToVarcharENS_8string_tEEEbRNS_6VectorES6_mRNS_14CastParametersE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(57) %3) #0 comdat align 2 {
bb.a:
  tail call void @_ZN6duckdb13UnaryExecutor15ExecuteStandardINS_8bignum_tENS_8string_tENS_19GenericUnaryWrapperENS_24VectorStringCastOperatorINS_19BignumCastToVarcharEEEEEvRNS_6VectorES9_mPvbNS_14FunctionErrorsE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, ptr noundef nonnull %1, i1 noundef zeroext false, i8 noundef zeroext 1)
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN6duckdb17VectorCastHelpers11TryCastLoopINS_8bignum_tEdNS_18BignumToDoubleCastEEEbRNS_6VectorES5_mRNS_14CastParametersE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(57) %3) #0 comdat align 2 {
bb.a:
  %4 = alloca %"struct.duckdb::VectorTryCastData", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store ptr %1, ptr %4, align 8, !tbaa !166
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %3, ptr %i.a, align 8, !tbaa !168
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i8 1, ptr %i.b, align 8, !tbaa !170
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !147
  %i.e = icmp ne ptr %i.d, null
  call void @_ZN6duckdb13UnaryExecutor15ExecuteStandardINS_8bignum_tEdNS_19GenericUnaryWrapperENS_21VectorTryCastOperatorINS_18BignumToDoubleCastEEEEEvRNS_6VectorES8_mPvbNS_14FunctionErrorsE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, ptr noundef nonnull %4, i1 noundef zeroext %i.e, i8 noundef zeroext 1)
  %i.f = load i8, ptr %i.b, align 8, !tbaa !170, !range !150, !noundef !73
  %i.g = trunc nuw i8 %i.f to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  ret i1 %i.g
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.81", align 1 ; 5 uses
  %i.a = load i64, ptr %0, align 8, !tbaa !131    ; 2 uses
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.48, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !134    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.f) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn10 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.c) #28
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret i64 %i.a

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn9 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn10, %bb.f ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn9

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN6duckdbL20ValueStateTransitionERN12_GLOBAL__N_120StringCastInputStateERNS_12optional_idxERm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(25) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #12 {
bb.a:
  %3 = alloca %"class.duckdb::optional_idx", align 8 ; 4 uses
  %4 = alloca %"class.duckdb::optional_idx", align 8 ; 4 uses
  %5 = alloca %"class.duckdb::optional_idx", align 8 ; 4 uses
  %6 = alloca %"class.duckdb::optional_idx", align 8 ; 4 uses
  %7 = alloca %"class.duckdb::optional_idx", align 8 ; 4 uses
  %8 = alloca %"class.duckdb::optional_idx", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !365, !nonnull !73, !align !74 ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !367
  %i.d = load i64, ptr %i.b, align 8, !tbaa !65   ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !129
  switch i8 %i.f, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit [
    i8 34, label %bb.b
    i8 39, label %bb.b
    i8 123, label %bb.h
    i8 40, label %bb.k
    i8 91, label %bb.n
    i8 92, label %bb.q
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.thread
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.thread
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.thread
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.thread
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.thread
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.thread
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.g = load i64, ptr %1, align 8, !tbaa !131
  %.not60 = icmp eq i64 %i.g, -1
  br i1 %.not60, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @_ZN6duckdb12optional_idxC2Em(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %i.d)
  %i.h = load i64, ptr %3, align 8, !tbaa !65
  store i64 %i.h, ptr %1, align 8, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.j = load i8, ptr %i.i, align 8, !tbaa !364, !range !150, !noundef !73
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.thread.sink.split.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !365, !nonnull !73, !align !74 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !366, !nonnull !73, !align !74 ; 2 uses
  %i.o = load ptr, ptr %0, align 8, !tbaa !367    ; 2 uses
  %i.p = load i64, ptr %i.l, align 8, !tbaa !65   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !129
  %storemerge24.i = add i64 %i.p, 1               ; 3 uses
  store i64 %storemerge24.i, ptr %i.l, align 8, !tbaa !65
  %i.s = load i64, ptr %i.n, align 8, !tbaa !65
  %i.t = icmp ult i64 %storemerge24.i, %i.s
  br i1 %i.t, label %.lr.ph.i, label %_ZN6duckdbL17SkipToCloseQuotesERN12_GLOBAL__N_120StringCastInputStateE.exit.thread

.lr.ph.i:                                         ; preds = %bb.e, %.critedge.i
  %storemerge25.i = phi i64 [ %storemerge.i, %.critedge.i ], [ %storemerge24.i, %bb.e ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 %storemerge25.i
  %i.v = load i8, ptr %i.u, align 1, !tbaa !129   ; 2 uses
  %i.w = icmp eq i8 %i.v, 92
  br i1 %i.w, label %bb.f, label %9

bb.f:                                             ; preds = %.lr.ph.i
  %i.x = load i8, ptr %i.i, align 8, !tbaa !353, !range !150, !noundef !73
  %not..i = xor i8 %i.x, 1
  br label %.critedge.i

9:                                                ; preds = %.lr.ph.i
  %10 = icmp eq i8 %i.v, %i.r
  br i1 %10, label %bb.g, label %.critedge.i

bb.g:                                             ; preds = %9
  %i.y = load i8, ptr %i.i, align 8, !tbaa !353, !range !150, !noundef !73
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %.critedge.i, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.thread.sink.split.sink.split, !llvm.loop !28

.critedge.i:                                      ; preds = %bb.g, %9, %bb.f
  %.020.i = phi i8 [ %not..i, %bb.f ], [ 0, %9 ], [ 0, %bb.g ]
  store i8 %.020.i, ptr %i.i, align 8, !tbaa !353
  %storemerge.i = add nuw i64 %storemerge25.i, 1  ; 3 uses
  store i64 %storemerge.i, ptr %i.l, align 8, !tbaa !65
  %i.aa = load i64, ptr %i.n, align 8, !tbaa !65
  %i.ab = icmp ult i64 %storemerge.i, %i.aa
  br i1 %i.ab, label %.lr.ph.i, label %_ZN6duckdbL17SkipToCloseQuotesERN12_GLOBAL__N_120StringCastInputStateE.exit.thread

bb.h:                                             ; preds = %bb.a
  %i.ac = load i64, ptr %1, align 8, !tbaa !131
  %.not59 = icmp eq i64 %i.ac, -1
  br i1 %.not59, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @_ZN6duckdb12optional_idxC2Em(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %i.d)
  %i.ad = load i64, ptr %4, align 8, !tbaa !65
  store i64 %i.ad, ptr %1, align 8, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ae = call fastcc noundef zeroext i1 @_ZN6duckdbL11SkipToCloseERN12_GLOBAL__N_120StringCastInputStateE(ptr noundef nonnull align 8 dereferenceable(25) %0)
  br i1 %i.ae, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.thread.sink.split.sink.split, label %_ZN6duckdbL17SkipToCloseQuotesERN12_GLOBAL__N_120StringCastInputStateE.exit.thread

bb.k:                                             ; preds = %bb.a
  %i.af = load i64, ptr %1, align 8, !tbaa !131
  %.not58 = icmp eq i64 %i.af, -1
  br i1 %.not58, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @_ZN6duckdb12optional_idxC2Em(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef %i.d)
  %i.ag = load i64, ptr %5, align 8, !tbaa !65
  store i64 %i.ag, ptr %1, align 8, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ah = call fastcc noundef zeroext i1 @_ZN6duckdbL11SkipToCloseERN12_GLOBAL__N_120StringCastInputStateE(ptr noundef nonnull align 8 dereferenceable(25) %0)
  br i1 %i.ah, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.thread.sink.split.sink.split, label %_ZN6duckdbL17SkipToCloseQuotesERN12_GLOBAL__N_120StringCastInputStateE.exit.thread

bb.n:                                             ; preds = %bb.a
  %i.ai = load i64, ptr %1, align 8, !tbaa !131
  %.not57 = icmp eq i64 %i.ai, -1
  br i1 %.not57, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @_ZN6duckdb12optional_idxC2Em(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef %i.d)
  %i.aj = load i64, ptr %6, align 8, !tbaa !65
  store i64 %i.aj, ptr %1, align 8, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ak = call fastcc noundef zeroext i1 @_ZN6duckdbL11SkipToCloseERN12_GLOBAL__N_120StringCastInputStateE(ptr noundef nonnull align 8 dereferenceable(25) %0)
  br i1 %i.ak, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.thread.sink.split.sink.split, label %_ZN6duckdbL17SkipToCloseQuotesERN12_GLOBAL__N_120StringCastInputStateE.exit.thread

bb.q:                                             ; preds = %bb.a
  %i.al = load i64, ptr %1, align 8, !tbaa !131
  %.not = icmp eq i64 %i.al, -1
  br i1 %.not, label %bb.r, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.thread.sink.split

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call void @_ZN6duckdb12optional_idxC2Em(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef %i.d)
  %i.am = load i64, ptr %7, align 8, !tbaa !65
  store i64 %i.am, ptr %1, align 8, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.thread.sink.split.sink.split

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit:  ; preds = %bb.a
  %i.an = load i64, ptr %1, align 8, !tbaa !131
  %.not61 = icmp eq i64 %i.an, -1
  br i1 %.not61, label %bb.s, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.thread.sink.split

bb.s:                                             ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @_ZN6duckdb12optional_idxC2Em(ptr noundef nonnull align 8 dereferenceable(8) %8, i64 noundef %i.d)
  %i.ao = load i64, ptr %8, align 8, !tbaa !65
  store i64 %i.ao, ptr %1, align 8, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.thread.sink.split.sink.split

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.thread.sink.split.sink.split: ; preds = %bb.g, %bb.p, %bb.m, %bb.j, %bb.d, %bb.r, %bb.s
  %.0.ph.ph = phi i8 [ 0, %bb.s ], [ 1, %bb.r ], [ 0, %bb.d ], [ 0, %bb.j ], [ 0, %bb.m ], [ 0, %bb.p ], [ 0, %bb.g ]
  %.pre62 = load i64, ptr %i.b, align 8, !tbaa !65
  br label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.thread.sink.split

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.thread.sink.split: ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.thread.sink.split.sink.split, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit, %bb.q
  %.sink = phi i64 [ %i.d, %bb.q ], [ %i.d, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit ], [ %.pre62, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.thread.sink.split.sink.split ]
  %.0.ph = phi i8 [ 1, %bb.q ], [ 0, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit ], [ %.0.ph.ph, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.thread.sink.split.sink.split ]
  store i64 %.sink, ptr %2, align 8, !tbaa !65
  br label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.thread

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.thread: ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.thread.sink.split, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %.0 = phi i8 [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ %.0.ph, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.thread.sink.split ]
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %.0, ptr %i.ap, align 8, !tbaa !364
  %i.aq = load i64, ptr %i.b, align 8, !tbaa !65
  %i.ar = add i64 %i.aq, 1
  store i64 %i.ar, ptr %i.b, align 8, !tbaa !65
  br label %_ZN6duckdbL17SkipToCloseQuotesERN12_GLOBAL__N_120StringCastInputStateE.exit.thread

_ZN6duckdbL17SkipToCloseQuotesERN12_GLOBAL__N_120StringCastInputStateE.exit.thread: ; preds = %.critedge.i, %bb.e, %bb.p, %bb.m, %bb.j, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.thread
  %.054 = phi i1 [ true, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.thread ], [ false, %bb.m ], [ false, %bb.p ], [ false, %bb.j ], [ false, %bb.e ], [ false, %.critedge.i ]
  ret i1 %.054
}

; Function Attrs: mustprogress uwtable
define internal fastcc { i64, ptr } @_ZN6duckdbL12HandleStringILb1EEENS_8string_tERNS_6VectorEPKcmm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0 = alloca %struct.anon, align 8         ; 8 uses
  %4 = alloca %"struct.duckdb::string_t", align 8 ; 6 uses
  %5 = alloca %"class.std::stack", align 8        ; 16 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = sub i64 %3, %2                           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.c = tail call { i64, ptr } @_ZN6duckdb12StringVector11EmptyStringERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %i.b) ; 2 uses
  %i.d = extractvalue { i64, ptr } %i.c, 0        ; 2 uses
  store i64 %i.d, ptr %4, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = extractvalue { i64, ptr } %i.c, 1        ; 2 uses
  store ptr %i.f, ptr %i.e, align 8
  %i.g = trunc i64 %i.d to i32
  %i.h = icmp ult i32 %i.g, 13
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.j = select i1 %i.h, ptr %i.i, ptr %i.f       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %5, i8 0, i64 80, i1 false)
  call void @_ZNSt11_Deque_baseIcSaIcEE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %5, i64 noundef 0)
  %.not = icmp eq i64 %3, %2
  br i1 %.not, label %.thread, label %.lr.ph

.thread:                                          ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, i8 0, i64 16, i1 false)
  br label %_ZN6duckdb8string_tC2EPKcj.exit

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 72 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  br label %bb.e

._crit_edge:                                      ; preds = %bb.u
  store i32 %.266, ptr %.sroa.0, align 8, !tbaa !129
  %i.p = icmp ult i32 %.266, 13
  br i1 %i.p, label %bb.b, label %bb.d

bb.b:                                             ; preds = %._crit_edge
  %.sroa.0.4..sroa_idx112 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.4..sroa_idx112, i8 0, i64 12, i1 false)
  %i.q = icmp eq i32 %.266, 0
  br i1 %i.q, label %_ZN6duckdb8string_tC2EPKcj.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = zext nneg i32 %.266 to i64
  %.sroa.0.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.4..sroa_idx, ptr align 1 %i.j, i64 %i.r, i1 false)
  br label %_ZN6duckdb8string_tC2EPKcj.exit

bb.d:                                             ; preds = %._crit_edge
  %i.s = load i32, ptr %i.j, align 1
  %.sroa.0.4..sroa_idx111 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 4
  store i32 %i.s, ptr %.sroa.0.4..sroa_idx111, align 4
  %.sroa.0.8..sroa_idx114 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 8
  store ptr %i.j, ptr %.sroa.0.8..sroa_idx114, align 8, !tbaa !129
  br label %_ZN6duckdb8string_tC2EPKcj.exit

bb.e:                                             ; preds = %.lr.ph, %bb.u
  %.05891 = phi i64 [ 0, %.lr.ph ], [ %i.bf, %bb.u ] ; 2 uses
  %.05989 = phi i8 [ 0, %.lr.ph ], [ %.1, %bb.u ] ; 6 uses
  %.06087 = phi i8 [ 0, %.lr.ph ], [ %.161, %bb.u ] ; 3 uses
  %.06286 = phi i1 [ false, %.lr.ph ], [ %.2, %bb.u ]
  %.06483 = phi i32 [ 0, %.lr.ph ], [ %.266, %bb.u ] ; 7 uses
  %i.t = add i64 %.05891, %2                      ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !129   ; 10 uses
  br i1 %.06286, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = load ptr, ptr %i.k, align 8, !tbaa !397  ; 6 uses
  %i.x = load ptr, ptr %i.l, align 8, !tbaa !397
  %i.y = icmp eq ptr %i.w, %i.x                   ; 2 uses
  %i.z = icmp eq i8 %i.v, 92
  %or.cond = select i1 %i.y, i1 %i.z, i1 false
  br i1 %or.cond, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.aa = trunc nuw i8 %.06087 to i1
  br i1 %i.aa, label %bb.u, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = add i64 %i.t, 1                         ; 2 uses
  %i.ac = icmp ult i64 %i.ab, %3
  br i1 %i.ac, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
end_hunk_0
begin_hunk_1_@_ZN6duckdb9make_uniqINS_23UnionUnionBoundCastDataEJRKNS_6vectorImLb1ESaImEEENS2_INS_13BoundCastInfoELb1ESaIS7_EEERKNS_11LogicalTypeEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_:bb.a
          to label %_ZNSt6vectorImSaImEED2Ev.exit unwind label %bb.h

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.g
  %i.x = getelementptr inbounds i8, ptr %i.k, i64 %i.l
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb23UnionUnionBoundCastDataE, i64 16), ptr %i.a, align 8, !tbaa !78
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.k, ptr %i.y, align 8, !tbaa !419
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.x, ptr %i.z, align 8, !tbaa !420
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.w, ptr %i.aa, align 8, !tbaa !421
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.p, ptr %i.ab, align 8, !tbaa !83
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %i.s, ptr %i.ac, align 8, !tbaa !84
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.v, ptr %i.ad, align 8, !tbaa !417
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  call void @_ZN6duckdb11LogicalTypeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %5) #28, !inline_history !47
  store ptr %i.a, ptr %0, align 8, !tbaa !441
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #28
  ret void

bb.g:                                             ; preds = %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit10

bb.h:                                             ; preds = %bb.f
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZNSt6vectorIN6duckdb13BoundCastInfoESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #28
  %.not.i.i.i9 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i9, label %_ZNSt6vectorImSaImEED2Ev.exit10, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZdlPv(ptr noundef nonnull %i.k) #30
  br label %_ZNSt6vectorImSaImEED2Ev.exit10

_ZNSt6vectorImSaImEED2Ev.exit10:                  ; preds = %bb.i, %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.af, %bb.g ], [ %i.ag, %bb.h ], [ %i.ag, %bb.i ]
  call void @_ZdlPv(ptr noundef nonnull %i.a) #30
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr { ptr, i64 } @_ZN6duckdb6vectorIbLb1ESaIbEE3getILb1EEESt14_Bit_referencem(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator.81", align 1 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !443
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !444
  %i.g = load ptr, ptr %0, align 8, !tbaa !443    ; 2 uses
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = shl nsw i64 %i.j, 3
  %i.l = zext i32 %i.f to i64
  %i.m = add nsw i64 %i.k, %i.l                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %1, ptr %i.a, align 8, !tbaa !65
  store i64 %i.m, ptr %i.b, align 8, !tbaa !65
  %.not.i = icmp ult i64 %1, %i.m
  br i1 %.not.i, label %_ZN6duckdb6vectorIbLb1ESaIbEE19AssertIndexInBoundsEmm.exit, label %bb.b, !prof !187

bb.b:                                             ; preds = %bb.a
  %i.n = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.33, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.q = load ptr, ptr %2, align 8, !tbaa !134    ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.q) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn8.i = phi { ptr, i32 } [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.n) #28
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn7.i = phi { ptr, i32 } [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn8.i, %bb.f ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn7.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb6vectorIbLb1ESaIbEE19AssertIndexInBoundsEmm.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.t = sdiv i64 %1, 64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.t
  %i.v = and i64 %1, -9223372036854775745
  %i.w = icmp ugt i64 %i.v, -9223372036854775808
  %storemerge.idx.i.i.i.i.i = select i1 %i.w, i64 -8, i64 0
  %storemerge.i.i.i.i.i = getelementptr inbounds i8, ptr %i.u, i64 %storemerge.idx.i.i.i.i.i
  %i.x = and i64 %1, 63
  %i.y = shl nuw i64 1, %i.x
  %.fca.0.insert.i3.i.i = insertvalue { ptr, i64 } poison, ptr %storemerge.i.i.i.i.i, 0
  %.fca.1.insert.i4.i.i = insertvalue { ptr, i64 } %.fca.0.insert.i3.i.i, i64 %i.y, 1
  ret { ptr, i64 } %.fca.1.insert.i4.i.i
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log2(double noundef) local_unnamed_addr #23

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN6duckdbL11SkipToCloseERN12_GLOBAL__N_120StringCastInputStateE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(25) %0) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.duckdb::vector.730", align 8 ; 16 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !365, !nonnull !73, !align !74 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !366, !nonnull !73, !align !74 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.e = load i64, ptr %i.b, align 8, !tbaa !65   ; 2 uses
  %i.f = load i64, ptr %i.d, align 8, !tbaa !65
  %i.g = icmp ult i64 %i.e, %i.f
  br i1 %i.g, label %.lr.ph, label %.threadthread-pre-split

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 14 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.loopexit
  %i.k = phi i64 [ %i.e, %.lr.ph ], [ %i.cv, %.loopexit ]
  %i.l = load ptr, ptr %0, align 8, !tbaa !367    ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.k
  %i.n = load i8, ptr %i.m, align 1, !tbaa !129   ; 2 uses
  switch i8 %i.n, label %bb.y [
    i8 34, label %bb.c
    i8 39, label %bb.c
    i8 123, label %bb.g
    i8 40, label %bb.m
    i8 91, label %bb.s
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.o = load i8, ptr %i.j, align 8, !tbaa !364, !range !150, !noundef !73
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !365, !nonnull !73, !align !74 ; 3 uses
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !366, !nonnull !73, !align !74 ; 2 uses
  %i.s = load i64, ptr %i.q, align 8, !tbaa !65   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !129
  %storemerge24.i = add i64 %i.s, 1               ; 3 uses
  store i64 %storemerge24.i, ptr %i.q, align 8, !tbaa !65
  %i.v = load i64, ptr %i.r, align 8, !tbaa !65
  %i.w = icmp ult i64 %storemerge24.i, %i.v
  br i1 %i.w, label %.lr.ph.i, label %.threadthread-pre-split

.lr.ph.i:                                         ; preds = %bb.d, %.critedge.i
  %storemerge25.i = phi i64 [ %storemerge.i, %.critedge.i ], [ %storemerge24.i, %bb.d ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 %storemerge25.i
  %i.y = load i8, ptr %i.x, align 1, !tbaa !129   ; 2 uses
  %i.z = icmp eq i8 %i.y, 92
  br i1 %i.z, label %bb.e, label %2

bb.e:                                             ; preds = %.lr.ph.i
  %i.aa = load i8, ptr %i.j, align 8, !tbaa !353, !range !150, !noundef !73
  %not..i = xor i8 %i.aa, 1
  br label %.critedge.i

2:                                                ; preds = %.lr.ph.i
  %3 = icmp eq i8 %i.y, %i.u
  br i1 %3, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %2
  %i.ab = load i8, ptr %i.j, align 8, !tbaa !353, !range !150, !noundef !73
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %.critedge.i, label %.loopexit, !llvm.loop !28

.critedge.i:                                      ; preds = %bb.f, %2, %bb.e
  %.020.i = phi i8 [ %not..i, %bb.e ], [ 0, %2 ], [ 0, %bb.f ]
  store i8 %.020.i, ptr %i.j, align 8, !tbaa !353
  %storemerge.i = add nuw i64 %storemerge25.i, 1  ; 3 uses
  store i64 %storemerge.i, ptr %i.q, align 8, !tbaa !65
  %i.ad = load i64, ptr %i.r, align 8, !tbaa !65
  %i.ae = icmp ult i64 %storemerge.i, %i.ad
  br i1 %i.ae, label %.lr.ph.i, label %.threadthread-pre-split

bb.g:                                             ; preds = %bb.b
  %i.af = load ptr, ptr %i.h, align 8, !tbaa !448 ; 3 uses
  %i.ag = load ptr, ptr %i.i, align 8, !tbaa !447
  %.not.i.i = icmp eq ptr %i.af, %i.ag
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i8 125, ptr %i.af, align 1, !tbaa !129
  %i.ah = load ptr, ptr %i.h, align 8, !tbaa !448
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  store ptr %i.ai, ptr %i.h, align 8, !tbaa !448
  br label %.loopexit

bb.i:                                             ; preds = %bb.g
  %i.aj = load ptr, ptr %1, align 8, !tbaa !449   ; 4 uses
  %i.ak = ptrtoint ptr %i.af to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al                    ; 7 uses
  %i.an = icmp eq i64 %i.am, 9223372036854775807
  br i1 %i.an, label %bb.j, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #31
          to label %.noexc unwind label %.loopexit.split-lp73

.noexc:                                           ; preds = %bb.j
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.i
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.am, i64 1)
  %i.ao = add i64 %.sroa.speculated.i.i.i.i, %i.am ; 2 uses
  %i.ap = icmp ult i64 %i.ao, %i.am
  %i.aq = call i64 @llvm.umin.i64(i64 %i.ao, i64 9223372036854775807)
  %i.ar = select i1 %i.ap, i64 9223372036854775807, i64 %i.aq ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ar, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.as = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ar) #29
          to label %.noexc34 unwind label %.loopexit72 ; 4 uses

.noexc34:                                         ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.am ; 2 uses
  store i8 125, ptr %i.at, align 1, !tbaa !129
  %i.au = icmp sgt i64 %i.am, 0
  br i1 %i.au, label %bb.k, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i

bb.k:                                             ; preds = %.noexc34
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.as, ptr align 1 %i.aj, i64 %i.am, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.k, %.noexc34
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  %.not.i17.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.aj) #30
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i: ; preds = %bb.l, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i
  store ptr %i.as, ptr %1, align 8, !tbaa !449
  store ptr %i.av, ptr %i.h, align 8, !tbaa !448
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ar
  store ptr %i.aw, ptr %i.i, align 8, !tbaa !447
  br label %.loopexit

.loopexit72:                                      ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit74 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

.loopexit.split-lp73:                             ; preds = %bb.j
  %lpad.loopexit.split-lp75 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.m:                                             ; preds = %bb.b
  %i.ax = load ptr, ptr %i.h, align 8, !tbaa !448 ; 3 uses
  %i.ay = load ptr, ptr %i.i, align 8, !tbaa !447
  %.not.i.i35 = icmp eq ptr %i.ax, %i.ay
  br i1 %.not.i.i35, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i8 41, ptr %i.ax, align 1, !tbaa !129
  %i.az = load ptr, ptr %i.h, align 8, !tbaa !448
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  store ptr %i.ba, ptr %i.h, align 8, !tbaa !448
  br label %.loopexit

bb.o:                                             ; preds = %bb.m
  %i.bb = load ptr, ptr %1, align 8, !tbaa !449   ; 4 uses
  %i.bc = ptrtoint ptr %i.ax to i64
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = sub i64 %i.bc, %i.bd                    ; 7 uses
  %i.bf = icmp eq i64 %i.be, 9223372036854775807
  br i1 %i.bf, label %bb.p, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i36

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #31
          to label %.noexc42 unwind label %.loopexit.split-lp68

.noexc42:                                         ; preds = %bb.p
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i36: ; preds = %bb.o
  %.sroa.speculated.i.i.i.i37 = call i64 @llvm.umax.i64(i64 %i.be, i64 1)
  %i.bg = add i64 %.sroa.speculated.i.i.i.i37, %i.be ; 2 uses
  %i.bh = icmp ult i64 %i.bg, %i.be
  %i.bi = call i64 @llvm.umin.i64(i64 %i.bg, i64 9223372036854775807)
  %i.bj = select i1 %i.bh, i64 9223372036854775807, i64 %i.bi ; 3 uses
  %.not.i.i.i.i38 = icmp ne i64 %i.bj, 0
  call void @llvm.assume(i1 %.not.i.i.i.i38)
  %i.bk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bj) #29
          to label %.noexc43 unwind label %.loopexit67 ; 4 uses

.noexc43:                                         ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i36
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.be ; 2 uses
  store i8 41, ptr %i.bl, align 1, !tbaa !129
  %i.bm = icmp sgt i64 %i.be, 0
  br i1 %i.bm, label %bb.q, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i39

bb.q:                                             ; preds = %.noexc43
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bk, ptr align 1 %i.bb, i64 %i.be, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i39

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i39: ; preds = %bb.q, %.noexc43
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  %.not.i17.i.i.i40 = icmp eq ptr %i.bb, null
  br i1 %.not.i17.i.i.i40, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i41, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i39
  call void @_ZdlPv(ptr noundef nonnull %i.bb) #30
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i41

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i41: ; preds = %bb.r, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i39
  store ptr %i.bk, ptr %1, align 8, !tbaa !449
  store ptr %i.bn, ptr %i.h, align 8, !tbaa !448
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bj
  store ptr %i.bo, ptr %i.i, align 8, !tbaa !447
  br label %.loopexit

.loopexit67:                                      ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i36
  %lpad.loopexit69 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

.loopexit.split-lp68:                             ; preds = %bb.p
  %lpad.loopexit.split-lp70 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.s:                                             ; preds = %bb.b
  %i.bp = load ptr, ptr %i.h, align 8, !tbaa !448 ; 3 uses
  %i.bq = load ptr, ptr %i.i, align 8, !tbaa !447
  %.not.i.i45 = icmp eq ptr %i.bp, %i.bq
  br i1 %.not.i.i45, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i8 93, ptr %i.bp, align 1, !tbaa !129
  %i.br = load ptr, ptr %i.h, align 8, !tbaa !448
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 1
  store ptr %i.bs, ptr %i.h, align 8, !tbaa !448
  br label %.loopexit

bb.u:                                             ; preds = %bb.s
  %i.bt = load ptr, ptr %1, align 8, !tbaa !449   ; 4 uses
  %i.bu = ptrtoint ptr %i.bp to i64
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = sub i64 %i.bu, %i.bv                    ; 7 uses
  %i.bx = icmp eq i64 %i.bw, 9223372036854775807
  br i1 %i.bx, label %bb.v, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i46

bb.v:                                             ; preds = %bb.u
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #31
          to label %.noexc52 unwind label %.loopexit.split-lp

.noexc52:                                         ; preds = %bb.v
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i46: ; preds = %bb.u
  %.sroa.speculated.i.i.i.i47 = call i64 @llvm.umax.i64(i64 %i.bw, i64 1)
  %i.by = add i64 %.sroa.speculated.i.i.i.i47, %i.bw ; 2 uses
  %i.bz = icmp ult i64 %i.by, %i.bw
  %i.ca = call i64 @llvm.umin.i64(i64 %i.by, i64 9223372036854775807)
  %i.cb = select i1 %i.bz, i64 9223372036854775807, i64 %i.ca ; 3 uses
  %.not.i.i.i.i48 = icmp ne i64 %i.cb, 0
  call void @llvm.assume(i1 %.not.i.i.i.i48)
  %i.cc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cb) #29
          to label %.noexc53 unwind label %.loopexit66 ; 4 uses

.noexc53:                                         ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i46
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.bw ; 2 uses
  store i8 93, ptr %i.cd, align 1, !tbaa !129
  %i.ce = icmp sgt i64 %i.bw, 0
end_hunk_1
