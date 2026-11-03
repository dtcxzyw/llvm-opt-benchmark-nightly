Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/lstm_x86_avx512?download=true
inline.NumInlined: 29
inline.NumDeleted: 9
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN4ncnnL4lstmERKNS_3MatERS0_iS2_S2_S2_S2_S3_S3_RKNS_6OptionE.omp_outlined.1:bb.a
  %.2125.lcssa = phi <4 x float> [ %.1124.lcssa, %._crit_edge ], [ %i.fl, %.preheader.loopexit ] ; 3 uses
  %.1122.lcssa = phi <4 x float> [ %.0121.lcssa, %._crit_edge ], [ %i.fm, %.preheader.loopexit ]
  %.1120.lcssa = phi <4 x float> [ %.0119.lcssa, %._crit_edge ], [ %i.fn, %.preheader.loopexit ]
  %.1118.lcssa = phi <4 x float> [ %.0117.lcssa, %._crit_edge ], [ %i.fo, %.preheader.loopexit ]
  %.078.lcssa = phi ptr [ %i.at, %._crit_edge ], [ %i.fq, %.preheader.loopexit ] ; 2 uses
  %.2.lcssa = phi i32 [ 0, %._crit_edge ], [ %i.ed, %.preheader.loopexit ] ; 4 uses
  %.073.lcssa = phi ptr [ %i.ea, %._crit_edge ], [ %i.fp, %.preheader.loopexit ] ; 2 uses
  %i.ee = icmp slt i32 %.2.lcssa, %i.eb
  br i1 %i.ee, label %.lr.ph170.preheader, label %._crit_edge171

.lr.ph170.preheader:                              ; preds = %.preheader
  %xtraiter240 = and i32 %i.eb, 3                 ; 2 uses
  %lcmp.mod241.not = icmp eq i32 %xtraiter240, 0
  br i1 %lcmp.mod241.not, label %.lr.ph170.prol.loopexit, label %.lr.ph170.prol

.lr.ph170.prol:                                   ; preds = %.lr.ph170.preheader, %.lr.ph170.prol
  %.1169.prol = phi ptr [ %i.ek, %.lr.ph170.prol ], [ %.073.lcssa, %.lr.ph170.preheader ] ; 2 uses
  %.3168.prol = phi i32 [ %i.em, %.lr.ph170.prol ], [ %.2.lcssa, %.lr.ph170.preheader ]
  %.179167.prol = phi ptr [ %i.el, %.lr.ph170.prol ], [ %.078.lcssa, %.lr.ph170.preheader ] ; 2 uses
  %.3126166.prol = phi <4 x float> [ %i.ej, %.lr.ph170.prol ], [ %.2125.lcssa, %.lr.ph170.preheader ]
  %prol.iter242 = phi i32 [ %prol.iter242.next, %.lr.ph170.prol ], [ 0, %.lr.ph170.preheader ]
  %i.ef = load float, ptr %.1169.prol, align 1, !tbaa !76
  %i.eg = insertelement <4 x float> poison, float %i.ef, i64 0
  %i.eh = shufflevector <4 x float> %i.eg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ei = load <4 x float>, ptr %.179167.prol, align 1, !tbaa !76
  %i.ej = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ei, <4 x float> nofpclass(nan inf) %i.eh, <4 x float> nofpclass(nan inf) %.3126166.prol) ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.1169.prol, i64 4 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.179167.prol, i64 16 ; 2 uses
  %i.em = add nuw nsw i32 %.3168.prol, 1          ; 2 uses
  %prol.iter242.next = add i32 %prol.iter242, 1   ; 2 uses
  %prol.iter242.cmp.not = icmp eq i32 %prol.iter242.next, %xtraiter240
  br i1 %prol.iter242.cmp.not, label %.lr.ph170.prol.loopexit, label %.lr.ph170.prol, !llvm.loop !312

.lr.ph170.prol.loopexit:                          ; preds = %.lr.ph170.prol, %.lr.ph170.preheader
  %.lcssa239.unr = phi <4 x float> [ poison, %.lr.ph170.preheader ], [ %i.ej, %.lr.ph170.prol ]
  %.1169.unr = phi ptr [ %.073.lcssa, %.lr.ph170.preheader ], [ %i.ek, %.lr.ph170.prol ]
  %.3168.unr = phi i32 [ %.2.lcssa, %.lr.ph170.preheader ], [ %i.em, %.lr.ph170.prol ]
  %.179167.unr = phi ptr [ %.078.lcssa, %.lr.ph170.preheader ], [ %i.el, %.lr.ph170.prol ]
  %.3126166.unr = phi <4 x float> [ %.2125.lcssa, %.lr.ph170.preheader ], [ %i.ej, %.lr.ph170.prol ]
  %i.en = sub i32 %.2.lcssa, %i.eb
  %i.eo = icmp ugt i32 %i.en, -4
  br i1 %i.eo, label %._crit_edge171, label %.lr.ph170

.lr.ph157:                                        ; preds = %._crit_edge, %.lr.ph157
  %.073155 = phi ptr [ %i.fp, %.lr.ph157 ], [ %i.ea, %._crit_edge ] ; 5 uses
  %.2154 = phi i32 [ %i.fr, %.lr.ph157 ], [ 0, %._crit_edge ]
  %.078153 = phi ptr [ %i.fq, %.lr.ph157 ], [ %i.at, %._crit_edge ] ; 5 uses
  %.1118152 = phi <4 x float> [ %i.fo, %.lr.ph157 ], [ %.0117.lcssa, %._crit_edge ]
  %.1120151 = phi <4 x float> [ %i.fn, %.lr.ph157 ], [ %.0119.lcssa, %._crit_edge ]
  %.1122150 = phi <4 x float> [ %i.fm, %.lr.ph157 ], [ %.0121.lcssa, %._crit_edge ]
  %.2125149 = phi <4 x float> [ %i.fl, %.lr.ph157 ], [ %.1124.lcssa, %._crit_edge ]
  %i.ep = load float, ptr %.073155, align 1, !tbaa !76
  %i.eq = insertelement <4 x float> poison, float %i.ep, i64 0
  %i.er = shufflevector <4 x float> %i.eq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.es = getelementptr inbounds nuw i8, ptr %.073155, i64 4
  %i.et = load float, ptr %i.es, align 1, !tbaa !76
  %i.eu = insertelement <4 x float> poison, float %i.et, i64 0
  %i.ev = shufflevector <4 x float> %i.eu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ew = getelementptr inbounds nuw i8, ptr %.073155, i64 8
  %i.ex = load float, ptr %i.ew, align 1, !tbaa !76
  %i.ey = insertelement <4 x float> poison, float %i.ex, i64 0
  %i.ez = shufflevector <4 x float> %i.ey, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fa = getelementptr inbounds nuw i8, ptr %.073155, i64 12
  %i.fb = load float, ptr %i.fa, align 1, !tbaa !76
  %i.fc = insertelement <4 x float> poison, float %i.fb, i64 0
  %i.fd = shufflevector <4 x float> %i.fc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fe = load <4 x float>, ptr %.078153, align 1, !tbaa !76
  %i.ff = getelementptr inbounds nuw i8, ptr %.078153, i64 16
  %i.fg = load <4 x float>, ptr %i.ff, align 1, !tbaa !76
  %i.fh = getelementptr inbounds nuw i8, ptr %.078153, i64 32
  %i.fi = load <4 x float>, ptr %i.fh, align 1, !tbaa !76
  %i.fj = getelementptr inbounds nuw i8, ptr %.078153, i64 48
  %i.fk = load <4 x float>, ptr %i.fj, align 1, !tbaa !76
  %i.fl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fe, <4 x float> nofpclass(nan inf) %i.er, <4 x float> nofpclass(nan inf) %.2125149) ; 2 uses
  %i.fm = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fg, <4 x float> nofpclass(nan inf) %i.ev, <4 x float> nofpclass(nan inf) %.1122150) ; 2 uses
  %i.fn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fi, <4 x float> nofpclass(nan inf) %i.ez, <4 x float> nofpclass(nan inf) %.1120151) ; 2 uses
  %i.fo = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fk, <4 x float> nofpclass(nan inf) %i.fd, <4 x float> nofpclass(nan inf) %.1118152) ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.073155, i64 16 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.078153, i64 64 ; 2 uses
  %i.fr = add nuw nsw i32 %.2154, 4               ; 2 uses
  %i.fs = or disjoint i32 %i.fr, 3
  %i.ft = icmp slt i32 %i.fs, %i.eb
  br i1 %i.ft, label %.lr.ph157, label %.preheader.loopexit, !llvm.loop !313

.lr.ph170:                                        ; preds = %.lr.ph170.prol.loopexit, %.lr.ph170
  %.1169 = phi ptr [ %i.gu, %.lr.ph170 ], [ %.1169.unr, %.lr.ph170.prol.loopexit ] ; 5 uses
  %.3168 = phi i32 [ %i.gw, %.lr.ph170 ], [ %.3168.unr, %.lr.ph170.prol.loopexit ]
  %.179167 = phi ptr [ %i.gv, %.lr.ph170 ], [ %.179167.unr, %.lr.ph170.prol.loopexit ] ; 5 uses
  %.3126166 = phi <4 x float> [ %i.gt, %.lr.ph170 ], [ %.3126166.unr, %.lr.ph170.prol.loopexit ]
  %i.fu = load float, ptr %.1169, align 1, !tbaa !76
  %i.fv = insertelement <4 x float> poison, float %i.fu, i64 0
  %i.fw = shufflevector <4 x float> %i.fv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fx = load <4 x float>, ptr %.179167, align 1, !tbaa !76
  %i.fy = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fx, <4 x float> nofpclass(nan inf) %i.fw, <4 x float> nofpclass(nan inf) %.3126166)
  %i.fz = getelementptr inbounds nuw i8, ptr %.1169, i64 4
  %i.ga = getelementptr inbounds nuw i8, ptr %.179167, i64 16
  %i.gb = load float, ptr %i.fz, align 1, !tbaa !76
  %i.gc = insertelement <4 x float> poison, float %i.gb, i64 0
  %i.gd = shufflevector <4 x float> %i.gc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ge = load <4 x float>, ptr %i.ga, align 1, !tbaa !76
  %i.gf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ge, <4 x float> nofpclass(nan inf) %i.gd, <4 x float> nofpclass(nan inf) %i.fy)
  %i.gg = getelementptr inbounds nuw i8, ptr %.1169, i64 8
  %i.gh = getelementptr inbounds nuw i8, ptr %.179167, i64 32
  %i.gi = load float, ptr %i.gg, align 1, !tbaa !76
  %i.gj = insertelement <4 x float> poison, float %i.gi, i64 0
  %i.gk = shufflevector <4 x float> %i.gj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gl = load <4 x float>, ptr %i.gh, align 1, !tbaa !76
  %i.gm = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gl, <4 x float> nofpclass(nan inf) %i.gk, <4 x float> nofpclass(nan inf) %i.gf)
  %i.gn = getelementptr inbounds nuw i8, ptr %.1169, i64 12
  %i.go = getelementptr inbounds nuw i8, ptr %.179167, i64 48
  %i.gp = load float, ptr %i.gn, align 1, !tbaa !76
  %i.gq = insertelement <4 x float> poison, float %i.gp, i64 0
  %i.gr = shufflevector <4 x float> %i.gq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gs = load <4 x float>, ptr %i.go, align 1, !tbaa !76
  %i.gt = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gs, <4 x float> nofpclass(nan inf) %i.gr, <4 x float> nofpclass(nan inf) %i.gm) ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.1169, i64 16
  %i.gv = getelementptr inbounds nuw i8, ptr %.179167, i64 64
  %i.gw = add nuw nsw i32 %.3168, 4               ; 2 uses
  %exitcond192.not.3 = icmp eq i32 %i.gw, %i.eb
  br i1 %exitcond192.not.3, label %._crit_edge171, label %.lr.ph170, !llvm.loop !314

._crit_edge171:                                   ; preds = %.lr.ph170.prol.loopexit, %.lr.ph170, %.preheader
  %.3126.lcssa = phi <4 x float> [ %.2125.lcssa, %.preheader ], [ %.lcssa239.unr, %.lr.ph170.prol.loopexit ], [ %i.gt, %.lr.ph170 ]
  %i.gx = load ptr, ptr %12, align 8, !tbaa !26
  %i.gy = load i32, ptr %i.v, align 4, !tbaa !65
  %i.gz = sext i32 %i.gy to i64
  %i.ha = sext i32 %i.x to i64
  %i.hb = mul nsw i64 %i.gz, %i.ha
  %i.hc = load i64, ptr %i.w, align 8, !tbaa !59
  %i.hd = mul i64 %i.hb, %i.hc
  %i.he = getelementptr inbounds nuw i8, ptr %i.gx, i64 %i.hd
  %i.hf = fadd fast <4 x float> %.1120.lcssa, %.1122.lcssa
  %i.hg = fadd fast <4 x float> %i.hf, %.1118.lcssa
  %i.hh = fadd fast <4 x float> %i.hg, %.3126.lcssa
  store <4 x float> %i.hh, ptr %i.he, align 1, !tbaa !76
  %i.hi = add nuw i32 %.0173, 1
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
  %i.e = load i32, ptr %2, align 4, !tbaa !45     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.g, ptr %i.b, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !45
  %i.h = load i32, ptr %0, align 4, !tbaa !45     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !45
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !45
  %i.k = load i32, ptr %i.a, align 4, !tbaa !45   ; 2 uses
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
  %i.q = load ptr, ptr %3, align 8, !tbaa !26
  %i.r = load i32, ptr %i.l, align 4, !tbaa !65
  %i.s = sext i32 %i.r to i64
  %i.t = mul nsw i64 %i.p, %i.s
  %i.u = load i64, ptr %i.m, align 8, !tbaa !59
  %i.v = mul i64 %i.t, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.v ; 2 uses
  %10 = load <8 x float>, ptr %i.w, align 1, !tbaa !76 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %11 = load <8 x float>, ptr %i.x, align 1, !tbaa !76 ; 2 uses
  %i.y = shufflevector <8 x float> %10, <8 x float> poison, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.z = shufflevector <8 x float> %11, <8 x float> poison, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.aa = shufflevector <8 x float> %10, <8 x float> poison, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ab = shufflevector <8 x float> %11, <8 x float> poison, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ac = shufflevector <4 x float> %i.y, <4 x float> %i.z, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ad = shufflevector <4 x float> %i.z, <4 x float> %i.y, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.ae = shufflevector <4 x float> %i.aa, <4 x float> %i.ab, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.af = shufflevector <4 x float> %i.ab, <4 x float> %i.aa, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.ag = fneg fast <4 x float> %i.ac
  %i.ah = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ag, <4 x float> splat (float f0x42B0C0A5))
  %i.ai = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ah, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.aj = fmul fast <4 x float> %i.ai, splat (float f0x3FB8AA3B)
  %i.ak = fadd fast <4 x float> %i.aj, splat (float 5.000000e-01) ; 2 uses
  %i.al = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ak)
  %i.am = sitofp fast <4 x i32> %i.al to <4 x float> ; 2 uses
  %i.an = fcmp fast olt <4 x float> %i.ak, %i.am
  %i.ao = select <4 x i1> %i.an, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ap = fsub fast <4 x float> %i.am, %i.ao      ; 2 uses
  %i.aq = fneg fast <4 x float> %i.ap             ; 2 uses
  %i.ar = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.aq, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.ai)
  %i.as = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.aq, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.ar) ; 8 uses
  %i.at = fmul fast <4 x float> %i.as, %i.as
  %i.au = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.as, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.av = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.au, <4 x float> nofpclass(nan inf) %i.as, <4 x float> splat (float f0x3C088908))
  %i.aw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.av, <4 x float> nofpclass(nan inf) %i.as, <4 x float> splat (float f0x3D2AA9C1))
  %i.ax = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.aw, <4 x float> nofpclass(nan inf) %i.as, <4 x float> splat (float f0x3E2AAAAA))
  %i.ay = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ax, <4 x float> nofpclass(nan inf) %i.as, <4 x float> splat (float 5.000000e-01))
  %i.az = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ay, <4 x float> nofpclass(nan inf) %i.at, <4 x float> nofpclass(nan inf) %i.as)
  %i.ba = fadd fast <4 x float> %i.az, splat (float 1.000000e+00)
  %i.bb = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ap)
  %i.bc = shl <4 x i32> %i.bb, splat (i32 23)
  %i.bd = add <4 x i32> %i.bc, splat (i32 1065353216)
  %i.be = bitcast <4 x i32> %i.bd to <4 x float>
  %i.bf = fmul fast <4 x float> %i.ba, %i.be
  %i.bg = fadd fast <4 x float> %i.bf, splat (float 1.000000e+00)
  %i.bh = fneg fast <4 x float> %i.ad
  %i.bi = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.bh, <4 x float> splat (float f0x42B0C0A5))
  %i.bj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.bi, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.bk = fmul fast <4 x float> %i.bj, splat (float f0x3FB8AA3B)
  %i.bl = fadd fast <4 x float> %i.bk, splat (float 5.000000e-01) ; 2 uses
  %i.bm = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.bl)
  %i.bn = sitofp fast <4 x i32> %i.bm to <4 x float> ; 2 uses
  %i.bo = fcmp fast olt <4 x float> %i.bl, %i.bn
  %i.bp = select <4 x i1> %i.bo, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.bq = fsub fast <4 x float> %i.bn, %i.bp      ; 2 uses
  %i.br = fneg fast <4 x float> %i.bq             ; 2 uses
  %i.bs = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.br, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.bj)
  %i.bt = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.br, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.bs) ; 8 uses
  %i.bu = fmul fast <4 x float> %i.bt, %i.bt
  %i.bv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bt, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.bw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bv, <4 x float> nofpclass(nan inf) %i.bt, <4 x float> splat (float f0x3C088908))
  %i.bx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bw, <4 x float> nofpclass(nan inf) %i.bt, <4 x float> splat (float f0x3D2AA9C1))
  %i.by = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bx, <4 x float> nofpclass(nan inf) %i.bt, <4 x float> splat (float f0x3E2AAAAA))
  %i.bz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.by, <4 x float> nofpclass(nan inf) %i.bt, <4 x float> splat (float 5.000000e-01))
  %i.ca = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bz, <4 x float> nofpclass(nan inf) %i.bu, <4 x float> nofpclass(nan inf) %i.bt)
  %i.cb = fadd fast <4 x float> %i.ca, splat (float 1.000000e+00)
  %i.cc = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.bq)
  %i.cd = shl <4 x i32> %i.cc, splat (i32 23)
  %i.ce = add <4 x i32> %i.cd, splat (i32 1065353216)
  %i.cf = bitcast <4 x i32> %i.ce to <4 x float>
  %i.cg = fmul fast <4 x float> %i.cb, %i.cf
  %i.ch = fadd fast <4 x float> %i.cg, splat (float 1.000000e+00)
  %i.ci = fneg fast <4 x float> %i.ae
  %i.cj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ci, <4 x float> splat (float f0x42B0C0A5))
  %i.ck = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.cj, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.cl = fmul fast <4 x float> %i.ck, splat (float f0x3FB8AA3B)
  %i.cm = fadd fast <4 x float> %i.cl, splat (float 5.000000e-01) ; 2 uses
  %i.cn = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.cm)
  %i.co = sitofp fast <4 x i32> %i.cn to <4 x float> ; 2 uses
  %i.cp = fcmp fast olt <4 x float> %i.cm, %i.co
  %i.cq = select <4 x i1> %i.cp, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.cr = fsub fast <4 x float> %i.co, %i.cq      ; 2 uses
  %i.cs = fneg fast <4 x float> %i.cr             ; 2 uses
  %i.ct = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.cs, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.ck)
  %i.cu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.cs, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.ct) ; 8 uses
  %i.cv = fmul fast <4 x float> %i.cu, %i.cu
  %i.cw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cu, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.cx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cw, <4 x float> nofpclass(nan inf) %i.cu, <4 x float> splat (float f0x3C088908))
  %i.cy = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cx, <4 x float> nofpclass(nan inf) %i.cu, <4 x float> splat (float f0x3D2AA9C1))
  %i.cz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cy, <4 x float> nofpclass(nan inf) %i.cu, <4 x float> splat (float f0x3E2AAAAA))
  %i.da = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cz, <4 x float> nofpclass(nan inf) %i.cu, <4 x float> splat (float 5.000000e-01))
  %i.db = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.da, <4 x float> nofpclass(nan inf) %i.cv, <4 x float> nofpclass(nan inf) %i.cu)
  %i.dc = fadd fast <4 x float> %i.db, splat (float 1.000000e+00)
  %i.dd = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.cr)
  %i.de = shl <4 x i32> %i.dd, splat (i32 23)
  %i.df = add <4 x i32> %i.de, splat (i32 1065353216)
  %i.dg = bitcast <4 x i32> %i.df to <4 x float>
  %i.dh = fmul fast <4 x float> %i.dc, %i.dg
  %i.di = fadd fast <4 x float> %i.dh, splat (float 1.000000e+00)
  %i.dj = fmul fast <4 x float> %i.af, splat (float -2.000000e+00)
  %i.dk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.dj, <4 x float> splat (float f0x42B0C0A5))
  %i.dl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dk, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.dm = fmul fast <4 x float> %i.dl, splat (float f0x3FB8AA3B)
  %i.dn = fadd fast <4 x float> %i.dm, splat (float 5.000000e-01) ; 2 uses
  %i.do = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dn)
  %i.dp = sitofp fast <4 x i32> %i.do to <4 x float> ; 2 uses
  %i.dq = fcmp fast olt <4 x float> %i.dn, %i.dp
  %i.dr = select <4 x i1> %i.dq, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ds = fsub fast <4 x float> %i.dp, %i.dr      ; 2 uses
  %i.dt = fneg fast <4 x float> %i.ds             ; 2 uses
  %i.du = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.dt, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.dl)
  %i.dv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.dt, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.du) ; 8 uses
  %i.dw = fmul fast <4 x float> %i.dv, %i.dv
  %i.dx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dv, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.dy = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dx, <4 x float> nofpclass(nan inf) %i.dv, <4 x float> splat (float f0x3C088908))
  %i.dz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dy, <4 x float> nofpclass(nan inf) %i.dv, <4 x float> splat (float f0x3D2AA9C1))
  %i.ea = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dz, <4 x float> nofpclass(nan inf) %i.dv, <4 x float> splat (float f0x3E2AAAAA))
  %i.eb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ea, <4 x float> nofpclass(nan inf) %i.dv, <4 x float> splat (float 5.000000e-01))
  %i.ec = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.eb, <4 x float> nofpclass(nan inf) %i.dw, <4 x float> nofpclass(nan inf) %i.dv)
  %i.ed = fadd fast <4 x float> %i.ec, splat (float 1.000000e+00)
  %i.ee = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ds)
  %i.ef = shl <4 x i32> %i.ee, splat (i32 23)
  %i.eg = add <4 x i32> %i.ef, splat (i32 1065353216)
  %i.eh = bitcast <4 x i32> %i.eg to <4 x float>
  %i.ei = fmul fast <4 x float> %i.ed, %i.eh
  %i.ej = fadd fast <4 x float> %i.ei, splat (float 1.000000e+00)
  %i.ek = fdiv fast <4 x float> splat (float 2.000000e+00), %i.ej
  %i.el = fadd fast <4 x float> %i.ek, splat (float -1.000000e+00)
  %i.em = load ptr, ptr %4, align 8, !tbaa !75
  %i.en = getelementptr inbounds [4 x i8], ptr %i.em, i64 %i.p ; 2 uses
  %i.eo = load <4 x float>, ptr %i.en, align 1, !tbaa !76
  %i.ep = fdiv fast <4 x float> %i.eo, %i.ch
  %i.eq = fdiv fast <4 x float> %i.el, %i.bg
  %i.er = fadd fast <4 x float> %i.eq, %i.ep      ; 2 uses
  %i.es = fmul fast <4 x float> %i.er, splat (float -2.000000e+00)
  %i.et = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.es, <4 x float> splat (float f0x42B0C0A5))
  %i.eu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.et, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ev = fmul fast <4 x float> %i.eu, splat (float f0x3FB8AA3B)
  %i.ew = fadd fast <4 x float> %i.ev, splat (float 5.000000e-01) ; 2 uses
  %i.ex = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ew)
  %i.ey = sitofp fast <4 x i32> %i.ex to <4 x float> ; 2 uses
  %i.ez = fcmp fast olt <4 x float> %i.ew, %i.ey
  %i.fa = select <4 x i1> %i.ez, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.fb = fsub fast <4 x float> %i.ey, %i.fa      ; 2 uses
  %i.fc = fneg fast <4 x float> %i.fb             ; 2 uses
  %i.fd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.fc, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.eu)
  %i.fe = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.fc, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.fd) ; 8 uses
  %i.ff = fmul fast <4 x float> %i.fe, %i.fe
  %i.fg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fe, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.fh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fg, <4 x float> nofpclass(nan inf) %i.fe, <4 x float> splat (float f0x3C088908))
  %i.fi = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fh, <4 x float> nofpclass(nan inf) %i.fe, <4 x float> splat (float f0x3D2AA9C1))
  %i.fj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fi, <4 x float> nofpclass(nan inf) %i.fe, <4 x float> splat (float f0x3E2AAAAA))
  %i.fk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fj, <4 x float> nofpclass(nan inf) %i.fe, <4 x float> splat (float 5.000000e-01))
  %i.fl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fk, <4 x float> nofpclass(nan inf) %i.ff, <4 x float> nofpclass(nan inf) %i.fe)
  %i.fm = fadd fast <4 x float> %i.fl, splat (float 1.000000e+00)
  %i.fn = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fb)
  %i.fo = shl <4 x i32> %i.fn, splat (i32 23)
  %i.fp = add <4 x i32> %i.fo, splat (i32 1065353216)
  %i.fq = bitcast <4 x i32> %i.fp to <4 x float>
  %i.fr = fmul fast <4 x float> %i.fm, %i.fq
  %i.fs = fadd fast <4 x float> %i.fr, splat (float 1.000000e+00)
  %i.ft = fdiv fast <4 x float> splat (float 2.000000e+00), %i.fs
  %i.fu = fadd fast <4 x float> %i.ft, splat (float -1.000000e+00)
  %i.fv = fdiv fast <4 x float> %i.fu, %i.di      ; 2 uses
  store <4 x float> %i.er, ptr %i.en, align 1, !tbaa !76
  %i.fw = load i32, ptr %5, align 4, !tbaa !45
  %i.fx = load i32, ptr %6, align 4, !tbaa !45
  %i.fy = icmp eq i32 %i.fw, %i.fx
  br i1 %i.fy, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.fz = load ptr, ptr %7, align 8, !tbaa !75
  %i.ga = getelementptr inbounds [4 x i8], ptr %i.fz, i64 %i.p
  store <4 x float> %i.fv, ptr %i.ga, align 1, !tbaa !76
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sink = phi ptr [ %8, %bb.d ], [ %9, %bb.c ]
  %i.gb = load ptr, ptr %.sink, align 8, !tbaa !75
  %i.gc = getelementptr inbounds [4 x i8], ptr %i.gb, i64 %i.p
  store <4 x float> %i.fv, ptr %i.gc, align 1, !tbaa !76
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
  %i.e = load i32, ptr %3, align 4, !tbaa !45     ; 3 uses
  %i.f = load i32, ptr %2, align 4, !tbaa !45     ; 2 uses
  %i.g = icmp slt i32 %i.e, %i.f
  br i1 %i.g, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.h = xor i32 %i.e, -1
  %i.i = add i32 %i.f, %i.h                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
end_hunk_0
begin_hunk_1_@_ZN4ncnnL9lstm_int8ERKNS_3MatES2_RS0_iS2_S2_S2_S2_S3_S3_RKNS_6OptionE.omp_outlined.6:bb.a

._crit_edge314.loopexit:                          ; preds = %.lr.ph313
  %i.ju = trunc nuw i64 %indvars.iv.next378 to i32
  br label %._crit_edge314

._crit_edge314:                                   ; preds = %._crit_edge314.loopexit, %._crit_edge302
  %.lcssa267 = phi <4 x i32> [ zeroinitializer, %._crit_edge302 ], [ %i.jn, %._crit_edge314.loopexit ]
  %.lcssa266 = phi <4 x i32> [ zeroinitializer, %._crit_edge302 ], [ %i.jp, %._crit_edge314.loopexit ]
  %.5129.lcssa = phi ptr [ %.4128.lcssa, %._crit_edge302 ], [ %i.jq, %._crit_edge314.loopexit ] ; 2 uses
  %.5.lcssa = phi i32 [ %.4.lcssa, %._crit_edge302 ], [ %i.ju, %._crit_edge314.loopexit ] ; 3 uses
  %i.jv = call <4 x i32> @llvm.x86.ssse3.phadd.d.128(<4 x i32> %.lcssa267, <4 x i32> %.lcssa266)
  %i.jw = add <4 x i32> %i.iv, %i.jv              ; 2 uses
  %i.jx = or disjoint i32 %.5.lcssa, 1
  %i.jy = icmp slt i32 %i.jx, %i.fz
  br i1 %i.jy, label %.lr.ph323.preheader, label %.preheader

.lr.ph323.preheader:                              ; preds = %._crit_edge314
  %i.jz = zext i32 %.5.lcssa to i64
  br label %.lr.ph323

.preheader.loopexit:                              ; preds = %.lr.ph323
  %i.ka = trunc nuw i64 %indvars.iv.next381 to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %._crit_edge314
  %.0236.in.lcssa = phi <4 x i32> [ %i.jw, %._crit_edge314 ], [ %i.lb, %.preheader.loopexit ] ; 3 uses
  %.6130.lcssa = phi ptr [ %.5129.lcssa, %._crit_edge314 ], [ %i.lc, %.preheader.loopexit ] ; 3 uses
  %.6.lcssa = phi i32 [ %.5.lcssa, %._crit_edge314 ], [ %i.ka, %.preheader.loopexit ] ; 4 uses
  %i.kb = icmp slt i32 %.6.lcssa, %i.fz
  br i1 %i.kb, label %.lr.ph329.preheader, label %._crit_edge330

.lr.ph329.preheader:                              ; preds = %.preheader
  %i.kc = zext i32 %.6.lcssa to i64               ; 3 uses
  %i.kd = sub i32 %i.fz, %.6.lcssa
  %.neg465 = add i32 %.6.lcssa, 1
  %xtraiter462 = and i32 %i.kd, 1
  %lcmp.mod463.not = icmp eq i32 %xtraiter462, 0
  br i1 %lcmp.mod463.not, label %.lr.ph329.prol.loopexit, label %.lr.ph329.prol

.lr.ph329.prol:                                   ; preds = %.lr.ph329.preheader
  %i.ke = load <8 x i8>, ptr %.6130.lcssa, align 1, !tbaa !76
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.kc
  %i.kg = load i8, ptr %i.kf, align 1, !tbaa !76
  %i.kh = sext i8 %i.kg to i16
  %i.ki = insertelement <8 x i16> poison, i16 %i.kh, i64 0
  %i.kj = shufflevector <8 x i16> %i.ki, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.kk = sext <8 x i8> %i.ke to <8 x i16>        ; 2 uses
  %i.kl = mul <8 x i16> %i.kj, %i.kk
  %i.km = call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.kk, <8 x i16> %i.kj)
  %i.kn = shufflevector <8 x i16> %i.kl, <8 x i16> %i.km, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ko = bitcast <8 x i16> %i.kn to <4 x i32>
  %i.kp = add <4 x i32> %.0236.in.lcssa, %i.ko    ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %.6130.lcssa, i64 4
  %indvars.iv.next384.prol = add nuw nsw i64 %i.kc, 1
  br label %.lr.ph329.prol.loopexit

.lr.ph329.prol.loopexit:                          ; preds = %.lr.ph329.prol, %.lr.ph329.preheader
  %indvars.iv383.unr = phi i64 [ %i.kc, %.lr.ph329.preheader ], [ %indvars.iv.next384.prol, %.lr.ph329.prol ]
  %.7131327.unr = phi ptr [ %.6130.lcssa, %.lr.ph329.preheader ], [ %i.kq, %.lr.ph329.prol ]
  %.unr464 = phi <4 x i32> [ %.0236.in.lcssa, %.lr.ph329.preheader ], [ %i.kp, %.lr.ph329.prol ]
  %.lcssa461.unr = phi <4 x i32> [ poison, %.lr.ph329.preheader ], [ %i.kp, %.lr.ph329.prol ]
  %i.kr = icmp eq i32 %i.fz, %.neg465
  br i1 %i.kr, label %._crit_edge330, label %.lr.ph329

.lr.ph323:                                        ; preds = %.lr.ph323.preheader, %.lr.ph323
  %indvars.iv380 = phi i64 [ %i.jz, %.lr.ph323.preheader ], [ %indvars.iv.next381, %.lr.ph323 ] ; 2 uses
  %.6130320 = phi ptr [ %.5129.lcssa, %.lr.ph323.preheader ], [ %i.lc, %.lr.ph323 ] ; 2 uses
  %.0236.in319 = phi <4 x i32> [ %i.jw, %.lr.ph323.preheader ], [ %i.lb, %.lr.ph323 ]
  %i.ks = load <8 x i8>, ptr %.6130320, align 1, !tbaa !76
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ah, i64 %indvars.iv380
  %i.ku = load i16, ptr %i.kt, align 2, !tbaa !466
  %i.kv = insertelement <8 x i16> poison, i16 %i.ku, i64 0
  %i.kw = sext <8 x i8> %i.ks to <8 x i16>
  %i.kx = bitcast <8 x i16> %i.kv to <16 x i8>
  %i.ky = shufflevector <16 x i8> %i.kx, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.kz = sext <8 x i8> %i.ky to <8 x i16>
  %i.la = call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.kw, <8 x i16> %i.kz)
  %i.lb = add <4 x i32> %i.la, %.0236.in319       ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %.6130320, i64 8 ; 2 uses
  %indvars.iv.next381 = add nuw nsw i64 %indvars.iv380, 2 ; 3 uses
  %i.ld = trunc i64 %indvars.iv.next381 to i32
  %i.le = or i32 %i.ld, 1
  %i.lf = icmp slt i32 %i.le, %i.fz
  br i1 %i.lf, label %.lr.ph323, label %.preheader.loopexit, !llvm.loop !463

.lr.ph329:                                        ; preds = %.lr.ph329.prol.loopexit, %.lr.ph329
  %indvars.iv383 = phi i64 [ %indvars.iv.next384.1, %.lr.ph329 ], [ %indvars.iv383.unr, %.lr.ph329.prol.loopexit ] ; 3 uses
  %.7131327 = phi ptr [ %i.mh, %.lr.ph329 ], [ %.7131327.unr, %.lr.ph329.prol.loopexit ] ; 3 uses
  %i.lg = phi <4 x i32> [ %i.mg, %.lr.ph329 ], [ %.unr464, %.lr.ph329.prol.loopexit ]
  %i.lh = load <8 x i8>, ptr %.7131327, align 1, !tbaa !76
  %i.li = getelementptr inbounds nuw i8, ptr %i.ah, i64 %indvars.iv383
  %i.lj = load i8, ptr %i.li, align 1, !tbaa !76
  %i.lk = sext i8 %i.lj to i16
  %i.ll = insertelement <8 x i16> poison, i16 %i.lk, i64 0
  %i.lm = shufflevector <8 x i16> %i.ll, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.ln = sext <8 x i8> %i.lh to <8 x i16>        ; 2 uses
  %i.lo = mul <8 x i16> %i.lm, %i.ln
  %i.lp = call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.ln, <8 x i16> %i.lm)
  %i.lq = shufflevector <8 x i16> %i.lo, <8 x i16> %i.lp, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.lr = bitcast <8 x i16> %i.lq to <4 x i32>
  %i.ls = add <4 x i32> %i.lg, %i.lr
  %i.lt = getelementptr inbounds nuw i8, ptr %.7131327, i64 4
  %i.lu = load <8 x i8>, ptr %i.lt, align 1, !tbaa !76
  %i.lv = getelementptr inbounds nuw i8, ptr %i.ah, i64 %indvars.iv383
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 1
  %i.lx = load i8, ptr %i.lw, align 1, !tbaa !76
  %i.ly = sext i8 %i.lx to i16
  %i.lz = insertelement <8 x i16> poison, i16 %i.ly, i64 0
  %i.ma = shufflevector <8 x i16> %i.lz, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.mb = sext <8 x i8> %i.lu to <8 x i16>        ; 2 uses
  %i.mc = mul <8 x i16> %i.ma, %i.mb
  %i.md = call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.mb, <8 x i16> %i.ma)
  %i.me = shufflevector <8 x i16> %i.mc, <8 x i16> %i.md, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.mf = bitcast <8 x i16> %i.me to <4 x i32>
  %i.mg = add <4 x i32> %i.ls, %i.mf              ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %.7131327, i64 8
  %indvars.iv.next384.1 = add nuw nsw i64 %indvars.iv383, 2 ; 2 uses
  %i.mi = trunc nuw i64 %indvars.iv.next384.1 to i32
  %i.mj = icmp sgt i32 %i.fz, %i.mi
  br i1 %i.mj, label %.lr.ph329, label %._crit_edge330, !llvm.loop !464

._crit_edge330:                                   ; preds = %.lr.ph329.prol.loopexit, %.lr.ph329, %.preheader
  %.lcssa268 = phi <4 x i32> [ %.0236.in.lcssa, %.preheader ], [ %.lcssa461.unr, %.lr.ph329.prol.loopexit ], [ %i.mg, %.lr.ph329 ]
  %i.mk = insertelement <4 x float> poison, float %i.ak, i64 0
  %i.ml = shufflevector <4 x float> %i.mk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mm = insertelement <4 x float> poison, float %i.al, i64 0
  %i.mn = shufflevector <4 x float> %i.mm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mo = load <4 x float>, ptr %i.ap, align 1, !tbaa !76
  %i.mp = load <4 x float>, ptr %i.bn, align 1, !tbaa !76
  %i.mq = sitofp fast <4 x i32> %.lcssa260 to <4 x float>
  %i.mr = fmul fast <4 x float> %i.mp, %i.ml
  %i.ms = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mq, <4 x float> nofpclass(nan inf) %i.mr, <4 x float> nofpclass(nan inf) %i.mo)
  %i.mt = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.mu = load <4 x float>, ptr %i.mt, align 1, !tbaa !76
  %i.mv = sitofp fast <4 x i32> %.lcssa268 to <4 x float>
  %i.mw = fmul fast <4 x float> %i.mu, %i.mn
  %i.mx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mv, <4 x float> nofpclass(nan inf) %i.mw, <4 x float> nofpclass(nan inf) %i.ms)
  store <4 x float> %i.mx, ptr %i.bv, align 1, !tbaa !76
  %i.my = add nuw i32 %.0332, 1
  %exitcond.not = icmp eq i32 %.0332, %i.l
  br i1 %exitcond.not, label %._crit_edge335, label %bb.c

._crit_edge335:                                   ; preds = %._crit_edge330, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge335, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL9lstm_int8ERKNS_3MatES2_RS0_iS2_S2_S2_S2_S3_S3_RKNS_6OptionE.omp_outlined.7(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %9) #15 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !45     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.g, ptr %i.b, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !45
  %i.h = load i32, ptr %0, align 4, !tbaa !45     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !45
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !45
  %i.k = load i32, ptr %i.a, align 4, !tbaa !45   ; 2 uses
  %.not68 = icmp sgt i32 %i.k, %i.j
  br i1 %.not68, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  %i.o = add nsw i32 %i.j, 1
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ %i.n, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.p = shl nsw i64 %indvars.iv, 4               ; 4 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !26
  %i.r = load i32, ptr %i.l, align 4, !tbaa !65
  %i.s = sext i32 %i.r to i64
  %i.t = mul nsw i64 %i.p, %i.s
  %i.u = load i64, ptr %i.m, align 8, !tbaa !59
  %i.v = mul i64 %i.t, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.v ; 2 uses
  %10 = load <32 x float>, ptr %i.w, align 1, !tbaa !76 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 128
  %11 = load <32 x float>, ptr %i.x, align 1, !tbaa !76 ; 2 uses
  %i.y = shufflevector <32 x float> %10, <32 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %i.z = shufflevector <32 x float> %11, <32 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %i.aa = shufflevector <32 x float> %10, <32 x float> poison, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.ab = shufflevector <32 x float> %11, <32 x float> poison, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.ac = shufflevector <16 x float> %i.y, <16 x float> %i.z, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.ad = shufflevector <16 x float> %i.aa, <16 x float> %i.ab, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.ae = shufflevector <16 x float> %i.aa, <16 x float> %i.ab, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.af = fneg fast <16 x float> %i.ac
  %i.ag = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.af, <16 x float> splat (float f0x42B0C0A5), i32 4)
  %i.ah = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.ag, <16 x float> splat (float f0xC2B0C0A5), i32 4) ; 2 uses
  %i.ai = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ah, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.aj = call fast <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.ai, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.ak = fcmp fast ogt <16 x float> %i.aj, %i.ai
  %i.al = fadd fast <16 x float> %i.aj, splat (float -1.000000e+00)
  %i.am = select fast <16 x i1> %i.ak, <16 x float> %i.al, <16 x float> %i.aj ; 2 uses
  %i.an = fneg fast <16 x float> %i.am            ; 2 uses
  %i.ao = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.an, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.ah)
  %i.ap = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.an, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.ao) ; 8 uses
  %i.aq = fmul fast <16 x float> %i.ap, %i.ap
  %i.ar = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ap, <16 x float> splat (float f0x39506967), <16 x float> splat (float f0x3AB743CE))
  %i.as = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ar, <16 x float> nofpclass(nan inf) %i.ap, <16 x float> splat (float f0x3C088908))
  %i.at = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.as, <16 x float> nofpclass(nan inf) %i.ap, <16 x float> splat (float f0x3D2AA9C1))
  %i.au = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.at, <16 x float> nofpclass(nan inf) %i.ap, <16 x float> splat (float f0x3E2AAAAA))
  %i.av = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.au, <16 x float> nofpclass(nan inf) %i.ap, <16 x float> splat (float 5.000000e-01))
  %i.aw = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.av, <16 x float> nofpclass(nan inf) %i.aq, <16 x float> nofpclass(nan inf) %i.ap)
  %i.ax = fadd fast <16 x float> %i.aw, splat (float 1.000000e+00)
  %i.ay = call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.am, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.az = shl <16 x i32> %i.ay, splat (i32 23)
  %i.ba = add <16 x i32> %i.az, splat (i32 1065353216)
  %i.bb = bitcast <16 x i32> %i.ba to <16 x float>
  %i.bc = fmul fast <16 x float> %i.ax, %i.bb
  %i.bd = fadd fast <16 x float> %i.bc, splat (float 1.000000e+00)
  %i.be = shufflevector <16 x float> %i.y, <16 x float> %i.z, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.bf = fneg fast <16 x float> %i.be
  %i.bg = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.bf, <16 x float> splat (float f0x42B0C0A5), i32 4)
  %i.bh = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.bg, <16 x float> splat (float f0xC2B0C0A5), i32 4) ; 2 uses
  %i.bi = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bh, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.bj = call fast <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.bi, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.bk = fcmp fast ogt <16 x float> %i.bj, %i.bi
  %i.bl = fadd fast <16 x float> %i.bj, splat (float -1.000000e+00)
  %i.bm = select fast <16 x i1> %i.bk, <16 x float> %i.bl, <16 x float> %i.bj ; 2 uses
  %i.bn = fneg fast <16 x float> %i.bm            ; 2 uses
  %i.bo = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.bn, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.bh)
  %i.bp = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.bn, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.bo) ; 8 uses
  %i.bq = fmul fast <16 x float> %i.bp, %i.bp
  %i.br = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bp, <16 x float> splat (float f0x39506967), <16 x float> splat (float f0x3AB743CE))
  %i.bs = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.br, <16 x float> nofpclass(nan inf) %i.bp, <16 x float> splat (float f0x3C088908))
  %i.bt = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bs, <16 x float> nofpclass(nan inf) %i.bp, <16 x float> splat (float f0x3D2AA9C1))
  %i.bu = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bt, <16 x float> nofpclass(nan inf) %i.bp, <16 x float> splat (float f0x3E2AAAAA))
  %i.bv = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bu, <16 x float> nofpclass(nan inf) %i.bp, <16 x float> splat (float 5.000000e-01))
  %i.bw = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bv, <16 x float> nofpclass(nan inf) %i.bq, <16 x float> nofpclass(nan inf) %i.bp)
  %i.bx = fadd fast <16 x float> %i.bw, splat (float 1.000000e+00)
  %i.by = call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.bm, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.bz = shl <16 x i32> %i.by, splat (i32 23)
  %i.ca = add <16 x i32> %i.bz, splat (i32 1065353216)
  %i.cb = bitcast <16 x i32> %i.ca to <16 x float>
  %i.cc = fmul fast <16 x float> %i.bx, %i.cb
  %i.cd = fadd fast <16 x float> %i.cc, splat (float 1.000000e+00)
  %i.ce = fneg fast <16 x float> %i.ad
  %i.cf = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.ce, <16 x float> splat (float f0x42B0C0A5), i32 4)
  %i.cg = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.cf, <16 x float> splat (float f0xC2B0C0A5), i32 4) ; 2 uses
  %i.ch = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cg, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.ci = call fast <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.ch, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.cj = fcmp fast ogt <16 x float> %i.ci, %i.ch
  %i.ck = fadd fast <16 x float> %i.ci, splat (float -1.000000e+00)
  %i.cl = select fast <16 x i1> %i.cj, <16 x float> %i.ck, <16 x float> %i.ci ; 2 uses
  %i.cm = fneg fast <16 x float> %i.cl            ; 2 uses
  %i.cn = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.cm, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.cg)
  %i.co = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.cm, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.cn) ; 8 uses
  %i.cp = fmul fast <16 x float> %i.co, %i.co
  %i.cq = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.co, <16 x float> splat (float f0x39506967), <16 x float> splat (float f0x3AB743CE))
  %i.cr = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cq, <16 x float> nofpclass(nan inf) %i.co, <16 x float> splat (float f0x3C088908))
  %i.cs = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cr, <16 x float> nofpclass(nan inf) %i.co, <16 x float> splat (float f0x3D2AA9C1))
  %i.ct = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cs, <16 x float> nofpclass(nan inf) %i.co, <16 x float> splat (float f0x3E2AAAAA))
  %i.cu = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ct, <16 x float> nofpclass(nan inf) %i.co, <16 x float> splat (float 5.000000e-01))
  %i.cv = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cu, <16 x float> nofpclass(nan inf) %i.cp, <16 x float> nofpclass(nan inf) %i.co)
  %i.cw = fadd fast <16 x float> %i.cv, splat (float 1.000000e+00)
  %i.cx = call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.cl, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.cy = shl <16 x i32> %i.cx, splat (i32 23)
  %i.cz = add <16 x i32> %i.cy, splat (i32 1065353216)
  %i.da = bitcast <16 x i32> %i.cz to <16 x float>
  %i.db = fmul fast <16 x float> %i.cw, %i.da
  %i.dc = fadd fast <16 x float> %i.db, splat (float 1.000000e+00)
  %i.dd = fmul fast <16 x float> %i.ae, splat (float -2.000000e+00)
  %i.de = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.dd, <16 x float> splat (float f0x42B0C0A5), i32 4)
  %i.df = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.de, <16 x float> splat (float f0xC2B0C0A5), i32 4) ; 2 uses
  %i.dg = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.df, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.dh = call fast <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.dg, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.di = fcmp fast ogt <16 x float> %i.dh, %i.dg
  %i.dj = fadd fast <16 x float> %i.dh, splat (float -1.000000e+00)
  %i.dk = select fast <16 x i1> %i.di, <16 x float> %i.dj, <16 x float> %i.dh ; 2 uses
  %i.dl = fneg fast <16 x float> %i.dk            ; 2 uses
  %i.dm = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.dl, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.df)
  %i.dn = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.dl, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.dm) ; 8 uses
  %i.do = fmul fast <16 x float> %i.dn, %i.dn
  %i.dp = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dn, <16 x float> splat (float f0x39506967), <16 x float> splat (float f0x3AB743CE))
  %i.dq = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dp, <16 x float> nofpclass(nan inf) %i.dn, <16 x float> splat (float f0x3C088908))
  %i.dr = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dq, <16 x float> nofpclass(nan inf) %i.dn, <16 x float> splat (float f0x3D2AA9C1))
  %i.ds = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dr, <16 x float> nofpclass(nan inf) %i.dn, <16 x float> splat (float f0x3E2AAAAA))
  %i.dt = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ds, <16 x float> nofpclass(nan inf) %i.dn, <16 x float> splat (float 5.000000e-01))
  %i.du = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dt, <16 x float> nofpclass(nan inf) %i.do, <16 x float> nofpclass(nan inf) %i.dn)
  %i.dv = fadd fast <16 x float> %i.du, splat (float 1.000000e+00)
  %i.dw = call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.dk, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.dx = shl <16 x i32> %i.dw, splat (i32 23)
  %i.dy = add <16 x i32> %i.dx, splat (i32 1065353216)
  %i.dz = bitcast <16 x i32> %i.dy to <16 x float>
  %i.ea = fmul fast <16 x float> %i.dv, %i.dz
  %i.eb = fadd fast <16 x float> %i.ea, splat (float 1.000000e+00)
  %i.ec = fdiv fast <16 x float> splat (float 1.000000e+00), %i.eb
  %i.ed = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ec, <16 x float> splat (float 2.000000e+00), <16 x float> splat (float -1.000000e+00))
  %i.ee = load ptr, ptr %4, align 8, !tbaa !75
  %i.ef = getelementptr inbounds [4 x i8], ptr %i.ee, i64 %i.p ; 2 uses
  %i.eg = load <16 x float>, ptr %i.ef, align 1, !tbaa !76
  %i.eh = fdiv fast <16 x float> %i.eg, %i.cd
  %i.ei = fdiv fast <16 x float> %i.ed, %i.bd
  %i.ej = fadd fast <16 x float> %i.ei, %i.eh     ; 2 uses
  %i.ek = fmul fast <16 x float> %i.ej, splat (float -2.000000e+00)
  %i.el = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.ek, <16 x float> splat (float f0x42B0C0A5), i32 4)
  %i.em = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.el, <16 x float> splat (float f0xC2B0C0A5), i32 4) ; 2 uses
  %i.en = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.em, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.eo = call fast <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.en, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.ep = fcmp fast ogt <16 x float> %i.eo, %i.en
  %i.eq = fadd fast <16 x float> %i.eo, splat (float -1.000000e+00)
  %i.er = select fast <16 x i1> %i.ep, <16 x float> %i.eq, <16 x float> %i.eo ; 2 uses
  %i.es = fneg fast <16 x float> %i.er            ; 2 uses
  %i.et = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.es, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.em)
  %i.eu = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.es, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.et) ; 8 uses
  %i.ev = fmul fast <16 x float> %i.eu, %i.eu
  %i.ew = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.eu, <16 x float> splat (float f0x39506967), <16 x float> splat (float f0x3AB743CE))
  %i.ex = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ew, <16 x float> nofpclass(nan inf) %i.eu, <16 x float> splat (float f0x3C088908))
  %i.ey = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ex, <16 x float> nofpclass(nan inf) %i.eu, <16 x float> splat (float f0x3D2AA9C1))
  %i.ez = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ey, <16 x float> nofpclass(nan inf) %i.eu, <16 x float> splat (float f0x3E2AAAAA))
  %i.fa = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ez, <16 x float> nofpclass(nan inf) %i.eu, <16 x float> splat (float 5.000000e-01))
  %i.fb = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fa, <16 x float> nofpclass(nan inf) %i.ev, <16 x float> nofpclass(nan inf) %i.eu)
  %i.fc = fadd fast <16 x float> %i.fb, splat (float 1.000000e+00)
  %i.fd = call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.er, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.fe = shl <16 x i32> %i.fd, splat (i32 23)
  %i.ff = add <16 x i32> %i.fe, splat (i32 1065353216)
  %i.fg = bitcast <16 x i32> %i.ff to <16 x float>
  %i.fh = fmul fast <16 x float> %i.fc, %i.fg
  %i.fi = fadd fast <16 x float> %i.fh, splat (float 1.000000e+00)
  %i.fj = fdiv fast <16 x float> splat (float 1.000000e+00), %i.fi
  %i.fk = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fj, <16 x float> splat (float 2.000000e+00), <16 x float> splat (float -1.000000e+00))
  %i.fl = fdiv fast <16 x float> %i.fk, %i.dc     ; 2 uses
  store <16 x float> %i.ej, ptr %i.ef, align 1, !tbaa !76
  %i.fm = load i32, ptr %5, align 4, !tbaa !45
  %i.fn = load i32, ptr %6, align 4, !tbaa !45
  %i.fo = icmp eq i32 %i.fm, %i.fn
  br i1 %i.fo, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.fp = load ptr, ptr %7, align 8, !tbaa !75
  %i.fq = getelementptr inbounds [4 x i8], ptr %i.fp, i64 %i.p
  store <16 x float> %i.fl, ptr %i.fq, align 1, !tbaa !76
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sink = phi ptr [ %8, %bb.d ], [ %9, %bb.c ]
  %i.fr = load ptr, ptr %.sink, align 8, !tbaa !75
  %i.fs = getelementptr inbounds [4 x i8], ptr %i.fr, i64 %i.p
  store <16 x float> %i.fl, ptr %i.fs, align 1, !tbaa !76
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
define internal void @_ZN4ncnnL9lstm_int8ERKNS_3MatES2_RS0_iS2_S2_S2_S2_S3_S3_RKNS_6OptionE.omp_outlined.8(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %10) #10 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !45     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.g, ptr %i.b, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !45
  %i.h = load i32, ptr %0, align 4, !tbaa !45     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !45
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !45
end_hunk_1
