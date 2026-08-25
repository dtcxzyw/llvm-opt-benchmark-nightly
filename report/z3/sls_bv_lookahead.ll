Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/sls_bv_lookahead?download=true
inline.NumInlined: 849
inline.NumDeleted: 396
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 22
begin_hunk_0

$_ZN6vectorIS_ISt4pairIP3appbELb1EjELb1EjE13expand_vectorEv = comdat any

$_ZN6vectorISt4pairIP3appbELb1EjE13expand_vectorEv = comdat any

$_ZN6vectorIN3sls12bv_lookahead9bool_infoELb1EjE13expand_vectorEv = comdat any

$_ZN3sat13null_bool_varE = comdat any

@.str = private unnamed_addr constant [24 x i8] c"lookahead-search moves:\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c" max-moves:\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"guided\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"random\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"move\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@.str.7 = private unnamed_addr constant [55 x i8] c"/opt-bench/work/z3/z3/src/ast/sls/sls_bv_lookahead.cpp\00", align 1
@.str.8 = private unnamed_addr constant [52 x i8] c"Failed to verify: wval(t).commit_eval_check_tabu()\0A\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"Failed to verify: insert_update_stack(t)\0A\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"F\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"sls-bv-lookaheads\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"sls-bv-moves\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"sls-bv-restarts\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"sls-bv-rotations\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"sls\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"walksat\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"walksat_repick\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"paws_sp\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"wp\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"restart_base\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"restart_init\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"early_prune\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"walksat_ucb\00", align 1
@.str.26 = private unnamed_addr constant [21 x i8] c"walksat_ucb_constant\00", align 1
@.str.27 = private unnamed_addr constant [19 x i8] c"walksat_ucb_forget\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"walksat_ucb_init\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"walksat_ucb_noise\00", align 1
@.str.30 = private unnamed_addr constant [28 x i8] c"bv_use_top_level_assertions\00", align 1
@.str.31 = private unnamed_addr constant [17 x i8] c"bv_use_lookahead\00", align 1
@.str.32 = private unnamed_addr constant [18 x i8] c"bv_allow_rotation\00", align 1
@.str.33 = private unnamed_addr constant [43 x i8] c"Overflow encountered when expanding vector\00", align 1
@_ZTI17default_exception = external constant ptr
@.str.34 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.35 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@_ZTV17default_exception = external constant { [6 x ptr] }, align 8
@_ZN3sat13null_bool_varE = linkonce_odr hidden local_unnamed_addr constant i32 2147483647, comdat, align 4

@_ZN3sls12bv_lookaheadC1ERNS_7bv_evalE = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN3sls12bv_lookaheadC2ERNS_7bv_evalE
@_ZN3sls12bv_lookahead15root_assertionsC1ERS0_b = hidden unnamed_addr alias void (ptr, ptr, i1), ptr @_ZN3sls12bv_lookahead15root_assertionsC2ERS0_b

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3sls12bv_lookaheadC2ERNS_7bv_evalE(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef nonnull align 8 dereferenceable(857) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !8, !nonnull !63, !align !64
  tail call void @_ZN7bv_utilC1ER11ast_manager(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(952) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %i.b, align 8, !tbaa !65
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load <2 x ptr>, ptr %1, align 8, !tbaa !66
  %i.e = shufflevector <2 x ptr> %i.d, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.e, ptr %i.c, align 8, !tbaa !66
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 0, ptr %i.f, align 8, !tbaa !67
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  store double 2.850000e+00, ptr %i.g, align 8, !tbaa !68
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 40, ptr %i.h, align 8, !tbaa !69
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 52, ptr %i.i, align 4, !tbaa !70
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 1, ptr %i.j, align 8, !tbaa !71
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 73
  store i8 1, ptr %i.k, align 1, !tbaa !72
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 74
  store i8 0, ptr %i.l, align 2, !tbaa !73
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 76
  store <4 x i32> <i32 100, i32 1000, i32 1000, i32 1000>, ptr %i.m, align 4, !tbaa !74
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i8 1, ptr %i.n, align 4, !tbaa !75
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 0, ptr %i.o, align 8, !tbaa !76
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 800, ptr %i.p, align 4, !tbaa !77
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 1000, ptr %i.q, align 8, !tbaa !78
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i8 1, ptr %i.r, align 4, !tbaa !79
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 112
  store <2 x double> <double 1.000000e+00, double 1.000000e-01>, ptr %i.s, align 8, !tbaa !80
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i8 0, ptr %i.t, align 8, !tbaa !81
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 136
  store double 1.000000e-01, ptr %i.u, align 8, !tbaa !82
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i8 1, ptr %i.v, align 8, !tbaa !83
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 145
  store i8 1, ptr %i.w, align 1, !tbaa !84
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 146
  store i8 1, ptr %i.x, align 2, !tbaa !85
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 200
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.z, i8 0, i64 20, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 352
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 368
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.y, i8 0, i64 44, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.ab, i8 0, i64 52, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, i8 0, i64 32, i1 false)
  store i32 1, ptr %i.ae, align 8, !tbaa !86
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 376
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, i8 0, i64 24, i1 false)
  ret void
}

declare void @_ZN7bv_utilC1ER11ast_manager(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(952)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8obj_markI4expr10bit_vector14default_t2uintIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !87   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN10bit_vectorD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.b)
          to label %_ZN10bit_vectorD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #18
  unreachable

_ZN10bit_vectorD2Ev.exit:                         ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3sls12bv_lookahead17start_propagationEv(ptr noundef nonnull align 8 dereferenceable(400) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 164 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !88   ; 2 uses
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 4, !tbaa !88
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = load i32, ptr %i.d, align 8, !tbaa !89
  %i.f = urem i32 %i.b, %i.e
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3sls12bv_lookahead6searchEv(ptr noundef nonnull align 8 dereferenceable(400) %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3sls12bv_lookahead6searchEv(ptr noundef nonnull align 8 dereferenceable(400) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 9 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !90, !nonnull !63, !align !64
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  tail call void @_ZN3sls12bv_lookahead11updt_paramsERK10params_ref(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 145
  %i.e = load i8, ptr %i.d, align 1, !tbaa !91, !range !92, !noundef !63
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.af

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !93, !nonnull !63, !align !64
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 856 ; 4 uses
  %i.j = load i8, ptr %i.i, align 8, !tbaa !94, !range !92, !noundef !63 ; 2 uses
  store i8 1, ptr %i.i, align 8, !tbaa !94
  invoke void @_ZN3sls12bv_lookahead22initialize_bool_valuesEv(ptr noundef nonnull align 8 dereferenceable(400) %0)
          to label %bb.c unwind label %.loopexit.split-lp38

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN3sls12bv_lookahead7rescoreEv(ptr noundef nonnull align 8 dereferenceable(400) %0)
          to label %bb.d unwind label %.loopexit.split-lp38

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 7 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !95
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 3 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !96
  %i.o = add i32 %i.n, %i.l
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  store i32 %i.o, ptr %i.p, align 8, !tbaa !97
  %i.q = invoke noundef i32 @_Z19get_verbosity_levelv()
          to label %bb.e unwind label %.loopexit.split-lp38

bb.e:                                             ; preds = %bb.d
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = invoke noundef zeroext i1 @_Z11is_threadedv()
          to label %bb.g unwind label %.loopexit.split-lp38

bb.g:                                             ; preds = %bb.f
  br i1 %i.r, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  invoke void @_Z12verbose_lockv()
          to label %bb.i unwind label %.loopexit.split-lp38

bb.i:                                             ; preds = %bb.h
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv()
          to label %bb.j unwind label %.loopexit.split-lp38 ; 2 uses

bb.j:                                             ; preds = %bb.i
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull @.str, i64 noundef 23)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %.loopexit.split-lp38 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.j
  %i.u = load i32, ptr %i.k, align 4, !tbaa !95
  %i.v = zext i32 %i.u to i64
  %i.w = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.s, i64 noundef %i.v)
          to label %_ZNSolsEj.exit unwind label %.loopexit.split-lp38 ; 2 uses

_ZNSolsEj.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.x = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull @.str.1, i64 noundef 11)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %.loopexit.split-lp38 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11: ; preds = %_ZNSolsEj.exit
  %i.y = load i32, ptr %i.p, align 8, !tbaa !97
  %i.z = zext i32 %i.y to i64
  %i.aa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.w, i64 noundef %i.z)
          to label %_ZNSolsEj.exit12 unwind label %.loopexit.split-lp38

_ZNSolsEj.exit12:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull @.str.2, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13 unwind label %.loopexit.split-lp38 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13: ; preds = %_ZNSolsEj.exit12
  invoke void @_Z14verbose_unlockv()
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18 unwind label %.loopexit.split-lp38

.loopexit37:                                      ; preds = %_ZN3sls7context6rlimitEv.exit, %_ZN3sls12bv_lookahead20finalize_bool_valuesEv.exit, %bb.p, %.noexc, %bb.r, %.noexc20
  %lpad.loopexit39 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp38:                             ; preds = %bb.b, %bb.c, %bb.d, %bb.f, %bb.h, %bb.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13, %bb.k, %bb.j, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNSolsEj.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11, %_ZNSolsEj.exit12, %bb.l, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit14, %_ZNSolsEj.exit15, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16, %_ZNSolsEj.exit17
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.k:                                             ; preds = %bb.g
  %i.ac = invoke noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv()
          to label %bb.l unwind label %.loopexit.split-lp38 ; 2 uses

bb.l:                                             ; preds = %bb.k
  %i.ad = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull @.str, i64 noundef 23)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit14 unwind label %.loopexit.split-lp38 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit14: ; preds = %bb.l
  %i.ae = load i32, ptr %i.k, align 4, !tbaa !95
  %i.af = zext i32 %i.ae to i64
  %i.ag = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, i64 noundef %i.af)
          to label %_ZNSolsEj.exit15 unwind label %.loopexit.split-lp38 ; 2 uses

_ZNSolsEj.exit15:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit14
  %i.ah = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.1, i64 noundef 11)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16 unwind label %.loopexit.split-lp38 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16: ; preds = %_ZNSolsEj.exit15
  %i.ai = load i32, ptr %i.p, align 8, !tbaa !97
  %i.aj = zext i32 %i.ai to i64
  %i.ak = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, i64 noundef %i.aj)
          to label %_ZNSolsEj.exit17 unwind label %.loopexit.split-lp38

_ZNSolsEj.exit17:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16
  %i.al = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ak, ptr noundef nonnull @.str.2, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18 unwind label %.loopexit.split-lp38 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18: ; preds = %_ZNSolsEj.exit17, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13, %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 74
  br label %_ZN3sls12bv_lookahead20finalize_bool_valuesEv.exit

_ZN3sls12bv_lookahead20finalize_bool_valuesEv.exit: ; preds = %_ZN3sls12bv_lookahead20finalize_bool_valuesEv.exit.backedge, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !90, !nonnull !63, !align !64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !98, !nonnull !63, !align !64 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !124
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 168
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = invoke noundef nonnull align 8 dereferenceable(40) ptr %i.bb(ptr noundef nonnull align 8 dereferenceable(8) %i.ay)
          to label %_ZN3sls7context6rlimitEv.exit unwind label %.loopexit37, !inline_history !126

_ZN3sls7context6rlimitEv.exit:                    ; preds = %_ZN3sls12bv_lookahead20finalize_bool_valuesEv.exit
  %i.bd = invoke noundef zeroext i1 @_ZN8reslimit3incEv(ptr noundef nonnull align 8 dereferenceable(40) %i.bc)
          to label %bb.m unwind label %.loopexit37

bb.m:                                             ; preds = %_ZN3sls7context6rlimitEv.exit
  br i1 %i.bd, label %bb.n, label %.critedge

bb.n:                                             ; preds = %bb.m
  %i.be = load i32, ptr %i.k, align 4, !tbaa !95  ; 2 uses
  %i.bf = load i32, ptr %i.p, align 8, !tbaa !97
  %i.bg = icmp ult i32 %i.be, %i.bf
  br i1 %i.bg, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.n
  %i.bh = add nuw i32 %i.be, 1                    ; 3 uses
  store i32 %i.bh, ptr %i.k, align 4, !tbaa !95
  %i.bi = load i32, ptr %i.am, align 8, !tbaa !127
  %i.bj = urem i32 %i.bh, %i.bi
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN3sls12bv_lookahead10ucb_forgetEv(ptr noundef nonnull align 8 dereferenceable(400) %0)
          to label %.noexc unwind label %.loopexit37

.noexc:                                           ; preds = %bb.p
  invoke void @_ZN3sls12bv_lookahead7rescoreEv(ptr noundef nonnull align 8 dereferenceable(400) %0)
          to label %.noexc19 unwind label %.loopexit37

.noexc19:                                         ; preds = %.noexc
  %.pre.i = load i32, ptr %i.k, align 4, !tbaa !95
  br label %bb.q

bb.q:                                             ; preds = %.noexc19, %bb.o
  %i.bl = phi i32 [ %.pre.i, %.noexc19 ], [ %i.bh, %bb.o ] ; 2 uses
  %i.bm = load i32, ptr %i.an, align 4, !tbaa !128 ; 2 uses
  %i.bn = icmp ult i32 %i.bl, %i.bm
  br i1 %i.bn, label %_ZN3sls12bv_lookahead13check_restartEv.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bo = load i32, ptr %i.ao, align 8, !tbaa !129 ; 2 uses
  %i.bp = add i32 %i.bo, 1                        ; 2 uses
  store i32 %i.bp, ptr %i.ao, align 8, !tbaa !129
  %1 = icmp ult i32 %i.bm, %i.bl
  %..i.i = select i1 %1, ptr %i.k, ptr %i.an
  %2 = load i32, ptr %..i.i, align 4, !tbaa !74
  %i.bq = and i32 %i.bo, 1
  %.not.not.i = icmp eq i32 %i.bq, 0
  %i.br = load i32, ptr %i.am, align 8, !tbaa !127
  %i.bs = select i1 %.not.not.i, i32 1, i32 %i.bp
  %.pn.i = mul i32 %i.br, %i.bs
  %storemerge.i = add i32 %.pn.i, %2
  store i32 %storemerge.i, ptr %i.an, align 4, !tbaa !128
  invoke void @_ZN3sls12bv_lookahead32reset_uninterp_in_false_literalsEv(ptr noundef nonnull align 8 dereferenceable(400) %0)
          to label %.noexc20 unwind label %.loopexit37

.noexc20:                                         ; preds = %bb.r
  invoke void @_ZN3sls12bv_lookahead7rescoreEv(ptr noundef nonnull align 8 dereferenceable(400) %0)
          to label %_ZN3sls12bv_lookahead13check_restartEv.exit unwind label %.loopexit37

_ZN3sls12bv_lookahead13check_restartEv.exit:      ; preds = %bb.q, %.noexc20
  %i.bt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN3sls12bv_lookahead22get_candidate_uninterpEv(ptr noundef nonnull align 8 dereferenceable(400) %0)
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 5 uses

bb.s:                                             ; preds = %_ZN3sls12bv_lookahead13check_restartEv.exit
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !130 ; 3 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit.thread, label %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit

_ZNK6vectorIP4exprLb0EjE5emptyEv.exit:            ; preds = %bb.s
  %i.bw = getelementptr inbounds i8, ptr %i.bu, i64 -4
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !74
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit.thread, label %bb.v

_ZNK6vectorIP4exprLb0EjE5emptyEv.exit.thread:     ; preds = %bb.s, %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit
  %i.bz = load ptr, ptr %i.a, align 8, !tbaa !90, !nonnull !63, !align !64
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !98, !nonnull !63, !align !64 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !124
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 88
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = invoke noundef i32 %i.ce(ptr noundef nonnull align 8 dereferenceable(8) %i.cb)
          to label %.noexc22 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !131 ; 2 uses

.noexc22:                                         ; preds = %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit.thread
  %.not11.i = icmp eq i32 %i.cf, 0
  br i1 %.not11.i, label %_ZN3sls12bv_lookahead20finalize_bool_valuesEv.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc22
  %i.cg = load ptr, ptr %i.a, align 8, !tbaa !90, !nonnull !63, !align !64
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 80
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !130
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %_ZN3sls12bv_lookahead20finalize_bool_valuesEv.exit.thread, label %.lr.ph.split.preheader.i

.lr.ph.split.preheader.i:                         ; preds = %.lr.ph.i
  %i.ck = add i32 %i.cf, -1
  %i.cl = zext i32 %i.ck to i64
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %_ZN3sls7context4atomEj.exit.thread.i, %.lr.ph.split.preheader.i
  %indvars.iv.i = phi i64 [ %i.cl, %.lr.ph.split.preheader.i ], [ %indvars.iv.next.i, %_ZN3sls7context4atomEj.exit.thread.i ] ; 5 uses
  %i.cm = load ptr, ptr %i.a, align 8, !tbaa !90, !nonnull !63, !align !64
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 80
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !130 ; 3 uses
  %i.cp = icmp eq ptr %i.co, null
  br i1 %i.cp, label %_ZN3sls7context4atomEj.exit.thread.i, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i.i.i

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i.i.i:     ; preds = %.lr.ph.split.i
  %i.cq = getelementptr inbounds i8, ptr %i.co, i64 -4
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !74
  %i.cs = zext i32 %i.cr to i64
  %.not.i.i.i.i = icmp ult i64 %indvars.iv.i, %i.cs
  br i1 %.not.i.i.i.i, label %_ZN3sls7context4atomEj.exit.i, label %_ZN3sls7context4atomEj.exit.thread.i

_ZN3sls7context4atomEj.exit.i:                    ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i.i.i
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %indvars.iv.i
  %.0.i.sroa.speculate.load..i.i.i = load ptr, ptr %i.ct, align 8, !tbaa !132 ; 2 uses
  %.not7.i = icmp eq ptr %.0.i.sroa.speculate.load..i.i.i, null
  br i1 %.not7.i, label %_ZN3sls7context4atomEj.exit.thread.i, label %bb.t, !llvm.loop !133

bb.t:                                             ; preds = %_ZN3sls7context4atomEj.exit.i
  %i.cu = load ptr, ptr %i.g, align 8, !tbaa !93, !nonnull !63, !align !64
  %i.cv = invoke noundef zeroext i1 @_ZNK3sls7bv_eval14get_bool_valueEP4expr(ptr noundef nonnull align 8 dereferenceable(857) %i.cu, ptr noundef nonnull %.0.i.sroa.speculate.load..i.i.i)
          to label %.noexc23 unwind label %.loopexit

.noexc23:                                         ; preds = %bb.t
  %i.cw = load ptr, ptr %i.a, align 8, !tbaa !90, !nonnull !63, !align !64
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !98, !nonnull !63, !align !64 ; 2 uses
  %i.cz = trunc nuw i64 %indvars.iv.i to i32      ; 2 uses
  %i.da = shl i32 %i.cz, 1
  %i.db = load ptr, ptr %i.cy, align 8, !tbaa !124
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 80
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = invoke noundef zeroext i1 %i.dd(ptr noundef nonnull align 8 dereferenceable(8) %i.cy, i32 %i.da)
          to label %.noexc24 unwind label %.loopexit, !inline_history !131

.noexc24:                                         ; preds = %.noexc23
  %i.df = xor i1 %i.cv, %i.de
  br i1 %i.df, label %bb.u, label %_ZN3sls7context4atomEj.exit.thread.i

bb.u:                                             ; preds = %.noexc24
  %i.dg = load ptr, ptr %i.a, align 8, !tbaa !90, !nonnull !63, !align !64
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !98, !nonnull !63, !align !64 ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !124
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 40
  %i.dl = load ptr, ptr %i.dk, align 8
  invoke void %i.dl(ptr noundef nonnull align 8 dereferenceable(8) %i.di, i32 noundef %i.cz)
          to label %_ZN3sls7context4atomEj.exit.thread.i unwind label %.loopexit, !inline_history !131

_ZN3sls7context4atomEj.exit.thread.i:             ; preds = %bb.u, %.noexc24, %_ZN3sls7context4atomEj.exit.i, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i.i.i, %.lr.ph.split.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %.not.i = icmp eq i64 %indvars.iv.i, 0
  br i1 %.not.i, label %_ZN3sls12bv_lookahead20finalize_bool_valuesEv.exit.thread, label %.lr.ph.split.i, !llvm.loop !135

.loopexit:                                        ; preds = %bb.t, %.noexc23, %bb.u
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %.lr.ph.i27
  %lpad.loopexit34 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %_ZN3sls12bv_lookahead13check_restartEv.exit, %bb.w, %bb.ab, %bb.ac, %bb.ae, %._crit_edge.i
  %lpad.loopexit41 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit.thread
  %lpad.loopexit.split-lp42 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.v:                                             ; preds = %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit
  %i.dm = load ptr, ptr %i.a, align 8, !tbaa !90, !nonnull !63, !align !64
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 152 ; 2 uses
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !137
  %i.dp = mul i32 %i.do, 214013
  %i.dq = add i32 %i.dp, 2531011                  ; 2 uses
  store i32 %i.dq, ptr %i.dn, align 8, !tbaa !137
  %i.dr = lshr i32 %i.dq, 16
  %i.ds = trunc nuw i32 %i.dr to i16
  %.lhs.trunc = and i16 %i.ds, 32767
  %i.dt = urem i16 %.lhs.trunc, 2047
  %.zext = zext nneg i16 %i.dt to i32
  %i.du = load i32, ptr %i.ap, align 4, !tbaa !138
  %i.dv = icmp ugt i32 %i.du, %.zext
  br i1 %i.dv, label %bb.w, label %.thread

.thread:                                          ; preds = %bb.v
  store ptr null, ptr %i.aq, align 8, !tbaa !139
  %i.dw = load double, ptr %i.ar, align 8, !tbaa !140
  store double %i.dw, ptr %i.as, align 8, !tbaa !141
  br label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.dx = invoke noundef zeroext i1 @_ZN3sls12bv_lookahead17apply_random_moveERK10ptr_vectorI4exprE(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.bt)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.x:                                             ; preds = %bb.w
  br i1 %i.dx, label %_ZN3sls12bv_lookahead20finalize_bool_valuesEv.exit.backedge, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.pre = load ptr, ptr %i.bt, align 8, !tbaa !130 ; 2 uses
  store ptr null, ptr %i.aq, align 8, !tbaa !139
  %i.dy = load double, ptr %i.ar, align 8, !tbaa !140
  store double %i.dy, ptr %i.as, align 8, !tbaa !141
  %i.dz = icmp eq ptr %.pre, null
  br i1 %i.dz, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i, label %bb.z

bb.z:                                             ; preds = %.thread, %bb.y
  %i.ea = phi ptr [ %i.bu, %.thread ], [ %.pre, %bb.y ]
  %i.eb = getelementptr inbounds i8, ptr %i.ea, i64 -4
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !74
  br label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i:           ; preds = %bb.z, %bb.y
  %.0.i.i = phi i32 [ %i.ec, %bb.z ], [ 0, %bb.y ] ; 3 uses
  %i.ed = load ptr, ptr %i.a, align 8, !tbaa !90, !nonnull !63, !align !64
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 152 ; 2 uses
  %i.ef = load i32, ptr %i.ee, align 8, !tbaa !137
  %i.eg = mul i32 %i.ef, 214013
  %i.eh = add i32 %i.eg, 2531011                  ; 2 uses
  store i32 %i.eh, ptr %i.ee, align 8, !tbaa !137
  %i.ei = lshr i32 %i.eh, 16
  %i.ej = and i32 %i.ei, 32767
  %.not.i26 = icmp eq i32 %.0.i.i, 0
  br i1 %.not.i26, label %._crit_edge.i, label %.lr.ph.i27

._crit_edge.loopexit.i:                           ; preds = %.noexc30
  %.pre.i28 = load ptr, ptr %i.aq, align 8, !tbaa !139
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i
  %i.ek = phi ptr [ %.pre.i28, %._crit_edge.loopexit.i ], [ null, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i ]
  %i.el = load ptr, ptr %i.at, align 8, !tbaa !142
  %i.em = invoke noundef zeroext i1 @_ZN3sls12bv_lookahead12apply_updateEP4exprS2_RKNS_5bvectENS0_9move_typeE(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef %i.el, ptr noundef %i.ek, ptr noundef nonnull align 8 dereferenceable(20) %i.au, i32 noundef 1)
          to label %_ZN3sls12bv_lookahead17apply_guided_moveERK10ptr_vectorI4exprE.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.lr.ph.i27:                                       ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i, %.noexc30
  %.09.i = phi i32 [ %i.et, %.noexc30 ], [ 0, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i ] ; 2 uses
  %i.en = add i32 %.09.i, %i.ej
  %i.eo = urem i32 %i.en, %.0.i.i
  %i.ep = load ptr, ptr %i.bt, align 8, !tbaa !130
  %i.eq = zext i32 %i.eo to i64
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %i.eq
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !132
end_hunk_0
begin_hunk_1_@_ZN3sls12bv_lookahead7rescoreEv:bb.a
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.o
  %i.el = phi i64 [ %i.eh, %bb.o ], [ %.pre.i18, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  store i64 %i.el, ptr %i.en, align 8, !tbaa !182
  store ptr %i.ee, ptr %1, align 8, !tbaa !179
  store i64 0, ptr %i.em, align 8, !tbaa !182
  store i8 0, ptr %i.ee, align 8, !tbaa !183
  invoke void @__cxa_throw(ptr nonnull %i.ea, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #20
          to label %bb.t unwind label %bb.p

bb.p:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.eo = landingpad { ptr, i32 }
          cleanup
  %i.ep = load ptr, ptr %1, align 8, !tbaa !179   ; 2 uses
  %i.eq = icmp eq ptr %i.ep, %i.ee
  br i1 %i.eq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i: ; preds = %bb.p
  %i.er = load i64, ptr %i.ee, align 8, !tbaa !183
  %i.es = add i64 %i.er, 1
  call void @_ZdlPvm(ptr noundef %i.ep, i64 noundef %i.es) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  br label %bb.r

bb.q:                                             ; preds = %bb.m
  %i.et = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  call void @__cxa_free_exception(ptr %i.ea) #19
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn32.i = phi { ptr, i32 } [ %i.eo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.et, %bb.q ]
  resume { ptr, i32 } %.pn32.i

bb.s:                                             ; preds = %bb.l
  %i.eu = zext i32 %i.dx to i64
  %i.ev = tail call noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.dr, i64 noundef %i.eu) ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8 ; 2 uses
  store ptr %i.ew, ptr %i.bq, align 8, !tbaa !176
  store i32 %i.dv, ptr %i.ev, align 4, !tbaa !74
  br label %_ZNK6vectorIN3sls12bv_lookahead9bool_infoELb1EjE4sizeEv.exit.i.i.i.i.backedge

_ZNK6vectorIN3sls12bv_lookahead9bool_infoELb1EjE4sizeEv.exit.i.i.i.i.backedge: ; preds = %bb.s, %bb.k
  %.be = phi ptr [ %i.dq, %bb.k ], [ %i.ew, %bb.s ]
  br label %_ZNK6vectorIN3sls12bv_lookahead9bool_infoELb1EjE4sizeEv.exit.i.i.i.i, !llvm.loop !184

bb.t:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  unreachable

bb.u:                                             ; preds = %_ZNK6vectorIN3sls12bv_lookahead9bool_infoELb1EjE8capacityEv.exit.i.i.i.i
  %i.ex = getelementptr inbounds i8, ptr %i.dj, i64 -4
  store i32 %i.dc, ptr %i.ex, align 4, !tbaa !74
  %i.ey = zext i32 %i.dc to i64
  %i.ez = getelementptr inbounds nuw [24 x i8], ptr %i.dj, i64 %i.ey
  %.not1319.i.i.i.i = icmp eq i32 %.0.i17.i.i.i.i.ph, %i.dc
  br i1 %.not1319.i.i.i.i, label %_ZN3sls12bv_lookahead9set_scoreEP4exprd.exit, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.u
  %i.fa = zext i32 %.0.i17.i.i.i.i.ph to i64
  %i.fb = getelementptr inbounds nuw [24 x i8], ptr %i.dj, i64 %i.fa
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.preheader.i.i.i.i
  %.020.i.i.i.i = phi ptr [ %i.fc, %.lr.ph.i.i.i.i ], [ %i.fb, %.lr.ph.preheader.i.i.i.i ] ; 4 uses
  store i32 %i.dd, ptr %.020.i.i.i.i, align 8, !tbaa !74
  %.sroa.43.0..020.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i, i64 8
  store double 0.000000e+00, ptr %.sroa.43.0..020.i.i.sroa_idx.i.i, align 8, !tbaa !80
  %.sroa.5.0..020.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i, i64 16
  store i32 1, ptr %.sroa.5.0..020.i.i.sroa_idx.i.i, align 8, !tbaa !74
  %i.fc = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i, i64 24 ; 2 uses
  %.not13.i.i.i.i = icmp eq ptr %i.fc, %i.ez
  br i1 %.not13.i.i.i.i, label %_ZN3sls12bv_lookahead9set_scoreEP4exprd.exit, label %.lr.ph.i.i.i.i, !llvm.loop !185

_ZN3sls12bv_lookahead9set_scoreEP4exprd.exit:     ; preds = %.lr.ph.i.i.i.i, %_ZNK6vectorIN3sls12bv_lookahead9bool_infoELb1EjE4sizeEv.exit.thread.i.i.i, %bb.u
  %i.fd = phi ptr [ %i.dj, %bb.u ], [ %i.de, %_ZNK6vectorIN3sls12bv_lookahead9bool_infoELb1EjE4sizeEv.exit.thread.i.i.i ], [ %i.dj, %.lr.ph.i.i.i.i ]
  %i.fe = load i32, ptr %.0.i.sroa.speculate.load..i.i.i, align 4, !tbaa !172
  %i.ff = zext i32 %i.fe to i64
  %i.fg = getelementptr inbounds nuw [24 x i8], ptr %i.fd, i64 %i.ff
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  store double %i.da, ptr %i.fh, align 8, !tbaa !186
  %i.fi = load double, ptr %i.a, align 8, !tbaa !140
  %i.fj = fadd double %i.da, %i.fi
  store double %i.fj, ptr %i.a, align 8, !tbaa !140
  %i.fk = add i32 %.sroa.6.029, 1                 ; 3 uses
  %i.fl = load i8, ptr %i.i, align 8, !tbaa !161, !range !92, !noundef !63
  %i.fm = trunc nuw i8 %i.fl to i1
  br i1 %i.fm, label %_ZN3sls12bv_lookahead15root_assertionsppEv.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %_ZN3sls12bv_lookahead9set_scoreEP4exprd.exit
  %i.fn = load ptr, ptr %i.bo, align 8, !tbaa !90, !nonnull !63, !align !64 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 112
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !167 ; 2 uses
  %i.fq = icmp eq ptr %i.fp, null
  br i1 %i.fq, label %_ZN3sls12bv_lookahead15root_assertionsppEv.exit, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i.i.preheader

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i.i.preheader: ; preds = %.preheader.i.i
  %i.fr = zext i32 %i.fk to i64
  br label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i.i

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i.i: ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i.i.preheader, %_ZN3sls12bv_lookahead13is_bv_literalEN3sat7literalE.exit.thread.i.i
  %indvars.iv = phi i64 [ %i.fr, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i.i.preheader ], [ %indvars.iv.next, %_ZN3sls12bv_lookahead13is_bv_literalEN3sat7literalE.exit.thread.i.i ] ; 5 uses
  %i.fs = phi ptr [ %i.fp, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i.i.preheader ], [ %i.gv, %_ZN3sls12bv_lookahead13is_bv_literalEN3sat7literalE.exit.thread.i.i ] ; 2 uses
  %i.ft = phi ptr [ %i.fn, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i.i.preheader ], [ %i.gt, %_ZN3sls12bv_lookahead13is_bv_literalEN3sat7literalE.exit.thread.i.i ]
  %i.fu = getelementptr inbounds i8, ptr %i.fs, i64 -4
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !74
  %i.fw = zext i32 %i.fv to i64
  %i.fx = icmp samesign ult i64 %indvars.iv, %i.fw
  br i1 %i.fx, label %bb.v, label %_ZN3sls12bv_lookahead15root_assertionsppEv.exit.loopexit

bb.v:                                             ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i.i
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %indvars.iv
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.fy, align 4, !tbaa !74 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !98, !nonnull !63, !align !64 ; 2 uses
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !124
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 80
  %i.gd = load ptr, ptr %i.gc, align 8
  %i.ge = tail call noundef zeroext i1 %i.gd(ptr noundef nonnull align 8 dereferenceable(8) %i.ga, i32 %.sroa.0.0.copyload.i.i), !inline_history !188
  %.pre33 = load ptr, ptr %i.bo, align 8, !tbaa !90 ; 6 uses
  br i1 %i.ge, label %bb.w, label %_ZN3sls12bv_lookahead13is_bv_literalEN3sat7literalE.exit.thread.i.i

bb.w:                                             ; preds = %bb.v
  %i.gf = lshr i32 %.sroa.0.0.copyload.i.i, 1     ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.pre33, i64 80
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !130 ; 3 uses
  %i.gi = icmp eq ptr %i.gh, null
  br i1 %i.gi, label %_ZN3sls12bv_lookahead13is_bv_literalEN3sat7literalE.exit.thread.i.i, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i.i.i.i.i

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i.i.i.i.i: ; preds = %bb.w
  %i.gj = getelementptr inbounds i8, ptr %i.gh, i64 -4
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !74
  %.not.i.i.i.i.i.i = icmp ult i32 %i.gf, %i.gk
  br i1 %.not.i.i.i.i.i.i, label %_ZN3sls7context4atomEj.exit.i.i.i, label %_ZN3sls12bv_lookahead13is_bv_literalEN3sat7literalE.exit.thread.i.i

_ZN3sls7context4atomEj.exit.i.i.i:                ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i.i.i.i.i
  %i.gl = zext nneg i32 %i.gf to i64
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %i.gl
  %.0.i.sroa.speculate.load..i.i.i.i.i = load ptr, ptr %i.gm, align 8, !tbaa !132 ; 3 uses
  %.not.i.i.i17 = icmp eq ptr %.0.i.sroa.speculate.load..i.i.i.i.i, null
  br i1 %.not.i.i.i17, label %_ZN3sls12bv_lookahead13is_bv_literalEN3sat7literalE.exit.thread.i.i, label %bb.x

bb.x:                                             ; preds = %_ZN3sls7context4atomEj.exit.i.i.i
  %i.gn = getelementptr inbounds nuw i8, ptr %.0.i.sroa.speculate.load..i.i.i.i.i, i64 4
  %i.go = load i32, ptr %i.gn, align 4
  %i.gp = and i32 %i.go, 65535
  %i.gq = icmp eq i32 %i.gp, 0
  br i1 %i.gq, label %_ZN3sls12bv_lookahead13is_bv_literalEN3sat7literalE.exit.i.i, label %_ZN3sls12bv_lookahead13is_bv_literalEN3sat7literalE.exit.thread.i.i

_ZN3sls12bv_lookahead13is_bv_literalEN3sat7literalE.exit.i.i: ; preds = %bb.x
  %i.gr = load ptr, ptr %i.bp, align 8, !tbaa !93, !nonnull !63, !align !64
  %i.gs = tail call noundef zeroext i1 @_ZNK3sls7bv_eval9can_eval1EP4expr(ptr noundef nonnull align 8 dereferenceable(857) %i.gr, ptr noundef nonnull %.0.i.sroa.speculate.load..i.i.i.i.i)
  br i1 %i.gs, label %_ZN3sls12bv_lookahead15root_assertionsppEv.exit.loopexit, label %_ZN3sls12bv_lookahead13is_bv_literalEN3sat7literalE.exit.i.i._ZN3sls12bv_lookahead13is_bv_literalEN3sat7literalE.exit.thread.i.i_crit_edge

_ZN3sls12bv_lookahead13is_bv_literalEN3sat7literalE.exit.i.i._ZN3sls12bv_lookahead13is_bv_literalEN3sat7literalE.exit.thread.i.i_crit_edge: ; preds = %_ZN3sls12bv_lookahead13is_bv_literalEN3sat7literalE.exit.i.i
  %.pre32 = load ptr, ptr %i.bo, align 8, !tbaa !90
  br label %_ZN3sls12bv_lookahead13is_bv_literalEN3sat7literalE.exit.thread.i.i

_ZN3sls12bv_lookahead13is_bv_literalEN3sat7literalE.exit.thread.i.i: ; preds = %_ZN3sls12bv_lookahead13is_bv_literalEN3sat7literalE.exit.i.i._ZN3sls12bv_lookahead13is_bv_literalEN3sat7literalE.exit.thread.i.i_crit_edge, %bb.x, %_ZN3sls7context4atomEj.exit.i.i.i, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i.i.i.i.i, %bb.w, %bb.v
  %i.gt = phi ptr [ %.pre32, %_ZN3sls12bv_lookahead13is_bv_literalEN3sat7literalE.exit.i.i._ZN3sls12bv_lookahead13is_bv_literalEN3sat7literalE.exit.thread.i.i_crit_edge ], [ %.pre33, %bb.x ], [ %.pre33, %_ZN3sls7context4atomEj.exit.i.i.i ], [ %.pre33, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i.i.i.i.i ], [ %.pre33, %bb.w ], [ %.pre33, %bb.v ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 112
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !167 ; 2 uses
  %i.gw = icmp eq ptr %i.gv, null
  br i1 %i.gw, label %_ZN3sls12bv_lookahead15root_assertionsppEv.exit.loopexit, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i.i, !llvm.loop !169

_ZN3sls12bv_lookahead15root_assertionsppEv.exit.loopexit: ; preds = %_ZN3sls12bv_lookahead13is_bv_literalEN3sat7literalE.exit.thread.i.i, %_ZN3sls12bv_lookahead13is_bv_literalEN3sat7literalE.exit.i.i, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i.i
  %.sroa.6.2.ph.in = phi i64 [ %indvars.iv.next, %_ZN3sls12bv_lookahead13is_bv_literalEN3sat7literalE.exit.thread.i.i ], [ %indvars.iv, %_ZN3sls12bv_lookahead13is_bv_literalEN3sat7literalE.exit.i.i ], [ %indvars.iv, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i.i ]
  %.sroa.6.2.ph = trunc i64 %.sroa.6.2.ph.in to i32
  br label %_ZN3sls12bv_lookahead15root_assertionsppEv.exit

_ZN3sls12bv_lookahead15root_assertionsppEv.exit:  ; preds = %_ZN3sls12bv_lookahead15root_assertionsppEv.exit.loopexit, %_ZN3sls12bv_lookahead9set_scoreEP4exprd.exit, %.preheader.i.i
  %.sroa.6.2 = phi i32 [ %i.fk, %_ZN3sls12bv_lookahead9set_scoreEP4exprd.exit ], [ %i.fk, %.preheader.i.i ], [ %.sroa.6.2.ph, %_ZN3sls12bv_lookahead15root_assertionsppEv.exit.loopexit ] ; 2 uses
  %.not = icmp eq i32 %.sroa.6.2, %.0.i.i.sink.i.i
  br i1 %.not, label %._crit_edge, label %bb.g
}

declare noundef i32 @_Z19get_verbosity_levelv() local_unnamed_addr #1

declare noundef zeroext i1 @_Z11is_threadedv() local_unnamed_addr #1

declare void @_Z12verbose_lockv() local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv() local_unnamed_addr #1

declare void @_Z14verbose_unlockv() local_unnamed_addr #1

declare noundef zeroext i1 @_ZN8reslimit3incEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3sls12bv_lookahead13check_restartEv(ptr noundef nonnull align 8 dereferenceable(400) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !95   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !127
  %i.e = urem i32 %i.b, %i.d
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3sls12bv_lookahead10ucb_forgetEv(ptr noundef nonnull align 8 dereferenceable(400) %0)
  tail call void @_ZN3sls12bv_lookahead7rescoreEv(ptr noundef nonnull align 8 dereferenceable(400) %0)
  %.pre = load i32, ptr %i.a, align 4, !tbaa !95
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = phi i32 [ %.pre, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !128  ; 2 uses
  %i.j = icmp ult i32 %i.g, %i.i
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !129  ; 2 uses
  %i.m = add i32 %i.l, 1                          ; 2 uses
  store i32 %i.m, ptr %i.k, align 8, !tbaa !129
  %1 = icmp ult i32 %i.i, %i.g
  %..i = select i1 %1, ptr %i.a, ptr %i.h
  %2 = load i32, ptr %..i, align 4, !tbaa !74
  %i.n = and i32 %i.l, 1
  %.not.not = icmp eq i32 %i.n, 0
  %i.o = load i32, ptr %i.c, align 8, !tbaa !127
  %i.p = select i1 %.not.not, i32 1, i32 %i.m
  %.pn = mul i32 %i.o, %i.p
  %storemerge = add i32 %.pn, %2
  store i32 %storemerge, ptr %i.h, align 4, !tbaa !128
  tail call void @_ZN3sls12bv_lookahead32reset_uninterp_in_false_literalsEv(ptr noundef nonnull align 8 dereferenceable(400) %0)
  tail call void @_ZN3sls12bv_lookahead7rescoreEv(ptr noundef nonnull align 8 dereferenceable(400) %0)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN3sls12bv_lookahead22get_candidate_uninterpEv(ptr noundef nonnull align 8 dereferenceable(400) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %2 = alloca %"class.std::allocator", align 1    ; 4 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"class.std::allocator", align 1    ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.b = load i8, ptr %i.a, align 4, !tbaa !156, !range !92, !noundef !63
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 8 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !161, !range !92, !noundef !63
  %i.f = trunc nuw i8 %i.e to i1                  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 7 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !90, !nonnull !63, !align !64 ; 6 uses
  br i1 %i.c, label %bb.b, label %bb.ai

bb.b:                                             ; preds = %bb.a
  br i1 %i.f, label %_ZN3sls12bv_lookahead23root_assertion_iterator5beginEv.exit.thread, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !167  ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_ZN3sls12bv_lookahead23root_assertion_iterator5beginEv.exit.thread282, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i.i.preheader.i

_ZN3sls12bv_lookahead23root_assertion_iterator5beginEv.exit.thread282: ; preds = %.preheader.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !90, !nonnull !63, !align !64
  br label %bb.f

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i.i.preheader.i: ; preds = %.preheader.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i.i.i

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i.i.i: ; preds = %_ZN3sls12bv_lookahead13is_bv_literalEN3sat7literalE.exit.thread.i.i.i, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i.i.preheader.i
  %indvars.iv.i = phi i64 [ 0, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i.i.preheader.i ], [ %indvars.iv.next.i, %_ZN3sls12bv_lookahead13is_bv_literalEN3sat7literalE.exit.thread.i.i.i ] ; 5 uses
  %i.o = phi ptr [ %i.j, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i.i.preheader.i ], [ %i.ar, %_ZN3sls12bv_lookahead13is_bv_literalEN3sat7literalE.exit.thread.i.i.i ] ; 2 uses
  %i.p = phi ptr [ %i.h, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i.i.preheader.i ], [ %i.ap, %_ZN3sls12bv_lookahead13is_bv_literalEN3sat7literalE.exit.thread.i.i.i ]
  %i.q = getelementptr inbounds i8, ptr %i.o, i64 -4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !74
  %i.s = zext i32 %i.r to i64
  %i.t = icmp samesign ult i64 %indvars.iv.i, %i.s
  br i1 %i.t, label %bb.c, label %_ZN3sls12bv_lookahead23root_assertion_iterator5beginEv.exit

bb.c:                                             ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i.i.i
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.i
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.u, align 4, !tbaa !74 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !98, !nonnull !63, !align !64 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !124
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 80
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call noundef zeroext i1 %i.z(ptr noundef nonnull align 8 dereferenceable(8) %i.w, i32 %.sroa.0.0.copyload.i.i.i), !inline_history !168
  %.pre3.i = load ptr, ptr %i.g, align 8, !tbaa !90 ; 6 uses
  br i1 %i.aa, label %bb.d, label %_ZN3sls12bv_lookahead13is_bv_literalEN3sat7literalE.exit.thread.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.ab = lshr i32 %.sroa.0.0.copyload.i.i.i, 1   ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.pre3.i, i64 80
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !130 ; 3 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %_ZN3sls12bv_lookahead13is_bv_literalEN3sat7literalE.exit.thread.i.i.i, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i.i.i.i.i.i

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i.i.i.i.i.i: ; preds = %bb.d
  %i.af = getelementptr inbounds i8, ptr %i.ad, i64 -4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !74
  %.not.i.i.i.i.i.i.i = icmp ult i32 %i.ab, %i.ag
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN3sls7context4atomEj.exit.i.i.i.i, label %_ZN3sls12bv_lookahead13is_bv_literalEN3sat7literalE.exit.thread.i.i.i

_ZN3sls7context4atomEj.exit.i.i.i.i:              ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i.i.i.i.i.i
  %i.ah = zext nneg i32 %i.ab to i64
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ah
  %.0.i.sroa.speculate.load..i.i.i.i.i.i = load ptr, ptr %i.ai, align 8, !tbaa !132 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %.0.i.sroa.speculate.load..i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZN3sls12bv_lookahead13is_bv_literalEN3sat7literalE.exit.thread.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZN3sls7context4atomEj.exit.i.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i.sroa.speculate.load..i.i.i.i.i.i, i64 4
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = and i32 %i.ak, 65535
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %_ZN3sls12bv_lookahead13is_bv_literalEN3sat7literalE.exit.i.i.i, label %_ZN3sls12bv_lookahead13is_bv_literalEN3sat7literalE.exit.thread.i.i.i

_ZN3sls12bv_lookahead13is_bv_literalEN3sat7literalE.exit.i.i.i: ; preds = %bb.e
  %i.an = load ptr, ptr %i.n, align 8, !tbaa !93, !nonnull !63, !align !64
  %i.ao = tail call noundef zeroext i1 @_ZNK3sls7bv_eval9can_eval1EP4expr(ptr noundef nonnull align 8 dereferenceable(857) %i.an, ptr noundef nonnull %.0.i.sroa.speculate.load..i.i.i.i.i.i)
  br i1 %i.ao, label %_ZN3sls12bv_lookahead23root_assertion_iterator5beginEv.exit, label %_ZN3sls12bv_lookahead13is_bv_literalEN3sat7literalE.exit.i.i._ZN3sls12bv_lookahead13is_bv_literalEN3sat7literalE.exit.thread.i.i_crit_edge.i

_ZN3sls12bv_lookahead13is_bv_literalEN3sat7literalE.exit.i.i._ZN3sls12bv_lookahead13is_bv_literalEN3sat7literalE.exit.thread.i.i_crit_edge.i: ; preds = %_ZN3sls12bv_lookahead13is_bv_literalEN3sat7literalE.exit.i.i.i
  %.pre.i = load ptr, ptr %i.g, align 8, !tbaa !90
  br label %_ZN3sls12bv_lookahead13is_bv_literalEN3sat7literalE.exit.thread.i.i.i

_ZN3sls12bv_lookahead13is_bv_literalEN3sat7literalE.exit.thread.i.i.i: ; preds = %_ZN3sls12bv_lookahead13is_bv_literalEN3sat7literalE.exit.i.i._ZN3sls12bv_lookahead13is_bv_literalEN3sat7literalE.exit.thread.i.i_crit_edge.i, %bb.e, %_ZN3sls7context4atomEj.exit.i.i.i.i, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i.i.i.i.i.i, %bb.d, %bb.c
  %i.ap = phi ptr [ %.pre.i, %_ZN3sls12bv_lookahead13is_bv_literalEN3sat7literalE.exit.i.i._ZN3sls12bv_lookahead13is_bv_literalEN3sat7literalE.exit.thread.i.i_crit_edge.i ], [ %.pre3.i, %bb.e ], [ %.pre3.i, %_ZN3sls7context4atomEj.exit.i.i.i.i ], [ %.pre3.i, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i.i.i.i.i.i ], [ %.pre3.i, %bb.d ], [ %.pre3.i, %bb.c ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 112
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !167 ; 2 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %_ZN3sls12bv_lookahead23root_assertion_iterator5beginEv.exit, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i.i.i, !llvm.loop !169

_ZN3sls12bv_lookahead23root_assertion_iterator5beginEv.exit: ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i.i.i, %_ZN3sls12bv_lookahead13is_bv_literalEN3sat7literalE.exit.i.i.i, %_ZN3sls12bv_lookahead13is_bv_literalEN3sat7literalE.exit.thread.i.i.i
  %.sroa.3.1.ph.in.i = phi i64 [ %indvars.iv.next.i, %_ZN3sls12bv_lookahead13is_bv_literalEN3sat7literalE.exit.thread.i.i.i ], [ %indvars.iv.i, %_ZN3sls12bv_lookahead13is_bv_literalEN3sat7literalE.exit.i.i.i ], [ %indvars.iv.i, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i.i.i ]
  %.sroa.3.1.ph.i = trunc i64 %.sroa.3.1.ph.in.i to i32 ; 2 uses
  %.pre218 = load i8, ptr %i.d, align 8, !tbaa !161, !range !92
  %i.at = trunc nuw i8 %.pre218 to i1
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !90, !nonnull !63, !align !64 ; 2 uses
  br i1 %i.at, label %_ZN3sls12bv_lookahead23root_assertion_iterator5beginEv.exit.thread, label %bb.f

_ZN3sls12bv_lookahead23root_assertion_iterator5beginEv.exit.thread: ; preds = %bb.b, %_ZN3sls12bv_lookahead23root_assertion_iterator5beginEv.exit
  %i.aw = phi ptr [ %i.av, %_ZN3sls12bv_lookahead23root_assertion_iterator5beginEv.exit ], [ %i.h, %bb.b ]
  %i.ax = phi ptr [ %i.au, %_ZN3sls12bv_lookahead23root_assertion_iterator5beginEv.exit ], [ %i.g, %bb.b ] ; 2 uses
  %.sroa.3.1.i281 = phi i32 [ %.sroa.3.1.ph.i, %_ZN3sls12bv_lookahead23root_assertion_iterator5beginEv.exit ], [ 0, %bb.b ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 168
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !130 ; 2 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %_ZN3sls12bv_lookahead23root_assertion_iterator3endEv.exit, label %_ZN3sls12bv_lookahead15root_assertions4nextEv.exit.sink.split.sink.split.i.i

bb.f:                                             ; preds = %_ZN3sls12bv_lookahead23root_assertion_iterator5beginEv.exit.thread282, %_ZN3sls12bv_lookahead23root_assertion_iterator5beginEv.exit
  %i.bb = phi ptr [ %i.m, %_ZN3sls12bv_lookahead23root_assertion_iterator5beginEv.exit.thread282 ], [ %i.av, %_ZN3sls12bv_lookahead23root_assertion_iterator5beginEv.exit ]
  %i.bc = phi ptr [ %i.l, %_ZN3sls12bv_lookahead23root_assertion_iterator5beginEv.exit.thread282 ], [ %i.au, %_ZN3sls12bv_lookahead23root_assertion_iterator5beginEv.exit ] ; 2 uses
  %.sroa.3.1.i284 = phi i32 [ 0, %_ZN3sls12bv_lookahead23root_assertion_iterator5beginEv.exit.thread282 ], [ %.sroa.3.1.ph.i, %_ZN3sls12bv_lookahead23root_assertion_iterator5beginEv.exit ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 112
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !167 ; 2 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %_ZN3sls12bv_lookahead23root_assertion_iterator3endEv.exit, label %_ZN3sls12bv_lookahead15root_assertions4nextEv.exit.sink.split.sink.split.i.i

_ZN3sls12bv_lookahead15root_assertions4nextEv.exit.sink.split.sink.split.i.i: ; preds = %bb.f, %_ZN3sls12bv_lookahead23root_assertion_iterator5beginEv.exit.thread
  %i.bg = phi ptr [ %i.ax, %_ZN3sls12bv_lookahead23root_assertion_iterator5beginEv.exit.thread ], [ %i.bc, %bb.f ]
  %.sroa.3.1.i279 = phi i32 [ %.sroa.3.1.i281, %_ZN3sls12bv_lookahead23root_assertion_iterator5beginEv.exit.thread ], [ %.sroa.3.1.i284, %bb.f ]
  %.sink9.i.i = phi ptr [ %i.az, %_ZN3sls12bv_lookahead23root_assertion_iterator5beginEv.exit.thread ], [ %i.be, %bb.f ]
  %i.bh = getelementptr inbounds i8, ptr %.sink9.i.i, i64 -4
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !74
  br label %_ZN3sls12bv_lookahead23root_assertion_iterator3endEv.exit

_ZN3sls12bv_lookahead23root_assertion_iterator3endEv.exit: ; preds = %_ZN3sls12bv_lookahead23root_assertion_iterator5beginEv.exit.thread, %bb.f, %_ZN3sls12bv_lookahead15root_assertions4nextEv.exit.sink.split.sink.split.i.i
  %i.bj = phi ptr [ %i.ax, %_ZN3sls12bv_lookahead23root_assertion_iterator5beginEv.exit.thread ], [ %i.bc, %bb.f ], [ %i.bg, %_ZN3sls12bv_lookahead15root_assertions4nextEv.exit.sink.split.sink.split.i.i ] ; 5 uses
  %.sroa.3.1.i280 = phi i32 [ %.sroa.3.1.i281, %_ZN3sls12bv_lookahead23root_assertion_iterator5beginEv.exit.thread ], [ %.sroa.3.1.i284, %bb.f ], [ %.sroa.3.1.i279, %_ZN3sls12bv_lookahead15root_assertions4nextEv.exit.sink.split.sink.split.i.i ] ; 2 uses
  %.0.i.i.sink.i.i = phi i32 [ 0, %_ZN3sls12bv_lookahead23root_assertion_iterator5beginEv.exit.thread ], [ 0, %bb.f ], [ %i.bi, %_ZN3sls12bv_lookahead15root_assertions4nextEv.exit.sink.split.sink.split.i.i ] ; 2 uses
  %.not194203 = icmp eq i32 %.sroa.3.1.i280, %.0.i.i.sink.i.i
  br i1 %.not194203, label %.sink.split, label %.lr.ph208

.lr.ph208:                                        ; preds = %_ZN3sls12bv_lookahead23root_assertion_iterator3endEv.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 136
  br label %bb.g

._crit_edge209:                                   ; preds = %_ZN3sls12bv_lookahead15root_assertionsppEv.exit
  %.not = icmp eq ptr %.2, null
  br i1 %.not, label %.sink.split, label %bb.ag

bb.g:                                             ; preds = %.lr.ph208, %_ZN3sls12bv_lookahead15root_assertionsppEv.exit
  %.038207 = phi ptr [ null, %.lr.ph208 ], [ %.2, %_ZN3sls12bv_lookahead15root_assertionsppEv.exit ] ; 6 uses
  %.039206 = phi double [ -1.000000e+00, %.lr.ph208 ], [ %.241, %_ZN3sls12bv_lookahead15root_assertionsppEv.exit ] ; 7 uses
  %.sroa.6166.0204 = phi i32 [ %.sroa.3.1.i280, %.lr.ph208 ], [ %.sroa.6166.2, %_ZN3sls12bv_lookahead15root_assertionsppEv.exit ] ; 3 uses
  %i.bq = load i8, ptr %i.d, align 8, !tbaa !161, !range !92, !noundef !63
  %i.br = trunc nuw i8 %i.bq to i1
  %i.bs = load ptr, ptr %i.bj, align 8, !tbaa !90, !nonnull !63, !align !64 ; 3 uses
  br i1 %i.br, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 168
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !130
  br label %_ZN3sls7context4atomEj.exit.sink.split.i

bb.i:                                             ; preds = %bb.g
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 80
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !130 ; 3 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %_ZNK3sls12bv_lookahead15root_assertionsdeEv.exit, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i.i.i

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i.i.i:     ; preds = %bb.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.bs, i64 112
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !167
  %i.ca = zext i32 %.sroa.6166.0204 to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.ca
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !170
  %i.cd = lshr i32 %i.cc, 1                       ; 2 uses
  %i.ce = getelementptr inbounds i8, ptr %i.bw, i64 -4
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !74
  %.not.i.i.i.i49 = icmp ult i32 %i.cd, %i.cf
  br i1 %.not.i.i.i.i49, label %_ZN3sls7context4atomEj.exit.sink.split.i, label %_ZNK3sls12bv_lookahead15root_assertionsdeEv.exit

_ZN3sls7context4atomEj.exit.sink.split.i:         ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i.i.i, %bb.h
  %.sink.i = phi i32 [ %.sroa.6166.0204, %bb.h ], [ %i.cd, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i.i.i ]
  %.sink4.i = phi ptr [ %i.bu, %bb.h ], [ %i.bw, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i.i.i ]
end_hunk_1
