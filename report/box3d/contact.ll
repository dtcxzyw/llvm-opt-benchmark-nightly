Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d/original/contact?download=true
inline.NumInlined: 72
inline.NumDeleted: 25
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@b3UpdateContact:bb.a
  %i.jh = fsub float %i.jf, %i.jg
  %i.ji = shufflevector <2 x float> %8, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.jj = insertelement <2 x float> %i.ji, float %9, i64 1 ; 2 uses
  %i.jk = fmul <2 x float> %i.jj, %i.jc
  %i.jl = shufflevector <2 x float> %i.jc, <2 x float> %i.je, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.jm = fmul <2 x float> %8, %i.jl
  %i.jn = fsub <2 x float> %i.jk, %i.jm           ; 2 uses
  %i.jo = insertelement <2 x float> %i.ji, float %9, i64 0
  %i.jp = shufflevector <2 x float> %i.je, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.jq = fmul <2 x float> %i.jo, %i.jp
  %i.jr = fmul <2 x float> %i.jj, %i.jp
  %i.js = fadd <2 x float> %i.jq, %i.jn           ; 2 uses
  %i.jt = shufflevector <2 x float> %i.jn, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ju = insertelement <2 x float> %i.jt, float %i.jh, i64 0
  %i.jv = fadd <2 x float> %i.jr, %i.ju           ; 2 uses
  %i.jw = fmul <2 x float> %i.jl, %i.js
  %i.jx = shufflevector <2 x float> %i.je, <2 x float> %i.jc, <2 x i32> <i32 0, i32 2>
  %i.jy = fmul <2 x float> %i.jx, %i.jv
  %i.jz = fsub <2 x float> %i.jw, %i.jy
  %foldExtExtBinop340 = fmul <2 x float> %i.jc, %i.jv
  %foldExtExtBinop342 = fmul <2 x float> %i.jc, %i.js
  %shift344 = shufflevector <2 x float> %foldExtExtBinop342, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop345 = fsub <2 x float> %foldExtExtBinop340, %shift344
  %i.ka = extractelement <2 x float> %foldExtExtBinop345, i64 0
  %i.kb = fmul <2 x float> %i.jz, splat (float 2.000000e+00)
  %i.kc = fadd <2 x float> %8, %i.kb
  %i.kd = fmul float %i.ka, 2.000000e+00
  %i.ke = fadd float %9, %i.kd
  %i.kf = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.kg = load i32, ptr %i.kf, align 8, !tbaa !84 ; 2 uses
  %i.kh = icmp sgt i32 %i.kg, 0
  br i1 %i.kh, label %.lr.ph282, label %._crit_edge283

.lr.ph282:                                        ; preds = %bb.v
  %i.ki = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !85
  %wide.trip.count298 = zext nneg i32 %i.kg to i64
  br label %bb.w

._crit_edge283:                                   ; preds = %._crit_edge279, %bb.v
  %i.kk = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 2 uses
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !110
  %i.km = or i32 %i.kl, 65536
  store i32 %i.km, ptr %i.kk, align 4, !tbaa !110
  br label %bb.y

bb.w:                                             ; preds = %.lr.ph282, %._crit_edge279
  %indvars.iv295 = phi i64 [ 0, %.lr.ph282 ], [ %indvars.iv.next296, %._crit_edge279 ] ; 2 uses
  %i.kn = getelementptr inbounds nuw [268 x i8], ptr %i.kj, i64 %indvars.iv295 ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 264
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !130 ; 2 uses
  %i.kq = icmp sgt i32 %i.kp, 0
  br i1 %i.kq, label %.lr.ph278.preheader, label %._crit_edge279

.lr.ph278.preheader:                              ; preds = %bb.w
  %wide.trip.count293 = zext nneg i32 %i.kp to i64
  br label %.lr.ph278

._crit_edge279:                                   ; preds = %.lr.ph278, %bb.w
  %indvars.iv.next296 = add nuw nsw i64 %indvars.iv295, 1 ; 2 uses
  %exitcond299.not = icmp eq i64 %indvars.iv.next296, %wide.trip.count298
  br i1 %exitcond299.not, label %._crit_edge283, label %bb.w, !llvm.loop !161

.lr.ph278:                                        ; preds = %.lr.ph278.preheader, %.lr.ph278
  %indvars.iv290 = phi i64 [ 0, %.lr.ph278.preheader ], [ %indvars.iv.next291, %.lr.ph278 ] ; 2 uses
  %i.kr = getelementptr inbounds nuw [56 x i8], ptr %i.kn, i64 %indvars.iv290 ; 5 uses
  %.sroa.012.0.copyload = load <2 x float>, ptr %i.kr, align 4
  %.sroa.213.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kr, i64 8 ; 2 uses
  %.sroa.213.0.copyload = load float, ptr %.sroa.213.0..sroa_idx, align 4
  %i.ks = fsub <2 x float> %.sroa.012.0.copyload, %i.iy
  %i.kt = fsub float %.sroa.213.0.copyload, %i.ja
  store <2 x float> %i.ks, ptr %i.kr, align 4, !tbaa !128
  store float %i.kt, ptr %.sroa.213.0..sroa_idx, align 4, !tbaa !128
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kr, i64 12 ; 2 uses
  %.sroa.03.0.copyload = load <2 x float>, ptr %i.ku, align 4
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kr, i64 20 ; 2 uses
  %.sroa.24.0.copyload = load float, ptr %.sroa.24.0..sroa_idx, align 4
  %i.kv = fsub <2 x float> %.sroa.03.0.copyload, %i.kc
  %i.kw = fsub float %.sroa.24.0.copyload, %i.ke
  store <2 x float> %i.kv, ptr %i.ku, align 4, !tbaa !128
  store float %i.kw, ptr %.sroa.24.0..sroa_idx, align 4, !tbaa !128
  %indvars.iv.next291 = add nuw nsw i64 %indvars.iv290, 1 ; 2 uses
  %exitcond294.not = icmp eq i64 %indvars.iv.next291, %wide.trip.count293
  br i1 %exitcond294.not, label %._crit_edge279, label %.lr.ph278, !llvm.loop !162

bb.x:                                             ; preds = %.split271, %.split, %bb.u
  %i.kx = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 2 uses
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !110
  %i.kz = and i32 %i.ky, -65537
  store i32 %i.kz, ptr %i.kx, align 4, !tbaa !110
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
  %.sroa.7.0.copyload = load <2 x float>, ptr %.sroa.7.0..sroa_idx, align 4 ; 18 uses
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
  %i.aa = extractelement <2 x float> %.sroa.8.0.copyload, i64 1 ; 3 uses
  %.sroa.443.8.vec.extract.i.i = extractelement <2 x float> %.sroa.8.0.copyload, i64 0 ; 2 uses
  %.sroa.03.4.vec.extract.i.i.i = extractelement <2 x float> %.sroa.7.0.copyload, i64 1 ; 4 uses
  %.sroa.03.0.vec.extract.i.i.i = extractelement <2 x float> %.sroa.7.0.copyload, i64 0 ; 3 uses
  %.sroa.011.0.vec.extract.i.i.i = extractelement <2 x float> %.sroa.7170.0.copyload, i64 0 ; 2 uses
  %i.ab = fmul float %.sroa.011.0.vec.extract.i.i.i, %.sroa.03.4.vec.extract.i.i.i
  %shift = shufflevector <2 x float> %.sroa.7170.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %shift, %.sroa.7.0.copyload
  %i.ac = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ad = fsub float %i.ab, %i.ac
  %i.ae = shufflevector <2 x float> %.sroa.7170.0.copyload, <2 x float> %.sroa.8171.0.copyload, <4 x i32> <i32 1, i32 2, i32 2, i32 0>
  %i.af = shufflevector <2 x float> %.sroa.8.0.copyload, <2 x float> %.sroa.7.0.copyload, <4 x i32> <i32 0, i32 3, i32 2, i32 0>
  %i.ag = fmul <4 x float> %i.ae, %i.af           ; 2 uses
  %i.ah = shufflevector <4 x float> %i.ag, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.ai = shufflevector <4 x float> %i.ag, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.aj = fsub <2 x float> %i.ah, %i.ai
  %i.ak = shufflevector <2 x float> %.sroa.8.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 5 uses
  %i.al = fmul <2 x float> %.sroa.7170.0.copyload, %i.ak
  %i.am = fadd <2 x float> %i.al, %i.aj
  %i.an = shufflevector <2 x float> %.sroa.8171.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.ao = fmul <2 x float> %i.an, %.sroa.7.0.copyload
  %i.ap = fsub <2 x float> %i.am, %i.ao
  %i.aq = fmul <2 x float> %.sroa.8171.0.copyload, %i.z ; 2 uses
  %i.ar = extractelement <2 x float> %i.aq, i64 0
  %i.as = fadd float %i.ad, %i.ar
  %i.at = extractelement <2 x float> %i.aq, i64 1
  %i.au = fsub float %i.as, %i.at
  %.sroa.251.8.vec.insert.i.i = insertelement <2 x float> poison, float %i.au, i64 0
  %i.av = shufflevector <2 x float> %.sroa.7170.0.copyload, <2 x float> %.sroa.8171.0.copyload, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.aw = shufflevector <2 x float> %.sroa.7.0.copyload, <2 x float> %.sroa.8.0.copyload, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ax = fmul <4 x float> %i.av, %i.aw           ; 4 uses
  %shift199 = shufflevector <4 x float> %i.ax, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop200 = fadd <4 x float> %i.ax, %shift199
  %shift202 = shufflevector <4 x float> %i.ax, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop203 = fadd <4 x float> %shift202, %foldExtExtBinop200
  %shift205 = shufflevector <4 x float> %i.ax, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop206 = fadd <4 x float> %shift205, %foldExtExtBinop203
  %14 = shufflevector <4 x float> %foldExtExtBinop206, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %.sroa.251.12.vec.insert.i.i = shufflevector <2 x float> %.sroa.251.8.vec.insert.i.i, <2 x float> %14, <2 x i32> <i32 0, i32 2>
  store <2 x float> %i.ap, ptr %i.y, align 4, !tbaa !128, !alias.scope !194
  %.sroa.47.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %11, i64 20
  store <2 x float> %.sroa.251.12.vec.insert.i.i, ptr %.sroa.47.0..sroa_idx.i.i, align 4, !tbaa !128, !alias.scope !194
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
  %i.bl = fmul <2 x float> %i.bh, %i.ak
  %i.bm = fmul <2 x float> %i.bb, %i.ak
  %i.bn = fsub <2 x float> %i.bj, %i.bl           ; 2 uses
  %i.bo = fsub <2 x float> %i.bk, %i.bm           ; 2 uses
  %i.bp = fmul <2 x float> %i.bf, %i.bn
  %i.bq = fmul <2 x float> %i.bd, %i.bo
  %i.br = fsub <2 x float> %i.bp, %i.bq
  %foldExtExtBinop208 = fmul <2 x float> %.sroa.7.0.copyload, %i.bo
  %foldExtExtBinop210 = fmul <2 x float> %.sroa.7.0.copyload, %i.bn
  %shift212 = shufflevector <2 x float> %foldExtExtBinop210, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop213 = fsub <2 x float> %foldExtExtBinop208, %shift212
  %i.bs = extractelement <2 x float> %foldExtExtBinop213, i64 0
  %i.bt = fmul <2 x float> %i.br, splat (float 2.000000e+00)
  %i.bu = fadd <2 x float> %i.ay, %i.bt
  %i.bv = fmul float %i.bs, 2.000000e+00
  %i.bw = fadd float %i.az, %i.bv
  store <2 x float> %i.bu, ptr %11, align 8, !tbaa !128, !alias.scope !194
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
  %i.ct = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
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
end_hunk_0
