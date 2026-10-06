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
begin_hunk_1_@_ZN4ncnnL21lstm_dynamic_quantizeERKNS_3MatERS0_S3_RKNS_6OptionE:bb.a

iter.check112:                                    ; preds = %._crit_edge75.i
  %i.cw = xor i32 %.2.lcssa.i, -1
  %i.cx = add i32 %i.b, %i.cw                     ; 3 uses
  %i.cy = zext i32 %i.cx to i64
  %i.cz = add nuw nsw i64 %i.cy, 1                ; 5 uses
  %min.iters.check86 = icmp ult i32 %i.cx, 7
  br i1 %min.iters.check86, label %.lr.ph83.i.preheader, label %vector.main.loop.iter.check87

vector.main.loop.iter.check87:                    ; preds = %iter.check112
  %min.iters.check88 = icmp ult i32 %i.cx, 63
  br i1 %min.iters.check88, label %vec.epilog.ph116, label %vector.ph89

vector.ph89:                                      ; preds = %vector.main.loop.iter.check87
  %i.da = and i64 %i.cz, 56
  %n.vec90 = and i64 %i.cz, 8589934528            ; 5 uses
  %i.db = trunc i64 %n.vec90 to i32
  %i.dc = add i32 %.2.lcssa.i, %i.db
  %i.dd = shl nuw nsw i64 %n.vec90, 2
  %i.de = getelementptr i8, ptr %.221.lcssa.i, i64 %i.dd
  %broadcast.splatinsert91 = insertelement <16 x float> poison, float %.sroa.speculated28.i, i64 0
  %broadcast.splat92 = shufflevector <16 x float> %broadcast.splatinsert91, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  br label %vector.body93

vector.body93:                                    ; preds = %vector.ph89, %vector.body93
  %index94 = phi i64 [ 0, %vector.ph89 ], [ %index.next103, %vector.body93 ] ; 2 uses
  %vec.phi = phi <16 x float> [ %broadcast.splat92, %vector.ph89 ], [ %i.dn, %vector.body93 ]
  %vec.phi95 = phi <16 x float> [ %broadcast.splat92, %vector.ph89 ], [ %i.do, %vector.body93 ]
  %vec.phi96 = phi <16 x float> [ %broadcast.splat92, %vector.ph89 ], [ %i.dp, %vector.body93 ]
  %vec.phi97 = phi <16 x float> [ %broadcast.splat92, %vector.ph89 ], [ %i.dq, %vector.body93 ]
  %i.df = shl i64 %index94, 2
  %next.gep98 = getelementptr i8, ptr %.221.lcssa.i, i64 %i.df ; 4 uses
  %i.dg = getelementptr i8, ptr %next.gep98, i64 64
  %i.dh = getelementptr i8, ptr %next.gep98, i64 128
  %i.di = getelementptr i8, ptr %next.gep98, i64 192
  %wide.load99 = load <16 x float>, ptr %next.gep98, align 4, !tbaa !63
  %wide.load100 = load <16 x float>, ptr %i.dg, align 4, !tbaa !63
  %wide.load101 = load <16 x float>, ptr %i.dh, align 4, !tbaa !63
  %wide.load102 = load <16 x float>, ptr %i.di, align 4, !tbaa !63
  %i.dj = tail call fast <16 x float> @llvm.fabs.v16f32(<16 x float> %wide.load99)
  %i.dk = tail call fast <16 x float> @llvm.fabs.v16f32(<16 x float> %wide.load100)
  %i.dl = tail call fast <16 x float> @llvm.fabs.v16f32(<16 x float> %wide.load101)
  %i.dm = tail call fast <16 x float> @llvm.fabs.v16f32(<16 x float> %wide.load102)
  %i.dn = tail call nnan ninf nsz <16 x float> @llvm.maxnum.v16f32(<16 x float> %vec.phi, <16 x float> %i.dj) ; 2 uses
  %i.do = tail call nnan ninf nsz <16 x float> @llvm.maxnum.v16f32(<16 x float> %vec.phi95, <16 x float> %i.dk) ; 2 uses
  %i.dp = tail call nnan ninf nsz <16 x float> @llvm.maxnum.v16f32(<16 x float> %vec.phi96, <16 x float> %i.dl) ; 2 uses
  %i.dq = tail call nnan ninf nsz <16 x float> @llvm.maxnum.v16f32(<16 x float> %vec.phi97, <16 x float> %i.dm) ; 2 uses
  %index.next103 = add nuw i64 %index94, 64       ; 2 uses
  %i.dr = icmp eq i64 %index.next103, %n.vec90
  br i1 %i.dr, label %middle.block104, label %vector.body93, !llvm.loop !416

middle.block104:                                  ; preds = %vector.body93
  %rdx.minmax.select = tail call nnan ninf nsz <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.dn, <16 x float> %i.do)
  %rdx.minmax.select106 = tail call nnan ninf nsz <16 x float> @llvm.maxnum.v16f32(<16 x float> %rdx.minmax.select, <16 x float> %i.dp)
  %rdx.minmax.select108 = tail call nnan ninf nsz <16 x float> @llvm.maxnum.v16f32(<16 x float> %rdx.minmax.select106, <16 x float> %i.dq)
  %i.ds = tail call nnan ninf nsz float @llvm.vector.reduce.fmax.v16f32(<16 x float> %rdx.minmax.select108) ; 3 uses
  %cmp.n109 = icmp eq i64 %i.cz, %n.vec90
  br i1 %cmp.n109, label %_ZN4ncnnL32lstm_dynamic_quantize_get_absmaxEPKfi.exit, label %vec.epilog.iter.check114

vec.epilog.iter.check114:                         ; preds = %middle.block104
  %min.epilog.iters.check115 = icmp eq i64 %i.da, 0
  br i1 %min.epilog.iters.check115, label %.lr.ph83.i.preheader, label %vec.epilog.ph116, !prof !78

vec.epilog.ph116:                                 ; preds = %vector.main.loop.iter.check87, %vec.epilog.iter.check114
  %vec.epilog.resume.val110 = phi i64 [ %n.vec90, %vec.epilog.iter.check114 ], [ 0, %vector.main.loop.iter.check87 ]
  %bc.merge.rdx = phi float [ %i.ds, %vec.epilog.iter.check114 ], [ %.sroa.speculated28.i, %vector.main.loop.iter.check87 ]
  %n.vec117 = and i64 %i.cz, 8589934584           ; 4 uses
  %i.dt = trunc i64 %n.vec117 to i32
  %i.du = add i32 %.2.lcssa.i, %i.dt
  %i.dv = shl nuw nsw i64 %n.vec117, 2
  %i.dw = getelementptr i8, ptr %.221.lcssa.i, i64 %i.dv
  %broadcast.splatinsert118 = insertelement <8 x float> poison, float %bc.merge.rdx, i64 0
  %broadcast.splat119 = shufflevector <8 x float> %broadcast.splatinsert118, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body120

vec.epilog.vector.body120:                        ; preds = %vec.epilog.vector.body120, %vec.epilog.ph116
  %index121 = phi i64 [ %vec.epilog.resume.val110, %vec.epilog.ph116 ], [ %index.next125, %vec.epilog.vector.body120 ] ; 2 uses
  %vec.phi122 = phi <8 x float> [ %broadcast.splat119, %vec.epilog.ph116 ], [ %i.dz, %vec.epilog.vector.body120 ]
  %i.dx = shl i64 %index121, 2
  %next.gep123 = getelementptr i8, ptr %.221.lcssa.i, i64 %i.dx
  %wide.load124 = load <8 x float>, ptr %next.gep123, align 4, !tbaa !63
  %i.dy = tail call fast <8 x float> @llvm.fabs.v8f32(<8 x float> %wide.load124)
  %i.dz = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi122, <8 x float> %i.dy) ; 2 uses
  %index.next125 = add nuw i64 %index121, 8       ; 2 uses
  %i.ea = icmp eq i64 %index.next125, %n.vec117
  br i1 %i.ea, label %vec.epilog.middle.block126, label %vec.epilog.vector.body120, !llvm.loop !417

vec.epilog.middle.block126:                       ; preds = %vec.epilog.vector.body120
  %i.eb = tail call nnan ninf nsz float @llvm.vector.reduce.fmax.v8f32(<8 x float> %i.dz) ; 2 uses
  %cmp.n127 = icmp eq i64 %i.cz, %n.vec117
  br i1 %cmp.n127, label %_ZN4ncnnL32lstm_dynamic_quantize_get_absmaxEPKfi.exit, label %.lr.ph83.i.preheader

.lr.ph83.i.preheader:                             ; preds = %iter.check112, %vec.epilog.iter.check114, %vec.epilog.middle.block126
  %.381.i.ph = phi i32 [ %.2.lcssa.i, %iter.check112 ], [ %i.dc, %vec.epilog.iter.check114 ], [ %i.du, %vec.epilog.middle.block126 ]
  %.32280.i.ph = phi ptr [ %.221.lcssa.i, %iter.check112 ], [ %i.de, %vec.epilog.iter.check114 ], [ %i.dw, %vec.epilog.middle.block126 ]
  %.05279.i.ph = phi float [ %.sroa.speculated28.i, %iter.check112 ], [ %i.ds, %vec.epilog.iter.check114 ], [ %i.eb, %vec.epilog.middle.block126 ]
  br label %.lr.ph83.i

.lr.ph83.i:                                       ; preds = %.lr.ph83.i.preheader, %.lr.ph83.i
  %.381.i = phi i32 [ %i.ef, %.lr.ph83.i ], [ %.381.i.ph, %.lr.ph83.i.preheader ]
  %.32280.i = phi ptr [ %i.ee, %.lr.ph83.i ], [ %.32280.i.ph, %.lr.ph83.i.preheader ] ; 2 uses
  %.05279.i = phi float [ %.sroa.speculated.i, %.lr.ph83.i ], [ %.05279.i.ph, %.lr.ph83.i.preheader ]
  %i.ec = load float, ptr %.32280.i, align 4, !tbaa !63
  %i.ed = tail call fast noundef nofpclass(nan inf) float @llvm.fabs.f32(float nofpclass(nan inf) %i.ec)
  %.sroa.speculated.i = tail call nnan ninf nsz float @llvm.maxnum.f32(float %.05279.i, float %i.ed) ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.32280.i, i64 4
  %i.ef = add nuw nsw i32 %.381.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ef, %i.b
  br i1 %exitcond.not.i, label %_ZN4ncnnL32lstm_dynamic_quantize_get_absmaxEPKfi.exit, label %.lr.ph83.i, !llvm.loop !418

_ZN4ncnnL32lstm_dynamic_quantize_get_absmaxEPKfi.exit: ; preds = %.lr.ph83.i, %middle.block104, %vec.epilog.middle.block126, %._crit_edge75.i
  %.052.lcssa.i = phi float [ %.sroa.speculated28.i, %._crit_edge75.i ], [ %i.eb, %vec.epilog.middle.block126 ], [ %i.ds, %middle.block104 ], [ %.sroa.speculated.i, %.lr.ph83.i ] ; 2 uses
  %i.eg = fmul fast float %.052.lcssa.i, f0x3C010204
  %i.eh = load ptr, ptr %2, align 8, !tbaa !26
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %indvars.iv
  store float %i.eg, ptr %i.ei, align 4, !tbaa !63
  %i.ej = fdiv fast float 1.270000e+02, %.052.lcssa.i ; 9 uses
  %i.ek = tail call noundef i32 @_ZN4ncnn27cpu_support_x86_avx512_vnniEv()
  %.not.i = icmp eq i32 %i.ek, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN4ncnnL32lstm_dynamic_quantize_get_absmaxEPKfi.exit
  tail call void @_ZN4ncnn43lstm_dynamic_quantize_scale2int8_avx512vnniEPKfifPa(ptr noundef %i.w, i32 noundef %i.b, float noundef nofpclass(nan inf) %i.ej, ptr noundef %i.ad)
  br label %_ZN4ncnnL32lstm_dynamic_quantize_scale2int8EPKfifPa.exit

bb.d:                                             ; preds = %_ZN4ncnnL32lstm_dynamic_quantize_get_absmaxEPKfi.exit
  %i.el = insertelement <16 x float> poison, float %i.ej, i64 0
  %i.em = shufflevector <16 x float> %i.el, <16 x float> poison, <16 x i32> zeroinitializer ; 3 uses
  br i1 %i.i, label %.lr.ph.i30.preheader, label %._crit_edge.i25

.lr.ph.i30.preheader:                             ; preds = %bb.d
  br i1 %i.o, label %.lr.ph.i30.epil.preheader, label %.lr.ph.i30

.lr.ph.i30:                                       ; preds = %.lr.ph.i30.preheader, %.lr.ph.i30
  %.055.i = phi ptr [ %i.fd, %.lr.ph.i30 ], [ %i.w, %.lr.ph.i30.preheader ] ; 3 uses
  %.04153.i = phi ptr [ %i.fe, %.lr.ph.i30 ], [ %i.ad, %.lr.ph.i30.preheader ] ; 3 uses
  %niter161 = phi i32 [ %niter161.next.1, %.lr.ph.i30 ], [ 0, %.lr.ph.i30.preheader ]
  %i.en = load <16 x float>, ptr %.055.i, align 1, !tbaa !76
  %i.eo = fmul fast <16 x float> %i.en, %i.em     ; 2 uses
  %i.ep = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.eo)
  %i.eq = fadd fast <16 x float> %i.ep, %i.eo
  %i.er = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.eq, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.es = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.er, <16 x i8> zeroinitializer, i16 -1)
  %i.et = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.es, <16 x i8> splat (i8 -127))
  store <16 x i8> %i.et, ptr %.04153.i, align 1, !tbaa !76
  %i.eu = getelementptr inbounds nuw i8, ptr %.055.i, i64 64
  %i.ev = getelementptr inbounds nuw i8, ptr %.04153.i, i64 16
  %i.ew = load <16 x float>, ptr %i.eu, align 1, !tbaa !76
  %i.ex = fmul fast <16 x float> %i.ew, %i.em     ; 2 uses
  %i.ey = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.ex)
  %i.ez = fadd fast <16 x float> %i.ey, %i.ex
  %i.fa = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.ez, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.fb = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.fa, <16 x i8> zeroinitializer, i16 -1)
  %i.fc = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.fb, <16 x i8> splat (i8 -127))
  store <16 x i8> %i.fc, ptr %i.ev, align 1, !tbaa !76
  %i.fd = getelementptr inbounds nuw i8, ptr %.055.i, i64 128 ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.04153.i, i64 32 ; 3 uses
  %niter161.next.1 = add i32 %niter161, 2         ; 2 uses
  %niter161.ncmp.1.not = icmp eq i32 %niter161.next.1, %unroll_iter160
  br i1 %niter161.ncmp.1.not, label %._crit_edge.i25.loopexit.unr-lcssa, label %.lr.ph.i30, !llvm.loop !5

._crit_edge.i25.loopexit.unr-lcssa:               ; preds = %.lr.ph.i30
  br i1 %lcmp.mod156.not.not, label %.lr.ph.i30.epil.preheader, label %._crit_edge.i25

.lr.ph.i30.epil.preheader:                        ; preds = %._crit_edge.i25.loopexit.unr-lcssa, %.lr.ph.i30.preheader
  %.055.i.epil.init = phi ptr [ %i.w, %.lr.ph.i30.preheader ], [ %i.fd, %._crit_edge.i25.loopexit.unr-lcssa ] ; 2 uses
  %.04153.i.epil.init = phi ptr [ %i.ad, %.lr.ph.i30.preheader ], [ %i.fe, %._crit_edge.i25.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod159)
  %i.ff = load <16 x float>, ptr %.055.i.epil.init, align 1, !tbaa !76
  %i.fg = fmul fast <16 x float> %i.ff, %i.em     ; 2 uses
  %i.fh = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.fg)
  %i.fi = fadd fast <16 x float> %i.fh, %i.fg
  %i.fj = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.fi, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.fk = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.fj, <16 x i8> zeroinitializer, i16 -1)
  %i.fl = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.fk, <16 x i8> splat (i8 -127))
  store <16 x i8> %i.fl, ptr %.04153.i.epil.init, align 1, !tbaa !76
  %i.fm = getelementptr inbounds nuw i8, ptr %.055.i.epil.init, i64 64
  %i.fn = getelementptr inbounds nuw i8, ptr %.04153.i.epil.init, i64 16
  br label %._crit_edge.i25

._crit_edge.i25:                                  ; preds = %.lr.ph.i30.epil.preheader, %._crit_edge.i25.loopexit.unr-lcssa, %bb.d
  %.041.lcssa.i = phi ptr [ %i.ad, %bb.d ], [ %i.fe, %._crit_edge.i25.loopexit.unr-lcssa ], [ %i.fn, %.lr.ph.i30.epil.preheader ] ; 2 uses
  %.037.lcssa.i = phi i32 [ 0, %bb.d ], [ %i.j, %._crit_edge.i25.loopexit.unr-lcssa ], [ %i.j, %.lr.ph.i30.epil.preheader ] ; 3 uses
  %.0.lcssa.i26 = phi ptr [ %i.w, %bb.d ], [ %i.fd, %._crit_edge.i25.loopexit.unr-lcssa ], [ %i.fm, %.lr.ph.i30.epil.preheader ] ; 2 uses
  %i.fo = insertelement <8 x float> poison, float %i.ej, i64 0
  %i.fp = shufflevector <8 x float> %i.fo, <8 x float> poison, <8 x i32> zeroinitializer
  %i.fq = or disjoint i32 %.037.lcssa.i, 7
  %i.fr = icmp slt i32 %i.fq, %i.b
  br i1 %i.fr, label %.lr.ph62.i, label %._crit_edge63.i

.lr.ph62.i:                                       ; preds = %._crit_edge.i25, %.lr.ph62.i
  %.160.i = phi ptr [ %i.gb, %.lr.ph62.i ], [ %.0.lcssa.i26, %._crit_edge.i25 ] ; 2 uses
  %.13859.i = phi i32 [ %i.gd, %.lr.ph62.i ], [ %.037.lcssa.i, %._crit_edge.i25 ]
  %.14258.i = phi ptr [ %i.gc, %.lr.ph62.i ], [ %.041.lcssa.i, %._crit_edge.i25 ] ; 2 uses
  %i.fs = load <8 x float>, ptr %.160.i, align 1, !tbaa !76
  %i.ft = fmul fast <8 x float> %i.fs, %i.fp      ; 2 uses
  %i.fu = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.ft)
  %i.fv = fadd fast <8 x float> %i.fu, %i.ft
  %i.fw = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.fv)
  %i.fx = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.256(<8 x i32> %i.fw, <16 x i8> zeroinitializer, i8 -1)
  %i.fy = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.fx, <16 x i8> splat (i8 -127))
  %i.fz = bitcast <16 x i8> %i.fy to <2 x i64>
  %i.ga = extractelement <2 x i64> %i.fz, i64 0
  store i64 %i.ga, ptr %.14258.i, align 8, !tbaa !79
  %i.gb = getelementptr inbounds nuw i8, ptr %.160.i, i64 32 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.14258.i, i64 8 ; 2 uses
  %i.gd = add nuw nsw i32 %.13859.i, 8            ; 3 uses
  %i.ge = or disjoint i32 %i.gd, 7
  %i.gf = icmp slt i32 %i.ge, %i.b
  br i1 %i.gf, label %.lr.ph62.i, label %._crit_edge63.i, !llvm.loop !6

._crit_edge63.i:                                  ; preds = %.lr.ph62.i, %._crit_edge.i25
  %.142.lcssa.i = phi ptr [ %.041.lcssa.i, %._crit_edge.i25 ], [ %i.gc, %.lr.ph62.i ] ; 2 uses
  %.138.lcssa.i = phi i32 [ %.037.lcssa.i, %._crit_edge.i25 ], [ %i.gd, %.lr.ph62.i ] ; 3 uses
  %.1.lcssa.i27 = phi ptr [ %.0.lcssa.i26, %._crit_edge.i25 ], [ %i.gb, %.lr.ph62.i ] ; 2 uses
  %i.gg = insertelement <4 x float> poison, float %i.ej, i64 0
  %i.gh = shufflevector <4 x float> %i.gg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gi = or disjoint i32 %.138.lcssa.i, 3
  %i.gj = icmp slt i32 %i.gi, %i.b
  br i1 %i.gj, label %.lr.ph71.i, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph71.i, %._crit_edge63.i
  %.243.lcssa.i = phi ptr [ %.142.lcssa.i, %._crit_edge63.i ], [ %i.jn, %.lr.ph71.i ] ; 8 uses
  %.239.lcssa.i = phi i32 [ %.138.lcssa.i, %._crit_edge63.i ], [ %i.jo, %.lr.ph71.i ] ; 7 uses
  %.2.lcssa.i28 = phi ptr [ %.1.lcssa.i27, %._crit_edge63.i ], [ %i.jm, %.lr.ph71.i ] ; 8 uses
  %i.gk = icmp slt i32 %.239.lcssa.i, %i.b
  br i1 %i.gk, label %iter.check, label %_ZN4ncnnL32lstm_dynamic_quantize_scale2int8EPKfifPa.exit

iter.check:                                       ; preds = %.preheader.i
  %i.gl = xor i32 %.239.lcssa.i, -1
  %i.gm = add i32 %i.b, %i.gl                     ; 3 uses
  %i.gn = zext i32 %i.gm to i64
  %i.go = add nuw nsw i64 %i.gn, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.gm, 7
  br i1 %min.iters.check, label %.lr.ph78.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %.243.lcssa.i, i64 1
  %i.gp = xor i32 %.239.lcssa.i, -1
  %i.gq = add i32 %i.b, %i.gp
  %i.gr = zext i32 %i.gq to i64                   ; 2 uses
  %scevgep64 = getelementptr i8, ptr %scevgep, i64 %i.gr
  %scevgep65 = getelementptr i8, ptr %.2.lcssa.i28, i64 4
  %i.gs = shl nuw nsw i64 %i.gr, 2
  %scevgep66 = getelementptr i8, ptr %scevgep65, i64 %i.gs
  %bound0 = icmp ult ptr %.243.lcssa.i, %scevgep66
  %bound1 = icmp ult ptr %.2.lcssa.i28, %scevgep64
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph78.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check67 = icmp ult i32 %i.gm, 63
  br i1 %min.iters.check67, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.gt = and i64 %i.go, 56
  %n.vec = and i64 %i.go, 8589934528              ; 6 uses
  %i.gu = shl nuw nsw i64 %n.vec, 2
  %i.gv = getelementptr i8, ptr %.2.lcssa.i28, i64 %i.gu
  %i.gw = trunc i64 %n.vec to i32
  %i.gx = add i32 %.239.lcssa.i, %i.gw
  %i.gy = getelementptr i8, ptr %.243.lcssa.i, i64 %n.vec
  %broadcast.splatinsert = insertelement <16 x float> poison, float %i.ej, i64 0
  %broadcast.splat = shufflevector <16 x float> %broadcast.splatinsert, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.gz = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.2.lcssa.i28, i64 %i.gz ; 4 uses
  %next.gep68 = getelementptr i8, ptr %.243.lcssa.i, i64 %index ; 4 uses
  %i.ha = getelementptr i8, ptr %next.gep, i64 64
  %i.hb = getelementptr i8, ptr %next.gep, i64 128
  %i.hc = getelementptr i8, ptr %next.gep, i64 192
  %wide.load = load <16 x float>, ptr %next.gep, align 4, !tbaa !63, !alias.scope !426
  %wide.load69 = load <16 x float>, ptr %i.ha, align 4, !tbaa !63, !alias.scope !426
  %wide.load70 = load <16 x float>, ptr %i.hb, align 4, !tbaa !63, !alias.scope !426
  %wide.load71 = load <16 x float>, ptr %i.hc, align 4, !tbaa !63, !alias.scope !426
  %i.hd = fmul fast <16 x float> %wide.load, %broadcast.splat
  %i.he = fmul fast <16 x float> %wide.load69, %broadcast.splat
  %i.hf = fmul fast <16 x float> %wide.load70, %broadcast.splat
  %i.hg = fmul fast <16 x float> %wide.load71, %broadcast.splat
  %i.hh = tail call fast <16 x float> @llvm.round.v16f32(<16 x float> %i.hd)
  %i.hi = tail call fast <16 x float> @llvm.round.v16f32(<16 x float> %i.he)
  %i.hj = tail call fast <16 x float> @llvm.round.v16f32(<16 x float> %i.hf)
  %i.hk = tail call fast <16 x float> @llvm.round.v16f32(<16 x float> %i.hg)
  %i.hl = fptosi <16 x float> %i.hh to <16 x i32>
  %i.hm = fptosi <16 x float> %i.hi to <16 x i32>
  %i.hn = fptosi <16 x float> %i.hj to <16 x i32>
  %i.ho = fptosi <16 x float> %i.hk to <16 x i32>
  %i.hp = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.hl, <16 x i32> splat (i32 -127))
  %i.hq = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.hm, <16 x i32> splat (i32 -127))
  %i.hr = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.hn, <16 x i32> splat (i32 -127))
  %i.hs = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.ho, <16 x i32> splat (i32 -127))
  %i.ht = tail call <16 x i32> @llvm.smin.v16i32(<16 x i32> %i.hp, <16 x i32> splat (i32 127))
  %i.hu = tail call <16 x i32> @llvm.smin.v16i32(<16 x i32> %i.hq, <16 x i32> splat (i32 127))
  %i.hv = tail call <16 x i32> @llvm.smin.v16i32(<16 x i32> %i.hr, <16 x i32> splat (i32 127))
  %i.hw = tail call <16 x i32> @llvm.smin.v16i32(<16 x i32> %i.hs, <16 x i32> splat (i32 127))
  %i.hx = trunc nsw <16 x i32> %i.ht to <16 x i8>
  %i.hy = trunc nsw <16 x i32> %i.hu to <16 x i8>
  %i.hz = trunc nsw <16 x i32> %i.hv to <16 x i8>
  %i.ia = trunc nsw <16 x i32> %i.hw to <16 x i8>
  %i.ib = getelementptr i8, ptr %next.gep68, i64 16
  %i.ic = getelementptr i8, ptr %next.gep68, i64 32
  %i.id = getelementptr i8, ptr %next.gep68, i64 48
  store <16 x i8> %i.hx, ptr %next.gep68, align 1, !tbaa !76, !alias.scope !427, !noalias !426
  store <16 x i8> %i.hy, ptr %i.ib, align 1, !tbaa !76, !alias.scope !427, !noalias !426
  store <16 x i8> %i.hz, ptr %i.ic, align 1, !tbaa !76, !alias.scope !427, !noalias !426
  store <16 x i8> %i.ia, ptr %i.id, align 1, !tbaa !76, !alias.scope !427, !noalias !426
  %index.next = add nuw i64 %index, 64            ; 2 uses
  %i.ie = icmp eq i64 %index.next, %n.vec
  br i1 %i.ie, label %middle.block, label %vector.body, !llvm.loop !422

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.go, %n.vec
  br i1 %cmp.n, label %_ZN4ncnnL32lstm_dynamic_quantize_scale2int8EPKfifPa.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.gt, 0
  br i1 %min.epilog.iters.check, label %.lr.ph78.i.preheader, label %vec.epilog.ph, !prof !78

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec74 = and i64 %i.go, 8589934584            ; 5 uses
  %i.if = shl nuw nsw i64 %n.vec74, 2
  %i.ig = getelementptr i8, ptr %.2.lcssa.i28, i64 %i.if
  %i.ih = trunc i64 %n.vec74 to i32
  %i.ii = add i32 %.239.lcssa.i, %i.ih
  %i.ij = getelementptr i8, ptr %.243.lcssa.i, i64 %n.vec74
  %broadcast.splatinsert75 = insertelement <8 x float> poison, float %i.ej, i64 0
  %broadcast.splat76 = shufflevector <8 x float> %broadcast.splatinsert75, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index77 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next81, %vec.epilog.vector.body ] ; 3 uses
  %i.ik = shl i64 %index77, 2
  %next.gep78 = getelementptr i8, ptr %.2.lcssa.i28, i64 %i.ik
  %next.gep79 = getelementptr i8, ptr %.243.lcssa.i, i64 %index77
  %wide.load80 = load <8 x float>, ptr %next.gep78, align 4, !tbaa !63, !alias.scope !426
  %i.il = fmul fast <8 x float> %wide.load80, %broadcast.splat76
  %i.im = tail call fast <8 x float> @llvm.round.v8f32(<8 x float> %i.il)
  %i.in = fptosi <8 x float> %i.im to <8 x i32>
  %i.io = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.in, <8 x i32> splat (i32 -127))
  %i.ip = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.io, <8 x i32> splat (i32 127))
  %i.iq = trunc nsw <8 x i32> %i.ip to <8 x i8>
  store <8 x i8> %i.iq, ptr %next.gep79, align 1, !tbaa !76, !alias.scope !427, !noalias !426
  %index.next81 = add nuw i64 %index77, 8         ; 2 uses
  %i.ir = icmp eq i64 %index.next81, %n.vec74
  br i1 %i.ir, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !423

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n82 = icmp eq i64 %i.go, %n.vec74
  br i1 %cmp.n82, label %_ZN4ncnnL32lstm_dynamic_quantize_scale2int8EPKfifPa.exit, label %.lr.ph78.i.preheader

.lr.ph78.i.preheader:                             ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.377.i.ph = phi ptr [ %.2.lcssa.i28, %iter.check ], [ %.2.lcssa.i28, %vector.memcheck ], [ %i.gv, %vec.epilog.iter.check ], [ %i.ig, %vec.epilog.middle.block ] ; 3 uses
  %.34076.i.ph = phi i32 [ %.239.lcssa.i, %iter.check ], [ %.239.lcssa.i, %vector.memcheck ], [ %i.gx, %vec.epilog.iter.check ], [ %i.ii, %vec.epilog.middle.block ] ; 4 uses
  %.34475.i.ph = phi ptr [ %.243.lcssa.i, %iter.check ], [ %.243.lcssa.i, %vector.memcheck ], [ %i.gy, %vec.epilog.iter.check ], [ %i.ij, %vec.epilog.middle.block ] ; 3 uses
  %i.is = sub i32 %i.b, %.34076.i.ph
  %.neg = add i32 %.34076.i.ph, 1
  %xtraiter162 = and i32 %i.is, 1
  %lcmp.mod163.not = icmp eq i32 %xtraiter162, 0
  br i1 %lcmp.mod163.not, label %.lr.ph78.i.prol.loopexit, label %.lr.ph78.i.prol

.lr.ph78.i.prol:                                  ; preds = %.lr.ph78.i.preheader
  %i.it = getelementptr inbounds nuw i8, ptr %.377.i.ph, i64 4
  %i.iu = load float, ptr %.377.i.ph, align 4, !tbaa !63
  %i.iv = fmul fast float %i.iu, %i.ej
  %i.iw = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.iv)
  %i.ix = fptosi float %i.iw to i32
  %spec.select.i51.i.prol = tail call i32 @llvm.smax.i32(i32 %i.ix, i32 -127)
  %.0.i52.i.prol = tail call i32 @llvm.smin.i32(i32 %spec.select.i51.i.prol, i32 127)
  %.0.i.i.prol = trunc nsw i32 %.0.i52.i.prol to i8
  %i.iy = getelementptr inbounds nuw i8, ptr %.34475.i.ph, i64 1
  store i8 %.0.i.i.prol, ptr %.34475.i.ph, align 1, !tbaa !76
  %i.iz = add nuw nsw i32 %.34076.i.ph, 1
  br label %.lr.ph78.i.prol.loopexit

.lr.ph78.i.prol.loopexit:                         ; preds = %.lr.ph78.i.prol, %.lr.ph78.i.preheader
  %.377.i.unr = phi ptr [ %.377.i.ph, %.lr.ph78.i.preheader ], [ %i.it, %.lr.ph78.i.prol ]
  %.34076.i.unr = phi i32 [ %.34076.i.ph, %.lr.ph78.i.preheader ], [ %i.iz, %.lr.ph78.i.prol ]
  %.34475.i.unr = phi ptr [ %.34475.i.ph, %.lr.ph78.i.preheader ], [ %i.iy, %.lr.ph78.i.prol ]
  %i.ja = icmp eq i32 %i.b, %.neg
  br i1 %i.ja, label %_ZN4ncnnL32lstm_dynamic_quantize_scale2int8EPKfifPa.exit, label %.lr.ph78.i

.lr.ph71.i:                                       ; preds = %._crit_edge63.i, %.lr.ph71.i
  %.269.i = phi ptr [ %i.jm, %.lr.ph71.i ], [ %.1.lcssa.i27, %._crit_edge63.i ] ; 2 uses
  %.23968.i = phi i32 [ %i.jo, %.lr.ph71.i ], [ %.138.lcssa.i, %._crit_edge63.i ]
  %.24367.i = phi ptr [ %i.jn, %.lr.ph71.i ], [ %.142.lcssa.i, %._crit_edge63.i ] ; 2 uses
  %i.jb = load <4 x float>, ptr %.269.i, align 1, !tbaa !76
  %i.jc = fmul fast <4 x float> %i.jb, %i.gh      ; 2 uses
  %i.jd = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.jc)
  %i.je = fadd fast <4 x float> %i.jd, %i.jc
  %i.jf = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.je) ; 2 uses
  %i.jg = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.jf, <4 x i32> %i.jf)
  %i.jh = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.jg, <8 x i16> splat (i16 -127))
  %i.ji = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.jh, <8 x i16> splat (i16 127))
  %i.jj = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.ji, <8 x i16> poison)
  %i.jk = bitcast <16 x i8> %i.jj to <4 x i32>
  %i.jl = extractelement <4 x i32> %i.jk, i64 0
  store i32 %i.jl, ptr %.24367.i, align 4, !tbaa !45
  %i.jm = getelementptr inbounds nuw i8, ptr %.269.i, i64 16 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %.24367.i, i64 4 ; 2 uses
  %i.jo = add nuw nsw i32 %.23968.i, 4            ; 3 uses
  %i.jp = or disjoint i32 %i.jo, 3
  %i.jq = icmp slt i32 %i.jp, %i.b
  br i1 %i.jq, label %.lr.ph71.i, label %.preheader.i, !llvm.loop !7

.lr.ph78.i:                                       ; preds = %.lr.ph78.i.prol.loopexit, %.lr.ph78.i
  %.377.i = phi ptr [ %i.jx, %.lr.ph78.i ], [ %.377.i.unr, %.lr.ph78.i.prol.loopexit ] ; 3 uses
  %.34076.i = phi i32 [ %i.kd, %.lr.ph78.i ], [ %.34076.i.unr, %.lr.ph78.i.prol.loopexit ]
  %.34475.i = phi ptr [ %i.kc, %.lr.ph78.i ], [ %.34475.i.unr, %.lr.ph78.i.prol.loopexit ] ; 3 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %.377.i, i64 4
  %i.js = load float, ptr %.377.i, align 4, !tbaa !63
  %i.jt = fmul fast float %i.js, %i.ej
  %i.ju = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.jt)
  %i.jv = fptosi float %i.ju to i32
  %spec.select.i51.i = tail call i32 @llvm.smax.i32(i32 %i.jv, i32 -127)
  %.0.i52.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i51.i, i32 127)
  %.0.i.i = trunc nsw i32 %.0.i52.i to i8
  %i.jw = getelementptr inbounds nuw i8, ptr %.34475.i, i64 1
  store i8 %.0.i.i, ptr %.34475.i, align 1, !tbaa !76
  %i.jx = getelementptr inbounds nuw i8, ptr %.377.i, i64 8
  %i.jy = load float, ptr %i.jr, align 4, !tbaa !63
  %i.jz = fmul fast float %i.jy, %i.ej
  %i.ka = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.jz)
  %i.kb = fptosi float %i.ka to i32
  %spec.select.i51.i.1 = tail call i32 @llvm.smax.i32(i32 %i.kb, i32 -127)
  %.0.i52.i.1 = tail call i32 @llvm.smin.i32(i32 %spec.select.i51.i.1, i32 127)
  %.0.i.i.1 = trunc nsw i32 %.0.i52.i.1 to i8
  %i.kc = getelementptr inbounds nuw i8, ptr %.34475.i, i64 2
  store i8 %.0.i.i.1, ptr %i.jw, align 1, !tbaa !76
  %i.kd = add nuw nsw i32 %.34076.i, 2            ; 2 uses
  %exitcond.not.i29.1 = icmp eq i32 %i.kd, %i.b
  br i1 %exitcond.not.i29.1, label %_ZN4ncnnL32lstm_dynamic_quantize_scale2int8EPKfifPa.exit, label %.lr.ph78.i, !llvm.loop !424

_ZN4ncnnL32lstm_dynamic_quantize_scale2int8EPKfifPa.exit: ; preds = %.lr.ph78.i.prol.loopexit, %.lr.ph78.i, %middle.block, %vec.epilog.middle.block, %bb.c, %.preheader.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !425
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4ncnnL9lstm_int8ERKNS_3MatES2_RS0_iS2_S2_S2_S2_S3_S3_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(72) %5, ptr noundef nonnull align 8 dereferenceable(72) %6, ptr noundef nonnull align 8 dereferenceable(72) %7, ptr noundef nonnull align 8 dereferenceable(72) %8, ptr noundef nonnull align 8 dereferenceable(72) %9, ptr noundef nonnull align 8 dereferenceable(64) %10) unnamed_addr #16 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 17 uses
  %i.c = alloca i32, align 4                      ; 17 uses
  %11 = alloca %"class.ncnn::Mat", align 8        ; 17 uses
  %12 = alloca %"class.ncnn::Mat", align 8        ; 12 uses
  %13 = alloca %"class.ncnn::Mat", align 8        ; 16 uses
  %i.d = alloca float, align 4                    ; 8 uses
  %i.e = alloca i32, align 4                      ; 8 uses
  %i.f = alloca i32, align 4                      ; 19 uses
  %i.g = alloca i32, align 4                      ; 17 uses
  %i.h = alloca ptr, align 8                      ; 8 uses
  %i.i = alloca ptr, align 8                      ; 7 uses
  %i.j = alloca ptr, align 8                      ; 8 uses
  %i.k = alloca ptr, align 8                      ; 7 uses
  %i.l = alloca i32, align 4                      ; 4 uses
  %i.m = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 8 uses
  %i.n = tail call noundef i32 @_ZN4ncnn27cpu_support_x86_avx512_vnniEv()
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4ncnn20lstm_int8_avx512vnniERKNS_3MatES2_RS0_iS2_S2_S2_S2_S3_S3_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(72) %5, ptr noundef nonnull align 8 dereferenceable(72) %6, ptr noundef nonnull align 8 dereferenceable(72) %7, ptr noundef nonnull align 8 dereferenceable(72) %8, ptr noundef nonnull align 8 dereferenceable(72) %9, ptr noundef nonnull align 8 dereferenceable(64) %10)
  br label %bb.an

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.p = load i32, ptr %i.o, align 4, !tbaa !65
  store i32 %i.p, ptr %i.a, align 4, !tbaa !45
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.r = load i32, ptr %i.q, align 8, !tbaa !55   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !65
  store i32 %i.t, ptr %i.b, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 44
  %i.v = load i32, ptr %i.u, align 4, !tbaa !65   ; 2 uses
  store i32 %i.v, ptr %i.c, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #9
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !68
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %11, i64 64
  store i64 0, ptr %i.aa, align 8, !tbaa !27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %11, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.z, i8 0, i64 28, i1 false)
  call void @_ZN4ncnn3Mat6createEiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %11, i32 noundef 4, i32 noundef %i.v, i64 noundef 4, ptr noundef %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #9
  %i.ab = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %12, i64 64
  store i64 0, ptr %i.ad, align 8, !tbaa !27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %12, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ac, i8 0, i64 28, i1 false)
  %i.ae = load i32, ptr %i.b, align 4, !tbaa !45  ; 2 uses
  %i.af = load i32, ptr %i.c, align 4, !tbaa !45  ; 2 uses
  %.not68 = icmp eq i32 %i.ae, %i.af
  br i1 %.not68, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ag = load ptr, ptr %i.w, align 8, !tbaa !68
  invoke void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %12, i32 noundef %i.af, i64 noundef 4, ptr noundef %i.ag)
          to label %._crit_edge157 unwind label %bb.e

._crit_edge157:                                   ; preds = %bb.d
  %.pre = load i32, ptr %i.b, align 4, !tbaa !45
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.f:                                             ; preds = %._crit_edge157, %bb.c
  %i.ai = phi i32 [ %.pre, %._crit_edge157 ], [ %i.ae, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #9
  %i.aj = load ptr, ptr %i.w, align 8, !tbaa !68
  %i.ak = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %13, i64 56
  %i.an = getelementptr inbounds nuw i8, ptr %13, i64 64 ; 2 uses
  store i64 0, ptr %i.an, align 8, !tbaa !27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %13, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.al, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %13, i32 noundef %i.ai, i64 noundef 1, i32 noundef 1, ptr noundef %i.aj)
          to label %_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit unwind label %bb.y

_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit:           ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store float 1.000000e+00, ptr %i.d, align 4, !tbaa !63
  %i.ao = icmp sgt i32 %i.r, 0
  br i1 %i.ao, label %.lr.ph139, label %._crit_edge

.lr.ph139:                                        ; preds = %_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit
  %.not69 = icmp eq i32 %3, 0
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 4 ; 8 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre159 = load i32, ptr %i.b, align 4, !tbaa !45
  br label %bb.z

._crit_edge:                                      ; preds = %bb.am, %_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  %i.ar = load ptr, ptr %i.ak, align 8, !tbaa !24 ; 2 uses
  %.not.i79 = icmp eq ptr %i.ar, null
  br i1 %.not.i79, label %_ZN4ncnn3MatD2Ev.exit77, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  %i.as = atomicrmw add ptr %i.ar, i32 -1 acq_rel, align 4
  %i.at = icmp eq i32 %i.as, 1
  br i1 %i.at, label %bb.h, label %_ZN4ncnn3MatD2Ev.exit77

bb.h:                                             ; preds = %bb.g
  %i.au = load ptr, ptr %i.al, align 8, !tbaa !25 ; 3 uses
  %.not3.i80 = icmp eq ptr %i.au, null
  %i.av = load ptr, ptr %13, align 8, !tbaa !26   ; 3 uses
  br i1 %.not3.i80, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aw = load ptr, ptr %i.au, align 8, !tbaa !18
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8
  invoke void %i.ay(ptr noundef nonnull align 8 dereferenceable(8) %i.au, ptr noundef %i.av)
          to label %_ZN4ncnn3MatD2Ev.exit77 unwind label %bb.l, !inline_history !0

bb.j:                                             ; preds = %bb.h
  %.not.i106 = icmp eq ptr %i.av, null
  br i1 %.not.i106, label %_ZN4ncnn3MatD2Ev.exit77, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @free(ptr noundef nonnull %i.av) #9
  br label %_ZN4ncnn3MatD2Ev.exit77

bb.l:                                             ; preds = %bb.i
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  call void @__clang_call_terminate(ptr %i.ba) #21
  unreachable

_ZN4ncnn3MatD2Ev.exit77:                          ; preds = %bb.g, %._crit_edge, %bb.i, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #9
  %i.bb = load ptr, ptr %i.ab, align 8, !tbaa !24 ; 2 uses
  %.not.i83 = icmp eq ptr %i.bb, null
  br i1 %.not.i83, label %_ZN4ncnn3MatD2Ev.exit76, label %bb.m

bb.m:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit77
  %i.bc = atomicrmw add ptr %i.bb, i32 -1 acq_rel, align 4
  %i.bd = icmp eq i32 %i.bc, 1
  br i1 %i.bd, label %bb.n, label %_ZN4ncnn3MatD2Ev.exit76

end_hunk_1
begin_hunk_2_@_ZN4ncnnL9lstm_int8ERKNS_3MatES2_RS0_iS2_S2_S2_S2_S3_S3_RKNS_6OptionE:bb.a
  %wide.load251 = load <16 x float>, ptr %i.fk, align 4, !tbaa !63
  %wide.load252 = load <16 x float>, ptr %i.fl, align 4, !tbaa !63
  %i.fm = call fast <16 x float> @llvm.fabs.v16f32(<16 x float> %wide.load249)
  %i.fn = call fast <16 x float> @llvm.fabs.v16f32(<16 x float> %wide.load250)
  %i.fo = call fast <16 x float> @llvm.fabs.v16f32(<16 x float> %wide.load251)
  %i.fp = call fast <16 x float> @llvm.fabs.v16f32(<16 x float> %wide.load252)
  %i.fq = call nnan ninf nsz <16 x float> @llvm.maxnum.v16f32(<16 x float> %vec.phi, <16 x float> %i.fm) ; 2 uses
  %i.fr = call nnan ninf nsz <16 x float> @llvm.maxnum.v16f32(<16 x float> %vec.phi245, <16 x float> %i.fn) ; 2 uses
  %i.fs = call nnan ninf nsz <16 x float> @llvm.maxnum.v16f32(<16 x float> %vec.phi246, <16 x float> %i.fo) ; 2 uses
  %i.ft = call nnan ninf nsz <16 x float> @llvm.maxnum.v16f32(<16 x float> %vec.phi247, <16 x float> %i.fp) ; 2 uses
  %index.next253 = add nuw i64 %index244, 64      ; 2 uses
  %i.fu = icmp eq i64 %index.next253, %n.vec240
  br i1 %i.fu, label %middle.block254, label %vector.body243, !llvm.loop !429

middle.block254:                                  ; preds = %vector.body243
  %rdx.minmax.select = call nnan ninf nsz <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.fq, <16 x float> %i.fr)
  %rdx.minmax.select256 = call nnan ninf nsz <16 x float> @llvm.maxnum.v16f32(<16 x float> %rdx.minmax.select, <16 x float> %i.fs)
  %rdx.minmax.select258 = call nnan ninf nsz <16 x float> @llvm.maxnum.v16f32(<16 x float> %rdx.minmax.select256, <16 x float> %i.ft)
  %i.fv = call nnan ninf nsz float @llvm.vector.reduce.fmax.v16f32(<16 x float> %rdx.minmax.select258) ; 3 uses
  %cmp.n259 = icmp eq i64 %i.fc, %n.vec240
  br i1 %cmp.n259, label %_ZN4ncnnL32lstm_dynamic_quantize_get_absmaxEPKfi.exit, label %vec.epilog.iter.check264

vec.epilog.iter.check264:                         ; preds = %middle.block254
  %min.epilog.iters.check265 = icmp eq i64 %i.fd, 0
  br i1 %min.epilog.iters.check265, label %.lr.ph83.i.preheader, label %vec.epilog.ph266, !prof !78

vec.epilog.ph266:                                 ; preds = %vector.main.loop.iter.check237, %vec.epilog.iter.check264
  %vec.epilog.resume.val260 = phi i64 [ %n.vec240, %vec.epilog.iter.check264 ], [ 0, %vector.main.loop.iter.check237 ]
  %bc.merge.rdx = phi float [ %i.fv, %vec.epilog.iter.check264 ], [ %.sroa.speculated28.i, %vector.main.loop.iter.check237 ]
  %n.vec267 = and i64 %i.fc, 8589934584           ; 4 uses
  %i.fw = trunc i64 %n.vec267 to i32
  %i.fx = add i32 %.2.lcssa.i, %i.fw
  %i.fy = shl nuw nsw i64 %n.vec267, 2
  %i.fz = getelementptr i8, ptr %.221.lcssa.i, i64 %i.fy
  %broadcast.splatinsert268 = insertelement <8 x float> poison, float %bc.merge.rdx, i64 0
  %broadcast.splat269 = shufflevector <8 x float> %broadcast.splatinsert268, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body270

vec.epilog.vector.body270:                        ; preds = %vec.epilog.vector.body270, %vec.epilog.ph266
  %index271 = phi i64 [ %vec.epilog.resume.val260, %vec.epilog.ph266 ], [ %index.next275, %vec.epilog.vector.body270 ] ; 2 uses
  %vec.phi272 = phi <8 x float> [ %broadcast.splat269, %vec.epilog.ph266 ], [ %i.gc, %vec.epilog.vector.body270 ]
  %i.ga = shl i64 %index271, 2
  %next.gep273 = getelementptr i8, ptr %.221.lcssa.i, i64 %i.ga
  %wide.load274 = load <8 x float>, ptr %next.gep273, align 4, !tbaa !63
  %i.gb = call fast <8 x float> @llvm.fabs.v8f32(<8 x float> %wide.load274)
  %i.gc = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi272, <8 x float> %i.gb) ; 2 uses
  %index.next275 = add nuw i64 %index271, 8       ; 2 uses
  %i.gd = icmp eq i64 %index.next275, %n.vec267
  br i1 %i.gd, label %vec.epilog.middle.block276, label %vec.epilog.vector.body270, !llvm.loop !430

vec.epilog.middle.block276:                       ; preds = %vec.epilog.vector.body270
  %i.ge = call nnan ninf nsz float @llvm.vector.reduce.fmax.v8f32(<8 x float> %i.gc) ; 2 uses
  %cmp.n277 = icmp eq i64 %i.fc, %n.vec267
  br i1 %cmp.n277, label %_ZN4ncnnL32lstm_dynamic_quantize_get_absmaxEPKfi.exit, label %.lr.ph83.i.preheader

.lr.ph83.i.preheader:                             ; preds = %iter.check262, %vec.epilog.iter.check264, %vec.epilog.middle.block276
  %.381.i.ph = phi i32 [ %.2.lcssa.i, %iter.check262 ], [ %i.ff, %vec.epilog.iter.check264 ], [ %i.fx, %vec.epilog.middle.block276 ]
  %.32280.i.ph = phi ptr [ %.221.lcssa.i, %iter.check262 ], [ %i.fh, %vec.epilog.iter.check264 ], [ %i.fz, %vec.epilog.middle.block276 ]
  %.05279.i.ph = phi float [ %.sroa.speculated28.i, %iter.check262 ], [ %i.fv, %vec.epilog.iter.check264 ], [ %i.ge, %vec.epilog.middle.block276 ]
  br label %.lr.ph83.i

.lr.ph83.i:                                       ; preds = %.lr.ph83.i.preheader, %.lr.ph83.i
  %.381.i = phi i32 [ %i.gi, %.lr.ph83.i ], [ %.381.i.ph, %.lr.ph83.i.preheader ]
  %.32280.i = phi ptr [ %i.gh, %.lr.ph83.i ], [ %.32280.i.ph, %.lr.ph83.i.preheader ] ; 2 uses
  %.05279.i = phi float [ %.sroa.speculated.i, %.lr.ph83.i ], [ %.05279.i.ph, %.lr.ph83.i.preheader ]
  %i.gf = load float, ptr %.32280.i, align 4, !tbaa !63
  %i.gg = call fast noundef nofpclass(nan inf) float @llvm.fabs.f32(float nofpclass(nan inf) %i.gf)
  %.sroa.speculated.i = call nnan ninf nsz float @llvm.maxnum.f32(float %.05279.i, float %i.gg) ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.32280.i, i64 4
  %i.gi = add nuw nsw i32 %.381.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.gi, %i.bw
  br i1 %exitcond.not.i, label %_ZN4ncnnL32lstm_dynamic_quantize_get_absmaxEPKfi.exit, label %.lr.ph83.i, !llvm.loop !431

_ZN4ncnnL32lstm_dynamic_quantize_get_absmaxEPKfi.exit: ; preds = %.lr.ph83.i, %middle.block254, %vec.epilog.middle.block276, %._crit_edge75.i
  %.052.lcssa.i = phi float [ %.sroa.speculated28.i, %._crit_edge75.i ], [ %i.ge, %vec.epilog.middle.block276 ], [ %i.fv, %middle.block254 ], [ %.sroa.speculated.i, %.lr.ph83.i ] ; 3 uses
  %i.gj = fcmp fast oeq float %.052.lcssa.i, 0.000000e+00
  br i1 %i.gj, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZN4ncnnL32lstm_dynamic_quantize_get_absmaxEPKfi.exit
  %i.gk = load i64, ptr %i.an, align 8, !tbaa !27
  %i.gl = load i32, ptr %i.am, align 8, !tbaa !61
  %i.gm = trunc i64 %i.gk to i32
  %i.gn = mul i32 %i.gl, %i.gm                    ; 2 uses
  %i.go = icmp sgt i32 %i.gn, 0
  br i1 %i.go, label %.lr.ph.preheader, label %_ZN4ncnn3Mat4fillIaEEvT_.exit

.lr.ph.preheader:                                 ; preds = %bb.aa
  %i.gp = load ptr, ptr %13, align 8, !tbaa !26
  %i.gq = zext nneg i32 %i.gn to i64
  call void @llvm.memset.p0.i64(ptr align 1 %i.gp, i8 0, i64 %i.gq, i1 false), !tbaa !76
  br label %_ZN4ncnn3Mat4fillIaEEvT_.exit

bb.ab:                                            ; preds = %_ZN4ncnnL32lstm_dynamic_quantize_get_absmaxEPKfi.exit
  %i.gr = fmul fast float %.052.lcssa.i, f0x3C010204
  store float %i.gr, ptr %i.d, align 4, !tbaa !63
  %i.gs = load ptr, ptr %13, align 8, !tbaa !26   ; 4 uses
  %i.gt = fdiv fast float 1.270000e+02, %.052.lcssa.i ; 9 uses
  %i.gu = invoke noundef i32 @_ZN4ncnn27cpu_support_x86_avx512_vnniEv()
          to label %.noexc119 unwind label %bb.ae

.noexc119:                                        ; preds = %bb.ab
  %.not.i111 = icmp eq i32 %i.gu, 0
  br i1 %.not.i111, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.noexc119
  invoke void @_ZN4ncnn43lstm_dynamic_quantize_scale2int8_avx512vnniEPKfifPa(ptr noundef %i.ca, i32 noundef %i.bw, float noundef nofpclass(nan inf) %i.gt, ptr noundef %i.gs)
          to label %_ZN4ncnn3Mat4fillIaEEvT_.exit unwind label %bb.ae

bb.ad:                                            ; preds = %.noexc119
  %i.gv = insertelement <16 x float> poison, float %i.gt, i64 0
  %i.gw = shufflevector <16 x float> %i.gv, <16 x float> poison, <16 x i32> zeroinitializer ; 3 uses
  br i1 %i.cb, label %.lr.ph.i117.preheader, label %._crit_edge.i112

.lr.ph.i117.preheader:                            ; preds = %bb.ad
  %i.gx = add nsw i32 %i.bw, -16                  ; 2 uses
  %i.gy = lshr i32 %i.gx, 4                       ; 2 uses
  %i.gz = add nuw nsw i32 %i.gy, 1                ; 2 uses
  %i.ha = icmp eq i32 %i.gy, 0
  br i1 %i.ha, label %.lr.ph.i117.epil.preheader, label %.lr.ph.i117.preheader.new

.lr.ph.i117.preheader.new:                        ; preds = %.lr.ph.i117.preheader
  %unroll_iter310 = and i32 %i.gz, 536870910
  br label %.lr.ph.i117

.lr.ph.i117:                                      ; preds = %.lr.ph.i117, %.lr.ph.i117.preheader.new
  %.055.i = phi ptr [ %i.ca, %.lr.ph.i117.preheader.new ], [ %i.hr, %.lr.ph.i117 ] ; 3 uses
  %.04153.i = phi ptr [ %i.gs, %.lr.ph.i117.preheader.new ], [ %i.hs, %.lr.ph.i117 ] ; 3 uses
  %niter311 = phi i32 [ 0, %.lr.ph.i117.preheader.new ], [ %niter311.next.1, %.lr.ph.i117 ]
  %i.hb = load <16 x float>, ptr %.055.i, align 1, !tbaa !76
  %i.hc = fmul fast <16 x float> %i.hb, %i.gw     ; 2 uses
  %i.hd = call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.hc)
  %i.he = fadd fast <16 x float> %i.hd, %i.hc
  %i.hf = call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.he, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.hg = call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.hf, <16 x i8> zeroinitializer, i16 -1)
  %i.hh = call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.hg, <16 x i8> splat (i8 -127))
  store <16 x i8> %i.hh, ptr %.04153.i, align 1, !tbaa !76
  %i.hi = getelementptr inbounds nuw i8, ptr %.055.i, i64 64
  %i.hj = getelementptr inbounds nuw i8, ptr %.04153.i, i64 16
  %i.hk = load <16 x float>, ptr %i.hi, align 1, !tbaa !76
  %i.hl = fmul fast <16 x float> %i.hk, %i.gw     ; 2 uses
  %i.hm = call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.hl)
  %i.hn = fadd fast <16 x float> %i.hm, %i.hl
  %i.ho = call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.hn, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.hp = call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.ho, <16 x i8> zeroinitializer, i16 -1)
  %i.hq = call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.hp, <16 x i8> splat (i8 -127))
  store <16 x i8> %i.hq, ptr %i.hj, align 1, !tbaa !76
  %i.hr = getelementptr inbounds nuw i8, ptr %.055.i, i64 128 ; 3 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %.04153.i, i64 32 ; 3 uses
  %niter311.next.1 = add i32 %niter311, 2         ; 2 uses
  %niter311.ncmp.1.not = icmp eq i32 %niter311.next.1, %unroll_iter310
  br i1 %niter311.ncmp.1.not, label %._crit_edge.loopexit.i118.unr-lcssa, label %.lr.ph.i117, !llvm.loop !5

._crit_edge.loopexit.i118.unr-lcssa:              ; preds = %.lr.ph.i117
  %i.ht = and i32 %i.gx, 16
  %lcmp.mod306.not.not = icmp eq i32 %i.ht, 0
  br i1 %lcmp.mod306.not.not, label %.lr.ph.i117.epil.preheader, label %._crit_edge.loopexit.i118

.lr.ph.i117.epil.preheader:                       ; preds = %._crit_edge.loopexit.i118.unr-lcssa, %.lr.ph.i117.preheader
  %.055.i.epil.init = phi ptr [ %i.ca, %.lr.ph.i117.preheader ], [ %i.hr, %._crit_edge.loopexit.i118.unr-lcssa ] ; 2 uses
  %.04153.i.epil.init = phi ptr [ %i.gs, %.lr.ph.i117.preheader ], [ %i.hs, %._crit_edge.loopexit.i118.unr-lcssa ] ; 2 uses
  %lcmp.mod309 = trunc i32 %i.gz to i1
  call void @llvm.assume(i1 %lcmp.mod309)
  %i.hu = load <16 x float>, ptr %.055.i.epil.init, align 1, !tbaa !76
  %i.hv = fmul fast <16 x float> %i.hu, %i.gw     ; 2 uses
  %i.hw = call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.hv)
  %i.hx = fadd fast <16 x float> %i.hw, %i.hv
  %i.hy = call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.hx, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.hz = call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.hy, <16 x i8> zeroinitializer, i16 -1)
  %i.ia = call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.hz, <16 x i8> splat (i8 -127))
  store <16 x i8> %i.ia, ptr %.04153.i.epil.init, align 1, !tbaa !76
  %i.ib = getelementptr inbounds nuw i8, ptr %.055.i.epil.init, i64 64
  %i.ic = getelementptr inbounds nuw i8, ptr %.04153.i.epil.init, i64 16
  br label %._crit_edge.loopexit.i118

._crit_edge.loopexit.i118:                        ; preds = %._crit_edge.loopexit.i118.unr-lcssa, %.lr.ph.i117.epil.preheader
  %.lcssa294 = phi ptr [ %i.hr, %._crit_edge.loopexit.i118.unr-lcssa ], [ %i.ib, %.lr.ph.i117.epil.preheader ]
  %.lcssa293 = phi ptr [ %i.hs, %._crit_edge.loopexit.i118.unr-lcssa ], [ %i.ic, %.lr.ph.i117.epil.preheader ]
  %i.id = and i32 %i.bw, 2147483632
  br label %._crit_edge.i112

._crit_edge.i112:                                 ; preds = %._crit_edge.loopexit.i118, %bb.ad
  %.041.lcssa.i = phi ptr [ %i.gs, %bb.ad ], [ %.lcssa293, %._crit_edge.loopexit.i118 ] ; 2 uses
  %.037.lcssa.i = phi i32 [ 0, %bb.ad ], [ %i.id, %._crit_edge.loopexit.i118 ] ; 3 uses
  %.0.lcssa.i113 = phi ptr [ %i.ca, %bb.ad ], [ %.lcssa294, %._crit_edge.loopexit.i118 ] ; 2 uses
  %i.ie = insertelement <8 x float> poison, float %i.gt, i64 0
  %i.if = shufflevector <8 x float> %i.ie, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ig = or disjoint i32 %.037.lcssa.i, 7
  %i.ih = icmp slt i32 %i.ig, %i.bw
  br i1 %i.ih, label %.lr.ph62.i, label %._crit_edge63.i

.lr.ph62.i:                                       ; preds = %._crit_edge.i112, %.lr.ph62.i
  %.160.i = phi ptr [ %i.ir, %.lr.ph62.i ], [ %.0.lcssa.i113, %._crit_edge.i112 ] ; 2 uses
  %.13859.i = phi i32 [ %i.it, %.lr.ph62.i ], [ %.037.lcssa.i, %._crit_edge.i112 ]
  %.14258.i = phi ptr [ %i.is, %.lr.ph62.i ], [ %.041.lcssa.i, %._crit_edge.i112 ] ; 2 uses
  %i.ii = load <8 x float>, ptr %.160.i, align 1, !tbaa !76
  %i.ij = fmul fast <8 x float> %i.ii, %i.if      ; 2 uses
  %i.ik = call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.ij)
  %i.il = fadd fast <8 x float> %i.ik, %i.ij
  %i.im = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.il)
  %i.in = call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.256(<8 x i32> %i.im, <16 x i8> zeroinitializer, i8 -1)
  %i.io = call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.in, <16 x i8> splat (i8 -127))
  %i.ip = bitcast <16 x i8> %i.io to <2 x i64>
  %i.iq = extractelement <2 x i64> %i.ip, i64 0
  store i64 %i.iq, ptr %.14258.i, align 8, !tbaa !79
  %i.ir = getelementptr inbounds nuw i8, ptr %.160.i, i64 32 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %.14258.i, i64 8 ; 2 uses
  %i.it = add nuw nsw i32 %.13859.i, 8            ; 3 uses
  %i.iu = or disjoint i32 %i.it, 7
  %i.iv = icmp slt i32 %i.iu, %i.bw
  br i1 %i.iv, label %.lr.ph62.i, label %._crit_edge63.i, !llvm.loop !6

._crit_edge63.i:                                  ; preds = %.lr.ph62.i, %._crit_edge.i112
  %.142.lcssa.i = phi ptr [ %.041.lcssa.i, %._crit_edge.i112 ], [ %i.is, %.lr.ph62.i ] ; 2 uses
  %.138.lcssa.i = phi i32 [ %.037.lcssa.i, %._crit_edge.i112 ], [ %i.it, %.lr.ph62.i ] ; 3 uses
  %.1.lcssa.i114 = phi ptr [ %.0.lcssa.i113, %._crit_edge.i112 ], [ %i.ir, %.lr.ph62.i ] ; 2 uses
  %i.iw = insertelement <4 x float> poison, float %i.gt, i64 0
  %i.ix = shufflevector <4 x float> %i.iw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.iy = or disjoint i32 %.138.lcssa.i, 3
  %i.iz = icmp slt i32 %i.iy, %i.bw
  br i1 %i.iz, label %.lr.ph71.i, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph71.i, %._crit_edge63.i
  %.243.lcssa.i = phi ptr [ %.142.lcssa.i, %._crit_edge63.i ], [ %i.md, %.lr.ph71.i ] ; 8 uses
  %.239.lcssa.i = phi i32 [ %.138.lcssa.i, %._crit_edge63.i ], [ %i.me, %.lr.ph71.i ] ; 7 uses
  %.2.lcssa.i115 = phi ptr [ %.1.lcssa.i114, %._crit_edge63.i ], [ %i.mc, %.lr.ph71.i ] ; 8 uses
  %i.ja = icmp slt i32 %.239.lcssa.i, %i.bw
  br i1 %i.ja, label %iter.check, label %_ZN4ncnn3Mat4fillIaEEvT_.exit

iter.check:                                       ; preds = %.preheader.i
  %i.jb = xor i32 %.239.lcssa.i, -1
  %i.jc = add i32 %i.bw, %i.jb                    ; 3 uses
  %i.jd = zext i32 %i.jc to i64
  %i.je = add nuw nsw i64 %i.jd, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.jc, 7
  br i1 %min.iters.check, label %.lr.ph78.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %.243.lcssa.i, i64 1
  %i.jf = xor i32 %.239.lcssa.i, -1
  %i.jg = add i32 %i.bw, %i.jf
  %i.jh = zext i32 %i.jg to i64                   ; 2 uses
  %scevgep214 = getelementptr i8, ptr %scevgep, i64 %i.jh
  %scevgep215 = getelementptr i8, ptr %.2.lcssa.i115, i64 4
  %i.ji = shl nuw nsw i64 %i.jh, 2
  %scevgep216 = getelementptr i8, ptr %scevgep215, i64 %i.ji
  %bound0 = icmp ult ptr %.243.lcssa.i, %scevgep216
  %bound1 = icmp ult ptr %.2.lcssa.i115, %scevgep214
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph78.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check217 = icmp ult i32 %i.jc, 63
  br i1 %min.iters.check217, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.jj = and i64 %i.je, 56
  %n.vec = and i64 %i.je, 8589934528              ; 6 uses
  %i.jk = shl nuw nsw i64 %n.vec, 2
  %i.jl = getelementptr i8, ptr %.2.lcssa.i115, i64 %i.jk
  %i.jm = trunc i64 %n.vec to i32
  %i.jn = add i32 %.239.lcssa.i, %i.jm
  %i.jo = getelementptr i8, ptr %.243.lcssa.i, i64 %n.vec
  %broadcast.splatinsert = insertelement <16 x float> poison, float %i.gt, i64 0
  %broadcast.splat = shufflevector <16 x float> %broadcast.splatinsert, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.jp = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.2.lcssa.i115, i64 %i.jp ; 4 uses
  %next.gep218 = getelementptr i8, ptr %.243.lcssa.i, i64 %index ; 4 uses
  %i.jq = getelementptr i8, ptr %next.gep, i64 64
  %i.jr = getelementptr i8, ptr %next.gep, i64 128
  %i.js = getelementptr i8, ptr %next.gep, i64 192
  %wide.load = load <16 x float>, ptr %next.gep, align 4, !tbaa !63, !alias.scope !439
  %wide.load219 = load <16 x float>, ptr %i.jq, align 4, !tbaa !63, !alias.scope !439
  %wide.load220 = load <16 x float>, ptr %i.jr, align 4, !tbaa !63, !alias.scope !439
  %wide.load221 = load <16 x float>, ptr %i.js, align 4, !tbaa !63, !alias.scope !439
  %i.jt = fmul fast <16 x float> %wide.load, %broadcast.splat
  %i.ju = fmul fast <16 x float> %wide.load219, %broadcast.splat
  %i.jv = fmul fast <16 x float> %wide.load220, %broadcast.splat
  %i.jw = fmul fast <16 x float> %wide.load221, %broadcast.splat
  %i.jx = call fast <16 x float> @llvm.round.v16f32(<16 x float> %i.jt)
  %i.jy = call fast <16 x float> @llvm.round.v16f32(<16 x float> %i.ju)
  %i.jz = call fast <16 x float> @llvm.round.v16f32(<16 x float> %i.jv)
  %i.ka = call fast <16 x float> @llvm.round.v16f32(<16 x float> %i.jw)
  %i.kb = fptosi <16 x float> %i.jx to <16 x i32>
  %i.kc = fptosi <16 x float> %i.jy to <16 x i32>
  %i.kd = fptosi <16 x float> %i.jz to <16 x i32>
  %i.ke = fptosi <16 x float> %i.ka to <16 x i32>
  %i.kf = call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.kb, <16 x i32> splat (i32 -127))
  %i.kg = call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.kc, <16 x i32> splat (i32 -127))
  %i.kh = call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.kd, <16 x i32> splat (i32 -127))
  %i.ki = call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.ke, <16 x i32> splat (i32 -127))
  %i.kj = call <16 x i32> @llvm.smin.v16i32(<16 x i32> %i.kf, <16 x i32> splat (i32 127))
  %i.kk = call <16 x i32> @llvm.smin.v16i32(<16 x i32> %i.kg, <16 x i32> splat (i32 127))
  %i.kl = call <16 x i32> @llvm.smin.v16i32(<16 x i32> %i.kh, <16 x i32> splat (i32 127))
  %i.km = call <16 x i32> @llvm.smin.v16i32(<16 x i32> %i.ki, <16 x i32> splat (i32 127))
  %i.kn = trunc nsw <16 x i32> %i.kj to <16 x i8>
  %i.ko = trunc nsw <16 x i32> %i.kk to <16 x i8>
  %i.kp = trunc nsw <16 x i32> %i.kl to <16 x i8>
  %i.kq = trunc nsw <16 x i32> %i.km to <16 x i8>
  %i.kr = getelementptr i8, ptr %next.gep218, i64 16
  %i.ks = getelementptr i8, ptr %next.gep218, i64 32
  %i.kt = getelementptr i8, ptr %next.gep218, i64 48
  store <16 x i8> %i.kn, ptr %next.gep218, align 1, !tbaa !76, !alias.scope !440, !noalias !439
  store <16 x i8> %i.ko, ptr %i.kr, align 1, !tbaa !76, !alias.scope !440, !noalias !439
  store <16 x i8> %i.kp, ptr %i.ks, align 1, !tbaa !76, !alias.scope !440, !noalias !439
  store <16 x i8> %i.kq, ptr %i.kt, align 1, !tbaa !76, !alias.scope !440, !noalias !439
  %index.next = add nuw i64 %index, 64            ; 2 uses
  %i.ku = icmp eq i64 %index.next, %n.vec
  br i1 %i.ku, label %middle.block, label %vector.body, !llvm.loop !435

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.je, %n.vec
  br i1 %cmp.n, label %_ZN4ncnn3Mat4fillIaEEvT_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.jj, 0
  br i1 %min.epilog.iters.check, label %.lr.ph78.i.preheader, label %vec.epilog.ph, !prof !78

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec224 = and i64 %i.je, 8589934584           ; 5 uses
  %i.kv = shl nuw nsw i64 %n.vec224, 2
  %i.kw = getelementptr i8, ptr %.2.lcssa.i115, i64 %i.kv
  %i.kx = trunc i64 %n.vec224 to i32
  %i.ky = add i32 %.239.lcssa.i, %i.kx
  %i.kz = getelementptr i8, ptr %.243.lcssa.i, i64 %n.vec224
  %broadcast.splatinsert225 = insertelement <8 x float> poison, float %i.gt, i64 0
  %broadcast.splat226 = shufflevector <8 x float> %broadcast.splatinsert225, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index227 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next231, %vec.epilog.vector.body ] ; 3 uses
  %i.la = shl i64 %index227, 2
  %next.gep228 = getelementptr i8, ptr %.2.lcssa.i115, i64 %i.la
  %next.gep229 = getelementptr i8, ptr %.243.lcssa.i, i64 %index227
  %wide.load230 = load <8 x float>, ptr %next.gep228, align 4, !tbaa !63, !alias.scope !439
  %i.lb = fmul fast <8 x float> %wide.load230, %broadcast.splat226
  %i.lc = call fast <8 x float> @llvm.round.v8f32(<8 x float> %i.lb)
  %i.ld = fptosi <8 x float> %i.lc to <8 x i32>
  %i.le = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.ld, <8 x i32> splat (i32 -127))
  %i.lf = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.le, <8 x i32> splat (i32 127))
  %i.lg = trunc nsw <8 x i32> %i.lf to <8 x i8>
  store <8 x i8> %i.lg, ptr %next.gep229, align 1, !tbaa !76, !alias.scope !440, !noalias !439
  %index.next231 = add nuw i64 %index227, 8       ; 2 uses
  %i.lh = icmp eq i64 %index.next231, %n.vec224
  br i1 %i.lh, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !436

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n232 = icmp eq i64 %i.je, %n.vec224
  br i1 %cmp.n232, label %_ZN4ncnn3Mat4fillIaEEvT_.exit, label %.lr.ph78.i.preheader

.lr.ph78.i.preheader:                             ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.377.i.ph = phi ptr [ %.2.lcssa.i115, %iter.check ], [ %.2.lcssa.i115, %vector.memcheck ], [ %i.jl, %vec.epilog.iter.check ], [ %i.kw, %vec.epilog.middle.block ] ; 3 uses
  %.34076.i.ph = phi i32 [ %.239.lcssa.i, %iter.check ], [ %.239.lcssa.i, %vector.memcheck ], [ %i.jn, %vec.epilog.iter.check ], [ %i.ky, %vec.epilog.middle.block ] ; 4 uses
  %.34475.i.ph = phi ptr [ %.243.lcssa.i, %iter.check ], [ %.243.lcssa.i, %vector.memcheck ], [ %i.jo, %vec.epilog.iter.check ], [ %i.kz, %vec.epilog.middle.block ] ; 3 uses
  %i.li = sub i32 %i.bw, %.34076.i.ph
  %.neg = add i32 %.34076.i.ph, 1
  %xtraiter312 = and i32 %i.li, 1
  %lcmp.mod313.not = icmp eq i32 %xtraiter312, 0
  br i1 %lcmp.mod313.not, label %.lr.ph78.i.prol.loopexit, label %.lr.ph78.i.prol

.lr.ph78.i.prol:                                  ; preds = %.lr.ph78.i.preheader
  %i.lj = getelementptr inbounds nuw i8, ptr %.377.i.ph, i64 4
  %i.lk = load float, ptr %.377.i.ph, align 4, !tbaa !63
  %i.ll = fmul fast float %i.lk, %i.gt
  %i.lm = call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.ll)
  %i.ln = fptosi float %i.lm to i32
  %spec.select.i51.i.prol = call i32 @llvm.smax.i32(i32 %i.ln, i32 -127)
  %.0.i52.i.prol = call i32 @llvm.smin.i32(i32 %spec.select.i51.i.prol, i32 127)
  %.0.i.i.prol = trunc nsw i32 %.0.i52.i.prol to i8
  %i.lo = getelementptr inbounds nuw i8, ptr %.34475.i.ph, i64 1
  store i8 %.0.i.i.prol, ptr %.34475.i.ph, align 1, !tbaa !76
  %i.lp = add nuw nsw i32 %.34076.i.ph, 1
  br label %.lr.ph78.i.prol.loopexit

.lr.ph78.i.prol.loopexit:                         ; preds = %.lr.ph78.i.prol, %.lr.ph78.i.preheader
  %.377.i.unr = phi ptr [ %.377.i.ph, %.lr.ph78.i.preheader ], [ %i.lj, %.lr.ph78.i.prol ]
  %.34076.i.unr = phi i32 [ %.34076.i.ph, %.lr.ph78.i.preheader ], [ %i.lp, %.lr.ph78.i.prol ]
  %.34475.i.unr = phi ptr [ %.34475.i.ph, %.lr.ph78.i.preheader ], [ %i.lo, %.lr.ph78.i.prol ]
  %i.lq = icmp eq i32 %i.bw, %.neg
  br i1 %i.lq, label %_ZN4ncnn3Mat4fillIaEEvT_.exit, label %.lr.ph78.i

.lr.ph71.i:                                       ; preds = %._crit_edge63.i, %.lr.ph71.i
  %.269.i = phi ptr [ %i.mc, %.lr.ph71.i ], [ %.1.lcssa.i114, %._crit_edge63.i ] ; 2 uses
  %.23968.i = phi i32 [ %i.me, %.lr.ph71.i ], [ %.138.lcssa.i, %._crit_edge63.i ]
  %.24367.i = phi ptr [ %i.md, %.lr.ph71.i ], [ %.142.lcssa.i, %._crit_edge63.i ] ; 2 uses
  %i.lr = load <4 x float>, ptr %.269.i, align 1, !tbaa !76
  %i.ls = fmul fast <4 x float> %i.lr, %i.ix      ; 2 uses
  %i.lt = call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.ls)
  %i.lu = fadd fast <4 x float> %i.lt, %i.ls
  %i.lv = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.lu) ; 2 uses
  %i.lw = call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.lv, <4 x i32> %i.lv)
  %i.lx = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.lw, <8 x i16> splat (i16 -127))
  %i.ly = call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.lx, <8 x i16> splat (i16 127))
  %i.lz = call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.ly, <8 x i16> poison)
  %i.ma = bitcast <16 x i8> %i.lz to <4 x i32>
  %i.mb = extractelement <4 x i32> %i.ma, i64 0
  store i32 %i.mb, ptr %.24367.i, align 4, !tbaa !45
  %i.mc = getelementptr inbounds nuw i8, ptr %.269.i, i64 16 ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %.24367.i, i64 4 ; 2 uses
  %i.me = add nuw nsw i32 %.23968.i, 4            ; 3 uses
  %i.mf = or disjoint i32 %i.me, 3
  %i.mg = icmp slt i32 %i.mf, %i.bw
  br i1 %i.mg, label %.lr.ph71.i, label %.preheader.i, !llvm.loop !7

.lr.ph78.i:                                       ; preds = %.lr.ph78.i.prol.loopexit, %.lr.ph78.i
  %.377.i = phi ptr [ %i.mn, %.lr.ph78.i ], [ %.377.i.unr, %.lr.ph78.i.prol.loopexit ] ; 3 uses
  %.34076.i = phi i32 [ %i.mt, %.lr.ph78.i ], [ %.34076.i.unr, %.lr.ph78.i.prol.loopexit ]
  %.34475.i = phi ptr [ %i.ms, %.lr.ph78.i ], [ %.34475.i.unr, %.lr.ph78.i.prol.loopexit ] ; 3 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %.377.i, i64 4
  %i.mi = load float, ptr %.377.i, align 4, !tbaa !63
  %i.mj = fmul fast float %i.mi, %i.gt
  %i.mk = call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.mj)
  %i.ml = fptosi float %i.mk to i32
  %spec.select.i51.i = call i32 @llvm.smax.i32(i32 %i.ml, i32 -127)
  %.0.i52.i = call i32 @llvm.smin.i32(i32 %spec.select.i51.i, i32 127)
  %.0.i.i = trunc nsw i32 %.0.i52.i to i8
  %i.mm = getelementptr inbounds nuw i8, ptr %.34475.i, i64 1
  store i8 %.0.i.i, ptr %.34475.i, align 1, !tbaa !76
  %i.mn = getelementptr inbounds nuw i8, ptr %.377.i, i64 8
  %i.mo = load float, ptr %i.mh, align 4, !tbaa !63
  %i.mp = fmul fast float %i.mo, %i.gt
  %i.mq = call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.mp)
  %i.mr = fptosi float %i.mq to i32
  %spec.select.i51.i.1 = call i32 @llvm.smax.i32(i32 %i.mr, i32 -127)
  %.0.i52.i.1 = call i32 @llvm.smin.i32(i32 %spec.select.i51.i.1, i32 127)
  %.0.i.i.1 = trunc nsw i32 %.0.i52.i.1 to i8
  %i.ms = getelementptr inbounds nuw i8, ptr %.34475.i, i64 2
  store i8 %.0.i.i.1, ptr %i.mm, align 1, !tbaa !76
  %i.mt = add nuw nsw i32 %.34076.i, 2            ; 2 uses
  %exitcond.not.i116.1 = icmp eq i32 %i.mt, %i.bw
  br i1 %exitcond.not.i116.1, label %_ZN4ncnn3Mat4fillIaEEvT_.exit, label %.lr.ph78.i, !llvm.loop !437

bb.ae:                                            ; preds = %bb.ac, %bb.ab
  %i.mu = landingpad { ptr, i32 }
          cleanup                                 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  %i.mv = load ptr, ptr %i.ak, align 8, !tbaa !24 ; 2 uses
  %.not.i = icmp eq ptr %i.mv, null
  br i1 %.not.i, label %_ZN4ncnn3MatD2Ev.exit78, label %bb.ag

_ZN4ncnn3Mat4fillIaEEvT_.exit:                    ; preds = %.lr.ph78.i.prol.loopexit, %.lr.ph78.i, %middle.block, %vec.epilog.middle.block, %.lr.ph.preheader, %bb.aa, %.preheader.i, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #9
  store i32 0, ptr %i.f, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #9
  %i.mw = load i32, ptr %i.c, align 4, !tbaa !45
  %i.mx = ashr i32 %i.mw, 2
  store i32 %i.mx, ptr %i.g, align 4, !tbaa !45
  %i.my = load i32, ptr %i.ap, align 4, !tbaa !50
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.m, i32 %i.my)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 12, ptr nonnull @_ZN4ncnnL9lstm_int8ERKNS_3MatES2_RS0_iS2_S2_S2_S2_S3_S3_RKNS_6OptionE.omp_outlined, ptr nonnull %i.g, ptr nonnull %0, ptr nonnull %i.e, ptr nonnull %13, ptr nonnull %1, ptr nonnull %i.d, ptr nonnull %6, ptr nonnull %4, ptr nonnull %5, ptr nonnull %11, ptr nonnull %i.a, ptr nonnull %i.b)
  %i.mz = load i32, ptr %i.g, align 4, !tbaa !45
  %i.na = shl i32 %i.mz, 2
  %i.nb = load i32, ptr %i.f, align 4, !tbaa !45
  %i.nc = add nsw i32 %i.nb, %i.na                ; 2 uses
  store i32 %i.nc, ptr %i.f, align 4, !tbaa !45
  %i.nd = load i32, ptr %i.c, align 4, !tbaa !45
  %i.ne = sub nsw i32 %i.nd, %i.nc
  %i.nf = ashr i32 %i.ne, 1
  store i32 %i.nf, ptr %i.g, align 4, !tbaa !45
  %i.ng = load i32, ptr %i.ap, align 4, !tbaa !50
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.m, i32 %i.ng)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 13, ptr nonnull @_ZN4ncnnL9lstm_int8ERKNS_3MatES2_RS0_iS2_S2_S2_S2_S3_S3_RKNS_6OptionE.omp_outlined.5, ptr nonnull %i.g, ptr nonnull %i.f, ptr nonnull %0, ptr nonnull %i.e, ptr nonnull %13, ptr nonnull %1, ptr nonnull %i.d, ptr nonnull %6, ptr nonnull %4, ptr nonnull %5, ptr nonnull %11, ptr nonnull %i.a, ptr nonnull %i.b)
  %i.nh = load i32, ptr %i.g, align 4, !tbaa !45
  %i.ni = shl i32 %i.nh, 1
  %i.nj = load i32, ptr %i.f, align 4, !tbaa !45
  %i.nk = add nsw i32 %i.nj, %i.ni
  store i32 %i.nk, ptr %i.f, align 4, !tbaa !45
  %i.nl = load i32, ptr %i.ap, align 4, !tbaa !50
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.m, i32 %i.nl)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 13, ptr nonnull @_ZN4ncnnL9lstm_int8ERKNS_3MatES2_RS0_iS2_S2_S2_S2_S3_S3_RKNS_6OptionE.omp_outlined.6, ptr nonnull %i.c, ptr nonnull %i.f, ptr nonnull %0, ptr nonnull %i.e, ptr nonnull %13, ptr nonnull %1, ptr nonnull %i.d, ptr nonnull %6, ptr nonnull %4, ptr nonnull %5, ptr nonnull %11, ptr nonnull %i.a, ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #9
  %i.nm = load i32, ptr %i.e, align 4, !tbaa !45
  %i.nn = load ptr, ptr %2, align 8, !tbaa !26
  %i.no = load i32, ptr %i.s, align 4, !tbaa !65
  %i.np = sext i32 %i.no to i64
  %i.nq = sext i32 %i.nm to i64
  %i.nr = mul nsw i64 %i.np, %i.nq
  %i.ns = load i64, ptr %i.aq, align 8, !tbaa !59
  %i.nt = mul i64 %i.nr, %i.ns
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nn, i64 %i.nt
  store ptr %i.nu, ptr %i.h, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #9
  %i.nv = load ptr, ptr %9, align 8, !tbaa !26
  store ptr %i.nv, ptr %i.i, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #9
  %i.nw = load ptr, ptr %8, align 8, !tbaa !26
  store ptr %i.nw, ptr %i.j, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #9
  %i.nx = load ptr, ptr %12, align 8, !tbaa !26
  store ptr %i.nx, ptr %i.k, align 8, !tbaa !75
  store i32 0, ptr %i.f, align 4, !tbaa !45
  %i.ny = load i32, ptr %i.c, align 4, !tbaa !45
  %i.nz = ashr i32 %i.ny, 4
  store i32 %i.nz, ptr %i.g, align 4, !tbaa !45
  %i.oa = load i32, ptr %i.ap, align 4, !tbaa !50
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.m, i32 %i.oa)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 8, ptr nonnull @_ZN4ncnnL9lstm_int8ERKNS_3MatES2_RS0_iS2_S2_S2_S2_S3_S3_RKNS_6OptionE.omp_outlined.7, ptr nonnull %i.g, ptr nonnull %11, ptr nonnull %i.i, ptr nonnull %i.b, ptr nonnull %i.c, ptr nonnull %i.j, ptr nonnull %i.h, ptr nonnull %i.k)
  %i.ob = load i32, ptr %i.g, align 4, !tbaa !45
  %i.oc = shl i32 %i.ob, 4
  %i.od = load i32, ptr %i.f, align 4, !tbaa !45
  %i.oe = add nsw i32 %i.od, %i.oc                ; 2 uses
  store i32 %i.oe, ptr %i.f, align 4, !tbaa !45
  %i.of = load i32, ptr %i.c, align 4, !tbaa !45
  %i.og = sub nsw i32 %i.of, %i.oe
  %i.oh = ashr i32 %i.og, 3
  store i32 %i.oh, ptr %i.g, align 4, !tbaa !45
  %i.oi = load i32, ptr %i.ap, align 4, !tbaa !50
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.m, i32 %i.oi)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 9, ptr nonnull @_ZN4ncnnL9lstm_int8ERKNS_3MatES2_RS0_iS2_S2_S2_S2_S3_S3_RKNS_6OptionE.omp_outlined.8, ptr nonnull %i.g, ptr nonnull %i.f, ptr nonnull %11, ptr nonnull %i.i, ptr nonnull %i.b, ptr nonnull %i.c, ptr nonnull %i.j, ptr nonnull %i.h, ptr nonnull %i.k)
  %i.oj = load i32, ptr %i.g, align 4, !tbaa !45
  %i.ok = shl i32 %i.oj, 3
  %i.ol = load i32, ptr %i.f, align 4, !tbaa !45
  %i.om = add nsw i32 %i.ol, %i.ok                ; 2 uses
  store i32 %i.om, ptr %i.f, align 4, !tbaa !45
  %i.on = load i32, ptr %i.c, align 4, !tbaa !45
  %i.oo = sub nsw i32 %i.on, %i.om
  %i.op = ashr i32 %i.oo, 2
  store i32 %i.op, ptr %i.g, align 4, !tbaa !45
  %i.oq = load i32, ptr %i.ap, align 4, !tbaa !50
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.m, i32 %i.oq)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 9, ptr nonnull @_ZN4ncnnL9lstm_int8ERKNS_3MatES2_RS0_iS2_S2_S2_S2_S3_S3_RKNS_6OptionE.omp_outlined.9, ptr nonnull %i.g, ptr nonnull %i.f, ptr nonnull %11, ptr nonnull %i.i, ptr nonnull %i.b, ptr nonnull %i.c, ptr nonnull %i.j, ptr nonnull %i.h, ptr nonnull %i.k)
  %i.or = load i32, ptr %i.g, align 4, !tbaa !45
  %i.os = shl i32 %i.or, 2
  %i.ot = load i32, ptr %i.f, align 4, !tbaa !45
  %i.ou = add nsw i32 %i.ot, %i.os
  store i32 %i.ou, ptr %i.f, align 4, !tbaa !45
  %i.ov = load i32, ptr %i.ap, align 4, !tbaa !50
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.m, i32 %i.ov)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 8, ptr nonnull @_ZN4ncnnL9lstm_int8ERKNS_3MatES2_RS0_iS2_S2_S2_S2_S3_S3_RKNS_6OptionE.omp_outlined.10, ptr nonnull %i.c, ptr nonnull %i.f, ptr nonnull %11, ptr nonnull %i.i, ptr nonnull %i.b, ptr nonnull %i.j, ptr nonnull %i.h, ptr nonnull %i.k)
  %i.ow = load i32, ptr %i.b, align 4, !tbaa !45  ; 2 uses
  %i.ox = load i32, ptr %i.c, align 4, !tbaa !45
  %.not73 = icmp eq i32 %i.ow, %i.ox
  br i1 %.not73, label %bb.am, label %bb.af

bb.af:                                            ; preds = %_ZN4ncnn3Mat4fillIaEEvT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #9
  store i32 0, ptr %i.l, align 4, !tbaa !45
  %i.oy = load i32, ptr %i.ap, align 4, !tbaa !50
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.m, i32 %i.oy)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 7, ptr nonnull @_ZN4ncnnL9lstm_int8ERKNS_3MatES2_RS0_iS2_S2_S2_S2_S3_S3_RKNS_6OptionE.omp_outlined.11, ptr nonnull %i.b, ptr nonnull %i.l, ptr nonnull %7, ptr nonnull %12, ptr nonnull %i.c, ptr nonnull %i.j, ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #9
  %.pre158 = load i32, ptr %i.b, align 4, !tbaa !45
  br label %bb.am

bb.ag:                                            ; preds = %bb.ae
  %i.oz = atomicrmw add ptr %i.mv, i32 -1 acq_rel, align 4
  %i.pa = icmp eq i32 %i.oz, 1
  br i1 %i.pa, label %bb.ah, label %_ZN4ncnn3MatD2Ev.exit78

bb.ah:                                            ; preds = %bb.ag
  %i.pb = load ptr, ptr %i.al, align 8, !tbaa !25 ; 3 uses
  %.not3.i = icmp eq ptr %i.pb, null
  %i.pc = load ptr, ptr %13, align 8, !tbaa !26   ; 3 uses
  br i1 %.not3.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.pd = load ptr, ptr %i.pb, align 8, !tbaa !18
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 24
  %i.pf = load ptr, ptr %i.pe, align 8
  invoke void %i.pf(ptr noundef nonnull align 8 dereferenceable(8) %i.pb, ptr noundef %i.pc)
          to label %_ZN4ncnn3MatD2Ev.exit78 unwind label %bb.al, !inline_history !0

bb.aj:                                            ; preds = %bb.ah
  %.not.i108 = icmp eq ptr %i.pc, null
  br i1 %.not.i108, label %_ZN4ncnn3MatD2Ev.exit78, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @free(ptr noundef nonnull %i.pc) #9
  br label %_ZN4ncnn3MatD2Ev.exit78

bb.al:                                            ; preds = %bb.ai
  %i.pg = landingpad { ptr, i32 }
          catch ptr null
  %i.ph = extractvalue { ptr, i32 } %i.pg, 0
  call void @__clang_call_terminate(ptr %i.ph) #21
  unreachable

bb.am:                                            ; preds = %bb.af, %_ZN4ncnn3Mat4fillIaEEvT_.exit
  %i.pi = phi i32 [ %.pre158, %bb.af ], [ %i.ow, %_ZN4ncnn3Mat4fillIaEEvT_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  %i.pj = add nuw nsw i32 %.0138, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.pj, %i.r
  br i1 %exitcond.not, label %._crit_edge, label %bb.z, !llvm.loop !438

bb.an:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit75, %bb.b
  ret void
end_hunk_2
begin_hunk_3_@_ZN4ncnnL9lstm_int8ERKNS_3MatES2_RS0_iS2_S2_S2_S2_S3_S3_RKNS_6OptionE.omp_outlined.6:bb.a

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
end_hunk_3
