Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/ImageCanvas?download=true
inline.NumInlined: 10055
inline.NumDeleted: 3878
loop-unroll.NumCompletelyUnrolled: 75
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 112
begin_hunk_0_@_ZN3tev11ImageCanvas13draw_contentsEv:bb.a
  %i.go = lshr i8 %i.gg, 1
  %i.gp = zext nneg i8 %i.go to i64
  %i.gq = select i1 %i.gh, i64 %i.gn, i64 %i.gp
  store ptr %i.gl, ptr %6, align 8
  %i.gr = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.gq, ptr %i.gr, align 8
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !174
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.gv = load i32, ptr %i.gu, align 8, !tbaa !175
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.gx = load float, ptr %i.gw, align 4, !tbaa !209
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.gz = load float, ptr %i.gy, align 8, !tbaa !210
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.hb = load float, ptr %i.ha, align 4, !tbaa !211
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.hd = load i8, ptr %i.hc, align 4, !tbaa !82, !range !198, !noundef !199
  %i.he = trunc nuw i8 %i.hd to i1
  br i1 %i.he, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN7nanogui7inverseERKNS_6MatrixIfLm3EEE.exit43
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.hg = load float, ptr %i.hf, align 8, !tbaa !76
  %i.hh = tail call float @glfwGetWindowSdrWhiteLevel(ptr noundef %i.c)
  %i.hi = fdiv float %i.hg, %i.hh
  br label %bb.m

bb.m:                                             ; preds = %_ZN7nanogui7inverseERKNS_6MatrixIfLm3EEE.exit43, %bb.l
  %i.hj = phi float [ %i.hi, %bb.l ], [ 1.000000e+00, %_ZN7nanogui7inverseERKNS_6MatrixIfLm3EEE.exit43 ]
  %not.or.cond = xor i1 %or.cond, true
  %spec.select = select i1 %not.or.cond, i1 %i.k, i1 false
  %i.hk = icmp eq ptr %i.an, %i.m
  %i.hl = or i1 %spec.select, %i.hk
  %i.hm = xor i1 %i.hl, true
  %i.hn = select i1 %i.n, i1 %i.hm, i1 false
  %i.ho = select i1 %i.hn, ptr %i.m, ptr null
  %i.hp = sitofp <2 x i32> %i.ar to <2 x float>
  %i.hq = fdiv nnan <2 x float> splat (float 1.000000e+00), %i.hp
  %i.hr = fmul nnan <2 x float> %i.hq, splat (float 2.000000e+00)
  %i.hs = insertelement <2 x float> poison, float %i.at, i64 0
  %i.ht = shufflevector <2 x float> %i.hs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hu = fdiv <2 x float> %i.hr, %i.ht
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.hw = load float, ptr %i.hv, align 8, !tbaa !701
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.hy = load float, ptr %i.hx, align 4, !tbaa !702
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ia = load i8, ptr %i.hz, align 8, !tbaa !173, !range !198, !noundef !199
  %i.ib = trunc nuw i8 %i.ia to i1
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 220
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(16) %i.ic, i64 16, i1 false)
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !212
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.ig = load i32, ptr %i.if, align 8, !tbaa !213
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.ii = load i8, ptr %i.ih, align 8, !tbaa !176
  call void @_ZN3tev10UberShader4drawEN7nanogui5ArrayIfLm2EEES3_PNS_5ImageERKNS1_6MatrixIfLm3EEES5_S9_NSt3__117basic_string_viewIcNSA_11char_traitsIcEEEENS_18EInterpolationModeESF_ffffffbNS1_5ColorENS_8ETonemapENS_7EMetricENS_12EChannelMaskERKNSA_8optionalINS_3BoxIiLj2EEEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.ap, <2 x float> %i.hu, <2 x float> splat (float 2.000000e+01), ptr noundef %i.an, ptr noundef nonnull align 4 dereferenceable(36) %2, ptr noundef %i.ho, ptr noundef nonnull align 4 dereferenceable(36) %4, ptr noundef nonnull byval(%"class.std::__1::basic_string_view") align 8 %6, i32 noundef %i.gt, i32 noundef %i.gv, float noundef %i.gx, float noundef %i.gz, float noundef %i.hb, float noundef %i.hj, float noundef %i.hw, float noundef %i.hy, i1 noundef zeroext %i.ib, ptr noundef nonnull byval(%"class.nanogui::Color") align 8 %7, i32 noundef %i.ie, i32 noundef %i.ig, i8 noundef zeroext %i.ii, ptr noundef nonnull align 4 dereferenceable(17) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #47
  ret void
}

declare void @_ZN3tev10UberShader4drawEN7nanogui5ArrayIfLm2EEES3_PNS_5ImageERKNS1_6MatrixIfLm3EEES5_S9_NSt3__117basic_string_viewIcNSA_11char_traitsIcEEEENS_18EInterpolationModeESF_ffffffbNS1_5ColorENS_8ETonemapENS_7EMetricENS_12EChannelMaskERKNSA_8optionalINS_3BoxIiLj2EEEEE(ptr noundef nonnull align 8 dereferenceable(32), <2 x float>, <2 x float>, ptr noundef, ptr noundef nonnull align 4 dereferenceable(36), ptr noundef, ptr noundef nonnull align 4 dereferenceable(36), ptr noundef byval(%"class.std::__1::basic_string_view") align 8, i32 noundef, i32 noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef, i1 noundef zeroext, ptr noundef byval(%"class.nanogui::Color") align 8, i32 noundef, i32 noundef, i8 noundef zeroext, ptr noundef nonnull align 4 dereferenceable(17)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3tev11ImageCanvas9transformEPKNS_5ImageE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.nanogui::Matrix") align 4 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(504) %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v12::detail::format_arg_store.589", align 16 ; 7 uses
  %4 = alloca %"class.std::__1::basic_string", align 8 ; 9 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %0, align 4, !tbaa !76, !alias.scope !711
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.a, align 4, !tbaa !76, !alias.scope !711
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float 1.000000e+00, ptr %i.b, align 4, !tbaa !76, !alias.scope !711
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !207  ; 2 uses
  %.not118 = icmp eq ptr %i.d, null
  br i1 %.not118, label %_ZNKSt3__115source_location13function_nameB8ne180100Ev.exit, label %bb.i, !prof !214

_ZNKSt3__115source_location13function_nameB8ne180100Ev.exit: ; preds = %bb.c
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #47 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #47
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #47, !noalias !712
  store ptr @.str.4, ptr %3, align 16, !tbaa !79, !noalias !712
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 1104, ptr %i.f, align 16, !tbaa !79, !noalias !712
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 132, ptr %i.g, align 16, !tbaa !79, !noalias !712
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr @.str.30, ptr %i.h, align 16, !tbaa !79, !noalias !712
  invoke void @_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::basic_string") align 8 %4, ptr nonnull @.str.32, i64 122, i64 49708, ptr nonnull %3)
          to label %bb.d unwind label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread

bb.d:                                             ; preds = %_ZNKSt3__115source_location13function_nameB8ne180100Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #47, !noalias !712
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
  %.pn117 = phi { ptr, i32 } [ %i.i, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread ], [ %i.j, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit ], [ %i.j, %.split ]
  call void @__cxa_free_exception(ptr %i.e) #47
  br label %bb.h

bb.h:                                             ; preds = %.split, %bb.g, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit
  %.pn116 = phi { ptr, i32 } [ %.pn117, %bb.g ], [ %i.j, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit ], [ %i.j, %.split ]
  resume { ptr, i32 } %.pn116

bb.i:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.r = load <2 x i32>, ptr %i.q, align 8, !tbaa !204
  %i.s = sitofp <2 x i32> %i.r to <2 x float>     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 308
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 316
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 324
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 332
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.ad = load float, ptr %i.ac, align 8, !tbaa !208
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 376
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 360
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.af, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 368
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8 ; 2 uses
  %.sroa.04.0.extract.trunc.i = trunc i64 %.sroa.0.0.copyload.i.i to i32 ; 2 uses
  %i.ag = sitofp i32 %.sroa.04.0.extract.trunc.i to float
  %.sroa.04.4.extract.shift.i = lshr i64 %.sroa.0.0.copyload.i.i, 32
  %.sroa.04.4.extract.trunc.i = trunc nuw i64 %.sroa.04.4.extract.shift.i to i32 ; 2 uses
  %i.ah = sitofp i32 %.sroa.04.4.extract.trunc.i to float
  %.sroa.5.8.extract.trunc.i = trunc i64 %.sroa.2.0.copyload.i.i to i32 ; 2 uses
  %i.ai = sitofp i32 %.sroa.5.8.extract.trunc.i to float
  %.sroa.5.12.extract.shift.i = lshr i64 %.sroa.2.0.copyload.i.i, 32
  %.sroa.5.12.extract.trunc.i = trunc nuw i64 %.sroa.5.12.extract.shift.i to i32 ; 2 uses
  %i.aj = sitofp i32 %.sroa.5.12.extract.trunc.i to float
  %i.ak = fadd nnan float %i.ag, %i.ai
  %i.al = fadd nnan float %i.ah, %i.aj
  %i.am = fmul nnan float %i.ak, 5.000000e-01
  %i.an = fmul nnan float %i.al, 5.000000e-01
  %i.ao = load <2 x i64>, ptr %i.ae, align 8, !tbaa !79 ; 2 uses
  %i.ap = lshr <2 x i64> %i.ao, splat (i64 32)
  %i.aq = trunc nuw <2 x i64> %i.ap to <2 x i32>
  %i.ar = trunc <2 x i64> %i.ao to <2 x i32>
  %i.as = sitofp <2 x i32> %i.ar to <2 x float>
  %i.at = sitofp <2 x i32> %i.aq to <2 x float>
  %i.au = tail call reassoc nnan float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.as)
  %i.av = tail call reassoc nnan float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.at)
  %i.aw = fmul nnan float %i.au, 5.000000e-01
  %i.ax = fmul nnan float %i.av, 5.000000e-01
  %i.ay = fsub float %i.am, %i.aw
  %i.az = fsub float %i.an, %i.ax
  %i.ba = sub nsw i32 %.sroa.5.8.extract.trunc.i, %.sroa.04.0.extract.trunc.i
  %i.bb = sub nsw i32 %.sroa.5.12.extract.trunc.i, %.sroa.04.4.extract.trunc.i
  %i.bc = tail call noundef i32 @llvm.smax.i32(i32 %i.ba, i32 0)
  %i.bd = tail call noundef i32 @llvm.smax.i32(i32 %i.bb, i32 0)
  %i.be = uitofp nneg i32 %i.bc to float          ; 2 uses
  %i.bf = uitofp nneg i32 %i.bd to float          ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.bi = extractelement <2 x float> %i.s, i64 0
  %i.bj = fdiv float 2.000000e+00, %i.bi
  %5 = fadd float %i.ay, f0xBDE38E37
  %6 = fadd float %i.az, f0xBDE38E37
  %i.bk = insertelement <4 x float> poison, float %5, i64 0
  %i.bl = shufflevector <4 x float> %i.bk, <4 x float> poison, <4 x i32> zeroinitializer
  %7 = insertelement <4 x float> poison, float %6, i64 0
  %8 = shufflevector <4 x float> %7, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bm = load float, ptr %i.t, align 8, !tbaa !76, !noalias !713
  %i.bn = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bj, i64 0 ; 3 uses
  %i.bo = insertelement <2 x float> poison, float %i.bm, i64 0
  %i.bp = shufflevector <2 x float> %i.bo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bn, <2 x float> %i.bp, <2 x float> zeroinitializer) ; 2 uses
  %i.br = load float, ptr %i.u, align 4, !tbaa !76, !noalias !713 ; 2 uses
  %i.bs = insertelement <2 x float> poison, float %i.br, i64 0
  %i.bt = shufflevector <2 x float> %i.bs, <2 x float> poison, <2 x i32> zeroinitializer
  %9 = load float, ptr %i.v, align 8, !tbaa !76, !noalias !713 ; 2 uses
  %i.bu = insertelement <2 x float> poison, float %9, i64 0
  %i.bv = shufflevector <2 x float> %i.bu, <2 x float> poison, <2 x i32> zeroinitializer
  %10 = load float, ptr %i.w, align 4, !tbaa !76, !noalias !713
  %i.bw = load float, ptr %i.x, align 8, !tbaa !76, !noalias !713 ; 2 uses
  %i.bx = load float, ptr %i.y, align 4, !tbaa !76, !noalias !713 ; 2 uses
  %i.by = insertelement <2 x float> poison, float %10, i64 0
  %i.bz = shufflevector <2 x float> %i.by, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ca = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bn, <2 x float> %i.bz, <2 x float> zeroinitializer) ; 2 uses
  %i.cb = insertelement <2 x float> poison, float %i.bw, i64 0
  %i.cc = shufflevector <2 x float> %i.cb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cd = insertelement <2 x float> poison, float %i.bx, i64 0
  %i.ce = shufflevector <2 x float> %i.cd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cf = load float, ptr %i.z, align 8, !tbaa !76, !noalias !713
  %i.cg = insertelement <2 x float> poison, float %i.cf, i64 0
  %i.ch = shufflevector <2 x float> %i.cg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ci = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bn, <2 x float> %i.ch, <2 x float> zeroinitializer) ; 2 uses
  %i.cj = load float, ptr %i.aa, align 4, !tbaa !76, !noalias !713 ; 2 uses
  %i.ck = insertelement <2 x float> poison, float %i.cj, i64 0
  %i.cl = shufflevector <2 x float> %i.ck, <2 x float> poison, <2 x i32> zeroinitializer
  %11 = load float, ptr %i.ab, align 8, !tbaa !76, !noalias !713 ; 2 uses
  %i.cm = insertelement <2 x float> poison, float %11, i64 0
  %i.cn = shufflevector <2 x float> %i.cm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.co = shufflevector <2 x float> %i.s, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.cp = insertelement <2 x float> %i.co, float %i.ad, i64 1
  %i.cq = fdiv <2 x float> <float -2.000000e+00, float 1.000000e+00>, %i.cp ; 4 uses
  %i.cr = extractelement <2 x float> %i.cq, i64 1
  %i.cs = shufflevector <2 x float> <float 0.000000e+00, float poison>, <2 x float> %i.cq, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.ct = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cs, <2 x float> %i.bt, <2 x float> %i.bq)
  %i.cu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bv, <2 x float> zeroinitializer, <2 x float> %i.ct) ; 2 uses
  %i.cv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cs, <2 x float> %i.cc, <2 x float> %i.ca)
  %i.cw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ce, <2 x float> zeroinitializer, <2 x float> %i.cv) ; 3 uses
  %i.cx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cs, <2 x float> %i.cl, <2 x float> %i.ci)
  %i.cy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cn, <2 x float> zeroinitializer, <2 x float> %i.cx) ; 3 uses
  %i.cz = shufflevector <2 x float> %i.cu, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 0> ; 2 uses
  %i.da = shufflevector <2 x float> %i.cq, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.db = shufflevector <2 x float> %i.cw, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dc = shufflevector <2 x float> %i.cy, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.dd = extractelement <2 x float> %i.cw, i64 0 ; 2 uses
  %i.de = extractelement <2 x float> %i.cy, i64 0
  %i.df = insertelement <4 x float> %i.cz, float %i.br, i64 0
  %i.dg = insertelement <4 x float> %i.df, float %i.bw, i64 1
  %i.dh = insertelement <4 x float> %i.dg, float %i.cj, i64 2
  %i.di = shufflevector <2 x float> %i.bq, <2 x float> %i.ca, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.dj = insertelement <4 x float> %i.di, float 0.000000e+00, i64 3
  %i.dk = shufflevector <2 x float> %i.ci, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.dl = shufflevector <4 x float> %i.dj, <4 x float> %i.dk, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.dm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dh, <4 x float> zeroinitializer, <4 x float> %i.dl) ; 4 uses
  %i.dn = extractelement <4 x float> %i.dm, i64 0
  %i.do = fadd float %9, %i.dn                    ; 2 uses
  %i.dp = extractelement <4 x float> %i.dm, i64 1
  %i.dq = fadd float %i.bx, %i.dp                 ; 2 uses
  %i.dr = extractelement <4 x float> %i.dm, i64 2
  %i.ds = fadd float %11, %i.dr                   ; 2 uses
  %i.dt = insertelement <4 x float> %i.cz, float %i.do, i64 2
  %i.du = shufflevector <4 x float> %i.dt, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.dv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.du, <4 x float> %i.da, <4 x float> zeroinitializer)
  %i.dw = insertelement <4 x float> %i.db, float %i.dq, i64 2
  %i.dx = shufflevector <4 x float> %i.dw, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.dy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dx, <4 x float> zeroinitializer, <4 x float> %i.dv)
  %i.dz = insertelement <4 x float> %i.dc, float %i.ds, i64 2
  %i.ea = shufflevector <4 x float> %i.dz, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.eb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ea, <4 x float> zeroinitializer, <4 x float> %i.dy) ; 4 uses
  %i.ec = fadd <4 x float> %i.eb, zeroinitializer
  %i.ed = extractelement <4 x float> %i.dm, i64 3 ; 2 uses
  %i.ee = tail call float @llvm.fmuladd.f32(float %i.dd, float %i.cr, float %i.ed)
  %i.ef = tail call float @llvm.fmuladd.f32(float %i.dd, float 0.000000e+00, float %i.ed)
  %i.eg = fadd float %i.ef, %i.de                 ; 2 uses
  %i.eh = shufflevector <4 x float> %i.dc, <4 x float> %i.eb, <2 x i32> <i32 0, i32 4>
  %i.ei = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ee, i64 0
  %i.ej = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eh, <2 x float> zeroinitializer, <2 x float> %i.ei) ; 2 uses
  %i.ek = insertelement <4 x float> poison, float %i.eg, i64 0
  %i.el = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.ej)
  %i.em = tail call float @llvm.fmuladd.f32(float %i.eg, float 0.000000e+00, float %i.el) ; 3 uses
  %i.en = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eb, <4 x float> %i.bl, <4 x float> zeroinitializer)
  %i.eo = shufflevector <2 x float> %i.cu, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ep = insertelement <2 x float> %i.eo, float %i.do, i64 1
  %i.eq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ep, <2 x float> zeroinitializer, <2 x float> zeroinitializer) ; 2 uses
  %i.er = shufflevector <2 x float> %i.cw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.es = insertelement <2 x float> %i.er, float %i.dq, i64 1 ; 2 uses
  %i.et = shufflevector <2 x float> %i.cq, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.eu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.es, <2 x float> %i.et, <2 x float> %i.eq)
  %i.ev = shufflevector <2 x float> %i.cy, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ew = insertelement <2 x float> %i.ev, float %i.ds, i64 1 ; 2 uses
  %i.ex = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ew, <2 x float> zeroinitializer, <2 x float> %i.eu) ; 2 uses
  %i.ey = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.es, <2 x float> zeroinitializer, <2 x float> %i.eq)
  %i.ez = fadd <2 x float> %i.ey, %i.ew           ; 2 uses
  %i.fa = shufflevector <2 x float> %i.ej, <2 x float> %i.ex, <4 x i32> <i32 0, i32 2, i32 3, i32 0> ; 2 uses
  %i.fb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fa, <4 x float> zeroinitializer, <4 x float> %i.ec)
  %i.fc = shufflevector <2 x float> %i.ez, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fd = shufflevector <4 x float> %i.ek, <4 x float> %i.fc, <4 x i32> <i32 0, i32 4, i32 5, i32 0> ; 2 uses
  %i.fe = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fd, <4 x float> zeroinitializer, <4 x float> %i.fb) ; 3 uses
  %i.ff = shufflevector <4 x float> %i.eb, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.fg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ff, <2 x float> zeroinitializer, <2 x float> zeroinitializer)
  %i.fh = fadd <2 x float> %i.ex, %i.fg
  %i.fi = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ez, <2 x float> zeroinitializer, <2 x float> %i.fh) ; 3 uses
  %i.fj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fa, <4 x float> %8, <4 x float> %i.en)
  %i.fk = fadd <4 x float> %i.fd, %i.fj           ; 3 uses
  %i.fl = extractelement <4 x float> %i.fe, i64 0
  %i.fm = tail call float @llvm.fmuladd.f32(float %i.fl, float %i.be, float 0.000000e+00)
  %i.fn = tail call float @llvm.fmuladd.f32(float %i.em, float 0.000000e+00, float %i.fm)
  %i.fo = extractelement <4 x float> %i.fk, i64 0 ; 2 uses
  %i.fp = tail call float @llvm.fmuladd.f32(float %i.fo, float 0.000000e+00, float %i.fn) ; 3 uses
  %i.fq = shufflevector <4 x float> %i.fe, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.fr = insertelement <2 x float> poison, float %i.be, i64 0
  %i.fs = shufflevector <2 x float> %i.fr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ft = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fq, <2 x float> %i.fs, <2 x float> zeroinitializer)
  %i.fu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fi, <2 x float> zeroinitializer, <2 x float> %i.ft)
  %i.fv = shufflevector <4 x float> %i.fk, <4 x float> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.fw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fv, <2 x float> zeroinitializer, <2 x float> %i.fu) ; 4 uses
  %i.fx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fe, <4 x float> zeroinitializer, <4 x float> zeroinitializer) ; 3 uses
  %i.fy = extractelement <4 x float> %i.fx, i64 0
  %i.fz = tail call float @llvm.fmuladd.f32(float %i.em, float %i.bf, float %i.fy)
  %i.ga = insertelement <2 x float> poison, float %i.bf, i64 0
  %i.gb = shufflevector <2 x float> %i.ga, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gc = shufflevector <4 x float> %i.fx, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.gd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fi, <2 x float> %i.gb, <2 x float> %i.gc)
  %i.ge = tail call float @llvm.fmuladd.f32(float %i.fo, float 0.000000e+00, float %i.fz) ; 2 uses
  %i.gf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fv, <2 x float> zeroinitializer, <2 x float> %i.gd) ; 3 uses
  %i.gg = insertelement <4 x float> poison, float %i.em, i64 0
  %i.gh = shufflevector <2 x float> %i.fi, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.gi = shufflevector <4 x float> %i.gg, <4 x float> %i.gh, <4 x i32> <i32 0, i32 4, i32 5, i32 0>
  %i.gj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gi, <4 x float> zeroinitializer, <4 x float> %i.fx)
  %i.gk = fadd <4 x float> %i.gj, %i.fk           ; 4 uses
  %i.gl = tail call float @llvm.fmuladd.f32(float %i.fp, float 0.000000e+00, float 0.000000e+00)
  %i.gm = insertelement <4 x float> poison, float %i.fp, i64 0
  %i.gn = shufflevector <2 x float> %i.fw, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.go = shufflevector <4 x float> %i.gm, <4 x float> %i.gn, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.gp = insertelement <4 x float> %i.go, float %i.gl, i64 3
  %i.gq = fadd <4 x float> %i.gp, <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -0.000000e+00>
  %i.gr = extractelement <2 x float> %i.fw, i64 0
  %i.gs = tail call float @llvm.fmuladd.f32(float %i.gr, float 0.000000e+00, float 0.000000e+00)
  %i.gt = extractelement <2 x float> %i.fw, i64 1
  %i.gu = tail call float @llvm.fmuladd.f32(float %i.gt, float 0.000000e+00, float 0.000000e+00)
  %i.gv = insertelement <4 x float> poison, float %i.ge, i64 0
  %i.gw = shufflevector <2 x float> %i.gf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.gx = shufflevector <4 x float> %i.gv, <4 x float> %i.gw, <4 x i32> <i32 0, i32 4, i32 5, i32 0>
  %i.gy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gx, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.gq)
  %i.gz = extractelement <2 x float> %i.gf, i64 0
  %i.ha = fadd float %i.gz, %i.gs
  %i.hb = extractelement <2 x float> %i.gf, i64 1
  %i.hc = fadd float %i.hb, %i.gu
  %i.hd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gk, <4 x float> zeroinitializer, <4 x float> %i.gy)
  store <4 x float> %i.hd, ptr %0, align 4, !tbaa !76, !alias.scope !714
  %i.he = extractelement <4 x float> %i.gk, i64 1
  %i.hf = tail call float @llvm.fmuladd.f32(float %i.he, float 0.000000e+00, float %i.ha)
  store float %i.hf, ptr %i.bg, align 4, !tbaa !76, !alias.scope !714
  %i.hg = tail call float @llvm.fmuladd.f32(float %i.fp, float -5.000000e-01, float 0.000000e+00)
  %i.hh = shufflevector <4 x float> %i.gk, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.hi = insertelement <4 x float> %i.hh, float %i.ge, i64 1
  %i.hj = shufflevector <4 x float> %i.hi, <4 x float> %i.gw, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.hk = insertelement <4 x float> poison, float %i.hc, i64 0
  %i.hl = insertelement <4 x float> %i.hk, float %i.hg, i64 1
  %i.hm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fw, <2 x float> splat (float -5.000000e-01), <2 x float> zeroinitializer)
  %i.hn = shufflevector <2 x float> %i.hm, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ho = shufflevector <4 x float> %i.hl, <4 x float> %i.hn, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.hp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hj, <4 x float> <float 0.000000e+00, float -5.000000e-01, float -5.000000e-01, float -5.000000e-01>, <4 x float> %i.ho)
  %i.hq = shufflevector <4 x float> %i.gk, <4 x float> <float -0.000000e+00, float poison, float poison, float poison>, <4 x i32> <i32 4, i32 0, i32 1, i32 2>
  %i.hr = fadd <4 x float> %i.hq, %i.hp
  store <4 x float> %i.hr, ptr %i.bh, align 4, !tbaa !76, !alias.scope !714
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.b
  ret void

bb.k:                                             ; preds = %bb.e
  unreachable
}

declare float @glfwGetWindowSdrWhiteLevel(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3tev11ImageCanvas21drawPixelValuesAsTextEP10NVGcontext(ptr noundef nonnull align 8 dereferenceable(504) %0, ptr noundef %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %3 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %4 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %5 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %6 = alloca %"class.fmt::v12::basic_memory_buffer", align 8 ; 12 uses
  %7 = alloca %"class.fmt::v12::basic_memory_buffer", align 8 ; 12 uses
  %8 = alloca %"class.fmt::v12::basic_memory_buffer", align 8 ; 12 uses
  %9 = alloca %"class.fmt::v12::basic_memory_buffer", align 8 ; 12 uses
  %10 = alloca %"struct.fmt::v12::detail::format_arg_store.544", align 16 ; 4 uses
  %11 = alloca %"struct.fmt::v12::detail::format_arg_store.544", align 16 ; 4 uses
  %12 = alloca %"struct.fmt::v12::detail::format_arg_store.590", align 16 ; 4 uses
  %13 = alloca %"struct.fmt::v12::detail::format_arg_store.589", align 16 ; 7 uses
  %14 = alloca %"struct.fmt::v12::detail::format_arg_store.589", align 16 ; 7 uses
  %15 = alloca %"class.std::__1::basic_string", align 8 ; 9 uses
  %16 = alloca %"struct.nanogui::Matrix", align 8 ; 13 uses
  %17 = alloca %"class.std::__1::vector.179", align 8 ; 12 uses
  %18 = alloca %"class.std::__1::vector.188", align 8 ; 17 uses
  %19 = alloca %"class.std::__1::vector.195", align 8 ; 15 uses
  %20 = alloca %"class.std::__1::basic_string", align 8 ; 13 uses
  %21 = alloca %"class.std::__1::basic_string", align 8 ; 18 uses
  %22 = alloca %"class.std::__1::basic_string", align 8 ; 9 uses
  %23 = alloca %"class.std::__1::basic_string", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !207  ; 2 uses
  %.not328 = icmp eq ptr %i.b, null
  br i1 %.not328, label %_ZNKSt3__115source_location13function_nameB8ne180100Ev.exit, label %bb.f, !prof !214

_ZNKSt3__115source_location13function_nameB8ne180100Ev.exit: ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #47 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #47
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #47, !noalias !758
  store ptr @.str.4, ptr %13, align 16, !tbaa !79, !noalias !758
  %i.d = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i32 119, ptr %i.d, align 16, !tbaa !79, !noalias !758
  %i.e = getelementptr inbounds nuw i8, ptr %13, i64 32
  store i32 78, ptr %i.e, align 16, !tbaa !79, !noalias !758
  %i.f = getelementptr inbounds nuw i8, ptr %13, i64 48
  store ptr @.str.5, ptr %i.f, align 16, !tbaa !79, !noalias !758
  invoke void @_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::basic_string") align 8 %15, ptr nonnull @.str.6, i64 68, i64 49708, ptr nonnull %13)
          to label %bb.b unwind label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread

bb.b:                                             ; preds = %_ZNKSt3__115source_location13function_nameB8ne180100Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #47, !noalias !758
  invoke void @_ZNSt13runtime_errorC1ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %15)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #50
          to label %bb.di unwind label %bb.d

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread: ; preds = %_ZNKSt3__115source_location13function_nameB8ne180100Ev.exit
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #47
  br label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %.081 = phi i1 [ false, %bb.c ], [ true, %bb.b ] ; 2 uses
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.i = load i8, ptr %15, align 8
  %i.j = trunc i8 %i.i to i1
  br i1 %i.j, label %.split, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

.split:                                           ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !79
  %i.m = load i64, ptr %15, align 8
  %i.n = and i64 %i.m, -2
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.n) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #47
  br i1 %.081, label %bb.e, label %common.resume

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #47
  br i1 %.081, label %bb.e, label %common.resume

bb.e:                                             ; preds = %.split, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit
  %.pn320 = phi { ptr, i32 } [ %i.g, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread ], [ %i.h, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit ], [ %i.h, %.split ]
  call void @__cxa_free_exception(ptr %i.c) #47
  br label %common.resume

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #47
  call void @_ZN3tev11ImageCanvas16textureToNanoguiEPKNS_5ImageE(ptr dead_on_unwind nonnull writable sret(%"struct.nanogui::Matrix") align 4 %16, ptr noundef nonnull align 8 dereferenceable(504) %0, ptr noundef nonnull %i.b)
  %i.o = getelementptr inbounds nuw i8, ptr %16, i64 12 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %16, i64 24 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %16, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %16, i64 20
  %i.t = getelementptr inbounds nuw i8, ptr %16, i64 28 ; 2 uses
  %i.u = load float, ptr %i.o, align 4, !tbaa !76, !noalias !759 ; 4 uses
  %i.v = load float, ptr %i.q, align 8, !tbaa !76, !noalias !759 ; 2 uses
  %i.w = fneg float %i.v                          ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %16, i64 4 ; 2 uses
  %i.y = load <2 x float>, ptr %i.p, align 8, !tbaa !76, !noalias !759 ; 4 uses
  %i.z = load float, ptr %i.s, align 4, !tbaa !76, !noalias !759 ; 3 uses
  %i.aa = extractelement <2 x float> %i.y, i64 0  ; 2 uses
  %i.ab = fmul float %i.z, %i.w
  %i.ac = fmul float %i.aa, %i.w
  %i.ad = load <2 x float>, ptr %16, align 8, !tbaa !76, !noalias !759 ; 4 uses
  %i.ae = extractelement <2 x float> %i.ad, i64 0
  %i.af = load <2 x float>, ptr %i.t, align 4, !tbaa !76, !noalias !759 ; 3 uses
  %i.ag = load float, ptr %i.r, align 8, !tbaa !76, !noalias !759 ; 2 uses
  %i.ah = extractelement <2 x float> %i.af, i64 0 ; 2 uses
  %i.ai = fneg float %i.ah                        ; 2 uses
  %i.aj = fmul float %i.z, %i.ai
  %i.ak = tail call float @llvm.fmuladd.f32(float %i.aa, float %i.ag, float %i.aj) ; 2 uses
  %i.al = tail call float @llvm.fmuladd.f32(float %i.u, float %i.ag, float %i.ab)
  %i.am = tail call float @llvm.fmuladd.f32(float %i.u, float %i.ah, float %i.ac) ; 2 uses
  %i.an = fneg float %i.al                        ; 2 uses
  %i.ao = load <2 x float>, ptr %i.x, align 4, !tbaa !76, !noalias !759 ; 5 uses
  %i.ap = extractelement <2 x float> %i.ao, i64 0
  %i.aq = fmul float %i.ap, %i.an
  %i.ar = tail call float @llvm.fmuladd.f32(float %i.ae, float %i.ak, float %i.aq)
  %i.as = extractelement <2 x float> %i.ao, i64 1
  %i.at = tail call float @llvm.fmuladd.f32(float %i.as, float %i.am, float %i.ar) ; 2 uses
  %i.au = fcmp oeq float %i.at, 0.000000e+00
  br i1 %i.au, label %_ZN7nanogui7inverseERKNS_6MatrixIfLm3EEE.exit, label %bb.g

end_hunk_0
begin_hunk_1_@_ZN3tev11ImageCanvas21drawPixelValuesAsTextEP10NVGcontext:bb.a
  %i.xg = ptrtoint ptr %.pre358 to i64
  %i.xh = sub i64 %i.xf, %i.xg
  call void @_ZdlPvm(ptr noundef nonnull %.pre358, i64 noundef %i.xh) #49
  br label %_ZNSt3__16vectorIfNS_9allocatorIfEEED2B8ne180100Ev.exit185

_ZNSt3__16vectorIfNS_9allocatorIfEEED2B8ne180100Ev.exit185: ; preds = %bb.an, %.preheader330.lr.ph, %._crit_edge348.split, %bb.cz
  %i.xi = phi ptr [ %i.rh, %bb.cz ], [ %i.rh, %._crit_edge348.split ], [ %.pre, %.preheader330.lr.ph ], [ %.pre, %bb.an ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #47
  %.not.i.i186 = icmp eq ptr %i.xi, null
  br i1 %.not.i.i186, label %_ZNSt3__16vectorIN7nanogui5ColorENS_9allocatorIS2_EEED2B8ne180100Ev.exit, label %bb.da

bb.da:                                            ; preds = %_ZNSt3__16vectorIfNS_9allocatorIfEEED2B8ne180100Ev.exit185
  store ptr %i.xi, ptr %i.ie, align 8, !tbaa !226
  %i.xj = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.xk = load ptr, ptr %i.xj, align 8, !tbaa !225
  %i.xl = ptrtoint ptr %i.xk to i64
  %i.xm = ptrtoint ptr %i.xi to i64
  %i.xn = sub i64 %i.xl, %i.xm
  call void @_ZdlPvm(ptr noundef nonnull %i.xi, i64 noundef %i.xn) #49
  br label %_ZNSt3__16vectorIN7nanogui5ColorENS_9allocatorIS2_EEED2B8ne180100Ev.exit

_ZNSt3__16vectorIN7nanogui5ColorENS_9allocatorIS2_EEED2B8ne180100Ev.exit: ; preds = %_ZNSt3__16vectorIfNS_9allocatorIfEEED2B8ne180100Ev.exit185, %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #47
  %i.xo = load ptr, ptr %17, align 8, !tbaa !764  ; 3 uses
  %.not.i.i187 = icmp eq ptr %i.xo, null
  br i1 %.not.i.i187, label %.sink.split, label %bb.db

bb.db:                                            ; preds = %_ZNSt3__16vectorIN7nanogui5ColorENS_9allocatorIS2_EEED2B8ne180100Ev.exit
  %i.xp = load ptr, ptr %i.fq, align 8, !tbaa !765
  %i.xq = ptrtoint ptr %i.xp to i64
  %i.xr = ptrtoint ptr %i.xo to i64
  %i.xs = sub i64 %i.xq, %i.xr
  call void @_ZdlPvm(ptr noundef nonnull %i.xo, i64 noundef %i.xs) #49
  br label %.sink.split

bb.dc:                                            ; preds = %.loopexit331, %.loopexit.split-lp, %bb.az, %bb.bb, %_ZNSt3__16vectorIfNS_9allocatorIfEEED2B8ne180100Ev.exit, %bb.ba
  %.pn107 = phi { ptr, i32 } [ %.pn100.pn.pn, %_ZNSt3__16vectorIfNS_9allocatorIfEEED2B8ne180100Ev.exit ], [ %i.pb, %bb.bb ], [ %i.oz, %bb.az ], [ %i.pa, %bb.ba ], [ %lpad.loopexit, %.loopexit331 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.xt = load ptr, ptr %18, align 8, !tbaa !224  ; 4 uses
  %.not.i.i188 = icmp eq ptr %i.xt, null
  br i1 %.not.i.i188, label %_ZNSt3__16vectorIN7nanogui5ColorENS_9allocatorIS2_EEED2B8ne180100Ev.exit189, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.xu = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr %i.xt, ptr %i.xu, align 8, !tbaa !226
  %i.xv = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.xw = load ptr, ptr %i.xv, align 8, !tbaa !225
  %i.xx = ptrtoint ptr %i.xw to i64
  %i.xy = ptrtoint ptr %i.xt to i64
  %i.xz = sub i64 %i.xx, %i.xy
  call void @_ZdlPvm(ptr noundef nonnull %i.xt, i64 noundef %i.xz) #49
  br label %_ZNSt3__16vectorIN7nanogui5ColorENS_9allocatorIS2_EEED2B8ne180100Ev.exit189

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
  %i.bn = extractelement <2 x float> %i.bm, i64 0
  %5 = load float, ptr %i.x, align 8, !tbaa !76, !noalias !794 ; 2 uses
  %.scalar = fadd float %5, 0.000000e+00
  %i.bo = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison>, float %.scalar, i64 3
  %i.bp = load float, ptr %i.y, align 4, !tbaa !76, !noalias !794 ; 3 uses
  %6 = shufflevector <2 x float> %i.bm, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.bq = shufflevector <4 x float> %6, <4 x float> <float poison, float poison, float -0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 6, i32 7>
  %7 = load float, ptr %i.z, align 8, !tbaa !76, !noalias !794 ; 3 uses
  %i.br = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison>, float %7, i64 3
  %i.bs = fdiv float 1.000000e+00, %i.ab          ; 3 uses
  %i.bt = load <2 x i32>, ptr %i.q, align 8, !tbaa !204
  %i.bu = sitofp <2 x i32> %i.bt to <2 x float>
  %.scalar95 = fadd float %i.s, 0.000000e+00
  %8 = insertelement <4 x float> <float 0.000000e+00, float poison, float 0.000000e+00, float 0.000000e+00>, float %.scalar95, i64 1
  %9 = shufflevector <2 x float> %i.bm, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>
  %i.bv = insertelement <4 x float> %9, float %i.s, i64 0
  %i.bw = insertelement <4 x float> %i.bv, float %5, i64 2
  %10 = fmul nnan <2 x float> %i.bu, splat (float 5.000000e-01) ; 3 uses
  %i.bx = load float, ptr %i.w, align 4, !tbaa !76, !noalias !794 ; 2 uses
  %i.by = shufflevector <2 x float> %10, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 1> ; 2 uses
  %i.bz = shufflevector <4 x float> %i.by, <4 x float> <float poison, float poison, float 0.000000e+00, float -0.000000e+00>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ca = load <2 x float>, ptr %i.u, align 4, !tbaa !76, !noalias !794
  %i.cb = load float, ptr %i.v, align 8, !tbaa !76, !noalias !794
  %i.cc = shufflevector <2 x float> %i.ca, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 3 uses
  %i.cd = shufflevector <4 x float> %i.bw, <4 x float> %i.cc, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ce = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cd, <4 x float> zeroinitializer, <4 x float> %8) ; 5 uses
  %i.cf = extractelement <4 x float> %i.ce, i64 0
  %i.cg = tail call float @llvm.fmuladd.f32(float %i.bn, float 0.000000e+00, float %i.cf)
  %i.ch = shufflevector <4 x float> %i.ce, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.ci = insertelement <2 x float> %i.ch, float %i.cg, i64 1
  %i.cj = fadd <2 x float> %i.bm, %i.ci           ; 2 uses
  %11 = shufflevector <4 x float> %i.ce, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.ck = shufflevector <2 x float> %i.cj, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cl = shufflevector <4 x float> %11, <4 x float> %i.ck, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.cm = insertelement <4 x float> %i.cl, float %i.bp, i64 3
  %i.cn = extractelement <4 x float> %i.ce, i64 3
  %i.co = insertelement <4 x float> <float -0.000000e+00, float 0.000000e+00, float -0.000000e+00, float poison>, float %i.bp, i64 3
  %12 = shufflevector <4 x float> %i.ce, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 3, i32 2>
  %i.cp = shufflevector <4 x float> %12, <4 x float> %i.cc, <4 x i32> <i32 0, i32 4, i32 2, i32 3>
  %i.cq = fadd <4 x float> %i.co, %i.cp
  %i.cr = shufflevector <4 x float> %i.by, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison>, <4 x i32> <i32 4, i32 5, i32 6, i32 1>
  %i.cs = insertelement <4 x float> %i.cc, float %i.bp, i64 0
  %i.ct = insertelement <4 x float> %i.cs, float %7, i64 2
  %i.cu = shufflevector <4 x float> %i.ct, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 2>
  %i.cv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cr, <4 x float> %i.cu, <4 x float> %i.cq) ; 6 uses
  %i.cw = extractelement <4 x float> %i.cv, i64 0
  %i.cx = fadd float %7, %i.cw                    ; 3 uses
  %i.cy = fadd float %i.cb, %i.cn
  %i.cz = extractelement <4 x float> %i.cv, i64 2
  %i.da = fadd float %i.bx, %i.cz                 ; 3 uses
  %i.db = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bz, <4 x float> %i.bq, <4 x float> %i.cm) ; 2 uses
  %i.dc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.db, <4 x float> zeroinitializer, <4 x float> %i.bo) ; 3 uses
  %i.dd = extractelement <4 x float> %i.dc, i64 0
  %i.de = insertelement <2 x float> poison, float %i.bx, i64 0
  %i.df = shufflevector <2 x float> %i.de, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dg = shufflevector <4 x float> %i.cv, <4 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.dh = insertelement <2 x float> %i.dg, float %i.cy, i64 1
  %i.di = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %10, <2 x float> %i.df, <2 x float> %i.dh) ; 4 uses
  %i.dj = shufflevector <4 x float> %i.db, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.dk = insertelement <2 x float> poison, float %i.bs, i64 0
  %i.dl = shufflevector <2 x float> %i.dk, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dj, <2 x float> %i.dl, <2 x float> zeroinitializer)
  %i.dn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.di, <2 x float> zeroinitializer, <2 x float> %i.dm)
  %i.do = shufflevector <2 x float> %i.di, <2 x float> %10, <4 x i32> <i32 0, i32 1, i32 poison, i32 2>
  %i.dp = insertelement <4 x float> %i.do, float %i.da, i64 2
  %i.dq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dp, <4 x float> %i.br, <4 x float> %i.dc) ; 4 uses
  %i.dr = extractelement <4 x float> %i.dq, i64 3
  %i.ds = shufflevector <4 x float> %i.dq, <4 x float> %i.cv, <2 x i32> <i32 3, i32 7>
  %i.dt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ds, <2 x float> zeroinitializer, <2 x float> %i.dn) ; 5 uses
  %i.du = extractelement <2 x float> %i.di, i64 0
  %i.dv = tail call float @llvm.fmuladd.f32(float %i.du, float %i.bs, float %i.dd)
  %i.dw = shufflevector <2 x float> %i.di, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.dx = insertelement <2 x float> %i.dw, float %i.da, i64 1
  %i.dy = shufflevector <4 x float> %i.dc, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.dz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dx, <2 x float> %i.dl, <2 x float> %i.dy)
  %i.ea = shufflevector <4 x float> %i.cv, <4 x float> poison, <2 x i32> <i32 3, i32 poison>
  %i.eb = insertelement <2 x float> %i.ea, float %i.cx, i64 1
  %i.ec = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eb, <2 x float> zeroinitializer, <2 x float> %i.dz) ; 3 uses
  %i.ed = shufflevector <4 x float> %i.dq, <4 x float> %i.cv, <4 x i32> <i32 3, i32 7, i32 poison, i32 0>
  %i.ee = insertelement <4 x float> %i.ed, float %i.cx, i64 2
  %i.ef = fadd <4 x float> %i.dq, %i.ee           ; 4 uses
  %i.eg = extractelement <2 x float> %i.cj, i64 1
  %i.eh = tail call float @llvm.fmuladd.f32(float %i.eg, float %i.bs, float 0.000000e+00)
  %i.ei = tail call float @llvm.fmuladd.f32(float %i.da, float 0.000000e+00, float %i.eh)
  %i.ej = insertelement <2 x float> poison, float %i.cx, i64 0
  %i.ek = shufflevector <2 x float> %i.ej, <2 x float> %i.dt, <2 x i32> <i32 0, i32 2>
  %i.el = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ei, i64 0
  %i.em = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ek, <2 x float> zeroinitializer, <2 x float> %i.el) ; 3 uses
  %i.en = shufflevector <2 x float> %i.dt, <2 x float> %i.em, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.eo = fadd <4 x float> %i.en, <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -0.000000e+00>
  %i.ep = extractelement <2 x float> %i.dt, i64 1
  %i.eq = tail call float @llvm.fmuladd.f32(float %i.ep, float 0.000000e+00, float 0.000000e+00)
  %i.er = extractelement <2 x float> %i.em, i64 0
  %i.es = shufflevector <2 x float> %i.ec, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.et = extractelement <2 x float> %i.ec, i64 0
  %i.eu = fadd float %i.et, %i.eq
  %i.ev = extractelement <2 x float> %i.ec, i64 1
  %i.ew = extractelement <4 x float> %i.ef, i64 1
  %i.ex = tail call float @llvm.fmuladd.f32(float %i.ew, float 0.000000e+00, float %i.eu)
  store float %i.ex, ptr %i.bk, align 4, !tbaa !76, !alias.scope !795
  %i.ey = extractelement <2 x float> %i.dt, i64 0
  %i.ez = fsub float %i.bi, %i.ak
  %i.fa = fsub float %i.bj, %i.am
  %i.fb = fadd float %i.ez, f0xBDE38E37           ; 2 uses
  %i.fc = fadd float %i.fa, f0xBDE38E37
  %i.fd = tail call float @llvm.fmuladd.f32(float %i.dr, float 0.000000e+00, float %i.dv) ; 2 uses
  %i.fe = tail call float @llvm.fmuladd.f32(float %i.er, float 0.000000e+00, float 0.000000e+00)
  %i.ff = insertelement <4 x float> poison, float %i.fd, i64 0
  %i.fg = shufflevector <4 x float> %i.ff, <4 x float> %i.es, <4 x i32> <i32 0, i32 4, i32 5, i32 0>
  %i.fh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fg, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.eo)
  %i.fi = fadd float %i.ev, %i.fe
  %i.fj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ef, <4 x float> zeroinitializer, <4 x float> %i.fh)
  store <4 x float> %i.fj, ptr %0, align 4, !tbaa !76, !alias.scope !795
  %i.fk = tail call float @llvm.fmuladd.f32(float %i.ey, float %i.fb, float 0.000000e+00)
  %i.fl = shufflevector <2 x float> %i.dt, <2 x float> %i.em, <2 x i32> <i32 1, i32 2>
  %i.fm = insertelement <2 x float> poison, float %i.fb, i64 0
  %i.fn = shufflevector <2 x float> %i.fm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fl, <2 x float> %i.fn, <2 x float> zeroinitializer)
  %i.fp = shufflevector <4 x float> %i.ef, <4 x float> %i.es, <4 x i32> <i32 2, i32 poison, i32 4, i32 5>
  %i.fq = insertelement <4 x float> %i.fp, float %i.fd, i64 1
  %i.fr = insertelement <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, float %i.fc, i64 1
  %i.fs = shufflevector <4 x float> %i.fr, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.ft = insertelement <4 x float> poison, float %i.fi, i64 0
  %i.fu = insertelement <4 x float> %i.ft, float %i.fk, i64 1
  %i.fv = shufflevector <2 x float> %i.fo, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fw = shufflevector <4 x float> %i.fu, <4 x float> %i.fv, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.fx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fq, <4 x float> %i.fs, <4 x float> %i.fw)
  %i.fy = shufflevector <4 x float> %i.ef, <4 x float> <float -0.000000e+00, float poison, float poison, float poison>, <4 x i32> <i32 4, i32 0, i32 1, i32 2>
  %i.fz = fadd <4 x float> %i.fy, %i.fx
  store <4 x float> %i.fz, ptr %i.bl, align 4, !tbaa !76, !alias.scope !795
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
end_hunk_1
