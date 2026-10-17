Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/seam_finders?download=true
inline.NumInlined: 2970
inline.NumDeleted: 1133
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN2cv6detail18GraphCutSeamFinder4Impl24setGraphWeightsColorGradERKNS_3MatES5_S5_S5_S5_S5_S5_S5_RNS0_7GCGraphIfEE:bb.a
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !30
  %.not121 = icmp eq i8 %i.hw, 0
  br i1 %.not121, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v, %bb.u
  %i.hx = load float, ptr %i.bc, align 8, !tbaa !197
  %i.hy = fadd float %i.he, %i.hx
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.0114 = phi float [ %i.he, %bb.x ], [ %i.hy, %bb.y ] ; 2 uses
  %i.hz = add nuw nsw i32 %i.ej, 1
  %i.ia = trunc nuw i64 %i.ei to i32
  tail call void @_ZN2cv6detail7GCGraphIfE8addEdgesEiiff(ptr noundef nonnull align 8 dereferenceable(52) %9, i32 noundef %i.ia, i32 noundef %i.hz, float noundef %.0114, float noundef %.0114)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.t
  br i1 %i.eg, label %bb.ab, label %bb.ah

bb.ab:                                            ; preds = %bb.aa
  %i.ib = load i32, ptr %i.bd, align 4, !tbaa !63
  %i.ic = icmp slt i32 %i.ib, 2                   ; 2 uses
  %i.id = load ptr, ptr %i.be, align 8, !tbaa !64 ; 2 uses
  %i.ie = load i64, ptr %i.bf, align 8            ; 2 uses
  %i.if = mul i64 %i.ie, %indvars.iv201
  %.sink.idx.i157 = select i1 %i.ic, i64 0, i64 %i.if
  %.sink.i158 = getelementptr inbounds nuw i8, ptr %i.id, i64 %.sink.idx.i157
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %.sink.i158, i64 %indvars.iv196
  %i.ih = load float, ptr %i.ig, align 4, !tbaa !156
  %i.ii = mul i64 %i.ie, %indvars.iv.next202
  %.sink.idx.i159 = select i1 %i.ic, i64 0, i64 %i.ii
  %.sink.i160 = getelementptr inbounds nuw i8, ptr %i.id, i64 %.sink.idx.i159
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %.sink.i160, i64 %indvars.iv196
  %i.ik = load float, ptr %i.ij, align 4, !tbaa !156
  %i.il = fadd float %i.ih, %i.ik
  %i.im = load i32, ptr %i.bg, align 4, !tbaa !63
  %i.in = icmp slt i32 %i.im, 2                   ; 2 uses
  %i.io = load ptr, ptr %i.bh, align 8, !tbaa !64 ; 2 uses
  %i.ip = load i64, ptr %i.bi, align 8            ; 2 uses
  %i.iq = mul i64 %i.ip, %indvars.iv201
  %.sink.idx.i161 = select i1 %i.in, i64 0, i64 %i.iq
  %.sink.i162 = getelementptr inbounds nuw i8, ptr %i.io, i64 %.sink.idx.i161
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %.sink.i162, i64 %indvars.iv196
  %i.is = load float, ptr %i.ir, align 4, !tbaa !156
  %i.it = fadd float %i.il, %i.is
  %i.iu = mul i64 %i.ip, %indvars.iv.next202
  %.sink.idx.i163 = select i1 %i.in, i64 0, i64 %i.iu
  %.sink.i164 = getelementptr inbounds nuw i8, ptr %i.io, i64 %.sink.idx.i163
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %.sink.i164, i64 %indvars.iv196
  %i.iw = load float, ptr %i.iv, align 4, !tbaa !156
  %i.ix = fadd float %i.it, %i.iw
  %i.iy = fadd float %i.ix, 1.000000e+00
  %i.iz = load i32, ptr %i.aq, align 4, !tbaa !63
  %i.ja = icmp slt i32 %i.iz, 2                   ; 2 uses
  %i.jb = load ptr, ptr %i.ar, align 8, !tbaa !64 ; 2 uses
  %i.jc = load i64, ptr %i.as, align 8            ; 2 uses
  %i.jd = mul i64 %i.jc, %indvars.iv201
  %.sink.idx.i165 = select i1 %i.ja, i64 0, i64 %i.jd
  %.sink.i166 = getelementptr inbounds nuw i8, ptr %i.jb, i64 %.sink.idx.i165
  %i.je = getelementptr inbounds nuw [12 x i8], ptr %.sink.i166, i64 %indvars.iv196 ; 3 uses
  %i.jf = load i32, ptr %i.at, align 4, !tbaa !63
  %i.jg = icmp slt i32 %i.jf, 2                   ; 2 uses
  %i.jh = load ptr, ptr %i.au, align 8, !tbaa !64 ; 2 uses
  %i.ji = load i64, ptr %i.av, align 8            ; 2 uses
  %i.jj = mul i64 %i.ji, %indvars.iv201
  %.sink.idx.i167 = select i1 %i.jg, i64 0, i64 %i.jj
  %.sink.i168 = getelementptr inbounds nuw i8, ptr %i.jh, i64 %.sink.idx.i167
  %i.jk = getelementptr inbounds nuw [12 x i8], ptr %.sink.i168, i64 %indvars.iv196 ; 3 uses
  %i.jl = load float, ptr %i.je, align 4, !tbaa !165
  %i.jm = load float, ptr %i.jk, align 4, !tbaa !165
  %i.jn = fsub float %i.jl, %i.jm                 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.je, i64 4
  %i.jp = load float, ptr %i.jo, align 4, !tbaa !166
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jk, i64 4
  %i.jr = load float, ptr %i.jq, align 4, !tbaa !166
  %i.js = fsub float %i.jp, %i.jr                 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.je, i64 8
  %i.ju = load float, ptr %i.jt, align 4, !tbaa !167
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jk, i64 8
  %i.jw = load float, ptr %i.jv, align 4, !tbaa !167
  %i.jx = fsub float %i.ju, %i.jw                 ; 2 uses
  %i.jy = fmul float %i.js, %i.js
  %i.jz = tail call float @llvm.fmuladd.f32(float %i.jn, float %i.jn, float %i.jy)
  %i.ka = tail call noundef float @llvm.fmuladd.f32(float %i.jx, float %i.jx, float %i.jz)
  %i.kb = mul i64 %i.jc, %indvars.iv.next202
  %.sink.idx.i169 = select i1 %i.ja, i64 0, i64 %i.kb
  %.sink.i170 = getelementptr inbounds nuw i8, ptr %i.jb, i64 %.sink.idx.i169
  %i.kc = getelementptr inbounds nuw [12 x i8], ptr %.sink.i170, i64 %indvars.iv196 ; 3 uses
  %i.kd = mul i64 %i.ji, %indvars.iv.next202
  %.sink.idx.i171 = select i1 %i.jg, i64 0, i64 %i.kd
  %.sink.i172 = getelementptr inbounds nuw i8, ptr %i.jh, i64 %.sink.idx.i171
  %i.ke = getelementptr inbounds nuw [12 x i8], ptr %.sink.i172, i64 %indvars.iv196 ; 3 uses
  %i.kf = load float, ptr %i.kc, align 4, !tbaa !165
  %i.kg = load float, ptr %i.ke, align 4, !tbaa !165
  %i.kh = fsub float %i.kf, %i.kg                 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kc, i64 4
  %i.kj = load float, ptr %i.ki, align 4, !tbaa !166
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ke, i64 4
  %i.kl = load float, ptr %i.kk, align 4, !tbaa !166
  %i.km = fsub float %i.kj, %i.kl                 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kc, i64 8
  %i.ko = load float, ptr %i.kn, align 4, !tbaa !167
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ke, i64 8
  %i.kq = load float, ptr %i.kp, align 4, !tbaa !167
  %i.kr = fsub float %i.ko, %i.kq                 ; 2 uses
  %i.ks = fmul float %i.km, %i.km
  %i.kt = tail call float @llvm.fmuladd.f32(float %i.kh, float %i.kh, float %i.ks)
  %i.ku = tail call noundef float @llvm.fmuladd.f32(float %i.kr, float %i.kr, float %i.kt)
  %i.kv = fadd float %i.ka, %i.ku
  %i.kw = fdiv float %i.kv, %i.iy
  %i.kx = fadd float %i.kw, 1.000000e+00          ; 2 uses
  %i.ky = load i32, ptr %i.aw, align 4, !tbaa !63
  %i.kz = icmp slt i32 %i.ky, 2                   ; 2 uses
  %i.la = load ptr, ptr %i.ax, align 8, !tbaa !64 ; 2 uses
  %i.lb = load i64, ptr %i.ay, align 8            ; 2 uses
  %i.lc = mul i64 %i.lb, %indvars.iv201
  %.sink.idx.i173 = select i1 %i.kz, i64 0, i64 %i.lc
  %.sink.i174 = getelementptr inbounds nuw i8, ptr %i.la, i64 %.sink.idx.i173
  %i.ld = getelementptr inbounds nuw i8, ptr %.sink.i174, i64 %indvars.iv196
  %i.le = load i8, ptr %i.ld, align 1, !tbaa !30
  %.not122 = icmp eq i8 %i.le, 0
  br i1 %.not122, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.lf = mul i64 %i.lb, %indvars.iv.next202
  %.sink.idx.i175 = select i1 %i.kz, i64 0, i64 %i.lf
  %.sink.i176 = getelementptr inbounds nuw i8, ptr %i.la, i64 %.sink.idx.i175
  %i.lg = getelementptr inbounds nuw i8, ptr %.sink.i176, i64 %indvars.iv196
  %i.lh = load i8, ptr %i.lg, align 1, !tbaa !30
  %.not123 = icmp eq i8 %i.lh, 0
  br i1 %.not123, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.li = load i32, ptr %i.az, align 4, !tbaa !63
  %i.lj = icmp slt i32 %i.li, 2                   ; 2 uses
  %i.lk = load ptr, ptr %i.ba, align 8, !tbaa !64 ; 2 uses
  %i.ll = load i64, ptr %i.bb, align 8            ; 2 uses
  %i.lm = mul i64 %i.ll, %indvars.iv201
  %.sink.idx.i177 = select i1 %i.lj, i64 0, i64 %i.lm
  %.sink.i178 = getelementptr inbounds nuw i8, ptr %i.lk, i64 %.sink.idx.i177
  %i.ln = getelementptr inbounds nuw i8, ptr %.sink.i178, i64 %indvars.iv196
  %i.lo = load i8, ptr %i.ln, align 1, !tbaa !30
  %.not124 = icmp eq i8 %i.lo, 0
  br i1 %.not124, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.lp = mul i64 %i.ll, %indvars.iv.next202
  %.sink.idx.i179 = select i1 %i.lj, i64 0, i64 %i.lp
  %.sink.i180 = getelementptr inbounds nuw i8, ptr %i.lk, i64 %.sink.idx.i179
  %i.lq = getelementptr inbounds nuw i8, ptr %.sink.i180, i64 %indvars.iv196
  %i.lr = load i8, ptr %i.lq, align 1, !tbaa !30
  %.not125 = icmp eq i8 %i.lr, 0
  br i1 %.not125, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.ab
  %i.ls = load float, ptr %i.bc, align 8, !tbaa !197
  %i.lt = fadd float %i.kx, %i.ls
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.0 = phi float [ %i.kx, %bb.ae ], [ %i.lt, %bb.af ] ; 2 uses
  %i.lu = add nuw nsw i32 %i.ej, %i.r
  %i.lv = trunc nuw i64 %i.ei to i32
  tail call void @_ZN2cv6detail7GCGraphIfE8addEdgesEiiff(ptr noundef nonnull align 8 dereferenceable(52) %9, i32 noundef %i.lv, i32 noundef %i.lu, float noundef %.0, float noundef %.0)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.aa
  %indvars.iv.next197 = add nuw nsw i64 %indvars.iv196, 1 ; 2 uses
  %exitcond200.not = icmp eq i64 %indvars.iv.next197, %i.bm
  br i1 %exitcond200.not, label %._crit_edge187, label %bb.t, !llvm.loop !447
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
  %.sroa.28.8.extract.shift = lshr i64 %4, 32     ; 2 uses
  %.sroa.28.8.extract.trunc = trunc nuw i64 %.sroa.28.8.extract.shift to i32 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39
  %i.c = getelementptr inbounds nuw [184 x i8], ptr %i.b, i64 %1
  call void @_ZNK2cv4UMat6getMatENS_10AccessFlagE(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %7, ptr noundef nonnull align 8 dereferenceable(184) %i.c, i32 noundef 16777216)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !39
  %i.e = getelementptr inbounds nuw [184 x i8], ptr %i.d, i64 %2
  invoke void @_ZNK2cv4UMat6getMatENS_10AccessFlagE(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %8, ptr noundef nonnull align 8 dereferenceable(184) %i.e, i32 noundef 16777216)
          to label %bb.b unwind label %bb.s

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !122
  %i.h = getelementptr inbounds nuw [208 x i8], ptr %i.g, i64 %1
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %9, ptr noundef nonnull align 8 dereferenceable(208) %i.h)
          to label %bb.c unwind label %bb.t

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !122
  %i.j = getelementptr inbounds nuw [208 x i8], ptr %i.i, i64 %2
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %10, ptr noundef nonnull align 8 dereferenceable(208) %i.j)
          to label %bb.d unwind label %bb.u

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !122
  %i.m = getelementptr inbounds nuw [208 x i8], ptr %i.l, i64 %1
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %11, ptr noundef nonnull align 8 dereferenceable(208) %i.m)
          to label %bb.e unwind label %bb.v

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !122
  %i.o = getelementptr inbounds nuw [208 x i8], ptr %i.n, i64 %2
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %12, ptr noundef nonnull align 8 dereferenceable(208) %i.o)
          to label %bb.f unwind label %bb.w

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !39
  %i.r = getelementptr inbounds nuw [184 x i8], ptr %i.q, i64 %1
  invoke void @_ZNK2cv4UMat6getMatENS_10AccessFlagE(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %13, ptr noundef nonnull align 8 dereferenceable(184) %i.r, i32 noundef 50331648)
          to label %bb.g unwind label %bb.x

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !39
  %i.t = getelementptr inbounds nuw [184 x i8], ptr %i.s, i64 %2
  invoke void @_ZNK2cv4UMat6getMatENS_10AccessFlagE(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %14, ptr noundef nonnull align 8 dereferenceable(184) %i.t, i32 noundef 50331648)
          to label %bb.h unwind label %bb.y

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !47   ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %1 ; 2 uses
  %.sroa.087.0.copyload = load i32, ptr %i.w, align 4, !tbaa !48 ; 2 uses
  %.sroa.790.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %.sroa.790.0.copyload = load i32, ptr %.sroa.790.0..sroa_idx, align 4, !tbaa !48 ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %2 ; 2 uses
  %.sroa.0.0.copyload = load i32, ptr %i.x, align 4, !tbaa !48 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %.sroa.7.0.copyload = load i32, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !48 ; 2 uses
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
  store float %.sink, ptr %i.hb, align 4, !tbaa !156
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
  %i.hi = load i32, ptr %i.bu, align 4, !tbaa !63
  %i.hj = icmp slt i32 %i.hi, 2
  %i.hk = load ptr, ptr %i.bv, align 8, !tbaa !64
  %i.hl = load i64, ptr %i.bw, align 8
  %i.hm = mul i64 %i.hl, %i.cr
  %.sink.idx.i228 = select i1 %i.hj, i64 0, i64 %i.hm
  %.sink.i229 = getelementptr inbounds nuw i8, ptr %i.hk, i64 %.sink.idx.i228
  %i.hn = zext nneg i32 %i.hc to i64              ; 4 uses
  %i.ho = getelementptr inbounds nuw [12 x i8], ptr %.sink.i229, i64 %i.hn
  %i.hp = add nsw i64 %indvars.iv, 10             ; 4 uses
  %i.hq = load i32, ptr %i.bi, align 4, !tbaa !63
  %i.hr = icmp slt i32 %i.hq, 2
  %i.hs = load ptr, ptr %i.bj, align 8, !tbaa !64
  %i.ht = load i64, ptr %i.bk, align 8
  %i.hu = mul i64 %i.ht, %i.cn
  %.sink.idx.i230 = select i1 %i.hr, i64 0, i64 %i.hu
  %.sink.i231 = getelementptr inbounds nuw i8, ptr %i.hs, i64 %.sink.idx.i230
  %i.hv = getelementptr inbounds [12 x i8], ptr %.sink.i231, i64 %i.hp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.hv, ptr noundef nonnull align 4 dereferenceable(12) %i.ho, i64 12, i1 false), !tbaa.struct !452
  %i.hw = load i32, ptr %i.bx, align 4, !tbaa !63
  %i.hx = icmp slt i32 %i.hw, 2
  %i.hy = load ptr, ptr %i.by, align 8, !tbaa !64
  %i.hz = load i64, ptr %i.bz, align 8
  %i.ia = mul i64 %i.hz, %i.cr
  %.sink.idx.i232 = select i1 %i.hx, i64 0, i64 %i.ia
  %.sink.i233 = getelementptr inbounds nuw i8, ptr %i.hy, i64 %.sink.idx.i232
  %i.ib = getelementptr inbounds nuw i8, ptr %.sink.i233, i64 %i.hn
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !30
  %i.id = load i32, ptr %i.bl, align 4, !tbaa !63
  %i.ie = icmp slt i32 %i.id, 2
  %i.if = load ptr, ptr %i.bm, align 8, !tbaa !64
  %i.ig = load i64, ptr %i.bn, align 8
  %i.ih = mul i64 %i.ig, %i.cn
  %.sink.idx.i234 = select i1 %i.ie, i64 0, i64 %i.ih
  %.sink.i235 = getelementptr inbounds nuw i8, ptr %i.if, i64 %.sink.idx.i234
  %i.ii = getelementptr inbounds i8, ptr %.sink.i235, i64 %i.hp
  store i8 %i.ic, ptr %i.ii, align 1, !tbaa !30
  %i.ij = load i32, ptr %i.ca, align 4, !tbaa !63
  %i.ik = icmp slt i32 %i.ij, 2
  %i.il = load ptr, ptr %i.cb, align 8, !tbaa !64
  %i.im = load i64, ptr %i.cc, align 8
  %i.in = mul i64 %i.im, %i.cr
  %.sink.idx.i236 = select i1 %i.ik, i64 0, i64 %i.in
  %.sink.i237 = getelementptr inbounds nuw i8, ptr %i.il, i64 %.sink.idx.i236
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %.sink.i237, i64 %i.hn
  %i.ip = load float, ptr %i.io, align 4, !tbaa !156
  %i.iq = load i32, ptr %i.bo, align 4, !tbaa !63
  %i.ir = icmp slt i32 %i.iq, 2
  %i.is = load ptr, ptr %i.bp, align 8, !tbaa !64
  %i.it = load i64, ptr %i.bq, align 8
  %i.iu = mul i64 %i.it, %i.cn
  %.sink.idx.i238 = select i1 %i.ir, i64 0, i64 %i.iu
  %.sink.i239 = getelementptr inbounds nuw i8, ptr %i.is, i64 %.sink.idx.i238
  %i.iv = getelementptr inbounds [4 x i8], ptr %.sink.i239, i64 %i.hp
  store float %i.ip, ptr %i.iv, align 4, !tbaa !156
  %i.iw = load i32, ptr %i.cd, align 4, !tbaa !63
  %i.ix = icmp slt i32 %i.iw, 2
  %i.iy = load ptr, ptr %i.ce, align 8, !tbaa !64
  %i.iz = load i64, ptr %i.cf, align 8
  %i.ja = mul i64 %i.iz, %i.cr
  %.sink.idx.i240 = select i1 %i.ix, i64 0, i64 %i.ja
  %.sink.i241 = getelementptr inbounds nuw i8, ptr %i.iy, i64 %.sink.idx.i240
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %.sink.i241, i64 %i.hn
  %i.jc = load float, ptr %i.jb, align 4, !tbaa !156
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  %i.jd = add nsw i64 %indvars.iv, 10             ; 4 uses
  %i.je = load i32, ptr %i.bi, align 4, !tbaa !63
  %i.jf = icmp slt i32 %i.je, 2
  %i.jg = load ptr, ptr %i.bj, align 8, !tbaa !64
  %i.jh = load i64, ptr %i.bk, align 8
  %i.ji = mul i64 %i.jh, %i.cn
  %.sink.idx.i244 = select i1 %i.jf, i64 0, i64 %i.ji
  %.sink.i245 = getelementptr inbounds nuw i8, ptr %i.jg, i64 %.sink.idx.i244
  %i.jj = getelementptr inbounds [12 x i8], ptr %.sink.i245, i64 %i.jd ; 2 uses
  store <2 x float> zeroinitializer, ptr %i.jj, align 4, !tbaa !156
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jj, i64 8
  store float 0.000000e+00, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !156
  %i.jk = load i32, ptr %i.bl, align 4, !tbaa !63
  %i.jl = icmp slt i32 %i.jk, 2
  %i.jm = load ptr, ptr %i.bm, align 8, !tbaa !64
  %i.jn = load i64, ptr %i.bn, align 8
  %i.jo = mul i64 %i.jn, %i.cn
  %.sink.idx.i246 = select i1 %i.jl, i64 0, i64 %i.jo
  %.sink.i247 = getelementptr inbounds nuw i8, ptr %i.jm, i64 %.sink.idx.i246
  %i.jp = getelementptr inbounds i8, ptr %.sink.i247, i64 %i.jd
  store i8 0, ptr %i.jp, align 1, !tbaa !30
  %i.jq = load i32, ptr %i.bo, align 4, !tbaa !63
  %i.jr = icmp slt i32 %i.jq, 2
  %i.js = load ptr, ptr %i.bp, align 8, !tbaa !64
  %i.jt = load i64, ptr %i.bq, align 8
  %i.ju = mul i64 %i.jt, %i.cn
  %.sink.idx.i248 = select i1 %i.jr, i64 0, i64 %i.ju
  %.sink.i249 = getelementptr inbounds nuw i8, ptr %i.js, i64 %.sink.idx.i248
  %i.jv = getelementptr inbounds [4 x i8], ptr %.sink.i249, i64 %i.jd
  store float 0.000000e+00, ptr %i.jv, align 4, !tbaa !156
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.sink316 = phi i64 [ %i.jd, %bb.am ], [ %i.hp, %bb.al ]
  %.sink314 = phi float [ 0.000000e+00, %bb.am ], [ %i.jc, %bb.al ]
  %i.jw = load i32, ptr %i.br, align 4, !tbaa !63
  %i.jx = icmp slt i32 %i.jw, 2
  %i.jy = load ptr, ptr %i.bs, align 8, !tbaa !64
  %i.jz = load i64, ptr %i.bt, align 8
  %i.ka = mul i64 %i.jz, %i.cn
  %.sink.idx.i250 = select i1 %i.jx, i64 0, i64 %i.ka
  %.sink.i251 = getelementptr inbounds nuw i8, ptr %i.jy, i64 %.sink.idx.i250
  %i.kb = getelementptr inbounds [4 x i8], ptr %.sink.i251, i64 %.sink316
  store float %.sink314, ptr %i.kb, align 4, !tbaa !156
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.ch, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %bb.ah, !llvm.loop !449

_ZN2cv6detail7GCGraphIfEC2Ejj.exit:               ; preds = %._crit_edge274.split
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.kd = load i32, ptr %i.kc, align 8, !tbaa !201
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
  %i.kh = load ptr, ptr %24, align 8, !tbaa !29   ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.kj = icmp eq ptr %i.kh, %i.ki
  br i1 %i.kj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.av
  %i.kk = load i64, ptr %i.ki, align 8, !tbaa !30
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
  %i.kq = getelementptr inbounds nuw i8, ptr %14, i64 4 ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %14, i64 24 ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %14, i64 128 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %13, i64 4 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %13, i64 128 ; 2 uses
  br i1 %i.ko, label %.preheader.preheader, label %._crit_edge278.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.kw = sub i32 %.sroa.0105.0.extract.trunc, %.sroa.087.0.copyload
  %26 = sub i32 %.sroa.7111.0.extract.trunc, %.sroa.790.0.copyload
  %i.kx = sub i32 %.sroa.0105.0.extract.trunc, %.sroa.0.0.copyload
  %27 = sub i32 %.sroa.7111.0.extract.trunc, %.sroa.7.0.copyload
  %i.ky = mul i32 %.sroa.13.8.extract.trunc, 10
  %i.kz = add i32 %i.ky, 200
  %28 = sext i32 %i.kw to i64                     ; 2 uses
  %29 = sext i32 %i.kx to i64                     ; 2 uses
  %30 = zext nneg i32 %i.z to i64
  %i.la = sext i32 %26 to i64
  %i.lb = sext i32 %27 to i64
  %wide.trip.count = and i64 %4, 2147483647
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge276
  %indvars.iv292 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next293, %._crit_edge276 ] ; 4 uses
  %indvars.iv286 = phi i32 [ %i.kz, %.preheader.preheader ], [ %indvars.iv.next287, %._crit_edge276 ] ; 2 uses
  %31 = add nuw nsw i64 %indvars.iv292, 10
  %32 = mul nuw nsw i64 %31, %30
  %33 = add nsw i64 %indvars.iv292, %i.lb         ; 2 uses
  %34 = add nsw i64 %indvars.iv292, %i.la         ; 2 uses
  %invariant.op = add nuw nsw i64 %32, 10
  %i.lc = icmp sgt i32 %indvars.iv286, -11
  br label %35

._crit_edge278.split:                             ; preds = %._crit_edge276, %.preheader.lr.ph, %.preheader269
  %i.ld = getelementptr inbounds nuw i8, ptr %23, i64 24
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !199 ; 3 uses
  %.not.i.i.i.i252 = icmp eq ptr %i.le, null
  br i1 %.not.i.i.i.i252, label %_ZNSt6vectorIN2cv6detail7GCGraphIfE4EdgeESaIS4_EED2Ev.exit.i253, label %bb.ax

bb.ax:                                            ; preds = %._crit_edge278.split
  %i.lf = getelementptr inbounds nuw i8, ptr %23, i64 40
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !200
  %i.lh = ptrtoint ptr %i.lg to i64
  %i.li = ptrtoint ptr %i.le to i64
  %i.lj = sub i64 %i.lh, %i.li
  call void @_ZdlPvm(ptr noundef nonnull %i.le, i64 noundef %i.lj) #27
  br label %_ZNSt6vectorIN2cv6detail7GCGraphIfE4EdgeESaIS4_EED2Ev.exit.i253

_ZNSt6vectorIN2cv6detail7GCGraphIfE4EdgeESaIS4_EED2Ev.exit.i253: ; preds = %bb.ax, %._crit_edge278.split
  %i.lk = load ptr, ptr %23, align 8, !tbaa !172  ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.lk, null
  br i1 %.not.i.i.i1.i, label %_ZN2cv6detail7GCGraphIfED2Ev.exit, label %bb.ay

bb.ay:                                            ; preds = %_ZNSt6vectorIN2cv6detail7GCGraphIfE4EdgeESaIS4_EED2Ev.exit.i253
  %i.ll = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !171
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
  %indvars.iv.next293 = add nuw nsw i64 %indvars.iv292, 1 ; 2 uses
  %indvars.iv.next287 = add i32 %indvars.iv286, %i.z
  %exitcond296.not = icmp eq i64 %indvars.iv.next293, %.sroa.28.8.extract.shift
  br i1 %exitcond296.not, label %._crit_edge278.split, label %.preheader, !llvm.loop !450

35:                                               ; preds = %.preheader, %bb.bj
  %indvars.iv288 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next289, %bb.bj ] ; 5 uses
  %.reass = add nuw nsw i64 %indvars.iv288, %invariant.op ; 2 uses
  br i1 %i.lc, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %35
  %i.lq = load ptr, ptr %i.kp, align 8, !tbaa !170
  %i.lr = load ptr, ptr %23, align 8, !tbaa !172  ; 2 uses
  %i.ls = ptrtoint ptr %i.lq to i64
  %i.lt = ptrtoint ptr %i.lr to i64
  %i.lu = sub i64 %i.ls, %i.lt
  %i.lv = shl i64 %i.lu, 27
  %i.lw = ashr i64 %i.lv, 32
  %i.lx = icmp slt i64 %.reass, %i.lw
  br i1 %i.lx, label %bb.bd, label %bb.ba

bb.ba:                                            ; preds = %bb.az, %35
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
  %i.ly = landingpad { ptr, i32 }
          cleanup
  %i.lz = load ptr, ptr %5, align 8, !tbaa !29    ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.mb = icmp eq ptr %i.lz, %i.ma
  br i1 %i.mb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.bc
  %i.mc = load i64, ptr %i.ma, align 8, !tbaa !30
  %i.md = add i64 %i.mc, 1
  call void @_ZdlPvm(ptr noundef %i.lz, i64 noundef %i.md) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %.body255

bb.bd:                                            ; preds = %bb.az
  %i.me = getelementptr inbounds nuw [32 x i8], ptr %i.lr, i64 %.reass
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 28
  %i.mg = load i8, ptr %i.mf, align 4, !tbaa !202
  %i.mh = icmp eq i8 %i.mg, 0
  br i1 %i.mh, label %bb.be, label %bb.bh

bb.be:                                            ; preds = %bb.bd
  %i.mi = load i32, ptr %i.kt, align 4, !tbaa !63
  %i.mj = icmp slt i32 %i.mi, 2
  %i.mk = load ptr, ptr %i.ku, align 8, !tbaa !64
  %i.ml = load i64, ptr %i.kv, align 8
  %i.mm = mul i64 %i.ml, %34
  %.sink.idx.i257 = select i1 %i.mj, i64 0, i64 %i.mm
  %.sink.i258 = getelementptr inbounds nuw i8, ptr %i.mk, i64 %.sink.idx.i257
  %i.mn = getelementptr i8, ptr %.sink.i258, i64 %indvars.iv288
  %i.mo = getelementptr i8, ptr %i.mn, i64 %28
  %i.mp = load i8, ptr %i.mo, align 1, !tbaa !30
  %.not171 = icmp eq i8 %i.mp, 0
  br i1 %.not171, label %bb.bj, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.mq = load i32, ptr %i.kq, align 4, !tbaa !63
  %i.mr = icmp slt i32 %i.mq, 2
  %i.ms = load ptr, ptr %i.kr, align 8, !tbaa !64
  %i.mt = load i64, ptr %i.ks, align 8
  %i.mu = mul i64 %i.mt, %33
  %.sink.idx.i259 = select i1 %i.mr, i64 0, i64 %i.mu
  %.sink.i260 = getelementptr inbounds nuw i8, ptr %i.ms, i64 %.sink.idx.i259
  br label %.sink.split

bb.bg:                                            ; preds = %bb.ba
  %i.mv = landingpad { ptr, i32 }
          cleanup
  br label %.body255

bb.bh:                                            ; preds = %bb.bd
  %i.mw = load i32, ptr %i.kq, align 4, !tbaa !63
  %i.mx = icmp slt i32 %i.mw, 2
  %i.my = load ptr, ptr %i.kr, align 8, !tbaa !64
  %i.mz = load i64, ptr %i.ks, align 8
  %i.na = mul i64 %i.mz, %33
  %.sink.idx.i261 = select i1 %i.mx, i64 0, i64 %i.na
  %.sink.i262 = getelementptr inbounds nuw i8, ptr %i.my, i64 %.sink.idx.i261
  %i.nb = getelementptr i8, ptr %.sink.i262, i64 %indvars.iv288
  %i.nc = getelementptr i8, ptr %i.nb, i64 %29
  %i.nd = load i8, ptr %i.nc, align 1, !tbaa !30
  %.not = icmp eq i8 %i.nd, 0
  br i1 %.not, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ne = load i32, ptr %i.kt, align 4, !tbaa !63
  %i.nf = icmp slt i32 %i.ne, 2
  %i.ng = load ptr, ptr %i.ku, align 8, !tbaa !64
  %i.nh = load i64, ptr %i.kv, align 8
  %i.ni = mul i64 %i.nh, %34
  %.sink.idx.i263 = select i1 %i.nf, i64 0, i64 %i.ni
  %.sink.i264 = getelementptr inbounds nuw i8, ptr %i.ng, i64 %.sink.idx.i263
  br label %.sink.split

.sink.split:                                      ; preds = %bb.bi, %bb.bf
  %.sink.i260.sink = phi ptr [ %.sink.i260, %bb.bf ], [ %.sink.i264, %bb.bi ]
  %.sink324 = phi i64 [ %29, %bb.bf ], [ %28, %bb.bi ]
  %i.nj = getelementptr i8, ptr %.sink.i260.sink, i64 %indvars.iv288
  %i.nk = getelementptr i8, ptr %i.nj, i64 %.sink324
  store i8 0, ptr %i.nk, align 1, !tbaa !30
  br label %bb.bj

bb.bj:                                            ; preds = %.sink.split, %bb.be, %bb.bh
  %indvars.iv.next289 = add nuw nsw i64 %indvars.iv288, 1 ; 2 uses
  %exitcond291.not = icmp eq i64 %indvars.iv.next289, %wide.trip.count
  br i1 %exitcond291.not, label %._crit_edge276, label %35, !llvm.loop !451

.body255:                                         ; preds = %bb.bg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.ap
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ke, %bb.ap ], [ %i.mv, %bb.bg ], [ %i.ly, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ]
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
  %i.a = load ptr, ptr %0, align 8, !tbaa !463    ; 18 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !463  ; 2 uses
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
  %i.g = load ptr, ptr %1, align 8, !tbaa !29     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.j = load i64, ptr %i.h, align 8, !tbaa !30
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
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !464  ; 22 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !464
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
  %i.s = load ptr, ptr %3, align 8, !tbaa !29     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245: ; preds = %bb.l
  %i.v = load i64, ptr %i.t, align 8, !tbaa !30
end_hunk_1
