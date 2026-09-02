Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/ImageCanvas?download=true
inline.NumInlined: 10055
inline.NumDeleted: 3878
loop-unroll.NumCompletelyUnrolled: 75
loop-unroll.NumRuntimeUnrolled: 36
loop-unroll.NumUnrolled: 113
begin_hunk_0_@_ZN3tev11ImageCanvas13draw_contentsEv:bb.a
  %i.fd = shufflevector <2 x float> %i.ec, <2 x float> %i.ds, <4 x i32> <i32 1, i32 1, i32 0, i32 3>
  %i.fe = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ev, <4 x float> %i.fd, <4 x float> %i.fc) ; 4 uses
  %i.ff = fneg float %i.du
  %i.fg = shufflevector <2 x float> %i.ek, <2 x float> %i.em, <2 x i32> <i32 1, i32 3>
  %i.fh = insertelement <2 x float> poison, float %i.ff, i64 0
  %i.fi = shufflevector <2 x float> %i.fh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fj = fmul <2 x float> %i.fg, %i.fi
  %i.fk = shufflevector <2 x float> %i.ek, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fk, <2 x float> %i.ds, <2 x float> %i.fj) ; 2 uses
  %i.fm = fneg <4 x float> %i.fe
  %i.fn = insertelement <4 x float> %i.fm, float %i.eh, i64 0
  %i.fo = shufflevector <4 x float> %i.fn, <4 x float> %i.fe, <4 x i32> <i32 0, i32 1, i32 7, i32 poison>
  %i.fp = insertelement <4 x float> %i.fo, float %i.el, i64 3
  %i.fq = insertelement <4 x float> poison, float %i.ew, i64 0
  %i.fr = shufflevector <4 x float> %i.fq, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fs = fmul <4 x float> %i.fp, %i.fr
  store <4 x float> %i.fs, ptr %4, align 16, !tbaa !76, !alias.scope !699
  %i.ft = fneg <2 x float> %i.fl
  %i.fu = shufflevector <2 x float> %i.ft, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.fv = shufflevector <4 x float> %i.fe, <4 x float> %i.fu, <4 x i32> <i32 0, i32 5, i32 poison, i32 poison>
  %i.fw = insertelement <4 x float> %i.fv, float %i.ej, i64 2
  %i.fx = fneg <4 x float> %i.fe
  %i.fy = shufflevector <4 x float> %i.fw, <4 x float> %i.fx, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.fz = fmul <4 x float> %i.fy, %i.fr
  %i.ga = extractelement <2 x float> %i.fl, i64 0
  %i.gb = fmul float %i.ga, %i.ew
  br label %_ZN7nanogui7inverseERKNS_6MatrixIfLm3EEE.exit43

_ZN7nanogui7inverseERKNS_6MatrixIfLm3EEE.exit43:  ; preds = %bb.j, %bb.k
  %.sink.i42 = phi float [ 0.000000e+00, %bb.j ], [ %i.gb, %bb.k ]
  %i.gc = phi <4 x float> [ zeroinitializer, %bb.j ], [ %i.fz, %bb.k ]
  %i.gd = getelementptr inbounds nuw i8, ptr %4, i64 16
  store <4 x float> %i.gc, ptr %i.gd, align 16, !tbaa !76, !alias.scope !699
  %i.ge = getelementptr inbounds nuw i8, ptr %4, i64 32
  store float %.sink.i42, ptr %i.ge, align 16, !tbaa !76, !alias.scope !699
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.gg = load i8, ptr %i.gf, align 8             ; 2 uses
  %i.gh = trunc i8 %i.gg to i1                    ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.gj = load ptr, ptr %i.gi, align 8
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 281
  %i.gl = select i1 %i.gh, ptr %i.gj, ptr %i.gk
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.gn = load i64, ptr %i.gm, align 8
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
  %i.hw = load float, ptr %i.hv, align 8, !tbaa !700
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.hy = load float, ptr %i.hx, align 4, !tbaa !701
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
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %0, align 4, !tbaa !76, !alias.scope !710
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.a, align 4, !tbaa !76, !alias.scope !710
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float 1.000000e+00, ptr %i.b, align 4, !tbaa !76, !alias.scope !710
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !207  ; 3 uses
  %.not118 = icmp eq ptr %i.d, null
  br i1 %.not118, label %_ZNKSt3__115source_location13function_nameB8ne180100Ev.exit, label %bb.i, !prof !214

_ZNKSt3__115source_location13function_nameB8ne180100Ev.exit: ; preds = %bb.c
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #47 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #47
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #47, !noalias !711
  store ptr @.str.4, ptr %3, align 16, !tbaa !79, !noalias !711
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 1104, ptr %i.f, align 16, !tbaa !79, !noalias !711
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 132, ptr %i.g, align 16, !tbaa !79, !noalias !711
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr @.str.30, ptr %i.h, align 16, !tbaa !79, !noalias !711
  invoke void @_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::basic_string") align 8 %4, ptr nonnull @.str.32, i64 122, i64 49708, ptr nonnull %3)
          to label %bb.d unwind label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread

bb.d:                                             ; preds = %_ZNKSt3__115source_location13function_nameB8ne180100Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #47, !noalias !711
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
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 316
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.x = load float, ptr %i.w, align 8, !tbaa !208
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 376 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 384
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 360
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 368
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ac = extractelement <2 x float> %i.s, i64 0
  %i.ad = fdiv float 2.000000e+00, %i.ac
  %i.ae = load <2 x i64>, ptr %i.y, align 8, !tbaa !79
  %.sroa.2.0.copyload.i122 = load <2 x i32>, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !79
  %.sroa.0.0.copyload.i = load i64, ptr %i.y, align 8, !tbaa !79
  %.sroa.2.0.extract.shift.i = lshr i64 %.sroa.0.0.copyload.i, 32
  %i.af = trunc <2 x i64> %i.ae to <2 x i32>
  %i.ag = trunc nuw i64 %.sroa.2.0.extract.shift.i to i32
  %i.ah = insertelement <2 x i32> %i.af, i32 %i.ag, i64 1
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8 ; 3 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.z, align 8 ; 3 uses
  %.sroa.04.4.extract.shift.i = lshr i64 %.sroa.0.0.copyload.i.i, 32
  %.sroa.04.4.extract.trunc.i = trunc nuw i64 %.sroa.04.4.extract.shift.i to i32
  %.sroa.04.0.extract.trunc.i = trunc i64 %.sroa.0.0.copyload.i.i to i32
  %i.ai = bitcast i64 %.sroa.0.0.copyload.i.i to <2 x i32>
  %i.aj = sitofp <2 x i32> %i.ai to <2 x float>
  %.sroa.5.12.extract.shift.i = lshr i64 %.sroa.2.0.copyload.i.i, 32
  %.sroa.5.12.extract.trunc.i = trunc nuw i64 %.sroa.5.12.extract.shift.i to i32
  %.sroa.5.8.extract.trunc.i = trunc i64 %.sroa.2.0.copyload.i.i to i32
  %i.ak = bitcast i64 %.sroa.2.0.copyload.i.i to <2 x i32>
  %i.al = sitofp <2 x i32> %i.ak to <2 x float>
  %i.am = fadd nnan <2 x float> %i.aj, %i.al
  %i.an = fmul nnan <2 x float> %i.am, splat (float 5.000000e-01)
  %i.ao = sitofp <2 x i32> %i.ah to <2 x float>
  %i.ap = sitofp <2 x i32> %.sroa.2.0.copyload.i122 to <2 x float>
  %i.aq = fadd nnan <2 x float> %i.ao, %i.ap
  %i.ar = fmul nnan <2 x float> %i.aq, splat (float 5.000000e-01)
  %i.as = fsub <2 x float> %i.an, %i.ar
  %i.at = sub nsw i32 %.sroa.5.8.extract.trunc.i, %.sroa.04.0.extract.trunc.i
  %i.au = sub nsw i32 %.sroa.5.12.extract.trunc.i, %.sroa.04.4.extract.trunc.i
  %i.av = tail call noundef i32 @llvm.smax.i32(i32 %i.at, i32 0)
  %i.aw = tail call noundef i32 @llvm.smax.i32(i32 %i.au, i32 0)
  %i.ax = uitofp nneg i32 %i.av to float          ; 2 uses
  %i.ay = uitofp nneg i32 %i.aw to float          ; 2 uses
  %i.az = fadd <2 x float> %i.as, splat (float f0xBDE38E37) ; 2 uses
  %i.ba = shufflevector <2 x float> %i.az, <2 x float> poison, <4 x i32> zeroinitializer
  %i.bb = shufflevector <2 x float> %i.az, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.bc = load <3 x float>, ptr %i.t, align 8, !tbaa !76, !noalias !712 ; 5 uses
  %i.bd = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ad, i64 0 ; 3 uses
  %i.be = shufflevector <3 x float> %i.bc, <3 x float> poison, <2 x i32> zeroinitializer
  %i.bf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bd, <2 x float> %i.be, <2 x float> zeroinitializer) ; 2 uses
  %i.bg = extractelement <3 x float> %i.bc, i64 2
  %i.bh = shufflevector <3 x float> %i.bc, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bi = shufflevector <3 x float> %i.bc, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %5 = load <3 x float>, ptr %i.u, align 4, !tbaa !76, !noalias !712 ; 5 uses
  %i.bj = shufflevector <3 x float> %5, <3 x float> poison, <2 x i32> zeroinitializer
  %i.bk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bd, <2 x float> %i.bj, <2 x float> zeroinitializer) ; 2 uses
  %6 = extractelement <3 x float> %5, i64 2
  %7 = shufflevector <3 x float> %5, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %8 = shufflevector <3 x float> %5, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.bl = shufflevector <2 x float> %i.s, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bm = insertelement <2 x float> %i.bl, float %i.x, i64 1
  %i.bn = fdiv <2 x float> <float -2.000000e+00, float 1.000000e+00>, %i.bm ; 4 uses
  %i.bo = extractelement <2 x float> %i.bn, i64 1
  %i.bp = shufflevector <2 x float> <float 0.000000e+00, float poison>, <2 x float> %i.bn, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.bq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bp, <2 x float> %i.bh, <2 x float> %i.bf)
  %i.br = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bi, <2 x float> zeroinitializer, <2 x float> %i.bq) ; 3 uses
  %i.bs = shufflevector <2 x float> %i.br, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.bt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bp, <2 x float> %7, <2 x float> %i.bk)
  %i.bu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %8, <2 x float> zeroinitializer, <2 x float> %i.bt) ; 3 uses
  %i.bv = shufflevector <2 x float> %i.br, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bw = shufflevector <2 x float> %i.bn, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.bx = shufflevector <2 x float> %i.bu, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.by = load <3 x float>, ptr %i.v, align 8, !tbaa !76, !noalias !712 ; 5 uses
  %i.bz = shufflevector <3 x float> %i.by, <3 x float> poison, <2 x i32> zeroinitializer
  %i.ca = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bd, <2 x float> %i.bz, <2 x float> zeroinitializer) ; 2 uses
  %i.cb = extractelement <3 x float> %i.by, i64 2
  %i.cc = shufflevector <3 x float> %i.by, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bp, <2 x float> %i.cc, <2 x float> %i.ca)
  %i.ce = shufflevector <3 x float> %i.by, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.cf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ce, <2 x float> zeroinitializer, <2 x float> %i.cd) ; 3 uses
  %i.cg = extractelement <2 x float> %i.bu, i64 0 ; 2 uses
  %i.ch = shufflevector <2 x float> %i.cf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ci = extractelement <2 x float> %i.cf, i64 0
  %9 = shufflevector <3 x float> %i.bc, <3 x float> %5, <4 x i32> <i32 1, i32 4, i32 poison, i32 poison>
  %10 = shufflevector <3 x float> %i.by, <3 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %11 = shufflevector <4 x float> %9, <4 x float> %10, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.cj = shufflevector <4 x float> %11, <4 x float> %i.bs, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ck = shufflevector <2 x float> %i.bf, <2 x float> %i.bk, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.cl = insertelement <4 x float> %i.ck, float 0.000000e+00, i64 3
  %i.cm = shufflevector <2 x float> %i.ca, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.cn = shufflevector <4 x float> %i.cl, <4 x float> %i.cm, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.co = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cj, <4 x float> zeroinitializer, <4 x float> %i.cn) ; 4 uses
  %i.cp = extractelement <4 x float> %i.co, i64 0
  %i.cq = fadd float %i.bg, %i.cp                 ; 2 uses
  %i.cr = extractelement <4 x float> %i.co, i64 1
  %i.cs = fadd float %6, %i.cr                    ; 2 uses
  %i.ct = insertelement <4 x float> %i.bv, float %i.cq, i64 2
  %i.cu = shufflevector <4 x float> %i.ct, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.cv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cu, <4 x float> %i.bw, <4 x float> zeroinitializer)
  %i.cw = insertelement <4 x float> %i.bx, float %i.cs, i64 2
  %i.cx = shufflevector <4 x float> %i.cw, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.cy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cx, <4 x float> zeroinitializer, <4 x float> %i.cv)
  %i.cz = extractelement <4 x float> %i.co, i64 2
  %i.da = fadd float %i.cb, %i.cz                 ; 2 uses
  %i.db = insertelement <4 x float> %i.ch, float %i.da, i64 2
  %i.dc = shufflevector <4 x float> %i.db, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.dd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dc, <4 x float> zeroinitializer, <4 x float> %i.cy) ; 4 uses
  %i.de = fadd <4 x float> %i.dd, zeroinitializer
  %i.df = extractelement <4 x float> %i.co, i64 3 ; 2 uses
  %i.dg = tail call float @llvm.fmuladd.f32(float %i.cg, float 0.000000e+00, float %i.df)
  %i.dh = tail call float @llvm.fmuladd.f32(float %i.cg, float %i.bo, float %i.df)
  %i.di = fadd float %i.dg, %i.ci                 ; 2 uses
  %i.dj = shufflevector <4 x float> %i.ch, <4 x float> %i.dd, <2 x i32> <i32 0, i32 4>
  %i.dk = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.dh, i64 0
  %i.dl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dj, <2 x float> zeroinitializer, <2 x float> %i.dk) ; 3 uses
  %i.dm = insertelement <4 x float> poison, float %i.di, i64 0
  %shift = shufflevector <2 x float> %i.dl, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.dl, %shift
  %i.dn = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.do = tail call float @llvm.fmuladd.f32(float %i.di, float 0.000000e+00, float %i.dn) ; 3 uses
  %i.dp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dd, <4 x float> %i.ba, <4 x float> zeroinitializer)
  %i.dq = insertelement <4 x float> poison, float %i.do, i64 0
  %i.dr = shufflevector <2 x float> %i.br, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ds = insertelement <2 x float> %i.dr, float %i.cq, i64 1
  %i.dt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ds, <2 x float> zeroinitializer, <2 x float> zeroinitializer) ; 2 uses
  %i.du = shufflevector <2 x float> %i.bu, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.dv = insertelement <2 x float> %i.du, float %i.cs, i64 1 ; 2 uses
  %i.dw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dv, <2 x float> zeroinitializer, <2 x float> %i.dt)
  %i.dx = shufflevector <2 x float> %i.bn, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dv, <2 x float> %i.dx, <2 x float> %i.dt)
  %i.dz = shufflevector <2 x float> %i.cf, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ea = insertelement <2 x float> %i.dz, float %i.da, i64 1 ; 2 uses
  %i.eb = fadd <2 x float> %i.dw, %i.ea           ; 2 uses
  %i.ec = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ea, <2 x float> zeroinitializer, <2 x float> %i.dy) ; 2 uses
  %i.ed = shufflevector <4 x float> %i.dd, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.ee = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ed, <2 x float> zeroinitializer, <2 x float> zeroinitializer)
  %i.ef = shufflevector <2 x float> %i.dl, <2 x float> %i.ec, <4 x i32> <i32 0, i32 2, i32 3, i32 0> ; 2 uses
  %i.eg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ef, <4 x float> zeroinitializer, <4 x float> %i.de)
  %i.eh = shufflevector <2 x float> %i.eb, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ei = shufflevector <4 x float> %i.dm, <4 x float> %i.eh, <4 x i32> <i32 0, i32 4, i32 5, i32 0> ; 2 uses
  %i.ej = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ei, <4 x float> zeroinitializer, <4 x float> %i.eg) ; 3 uses
  %i.ek = fadd <2 x float> %i.ec, %i.ee
  %i.el = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eb, <2 x float> zeroinitializer, <2 x float> %i.ek) ; 3 uses
  %i.em = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ef, <4 x float> %i.bb, <4 x float> %i.dp)
  %i.en = fadd <4 x float> %i.ei, %i.em           ; 3 uses
  %i.eo = extractelement <4 x float> %i.ej, i64 0
  %i.ep = tail call float @llvm.fmuladd.f32(float %i.eo, float %i.ax, float 0.000000e+00)
  %i.eq = tail call float @llvm.fmuladd.f32(float %i.do, float 0.000000e+00, float %i.ep)
  %i.er = extractelement <4 x float> %i.en, i64 0 ; 2 uses
  %i.es = tail call float @llvm.fmuladd.f32(float %i.er, float 0.000000e+00, float %i.eq) ; 3 uses
  %i.et = shufflevector <4 x float> %i.ej, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.eu = insertelement <2 x float> poison, float %i.ax, i64 0
  %i.ev = shufflevector <2 x float> %i.eu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ew = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.et, <2 x float> %i.ev, <2 x float> zeroinitializer)
  %i.ex = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.el, <2 x float> zeroinitializer, <2 x float> %i.ew)
  %i.ey = shufflevector <4 x float> %i.en, <4 x float> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.ez = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ey, <2 x float> zeroinitializer, <2 x float> %i.ex) ; 4 uses
  %i.fa = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ej, <4 x float> zeroinitializer, <4 x float> zeroinitializer) ; 3 uses
  %i.fb = extractelement <4 x float> %i.fa, i64 0
  %i.fc = shufflevector <2 x float> %i.el, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fd = shufflevector <4 x float> %i.dq, <4 x float> %i.fc, <4 x i32> <i32 0, i32 4, i32 5, i32 0>
  %i.fe = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fd, <4 x float> zeroinitializer, <4 x float> %i.fa)
  %i.ff = fadd <4 x float> %i.fe, %i.en           ; 4 uses
  %i.fg = insertelement <2 x float> poison, float %i.ay, i64 0
  %i.fh = shufflevector <2 x float> %i.fg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fi = shufflevector <4 x float> %i.fa, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.fj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.el, <2 x float> %i.fh, <2 x float> %i.fi)
  %i.fk = tail call float @llvm.fmuladd.f32(float %i.do, float %i.ay, float %i.fb)
  %i.fl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ey, <2 x float> zeroinitializer, <2 x float> %i.fj) ; 3 uses
  %i.fm = tail call float @llvm.fmuladd.f32(float %i.er, float 0.000000e+00, float %i.fk) ; 2 uses
  %i.fn = tail call float @llvm.fmuladd.f32(float %i.es, float 0.000000e+00, float 0.000000e+00)
  %i.fo = insertelement <4 x float> poison, float %i.es, i64 0
  %i.fp = shufflevector <2 x float> %i.ez, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fq = shufflevector <4 x float> %i.fo, <4 x float> %i.fp, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.fr = insertelement <4 x float> %i.fq, float %i.fn, i64 3
  %i.fs = fadd <4 x float> %i.fr, <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -0.000000e+00>
  %i.ft = extractelement <2 x float> %i.ez, i64 0
  %i.fu = tail call float @llvm.fmuladd.f32(float %i.ft, float 0.000000e+00, float 0.000000e+00)
  %i.fv = extractelement <2 x float> %i.ez, i64 1
  %i.fw = tail call float @llvm.fmuladd.f32(float %i.fv, float 0.000000e+00, float 0.000000e+00)
  %i.fx = insertelement <4 x float> poison, float %i.fm, i64 0
  %i.fy = shufflevector <2 x float> %i.fl, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.fz = shufflevector <4 x float> %i.fx, <4 x float> %i.fy, <4 x i32> <i32 0, i32 4, i32 5, i32 0>
  %i.ga = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fz, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.fs)
  %i.gb = extractelement <2 x float> %i.fl, i64 0
  %i.gc = fadd float %i.gb, %i.fu
  %i.gd = extractelement <2 x float> %i.fl, i64 1
  %i.ge = fadd float %i.gd, %i.fw
  %i.gf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ff, <4 x float> zeroinitializer, <4 x float> %i.ga)
  store <4 x float> %i.gf, ptr %0, align 4, !tbaa !76, !alias.scope !713
  %i.gg = extractelement <4 x float> %i.ff, i64 1
  %i.gh = tail call float @llvm.fmuladd.f32(float %i.gg, float 0.000000e+00, float %i.gc)
  store float %i.gh, ptr %i.aa, align 4, !tbaa !76, !alias.scope !713
  %i.gi = tail call float @llvm.fmuladd.f32(float %i.es, float -5.000000e-01, float 0.000000e+00)
  %i.gj = shufflevector <4 x float> %i.ff, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.gk = insertelement <4 x float> %i.gj, float %i.fm, i64 1
  %i.gl = shufflevector <4 x float> %i.gk, <4 x float> %i.fy, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.gm = insertelement <4 x float> poison, float %i.ge, i64 0
  %i.gn = insertelement <4 x float> %i.gm, float %i.gi, i64 1
  %i.go = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ez, <2 x float> splat (float -5.000000e-01), <2 x float> zeroinitializer)
  %i.gp = shufflevector <2 x float> %i.go, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.gq = shufflevector <4 x float> %i.gn, <4 x float> %i.gp, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.gr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gl, <4 x float> <float 0.000000e+00, float -5.000000e-01, float -5.000000e-01, float -5.000000e-01>, <4 x float> %i.gq)
  %i.gs = shufflevector <4 x float> %i.ff, <4 x float> <float -0.000000e+00, float poison, float poison, float poison>, <4 x i32> <i32 4, i32 0, i32 1, i32 2>
  %i.gt = fadd <4 x float> %i.gs, %i.gr
  store <4 x float> %i.gt, ptr %i.ab, align 4, !tbaa !76, !alias.scope !713
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
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #47, !noalias !757
  store ptr @.str.4, ptr %13, align 16, !tbaa !79, !noalias !757
  %i.d = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i32 119, ptr %i.d, align 16, !tbaa !79, !noalias !757
  %i.e = getelementptr inbounds nuw i8, ptr %13, i64 32
  store i32 78, ptr %i.e, align 16, !tbaa !79, !noalias !757
  %i.f = getelementptr inbounds nuw i8, ptr %13, i64 48
  store ptr @.str.5, ptr %i.f, align 16, !tbaa !79, !noalias !757
  invoke void @_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::basic_string") align 8 %15, ptr nonnull @.str.6, i64 68, i64 49708, ptr nonnull %13)
          to label %bb.b unwind label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread

bb.b:                                             ; preds = %_ZNKSt3__115source_location13function_nameB8ne180100Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #47, !noalias !757
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

end_hunk_0
