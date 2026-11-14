Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/unaryop_x86_avx?download=true
inline.NumInlined: 57
inline.NumDeleted: 57
begin_hunk_0_@_ZN4ncnnL16unary_op_inplaceINS_23UnaryOp_x86_avx_functor14unary_op_acoshEEEiRNS_3MatERKNS_6OptionE.omp_outlined:bb.a
  %.131.lcssa = phi ptr [ %.030.lcssa, %.preheader197 ], [ %i.gl, %.lr.ph203 ]
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader197 ], [ %i.gm, %.lr.ph203 ] ; 2 uses
  %i.dj = icmp slt i32 %.1.lcssa, %i.di
  br i1 %i.dj, label %.lr.ph209, label %._crit_edge

.lr.ph203:                                        ; preds = %.preheader197, %.lr.ph203
  %.1202 = phi i32 [ %i.gm, %.lr.ph203 ], [ %.0.lcssa, %.preheader197 ]
  %.131201 = phi ptr [ %i.gl, %.lr.ph203 ], [ %.030.lcssa, %.preheader197 ] ; 3 uses
  %i.dk = load <4 x float>, ptr %.131201, align 16, !tbaa !41 ; 5 uses
  %i.dl = fadd fast <4 x float> %i.dk, splat (float -1.000000e+00)
  %i.dm = fadd fast <4 x float> %i.dk, splat (float 1.000000e+00)
  %i.dn = fmul fast <4 x float> %i.dl, %i.dm
  %i.do = call fast <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.dn)
  %i.dp = fadd fast <4 x float> %i.do, %i.dk      ; 2 uses
  %i.dq = fcmp fast ole <4 x float> %i.dp, zeroinitializer
  %i.dr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dp, <4 x float> splat (float f0x00800000))
  %i.ds = bitcast <4 x float> %i.dr to <4 x i32>  ; 2 uses
  %i.dt = lshr <4 x i32> %i.ds, splat (i32 23)
  %i.du = and <4 x i32> %i.ds, splat (i32 -2139095041)
  %i.dv = or disjoint <4 x i32> %i.du, splat (i32 1056964608)
  %i.dw = bitcast <4 x i32> %i.dv to <4 x float>  ; 3 uses
  %i.dx = add nsw <4 x i32> %i.dt, splat (i32 -127)
  %i.dy = sitofp fast <4 x i32> %i.dx to <4 x float> ; 2 uses
  %i.dz = fadd fast <4 x float> %i.dy, splat (float 1.000000e+00)
  %i.ea = fcmp fast olt <4 x float> %i.dw, splat (float f0x3F3504F3) ; 2 uses
  %i.eb = select <4 x i1> %i.ea, <4 x float> %i.dw, <4 x float> zeroinitializer
  %i.ec = fadd fast <4 x float> %i.dw, splat (float -1.000000e+00)
  %i.ed = select fast <4 x i1> %i.ea, <4 x float> %i.dy, <4 x float> %i.dz
  %i.ee = fadd fast <4 x float> %i.ec, %i.eb      ; 12 uses
  %i.ef = fmul fast <4 x float> %i.ee, %i.ee
  %i.eg = fmul fast <4 x float> %i.ee, splat (float f0x3D9021BB)
  %i.eh = fadd fast <4 x float> %i.eg, splat (float f0xBDEBD1B8)
  %i.ei = fmul fast <4 x float> %i.eh, %i.ee
  %i.ej = fadd fast <4 x float> %i.ei, splat (float f0x3DEF251A)
  %i.ek = fmul fast <4 x float> %i.ej, %i.ee
  %i.el = fadd fast <4 x float> %i.ek, splat (float f0xBDFE5D4F)
  %i.em = fmul fast <4 x float> %i.el, %i.ee
  %i.en = fadd fast <4 x float> %i.em, splat (float f0x3E11E9BF)
  %i.eo = fmul fast <4 x float> %i.en, %i.ee
  %i.ep = fadd fast <4 x float> %i.eo, splat (float f0xBE2AAE50)
  %i.eq = fmul fast <4 x float> %i.ep, %i.ee
  %i.er = fadd fast <4 x float> %i.eq, splat (float f0x3E4CCEAC)
  %i.es = fmul fast <4 x float> %i.er, %i.ee
  %i.et = fadd fast <4 x float> %i.es, splat (float f0xBE7FFFFC)
  %i.eu = fmul fast <4 x float> %i.et, %i.ee
  %i.ev = fadd fast <4 x float> %i.eu, splat (float f0x3EAAAAAA)
  %i.ew = fmul fast <4 x float> %i.ev, %i.ee
  %reass.mul = fmul fast <4 x float> %i.ed, splat (float f0x3F317218)
  %reass.add185 = fadd fast <4 x float> %i.ew, splat (float -5.000000e-01)
  %reass.mul186 = fmul fast <4 x float> %i.ef, %reass.add185
  %i.ex = fadd fast <4 x float> %reass.mul, %i.ee
  %i.ey = fadd fast <4 x float> %i.ex, %reass.mul186
  %i.ez = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dk, <4 x float> splat (float f0x00800000))
  %i.fa = bitcast <4 x float> %i.ez to <4 x i32>  ; 2 uses
  %i.fb = lshr <4 x i32> %i.fa, splat (i32 23)
  %i.fc = and <4 x i32> %i.fa, splat (i32 -2139095041)
  %i.fd = or disjoint <4 x i32> %i.fc, splat (i32 1056964608)
  %i.fe = bitcast <4 x i32> %i.fd to <4 x float>  ; 3 uses
  %i.ff = add nsw <4 x i32> %i.fb, splat (i32 -127)
  %i.fg = sitofp fast <4 x i32> %i.ff to <4 x float> ; 2 uses
  %i.fh = fadd fast <4 x float> %i.fg, splat (float 1.000000e+00)
  %i.fi = fcmp fast olt <4 x float> %i.fe, splat (float f0x3F3504F3) ; 2 uses
  %i.fj = select <4 x i1> %i.fi, <4 x float> %i.fe, <4 x float> zeroinitializer
  %i.fk = fadd fast <4 x float> %i.fe, splat (float -1.000000e+00)
  %i.fl = select fast <4 x i1> %i.fi, <4 x float> %i.fg, <4 x float> %i.fh
  %i.fm = fadd fast <4 x float> %i.fk, %i.fj      ; 12 uses
  %i.fn = fmul fast <4 x float> %i.fm, %i.fm
  %i.fo = fmul fast <4 x float> %i.fm, splat (float f0x3D9021BB)
  %i.fp = fadd fast <4 x float> %i.fo, splat (float f0xBDEBD1B8)
  %i.fq = fmul fast <4 x float> %i.fp, %i.fm
  %i.fr = fadd fast <4 x float> %i.fq, splat (float f0x3DEF251A)
  %i.fs = fmul fast <4 x float> %i.fr, %i.fm
  %i.ft = fadd fast <4 x float> %i.fs, splat (float f0xBDFE5D4F)
  %i.fu = fmul fast <4 x float> %i.ft, %i.fm
  %i.fv = fadd fast <4 x float> %i.fu, splat (float f0x3E11E9BF)
  %i.fw = fmul fast <4 x float> %i.fv, %i.fm
  %i.fx = fadd fast <4 x float> %i.fw, splat (float f0xBE2AAE50)
  %i.fy = fmul fast <4 x float> %i.fx, %i.fm
  %i.fz = fadd fast <4 x float> %i.fy, splat (float f0x3E4CCEAC)
  %i.ga = fmul fast <4 x float> %i.fz, %i.fm
  %i.gb = fadd fast <4 x float> %i.ga, splat (float f0xBE7FFFFC)
  %i.gc = fmul fast <4 x float> %i.gb, %i.fm
  %i.gd = fadd fast <4 x float> %i.gc, splat (float f0x3EAAAAAA)
  %i.ge = fmul fast <4 x float> %i.gd, %i.fm
  %reass.mul184 = fmul fast <4 x float> %i.fl, splat (float f0x3F317218)
  %reass.add187 = fadd fast <4 x float> %i.ge, splat (float -5.000000e-01)
  %reass.mul188 = fmul fast <4 x float> %i.fn, %reass.add187
  %i.gf = fadd fast <4 x float> %i.fm, splat (float f0x3F317218)
  %i.gg = fadd fast <4 x float> %i.gf, %reass.mul184
  %i.gh = fadd fast <4 x float> %i.gg, %reass.mul188
  %i.gi = fcmp fast ule <4 x float> %i.dk, splat (float f0x5F0AC723)
  %i.gj = select <4 x i1> %i.dq, <4 x float> splat (float -nan(0x3FFFFF)), <4 x float> %i.ey
  %i.gk = select <4 x i1> %i.gi, <4 x float> %i.gj, <4 x float> %i.gh
  store <4 x float> %i.gk, ptr %.131201, align 16, !tbaa !41
  %i.gl = getelementptr inbounds nuw i8, ptr %.131201, i64 16 ; 2 uses
  %i.gm = add nuw nsw i32 %.1202, 4               ; 3 uses
  %i.gn = or disjoint i32 %i.gm, 3
  %i.go = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.gp = icmp slt i32 %i.gn, %i.go
  br i1 %i.gp, label %.lr.ph203, label %.preheader, !llvm.loop !245

.lr.ph209:                                        ; preds = %.preheader, %.lr.ph209
  %.2208 = phi i32 [ %i.gt, %.lr.ph209 ], [ %.1.lcssa, %.preheader ]
  %.232207 = phi ptr [ %i.gs, %.lr.ph209 ], [ %.131.lcssa, %.preheader ] ; 3 uses
  %i.gq = load float, ptr %.232207, align 4, !tbaa !44
  %i.gr = call fast noundef nofpclass(nan inf) float @acoshf(float noundef nofpclass(nan inf) %i.gq) #20
  store float %i.gr, ptr %.232207, align 4, !tbaa !44
  %i.gs = getelementptr inbounds nuw i8, ptr %.232207, i64 4
  %i.gt = add nuw nsw i32 %.2208, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.gt, %i.di
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph209, !llvm.loop !246

._crit_edge:                                      ; preds = %.lr.ph209, %.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond219.not = icmp eq i32 %i.o, %lftr.wideiv
  br i1 %exitcond219.not, label %._crit_edge212, label %.noexc

._crit_edge212:                                   ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge212, %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare nofpclass(nan inf) float @acoshf(float noundef nofpclass(nan inf)) local_unnamed_addr #14

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL16unary_op_inplaceINS_23UnaryOp_x86_avx_functor14unary_op_atanhEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #7 personality ptr @__gxx_personality_v0 {
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
  %.not240 = icmp sgt i32 %i.k, %i.j
  br i1 %.not240, label %._crit_edge242, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  %i.o = add nsw i32 %i.j, 1
  %.pre = load i32, ptr %4, align 4, !tbaa !37
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %._crit_edge
  %i.p = phi i32 [ %.pre, %.noexc.lr.ph ], [ %i.do, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !39, !noalias !253
  %i.r = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !253
  %i.s = mul i64 %i.r, %indvars.iv
  %i.t = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !253
  %i.u = mul i64 %i.s, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.u ; 2 uses
  %i.w = icmp sgt i32 %i.p, 7
  br i1 %i.w, label %.lr.ph, label %.preheader227

.preheader227:                                    ; preds = %.lr.ph, %.noexc
  %i.x = phi i32 [ %i.p, %.noexc ], [ %i.dm, %.lr.ph ] ; 2 uses
  %.030.lcssa = phi ptr [ %i.v, %.noexc ], [ %i.dj, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.dk, %.lr.ph ] ; 3 uses
  %i.y = or disjoint i32 %.0.lcssa, 3
  %i.z = icmp slt i32 %i.y, %i.x
  br i1 %i.z, label %.lr.ph233, label %.preheader

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.0229 = phi i32 [ %i.dk, %.lr.ph ], [ 0, %.noexc ]
  %.030228 = phi ptr [ %i.dj, %.lr.ph ], [ %i.v, %.noexc ] ; 3 uses
  %i.aa = load <8 x float>, ptr %.030228, align 1, !tbaa !41 ; 8 uses
  %i.ab = fmul fast <8 x float> %i.aa, %i.aa      ; 2 uses
  %i.ac = fmul fast <8 x float> %i.aa, splat (float f0x3EAAAAAB) ; 2 uses
  %i.ad = fadd fast <8 x float> %i.ac, splat (float -5.000000e-01)
  %i.ae = fmul fast <8 x float> %i.ab, %i.ad
  %i.af = fadd fast <8 x float> %i.ae, %i.aa
  %i.ag = fadd fast <8 x float> %i.aa, splat (float 1.000000e+00) ; 2 uses
  %6 = fcmp fast ole <8 x float> %i.ag, zeroinitializer
  %i.ah = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ag, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.ai = bitcast <8 x float> %i.ah to <8 x i32>
  %i.aj = bitcast <8 x float> %i.ah to <8 x i32>
  %i.ak = and <8 x i32> %i.aj, splat (i32 -2139095041)
  %i.al = or disjoint <8 x i32> %i.ak, splat (i32 1056964608)
  %i.am = bitcast <8 x i32> %i.al to <8 x float>  ; 3 uses
  %i.an = lshr <8 x i32> %i.ai, splat (i32 23)
  %i.ao = add nsw <8 x i32> %i.an, splat (i32 -127)
  %i.ap = sitofp fast <8 x i32> %i.ao to <8 x float> ; 2 uses
  %i.aq = fadd fast <8 x float> %i.ap, splat (float 1.000000e+00)
  %i.ar = fcmp fast olt <8 x float> %i.am, splat (float f0x3F3504F3) ; 2 uses
  %i.as = select <8 x i1> %i.ar, <8 x float> %i.am, <8 x float> zeroinitializer
  %i.at = fadd fast <8 x float> %i.am, splat (float -1.000000e+00)
  %i.au = select fast <8 x i1> %i.ar, <8 x float> %i.ap, <8 x float> %i.aq
  %i.av = fadd fast <8 x float> %i.at, %i.as      ; 12 uses
  %i.aw = fmul fast <8 x float> %i.av, %i.av
  %i.ax = fmul fast <8 x float> %i.av, splat (float f0x3D9021BB)
  %i.ay = fadd fast <8 x float> %i.ax, splat (float f0xBDEBD1B8)
  %i.az = fmul fast <8 x float> %i.ay, %i.av
  %i.ba = fadd fast <8 x float> %i.az, splat (float f0x3DEF251A)
  %i.bb = fmul fast <8 x float> %i.ba, %i.av
  %i.bc = fadd fast <8 x float> %i.bb, splat (float f0xBDFE5D4F)
  %i.bd = fmul fast <8 x float> %i.bc, %i.av
  %i.be = fadd fast <8 x float> %i.bd, splat (float f0x3E11E9BF)
  %i.bf = fmul fast <8 x float> %i.be, %i.av
  %i.bg = fadd fast <8 x float> %i.bf, splat (float f0xBE2AAE50)
  %i.bh = fmul fast <8 x float> %i.bg, %i.av
  %i.bi = fadd fast <8 x float> %i.bh, splat (float f0x3E4CCEAC)
  %i.bj = fmul fast <8 x float> %i.bi, %i.av
  %i.bk = fadd fast <8 x float> %i.bj, splat (float f0xBE7FFFFC)
  %i.bl = fmul fast <8 x float> %i.bk, %i.av
  %i.bm = fadd fast <8 x float> %i.bl, splat (float f0x3EAAAAAA)
  %i.bn = fmul fast <8 x float> %i.bm, %i.av
  %reass.mul219 = fmul fast <8 x float> %i.au, splat (float f0x3F317218)
  %reass.add223 = fadd fast <8 x float> %i.bn, splat (float -5.000000e-01)
  %reass.mul224 = fmul fast <8 x float> %i.aw, %reass.add223
  %i.bo = fadd fast <8 x float> %reass.mul219, %i.av
  %i.bp = fadd fast <8 x float> %i.bo, %reass.mul224
  %i.bq = call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.aa)
  %i.br = fcmp fast uge <8 x float> %i.bq, splat (float f0x38D1B717) ; 2 uses
  %7 = select <8 x i1> %6, <8 x float> splat (float -nan(0x3FFFFF)), <8 x float> %i.bp
  %i.bs = select <8 x i1> %i.br, <8 x float> %7, <8 x float> %i.af
  %i.bt = fsub fast <8 x float> splat (float -5.000000e-01), %i.ac
  %i.bu = fmul fast <8 x float> %i.ab, %i.bt
  %i.bv = fsub fast <8 x float> %i.bu, %i.aa
  %i.bw = fsub fast <8 x float> splat (float 1.000000e+00), %i.aa ; 2 uses
  %8 = fcmp fast ole <8 x float> %i.bw, zeroinitializer
  %i.bx = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.bw, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.by = bitcast <8 x float> %i.bx to <8 x i32>
  %i.bz = bitcast <8 x float> %i.bx to <8 x i32>
  %i.ca = and <8 x i32> %i.bz, splat (i32 -2139095041)
  %i.cb = or disjoint <8 x i32> %i.ca, splat (i32 1056964608)
  %i.cc = bitcast <8 x i32> %i.cb to <8 x float>  ; 3 uses
  %i.cd = lshr <8 x i32> %i.by, splat (i32 23)
  %i.ce = add nsw <8 x i32> %i.cd, splat (i32 -127)
  %i.cf = sitofp fast <8 x i32> %i.ce to <8 x float> ; 2 uses
  %i.cg = fadd fast <8 x float> %i.cf, splat (float 1.000000e+00)
  %i.ch = fcmp fast olt <8 x float> %i.cc, splat (float f0x3F3504F3) ; 2 uses
  %i.ci = select <8 x i1> %i.ch, <8 x float> %i.cc, <8 x float> zeroinitializer
  %i.cj = fadd fast <8 x float> %i.cc, splat (float -1.000000e+00)
  %i.ck = select fast <8 x i1> %i.ch, <8 x float> %i.cf, <8 x float> %i.cg
  %i.cl = fadd fast <8 x float> %i.cj, %i.ci      ; 12 uses
  %i.cm = fmul fast <8 x float> %i.cl, %i.cl
  %i.cn = fmul fast <8 x float> %i.cl, splat (float f0x3D9021BB)
  %i.co = fadd fast <8 x float> %i.cn, splat (float f0xBDEBD1B8)
  %i.cp = fmul fast <8 x float> %i.co, %i.cl
  %i.cq = fadd fast <8 x float> %i.cp, splat (float f0x3DEF251A)
  %i.cr = fmul fast <8 x float> %i.cq, %i.cl
  %i.cs = fadd fast <8 x float> %i.cr, splat (float f0xBDFE5D4F)
  %i.ct = fmul fast <8 x float> %i.cs, %i.cl
  %i.cu = fadd fast <8 x float> %i.ct, splat (float f0x3E11E9BF)
  %i.cv = fmul fast <8 x float> %i.cu, %i.cl
  %i.cw = fadd fast <8 x float> %i.cv, splat (float f0xBE2AAE50)
  %i.cx = fmul fast <8 x float> %i.cw, %i.cl
  %i.cy = fadd fast <8 x float> %i.cx, splat (float f0x3E4CCEAC)
  %i.cz = fmul fast <8 x float> %i.cy, %i.cl
  %i.da = fadd fast <8 x float> %i.cz, splat (float f0xBE7FFFFC)
  %i.db = fmul fast <8 x float> %i.da, %i.cl
  %i.dc = fadd fast <8 x float> %i.db, splat (float f0x3EAAAAAA)
  %i.dd = fmul fast <8 x float> %i.dc, %i.cl
  %reass.mul222 = fmul fast <8 x float> %i.ck, splat (float f0x3F317218)
  %reass.add225 = fadd fast <8 x float> %i.dd, splat (float -5.000000e-01)
  %reass.mul226 = fmul fast <8 x float> %i.cm, %reass.add225
  %i.de = fadd fast <8 x float> %reass.mul222, %i.cl
  %i.df = fadd fast <8 x float> %i.de, %reass.mul226
  %9 = select <8 x i1> %8, <8 x float> splat (float -nan(0x3FFFFF)), <8 x float> %i.df
  %i.dg = select <8 x i1> %i.br, <8 x float> %9, <8 x float> %i.bv
  %i.dh = fsub fast <8 x float> %i.bs, %i.dg
  %i.di = fmul fast <8 x float> %i.dh, splat (float 5.000000e-01)
  store <8 x float> %i.di, ptr %.030228, align 1, !tbaa !41
  %i.dj = getelementptr inbounds nuw i8, ptr %.030228, i64 32 ; 2 uses
  %i.dk = add nuw nsw i32 %.0229, 8               ; 3 uses
  %i.dl = or disjoint i32 %i.dk, 7
  %i.dm = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.dn = icmp slt i32 %i.dl, %i.dm
  br i1 %i.dn, label %.lr.ph, label %.preheader227, !llvm.loop !250

.preheader:                                       ; preds = %.lr.ph233, %.preheader227
  %i.do = phi i32 [ %i.x, %.preheader227 ], [ %i.ha, %.lr.ph233 ] ; 3 uses
  %.131.lcssa = phi ptr [ %.030.lcssa, %.preheader227 ], [ %i.gx, %.lr.ph233 ]
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader227 ], [ %i.gy, %.lr.ph233 ] ; 2 uses
  %i.dp = icmp slt i32 %.1.lcssa, %i.do
  br i1 %i.dp, label %.lr.ph239, label %._crit_edge

.lr.ph233:                                        ; preds = %.preheader227, %.lr.ph233
  %.1232 = phi i32 [ %i.gy, %.lr.ph233 ], [ %.0.lcssa, %.preheader227 ]
  %.131231 = phi ptr [ %i.gx, %.lr.ph233 ], [ %.030.lcssa, %.preheader227 ] ; 3 uses
  %i.dq = load <4 x float>, ptr %.131231, align 16, !tbaa !41 ; 8 uses
  %i.dr = fmul fast <4 x float> %i.dq, %i.dq      ; 2 uses
  %i.ds = fmul fast <4 x float> %i.dq, splat (float f0x3EAAAAAB) ; 2 uses
  %i.dt = fadd fast <4 x float> %i.ds, splat (float -5.000000e-01)
  %i.du = fmul fast <4 x float> %i.dr, %i.dt
  %i.dv = fadd fast <4 x float> %i.du, %i.dq
  %i.dw = fadd fast <4 x float> %i.dq, splat (float 1.000000e+00) ; 2 uses
  %10 = fcmp fast ole <4 x float> %i.dw, zeroinitializer
  %i.dx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dw, <4 x float> splat (float f0x00800000))
  %i.dy = bitcast <4 x float> %i.dx to <4 x i32>  ; 2 uses
  %i.dz = lshr <4 x i32> %i.dy, splat (i32 23)
  %i.ea = and <4 x i32> %i.dy, splat (i32 -2139095041)
  %i.eb = or disjoint <4 x i32> %i.ea, splat (i32 1056964608)
  %i.ec = bitcast <4 x i32> %i.eb to <4 x float>  ; 3 uses
  %i.ed = add nsw <4 x i32> %i.dz, splat (i32 -127)
  %i.ee = sitofp fast <4 x i32> %i.ed to <4 x float> ; 2 uses
  %i.ef = fadd fast <4 x float> %i.ee, splat (float 1.000000e+00)
  %i.eg = fcmp fast olt <4 x float> %i.ec, splat (float f0x3F3504F3) ; 2 uses
  %i.eh = select <4 x i1> %i.eg, <4 x float> %i.ec, <4 x float> zeroinitializer
  %i.ei = fadd fast <4 x float> %i.ec, splat (float -1.000000e+00)
  %i.ej = select fast <4 x i1> %i.eg, <4 x float> %i.ee, <4 x float> %i.ef
  %i.ek = fadd fast <4 x float> %i.ei, %i.eh      ; 12 uses
  %i.el = fmul fast <4 x float> %i.ek, %i.ek
  %i.em = fmul fast <4 x float> %i.ek, splat (float f0x3D9021BB)
  %i.en = fadd fast <4 x float> %i.em, splat (float f0xBDEBD1B8)
  %i.eo = fmul fast <4 x float> %i.en, %i.ek
  %i.ep = fadd fast <4 x float> %i.eo, splat (float f0x3DEF251A)
  %i.eq = fmul fast <4 x float> %i.ep, %i.ek
  %i.er = fadd fast <4 x float> %i.eq, splat (float f0xBDFE5D4F)
  %i.es = fmul fast <4 x float> %i.er, %i.ek
  %i.et = fadd fast <4 x float> %i.es, splat (float f0x3E11E9BF)
  %i.eu = fmul fast <4 x float> %i.et, %i.ek
  %i.ev = fadd fast <4 x float> %i.eu, splat (float f0xBE2AAE50)
  %i.ew = fmul fast <4 x float> %i.ev, %i.ek
  %i.ex = fadd fast <4 x float> %i.ew, splat (float f0x3E4CCEAC)
  %i.ey = fmul fast <4 x float> %i.ex, %i.ek
  %i.ez = fadd fast <4 x float> %i.ey, splat (float f0xBE7FFFFC)
  %i.fa = fmul fast <4 x float> %i.ez, %i.ek
  %i.fb = fadd fast <4 x float> %i.fa, splat (float f0x3EAAAAAA)
  %i.fc = fmul fast <4 x float> %i.fb, %i.ek
  %reass.mul = fmul fast <4 x float> %i.ej, splat (float f0x3F317218)
  %reass.add215 = fadd fast <4 x float> %i.fc, splat (float -5.000000e-01)
  %reass.mul216 = fmul fast <4 x float> %i.el, %reass.add215
  %i.fd = fadd fast <4 x float> %reass.mul, %i.ek
  %i.fe = fadd fast <4 x float> %i.fd, %reass.mul216
  %i.ff = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.dq)
  %i.fg = fcmp fast uge <4 x float> %i.ff, splat (float f0x38D1B717) ; 2 uses
  %11 = select <4 x i1> %10, <4 x float> splat (float -nan(0x3FFFFF)), <4 x float> %i.fe
  %i.fh = select <4 x i1> %i.fg, <4 x float> %11, <4 x float> %i.dv
  %i.fi = fsub fast <4 x float> splat (float -5.000000e-01), %i.ds
  %i.fj = fmul fast <4 x float> %i.dr, %i.fi
  %i.fk = fsub fast <4 x float> %i.fj, %i.dq
  %i.fl = fsub fast <4 x float> splat (float 1.000000e+00), %i.dq ; 2 uses
  %12 = fcmp fast ole <4 x float> %i.fl, zeroinitializer
  %i.fm = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.fl, <4 x float> splat (float f0x00800000))
  %i.fn = bitcast <4 x float> %i.fm to <4 x i32>  ; 2 uses
  %i.fo = lshr <4 x i32> %i.fn, splat (i32 23)
  %i.fp = and <4 x i32> %i.fn, splat (i32 -2139095041)
  %i.fq = or disjoint <4 x i32> %i.fp, splat (i32 1056964608)
  %i.fr = bitcast <4 x i32> %i.fq to <4 x float>  ; 3 uses
  %i.fs = add nsw <4 x i32> %i.fo, splat (i32 -127)
  %i.ft = sitofp fast <4 x i32> %i.fs to <4 x float> ; 2 uses
  %i.fu = fadd fast <4 x float> %i.ft, splat (float 1.000000e+00)
  %i.fv = fcmp fast olt <4 x float> %i.fr, splat (float f0x3F3504F3) ; 2 uses
  %i.fw = select <4 x i1> %i.fv, <4 x float> %i.fr, <4 x float> zeroinitializer
  %i.fx = fadd fast <4 x float> %i.fr, splat (float -1.000000e+00)
  %i.fy = select fast <4 x i1> %i.fv, <4 x float> %i.ft, <4 x float> %i.fu
  %i.fz = fadd fast <4 x float> %i.fx, %i.fw      ; 12 uses
  %i.ga = fmul fast <4 x float> %i.fz, %i.fz
  %i.gb = fmul fast <4 x float> %i.fz, splat (float f0x3D9021BB)
  %i.gc = fadd fast <4 x float> %i.gb, splat (float f0xBDEBD1B8)
  %i.gd = fmul fast <4 x float> %i.gc, %i.fz
  %i.ge = fadd fast <4 x float> %i.gd, splat (float f0x3DEF251A)
  %i.gf = fmul fast <4 x float> %i.ge, %i.fz
  %i.gg = fadd fast <4 x float> %i.gf, splat (float f0xBDFE5D4F)
  %i.gh = fmul fast <4 x float> %i.gg, %i.fz
  %i.gi = fadd fast <4 x float> %i.gh, splat (float f0x3E11E9BF)
  %i.gj = fmul fast <4 x float> %i.gi, %i.fz
  %i.gk = fadd fast <4 x float> %i.gj, splat (float f0xBE2AAE50)
  %i.gl = fmul fast <4 x float> %i.gk, %i.fz
  %i.gm = fadd fast <4 x float> %i.gl, splat (float f0x3E4CCEAC)
  %i.gn = fmul fast <4 x float> %i.gm, %i.fz
  %i.go = fadd fast <4 x float> %i.gn, splat (float f0xBE7FFFFC)
  %i.gp = fmul fast <4 x float> %i.go, %i.fz
  %i.gq = fadd fast <4 x float> %i.gp, splat (float f0x3EAAAAAA)
  %i.gr = fmul fast <4 x float> %i.gq, %i.fz
  %reass.mul214 = fmul fast <4 x float> %i.fy, splat (float f0x3F317218)
  %reass.add217 = fadd fast <4 x float> %i.gr, splat (float -5.000000e-01)
  %reass.mul218 = fmul fast <4 x float> %i.ga, %reass.add217
  %i.gs = fadd fast <4 x float> %reass.mul214, %i.fz
  %i.gt = fadd fast <4 x float> %i.gs, %reass.mul218
  %13 = select <4 x i1> %12, <4 x float> splat (float -nan(0x3FFFFF)), <4 x float> %i.gt
  %i.gu = select <4 x i1> %i.fg, <4 x float> %13, <4 x float> %i.fk
  %i.gv = fsub fast <4 x float> %i.fh, %i.gu
  %i.gw = fmul fast <4 x float> %i.gv, splat (float 5.000000e-01)
  store <4 x float> %i.gw, ptr %.131231, align 16, !tbaa !41
  %i.gx = getelementptr inbounds nuw i8, ptr %.131231, i64 16 ; 2 uses
  %i.gy = add nuw nsw i32 %.1232, 4               ; 3 uses
  %i.gz = or disjoint i32 %i.gy, 3
  %i.ha = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.hb = icmp slt i32 %i.gz, %i.ha
  br i1 %i.hb, label %.lr.ph233, label %.preheader, !llvm.loop !251

.lr.ph239:                                        ; preds = %.preheader, %.lr.ph239
  %.2238 = phi i32 [ %i.hf, %.lr.ph239 ], [ %.1.lcssa, %.preheader ]
  %.232237 = phi ptr [ %i.he, %.lr.ph239 ], [ %.131.lcssa, %.preheader ] ; 3 uses
  %i.hc = load float, ptr %.232237, align 4, !tbaa !44
  %i.hd = call fast noundef nofpclass(nan inf) float @atanhf(float noundef nofpclass(nan inf) %i.hc) #20
  store float %i.hd, ptr %.232237, align 4, !tbaa !44
  %i.he = getelementptr inbounds nuw i8, ptr %.232237, i64 4
  %i.hf = add nuw nsw i32 %.2238, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.hf, %i.do
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph239, !llvm.loop !252

._crit_edge:                                      ; preds = %.lr.ph239, %.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond249.not = icmp eq i32 %i.o, %lftr.wideiv
  br i1 %exitcond249.not, label %._crit_edge242, label %.noexc

._crit_edge242:                                   ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge242, %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare nofpclass(nan inf) float @atanhf(float noundef nofpclass(nan inf)) local_unnamed_addr #15

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL16unary_op_inplaceINS_23UnaryOp_x86_avx_functor14unary_op_log1pEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #7 personality ptr @__gxx_personality_v0 {
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
  %.not135 = icmp sgt i32 %i.k, %i.j
  br i1 %.not135, label %._crit_edge137, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  %i.o = add nsw i32 %i.j, 1
  %.pre = load i32, ptr %4, align 4, !tbaa !37
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %._crit_edge
  %i.p = phi i32 [ %.pre, %.noexc.lr.ph ], [ %i.ca, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !39, !noalias !259
  %i.r = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !259
  %i.s = mul i64 %i.r, %indvars.iv
  %i.t = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !259
  %i.u = mul i64 %i.s, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.u ; 2 uses
  %i.w = icmp sgt i32 %i.p, 7
  br i1 %i.w, label %.lr.ph, label %.preheader122

.preheader122:                                    ; preds = %.lr.ph, %.noexc
  %i.x = phi i32 [ %i.p, %.noexc ], [ %i.by, %.lr.ph ] ; 2 uses
  %.030.lcssa = phi ptr [ %i.v, %.noexc ], [ %i.bv, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.bw, %.lr.ph ] ; 3 uses
  %i.y = or disjoint i32 %.0.lcssa, 3
  %i.z = icmp slt i32 %i.y, %i.x
  br i1 %i.z, label %.lr.ph128, label %.preheader

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.0124 = phi i32 [ %i.bw, %.lr.ph ], [ 0, %.noexc ]
  %.030123 = phi ptr [ %i.bv, %.lr.ph ], [ %i.v, %.noexc ] ; 3 uses
  %i.aa = load <8 x float>, ptr %.030123, align 1, !tbaa !41 ; 6 uses
  %i.ab = fmul fast <8 x float> %i.aa, %i.aa
  %i.ac = fmul fast <8 x float> %i.aa, splat (float f0x3EAAAAAB)
  %i.ad = fadd fast <8 x float> %i.ac, splat (float -5.000000e-01)
  %i.ae = fmul fast <8 x float> %i.ab, %i.ad
  %i.af = fadd fast <8 x float> %i.ae, %i.aa
  %i.ag = fadd fast <8 x float> %i.aa, splat (float 1.000000e+00) ; 2 uses
  %i.ah = fcmp fast ole <8 x float> %i.ag, zeroinitializer
  %i.ai = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ag, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.aj = bitcast <8 x float> %i.ai to <8 x i32>
  %i.ak = bitcast <8 x float> %i.ai to <8 x i32>
  %i.al = and <8 x i32> %i.ak, splat (i32 -2139095041)
  %i.am = or disjoint <8 x i32> %i.al, splat (i32 1056964608)
  %i.an = bitcast <8 x i32> %i.am to <8 x float>  ; 3 uses
  %i.ao = lshr <8 x i32> %i.aj, splat (i32 23)
  %i.ap = add nsw <8 x i32> %i.ao, splat (i32 -127)
  %i.aq = sitofp fast <8 x i32> %i.ap to <8 x float> ; 2 uses
  %i.ar = fadd fast <8 x float> %i.aq, splat (float 1.000000e+00)
  %i.as = fcmp fast olt <8 x float> %i.an, splat (float f0x3F3504F3) ; 2 uses
  %i.at = select <8 x i1> %i.as, <8 x float> %i.an, <8 x float> zeroinitializer
  %i.au = fadd fast <8 x float> %i.an, splat (float -1.000000e+00)
  %i.av = select fast <8 x i1> %i.as, <8 x float> %i.aq, <8 x float> %i.ar
  %i.aw = fadd fast <8 x float> %i.au, %i.at      ; 12 uses
  %i.ax = fmul fast <8 x float> %i.aw, %i.aw
  %i.ay = fmul fast <8 x float> %i.aw, splat (float f0x3D9021BB)
  %i.az = fadd fast <8 x float> %i.ay, splat (float f0xBDEBD1B8)
  %i.ba = fmul fast <8 x float> %i.az, %i.aw
  %i.bb = fadd fast <8 x float> %i.ba, splat (float f0x3DEF251A)
  %i.bc = fmul fast <8 x float> %i.bb, %i.aw
  %i.bd = fadd fast <8 x float> %i.bc, splat (float f0xBDFE5D4F)
  %i.be = fmul fast <8 x float> %i.bd, %i.aw
  %i.bf = fadd fast <8 x float> %i.be, splat (float f0x3E11E9BF)
  %i.bg = fmul fast <8 x float> %i.bf, %i.aw
  %i.bh = fadd fast <8 x float> %i.bg, splat (float f0xBE2AAE50)
  %i.bi = fmul fast <8 x float> %i.bh, %i.aw
  %i.bj = fadd fast <8 x float> %i.bi, splat (float f0x3E4CCEAC)
  %i.bk = fmul fast <8 x float> %i.bj, %i.aw
  %i.bl = fadd fast <8 x float> %i.bk, splat (float f0xBE7FFFFC)
  %i.bm = fmul fast <8 x float> %i.bl, %i.aw
  %i.bn = fadd fast <8 x float> %i.bm, splat (float f0x3EAAAAAA)
  %i.bo = fmul fast <8 x float> %i.bn, %i.aw
  %reass.mul119 = fmul fast <8 x float> %i.av, splat (float f0x3F317218)
  %reass.add120 = fadd fast <8 x float> %i.bo, splat (float -5.000000e-01)
  %reass.mul121 = fmul fast <8 x float> %i.ax, %reass.add120
  %i.bp = fadd fast <8 x float> %reass.mul119, %i.aw
  %i.bq = fadd fast <8 x float> %i.bp, %reass.mul121
  %i.br = call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.aa)
  %i.bs = fcmp fast uge <8 x float> %i.br, splat (float f0x38D1B717)
  %i.bt = select <8 x i1> %i.ah, <8 x float> splat (float -nan(0x3FFFFF)), <8 x float> %i.bq
  %i.bu = select <8 x i1> %i.bs, <8 x float> %i.bt, <8 x float> %i.af
  store <8 x float> %i.bu, ptr %.030123, align 1, !tbaa !41
  %i.bv = getelementptr inbounds nuw i8, ptr %.030123, i64 32 ; 2 uses
  %i.bw = add nuw nsw i32 %.0124, 8               ; 3 uses
  %i.bx = or disjoint i32 %i.bw, 7
  %i.by = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.bz = icmp slt i32 %i.bx, %i.by
  br i1 %i.bz, label %.lr.ph, label %.preheader122, !llvm.loop !256

.preheader:                                       ; preds = %.lr.ph128, %.preheader122
  %i.ca = phi i32 [ %i.x, %.preheader122 ], [ %i.dz, %.lr.ph128 ] ; 3 uses
  %.131.lcssa = phi ptr [ %.030.lcssa, %.preheader122 ], [ %i.dw, %.lr.ph128 ]
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader122 ], [ %i.dx, %.lr.ph128 ] ; 2 uses
  %i.cb = icmp slt i32 %.1.lcssa, %i.ca
  br i1 %i.cb, label %.lr.ph134, label %._crit_edge

.lr.ph128:                                        ; preds = %.preheader122, %.lr.ph128
  %.1127 = phi i32 [ %i.dx, %.lr.ph128 ], [ %.0.lcssa, %.preheader122 ]
  %.131126 = phi ptr [ %i.dw, %.lr.ph128 ], [ %.030.lcssa, %.preheader122 ] ; 3 uses
  %i.cc = load <4 x float>, ptr %.131126, align 16, !tbaa !41 ; 6 uses
  %i.cd = fmul fast <4 x float> %i.cc, %i.cc
  %i.ce = fmul fast <4 x float> %i.cc, splat (float f0x3EAAAAAB)
  %i.cf = fadd fast <4 x float> %i.ce, splat (float -5.000000e-01)
  %i.cg = fmul fast <4 x float> %i.cd, %i.cf
  %i.ch = fadd fast <4 x float> %i.cg, %i.cc
  %i.ci = fadd fast <4 x float> %i.cc, splat (float 1.000000e+00) ; 2 uses
  %i.cj = fcmp fast ole <4 x float> %i.ci, zeroinitializer
  %i.ck = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ci, <4 x float> splat (float f0x00800000))
  %i.cl = bitcast <4 x float> %i.ck to <4 x i32>  ; 2 uses
  %i.cm = lshr <4 x i32> %i.cl, splat (i32 23)
  %i.cn = and <4 x i32> %i.cl, splat (i32 -2139095041)
  %i.co = or disjoint <4 x i32> %i.cn, splat (i32 1056964608)
  %i.cp = bitcast <4 x i32> %i.co to <4 x float>  ; 3 uses
  %i.cq = add nsw <4 x i32> %i.cm, splat (i32 -127)
  %i.cr = sitofp fast <4 x i32> %i.cq to <4 x float> ; 2 uses
  %i.cs = fadd fast <4 x float> %i.cr, splat (float 1.000000e+00)
  %i.ct = fcmp fast olt <4 x float> %i.cp, splat (float f0x3F3504F3) ; 2 uses
  %i.cu = select <4 x i1> %i.ct, <4 x float> %i.cp, <4 x float> zeroinitializer
  %i.cv = fadd fast <4 x float> %i.cp, splat (float -1.000000e+00)
  %i.cw = select fast <4 x i1> %i.ct, <4 x float> %i.cr, <4 x float> %i.cs
  %i.cx = fadd fast <4 x float> %i.cv, %i.cu      ; 12 uses
  %i.cy = fmul fast <4 x float> %i.cx, %i.cx
  %i.cz = fmul fast <4 x float> %i.cx, splat (float f0x3D9021BB)
  %i.da = fadd fast <4 x float> %i.cz, splat (float f0xBDEBD1B8)
  %i.db = fmul fast <4 x float> %i.da, %i.cx
  %i.dc = fadd fast <4 x float> %i.db, splat (float f0x3DEF251A)
  %i.dd = fmul fast <4 x float> %i.dc, %i.cx
  %i.de = fadd fast <4 x float> %i.dd, splat (float f0xBDFE5D4F)
end_hunk_0
begin_hunk_1_@_ZN4ncnnL22unary_op_inplace_bf16sINS_23UnaryOp_x86_avx_functor13unary_op_ceilEEEiRNS_3MatERKNS_6OptionE.omp_outlined:bb.a
  %next.gep91 = getelementptr i8, ptr %.131.lcssa, i64 %i.bp ; 2 uses
  %wide.load92 = load <4 x i16>, ptr %next.gep91, align 2, !tbaa !51
  %i.bq = zext <4 x i16> %wide.load92 to <4 x i32>
  %i.br = shl nuw <4 x i32> %i.bq, splat (i32 16)
  %i.bs = bitcast <4 x i32> %i.br to <4 x float>
  %i.bt = call fast <4 x float> @llvm.ceil.v4f32(<4 x float> %i.bs)
  %i.bu = bitcast <4 x float> %i.bt to <4 x i32>
  %i.bv = lshr <4 x i32> %i.bu, splat (i32 16)
  %i.bw = trunc nuw <4 x i32> %i.bv to <4 x i16>
  store <4 x i16> %i.bw, ptr %next.gep91, align 2, !tbaa !51
  %index.next93 = add nuw i64 %index90, 4         ; 2 uses
  %i.bx = icmp eq i64 %index.next93, %n.vec89
  br i1 %i.bx, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !288

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n94 = icmp eq i64 %i.aw, %n.vec89
  br i1 %cmp.n94, label %._crit_edge, label %.lr.ph60.preheader

.lr.ph60.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.259.ph = phi i32 [ %.1.lcssa, %iter.check ], [ %i.az, %vec.epilog.iter.check ], [ %i.bm, %vec.epilog.middle.block ]
  %.23258.ph = phi ptr [ %.131.lcssa, %iter.check ], [ %i.bb, %vec.epilog.iter.check ], [ %i.bo, %vec.epilog.middle.block ]
  br label %.lr.ph60

.lr.ph54:                                         ; preds = %.preheader48, %.lr.ph54
  %.153 = phi i32 [ %i.ck, %.lr.ph54 ], [ %.0.lcssa, %.preheader48 ]
  %.13152 = phi ptr [ %i.cj, %.lr.ph54 ], [ %.030.lcssa, %.preheader48 ] ; 3 uses
  %i.by = load i64, ptr %.13152, align 1, !tbaa !41
  %i.bz = insertelement <2 x i64> poison, i64 %i.by, i64 0
  %i.ca = bitcast <2 x i64> %i.bz to <8 x i16>
  %i.cb = shufflevector <8 x i16> %i.ca, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.cc = bitcast <8 x i16> %i.cb to <4 x float>
  %i.cd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse41.round.ps(<4 x float> %i.cc, i32 2)
  %i.ce = bitcast <4 x float> %i.cd to <4 x i32>
  %i.cf = lshr <4 x i32> %i.ce, splat (i32 16)
  %i.cg = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.cf, <4 x i32> poison)
  %i.ch = bitcast <8 x i16> %i.cg to <2 x i64>
  %i.ci = extractelement <2 x i64> %i.ch, i64 0
  store i64 %i.ci, ptr %.13152, align 1, !tbaa !41
  %i.cj = getelementptr inbounds nuw i8, ptr %.13152, i64 8 ; 2 uses
  %i.ck = add nuw nsw i32 %.153, 4                ; 3 uses
  %i.cl = or disjoint i32 %i.ck, 3
  %i.cm = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.cn = icmp slt i32 %i.cl, %i.cm
  br i1 %i.cn, label %.lr.ph54, label %.preheader, !llvm.loop !289

.lr.ph60:                                         ; preds = %.lr.ph60.preheader, %.lr.ph60
  %.259 = phi i32 [ %i.cx, %.lr.ph60 ], [ %.259.ph, %.lr.ph60.preheader ]
  %.23258 = phi ptr [ %i.cw, %.lr.ph60 ], [ %.23258.ph, %.lr.ph60.preheader ] ; 3 uses
  %i.co = load i16, ptr %.23258, align 2, !tbaa !51
  %i.cp = zext i16 %i.co to i32
  %i.cq = shl nuw i32 %i.cp, 16
  %i.cr = bitcast i32 %i.cq to float
  %i.cs = call fast noundef nofpclass(nan inf) float @llvm.ceil.f32(float %i.cr)
  %i.ct = bitcast float %i.cs to i32
  %i.cu = lshr i32 %i.ct, 16
  %i.cv = trunc nuw i32 %i.cu to i16
  store i16 %i.cv, ptr %.23258, align 2, !tbaa !51
  %i.cw = getelementptr inbounds nuw i8, ptr %.23258, i64 2
  %i.cx = add nuw nsw i32 %.259, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.cx, %i.ar
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph60, !llvm.loop !290

._crit_edge:                                      ; preds = %.lr.ph60, %middle.block, %vec.epilog.middle.block, %.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond70.not = icmp eq i32 %i.o, %lftr.wideiv
  br i1 %exitcond70.not, label %._crit_edge63, label %.noexc

._crit_edge63:                                    ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge63, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL22unary_op_inplace_bf16sINS_23UnaryOp_x86_avx_functor15unary_op_squareEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #7 personality ptr @__gxx_personality_v0 {
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
  %.not61 = icmp sgt i32 %i.k, %i.j
  br i1 %.not61, label %._crit_edge63, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  %i.o = add nsw i32 %i.j, 1
  %.pre = load i32, ptr %4, align 4, !tbaa !37
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %._crit_edge
  %i.p = phi i32 [ %.pre, %.noexc.lr.ph ], [ %i.ar, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !39, !noalias !299
  %i.r = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !299
  %i.s = mul i64 %i.r, %indvars.iv
  %i.t = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !299
  %i.u = mul i64 %i.s, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.u ; 2 uses
  %i.w = icmp sgt i32 %i.p, 7
  br i1 %i.w, label %.lr.ph, label %.preheader48

.preheader48:                                     ; preds = %.lr.ph, %.noexc
  %i.x = phi i32 [ %i.p, %.noexc ], [ %i.ap, %.lr.ph ] ; 2 uses
  %.030.lcssa = phi ptr [ %i.v, %.noexc ], [ %i.am, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.an, %.lr.ph ] ; 3 uses
  %i.y = or disjoint i32 %.0.lcssa, 3
  %i.z = icmp slt i32 %i.y, %i.x
  br i1 %i.z, label %.lr.ph54, label %.preheader

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.050 = phi i32 [ %i.an, %.lr.ph ], [ 0, %.noexc ]
  %.03049 = phi ptr [ %i.am, %.lr.ph ], [ %i.v, %.noexc ] ; 3 uses
  %i.aa = load <8 x i16>, ptr %.03049, align 1, !tbaa !41 ; 2 uses
  %i.ab = shufflevector <8 x i16> %i.aa, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.ac = shufflevector <8 x i16> %i.aa, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 12, i32 4, i32 13, i32 5, i32 14, i32 6, i32 15, i32 7>
  %i.ad = shufflevector <8 x i16> %i.ab, <8 x i16> %i.ac, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ae = bitcast <16 x i16> %i.ad to <8 x float> ; 2 uses
  %i.af = fmul fast <8 x float> %i.ae, %i.ae
  %i.ag = bitcast <8 x float> %i.af to <8 x i32>  ; 2 uses
  %i.ah = shufflevector <8 x i32> %i.ag, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ai = shufflevector <8 x i32> %i.ag, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.aj = lshr <4 x i32> %i.ah, splat (i32 16)
  %i.ak = lshr <4 x i32> %i.ai, splat (i32 16)
  %i.al = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.aj, <4 x i32> %i.ak)
  store <8 x i16> %i.al, ptr %.03049, align 1, !tbaa !41
  %i.am = getelementptr inbounds nuw i8, ptr %.03049, i64 16 ; 2 uses
  %i.an = add nuw nsw i32 %.050, 8                ; 3 uses
  %i.ao = or disjoint i32 %i.an, 7
  %i.ap = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.aq = icmp slt i32 %i.ao, %i.ap
  br i1 %i.aq, label %.lr.ph, label %.preheader48, !llvm.loop !294

.preheader:                                       ; preds = %.lr.ph54, %.preheader48
  %i.ar = phi i32 [ %i.x, %.preheader48 ], [ %i.cm, %.lr.ph54 ] ; 4 uses
  %.131.lcssa = phi ptr [ %.030.lcssa, %.preheader48 ], [ %i.cj, %.lr.ph54 ] ; 5 uses
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader48 ], [ %i.ck, %.lr.ph54 ] ; 5 uses
  %i.as = icmp slt i32 %.1.lcssa, %i.ar
  br i1 %i.as, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.preheader
  %i.at = xor i32 %.1.lcssa, -1
  %i.au = add i32 %i.ar, %i.at                    ; 3 uses
  %i.av = zext i32 %i.au to i64
  %i.aw = add nuw nsw i64 %i.av, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.au, 3
  br i1 %min.iters.check, label %.lr.ph60.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check88 = icmp ult i32 %i.au, 15
  br i1 %min.iters.check88, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ax = and i64 %i.aw, 12
  %n.vec = and i64 %i.aw, 8589934576              ; 5 uses
  %i.ay = trunc i64 %n.vec to i32
  %i.az = add i32 %.1.lcssa, %i.ay
  %i.ba = shl nuw nsw i64 %n.vec, 1
  %i.bb = getelementptr i8, ptr %.131.lcssa, i64 %i.ba
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bc = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.131.lcssa, i64 %i.bc ; 2 uses
  %wide.load = load <16 x i16>, ptr %next.gep, align 2, !tbaa !51
  %i.bd = zext <16 x i16> %wide.load to <16 x i32>
  %i.be = shl nuw <16 x i32> %i.bd, splat (i32 16)
  %i.bf = bitcast <16 x i32> %i.be to <16 x float> ; 2 uses
  %i.bg = fmul fast <16 x float> %i.bf, %i.bf
  %i.bh = bitcast <16 x float> %i.bg to <16 x i32>
  %i.bi = lshr <16 x i32> %i.bh, splat (i32 16)
  %i.bj = trunc nuw <16 x i32> %i.bi to <16 x i16>
  store <16 x i16> %i.bj, ptr %next.gep, align 2, !tbaa !51
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bk = icmp eq i64 %index.next, %n.vec
  br i1 %i.bk, label %middle.block, label %vector.body, !llvm.loop !295

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aw, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ax, 0
  br i1 %min.epilog.iters.check, label %.lr.ph60.preheader, label %vec.epilog.ph, !prof !52

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec89 = and i64 %i.aw, 8589934588            ; 4 uses
  %i.bl = trunc i64 %n.vec89 to i32
  %i.bm = add i32 %.1.lcssa, %i.bl
  %i.bn = shl nuw nsw i64 %n.vec89, 1
  %i.bo = getelementptr i8, ptr %.131.lcssa, i64 %i.bn
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index90 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next93, %vec.epilog.vector.body ] ; 2 uses
  %i.bp = shl i64 %index90, 1
  %next.gep91 = getelementptr i8, ptr %.131.lcssa, i64 %i.bp ; 2 uses
  %wide.load92 = load <4 x i16>, ptr %next.gep91, align 2, !tbaa !51
  %i.bq = zext <4 x i16> %wide.load92 to <4 x i32>
  %i.br = shl nuw <4 x i32> %i.bq, splat (i32 16)
  %i.bs = bitcast <4 x i32> %i.br to <4 x float>  ; 2 uses
  %i.bt = fmul fast <4 x float> %i.bs, %i.bs
  %i.bu = bitcast <4 x float> %i.bt to <4 x i32>
  %i.bv = lshr <4 x i32> %i.bu, splat (i32 16)
  %i.bw = trunc nuw <4 x i32> %i.bv to <4 x i16>
  store <4 x i16> %i.bw, ptr %next.gep91, align 2, !tbaa !51
  %index.next93 = add nuw i64 %index90, 4         ; 2 uses
  %i.bx = icmp eq i64 %index.next93, %n.vec89
  br i1 %i.bx, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !296

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n94 = icmp eq i64 %i.aw, %n.vec89
  br i1 %cmp.n94, label %._crit_edge, label %.lr.ph60.preheader

.lr.ph60.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.259.ph = phi i32 [ %.1.lcssa, %iter.check ], [ %i.az, %vec.epilog.iter.check ], [ %i.bm, %vec.epilog.middle.block ]
  %.23258.ph = phi ptr [ %.131.lcssa, %iter.check ], [ %i.bb, %vec.epilog.iter.check ], [ %i.bo, %vec.epilog.middle.block ]
  br label %.lr.ph60

.lr.ph54:                                         ; preds = %.preheader48, %.lr.ph54
  %.153 = phi i32 [ %i.ck, %.lr.ph54 ], [ %.0.lcssa, %.preheader48 ]
  %.13152 = phi ptr [ %i.cj, %.lr.ph54 ], [ %.030.lcssa, %.preheader48 ] ; 3 uses
  %i.by = load i64, ptr %.13152, align 1, !tbaa !41
  %i.bz = insertelement <2 x i64> poison, i64 %i.by, i64 0
  %i.ca = bitcast <2 x i64> %i.bz to <8 x i16>
  %i.cb = shufflevector <8 x i16> %i.ca, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.cc = bitcast <8 x i16> %i.cb to <4 x float>  ; 2 uses
  %i.cd = fmul fast <4 x float> %i.cc, %i.cc
  %i.ce = bitcast <4 x float> %i.cd to <4 x i32>
  %i.cf = lshr <4 x i32> %i.ce, splat (i32 16)
  %i.cg = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.cf, <4 x i32> poison)
  %i.ch = bitcast <8 x i16> %i.cg to <2 x i64>
  %i.ci = extractelement <2 x i64> %i.ch, i64 0
  store i64 %i.ci, ptr %.13152, align 1, !tbaa !41
  %i.cj = getelementptr inbounds nuw i8, ptr %.13152, i64 8 ; 2 uses
  %i.ck = add nuw nsw i32 %.153, 4                ; 3 uses
  %i.cl = or disjoint i32 %i.ck, 3
  %i.cm = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.cn = icmp slt i32 %i.cl, %i.cm
  br i1 %i.cn, label %.lr.ph54, label %.preheader, !llvm.loop !297

.lr.ph60:                                         ; preds = %.lr.ph60.preheader, %.lr.ph60
  %.259 = phi i32 [ %i.cx, %.lr.ph60 ], [ %.259.ph, %.lr.ph60.preheader ]
  %.23258 = phi ptr [ %i.cw, %.lr.ph60 ], [ %.23258.ph, %.lr.ph60.preheader ] ; 3 uses
  %i.co = load i16, ptr %.23258, align 2, !tbaa !51
  %i.cp = zext i16 %i.co to i32
  %i.cq = shl nuw i32 %i.cp, 16
  %i.cr = bitcast i32 %i.cq to float              ; 2 uses
  %i.cs = fmul fast float %i.cr, %i.cr
  %i.ct = bitcast float %i.cs to i32
  %i.cu = lshr i32 %i.ct, 16
  %i.cv = trunc nuw i32 %i.cu to i16
  store i16 %i.cv, ptr %.23258, align 2, !tbaa !51
  %i.cw = getelementptr inbounds nuw i8, ptr %.23258, i64 2
  %i.cx = add nuw nsw i32 %.259, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.cx, %i.ar
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph60, !llvm.loop !298

._crit_edge:                                      ; preds = %.lr.ph60, %middle.block, %vec.epilog.middle.block, %.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond70.not = icmp eq i32 %i.o, %lftr.wideiv
  br i1 %exitcond70.not, label %._crit_edge63, label %.noexc

._crit_edge63:                                    ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge63, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL22unary_op_inplace_bf16sINS_23UnaryOp_x86_avx_functor13unary_op_sqrtEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #7 personality ptr @__gxx_personality_v0 {
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
  %.not61 = icmp sgt i32 %i.k, %i.j
  br i1 %.not61, label %._crit_edge63, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  %i.o = add nsw i32 %i.j, 1
  %.pre = load i32, ptr %4, align 4, !tbaa !37
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %._crit_edge
  %i.p = phi i32 [ %.pre, %.noexc.lr.ph ], [ %i.ar, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !39, !noalias !307
  %i.r = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !307
  %i.s = mul i64 %i.r, %indvars.iv
  %i.t = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !307
  %i.u = mul i64 %i.s, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.u ; 2 uses
  %i.w = icmp sgt i32 %i.p, 7
  br i1 %i.w, label %.lr.ph, label %.preheader48

.preheader48:                                     ; preds = %.lr.ph, %.noexc
  %i.x = phi i32 [ %i.p, %.noexc ], [ %i.ap, %.lr.ph ] ; 2 uses
  %.030.lcssa = phi ptr [ %i.v, %.noexc ], [ %i.am, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.an, %.lr.ph ] ; 3 uses
  %i.y = or disjoint i32 %.0.lcssa, 3
  %i.z = icmp slt i32 %i.y, %i.x
  br i1 %i.z, label %.lr.ph54, label %.preheader

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.050 = phi i32 [ %i.an, %.lr.ph ], [ 0, %.noexc ]
  %.03049 = phi ptr [ %i.am, %.lr.ph ], [ %i.v, %.noexc ] ; 3 uses
  %i.aa = load <8 x i16>, ptr %.03049, align 1, !tbaa !41 ; 2 uses
  %i.ab = shufflevector <8 x i16> %i.aa, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.ac = shufflevector <8 x i16> %i.aa, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 12, i32 4, i32 13, i32 5, i32 14, i32 6, i32 15, i32 7>
  %i.ad = shufflevector <8 x i16> %i.ab, <8 x i16> %i.ac, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ae = bitcast <16 x i16> %i.ad to <8 x float>
  %i.af = call fast noundef nofpclass(nan inf) <8 x float> @llvm.sqrt.v8f32(<8 x float> nofpclass(nan inf) %i.ae)
  %i.ag = bitcast <8 x float> %i.af to <8 x i32>  ; 2 uses
  %i.ah = shufflevector <8 x i32> %i.ag, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ai = shufflevector <8 x i32> %i.ag, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.aj = lshr <4 x i32> %i.ah, splat (i32 16)
  %i.ak = lshr <4 x i32> %i.ai, splat (i32 16)
  %i.al = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.aj, <4 x i32> %i.ak)
  store <8 x i16> %i.al, ptr %.03049, align 1, !tbaa !41
  %i.am = getelementptr inbounds nuw i8, ptr %.03049, i64 16 ; 2 uses
  %i.an = add nuw nsw i32 %.050, 8                ; 3 uses
  %i.ao = or disjoint i32 %i.an, 7
  %i.ap = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.aq = icmp slt i32 %i.ao, %i.ap
  br i1 %i.aq, label %.lr.ph, label %.preheader48, !llvm.loop !302

.preheader:                                       ; preds = %.lr.ph54, %.preheader48
  %i.ar = phi i32 [ %i.x, %.preheader48 ], [ %i.cm, %.lr.ph54 ] ; 4 uses
  %.131.lcssa = phi ptr [ %.030.lcssa, %.preheader48 ], [ %i.cj, %.lr.ph54 ] ; 5 uses
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader48 ], [ %i.ck, %.lr.ph54 ] ; 5 uses
  %i.as = icmp slt i32 %.1.lcssa, %i.ar
  br i1 %i.as, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.preheader
  %i.at = xor i32 %.1.lcssa, -1
  %i.au = add i32 %i.ar, %i.at                    ; 3 uses
  %i.av = zext i32 %i.au to i64
  %i.aw = add nuw nsw i64 %i.av, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.au, 3
  br i1 %min.iters.check, label %.lr.ph60.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check88 = icmp ult i32 %i.au, 15
  br i1 %min.iters.check88, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ax = and i64 %i.aw, 12
  %n.vec = and i64 %i.aw, 8589934576              ; 5 uses
  %i.ay = trunc i64 %n.vec to i32
  %i.az = add i32 %.1.lcssa, %i.ay
  %i.ba = shl nuw nsw i64 %n.vec, 1
  %i.bb = getelementptr i8, ptr %.131.lcssa, i64 %i.ba
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bc = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.131.lcssa, i64 %i.bc ; 2 uses
  %wide.load = load <16 x i16>, ptr %next.gep, align 2, !tbaa !51
  %i.bd = zext <16 x i16> %wide.load to <16 x i32>
  %i.be = shl nuw <16 x i32> %i.bd, splat (i32 16)
  %i.bf = bitcast <16 x i32> %i.be to <16 x float>
  %i.bg = call fast <16 x float> @llvm.sqrt.v16f32(<16 x float> %i.bf)
  %i.bh = bitcast <16 x float> %i.bg to <16 x i32>
  %i.bi = lshr <16 x i32> %i.bh, splat (i32 16)
  %i.bj = trunc nuw <16 x i32> %i.bi to <16 x i16>
  store <16 x i16> %i.bj, ptr %next.gep, align 2, !tbaa !51
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bk = icmp eq i64 %index.next, %n.vec
  br i1 %i.bk, label %middle.block, label %vector.body, !llvm.loop !303

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aw, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ax, 0
  br i1 %min.epilog.iters.check, label %.lr.ph60.preheader, label %vec.epilog.ph, !prof !52

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec89 = and i64 %i.aw, 8589934588            ; 4 uses
  %i.bl = trunc i64 %n.vec89 to i32
  %i.bm = add i32 %.1.lcssa, %i.bl
  %i.bn = shl nuw nsw i64 %n.vec89, 1
  %i.bo = getelementptr i8, ptr %.131.lcssa, i64 %i.bn
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index90 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next93, %vec.epilog.vector.body ] ; 2 uses
  %i.bp = shl i64 %index90, 1
  %next.gep91 = getelementptr i8, ptr %.131.lcssa, i64 %i.bp ; 2 uses
  %wide.load92 = load <4 x i16>, ptr %next.gep91, align 2, !tbaa !51
  %i.bq = zext <4 x i16> %wide.load92 to <4 x i32>
  %i.br = shl nuw <4 x i32> %i.bq, splat (i32 16)
  %i.bs = bitcast <4 x i32> %i.br to <4 x float>
  %i.bt = call fast <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.bs)
  %i.bu = bitcast <4 x float> %i.bt to <4 x i32>
  %i.bv = lshr <4 x i32> %i.bu, splat (i32 16)
  %i.bw = trunc nuw <4 x i32> %i.bv to <4 x i16>
  store <4 x i16> %i.bw, ptr %next.gep91, align 2, !tbaa !51
  %index.next93 = add nuw i64 %index90, 4         ; 2 uses
  %i.bx = icmp eq i64 %index.next93, %n.vec89
  br i1 %i.bx, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !304

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n94 = icmp eq i64 %i.aw, %n.vec89
  br i1 %cmp.n94, label %._crit_edge, label %.lr.ph60.preheader

.lr.ph60.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.259.ph = phi i32 [ %.1.lcssa, %iter.check ], [ %i.az, %vec.epilog.iter.check ], [ %i.bm, %vec.epilog.middle.block ]
  %.23258.ph = phi ptr [ %.131.lcssa, %iter.check ], [ %i.bb, %vec.epilog.iter.check ], [ %i.bo, %vec.epilog.middle.block ]
  br label %.lr.ph60

.lr.ph54:                                         ; preds = %.preheader48, %.lr.ph54
  %.153 = phi i32 [ %i.ck, %.lr.ph54 ], [ %.0.lcssa, %.preheader48 ]
  %.13152 = phi ptr [ %i.cj, %.lr.ph54 ], [ %.030.lcssa, %.preheader48 ] ; 3 uses
  %i.by = load i64, ptr %.13152, align 1, !tbaa !41
  %i.bz = insertelement <2 x i64> poison, i64 %i.by, i64 0
  %i.ca = bitcast <2 x i64> %i.bz to <8 x i16>
  %i.cb = shufflevector <8 x i16> %i.ca, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.cc = bitcast <8 x i16> %i.cb to <4 x float>
  %i.cd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.sqrt.v4f32(<4 x float> nofpclass(nan inf) %i.cc)
  %i.ce = bitcast <4 x float> %i.cd to <4 x i32>
  %i.cf = lshr <4 x i32> %i.ce, splat (i32 16)
  %i.cg = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.cf, <4 x i32> poison)
  %i.ch = bitcast <8 x i16> %i.cg to <2 x i64>
  %i.ci = extractelement <2 x i64> %i.ch, i64 0
  store i64 %i.ci, ptr %.13152, align 1, !tbaa !41
  %i.cj = getelementptr inbounds nuw i8, ptr %.13152, i64 8 ; 2 uses
  %i.ck = add nuw nsw i32 %.153, 4                ; 3 uses
  %i.cl = or disjoint i32 %i.ck, 3
  %i.cm = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.cn = icmp slt i32 %i.cl, %i.cm
  br i1 %i.cn, label %.lr.ph54, label %.preheader, !llvm.loop !305

.lr.ph60:                                         ; preds = %.lr.ph60.preheader, %.lr.ph60
  %.259 = phi i32 [ %i.cx, %.lr.ph60 ], [ %.259.ph, %.lr.ph60.preheader ]
  %.23258 = phi ptr [ %i.cw, %.lr.ph60 ], [ %.23258.ph, %.lr.ph60.preheader ] ; 3 uses
  %i.co = load i16, ptr %.23258, align 2, !tbaa !51
  %i.cp = zext i16 %i.co to i32
  %i.cq = shl nuw i32 %i.cp, 16
  %i.cr = bitcast i32 %i.cq to float
  %i.cs = call fast noundef nofpclass(nan inf) float @llvm.sqrt.f32(float %i.cr)
  %i.ct = bitcast float %i.cs to i32
  %i.cu = lshr i32 %i.ct, 16
  %i.cv = trunc nuw i32 %i.cu to i16
  store i16 %i.cv, ptr %.23258, align 2, !tbaa !51
  %i.cw = getelementptr inbounds nuw i8, ptr %.23258, i64 2
  %i.cx = add nuw nsw i32 %.259, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.cx, %i.ar
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph60, !llvm.loop !306

._crit_edge:                                      ; preds = %.lr.ph60, %middle.block, %vec.epilog.middle.block, %.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond70.not = icmp eq i32 %i.o, %lftr.wideiv
  br i1 %exitcond70.not, label %._crit_edge63, label %.noexc

._crit_edge63:                                    ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge63, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL22unary_op_inplace_bf16sINS_23UnaryOp_x86_avx_functor14unary_op_rsqrtEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #7 personality ptr @__gxx_personality_v0 {
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
  %.not61 = icmp sgt i32 %i.k, %i.j
  br i1 %.not61, label %._crit_edge63, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  %i.o = add nsw i32 %i.j, 1
  %.pre = load i32, ptr %4, align 4, !tbaa !37
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %._crit_edge
  %i.p = phi i32 [ %.pre, %.noexc.lr.ph ], [ %i.ar, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !39, !noalias !315
  %i.r = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !315
  %i.s = mul i64 %i.r, %indvars.iv
  %i.t = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !315
  %i.u = mul i64 %i.s, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.u ; 2 uses
  %i.w = icmp sgt i32 %i.p, 7
  br i1 %i.w, label %.lr.ph, label %.preheader48

.preheader48:                                     ; preds = %.lr.ph, %.noexc
  %i.x = phi i32 [ %i.p, %.noexc ], [ %i.ap, %.lr.ph ] ; 2 uses
  %.030.lcssa = phi ptr [ %i.v, %.noexc ], [ %i.am, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.an, %.lr.ph ] ; 3 uses
  %i.y = or disjoint i32 %.0.lcssa, 3
  %i.z = icmp slt i32 %i.y, %i.x
  br i1 %i.z, label %.lr.ph54, label %.preheader

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.050 = phi i32 [ %i.an, %.lr.ph ], [ 0, %.noexc ]
  %.03049 = phi ptr [ %i.am, %.lr.ph ], [ %i.v, %.noexc ] ; 3 uses
  %i.aa = load <8 x i16>, ptr %.03049, align 1, !tbaa !41 ; 2 uses
  %i.ab = shufflevector <8 x i16> %i.aa, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.ac = shufflevector <8 x i16> %i.aa, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 12, i32 4, i32 13, i32 5, i32 14, i32 6, i32 15, i32 7>
  %i.ad = shufflevector <8 x i16> %i.ab, <8 x i16> %i.ac, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ae = bitcast <16 x i16> %i.ad to <8 x float>
  %i.af = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.rsqrt.ps.256(<8 x float> nofpclass(nan inf) %i.ae)
  %i.ag = bitcast <8 x float> %i.af to <8 x i32>  ; 2 uses
  %i.ah = shufflevector <8 x i32> %i.ag, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ai = shufflevector <8 x i32> %i.ag, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.aj = lshr <4 x i32> %i.ah, splat (i32 16)
  %i.ak = lshr <4 x i32> %i.ai, splat (i32 16)
  %i.al = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.aj, <4 x i32> %i.ak)
  store <8 x i16> %i.al, ptr %.03049, align 1, !tbaa !41
  %i.am = getelementptr inbounds nuw i8, ptr %.03049, i64 16 ; 2 uses
  %i.an = add nuw nsw i32 %.050, 8                ; 3 uses
  %i.ao = or disjoint i32 %i.an, 7
  %i.ap = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.aq = icmp slt i32 %i.ao, %i.ap
  br i1 %i.aq, label %.lr.ph, label %.preheader48, !llvm.loop !310

.preheader:                                       ; preds = %.lr.ph54, %.preheader48
  %i.ar = phi i32 [ %i.x, %.preheader48 ], [ %i.co, %.lr.ph54 ] ; 4 uses
  %.131.lcssa = phi ptr [ %.030.lcssa, %.preheader48 ], [ %i.cl, %.lr.ph54 ] ; 5 uses
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader48 ], [ %i.cm, %.lr.ph54 ] ; 5 uses
  %i.as = icmp slt i32 %.1.lcssa, %i.ar
  br i1 %i.as, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.preheader
  %i.at = xor i32 %.1.lcssa, -1
  %i.au = add i32 %i.ar, %i.at                    ; 3 uses
  %i.av = zext i32 %i.au to i64
  %i.aw = add nuw nsw i64 %i.av, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.au, 3
  br i1 %min.iters.check, label %.lr.ph60.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check88 = icmp ult i32 %i.au, 15
  br i1 %min.iters.check88, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ax = and i64 %i.aw, 12
  %n.vec = and i64 %i.aw, 8589934576              ; 5 uses
  %i.ay = trunc i64 %n.vec to i32
  %i.az = add i32 %.1.lcssa, %i.ay
  %i.ba = shl nuw nsw i64 %n.vec, 1
  %i.bb = getelementptr i8, ptr %.131.lcssa, i64 %i.ba
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bc = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.131.lcssa, i64 %i.bc ; 2 uses
  %wide.load = load <16 x i16>, ptr %next.gep, align 2, !tbaa !51
  %i.bd = zext <16 x i16> %wide.load to <16 x i32>
  %i.be = shl nuw <16 x i32> %i.bd, splat (i32 16)
  %i.bf = bitcast <16 x i32> %i.be to <16 x float>
  %i.bg = call fast <16 x float> @llvm.sqrt.v16f32(<16 x float> %i.bf)
  %i.bh = fdiv fast <16 x float> splat (float 1.000000e+00), %i.bg
  %i.bi = bitcast <16 x float> %i.bh to <16 x i32>
  %i.bj = lshr <16 x i32> %i.bi, splat (i32 16)
  %i.bk = trunc nuw <16 x i32> %i.bj to <16 x i16>
  store <16 x i16> %i.bk, ptr %next.gep, align 2, !tbaa !51
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bl = icmp eq i64 %index.next, %n.vec
  br i1 %i.bl, label %middle.block, label %vector.body, !llvm.loop !311

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aw, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ax, 0
  br i1 %min.epilog.iters.check, label %.lr.ph60.preheader, label %vec.epilog.ph, !prof !52

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec89 = and i64 %i.aw, 8589934588            ; 4 uses
  %i.bm = trunc i64 %n.vec89 to i32
  %i.bn = add i32 %.1.lcssa, %i.bm
  %i.bo = shl nuw nsw i64 %n.vec89, 1
  %i.bp = getelementptr i8, ptr %.131.lcssa, i64 %i.bo
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index90 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next93, %vec.epilog.vector.body ] ; 2 uses
  %i.bq = shl i64 %index90, 1
  %next.gep91 = getelementptr i8, ptr %.131.lcssa, i64 %i.bq ; 2 uses
  %wide.load92 = load <4 x i16>, ptr %next.gep91, align 2, !tbaa !51
  %i.br = zext <4 x i16> %wide.load92 to <4 x i32>
  %i.bs = shl nuw <4 x i32> %i.br, splat (i32 16)
  %i.bt = bitcast <4 x i32> %i.bs to <4 x float>
  %i.bu = call fast <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.bt)
  %i.bv = fdiv fast <4 x float> splat (float 1.000000e+00), %i.bu
  %i.bw = bitcast <4 x float> %i.bv to <4 x i32>
  %i.bx = lshr <4 x i32> %i.bw, splat (i32 16)
  %i.by = trunc nuw <4 x i32> %i.bx to <4 x i16>
  store <4 x i16> %i.by, ptr %next.gep91, align 2, !tbaa !51
  %index.next93 = add nuw i64 %index90, 4         ; 2 uses
  %i.bz = icmp eq i64 %index.next93, %n.vec89
  br i1 %i.bz, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !312

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n94 = icmp eq i64 %i.aw, %n.vec89
  br i1 %cmp.n94, label %._crit_edge, label %.lr.ph60.preheader

.lr.ph60.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.259.ph = phi i32 [ %.1.lcssa, %iter.check ], [ %i.az, %vec.epilog.iter.check ], [ %i.bn, %vec.epilog.middle.block ]
  %.23258.ph = phi ptr [ %.131.lcssa, %iter.check ], [ %i.bb, %vec.epilog.iter.check ], [ %i.bp, %vec.epilog.middle.block ]
  br label %.lr.ph60

.lr.ph54:                                         ; preds = %.preheader48, %.lr.ph54
  %.153 = phi i32 [ %i.cm, %.lr.ph54 ], [ %.0.lcssa, %.preheader48 ]
  %.13152 = phi ptr [ %i.cl, %.lr.ph54 ], [ %.030.lcssa, %.preheader48 ] ; 3 uses
  %i.ca = load i64, ptr %.13152, align 1, !tbaa !41
  %i.cb = insertelement <2 x i64> poison, i64 %i.ca, i64 0
  %i.cc = bitcast <2 x i64> %i.cb to <8 x i16>
  %i.cd = shufflevector <8 x i16> %i.cc, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.ce = bitcast <8 x i16> %i.cd to <4 x float>
  %i.cf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.rsqrt.ps(<4 x float> nofpclass(nan inf) %i.ce)
  %i.cg = bitcast <4 x float> %i.cf to <4 x i32>
  %i.ch = lshr <4 x i32> %i.cg, splat (i32 16)
  %i.ci = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.ch, <4 x i32> poison)
  %i.cj = bitcast <8 x i16> %i.ci to <2 x i64>
  %i.ck = extractelement <2 x i64> %i.cj, i64 0
  store i64 %i.ck, ptr %.13152, align 1, !tbaa !41
  %i.cl = getelementptr inbounds nuw i8, ptr %.13152, i64 8 ; 2 uses
  %i.cm = add nuw nsw i32 %.153, 4                ; 3 uses
  %i.cn = or disjoint i32 %i.cm, 3
  %i.co = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.cp = icmp slt i32 %i.cn, %i.co
  br i1 %i.cp, label %.lr.ph54, label %.preheader, !llvm.loop !313

.lr.ph60:                                         ; preds = %.lr.ph60.preheader, %.lr.ph60
  %.259 = phi i32 [ %i.da, %.lr.ph60 ], [ %.259.ph, %.lr.ph60.preheader ]
  %.23258 = phi ptr [ %i.cz, %.lr.ph60 ], [ %.23258.ph, %.lr.ph60.preheader ] ; 3 uses
  %i.cq = load i16, ptr %.23258, align 2, !tbaa !51
  %i.cr = zext i16 %i.cq to i32
  %i.cs = shl nuw i32 %i.cr, 16
  %i.ct = bitcast i32 %i.cs to float
  %i.cu = call fast float @llvm.sqrt.f32(float %i.ct)
  %i.cv = fdiv fast float 1.000000e+00, %i.cu
  %i.cw = bitcast float %i.cv to i32
  %i.cx = lshr i32 %i.cw, 16
  %i.cy = trunc nuw i32 %i.cx to i16
  store i16 %i.cy, ptr %.23258, align 2, !tbaa !51
  %i.cz = getelementptr inbounds nuw i8, ptr %.23258, i64 2
  %i.da = add nuw nsw i32 %.259, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.da, %i.ar
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph60, !llvm.loop !314

._crit_edge:                                      ; preds = %.lr.ph60, %middle.block, %vec.epilog.middle.block, %.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond70.not = icmp eq i32 %i.o, %lftr.wideiv
  br i1 %exitcond70.not, label %._crit_edge63, label %.noexc

._crit_edge63:                                    ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge63, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL22unary_op_inplace_bf16sINS_23UnaryOp_x86_avx_functor12unary_op_expEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #7 personality ptr @__gxx_personality_v0 {
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
  %.not121 = icmp sgt i32 %i.k, %i.j
  br i1 %.not121, label %._crit_edge123, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  %i.o = add nsw i32 %i.j, 1
  %.pre = load i32, ptr %4, align 4, !tbaa !37
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %._crit_edge
  %i.p = phi i32 [ %.pre, %.noexc.lr.ph ], [ %i.bt, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !39, !noalias !323
  %i.r = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !323
  %i.s = mul i64 %i.r, %indvars.iv
  %i.t = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !323
  %i.u = mul i64 %i.s, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.u ; 2 uses
  %i.w = icmp sgt i32 %i.p, 7
  br i1 %i.w, label %.lr.ph, label %.preheader108

.preheader108:                                    ; preds = %.lr.ph, %.noexc
  %i.x = phi i32 [ %i.p, %.noexc ], [ %i.br, %.lr.ph ] ; 2 uses
  %.030.lcssa = phi ptr [ %i.v, %.noexc ], [ %i.bo, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.bp, %.lr.ph ] ; 3 uses
  %i.y = or disjoint i32 %.0.lcssa, 3
  %i.z = icmp slt i32 %i.y, %i.x
  br i1 %i.z, label %.lr.ph114, label %.preheader

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.0110 = phi i32 [ %i.bp, %.lr.ph ], [ 0, %.noexc ]
  %.030109 = phi ptr [ %i.bo, %.lr.ph ], [ %i.v, %.noexc ] ; 3 uses
  %i.aa = load <8 x i16>, ptr %.030109, align 1, !tbaa !41 ; 2 uses
  %i.ab = shufflevector <8 x i16> %i.aa, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.ac = shufflevector <8 x i16> %i.aa, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 12, i32 4, i32 13, i32 5, i32 14, i32 6, i32 15, i32 7>
  %i.ad = shufflevector <8 x i16> %i.ab, <8 x i16> %i.ac, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ae = bitcast <16 x i16> %i.ad to <8 x float>
  %i.af = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ae, <8 x float> splat (float f0x42B0C0A5))
  %i.ag = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.af, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ah = fmul fast <8 x float> %i.ag, splat (float f0x3FB8AA3B)
  %i.ai = fadd fast <8 x float> %i.ah, splat (float 5.000000e-01) ; 2 uses
  %i.aj = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ai, i32 1) ; 2 uses
  %i.ak = fcmp fast ogt <8 x float> %i.aj, %i.ai
  %i.al = select <8 x i1> %i.ak, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.am = fsub fast <8 x float> %i.aj, %i.al      ; 2 uses
  %i.an = fmul fast <8 x float> %i.am, splat (float f0x3F317218)
  %i.ao = fsub fast <8 x float> %i.ag, %i.an      ; 8 uses
  %i.ap = fmul fast <8 x float> %i.ao, %i.ao
  %i.aq = fmul fast <8 x float> %i.ao, splat (float f0x39506967)
  %i.ar = fadd fast <8 x float> %i.aq, splat (float f0x3AB743CE)
  %i.as = fmul fast <8 x float> %i.ar, %i.ao
  %i.at = fadd fast <8 x float> %i.as, splat (float f0x3C088908)
  %i.au = fmul fast <8 x float> %i.at, %i.ao
  %i.av = fadd fast <8 x float> %i.au, splat (float f0x3D2AA9C1)
  %i.aw = fmul fast <8 x float> %i.av, %i.ao
  %i.ax = fadd fast <8 x float> %i.aw, splat (float f0x3E2AAAAA)
  %i.ay = fmul fast <8 x float> %i.ax, %i.ao
  %i.az = fadd fast <8 x float> %i.ay, splat (float 5.000000e-01)
  %i.ba = fmul fast <8 x float> %i.ap, %i.az
  %i.bb = fadd fast <8 x float> %i.ao, splat (float 1.000000e+00)
  %i.bc = fadd fast <8 x float> %i.bb, %i.ba
  %i.bd = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.am)
  %i.be = shl <8 x i32> %i.bd, splat (i32 23)
  %i.bf = add <8 x i32> %i.be, splat (i32 1065353216)
  %i.bg = bitcast <8 x i32> %i.bf to <8 x float>
  %i.bh = fmul fast <8 x float> %i.bc, %i.bg
  %i.bi = bitcast <8 x float> %i.bh to <8 x i32>  ; 2 uses
  %i.bj = shufflevector <8 x i32> %i.bi, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bk = shufflevector <8 x i32> %i.bi, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bl = lshr <4 x i32> %i.bj, splat (i32 16)
  %i.bm = lshr <4 x i32> %i.bk, splat (i32 16)
  %i.bn = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bl, <4 x i32> %i.bm)
  store <8 x i16> %i.bn, ptr %.030109, align 1, !tbaa !41
  %i.bo = getelementptr inbounds nuw i8, ptr %.030109, i64 16 ; 2 uses
  %i.bp = add nuw nsw i32 %.0110, 8               ; 3 uses
  %i.bq = or disjoint i32 %i.bp, 7
  %i.br = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.bs = icmp slt i32 %i.bq, %i.br
  br i1 %i.bs, label %.lr.ph, label %.preheader108, !llvm.loop !318

.preheader:                                       ; preds = %.lr.ph114, %.preheader108
  %i.bt = phi i32 [ %i.x, %.preheader108 ], [ %i.er, %.lr.ph114 ] ; 4 uses
  %.131.lcssa = phi ptr [ %.030.lcssa, %.preheader108 ], [ %i.eo, %.lr.ph114 ] ; 5 uses
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader108 ], [ %i.ep, %.lr.ph114 ] ; 5 uses
  %i.bu = icmp slt i32 %.1.lcssa, %i.bt
  br i1 %i.bu, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.preheader
  %i.bv = xor i32 %.1.lcssa, -1
  %i.bw = add i32 %i.bt, %i.bv                    ; 3 uses
  %i.bx = zext i32 %i.bw to i64
  %i.by = add nuw nsw i64 %i.bx, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.bw, 3
  br i1 %min.iters.check, label %.lr.ph120.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check148 = icmp ult i32 %i.bw, 15
  br i1 %min.iters.check148, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bz = and i64 %i.by, 12
  %n.vec = and i64 %i.by, 8589934576              ; 5 uses
  %i.ca = trunc i64 %n.vec to i32
  %i.cb = add i32 %.1.lcssa, %i.ca
  %i.cc = shl nuw nsw i64 %n.vec, 1
  %i.cd = getelementptr i8, ptr %.131.lcssa, i64 %i.cc
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ce = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.131.lcssa, i64 %i.ce ; 2 uses
  %wide.load = load <16 x i16>, ptr %next.gep, align 2, !tbaa !51
  %i.cf = zext <16 x i16> %wide.load to <16 x i32>
  %i.cg = shl nuw <16 x i32> %i.cf, splat (i32 16)
  %i.ch = bitcast <16 x i32> %i.cg to <16 x float>
  %i.ci = call fast <16 x float> @llvm.exp.v16f32(<16 x float> %i.ch)
  %i.cj = bitcast <16 x float> %i.ci to <16 x i32>
  %i.ck = lshr <16 x i32> %i.cj, splat (i32 16)
  %i.cl = trunc nuw <16 x i32> %i.ck to <16 x i16>
  store <16 x i16> %i.cl, ptr %next.gep, align 2, !tbaa !51
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cm = icmp eq i64 %index.next, %n.vec
  br i1 %i.cm, label %middle.block, label %vector.body, !llvm.loop !319

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.by, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bz, 0
  br i1 %min.epilog.iters.check, label %.lr.ph120.preheader, label %vec.epilog.ph, !prof !52

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec149 = and i64 %i.by, 8589934588           ; 4 uses
  %i.cn = trunc i64 %n.vec149 to i32
  %i.co = add i32 %.1.lcssa, %i.cn
  %i.cp = shl nuw nsw i64 %n.vec149, 1
  %i.cq = getelementptr i8, ptr %.131.lcssa, i64 %i.cp
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index150 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next153, %vec.epilog.vector.body ] ; 2 uses
  %i.cr = shl i64 %index150, 1
  %next.gep151 = getelementptr i8, ptr %.131.lcssa, i64 %i.cr ; 2 uses
  %wide.load152 = load <4 x i16>, ptr %next.gep151, align 2, !tbaa !51
  %i.cs = zext <4 x i16> %wide.load152 to <4 x i32>
  %i.ct = shl nuw <4 x i32> %i.cs, splat (i32 16)
  %i.cu = bitcast <4 x i32> %i.ct to <4 x float>
  %i.cv = call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.cu)
  %i.cw = bitcast <4 x float> %i.cv to <4 x i32>
  %i.cx = lshr <4 x i32> %i.cw, splat (i32 16)
  %i.cy = trunc nuw <4 x i32> %i.cx to <4 x i16>
  store <4 x i16> %i.cy, ptr %next.gep151, align 2, !tbaa !51
  %index.next153 = add nuw i64 %index150, 4       ; 2 uses
  %i.cz = icmp eq i64 %index.next153, %n.vec149
  br i1 %i.cz, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !320

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n154 = icmp eq i64 %i.by, %n.vec149
  br i1 %cmp.n154, label %._crit_edge, label %.lr.ph120.preheader

.lr.ph120.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.2119.ph = phi i32 [ %.1.lcssa, %iter.check ], [ %i.cb, %vec.epilog.iter.check ], [ %i.co, %vec.epilog.middle.block ]
  %.232118.ph = phi ptr [ %.131.lcssa, %iter.check ], [ %i.cd, %vec.epilog.iter.check ], [ %i.cq, %vec.epilog.middle.block ]
  br label %.lr.ph120

.lr.ph114:                                        ; preds = %.preheader108, %.lr.ph114
  %.1113 = phi i32 [ %i.ep, %.lr.ph114 ], [ %.0.lcssa, %.preheader108 ]
  %.131112 = phi ptr [ %i.eo, %.lr.ph114 ], [ %.030.lcssa, %.preheader108 ] ; 3 uses
  %i.da = load i64, ptr %.131112, align 1, !tbaa !41
  %i.db = insertelement <2 x i64> poison, i64 %i.da, i64 0
  %i.dc = bitcast <2 x i64> %i.db to <8 x i16>
  %i.dd = shufflevector <8 x i16> %i.dc, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.de = bitcast <8 x i16> %i.dd to <4 x float>
  %i.df = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.de, <4 x float> splat (float f0x42B0C0A5))
  %i.dg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.df, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.dh = fmul fast <4 x float> %i.dg, splat (float f0x3FB8AA3B)
  %i.di = fadd fast <4 x float> %i.dh, splat (float 5.000000e-01) ; 2 uses
  %i.dj = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.di)
  %i.dk = sitofp fast <4 x i32> %i.dj to <4 x float> ; 2 uses
  %i.dl = fcmp fast olt <4 x float> %i.di, %i.dk
  %i.dm = select <4 x i1> %i.dl, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.dn = fsub fast <4 x float> %i.dk, %i.dm      ; 2 uses
  %i.do = fmul fast <4 x float> %i.dn, splat (float f0x3F317218)
  %i.dp = fsub fast <4 x float> %i.dg, %i.do      ; 8 uses
  %i.dq = fmul fast <4 x float> %i.dp, %i.dp
  %i.dr = fmul fast <4 x float> %i.dp, splat (float f0x39506967)
  %i.ds = fadd fast <4 x float> %i.dr, splat (float f0x3AB743CE)
  %i.dt = fmul fast <4 x float> %i.ds, %i.dp
  %i.du = fadd fast <4 x float> %i.dt, splat (float f0x3C088908)
  %i.dv = fmul fast <4 x float> %i.du, %i.dp
  %i.dw = fadd fast <4 x float> %i.dv, splat (float f0x3D2AA9C1)
  %i.dx = fmul fast <4 x float> %i.dw, %i.dp
  %i.dy = fadd fast <4 x float> %i.dx, splat (float f0x3E2AAAAA)
  %i.dz = fmul fast <4 x float> %i.dy, %i.dp
  %i.ea = fadd fast <4 x float> %i.dz, splat (float 5.000000e-01)
  %i.eb = fmul fast <4 x float> %i.dq, %i.ea
  %i.ec = fadd fast <4 x float> %i.dp, splat (float 1.000000e+00)
  %i.ed = fadd fast <4 x float> %i.ec, %i.eb
  %i.ee = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dn)
  %i.ef = shl <4 x i32> %i.ee, splat (i32 23)
  %i.eg = add <4 x i32> %i.ef, splat (i32 1065353216)
  %i.eh = bitcast <4 x i32> %i.eg to <4 x float>
  %i.ei = fmul fast <4 x float> %i.ed, %i.eh
  %i.ej = bitcast <4 x float> %i.ei to <4 x i32>
  %i.ek = lshr <4 x i32> %i.ej, splat (i32 16)
  %i.el = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.ek, <4 x i32> poison)
  %i.em = bitcast <8 x i16> %i.el to <2 x i64>
  %i.en = extractelement <2 x i64> %i.em, i64 0
  store i64 %i.en, ptr %.131112, align 1, !tbaa !41
  %i.eo = getelementptr inbounds nuw i8, ptr %.131112, i64 8 ; 2 uses
  %i.ep = add nuw nsw i32 %.1113, 4               ; 3 uses
  %i.eq = or disjoint i32 %i.ep, 3
  %i.er = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.es = icmp slt i32 %i.eq, %i.er
  br i1 %i.es, label %.lr.ph114, label %.preheader, !llvm.loop !321

.lr.ph120:                                        ; preds = %.lr.ph120.preheader, %.lr.ph120
  %.2119 = phi i32 [ %i.fc, %.lr.ph120 ], [ %.2119.ph, %.lr.ph120.preheader ]
  %.232118 = phi ptr [ %i.fb, %.lr.ph120 ], [ %.232118.ph, %.lr.ph120.preheader ] ; 3 uses
  %i.et = load i16, ptr %.232118, align 2, !tbaa !51
  %i.eu = zext i16 %i.et to i32
  %i.ev = shl nuw i32 %i.eu, 16
  %i.ew = bitcast i32 %i.ev to float
  %i.ex = call fast noundef nofpclass(nan inf) float @llvm.exp.f32(float %i.ew)
  %i.ey = bitcast float %i.ex to i32
  %i.ez = lshr i32 %i.ey, 16
  %i.fa = trunc nuw i32 %i.ez to i16
  store i16 %i.fa, ptr %.232118, align 2, !tbaa !51
  %i.fb = getelementptr inbounds nuw i8, ptr %.232118, i64 2
  %i.fc = add nuw nsw i32 %.2119, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.fc, %i.bt
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph120, !llvm.loop !322

._crit_edge:                                      ; preds = %.lr.ph120, %middle.block, %vec.epilog.middle.block, %.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond130.not = icmp eq i32 %i.o, %lftr.wideiv
  br i1 %exitcond130.not, label %._crit_edge123, label %.noexc

._crit_edge123:                                   ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge123, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL22unary_op_inplace_bf16sINS_23UnaryOp_x86_avx_functor12unary_op_logEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #7 personality ptr @__gxx_personality_v0 {
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
  %.not138 = icmp sgt i32 %i.k, %i.j
  br i1 %.not138, label %._crit_edge140, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  %i.o = add nsw i32 %i.j, 1
  %.pre = load i32, ptr %4, align 4, !tbaa !37
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %._crit_edge
  %i.p = phi i32 [ %.pre, %.noexc.lr.ph ], [ %i.cb, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !39, !noalias !331
  %i.r = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !331
  %i.s = mul i64 %i.r, %indvars.iv
  %i.t = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !331
  %i.u = mul i64 %i.s, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.u ; 2 uses
  %i.w = icmp sgt i32 %i.p, 7
  br i1 %i.w, label %.lr.ph, label %.preheader125

.preheader125:                                    ; preds = %.lr.ph, %.noexc
  %i.x = phi i32 [ %i.p, %.noexc ], [ %i.bz, %.lr.ph ] ; 2 uses
  %.030.lcssa = phi ptr [ %i.v, %.noexc ], [ %i.bw, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.bx, %.lr.ph ] ; 3 uses
  %i.y = or disjoint i32 %.0.lcssa, 3
  %i.z = icmp slt i32 %i.y, %i.x
  br i1 %i.z, label %.lr.ph131, label %.preheader

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.0127 = phi i32 [ %i.bx, %.lr.ph ], [ 0, %.noexc ]
  %.030126 = phi ptr [ %i.bw, %.lr.ph ], [ %i.v, %.noexc ] ; 3 uses
  %i.aa = load <8 x i16>, ptr %.030126, align 1, !tbaa !41 ; 2 uses
  %i.ab = shufflevector <8 x i16> %i.aa, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.ac = shufflevector <8 x i16> %i.aa, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 12, i32 4, i32 13, i32 5, i32 14, i32 6, i32 15, i32 7>
  %i.ad = shufflevector <8 x i16> %i.ab, <8 x i16> %i.ac, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ae = bitcast <16 x i16> %i.ad to <8 x float> ; 2 uses
  %i.af = fcmp fast ole <8 x float> %i.ae, zeroinitializer
  %i.ag = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ae, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.ah = bitcast <8 x float> %i.ag to <8 x i32>
  %i.ai = bitcast <8 x float> %i.ag to <8 x i32>
  %i.aj = and <8 x i32> %i.ai, splat (i32 -2139095041)
  %i.ak = or disjoint <8 x i32> %i.aj, splat (i32 1056964608)
  %i.al = bitcast <8 x i32> %i.ak to <8 x float>  ; 3 uses
  %i.am = lshr <8 x i32> %i.ah, splat (i32 23)
  %i.an = add nsw <8 x i32> %i.am, splat (i32 -127)
  %i.ao = sitofp fast <8 x i32> %i.an to <8 x float> ; 2 uses
  %i.ap = fadd fast <8 x float> %i.ao, splat (float 1.000000e+00)
  %i.aq = fcmp fast olt <8 x float> %i.al, splat (float f0x3F3504F3) ; 2 uses
  %i.ar = select <8 x i1> %i.aq, <8 x float> %i.al, <8 x float> zeroinitializer
  %i.as = fadd fast <8 x float> %i.al, splat (float -1.000000e+00)
  %i.at = select fast <8 x i1> %i.aq, <8 x float> %i.ao, <8 x float> %i.ap
  %i.au = fadd fast <8 x float> %i.as, %i.ar      ; 12 uses
  %i.av = fmul fast <8 x float> %i.au, %i.au
  %i.aw = fmul fast <8 x float> %i.au, splat (float f0x3D9021BB)
  %i.ax = fadd fast <8 x float> %i.aw, splat (float f0xBDEBD1B8)
  %i.ay = fmul fast <8 x float> %i.ax, %i.au
  %i.az = fadd fast <8 x float> %i.ay, splat (float f0x3DEF251A)
  %i.ba = fmul fast <8 x float> %i.az, %i.au
  %i.bb = fadd fast <8 x float> %i.ba, splat (float f0xBDFE5D4F)
  %i.bc = fmul fast <8 x float> %i.bb, %i.au
  %i.bd = fadd fast <8 x float> %i.bc, splat (float f0x3E11E9BF)
  %i.be = fmul fast <8 x float> %i.bd, %i.au
  %i.bf = fadd fast <8 x float> %i.be, splat (float f0xBE2AAE50)
  %i.bg = fmul fast <8 x float> %i.bf, %i.au
  %i.bh = fadd fast <8 x float> %i.bg, splat (float f0x3E4CCEAC)
  %i.bi = fmul fast <8 x float> %i.bh, %i.au
  %i.bj = fadd fast <8 x float> %i.bi, splat (float f0xBE7FFFFC)
  %i.bk = fmul fast <8 x float> %i.bj, %i.au
  %i.bl = fadd fast <8 x float> %i.bk, splat (float f0x3EAAAAAA)
  %i.bm = fmul fast <8 x float> %i.bl, %i.au
  %reass.mul122 = fmul fast <8 x float> %i.at, splat (float f0x3F317218)
  %reass.add123 = fadd fast <8 x float> %i.bm, splat (float -5.000000e-01)
  %reass.mul124 = fmul fast <8 x float> %i.av, %reass.add123
  %i.bn = fadd fast <8 x float> %reass.mul122, %i.au
  %i.bo = fadd fast <8 x float> %i.bn, %reass.mul124
  %i.bp = bitcast <8 x float> %i.bo to <8 x i32>
  %i.bq = select <8 x i1> %i.af, <8 x i32> splat (i32 -1), <8 x i32> %i.bp ; 2 uses
  %i.br = shufflevector <8 x i32> %i.bq, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bs = shufflevector <8 x i32> %i.bq, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bt = lshr <4 x i32> %i.br, splat (i32 16)
  %i.bu = lshr <4 x i32> %i.bs, splat (i32 16)
  %i.bv = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bt, <4 x i32> %i.bu)
  store <8 x i16> %i.bv, ptr %.030126, align 1, !tbaa !41
  %i.bw = getelementptr inbounds nuw i8, ptr %.030126, i64 16 ; 2 uses
  %i.bx = add nuw nsw i32 %.0127, 8               ; 3 uses
  %i.by = or disjoint i32 %i.bx, 7
  %i.bz = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.ca = icmp slt i32 %i.by, %i.bz
  br i1 %i.ca, label %.lr.ph, label %.preheader125, !llvm.loop !326

.preheader:                                       ; preds = %.lr.ph131, %.preheader125
  %i.cb = phi i32 [ %i.x, %.preheader125 ], [ %i.ff, %.lr.ph131 ] ; 4 uses
  %.131.lcssa = phi ptr [ %.030.lcssa, %.preheader125 ], [ %i.fc, %.lr.ph131 ] ; 5 uses
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader125 ], [ %i.fd, %.lr.ph131 ] ; 5 uses
  %i.cc = icmp slt i32 %.1.lcssa, %i.cb
  br i1 %i.cc, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.preheader
  %i.cd = xor i32 %.1.lcssa, -1
  %i.ce = add i32 %i.cb, %i.cd                    ; 3 uses
  %i.cf = zext i32 %i.ce to i64
  %i.cg = add nuw nsw i64 %i.cf, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.ce, 3
  br i1 %min.iters.check, label %.lr.ph137.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check165 = icmp ult i32 %i.ce, 15
  br i1 %min.iters.check165, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ch = and i64 %i.cg, 12
  %n.vec = and i64 %i.cg, 8589934576              ; 5 uses
  %i.ci = trunc i64 %n.vec to i32
  %i.cj = add i32 %.1.lcssa, %i.ci
  %i.ck = shl nuw nsw i64 %n.vec, 1
  %i.cl = getelementptr i8, ptr %.131.lcssa, i64 %i.ck
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cm = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.131.lcssa, i64 %i.cm ; 2 uses
  %wide.load = load <16 x i16>, ptr %next.gep, align 2, !tbaa !51
  %i.cn = zext <16 x i16> %wide.load to <16 x i32>
  %i.co = shl nuw <16 x i32> %i.cn, splat (i32 16)
  %i.cp = bitcast <16 x i32> %i.co to <16 x float>
  %i.cq = call fast <16 x float> @llvm.log.v16f32(<16 x float> %i.cp)
  %i.cr = bitcast <16 x float> %i.cq to <16 x i32>
  %i.cs = lshr <16 x i32> %i.cr, splat (i32 16)
  %i.ct = trunc nuw <16 x i32> %i.cs to <16 x i16>
  store <16 x i16> %i.ct, ptr %next.gep, align 2, !tbaa !51
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cu = icmp eq i64 %index.next, %n.vec
  br i1 %i.cu, label %middle.block, label %vector.body, !llvm.loop !327

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cg, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ch, 0
  br i1 %min.epilog.iters.check, label %.lr.ph137.preheader, label %vec.epilog.ph, !prof !52

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec166 = and i64 %i.cg, 8589934588           ; 4 uses
end_hunk_1
begin_hunk_2_@_ZN4ncnnL22unary_op_inplace_bf16sINS_23UnaryOp_x86_avx_functor13unary_op_asinEEEiRNS_3MatERKNS_6OptionE.omp_outlined:bb.a
  %i.ek = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.ej, <4 x i32> poison)
  %i.el = bitcast <8 x i16> %i.ek to <2 x i64>
  %i.em = extractelement <2 x i64> %i.el, i64 0
  store i64 %i.em, ptr %.131100, align 1, !tbaa !41
  %i.en = getelementptr inbounds nuw i8, ptr %.131100, i64 8 ; 2 uses
  %i.eo = add nuw nsw i32 %.1101, 4               ; 3 uses
  %i.ep = or disjoint i32 %i.eo, 3
  %i.eq = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.er = icmp slt i32 %i.ep, %i.eq
  br i1 %i.er, label %.lr.ph102, label %.preheader, !llvm.loop !361

.lr.ph108:                                        ; preds = %.lr.ph108.preheader, %.lr.ph108
  %.2107 = phi i32 [ %i.fb, %.lr.ph108 ], [ %.2107.ph, %.lr.ph108.preheader ]
  %.232106 = phi ptr [ %i.fa, %.lr.ph108 ], [ %.232106.ph, %.lr.ph108.preheader ] ; 3 uses
  %i.es = load i16, ptr %.232106, align 2, !tbaa !51
  %i.et = zext i16 %i.es to i32
  %i.eu = shl nuw i32 %i.et, 16
  %i.ev = bitcast i32 %i.eu to float
  %i.ew = call fast noundef nofpclass(nan inf) float @llvm.asin.f32(float %i.ev)
  %i.ex = bitcast float %i.ew to i32
  %i.ey = lshr i32 %i.ex, 16
  %i.ez = trunc nuw i32 %i.ey to i16
  store i16 %i.ez, ptr %.232106, align 2, !tbaa !51
  %i.fa = getelementptr inbounds nuw i8, ptr %.232106, i64 2
  %i.fb = add nuw nsw i32 %.2107, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.fb, %i.bt
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph108, !llvm.loop !362

._crit_edge:                                      ; preds = %.lr.ph108, %middle.block, %vec.epilog.middle.block, %.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond118.not = icmp eq i32 %i.o, %lftr.wideiv
  br i1 %exitcond118.not, label %._crit_edge111, label %.noexc

._crit_edge111:                                   ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge111, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL22unary_op_inplace_bf16sINS_23UnaryOp_x86_avx_functor13unary_op_acosEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #7 personality ptr @__gxx_personality_v0 {
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
  %.not98 = icmp sgt i32 %i.k, %i.j
  br i1 %.not98, label %._crit_edge100, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  %i.o = add nsw i32 %i.j, 1
  %.pre = load i32, ptr %4, align 4, !tbaa !37
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %._crit_edge
  %i.p = phi i32 [ %.pre, %.noexc.lr.ph ], [ %i.bx, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !39, !noalias !371
  %i.r = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !371
  %i.s = mul i64 %i.r, %indvars.iv
  %i.t = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !371
  %i.u = mul i64 %i.s, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.u ; 2 uses
  %i.w = icmp sgt i32 %i.p, 7
  br i1 %i.w, label %.lr.ph, label %.preheader85

.preheader85:                                     ; preds = %.lr.ph, %.noexc
  %i.x = phi i32 [ %i.p, %.noexc ], [ %i.bv, %.lr.ph ] ; 2 uses
  %.030.lcssa = phi ptr [ %i.v, %.noexc ], [ %i.bs, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.bt, %.lr.ph ] ; 3 uses
  %i.y = or disjoint i32 %.0.lcssa, 3
  %i.z = icmp slt i32 %i.y, %i.x
  br i1 %i.z, label %.lr.ph91, label %.preheader

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.087 = phi i32 [ %i.bt, %.lr.ph ], [ 0, %.noexc ]
  %.03086 = phi ptr [ %i.bs, %.lr.ph ], [ %i.v, %.noexc ] ; 3 uses
  %i.aa = load <8 x i16>, ptr %.03086, align 1, !tbaa !41 ; 2 uses
  %i.ab = shufflevector <8 x i16> %i.aa, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.ac = shufflevector <8 x i16> %i.aa, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 12, i32 4, i32 13, i32 5, i32 14, i32 6, i32 15, i32 7>
  %i.ad = shufflevector <8 x i16> %i.ab, <8 x i16> %i.ac, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 3 uses
  %i.ae = bitcast <16 x i16> %i.ad to <8 x float>
  %i.af = bitcast <16 x i16> %i.ad to <8 x i32>
  %i.ag = and <8 x i32> %i.af, splat (i32 -2147483648) ; 2 uses
  %i.ah = bitcast <16 x i16> %i.ad to <8 x i32>
  %i.ai = and <8 x i32> %i.ah, splat (i32 2147418112)
  %i.aj = bitcast <8 x i32> %i.ai to <8 x float>  ; 3 uses
  %i.ak = fcmp fast ugt <8 x float> %i.aj, splat (float 5.000000e-01) ; 2 uses
  %i.al = fmul fast <8 x float> %i.aj, splat (float 5.000000e-01)
  %i.am = fsub fast <8 x float> splat (float 5.000000e-01), %i.al
  %i.an = call fast noundef nofpclass(nan inf) <8 x float> @llvm.sqrt.v8f32(<8 x float> nofpclass(nan inf) %i.am)
  %i.ao = select <8 x i1> %i.ak, <8 x float> %i.an, <8 x float> %i.aj ; 3 uses
  %i.ap = fmul fast <8 x float> %i.ao, %i.ao      ; 3 uses
  %i.aq = fmul fast <8 x float> %i.ap, %i.ap      ; 4 uses
  %i.ar = fmul fast <8 x float> %i.aq, splat (float f0x3D2DBDCF)
  %i.as = fadd fast <8 x float> %i.ar, splat (float f0x3D3A73D8)
  %i.at = fmul fast <8 x float> %i.as, %i.aq
  %i.au = fadd fast <8 x float> %i.at, splat (float f0x3E2AAAF8)
  %i.av = fmul fast <8 x float> %i.aq, splat (float f0x3CC48F19)
  %i.aw = fadd fast <8 x float> %i.av, splat (float f0x3D997DCC)
  %i.ax = fmul fast <8 x float> %i.aw, %i.aq
  %i.ay = fadd fast <8 x float> %i.ax, splat (float 1.000000e+00)
  %i.az = fmul fast <8 x float> %i.au, %i.ap
  %i.ba = fadd fast <8 x float> %i.ay, %i.az
  %i.bb = fmul fast <8 x float> %i.ba, %i.ao      ; 2 uses
  %i.bc = bitcast <8 x float> %i.bb to <8 x i32>
  %i.bd = or <8 x i32> %i.ag, %i.bc
  %i.be = bitcast <8 x i32> %i.bd to <8 x float>
  %i.bf = fsub fast <8 x float> splat (float f0x3FC90FDB), %i.be
  %i.bg = fcmp fast olt <8 x float> %i.ae, zeroinitializer
  %i.bh = select <8 x i1> %i.bg, <8 x float> splat (float f0x40490FDB), <8 x float> zeroinitializer
  %factor84 = fmul fast <8 x float> %i.bb, splat (float 2.000000e+00)
  %i.bi = bitcast <8 x float> %factor84 to <8 x i32>
  %i.bj = or <8 x i32> %i.ag, %i.bi
  %i.bk = bitcast <8 x i32> %i.bj to <8 x float>
  %i.bl = fadd fast <8 x float> %i.bh, %i.bk
  %.v83 = select <8 x i1> %i.ak, <8 x float> %i.bl, <8 x float> %i.bf
  %i.bm = bitcast <8 x float> %.v83 to <8 x i32>  ; 2 uses
  %i.bn = shufflevector <8 x i32> %i.bm, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bo = shufflevector <8 x i32> %i.bm, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bp = lshr <4 x i32> %i.bn, splat (i32 16)
  %i.bq = lshr <4 x i32> %i.bo, splat (i32 16)
  %i.br = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bp, <4 x i32> %i.bq)
  store <8 x i16> %i.br, ptr %.03086, align 1, !tbaa !41
  %i.bs = getelementptr inbounds nuw i8, ptr %.03086, i64 16 ; 2 uses
  %i.bt = add nuw nsw i32 %.087, 8                ; 3 uses
  %i.bu = or disjoint i32 %i.bt, 7
  %i.bv = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.bw = icmp slt i32 %i.bu, %i.bv
  br i1 %i.bw, label %.lr.ph, label %.preheader85, !llvm.loop !366

.preheader:                                       ; preds = %.lr.ph91, %.preheader85
  %i.bx = phi i32 [ %i.x, %.preheader85 ], [ %i.ey, %.lr.ph91 ] ; 4 uses
  %.131.lcssa = phi ptr [ %.030.lcssa, %.preheader85 ], [ %i.ev, %.lr.ph91 ] ; 5 uses
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader85 ], [ %i.ew, %.lr.ph91 ] ; 5 uses
  %i.by = icmp slt i32 %.1.lcssa, %i.bx
  br i1 %i.by, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.preheader
  %i.bz = xor i32 %.1.lcssa, -1
  %i.ca = add i32 %i.bx, %i.bz                    ; 3 uses
  %i.cb = zext i32 %i.ca to i64
  %i.cc = add nuw nsw i64 %i.cb, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.ca, 3
  br i1 %min.iters.check, label %.lr.ph97.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check125 = icmp ult i32 %i.ca, 15
  br i1 %min.iters.check125, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cd = and i64 %i.cc, 12
  %n.vec = and i64 %i.cc, 8589934576              ; 5 uses
  %i.ce = trunc i64 %n.vec to i32
  %i.cf = add i32 %.1.lcssa, %i.ce
  %i.cg = shl nuw nsw i64 %n.vec, 1
  %i.ch = getelementptr i8, ptr %.131.lcssa, i64 %i.cg
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ci = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.131.lcssa, i64 %i.ci ; 2 uses
  %wide.load = load <16 x i16>, ptr %next.gep, align 2, !tbaa !51
  %i.cj = zext <16 x i16> %wide.load to <16 x i32>
  %i.ck = shl nuw <16 x i32> %i.cj, splat (i32 16)
  %i.cl = bitcast <16 x i32> %i.ck to <16 x float>
  %i.cm = call fast <16 x float> @llvm.acos.v16f32(<16 x float> %i.cl)
  %i.cn = bitcast <16 x float> %i.cm to <16 x i32>
  %i.co = lshr <16 x i32> %i.cn, splat (i32 16)
  %i.cp = trunc nuw <16 x i32> %i.co to <16 x i16>
  store <16 x i16> %i.cp, ptr %next.gep, align 2, !tbaa !51
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cq = icmp eq i64 %index.next, %n.vec
  br i1 %i.cq, label %middle.block, label %vector.body, !llvm.loop !367

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cc, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.cd, 0
  br i1 %min.epilog.iters.check, label %.lr.ph97.preheader, label %vec.epilog.ph, !prof !52

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec126 = and i64 %i.cc, 8589934588           ; 4 uses
  %i.cr = trunc i64 %n.vec126 to i32
  %i.cs = add i32 %.1.lcssa, %i.cr
  %i.ct = shl nuw nsw i64 %n.vec126, 1
  %i.cu = getelementptr i8, ptr %.131.lcssa, i64 %i.ct
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index127 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next130, %vec.epilog.vector.body ] ; 2 uses
  %i.cv = shl i64 %index127, 1
  %next.gep128 = getelementptr i8, ptr %.131.lcssa, i64 %i.cv ; 2 uses
  %wide.load129 = load <4 x i16>, ptr %next.gep128, align 2, !tbaa !51
  %i.cw = zext <4 x i16> %wide.load129 to <4 x i32>
  %i.cx = shl nuw <4 x i32> %i.cw, splat (i32 16)
  %i.cy = bitcast <4 x i32> %i.cx to <4 x float>
  %i.cz = call fast <4 x float> @llvm.acos.v4f32(<4 x float> %i.cy)
  %i.da = bitcast <4 x float> %i.cz to <4 x i32>
  %i.db = lshr <4 x i32> %i.da, splat (i32 16)
  %i.dc = trunc nuw <4 x i32> %i.db to <4 x i16>
  store <4 x i16> %i.dc, ptr %next.gep128, align 2, !tbaa !51
  %index.next130 = add nuw i64 %index127, 4       ; 2 uses
  %i.dd = icmp eq i64 %index.next130, %n.vec126
  br i1 %i.dd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !368

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n131 = icmp eq i64 %i.cc, %n.vec126
  br i1 %cmp.n131, label %._crit_edge, label %.lr.ph97.preheader

.lr.ph97.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.296.ph = phi i32 [ %.1.lcssa, %iter.check ], [ %i.cf, %vec.epilog.iter.check ], [ %i.cs, %vec.epilog.middle.block ]
  %.23295.ph = phi ptr [ %.131.lcssa, %iter.check ], [ %i.ch, %vec.epilog.iter.check ], [ %i.cu, %vec.epilog.middle.block ]
  br label %.lr.ph97

.lr.ph91:                                         ; preds = %.preheader85, %.lr.ph91
  %.190 = phi i32 [ %i.ew, %.lr.ph91 ], [ %.0.lcssa, %.preheader85 ]
  %.13189 = phi ptr [ %i.ev, %.lr.ph91 ], [ %.030.lcssa, %.preheader85 ] ; 3 uses
  %i.de = load i64, ptr %.13189, align 1, !tbaa !41
  %i.df = insertelement <2 x i64> poison, i64 %i.de, i64 0
  %i.dg = bitcast <2 x i64> %i.df to <8 x i16>
  %i.dh = shufflevector <8 x i16> %i.dg, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3> ; 3 uses
  %i.di = bitcast <8 x i16> %i.dh to <4 x float>
  %i.dj = bitcast <8 x i16> %i.dh to <4 x i32>
  %i.dk = and <4 x i32> %i.dj, splat (i32 -2147483648) ; 2 uses
  %i.dl = bitcast <8 x i16> %i.dh to <4 x i32>
  %i.dm = and <4 x i32> %i.dl, splat (i32 2147418112)
  %i.dn = bitcast <4 x i32> %i.dm to <4 x float>  ; 3 uses
  %i.do = fcmp fast ugt <4 x float> %i.dn, splat (float 5.000000e-01) ; 2 uses
  %i.dp = fmul fast <4 x float> %i.dn, splat (float 5.000000e-01)
  %i.dq = fsub fast <4 x float> splat (float 5.000000e-01), %i.dp
  %i.dr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.sqrt.v4f32(<4 x float> nofpclass(nan inf) %i.dq)
  %i.ds = select <4 x i1> %i.do, <4 x float> %i.dr, <4 x float> %i.dn ; 3 uses
  %i.dt = fmul fast <4 x float> %i.ds, %i.ds      ; 3 uses
  %i.du = fmul fast <4 x float> %i.dt, %i.dt      ; 4 uses
  %i.dv = fmul fast <4 x float> %i.du, splat (float f0x3D2DBDCF)
  %i.dw = fadd fast <4 x float> %i.dv, splat (float f0x3D3A73D8)
  %i.dx = fmul fast <4 x float> %i.dw, %i.du
  %i.dy = fadd fast <4 x float> %i.dx, splat (float f0x3E2AAAF8)
  %i.dz = fmul fast <4 x float> %i.du, splat (float f0x3CC48F19)
  %i.ea = fadd fast <4 x float> %i.dz, splat (float f0x3D997DCC)
  %i.eb = fmul fast <4 x float> %i.ea, %i.du
  %i.ec = fadd fast <4 x float> %i.eb, splat (float 1.000000e+00)
  %i.ed = fmul fast <4 x float> %i.dy, %i.dt
  %i.ee = fadd fast <4 x float> %i.ec, %i.ed
  %i.ef = fmul fast <4 x float> %i.ee, %i.ds      ; 2 uses
  %i.eg = bitcast <4 x float> %i.ef to <4 x i32>
  %i.eh = or <4 x i32> %i.dk, %i.eg
  %i.ei = bitcast <4 x i32> %i.eh to <4 x float>
  %i.ej = fsub fast <4 x float> splat (float f0x3FC90FDB), %i.ei
  %i.ek = fcmp fast olt <4 x float> %i.di, zeroinitializer
  %i.el = select <4 x i1> %i.ek, <4 x float> splat (float f0x40490FDB), <4 x float> zeroinitializer
  %factor = fmul fast <4 x float> %i.ef, splat (float 2.000000e+00)
  %i.em = bitcast <4 x float> %factor to <4 x i32>
  %i.en = or <4 x i32> %i.dk, %i.em
  %i.eo = bitcast <4 x i32> %i.en to <4 x float>
  %i.ep = fadd fast <4 x float> %i.el, %i.eo
  %.v = select <4 x i1> %i.do, <4 x float> %i.ep, <4 x float> %i.ej
  %i.eq = bitcast <4 x float> %.v to <4 x i32>
  %i.er = lshr <4 x i32> %i.eq, splat (i32 16)
  %i.es = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.er, <4 x i32> poison)
  %i.et = bitcast <8 x i16> %i.es to <2 x i64>
  %i.eu = extractelement <2 x i64> %i.et, i64 0
  store i64 %i.eu, ptr %.13189, align 1, !tbaa !41
  %i.ev = getelementptr inbounds nuw i8, ptr %.13189, i64 8 ; 2 uses
  %i.ew = add nuw nsw i32 %.190, 4                ; 3 uses
  %i.ex = or disjoint i32 %i.ew, 3
  %i.ey = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.ez = icmp slt i32 %i.ex, %i.ey
  br i1 %i.ez, label %.lr.ph91, label %.preheader, !llvm.loop !369

.lr.ph97:                                         ; preds = %.lr.ph97.preheader, %.lr.ph97
  %.296 = phi i32 [ %i.fj, %.lr.ph97 ], [ %.296.ph, %.lr.ph97.preheader ]
  %.23295 = phi ptr [ %i.fi, %.lr.ph97 ], [ %.23295.ph, %.lr.ph97.preheader ] ; 3 uses
  %i.fa = load i16, ptr %.23295, align 2, !tbaa !51
  %i.fb = zext i16 %i.fa to i32
  %i.fc = shl nuw i32 %i.fb, 16
  %i.fd = bitcast i32 %i.fc to float
  %i.fe = call fast noundef nofpclass(nan inf) float @llvm.acos.f32(float %i.fd)
  %i.ff = bitcast float %i.fe to i32
  %i.fg = lshr i32 %i.ff, 16
  %i.fh = trunc nuw i32 %i.fg to i16
  store i16 %i.fh, ptr %.23295, align 2, !tbaa !51
  %i.fi = getelementptr inbounds nuw i8, ptr %.23295, i64 2
  %i.fj = add nuw nsw i32 %.296, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.fj, %i.bx
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph97, !llvm.loop !370

._crit_edge:                                      ; preds = %.lr.ph97, %middle.block, %vec.epilog.middle.block, %.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond107.not = icmp eq i32 %i.o, %lftr.wideiv
  br i1 %exitcond107.not, label %._crit_edge100, label %.noexc

._crit_edge100:                                   ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge100, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL22unary_op_inplace_bf16sINS_23UnaryOp_x86_avx_functor13unary_op_atanEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #7 personality ptr @__gxx_personality_v0 {
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
  %.not112 = icmp sgt i32 %i.k, %i.j
  br i1 %.not112, label %._crit_edge114, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  %i.o = add nsw i32 %i.j, 1
  %.pre = load i32, ptr %4, align 4, !tbaa !37
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %._crit_edge
  %i.p = phi i32 [ %.pre, %.noexc.lr.ph ], [ %i.bu, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !39, !noalias !379
  %i.r = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !379
  %i.s = mul i64 %i.r, %indvars.iv
  %i.t = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !379
  %i.u = mul i64 %i.s, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.u ; 2 uses
  %i.w = icmp sgt i32 %i.p, 7
  br i1 %i.w, label %.lr.ph, label %.preheader99

.preheader99:                                     ; preds = %.lr.ph, %.noexc
  %i.x = phi i32 [ %i.p, %.noexc ], [ %i.bs, %.lr.ph ] ; 2 uses
  %.030.lcssa = phi ptr [ %i.v, %.noexc ], [ %i.bp, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.bq, %.lr.ph ] ; 3 uses
  %i.y = or disjoint i32 %.0.lcssa, 3
  %i.z = icmp slt i32 %i.y, %i.x
  br i1 %i.z, label %.lr.ph105, label %.preheader

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.0101 = phi i32 [ %i.bq, %.lr.ph ], [ 0, %.noexc ]
  %.030100 = phi ptr [ %i.bp, %.lr.ph ], [ %i.v, %.noexc ] ; 3 uses
  %i.aa = load <8 x i16>, ptr %.030100, align 1, !tbaa !41 ; 2 uses
  %i.ab = shufflevector <8 x i16> %i.aa, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.ac = shufflevector <8 x i16> %i.aa, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 12, i32 4, i32 13, i32 5, i32 14, i32 6, i32 15, i32 7>
  %i.ad = shufflevector <8 x i16> %i.ab, <8 x i16> %i.ac, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.ae = bitcast <16 x i16> %i.ad to <8 x i32>
  %i.af = and <8 x i32> %i.ae, splat (i32 -2147483648)
  %i.ag = bitcast <16 x i16> %i.ad to <8 x i32>
  %i.ah = and <8 x i32> %i.ag, splat (i32 2147418112)
  %i.ai = bitcast <8 x i32> %i.ah to <8 x float>  ; 3 uses
  %i.aj = fcmp fast ogt <8 x float> %i.ai, splat (float 1.000000e+00) ; 2 uses
  %i.ak = select <8 x i1> %i.aj, <8 x float> splat (float -1.000000e+00), <8 x float> %i.ai
  %i.al = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.ai, <8 x float> splat (float 1.000000e+00))
  %i.am = fdiv fast <8 x float> %i.ak, %i.al      ; 3 uses
  %i.an = fmul fast <8 x float> %i.am, %i.am      ; 3 uses
  %i.ao = fmul fast <8 x float> %i.an, %i.an      ; 7 uses
  %i.ap = fmul fast <8 x float> %i.ao, splat (float f0x3C83A25C)
  %i.aq = fsub fast <8 x float> splat (float f0xBD99B01E), %i.ap
  %i.ar = fmul fast <8 x float> %i.aq, %i.ao
  %i.as = fadd fast <8 x float> %i.ar, splat (float f0xBE117200)
  %i.at = fmul fast <8 x float> %i.as, %i.ao
  %i.au = fadd fast <8 x float> %i.at, splat (float f0xBEAAAA53)
  %i.av = fmul fast <8 x float> %i.ao, splat (float f0x3B3AC537)
  %i.aw = fadd fast <8 x float> %i.av, splat (float f0x3D2EDD4E)
  %i.ax = fmul fast <8 x float> %i.aw, %i.ao
  %i.ay = fadd fast <8 x float> %i.ax, splat (float f0x3DD9ED24)
  %i.az = fmul fast <8 x float> %i.ay, %i.ao
  %i.ba = fadd fast <8 x float> %i.az, splat (float f0x3E4CB974)
  %i.bb = fmul fast <8 x float> %i.ba, %i.ao
  %i.bc = fadd fast <8 x float> %i.bb, splat (float 1.000000e+00)
  %i.bd = fmul fast <8 x float> %i.au, %i.an
  %i.be = fadd fast <8 x float> %i.bc, %i.bd
  %i.bf = fmul fast <8 x float> %i.be, %i.am
  %i.bg = select <8 x i1> %i.aj, <8 x float> splat (float f0x3FC90FDB), <8 x float> zeroinitializer
  %i.bh = fadd fast <8 x float> %i.bf, %i.bg
  %i.bi = bitcast <8 x float> %i.bh to <8 x i32>
  %i.bj = or <8 x i32> %i.af, %i.bi               ; 2 uses
  %i.bk = shufflevector <8 x i32> %i.bj, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bl = shufflevector <8 x i32> %i.bj, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bm = lshr <4 x i32> %i.bk, splat (i32 16)
  %i.bn = lshr <4 x i32> %i.bl, splat (i32 16)
  %i.bo = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bm, <4 x i32> %i.bn)
  store <8 x i16> %i.bo, ptr %.030100, align 1, !tbaa !41
  %i.bp = getelementptr inbounds nuw i8, ptr %.030100, i64 16 ; 2 uses
  %i.bq = add nuw nsw i32 %.0101, 8               ; 3 uses
  %i.br = or disjoint i32 %i.bq, 7
  %i.bs = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.bt = icmp slt i32 %i.br, %i.bs
  br i1 %i.bt, label %.lr.ph, label %.preheader99, !llvm.loop !374

.preheader:                                       ; preds = %.lr.ph105, %.preheader99
  %i.bu = phi i32 [ %i.x, %.preheader99 ], [ %i.es, %.lr.ph105 ] ; 4 uses
  %.131.lcssa = phi ptr [ %.030.lcssa, %.preheader99 ], [ %i.ep, %.lr.ph105 ] ; 5 uses
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader99 ], [ %i.eq, %.lr.ph105 ] ; 5 uses
  %i.bv = icmp slt i32 %.1.lcssa, %i.bu
  br i1 %i.bv, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.preheader
  %i.bw = xor i32 %.1.lcssa, -1
  %i.bx = add i32 %i.bu, %i.bw                    ; 3 uses
  %i.by = zext i32 %i.bx to i64
  %i.bz = add nuw nsw i64 %i.by, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.bx, 3
  br i1 %min.iters.check, label %.lr.ph111.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check139 = icmp ult i32 %i.bx, 15
  br i1 %min.iters.check139, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ca = and i64 %i.bz, 12
  %n.vec = and i64 %i.bz, 8589934576              ; 5 uses
  %i.cb = trunc i64 %n.vec to i32
  %i.cc = add i32 %.1.lcssa, %i.cb
  %i.cd = shl nuw nsw i64 %n.vec, 1
  %i.ce = getelementptr i8, ptr %.131.lcssa, i64 %i.cd
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cf = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.131.lcssa, i64 %i.cf ; 2 uses
  %wide.load = load <16 x i16>, ptr %next.gep, align 2, !tbaa !51
  %i.cg = zext <16 x i16> %wide.load to <16 x i32>
  %i.ch = shl nuw <16 x i32> %i.cg, splat (i32 16)
  %i.ci = bitcast <16 x i32> %i.ch to <16 x float>
  %i.cj = call fast <16 x float> @llvm.atan.v16f32(<16 x float> %i.ci)
  %i.ck = bitcast <16 x float> %i.cj to <16 x i32>
  %i.cl = lshr <16 x i32> %i.ck, splat (i32 16)
  %i.cm = trunc nuw <16 x i32> %i.cl to <16 x i16>
  store <16 x i16> %i.cm, ptr %next.gep, align 2, !tbaa !51
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cn = icmp eq i64 %index.next, %n.vec
  br i1 %i.cn, label %middle.block, label %vector.body, !llvm.loop !375

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bz, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ca, 0
  br i1 %min.epilog.iters.check, label %.lr.ph111.preheader, label %vec.epilog.ph, !prof !52

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec140 = and i64 %i.bz, 8589934588           ; 4 uses
  %i.co = trunc i64 %n.vec140 to i32
  %i.cp = add i32 %.1.lcssa, %i.co
  %i.cq = shl nuw nsw i64 %n.vec140, 1
  %i.cr = getelementptr i8, ptr %.131.lcssa, i64 %i.cq
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index141 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next144, %vec.epilog.vector.body ] ; 2 uses
  %i.cs = shl i64 %index141, 1
  %next.gep142 = getelementptr i8, ptr %.131.lcssa, i64 %i.cs ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN4ncnnL22unary_op_inplace_bf16sINS_23UnaryOp_x86_avx_functor14unary_op_asinhEEEiRNS_3MatERKNS_6OptionE.omp_outlined:bb.a
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph217, !llvm.loop !446

._crit_edge:                                      ; preds = %.lr.ph217, %.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond227.not = icmp eq i32 %i.o, %lftr.wideiv
  br i1 %exitcond227.not, label %._crit_edge220, label %.noexc

._crit_edge220:                                   ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge220, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL22unary_op_inplace_bf16sINS_23UnaryOp_x86_avx_functor13unary_op_coshEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #7 personality ptr @__gxx_personality_v0 {
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
  %i.p = phi i32 [ %.pre, %.noexc.lr.ph ], [ %i.cz, %._crit_edge ] ; 2 uses
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
  %i.x = phi i32 [ %i.p, %.noexc ], [ %i.cx, %.lr.ph ] ; 2 uses
  %.030.lcssa = phi ptr [ %i.v, %.noexc ], [ %i.cu, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.cv, %.lr.ph ] ; 3 uses
  %i.y = or disjoint i32 %.0.lcssa, 3
  %i.z = icmp slt i32 %i.y, %i.x
  br i1 %i.z, label %.lr.ph152, label %.preheader

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.0148 = phi i32 [ %i.cv, %.lr.ph ], [ 0, %.noexc ]
  %.030147 = phi ptr [ %i.cu, %.lr.ph ], [ %i.v, %.noexc ] ; 3 uses
  %i.aa = load <8 x i16>, ptr %.030147, align 1, !tbaa !41 ; 2 uses
  %i.ab = shufflevector <8 x i16> %i.aa, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.ac = shufflevector <8 x i16> %i.aa, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 12, i32 4, i32 13, i32 5, i32 14, i32 6, i32 15, i32 7>
  %i.ad = shufflevector <8 x i16> %i.ab, <8 x i16> %i.ac, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ae = bitcast <16 x i16> %i.ad to <8 x float> ; 2 uses
  %i.af = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ae, <8 x float> splat (float f0x42B0C0A5))
  %i.ag = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.af, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ah = fmul fast <8 x float> %i.ag, splat (float f0x3FB8AA3B)
  %i.ai = fadd fast <8 x float> %i.ah, splat (float 5.000000e-01) ; 2 uses
  %i.aj = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ai, i32 1) ; 2 uses
  %i.ak = fcmp fast ogt <8 x float> %i.aj, %i.ai
  %i.al = select <8 x i1> %i.ak, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.am = fsub fast <8 x float> %i.aj, %i.al      ; 2 uses
  %i.an = fmul fast <8 x float> %i.am, splat (float f0x3F317218)
  %i.ao = fsub fast <8 x float> %i.ag, %i.an      ; 8 uses
  %i.ap = fmul fast <8 x float> %i.ao, %i.ao
  %i.aq = fmul fast <8 x float> %i.ao, splat (float f0x39506967)
  %i.ar = fadd fast <8 x float> %i.aq, splat (float f0x3AB743CE)
  %i.as = fmul fast <8 x float> %i.ar, %i.ao
  %i.at = fadd fast <8 x float> %i.as, splat (float f0x3C088908)
  %i.au = fmul fast <8 x float> %i.at, %i.ao
  %i.av = fadd fast <8 x float> %i.au, splat (float f0x3D2AA9C1)
  %i.aw = fmul fast <8 x float> %i.av, %i.ao
  %i.ax = fadd fast <8 x float> %i.aw, splat (float f0x3E2AAAAA)
  %i.ay = fmul fast <8 x float> %i.ax, %i.ao
  %i.az = fadd fast <8 x float> %i.ay, splat (float 5.000000e-01)
  %i.ba = fmul fast <8 x float> %i.ap, %i.az
  %i.bb = fadd fast <8 x float> %i.ao, splat (float 1.000000e+00)
  %i.bc = fadd fast <8 x float> %i.bb, %i.ba
  %i.bd = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.am)
  %i.be = shl <8 x i32> %i.bd, splat (i32 23)
  %i.bf = add <8 x i32> %i.be, splat (i32 1065353216)
  %i.bg = bitcast <8 x i32> %i.bf to <8 x float>
  %i.bh = fmul fast <8 x float> %i.bc, %i.bg
  %i.bi = fneg fast <8 x float> %i.ae
  %i.bj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.bi, <8 x float> splat (float f0x42B0C0A5))
  %i.bk = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.bj, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.bl = fmul fast <8 x float> %i.bk, splat (float f0x3FB8AA3B)
  %i.bm = fadd fast <8 x float> %i.bl, splat (float 5.000000e-01) ; 2 uses
  %i.bn = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.bm, i32 1) ; 2 uses
  %i.bo = fcmp fast ogt <8 x float> %i.bn, %i.bm
  %i.bp = select <8 x i1> %i.bo, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.bq = fsub fast <8 x float> %i.bn, %i.bp      ; 2 uses
  %i.br = fmul fast <8 x float> %i.bq, splat (float f0x3F317218)
  %i.bs = fsub fast <8 x float> %i.bk, %i.br      ; 8 uses
  %i.bt = fmul fast <8 x float> %i.bs, %i.bs
  %i.bu = fmul fast <8 x float> %i.bs, splat (float f0x39506967)
  %i.bv = fadd fast <8 x float> %i.bu, splat (float f0x3AB743CE)
  %i.bw = fmul fast <8 x float> %i.bv, %i.bs
  %i.bx = fadd fast <8 x float> %i.bw, splat (float f0x3C088908)
  %i.by = fmul fast <8 x float> %i.bx, %i.bs
  %i.bz = fadd fast <8 x float> %i.by, splat (float f0x3D2AA9C1)
  %i.ca = fmul fast <8 x float> %i.bz, %i.bs
  %i.cb = fadd fast <8 x float> %i.ca, splat (float f0x3E2AAAAA)
  %i.cc = fmul fast <8 x float> %i.cb, %i.bs
  %i.cd = fadd fast <8 x float> %i.cc, splat (float 5.000000e-01)
  %i.ce = fmul fast <8 x float> %i.bt, %i.cd
  %i.cf = fadd fast <8 x float> %i.bs, splat (float 1.000000e+00)
  %i.cg = fadd fast <8 x float> %i.cf, %i.ce
  %i.ch = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.bq)
  %i.ci = shl <8 x i32> %i.ch, splat (i32 23)
  %i.cj = add <8 x i32> %i.ci, splat (i32 1065353216)
  %i.ck = bitcast <8 x i32> %i.cj to <8 x float>
  %i.cl = fmul fast <8 x float> %i.cg, %i.ck
  %i.cm = fadd fast <8 x float> %i.cl, %i.bh
  %i.cn = fmul fast <8 x float> %i.cm, splat (float 5.000000e-01)
  %i.co = bitcast <8 x float> %i.cn to <8 x i32>  ; 2 uses
  %i.cp = shufflevector <8 x i32> %i.co, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cq = shufflevector <8 x i32> %i.co, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.cr = lshr <4 x i32> %i.cp, splat (i32 16)
  %i.cs = lshr <4 x i32> %i.cq, splat (i32 16)
  %i.ct = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.cr, <4 x i32> %i.cs)
  store <8 x i16> %i.ct, ptr %.030147, align 1, !tbaa !41
  %i.cu = getelementptr inbounds nuw i8, ptr %.030147, i64 16 ; 2 uses
  %i.cv = add nuw nsw i32 %.0148, 8               ; 3 uses
  %i.cw = or disjoint i32 %i.cv, 7
  %i.cx = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.cy = icmp slt i32 %i.cw, %i.cx
  br i1 %i.cy, label %.lr.ph, label %.preheader146, !llvm.loop !450

.preheader:                                       ; preds = %.lr.ph152, %.preheader146
  %i.cz = phi i32 [ %i.x, %.preheader146 ], [ %i.he, %.lr.ph152 ] ; 4 uses
  %.131.lcssa = phi ptr [ %.030.lcssa, %.preheader146 ], [ %i.hb, %.lr.ph152 ] ; 5 uses
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader146 ], [ %i.hc, %.lr.ph152 ] ; 5 uses
  %i.da = icmp slt i32 %.1.lcssa, %i.cz
  br i1 %i.da, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.preheader
  %i.db = xor i32 %.1.lcssa, -1
  %i.dc = add i32 %i.cz, %i.db                    ; 3 uses
  %i.dd = zext i32 %i.dc to i64
  %i.de = add nuw nsw i64 %i.dd, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.dc, 3
  br i1 %min.iters.check, label %.lr.ph158.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check186 = icmp ult i32 %i.dc, 15
  br i1 %min.iters.check186, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.df = and i64 %i.de, 12
  %n.vec = and i64 %i.de, 8589934576              ; 5 uses
  %i.dg = trunc i64 %n.vec to i32
  %i.dh = add i32 %.1.lcssa, %i.dg
  %i.di = shl nuw nsw i64 %n.vec, 1
  %i.dj = getelementptr i8, ptr %.131.lcssa, i64 %i.di
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dk = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.131.lcssa, i64 %i.dk ; 2 uses
  %wide.load = load <16 x i16>, ptr %next.gep, align 2, !tbaa !51
  %i.dl = zext <16 x i16> %wide.load to <16 x i32>
  %i.dm = shl nuw <16 x i32> %i.dl, splat (i32 16)
  %i.dn = bitcast <16 x i32> %i.dm to <16 x float>
  %i.do = call fast <16 x float> @llvm.cosh.v16f32(<16 x float> %i.dn)
  %i.dp = bitcast <16 x float> %i.do to <16 x i32>
  %i.dq = lshr <16 x i32> %i.dp, splat (i32 16)
  %i.dr = trunc nuw <16 x i32> %i.dq to <16 x i16>
  store <16 x i16> %i.dr, ptr %next.gep, align 2, !tbaa !51
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ds = icmp eq i64 %index.next, %n.vec
  br i1 %i.ds, label %middle.block, label %vector.body, !llvm.loop !451

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.de, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.df, 0
  br i1 %min.epilog.iters.check, label %.lr.ph158.preheader, label %vec.epilog.ph, !prof !52

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec187 = and i64 %i.de, 8589934588           ; 4 uses
  %i.dt = trunc i64 %n.vec187 to i32
  %i.du = add i32 %.1.lcssa, %i.dt
  %i.dv = shl nuw nsw i64 %n.vec187, 1
  %i.dw = getelementptr i8, ptr %.131.lcssa, i64 %i.dv
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index188 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next191, %vec.epilog.vector.body ] ; 2 uses
  %i.dx = shl i64 %index188, 1
  %next.gep189 = getelementptr i8, ptr %.131.lcssa, i64 %i.dx ; 2 uses
  %wide.load190 = load <4 x i16>, ptr %next.gep189, align 2, !tbaa !51
  %i.dy = zext <4 x i16> %wide.load190 to <4 x i32>
  %i.dz = shl nuw <4 x i32> %i.dy, splat (i32 16)
  %i.ea = bitcast <4 x i32> %i.dz to <4 x float>
  %i.eb = call fast <4 x float> @llvm.cosh.v4f32(<4 x float> %i.ea)
  %i.ec = bitcast <4 x float> %i.eb to <4 x i32>
  %i.ed = lshr <4 x i32> %i.ec, splat (i32 16)
  %i.ee = trunc nuw <4 x i32> %i.ed to <4 x i16>
  store <4 x i16> %i.ee, ptr %next.gep189, align 2, !tbaa !51
  %index.next191 = add nuw i64 %index188, 4       ; 2 uses
  %i.ef = icmp eq i64 %index.next191, %n.vec187
  br i1 %i.ef, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !452

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n192 = icmp eq i64 %i.de, %n.vec187
  br i1 %cmp.n192, label %._crit_edge, label %.lr.ph158.preheader

.lr.ph158.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.2157.ph = phi i32 [ %.1.lcssa, %iter.check ], [ %i.dh, %vec.epilog.iter.check ], [ %i.du, %vec.epilog.middle.block ]
  %.232156.ph = phi ptr [ %.131.lcssa, %iter.check ], [ %i.dj, %vec.epilog.iter.check ], [ %i.dw, %vec.epilog.middle.block ]
  br label %.lr.ph158

.lr.ph152:                                        ; preds = %.preheader146, %.lr.ph152
  %.1151 = phi i32 [ %i.hc, %.lr.ph152 ], [ %.0.lcssa, %.preheader146 ]
  %.131150 = phi ptr [ %i.hb, %.lr.ph152 ], [ %.030.lcssa, %.preheader146 ] ; 3 uses
  %i.eg = load i64, ptr %.131150, align 1, !tbaa !41
  %i.eh = insertelement <2 x i64> poison, i64 %i.eg, i64 0
  %i.ei = bitcast <2 x i64> %i.eh to <8 x i16>
  %i.ej = shufflevector <8 x i16> %i.ei, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.ek = bitcast <8 x i16> %i.ej to <4 x float>  ; 2 uses
  %i.el = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ek, <4 x float> splat (float f0x42B0C0A5))
  %i.em = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.el, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.en = fmul fast <4 x float> %i.em, splat (float f0x3FB8AA3B)
  %i.eo = fadd fast <4 x float> %i.en, splat (float 5.000000e-01) ; 2 uses
  %i.ep = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.eo)
  %i.eq = sitofp fast <4 x i32> %i.ep to <4 x float> ; 2 uses
  %i.er = fcmp fast olt <4 x float> %i.eo, %i.eq
  %i.es = select <4 x i1> %i.er, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.et = fsub fast <4 x float> %i.eq, %i.es      ; 2 uses
  %i.eu = fmul fast <4 x float> %i.et, splat (float f0x3F317218)
  %i.ev = fsub fast <4 x float> %i.em, %i.eu      ; 8 uses
  %i.ew = fmul fast <4 x float> %i.ev, %i.ev
  %i.ex = fmul fast <4 x float> %i.ev, splat (float f0x39506967)
  %i.ey = fadd fast <4 x float> %i.ex, splat (float f0x3AB743CE)
  %i.ez = fmul fast <4 x float> %i.ey, %i.ev
  %i.fa = fadd fast <4 x float> %i.ez, splat (float f0x3C088908)
  %i.fb = fmul fast <4 x float> %i.fa, %i.ev
  %i.fc = fadd fast <4 x float> %i.fb, splat (float f0x3D2AA9C1)
  %i.fd = fmul fast <4 x float> %i.fc, %i.ev
  %i.fe = fadd fast <4 x float> %i.fd, splat (float f0x3E2AAAAA)
  %i.ff = fmul fast <4 x float> %i.fe, %i.ev
  %i.fg = fadd fast <4 x float> %i.ff, splat (float 5.000000e-01)
  %i.fh = fmul fast <4 x float> %i.ew, %i.fg
  %i.fi = fadd fast <4 x float> %i.ev, splat (float 1.000000e+00)
  %i.fj = fadd fast <4 x float> %i.fi, %i.fh
  %i.fk = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.et)
  %i.fl = shl <4 x i32> %i.fk, splat (i32 23)
  %i.fm = add <4 x i32> %i.fl, splat (i32 1065353216)
  %i.fn = bitcast <4 x i32> %i.fm to <4 x float>
  %i.fo = fmul fast <4 x float> %i.fj, %i.fn
  %i.fp = fneg fast <4 x float> %i.ek
  %i.fq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.fp, <4 x float> splat (float f0x42B0C0A5))
  %i.fr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.fq, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.fs = fmul fast <4 x float> %i.fr, splat (float f0x3FB8AA3B)
  %i.ft = fadd fast <4 x float> %i.fs, splat (float 5.000000e-01) ; 2 uses
  %i.fu = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ft)
  %i.fv = sitofp fast <4 x i32> %i.fu to <4 x float> ; 2 uses
  %i.fw = fcmp fast olt <4 x float> %i.ft, %i.fv
  %i.fx = select <4 x i1> %i.fw, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.fy = fsub fast <4 x float> %i.fv, %i.fx      ; 2 uses
  %i.fz = fmul fast <4 x float> %i.fy, splat (float f0x3F317218)
  %i.ga = fsub fast <4 x float> %i.fr, %i.fz      ; 8 uses
  %i.gb = fmul fast <4 x float> %i.ga, %i.ga
  %i.gc = fmul fast <4 x float> %i.ga, splat (float f0x39506967)
  %i.gd = fadd fast <4 x float> %i.gc, splat (float f0x3AB743CE)
  %i.ge = fmul fast <4 x float> %i.gd, %i.ga
  %i.gf = fadd fast <4 x float> %i.ge, splat (float f0x3C088908)
  %i.gg = fmul fast <4 x float> %i.gf, %i.ga
  %i.gh = fadd fast <4 x float> %i.gg, splat (float f0x3D2AA9C1)
  %i.gi = fmul fast <4 x float> %i.gh, %i.ga
  %i.gj = fadd fast <4 x float> %i.gi, splat (float f0x3E2AAAAA)
  %i.gk = fmul fast <4 x float> %i.gj, %i.ga
  %i.gl = fadd fast <4 x float> %i.gk, splat (float 5.000000e-01)
  %i.gm = fmul fast <4 x float> %i.gb, %i.gl
  %i.gn = fadd fast <4 x float> %i.ga, splat (float 1.000000e+00)
  %i.go = fadd fast <4 x float> %i.gn, %i.gm
  %i.gp = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fy)
  %i.gq = shl <4 x i32> %i.gp, splat (i32 23)
  %i.gr = add <4 x i32> %i.gq, splat (i32 1065353216)
  %i.gs = bitcast <4 x i32> %i.gr to <4 x float>
  %i.gt = fmul fast <4 x float> %i.go, %i.gs
  %i.gu = fadd fast <4 x float> %i.gt, %i.fo
  %i.gv = fmul fast <4 x float> %i.gu, splat (float 5.000000e-01)
  %i.gw = bitcast <4 x float> %i.gv to <4 x i32>
  %i.gx = lshr <4 x i32> %i.gw, splat (i32 16)
  %i.gy = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.gx, <4 x i32> poison)
  %i.gz = bitcast <8 x i16> %i.gy to <2 x i64>
  %i.ha = extractelement <2 x i64> %i.gz, i64 0
  store i64 %i.ha, ptr %.131150, align 1, !tbaa !41
  %i.hb = getelementptr inbounds nuw i8, ptr %.131150, i64 8 ; 2 uses
  %i.hc = add nuw nsw i32 %.1151, 4               ; 3 uses
  %i.hd = or disjoint i32 %i.hc, 3
  %i.he = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.hf = icmp slt i32 %i.hd, %i.he
  br i1 %i.hf, label %.lr.ph152, label %.preheader, !llvm.loop !453

.lr.ph158:                                        ; preds = %.lr.ph158.preheader, %.lr.ph158
  %.2157 = phi i32 [ %i.hp, %.lr.ph158 ], [ %.2157.ph, %.lr.ph158.preheader ]
  %.232156 = phi ptr [ %i.ho, %.lr.ph158 ], [ %.232156.ph, %.lr.ph158.preheader ] ; 3 uses
  %i.hg = load i16, ptr %.232156, align 2, !tbaa !51
  %i.hh = zext i16 %i.hg to i32
  %i.hi = shl nuw i32 %i.hh, 16
  %i.hj = bitcast i32 %i.hi to float
  %i.hk = call fast noundef nofpclass(nan inf) float @llvm.cosh.f32(float %i.hj)
  %i.hl = bitcast float %i.hk to i32
  %i.hm = lshr i32 %i.hl, 16
  %i.hn = trunc nuw i32 %i.hm to i16
  store i16 %i.hn, ptr %.232156, align 2, !tbaa !51
  %i.ho = getelementptr inbounds nuw i8, ptr %.232156, i64 2
  %i.hp = add nuw nsw i32 %.2157, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.hp, %i.cz
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph158, !llvm.loop !454

._crit_edge:                                      ; preds = %.lr.ph158, %middle.block, %vec.epilog.middle.block, %.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond168.not = icmp eq i32 %i.o, %lftr.wideiv
  br i1 %exitcond168.not, label %._crit_edge161, label %.noexc

._crit_edge161:                                   ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge161, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL22unary_op_inplace_bf16sINS_23UnaryOp_x86_avx_functor14unary_op_acoshEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #7 personality ptr @__gxx_personality_v0 {
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
  %.not216 = icmp sgt i32 %i.k, %i.j
  br i1 %.not216, label %._crit_edge218, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  %i.o = add nsw i32 %i.j, 1
  %.pre = load i32, ptr %4, align 4, !tbaa !37
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %._crit_edge
  %i.p = phi i32 [ %.pre, %.noexc.lr.ph ], [ %i.ds, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !39, !noalias !461
  %i.r = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !461
  %i.s = mul i64 %i.r, %indvars.iv
  %i.t = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !461
  %i.u = mul i64 %i.s, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.u ; 2 uses
  %i.w = icmp sgt i32 %i.p, 7
  br i1 %i.w, label %.lr.ph, label %.preheader203

.preheader203:                                    ; preds = %.lr.ph, %.noexc
  %i.x = phi i32 [ %i.p, %.noexc ], [ %i.dq, %.lr.ph ] ; 2 uses
  %.030.lcssa = phi ptr [ %i.v, %.noexc ], [ %i.dn, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.do, %.lr.ph ] ; 3 uses
  %i.y = or disjoint i32 %.0.lcssa, 3
  %i.z = icmp slt i32 %i.y, %i.x
  br i1 %i.z, label %.lr.ph209, label %.preheader

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.0205 = phi i32 [ %i.do, %.lr.ph ], [ 0, %.noexc ]
  %.030204 = phi ptr [ %i.dn, %.lr.ph ], [ %i.v, %.noexc ] ; 3 uses
  %i.aa = load <8 x i16>, ptr %.030204, align 1, !tbaa !41 ; 2 uses
  %i.ab = shufflevector <8 x i16> %i.aa, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.ac = shufflevector <8 x i16> %i.aa, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 12, i32 4, i32 13, i32 5, i32 14, i32 6, i32 15, i32 7>
  %i.ad = shufflevector <8 x i16> %i.ab, <8 x i16> %i.ac, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ae = bitcast <16 x i16> %i.ad to <8 x float> ; 5 uses
  %i.af = fadd fast <8 x float> %i.ae, splat (float -1.000000e+00)
  %i.ag = fadd fast <8 x float> %i.ae, splat (float 1.000000e+00)
  %i.ah = fmul fast <8 x float> %i.af, %i.ag
  %i.ai = call fast <8 x float> @llvm.sqrt.v8f32(<8 x float> %i.ah)
  %i.aj = fadd fast <8 x float> %i.ai, %i.ae      ; 2 uses
  %i.ak = fcmp fast ole <8 x float> %i.aj, zeroinitializer
  %i.al = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.aj, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.am = bitcast <8 x float> %i.al to <8 x i32>
  %i.an = bitcast <8 x float> %i.al to <8 x i32>
  %i.ao = and <8 x i32> %i.an, splat (i32 -2139095041)
  %i.ap = or disjoint <8 x i32> %i.ao, splat (i32 1056964608)
  %i.aq = bitcast <8 x i32> %i.ap to <8 x float>  ; 3 uses
  %i.ar = lshr <8 x i32> %i.am, splat (i32 23)
  %i.as = add nsw <8 x i32> %i.ar, splat (i32 -127)
  %i.at = sitofp fast <8 x i32> %i.as to <8 x float> ; 2 uses
  %i.au = fadd fast <8 x float> %i.at, splat (float 1.000000e+00)
  %i.av = fcmp fast olt <8 x float> %i.aq, splat (float f0x3F3504F3) ; 2 uses
  %i.aw = select <8 x i1> %i.av, <8 x float> %i.aq, <8 x float> zeroinitializer
  %i.ax = fadd fast <8 x float> %i.aq, splat (float -1.000000e+00)
  %i.ay = select fast <8 x i1> %i.av, <8 x float> %i.at, <8 x float> %i.au
  %i.az = fadd fast <8 x float> %i.ax, %i.aw      ; 12 uses
  %i.ba = fmul fast <8 x float> %i.az, %i.az
  %i.bb = fmul fast <8 x float> %i.az, splat (float f0x3D9021BB)
  %i.bc = fadd fast <8 x float> %i.bb, splat (float f0xBDEBD1B8)
  %i.bd = fmul fast <8 x float> %i.bc, %i.az
  %i.be = fadd fast <8 x float> %i.bd, splat (float f0x3DEF251A)
  %i.bf = fmul fast <8 x float> %i.be, %i.az
  %i.bg = fadd fast <8 x float> %i.bf, splat (float f0xBDFE5D4F)
  %i.bh = fmul fast <8 x float> %i.bg, %i.az
  %i.bi = fadd fast <8 x float> %i.bh, splat (float f0x3E11E9BF)
  %i.bj = fmul fast <8 x float> %i.bi, %i.az
  %i.bk = fadd fast <8 x float> %i.bj, splat (float f0xBE2AAE50)
  %i.bl = fmul fast <8 x float> %i.bk, %i.az
  %i.bm = fadd fast <8 x float> %i.bl, splat (float f0x3E4CCEAC)
  %i.bn = fmul fast <8 x float> %i.bm, %i.az
  %i.bo = fadd fast <8 x float> %i.bn, splat (float f0xBE7FFFFC)
  %i.bp = fmul fast <8 x float> %i.bo, %i.az
  %i.bq = fadd fast <8 x float> %i.bp, splat (float f0x3EAAAAAA)
  %i.br = fmul fast <8 x float> %i.bq, %i.az
  %reass.mul195 = fmul fast <8 x float> %i.ay, splat (float f0x3F317218)
  %reass.add199 = fadd fast <8 x float> %i.br, splat (float -5.000000e-01)
  %reass.mul200 = fmul fast <8 x float> %i.ba, %reass.add199
  %i.bs = fadd fast <8 x float> %reass.mul195, %i.az
  %i.bt = fadd fast <8 x float> %i.bs, %reass.mul200
  %i.bu = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ae, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.bv = bitcast <8 x float> %i.bu to <8 x i32>
  %i.bw = bitcast <8 x float> %i.bu to <8 x i32>
  %i.bx = and <8 x i32> %i.bw, splat (i32 -2139095041)
  %i.by = or disjoint <8 x i32> %i.bx, splat (i32 1056964608)
  %i.bz = bitcast <8 x i32> %i.by to <8 x float>  ; 3 uses
  %i.ca = lshr <8 x i32> %i.bv, splat (i32 23)
  %i.cb = add nsw <8 x i32> %i.ca, splat (i32 -127)
  %i.cc = sitofp fast <8 x i32> %i.cb to <8 x float> ; 2 uses
  %i.cd = fadd fast <8 x float> %i.cc, splat (float 1.000000e+00)
  %i.ce = fcmp fast olt <8 x float> %i.bz, splat (float f0x3F3504F3) ; 2 uses
  %i.cf = select <8 x i1> %i.ce, <8 x float> %i.bz, <8 x float> zeroinitializer
  %i.cg = fadd fast <8 x float> %i.bz, splat (float -1.000000e+00)
  %i.ch = select fast <8 x i1> %i.ce, <8 x float> %i.cc, <8 x float> %i.cd
  %i.ci = fadd fast <8 x float> %i.cg, %i.cf      ; 12 uses
  %i.cj = fmul fast <8 x float> %i.ci, %i.ci
  %i.ck = fmul fast <8 x float> %i.ci, splat (float f0x3D9021BB)
  %i.cl = fadd fast <8 x float> %i.ck, splat (float f0xBDEBD1B8)
  %i.cm = fmul fast <8 x float> %i.cl, %i.ci
  %i.cn = fadd fast <8 x float> %i.cm, splat (float f0x3DEF251A)
  %i.co = fmul fast <8 x float> %i.cn, %i.ci
  %i.cp = fadd fast <8 x float> %i.co, splat (float f0xBDFE5D4F)
  %i.cq = fmul fast <8 x float> %i.cp, %i.ci
  %i.cr = fadd fast <8 x float> %i.cq, splat (float f0x3E11E9BF)
  %i.cs = fmul fast <8 x float> %i.cr, %i.ci
  %i.ct = fadd fast <8 x float> %i.cs, splat (float f0xBE2AAE50)
  %i.cu = fmul fast <8 x float> %i.ct, %i.ci
  %i.cv = fadd fast <8 x float> %i.cu, splat (float f0x3E4CCEAC)
  %i.cw = fmul fast <8 x float> %i.cv, %i.ci
  %i.cx = fadd fast <8 x float> %i.cw, splat (float f0xBE7FFFFC)
  %i.cy = fmul fast <8 x float> %i.cx, %i.ci
  %i.cz = fadd fast <8 x float> %i.cy, splat (float f0x3EAAAAAA)
  %i.da = fmul fast <8 x float> %i.cz, %i.ci
  %reass.mul198 = fmul fast <8 x float> %i.ch, splat (float f0x3F317218)
  %reass.add201 = fadd fast <8 x float> %i.da, splat (float -5.000000e-01)
  %reass.mul202 = fmul fast <8 x float> %i.cj, %reass.add201
  %i.db = fadd fast <8 x float> %i.ci, splat (float f0x3F317218)
  %i.dc = fadd fast <8 x float> %i.db, %reass.mul198
  %i.dd = fadd fast <8 x float> %i.dc, %reass.mul202
  %i.de = fcmp fast ule <8 x float> %i.ae, splat (float f0x5F0AC723)
  %i.df = select <8 x i1> %i.ak, <8 x float> splat (float -nan(0x3FFFFF)), <8 x float> %i.bt
  %i.dg = select <8 x i1> %i.de, <8 x float> %i.df, <8 x float> %i.dd
  %i.dh = bitcast <8 x float> %i.dg to <8 x i32>  ; 2 uses
  %i.di = shufflevector <8 x i32> %i.dh, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dj = shufflevector <8 x i32> %i.dh, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.dk = lshr <4 x i32> %i.di, splat (i32 16)
  %i.dl = lshr <4 x i32> %i.dj, splat (i32 16)
  %i.dm = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.dk, <4 x i32> %i.dl)
  store <8 x i16> %i.dm, ptr %.030204, align 1, !tbaa !41
  %i.dn = getelementptr inbounds nuw i8, ptr %.030204, i64 16 ; 2 uses
  %i.do = add nuw nsw i32 %.0205, 8               ; 3 uses
  %i.dp = or disjoint i32 %i.do, 7
  %i.dq = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.dr = icmp slt i32 %i.dp, %i.dq
  br i1 %i.dr, label %.lr.ph, label %.preheader203, !llvm.loop !458

.preheader:                                       ; preds = %.lr.ph209, %.preheader203
  %i.ds = phi i32 [ %i.x, %.preheader203 ], [ %i.hh, %.lr.ph209 ] ; 3 uses
  %.131.lcssa = phi ptr [ %.030.lcssa, %.preheader203 ], [ %i.he, %.lr.ph209 ]
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader203 ], [ %i.hf, %.lr.ph209 ] ; 2 uses
  %i.dt = icmp slt i32 %.1.lcssa, %i.ds
  br i1 %i.dt, label %.lr.ph215, label %._crit_edge

.lr.ph209:                                        ; preds = %.preheader203, %.lr.ph209
  %.1208 = phi i32 [ %i.hf, %.lr.ph209 ], [ %.0.lcssa, %.preheader203 ]
  %.131207 = phi ptr [ %i.he, %.lr.ph209 ], [ %.030.lcssa, %.preheader203 ] ; 3 uses
end_hunk_3
begin_hunk_4_@_ZN4ncnnL22unary_op_inplace_bf16sINS_23UnaryOp_x86_avx_functor14unary_op_acoshEEEiRNS_3MatERKNS_6OptionE.omp_outlined:bb.a
  %i.ec = call fast <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.eb)
  %i.ed = fadd fast <4 x float> %i.ec, %i.dy      ; 2 uses
  %i.ee = fcmp fast ole <4 x float> %i.ed, zeroinitializer
  %i.ef = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ed, <4 x float> splat (float f0x00800000))
  %i.eg = bitcast <4 x float> %i.ef to <4 x i32>  ; 2 uses
  %i.eh = lshr <4 x i32> %i.eg, splat (i32 23)
  %i.ei = and <4 x i32> %i.eg, splat (i32 -2139095041)
  %i.ej = or disjoint <4 x i32> %i.ei, splat (i32 1056964608)
  %i.ek = bitcast <4 x i32> %i.ej to <4 x float>  ; 3 uses
  %i.el = add nsw <4 x i32> %i.eh, splat (i32 -127)
  %i.em = sitofp fast <4 x i32> %i.el to <4 x float> ; 2 uses
  %i.en = fadd fast <4 x float> %i.em, splat (float 1.000000e+00)
  %i.eo = fcmp fast olt <4 x float> %i.ek, splat (float f0x3F3504F3) ; 2 uses
  %i.ep = select <4 x i1> %i.eo, <4 x float> %i.ek, <4 x float> zeroinitializer
  %i.eq = fadd fast <4 x float> %i.ek, splat (float -1.000000e+00)
  %i.er = select fast <4 x i1> %i.eo, <4 x float> %i.em, <4 x float> %i.en
  %i.es = fadd fast <4 x float> %i.eq, %i.ep      ; 12 uses
  %i.et = fmul fast <4 x float> %i.es, %i.es
  %i.eu = fmul fast <4 x float> %i.es, splat (float f0x3D9021BB)
  %i.ev = fadd fast <4 x float> %i.eu, splat (float f0xBDEBD1B8)
  %i.ew = fmul fast <4 x float> %i.ev, %i.es
  %i.ex = fadd fast <4 x float> %i.ew, splat (float f0x3DEF251A)
  %i.ey = fmul fast <4 x float> %i.ex, %i.es
  %i.ez = fadd fast <4 x float> %i.ey, splat (float f0xBDFE5D4F)
  %i.fa = fmul fast <4 x float> %i.ez, %i.es
  %i.fb = fadd fast <4 x float> %i.fa, splat (float f0x3E11E9BF)
  %i.fc = fmul fast <4 x float> %i.fb, %i.es
  %i.fd = fadd fast <4 x float> %i.fc, splat (float f0xBE2AAE50)
  %i.fe = fmul fast <4 x float> %i.fd, %i.es
  %i.ff = fadd fast <4 x float> %i.fe, splat (float f0x3E4CCEAC)
  %i.fg = fmul fast <4 x float> %i.ff, %i.es
  %i.fh = fadd fast <4 x float> %i.fg, splat (float f0xBE7FFFFC)
  %i.fi = fmul fast <4 x float> %i.fh, %i.es
  %i.fj = fadd fast <4 x float> %i.fi, splat (float f0x3EAAAAAA)
  %i.fk = fmul fast <4 x float> %i.fj, %i.es
  %reass.mul = fmul fast <4 x float> %i.er, splat (float f0x3F317218)
  %reass.add191 = fadd fast <4 x float> %i.fk, splat (float -5.000000e-01)
  %reass.mul192 = fmul fast <4 x float> %i.et, %reass.add191
  %i.fl = fadd fast <4 x float> %reass.mul, %i.es
  %i.fm = fadd fast <4 x float> %i.fl, %reass.mul192
  %i.fn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dy, <4 x float> splat (float f0x00800000))
  %i.fo = bitcast <4 x float> %i.fn to <4 x i32>  ; 2 uses
  %i.fp = lshr <4 x i32> %i.fo, splat (i32 23)
  %i.fq = and <4 x i32> %i.fo, splat (i32 -2139095041)
  %i.fr = or disjoint <4 x i32> %i.fq, splat (i32 1056964608)
  %i.fs = bitcast <4 x i32> %i.fr to <4 x float>  ; 3 uses
  %i.ft = add nsw <4 x i32> %i.fp, splat (i32 -127)
  %i.fu = sitofp fast <4 x i32> %i.ft to <4 x float> ; 2 uses
  %i.fv = fadd fast <4 x float> %i.fu, splat (float 1.000000e+00)
  %i.fw = fcmp fast olt <4 x float> %i.fs, splat (float f0x3F3504F3) ; 2 uses
  %i.fx = select <4 x i1> %i.fw, <4 x float> %i.fs, <4 x float> zeroinitializer
  %i.fy = fadd fast <4 x float> %i.fs, splat (float -1.000000e+00)
  %i.fz = select fast <4 x i1> %i.fw, <4 x float> %i.fu, <4 x float> %i.fv
  %i.ga = fadd fast <4 x float> %i.fy, %i.fx      ; 12 uses
  %i.gb = fmul fast <4 x float> %i.ga, %i.ga
  %i.gc = fmul fast <4 x float> %i.ga, splat (float f0x3D9021BB)
  %i.gd = fadd fast <4 x float> %i.gc, splat (float f0xBDEBD1B8)
  %i.ge = fmul fast <4 x float> %i.gd, %i.ga
  %i.gf = fadd fast <4 x float> %i.ge, splat (float f0x3DEF251A)
  %i.gg = fmul fast <4 x float> %i.gf, %i.ga
  %i.gh = fadd fast <4 x float> %i.gg, splat (float f0xBDFE5D4F)
  %i.gi = fmul fast <4 x float> %i.gh, %i.ga
  %i.gj = fadd fast <4 x float> %i.gi, splat (float f0x3E11E9BF)
  %i.gk = fmul fast <4 x float> %i.gj, %i.ga
  %i.gl = fadd fast <4 x float> %i.gk, splat (float f0xBE2AAE50)
  %i.gm = fmul fast <4 x float> %i.gl, %i.ga
  %i.gn = fadd fast <4 x float> %i.gm, splat (float f0x3E4CCEAC)
  %i.go = fmul fast <4 x float> %i.gn, %i.ga
  %i.gp = fadd fast <4 x float> %i.go, splat (float f0xBE7FFFFC)
  %i.gq = fmul fast <4 x float> %i.gp, %i.ga
  %i.gr = fadd fast <4 x float> %i.gq, splat (float f0x3EAAAAAA)
  %i.gs = fmul fast <4 x float> %i.gr, %i.ga
  %reass.mul190 = fmul fast <4 x float> %i.fz, splat (float f0x3F317218)
  %reass.add193 = fadd fast <4 x float> %i.gs, splat (float -5.000000e-01)
  %reass.mul194 = fmul fast <4 x float> %i.gb, %reass.add193
  %i.gt = fadd fast <4 x float> %i.ga, splat (float f0x3F317218)
  %i.gu = fadd fast <4 x float> %i.gt, %reass.mul190
  %i.gv = fadd fast <4 x float> %i.gu, %reass.mul194
  %i.gw = fcmp fast ule <4 x float> %i.dy, splat (float f0x5F0AC723)
  %i.gx = select <4 x i1> %i.ee, <4 x float> splat (float -nan(0x3FFFFF)), <4 x float> %i.fm
  %i.gy = select <4 x i1> %i.gw, <4 x float> %i.gx, <4 x float> %i.gv
  %i.gz = bitcast <4 x float> %i.gy to <4 x i32>
  %i.ha = lshr <4 x i32> %i.gz, splat (i32 16)
  %i.hb = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.ha, <4 x i32> poison)
  %i.hc = bitcast <8 x i16> %i.hb to <2 x i64>
  %i.hd = extractelement <2 x i64> %i.hc, i64 0
  store i64 %i.hd, ptr %.131207, align 1, !tbaa !41
  %i.he = getelementptr inbounds nuw i8, ptr %.131207, i64 8 ; 2 uses
  %i.hf = add nuw nsw i32 %.1208, 4               ; 3 uses
  %i.hg = or disjoint i32 %i.hf, 3
  %i.hh = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.hi = icmp slt i32 %i.hg, %i.hh
  br i1 %i.hi, label %.lr.ph209, label %.preheader, !llvm.loop !459

.lr.ph215:                                        ; preds = %.preheader, %.lr.ph215
  %.2214 = phi i32 [ %i.hs, %.lr.ph215 ], [ %.1.lcssa, %.preheader ]
  %.232213 = phi ptr [ %i.hr, %.lr.ph215 ], [ %.131.lcssa, %.preheader ] ; 3 uses
  %i.hj = load i16, ptr %.232213, align 2, !tbaa !51
  %i.hk = zext i16 %i.hj to i32
  %i.hl = shl nuw i32 %i.hk, 16
  %i.hm = bitcast i32 %i.hl to float
  %i.hn = call fast noundef nofpclass(nan inf) float @acoshf(float noundef nofpclass(nan inf) %i.hm) #20
  %i.ho = bitcast float %i.hn to i32
  %i.hp = lshr i32 %i.ho, 16
  %i.hq = trunc nuw i32 %i.hp to i16
  store i16 %i.hq, ptr %.232213, align 2, !tbaa !51
  %i.hr = getelementptr inbounds nuw i8, ptr %.232213, i64 2
  %i.hs = add nuw nsw i32 %.2214, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.hs, %i.ds
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph215, !llvm.loop !460

._crit_edge:                                      ; preds = %.lr.ph215, %.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond225.not = icmp eq i32 %i.o, %lftr.wideiv
  br i1 %exitcond225.not, label %._crit_edge218, label %.noexc

._crit_edge218:                                   ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge218, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL22unary_op_inplace_bf16sINS_23UnaryOp_x86_avx_functor14unary_op_atanhEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #7 personality ptr @__gxx_personality_v0 {
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
  %.not246 = icmp sgt i32 %i.k, %i.j
  br i1 %.not246, label %._crit_edge248, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  %i.o = add nsw i32 %i.j, 1
  %.pre = load i32, ptr %4, align 4, !tbaa !37
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %._crit_edge
  %i.p = phi i32 [ %.pre, %.noexc.lr.ph ], [ %i.ec, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !39, !noalias !467
  %i.r = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !467
  %i.s = mul i64 %i.r, %indvars.iv
  %i.t = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !467
  %i.u = mul i64 %i.s, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.u ; 2 uses
  %i.w = icmp sgt i32 %i.p, 7
  br i1 %i.w, label %.lr.ph, label %.preheader233

.preheader233:                                    ; preds = %.lr.ph, %.noexc
  %i.x = phi i32 [ %i.p, %.noexc ], [ %i.ea, %.lr.ph ] ; 2 uses
  %.030.lcssa = phi ptr [ %i.v, %.noexc ], [ %i.dx, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.dy, %.lr.ph ] ; 3 uses
  %i.y = or disjoint i32 %.0.lcssa, 3
  %i.z = icmp slt i32 %i.y, %i.x
  br i1 %i.z, label %.lr.ph239, label %.preheader

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.0235 = phi i32 [ %i.dy, %.lr.ph ], [ 0, %.noexc ]
  %.030234 = phi ptr [ %i.dx, %.lr.ph ], [ %i.v, %.noexc ] ; 3 uses
  %i.aa = load <8 x i16>, ptr %.030234, align 1, !tbaa !41 ; 2 uses
  %i.ab = shufflevector <8 x i16> %i.aa, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.ac = shufflevector <8 x i16> %i.aa, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 12, i32 4, i32 13, i32 5, i32 14, i32 6, i32 15, i32 7>
  %i.ad = shufflevector <8 x i16> %i.ab, <8 x i16> %i.ac, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.ae = bitcast <16 x i16> %i.ad to <8 x float> ; 8 uses
  %i.af = fmul fast <8 x float> %i.ae, %i.ae      ; 2 uses
  %i.ag = fmul fast <8 x float> %i.ae, splat (float f0x3EAAAAAB) ; 2 uses
  %i.ah = fadd fast <8 x float> %i.ag, splat (float -5.000000e-01)
  %i.ai = fmul fast <8 x float> %i.af, %i.ah
  %i.aj = fadd fast <8 x float> %i.ai, %i.ae
  %i.ak = fadd fast <8 x float> %i.ae, splat (float 1.000000e+00) ; 2 uses
  %6 = fcmp fast ole <8 x float> %i.ak, zeroinitializer
  %i.al = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ak, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.am = bitcast <8 x float> %i.al to <8 x i32>
  %i.an = bitcast <8 x float> %i.al to <8 x i32>
  %i.ao = and <8 x i32> %i.an, splat (i32 -2139095041)
  %i.ap = or disjoint <8 x i32> %i.ao, splat (i32 1056964608)
  %i.aq = bitcast <8 x i32> %i.ap to <8 x float>  ; 3 uses
  %i.ar = lshr <8 x i32> %i.am, splat (i32 23)
  %i.as = add nsw <8 x i32> %i.ar, splat (i32 -127)
  %i.at = sitofp fast <8 x i32> %i.as to <8 x float> ; 2 uses
  %i.au = fadd fast <8 x float> %i.at, splat (float 1.000000e+00)
  %i.av = fcmp fast olt <8 x float> %i.aq, splat (float f0x3F3504F3) ; 2 uses
  %i.aw = select <8 x i1> %i.av, <8 x float> %i.aq, <8 x float> zeroinitializer
  %i.ax = fadd fast <8 x float> %i.aq, splat (float -1.000000e+00)
  %i.ay = select fast <8 x i1> %i.av, <8 x float> %i.at, <8 x float> %i.au
  %i.az = fadd fast <8 x float> %i.ax, %i.aw      ; 12 uses
  %i.ba = fmul fast <8 x float> %i.az, %i.az
  %i.bb = fmul fast <8 x float> %i.az, splat (float f0x3D9021BB)
  %i.bc = fadd fast <8 x float> %i.bb, splat (float f0xBDEBD1B8)
  %i.bd = fmul fast <8 x float> %i.bc, %i.az
  %i.be = fadd fast <8 x float> %i.bd, splat (float f0x3DEF251A)
  %i.bf = fmul fast <8 x float> %i.be, %i.az
  %i.bg = fadd fast <8 x float> %i.bf, splat (float f0xBDFE5D4F)
  %i.bh = fmul fast <8 x float> %i.bg, %i.az
  %i.bi = fadd fast <8 x float> %i.bh, splat (float f0x3E11E9BF)
  %i.bj = fmul fast <8 x float> %i.bi, %i.az
  %i.bk = fadd fast <8 x float> %i.bj, splat (float f0xBE2AAE50)
  %i.bl = fmul fast <8 x float> %i.bk, %i.az
  %i.bm = fadd fast <8 x float> %i.bl, splat (float f0x3E4CCEAC)
  %i.bn = fmul fast <8 x float> %i.bm, %i.az
  %i.bo = fadd fast <8 x float> %i.bn, splat (float f0xBE7FFFFC)
  %i.bp = fmul fast <8 x float> %i.bo, %i.az
  %i.bq = fadd fast <8 x float> %i.bp, splat (float f0x3EAAAAAA)
  %i.br = fmul fast <8 x float> %i.bq, %i.az
  %reass.mul225 = fmul fast <8 x float> %i.ay, splat (float f0x3F317218)
  %reass.add229 = fadd fast <8 x float> %i.br, splat (float -5.000000e-01)
  %reass.mul230 = fmul fast <8 x float> %i.ba, %reass.add229
  %i.bs = fadd fast <8 x float> %reass.mul225, %i.az
  %i.bt = fadd fast <8 x float> %i.bs, %reass.mul230
  %i.bu = bitcast <16 x i16> %i.ad to <8 x i32>
  %i.bv = and <8 x i32> %i.bu, splat (i32 2147418112)
  %i.bw = bitcast <8 x i32> %i.bv to <8 x float>
  %i.bx = fcmp fast uge <8 x float> %i.bw, splat (float f0x38D1B717)
  %7 = select <8 x i1> %6, <8 x float> splat (float -nan(0x3FFFFF)), <8 x float> %i.bt
  %i.by = select <8 x i1> %i.bx, <8 x float> %7, <8 x float> %i.aj
  %i.bz = fsub fast <8 x float> splat (float -5.000000e-01), %i.ag
  %i.ca = fmul fast <8 x float> %i.af, %i.bz
  %i.cb = fsub fast <8 x float> %i.ca, %i.ae
  %i.cc = fsub fast <8 x float> splat (float 1.000000e+00), %i.ae ; 2 uses
  %8 = fcmp fast ole <8 x float> %i.cc, zeroinitializer
  %i.cd = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.cc, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.ce = bitcast <8 x float> %i.cd to <8 x i32>
  %i.cf = bitcast <8 x float> %i.cd to <8 x i32>
  %i.cg = and <8 x i32> %i.cf, splat (i32 -2139095041)
  %i.ch = or disjoint <8 x i32> %i.cg, splat (i32 1056964608)
  %i.ci = bitcast <8 x i32> %i.ch to <8 x float>  ; 3 uses
  %i.cj = lshr <8 x i32> %i.ce, splat (i32 23)
  %i.ck = add nsw <8 x i32> %i.cj, splat (i32 -127)
  %i.cl = sitofp fast <8 x i32> %i.ck to <8 x float> ; 2 uses
  %i.cm = fadd fast <8 x float> %i.cl, splat (float 1.000000e+00)
  %i.cn = fcmp fast olt <8 x float> %i.ci, splat (float f0x3F3504F3) ; 2 uses
  %i.co = select <8 x i1> %i.cn, <8 x float> %i.ci, <8 x float> zeroinitializer
  %i.cp = fadd fast <8 x float> %i.ci, splat (float -1.000000e+00)
  %i.cq = select fast <8 x i1> %i.cn, <8 x float> %i.cl, <8 x float> %i.cm
  %i.cr = fadd fast <8 x float> %i.cp, %i.co      ; 12 uses
  %i.cs = fmul fast <8 x float> %i.cr, %i.cr
  %i.ct = fmul fast <8 x float> %i.cr, splat (float f0x3D9021BB)
  %i.cu = fadd fast <8 x float> %i.ct, splat (float f0xBDEBD1B8)
  %i.cv = fmul fast <8 x float> %i.cu, %i.cr
  %i.cw = fadd fast <8 x float> %i.cv, splat (float f0x3DEF251A)
  %i.cx = fmul fast <8 x float> %i.cw, %i.cr
  %i.cy = fadd fast <8 x float> %i.cx, splat (float f0xBDFE5D4F)
  %i.cz = fmul fast <8 x float> %i.cy, %i.cr
  %i.da = fadd fast <8 x float> %i.cz, splat (float f0x3E11E9BF)
  %i.db = fmul fast <8 x float> %i.da, %i.cr
  %i.dc = fadd fast <8 x float> %i.db, splat (float f0xBE2AAE50)
  %i.dd = fmul fast <8 x float> %i.dc, %i.cr
  %i.de = fadd fast <8 x float> %i.dd, splat (float f0x3E4CCEAC)
  %i.df = fmul fast <8 x float> %i.de, %i.cr
  %i.dg = fadd fast <8 x float> %i.df, splat (float f0xBE7FFFFC)
  %i.dh = fmul fast <8 x float> %i.dg, %i.cr
  %i.di = fadd fast <8 x float> %i.dh, splat (float f0x3EAAAAAA)
  %i.dj = fmul fast <8 x float> %i.di, %i.cr
  %reass.mul228 = fmul fast <8 x float> %i.cq, splat (float f0x3F317218)
  %reass.add231 = fadd fast <8 x float> %i.dj, splat (float -5.000000e-01)
  %reass.mul232 = fmul fast <8 x float> %i.cs, %reass.add231
  %i.dk = fadd fast <8 x float> %reass.mul228, %i.cr
  %i.dl = fadd fast <8 x float> %i.dk, %reass.mul232
  %i.dm = call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ae)
  %i.dn = fcmp fast uge <8 x float> %i.dm, splat (float f0x38D1B717)
  %9 = select <8 x i1> %8, <8 x float> splat (float -nan(0x3FFFFF)), <8 x float> %i.dl
  %i.do = select <8 x i1> %i.dn, <8 x float> %9, <8 x float> %i.cb
  %i.dp = fsub fast <8 x float> %i.by, %i.do
  %i.dq = fmul fast <8 x float> %i.dp, splat (float 5.000000e-01)
  %i.dr = bitcast <8 x float> %i.dq to <8 x i32>  ; 2 uses
  %i.ds = shufflevector <8 x i32> %i.dr, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dt = shufflevector <8 x i32> %i.dr, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.du = lshr <4 x i32> %i.ds, splat (i32 16)
  %i.dv = lshr <4 x i32> %i.dt, splat (i32 16)
  %i.dw = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.du, <4 x i32> %i.dv)
  store <8 x i16> %i.dw, ptr %.030234, align 1, !tbaa !41
  %i.dx = getelementptr inbounds nuw i8, ptr %.030234, i64 16 ; 2 uses
  %i.dy = add nuw nsw i32 %.0235, 8               ; 3 uses
  %i.dz = or disjoint i32 %i.dy, 7
  %i.ea = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.eb = icmp slt i32 %i.dz, %i.ea
  br i1 %i.eb, label %.lr.ph, label %.preheader233, !llvm.loop !464

.preheader:                                       ; preds = %.lr.ph239, %.preheader233
  %i.ec = phi i32 [ %i.x, %.preheader233 ], [ %i.ib, %.lr.ph239 ] ; 3 uses
  %.131.lcssa = phi ptr [ %.030.lcssa, %.preheader233 ], [ %i.hy, %.lr.ph239 ]
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader233 ], [ %i.hz, %.lr.ph239 ] ; 2 uses
  %i.ed = icmp slt i32 %.1.lcssa, %i.ec
  br i1 %i.ed, label %.lr.ph245, label %._crit_edge

.lr.ph239:                                        ; preds = %.preheader233, %.lr.ph239
  %.1238 = phi i32 [ %i.hz, %.lr.ph239 ], [ %.0.lcssa, %.preheader233 ]
  %.131237 = phi ptr [ %i.hy, %.lr.ph239 ], [ %.030.lcssa, %.preheader233 ] ; 3 uses
  %i.ee = load i64, ptr %.131237, align 1, !tbaa !41
  %i.ef = insertelement <2 x i64> poison, i64 %i.ee, i64 0
  %i.eg = bitcast <2 x i64> %i.ef to <8 x i16>
  %i.eh = shufflevector <8 x i16> %i.eg, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3> ; 2 uses
  %i.ei = bitcast <8 x i16> %i.eh to <4 x float>  ; 8 uses
  %i.ej = fmul fast <4 x float> %i.ei, %i.ei      ; 2 uses
  %i.ek = fmul fast <4 x float> %i.ei, splat (float f0x3EAAAAAB) ; 2 uses
  %i.el = fadd fast <4 x float> %i.ek, splat (float -5.000000e-01)
  %i.em = fmul fast <4 x float> %i.ej, %i.el
  %i.en = fadd fast <4 x float> %i.em, %i.ei
  %i.eo = fadd fast <4 x float> %i.ei, splat (float 1.000000e+00) ; 2 uses
  %10 = fcmp fast ole <4 x float> %i.eo, zeroinitializer
  %i.ep = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.eo, <4 x float> splat (float f0x00800000))
  %i.eq = bitcast <4 x float> %i.ep to <4 x i32>  ; 2 uses
  %i.er = lshr <4 x i32> %i.eq, splat (i32 23)
  %i.es = and <4 x i32> %i.eq, splat (i32 -2139095041)
  %i.et = or disjoint <4 x i32> %i.es, splat (i32 1056964608)
  %i.eu = bitcast <4 x i32> %i.et to <4 x float>  ; 3 uses
  %i.ev = add nsw <4 x i32> %i.er, splat (i32 -127)
  %i.ew = sitofp fast <4 x i32> %i.ev to <4 x float> ; 2 uses
  %i.ex = fadd fast <4 x float> %i.ew, splat (float 1.000000e+00)
  %i.ey = fcmp fast olt <4 x float> %i.eu, splat (float f0x3F3504F3) ; 2 uses
  %i.ez = select <4 x i1> %i.ey, <4 x float> %i.eu, <4 x float> zeroinitializer
  %i.fa = fadd fast <4 x float> %i.eu, splat (float -1.000000e+00)
  %i.fb = select fast <4 x i1> %i.ey, <4 x float> %i.ew, <4 x float> %i.ex
  %i.fc = fadd fast <4 x float> %i.fa, %i.ez      ; 12 uses
  %i.fd = fmul fast <4 x float> %i.fc, %i.fc
  %i.fe = fmul fast <4 x float> %i.fc, splat (float f0x3D9021BB)
  %i.ff = fadd fast <4 x float> %i.fe, splat (float f0xBDEBD1B8)
  %i.fg = fmul fast <4 x float> %i.ff, %i.fc
  %i.fh = fadd fast <4 x float> %i.fg, splat (float f0x3DEF251A)
  %i.fi = fmul fast <4 x float> %i.fh, %i.fc
  %i.fj = fadd fast <4 x float> %i.fi, splat (float f0xBDFE5D4F)
  %i.fk = fmul fast <4 x float> %i.fj, %i.fc
  %i.fl = fadd fast <4 x float> %i.fk, splat (float f0x3E11E9BF)
  %i.fm = fmul fast <4 x float> %i.fl, %i.fc
  %i.fn = fadd fast <4 x float> %i.fm, splat (float f0xBE2AAE50)
  %i.fo = fmul fast <4 x float> %i.fn, %i.fc
  %i.fp = fadd fast <4 x float> %i.fo, splat (float f0x3E4CCEAC)
  %i.fq = fmul fast <4 x float> %i.fp, %i.fc
  %i.fr = fadd fast <4 x float> %i.fq, splat (float f0xBE7FFFFC)
  %i.fs = fmul fast <4 x float> %i.fr, %i.fc
  %i.ft = fadd fast <4 x float> %i.fs, splat (float f0x3EAAAAAA)
  %i.fu = fmul fast <4 x float> %i.ft, %i.fc
  %reass.mul = fmul fast <4 x float> %i.fb, splat (float f0x3F317218)
  %reass.add221 = fadd fast <4 x float> %i.fu, splat (float -5.000000e-01)
  %reass.mul222 = fmul fast <4 x float> %i.fd, %reass.add221
  %i.fv = fadd fast <4 x float> %reass.mul, %i.fc
  %i.fw = fadd fast <4 x float> %i.fv, %reass.mul222
  %i.fx = bitcast <8 x i16> %i.eh to <4 x i32>
  %i.fy = and <4 x i32> %i.fx, splat (i32 2147418112)
  %i.fz = bitcast <4 x i32> %i.fy to <4 x float>
  %i.ga = fcmp fast uge <4 x float> %i.fz, splat (float f0x38D1B717)
  %11 = select <4 x i1> %10, <4 x float> splat (float -nan(0x3FFFFF)), <4 x float> %i.fw
  %i.gb = select <4 x i1> %i.ga, <4 x float> %11, <4 x float> %i.en
  %i.gc = fsub fast <4 x float> splat (float -5.000000e-01), %i.ek
  %i.gd = fmul fast <4 x float> %i.ej, %i.gc
  %i.ge = fsub fast <4 x float> %i.gd, %i.ei
  %i.gf = fsub fast <4 x float> splat (float 1.000000e+00), %i.ei ; 2 uses
  %12 = fcmp fast ole <4 x float> %i.gf, zeroinitializer
  %i.gg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.gf, <4 x float> splat (float f0x00800000))
  %i.gh = bitcast <4 x float> %i.gg to <4 x i32>  ; 2 uses
  %i.gi = lshr <4 x i32> %i.gh, splat (i32 23)
  %i.gj = and <4 x i32> %i.gh, splat (i32 -2139095041)
  %i.gk = or disjoint <4 x i32> %i.gj, splat (i32 1056964608)
  %i.gl = bitcast <4 x i32> %i.gk to <4 x float>  ; 3 uses
  %i.gm = add nsw <4 x i32> %i.gi, splat (i32 -127)
  %i.gn = sitofp fast <4 x i32> %i.gm to <4 x float> ; 2 uses
  %i.go = fadd fast <4 x float> %i.gn, splat (float 1.000000e+00)
  %i.gp = fcmp fast olt <4 x float> %i.gl, splat (float f0x3F3504F3) ; 2 uses
  %i.gq = select <4 x i1> %i.gp, <4 x float> %i.gl, <4 x float> zeroinitializer
  %i.gr = fadd fast <4 x float> %i.gl, splat (float -1.000000e+00)
  %i.gs = select fast <4 x i1> %i.gp, <4 x float> %i.gn, <4 x float> %i.go
  %i.gt = fadd fast <4 x float> %i.gr, %i.gq      ; 12 uses
  %i.gu = fmul fast <4 x float> %i.gt, %i.gt
  %i.gv = fmul fast <4 x float> %i.gt, splat (float f0x3D9021BB)
  %i.gw = fadd fast <4 x float> %i.gv, splat (float f0xBDEBD1B8)
  %i.gx = fmul fast <4 x float> %i.gw, %i.gt
  %i.gy = fadd fast <4 x float> %i.gx, splat (float f0x3DEF251A)
  %i.gz = fmul fast <4 x float> %i.gy, %i.gt
  %i.ha = fadd fast <4 x float> %i.gz, splat (float f0xBDFE5D4F)
  %i.hb = fmul fast <4 x float> %i.ha, %i.gt
  %i.hc = fadd fast <4 x float> %i.hb, splat (float f0x3E11E9BF)
  %i.hd = fmul fast <4 x float> %i.hc, %i.gt
  %i.he = fadd fast <4 x float> %i.hd, splat (float f0xBE2AAE50)
  %i.hf = fmul fast <4 x float> %i.he, %i.gt
  %i.hg = fadd fast <4 x float> %i.hf, splat (float f0x3E4CCEAC)
  %i.hh = fmul fast <4 x float> %i.hg, %i.gt
  %i.hi = fadd fast <4 x float> %i.hh, splat (float f0xBE7FFFFC)
  %i.hj = fmul fast <4 x float> %i.hi, %i.gt
  %i.hk = fadd fast <4 x float> %i.hj, splat (float f0x3EAAAAAA)
  %i.hl = fmul fast <4 x float> %i.hk, %i.gt
  %reass.mul220 = fmul fast <4 x float> %i.gs, splat (float f0x3F317218)
  %reass.add223 = fadd fast <4 x float> %i.hl, splat (float -5.000000e-01)
  %reass.mul224 = fmul fast <4 x float> %i.gu, %reass.add223
  %i.hm = fadd fast <4 x float> %reass.mul220, %i.gt
  %i.hn = fadd fast <4 x float> %i.hm, %reass.mul224
  %i.ho = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ei)
  %i.hp = fcmp fast uge <4 x float> %i.ho, splat (float f0x38D1B717)
  %13 = select <4 x i1> %12, <4 x float> splat (float -nan(0x3FFFFF)), <4 x float> %i.hn
  %i.hq = select <4 x i1> %i.hp, <4 x float> %13, <4 x float> %i.ge
  %i.hr = fsub fast <4 x float> %i.gb, %i.hq
  %i.hs = fmul fast <4 x float> %i.hr, splat (float 5.000000e-01)
  %i.ht = bitcast <4 x float> %i.hs to <4 x i32>
  %i.hu = lshr <4 x i32> %i.ht, splat (i32 16)
  %i.hv = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.hu, <4 x i32> poison)
  %i.hw = bitcast <8 x i16> %i.hv to <2 x i64>
  %i.hx = extractelement <2 x i64> %i.hw, i64 0
  store i64 %i.hx, ptr %.131237, align 1, !tbaa !41
  %i.hy = getelementptr inbounds nuw i8, ptr %.131237, i64 8 ; 2 uses
  %i.hz = add nuw nsw i32 %.1238, 4               ; 3 uses
  %i.ia = or disjoint i32 %i.hz, 3
  %i.ib = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.ic = icmp slt i32 %i.ia, %i.ib
  br i1 %i.ic, label %.lr.ph239, label %.preheader, !llvm.loop !465

.lr.ph245:                                        ; preds = %.preheader, %.lr.ph245
  %.2244 = phi i32 [ %i.im, %.lr.ph245 ], [ %.1.lcssa, %.preheader ]
  %.232243 = phi ptr [ %i.il, %.lr.ph245 ], [ %.131.lcssa, %.preheader ] ; 3 uses
  %i.id = load i16, ptr %.232243, align 2, !tbaa !51
  %i.ie = zext i16 %i.id to i32
  %i.if = shl nuw i32 %i.ie, 16
  %i.ig = bitcast i32 %i.if to float
  %i.ih = call fast noundef nofpclass(nan inf) float @atanhf(float noundef nofpclass(nan inf) %i.ig) #20
  %i.ii = bitcast float %i.ih to i32
  %i.ij = lshr i32 %i.ii, 16
  %i.ik = trunc nuw i32 %i.ij to i16
  store i16 %i.ik, ptr %.232243, align 2, !tbaa !51
  %i.il = getelementptr inbounds nuw i8, ptr %.232243, i64 2
  %i.im = add nuw nsw i32 %.2244, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.im, %i.ec
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph245, !llvm.loop !466

._crit_edge:                                      ; preds = %.lr.ph245, %.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond255.not = icmp eq i32 %i.o, %lftr.wideiv
  br i1 %exitcond255.not, label %._crit_edge248, label %.noexc

._crit_edge248:                                   ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge248, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL22unary_op_inplace_bf16sINS_23UnaryOp_x86_avx_functor14unary_op_log1pEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #7 personality ptr @__gxx_personality_v0 {
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
  %.not141 = icmp sgt i32 %i.k, %i.j
  br i1 %.not141, label %._crit_edge143, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  %i.o = add nsw i32 %i.j, 1
  %.pre = load i32, ptr %4, align 4, !tbaa !37
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %._crit_edge
  %i.p = phi i32 [ %.pre, %.noexc.lr.ph ], [ %i.cm, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !39, !noalias !473
  %i.r = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !473
  %i.s = mul i64 %i.r, %indvars.iv
  %i.t = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !473
  %i.u = mul i64 %i.s, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.u ; 2 uses
  %i.w = icmp sgt i32 %i.p, 7
  br i1 %i.w, label %.lr.ph, label %.preheader128

.preheader128:                                    ; preds = %.lr.ph, %.noexc
  %i.x = phi i32 [ %i.p, %.noexc ], [ %i.ck, %.lr.ph ] ; 2 uses
  %.030.lcssa = phi ptr [ %i.v, %.noexc ], [ %i.ch, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.ci, %.lr.ph ] ; 3 uses
  %i.y = or disjoint i32 %.0.lcssa, 3
  %i.z = icmp slt i32 %i.y, %i.x
  br i1 %i.z, label %.lr.ph134, label %.preheader

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.0130 = phi i32 [ %i.ci, %.lr.ph ], [ 0, %.noexc ]
  %.030129 = phi ptr [ %i.ch, %.lr.ph ], [ %i.v, %.noexc ] ; 3 uses
  %i.aa = load <8 x i16>, ptr %.030129, align 1, !tbaa !41 ; 2 uses
  %i.ab = shufflevector <8 x i16> %i.aa, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.ac = shufflevector <8 x i16> %i.aa, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 12, i32 4, i32 13, i32 5, i32 14, i32 6, i32 15, i32 7>
  %i.ad = shufflevector <8 x i16> %i.ab, <8 x i16> %i.ac, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.ae = bitcast <16 x i16> %i.ad to <8 x float> ; 5 uses
  %i.af = fmul fast <8 x float> %i.ae, %i.ae
  %i.ag = fmul fast <8 x float> %i.ae, splat (float f0x3EAAAAAB)
  %i.ah = fadd fast <8 x float> %i.ag, splat (float -5.000000e-01)
  %i.ai = fmul fast <8 x float> %i.af, %i.ah
  %i.aj = fadd fast <8 x float> %i.ai, %i.ae
  %i.ak = fadd fast <8 x float> %i.ae, splat (float 1.000000e+00) ; 2 uses
  %i.al = fcmp fast ole <8 x float> %i.ak, zeroinitializer
  %i.am = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ak, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.an = bitcast <8 x float> %i.am to <8 x i32>
  %i.ao = bitcast <8 x float> %i.am to <8 x i32>
  %i.ap = and <8 x i32> %i.ao, splat (i32 -2139095041)
  %i.aq = or disjoint <8 x i32> %i.ap, splat (i32 1056964608)
  %i.ar = bitcast <8 x i32> %i.aq to <8 x float>  ; 3 uses
  %i.as = lshr <8 x i32> %i.an, splat (i32 23)
  %i.at = add nsw <8 x i32> %i.as, splat (i32 -127)
  %i.au = sitofp fast <8 x i32> %i.at to <8 x float> ; 2 uses
  %i.av = fadd fast <8 x float> %i.au, splat (float 1.000000e+00)
  %i.aw = fcmp fast olt <8 x float> %i.ar, splat (float f0x3F3504F3) ; 2 uses
  %i.ax = select <8 x i1> %i.aw, <8 x float> %i.ar, <8 x float> zeroinitializer
  %i.ay = fadd fast <8 x float> %i.ar, splat (float -1.000000e+00)
  %i.az = select fast <8 x i1> %i.aw, <8 x float> %i.au, <8 x float> %i.av
  %i.ba = fadd fast <8 x float> %i.ay, %i.ax      ; 12 uses
  %i.bb = fmul fast <8 x float> %i.ba, %i.ba
  %i.bc = fmul fast <8 x float> %i.ba, splat (float f0x3D9021BB)
  %i.bd = fadd fast <8 x float> %i.bc, splat (float f0xBDEBD1B8)
  %i.be = fmul fast <8 x float> %i.bd, %i.ba
  %i.bf = fadd fast <8 x float> %i.be, splat (float f0x3DEF251A)
  %i.bg = fmul fast <8 x float> %i.bf, %i.ba
  %i.bh = fadd fast <8 x float> %i.bg, splat (float f0xBDFE5D4F)
  %i.bi = fmul fast <8 x float> %i.bh, %i.ba
  %i.bj = fadd fast <8 x float> %i.bi, splat (float f0x3E11E9BF)
  %i.bk = fmul fast <8 x float> %i.bj, %i.ba
  %i.bl = fadd fast <8 x float> %i.bk, splat (float f0xBE2AAE50)
  %i.bm = fmul fast <8 x float> %i.bl, %i.ba
  %i.bn = fadd fast <8 x float> %i.bm, splat (float f0x3E4CCEAC)
  %i.bo = fmul fast <8 x float> %i.bn, %i.ba
  %i.bp = fadd fast <8 x float> %i.bo, splat (float f0xBE7FFFFC)
  %i.bq = fmul fast <8 x float> %i.bp, %i.ba
  %i.br = fadd fast <8 x float> %i.bq, splat (float f0x3EAAAAAA)
  %i.bs = fmul fast <8 x float> %i.br, %i.ba
  %reass.mul125 = fmul fast <8 x float> %i.az, splat (float f0x3F317218)
  %reass.add126 = fadd fast <8 x float> %i.bs, splat (float -5.000000e-01)
  %reass.mul127 = fmul fast <8 x float> %i.bb, %reass.add126
  %i.bt = fadd fast <8 x float> %reass.mul125, %i.ba
  %i.bu = fadd fast <8 x float> %i.bt, %reass.mul127
  %i.bv = bitcast <16 x i16> %i.ad to <8 x i32>
  %i.bw = and <8 x i32> %i.bv, splat (i32 2147418112)
  %i.bx = bitcast <8 x i32> %i.bw to <8 x float>
  %i.by = fcmp fast uge <8 x float> %i.bx, splat (float f0x38D1B717)
  %i.bz = select <8 x i1> %i.al, <8 x float> splat (float -nan(0x3FFFFF)), <8 x float> %i.bu
  %i.ca = select <8 x i1> %i.by, <8 x float> %i.bz, <8 x float> %i.aj
  %i.cb = bitcast <8 x float> %i.ca to <8 x i32>  ; 2 uses
  %i.cc = shufflevector <8 x i32> %i.cb, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cd = shufflevector <8 x i32> %i.cb, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ce = lshr <4 x i32> %i.cc, splat (i32 16)
  %i.cf = lshr <4 x i32> %i.cd, splat (i32 16)
  %i.cg = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.ce, <4 x i32> %i.cf)
  store <8 x i16> %i.cg, ptr %.030129, align 1, !tbaa !41
  %i.ch = getelementptr inbounds nuw i8, ptr %.030129, i64 16 ; 2 uses
  %i.ci = add nuw nsw i32 %.0130, 8               ; 3 uses
  %i.cj = or disjoint i32 %i.ci, 7
  %i.ck = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.cl = icmp slt i32 %i.cj, %i.ck
  br i1 %i.cl, label %.lr.ph, label %.preheader128, !llvm.loop !470

.preheader:                                       ; preds = %.lr.ph134, %.preheader128
  %i.cm = phi i32 [ %i.x, %.preheader128 ], [ %i.ew, %.lr.ph134 ] ; 3 uses
  %.131.lcssa = phi ptr [ %.030.lcssa, %.preheader128 ], [ %i.et, %.lr.ph134 ]
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader128 ], [ %i.eu, %.lr.ph134 ] ; 2 uses
  %i.cn = icmp slt i32 %.1.lcssa, %i.cm
  br i1 %i.cn, label %.lr.ph140, label %._crit_edge

.lr.ph134:                                        ; preds = %.preheader128, %.lr.ph134
  %.1133 = phi i32 [ %i.eu, %.lr.ph134 ], [ %.0.lcssa, %.preheader128 ]
  %.131132 = phi ptr [ %i.et, %.lr.ph134 ], [ %.030.lcssa, %.preheader128 ] ; 3 uses
  %i.co = load i64, ptr %.131132, align 1, !tbaa !41
  %i.cp = insertelement <2 x i64> poison, i64 %i.co, i64 0
  %i.cq = bitcast <2 x i64> %i.cp to <8 x i16>
  %i.cr = shufflevector <8 x i16> %i.cq, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3> ; 2 uses
  %i.cs = bitcast <8 x i16> %i.cr to <4 x float>  ; 5 uses
  %i.ct = fmul fast <4 x float> %i.cs, %i.cs
  %i.cu = fmul fast <4 x float> %i.cs, splat (float f0x3EAAAAAB)
  %i.cv = fadd fast <4 x float> %i.cu, splat (float -5.000000e-01)
  %i.cw = fmul fast <4 x float> %i.ct, %i.cv
end_hunk_4
