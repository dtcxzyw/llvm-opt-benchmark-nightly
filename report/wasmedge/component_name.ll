Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmedge/original/component_name?download=true
inline.NumInlined: 1057
inline.NumDeleted: 437
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN8WasmEdge9Validator12_GLOBAL__N_112parsePkgPathERSt17basic_string_viewIcSt11char_traitsIcEES5_:bb.a
  %i.ac = add nuw i64 %.01116.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ac, %i.r
  br i1 %exitcond.not.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i25, !llvm.loop !120

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i25
  %i.ad = icmp eq i64 %.01116.i.i, -1
  br i1 %i.ad, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit.thread, label %bb.g

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit.thread: ; preds = %bb.f, %bb.e, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store i64 25, ptr %9, align 8, !noalias !127
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr @.str.234, ptr %i.ae, align 8, !noalias !127
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27, !noalias !127
  store i32 679, ptr %i.b, align 4, !tbaa !26, !noalias !127
  %i.af = tail call noundef ptr @_ZN6spdlog18default_logger_rawEv(), !noalias !127
  call void @llvm.lifetime.start.p0(ptr nonnull %8), !noalias !127
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false), !noalias !127
  call void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrCode5ValueEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.af, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %8, i32 noundef 4, ptr nonnull @.str.45, i64 2, ptr noundef nonnull align 4 dereferenceable(4) %i.b), !noalias !127
  call void @llvm.lifetime.end.p0(ptr nonnull %8), !noalias !127
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27, !noalias !127
  %i.ag = call noundef ptr @_ZN6spdlog18default_logger_rawEv(), !noalias !127
  call void @llvm.lifetime.start.p0(ptr nonnull %7), !noalias !127
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false), !noalias !127
  call void @_ZN6spdlog6logger4log_IJRSt17basic_string_viewIcSt11char_traitsIcEEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.ag, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %7, i32 noundef 4, ptr nonnull @.str.44, i64 22, ptr noundef nonnull align 8 dereferenceable(16) %9), !noalias !127
  call void @llvm.lifetime.end.p0(ptr nonnull %7), !noalias !127
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  store i8 0, ptr %0, align 8, !tbaa !30
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 679, ptr %i.ah, align 8, !tbaa !16
  br label %bb.j

bb.g:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 %.01116.i.i
  store ptr %i.ai, ptr %i.f, align 8, !tbaa !23
  %i.aj = sub nuw i64 %i.r, %.01116.i.i
  store i64 %i.aj, ptr %1, align 8, !tbaa !24
  %i.ak = tail call fastcc noundef zeroext i1 @_ZN8WasmEdge9Validator12_GLOBAL__N_122isLowercaseKebabStringESt17basic_string_viewIcSt11char_traitsIcEE(i64 %.01116.i.i, ptr nonnull %i.q)
  br i1 %i.ak, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i64 20, ptr %6, align 8, !noalias !128
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @.str.235, ptr %i.al, align 8, !noalias !128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27, !noalias !128
  store i32 679, ptr %i.a, align 4, !tbaa !26, !noalias !128
  %i.am = tail call noundef ptr @_ZN6spdlog18default_logger_rawEv(), !noalias !128
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false), !noalias !128
  call void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrCode5ValueEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.am, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %5, i32 noundef 4, ptr nonnull @.str.45, i64 2, ptr noundef nonnull align 4 dereferenceable(4) %i.a), !noalias !128
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27, !noalias !128
  %i.an = call noundef ptr @_ZN6spdlog18default_logger_rawEv(), !noalias !128
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false), !noalias !128
  call void @_ZN6spdlog6logger4log_IJRSt17basic_string_viewIcSt11char_traitsIcEEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.an, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %4, i32 noundef 4, ptr nonnull @.str.44, i64 22, ptr noundef nonnull align 8 dereferenceable(16) %6), !noalias !128
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !128
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  store i8 0, ptr %0, align 8, !tbaa !30
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 679, ptr %i.ao, align 8, !tbaa !16
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  store i8 1, ptr %0, align 8, !tbaa !30
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.speculated.i.i, ptr %i.ap, align 8, !tbaa !18
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.g, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8, !tbaa !21
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.01116.i.i, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !18
  %.sroa.5.0..sroa_idx26 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.q, ptr %.sroa.5.0..sroa_idx26, align 8, !tbaa !21
  br label %bb.j

bb.j:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit.thread, %bb.i, %bb.h, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef nonnull align 8 dereferenceable(32) ptr @_ZNR5cxx208expectedIN8WasmEdge9Validator12_GLOBAL__N_17PkgPathENS1_7ErrCodeEE5valueEv(ptr nofree noundef nonnull readonly align 8 captures(ret: address, provenance) dereferenceable(40) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.val = load i8, ptr %0, align 8, !tbaa !30, !range !31, !noundef !32
  %i.a = trunc nuw i8 %.val to i1
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !16
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5cxx2019bad_expected_accessIN8WasmEdge7ErrCodeEEE, i64 16), ptr %i.b, align 8, !tbaa !130
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %i.d, ptr %i.e, align 8, !tbaa !16
  tail call void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN5cxx2019bad_expected_accessIN8WasmEdge7ErrCodeEEE, ptr nonnull @_ZNSt9exceptionD2Ev) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  ret ptr %i.f
}

; Function Attrs: inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define internal fastcc noundef zeroext i1 @"_ZZN8WasmEdge9Validator13ComponentName5parseESt17basic_string_viewIcSt11char_traitsIcEEENK3$_1clES5_"(i64 %0, ptr %1) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i64 %0, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i [
    i64 0, label %_ZN8WasmEdge9Validator12_GLOBAL__N_17tryReadESt17basic_string_viewIcSt11char_traitsIcEERS5_.exit21.thread
    i64 1, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i22
  ]

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %bb.a
  %i.a = load i16, ptr %1, align 1
  %i.b = icmp ne i16 15678, %i.a
  %i.c = zext i1 %i.b to i32
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i22

bb.b:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 5 uses
  %i.f = add i64 %0, -2                           ; 5 uses
  %.not28 = icmp eq i64 %i.f, 0
  br i1 %.not28, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i:       ; preds = %bb.b
  %i.g = tail call ptr @memchr(ptr noundef nonnull %i.e, i32 noundef 32, i64 noundef %i.f) #27 ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread.thread, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i                       ; 4 uses
  %i.k = icmp eq i64 %i.j, -1
  br i1 %i.k, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread.thread, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread.thread: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit, %bb.b, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  %i.l = tail call fastcc noundef zeroext i1 @_ZN8WasmEdge9Validator12_GLOBAL__N_113isValidSemverESt17basic_string_viewIcSt11char_traitsIcEE(i64 %i.f, ptr nonnull %i.e)
  br label %_ZN8WasmEdge9Validator12_GLOBAL__N_17tryReadESt17basic_string_viewIcSt11char_traitsIcEERS5_.exit21.thread

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.f, i64 %i.j)
  %i.m = tail call fastcc noundef zeroext i1 @_ZN8WasmEdge9Validator12_GLOBAL__N_113isValidSemverESt17basic_string_viewIcSt11char_traitsIcEE(i64 %.sroa.speculated.i, ptr nonnull %i.e)
  br i1 %i.m, label %bb.c, label %_ZN8WasmEdge9Validator12_GLOBAL__N_17tryReadESt17basic_string_viewIcSt11char_traitsIcEERS5_.exit21.thread

bb.c:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread
  %i.n = add nuw i64 %i.j, 1                      ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.n ; 2 uses
  %i.p = icmp eq i64 %i.f, %i.n
  br i1 %i.p, label %_ZN8WasmEdge9Validator12_GLOBAL__N_17tryReadESt17basic_string_viewIcSt11char_traitsIcEERS5_.exit21.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i17

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i17: ; preds = %bb.c
  %rhsc = load i8, ptr %i.o, align 1
  %i.q = icmp eq i8 %rhsc, 60
  br i1 %i.q, label %bb.d, label %_ZN8WasmEdge9Validator12_GLOBAL__N_17tryReadESt17basic_string_viewIcSt11char_traitsIcEERS5_.exit21.thread

bb.d:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i17
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.s = sub i64 %0, %i.j
  %i.t = add i64 %i.s, -4
  %i.u = tail call fastcc noundef zeroext i1 @_ZN8WasmEdge9Validator12_GLOBAL__N_113isValidSemverESt17basic_string_viewIcSt11char_traitsIcEE(i64 %i.t, ptr nonnull %i.r)
  br label %_ZN8WasmEdge9Validator12_GLOBAL__N_17tryReadESt17basic_string_viewIcSt11char_traitsIcEERS5_.exit21.thread

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i22: ; preds = %bb.a, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %rhsc30 = load i8, ptr %1, align 1
  %i.v = icmp eq i8 %rhsc30, 60
  br i1 %i.v, label %bb.e, label %_ZN8WasmEdge9Validator12_GLOBAL__N_17tryReadESt17basic_string_viewIcSt11char_traitsIcEERS5_.exit21.thread

bb.e:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i22
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.x = add i64 %0, -1
  %i.y = tail call fastcc noundef zeroext i1 @_ZN8WasmEdge9Validator12_GLOBAL__N_113isValidSemverESt17basic_string_viewIcSt11char_traitsIcEE(i64 %i.x, ptr nonnull %i.w)
  br label %_ZN8WasmEdge9Validator12_GLOBAL__N_17tryReadESt17basic_string_viewIcSt11char_traitsIcEERS5_.exit21.thread

_ZN8WasmEdge9Validator12_GLOBAL__N_17tryReadESt17basic_string_viewIcSt11char_traitsIcEERS5_.exit21.thread: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread.thread, %bb.a, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i22, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i17, %bb.c, %bb.e, %bb.d, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread
  %.2 = phi i1 [ false, %bb.a ], [ false, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i17 ], [ %i.y, %bb.e ], [ false, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread ], [ %i.u, %bb.d ], [ false, %bb.c ], [ false, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i22 ], [ %i.l, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread.thread ]
  ret i1 %.2
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define internal fastcc noundef zeroext i1 @_ZN8WasmEdge9Validator12_GLOBAL__N_113isValidSemverESt17basic_string_viewIcSt11char_traitsIcEE(i64 %0, ptr %1) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  br i1 %i.a, label %_ZN8WasmEdge9Validator12_GLOBAL__N_119isPreReleaseOrBuildESt17basic_string_viewIcSt11char_traitsIcEEb.exit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %i.b = load i8, ptr %1, align 1, !tbaa !16      ; 2 uses
  %i.c = icmp eq i8 %i.b, 48
  br i1 %i.c, label %_ZN8WasmEdge9Validator12_GLOBAL__N_112parseNumericESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread58, label %bb.b

bb.b:                                             ; preds = %.preheader.preheader
  %i.d = add i8 %i.b, -58
  %or.cond.i = icmp ult i8 %i.d, -9
  %.not.i = icmp eq i64 %0, 1
  %or.cond = or i1 %or.cond.i, %.not.i
  br i1 %or.cond, label %_ZN8WasmEdge9Validator12_GLOBAL__N_119isPreReleaseOrBuildESt17basic_string_viewIcSt11char_traitsIcEEb.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %.010.i = phi i64 [ %i.g, %bb.c ], [ 1, %bb.b ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %.010.i
  %i.f = load i8, ptr %i.e, align 1, !tbaa !16
  %2 = sext i8 %i.f to i32
  %isdigittmp.i = add nsw i32 %2, -48
  %isdigit.i = icmp ult i32 %isdigittmp.i, 10
  br i1 %isdigit.i, label %bb.c, label %_ZN8WasmEdge9Validator12_GLOBAL__N_112parseNumericESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.c:                                             ; preds = %.lr.ph.i
  %i.g = add nuw i64 %.010.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.g, %0
  br i1 %exitcond.not.i, label %_ZN8WasmEdge9Validator12_GLOBAL__N_112parseNumericESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %.lr.ph.i, !llvm.loop !0

_ZN8WasmEdge9Validator12_GLOBAL__N_112parseNumericESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %.lr.ph.i, %bb.c
  %.05.i = phi i64 [ %0, %bb.c ], [ %.010.i, %.lr.ph.i ] ; 2 uses
  %i.h = icmp eq i64 %.05.i, -1
  br i1 %i.h, label %_ZN8WasmEdge9Validator12_GLOBAL__N_119isPreReleaseOrBuildESt17basic_string_viewIcSt11char_traitsIcEEb.exit, label %_ZN8WasmEdge9Validator12_GLOBAL__N_112parseNumericESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread58

_ZN8WasmEdge9Validator12_GLOBAL__N_112parseNumericESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread58: ; preds = %_ZN8WasmEdge9Validator12_GLOBAL__N_112parseNumericESt17basic_string_viewIcSt11char_traitsIcEE.exit, %.preheader.preheader
  %.05.i60 = phi i64 [ %.05.i, %_ZN8WasmEdge9Validator12_GLOBAL__N_112parseNumericESt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ 1, %.preheader.preheader ] ; 3 uses
  %.not27 = icmp ult i64 %.05.i60, %0
  br i1 %.not27, label %bb.d, label %_ZN8WasmEdge9Validator12_GLOBAL__N_119isPreReleaseOrBuildESt17basic_string_viewIcSt11char_traitsIcEEb.exit

bb.d:                                             ; preds = %_ZN8WasmEdge9Validator12_GLOBAL__N_112parseNumericESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread58
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %.05.i60
  %i.j = load i8, ptr %i.i, align 1, !tbaa !16
  %.not28 = icmp eq i8 %i.j, 46
  br i1 %.not28, label %.preheader.1, label %_ZN8WasmEdge9Validator12_GLOBAL__N_119isPreReleaseOrBuildESt17basic_string_viewIcSt11char_traitsIcEEb.exit

.preheader.1:                                     ; preds = %bb.d
  %i.k = add nuw i64 %.05.i60, 1                  ; 2 uses
  %.sroa.0.1 = sub i64 %0, %i.k                   ; 6 uses
  %.sroa.21.1 = getelementptr inbounds nuw i8, ptr %1, i64 %i.k ; 4 uses
  %i.l = icmp eq i64 %.sroa.0.1, 0
  br i1 %i.l, label %_ZN8WasmEdge9Validator12_GLOBAL__N_119isPreReleaseOrBuildESt17basic_string_viewIcSt11char_traitsIcEEb.exit, label %bb.e

bb.e:                                             ; preds = %.preheader.1
  %i.m = load i8, ptr %.sroa.21.1, align 1, !tbaa !16 ; 2 uses
  %i.n = icmp eq i8 %i.m, 48
  br i1 %i.n, label %_ZN8WasmEdge9Validator12_GLOBAL__N_112parseNumericESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread58.1, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = add i8 %i.m, -58
  %or.cond.i.1 = icmp ult i8 %i.o, -9
  %.not.i.1 = icmp eq i64 %.sroa.0.1, 1
  %or.cond114 = or i1 %or.cond.i.1, %.not.i.1
  br i1 %or.cond114, label %_ZN8WasmEdge9Validator12_GLOBAL__N_119isPreReleaseOrBuildESt17basic_string_viewIcSt11char_traitsIcEEb.exit, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.f, %bb.g
  %.010.i.1 = phi i64 [ %i.r, %bb.g ], [ 1, %bb.f ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.21.1, i64 %.010.i.1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !16
  %3 = sext i8 %i.q to i32
  %isdigittmp.i.1 = add nsw i32 %3, -48
  %isdigit.i.1 = icmp ult i32 %isdigittmp.i.1, 10
  br i1 %isdigit.i.1, label %bb.g, label %_ZN8WasmEdge9Validator12_GLOBAL__N_112parseNumericESt17basic_string_viewIcSt11char_traitsIcEE.exit.1

bb.g:                                             ; preds = %.lr.ph.i.1
  %i.r = add nuw i64 %.010.i.1, 1                 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.r, %.sroa.0.1
  br i1 %exitcond.not.i.1, label %_ZN8WasmEdge9Validator12_GLOBAL__N_112parseNumericESt17basic_string_viewIcSt11char_traitsIcEE.exit.1, label %.lr.ph.i.1, !llvm.loop !0

_ZN8WasmEdge9Validator12_GLOBAL__N_112parseNumericESt17basic_string_viewIcSt11char_traitsIcEE.exit.1: ; preds = %bb.g, %.lr.ph.i.1
  %.05.i.1 = phi i64 [ %.sroa.0.1, %bb.g ], [ %.010.i.1, %.lr.ph.i.1 ] ; 2 uses
  %i.s = icmp eq i64 %.05.i.1, -1
  br i1 %i.s, label %_ZN8WasmEdge9Validator12_GLOBAL__N_119isPreReleaseOrBuildESt17basic_string_viewIcSt11char_traitsIcEEb.exit, label %_ZN8WasmEdge9Validator12_GLOBAL__N_112parseNumericESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread58.1

_ZN8WasmEdge9Validator12_GLOBAL__N_112parseNumericESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread58.1: ; preds = %bb.e, %_ZN8WasmEdge9Validator12_GLOBAL__N_112parseNumericESt17basic_string_viewIcSt11char_traitsIcEE.exit.1
  %.05.i60.1 = phi i64 [ %.05.i.1, %_ZN8WasmEdge9Validator12_GLOBAL__N_112parseNumericESt17basic_string_viewIcSt11char_traitsIcEE.exit.1 ], [ 1, %bb.e ] ; 3 uses
  %.not27.1 = icmp ult i64 %.05.i60.1, %.sroa.0.1
  br i1 %.not27.1, label %bb.h, label %_ZN8WasmEdge9Validator12_GLOBAL__N_119isPreReleaseOrBuildESt17basic_string_viewIcSt11char_traitsIcEEb.exit

bb.h:                                             ; preds = %_ZN8WasmEdge9Validator12_GLOBAL__N_112parseNumericESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread58.1
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.21.1, i64 %.05.i60.1
  %i.u = load i8, ptr %i.t, align 1, !tbaa !16
  %.not28.1 = icmp eq i8 %i.u, 46
  br i1 %.not28.1, label %.preheader.2, label %_ZN8WasmEdge9Validator12_GLOBAL__N_119isPreReleaseOrBuildESt17basic_string_viewIcSt11char_traitsIcEEb.exit

.preheader.2:                                     ; preds = %bb.h
  %i.v = add nuw i64 %.05.i60.1, 1                ; 2 uses
  %.sroa.0.1.1 = sub i64 %.sroa.0.1, %i.v         ; 5 uses
  %.sroa.21.1.1 = getelementptr inbounds nuw i8, ptr %.sroa.21.1, i64 %i.v ; 3 uses
  %i.w = icmp eq i64 %.sroa.0.1.1, 0
  br i1 %i.w, label %_ZN8WasmEdge9Validator12_GLOBAL__N_119isPreReleaseOrBuildESt17basic_string_viewIcSt11char_traitsIcEEb.exit, label %bb.i

bb.i:                                             ; preds = %.preheader.2
  %i.x = load i8, ptr %.sroa.21.1.1, align 1, !tbaa !16 ; 2 uses
  %i.y = icmp eq i8 %i.x, 48
  br i1 %i.y, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = add i8 %i.x, -49
  %or.cond.i.2 = icmp ult i8 %i.z, 9
  br i1 %or.cond.i.2, label %.preheader.i.2, label %_ZN8WasmEdge9Validator12_GLOBAL__N_119isPreReleaseOrBuildESt17basic_string_viewIcSt11char_traitsIcEEb.exit

.preheader.i.2:                                   ; preds = %bb.j
  %.not.i.2 = icmp eq i64 %.sroa.0.1.1, 1
  br i1 %.not.i.2, label %.critedge, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %.preheader.i.2, %bb.k
  %.010.i.2 = phi i64 [ %i.ac, %bb.k ], [ 1, %.preheader.i.2 ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.21.1.1, i64 %.010.i.2
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !16
  %4 = sext i8 %i.ab to i32
  %isdigittmp.i.2 = add nsw i32 %4, -48
  %isdigit.i.2 = icmp ult i32 %isdigittmp.i.2, 10
  br i1 %isdigit.i.2, label %bb.k, label %_ZN8WasmEdge9Validator12_GLOBAL__N_112parseNumericESt17basic_string_viewIcSt11char_traitsIcEE.exit.2

bb.k:                                             ; preds = %.lr.ph.i.2
  %i.ac = add nuw i64 %.010.i.2, 1                ; 2 uses
  %exitcond.not.i.2 = icmp eq i64 %i.ac, %.sroa.0.1.1
  br i1 %exitcond.not.i.2, label %_ZN8WasmEdge9Validator12_GLOBAL__N_112parseNumericESt17basic_string_viewIcSt11char_traitsIcEE.exit.2, label %.lr.ph.i.2, !llvm.loop !0

_ZN8WasmEdge9Validator12_GLOBAL__N_112parseNumericESt17basic_string_viewIcSt11char_traitsIcEE.exit.2: ; preds = %bb.k, %.lr.ph.i.2
  %.05.i.2 = phi i64 [ %.sroa.0.1.1, %bb.k ], [ %.010.i.2, %.lr.ph.i.2 ] ; 2 uses
  %i.ad = icmp eq i64 %.05.i.2, -1
  br i1 %i.ad, label %_ZN8WasmEdge9Validator12_GLOBAL__N_119isPreReleaseOrBuildESt17basic_string_viewIcSt11char_traitsIcEEb.exit, label %.critedge

.critedge:                                        ; preds = %bb.i, %_ZN8WasmEdge9Validator12_GLOBAL__N_112parseNumericESt17basic_string_viewIcSt11char_traitsIcEE.exit.2, %.preheader.i.2
  %.05.i6077.pn.2 = phi i64 [ 1, %.preheader.i.2 ], [ %.05.i.2, %_ZN8WasmEdge9Validator12_GLOBAL__N_112parseNumericESt17basic_string_viewIcSt11char_traitsIcEE.exit.2 ], [ 1, %bb.i ] ; 2 uses
  %.sroa.0.1.2 = sub i64 %.sroa.0.1.1, %.05.i6077.pn.2 ; 3 uses
  %.sroa.21.1.2 = getelementptr inbounds nuw i8, ptr %.sroa.21.1.1, i64 %.05.i6077.pn.2 ; 3 uses
  %i.ae = icmp eq i64 %.sroa.0.1.2, 0
  br i1 %i.ae, label %_ZN8WasmEdge9Validator12_GLOBAL__N_119isPreReleaseOrBuildESt17basic_string_viewIcSt11char_traitsIcEEb.exit, label %bb.l

bb.l:                                             ; preds = %.critedge
  %i.af = load i8, ptr %.sroa.21.1.2, align 1, !tbaa !16 ; 2 uses
  %i.ag = icmp eq i8 %i.af, 45
  br i1 %i.ag, label %bb.m, label %.thread69

bb.m:                                             ; preds = %bb.l
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.21.1.2, i64 1 ; 5 uses
  %i.ai = add i64 %.sroa.0.1.2, -1                ; 5 uses
  %.not81 = icmp eq i64 %i.ai, 0
  br i1 %.not81, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i:       ; preds = %bb.m
  %i.aj = tail call ptr @memchr(ptr noundef nonnull %i.ah, i32 noundef 43, i64 noundef %i.ai) #27 ; 2 uses
  %.not.i30 = icmp eq ptr %i.aj, null
  br i1 %.not.i30, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread.thread, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.ah to i64
  %i.am = sub i64 %i.ak, %i.al                    ; 4 uses
  %i.an = icmp eq i64 %i.am, -1
  br i1 %i.an, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread.thread, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread.thread: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit, %bb.m, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  %i.ao = tail call fastcc noundef zeroext i1 @_ZN8WasmEdge9Validator12_GLOBAL__N_119isPreReleaseOrBuildESt17basic_string_viewIcSt11char_traitsIcEEb(i64 %i.ai, ptr nonnull %i.ah, i1 noundef zeroext true)
  br label %_ZN8WasmEdge9Validator12_GLOBAL__N_119isPreReleaseOrBuildESt17basic_string_viewIcSt11char_traitsIcEEb.exit

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.ai, i64 %i.am)
  %i.ap = tail call fastcc noundef zeroext i1 @_ZN8WasmEdge9Validator12_GLOBAL__N_119isPreReleaseOrBuildESt17basic_string_viewIcSt11char_traitsIcEEb(i64 %.sroa.speculated.i, ptr nonnull %i.ah, i1 noundef zeroext true)
  br i1 %i.ap, label %bb.n, label %_ZN8WasmEdge9Validator12_GLOBAL__N_119isPreReleaseOrBuildESt17basic_string_viewIcSt11char_traitsIcEEb.exit

bb.n:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread
  %i.aq = sub i64 %i.ai, %i.am                    ; 2 uses
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %_ZN8WasmEdge9Validator12_GLOBAL__N_119isPreReleaseOrBuildESt17basic_string_viewIcSt11char_traitsIcEEb.exit, label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.n
  %i.as = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.am ; 2 uses
  %.pr = load i8, ptr %i.as, align 1, !tbaa !16
  br label %.thread69

.thread69:                                        ; preds = %bb.l, %thread-pre-split
  %i.at = phi i8 [ %.pr, %thread-pre-split ], [ %i.af, %bb.l ]
  %.sroa.0.373 = phi i64 [ %i.aq, %thread-pre-split ], [ %.sroa.0.1.2, %bb.l ]
  %.sroa.21.372 = phi ptr [ %i.as, %thread-pre-split ], [ %.sroa.21.1.2, %bb.l ]
  %i.au = icmp eq i8 %i.at, 43
  br i1 %i.au, label %bb.o, label %_ZN8WasmEdge9Validator12_GLOBAL__N_119isPreReleaseOrBuildESt17basic_string_viewIcSt11char_traitsIcEEb.exit

bb.o:                                             ; preds = %.thread69
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.21.372, i64 1 ; 2 uses
  %i.aw = add i64 %.sroa.0.373, -1                ; 3 uses
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %_ZN8WasmEdge9Validator12_GLOBAL__N_119isPreReleaseOrBuildESt17basic_string_viewIcSt11char_traitsIcEEb.exit, label %.preheader.split.i

.preheader.split.i:                               ; preds = %bb.o
  %i.ay = ptrtoint ptr %i.av to i64
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %.critedge.i, %.preheader.split.i
  %.02886.i = phi i64 [ %.1.i57.i, %.critedge.i ], [ 0, %.preheader.split.i ] ; 3 uses
  %i.az = sub nuw i64 %i.aw, %.02886.i            ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 %.02886.i ; 3 uses
  %i.bb = tail call ptr @memchr(ptr noundef nonnull %i.ba, i32 noundef 46, i64 noundef %i.az) #27 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.i

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.i: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = sub i64 %i.bc, %i.ay                    ; 3 uses
  %i.be = icmp eq i64 %i.bd, -1
  br i1 %i.be, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit41.i

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit41.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.i
  %i.bf = sub i64 %i.bd, %.02886.i
  %.sroa.speculated.i.i = tail call i64 @llvm.umin.i64(i64 %i.az, i64 %i.bf)
  %i.bg = add nuw i64 %i.bd, 1
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread.i

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit41.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %.not91.i = phi i1 [ true, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit41.i ], [ false, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i ], [ false, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.i ]
  %.1.i57.i = phi i64 [ %i.bg, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit41.i ], [ 0, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i ], [ 0, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.i ] ; 2 uses
  %.sroa.0.0.i = phi i64 [ %.sroa.speculated.i.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit41.i ], [ %i.az, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i ], [ %i.az, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.i ] ; 2 uses
  %.not123.i.not.not = icmp ne i64 %.sroa.0.0.i, 0 ; 3 uses
  br i1 %.not123.i.not.not, label %.lr.ph.preheader.i, label %_ZN8WasmEdge9Validator12_GLOBAL__N_119isPreReleaseOrBuildESt17basic_string_viewIcSt11char_traitsIcEEb.exit

.lr.ph.preheader.i:                               ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.sroa.0.0.i
  br label %.lr.ph.i31

bb.p:                                             ; preds = %.lr.ph.i31
  %i.bi = getelementptr inbounds nuw i8, ptr %.071.i, i64 1 ; 2 uses
  %.not.i32 = icmp eq ptr %i.bi, %i.bh
  br i1 %.not.i32, label %.critedge.i, label %.lr.ph.i31

.lr.ph.i31:                                       ; preds = %bb.p, %.lr.ph.preheader.i
  %.071.i = phi ptr [ %i.bi, %bb.p ], [ %i.ba, %.lr.ph.preheader.i ] ; 2 uses
  %i.bj = load i8, ptr %.071.i, align 1, !tbaa !16 ; 2 uses
  %i.bk = sext i8 %i.bj to i32
  %i.bl = tail call i32 @isalnum(i32 noundef %i.bk) #26
  %i.bm = icmp ne i32 %i.bl, 0
  %i.bn = icmp eq i8 %i.bj, 45
  %or.cond.not.i = or i1 %i.bn, %i.bm
  br i1 %or.cond.not.i, label %bb.p, label %_ZN8WasmEdge9Validator12_GLOBAL__N_119isPreReleaseOrBuildESt17basic_string_viewIcSt11char_traitsIcEEb.exit

.critedge.i:                                      ; preds = %bb.p
  %i.bo = icmp ult i64 %.1.i57.i, %i.aw
  %or.cond93.i = select i1 %.not91.i, i1 %i.bo, i1 false
  br i1 %or.cond93.i, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, label %_ZN8WasmEdge9Validator12_GLOBAL__N_119isPreReleaseOrBuildESt17basic_string_viewIcSt11char_traitsIcEEb.exit

_ZN8WasmEdge9Validator12_GLOBAL__N_119isPreReleaseOrBuildESt17basic_string_viewIcSt11char_traitsIcEEb.exit: ; preds = %.critedge.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread.i, %.lr.ph.i31, %bb.b, %_ZN8WasmEdge9Validator12_GLOBAL__N_112parseNumericESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread58, %_ZN8WasmEdge9Validator12_GLOBAL__N_112parseNumericESt17basic_string_viewIcSt11char_traitsIcEE.exit, %bb.d, %.preheader.1, %bb.f, %_ZN8WasmEdge9Validator12_GLOBAL__N_112parseNumericESt17basic_string_viewIcSt11char_traitsIcEE.exit.1, %_ZN8WasmEdge9Validator12_GLOBAL__N_112parseNumericESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread58.1, %bb.h, %.preheader.2, %bb.j, %_ZN8WasmEdge9Validator12_GLOBAL__N_112parseNumericESt17basic_string_viewIcSt11char_traitsIcEE.exit.2, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread.thread, %bb.n, %.thread69, %bb.o, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, %.critedge, %bb.a
  %.4 = phi i1 [ true, %bb.n ], [ false, %bb.a ], [ false, %.thread69 ], [ false, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread ], [ true, %.critedge ], [ false, %bb.o ], [ %i.ao, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread.thread ], [ false, %bb.b ], [ false, %_ZN8WasmEdge9Validator12_GLOBAL__N_112parseNumericESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread58 ], [ false, %bb.d ], [ false, %_ZN8WasmEdge9Validator12_GLOBAL__N_112parseNumericESt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ false, %.lr.ph.i31 ], [ false, %_ZN8WasmEdge9Validator12_GLOBAL__N_112parseNumericESt17basic_string_viewIcSt11char_traitsIcEE.exit.2 ], [ false, %bb.j ], [ false, %.preheader.2 ], [ false, %bb.h ], [ false, %_ZN8WasmEdge9Validator12_GLOBAL__N_112parseNumericESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread58.1 ], [ false, %_ZN8WasmEdge9Validator12_GLOBAL__N_112parseNumericESt17basic_string_viewIcSt11char_traitsIcEE.exit.1 ], [ false, %bb.f ], [ false, %.preheader.1 ], [ %.not123.i.not.not, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread.i ], [ %.not123.i.not.not, %.critedge.i ]
  ret i1 %.4
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN8WasmEdge9Validator12_GLOBAL__N_123tryParseIntegritySuffixERSt17basic_string_viewIcSt11char_traitsIcEES6_(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 4 captures(none) initializes((0, 1), (4, 8)) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %2) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %4 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %5 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %6 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %7 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %8 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %9 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %10 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %11 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %12 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %13 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %14 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i64, ptr %1, align 8, !tbaa !24     ; 3 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  store i64 1, ptr %0, align 4
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.g = icmp ult i64 %i.e, 12
  br i1 %i.g, label %bb.d, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !23   ; 3 uses
  %i.j = load i64, ptr %i.i, align 1
  %i.k = xor i64 7598249206770198828, %i.j
  %i.l = getelementptr i8, ptr %i.i, i64 8
  %i.m = load i32, ptr %i.l, align 1
  %i.n = zext i32 %i.m to i64
  %i.o = xor i64 1010661748, %i.n
  %i.p = or i64 %i.k, %i.o
  %i.q = icmp ne i64 %i.p, 0
  %i.r = zext i1 %i.q to i32
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  store i64 30, ptr %14, align 8, !noalias !139
  %i.t = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr @.str.241, ptr %i.t, align 8, !noalias !139
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27, !noalias !139
  store i32 679, ptr %i.d, align 4, !tbaa !26, !noalias !139
  %i.u = tail call noundef ptr @_ZN6spdlog18default_logger_rawEv(), !noalias !139
  call void @llvm.lifetime.start.p0(ptr nonnull %13), !noalias !139
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false), !noalias !139
  call void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrCode5ValueEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.u, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %13, i32 noundef 4, ptr nonnull @.str.45, i64 2, ptr noundef nonnull align 4 dereferenceable(4) %i.d), !noalias !139
  call void @llvm.lifetime.end.p0(ptr nonnull %13), !noalias !139
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27, !noalias !139
  %i.v = call noundef ptr @_ZN6spdlog18default_logger_rawEv(), !noalias !139
  call void @llvm.lifetime.start.p0(ptr nonnull %12), !noalias !139
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false), !noalias !139
  call void @_ZN6spdlog6logger4log_IJRSt17basic_string_viewIcSt11char_traitsIcEEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.v, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %12, i32 noundef 4, ptr nonnull @.str.44, i64 22, ptr noundef nonnull align 8 dereferenceable(16) %14), !noalias !139
  call void @llvm.lifetime.end.p0(ptr nonnull %12), !noalias !139
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
end_hunk_0
begin_hunk_1_@_ZN8WasmEdge9Validator12_GLOBAL__N_122isLowercaseKebabStringESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  %.01330 = phi ptr [ %i.i, %.critedge ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %i.f = load i8, ptr %.01330, align 1, !tbaa !16 ; 2 uses
  %.not16 = icmp eq i8 %i.f, 45
  br i1 %.not16, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.g = sext i8 %i.f to i32                      ; 2 uses
  %i.h = tail call i32 @islower(i32 noundef %i.g) #26
  %.not17 = icmp ne i32 %i.h, 0
  %isdigittmp = add nsw i32 %i.g, -48
  %isdigit = icmp ult i32 %isdigittmp, 10
  %or.cond = select i1 %.not17, i1 true, i1 %isdigit
  br i1 %or.cond, label %.critedge, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit

.critedge:                                        ; preds = %bb.c, %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %.01330, i64 1 ; 2 uses
  %.not15 = icmp eq ptr %i.i, %i.e
  br i1 %.not15, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.critedge
  %i.j = getelementptr inbounds i8, ptr %i.e, i64 -1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !16
  %.not18 = icmp eq i8 %i.k, 45
  br i1 %.not18, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %.not2531.i.i = icmp eq i64 %0, 1
  br i1 %.not2531.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d
  %i.l = ptrtoint ptr %i.e to i64
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %bb.f, %.lr.ph.i.i
  %.033.i.i = phi i64 [ %0, %.lr.ph.i.i ], [ %i.x, %bb.f ]
  %.02032.i.i = phi ptr [ %1, %.lr.ph.i.i ], [ %i.v, %bb.f ]
  %.reass.reass.i.reass.reass.i = add i64 %.033.i.i, -1
  %i.m = tail call ptr @memchr(ptr noundef nonnull %.02032.i.i, i32 noundef 45, i64 noundef %.reass.reass.i.reass.reass.i) #27 ; 4 uses
  %.not26.i.i = icmp eq ptr %i.m, null
  br i1 %.not26.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %i.n = load i16, ptr %i.m, align 1
  %i.o = icmp ne i16 %i.n, 11565
  %i.p = zext i1 %i.o to i32
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.r = ptrtoint ptr %i.m to i64
  %i.s = ptrtoint ptr %1 to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = icmp eq i64 %i.t, -1
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit

bb.f:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 1 ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.l, %i.w                       ; 2 uses
  %.not25.i.i = icmp ult i64 %i.x, 2
  br i1 %.not25.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, !llvm.loop !148

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit: ; preds = %bb.c, %bb.f, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %bb.e, %bb.d, %._crit_edge, %bb.a, %bb.b
  %.3 = phi i1 [ true, %bb.f ], [ false, %bb.a ], [ false, %bb.b ], [ false, %._crit_edge ], [ %i.u, %bb.e ], [ true, %bb.d ], [ true, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i ], [ false, %bb.c ]
  ret i1 %.3
}

; Function Attrs: mustprogress nofree nounwind memory(read, argmem: readwrite) uwtable
define internal fastcc noundef zeroext i1 @_ZN8WasmEdge9Validator12_GLOBAL__N_112tryReadKebabERSt17basic_string_viewIcSt11char_traitsIcEES6_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1) unnamed_addr #7 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !24     ; 4 uses
  %.not18 = icmp eq i64 %i.a, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !23 ; 2 uses
  br i1 %.not18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.013 = phi i64 [ %i.g, %bb.b ], [ 0, %bb.a ]   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.pre, i64 %.013
  %i.c = load i8, ptr %i.b, align 1, !tbaa !16    ; 2 uses
  %i.d = sext i8 %i.c to i32
  %i.e = tail call i32 @isalnum(i32 noundef %i.d) #26
  %.not = icmp ne i32 %i.e, 0
  %i.f = icmp eq i8 %i.c, 45
  %or.cond = or i1 %i.f, %.not
  br i1 %or.cond, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %.lr.ph
  %i.g = add nuw i64 %.013, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.g, %i.a
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !149

._crit_edge:                                      ; preds = %bb.b, %.lr.ph, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %.013, %.lr.ph ], [ %i.a, %bb.b ] ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.a, i64 %.0.lcssa)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 %.sroa.speculated.i, ptr %1, align 8, !tbaa !18
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store ptr %.pre, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !21
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !23
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %.0.lcssa
  store ptr %i.j, ptr %i.h, align 8, !tbaa !23
  %i.k = load i64, ptr %0, align 8, !tbaa !24
  %i.l = sub i64 %i.k, %.0.lcssa
  store i64 %i.l, ptr %0, align 8, !tbaa !24
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !18 ; 2 uses
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !21 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 %.sroa.0.0.copyload ; 2 uses
  %.not4355.i = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %.not4355.i, label %_ZN8WasmEdge9Validator13isKebabStringESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge, %bb.i
  %.02860.i = phi ptr [ %i.x, %bb.i ], [ %.sroa.2.0.copyload, %._crit_edge ] ; 2 uses
  %.02959.i = phi i1 [ %.130.i, %bb.i ], [ false, %._crit_edge ] ; 3 uses
  %.03158.i = phi i8 [ %.132.i, %bb.i ], [ 0, %._crit_edge ] ; 4 uses
  %.03457.i = phi i8 [ %.135.i, %bb.i ], [ 0, %._crit_edge ] ; 3 uses
  %.03756.i = phi i1 [ %.138.i, %bb.i ], [ true, %._crit_edge ] ; 4 uses
  %i.n = load i8, ptr %.02860.i, align 1, !tbaa !16 ; 2 uses
  %i.o = sext i8 %i.n to i32                      ; 3 uses
  %i.p = tail call i32 @islower(i32 noundef %i.o) #26
  %.not44.i = icmp eq i32 %i.p, 0
  br i1 %.not44.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.q = trunc nuw i8 %.03457.i to i1
  br i1 %i.q, label %_ZN8WasmEdge9Validator13isKebabStringESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %bb.i

bb.d:                                             ; preds = %.lr.ph.i
  %i.r = tail call i32 @isupper(i32 noundef %i.o) #26
  %.not45.i = icmp eq i32 %i.r, 0
  br i1 %.not45.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = trunc nuw i8 %.03158.i to i1
  br i1 %i.s, label %_ZN8WasmEdge9Validator13isKebabStringESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %bb.i

bb.f:                                             ; preds = %bb.d
  %isdigittmp.i = add nsw i32 %i.o, -48
  %isdigit.i = icmp ult i32 %isdigittmp.i, 10
  %i.t = trunc nuw i8 %.03457.i to i1             ; 2 uses
  br i1 %isdigit.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %.not.i = xor i1 %.03756.i, true
  %or.cond.i = select i1 %.not.i, i1 true, i1 %i.t
  %i.u = trunc nuw i8 %.03158.i to i1
  %or.cond4.i = select i1 %or.cond.i, i1 true, i1 %i.u
  br i1 %or.cond4.i, label %bb.i, label %_ZN8WasmEdge9Validator13isKebabStringESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.h:                                             ; preds = %bb.f
  %i.v = icmp eq i8 %i.n, 45
  %i.w = trunc nuw i8 %.03158.i to i1
  %or.cond6.i = select i1 %i.t, i1 true, i1 %i.w
  %or.cond8.i = select i1 %or.cond6.i, i1 true, i1 %.02959.i
  %or.cond50.i = select i1 %i.v, i1 %or.cond8.i, i1 false
  br i1 %or.cond50.i, label %bb.i, label %_ZN8WasmEdge9Validator13isKebabStringESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.e, %bb.c
  %.138.i = phi i1 [ %.03756.i, %bb.g ], [ %.03756.i, %bb.c ], [ %.03756.i, %bb.e ], [ false, %bb.h ]
  %.135.i = phi i8 [ %.03457.i, %bb.g ], [ 0, %bb.c ], [ 1, %bb.e ], [ 0, %bb.h ]
  %.132.i = phi i8 [ %.03158.i, %bb.g ], [ 1, %bb.c ], [ 0, %bb.e ], [ 0, %bb.h ]
  %.130.i = phi i1 [ true, %bb.g ], [ %.02959.i, %bb.c ], [ %.02959.i, %bb.e ], [ false, %bb.h ]
  %i.x = getelementptr inbounds nuw i8, ptr %.02860.i, i64 1 ; 2 uses
  %.not43.i = icmp eq ptr %i.x, %i.m
  br i1 %.not43.i, label %.critedge47.i, label %.lr.ph.i

.critedge47.i:                                    ; preds = %bb.i
  %i.y = getelementptr inbounds i8, ptr %i.m, i64 -1
  %i.z = load i8, ptr %i.y, align 1, !tbaa !16
  %i.aa = icmp ne i8 %i.z, 45
  br label %_ZN8WasmEdge9Validator13isKebabStringESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN8WasmEdge9Validator13isKebabStringESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.c, %bb.e, %bb.g, %bb.h, %._crit_edge, %.critedge47.i
  %.3.i = phi i1 [ %i.aa, %.critedge47.i ], [ false, %._crit_edge ], [ false, %bb.h ], [ false, %bb.g ], [ false, %bb.e ], [ false, %bb.c ]
  ret i1 %.3.i
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define internal fastcc noundef zeroext i1 @_ZN8WasmEdge9Validator12_GLOBAL__N_19isVersionESt17basic_string_viewIcSt11char_traitsIcEE(i64 %0, ptr nofree readonly %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  br i1 %i.a, label %_ZN8WasmEdge9Validator12_GLOBAL__N_114isCanonVersionESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a, %bb.d
  %.0624.i = phi i32 [ %i.o, %bb.d ], [ 0, %bb.a ] ; 2 uses
  %.sroa.0.023.i = phi i64 [ %i.l, %bb.d ], [ %0, %bb.a ] ; 5 uses
  %.sroa.7.022.i = phi ptr [ %i.n, %bb.d ], [ %1, %bb.a ] ; 4 uses
  %i.b = load i8, ptr %.sroa.7.022.i, align 1, !tbaa !16
  %i.c = add i8 %i.b, -49
  %or.cond.i = icmp ult i8 %i.c, 9
  br i1 %or.cond.i, label %.preheader.i.i, label %bb.c

.preheader.i.i:                                   ; preds = %.preheader.i
  %.not.i.i = icmp eq i64 %.sroa.0.023.i, 1
  br i1 %.not.i.i, label %_ZN8WasmEdge9Validator12_GLOBAL__N_114isCanonVersionESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread6, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.b
  %.010.i.i = phi i64 [ %i.f, %bb.b ], [ 1, %.preheader.i.i ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.7.022.i, i64 %.010.i.i
  %i.e = load i8, ptr %i.d, align 1, !tbaa !16
  %2 = sext i8 %i.e to i32
  %isdigittmp.i.i = add nsw i32 %2, -48
  %isdigit.i.i = icmp ult i32 %isdigittmp.i.i, 10
  br i1 %isdigit.i.i, label %bb.b, label %_ZN8WasmEdge9Validator12_GLOBAL__N_114isCanonVersionESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = add nuw i64 %.010.i.i, 1                 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.f, %.sroa.0.023.i
  br i1 %exitcond.not.i.i, label %_ZN8WasmEdge9Validator12_GLOBAL__N_114isCanonVersionESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread6, label %.lr.ph.i.i, !llvm.loop !0

bb.c:                                             ; preds = %.preheader.i
  %i.g = icmp ult i64 %.sroa.0.023.i, 2
  br i1 %i.g, label %_ZN8WasmEdge9Validator12_GLOBAL__N_114isCanonVersionESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.c
  %i.h = load i16, ptr %.sroa.7.022.i, align 1
  %i.i = icmp ne i16 11824, %i.h
  %i.j = zext i1 %i.i to i32
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.d, label %_ZN8WasmEdge9Validator12_GLOBAL__N_114isCanonVersionESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread

bb.d:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %i.l = add i64 %.sroa.0.023.i, -2               ; 2 uses
  %i.m = icmp ne i64 %i.l, 0
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.7.022.i, i64 2
  %i.o = add nuw nsw i32 %.0624.i, 1
  %i.p = icmp samesign ult i32 %.0624.i, 2
  %or.cond27.i = select i1 %i.m, i1 %i.p, i1 false
  br i1 %or.cond27.i, label %.preheader.i, label %_ZN8WasmEdge9Validator12_GLOBAL__N_114isCanonVersionESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread, !llvm.loop !150

_ZN8WasmEdge9Validator12_GLOBAL__N_114isCanonVersionESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %.lr.ph.i.i
  %i.q = icmp eq i64 %.010.i.i, %.sroa.0.023.i
  br i1 %i.q, label %_ZN8WasmEdge9Validator12_GLOBAL__N_114isCanonVersionESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread6, label %_ZN8WasmEdge9Validator12_GLOBAL__N_114isCanonVersionESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread

_ZN8WasmEdge9Validator12_GLOBAL__N_114isCanonVersionESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.c, %bb.d, %bb.a, %_ZN8WasmEdge9Validator12_GLOBAL__N_114isCanonVersionESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.r = tail call fastcc noundef zeroext i1 @_ZN8WasmEdge9Validator12_GLOBAL__N_113isValidSemverESt17basic_string_viewIcSt11char_traitsIcEE(i64 %0, ptr %1)
  br label %_ZN8WasmEdge9Validator12_GLOBAL__N_114isCanonVersionESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread6

_ZN8WasmEdge9Validator12_GLOBAL__N_114isCanonVersionESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread6: ; preds = %bb.b, %.preheader.i.i, %_ZN8WasmEdge9Validator12_GLOBAL__N_114isCanonVersionESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread, %_ZN8WasmEdge9Validator12_GLOBAL__N_114isCanonVersionESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.s = phi i1 [ true, %_ZN8WasmEdge9Validator12_GLOBAL__N_114isCanonVersionESt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ %i.r, %_ZN8WasmEdge9Validator12_GLOBAL__N_114isCanonVersionESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread ], [ true, %.preheader.i.i ], [ true, %bb.b ]
  ret i1 %i.s
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #27 ; 0 uses
  tail call void @_ZSt9terminatev() #29
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #9

declare noundef ptr @_ZN6spdlog18default_logger_rawEv() local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrCode5ValueEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef byval(%"struct.spdlog::source_loc") align 8 %1, i32 noundef %2, ptr %3, i64 %4, ptr noundef nonnull align 4 dereferenceable(4) %5) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.fmt::v11::basic_memory_buffer", align 8 ; 12 uses
  %7 = alloca %"struct.fmt::v11::detail::format_arg_store", align 16 ; 5 uses
  %8 = alloca %"struct.spdlog::details::log_msg", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load atomic i32, ptr %i.a monotonic, align 8
  %i.c = icmp sge i32 %2, %i.b                    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = tail call noundef zeroext i1 @_ZNK6spdlog7details10backtracer7enabledEv(ptr noundef nonnull align 8 dereferenceable(104) %i.d) ; 2 uses
  %or.cond = or i1 %i.c, %i.e
  br i1 %or.cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 0, ptr %i.h, align 8
  store ptr @_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEE4growERNS0_6detail6bufferIcEEm, ptr %i.g, align 8, !tbaa !37
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  store ptr %i.i, ptr %6, align 8, !tbaa !38
  store i64 250, ptr %i.f, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %i.j = ptrtoint ptr %5 to i64
  %.sroa.2.0.insert.ext.i = zext i64 ptrtoint (ptr @_ZN3fmt3v116detail5valueINS0_7contextEE17format_custom_argIN8WasmEdge7ErrCode5ValueENS0_9formatterIS8_cvEEEEvPvRNS0_26basic_format_parse_contextIcEERS3_ to i64) to i128
  %.sroa.2.0.insert.shift.i = shl nuw i128 %.sroa.2.0.insert.ext.i, 64
  %.sroa.01.0.insert.ext.i = zext i64 %i.j to i128
  %.sroa.01.0.insert.insert.i = or disjoint i128 %.sroa.2.0.insert.shift.i, %.sroa.01.0.insert.ext.i
  store i128 %.sroa.01.0.insert.insert.i, ptr %7, align 16
  invoke void @_ZN3fmt3v116detail10vformat_toIcEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS4_EENS1_12vformat_argsIS4_E4typeENS1_10locale_refE(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr %3, i64 %4, i64 15, ptr nonnull %7, ptr null)
          to label %_ZN3fmt3v1110vformat_toINS0_14basic_appenderIcEETnNSt9enable_ifIXsr6detail18is_output_iteratorINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEcEE5valueEiE4typeELi0EEESB_OS7_NS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit unwind label %bb.g

_ZN3fmt3v1110vformat_toINS0_14basic_appenderIcEETnNSt9enable_ifIXsr6detail18is_output_iteratorINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEcEE5valueEiE4typeELi0EEESB_OS7_NS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !42
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !43
  %i.o = load ptr, ptr %6, align 8, !tbaa !38
  %i.p = load i64, ptr %i.h, align 8, !tbaa !44
  invoke void @_ZN6spdlog7details7log_msgC1ENS_10source_locEN3fmt3v1117basic_string_viewIcEENS_5level10level_enumES6_(ptr noundef nonnull align 8 dereferenceable(96) %8, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %1, ptr %i.l, i64 %i.n, i32 noundef %2, ptr %i.o, i64 %i.p)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %_ZN3fmt3v1110vformat_toINS0_14basic_appenderIcEETnNSt9enable_ifIXsr6detail18is_output_iteratorINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEcEE5valueEiE4typeELi0EEESB_OS7_NS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit
  invoke void @_ZN6spdlog6logger7log_it_ERKNS_7details7log_msgEbb(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(96) %8, i1 noundef zeroext %i.c, i1 noundef zeroext %i.e)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  %i.q = load ptr, ptr %6, align 8, !tbaa !38     ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, %i.i
  br i1 %.not.i.i, label %_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load i64, ptr %i.f, align 8, !tbaa !39
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.r) #30
  br label %_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEED2Ev.exit

_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEED2Ev.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEED2Ev.exit
  ret void

bb.g:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %bb.i

bb.h:                                             ; preds = %bb.c, %_ZN3fmt3v1110vformat_toINS0_14basic_appenderIcEETnNSt9enable_ifIXsr6detail18is_output_iteratorINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEcEE5valueEiE4typeELi0EEESB_OS7_NS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.t, %bb.h ], [ %i.s, %bb.g ]
  %i.u = load ptr, ptr %6, align 8, !tbaa !38     ; 2 uses
  %.not.i.i15 = icmp eq ptr %i.u, %i.i
  br i1 %.not.i.i15, label %_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEED2Ev.exit16, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = load i64, ptr %i.f, align 8, !tbaa !39
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.v) #30
  br label %_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEED2Ev.exit16

_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEED2Ev.exit16: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  resume { ptr, i32 } %.pn
}

declare noundef zeroext i1 @_ZNK6spdlog7details10backtracer7enabledEv(ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #10

declare void @_ZN6spdlog7details7log_msgC1ENS_10source_locEN3fmt3v1117basic_string_viewIcEENS_5level10level_enumES6_(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef byval(%"struct.spdlog::source_loc") align 8, ptr, i64, i32 noundef, ptr, i64) unnamed_addr #10

declare void @_ZN6spdlog6logger7log_it_ERKNS_7details7log_msgEbb(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(96), i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEE4growERNS0_6detail6bufferIcEEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !39   ; 3 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = add i64 %i.c, %i.b                       ; 3 uses
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp slt i64 %i.d, 0
  br i1 %i.f, label %bb.c, label %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i64 @llvm.umax.i64(i64 %1, i64 9223372036854775807)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c
  %.0 = phi i64 [ %1, %bb.a ], [ %i.g, %bb.c ]    ; 2 uses
  %i.h = icmp slt i64 %.0, 0
  br i1 %i.h, label %bb.e, label %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit, !prof !151

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #28
  unreachable

_ZNSt15__new_allocatorIcE8allocateEmPKv.exit:     ; preds = %bb.b, %bb.d
  %.035 = phi i64 [ %.0, %bb.d ], [ %i.d, %bb.b ] ; 3 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !38     ; 3 uses
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.035) #31 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !44   ; 2 uses
  %i.m = icmp ule i64 %i.l, %.035
  tail call void @llvm.assume(i1 %i.m)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr align 1 %i.i, i64 %i.l, i1 false)
  store ptr %i.j, ptr %0, align 8, !tbaa !38
  store i64 %.035, ptr %i.a, align 8, !tbaa !39
end_hunk_1
begin_hunk_2_@_ZN3fmt3v116detail16get_dynamic_specINS1_17precision_checkerENS0_16basic_format_argINS0_7contextEEEEEiT0_:bb.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6spdlog6logger4log_IJRSt17basic_string_viewIcSt11char_traitsIcEEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef byval(%"struct.spdlog::source_loc") align 8 %1, i32 noundef %2, ptr %3, i64 %4, ptr noundef nonnull align 8 dereferenceable(16) %5) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.fmt::v11::basic_memory_buffer", align 8 ; 12 uses
  %7 = alloca %"struct.fmt::v11::detail::format_arg_store.64", align 16 ; 5 uses
  %8 = alloca %"struct.spdlog::details::log_msg", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load atomic i32, ptr %i.a monotonic, align 8
  %i.c = icmp sge i32 %2, %i.b                    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = tail call noundef zeroext i1 @_ZNK6spdlog7details10backtracer7enabledEv(ptr noundef nonnull align 8 dereferenceable(104) %i.d) ; 2 uses
  %or.cond = or i1 %i.c, %i.e
  br i1 %or.cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 0, ptr %i.h, align 8
  store ptr @_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEE4growERNS0_6detail6bufferIcEEm, ptr %i.g, align 8, !tbaa !37
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  store ptr %i.i, ptr %6, align 8, !tbaa !38
  store i64 250, ptr %i.f, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !23
  %i.l = load i64, ptr %5, align 8, !tbaa !24
  %i.m = ptrtoint ptr %i.k to i64
  %.sroa.2.0.insert.ext.i = zext i64 %i.l to i128
  %.sroa.2.0.insert.shift.i = shl nuw i128 %.sroa.2.0.insert.ext.i, 64
  %.sroa.01.0.insert.ext.i = zext i64 %i.m to i128
  %.sroa.01.0.insert.insert.i = or disjoint i128 %.sroa.2.0.insert.shift.i, %.sroa.01.0.insert.ext.i
  store i128 %.sroa.01.0.insert.insert.i, ptr %7, align 16
  invoke void @_ZN3fmt3v116detail10vformat_toIcEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS4_EENS1_12vformat_argsIS4_E4typeENS1_10locale_refE(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr %3, i64 %4, i64 13, ptr nonnull %7, ptr null)
          to label %_ZN3fmt3v1110vformat_toINS0_14basic_appenderIcEETnNSt9enable_ifIXsr6detail18is_output_iteratorINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEcEE5valueEiE4typeELi0EEESB_OS7_NS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit unwind label %bb.g

_ZN3fmt3v1110vformat_toINS0_14basic_appenderIcEETnNSt9enable_ifIXsr6detail18is_output_iteratorINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEcEE5valueEiE4typeELi0EEESB_OS7_NS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !42
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !43
  %i.r = load ptr, ptr %6, align 8, !tbaa !38
  %i.s = load i64, ptr %i.h, align 8, !tbaa !44
  invoke void @_ZN6spdlog7details7log_msgC1ENS_10source_locEN3fmt3v1117basic_string_viewIcEENS_5level10level_enumES6_(ptr noundef nonnull align 8 dereferenceable(96) %8, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %1, ptr %i.o, i64 %i.q, i32 noundef %2, ptr %i.r, i64 %i.s)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %_ZN3fmt3v1110vformat_toINS0_14basic_appenderIcEETnNSt9enable_ifIXsr6detail18is_output_iteratorINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEcEE5valueEiE4typeELi0EEESB_OS7_NS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit
  invoke void @_ZN6spdlog6logger7log_it_ERKNS_7details7log_msgEbb(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(96) %8, i1 noundef zeroext %i.c, i1 noundef zeroext %i.e)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  %i.t = load ptr, ptr %6, align 8, !tbaa !38     ; 2 uses
  %.not.i.i = icmp eq ptr %i.t, %i.i
  br i1 %.not.i.i, label %_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = load i64, ptr %i.f, align 8, !tbaa !39
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.u) #30
  br label %_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEED2Ev.exit

_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEED2Ev.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEED2Ev.exit
  ret void

bb.g:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %bb.i

bb.h:                                             ; preds = %bb.c, %_ZN3fmt3v1110vformat_toINS0_14basic_appenderIcEETnNSt9enable_ifIXsr6detail18is_output_iteratorINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEcEE5valueEiE4typeELi0EEESB_OS7_NS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.w, %bb.h ], [ %i.v, %bb.g ]
  %i.x = load ptr, ptr %6, align 8, !tbaa !38     ; 2 uses
  %.not.i.i15 = icmp eq ptr %i.x, %i.i
  br i1 %.not.i.i15, label %_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEED2Ev.exit16, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = load i64, ptr %i.f, align 8, !tbaa !39
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.y) #30
  br label %_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEED2Ev.exit16

_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEED2Ev.exit16: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #19

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #20

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #21

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5cxx2019bad_expected_accessIN8WasmEdge7ErrCodeEED0Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #22 comdat align 2 {
bb.a:
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %0) #27
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK5cxx2019bad_expected_accessIN8WasmEdge7ErrCodeEE4whatEv(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #16 comdat align 2 {
bb.a:
  ret ptr @.str.236
}

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define internal fastcc noundef zeroext i1 @_ZN8WasmEdge9Validator12_GLOBAL__N_119isPreReleaseOrBuildESt17basic_string_viewIcSt11char_traitsIcEEb(i64 %0, ptr %1, i1 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  br i1 %i.a, label %.thread64, label %.preheader.split

.preheader.split:                                 ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  br i1 %2, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.us, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.us:    ; preds = %.preheader.split, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.us.backedge
  %.02886.us = phi i64 [ %.1.i57.us, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.us.backedge ], [ 0, %.preheader.split ] ; 3 uses
  %i.c = sub nuw i64 %0, %.02886.us               ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %.02886.us ; 7 uses
  %i.e = tail call ptr @memchr(ptr noundef %i.d, i32 noundef 46, i64 noundef %i.c) #27 ; 2 uses
  %.not.i.us = icmp eq ptr %i.e, null
  br i1 %.not.i.us, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread.us, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.us

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.us: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.us
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.b                       ; 3 uses
  %i.h = icmp eq i64 %i.g, -1
  br i1 %i.h, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread.us, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit41.us

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit41.us: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.us
  %i.i = sub i64 %i.g, %.02886.us
  %.sroa.speculated.i.us = tail call i64 @llvm.umin.i64(i64 %i.c, i64 %i.i)
  %i.j = add nuw i64 %i.g, 1
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread.us

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread.us: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.us, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.us, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit41.us
  %i.k = phi i1 [ false, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit41.us ], [ true, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.us ], [ true, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.us ] ; 2 uses
  %.1.i57.us = phi i64 [ %i.j, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit41.us ], [ 0, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.us ], [ 0, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.us ] ; 3 uses
  %.sroa.0.0.us = phi i64 [ %.sroa.speculated.i.us, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit41.us ], [ %i.c, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.us ], [ %i.c, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.us ] ; 6 uses
  %.not124.not = icmp ne i64 %.sroa.0.0.us, 0     ; 4 uses
  br i1 %.not124.not, label %.lr.ph.us.preheader, label %.thread64

.lr.ph.us.preheader:                              ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread.us
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sroa.0.0.us ; 3 uses
  br label %.lr.ph.us

bb.b:                                             ; preds = %.lr.ph.us
  %i.m = getelementptr inbounds nuw i8, ptr %.071.us, i64 1 ; 2 uses
  %.not.us = icmp eq ptr %i.m, %i.l
  br i1 %.not.us, label %._crit_edge.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %bb.b
  %.071.us = phi ptr [ %i.m, %bb.b ], [ %i.d, %.lr.ph.us.preheader ] ; 2 uses
  %i.n = load i8, ptr %.071.us, align 1, !tbaa !16 ; 2 uses
  %i.o = sext i8 %i.n to i32
  %i.p = tail call i32 @isalnum(i32 noundef %i.o) #26
  %i.q = icmp ne i32 %i.p, 0
  %i.r = icmp eq i8 %i.n, 45
  %or.cond.not.us = or i1 %i.r, %i.q
  br i1 %or.cond.not.us, label %bb.b, label %.thread64

._crit_edge.us:                                   ; preds = %bb.b
  %i.s = ptrtoint ptr %i.l to i64
  %i.t = ashr i64 %.sroa.0.0.us, 2                ; 2 uses
  %i.u = icmp sgt i64 %i.t, 0
  br i1 %i.u, label %.lr.ph.preheader.i.i.i.i.us, label %._crit_edge.i.i.i.i.us

.lr.ph.preheader.i.i.i.i.us:                      ; preds = %._crit_edge.us
  %i.v = and i64 %.sroa.0.0.us, -4
  %scevgep.i.i.i.i.us = getelementptr i8, ptr %i.d, i64 %i.v
  br label %.lr.ph.i.i.i.i.us

.lr.ph.i.i.i.i.us:                                ; preds = %bb.f, %.lr.ph.preheader.i.i.i.i.us
  %.050.i.i.i.i.us = phi i64 [ %i.aa, %bb.f ], [ %i.t, %.lr.ph.preheader.i.i.i.i.us ] ; 2 uses
  %.02949.i.i.i.i.us = phi ptr [ %i.z, %bb.f ], [ %i.d, %.lr.ph.preheader.i.i.i.i.us ] ; 9 uses
  %.029.val32.i.i.i.i.us = load i8, ptr %.02949.i.i.i.i.us, align 1, !tbaa !16
  %3 = sext i8 %.029.val32.i.i.i.i.us to i32
  %4 = add nsw i32 %3, -58
  %isdigit.i.i.i.i.i.i.us = icmp ult i32 %4, -10
  br i1 %isdigit.i.i.i.i.i.i.us, label %"_ZSt6all_ofIPKcZN8WasmEdge9Validator12_GLOBAL__N_119isPreReleaseOrBuildESt17basic_string_viewIcSt11char_traitsIcEEbE3$_0EbT_SA_T0_.exit.us", label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.us
  %i.w = getelementptr inbounds nuw i8, ptr %.02949.i.i.i.i.us, i64 1
  %.val31.i.i.i.i.us = load i8, ptr %i.w, align 1, !tbaa !16
  %5 = sext i8 %.val31.i.i.i.i.us to i32
  %6 = add nsw i32 %5, -58
  %isdigit.i.i33.i.i.i.i.us = icmp ult i32 %6, -10
  br i1 %isdigit.i.i33.i.i.i.i.us, label %"_ZSt6all_ofIPKcZN8WasmEdge9Validator12_GLOBAL__N_119isPreReleaseOrBuildESt17basic_string_viewIcSt11char_traitsIcEEbE3$_0EbT_SA_T0_.exit.us.loopexit.split.loop.exit115", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %.02949.i.i.i.i.us, i64 2
  %.val30.i.i.i.i.us = load i8, ptr %i.x, align 1, !tbaa !16
  %7 = sext i8 %.val30.i.i.i.i.us to i32
  %8 = add nsw i32 %7, -58
  %isdigit.i.i34.i.i.i.i.us = icmp ult i32 %8, -10
  br i1 %isdigit.i.i34.i.i.i.i.us, label %"_ZSt6all_ofIPKcZN8WasmEdge9Validator12_GLOBAL__N_119isPreReleaseOrBuildESt17basic_string_viewIcSt11char_traitsIcEEbE3$_0EbT_SA_T0_.exit.us.loopexit.split.loop.exit117", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %.02949.i.i.i.i.us, i64 3
  %.val.i.i.i.i.us = load i8, ptr %i.y, align 1, !tbaa !16
  %9 = sext i8 %.val.i.i.i.i.us to i32
  %10 = add nsw i32 %9, -58
  %isdigit.i.i35.i.i.i.i.us = icmp ult i32 %10, -10
  br i1 %isdigit.i.i35.i.i.i.i.us, label %"_ZSt6all_ofIPKcZN8WasmEdge9Validator12_GLOBAL__N_119isPreReleaseOrBuildESt17basic_string_viewIcSt11char_traitsIcEEbE3$_0EbT_SA_T0_.exit.us.loopexit.split.loop.exit119", label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %.02949.i.i.i.i.us, i64 4
  %i.aa = add nsw i64 %.050.i.i.i.i.us, -1
  %i.ab = icmp sgt i64 %.050.i.i.i.i.us, 1
  br i1 %i.ab, label %.lr.ph.i.i.i.i.us, label %._crit_edge.i.i.i.i.us, !llvm.loop !260

._crit_edge.i.i.i.i.us:                           ; preds = %bb.f, %._crit_edge.us
  %.029.lcssa.i.i.i.i.us = phi ptr [ %i.d, %._crit_edge.us ], [ %scevgep.i.i.i.i.us, %bb.f ] ; 6 uses
  %.pre-phi.i.i.i.i.us = ptrtoint ptr %.029.lcssa.i.i.i.i.us to i64
  %i.ac = sub i64 %i.s, %.pre-phi.i.i.i.i.us
  switch i64 %i.ac, label %"_ZSt6all_ofIPKcZN8WasmEdge9Validator12_GLOBAL__N_119isPreReleaseOrBuildESt17basic_string_viewIcSt11char_traitsIcEEbE3$_0EbT_SA_T0_.exit.thread.us" [
    i64 3, label %bb.g
    i64 2, label %bb.i
    i64 1, label %bb.k
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.us
  %.029.val.i.i.i.i.us = load i8, ptr %.029.lcssa.i.i.i.i.us, align 1, !tbaa !16
  %11 = sext i8 %.029.val.i.i.i.i.us to i32
  %12 = add nsw i32 %11, -58
  %isdigit.i.i36.i.i.i.i.us = icmp ult i32 %12, -10
  br i1 %isdigit.i.i36.i.i.i.i.us, label %"_ZSt6all_ofIPKcZN8WasmEdge9Validator12_GLOBAL__N_119isPreReleaseOrBuildESt17basic_string_viewIcSt11char_traitsIcEEbE3$_0EbT_SA_T0_.exit.us", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.us, i64 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i.i.i.i.us
  %.1.i.i.i.i.us = phi ptr [ %i.ad, %bb.h ], [ %.029.lcssa.i.i.i.i.us, %._crit_edge.i.i.i.i.us ] ; 3 uses
  %.1.val.i.i.i.i.us = load i8, ptr %.1.i.i.i.i.us, align 1, !tbaa !16
  %13 = sext i8 %.1.val.i.i.i.i.us to i32
  %14 = add nsw i32 %13, -58
  %isdigit.i.i37.i.i.i.i.us = icmp ult i32 %14, -10
  br i1 %isdigit.i.i37.i.i.i.i.us, label %"_ZSt6all_ofIPKcZN8WasmEdge9Validator12_GLOBAL__N_119isPreReleaseOrBuildESt17basic_string_viewIcSt11char_traitsIcEEbE3$_0EbT_SA_T0_.exit.us", label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.us, i64 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i.i.i.us
  %.2.i.i.i.i.us = phi ptr [ %i.ae, %bb.j ], [ %.029.lcssa.i.i.i.i.us, %._crit_edge.i.i.i.i.us ] ; 2 uses
  %.2.val.i.i.i.i.us = load i8, ptr %.2.i.i.i.i.us, align 1, !tbaa !16
  %15 = sext i8 %.2.val.i.i.i.i.us to i32
  %16 = add nsw i32 %15, -58
  %isdigit.i.i38.i.i.i.i.us = icmp ult i32 %16, -10
  br i1 %isdigit.i.i38.i.i.i.i.us, label %"_ZSt6all_ofIPKcZN8WasmEdge9Validator12_GLOBAL__N_119isPreReleaseOrBuildESt17basic_string_viewIcSt11char_traitsIcEEbE3$_0EbT_SA_T0_.exit.us", label %"_ZSt6all_ofIPKcZN8WasmEdge9Validator12_GLOBAL__N_119isPreReleaseOrBuildESt17basic_string_viewIcSt11char_traitsIcEEbE3$_0EbT_SA_T0_.exit.thread.us"

"_ZSt6all_ofIPKcZN8WasmEdge9Validator12_GLOBAL__N_119isPreReleaseOrBuildESt17basic_string_viewIcSt11char_traitsIcEEbE3$_0EbT_SA_T0_.exit.thread.us": ; preds = %bb.k, %._crit_edge.i.i.i.i.us
  %.old.not.us = icmp eq i64 %.sroa.0.0.us, 1
  br i1 %.old.not.us, label %.critedge.us, label %bb.l

"_ZSt6all_ofIPKcZN8WasmEdge9Validator12_GLOBAL__N_119isPreReleaseOrBuildESt17basic_string_viewIcSt11char_traitsIcEEbE3$_0EbT_SA_T0_.exit.us.loopexit.split.loop.exit115": ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %.02949.i.i.i.i.us, i64 1
  br label %"_ZSt6all_ofIPKcZN8WasmEdge9Validator12_GLOBAL__N_119isPreReleaseOrBuildESt17basic_string_viewIcSt11char_traitsIcEEbE3$_0EbT_SA_T0_.exit.us"

"_ZSt6all_ofIPKcZN8WasmEdge9Validator12_GLOBAL__N_119isPreReleaseOrBuildESt17basic_string_viewIcSt11char_traitsIcEEbE3$_0EbT_SA_T0_.exit.us.loopexit.split.loop.exit117": ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %.02949.i.i.i.i.us, i64 2
  br label %"_ZSt6all_ofIPKcZN8WasmEdge9Validator12_GLOBAL__N_119isPreReleaseOrBuildESt17basic_string_viewIcSt11char_traitsIcEEbE3$_0EbT_SA_T0_.exit.us"

"_ZSt6all_ofIPKcZN8WasmEdge9Validator12_GLOBAL__N_119isPreReleaseOrBuildESt17basic_string_viewIcSt11char_traitsIcEEbE3$_0EbT_SA_T0_.exit.us.loopexit.split.loop.exit119": ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %.02949.i.i.i.i.us, i64 3
  br label %"_ZSt6all_ofIPKcZN8WasmEdge9Validator12_GLOBAL__N_119isPreReleaseOrBuildESt17basic_string_viewIcSt11char_traitsIcEEbE3$_0EbT_SA_T0_.exit.us"

"_ZSt6all_ofIPKcZN8WasmEdge9Validator12_GLOBAL__N_119isPreReleaseOrBuildESt17basic_string_viewIcSt11char_traitsIcEEbE3$_0EbT_SA_T0_.exit.us": ; preds = %.lr.ph.i.i.i.i.us, %"_ZSt6all_ofIPKcZN8WasmEdge9Validator12_GLOBAL__N_119isPreReleaseOrBuildESt17basic_string_viewIcSt11char_traitsIcEEbE3$_0EbT_SA_T0_.exit.us.loopexit.split.loop.exit115", %"_ZSt6all_ofIPKcZN8WasmEdge9Validator12_GLOBAL__N_119isPreReleaseOrBuildESt17basic_string_viewIcSt11char_traitsIcEEbE3$_0EbT_SA_T0_.exit.us.loopexit.split.loop.exit117", %"_ZSt6all_ofIPKcZN8WasmEdge9Validator12_GLOBAL__N_119isPreReleaseOrBuildESt17basic_string_viewIcSt11char_traitsIcEEbE3$_0EbT_SA_T0_.exit.us.loopexit.split.loop.exit119", %bb.k, %bb.i, %bb.g
  %.028.i.i.i.i.us = phi ptr [ %.1.i.i.i.i.us, %bb.i ], [ %.029.lcssa.i.i.i.i.us, %bb.g ], [ %.2.i.i.i.i.us, %bb.k ], [ %i.ag, %"_ZSt6all_ofIPKcZN8WasmEdge9Validator12_GLOBAL__N_119isPreReleaseOrBuildESt17basic_string_viewIcSt11char_traitsIcEEbE3$_0EbT_SA_T0_.exit.us.loopexit.split.loop.exit117" ], [ %i.ah, %"_ZSt6all_ofIPKcZN8WasmEdge9Validator12_GLOBAL__N_119isPreReleaseOrBuildESt17basic_string_viewIcSt11char_traitsIcEEbE3$_0EbT_SA_T0_.exit.us.loopexit.split.loop.exit119" ], [ %i.af, %"_ZSt6all_ofIPKcZN8WasmEdge9Validator12_GLOBAL__N_119isPreReleaseOrBuildESt17basic_string_viewIcSt11char_traitsIcEEbE3$_0EbT_SA_T0_.exit.us.loopexit.split.loop.exit115" ], [ %.02949.i.i.i.i.us, %.lr.ph.i.i.i.i.us ]
  %i.ai = icmp eq ptr %i.l, %.028.i.i.i.i.us
  %i.aj = icmp ne i64 %.sroa.0.0.us, 1
  %or.cond.us = and i1 %i.aj, %i.ai
  br i1 %or.cond.us, label %bb.l, label %.critedge.us

.critedge.us:                                     ; preds = %"_ZSt6all_ofIPKcZN8WasmEdge9Validator12_GLOBAL__N_119isPreReleaseOrBuildESt17basic_string_viewIcSt11char_traitsIcEEbE3$_0EbT_SA_T0_.exit.us", %"_ZSt6all_ofIPKcZN8WasmEdge9Validator12_GLOBAL__N_119isPreReleaseOrBuildESt17basic_string_viewIcSt11char_traitsIcEEbE3$_0EbT_SA_T0_.exit.thread.us"
  %i.ak = icmp uge i64 %.1.i57.us, %0
  %or.cond.not95 = select i1 %i.k, i1 true, i1 %i.ak
  br i1 %or.cond.not95, label %.thread64, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.us.backedge

bb.l:                                             ; preds = %"_ZSt6all_ofIPKcZN8WasmEdge9Validator12_GLOBAL__N_119isPreReleaseOrBuildESt17basic_string_viewIcSt11char_traitsIcEEbE3$_0EbT_SA_T0_.exit.us", %"_ZSt6all_ofIPKcZN8WasmEdge9Validator12_GLOBAL__N_119isPreReleaseOrBuildESt17basic_string_viewIcSt11char_traitsIcEEbE3$_0EbT_SA_T0_.exit.thread.us"
  %i.al = load i8, ptr %i.d, align 1, !tbaa !16
  %i.am = icmp eq i8 %i.al, 48                    ; 2 uses
  %brmerge.us = or i1 %i.k, %i.am
  br i1 %brmerge.us, label %.thread64.loopexit67.split.loop.exit84, label %.backedge.us

.backedge.us:                                     ; preds = %bb.l
  %.old = icmp ult i64 %.1.i57.us, %0
  br i1 %.old, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.us.backedge, label %.thread64

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.us.backedge: ; preds = %.backedge.us, %.critedge.us
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.us

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i:       ; preds = %.preheader.split, %.critedge
  %.02886 = phi i64 [ %.1.i57, %.critedge ], [ 0, %.preheader.split ] ; 3 uses
  %i.an = sub nuw i64 %0, %.02886                 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 %.02886 ; 3 uses
  %i.ap = tail call ptr @memchr(ptr noundef %i.ao, i32 noundef 46, i64 noundef %i.an) #27 ; 2 uses
  %.not.i = icmp eq ptr %i.ap, null
  br i1 %.not.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = sub i64 %i.aq, %i.b                     ; 3 uses
  %i.as = icmp eq i64 %i.ar, -1
  br i1 %i.as, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit41

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit41: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit
  %i.at = sub i64 %i.ar, %.02886
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.an, i64 %i.at)
  %i.au = add nuw i64 %i.ar, 1
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit41
  %.not91 = phi i1 [ true, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit41 ], [ false, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i ], [ false, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit ]
  %.1.i57 = phi i64 [ %i.au, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit41 ], [ 0, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i ], [ 0, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit ] ; 2 uses
  %.sroa.0.0 = phi i64 [ %.sroa.speculated.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit41 ], [ %i.an, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i ], [ %i.an, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit ] ; 2 uses
  %.not123.not = icmp ne i64 %.sroa.0.0, 0        ; 3 uses
  br i1 %.not123.not, label %.lr.ph.preheader, label %.thread64

.lr.ph.preheader:                                 ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.sroa.0.0
  br label %.lr.ph

bb.m:                                             ; preds = %.lr.ph
  %i.aw = getelementptr inbounds nuw i8, ptr %.071, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.aw, %i.av
  br i1 %.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.m
  %.071 = phi ptr [ %i.aw, %bb.m ], [ %i.ao, %.lr.ph.preheader ] ; 2 uses
  %i.ax = load i8, ptr %.071, align 1, !tbaa !16  ; 2 uses
  %i.ay = sext i8 %i.ax to i32
  %i.az = tail call i32 @isalnum(i32 noundef %i.ay) #26
  %i.ba = icmp ne i32 %i.az, 0
  %i.bb = icmp eq i8 %i.ax, 45
  %or.cond.not = or i1 %i.bb, %i.ba
  br i1 %or.cond.not, label %bb.m, label %.thread64

.critedge:                                        ; preds = %bb.m
  %i.bc = icmp ult i64 %.1.i57, %0
  %or.cond93 = select i1 %.not91, i1 %i.bc, i1 false
  br i1 %or.cond93, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, label %.thread64

.thread64.loopexit67.split.loop.exit84:           ; preds = %bb.l
  %not. = xor i1 %i.am, true
  br label %.thread64

.thread64:                                        ; preds = %.critedge, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, %.lr.ph, %.backedge.us, %.critedge.us, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread.us, %.lr.ph.us, %.thread64.loopexit67.split.loop.exit84, %bb.a
  %.8 = phi i1 [ false, %bb.a ], [ false, %.lr.ph ], [ false, %.lr.ph.us ], [ %not., %.thread64.loopexit67.split.loop.exit84 ], [ %.not124.not, %.backedge.us ], [ %.not124.not, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread.us ], [ %.not124.not, %.critedge.us ], [ %.not123.not, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread ], [ %.not123.not, %.critedge ]
  ret i1 %.8
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isalnum(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #25

attributes #0 = { mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nofree nounwind memory(read, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind memory(read, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { cold noreturn }
attributes #22 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #26 = { nounwind willreturn memory(read) }
attributes #27 = { nounwind }
attributes #28 = { noreturn }
attributes #29 = { noreturn nounwind }
attributes #30 = { builtin nounwind }
attributes #31 = { builtin allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) }

!llvm.module.flags = !{!7, !8, !9}
!llvm.ident = !{!10}
!llvm.errno.tbaa = !{!15}

!0 = distinct !{!0, !35}
!1 = distinct !{!1, !35}
!2 = distinct !{!2, !35}
!3 = distinct !{!3, !35}
!4 = distinct !{null, null, null}
!5 = distinct !{null, null, null}
!6 = distinct !{null, null, null}
!7 = !{i32 1, !"long-double-type", !"x86_fp80"}
!8 = !{i32 8, !"PIC Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 2}
!10 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!11 = !{!"Simple C++ TBAA"}
!12 = !{!"omnipotent char", !11, i64 0}
!13 = !{!"int", !12, i64 0}
!14 = !{!"__libc_errno", !13, i64 0}
!15 = !{!14, !13, i64 0}
!16 = !{!12, !12, i64 0}
!17 = !{!"long", !12, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!"any pointer", !12, i64 0}
!20 = !{!"p1 omnipotent char", !19, i64 0}
!21 = !{!20, !20, i64 0}
!22 = !{!"_ZTSSt17basic_string_viewIcSt11char_traitsIcEE", !17, i64 0, !20, i64 8}
!23 = !{!22, !20, i64 8}
!24 = !{!22, !17, i64 0}
!25 = !{!"_ZTSN8WasmEdge7ErrCode5ValueE", !12, i64 0}
!26 = !{!25, !25, i64 0}
!27 = !{!"bool", !12, i64 0}
!28 = !{i64 0, i64 8, !18, i64 8, i64 8, !21}
!29 = !{!"_ZTSN5cxx206detail21expected_storage_baseIN8WasmEdge9Validator12_GLOBAL__N_17PkgPathENS2_7ErrCodeELb1ELb1EEE", !27, i64 0, !12, i64 8}
!30 = !{!29, !27, i64 0}
!31 = !{i8 0, i8 2}
!32 = !{}
!33 = !{!"_ZTSN5cxx206detail21expected_storage_baseIvN8WasmEdge7ErrCodeELb0ELb1EEE", !27, i64 0, !12, i64 4}
!34 = !{!33, !27, i64 0}
!35 = !{!"llvm.loop.mustprogress"}
!36 = !{!"_ZTSN3fmt3v116detail6bufferIcEE", !20, i64 0, !17, i64 8, !17, i64 16, !19, i64 24}
!37 = !{!36, !19, i64 24}
!38 = !{!36, !20, i64 0}
!39 = !{!36, !17, i64 16}
!40 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !20, i64 0}
!41 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !40, i64 0, !17, i64 8, !12, i64 16}
end_hunk_2
