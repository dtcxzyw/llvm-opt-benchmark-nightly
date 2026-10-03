Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/unaryop_x86_avx512?download=true
inline.NumInlined: 29
inline.NumDeleted: 29
begin_hunk_0_@_ZN4ncnnL16unary_op_inplaceINS_26UnaryOp_x86_avx512_functor13unary_op_sinhEEEiRNS_3MatERKNS_6OptionE.omp_outlined:bb.a
  %i.bb = call <16 x float> @llvm.fabs.v16f32(<16 x float> %i.x)
  %i.bc = fcmp fast olt <16 x float> %i.bb, splat (float f0x38D1B717) ; 2 uses
  %i.bd = select fast <16 x i1> %i.bc, <16 x float> %i.ac, <16 x float> %i.ba
  %i.be = fneg fast <16 x float> %i.x
  %i.bf = fsub fast <16 x float> splat (float 5.000000e-01), %i.z
  %i.bg = fmul fast <16 x float> %i.y, %i.bf
  %i.bh = fsub fast <16 x float> %i.bg, %i.x
  %i.bi = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.be, <16 x float> splat (float f0x42B0C0A5), i32 4)
  %i.bj = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.bi, <16 x float> splat (float f0xC2B0C0A5), i32 4) ; 2 uses
  %i.bk = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bj, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.bl = call fast <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.bk, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.bm = fcmp fast ogt <16 x float> %i.bl, %i.bk
  %i.bn = fadd fast <16 x float> %i.bl, splat (float -1.000000e+00)
  %i.bo = select fast <16 x i1> %i.bm, <16 x float> %i.bn, <16 x float> %i.bl ; 2 uses
  %i.bp = fneg fast <16 x float> %i.bo            ; 2 uses
  %i.bq = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.bp, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.bj)
  %i.br = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.bp, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.bq) ; 8 uses
  %i.bs = fmul fast <16 x float> %i.br, %i.br
  %i.bt = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.br, <16 x float> splat (float f0x39506967), <16 x float> splat (float f0x3AB743CE))
  %i.bu = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bt, <16 x float> nofpclass(nan inf) %i.br, <16 x float> splat (float f0x3C088908))
  %i.bv = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bu, <16 x float> nofpclass(nan inf) %i.br, <16 x float> splat (float f0x3D2AA9C1))
  %i.bw = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bv, <16 x float> nofpclass(nan inf) %i.br, <16 x float> splat (float f0x3E2AAAAA))
  %i.bx = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bw, <16 x float> nofpclass(nan inf) %i.br, <16 x float> splat (float 5.000000e-01))
  %i.by = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bx, <16 x float> nofpclass(nan inf) %i.bs, <16 x float> nofpclass(nan inf) %i.br)
  %i.bz = fadd fast <16 x float> %i.by, splat (float 1.000000e+00)
  %i.ca = call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.bo, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.cb = shl <16 x i32> %i.ca, splat (i32 23)
  %i.cc = add <16 x i32> %i.cb, splat (i32 1065353216)
  %i.cd = bitcast <16 x i32> %i.cc to <16 x float>
  %i.ce = fmul fast <16 x float> %i.bz, %i.cd
  %i.cf = fadd fast <16 x float> %i.ce, splat (float -1.000000e+00)
  %i.cg = select fast <16 x i1> %i.bc, <16 x float> %i.bh, <16 x float> %i.cf
  %i.ch = fsub fast <16 x float> %i.bd, %i.cg
  %i.ci = fmul fast <16 x float> %i.ch, splat (float 5.000000e-01)
  store <16 x float> %i.ci, ptr %.02761, align 1, !tbaa !41
  %i.cj = getelementptr inbounds nuw i8, ptr %.02761, i64 64 ; 2 uses
  %i.ck = add nuw nsw i32 %.062, 16               ; 3 uses
  %i.cl = or disjoint i32 %i.ck, 15
  %i.cm = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.cn = icmp slt i32 %i.cl, %i.cm
  br i1 %i.cn, label %.lr.ph, label %._crit_edge, !llvm.loop !149

._crit_edge:                                      ; preds = %.lr.ph, %.noexc
  %.027.lcssa = phi ptr [ %i.u, %.noexc ], [ %i.cj, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.ck, %.lr.ph ] ; 2 uses
  %.lcssa = phi i32 [ %i.v, %.noexc ], [ %i.cm, %.lr.ph ] ; 2 uses
  %i.co = icmp slt i32 %.0.lcssa, %.lcssa
  br i1 %i.co, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %i.cp = sub nuw nsw i32 %.lcssa, %.0.lcssa
  %notmask = shl nsw i32 -1, %i.cp
  %i.cq = trunc i32 %notmask to i16
  %i.cr = xor i16 %i.cq, -1
  %i.cs = bitcast i16 %i.cr to <16 x i1>          ; 2 uses
  %i.ct = call fast noundef nofpclass(nan inf) <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %.027.lcssa, <16 x i1> %i.cs, <16 x float> zeroinitializer) ; 8 uses
  %i.cu = fmul fast <16 x float> %i.ct, %i.ct     ; 2 uses
  %i.cv = fmul fast <16 x float> %i.ct, splat (float f0x3E2AAAAB) ; 2 uses
  %i.cw = fadd fast <16 x float> %i.cv, splat (float 5.000000e-01)
  %i.cx = fmul fast <16 x float> %i.cu, %i.cw
  %i.cy = fadd fast <16 x float> %i.cx, %i.ct
  %i.cz = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.ct, <16 x float> splat (float f0x42B0C0A5), i32 4)
  %i.da = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.cz, <16 x float> splat (float f0xC2B0C0A5), i32 4) ; 2 uses
  %i.db = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.da, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.dc = call fast <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.db, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.dd = fcmp fast ogt <16 x float> %i.dc, %i.db
  %i.de = fadd fast <16 x float> %i.dc, splat (float -1.000000e+00)
  %i.df = select fast <16 x i1> %i.dd, <16 x float> %i.de, <16 x float> %i.dc ; 2 uses
  %i.dg = fneg fast <16 x float> %i.df            ; 2 uses
  %i.dh = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.dg, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.da)
  %i.di = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.dg, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.dh) ; 8 uses
  %i.dj = fmul fast <16 x float> %i.di, %i.di
  %i.dk = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.di, <16 x float> splat (float f0x39506967), <16 x float> splat (float f0x3AB743CE))
  %i.dl = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dk, <16 x float> nofpclass(nan inf) %i.di, <16 x float> splat (float f0x3C088908))
  %i.dm = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dl, <16 x float> nofpclass(nan inf) %i.di, <16 x float> splat (float f0x3D2AA9C1))
  %i.dn = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dm, <16 x float> nofpclass(nan inf) %i.di, <16 x float> splat (float f0x3E2AAAAA))
  %i.do = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dn, <16 x float> nofpclass(nan inf) %i.di, <16 x float> splat (float 5.000000e-01))
  %i.dp = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.do, <16 x float> nofpclass(nan inf) %i.dj, <16 x float> nofpclass(nan inf) %i.di)
  %i.dq = fadd fast <16 x float> %i.dp, splat (float 1.000000e+00)
  %i.dr = call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.df, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.ds = shl <16 x i32> %i.dr, splat (i32 23)
  %i.dt = add <16 x i32> %i.ds, splat (i32 1065353216)
  %i.du = bitcast <16 x i32> %i.dt to <16 x float>
  %i.dv = fmul fast <16 x float> %i.dq, %i.du
  %i.dw = fadd fast <16 x float> %i.dv, splat (float -1.000000e+00)
  %i.dx = call <16 x float> @llvm.fabs.v16f32(<16 x float> %i.ct)
  %i.dy = fcmp fast olt <16 x float> %i.dx, splat (float f0x38D1B717) ; 2 uses
  %i.dz = select fast <16 x i1> %i.dy, <16 x float> %i.cy, <16 x float> %i.dw
  %i.ea = fneg fast <16 x float> %i.ct
  %i.eb = fsub fast <16 x float> splat (float 5.000000e-01), %i.cv
  %i.ec = fmul fast <16 x float> %i.cu, %i.eb
  %i.ed = fsub fast <16 x float> %i.ec, %i.ct
  %i.ee = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.ea, <16 x float> splat (float f0x42B0C0A5), i32 4)
  %i.ef = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.ee, <16 x float> splat (float f0xC2B0C0A5), i32 4) ; 2 uses
  %i.eg = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ef, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.eh = call fast <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.eg, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.ei = fcmp fast ogt <16 x float> %i.eh, %i.eg
  %i.ej = fadd fast <16 x float> %i.eh, splat (float -1.000000e+00)
  %i.ek = select fast <16 x i1> %i.ei, <16 x float> %i.ej, <16 x float> %i.eh ; 2 uses
  %i.el = fneg fast <16 x float> %i.ek            ; 2 uses
  %i.em = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.el, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.ef)
  %i.en = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.el, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.em) ; 8 uses
  %i.eo = fmul fast <16 x float> %i.en, %i.en
  %i.ep = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.en, <16 x float> splat (float f0x39506967), <16 x float> splat (float f0x3AB743CE))
  %i.eq = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ep, <16 x float> nofpclass(nan inf) %i.en, <16 x float> splat (float f0x3C088908))
  %i.er = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.eq, <16 x float> nofpclass(nan inf) %i.en, <16 x float> splat (float f0x3D2AA9C1))
  %i.es = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.er, <16 x float> nofpclass(nan inf) %i.en, <16 x float> splat (float f0x3E2AAAAA))
  %i.et = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.es, <16 x float> nofpclass(nan inf) %i.en, <16 x float> splat (float 5.000000e-01))
  %i.eu = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.et, <16 x float> nofpclass(nan inf) %i.eo, <16 x float> nofpclass(nan inf) %i.en)
  %i.ev = fadd fast <16 x float> %i.eu, splat (float 1.000000e+00)
  %i.ew = call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.ek, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.ex = shl <16 x i32> %i.ew, splat (i32 23)
  %i.ey = add <16 x i32> %i.ex, splat (i32 1065353216)
  %i.ez = bitcast <16 x i32> %i.ey to <16 x float>
  %i.fa = fmul fast <16 x float> %i.ev, %i.ez
  %i.fb = fadd fast <16 x float> %i.fa, splat (float -1.000000e+00)
  %i.fc = select fast <16 x i1> %i.dy, <16 x float> %i.ed, <16 x float> %i.fb
  %i.fd = fsub fast <16 x float> %i.dz, %i.fc
  %i.fe = fmul fast <16 x float> %i.fd, splat (float 5.000000e-01)
  call void @llvm.masked.store.v16f32.p0(<16 x float> nofpclass(nan inf) %i.fe, ptr align 1 %.027.lcssa, <16 x i1> %i.cs)
  %.pre = load i32, ptr %i.b, align 4, !tbaa !37
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %i.ff = phi i32 [ %.pre, %bb.c ], [ %i.o, %._crit_edge ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.fg = sext i32 %i.ff to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.fg
  br i1 %.not.not, label %.noexc, label %._crit_edge67

._crit_edge67:                                    ; preds = %bb.d, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge67, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL16unary_op_inplaceINS_26UnaryOp_x86_avx512_functor14unary_op_asinhEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !37     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 0, ptr %i.a, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i32 %i.g, ptr %i.b, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store i32 1, ptr %i.c, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store i32 0, ptr %i.d, align 4, !tbaa !37
  %i.h = load i32, ptr %0, align 4, !tbaa !37     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !37
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !37
  %i.k = load i32, ptr %i.a, align 4, !tbaa !37   ; 2 uses
  %.not55 = icmp sgt i32 %i.k, %i.j
  br i1 %.not55, label %._crit_edge57, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %bb.d
  %i.o = phi i32 [ %i.j, %.noexc.lr.ph ], [ %i.fy, %bb.d ]
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.p = load ptr, ptr %3, align 8, !tbaa !39, !noalias !154
  %i.q = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !154
  %i.r = mul i64 %i.q, %indvars.iv
  %i.s = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !154
  %i.t = mul i64 %i.r, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.t ; 2 uses
  %i.v = load i32, ptr %4, align 4, !tbaa !37     ; 2 uses
  %i.w = icmp sgt i32 %i.v, 15
  br i1 %i.w, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.052 = phi i32 [ %i.cs, %.lr.ph ], [ 0, %.noexc ]
  %.02751 = phi ptr [ %i.cr, %.lr.ph ], [ %i.u, %.noexc ] ; 3 uses
  %i.x = load <16 x i32>, ptr %.02751, align 1, !tbaa !41 ; 2 uses
  %i.y = and <16 x i32> %i.x, splat (i32 2147483647)
  %i.z = bitcast <16 x i32> %i.y to <16 x float>  ; 5 uses
  %i.aa = fmul fast <16 x float> %i.z, %i.z
  %i.ab = fadd fast <16 x float> %i.aa, splat (float 1.000000e+00)
  %i.ac = call fast noundef nofpclass(nan inf) <16 x float> @llvm.sqrt.v16f32(<16 x float> nofpclass(nan inf) %i.ab)
  %i.ad = fadd fast <16 x float> %i.ac, %i.z
  %6 = call <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.ad, <16 x float> splat (float f0x00800000))
  %i.ae = bitcast <16 x float> %6 to <16 x i32>   ; 2 uses
  %i.af = lshr <16 x i32> %i.ae, splat (i32 23)
  %i.ag = and <16 x i32> %i.ae, splat (i32 8388607)
  %i.ah = or disjoint <16 x i32> %i.ag, splat (i32 1056964608)
  %i.ai = bitcast <16 x i32> %i.ah to <16 x float> ; 3 uses
  %i.aj = add nsw <16 x i32> %i.af, splat (i32 -127)
  %i.ak = sitofp fast <16 x i32> %i.aj to <16 x float> ; 2 uses
  %i.al = fadd fast <16 x float> %i.ak, splat (float 1.000000e+00)
  %i.am = fcmp fast olt <16 x float> %i.ai, splat (float f0x3F3504F3) ; 2 uses
  %i.an = fadd fast <16 x float> %i.ai, splat (float -1.000000e+00)
  %i.ao = select fast <16 x i1> %i.am, <16 x float> %i.ak, <16 x float> %i.al ; 2 uses
  %i.ap = select fast <16 x i1> %i.am, <16 x float> %i.ai, <16 x float> zeroinitializer
  %i.aq = fadd fast <16 x float> %i.an, %i.ap     ; 12 uses
  %i.ar = fmul fast <16 x float> %i.aq, %i.aq     ; 2 uses
  %i.as = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aq, <16 x float> splat (float f0x3D9021BB), <16 x float> splat (float f0xBDEBD1B8))
  %i.at = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.as, <16 x float> nofpclass(nan inf) %i.aq, <16 x float> splat (float f0x3DEF251A))
  %i.au = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.at, <16 x float> nofpclass(nan inf) %i.aq, <16 x float> splat (float f0xBDFE5D4F))
  %i.av = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.au, <16 x float> nofpclass(nan inf) %i.aq, <16 x float> splat (float f0x3E11E9BF))
  %i.aw = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.av, <16 x float> nofpclass(nan inf) %i.aq, <16 x float> splat (float f0xBE2AAE50))
  %i.ax = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aw, <16 x float> nofpclass(nan inf) %i.aq, <16 x float> splat (float f0x3E4CCEAC))
  %i.ay = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ax, <16 x float> nofpclass(nan inf) %i.aq, <16 x float> splat (float f0xBE7FFFFC))
  %i.az = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ay, <16 x float> nofpclass(nan inf) %i.aq, <16 x float> splat (float f0x3EAAAAAA))
  %i.ba = fmul fast <16 x float> %i.ar, %i.aq
  %i.bb = fmul fast <16 x float> %i.ba, %i.az
  %i.bc = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ao, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.bb)
  %i.bd = fneg fast <16 x float> %i.ar
  %i.be = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.bd, <16 x float> splat (float 5.000000e-01), <16 x float> nofpclass(nan inf) %i.bc)
  %i.bf = fadd fast <16 x float> %i.be, %i.aq
  %i.bg = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ao, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.bf)
  %i.bh = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.z, <16 x float> splat (float f0x00800000), i32 4)
  %i.bi = bitcast <16 x float> %i.bh to <16 x i32> ; 2 uses
  %i.bj = lshr <16 x i32> %i.bi, splat (i32 23)
  %i.bk = and <16 x i32> %i.bi, splat (i32 -2139095041)
  %i.bl = or disjoint <16 x i32> %i.bk, splat (i32 1056964608)
  %i.bm = bitcast <16 x i32> %i.bl to <16 x float> ; 3 uses
  %i.bn = add nsw <16 x i32> %i.bj, splat (i32 -127)
  %i.bo = sitofp fast <16 x i32> %i.bn to <16 x float> ; 2 uses
  %i.bp = fadd fast <16 x float> %i.bo, splat (float 1.000000e+00)
  %i.bq = fcmp fast olt <16 x float> %i.bm, splat (float f0x3F3504F3) ; 2 uses
  %i.br = fadd fast <16 x float> %i.bm, splat (float -1.000000e+00)
  %i.bs = select fast <16 x i1> %i.bq, <16 x float> %i.bo, <16 x float> %i.bp ; 2 uses
  %i.bt = select fast <16 x i1> %i.bq, <16 x float> %i.bm, <16 x float> zeroinitializer
  %i.bu = fadd fast <16 x float> %i.br, %i.bt     ; 12 uses
  %i.bv = fmul fast <16 x float> %i.bu, %i.bu     ; 2 uses
  %i.bw = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bu, <16 x float> splat (float f0x3D9021BB), <16 x float> splat (float f0xBDEBD1B8))
  %i.bx = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bw, <16 x float> nofpclass(nan inf) %i.bu, <16 x float> splat (float f0x3DEF251A))
  %i.by = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bx, <16 x float> nofpclass(nan inf) %i.bu, <16 x float> splat (float f0xBDFE5D4F))
  %i.bz = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.by, <16 x float> nofpclass(nan inf) %i.bu, <16 x float> splat (float f0x3E11E9BF))
  %i.ca = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bz, <16 x float> nofpclass(nan inf) %i.bu, <16 x float> splat (float f0xBE2AAE50))
  %i.cb = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ca, <16 x float> nofpclass(nan inf) %i.bu, <16 x float> splat (float f0x3E4CCEAC))
  %i.cc = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cb, <16 x float> nofpclass(nan inf) %i.bu, <16 x float> splat (float f0xBE7FFFFC))
  %i.cd = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cc, <16 x float> nofpclass(nan inf) %i.bu, <16 x float> splat (float f0x3EAAAAAA))
  %i.ce = fmul fast <16 x float> %i.bv, %i.bu
  %i.cf = fmul fast <16 x float> %i.ce, %i.cd
  %i.cg = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bs, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.cf)
  %i.ch = fneg fast <16 x float> %i.bv
  %i.ci = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.ch, <16 x float> splat (float 5.000000e-01), <16 x float> nofpclass(nan inf) %i.cg)
  %i.cj = fadd fast <16 x float> %i.ci, %i.bu
  %i.ck = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bs, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.cj)
  %i.cl = fadd fast <16 x float> %i.ck, splat (float f0x3F317218)
  %i.cm = fcmp fast ogt <16 x float> %i.z, splat (float f0x5F0AC723)
  %i.cn = select fast <16 x i1> %i.cm, <16 x float> %i.cl, <16 x float> %i.bg
  %i.co = and <16 x i32> %i.x, splat (i32 -2147483648)
  %i.cp = bitcast <16 x float> %i.cn to <16 x i32>
  %i.cq = or <16 x i32> %i.co, %i.cp
  store <16 x i32> %i.cq, ptr %.02751, align 1, !tbaa !41
  %i.cr = getelementptr inbounds nuw i8, ptr %.02751, i64 64 ; 2 uses
  %i.cs = add nuw nsw i32 %.052, 16               ; 3 uses
  %i.ct = or disjoint i32 %i.cs, 15
  %i.cu = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.cv = icmp slt i32 %i.ct, %i.cu
  br i1 %i.cv, label %.lr.ph, label %._crit_edge, !llvm.loop !153

._crit_edge:                                      ; preds = %.lr.ph, %.noexc
  %.027.lcssa = phi ptr [ %i.u, %.noexc ], [ %i.cr, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.cs, %.lr.ph ] ; 2 uses
  %.lcssa = phi i32 [ %i.v, %.noexc ], [ %i.cu, %.lr.ph ] ; 2 uses
  %i.cw = icmp slt i32 %.0.lcssa, %.lcssa
  br i1 %i.cw, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %i.cx = sub nuw nsw i32 %.lcssa, %.0.lcssa
  %notmask = shl nsw i32 -1, %i.cx
  %i.cy = trunc i32 %notmask to i16
  %i.cz = xor i16 %i.cy, -1
  %i.da = bitcast i16 %i.cz to <16 x i1>          ; 2 uses
  %i.db = call fast noundef nofpclass(nan inf) <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %.027.lcssa, <16 x i1> %i.da, <16 x float> zeroinitializer) ; 5 uses
  %i.dc = bitcast <16 x float> %i.db to <16 x i32>
  %i.dd = call <16 x float> @llvm.fabs.v16f32(<16 x float> %i.db) ; 3 uses
  %i.de = fmul fast <16 x float> %i.db, %i.db
  %i.df = fadd fast <16 x float> %i.de, splat (float 1.000000e+00)
  %i.dg = call fast noundef nofpclass(nan inf) <16 x float> @llvm.sqrt.v16f32(<16 x float> nofpclass(nan inf) %i.df)
  %i.dh = fadd fast <16 x float> %i.dg, %i.dd
  %7 = call <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.dh, <16 x float> splat (float f0x00800000))
  %i.di = bitcast <16 x float> %7 to <16 x i32>   ; 2 uses
  %i.dj = lshr <16 x i32> %i.di, splat (i32 23)
  %i.dk = and <16 x i32> %i.di, splat (i32 8388607)
  %i.dl = or disjoint <16 x i32> %i.dk, splat (i32 1056964608)
  %i.dm = bitcast <16 x i32> %i.dl to <16 x float> ; 3 uses
  %i.dn = add nsw <16 x i32> %i.dj, splat (i32 -127)
  %i.do = sitofp fast <16 x i32> %i.dn to <16 x float> ; 2 uses
  %i.dp = fadd fast <16 x float> %i.do, splat (float 1.000000e+00)
  %i.dq = fcmp fast olt <16 x float> %i.dm, splat (float f0x3F3504F3) ; 2 uses
  %i.dr = fadd fast <16 x float> %i.dm, splat (float -1.000000e+00)
  %i.ds = select fast <16 x i1> %i.dq, <16 x float> %i.do, <16 x float> %i.dp ; 2 uses
  %i.dt = select fast <16 x i1> %i.dq, <16 x float> %i.dm, <16 x float> zeroinitializer
  %i.du = fadd fast <16 x float> %i.dr, %i.dt     ; 12 uses
  %i.dv = fmul fast <16 x float> %i.du, %i.du     ; 2 uses
  %i.dw = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.du, <16 x float> splat (float f0x3D9021BB), <16 x float> splat (float f0xBDEBD1B8))
  %i.dx = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dw, <16 x float> nofpclass(nan inf) %i.du, <16 x float> splat (float f0x3DEF251A))
  %i.dy = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dx, <16 x float> nofpclass(nan inf) %i.du, <16 x float> splat (float f0xBDFE5D4F))
  %i.dz = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dy, <16 x float> nofpclass(nan inf) %i.du, <16 x float> splat (float f0x3E11E9BF))
  %i.ea = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dz, <16 x float> nofpclass(nan inf) %i.du, <16 x float> splat (float f0xBE2AAE50))
  %i.eb = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ea, <16 x float> nofpclass(nan inf) %i.du, <16 x float> splat (float f0x3E4CCEAC))
  %i.ec = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.eb, <16 x float> nofpclass(nan inf) %i.du, <16 x float> splat (float f0xBE7FFFFC))
  %i.ed = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ec, <16 x float> nofpclass(nan inf) %i.du, <16 x float> splat (float f0x3EAAAAAA))
  %i.ee = fmul fast <16 x float> %i.dv, %i.du
  %i.ef = fmul fast <16 x float> %i.ee, %i.ed
  %i.eg = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ds, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.ef)
  %i.eh = fneg fast <16 x float> %i.dv
  %i.ei = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.eh, <16 x float> splat (float 5.000000e-01), <16 x float> nofpclass(nan inf) %i.eg)
  %i.ej = fadd fast <16 x float> %i.ei, %i.du
  %i.ek = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ds, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.ej)
  %i.el = fcmp fast oeq <16 x float> %i.db, zeroinitializer
  %i.em = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.dd, <16 x float> splat (float f0x00800000), i32 4)
  %i.en = bitcast <16 x float> %i.em to <16 x i32> ; 2 uses
  %i.eo = lshr <16 x i32> %i.en, splat (i32 23)
  %i.ep = and <16 x i32> %i.en, splat (i32 -2139095041)
  %i.eq = or disjoint <16 x i32> %i.ep, splat (i32 1056964608)
  %i.er = bitcast <16 x i32> %i.eq to <16 x float> ; 3 uses
  %i.es = add nsw <16 x i32> %i.eo, splat (i32 -127)
  %i.et = sitofp fast <16 x i32> %i.es to <16 x float> ; 2 uses
  %i.eu = fadd fast <16 x float> %i.et, splat (float 1.000000e+00)
  %i.ev = fcmp fast olt <16 x float> %i.er, splat (float f0x3F3504F3) ; 2 uses
  %i.ew = fadd fast <16 x float> %i.er, splat (float -1.000000e+00)
  %i.ex = select fast <16 x i1> %i.ev, <16 x float> %i.et, <16 x float> %i.eu ; 2 uses
  %i.ey = select fast <16 x i1> %i.ev, <16 x float> %i.er, <16 x float> zeroinitializer
  %i.ez = fadd fast <16 x float> %i.ew, %i.ey     ; 12 uses
  %i.fa = fmul fast <16 x float> %i.ez, %i.ez     ; 2 uses
  %i.fb = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ez, <16 x float> splat (float f0x3D9021BB), <16 x float> splat (float f0xBDEBD1B8))
  %i.fc = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fb, <16 x float> nofpclass(nan inf) %i.ez, <16 x float> splat (float f0x3DEF251A))
  %i.fd = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fc, <16 x float> nofpclass(nan inf) %i.ez, <16 x float> splat (float f0xBDFE5D4F))
  %i.fe = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fd, <16 x float> nofpclass(nan inf) %i.ez, <16 x float> splat (float f0x3E11E9BF))
  %i.ff = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fe, <16 x float> nofpclass(nan inf) %i.ez, <16 x float> splat (float f0xBE2AAE50))
  %i.fg = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ff, <16 x float> nofpclass(nan inf) %i.ez, <16 x float> splat (float f0x3E4CCEAC))
  %i.fh = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fg, <16 x float> nofpclass(nan inf) %i.ez, <16 x float> splat (float f0xBE7FFFFC))
  %i.fi = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fh, <16 x float> nofpclass(nan inf) %i.ez, <16 x float> splat (float f0x3EAAAAAA))
  %i.fj = fmul fast <16 x float> %i.fa, %i.ez
  %i.fk = fmul fast <16 x float> %i.fj, %i.fi
  %i.fl = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ex, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.fk)
  %i.fm = fneg fast <16 x float> %i.fa
  %i.fn = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.fm, <16 x float> splat (float 5.000000e-01), <16 x float> nofpclass(nan inf) %i.fl)
  %i.fo = fadd fast <16 x float> %i.fn, %i.ez
  %i.fp = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ex, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.fo)
  %i.fq = fadd fast <16 x float> %i.fp, splat (float f0x3F317218)
  %i.fr = select <16 x i1> %i.el, <16 x float> splat (float -nan(0x3FFFFF)), <16 x float> %i.fq
  %i.fs = fcmp fast ogt <16 x float> %i.dd, splat (float f0x5F0AC723)
  %i.ft = select fast <16 x i1> %i.fs, <16 x float> %i.fr, <16 x float> %i.ek
  %i.fu = and <16 x i32> %i.dc, splat (i32 -2147483648)
  %i.fv = bitcast <16 x float> %i.ft to <16 x i32>
  %i.fw = or <16 x i32> %i.fu, %i.fv
  %i.fx = bitcast <16 x i32> %i.fw to <16 x float>
  call void @llvm.masked.store.v16f32.p0(<16 x float> nofpclass(nan inf) %i.fx, ptr align 1 %.027.lcssa, <16 x i1> %i.da)
  %.pre = load i32, ptr %i.b, align 4, !tbaa !37
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %i.fy = phi i32 [ %.pre, %bb.c ], [ %i.o, %._crit_edge ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.fz = sext i32 %i.fy to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.fz
  br i1 %.not.not, label %.noexc, label %._crit_edge57

._crit_edge57:                                    ; preds = %bb.d, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge57, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL16unary_op_inplaceINS_26UnaryOp_x86_avx512_functor13unary_op_coshEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !37     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 0, ptr %i.a, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i32 %i.g, ptr %i.b, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store i32 1, ptr %i.c, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store i32 0, ptr %i.d, align 4, !tbaa !37
  %i.h = load i32, ptr %0, align 4, !tbaa !37     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !37
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !37
  %i.k = load i32, ptr %i.a, align 4, !tbaa !37   ; 2 uses
  %.not49 = icmp sgt i32 %i.k, %i.j
  br i1 %.not49, label %._crit_edge51, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %bb.d
  %i.o = phi i32 [ %i.j, %.noexc.lr.ph ], [ %i.ed, %bb.d ]
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.p = load ptr, ptr %3, align 8, !tbaa !39, !noalias !158
  %i.q = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !158
  %i.r = mul i64 %i.q, %indvars.iv
  %i.s = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !158
  %i.t = mul i64 %i.r, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.t ; 2 uses
  %i.v = load i32, ptr %4, align 4, !tbaa !37     ; 2 uses
  %i.w = icmp sgt i32 %i.v, 15
  br i1 %i.w, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.046 = phi i32 [ %i.bw, %.lr.ph ], [ 0, %.noexc ]
  %.02745 = phi ptr [ %i.bv, %.lr.ph ], [ %i.u, %.noexc ] ; 3 uses
  %i.x = load <16 x float>, ptr %.02745, align 1, !tbaa !41 ; 2 uses
  %i.y = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.x, <16 x float> splat (float f0x42B0C0A5), i32 4)
  %i.z = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.y, <16 x float> splat (float f0xC2B0C0A5), i32 4) ; 2 uses
  %i.aa = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.z, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.ab = call fast <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.aa, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.ac = fcmp fast ogt <16 x float> %i.ab, %i.aa
  %i.ad = fadd fast <16 x float> %i.ab, splat (float -1.000000e+00)
  %i.ae = select fast <16 x i1> %i.ac, <16 x float> %i.ad, <16 x float> %i.ab ; 2 uses
  %i.af = fneg fast <16 x float> %i.ae            ; 2 uses
  %i.ag = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.af, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.z)
  %i.ah = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.af, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.ag) ; 8 uses
  %i.ai = fmul fast <16 x float> %i.ah, %i.ah
  %i.aj = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ah, <16 x float> splat (float f0x39506967), <16 x float> splat (float f0x3AB743CE))
  %i.ak = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aj, <16 x float> nofpclass(nan inf) %i.ah, <16 x float> splat (float f0x3C088908))
  %i.al = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ak, <16 x float> nofpclass(nan inf) %i.ah, <16 x float> splat (float f0x3D2AA9C1))
  %i.am = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.al, <16 x float> nofpclass(nan inf) %i.ah, <16 x float> splat (float f0x3E2AAAAA))
  %i.an = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.am, <16 x float> nofpclass(nan inf) %i.ah, <16 x float> splat (float 5.000000e-01))
  %i.ao = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.an, <16 x float> nofpclass(nan inf) %i.ai, <16 x float> nofpclass(nan inf) %i.ah)
  %i.ap = fadd fast <16 x float> %i.ao, splat (float 1.000000e+00)
  %i.aq = call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.ae, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.ar = shl <16 x i32> %i.aq, splat (i32 23)
  %i.as = add <16 x i32> %i.ar, splat (i32 1065353216)
  %i.at = bitcast <16 x i32> %i.as to <16 x float>
  %i.au = fmul fast <16 x float> %i.ap, %i.at
  %i.av = fneg fast <16 x float> %i.x
  %i.aw = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.av, <16 x float> splat (float f0x42B0C0A5), i32 4)
  %i.ax = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.aw, <16 x float> splat (float f0xC2B0C0A5), i32 4) ; 2 uses
  %i.ay = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ax, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.az = call fast <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.ay, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.ba = fcmp fast ogt <16 x float> %i.az, %i.ay
  %i.bb = fadd fast <16 x float> %i.az, splat (float -1.000000e+00)
  %i.bc = select fast <16 x i1> %i.ba, <16 x float> %i.bb, <16 x float> %i.az ; 2 uses
  %i.bd = fneg fast <16 x float> %i.bc            ; 2 uses
  %i.be = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.bd, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.ax)
  %i.bf = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.bd, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.be) ; 8 uses
  %i.bg = fmul fast <16 x float> %i.bf, %i.bf
  %i.bh = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bf, <16 x float> splat (float f0x39506967), <16 x float> splat (float f0x3AB743CE))
  %i.bi = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bh, <16 x float> nofpclass(nan inf) %i.bf, <16 x float> splat (float f0x3C088908))
  %i.bj = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bi, <16 x float> nofpclass(nan inf) %i.bf, <16 x float> splat (float f0x3D2AA9C1))
  %i.bk = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bj, <16 x float> nofpclass(nan inf) %i.bf, <16 x float> splat (float f0x3E2AAAAA))
  %i.bl = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bk, <16 x float> nofpclass(nan inf) %i.bf, <16 x float> splat (float 5.000000e-01))
  %i.bm = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bl, <16 x float> nofpclass(nan inf) %i.bg, <16 x float> nofpclass(nan inf) %i.bf)
  %i.bn = fadd fast <16 x float> %i.bm, splat (float 1.000000e+00)
  %i.bo = call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.bc, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.bp = shl <16 x i32> %i.bo, splat (i32 23)
  %i.bq = add <16 x i32> %i.bp, splat (i32 1065353216)
  %i.br = bitcast <16 x i32> %i.bq to <16 x float>
  %i.bs = fmul fast <16 x float> %i.bn, %i.br
  %i.bt = fadd fast <16 x float> %i.bs, %i.au
  %i.bu = fmul fast <16 x float> %i.bt, splat (float 5.000000e-01)
  store <16 x float> %i.bu, ptr %.02745, align 1, !tbaa !41
  %i.bv = getelementptr inbounds nuw i8, ptr %.02745, i64 64 ; 2 uses
  %i.bw = add nuw nsw i32 %.046, 16               ; 3 uses
  %i.bx = or disjoint i32 %i.bw, 15
  %i.by = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.bz = icmp slt i32 %i.bx, %i.by
  br i1 %i.bz, label %.lr.ph, label %._crit_edge, !llvm.loop !157

._crit_edge:                                      ; preds = %.lr.ph, %.noexc
  %.027.lcssa = phi ptr [ %i.u, %.noexc ], [ %i.bv, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.bw, %.lr.ph ] ; 2 uses
  %.lcssa = phi i32 [ %i.v, %.noexc ], [ %i.by, %.lr.ph ] ; 2 uses
  %i.ca = icmp slt i32 %.0.lcssa, %.lcssa
  br i1 %i.ca, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %i.cb = sub nuw nsw i32 %.lcssa, %.0.lcssa
  %notmask = shl nsw i32 -1, %i.cb
  %i.cc = trunc i32 %notmask to i16
  %i.cd = xor i16 %i.cc, -1
  %i.ce = bitcast i16 %i.cd to <16 x i1>          ; 2 uses
  %i.cf = call fast noundef nofpclass(nan inf) <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %.027.lcssa, <16 x i1> %i.ce, <16 x float> zeroinitializer) ; 2 uses
  %i.cg = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.cf, <16 x float> splat (float f0x42B0C0A5), i32 4)
  %i.ch = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.cg, <16 x float> splat (float f0xC2B0C0A5), i32 4) ; 2 uses
  %i.ci = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ch, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.cj = call fast <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.ci, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.ck = fcmp fast ogt <16 x float> %i.cj, %i.ci
  %i.cl = fadd fast <16 x float> %i.cj, splat (float -1.000000e+00)
  %i.cm = select fast <16 x i1> %i.ck, <16 x float> %i.cl, <16 x float> %i.cj ; 2 uses
  %i.cn = fneg fast <16 x float> %i.cm            ; 2 uses
  %i.co = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.cn, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.ch)
  %i.cp = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.cn, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.co) ; 8 uses
  %i.cq = fmul fast <16 x float> %i.cp, %i.cp
  %i.cr = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cp, <16 x float> splat (float f0x39506967), <16 x float> splat (float f0x3AB743CE))
  %i.cs = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cr, <16 x float> nofpclass(nan inf) %i.cp, <16 x float> splat (float f0x3C088908))
  %i.ct = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cs, <16 x float> nofpclass(nan inf) %i.cp, <16 x float> splat (float f0x3D2AA9C1))
  %i.cu = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ct, <16 x float> nofpclass(nan inf) %i.cp, <16 x float> splat (float f0x3E2AAAAA))
  %i.cv = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cu, <16 x float> nofpclass(nan inf) %i.cp, <16 x float> splat (float 5.000000e-01))
  %i.cw = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cv, <16 x float> nofpclass(nan inf) %i.cq, <16 x float> nofpclass(nan inf) %i.cp)
  %i.cx = fadd fast <16 x float> %i.cw, splat (float 1.000000e+00)
  %i.cy = call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.cm, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.cz = shl <16 x i32> %i.cy, splat (i32 23)
  %i.da = add <16 x i32> %i.cz, splat (i32 1065353216)
  %i.db = bitcast <16 x i32> %i.da to <16 x float>
  %i.dc = fmul fast <16 x float> %i.cx, %i.db
  %i.dd = fneg fast <16 x float> %i.cf
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
  %i.eb = fadd fast <16 x float> %i.ea, %i.dc
  %i.ec = fmul fast <16 x float> %i.eb, splat (float 5.000000e-01)
end_hunk_0
begin_hunk_1_@_ZN4ncnnL22unary_op_inplace_bf16sINS_26UnaryOp_x86_avx512_functor13unary_op_sinhEEEiRNS_3MatERKNS_6OptionE.omp_outlined:bb.a
  %i.gl = shufflevector <16 x i32> %i.gj, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gm = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.gk, <8 x i32> %i.gl)
  %i.gn = bitcast <16 x i16> %i.gm to <4 x i64>
  %i.go = shufflevector <4 x i64> %i.gn, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.gp = bitcast <4 x i64> %i.go to <16 x i16>
  call void @llvm.masked.store.v16i16.p0(<16 x i16> %i.gp, ptr align 1 %.034.lcssa, <16 x i1> %i.dk)
  %.pre91 = load i32, ptr %4, align 4, !tbaa !37
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %i.gq = phi i32 [ %.pre91, %bb.c ], [ %i.df, %._crit_edge ] ; 4 uses
  %.1 = phi i32 [ %i.df, %bb.c ], [ %.0.lcssa, %._crit_edge ] ; 5 uses
  %i.gr = icmp slt i32 %.1, %i.gq
  br i1 %i.gr, label %iter.check, label %._crit_edge83

iter.check:                                       ; preds = %bb.d
  %i.gs = xor i32 %.1, -1
  %i.gt = add i32 %i.gq, %i.gs                    ; 3 uses
  %i.gu = zext i32 %i.gt to i64
  %i.gv = add nuw nsw i64 %i.gu, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.gt, 7
  br i1 %min.iters.check, label %.lr.ph82.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check102 = icmp ult i32 %i.gt, 31
  br i1 %min.iters.check102, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.gw = and i64 %i.gv, 24
  %n.vec = and i64 %i.gv, 8589934560              ; 5 uses
  %i.gx = trunc i64 %n.vec to i32
  %i.gy = add i32 %.1, %i.gx
  %i.gz = shl nuw nsw i64 %n.vec, 1
  %i.ha = getelementptr i8, ptr %.034.lcssa, i64 %i.gz
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.hb = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.034.lcssa, i64 %i.hb ; 2 uses
  %wide.load = load <32 x i16>, ptr %next.gep, align 2, !tbaa !46
  %i.hc = zext <32 x i16> %wide.load to <32 x i32>
  %i.hd = shl nuw <32 x i32> %i.hc, splat (i32 16)
  %i.he = bitcast <32 x i32> %i.hd to <32 x float>
  %i.hf = call fast <32 x float> @llvm.sinh.v32f32(<32 x float> %i.he)
  %i.hg = bitcast <32 x float> %i.hf to <32 x i32>
  %i.hh = lshr <32 x i32> %i.hg, splat (i32 16)
  %i.hi = trunc nuw <32 x i32> %i.hh to <32 x i16>
  store <32 x i16> %i.hi, ptr %next.gep, align 2, !tbaa !46
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.hj = icmp eq i64 %index.next, %n.vec
  br i1 %i.hj, label %middle.block, label %vector.body, !llvm.loop !326

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gv, %n.vec
  br i1 %cmp.n, label %._crit_edge83, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.gw, 0
  br i1 %min.epilog.iters.check, label %.lr.ph82.preheader, label %vec.epilog.ph, !prof !49

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec104 = and i64 %i.gv, 8589934584           ; 4 uses
  %i.hk = trunc i64 %n.vec104 to i32
  %i.hl = add i32 %.1, %i.hk
  %i.hm = shl nuw nsw i64 %n.vec104, 1
  %i.hn = getelementptr i8, ptr %.034.lcssa, i64 %i.hm
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index105 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next108, %vec.epilog.vector.body ] ; 2 uses
  %i.ho = shl i64 %index105, 1
  %next.gep106 = getelementptr i8, ptr %.034.lcssa, i64 %i.ho ; 2 uses
  %wide.load107 = load <8 x i16>, ptr %next.gep106, align 2, !tbaa !46
  %i.hp = zext <8 x i16> %wide.load107 to <8 x i32>
  %i.hq = shl nuw <8 x i32> %i.hp, splat (i32 16)
  %i.hr = bitcast <8 x i32> %i.hq to <8 x float>
  %i.hs = call fast <8 x float> @llvm.sinh.v8f32(<8 x float> %i.hr)
  %i.ht = bitcast <8 x float> %i.hs to <8 x i32>
  %i.hu = lshr <8 x i32> %i.ht, splat (i32 16)
  %i.hv = trunc nuw <8 x i32> %i.hu to <8 x i16>
  store <8 x i16> %i.hv, ptr %next.gep106, align 2, !tbaa !46
  %index.next108 = add nuw i64 %index105, 8       ; 2 uses
  %i.hw = icmp eq i64 %index.next108, %n.vec104
  br i1 %i.hw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !327

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n109 = icmp eq i64 %i.gv, %n.vec104
  br i1 %cmp.n109, label %._crit_edge83, label %.lr.ph82.preheader

.lr.ph82.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.280.ph = phi i32 [ %.1, %iter.check ], [ %i.gy, %vec.epilog.iter.check ], [ %i.hl, %vec.epilog.middle.block ]
  %.13579.ph = phi ptr [ %.034.lcssa, %iter.check ], [ %i.ha, %vec.epilog.iter.check ], [ %i.hn, %vec.epilog.middle.block ]
  br label %.lr.ph82

.lr.ph82:                                         ; preds = %.lr.ph82.preheader, %.lr.ph82
  %.280 = phi i32 [ %i.ig, %.lr.ph82 ], [ %.280.ph, %.lr.ph82.preheader ]
  %.13579 = phi ptr [ %i.if, %.lr.ph82 ], [ %.13579.ph, %.lr.ph82.preheader ] ; 3 uses
  %i.hx = load i16, ptr %.13579, align 2, !tbaa !46
  %i.hy = zext i16 %i.hx to i32
  %i.hz = shl nuw i32 %i.hy, 16
  %i.ia = bitcast i32 %i.hz to float
  %i.ib = call fast noundef nofpclass(nan inf) float @llvm.sinh.f32(float %i.ia)
  %i.ic = bitcast float %i.ib to i32
  %i.id = lshr i32 %i.ic, 16
  %i.ie = trunc nuw i32 %i.id to i16
  store i16 %i.ie, ptr %.13579, align 2, !tbaa !46
  %i.if = getelementptr inbounds nuw i8, ptr %.13579, i64 2
  %i.ig = add nuw nsw i32 %.280, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.ig, %i.gq
  br i1 %exitcond.not, label %._crit_edge83, label %.lr.ph82, !llvm.loop !328

._crit_edge83:                                    ; preds = %.lr.ph82, %middle.block, %vec.epilog.middle.block, %bb.d
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.ih = load i32, ptr %i.b, align 4, !tbaa !37
  %i.ii = sext i32 %i.ih to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.ii
  br i1 %.not.not, label %.noexc, label %._crit_edge86

._crit_edge86:                                    ; preds = %._crit_edge83, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge86, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sinh.f32(float) #13

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL22unary_op_inplace_bf16sINS_26UnaryOp_x86_avx512_functor14unary_op_asinhEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !37     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 0, ptr %i.a, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i32 %i.g, ptr %i.b, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store i32 1, ptr %i.c, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store i32 0, ptr %i.d, align 4, !tbaa !37
  %i.h = load i32, ptr %0, align 4, !tbaa !37     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !37
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !37
  %i.k = load i32, ptr %i.a, align 4, !tbaa !37   ; 2 uses
  %.not74 = icmp sgt i32 %i.k, %i.j
  br i1 %.not74, label %._crit_edge76, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  %.pre = load i32, ptr %4, align 4, !tbaa !37
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %._crit_edge73
  %i.o = phi i32 [ %.pre, %.noexc.lr.ph ], [ %i.gw, %._crit_edge73 ] ; 2 uses
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %._crit_edge73 ] ; 3 uses
  %i.p = load ptr, ptr %3, align 8, !tbaa !39, !noalias !334
  %i.q = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !334
  %i.r = mul i64 %i.q, %indvars.iv
  %i.s = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !334
  %i.t = mul i64 %i.r, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.t ; 2 uses
  %i.v = icmp sgt i32 %i.o, 15
  br i1 %i.v, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.066 = phi i32 [ %i.de, %.lr.ph ], [ 0, %.noexc ]
  %.03465 = phi ptr [ %i.dd, %.lr.ph ], [ %i.u, %.noexc ] ; 3 uses
  %i.w = load <16 x i16>, ptr %.03465, align 1, !tbaa !41 ; 2 uses
  %i.x = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.w, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.y = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.w, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.z = shufflevector <16 x i16> %i.x, <16 x i16> %i.y, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.aa = shufflevector <16 x i16> %i.x, <16 x i16> %i.y, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ab = bitcast <16 x i16> %i.z to <8 x i32>
  %i.ac = bitcast <16 x i16> %i.aa to <8 x i32>
  %i.ad = shufflevector <8 x i32> %i.ab, <8 x i32> %i.ac, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.ae = and <16 x i32> %i.ad, splat (i32 2147418112)
  %i.af = bitcast <16 x i32> %i.ae to <16 x float> ; 5 uses
  %i.ag = fmul fast <16 x float> %i.af, %i.af
  %i.ah = fadd fast <16 x float> %i.ag, splat (float 1.000000e+00)
  %i.ai = call fast noundef nofpclass(nan inf) <16 x float> @llvm.sqrt.v16f32(<16 x float> nofpclass(nan inf) %i.ah)
  %i.aj = fadd fast <16 x float> %i.ai, %i.af
  %6 = call <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.aj, <16 x float> splat (float f0x00800000))
  %i.ak = bitcast <16 x float> %6 to <16 x i32>   ; 2 uses
  %i.al = lshr <16 x i32> %i.ak, splat (i32 23)
  %i.am = and <16 x i32> %i.ak, splat (i32 8388607)
  %i.an = or disjoint <16 x i32> %i.am, splat (i32 1056964608)
  %i.ao = bitcast <16 x i32> %i.an to <16 x float> ; 3 uses
  %i.ap = add nsw <16 x i32> %i.al, splat (i32 -127)
  %i.aq = sitofp fast <16 x i32> %i.ap to <16 x float> ; 2 uses
  %i.ar = fadd fast <16 x float> %i.aq, splat (float 1.000000e+00)
  %i.as = fcmp fast olt <16 x float> %i.ao, splat (float f0x3F3504F3) ; 2 uses
  %i.at = fadd fast <16 x float> %i.ao, splat (float -1.000000e+00)
  %i.au = select fast <16 x i1> %i.as, <16 x float> %i.aq, <16 x float> %i.ar ; 2 uses
  %i.av = select fast <16 x i1> %i.as, <16 x float> %i.ao, <16 x float> zeroinitializer
  %i.aw = fadd fast <16 x float> %i.at, %i.av     ; 12 uses
  %i.ax = fmul fast <16 x float> %i.aw, %i.aw     ; 2 uses
  %i.ay = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aw, <16 x float> splat (float f0x3D9021BB), <16 x float> splat (float f0xBDEBD1B8))
  %i.az = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ay, <16 x float> nofpclass(nan inf) %i.aw, <16 x float> splat (float f0x3DEF251A))
  %i.ba = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.az, <16 x float> nofpclass(nan inf) %i.aw, <16 x float> splat (float f0xBDFE5D4F))
  %i.bb = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ba, <16 x float> nofpclass(nan inf) %i.aw, <16 x float> splat (float f0x3E11E9BF))
  %i.bc = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bb, <16 x float> nofpclass(nan inf) %i.aw, <16 x float> splat (float f0xBE2AAE50))
  %i.bd = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bc, <16 x float> nofpclass(nan inf) %i.aw, <16 x float> splat (float f0x3E4CCEAC))
  %i.be = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bd, <16 x float> nofpclass(nan inf) %i.aw, <16 x float> splat (float f0xBE7FFFFC))
  %i.bf = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.be, <16 x float> nofpclass(nan inf) %i.aw, <16 x float> splat (float f0x3EAAAAAA))
  %i.bg = fmul fast <16 x float> %i.ax, %i.aw
  %i.bh = fmul fast <16 x float> %i.bg, %i.bf
  %i.bi = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.au, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.bh)
  %i.bj = fneg fast <16 x float> %i.ax
  %i.bk = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.bj, <16 x float> splat (float 5.000000e-01), <16 x float> nofpclass(nan inf) %i.bi)
  %i.bl = fadd fast <16 x float> %i.bk, %i.aw
  %i.bm = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.au, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.bl)
  %i.bn = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.af, <16 x float> splat (float f0x00800000), i32 4)
  %i.bo = bitcast <16 x float> %i.bn to <16 x i32> ; 2 uses
  %i.bp = lshr <16 x i32> %i.bo, splat (i32 23)
  %i.bq = and <16 x i32> %i.bo, splat (i32 -2139095041)
  %i.br = or disjoint <16 x i32> %i.bq, splat (i32 1056964608)
  %i.bs = bitcast <16 x i32> %i.br to <16 x float> ; 3 uses
  %i.bt = add nsw <16 x i32> %i.bp, splat (i32 -127)
  %i.bu = sitofp fast <16 x i32> %i.bt to <16 x float> ; 2 uses
  %i.bv = fadd fast <16 x float> %i.bu, splat (float 1.000000e+00)
  %i.bw = fcmp fast olt <16 x float> %i.bs, splat (float f0x3F3504F3) ; 2 uses
  %i.bx = fadd fast <16 x float> %i.bs, splat (float -1.000000e+00)
  %i.by = select fast <16 x i1> %i.bw, <16 x float> %i.bu, <16 x float> %i.bv ; 2 uses
  %i.bz = select fast <16 x i1> %i.bw, <16 x float> %i.bs, <16 x float> zeroinitializer
  %i.ca = fadd fast <16 x float> %i.bx, %i.bz     ; 12 uses
  %i.cb = fmul fast <16 x float> %i.ca, %i.ca     ; 2 uses
  %i.cc = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ca, <16 x float> splat (float f0x3D9021BB), <16 x float> splat (float f0xBDEBD1B8))
  %i.cd = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cc, <16 x float> nofpclass(nan inf) %i.ca, <16 x float> splat (float f0x3DEF251A))
  %i.ce = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cd, <16 x float> nofpclass(nan inf) %i.ca, <16 x float> splat (float f0xBDFE5D4F))
  %i.cf = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ce, <16 x float> nofpclass(nan inf) %i.ca, <16 x float> splat (float f0x3E11E9BF))
  %i.cg = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cf, <16 x float> nofpclass(nan inf) %i.ca, <16 x float> splat (float f0xBE2AAE50))
  %i.ch = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cg, <16 x float> nofpclass(nan inf) %i.ca, <16 x float> splat (float f0x3E4CCEAC))
  %i.ci = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ch, <16 x float> nofpclass(nan inf) %i.ca, <16 x float> splat (float f0xBE7FFFFC))
  %i.cj = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ci, <16 x float> nofpclass(nan inf) %i.ca, <16 x float> splat (float f0x3EAAAAAA))
  %i.ck = fmul fast <16 x float> %i.cb, %i.ca
  %i.cl = fmul fast <16 x float> %i.ck, %i.cj
  %i.cm = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.by, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.cl)
  %i.cn = fneg fast <16 x float> %i.cb
  %i.co = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.cn, <16 x float> splat (float 5.000000e-01), <16 x float> nofpclass(nan inf) %i.cm)
  %i.cp = fadd fast <16 x float> %i.co, %i.ca
  %i.cq = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.by, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.cp)
  %i.cr = fadd fast <16 x float> %i.cq, splat (float f0x3F317218)
  %i.cs = fcmp fast ogt <16 x float> %i.af, splat (float f0x5F0AC723)
  %i.ct = select fast <16 x i1> %i.cs, <16 x float> %i.cr, <16 x float> %i.bm
  %i.cu = and <16 x i32> %i.ad, splat (i32 -2147483648)
  %i.cv = bitcast <16 x float> %i.ct to <16 x i32>
  %i.cw = or <16 x i32> %i.cu, %i.cv
  %i.cx = lshr <16 x i32> %i.cw, splat (i32 16)   ; 2 uses
  %i.cy = shufflevector <16 x i32> %i.cx, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cz = shufflevector <16 x i32> %i.cx, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.da = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.cy, <8 x i32> %i.cz)
  %i.db = bitcast <16 x i16> %i.da to <4 x i64>
  %i.dc = shufflevector <4 x i64> %i.db, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.dc, ptr %.03465, align 1, !tbaa !41
  %i.dd = getelementptr inbounds nuw i8, ptr %.03465, i64 32 ; 2 uses
  %i.de = add nuw nsw i32 %.066, 16               ; 3 uses
  %i.df = or disjoint i32 %i.de, 15
  %i.dg = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.dh = icmp slt i32 %i.df, %i.dg
  br i1 %i.dh, label %.lr.ph, label %._crit_edge, !llvm.loop !332

._crit_edge:                                      ; preds = %.lr.ph, %.noexc
  %i.di = phi i32 [ %i.o, %.noexc ], [ %i.dg, %.lr.ph ] ; 4 uses
  %.034.lcssa = phi ptr [ %i.u, %.noexc ], [ %i.dd, %.lr.ph ] ; 3 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.de, %.lr.ph ] ; 3 uses
  %i.dj = icmp slt i32 %.0.lcssa, %i.di
  br i1 %i.dj, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %i.dk = sub nuw nsw i32 %i.di, %.0.lcssa
  %notmask = shl nsw i32 -1, %i.dk
  %i.dl = trunc i32 %notmask to i16
  %i.dm = xor i16 %i.dl, -1
  %i.dn = bitcast i16 %i.dm to <16 x i1>          ; 2 uses
  %i.do = call <16 x i16> @llvm.masked.load.v16i16.p0(ptr align 1 %.034.lcssa, <16 x i1> %i.dn, <16 x i16> zeroinitializer) ; 2 uses
  %i.dp = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.do, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.dq = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.do, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.dr = shufflevector <16 x i16> %i.dp, <16 x i16> %i.dq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.ds = shufflevector <16 x i16> %i.dp, <16 x i16> %i.dq, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.dt = bitcast <16 x i16> %i.dr to <8 x i32>
  %i.du = bitcast <16 x i16> %i.ds to <8 x i32>
  %i.dv = shufflevector <8 x i32> %i.dt, <8 x i32> %i.du, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.dw = and <16 x i32> %i.dv, splat (i32 2147418112)
  %i.dx = bitcast <16 x i32> %i.dw to <16 x float> ; 5 uses
  %i.dy = fmul fast <16 x float> %i.dx, %i.dx
  %i.dz = fadd fast <16 x float> %i.dy, splat (float 1.000000e+00)
  %i.ea = call fast noundef nofpclass(nan inf) <16 x float> @llvm.sqrt.v16f32(<16 x float> nofpclass(nan inf) %i.dz)
  %i.eb = fadd fast <16 x float> %i.ea, %i.dx
  %7 = call <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.eb, <16 x float> splat (float f0x00800000))
  %i.ec = bitcast <16 x float> %7 to <16 x i32>   ; 2 uses
  %i.ed = lshr <16 x i32> %i.ec, splat (i32 23)
  %i.ee = and <16 x i32> %i.ec, splat (i32 8388607)
  %i.ef = or disjoint <16 x i32> %i.ee, splat (i32 1056964608)
  %i.eg = bitcast <16 x i32> %i.ef to <16 x float> ; 3 uses
  %i.eh = add nsw <16 x i32> %i.ed, splat (i32 -127)
  %i.ei = sitofp fast <16 x i32> %i.eh to <16 x float> ; 2 uses
  %i.ej = fadd fast <16 x float> %i.ei, splat (float 1.000000e+00)
  %i.ek = fcmp fast olt <16 x float> %i.eg, splat (float f0x3F3504F3) ; 2 uses
  %i.el = fadd fast <16 x float> %i.eg, splat (float -1.000000e+00)
  %i.em = select fast <16 x i1> %i.ek, <16 x float> %i.ei, <16 x float> %i.ej ; 2 uses
  %i.en = select fast <16 x i1> %i.ek, <16 x float> %i.eg, <16 x float> zeroinitializer
  %i.eo = fadd fast <16 x float> %i.el, %i.en     ; 12 uses
  %i.ep = fmul fast <16 x float> %i.eo, %i.eo     ; 2 uses
  %i.eq = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.eo, <16 x float> splat (float f0x3D9021BB), <16 x float> splat (float f0xBDEBD1B8))
  %i.er = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.eq, <16 x float> nofpclass(nan inf) %i.eo, <16 x float> splat (float f0x3DEF251A))
  %i.es = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.er, <16 x float> nofpclass(nan inf) %i.eo, <16 x float> splat (float f0xBDFE5D4F))
  %i.et = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.es, <16 x float> nofpclass(nan inf) %i.eo, <16 x float> splat (float f0x3E11E9BF))
  %i.eu = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.et, <16 x float> nofpclass(nan inf) %i.eo, <16 x float> splat (float f0xBE2AAE50))
  %i.ev = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.eu, <16 x float> nofpclass(nan inf) %i.eo, <16 x float> splat (float f0x3E4CCEAC))
  %i.ew = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ev, <16 x float> nofpclass(nan inf) %i.eo, <16 x float> splat (float f0xBE7FFFFC))
  %i.ex = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ew, <16 x float> nofpclass(nan inf) %i.eo, <16 x float> splat (float f0x3EAAAAAA))
  %i.ey = fmul fast <16 x float> %i.ep, %i.eo
  %i.ez = fmul fast <16 x float> %i.ey, %i.ex
  %i.fa = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.em, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.ez)
  %i.fb = fneg fast <16 x float> %i.ep
  %i.fc = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.fb, <16 x float> splat (float 5.000000e-01), <16 x float> nofpclass(nan inf) %i.fa)
  %i.fd = fadd fast <16 x float> %i.fc, %i.eo
  %i.fe = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.em, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.fd)
  %i.ff = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.dx, <16 x float> splat (float f0x00800000), i32 4)
  %i.fg = bitcast <16 x float> %i.ff to <16 x i32> ; 2 uses
  %i.fh = lshr <16 x i32> %i.fg, splat (i32 23)
  %i.fi = and <16 x i32> %i.fg, splat (i32 -2139095041)
  %i.fj = or disjoint <16 x i32> %i.fi, splat (i32 1056964608)
  %i.fk = bitcast <16 x i32> %i.fj to <16 x float> ; 3 uses
  %i.fl = add nsw <16 x i32> %i.fh, splat (i32 -127)
  %i.fm = sitofp fast <16 x i32> %i.fl to <16 x float> ; 2 uses
  %i.fn = fadd fast <16 x float> %i.fm, splat (float 1.000000e+00)
  %i.fo = fcmp fast olt <16 x float> %i.fk, splat (float f0x3F3504F3) ; 2 uses
  %i.fp = fadd fast <16 x float> %i.fk, splat (float -1.000000e+00)
  %i.fq = select fast <16 x i1> %i.fo, <16 x float> %i.fm, <16 x float> %i.fn ; 2 uses
  %i.fr = select fast <16 x i1> %i.fo, <16 x float> %i.fk, <16 x float> zeroinitializer
  %i.fs = fadd fast <16 x float> %i.fp, %i.fr     ; 12 uses
  %i.ft = fmul fast <16 x float> %i.fs, %i.fs     ; 2 uses
  %i.fu = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fs, <16 x float> splat (float f0x3D9021BB), <16 x float> splat (float f0xBDEBD1B8))
  %i.fv = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fu, <16 x float> nofpclass(nan inf) %i.fs, <16 x float> splat (float f0x3DEF251A))
  %i.fw = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fv, <16 x float> nofpclass(nan inf) %i.fs, <16 x float> splat (float f0xBDFE5D4F))
  %i.fx = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fw, <16 x float> nofpclass(nan inf) %i.fs, <16 x float> splat (float f0x3E11E9BF))
  %i.fy = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fx, <16 x float> nofpclass(nan inf) %i.fs, <16 x float> splat (float f0xBE2AAE50))
  %i.fz = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fy, <16 x float> nofpclass(nan inf) %i.fs, <16 x float> splat (float f0x3E4CCEAC))
  %i.ga = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fz, <16 x float> nofpclass(nan inf) %i.fs, <16 x float> splat (float f0xBE7FFFFC))
  %i.gb = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ga, <16 x float> nofpclass(nan inf) %i.fs, <16 x float> splat (float f0x3EAAAAAA))
  %i.gc = fmul fast <16 x float> %i.ft, %i.fs
  %i.gd = fmul fast <16 x float> %i.gc, %i.gb
  %i.ge = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fq, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.gd)
  %i.gf = fneg fast <16 x float> %i.ft
  %i.gg = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.gf, <16 x float> splat (float 5.000000e-01), <16 x float> nofpclass(nan inf) %i.ge)
  %i.gh = fadd fast <16 x float> %i.gg, %i.fs
  %i.gi = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fq, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.gh)
  %i.gj = fadd fast <16 x float> %i.gi, splat (float f0x3F317218)
  %i.gk = fcmp fast ogt <16 x float> %i.dx, splat (float f0x5F0AC723)
  %i.gl = select fast <16 x i1> %i.gk, <16 x float> %i.gj, <16 x float> %i.fe
  %i.gm = and <16 x i32> %i.dv, splat (i32 -2147483648)
  %i.gn = bitcast <16 x float> %i.gl to <16 x i32>
  %i.go = or <16 x i32> %i.gm, %i.gn
  %i.gp = lshr <16 x i32> %i.go, splat (i32 16)   ; 2 uses
  %i.gq = shufflevector <16 x i32> %i.gp, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.gr = shufflevector <16 x i32> %i.gp, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gs = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.gq, <8 x i32> %i.gr)
  %i.gt = bitcast <16 x i16> %i.gs to <4 x i64>
  %i.gu = shufflevector <4 x i64> %i.gt, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.gv = bitcast <4 x i64> %i.gu to <16 x i16>
  call void @llvm.masked.store.v16i16.p0(<16 x i16> %i.gv, ptr align 1 %.034.lcssa, <16 x i1> %i.dn)
  %.pre81 = load i32, ptr %4, align 4, !tbaa !37
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %i.gw = phi i32 [ %.pre81, %bb.c ], [ %i.di, %._crit_edge ] ; 3 uses
  %.1 = phi i32 [ %i.di, %bb.c ], [ %.0.lcssa, %._crit_edge ] ; 2 uses
  %i.gx = icmp slt i32 %.1, %i.gw
  br i1 %i.gx, label %.lr.ph72, label %._crit_edge73

.lr.ph72:                                         ; preds = %bb.d, %.lr.ph72
  %.270 = phi i32 [ %i.hh, %.lr.ph72 ], [ %.1, %bb.d ]
  %.13569 = phi ptr [ %i.hg, %.lr.ph72 ], [ %.034.lcssa, %bb.d ] ; 3 uses
  %i.gy = load i16, ptr %.13569, align 2, !tbaa !46
  %i.gz = zext i16 %i.gy to i32
  %i.ha = shl nuw i32 %i.gz, 16
  %i.hb = bitcast i32 %i.ha to float
  %i.hc = call fast noundef nofpclass(nan inf) float @asinhf(float noundef nofpclass(nan inf) %i.hb) #22
  %i.hd = bitcast float %i.hc to i32
  %i.he = lshr i32 %i.hd, 16
  %i.hf = trunc nuw i32 %i.he to i16
  store i16 %i.hf, ptr %.13569, align 2, !tbaa !46
  %i.hg = getelementptr inbounds nuw i8, ptr %.13569, i64 2
  %i.hh = add nuw nsw i32 %.270, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.hh, %i.gw
  br i1 %exitcond.not, label %._crit_edge73, label %.lr.ph72, !llvm.loop !333

._crit_edge73:                                    ; preds = %.lr.ph72, %bb.d
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.hi = load i32, ptr %i.b, align 4, !tbaa !37
  %i.hj = sext i32 %i.hi to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.hj
  br i1 %.not.not, label %.noexc, label %._crit_edge76

._crit_edge76:                                    ; preds = %._crit_edge73, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge76, %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare nofpclass(nan inf) float @asinhf(float noundef nofpclass(nan inf)) local_unnamed_addr #15

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL22unary_op_inplace_bf16sINS_26UnaryOp_x86_avx512_functor13unary_op_coshEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !37     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 0, ptr %i.a, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i32 %i.g, ptr %i.b, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store i32 1, ptr %i.c, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store i32 0, ptr %i.d, align 4, !tbaa !37
  %i.h = load i32, ptr %0, align 4, !tbaa !37     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !37
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !37
  %i.k = load i32, ptr %i.a, align 4, !tbaa !37   ; 2 uses
  %.not68 = icmp sgt i32 %i.k, %i.j
  br i1 %.not68, label %._crit_edge70, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  %.pre = load i32, ptr %4, align 4, !tbaa !37
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %._crit_edge67
  %i.o = phi i32 [ %.pre, %.noexc.lr.ph ], [ %i.fi, %._crit_edge67 ] ; 2 uses
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %._crit_edge67 ] ; 3 uses
  %i.p = load ptr, ptr %3, align 8, !tbaa !39, !noalias !341
  %i.q = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !341
  %i.r = mul i64 %i.q, %indvars.iv
  %i.s = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !341
  %i.t = mul i64 %i.r, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.t ; 2 uses
  %i.v = icmp sgt i32 %i.o, 15
  br i1 %i.v, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.060 = phi i32 [ %i.ck, %.lr.ph ], [ 0, %.noexc ]
  %.03459 = phi ptr [ %i.cj, %.lr.ph ], [ %i.u, %.noexc ] ; 3 uses
  %i.w = load <16 x i16>, ptr %.03459, align 1, !tbaa !41 ; 2 uses
  %i.x = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.w, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.y = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.w, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.z = shufflevector <16 x i16> %i.x, <16 x i16> %i.y, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.aa = shufflevector <16 x i16> %i.x, <16 x i16> %i.y, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ab = bitcast <16 x i16> %i.z to <8 x i32>
  %i.ac = bitcast <16 x i16> %i.aa to <8 x i32>
  %i.ad = shufflevector <8 x i32> %i.ab, <8 x i32> %i.ac, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ae = bitcast <16 x i32> %i.ad to <16 x float> ; 2 uses
  %i.af = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.ae, <16 x float> splat (float f0x42B0C0A5), i32 4)
  %i.ag = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.af, <16 x float> splat (float f0xC2B0C0A5), i32 4) ; 2 uses
  %i.ah = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ag, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.ai = call fast <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.ah, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.aj = fcmp fast ogt <16 x float> %i.ai, %i.ah
  %i.ak = fadd fast <16 x float> %i.ai, splat (float -1.000000e+00)
  %i.al = select fast <16 x i1> %i.aj, <16 x float> %i.ak, <16 x float> %i.ai ; 2 uses
  %i.am = fneg fast <16 x float> %i.al            ; 2 uses
  %i.an = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.am, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.ag)
  %i.ao = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.am, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.an) ; 8 uses
  %i.ap = fmul fast <16 x float> %i.ao, %i.ao
  %i.aq = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ao, <16 x float> splat (float f0x39506967), <16 x float> splat (float f0x3AB743CE))
  %i.ar = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aq, <16 x float> nofpclass(nan inf) %i.ao, <16 x float> splat (float f0x3C088908))
  %i.as = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ar, <16 x float> nofpclass(nan inf) %i.ao, <16 x float> splat (float f0x3D2AA9C1))
  %i.at = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.as, <16 x float> nofpclass(nan inf) %i.ao, <16 x float> splat (float f0x3E2AAAAA))
  %i.au = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.at, <16 x float> nofpclass(nan inf) %i.ao, <16 x float> splat (float 5.000000e-01))
  %i.av = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.au, <16 x float> nofpclass(nan inf) %i.ap, <16 x float> nofpclass(nan inf) %i.ao)
  %i.aw = fadd fast <16 x float> %i.av, splat (float 1.000000e+00)
  %i.ax = call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.al, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.ay = shl <16 x i32> %i.ax, splat (i32 23)
  %i.az = add <16 x i32> %i.ay, splat (i32 1065353216)
  %i.ba = bitcast <16 x i32> %i.az to <16 x float>
  %i.bb = fmul fast <16 x float> %i.aw, %i.ba
  %i.bc = fneg fast <16 x float> %i.ae
  %i.bd = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.bc, <16 x float> splat (float f0x42B0C0A5), i32 4)
  %i.be = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.bd, <16 x float> splat (float f0xC2B0C0A5), i32 4) ; 2 uses
  %i.bf = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.be, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.bg = call fast <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.bf, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.bh = fcmp fast ogt <16 x float> %i.bg, %i.bf
  %i.bi = fadd fast <16 x float> %i.bg, splat (float -1.000000e+00)
  %i.bj = select fast <16 x i1> %i.bh, <16 x float> %i.bi, <16 x float> %i.bg ; 2 uses
  %i.bk = fneg fast <16 x float> %i.bj            ; 2 uses
  %i.bl = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.bk, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.be)
  %i.bm = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.bk, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.bl) ; 8 uses
  %i.bn = fmul fast <16 x float> %i.bm, %i.bm
  %i.bo = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bm, <16 x float> splat (float f0x39506967), <16 x float> splat (float f0x3AB743CE))
  %i.bp = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bo, <16 x float> nofpclass(nan inf) %i.bm, <16 x float> splat (float f0x3C088908))
  %i.bq = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bp, <16 x float> nofpclass(nan inf) %i.bm, <16 x float> splat (float f0x3D2AA9C1))
  %i.br = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bq, <16 x float> nofpclass(nan inf) %i.bm, <16 x float> splat (float f0x3E2AAAAA))
  %i.bs = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.br, <16 x float> nofpclass(nan inf) %i.bm, <16 x float> splat (float 5.000000e-01))
  %i.bt = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bs, <16 x float> nofpclass(nan inf) %i.bn, <16 x float> nofpclass(nan inf) %i.bm)
  %i.bu = fadd fast <16 x float> %i.bt, splat (float 1.000000e+00)
  %i.bv = call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.bj, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.bw = shl <16 x i32> %i.bv, splat (i32 23)
  %i.bx = add <16 x i32> %i.bw, splat (i32 1065353216)
  %i.by = bitcast <16 x i32> %i.bx to <16 x float>
  %i.bz = fmul fast <16 x float> %i.bu, %i.by
  %i.ca = fadd fast <16 x float> %i.bz, %i.bb
  %i.cb = fmul fast <16 x float> %i.ca, splat (float 5.000000e-01)
  %i.cc = bitcast <16 x float> %i.cb to <16 x i32>
  %i.cd = lshr <16 x i32> %i.cc, splat (i32 16)   ; 2 uses
  %i.ce = shufflevector <16 x i32> %i.cd, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cf = shufflevector <16 x i32> %i.cd, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cg = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.ce, <8 x i32> %i.cf)
  %i.ch = bitcast <16 x i16> %i.cg to <4 x i64>
  %i.ci = shufflevector <4 x i64> %i.ch, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.ci, ptr %.03459, align 1, !tbaa !41
  %i.cj = getelementptr inbounds nuw i8, ptr %.03459, i64 32 ; 2 uses
  %i.ck = add nuw nsw i32 %.060, 16               ; 3 uses
  %i.cl = or disjoint i32 %i.ck, 15
  %i.cm = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.cn = icmp slt i32 %i.cl, %i.cm
  br i1 %i.cn, label %.lr.ph, label %._crit_edge, !llvm.loop !337

._crit_edge:                                      ; preds = %.lr.ph, %.noexc
  %i.co = phi i32 [ %i.o, %.noexc ], [ %i.cm, %.lr.ph ] ; 4 uses
  %.034.lcssa = phi ptr [ %i.u, %.noexc ], [ %i.cj, %.lr.ph ] ; 7 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.ck, %.lr.ph ] ; 3 uses
  %i.cp = icmp slt i32 %.0.lcssa, %i.co
  br i1 %i.cp, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %i.cq = sub nuw nsw i32 %i.co, %.0.lcssa
  %notmask = shl nsw i32 -1, %i.cq
  %i.cr = trunc i32 %notmask to i16
  %i.cs = xor i16 %i.cr, -1
  %i.ct = bitcast i16 %i.cs to <16 x i1>          ; 2 uses
  %i.cu = call <16 x i16> @llvm.masked.load.v16i16.p0(ptr align 1 %.034.lcssa, <16 x i1> %i.ct, <16 x i16> zeroinitializer) ; 2 uses
  %i.cv = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.cu, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.cw = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.cu, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
end_hunk_1
