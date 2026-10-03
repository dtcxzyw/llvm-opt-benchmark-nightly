Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/unaryop_x86?download=true
inline.NumInlined: 57
inline.NumDeleted: 57
loop-unroll.NumCompletelyUnrolled: 46
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_ZN4ncnnL16unary_op_inplaceINS_19UnaryOp_x86_functor13unary_op_sinhEEEiRNS_3MatERKNS_6OptionE.omp_outlined:bb.a
  %i.bz = fmul fast <4 x float> %i.by, %i.br
  %i.ca = fadd fast <4 x float> %i.bz, splat (float f0x3E2AAAAA)
  %i.cb = fmul fast <4 x float> %i.ca, %i.br
  %i.cc = fadd fast <4 x float> %i.cb, splat (float 5.000000e-01)
  %i.cd = fmul fast <4 x float> %i.bs, %i.cc
  %i.ce = fadd fast <4 x float> %i.br, %i.cd
  %i.cf = fadd fast <4 x float> %i.ce, splat (float 1.000000e+00)
  %i.cg = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.bp)
  %i.ch = shl <4 x i32> %i.cg, splat (i32 23)
  %i.ci = add <4 x i32> %i.ch, splat (i32 1065353216)
  %i.cj = bitcast <4 x i32> %i.ci to <4 x float>
  %i.ck = fmul fast <4 x float> %i.cf, %i.cj
  %i.cl = fadd fast <4 x float> %i.ck, splat (float -1.000000e+00)
  %i.cm = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.bb)
  %i.cn = fcmp fast uge <4 x float> %i.cm, splat (float f0x38D1B717) ; 2 uses
  %.v = select <4 x i1> %i.cn, <4 x float> %i.cl, <4 x float> %i.bg
  %i.co = fneg fast <4 x float> %i.bb
  %i.cp = fsub fast <4 x float> splat (float 5.000000e-01), %i.bd
  %i.cq = fmul fast <4 x float> %i.bc, %i.cp
  %i.cr = fsub fast <4 x float> %i.cq, %i.bb
  %i.cs = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.co, <4 x float> splat (float f0x42B0C0A5))
  %i.ct = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.cs, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.cu = fmul fast <4 x float> %i.ct, splat (float f0x3FB8AA3B)
  %i.cv = fadd fast <4 x float> %i.cu, splat (float 5.000000e-01) ; 2 uses
  %i.cw = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.cv)
  %i.cx = sitofp fast <4 x i32> %i.cw to <4 x float> ; 2 uses
  %i.cy = fcmp fast olt <4 x float> %i.cv, %i.cx
  %i.cz = select <4 x i1> %i.cy, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.da = fsub fast <4 x float> %i.cx, %i.cz      ; 2 uses
  %i.db = fmul fast <4 x float> %i.da, splat (float f0x3F317218)
  %i.dc = fsub fast <4 x float> %i.ct, %i.db      ; 8 uses
  %i.dd = fmul fast <4 x float> %i.dc, %i.dc
  %i.de = fmul fast <4 x float> %i.dc, splat (float f0x39506967)
  %i.df = fadd fast <4 x float> %i.de, splat (float f0x3AB743CE)
  %i.dg = fmul fast <4 x float> %i.df, %i.dc
  %i.dh = fadd fast <4 x float> %i.dg, splat (float f0x3C088908)
  %i.di = fmul fast <4 x float> %i.dh, %i.dc
  %i.dj = fadd fast <4 x float> %i.di, splat (float f0x3D2AA9C1)
  %i.dk = fmul fast <4 x float> %i.dj, %i.dc
  %i.dl = fadd fast <4 x float> %i.dk, splat (float f0x3E2AAAAA)
  %i.dm = fmul fast <4 x float> %i.dl, %i.dc
  %i.dn = fadd fast <4 x float> %i.dm, splat (float 5.000000e-01)
  %i.do = fmul fast <4 x float> %i.dd, %i.dn
  %i.dp = fadd fast <4 x float> %i.dc, %i.do
  %i.dq = fadd fast <4 x float> %i.dp, splat (float 1.000000e+00)
  %i.dr = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.da)
  %i.ds = shl <4 x i32> %i.dr, splat (i32 23)
  %i.dt = add <4 x i32> %i.ds, splat (i32 1065353216)
  %i.du = bitcast <4 x i32> %i.dt to <4 x float>
  %i.dv = fmul fast <4 x float> %i.dq, %i.du
  %i.dw = fadd fast <4 x float> %i.dv, splat (float -1.000000e+00)
  %.v90 = select <4 x i1> %i.cn, <4 x float> %i.dw, <4 x float> %i.cr
  %i.dx = fsub fast <4 x float> %.v, %.v90
  %i.dy = fmul fast <4 x float> %i.dx, splat (float 5.000000e-01)
  store <4 x float> %i.dy, ptr %.02591, align 16, !tbaa !46
  %i.dz = getelementptr inbounds nuw i8, ptr %.02591, i64 16 ; 2 uses
  %i.ea = add nuw nsw i32 %.092, 4                ; 3 uses
  %i.eb = or disjoint i32 %i.ea, 3
  %i.ec = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.ed = icmp slt i32 %i.eb, %i.ec
  br i1 %i.ed, label %.lr.ph, label %.preheader, !llvm.loop !215

.lr.ph97:                                         ; preds = %.lr.ph97.preheader126, %.lr.ph97
  %.196 = phi i32 [ %i.eh, %.lr.ph97 ], [ %.196.ph, %.lr.ph97.preheader126 ]
  %.12695 = phi ptr [ %i.eg, %.lr.ph97 ], [ %.12695.ph, %.lr.ph97.preheader126 ] ; 3 uses
  %i.ee = load float, ptr %.12695, align 4, !tbaa !42
  %i.ef = call fast noundef nofpclass(nan inf) float @llvm.sinh.f32(float %i.ee)
  store float %i.ef, ptr %.12695, align 4, !tbaa !42
  %i.eg = getelementptr inbounds nuw i8, ptr %.12695, i64 4
  %i.eh = add nuw nsw i32 %.196, 1                ; 2 uses
  %exitcond107.not = icmp eq i32 %i.eh, %i.ao
  br i1 %exitcond107.not, label %._crit_edge, label %.lr.ph97, !llvm.loop !216

._crit_edge:                                      ; preds = %.lr.ph97, %middle.block, %.preheader
  %indvars.iv.next109 = add nsw i64 %indvars.iv108, 1 ; 2 uses
  %lftr.wideiv111 = trunc i64 %indvars.iv.next109 to i32
  %exitcond112.not = icmp eq i32 %i.q, %lftr.wideiv111
  br i1 %exitcond112.not, label %._crit_edge100, label %.noexc, !llvm.loop !217

._crit_edge100:                                   ; preds = %._crit_edge.us, %._crit_edge, %.noexc.lr.ph.split.us, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge100, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sinh.f32(float) #11

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL16unary_op_inplaceINS_19UnaryOp_x86_functor14unary_op_asinhEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !37     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i32 0, ptr %i.a, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store i32 %i.g, ptr %i.b, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store i32 1, ptr %i.c, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  store i32 0, ptr %i.d, align 4, !tbaa !37
  %i.h = load i32, ptr %0, align 4, !tbaa !37     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !37
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !37
  %i.k = load i32, ptr %i.a, align 4, !tbaa !37   ; 3 uses
  %.not119 = icmp sgt i32 %i.k, %i.j
  br i1 %.not119, label %._crit_edge121, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.n = load i32, ptr %4, align 4, !tbaa !37     ; 4 uses
  %i.o = icmp sgt i32 %i.n, 3
  br i1 %i.o, label %.noexc.preheader, label %.noexc.lr.ph.split.us

.noexc.preheader:                                 ; preds = %.noexc.lr.ph
  %i.p = sext i32 %i.k to i64
  %i.q = add nsw i32 %i.j, 1
  br label %.noexc

.noexc.lr.ph.split.us:                            ; preds = %.noexc.lr.ph
  %i.r = load ptr, ptr %3, align 8, !tbaa !39, !noalias !224
  %i.s = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !224
  %i.t = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !224
  %factor.op.mul = mul i64 %i.s, %i.t
  %i.u = icmp sgt i32 %i.n, 0
  br i1 %i.u, label %.noexc.us.preheader, label %._crit_edge121

.noexc.us.preheader:                              ; preds = %.noexc.lr.ph.split.us
  %i.v = sext i32 %i.k to i64
  %i.w = add nsw i32 %i.j, 1
  br label %.noexc.us

.noexc.us:                                        ; preds = %.noexc.us.preheader, %._crit_edge.us
  %indvars.iv = phi i64 [ %i.v, %.noexc.us.preheader ], [ %indvars.iv.next, %._crit_edge.us ] ; 2 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 %.reass
  br label %bb.c

bb.c:                                             ; preds = %.noexc.us, %bb.c
  %.1117.us = phi i32 [ 0, %.noexc.us ], [ %i.ab, %bb.c ]
  %.126116.us = phi ptr [ %i.x, %.noexc.us ], [ %i.aa, %bb.c ] ; 3 uses
  %i.y = load float, ptr %.126116.us, align 4, !tbaa !42
  %i.z = call fast noundef nofpclass(nan inf) float @asinhf(float noundef nofpclass(nan inf) %i.y) #20
  store float %i.z, ptr %.126116.us, align 4, !tbaa !42
  %i.aa = getelementptr inbounds nuw i8, ptr %.126116.us, i64 4
  %i.ab = add nuw nsw i32 %.1117.us, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.ab, %i.n
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.c, !llvm.loop !221

._crit_edge.us:                                   ; preds = %bb.c
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond127.not = icmp eq i32 %i.w, %lftr.wideiv
  br i1 %exitcond127.not, label %._crit_edge121, label %.noexc.us

.noexc:                                           ; preds = %.noexc.preheader, %._crit_edge
  %i.ac = phi i32 [ %i.n, %.noexc.preheader ], [ %i.ak, %._crit_edge ] ; 2 uses
  %indvars.iv129 = phi i64 [ %i.p, %.noexc.preheader ], [ %indvars.iv.next130, %._crit_edge ] ; 2 uses
  %i.ad = load ptr, ptr %3, align 8, !tbaa !39, !noalias !224
  %i.ae = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !224
  %i.af = mul i64 %i.ae, %indvars.iv129
  %i.ag = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !224
  %i.ah = mul i64 %i.af, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ah ; 2 uses
  %i.aj = icmp sgt i32 %i.ac, 3
  br i1 %i.aj, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %.noexc
  %i.ak = phi i32 [ %i.ac, %.noexc ], [ %i.dq, %.lr.ph ] ; 3 uses
  %.025.lcssa = phi ptr [ %i.ai, %.noexc ], [ %i.dn, %.lr.ph ]
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.do, %.lr.ph ] ; 2 uses
  %i.al = icmp slt i32 %.0.lcssa, %i.ak
  br i1 %i.al, label %.lr.ph118, label %._crit_edge

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.0113 = phi i32 [ %i.do, %.lr.ph ], [ 0, %.noexc ]
  %.025112 = phi ptr [ %i.dn, %.lr.ph ], [ %i.ai, %.noexc ] ; 3 uses
  %i.am = load <4 x i32>, ptr %.025112, align 16, !tbaa !46 ; 2 uses
  %i.an = and <4 x i32> %i.am, splat (i32 2147483647)
  %i.ao = bitcast <4 x i32> %i.an to <4 x float>  ; 5 uses
  %i.ap = fmul fast <4 x float> %i.ao, %i.ao
  %i.aq = fadd fast <4 x float> %i.ap, splat (float 1.000000e+00)
  %i.ar = call fast noundef nofpclass(nan inf) <4 x float> @llvm.sqrt.v4f32(<4 x float> nofpclass(nan inf) %i.aq)
  %i.as = fadd fast <4 x float> %i.ar, %i.ao
  %i.at = call <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.as, <4 x float> splat (float f0x00800000))
  %i.au = bitcast <4 x float> %i.at to <4 x i32>  ; 2 uses
  %i.av = lshr <4 x i32> %i.au, splat (i32 23)
  %i.aw = and <4 x i32> %i.au, splat (i32 8388607)
  %i.ax = or disjoint <4 x i32> %i.aw, splat (i32 1056964608)
  %i.ay = bitcast <4 x i32> %i.ax to <4 x float>  ; 3 uses
  %i.az = add nsw <4 x i32> %i.av, splat (i32 -127)
  %i.ba = sitofp fast <4 x i32> %i.az to <4 x float> ; 2 uses
  %i.bb = fadd fast <4 x float> %i.ba, splat (float 1.000000e+00)
  %i.bc = fcmp fast olt <4 x float> %i.ay, splat (float f0x3F3504F3) ; 2 uses
  %i.bd = select <4 x i1> %i.bc, <4 x float> %i.ay, <4 x float> zeroinitializer
  %i.be = fadd fast <4 x float> %i.ay, splat (float -1.000000e+00)
  %i.bf = select fast <4 x i1> %i.bc, <4 x float> %i.ba, <4 x float> %i.bb
  %i.bg = fadd fast <4 x float> %i.be, %i.bd      ; 12 uses
  %i.bh = fmul fast <4 x float> %i.bg, %i.bg
  %i.bi = fmul fast <4 x float> %i.bg, splat (float f0x3D9021BB)
  %i.bj = fadd fast <4 x float> %i.bi, splat (float f0xBDEBD1B8)
  %i.bk = fmul fast <4 x float> %i.bj, %i.bg
  %i.bl = fadd fast <4 x float> %i.bk, splat (float f0x3DEF251A)
  %i.bm = fmul fast <4 x float> %i.bl, %i.bg
  %i.bn = fadd fast <4 x float> %i.bm, splat (float f0xBDFE5D4F)
  %i.bo = fmul fast <4 x float> %i.bn, %i.bg
  %i.bp = fadd fast <4 x float> %i.bo, splat (float f0x3E11E9BF)
  %i.bq = fmul fast <4 x float> %i.bp, %i.bg
  %i.br = fadd fast <4 x float> %i.bq, splat (float f0xBE2AAE50)
  %i.bs = fmul fast <4 x float> %i.br, %i.bg
  %i.bt = fadd fast <4 x float> %i.bs, splat (float f0x3E4CCEAC)
  %i.bu = fmul fast <4 x float> %i.bt, %i.bg
  %i.bv = fadd fast <4 x float> %i.bu, splat (float f0xBE7FFFFC)
  %i.bw = fmul fast <4 x float> %i.bv, %i.bg
  %i.bx = fadd fast <4 x float> %i.bw, splat (float f0x3EAAAAAA)
  %i.by = fmul fast <4 x float> %i.bx, %i.bg
  %reass.mul = fmul fast <4 x float> %i.bf, splat (float f0x3F317218)
  %reass.add108 = fadd fast <4 x float> %i.by, splat (float -5.000000e-01)
  %reass.mul109 = fmul fast <4 x float> %i.bh, %reass.add108
  %i.bz = fadd fast <4 x float> %reass.mul, %i.bg
  %i.ca = fadd fast <4 x float> %i.bz, %reass.mul109
  %i.cb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ao, <4 x float> splat (float f0x00800000))
  %i.cc = bitcast <4 x float> %i.cb to <4 x i32>  ; 2 uses
  %i.cd = lshr <4 x i32> %i.cc, splat (i32 23)
  %i.ce = and <4 x i32> %i.cc, splat (i32 -2139095041)
  %i.cf = or disjoint <4 x i32> %i.ce, splat (i32 1056964608)
  %i.cg = bitcast <4 x i32> %i.cf to <4 x float>  ; 3 uses
  %i.ch = add nsw <4 x i32> %i.cd, splat (i32 -127)
  %i.ci = sitofp fast <4 x i32> %i.ch to <4 x float> ; 2 uses
  %i.cj = fadd fast <4 x float> %i.ci, splat (float 1.000000e+00)
  %i.ck = fcmp fast olt <4 x float> %i.cg, splat (float f0x3F3504F3) ; 2 uses
  %i.cl = select <4 x i1> %i.ck, <4 x float> %i.cg, <4 x float> zeroinitializer
  %i.cm = fadd fast <4 x float> %i.cg, splat (float -1.000000e+00)
  %i.cn = select fast <4 x i1> %i.ck, <4 x float> %i.ci, <4 x float> %i.cj
  %i.co = fadd fast <4 x float> %i.cm, %i.cl      ; 12 uses
  %i.cp = fmul fast <4 x float> %i.co, %i.co
  %i.cq = fmul fast <4 x float> %i.co, splat (float f0x3D9021BB)
  %i.cr = fadd fast <4 x float> %i.cq, splat (float f0xBDEBD1B8)
  %i.cs = fmul fast <4 x float> %i.cr, %i.co
  %i.ct = fadd fast <4 x float> %i.cs, splat (float f0x3DEF251A)
  %i.cu = fmul fast <4 x float> %i.ct, %i.co
  %i.cv = fadd fast <4 x float> %i.cu, splat (float f0xBDFE5D4F)
  %i.cw = fmul fast <4 x float> %i.cv, %i.co
  %i.cx = fadd fast <4 x float> %i.cw, splat (float f0x3E11E9BF)
  %i.cy = fmul fast <4 x float> %i.cx, %i.co
  %i.cz = fadd fast <4 x float> %i.cy, splat (float f0xBE2AAE50)
  %i.da = fmul fast <4 x float> %i.cz, %i.co
  %i.db = fadd fast <4 x float> %i.da, splat (float f0x3E4CCEAC)
  %i.dc = fmul fast <4 x float> %i.db, %i.co
  %i.dd = fadd fast <4 x float> %i.dc, splat (float f0xBE7FFFFC)
  %i.de = fmul fast <4 x float> %i.dd, %i.co
  %i.df = fadd fast <4 x float> %i.de, splat (float f0x3EAAAAAA)
  %i.dg = fmul fast <4 x float> %i.df, %i.co
  %reass.mul107 = fmul fast <4 x float> %i.cn, splat (float f0x3F317218)
  %reass.add110 = fadd fast <4 x float> %i.dg, splat (float -5.000000e-01)
  %reass.mul111 = fmul fast <4 x float> %i.cp, %reass.add110
  %i.dh = fadd fast <4 x float> %i.co, splat (float f0x3F317218)
  %i.di = fadd fast <4 x float> %i.dh, %reass.mul107
  %i.dj = fadd fast <4 x float> %i.di, %reass.mul111
  %i.dk = fcmp fast ule <4 x float> %i.ao, splat (float f0x5F0AC723)
  %.v = select <4 x i1> %i.dk, <4 x float> %i.ca, <4 x float> %i.dj
  %6 = bitcast <4 x float> %.v to <4 x i32>
  %i.dl = and <4 x i32> %i.am, splat (i32 -2147483648)
  %i.dm = or <4 x i32> %i.dl, %6
  store <4 x i32> %i.dm, ptr %.025112, align 16, !tbaa !46
  %i.dn = getelementptr inbounds nuw i8, ptr %.025112, i64 16 ; 2 uses
  %i.do = add nuw nsw i32 %.0113, 4               ; 3 uses
  %i.dp = or disjoint i32 %i.do, 3
  %i.dq = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.dr = icmp slt i32 %i.dp, %i.dq
  br i1 %i.dr, label %.lr.ph, label %.preheader, !llvm.loop !222

.lr.ph118:                                        ; preds = %.preheader, %.lr.ph118
  %.1117 = phi i32 [ %i.dv, %.lr.ph118 ], [ %.0.lcssa, %.preheader ]
  %.126116 = phi ptr [ %i.du, %.lr.ph118 ], [ %.025.lcssa, %.preheader ] ; 3 uses
  %i.ds = load float, ptr %.126116, align 4, !tbaa !42
  %i.dt = call fast noundef nofpclass(nan inf) float @asinhf(float noundef nofpclass(nan inf) %i.ds) #20
  store float %i.dt, ptr %.126116, align 4, !tbaa !42
  %i.du = getelementptr inbounds nuw i8, ptr %.126116, i64 4
  %i.dv = add nuw nsw i32 %.1117, 1               ; 2 uses
  %exitcond128.not = icmp eq i32 %i.dv, %i.ak
  br i1 %exitcond128.not, label %._crit_edge, label %.lr.ph118, !llvm.loop !221

._crit_edge:                                      ; preds = %.lr.ph118, %.preheader
  %indvars.iv.next130 = add nsw i64 %indvars.iv129, 1 ; 2 uses
  %lftr.wideiv132 = trunc i64 %indvars.iv.next130 to i32
  %exitcond133.not = icmp eq i32 %i.q, %lftr.wideiv132
  br i1 %exitcond133.not, label %._crit_edge121, label %.noexc, !llvm.loop !223

._crit_edge121:                                   ; preds = %._crit_edge.us, %._crit_edge, %.noexc.lr.ph.split.us, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge121, %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare nofpclass(nan inf) float @asinhf(float noundef nofpclass(nan inf)) local_unnamed_addr #13

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL16unary_op_inplaceINS_19UnaryOp_x86_functor13unary_op_coshEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !37     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i32 0, ptr %i.a, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store i32 %i.g, ptr %i.b, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store i32 1, ptr %i.c, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  store i32 0, ptr %i.d, align 4, !tbaa !37
  %i.h = load i32, ptr %0, align 4, !tbaa !37     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !37
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !37
  %i.k = load i32, ptr %i.a, align 4, !tbaa !37   ; 3 uses
  %.not89 = icmp sgt i32 %i.k, %i.j
  br i1 %.not89, label %._crit_edge91, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.n = load i32, ptr %4, align 4, !tbaa !37     ; 5 uses
  %i.o = icmp sgt i32 %i.n, 3
  br i1 %i.o, label %.noexc.preheader, label %.noexc.lr.ph.split.us

.noexc.preheader:                                 ; preds = %.noexc.lr.ph
  %i.p = sext i32 %i.k to i64
  %i.q = add nsw i32 %i.j, 1
  br label %.noexc

.noexc.lr.ph.split.us:                            ; preds = %.noexc.lr.ph
  %i.r = load ptr, ptr %3, align 8, !tbaa !39, !noalias !231
  %i.s = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !231
  %i.t = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !231
  %factor.op.mul = mul i64 %i.s, %i.t
  %i.u = icmp sgt i32 %i.n, 0
  br i1 %i.u, label %.noexc.us.preheader, label %._crit_edge91

.noexc.us.preheader:                              ; preds = %.noexc.lr.ph.split.us
  %i.v = sext i32 %i.k to i64
  %i.w = add nsw i32 %i.j, 1
  %exitcond.not = icmp eq i32 %i.n, 1
  %exitcond.not.1 = icmp eq i32 %i.n, 2
  br label %.noexc.us

.noexc.us:                                        ; preds = %.noexc.us.preheader, %._crit_edge.us
  %indvars.iv = phi i64 [ %i.v, %.noexc.us.preheader ], [ %indvars.iv.next, %._crit_edge.us ] ; 2 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 %.reass ; 4 uses
  %i.y = load float, ptr %i.x, align 4, !tbaa !42
  %i.z = call fast noundef nofpclass(nan inf) float @llvm.cosh.f32(float %i.y)
  store float %i.z, ptr %i.x, align 4, !tbaa !42
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.c

bb.c:                                             ; preds = %.noexc.us
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 4 ; 2 uses
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !42
  %i.ac = call fast noundef nofpclass(nan inf) float @llvm.cosh.f32(float %i.ab)
  store float %i.ac, ptr %i.aa, align 4, !tbaa !42
  br i1 %exitcond.not.1, label %._crit_edge.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !42
  %i.af = call fast noundef nofpclass(nan inf) float @llvm.cosh.f32(float %i.ae)
  store float %i.af, ptr %i.ad, align 4, !tbaa !42
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %bb.d, %bb.c, %.noexc.us
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond97.not = icmp eq i32 %i.w, %lftr.wideiv
  br i1 %exitcond97.not, label %._crit_edge91, label %.noexc.us

.noexc:                                           ; preds = %.noexc.preheader, %._crit_edge
  %i.ag = phi i32 [ %i.n, %.noexc.preheader ], [ %i.ao, %._crit_edge ] ; 2 uses
  %indvars.iv99 = phi i64 [ %i.p, %.noexc.preheader ], [ %indvars.iv.next100, %._crit_edge ] ; 2 uses
  %i.ah = load ptr, ptr %3, align 8, !tbaa !39, !noalias !231
  %i.ai = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !231
  %i.aj = mul i64 %i.ai, %indvars.iv99
  %i.ak = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !231
  %i.al = mul i64 %i.aj, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.al ; 2 uses
  %i.an = icmp sgt i32 %i.ag, 3
  br i1 %i.an, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %.noexc
  %i.ao = phi i32 [ %i.ag, %.noexc ], [ %i.dq, %.lr.ph ] ; 4 uses
  %.025.lcssa = phi ptr [ %i.am, %.noexc ], [ %i.dn, %.lr.ph ] ; 3 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.do, %.lr.ph ] ; 4 uses
  %i.ap = icmp slt i32 %.0.lcssa, %i.ao
  br i1 %i.ap, label %.lr.ph88.preheader, label %._crit_edge

.lr.ph88.preheader:                               ; preds = %.preheader
  %i.aq = xor i32 %.0.lcssa, -1
  %i.ar = add i32 %i.ao, %i.aq                    ; 2 uses
  %i.as = zext i32 %i.ar to i64
  %i.at = add nuw nsw i64 %i.as, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.ar, 3
  br i1 %min.iters.check, label %.lr.ph88.preheader117, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph88.preheader
  %n.vec = and i64 %i.at, 8589934588              ; 4 uses
  %i.au = trunc i64 %n.vec to i32
  %i.av = add i32 %.0.lcssa, %i.au
  %i.aw = shl nuw nsw i64 %n.vec, 2
  %i.ax = getelementptr i8, ptr %.025.lcssa, i64 %i.aw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ay = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.025.lcssa, i64 %i.ay ; 2 uses
  %wide.load = load <4 x float>, ptr %next.gep, align 4, !tbaa !42
  %i.az = call fast <4 x float> @llvm.cosh.v4f32(<4 x float> %wide.load)
  store <4 x float> %i.az, ptr %next.gep, align 4, !tbaa !42
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !227

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.at, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph88.preheader117

.lr.ph88.preheader117:                            ; preds = %.lr.ph88.preheader, %middle.block
  %.187.ph = phi i32 [ %.0.lcssa, %.lr.ph88.preheader ], [ %i.av, %middle.block ]
  %.12686.ph = phi ptr [ %.025.lcssa, %.lr.ph88.preheader ], [ %i.ax, %middle.block ]
  br label %.lr.ph88

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.083 = phi i32 [ %i.do, %.lr.ph ], [ 0, %.noexc ]
  %.02582 = phi ptr [ %i.dn, %.lr.ph ], [ %i.am, %.noexc ] ; 3 uses
  %i.bb = load <4 x float>, ptr %.02582, align 16, !tbaa !46 ; 2 uses
  %i.bc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.bb, <4 x float> splat (float f0x42B0C0A5))
  %i.bd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.bc, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.be = fmul fast <4 x float> %i.bd, splat (float f0x3FB8AA3B)
  %i.bf = fadd fast <4 x float> %i.be, splat (float 5.000000e-01) ; 2 uses
  %i.bg = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.bf)
  %i.bh = sitofp fast <4 x i32> %i.bg to <4 x float> ; 2 uses
  %i.bi = fcmp fast olt <4 x float> %i.bf, %i.bh
  %i.bj = select <4 x i1> %i.bi, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.bk = fsub fast <4 x float> %i.bh, %i.bj      ; 2 uses
  %i.bl = fmul fast <4 x float> %i.bk, splat (float f0x3F317218)
  %i.bm = fsub fast <4 x float> %i.bd, %i.bl      ; 8 uses
  %i.bn = fmul fast <4 x float> %i.bm, %i.bm
  %i.bo = fmul fast <4 x float> %i.bm, splat (float f0x39506967)
  %i.bp = fadd fast <4 x float> %i.bo, splat (float f0x3AB743CE)
  %i.bq = fmul fast <4 x float> %i.bp, %i.bm
end_hunk_0
begin_hunk_1_@_ZN4ncnnL22unary_op_inplace_bf16sINS_19UnaryOp_x86_functor13unary_op_sinhEEEiRNS_3MatERKNS_6OptionE.omp_outlined:bb.a
  %i.dx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dw, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.dy = fmul fast <4 x float> %i.dx, splat (float f0x3FB8AA3B)
  %i.dz = fadd fast <4 x float> %i.dy, splat (float 5.000000e-01) ; 2 uses
  %i.ea = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dz)
  %i.eb = sitofp fast <4 x i32> %i.ea to <4 x float> ; 2 uses
  %i.ec = fcmp fast olt <4 x float> %i.dz, %i.eb
  %i.ed = select <4 x i1> %i.ec, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ee = fsub fast <4 x float> %i.eb, %i.ed      ; 2 uses
  %i.ef = fmul fast <4 x float> %i.ee, splat (float f0x3F317218)
  %i.eg = fsub fast <4 x float> %i.dx, %i.ef      ; 8 uses
  %i.eh = fmul fast <4 x float> %i.eg, %i.eg
  %i.ei = fmul fast <4 x float> %i.eg, splat (float f0x39506967)
  %i.ej = fadd fast <4 x float> %i.ei, splat (float f0x3AB743CE)
  %i.ek = fmul fast <4 x float> %i.ej, %i.eg
  %i.el = fadd fast <4 x float> %i.ek, splat (float f0x3C088908)
  %i.em = fmul fast <4 x float> %i.el, %i.eg
  %i.en = fadd fast <4 x float> %i.em, splat (float f0x3D2AA9C1)
  %i.eo = fmul fast <4 x float> %i.en, %i.eg
  %i.ep = fadd fast <4 x float> %i.eo, splat (float f0x3E2AAAAA)
  %i.eq = fmul fast <4 x float> %i.ep, %i.eg
  %i.er = fadd fast <4 x float> %i.eq, splat (float 5.000000e-01)
  %i.es = fmul fast <4 x float> %i.eh, %i.er
  %i.et = fadd fast <4 x float> %i.eg, %i.es
  %i.eu = fadd fast <4 x float> %i.et, splat (float 1.000000e+00)
  %i.ev = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ee)
  %i.ew = shl <4 x i32> %i.ev, splat (i32 23)
  %i.ex = add <4 x i32> %i.ew, splat (i32 1065353216)
  %i.ey = bitcast <4 x i32> %i.ex to <4 x float>
  %i.ez = fmul fast <4 x float> %i.eu, %i.ey
  %i.fa = fadd fast <4 x float> %i.ez, splat (float -1.000000e+00)
  %i.fb = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.cd)
  %i.fc = fcmp fast uge <4 x float> %i.fb, splat (float f0x38D1B717)
  %.v93 = select <4 x i1> %i.fc, <4 x float> %i.fa, <4 x float> %i.dv
  %i.fd = fsub fast <4 x float> %.v, %.v93
  %i.fe = fmul fast <4 x float> %i.fd, splat (float 5.000000e-01)
  %i.ff = bitcast <4 x float> %i.fe to <8 x i16>
  %i.fg = shufflevector <8 x i16> %i.ff, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.fh = bitcast <8 x i16> %i.fg to <4 x float>
  %i.fi = shufflevector <4 x float> %i.fh, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.fj = bitcast <4 x float> %i.fi to <2 x i64>
  %i.fk = extractelement <2 x i64> %i.fj, i64 0
  store i64 %i.fk, ptr %.02594, align 1, !tbaa !46
  %i.fl = getelementptr inbounds nuw i8, ptr %.02594, i64 8 ; 2 uses
  %i.fm = add nuw nsw i32 %.095, 4                ; 3 uses
  %i.fn = or disjoint i32 %i.fm, 3
  %i.fo = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.fp = icmp slt i32 %i.fn, %i.fo
  br i1 %i.fp, label %.lr.ph, label %.preheader, !llvm.loop !408

.lr.ph100:                                        ; preds = %.lr.ph100.preheader129, %.lr.ph100
  %.199 = phi i32 [ %i.fz, %.lr.ph100 ], [ %.199.ph, %.lr.ph100.preheader129 ]
  %.12698 = phi ptr [ %i.fy, %.lr.ph100 ], [ %.12698.ph, %.lr.ph100.preheader129 ] ; 3 uses
  %i.fq = load i16, ptr %.12698, align 2, !tbaa !51
  %i.fr = zext i16 %i.fq to i32
  %i.fs = shl nuw i32 %i.fr, 16
  %i.ft = bitcast i32 %i.fs to float
  %i.fu = call fast noundef nofpclass(nan inf) float @llvm.sinh.f32(float %i.ft)
  %i.fv = bitcast float %i.fu to i32
  %i.fw = lshr i32 %i.fv, 16
  %i.fx = trunc nuw i32 %i.fw to i16
  store i16 %i.fx, ptr %.12698, align 2, !tbaa !51
  %i.fy = getelementptr inbounds nuw i8, ptr %.12698, i64 2
  %i.fz = add nuw nsw i32 %.199, 1                ; 2 uses
  %exitcond110.not = icmp eq i32 %i.fz, %i.bg
  br i1 %exitcond110.not, label %._crit_edge, label %.lr.ph100, !llvm.loop !409

._crit_edge:                                      ; preds = %.lr.ph100, %middle.block, %.preheader
  %indvars.iv.next112 = add nsw i64 %indvars.iv111, 1 ; 2 uses
  %lftr.wideiv114 = trunc i64 %indvars.iv.next112 to i32
  %exitcond115.not = icmp eq i32 %i.q, %lftr.wideiv114
  br i1 %exitcond115.not, label %._crit_edge103, label %.noexc, !llvm.loop !410

._crit_edge103:                                   ; preds = %._crit_edge.us, %._crit_edge, %.noexc.lr.ph.split.us, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge103, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL22unary_op_inplace_bf16sINS_19UnaryOp_x86_functor14unary_op_asinhEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !37     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i32 0, ptr %i.a, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store i32 %i.g, ptr %i.b, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store i32 1, ptr %i.c, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  store i32 0, ptr %i.d, align 4, !tbaa !37
  %i.h = load i32, ptr %0, align 4, !tbaa !37     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !37
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !37
  %i.k = load i32, ptr %i.a, align 4, !tbaa !37   ; 3 uses
  %.not122 = icmp sgt i32 %i.k, %i.j
  br i1 %.not122, label %._crit_edge124, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.n = load i32, ptr %4, align 4, !tbaa !37     ; 4 uses
  %i.o = icmp sgt i32 %i.n, 3
  br i1 %i.o, label %.noexc.preheader, label %.noexc.lr.ph.split.us

.noexc.preheader:                                 ; preds = %.noexc.lr.ph
  %i.p = sext i32 %i.k to i64
  %i.q = add nsw i32 %i.j, 1
  br label %.noexc

.noexc.lr.ph.split.us:                            ; preds = %.noexc.lr.ph
  %i.r = load ptr, ptr %3, align 8, !tbaa !39, !noalias !417
  %i.s = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !417
  %i.t = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !417
  %factor.op.mul = mul i64 %i.s, %i.t
  %i.u = icmp sgt i32 %i.n, 0
  br i1 %i.u, label %.noexc.us.preheader, label %._crit_edge124

.noexc.us.preheader:                              ; preds = %.noexc.lr.ph.split.us
  %i.v = sext i32 %i.k to i64
  %i.w = add nsw i32 %i.j, 1
  br label %.noexc.us

.noexc.us:                                        ; preds = %.noexc.us.preheader, %._crit_edge.us
  %indvars.iv = phi i64 [ %i.v, %.noexc.us.preheader ], [ %indvars.iv.next, %._crit_edge.us ] ; 2 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 %.reass
  br label %bb.c

bb.c:                                             ; preds = %.noexc.us, %bb.c
  %.1120.us = phi i32 [ 0, %.noexc.us ], [ %i.ah, %bb.c ]
  %.126119.us = phi ptr [ %i.x, %.noexc.us ], [ %i.ag, %bb.c ] ; 3 uses
  %i.y = load i16, ptr %.126119.us, align 2, !tbaa !51
  %i.z = zext i16 %i.y to i32
  %i.aa = shl nuw i32 %i.z, 16
  %i.ab = bitcast i32 %i.aa to float
  %i.ac = call fast noundef nofpclass(nan inf) float @asinhf(float noundef nofpclass(nan inf) %i.ab) #20
  %i.ad = bitcast float %i.ac to i32
  %i.ae = lshr i32 %i.ad, 16
  %i.af = trunc nuw i32 %i.ae to i16
  store i16 %i.af, ptr %.126119.us, align 2, !tbaa !51
  %i.ag = getelementptr inbounds nuw i8, ptr %.126119.us, i64 2
  %i.ah = add nuw nsw i32 %.1120.us, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.ah, %i.n
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.c, !llvm.loop !414

._crit_edge.us:                                   ; preds = %bb.c
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond130.not = icmp eq i32 %i.w, %lftr.wideiv
  br i1 %exitcond130.not, label %._crit_edge124, label %.noexc.us

.noexc:                                           ; preds = %.noexc.preheader, %._crit_edge
  %i.ai = phi i32 [ %i.n, %.noexc.preheader ], [ %i.aq, %._crit_edge ] ; 2 uses
  %indvars.iv132 = phi i64 [ %i.p, %.noexc.preheader ], [ %indvars.iv.next133, %._crit_edge ] ; 2 uses
  %i.aj = load ptr, ptr %3, align 8, !tbaa !39, !noalias !417
  %i.ak = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !417
  %i.al = mul i64 %i.ak, %indvars.iv132
  %i.am = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !417
  %i.an = mul i64 %i.al, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.an ; 2 uses
  %i.ap = icmp sgt i32 %i.ai, 3
  br i1 %i.ap, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %.noexc
  %i.aq = phi i32 [ %i.ai, %.noexc ], [ %i.eh, %.lr.ph ] ; 3 uses
  %.025.lcssa = phi ptr [ %i.ao, %.noexc ], [ %i.ee, %.lr.ph ]
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.ef, %.lr.ph ] ; 2 uses
  %i.ar = icmp slt i32 %.0.lcssa, %i.aq
  br i1 %i.ar, label %.lr.ph121, label %._crit_edge

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.0116 = phi i32 [ %i.ef, %.lr.ph ], [ 0, %.noexc ]
  %.025115 = phi ptr [ %i.ee, %.lr.ph ], [ %i.ao, %.noexc ] ; 3 uses
  %i.as = load i64, ptr %.025115, align 1, !tbaa !46
  %i.at = insertelement <2 x i64> poison, i64 %i.as, i64 0
  %i.au = bitcast <2 x i64> %i.at to <8 x i16>
  %i.av = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.au, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.aw = bitcast <8 x i16> %i.av to <4 x i32>
  %i.ax = and <4 x i32> %i.aw, splat (i32 2147418112)
  %i.ay = bitcast <4 x i32> %i.ax to <4 x float>  ; 5 uses
  %i.az = fmul fast <4 x float> %i.ay, %i.ay
  %i.ba = fadd fast <4 x float> %i.az, splat (float 1.000000e+00)
  %i.bb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.sqrt.v4f32(<4 x float> nofpclass(nan inf) %i.ba)
  %i.bc = fadd fast <4 x float> %i.bb, %i.ay
  %i.bd = call <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.bc, <4 x float> splat (float f0x00800000))
  %i.be = bitcast <4 x float> %i.bd to <4 x i32>  ; 2 uses
  %i.bf = lshr <4 x i32> %i.be, splat (i32 23)
  %i.bg = and <4 x i32> %i.be, splat (i32 8388607)
  %i.bh = or disjoint <4 x i32> %i.bg, splat (i32 1056964608)
  %i.bi = bitcast <4 x i32> %i.bh to <4 x float>  ; 3 uses
  %i.bj = add nsw <4 x i32> %i.bf, splat (i32 -127)
  %i.bk = sitofp fast <4 x i32> %i.bj to <4 x float> ; 2 uses
  %i.bl = fadd fast <4 x float> %i.bk, splat (float 1.000000e+00)
  %i.bm = fcmp fast olt <4 x float> %i.bi, splat (float f0x3F3504F3) ; 2 uses
  %i.bn = select <4 x i1> %i.bm, <4 x float> %i.bi, <4 x float> zeroinitializer
  %i.bo = fadd fast <4 x float> %i.bi, splat (float -1.000000e+00)
  %i.bp = select fast <4 x i1> %i.bm, <4 x float> %i.bk, <4 x float> %i.bl
  %i.bq = fadd fast <4 x float> %i.bo, %i.bn      ; 12 uses
  %i.br = fmul fast <4 x float> %i.bq, %i.bq
  %i.bs = fmul fast <4 x float> %i.bq, splat (float f0x3D9021BB)
  %i.bt = fadd fast <4 x float> %i.bs, splat (float f0xBDEBD1B8)
  %i.bu = fmul fast <4 x float> %i.bt, %i.bq
  %i.bv = fadd fast <4 x float> %i.bu, splat (float f0x3DEF251A)
  %i.bw = fmul fast <4 x float> %i.bv, %i.bq
  %i.bx = fadd fast <4 x float> %i.bw, splat (float f0xBDFE5D4F)
  %i.by = fmul fast <4 x float> %i.bx, %i.bq
  %i.bz = fadd fast <4 x float> %i.by, splat (float f0x3E11E9BF)
  %i.ca = fmul fast <4 x float> %i.bz, %i.bq
  %i.cb = fadd fast <4 x float> %i.ca, splat (float f0xBE2AAE50)
  %i.cc = fmul fast <4 x float> %i.cb, %i.bq
  %i.cd = fadd fast <4 x float> %i.cc, splat (float f0x3E4CCEAC)
  %i.ce = fmul fast <4 x float> %i.cd, %i.bq
  %i.cf = fadd fast <4 x float> %i.ce, splat (float f0xBE7FFFFC)
  %i.cg = fmul fast <4 x float> %i.cf, %i.bq
  %i.ch = fadd fast <4 x float> %i.cg, splat (float f0x3EAAAAAA)
  %i.ci = fmul fast <4 x float> %i.ch, %i.bq
  %reass.mul = fmul fast <4 x float> %i.bp, splat (float f0x3F317218)
  %reass.add111 = fadd fast <4 x float> %i.ci, splat (float -5.000000e-01)
  %reass.mul112 = fmul fast <4 x float> %i.br, %reass.add111
  %i.cj = fadd fast <4 x float> %reass.mul, %i.bq
  %i.ck = fadd fast <4 x float> %i.cj, %reass.mul112
  %i.cl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ay, <4 x float> splat (float f0x00800000))
  %i.cm = bitcast <4 x float> %i.cl to <4 x i32>  ; 2 uses
  %i.cn = lshr <4 x i32> %i.cm, splat (i32 23)
  %i.co = and <4 x i32> %i.cm, splat (i32 -2139095041)
  %i.cp = or disjoint <4 x i32> %i.co, splat (i32 1056964608)
  %i.cq = bitcast <4 x i32> %i.cp to <4 x float>  ; 3 uses
  %i.cr = add nsw <4 x i32> %i.cn, splat (i32 -127)
  %i.cs = sitofp fast <4 x i32> %i.cr to <4 x float> ; 2 uses
  %i.ct = fadd fast <4 x float> %i.cs, splat (float 1.000000e+00)
  %i.cu = fcmp fast olt <4 x float> %i.cq, splat (float f0x3F3504F3) ; 2 uses
  %i.cv = select <4 x i1> %i.cu, <4 x float> %i.cq, <4 x float> zeroinitializer
  %i.cw = fadd fast <4 x float> %i.cq, splat (float -1.000000e+00)
  %i.cx = select fast <4 x i1> %i.cu, <4 x float> %i.cs, <4 x float> %i.ct
  %i.cy = fadd fast <4 x float> %i.cw, %i.cv      ; 12 uses
  %i.cz = fmul fast <4 x float> %i.cy, %i.cy
  %i.da = fmul fast <4 x float> %i.cy, splat (float f0x3D9021BB)
  %i.db = fadd fast <4 x float> %i.da, splat (float f0xBDEBD1B8)
  %i.dc = fmul fast <4 x float> %i.db, %i.cy
  %i.dd = fadd fast <4 x float> %i.dc, splat (float f0x3DEF251A)
  %i.de = fmul fast <4 x float> %i.dd, %i.cy
  %i.df = fadd fast <4 x float> %i.de, splat (float f0xBDFE5D4F)
  %i.dg = fmul fast <4 x float> %i.df, %i.cy
  %i.dh = fadd fast <4 x float> %i.dg, splat (float f0x3E11E9BF)
  %i.di = fmul fast <4 x float> %i.dh, %i.cy
  %i.dj = fadd fast <4 x float> %i.di, splat (float f0xBE2AAE50)
  %i.dk = fmul fast <4 x float> %i.dj, %i.cy
  %i.dl = fadd fast <4 x float> %i.dk, splat (float f0x3E4CCEAC)
  %i.dm = fmul fast <4 x float> %i.dl, %i.cy
  %i.dn = fadd fast <4 x float> %i.dm, splat (float f0xBE7FFFFC)
  %i.do = fmul fast <4 x float> %i.dn, %i.cy
  %i.dp = fadd fast <4 x float> %i.do, splat (float f0x3EAAAAAA)
  %i.dq = fmul fast <4 x float> %i.dp, %i.cy
  %reass.mul110 = fmul fast <4 x float> %i.cx, splat (float f0x3F317218)
  %reass.add113 = fadd fast <4 x float> %i.dq, splat (float -5.000000e-01)
  %reass.mul114 = fmul fast <4 x float> %i.cz, %reass.add113
  %i.dr = fadd fast <4 x float> %i.cy, splat (float f0x3F317218)
  %i.ds = fadd fast <4 x float> %i.dr, %reass.mul110
  %i.dt = fadd fast <4 x float> %i.ds, %reass.mul114
  %i.du = fcmp fast ule <4 x float> %i.ay, splat (float f0x5F0AC723)
  %.v = select <4 x i1> %i.du, <4 x float> %i.ck, <4 x float> %i.dt
  %6 = bitcast <4 x float> %.v to <4 x i32>
  %i.dv = bitcast <8 x i16> %i.av to <4 x i32>
  %i.dw = and <4 x i32> %i.dv, splat (i32 -2147483648)
  %i.dx = or <4 x i32> %i.dw, %6
  %i.dy = bitcast <4 x i32> %i.dx to <8 x i16>
  %i.dz = shufflevector <8 x i16> %i.dy, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.ea = bitcast <8 x i16> %i.dz to <4 x float>
  %i.eb = shufflevector <4 x float> %i.ea, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.ec = bitcast <4 x float> %i.eb to <2 x i64>
  %i.ed = extractelement <2 x i64> %i.ec, i64 0
  store i64 %i.ed, ptr %.025115, align 1, !tbaa !46
  %i.ee = getelementptr inbounds nuw i8, ptr %.025115, i64 8 ; 2 uses
  %i.ef = add nuw nsw i32 %.0116, 4               ; 3 uses
  %i.eg = or disjoint i32 %i.ef, 3
  %i.eh = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.ei = icmp slt i32 %i.eg, %i.eh
  br i1 %i.ei, label %.lr.ph, label %.preheader, !llvm.loop !415

.lr.ph121:                                        ; preds = %.preheader, %.lr.ph121
  %.1120 = phi i32 [ %i.es, %.lr.ph121 ], [ %.0.lcssa, %.preheader ]
  %.126119 = phi ptr [ %i.er, %.lr.ph121 ], [ %.025.lcssa, %.preheader ] ; 3 uses
  %i.ej = load i16, ptr %.126119, align 2, !tbaa !51
  %i.ek = zext i16 %i.ej to i32
  %i.el = shl nuw i32 %i.ek, 16
  %i.em = bitcast i32 %i.el to float
  %i.en = call fast noundef nofpclass(nan inf) float @asinhf(float noundef nofpclass(nan inf) %i.em) #20
  %i.eo = bitcast float %i.en to i32
  %i.ep = lshr i32 %i.eo, 16
  %i.eq = trunc nuw i32 %i.ep to i16
  store i16 %i.eq, ptr %.126119, align 2, !tbaa !51
  %i.er = getelementptr inbounds nuw i8, ptr %.126119, i64 2
  %i.es = add nuw nsw i32 %.1120, 1               ; 2 uses
  %exitcond131.not = icmp eq i32 %i.es, %i.aq
  br i1 %exitcond131.not, label %._crit_edge, label %.lr.ph121, !llvm.loop !414

._crit_edge:                                      ; preds = %.lr.ph121, %.preheader
  %indvars.iv.next133 = add nsw i64 %indvars.iv132, 1 ; 2 uses
  %lftr.wideiv135 = trunc i64 %indvars.iv.next133 to i32
  %exitcond136.not = icmp eq i32 %i.q, %lftr.wideiv135
  br i1 %exitcond136.not, label %._crit_edge124, label %.noexc, !llvm.loop !416

._crit_edge124:                                   ; preds = %._crit_edge.us, %._crit_edge, %.noexc.lr.ph.split.us, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge124, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL22unary_op_inplace_bf16sINS_19UnaryOp_x86_functor13unary_op_coshEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !37     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i32 0, ptr %i.a, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store i32 %i.g, ptr %i.b, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store i32 1, ptr %i.c, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  store i32 0, ptr %i.d, align 4, !tbaa !37
  %i.h = load i32, ptr %0, align 4, !tbaa !37     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !37
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !37
  %i.k = load i32, ptr %i.a, align 4, !tbaa !37   ; 3 uses
  %.not92 = icmp sgt i32 %i.k, %i.j
  br i1 %.not92, label %._crit_edge94, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.n = load i32, ptr %4, align 4, !tbaa !37     ; 5 uses
  %i.o = icmp sgt i32 %i.n, 3
  br i1 %i.o, label %.noexc.preheader, label %.noexc.lr.ph.split.us

.noexc.preheader:                                 ; preds = %.noexc.lr.ph
  %i.p = sext i32 %i.k to i64
  %i.q = add nsw i32 %i.j, 1
  br label %.noexc

.noexc.lr.ph.split.us:                            ; preds = %.noexc.lr.ph
  %i.r = load ptr, ptr %3, align 8, !tbaa !39, !noalias !424
  %i.s = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !424
  %i.t = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !424
  %factor.op.mul = mul i64 %i.s, %i.t
  %i.u = icmp sgt i32 %i.n, 0
  br i1 %i.u, label %.noexc.us.preheader, label %._crit_edge94

.noexc.us.preheader:                              ; preds = %.noexc.lr.ph.split.us
  %i.v = sext i32 %i.k to i64
  %i.w = add nsw i32 %i.j, 1
  %exitcond.not = icmp eq i32 %i.n, 1
  %exitcond.not.1 = icmp eq i32 %i.n, 2
  br label %.noexc.us

.noexc.us:                                        ; preds = %.noexc.us.preheader, %._crit_edge.us
  %indvars.iv = phi i64 [ %i.v, %.noexc.us.preheader ], [ %indvars.iv.next, %._crit_edge.us ] ; 2 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 %.reass ; 4 uses
  %i.y = load i16, ptr %i.x, align 2, !tbaa !51
  %i.z = zext i16 %i.y to i32
  %i.aa = shl nuw i32 %i.z, 16
  %i.ab = bitcast i32 %i.aa to float
  %i.ac = call fast noundef nofpclass(nan inf) float @llvm.cosh.f32(float %i.ab)
  %i.ad = bitcast float %i.ac to i32
  %i.ae = lshr i32 %i.ad, 16
  %i.af = trunc nuw nsw i32 %i.ae to i16
  store i16 %i.af, ptr %i.x, align 2, !tbaa !51
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.c

bb.c:                                             ; preds = %.noexc.us
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 2 ; 2 uses
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !51
  %i.ai = zext i16 %i.ah to i32
  %i.aj = shl nuw i32 %i.ai, 16
  %i.ak = bitcast i32 %i.aj to float
  %i.al = call fast noundef nofpclass(nan inf) float @llvm.cosh.f32(float %i.ak)
  %i.am = bitcast float %i.al to i32
  %i.an = lshr i32 %i.am, 16
  %i.ao = trunc nuw nsw i32 %i.an to i16
  store i16 %i.ao, ptr %i.ag, align 2, !tbaa !51
  br i1 %exitcond.not.1, label %._crit_edge.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ap = getelementptr inbounds nuw i8, ptr %i.x, i64 4 ; 2 uses
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !51
  %i.ar = zext i16 %i.aq to i32
  %i.as = shl nuw i32 %i.ar, 16
  %i.at = bitcast i32 %i.as to float
  %i.au = call fast noundef nofpclass(nan inf) float @llvm.cosh.f32(float %i.at)
  %i.av = bitcast float %i.au to i32
  %i.aw = lshr i32 %i.av, 16
  %i.ax = trunc nuw nsw i32 %i.aw to i16
  store i16 %i.ax, ptr %i.ap, align 2, !tbaa !51
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %bb.d, %bb.c, %.noexc.us
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond100.not = icmp eq i32 %i.w, %lftr.wideiv
  br i1 %exitcond100.not, label %._crit_edge94, label %.noexc.us

.noexc:                                           ; preds = %.noexc.preheader, %._crit_edge
  %i.ay = phi i32 [ %i.n, %.noexc.preheader ], [ %i.bg, %._crit_edge ] ; 2 uses
  %indvars.iv102 = phi i64 [ %i.p, %.noexc.preheader ], [ %indvars.iv.next103, %._crit_edge ] ; 2 uses
  %i.az = load ptr, ptr %3, align 8, !tbaa !39, !noalias !424
  %i.ba = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !424
  %i.bb = mul i64 %i.ba, %indvars.iv102
  %i.bc = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !424
  %i.bd = mul i64 %i.bb, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bd ; 2 uses
  %i.bf = icmp sgt i32 %i.ay, 3
  br i1 %i.bf, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %.noexc
  %i.bg = phi i32 [ %i.ay, %.noexc ], [ %i.ey, %.lr.ph ] ; 4 uses
  %.025.lcssa = phi ptr [ %i.be, %.noexc ], [ %i.ev, %.lr.ph ] ; 3 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.ew, %.lr.ph ] ; 4 uses
  %i.bh = icmp slt i32 %.0.lcssa, %i.bg
  br i1 %i.bh, label %.lr.ph91.preheader, label %._crit_edge

.lr.ph91.preheader:                               ; preds = %.preheader
  %i.bi = xor i32 %.0.lcssa, -1
  %i.bj = add i32 %i.bg, %i.bi                    ; 2 uses
  %i.bk = zext i32 %i.bj to i64
  %i.bl = add nuw nsw i64 %i.bk, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.bj, 7
  br i1 %min.iters.check, label %.lr.ph91.preheader120, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph91.preheader
  %n.vec = and i64 %i.bl, 8589934584              ; 4 uses
  %i.bm = trunc i64 %n.vec to i32
  %i.bn = add i32 %.0.lcssa, %i.bm
  %i.bo = shl nuw nsw i64 %n.vec, 1
  %i.bp = getelementptr i8, ptr %.025.lcssa, i64 %i.bo
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bq = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.025.lcssa, i64 %i.bq ; 2 uses
  %wide.load = load <8 x i16>, ptr %next.gep, align 2, !tbaa !51
  %i.br = zext <8 x i16> %wide.load to <8 x i32>
  %i.bs = shl nuw <8 x i32> %i.br, splat (i32 16)
  %i.bt = bitcast <8 x i32> %i.bs to <8 x float>
  %i.bu = call fast <8 x float> @llvm.cosh.v8f32(<8 x float> %i.bt)
  %i.bv = bitcast <8 x float> %i.bu to <8 x i32>
  %i.bw = lshr <8 x i32> %i.bv, splat (i32 16)
  %i.bx = trunc nuw nsw <8 x i32> %i.bw to <8 x i16>
end_hunk_1
