Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/unaryop_x86?download=true
inline.NumInlined: 57
inline.NumDeleted: 57
loop-unroll.NumCompletelyUnrolled: 46
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_ZN4ncnnL16unary_op_inplaceINS_19UnaryOp_x86_functor14unary_op_acoshEEEiRNS_3MatERKNS_6OptionE.omp_outlined:bb.a
  %i.br = fadd fast <4 x float> %i.bq, splat (float f0xBE2AAE50)
  %i.bs = fmul fast <4 x float> %i.br, %i.bg
  %i.bt = fadd fast <4 x float> %i.bs, splat (float f0x3E4CCEAC)
  %i.bu = fmul fast <4 x float> %i.bt, %i.bg
  %i.bv = fadd fast <4 x float> %i.bu, splat (float f0xBE7FFFFC)
  %i.bw = fmul fast <4 x float> %i.bv, %i.bg
  %i.bx = fadd fast <4 x float> %i.bw, splat (float f0x3EAAAAAA)
  %i.by = fmul fast <4 x float> %i.bx, %i.bg
  %reass.mul = fmul fast <4 x float> %i.bf, splat (float f0x3F317218)
  %reass.add107 = fadd fast <4 x float> %i.by, splat (float -5.000000e-01)
  %reass.mul108 = fmul fast <4 x float> %i.bh, %reass.add107
  %i.bz = fadd fast <4 x float> %reass.mul, %i.bg
  %i.ca = fadd fast <4 x float> %i.bz, %reass.mul108
  %i.cb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.am, <4 x float> splat (float f0x00800000))
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
  %reass.mul106 = fmul fast <4 x float> %i.cn, splat (float f0x3F317218)
  %reass.add109 = fadd fast <4 x float> %i.dg, splat (float -5.000000e-01)
  %reass.mul110 = fmul fast <4 x float> %i.cp, %reass.add109
  %i.dh = fadd fast <4 x float> %i.co, splat (float f0x3F317218)
  %i.di = fadd fast <4 x float> %i.dh, %reass.mul106
  %i.dj = fadd fast <4 x float> %i.di, %reass.mul110
  %i.dk = fcmp fast ule <4 x float> %i.am, splat (float f0x5F0AC723)
  %i.dl = select <4 x i1> %i.as, <4 x float> splat (float -nan(0x3FFFFF)), <4 x float> %i.ca
  %i.dm = select <4 x i1> %i.dk, <4 x float> %i.dl, <4 x float> %i.dj
  store <4 x float> %i.dm, ptr %.025111, align 16, !tbaa !46
  %i.dn = getelementptr inbounds nuw i8, ptr %.025111, i64 16 ; 2 uses
  %i.do = add nuw nsw i32 %.0112, 4               ; 3 uses
  %i.dp = or disjoint i32 %i.do, 3
  %i.dq = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.dr = icmp slt i32 %i.dp, %i.dq
  br i1 %i.dr, label %.lr.ph, label %.preheader, !llvm.loop !235

.lr.ph117:                                        ; preds = %.preheader, %.lr.ph117
  %.1116 = phi i32 [ %i.dv, %.lr.ph117 ], [ %.0.lcssa, %.preheader ]
  %.126115 = phi ptr [ %i.du, %.lr.ph117 ], [ %.025.lcssa, %.preheader ] ; 3 uses
  %i.ds = load float, ptr %.126115, align 4, !tbaa !42
  %i.dt = call fast noundef nofpclass(nan inf) float @acoshf(float noundef nofpclass(nan inf) %i.ds) #20
  store float %i.dt, ptr %.126115, align 4, !tbaa !42
  %i.du = getelementptr inbounds nuw i8, ptr %.126115, i64 4
  %i.dv = add nuw nsw i32 %.1116, 1               ; 2 uses
  %exitcond127.not = icmp eq i32 %i.dv, %i.ak
  br i1 %exitcond127.not, label %._crit_edge, label %.lr.ph117, !llvm.loop !234

._crit_edge:                                      ; preds = %.lr.ph117, %.preheader
  %indvars.iv.next129 = add nsw i64 %indvars.iv128, 1 ; 2 uses
  %lftr.wideiv131 = trunc i64 %indvars.iv.next129 to i32
  %exitcond132.not = icmp eq i32 %i.q, %lftr.wideiv131
  br i1 %exitcond132.not, label %._crit_edge120, label %.noexc, !llvm.loop !236

._crit_edge120:                                   ; preds = %._crit_edge.us, %._crit_edge, %.noexc.lr.ph.split.us, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge120, %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare nofpclass(nan inf) float @acoshf(float noundef nofpclass(nan inf)) local_unnamed_addr #14

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL16unary_op_inplaceINS_19UnaryOp_x86_functor14unary_op_atanhEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #7 personality ptr @__gxx_personality_v0 {
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
  %.not128 = icmp sgt i32 %i.k, %i.j
  br i1 %.not128, label %._crit_edge130, label %.noexc.lr.ph

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
  %i.r = load ptr, ptr %3, align 8, !tbaa !39, !noalias !243
  %i.s = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !243
  %i.t = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !243
  %factor.op.mul = mul i64 %i.s, %i.t
  %i.u = icmp sgt i32 %i.n, 0
  br i1 %i.u, label %.noexc.us.preheader, label %._crit_edge130

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
  %.1126.us = phi i32 [ 0, %.noexc.us ], [ %i.ab, %bb.c ]
  %.126125.us = phi ptr [ %i.x, %.noexc.us ], [ %i.aa, %bb.c ] ; 3 uses
  %i.y = load float, ptr %.126125.us, align 4, !tbaa !42
  %i.z = call fast noundef nofpclass(nan inf) float @atanhf(float noundef nofpclass(nan inf) %i.y) #20
  store float %i.z, ptr %.126125.us, align 4, !tbaa !42
  %i.aa = getelementptr inbounds nuw i8, ptr %.126125.us, i64 4
  %i.ab = add nuw nsw i32 %.1126.us, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.ab, %i.n
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.c, !llvm.loop !240

._crit_edge.us:                                   ; preds = %bb.c
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond136.not = icmp eq i32 %i.w, %lftr.wideiv
  br i1 %exitcond136.not, label %._crit_edge130, label %.noexc.us

.noexc:                                           ; preds = %.noexc.preheader, %._crit_edge
  %i.ac = phi i32 [ %i.n, %.noexc.preheader ], [ %i.ak, %._crit_edge ] ; 2 uses
  %indvars.iv138 = phi i64 [ %i.p, %.noexc.preheader ], [ %indvars.iv.next139, %._crit_edge ] ; 2 uses
  %i.ad = load ptr, ptr %3, align 8, !tbaa !39, !noalias !243
  %i.ae = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !243
  %i.af = mul i64 %i.ae, %indvars.iv138
  %i.ag = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !243
  %i.ah = mul i64 %i.af, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ah ; 2 uses
  %i.aj = icmp sgt i32 %i.ac, 3
  br i1 %i.aj, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %.noexc
  %i.ak = phi i32 [ %i.ac, %.noexc ], [ %i.dw, %.lr.ph ] ; 3 uses
  %.025.lcssa = phi ptr [ %i.ai, %.noexc ], [ %i.dt, %.lr.ph ]
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.du, %.lr.ph ] ; 2 uses
  %i.al = icmp slt i32 %.0.lcssa, %i.ak
  br i1 %i.al, label %.lr.ph127, label %._crit_edge

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.0122 = phi i32 [ %i.du, %.lr.ph ], [ 0, %.noexc ]
  %.025121 = phi ptr [ %i.dt, %.lr.ph ], [ %i.ai, %.noexc ] ; 3 uses
  %i.am = load <4 x float>, ptr %.025121, align 16, !tbaa !46 ; 8 uses
  %i.an = fmul fast <4 x float> %i.am, %i.am      ; 2 uses
  %i.ao = fmul fast <4 x float> %i.am, splat (float f0x3EAAAAAB) ; 2 uses
  %i.ap = fadd fast <4 x float> %i.ao, splat (float -5.000000e-01)
  %i.aq = fmul fast <4 x float> %i.an, %i.ap
  %i.ar = fadd fast <4 x float> %i.aq, %i.am
  %i.as = fadd fast <4 x float> %i.am, splat (float 1.000000e+00)
  %i.at = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.as, <4 x float> splat (float f0x00800000))
  %i.au = bitcast <4 x float> %i.at to <4 x i32>  ; 2 uses
  %i.av = lshr <4 x i32> %i.au, splat (i32 23)
  %i.aw = and <4 x i32> %i.au, splat (i32 -2139095041)
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
  %reass.add117 = fadd fast <4 x float> %i.by, splat (float -5.000000e-01)
  %reass.mul118 = fmul fast <4 x float> %i.bh, %reass.add117
  %i.bz = fadd fast <4 x float> %reass.mul, %i.bg
  %i.ca = fadd fast <4 x float> %i.bz, %reass.mul118
  %i.cb = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.am)
  %i.cc = fcmp fast uge <4 x float> %i.cb, splat (float f0x38D1B717) ; 2 uses
  %i.cd = select <4 x i1> %i.cc, <4 x float> %i.ca, <4 x float> %i.ar
  %i.ce = fsub fast <4 x float> splat (float -5.000000e-01), %i.ao
  %i.cf = fmul fast <4 x float> %i.an, %i.ce
  %i.cg = fsub fast <4 x float> %i.cf, %i.am
  %i.ch = fsub fast <4 x float> splat (float 1.000000e+00), %i.am
  %i.ci = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ch, <4 x float> splat (float f0x00800000))
  %i.cj = bitcast <4 x float> %i.ci to <4 x i32>  ; 2 uses
  %i.ck = lshr <4 x i32> %i.cj, splat (i32 23)
  %i.cl = and <4 x i32> %i.cj, splat (i32 -2139095041)
  %i.cm = or disjoint <4 x i32> %i.cl, splat (i32 1056964608)
  %i.cn = bitcast <4 x i32> %i.cm to <4 x float>  ; 3 uses
  %i.co = add nsw <4 x i32> %i.ck, splat (i32 -127)
  %i.cp = sitofp fast <4 x i32> %i.co to <4 x float> ; 2 uses
  %i.cq = fadd fast <4 x float> %i.cp, splat (float 1.000000e+00)
  %i.cr = fcmp fast olt <4 x float> %i.cn, splat (float f0x3F3504F3) ; 2 uses
  %i.cs = select <4 x i1> %i.cr, <4 x float> %i.cn, <4 x float> zeroinitializer
  %i.ct = fadd fast <4 x float> %i.cn, splat (float -1.000000e+00)
  %i.cu = select fast <4 x i1> %i.cr, <4 x float> %i.cp, <4 x float> %i.cq
  %i.cv = fadd fast <4 x float> %i.ct, %i.cs      ; 12 uses
  %i.cw = fmul fast <4 x float> %i.cv, %i.cv
  %i.cx = fmul fast <4 x float> %i.cv, splat (float f0x3D9021BB)
  %i.cy = fadd fast <4 x float> %i.cx, splat (float f0xBDEBD1B8)
  %i.cz = fmul fast <4 x float> %i.cy, %i.cv
  %i.da = fadd fast <4 x float> %i.cz, splat (float f0x3DEF251A)
  %i.db = fmul fast <4 x float> %i.da, %i.cv
  %i.dc = fadd fast <4 x float> %i.db, splat (float f0xBDFE5D4F)
  %i.dd = fmul fast <4 x float> %i.dc, %i.cv
  %i.de = fadd fast <4 x float> %i.dd, splat (float f0x3E11E9BF)
  %i.df = fmul fast <4 x float> %i.de, %i.cv
  %i.dg = fadd fast <4 x float> %i.df, splat (float f0xBE2AAE50)
  %i.dh = fmul fast <4 x float> %i.dg, %i.cv
  %i.di = fadd fast <4 x float> %i.dh, splat (float f0x3E4CCEAC)
  %i.dj = fmul fast <4 x float> %i.di, %i.cv
  %i.dk = fadd fast <4 x float> %i.dj, splat (float f0xBE7FFFFC)
  %i.dl = fmul fast <4 x float> %i.dk, %i.cv
  %i.dm = fadd fast <4 x float> %i.dl, splat (float f0x3EAAAAAA)
  %i.dn = fmul fast <4 x float> %i.dm, %i.cv
  %reass.mul116 = fmul fast <4 x float> %i.cu, splat (float f0x3F317218)
  %reass.add119 = fadd fast <4 x float> %i.dn, splat (float -5.000000e-01)
  %reass.mul120 = fmul fast <4 x float> %i.cw, %reass.add119
  %i.do = fadd fast <4 x float> %reass.mul116, %i.cv
  %i.dp = fadd fast <4 x float> %i.do, %reass.mul120
  %i.dq = select <4 x i1> %i.cc, <4 x float> %i.dp, <4 x float> %i.cg
  %i.dr = fsub fast <4 x float> %i.cd, %i.dq
  %i.ds = fmul fast <4 x float> %i.dr, splat (float 5.000000e-01)
  store <4 x float> %i.ds, ptr %.025121, align 16, !tbaa !46
  %i.dt = getelementptr inbounds nuw i8, ptr %.025121, i64 16 ; 2 uses
  %i.du = add nuw nsw i32 %.0122, 4               ; 3 uses
  %i.dv = or disjoint i32 %i.du, 3
  %i.dw = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.dx = icmp slt i32 %i.dv, %i.dw
  br i1 %i.dx, label %.lr.ph, label %.preheader, !llvm.loop !241

.lr.ph127:                                        ; preds = %.preheader, %.lr.ph127
  %.1126 = phi i32 [ %i.eb, %.lr.ph127 ], [ %.0.lcssa, %.preheader ]
  %.126125 = phi ptr [ %i.ea, %.lr.ph127 ], [ %.025.lcssa, %.preheader ] ; 3 uses
  %i.dy = load float, ptr %.126125, align 4, !tbaa !42
  %i.dz = call fast noundef nofpclass(nan inf) float @atanhf(float noundef nofpclass(nan inf) %i.dy) #20
  store float %i.dz, ptr %.126125, align 4, !tbaa !42
  %i.ea = getelementptr inbounds nuw i8, ptr %.126125, i64 4
  %i.eb = add nuw nsw i32 %.1126, 1               ; 2 uses
  %exitcond137.not = icmp eq i32 %i.eb, %i.ak
  br i1 %exitcond137.not, label %._crit_edge, label %.lr.ph127, !llvm.loop !240

._crit_edge:                                      ; preds = %.lr.ph127, %.preheader
  %indvars.iv.next139 = add nsw i64 %indvars.iv138, 1 ; 2 uses
  %lftr.wideiv141 = trunc i64 %indvars.iv.next139 to i32
  %exitcond142.not = icmp eq i32 %i.q, %lftr.wideiv141
  br i1 %exitcond142.not, label %._crit_edge130, label %.noexc, !llvm.loop !242

._crit_edge130:                                   ; preds = %._crit_edge.us, %._crit_edge, %.noexc.lr.ph.split.us, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge130, %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare nofpclass(nan inf) float @atanhf(float noundef nofpclass(nan inf)) local_unnamed_addr #15

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL16unary_op_inplaceINS_19UnaryOp_x86_functor14unary_op_log1pEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #7 personality ptr @__gxx_personality_v0 {
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
  %.not81 = icmp sgt i32 %i.k, %i.j
  br i1 %.not81, label %._crit_edge83, label %.noexc.lr.ph

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
  %i.r = load ptr, ptr %3, align 8, !tbaa !39, !noalias !249
  %i.s = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !249
  %i.t = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !249
  %factor.op.mul = mul i64 %i.s, %i.t
  %i.u = icmp sgt i32 %i.n, 0
  br i1 %i.u, label %.noexc.us.preheader, label %._crit_edge83

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
  %.179.us = phi i32 [ 0, %.noexc.us ], [ %i.ab, %bb.c ]
  %.12678.us = phi ptr [ %i.x, %.noexc.us ], [ %i.aa, %bb.c ] ; 3 uses
  %i.y = load float, ptr %.12678.us, align 4, !tbaa !42
  %i.z = call fast noundef nofpclass(nan inf) float @log1pf(float noundef nofpclass(nan inf) %i.y) #20
  store float %i.z, ptr %.12678.us, align 4, !tbaa !42
  %i.aa = getelementptr inbounds nuw i8, ptr %.12678.us, i64 4
  %i.ab = add nuw nsw i32 %.179.us, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.ab, %i.n
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.c, !llvm.loop !246

._crit_edge.us:                                   ; preds = %bb.c
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond89.not = icmp eq i32 %i.w, %lftr.wideiv
  br i1 %exitcond89.not, label %._crit_edge83, label %.noexc.us

.noexc:                                           ; preds = %.noexc.preheader, %._crit_edge
  %i.ac = phi i32 [ %i.n, %.noexc.preheader ], [ %i.ak, %._crit_edge ] ; 2 uses
  %indvars.iv91 = phi i64 [ %i.p, %.noexc.preheader ], [ %indvars.iv.next92, %._crit_edge ] ; 2 uses
  %i.ad = load ptr, ptr %3, align 8, !tbaa !39, !noalias !249
  %i.ae = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !249
  %i.af = mul i64 %i.ae, %indvars.iv91
  %i.ag = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !249
  %i.ah = mul i64 %i.af, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ah ; 2 uses
  %i.aj = icmp sgt i32 %i.ac, 3
  br i1 %i.aj, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %.noexc
  %i.ak = phi i32 [ %i.ac, %.noexc ], [ %i.cj, %.lr.ph ] ; 3 uses
  %.025.lcssa = phi ptr [ %i.ai, %.noexc ], [ %i.cg, %.lr.ph ]
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.ch, %.lr.ph ] ; 2 uses
  %i.al = icmp slt i32 %.0.lcssa, %i.ak
  br i1 %i.al, label %.lr.ph80, label %._crit_edge

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.075 = phi i32 [ %i.ch, %.lr.ph ], [ 0, %.noexc ]
  %.02574 = phi ptr [ %i.cg, %.lr.ph ], [ %i.ai, %.noexc ] ; 3 uses
  %i.am = load <4 x float>, ptr %.02574, align 16, !tbaa !46 ; 6 uses
  %i.an = fmul fast <4 x float> %i.am, %i.am
  %i.ao = fmul fast <4 x float> %i.am, splat (float f0x3EAAAAAB)
  %i.ap = fadd fast <4 x float> %i.ao, splat (float -5.000000e-01)
  %i.aq = fmul fast <4 x float> %i.an, %i.ap
  %i.ar = fadd fast <4 x float> %i.aq, %i.am
  %i.as = fadd fast <4 x float> %i.am, splat (float 1.000000e+00) ; 2 uses
  %i.at = fcmp fast ole <4 x float> %i.as, zeroinitializer
  %i.au = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.as, <4 x float> splat (float f0x00800000))
  %i.av = bitcast <4 x float> %i.au to <4 x i32>  ; 2 uses
  %i.aw = lshr <4 x i32> %i.av, splat (i32 23)
  %i.ax = and <4 x i32> %i.av, splat (i32 -2139095041)
  %i.ay = or disjoint <4 x i32> %i.ax, splat (i32 1056964608)
  %i.az = bitcast <4 x i32> %i.ay to <4 x float>  ; 3 uses
  %i.ba = add nsw <4 x i32> %i.aw, splat (i32 -127)
  %i.bb = sitofp fast <4 x i32> %i.ba to <4 x float> ; 2 uses
  %i.bc = fadd fast <4 x float> %i.bb, splat (float 1.000000e+00)
  %i.bd = fcmp fast olt <4 x float> %i.az, splat (float f0x3F3504F3) ; 2 uses
  %i.be = select <4 x i1> %i.bd, <4 x float> %i.az, <4 x float> zeroinitializer
  %i.bf = fadd fast <4 x float> %i.az, splat (float -1.000000e+00)
  %i.bg = select fast <4 x i1> %i.bd, <4 x float> %i.bb, <4 x float> %i.bc
  %i.bh = fadd fast <4 x float> %i.bf, %i.be      ; 12 uses
  %i.bi = fmul fast <4 x float> %i.bh, %i.bh
  %i.bj = fmul fast <4 x float> %i.bh, splat (float f0x3D9021BB)
  %i.bk = fadd fast <4 x float> %i.bj, splat (float f0xBDEBD1B8)
  %i.bl = fmul fast <4 x float> %i.bk, %i.bh
  %i.bm = fadd fast <4 x float> %i.bl, splat (float f0x3DEF251A)
  %i.bn = fmul fast <4 x float> %i.bm, %i.bh
  %i.bo = fadd fast <4 x float> %i.bn, splat (float f0xBDFE5D4F)
  %i.bp = fmul fast <4 x float> %i.bo, %i.bh
  %i.bq = fadd fast <4 x float> %i.bp, splat (float f0x3E11E9BF)
  %i.br = fmul fast <4 x float> %i.bq, %i.bh
  %i.bs = fadd fast <4 x float> %i.br, splat (float f0xBE2AAE50)
  %i.bt = fmul fast <4 x float> %i.bs, %i.bh
  %i.bu = fadd fast <4 x float> %i.bt, splat (float f0x3E4CCEAC)
  %i.bv = fmul fast <4 x float> %i.bu, %i.bh
  %i.bw = fadd fast <4 x float> %i.bv, splat (float f0xBE7FFFFC)
  %i.bx = fmul fast <4 x float> %i.bw, %i.bh
  %i.by = fadd fast <4 x float> %i.bx, splat (float f0x3EAAAAAA)
  %i.bz = fmul fast <4 x float> %i.by, %i.bh
  %reass.mul = fmul fast <4 x float> %i.bg, splat (float f0x3F317218)
  %reass.add72 = fadd fast <4 x float> %i.bz, splat (float -5.000000e-01)
  %reass.mul73 = fmul fast <4 x float> %i.bi, %reass.add72
  %i.ca = fadd fast <4 x float> %reass.mul, %i.bh
  %i.cb = fadd fast <4 x float> %i.ca, %reass.mul73
  %i.cc = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.am)
  %i.cd = fcmp fast uge <4 x float> %i.cc, splat (float f0x38D1B717)
  %i.ce = select <4 x i1> %i.at, <4 x float> splat (float -nan(0x3FFFFF)), <4 x float> %i.cb
  %i.cf = select <4 x i1> %i.cd, <4 x float> %i.ce, <4 x float> %i.ar
  store <4 x float> %i.cf, ptr %.02574, align 16, !tbaa !46
  %i.cg = getelementptr inbounds nuw i8, ptr %.02574, i64 16 ; 2 uses
  %i.ch = add nuw nsw i32 %.075, 4                ; 3 uses
  %i.ci = or disjoint i32 %i.ch, 3
  %i.cj = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.ck = icmp slt i32 %i.ci, %i.cj
  br i1 %i.ck, label %.lr.ph, label %.preheader, !llvm.loop !247

.lr.ph80:                                         ; preds = %.preheader, %.lr.ph80
end_hunk_0
begin_hunk_1_@_ZN4ncnnL22unary_op_inplace_bf16sINS_19UnaryOp_x86_functor13unary_op_ceilEEEiRNS_3MatERKNS_6OptionE.omp_outlined:bb.a
  %i.bb = mul i64 %i.ba, %indvars.iv60
  %i.bc = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !279
  %i.bd = mul i64 %i.bb, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bd ; 2 uses
  %i.bf = icmp sgt i32 %i.ay, 3
  br i1 %i.bf, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %.noexc
  %i.bg = phi i32 [ %i.ay, %.noexc ], [ %i.de, %.lr.ph ] ; 4 uses
  %.025.lcssa = phi ptr [ %i.be, %.noexc ], [ %i.db, %.lr.ph ] ; 3 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.dc, %.lr.ph ] ; 4 uses
  %i.bh = icmp slt i32 %.0.lcssa, %i.bg
  br i1 %i.bh, label %.lr.ph49.preheader, label %._crit_edge

.lr.ph49.preheader:                               ; preds = %.preheader
  %i.bi = xor i32 %.0.lcssa, -1
  %i.bj = add i32 %i.bg, %i.bi                    ; 2 uses
  %i.bk = zext i32 %i.bj to i64
  %i.bl = add nuw nsw i64 %i.bk, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.bj, 7
  br i1 %min.iters.check, label %.lr.ph49.preheader79, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph49.preheader
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
  %i.bu = call fast <8 x float> @llvm.ceil.v8f32(<8 x float> %i.bt)
  %i.bv = bitcast <8 x float> %i.bu to <8 x i32>
  %i.bw = lshr <8 x i32> %i.bv, splat (i32 16)
  %i.bx = trunc nuw <8 x i32> %i.bw to <8 x i16>
  store <8 x i16> %i.bx, ptr %next.gep, align 2, !tbaa !51
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.by = icmp eq i64 %index.next, %n.vec
  br i1 %i.by, label %middle.block, label %vector.body, !llvm.loop !275

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bl, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph49.preheader79

.lr.ph49.preheader79:                             ; preds = %.lr.ph49.preheader, %middle.block
  %.148.ph = phi i32 [ %.0.lcssa, %.lr.ph49.preheader ], [ %i.bn, %middle.block ]
  %.12647.ph = phi ptr [ %.025.lcssa, %.lr.ph49.preheader ], [ %i.bp, %middle.block ]
  br label %.lr.ph49

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.044 = phi i32 [ %i.dc, %.lr.ph ], [ 0, %.noexc ]
  %.02543 = phi ptr [ %i.db, %.lr.ph ], [ %i.be, %.noexc ] ; 3 uses
  %i.bz = load i64, ptr %.02543, align 1, !tbaa !46
  %i.ca = insertelement <2 x i64> poison, i64 %i.bz, i64 0
  %i.cb = bitcast <2 x i64> %i.ca to <8 x i16>
  %i.cc = shufflevector <8 x i16> %i.cb, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3> ; 3 uses
  %i.cd = bitcast <8 x i16> %i.cc to <4 x float>  ; 3 uses
  %i.ce = bitcast <8 x i16> %i.cc to <4 x i32>
  %i.cf = and <4 x i32> %i.ce, splat (i32 2147418112)
  %i.cg = bitcast <4 x i32> %i.cf to <4 x float>  ; 2 uses
  %i.ch = bitcast <8 x i16> %i.cc to <4 x i32>
  %i.ci = and <4 x i32> %i.ch, splat (i32 -2147483648)
  %i.cj = fcmp fast ule <4 x float> %i.cg, splat (float f0x4B000000)
  %i.ck = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.cg)
  %i.cl = sitofp fast <4 x i32> %i.ck to <4 x float>
  %i.cm = bitcast <4 x float> %i.cl to <4 x i32>
  %i.cn = or <4 x i32> %i.ci, %i.cm
  %i.co = bitcast <4 x i32> %i.cn to <4 x float>  ; 2 uses
  %i.cp = fcmp fast ogt <4 x float> %i.cd, zeroinitializer
  %i.cq = fcmp fast olt <4 x float> %i.co, %i.cd
  %i.cr = and <4 x i1> %i.cp, %i.cq
  %i.cs = select <4 x i1> %i.cr, <4 x float> splat (float -1.000000e+00), <4 x float> zeroinitializer
  %i.ct = fsub fast <4 x float> %i.co, %i.cs
  %i.cu = select <4 x i1> %i.cj, <4 x float> %i.ct, <4 x float> %i.cd
  %i.cv = bitcast <4 x float> %i.cu to <8 x i16>
  %i.cw = shufflevector <8 x i16> %i.cv, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.cx = bitcast <8 x i16> %i.cw to <4 x float>
  %i.cy = shufflevector <4 x float> %i.cx, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.cz = bitcast <4 x float> %i.cy to <2 x i64>
  %i.da = extractelement <2 x i64> %i.cz, i64 0
  store i64 %i.da, ptr %.02543, align 1, !tbaa !46
  %i.db = getelementptr inbounds nuw i8, ptr %.02543, i64 8 ; 2 uses
  %i.dc = add nuw nsw i32 %.044, 4                ; 3 uses
  %i.dd = or disjoint i32 %i.dc, 3
  %i.de = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.df = icmp slt i32 %i.dd, %i.de
  br i1 %i.df, label %.lr.ph, label %.preheader, !llvm.loop !276

.lr.ph49:                                         ; preds = %.lr.ph49.preheader79, %.lr.ph49
  %.148 = phi i32 [ %i.dp, %.lr.ph49 ], [ %.148.ph, %.lr.ph49.preheader79 ]
  %.12647 = phi ptr [ %i.do, %.lr.ph49 ], [ %.12647.ph, %.lr.ph49.preheader79 ] ; 3 uses
  %i.dg = load i16, ptr %.12647, align 2, !tbaa !51
  %i.dh = zext i16 %i.dg to i32
  %i.di = shl nuw i32 %i.dh, 16
  %i.dj = bitcast i32 %i.di to float
  %i.dk = call fast noundef nofpclass(nan inf) float @llvm.ceil.f32(float %i.dj)
  %i.dl = bitcast float %i.dk to i32
  %i.dm = lshr i32 %i.dl, 16
  %i.dn = trunc nuw i32 %i.dm to i16
  store i16 %i.dn, ptr %.12647, align 2, !tbaa !51
  %i.do = getelementptr inbounds nuw i8, ptr %.12647, i64 2
  %i.dp = add nuw nsw i32 %.148, 1                ; 2 uses
  %exitcond59.not = icmp eq i32 %i.dp, %i.bg
  br i1 %exitcond59.not, label %._crit_edge, label %.lr.ph49, !llvm.loop !277

._crit_edge:                                      ; preds = %.lr.ph49, %middle.block, %.preheader
  %indvars.iv.next61 = add nsw i64 %indvars.iv60, 1 ; 2 uses
  %lftr.wideiv63 = trunc i64 %indvars.iv.next61 to i32
  %exitcond64.not = icmp eq i32 %i.q, %lftr.wideiv63
  br i1 %exitcond64.not, label %._crit_edge52, label %.noexc, !llvm.loop !278

._crit_edge52:                                    ; preds = %._crit_edge.us, %._crit_edge, %.noexc.lr.ph.split.us, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge52, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL22unary_op_inplace_bf16sINS_19UnaryOp_x86_functor15unary_op_squareEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #7 personality ptr @__gxx_personality_v0 {
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
  %.not45 = icmp sgt i32 %i.k, %i.j
  br i1 %.not45, label %._crit_edge47, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.n = load i32, ptr %4, align 4, !tbaa !37     ; 5 uses
  %i.o = icmp sgt i32 %i.n, 3
  %.pre60 = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !286 ; 2 uses
  br i1 %i.o, label %.noexc.preheader, label %.noexc.lr.ph.split.us

.noexc.preheader:                                 ; preds = %.noexc.lr.ph
  %i.p = sext i32 %i.k to i64
  %i.q = add nsw i32 %i.j, 1
  %.pre62 = load ptr, ptr %3, align 8, !tbaa !39, !noalias !286
  %.pre64 = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !286
  br label %.noexc

.noexc.lr.ph.split.us:                            ; preds = %.noexc.lr.ph
  %i.r = load ptr, ptr %3, align 8, !tbaa !39, !noalias !286
  %i.s = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !286
  %factor.op.mul = mul i64 %i.s, %.pre60
  %i.t = icmp sgt i32 %i.n, 0
  br i1 %i.t, label %.noexc.us.preheader, label %._crit_edge47

.noexc.us.preheader:                              ; preds = %.noexc.lr.ph.split.us
  %i.u = sext i32 %i.k to i64
  %i.v = add nsw i32 %i.j, 1
  %exitcond.not = icmp eq i32 %i.n, 1
  %exitcond.not.1 = icmp eq i32 %i.n, 2
  br label %.noexc.us

.noexc.us:                                        ; preds = %.noexc.us.preheader, %._crit_edge.us
  %indvars.iv = phi i64 [ %i.u, %.noexc.us.preheader ], [ %indvars.iv.next, %._crit_edge.us ] ; 2 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 %.reass ; 4 uses
  %i.x = load i16, ptr %i.w, align 2, !tbaa !51
  %i.y = zext i16 %i.x to i32
  %i.z = shl nuw i32 %i.y, 16
  %i.aa = bitcast i32 %i.z to float               ; 2 uses
  %i.ab = fmul fast float %i.aa, %i.aa
  %i.ac = bitcast float %i.ab to i32
  %i.ad = lshr i32 %i.ac, 16
  %i.ae = trunc nuw nsw i32 %i.ad to i16
  store i16 %i.ae, ptr %i.w, align 2, !tbaa !51
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.c

bb.c:                                             ; preds = %.noexc.us
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 2 ; 2 uses
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !51
  %i.ah = zext i16 %i.ag to i32
  %i.ai = shl nuw i32 %i.ah, 16
  %i.aj = bitcast i32 %i.ai to float              ; 2 uses
  %i.ak = fmul fast float %i.aj, %i.aj
  %i.al = bitcast float %i.ak to i32
  %i.am = lshr i32 %i.al, 16
  %i.an = trunc nuw nsw i32 %i.am to i16
  store i16 %i.an, ptr %i.af, align 2, !tbaa !51
  br i1 %exitcond.not.1, label %._crit_edge.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw i8, ptr %i.w, i64 4 ; 2 uses
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !51
  %i.aq = zext i16 %i.ap to i32
  %i.ar = shl nuw i32 %i.aq, 16
  %i.as = bitcast i32 %i.ar to float              ; 2 uses
  %i.at = fmul fast float %i.as, %i.as
  %i.au = bitcast float %i.at to i32
  %i.av = lshr i32 %i.au, 16
  %i.aw = trunc nuw nsw i32 %i.av to i16
  store i16 %i.aw, ptr %i.ao, align 2, !tbaa !51
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %bb.d, %bb.c, %.noexc.us
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond53.not = icmp eq i32 %i.v, %lftr.wideiv
  br i1 %exitcond53.not, label %._crit_edge47, label %.noexc.us

.noexc:                                           ; preds = %.noexc.preheader, %._crit_edge
  %i.ax = phi i64 [ %.pre64, %.noexc.preheader ], [ %i.bf, %._crit_edge ] ; 2 uses
  %i.ay = phi ptr [ %.pre62, %.noexc.preheader ], [ %i.bg, %._crit_edge ] ; 2 uses
  %i.az = phi i32 [ %i.n, %.noexc.preheader ], [ %i.bh, %._crit_edge ] ; 2 uses
  %i.ba = phi i64 [ %.pre60, %.noexc.preheader ], [ %i.bi, %._crit_edge ] ; 2 uses
  %indvars.iv55 = phi i64 [ %i.p, %.noexc.preheader ], [ %indvars.iv.next56, %._crit_edge ] ; 2 uses
  %i.bb = mul i64 %i.ax, %indvars.iv55
  %i.bc = mul i64 %i.bb, %i.ba
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bc ; 2 uses
  %i.be = icmp sgt i32 %i.az, 3
  br i1 %i.be, label %.lr.ph, label %.preheader

.preheader.loopexit:                              ; preds = %.lr.ph
  %.pre = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !286
  %.pre61 = load ptr, ptr %3, align 8, !tbaa !39, !noalias !286
  %.pre63 = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !286
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.noexc
  %i.bf = phi i64 [ %i.ax, %.noexc ], [ %.pre63, %.preheader.loopexit ]
  %i.bg = phi ptr [ %i.ay, %.noexc ], [ %.pre61, %.preheader.loopexit ]
  %i.bh = phi i32 [ %i.az, %.noexc ], [ %i.cq, %.preheader.loopexit ] ; 4 uses
  %i.bi = phi i64 [ %i.ba, %.noexc ], [ %.pre, %.preheader.loopexit ]
  %.025.lcssa = phi ptr [ %i.bd, %.noexc ], [ %i.cn, %.preheader.loopexit ] ; 3 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.co, %.preheader.loopexit ] ; 4 uses
  %i.bj = icmp slt i32 %.0.lcssa, %i.bh
  br i1 %i.bj, label %.lr.ph44.preheader, label %._crit_edge

.lr.ph44.preheader:                               ; preds = %.preheader
  %i.bk = xor i32 %.0.lcssa, -1
  %i.bl = add i32 %i.bh, %i.bk                    ; 2 uses
  %i.bm = zext i32 %i.bl to i64
  %i.bn = add nuw nsw i64 %i.bm, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.bl, 7
  br i1 %min.iters.check, label %.lr.ph44.preheader78, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph44.preheader
  %n.vec = and i64 %i.bn, 8589934584              ; 4 uses
  %i.bo = trunc i64 %n.vec to i32
  %i.bp = add i32 %.0.lcssa, %i.bo
  %i.bq = shl nuw nsw i64 %n.vec, 1
  %i.br = getelementptr i8, ptr %.025.lcssa, i64 %i.bq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bs = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.025.lcssa, i64 %i.bs ; 2 uses
  %wide.load = load <8 x i16>, ptr %next.gep, align 2, !tbaa !51
  %i.bt = zext <8 x i16> %wide.load to <8 x i32>
  %i.bu = shl nuw <8 x i32> %i.bt, splat (i32 16)
  %i.bv = bitcast <8 x i32> %i.bu to <8 x float>  ; 2 uses
  %i.bw = fmul fast <8 x float> %i.bv, %i.bv
  %i.bx = bitcast <8 x float> %i.bw to <8 x i32>
  %i.by = lshr <8 x i32> %i.bx, splat (i32 16)
  %i.bz = trunc nuw nsw <8 x i32> %i.by to <8 x i16>
  store <8 x i16> %i.bz, ptr %next.gep, align 2, !tbaa !51
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ca = icmp eq i64 %index.next, %n.vec
  br i1 %i.ca, label %middle.block, label %vector.body, !llvm.loop !282

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bn, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph44.preheader78

.lr.ph44.preheader78:                             ; preds = %.lr.ph44.preheader, %middle.block
  %.143.ph = phi i32 [ %.0.lcssa, %.lr.ph44.preheader ], [ %i.bp, %middle.block ]
  %.12642.ph = phi ptr [ %.025.lcssa, %.lr.ph44.preheader ], [ %i.br, %middle.block ]
  br label %.lr.ph44

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.039 = phi i32 [ %i.co, %.lr.ph ], [ 0, %.noexc ]
  %.02538 = phi ptr [ %i.cn, %.lr.ph ], [ %i.bd, %.noexc ] ; 3 uses
  %i.cb = load i64, ptr %.02538, align 1, !tbaa !46
  %i.cc = insertelement <2 x i64> poison, i64 %i.cb, i64 0
  %i.cd = bitcast <2 x i64> %i.cc to <8 x i16>
  %i.ce = shufflevector <8 x i16> %i.cd, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.cf = bitcast <8 x i16> %i.ce to <4 x float>  ; 2 uses
  %i.cg = fmul fast <4 x float> %i.cf, %i.cf
  %i.ch = bitcast <4 x float> %i.cg to <8 x i16>
  %i.ci = shufflevector <8 x i16> %i.ch, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.cj = bitcast <8 x i16> %i.ci to <4 x float>
  %i.ck = shufflevector <4 x float> %i.cj, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.cl = bitcast <4 x float> %i.ck to <2 x i64>
  %i.cm = extractelement <2 x i64> %i.cl, i64 0
  store i64 %i.cm, ptr %.02538, align 1, !tbaa !46
  %i.cn = getelementptr inbounds nuw i8, ptr %.02538, i64 8 ; 2 uses
  %i.co = add nuw nsw i32 %.039, 4                ; 3 uses
  %i.cp = or disjoint i32 %i.co, 3
  %i.cq = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.cr = icmp slt i32 %i.cp, %i.cq
  br i1 %i.cr, label %.lr.ph, label %.preheader.loopexit, !llvm.loop !283

.lr.ph44:                                         ; preds = %.lr.ph44.preheader78, %.lr.ph44
  %.143 = phi i32 [ %i.db, %.lr.ph44 ], [ %.143.ph, %.lr.ph44.preheader78 ]
  %.12642 = phi ptr [ %i.da, %.lr.ph44 ], [ %.12642.ph, %.lr.ph44.preheader78 ] ; 3 uses
  %i.cs = load i16, ptr %.12642, align 2, !tbaa !51
  %i.ct = zext i16 %i.cs to i32
  %i.cu = shl nuw i32 %i.ct, 16
  %i.cv = bitcast i32 %i.cu to float              ; 2 uses
  %i.cw = fmul fast float %i.cv, %i.cv
  %i.cx = bitcast float %i.cw to i32
  %i.cy = lshr i32 %i.cx, 16
  %i.cz = trunc nuw nsw i32 %i.cy to i16
  store i16 %i.cz, ptr %.12642, align 2, !tbaa !51
  %i.da = getelementptr inbounds nuw i8, ptr %.12642, i64 2
  %i.db = add nuw nsw i32 %.143, 1                ; 2 uses
  %exitcond54.not = icmp eq i32 %i.db, %i.bh
  br i1 %exitcond54.not, label %._crit_edge, label %.lr.ph44, !llvm.loop !284

._crit_edge:                                      ; preds = %.lr.ph44, %middle.block, %.preheader
  %indvars.iv.next56 = add nsw i64 %indvars.iv55, 1 ; 2 uses
  %lftr.wideiv58 = trunc i64 %indvars.iv.next56 to i32
  %exitcond59.not = icmp eq i32 %i.q, %lftr.wideiv58
  br i1 %exitcond59.not, label %._crit_edge47, label %.noexc, !llvm.loop !285

._crit_edge47:                                    ; preds = %._crit_edge.us, %._crit_edge, %.noexc.lr.ph.split.us, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge47, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL22unary_op_inplace_bf16sINS_19UnaryOp_x86_functor13unary_op_sqrtEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #7 personality ptr @__gxx_personality_v0 {
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
  %.not45 = icmp sgt i32 %i.k, %i.j
  br i1 %.not45, label %._crit_edge47, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.n = load i32, ptr %4, align 4, !tbaa !37     ; 5 uses
  %i.o = icmp sgt i32 %i.n, 3
  %.pre60 = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !293 ; 2 uses
  br i1 %i.o, label %.noexc.preheader, label %.noexc.lr.ph.split.us

.noexc.preheader:                                 ; preds = %.noexc.lr.ph
  %i.p = sext i32 %i.k to i64
  %i.q = add nsw i32 %i.j, 1
  %.pre62 = load ptr, ptr %3, align 8, !tbaa !39, !noalias !293
  %.pre64 = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !293
  br label %.noexc

.noexc.lr.ph.split.us:                            ; preds = %.noexc.lr.ph
  %i.r = load ptr, ptr %3, align 8, !tbaa !39, !noalias !293
  %i.s = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !293
  %factor.op.mul = mul i64 %i.s, %.pre60
  %i.t = icmp sgt i32 %i.n, 0
  br i1 %i.t, label %.noexc.us.preheader, label %._crit_edge47

.noexc.us.preheader:                              ; preds = %.noexc.lr.ph.split.us
  %i.u = sext i32 %i.k to i64
  %i.v = add nsw i32 %i.j, 1
  %exitcond.not = icmp eq i32 %i.n, 1
  %exitcond.not.1 = icmp eq i32 %i.n, 2
  br label %.noexc.us

.noexc.us:                                        ; preds = %.noexc.us.preheader, %._crit_edge.us
  %indvars.iv = phi i64 [ %i.u, %.noexc.us.preheader ], [ %indvars.iv.next, %._crit_edge.us ] ; 2 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 %.reass ; 4 uses
  %i.x = load i16, ptr %i.w, align 2, !tbaa !51
  %i.y = zext i16 %i.x to i32
  %i.z = shl nuw i32 %i.y, 16
  %i.aa = bitcast i32 %i.z to float
  %i.ab = call fast noundef nofpclass(nan inf) float @llvm.sqrt.f32(float %i.aa)
  %i.ac = bitcast float %i.ab to i32
  %i.ad = lshr i32 %i.ac, 16
  %i.ae = trunc nuw i32 %i.ad to i16
  store i16 %i.ae, ptr %i.w, align 2, !tbaa !51
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.c

bb.c:                                             ; preds = %.noexc.us
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 2 ; 2 uses
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !51
  %i.ah = zext i16 %i.ag to i32
  %i.ai = shl nuw i32 %i.ah, 16
  %i.aj = bitcast i32 %i.ai to float
  %i.ak = call fast noundef nofpclass(nan inf) float @llvm.sqrt.f32(float %i.aj)
  %i.al = bitcast float %i.ak to i32
  %i.am = lshr i32 %i.al, 16
  %i.an = trunc nuw i32 %i.am to i16
  store i16 %i.an, ptr %i.af, align 2, !tbaa !51
  br i1 %exitcond.not.1, label %._crit_edge.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw i8, ptr %i.w, i64 4 ; 2 uses
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !51
  %i.aq = zext i16 %i.ap to i32
  %i.ar = shl nuw i32 %i.aq, 16
  %i.as = bitcast i32 %i.ar to float
  %i.at = call fast noundef nofpclass(nan inf) float @llvm.sqrt.f32(float %i.as)
  %i.au = bitcast float %i.at to i32
  %i.av = lshr i32 %i.au, 16
  %i.aw = trunc nuw i32 %i.av to i16
  store i16 %i.aw, ptr %i.ao, align 2, !tbaa !51
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %bb.d, %bb.c, %.noexc.us
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond53.not = icmp eq i32 %i.v, %lftr.wideiv
  br i1 %exitcond53.not, label %._crit_edge47, label %.noexc.us

.noexc:                                           ; preds = %.noexc.preheader, %._crit_edge
  %i.ax = phi i64 [ %.pre64, %.noexc.preheader ], [ %i.bf, %._crit_edge ] ; 2 uses
  %i.ay = phi ptr [ %.pre62, %.noexc.preheader ], [ %i.bg, %._crit_edge ] ; 2 uses
  %i.az = phi i32 [ %i.n, %.noexc.preheader ], [ %i.bh, %._crit_edge ] ; 2 uses
  %i.ba = phi i64 [ %.pre60, %.noexc.preheader ], [ %i.bi, %._crit_edge ] ; 2 uses
  %indvars.iv55 = phi i64 [ %i.p, %.noexc.preheader ], [ %indvars.iv.next56, %._crit_edge ] ; 2 uses
  %i.bb = mul i64 %i.ax, %indvars.iv55
  %i.bc = mul i64 %i.bb, %i.ba
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bc ; 2 uses
  %i.be = icmp sgt i32 %i.az, 3
  br i1 %i.be, label %.lr.ph, label %.preheader

.preheader.loopexit:                              ; preds = %.lr.ph
  %.pre = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !293
  %.pre61 = load ptr, ptr %3, align 8, !tbaa !39, !noalias !293
  %.pre63 = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !293
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.noexc
  %i.bf = phi i64 [ %i.ax, %.noexc ], [ %.pre63, %.preheader.loopexit ]
  %i.bg = phi ptr [ %i.ay, %.noexc ], [ %.pre61, %.preheader.loopexit ]
  %i.bh = phi i32 [ %i.az, %.noexc ], [ %i.cq, %.preheader.loopexit ] ; 4 uses
  %i.bi = phi i64 [ %i.ba, %.noexc ], [ %.pre, %.preheader.loopexit ]
  %.025.lcssa = phi ptr [ %i.bd, %.noexc ], [ %i.cn, %.preheader.loopexit ] ; 3 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.co, %.preheader.loopexit ] ; 4 uses
  %i.bj = icmp slt i32 %.0.lcssa, %i.bh
  br i1 %i.bj, label %.lr.ph44.preheader, label %._crit_edge

.lr.ph44.preheader:                               ; preds = %.preheader
  %i.bk = xor i32 %.0.lcssa, -1
  %i.bl = add i32 %i.bh, %i.bk                    ; 2 uses
  %i.bm = zext i32 %i.bl to i64
  %i.bn = add nuw nsw i64 %i.bm, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.bl, 7
  br i1 %min.iters.check, label %.lr.ph44.preheader78, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph44.preheader
  %n.vec = and i64 %i.bn, 8589934584              ; 4 uses
  %i.bo = trunc i64 %n.vec to i32
  %i.bp = add i32 %.0.lcssa, %i.bo
  %i.bq = shl nuw nsw i64 %n.vec, 1
  %i.br = getelementptr i8, ptr %.025.lcssa, i64 %i.bq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bs = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.025.lcssa, i64 %i.bs ; 2 uses
  %wide.load = load <8 x i16>, ptr %next.gep, align 2, !tbaa !51
  %i.bt = zext <8 x i16> %wide.load to <8 x i32>
  %i.bu = shl nuw <8 x i32> %i.bt, splat (i32 16)
  %i.bv = bitcast <8 x i32> %i.bu to <8 x float>
  %i.bw = call fast <8 x float> @llvm.sqrt.v8f32(<8 x float> %i.bv)
  %i.bx = bitcast <8 x float> %i.bw to <8 x i32>
  %i.by = lshr <8 x i32> %i.bx, splat (i32 16)
  %i.bz = trunc nuw <8 x i32> %i.by to <8 x i16>
  store <8 x i16> %i.bz, ptr %next.gep, align 2, !tbaa !51
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ca = icmp eq i64 %index.next, %n.vec
  br i1 %i.ca, label %middle.block, label %vector.body, !llvm.loop !289

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bn, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph44.preheader78

.lr.ph44.preheader78:                             ; preds = %.lr.ph44.preheader, %middle.block
  %.143.ph = phi i32 [ %.0.lcssa, %.lr.ph44.preheader ], [ %i.bp, %middle.block ]
  %.12642.ph = phi ptr [ %.025.lcssa, %.lr.ph44.preheader ], [ %i.br, %middle.block ]
  br label %.lr.ph44

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.039 = phi i32 [ %i.co, %.lr.ph ], [ 0, %.noexc ]
  %.02538 = phi ptr [ %i.cn, %.lr.ph ], [ %i.bd, %.noexc ] ; 3 uses
  %i.cb = load i64, ptr %.02538, align 1, !tbaa !46
  %i.cc = insertelement <2 x i64> poison, i64 %i.cb, i64 0
  %i.cd = bitcast <2 x i64> %i.cc to <8 x i16>
  %i.ce = shufflevector <8 x i16> %i.cd, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.cf = bitcast <8 x i16> %i.ce to <4 x float>
  %i.cg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.sqrt.v4f32(<4 x float> nofpclass(nan inf) %i.cf)
  %i.ch = bitcast <4 x float> %i.cg to <8 x i16>
  %i.ci = shufflevector <8 x i16> %i.ch, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.cj = bitcast <8 x i16> %i.ci to <4 x float>
  %i.ck = shufflevector <4 x float> %i.cj, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.cl = bitcast <4 x float> %i.ck to <2 x i64>
  %i.cm = extractelement <2 x i64> %i.cl, i64 0
  store i64 %i.cm, ptr %.02538, align 1, !tbaa !46
  %i.cn = getelementptr inbounds nuw i8, ptr %.02538, i64 8 ; 2 uses
  %i.co = add nuw nsw i32 %.039, 4                ; 3 uses
  %i.cp = or disjoint i32 %i.co, 3
  %i.cq = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.cr = icmp slt i32 %i.cp, %i.cq
  br i1 %i.cr, label %.lr.ph, label %.preheader.loopexit, !llvm.loop !290

.lr.ph44:                                         ; preds = %.lr.ph44.preheader78, %.lr.ph44
  %.143 = phi i32 [ %i.db, %.lr.ph44 ], [ %.143.ph, %.lr.ph44.preheader78 ]
  %.12642 = phi ptr [ %i.da, %.lr.ph44 ], [ %.12642.ph, %.lr.ph44.preheader78 ] ; 3 uses
  %i.cs = load i16, ptr %.12642, align 2, !tbaa !51
  %i.ct = zext i16 %i.cs to i32
  %i.cu = shl nuw i32 %i.ct, 16
  %i.cv = bitcast i32 %i.cu to float
  %i.cw = call fast noundef nofpclass(nan inf) float @llvm.sqrt.f32(float %i.cv)
  %i.cx = bitcast float %i.cw to i32
  %i.cy = lshr i32 %i.cx, 16
  %i.cz = trunc nuw i32 %i.cy to i16
  store i16 %i.cz, ptr %.12642, align 2, !tbaa !51
  %i.da = getelementptr inbounds nuw i8, ptr %.12642, i64 2
  %i.db = add nuw nsw i32 %.143, 1                ; 2 uses
  %exitcond54.not = icmp eq i32 %i.db, %i.bh
  br i1 %exitcond54.not, label %._crit_edge, label %.lr.ph44, !llvm.loop !291

._crit_edge:                                      ; preds = %.lr.ph44, %middle.block, %.preheader
  %indvars.iv.next56 = add nsw i64 %indvars.iv55, 1 ; 2 uses
  %lftr.wideiv58 = trunc i64 %indvars.iv.next56 to i32
  %exitcond59.not = icmp eq i32 %i.q, %lftr.wideiv58
  br i1 %exitcond59.not, label %._crit_edge47, label %.noexc, !llvm.loop !292

._crit_edge47:                                    ; preds = %._crit_edge.us, %._crit_edge, %.noexc.lr.ph.split.us, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge47, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL22unary_op_inplace_bf16sINS_19UnaryOp_x86_functor14unary_op_rsqrtEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #7 personality ptr @__gxx_personality_v0 {
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
  %.not45 = icmp sgt i32 %i.k, %i.j
  br i1 %.not45, label %._crit_edge47, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.n = load i32, ptr %4, align 4, !tbaa !37     ; 5 uses
  %i.o = icmp sgt i32 %i.n, 3
  %.pre60 = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !300 ; 2 uses
  br i1 %i.o, label %.noexc.preheader, label %.noexc.lr.ph.split.us

.noexc.preheader:                                 ; preds = %.noexc.lr.ph
  %i.p = sext i32 %i.k to i64
  %i.q = add nsw i32 %i.j, 1
  %.pre62 = load ptr, ptr %3, align 8, !tbaa !39, !noalias !300
  %.pre64 = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !300
  br label %.noexc

.noexc.lr.ph.split.us:                            ; preds = %.noexc.lr.ph
  %i.r = load ptr, ptr %3, align 8, !tbaa !39, !noalias !300
  %i.s = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !300
  %factor.op.mul = mul i64 %i.s, %.pre60
  %i.t = icmp sgt i32 %i.n, 0
  br i1 %i.t, label %.noexc.us.preheader, label %._crit_edge47

.noexc.us.preheader:                              ; preds = %.noexc.lr.ph.split.us
  %i.u = sext i32 %i.k to i64
  %i.v = add nsw i32 %i.j, 1
  %exitcond.not = icmp eq i32 %i.n, 1
  %exitcond.not.1 = icmp eq i32 %i.n, 2
  br label %.noexc.us

.noexc.us:                                        ; preds = %.noexc.us.preheader, %._crit_edge.us
  %indvars.iv = phi i64 [ %i.u, %.noexc.us.preheader ], [ %indvars.iv.next, %._crit_edge.us ] ; 2 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 %.reass ; 4 uses
  %i.x = load i16, ptr %i.w, align 2, !tbaa !51
  %i.y = zext i16 %i.x to i32
  %i.z = shl nuw i32 %i.y, 16
  %i.aa = bitcast i32 %i.z to float
  %i.ab = call fast float @llvm.sqrt.f32(float %i.aa)
  %i.ac = fdiv fast float 1.000000e+00, %i.ab
  %i.ad = bitcast float %i.ac to i32
  %i.ae = lshr i32 %i.ad, 16
  %i.af = trunc nuw nsw i32 %i.ae to i16
  store i16 %i.af, ptr %i.w, align 2, !tbaa !51
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.c

bb.c:                                             ; preds = %.noexc.us
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 2 ; 2 uses
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !51
  %i.ai = zext i16 %i.ah to i32
  %i.aj = shl nuw i32 %i.ai, 16
  %i.ak = bitcast i32 %i.aj to float
  %i.al = call fast float @llvm.sqrt.f32(float %i.ak)
  %i.am = fdiv fast float 1.000000e+00, %i.al
  %i.an = bitcast float %i.am to i32
  %i.ao = lshr i32 %i.an, 16
  %i.ap = trunc nuw nsw i32 %i.ao to i16
  store i16 %i.ap, ptr %i.ag, align 2, !tbaa !51
  br i1 %exitcond.not.1, label %._crit_edge.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aq = getelementptr inbounds nuw i8, ptr %i.w, i64 4 ; 2 uses
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !51
  %i.as = zext i16 %i.ar to i32
  %i.at = shl nuw i32 %i.as, 16
  %i.au = bitcast i32 %i.at to float
  %i.av = call fast float @llvm.sqrt.f32(float %i.au)
  %i.aw = fdiv fast float 1.000000e+00, %i.av
  %i.ax = bitcast float %i.aw to i32
  %i.ay = lshr i32 %i.ax, 16
  %i.az = trunc nuw nsw i32 %i.ay to i16
  store i16 %i.az, ptr %i.aq, align 2, !tbaa !51
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %bb.d, %bb.c, %.noexc.us
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond53.not = icmp eq i32 %i.v, %lftr.wideiv
  br i1 %exitcond53.not, label %._crit_edge47, label %.noexc.us

.noexc:                                           ; preds = %.noexc.preheader, %._crit_edge
  %i.ba = phi i64 [ %.pre64, %.noexc.preheader ], [ %i.bi, %._crit_edge ] ; 2 uses
  %i.bb = phi ptr [ %.pre62, %.noexc.preheader ], [ %i.bj, %._crit_edge ] ; 2 uses
  %i.bc = phi i32 [ %i.n, %.noexc.preheader ], [ %i.bk, %._crit_edge ] ; 2 uses
  %i.bd = phi i64 [ %.pre60, %.noexc.preheader ], [ %i.bl, %._crit_edge ] ; 2 uses
  %indvars.iv55 = phi i64 [ %i.p, %.noexc.preheader ], [ %indvars.iv.next56, %._crit_edge ] ; 2 uses
  %i.be = mul i64 %i.ba, %indvars.iv55
  %i.bf = mul i64 %i.be, %i.bd
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bf ; 2 uses
  %i.bh = icmp sgt i32 %i.bc, 3
  br i1 %i.bh, label %.lr.ph, label %.preheader

.preheader.loopexit:                              ; preds = %.lr.ph
  %.pre = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !300
  %.pre61 = load ptr, ptr %3, align 8, !tbaa !39, !noalias !300
  %.pre63 = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !300
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.noexc
  %i.bi = phi i64 [ %i.ba, %.noexc ], [ %.pre63, %.preheader.loopexit ]
  %i.bj = phi ptr [ %i.bb, %.noexc ], [ %.pre61, %.preheader.loopexit ]
  %i.bk = phi i32 [ %i.bc, %.noexc ], [ %i.cu, %.preheader.loopexit ] ; 4 uses
  %i.bl = phi i64 [ %i.bd, %.noexc ], [ %.pre, %.preheader.loopexit ]
  %.025.lcssa = phi ptr [ %i.bg, %.noexc ], [ %i.cr, %.preheader.loopexit ] ; 3 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.cs, %.preheader.loopexit ] ; 4 uses
  %i.bm = icmp slt i32 %.0.lcssa, %i.bk
  br i1 %i.bm, label %.lr.ph44.preheader, label %._crit_edge

.lr.ph44.preheader:                               ; preds = %.preheader
  %i.bn = xor i32 %.0.lcssa, -1
  %i.bo = add i32 %i.bk, %i.bn                    ; 2 uses
  %i.bp = zext i32 %i.bo to i64
  %i.bq = add nuw nsw i64 %i.bp, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.bo, 7
  br i1 %min.iters.check, label %.lr.ph44.preheader78, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph44.preheader
  %n.vec = and i64 %i.bq, 8589934584              ; 4 uses
  %i.br = trunc i64 %n.vec to i32
  %i.bs = add i32 %.0.lcssa, %i.br
  %i.bt = shl nuw nsw i64 %n.vec, 1
  %i.bu = getelementptr i8, ptr %.025.lcssa, i64 %i.bt
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bv = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.025.lcssa, i64 %i.bv ; 2 uses
  %wide.load = load <8 x i16>, ptr %next.gep, align 2, !tbaa !51
  %i.bw = zext <8 x i16> %wide.load to <8 x i32>
  %i.bx = shl nuw <8 x i32> %i.bw, splat (i32 16)
  %i.by = bitcast <8 x i32> %i.bx to <8 x float>
  %i.bz = call fast <8 x float> @llvm.sqrt.v8f32(<8 x float> %i.by)
  %i.ca = fdiv fast <8 x float> splat (float 1.000000e+00), %i.bz
  %i.cb = bitcast <8 x float> %i.ca to <8 x i32>
  %i.cc = lshr <8 x i32> %i.cb, splat (i32 16)
  %i.cd = trunc nuw nsw <8 x i32> %i.cc to <8 x i16>
  store <8 x i16> %i.cd, ptr %next.gep, align 2, !tbaa !51
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ce = icmp eq i64 %index.next, %n.vec
  br i1 %i.ce, label %middle.block, label %vector.body, !llvm.loop !296

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bq, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph44.preheader78

.lr.ph44.preheader78:                             ; preds = %.lr.ph44.preheader, %middle.block
  %.143.ph = phi i32 [ %.0.lcssa, %.lr.ph44.preheader ], [ %i.bs, %middle.block ]
  %.12642.ph = phi ptr [ %.025.lcssa, %.lr.ph44.preheader ], [ %i.bu, %middle.block ]
  br label %.lr.ph44

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.039 = phi i32 [ %i.cs, %.lr.ph ], [ 0, %.noexc ]
  %.02538 = phi ptr [ %i.cr, %.lr.ph ], [ %i.bg, %.noexc ] ; 3 uses
  %i.cf = load i64, ptr %.02538, align 1, !tbaa !46
  %i.cg = insertelement <2 x i64> poison, i64 %i.cf, i64 0
  %i.ch = bitcast <2 x i64> %i.cg to <8 x i16>
  %i.ci = shufflevector <8 x i16> %i.ch, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.cj = bitcast <8 x i16> %i.ci to <4 x float>
  %i.ck = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.rsqrt.ps(<4 x float> nofpclass(nan inf) %i.cj)
  %i.cl = bitcast <4 x float> %i.ck to <8 x i16>
  %i.cm = shufflevector <8 x i16> %i.cl, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.cn = bitcast <8 x i16> %i.cm to <4 x float>
  %i.co = shufflevector <4 x float> %i.cn, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.cp = bitcast <4 x float> %i.co to <2 x i64>
  %i.cq = extractelement <2 x i64> %i.cp, i64 0
  store i64 %i.cq, ptr %.02538, align 1, !tbaa !46
  %i.cr = getelementptr inbounds nuw i8, ptr %.02538, i64 8 ; 2 uses
  %i.cs = add nuw nsw i32 %.039, 4                ; 3 uses
  %i.ct = or disjoint i32 %i.cs, 3
  %i.cu = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.cv = icmp slt i32 %i.ct, %i.cu
  br i1 %i.cv, label %.lr.ph, label %.preheader.loopexit, !llvm.loop !297

.lr.ph44:                                         ; preds = %.lr.ph44.preheader78, %.lr.ph44
  %.143 = phi i32 [ %i.dg, %.lr.ph44 ], [ %.143.ph, %.lr.ph44.preheader78 ]
  %.12642 = phi ptr [ %i.df, %.lr.ph44 ], [ %.12642.ph, %.lr.ph44.preheader78 ] ; 3 uses
  %i.cw = load i16, ptr %.12642, align 2, !tbaa !51
  %i.cx = zext i16 %i.cw to i32
  %i.cy = shl nuw i32 %i.cx, 16
  %i.cz = bitcast i32 %i.cy to float
  %i.da = call fast float @llvm.sqrt.f32(float %i.cz)
  %i.db = fdiv fast float 1.000000e+00, %i.da
  %i.dc = bitcast float %i.db to i32
  %i.dd = lshr i32 %i.dc, 16
  %i.de = trunc nuw nsw i32 %i.dd to i16
  store i16 %i.de, ptr %.12642, align 2, !tbaa !51
  %i.df = getelementptr inbounds nuw i8, ptr %.12642, i64 2
  %i.dg = add nuw nsw i32 %.143, 1                ; 2 uses
  %exitcond54.not = icmp eq i32 %i.dg, %i.bk
  br i1 %exitcond54.not, label %._crit_edge, label %.lr.ph44, !llvm.loop !298

._crit_edge:                                      ; preds = %.lr.ph44, %middle.block, %.preheader
  %indvars.iv.next56 = add nsw i64 %indvars.iv55, 1 ; 2 uses
  %lftr.wideiv58 = trunc i64 %indvars.iv.next56 to i32
  %exitcond59.not = icmp eq i32 %i.q, %lftr.wideiv58
  br i1 %exitcond59.not, label %._crit_edge47, label %.noexc, !llvm.loop !299

._crit_edge47:                                    ; preds = %._crit_edge.us, %._crit_edge, %.noexc.lr.ph.split.us, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge47, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL22unary_op_inplace_bf16sINS_19UnaryOp_x86_functor12unary_op_expEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #7 personality ptr @__gxx_personality_v0 {
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
  %.not68 = icmp sgt i32 %i.k, %i.j
  br i1 %.not68, label %._crit_edge70, label %.noexc.lr.ph

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
  %i.r = load ptr, ptr %3, align 8, !tbaa !39, !noalias !307
  %i.s = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !307
  %i.t = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !307
  %factor.op.mul = mul i64 %i.s, %i.t
  %i.u = icmp sgt i32 %i.n, 0
  br i1 %i.u, label %.noexc.us.preheader, label %._crit_edge70

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
  %i.ac = call fast noundef nofpclass(nan inf) float @llvm.exp.f32(float %i.ab)
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
  %i.al = call fast noundef nofpclass(nan inf) float @llvm.exp.f32(float %i.ak)
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
  %i.au = call fast noundef nofpclass(nan inf) float @llvm.exp.f32(float %i.at)
  %i.av = bitcast float %i.au to i32
  %i.aw = lshr i32 %i.av, 16
  %i.ax = trunc nuw nsw i32 %i.aw to i16
  store i16 %i.ax, ptr %i.ap, align 2, !tbaa !51
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %bb.d, %bb.c, %.noexc.us
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond76.not = icmp eq i32 %i.w, %lftr.wideiv
  br i1 %exitcond76.not, label %._crit_edge70, label %.noexc.us

.noexc:                                           ; preds = %.noexc.preheader, %._crit_edge
  %i.ay = phi i32 [ %i.n, %.noexc.preheader ], [ %i.bg, %._crit_edge ] ; 2 uses
  %indvars.iv78 = phi i64 [ %i.p, %.noexc.preheader ], [ %indvars.iv.next79, %._crit_edge ] ; 2 uses
  %i.az = load ptr, ptr %3, align 8, !tbaa !39, !noalias !307
  %i.ba = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !307
  %i.bb = mul i64 %i.ba, %indvars.iv78
  %i.bc = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !307
  %i.bd = mul i64 %i.bb, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bd ; 2 uses
  %i.bf = icmp sgt i32 %i.ay, 3
  br i1 %i.bf, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %.noexc
  %i.bg = phi i32 [ %i.ay, %.noexc ], [ %i.dr, %.lr.ph ] ; 4 uses
  %.025.lcssa = phi ptr [ %i.be, %.noexc ], [ %i.do, %.lr.ph ] ; 3 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.dp, %.lr.ph ] ; 4 uses
  %i.bh = icmp slt i32 %.0.lcssa, %i.bg
  br i1 %i.bh, label %.lr.ph67.preheader, label %._crit_edge

.lr.ph67.preheader:                               ; preds = %.preheader
  %i.bi = xor i32 %.0.lcssa, -1
  %i.bj = add i32 %i.bg, %i.bi                    ; 2 uses
  %i.bk = zext i32 %i.bj to i64
  %i.bl = add nuw nsw i64 %i.bk, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.bj, 7
  br i1 %min.iters.check, label %.lr.ph67.preheader96, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph67.preheader
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
  %i.bu = call fast <8 x float> @llvm.exp.v8f32(<8 x float> %i.bt)
  %i.bv = bitcast <8 x float> %i.bu to <8 x i32>
  %i.bw = lshr <8 x i32> %i.bv, splat (i32 16)
  %i.bx = trunc nuw nsw <8 x i32> %i.bw to <8 x i16>
  store <8 x i16> %i.bx, ptr %next.gep, align 2, !tbaa !51
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.by = icmp eq i64 %index.next, %n.vec
  br i1 %i.by, label %middle.block, label %vector.body, !llvm.loop !303

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bl, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph67.preheader96

.lr.ph67.preheader96:                             ; preds = %.lr.ph67.preheader, %middle.block
  %.166.ph = phi i32 [ %.0.lcssa, %.lr.ph67.preheader ], [ %i.bn, %middle.block ]
  %.12665.ph = phi ptr [ %.025.lcssa, %.lr.ph67.preheader ], [ %i.bp, %middle.block ]
  br label %.lr.ph67

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.062 = phi i32 [ %i.dp, %.lr.ph ], [ 0, %.noexc ]
  %.02561 = phi ptr [ %i.do, %.lr.ph ], [ %i.be, %.noexc ] ; 3 uses
  %i.bz = load i64, ptr %.02561, align 1, !tbaa !46
  %i.ca = insertelement <2 x i64> poison, i64 %i.bz, i64 0
  %i.cb = bitcast <2 x i64> %i.ca to <8 x i16>
  %i.cc = shufflevector <8 x i16> %i.cb, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.cd = bitcast <8 x i16> %i.cc to <4 x float>
  %i.ce = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.cd, <4 x float> splat (float f0x42B0C0A5))
  %i.cf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ce, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.cg = fmul fast <4 x float> %i.cf, splat (float f0x3FB8AA3B)
  %i.ch = fadd fast <4 x float> %i.cg, splat (float 5.000000e-01) ; 2 uses
  %i.ci = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ch)
  %i.cj = sitofp fast <4 x i32> %i.ci to <4 x float> ; 2 uses
  %i.ck = fcmp fast olt <4 x float> %i.ch, %i.cj
  %i.cl = select <4 x i1> %i.ck, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.cm = fsub fast <4 x float> %i.cj, %i.cl      ; 2 uses
  %i.cn = fmul fast <4 x float> %i.cm, splat (float f0x3F317218)
  %i.co = fsub fast <4 x float> %i.cf, %i.cn      ; 8 uses
  %i.cp = fmul fast <4 x float> %i.co, %i.co
  %i.cq = fmul fast <4 x float> %i.co, splat (float f0x39506967)
  %i.cr = fadd fast <4 x float> %i.cq, splat (float f0x3AB743CE)
  %i.cs = fmul fast <4 x float> %i.cr, %i.co
  %i.ct = fadd fast <4 x float> %i.cs, splat (float f0x3C088908)
  %i.cu = fmul fast <4 x float> %i.ct, %i.co
  %i.cv = fadd fast <4 x float> %i.cu, splat (float f0x3D2AA9C1)
  %i.cw = fmul fast <4 x float> %i.cv, %i.co
  %i.cx = fadd fast <4 x float> %i.cw, splat (float f0x3E2AAAAA)
  %i.cy = fmul fast <4 x float> %i.cx, %i.co
  %i.cz = fadd fast <4 x float> %i.cy, splat (float 5.000000e-01)
  %i.da = fmul fast <4 x float> %i.cp, %i.cz
  %i.db = fadd fast <4 x float> %i.co, splat (float 1.000000e+00)
  %i.dc = fadd fast <4 x float> %i.db, %i.da
  %i.dd = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.cm)
  %i.de = shl <4 x i32> %i.dd, splat (i32 23)
  %i.df = add <4 x i32> %i.de, splat (i32 1065353216)
  %i.dg = bitcast <4 x i32> %i.df to <4 x float>
  %i.dh = fmul fast <4 x float> %i.dc, %i.dg
  %i.di = bitcast <4 x float> %i.dh to <8 x i16>
  %i.dj = shufflevector <8 x i16> %i.di, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.dk = bitcast <8 x i16> %i.dj to <4 x float>
  %i.dl = shufflevector <4 x float> %i.dk, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.dm = bitcast <4 x float> %i.dl to <2 x i64>
  %i.dn = extractelement <2 x i64> %i.dm, i64 0
  store i64 %i.dn, ptr %.02561, align 1, !tbaa !46
  %i.do = getelementptr inbounds nuw i8, ptr %.02561, i64 8 ; 2 uses
  %i.dp = add nuw nsw i32 %.062, 4                ; 3 uses
  %i.dq = or disjoint i32 %i.dp, 3
  %i.dr = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.ds = icmp slt i32 %i.dq, %i.dr
  br i1 %i.ds, label %.lr.ph, label %.preheader, !llvm.loop !304

.lr.ph67:                                         ; preds = %.lr.ph67.preheader96, %.lr.ph67
  %.166 = phi i32 [ %i.ec, %.lr.ph67 ], [ %.166.ph, %.lr.ph67.preheader96 ]
  %.12665 = phi ptr [ %i.eb, %.lr.ph67 ], [ %.12665.ph, %.lr.ph67.preheader96 ] ; 3 uses
  %i.dt = load i16, ptr %.12665, align 2, !tbaa !51
  %i.du = zext i16 %i.dt to i32
  %i.dv = shl nuw i32 %i.du, 16
  %i.dw = bitcast i32 %i.dv to float
  %i.dx = call fast noundef nofpclass(nan inf) float @llvm.exp.f32(float %i.dw)
  %i.dy = bitcast float %i.dx to i32
  %i.dz = lshr i32 %i.dy, 16
  %i.ea = trunc nuw nsw i32 %i.dz to i16
  store i16 %i.ea, ptr %.12665, align 2, !tbaa !51
  %i.eb = getelementptr inbounds nuw i8, ptr %.12665, i64 2
  %i.ec = add nuw nsw i32 %.166, 1                ; 2 uses
  %exitcond77.not = icmp eq i32 %i.ec, %i.bg
  br i1 %exitcond77.not, label %._crit_edge, label %.lr.ph67, !llvm.loop !305

._crit_edge:                                      ; preds = %.lr.ph67, %middle.block, %.preheader
  %indvars.iv.next79 = add nsw i64 %indvars.iv78, 1 ; 2 uses
  %lftr.wideiv81 = trunc i64 %indvars.iv.next79 to i32
  %exitcond82.not = icmp eq i32 %i.q, %lftr.wideiv81
  br i1 %exitcond82.not, label %._crit_edge70, label %.noexc, !llvm.loop !306

._crit_edge70:                                    ; preds = %._crit_edge.us, %._crit_edge, %.noexc.lr.ph.split.us, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge70, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL22unary_op_inplace_bf16sINS_19UnaryOp_x86_functor12unary_op_logEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #7 personality ptr @__gxx_personality_v0 {
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
  %.not80 = icmp sgt i32 %i.k, %i.j
  br i1 %.not80, label %._crit_edge82, label %.noexc.lr.ph

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
  %i.r = load ptr, ptr %3, align 8, !tbaa !39, !noalias !314
  %i.s = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !314
  %i.t = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !314
  %factor.op.mul = mul i64 %i.s, %i.t
  %i.u = icmp sgt i32 %i.n, 0
  br i1 %i.u, label %.noexc.us.preheader, label %._crit_edge82

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
  %i.ac = call fast noundef nofpclass(nan inf) float @llvm.log.f32(float %i.ab)
  %i.ad = bitcast float %i.ac to i32
  %i.ae = lshr i32 %i.ad, 16
  %i.af = trunc nuw i32 %i.ae to i16
  store i16 %i.af, ptr %i.x, align 2, !tbaa !51
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.c

bb.c:                                             ; preds = %.noexc.us
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 2 ; 2 uses
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !51
  %i.ai = zext i16 %i.ah to i32
  %i.aj = shl nuw i32 %i.ai, 16
  %i.ak = bitcast i32 %i.aj to float
  %i.al = call fast noundef nofpclass(nan inf) float @llvm.log.f32(float %i.ak)
  %i.am = bitcast float %i.al to i32
  %i.an = lshr i32 %i.am, 16
  %i.ao = trunc nuw i32 %i.an to i16
  store i16 %i.ao, ptr %i.ag, align 2, !tbaa !51
  br i1 %exitcond.not.1, label %._crit_edge.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ap = getelementptr inbounds nuw i8, ptr %i.x, i64 4 ; 2 uses
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !51
  %i.ar = zext i16 %i.aq to i32
  %i.as = shl nuw i32 %i.ar, 16
  %i.at = bitcast i32 %i.as to float
  %i.au = call fast noundef nofpclass(nan inf) float @llvm.log.f32(float %i.at)
  %i.av = bitcast float %i.au to i32
  %i.aw = lshr i32 %i.av, 16
  %i.ax = trunc nuw i32 %i.aw to i16
  store i16 %i.ax, ptr %i.ap, align 2, !tbaa !51
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %bb.d, %bb.c, %.noexc.us
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond88.not = icmp eq i32 %i.w, %lftr.wideiv
  br i1 %exitcond88.not, label %._crit_edge82, label %.noexc.us

.noexc:                                           ; preds = %.noexc.preheader, %._crit_edge
  %i.ay = phi i32 [ %i.n, %.noexc.preheader ], [ %i.bg, %._crit_edge ] ; 2 uses
  %indvars.iv90 = phi i64 [ %i.p, %.noexc.preheader ], [ %indvars.iv.next91, %._crit_edge ] ; 2 uses
  %i.az = load ptr, ptr %3, align 8, !tbaa !39, !noalias !314
  %i.ba = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !314
  %i.bb = mul i64 %i.ba, %indvars.iv90
  %i.bc = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !314
  %i.bd = mul i64 %i.bb, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bd ; 2 uses
  %i.bf = icmp sgt i32 %i.ay, 3
  br i1 %i.bf, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %.noexc
  %i.bg = phi i32 [ %i.ay, %.noexc ], [ %i.dx, %.lr.ph ] ; 4 uses
  %.025.lcssa = phi ptr [ %i.be, %.noexc ], [ %i.du, %.lr.ph ] ; 3 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.dv, %.lr.ph ] ; 4 uses
  %i.bh = icmp slt i32 %.0.lcssa, %i.bg
  br i1 %i.bh, label %.lr.ph79.preheader, label %._crit_edge

.lr.ph79.preheader:                               ; preds = %.preheader
  %i.bi = xor i32 %.0.lcssa, -1
  %i.bj = add i32 %i.bg, %i.bi                    ; 2 uses
  %i.bk = zext i32 %i.bj to i64
  %i.bl = add nuw nsw i64 %i.bk, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.bj, 7
  br i1 %min.iters.check, label %.lr.ph79.preheader108, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph79.preheader
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
  %i.bu = call fast <8 x float> @llvm.log.v8f32(<8 x float> %i.bt)
  %i.bv = bitcast <8 x float> %i.bu to <8 x i32>
  %i.bw = lshr <8 x i32> %i.bv, splat (i32 16)
  %i.bx = trunc nuw <8 x i32> %i.bw to <8 x i16>
  store <8 x i16> %i.bx, ptr %next.gep, align 2, !tbaa !51
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.by = icmp eq i64 %index.next, %n.vec
  br i1 %i.by, label %middle.block, label %vector.body, !llvm.loop !310

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bl, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph79.preheader108

.lr.ph79.preheader108:                            ; preds = %.lr.ph79.preheader, %middle.block
  %.178.ph = phi i32 [ %.0.lcssa, %.lr.ph79.preheader ], [ %i.bn, %middle.block ]
  %.12677.ph = phi ptr [ %.025.lcssa, %.lr.ph79.preheader ], [ %i.bp, %middle.block ]
  br label %.lr.ph79

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.074 = phi i32 [ %i.dv, %.lr.ph ], [ 0, %.noexc ]
  %.02573 = phi ptr [ %i.du, %.lr.ph ], [ %i.be, %.noexc ] ; 3 uses
  %i.bz = load i64, ptr %.02573, align 1, !tbaa !46
  %i.ca = insertelement <2 x i64> poison, i64 %i.bz, i64 0
  %i.cb = bitcast <2 x i64> %i.ca to <8 x i16>
  %i.cc = shufflevector <8 x i16> %i.cb, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.cd = bitcast <8 x i16> %i.cc to <4 x float>  ; 2 uses
  %i.ce = fcmp fast ole <4 x float> %i.cd, zeroinitializer
  %i.cf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.cd, <4 x float> splat (float f0x00800000))
  %i.cg = bitcast <4 x float> %i.cf to <4 x i32>  ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN4ncnnL22unary_op_inplace_bf16sINS_19UnaryOp_x86_functor13unary_op_asinEEEiRNS_3MatERKNS_6OptionE.omp_outlined:bb.a
  %i.bh = icmp slt i32 %.0.lcssa, %i.bg
  br i1 %i.bh, label %.lr.ph68.preheader, label %._crit_edge

.lr.ph68.preheader:                               ; preds = %.preheader
  %i.bi = xor i32 %.0.lcssa, -1
  %i.bj = add i32 %i.bg, %i.bi                    ; 2 uses
  %i.bk = zext i32 %i.bj to i64
  %i.bl = add nuw nsw i64 %i.bk, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.bj, 7
  br i1 %min.iters.check, label %.lr.ph68.preheader98, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph68.preheader
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
  %i.bu = call fast <8 x float> @llvm.asin.v8f32(<8 x float> %i.bt)
  %i.bv = bitcast <8 x float> %i.bu to <8 x i32>
  %i.bw = lshr <8 x i32> %i.bv, splat (i32 16)
  %i.bx = trunc nuw <8 x i32> %i.bw to <8 x i16>
  store <8 x i16> %i.bx, ptr %next.gep, align 2, !tbaa !51
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.by = icmp eq i64 %index.next, %n.vec
  br i1 %i.by, label %middle.block, label %vector.body, !llvm.loop !338

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bl, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph68.preheader98

.lr.ph68.preheader98:                             ; preds = %.lr.ph68.preheader, %middle.block
  %.167.ph = phi i32 [ %.0.lcssa, %.lr.ph68.preheader ], [ %i.bn, %middle.block ]
  %.12666.ph = phi ptr [ %.025.lcssa, %.lr.ph68.preheader ], [ %i.bp, %middle.block ]
  br label %.lr.ph68

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.063 = phi i32 [ %i.dp, %.lr.ph ], [ 0, %.noexc ]
  %.02562 = phi ptr [ %i.do, %.lr.ph ], [ %i.be, %.noexc ] ; 3 uses
  %i.bz = load i64, ptr %.02562, align 1, !tbaa !46
  %i.ca = insertelement <2 x i64> poison, i64 %i.bz, i64 0
  %i.cb = bitcast <2 x i64> %i.ca to <8 x i16>
  %i.cc = shufflevector <8 x i16> %i.cb, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3> ; 2 uses
  %i.cd = bitcast <8 x i16> %i.cc to <4 x i32>
  %i.ce = and <4 x i32> %i.cd, splat (i32 -2147483648)
  %i.cf = bitcast <8 x i16> %i.cc to <4 x i32>
  %i.cg = and <4 x i32> %i.cf, splat (i32 2147418112)
  %i.ch = bitcast <4 x i32> %i.cg to <4 x float>  ; 3 uses
  %i.ci = fcmp fast ugt <4 x float> %i.ch, splat (float 5.000000e-01) ; 2 uses
  %i.cj = select <4 x i1> %i.ci, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer ; 2 uses
  %i.ck = fmul fast <4 x float> %i.ch, splat (float 5.000000e-01)
  %i.cl = fsub fast <4 x float> splat (float 5.000000e-01), %i.ck
  %i.cm = call fast noundef nofpclass(nan inf) <4 x float> @llvm.sqrt.v4f32(<4 x float> nofpclass(nan inf) %i.cl)
  %i.cn = select <4 x i1> %i.ci, <4 x float> %i.cm, <4 x float> %i.ch ; 3 uses
  %i.co = fmul fast <4 x float> %i.cn, %i.cn      ; 3 uses
  %i.cp = fmul fast <4 x float> %i.co, %i.co      ; 4 uses
  %i.cq = fmul fast <4 x float> %i.cp, splat (float f0x3D2DBDCF)
  %i.cr = fadd fast <4 x float> %i.cq, splat (float f0x3D3A73D8)
  %i.cs = fmul fast <4 x float> %i.cr, %i.cp
  %i.ct = fadd fast <4 x float> %i.cs, splat (float f0x3E2AAAF8)
  %i.cu = fmul fast <4 x float> %i.cp, splat (float f0x3CC48F19)
  %i.cv = fadd fast <4 x float> %i.cu, splat (float f0x3D997DCC)
  %i.cw = fmul fast <4 x float> %i.cv, %i.cp
  %i.cx = fadd fast <4 x float> %i.cw, splat (float 1.000000e+00)
  %i.cy = fmul fast <4 x float> %i.ct, %i.co
  %i.cz = fadd fast <4 x float> %i.cx, %i.cy
  %i.da = fmul fast <4 x float> %i.cj, splat (float 3.000000e+00)
  %i.db = fsub fast <4 x float> splat (float 1.000000e+00), %i.da
  %i.dc = fmul fast <4 x float> %i.cj, splat (float f0x3FC90FDB)
  %i.dd = fmul fast <4 x float> %i.db, %i.cn
  %i.de = fmul fast <4 x float> %i.dd, %i.cz
  %i.df = fadd fast <4 x float> %i.de, %i.dc
  %i.dg = bitcast <4 x float> %i.df to <4 x i32>
  %i.dh = or <4 x i32> %i.ce, %i.dg
  %i.di = bitcast <4 x i32> %i.dh to <8 x i16>
  %i.dj = shufflevector <8 x i16> %i.di, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.dk = bitcast <8 x i16> %i.dj to <4 x float>
  %i.dl = shufflevector <4 x float> %i.dk, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.dm = bitcast <4 x float> %i.dl to <2 x i64>
  %i.dn = extractelement <2 x i64> %i.dm, i64 0
  store i64 %i.dn, ptr %.02562, align 1, !tbaa !46
  %i.do = getelementptr inbounds nuw i8, ptr %.02562, i64 8 ; 2 uses
  %i.dp = add nuw nsw i32 %.063, 4                ; 3 uses
  %i.dq = or disjoint i32 %i.dp, 3
  %i.dr = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.ds = icmp slt i32 %i.dq, %i.dr
  br i1 %i.ds, label %.lr.ph, label %.preheader, !llvm.loop !339

.lr.ph68:                                         ; preds = %.lr.ph68.preheader98, %.lr.ph68
  %.167 = phi i32 [ %i.ec, %.lr.ph68 ], [ %.167.ph, %.lr.ph68.preheader98 ]
  %.12666 = phi ptr [ %i.eb, %.lr.ph68 ], [ %.12666.ph, %.lr.ph68.preheader98 ] ; 3 uses
  %i.dt = load i16, ptr %.12666, align 2, !tbaa !51
  %i.du = zext i16 %i.dt to i32
  %i.dv = shl nuw i32 %i.du, 16
  %i.dw = bitcast i32 %i.dv to float
  %i.dx = call fast noundef nofpclass(nan inf) float @llvm.asin.f32(float %i.dw)
  %i.dy = bitcast float %i.dx to i32
  %i.dz = lshr i32 %i.dy, 16
  %i.ea = trunc nuw i32 %i.dz to i16
  store i16 %i.ea, ptr %.12666, align 2, !tbaa !51
  %i.eb = getelementptr inbounds nuw i8, ptr %.12666, i64 2
  %i.ec = add nuw nsw i32 %.167, 1                ; 2 uses
  %exitcond78.not = icmp eq i32 %i.ec, %i.bg
  br i1 %exitcond78.not, label %._crit_edge, label %.lr.ph68, !llvm.loop !340

._crit_edge:                                      ; preds = %.lr.ph68, %middle.block, %.preheader
  %indvars.iv.next80 = add nsw i64 %indvars.iv79, 1 ; 2 uses
  %lftr.wideiv82 = trunc i64 %indvars.iv.next80 to i32
  %exitcond83.not = icmp eq i32 %i.q, %lftr.wideiv82
  br i1 %exitcond83.not, label %._crit_edge71, label %.noexc, !llvm.loop !341

._crit_edge71:                                    ; preds = %._crit_edge.us, %._crit_edge, %.noexc.lr.ph.split.us, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge71, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL22unary_op_inplace_bf16sINS_19UnaryOp_x86_functor13unary_op_acosEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #7 personality ptr @__gxx_personality_v0 {
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
  %.not63 = icmp sgt i32 %i.k, %i.j
  br i1 %.not63, label %._crit_edge65, label %.noexc.lr.ph

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
  %i.r = load ptr, ptr %3, align 8, !tbaa !39, !noalias !349
  %i.s = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !349
  %i.t = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !349
  %factor.op.mul = mul i64 %i.s, %i.t
  %i.u = icmp sgt i32 %i.n, 0
  br i1 %i.u, label %.noexc.us.preheader, label %._crit_edge65

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
  %i.ac = call fast noundef nofpclass(nan inf) float @llvm.acos.f32(float %i.ab)
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
  %i.al = call fast noundef nofpclass(nan inf) float @llvm.acos.f32(float %i.ak)
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
  %i.au = call fast noundef nofpclass(nan inf) float @llvm.acos.f32(float %i.at)
  %i.av = bitcast float %i.au to i32
  %i.aw = lshr i32 %i.av, 16
  %i.ax = trunc nuw nsw i32 %i.aw to i16
  store i16 %i.ax, ptr %i.ap, align 2, !tbaa !51
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %bb.d, %bb.c, %.noexc.us
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond71.not = icmp eq i32 %i.w, %lftr.wideiv
  br i1 %exitcond71.not, label %._crit_edge65, label %.noexc.us

.noexc:                                           ; preds = %.noexc.preheader, %._crit_edge
  %i.ay = phi i32 [ %i.n, %.noexc.preheader ], [ %i.bg, %._crit_edge ] ; 2 uses
  %indvars.iv73 = phi i64 [ %i.p, %.noexc.preheader ], [ %indvars.iv.next74, %._crit_edge ] ; 2 uses
  %i.az = load ptr, ptr %3, align 8, !tbaa !39, !noalias !349
  %i.ba = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !349
  %i.bb = mul i64 %i.ba, %indvars.iv73
  %i.bc = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !349
  %i.bd = mul i64 %i.bb, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bd ; 2 uses
  %i.bf = icmp sgt i32 %i.ay, 3
  br i1 %i.bf, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %.noexc
  %i.bg = phi i32 [ %i.ay, %.noexc ], [ %i.du, %.lr.ph ] ; 4 uses
  %.025.lcssa = phi ptr [ %i.be, %.noexc ], [ %i.dr, %.lr.ph ] ; 3 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.ds, %.lr.ph ] ; 4 uses
  %i.bh = icmp slt i32 %.0.lcssa, %i.bg
  br i1 %i.bh, label %.lr.ph62.preheader, label %._crit_edge

.lr.ph62.preheader:                               ; preds = %.preheader
  %i.bi = xor i32 %.0.lcssa, -1
  %i.bj = add i32 %i.bg, %i.bi                    ; 2 uses
  %i.bk = zext i32 %i.bj to i64
  %i.bl = add nuw nsw i64 %i.bk, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.bj, 7
  br i1 %min.iters.check, label %.lr.ph62.preheader92, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph62.preheader
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
  %i.bu = call fast <8 x float> @llvm.acos.v8f32(<8 x float> %i.bt)
  %i.bv = bitcast <8 x float> %i.bu to <8 x i32>
  %i.bw = lshr <8 x i32> %i.bv, splat (i32 16)
  %i.bx = trunc nuw nsw <8 x i32> %i.bw to <8 x i16>
  store <8 x i16> %i.bx, ptr %next.gep, align 2, !tbaa !51
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.by = icmp eq i64 %index.next, %n.vec
  br i1 %i.by, label %middle.block, label %vector.body, !llvm.loop !345

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bl, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph62.preheader92

.lr.ph62.preheader92:                             ; preds = %.lr.ph62.preheader, %middle.block
  %.161.ph = phi i32 [ %.0.lcssa, %.lr.ph62.preheader ], [ %i.bn, %middle.block ]
  %.12660.ph = phi ptr [ %.025.lcssa, %.lr.ph62.preheader ], [ %i.bp, %middle.block ]
  br label %.lr.ph62

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.057 = phi i32 [ %i.ds, %.lr.ph ], [ 0, %.noexc ]
  %.02556 = phi ptr [ %i.dr, %.lr.ph ], [ %i.be, %.noexc ] ; 3 uses
  %i.bz = load i64, ptr %.02556, align 1, !tbaa !46
  %i.ca = insertelement <2 x i64> poison, i64 %i.bz, i64 0
  %i.cb = bitcast <2 x i64> %i.ca to <8 x i16>
  %i.cc = shufflevector <8 x i16> %i.cb, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3> ; 3 uses
  %i.cd = bitcast <8 x i16> %i.cc to <4 x float>
  %i.ce = bitcast <8 x i16> %i.cc to <4 x i32>
  %i.cf = and <4 x i32> %i.ce, splat (i32 -2147483648) ; 2 uses
  %i.cg = bitcast <8 x i16> %i.cc to <4 x i32>
  %i.ch = and <4 x i32> %i.cg, splat (i32 2147418112)
  %i.ci = bitcast <4 x i32> %i.ch to <4 x float>  ; 3 uses
  %i.cj = fcmp fast ugt <4 x float> %i.ci, splat (float 5.000000e-01) ; 2 uses
  %i.ck = fmul fast <4 x float> %i.ci, splat (float 5.000000e-01)
  %i.cl = fsub fast <4 x float> splat (float 5.000000e-01), %i.ck
  %i.cm = call fast noundef nofpclass(nan inf) <4 x float> @llvm.sqrt.v4f32(<4 x float> nofpclass(nan inf) %i.cl)
  %i.cn = select <4 x i1> %i.cj, <4 x float> %i.cm, <4 x float> %i.ci ; 3 uses
  %i.co = fmul fast <4 x float> %i.cn, %i.cn      ; 3 uses
  %i.cp = fmul fast <4 x float> %i.co, %i.co      ; 4 uses
  %i.cq = fmul fast <4 x float> %i.cp, splat (float f0x3D2DBDCF)
  %i.cr = fadd fast <4 x float> %i.cq, splat (float f0x3D3A73D8)
  %i.cs = fmul fast <4 x float> %i.cr, %i.cp
  %i.ct = fadd fast <4 x float> %i.cs, splat (float f0x3E2AAAF8)
  %i.cu = fmul fast <4 x float> %i.cp, splat (float f0x3CC48F19)
  %i.cv = fadd fast <4 x float> %i.cu, splat (float f0x3D997DCC)
  %i.cw = fmul fast <4 x float> %i.cv, %i.cp
  %i.cx = fadd fast <4 x float> %i.cw, splat (float 1.000000e+00)
  %i.cy = fmul fast <4 x float> %i.ct, %i.co
  %i.cz = fadd fast <4 x float> %i.cx, %i.cy
  %i.da = fmul fast <4 x float> %i.cz, %i.cn      ; 2 uses
  %i.db = bitcast <4 x float> %i.da to <4 x i32>
  %i.dc = or <4 x i32> %i.cf, %i.db
  %i.dd = bitcast <4 x i32> %i.dc to <4 x float>
  %i.de = fsub fast <4 x float> splat (float f0x3FC90FDB), %i.dd
  %i.df = fcmp fast olt <4 x float> %i.cd, zeroinitializer
  %i.dg = select <4 x i1> %i.df, <4 x float> splat (float f0x40490FDB), <4 x float> zeroinitializer
  %factor = fmul fast <4 x float> %i.da, splat (float 2.000000e+00)
  %i.dh = bitcast <4 x float> %factor to <4 x i32>
  %i.di = or <4 x i32> %i.cf, %i.dh
  %i.dj = bitcast <4 x i32> %i.di to <4 x float>
  %i.dk = fadd fast <4 x float> %i.dg, %i.dj
  %.v = select <4 x i1> %i.cj, <4 x float> %i.dk, <4 x float> %i.de
  %i.dl = bitcast <4 x float> %.v to <8 x i16>
  %i.dm = shufflevector <8 x i16> %i.dl, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.dn = bitcast <8 x i16> %i.dm to <4 x float>
  %i.do = shufflevector <4 x float> %i.dn, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.dp = bitcast <4 x float> %i.do to <2 x i64>
  %i.dq = extractelement <2 x i64> %i.dp, i64 0
  store i64 %i.dq, ptr %.02556, align 1, !tbaa !46
  %i.dr = getelementptr inbounds nuw i8, ptr %.02556, i64 8 ; 2 uses
  %i.ds = add nuw nsw i32 %.057, 4                ; 3 uses
  %i.dt = or disjoint i32 %i.ds, 3
  %i.du = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.dv = icmp slt i32 %i.dt, %i.du
  br i1 %i.dv, label %.lr.ph, label %.preheader, !llvm.loop !346

.lr.ph62:                                         ; preds = %.lr.ph62.preheader92, %.lr.ph62
  %.161 = phi i32 [ %i.ef, %.lr.ph62 ], [ %.161.ph, %.lr.ph62.preheader92 ]
  %.12660 = phi ptr [ %i.ee, %.lr.ph62 ], [ %.12660.ph, %.lr.ph62.preheader92 ] ; 3 uses
  %i.dw = load i16, ptr %.12660, align 2, !tbaa !51
  %i.dx = zext i16 %i.dw to i32
  %i.dy = shl nuw i32 %i.dx, 16
  %i.dz = bitcast i32 %i.dy to float
  %i.ea = call fast noundef nofpclass(nan inf) float @llvm.acos.f32(float %i.dz)
  %i.eb = bitcast float %i.ea to i32
  %i.ec = lshr i32 %i.eb, 16
  %i.ed = trunc nuw nsw i32 %i.ec to i16
  store i16 %i.ed, ptr %.12660, align 2, !tbaa !51
  %i.ee = getelementptr inbounds nuw i8, ptr %.12660, i64 2
  %i.ef = add nuw nsw i32 %.161, 1                ; 2 uses
  %exitcond72.not = icmp eq i32 %i.ef, %i.bg
  br i1 %exitcond72.not, label %._crit_edge, label %.lr.ph62, !llvm.loop !347

._crit_edge:                                      ; preds = %.lr.ph62, %middle.block, %.preheader
  %indvars.iv.next74 = add nsw i64 %indvars.iv73, 1 ; 2 uses
  %lftr.wideiv76 = trunc i64 %indvars.iv.next74 to i32
  %exitcond77.not = icmp eq i32 %i.q, %lftr.wideiv76
  br i1 %exitcond77.not, label %._crit_edge65, label %.noexc, !llvm.loop !348

._crit_edge65:                                    ; preds = %._crit_edge.us, %._crit_edge, %.noexc.lr.ph.split.us, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge65, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL22unary_op_inplace_bf16sINS_19UnaryOp_x86_functor13unary_op_atanEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #7 personality ptr @__gxx_personality_v0 {
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
  %.not71 = icmp sgt i32 %i.k, %i.j
  br i1 %.not71, label %._crit_edge73, label %.noexc.lr.ph

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
  %i.r = load ptr, ptr %3, align 8, !tbaa !39, !noalias !356
  %i.s = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !356
  %i.t = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !356
  %factor.op.mul = mul i64 %i.s, %i.t
  %i.u = icmp sgt i32 %i.n, 0
  br i1 %i.u, label %.noexc.us.preheader, label %._crit_edge73

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
  %i.ac = call fast noundef nofpclass(nan inf) float @llvm.atan.f32(float %i.ab)
  %i.ad = bitcast float %i.ac to i32
  %i.ae = lshr i32 %i.ad, 16
  %i.af = trunc nuw i32 %i.ae to i16
  store i16 %i.af, ptr %i.x, align 2, !tbaa !51
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.c

bb.c:                                             ; preds = %.noexc.us
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 2 ; 2 uses
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !51
  %i.ai = zext i16 %i.ah to i32
  %i.aj = shl nuw i32 %i.ai, 16
  %i.ak = bitcast i32 %i.aj to float
  %i.al = call fast noundef nofpclass(nan inf) float @llvm.atan.f32(float %i.ak)
  %i.am = bitcast float %i.al to i32
  %i.an = lshr i32 %i.am, 16
  %i.ao = trunc nuw i32 %i.an to i16
  store i16 %i.ao, ptr %i.ag, align 2, !tbaa !51
  br i1 %exitcond.not.1, label %._crit_edge.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ap = getelementptr inbounds nuw i8, ptr %i.x, i64 4 ; 2 uses
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !51
  %i.ar = zext i16 %i.aq to i32
  %i.as = shl nuw i32 %i.ar, 16
  %i.at = bitcast i32 %i.as to float
  %i.au = call fast noundef nofpclass(nan inf) float @llvm.atan.f32(float %i.at)
  %i.av = bitcast float %i.au to i32
  %i.aw = lshr i32 %i.av, 16
  %i.ax = trunc nuw i32 %i.aw to i16
  store i16 %i.ax, ptr %i.ap, align 2, !tbaa !51
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %bb.d, %bb.c, %.noexc.us
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond79.not = icmp eq i32 %i.w, %lftr.wideiv
  br i1 %exitcond79.not, label %._crit_edge73, label %.noexc.us

.noexc:                                           ; preds = %.noexc.preheader, %._crit_edge
  %i.ay = phi i32 [ %i.n, %.noexc.preheader ], [ %i.bg, %._crit_edge ] ; 2 uses
  %indvars.iv81 = phi i64 [ %i.p, %.noexc.preheader ], [ %indvars.iv.next82, %._crit_edge ] ; 2 uses
  %i.az = load ptr, ptr %3, align 8, !tbaa !39, !noalias !356
  %i.ba = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !356
  %i.bb = mul i64 %i.ba, %indvars.iv81
  %i.bc = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !356
  %i.bd = mul i64 %i.bb, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bd ; 2 uses
  %i.bf = icmp sgt i32 %i.ay, 3
  br i1 %i.bf, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %.noexc
  %i.bg = phi i32 [ %i.ay, %.noexc ], [ %i.ds, %.lr.ph ] ; 4 uses
  %.025.lcssa = phi ptr [ %i.be, %.noexc ], [ %i.dp, %.lr.ph ] ; 3 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.dq, %.lr.ph ] ; 4 uses
  %i.bh = icmp slt i32 %.0.lcssa, %i.bg
  br i1 %i.bh, label %.lr.ph70.preheader, label %._crit_edge

.lr.ph70.preheader:                               ; preds = %.preheader
  %i.bi = xor i32 %.0.lcssa, -1
  %i.bj = add i32 %i.bg, %i.bi                    ; 2 uses
  %i.bk = zext i32 %i.bj to i64
  %i.bl = add nuw nsw i64 %i.bk, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.bj, 7
  br i1 %min.iters.check, label %.lr.ph70.preheader100, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph70.preheader
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
  %i.bu = call fast <8 x float> @llvm.atan.v8f32(<8 x float> %i.bt)
  %i.bv = bitcast <8 x float> %i.bu to <8 x i32>
  %i.bw = lshr <8 x i32> %i.bv, splat (i32 16)
  %i.bx = trunc nuw <8 x i32> %i.bw to <8 x i16>
  store <8 x i16> %i.bx, ptr %next.gep, align 2, !tbaa !51
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.by = icmp eq i64 %index.next, %n.vec
  br i1 %i.by, label %middle.block, label %vector.body, !llvm.loop !352

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bl, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph70.preheader100

.lr.ph70.preheader100:                            ; preds = %.lr.ph70.preheader, %middle.block
  %.169.ph = phi i32 [ %.0.lcssa, %.lr.ph70.preheader ], [ %i.bn, %middle.block ]
  %.12668.ph = phi ptr [ %.025.lcssa, %.lr.ph70.preheader ], [ %i.bp, %middle.block ]
  br label %.lr.ph70

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.065 = phi i32 [ %i.dq, %.lr.ph ], [ 0, %.noexc ]
  %.02564 = phi ptr [ %i.dp, %.lr.ph ], [ %i.be, %.noexc ] ; 3 uses
  %i.bz = load i64, ptr %.02564, align 1, !tbaa !46
  %i.ca = insertelement <2 x i64> poison, i64 %i.bz, i64 0
  %i.cb = bitcast <2 x i64> %i.ca to <8 x i16>
  %i.cc = shufflevector <8 x i16> %i.cb, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3> ; 2 uses
  %i.cd = bitcast <8 x i16> %i.cc to <4 x i32>
  %i.ce = and <4 x i32> %i.cd, splat (i32 -2147483648)
  %i.cf = bitcast <8 x i16> %i.cc to <4 x i32>
  %i.cg = and <4 x i32> %i.cf, splat (i32 2147418112)
end_hunk_2
begin_hunk_3_@_ZN4ncnnL22unary_op_inplace_bf16sINS_19UnaryOp_x86_functor14unary_op_asinhEEEiRNS_3MatERKNS_6OptionE.omp_outlined:bb.a
  %i.be = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.bc, <4 x float> splat (float f0x00800000))
  %i.bf = bitcast <4 x float> %i.be to <4 x i32>  ; 2 uses
  %i.bg = lshr <4 x i32> %i.bf, splat (i32 23)
  %i.bh = and <4 x i32> %i.bf, splat (i32 -2139095041)
  %i.bi = or disjoint <4 x i32> %i.bh, splat (i32 1056964608)
  %i.bj = bitcast <4 x i32> %i.bi to <4 x float>  ; 3 uses
  %i.bk = add nsw <4 x i32> %i.bg, splat (i32 -127)
  %i.bl = sitofp fast <4 x i32> %i.bk to <4 x float> ; 2 uses
  %i.bm = fadd fast <4 x float> %i.bl, splat (float 1.000000e+00)
  %i.bn = fcmp fast olt <4 x float> %i.bj, splat (float f0x3F3504F3) ; 2 uses
  %i.bo = select <4 x i1> %i.bn, <4 x float> %i.bj, <4 x float> zeroinitializer
  %i.bp = fadd fast <4 x float> %i.bj, splat (float -1.000000e+00)
  %i.bq = select fast <4 x i1> %i.bn, <4 x float> %i.bl, <4 x float> %i.bm
  %i.br = fadd fast <4 x float> %i.bp, %i.bo      ; 12 uses
  %i.bs = fmul fast <4 x float> %i.br, %i.br
  %i.bt = fmul fast <4 x float> %i.br, splat (float f0x3D9021BB)
  %i.bu = fadd fast <4 x float> %i.bt, splat (float f0xBDEBD1B8)
  %i.bv = fmul fast <4 x float> %i.bu, %i.br
  %i.bw = fadd fast <4 x float> %i.bv, splat (float f0x3DEF251A)
  %i.bx = fmul fast <4 x float> %i.bw, %i.br
  %i.by = fadd fast <4 x float> %i.bx, splat (float f0xBDFE5D4F)
  %i.bz = fmul fast <4 x float> %i.by, %i.br
  %i.ca = fadd fast <4 x float> %i.bz, splat (float f0x3E11E9BF)
  %i.cb = fmul fast <4 x float> %i.ca, %i.br
  %i.cc = fadd fast <4 x float> %i.cb, splat (float f0xBE2AAE50)
  %i.cd = fmul fast <4 x float> %i.cc, %i.br
  %i.ce = fadd fast <4 x float> %i.cd, splat (float f0x3E4CCEAC)
  %i.cf = fmul fast <4 x float> %i.ce, %i.br
  %i.cg = fadd fast <4 x float> %i.cf, splat (float f0xBE7FFFFC)
  %i.ch = fmul fast <4 x float> %i.cg, %i.br
  %i.ci = fadd fast <4 x float> %i.ch, splat (float f0x3EAAAAAA)
  %i.cj = fmul fast <4 x float> %i.ci, %i.br
  %reass.mul = fmul fast <4 x float> %i.bq, splat (float f0x3F317218)
  %reass.add111 = fadd fast <4 x float> %i.cj, splat (float -5.000000e-01)
  %reass.mul112 = fmul fast <4 x float> %i.bs, %reass.add111
  %i.ck = fadd fast <4 x float> %reass.mul, %i.br
  %i.cl = fadd fast <4 x float> %i.ck, %reass.mul112
  %i.cm = bitcast <4 x float> %i.cl to <4 x i32>
  %i.cn = select <4 x i1> %i.bd, <4 x i32> splat (i32 -1), <4 x i32> %i.cm
  %i.co = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ay, <4 x float> splat (float f0x00800000))
  %i.cp = bitcast <4 x float> %i.co to <4 x i32>  ; 2 uses
  %i.cq = lshr <4 x i32> %i.cp, splat (i32 23)
  %i.cr = and <4 x i32> %i.cp, splat (i32 -2139095041)
  %i.cs = or disjoint <4 x i32> %i.cr, splat (i32 1056964608)
  %i.ct = bitcast <4 x i32> %i.cs to <4 x float>  ; 3 uses
  %i.cu = add nsw <4 x i32> %i.cq, splat (i32 -127)
  %i.cv = sitofp fast <4 x i32> %i.cu to <4 x float> ; 2 uses
  %i.cw = fadd fast <4 x float> %i.cv, splat (float 1.000000e+00)
  %i.cx = fcmp fast olt <4 x float> %i.ct, splat (float f0x3F3504F3) ; 2 uses
  %i.cy = select <4 x i1> %i.cx, <4 x float> %i.ct, <4 x float> zeroinitializer
  %i.cz = fadd fast <4 x float> %i.ct, splat (float -1.000000e+00)
  %i.da = select fast <4 x i1> %i.cx, <4 x float> %i.cv, <4 x float> %i.cw
  %i.db = fadd fast <4 x float> %i.cz, %i.cy      ; 12 uses
  %i.dc = fmul fast <4 x float> %i.db, %i.db
  %i.dd = fmul fast <4 x float> %i.db, splat (float f0x3D9021BB)
  %i.de = fadd fast <4 x float> %i.dd, splat (float f0xBDEBD1B8)
  %i.df = fmul fast <4 x float> %i.de, %i.db
  %i.dg = fadd fast <4 x float> %i.df, splat (float f0x3DEF251A)
  %i.dh = fmul fast <4 x float> %i.dg, %i.db
  %i.di = fadd fast <4 x float> %i.dh, splat (float f0xBDFE5D4F)
  %i.dj = fmul fast <4 x float> %i.di, %i.db
  %i.dk = fadd fast <4 x float> %i.dj, splat (float f0x3E11E9BF)
  %i.dl = fmul fast <4 x float> %i.dk, %i.db
  %i.dm = fadd fast <4 x float> %i.dl, splat (float f0xBE2AAE50)
  %i.dn = fmul fast <4 x float> %i.dm, %i.db
  %i.do = fadd fast <4 x float> %i.dn, splat (float f0x3E4CCEAC)
  %i.dp = fmul fast <4 x float> %i.do, %i.db
  %i.dq = fadd fast <4 x float> %i.dp, splat (float f0xBE7FFFFC)
  %i.dr = fmul fast <4 x float> %i.dq, %i.db
  %i.ds = fadd fast <4 x float> %i.dr, splat (float f0x3EAAAAAA)
  %i.dt = fmul fast <4 x float> %i.ds, %i.db
  %reass.mul110 = fmul fast <4 x float> %i.da, splat (float f0x3F317218)
  %reass.add113 = fadd fast <4 x float> %i.dt, splat (float -5.000000e-01)
  %reass.mul114 = fmul fast <4 x float> %i.dc, %reass.add113
  %i.du = fadd fast <4 x float> %i.db, splat (float f0x3F317218)
  %i.dv = fadd fast <4 x float> %i.du, %reass.mul110
  %i.dw = fadd fast <4 x float> %i.dv, %reass.mul114
  %i.dx = fcmp fast ule <4 x float> %i.ay, splat (float f0x5F0AC723)
  %i.dy = bitcast <4 x float> %i.dw to <4 x i32>
  %i.dz = select <4 x i1> %i.dx, <4 x i32> %i.cn, <4 x i32> %i.dy
  %i.ea = bitcast <8 x i16> %i.av to <4 x i32>
  %i.eb = and <4 x i32> %i.ea, splat (i32 -2147483648)
  %i.ec = or <4 x i32> %i.dz, %i.eb
  %i.ed = bitcast <4 x i32> %i.ec to <8 x i16>
  %i.ee = shufflevector <8 x i16> %i.ed, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.ef = bitcast <8 x i16> %i.ee to <4 x float>
  %i.eg = shufflevector <4 x float> %i.ef, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.eh = bitcast <4 x float> %i.eg to <2 x i64>
  %i.ei = extractelement <2 x i64> %i.eh, i64 0
  store i64 %i.ei, ptr %.025115, align 1, !tbaa !46
  %i.ej = getelementptr inbounds nuw i8, ptr %.025115, i64 8 ; 2 uses
  %i.ek = add nuw nsw i32 %.0116, 4               ; 3 uses
  %i.el = or disjoint i32 %i.ek, 3
  %i.em = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.en = icmp slt i32 %i.el, %i.em
  br i1 %i.en, label %.lr.ph, label %.preheader, !llvm.loop !415

.lr.ph121:                                        ; preds = %.preheader, %.lr.ph121
  %.1120 = phi i32 [ %i.ex, %.lr.ph121 ], [ %.0.lcssa, %.preheader ]
  %.126119 = phi ptr [ %i.ew, %.lr.ph121 ], [ %.025.lcssa, %.preheader ] ; 3 uses
  %i.eo = load i16, ptr %.126119, align 2, !tbaa !51
  %i.ep = zext i16 %i.eo to i32
  %i.eq = shl nuw i32 %i.ep, 16
  %i.er = bitcast i32 %i.eq to float
  %i.es = call fast noundef nofpclass(nan inf) float @asinhf(float noundef nofpclass(nan inf) %i.er) #20
  %i.et = bitcast float %i.es to i32
  %i.eu = lshr i32 %i.et, 16
  %i.ev = trunc nuw i32 %i.eu to i16
  store i16 %i.ev, ptr %.126119, align 2, !tbaa !51
  %i.ew = getelementptr inbounds nuw i8, ptr %.126119, i64 2
  %i.ex = add nuw nsw i32 %.1120, 1               ; 2 uses
  %exitcond131.not = icmp eq i32 %i.ex, %i.aq
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
  store <8 x i16> %i.bx, ptr %next.gep, align 2, !tbaa !51
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.by = icmp eq i64 %index.next, %n.vec
  br i1 %i.by, label %middle.block, label %vector.body, !llvm.loop !420

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bl, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph91.preheader120

.lr.ph91.preheader120:                            ; preds = %.lr.ph91.preheader, %middle.block
  %.190.ph = phi i32 [ %.0.lcssa, %.lr.ph91.preheader ], [ %i.bn, %middle.block ]
  %.12689.ph = phi ptr [ %.025.lcssa, %.lr.ph91.preheader ], [ %i.bp, %middle.block ]
  br label %.lr.ph91

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.086 = phi i32 [ %i.ew, %.lr.ph ], [ 0, %.noexc ]
  %.02585 = phi ptr [ %i.ev, %.lr.ph ], [ %i.be, %.noexc ] ; 3 uses
  %i.bz = load i64, ptr %.02585, align 1, !tbaa !46
  %i.ca = insertelement <2 x i64> poison, i64 %i.bz, i64 0
  %i.cb = bitcast <2 x i64> %i.ca to <8 x i16>
  %i.cc = shufflevector <8 x i16> %i.cb, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.cd = bitcast <8 x i16> %i.cc to <4 x float>  ; 2 uses
  %i.ce = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.cd, <4 x float> splat (float f0x42B0C0A5))
  %i.cf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ce, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.cg = fmul fast <4 x float> %i.cf, splat (float f0x3FB8AA3B)
  %i.ch = fadd fast <4 x float> %i.cg, splat (float 5.000000e-01) ; 2 uses
  %i.ci = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ch)
  %i.cj = sitofp fast <4 x i32> %i.ci to <4 x float> ; 2 uses
  %i.ck = fcmp fast olt <4 x float> %i.ch, %i.cj
  %i.cl = select <4 x i1> %i.ck, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.cm = fsub fast <4 x float> %i.cj, %i.cl      ; 2 uses
  %i.cn = fmul fast <4 x float> %i.cm, splat (float f0x3F317218)
  %i.co = fsub fast <4 x float> %i.cf, %i.cn      ; 8 uses
  %i.cp = fmul fast <4 x float> %i.co, %i.co
  %i.cq = fmul fast <4 x float> %i.co, splat (float f0x39506967)
  %i.cr = fadd fast <4 x float> %i.cq, splat (float f0x3AB743CE)
  %i.cs = fmul fast <4 x float> %i.cr, %i.co
  %i.ct = fadd fast <4 x float> %i.cs, splat (float f0x3C088908)
  %i.cu = fmul fast <4 x float> %i.ct, %i.co
  %i.cv = fadd fast <4 x float> %i.cu, splat (float f0x3D2AA9C1)
  %i.cw = fmul fast <4 x float> %i.cv, %i.co
  %i.cx = fadd fast <4 x float> %i.cw, splat (float f0x3E2AAAAA)
  %i.cy = fmul fast <4 x float> %i.cx, %i.co
  %i.cz = fadd fast <4 x float> %i.cy, splat (float 5.000000e-01)
  %i.da = fmul fast <4 x float> %i.cp, %i.cz
  %i.db = fadd fast <4 x float> %i.co, splat (float 1.000000e+00)
  %i.dc = fadd fast <4 x float> %i.db, %i.da
  %i.dd = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.cm)
  %i.de = shl <4 x i32> %i.dd, splat (i32 23)
  %i.df = add <4 x i32> %i.de, splat (i32 1065353216)
  %i.dg = bitcast <4 x i32> %i.df to <4 x float>
  %i.dh = fmul fast <4 x float> %i.dc, %i.dg
  %i.di = fneg fast <4 x float> %i.cd
  %i.dj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.di, <4 x float> splat (float f0x42B0C0A5))
  %i.dk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dj, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.dl = fmul fast <4 x float> %i.dk, splat (float f0x3FB8AA3B)
  %i.dm = fadd fast <4 x float> %i.dl, splat (float 5.000000e-01) ; 2 uses
  %i.dn = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dm)
  %i.do = sitofp fast <4 x i32> %i.dn to <4 x float> ; 2 uses
  %i.dp = fcmp fast olt <4 x float> %i.dm, %i.do
  %i.dq = select <4 x i1> %i.dp, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.dr = fsub fast <4 x float> %i.do, %i.dq      ; 2 uses
  %i.ds = fmul fast <4 x float> %i.dr, splat (float f0x3F317218)
  %i.dt = fsub fast <4 x float> %i.dk, %i.ds      ; 8 uses
  %i.du = fmul fast <4 x float> %i.dt, %i.dt
  %i.dv = fmul fast <4 x float> %i.dt, splat (float f0x39506967)
  %i.dw = fadd fast <4 x float> %i.dv, splat (float f0x3AB743CE)
  %i.dx = fmul fast <4 x float> %i.dw, %i.dt
  %i.dy = fadd fast <4 x float> %i.dx, splat (float f0x3C088908)
  %i.dz = fmul fast <4 x float> %i.dy, %i.dt
  %i.ea = fadd fast <4 x float> %i.dz, splat (float f0x3D2AA9C1)
  %i.eb = fmul fast <4 x float> %i.ea, %i.dt
  %i.ec = fadd fast <4 x float> %i.eb, splat (float f0x3E2AAAAA)
  %i.ed = fmul fast <4 x float> %i.ec, %i.dt
  %i.ee = fadd fast <4 x float> %i.ed, splat (float 5.000000e-01)
  %i.ef = fmul fast <4 x float> %i.du, %i.ee
  %i.eg = fadd fast <4 x float> %i.dt, splat (float 1.000000e+00)
  %i.eh = fadd fast <4 x float> %i.eg, %i.ef
  %i.ei = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dr)
  %i.ej = shl <4 x i32> %i.ei, splat (i32 23)
  %i.ek = add <4 x i32> %i.ej, splat (i32 1065353216)
  %i.el = bitcast <4 x i32> %i.ek to <4 x float>
  %i.em = fmul fast <4 x float> %i.eh, %i.el
  %i.en = fadd fast <4 x float> %i.em, %i.dh
  %i.eo = fmul fast <4 x float> %i.en, splat (float 5.000000e-01)
  %i.ep = bitcast <4 x float> %i.eo to <8 x i16>
  %i.eq = shufflevector <8 x i16> %i.ep, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.er = bitcast <8 x i16> %i.eq to <4 x float>
  %i.es = shufflevector <4 x float> %i.er, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.et = bitcast <4 x float> %i.es to <2 x i64>
  %i.eu = extractelement <2 x i64> %i.et, i64 0
  store i64 %i.eu, ptr %.02585, align 1, !tbaa !46
  %i.ev = getelementptr inbounds nuw i8, ptr %.02585, i64 8 ; 2 uses
  %i.ew = add nuw nsw i32 %.086, 4                ; 3 uses
  %i.ex = or disjoint i32 %i.ew, 3
  %i.ey = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.ez = icmp slt i32 %i.ex, %i.ey
  br i1 %i.ez, label %.lr.ph, label %.preheader, !llvm.loop !421

.lr.ph91:                                         ; preds = %.lr.ph91.preheader120, %.lr.ph91
  %.190 = phi i32 [ %i.fj, %.lr.ph91 ], [ %.190.ph, %.lr.ph91.preheader120 ]
  %.12689 = phi ptr [ %i.fi, %.lr.ph91 ], [ %.12689.ph, %.lr.ph91.preheader120 ] ; 3 uses
  %i.fa = load i16, ptr %.12689, align 2, !tbaa !51
  %i.fb = zext i16 %i.fa to i32
  %i.fc = shl nuw i32 %i.fb, 16
  %i.fd = bitcast i32 %i.fc to float
  %i.fe = call fast noundef nofpclass(nan inf) float @llvm.cosh.f32(float %i.fd)
  %i.ff = bitcast float %i.fe to i32
  %i.fg = lshr i32 %i.ff, 16
  %i.fh = trunc nuw nsw i32 %i.fg to i16
  store i16 %i.fh, ptr %.12689, align 2, !tbaa !51
  %i.fi = getelementptr inbounds nuw i8, ptr %.12689, i64 2
  %i.fj = add nuw nsw i32 %.190, 1                ; 2 uses
  %exitcond101.not = icmp eq i32 %i.fj, %i.bg
  br i1 %exitcond101.not, label %._crit_edge, label %.lr.ph91, !llvm.loop !422

._crit_edge:                                      ; preds = %.lr.ph91, %middle.block, %.preheader
  %indvars.iv.next103 = add nsw i64 %indvars.iv102, 1 ; 2 uses
  %lftr.wideiv105 = trunc i64 %indvars.iv.next103 to i32
  %exitcond106.not = icmp eq i32 %i.q, %lftr.wideiv105
  br i1 %exitcond106.not, label %._crit_edge94, label %.noexc, !llvm.loop !423

._crit_edge94:                                    ; preds = %._crit_edge.us, %._crit_edge, %.noexc.lr.ph.split.us, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge94, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL22unary_op_inplace_bf16sINS_19UnaryOp_x86_functor14unary_op_acoshEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #7 personality ptr @__gxx_personality_v0 {
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
  %.not121 = icmp sgt i32 %i.k, %i.j
  br i1 %.not121, label %._crit_edge123, label %.noexc.lr.ph

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
  %i.r = load ptr, ptr %3, align 8, !tbaa !39, !noalias !430
  %i.s = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !430
  %i.t = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !430
  %factor.op.mul = mul i64 %i.s, %i.t
  %i.u = icmp sgt i32 %i.n, 0
  br i1 %i.u, label %.noexc.us.preheader, label %._crit_edge123

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
  %.1119.us = phi i32 [ 0, %.noexc.us ], [ %i.ah, %bb.c ]
  %.126118.us = phi ptr [ %i.x, %.noexc.us ], [ %i.ag, %bb.c ] ; 3 uses
  %i.y = load i16, ptr %.126118.us, align 2, !tbaa !51
  %i.z = zext i16 %i.y to i32
  %i.aa = shl nuw i32 %i.z, 16
  %i.ab = bitcast i32 %i.aa to float
  %i.ac = call fast noundef nofpclass(nan inf) float @acoshf(float noundef nofpclass(nan inf) %i.ab) #20
  %i.ad = bitcast float %i.ac to i32
  %i.ae = lshr i32 %i.ad, 16
  %i.af = trunc nuw i32 %i.ae to i16
  store i16 %i.af, ptr %.126118.us, align 2, !tbaa !51
  %i.ag = getelementptr inbounds nuw i8, ptr %.126118.us, i64 2
  %i.ah = add nuw nsw i32 %.1119.us, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.ah, %i.n
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.c, !llvm.loop !427

._crit_edge.us:                                   ; preds = %bb.c
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond129.not = icmp eq i32 %i.w, %lftr.wideiv
  br i1 %exitcond129.not, label %._crit_edge123, label %.noexc.us

.noexc:                                           ; preds = %.noexc.preheader, %._crit_edge
  %i.ai = phi i32 [ %i.n, %.noexc.preheader ], [ %i.aq, %._crit_edge ] ; 2 uses
  %indvars.iv131 = phi i64 [ %i.p, %.noexc.preheader ], [ %indvars.iv.next132, %._crit_edge ] ; 2 uses
  %i.aj = load ptr, ptr %3, align 8, !tbaa !39, !noalias !430
  %i.ak = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !430
  %i.al = mul i64 %i.ak, %indvars.iv131
  %i.am = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !430
  %i.an = mul i64 %i.al, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.an ; 2 uses
  %i.ap = icmp sgt i32 %i.ai, 3
  br i1 %i.ap, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %.noexc
  %i.aq = phi i32 [ %i.ai, %.noexc ], [ %i.eg, %.lr.ph ] ; 3 uses
  %.025.lcssa = phi ptr [ %i.ao, %.noexc ], [ %i.ed, %.lr.ph ]
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.ee, %.lr.ph ] ; 2 uses
  %i.ar = icmp slt i32 %.0.lcssa, %i.aq
  br i1 %i.ar, label %.lr.ph120, label %._crit_edge

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.0115 = phi i32 [ %i.ee, %.lr.ph ], [ 0, %.noexc ]
  %.025114 = phi ptr [ %i.ed, %.lr.ph ], [ %i.ao, %.noexc ] ; 3 uses
  %i.as = load i64, ptr %.025114, align 1, !tbaa !46
  %i.at = insertelement <2 x i64> poison, i64 %i.as, i64 0
  %i.au = bitcast <2 x i64> %i.at to <8 x i16>
  %i.av = shufflevector <8 x i16> %i.au, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.aw = bitcast <8 x i16> %i.av to <4 x float>  ; 5 uses
  %i.ax = fadd fast <4 x float> %i.aw, splat (float -1.000000e+00)
  %i.ay = fadd fast <4 x float> %i.aw, splat (float 1.000000e+00)
  %i.az = fmul fast <4 x float> %i.ax, %i.ay
  %i.ba = call fast <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.az)
  %i.bb = fadd fast <4 x float> %i.ba, %i.aw      ; 2 uses
  %i.bc = fcmp fast ole <4 x float> %i.bb, zeroinitializer
  %i.bd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.bb, <4 x float> splat (float f0x00800000))
  %i.be = bitcast <4 x float> %i.bd to <4 x i32>  ; 2 uses
  %i.bf = lshr <4 x i32> %i.be, splat (i32 23)
  %i.bg = and <4 x i32> %i.be, splat (i32 -2139095041)
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
  %reass.add110 = fadd fast <4 x float> %i.ci, splat (float -5.000000e-01)
  %reass.mul111 = fmul fast <4 x float> %i.br, %reass.add110
  %i.cj = fadd fast <4 x float> %reass.mul, %i.bq
  %i.ck = fadd fast <4 x float> %i.cj, %reass.mul111
  %i.cl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.aw, <4 x float> splat (float f0x00800000))
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
  %reass.mul109 = fmul fast <4 x float> %i.cx, splat (float f0x3F317218)
  %reass.add112 = fadd fast <4 x float> %i.dq, splat (float -5.000000e-01)
  %reass.mul113 = fmul fast <4 x float> %i.cz, %reass.add112
  %i.dr = fadd fast <4 x float> %i.cy, splat (float f0x3F317218)
  %i.ds = fadd fast <4 x float> %i.dr, %reass.mul109
  %i.dt = fadd fast <4 x float> %i.ds, %reass.mul113
  %i.du = fcmp fast ule <4 x float> %i.aw, splat (float f0x5F0AC723)
  %i.dv = select <4 x i1> %i.bc, <4 x float> splat (float -nan(0x3FFFFF)), <4 x float> %i.ck
  %i.dw = select <4 x i1> %i.du, <4 x float> %i.dv, <4 x float> %i.dt
  %i.dx = bitcast <4 x float> %i.dw to <8 x i16>
  %i.dy = shufflevector <8 x i16> %i.dx, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.dz = bitcast <8 x i16> %i.dy to <4 x float>
  %i.ea = shufflevector <4 x float> %i.dz, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.eb = bitcast <4 x float> %i.ea to <2 x i64>
  %i.ec = extractelement <2 x i64> %i.eb, i64 0
  store i64 %i.ec, ptr %.025114, align 1, !tbaa !46
  %i.ed = getelementptr inbounds nuw i8, ptr %.025114, i64 8 ; 2 uses
  %i.ee = add nuw nsw i32 %.0115, 4               ; 3 uses
  %i.ef = or disjoint i32 %i.ee, 3
  %i.eg = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.eh = icmp slt i32 %i.ef, %i.eg
  br i1 %i.eh, label %.lr.ph, label %.preheader, !llvm.loop !428

.lr.ph120:                                        ; preds = %.preheader, %.lr.ph120
  %.1119 = phi i32 [ %i.er, %.lr.ph120 ], [ %.0.lcssa, %.preheader ]
  %.126118 = phi ptr [ %i.eq, %.lr.ph120 ], [ %.025.lcssa, %.preheader ] ; 3 uses
  %i.ei = load i16, ptr %.126118, align 2, !tbaa !51
  %i.ej = zext i16 %i.ei to i32
  %i.ek = shl nuw i32 %i.ej, 16
  %i.el = bitcast i32 %i.ek to float
  %i.em = call fast noundef nofpclass(nan inf) float @acoshf(float noundef nofpclass(nan inf) %i.el) #20
  %i.en = bitcast float %i.em to i32
  %i.eo = lshr i32 %i.en, 16
  %i.ep = trunc nuw i32 %i.eo to i16
  store i16 %i.ep, ptr %.126118, align 2, !tbaa !51
  %i.eq = getelementptr inbounds nuw i8, ptr %.126118, i64 2
  %i.er = add nuw nsw i32 %.1119, 1               ; 2 uses
  %exitcond130.not = icmp eq i32 %i.er, %i.aq
  br i1 %exitcond130.not, label %._crit_edge, label %.lr.ph120, !llvm.loop !427

._crit_edge:                                      ; preds = %.lr.ph120, %.preheader
  %indvars.iv.next132 = add nsw i64 %indvars.iv131, 1 ; 2 uses
  %lftr.wideiv134 = trunc i64 %indvars.iv.next132 to i32
  %exitcond135.not = icmp eq i32 %i.q, %lftr.wideiv134
  br i1 %exitcond135.not, label %._crit_edge123, label %.noexc, !llvm.loop !429

._crit_edge123:                                   ; preds = %._crit_edge.us, %._crit_edge, %.noexc.lr.ph.split.us, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge123, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL22unary_op_inplace_bf16sINS_19UnaryOp_x86_functor14unary_op_atanhEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #7 personality ptr @__gxx_personality_v0 {
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
  %.not131 = icmp sgt i32 %i.k, %i.j
  br i1 %.not131, label %._crit_edge133, label %.noexc.lr.ph

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
  %i.r = load ptr, ptr %3, align 8, !tbaa !39, !noalias !436
  %i.s = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !436
  %i.t = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !436
  %factor.op.mul = mul i64 %i.s, %i.t
  %i.u = icmp sgt i32 %i.n, 0
  br i1 %i.u, label %.noexc.us.preheader, label %._crit_edge133

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
  %.1129.us = phi i32 [ 0, %.noexc.us ], [ %i.ah, %bb.c ]
  %.126128.us = phi ptr [ %i.x, %.noexc.us ], [ %i.ag, %bb.c ] ; 3 uses
  %i.y = load i16, ptr %.126128.us, align 2, !tbaa !51
  %i.z = zext i16 %i.y to i32
  %i.aa = shl nuw i32 %i.z, 16
  %i.ab = bitcast i32 %i.aa to float
  %i.ac = call fast noundef nofpclass(nan inf) float @atanhf(float noundef nofpclass(nan inf) %i.ab) #20
  %i.ad = bitcast float %i.ac to i32
  %i.ae = lshr i32 %i.ad, 16
  %i.af = trunc nuw i32 %i.ae to i16
  store i16 %i.af, ptr %.126128.us, align 2, !tbaa !51
  %i.ag = getelementptr inbounds nuw i8, ptr %.126128.us, i64 2
  %i.ah = add nuw nsw i32 %.1129.us, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.ah, %i.n
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.c, !llvm.loop !433

._crit_edge.us:                                   ; preds = %bb.c
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond139.not = icmp eq i32 %i.w, %lftr.wideiv
  br i1 %exitcond139.not, label %._crit_edge133, label %.noexc.us

.noexc:                                           ; preds = %.noexc.preheader, %._crit_edge
  %i.ai = phi i32 [ %i.n, %.noexc.preheader ], [ %i.aq, %._crit_edge ] ; 2 uses
  %indvars.iv141 = phi i64 [ %i.p, %.noexc.preheader ], [ %indvars.iv.next142, %._crit_edge ] ; 2 uses
  %i.aj = load ptr, ptr %3, align 8, !tbaa !39, !noalias !436
  %i.ak = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !436
  %i.al = mul i64 %i.ak, %indvars.iv141
  %i.am = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !436
  %i.an = mul i64 %i.al, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.an ; 2 uses
  %i.ap = icmp sgt i32 %i.ai, 3
  br i1 %i.ap, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %.noexc
  %i.aq = phi i32 [ %i.ai, %.noexc ], [ %i.eq, %.lr.ph ] ; 3 uses
  %.025.lcssa = phi ptr [ %i.ao, %.noexc ], [ %i.en, %.lr.ph ]
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.eo, %.lr.ph ] ; 2 uses
  %i.ar = icmp slt i32 %.0.lcssa, %i.aq
  br i1 %i.ar, label %.lr.ph130, label %._crit_edge

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.0125 = phi i32 [ %i.eo, %.lr.ph ], [ 0, %.noexc ]
  %.025124 = phi ptr [ %i.en, %.lr.ph ], [ %i.ao, %.noexc ] ; 3 uses
  %i.as = load i64, ptr %.025124, align 1, !tbaa !46
  %i.at = insertelement <2 x i64> poison, i64 %i.as, i64 0
  %i.au = bitcast <2 x i64> %i.at to <8 x i16>
  %i.av = shufflevector <8 x i16> %i.au, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3> ; 2 uses
  %i.aw = bitcast <8 x i16> %i.av to <4 x float>  ; 8 uses
  %i.ax = fmul fast <4 x float> %i.aw, %i.aw      ; 2 uses
  %i.ay = fmul fast <4 x float> %i.aw, splat (float f0x3EAAAAAB) ; 2 uses
  %i.az = fadd fast <4 x float> %i.ay, splat (float -5.000000e-01)
  %i.ba = fmul fast <4 x float> %i.ax, %i.az
  %i.bb = fadd fast <4 x float> %i.ba, %i.aw
  %i.bc = fadd fast <4 x float> %i.aw, splat (float 1.000000e+00)
  %i.bd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.bc, <4 x float> splat (float f0x00800000))
  %i.be = bitcast <4 x float> %i.bd to <4 x i32>  ; 2 uses
  %i.bf = lshr <4 x i32> %i.be, splat (i32 23)
  %i.bg = and <4 x i32> %i.be, splat (i32 -2139095041)
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
  %reass.add120 = fadd fast <4 x float> %i.ci, splat (float -5.000000e-01)
  %reass.mul121 = fmul fast <4 x float> %i.br, %reass.add120
  %i.cj = fadd fast <4 x float> %reass.mul, %i.bq
  %i.ck = fadd fast <4 x float> %i.cj, %reass.mul121
  %i.cl = bitcast <8 x i16> %i.av to <4 x i32>
  %i.cm = and <4 x i32> %i.cl, splat (i32 2147418112)
  %i.cn = bitcast <4 x i32> %i.cm to <4 x float>
  %i.co = fcmp fast uge <4 x float> %i.cn, splat (float f0x38D1B717)
  %i.cp = select <4 x i1> %i.co, <4 x float> %i.ck, <4 x float> %i.bb
  %i.cq = fsub fast <4 x float> splat (float -5.000000e-01), %i.ay
  %i.cr = fmul fast <4 x float> %i.ax, %i.cq
  %i.cs = fsub fast <4 x float> %i.cr, %i.aw
  %i.ct = fsub fast <4 x float> splat (float 1.000000e+00), %i.aw
  %i.cu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ct, <4 x float> splat (float f0x00800000))
  %i.cv = bitcast <4 x float> %i.cu to <4 x i32>  ; 2 uses
  %i.cw = lshr <4 x i32> %i.cv, splat (i32 23)
  %i.cx = and <4 x i32> %i.cv, splat (i32 -2139095041)
  %i.cy = or disjoint <4 x i32> %i.cx, splat (i32 1056964608)
  %i.cz = bitcast <4 x i32> %i.cy to <4 x float>  ; 3 uses
  %i.da = add nsw <4 x i32> %i.cw, splat (i32 -127)
  %i.db = sitofp fast <4 x i32> %i.da to <4 x float> ; 2 uses
  %i.dc = fadd fast <4 x float> %i.db, splat (float 1.000000e+00)
  %i.dd = fcmp fast olt <4 x float> %i.cz, splat (float f0x3F3504F3) ; 2 uses
  %i.de = select <4 x i1> %i.dd, <4 x float> %i.cz, <4 x float> zeroinitializer
  %i.df = fadd fast <4 x float> %i.cz, splat (float -1.000000e+00)
  %i.dg = select fast <4 x i1> %i.dd, <4 x float> %i.db, <4 x float> %i.dc
  %i.dh = fadd fast <4 x float> %i.df, %i.de      ; 12 uses
  %i.di = fmul fast <4 x float> %i.dh, %i.dh
  %i.dj = fmul fast <4 x float> %i.dh, splat (float f0x3D9021BB)
  %i.dk = fadd fast <4 x float> %i.dj, splat (float f0xBDEBD1B8)
  %i.dl = fmul fast <4 x float> %i.dk, %i.dh
  %i.dm = fadd fast <4 x float> %i.dl, splat (float f0x3DEF251A)
  %i.dn = fmul fast <4 x float> %i.dm, %i.dh
  %i.do = fadd fast <4 x float> %i.dn, splat (float f0xBDFE5D4F)
  %i.dp = fmul fast <4 x float> %i.do, %i.dh
  %i.dq = fadd fast <4 x float> %i.dp, splat (float f0x3E11E9BF)
  %i.dr = fmul fast <4 x float> %i.dq, %i.dh
  %i.ds = fadd fast <4 x float> %i.dr, splat (float f0xBE2AAE50)
  %i.dt = fmul fast <4 x float> %i.ds, %i.dh
  %i.du = fadd fast <4 x float> %i.dt, splat (float f0x3E4CCEAC)
  %i.dv = fmul fast <4 x float> %i.du, %i.dh
  %i.dw = fadd fast <4 x float> %i.dv, splat (float f0xBE7FFFFC)
  %i.dx = fmul fast <4 x float> %i.dw, %i.dh
  %i.dy = fadd fast <4 x float> %i.dx, splat (float f0x3EAAAAAA)
  %i.dz = fmul fast <4 x float> %i.dy, %i.dh
  %reass.mul119 = fmul fast <4 x float> %i.dg, splat (float f0x3F317218)
  %reass.add122 = fadd fast <4 x float> %i.dz, splat (float -5.000000e-01)
  %reass.mul123 = fmul fast <4 x float> %i.di, %reass.add122
  %i.ea = fadd fast <4 x float> %reass.mul119, %i.dh
  %i.eb = fadd fast <4 x float> %i.ea, %reass.mul123
  %i.ec = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.aw)
  %i.ed = fcmp fast uge <4 x float> %i.ec, splat (float f0x38D1B717)
  %i.ee = select <4 x i1> %i.ed, <4 x float> %i.eb, <4 x float> %i.cs
  %i.ef = fsub fast <4 x float> %i.cp, %i.ee
  %i.eg = fmul fast <4 x float> %i.ef, splat (float 5.000000e-01)
  %i.eh = bitcast <4 x float> %i.eg to <8 x i16>
  %i.ei = shufflevector <8 x i16> %i.eh, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.ej = bitcast <8 x i16> %i.ei to <4 x float>
  %i.ek = shufflevector <4 x float> %i.ej, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.el = bitcast <4 x float> %i.ek to <2 x i64>
  %i.em = extractelement <2 x i64> %i.el, i64 0
  store i64 %i.em, ptr %.025124, align 1, !tbaa !46
  %i.en = getelementptr inbounds nuw i8, ptr %.025124, i64 8 ; 2 uses
  %i.eo = add nuw nsw i32 %.0125, 4               ; 3 uses
  %i.ep = or disjoint i32 %i.eo, 3
  %i.eq = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.er = icmp slt i32 %i.ep, %i.eq
  br i1 %i.er, label %.lr.ph, label %.preheader, !llvm.loop !434

.lr.ph130:                                        ; preds = %.preheader, %.lr.ph130
  %.1129 = phi i32 [ %i.fb, %.lr.ph130 ], [ %.0.lcssa, %.preheader ]
  %.126128 = phi ptr [ %i.fa, %.lr.ph130 ], [ %.025.lcssa, %.preheader ] ; 3 uses
  %i.es = load i16, ptr %.126128, align 2, !tbaa !51
  %i.et = zext i16 %i.es to i32
  %i.eu = shl nuw i32 %i.et, 16
  %i.ev = bitcast i32 %i.eu to float
  %i.ew = call fast noundef nofpclass(nan inf) float @atanhf(float noundef nofpclass(nan inf) %i.ev) #20
  %i.ex = bitcast float %i.ew to i32
  %i.ey = lshr i32 %i.ex, 16
  %i.ez = trunc nuw i32 %i.ey to i16
  store i16 %i.ez, ptr %.126128, align 2, !tbaa !51
  %i.fa = getelementptr inbounds nuw i8, ptr %.126128, i64 2
  %i.fb = add nuw nsw i32 %.1129, 1               ; 2 uses
  %exitcond140.not = icmp eq i32 %i.fb, %i.aq
  br i1 %exitcond140.not, label %._crit_edge, label %.lr.ph130, !llvm.loop !433

._crit_edge:                                      ; preds = %.lr.ph130, %.preheader
  %indvars.iv.next142 = add nsw i64 %indvars.iv141, 1 ; 2 uses
  %lftr.wideiv144 = trunc i64 %indvars.iv.next142 to i32
  %exitcond145.not = icmp eq i32 %i.q, %lftr.wideiv144
  br i1 %exitcond145.not, label %._crit_edge133, label %.noexc, !llvm.loop !435

._crit_edge133:                                   ; preds = %._crit_edge.us, %._crit_edge, %.noexc.lr.ph.split.us, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge133, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL22unary_op_inplace_bf16sINS_19UnaryOp_x86_functor14unary_op_log1pEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #7 personality ptr @__gxx_personality_v0 {
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
  %.not84 = icmp sgt i32 %i.k, %i.j
  br i1 %.not84, label %._crit_edge86, label %.noexc.lr.ph

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
  %i.r = load ptr, ptr %3, align 8, !tbaa !39, !noalias !442
  %i.s = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !442
  %i.t = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !442
  %factor.op.mul = mul i64 %i.s, %i.t
  %i.u = icmp sgt i32 %i.n, 0
  br i1 %i.u, label %.noexc.us.preheader, label %._crit_edge86

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
  %.182.us = phi i32 [ 0, %.noexc.us ], [ %i.ah, %bb.c ]
  %.12681.us = phi ptr [ %i.x, %.noexc.us ], [ %i.ag, %bb.c ] ; 3 uses
  %i.y = load i16, ptr %.12681.us, align 2, !tbaa !51
  %i.z = zext i16 %i.y to i32
  %i.aa = shl nuw i32 %i.z, 16
  %i.ab = bitcast i32 %i.aa to float
  %i.ac = call fast noundef nofpclass(nan inf) float @log1pf(float noundef nofpclass(nan inf) %i.ab) #20
  %i.ad = bitcast float %i.ac to i32
  %i.ae = lshr i32 %i.ad, 16
  %i.af = trunc nuw i32 %i.ae to i16
  store i16 %i.af, ptr %.12681.us, align 2, !tbaa !51
  %i.ag = getelementptr inbounds nuw i8, ptr %.12681.us, i64 2
  %i.ah = add nuw nsw i32 %.182.us, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.ah, %i.n
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.c, !llvm.loop !439

._crit_edge.us:                                   ; preds = %bb.c
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond92.not = icmp eq i32 %i.w, %lftr.wideiv
  br i1 %exitcond92.not, label %._crit_edge86, label %.noexc.us

.noexc:                                           ; preds = %.noexc.preheader, %._crit_edge
  %i.ai = phi i32 [ %i.n, %.noexc.preheader ], [ %i.aq, %._crit_edge ] ; 2 uses
  %indvars.iv94 = phi i64 [ %i.p, %.noexc.preheader ], [ %indvars.iv.next95, %._crit_edge ] ; 2 uses
  %i.aj = load ptr, ptr %3, align 8, !tbaa !39, !noalias !442
  %i.ak = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !442
  %i.al = mul i64 %i.ak, %indvars.iv94
  %i.am = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !442
  %i.an = mul i64 %i.al, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.an ; 2 uses
  %i.ap = icmp sgt i32 %i.ai, 3
  br i1 %i.ap, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %.noexc
  %i.aq = phi i32 [ %i.ai, %.noexc ], [ %i.db, %.lr.ph ] ; 3 uses
  %.025.lcssa = phi ptr [ %i.ao, %.noexc ], [ %i.cy, %.lr.ph ]
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.cz, %.lr.ph ] ; 2 uses
  %i.ar = icmp slt i32 %.0.lcssa, %i.aq
  br i1 %i.ar, label %.lr.ph83, label %._crit_edge

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.078 = phi i32 [ %i.cz, %.lr.ph ], [ 0, %.noexc ]
  %.02577 = phi ptr [ %i.cy, %.lr.ph ], [ %i.ao, %.noexc ] ; 3 uses
  %i.as = load i64, ptr %.02577, align 1, !tbaa !46
  %i.at = insertelement <2 x i64> poison, i64 %i.as, i64 0
  %i.au = bitcast <2 x i64> %i.at to <8 x i16>
  %i.av = shufflevector <8 x i16> %i.au, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3> ; 2 uses
  %i.aw = bitcast <8 x i16> %i.av to <4 x float>  ; 5 uses
  %i.ax = fmul fast <4 x float> %i.aw, %i.aw
  %i.ay = fmul fast <4 x float> %i.aw, splat (float f0x3EAAAAAB)
  %i.az = fadd fast <4 x float> %i.ay, splat (float -5.000000e-01)
  %i.ba = fmul fast <4 x float> %i.ax, %i.az
  %i.bb = fadd fast <4 x float> %i.ba, %i.aw
  %i.bc = fadd fast <4 x float> %i.aw, splat (float 1.000000e+00) ; 2 uses
  %i.bd = fcmp fast ole <4 x float> %i.bc, zeroinitializer
  %i.be = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.bc, <4 x float> splat (float f0x00800000))
  %i.bf = bitcast <4 x float> %i.be to <4 x i32>  ; 2 uses
  %i.bg = lshr <4 x i32> %i.bf, splat (i32 23)
  %i.bh = and <4 x i32> %i.bf, splat (i32 -2139095041)
  %i.bi = or disjoint <4 x i32> %i.bh, splat (i32 1056964608)
  %i.bj = bitcast <4 x i32> %i.bi to <4 x float>  ; 3 uses
  %i.bk = add nsw <4 x i32> %i.bg, splat (i32 -127)
  %i.bl = sitofp fast <4 x i32> %i.bk to <4 x float> ; 2 uses
  %i.bm = fadd fast <4 x float> %i.bl, splat (float 1.000000e+00)
  %i.bn = fcmp fast olt <4 x float> %i.bj, splat (float f0x3F3504F3) ; 2 uses
  %i.bo = select <4 x i1> %i.bn, <4 x float> %i.bj, <4 x float> zeroinitializer
  %i.bp = fadd fast <4 x float> %i.bj, splat (float -1.000000e+00)
  %i.bq = select fast <4 x i1> %i.bn, <4 x float> %i.bl, <4 x float> %i.bm
  %i.br = fadd fast <4 x float> %i.bp, %i.bo      ; 12 uses
  %i.bs = fmul fast <4 x float> %i.br, %i.br
  %i.bt = fmul fast <4 x float> %i.br, splat (float f0x3D9021BB)
  %i.bu = fadd fast <4 x float> %i.bt, splat (float f0xBDEBD1B8)
  %i.bv = fmul fast <4 x float> %i.bu, %i.br
  %i.bw = fadd fast <4 x float> %i.bv, splat (float f0x3DEF251A)
  %i.bx = fmul fast <4 x float> %i.bw, %i.br
  %i.by = fadd fast <4 x float> %i.bx, splat (float f0xBDFE5D4F)
  %i.bz = fmul fast <4 x float> %i.by, %i.br
  %i.ca = fadd fast <4 x float> %i.bz, splat (float f0x3E11E9BF)
  %i.cb = fmul fast <4 x float> %i.ca, %i.br
  %i.cc = fadd fast <4 x float> %i.cb, splat (float f0xBE2AAE50)
  %i.cd = fmul fast <4 x float> %i.cc, %i.br
  %i.ce = fadd fast <4 x float> %i.cd, splat (float f0x3E4CCEAC)
  %i.cf = fmul fast <4 x float> %i.ce, %i.br
  %i.cg = fadd fast <4 x float> %i.cf, splat (float f0xBE7FFFFC)
  %i.ch = fmul fast <4 x float> %i.cg, %i.br
  %i.ci = fadd fast <4 x float> %i.ch, splat (float f0x3EAAAAAA)
end_hunk_3
