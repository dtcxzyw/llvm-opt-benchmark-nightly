Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d/original/convex_manifold?download=true
inline.NumInlined: 436
inline.NumDeleted: 65
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@b3CollideHulls:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #11
  call void @b3ComputeSeparatingAxis(ptr dead_on_unwind nonnull writable sret(%struct.b3AxisQuery) align 4 %12, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull byval(%struct.b3Transform) align 8 %4, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #11
  %i.qj = getelementptr inbounds nuw i8, ptr %12, i64 28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %13, ptr noundef nonnull align 4 dereferenceable(28) %i.qj, i64 28, i1 false), !tbaa.struct !93
  %i.qk = tail call fastcc zeroext i1 @b3BuildFaceBContact(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull byval(%struct.b3Transform) align 8 %4, ptr noundef nonnull byval(%struct.b3SeparatingAxis) align 8 %13, ptr noundef nonnull %5) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11
  br label %.critedge378

bb.t:                                             ; preds = %bb.b
  call void @b3ComputeSeparatingAxis(ptr dead_on_unwind nonnull writable sret(%struct.b3AxisQuery) align 4 %14, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull byval(%struct.b3Transform) align 8 %4, i1 noundef zeroext false)
  %i.ql = getelementptr inbounds nuw i8, ptr %14, i64 72
  %i.qm = load i32, ptr %i.ql, align 8
  %.not = icmp eq i32 %i.qm, -1
  br i1 %.not, label %.critedge378, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.qn = tail call fastcc zeroext i1 @b3BuildEdgeContact(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull byval(%struct.b3Transform) align 8 %4, ptr noundef nonnull byval(%struct.b3SeparatingAxis) align 8 %i.a, ptr noundef nonnull %5) ; 0 uses
  br label %.critedge378

.critedge376:                                     ; preds = %bb.l, %bb.q, %bb.j, %bb.f, %bb.k, %bb.b
  store i32 0, ptr %i.b, align 8, !tbaa !16
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 5 ; 3 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 6 ; 3 uses
  store i64 0, ptr %5, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #11
  call void @b3ComputeSeparatingAxis(ptr dead_on_unwind nonnull writable sret(%struct.b3AxisQuery) align 4 %15, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull byval(%struct.b3Transform) align 8 %4, i1 noundef zeroext true)
  %i.qo = getelementptr inbounds nuw i8, ptr %15, i64 84
  %i.qp = load i32, ptr %i.qo, align 4, !tbaa !65 ; 3 uses
  %.not367 = icmp eq i32 %i.qp, 0
  br i1 %.not367, label %bb.z, label %bb.v

bb.v:                                             ; preds = %.critedge376
  %i.qq = trunc i32 %i.qp to i8
  store i8 %i.qq, ptr %i.an, align 4, !tbaa !67
  switch i32 %i.qp, label %bb.y [
    i32 2, label %bb.w
    i32 3, label %bb.x
  ]

bb.w:                                             ; preds = %bb.v
  %i.qr = getelementptr inbounds nuw i8, ptr %15, i64 12
  %i.qs = load float, ptr %i.qr, align 4, !tbaa !94
  store float %i.qs, ptr %5, align 4, !tbaa !69
  %i.qt = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.qu = load i32, ptr %i.qt, align 4, !tbaa !95
  %i.qv = trunc i32 %i.qu to i8
  store i8 %i.qv, ptr %.sroa.3.0..sroa_idx, align 1, !tbaa !68
  %i.qw = getelementptr inbounds nuw i8, ptr %15, i64 20
  %i.qx = load i32, ptr %i.qw, align 4, !tbaa !96
  %i.qy = trunc i32 %i.qx to i8
  store i8 %i.qy, ptr %.sroa.4.0..sroa_idx, align 2, !tbaa !70
  br label %bb.aj

bb.x:                                             ; preds = %bb.v
  %i.qz = getelementptr inbounds nuw i8, ptr %15, i64 40
  %i.ra = load float, ptr %i.qz, align 4, !tbaa !97
  store float %i.ra, ptr %5, align 4, !tbaa !69
  %i.rb = getelementptr inbounds nuw i8, ptr %15, i64 44
  %i.rc = load i32, ptr %i.rb, align 4, !tbaa !98
  %i.rd = trunc i32 %i.rc to i8
  store i8 %i.rd, ptr %.sroa.3.0..sroa_idx, align 1, !tbaa !68
  %i.re = getelementptr inbounds nuw i8, ptr %15, i64 48
  %i.rf = load i32, ptr %i.re, align 4, !tbaa !99
  %i.rg = trunc i32 %i.rf to i8
  store i8 %i.rg, ptr %.sroa.4.0..sroa_idx, align 2, !tbaa !70
  br label %bb.aj

bb.y:                                             ; preds = %bb.v
  %i.rh = getelementptr inbounds nuw i8, ptr %15, i64 68
  %i.ri = load float, ptr %i.rh, align 4, !tbaa !100
  store float %i.ri, ptr %5, align 4, !tbaa !69
  %i.rj = getelementptr inbounds nuw i8, ptr %15, i64 72
  %i.rk = load i32, ptr %i.rj, align 4, !tbaa !101
  %i.rl = trunc i32 %i.rk to i8
  store i8 %i.rl, ptr %.sroa.3.0..sroa_idx, align 1, !tbaa !68
  %i.rm = getelementptr inbounds nuw i8, ptr %15, i64 76
  %i.rn = load i32, ptr %i.rm, align 4, !tbaa !102
  %i.ro = trunc i32 %i.rn to i8
  store i8 %i.ro, ptr %.sroa.4.0..sroa_idx, align 2, !tbaa !70
  br label %bb.aj

bb.z:                                             ; preds = %.critedge376
  %i.rp = getelementptr inbounds nuw i8, ptr %15, i64 12
  %i.rq = load float, ptr %i.rp, align 4, !tbaa !94
  %i.rr = getelementptr inbounds nuw i8, ptr %15, i64 40
  %i.rs = load float, ptr %i.rr, align 4, !tbaa !97
  %i.rt = fcmp ogt float %i.rq, %i.rs
  br i1 %i.rt, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %.sroa.3.0..sroa_idx556 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx556, align 4, !tbaa !31
  %.sroa.4.0..sroa_idx557 = getelementptr inbounds nuw i8, ptr %15, i64 20
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx557, align 4, !tbaa !31
  %i.ru = tail call fastcc zeroext i1 @b3BuildFaceAContact(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull byval(%struct.b3Transform) align 8 %4, i32 %.sroa.3.0.copyload, i32 %.sroa.4.0.copyload, ptr noundef nonnull %5) ; 0 uses
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.rv = getelementptr inbounds nuw i8, ptr %15, i64 28
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %16, ptr noundef nonnull align 4 dereferenceable(28) %i.rv, i64 28, i1 false), !tbaa.struct !93
  %i.rw = tail call fastcc zeroext i1 @b3BuildFaceBContact(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull byval(%struct.b3Transform) align 8 %4, ptr noundef nonnull byval(%struct.b3SeparatingAxis) align 8 %16, ptr noundef nonnull %5) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #11
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #11
  %i.rx = getelementptr inbounds nuw i8, ptr %15, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %17, ptr noundef nonnull align 4 dereferenceable(28) %i.rx, i64 28, i1 false), !tbaa.struct !93
  %i.ry = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.rz = load i32, ptr %i.ry, align 8, !tbaa !53
  %i.sa = icmp eq i32 %i.rz, -1
  br i1 %i.sa, label %bb.ai, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.sb = load i32, ptr %i.b, align 8, !tbaa !16
  %i.sc = icmp eq i32 %i.sb, 0
  br i1 %i.sc, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.sd = load float, ptr %5, align 4, !tbaa !69
  %i.se = getelementptr inbounds nuw i8, ptr %17, i64 12
  %i.sf = load float, ptr %i.se, align 4, !tbaa !52
  %i.sg = fadd float %i.h, %i.sd
  %i.sh = fcmp ogt float %i.sf, %i.sg
  br i1 %i.sh, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae, %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %18, i8 0, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  %i.si = getelementptr inbounds nuw i8, ptr %18, i64 24
  store ptr %19, ptr %i.si, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #11
  store i64 0, ptr %20, align 8
  %i.sj = call fastcc zeroext i1 @b3BuildEdgeContact(ptr noundef nonnull %18, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull byval(%struct.b3Transform) align 8 %4, ptr noundef nonnull byval(%struct.b3SeparatingAxis) align 8 %17, ptr noundef nonnull %20) ; 0 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %18, i64 32
  %i.sl = load i32, ptr %i.sk, align 8, !tbaa !16
  %i.sm = icmp eq i32 %i.sl, 1
  br i1 %i.sm, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.sn = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.so = load ptr, ptr %i.sn, align 8, !tbaa !17 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %18, i64 64, i1 false), !tbaa.struct !104
  store ptr %i.so, ptr %i.sn, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.so, ptr noundef nonnull align 4 dereferenceable(24) %19, i64 24, i1 false), !tbaa.struct !71
  %i.sp = load i64, ptr %20, align 8
  store i64 %i.sp, ptr %5, align 4
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #11
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ae, %bb.ah, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #11
  br label %bb.aj

bb.aj:                                            ; preds = %bb.w, %bb.y, %bb.x, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #11
  br label %.critedge378

.critedge378:                                     ; preds = %bb.t, %bb.u, %.critedge378.critedge383, %.critedge378.critedge381, %.critedge378.critedge, %bb.r, %bb.s, %bb.aj, %.critedge, %.critedge369, %.critedge374, %bb.a
  ret void
}

declare i32 @b3FindHullSupportVertex(ptr noundef, <2 x float>, float) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @b3BuildFaceAContact(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly byval(%struct.b3Transform) align 8 captures(none) %3, i32 %.16.val, i32 %.20.val, ptr nofree noundef writeonly captures(none) %4) unnamed_addr #2 {
bb.a:
  %5 = alloca [64 x %struct.b3ClipVertex], align 16 ; 4 uses
  %6 = alloca [64 x %struct.b3ClipVertex], align 16 ; 3 uses
  %7 = alloca [64 x %struct.b3LocalManifoldPoint], align 16 ; 18 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.b = load i32, ptr %i.a, align 8, !tbaa !56   ; 2 uses
  %i.c = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.e = load i32, ptr %i.d, align 4, !tbaa !46   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.g = load i32, ptr %i.f, align 4, !tbaa !41   ; 2 uses
  %i.h = icmp eq i32 %i.g, 0
  %i.i = sext i32 %i.g to i64
  %i.j = add nsw i64 %i.i, %i.c
  %i.k = inttoptr i64 %i.j to ptr
  %.0.i147 = select i1 %i.h, ptr null, ptr %i.k
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.m = load i32, ptr %i.l, align 4, !tbaa !27   ; 2 uses
  %i.n = sext i32 %.16.val to i64                 ; 2 uses
  %i.o = getelementptr inbounds [16 x i8], ptr %.0.i147, i64 %i.n ; 2 uses
  %.sroa.0100.0.copyload = load <2 x float>, ptr %i.o, align 4 ; 13 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.9.0.copyload = load <2 x float>, ptr %.sroa.9.0..sroa_idx, align 4 ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.q = load <2 x float>, ptr %i.p, align 4      ; 9 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.s = load <2 x float>, ptr %i.r, align 4      ; 7 uses
  %.sroa.9.8.vec.extract = extractelement <2 x float> %.sroa.9.0.copyload, i64 0 ; 4 uses
  %i.t = shufflevector <2 x float> %.sroa.0100.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.u = extractelement <2 x float> %.sroa.0100.0.copyload, i64 1
  %.sroa.03.0.vec.extract.i.i = extractelement <2 x float> %.sroa.0100.0.copyload, i64 0
  %i.v = shufflevector <2 x float> %.sroa.0100.0.copyload, <2 x float> %.sroa.9.0.copyload, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.w = fmul <2 x float> %i.v, %i.q
  %i.x = shufflevector <2 x float> %i.s, <2 x float> %i.q, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.y = fmul <2 x float> %.sroa.0100.0.copyload, %i.x
  %i.z = shufflevector <2 x float> %i.q, <2 x float> %i.s, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.aa = fmul <2 x float> %.sroa.0100.0.copyload, %i.z
  %i.ab = shufflevector <2 x float> %.sroa.9.0.copyload, <2 x float> %.sroa.0100.0.copyload, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ac = fmul <2 x float> %i.ab, %i.q
  %i.ad = fsub <2 x float> %i.w, %i.aa
  %i.ae = fsub <2 x float> %i.y, %i.ac
  %i.af = shufflevector <2 x float> %i.s, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ag = fmul <2 x float> %i.ab, %i.af
  %i.ah = fmul <2 x float> %i.v, %i.af
  %i.ai = fsub <2 x float> %i.ad, %i.ag           ; 2 uses
  %i.aj = fsub <2 x float> %i.ae, %i.ah           ; 2 uses
  %i.ak = fmul <2 x float> %i.z, %i.ai
  %i.al = fmul <2 x float> %i.x, %i.aj
  %i.am = fsub <2 x float> %i.ak, %i.al
  %i.an = fmul <2 x float> %i.am, splat (float 2.000000e+00)
  %i.ao = fadd <2 x float> %.sroa.0100.0.copyload, %i.an
  %.sroa.4.0..sroa_idx1 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.aq = ptrtoint ptr %2 to i64                  ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 116
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 108
  %i.at = fmul <2 x float> %i.q, %i.q             ; 2 uses
  %i.au = shufflevector <2 x float> %i.at, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %8 = shufflevector <2 x float> %i.q, <2 x float> %i.s, <3 x i32> <i32 0, i32 3, i32 2>
  %9 = shufflevector <2 x float> %i.q, <2 x float> %i.s, <3 x i32> <i32 1, i32 2, i32 2>
  %10 = fmul <3 x float> %8, %9                   ; 5 uses
  %11 = shufflevector <3 x float> %10, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.av = fadd <2 x float> %i.au, %11
  %i.aw = fmul <2 x float> %i.av, splat (float 2.000000e+00)
  %i.ax = fsub <2 x float> splat (float 1.000000e+00), %i.aw
  %12 = shufflevector <2 x float> %i.q, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison> ; 2 uses
  %13 = shufflevector <3 x float> %12, <3 x float> %10, <4 x i32> <i32 0, i32 3, i32 0, i32 1>
  %14 = shufflevector <2 x float> %i.aj, <2 x float> %i.s, <4 x i32> <i32 0, i32 poison, i32 2, i32 2>
  %15 = insertelement <4 x float> %14, float 1.000000e+00, i64 1
  %i.ay = fmul <4 x float> %13, %15               ; 3 uses
  %16 = shufflevector <3 x float> %12, <3 x float> %10, <4 x i32> <i32 1, i32 4, i32 1, i32 0>
  %17 = shufflevector <2 x float> %i.ai, <2 x float> %i.s, <4 x i32> <i32 1, i32 poison, i32 3, i32 3>
  %18 = insertelement <4 x float> %17, float 1.000000e+00, i64 1
  %i.az = fmul <4 x float> %16, %18               ; 3 uses
  %i.ba = fsub <4 x float> %i.ay, %i.az           ; 3 uses
  %i.bb = extractelement <4 x float> %i.ba, i64 0
  %i.bc = fmul float %i.bb, 2.000000e+00
  %i.bd = fadd float %.sroa.9.8.vec.extract, %i.bc
  %i.be = tail call i32 @b3FindIncidentFace(ptr noundef %2, <2 x float> %i.ao, float %i.bd, i32 noundef %.20.val) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %.sroa.0.0.copyload = load <2 x float>, ptr %3, align 8
  %.sroa.4.0.copyload = load float, ptr %.sroa.4.0..sroa_idx1, align 8
  %i.bf = load i32, ptr %i.ap, align 8, !tbaa !56 ; 2 uses
  %i.bg = icmp eq i32 %i.bf, 0
  %i.bh = sext i32 %i.bf to i64
  %i.bi = add nsw i64 %i.bh, %i.aq
  %i.bj = inttoptr i64 %i.bi to ptr
  %.0.i.i = select i1 %i.bg, ptr null, ptr %i.bj
  %i.bk = load i32, ptr %i.ar, align 4, !tbaa !46
  %i.bl = sext i32 %i.bk to i64
  %i.bm = add nsw i64 %i.bl, %i.aq
  %i.bn = inttoptr i64 %i.bm to ptr               ; 2 uses
  %i.bo = load i32, ptr %i.as, align 4, !tbaa !27 ; 2 uses
  %i.bp = icmp eq i32 %i.bo, 0
  %i.bq = sext i32 %i.bo to i64
  %i.br = add nsw i64 %i.bq, %i.aq
  %i.bs = inttoptr i64 %i.br to ptr
  %.0.i43.i = select i1 %i.bp, ptr null, ptr %i.bs
  %i.bt = sext i32 %i.be to i64
  %i.bu = getelementptr inbounds i8, ptr %.0.i.i, i64 %i.bt ; 2 uses
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !58
  %i.bw = zext i8 %i.bv to i32
  %shift = shufflevector <3 x float> %10, <3 x float> poison, <3 x i32> <i32 1, i32 poison, i32 poison>
  %foldExtExtBinop = fadd <3 x float> %10, %shift
  %i.bx = extractelement <4 x float> %i.ba, i64 2
  %i.by = fmul float %i.bx, 2.000000e+00
  %19 = shufflevector <4 x float> %i.ba, <4 x float> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %20 = shufflevector <3 x float> %foldExtExtBinop, <3 x float> poison, <2 x i32> <i32 0, i32 poison>
  %21 = shufflevector <2 x float> %19, <2 x float> %20, <2 x i32> <i32 0, i32 2>
  %22 = fmul <2 x float> %21, splat (float 2.000000e+00)
  %foldExtExtBinop5.a = fadd <4 x float> %i.ay, %i.az
  %23 = extractelement <4 x float> %foldExtExtBinop5.a, i64 3
  %24 = fmul float %23, 2.000000e+00
  %foldExtExtBinop7 = fadd <4 x float> %i.ay, %i.az
  %25 = shufflevector <4 x float> %foldExtExtBinop7, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %26 = shufflevector <2 x float> %25, <2 x float> %19, <2 x i32> <i32 0, i32 3>
  %i.bz = fmul <2 x float> %26, splat (float 2.000000e+00)
  %foldExtExtBinop10 = fadd <2 x float> %i.at, %i.au
  %i.ca = extractelement <2 x float> %foldExtExtBinop10, i64 0
  %i.cb = fmul float %i.ca, 2.000000e+00
  %i.cc = fsub float 1.000000e+00, %i.cb
  %.sroa.28.12.vec.extract.i.i = extractelement <2 x float> %.sroa.9.0.copyload, i64 1
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %.0.i149 = phi i32 [ %i.cg, %bb.b ], [ %i.bw, %bb.a ] ; 2 uses
  %i.cd = zext nneg i32 %.0.i149 to i64
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !59  ; 3 uses
  %i.cg = zext i8 %i.cf to i32                    ; 2 uses
  %i.ch = zext i8 %i.cf to i64
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 2
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !49
  %i.cl = zext i8 %i.ck to i64
  %i.cm = getelementptr inbounds nuw [12 x i8], ptr %.0.i43.i, i64 %i.cl ; 2 uses
  %.sroa.012.0.copyload.i = load <2 x float>, ptr %i.cm, align 4 ; 4 uses
  %.sroa.213.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %.sroa.213.0.copyload.i = load float, ptr %.sroa.213.0..sroa_idx.i, align 4 ; 2 uses
  %i.cn = shufflevector <2 x float> %.sroa.012.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %.sroa.03.0.vec.extract.i.i150 = extractelement <2 x float> %.sroa.012.0.copyload.i, i64 0
  %i.co = fmul float %i.by, %.sroa.03.0.vec.extract.i.i150
  %i.cp = extractelement <2 x float> %.sroa.012.0.copyload.i, i64 1
  %i.cq = fmul float %24, %i.cp
  %i.cr = fadd float %i.co, %i.cq
  %i.cs = fmul float %i.cc, %.sroa.213.0.copyload.i
  %i.ct = fadd float %i.cs, %i.cr
  %i.cu = fmul <2 x float> %22, %i.cn
  %i.cv = fmul <2 x float> %i.ax, %.sroa.012.0.copyload.i
  %i.cw = fadd <2 x float> %i.cu, %i.cv
  %i.cx = insertelement <2 x float> poison, float %.sroa.213.0.copyload.i, i64 0
  %i.cy = shufflevector <2 x float> %i.cx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cz = fmul <2 x float> %i.bz, %i.cy
  %i.da = fadd <2 x float> %i.cz, %i.cw
  %i.db = fadd <2 x float> %.sroa.0.0.copyload, %i.da ; 3 uses
  %i.dc = fadd float %.sroa.4.0.copyload, %i.ct   ; 2 uses
  %foldExtExtBinop12.a = fmul <2 x float> %.sroa.0100.0.copyload, %i.db
  %foldExtExtBinop14 = fmul <2 x float> %.sroa.0100.0.copyload, %i.db
  %shift16 = shufflevector <2 x float> %foldExtExtBinop14, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop17.a = fadd <2 x float> %foldExtExtBinop12.a, %shift16
  %i.dd = extractelement <2 x float> %foldExtExtBinop17.a, i64 0
  %i.de = fmul float %.sroa.9.8.vec.extract, %i.dc
  %i.df = fadd float %i.de, %i.dd
  %i.dg = fsub float %i.df, %.sroa.28.12.vec.extract.i.i
  %i.dh = tail call i32 @b3MakeFeaturePair(i32 noundef 1, i32 noundef %.0.i149, i32 noundef 1, i32 noundef %i.cg) #11
  %i.di = getelementptr inbounds nuw [20 x i8], ptr %5, i64 %indvars.iv.i ; 4 uses
  store <2 x float> %i.db, ptr %i.di, align 4
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  store float %i.dc, ptr %.sroa.5.0..sroa_idx.i, align 4, !tbaa !9
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.di, i64 12
  store float %i.dg, ptr %.sroa.7.0..sroa_idx.i, align 4, !tbaa !9
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  store i32 %i.dh, ptr %.sroa.8.0..sroa_idx.i, align 4
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.dj = load i8, ptr %i.bu, align 1, !tbaa !58
  %i.dk = icmp ne i8 %i.cf, %i.dj
  %i.dl = icmp samesign ult i64 %indvars.iv.i, 63
  %i.dm = select i1 %i.dk, i1 %i.dl, i1 false
  br i1 %i.dm, label %bb.b, label %b3BuildPolygon.exit, !llvm.loop !105

b3BuildPolygon.exit:                              ; preds = %bb.b
  %i.dn = icmp eq i32 %i.b, 0
  %i.do = sext i32 %i.b to i64
  %i.dp = add nsw i64 %i.do, %i.c
  %i.dq = inttoptr i64 %i.dp to ptr
  %.0.i = select i1 %i.dn, ptr null, ptr %i.dq
  %i.dr = icmp eq i32 %i.e, 0
  %i.ds = sext i32 %i.e to i64
  %i.dt = add nsw i64 %i.ds, %i.c
  %i.du = inttoptr i64 %i.dt to ptr               ; 2 uses
  %.0.i146 = select i1 %i.dr, ptr null, ptr %i.du
  %i.dv = icmp eq i32 %i.m, 0
  %i.dw = sext i32 %i.m to i64
  %i.dx = add nsw i64 %i.dw, %i.c
  %i.dy = inttoptr i64 %i.dx to ptr
  %.0.i148 = select i1 %i.dv, ptr null, ptr %i.dy ; 2 uses
  %i.dz = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %i.ea = getelementptr inbounds i8, ptr %.0.i, i64 %i.n ; 2 uses
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !58
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %b3BuildPolygon.exit
  %.0143.in = phi i8 [ %i.eb, %b3BuildPolygon.exit ], [ %i.ee, %bb.f ] ; 2 uses
  %.0139 = phi ptr [ %6, %b3BuildPolygon.exit ], [ %.0138, %bb.f ] ; 3 uses
  %.0138 = phi ptr [ %5, %b3BuildPolygon.exit ], [ %.0139, %bb.f ] ; 2 uses
  %.0137 = phi i32 [ %i.dz, %b3BuildPolygon.exit ], [ %i.fo, %bb.f ]
  %.0143 = zext i8 %.0143.in to i32
  %i.ec = zext i8 %.0143.in to i64
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %.0.i146, i64 %i.ec ; 2 uses
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !59  ; 3 uses
  %i.ef = zext i8 %i.ee to i64
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %i.ef
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ed, i64 2
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !49
  %i.ej = zext i8 %i.ei to i64
  %i.ek = getelementptr inbounds nuw [12 x i8], ptr %.0.i148, i64 %i.ej ; 2 uses
  %.sroa.067.0.copyload = load <2 x float>, ptr %i.ek, align 4 ; 3 uses
  %.sroa.569.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %.sroa.569.0.copyload = load float, ptr %.sroa.569.0..sroa_idx, align 4, !tbaa !9 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.eg, i64 2
  %i.em = load i8, ptr %i.el, align 1, !tbaa !49
  %i.en = zext i8 %i.em to i64
  %i.eo = getelementptr inbounds nuw [12 x i8], ptr %.0.i148, i64 %i.en ; 2 uses
  %.sroa.065.0.copyload = load <2 x float>, ptr %i.eo, align 4
  %.sroa.466.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %.sroa.466.0.copyload = load float, ptr %.sroa.466.0..sroa_idx, align 4, !tbaa !9
  %.sroa.03.0.vec.extract.i = extractelement <2 x float> %.sroa.067.0.copyload, i64 0
  %.sroa.03.4.vec.extract.i = extractelement <2 x float> %.sroa.067.0.copyload, i64 1
  %i.ep = fsub <2 x float> %.sroa.065.0.copyload, %.sroa.067.0.copyload ; 3 uses
  %i.eq = fsub float %.sroa.466.0.copyload, %.sroa.569.0.copyload ; 3 uses
  %i.er = fmul <2 x float> %i.ep, %i.ep           ; 2 uses
  %shift19.a = shufflevector <2 x float> %i.er, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop20.a = fadd <2 x float> %i.er, %shift19.a
  %i.es = extractelement <2 x float> %foldExtExtBinop20.a, i64 0
  %i.et = fmul float %i.eq, %i.eq
  %i.eu = fadd float %i.et, %i.es                 ; 2 uses
  %i.ev = fcmp ogt float %i.eu, f0x057A0000
  br i1 %i.ev, label %bb.d, label %b3Normalize.exit

bb.d:                                             ; preds = %bb.c
  %sqrt = call float @llvm.sqrt.f32(float %i.eu)
  %i.ew = fdiv float 1.000000e+00, %sqrt          ; 2 uses
  %i.ex = insertelement <2 x float> poison, float %i.ew, i64 0
  %i.ey = shufflevector <2 x float> %i.ex, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ez = fmul <2 x float> %i.ep, %i.ey
  %i.fa = fmul float %i.eq, %i.ew
  br label %b3Normalize.exit

b3Normalize.exit:                                 ; preds = %bb.c, %bb.d
  %.sroa.018.0.i = phi <2 x float> [ %i.ez, %bb.d ], [ zeroinitializer, %bb.c ] ; 3 uses
  %.sroa.5.0.i = phi float [ %i.fa, %bb.d ], [ 0.000000e+00, %bb.c ] ; 2 uses
  %shift22.a = shufflevector <2 x float> %.sroa.018.0.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop23.a = fmul <2 x float> %.sroa.9.0.copyload, %shift22.a
  %i.fb = extractelement <2 x float> %foldExtExtBinop23.a, i64 0
  %i.fc = fmul float %i.u, %.sroa.5.0.i
  %i.fd = fsub float %i.fb, %i.fc                 ; 2 uses
  %.sroa.018.0.vec.insert.i155 = insertelement <2 x float> poison, float %i.fd, i64 0
  %i.fe = fmul float %.sroa.03.0.vec.extract.i.i, %.sroa.5.0.i
  %foldExtExtBinop25 = fmul <2 x float> %.sroa.9.0.copyload, %.sroa.018.0.i
  %i.ff = extractelement <2 x float> %foldExtExtBinop25, i64 0
  %i.fg = fsub float %i.fe, %i.ff                 ; 2 uses
  %.sroa.018.4.vec.insert.i157 = insertelement <2 x float> %.sroa.018.0.vec.insert.i155, float %i.fg, i64 1
  %i.fh = fmul <2 x float> %i.t, %.sroa.018.0.i   ; 2 uses
  %shift27 = shufflevector <2 x float> %i.fh, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop28 = fsub <2 x float> %i.fh, %shift27 ; 2 uses
  %i.fi = extractelement <2 x float> %foldExtExtBinop28, i64 0
  %i.fj = fmul float %.sroa.03.0.vec.extract.i, %i.fd
  %i.fk = fmul float %.sroa.03.4.vec.extract.i, %i.fg
  %i.fl = fadd float %i.fj, %i.fk
  %i.fm = fmul float %.sroa.569.0.copyload, %i.fi
  %i.fn = fadd float %i.fm, %i.fl
  %.sroa.211.12.vec.insert.i = insertelement <2 x float> %foldExtExtBinop28, float %i.fn, i64 1
  %i.fo = call i32 @b3ClipPolygon(ptr noundef %.0139, ptr noundef %.0138, i32 noundef %.0137, <2 x float> %.sroa.018.4.vec.insert.i157, <2 x float> %.sroa.211.12.vec.insert.i, i32 noundef %.0143, <2 x float> %.sroa.0100.0.copyload, <2 x float> %.sroa.9.0.copyload) #11 ; 5 uses
  %i.fp = icmp sgt i32 %i.fo, 2
  br i1 %i.fp, label %bb.f, label %bb.e

bb.e:                                             ; preds = %b3Normalize.exit
  store i64 0, ptr %4, align 4
  br label %bb.ab

bb.f:                                             ; preds = %b3Normalize.exit
  %i.fq = load i8, ptr %i.ea, align 1, !tbaa !58
  %.not = icmp eq i8 %i.ee, %i.fq
  br i1 %.not, label %bb.g, label %bb.c, !llvm.loop !106

bb.g:                                             ; preds = %bb.f
  %i.fr = call i32 @llvm.umin.i32(i32 %i.fo, i32 64) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  store <2 x float> %.sroa.0100.0.copyload, ptr %0, align 8
  %.sroa.9.0..sroa_idx106 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store float %.sroa.9.8.vec.extract, ptr %.sroa.9.0..sroa_idx106, align 8, !tbaa !9
  %wide.trip.count = zext nneg i32 %i.fr to i64   ; 2 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.i
  %i.fs = call float @b3GetLengthUnitsPerMeter() #11
  %i.ft = fmul float %i.fs, 5.000000e-03
  %i.fu = fmul float %i.ft, 4.000000e+00
  %i.fv = fcmp ult float %i.go, %i.fu             ; 2 uses
  br i1 %i.fv, label %bb.k, label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.i
  %indvars.iv = phi i64 [ 0, %bb.g ], [ %indvars.iv.next, %bb.i ] ; 3 uses
  %.01417 = phi float [ f0x7F7FFFFF, %bb.g ], [ %i.go, %bb.i ] ; 2 uses
  %i.fw = getelementptr inbounds nuw [20 x i8], ptr %.0139, i64 %indvars.iv ; 4 uses
  %i.fx = getelementptr inbounds nuw [24 x i8], ptr %7, i64 %indvars.iv ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fx, i8 0, i64 24, i1 false)
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fw, i64 12 ; 3 uses
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !45
  %i.ga = fmul float %i.fz, 5.000000e-01          ; 2 uses
  %.sroa.05.0.copyload = load <2 x float>, ptr %i.fw, align 4
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %.sroa.26.0.copyload = load float, ptr %.sroa.26.0..sroa_idx, align 4
  %i.gb = insertelement <2 x float> poison, float %i.ga, i64 0
  %i.gc = shufflevector <2 x float> %i.gb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gd = fmul <2 x float> %.sroa.0100.0.copyload, %i.gc
  %i.ge = fsub <2 x float> %.sroa.05.0.copyload, %i.gd
  %i.gf = fmul float %.sroa.9.8.vec.extract, %i.ga
  %i.gg = fsub float %.sroa.26.0.copyload, %i.gf
  store <2 x float> %i.ge, ptr %i.fx, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  store float %i.gg, ptr %.sroa.48.0..sroa_idx, align 8, !tbaa !9
  %i.gh = load float, ptr %i.fy, align 4, !tbaa !45
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fx, i64 12
  store float %i.gh, ptr %i.gi, align 4, !tbaa !20
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  %i.gl = load i32, ptr %i.gk, align 4
  store i32 %i.gl, ptr %i.gj, align 8
  %i.gm = load float, ptr %i.fy, align 4, !tbaa !45 ; 2 uses
  %i.gn = fcmp olt float %.01417, %i.gm
  %i.go = select i1 %i.gn, float %.01417, float %i.gm ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.h, label %bb.i, !llvm.loop !107

bb.j:                                             ; preds = %bb.h
  store i64 0, ptr %4, align 4
  br label %bb.aa

bb.k:                                             ; preds = %bb.h
  %i.gp = icmp samesign ult i32 %i.fo, 5
  br i1 %i.gp, label %.lr.ph459.i, label %bb.m

.lr.ph459.i:                                      ; preds = %bb.k
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.gr, ptr noundef nonnull align 16 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !71
end_hunk_0
begin_hunk_1_@b3BuildFaceAContact:bb.a
  %i.kz = extractelement <2 x float> %.sroa.0244.0.copyload.i, i64 1 ; 2 uses
  br label %.lr.ph447.i

._crit_edge448.i:                                 ; preds = %.lr.ph447.i
  %i.la = icmp eq i32 %.6.i, -1
  br i1 %i.la, label %b3ReduceManifoldPoints.exit, label %.lr.ph455.i

.lr.ph447.i:                                      ; preds = %.lr.ph447.i, %.lr.ph447.preheader.i
  %indvars.iv468.i = phi i64 [ 0, %.lr.ph447.preheader.i ], [ %indvars.iv.next469.i, %.lr.ph447.i ] ; 3 uses
  %.5445.i = phi i32 [ -1, %.lr.ph447.preheader.i ], [ %.6.i, %.lr.ph447.i ]
  %.5307444.i = phi float [ %i.hf, %.lr.ph447.preheader.i ], [ %.6308.i, %.lr.ph447.i ] ; 2 uses
  %.0313443.i = phi float [ 0.000000e+00, %.lr.ph447.preheader.i ], [ %.1314.i, %.lr.ph447.i ]
  %i.lb = getelementptr inbounds nuw [24 x i8], ptr %7, i64 %indvars.iv468.i ; 2 uses
  %.sroa.0134.0.copyload.i = load <2 x float>, ptr %i.lb, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.lb, i64 8
  %.sroa.4.0.copyload.i = load float, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !9
  %foldExtExtBinop52 = fsub <2 x float> %.sroa.0134.0.copyload.i, %.sroa.0193.0.copyload.i
  %i.lc = extractelement <2 x float> %foldExtExtBinop52, i64 0 ; 2 uses
  %foldExtExtBinop54 = fsub <2 x float> %.sroa.0134.0.copyload.i, %.sroa.0193.0.copyload.i
  %i.ld = extractelement <2 x float> %foldExtExtBinop54, i64 1 ; 2 uses
  %i.le = fsub float %.sroa.4.0.copyload.i, %.sroa.8.0.copyload.i ; 2 uses
  %i.lf = fmul float %i.kx, %i.le
  %i.lg = fmul float %i.ky, %i.ld
  %i.lh = fsub float %i.lf, %i.lg
  %i.li = fmul float %i.ky, %i.lc
  %i.lj = fmul float %i.kw, %i.le
  %i.lk = fsub float %i.li, %i.lj
  %i.ll = fmul float %i.kw, %i.ld
  %i.lm = fmul float %i.kx, %i.lc
  %i.ln = fsub float %i.ll, %i.lm
  %i.lo = fmul float %.sroa.041.0.vec.extract.i.i, %i.lh
  %i.lp = fmul float %i.kz, %i.lk
  %i.lq = fadd float %i.lo, %i.lp
  %i.lr = fmul float %.sroa.10.0.copyload.i, %i.ln
  %i.ls = fadd float %i.lr, %i.lq                 ; 4 uses
  %i.lt = fcmp olt float %i.ls, 0.000000e+00
  %i.lu = fneg float %i.ls
  %i.lv = select i1 %i.lt, float %i.lu, float %i.ls ; 2 uses
  %i.lw = fmul float %i.lv, f0x3F733333
  %i.lx = fcmp ult float %i.lw, %.5307444.i       ; 3 uses
  %.1314.i = select i1 %i.lx, float %.0313443.i, float %i.ls ; 2 uses
  %.6308.i = select i1 %i.lx, float %.5307444.i, float %i.lv
  %i.ly = trunc nuw nsw i64 %indvars.iv468.i to i32
  %.6.i = select i1 %i.lx, i32 %.5445.i, i32 %i.ly ; 3 uses
  %indvars.iv.next469.i = add nuw nsw i64 %indvars.iv468.i, 1 ; 2 uses
  %exitcond473.not.i = icmp eq i64 %indvars.iv.next469.i, %wide.trip.count472.i
  br i1 %exitcond473.not.i, label %._crit_edge448.i, label %.lr.ph447.i, !llvm.loop !110

.lr.ph455.i:                                      ; preds = %._crit_edge448.i
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ku, i64 48
  %i.ma = sext i32 %.6.i to i64
  %i.mb = getelementptr inbounds [24 x i8], ptr %7, i64 %i.ma ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.lz, ptr noundef nonnull align 8 dereferenceable(24) %i.mb, i64 24, i1 false), !tbaa.struct !71
  store i32 3, ptr %i.jb, align 8, !tbaa !16
  %i.mc = add nsw i32 %i.fr, -3                   ; 2 uses
  %i.md = zext nneg i32 %i.mc to i64
  %i.me = getelementptr inbounds nuw [24 x i8], ptr %7, i64 %i.md
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.mb, ptr noundef nonnull align 8 dereferenceable(24) %i.me, i64 24, i1 false), !tbaa.struct !71
  %i.mf = load ptr, ptr %i.ix, align 8, !tbaa !17 ; 3 uses
  %.sroa.6105.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.mf, i64 56
  %.sroa.6105.0.copyload.i = load float, ptr %.sroa.6105.0..sroa_idx.i, align 4, !tbaa !9 ; 3 uses
  %i.mg = fcmp olt float %.1314.i, 0.000000e+00
  %i.mh = select i1 %i.mg, float -1.000000e+00, float 1.000000e+00 ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mf, i64 48
  %.sroa.0102.0.copyload.i = load <2 x float>, ptr %i.mi, align 4 ; 5 uses
  %i.mj = shufflevector <2 x float> %.sroa.0102.0.copyload.i, <2 x float> %.sroa.0193.0.copyload.i, <2 x i32> <i32 0, i32 2>
  %i.mk = shufflevector <2 x float> %.sroa.0150.0.copyload.i, <2 x float> %.sroa.0102.0.copyload.i, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ml = fsub <2 x float> %i.mj, %i.mk           ; 3 uses
  %i.mm = shufflevector <2 x float> %.sroa.0102.0.copyload.i, <2 x float> %.sroa.0193.0.copyload.i, <2 x i32> <i32 1, i32 3>
  %i.mn = shufflevector <2 x float> %.sroa.0150.0.copyload.i, <2 x float> %.sroa.0102.0.copyload.i, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.mo = insertelement <2 x float> %.sroa.0193.0.copyload.i, float %.sroa.6105.0.copyload.i, i64 0
  %i.mp = insertelement <2 x float> %.sroa.0102.0.copyload.i, float %.sroa.6153.0.copyload.i, i64 0 ; 2 uses
  %i.mq = fsub <2 x float> %i.mm, %i.mn           ; 2 uses
  %i.mr = fsub <2 x float> %i.mo, %i.mp           ; 2 uses
  %i.ms = fsub float %.sroa.8.0.copyload.i, %.sroa.6105.0.copyload.i ; 2 uses
  %smax477.i = call i32 @llvm.smax.i32(i32 %i.mc, i32 1)
  %wide.trip.count478.i = zext nneg i32 %smax477.i to i64
  %i.mt = insertelement <2 x float> poison, float %i.mh, i64 0
  %i.mu = shufflevector <2 x float> %i.mt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mv = insertelement <2 x float> poison, float %.sroa.10.0.copyload.i, i64 0
  %i.mw = shufflevector <2 x float> %i.mv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mx = insertelement <2 x float> %i.ml, float %i.ms, i64 1
  %i.my = shufflevector <2 x float> %i.mr, <2 x float> %i.ml, <2 x i32> <i32 0, i32 3>
  %i.mz = insertelement <2 x float> %i.mq, float %i.ms, i64 1
  br label %bb.y

._crit_edge456.i:                                 ; preds = %bb.y
  %.not.i = icmp eq i32 %.8.i, -1
  br i1 %.not.i, label %b3ReduceManifoldPoints.exit, label %bb.z

bb.y:                                             ; preds = %bb.y, %.lr.ph455.i
  %indvars.iv474.i = phi i64 [ 0, %.lr.ph455.i ], [ %indvars.iv.next475.i, %bb.y ] ; 3 uses
  %.7453.i = phi i32 [ -1, %.lr.ph455.i ], [ %.8.i, %bb.y ]
  %.7309452.i = phi float [ %i.hf, %.lr.ph455.i ], [ %.8310.i, %bb.y ] ; 2 uses
  %i.na = getelementptr inbounds nuw [24 x i8], ptr %7, i64 %indvars.iv474.i ; 2 uses
  %.sroa.093.0.copyload.i = load <2 x float>, ptr %i.na, align 8 ; 5 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.na, i64 8
  %.sroa.6.0.copyload.i = load float, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !9 ; 3 uses
  %foldExtExtBinop56 = fsub <2 x float> %.sroa.093.0.copyload.i, %.sroa.0193.0.copyload.i
  %i.nb = extractelement <2 x float> %foldExtExtBinop56, i64 0 ; 2 uses
  %foldExtExtBinop58 = fsub <2 x float> %.sroa.093.0.copyload.i, %.sroa.0193.0.copyload.i
  %i.nc = extractelement <2 x float> %foldExtExtBinop58, i64 1 ; 2 uses
  %i.nd = fsub float %.sroa.6.0.copyload.i, %.sroa.8.0.copyload.i ; 2 uses
  %i.ne = fmul float %i.ky, %i.nc
  %i.nf = fmul float %i.kx, %i.nd
  %i.ng = fsub float %i.ne, %i.nf
  %i.nh = fmul float %i.kw, %i.nd
  %i.ni = fmul float %i.ky, %i.nb
  %i.nj = fsub float %i.nh, %i.ni
  %i.nk = fmul float %i.kx, %i.nb
  %i.nl = fmul float %i.kw, %i.nc
  %i.nm = fsub float %i.nk, %i.nl
  %i.nn = fmul float %.sroa.041.0.vec.extract.i.i, %i.ng
  %i.no = fmul float %i.kz, %i.nj
  %i.np = fadd float %i.nn, %i.no
  %i.nq = fmul float %.sroa.10.0.copyload.i, %i.nm
  %i.nr = fadd float %i.nq, %i.np
  %i.ns = fmul float %i.mh, %i.nr                 ; 2 uses
  %i.nt = shufflevector <2 x float> %.sroa.093.0.copyload.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nu = fsub <2 x float> %i.nt, %i.mk           ; 3 uses
  %i.nv = shufflevector <2 x float> %.sroa.093.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.nw = fsub <2 x float> %i.nv, %i.mn           ; 2 uses
  %i.nx = insertelement <2 x float> %.sroa.093.0.copyload.i, float %.sroa.6.0.copyload.i, i64 0
  %i.ny = fsub <2 x float> %i.nx, %i.mp           ; 2 uses
  %i.nz = fsub float %.sroa.6.0.copyload.i, %.sroa.6105.0.copyload.i ; 2 uses
  %i.oa = fmul <2 x float> %i.mx, %i.ny
  %i.ob = insertelement <2 x float> %i.nu, float %i.nz, i64 1
  %i.oc = fmul <2 x float> %i.mr, %i.ob
  %i.od = fsub <2 x float> %i.oa, %i.oc
  %i.oe = insertelement <2 x float> %i.nw, float %i.nz, i64 1
  %i.of = fmul <2 x float> %i.my, %i.oe
  %i.og = shufflevector <2 x float> %i.ny, <2 x float> %i.nu, <2 x i32> <i32 0, i32 3>
  %i.oh = fmul <2 x float> %i.mz, %i.og
  %i.oi = fsub <2 x float> %i.of, %i.oh
  %i.oj = fmul <2 x float> %i.mq, %i.nu
  %i.ok = fmul <2 x float> %i.ml, %i.nw
  %i.ol = fsub <2 x float> %i.oj, %i.ok
  %i.om = fmul <2 x float> %i.hg, %i.od
  %i.on = fmul <2 x float> %.sroa.0244.0.copyload.i, %i.oi
  %i.oo = fadd <2 x float> %i.om, %i.on
  %i.op = fmul <2 x float> %i.mw, %i.ol
  %i.oq = fadd <2 x float> %i.op, %i.oo
  %i.or = fmul <2 x float> %i.mu, %i.oq           ; 2 uses
  %i.os = extractelement <2 x float> %i.or, i64 0 ; 2 uses
  %i.ot = extractelement <2 x float> %i.or, i64 1 ; 2 uses
  %i.ou = fcmp ogt float %i.os, %i.ot
  %i.ov = select i1 %i.ou, float %i.os, float %i.ot ; 2 uses
  %i.ow = fcmp ogt float %i.ns, %i.ov
  %i.ox = select i1 %i.ow, float %i.ns, float %i.ov ; 2 uses
  %i.oy = fmul float %i.ox, f0x3F733333
  %i.oz = fcmp ogt float %i.oy, %.7309452.i       ; 2 uses
  %.8310.i = select i1 %i.oz, float %i.ox, float %.7309452.i
  %i.pa = trunc nuw nsw i64 %indvars.iv474.i to i32
  %.8.i = select i1 %i.oz, i32 %i.pa, i32 %.7453.i ; 3 uses
  %indvars.iv.next475.i = add nuw nsw i64 %indvars.iv474.i, 1 ; 2 uses
  %exitcond479.not.i = icmp eq i64 %indvars.iv.next475.i, %wide.trip.count478.i
  br i1 %exitcond479.not.i, label %._crit_edge456.i, label %bb.y, !llvm.loop !111

bb.z:                                             ; preds = %._crit_edge456.i
  %i.pb = getelementptr inbounds nuw i8, ptr %i.mf, i64 72
  %i.pc = sext i32 %.8.i to i64
  %i.pd = getelementptr inbounds [24 x i8], ptr %7, i64 %i.pc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.pb, ptr noundef nonnull align 8 dereferenceable(24) %i.pd, i64 24, i1 false), !tbaa.struct !71
  %i.pe = load i32, ptr %i.jb, align 8, !tbaa !16
  %i.pf = add nsw i32 %i.pe, 1
  store i32 %i.pf, ptr %i.jb, align 8, !tbaa !16
  br label %b3ReduceManifoldPoints.exit

b3ReduceManifoldPoints.exit:                      ; preds = %._crit_edge460.i, %bb.w, %._crit_edge439.i, %._crit_edge448.i, %._crit_edge456.i, %bb.z
  store float %i.go, ptr %4, align 4, !tbaa !69
  %i.pg = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i8 2, ptr %i.pg, align 4, !tbaa !67
  %i.ph = trunc i32 %.16.val to i8
  %i.pi = getelementptr inbounds nuw i8, ptr %4, i64 5
  store i8 %i.ph, ptr %i.pi, align 1, !tbaa !68
  %i.pj = trunc i32 %.20.val to i8
  %i.pk = getelementptr inbounds nuw i8, ptr %4, i64 6
  store i8 %i.pj, ptr %i.pk, align 2, !tbaa !70
  br label %bb.aa

bb.aa:                                            ; preds = %b3ReduceManifoldPoints.exit, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  br label %bb.ab

bb.ab:                                            ; preds = %bb.e, %bb.aa
  %.3 = phi i1 [ %i.fv, %bb.aa ], [ false, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  ret i1 %.3
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @b3BuildFaceBContact(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly byval(%struct.b3Transform) align 8 captures(none) %3, ptr nofree noundef readonly byval(%struct.b3SeparatingAxis) align 8 captures(none) %4, ptr nofree noundef writeonly captures(none) %5) unnamed_addr #2 {
bb.a:
  %6 = alloca %struct.b3Transform, align 8        ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %.sroa.093.0.copyload = load <2 x float>, ptr %3, align 8 ; 5 uses
  %.sroa.494.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.494.0.copyload = load float, ptr %.sroa.494.0..sroa_idx, align 8 ; 5 uses
  %.sroa.595.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 12
  %.sroa.595.0.copyload = load <2 x float>, ptr %.sroa.595.0..sroa_idx, align 4 ; 13 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 20
  %.sroa.6.0.copyload = load <2 x float>, ptr %.sroa.6.0..sroa_idx, align 4 ; 10 uses
  %.sroa.3.8.vec.extract.i.i = extractelement <2 x float> %.sroa.6.0.copyload, i64 0 ; 2 uses
  %.sroa.011.0.vec.extract.i.i.i = extractelement <2 x float> %.sroa.595.0.copyload, i64 0 ; 2 uses
  %i.a = fmul float %.sroa.494.0.copyload, %.sroa.011.0.vec.extract.i.i.i
  %foldExtExtBinop = fmul <2 x float> %.sroa.093.0.copyload, %.sroa.6.0.copyload
  %i.b = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.c = shufflevector <2 x float> %.sroa.595.0.copyload, <2 x float> %.sroa.6.0.copyload, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.d = fmul <2 x float> %.sroa.093.0.copyload, %i.c
  %i.e = shufflevector <2 x float> %.sroa.093.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.f = insertelement <2 x float> %i.e, float %.sroa.494.0.copyload, i64 1 ; 2 uses
  %i.g = fmul <2 x float> %i.f, %.sroa.595.0.copyload
  %i.h = fsub <2 x float> %i.d, %i.g              ; 2 uses
  %i.i = fsub float %i.a, %i.b
  %i.j = insertelement <2 x float> %i.e, float %.sroa.494.0.copyload, i64 0
  %i.k = shufflevector <2 x float> %.sroa.6.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.l = fmul <2 x float> %i.j, %i.k
  %i.m = fmul <2 x float> %i.f, %i.k
  %i.n = fadd <2 x float> %i.h, %i.l              ; 2 uses
  %i.o = shufflevector <2 x float> %i.h, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.p = insertelement <2 x float> %i.o, float %i.i, i64 0
  %i.q = fadd <2 x float> %i.m, %i.p              ; 2 uses
  %i.r = fmul <2 x float> %i.c, %i.n
  %i.s = shufflevector <2 x float> %.sroa.6.0.copyload, <2 x float> %.sroa.595.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.t = fmul <2 x float> %i.s, %i.q
  %i.u = fsub <2 x float> %i.r, %i.t
  %foldExtExtBinop2 = fmul <2 x float> %.sroa.595.0.copyload, %i.q
  %foldExtExtBinop4 = fmul <2 x float> %.sroa.595.0.copyload, %i.n
  %shift = shufflevector <2 x float> %foldExtExtBinop4, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop6 = fsub <2 x float> %foldExtExtBinop2, %shift
  %i.v = extractelement <2 x float> %foldExtExtBinop6, i64 0
  %i.w = fmul <2 x float> %i.u, splat (float 2.000000e+00)
  %i.x = fsub <2 x float> %i.w, %.sroa.093.0.copyload
  %i.y = fmul float %i.v, 2.000000e+00
  %i.z = fsub float %i.y, %.sroa.494.0.copyload
  store <2 x float> %i.x, ptr %6, align 8, !alias.scope !115
  %.sroa.413.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store float %i.z, ptr %.sroa.413.0..sroa_idx.i, align 8, !tbaa !9, !alias.scope !115
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.ab = fneg <2 x float> %.sroa.595.0.copyload
  %i.ac = fneg float %.sroa.3.8.vec.extract.i.i
  %.sroa.33.12.vec.insert.i.i = insertelement <2 x float> %.sroa.6.0.copyload, float %i.ac, i64 0
  store <2 x float> %i.ab, ptr %i.aa, align 4, !alias.scope !115
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 20
  store <2 x float> %.sroa.33.12.vec.insert.i.i, ptr %.sroa.4.0..sroa_idx.i, align 4, !alias.scope !115
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !54 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !53 ; 2 uses
  %i.ah = tail call fastcc zeroext i1 @b3BuildFaceAContact(ptr noundef %0, ptr noundef %2, ptr noundef %1, ptr noundef nonnull byval(%struct.b3Transform) align 8 %6, i32 %i.ae, i32 %i.ag, ptr noundef %5) ; 2 uses
  br i1 %i.ah, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %5, align 4
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %.sroa.3.12.vec.extract.i.i = extractelement <2 x float> %.sroa.6.0.copyload, i64 1 ; 2 uses
  %.sroa.011.4.vec.extract.i.i.i = extractelement <2 x float> %.sroa.595.0.copyload, i64 1 ; 2 uses
  %i.ai = fmul <2 x float> %.sroa.595.0.copyload, %.sroa.595.0.copyload ; 2 uses
  %i.aj = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %7 = shufflevector <2 x float> %.sroa.595.0.copyload, <2 x float> %.sroa.6.0.copyload, <3 x i32> <i32 0, i32 3, i32 2>
  %8 = shufflevector <2 x float> %.sroa.595.0.copyload, <2 x float> %.sroa.6.0.copyload, <3 x i32> <i32 1, i32 2, i32 2>
  %9 = fmul <3 x float> %7, %8                    ; 3 uses
  %foldExtExtBinop8.a = fmul <2 x float> %.sroa.595.0.copyload, %.sroa.6.0.copyload
  %i.ak = extractelement <2 x float> %foldExtExtBinop8.a, i64 0 ; 2 uses
  %i.al = fmul float %.sroa.011.0.vec.extract.i.i.i, %.sroa.3.12.vec.extract.i.i ; 2 uses
  %i.am = fmul float %.sroa.011.4.vec.extract.i.i.i, %.sroa.3.8.vec.extract.i.i ; 2 uses
  %i.an = fmul float %.sroa.011.4.vec.extract.i.i.i, %.sroa.3.12.vec.extract.i.i ; 2 uses
  %10 = fsub float %i.ak, %i.an
  %i.ao = fmul float %10, 2.000000e+00            ; 2 uses
  %11 = fadd float %i.am, %i.al
  %i.ap = fmul float %11, 2.000000e+00            ; 2 uses
  %12 = extractelement <3 x float> %9, i64 0      ; 2 uses
  %13 = extractelement <3 x float> %9, i64 1      ; 2 uses
  %i.aq = fadd float %12, %13
  %i.ar = fsub float %12, %13
  %i.as = insertelement <2 x float> poison, float %i.ar, i64 0
  %i.at = insertelement <2 x float> %i.as, float %i.aq, i64 1
  %i.au = fmul <2 x float> %i.at, splat (float 2.000000e+00) ; 2 uses
  %14 = shufflevector <3 x float> %9, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.av = fadd <2 x float> %i.aj, %14
  %i.aw = fmul <2 x float> %i.av, splat (float 2.000000e+00)
  %i.ax = fsub <2 x float> splat (float 1.000000e+00), %i.aw ; 2 uses
  %i.ay = fsub float %i.am, %i.al
  %i.az = fadd float %i.ak, %i.an
  %i.ba = insertelement <2 x float> poison, float %i.az, i64 0
  %i.bb = insertelement <2 x float> %i.ba, float %i.ay, i64 1
  %i.bc = fmul <2 x float> %i.bb, splat (float 2.000000e+00) ; 2 uses
  %foldExtExtBinop11 = fadd <2 x float> %i.ai, %i.aj
  %i.bd = extractelement <2 x float> %foldExtExtBinop11, i64 0
  %i.be = fmul float %i.bd, 2.000000e+00
  %i.bf = fsub float 1.000000e+00, %i.be          ; 2 uses
  %.sroa.030.0.copyload = load <2 x float>, ptr %0, align 8 ; 4 uses
  %.sroa.231.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.231.0.copyload = load float, ptr %.sroa.231.0..sroa_idx, align 8 ; 2 uses
  %i.bg = shufflevector <2 x float> %.sroa.030.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %.sroa.03.0.vec.extract.i62 = extractelement <2 x float> %.sroa.030.0.copyload, i64 0
  %i.bh = fmul float %i.ao, %.sroa.03.0.vec.extract.i62
  %i.bi = extractelement <2 x float> %.sroa.030.0.copyload, i64 1
  %i.bj = fmul float %i.ap, %i.bi
  %i.bk = fadd float %i.bh, %i.bj
  %i.bl = fmul float %i.bf, %.sroa.231.0.copyload
  %i.bm = fadd float %i.bl, %i.bk
  %i.bn = fmul <2 x float> %i.au, %i.bg
  %i.bo = fmul <2 x float> %i.ax, %.sroa.030.0.copyload
  %i.bp = fadd <2 x float> %i.bn, %i.bo
  %i.bq = insertelement <2 x float> poison, float %.sroa.231.0.copyload, i64 0
  %i.br = shufflevector <2 x float> %i.bq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bs = fmul <2 x float> %i.bc, %i.br
  %i.bt = fadd <2 x float> %i.bs, %i.bp
  %i.bu = fneg <2 x float> %i.bt
  %i.bv = fneg float %i.bm
  store <2 x float> %i.bu, ptr %0, align 8
  store float %i.bv, ptr %.sroa.231.0..sroa_idx, align 8, !tbaa !9
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !16
  %i.by = icmp sgt i32 %i.bx, 0
  br i1 %i.by, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.d

._crit_edge:                                      ; preds = %bb.d, %bb.c
  %i.ca = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i8 3, ptr %i.ca, align 4, !tbaa !67
  %i.cb = trunc i32 %i.ag to i8
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 5
  store i8 %i.cb, ptr %i.cc, align 1, !tbaa !68
  %i.cd = trunc i32 %i.ae to i8
  %i.ce = getelementptr inbounds nuw i8, ptr %5, i64 6
  store i8 %i.cd, ptr %i.ce, align 2, !tbaa !70
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.cf = load ptr, ptr %i.bz, align 8, !tbaa !17
  %i.cg = getelementptr inbounds nuw [24 x i8], ptr %i.cf, i64 %indvars.iv ; 4 uses
  %.sroa.010.0.copyload = load <2 x float>, ptr %i.cg, align 4 ; 4 uses
  %.sroa.211.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cg, i64 8 ; 2 uses
  %.sroa.211.0.copyload = load float, ptr %.sroa.211.0..sroa_idx, align 4 ; 2 uses
  %i.ch = shufflevector <2 x float> %.sroa.010.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %.sroa.03.0.vec.extract.i72 = extractelement <2 x float> %.sroa.010.0.copyload, i64 0
  %i.ci = fmul float %i.ao, %.sroa.03.0.vec.extract.i72
  %i.cj = extractelement <2 x float> %.sroa.010.0.copyload, i64 1
  %i.ck = fmul float %i.ap, %i.cj
  %i.cl = fadd float %i.ci, %i.ck
  %i.cm = fmul float %i.bf, %.sroa.211.0.copyload
  %i.cn = fadd float %i.cm, %i.cl
  %i.co = fmul <2 x float> %i.au, %i.ch
  %i.cp = fmul <2 x float> %i.ax, %.sroa.010.0.copyload
  %i.cq = fadd <2 x float> %i.co, %i.cp
  %i.cr = insertelement <2 x float> poison, float %.sroa.211.0.copyload, i64 0
  %i.cs = shufflevector <2 x float> %i.cr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ct = fmul <2 x float> %i.bc, %i.cs
  %i.cu = fadd <2 x float> %i.ct, %i.cq
  %i.cv = fadd <2 x float> %.sroa.093.0.copyload, %i.cu
  %i.cw = fadd float %.sroa.494.0.copyload, %i.cn
  store <2 x float> %i.cv, ptr %i.cg, align 4
  store float %i.cw, ptr %.sroa.211.0..sroa_idx, align 4, !tbaa !9
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cg, i64 16 ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 4
  %i.cz = tail call i32 @b3FlipPair(i32 %i.cy) #11
  store i32 %i.cz, ptr %i.cx, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.da = load i32, ptr %i.bw, align 8, !tbaa !16
  %i.db = sext i32 %i.da to i64
  %i.dc = icmp slt i64 %indvars.iv.next, %i.db
  br i1 %i.dc, label %bb.d, label %._crit_edge, !llvm.loop !114

bb.e:                                             ; preds = %._crit_edge, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  ret i1 %i.ah
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @b3BuildEdgeContact(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly byval(%struct.b3Transform) align 8 captures(none) %3, ptr nofree noundef readonly byval(%struct.b3SeparatingAxis) align 8 captures(none) %4, ptr nofree noundef writeonly captures(none) initializes((0, 7)) %5) unnamed_addr #2 {
bb.a:
  %6 = alloca %struct.b3SegmentDistanceResult, align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.b = load i32, ptr %i.a, align 4, !tbaa !46   ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  %i.d = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.e = sext i32 %i.b to i64
  %i.f = add nsw i64 %i.e, %i.d
  %i.g = inttoptr i64 %i.f to ptr                 ; 2 uses
  %.0.i = select i1 %i.c, ptr null, ptr %i.g
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.i = load i32, ptr %i.h, align 4, !tbaa !27   ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  %i.k = sext i32 %i.i to i64
  %i.l = add nsw i64 %i.k, %i.d
  %i.m = inttoptr i64 %i.l to ptr
  %.0.i124 = select i1 %i.j, ptr null, ptr %i.m   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 116
  %i.o = load i32, ptr %i.n, align 4, !tbaa !46   ; 2 uses
  %i.p = icmp eq i32 %i.o, 0
  %i.q = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.r = sext i32 %i.o to i64
  %i.s = add nsw i64 %i.r, %i.q
  %i.t = inttoptr i64 %i.s to ptr                 ; 2 uses
  %.0.i125 = select i1 %i.p, ptr null, ptr %i.t
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 108
  %i.v = load i32, ptr %i.u, align 4, !tbaa !27   ; 2 uses
  %i.w = icmp eq i32 %i.v, 0
  %i.x = sext i32 %i.v to i64
  %i.y = add nsw i64 %i.x, %i.q
  %i.z = inttoptr i64 %i.y to ptr
  %.0.i126 = select i1 %i.w, ptr null, ptr %i.z   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !53 ; 3 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds [4 x i8], ptr %.0.i, i64 %i.ac ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !60
  %i.ag = zext i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 2
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !49
  %i.ak = zext i8 %i.aj to i64
  %i.al = getelementptr inbounds nuw [12 x i8], ptr %.0.i124, i64 %i.ak ; 2 uses
  %.sroa.091.0.copyload = load <2 x float>, ptr %i.al, align 4 ; 2 uses
  %.sroa.593.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.sroa.593.0.copyload = load float, ptr %.sroa.593.0..sroa_idx, align 4, !tbaa !9 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 2
  %i.an = load i8, ptr %i.am, align 1, !tbaa !49
  %i.ao = zext i8 %i.an to i64
  %i.ap = getelementptr inbounds nuw [12 x i8], ptr %.0.i124, i64 %i.ao ; 2 uses
  %.sroa.089.0.copyload = load <2 x float>, ptr %i.ap, align 4
  %.sroa.490.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.sroa.490.0.copyload = load float, ptr %.sroa.490.0..sroa_idx, align 4, !tbaa !9
  %i.aq = fsub <2 x float> %.sroa.089.0.copyload, %.sroa.091.0.copyload
  %i.ar = fsub float %.sroa.490.0.copyload, %.sroa.593.0.copyload
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.at = load i32, ptr %i.as, align 4, !tbaa !54 ; 3 uses
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds [4 x i8], ptr %.0.i125, i64 %i.au ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 1
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !60
  %i.ay = zext i8 %i.ax to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 2
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !49
  %i.bc = zext i8 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [12 x i8], ptr %.0.i126, i64 %i.bc ; 2 uses
  %.sroa.071.0.copyload = load <2 x float>, ptr %i.bd, align 4 ; 4 uses
  %.sroa.272.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %.sroa.272.0.copyload = load float, ptr %.sroa.272.0..sroa_idx, align 4 ; 4 uses
  %.sroa.0181.0.copyload = load <2 x float>, ptr %3, align 8 ; 2 uses
  %.sroa.4182.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.be = load <4 x float>, ptr %.sroa.4182.0..sroa_idx, align 8
  %.sroa.5183.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 12
  %.sroa.5183.0.copyload = load <2 x float>, ptr %.sroa.5183.0..sroa_idx, align 4 ; 7 uses
  %.sroa.6184.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 20
  %.sroa.6184.0.copyload = load <2 x float>, ptr %.sroa.6184.0..sroa_idx, align 4 ; 5 uses
  %.sroa.011.0.vec.extract.i.i = extractelement <2 x float> %.sroa.5183.0.copyload, i64 0 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.az, i64 2
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !49
  %i.bh = zext i8 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [12 x i8], ptr %.0.i126, i64 %i.bh ; 2 uses
  %.sroa.063.0.copyload = load <2 x float>, ptr %i.bi, align 4 ; 4 uses
  %.sroa.264.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %.sroa.264.0.copyload = load float, ptr %.sroa.264.0..sroa_idx, align 4 ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %.sroa.071.0.copyload, %.sroa.6184.0.copyload
  %i.bj = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.bk = fmul float %.sroa.272.0.copyload, %.sroa.011.0.vec.extract.i.i
  %i.bl = shufflevector <2 x float> %.sroa.071.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.bm = insertelement <2 x float> %i.bl, float %.sroa.272.0.copyload, i64 1 ; 2 uses
  %i.bn = fmul <2 x float> %i.bm, %.sroa.5183.0.copyload
  %i.bo = shufflevector <2 x float> %.sroa.5183.0.copyload, <2 x float> %.sroa.6184.0.copyload, <2 x i32> <i32 1, i32 2> ; 4 uses
  %i.bp = fmul <2 x float> %.sroa.071.0.copyload, %i.bo
  %i.bq = fsub <2 x float> %i.bn, %i.bp           ; 2 uses
  %i.br = fsub float %i.bj, %i.bk
  %i.bs = insertelement <2 x float> %i.bl, float %.sroa.272.0.copyload, i64 0
  %i.bt = shufflevector <2 x float> %.sroa.6184.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.bu = fmul <2 x float> %i.bs, %i.bt
  %i.bv = fmul <2 x float> %i.bm, %i.bt
  %i.bw = fadd <2 x float> %i.bu, %i.bq           ; 2 uses
  %i.bx = shufflevector <2 x float> %i.bq, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.by = insertelement <2 x float> %i.bx, float %i.br, i64 0
  %i.bz = fadd <2 x float> %i.bv, %i.by           ; 2 uses
  %i.ca = fmul <2 x float> %i.bo, %i.bw
  %i.cb = shufflevector <2 x float> %.sroa.6184.0.copyload, <2 x float> %.sroa.5183.0.copyload, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.cc = fmul <2 x float> %i.cb, %i.bz
  %i.cd = fsub <2 x float> %i.ca, %i.cc
  %i.ce = fmul <2 x float> %i.cd, splat (float 2.000000e+00)
  %i.cf = fadd <2 x float> %.sroa.071.0.copyload, %i.ce
  %i.cg = fadd <2 x float> %.sroa.0181.0.copyload, %i.cf ; 2 uses
  %foldExtExtBinop189 = fmul <2 x float> %.sroa.6184.0.copyload, %.sroa.063.0.copyload
  %i.ch = extractelement <2 x float> %foldExtExtBinop189, i64 0
  %i.ci = fmul float %.sroa.011.0.vec.extract.i.i, %.sroa.264.0.copyload
  %i.cj = shufflevector <2 x float> %.sroa.063.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ck = insertelement <2 x float> %i.cj, float %.sroa.264.0.copyload, i64 1 ; 2 uses
  %i.cl = fmul <2 x float> %.sroa.5183.0.copyload, %i.ck
  %i.cm = fmul <2 x float> %i.bo, %.sroa.063.0.copyload
  %i.cn = fsub <2 x float> %i.cl, %i.cm           ; 2 uses
  %i.co = fsub float %i.ch, %i.ci
  %i.cp = insertelement <2 x float> %i.cj, float %.sroa.264.0.copyload, i64 0
  %i.cq = fmul <2 x float> %i.bt, %i.cp
  %i.cr = fmul <2 x float> %i.bt, %i.ck
  %i.cs = fadd <2 x float> %i.cq, %i.cn           ; 2 uses
  %i.ct = shufflevector <2 x float> %i.cn, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cu = insertelement <2 x float> %i.ct, float %i.co, i64 0
  %i.cv = fadd <2 x float> %i.cr, %i.cu           ; 2 uses
  %i.cw = fmul <2 x float> %i.bo, %i.cs
  %i.cx = fmul <2 x float> %i.cb, %i.cv
  %i.cy = fsub <2 x float> %i.cw, %i.cx
  %i.cz = fmul <2 x float> %i.cy, splat (float 2.000000e+00)
  %i.da = fadd <2 x float> %.sroa.063.0.copyload, %i.cz
  %i.db = fadd <2 x float> %.sroa.0181.0.copyload, %i.da
  %i.dc = shufflevector <2 x float> %.sroa.5183.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dd = shufflevector <2 x float> %i.cv, <2 x float> %i.bz, <2 x i32> <i32 0, i32 2>
  %i.de = fmul <2 x float> %i.dc, %i.dd
  %i.df = shufflevector <2 x float> %.sroa.5183.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dg = shufflevector <2 x float> %i.cs, <2 x float> %i.bw, <2 x i32> <i32 1, i32 3>
  %i.dh = fmul <2 x float> %i.df, %i.dg
  %i.di = fsub <2 x float> %i.de, %i.dh
  %i.dj = fmul <2 x float> %i.di, splat (float 2.000000e+00)
  %i.dk = insertelement <2 x float> poison, float %.sroa.264.0.copyload, i64 0
  %i.dl = insertelement <2 x float> %i.dk, float %.sroa.272.0.copyload, i64 1
  %i.dm = fadd <2 x float> %i.dl, %i.dj
  %i.dn = shufflevector <4 x float> %i.be, <4 x float> poison, <2 x i32> zeroinitializer
  %i.do = fadd <2 x float> %i.dn, %i.dm           ; 2 uses
  %i.dp = fsub <2 x float> %i.db, %i.cg
  %i.dq = extractelement <2 x float> %i.do, i64 0
  %i.dr = extractelement <2 x float> %i.do, i64 1 ; 2 uses
  %i.ds = fsub float %i.dq, %i.dr
  %.sroa.044.0.copyload = load <2 x float>, ptr %4, align 8 ; 2 uses
  %.sroa.546.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.546.0.copyload = load float, ptr %.sroa.546.0..sroa_idx, align 8, !tbaa !9 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  call void @b3LineDistance(ptr dead_on_unwind nonnull writable sret(%struct.b3SegmentDistanceResult) align 4 %6, <2 x float> %.sroa.091.0.copyload, float %.sroa.593.0.copyload, <2 x float> %i.aq, float %i.ar, <2 x float> %i.cg, float %i.dr, <2 x float> %i.dp, float %i.ds) #11
  %i.dt = getelementptr inbounds nuw i8, ptr %6, i64 12
  %.val = load float, ptr %i.dt, align 4, !tbaa !62 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %6, i64 28
  %.val123 = load float, ptr %i.du, align 4       ; 2 uses
  %i.dv = fcmp oge float %.val, 0.000000e+00
  %i.dw = fcmp ole float %.val, 1.000000e+00
  %or.cond.not.i = and i1 %i.dv, %i.dw
  %i.dx = fcmp oge float %.val123, 0.000000e+00
  %i.dy = fcmp ole float %.val123, 1.000000e+00
  %spec.select.i = and i1 %i.dx, %i.dy
  %i.dz = select i1 %or.cond.not.i, i1 %spec.select.i, i1 false ; 2 uses
  br i1 %i.dz, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_1
