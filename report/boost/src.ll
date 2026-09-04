Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/src?download=true
inline.NumInlined: 7222
inline.NumDeleted: 1430
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 62
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZNK5boost10wrapexceptINS_6system12system_errorEE7rethrowEv:bb.a
; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost10wrapexceptINS_6system12system_errorEED0Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5boost9exceptionE, i64 16), ptr %i.a, align 8, !tbaa !98
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !336  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZN5boost10wrapexceptINS_6system12system_errorEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !98
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = invoke noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZN5boost10wrapexceptINS_6system12system_errorEED2Ev.exit unwind label %bb.c, !inline_history !56 ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #49
  unreachable

_ZN5boost10wrapexceptINS_6system12system_errorEED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.j) #47
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 88) #50
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr hidden void @_ZThn8_N5boost10wrapexceptINS_6system12system_errorEED1Ev(ptr noundef %0) unnamed_addr #35 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5boost9exceptionE, i64 16), ptr %i.a, align 8, !tbaa !98
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !336  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZN5boost10wrapexceptINS_6system12system_errorEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !98
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = invoke noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZN5boost10wrapexceptINS_6system12system_errorEED2Ev.exit unwind label %bb.c, !inline_history !56 ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #49
  unreachable

_ZN5boost10wrapexceptINS_6system12system_errorEED2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #47
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr hidden void @_ZThn8_N5boost10wrapexceptINS_6system12system_errorEED0Ev(ptr noundef %0) unnamed_addr #35 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5boost9exceptionE, i64 16), ptr %i.a, align 8, !tbaa !98
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !336  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i, label %_ZN5boost10wrapexceptINS_6system12system_errorEED0Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !98
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = invoke noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZN5boost10wrapexceptINS_6system12system_errorEED0Ev.exit unwind label %bb.c, !inline_history !56 ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #49
  unreachable

_ZN5boost10wrapexceptINS_6system12system_errorEED0Ev.exit: ; preds = %bb.a, %bb.b
  %i.j = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #47
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(88) %i.j, i64 noundef 88) #50
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr hidden void @_ZThn48_N5boost10wrapexceptINS_6system12system_errorEED1Ev(ptr noundef %0) unnamed_addr #35 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5boost9exceptionE, i64 16), ptr %0, align 8, !tbaa !98
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !336  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN5boost10wrapexceptINS_6system12system_errorEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !98
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = invoke noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZN5boost10wrapexceptINS_6system12system_errorEED2Ev.exit unwind label %bb.c, !inline_history !56 ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #49
  unreachable

_ZN5boost10wrapexceptINS_6system12system_errorEED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.i = getelementptr inbounds i8, ptr %0, i64 -40
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.i) #47
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr hidden void @_ZThn48_N5boost10wrapexceptINS_6system12system_errorEED0Ev(ptr noundef %0) unnamed_addr #35 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5boost9exceptionE, i64 16), ptr %0, align 8, !tbaa !98
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !336  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i, label %_ZN5boost10wrapexceptINS_6system12system_errorEED0Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !98
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = invoke noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZN5boost10wrapexceptINS_6system12system_errorEED0Ev.exit unwind label %bb.c, !inline_history !56 ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #49
  unreachable

_ZN5boost10wrapexceptINS_6system12system_errorEED0Ev.exit: ; preds = %bb.a, %bb.b
  %i.i = getelementptr inbounds i8, ptr %0, i64 -48
  %i.j = getelementptr inbounds i8, ptr %0, i64 -40
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.j) #47
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(88) %i.i, i64 noundef 88) #50
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorC2ERKS_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #16

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost10wrapexceptINS_6system12system_errorEEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost16exception_detail10clone_baseE, i64 16), ptr %0, align 8, !tbaa !98
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZNSt13runtime_errorC2ERKS_(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.b) #47
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost6system12system_errorE, i64 16), ptr %i.a, align 8, !tbaa !98
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !tbaa.struct !106
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5boost9exceptionE, i64 16), ptr %i.e, align 8, !tbaa !98
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !336  ; 4 uses
  store ptr %i.h, ptr %i.f, align 8, !tbaa !336
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !98
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  invoke void %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %bb.c unwind label %bb.d, !inline_history !57

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost10wrapexceptINS_6system12system_errorEEE, i64 16), ptr %0, align 8, !tbaa !98
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost10wrapexceptINS_6system12system_errorEEE, i64 64), ptr %i.a, align 8, !tbaa !98
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5boost10wrapexceptINS_6system12system_errorEEE, i64 104), ptr %i.e, align 8, !tbaa !98
  ret void

bb.d:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.a) #47
  resume { ptr, i32 } %i.n
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i32 } @_ZN5boost4json6detail8charconv6detail10fast_float19from_chars_advancedIdcEENS2_19from_chars_result_tIT0_EEPKS7_SA_RT_NS4_15parse_options_tIS7_EE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 %3) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"struct.boost::json::detail::charconv::detail::fast_float::bigint", align 8 ; 6 uses
  %5 = alloca %"struct.boost::json::detail::charconv::detail::fast_float::parsed_number_string_t", align 8 ; 16 uses
  %i.c = icmp eq ptr %0, %1
  br i1 %i.c, label %bb.bd, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #47
  tail call void @llvm.experimental.noalias.scope.decl(metadata !983)
  %.sroa.0.0.extract.trunc.i = trunc i64 %3 to i32 ; 2 uses
  %.sroa.2.0.extract.shift.i = lshr i64 %3, 32
  %.sroa.2.0.extract.trunc.i = trunc i64 %.sroa.2.0.extract.shift.i to i8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i8 0, i64 32, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 25
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(27) %5, i8 0, i64 27, i1 false)
  %i.g = load i8, ptr %0, align 1, !tbaa !93, !noalias !983
  %i.h = icmp eq i8 %i.g, 45                      ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.j = zext i1 %i.h to i8                       ; 4 uses
  store i8 %i.j, ptr %i.i, align 8, !tbaa !984, !alias.scope !983
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 3 uses
  %i.l = icmp eq ptr %i.k, %1
  br i1 %i.l, label %bb.z, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load i8, ptr %i.k, align 1, !tbaa !93, !noalias !983 ; 2 uses
  %i.n = add i8 %i.m, -48
  %i.o = icmp ult i8 %i.n, 10
  %.not.i = icmp eq i8 %i.m, %.sroa.2.0.extract.trunc.i
  %or.cond180 = select i1 %i.o, i1 true, i1 %.not.i
  br i1 %or.cond180, label %bb.e, label %bb.z

bb.e:                                             ; preds = %bb.d, %bb.b
  %.0127.i = phi ptr [ %i.k, %bb.d ], [ %0, %bb.b ] ; 10 uses
  %.0127.i279 = ptrtoaddr ptr %.0127.i to i64
  %i.p = sub i64 %i.a, %.0127.i279
  %scevgep = getelementptr i8, ptr %.0127.i, i64 %i.p
  br label %bb.f

.critedge.i.thread:                               ; preds = %bb.g
  %i.q = ptrtoint ptr %.0127.i to i64
  %i.r = sub i64 %i.a, %i.q                       ; 3 uses
  store ptr %.0127.i, ptr %i.d, align 8, !tbaa !191
  %.sroa.4137.0..sroa_idx171 = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 %i.r, ptr %.sroa.4137.0..sroa_idx171, align 8, !tbaa !90
  br label %bb.l

bb.f:                                             ; preds = %bb.e, %bb.g
  %.1128.i226 = phi ptr [ %.0127.i, %bb.e ], [ %i.z, %bb.g ] ; 5 uses
  %.0143.i225 = phi i64 [ 0, %bb.e ], [ %i.y, %bb.g ] ; 4 uses
  %i.s = load i8, ptr %.1128.i226, align 1, !tbaa !93, !noalias !983 ; 3 uses
  %i.t = add i8 %i.s, -48
  %i.u = icmp ult i8 %i.t, 10
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.v = mul i64 %.0143.i225, 10
  %i.w = zext nneg i8 %i.s to i64
  %i.x = add i64 %i.v, -48
  %i.y = add i64 %i.x, %i.w                       ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.1128.i226, i64 1 ; 2 uses
  %.not161.i = icmp eq ptr %i.z, %1
  br i1 %.not161.i, label %.critedge.i.thread, label %bb.f, !llvm.loop !973

bb.h:                                             ; preds = %bb.f
  %i.aa = ptrtoint ptr %.1128.i226 to i64         ; 3 uses
  %i.ab = ptrtoint ptr %.0127.i to i64
  %i.ac = sub i64 %i.aa, %i.ab                    ; 5 uses
  store ptr %.0127.i, ptr %i.d, align 8, !tbaa !191
  %.sroa.4137.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 %i.ac, ptr %.sroa.4137.0..sroa_idx, align 8, !tbaa !90
  %i.ad = icmp eq i8 %i.s, %.sroa.2.0.extract.trunc.i
  br i1 %i.ad, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %.1128.i226, i64 1 ; 5 uses
  %i.af = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.ag = ptrtoint ptr %i.ae to i64               ; 3 uses
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = icmp sgt i64 %i.ah, 7
  br i1 %i.ai, label %.lr.ph, label %.critedge2.i

.lr.ph:                                           ; preds = %bb.i, %bb.j
  %.2129.i228 = phi ptr [ %i.ba, %bb.j ], [ %i.ae, %bb.i ] ; 3 uses
  %.1144.i227 = phi i64 [ %i.az, %bb.j ], [ %.0143.i225, %bb.i ] ; 2 uses
  %i.aj = load i64, ptr %.2129.i228, align 1      ; 2 uses
  %i.ak = add i64 %i.aj, 5063812098665367110
  %i.al = add i64 %i.aj, -3472328296227680304     ; 3 uses
  %i.am = or i64 %i.ak, %i.al
  %i.an = and i64 %i.am, -9187201950435737472
  %.not.i97 = icmp eq i64 %i.an, 0
  br i1 %.not.i97, label %bb.j, label %.critedge2.i

bb.j:                                             ; preds = %.lr.ph
  %i.ao = mul i64 %.1144.i227, 100000000
  %i.ap = mul i64 %i.al, 10
  %i.aq = lshr i64 %i.al, 8
  %i.ar = add i64 %i.ap, %i.aq                    ; 2 uses
  %i.as = and i64 %i.ar, 1095216660735
  %i.at = mul i64 %i.as, 4294967296000100
  %i.au = lshr i64 %i.ar, 16
  %i.av = and i64 %i.au, 1095216660735
  %i.aw = mul i64 %i.av, 42949672960001
  %i.ax = add i64 %i.aw, %i.at
  %i.ay = lshr i64 %i.ax, 32
  %i.az = add i64 %i.ay, %i.ao                    ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.2129.i228, i64 8 ; 3 uses
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = sub i64 %i.af, %i.bb
  %i.bd = icmp sgt i64 %i.bc, 7
  br i1 %i.bd, label %.lr.ph, label %.critedge2.i, !llvm.loop !974

.critedge2.i:                                     ; preds = %bb.j, %.lr.ph, %bb.i
  %.1144.i.lcssa = phi i64 [ %.0143.i225, %bb.i ], [ %.1144.i227, %.lr.ph ], [ %i.az, %bb.j ] ; 2 uses
  %.2129.i.lcssa = phi ptr [ %i.ae, %bb.i ], [ %.2129.i228, %.lr.ph ], [ %i.ba, %bb.j ] ; 5 uses
  %.not162.i233 = icmp eq ptr %.2129.i.lcssa, %1
  br i1 %.not162.i233, label %.critedge4.i, label %.lr.ph236.preheader

.lr.ph236.preheader:                              ; preds = %.critedge2.i
  %.2129.i.lcssa280 = ptrtoaddr ptr %.2129.i.lcssa to i64
  %i.be = sub i64 %i.a, %.2129.i.lcssa280
  %scevgep281 = getelementptr i8, ptr %.2129.i.lcssa, i64 %i.be
  br label %.lr.ph236

.lr.ph236:                                        ; preds = %.lr.ph236.preheader, %bb.k
  %.3130.i235 = phi ptr [ %i.bi, %bb.k ], [ %.2129.i.lcssa, %.lr.ph236.preheader ] ; 3 uses
  %.2145.i234 = phi i64 [ %i.bl, %bb.k ], [ %.1144.i.lcssa, %.lr.ph236.preheader ] ; 2 uses
  %i.bf = load i8, ptr %.3130.i235, align 1, !tbaa !93, !noalias !983
  %i.bg = add i8 %i.bf, -48                       ; 2 uses
  %i.bh = icmp ult i8 %i.bg, 10
  br i1 %i.bh, label %bb.k, label %.critedge4.i

bb.k:                                             ; preds = %.lr.ph236
  %i.bi = getelementptr inbounds nuw i8, ptr %.3130.i235, i64 1 ; 2 uses
  %i.bj = mul i64 %.2145.i234, 10
  %i.bk = zext nneg i8 %i.bg to i64
  %i.bl = add i64 %i.bj, %i.bk                    ; 2 uses
  %.not162.i = icmp eq ptr %i.bi, %1
  br i1 %.not162.i, label %.critedge4.i, label %.lr.ph236, !llvm.loop !975

.critedge4.i:                                     ; preds = %bb.k, %.lr.ph236, %.critedge2.i
  %.2145.i.lcssa = phi i64 [ %.1144.i.lcssa, %.critedge2.i ], [ %.2145.i234, %.lr.ph236 ], [ %i.bl, %bb.k ]
  %.3130.i.lcssa = phi ptr [ %.2129.i.lcssa, %.critedge2.i ], [ %.3130.i235, %.lr.ph236 ], [ %scevgep281, %bb.k ] ; 2 uses
  %i.bm = ptrtoint ptr %.3130.i.lcssa to i64      ; 2 uses
  %i.bn = sub i64 %i.ag, %i.bm                    ; 2 uses
  %i.bo = sub i64 %i.bm, %i.ag                    ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %i.ae, ptr %i.bp, align 8, !tbaa !191
  %.sroa.4135.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 56
  store i64 %i.bo, ptr %.sroa.4135.0..sroa_idx, align 8, !tbaa !90
  %i.bq = sub nsw i64 %i.ac, %i.bn
  br label %bb.l

bb.l:                                             ; preds = %.critedge.i.thread, %.critedge4.i, %bb.h
  %i.br = phi i64 [ %i.bo, %.critedge4.i ], [ 0, %bb.h ], [ 0, %.critedge.i.thread ] ; 2 uses
  %i.bs = phi ptr [ %i.ae, %.critedge4.i ], [ null, %bb.h ], [ null, %.critedge.i.thread ] ; 4 uses
  %i.bt = phi i64 [ %i.ac, %.critedge4.i ], [ %i.ac, %bb.h ], [ %i.r, %.critedge.i.thread ] ; 2 uses
  %i.bu = phi i64 [ %i.aa, %.critedge4.i ], [ %i.aa, %bb.h ], [ %i.a, %.critedge.i.thread ]
  %.3146.i = phi i64 [ %.2145.i.lcssa, %.critedge4.i ], [ %.0143.i225, %bb.h ], [ %i.y, %.critedge.i.thread ] ; 2 uses
  %.0140.i = phi i64 [ %i.bq, %.critedge4.i ], [ %i.ac, %bb.h ], [ %i.r, %.critedge.i.thread ] ; 3 uses
  %.0133.i = phi i64 [ %i.bn, %.critedge4.i ], [ 0, %bb.h ], [ 0, %.critedge.i.thread ] ; 3 uses
  %.4131.i = phi ptr [ %.3130.i.lcssa, %.critedge4.i ], [ %.1128.i226, %bb.h ], [ %scevgep, %.critedge.i.thread ] ; 7 uses
  %i.bv = icmp eq i64 %.0140.i, 0
  br i1 %i.bv, label %bb.z, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bw = and i32 %.sroa.0.0.extract.trunc.i, 1
  %.not163.i = icmp eq i32 %i.bw, 0
  %.not164.i = icmp eq ptr %.4131.i, %1
  %or.cond.i = or i1 %.not163.i, %.not164.i
  br i1 %or.cond.i, label %bb.v, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bx = load i8, ptr %.4131.i, align 1, !tbaa !93, !noalias !983
  switch i8 %i.bx, label %bb.v [
    i8 101, label %bb.o
    i8 69, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n, %bb.n
  %i.by = getelementptr inbounds nuw i8, ptr %.4131.i, i64 1 ; 4 uses
  %.not166.i = icmp eq ptr %i.by, %1
  br i1 %.not166.i, label %.critedge171.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !93, !noalias !983 ; 2 uses
  %i.ca = icmp eq i8 %i.bz, 45
  br i1 %i.ca, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cb = getelementptr inbounds nuw i8, ptr %.4131.i, i64 2
  br label %.critedge171.i

bb.r:                                             ; preds = %bb.p
  %i.cc = icmp eq i8 %i.bz, 43
  %i.cd = getelementptr inbounds nuw i8, ptr %.4131.i, i64 2
  %spec.select.i = select i1 %i.cc, ptr %i.cd, ptr %i.by
  br label %.critedge171.i

.critedge171.i:                                   ; preds = %bb.r, %bb.q, %bb.o
  %.5132.i = phi ptr [ %i.cb, %bb.q ], [ %i.by, %bb.o ], [ %spec.select.i, %bb.r ] ; 5 uses
  %.0125.i = phi i1 [ true, %bb.q ], [ false, %bb.o ], [ false, %bb.r ]
  %.5132.i282 = ptrtoaddr ptr %.5132.i to i64
  %i.ce = icmp eq ptr %.5132.i, %1
  br i1 %i.ce, label %bb.u, label %bb.s

bb.s:                                             ; preds = %.critedge171.i
  %i.cf = load i8, ptr %.5132.i, align 1, !tbaa !93, !noalias !983
  %i.cg = add i8 %i.cf, -48
  %i.ch = icmp ult i8 %i.cg, 10
  br i1 %i.ch, label %.lr.ph245.preheader, label %bb.u

.lr.ph245.preheader:                              ; preds = %bb.s
  %i.ci = sub i64 %i.a, %.5132.i282
  %scevgep283 = getelementptr i8, ptr %.5132.i, i64 %i.ci
  br label %.lr.ph245

.lr.ph245:                                        ; preds = %.lr.ph245.preheader, %bb.t
  %.0126.i244 = phi i64 [ %.1.i, %bb.t ], [ 0, %.lr.ph245.preheader ] ; 4 uses
  %.6.i243 = phi ptr [ %i.cq, %bb.t ], [ %.5132.i, %.lr.ph245.preheader ] ; 3 uses
  %i.cj = load i8, ptr %.6.i243, align 1, !tbaa !93, !noalias !983
  %i.ck = add i8 %i.cj, -48                       ; 2 uses
  %i.cl = icmp ult i8 %i.ck, 10
  br i1 %i.cl, label %bb.t, label %.thread

bb.t:                                             ; preds = %.lr.ph245
  %i.cm = icmp slt i64 %.0126.i244, 268435456
  %i.cn = mul nsw i64 %.0126.i244, 10
  %i.co = zext nneg i8 %i.ck to i64
  %i.cp = add nsw i64 %i.cn, %i.co
  %.1.i = select i1 %i.cm, i64 %i.cp, i64 %.0126.i244 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.6.i243, i64 1 ; 2 uses
  %.not167.i = icmp eq ptr %i.cq, %1
  br i1 %.not167.i, label %.thread, label %.lr.ph245, !llvm.loop !976

.thread:                                          ; preds = %.lr.ph245, %bb.t
  %.6.i.lcssa.ph = phi ptr [ %.6.i243, %.lr.ph245 ], [ %scevgep283, %bb.t ]
  %.0126.i.lcssa.ph = phi i64 [ %.0126.i244, %.lr.ph245 ], [ %.1.i, %bb.t ] ; 2 uses
  %i.cr = sub nsw i64 0, %.0126.i.lcssa.ph
  %spec.select172.i = select i1 %.0125.i, i64 %i.cr, i64 %.0126.i.lcssa.ph ; 2 uses
  %i.cs = add nsw i64 %spec.select172.i, %.0133.i
  br label %bb.w

bb.u:                                             ; preds = %.critedge171.i, %bb.s
  %i.ct = and i32 %.sroa.0.0.extract.trunc.i, 2
  %.not168.i.not = icmp eq i32 %i.ct, 0
  br i1 %.not168.i.not, label %bb.z, label %bb.w

bb.v:                                             ; preds = %bb.n, %bb.m
  %i.cu = and i64 %3, 3
  %or.cond173.i.not.not = icmp eq i64 %i.cu, 1
  br i1 %or.cond173.i.not.not, label %bb.z, label %bb.w

bb.w:                                             ; preds = %.thread, %bb.v, %bb.u
  %.3136.i = phi i64 [ %.0133.i, %bb.u ], [ %.0133.i, %bb.v ], [ %i.cs, %.thread ] ; 2 uses
  %.9.i = phi ptr [ %.4131.i, %bb.u ], [ %.4131.i, %bb.v ], [ %.6.i.lcssa.ph, %.thread ] ; 7 uses
  %.5.i = phi i64 [ 0, %bb.u ], [ 0, %bb.v ], [ %spec.select172.i, %.thread ]
  %i.cv = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %.9.i, ptr %i.cv, align 8, !tbaa !985, !alias.scope !983
  store i8 1, ptr %i.e, align 1, !tbaa !986, !alias.scope !983
  %i.cw = icmp sgt i64 %.0140.i, 19
  br i1 %i.cw, label %.preheader, label %bb.aa

.preheader:                                       ; preds = %bb.w, %.critedge10.i
  %.0.i252 = phi ptr [ %i.db, %.critedge10.i ], [ %.0127.i, %bb.w ] ; 2 uses
  %.1141.i251 = phi i64 [ %spec.select175.i, %.critedge10.i ], [ %.0140.i, %bb.w ] ; 2 uses
  %i.cx = load i8, ptr %.0.i252, align 1, !tbaa !93, !noalias !983 ; 2 uses
  %i.cy = icmp eq i8 %i.cx, 48                    ; 2 uses
  %i.cz = icmp eq i8 %i.cx, %.sroa.2.0.extract.trunc.i
  %or.cond174.i = select i1 %i.cy, i1 true, i1 %i.cz
  br i1 %or.cond174.i, label %.critedge10.i, label %.critedge8.i

.critedge10.i:                                    ; preds = %.preheader
  %i.da = sext i1 %i.cy to i64
  %spec.select175.i = add nsw i64 %.1141.i251, %i.da ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.0.i252, i64 1 ; 2 uses
  %.not169.i = icmp eq ptr %i.db, %1
  br i1 %.not169.i, label %.critedge8.i, label %.preheader, !llvm.loop !977

.critedge8.i:                                     ; preds = %.preheader, %.critedge10.i
  %.1141.i.lcssa = phi i64 [ %.1141.i251, %.preheader ], [ %spec.select175.i, %.critedge10.i ]
  %i.dc = icmp sgt i64 %.1141.i.lcssa, 19
  br i1 %i.dc, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %.critedge8.i
  store i8 1, ptr %i.f, align 2, !tbaa !987, !alias.scope !983
  %i.dd = getelementptr inbounds nuw i8, ptr %.0127.i, i64 %i.bt
  %.not265 = icmp samesign eq i64 %i.bt, 0
  br i1 %.not265, label %._crit_edge.thread, label %.lr.ph255

.lr.ph255:                                        ; preds = %bb.x, %.lr.ph255
  %.10.i254 = phi ptr [ %i.dj, %.lr.ph255 ], [ %.0127.i, %bb.x ] ; 2 uses
  %.4147.i253 = phi i64 [ %i.di, %.lr.ph255 ], [ 0, %bb.x ]
  %i.de = mul nuw i64 %.4147.i253, 10
  %i.df = load i8, ptr %.10.i254, align 1, !tbaa !93
  %i.dg = sext i8 %i.df to i64
  %i.dh = add i64 %i.de, -48
  %i.di = add i64 %i.dh, %i.dg                    ; 5 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.10.i254, i64 1 ; 3 uses
  %i.dk = icmp ult i64 %i.di, 1000000000000000000
  %i.dl = icmp ne ptr %i.dj, %i.dd
  %i.dm = select i1 %i.dk, i1 %i.dl, i1 false
  br i1 %i.dm, label %.lr.ph255, label %._crit_edge, !llvm.loop !978

._crit_edge:                                      ; preds = %.lr.ph255
  %i.dn = icmp ugt i64 %i.di, 999999999999999999
  br i1 %i.dn, label %bb.y, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.x, %._crit_edge
  %.4147.i.lcssa313 = phi i64 [ %i.di, %._crit_edge ], [ 0, %bb.x ] ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.br
  %.not266 = icmp samesign eq i64 %i.br, 0
  br i1 %.not266, label %._crit_edge262, label %.lr.ph261

.lr.ph261:                                        ; preds = %._crit_edge.thread, %.lr.ph261
  %.11.i259 = phi ptr [ %i.du, %.lr.ph261 ], [ %i.bs, %._crit_edge.thread ] ; 2 uses
  %.5148.i258 = phi i64 [ %i.dt, %.lr.ph261 ], [ %.4147.i.lcssa313, %._crit_edge.thread ]
  %i.dp = mul nuw i64 %.5148.i258, 10
  %i.dq = load i8, ptr %.11.i259, align 1, !tbaa !93
  %i.dr = sext i8 %i.dq to i64
  %i.ds = add i64 %i.dp, -48
  %i.dt = add i64 %i.ds, %i.dr                    ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.11.i259, i64 1 ; 3 uses
  %i.dv = icmp ult i64 %i.dt, 1000000000000000000
  %i.dw = icmp ne ptr %i.du, %i.do
  %i.dx = select i1 %i.dv, i1 %i.dw, i1 false
  br i1 %i.dx, label %.lr.ph261, label %._crit_edge262, !llvm.loop !979

._crit_edge262:                                   ; preds = %.lr.ph261, %._crit_edge.thread
  %.5148.i.lcssa = phi i64 [ %.4147.i.lcssa313, %._crit_edge.thread ], [ %i.dt, %.lr.ph261 ]
  %.11.i.lcssa = phi ptr [ %i.bs, %._crit_edge.thread ], [ %i.du, %.lr.ph261 ]
  %i.dy = ptrtoint ptr %i.bs to i64
  br label %bb.y

bb.y:                                             ; preds = %._crit_edge, %._crit_edge262
  %.11.i.lcssa.sink = phi ptr [ %.11.i.lcssa, %._crit_edge262 ], [ %i.dj, %._crit_edge ]
  %.sink = phi i64 [ %i.dy, %._crit_edge262 ], [ %i.bu, %._crit_edge ]
  %.6149.i = phi i64 [ %.5148.i.lcssa, %._crit_edge262 ], [ %i.di, %._crit_edge ]
  %i.dz = ptrtoint ptr %.11.i.lcssa.sink to i64
  %i.ea = sub i64 %.sink, %i.dz
  %.4137.i = add nsw i64 %i.ea, %.5.i
  br label %bb.aa

bb.z:                                             ; preds = %bb.d, %bb.c, %bb.l, %bb.u, %bb.v
  %i.eb = tail call { ptr, i32 } @_ZN5boost4json6detail8charconv6detail10fast_float6detail12parse_infnanIdcEENS2_19from_chars_result_tIT0_EEPKS8_SB_RT_(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #47 ; 2 uses
  %i.ec = extractvalue { ptr, i32 } %i.eb, 0
  %i.ed = extractvalue { ptr, i32 } %i.eb, 1
  br label %bb.bc

bb.aa:                                            ; preds = %bb.y, %.critedge8.i, %bb.w
  %i.ee = phi i1 [ false, %bb.w ], [ true, %bb.y ], [ false, %.critedge8.i ] ; 2 uses
  %.8151.i = phi i64 [ %.3146.i, %bb.w ], [ %.6149.i, %bb.y ], [ %.3146.i, %.critedge8.i ] ; 18 uses
  %.6139.i = phi i64 [ %.3136.i, %bb.w ], [ %.4137.i, %bb.y ], [ %.3136.i, %.critedge8.i ] ; 16 uses
  store i64 %.6139.i, ptr %5, align 8, !tbaa !988, !alias.scope !983
  %i.ef = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %.8151.i, ptr %i.ef, align 8, !tbaa !989, !alias.scope !983
  %i.eg = add i64 %.6139.i, -23
  %i.eh = icmp ult i64 %i.eg, -45
end_hunk_0
