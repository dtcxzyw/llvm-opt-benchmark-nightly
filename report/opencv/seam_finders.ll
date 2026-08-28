Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/seam_finders?download=true
inline.NumInlined: 2970
inline.NumDeleted: 1133
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN2cv6detail18GraphCutSeamFinder4Impl24setGraphWeightsColorGradERKNS_3MatES5_S5_S5_S5_S5_S5_S5_RNS0_7GCGraphIfEE:bb.a
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !34
  %.not121 = icmp eq i8 %i.hu, 0
  br i1 %.not121, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w, %bb.v
  %i.hv = load float, ptr %i.bb, align 8, !tbaa !445
  %i.hw = fadd float %i.hc, %i.hv
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.0114 = phi float [ %i.hc, %bb.y ], [ %i.hw, %bb.z ] ; 2 uses
  %i.hx = add nuw nsw i32 %i.eh, 1
  %i.hy = trunc nuw i64 %i.eg to i32
  tail call void @_ZN2cv6detail7GCGraphIfE8addEdgesEiiff(ptr noundef nonnull align 8 dereferenceable(52) %9, i32 noundef %i.hy, i32 noundef %i.hx, float noundef %.0114, float noundef %.0114)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.u
  br i1 %i.ee, label %bb.ac, label %bb.ai

bb.ac:                                            ; preds = %bb.ab
  %i.hz = load i32, ptr %i.bc, align 4, !tbaa !83
  %i.ia = icmp slt i32 %i.hz, 2                   ; 2 uses
  %i.ib = load ptr, ptr %i.bd, align 8, !tbaa !88 ; 2 uses
  %i.ic = load i64, ptr %i.be, align 8            ; 2 uses
  %i.id = mul i64 %i.ic, %indvars.iv201
  %.sink.idx.i157 = select i1 %i.ia, i64 0, i64 %i.id
  %.sink.i158 = getelementptr inbounds nuw i8, ptr %i.ib, i64 %.sink.idx.i157
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %.sink.i158, i64 %indvars.iv196
  %i.if = load float, ptr %i.ie, align 4, !tbaa !312
  %i.ig = mul i64 %i.ic, %indvars.iv.next202
  %.sink.idx.i159 = select i1 %i.ia, i64 0, i64 %i.ig
  %.sink.i160 = getelementptr inbounds nuw i8, ptr %i.ib, i64 %.sink.idx.i159
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %.sink.i160, i64 %indvars.iv196
  %i.ii = load float, ptr %i.ih, align 4, !tbaa !312
  %i.ij = fadd float %i.if, %i.ii
  %i.ik = load i32, ptr %i.bf, align 4, !tbaa !83
  %i.il = icmp slt i32 %i.ik, 2                   ; 2 uses
  %i.im = load ptr, ptr %i.bg, align 8, !tbaa !88 ; 2 uses
  %i.in = load i64, ptr %i.bh, align 8            ; 2 uses
  %i.io = mul i64 %i.in, %indvars.iv201
  %.sink.idx.i161 = select i1 %i.il, i64 0, i64 %i.io
  %.sink.i162 = getelementptr inbounds nuw i8, ptr %i.im, i64 %.sink.idx.i161
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %.sink.i162, i64 %indvars.iv196
  %i.iq = load float, ptr %i.ip, align 4, !tbaa !312
  %i.ir = fadd float %i.ij, %i.iq
  %i.is = mul i64 %i.in, %indvars.iv.next202
  %.sink.idx.i163 = select i1 %i.il, i64 0, i64 %i.is
  %.sink.i164 = getelementptr inbounds nuw i8, ptr %i.im, i64 %.sink.idx.i163
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %.sink.i164, i64 %indvars.iv196
  %i.iu = load float, ptr %i.it, align 4, !tbaa !312
  %i.iv = fadd float %i.ir, %i.iu
  %i.iw = fadd float %i.iv, 1.000000e+00
  %i.ix = load i32, ptr %i.ap, align 4, !tbaa !83
  %i.iy = icmp slt i32 %i.ix, 2                   ; 2 uses
  %i.iz = load ptr, ptr %i.aq, align 8, !tbaa !88 ; 2 uses
  %i.ja = load i64, ptr %i.ar, align 8            ; 2 uses
  %i.jb = mul i64 %i.ja, %indvars.iv201
  %.sink.idx.i165 = select i1 %i.iy, i64 0, i64 %i.jb
  %.sink.i166 = getelementptr inbounds nuw i8, ptr %i.iz, i64 %.sink.idx.i165
  %i.jc = getelementptr inbounds nuw [12 x i8], ptr %.sink.i166, i64 %indvars.iv196 ; 3 uses
  %i.jd = load i32, ptr %i.as, align 4, !tbaa !83
  %i.je = icmp slt i32 %i.jd, 2                   ; 2 uses
  %i.jf = load ptr, ptr %i.at, align 8, !tbaa !88 ; 2 uses
  %i.jg = load i64, ptr %i.au, align 8            ; 2 uses
  %i.jh = mul i64 %i.jg, %indvars.iv201
  %.sink.idx.i167 = select i1 %i.je, i64 0, i64 %i.jh
  %.sink.i168 = getelementptr inbounds nuw i8, ptr %i.jf, i64 %.sink.idx.i167
  %i.ji = getelementptr inbounds nuw [12 x i8], ptr %.sink.i168, i64 %indvars.iv196 ; 3 uses
  %i.jj = load float, ptr %i.jc, align 4, !tbaa !395
  %i.jk = load float, ptr %i.ji, align 4, !tbaa !395
  %i.jl = fsub float %i.jj, %i.jk                 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jc, i64 4
  %i.jn = load float, ptr %i.jm, align 4, !tbaa !400
  %i.jo = getelementptr inbounds nuw i8, ptr %i.ji, i64 4
  %i.jp = load float, ptr %i.jo, align 4, !tbaa !400
  %i.jq = fsub float %i.jn, %i.jp                 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jc, i64 8
  %i.js = load float, ptr %i.jr, align 4, !tbaa !401
  %i.jt = getelementptr inbounds nuw i8, ptr %i.ji, i64 8
  %i.ju = load float, ptr %i.jt, align 4, !tbaa !401
  %i.jv = fsub float %i.js, %i.ju                 ; 2 uses
  %i.jw = fmul float %i.jq, %i.jq
  %i.jx = tail call float @llvm.fmuladd.f32(float %i.jl, float %i.jl, float %i.jw)
  %i.jy = tail call noundef float @llvm.fmuladd.f32(float %i.jv, float %i.jv, float %i.jx)
  %i.jz = mul i64 %i.ja, %indvars.iv.next202
  %.sink.idx.i169 = select i1 %i.iy, i64 0, i64 %i.jz
  %.sink.i170 = getelementptr inbounds nuw i8, ptr %i.iz, i64 %.sink.idx.i169
  %i.ka = getelementptr inbounds nuw [12 x i8], ptr %.sink.i170, i64 %indvars.iv196 ; 3 uses
  %i.kb = mul i64 %i.jg, %indvars.iv.next202
  %.sink.idx.i171 = select i1 %i.je, i64 0, i64 %i.kb
  %.sink.i172 = getelementptr inbounds nuw i8, ptr %i.jf, i64 %.sink.idx.i171
  %i.kc = getelementptr inbounds nuw [12 x i8], ptr %.sink.i172, i64 %indvars.iv196 ; 3 uses
  %i.kd = load float, ptr %i.ka, align 4, !tbaa !395
  %i.ke = load float, ptr %i.kc, align 4, !tbaa !395
  %i.kf = fsub float %i.kd, %i.ke                 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ka, i64 4
  %i.kh = load float, ptr %i.kg, align 4, !tbaa !400
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kc, i64 4
  %i.kj = load float, ptr %i.ki, align 4, !tbaa !400
  %i.kk = fsub float %i.kh, %i.kj                 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  %i.km = load float, ptr %i.kl, align 4, !tbaa !401
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kc, i64 8
  %i.ko = load float, ptr %i.kn, align 4, !tbaa !401
  %i.kp = fsub float %i.km, %i.ko                 ; 2 uses
  %i.kq = fmul float %i.kk, %i.kk
  %i.kr = tail call float @llvm.fmuladd.f32(float %i.kf, float %i.kf, float %i.kq)
  %i.ks = tail call noundef float @llvm.fmuladd.f32(float %i.kp, float %i.kp, float %i.kr)
  %i.kt = fadd float %i.jy, %i.ks
  %i.ku = fdiv float %i.kt, %i.iw
  %i.kv = fadd float %i.ku, 1.000000e+00          ; 2 uses
  %i.kw = load i32, ptr %i.av, align 4, !tbaa !83
  %i.kx = icmp slt i32 %i.kw, 2                   ; 2 uses
  %i.ky = load ptr, ptr %i.aw, align 8, !tbaa !88 ; 2 uses
  %i.kz = load i64, ptr %i.ax, align 8            ; 2 uses
  %i.la = mul i64 %i.kz, %indvars.iv201
  %.sink.idx.i173 = select i1 %i.kx, i64 0, i64 %i.la
  %.sink.i174 = getelementptr inbounds nuw i8, ptr %i.ky, i64 %.sink.idx.i173
  %i.lb = getelementptr inbounds nuw i8, ptr %.sink.i174, i64 %indvars.iv196
  %i.lc = load i8, ptr %i.lb, align 1, !tbaa !34
  %.not122 = icmp eq i8 %i.lc, 0
  br i1 %.not122, label %bb.ag, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ld = mul i64 %i.kz, %indvars.iv.next202
  %.sink.idx.i175 = select i1 %i.kx, i64 0, i64 %i.ld
  %.sink.i176 = getelementptr inbounds nuw i8, ptr %i.ky, i64 %.sink.idx.i175
  %i.le = getelementptr inbounds nuw i8, ptr %.sink.i176, i64 %indvars.iv196
  %i.lf = load i8, ptr %i.le, align 1, !tbaa !34
  %.not123 = icmp eq i8 %i.lf, 0
  br i1 %.not123, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.lg = load i32, ptr %i.ay, align 4, !tbaa !83
  %i.lh = icmp slt i32 %i.lg, 2                   ; 2 uses
  %i.li = load ptr, ptr %i.az, align 8, !tbaa !88 ; 2 uses
  %i.lj = load i64, ptr %i.ba, align 8            ; 2 uses
  %i.lk = mul i64 %i.lj, %indvars.iv201
  %.sink.idx.i177 = select i1 %i.lh, i64 0, i64 %i.lk
  %.sink.i178 = getelementptr inbounds nuw i8, ptr %i.li, i64 %.sink.idx.i177
  %i.ll = getelementptr inbounds nuw i8, ptr %.sink.i178, i64 %indvars.iv196
  %i.lm = load i8, ptr %i.ll, align 1, !tbaa !34
  %.not124 = icmp eq i8 %i.lm, 0
  br i1 %.not124, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ln = mul i64 %i.lj, %indvars.iv.next202
  %.sink.idx.i179 = select i1 %i.lh, i64 0, i64 %i.ln
  %.sink.i180 = getelementptr inbounds nuw i8, ptr %i.li, i64 %.sink.idx.i179
  %i.lo = getelementptr inbounds nuw i8, ptr %.sink.i180, i64 %indvars.iv196
  %i.lp = load i8, ptr %i.lo, align 1, !tbaa !34
  %.not125 = icmp eq i8 %i.lp, 0
  br i1 %.not125, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ac
  %i.lq = load float, ptr %i.bb, align 8, !tbaa !445
  %i.lr = fadd float %i.kv, %i.lq
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.0 = phi float [ %i.kv, %bb.af ], [ %i.lr, %bb.ag ] ; 2 uses
  %i.ls = add nuw nsw i32 %i.eh, %i.v
  %i.lt = trunc nuw i64 %i.eg to i32
  tail call void @_ZN2cv6detail7GCGraphIfE8addEdgesEiiff(ptr noundef nonnull align 8 dereferenceable(52) %9, i32 noundef %i.lt, i32 noundef %i.ls, float noundef %.0, float noundef %.0)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ab
  %indvars.iv.next197 = add nuw nsw i64 %indvars.iv196, 1 ; 2 uses
  %exitcond200.not = icmp eq i64 %indvars.iv.next197, %i.bl
  br i1 %exitcond200.not, label %._crit_edge187, label %bb.u, !llvm.loop !454
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv6detail18GraphCutSeamFinder4Impl10findInPairEmmNS_5Rect_IiEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %0, i64 noundef %1, i64 noundef %2, i64 %3, i64 %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator", align 1    ; 3 uses
  %7 = alloca %"class.cv::Mat", align 8           ; 11 uses
  %8 = alloca %"class.cv::Mat", align 8           ; 11 uses
  %9 = alloca %"class.cv::Mat", align 8           ; 9 uses
  %10 = alloca %"class.cv::Mat", align 8          ; 9 uses
  %11 = alloca %"class.cv::Mat", align 8          ; 9 uses
  %12 = alloca %"class.cv::Mat", align 8          ; 9 uses
  %13 = alloca %"class.cv::Mat", align 8          ; 12 uses
  %14 = alloca %"class.cv::Mat", align 8          ; 12 uses
  %15 = alloca %"class.cv::Mat", align 8          ; 11 uses
  %16 = alloca %"class.cv::Mat", align 8          ; 11 uses
  %17 = alloca %"class.cv::Mat", align 8          ; 11 uses
  %18 = alloca %"class.cv::Mat", align 8          ; 11 uses
  %19 = alloca %"class.cv::Mat", align 8          ; 10 uses
  %20 = alloca %"class.cv::Mat", align 8          ; 10 uses
  %21 = alloca %"class.cv::Mat", align 8          ; 10 uses
  %22 = alloca %"class.cv::Mat", align 8          ; 10 uses
  %23 = alloca %"class.cv::detail::GCGraph", align 8 ; 19 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %25 = alloca %"class.std::allocator", align 1   ; 3 uses
  %.sroa.0105.0.extract.trunc = trunc i64 %3 to i32 ; 4 uses
  %.sroa.7111.0.extract.shift = lshr i64 %3, 32
  %.sroa.7111.0.extract.trunc = trunc nuw i64 %.sroa.7111.0.extract.shift to i32 ; 4 uses
  %.sroa.13.8.extract.trunc = trunc i64 %4 to i32 ; 6 uses
  %.sroa.28.8.extract.shift = lshr i64 %4, 32
  %.sroa.28.8.extract.trunc = trunc nuw i64 %.sroa.28.8.extract.shift to i32 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.c = getelementptr inbounds nuw [184 x i8], ptr %i.b, i64 %1
  call void @_ZNK2cv4UMat6getMatENS_10AccessFlagE(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %7, ptr noundef nonnull align 8 dereferenceable(184) %i.c, i32 noundef 16777216)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.e = getelementptr inbounds nuw [184 x i8], ptr %i.d, i64 %2
  invoke void @_ZNK2cv4UMat6getMatENS_10AccessFlagE(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %8, ptr noundef nonnull align 8 dereferenceable(184) %i.e, i32 noundef 16777216)
          to label %bb.b unwind label %bb.s

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !161
  %i.h = getelementptr inbounds nuw [208 x i8], ptr %i.g, i64 %1
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %9, ptr noundef nonnull align 8 dereferenceable(208) %i.h)
          to label %bb.c unwind label %bb.t

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !161
  %i.j = getelementptr inbounds nuw [208 x i8], ptr %i.i, i64 %2
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %10, ptr noundef nonnull align 8 dereferenceable(208) %i.j)
          to label %bb.d unwind label %bb.u

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !161
  %i.m = getelementptr inbounds nuw [208 x i8], ptr %i.l, i64 %1
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %11, ptr noundef nonnull align 8 dereferenceable(208) %i.m)
          to label %bb.e unwind label %bb.v

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !161
  %i.o = getelementptr inbounds nuw [208 x i8], ptr %i.n, i64 %2
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %12, ptr noundef nonnull align 8 dereferenceable(208) %i.o)
          to label %bb.f unwind label %bb.w

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !47
  %i.r = getelementptr inbounds nuw [184 x i8], ptr %i.q, i64 %1
  invoke void @_ZNK2cv4UMat6getMatENS_10AccessFlagE(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %13, ptr noundef nonnull align 8 dereferenceable(184) %i.r, i32 noundef 50331648)
          to label %bb.g unwind label %bb.x

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !47
  %i.t = getelementptr inbounds nuw [184 x i8], ptr %i.s, i64 %2
  invoke void @_ZNK2cv4UMat6getMatENS_10AccessFlagE(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %14, ptr noundef nonnull align 8 dereferenceable(184) %i.t, i32 noundef 50331648)
          to label %bb.h unwind label %bb.y

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !54   ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %1 ; 2 uses
  %.sroa.087.0.copyload = load i32, ptr %i.w, align 4, !tbaa !62 ; 2 uses
  %.sroa.790.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %.sroa.790.0.copyload = load i32, ptr %.sroa.790.0..sroa_idx, align 4, !tbaa !62 ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %2 ; 2 uses
  %.sroa.0.0.copyload = load i32, ptr %i.x, align 4, !tbaa !62 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %.sroa.7.0.copyload = load i32, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !62 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  %i.y = add nsw i32 %.sroa.28.8.extract.trunc, 20 ; 10 uses
  %i.z = add nsw i32 %.sroa.13.8.extract.trunc, 20 ; 12 uses
  invoke void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %15, i32 noundef %i.y, i32 noundef %i.z, i32 noundef 69)
          to label %bb.i unwind label %bb.z

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28
  invoke void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %16, i32 noundef %i.y, i32 noundef %i.z, i32 noundef 69)
          to label %bb.j unwind label %bb.aa

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #28
  invoke void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %17, i32 noundef %i.y, i32 noundef %i.z, i32 noundef 0)
          to label %bb.k unwind label %bb.ab

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #28
  invoke void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %18, i32 noundef %i.y, i32 noundef %i.z, i32 noundef 0)
          to label %bb.l unwind label %bb.ac

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #28
  invoke void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %19, i32 noundef %i.y, i32 noundef %i.z, i32 noundef 5)
          to label %bb.m unwind label %bb.ad

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #28
  invoke void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %20, i32 noundef %i.y, i32 noundef %i.z, i32 noundef 5)
          to label %bb.n unwind label %bb.ae

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #28
  invoke void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %21, i32 noundef %i.y, i32 noundef %i.z, i32 noundef 5)
          to label %bb.o unwind label %bb.af

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #28
  invoke void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %22, i32 noundef %i.y, i32 noundef %i.z, i32 noundef 5)
          to label %.preheader271 unwind label %bb.ag

.preheader271:                                    ; preds = %bb.o
  %i.aa = icmp sgt i32 %.sroa.28.8.extract.trunc, -20
  br i1 %i.aa, label %.preheader270.lr.ph, label %._crit_edge274.split

.preheader270.lr.ph:                              ; preds = %.preheader271
  %i.ab = icmp sgt i32 %.sroa.13.8.extract.trunc, -20
  %i.ac = sub nsw i32 %.sroa.7111.0.extract.trunc, %.sroa.790.0.copyload
  %i.ad = sub nsw i32 %.sroa.0105.0.extract.trunc, %.sroa.087.0.copyload
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.ag = getelementptr inbounds nuw i8, ptr %15, i64 4 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %15, i64 24 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %15, i64 128 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %17, i64 4 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %17, i64 24 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %17, i64 128 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %19, i64 4 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %19, i64 24 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %19, i64 128 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %20, i64 4
  %i.aq = getelementptr inbounds nuw i8, ptr %20, i64 24
  %i.ar = getelementptr inbounds nuw i8, ptr %20, i64 128
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 128
  %i.av = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.aw = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %13, i64 128
  %i.ay = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.az = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.ba = getelementptr inbounds nuw i8, ptr %9, i64 128
  %i.bb = getelementptr inbounds nuw i8, ptr %11, i64 4
  %i.bc = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.bd = getelementptr inbounds nuw i8, ptr %11, i64 128
  %i.be = sub nsw i32 %.sroa.7111.0.extract.trunc, %.sroa.7.0.copyload
  %i.bf = sub nsw i32 %.sroa.0105.0.extract.trunc, %.sroa.0.0.copyload
  %i.bg = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.bi = getelementptr inbounds nuw i8, ptr %16, i64 4 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %16, i64 24 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %16, i64 128 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %18, i64 4 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %18, i64 24 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %18, i64 128 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %21, i64 4 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %21, i64 24 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %21, i64 128 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %22, i64 4
  %i.bs = getelementptr inbounds nuw i8, ptr %22, i64 24
  %i.bt = getelementptr inbounds nuw i8, ptr %22, i64 128
  %i.bu = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.bv = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.bw = getelementptr inbounds nuw i8, ptr %8, i64 128
  %i.bx = getelementptr inbounds nuw i8, ptr %14, i64 4
  %i.by = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.bz = getelementptr inbounds nuw i8, ptr %14, i64 128
  %i.ca = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.cb = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.cc = getelementptr inbounds nuw i8, ptr %10, i64 128
  %i.cd = getelementptr inbounds nuw i8, ptr %12, i64 4
  %i.ce = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.cf = getelementptr inbounds nuw i8, ptr %12, i64 128
  br i1 %i.ab, label %.preheader270.preheader, label %._crit_edge274.split

.preheader270.preheader:                          ; preds = %.preheader270.lr.ph
  %i.cg = add i32 %.sroa.13.8.extract.trunc, 9
  %smax = call i32 @llvm.smax.i32(i32 %i.cg, i32 -10)
  %i.ch = add i32 %smax, 1
  %i.ci = add i32 %.sroa.28.8.extract.trunc, 9
  %smax283 = call i32 @llvm.smax.i32(i32 %i.ci, i32 -10)
  %i.cj = add i32 %smax283, 1
  br label %.preheader270

.preheader270:                                    ; preds = %.preheader270.preheader, %._crit_edge
  %indvars.iv280 = phi i64 [ -10, %.preheader270.preheader ], [ %indvars.iv.next281, %._crit_edge ] ; 3 uses
  %i.ck = trunc nsw i64 %indvars.iv280 to i32     ; 2 uses
  %i.cl = add nsw i32 %i.ac, %i.ck                ; 3 uses
  %i.cm = icmp sgt i32 %i.cl, -1
  %i.cn = add nsw i64 %indvars.iv280, 10          ; 14 uses
  %i.co = zext nneg i32 %i.cl to i64              ; 4 uses
  %i.cp = add nsw i32 %i.be, %i.ck                ; 3 uses
  %i.cq = icmp sgt i32 %i.cp, -1
  %i.cr = zext nneg i32 %i.cp to i64              ; 4 uses
  br label %bb.ah

._crit_edge274.split:                             ; preds = %._crit_edge, %.preheader270.lr.ph, %.preheader271
  %i.cs = mul nsw i32 %i.y, %i.z
  %i.ct = add nsw i32 %.sroa.28.8.extract.trunc, 19
  %i.cu = mul nsw i32 %i.ct, %i.z
  %i.cv = add nsw i32 %.sroa.13.8.extract.trunc, 19
  %i.cw = mul nsw i32 %i.y, %i.cv
  %i.cx = add nsw i32 %i.cu, %i.cw
end_hunk_0
begin_hunk_1_@_ZN2cv6detail18GraphCutSeamFinder4Impl10findInPairEmmNS_5Rect_IiEE:bb.a
  %i.hb = getelementptr inbounds [4 x i8], ptr %.sink.i227, i64 %.sink308
  store float %.sink, ptr %i.hb, align 4, !tbaa !312
  %i.hc = add nsw i32 %i.bf, %i.eb                ; 3 uses
  %i.hd = icmp sgt i32 %i.hc, -1
  %or.cond3 = select i1 %i.cq, i1 %i.hd, i1 false
  %i.he = load i32, ptr %i.bg, align 8
  %i.hf = icmp slt i32 %i.cp, %i.he
  %or.cond202 = select i1 %or.cond3, i1 %i.hf, i1 false
  %i.hg = load i32, ptr %i.bh, align 4
  %i.hh = icmp slt i32 %i.hc, %i.hg
  %or.cond205 = select i1 %or.cond202, i1 %i.hh, i1 false
  br i1 %or.cond205, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.hi = load i32, ptr %i.bu, align 4, !tbaa !83
  %i.hj = icmp slt i32 %i.hi, 2
  %i.hk = load ptr, ptr %i.bv, align 8, !tbaa !88
  %i.hl = load i64, ptr %i.bw, align 8
  %i.hm = mul i64 %i.hl, %i.cr
  %.sink.idx.i228 = select i1 %i.hj, i64 0, i64 %i.hm
  %.sink.i229 = getelementptr inbounds nuw i8, ptr %i.hk, i64 %.sink.idx.i228
  %i.hn = zext nneg i32 %i.hc to i64              ; 4 uses
  %i.ho = getelementptr inbounds nuw [12 x i8], ptr %.sink.i229, i64 %i.hn
  %i.hp = add nsw i64 %indvars.iv, 10             ; 4 uses
  %i.hq = load i32, ptr %i.bi, align 4, !tbaa !83
  %i.hr = icmp slt i32 %i.hq, 2
  %i.hs = load ptr, ptr %i.bj, align 8, !tbaa !88
  %i.ht = load i64, ptr %i.bk, align 8
  %i.hu = mul i64 %i.ht, %i.cn
  %.sink.idx.i230 = select i1 %i.hr, i64 0, i64 %i.hu
  %.sink.i231 = getelementptr inbounds nuw i8, ptr %i.hs, i64 %.sink.idx.i230
  %i.hv = getelementptr inbounds [12 x i8], ptr %.sink.i231, i64 %i.hp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.hv, ptr noundef nonnull align 4 dereferenceable(12) %i.ho, i64 12, i1 false), !tbaa.struct !456
  %i.hw = load i32, ptr %i.bx, align 4, !tbaa !83
  %i.hx = icmp slt i32 %i.hw, 2
  %i.hy = load ptr, ptr %i.by, align 8, !tbaa !88
  %i.hz = load i64, ptr %i.bz, align 8
  %i.ia = mul i64 %i.hz, %i.cr
  %.sink.idx.i232 = select i1 %i.hx, i64 0, i64 %i.ia
  %.sink.i233 = getelementptr inbounds nuw i8, ptr %i.hy, i64 %.sink.idx.i232
  %i.ib = getelementptr inbounds nuw i8, ptr %.sink.i233, i64 %i.hn
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !34
  %i.id = load i32, ptr %i.bl, align 4, !tbaa !83
  %i.ie = icmp slt i32 %i.id, 2
  %i.if = load ptr, ptr %i.bm, align 8, !tbaa !88
  %i.ig = load i64, ptr %i.bn, align 8
  %i.ih = mul i64 %i.ig, %i.cn
  %.sink.idx.i234 = select i1 %i.ie, i64 0, i64 %i.ih
  %.sink.i235 = getelementptr inbounds nuw i8, ptr %i.if, i64 %.sink.idx.i234
  %i.ii = getelementptr inbounds i8, ptr %.sink.i235, i64 %i.hp
  store i8 %i.ic, ptr %i.ii, align 1, !tbaa !34
  %i.ij = load i32, ptr %i.ca, align 4, !tbaa !83
  %i.ik = icmp slt i32 %i.ij, 2
  %i.il = load ptr, ptr %i.cb, align 8, !tbaa !88
  %i.im = load i64, ptr %i.cc, align 8
  %i.in = mul i64 %i.im, %i.cr
  %.sink.idx.i236 = select i1 %i.ik, i64 0, i64 %i.in
  %.sink.i237 = getelementptr inbounds nuw i8, ptr %i.il, i64 %.sink.idx.i236
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %.sink.i237, i64 %i.hn
  %i.ip = load float, ptr %i.io, align 4, !tbaa !312
  %i.iq = load i32, ptr %i.bo, align 4, !tbaa !83
  %i.ir = icmp slt i32 %i.iq, 2
  %i.is = load ptr, ptr %i.bp, align 8, !tbaa !88
  %i.it = load i64, ptr %i.bq, align 8
  %i.iu = mul i64 %i.it, %i.cn
  %.sink.idx.i238 = select i1 %i.ir, i64 0, i64 %i.iu
  %.sink.i239 = getelementptr inbounds nuw i8, ptr %i.is, i64 %.sink.idx.i238
  %i.iv = getelementptr inbounds [4 x i8], ptr %.sink.i239, i64 %i.hp
  store float %i.ip, ptr %i.iv, align 4, !tbaa !312
  %i.iw = load i32, ptr %i.cd, align 4, !tbaa !83
  %i.ix = icmp slt i32 %i.iw, 2
  %i.iy = load ptr, ptr %i.ce, align 8, !tbaa !88
  %i.iz = load i64, ptr %i.cf, align 8
  %i.ja = mul i64 %i.iz, %i.cr
  %.sink.idx.i240 = select i1 %i.ix, i64 0, i64 %i.ja
  %.sink.i241 = getelementptr inbounds nuw i8, ptr %i.iy, i64 %.sink.idx.i240
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %.sink.i241, i64 %i.hn
  %i.jc = load float, ptr %i.jb, align 4, !tbaa !312
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  %i.jd = add nsw i64 %indvars.iv, 10             ; 4 uses
  %i.je = load i32, ptr %i.bi, align 4, !tbaa !83
  %i.jf = icmp slt i32 %i.je, 2
  %i.jg = load ptr, ptr %i.bj, align 8, !tbaa !88
  %i.jh = load i64, ptr %i.bk, align 8
  %i.ji = mul i64 %i.jh, %i.cn
  %.sink.idx.i244 = select i1 %i.jf, i64 0, i64 %i.ji
  %.sink.i245 = getelementptr inbounds nuw i8, ptr %i.jg, i64 %.sink.idx.i244
  %i.jj = getelementptr inbounds [12 x i8], ptr %.sink.i245, i64 %i.jd ; 2 uses
  store <2 x float> zeroinitializer, ptr %i.jj, align 4, !tbaa !312
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jj, i64 8
  store float 0.000000e+00, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !312
  %i.jk = load i32, ptr %i.bl, align 4, !tbaa !83
  %i.jl = icmp slt i32 %i.jk, 2
  %i.jm = load ptr, ptr %i.bm, align 8, !tbaa !88
  %i.jn = load i64, ptr %i.bn, align 8
  %i.jo = mul i64 %i.jn, %i.cn
  %.sink.idx.i246 = select i1 %i.jl, i64 0, i64 %i.jo
  %.sink.i247 = getelementptr inbounds nuw i8, ptr %i.jm, i64 %.sink.idx.i246
  %i.jp = getelementptr inbounds i8, ptr %.sink.i247, i64 %i.jd
  store i8 0, ptr %i.jp, align 1, !tbaa !34
  %i.jq = load i32, ptr %i.bo, align 4, !tbaa !83
  %i.jr = icmp slt i32 %i.jq, 2
  %i.js = load ptr, ptr %i.bp, align 8, !tbaa !88
  %i.jt = load i64, ptr %i.bq, align 8
  %i.ju = mul i64 %i.jt, %i.cn
  %.sink.idx.i248 = select i1 %i.jr, i64 0, i64 %i.ju
  %.sink.i249 = getelementptr inbounds nuw i8, ptr %i.js, i64 %.sink.idx.i248
  %i.jv = getelementptr inbounds [4 x i8], ptr %.sink.i249, i64 %i.jd
  store float 0.000000e+00, ptr %i.jv, align 4, !tbaa !312
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.sink316 = phi i64 [ %i.jd, %bb.am ], [ %i.hp, %bb.al ]
  %.sink314 = phi float [ 0.000000e+00, %bb.am ], [ %i.jc, %bb.al ]
  %i.jw = load i32, ptr %i.br, align 4, !tbaa !83
  %i.jx = icmp slt i32 %i.jw, 2
  %i.jy = load ptr, ptr %i.bs, align 8, !tbaa !88
  %i.jz = load i64, ptr %i.bt, align 8
  %i.ka = mul i64 %i.jz, %i.cn
  %.sink.idx.i250 = select i1 %i.jx, i64 0, i64 %i.ka
  %.sink.i251 = getelementptr inbounds nuw i8, ptr %i.jy, i64 %.sink.idx.i250
  %i.kb = getelementptr inbounds [4 x i8], ptr %.sink.i251, i64 %.sink316
  store float %.sink314, ptr %i.kb, align 4, !tbaa !312
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.ch, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %bb.ah, !llvm.loop !457

_ZN2cv6detail7GCGraphIfEC2Ejj.exit:               ; preds = %._crit_edge274.split
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.kd = load i32, ptr %i.kc, align 8, !tbaa !458
  switch i32 %i.kd, label %bb.ar [
    i32 0, label %bb.ao
    i32 1, label %bb.aq
  ]

bb.ao:                                            ; preds = %_ZN2cv6detail7GCGraphIfEC2Ejj.exit
  invoke void @_ZN2cv6detail18GraphCutSeamFinder4Impl20setGraphWeightsColorERKNS_3MatES5_S5_S5_RNS0_7GCGraphIfEE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(208) %15, ptr noundef nonnull align 8 dereferenceable(208) %16, ptr noundef nonnull align 8 dereferenceable(208) %17, ptr noundef nonnull align 8 dereferenceable(208) %18, ptr noundef nonnull align 8 dereferenceable(52) %23)
          to label %bb.aw unwind label %bb.ap

bb.ap:                                            ; preds = %bb.aw, %bb.aq, %bb.ao
  %i.ke = landingpad { ptr, i32 }
          cleanup
  br label %.body255

bb.aq:                                            ; preds = %_ZN2cv6detail7GCGraphIfEC2Ejj.exit
  invoke void @_ZN2cv6detail18GraphCutSeamFinder4Impl24setGraphWeightsColorGradERKNS_3MatES5_S5_S5_S5_S5_S5_S5_RNS0_7GCGraphIfEE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(208) %15, ptr noundef nonnull align 8 dereferenceable(208) %16, ptr noundef nonnull align 8 dereferenceable(208) %19, ptr noundef nonnull align 8 dereferenceable(208) %21, ptr noundef nonnull align 8 dereferenceable(208) %20, ptr noundef nonnull align 8 dereferenceable(208) %22, ptr noundef nonnull align 8 dereferenceable(208) %17, ptr noundef nonnull align 8 dereferenceable(208) %18, ptr noundef nonnull align 8 dereferenceable(52) %23)
          to label %bb.aw unwind label %bb.ap

bb.ar:                                            ; preds = %_ZN2cv6detail7GCGraphIfEC2Ejj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull @.str.17, ptr noundef nonnull align 1 dereferenceable(1) %25)
          to label %bb.as unwind label %bb.au

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -5, ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull @__func__._ZN2cv6detail18GraphCutSeamFinder4Impl10findInPairEmmNS_5Rect_IiEE, ptr noundef nonnull @.str.1, i32 noundef 1340) #29
          to label %bb.at unwind label %bb.av

bb.at:                                            ; preds = %bb.as
  unreachable

bb.au:                                            ; preds = %bb.ar
  %i.kf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.av:                                            ; preds = %bb.as
  %i.kg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kh = load ptr, ptr %24, align 8, !tbaa !28   ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.kj = icmp eq ptr %i.kh, %i.ki
  br i1 %i.kj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.av
  %i.kk = load i64, ptr %i.ki, align 8, !tbaa !34
  %i.kl = add i64 %i.kk, 1
  call void @_ZdlPvm(ptr noundef %i.kh, i64 noundef %i.kl) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.au
  %.pn = phi { ptr, i32 } [ %i.kf, %bb.au ], [ %i.kg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.kg, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #28
  br label %.body255

bb.aw:                                            ; preds = %bb.aq, %bb.ao
  %i.km = invoke noundef float @_ZN2cv6detail7GCGraphIfE7maxFlowEv(ptr noundef nonnull align 8 dereferenceable(52) %23)
          to label %.preheader269 unwind label %bb.ap ; 0 uses

.preheader269:                                    ; preds = %bb.aw
  %i.kn = icmp sgt i32 %.sroa.28.8.extract.trunc, 0
  br i1 %i.kn, label %.preheader.lr.ph, label %._crit_edge278.split

.preheader.lr.ph:                                 ; preds = %.preheader269
  %i.ko = icmp sgt i32 %.sroa.13.8.extract.trunc, 0
  %i.kp = getelementptr inbounds nuw i8, ptr %23, i64 8
  %26 = sub i32 %.sroa.7111.0.extract.trunc, %.sroa.7.0.copyload
  %i.kq = getelementptr inbounds nuw i8, ptr %14, i64 4 ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %14, i64 24 ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %14, i64 128 ; 2 uses
  %27 = sub i32 %.sroa.7111.0.extract.trunc, %.sroa.790.0.copyload
  %i.kt = getelementptr inbounds nuw i8, ptr %13, i64 4 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %13, i64 128 ; 2 uses
  br i1 %i.ko, label %.preheader.preheader, label %._crit_edge278.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.kw = sub i32 %.sroa.0105.0.extract.trunc, %.sroa.087.0.copyload
  %i.kx = sub i32 %.sroa.0105.0.extract.trunc, %.sroa.0.0.copyload
  %i.ky = mul i32 %.sroa.13.8.extract.trunc, 10
  %i.kz = add i32 %i.ky, 200
  %i.la = sext i32 %i.kw to i64                   ; 2 uses
  %i.lb = sext i32 %i.kx to i64                   ; 2 uses
  %wide.trip.count = and i64 %4, 2147483647
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge276
  %indvars.iv286 = phi i32 [ %i.kz, %.preheader.preheader ], [ %indvars.iv.next287, %._crit_edge276 ] ; 2 uses
  %.0142277 = phi i32 [ 0, %.preheader.preheader ], [ %34, %._crit_edge276 ] ; 4 uses
  %28 = add nsw i32 %26, %.0142277
  %29 = sext i32 %28 to i64                       ; 2 uses
  %30 = add nsw i32 %27, %.0142277
  %31 = sext i32 %30 to i64                       ; 2 uses
  %i.lc = icmp sgt i32 %indvars.iv286, -11
  br i1 %i.lc, label %.preheader.split, label %bb.ba

.preheader.split:                                 ; preds = %.preheader
  %32 = add nuw nsw i32 %.0142277, 10
  %33 = mul nuw nsw i32 %32, %i.z
  %narrow = add nuw i32 %33, 10
  %invariant.op = zext i32 %narrow to i64
  br label %bb.az

._crit_edge278.split:                             ; preds = %._crit_edge276, %.preheader.lr.ph, %.preheader269
  %i.ld = getelementptr inbounds nuw i8, ptr %23, i64 24
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !448 ; 3 uses
  %.not.i.i.i.i252 = icmp eq ptr %i.le, null
  br i1 %.not.i.i.i.i252, label %_ZNSt6vectorIN2cv6detail7GCGraphIfE4EdgeESaIS4_EED2Ev.exit.i253, label %bb.ax

bb.ax:                                            ; preds = %._crit_edge278.split
  %i.lf = getelementptr inbounds nuw i8, ptr %23, i64 40
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !450
  %i.lh = ptrtoint ptr %i.lg to i64
  %i.li = ptrtoint ptr %i.le to i64
  %i.lj = sub i64 %i.lh, %i.li
  call void @_ZdlPvm(ptr noundef nonnull %i.le, i64 noundef %i.lj) #27
  br label %_ZNSt6vectorIN2cv6detail7GCGraphIfE4EdgeESaIS4_EED2Ev.exit.i253

_ZNSt6vectorIN2cv6detail7GCGraphIfE4EdgeESaIS4_EED2Ev.exit.i253: ; preds = %bb.ax, %._crit_edge278.split
  %i.lk = load ptr, ptr %23, align 8, !tbaa !418  ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.lk, null
  br i1 %.not.i.i.i1.i, label %_ZN2cv6detail7GCGraphIfED2Ev.exit, label %bb.ay

bb.ay:                                            ; preds = %_ZNSt6vectorIN2cv6detail7GCGraphIfE4EdgeESaIS4_EED2Ev.exit.i253
  %i.ll = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !417
  %i.ln = ptrtoint ptr %i.lm to i64
  %i.lo = ptrtoint ptr %i.lk to i64
  %i.lp = sub i64 %i.ln, %i.lo
  call void @_ZdlPvm(ptr noundef nonnull %i.lk, i64 noundef %i.lp) #27
  br label %_ZN2cv6detail7GCGraphIfED2Ev.exit

_ZN2cv6detail7GCGraphIfED2Ev.exit:                ; preds = %_ZNSt6vectorIN2cv6detail7GCGraphIfE4EdgeESaIS4_EED2Ev.exit.i253, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %22) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %21) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %20) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %19) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %18) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %16) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %15) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %14) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  ret void

._crit_edge276:                                   ; preds = %bb.bj
  %34 = add nuw nsw i32 %.0142277, 1              ; 2 uses
  %35 = icmp slt i32 %34, %.sroa.28.8.extract.trunc
  %indvars.iv.next287 = add i32 %indvars.iv286, %i.z
  br i1 %35, label %.preheader, label %._crit_edge278.split, !llvm.loop !459

bb.az:                                            ; preds = %.preheader.split, %bb.bj
  %indvars.iv288 = phi i64 [ 0, %.preheader.split ], [ %indvars.iv.next289, %bb.bj ] ; 5 uses
  %.reass = add nuw nsw i64 %indvars.iv288, %invariant.op ; 2 uses
  %i.lq = load ptr, ptr %i.kp, align 8, !tbaa !413
  %i.lr = load ptr, ptr %23, align 8, !tbaa !418  ; 2 uses
  %i.ls = ptrtoint ptr %i.lq to i64
  %i.lt = ptrtoint ptr %i.lr to i64
  %i.lu = sub i64 %i.ls, %i.lt
  %sext = shl i64 %i.lu, 27
  %i.lv = ashr i64 %sext, 32
  %i.lw = icmp slt i64 %.reass, %i.lv
  br i1 %i.lw, label %bb.bd, label %bb.ba

bb.ba:                                            ; preds = %.preheader, %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.29, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %.noexc unwind label %bb.bg

.noexc:                                           ; preds = %bb.ba
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZN2cv6detail7GCGraphIfE15inSourceSegmentEi, ptr noundef nonnull @.str.30, i32 noundef 386) #29
          to label %bb.bb unwind label %bb.bc

bb.bb:                                            ; preds = %.noexc
  unreachable

bb.bc:                                            ; preds = %.noexc
  %i.lx = landingpad { ptr, i32 }
          cleanup
  %i.ly = load ptr, ptr %5, align 8, !tbaa !28    ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ma = icmp eq ptr %i.ly, %i.lz
  br i1 %i.ma, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.bc
  %i.mb = load i64, ptr %i.lz, align 8, !tbaa !34
  %i.mc = add i64 %i.mb, 1
  call void @_ZdlPvm(ptr noundef %i.ly, i64 noundef %i.mc) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %.body255

bb.bd:                                            ; preds = %bb.az
  %i.md = getelementptr inbounds nuw [32 x i8], ptr %i.lr, i64 %.reass
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 28
  %i.mf = load i8, ptr %i.me, align 4, !tbaa !460
  %i.mg = icmp eq i8 %i.mf, 0
  br i1 %i.mg, label %bb.be, label %bb.bh

bb.be:                                            ; preds = %bb.bd
  %i.mh = load i32, ptr %i.kt, align 4, !tbaa !83
  %i.mi = icmp slt i32 %i.mh, 2
  %i.mj = load ptr, ptr %i.ku, align 8, !tbaa !88
  %i.mk = load i64, ptr %i.kv, align 8
  %i.ml = mul i64 %i.mk, %31
  %.sink.idx.i257 = select i1 %i.mi, i64 0, i64 %i.ml
  %.sink.i258 = getelementptr inbounds nuw i8, ptr %i.mj, i64 %.sink.idx.i257
  %i.mm = getelementptr i8, ptr %.sink.i258, i64 %indvars.iv288
  %i.mn = getelementptr i8, ptr %i.mm, i64 %i.la
  %i.mo = load i8, ptr %i.mn, align 1, !tbaa !34
  %.not171 = icmp eq i8 %i.mo, 0
  br i1 %.not171, label %bb.bj, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.mp = load i32, ptr %i.kq, align 4, !tbaa !83
  %i.mq = icmp slt i32 %i.mp, 2
  %i.mr = load ptr, ptr %i.kr, align 8, !tbaa !88
  %i.ms = load i64, ptr %i.ks, align 8
  %i.mt = mul i64 %i.ms, %29
  %.sink.idx.i259 = select i1 %i.mq, i64 0, i64 %i.mt
  %.sink.i260 = getelementptr inbounds nuw i8, ptr %i.mr, i64 %.sink.idx.i259
  br label %.sink.split

bb.bg:                                            ; preds = %bb.ba
  %i.mu = landingpad { ptr, i32 }
          cleanup
  br label %.body255

bb.bh:                                            ; preds = %bb.bd
  %i.mv = load i32, ptr %i.kq, align 4, !tbaa !83
  %i.mw = icmp slt i32 %i.mv, 2
  %i.mx = load ptr, ptr %i.kr, align 8, !tbaa !88
  %i.my = load i64, ptr %i.ks, align 8
  %i.mz = mul i64 %i.my, %29
  %.sink.idx.i261 = select i1 %i.mw, i64 0, i64 %i.mz
  %.sink.i262 = getelementptr inbounds nuw i8, ptr %i.mx, i64 %.sink.idx.i261
  %i.na = getelementptr i8, ptr %.sink.i262, i64 %indvars.iv288
  %i.nb = getelementptr i8, ptr %i.na, i64 %i.lb
  %i.nc = load i8, ptr %i.nb, align 1, !tbaa !34
  %.not = icmp eq i8 %i.nc, 0
  br i1 %.not, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.nd = load i32, ptr %i.kt, align 4, !tbaa !83
  %i.ne = icmp slt i32 %i.nd, 2
  %i.nf = load ptr, ptr %i.ku, align 8, !tbaa !88
  %i.ng = load i64, ptr %i.kv, align 8
  %i.nh = mul i64 %i.ng, %31
  %.sink.idx.i263 = select i1 %i.ne, i64 0, i64 %i.nh
  %.sink.i264 = getelementptr inbounds nuw i8, ptr %i.nf, i64 %.sink.idx.i263
  br label %.sink.split

.sink.split:                                      ; preds = %bb.bi, %bb.bf
  %.sink.i260.sink = phi ptr [ %.sink.i260, %bb.bf ], [ %.sink.i264, %bb.bi ]
  %.sink324 = phi i64 [ %i.lb, %bb.bf ], [ %i.la, %bb.bi ]
  %i.ni = getelementptr i8, ptr %.sink.i260.sink, i64 %indvars.iv288
  %i.nj = getelementptr i8, ptr %i.ni, i64 %.sink324
  store i8 0, ptr %i.nj, align 1, !tbaa !34
  br label %bb.bj

bb.bj:                                            ; preds = %.sink.split, %bb.be, %bb.bh
  %indvars.iv.next289 = add nuw nsw i64 %indvars.iv288, 1 ; 2 uses
  %exitcond291.not = icmp eq i64 %indvars.iv.next289, %wide.trip.count
  br i1 %exitcond291.not, label %._crit_edge276, label %bb.az, !llvm.loop !461

.body255:                                         ; preds = %bb.bg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.ap
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ke, %bb.ap ], [ %i.mu, %bb.bg ], [ %i.lx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ]
  call void @_ZN2cv6detail7GCGraphIfED2Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %23) #28
  br label %.body

.body:                                            ; preds = %bb.r, %_ZNSt6vectorIN2cv6detail7GCGraphIfE4EdgeESaIS4_EED2Ev.exit.i, %.body255
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body255 ], [ %i.cy, %_ZNSt6vectorIN2cv6detail7GCGraphIfE4EdgeESaIS4_EED2Ev.exit.i ], [ %i.cy, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %22) #28
  br label %bb.bk

bb.bk:                                            ; preds = %.body, %bb.ag
  %.pn175.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %.body ], [ %i.ea, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %21) #28
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.af
  %.pn175.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn175.pn.pn.pn, %bb.bk ], [ %i.dz, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %20) #28
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.ae
  %.pn175.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn175.pn.pn.pn.pn, %bb.bl ], [ %i.dy, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %19) #28
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.ad
  %.pn175.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn175.pn.pn.pn.pn.pn, %bb.bm ], [ %i.dx, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %18) #28
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.ac
  %.pn175.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn175.pn.pn.pn.pn.pn.pn, %bb.bn ], [ %i.dw, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #28
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.ab
  %.pn175.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn175.pn.pn.pn.pn.pn.pn.pn, %bb.bo ], [ %i.dv, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %16) #28
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.aa
  %.pn175.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn175.pn.pn.pn.pn.pn.pn.pn.pn, %bb.bp ], [ %i.du, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %15) #28
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.z
  %.pn175.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn175.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.bq ], [ %i.dt, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %14) #28
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.y
  %.pn175.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn175.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.br ], [ %i.ds, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #28
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.x
  %.pn175.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn175.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.bs ], [ %i.dr, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #28
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.w
  %.pn175.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn175.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.bt ], [ %i.dq, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #28
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.v
  %.pn175.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn175.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.bu ], [ %i.dp, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #28
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.u
  %.pn175.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn175.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.bv ], [ %i.do, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #28
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.t
  %.pn175.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn175.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.bw ], [ %i.dn, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #28
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.s
  %.pn175.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn175.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.bx ], [ %i.dm, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  resume { ptr, i32 } %.pn175.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

declare void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef float @_ZN2cv6detail7GCGraphIfE7maxFlowEv(ptr noundef nonnull align 8 dereferenceable(52) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %2 = alloca %"class.std::allocator", align 1    ; 3 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %5 = alloca %"class.cv::detail::GCGraph<float>::Vtx", align 8 ; 17 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator", align 1    ; 3 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::allocator", align 1    ; 3 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::allocator", align 1   ; 3 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !462    ; 18 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !462  ; 2 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.35, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @__func__._ZN2cv6detail7GCGraphIfE7maxFlowEv, ptr noundef nonnull @.str.30, i32 noundef 158) #29
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.g = load ptr, ptr %1, align 8, !tbaa !28     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.j = load i64, ptr %i.h, align 8, !tbaa !34
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn241 = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.f, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br label %bb.ct

bb.g:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !463  ; 22 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !463
  %i.p = icmp eq ptr %i.m, %i.o
  br i1 %i.p, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.36, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZN2cv6detail7GCGraphIfE7maxFlowEv, ptr noundef nonnull @.str.30, i32 noundef 159) #29
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247

bb.l:                                             ; preds = %bb.i
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = load ptr, ptr %3, align 8, !tbaa !28     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245: ; preds = %bb.l
  %i.v = load i64, ptr %i.t, align 8, !tbaa !34
end_hunk_1
