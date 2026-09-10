Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/bvh_intersector_hybrid4_bvh4?download=true
inline.NumInlined: 1818
inline.NumDeleted: 68
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN6embree4sse222BVHNIntersectorKHybridILi4ELi4ELi1ELb0ENS0_26SubGridIntersectorKMoellerILi4ELi4ELb1EEELb1EE10intersect1EPNS_5Accel12IntersectorsEPKNS_4BVHNILi4EEENS_10NodeRefPtrILi4EEEmRNS0_39SubGridQuadMIntersectorKMoellerTrumboreILi4ELi4ELb1EEERNS_7RayHitKILi4EEERKNS0_8TravRayKILi4ELb0EEEPNS_15RayQueryContextE:bb.a
  %i.ie = trunc nsw <4 x i32> %i.id to <4 x i1>
  %i.if = select <4 x i1> %i.ie, <4 x i32> %i.hu, <4 x i32> %i.ia
  %i.ig = trunc nsw <4 x i32> %i.id to <4 x i1>
  %.inner1284 = select <4 x i1> %i.ig, <4 x i32> %i.ia, <4 x i32> %i.hu
  store <4 x i32> %.inner1284, ptr %.21178, align 16
  %i.ih = getelementptr inbounds nuw i8, ptr %.21178, i64 16
  store <4 x i32> %i.if, ptr %i.ih, align 16
  %i.ii = extractelement <2 x i64> %i.hz, i64 0
  %i.ij = getelementptr inbounds nuw i8, ptr %.21178, i64 32
  br label %_ZN6embree4sse220BVHNNodeIntersector1ILi4ELi1ELb0EE9intersectERKNS_10NodeRefPtrILi4EEERKNS0_7TravRayILi4ELb0EEEfRNS_11vfloat_implILi4EEERm.exit

bb.j:                                             ; preds = %bb.h
  %i.ik = call noundef i64 asm "bsf $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 %i.he) #10, !srcloc !71 ; 2 uses
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.fy, i64 %i.ik
  %i.im = load i64, ptr %i.il, align 8            ; 2 uses
  %i.in = inttoptr i64 %i.im to ptr               ; 2 uses
  call void @llvm.prefetch.p0(ptr %i.in, i32 0, i32 3, i32 1)
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 64
  call void @llvm.prefetch.p0(ptr nonnull %i.io, i32 0, i32 3, i32 1)
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %19, i64 %i.ik
  %i.iq = load i32, ptr %i.ip, align 4
  %i.ir = zext i32 %i.iq to i64
  %i.is = insertelement <2 x i64> poison, i64 %i.im, i64 0
  %i.it = insertelement <2 x i64> %i.is, i64 %i.ir, i64 1
  %i.iu = bitcast <2 x i64> %i.hb to <4 x i32>    ; 3 uses
  %i.iv = bitcast <2 x i64> %i.gy to <4 x i32>    ; 3 uses
  %i.iw = icmp sgt <4 x i32> %i.iu, %i.iv
  %i.ix = shufflevector <4 x i1> %i.iw, <4 x i1> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2> ; 2 uses
  %i.iy = select <4 x i1> %i.ix, <4 x i32> %i.iv, <4 x i32> %i.iu ; 3 uses
  %i.iz = select <4 x i1> %i.ix, <4 x i32> %i.iu, <4 x i32> %i.iv ; 3 uses
  %i.ja = bitcast <2 x i64> %i.it to <4 x i32>    ; 3 uses
  %i.jb = bitcast <2 x i64> %i.hn to <4 x i32>    ; 3 uses
  %i.jc = icmp sgt <4 x i32> %i.ja, %i.jb
  %i.jd = shufflevector <4 x i1> %i.jc, <4 x i1> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2> ; 2 uses
  %i.je = select <4 x i1> %i.jd, <4 x i32> %i.jb, <4 x i32> %i.ja ; 3 uses
  %i.jf = select <4 x i1> %i.jd, <4 x i32> %i.ja, <4 x i32> %i.jb ; 3 uses
  %i.jg = icmp sgt <4 x i32> %i.jf, %i.iz
  %i.jh = sext <4 x i1> %i.jg to <4 x i32>
  %i.ji = shufflevector <4 x i32> %i.jh, <4 x i32> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2> ; 2 uses
  %i.jj = trunc nsw <4 x i32> %i.ji to <4 x i1>
  %i.jk = select <4 x i1> %i.jj, <4 x i32> %i.iz, <4 x i32> %i.jf ; 3 uses
  %i.jl = trunc nsw <4 x i32> %i.ji to <4 x i1>
  %.inner1287 = select <4 x i1> %i.jl, <4 x i32> %i.jf, <4 x i32> %i.iz
  %i.jm = icmp sgt <4 x i32> %i.je, %i.iy
  %i.jn = sext <4 x i1> %i.jm to <4 x i32>
  %i.jo = shufflevector <4 x i32> %i.jn, <4 x i32> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2> ; 2 uses
  %i.jp = trunc nsw <4 x i32> %i.jo to <4 x i1>
  %i.jq = select <4 x i1> %i.jp, <4 x i32> %i.iy, <4 x i32> %i.je
  %i.jr = bitcast <4 x i32> %i.jq to <2 x i64>
  %i.js = trunc nsw <4 x i32> %i.jo to <4 x i1>
  %.inner1290 = select <4 x i1> %i.js, <4 x i32> %i.je, <4 x i32> %i.iy ; 3 uses
  %i.jt = icmp sgt <4 x i32> %i.jk, %.inner1290
  %i.ju = sext <4 x i1> %i.jt to <4 x i32>
  %i.jv = shufflevector <4 x i32> %i.ju, <4 x i32> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2> ; 2 uses
  %i.jw = trunc nsw <4 x i32> %i.jv to <4 x i1>
  %i.jx = select <4 x i1> %i.jw, <4 x i32> %.inner1290, <4 x i32> %i.jk
  %i.jy = trunc nsw <4 x i32> %i.jv to <4 x i1>
  %.inner1293 = select <4 x i1> %i.jy, <4 x i32> %i.jk, <4 x i32> %.inner1290
  store <4 x i32> %.inner1287, ptr %.21178, align 16
  %i.jz = getelementptr inbounds nuw i8, ptr %.21178, i64 16
  store <4 x i32> %.inner1293, ptr %i.jz, align 16
  %i.ka = getelementptr inbounds nuw i8, ptr %.21178, i64 32
  store <4 x i32> %i.jx, ptr %i.ka, align 16
  %i.kb = extractelement <2 x i64> %i.jr, i64 0
  %i.kc = getelementptr inbounds nuw i8, ptr %.21178, i64 48
  br label %_ZN6embree4sse220BVHNNodeIntersector1ILi4ELi1ELb0EE9intersectERKNS_10NodeRefPtrILi4EEERKNS0_7TravRayILi4ELb0EEEfRNS_11vfloat_implILi4EEERm.exit

_ZN6embree4sse220BVHNNodeIntersector1ILi4ELi1ELb0EE9intersectERKNS_10NodeRefPtrILi4EEERKNS0_7TravRayILi4ELb0EEEfRNS_11vfloat_implILi4EEERm.exit: ; preds = %bb.c, %bb.i, %bb.j, %bb.g, %bb.f
  %.3 = phi ptr [ %i.kc, %bb.j ], [ %i.ij, %bb.i ], [ %.21178, %bb.c ], [ %i.gv, %bb.f ], [ %i.gv, %bb.g ] ; 2 uses
  %.sroa.058.1 = phi i64 [ %i.kb, %bb.j ], [ %i.ii, %bb.i ], [ %i.gd, %bb.c ], [ %i.gd, %bb.f ], [ %i.gn, %bb.g ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #9
  %i.kd = and i64 %.sroa.058.1, 8
  %.not.i = icmp eq i64 %i.kd, 0
  br i1 %.not.i, label %.lr.ph, label %._crit_edge, !prof !76

._crit_edge:                                      ; preds = %.preheader1174, %_ZN6embree4sse220BVHNNodeIntersector1ILi4ELi1ELb0EE9intersectERKNS_10NodeRefPtrILi4EEERKNS0_7TravRayILi4ELb0EEEfRNS_11vfloat_implILi4EEERm.exit
  %.2.lcssa = phi ptr [ %.3, %_ZN6embree4sse220BVHNNodeIntersector1ILi4ELi1ELb0EE9intersectERKNS_10NodeRefPtrILi4EEERKNS0_7TravRayILi4ELb0EEEfRNS_11vfloat_implILi4EEERm.exit ], [ %i.eg, %.preheader1174 ]
  %.sroa.058.0.lcssa = phi i64 [ %.sroa.058.1, %_ZN6embree4sse220BVHNNodeIntersector1ILi4ELi1ELb0EE9intersectERKNS_10NodeRefPtrILi4EEERKNS0_7TravRayILi4ELb0EEEfRNS_11vfloat_implILi4EEERm.exit ], [ %i.el, %.preheader1174 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #9
  %i.ke = and i64 %.sroa.058.0.lcssa, 15
  %i.kf = add nsw i64 %i.ke, -8                   ; 2 uses
  %i.kg = and i64 %.sroa.058.0.lcssa, -16
  %i.kh = inttoptr i64 %i.kg to ptr
  %.not1190 = icmp eq i64 %i.kf, 0
  br i1 %.not1190, label %._crit_edge1189, label %.lr.ph1188

.lr.ph1188:                                       ; preds = %._crit_edge, %._crit_edge1185
  %.0.i1186 = phi i64 [ %i.apu, %._crit_edge1185 ], [ 0, %._crit_edge ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #9
  %i.ki = getelementptr inbounds nuw [88 x i8], ptr %i.kh, i64 %.0.i1186 ; 10 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 32 ; 7 uses
  %i.kk = load <4 x i8>, ptr %i.kj, align 8, !noalias !14726
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ki, i64 36
  %i.km = load <4 x i8>, ptr %i.kl, align 4, !noalias !14727
  %i.kn = icmp ule <4 x i8> %i.kk, %i.km
  %i.ko = getelementptr inbounds nuw i8, ptr %i.ki, i64 56
  %i.kp = load float, ptr %i.ko, align 8
  %i.kq = insertelement <4 x float> poison, float %i.kp, i64 0
  %i.kr = shufflevector <4 x float> %i.kq, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.ki, i64 68
  %i.kt = load float, ptr %i.ks, align 4
  %i.ku = insertelement <4 x float> poison, float %i.kt, i64 0
  %i.kv = shufflevector <4 x float> %i.ku, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kj, i64 %i.bg
  %i.kx = load <4 x i8>, ptr %i.kw, align 1, !noalias !14728
  %i.ky = uitofp <4 x i8> %i.kx to <4 x float>
  %i.kz = fmul <4 x float> %i.kv, %i.ky
  %i.la = fadd <4 x float> %i.kr, %i.kz
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kj, i64 %i.bh
  %i.lc = load <4 x i8>, ptr %i.lb, align 1, !noalias !14729
  %i.ld = uitofp <4 x i8> %i.lc to <4 x float>
  %i.le = fmul <4 x float> %i.kv, %i.ld
  %i.lf = fadd <4 x float> %i.kr, %i.le
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ki, i64 60
  %i.lh = load float, ptr %i.lg, align 4
  %i.li = insertelement <4 x float> poison, float %i.lh, i64 0
  %i.lj = shufflevector <4 x float> %i.li, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.ki, i64 72
  %i.ll = load float, ptr %i.lk, align 8
  %i.lm = insertelement <4 x float> poison, float %i.ll, i64 0
  %i.ln = shufflevector <4 x float> %i.lm, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.kj, i64 %i.bi
  %i.lp = load <4 x i8>, ptr %i.lo, align 1, !noalias !14730
  %i.lq = uitofp <4 x i8> %i.lp to <4 x float>
  %i.lr = fmul <4 x float> %i.ln, %i.lq
  %i.ls = fadd <4 x float> %i.lj, %i.lr
  %i.lt = getelementptr inbounds nuw i8, ptr %i.kj, i64 %i.bj
  %i.lu = load <4 x i8>, ptr %i.lt, align 1, !noalias !14731
  %i.lv = uitofp <4 x i8> %i.lu to <4 x float>
  %i.lw = fmul <4 x float> %i.ln, %i.lv
  %i.lx = fadd <4 x float> %i.lj, %i.lw
  %i.ly = getelementptr inbounds nuw i8, ptr %i.ki, i64 64
  %i.lz = load float, ptr %i.ly, align 8
  %i.ma = insertelement <4 x float> poison, float %i.lz, i64 0
  %i.mb = shufflevector <4 x float> %i.ma, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ki, i64 76
  %i.md = load float, ptr %i.mc, align 4
  %i.me = insertelement <4 x float> poison, float %i.md, i64 0
  %i.mf = shufflevector <4 x float> %i.me, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.kj, i64 %i.bk
  %i.mh = load <4 x i8>, ptr %i.mg, align 1, !noalias !14732
  %i.mi = uitofp <4 x i8> %i.mh to <4 x float>
  %i.mj = fmul <4 x float> %i.mf, %i.mi
  %i.mk = fadd <4 x float> %i.mb, %i.mj
  %i.ml = getelementptr inbounds nuw i8, ptr %i.kj, i64 %i.bl
  %i.mm = load <4 x i8>, ptr %i.ml, align 1, !noalias !14733
  %i.mn = uitofp <4 x i8> %i.mm to <4 x float>
  %i.mo = fmul <4 x float> %i.mf, %i.mn
  %i.mp = fadd <4 x float> %i.mb, %i.mo
  %i.mq = fsub <4 x float> %i.la, %i.n
  %i.mr = fmul <4 x float> %i.ab, %i.mq
  %i.ms = fsub <4 x float> %i.ls, %i.s
  %i.mt = fmul <4 x float> %i.ag, %i.ms
  %i.mu = fsub <4 x float> %i.mk, %i.x
  %i.mv = fmul <4 x float> %i.al, %i.mu
  %i.mw = fsub <4 x float> %i.lf, %i.n
  %i.mx = fmul <4 x float> %i.ab, %i.mw
  %i.my = fsub <4 x float> %i.lx, %i.s
  %i.mz = fmul <4 x float> %i.ag, %i.my
  %i.na = fsub <4 x float> %i.mp, %i.x
  %i.nb = fmul <4 x float> %i.al, %i.na
  %i.nc = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.mr, <4 x float> %i.mt)
  %i.nd = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.mv, <4 x float> %i.bb)
  %i.ne = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.nc, <4 x float> %i.nd) ; 2 uses
  %i.nf = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.mx, <4 x float> %i.mz)
  %i.ng = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.nb, <4 x float> %.sroa.59.01282)
  %i.nh = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.nf, <4 x float> %i.ng)
  %i.ni = fcmp ole <4 x float> %i.ne, %i.nh
  store <4 x float> %i.ne, ptr %17, align 16
  %i.nj = and <4 x i1> %i.kn, %i.ni
  %i.nk = bitcast <4 x i1> %i.nj to i4            ; 2 uses
  %.not.i281181 = icmp eq i4 %i.nk, 0
  br i1 %.not.i281181, label %._crit_edge1185, label %.lr.ph1184

.lr.ph1184:                                       ; preds = %.lr.ph1188
  %i.nl = zext i4 %i.nk to i64
  %i.nm = getelementptr inbounds nuw i8, ptr %i.ki, i64 80
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph1184, %bb.at
  %.011361182 = phi i64 [ %i.nl, %.lr.ph1184 ], [ %i.np, %bb.at ] ; 3 uses
  %i.nn = call noundef i64 asm "bsf $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 %.011361182) #10, !srcloc !71 ; 2 uses
  %i.no = add nsw i64 %.011361182, -1
  %i.np = and i64 %i.no, %.011361182              ; 2 uses
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %17, i64 %i.nn
  %i.nr = load float, ptr %i.nq, align 4
  %i.ns = load float, ptr %i.bf, align 4          ; 2 uses
  %i.nt = fcmp ogt float %i.nr, %i.ns
  br i1 %i.nt, label %bb.at, label %_ZNK6embree7SubGrid6gatherERNS_4Vec3INS_11vfloat_implILi4EEEEES5_S5_S5_PKNS_8GridMeshERKNS6_4GridE.exit, !prof !70, !llvm.loop !14559

_ZNK6embree7SubGrid6gatherERNS_4Vec3INS_11vfloat_implILi4EEEEES5_S5_S5_PKNS_8GridMeshERKNS6_4GridE.exit: ; preds = %bb.k
  %i.nu = getelementptr inbounds nuw [8 x i8], ptr %i.ki, i64 %i.nn ; 3 uses
  %i.nv = load i16, ptr %i.nu, align 8            ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nu, i64 2
  %i.nx = load i16, ptr %i.nw, align 2            ; 2 uses
  %i.ny = load i32, ptr %i.nm, align 8            ; 5 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nu, i64 4
  %i.oa = load i32, ptr %i.nz, align 4            ; 5 uses
  %i.ob = load ptr, ptr %7, align 8
  %i.oc = zext i32 %i.ny to i64                   ; 3 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.ob, i64 488 ; 2 uses
  %i.oe = load ptr, ptr %i.od, align 8
  %i.of = getelementptr inbounds nuw [8 x i8], ptr %i.oe, i64 %i.oc
  %i.og = load ptr, ptr %i.of, align 8            ; 4 uses
  %i.oh = zext i32 %i.oa to i64
  %i.oi = getelementptr inbounds nuw i8, ptr %i.og, i64 88
  %i.oj = load ptr, ptr %i.oi, align 8
  %i.ok = getelementptr inbounds nuw i8, ptr %i.og, i64 104
  %i.ol = load i64, ptr %i.ok, align 8
  %i.om = mul i64 %i.ol, %i.oh
  %i.on = getelementptr inbounds nuw i8, ptr %i.oj, i64 %i.om ; 5 uses
  %i.oo = load i32, ptr %i.on, align 4
  %i.op = and i16 %i.nv, 32767
  %i.oq = zext nneg i16 %i.op to i32              ; 3 uses
  %i.or = add i32 %i.oo, %i.oq
  %i.os = and i16 %i.nx, 32767
  %i.ot = zext nneg i16 %i.os to i32              ; 3 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.on, i64 4
  %i.ov = load i32, ptr %i.ou, align 4            ; 2 uses
  %i.ow = mul i32 %i.ov, %i.ot
  %i.ox = add i32 %i.or, %i.ow
  %i.oy = zext i32 %i.ox to i64                   ; 3 uses
  %i.oz = add nuw nsw i64 %i.oy, 1                ; 3 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %i.og, i64 144
  %i.pb = load ptr, ptr %i.pa, align 8            ; 9 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %i.og, i64 160
  %i.pd = load i64, ptr %i.pc, align 8            ; 9 uses
  %i.pe = mul i64 %i.pd, %i.oy
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pb, i64 %i.pe
  %i.pg = load <4 x float>, ptr %i.pf, align 1, !noalias !14734 ; 2 uses
  %i.ph = mul i64 %i.oz, %i.pd
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pb, i64 %i.ph
  %i.pj = load <4 x float>, ptr %i.pi, align 1, !noalias !14735 ; 4 uses
  %i.pk = zext i32 %i.ov to i64                   ; 3 uses
  %i.pl = add nuw nsw i64 %i.oy, %i.pk            ; 2 uses
  %i.pm = add nuw nsw i64 %i.oz, %i.pk            ; 3 uses
  %i.pn = mul i64 %i.pl, %i.pd
  %i.po = getelementptr inbounds nuw i8, ptr %i.pb, i64 %i.pn
  %i.pp = load <4 x float>, ptr %i.po, align 1, !noalias !14736 ; 4 uses
  %i.pq = mul i64 %i.pm, %i.pd
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pb, i64 %i.pq
  %i.ps = load <4 x float>, ptr %i.pr, align 1, !noalias !14737 ; 8 uses
  %i.pt = icmp sgt i16 %i.nv, -1
  %i.pu = zext i1 %i.pt to i64                    ; 2 uses
  %i.pv = add nuw nsw i64 %i.oz, %i.pu
  %i.pw = mul i64 %i.pv, %i.pd
  %i.px = getelementptr inbounds nuw i8, ptr %i.pb, i64 %i.pw
  %i.py = load <4 x float>, ptr %i.px, align 1, !noalias !14738 ; 2 uses
  %i.pz = add nuw nsw i64 %i.pm, %i.pu            ; 2 uses
  %i.qa = mul i64 %i.pz, %i.pd
  %i.qb = getelementptr inbounds nuw i8, ptr %i.pb, i64 %i.qa
  %i.qc = load <4 x float>, ptr %i.qb, align 1, !noalias !14739 ; 4 uses
  %i.qd = icmp slt i16 %i.nx, 0
  %spec.select = select i1 %i.qd, i64 0, i64 %i.pk ; 3 uses
  %i.qe = add nuw nsw i64 %i.pl, %spec.select
  %i.qf = add nuw nsw i64 %i.pm, %spec.select
  %i.qg = mul i64 %i.qe, %i.pd
  %i.qh = getelementptr inbounds nuw i8, ptr %i.pb, i64 %i.qg
  %i.qi = load <4 x float>, ptr %i.qh, align 1, !noalias !14740 ; 2 uses
  %i.qj = mul i64 %i.qf, %i.pd
  %i.qk = getelementptr inbounds nuw i8, ptr %i.pb, i64 %i.qj
  %i.ql = load <4 x float>, ptr %i.qk, align 1, !noalias !14741 ; 4 uses
  %i.qm = add nuw nsw i64 %i.pz, %spec.select
  %i.qn = mul i64 %i.qm, %i.pd
  %i.qo = getelementptr inbounds nuw i8, ptr %i.pb, i64 %i.qn
  %i.qp = load <4 x float>, ptr %i.qo, align 1, !noalias !14742 ; 2 uses
  %i.qq = shufflevector <4 x float> %i.pg, <4 x float> %i.ps, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.qr = shufflevector <4 x float> %i.pg, <4 x float> %i.ps, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.qs = shufflevector <4 x float> %i.pj, <4 x float> %i.pp, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.qt = shufflevector <4 x float> %i.pj, <4 x float> %i.pp, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.qu = shufflevector <4 x float> %i.qq, <4 x float> %i.qs, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 3 uses
  %i.qv = shufflevector <4 x float> %i.qq, <4 x float> %i.qs, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 3 uses
  %i.qw = shufflevector <4 x float> %i.qr, <4 x float> %i.qt, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 3 uses
  %i.qx = shufflevector <4 x float> %i.pj, <4 x float> %i.qc, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.qy = shufflevector <4 x float> %i.pj, <4 x float> %i.qc, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.qz = shufflevector <4 x float> %i.py, <4 x float> %i.ps, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ra = shufflevector <4 x float> %i.py, <4 x float> %i.ps, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.rb = shufflevector <4 x float> %i.qx, <4 x float> %i.qz, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.rc = shufflevector <4 x float> %i.qx, <4 x float> %i.qz, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.rd = shufflevector <4 x float> %i.qy, <4 x float> %i.ra, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.re = shufflevector <4 x float> %i.ps, <4 x float> %i.qp, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.rf = shufflevector <4 x float> %i.ps, <4 x float> %i.qp, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.rg = shufflevector <4 x float> %i.qc, <4 x float> %i.ql, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.rh = shufflevector <4 x float> %i.qc, <4 x float> %i.ql, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.ri = shufflevector <4 x float> %i.re, <4 x float> %i.rg, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 3 uses
  %i.rj = shufflevector <4 x float> %i.re, <4 x float> %i.rg, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 3 uses
  %i.rk = shufflevector <4 x float> %i.rf, <4 x float> %i.rh, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 3 uses
  %i.rl = shufflevector <4 x float> %i.pp, <4 x float> %i.ql, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.rm = shufflevector <4 x float> %i.pp, <4 x float> %i.ql, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.rn = shufflevector <4 x float> %i.ps, <4 x float> %i.qi, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ro = shufflevector <4 x float> %i.ps, <4 x float> %i.qi, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.rp = shufflevector <4 x float> %i.rl, <4 x float> %i.rn, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.rq = shufflevector <4 x float> %i.rl, <4 x float> %i.rn, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.rr = shufflevector <4 x float> %i.rm, <4 x float> %i.ro, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #9
  %i.rs = fsub <4 x float> %i.qu, %i.rb           ; 3 uses
  %i.rt = fsub <4 x float> %i.qv, %i.rc           ; 3 uses
  %i.ru = fsub <4 x float> %i.qw, %i.rd           ; 3 uses
  %i.rv = fsub <4 x float> %i.rp, %i.qu           ; 3 uses
  %i.rw = fsub <4 x float> %i.rq, %i.qv           ; 3 uses
  %i.rx = fsub <4 x float> %i.rr, %i.qw           ; 3 uses
  %i.ry = fmul <4 x float> %i.rt, %i.rx
  %i.rz = fmul <4 x float> %i.ru, %i.rw
  %i.sa = fsub <4 x float> %i.rz, %i.ry           ; 3 uses
  %i.sb = fmul <4 x float> %i.ru, %i.rv
  %i.sc = fmul <4 x float> %i.rs, %i.rx
  %i.sd = fsub <4 x float> %i.sc, %i.sb           ; 3 uses
  %i.se = fmul <4 x float> %i.rs, %i.rw
  %i.sf = fmul <4 x float> %i.rt, %i.rv
  %i.sg = fsub <4 x float> %i.sf, %i.se           ; 3 uses
  %i.sh = load float, ptr %i.bm, align 4, !noalias !14743
  %i.si = insertelement <4 x float> poison, float %i.sh, i64 0
  %i.sj = shufflevector <4 x float> %i.si, <4 x float> poison, <4 x i32> zeroinitializer ; 5 uses
  %i.sk = load float, ptr %i.bo, align 4, !noalias !14744
  %i.sl = insertelement <4 x float> poison, float %i.sk, i64 0
  %i.sm = shufflevector <4 x float> %i.sl, <4 x float> poison, <4 x i32> zeroinitializer ; 5 uses
  %i.sn = load float, ptr %i.bq, align 4, !noalias !14745
  %i.so = insertelement <4 x float> poison, float %i.sn, i64 0
  %i.sp = shufflevector <4 x float> %i.so, <4 x float> poison, <4 x i32> zeroinitializer ; 5 uses
  %i.sq = load float, ptr %i.bs, align 4, !noalias !14746
  %i.sr = insertelement <4 x float> poison, float %i.sq, i64 0
  %i.ss = shufflevector <4 x float> %i.sr, <4 x float> poison, <4 x i32> zeroinitializer ; 7 uses
  %i.st = load float, ptr %i.bu, align 4, !noalias !14747
  %i.su = insertelement <4 x float> poison, float %i.st, i64 0
  %i.sv = shufflevector <4 x float> %i.su, <4 x float> poison, <4 x i32> zeroinitializer ; 7 uses
  %i.sw = load float, ptr %i.bw, align 4, !noalias !14748
  %i.sx = insertelement <4 x float> poison, float %i.sw, i64 0
  %i.sy = shufflevector <4 x float> %i.sx, <4 x float> poison, <4 x i32> zeroinitializer ; 7 uses
  %i.sz = fsub <4 x float> %i.qu, %i.sj           ; 3 uses
  %i.ta = fsub <4 x float> %i.qv, %i.sm           ; 3 uses
  %i.tb = fsub <4 x float> %i.qw, %i.sp           ; 3 uses
  %i.tc = fmul <4 x float> %i.tb, %i.sv
  %i.td = fmul <4 x float> %i.ta, %i.sy
  %i.te = fsub <4 x float> %i.td, %i.tc           ; 2 uses
  %i.tf = fmul <4 x float> %i.sz, %i.sy
  %i.tg = fmul <4 x float> %i.tb, %i.ss
  %i.th = fsub <4 x float> %i.tg, %i.tf           ; 2 uses
  %i.ti = fmul <4 x float> %i.ta, %i.ss
  %i.tj = fmul <4 x float> %i.sz, %i.sv
  %i.tk = fsub <4 x float> %i.tj, %i.ti           ; 2 uses
  %i.tl = fmul <4 x float> %i.sg, %i.sy
  %i.tm = fmul <4 x float> %i.sd, %i.sv
  %i.tn = fadd <4 x float> %i.tm, %i.tl
  %i.to = fmul <4 x float> %i.sa, %i.ss
  %i.tp = fadd <4 x float> %i.to, %i.tn           ; 3 uses
  %i.tq = bitcast <4 x float> %i.tp to <4 x i32>
  %i.tr = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.tp) ; 7 uses
  %i.ts = and <4 x i32> %i.tq, splat (i32 -2147483648) ; 3 uses
  %i.tt = fmul <4 x float> %i.rx, %i.tk
  %i.tu = fmul <4 x float> %i.rw, %i.th
  %i.tv = fadd <4 x float> %i.tt, %i.tu
  %i.tw = fmul <4 x float> %i.rv, %i.te
  %i.tx = fadd <4 x float> %i.tw, %i.tv
  %i.ty = bitcast <4 x float> %i.tx to <4 x i32>
  %i.tz = xor <4 x i32> %i.ts, %i.ty
  %i.ua = bitcast <4 x i32> %i.tz to <4 x float>  ; 3 uses
  %i.ub = fmul <4 x float> %i.ru, %i.tk
  %i.uc = fmul <4 x float> %i.rt, %i.th
  %i.ud = fadd <4 x float> %i.ub, %i.uc
  %i.ue = fmul <4 x float> %i.rs, %i.te
  %i.uf = fadd <4 x float> %i.ue, %i.ud
  %i.ug = bitcast <4 x float> %i.uf to <4 x i32>
  %i.uh = xor <4 x i32> %i.ts, %i.ug
  %i.ui = bitcast <4 x i32> %i.uh to <4 x float>  ; 3 uses
  %i.uj = fcmp une <4 x float> %i.tp, zeroinitializer
  %i.uk = fcmp uge <4 x float> %i.ua, zeroinitializer
  %i.ul = and <4 x i1> %i.uj, %i.uk
  %i.um = fcmp uge <4 x float> %i.ui, zeroinitializer
  %i.un = and <4 x i1> %i.um, %i.ul
  %i.uo = fadd <4 x float> %i.ua, %i.ui
  %i.up = fcmp ole <4 x float> %i.uo, %i.tr
  %i.uq = and <4 x i1> %i.up, %i.un               ; 2 uses
  %i.ur = bitcast <4 x i1> %i.uq to i4
  %i.us = icmp eq i4 %i.ur, 0
  br i1 %i.us, label %_ZNK6embree4sse227MoellerTrumboreIntersectorKILi4ELi4EE9intersectINS0_10UVIdentityILi4EEEEEbRNS_4RayKILi4EEEmRKNS_4Vec3INS_11vfloat_implILi4EEEEESE_SE_RKT_RNS0_19MoellerTrumboreHitMILi4ESF_EE.exit32, label %bb.l, !prof !69

bb.l:                                             ; preds = %_ZNK6embree7SubGrid6gatherERNS_4Vec3INS_11vfloat_implILi4EEEEES5_S5_S5_PKNS_8GridMeshERKNS6_4GridE.exit
  %i.ut = fmul <4 x float> %i.sg, %i.tb
  %i.uu = fmul <4 x float> %i.sd, %i.ta
  %i.uv = fadd <4 x float> %i.uu, %i.ut
  %i.uw = fmul <4 x float> %i.sa, %i.sz
  %i.ux = fadd <4 x float> %i.uw, %i.uv
  %i.uy = bitcast <4 x float> %i.ux to <4 x i32>
  %i.uz = xor <4 x i32> %i.ts, %i.uy
  %i.va = bitcast <4 x i32> %i.uz to <4 x float>  ; 3 uses
  %i.vb = load float, ptr %i.by, align 4
  %i.vc = insertelement <4 x float> poison, float %i.vb, i64 0
  %i.vd = shufflevector <4 x float> %i.vc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ve = fmul <4 x float> %i.tr, %i.vd
  %i.vf = fcmp olt <4 x float> %i.ve, %i.va
  %i.vg = insertelement <4 x float> poison, float %i.ns, i64 0
  %i.vh = shufflevector <4 x float> %i.vg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.vi = fmul <4 x float> %i.vh, %i.tr
  %i.vj = fcmp oge <4 x float> %i.vi, %i.va
  %i.vk = and <4 x i1> %i.vj, %i.vf
  %i.vl = and <4 x i1> %i.uq, %i.vk               ; 5 uses
  %i.vm = sext <4 x i1> %i.vl to <4 x i32>
  %i.vn = bitcast <4 x i1> %i.vl to i4
  %i.vo = icmp eq i4 %i.vn, 0
  br i1 %i.vo, label %_ZNK6embree4sse227MoellerTrumboreIntersectorKILi4ELi4EE9intersectINS0_10UVIdentityILi4EEEEEbRNS_4RayKILi4EEEmRKNS_4Vec3INS_11vfloat_implILi4EEEEESE_SE_RKT_RNS0_19MoellerTrumboreHitMILi4ESF_EE.exit32, label %bb.m, !prof !69

bb.m:                                             ; preds = %bb.l
  store <4 x float> %i.sa, ptr %i.cd, align 16
  store <4 x float> %i.sd, ptr %i.ce, align 16
  store <4 x float> %i.sg, ptr %i.cf, align 16
  %20 = load ptr, ptr %i.od, align 8
  %21 = getelementptr inbounds nuw [8 x i8], ptr %20, i64 %i.oc
  %22 = load ptr, ptr %21, align 8                ; 5 uses
  %i.vp = getelementptr inbounds nuw i8, ptr %22, i64 52
  %i.vq = load i32, ptr %i.vp, align 4
  %i.vr = load i32, ptr %i.ch, align 4
  %i.vs = and i32 %i.vr, %i.vq
  %i.vt = icmp eq i32 %i.vs, 0
  br i1 %i.vt, label %_ZNK6embree4sse227MoellerTrumboreIntersectorKILi4ELi4EE9intersectINS0_10UVIdentityILi4EEEEEbRNS_4RayKILi4EEEmRKNS_4Vec3INS_11vfloat_implILi4EEEEESE_SE_RKT_RNS0_19MoellerTrumboreHitMILi4ESF_EE.exit32, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.vu = insertelement <4 x i32> poison, i32 %i.ot, i64 0
  %i.vv = shufflevector <4 x i32> %i.vu, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.vw = add nuw nsw <4 x i32> %i.vv, <i32 0, i32 0, i32 1, i32 1>
  %i.vx = uitofp nneg <4 x i32> %i.vw to <4 x float>
  %i.vy = fmul <4 x float> %i.tr, %i.vx
  %i.vz = fadd <4 x float> %i.vy, %i.ui
  %i.wa = insertelement <4 x i32> poison, i32 %i.oq, i64 0
  %i.wb = shufflevector <4 x i32> %i.wa, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.wc = add nuw nsw <4 x i32> %i.wb, <i32 0, i32 1, i32 1, i32 0>
  %i.wd = uitofp nneg <4 x i32> %i.wc to <4 x float>
  %i.we = fmul <4 x float> %i.tr, %i.wd
  %i.wf = fadd <4 x float> %i.we, %i.ua
  %i.wg = getelementptr inbounds nuw i8, ptr %i.on, i64 8
  %i.wh = load <2 x i16>, ptr %i.wg, align 4
  %i.wi = zext <2 x i16> %i.wh to <2 x i32>
  %i.wj = add nsw <2 x i32> %i.wi, splat (i32 -1)
  %i.wk = sitofp <2 x i32> %i.wj to <2 x float>   ; 3 uses
  %i.wl = shufflevector <2 x float> %i.wk, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.wm = call noundef <4 x float> @llvm.x86.sse.rcp.ss(<4 x float> %i.wl) ; 2 uses
  %i.wn = extractelement <4 x float> %i.wm, i64 0
  %i.wo = shufflevector <2 x float> %i.wk, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.wp = call noundef <4 x float> @llvm.x86.sse.rcp.ss(<4 x float> %i.wo) ; 2 uses
  %i.wq = extractelement <4 x float> %i.wp, i64 0
  %i.wr = shufflevector <4 x float> %i.wp, <4 x float> %i.wm, <2 x i32> <i32 0, i32 4>
  %i.ws = fmul <2 x float> %i.wr, %i.wk
  %i.wt = fsub <2 x float> splat (float 2.000000e+00), %i.ws ; 2 uses
  %i.wu = extractelement <2 x float> %i.wt, i64 1
  %i.wv = fmul float %i.wn, %i.wu
  %i.ww = insertelement <4 x float> poison, float %i.wv, i64 0
  %i.wx = shufflevector <4 x float> %i.ww, <4 x float> poison, <4 x i32> zeroinitializer
  %i.wy = fmul <4 x float> %i.vz, %i.wx
  %i.wz = extractelement <2 x float> %i.wt, i64 0
  %i.xa = fmul float %i.wq, %i.wz
  %i.xb = insertelement <4 x float> poison, float %i.xa, i64 0
  %i.xc = shufflevector <4 x float> %i.xb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.xd = fmul <4 x float> %i.wf, %i.xc
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #9
  store <4 x i32> %i.vm, ptr %14, align 16
  %i.xe = call noundef <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> %i.tr) ; 3 uses
  %i.xf = fmul <4 x float> %i.tr, %i.xe
  %i.xg = fsub <4 x float> splat (float 1.000000e+00), %i.xf
  %i.xh = fmul <4 x float> %i.xe, %i.xg
  %i.xi = fadd <4 x float> %i.xe, %i.xh           ; 3 uses
  %i.xj = fmul <4 x float> %i.xi, %i.va           ; 4 uses
  store <4 x float> %i.xj, ptr %i.ci, align 16
  %i.xk = fmul <4 x float> %i.xd, %i.xi
  store <4 x float> %i.xk, ptr %i.cj, align 16
  %i.xl = fmul <4 x float> %i.wy, %i.xi
  store <4 x float> %i.xl, ptr %i.ck, align 16
  %i.xm = bitcast <4 x float> %i.xj to <4 x i32>
  %i.xn = select <4 x i1> %i.vl, <4 x float> %i.xj, <4 x float> splat (float +inf) ; 3 uses
  %i.xo = shufflevector <4 x float> %i.xn, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.xp = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.xo, <4 x float> %i.xn) ; 2 uses
  %i.xq = shufflevector <4 x float> %i.xp, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.xr = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.xq, <4 x float> %i.xp)
  %i.xs = fcmp oeq <4 x float> %i.xn, %i.xr
  %i.xt = and <4 x i1> %i.vl, %i.xs               ; 2 uses
  %i.xu = bitcast <4 x i1> %i.xt to i4
  %.not = icmp eq i4 %i.xu, 0
  %i.xv = select i1 %.not, <4 x i1> %i.vl, <4 x i1> %i.xt
  %i.xw = bitcast <4 x i1> %i.xv to i4
  %i.xx = zext i4 %i.xw to i64
  %i.xy = call noundef i64 asm "bsf $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 %i.xx) #10, !srcloc !71 ; 7 uses
  %i.xz = load ptr, ptr %i.cl, align 8
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xz, i64 16
  %i.yb = load ptr, ptr %i.ya, align 8
  %.not1160 = icmp eq ptr %i.yb, null
  br i1 %.not1160, label %bb.o, label %.critedge.i, !prof !69

bb.o:                                             ; preds = %bb.n
  %i.yc = getelementptr inbounds nuw i8, ptr %22, i64 64
  %i.yd = load ptr, ptr %i.yc, align 16
  %.not1161 = icmp eq ptr %i.yd, null
  br i1 %.not1161, label %bb.aa, label %.critedge.i, !prof !69

.critedge.i:                                      ; preds = %bb.o, %bb.n
  %i.ye = insertelement <4 x i32> poison, i32 %i.ny, i64 0
  %i.yf = shufflevector <4 x i32> %i.ye, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.yg = insertelement <4 x i32> poison, i32 %i.oa, i64 0
  %i.yh = shufflevector <4 x i32> %i.yg, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.yi = load <2 x i64>, ptr %i.cw, align 16     ; 2 uses
  %i.yj = getelementptr inbounds nuw i8, ptr %22, i64 24
  %i.yk = getelementptr inbounds nuw i8, ptr %22, i64 64
  %i.yl = getelementptr inbounds nuw i8, ptr %22, i64 60
  %.pre = load float, ptr %i.bf, align 4
  %i.ym = bitcast <2 x i64> %i.yi to <4 x i32>
  br label %.preheader1192

.preheader1192:                                   ; preds = %bb.z, %.critedge.i
  %i.yn = phi float [ %.pre, %.critedge.i ], [ %i.ace, %bb.z ] ; 2 uses
  %.029.i = phi i64 [ %i.xy, %.critedge.i ], [ %i.ade, %bb.z ] ; 7 uses
  %i.yo = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %.029.i
  %i.yp = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %.029.i
  %i.yq = load float, ptr %i.yo, align 4
  %i.yr = load float, ptr %i.yp, align 4
  %i.ys = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %.029.i
  %i.yt = load float, ptr %i.ys, align 4
  store float %i.yt, ptr %i.bf, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #9
  %i.yu = load ptr, ptr %i.cm, align 8            ; 3 uses
  %i.yv = insertelement <4 x float> poison, float %i.yq, i64 0
  %i.yw = shufflevector <4 x float> %i.yv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.yx = insertelement <4 x float> poison, float %i.yr, i64 0
  %i.yy = shufflevector <4 x float> %i.yx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.yz = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %.029.i
  %i.za = load float, ptr %i.yz, align 4, !noalias !14749
  %i.zb = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %.029.i
  %i.zc = load float, ptr %i.zb, align 4, !noalias !14749
  %i.zd = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %.029.i
  %i.ze = load float, ptr %i.zd, align 4, !noalias !14749
  %i.zf = insertelement <4 x float> poison, float %i.za, i64 0
  %i.zg = shufflevector <4 x float> %i.zf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.zh = insertelement <4 x float> poison, float %i.zc, i64 0
  %i.zi = shufflevector <4 x float> %i.zh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.zj = insertelement <4 x float> poison, float %i.ze, i64 0
  %i.zk = shufflevector <4 x float> %i.zj, <4 x float> poison, <4 x i32> zeroinitializer
  store <4 x float> %i.zg, ptr %15, align 16
  store <4 x float> %i.zi, ptr %i.cn, align 16
  store <4 x float> %i.zk, ptr %i.co, align 16
  store <4 x float> %i.yw, ptr %i.cp, align 16
  store <4 x float> %i.yy, ptr %i.cq, align 16
  store <4 x i32> %i.yh, ptr %i.cr, align 16
  store <4 x i32> %i.yf, ptr %i.cs, align 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.ptr12.i.i, i8 -1, i64 32, i1 false)
  %i.zl = load i32, ptr %i.yu, align 4
  %i.zm = insertelement <4 x i32> poison, i32 %i.zl, i64 0
  %i.zn = shufflevector <4 x i32> %i.zm, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %i.zn, ptr %.ptr12.i.i, align 16
  %i.zo = getelementptr inbounds nuw i8, ptr %i.yu, i64 4
  %i.zp = load i32, ptr %i.zo, align 4
  %i.zq = insertelement <4 x i32> poison, i32 %i.zp, i64 0
  %i.zr = shufflevector <4 x i32> %i.zq, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %i.zr, ptr %.ptr17.i.i, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #9, !noalias !14750
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #9, !noalias !14750
  store <2 x i64> %i.yi, ptr %13, align 16, !noalias !14750
  store ptr %13, ptr %12, align 8, !noalias !14750
  %i.zs = load ptr, ptr %i.yj, align 8, !noalias !14750
  store ptr %i.zs, ptr %i.cx, align 8, !noalias !14750
  store ptr %i.yu, ptr %i.cy, align 8, !noalias !14750
  store ptr %5, ptr %i.cz, align 8, !noalias !14750
  store ptr %15, ptr %i.da, align 8, !noalias !14750
  store i32 4, ptr %i.db, align 8, !noalias !14750
  %i.zt = load ptr, ptr %i.yk, align 16, !noalias !14751 ; 2 uses
  %.not.i.i = icmp eq ptr %i.zt, null
  br i1 %.not.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.preheader1192
  call void %i.zt(ptr noundef nonnull %12), !noalias !14751, !inline_history !14600
  %.pre1194 = load <4 x i32>, ptr %13, align 16, !noalias !14752
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.preheader1192
  %i.zu = phi <4 x i32> [ %.pre1194, %bb.p ], [ %i.ym, %.preheader1192 ] ; 3 uses
  %i.zv = icmp ne <4 x i32> %i.zu, zeroinitializer ; 2 uses
  %i.zw = bitcast <4 x i1> %i.zv to i4
  %i.zx = icmp eq i4 %i.zw, 0
  br i1 %i.zx, label %_ZN6embree4sse227runIntersectionFilterHelperILi4EEENS_6vtypesIXT_EE5vboolEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.zy = load ptr, ptr %i.cl, align 8            ; 2 uses
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zy, i64 16
  %i.aaa = load ptr, ptr %i.zz, align 8           ; 2 uses
  %.not13.i.i = icmp eq ptr %i.aaa, null
  br i1 %.not13.i.i, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aab = load i32, ptr %i.zy, align 8
  %i.aac = and i32 %i.aab, 2
  %.not1162 = icmp eq i32 %i.aac, 0
  br i1 %.not1162, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.aad = load i32, ptr %i.yl, align 4
  %i.aae = and i32 %i.aad, 4194304
  %.not1163 = icmp eq i32 %i.aae, 0
  br i1 %.not1163, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  call void %i.aaa(ptr noundef nonnull %12), !inline_history !14600
  %.pre1195 = load <4 x i32>, ptr %13, align 16, !noalias !14753
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.r
  %i.aaf = phi <4 x i32> [ %.pre1195, %bb.u ], [ %i.zu, %bb.t ], [ %i.zu, %bb.r ]
  %i.aag = icmp ne <4 x i32> %i.aaf, zeroinitializer ; 12 uses
  %i.aah = bitcast <4 x i1> %i.aag to i4
  %i.aai = icmp eq i4 %i.aah, 0
  br i1 %i.aai, label %_ZN6embree4sse227runIntersectionFilterHelperILi4EEENS_6vtypesIXT_EE5vboolEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.aaj = load ptr, ptr %i.cz, align 8, !noalias !14751 ; 9 uses
  %i.aak = load ptr, ptr %i.da, align 8, !noalias !14751 ; 9 uses
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aaj, i64 192 ; 2 uses
  %i.aam = load <4 x i32>, ptr %i.aal, align 1, !noalias !14754
  %i.aan = load <4 x i32>, ptr %i.aak, align 16, !noalias !14755
  %i.aao = select <4 x i1> %i.aag, <4 x i32> %i.aan, <4 x i32> %i.aam
  store <4 x i32> %i.aao, ptr %i.aal, align 1
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aaj, i64 208 ; 2 uses
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aak, i64 16
  %i.aar = load <4 x i32>, ptr %i.aap, align 1, !noalias !14756
  %i.aas = load <4 x i32>, ptr %i.aaq, align 16, !noalias !14757
  %i.aat = select <4 x i1> %i.aag, <4 x i32> %i.aas, <4 x i32> %i.aar
  store <4 x i32> %i.aat, ptr %i.aap, align 1
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aaj, i64 224 ; 2 uses
  %i.aav = getelementptr inbounds nuw i8, ptr %i.aak, i64 32
  %i.aaw = load <4 x i32>, ptr %i.aau, align 1, !noalias !14758
  %i.aax = load <4 x i32>, ptr %i.aav, align 16, !noalias !14759
  %i.aay = select <4 x i1> %i.aag, <4 x i32> %i.aax, <4 x i32> %i.aaw
  store <4 x i32> %i.aay, ptr %i.aau, align 1
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aaj, i64 240 ; 2 uses
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aak, i64 48
  %i.abb = load <4 x i32>, ptr %i.aaz, align 1, !noalias !14760
  %i.abc = load <4 x i32>, ptr %i.aba, align 16, !noalias !14761
  %i.abd = select <4 x i1> %i.aag, <4 x i32> %i.abc, <4 x i32> %i.abb
  store <4 x i32> %i.abd, ptr %i.aaz, align 1
  %i.abe = getelementptr inbounds nuw i8, ptr %i.aaj, i64 256 ; 2 uses
  %i.abf = getelementptr inbounds nuw i8, ptr %i.aak, i64 64
  %i.abg = load <4 x i32>, ptr %i.abe, align 1, !noalias !14762
  %i.abh = load <4 x i32>, ptr %i.abf, align 16, !noalias !14763
  %i.abi = select <4 x i1> %i.aag, <4 x i32> %i.abh, <4 x i32> %i.abg
  store <4 x i32> %i.abi, ptr %i.abe, align 1
  %i.abj = getelementptr inbounds nuw i8, ptr %i.aaj, i64 272 ; 2 uses
  %i.abk = getelementptr inbounds nuw i8, ptr %i.aak, i64 80
  %i.abl = load <4 x i32>, ptr %i.abj, align 1, !noalias !14764
  %i.abm = load <4 x i32>, ptr %i.abk, align 16, !noalias !14765
  %i.abn = select <4 x i1> %i.aag, <4 x i32> %i.abm, <4 x i32> %i.abl
  store <4 x i32> %i.abn, ptr %i.abj, align 1
  %i.abo = getelementptr inbounds nuw i8, ptr %i.aaj, i64 288 ; 2 uses
  %i.abp = getelementptr inbounds nuw i8, ptr %i.aak, i64 96
  %i.abq = load <4 x i32>, ptr %i.abo, align 1, !noalias !14766
  %i.abr = load <4 x i32>, ptr %i.abp, align 16, !noalias !14767
  %i.abs = select <4 x i1> %i.aag, <4 x i32> %i.abr, <4 x i32> %i.abq
  store <4 x i32> %i.abs, ptr %i.abo, align 1
  %i.abt = getelementptr inbounds nuw i8, ptr %i.aak, i64 112
  %i.abu = getelementptr inbounds nuw i8, ptr %i.aaj, i64 304 ; 2 uses
  %i.abv = load <4 x i32>, ptr %i.abu, align 16, !noalias !14768
  %i.abw = load <4 x i32>, ptr %i.abt, align 16, !noalias !14769
  %i.abx = select <4 x i1> %i.aag, <4 x i32> %i.abw, <4 x i32> %i.abv
  store <4 x i32> %i.abx, ptr %i.abu, align 16
  %i.aby = getelementptr inbounds nuw i8, ptr %i.aak, i64 128
  %i.abz = getelementptr inbounds nuw i8, ptr %i.aaj, i64 320 ; 2 uses
  %i.aca = load <4 x i32>, ptr %i.abz, align 16, !noalias !14770
  %i.acb = load <4 x i32>, ptr %i.aby, align 16, !noalias !14771
  %i.acc = select <4 x i1> %i.aag, <4 x i32> %i.acb, <4 x i32> %i.aca
  store <4 x i32> %i.acc, ptr %i.abz, align 16
  br label %_ZN6embree4sse227runIntersectionFilterHelperILi4EEENS_6vtypesIXT_EE5vboolEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i

_ZN6embree4sse227runIntersectionFilterHelperILi4EEENS_6vtypesIXT_EE5vboolEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i: ; preds = %bb.w, %bb.v, %bb.q
  %.sroa.0914.0.in.in = phi <4 x i1> [ %i.zv, %bb.q ], [ %i.aag, %bb.v ], [ %i.aag, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #9, !noalias !14750
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #9, !noalias !14750
  %i.acd = bitcast <4 x i1> %.sroa.0914.0.in.in to i4
  %.not1164 = icmp eq i4 %i.acd, 0
  br i1 %.not1164, label %bb.x, label %_ZN6embree4sse227runIntersectionFilterHelperILi4EEENS_6vtypesIXT_EE5vboolEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i._crit_edge

_ZN6embree4sse227runIntersectionFilterHelperILi4EEENS_6vtypesIXT_EE5vboolEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i._crit_edge: ; preds = %_ZN6embree4sse227runIntersectionFilterHelperILi4EEENS_6vtypesIXT_EE5vboolEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i
  %.pre1196 = load float, ptr %i.bf, align 4
  br label %bb.y

bb.x:                                             ; preds = %_ZN6embree4sse227runIntersectionFilterHelperILi4EEENS_6vtypesIXT_EE5vboolEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i
  store float %i.yn, ptr %i.bf, align 4
  br label %bb.y

bb.y:                                             ; preds = %_ZN6embree4sse227runIntersectionFilterHelperILi4EEENS_6vtypesIXT_EE5vboolEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i._crit_edge, %bb.x
  %i.ace = phi float [ %.pre1196, %_ZN6embree4sse227runIntersectionFilterHelperILi4EEENS_6vtypesIXT_EE5vboolEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i._crit_edge ], [ %i.yn, %bb.x ] ; 2 uses
  %i.acf = getelementptr inbounds nuw [4 x i8], ptr %14, i64 %.029.i
  store i32 0, ptr %i.acf, align 4
  %i.acg = insertelement <4 x float> poison, float %i.ace, i64 0
  %i.ach = shufflevector <4 x float> %i.acg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aci = fcmp ole <4 x float> %i.xj, %i.ach
  %i.acj = load <4 x i32>, ptr %14, align 16, !noalias !14772
  %i.ack = select <4 x i1> %i.aci, <4 x i32> %i.acj, <4 x i32> zeroinitializer ; 6 uses
  store <4 x i32> %i.ack, ptr %14, align 16
  %i.acl = icmp slt <4 x i32> %i.ack, zeroinitializer
  %i.acm = bitcast <4 x i1> %i.acl to i4
  %i.acn = icmp eq i4 %i.acm, 0
  br i1 %i.acn, label %.thread, label %bb.z, !prof !70

.thread:                                          ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #9
  %.pre1197.pre = load float, ptr %i.bm, align 4, !noalias !14773
  %.pre1198.pre = load float, ptr %i.bo, align 4, !noalias !14774
  %.pre1199.pre = load float, ptr %i.bq, align 4, !noalias !14775
end_hunk_0
