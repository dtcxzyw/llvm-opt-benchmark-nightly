Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/unaryop_x86_fma?download=true
inline.NumInlined: 57
inline.NumDeleted: 57
begin_hunk_0_@_ZN4ncnnL16unary_op_inplaceINS_23UnaryOp_x86_fma_functor13unary_op_sinhEEEiRNS_3MatERKNS_6OptionE.omp_outlined:bb.a
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cz = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.131.lcssa, i64 %i.cz ; 2 uses
  %wide.load = load <8 x float>, ptr %next.gep, align 4, !tbaa !44
  %i.da = call fast <8 x float> @llvm.sinh.v8f32(<8 x float> %wide.load)
  store <8 x float> %i.da, ptr %next.gep, align 4, !tbaa !44
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.db = icmp eq i64 %index.next, %n.vec
  br i1 %i.db, label %middle.block, label %vector.body, !llvm.loop !225

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cu, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph171.preheader200

.lr.ph171.preheader200:                           ; preds = %.lr.ph171.preheader, %middle.block
  %.2170.ph = phi i32 [ %.1.lcssa, %.lr.ph171.preheader ], [ %i.cw, %middle.block ]
  %.232169.ph = phi ptr [ %.131.lcssa, %.lr.ph171.preheader ], [ %i.cy, %middle.block ]
  br label %.lr.ph171

.lr.ph165:                                        ; preds = %.preheader159, %.lr.ph165
  %.1164 = phi i32 [ %i.fr, %.lr.ph165 ], [ %.0.lcssa, %.preheader159 ]
  %.131163 = phi ptr [ %i.fq, %.lr.ph165 ], [ %.030.lcssa, %.preheader159 ] ; 3 uses
  %i.dc = load <4 x float>, ptr %.131163, align 16, !tbaa !41 ; 8 uses
  %i.dd = fmul fast <4 x float> %i.dc, %i.dc      ; 2 uses
  %i.de = fmul fast <4 x float> %i.dc, splat (float f0x3E2AAAAB) ; 2 uses
  %i.df = fadd fast <4 x float> %i.de, splat (float 5.000000e-01)
  %i.dg = fmul fast <4 x float> %i.dd, %i.df
  %i.dh = fadd fast <4 x float> %i.dg, %i.dc
  %i.di = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.dc, <4 x float> splat (float f0x42B0C0A5))
  %i.dj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.di, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.dk = fmul fast <4 x float> %i.dj, splat (float f0x3FB8AA3B)
  %i.dl = fadd fast <4 x float> %i.dk, splat (float 5.000000e-01) ; 2 uses
  %i.dm = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dl)
  %i.dn = sitofp fast <4 x i32> %i.dm to <4 x float> ; 2 uses
  %i.do = fcmp fast olt <4 x float> %i.dl, %i.dn
  %i.dp = select <4 x i1> %i.do, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.dq = fsub fast <4 x float> %i.dn, %i.dp      ; 2 uses
  %i.dr = fneg fast <4 x float> %i.dq             ; 2 uses
  %i.ds = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.dr, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.dj)
  %i.dt = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.dr, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.ds) ; 8 uses
  %i.du = fmul fast <4 x float> %i.dt, %i.dt
  %i.dv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dt, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.dw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dv, <4 x float> nofpclass(nan inf) %i.dt, <4 x float> splat (float f0x3C088908))
  %i.dx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dw, <4 x float> nofpclass(nan inf) %i.dt, <4 x float> splat (float f0x3D2AA9C1))
  %i.dy = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dx, <4 x float> nofpclass(nan inf) %i.dt, <4 x float> splat (float f0x3E2AAAAA))
  %i.dz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dy, <4 x float> nofpclass(nan inf) %i.dt, <4 x float> splat (float 5.000000e-01))
  %i.ea = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dz, <4 x float> nofpclass(nan inf) %i.du, <4 x float> nofpclass(nan inf) %i.dt)
  %i.eb = fadd fast <4 x float> %i.ea, splat (float 1.000000e+00)
  %i.ec = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dq)
  %i.ed = shl <4 x i32> %i.ec, splat (i32 23)
  %i.ee = add <4 x i32> %i.ed, splat (i32 1065353216)
  %i.ef = bitcast <4 x i32> %i.ee to <4 x float>
  %i.eg = fmul fast <4 x float> %i.eb, %i.ef
  %i.eh = fadd fast <4 x float> %i.eg, splat (float -1.000000e+00)
  %i.ei = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.dc)
  %i.ej = fcmp fast uge <4 x float> %i.ei, splat (float f0x38D1B717) ; 2 uses
  %.v = select <4 x i1> %i.ej, <4 x float> %i.eh, <4 x float> %i.dh
  %i.ek = fneg fast <4 x float> %i.dc
  %i.el = fsub fast <4 x float> splat (float 5.000000e-01), %i.de
  %i.em = fmul fast <4 x float> %i.dd, %i.el
  %i.en = fsub fast <4 x float> %i.em, %i.dc
  %i.eo = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ek, <4 x float> splat (float f0x42B0C0A5))
  %i.ep = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.eo, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.eq = fmul fast <4 x float> %i.ep, splat (float f0x3FB8AA3B)
  %i.er = fadd fast <4 x float> %i.eq, splat (float 5.000000e-01) ; 2 uses
  %i.es = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.er)
  %i.et = sitofp fast <4 x i32> %i.es to <4 x float> ; 2 uses
  %i.eu = fcmp fast olt <4 x float> %i.er, %i.et
  %i.ev = select <4 x i1> %i.eu, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ew = fsub fast <4 x float> %i.et, %i.ev      ; 2 uses
  %i.ex = fneg fast <4 x float> %i.ew             ; 2 uses
  %i.ey = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.ex, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.ep)
  %i.ez = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.ex, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.ey) ; 8 uses
  %i.fa = fmul fast <4 x float> %i.ez, %i.ez
  %i.fb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ez, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.fc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fb, <4 x float> nofpclass(nan inf) %i.ez, <4 x float> splat (float f0x3C088908))
  %i.fd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fc, <4 x float> nofpclass(nan inf) %i.ez, <4 x float> splat (float f0x3D2AA9C1))
  %i.fe = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fd, <4 x float> nofpclass(nan inf) %i.ez, <4 x float> splat (float f0x3E2AAAAA))
  %i.ff = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fe, <4 x float> nofpclass(nan inf) %i.ez, <4 x float> splat (float 5.000000e-01))
  %i.fg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ff, <4 x float> nofpclass(nan inf) %i.fa, <4 x float> nofpclass(nan inf) %i.ez)
  %i.fh = fadd fast <4 x float> %i.fg, splat (float 1.000000e+00)
  %i.fi = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ew)
  %i.fj = shl <4 x i32> %i.fi, splat (i32 23)
  %i.fk = add <4 x i32> %i.fj, splat (i32 1065353216)
  %i.fl = bitcast <4 x i32> %i.fk to <4 x float>
  %i.fm = fmul fast <4 x float> %i.fh, %i.fl
  %i.fn = fadd fast <4 x float> %i.fm, splat (float -1.000000e+00)
  %.v156 = select <4 x i1> %i.ej, <4 x float> %i.fn, <4 x float> %i.en
  %i.fo = fsub fast <4 x float> %.v, %.v156
  %i.fp = fmul fast <4 x float> %i.fo, splat (float 5.000000e-01)
  store <4 x float> %i.fp, ptr %.131163, align 16, !tbaa !41
  %i.fq = getelementptr inbounds nuw i8, ptr %.131163, i64 16 ; 2 uses
  %i.fr = add nuw nsw i32 %.1164, 4               ; 3 uses
  %i.fs = or disjoint i32 %i.fr, 3
  %i.ft = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.fu = icmp slt i32 %i.fs, %i.ft
  br i1 %i.fu, label %.lr.ph165, label %.preheader, !llvm.loop !226

.lr.ph171:                                        ; preds = %.lr.ph171.preheader200, %.lr.ph171
  %.2170 = phi i32 [ %i.fy, %.lr.ph171 ], [ %.2170.ph, %.lr.ph171.preheader200 ]
  %.232169 = phi ptr [ %i.fx, %.lr.ph171 ], [ %.232169.ph, %.lr.ph171.preheader200 ] ; 3 uses
  %i.fv = load float, ptr %.232169, align 4, !tbaa !44
  %i.fw = call fast noundef nofpclass(nan inf) float @llvm.sinh.f32(float %i.fv)
  store float %i.fw, ptr %.232169, align 4, !tbaa !44
  %i.fx = getelementptr inbounds nuw i8, ptr %.232169, i64 4
  %i.fy = add nuw nsw i32 %.2170, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.fy, %i.cp
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph171, !llvm.loop !227

._crit_edge:                                      ; preds = %.lr.ph171, %middle.block, %.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond181.not = icmp eq i32 %i.o, %lftr.wideiv
  br i1 %exitcond181.not, label %._crit_edge174, label %.noexc

._crit_edge174:                                   ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge174, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sinh.f32(float) #11

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL16unary_op_inplaceINS_23UnaryOp_x86_fma_functor14unary_op_asinhEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !37     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

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
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !37
  %i.k = load i32, ptr %i.a, align 4, !tbaa !37   ; 2 uses
  %.not198 = icmp sgt i32 %i.k, %i.j
  br i1 %.not198, label %._crit_edge200, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  %i.o = add nsw i32 %i.j, 1
  %.pre = load i32, ptr %4, align 4, !tbaa !37
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %._crit_edge
  %i.p = phi i32 [ %.pre, %.noexc.lr.ph ], [ %i.da, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !39, !noalias !234
  %i.r = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !234
  %i.s = mul i64 %i.r, %indvars.iv
  %i.t = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !234
  %i.u = mul i64 %i.s, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.u ; 2 uses
  %i.w = icmp sgt i32 %i.p, 7
  br i1 %i.w, label %.lr.ph, label %.preheader185

.preheader185:                                    ; preds = %.lr.ph, %.noexc
  %i.x = phi i32 [ %i.p, %.noexc ], [ %i.cy, %.lr.ph ] ; 2 uses
  %.030.lcssa = phi ptr [ %i.v, %.noexc ], [ %i.cv, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.cw, %.lr.ph ] ; 3 uses
  %i.y = or disjoint i32 %.0.lcssa, 3
  %i.z = icmp slt i32 %i.y, %i.x
  br i1 %i.z, label %.lr.ph191, label %.preheader

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.0187 = phi i32 [ %i.cw, %.lr.ph ], [ 0, %.noexc ]
  %.030186 = phi ptr [ %i.cv, %.lr.ph ], [ %i.v, %.noexc ] ; 3 uses
  %i.aa = load <8 x i32>, ptr %.030186, align 1, !tbaa !41 ; 2 uses
  %i.ab = and <8 x i32> %i.aa, splat (i32 2147483647)
  %i.ac = bitcast <8 x i32> %i.ab to <8 x float>  ; 5 uses
  %i.ad = fmul fast <8 x float> %i.ac, %i.ac
  %i.ae = fadd fast <8 x float> %i.ad, splat (float 1.000000e+00)
  %i.af = call fast noundef nofpclass(nan inf) <8 x float> @llvm.sqrt.v8f32(<8 x float> nofpclass(nan inf) %i.ae)
  %i.ag = fadd fast <8 x float> %i.af, %i.ac
  %i.ah = call <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.ag, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.ai = bitcast <8 x float> %i.ah to <8 x i32>
  %i.aj = bitcast <8 x float> %i.ah to <8 x i32>
  %i.ak = and <8 x i32> %i.aj, splat (i32 8388607)
  %i.al = or disjoint <8 x i32> %i.ak, splat (i32 1056964608)
  %i.am = bitcast <8 x i32> %i.al to <8 x float>  ; 3 uses
  %i.an = lshr <8 x i32> %i.ai, splat (i32 23)
  %i.ao = add nsw <8 x i32> %i.an, splat (i32 -127)
  %i.ap = sitofp fast <8 x i32> %i.ao to <8 x float> ; 2 uses
  %i.aq = fadd fast <8 x float> %i.ap, splat (float 1.000000e+00)
  %i.ar = fcmp fast olt <8 x float> %i.am, splat (float f0x3F3504F3) ; 2 uses
  %i.as = select <8 x i1> %i.ar, <8 x float> %i.am, <8 x float> zeroinitializer
  %i.at = fadd fast <8 x float> %i.am, splat (float -1.000000e+00)
  %i.au = select fast <8 x i1> %i.ar, <8 x float> %i.ap, <8 x float> %i.aq ; 2 uses
  %i.av = fadd fast <8 x float> %i.at, %i.as      ; 12 uses
  %i.aw = fmul fast <8 x float> %i.av, %i.av      ; 2 uses
  %i.ax = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.av, <8 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <8 x float> splat (float f0xBDEBD1B8))
  %i.ay = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ax, <8 x float> nofpclass(nan inf) %i.av, <8 x float> splat (float f0x3DEF251A))
  %i.az = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ay, <8 x float> nofpclass(nan inf) %i.av, <8 x float> splat (float f0xBDFE5D4F))
  %i.ba = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.az, <8 x float> nofpclass(nan inf) %i.av, <8 x float> splat (float f0x3E11E9BF))
  %i.bb = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ba, <8 x float> nofpclass(nan inf) %i.av, <8 x float> splat (float f0xBE2AAE50))
  %i.bc = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bb, <8 x float> nofpclass(nan inf) %i.av, <8 x float> splat (float f0x3E4CCEAC))
  %i.bd = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bc, <8 x float> nofpclass(nan inf) %i.av, <8 x float> splat (float f0xBE7FFFFC))
  %i.be = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bd, <8 x float> nofpclass(nan inf) %i.av, <8 x float> splat (float f0x3EAAAAAA))
  %i.bf = fmul fast <8 x float> %i.aw, %i.av
  %i.bg = fmul fast <8 x float> %i.bf, %i.be
  %i.bh = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.au, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.bg)
  %i.bi = fneg fast <8 x float> %i.aw
  %i.bj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.bi, <8 x float> splat (float 5.000000e-01), <8 x float> nofpclass(nan inf) %i.bh)
  %i.bk = fadd fast <8 x float> %i.bj, %i.av
  %i.bl = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.au, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.bk)
  %i.bm = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ac, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.bn = bitcast <8 x float> %i.bm to <8 x i32>
  %i.bo = bitcast <8 x float> %i.bm to <8 x i32>
  %i.bp = and <8 x i32> %i.bo, splat (i32 -2139095041)
  %i.bq = or disjoint <8 x i32> %i.bp, splat (i32 1056964608)
  %i.br = bitcast <8 x i32> %i.bq to <8 x float>  ; 3 uses
  %i.bs = lshr <8 x i32> %i.bn, splat (i32 23)
  %i.bt = add nsw <8 x i32> %i.bs, splat (i32 -127)
  %i.bu = sitofp fast <8 x i32> %i.bt to <8 x float> ; 2 uses
  %i.bv = fadd fast <8 x float> %i.bu, splat (float 1.000000e+00)
  %i.bw = fcmp fast olt <8 x float> %i.br, splat (float f0x3F3504F3) ; 2 uses
  %i.bx = select <8 x i1> %i.bw, <8 x float> %i.br, <8 x float> zeroinitializer
  %i.by = fadd fast <8 x float> %i.br, splat (float -1.000000e+00)
  %i.bz = select fast <8 x i1> %i.bw, <8 x float> %i.bu, <8 x float> %i.bv ; 2 uses
  %i.ca = fadd fast <8 x float> %i.by, %i.bx      ; 12 uses
  %i.cb = fmul fast <8 x float> %i.ca, %i.ca      ; 2 uses
  %i.cc = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ca, <8 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <8 x float> splat (float f0xBDEBD1B8))
  %i.cd = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.cc, <8 x float> nofpclass(nan inf) %i.ca, <8 x float> splat (float f0x3DEF251A))
  %i.ce = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.cd, <8 x float> nofpclass(nan inf) %i.ca, <8 x float> splat (float f0xBDFE5D4F))
  %i.cf = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ce, <8 x float> nofpclass(nan inf) %i.ca, <8 x float> splat (float f0x3E11E9BF))
  %i.cg = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.cf, <8 x float> nofpclass(nan inf) %i.ca, <8 x float> splat (float f0xBE2AAE50))
  %i.ch = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.cg, <8 x float> nofpclass(nan inf) %i.ca, <8 x float> splat (float f0x3E4CCEAC))
  %i.ci = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ch, <8 x float> nofpclass(nan inf) %i.ca, <8 x float> splat (float f0xBE7FFFFC))
  %i.cj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ci, <8 x float> nofpclass(nan inf) %i.ca, <8 x float> splat (float f0x3EAAAAAA))
  %i.ck = fmul fast <8 x float> %i.cb, %i.ca
  %i.cl = fmul fast <8 x float> %i.ck, %i.cj
  %i.cm = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bz, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.cl)
  %i.cn = fneg fast <8 x float> %i.cb
  %i.co = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.cn, <8 x float> splat (float 5.000000e-01), <8 x float> nofpclass(nan inf) %i.cm)
  %i.cp = fadd fast <8 x float> %i.co, %i.ca
  %i.cq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bz, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.cp)
  %i.cr = fadd fast <8 x float> %i.cq, splat (float f0x3F317218)
  %i.cs = fcmp fast ule <8 x float> %i.ac, splat (float f0x5F0AC723)
  %.v184 = select <8 x i1> %i.cs, <8 x float> %i.bl, <8 x float> %i.cr
  %6 = bitcast <8 x float> %.v184 to <8 x i32>
  %i.ct = and <8 x i32> %i.aa, splat (i32 -2147483648)
  %i.cu = or <8 x i32> %i.ct, %6
  store <8 x i32> %i.cu, ptr %.030186, align 1, !tbaa !41
  %i.cv = getelementptr inbounds nuw i8, ptr %.030186, i64 32 ; 2 uses
  %i.cw = add nuw nsw i32 %.0187, 8               ; 3 uses
  %i.cx = or disjoint i32 %i.cw, 7
  %i.cy = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.cz = icmp slt i32 %i.cx, %i.cy
  br i1 %i.cz, label %.lr.ph, label %.preheader185, !llvm.loop !231

.preheader:                                       ; preds = %.lr.ph191, %.preheader185
  %i.da = phi i32 [ %i.x, %.preheader185 ], [ %i.fy, %.lr.ph191 ] ; 3 uses
  %.131.lcssa = phi ptr [ %.030.lcssa, %.preheader185 ], [ %i.fv, %.lr.ph191 ]
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader185 ], [ %i.fw, %.lr.ph191 ] ; 2 uses
  %i.db = icmp slt i32 %.1.lcssa, %i.da
  br i1 %i.db, label %.lr.ph197, label %._crit_edge

.lr.ph191:                                        ; preds = %.preheader185, %.lr.ph191
  %.1190 = phi i32 [ %i.fw, %.lr.ph191 ], [ %.0.lcssa, %.preheader185 ]
  %.131189 = phi ptr [ %i.fv, %.lr.ph191 ], [ %.030.lcssa, %.preheader185 ] ; 3 uses
  %i.dc = load <4 x i32>, ptr %.131189, align 16, !tbaa !41 ; 2 uses
  %i.dd = and <4 x i32> %i.dc, splat (i32 2147483647)
  %i.de = bitcast <4 x i32> %i.dd to <4 x float>  ; 5 uses
  %i.df = fmul fast <4 x float> %i.de, %i.de
  %i.dg = fadd fast <4 x float> %i.df, splat (float 1.000000e+00)
  %i.dh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.sqrt.v4f32(<4 x float> nofpclass(nan inf) %i.dg)
  %i.di = fadd fast <4 x float> %i.dh, %i.de
  %i.dj = call <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.di, <4 x float> splat (float f0x00800000))
  %i.dk = bitcast <4 x float> %i.dj to <4 x i32>  ; 2 uses
  %i.dl = lshr <4 x i32> %i.dk, splat (i32 23)
  %i.dm = and <4 x i32> %i.dk, splat (i32 8388607)
  %i.dn = or disjoint <4 x i32> %i.dm, splat (i32 1056964608)
  %i.do = bitcast <4 x i32> %i.dn to <4 x float>  ; 3 uses
  %i.dp = add nsw <4 x i32> %i.dl, splat (i32 -127)
  %i.dq = sitofp fast <4 x i32> %i.dp to <4 x float> ; 2 uses
  %i.dr = fadd fast <4 x float> %i.dq, splat (float 1.000000e+00)
  %i.ds = fcmp fast olt <4 x float> %i.do, splat (float f0x3F3504F3) ; 2 uses
  %i.dt = select <4 x i1> %i.ds, <4 x float> %i.do, <4 x float> zeroinitializer
  %i.du = fadd fast <4 x float> %i.do, splat (float -1.000000e+00)
  %i.dv = select fast <4 x i1> %i.ds, <4 x float> %i.dq, <4 x float> %i.dr ; 2 uses
  %i.dw = fadd fast <4 x float> %i.du, %i.dt      ; 12 uses
  %i.dx = fmul fast <4 x float> %i.dw, %i.dw      ; 2 uses
  %i.dy = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dw, <4 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <4 x float> splat (float f0xBDEBD1B8))
  %i.dz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dy, <4 x float> nofpclass(nan inf) %i.dw, <4 x float> splat (float f0x3DEF251A))
  %i.ea = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dz, <4 x float> nofpclass(nan inf) %i.dw, <4 x float> splat (float f0xBDFE5D4F))
  %i.eb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ea, <4 x float> nofpclass(nan inf) %i.dw, <4 x float> splat (float f0x3E11E9BF))
  %i.ec = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.eb, <4 x float> nofpclass(nan inf) %i.dw, <4 x float> splat (float f0xBE2AAE50))
  %i.ed = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ec, <4 x float> nofpclass(nan inf) %i.dw, <4 x float> splat (float f0x3E4CCEAC))
  %i.ee = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ed, <4 x float> nofpclass(nan inf) %i.dw, <4 x float> splat (float f0xBE7FFFFC))
  %i.ef = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ee, <4 x float> nofpclass(nan inf) %i.dw, <4 x float> splat (float f0x3EAAAAAA))
  %i.eg = fmul fast <4 x float> %i.dx, %i.dw
  %i.eh = fmul fast <4 x float> %i.eg, %i.ef
  %i.ei = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dv, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.eh)
  %i.ej = fneg fast <4 x float> %i.dx
  %i.ek = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.ej, <4 x float> splat (float 5.000000e-01), <4 x float> nofpclass(nan inf) %i.ei)
  %i.el = fadd fast <4 x float> %i.ek, %i.dw
  %i.em = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dv, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.el)
  %i.en = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.de, <4 x float> splat (float f0x00800000))
  %i.eo = bitcast <4 x float> %i.en to <4 x i32>  ; 2 uses
  %i.ep = lshr <4 x i32> %i.eo, splat (i32 23)
  %i.eq = and <4 x i32> %i.eo, splat (i32 -2139095041)
  %i.er = or disjoint <4 x i32> %i.eq, splat (i32 1056964608)
  %i.es = bitcast <4 x i32> %i.er to <4 x float>  ; 3 uses
  %i.et = add nsw <4 x i32> %i.ep, splat (i32 -127)
  %i.eu = sitofp fast <4 x i32> %i.et to <4 x float> ; 2 uses
  %i.ev = fadd fast <4 x float> %i.eu, splat (float 1.000000e+00)
  %i.ew = fcmp fast olt <4 x float> %i.es, splat (float f0x3F3504F3) ; 2 uses
  %i.ex = select <4 x i1> %i.ew, <4 x float> %i.es, <4 x float> zeroinitializer
  %i.ey = fadd fast <4 x float> %i.es, splat (float -1.000000e+00)
  %i.ez = select fast <4 x i1> %i.ew, <4 x float> %i.eu, <4 x float> %i.ev ; 2 uses
  %i.fa = fadd fast <4 x float> %i.ey, %i.ex      ; 12 uses
  %i.fb = fmul fast <4 x float> %i.fa, %i.fa      ; 2 uses
  %i.fc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fa, <4 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <4 x float> splat (float f0xBDEBD1B8))
  %i.fd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fc, <4 x float> nofpclass(nan inf) %i.fa, <4 x float> splat (float f0x3DEF251A))
  %i.fe = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fd, <4 x float> nofpclass(nan inf) %i.fa, <4 x float> splat (float f0xBDFE5D4F))
  %i.ff = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fe, <4 x float> nofpclass(nan inf) %i.fa, <4 x float> splat (float f0x3E11E9BF))
  %i.fg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ff, <4 x float> nofpclass(nan inf) %i.fa, <4 x float> splat (float f0xBE2AAE50))
  %i.fh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fg, <4 x float> nofpclass(nan inf) %i.fa, <4 x float> splat (float f0x3E4CCEAC))
  %i.fi = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fh, <4 x float> nofpclass(nan inf) %i.fa, <4 x float> splat (float f0xBE7FFFFC))
  %i.fj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fi, <4 x float> nofpclass(nan inf) %i.fa, <4 x float> splat (float f0x3EAAAAAA))
  %i.fk = fmul fast <4 x float> %i.fb, %i.fa
  %i.fl = fmul fast <4 x float> %i.fk, %i.fj
  %i.fm = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ez, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.fl)
  %i.fn = fneg fast <4 x float> %i.fb
  %i.fo = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.fn, <4 x float> splat (float 5.000000e-01), <4 x float> nofpclass(nan inf) %i.fm)
  %i.fp = fadd fast <4 x float> %i.fo, %i.fa
  %i.fq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ez, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.fp)
  %i.fr = fadd fast <4 x float> %i.fq, splat (float f0x3F317218)
  %i.fs = fcmp fast ule <4 x float> %i.de, splat (float f0x5F0AC723)
  %.v = select <4 x i1> %i.fs, <4 x float> %i.em, <4 x float> %i.fr
  %7 = bitcast <4 x float> %.v to <4 x i32>
  %i.ft = and <4 x i32> %i.dc, splat (i32 -2147483648)
  %i.fu = or <4 x i32> %i.ft, %7
  store <4 x i32> %i.fu, ptr %.131189, align 16, !tbaa !41
  %i.fv = getelementptr inbounds nuw i8, ptr %.131189, i64 16 ; 2 uses
  %i.fw = add nuw nsw i32 %.1190, 4               ; 3 uses
  %i.fx = or disjoint i32 %i.fw, 3
  %i.fy = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.fz = icmp slt i32 %i.fx, %i.fy
  br i1 %i.fz, label %.lr.ph191, label %.preheader, !llvm.loop !232

.lr.ph197:                                        ; preds = %.preheader, %.lr.ph197
  %.2196 = phi i32 [ %i.gd, %.lr.ph197 ], [ %.1.lcssa, %.preheader ]
  %.232195 = phi ptr [ %i.gc, %.lr.ph197 ], [ %.131.lcssa, %.preheader ] ; 3 uses
  %i.ga = load float, ptr %.232195, align 4, !tbaa !44
  %i.gb = call fast noundef nofpclass(nan inf) float @asinhf(float noundef nofpclass(nan inf) %i.ga) #20
  store float %i.gb, ptr %.232195, align 4, !tbaa !44
  %i.gc = getelementptr inbounds nuw i8, ptr %.232195, i64 4
  %i.gd = add nuw nsw i32 %.2196, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.gd, %i.da
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph197, !llvm.loop !233

._crit_edge:                                      ; preds = %.lr.ph197, %.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond207.not = icmp eq i32 %i.o, %lftr.wideiv
  br i1 %exitcond207.not, label %._crit_edge200, label %.noexc

._crit_edge200:                                   ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge200, %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare nofpclass(nan inf) float @asinhf(float noundef nofpclass(nan inf)) local_unnamed_addr #13

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL16unary_op_inplaceINS_23UnaryOp_x86_fma_functor13unary_op_coshEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !37     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

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
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !37
  %i.k = load i32, ptr %i.a, align 4, !tbaa !37   ; 2 uses
  %.not153 = icmp sgt i32 %i.k, %i.j
  br i1 %.not153, label %._crit_edge155, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  %i.o = add nsw i32 %i.j, 1
  %.pre = load i32, ptr %4, align 4, !tbaa !37
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %._crit_edge
  %i.p = phi i32 [ %.pre, %.noexc.lr.ph ], [ %i.cd, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !39, !noalias !241
  %i.r = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !241
  %i.s = mul i64 %i.r, %indvars.iv
  %i.t = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !241
  %i.u = mul i64 %i.s, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.u ; 2 uses
  %i.w = icmp sgt i32 %i.p, 7
  br i1 %i.w, label %.lr.ph, label %.preheader140

.preheader140:                                    ; preds = %.lr.ph, %.noexc
  %i.x = phi i32 [ %i.p, %.noexc ], [ %i.cb, %.lr.ph ] ; 2 uses
  %.030.lcssa = phi ptr [ %i.v, %.noexc ], [ %i.by, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.bz, %.lr.ph ] ; 3 uses
  %i.y = or disjoint i32 %.0.lcssa, 3
  %i.z = icmp slt i32 %i.y, %i.x
  br i1 %i.z, label %.lr.ph146, label %.preheader

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.0142 = phi i32 [ %i.bz, %.lr.ph ], [ 0, %.noexc ]
  %.030141 = phi ptr [ %i.by, %.lr.ph ], [ %i.v, %.noexc ] ; 3 uses
  %i.aa = load <8 x float>, ptr %.030141, align 1, !tbaa !41 ; 2 uses
  %i.ab = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.aa, <8 x float> splat (float f0x42B0C0A5))
  %i.ac = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ab, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ad = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ac, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.ae = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ad, i32 1) ; 2 uses
  %i.af = fcmp fast ogt <8 x float> %i.ae, %i.ad
  %i.ag = select <8 x i1> %i.af, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.ah = fsub fast <8 x float> %i.ae, %i.ag      ; 2 uses
  %i.ai = fneg fast <8 x float> %i.ah             ; 2 uses
  %i.aj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.ai, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.ac)
  %i.ak = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.ai, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.aj) ; 8 uses
  %i.al = fmul fast <8 x float> %i.ak, %i.ak
  %i.am = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ak, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.an = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.am, <8 x float> nofpclass(nan inf) %i.ak, <8 x float> splat (float f0x3C088908))
  %i.ao = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.an, <8 x float> nofpclass(nan inf) %i.ak, <8 x float> splat (float f0x3D2AA9C1))
  %i.ap = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ao, <8 x float> nofpclass(nan inf) %i.ak, <8 x float> splat (float f0x3E2AAAAA))
  %i.aq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ap, <8 x float> nofpclass(nan inf) %i.ak, <8 x float> splat (float 5.000000e-01))
  %i.ar = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aq, <8 x float> nofpclass(nan inf) %i.al, <8 x float> nofpclass(nan inf) %i.ak)
  %i.as = fadd fast <8 x float> %i.ar, splat (float 1.000000e+00)
  %i.at = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ah)
  %i.au = shl <8 x i32> %i.at, splat (i32 23)
  %i.av = add <8 x i32> %i.au, splat (i32 1065353216)
  %i.aw = bitcast <8 x i32> %i.av to <8 x float>
  %i.ax = fmul fast <8 x float> %i.as, %i.aw
  %i.ay = fneg fast <8 x float> %i.aa
  %i.az = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ay, <8 x float> splat (float f0x42B0C0A5))
  %i.ba = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.az, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.bb = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ba, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.bc = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.bb, i32 1) ; 2 uses
  %i.bd = fcmp fast ogt <8 x float> %i.bc, %i.bb
  %i.be = select <8 x i1> %i.bd, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.bf = fsub fast <8 x float> %i.bc, %i.be      ; 2 uses
  %i.bg = fneg fast <8 x float> %i.bf             ; 2 uses
  %i.bh = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.bg, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.ba)
  %i.bi = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.bg, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.bh) ; 8 uses
  %i.bj = fmul fast <8 x float> %i.bi, %i.bi
  %i.bk = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bi, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.bl = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bk, <8 x float> nofpclass(nan inf) %i.bi, <8 x float> splat (float f0x3C088908))
  %i.bm = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bl, <8 x float> nofpclass(nan inf) %i.bi, <8 x float> splat (float f0x3D2AA9C1))
  %i.bn = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bm, <8 x float> nofpclass(nan inf) %i.bi, <8 x float> splat (float f0x3E2AAAAA))
  %i.bo = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bn, <8 x float> nofpclass(nan inf) %i.bi, <8 x float> splat (float 5.000000e-01))
  %i.bp = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bo, <8 x float> nofpclass(nan inf) %i.bj, <8 x float> nofpclass(nan inf) %i.bi)
  %i.bq = fadd fast <8 x float> %i.bp, splat (float 1.000000e+00)
  %i.br = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.bf)
  %i.bs = shl <8 x i32> %i.br, splat (i32 23)
  %i.bt = add <8 x i32> %i.bs, splat (i32 1065353216)
  %i.bu = bitcast <8 x i32> %i.bt to <8 x float>
  %i.bv = fmul fast <8 x float> %i.bq, %i.bu
  %i.bw = fadd fast <8 x float> %i.bv, %i.ax
  %i.bx = fmul fast <8 x float> %i.bw, splat (float 5.000000e-01)
  store <8 x float> %i.bx, ptr %.030141, align 1, !tbaa !41
  %i.by = getelementptr inbounds nuw i8, ptr %.030141, i64 32 ; 2 uses
  %i.bz = add nuw nsw i32 %.0142, 8               ; 3 uses
  %i.ca = or disjoint i32 %i.bz, 7
  %i.cb = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.cc = icmp slt i32 %i.ca, %i.cb
  br i1 %i.cc, label %.lr.ph, label %.preheader140, !llvm.loop !237

.preheader:                                       ; preds = %.lr.ph146, %.preheader140
  %i.cd = phi i32 [ %i.x, %.preheader140 ], [ %i.ev, %.lr.ph146 ] ; 4 uses
  %.131.lcssa = phi ptr [ %.030.lcssa, %.preheader140 ], [ %i.es, %.lr.ph146 ] ; 3 uses
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader140 ], [ %i.et, %.lr.ph146 ] ; 4 uses
  %i.ce = icmp slt i32 %.1.lcssa, %i.cd
  br i1 %i.ce, label %.lr.ph152.preheader, label %._crit_edge

.lr.ph152.preheader:                              ; preds = %.preheader
  %i.cf = xor i32 %.1.lcssa, -1
  %i.cg = add i32 %i.cd, %i.cf                    ; 2 uses
  %i.ch = zext i32 %i.cg to i64
  %i.ci = add nuw nsw i64 %i.ch, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.cg, 7
  br i1 %min.iters.check, label %.lr.ph152.preheader181, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph152.preheader
  %n.vec = and i64 %i.ci, 8589934584              ; 4 uses
  %i.cj = trunc i64 %n.vec to i32
  %i.ck = add i32 %.1.lcssa, %i.cj
  %i.cl = shl nuw nsw i64 %n.vec, 2
  %i.cm = getelementptr i8, ptr %.131.lcssa, i64 %i.cl
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cn = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.131.lcssa, i64 %i.cn ; 2 uses
  %wide.load = load <8 x float>, ptr %next.gep, align 4, !tbaa !44
  %i.co = call fast <8 x float> @llvm.cosh.v8f32(<8 x float> %wide.load)
  store <8 x float> %i.co, ptr %next.gep, align 4, !tbaa !44
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cp = icmp eq i64 %index.next, %n.vec
  br i1 %i.cp, label %middle.block, label %vector.body, !llvm.loop !238

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ci, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph152.preheader181

.lr.ph152.preheader181:                           ; preds = %.lr.ph152.preheader, %middle.block
  %.2151.ph = phi i32 [ %.1.lcssa, %.lr.ph152.preheader ], [ %i.ck, %middle.block ]
  %.232150.ph = phi ptr [ %.131.lcssa, %.lr.ph152.preheader ], [ %i.cm, %middle.block ]
end_hunk_0
begin_hunk_1_@_ZN4ncnnL22unary_op_inplace_bf16sINS_23UnaryOp_x86_fma_functor13unary_op_sinhEEEiRNS_3MatERKNS_6OptionE.omp_outlined:bb.a
  br label %.lr.ph177

.lr.ph171:                                        ; preds = %.preheader165, %.lr.ph171
  %.1170 = phi i32 [ %i.hm, %.lr.ph171 ], [ %.0.lcssa, %.preheader165 ]
  %.131169 = phi ptr [ %i.hl, %.lr.ph171 ], [ %.030.lcssa, %.preheader165 ] ; 3 uses
  %i.ek = load i64, ptr %.131169, align 1, !tbaa !41
  %i.el = insertelement <2 x i64> poison, i64 %i.ek, i64 0
  %i.em = bitcast <2 x i64> %i.el to <8 x i16>
  %i.en = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.em, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.eo = bitcast <8 x i16> %i.en to <4 x float>  ; 8 uses
  %i.ep = fmul fast <4 x float> %i.eo, %i.eo      ; 2 uses
  %i.eq = fmul fast <4 x float> %i.eo, splat (float f0x3E2AAAAB) ; 2 uses
  %i.er = fadd fast <4 x float> %i.eq, splat (float 5.000000e-01)
  %i.es = fmul fast <4 x float> %i.ep, %i.er
  %i.et = fadd fast <4 x float> %i.es, %i.eo
  %i.eu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.eo, <4 x float> splat (float f0x42B0C0A5))
  %i.ev = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.eu, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ew = fmul fast <4 x float> %i.ev, splat (float f0x3FB8AA3B)
  %i.ex = fadd fast <4 x float> %i.ew, splat (float 5.000000e-01) ; 2 uses
  %i.ey = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ex)
  %i.ez = sitofp fast <4 x i32> %i.ey to <4 x float> ; 2 uses
  %i.fa = fcmp fast olt <4 x float> %i.ex, %i.ez
  %i.fb = select <4 x i1> %i.fa, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.fc = fsub fast <4 x float> %i.ez, %i.fb      ; 2 uses
  %i.fd = fneg fast <4 x float> %i.fc             ; 2 uses
  %i.fe = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.fd, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.ev)
  %i.ff = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.fd, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.fe) ; 8 uses
  %i.fg = fmul fast <4 x float> %i.ff, %i.ff
  %i.fh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ff, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.fi = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fh, <4 x float> nofpclass(nan inf) %i.ff, <4 x float> splat (float f0x3C088908))
  %i.fj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fi, <4 x float> nofpclass(nan inf) %i.ff, <4 x float> splat (float f0x3D2AA9C1))
  %i.fk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fj, <4 x float> nofpclass(nan inf) %i.ff, <4 x float> splat (float f0x3E2AAAAA))
  %i.fl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fk, <4 x float> nofpclass(nan inf) %i.ff, <4 x float> splat (float 5.000000e-01))
  %i.fm = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fl, <4 x float> nofpclass(nan inf) %i.fg, <4 x float> nofpclass(nan inf) %i.ff)
  %i.fn = fadd fast <4 x float> %i.fm, splat (float 1.000000e+00)
  %i.fo = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fc)
  %i.fp = shl <4 x i32> %i.fo, splat (i32 23)
  %i.fq = add <4 x i32> %i.fp, splat (i32 1065353216)
  %i.fr = bitcast <4 x i32> %i.fq to <4 x float>
  %i.fs = fmul fast <4 x float> %i.fn, %i.fr
  %i.ft = fadd fast <4 x float> %i.fs, splat (float -1.000000e+00)
  %i.fu = bitcast <8 x i16> %i.en to <4 x i32>
  %i.fv = and <4 x i32> %i.fu, splat (i32 2147418112)
  %i.fw = bitcast <4 x i32> %i.fv to <4 x float>
  %i.fx = fcmp fast uge <4 x float> %i.fw, splat (float f0x38D1B717)
  %.v = select <4 x i1> %i.fx, <4 x float> %i.ft, <4 x float> %i.et
  %i.fy = fneg fast <4 x float> %i.eo
  %i.fz = fsub fast <4 x float> splat (float 5.000000e-01), %i.eq
  %i.ga = fmul fast <4 x float> %i.ep, %i.fz
  %i.gb = fsub fast <4 x float> %i.ga, %i.eo
  %i.gc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.fy, <4 x float> splat (float f0x42B0C0A5))
  %i.gd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.gc, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ge = fmul fast <4 x float> %i.gd, splat (float f0x3FB8AA3B)
  %i.gf = fadd fast <4 x float> %i.ge, splat (float 5.000000e-01) ; 2 uses
  %i.gg = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.gf)
  %i.gh = sitofp fast <4 x i32> %i.gg to <4 x float> ; 2 uses
  %i.gi = fcmp fast olt <4 x float> %i.gf, %i.gh
  %i.gj = select <4 x i1> %i.gi, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.gk = fsub fast <4 x float> %i.gh, %i.gj      ; 2 uses
  %i.gl = fneg fast <4 x float> %i.gk             ; 2 uses
  %i.gm = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.gl, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.gd)
  %i.gn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.gl, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.gm) ; 8 uses
  %i.go = fmul fast <4 x float> %i.gn, %i.gn
  %i.gp = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gn, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.gq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gp, <4 x float> nofpclass(nan inf) %i.gn, <4 x float> splat (float f0x3C088908))
  %i.gr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gq, <4 x float> nofpclass(nan inf) %i.gn, <4 x float> splat (float f0x3D2AA9C1))
  %i.gs = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gr, <4 x float> nofpclass(nan inf) %i.gn, <4 x float> splat (float f0x3E2AAAAA))
  %i.gt = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gs, <4 x float> nofpclass(nan inf) %i.gn, <4 x float> splat (float 5.000000e-01))
  %i.gu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gt, <4 x float> nofpclass(nan inf) %i.go, <4 x float> nofpclass(nan inf) %i.gn)
  %i.gv = fadd fast <4 x float> %i.gu, splat (float 1.000000e+00)
  %i.gw = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.gk)
  %i.gx = shl <4 x i32> %i.gw, splat (i32 23)
  %i.gy = add <4 x i32> %i.gx, splat (i32 1065353216)
  %i.gz = bitcast <4 x i32> %i.gy to <4 x float>
  %i.ha = fmul fast <4 x float> %i.gv, %i.gz
  %i.hb = fadd fast <4 x float> %i.ha, splat (float -1.000000e+00)
  %i.hc = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.eo)
  %i.hd = fcmp fast uge <4 x float> %i.hc, splat (float f0x38D1B717)
  %.v162 = select <4 x i1> %i.hd, <4 x float> %i.hb, <4 x float> %i.gb
  %i.he = fsub fast <4 x float> %.v, %.v162
  %i.hf = fmul fast <4 x float> %i.he, splat (float 5.000000e-01)
  %i.hg = bitcast <4 x float> %i.hf to <4 x i32>
  %i.hh = lshr <4 x i32> %i.hg, splat (i32 16)
  %i.hi = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.hh, <4 x i32> poison)
  %i.hj = bitcast <8 x i16> %i.hi to <2 x i64>
  %i.hk = extractelement <2 x i64> %i.hj, i64 0
  store i64 %i.hk, ptr %.131169, align 1, !tbaa !41
  %i.hl = getelementptr inbounds nuw i8, ptr %.131169, i64 8 ; 2 uses
  %i.hm = add nuw nsw i32 %.1170, 4               ; 3 uses
  %i.hn = or disjoint i32 %i.hm, 3
  %i.ho = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.hp = icmp slt i32 %i.hn, %i.ho
  br i1 %i.hp, label %.lr.ph171, label %.preheader, !llvm.loop !439

.lr.ph177:                                        ; preds = %.lr.ph177.preheader, %.lr.ph177
  %.2176 = phi i32 [ %i.hz, %.lr.ph177 ], [ %.2176.ph, %.lr.ph177.preheader ]
  %.232175 = phi ptr [ %i.hy, %.lr.ph177 ], [ %.232175.ph, %.lr.ph177.preheader ] ; 3 uses
  %i.hq = load i16, ptr %.232175, align 2, !tbaa !51
  %i.hr = zext i16 %i.hq to i32
  %i.hs = shl nuw i32 %i.hr, 16
  %i.ht = bitcast i32 %i.hs to float
  %i.hu = call fast noundef nofpclass(nan inf) float @llvm.sinh.f32(float %i.ht)
  %i.hv = bitcast float %i.hu to i32
  %i.hw = lshr i32 %i.hv, 16
  %i.hx = trunc nuw i32 %i.hw to i16
  store i16 %i.hx, ptr %.232175, align 2, !tbaa !51
  %i.hy = getelementptr inbounds nuw i8, ptr %.232175, i64 2
  %i.hz = add nuw nsw i32 %.2176, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.hz, %i.dd
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph177, !llvm.loop !440

._crit_edge:                                      ; preds = %.lr.ph177, %middle.block, %vec.epilog.middle.block, %.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond187.not = icmp eq i32 %i.o, %lftr.wideiv
  br i1 %exitcond187.not, label %._crit_edge180, label %.noexc

._crit_edge180:                                   ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge180, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL22unary_op_inplace_bf16sINS_23UnaryOp_x86_fma_functor14unary_op_asinhEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !37     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

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
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !37
  %i.k = load i32, ptr %i.a, align 4, !tbaa !37   ; 2 uses
  %.not204 = icmp sgt i32 %i.k, %i.j
  br i1 %.not204, label %._crit_edge206, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  %i.o = add nsw i32 %i.j, 1
  %.pre = load i32, ptr %4, align 4, !tbaa !37
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %._crit_edge
  %i.p = phi i32 [ %.pre, %.noexc.lr.ph ], [ %i.dk, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !39, !noalias !447
  %i.r = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !447
  %i.s = mul i64 %i.r, %indvars.iv
  %i.t = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !447
  %i.u = mul i64 %i.s, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.u ; 2 uses
  %i.w = icmp sgt i32 %i.p, 7
  br i1 %i.w, label %.lr.ph, label %.preheader191

.preheader191:                                    ; preds = %.lr.ph, %.noexc
  %i.x = phi i32 [ %i.p, %.noexc ], [ %i.di, %.lr.ph ] ; 2 uses
  %.030.lcssa = phi ptr [ %i.v, %.noexc ], [ %i.df, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.dg, %.lr.ph ] ; 3 uses
  %i.y = or disjoint i32 %.0.lcssa, 3
  %i.z = icmp slt i32 %i.y, %i.x
  br i1 %i.z, label %.lr.ph197, label %.preheader

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.0193 = phi i32 [ %i.dg, %.lr.ph ], [ 0, %.noexc ]
  %.030192 = phi ptr [ %i.df, %.lr.ph ], [ %i.v, %.noexc ] ; 3 uses
  %i.aa = load <8 x i16>, ptr %.030192, align 1, !tbaa !41 ; 2 uses
  %i.ab = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aa, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ac = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.aa, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ad = shufflevector <8 x i16> %i.ab, <8 x i16> %i.ac, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.ae = bitcast <16 x i16> %i.ad to <8 x i32>
  %i.af = and <8 x i32> %i.ae, splat (i32 2147418112)
  %i.ag = bitcast <8 x i32> %i.af to <8 x float>  ; 5 uses
  %i.ah = fmul fast <8 x float> %i.ag, %i.ag
  %i.ai = fadd fast <8 x float> %i.ah, splat (float 1.000000e+00)
  %i.aj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.sqrt.v8f32(<8 x float> nofpclass(nan inf) %i.ai)
  %i.ak = fadd fast <8 x float> %i.aj, %i.ag
  %i.al = call <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.ak, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.am = bitcast <8 x float> %i.al to <8 x i32>
  %i.an = bitcast <8 x float> %i.al to <8 x i32>
  %i.ao = and <8 x i32> %i.an, splat (i32 8388607)
  %i.ap = or disjoint <8 x i32> %i.ao, splat (i32 1056964608)
  %i.aq = bitcast <8 x i32> %i.ap to <8 x float>  ; 3 uses
  %i.ar = lshr <8 x i32> %i.am, splat (i32 23)
  %i.as = add nsw <8 x i32> %i.ar, splat (i32 -127)
  %i.at = sitofp fast <8 x i32> %i.as to <8 x float> ; 2 uses
  %i.au = fadd fast <8 x float> %i.at, splat (float 1.000000e+00)
  %i.av = fcmp fast olt <8 x float> %i.aq, splat (float f0x3F3504F3) ; 2 uses
  %i.aw = select <8 x i1> %i.av, <8 x float> %i.aq, <8 x float> zeroinitializer
  %i.ax = fadd fast <8 x float> %i.aq, splat (float -1.000000e+00)
  %i.ay = select fast <8 x i1> %i.av, <8 x float> %i.at, <8 x float> %i.au ; 2 uses
  %i.az = fadd fast <8 x float> %i.ax, %i.aw      ; 12 uses
  %i.ba = fmul fast <8 x float> %i.az, %i.az      ; 2 uses
  %i.bb = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.az, <8 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <8 x float> splat (float f0xBDEBD1B8))
  %i.bc = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bb, <8 x float> nofpclass(nan inf) %i.az, <8 x float> splat (float f0x3DEF251A))
  %i.bd = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bc, <8 x float> nofpclass(nan inf) %i.az, <8 x float> splat (float f0xBDFE5D4F))
  %i.be = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bd, <8 x float> nofpclass(nan inf) %i.az, <8 x float> splat (float f0x3E11E9BF))
  %i.bf = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.be, <8 x float> nofpclass(nan inf) %i.az, <8 x float> splat (float f0xBE2AAE50))
  %i.bg = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bf, <8 x float> nofpclass(nan inf) %i.az, <8 x float> splat (float f0x3E4CCEAC))
  %i.bh = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bg, <8 x float> nofpclass(nan inf) %i.az, <8 x float> splat (float f0xBE7FFFFC))
  %i.bi = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bh, <8 x float> nofpclass(nan inf) %i.az, <8 x float> splat (float f0x3EAAAAAA))
  %i.bj = fmul fast <8 x float> %i.ba, %i.az
  %i.bk = fmul fast <8 x float> %i.bj, %i.bi
  %i.bl = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ay, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.bk)
  %i.bm = fneg fast <8 x float> %i.ba
  %i.bn = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.bm, <8 x float> splat (float 5.000000e-01), <8 x float> nofpclass(nan inf) %i.bl)
  %i.bo = fadd fast <8 x float> %i.bn, %i.az
  %i.bp = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ay, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.bo)
  %i.bq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ag, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.br = bitcast <8 x float> %i.bq to <8 x i32>
  %i.bs = bitcast <8 x float> %i.bq to <8 x i32>
  %i.bt = and <8 x i32> %i.bs, splat (i32 -2139095041)
  %i.bu = or disjoint <8 x i32> %i.bt, splat (i32 1056964608)
  %i.bv = bitcast <8 x i32> %i.bu to <8 x float>  ; 3 uses
  %i.bw = lshr <8 x i32> %i.br, splat (i32 23)
  %i.bx = add nsw <8 x i32> %i.bw, splat (i32 -127)
  %i.by = sitofp fast <8 x i32> %i.bx to <8 x float> ; 2 uses
  %i.bz = fadd fast <8 x float> %i.by, splat (float 1.000000e+00)
  %i.ca = fcmp fast olt <8 x float> %i.bv, splat (float f0x3F3504F3) ; 2 uses
  %i.cb = select <8 x i1> %i.ca, <8 x float> %i.bv, <8 x float> zeroinitializer
  %i.cc = fadd fast <8 x float> %i.bv, splat (float -1.000000e+00)
  %i.cd = select fast <8 x i1> %i.ca, <8 x float> %i.by, <8 x float> %i.bz ; 2 uses
  %i.ce = fadd fast <8 x float> %i.cc, %i.cb      ; 12 uses
  %i.cf = fmul fast <8 x float> %i.ce, %i.ce      ; 2 uses
  %i.cg = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ce, <8 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <8 x float> splat (float f0xBDEBD1B8))
  %i.ch = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.cg, <8 x float> nofpclass(nan inf) %i.ce, <8 x float> splat (float f0x3DEF251A))
  %i.ci = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ch, <8 x float> nofpclass(nan inf) %i.ce, <8 x float> splat (float f0xBDFE5D4F))
  %i.cj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ci, <8 x float> nofpclass(nan inf) %i.ce, <8 x float> splat (float f0x3E11E9BF))
  %i.ck = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.cj, <8 x float> nofpclass(nan inf) %i.ce, <8 x float> splat (float f0xBE2AAE50))
  %i.cl = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ck, <8 x float> nofpclass(nan inf) %i.ce, <8 x float> splat (float f0x3E4CCEAC))
  %i.cm = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.cl, <8 x float> nofpclass(nan inf) %i.ce, <8 x float> splat (float f0xBE7FFFFC))
  %i.cn = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.cm, <8 x float> nofpclass(nan inf) %i.ce, <8 x float> splat (float f0x3EAAAAAA))
  %i.co = fmul fast <8 x float> %i.cf, %i.ce
  %i.cp = fmul fast <8 x float> %i.co, %i.cn
  %i.cq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.cd, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.cp)
  %i.cr = fneg fast <8 x float> %i.cf
  %i.cs = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.cr, <8 x float> splat (float 5.000000e-01), <8 x float> nofpclass(nan inf) %i.cq)
  %i.ct = fadd fast <8 x float> %i.cs, %i.ce
  %i.cu = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.cd, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.ct)
  %i.cv = fadd fast <8 x float> %i.cu, splat (float f0x3F317218)
  %i.cw = fcmp fast ule <8 x float> %i.ag, splat (float f0x5F0AC723)
  %.v190 = select <8 x i1> %i.cw, <8 x float> %i.bp, <8 x float> %i.cv
  %6 = bitcast <8 x float> %.v190 to <8 x i32>
  %i.cx = bitcast <16 x i16> %i.ad to <8 x i32>
  %i.cy = and <8 x i32> %i.cx, splat (i32 -2147483648)
  %i.cz = or <8 x i32> %i.cy, %6                  ; 2 uses
  %i.da = shufflevector <8 x i32> %i.cz, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.db = shufflevector <8 x i32> %i.cz, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.dc = lshr <4 x i32> %i.da, splat (i32 16)
  %i.dd = lshr <4 x i32> %i.db, splat (i32 16)
  %i.de = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.dc, <4 x i32> %i.dd)
  store <8 x i16> %i.de, ptr %.030192, align 1, !tbaa !41
  %i.df = getelementptr inbounds nuw i8, ptr %.030192, i64 16 ; 2 uses
  %i.dg = add nuw nsw i32 %.0193, 8               ; 3 uses
  %i.dh = or disjoint i32 %i.dg, 7
  %i.di = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.dj = icmp slt i32 %i.dh, %i.di
  br i1 %i.dj, label %.lr.ph, label %.preheader191, !llvm.loop !444

.preheader:                                       ; preds = %.lr.ph197, %.preheader191
  %i.dk = phi i32 [ %i.x, %.preheader191 ], [ %i.gr, %.lr.ph197 ] ; 3 uses
  %.131.lcssa = phi ptr [ %.030.lcssa, %.preheader191 ], [ %i.go, %.lr.ph197 ]
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader191 ], [ %i.gp, %.lr.ph197 ] ; 2 uses
  %i.dl = icmp slt i32 %.1.lcssa, %i.dk
  br i1 %i.dl, label %.lr.ph203, label %._crit_edge

.lr.ph197:                                        ; preds = %.preheader191, %.lr.ph197
  %.1196 = phi i32 [ %i.gp, %.lr.ph197 ], [ %.0.lcssa, %.preheader191 ]
  %.131195 = phi ptr [ %i.go, %.lr.ph197 ], [ %.030.lcssa, %.preheader191 ] ; 3 uses
  %i.dm = load i64, ptr %.131195, align 1, !tbaa !41
  %i.dn = insertelement <2 x i64> poison, i64 %i.dm, i64 0
  %i.do = bitcast <2 x i64> %i.dn to <8 x i16>
  %i.dp = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.do, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.dq = bitcast <8 x i16> %i.dp to <4 x i32>
  %i.dr = and <4 x i32> %i.dq, splat (i32 2147418112)
  %i.ds = bitcast <4 x i32> %i.dr to <4 x float>  ; 5 uses
  %i.dt = fmul fast <4 x float> %i.ds, %i.ds
  %i.du = fadd fast <4 x float> %i.dt, splat (float 1.000000e+00)
  %i.dv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.sqrt.v4f32(<4 x float> nofpclass(nan inf) %i.du)
  %i.dw = fadd fast <4 x float> %i.dv, %i.ds
  %i.dx = call <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.dw, <4 x float> splat (float f0x00800000))
  %i.dy = bitcast <4 x float> %i.dx to <4 x i32>  ; 2 uses
  %i.dz = lshr <4 x i32> %i.dy, splat (i32 23)
  %i.ea = and <4 x i32> %i.dy, splat (i32 8388607)
  %i.eb = or disjoint <4 x i32> %i.ea, splat (i32 1056964608)
  %i.ec = bitcast <4 x i32> %i.eb to <4 x float>  ; 3 uses
  %i.ed = add nsw <4 x i32> %i.dz, splat (i32 -127)
  %i.ee = sitofp fast <4 x i32> %i.ed to <4 x float> ; 2 uses
  %i.ef = fadd fast <4 x float> %i.ee, splat (float 1.000000e+00)
  %i.eg = fcmp fast olt <4 x float> %i.ec, splat (float f0x3F3504F3) ; 2 uses
  %i.eh = select <4 x i1> %i.eg, <4 x float> %i.ec, <4 x float> zeroinitializer
  %i.ei = fadd fast <4 x float> %i.ec, splat (float -1.000000e+00)
  %i.ej = select fast <4 x i1> %i.eg, <4 x float> %i.ee, <4 x float> %i.ef ; 2 uses
  %i.ek = fadd fast <4 x float> %i.ei, %i.eh      ; 12 uses
  %i.el = fmul fast <4 x float> %i.ek, %i.ek      ; 2 uses
  %i.em = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ek, <4 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <4 x float> splat (float f0xBDEBD1B8))
  %i.en = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.em, <4 x float> nofpclass(nan inf) %i.ek, <4 x float> splat (float f0x3DEF251A))
  %i.eo = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.en, <4 x float> nofpclass(nan inf) %i.ek, <4 x float> splat (float f0xBDFE5D4F))
  %i.ep = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.eo, <4 x float> nofpclass(nan inf) %i.ek, <4 x float> splat (float f0x3E11E9BF))
  %i.eq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ep, <4 x float> nofpclass(nan inf) %i.ek, <4 x float> splat (float f0xBE2AAE50))
  %i.er = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.eq, <4 x float> nofpclass(nan inf) %i.ek, <4 x float> splat (float f0x3E4CCEAC))
  %i.es = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.er, <4 x float> nofpclass(nan inf) %i.ek, <4 x float> splat (float f0xBE7FFFFC))
  %i.et = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.es, <4 x float> nofpclass(nan inf) %i.ek, <4 x float> splat (float f0x3EAAAAAA))
  %i.eu = fmul fast <4 x float> %i.el, %i.ek
  %i.ev = fmul fast <4 x float> %i.eu, %i.et
  %i.ew = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ej, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.ev)
  %i.ex = fneg fast <4 x float> %i.el
  %i.ey = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.ex, <4 x float> splat (float 5.000000e-01), <4 x float> nofpclass(nan inf) %i.ew)
  %i.ez = fadd fast <4 x float> %i.ey, %i.ek
  %i.fa = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ej, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.ez)
  %i.fb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ds, <4 x float> splat (float f0x00800000))
  %i.fc = bitcast <4 x float> %i.fb to <4 x i32>  ; 2 uses
  %i.fd = lshr <4 x i32> %i.fc, splat (i32 23)
  %i.fe = and <4 x i32> %i.fc, splat (i32 -2139095041)
  %i.ff = or disjoint <4 x i32> %i.fe, splat (i32 1056964608)
  %i.fg = bitcast <4 x i32> %i.ff to <4 x float>  ; 3 uses
  %i.fh = add nsw <4 x i32> %i.fd, splat (i32 -127)
  %i.fi = sitofp fast <4 x i32> %i.fh to <4 x float> ; 2 uses
  %i.fj = fadd fast <4 x float> %i.fi, splat (float 1.000000e+00)
  %i.fk = fcmp fast olt <4 x float> %i.fg, splat (float f0x3F3504F3) ; 2 uses
  %i.fl = select <4 x i1> %i.fk, <4 x float> %i.fg, <4 x float> zeroinitializer
  %i.fm = fadd fast <4 x float> %i.fg, splat (float -1.000000e+00)
  %i.fn = select fast <4 x i1> %i.fk, <4 x float> %i.fi, <4 x float> %i.fj ; 2 uses
  %i.fo = fadd fast <4 x float> %i.fm, %i.fl      ; 12 uses
  %i.fp = fmul fast <4 x float> %i.fo, %i.fo      ; 2 uses
  %i.fq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fo, <4 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <4 x float> splat (float f0xBDEBD1B8))
  %i.fr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fq, <4 x float> nofpclass(nan inf) %i.fo, <4 x float> splat (float f0x3DEF251A))
  %i.fs = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fr, <4 x float> nofpclass(nan inf) %i.fo, <4 x float> splat (float f0xBDFE5D4F))
  %i.ft = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fs, <4 x float> nofpclass(nan inf) %i.fo, <4 x float> splat (float f0x3E11E9BF))
  %i.fu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ft, <4 x float> nofpclass(nan inf) %i.fo, <4 x float> splat (float f0xBE2AAE50))
  %i.fv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fu, <4 x float> nofpclass(nan inf) %i.fo, <4 x float> splat (float f0x3E4CCEAC))
  %i.fw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fv, <4 x float> nofpclass(nan inf) %i.fo, <4 x float> splat (float f0xBE7FFFFC))
  %i.fx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fw, <4 x float> nofpclass(nan inf) %i.fo, <4 x float> splat (float f0x3EAAAAAA))
  %i.fy = fmul fast <4 x float> %i.fp, %i.fo
  %i.fz = fmul fast <4 x float> %i.fy, %i.fx
  %i.ga = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fn, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.fz)
  %i.gb = fneg fast <4 x float> %i.fp
  %i.gc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.gb, <4 x float> splat (float 5.000000e-01), <4 x float> nofpclass(nan inf) %i.ga)
  %i.gd = fadd fast <4 x float> %i.gc, %i.fo
  %i.ge = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fn, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.gd)
  %i.gf = fadd fast <4 x float> %i.ge, splat (float f0x3F317218)
  %i.gg = fcmp fast ule <4 x float> %i.ds, splat (float f0x5F0AC723)
  %.v = select <4 x i1> %i.gg, <4 x float> %i.fa, <4 x float> %i.gf
  %7 = bitcast <4 x float> %.v to <4 x i32>
  %i.gh = bitcast <8 x i16> %i.dp to <4 x i32>
  %i.gi = and <4 x i32> %i.gh, splat (i32 -2147483648)
  %i.gj = or <4 x i32> %i.gi, %7
  %i.gk = lshr <4 x i32> %i.gj, splat (i32 16)
  %i.gl = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.gk, <4 x i32> poison)
  %i.gm = bitcast <8 x i16> %i.gl to <2 x i64>
  %i.gn = extractelement <2 x i64> %i.gm, i64 0
  store i64 %i.gn, ptr %.131195, align 1, !tbaa !41
  %i.go = getelementptr inbounds nuw i8, ptr %.131195, i64 8 ; 2 uses
  %i.gp = add nuw nsw i32 %.1196, 4               ; 3 uses
  %i.gq = or disjoint i32 %i.gp, 3
  %i.gr = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.gs = icmp slt i32 %i.gq, %i.gr
  br i1 %i.gs, label %.lr.ph197, label %.preheader, !llvm.loop !445

.lr.ph203:                                        ; preds = %.preheader, %.lr.ph203
  %.2202 = phi i32 [ %i.hc, %.lr.ph203 ], [ %.1.lcssa, %.preheader ]
  %.232201 = phi ptr [ %i.hb, %.lr.ph203 ], [ %.131.lcssa, %.preheader ] ; 3 uses
  %i.gt = load i16, ptr %.232201, align 2, !tbaa !51
  %i.gu = zext i16 %i.gt to i32
  %i.gv = shl nuw i32 %i.gu, 16
  %i.gw = bitcast i32 %i.gv to float
  %i.gx = call fast noundef nofpclass(nan inf) float @asinhf(float noundef nofpclass(nan inf) %i.gw) #20
  %i.gy = bitcast float %i.gx to i32
  %i.gz = lshr i32 %i.gy, 16
  %i.ha = trunc nuw i32 %i.gz to i16
  store i16 %i.ha, ptr %.232201, align 2, !tbaa !51
  %i.hb = getelementptr inbounds nuw i8, ptr %.232201, i64 2
  %i.hc = add nuw nsw i32 %.2202, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.hc, %i.dk
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph203, !llvm.loop !446

._crit_edge:                                      ; preds = %.lr.ph203, %.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond213.not = icmp eq i32 %i.o, %lftr.wideiv
  br i1 %exitcond213.not, label %._crit_edge206, label %.noexc

._crit_edge206:                                   ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge206, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL22unary_op_inplace_bf16sINS_23UnaryOp_x86_fma_functor13unary_op_coshEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !37     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

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
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !37
  %i.k = load i32, ptr %i.a, align 4, !tbaa !37   ; 2 uses
  %.not159 = icmp sgt i32 %i.k, %i.j
  br i1 %.not159, label %._crit_edge161, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  %i.o = add nsw i32 %i.j, 1
  %.pre = load i32, ptr %4, align 4, !tbaa !37
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %._crit_edge
  %i.p = phi i32 [ %.pre, %.noexc.lr.ph ], [ %i.cn, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !39, !noalias !455
  %i.r = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !455
  %i.s = mul i64 %i.r, %indvars.iv
  %i.t = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !455
  %i.u = mul i64 %i.s, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.u ; 2 uses
  %i.w = icmp sgt i32 %i.p, 7
  br i1 %i.w, label %.lr.ph, label %.preheader146

.preheader146:                                    ; preds = %.lr.ph, %.noexc
  %i.x = phi i32 [ %i.p, %.noexc ], [ %i.cl, %.lr.ph ] ; 2 uses
  %.030.lcssa = phi ptr [ %i.v, %.noexc ], [ %i.ci, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.cj, %.lr.ph ] ; 3 uses
  %i.y = or disjoint i32 %.0.lcssa, 3
  %i.z = icmp slt i32 %i.y, %i.x
  br i1 %i.z, label %.lr.ph152, label %.preheader

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.0148 = phi i32 [ %i.cj, %.lr.ph ], [ 0, %.noexc ]
  %.030147 = phi ptr [ %i.ci, %.lr.ph ], [ %i.v, %.noexc ] ; 3 uses
  %i.aa = load <8 x i16>, ptr %.030147, align 1, !tbaa !41 ; 2 uses
  %i.ab = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aa, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ac = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.aa, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ad = shufflevector <8 x i16> %i.ab, <8 x i16> %i.ac, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ae = bitcast <16 x i16> %i.ad to <8 x float> ; 2 uses
  %i.af = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ae, <8 x float> splat (float f0x42B0C0A5))
  %i.ag = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.af, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ah = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ag, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.ai = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ah, i32 1) ; 2 uses
  %i.aj = fcmp fast ogt <8 x float> %i.ai, %i.ah
  %i.ak = select <8 x i1> %i.aj, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.al = fsub fast <8 x float> %i.ai, %i.ak      ; 2 uses
  %i.am = fneg fast <8 x float> %i.al             ; 2 uses
  %i.an = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.am, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.ag)
  %i.ao = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.am, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.an) ; 8 uses
  %i.ap = fmul fast <8 x float> %i.ao, %i.ao
  %i.aq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ao, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.ar = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aq, <8 x float> nofpclass(nan inf) %i.ao, <8 x float> splat (float f0x3C088908))
  %i.as = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ar, <8 x float> nofpclass(nan inf) %i.ao, <8 x float> splat (float f0x3D2AA9C1))
  %i.at = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.as, <8 x float> nofpclass(nan inf) %i.ao, <8 x float> splat (float f0x3E2AAAAA))
  %i.au = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.at, <8 x float> nofpclass(nan inf) %i.ao, <8 x float> splat (float 5.000000e-01))
  %i.av = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.au, <8 x float> nofpclass(nan inf) %i.ap, <8 x float> nofpclass(nan inf) %i.ao)
  %i.aw = fadd fast <8 x float> %i.av, splat (float 1.000000e+00)
  %i.ax = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.al)
  %i.ay = shl <8 x i32> %i.ax, splat (i32 23)
  %i.az = add <8 x i32> %i.ay, splat (i32 1065353216)
  %i.ba = bitcast <8 x i32> %i.az to <8 x float>
  %i.bb = fmul fast <8 x float> %i.aw, %i.ba
  %i.bc = fneg fast <8 x float> %i.ae
  %i.bd = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.bc, <8 x float> splat (float f0x42B0C0A5))
  %i.be = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.bd, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.bf = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.be, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.bg = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.bf, i32 1) ; 2 uses
  %i.bh = fcmp fast ogt <8 x float> %i.bg, %i.bf
  %i.bi = select <8 x i1> %i.bh, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.bj = fsub fast <8 x float> %i.bg, %i.bi      ; 2 uses
  %i.bk = fneg fast <8 x float> %i.bj             ; 2 uses
  %i.bl = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.bk, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.be)
  %i.bm = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.bk, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.bl) ; 8 uses
  %i.bn = fmul fast <8 x float> %i.bm, %i.bm
  %i.bo = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bm, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.bp = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bo, <8 x float> nofpclass(nan inf) %i.bm, <8 x float> splat (float f0x3C088908))
  %i.bq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bp, <8 x float> nofpclass(nan inf) %i.bm, <8 x float> splat (float f0x3D2AA9C1))
  %i.br = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bq, <8 x float> nofpclass(nan inf) %i.bm, <8 x float> splat (float f0x3E2AAAAA))
  %i.bs = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.br, <8 x float> nofpclass(nan inf) %i.bm, <8 x float> splat (float 5.000000e-01))
  %i.bt = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bs, <8 x float> nofpclass(nan inf) %i.bn, <8 x float> nofpclass(nan inf) %i.bm)
  %i.bu = fadd fast <8 x float> %i.bt, splat (float 1.000000e+00)
  %i.bv = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.bj)
  %i.bw = shl <8 x i32> %i.bv, splat (i32 23)
  %i.bx = add <8 x i32> %i.bw, splat (i32 1065353216)
  %i.by = bitcast <8 x i32> %i.bx to <8 x float>
  %i.bz = fmul fast <8 x float> %i.bu, %i.by
  %i.ca = fadd fast <8 x float> %i.bz, %i.bb
  %i.cb = fmul fast <8 x float> %i.ca, splat (float 5.000000e-01)
  %i.cc = bitcast <8 x float> %i.cb to <8 x i32>  ; 2 uses
  %i.cd = shufflevector <8 x i32> %i.cc, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ce = shufflevector <8 x i32> %i.cc, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.cf = lshr <4 x i32> %i.cd, splat (i32 16)
  %i.cg = lshr <4 x i32> %i.ce, splat (i32 16)
  %i.ch = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.cf, <4 x i32> %i.cg)
  store <8 x i16> %i.ch, ptr %.030147, align 1, !tbaa !41
  %i.ci = getelementptr inbounds nuw i8, ptr %.030147, i64 16 ; 2 uses
  %i.cj = add nuw nsw i32 %.0148, 8               ; 3 uses
  %i.ck = or disjoint i32 %i.cj, 7
  %i.cl = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.cm = icmp slt i32 %i.ck, %i.cl
  br i1 %i.cm, label %.lr.ph, label %.preheader146, !llvm.loop !450

.preheader:                                       ; preds = %.lr.ph152, %.preheader146
  %i.cn = phi i32 [ %i.x, %.preheader146 ], [ %i.gi, %.lr.ph152 ] ; 4 uses
  %.131.lcssa = phi ptr [ %.030.lcssa, %.preheader146 ], [ %i.gf, %.lr.ph152 ] ; 5 uses
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader146 ], [ %i.gg, %.lr.ph152 ] ; 5 uses
  %i.co = icmp slt i32 %.1.lcssa, %i.cn
  br i1 %i.co, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.preheader
  %i.cp = xor i32 %.1.lcssa, -1
  %i.cq = add i32 %i.cn, %i.cp                    ; 3 uses
  %i.cr = zext i32 %i.cq to i64
  %i.cs = add nuw nsw i64 %i.cr, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.cq, 3
  br i1 %min.iters.check, label %.lr.ph158.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check186 = icmp ult i32 %i.cq, 15
  br i1 %min.iters.check186, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ct = and i64 %i.cs, 12
  %n.vec = and i64 %i.cs, 8589934576              ; 5 uses
  %i.cu = trunc i64 %n.vec to i32
  %i.cv = add i32 %.1.lcssa, %i.cu
end_hunk_1
