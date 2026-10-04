Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/ImageCanvas?download=true
inline.NumInlined: 10055
inline.NumDeleted: 3878
loop-unroll.NumCompletelyUnrolled: 75
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 112
begin_hunk_0_@_ZN3tev11ImageCanvas21drawPixelValuesAsTextEP10NVGcontext:bb.a

_ZNSt3__16vectorIN7nanogui5ColorENS_9allocatorIS2_EEED2B8ne180100Ev.exit189: ; preds = %bb.dc, %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #47
  %.pre357 = load ptr, ptr %17, align 8, !tbaa !764
  br label %bb.de

bb.de:                                            ; preds = %bb.t, %_ZNSt3__16vectorIN7nanogui5ColorENS_9allocatorIS2_EEED2B8ne180100Ev.exit189
  %i.ya = phi ptr [ %i.hr, %bb.t ], [ %.pre357, %_ZNSt3__16vectorIN7nanogui5ColorENS_9allocatorIS2_EEED2B8ne180100Ev.exit189 ] ; 4 uses
  %.pn107.pn.pn = phi { ptr, i32 } [ %i.it, %bb.t ], [ %.pn107, %_ZNSt3__16vectorIN7nanogui5ColorENS_9allocatorIS2_EEED2B8ne180100Ev.exit189 ]
  %.not.i.i190 = icmp eq ptr %i.ya, null
  br i1 %.not.i.i190, label %_ZNSt3__16vectorINS_17basic_string_viewIcNS_11char_traitsIcEEEENS_9allocatorIS4_EEED2B8ne180100Ev.exit191, label %bb.df

bb.df:                                            ; preds = %bb.de
  store ptr %i.ya, ptr %i.fp, align 8, !tbaa !766
  %i.yb = load ptr, ptr %i.fq, align 8, !tbaa !765
  %i.yc = ptrtoint ptr %i.yb to i64
  %i.yd = ptrtoint ptr %i.ya to i64
  %i.ye = sub i64 %i.yc, %i.yd
  call void @_ZdlPvm(ptr noundef nonnull %i.ya, i64 noundef %i.ye) #49
  br label %_ZNSt3__16vectorINS_17basic_string_viewIcNS_11char_traitsIcEEEENS_9allocatorIS4_EEED2B8ne180100Ev.exit191

_ZNSt3__16vectorINS_17basic_string_viewIcNS_11char_traitsIcEEEENS_9allocatorIS4_EEED2B8ne180100Ev.exit191: ; preds = %bb.de, %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #47
  br label %common.resume

.critedge:                                        ; preds = %_ZNSt3__16vectorINS_17basic_string_viewIcNS_11char_traitsIcEEEENS_9allocatorIS4_EEE5eraseENS_11__wrap_iterIPKS4_EESB_.exit
  %.not.i.i192 = icmp eq ptr %i.hr, null
  br i1 %.not.i.i192, label %.sink.split, label %bb.dg

bb.dg:                                            ; preds = %.critedge
  %i.yf = sub i64 %i.hs, %i.hq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.hr, i64 noundef %i.yf) #49
  br label %.sink.split

.sink.split:                                      ; preds = %bb.dg, %.critedge, %bb.db, %_ZNSt3__16vectorIN7nanogui5ColorENS_9allocatorIS2_EEED2B8ne180100Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #47
  br label %bb.dh

bb.dh:                                            ; preds = %.sink.split, %_ZN7nanogui7inverseERKNS_6MatrixIfLm3EEE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #47
  ret void

bb.di:                                            ; preds = %bb.ay, %bb.c
  unreachable
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZNSt13runtime_errorC1ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #12

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #13

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3tev11ImageCanvas16textureToNanoguiEPKNS_5ImageE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.nanogui::Matrix") align 4 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(504) %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v12::detail::format_arg_store.589", align 16 ; 7 uses
  %4 = alloca %"class.std::__1::basic_string", align 8 ; 9 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %0, align 4, !tbaa !76, !alias.scope !792
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.a, align 4, !tbaa !76, !alias.scope !792
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float 1.000000e+00, ptr %i.b, align 4, !tbaa !76, !alias.scope !792
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !207  ; 3 uses
  %.not90 = icmp eq ptr %i.d, null
  br i1 %.not90, label %_ZNKSt3__115source_location13function_nameB8ne180100Ev.exit, label %bb.i, !prof !214

_ZNKSt3__115source_location13function_nameB8ne180100Ev.exit: ; preds = %bb.c
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #47 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #47
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #47, !noalias !793
  store ptr @.str.4, ptr %3, align 16, !tbaa !79, !noalias !793
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 1117, ptr %i.f, align 16, !tbaa !79, !noalias !793
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 132, ptr %i.g, align 16, !tbaa !79, !noalias !793
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr @.str.33, ptr %i.h, align 16, !tbaa !79, !noalias !793
  invoke void @_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::basic_string") align 8 %4, ptr nonnull @.str.32, i64 122, i64 49708, ptr nonnull %3)
          to label %bb.d unwind label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread

bb.d:                                             ; preds = %_ZNKSt3__115source_location13function_nameB8ne180100Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #47, !noalias !793
  invoke void @_ZNSt13runtime_errorC1ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #50
          to label %bb.k unwind label %bb.f

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread: ; preds = %_ZNKSt3__115source_location13function_nameB8ne180100Ev.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #47
  br label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %.011 = phi i1 [ false, %bb.e ], [ true, %bb.d ] ; 2 uses
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.k = load i8, ptr %4, align 8
  %i.l = trunc i8 %i.k to i1
  br i1 %i.l, label %.split, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

.split:                                           ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !79
  %i.o = load i64, ptr %4, align 8
  %i.p = and i64 %i.o, -2
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.p) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #47
  br i1 %.011, label %bb.g, label %bb.h

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #47
  br i1 %.011, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.split, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit
  %.pn89 = phi { ptr, i32 } [ %i.i, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread ], [ %i.j, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit ], [ %i.j, %.split ]
  call void @__cxa_free_exception(ptr %i.e) #47
  br label %bb.h

bb.h:                                             ; preds = %.split, %bb.g, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit
  %.pn88 = phi { ptr, i32 } [ %.pn89, %bb.g ], [ %i.j, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit ], [ %i.j, %.split ]
  resume { ptr, i32 } %.pn88

bb.i:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.s = load float, ptr %i.r, align 8, !tbaa !76, !noalias !794 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 308
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 316
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 324
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 332
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.ab = load float, ptr %i.aa, align 8, !tbaa !208
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 360 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 368 ; 2 uses
  %i.ae = load <2 x i32>, ptr %i.ad, align 4, !tbaa !204
  %i.af = load <2 x i32>, ptr %i.ac, align 4, !tbaa !204
  %i.ag = sub nsw <2 x i32> %i.ae, %i.af
  %i.ah = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.ag, <2 x i32> zeroinitializer)
  %i.ai = uitofp nneg <2 x i32> %i.ah to <2 x float> ; 2 uses
  %i.aj = extractelement <2 x float> %i.ai, i64 0
  %i.ak = fmul nnan float %i.aj, 5.000000e-01
  %i.al = extractelement <2 x float> %i.ai, i64 1
  %i.am = fmul nnan float %i.al, 5.000000e-01
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 376 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 384
  %i.ao = load <2 x i64>, ptr %i.an, align 8, !tbaa !79 ; 2 uses
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !79
  %.sroa.0.0.copyload.i = load i64, ptr %i.an, align 8, !tbaa !79
  %.sroa.010.0.extract.trunc.i = trunc i64 %.sroa.0.0.copyload.i to i32
  %.sroa.3.8.extract.trunc.i = trunc i64 %.sroa.2.0.copyload.i to i32
  %i.ap = load <2 x i64>, ptr %i.ac, align 8, !tbaa !79 ; 2 uses
  %.sroa.2.0.copyload.i.i = load i64, ptr %i.ad, align 8, !tbaa !79
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.ac, align 8, !tbaa !79
  %.sroa.04.0.extract.trunc.i = trunc i64 %.sroa.0.0.copyload.i.i to i32
  %i.aq = sitofp i32 %.sroa.04.0.extract.trunc.i to float
  %i.ar = shufflevector <2 x i64> %i.ap, <2 x i64> %i.ao, <2 x i32> <i32 0, i32 2>
  %i.as = lshr <2 x i64> %i.ar, splat (i64 32)
  %i.at = trunc nuw <2 x i64> %i.as to <2 x i32>
  %.sroa.5.8.extract.trunc.i = trunc i64 %.sroa.2.0.copyload.i.i to i32
  %i.au = sitofp i32 %.sroa.5.8.extract.trunc.i to float
  %i.av = shufflevector <2 x i64> %i.ap, <2 x i64> %i.ao, <2 x i32> <i32 1, i32 3>
  %i.aw = lshr <2 x i64> %i.av, splat (i64 32)
  %i.ax = trunc nuw <2 x i64> %i.aw to <2 x i32>
  %i.ay = fadd nnan float %i.aq, %i.au
  %i.az = fmul nnan float %i.ay, 5.000000e-01
  %i.ba = sitofp i32 %.sroa.010.0.extract.trunc.i to float
  %i.bb = sitofp <2 x i32> %i.at to <2 x float>
  %i.bc = sitofp i32 %.sroa.3.8.extract.trunc.i to float
  %i.bd = sitofp <2 x i32> %i.ax to <2 x float>
  %i.be = fadd nnan float %i.ba, %i.bc
  %i.bf = fadd nnan <2 x float> %i.bb, %i.bd
  %i.bg = fmul nnan float %i.be, 5.000000e-01
  %i.bh = fmul nnan <2 x float> %i.bf, splat (float 5.000000e-01) ; 2 uses
  %i.bi = fsub float %i.az, %i.bg
  %shift = shufflevector <2 x float> %i.bh, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %i.bh, %shift
  %i.bj = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.bm = load <2 x float>, ptr %i.t, align 4, !tbaa !76, !noalias !794 ; 4 uses
  %5 = extractelement <2 x float> %i.bm, i64 0
  %i.bn = load float, ptr %i.x, align 8, !tbaa !76, !noalias !794 ; 2 uses
  %.scalar = fadd float %i.bn, 0.000000e+00
  %i.bo = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison>, float %.scalar, i64 3
  %i.bp = load float, ptr %i.y, align 4, !tbaa !76, !noalias !794 ; 3 uses
  %6 = shufflevector <2 x float> %i.bm, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.bq = shufflevector <4 x float> %6, <4 x float> <float poison, float poison, float -0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 6, i32 7>
  %i.br = load float, ptr %i.z, align 8, !tbaa !76, !noalias !794 ; 3 uses
  %i.bs = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison>, float %i.br, i64 3
  %i.bt = fdiv float 1.000000e+00, %i.ab          ; 3 uses
  %i.bu = load <2 x i32>, ptr %i.q, align 8, !tbaa !204
  %i.bv = sitofp <2 x i32> %i.bu to <2 x float>
  %.scalar95 = fadd float %i.s, 0.000000e+00
  %i.bw = insertelement <4 x float> <float 0.000000e+00, float poison, float 0.000000e+00, float 0.000000e+00>, float %.scalar95, i64 1
  %i.bx = shufflevector <2 x float> %i.bm, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>
  %i.by = insertelement <4 x float> %i.bx, float %i.s, i64 0
  %i.bz = insertelement <4 x float> %i.by, float %i.bn, i64 2
  %7 = fmul nnan <2 x float> %i.bv, splat (float 5.000000e-01) ; 3 uses
  %8 = load float, ptr %i.w, align 4, !tbaa !76, !noalias !794 ; 2 uses
  %9 = shufflevector <2 x float> %7, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 1> ; 2 uses
  %10 = shufflevector <4 x float> %9, <4 x float> <float poison, float poison, float 0.000000e+00, float -0.000000e+00>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %11 = load <2 x float>, ptr %i.u, align 4, !tbaa !76, !noalias !794
  %i.ca = load float, ptr %i.v, align 8, !tbaa !76, !noalias !794
  %12 = shufflevector <2 x float> %11, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 3 uses
  %13 = shufflevector <4 x float> %i.bz, <4 x float> %12, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %14 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %13, <4 x float> zeroinitializer, <4 x float> %i.bw) ; 5 uses
  %15 = extractelement <4 x float> %14, i64 0
  %16 = tail call float @llvm.fmuladd.f32(float %5, float 0.000000e+00, float %15)
  %17 = shufflevector <4 x float> %14, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %18 = insertelement <2 x float> %17, float %16, i64 1
  %19 = fadd <2 x float> %i.bm, %18               ; 2 uses
  %20 = shufflevector <4 x float> %14, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.cb = shufflevector <2 x float> %19, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cc = shufflevector <4 x float> %20, <4 x float> %i.cb, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.cd = insertelement <4 x float> %i.cc, float %i.bp, i64 3
  %i.ce = extractelement <4 x float> %14, i64 3
  %21 = insertelement <4 x float> <float -0.000000e+00, float 0.000000e+00, float -0.000000e+00, float poison>, float %i.bp, i64 3
  %22 = shufflevector <4 x float> %14, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 3, i32 2>
  %23 = shufflevector <4 x float> %22, <4 x float> %12, <4 x i32> <i32 0, i32 4, i32 2, i32 3>
  %24 = fadd <4 x float> %21, %23
  %25 = shufflevector <4 x float> %9, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison>, <4 x i32> <i32 4, i32 5, i32 6, i32 1>
  %26 = insertelement <4 x float> %12, float %i.bp, i64 0
  %27 = insertelement <4 x float> %26, float %i.br, i64 2
  %28 = shufflevector <4 x float> %27, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 2>
  %i.cf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %25, <4 x float> %28, <4 x float> %24) ; 6 uses
  %29 = extractelement <4 x float> %i.cf, i64 0
  %30 = fadd float %i.br, %29                     ; 3 uses
  %31 = fadd float %i.ca, %i.ce
  %i.cg = extractelement <4 x float> %i.cf, i64 2
  %32 = fadd float %8, %i.cg                      ; 3 uses
  %33 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %10, <4 x float> %i.bq, <4 x float> %i.cd) ; 2 uses
  %i.ch = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %33, <4 x float> zeroinitializer, <4 x float> %i.bo) ; 3 uses
  %i.ci = extractelement <4 x float> %i.ch, i64 0
  %i.cj = insertelement <2 x float> poison, float %8, i64 0
  %i.ck = shufflevector <2 x float> %i.cj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cl = shufflevector <4 x float> %i.cf, <4 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.cm = insertelement <2 x float> %i.cl, float %31, i64 1
  %i.cn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %7, <2 x float> %i.ck, <2 x float> %i.cm) ; 4 uses
  %i.co = shufflevector <4 x float> %33, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.cp = insertelement <2 x float> poison, float %i.bt, i64 0
  %i.cq = shufflevector <2 x float> %i.cp, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.co, <2 x float> %i.cq, <2 x float> zeroinitializer)
  %i.cs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cn, <2 x float> zeroinitializer, <2 x float> %i.cr)
  %i.ct = shufflevector <2 x float> %i.cn, <2 x float> %7, <4 x i32> <i32 0, i32 1, i32 poison, i32 2>
  %i.cu = insertelement <4 x float> %i.ct, float %32, i64 2
  %i.cv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cu, <4 x float> %i.bs, <4 x float> %i.ch) ; 4 uses
  %i.cw = extractelement <4 x float> %i.cv, i64 3
  %34 = shufflevector <4 x float> %i.cv, <4 x float> %i.cf, <2 x i32> <i32 3, i32 7>
  %i.cx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %34, <2 x float> zeroinitializer, <2 x float> %i.cs) ; 5 uses
  %i.cy = extractelement <2 x float> %i.cn, i64 0
  %i.cz = tail call float @llvm.fmuladd.f32(float %i.cy, float %i.bt, float %i.ci)
  %i.da = shufflevector <2 x float> %i.cn, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.db = insertelement <2 x float> %i.da, float %32, i64 1
  %i.dc = shufflevector <4 x float> %i.ch, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.dd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.db, <2 x float> %i.cq, <2 x float> %i.dc)
  %35 = shufflevector <4 x float> %i.cf, <4 x float> poison, <2 x i32> <i32 3, i32 poison>
  %i.de = insertelement <2 x float> %35, float %30, i64 1
  %i.df = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.de, <2 x float> zeroinitializer, <2 x float> %i.dd) ; 3 uses
  %36 = shufflevector <4 x float> %i.cv, <4 x float> %i.cf, <4 x i32> <i32 3, i32 7, i32 poison, i32 0>
  %i.dg = insertelement <4 x float> %36, float %30, i64 2
  %i.dh = fadd <4 x float> %i.cv, %i.dg           ; 4 uses
  %i.di = extractelement <2 x float> %19, i64 1
  %i.dj = tail call float @llvm.fmuladd.f32(float %i.di, float %i.bt, float 0.000000e+00)
  %i.dk = tail call float @llvm.fmuladd.f32(float %32, float 0.000000e+00, float %i.dj)
  %i.dl = insertelement <2 x float> poison, float %30, i64 0
  %i.dm = shufflevector <2 x float> %i.dl, <2 x float> %i.cx, <2 x i32> <i32 0, i32 2>
  %i.dn = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.dk, i64 0
  %i.do = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dm, <2 x float> zeroinitializer, <2 x float> %i.dn) ; 3 uses
  %i.dp = shufflevector <2 x float> %i.cx, <2 x float> %i.do, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dq = fadd <4 x float> %i.dp, <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -0.000000e+00>
  %i.dr = extractelement <2 x float> %i.cx, i64 1
  %i.ds = tail call float @llvm.fmuladd.f32(float %i.dr, float 0.000000e+00, float 0.000000e+00)
  %i.dt = extractelement <2 x float> %i.do, i64 0
  %i.du = shufflevector <2 x float> %i.df, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.dv = extractelement <2 x float> %i.df, i64 0
  %i.dw = fadd float %i.dv, %i.ds
  %i.dx = extractelement <2 x float> %i.df, i64 1
  %i.dy = extractelement <4 x float> %i.dh, i64 1
  %i.dz = tail call float @llvm.fmuladd.f32(float %i.dy, float 0.000000e+00, float %i.dw)
  store float %i.dz, ptr %i.bk, align 4, !tbaa !76, !alias.scope !795
  %i.ea = extractelement <2 x float> %i.cx, i64 0
  %i.eb = fsub float %i.bi, %i.ak
  %i.ec = fsub float %i.bj, %i.am
  %i.ed = fadd float %i.eb, f0xBDE38E37           ; 2 uses
  %i.ee = fadd float %i.ec, f0xBDE38E37
  %i.ef = tail call float @llvm.fmuladd.f32(float %i.cw, float 0.000000e+00, float %i.cz) ; 2 uses
  %i.eg = tail call float @llvm.fmuladd.f32(float %i.dt, float 0.000000e+00, float 0.000000e+00)
  %i.eh = insertelement <4 x float> poison, float %i.ef, i64 0
  %i.ei = shufflevector <4 x float> %i.eh, <4 x float> %i.du, <4 x i32> <i32 0, i32 4, i32 5, i32 0>
  %i.ej = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ei, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.dq)
  %i.ek = fadd float %i.dx, %i.eg
  %i.el = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dh, <4 x float> zeroinitializer, <4 x float> %i.ej)
  store <4 x float> %i.el, ptr %0, align 4, !tbaa !76, !alias.scope !795
  %i.em = tail call float @llvm.fmuladd.f32(float %i.ea, float %i.ed, float 0.000000e+00)
  %i.en = shufflevector <2 x float> %i.cx, <2 x float> %i.do, <2 x i32> <i32 1, i32 2>
  %i.eo = insertelement <2 x float> poison, float %i.ed, i64 0
  %i.ep = shufflevector <2 x float> %i.eo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.en, <2 x float> %i.ep, <2 x float> zeroinitializer)
  %i.er = shufflevector <4 x float> %i.dh, <4 x float> %i.du, <4 x i32> <i32 2, i32 poison, i32 4, i32 5>
  %i.es = insertelement <4 x float> %i.er, float %i.ef, i64 1
  %i.et = insertelement <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, float %i.ee, i64 1
  %i.eu = shufflevector <4 x float> %i.et, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.ev = insertelement <4 x float> poison, float %i.ek, i64 0
  %i.ew = insertelement <4 x float> %i.ev, float %i.em, i64 1
  %i.ex = shufflevector <2 x float> %i.eq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ey = shufflevector <4 x float> %i.ew, <4 x float> %i.ex, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ez = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.es, <4 x float> %i.eu, <4 x float> %i.ey)
  %i.fa = shufflevector <4 x float> %i.dh, <4 x float> <float -0.000000e+00, float poison, float poison, float poison>, <4 x i32> <i32 4, i32 0, i32 1, i32 2>
  %i.fb = fadd <4 x float> %i.fa, %i.ez
  store <4 x float> %i.fb, ptr %i.bl, align 4, !tbaa !76, !alias.scope !795
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.b
  ret void

bb.k:                                             ; preds = %bb.e
  unreachable
}

declare { ptr, i64 } @_ZNKR3tev5Image15channelsInGroupENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE(ptr noundef nonnull align 16 dereferenceable(516), ptr, i64) local_unnamed_addr #5

declare noundef zeroext i1 @_ZN3tev7Channel7isAlphaENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE(ptr, i64) local_unnamed_addr #5

declare { <2 x float>, <2 x float> } @_ZN3tev7Channel5colorENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEb(ptr, i64, i1 noundef zeroext) local_unnamed_addr #5

declare void @nvgFontSize(ptr noundef, float noundef) local_unnamed_addr #5

declare void @nvgFontFace(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @nvgTextAlign(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3tev11ImageCanvas18getValuesAtNanoPosEN7nanogui5ArrayIiLm2EEERNSt3__16vectorIfNS4_9allocatorIfEEEENS4_4spanINS4_17basic_string_viewIcNS4_11char_traitsIcEEEELm18446744073709551615EEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(504) %0, i64 %1, ptr noundef nonnull align 8 dereferenceable(24) initializes((8, 16)) %2, ptr nofree readonly captures(address) %3, i64 %4) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.fmt::v12::detail::format_arg_store.589", align 16 ; 7 uses
  %6 = alloca %"class.std::__1::basic_string", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !232
  store ptr %i.b, ptr %i.a, align 8, !tbaa !231
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !207  ; 2 uses
  %.not100 = icmp eq ptr %i.d, null
  br i1 %.not100, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i64 @_ZN3tev11ImageCanvas14getImageCoordsEPKNS_5ImageEN7nanogui5ArrayIiLm2EEE(ptr noundef nonnull align 8 dereferenceable(504) %0, ptr noundef nonnull %i.d, i64 %1) ; 4 uses
  %.idx = shl nuw nsw i64 %4, 4
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 %.idx
  %.not101105 = icmp eq i64 %4, 0
  br i1 %.not101105, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.e to i32 ; 2 uses
  %i.g = icmp slt i32 %.sroa.0.0.extract.trunc.i, 0
  %.sroa.4.0.extract.shift.i = lshr i64 %i.e, 32  ; 2 uses
  %.sroa.4.0.extract.trunc.i = trunc nuw i64 %.sroa.4.0.extract.shift.i to i32
  %i.h = icmp sgt i64 %i.e, -1
  %sext.i.i = and i64 %i.e, 2147483647
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  br label %bb.c

._crit_edge:                                      ; preds = %_ZNSt3__16vectorIfNS_9allocatorIfEEE9push_backB8ne180100EOf.exit, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !207  ; 2 uses
  %.not102 = icmp eq ptr %i.k, null
  br i1 %.not102, label %.loopexit, label %bb.q

bb.c:                                             ; preds = %.lr.ph, %_ZNSt3__16vectorIfNS_9allocatorIfEEE9push_backB8ne180100EOf.exit
  %.sroa.087.0106 = phi ptr [ %3, %.lr.ph ], [ %i.cz, %_ZNSt3__16vectorIfNS_9allocatorIfEEE9push_backB8ne180100EOf.exit ] ; 3 uses
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !207  ; 2 uses
  %.sroa.026.0.copyload = load ptr, ptr %.sroa.087.0106, align 8, !tbaa !218
  %.sroa.227.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.087.0106, i64 8
  %.sroa.227.0.copyload = load i64, ptr %.sroa.227.0..sroa_idx, align 8, !tbaa !216 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 136
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !253  ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 144
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !254  ; 3 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.n, %i.p
  br i1 %.not10.i.i.i.i.i, label %_ZNKR3tev5Image7channelENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i.i.i.i.i
  %.011.i.i.i.i.i = phi ptr [ %i.ac, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i.i.i.i.i ], [ %i.n, %bb.c ] ; 6 uses
  %i.q = load i8, ptr %.011.i.i.i.i.i, align 8    ; 2 uses
  %i.r = trunc i8 %i.q to i1                      ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 8
  %i.t = load i64, ptr %i.s, align 8
  %i.u = lshr i8 %i.q, 1
  %i.v = zext nneg i8 %i.u to i64
  %i.w = select i1 %i.r, i64 %i.t, i64 %i.v
  %.not.i.i.i.i.i.i = icmp eq i64 %i.w, %.sroa.227.0.copyload
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.i.i.i.i.i, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i.i.i.i.i

_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 1
  %i.aa = select i1 %i.r, ptr %i.y, ptr %i.z
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.aa, ptr %.sroa.026.0.copyload, i64 %.sroa.227.0.copyload)
  %i.ab = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.ab, label %_ZNKR3tev5Image7channelENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE.exit, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i.i.i.i.i

_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i.i.i.i.i: ; preds = %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ac, %i.p
  br i1 %.not.i.i.i.i.i, label %_ZNKSt3__115source_location13function_nameB8ne180100Ev.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !796

_ZNKR3tev5Image7channelENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE.exit: ; preds = %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.i.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.n, %bb.c ], [ %.011.i.i.i.i.i, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.i.i.i.i.i ] ; 2 uses
  %i.ad = ptrtoint ptr %.0.lcssa.i.i.i.i.i to i64
  %i.ae = ptrtoint ptr %i.n to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = getelementptr inbounds i8, ptr %i.n, i64 %i.af ; 3 uses
  %.not.i.i = icmp eq ptr %.0.lcssa.i.i.i.i.i, %i.p
  %.not49104 = icmp eq ptr %i.n, null
  %.not49 = or i1 %.not49104, %.not.i.i
  br i1 %.not49, label %_ZNKSt3__115source_location13function_nameB8ne180100Ev.exit, label %bb.i, !prof !810

_ZNKSt3__115source_location13function_nameB8ne180100Ev.exit: ; preds = %_ZNKR3tev5Image7channelENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE.exit, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i.i.i.i.i
  %i.ah = tail call ptr @__cxa_allocate_exception(i64 16) #47 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #47
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #47, !noalias !811
  store ptr @.str.4, ptr %5, align 16, !tbaa !79, !noalias !811
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 604, ptr %i.ai, align 16, !tbaa !79, !noalias !811
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i32 54, ptr %i.aj, align 16, !tbaa !79, !noalias !811
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr @.str.16, ptr %i.ak, align 16, !tbaa !79, !noalias !811
  invoke void @_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::basic_string") align 8 %6, ptr nonnull @.str.18, i64 45, i64 49708, ptr nonnull %5)
          to label %bb.d unwind label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread

bb.d:                                             ; preds = %_ZNKSt3__115source_location13function_nameB8ne180100Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #47, !noalias !811
  invoke void @_ZNSt13runtime_errorC1ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_throw(ptr nonnull %i.ah, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #50
          to label %bb.ab unwind label %bb.f

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread: ; preds = %_ZNKSt3__115source_location13function_nameB8ne180100Ev.exit
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #47
  br label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %.046 = phi i1 [ false, %bb.e ], [ true, %bb.d ] ; 2 uses
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.an = load i8, ptr %6, align 8
  %i.ao = trunc i8 %i.an to i1
  br i1 %i.ao, label %.split, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

.split:                                           ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !79
  %i.ar = load i64, ptr %6, align 8
  %i.as = and i64 %i.ar, -2
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.as) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #47
  br i1 %.046, label %bb.g, label %bb.h

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #47
end_hunk_0
