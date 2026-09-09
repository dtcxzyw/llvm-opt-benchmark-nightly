Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d/original/contact?download=true
inline.NumInlined: 72
inline.NumDeleted: 25
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@b3UpdateContact:bb.a
  %i.hl = load i8, ptr %i.hk, align 2, !tbaa !114
  %i.hm = and i8 %i.hl, 8
  %.not159 = icmp eq i8 %i.hm, 0
  br i1 %.not159, label %.split271.thread, label %.thread266

.split271.thread:                                 ; preds = %bb.t
  %i.hn = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 2 uses
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !110
  %i.hp = and i32 %i.ho, -1048577
  store i32 %i.hp, ptr %i.hn, align 4, !tbaa !110
  br label %bb.v

.thread266:                                       ; preds = %bb.s, %bb.t
  %i.hq = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 2 uses
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !110
  %i.hs = or i32 %i.hr, 1048576
  store i32 %i.hs, ptr %i.hq, align 4, !tbaa !110
  br label %bb.v

.split271:                                        ; preds = %bb.r
  %i.ht = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 2 uses
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !110
  %i.hv = and i32 %i.hu, -1048577
  store i32 %i.hv, ptr %i.ht, align 4, !tbaa !110
  br label %bb.x

bb.u:                                             ; preds = %bb.a
  %i.hw = tail call fastcc zeroext i1 @b3UpdateConvexContact(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef nonnull byval(%struct.b3Transform) align 8 %6, ptr noundef %7, ptr noundef nonnull byval(%struct.b3Transform) align 8 %10, i1 noundef zeroext false, ptr noundef nonnull byval(%struct.b3Arena) align 8 %12)
  br i1 %i.hw, label %bb.v, label %bb.x

bb.v:                                             ; preds = %.split271.thread, %.split, %.thread266, %bb.u
  %i.hx = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.hy = load <2 x float>, ptr %i.hx, align 4    ; 6 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.ia = load <2 x float>, ptr %i.hz, align 4    ; 4 uses
  %.sroa.011.0.vec.extract.i.i217 = extractelement <2 x float> %i.hy, i64 0
  %foldExtExtBinop325 = fmul <2 x float> %4, %i.ia
  %i.ib = extractelement <2 x float> %foldExtExtBinop325, i64 0
  %i.ic = fmul float %5, %.sroa.011.0.vec.extract.i.i217
  %i.id = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ie = insertelement <2 x float> %i.id, float %5, i64 1 ; 2 uses
  %i.if = fmul <2 x float> %i.ie, %i.hy
  %i.ig = shufflevector <2 x float> %i.hy, <2 x float> %i.ia, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.ih = fmul <2 x float> %4, %i.ig
  %i.ii = fsub <2 x float> %i.if, %i.ih           ; 2 uses
  %i.ij = fsub float %i.ib, %i.ic
  %i.ik = insertelement <2 x float> %i.id, float %5, i64 0
  %i.il = shufflevector <2 x float> %i.ia, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.im = fmul <2 x float> %i.ik, %i.il
  %i.in = fmul <2 x float> %i.ie, %i.il
  %i.io = fadd <2 x float> %i.im, %i.ii           ; 2 uses
  %i.ip = shufflevector <2 x float> %i.ii, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.iq = insertelement <2 x float> %i.ip, float %i.ij, i64 0
  %i.ir = fadd <2 x float> %i.in, %i.iq           ; 2 uses
  %i.is = fmul <2 x float> %i.ig, %i.io
  %i.it = shufflevector <2 x float> %i.ia, <2 x float> %i.hy, <2 x i32> <i32 0, i32 2>
  %i.iu = fmul <2 x float> %i.it, %i.ir
  %i.iv = fsub <2 x float> %i.is, %i.iu
  %foldExtExtBinop327 = fmul <2 x float> %i.hy, %i.ir
  %foldExtExtBinop329 = fmul <2 x float> %i.hy, %i.io
  %shift331 = shufflevector <2 x float> %foldExtExtBinop329, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop332 = fsub <2 x float> %foldExtExtBinop327, %shift331
  %i.iw = extractelement <2 x float> %foldExtExtBinop332, i64 0
  %i.ix = fmul <2 x float> %i.iv, splat (float 2.000000e+00)
  %i.iy = fadd <2 x float> %4, %i.ix
  %i.iz = fmul float %i.iw, 2.000000e+00
  %i.ja = fadd float %5, %i.iz
  %i.jb = getelementptr inbounds nuw i8, ptr %10, i64 12
  %i.jc = load <2 x float>, ptr %i.jb, align 4    ; 6 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %10, i64 20
  %i.je = load <2 x float>, ptr %i.jd, align 4    ; 4 uses
  %.sroa.011.0.vec.extract.i.i227 = extractelement <2 x float> %i.jc, i64 0
  %foldExtExtBinop334 = fmul <2 x float> %8, %i.je
  %i.jf = extractelement <2 x float> %foldExtExtBinop334, i64 0
  %i.jg = fmul float %9, %.sroa.011.0.vec.extract.i.i227
  %i.jh = shufflevector <2 x float> %8, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ji = insertelement <2 x float> %i.jh, float %9, i64 1 ; 2 uses
  %i.jj = fmul <2 x float> %i.ji, %i.jc
  %i.jk = shufflevector <2 x float> %i.jc, <2 x float> %i.je, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.jl = fmul <2 x float> %8, %i.jk
  %i.jm = fsub <2 x float> %i.jj, %i.jl           ; 2 uses
  %i.jn = fsub float %i.jf, %i.jg
  %i.jo = insertelement <2 x float> %i.jh, float %9, i64 0
  %i.jp = shufflevector <2 x float> %i.je, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.jq = fmul <2 x float> %i.jo, %i.jp
  %i.jr = fmul <2 x float> %i.ji, %i.jp
  %i.js = fadd <2 x float> %i.jq, %i.jm           ; 2 uses
  %i.jt = shufflevector <2 x float> %i.jm, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ju = insertelement <2 x float> %i.jt, float %i.jn, i64 0
  %i.jv = fadd <2 x float> %i.jr, %i.ju           ; 2 uses
  %i.jw = fmul <2 x float> %i.jk, %i.js
  %i.jx = shufflevector <2 x float> %i.je, <2 x float> %i.jc, <2 x i32> <i32 0, i32 2>
  %i.jy = fmul <2 x float> %i.jx, %i.jv
  %i.jz = fsub <2 x float> %i.jw, %i.jy
  %foldExtExtBinop336 = fmul <2 x float> %i.jc, %i.jv
  %foldExtExtBinop338 = fmul <2 x float> %i.jc, %i.js
  %shift340 = shufflevector <2 x float> %foldExtExtBinop338, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop341 = fsub <2 x float> %foldExtExtBinop336, %shift340
  %i.ka = extractelement <2 x float> %foldExtExtBinop341, i64 0
  %i.kb = fmul <2 x float> %i.jz, splat (float 2.000000e+00)
  %i.kc = fadd <2 x float> %8, %i.kb
  %i.kd = fmul float %i.ka, 2.000000e+00
  %i.ke = fadd float %9, %i.kd
  %i.kf = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.kg = load i32, ptr %i.kf, align 8, !tbaa !84 ; 2 uses
  %i.kh = icmp sgt i32 %i.kg, 0
  br i1 %i.kh, label %.lr.ph282, label %._crit_edge283

.lr.ph282:                                        ; preds = %bb.v
  %i.ki = getelementptr inbounds nuw i8, ptr %2, i64 72
  br label %bb.w

._crit_edge283:                                   ; preds = %._crit_edge279, %bb.v
  %i.kj = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 2 uses
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !110
  %i.kl = or i32 %i.kk, 65536
  store i32 %i.kl, ptr %i.kj, align 4, !tbaa !110
  br label %bb.y

bb.w:                                             ; preds = %.lr.ph282, %._crit_edge279
  %i.km = phi i32 [ %i.kg, %.lr.ph282 ], [ %i.kt, %._crit_edge279 ]
  %indvars.iv293 = phi i64 [ 0, %.lr.ph282 ], [ %indvars.iv.next294, %._crit_edge279 ] ; 2 uses
  %i.kn = load ptr, ptr %i.ki, align 8, !tbaa !85
  %i.ko = getelementptr inbounds nuw [268 x i8], ptr %i.kn, i64 %indvars.iv293 ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 264
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !130 ; 2 uses
  %i.kr = icmp sgt i32 %i.kq, 0
  br i1 %i.kr, label %.lr.ph278.preheader, label %._crit_edge279

.lr.ph278.preheader:                              ; preds = %bb.w
  %i.ks = zext nneg i32 %i.kq to i64
  br label %.lr.ph278

._crit_edge279.loopexit:                          ; preds = %.lr.ph278
  %.pre = load i32, ptr %i.kf, align 8, !tbaa !84
  br label %._crit_edge279

._crit_edge279:                                   ; preds = %._crit_edge279.loopexit, %bb.w
  %i.kt = phi i32 [ %.pre, %._crit_edge279.loopexit ], [ %i.km, %bb.w ] ; 2 uses
  %indvars.iv.next294 = add nuw nsw i64 %indvars.iv293, 1 ; 2 uses
  %i.ku = sext i32 %i.kt to i64
  %i.kv = icmp slt i64 %indvars.iv.next294, %i.ku
  br i1 %i.kv, label %bb.w, label %._crit_edge283, !llvm.loop !161

.lr.ph278:                                        ; preds = %.lr.ph278.preheader, %.lr.ph278
  %indvars.iv290 = phi i64 [ 0, %.lr.ph278.preheader ], [ %indvars.iv.next291, %.lr.ph278 ] ; 2 uses
  %i.kw = getelementptr inbounds nuw [56 x i8], ptr %i.ko, i64 %indvars.iv290 ; 5 uses
  %.sroa.012.0.copyload = load <2 x float>, ptr %i.kw, align 4
  %.sroa.213.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kw, i64 8 ; 2 uses
  %.sroa.213.0.copyload = load float, ptr %.sroa.213.0..sroa_idx, align 4
  %i.kx = fsub <2 x float> %.sroa.012.0.copyload, %i.iy
  %i.ky = fsub float %.sroa.213.0.copyload, %i.ja
  store <2 x float> %i.kx, ptr %i.kw, align 4
  store float %i.ky, ptr %.sroa.213.0..sroa_idx, align 4, !tbaa !128
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kw, i64 12 ; 2 uses
  %.sroa.03.0.copyload = load <2 x float>, ptr %i.kz, align 4
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kw, i64 20 ; 2 uses
  %.sroa.24.0.copyload = load float, ptr %.sroa.24.0..sroa_idx, align 4
  %i.la = fsub <2 x float> %.sroa.03.0.copyload, %i.kc
  %i.lb = fsub float %.sroa.24.0.copyload, %i.ke
  store <2 x float> %i.la, ptr %i.kz, align 4
  store float %i.lb, ptr %.sroa.24.0..sroa_idx, align 4, !tbaa !128
  %indvars.iv.next291 = add nuw nsw i64 %indvars.iv290, 1 ; 2 uses
  %i.lc = icmp samesign ult i64 %indvars.iv.next291, %i.ks
  br i1 %i.lc, label %.lr.ph278, label %._crit_edge279.loopexit, !llvm.loop !162

bb.x:                                             ; preds = %.split271, %.split, %bb.u
  %i.ld = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 2 uses
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !110
  %i.lf = and i32 %i.le, -65537
  store i32 %i.lf, ptr %i.ld, align 4, !tbaa !110
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %._crit_edge283
  %.1.in268 = phi i1 [ false, %bb.x ], [ true, %._crit_edge283 ]
  ret i1 %.1.in268
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @b3UpdateConvexContact(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readonly byval(%struct.b3Transform) align 8 captures(none) %4, ptr noundef %5, ptr nofree noundef readonly byval(%struct.b3Transform) align 8 captures(none) %6, i1 noundef zeroext %7, ptr nofree noundef readonly byval(%struct.b3Arena) align 8 captures(none) %8) unnamed_addr #5 {
bb.a:
  %9 = alloca %struct.b3BlockAllocator, align 8   ; 4 uses
  %10 = alloca %struct.b3LocalManifold, align 8   ; 14 uses
  %11 = alloca %struct.b3Transform, align 8       ; 13 uses
  %12 = alloca [4 x %struct.b3ManifoldPoint], align 16 ; 4 uses
  %13 = alloca %struct.b3Arena, align 8           ; 9 uses
  %i.a = alloca [12 x i8], align 1                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false)
  %.sroa.0167.0.copyload = load <2 x float>, ptr %6, align 8 ; 2 uses
  %.sroa.6169.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.6169.0.copyload = load float, ptr %.sroa.6169.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7170.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 12
  %.sroa.7170.0.copyload = load <2 x float>, ptr %.sroa.7170.0..sroa_idx, align 4 ; 10 uses
  %.sroa.8171.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 20
  %.sroa.8171.0.copyload = load <2 x float>, ptr %.sroa.8171.0..sroa_idx, align 4 ; 7 uses
  %.sroa.0.0.copyload = load <2 x float>, ptr %4, align 8 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 12
  %.sroa.7.0.copyload = load <2 x float>, ptr %.sroa.7.0..sroa_idx, align 4 ; 20 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 20
  %.sroa.8.0.copyload = load <2 x float>, ptr %.sroa.8.0..sroa_idx, align 4 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !89
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !89   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 152 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %13, i64 12 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !183
  %i.i = add nsw i32 %i.h, 15
  %i.j = and i32 %i.i, -16                        ; 2 uses
  %i.k = add nsw i32 %i.j, 768                    ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !184
  %i.n = icmp sgt i32 %i.k, %i.m
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = call ptr @b3ArenaOverflowAlloc(ptr noundef nonnull align 8 %13, i32 noundef 768) #8
  br label %b3Bump.exit.i

bb.c:                                             ; preds = %bb.a
  store i32 %i.k, ptr %i.g, align 4, !tbaa !183
  %i.p = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !185
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !189
  %i.t = icmp sgt i32 %i.k, %i.s
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 %i.k, ptr %i.r, align 8, !tbaa !189
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.u = load ptr, ptr %13, align 8, !tbaa !190
  %i.v = sext i32 %i.j to i64
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 %i.v
  br label %b3Bump.exit.i

b3Bump.exit.i:                                    ; preds = %bb.e, %bb.b
  %.0.i.i = phi ptr [ %i.o, %bb.b ], [ %i.w, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %10, i8 0, i64 64, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  store ptr %.0.i.i, ptr %i.x, align 8, !tbaa !193
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #8
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 12
  %i.z = shufflevector <2 x float> %.sroa.8.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %.sroa.443.8.vec.extract.i.i = extractelement <2 x float> %.sroa.8.0.copyload, i64 0
  %.sroa.03.4.vec.extract.i.i.i = extractelement <2 x float> %.sroa.7.0.copyload, i64 1 ; 3 uses
  %.sroa.03.0.vec.extract.i.i.i = extractelement <2 x float> %.sroa.7.0.copyload, i64 0 ; 2 uses
  %.sroa.011.0.vec.extract.i.i.i = extractelement <2 x float> %.sroa.7170.0.copyload, i64 0 ; 2 uses
  %i.aa = fmul float %.sroa.011.0.vec.extract.i.i.i, %.sroa.03.4.vec.extract.i.i.i
  %shift = shufflevector <2 x float> %.sroa.7170.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %shift, %.sroa.7.0.copyload
  %i.ab = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ac = fsub float %i.aa, %i.ab
  %i.ad = shufflevector <2 x float> %.sroa.8171.0.copyload, <2 x float> %.sroa.7170.0.copyload, <4 x i32> <i32 0, i32 3, i32 2, i32 0>
  %i.ae = shufflevector <2 x float> %.sroa.7.0.copyload, <2 x float> %.sroa.8.0.copyload, <4 x i32> <i32 0, i32 2, i32 2, i32 1>
  %i.af = fmul <4 x float> %i.ad, %i.ae           ; 2 uses
  %i.ag = shufflevector <4 x float> %i.af, <4 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ah = shufflevector <4 x float> %i.af, <4 x float> poison, <2 x i32> <i32 3, i32 2>
  %i.ai = fsub <2 x float> %i.ag, %i.ah
  %i.aj = shufflevector <2 x float> %.sroa.8.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 5 uses
  %i.ak = fmul <2 x float> %.sroa.7170.0.copyload, %i.aj
  %i.al = fadd <2 x float> %i.ak, %i.ai
  %i.am = shufflevector <2 x float> %.sroa.8171.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.an = fmul <2 x float> %i.am, %.sroa.7.0.copyload
  %i.ao = fsub <2 x float> %i.al, %i.an
  %i.ap = fmul <2 x float> %.sroa.8171.0.copyload, %i.z ; 2 uses
  %i.aq = extractelement <2 x float> %i.ap, i64 0
  %i.ar = fadd float %i.ac, %i.aq
  %i.as = extractelement <2 x float> %i.ap, i64 1
  %i.at = fsub float %i.ar, %i.as
  %.sroa.251.8.vec.insert.i.i = insertelement <2 x float> poison, float %i.at, i64 0
  %i.au = shufflevector <2 x float> %.sroa.7170.0.copyload, <2 x float> %.sroa.8171.0.copyload, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.av = shufflevector <2 x float> %.sroa.7.0.copyload, <2 x float> %.sroa.8.0.copyload, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.aw = fmul <4 x float> %i.au, %i.av           ; 4 uses
  %shift204 = shufflevector <4 x float> %i.aw, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop205 = fadd <4 x float> %i.aw, %shift204
  %shift207 = shufflevector <4 x float> %i.aw, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop208 = fadd <4 x float> %shift207, %foldExtExtBinop205
  %shift210 = shufflevector <4 x float> %i.aw, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop211 = fadd <4 x float> %shift210, %foldExtExtBinop208
  %i.ax = shufflevector <4 x float> %foldExtExtBinop211, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %.sroa.251.12.vec.insert.i.i = shufflevector <2 x float> %.sroa.251.8.vec.insert.i.i, <2 x float> %i.ax, <2 x i32> <i32 0, i32 2>
  store <2 x float> %i.ao, ptr %i.y, align 4, !alias.scope !194
  %.sroa.47.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %11, i64 20
  store <2 x float> %.sroa.251.12.vec.insert.i.i, ptr %.sroa.47.0..sroa_idx.i.i, align 4, !alias.scope !194
  %i.ay = fsub <2 x float> %.sroa.0167.0.copyload, %.sroa.0.0.copyload ; 4 uses
  %i.az = fsub float %.sroa.6169.0.copyload, %.sroa.6.0.copyload ; 3 uses
  %i.ba = shufflevector <2 x float> %i.ay, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.bb = insertelement <2 x float> %i.ba, float %i.az, i64 1 ; 2 uses
  %i.bc = fmul <2 x float> %i.bb, %.sroa.7.0.copyload
  %i.bd = shufflevector <2 x float> %.sroa.8.0.copyload, <2 x float> %.sroa.7.0.copyload, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.be = fmul <2 x float> %i.ay, %i.bd
  %i.bf = shufflevector <2 x float> %.sroa.7.0.copyload, <2 x float> %.sroa.8.0.copyload, <2 x i32> <i32 1, i32 2> ; 4 uses
  %i.bg = fmul <2 x float> %i.ay, %i.bf
  %i.bh = insertelement <2 x float> %i.ba, float %i.az, i64 0 ; 2 uses
  %i.bi = fmul <2 x float> %i.bh, %.sroa.7.0.copyload
  %i.bj = fsub <2 x float> %i.bc, %i.bg
  %i.bk = fsub <2 x float> %i.be, %i.bi
  %i.bl = fmul <2 x float> %i.bh, %i.aj
  %i.bm = fmul <2 x float> %i.bb, %i.aj
  %i.bn = fsub <2 x float> %i.bj, %i.bl           ; 2 uses
  %i.bo = fsub <2 x float> %i.bk, %i.bm           ; 2 uses
  %i.bp = fmul <2 x float> %i.bf, %i.bn
  %i.bq = fmul <2 x float> %i.bd, %i.bo
  %i.br = fsub <2 x float> %i.bp, %i.bq
  %foldExtExtBinop213 = fmul <2 x float> %.sroa.7.0.copyload, %i.bo
  %foldExtExtBinop215 = fmul <2 x float> %.sroa.7.0.copyload, %i.bn
  %shift217 = shufflevector <2 x float> %foldExtExtBinop215, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop218 = fsub <2 x float> %foldExtExtBinop213, %shift217
  %i.bs = extractelement <2 x float> %foldExtExtBinop218, i64 0
  %i.bt = fmul <2 x float> %i.br, splat (float 2.000000e+00)
  %i.bu = fadd <2 x float> %i.ay, %i.bt
  %i.bv = fmul float %i.bs, 2.000000e+00
  %i.bw = fadd float %i.az, %i.bv
  store <2 x float> %i.bu, ptr %11, align 8, !alias.scope !194
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %11, i64 8
  store float %i.bw, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !128, !alias.scope !194
  switch i32 %i.c, label %bb.j [
    i32 5, label %bb.f
    i32 0, label %bb.g
  ]

bb.f:                                             ; preds = %b3Bump.exit.i
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 200
  %i.by = getelementptr inbounds nuw i8, ptr %5, i64 200
  call void @b3CollideSpheres(ptr noundef nonnull %10, i32 noundef 32, ptr noundef nonnull %i.bx, ptr noundef nonnull %i.by, ptr noundef nonnull byval(%struct.b3Transform) align 8 %11) #8
  br label %bb.n

bb.g:                                             ; preds = %b3Bump.exit.i
  %i.bz = icmp eq i32 %i.e, 5
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 200 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 200 ; 2 uses
  br i1 %i.bz, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @b3CollideCapsuleAndSphere(ptr noundef nonnull %10, i32 noundef 32, ptr noundef nonnull %i.ca, ptr noundef nonnull %i.cb, ptr noundef nonnull byval(%struct.b3Transform) align 8 %11) #8
  br label %bb.n

bb.i:                                             ; preds = %bb.g
  call void @b3CollideCapsules(ptr noundef nonnull %10, i32 noundef 32, ptr noundef nonnull %i.ca, ptr noundef nonnull %i.cb, ptr noundef nonnull byval(%struct.b3Transform) align 8 %11) #8
  br label %bb.n

bb.j:                                             ; preds = %b3Bump.exit.i
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 200
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !111 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %5, i64 200 ; 3 uses
  switch i32 %i.e, label %bb.m [
    i32 5, label %bb.k
    i32 0, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  call void @b3CollideHullAndSphere(ptr noundef nonnull %10, i32 noundef 32, ptr noundef %i.cd, ptr noundef nonnull %i.ce, ptr noundef nonnull byval(%struct.b3Transform) align 8 %11, ptr noundef nonnull %i.f) #8
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  call void @b3CollideHullAndCapsule(ptr noundef nonnull %10, i32 noundef 32, ptr noundef %i.cd, ptr noundef nonnull %i.ce, ptr noundef nonnull byval(%struct.b3Transform) align 8 %11, ptr noundef nonnull %i.f) #8
  br label %bb.n

bb.m:                                             ; preds = %bb.j
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !111
  call void @b3CollideHulls(ptr noundef nonnull %10, i32 noundef 32, ptr noundef %i.cd, ptr noundef %i.cf, ptr noundef nonnull byval(%struct.b3Transform) align 8 %11, ptr noundef nonnull %i.f) #8
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 4144
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !195
  %i.ci = sext i32 %1 to i64
  %i.cj = getelementptr inbounds [3848 x i8], ptr %i.ch, i64 %i.ci ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 136 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !199
  %i.cm = add nsw i32 %i.cl, 1
  store i32 %i.cm, ptr %i.ck, align 8, !tbaa !199
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 159
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !111
  %i.cp = zext i8 %i.co to i32
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cj, i64 140 ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !200
  %i.cs = add nsw i32 %i.cr, %i.cp
  store i32 %i.cs, ptr %i.cq, align 4, !tbaa !200
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.i, %bb.h, %bb.f
  %i.ct = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 3 uses
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !201 ; 2 uses
  %.not172 = icmp eq i32 %i.cu, 0
  br i1 %.not172, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !84 ; 2 uses
  %i.cx = icmp sgt i32 %i.cw, 0
  br i1 %i.cx, label %b3FreeManifolds.exit.i, label %b3ComputeConvexManifold.exit.thread

b3FreeManifolds.exit.i:                           ; preds = %bb.o
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !85
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 3848 ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !125
  call void @b3LockMutex(ptr noundef %i.db) #8
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 3832
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !126
  %i.de = zext nneg i32 %i.cw to i64
  %i.df = getelementptr [40 x i8], ptr %i.dd, i64 %i.de
  %i.dg = getelementptr i8, ptr %i.df, i64 -40
  call void @b3FreeElement(ptr noundef %i.dg, ptr noundef %i.cz) #8
  %i.dh = load ptr, ptr %i.da, align 8, !tbaa !125
  call void @b3UnlockMutex(ptr noundef %i.dh) #8
  store ptr null, ptr %i.cy, align 8, !tbaa !85
  store i32 0, ptr %i.cv, align 8, !tbaa !84
  br label %b3ComputeConvexManifold.exit.thread

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #8
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 4 uses
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !84
  %i.dk = icmp eq i32 %i.dj, 0
  br i1 %i.dk, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 3848 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !125
  call void @b3LockMutex(ptr noundef %i.dm) #8
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 3832 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 3840 ; 4 uses
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !202 ; 2 uses
  %i.dq = icmp slt i32 %i.dp, 1
  br i1 %i.dq, label %.lr.ph.i.i, label %b3AllocateManifolds.exit.i

.lr.ph.i.i:                                       ; preds = %bb.q
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 3844 ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.t, %.lr.ph.i.i
  %.03033.i.i = phi i32 [ %i.dp, %.lr.ph.i.i ], [ %i.ds, %bb.t ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #8
  %i.ds = add nsw i32 %.03033.i.i, 1              ; 2 uses
  %i.dt = mul i32 %i.ds, 268
  call void @b3CreateBlockAllocator(ptr dead_on_unwind nonnull writable sret(%struct.b3BlockAllocator) align 8 %9, i32 noundef %i.dt, i32 noundef 512) #8
  %i.du = load i32, ptr %i.do, align 8, !tbaa !202 ; 2 uses
  %i.dv = load i32, ptr %i.dr, align 4, !tbaa !203 ; 4 uses
  %.not.i.i = icmp slt i32 %i.du, %i.dv
  %.pre.i.i = load ptr, ptr %i.dn, align 8, !tbaa !126 ; 2 uses
  br i1 %.not.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dw = mul i32 %i.dv, 40
  %i.dx = icmp eq i32 %i.dv, 0
  %i.dy = shl nsw i32 %i.dv, 1
  %spec.select.i.i = select i1 %i.dx, i32 8, i32 %i.dy ; 2 uses
  %i.dz = mul i32 %spec.select.i.i, 40
  %i.ea = call ptr @b3GrowAlloc(ptr noundef %.pre.i.i, i32 noundef %i.dw, i32 noundef %i.dz) #8 ; 2 uses
  store ptr %i.ea, ptr %i.dn, align 8, !tbaa !126
  store i32 %spec.select.i.i, ptr %i.dr, align 4, !tbaa !203
  %.pre34.i.i = load i32, ptr %i.do, align 8, !tbaa !202
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.eb = phi i32 [ %.pre34.i.i, %bb.s ], [ %i.du, %bb.r ] ; 2 uses
  %i.ec = phi ptr [ %i.ea, %bb.s ], [ %.pre.i.i, %bb.r ]
  %i.ed = add nsw i32 %i.eb, 1
  store i32 %i.ed, ptr %i.do, align 8, !tbaa !202
  %i.ee = sext i32 %i.eb to i64
  %i.ef = getelementptr inbounds [40 x i8], ptr %i.ec, i64 %i.ee
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ef, ptr noundef nonnull align 8 dereferenceable(40) %9, i64 40, i1 false), !tbaa.struct !207
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #8
  %exitcond.not.i.i = icmp eq i32 %.03033.i.i, 0
  br i1 %exitcond.not.i.i, label %b3AllocateManifolds.exit.i, label %bb.r, !llvm.loop !175

b3AllocateManifolds.exit.i:                       ; preds = %bb.t, %bb.q
  %i.eg = load ptr, ptr %i.dn, align 8, !tbaa !126
  %i.eh = call ptr @b3AllocateElement(ptr noundef %i.eg) #8 ; 3 uses
  %i.ei = load ptr, ptr %i.dl, align 8, !tbaa !125
  call void @b3UnlockMutex(ptr noundef %i.ei) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(268) %i.eh, i8 0, i64 268, i1 false)
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 72
  store ptr %i.eh, ptr %i.ej, align 8, !tbaa !85
  store i32 1, ptr %i.di, align 8, !tbaa !84
  %.pre.i = load i32, ptr %i.ct, align 8, !tbaa !201
  br label %bb.v

bb.u:                                             ; preds = %bb.p
  %i.ek = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !85 ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 264
  %i.en = load i32, ptr %i.em, align 4, !tbaa !130 ; 2 uses
  %i.eo = sext i32 %i.en to i64
  %i.ep = mul nsw i64 %i.eo, 56
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %12, ptr align 4 %i.el, i64 %i.ep, i1 false)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %b3AllocateManifolds.exit.i
  %i.eq = phi i32 [ %.pre.i, %b3AllocateManifolds.exit.i ], [ %i.cu, %bb.u ] ; 2 uses
  %i.er = phi ptr [ %i.eh, %b3AllocateManifolds.exit.i ], [ %i.el, %bb.u ] ; 10 uses
  %.0120.i = phi i32 [ 0, %b3AllocateManifolds.exit.i ], [ %i.en, %bb.u ] ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 264
  store i32 %i.eq, ptr %i.es, align 4, !tbaa !130
  %i.et = fmul <2 x float> %.sroa.7.0.copyload, %.sroa.7.0.copyload ; 3 uses
  %14 = shufflevector <2 x float> %.sroa.7.0.copyload, <2 x float> %.sroa.8.0.copyload, <3 x i32> <i32 0, i32 3, i32 2>
  %15 = shufflevector <2 x float> %.sroa.7.0.copyload, <2 x float> %.sroa.8.0.copyload, <3 x i32> <i32 1, i32 2, i32 2>
  %16 = fmul <3 x float> %14, %15                 ; 3 uses
  %foldExtExtBinop220.a = fmul <2 x float> %.sroa.7.0.copyload, %.sroa.8.0.copyload
  %i.eu = extractelement <2 x float> %foldExtExtBinop220.a, i64 0 ; 2 uses
  %17 = extractelement <2 x float> %.sroa.8.0.copyload, i64 1 ; 2 uses
  %i.ev = fmul float %.sroa.03.0.vec.extract.i.i.i, %17 ; 2 uses
  %i.ew = fmul float %.sroa.03.4.vec.extract.i.i.i, %.sroa.443.8.vec.extract.i.i ; 2 uses
  %i.ex = fmul float %.sroa.03.4.vec.extract.i.i.i, %17 ; 2 uses
  %i.ey = fsub float %i.eu, %i.ex
  %i.ez = fmul float %i.ey, 2.000000e+00          ; 2 uses
  %i.fa = fadd float %i.ew, %i.ev
  %i.fb = fmul float %i.fa, 2.000000e+00          ; 2 uses
  %18 = extractelement <3 x float> %16, i64 0     ; 2 uses
  %19 = extractelement <3 x float> %16, i64 1     ; 2 uses
  %i.fc = fadd float %18, %19
  %i.fd = fsub float %18, %19
  %i.fe = insertelement <2 x float> poison, float %i.fc, i64 0
  %i.ff = insertelement <2 x float> %i.fe, float %i.fd, i64 1
  %i.fg = fmul <2 x float> %i.ff, splat (float 2.000000e+00) ; 2 uses
  %20 = shufflevector <3 x float> %16, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.fh = fadd <2 x float> %i.et, %20
  %i.fi = fmul <2 x float> %i.fh, splat (float 2.000000e+00)
  %i.fj = fsub <2 x float> splat (float 1.000000e+00), %i.fi ; 2 uses
  %i.fk = fsub float %i.ew, %i.ev
  %i.fl = fadd float %i.eu, %i.ex
  %i.fm = insertelement <2 x float> poison, float %i.fk, i64 0
  %i.fn = insertelement <2 x float> %i.fm, float %i.fl, i64 1
  %i.fo = fmul <2 x float> %i.fn, splat (float 2.000000e+00) ; 2 uses
  %shift222 = shufflevector <2 x float> %i.et, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop223 = fadd <2 x float> %i.et, %shift222
  %i.fp = extractelement <2 x float> %foldExtExtBinop223, i64 0
  %i.fq = fmul float %i.fp, 2.000000e+00
  %i.fr = fsub float 1.000000e+00, %i.fq          ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.er, i64 224
  %.sroa.056.0.copyload.i = load <2 x float>, ptr %10, align 8 ; 4 uses
  %.sroa.257.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.sroa.257.0.copyload.i = load float, ptr %.sroa.257.0..sroa_idx.i, align 8 ; 2 uses
  %.sroa.03.0.vec.extract.i.i = extractelement <2 x float> %.sroa.056.0.copyload.i, i64 0
  %.sroa.03.4.vec.extract.i.i = extractelement <2 x float> %.sroa.056.0.copyload.i, i64 1
  %i.ft = fmul <2 x float> %i.fg, %.sroa.056.0.copyload.i
  %i.fu = shufflevector <2 x float> %.sroa.056.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.fv = fmul <2 x float> %i.fj, %i.fu
  %i.fw = fadd <2 x float> %i.ft, %i.fv
  %i.fx = insertelement <2 x float> poison, float %.sroa.257.0.copyload.i, i64 0
  %i.fy = shufflevector <2 x float> %i.fx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fz = fmul <2 x float> %i.fo, %i.fy
  %i.ga = fadd <2 x float> %i.fz, %i.fw
  %i.gb = shufflevector <2 x float> %i.ga, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.gc = fmul float %i.ez, %.sroa.03.0.vec.extract.i.i
  %i.gd = fmul float %i.fb, %.sroa.03.4.vec.extract.i.i
  %i.ge = fadd float %i.gc, %i.gd
  %i.gf = fmul float %i.fr, %.sroa.257.0.copyload.i
  %i.gg = fadd float %i.gf, %i.ge
  store <2 x float> %i.gb, ptr %i.fs, align 4
  %.sroa.459.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.er, i64 232
  store float %i.gg, ptr %.sroa.459.0..sroa_idx.i, align 4, !tbaa !128
  %i.gh = icmp sgt i32 %i.eq, 0
  br i1 %i.gh, label %.lr.ph.i, label %b3ComputeConvexManifold.exit

.lr.ph.i:                                         ; preds = %bb.v
  %i.gi = fsub <2 x float> %.sroa.0.0.copyload, %.sroa.0167.0.copyload
  %i.gj = fsub float %.sroa.6.0.copyload, %.sroa.6169.0.copyload
  br label %bb.z

.preheader.i:                                     ; preds = %bb.z
  %i.gk = icmp sgt i32 %i.id, 0
  br i1 %i.gk, label %.lr.ph174.i, label %b3ComputeConvexManifold.exit

.lr.ph174.i:                                      ; preds = %.preheader.i
  %i.gl = icmp sgt i32 %.0120.i, 0
  %wide.trip.count191.i = zext nneg i32 %i.id to i64 ; 3 uses
  br i1 %i.gl, label %.critedge.lr.ph.us.preheader.i, label %.lr.ph174.split.preheader.i.preheader

.lr.ph174.split.preheader.i.preheader:            ; preds = %.lr.ph174.i
  %xtraiter = and i64 %wide.trip.count191.i, 3    ; 3 uses
  %i.gm = icmp ult i32 %i.id, 4
  br i1 %i.gm, label %.lr.ph174.split.preheader.i.epil.preheader, label %.lr.ph174.split.preheader.i.preheader.new

.lr.ph174.split.preheader.i.preheader.new:        ; preds = %.lr.ph174.split.preheader.i.preheader
  %unroll_iter = and i64 %wide.trip.count191.i, 2147483644
  br label %.lr.ph174.split.preheader.i

.critedge.lr.ph.us.preheader.i:                   ; preds = %.lr.ph174.i
  %wide.trip.count186.i = zext nneg i32 %.0120.i to i64
  br label %.critedge.lr.ph.us.i

.critedge.lr.ph.us.i:                             ; preds = %bb.y, %.critedge.lr.ph.us.preheader.i
  %indvars.iv188.i = phi i64 [ 0, %.critedge.lr.ph.us.preheader.i ], [ %indvars.iv.next189.i, %bb.y ] ; 2 uses
  %i.gn = getelementptr inbounds nuw [56 x i8], ptr %i.er, i64 %indvars.iv188.i ; 5 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 36
  store float 0.000000e+00, ptr %i.go, align 4, !tbaa !209
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gn, i64 52 ; 2 uses
  store i8 0, ptr %i.gp, align 4, !tbaa !210
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gn, i64 44
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !211
  br label %.critedge.us.i

bb.w:                                             ; preds = %.critedge.us.i
  %indvars.iv.next184.i = add nuw nsw i64 %indvars.iv183.i, 1 ; 2 uses
  %exitcond187.not.i = icmp eq i64 %indvars.iv.next184.i, %wide.trip.count186.i
  br i1 %exitcond187.not.i, label %bb.x, label %.critedge.us.i, !llvm.loop !176

.critedge.us.i:                                   ; preds = %bb.w, %.critedge.lr.ph.us.i
  %indvars.iv183.i = phi i64 [ 0, %.critedge.lr.ph.us.i ], [ %indvars.iv.next184.i, %bb.w ] ; 2 uses
  %i.gs = getelementptr inbounds nuw [56 x i8], ptr %12, i64 %indvars.iv183.i ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 44
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !211
  %.not.us.i = icmp eq i32 %i.gr, %i.gu
  br i1 %.not.us.i, label %.thread.us.i, label %bb.w

bb.x:                                             ; preds = %bb.w
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gn, i64 32
  store float 0.000000e+00, ptr %i.gv, align 4, !tbaa !212
  br label %bb.y

.thread.us.i:                                     ; preds = %.critedge.us.i
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gs, i64 44
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gs, i64 32
  %i.gy = load float, ptr %i.gx, align 4, !tbaa !212
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gn, i64 32
  store float %i.gy, ptr %i.gz, align 4, !tbaa !212
  store i8 1, ptr %i.gp, align 4, !tbaa !210
  store i32 -1, ptr %i.gw, align 4, !tbaa !211
  br label %bb.y

bb.y:                                             ; preds = %.thread.us.i, %bb.x
  %indvars.iv.next189.i = add nuw nsw i64 %indvars.iv188.i, 1 ; 2 uses
  %exitcond192.not.i = icmp eq i64 %indvars.iv.next189.i, %wide.trip.count191.i
  br i1 %exitcond192.not.i, label %b3ComputeConvexManifold.exit, label %.critedge.lr.ph.us.i, !llvm.loop !177

bb.z:                                             ; preds = %bb.z, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.z ] ; 3 uses
  %i.ha = load ptr, ptr %i.x, align 8, !tbaa !193
  %i.hb = getelementptr inbounds nuw [24 x i8], ptr %i.ha, i64 %indvars.iv.i ; 4 uses
  %i.hc = getelementptr inbounds nuw [56 x i8], ptr %i.er, i64 %indvars.iv.i ; 8 uses
  %.sroa.034.0.copyload.i = load <2 x float>, ptr %i.hb, align 4 ; 4 uses
  %.sroa.235.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  %.sroa.235.0.copyload.i = load float, ptr %.sroa.235.0..sroa_idx.i, align 4 ; 2 uses
  %.sroa.03.0.vec.extract.i131.i = extractelement <2 x float> %.sroa.034.0.copyload.i, i64 0
  %.sroa.03.4.vec.extract.i132.i = extractelement <2 x float> %.sroa.034.0.copyload.i, i64 1
  %i.hd = fmul <2 x float> %i.fg, %.sroa.034.0.copyload.i
  %i.he = shufflevector <2 x float> %.sroa.034.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.hf = fmul <2 x float> %i.fj, %i.he
  %i.hg = fadd <2 x float> %i.hd, %i.hf
  %i.hh = insertelement <2 x float> poison, float %.sroa.235.0.copyload.i, i64 0
  %i.hi = shufflevector <2 x float> %i.hh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hj = fmul <2 x float> %i.fo, %i.hi
  %i.hk = fadd <2 x float> %i.hj, %i.hg
  %i.hl = shufflevector <2 x float> %i.hk, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.hm = fmul float %i.ez, %.sroa.03.0.vec.extract.i131.i
  %i.hn = fmul float %i.fb, %.sroa.03.4.vec.extract.i132.i
  %i.ho = fadd float %i.hm, %i.hn
  %i.hp = fmul float %i.fr, %.sroa.235.0.copyload.i
  %i.hq = fadd float %i.hp, %i.ho                 ; 2 uses
  store <2 x float> %i.hl, ptr %i.hc, align 4
  %.sroa.437.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  store float %i.hq, ptr %.sroa.437.0..sroa_idx.i, align 4, !tbaa !128
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hc, i64 12
  %i.hs = fadd <2 x float> %i.gi, %i.hl
  %i.ht = fadd float %i.gj, %i.hq
  store <2 x float> %i.hs, ptr %i.hr, align 4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hc, i64 20
  store float %i.ht, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !128
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hb, i64 12
  %i.hv = load float, ptr %i.hu, align 4, !tbaa !215
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hc, i64 24
  store float %i.hv, ptr %i.hw, align 4, !tbaa !216
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  %i.hy = load i32, ptr %i.hx, align 4
  %i.hz = call i32 @llvm.bswap.i32(i32 %i.hy)
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hc, i64 44
  store i32 %i.hz, ptr %i.ia, align 4, !tbaa !211
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hc, i64 48
  store i32 -1, ptr %i.ib, align 4, !tbaa !217
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hc, i64 40
  store float 0.000000e+00, ptr %i.ic, align 4, !tbaa !218
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.id = load i32, ptr %i.ct, align 8, !tbaa !201 ; 4 uses
  %i.ie = sext i32 %i.id to i64
  %i.if = icmp slt i64 %indvars.iv.next.i, %i.ie
  br i1 %i.if, label %bb.z, label %.preheader.i, !llvm.loop !178

.lr.ph174.split.preheader.i:                      ; preds = %.lr.ph174.split.preheader.i, %.lr.ph174.split.preheader.i.preheader.new
  %indvars.iv180.i = phi i64 [ 0, %.lr.ph174.split.preheader.i.preheader.new ], [ %indvars.iv.next181.i.3, %.lr.ph174.split.preheader.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph174.split.preheader.i.preheader.new ], [ %niter.next.3, %.lr.ph174.split.preheader.i ]
  %i.ig = getelementptr inbounds nuw [56 x i8], ptr %i.er, i64 %indvars.iv180.i ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 52
  store i8 0, ptr %i.ih, align 4, !tbaa !210
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ig, i64 32
  store <2 x float> zeroinitializer, ptr %i.ii, align 4, !tbaa !128
  %i.ij = getelementptr inbounds nuw [56 x i8], ptr %i.er, i64 %indvars.iv180.i ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 108
  store i8 0, ptr %i.ik, align 4, !tbaa !210
  %i.il = getelementptr inbounds nuw i8, ptr %i.ij, i64 88
  store <2 x float> zeroinitializer, ptr %i.il, align 4, !tbaa !128
  %i.im = getelementptr inbounds nuw [56 x i8], ptr %i.er, i64 %indvars.iv180.i ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 164
  store i8 0, ptr %i.in, align 4, !tbaa !210
  %i.io = getelementptr inbounds nuw i8, ptr %i.im, i64 144
  store <2 x float> zeroinitializer, ptr %i.io, align 4, !tbaa !128
  %i.ip = getelementptr inbounds nuw [56 x i8], ptr %i.er, i64 %indvars.iv180.i ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 220
  store i8 0, ptr %i.iq, align 4, !tbaa !210
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ip, i64 200
  store <2 x float> zeroinitializer, ptr %i.ir, align 4, !tbaa !128
  %indvars.iv.next181.i.3 = add nuw nsw i64 %indvars.iv180.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %b3ComputeConvexManifold.exit.loopexit233.unr-lcssa, label %.lr.ph174.split.preheader.i, !llvm.loop !177

b3ComputeConvexManifold.exit.thread:              ; preds = %bb.o, %b3FreeManifolds.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  br label %bb.at

b3ComputeConvexManifold.exit.loopexit233.unr-lcssa: ; preds = %.lr.ph174.split.preheader.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %b3ComputeConvexManifold.exit, label %.lr.ph174.split.preheader.i.epil.preheader

.lr.ph174.split.preheader.i.epil.preheader:       ; preds = %b3ComputeConvexManifold.exit.loopexit233.unr-lcssa, %.lr.ph174.split.preheader.i.preheader
  %indvars.iv180.i.epil.init = phi i64 [ 0, %.lr.ph174.split.preheader.i.preheader ], [ %indvars.iv.next181.i.3, %b3ComputeConvexManifold.exit.loopexit233.unr-lcssa ]
  %lcmp.mod235 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod235)
  br label %.lr.ph174.split.preheader.i.epil
end_hunk_0
