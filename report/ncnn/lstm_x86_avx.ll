inline.NumInlined: 28
inline.NumDeleted: 9
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN4ncnnL4lstmERKNS_3MatERS0_iS2_S2_S2_S2_S3_S3_RKNS_6OptionE.omp_outlined.1:bb.a
  %.1122151 = phi <4 x float> [ %i.fy, %.lr.ph157 ], [ %.0121.lcssa, %._crit_edge ]
  %.1124150 = phi <4 x float> [ %i.ga, %.lr.ph157 ], [ %.0123.lcssa, %._crit_edge ]
  %.1126149 = phi <4 x float> [ %i.gc, %.lr.ph157 ], [ %.0125.lcssa, %._crit_edge ]
  %i.ez = load float, ptr %.073155, align 1, !tbaa !288
  %i.fa = insertelement <4 x float> poison, float %i.ez, i64 0
  %i.fb = shufflevector <4 x float> %i.fa, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fc = getelementptr inbounds nuw i8, ptr %.073155, i64 4
  %i.fd = load float, ptr %i.fc, align 1, !tbaa !288
  %i.fe = insertelement <4 x float> poison, float %i.fd, i64 0
  %i.ff = shufflevector <4 x float> %i.fe, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fg = getelementptr inbounds nuw i8, ptr %.073155, i64 8
  %i.fh = load float, ptr %i.fg, align 1, !tbaa !288
  %i.fi = insertelement <4 x float> poison, float %i.fh, i64 0
  %i.fj = shufflevector <4 x float> %i.fi, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fk = getelementptr inbounds nuw i8, ptr %.073155, i64 12
  %i.fl = load float, ptr %i.fk, align 1, !tbaa !288
  %i.fm = insertelement <4 x float> poison, float %i.fl, i64 0
  %i.fn = shufflevector <4 x float> %i.fm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fo = load <4 x float>, ptr %.078153, align 1, !tbaa !288
  %i.fp = getelementptr inbounds nuw i8, ptr %.078153, i64 16
  %i.fq = load <4 x float>, ptr %i.fp, align 1, !tbaa !288
  %i.fr = getelementptr inbounds nuw i8, ptr %.078153, i64 32
  %i.fs = load <4 x float>, ptr %i.fr, align 1, !tbaa !288
  %i.ft = getelementptr inbounds nuw i8, ptr %.078153, i64 48
  %i.fu = load <4 x float>, ptr %i.ft, align 1, !tbaa !288
  %i.fv = fmul fast <4 x float> %i.fo, %i.fb
  %i.fw = fadd fast <4 x float> %i.fv, %.2119152  ; 2 uses
  %i.fx = fmul fast <4 x float> %i.fq, %i.ff
  %i.fy = fadd fast <4 x float> %i.fx, %.1122151  ; 2 uses
  %i.fz = fmul fast <4 x float> %i.fs, %i.fj
  %i.ga = fadd fast <4 x float> %i.fz, %.1124150  ; 2 uses
  %i.gb = fmul fast <4 x float> %i.fu, %i.fn
  %i.gc = fadd fast <4 x float> %i.gb, %.1126149  ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.073155, i64 16 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.078153, i64 64 ; 2 uses
  %i.gf = add nuw nsw i32 %.2154, 4               ; 2 uses
  %i.gg = or disjoint i32 %i.gf, 3
  %i.gh = icmp slt i32 %i.gg, %i.ek
  br i1 %i.gh, label %.lr.ph157, label %.preheader.loopexit, !llvm.loop !298

.lr.ph170:                                        ; preds = %.lr.ph170.prol.loopexit, %.lr.ph170
  %.1169 = phi ptr [ %i.hm, %.lr.ph170 ], [ %.1169.unr, %.lr.ph170.prol.loopexit ] ; 5 uses
  %.3168 = phi i32 [ %i.ho, %.lr.ph170 ], [ %.3168.unr, %.lr.ph170.prol.loopexit ]
  %.179167 = phi ptr [ %i.hn, %.lr.ph170 ], [ %.179167.unr, %.lr.ph170.prol.loopexit ] ; 5 uses
  %.3120166 = phi <4 x float> [ %i.hl, %.lr.ph170 ], [ %.3120166.unr, %.lr.ph170.prol.loopexit ]
  %i.gi = load float, ptr %.1169, align 1, !tbaa !288
  %i.gj = insertelement <4 x float> poison, float %i.gi, i64 0
  %i.gk = shufflevector <4 x float> %i.gj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gl = load <4 x float>, ptr %.179167, align 1, !tbaa !288
  %i.gm = fmul fast <4 x float> %i.gk, %i.gl
  %i.gn = fadd fast <4 x float> %i.gm, %.3120166
  %i.go = getelementptr inbounds nuw i8, ptr %.1169, i64 4
  %i.gp = getelementptr inbounds nuw i8, ptr %.179167, i64 16
  %i.gq = load float, ptr %i.go, align 1, !tbaa !288
  %i.gr = insertelement <4 x float> poison, float %i.gq, i64 0
  %i.gs = shufflevector <4 x float> %i.gr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gt = load <4 x float>, ptr %i.gp, align 1, !tbaa !288
  %i.gu = fmul fast <4 x float> %i.gs, %i.gt
  %i.gv = fadd fast <4 x float> %i.gu, %i.gn
  %i.gw = getelementptr inbounds nuw i8, ptr %.1169, i64 8
  %i.gx = getelementptr inbounds nuw i8, ptr %.179167, i64 32
  %i.gy = load float, ptr %i.gw, align 1, !tbaa !288
  %i.gz = insertelement <4 x float> poison, float %i.gy, i64 0
  %i.ha = shufflevector <4 x float> %i.gz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hb = load <4 x float>, ptr %i.gx, align 1, !tbaa !288
  %i.hc = fmul fast <4 x float> %i.ha, %i.hb
  %i.hd = fadd fast <4 x float> %i.hc, %i.gv
  %i.he = getelementptr inbounds nuw i8, ptr %.1169, i64 12
  %i.hf = getelementptr inbounds nuw i8, ptr %.179167, i64 48
  %i.hg = load float, ptr %i.he, align 1, !tbaa !288
  %i.hh = insertelement <4 x float> poison, float %i.hg, i64 0
  %i.hi = shufflevector <4 x float> %i.hh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hj = load <4 x float>, ptr %i.hf, align 1, !tbaa !288
  %i.hk = fmul fast <4 x float> %i.hi, %i.hj
  %i.hl = fadd fast <4 x float> %i.hk, %i.hd      ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.1169, i64 16
  %i.hn = getelementptr inbounds nuw i8, ptr %.179167, i64 64
  %i.ho = add nuw nsw i32 %.3168, 4               ; 2 uses
  %exitcond192.not.3 = icmp eq i32 %i.ho, %i.ek
  br i1 %exitcond192.not.3, label %._crit_edge171, label %.lr.ph170, !llvm.loop !299

._crit_edge171:                                   ; preds = %.lr.ph170.prol.loopexit, %.lr.ph170, %.preheader
  %.3120.lcssa = phi <4 x float> [ %.2119.lcssa, %.preheader ], [ %.lcssa239.unr, %.lr.ph170.prol.loopexit ], [ %i.hl, %.lr.ph170 ]
  %i.hp = load ptr, ptr %12, align 8, !tbaa !18
  %i.hq = load i32, ptr %i.v, align 4, !tbaa !62
  %i.hr = sext i32 %i.hq to i64
  %i.hs = sext i32 %i.x to i64
  %i.ht = mul nsw i64 %i.hr, %i.hs
  %i.hu = load i64, ptr %i.w, align 8, !tbaa !53
  %i.hv = mul i64 %i.ht, %i.hu
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hp, i64 %i.hv
  %i.hx = fadd fast <4 x float> %.1124.lcssa, %.1126.lcssa
  %i.hy = fadd fast <4 x float> %i.hx, %.1122.lcssa
  %i.hz = fadd fast <4 x float> %i.hy, %.3120.lcssa
  store <4 x float> %i.hz, ptr %i.hw, align 1, !tbaa !288
  %i.ia = add nuw i32 %.0173, 1
  %exitcond193.not = icmp eq i32 %.0173, %i.l
  br i1 %exitcond193.not, label %._crit_edge176, label %bb.c

._crit_edge176:                                   ; preds = %._crit_edge171, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge176, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4u(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #9

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL4lstmERKNS_3MatERS0_iS2_S2_S2_S2_S3_S3_RKNS_6OptionE.omp_outlined.2(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %9) #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !38     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.g, ptr %i.b, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !38
  %i.h = load i32, ptr %0, align 4, !tbaa !38     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !38
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !38
  %i.k = load i32, ptr %i.a, align 4, !tbaa !38   ; 2 uses
  %.not187 = icmp sgt i32 %i.k, %i.j
  br i1 %.not187, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  %i.o = add nsw i32 %i.j, 1
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ %i.n, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.p = shl nsw i64 %indvars.iv, 2               ; 4 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !18
  %i.r = load i32, ptr %i.l, align 4, !tbaa !62
  %i.s = sext i32 %i.r to i64
  %i.t = mul nsw i64 %i.p, %i.s
  %i.u = load i64, ptr %i.m, align 8, !tbaa !53
  %i.v = mul i64 %i.t, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.v ; 4 uses
  %i.x = load <4 x float>, ptr %i.w, align 1, !tbaa !288 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.z = load <4 x float>, ptr %i.y, align 1, !tbaa !288 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.ab = load <4 x float>, ptr %i.aa, align 1, !tbaa !288 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.ad = load <4 x float>, ptr %i.ac, align 1, !tbaa !288 ; 2 uses
  %i.ae = shufflevector <4 x float> %i.x, <4 x float> %i.z, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.af = shufflevector <4 x float> %i.ab, <4 x float> %i.ad, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ag = shufflevector <4 x float> %i.x, <4 x float> %i.z, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ah = shufflevector <4 x float> %i.ab, <4 x float> %i.ad, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ai = shufflevector <4 x float> %i.ae, <4 x float> %i.af, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.aj = shufflevector <4 x float> %i.af, <4 x float> %i.ae, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.ak = shufflevector <4 x float> %i.ag, <4 x float> %i.ah, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.al = shufflevector <4 x float> %i.ah, <4 x float> %i.ag, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.am = fneg fast <4 x float> %i.ai
  %i.an = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.am, <4 x float> splat (float f0x42B0C0A5))
  %i.ao = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.an, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ap = fmul fast <4 x float> %i.ao, splat (float f0x3FB8AA3B)
  %i.aq = fadd fast <4 x float> %i.ap, splat (float 5.000000e-01) ; 2 uses
  %i.ar = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.aq)
  %i.as = sitofp fast <4 x i32> %i.ar to <4 x float> ; 2 uses
  %i.at = fcmp fast olt <4 x float> %i.aq, %i.as
  %i.au = select <4 x i1> %i.at, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.av = fsub fast <4 x float> %i.as, %i.au      ; 2 uses
  %i.aw = fmul fast <4 x float> %i.av, splat (float f0x3F317218)
  %i.ax = fsub fast <4 x float> %i.ao, %i.aw      ; 8 uses
  %i.ay = fmul fast <4 x float> %i.ax, %i.ax
  %i.az = fmul fast <4 x float> %i.ax, splat (float f0x39506967)
  %i.ba = fadd fast <4 x float> %i.az, splat (float f0x3AB743CE)
  %i.bb = fmul fast <4 x float> %i.ba, %i.ax
  %i.bc = fadd fast <4 x float> %i.bb, splat (float f0x3C088908)
  %i.bd = fmul fast <4 x float> %i.bc, %i.ax
  %i.be = fadd fast <4 x float> %i.bd, splat (float f0x3D2AA9C1)
  %i.bf = fmul fast <4 x float> %i.be, %i.ax
  %i.bg = fadd fast <4 x float> %i.bf, splat (float f0x3E2AAAAA)
  %i.bh = fmul fast <4 x float> %i.bg, %i.ax
  %i.bi = fadd fast <4 x float> %i.bh, splat (float 5.000000e-01)
  %i.bj = fmul fast <4 x float> %i.ay, %i.bi
  %i.bk = fadd fast <4 x float> %i.ax, splat (float 1.000000e+00)
  %i.bl = fadd fast <4 x float> %i.bk, %i.bj
  %i.bm = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.av)
  %i.bn = shl <4 x i32> %i.bm, splat (i32 23)
  %i.bo = add <4 x i32> %i.bn, splat (i32 1065353216)
  %i.bp = bitcast <4 x i32> %i.bo to <4 x float>
  %i.bq = fmul fast <4 x float> %i.bl, %i.bp
  %i.br = fadd fast <4 x float> %i.bq, splat (float 1.000000e+00)
  %i.bs = fneg fast <4 x float> %i.aj
  %i.bt = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.bs, <4 x float> splat (float f0x42B0C0A5))
  %i.bu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.bt, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.bv = fmul fast <4 x float> %i.bu, splat (float f0x3FB8AA3B)
  %i.bw = fadd fast <4 x float> %i.bv, splat (float 5.000000e-01) ; 2 uses
  %i.bx = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.bw)
  %i.by = sitofp fast <4 x i32> %i.bx to <4 x float> ; 2 uses
  %i.bz = fcmp fast olt <4 x float> %i.bw, %i.by
  %i.ca = select <4 x i1> %i.bz, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.cb = fsub fast <4 x float> %i.by, %i.ca      ; 2 uses
  %i.cc = fmul fast <4 x float> %i.cb, splat (float f0x3F317218)
  %i.cd = fsub fast <4 x float> %i.bu, %i.cc      ; 8 uses
  %i.ce = fmul fast <4 x float> %i.cd, %i.cd
  %i.cf = fmul fast <4 x float> %i.cd, splat (float f0x39506967)
  %i.cg = fadd fast <4 x float> %i.cf, splat (float f0x3AB743CE)
  %i.ch = fmul fast <4 x float> %i.cg, %i.cd
  %i.ci = fadd fast <4 x float> %i.ch, splat (float f0x3C088908)
  %i.cj = fmul fast <4 x float> %i.ci, %i.cd
  %i.ck = fadd fast <4 x float> %i.cj, splat (float f0x3D2AA9C1)
  %i.cl = fmul fast <4 x float> %i.ck, %i.cd
  %i.cm = fadd fast <4 x float> %i.cl, splat (float f0x3E2AAAAA)
  %i.cn = fmul fast <4 x float> %i.cm, %i.cd
  %i.co = fadd fast <4 x float> %i.cn, splat (float 5.000000e-01)
  %i.cp = fmul fast <4 x float> %i.ce, %i.co
  %i.cq = fadd fast <4 x float> %i.cd, splat (float 1.000000e+00)
  %i.cr = fadd fast <4 x float> %i.cq, %i.cp
  %i.cs = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.cb)
  %i.ct = shl <4 x i32> %i.cs, splat (i32 23)
  %i.cu = add <4 x i32> %i.ct, splat (i32 1065353216)
  %i.cv = bitcast <4 x i32> %i.cu to <4 x float>
  %i.cw = fmul fast <4 x float> %i.cr, %i.cv
  %i.cx = fadd fast <4 x float> %i.cw, splat (float 1.000000e+00)
  %i.cy = fneg fast <4 x float> %i.ak
  %i.cz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.cy, <4 x float> splat (float f0x42B0C0A5))
  %i.da = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.cz, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.db = fmul fast <4 x float> %i.da, splat (float f0x3FB8AA3B)
  %i.dc = fadd fast <4 x float> %i.db, splat (float 5.000000e-01) ; 2 uses
  %i.dd = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dc)
  %i.de = sitofp fast <4 x i32> %i.dd to <4 x float> ; 2 uses
  %i.df = fcmp fast olt <4 x float> %i.dc, %i.de
  %i.dg = select <4 x i1> %i.df, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.dh = fsub fast <4 x float> %i.de, %i.dg      ; 2 uses
  %i.di = fmul fast <4 x float> %i.dh, splat (float f0x3F317218)
  %i.dj = fsub fast <4 x float> %i.da, %i.di      ; 8 uses
  %i.dk = fmul fast <4 x float> %i.dj, %i.dj
  %i.dl = fmul fast <4 x float> %i.dj, splat (float f0x39506967)
  %i.dm = fadd fast <4 x float> %i.dl, splat (float f0x3AB743CE)
  %i.dn = fmul fast <4 x float> %i.dm, %i.dj
  %i.do = fadd fast <4 x float> %i.dn, splat (float f0x3C088908)
  %i.dp = fmul fast <4 x float> %i.do, %i.dj
  %i.dq = fadd fast <4 x float> %i.dp, splat (float f0x3D2AA9C1)
  %i.dr = fmul fast <4 x float> %i.dq, %i.dj
  %i.ds = fadd fast <4 x float> %i.dr, splat (float f0x3E2AAAAA)
  %i.dt = fmul fast <4 x float> %i.ds, %i.dj
  %i.du = fadd fast <4 x float> %i.dt, splat (float 5.000000e-01)
  %i.dv = fmul fast <4 x float> %i.dk, %i.du
  %i.dw = fadd fast <4 x float> %i.dj, splat (float 1.000000e+00)
  %i.dx = fadd fast <4 x float> %i.dw, %i.dv
  %i.dy = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dh)
  %i.dz = shl <4 x i32> %i.dy, splat (i32 23)
  %i.ea = add <4 x i32> %i.dz, splat (i32 1065353216)
  %i.eb = bitcast <4 x i32> %i.ea to <4 x float>
  %i.ec = fmul fast <4 x float> %i.dx, %i.eb
  %i.ed = fadd fast <4 x float> %i.ec, splat (float 1.000000e+00)
  %i.ee = fmul fast <4 x float> %i.al, splat (float -2.000000e+00)
  %i.ef = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ee, <4 x float> splat (float f0x42B0C0A5))
  %i.eg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ef, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.eh = fmul fast <4 x float> %i.eg, splat (float f0x3FB8AA3B)
  %i.ei = fadd fast <4 x float> %i.eh, splat (float 5.000000e-01) ; 2 uses
  %i.ej = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ei)
  %i.ek = sitofp fast <4 x i32> %i.ej to <4 x float> ; 2 uses
  %i.el = fcmp fast olt <4 x float> %i.ei, %i.ek
  %i.em = select <4 x i1> %i.el, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.en = fsub fast <4 x float> %i.ek, %i.em      ; 2 uses
  %i.eo = fmul fast <4 x float> %i.en, splat (float f0x3F317218)
  %i.ep = fsub fast <4 x float> %i.eg, %i.eo      ; 8 uses
  %i.eq = fmul fast <4 x float> %i.ep, %i.ep
  %i.er = fmul fast <4 x float> %i.ep, splat (float f0x39506967)
  %i.es = fadd fast <4 x float> %i.er, splat (float f0x3AB743CE)
  %i.et = fmul fast <4 x float> %i.es, %i.ep
  %i.eu = fadd fast <4 x float> %i.et, splat (float f0x3C088908)
  %i.ev = fmul fast <4 x float> %i.eu, %i.ep
  %i.ew = fadd fast <4 x float> %i.ev, splat (float f0x3D2AA9C1)
  %i.ex = fmul fast <4 x float> %i.ew, %i.ep
  %i.ey = fadd fast <4 x float> %i.ex, splat (float f0x3E2AAAAA)
  %i.ez = fmul fast <4 x float> %i.ey, %i.ep
  %i.fa = fadd fast <4 x float> %i.ez, splat (float 5.000000e-01)
  %i.fb = fmul fast <4 x float> %i.eq, %i.fa
  %i.fc = fadd fast <4 x float> %i.ep, splat (float 1.000000e+00)
  %i.fd = fadd fast <4 x float> %i.fc, %i.fb
  %i.fe = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.en)
  %i.ff = shl <4 x i32> %i.fe, splat (i32 23)
  %i.fg = add <4 x i32> %i.ff, splat (i32 1065353216)
  %i.fh = bitcast <4 x i32> %i.fg to <4 x float>
  %i.fi = fmul fast <4 x float> %i.fd, %i.fh
  %i.fj = fadd fast <4 x float> %i.fi, splat (float 1.000000e+00)
  %i.fk = fdiv fast <4 x float> splat (float 2.000000e+00), %i.fj
  %i.fl = fadd fast <4 x float> %i.fk, splat (float -1.000000e+00)
  %i.fm = load ptr, ptr %4, align 8, !tbaa !285
  %i.fn = getelementptr inbounds [4 x i8], ptr %i.fm, i64 %i.p ; 2 uses
  %i.fo = load <4 x float>, ptr %i.fn, align 1, !tbaa !288
  %i.fp = fdiv fast <4 x float> %i.fo, %i.cx
  %i.fq = fdiv fast <4 x float> %i.fl, %i.br
  %i.fr = fadd fast <4 x float> %i.fq, %i.fp      ; 2 uses
  %i.fs = fmul fast <4 x float> %i.fr, splat (float -2.000000e+00)
  %i.ft = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.fs, <4 x float> splat (float f0x42B0C0A5))
  %i.fu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ft, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.fv = fmul fast <4 x float> %i.fu, splat (float f0x3FB8AA3B)
  %i.fw = fadd fast <4 x float> %i.fv, splat (float 5.000000e-01) ; 2 uses
  %i.fx = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fw)
  %i.fy = sitofp fast <4 x i32> %i.fx to <4 x float> ; 2 uses
  %i.fz = fcmp fast olt <4 x float> %i.fw, %i.fy
  %i.ga = select <4 x i1> %i.fz, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.gb = fsub fast <4 x float> %i.fy, %i.ga      ; 2 uses
  %i.gc = fmul fast <4 x float> %i.gb, splat (float f0x3F317218)
  %i.gd = fsub fast <4 x float> %i.fu, %i.gc      ; 8 uses
  %i.ge = fmul fast <4 x float> %i.gd, %i.gd
  %i.gf = fmul fast <4 x float> %i.gd, splat (float f0x39506967)
  %i.gg = fadd fast <4 x float> %i.gf, splat (float f0x3AB743CE)
  %i.gh = fmul fast <4 x float> %i.gg, %i.gd
  %i.gi = fadd fast <4 x float> %i.gh, splat (float f0x3C088908)
  %i.gj = fmul fast <4 x float> %i.gi, %i.gd
  %i.gk = fadd fast <4 x float> %i.gj, splat (float f0x3D2AA9C1)
  %i.gl = fmul fast <4 x float> %i.gk, %i.gd
  %i.gm = fadd fast <4 x float> %i.gl, splat (float f0x3E2AAAAA)
  %i.gn = fmul fast <4 x float> %i.gm, %i.gd
  %i.go = fadd fast <4 x float> %i.gn, splat (float 5.000000e-01)
  %i.gp = fmul fast <4 x float> %i.ge, %i.go
  %i.gq = fadd fast <4 x float> %i.gd, splat (float 1.000000e+00)
  %i.gr = fadd fast <4 x float> %i.gq, %i.gp
  %i.gs = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.gb)
  %i.gt = shl <4 x i32> %i.gs, splat (i32 23)
  %i.gu = add <4 x i32> %i.gt, splat (i32 1065353216)
  %i.gv = bitcast <4 x i32> %i.gu to <4 x float>
  %i.gw = fmul fast <4 x float> %i.gr, %i.gv
  %i.gx = fadd fast <4 x float> %i.gw, splat (float 1.000000e+00)
  %i.gy = fdiv fast <4 x float> splat (float 2.000000e+00), %i.gx
  %i.gz = fadd fast <4 x float> %i.gy, splat (float -1.000000e+00)
  %i.ha = fdiv fast <4 x float> %i.gz, %i.ed      ; 2 uses
  store <4 x float> %i.fr, ptr %i.fn, align 1, !tbaa !288
  %i.hb = load i32, ptr %5, align 4, !tbaa !38
  %i.hc = load i32, ptr %6, align 4, !tbaa !38
  %i.hd = icmp eq i32 %i.hb, %i.hc
  br i1 %i.hd, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.he = load ptr, ptr %7, align 8, !tbaa !285
  %i.hf = getelementptr inbounds [4 x i8], ptr %i.he, i64 %i.p
  store <4 x float> %i.ha, ptr %i.hf, align 1, !tbaa !288
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sink = phi ptr [ %8, %bb.d ], [ %9, %bb.c ]
  %i.hg = load ptr, ptr %.sink, align 8, !tbaa !285
  %i.hh = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %i.p
  store <4 x float> %i.ha, ptr %i.hh, align 1, !tbaa !288
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.o, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %bb.e, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL4lstmERKNS_3MatERS0_iS2_S2_S2_S2_S3_S3_RKNS_6OptionE.omp_outlined.3(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %9) #8 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %3, align 4, !tbaa !38     ; 3 uses
  %i.f = load i32, ptr %2, align 4, !tbaa !38     ; 2 uses
  %i.g = icmp slt i32 %i.e, %i.f
  br i1 %i.g, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.h = xor i32 %i.e, -1
  %i.i = add i32 %i.f, %i.h                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.i, ptr %i.b, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !38
  %i.j = load i32, ptr %0, align 4, !tbaa !38     ; 2 uses
  call void @__kmpc_for_static_init_4u(ptr nonnull @1, i32 %i.j, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.k = load i32, ptr %i.b, align 4, !tbaa !38
  %i.l = call i32 @llvm.umin.i32(i32 %i.k, i32 %i.i) ; 3 uses
  store i32 %i.l, ptr %i.b, align 4, !tbaa !38
  %i.m = load i32, ptr %i.a, align 4, !tbaa !38   ; 2 uses
  %i.n = add i32 %i.l, 1
  %i.o = icmp ult i32 %i.m, %i.n
  br i1 %i.o, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.p = load ptr, ptr %4, align 8, !tbaa !18
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.r = load i32, ptr %i.q, align 4, !tbaa !62
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !53
  %factor.op.mul = mul i64 %i.u, %i.s
  %i.v = load ptr, ptr %5, align 8, !tbaa !285
  %i.w = load i32, ptr %6, align 4, !tbaa !38
  %i.x = load i32, ptr %2, align 4, !tbaa !38
  %i.y = icmp eq i32 %i.w, %i.x
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.e
  %.045 = phi i32 [ %i.m, %.lr.ph ], [ %i.bd, %bb.e ] ; 3 uses
  %i.z = add i32 %.045, %i.e
  %i.aa = sext i32 %i.z to i64                    ; 4 uses
  %.reass = mul i64 %factor.op.mul, %i.aa
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 %.reass ; 3 uses
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !56
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  %i.af = load float, ptr %i.ae, align 4, !tbaa !56
  %i.ag = fneg fast float %i.ac
  %i.ah = call fast float @llvm.exp.f32(float %i.ag)
  %i.ai = fadd fast float %i.ah, 1.000000e+00
  %i.aj = load <2 x float>, ptr %i.ad, align 4, !tbaa !56
  %i.ak = fneg fast <2 x float> %i.aj             ; 2 uses
  %i.al = extractelement <2 x float> %i.ak, i64 0
  %i.am = call fast float @llvm.exp.f32(float %i.al)
  %i.an = fadd fast float %i.am, 1.000000e+00
  %i.ao = extractelement <2 x float> %i.ak, i64 1
  %i.ap = call fast float @llvm.exp.f32(float %i.ao)
  %i.aq = fadd fast float %i.ap, 1.000000e+00
  %i.ar = call fast float @llvm.tanh.f32(float %i.af)
  %i.as = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.aa ; 2 uses
  %i.at = load float, ptr %i.as, align 4, !tbaa !56
  %i.au = fdiv fast float %i.at, %i.an
  %i.av = fdiv fast float %i.ar, %i.ai
  %i.aw = fadd fast float %i.au, %i.av            ; 2 uses
  %i.ax = call fast float @llvm.tanh.f32(float %i.aw)
  %i.ay = fdiv fast float %i.ax, %i.aq            ; 2 uses
  store float %i.aw, ptr %i.as, align 4, !tbaa !56
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.az = load ptr, ptr %7, align 8, !tbaa !285
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.aa
  store float %i.ay, ptr %i.ba, align 4, !tbaa !56
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sink = phi ptr [ %8, %bb.d ], [ %9, %bb.c ]
  %i.bb = load ptr, ptr %.sink, align 8, !tbaa !285
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.aa
  store float %i.ay, ptr %i.bc, align 4, !tbaa !56
  %i.bd = add nuw i32 %.045, 1
  %exitcond.not = icmp eq i32 %.045, %i.l
  br i1 %exitcond.not, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %bb.e, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp.f32(float) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.tanh.f32(float) #13

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL4lstmERKNS_3MatERS0_iS2_S2_S2_S2_S3_S3_RKNS_6OptionE.omp_outlined.4(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %8) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %3, align 4, !tbaa !38     ; 10 uses
  %i.f = load i32, ptr %2, align 4, !tbaa !38     ; 2 uses
  %i.g = icmp slt i32 %i.e, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = xor i32 %i.e, -1
  %i.i = add i32 %i.f, %i.h                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.i, ptr %i.b, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !38
  %i.j = load i32, ptr %0, align 4, !tbaa !38     ; 2 uses
  call void @__kmpc_for_static_init_4u(ptr nonnull @1, i32 %i.j, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.k = load i32, ptr %i.b, align 4, !tbaa !38
  %i.l = call i32 @llvm.umin.i32(i32 %i.k, i32 %i.i) ; 8 uses
  store i32 %i.l, ptr %i.b, align 4, !tbaa !38
  %i.m = load i32, ptr %i.a, align 4, !tbaa !38   ; 10 uses
  %i.n = add i32 %i.l, 1
  %i.o = icmp ult i32 %i.m, %i.n
  br i1 %i.o, label %.lr.ph40, label %._crit_edge41

.lr.ph40:                                         ; preds = %bb.b
  %i.p = load ptr, ptr %4, align 8, !tbaa !18
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.r = load i32, ptr %i.q, align 4, !tbaa !62
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !53
  %factor.op.mul = mul i64 %i.u, %i.s
  %i.v = load ptr, ptr %5, align 8, !tbaa !18     ; 3 uses
  %i.w = load i32, ptr %6, align 4, !tbaa !38     ; 4 uses
  %i.x = icmp sgt i32 %i.w, 0
  %i.y = load ptr, ptr %7, align 8, !tbaa !285    ; 7 uses
end_hunk_0
begin_hunk_1_@_ZN4ncnnL9lstm_int8ERKNS_3MatES2_RS0_iS2_S2_S2_S2_S3_S3_RKNS_6OptionE.omp_outlined:bb.a
  br i1 %i.ig, label %.lr.ph297, label %._crit_edge298.loopexit, !llvm.loop !419

._crit_edge298.loopexit:                          ; preds = %.lr.ph297
  %i.ih = add nuw i32 %i.fx, 2147483640
  %i.ii = and i32 %i.ih, 2147483640
  %narrow391 = add nuw i32 %i.ii, 8
  br label %._crit_edge298

._crit_edge298:                                   ; preds = %._crit_edge298.loopexit, %.preheader248
  %.lcssa261 = phi <4 x i32> [ zeroinitializer, %.preheader248 ], [ %i.id, %._crit_edge298.loopexit ] ; 2 uses
  %.lcssa260 = phi <4 x i32> [ zeroinitializer, %.preheader248 ], [ %i.ib, %._crit_edge298.loopexit ] ; 2 uses
  %.lcssa259 = phi <4 x i32> [ zeroinitializer, %.preheader248 ], [ %i.hz, %._crit_edge298.loopexit ] ; 2 uses
  %.lcssa258 = phi <4 x i32> [ zeroinitializer, %.preheader248 ], [ %i.hx, %._crit_edge298.loopexit ] ; 2 uses
  %.4124.lcssa = phi i32 [ 0, %.preheader248 ], [ %narrow391, %._crit_edge298.loopexit ] ; 3 uses
  %.4.lcssa = phi ptr [ %.3.lcssa, %.preheader248 ], [ %i.ie, %._crit_edge298.loopexit ] ; 2 uses
  %i.ij = shufflevector <4 x i32> %.lcssa258, <4 x i32> %.lcssa259, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.ik = bitcast <4 x i32> %i.ij to <2 x i64>    ; 2 uses
  %i.il = shufflevector <4 x i32> %.lcssa258, <4 x i32> %.lcssa259, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.im = bitcast <4 x i32> %i.il to <2 x i64>    ; 2 uses
  %i.in = shufflevector <4 x i32> %.lcssa260, <4 x i32> %.lcssa261, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.io = bitcast <4 x i32> %i.in to <2 x i64>    ; 2 uses
  %i.ip = shufflevector <4 x i32> %.lcssa260, <4 x i32> %.lcssa261, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.iq = bitcast <4 x i32> %i.ip to <2 x i64>    ; 2 uses
  %i.ir = shufflevector <2 x i64> %i.ik, <2 x i64> %i.io, <2 x i32> <i32 0, i32 2>
  %i.is = shufflevector <2 x i64> %i.ik, <2 x i64> %i.io, <2 x i32> <i32 1, i32 3>
  %i.it = shufflevector <2 x i64> %i.im, <2 x i64> %i.iq, <2 x i32> <i32 0, i32 2>
  %i.iu = shufflevector <2 x i64> %i.im, <2 x i64> %i.iq, <2 x i32> <i32 1, i32 3>
  %i.iv = bitcast <2 x i64> %i.ir to <4 x i32>
  %i.iw = bitcast <2 x i64> %i.is to <4 x i32>
  %i.ix = add <4 x i32> %i.iv, %i.iw
  %i.iy = bitcast <2 x i64> %i.it to <4 x i32>
  %i.iz = add <4 x i32> %i.ix, %i.iy
  %i.ja = bitcast <2 x i64> %i.iu to <4 x i32>
  %i.jb = add <4 x i32> %i.iz, %i.ja
  %i.jc = or disjoint i32 %.4124.lcssa, 3
  %i.jd = icmp slt i32 %i.jc, %i.fx
  br i1 %i.jd, label %.lr.ph309.preheader, label %._crit_edge310

.lr.ph309.preheader:                              ; preds = %._crit_edge298
  %i.je = zext nneg i32 %.4124.lcssa to i64
  br label %.lr.ph309

.lr.ph309:                                        ; preds = %.lr.ph309.preheader, %.lr.ph309
  %indvars.iv373 = phi i64 [ %i.je, %.lr.ph309.preheader ], [ %indvars.iv.next374, %.lr.ph309 ] ; 2 uses
  %.5307 = phi ptr [ %.4.lcssa, %.lr.ph309.preheader ], [ %i.jw, %.lr.ph309 ] ; 3 uses
  %i.jf = phi <4 x i32> [ zeroinitializer, %.lr.ph309.preheader ], [ %i.jt, %.lr.ph309 ]
  %i.jg = phi <4 x i32> [ zeroinitializer, %.lr.ph309.preheader ], [ %i.jv, %.lr.ph309 ]
  %i.jh = getelementptr inbounds nuw i8, ptr %i.ah, i64 %indvars.iv373
  %i.ji = load float, ptr %i.jh, align 1, !tbaa !288
  %i.jj = insertelement <4 x float> poison, float %i.ji, i64 0
  %i.jk = load <8 x i8>, ptr %.5307, align 1, !tbaa !288
  %i.jl = getelementptr inbounds nuw i8, ptr %.5307, i64 8
  %i.jm = load <8 x i8>, ptr %i.jl, align 1, !tbaa !288
  %i.jn = bitcast <4 x float> %i.jj to <16 x i8>
  %i.jo = shufflevector <16 x i8> %i.jn, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.jp = sext <8 x i8> %i.jo to <8 x i16>        ; 2 uses
  %i.jq = sext <8 x i8> %i.jk to <8 x i16>
  %i.jr = sext <8 x i8> %i.jm to <8 x i16>
  %i.js = call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.jq, <8 x i16> %i.jp)
  %i.jt = add <4 x i32> %i.js, %i.jf              ; 2 uses
  %i.ju = call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.jr, <8 x i16> %i.jp)
  %i.jv = add <4 x i32> %i.ju, %i.jg              ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %.5307, i64 16 ; 2 uses
  %indvars.iv.next374 = add nuw nsw i64 %indvars.iv373, 4 ; 3 uses
  %i.jx = trunc i64 %indvars.iv.next374 to i32
  %i.jy = or i32 %i.jx, 3
  %i.jz = icmp slt i32 %i.jy, %i.fx
  br i1 %i.jz, label %.lr.ph309, label %._crit_edge310.loopexit, !llvm.loop !420

._crit_edge310.loopexit:                          ; preds = %.lr.ph309
  %i.ka = trunc nuw i64 %indvars.iv.next374 to i32
  br label %._crit_edge310

._crit_edge310:                                   ; preds = %._crit_edge310.loopexit, %._crit_edge298
  %.lcssa263 = phi <4 x i32> [ zeroinitializer, %._crit_edge298 ], [ %i.jv, %._crit_edge310.loopexit ]
  %.lcssa262 = phi <4 x i32> [ zeroinitializer, %._crit_edge298 ], [ %i.jt, %._crit_edge310.loopexit ]
  %.5125.lcssa = phi i32 [ %.4124.lcssa, %._crit_edge298 ], [ %i.ka, %._crit_edge310.loopexit ] ; 3 uses
  %.5.lcssa = phi ptr [ %.4.lcssa, %._crit_edge298 ], [ %i.jw, %._crit_edge310.loopexit ] ; 2 uses
  %i.kb = call <4 x i32> @llvm.x86.ssse3.phadd.d.128(<4 x i32> %.lcssa262, <4 x i32> %.lcssa263)
  %i.kc = add <4 x i32> %i.jb, %i.kb              ; 2 uses
  %i.kd = or disjoint i32 %.5125.lcssa, 1
  %i.ke = icmp slt i32 %i.kd, %i.fx
  br i1 %i.ke, label %.lr.ph319.preheader, label %.preheader

.lr.ph319.preheader:                              ; preds = %._crit_edge310
  %i.kf = zext i32 %.5125.lcssa to i64
  br label %.lr.ph319

.preheader.loopexit:                              ; preds = %.lr.ph319
  %i.kg = trunc nuw i64 %indvars.iv.next377 to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %._crit_edge310
  %.0246.in.lcssa = phi <4 x i32> [ %i.kc, %._crit_edge310 ], [ %i.lh, %.preheader.loopexit ] ; 3 uses
  %.6126.lcssa = phi i32 [ %.5125.lcssa, %._crit_edge310 ], [ %i.kg, %.preheader.loopexit ] ; 4 uses
  %.6.lcssa = phi ptr [ %.5.lcssa, %._crit_edge310 ], [ %i.li, %.preheader.loopexit ] ; 3 uses
  %i.kh = icmp slt i32 %.6126.lcssa, %i.fx
  br i1 %i.kh, label %.lr.ph325.preheader, label %._crit_edge326

.lr.ph325.preheader:                              ; preds = %.preheader
  %i.ki = zext i32 %.6126.lcssa to i64            ; 3 uses
  %i.kj = sub i32 %i.fx, %.6126.lcssa
  %.neg461 = add i32 %.6126.lcssa, 1
  %xtraiter458 = and i32 %i.kj, 1
  %lcmp.mod459.not = icmp eq i32 %xtraiter458, 0
  br i1 %lcmp.mod459.not, label %.lr.ph325.prol.loopexit, label %.lr.ph325.prol

.lr.ph325.prol:                                   ; preds = %.lr.ph325.preheader
  %i.kk = load <8 x i8>, ptr %.6.lcssa, align 1, !tbaa !288
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ki
  %i.km = load i8, ptr %i.kl, align 1, !tbaa !288
  %i.kn = sext i8 %i.km to i16
  %i.ko = insertelement <8 x i16> poison, i16 %i.kn, i64 0
  %i.kp = shufflevector <8 x i16> %i.ko, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.kq = sext <8 x i8> %i.kk to <8 x i16>        ; 2 uses
  %i.kr = mul <8 x i16> %i.kp, %i.kq
  %i.ks = call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.kq, <8 x i16> %i.kp)
  %i.kt = shufflevector <8 x i16> %i.kr, <8 x i16> %i.ks, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ku = bitcast <8 x i16> %i.kt to <4 x i32>
  %i.kv = add <4 x i32> %.0246.in.lcssa, %i.ku    ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %.6.lcssa, i64 4
  %indvars.iv.next380.prol = add nuw nsw i64 %i.ki, 1
  br label %.lr.ph325.prol.loopexit

.lr.ph325.prol.loopexit:                          ; preds = %.lr.ph325.prol, %.lr.ph325.preheader
  %indvars.iv379.unr = phi i64 [ %i.ki, %.lr.ph325.preheader ], [ %indvars.iv.next380.prol, %.lr.ph325.prol ]
  %.7324.unr = phi ptr [ %.6.lcssa, %.lr.ph325.preheader ], [ %i.kw, %.lr.ph325.prol ]
  %.unr460 = phi <4 x i32> [ %.0246.in.lcssa, %.lr.ph325.preheader ], [ %i.kv, %.lr.ph325.prol ]
  %.lcssa457.unr = phi <4 x i32> [ poison, %.lr.ph325.preheader ], [ %i.kv, %.lr.ph325.prol ]
  %i.kx = icmp eq i32 %i.fx, %.neg461
  br i1 %i.kx, label %._crit_edge326, label %.lr.ph325

.lr.ph319:                                        ; preds = %.lr.ph319.preheader, %.lr.ph319
  %indvars.iv376 = phi i64 [ %i.kf, %.lr.ph319.preheader ], [ %indvars.iv.next377, %.lr.ph319 ] ; 2 uses
  %.6317 = phi ptr [ %.5.lcssa, %.lr.ph319.preheader ], [ %i.li, %.lr.ph319 ] ; 2 uses
  %.0246.in315 = phi <4 x i32> [ %i.kc, %.lr.ph319.preheader ], [ %i.lh, %.lr.ph319 ]
  %i.ky = load <8 x i8>, ptr %.6317, align 1, !tbaa !288
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ah, i64 %indvars.iv376
  %i.la = load i16, ptr %i.kz, align 2, !tbaa !415
  %i.lb = insertelement <8 x i16> poison, i16 %i.la, i64 0
  %i.lc = sext <8 x i8> %i.ky to <8 x i16>
  %i.ld = bitcast <8 x i16> %i.lb to <16 x i8>
  %i.le = shufflevector <16 x i8> %i.ld, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.lf = sext <8 x i8> %i.le to <8 x i16>
  %i.lg = call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.lc, <8 x i16> %i.lf)
  %i.lh = add <4 x i32> %i.lg, %.0246.in315       ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %.6317, i64 8 ; 2 uses
  %indvars.iv.next377 = add nuw nsw i64 %indvars.iv376, 2 ; 3 uses
  %i.lj = trunc i64 %indvars.iv.next377 to i32
  %i.lk = or i32 %i.lj, 1
  %i.ll = icmp slt i32 %i.lk, %i.fx
  br i1 %i.ll, label %.lr.ph319, label %.preheader.loopexit, !llvm.loop !421

.lr.ph325:                                        ; preds = %.lr.ph325.prol.loopexit, %.lr.ph325
  %indvars.iv379 = phi i64 [ %indvars.iv.next380.1, %.lr.ph325 ], [ %indvars.iv379.unr, %.lr.ph325.prol.loopexit ] ; 3 uses
  %.7324 = phi ptr [ %i.mn, %.lr.ph325 ], [ %.7324.unr, %.lr.ph325.prol.loopexit ] ; 3 uses
  %i.lm = phi <4 x i32> [ %i.mm, %.lr.ph325 ], [ %.unr460, %.lr.ph325.prol.loopexit ]
  %i.ln = load <8 x i8>, ptr %.7324, align 1, !tbaa !288
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ah, i64 %indvars.iv379
  %i.lp = load i8, ptr %i.lo, align 1, !tbaa !288
  %i.lq = sext i8 %i.lp to i16
  %i.lr = insertelement <8 x i16> poison, i16 %i.lq, i64 0
  %i.ls = shufflevector <8 x i16> %i.lr, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.lt = sext <8 x i8> %i.ln to <8 x i16>        ; 2 uses
  %i.lu = mul <8 x i16> %i.ls, %i.lt
  %i.lv = call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.lt, <8 x i16> %i.ls)
  %i.lw = shufflevector <8 x i16> %i.lu, <8 x i16> %i.lv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.lx = bitcast <8 x i16> %i.lw to <4 x i32>
  %i.ly = add <4 x i32> %i.lm, %i.lx
  %i.lz = getelementptr inbounds nuw i8, ptr %.7324, i64 4
  %i.ma = load <8 x i8>, ptr %i.lz, align 1, !tbaa !288
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ah, i64 %indvars.iv379
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 1
  %i.md = load i8, ptr %i.mc, align 1, !tbaa !288
  %i.me = sext i8 %i.md to i16
  %i.mf = insertelement <8 x i16> poison, i16 %i.me, i64 0
  %i.mg = shufflevector <8 x i16> %i.mf, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.mh = sext <8 x i8> %i.ma to <8 x i16>        ; 2 uses
  %i.mi = mul <8 x i16> %i.mg, %i.mh
  %i.mj = call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.mh, <8 x i16> %i.mg)
  %i.mk = shufflevector <8 x i16> %i.mi, <8 x i16> %i.mj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ml = bitcast <8 x i16> %i.mk to <4 x i32>
  %i.mm = add <4 x i32> %i.ly, %i.ml              ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %.7324, i64 8
  %indvars.iv.next380.1 = add nuw nsw i64 %indvars.iv379, 2 ; 2 uses
  %i.mo = trunc nuw i64 %indvars.iv.next380.1 to i32
  %i.mp = icmp sgt i32 %i.fx, %i.mo
  br i1 %i.mp, label %.lr.ph325, label %._crit_edge326, !llvm.loop !422

._crit_edge326:                                   ; preds = %.lr.ph325.prol.loopexit, %.lr.ph325, %.preheader
  %.lcssa264 = phi <4 x i32> [ %.0246.in.lcssa, %.preheader ], [ %.lcssa457.unr, %.lr.ph325.prol.loopexit ], [ %i.mm, %.lr.ph325 ]
  %i.mq = insertelement <4 x float> poison, float %i.ak, i64 0
  %i.mr = shufflevector <4 x float> %i.mq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ms = insertelement <4 x float> poison, float %i.al, i64 0
  %i.mt = shufflevector <4 x float> %i.ms, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mu = load <4 x float>, ptr %i.ap, align 1, !tbaa !288
  %i.mv = load <4 x float>, ptr %i.be, align 1, !tbaa !288
  %i.mw = sitofp fast <4 x i32> %.lcssa256 to <4 x float>
  %i.mx = fmul fast <4 x float> %i.mr, %i.mw
  %i.my = fmul fast <4 x float> %i.mx, %i.mv
  %i.mz = fadd fast <4 x float> %i.my, %i.mu
  %i.na = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.nb = load <4 x float>, ptr %i.na, align 1, !tbaa !288
  %i.nc = sitofp fast <4 x i32> %.lcssa264 to <4 x float>
  %i.nd = fmul fast <4 x float> %i.mt, %i.nc
  %i.ne = fmul fast <4 x float> %i.nd, %i.nb
  %i.nf = fadd fast <4 x float> %i.mz, %i.ne
  store <4 x float> %i.nf, ptr %i.bl, align 1, !tbaa !288
  %i.ng = add nuw i32 %.0328, 1
  %exitcond.not = icmp eq i32 %.0328, %i.l
  br i1 %exitcond.not, label %._crit_edge331, label %bb.c

._crit_edge331:                                   ; preds = %._crit_edge326, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge331, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL9lstm_int8ERKNS_3MatES2_RS0_iS2_S2_S2_S2_S3_S3_RKNS_6OptionE.omp_outlined.5(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %10) #10 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !38     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.g, ptr %i.b, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !38
  %i.h = load i32, ptr %0, align 4, !tbaa !38     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !38
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !38
  %i.k = load i32, ptr %i.a, align 4, !tbaa !38   ; 2 uses
  %.not249 = icmp sgt i32 %i.k, %i.j
  br i1 %.not249, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.e
  %.0250 = phi i32 [ %i.k, %.lr.ph ], [ %i.hi, %bb.e ] ; 3 uses
  %i.n = load i32, ptr %3, align 4, !tbaa !38
  %i.o = shl nsw i32 %.0250, 3
  %i.p = add nsw i32 %i.n, %i.o
  %i.q = load ptr, ptr %4, align 8, !tbaa !18
  %i.r = load i32, ptr %i.l, align 4, !tbaa !62
  %i.s = sext i32 %i.r to i64
  %i.t = sext i32 %i.p to i64                     ; 4 uses
  %i.u = mul nsw i64 %i.s, %i.t
  %i.v = load i64, ptr %i.m, align 8, !tbaa !53
  %i.w = mul i64 %i.u, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.w ; 4 uses
  %i.y = load <8 x float>, ptr %i.x, align 1, !tbaa !288 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.aa = load <8 x float>, ptr %i.z, align 1, !tbaa !288 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  %i.ac = load <8 x float>, ptr %i.ab, align 1, !tbaa !288 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 96
  %i.ae = load <8 x float>, ptr %i.ad, align 1, !tbaa !288 ; 2 uses
  %i.af = shufflevector <8 x float> %i.y, <8 x float> %i.ac, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.ag = shufflevector <8 x float> %i.aa, <8 x float> %i.ae, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.ah = shufflevector <8 x float> %i.y, <8 x float> %i.ac, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.ai = shufflevector <8 x float> %i.aa, <8 x float> %i.ae, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.aj = shufflevector <8 x float> %i.af, <8 x float> %i.ag, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.ak = shufflevector <8 x float> %i.ah, <8 x float> %i.ai, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.al = shufflevector <8 x float> %i.af, <8 x float> %i.ag, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.am = shufflevector <8 x float> %i.ah, <8 x float> %i.ai, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.an = shufflevector <8 x float> %i.aj, <8 x float> %i.ak, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %i.ao = shufflevector <8 x float> %i.aj, <8 x float> %i.ak, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %i.ap = shufflevector <8 x float> %i.al, <8 x float> %i.am, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %i.aq = shufflevector <8 x float> %i.al, <8 x float> %i.am, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %i.ar = fneg fast <8 x float> %i.an
  %i.as = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ar, <8 x float> splat (float f0x42B0C0A5))
  %i.at = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.as, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.au = fmul fast <8 x float> %i.at, splat (float f0x3FB8AA3B)
  %i.av = fadd fast <8 x float> %i.au, splat (float 5.000000e-01) ; 2 uses
  %i.aw = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.av, i32 1) ; 2 uses
  %i.ax = fcmp fast ogt <8 x float> %i.aw, %i.av
  %i.ay = select <8 x i1> %i.ax, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.az = fsub fast <8 x float> %i.aw, %i.ay      ; 2 uses
  %i.ba = fmul fast <8 x float> %i.az, splat (float f0x3F317218)
  %i.bb = fsub fast <8 x float> %i.at, %i.ba      ; 8 uses
  %i.bc = fmul fast <8 x float> %i.bb, %i.bb
  %i.bd = fmul fast <8 x float> %i.bb, splat (float f0x39506967)
  %i.be = fadd fast <8 x float> %i.bd, splat (float f0x3AB743CE)
  %i.bf = fmul fast <8 x float> %i.be, %i.bb
  %i.bg = fadd fast <8 x float> %i.bf, splat (float f0x3C088908)
  %i.bh = fmul fast <8 x float> %i.bg, %i.bb
  %i.bi = fadd fast <8 x float> %i.bh, splat (float f0x3D2AA9C1)
  %i.bj = fmul fast <8 x float> %i.bi, %i.bb
  %i.bk = fadd fast <8 x float> %i.bj, splat (float f0x3E2AAAAA)
  %i.bl = fmul fast <8 x float> %i.bk, %i.bb
  %i.bm = fadd fast <8 x float> %i.bl, splat (float 5.000000e-01)
  %i.bn = fmul fast <8 x float> %i.bc, %i.bm
  %i.bo = fadd fast <8 x float> %i.bb, splat (float 1.000000e+00)
  %i.bp = fadd fast <8 x float> %i.bo, %i.bn
  %i.bq = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.az)
  %i.br = shl <8 x i32> %i.bq, splat (i32 23)
  %i.bs = add <8 x i32> %i.br, splat (i32 1065353216)
  %i.bt = bitcast <8 x i32> %i.bs to <8 x float>
  %i.bu = fmul fast <8 x float> %i.bp, %i.bt
  %i.bv = fadd fast <8 x float> %i.bu, splat (float 1.000000e+00)
  %i.bw = fneg fast <8 x float> %i.ao
  %i.bx = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.bw, <8 x float> splat (float f0x42B0C0A5))
  %i.by = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.bx, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.bz = fmul fast <8 x float> %i.by, splat (float f0x3FB8AA3B)
  %i.ca = fadd fast <8 x float> %i.bz, splat (float 5.000000e-01) ; 2 uses
  %i.cb = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ca, i32 1) ; 2 uses
  %i.cc = fcmp fast ogt <8 x float> %i.cb, %i.ca
  %i.cd = select <8 x i1> %i.cc, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.ce = fsub fast <8 x float> %i.cb, %i.cd      ; 2 uses
  %i.cf = fmul fast <8 x float> %i.ce, splat (float f0x3F317218)
  %i.cg = fsub fast <8 x float> %i.by, %i.cf      ; 8 uses
  %i.ch = fmul fast <8 x float> %i.cg, %i.cg
  %i.ci = fmul fast <8 x float> %i.cg, splat (float f0x39506967)
  %i.cj = fadd fast <8 x float> %i.ci, splat (float f0x3AB743CE)
  %i.ck = fmul fast <8 x float> %i.cj, %i.cg
  %i.cl = fadd fast <8 x float> %i.ck, splat (float f0x3C088908)
  %i.cm = fmul fast <8 x float> %i.cl, %i.cg
  %i.cn = fadd fast <8 x float> %i.cm, splat (float f0x3D2AA9C1)
  %i.co = fmul fast <8 x float> %i.cn, %i.cg
  %i.cp = fadd fast <8 x float> %i.co, splat (float f0x3E2AAAAA)
  %i.cq = fmul fast <8 x float> %i.cp, %i.cg
  %i.cr = fadd fast <8 x float> %i.cq, splat (float 5.000000e-01)
  %i.cs = fmul fast <8 x float> %i.ch, %i.cr
  %i.ct = fadd fast <8 x float> %i.cg, splat (float 1.000000e+00)
  %i.cu = fadd fast <8 x float> %i.ct, %i.cs
  %i.cv = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ce)
  %i.cw = shl <8 x i32> %i.cv, splat (i32 23)
  %i.cx = add <8 x i32> %i.cw, splat (i32 1065353216)
  %i.cy = bitcast <8 x i32> %i.cx to <8 x float>
  %i.cz = fmul fast <8 x float> %i.cu, %i.cy
  %i.da = fadd fast <8 x float> %i.cz, splat (float 1.000000e+00)
  %i.db = fneg fast <8 x float> %i.ap
  %i.dc = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.db, <8 x float> splat (float f0x42B0C0A5))
  %i.dd = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.dc, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.de = fmul fast <8 x float> %i.dd, splat (float f0x3FB8AA3B)
  %i.df = fadd fast <8 x float> %i.de, splat (float 5.000000e-01) ; 2 uses
  %i.dg = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.df, i32 1) ; 2 uses
  %i.dh = fcmp fast ogt <8 x float> %i.dg, %i.df
  %i.di = select <8 x i1> %i.dh, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.dj = fsub fast <8 x float> %i.dg, %i.di      ; 2 uses
  %i.dk = fmul fast <8 x float> %i.dj, splat (float f0x3F317218)
  %i.dl = fsub fast <8 x float> %i.dd, %i.dk      ; 8 uses
  %i.dm = fmul fast <8 x float> %i.dl, %i.dl
  %i.dn = fmul fast <8 x float> %i.dl, splat (float f0x39506967)
  %i.do = fadd fast <8 x float> %i.dn, splat (float f0x3AB743CE)
  %i.dp = fmul fast <8 x float> %i.do, %i.dl
  %i.dq = fadd fast <8 x float> %i.dp, splat (float f0x3C088908)
  %i.dr = fmul fast <8 x float> %i.dq, %i.dl
  %i.ds = fadd fast <8 x float> %i.dr, splat (float f0x3D2AA9C1)
  %i.dt = fmul fast <8 x float> %i.ds, %i.dl
  %i.du = fadd fast <8 x float> %i.dt, splat (float f0x3E2AAAAA)
  %i.dv = fmul fast <8 x float> %i.du, %i.dl
  %i.dw = fadd fast <8 x float> %i.dv, splat (float 5.000000e-01)
  %i.dx = fmul fast <8 x float> %i.dm, %i.dw
  %i.dy = fadd fast <8 x float> %i.dl, splat (float 1.000000e+00)
  %i.dz = fadd fast <8 x float> %i.dy, %i.dx
  %i.ea = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.dj)
  %i.eb = shl <8 x i32> %i.ea, splat (i32 23)
  %i.ec = add <8 x i32> %i.eb, splat (i32 1065353216)
  %i.ed = bitcast <8 x i32> %i.ec to <8 x float>
  %i.ee = fmul fast <8 x float> %i.dz, %i.ed
  %i.ef = fadd fast <8 x float> %i.ee, splat (float 1.000000e+00)
  %i.eg = fmul fast <8 x float> %i.aq, splat (float -2.000000e+00)
  %i.eh = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.eg, <8 x float> splat (float f0x42B0C0A5))
  %i.ei = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.eh, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ej = fmul fast <8 x float> %i.ei, splat (float f0x3FB8AA3B)
  %i.ek = fadd fast <8 x float> %i.ej, splat (float 5.000000e-01) ; 2 uses
  %i.el = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ek, i32 1) ; 2 uses
  %i.em = fcmp fast ogt <8 x float> %i.el, %i.ek
  %i.en = select <8 x i1> %i.em, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.eo = fsub fast <8 x float> %i.el, %i.en      ; 2 uses
  %i.ep = fmul fast <8 x float> %i.eo, splat (float f0x3F317218)
  %i.eq = fsub fast <8 x float> %i.ei, %i.ep      ; 8 uses
  %i.er = fmul fast <8 x float> %i.eq, %i.eq
  %i.es = fmul fast <8 x float> %i.eq, splat (float f0x39506967)
  %i.et = fadd fast <8 x float> %i.es, splat (float f0x3AB743CE)
  %i.eu = fmul fast <8 x float> %i.et, %i.eq
  %i.ev = fadd fast <8 x float> %i.eu, splat (float f0x3C088908)
  %i.ew = fmul fast <8 x float> %i.ev, %i.eq
  %i.ex = fadd fast <8 x float> %i.ew, splat (float f0x3D2AA9C1)
  %i.ey = fmul fast <8 x float> %i.ex, %i.eq
  %i.ez = fadd fast <8 x float> %i.ey, splat (float f0x3E2AAAAA)
  %i.fa = fmul fast <8 x float> %i.ez, %i.eq
  %i.fb = fadd fast <8 x float> %i.fa, splat (float 5.000000e-01)
  %i.fc = fmul fast <8 x float> %i.er, %i.fb
  %i.fd = fadd fast <8 x float> %i.eq, splat (float 1.000000e+00)
  %i.fe = fadd fast <8 x float> %i.fd, %i.fc
  %i.ff = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.eo)
  %i.fg = shl <8 x i32> %i.ff, splat (i32 23)
  %i.fh = add <8 x i32> %i.fg, splat (i32 1065353216)
  %i.fi = bitcast <8 x i32> %i.fh to <8 x float>
  %i.fj = fmul fast <8 x float> %i.fe, %i.fi
  %i.fk = fadd fast <8 x float> %i.fj, splat (float 1.000000e+00)
  %i.fl = fdiv fast <8 x float> splat (float 2.000000e+00), %i.fk
  %i.fm = fadd fast <8 x float> %i.fl, splat (float -1.000000e+00)
  %i.fn = load ptr, ptr %5, align 8, !tbaa !285
  %i.fo = getelementptr inbounds [4 x i8], ptr %i.fn, i64 %i.t ; 2 uses
  %i.fp = load <8 x float>, ptr %i.fo, align 1, !tbaa !288
  %i.fq = fdiv fast <8 x float> %i.fp, %i.da
  %i.fr = fdiv fast <8 x float> %i.fm, %i.bv
  %i.fs = fadd fast <8 x float> %i.fr, %i.fq      ; 2 uses
  %i.ft = fmul fast <8 x float> %i.fs, splat (float -2.000000e+00)
  %i.fu = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ft, <8 x float> splat (float f0x42B0C0A5))
  %i.fv = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.fu, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.fw = fmul fast <8 x float> %i.fv, splat (float f0x3FB8AA3B)
  %i.fx = fadd fast <8 x float> %i.fw, splat (float 5.000000e-01) ; 2 uses
  %i.fy = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.fx, i32 1) ; 2 uses
  %i.fz = fcmp fast ogt <8 x float> %i.fy, %i.fx
  %i.ga = select <8 x i1> %i.fz, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.gb = fsub fast <8 x float> %i.fy, %i.ga      ; 2 uses
  %i.gc = fmul fast <8 x float> %i.gb, splat (float f0x3F317218)
  %i.gd = fsub fast <8 x float> %i.fv, %i.gc      ; 8 uses
  %i.ge = fmul fast <8 x float> %i.gd, %i.gd
  %i.gf = fmul fast <8 x float> %i.gd, splat (float f0x39506967)
  %i.gg = fadd fast <8 x float> %i.gf, splat (float f0x3AB743CE)
  %i.gh = fmul fast <8 x float> %i.gg, %i.gd
  %i.gi = fadd fast <8 x float> %i.gh, splat (float f0x3C088908)
  %i.gj = fmul fast <8 x float> %i.gi, %i.gd
  %i.gk = fadd fast <8 x float> %i.gj, splat (float f0x3D2AA9C1)
  %i.gl = fmul fast <8 x float> %i.gk, %i.gd
  %i.gm = fadd fast <8 x float> %i.gl, splat (float f0x3E2AAAAA)
  %i.gn = fmul fast <8 x float> %i.gm, %i.gd
  %i.go = fadd fast <8 x float> %i.gn, splat (float 5.000000e-01)
  %i.gp = fmul fast <8 x float> %i.ge, %i.go
  %i.gq = fadd fast <8 x float> %i.gd, splat (float 1.000000e+00)
  %i.gr = fadd fast <8 x float> %i.gq, %i.gp
  %i.gs = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.gb)
  %i.gt = shl <8 x i32> %i.gs, splat (i32 23)
  %i.gu = add <8 x i32> %i.gt, splat (i32 1065353216)
  %i.gv = bitcast <8 x i32> %i.gu to <8 x float>
  %i.gw = fmul fast <8 x float> %i.gr, %i.gv
  %i.gx = fadd fast <8 x float> %i.gw, splat (float 1.000000e+00)
  %i.gy = fdiv fast <8 x float> splat (float 2.000000e+00), %i.gx
  %i.gz = fadd fast <8 x float> %i.gy, splat (float -1.000000e+00)
  %i.ha = fdiv fast <8 x float> %i.gz, %i.ef      ; 2 uses
  store <8 x float> %i.fs, ptr %i.fo, align 1, !tbaa !288
  %i.hb = load i32, ptr %6, align 4, !tbaa !38
  %i.hc = load i32, ptr %7, align 4, !tbaa !38
  %i.hd = icmp eq i32 %i.hb, %i.hc
  br i1 %i.hd, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.he = load ptr, ptr %8, align 8, !tbaa !285
  %i.hf = getelementptr inbounds [4 x i8], ptr %i.he, i64 %i.t
  store <8 x float> %i.ha, ptr %i.hf, align 1, !tbaa !288
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sink = phi ptr [ %9, %bb.d ], [ %10, %bb.c ]
  %i.hg = load ptr, ptr %.sink, align 8, !tbaa !285
  %i.hh = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %i.t
  store <8 x float> %i.ha, ptr %i.hh, align 1, !tbaa !288
  %i.hi = add i32 %.0250, 1
  %exitcond.not = icmp eq i32 %.0250, %i.j
  br i1 %exitcond.not, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %bb.e, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL9lstm_int8ERKNS_3MatES2_RS0_iS2_S2_S2_S2_S3_S3_RKNS_6OptionE.omp_outlined.6(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %10) #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !38     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.g, ptr %i.b, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !38
  %i.h = load i32, ptr %0, align 4, !tbaa !38     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !38
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !38
  %i.k = load i32, ptr %i.a, align 4, !tbaa !38   ; 2 uses
  %.not188 = icmp sgt i32 %i.k, %i.j
  br i1 %.not188, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.e
  %.0189 = phi i32 [ %i.k, %.lr.ph ], [ %i.hj, %bb.e ] ; 3 uses
  %i.n = load i32, ptr %3, align 4, !tbaa !38
  %i.o = shl nsw i32 %.0189, 2
  %i.p = add nsw i32 %i.n, %i.o
  %i.q = load ptr, ptr %4, align 8, !tbaa !18
  %i.r = load i32, ptr %i.l, align 4, !tbaa !62
  %i.s = sext i32 %i.r to i64
  %i.t = sext i32 %i.p to i64                     ; 4 uses
  %i.u = mul nsw i64 %i.s, %i.t
  %i.v = load i64, ptr %i.m, align 8, !tbaa !53
  %i.w = mul i64 %i.u, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.w ; 4 uses
  %i.y = load <4 x float>, ptr %i.x, align 1, !tbaa !288 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.aa = load <4 x float>, ptr %i.z, align 1, !tbaa !288 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.ac = load <4 x float>, ptr %i.ab, align 1, !tbaa !288 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.ae = load <4 x float>, ptr %i.ad, align 1, !tbaa !288 ; 2 uses
  %i.af = shufflevector <4 x float> %i.y, <4 x float> %i.aa, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ag = shufflevector <4 x float> %i.ac, <4 x float> %i.ae, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ah = shufflevector <4 x float> %i.y, <4 x float> %i.aa, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ai = shufflevector <4 x float> %i.ac, <4 x float> %i.ae, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.aj = shufflevector <4 x float> %i.af, <4 x float> %i.ag, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ak = shufflevector <4 x float> %i.ag, <4 x float> %i.af, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.al = shufflevector <4 x float> %i.ah, <4 x float> %i.ai, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.am = shufflevector <4 x float> %i.ai, <4 x float> %i.ah, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.an = fneg fast <4 x float> %i.aj
  %i.ao = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.an, <4 x float> splat (float f0x42B0C0A5))
  %i.ap = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ao, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.aq = fmul fast <4 x float> %i.ap, splat (float f0x3FB8AA3B)
  %i.ar = fadd fast <4 x float> %i.aq, splat (float 5.000000e-01) ; 2 uses
  %i.as = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ar)
  %i.at = sitofp fast <4 x i32> %i.as to <4 x float> ; 2 uses
  %i.au = fcmp fast olt <4 x float> %i.ar, %i.at
  %i.av = select <4 x i1> %i.au, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.aw = fsub fast <4 x float> %i.at, %i.av      ; 2 uses
  %i.ax = fmul fast <4 x float> %i.aw, splat (float f0x3F317218)
  %i.ay = fsub fast <4 x float> %i.ap, %i.ax      ; 8 uses
  %i.az = fmul fast <4 x float> %i.ay, %i.ay
  %i.ba = fmul fast <4 x float> %i.ay, splat (float f0x39506967)
  %i.bb = fadd fast <4 x float> %i.ba, splat (float f0x3AB743CE)
  %i.bc = fmul fast <4 x float> %i.bb, %i.ay
  %i.bd = fadd fast <4 x float> %i.bc, splat (float f0x3C088908)
  %i.be = fmul fast <4 x float> %i.bd, %i.ay
  %i.bf = fadd fast <4 x float> %i.be, splat (float f0x3D2AA9C1)
  %i.bg = fmul fast <4 x float> %i.bf, %i.ay
  %i.bh = fadd fast <4 x float> %i.bg, splat (float f0x3E2AAAAA)
  %i.bi = fmul fast <4 x float> %i.bh, %i.ay
  %i.bj = fadd fast <4 x float> %i.bi, splat (float 5.000000e-01)
  %i.bk = fmul fast <4 x float> %i.az, %i.bj
  %i.bl = fadd fast <4 x float> %i.ay, splat (float 1.000000e+00)
  %i.bm = fadd fast <4 x float> %i.bl, %i.bk
  %i.bn = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.aw)
  %i.bo = shl <4 x i32> %i.bn, splat (i32 23)
  %i.bp = add <4 x i32> %i.bo, splat (i32 1065353216)
  %i.bq = bitcast <4 x i32> %i.bp to <4 x float>
  %i.br = fmul fast <4 x float> %i.bm, %i.bq
  %i.bs = fadd fast <4 x float> %i.br, splat (float 1.000000e+00)
  %i.bt = fneg fast <4 x float> %i.ak
  %i.bu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.bt, <4 x float> splat (float f0x42B0C0A5))
  %i.bv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.bu, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.bw = fmul fast <4 x float> %i.bv, splat (float f0x3FB8AA3B)
  %i.bx = fadd fast <4 x float> %i.bw, splat (float 5.000000e-01) ; 2 uses
  %i.by = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.bx)
  %i.bz = sitofp fast <4 x i32> %i.by to <4 x float> ; 2 uses
  %i.ca = fcmp fast olt <4 x float> %i.bx, %i.bz
  %i.cb = select <4 x i1> %i.ca, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.cc = fsub fast <4 x float> %i.bz, %i.cb      ; 2 uses
  %i.cd = fmul fast <4 x float> %i.cc, splat (float f0x3F317218)
  %i.ce = fsub fast <4 x float> %i.bv, %i.cd      ; 8 uses
  %i.cf = fmul fast <4 x float> %i.ce, %i.ce
  %i.cg = fmul fast <4 x float> %i.ce, splat (float f0x39506967)
  %i.ch = fadd fast <4 x float> %i.cg, splat (float f0x3AB743CE)
  %i.ci = fmul fast <4 x float> %i.ch, %i.ce
  %i.cj = fadd fast <4 x float> %i.ci, splat (float f0x3C088908)
  %i.ck = fmul fast <4 x float> %i.cj, %i.ce
  %i.cl = fadd fast <4 x float> %i.ck, splat (float f0x3D2AA9C1)
  %i.cm = fmul fast <4 x float> %i.cl, %i.ce
  %i.cn = fadd fast <4 x float> %i.cm, splat (float f0x3E2AAAAA)
  %i.co = fmul fast <4 x float> %i.cn, %i.ce
  %i.cp = fadd fast <4 x float> %i.co, splat (float 5.000000e-01)
  %i.cq = fmul fast <4 x float> %i.cf, %i.cp
  %i.cr = fadd fast <4 x float> %i.ce, splat (float 1.000000e+00)
  %i.cs = fadd fast <4 x float> %i.cr, %i.cq
  %i.ct = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.cc)
  %i.cu = shl <4 x i32> %i.ct, splat (i32 23)
  %i.cv = add <4 x i32> %i.cu, splat (i32 1065353216)
  %i.cw = bitcast <4 x i32> %i.cv to <4 x float>
  %i.cx = fmul fast <4 x float> %i.cs, %i.cw
  %i.cy = fadd fast <4 x float> %i.cx, splat (float 1.000000e+00)
  %i.cz = fneg fast <4 x float> %i.al
  %i.da = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.cz, <4 x float> splat (float f0x42B0C0A5))
  %i.db = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.da, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.dc = fmul fast <4 x float> %i.db, splat (float f0x3FB8AA3B)
  %i.dd = fadd fast <4 x float> %i.dc, splat (float 5.000000e-01) ; 2 uses
  %i.de = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dd)
  %i.df = sitofp fast <4 x i32> %i.de to <4 x float> ; 2 uses
  %i.dg = fcmp fast olt <4 x float> %i.dd, %i.df
  %i.dh = select <4 x i1> %i.dg, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.di = fsub fast <4 x float> %i.df, %i.dh      ; 2 uses
  %i.dj = fmul fast <4 x float> %i.di, splat (float f0x3F317218)
  %i.dk = fsub fast <4 x float> %i.db, %i.dj      ; 8 uses
  %i.dl = fmul fast <4 x float> %i.dk, %i.dk
  %i.dm = fmul fast <4 x float> %i.dk, splat (float f0x39506967)
  %i.dn = fadd fast <4 x float> %i.dm, splat (float f0x3AB743CE)
  %i.do = fmul fast <4 x float> %i.dn, %i.dk
  %i.dp = fadd fast <4 x float> %i.do, splat (float f0x3C088908)
  %i.dq = fmul fast <4 x float> %i.dp, %i.dk
  %i.dr = fadd fast <4 x float> %i.dq, splat (float f0x3D2AA9C1)
  %i.ds = fmul fast <4 x float> %i.dr, %i.dk
  %i.dt = fadd fast <4 x float> %i.ds, splat (float f0x3E2AAAAA)
  %i.du = fmul fast <4 x float> %i.dt, %i.dk
  %i.dv = fadd fast <4 x float> %i.du, splat (float 5.000000e-01)
  %i.dw = fmul fast <4 x float> %i.dl, %i.dv
  %i.dx = fadd fast <4 x float> %i.dk, splat (float 1.000000e+00)
  %i.dy = fadd fast <4 x float> %i.dx, %i.dw
  %i.dz = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.di)
  %i.ea = shl <4 x i32> %i.dz, splat (i32 23)
  %i.eb = add <4 x i32> %i.ea, splat (i32 1065353216)
  %i.ec = bitcast <4 x i32> %i.eb to <4 x float>
  %i.ed = fmul fast <4 x float> %i.dy, %i.ec
  %i.ee = fadd fast <4 x float> %i.ed, splat (float 1.000000e+00)
  %i.ef = fmul fast <4 x float> %i.am, splat (float -2.000000e+00)
  %i.eg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ef, <4 x float> splat (float f0x42B0C0A5))
  %i.eh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.eg, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ei = fmul fast <4 x float> %i.eh, splat (float f0x3FB8AA3B)
  %i.ej = fadd fast <4 x float> %i.ei, splat (float 5.000000e-01) ; 2 uses
  %i.ek = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ej)
  %i.el = sitofp fast <4 x i32> %i.ek to <4 x float> ; 2 uses
  %i.em = fcmp fast olt <4 x float> %i.ej, %i.el
  %i.en = select <4 x i1> %i.em, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.eo = fsub fast <4 x float> %i.el, %i.en      ; 2 uses
  %i.ep = fmul fast <4 x float> %i.eo, splat (float f0x3F317218)
  %i.eq = fsub fast <4 x float> %i.eh, %i.ep      ; 8 uses
  %i.er = fmul fast <4 x float> %i.eq, %i.eq
  %i.es = fmul fast <4 x float> %i.eq, splat (float f0x39506967)
  %i.et = fadd fast <4 x float> %i.es, splat (float f0x3AB743CE)
  %i.eu = fmul fast <4 x float> %i.et, %i.eq
  %i.ev = fadd fast <4 x float> %i.eu, splat (float f0x3C088908)
  %i.ew = fmul fast <4 x float> %i.ev, %i.eq
  %i.ex = fadd fast <4 x float> %i.ew, splat (float f0x3D2AA9C1)
  %i.ey = fmul fast <4 x float> %i.ex, %i.eq
  %i.ez = fadd fast <4 x float> %i.ey, splat (float f0x3E2AAAAA)
  %i.fa = fmul fast <4 x float> %i.ez, %i.eq
  %i.fb = fadd fast <4 x float> %i.fa, splat (float 5.000000e-01)
  %i.fc = fmul fast <4 x float> %i.er, %i.fb
  %i.fd = fadd fast <4 x float> %i.eq, splat (float 1.000000e+00)
  %i.fe = fadd fast <4 x float> %i.fd, %i.fc
  %i.ff = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.eo)
  %i.fg = shl <4 x i32> %i.ff, splat (i32 23)
  %i.fh = add <4 x i32> %i.fg, splat (i32 1065353216)
  %i.fi = bitcast <4 x i32> %i.fh to <4 x float>
  %i.fj = fmul fast <4 x float> %i.fe, %i.fi
  %i.fk = fadd fast <4 x float> %i.fj, splat (float 1.000000e+00)
  %i.fl = fdiv fast <4 x float> splat (float 2.000000e+00), %i.fk
  %i.fm = fadd fast <4 x float> %i.fl, splat (float -1.000000e+00)
  %i.fn = load ptr, ptr %5, align 8, !tbaa !285
  %i.fo = getelementptr inbounds [4 x i8], ptr %i.fn, i64 %i.t ; 2 uses
  %i.fp = load <4 x float>, ptr %i.fo, align 1, !tbaa !288
  %i.fq = fdiv fast <4 x float> %i.fp, %i.cy
  %i.fr = fdiv fast <4 x float> %i.fm, %i.bs
  %i.fs = fadd fast <4 x float> %i.fr, %i.fq      ; 2 uses
  %i.ft = fmul fast <4 x float> %i.fs, splat (float -2.000000e+00)
  %i.fu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ft, <4 x float> splat (float f0x42B0C0A5))
  %i.fv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.fu, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.fw = fmul fast <4 x float> %i.fv, splat (float f0x3FB8AA3B)
  %i.fx = fadd fast <4 x float> %i.fw, splat (float 5.000000e-01) ; 2 uses
  %i.fy = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fx)
  %i.fz = sitofp fast <4 x i32> %i.fy to <4 x float> ; 2 uses
  %i.ga = fcmp fast olt <4 x float> %i.fx, %i.fz
  %i.gb = select <4 x i1> %i.ga, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.gc = fsub fast <4 x float> %i.fz, %i.gb      ; 2 uses
  %i.gd = fmul fast <4 x float> %i.gc, splat (float f0x3F317218)
  %i.ge = fsub fast <4 x float> %i.fv, %i.gd      ; 8 uses
  %i.gf = fmul fast <4 x float> %i.ge, %i.ge
  %i.gg = fmul fast <4 x float> %i.ge, splat (float f0x39506967)
  %i.gh = fadd fast <4 x float> %i.gg, splat (float f0x3AB743CE)
  %i.gi = fmul fast <4 x float> %i.gh, %i.ge
  %i.gj = fadd fast <4 x float> %i.gi, splat (float f0x3C088908)
  %i.gk = fmul fast <4 x float> %i.gj, %i.ge
  %i.gl = fadd fast <4 x float> %i.gk, splat (float f0x3D2AA9C1)
  %i.gm = fmul fast <4 x float> %i.gl, %i.ge
  %i.gn = fadd fast <4 x float> %i.gm, splat (float f0x3E2AAAAA)
  %i.go = fmul fast <4 x float> %i.gn, %i.ge
  %i.gp = fadd fast <4 x float> %i.go, splat (float 5.000000e-01)
  %i.gq = fmul fast <4 x float> %i.gf, %i.gp
  %i.gr = fadd fast <4 x float> %i.ge, splat (float 1.000000e+00)
  %i.gs = fadd fast <4 x float> %i.gr, %i.gq
  %i.gt = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.gc)
  %i.gu = shl <4 x i32> %i.gt, splat (i32 23)
  %i.gv = add <4 x i32> %i.gu, splat (i32 1065353216)
  %i.gw = bitcast <4 x i32> %i.gv to <4 x float>
  %i.gx = fmul fast <4 x float> %i.gs, %i.gw
  %i.gy = fadd fast <4 x float> %i.gx, splat (float 1.000000e+00)
  %i.gz = fdiv fast <4 x float> splat (float 2.000000e+00), %i.gy
  %i.ha = fadd fast <4 x float> %i.gz, splat (float -1.000000e+00)
  %i.hb = fdiv fast <4 x float> %i.ha, %i.ee      ; 2 uses
  store <4 x float> %i.fs, ptr %i.fo, align 1, !tbaa !288
  %i.hc = load i32, ptr %6, align 4, !tbaa !38
  %i.hd = load i32, ptr %7, align 4, !tbaa !38
  %i.he = icmp eq i32 %i.hc, %i.hd
  br i1 %i.he, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.hf = load ptr, ptr %8, align 8, !tbaa !285
  %i.hg = getelementptr inbounds [4 x i8], ptr %i.hf, i64 %i.t
  store <4 x float> %i.hb, ptr %i.hg, align 1, !tbaa !288
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sink = phi ptr [ %9, %bb.d ], [ %10, %bb.c ]
  %i.hh = load ptr, ptr %.sink, align 8, !tbaa !285
  %i.hi = getelementptr inbounds [4 x i8], ptr %i.hh, i64 %i.t
  store <4 x float> %i.hb, ptr %i.hi, align 1, !tbaa !288
  %i.hj = add i32 %.0189, 1
  %exitcond.not = icmp eq i32 %.0189, %i.j
  br i1 %exitcond.not, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %bb.e, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL9lstm_int8ERKNS_3MatES2_RS0_iS2_S2_S2_S2_S3_S3_RKNS_6OptionE.omp_outlined.7(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %9) #8 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %3, align 4, !tbaa !38     ; 3 uses
  %i.f = load i32, ptr %2, align 4, !tbaa !38     ; 2 uses
  %i.g = icmp slt i32 %i.e, %i.f
  br i1 %i.g, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.h = xor i32 %i.e, -1
  %i.i = add i32 %i.f, %i.h                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.i, ptr %i.b, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !38
  %i.j = load i32, ptr %0, align 4, !tbaa !38     ; 2 uses
  call void @__kmpc_for_static_init_4u(ptr nonnull @1, i32 %i.j, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.k = load i32, ptr %i.b, align 4, !tbaa !38
  %i.l = call i32 @llvm.umin.i32(i32 %i.k, i32 %i.i) ; 3 uses
  store i32 %i.l, ptr %i.b, align 4, !tbaa !38
  %i.m = load i32, ptr %i.a, align 4, !tbaa !38   ; 2 uses
  %i.n = add i32 %i.l, 1
  %i.o = icmp ult i32 %i.m, %i.n
  br i1 %i.o, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.p = load ptr, ptr %4, align 8, !tbaa !18
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.r = load i32, ptr %i.q, align 4, !tbaa !62
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !53
  %factor.op.mul = mul i64 %i.u, %i.s
  %i.v = load ptr, ptr %5, align 8, !tbaa !285
  %i.w = load i32, ptr %6, align 4, !tbaa !38
  %i.x = load i32, ptr %2, align 4, !tbaa !38
  %i.y = icmp eq i32 %i.w, %i.x
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.e
  %.045 = phi i32 [ %i.m, %.lr.ph ], [ %i.bd, %bb.e ] ; 3 uses
  %i.z = add i32 %.045, %i.e
  %i.aa = sext i32 %i.z to i64                    ; 4 uses
  %.reass = mul i64 %factor.op.mul, %i.aa
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 %.reass ; 3 uses
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !56
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  %i.af = load float, ptr %i.ae, align 4, !tbaa !56
  %i.ag = fneg fast float %i.ac
  %i.ah = call fast float @llvm.exp.f32(float %i.ag)
  %i.ai = fadd fast float %i.ah, 1.000000e+00
  %i.aj = load <2 x float>, ptr %i.ad, align 4, !tbaa !56
  %i.ak = fneg fast <2 x float> %i.aj             ; 2 uses
  %i.al = extractelement <2 x float> %i.ak, i64 0
  %i.am = call fast float @llvm.exp.f32(float %i.al)
  %i.an = fadd fast float %i.am, 1.000000e+00
  %i.ao = extractelement <2 x float> %i.ak, i64 1
  %i.ap = call fast float @llvm.exp.f32(float %i.ao)
  %i.aq = fadd fast float %i.ap, 1.000000e+00
  %i.ar = call fast float @llvm.tanh.f32(float %i.af)
  %i.as = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.aa ; 2 uses
  %i.at = load float, ptr %i.as, align 4, !tbaa !56
  %i.au = fdiv fast float %i.at, %i.an
  %i.av = fdiv fast float %i.ar, %i.ai
  %i.aw = fadd fast float %i.au, %i.av            ; 2 uses
  %i.ax = call fast float @llvm.tanh.f32(float %i.aw)
  %i.ay = fdiv fast float %i.ax, %i.aq            ; 2 uses
  store float %i.aw, ptr %i.as, align 4, !tbaa !56
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.az = load ptr, ptr %7, align 8, !tbaa !285
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.aa
  store float %i.ay, ptr %i.ba, align 4, !tbaa !56
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sink = phi ptr [ %8, %bb.d ], [ %9, %bb.c ]
  %i.bb = load ptr, ptr %.sink, align 8, !tbaa !285
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.aa
  store float %i.ay, ptr %i.bc, align 4, !tbaa !56
  %i.bd = add nuw i32 %.045, 1
  %exitcond.not = icmp eq i32 %.045, %i.l
  br i1 %exitcond.not, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %bb.e, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL9lstm_int8ERKNS_3MatES2_RS0_iS2_S2_S2_S2_S3_S3_RKNS_6OptionE.omp_outlined.8(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %8) #8 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %3, align 4, !tbaa !38     ; 10 uses
  %i.f = load i32, ptr %2, align 4, !tbaa !38     ; 2 uses
  %i.g = icmp slt i32 %i.e, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = xor i32 %i.e, -1
  %i.i = add i32 %i.f, %i.h                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.i, ptr %i.b, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !38
  %i.j = load i32, ptr %0, align 4, !tbaa !38     ; 2 uses
  call void @__kmpc_for_static_init_4u(ptr nonnull @1, i32 %i.j, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.k = load i32, ptr %i.b, align 4, !tbaa !38
  %i.l = call i32 @llvm.umin.i32(i32 %i.k, i32 %i.i) ; 8 uses
  store i32 %i.l, ptr %i.b, align 4, !tbaa !38
  %i.m = load i32, ptr %i.a, align 4, !tbaa !38   ; 10 uses
  %i.n = add i32 %i.l, 1
  %i.o = icmp ult i32 %i.m, %i.n
  br i1 %i.o, label %.lr.ph40, label %._crit_edge41

.lr.ph40:                                         ; preds = %bb.b
  %i.p = load ptr, ptr %4, align 8, !tbaa !18
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.r = load i32, ptr %i.q, align 4, !tbaa !62
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !53
  %factor.op.mul = mul i64 %i.u, %i.s
  %i.v = load ptr, ptr %5, align 8, !tbaa !18     ; 3 uses
  %i.w = load i32, ptr %6, align 4, !tbaa !38     ; 4 uses
  %i.x = icmp sgt i32 %i.w, 0
  %i.y = load ptr, ptr %7, align 8, !tbaa !285    ; 7 uses
  %i.z = ptrtoaddr ptr %i.y to i64
  %i.aa = load ptr, ptr %8, align 8, !tbaa !285   ; 7 uses
  %i.ab = ptrtoaddr ptr %i.aa to i64
  br i1 %i.x, label %.lr.ph.us.preheader, label %iter.check

iter.check:                                       ; preds = %.lr.ph40
  %i.ac = add i32 %i.l, 1
end_hunk_1
