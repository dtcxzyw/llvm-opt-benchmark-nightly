inline.NumInlined: 74
inline.NumDeleted: 43
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZNK4ncnn26DeconvolutionDepthWise_x867forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 %i.g, ptr %i.b, align 4, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 1, ptr %i.c, align 4, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !72
  %i.h = load i32, ptr %0, align 4, !tbaa !72     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !72
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !72
  %i.k = load i32, ptr %i.a, align 4, !tbaa !72   ; 2 uses
  %.not235 = icmp sgt i32 %i.k, %i.j
  br i1 %.not235, label %._crit_edge237, label %_ZN4ncnn3MatD2Ev.exit68.lr.ph

_ZN4ncnn3MatD2Ev.exit68.lr.ph:                    ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 536
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 44
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 268
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 440
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 216
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 224
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 232
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 212
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 220
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 228
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 280
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 288 ; 3 uses
  %i.ab = load i32, ptr %7, align 4, !tbaa !72    ; 3 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %_ZN4ncnn3MatD2Ev.exit68.preheader, label %._crit_edge237

_ZN4ncnn3MatD2Ev.exit68.preheader:                ; preds = %_ZN4ncnn3MatD2Ev.exit68.lr.ph
  %i.ad = sext i32 %i.k to i64
  %i.ae = add nsw i32 %i.j, 1
  br label %_ZN4ncnn3MatD2Ev.exit68

_ZN4ncnn3MatD2Ev.exit68:                          ; preds = %_ZN4ncnn3MatD2Ev.exit68.preheader, %_ZN4ncnn3MatD2Ev.exit
  %i.af = phi i32 [ %i.ab, %_ZN4ncnn3MatD2Ev.exit68.preheader ], [ %i.bj, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.ag = phi i32 [ %i.ab, %_ZN4ncnn3MatD2Ev.exit68.preheader ], [ %i.bk, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %indvars.iv242 = phi i64 [ %i.ad, %_ZN4ncnn3MatD2Ev.exit68.preheader ], [ %indvars.iv.next243, %_ZN4ncnn3MatD2Ev.exit ] ; 5 uses
  %i.ah = load ptr, ptr %i.n, align 8, !tbaa !18
  %i.ai = load i32, ptr %5, align 4, !tbaa !72
  %i.aj = trunc nsw i64 %indvars.iv242 to i32
  %i.ak = shl i32 %i.aj, 2
  %i.al = mul i32 %i.ak, %i.ai
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %i.am
  %i.ao = load ptr, ptr %6, align 8, !tbaa !18, !noalias !132
  %i.ap = load i64, ptr %i.p, align 8, !tbaa !20, !noalias !132
  %i.aq = mul i64 %i.ap, %indvars.iv242
  %i.ar = load i64, ptr %i.q, align 8, !tbaa !70, !noalias !132 ; 2 uses
  %i.as = mul i64 %i.aq, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.as
  %i.au = icmp sgt i32 %i.ag, 0
  br i1 %i.au, label %.preheader219.lr.ph, label %_ZN4ncnn3MatD2Ev.exit

.preheader219.lr.ph:                              ; preds = %_ZN4ncnn3MatD2Ev.exit68
  %i.av = load i32, ptr %i.o, align 4, !tbaa !80, !noalias !132
  %i.aw = sext i32 %i.av to i64
  %i.ax = mul i64 %i.ar, %i.aw
  %i.ay = load i32, ptr %8, align 4, !tbaa !72    ; 2 uses
  %i.az = icmp sgt i32 %i.ay, 0
  br i1 %i.az, label %.preheader219.preheader, label %_ZN4ncnn3MatD2Ev.exit

.preheader219.preheader:                          ; preds = %.preheader219.lr.ph
  %i.ba = load ptr, ptr %3, align 8, !tbaa !18, !noalias !135
  %i.bb = load i64, ptr %i.l, align 8, !tbaa !20, !noalias !135
  %i.bc = mul i64 %i.bb, %indvars.iv242
  %i.bd = load i64, ptr %i.m, align 8, !tbaa !70, !noalias !135
  %i.be = mul i64 %i.bc, %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.be
  %.idx = shl nsw i64 %indvars.iv242, 4
  br label %.preheader219

.preheader219:                                    ; preds = %.preheader219.preheader, %._crit_edge231
  %i.bg = phi i32 [ %i.bl, %._crit_edge231 ], [ %i.af, %.preheader219.preheader ]
  %i.bh = phi i32 [ %i.bm, %._crit_edge231 ], [ %i.ay, %.preheader219.preheader ] ; 2 uses
  %.054234 = phi ptr [ %.1.lcssa, %._crit_edge231 ], [ %i.bf, %.preheader219.preheader ] ; 2 uses
  %.055233 = phi i32 [ %.neg216.a, %._crit_edge231 ], [ 0, %.preheader219.preheader ]
  %i.bi = icmp sgt i32 %i.bh, 0
  %.neg216.a = add nuw nsw i32 %.055233, 1        ; 3 uses
  br i1 %i.bi, label %.lr.ph230, label %._crit_edge231

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %._crit_edge231, %.preheader219.lr.ph, %_ZN4ncnn3MatD2Ev.exit68
  %i.bj = phi i32 [ %i.af, %_ZN4ncnn3MatD2Ev.exit68 ], [ %i.af, %.preheader219.lr.ph ], [ %i.bl, %._crit_edge231 ]
  %i.bk = phi i32 [ %i.ag, %_ZN4ncnn3MatD2Ev.exit68 ], [ %i.ag, %.preheader219.lr.ph ], [ %i.bl, %._crit_edge231 ]
  %indvars.iv.next243 = add nsw i64 %indvars.iv242, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next243 to i32
  %exitcond245.not = icmp eq i32 %i.ae, %lftr.wideiv
  br i1 %exitcond245.not, label %._crit_edge237, label %_ZN4ncnn3MatD2Ev.exit68, !llvm.loop !138

._crit_edge231.loopexit:                          ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit
  %.pre = load i32, ptr %7, align 4, !tbaa !72
  br label %._crit_edge231

._crit_edge231:                                   ; preds = %.preheader219, %._crit_edge231.loopexit
  %i.bl = phi i32 [ %.pre, %._crit_edge231.loopexit ], [ %i.bg, %.preheader219 ] ; 4 uses
  %i.bm = phi i32 [ %i.jr, %._crit_edge231.loopexit ], [ %i.bh, %.preheader219 ]
  %.1.lcssa = phi ptr [ %i.jp, %._crit_edge231.loopexit ], [ %.054234, %.preheader219 ]
  %i.bn = icmp slt i32 %.neg216.a, %i.bl
  br i1 %i.bn, label %.preheader219, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !140

.lr.ph230:                                        ; preds = %.preheader219, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit
  %.1229 = phi ptr [ %i.jp, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ], [ %.054234, %.preheader219 ] ; 2 uses
  %.057228 = phi i32 [ %i.jq, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ], [ 0, %.preheader219 ] ; 2 uses
  %i.bo = load i32, ptr %i.r, align 4, !tbaa !84
  %.not63 = icmp eq i32 %i.bo, 0
  br i1 %.not63, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph230
  %i.bp = load ptr, ptr %i.s, align 8, !tbaa !18
  %i.bq = getelementptr inbounds i8, ptr %i.bp, i64 %.idx
  %i.br = load <4 x float>, ptr %i.bq, align 1, !tbaa !112
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph230
  %.0210 = phi nsz <4 x float> [ zeroinitializer, %.lr.ph230 ], [ %i.br, %bb.c ] ; 2 uses
  %i.bs = load i32, ptr %i.t, align 8, !tbaa !44  ; 2 uses
  %i.bt = icmp sgt i32 %i.bs, 0
  br i1 %i.bt, label %.lr.ph224, label %._crit_edge

.lr.ph224:                                        ; preds = %bb.d
  %i.bu = load i32, ptr %i.u, align 8, !tbaa !97
  %i.bv = load i32, ptr %9, align 4, !tbaa !72
  %invariant.op226 = sub i32 %.neg216.a, %i.bv
  %.neg218 = add nuw nsw i32 %.057228, 1
  br label %bb.h

._crit_edge:                                      ; preds = %.loopexit, %bb.d
  %.1211.lcssa = phi <4 x float> [ %.0210, %bb.d ], [ %.4, %.loopexit ] ; 10 uses
  %i.bw = load i32, ptr %i.z, align 8, !tbaa !108
  switch i32 %i.bw, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit [
    i32 1, label %bb.e
    i32 2, label %.noexc76
    i32 3, label %bb.f
    i32 4, label %.noexc77
    i32 5, label %.noexc78
    i32 6, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge
  %i.bx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.1211.lcssa, <4 x float> zeroinitializer)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc76:                                         ; preds = %._crit_edge
  %i.by = load ptr, ptr %i.aa, align 8, !tbaa !18
  %i.bz = load float, ptr %i.by, align 4, !tbaa !53
  %i.ca = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.1211.lcssa)
  %i.cb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.1211.lcssa)
  %i.cc = insertelement <4 x float> poison, float %i.bz, i64 0
  %i.cd = shufflevector <4 x float> %i.cc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ce = fmul fast <4 x float> %i.cd, %i.cb
  %i.cf = fadd fast <4 x float> %i.ce, %i.ca
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.f:                                             ; preds = %._crit_edge
  %i.cg = load ptr, ptr %i.aa, align 8, !tbaa !18 ; 2 uses
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !53
  %i.ci = insertelement <4 x float> poison, float %i.ch, i64 0
  %i.cj = shufflevector <4 x float> %i.ci, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !53
  %i.cm = insertelement <4 x float> poison, float %i.cl, i64 0
  %i.cn = shufflevector <4 x float> %i.cm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.co = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.1211.lcssa, <4 x float> nofpclass(nan inf) %i.cj)
  %i.cp = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.co, <4 x float> nofpclass(nan inf) %i.cn)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc77:                                         ; preds = %._crit_edge
  %i.cq = fneg fast <4 x float> %.1211.lcssa
  %i.cr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.cq, <4 x float> splat (float f0x42B0C0A5))
  %i.cs = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.cr, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ct = fmul fast <4 x float> %i.cs, splat (float f0x3FB8AA3B)
  %i.cu = fadd fast <4 x float> %i.ct, splat (float 5.000000e-01) ; 2 uses
  %i.cv = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.cu)
  %i.cw = sitofp fast <4 x i32> %i.cv to <4 x float> ; 2 uses
  %i.cx = fcmp fast olt <4 x float> %i.cu, %i.cw
  %i.cy = select <4 x i1> %i.cx, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.cz = fsub fast <4 x float> %i.cw, %i.cy      ; 2 uses
  %i.da = fmul fast <4 x float> %i.cz, splat (float f0x3F317218)
  %i.db = fsub fast <4 x float> %i.cs, %i.da      ; 8 uses
  %i.dc = fmul fast <4 x float> %i.db, %i.db
  %i.dd = fmul fast <4 x float> %i.db, splat (float f0x39506967)
  %i.de = fadd fast <4 x float> %i.dd, splat (float f0x3AB743CE)
  %i.df = fmul fast <4 x float> %i.de, %i.db
  %i.dg = fadd fast <4 x float> %i.df, splat (float f0x3C088908)
  %i.dh = fmul fast <4 x float> %i.dg, %i.db
  %i.di = fadd fast <4 x float> %i.dh, splat (float f0x3D2AA9C1)
  %i.dj = fmul fast <4 x float> %i.di, %i.db
  %i.dk = fadd fast <4 x float> %i.dj, splat (float f0x3E2AAAAA)
  %i.dl = fmul fast <4 x float> %i.dk, %i.db
  %i.dm = fadd fast <4 x float> %i.dl, splat (float 5.000000e-01)
  %i.dn = fmul fast <4 x float> %i.dc, %i.dm
  %i.do = fadd fast <4 x float> %i.db, splat (float 1.000000e+00)
  %i.dp = fadd fast <4 x float> %i.do, %i.dn
  %i.dq = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.cz)
  %i.dr = shl <4 x i32> %i.dq, splat (i32 23)
  %i.ds = add <4 x i32> %i.dr, splat (i32 1065353216)
  %i.dt = bitcast <4 x i32> %i.ds to <4 x float>
  %i.du = fmul fast <4 x float> %i.dp, %i.dt
  %i.dv = fadd fast <4 x float> %i.du, splat (float 1.000000e+00)
  %i.dw = fdiv fast <4 x float> splat (float 1.000000e+00), %i.dv
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc78:                                         ; preds = %._crit_edge
  %i.dx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %.1211.lcssa, <4 x float> splat (float f0x42B0C0A5))
  %i.dy = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dx, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.dz = fmul fast <4 x float> %i.dy, splat (float f0x3FB8AA3B)
  %i.ea = fadd fast <4 x float> %i.dz, splat (float 5.000000e-01) ; 2 uses
  %i.eb = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ea)
  %i.ec = sitofp fast <4 x i32> %i.eb to <4 x float> ; 2 uses
  %i.ed = fcmp fast olt <4 x float> %i.ea, %i.ec
  %i.ee = select <4 x i1> %i.ed, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ef = fsub fast <4 x float> %i.ec, %i.ee      ; 2 uses
  %i.eg = fmul fast <4 x float> %i.ef, splat (float f0x3F317218)
  %i.eh = fsub fast <4 x float> %i.dy, %i.eg      ; 8 uses
  %i.ei = fmul fast <4 x float> %i.eh, %i.eh
  %i.ej = fmul fast <4 x float> %i.eh, splat (float f0x39506967)
  %i.ek = fadd fast <4 x float> %i.ej, splat (float f0x3AB743CE)
  %i.el = fmul fast <4 x float> %i.ek, %i.eh
  %i.em = fadd fast <4 x float> %i.el, splat (float f0x3C088908)
  %i.en = fmul fast <4 x float> %i.em, %i.eh
  %i.eo = fadd fast <4 x float> %i.en, splat (float f0x3D2AA9C1)
  %i.ep = fmul fast <4 x float> %i.eo, %i.eh
  %i.eq = fadd fast <4 x float> %i.ep, splat (float f0x3E2AAAAA)
  %i.er = fmul fast <4 x float> %i.eq, %i.eh
  %i.es = fadd fast <4 x float> %i.er, splat (float 5.000000e-01)
  %i.et = fmul fast <4 x float> %i.ei, %i.es
  %i.eu = fadd fast <4 x float> %i.eh, splat (float 1.000000e+00)
  %i.ev = fadd fast <4 x float> %i.eu, %i.et
  %i.ew = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ef)
  %i.ex = shl <4 x i32> %i.ew, splat (i32 23)
  %i.ey = add <4 x i32> %i.ex, splat (i32 1065353216)
  %i.ez = bitcast <4 x i32> %i.ey to <4 x float>
  %i.fa = fmul fast <4 x float> %i.ev, %i.ez
  %i.fb = fadd fast <4 x float> %i.fa, splat (float 1.000000e+00) ; 2 uses
  %i.fc = fcmp fast ole <4 x float> %i.fb, zeroinitializer
  %i.fd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.fb, <4 x float> splat (float f0x00800000))
  %i.fe = bitcast <4 x float> %i.fd to <4 x i32>  ; 2 uses
  %i.ff = lshr <4 x i32> %i.fe, splat (i32 23)
  %i.fg = and <4 x i32> %i.fe, splat (i32 -2139095041)
  %i.fh = or disjoint <4 x i32> %i.fg, splat (i32 1056964608)
  %i.fi = bitcast <4 x i32> %i.fh to <4 x float>  ; 3 uses
  %i.fj = add nsw <4 x i32> %i.ff, splat (i32 -127)
  %i.fk = sitofp fast <4 x i32> %i.fj to <4 x float> ; 2 uses
  %i.fl = fadd fast <4 x float> %i.fk, splat (float 1.000000e+00)
  %i.fm = fcmp fast olt <4 x float> %i.fi, splat (float f0x3F3504F3) ; 2 uses
  %i.fn = select <4 x i1> %i.fm, <4 x float> %i.fi, <4 x float> zeroinitializer
  %i.fo = fadd fast <4 x float> %i.fi, splat (float -1.000000e+00)
  %i.fp = select fast <4 x i1> %i.fm, <4 x float> %i.fk, <4 x float> %i.fl
  %i.fq = fadd fast <4 x float> %i.fo, %i.fn      ; 12 uses
  %i.fr = fmul fast <4 x float> %i.fq, %i.fq
  %i.fs = fmul fast <4 x float> %i.fq, splat (float f0x3D9021BB)
  %i.ft = fadd fast <4 x float> %i.fs, splat (float f0xBDEBD1B8)
  %i.fu = fmul fast <4 x float> %i.ft, %i.fq
  %i.fv = fadd fast <4 x float> %i.fu, splat (float f0x3DEF251A)
  %i.fw = fmul fast <4 x float> %i.fv, %i.fq
  %i.fx = fadd fast <4 x float> %i.fw, splat (float f0xBDFE5D4F)
  %i.fy = fmul fast <4 x float> %i.fx, %i.fq
  %i.fz = fadd fast <4 x float> %i.fy, splat (float f0x3E11E9BF)
  %i.ga = fmul fast <4 x float> %i.fz, %i.fq
  %i.gb = fadd fast <4 x float> %i.ga, splat (float f0xBE2AAE50)
  %i.gc = fmul fast <4 x float> %i.gb, %i.fq
  %i.gd = fadd fast <4 x float> %i.gc, splat (float f0x3E4CCEAC)
  %i.ge = fmul fast <4 x float> %i.gd, %i.fq
  %i.gf = fadd fast <4 x float> %i.ge, splat (float f0xBE7FFFFC)
  %i.gg = fmul fast <4 x float> %i.gf, %i.fq
  %i.gh = fadd fast <4 x float> %i.gg, splat (float f0x3EAAAAAA)
  %i.gi = fmul fast <4 x float> %i.gh, %i.fq
  %reass.mul.a = fmul fast <4 x float> %i.fp, splat (float f0x3F317218)
  %reass.add213 = fadd fast <4 x float> %i.gi, splat (float -5.000000e-01)
  %reass.mul214 = fmul fast <4 x float> %i.fr, %reass.add213
  %i.gj = fadd fast <4 x float> %reass.mul.a, %i.fq
  %i.gk = fadd fast <4 x float> %i.gj, %reass.mul214
  %.neg = fmul fast <4 x float> %i.gk, splat (float -2.000000e+00)
  %i.gl = select fast <4 x i1> %i.fc, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg
  %i.gm = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.gl, <4 x float> splat (float f0x42B0C0A5))
  %i.gn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.gm, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.go = fmul fast <4 x float> %i.gn, splat (float f0x3FB8AA3B)
  %i.gp = fadd fast <4 x float> %i.go, splat (float 5.000000e-01) ; 2 uses
  %i.gq = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.gp)
  %i.gr = sitofp fast <4 x i32> %i.gq to <4 x float> ; 2 uses
  %i.gs = fcmp fast olt <4 x float> %i.gp, %i.gr
  %i.gt = select <4 x i1> %i.gs, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.gu = fsub fast <4 x float> %i.gr, %i.gt      ; 2 uses
  %i.gv = fmul fast <4 x float> %i.gu, splat (float f0x3F317218)
  %i.gw = fsub fast <4 x float> %i.gn, %i.gv      ; 8 uses
  %i.gx = fmul fast <4 x float> %i.gw, %i.gw
  %i.gy = fmul fast <4 x float> %i.gw, splat (float f0x39506967)
  %i.gz = fadd fast <4 x float> %i.gy, splat (float f0x3AB743CE)
  %i.ha = fmul fast <4 x float> %i.gz, %i.gw
  %i.hb = fadd fast <4 x float> %i.ha, splat (float f0x3C088908)
  %i.hc = fmul fast <4 x float> %i.hb, %i.gw
  %i.hd = fadd fast <4 x float> %i.hc, splat (float f0x3D2AA9C1)
  %i.he = fmul fast <4 x float> %i.hd, %i.gw
  %i.hf = fadd fast <4 x float> %i.he, splat (float f0x3E2AAAAA)
  %i.hg = fmul fast <4 x float> %i.hf, %i.gw
  %i.hh = fadd fast <4 x float> %i.hg, splat (float 5.000000e-01)
  %i.hi = fmul fast <4 x float> %i.gx, %i.hh
  %i.hj = fadd fast <4 x float> %i.gw, splat (float 1.000000e+00)
  %i.hk = fadd fast <4 x float> %i.hj, %i.hi
  %i.hl = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.gu)
  %i.hm = shl <4 x i32> %i.hl, splat (i32 23)
  %i.hn = add <4 x i32> %i.hm, splat (i32 1065353216)
  %i.ho = bitcast <4 x i32> %i.hn to <4 x float>
  %i.hp = fmul fast <4 x float> %i.hk, %i.ho
  %i.hq = fadd fast <4 x float> %i.hp, splat (float 1.000000e+00)
  %i.hr = fdiv fast <4 x float> splat (float 2.000000e+00), %i.hq
  %i.hs = fadd fast <4 x float> %i.hr, splat (float -1.000000e+00)
  %i.ht = fmul fast <4 x float> %i.hs, %.1211.lcssa
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.g:                                             ; preds = %._crit_edge
  %i.hu = load ptr, ptr %i.aa, align 8, !tbaa !18 ; 2 uses
  %i.hv = load float, ptr %i.hu, align 4, !tbaa !53
  %i.hw = insertelement <4 x float> poison, float %i.hv, i64 0
  %i.hx = shufflevector <4 x float> %i.hw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hu, i64 4
  %i.hz = load float, ptr %i.hy, align 4, !tbaa !53
  %i.ia = insertelement <4 x float> poison, float %i.hz, i64 0
  %i.ib = shufflevector <4 x float> %i.ia, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ic = fmul fast <4 x float> %i.hx, %.1211.lcssa
  %i.id = fadd fast <4 x float> %i.ic, %i.ib
  %i.ie = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.id, <4 x float> zeroinitializer)
  %i.if = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ie, <4 x float> splat (float 1.000000e+00))
  %i.ig = fmul fast <4 x float> %i.if, %.1211.lcssa
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.h:                                             ; preds = %.lr.ph224, %.loopexit
  %.058223 = phi i32 [ 0, %.lr.ph224 ], [ %i.jo, %.loopexit ] ; 3 uses
  %.1211222 = phi <4 x float> [ %.0210, %.lr.ph224 ], [ %.4, %.loopexit ] ; 5 uses
  %i.ih = mul nsw i32 %i.bu, %.058223
  %.reass227 = add i32 %i.ih, %invariant.op226    ; 3 uses
  %i.ii = icmp slt i32 %.reass227, 0
  br i1 %i.ii, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ij = load i32, ptr %i.v, align 8, !tbaa !99  ; 2 uses
  %i.ik = srem i32 %.reass227, %i.ij
  %i.il = sdiv i32 %.reass227, %i.ij              ; 2 uses
  %.not64 = icmp eq i32 %i.ik, 0
  br i1 %.not64, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.im = load i32, ptr %10, align 4, !tbaa !72
  %.not65 = icmp slt i32 %i.il, %i.im
  br i1 %.not65, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.j
  %i.in = load i32, ptr %i.w, align 4, !tbaa !43  ; 3 uses
  %i.io = icmp sgt i32 %i.in, 0
  br i1 %i.io, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.ip = load i32, ptr %i.x, align 4, !tbaa !96
  %i.iq = load i32, ptr %11, align 4, !tbaa !72
  %invariant.op = sub i32 %.neg218, %i.iq
  %i.ir = sext i32 %i.il to i64
  %i.is = mul i64 %i.ax, %i.ir
  %i.it = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.is
  %i.iu = mul nuw nsw i32 %i.in, %.058223
  %wide.trip.count = zext nneg i32 %i.in to i64
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.o
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.o ] ; 3 uses
  %.2220 = phi <4 x float> [ %.1211222, %.lr.ph ], [ %.3, %bb.o ] ; 4 uses
  %i.iv = trunc i64 %indvars.iv to i32
  %i.iw = mul i32 %i.ip, %i.iv
  %.reass = add i32 %i.iw, %invariant.op          ; 3 uses
  %i.ix = icmp slt i32 %.reass, 0
  br i1 %i.ix, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.iy = load i32, ptr %i.y, align 4, !tbaa !98  ; 2 uses
  %i.iz = srem i32 %.reass, %i.iy
  %i.ja = sdiv i32 %.reass, %i.iy                 ; 2 uses
  %.not66 = icmp eq i32 %i.iz, 0
  br i1 %.not66, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.jb = load i32, ptr %12, align 4, !tbaa !72
  %.not67 = icmp slt i32 %i.ja, %i.jb
  br i1 %.not67, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.jc = shl nsw i32 %i.ja, 2
  %i.jd = sext i32 %i.jc to i64
  %i.je = getelementptr inbounds [4 x i8], ptr %i.it, i64 %i.jd
  %i.jf = load <4 x float>, ptr %i.je, align 1, !tbaa !112
  %i.jg = trunc i64 %indvars.iv to i32
  %i.jh = add i32 %i.iu, %i.jg
  %i.ji = shl nsw i32 %i.jh, 2
  %i.jj = zext nneg i32 %i.ji to i64
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.jj
  %i.jl = load <4 x float>, ptr %i.jk, align 1, !tbaa !112
  %i.jm = fmul fast <4 x float> %i.jl, %i.jf
  %i.jn = fadd fast <4 x float> %i.jm, %.2220
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.k, %bb.l
  %.3 = phi nsz <4 x float> [ %.2220, %bb.k ], [ %i.jn, %bb.n ], [ %.2220, %bb.m ], [ %.2220, %bb.l ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.k, !llvm.loop !141

.loopexit:                                        ; preds = %bb.o, %.preheader, %bb.j, %bb.h, %bb.i
  %.4 = phi nsz <4 x float> [ %.1211222, %bb.h ], [ %.1211222, %bb.i ], [ %.1211222, %bb.j ], [ %.1211222, %.preheader ], [ %.3, %bb.o ] ; 2 uses
  %i.jo = add nuw nsw i32 %.058223, 1             ; 2 uses
  %exitcond241.not = icmp eq i32 %i.jo, %i.bs
  br i1 %exitcond241.not, label %._crit_edge, label %bb.h, !llvm.loop !142

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit:      ; preds = %bb.g, %.noexc78, %.noexc77, %bb.f, %.noexc76, %bb.e, %._crit_edge
  %.0.i = phi nsz <4 x float> [ %i.ig, %bb.g ], [ %i.bx, %bb.e ], [ %i.cf, %.noexc76 ], [ %i.cp, %bb.f ], [ %i.dw, %.noexc77 ], [ %i.ht, %.noexc78 ], [ %.1211.lcssa, %._crit_edge ]
  store <4 x float> %.0.i, ptr %.1229, align 1, !tbaa !112
  %i.jp = getelementptr inbounds nuw i8, ptr %.1229, i64 16 ; 2 uses
  %i.jq = add nuw nsw i32 %.057228, 1             ; 2 uses
  %i.jr = load i32, ptr %8, align 4, !tbaa !72    ; 2 uses
  %i.js = icmp slt i32 %i.jq, %i.jr
  br i1 %i.js, label %.lr.ph230, label %._crit_edge231.loopexit, !llvm.loop !143

._crit_edge237:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %_ZN4ncnn3MatD2Ev.exit68.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge237, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #12

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #12

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #12

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #12

; Function Attrs: nounwind
declare !callback !144 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #12

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn26DeconvolutionDepthWise_x867forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.1(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %12) #13 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !72     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.x

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 %i.g, ptr %i.b, align 4, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 1, ptr %i.c, align 4, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !72
  %i.h = load i32, ptr %0, align 4, !tbaa !72     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !72
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !72
  %i.k = load i32, ptr %i.a, align 4, !tbaa !72   ; 2 uses
  %.not132 = icmp sgt i32 %i.k, %i.j
  br i1 %.not132, label %._crit_edge134.split, label %_ZN4ncnn3MatD2Ev.exit76.lr.ph

_ZN4ncnn3MatD2Ev.exit76.lr.ph:                    ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !18, !noalias !146
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !146
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !70, !noalias !146
  %factor.op.mul = mul i64 %i.n, %i.p
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 536
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !18
  %i.s = load i32, ptr %5, align 4, !tbaa !72
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 44
  %i.u = load i32, ptr %i.t, align 4, !tbaa !80, !noalias !149
  %i.v = load ptr, ptr %6, align 8, !tbaa !18, !noalias !149
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.x = load i64, ptr %i.w, align 8, !tbaa !20, !noalias !149
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !70, !noalias !149 ; 2 uses
  %factor.op.mul136 = mul i64 %i.x, %i.z
  %i.aa = sext i32 %i.u to i64
  %i.ab = load i32, ptr %7, align 4, !tbaa !72    ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 268
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 440
end_hunk_0
