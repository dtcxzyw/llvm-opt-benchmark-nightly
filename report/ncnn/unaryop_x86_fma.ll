Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/unaryop_x86_fma?download=true
inline.NumInlined: 57
inline.NumDeleted: 57
begin_hunk_0_@_ZN4ncnnL16unary_op_inplaceINS_23UnaryOp_x86_fma_functor13unary_op_asinEEEiRNS_3MatERKNS_6OptionE.omp_outlined:bb.a
  %i.ab = and <8 x i32> %i.aa, splat (i32 -2147483648)
  %i.ac = and <8 x i32> %i.aa, splat (i32 2147483647)
  %i.ad = bitcast <8 x i32> %i.ac to <8 x float>  ; 3 uses
  %i.ae = fcmp fast ugt <8 x float> %i.ad, splat (float 5.000000e-01) ; 2 uses
  %i.af = select <8 x i1> %i.ae, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer ; 2 uses
  %i.ag = fmul fast <8 x float> %i.ad, splat (float 5.000000e-01)
  %i.ah = fsub fast <8 x float> splat (float 5.000000e-01), %i.ag
  %i.ai = call fast noundef nofpclass(nan inf) <8 x float> @llvm.sqrt.v8f32(<8 x float> nofpclass(nan inf) %i.ah)
  %i.aj = select <8 x i1> %i.ae, <8 x float> %i.ai, <8 x float> %i.ad ; 3 uses
  %i.ak = fmul fast <8 x float> %i.aj, %i.aj      ; 3 uses
  %i.al = fmul fast <8 x float> %i.ak, %i.ak      ; 4 uses
  %i.am = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.al, <8 x float> nofpclass(nan inf) splat (float f0x3D2DBDCF), <8 x float> nofpclass(nan inf) splat (float f0x3D3A73D8))
  %i.an = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.al, <8 x float> nofpclass(nan inf) %i.am, <8 x float> nofpclass(nan inf) splat (float f0x3E2AAAF8))
  %i.ao = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.al, <8 x float> nofpclass(nan inf) splat (float f0x3CC48F19), <8 x float> nofpclass(nan inf) splat (float f0x3D997DCC))
  %i.ap = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.al, <8 x float> nofpclass(nan inf) %i.ao, <8 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.aq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ak, <8 x float> nofpclass(nan inf) %i.an, <8 x float> nofpclass(nan inf) %i.ap)
  %i.ar = fmul fast <8 x float> %i.aq, %i.aj
  %i.as = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.af, <8 x float> splat (float -3.000000e+00), <8 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.at = fmul fast <8 x float> %i.af, splat (float f0x3FC90FDB)
  %i.au = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ar, <8 x float> nofpclass(nan inf) %i.as, <8 x float> nofpclass(nan inf) %i.at)
  %i.av = bitcast <8 x float> %i.au to <8 x i32>
  %i.aw = or <8 x i32> %i.ab, %i.av
  store <8 x i32> %i.aw, ptr %.03091, align 1, !tbaa !41
  %i.ax = getelementptr inbounds nuw i8, ptr %.03091, i64 32 ; 2 uses
  %i.ay = add nuw nsw i32 %.092, 8                ; 3 uses
  %i.az = or disjoint i32 %i.ay, 7
  %i.ba = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.bb = icmp slt i32 %i.az, %i.ba
  br i1 %i.bb, label %.lr.ph, label %.preheader90, !llvm.loop !151

.preheader:                                       ; preds = %.lr.ph96, %.preheader90
  %i.bc = phi i32 [ %i.x, %.preheader90 ], [ %i.cp, %.lr.ph96 ] ; 4 uses
  %.131.lcssa = phi ptr [ %.030.lcssa, %.preheader90 ], [ %i.cm, %.lr.ph96 ] ; 3 uses
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader90 ], [ %i.cn, %.lr.ph96 ] ; 4 uses
  %i.bd = icmp slt i32 %.1.lcssa, %i.bc
  br i1 %i.bd, label %.lr.ph102.preheader, label %._crit_edge

.lr.ph102.preheader:                              ; preds = %.preheader
  %i.be = xor i32 %.1.lcssa, -1
  %i.bf = add i32 %i.bc, %i.be                    ; 2 uses
  %i.bg = zext i32 %i.bf to i64
  %i.bh = add nuw nsw i64 %i.bg, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.bf, 7
  br i1 %min.iters.check, label %.lr.ph102.preheader131, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph102.preheader
  %n.vec = and i64 %i.bh, 8589934584              ; 4 uses
  %i.bi = trunc i64 %n.vec to i32
  %i.bj = add i32 %.1.lcssa, %i.bi
  %i.bk = shl nuw nsw i64 %n.vec, 2
  %i.bl = getelementptr i8, ptr %.131.lcssa, i64 %i.bk
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bm = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.131.lcssa, i64 %i.bm ; 2 uses
  %wide.load = load <8 x float>, ptr %next.gep, align 4, !tbaa !44
  %i.bn = call fast <8 x float> @llvm.asin.v8f32(<8 x float> %wide.load)
  store <8 x float> %i.bn, ptr %next.gep, align 4, !tbaa !44
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bo = icmp eq i64 %index.next, %n.vec
  br i1 %i.bo, label %middle.block, label %vector.body, !llvm.loop !152

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bh, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph102.preheader131

.lr.ph102.preheader131:                           ; preds = %.lr.ph102.preheader, %middle.block
  %.2101.ph = phi i32 [ %.1.lcssa, %.lr.ph102.preheader ], [ %i.bj, %middle.block ]
  %.232100.ph = phi ptr [ %.131.lcssa, %.lr.ph102.preheader ], [ %i.bl, %middle.block ]
  br label %.lr.ph102

.lr.ph96:                                         ; preds = %.preheader90, %.lr.ph96
  %.195 = phi i32 [ %i.cn, %.lr.ph96 ], [ %.0.lcssa, %.preheader90 ]
  %.13194 = phi ptr [ %i.cm, %.lr.ph96 ], [ %.030.lcssa, %.preheader90 ] ; 3 uses
  %i.bp = load <4 x i32>, ptr %.13194, align 16, !tbaa !41 ; 2 uses
  %i.bq = and <4 x i32> %i.bp, splat (i32 -2147483648)
  %i.br = and <4 x i32> %i.bp, splat (i32 2147483647)
  %i.bs = bitcast <4 x i32> %i.br to <4 x float>  ; 3 uses
  %i.bt = fcmp fast ugt <4 x float> %i.bs, splat (float 5.000000e-01) ; 2 uses
  %i.bu = select <4 x i1> %i.bt, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer ; 2 uses
  %i.bv = fmul fast <4 x float> %i.bs, splat (float 5.000000e-01)
  %i.bw = fsub fast <4 x float> splat (float 5.000000e-01), %i.bv
  %i.bx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.sqrt.v4f32(<4 x float> nofpclass(nan inf) %i.bw)
  %i.by = select <4 x i1> %i.bt, <4 x float> %i.bx, <4 x float> %i.bs ; 3 uses
  %i.bz = fmul fast <4 x float> %i.by, %i.by      ; 3 uses
  %i.ca = fmul fast <4 x float> %i.bz, %i.bz      ; 4 uses
  %i.cb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ca, <4 x float> nofpclass(nan inf) splat (float f0x3D2DBDCF), <4 x float> nofpclass(nan inf) splat (float f0x3D3A73D8))
  %i.cc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ca, <4 x float> nofpclass(nan inf) %i.cb, <4 x float> nofpclass(nan inf) splat (float f0x3E2AAAF8))
  %i.cd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ca, <4 x float> nofpclass(nan inf) splat (float f0x3CC48F19), <4 x float> nofpclass(nan inf) splat (float f0x3D997DCC))
  %i.ce = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ca, <4 x float> nofpclass(nan inf) %i.cd, <4 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.cf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bz, <4 x float> nofpclass(nan inf) %i.cc, <4 x float> nofpclass(nan inf) %i.ce)
  %i.cg = fmul fast <4 x float> %i.cf, %i.by
  %i.ch = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bu, <4 x float> splat (float -3.000000e+00), <4 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.ci = fmul fast <4 x float> %i.bu, splat (float f0x3FC90FDB)
  %i.cj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cg, <4 x float> nofpclass(nan inf) %i.ch, <4 x float> nofpclass(nan inf) %i.ci)
  %i.ck = bitcast <4 x float> %i.cj to <4 x i32>
  %i.cl = or <4 x i32> %i.bq, %i.ck
  store <4 x i32> %i.cl, ptr %.13194, align 16, !tbaa !41
  %i.cm = getelementptr inbounds nuw i8, ptr %.13194, i64 16 ; 2 uses
  %i.cn = add nuw nsw i32 %.195, 4                ; 3 uses
  %i.co = or disjoint i32 %i.cn, 3
  %i.cp = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.cq = icmp slt i32 %i.co, %i.cp
  br i1 %i.cq, label %.lr.ph96, label %.preheader, !llvm.loop !153

.lr.ph102:                                        ; preds = %.lr.ph102.preheader131, %.lr.ph102
  %.2101 = phi i32 [ %i.cu, %.lr.ph102 ], [ %.2101.ph, %.lr.ph102.preheader131 ]
  %.232100 = phi ptr [ %i.ct, %.lr.ph102 ], [ %.232100.ph, %.lr.ph102.preheader131 ] ; 3 uses
  %i.cr = load float, ptr %.232100, align 4, !tbaa !44
  %i.cs = call fast noundef nofpclass(nan inf) float @llvm.asin.f32(float %i.cr)
  store float %i.cs, ptr %.232100, align 4, !tbaa !44
  %i.ct = getelementptr inbounds nuw i8, ptr %.232100, i64 4
  %i.cu = add nuw nsw i32 %.2101, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.cu, %i.bc
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph102, !llvm.loop !154

._crit_edge:                                      ; preds = %.lr.ph102, %middle.block, %.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond112.not = icmp eq i32 %i.o, %lftr.wideiv
  br i1 %exitcond112.not, label %._crit_edge105, label %.noexc

._crit_edge105:                                   ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge105, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.asin.f32(float) #11

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL16unary_op_inplaceINS_23UnaryOp_x86_fma_functor13unary_op_acosEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #7 personality ptr @__gxx_personality_v0 {
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
  %.not95 = icmp sgt i32 %i.k, %i.j
  br i1 %.not95, label %._crit_edge97, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  %i.o = add nsw i32 %i.j, 1
  %.pre = load i32, ptr %4, align 4, !tbaa !37
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %._crit_edge
  %i.p = phi i32 [ %.pre, %.noexc.lr.ph ], [ %i.bc, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !39, !noalias !162
  %i.r = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !162
  %i.s = mul i64 %i.r, %indvars.iv
  %i.t = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !162
  %i.u = mul i64 %i.s, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.u ; 2 uses
  %i.w = icmp sgt i32 %i.p, 7
  br i1 %i.w, label %.lr.ph, label %.preheader82

.preheader82:                                     ; preds = %.lr.ph, %.noexc
  %i.x = phi i32 [ %i.p, %.noexc ], [ %i.ba, %.lr.ph ] ; 2 uses
  %.030.lcssa = phi ptr [ %i.v, %.noexc ], [ %i.ax, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.ay, %.lr.ph ] ; 3 uses
  %i.y = or disjoint i32 %.0.lcssa, 3
  %i.z = icmp slt i32 %i.y, %i.x
  br i1 %i.z, label %.lr.ph88, label %.preheader

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.084 = phi i32 [ %i.ay, %.lr.ph ], [ 0, %.noexc ]
  %.03083 = phi ptr [ %i.ax, %.lr.ph ], [ %i.v, %.noexc ] ; 3 uses
  %i.aa = load <8 x float>, ptr %.03083, align 1, !tbaa !41 ; 4 uses
  %i.ab = bitcast <8 x float> %i.aa to <8 x i32>
  %i.ac = and <8 x i32> %i.ab, splat (i32 -2147483648)
  %i.ad = call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.aa) ; 3 uses
  %i.ae = fcmp fast ugt <8 x float> %i.ad, splat (float 5.000000e-01) ; 2 uses
  %i.af = fmul fast <8 x float> %i.ad, splat (float 5.000000e-01)
  %i.ag = fsub fast <8 x float> splat (float 5.000000e-01), %i.af
  %i.ah = call fast noundef nofpclass(nan inf) <8 x float> @llvm.sqrt.v8f32(<8 x float> nofpclass(nan inf) %i.ag)
  %.v79 = select <8 x i1> %i.ae, <8 x float> %i.ah, <8 x float> %i.ad ; 3 uses
  %i.ai = fmul fast <8 x float> %.v79, %.v79      ; 3 uses
  %i.aj = fmul fast <8 x float> %i.ai, %i.ai      ; 4 uses
  %i.ak = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aj, <8 x float> nofpclass(nan inf) splat (float f0x3D2DBDCF), <8 x float> nofpclass(nan inf) splat (float f0x3D3A73D8))
  %i.al = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aj, <8 x float> nofpclass(nan inf) %i.ak, <8 x float> nofpclass(nan inf) splat (float f0x3E2AAAF8))
  %i.am = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aj, <8 x float> nofpclass(nan inf) splat (float f0x3CC48F19), <8 x float> nofpclass(nan inf) splat (float f0x3D997DCC))
  %i.an = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aj, <8 x float> nofpclass(nan inf) %i.am, <8 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.ao = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ai, <8 x float> nofpclass(nan inf) %i.al, <8 x float> nofpclass(nan inf) %i.an)
  %i.ap = fmul fast <8 x float> %i.ao, %.v79      ; 2 uses
  %6 = call <8 x float> @llvm.copysign.v8f32(<8 x float> %i.ap, <8 x float> %i.aa)
  %i.aq = fsub fast <8 x float> splat (float f0x3FC90FDB), %6
  %i.ar = fcmp fast olt <8 x float> %i.aa, zeroinitializer
  %i.as = select <8 x i1> %i.ar, <8 x float> splat (float f0x40490FDB), <8 x float> zeroinitializer
  %factor81 = fmul fast <8 x float> %i.ap, splat (float 2.000000e+00)
  %i.at = bitcast <8 x float> %factor81 to <8 x i32>
  %i.au = or <8 x i32> %i.ac, %i.at
  %i.av = bitcast <8 x i32> %i.au to <8 x float>
  %i.aw = fadd fast <8 x float> %i.as, %i.av
  %.v80 = select <8 x i1> %i.ae, <8 x float> %i.aw, <8 x float> %i.aq
  store <8 x float> %.v80, ptr %.03083, align 1, !tbaa !41
  %i.ax = getelementptr inbounds nuw i8, ptr %.03083, i64 32 ; 2 uses
  %i.ay = add nuw nsw i32 %.084, 8                ; 3 uses
  %i.az = or disjoint i32 %i.ay, 7
  %i.ba = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.bb = icmp slt i32 %i.az, %i.ba
  br i1 %i.bb, label %.lr.ph, label %.preheader82, !llvm.loop !158

.preheader:                                       ; preds = %.lr.ph88, %.preheader82
  %i.bc = phi i32 [ %i.x, %.preheader82 ], [ %i.cp, %.lr.ph88 ] ; 4 uses
  %.131.lcssa = phi ptr [ %.030.lcssa, %.preheader82 ], [ %i.cm, %.lr.ph88 ] ; 3 uses
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader82 ], [ %i.cn, %.lr.ph88 ] ; 4 uses
  %i.bd = icmp slt i32 %.1.lcssa, %i.bc
  br i1 %i.bd, label %.lr.ph94.preheader, label %._crit_edge

.lr.ph94.preheader:                               ; preds = %.preheader
  %i.be = xor i32 %.1.lcssa, -1
  %i.bf = add i32 %i.bc, %i.be                    ; 2 uses
  %i.bg = zext i32 %i.bf to i64
  %i.bh = add nuw nsw i64 %i.bg, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.bf, 7
  br i1 %min.iters.check, label %.lr.ph94.preheader123, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph94.preheader
  %n.vec = and i64 %i.bh, 8589934584              ; 4 uses
  %i.bi = trunc i64 %n.vec to i32
  %i.bj = add i32 %.1.lcssa, %i.bi
  %i.bk = shl nuw nsw i64 %n.vec, 2
  %i.bl = getelementptr i8, ptr %.131.lcssa, i64 %i.bk
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bm = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.131.lcssa, i64 %i.bm ; 2 uses
  %wide.load = load <8 x float>, ptr %next.gep, align 4, !tbaa !44
  %i.bn = call fast <8 x float> @llvm.acos.v8f32(<8 x float> %wide.load)
  store <8 x float> %i.bn, ptr %next.gep, align 4, !tbaa !44
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bo = icmp eq i64 %index.next, %n.vec
  br i1 %i.bo, label %middle.block, label %vector.body, !llvm.loop !159

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bh, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph94.preheader123

.lr.ph94.preheader123:                            ; preds = %.lr.ph94.preheader, %middle.block
  %.293.ph = phi i32 [ %.1.lcssa, %.lr.ph94.preheader ], [ %i.bj, %middle.block ]
  %.23292.ph = phi ptr [ %.131.lcssa, %.lr.ph94.preheader ], [ %i.bl, %middle.block ]
  br label %.lr.ph94

.lr.ph88:                                         ; preds = %.preheader82, %.lr.ph88
  %.187 = phi i32 [ %i.cn, %.lr.ph88 ], [ %.0.lcssa, %.preheader82 ]
  %.13186 = phi ptr [ %i.cm, %.lr.ph88 ], [ %.030.lcssa, %.preheader82 ] ; 3 uses
  %i.bp = load <4 x float>, ptr %.13186, align 16, !tbaa !41 ; 4 uses
  %i.bq = bitcast <4 x float> %i.bp to <4 x i32>
  %i.br = and <4 x i32> %i.bq, splat (i32 -2147483648)
  %i.bs = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.bp) ; 3 uses
  %i.bt = fcmp fast ugt <4 x float> %i.bs, splat (float 5.000000e-01) ; 2 uses
  %i.bu = fmul fast <4 x float> %i.bs, splat (float 5.000000e-01)
  %i.bv = fsub fast <4 x float> splat (float 5.000000e-01), %i.bu
  %i.bw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.sqrt.v4f32(<4 x float> nofpclass(nan inf) %i.bv)
  %.v = select <4 x i1> %i.bt, <4 x float> %i.bw, <4 x float> %i.bs ; 3 uses
  %i.bx = fmul fast <4 x float> %.v, %.v          ; 3 uses
  %i.by = fmul fast <4 x float> %i.bx, %i.bx      ; 4 uses
  %i.bz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.by, <4 x float> nofpclass(nan inf) splat (float f0x3D2DBDCF), <4 x float> nofpclass(nan inf) splat (float f0x3D3A73D8))
  %i.ca = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.by, <4 x float> nofpclass(nan inf) %i.bz, <4 x float> nofpclass(nan inf) splat (float f0x3E2AAAF8))
  %i.cb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.by, <4 x float> nofpclass(nan inf) splat (float f0x3CC48F19), <4 x float> nofpclass(nan inf) splat (float f0x3D997DCC))
  %i.cc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.by, <4 x float> nofpclass(nan inf) %i.cb, <4 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.cd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bx, <4 x float> nofpclass(nan inf) %i.ca, <4 x float> nofpclass(nan inf) %i.cc)
  %i.ce = fmul fast <4 x float> %i.cd, %.v        ; 2 uses
  %7 = call <4 x float> @llvm.copysign.v4f32(<4 x float> %i.ce, <4 x float> %i.bp)
  %i.cf = fsub fast <4 x float> splat (float f0x3FC90FDB), %7
  %i.cg = fcmp fast olt <4 x float> %i.bp, zeroinitializer
  %i.ch = select <4 x i1> %i.cg, <4 x float> splat (float f0x40490FDB), <4 x float> zeroinitializer
  %factor = fmul fast <4 x float> %i.ce, splat (float 2.000000e+00)
  %i.ci = bitcast <4 x float> %factor to <4 x i32>
  %i.cj = or <4 x i32> %i.br, %i.ci
  %i.ck = bitcast <4 x i32> %i.cj to <4 x float>
  %i.cl = fadd fast <4 x float> %i.ch, %i.ck
  %.v78 = select <4 x i1> %i.bt, <4 x float> %i.cl, <4 x float> %i.cf
  store <4 x float> %.v78, ptr %.13186, align 16, !tbaa !41
  %i.cm = getelementptr inbounds nuw i8, ptr %.13186, i64 16 ; 2 uses
  %i.cn = add nuw nsw i32 %.187, 4                ; 3 uses
  %i.co = or disjoint i32 %i.cn, 3
  %i.cp = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.cq = icmp slt i32 %i.co, %i.cp
  br i1 %i.cq, label %.lr.ph88, label %.preheader, !llvm.loop !160

.lr.ph94:                                         ; preds = %.lr.ph94.preheader123, %.lr.ph94
  %.293 = phi i32 [ %i.cu, %.lr.ph94 ], [ %.293.ph, %.lr.ph94.preheader123 ]
  %.23292 = phi ptr [ %i.ct, %.lr.ph94 ], [ %.23292.ph, %.lr.ph94.preheader123 ] ; 3 uses
  %i.cr = load float, ptr %.23292, align 4, !tbaa !44
  %i.cs = call fast noundef nofpclass(nan inf) float @llvm.acos.f32(float %i.cr)
  store float %i.cs, ptr %.23292, align 4, !tbaa !44
  %i.ct = getelementptr inbounds nuw i8, ptr %.23292, i64 4
  %i.cu = add nuw nsw i32 %.293, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.cu, %i.bc
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph94, !llvm.loop !161

._crit_edge:                                      ; preds = %.lr.ph94, %middle.block, %.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond104.not = icmp eq i32 %i.o, %lftr.wideiv
  br i1 %exitcond104.not, label %._crit_edge97, label %.noexc

._crit_edge97:                                    ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge97, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.acos.f32(float) #11

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL16unary_op_inplaceINS_23UnaryOp_x86_fma_functor13unary_op_atanEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #7 personality ptr @__gxx_personality_v0 {
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
  %.not107 = icmp sgt i32 %i.k, %i.j
  br i1 %.not107, label %._crit_edge109, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  %i.o = add nsw i32 %i.j, 1
  %.pre = load i32, ptr %4, align 4, !tbaa !37
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %._crit_edge
  %i.p = phi i32 [ %.pre, %.noexc.lr.ph ], [ %i.bc, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !39, !noalias !169
  %i.r = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !169
  %i.s = mul i64 %i.r, %indvars.iv
  %i.t = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !169
  %i.u = mul i64 %i.s, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.u ; 2 uses
  %i.w = icmp sgt i32 %i.p, 7
  br i1 %i.w, label %.lr.ph, label %.preheader94

.preheader94:                                     ; preds = %.lr.ph, %.noexc
  %i.x = phi i32 [ %i.p, %.noexc ], [ %i.ba, %.lr.ph ] ; 2 uses
  %.030.lcssa = phi ptr [ %i.v, %.noexc ], [ %i.ax, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.ay, %.lr.ph ] ; 3 uses
  %i.y = or disjoint i32 %.0.lcssa, 3
  %i.z = icmp slt i32 %i.y, %i.x
  br i1 %i.z, label %.lr.ph100, label %.preheader

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.096 = phi i32 [ %i.ay, %.lr.ph ], [ 0, %.noexc ]
  %.03095 = phi ptr [ %i.ax, %.lr.ph ], [ %i.v, %.noexc ] ; 3 uses
  %i.aa = load <8 x i32>, ptr %.03095, align 1, !tbaa !41 ; 2 uses
  %i.ab = and <8 x i32> %i.aa, splat (i32 -2147483648)
  %i.ac = and <8 x i32> %i.aa, splat (i32 2147483647)
  %i.ad = bitcast <8 x i32> %i.ac to <8 x float>  ; 3 uses
  %i.ae = fcmp fast ogt <8 x float> %i.ad, splat (float 1.000000e+00) ; 2 uses
  %i.af = select <8 x i1> %i.ae, <8 x float> splat (float -1.000000e+00), <8 x float> %i.ad
  %i.ag = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.ad, <8 x float> splat (float 1.000000e+00))
  %i.ah = fdiv fast <8 x float> %i.af, %i.ag      ; 3 uses
  %i.ai = fmul fast <8 x float> %i.ah, %i.ah      ; 3 uses
  %i.aj = fmul fast <8 x float> %i.ai, %i.ai      ; 7 uses
  %i.ak = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aj, <8 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <8 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.al = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aj, <8 x float> nofpclass(nan inf) %i.ak, <8 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.am = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aj, <8 x float> nofpclass(nan inf) %i.al, <8 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.an = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aj, <8 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <8 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.ao = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aj, <8 x float> nofpclass(nan inf) %i.an, <8 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.ap = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aj, <8 x float> nofpclass(nan inf) %i.ao, <8 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.aq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aj, <8 x float> nofpclass(nan inf) %i.ap, <8 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.ar = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ai, <8 x float> nofpclass(nan inf) %i.am, <8 x float> nofpclass(nan inf) %i.aq)
  %i.as = fmul fast <8 x float> %i.ar, %i.ah
  %i.at = select <8 x i1> %i.ae, <8 x float> splat (float f0x3FC90FDB), <8 x float> zeroinitializer
  %i.au = fadd fast <8 x float> %i.as, %i.at
  %i.av = bitcast <8 x float> %i.au to <8 x i32>
  %i.aw = or <8 x i32> %i.ab, %i.av
  store <8 x i32> %i.aw, ptr %.03095, align 1, !tbaa !41
  %i.ax = getelementptr inbounds nuw i8, ptr %.03095, i64 32 ; 2 uses
  %i.ay = add nuw nsw i32 %.096, 8                ; 3 uses
  %i.az = or disjoint i32 %i.ay, 7
  %i.ba = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.bb = icmp slt i32 %i.az, %i.ba
  br i1 %i.bb, label %.lr.ph, label %.preheader94, !llvm.loop !165

.preheader:                                       ; preds = %.lr.ph100, %.preheader94
  %i.bc = phi i32 [ %i.x, %.preheader94 ], [ %i.cp, %.lr.ph100 ] ; 4 uses
  %.131.lcssa = phi ptr [ %.030.lcssa, %.preheader94 ], [ %i.cm, %.lr.ph100 ] ; 3 uses
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader94 ], [ %i.cn, %.lr.ph100 ] ; 4 uses
  %i.bd = icmp slt i32 %.1.lcssa, %i.bc
  br i1 %i.bd, label %.lr.ph106.preheader, label %._crit_edge

.lr.ph106.preheader:                              ; preds = %.preheader
  %i.be = xor i32 %.1.lcssa, -1
  %i.bf = add i32 %i.bc, %i.be                    ; 2 uses
  %i.bg = zext i32 %i.bf to i64
  %i.bh = add nuw nsw i64 %i.bg, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.bf, 7
  br i1 %min.iters.check, label %.lr.ph106.preheader135, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph106.preheader
  %n.vec = and i64 %i.bh, 8589934584              ; 4 uses
  %i.bi = trunc i64 %n.vec to i32
  %i.bj = add i32 %.1.lcssa, %i.bi
  %i.bk = shl nuw nsw i64 %n.vec, 2
  %i.bl = getelementptr i8, ptr %.131.lcssa, i64 %i.bk
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bm = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.131.lcssa, i64 %i.bm ; 2 uses
  %wide.load = load <8 x float>, ptr %next.gep, align 4, !tbaa !44
  %i.bn = call fast <8 x float> @llvm.atan.v8f32(<8 x float> %wide.load)
  store <8 x float> %i.bn, ptr %next.gep, align 4, !tbaa !44
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bo = icmp eq i64 %index.next, %n.vec
  br i1 %i.bo, label %middle.block, label %vector.body, !llvm.loop !166

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bh, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph106.preheader135

.lr.ph106.preheader135:                           ; preds = %.lr.ph106.preheader, %middle.block
  %.2105.ph = phi i32 [ %.1.lcssa, %.lr.ph106.preheader ], [ %i.bj, %middle.block ]
  %.232104.ph = phi ptr [ %.131.lcssa, %.lr.ph106.preheader ], [ %i.bl, %middle.block ]
  br label %.lr.ph106

.lr.ph100:                                        ; preds = %.preheader94, %.lr.ph100
  %.199 = phi i32 [ %i.cn, %.lr.ph100 ], [ %.0.lcssa, %.preheader94 ]
  %.13198 = phi ptr [ %i.cm, %.lr.ph100 ], [ %.030.lcssa, %.preheader94 ] ; 3 uses
  %i.bp = load <4 x i32>, ptr %.13198, align 16, !tbaa !41 ; 2 uses
  %i.bq = and <4 x i32> %i.bp, splat (i32 -2147483648)
  %i.br = and <4 x i32> %i.bp, splat (i32 2147483647)
  %i.bs = bitcast <4 x i32> %i.br to <4 x float>  ; 3 uses
  %i.bt = fcmp fast ogt <4 x float> %i.bs, splat (float 1.000000e+00) ; 2 uses
  %i.bu = select <4 x i1> %i.bt, <4 x float> splat (float -1.000000e+00), <4 x float> %i.bs
  %i.bv = call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.bs, <4 x float> splat (float 1.000000e+00))
  %i.bw = fdiv fast <4 x float> %i.bu, %i.bv      ; 3 uses
  %i.bx = fmul fast <4 x float> %i.bw, %i.bw      ; 3 uses
  %i.by = fmul fast <4 x float> %i.bx, %i.bx      ; 7 uses
  %i.bz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.by, <4 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <4 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.ca = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.by, <4 x float> nofpclass(nan inf) %i.bz, <4 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.cb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.by, <4 x float> nofpclass(nan inf) %i.ca, <4 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.cc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.by, <4 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <4 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
end_hunk_0
begin_hunk_1_@_ZN4ncnnL16unary_op_inplaceINS_23UnaryOp_x86_fma_functor14unary_op_acoshEEEiRNS_3MatERKNS_6OptionE.omp_outlined:bb.a
  %i.cr = fadd fast <8 x float> %i.cq, splat (float f0x3F317218)
  %i.cs = fcmp fast ule <8 x float> %i.aa, splat (float f0x5F0AC723)
  %i.ct = select <8 x i1> %i.ag, <8 x float> splat (float -nan(0x3FFFFF)), <8 x float> %i.bl
  %i.cu = select <8 x i1> %i.cs, <8 x float> %i.ct, <8 x float> %i.cr
  store <8 x float> %i.cu, ptr %.030183, align 1, !tbaa !41
  %i.cv = getelementptr inbounds nuw i8, ptr %.030183, i64 32 ; 2 uses
  %i.cw = add nuw nsw i32 %.0184, 8               ; 3 uses
  %i.cx = or disjoint i32 %i.cw, 7
  %i.cy = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.cz = icmp slt i32 %i.cx, %i.cy
  br i1 %i.cz, label %.lr.ph, label %.preheader182, !llvm.loop !244

.preheader:                                       ; preds = %.lr.ph188, %.preheader182
  %i.da = phi i32 [ %i.x, %.preheader182 ], [ %i.fy, %.lr.ph188 ] ; 3 uses
  %.131.lcssa = phi ptr [ %.030.lcssa, %.preheader182 ], [ %i.fv, %.lr.ph188 ]
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader182 ], [ %i.fw, %.lr.ph188 ] ; 2 uses
  %i.db = icmp slt i32 %.1.lcssa, %i.da
  br i1 %i.db, label %.lr.ph194, label %._crit_edge

.lr.ph188:                                        ; preds = %.preheader182, %.lr.ph188
  %.1187 = phi i32 [ %i.fw, %.lr.ph188 ], [ %.0.lcssa, %.preheader182 ]
  %.131186 = phi ptr [ %i.fv, %.lr.ph188 ], [ %.030.lcssa, %.preheader182 ] ; 3 uses
  %i.dc = load <4 x float>, ptr %.131186, align 16, !tbaa !41 ; 5 uses
  %i.dd = fadd fast <4 x float> %i.dc, splat (float -1.000000e+00)
  %i.de = fadd fast <4 x float> %i.dc, splat (float 1.000000e+00)
  %i.df = fmul fast <4 x float> %i.dd, %i.de
  %i.dg = call fast <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.df)
  %i.dh = fadd fast <4 x float> %i.dg, %i.dc      ; 2 uses
  %i.di = fcmp fast ole <4 x float> %i.dh, zeroinitializer
  %i.dj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dh, <4 x float> splat (float f0x00800000))
  %i.dk = bitcast <4 x float> %i.dj to <4 x i32>  ; 2 uses
  %i.dl = lshr <4 x i32> %i.dk, splat (i32 23)
  %i.dm = and <4 x i32> %i.dk, splat (i32 -2139095041)
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
  %i.en = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dc, <4 x float> splat (float f0x00800000))
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
  %i.fs = fcmp fast ule <4 x float> %i.dc, splat (float f0x5F0AC723)
  %i.ft = select <4 x i1> %i.di, <4 x float> splat (float -nan(0x3FFFFF)), <4 x float> %i.em
  %i.fu = select <4 x i1> %i.fs, <4 x float> %i.ft, <4 x float> %i.fr
  store <4 x float> %i.fu, ptr %.131186, align 16, !tbaa !41
  %i.fv = getelementptr inbounds nuw i8, ptr %.131186, i64 16 ; 2 uses
  %i.fw = add nuw nsw i32 %.1187, 4               ; 3 uses
  %i.fx = or disjoint i32 %i.fw, 3
  %i.fy = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.fz = icmp slt i32 %i.fx, %i.fy
  br i1 %i.fz, label %.lr.ph188, label %.preheader, !llvm.loop !245

.lr.ph194:                                        ; preds = %.preheader, %.lr.ph194
  %.2193 = phi i32 [ %i.gd, %.lr.ph194 ], [ %.1.lcssa, %.preheader ]
  %.232192 = phi ptr [ %i.gc, %.lr.ph194 ], [ %.131.lcssa, %.preheader ] ; 3 uses
  %i.ga = load float, ptr %.232192, align 4, !tbaa !44
  %i.gb = call fast noundef nofpclass(nan inf) float @acoshf(float noundef nofpclass(nan inf) %i.ga) #20
  store float %i.gb, ptr %.232192, align 4, !tbaa !44
  %i.gc = getelementptr inbounds nuw i8, ptr %.232192, i64 4
  %i.gd = add nuw nsw i32 %.2193, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.gd, %i.da
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph194, !llvm.loop !246

._crit_edge:                                      ; preds = %.lr.ph194, %.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond204.not = icmp eq i32 %i.o, %lftr.wideiv
  br i1 %exitcond204.not, label %._crit_edge197, label %.noexc

._crit_edge197:                                   ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge197, %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare nofpclass(nan inf) float @acoshf(float noundef nofpclass(nan inf)) local_unnamed_addr #14

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL16unary_op_inplaceINS_23UnaryOp_x86_fma_functor14unary_op_atanhEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #7 personality ptr @__gxx_personality_v0 {
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
  %.not225 = icmp sgt i32 %i.k, %i.j
  br i1 %.not225, label %._crit_edge227, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  %i.o = add nsw i32 %i.j, 1
  %.pre = load i32, ptr %4, align 4, !tbaa !37
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %._crit_edge
  %i.p = phi i32 [ %.pre, %.noexc.lr.ph ], [ %i.dg, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !39, !noalias !253
  %i.r = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !253
  %i.s = mul i64 %i.r, %indvars.iv
  %i.t = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !253
  %i.u = mul i64 %i.s, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.u ; 2 uses
  %i.w = icmp sgt i32 %i.p, 7
  br i1 %i.w, label %.lr.ph, label %.preheader212

.preheader212:                                    ; preds = %.lr.ph, %.noexc
  %i.x = phi i32 [ %i.p, %.noexc ], [ %i.de, %.lr.ph ] ; 2 uses
  %.030.lcssa = phi ptr [ %i.v, %.noexc ], [ %i.db, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.dc, %.lr.ph ] ; 3 uses
  %i.y = or disjoint i32 %.0.lcssa, 3
  %i.z = icmp slt i32 %i.y, %i.x
  br i1 %i.z, label %.lr.ph218, label %.preheader

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.0214 = phi i32 [ %i.dc, %.lr.ph ], [ 0, %.noexc ]
  %.030213 = phi ptr [ %i.db, %.lr.ph ], [ %i.v, %.noexc ] ; 3 uses
  %i.aa = load <8 x float>, ptr %.030213, align 1, !tbaa !41 ; 8 uses
  %i.ab = fmul fast <8 x float> %i.aa, %i.aa      ; 2 uses
  %i.ac = fmul fast <8 x float> %i.aa, splat (float f0x3EAAAAAB) ; 2 uses
  %i.ad = fadd fast <8 x float> %i.ac, splat (float -5.000000e-01)
  %i.ae = fmul fast <8 x float> %i.ab, %i.ad
  %i.af = fadd fast <8 x float> %i.ae, %i.aa
  %i.ag = fadd fast <8 x float> %i.aa, splat (float 1.000000e+00)
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
  %i.bm = call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.aa)
  %i.bn = fcmp fast uge <8 x float> %i.bm, splat (float f0x38D1B717) ; 2 uses
  %i.bo = select <8 x i1> %i.bn, <8 x float> %i.bl, <8 x float> %i.af
  %i.bp = fsub fast <8 x float> splat (float -5.000000e-01), %i.ac
  %i.bq = fmul fast <8 x float> %i.ab, %i.bp
  %i.br = fsub fast <8 x float> %i.bq, %i.aa
  %i.bs = fsub fast <8 x float> splat (float 1.000000e+00), %i.aa
  %i.bt = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.bs, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.bu = bitcast <8 x float> %i.bt to <8 x i32>
  %i.bv = bitcast <8 x float> %i.bt to <8 x i32>
  %i.bw = and <8 x i32> %i.bv, splat (i32 -2139095041)
  %i.bx = or disjoint <8 x i32> %i.bw, splat (i32 1056964608)
  %i.by = bitcast <8 x i32> %i.bx to <8 x float>  ; 3 uses
  %i.bz = lshr <8 x i32> %i.bu, splat (i32 23)
  %i.ca = add nsw <8 x i32> %i.bz, splat (i32 -127)
  %i.cb = sitofp fast <8 x i32> %i.ca to <8 x float> ; 2 uses
  %i.cc = fadd fast <8 x float> %i.cb, splat (float 1.000000e+00)
  %i.cd = fcmp fast olt <8 x float> %i.by, splat (float f0x3F3504F3) ; 2 uses
  %i.ce = select <8 x i1> %i.cd, <8 x float> %i.by, <8 x float> zeroinitializer
  %i.cf = fadd fast <8 x float> %i.by, splat (float -1.000000e+00)
  %i.cg = select fast <8 x i1> %i.cd, <8 x float> %i.cb, <8 x float> %i.cc ; 2 uses
  %i.ch = fadd fast <8 x float> %i.cf, %i.ce      ; 12 uses
  %i.ci = fmul fast <8 x float> %i.ch, %i.ch      ; 2 uses
  %i.cj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ch, <8 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <8 x float> splat (float f0xBDEBD1B8))
  %i.ck = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.cj, <8 x float> nofpclass(nan inf) %i.ch, <8 x float> splat (float f0x3DEF251A))
  %i.cl = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ck, <8 x float> nofpclass(nan inf) %i.ch, <8 x float> splat (float f0xBDFE5D4F))
  %i.cm = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.cl, <8 x float> nofpclass(nan inf) %i.ch, <8 x float> splat (float f0x3E11E9BF))
  %i.cn = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.cm, <8 x float> nofpclass(nan inf) %i.ch, <8 x float> splat (float f0xBE2AAE50))
  %i.co = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.cn, <8 x float> nofpclass(nan inf) %i.ch, <8 x float> splat (float f0x3E4CCEAC))
  %i.cp = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.co, <8 x float> nofpclass(nan inf) %i.ch, <8 x float> splat (float f0xBE7FFFFC))
  %i.cq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.cp, <8 x float> nofpclass(nan inf) %i.ch, <8 x float> splat (float f0x3EAAAAAA))
  %i.cr = fmul fast <8 x float> %i.ci, %i.ch
  %i.cs = fmul fast <8 x float> %i.cr, %i.cq
  %i.ct = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.cg, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.cs)
  %i.cu = fneg fast <8 x float> %i.ci
  %i.cv = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.cu, <8 x float> splat (float 5.000000e-01), <8 x float> nofpclass(nan inf) %i.ct)
  %i.cw = fadd fast <8 x float> %i.cv, %i.ch
  %i.cx = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.cg, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.cw)
  %i.cy = select <8 x i1> %i.bn, <8 x float> %i.cx, <8 x float> %i.br
  %i.cz = fsub fast <8 x float> %i.bo, %i.cy
  %i.da = fmul fast <8 x float> %i.cz, splat (float 5.000000e-01)
  store <8 x float> %i.da, ptr %.030213, align 1, !tbaa !41
  %i.db = getelementptr inbounds nuw i8, ptr %.030213, i64 32 ; 2 uses
  %i.dc = add nuw nsw i32 %.0214, 8               ; 3 uses
  %i.dd = or disjoint i32 %i.dc, 7
  %i.de = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.df = icmp slt i32 %i.dd, %i.de
  br i1 %i.df, label %.lr.ph, label %.preheader212, !llvm.loop !250

.preheader:                                       ; preds = %.lr.ph218, %.preheader212
  %i.dg = phi i32 [ %i.x, %.preheader212 ], [ %i.gk, %.lr.ph218 ] ; 3 uses
  %.131.lcssa = phi ptr [ %.030.lcssa, %.preheader212 ], [ %i.gh, %.lr.ph218 ]
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader212 ], [ %i.gi, %.lr.ph218 ] ; 2 uses
  %i.dh = icmp slt i32 %.1.lcssa, %i.dg
  br i1 %i.dh, label %.lr.ph224, label %._crit_edge

.lr.ph218:                                        ; preds = %.preheader212, %.lr.ph218
  %.1217 = phi i32 [ %i.gi, %.lr.ph218 ], [ %.0.lcssa, %.preheader212 ]
  %.131216 = phi ptr [ %i.gh, %.lr.ph218 ], [ %.030.lcssa, %.preheader212 ] ; 3 uses
  %i.di = load <4 x float>, ptr %.131216, align 16, !tbaa !41 ; 8 uses
  %i.dj = fmul fast <4 x float> %i.di, %i.di      ; 2 uses
  %i.dk = fmul fast <4 x float> %i.di, splat (float f0x3EAAAAAB) ; 2 uses
  %i.dl = fadd fast <4 x float> %i.dk, splat (float -5.000000e-01)
  %i.dm = fmul fast <4 x float> %i.dj, %i.dl
  %i.dn = fadd fast <4 x float> %i.dm, %i.di
  %i.do = fadd fast <4 x float> %i.di, splat (float 1.000000e+00)
  %i.dp = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.do, <4 x float> splat (float f0x00800000))
  %i.dq = bitcast <4 x float> %i.dp to <4 x i32>  ; 2 uses
  %i.dr = lshr <4 x i32> %i.dq, splat (i32 23)
  %i.ds = and <4 x i32> %i.dq, splat (i32 -2139095041)
  %i.dt = or disjoint <4 x i32> %i.ds, splat (i32 1056964608)
  %i.du = bitcast <4 x i32> %i.dt to <4 x float>  ; 3 uses
  %i.dv = add nsw <4 x i32> %i.dr, splat (i32 -127)
  %i.dw = sitofp fast <4 x i32> %i.dv to <4 x float> ; 2 uses
  %i.dx = fadd fast <4 x float> %i.dw, splat (float 1.000000e+00)
  %i.dy = fcmp fast olt <4 x float> %i.du, splat (float f0x3F3504F3) ; 2 uses
  %i.dz = select <4 x i1> %i.dy, <4 x float> %i.du, <4 x float> zeroinitializer
  %i.ea = fadd fast <4 x float> %i.du, splat (float -1.000000e+00)
  %i.eb = select fast <4 x i1> %i.dy, <4 x float> %i.dw, <4 x float> %i.dx ; 2 uses
  %i.ec = fadd fast <4 x float> %i.ea, %i.dz      ; 12 uses
  %i.ed = fmul fast <4 x float> %i.ec, %i.ec      ; 2 uses
  %i.ee = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ec, <4 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <4 x float> splat (float f0xBDEBD1B8))
  %i.ef = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ee, <4 x float> nofpclass(nan inf) %i.ec, <4 x float> splat (float f0x3DEF251A))
  %i.eg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ef, <4 x float> nofpclass(nan inf) %i.ec, <4 x float> splat (float f0xBDFE5D4F))
  %i.eh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.eg, <4 x float> nofpclass(nan inf) %i.ec, <4 x float> splat (float f0x3E11E9BF))
  %i.ei = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.eh, <4 x float> nofpclass(nan inf) %i.ec, <4 x float> splat (float f0xBE2AAE50))
  %i.ej = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ei, <4 x float> nofpclass(nan inf) %i.ec, <4 x float> splat (float f0x3E4CCEAC))
  %i.ek = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ej, <4 x float> nofpclass(nan inf) %i.ec, <4 x float> splat (float f0xBE7FFFFC))
  %i.el = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ek, <4 x float> nofpclass(nan inf) %i.ec, <4 x float> splat (float f0x3EAAAAAA))
  %i.em = fmul fast <4 x float> %i.ed, %i.ec
  %i.en = fmul fast <4 x float> %i.em, %i.el
  %i.eo = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.eb, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.en)
  %i.ep = fneg fast <4 x float> %i.ed
  %i.eq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.ep, <4 x float> splat (float 5.000000e-01), <4 x float> nofpclass(nan inf) %i.eo)
  %i.er = fadd fast <4 x float> %i.eq, %i.ec
  %i.es = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.eb, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.er)
  %i.et = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.di)
  %i.eu = fcmp fast uge <4 x float> %i.et, splat (float f0x38D1B717) ; 2 uses
  %i.ev = select <4 x i1> %i.eu, <4 x float> %i.es, <4 x float> %i.dn
  %i.ew = fsub fast <4 x float> splat (float -5.000000e-01), %i.dk
  %i.ex = fmul fast <4 x float> %i.dj, %i.ew
  %i.ey = fsub fast <4 x float> %i.ex, %i.di
  %i.ez = fsub fast <4 x float> splat (float 1.000000e+00), %i.di
  %i.fa = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ez, <4 x float> splat (float f0x00800000))
  %i.fb = bitcast <4 x float> %i.fa to <4 x i32>  ; 2 uses
  %i.fc = lshr <4 x i32> %i.fb, splat (i32 23)
  %i.fd = and <4 x i32> %i.fb, splat (i32 -2139095041)
  %i.fe = or disjoint <4 x i32> %i.fd, splat (i32 1056964608)
  %i.ff = bitcast <4 x i32> %i.fe to <4 x float>  ; 3 uses
  %i.fg = add nsw <4 x i32> %i.fc, splat (i32 -127)
  %i.fh = sitofp fast <4 x i32> %i.fg to <4 x float> ; 2 uses
  %i.fi = fadd fast <4 x float> %i.fh, splat (float 1.000000e+00)
  %i.fj = fcmp fast olt <4 x float> %i.ff, splat (float f0x3F3504F3) ; 2 uses
  %i.fk = select <4 x i1> %i.fj, <4 x float> %i.ff, <4 x float> zeroinitializer
  %i.fl = fadd fast <4 x float> %i.ff, splat (float -1.000000e+00)
  %i.fm = select fast <4 x i1> %i.fj, <4 x float> %i.fh, <4 x float> %i.fi ; 2 uses
  %i.fn = fadd fast <4 x float> %i.fl, %i.fk      ; 12 uses
  %i.fo = fmul fast <4 x float> %i.fn, %i.fn      ; 2 uses
  %i.fp = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fn, <4 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <4 x float> splat (float f0xBDEBD1B8))
  %i.fq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fp, <4 x float> nofpclass(nan inf) %i.fn, <4 x float> splat (float f0x3DEF251A))
  %i.fr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fq, <4 x float> nofpclass(nan inf) %i.fn, <4 x float> splat (float f0xBDFE5D4F))
  %i.fs = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fr, <4 x float> nofpclass(nan inf) %i.fn, <4 x float> splat (float f0x3E11E9BF))
  %i.ft = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fs, <4 x float> nofpclass(nan inf) %i.fn, <4 x float> splat (float f0xBE2AAE50))
  %i.fu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ft, <4 x float> nofpclass(nan inf) %i.fn, <4 x float> splat (float f0x3E4CCEAC))
  %i.fv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fu, <4 x float> nofpclass(nan inf) %i.fn, <4 x float> splat (float f0xBE7FFFFC))
  %i.fw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fv, <4 x float> nofpclass(nan inf) %i.fn, <4 x float> splat (float f0x3EAAAAAA))
  %i.fx = fmul fast <4 x float> %i.fo, %i.fn
  %i.fy = fmul fast <4 x float> %i.fx, %i.fw
  %i.fz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fm, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.fy)
  %i.ga = fneg fast <4 x float> %i.fo
  %i.gb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.ga, <4 x float> splat (float 5.000000e-01), <4 x float> nofpclass(nan inf) %i.fz)
  %i.gc = fadd fast <4 x float> %i.gb, %i.fn
  %i.gd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fm, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.gc)
  %i.ge = select <4 x i1> %i.eu, <4 x float> %i.gd, <4 x float> %i.ey
  %i.gf = fsub fast <4 x float> %i.ev, %i.ge
  %i.gg = fmul fast <4 x float> %i.gf, splat (float 5.000000e-01)
  store <4 x float> %i.gg, ptr %.131216, align 16, !tbaa !41
  %i.gh = getelementptr inbounds nuw i8, ptr %.131216, i64 16 ; 2 uses
  %i.gi = add nuw nsw i32 %.1217, 4               ; 3 uses
  %i.gj = or disjoint i32 %i.gi, 3
  %i.gk = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.gl = icmp slt i32 %i.gj, %i.gk
  br i1 %i.gl, label %.lr.ph218, label %.preheader, !llvm.loop !251

.lr.ph224:                                        ; preds = %.preheader, %.lr.ph224
  %.2223 = phi i32 [ %i.gp, %.lr.ph224 ], [ %.1.lcssa, %.preheader ]
  %.232222 = phi ptr [ %i.go, %.lr.ph224 ], [ %.131.lcssa, %.preheader ] ; 3 uses
  %i.gm = load float, ptr %.232222, align 4, !tbaa !44
  %i.gn = call fast noundef nofpclass(nan inf) float @atanhf(float noundef nofpclass(nan inf) %i.gm) #20
  store float %i.gn, ptr %.232222, align 4, !tbaa !44
  %i.go = getelementptr inbounds nuw i8, ptr %.232222, i64 4
  %i.gp = add nuw nsw i32 %.2223, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.gp, %i.dg
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph224, !llvm.loop !252

._crit_edge:                                      ; preds = %.lr.ph224, %.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond234.not = icmp eq i32 %i.o, %lftr.wideiv
  br i1 %exitcond234.not, label %._crit_edge227, label %.noexc

._crit_edge227:                                   ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge227, %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare nofpclass(nan inf) float @atanhf(float noundef nofpclass(nan inf)) local_unnamed_addr #15

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL16unary_op_inplaceINS_23UnaryOp_x86_fma_functor14unary_op_log1pEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #7 personality ptr @__gxx_personality_v0 {
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
  %.not130 = icmp sgt i32 %i.k, %i.j
  br i1 %.not130, label %._crit_edge132, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  %i.o = add nsw i32 %i.j, 1
  %.pre = load i32, ptr %4, align 4, !tbaa !37
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %._crit_edge
  %i.p = phi i32 [ %.pre, %.noexc.lr.ph ], [ %i.bw, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !39, !noalias !259
  %i.r = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !259
  %i.s = mul i64 %i.r, %indvars.iv
  %i.t = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !259
  %i.u = mul i64 %i.s, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.u ; 2 uses
  %i.w = icmp sgt i32 %i.p, 7
  br i1 %i.w, label %.lr.ph, label %.preheader117

.preheader117:                                    ; preds = %.lr.ph, %.noexc
  %i.x = phi i32 [ %i.p, %.noexc ], [ %i.bu, %.lr.ph ] ; 2 uses
  %.030.lcssa = phi ptr [ %i.v, %.noexc ], [ %i.br, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.bs, %.lr.ph ] ; 3 uses
  %i.y = or disjoint i32 %.0.lcssa, 3
  %i.z = icmp slt i32 %i.y, %i.x
  br i1 %i.z, label %.lr.ph123, label %.preheader

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.0119 = phi i32 [ %i.bs, %.lr.ph ], [ 0, %.noexc ]
  %.030118 = phi ptr [ %i.br, %.lr.ph ], [ %i.v, %.noexc ] ; 3 uses
  %i.aa = load <8 x float>, ptr %.030118, align 1, !tbaa !41 ; 6 uses
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
  %i.av = select fast <8 x i1> %i.as, <8 x float> %i.aq, <8 x float> %i.ar ; 2 uses
  %i.aw = fadd fast <8 x float> %i.au, %i.at      ; 12 uses
  %i.ax = fmul fast <8 x float> %i.aw, %i.aw      ; 2 uses
  %i.ay = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aw, <8 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <8 x float> splat (float f0xBDEBD1B8))
  %i.az = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ay, <8 x float> nofpclass(nan inf) %i.aw, <8 x float> splat (float f0x3DEF251A))
  %i.ba = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.az, <8 x float> nofpclass(nan inf) %i.aw, <8 x float> splat (float f0xBDFE5D4F))
  %i.bb = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ba, <8 x float> nofpclass(nan inf) %i.aw, <8 x float> splat (float f0x3E11E9BF))
  %i.bc = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bb, <8 x float> nofpclass(nan inf) %i.aw, <8 x float> splat (float f0xBE2AAE50))
  %i.bd = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bc, <8 x float> nofpclass(nan inf) %i.aw, <8 x float> splat (float f0x3E4CCEAC))
  %i.be = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bd, <8 x float> nofpclass(nan inf) %i.aw, <8 x float> splat (float f0xBE7FFFFC))
  %i.bf = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.be, <8 x float> nofpclass(nan inf) %i.aw, <8 x float> splat (float f0x3EAAAAAA))
  %i.bg = fmul fast <8 x float> %i.ax, %i.aw
  %i.bh = fmul fast <8 x float> %i.bg, %i.bf
  %i.bi = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.av, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.bh)
  %i.bj = fneg fast <8 x float> %i.ax
  %i.bk = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.bj, <8 x float> splat (float 5.000000e-01), <8 x float> nofpclass(nan inf) %i.bi)
  %i.bl = fadd fast <8 x float> %i.bk, %i.aw
  %i.bm = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.av, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.bl)
  %i.bn = call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.aa)
  %i.bo = fcmp fast uge <8 x float> %i.bn, splat (float f0x38D1B717)
  %i.bp = select <8 x i1> %i.ah, <8 x float> splat (float -nan(0x3FFFFF)), <8 x float> %i.bm
  %i.bq = select <8 x i1> %i.bo, <8 x float> %i.bp, <8 x float> %i.af
  store <8 x float> %i.bq, ptr %.030118, align 1, !tbaa !41
  %i.br = getelementptr inbounds nuw i8, ptr %.030118, i64 32 ; 2 uses
  %i.bs = add nuw nsw i32 %.0119, 8               ; 3 uses
  %i.bt = or disjoint i32 %i.bs, 7
  %i.bu = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.bv = icmp slt i32 %i.bt, %i.bu
  br i1 %i.bv, label %.lr.ph, label %.preheader117, !llvm.loop !256

.preheader:                                       ; preds = %.lr.ph123, %.preheader117
  %i.bw = phi i32 [ %i.x, %.preheader117 ], [ %i.dr, %.lr.ph123 ] ; 3 uses
  %.131.lcssa = phi ptr [ %.030.lcssa, %.preheader117 ], [ %i.do, %.lr.ph123 ]
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader117 ], [ %i.dp, %.lr.ph123 ] ; 2 uses
  %i.bx = icmp slt i32 %.1.lcssa, %i.bw
  br i1 %i.bx, label %.lr.ph129, label %._crit_edge

.lr.ph123:                                        ; preds = %.preheader117, %.lr.ph123
  %.1122 = phi i32 [ %i.dp, %.lr.ph123 ], [ %.0.lcssa, %.preheader117 ]
  %.131121 = phi ptr [ %i.do, %.lr.ph123 ], [ %.030.lcssa, %.preheader117 ] ; 3 uses
  %i.by = load <4 x float>, ptr %.131121, align 16, !tbaa !41 ; 6 uses
  %i.bz = fmul fast <4 x float> %i.by, %i.by
  %i.ca = fmul fast <4 x float> %i.by, splat (float f0x3EAAAAAB)
  %i.cb = fadd fast <4 x float> %i.ca, splat (float -5.000000e-01)
  %i.cc = fmul fast <4 x float> %i.bz, %i.cb
  %i.cd = fadd fast <4 x float> %i.cc, %i.by
  %i.ce = fadd fast <4 x float> %i.by, splat (float 1.000000e+00) ; 2 uses
  %i.cf = fcmp fast ole <4 x float> %i.ce, zeroinitializer
  %i.cg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ce, <4 x float> splat (float f0x00800000))
  %i.ch = bitcast <4 x float> %i.cg to <4 x i32>  ; 2 uses
  %i.ci = lshr <4 x i32> %i.ch, splat (i32 23)
  %i.cj = and <4 x i32> %i.ch, splat (i32 -2139095041)
  %i.ck = or disjoint <4 x i32> %i.cj, splat (i32 1056964608)
  %i.cl = bitcast <4 x i32> %i.ck to <4 x float>  ; 3 uses
  %i.cm = add nsw <4 x i32> %i.ci, splat (i32 -127)
  %i.cn = sitofp fast <4 x i32> %i.cm to <4 x float> ; 2 uses
  %i.co = fadd fast <4 x float> %i.cn, splat (float 1.000000e+00)
  %i.cp = fcmp fast olt <4 x float> %i.cl, splat (float f0x3F3504F3) ; 2 uses
  %i.cq = select <4 x i1> %i.cp, <4 x float> %i.cl, <4 x float> zeroinitializer
  %i.cr = fadd fast <4 x float> %i.cl, splat (float -1.000000e+00)
  %i.cs = select fast <4 x i1> %i.cp, <4 x float> %i.cn, <4 x float> %i.co ; 2 uses
  %i.ct = fadd fast <4 x float> %i.cr, %i.cq      ; 12 uses
  %i.cu = fmul fast <4 x float> %i.ct, %i.ct      ; 2 uses
  %i.cv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ct, <4 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <4 x float> splat (float f0xBDEBD1B8))
  %i.cw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cv, <4 x float> nofpclass(nan inf) %i.ct, <4 x float> splat (float f0x3DEF251A))
  %i.cx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cw, <4 x float> nofpclass(nan inf) %i.ct, <4 x float> splat (float f0xBDFE5D4F))
  %i.cy = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cx, <4 x float> nofpclass(nan inf) %i.ct, <4 x float> splat (float f0x3E11E9BF))
  %i.cz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cy, <4 x float> nofpclass(nan inf) %i.ct, <4 x float> splat (float f0xBE2AAE50))
  %i.da = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cz, <4 x float> nofpclass(nan inf) %i.ct, <4 x float> splat (float f0x3E4CCEAC))
  %i.db = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.da, <4 x float> nofpclass(nan inf) %i.ct, <4 x float> splat (float f0xBE7FFFFC))
  %i.dc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.db, <4 x float> nofpclass(nan inf) %i.ct, <4 x float> splat (float f0x3EAAAAAA))
  %i.dd = fmul fast <4 x float> %i.cu, %i.ct
  %i.de = fmul fast <4 x float> %i.dd, %i.dc
  %i.df = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cs, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.de)
  %i.dg = fneg fast <4 x float> %i.cu
  %i.dh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.dg, <4 x float> splat (float 5.000000e-01), <4 x float> nofpclass(nan inf) %i.df)
end_hunk_1
begin_hunk_2_@_ZN4ncnnL22unary_op_inplace_bf16sINS_23UnaryOp_x86_fma_functor13unary_op_ceilEEEiRNS_3MatERKNS_6OptionE.omp_outlined:bb.a
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
define internal void @_ZN4ncnnL22unary_op_inplace_bf16sINS_23UnaryOp_x86_fma_functor15unary_op_squareEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #7 personality ptr @__gxx_personality_v0 {
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
  %i.bj = trunc nuw nsw <16 x i32> %i.bi to <16 x i16>
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
  %i.bw = trunc nuw nsw <4 x i32> %i.bv to <4 x i16>
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
  %i.cv = trunc nuw nsw i32 %i.cu to i16
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
define internal void @_ZN4ncnnL22unary_op_inplace_bf16sINS_23UnaryOp_x86_fma_functor13unary_op_sqrtEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #7 personality ptr @__gxx_personality_v0 {
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
define internal void @_ZN4ncnnL22unary_op_inplace_bf16sINS_23UnaryOp_x86_fma_functor14unary_op_rsqrtEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #7 personality ptr @__gxx_personality_v0 {
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
  %i.bk = trunc nuw nsw <16 x i32> %i.bj to <16 x i16>
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
  %i.by = trunc nuw nsw <4 x i32> %i.bx to <4 x i16>
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
  %i.cy = trunc nuw nsw i32 %i.cx to i16
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
define internal void @_ZN4ncnnL22unary_op_inplace_bf16sINS_23UnaryOp_x86_fma_functor12unary_op_expEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #7 personality ptr @__gxx_personality_v0 {
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
  %.not131 = icmp sgt i32 %i.k, %i.j
  br i1 %.not131, label %._crit_edge133, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  %i.o = add nsw i32 %i.j, 1
  %.pre = load i32, ptr %4, align 4, !tbaa !37
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %._crit_edge
  %i.p = phi i32 [ %.pre, %.noexc.lr.ph ], [ %i.bn, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !39, !noalias !323
  %i.r = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !323
  %i.s = mul i64 %i.r, %indvars.iv
  %i.t = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !323
  %i.u = mul i64 %i.s, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.u ; 2 uses
  %i.w = icmp sgt i32 %i.p, 7
  br i1 %i.w, label %.lr.ph, label %.preheader118

.preheader118:                                    ; preds = %.lr.ph, %.noexc
  %i.x = phi i32 [ %i.p, %.noexc ], [ %i.bl, %.lr.ph ] ; 2 uses
  %.030.lcssa = phi ptr [ %i.v, %.noexc ], [ %i.bi, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.bj, %.lr.ph ] ; 3 uses
  %i.y = or disjoint i32 %.0.lcssa, 3
  %i.z = icmp slt i32 %i.y, %i.x
  br i1 %i.z, label %.lr.ph124, label %.preheader

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.0120 = phi i32 [ %i.bj, %.lr.ph ], [ 0, %.noexc ]
  %.030119 = phi ptr [ %i.bi, %.lr.ph ], [ %i.v, %.noexc ] ; 3 uses
  %i.aa = load <8 x i16>, ptr %.030119, align 1, !tbaa !41 ; 2 uses
  %i.ab = shufflevector <8 x i16> %i.aa, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.ac = shufflevector <8 x i16> %i.aa, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 12, i32 4, i32 13, i32 5, i32 14, i32 6, i32 15, i32 7>
  %i.ad = shufflevector <8 x i16> %i.ab, <8 x i16> %i.ac, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ae = bitcast <16 x i16> %i.ad to <8 x float>
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
  %i.bc = bitcast <8 x float> %i.bb to <8 x i32>  ; 2 uses
  %i.bd = shufflevector <8 x i32> %i.bc, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.be = shufflevector <8 x i32> %i.bc, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bf = lshr <4 x i32> %i.bd, splat (i32 16)
  %i.bg = lshr <4 x i32> %i.be, splat (i32 16)
  %i.bh = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bf, <4 x i32> %i.bg)
  store <8 x i16> %i.bh, ptr %.030119, align 1, !tbaa !41
  %i.bi = getelementptr inbounds nuw i8, ptr %.030119, i64 16 ; 2 uses
  %i.bj = add nuw nsw i32 %.0120, 8               ; 3 uses
  %i.bk = or disjoint i32 %i.bj, 7
  %i.bl = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.bm = icmp slt i32 %i.bk, %i.bl
  br i1 %i.bm, label %.lr.ph, label %.preheader118, !llvm.loop !318

.preheader:                                       ; preds = %.lr.ph124, %.preheader118
  %i.bn = phi i32 [ %i.x, %.preheader118 ], [ %i.eg, %.lr.ph124 ] ; 4 uses
  %.131.lcssa = phi ptr [ %.030.lcssa, %.preheader118 ], [ %i.ed, %.lr.ph124 ] ; 5 uses
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader118 ], [ %i.ee, %.lr.ph124 ] ; 5 uses
  %i.bo = icmp slt i32 %.1.lcssa, %i.bn
  br i1 %i.bo, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.preheader
  %i.bp = xor i32 %.1.lcssa, -1
  %i.bq = add i32 %i.bn, %i.bp                    ; 3 uses
  %i.br = zext i32 %i.bq to i64
  %i.bs = add nuw nsw i64 %i.br, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.bq, 3
  br i1 %min.iters.check, label %.lr.ph130.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check158 = icmp ult i32 %i.bq, 15
  br i1 %min.iters.check158, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bt = and i64 %i.bs, 12
  %n.vec = and i64 %i.bs, 8589934576              ; 5 uses
  %i.bu = trunc i64 %n.vec to i32
  %i.bv = add i32 %.1.lcssa, %i.bu
  %i.bw = shl nuw nsw i64 %n.vec, 1
  %i.bx = getelementptr i8, ptr %.131.lcssa, i64 %i.bw
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.by = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.131.lcssa, i64 %i.by ; 2 uses
  %wide.load = load <16 x i16>, ptr %next.gep, align 2, !tbaa !51
  %i.bz = zext <16 x i16> %wide.load to <16 x i32>
  %i.ca = shl nuw <16 x i32> %i.bz, splat (i32 16)
  %i.cb = bitcast <16 x i32> %i.ca to <16 x float>
  %i.cc = call fast <16 x float> @llvm.exp.v16f32(<16 x float> %i.cb)
  %i.cd = bitcast <16 x float> %i.cc to <16 x i32>
  %i.ce = lshr <16 x i32> %i.cd, splat (i32 16)
  %i.cf = trunc nuw nsw <16 x i32> %i.ce to <16 x i16>
  store <16 x i16> %i.cf, ptr %next.gep, align 2, !tbaa !51
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cg = icmp eq i64 %index.next, %n.vec
  br i1 %i.cg, label %middle.block, label %vector.body, !llvm.loop !319

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bs, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bt, 0
  br i1 %min.epilog.iters.check, label %.lr.ph130.preheader, label %vec.epilog.ph, !prof !52

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec159 = and i64 %i.bs, 8589934588           ; 4 uses
  %i.ch = trunc i64 %n.vec159 to i32
  %i.ci = add i32 %.1.lcssa, %i.ch
  %i.cj = shl nuw nsw i64 %n.vec159, 1
  %i.ck = getelementptr i8, ptr %.131.lcssa, i64 %i.cj
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index160 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next163, %vec.epilog.vector.body ] ; 2 uses
  %i.cl = shl i64 %index160, 1
  %next.gep161 = getelementptr i8, ptr %.131.lcssa, i64 %i.cl ; 2 uses
  %wide.load162 = load <4 x i16>, ptr %next.gep161, align 2, !tbaa !51
  %i.cm = zext <4 x i16> %wide.load162 to <4 x i32>
  %i.cn = shl nuw <4 x i32> %i.cm, splat (i32 16)
  %i.co = bitcast <4 x i32> %i.cn to <4 x float>
  %i.cp = call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.co)
  %i.cq = bitcast <4 x float> %i.cp to <4 x i32>
  %i.cr = lshr <4 x i32> %i.cq, splat (i32 16)
  %i.cs = trunc nuw nsw <4 x i32> %i.cr to <4 x i16>
  store <4 x i16> %i.cs, ptr %next.gep161, align 2, !tbaa !51
  %index.next163 = add nuw i64 %index160, 4       ; 2 uses
  %i.ct = icmp eq i64 %index.next163, %n.vec159
  br i1 %i.ct, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !320

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n164 = icmp eq i64 %i.bs, %n.vec159
  br i1 %cmp.n164, label %._crit_edge, label %.lr.ph130.preheader

.lr.ph130.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.2129.ph = phi i32 [ %.1.lcssa, %iter.check ], [ %i.bv, %vec.epilog.iter.check ], [ %i.ci, %vec.epilog.middle.block ]
  %.232128.ph = phi ptr [ %.131.lcssa, %iter.check ], [ %i.bx, %vec.epilog.iter.check ], [ %i.ck, %vec.epilog.middle.block ]
  br label %.lr.ph130

.lr.ph124:                                        ; preds = %.preheader118, %.lr.ph124
  %.1123 = phi i32 [ %i.ee, %.lr.ph124 ], [ %.0.lcssa, %.preheader118 ]
  %.131122 = phi ptr [ %i.ed, %.lr.ph124 ], [ %.030.lcssa, %.preheader118 ] ; 3 uses
  %i.cu = load i64, ptr %.131122, align 1, !tbaa !41
  %i.cv = insertelement <2 x i64> poison, i64 %i.cu, i64 0
  %i.cw = bitcast <2 x i64> %i.cv to <8 x i16>
  %i.cx = shufflevector <8 x i16> %i.cw, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.cy = bitcast <8 x i16> %i.cx to <4 x float>
  %i.cz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.cy, <4 x float> splat (float f0x42B0C0A5))
  %i.da = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.cz, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.db = fmul fast <4 x float> %i.da, splat (float f0x3FB8AA3B)
  %i.dc = fadd fast <4 x float> %i.db, splat (float 5.000000e-01) ; 2 uses
  %i.dd = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dc)
  %i.de = sitofp fast <4 x i32> %i.dd to <4 x float> ; 2 uses
  %i.df = fcmp fast olt <4 x float> %i.dc, %i.de
  %i.dg = select <4 x i1> %i.df, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.dh = fsub fast <4 x float> %i.de, %i.dg      ; 2 uses
  %i.di = fneg fast <4 x float> %i.dh             ; 2 uses
  %i.dj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.di, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.da)
  %i.dk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.di, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.dj) ; 8 uses
  %i.dl = fmul fast <4 x float> %i.dk, %i.dk
  %i.dm = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dk, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.dn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dm, <4 x float> nofpclass(nan inf) %i.dk, <4 x float> splat (float f0x3C088908))
  %i.do = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dn, <4 x float> nofpclass(nan inf) %i.dk, <4 x float> splat (float f0x3D2AA9C1))
  %i.dp = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.do, <4 x float> nofpclass(nan inf) %i.dk, <4 x float> splat (float f0x3E2AAAAA))
  %i.dq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dp, <4 x float> nofpclass(nan inf) %i.dk, <4 x float> splat (float 5.000000e-01))
  %i.dr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dq, <4 x float> nofpclass(nan inf) %i.dl, <4 x float> nofpclass(nan inf) %i.dk)
  %i.ds = fadd fast <4 x float> %i.dr, splat (float 1.000000e+00)
  %i.dt = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dh)
  %i.du = shl <4 x i32> %i.dt, splat (i32 23)
  %i.dv = add <4 x i32> %i.du, splat (i32 1065353216)
  %i.dw = bitcast <4 x i32> %i.dv to <4 x float>
  %i.dx = fmul fast <4 x float> %i.ds, %i.dw
  %i.dy = bitcast <4 x float> %i.dx to <4 x i32>
  %i.dz = lshr <4 x i32> %i.dy, splat (i32 16)
  %i.ea = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.dz, <4 x i32> poison)
  %i.eb = bitcast <8 x i16> %i.ea to <2 x i64>
  %i.ec = extractelement <2 x i64> %i.eb, i64 0
  store i64 %i.ec, ptr %.131122, align 1, !tbaa !41
  %i.ed = getelementptr inbounds nuw i8, ptr %.131122, i64 8 ; 2 uses
  %i.ee = add nuw nsw i32 %.1123, 4               ; 3 uses
  %i.ef = or disjoint i32 %i.ee, 3
  %i.eg = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.eh = icmp slt i32 %i.ef, %i.eg
  br i1 %i.eh, label %.lr.ph124, label %.preheader, !llvm.loop !321

.lr.ph130:                                        ; preds = %.lr.ph130.preheader, %.lr.ph130
  %.2129 = phi i32 [ %i.er, %.lr.ph130 ], [ %.2129.ph, %.lr.ph130.preheader ]
  %.232128 = phi ptr [ %i.eq, %.lr.ph130 ], [ %.232128.ph, %.lr.ph130.preheader ] ; 3 uses
  %i.ei = load i16, ptr %.232128, align 2, !tbaa !51
  %i.ej = zext i16 %i.ei to i32
  %i.ek = shl nuw i32 %i.ej, 16
  %i.el = bitcast i32 %i.ek to float
  %i.em = call fast noundef nofpclass(nan inf) float @llvm.exp.f32(float %i.el)
  %i.en = bitcast float %i.em to i32
  %i.eo = lshr i32 %i.en, 16
  %i.ep = trunc nuw nsw i32 %i.eo to i16
  store i16 %i.ep, ptr %.232128, align 2, !tbaa !51
  %i.eq = getelementptr inbounds nuw i8, ptr %.232128, i64 2
  %i.er = add nuw nsw i32 %.2129, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.er, %i.bn
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph130, !llvm.loop !322

._crit_edge:                                      ; preds = %.lr.ph130, %middle.block, %vec.epilog.middle.block, %.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond140.not = icmp eq i32 %i.o, %lftr.wideiv
  br i1 %exitcond140.not, label %._crit_edge133, label %.noexc

._crit_edge133:                                   ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge133, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL22unary_op_inplace_bf16sINS_23UnaryOp_x86_fma_functor12unary_op_logEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #7 personality ptr @__gxx_personality_v0 {
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
  %.not133 = icmp sgt i32 %i.k, %i.j
  br i1 %.not133, label %._crit_edge135, label %.noexc.lr.ph

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
  %i.q = load ptr, ptr %3, align 8, !tbaa !39, !noalias !331
  %i.r = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !331
  %i.s = mul i64 %i.r, %indvars.iv
  %i.t = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !331
  %i.u = mul i64 %i.s, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.u ; 2 uses
  %i.w = icmp sgt i32 %i.p, 7
  br i1 %i.w, label %.lr.ph, label %.preheader120

.preheader120:                                    ; preds = %.lr.ph, %.noexc
  %i.x = phi i32 [ %i.p, %.noexc ], [ %i.bv, %.lr.ph ] ; 2 uses
  %.030.lcssa = phi ptr [ %i.v, %.noexc ], [ %i.bs, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.bt, %.lr.ph ] ; 3 uses
  %i.y = or disjoint i32 %.0.lcssa, 3
  %i.z = icmp slt i32 %i.y, %i.x
  br i1 %i.z, label %.lr.ph126, label %.preheader

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.0122 = phi i32 [ %i.bt, %.lr.ph ], [ 0, %.noexc ]
  %.030121 = phi ptr [ %i.bs, %.lr.ph ], [ %i.v, %.noexc ] ; 3 uses
  %i.aa = load <8 x i16>, ptr %.030121, align 1, !tbaa !41 ; 2 uses
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
  %i.at = select fast <8 x i1> %i.aq, <8 x float> %i.ao, <8 x float> %i.ap ; 2 uses
  %i.au = fadd fast <8 x float> %i.as, %i.ar      ; 12 uses
  %i.av = fmul fast <8 x float> %i.au, %i.au      ; 2 uses
  %i.aw = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.au, <8 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <8 x float> splat (float f0xBDEBD1B8))
  %i.ax = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aw, <8 x float> nofpclass(nan inf) %i.au, <8 x float> splat (float f0x3DEF251A))
  %i.ay = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ax, <8 x float> nofpclass(nan inf) %i.au, <8 x float> splat (float f0xBDFE5D4F))
  %i.az = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ay, <8 x float> nofpclass(nan inf) %i.au, <8 x float> splat (float f0x3E11E9BF))
  %i.ba = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.az, <8 x float> nofpclass(nan inf) %i.au, <8 x float> splat (float f0xBE2AAE50))
  %i.bb = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ba, <8 x float> nofpclass(nan inf) %i.au, <8 x float> splat (float f0x3E4CCEAC))
  %i.bc = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bb, <8 x float> nofpclass(nan inf) %i.au, <8 x float> splat (float f0xBE7FFFFC))
  %i.bd = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bc, <8 x float> nofpclass(nan inf) %i.au, <8 x float> splat (float f0x3EAAAAAA))
  %i.be = fmul fast <8 x float> %i.av, %i.au
  %i.bf = fmul fast <8 x float> %i.be, %i.bd
  %i.bg = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.at, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.bf)
  %i.bh = fneg fast <8 x float> %i.av
  %i.bi = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.bh, <8 x float> splat (float 5.000000e-01), <8 x float> nofpclass(nan inf) %i.bg)
  %i.bj = fadd fast <8 x float> %i.bi, %i.au
  %i.bk = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.at, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.bj)
  %i.bl = bitcast <8 x float> %i.bk to <8 x i32>
  %i.bm = select <8 x i1> %i.af, <8 x i32> splat (i32 -1), <8 x i32> %i.bl ; 2 uses
  %i.bn = shufflevector <8 x i32> %i.bm, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bo = shufflevector <8 x i32> %i.bm, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bp = lshr <4 x i32> %i.bn, splat (i32 16)
  %i.bq = lshr <4 x i32> %i.bo, splat (i32 16)
  %i.br = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bp, <4 x i32> %i.bq)
  store <8 x i16> %i.br, ptr %.030121, align 1, !tbaa !41
  %i.bs = getelementptr inbounds nuw i8, ptr %.030121, i64 16 ; 2 uses
  %i.bt = add nuw nsw i32 %.0122, 8               ; 3 uses
  %i.bu = or disjoint i32 %i.bt, 7
  %i.bv = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.bw = icmp slt i32 %i.bu, %i.bv
  br i1 %i.bw, label %.lr.ph, label %.preheader120, !llvm.loop !326

.preheader:                                       ; preds = %.lr.ph126, %.preheader120
  %i.bx = phi i32 [ %i.x, %.preheader120 ], [ %i.ex, %.lr.ph126 ] ; 4 uses
  %.131.lcssa = phi ptr [ %.030.lcssa, %.preheader120 ], [ %i.eu, %.lr.ph126 ] ; 5 uses
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader120 ], [ %i.ev, %.lr.ph126 ] ; 5 uses
  %i.by = icmp slt i32 %.1.lcssa, %i.bx
  br i1 %i.by, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.preheader
  %i.bz = xor i32 %.1.lcssa, -1
  %i.ca = add i32 %i.bx, %i.bz                    ; 3 uses
  %i.cb = zext i32 %i.ca to i64
  %i.cc = add nuw nsw i64 %i.cb, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.ca, 3
  br i1 %min.iters.check, label %.lr.ph132.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check160 = icmp ult i32 %i.ca, 15
  br i1 %min.iters.check160, label %vec.epilog.ph, label %vector.ph

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
  %i.cm = call fast <16 x float> @llvm.log.v16f32(<16 x float> %i.cl)
  %i.cn = bitcast <16 x float> %i.cm to <16 x i32>
  %i.co = lshr <16 x i32> %i.cn, splat (i32 16)
  %i.cp = trunc nuw <16 x i32> %i.co to <16 x i16>
  store <16 x i16> %i.cp, ptr %next.gep, align 2, !tbaa !51
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cq = icmp eq i64 %index.next, %n.vec
  br i1 %i.cq, label %middle.block, label %vector.body, !llvm.loop !327

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cc, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.cd, 0
  br i1 %min.epilog.iters.check, label %.lr.ph132.preheader, label %vec.epilog.ph, !prof !52

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec161 = and i64 %i.cc, 8589934588           ; 4 uses
  %i.cr = trunc i64 %n.vec161 to i32
  %i.cs = add i32 %.1.lcssa, %i.cr
  %i.ct = shl nuw nsw i64 %n.vec161, 1
  %i.cu = getelementptr i8, ptr %.131.lcssa, i64 %i.ct
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
end_hunk_2
begin_hunk_3_@_ZN4ncnnL22unary_op_inplace_bf16sINS_23UnaryOp_x86_fma_functor13unary_op_asinEEEiRNS_3MatERKNS_6OptionE.omp_outlined:bb.a
  %i.dr = fmul fast <4 x float> %i.dd, splat (float f0x3FC90FDB)
  %i.ds = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dp, <4 x float> nofpclass(nan inf) %i.dq, <4 x float> nofpclass(nan inf) %i.dr)
  %i.dt = bitcast <4 x float> %i.ds to <4 x i32>
  %i.du = or <4 x i32> %i.cy, %i.dt
  %i.dv = lshr <4 x i32> %i.du, splat (i32 16)
  %i.dw = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.dv, <4 x i32> poison)
  %i.dx = bitcast <8 x i16> %i.dw to <2 x i64>
  %i.dy = extractelement <2 x i64> %i.dx, i64 0
  store i64 %i.dy, ptr %.131100, align 1, !tbaa !41
  %i.dz = getelementptr inbounds nuw i8, ptr %.131100, i64 8 ; 2 uses
  %i.ea = add nuw nsw i32 %.1101, 4               ; 3 uses
  %i.eb = or disjoint i32 %i.ea, 3
  %i.ec = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.ed = icmp slt i32 %i.eb, %i.ec
  br i1 %i.ed, label %.lr.ph102, label %.preheader, !llvm.loop !361

.lr.ph108:                                        ; preds = %.lr.ph108.preheader, %.lr.ph108
  %.2107 = phi i32 [ %i.en, %.lr.ph108 ], [ %.2107.ph, %.lr.ph108.preheader ]
  %.232106 = phi ptr [ %i.em, %.lr.ph108 ], [ %.232106.ph, %.lr.ph108.preheader ] ; 3 uses
  %i.ee = load i16, ptr %.232106, align 2, !tbaa !51
  %i.ef = zext i16 %i.ee to i32
  %i.eg = shl nuw i32 %i.ef, 16
  %i.eh = bitcast i32 %i.eg to float
  %i.ei = call fast noundef nofpclass(nan inf) float @llvm.asin.f32(float %i.eh)
  %i.ej = bitcast float %i.ei to i32
  %i.ek = lshr i32 %i.ej, 16
  %i.el = trunc nuw i32 %i.ek to i16
  store i16 %i.el, ptr %.232106, align 2, !tbaa !51
  %i.em = getelementptr inbounds nuw i8, ptr %.232106, i64 2
  %i.en = add nuw nsw i32 %.2107, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.en, %i.bm
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
define internal void @_ZN4ncnnL22unary_op_inplace_bf16sINS_23UnaryOp_x86_fma_functor13unary_op_acosEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #7 personality ptr @__gxx_personality_v0 {
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
  %.not99 = icmp sgt i32 %i.k, %i.j
  br i1 %.not99, label %._crit_edge101, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  %i.o = add nsw i32 %i.j, 1
  %.pre = load i32, ptr %4, align 4, !tbaa !37
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %._crit_edge
  %i.p = phi i32 [ %.pre, %.noexc.lr.ph ], [ %i.bs, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !39, !noalias !371
  %i.r = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !371
  %i.s = mul i64 %i.r, %indvars.iv
  %i.t = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !371
  %i.u = mul i64 %i.s, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.u ; 2 uses
  %i.w = icmp sgt i32 %i.p, 7
  br i1 %i.w, label %.lr.ph, label %.preheader86

.preheader86:                                     ; preds = %.lr.ph, %.noexc
  %i.x = phi i32 [ %i.p, %.noexc ], [ %i.bq, %.lr.ph ] ; 2 uses
  %.030.lcssa = phi ptr [ %i.v, %.noexc ], [ %i.bn, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.bo, %.lr.ph ] ; 3 uses
  %i.y = or disjoint i32 %.0.lcssa, 3
  %i.z = icmp slt i32 %i.y, %i.x
  br i1 %i.z, label %.lr.ph92, label %.preheader

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.088 = phi i32 [ %i.bo, %.lr.ph ], [ 0, %.noexc ]
  %.03087 = phi ptr [ %i.bn, %.lr.ph ], [ %i.v, %.noexc ] ; 3 uses
  %i.aa = load <8 x i16>, ptr %.03087, align 1, !tbaa !41 ; 2 uses
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
  %i.ar = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aq, <8 x float> nofpclass(nan inf) splat (float f0x3D2DBDCF), <8 x float> nofpclass(nan inf) splat (float f0x3D3A73D8))
  %i.as = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aq, <8 x float> nofpclass(nan inf) %i.ar, <8 x float> nofpclass(nan inf) splat (float f0x3E2AAAF8))
  %i.at = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aq, <8 x float> nofpclass(nan inf) splat (float f0x3CC48F19), <8 x float> nofpclass(nan inf) splat (float f0x3D997DCC))
  %i.au = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aq, <8 x float> nofpclass(nan inf) %i.at, <8 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.av = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ap, <8 x float> nofpclass(nan inf) %i.as, <8 x float> nofpclass(nan inf) %i.au)
  %i.aw = fmul fast <8 x float> %i.av, %i.ao      ; 2 uses
  %i.ax = bitcast <8 x float> %i.aw to <8 x i32>
  %i.ay = or <8 x i32> %i.ag, %i.ax
  %i.az = bitcast <8 x i32> %i.ay to <8 x float>
  %i.ba = fsub fast <8 x float> splat (float f0x3FC90FDB), %i.az
  %i.bb = fcmp fast olt <8 x float> %i.ae, zeroinitializer
  %i.bc = select <8 x i1> %i.bb, <8 x float> splat (float f0x40490FDB), <8 x float> zeroinitializer
  %factor85 = fmul fast <8 x float> %i.aw, splat (float 2.000000e+00)
  %i.bd = bitcast <8 x float> %factor85 to <8 x i32>
  %i.be = or <8 x i32> %i.ag, %i.bd
  %i.bf = bitcast <8 x i32> %i.be to <8 x float>
  %i.bg = fadd fast <8 x float> %i.bc, %i.bf
  %.v84 = select <8 x i1> %i.ak, <8 x float> %i.bg, <8 x float> %i.ba
  %i.bh = bitcast <8 x float> %.v84 to <8 x i32>  ; 2 uses
  %i.bi = shufflevector <8 x i32> %i.bh, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bj = shufflevector <8 x i32> %i.bh, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bk = lshr <4 x i32> %i.bi, splat (i32 16)
  %i.bl = lshr <4 x i32> %i.bj, splat (i32 16)
  %i.bm = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bk, <4 x i32> %i.bl)
  store <8 x i16> %i.bm, ptr %.03087, align 1, !tbaa !41
  %i.bn = getelementptr inbounds nuw i8, ptr %.03087, i64 16 ; 2 uses
  %i.bo = add nuw nsw i32 %.088, 8                ; 3 uses
  %i.bp = or disjoint i32 %i.bo, 7
  %i.bq = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.br = icmp slt i32 %i.bp, %i.bq
  br i1 %i.br, label %.lr.ph, label %.preheader86, !llvm.loop !366

.preheader:                                       ; preds = %.lr.ph92, %.preheader86
  %i.bs = phi i32 [ %i.x, %.preheader86 ], [ %i.eo, %.lr.ph92 ] ; 4 uses
  %.131.lcssa = phi ptr [ %.030.lcssa, %.preheader86 ], [ %i.el, %.lr.ph92 ] ; 5 uses
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader86 ], [ %i.em, %.lr.ph92 ] ; 5 uses
  %i.bt = icmp slt i32 %.1.lcssa, %i.bs
  br i1 %i.bt, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.preheader
  %i.bu = xor i32 %.1.lcssa, -1
  %i.bv = add i32 %i.bs, %i.bu                    ; 3 uses
  %i.bw = zext i32 %i.bv to i64
  %i.bx = add nuw nsw i64 %i.bw, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.bv, 3
  br i1 %min.iters.check, label %.lr.ph98.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check126 = icmp ult i32 %i.bv, 15
  br i1 %min.iters.check126, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.by = and i64 %i.bx, 12
  %n.vec = and i64 %i.bx, 8589934576              ; 5 uses
  %i.bz = trunc i64 %n.vec to i32
  %i.ca = add i32 %.1.lcssa, %i.bz
  %i.cb = shl nuw nsw i64 %n.vec, 1
  %i.cc = getelementptr i8, ptr %.131.lcssa, i64 %i.cb
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cd = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.131.lcssa, i64 %i.cd ; 2 uses
  %wide.load = load <16 x i16>, ptr %next.gep, align 2, !tbaa !51
  %i.ce = zext <16 x i16> %wide.load to <16 x i32>
  %i.cf = shl nuw <16 x i32> %i.ce, splat (i32 16)
  %i.cg = bitcast <16 x i32> %i.cf to <16 x float>
  %i.ch = call fast <16 x float> @llvm.acos.v16f32(<16 x float> %i.cg)
  %i.ci = bitcast <16 x float> %i.ch to <16 x i32>
  %i.cj = lshr <16 x i32> %i.ci, splat (i32 16)
  %i.ck = trunc nuw nsw <16 x i32> %i.cj to <16 x i16>
  store <16 x i16> %i.ck, ptr %next.gep, align 2, !tbaa !51
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cl = icmp eq i64 %index.next, %n.vec
  br i1 %i.cl, label %middle.block, label %vector.body, !llvm.loop !367

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bx, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.by, 0
  br i1 %min.epilog.iters.check, label %.lr.ph98.preheader, label %vec.epilog.ph, !prof !52

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec127 = and i64 %i.bx, 8589934588           ; 4 uses
  %i.cm = trunc i64 %n.vec127 to i32
  %i.cn = add i32 %.1.lcssa, %i.cm
  %i.co = shl nuw nsw i64 %n.vec127, 1
  %i.cp = getelementptr i8, ptr %.131.lcssa, i64 %i.co
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index128 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next131, %vec.epilog.vector.body ] ; 2 uses
  %i.cq = shl i64 %index128, 1
  %next.gep129 = getelementptr i8, ptr %.131.lcssa, i64 %i.cq ; 2 uses
  %wide.load130 = load <4 x i16>, ptr %next.gep129, align 2, !tbaa !51
  %i.cr = zext <4 x i16> %wide.load130 to <4 x i32>
  %i.cs = shl nuw <4 x i32> %i.cr, splat (i32 16)
  %i.ct = bitcast <4 x i32> %i.cs to <4 x float>
  %i.cu = call fast <4 x float> @llvm.acos.v4f32(<4 x float> %i.ct)
  %i.cv = bitcast <4 x float> %i.cu to <4 x i32>
  %i.cw = lshr <4 x i32> %i.cv, splat (i32 16)
  %i.cx = trunc nuw nsw <4 x i32> %i.cw to <4 x i16>
  store <4 x i16> %i.cx, ptr %next.gep129, align 2, !tbaa !51
  %index.next131 = add nuw i64 %index128, 4       ; 2 uses
  %i.cy = icmp eq i64 %index.next131, %n.vec127
  br i1 %i.cy, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !368

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n132 = icmp eq i64 %i.bx, %n.vec127
  br i1 %cmp.n132, label %._crit_edge, label %.lr.ph98.preheader

.lr.ph98.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.297.ph = phi i32 [ %.1.lcssa, %iter.check ], [ %i.ca, %vec.epilog.iter.check ], [ %i.cn, %vec.epilog.middle.block ]
  %.23296.ph = phi ptr [ %.131.lcssa, %iter.check ], [ %i.cc, %vec.epilog.iter.check ], [ %i.cp, %vec.epilog.middle.block ]
  br label %.lr.ph98

.lr.ph92:                                         ; preds = %.preheader86, %.lr.ph92
  %.191 = phi i32 [ %i.em, %.lr.ph92 ], [ %.0.lcssa, %.preheader86 ]
  %.13190 = phi ptr [ %i.el, %.lr.ph92 ], [ %.030.lcssa, %.preheader86 ] ; 3 uses
  %i.cz = load i64, ptr %.13190, align 1, !tbaa !41
  %i.da = insertelement <2 x i64> poison, i64 %i.cz, i64 0
  %i.db = bitcast <2 x i64> %i.da to <8 x i16>
  %i.dc = shufflevector <8 x i16> %i.db, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3> ; 3 uses
  %i.dd = bitcast <8 x i16> %i.dc to <4 x float>
  %i.de = bitcast <8 x i16> %i.dc to <4 x i32>
  %i.df = and <4 x i32> %i.de, splat (i32 -2147483648) ; 2 uses
  %i.dg = bitcast <8 x i16> %i.dc to <4 x i32>
  %i.dh = and <4 x i32> %i.dg, splat (i32 2147418112)
  %i.di = bitcast <4 x i32> %i.dh to <4 x float>  ; 3 uses
  %i.dj = fcmp fast ugt <4 x float> %i.di, splat (float 5.000000e-01) ; 2 uses
  %i.dk = fmul fast <4 x float> %i.di, splat (float 5.000000e-01)
  %i.dl = fsub fast <4 x float> splat (float 5.000000e-01), %i.dk
  %i.dm = call fast noundef nofpclass(nan inf) <4 x float> @llvm.sqrt.v4f32(<4 x float> nofpclass(nan inf) %i.dl)
  %i.dn = select <4 x i1> %i.dj, <4 x float> %i.dm, <4 x float> %i.di ; 3 uses
  %i.do = fmul fast <4 x float> %i.dn, %i.dn      ; 3 uses
  %i.dp = fmul fast <4 x float> %i.do, %i.do      ; 4 uses
  %i.dq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dp, <4 x float> nofpclass(nan inf) splat (float f0x3D2DBDCF), <4 x float> nofpclass(nan inf) splat (float f0x3D3A73D8))
  %i.dr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dp, <4 x float> nofpclass(nan inf) %i.dq, <4 x float> nofpclass(nan inf) splat (float f0x3E2AAAF8))
  %i.ds = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dp, <4 x float> nofpclass(nan inf) splat (float f0x3CC48F19), <4 x float> nofpclass(nan inf) splat (float f0x3D997DCC))
  %i.dt = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dp, <4 x float> nofpclass(nan inf) %i.ds, <4 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.du = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.do, <4 x float> nofpclass(nan inf) %i.dr, <4 x float> nofpclass(nan inf) %i.dt)
  %i.dv = fmul fast <4 x float> %i.du, %i.dn      ; 2 uses
  %i.dw = bitcast <4 x float> %i.dv to <4 x i32>
  %i.dx = or <4 x i32> %i.df, %i.dw
  %i.dy = bitcast <4 x i32> %i.dx to <4 x float>
  %i.dz = fsub fast <4 x float> splat (float f0x3FC90FDB), %i.dy
  %i.ea = fcmp fast olt <4 x float> %i.dd, zeroinitializer
  %i.eb = select <4 x i1> %i.ea, <4 x float> splat (float f0x40490FDB), <4 x float> zeroinitializer
  %factor = fmul fast <4 x float> %i.dv, splat (float 2.000000e+00)
  %i.ec = bitcast <4 x float> %factor to <4 x i32>
  %i.ed = or <4 x i32> %i.df, %i.ec
  %i.ee = bitcast <4 x i32> %i.ed to <4 x float>
  %i.ef = fadd fast <4 x float> %i.eb, %i.ee
  %.v = select <4 x i1> %i.dj, <4 x float> %i.ef, <4 x float> %i.dz
  %i.eg = bitcast <4 x float> %.v to <4 x i32>
  %i.eh = lshr <4 x i32> %i.eg, splat (i32 16)
  %i.ei = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.eh, <4 x i32> poison)
  %i.ej = bitcast <8 x i16> %i.ei to <2 x i64>
  %i.ek = extractelement <2 x i64> %i.ej, i64 0
  store i64 %i.ek, ptr %.13190, align 1, !tbaa !41
  %i.el = getelementptr inbounds nuw i8, ptr %.13190, i64 8 ; 2 uses
  %i.em = add nuw nsw i32 %.191, 4                ; 3 uses
  %i.en = or disjoint i32 %i.em, 3
  %i.eo = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.ep = icmp slt i32 %i.en, %i.eo
  br i1 %i.ep, label %.lr.ph92, label %.preheader, !llvm.loop !369

.lr.ph98:                                         ; preds = %.lr.ph98.preheader, %.lr.ph98
  %.297 = phi i32 [ %i.ez, %.lr.ph98 ], [ %.297.ph, %.lr.ph98.preheader ]
  %.23296 = phi ptr [ %i.ey, %.lr.ph98 ], [ %.23296.ph, %.lr.ph98.preheader ] ; 3 uses
  %i.eq = load i16, ptr %.23296, align 2, !tbaa !51
  %i.er = zext i16 %i.eq to i32
  %i.es = shl nuw i32 %i.er, 16
  %i.et = bitcast i32 %i.es to float
  %i.eu = call fast noundef nofpclass(nan inf) float @llvm.acos.f32(float %i.et)
  %i.ev = bitcast float %i.eu to i32
  %i.ew = lshr i32 %i.ev, 16
  %i.ex = trunc nuw nsw i32 %i.ew to i16
  store i16 %i.ex, ptr %.23296, align 2, !tbaa !51
  %i.ey = getelementptr inbounds nuw i8, ptr %.23296, i64 2
  %i.ez = add nuw nsw i32 %.297, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.ez, %i.bs
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph98, !llvm.loop !370

._crit_edge:                                      ; preds = %.lr.ph98, %middle.block, %vec.epilog.middle.block, %.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond108.not = icmp eq i32 %i.o, %lftr.wideiv
  br i1 %exitcond108.not, label %._crit_edge101, label %.noexc

._crit_edge101:                                   ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge101, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL22unary_op_inplace_bf16sINS_23UnaryOp_x86_fma_functor13unary_op_atanEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #7 personality ptr @__gxx_personality_v0 {
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
  %.not113 = icmp sgt i32 %i.k, %i.j
  br i1 %.not113, label %._crit_edge115, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  %i.o = add nsw i32 %i.j, 1
  %.pre = load i32, ptr %4, align 4, !tbaa !37
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %._crit_edge
  %i.p = phi i32 [ %.pre, %.noexc.lr.ph ], [ %i.bm, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !39, !noalias !379
  %i.r = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !379
  %i.s = mul i64 %i.r, %indvars.iv
  %i.t = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !379
  %i.u = mul i64 %i.s, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.u ; 2 uses
  %i.w = icmp sgt i32 %i.p, 7
  br i1 %i.w, label %.lr.ph, label %.preheader100

.preheader100:                                    ; preds = %.lr.ph, %.noexc
  %i.x = phi i32 [ %i.p, %.noexc ], [ %i.bk, %.lr.ph ] ; 2 uses
  %.030.lcssa = phi ptr [ %i.v, %.noexc ], [ %i.bh, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.bi, %.lr.ph ] ; 3 uses
  %i.y = or disjoint i32 %.0.lcssa, 3
  %i.z = icmp slt i32 %i.y, %i.x
  br i1 %i.z, label %.lr.ph106, label %.preheader

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.0102 = phi i32 [ %i.bi, %.lr.ph ], [ 0, %.noexc ]
  %.030101 = phi ptr [ %i.bh, %.lr.ph ], [ %i.v, %.noexc ] ; 3 uses
  %i.aa = load <8 x i16>, ptr %.030101, align 1, !tbaa !41 ; 2 uses
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
  %i.ap = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ao, <8 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <8 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.aq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ao, <8 x float> nofpclass(nan inf) %i.ap, <8 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.ar = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ao, <8 x float> nofpclass(nan inf) %i.aq, <8 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.as = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ao, <8 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <8 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.at = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ao, <8 x float> nofpclass(nan inf) %i.as, <8 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.au = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ao, <8 x float> nofpclass(nan inf) %i.at, <8 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.av = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ao, <8 x float> nofpclass(nan inf) %i.au, <8 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.aw = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.an, <8 x float> nofpclass(nan inf) %i.ar, <8 x float> nofpclass(nan inf) %i.av)
  %i.ax = fmul fast <8 x float> %i.aw, %i.am
  %i.ay = select <8 x i1> %i.aj, <8 x float> splat (float f0x3FC90FDB), <8 x float> zeroinitializer
  %i.az = fadd fast <8 x float> %i.ax, %i.ay
  %i.ba = bitcast <8 x float> %i.az to <8 x i32>
  %i.bb = or <8 x i32> %i.af, %i.ba               ; 2 uses
  %i.bc = shufflevector <8 x i32> %i.bb, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bd = shufflevector <8 x i32> %i.bb, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.be = lshr <4 x i32> %i.bc, splat (i32 16)
  %i.bf = lshr <4 x i32> %i.bd, splat (i32 16)
  %i.bg = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.be, <4 x i32> %i.bf)
  store <8 x i16> %i.bg, ptr %.030101, align 1, !tbaa !41
  %i.bh = getelementptr inbounds nuw i8, ptr %.030101, i64 16 ; 2 uses
  %i.bi = add nuw nsw i32 %.0102, 8               ; 3 uses
  %i.bj = or disjoint i32 %i.bi, 7
  %i.bk = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.bl = icmp slt i32 %i.bj, %i.bk
  br i1 %i.bl, label %.lr.ph, label %.preheader100, !llvm.loop !374

.preheader:                                       ; preds = %.lr.ph106, %.preheader100
  %i.bm = phi i32 [ %i.x, %.preheader100 ], [ %i.ec, %.lr.ph106 ] ; 4 uses
  %.131.lcssa = phi ptr [ %.030.lcssa, %.preheader100 ], [ %i.dz, %.lr.ph106 ] ; 5 uses
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader100 ], [ %i.ea, %.lr.ph106 ] ; 5 uses
  %i.bn = icmp slt i32 %.1.lcssa, %i.bm
  br i1 %i.bn, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.preheader
  %i.bo = xor i32 %.1.lcssa, -1
  %i.bp = add i32 %i.bm, %i.bo                    ; 3 uses
  %i.bq = zext i32 %i.bp to i64
  %i.br = add nuw nsw i64 %i.bq, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.bp, 3
  br i1 %min.iters.check, label %.lr.ph112.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check140 = icmp ult i32 %i.bp, 15
  br i1 %min.iters.check140, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bs = and i64 %i.br, 12
  %n.vec = and i64 %i.br, 8589934576              ; 5 uses
  %i.bt = trunc i64 %n.vec to i32
  %i.bu = add i32 %.1.lcssa, %i.bt
  %i.bv = shl nuw nsw i64 %n.vec, 1
  %i.bw = getelementptr i8, ptr %.131.lcssa, i64 %i.bv
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bx = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.131.lcssa, i64 %i.bx ; 2 uses
  %wide.load = load <16 x i16>, ptr %next.gep, align 2, !tbaa !51
  %i.by = zext <16 x i16> %wide.load to <16 x i32>
  %i.bz = shl nuw <16 x i32> %i.by, splat (i32 16)
  %i.ca = bitcast <16 x i32> %i.bz to <16 x float>
  %i.cb = call fast <16 x float> @llvm.atan.v16f32(<16 x float> %i.ca)
  %i.cc = bitcast <16 x float> %i.cb to <16 x i32>
  %i.cd = lshr <16 x i32> %i.cc, splat (i32 16)
  %i.ce = trunc nuw <16 x i32> %i.cd to <16 x i16>
  store <16 x i16> %i.ce, ptr %next.gep, align 2, !tbaa !51
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cf = icmp eq i64 %index.next, %n.vec
  br i1 %i.cf, label %middle.block, label %vector.body, !llvm.loop !375

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.br, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bs, 0
  br i1 %min.epilog.iters.check, label %.lr.ph112.preheader, label %vec.epilog.ph, !prof !52

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec141 = and i64 %i.br, 8589934588           ; 4 uses
  %i.cg = trunc i64 %n.vec141 to i32
  %i.ch = add i32 %.1.lcssa, %i.cg
  %i.ci = shl nuw nsw i64 %n.vec141, 1
  %i.cj = getelementptr i8, ptr %.131.lcssa, i64 %i.ci
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index142 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next145, %vec.epilog.vector.body ] ; 2 uses
  %i.ck = shl i64 %index142, 1
  %next.gep143 = getelementptr i8, ptr %.131.lcssa, i64 %i.ck ; 2 uses
  %wide.load144 = load <4 x i16>, ptr %next.gep143, align 2, !tbaa !51
  %i.cl = zext <4 x i16> %wide.load144 to <4 x i32>
  %i.cm = shl nuw <4 x i32> %i.cl, splat (i32 16)
  %i.cn = bitcast <4 x i32> %i.cm to <4 x float>
  %i.co = call fast <4 x float> @llvm.atan.v4f32(<4 x float> %i.cn)
  %i.cp = bitcast <4 x float> %i.co to <4 x i32>
  %i.cq = lshr <4 x i32> %i.cp, splat (i32 16)
  %i.cr = trunc nuw <4 x i32> %i.cq to <4 x i16>
end_hunk_3
begin_hunk_4_@_ZN4ncnnL22unary_op_inplace_bf16sINS_23UnaryOp_x86_fma_functor14unary_op_asinhEEEiRNS_3MatERKNS_6OptionE.omp_outlined:bb.a
  %i.hd = load i16, ptr %.232200, align 2, !tbaa !51
  %i.he = zext i16 %i.hd to i32
  %i.hf = shl nuw i32 %i.he, 16
  %i.hg = bitcast i32 %i.hf to float
  %i.hh = call fast noundef nofpclass(nan inf) float @asinhf(float noundef nofpclass(nan inf) %i.hg) #20
  %i.hi = bitcast float %i.hh to i32
  %i.hj = lshr i32 %i.hi, 16
  %i.hk = trunc nuw i32 %i.hj to i16
  store i16 %i.hk, ptr %.232200, align 2, !tbaa !51
  %i.hl = getelementptr inbounds nuw i8, ptr %.232200, i64 2
  %i.hm = add nuw nsw i32 %.2201, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.hm, %i.dp
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph202, !llvm.loop !446

._crit_edge:                                      ; preds = %.lr.ph202, %.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond212.not = icmp eq i32 %i.o, %lftr.wideiv
  br i1 %exitcond212.not, label %._crit_edge205, label %.noexc

._crit_edge205:                                   ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge205, %bb.a
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
  %i.ab = shufflevector <8 x i16> %i.aa, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.ac = shufflevector <8 x i16> %i.aa, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 12, i32 4, i32 13, i32 5, i32 14, i32 6, i32 15, i32 7>
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
  %i.cw = shl nuw nsw i64 %n.vec, 1
  %i.cx = getelementptr i8, ptr %.131.lcssa, i64 %i.cw
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cy = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.131.lcssa, i64 %i.cy ; 2 uses
  %wide.load = load <16 x i16>, ptr %next.gep, align 2, !tbaa !51
  %i.cz = zext <16 x i16> %wide.load to <16 x i32>
  %i.da = shl nuw <16 x i32> %i.cz, splat (i32 16)
  %i.db = bitcast <16 x i32> %i.da to <16 x float>
  %i.dc = call fast <16 x float> @llvm.cosh.v16f32(<16 x float> %i.db)
  %i.dd = bitcast <16 x float> %i.dc to <16 x i32>
  %i.de = lshr <16 x i32> %i.dd, splat (i32 16)
  %i.df = trunc nuw nsw <16 x i32> %i.de to <16 x i16>
  store <16 x i16> %i.df, ptr %next.gep, align 2, !tbaa !51
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dg = icmp eq i64 %index.next, %n.vec
  br i1 %i.dg, label %middle.block, label %vector.body, !llvm.loop !451

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cs, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ct, 0
  br i1 %min.epilog.iters.check, label %.lr.ph158.preheader, label %vec.epilog.ph, !prof !52

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec187 = and i64 %i.cs, 8589934588           ; 4 uses
  %i.dh = trunc i64 %n.vec187 to i32
  %i.di = add i32 %.1.lcssa, %i.dh
  %i.dj = shl nuw nsw i64 %n.vec187, 1
  %i.dk = getelementptr i8, ptr %.131.lcssa, i64 %i.dj
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index188 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next191, %vec.epilog.vector.body ] ; 2 uses
  %i.dl = shl i64 %index188, 1
  %next.gep189 = getelementptr i8, ptr %.131.lcssa, i64 %i.dl ; 2 uses
  %wide.load190 = load <4 x i16>, ptr %next.gep189, align 2, !tbaa !51
  %i.dm = zext <4 x i16> %wide.load190 to <4 x i32>
  %i.dn = shl nuw <4 x i32> %i.dm, splat (i32 16)
  %i.do = bitcast <4 x i32> %i.dn to <4 x float>
  %i.dp = call fast <4 x float> @llvm.cosh.v4f32(<4 x float> %i.do)
  %i.dq = bitcast <4 x float> %i.dp to <4 x i32>
  %i.dr = lshr <4 x i32> %i.dq, splat (i32 16)
  %i.ds = trunc nuw nsw <4 x i32> %i.dr to <4 x i16>
  store <4 x i16> %i.ds, ptr %next.gep189, align 2, !tbaa !51
  %index.next191 = add nuw i64 %index188, 4       ; 2 uses
  %i.dt = icmp eq i64 %index.next191, %n.vec187
  br i1 %i.dt, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !452

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n192 = icmp eq i64 %i.cs, %n.vec187
  br i1 %cmp.n192, label %._crit_edge, label %.lr.ph158.preheader

.lr.ph158.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.2157.ph = phi i32 [ %.1.lcssa, %iter.check ], [ %i.cv, %vec.epilog.iter.check ], [ %i.di, %vec.epilog.middle.block ]
  %.232156.ph = phi ptr [ %.131.lcssa, %iter.check ], [ %i.cx, %vec.epilog.iter.check ], [ %i.dk, %vec.epilog.middle.block ]
  br label %.lr.ph158

.lr.ph152:                                        ; preds = %.preheader146, %.lr.ph152
  %.1151 = phi i32 [ %i.gg, %.lr.ph152 ], [ %.0.lcssa, %.preheader146 ]
  %.131150 = phi ptr [ %i.gf, %.lr.ph152 ], [ %.030.lcssa, %.preheader146 ] ; 3 uses
  %i.du = load i64, ptr %.131150, align 1, !tbaa !41
  %i.dv = insertelement <2 x i64> poison, i64 %i.du, i64 0
  %i.dw = bitcast <2 x i64> %i.dv to <8 x i16>
  %i.dx = shufflevector <8 x i16> %i.dw, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.dy = bitcast <8 x i16> %i.dx to <4 x float>  ; 2 uses
  %i.dz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.dy, <4 x float> splat (float f0x42B0C0A5))
  %i.ea = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dz, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.eb = fmul fast <4 x float> %i.ea, splat (float f0x3FB8AA3B)
  %i.ec = fadd fast <4 x float> %i.eb, splat (float 5.000000e-01) ; 2 uses
  %i.ed = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ec)
  %i.ee = sitofp fast <4 x i32> %i.ed to <4 x float> ; 2 uses
  %i.ef = fcmp fast olt <4 x float> %i.ec, %i.ee
  %i.eg = select <4 x i1> %i.ef, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.eh = fsub fast <4 x float> %i.ee, %i.eg      ; 2 uses
  %i.ei = fneg fast <4 x float> %i.eh             ; 2 uses
  %i.ej = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.ei, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.ea)
  %i.ek = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.ei, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.ej) ; 8 uses
  %i.el = fmul fast <4 x float> %i.ek, %i.ek
  %i.em = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ek, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.en = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.em, <4 x float> nofpclass(nan inf) %i.ek, <4 x float> splat (float f0x3C088908))
  %i.eo = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.en, <4 x float> nofpclass(nan inf) %i.ek, <4 x float> splat (float f0x3D2AA9C1))
  %i.ep = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.eo, <4 x float> nofpclass(nan inf) %i.ek, <4 x float> splat (float f0x3E2AAAAA))
  %i.eq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ep, <4 x float> nofpclass(nan inf) %i.ek, <4 x float> splat (float 5.000000e-01))
  %i.er = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.eq, <4 x float> nofpclass(nan inf) %i.el, <4 x float> nofpclass(nan inf) %i.ek)
  %i.es = fadd fast <4 x float> %i.er, splat (float 1.000000e+00)
  %i.et = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.eh)
  %i.eu = shl <4 x i32> %i.et, splat (i32 23)
  %i.ev = add <4 x i32> %i.eu, splat (i32 1065353216)
  %i.ew = bitcast <4 x i32> %i.ev to <4 x float>
  %i.ex = fmul fast <4 x float> %i.es, %i.ew
  %i.ey = fneg fast <4 x float> %i.dy
  %i.ez = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ey, <4 x float> splat (float f0x42B0C0A5))
  %i.fa = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ez, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.fb = fmul fast <4 x float> %i.fa, splat (float f0x3FB8AA3B)
  %i.fc = fadd fast <4 x float> %i.fb, splat (float 5.000000e-01) ; 2 uses
  %i.fd = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fc)
  %i.fe = sitofp fast <4 x i32> %i.fd to <4 x float> ; 2 uses
  %i.ff = fcmp fast olt <4 x float> %i.fc, %i.fe
  %i.fg = select <4 x i1> %i.ff, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.fh = fsub fast <4 x float> %i.fe, %i.fg      ; 2 uses
  %i.fi = fneg fast <4 x float> %i.fh             ; 2 uses
  %i.fj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.fi, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.fa)
  %i.fk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.fi, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.fj) ; 8 uses
  %i.fl = fmul fast <4 x float> %i.fk, %i.fk
  %i.fm = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fk, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.fn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fm, <4 x float> nofpclass(nan inf) %i.fk, <4 x float> splat (float f0x3C088908))
  %i.fo = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fn, <4 x float> nofpclass(nan inf) %i.fk, <4 x float> splat (float f0x3D2AA9C1))
  %i.fp = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fo, <4 x float> nofpclass(nan inf) %i.fk, <4 x float> splat (float f0x3E2AAAAA))
  %i.fq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fp, <4 x float> nofpclass(nan inf) %i.fk, <4 x float> splat (float 5.000000e-01))
  %i.fr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fq, <4 x float> nofpclass(nan inf) %i.fl, <4 x float> nofpclass(nan inf) %i.fk)
  %i.fs = fadd fast <4 x float> %i.fr, splat (float 1.000000e+00)
  %i.ft = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fh)
  %i.fu = shl <4 x i32> %i.ft, splat (i32 23)
  %i.fv = add <4 x i32> %i.fu, splat (i32 1065353216)
  %i.fw = bitcast <4 x i32> %i.fv to <4 x float>
  %i.fx = fmul fast <4 x float> %i.fs, %i.fw
  %i.fy = fadd fast <4 x float> %i.fx, %i.ex
  %i.fz = fmul fast <4 x float> %i.fy, splat (float 5.000000e-01)
  %i.ga = bitcast <4 x float> %i.fz to <4 x i32>
  %i.gb = lshr <4 x i32> %i.ga, splat (i32 16)
  %i.gc = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.gb, <4 x i32> poison)
  %i.gd = bitcast <8 x i16> %i.gc to <2 x i64>
  %i.ge = extractelement <2 x i64> %i.gd, i64 0
  store i64 %i.ge, ptr %.131150, align 1, !tbaa !41
  %i.gf = getelementptr inbounds nuw i8, ptr %.131150, i64 8 ; 2 uses
  %i.gg = add nuw nsw i32 %.1151, 4               ; 3 uses
  %i.gh = or disjoint i32 %i.gg, 3
  %i.gi = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.gj = icmp slt i32 %i.gh, %i.gi
  br i1 %i.gj, label %.lr.ph152, label %.preheader, !llvm.loop !453

.lr.ph158:                                        ; preds = %.lr.ph158.preheader, %.lr.ph158
  %.2157 = phi i32 [ %i.gt, %.lr.ph158 ], [ %.2157.ph, %.lr.ph158.preheader ]
  %.232156 = phi ptr [ %i.gs, %.lr.ph158 ], [ %.232156.ph, %.lr.ph158.preheader ] ; 3 uses
  %i.gk = load i16, ptr %.232156, align 2, !tbaa !51
  %i.gl = zext i16 %i.gk to i32
  %i.gm = shl nuw i32 %i.gl, 16
  %i.gn = bitcast i32 %i.gm to float
  %i.go = call fast noundef nofpclass(nan inf) float @llvm.cosh.f32(float %i.gn)
  %i.gp = bitcast float %i.go to i32
  %i.gq = lshr i32 %i.gp, 16
  %i.gr = trunc nuw nsw i32 %i.gq to i16
  store i16 %i.gr, ptr %.232156, align 2, !tbaa !51
  %i.gs = getelementptr inbounds nuw i8, ptr %.232156, i64 2
  %i.gt = add nuw nsw i32 %.2157, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.gt, %i.cn
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
define internal void @_ZN4ncnnL22unary_op_inplace_bf16sINS_23UnaryOp_x86_fma_functor14unary_op_acoshEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #7 personality ptr @__gxx_personality_v0 {
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
  %.not201 = icmp sgt i32 %i.k, %i.j
  br i1 %.not201, label %._crit_edge203, label %.noexc.lr.ph

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
  %i.q = load ptr, ptr %3, align 8, !tbaa !39, !noalias !461
  %i.r = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !461
  %i.s = mul i64 %i.r, %indvars.iv
  %i.t = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !461
  %i.u = mul i64 %i.s, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.u ; 2 uses
  %i.w = icmp sgt i32 %i.p, 7
  br i1 %i.w, label %.lr.ph, label %.preheader188

.preheader188:                                    ; preds = %.lr.ph, %.noexc
  %i.x = phi i32 [ %i.p, %.noexc ], [ %i.di, %.lr.ph ] ; 2 uses
  %.030.lcssa = phi ptr [ %i.v, %.noexc ], [ %i.df, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.dg, %.lr.ph ] ; 3 uses
  %i.y = or disjoint i32 %.0.lcssa, 3
  %i.z = icmp slt i32 %i.y, %i.x
  br i1 %i.z, label %.lr.ph194, label %.preheader

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.0190 = phi i32 [ %i.dg, %.lr.ph ], [ 0, %.noexc ]
  %.030189 = phi ptr [ %i.df, %.lr.ph ], [ %i.v, %.noexc ] ; 3 uses
  %i.aa = load <8 x i16>, ptr %.030189, align 1, !tbaa !41 ; 2 uses
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
  %i.bq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ae, <8 x float> splat (float f0x00800000)) ; 2 uses
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
  %i.cw = fcmp fast ule <8 x float> %i.ae, splat (float f0x5F0AC723)
  %i.cx = select <8 x i1> %i.ak, <8 x float> splat (float -nan(0x3FFFFF)), <8 x float> %i.bp
  %i.cy = select <8 x i1> %i.cw, <8 x float> %i.cx, <8 x float> %i.cv
  %i.cz = bitcast <8 x float> %i.cy to <8 x i32>  ; 2 uses
  %i.da = shufflevector <8 x i32> %i.cz, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.db = shufflevector <8 x i32> %i.cz, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.dc = lshr <4 x i32> %i.da, splat (i32 16)
  %i.dd = lshr <4 x i32> %i.db, splat (i32 16)
  %i.de = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.dc, <4 x i32> %i.dd)
  store <8 x i16> %i.de, ptr %.030189, align 1, !tbaa !41
  %i.df = getelementptr inbounds nuw i8, ptr %.030189, i64 16 ; 2 uses
  %i.dg = add nuw nsw i32 %.0190, 8               ; 3 uses
  %i.dh = or disjoint i32 %i.dg, 7
  %i.di = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.dj = icmp slt i32 %i.dh, %i.di
  br i1 %i.dj, label %.lr.ph, label %.preheader188, !llvm.loop !458

.preheader:                                       ; preds = %.lr.ph194, %.preheader188
  %i.dk = phi i32 [ %i.x, %.preheader188 ], [ %i.gr, %.lr.ph194 ] ; 3 uses
  %.131.lcssa = phi ptr [ %.030.lcssa, %.preheader188 ], [ %i.go, %.lr.ph194 ]
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader188 ], [ %i.gp, %.lr.ph194 ] ; 2 uses
  %i.dl = icmp slt i32 %.1.lcssa, %i.dk
  br i1 %i.dl, label %.lr.ph200, label %._crit_edge

.lr.ph194:                                        ; preds = %.preheader188, %.lr.ph194
  %.1193 = phi i32 [ %i.gp, %.lr.ph194 ], [ %.0.lcssa, %.preheader188 ]
  %.131192 = phi ptr [ %i.go, %.lr.ph194 ], [ %.030.lcssa, %.preheader188 ] ; 3 uses
  %i.dm = load i64, ptr %.131192, align 1, !tbaa !41
  %i.dn = insertelement <2 x i64> poison, i64 %i.dm, i64 0
  %i.do = bitcast <2 x i64> %i.dn to <8 x i16>
  %i.dp = shufflevector <8 x i16> %i.do, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.dq = bitcast <8 x i16> %i.dp to <4 x float>  ; 5 uses
  %i.dr = fadd fast <4 x float> %i.dq, splat (float -1.000000e+00)
  %i.ds = fadd fast <4 x float> %i.dq, splat (float 1.000000e+00)
  %i.dt = fmul fast <4 x float> %i.dr, %i.ds
  %i.du = call fast <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.dt)
  %i.dv = fadd fast <4 x float> %i.du, %i.dq      ; 2 uses
  %i.dw = fcmp fast ole <4 x float> %i.dv, zeroinitializer
  %i.dx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dv, <4 x float> splat (float f0x00800000))
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
  %i.fb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dq, <4 x float> splat (float f0x00800000))
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
  %i.gg = fcmp fast ule <4 x float> %i.dq, splat (float f0x5F0AC723)
  %i.gh = select <4 x i1> %i.dw, <4 x float> splat (float -nan(0x3FFFFF)), <4 x float> %i.fa
  %i.gi = select <4 x i1> %i.gg, <4 x float> %i.gh, <4 x float> %i.gf
  %i.gj = bitcast <4 x float> %i.gi to <4 x i32>
  %i.gk = lshr <4 x i32> %i.gj, splat (i32 16)
  %i.gl = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.gk, <4 x i32> poison)
  %i.gm = bitcast <8 x i16> %i.gl to <2 x i64>
  %i.gn = extractelement <2 x i64> %i.gm, i64 0
  store i64 %i.gn, ptr %.131192, align 1, !tbaa !41
  %i.go = getelementptr inbounds nuw i8, ptr %.131192, i64 8 ; 2 uses
  %i.gp = add nuw nsw i32 %.1193, 4               ; 3 uses
  %i.gq = or disjoint i32 %i.gp, 3
  %i.gr = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.gs = icmp slt i32 %i.gq, %i.gr
  br i1 %i.gs, label %.lr.ph194, label %.preheader, !llvm.loop !459

.lr.ph200:                                        ; preds = %.preheader, %.lr.ph200
  %.2199 = phi i32 [ %i.hc, %.lr.ph200 ], [ %.1.lcssa, %.preheader ]
  %.232198 = phi ptr [ %i.hb, %.lr.ph200 ], [ %.131.lcssa, %.preheader ] ; 3 uses
  %i.gt = load i16, ptr %.232198, align 2, !tbaa !51
  %i.gu = zext i16 %i.gt to i32
  %i.gv = shl nuw i32 %i.gu, 16
  %i.gw = bitcast i32 %i.gv to float
  %i.gx = call fast noundef nofpclass(nan inf) float @acoshf(float noundef nofpclass(nan inf) %i.gw) #20
  %i.gy = bitcast float %i.gx to i32
  %i.gz = lshr i32 %i.gy, 16
  %i.ha = trunc nuw i32 %i.gz to i16
  store i16 %i.ha, ptr %.232198, align 2, !tbaa !51
  %i.hb = getelementptr inbounds nuw i8, ptr %.232198, i64 2
  %i.hc = add nuw nsw i32 %.2199, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.hc, %i.dk
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph200, !llvm.loop !460

._crit_edge:                                      ; preds = %.lr.ph200, %.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond210.not = icmp eq i32 %i.o, %lftr.wideiv
  br i1 %exitcond210.not, label %._crit_edge203, label %.noexc

._crit_edge203:                                   ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge203, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL22unary_op_inplace_bf16sINS_23UnaryOp_x86_fma_functor14unary_op_atanhEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #7 personality ptr @__gxx_personality_v0 {
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
  %.not231 = icmp sgt i32 %i.k, %i.j
  br i1 %.not231, label %._crit_edge233, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  %i.o = add nsw i32 %i.j, 1
  %.pre = load i32, ptr %4, align 4, !tbaa !37
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %._crit_edge
  %i.p = phi i32 [ %.pre, %.noexc.lr.ph ], [ %i.du, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !39, !noalias !467
  %i.r = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !467
  %i.s = mul i64 %i.r, %indvars.iv
  %i.t = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !467
  %i.u = mul i64 %i.s, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.u ; 2 uses
  %i.w = icmp sgt i32 %i.p, 7
  br i1 %i.w, label %.lr.ph, label %.preheader218

.preheader218:                                    ; preds = %.lr.ph, %.noexc
  %i.x = phi i32 [ %i.p, %.noexc ], [ %i.ds, %.lr.ph ] ; 2 uses
  %.030.lcssa = phi ptr [ %i.v, %.noexc ], [ %i.dp, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.dq, %.lr.ph ] ; 3 uses
  %i.y = or disjoint i32 %.0.lcssa, 3
  %i.z = icmp slt i32 %i.y, %i.x
  br i1 %i.z, label %.lr.ph224, label %.preheader

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.0220 = phi i32 [ %i.dq, %.lr.ph ], [ 0, %.noexc ]
  %.030219 = phi ptr [ %i.dp, %.lr.ph ], [ %i.v, %.noexc ] ; 3 uses
  %i.aa = load <8 x i16>, ptr %.030219, align 1, !tbaa !41 ; 2 uses
  %i.ab = shufflevector <8 x i16> %i.aa, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.ac = shufflevector <8 x i16> %i.aa, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 12, i32 4, i32 13, i32 5, i32 14, i32 6, i32 15, i32 7>
  %i.ad = shufflevector <8 x i16> %i.ab, <8 x i16> %i.ac, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.ae = bitcast <16 x i16> %i.ad to <8 x float> ; 8 uses
  %i.af = fmul fast <8 x float> %i.ae, %i.ae      ; 2 uses
  %i.ag = fmul fast <8 x float> %i.ae, splat (float f0x3EAAAAAB) ; 2 uses
  %i.ah = fadd fast <8 x float> %i.ag, splat (float -5.000000e-01)
  %i.ai = fmul fast <8 x float> %i.af, %i.ah
  %i.aj = fadd fast <8 x float> %i.ai, %i.ae
  %i.ak = fadd fast <8 x float> %i.ae, splat (float 1.000000e+00)
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
  %i.bq = bitcast <16 x i16> %i.ad to <8 x i32>
  %i.br = and <8 x i32> %i.bq, splat (i32 2147418112)
  %i.bs = bitcast <8 x i32> %i.br to <8 x float>
  %i.bt = fcmp fast uge <8 x float> %i.bs, splat (float f0x38D1B717)
  %i.bu = select <8 x i1> %i.bt, <8 x float> %i.bp, <8 x float> %i.aj
  %i.bv = fsub fast <8 x float> splat (float -5.000000e-01), %i.ag
  %i.bw = fmul fast <8 x float> %i.af, %i.bv
  %i.bx = fsub fast <8 x float> %i.bw, %i.ae
  %i.by = fsub fast <8 x float> splat (float 1.000000e+00), %i.ae
  %i.bz = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.by, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.ca = bitcast <8 x float> %i.bz to <8 x i32>
  %i.cb = bitcast <8 x float> %i.bz to <8 x i32>
  %i.cc = and <8 x i32> %i.cb, splat (i32 -2139095041)
  %i.cd = or disjoint <8 x i32> %i.cc, splat (i32 1056964608)
  %i.ce = bitcast <8 x i32> %i.cd to <8 x float>  ; 3 uses
  %i.cf = lshr <8 x i32> %i.ca, splat (i32 23)
  %i.cg = add nsw <8 x i32> %i.cf, splat (i32 -127)
  %i.ch = sitofp fast <8 x i32> %i.cg to <8 x float> ; 2 uses
  %i.ci = fadd fast <8 x float> %i.ch, splat (float 1.000000e+00)
  %i.cj = fcmp fast olt <8 x float> %i.ce, splat (float f0x3F3504F3) ; 2 uses
  %i.ck = select <8 x i1> %i.cj, <8 x float> %i.ce, <8 x float> zeroinitializer
  %i.cl = fadd fast <8 x float> %i.ce, splat (float -1.000000e+00)
  %i.cm = select fast <8 x i1> %i.cj, <8 x float> %i.ch, <8 x float> %i.ci ; 2 uses
  %i.cn = fadd fast <8 x float> %i.cl, %i.ck      ; 12 uses
  %i.co = fmul fast <8 x float> %i.cn, %i.cn      ; 2 uses
  %i.cp = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.cn, <8 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <8 x float> splat (float f0xBDEBD1B8))
  %i.cq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.cp, <8 x float> nofpclass(nan inf) %i.cn, <8 x float> splat (float f0x3DEF251A))
  %i.cr = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.cq, <8 x float> nofpclass(nan inf) %i.cn, <8 x float> splat (float f0xBDFE5D4F))
  %i.cs = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.cr, <8 x float> nofpclass(nan inf) %i.cn, <8 x float> splat (float f0x3E11E9BF))
  %i.ct = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.cs, <8 x float> nofpclass(nan inf) %i.cn, <8 x float> splat (float f0xBE2AAE50))
  %i.cu = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ct, <8 x float> nofpclass(nan inf) %i.cn, <8 x float> splat (float f0x3E4CCEAC))
  %i.cv = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.cu, <8 x float> nofpclass(nan inf) %i.cn, <8 x float> splat (float f0xBE7FFFFC))
  %i.cw = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.cv, <8 x float> nofpclass(nan inf) %i.cn, <8 x float> splat (float f0x3EAAAAAA))
  %i.cx = fmul fast <8 x float> %i.co, %i.cn
  %i.cy = fmul fast <8 x float> %i.cx, %i.cw
  %i.cz = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.cm, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.cy)
  %i.da = fneg fast <8 x float> %i.co
  %i.db = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.da, <8 x float> splat (float 5.000000e-01), <8 x float> nofpclass(nan inf) %i.cz)
  %i.dc = fadd fast <8 x float> %i.db, %i.cn
  %i.dd = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.cm, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.dc)
  %i.de = call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ae)
  %i.df = fcmp fast uge <8 x float> %i.de, splat (float f0x38D1B717)
  %i.dg = select <8 x i1> %i.df, <8 x float> %i.dd, <8 x float> %i.bx
  %i.dh = fsub fast <8 x float> %i.bu, %i.dg
  %i.di = fmul fast <8 x float> %i.dh, splat (float 5.000000e-01)
  %i.dj = bitcast <8 x float> %i.di to <8 x i32>  ; 2 uses
  %i.dk = shufflevector <8 x i32> %i.dj, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dl = shufflevector <8 x i32> %i.dj, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.dm = lshr <4 x i32> %i.dk, splat (i32 16)
  %i.dn = lshr <4 x i32> %i.dl, splat (i32 16)
  %i.do = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.dm, <4 x i32> %i.dn)
  store <8 x i16> %i.do, ptr %.030219, align 1, !tbaa !41
  %i.dp = getelementptr inbounds nuw i8, ptr %.030219, i64 16 ; 2 uses
  %i.dq = add nuw nsw i32 %.0220, 8               ; 3 uses
  %i.dr = or disjoint i32 %i.dq, 7
  %i.ds = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.dt = icmp slt i32 %i.dr, %i.ds
  br i1 %i.dt, label %.lr.ph, label %.preheader218, !llvm.loop !464

.preheader:                                       ; preds = %.lr.ph224, %.preheader218
  %i.du = phi i32 [ %i.x, %.preheader218 ], [ %i.hl, %.lr.ph224 ] ; 3 uses
  %.131.lcssa = phi ptr [ %.030.lcssa, %.preheader218 ], [ %i.hi, %.lr.ph224 ]
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader218 ], [ %i.hj, %.lr.ph224 ] ; 2 uses
  %i.dv = icmp slt i32 %.1.lcssa, %i.du
  br i1 %i.dv, label %.lr.ph230, label %._crit_edge

.lr.ph224:                                        ; preds = %.preheader218, %.lr.ph224
  %.1223 = phi i32 [ %i.hj, %.lr.ph224 ], [ %.0.lcssa, %.preheader218 ]
  %.131222 = phi ptr [ %i.hi, %.lr.ph224 ], [ %.030.lcssa, %.preheader218 ] ; 3 uses
  %i.dw = load i64, ptr %.131222, align 1, !tbaa !41
  %i.dx = insertelement <2 x i64> poison, i64 %i.dw, i64 0
  %i.dy = bitcast <2 x i64> %i.dx to <8 x i16>
  %i.dz = shufflevector <8 x i16> %i.dy, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3> ; 2 uses
  %i.ea = bitcast <8 x i16> %i.dz to <4 x float>  ; 8 uses
  %i.eb = fmul fast <4 x float> %i.ea, %i.ea      ; 2 uses
  %i.ec = fmul fast <4 x float> %i.ea, splat (float f0x3EAAAAAB) ; 2 uses
  %i.ed = fadd fast <4 x float> %i.ec, splat (float -5.000000e-01)
  %i.ee = fmul fast <4 x float> %i.eb, %i.ed
  %i.ef = fadd fast <4 x float> %i.ee, %i.ea
  %i.eg = fadd fast <4 x float> %i.ea, splat (float 1.000000e+00)
  %i.eh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.eg, <4 x float> splat (float f0x00800000))
  %i.ei = bitcast <4 x float> %i.eh to <4 x i32>  ; 2 uses
  %i.ej = lshr <4 x i32> %i.ei, splat (i32 23)
  %i.ek = and <4 x i32> %i.ei, splat (i32 -2139095041)
  %i.el = or disjoint <4 x i32> %i.ek, splat (i32 1056964608)
  %i.em = bitcast <4 x i32> %i.el to <4 x float>  ; 3 uses
  %i.en = add nsw <4 x i32> %i.ej, splat (i32 -127)
  %i.eo = sitofp fast <4 x i32> %i.en to <4 x float> ; 2 uses
  %i.ep = fadd fast <4 x float> %i.eo, splat (float 1.000000e+00)
  %i.eq = fcmp fast olt <4 x float> %i.em, splat (float f0x3F3504F3) ; 2 uses
  %i.er = select <4 x i1> %i.eq, <4 x float> %i.em, <4 x float> zeroinitializer
  %i.es = fadd fast <4 x float> %i.em, splat (float -1.000000e+00)
  %i.et = select fast <4 x i1> %i.eq, <4 x float> %i.eo, <4 x float> %i.ep ; 2 uses
  %i.eu = fadd fast <4 x float> %i.es, %i.er      ; 12 uses
  %i.ev = fmul fast <4 x float> %i.eu, %i.eu      ; 2 uses
  %i.ew = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.eu, <4 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <4 x float> splat (float f0xBDEBD1B8))
  %i.ex = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ew, <4 x float> nofpclass(nan inf) %i.eu, <4 x float> splat (float f0x3DEF251A))
  %i.ey = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ex, <4 x float> nofpclass(nan inf) %i.eu, <4 x float> splat (float f0xBDFE5D4F))
  %i.ez = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ey, <4 x float> nofpclass(nan inf) %i.eu, <4 x float> splat (float f0x3E11E9BF))
  %i.fa = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ez, <4 x float> nofpclass(nan inf) %i.eu, <4 x float> splat (float f0xBE2AAE50))
  %i.fb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fa, <4 x float> nofpclass(nan inf) %i.eu, <4 x float> splat (float f0x3E4CCEAC))
  %i.fc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fb, <4 x float> nofpclass(nan inf) %i.eu, <4 x float> splat (float f0xBE7FFFFC))
  %i.fd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fc, <4 x float> nofpclass(nan inf) %i.eu, <4 x float> splat (float f0x3EAAAAAA))
  %i.fe = fmul fast <4 x float> %i.ev, %i.eu
  %i.ff = fmul fast <4 x float> %i.fe, %i.fd
  %i.fg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.et, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.ff)
  %i.fh = fneg fast <4 x float> %i.ev
  %i.fi = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.fh, <4 x float> splat (float 5.000000e-01), <4 x float> nofpclass(nan inf) %i.fg)
  %i.fj = fadd fast <4 x float> %i.fi, %i.eu
  %i.fk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.et, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.fj)
  %i.fl = bitcast <8 x i16> %i.dz to <4 x i32>
  %i.fm = and <4 x i32> %i.fl, splat (i32 2147418112)
  %i.fn = bitcast <4 x i32> %i.fm to <4 x float>
  %i.fo = fcmp fast uge <4 x float> %i.fn, splat (float f0x38D1B717)
  %i.fp = select <4 x i1> %i.fo, <4 x float> %i.fk, <4 x float> %i.ef
  %i.fq = fsub fast <4 x float> splat (float -5.000000e-01), %i.ec
  %i.fr = fmul fast <4 x float> %i.eb, %i.fq
  %i.fs = fsub fast <4 x float> %i.fr, %i.ea
  %i.ft = fsub fast <4 x float> splat (float 1.000000e+00), %i.ea
  %i.fu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ft, <4 x float> splat (float f0x00800000))
  %i.fv = bitcast <4 x float> %i.fu to <4 x i32>  ; 2 uses
  %i.fw = lshr <4 x i32> %i.fv, splat (i32 23)
  %i.fx = and <4 x i32> %i.fv, splat (i32 -2139095041)
  %i.fy = or disjoint <4 x i32> %i.fx, splat (i32 1056964608)
  %i.fz = bitcast <4 x i32> %i.fy to <4 x float>  ; 3 uses
  %i.ga = add nsw <4 x i32> %i.fw, splat (i32 -127)
  %i.gb = sitofp fast <4 x i32> %i.ga to <4 x float> ; 2 uses
  %i.gc = fadd fast <4 x float> %i.gb, splat (float 1.000000e+00)
  %i.gd = fcmp fast olt <4 x float> %i.fz, splat (float f0x3F3504F3) ; 2 uses
  %i.ge = select <4 x i1> %i.gd, <4 x float> %i.fz, <4 x float> zeroinitializer
  %i.gf = fadd fast <4 x float> %i.fz, splat (float -1.000000e+00)
  %i.gg = select fast <4 x i1> %i.gd, <4 x float> %i.gb, <4 x float> %i.gc ; 2 uses
  %i.gh = fadd fast <4 x float> %i.gf, %i.ge      ; 12 uses
  %i.gi = fmul fast <4 x float> %i.gh, %i.gh      ; 2 uses
  %i.gj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gh, <4 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <4 x float> splat (float f0xBDEBD1B8))
  %i.gk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gj, <4 x float> nofpclass(nan inf) %i.gh, <4 x float> splat (float f0x3DEF251A))
  %i.gl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gk, <4 x float> nofpclass(nan inf) %i.gh, <4 x float> splat (float f0xBDFE5D4F))
  %i.gm = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gl, <4 x float> nofpclass(nan inf) %i.gh, <4 x float> splat (float f0x3E11E9BF))
  %i.gn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gm, <4 x float> nofpclass(nan inf) %i.gh, <4 x float> splat (float f0xBE2AAE50))
  %i.go = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gn, <4 x float> nofpclass(nan inf) %i.gh, <4 x float> splat (float f0x3E4CCEAC))
  %i.gp = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.go, <4 x float> nofpclass(nan inf) %i.gh, <4 x float> splat (float f0xBE7FFFFC))
  %i.gq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gp, <4 x float> nofpclass(nan inf) %i.gh, <4 x float> splat (float f0x3EAAAAAA))
  %i.gr = fmul fast <4 x float> %i.gi, %i.gh
  %i.gs = fmul fast <4 x float> %i.gr, %i.gq
  %i.gt = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gg, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.gs)
  %i.gu = fneg fast <4 x float> %i.gi
  %i.gv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.gu, <4 x float> splat (float 5.000000e-01), <4 x float> nofpclass(nan inf) %i.gt)
  %i.gw = fadd fast <4 x float> %i.gv, %i.gh
  %i.gx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gg, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.gw)
  %i.gy = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ea)
  %i.gz = fcmp fast uge <4 x float> %i.gy, splat (float f0x38D1B717)
  %i.ha = select <4 x i1> %i.gz, <4 x float> %i.gx, <4 x float> %i.fs
  %i.hb = fsub fast <4 x float> %i.fp, %i.ha
  %i.hc = fmul fast <4 x float> %i.hb, splat (float 5.000000e-01)
  %i.hd = bitcast <4 x float> %i.hc to <4 x i32>
  %i.he = lshr <4 x i32> %i.hd, splat (i32 16)
  %i.hf = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.he, <4 x i32> poison)
  %i.hg = bitcast <8 x i16> %i.hf to <2 x i64>
  %i.hh = extractelement <2 x i64> %i.hg, i64 0
  store i64 %i.hh, ptr %.131222, align 1, !tbaa !41
  %i.hi = getelementptr inbounds nuw i8, ptr %.131222, i64 8 ; 2 uses
  %i.hj = add nuw nsw i32 %.1223, 4               ; 3 uses
  %i.hk = or disjoint i32 %i.hj, 3
  %i.hl = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.hm = icmp slt i32 %i.hk, %i.hl
  br i1 %i.hm, label %.lr.ph224, label %.preheader, !llvm.loop !465

.lr.ph230:                                        ; preds = %.preheader, %.lr.ph230
  %.2229 = phi i32 [ %i.hw, %.lr.ph230 ], [ %.1.lcssa, %.preheader ]
  %.232228 = phi ptr [ %i.hv, %.lr.ph230 ], [ %.131.lcssa, %.preheader ] ; 3 uses
  %i.hn = load i16, ptr %.232228, align 2, !tbaa !51
  %i.ho = zext i16 %i.hn to i32
  %i.hp = shl nuw i32 %i.ho, 16
  %i.hq = bitcast i32 %i.hp to float
  %i.hr = call fast noundef nofpclass(nan inf) float @atanhf(float noundef nofpclass(nan inf) %i.hq) #20
  %i.hs = bitcast float %i.hr to i32
  %i.ht = lshr i32 %i.hs, 16
  %i.hu = trunc nuw i32 %i.ht to i16
  store i16 %i.hu, ptr %.232228, align 2, !tbaa !51
  %i.hv = getelementptr inbounds nuw i8, ptr %.232228, i64 2
  %i.hw = add nuw nsw i32 %.2229, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.hw, %i.du
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph230, !llvm.loop !466

._crit_edge:                                      ; preds = %.lr.ph230, %.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond240.not = icmp eq i32 %i.o, %lftr.wideiv
  br i1 %exitcond240.not, label %._crit_edge233, label %.noexc

._crit_edge233:                                   ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge233, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL22unary_op_inplace_bf16sINS_23UnaryOp_x86_fma_functor14unary_op_log1pEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #7 personality ptr @__gxx_personality_v0 {
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
  %.not136 = icmp sgt i32 %i.k, %i.j
  br i1 %.not136, label %._crit_edge138, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  %i.o = add nsw i32 %i.j, 1
  %.pre = load i32, ptr %4, align 4, !tbaa !37
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %._crit_edge
  %i.p = phi i32 [ %.pre, %.noexc.lr.ph ], [ %i.ci, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !39, !noalias !473
  %i.r = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !473
  %i.s = mul i64 %i.r, %indvars.iv
  %i.t = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !473
  %i.u = mul i64 %i.s, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.u ; 2 uses
  %i.w = icmp sgt i32 %i.p, 7
  br i1 %i.w, label %.lr.ph, label %.preheader123

.preheader123:                                    ; preds = %.lr.ph, %.noexc
  %i.x = phi i32 [ %i.p, %.noexc ], [ %i.cg, %.lr.ph ] ; 2 uses
  %.030.lcssa = phi ptr [ %i.v, %.noexc ], [ %i.cd, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.ce, %.lr.ph ] ; 3 uses
  %i.y = or disjoint i32 %.0.lcssa, 3
  %i.z = icmp slt i32 %i.y, %i.x
  br i1 %i.z, label %.lr.ph129, label %.preheader

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.0125 = phi i32 [ %i.ce, %.lr.ph ], [ 0, %.noexc ]
  %.030124 = phi ptr [ %i.cd, %.lr.ph ], [ %i.v, %.noexc ] ; 3 uses
  %i.aa = load <8 x i16>, ptr %.030124, align 1, !tbaa !41 ; 2 uses
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
  %i.az = select fast <8 x i1> %i.aw, <8 x float> %i.au, <8 x float> %i.av ; 2 uses
  %i.ba = fadd fast <8 x float> %i.ay, %i.ax      ; 12 uses
  %i.bb = fmul fast <8 x float> %i.ba, %i.ba      ; 2 uses
  %i.bc = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ba, <8 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <8 x float> splat (float f0xBDEBD1B8))
  %i.bd = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bc, <8 x float> nofpclass(nan inf) %i.ba, <8 x float> splat (float f0x3DEF251A))
  %i.be = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bd, <8 x float> nofpclass(nan inf) %i.ba, <8 x float> splat (float f0xBDFE5D4F))
  %i.bf = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.be, <8 x float> nofpclass(nan inf) %i.ba, <8 x float> splat (float f0x3E11E9BF))
  %i.bg = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bf, <8 x float> nofpclass(nan inf) %i.ba, <8 x float> splat (float f0xBE2AAE50))
  %i.bh = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bg, <8 x float> nofpclass(nan inf) %i.ba, <8 x float> splat (float f0x3E4CCEAC))
  %i.bi = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bh, <8 x float> nofpclass(nan inf) %i.ba, <8 x float> splat (float f0xBE7FFFFC))
  %i.bj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bi, <8 x float> nofpclass(nan inf) %i.ba, <8 x float> splat (float f0x3EAAAAAA))
  %i.bk = fmul fast <8 x float> %i.bb, %i.ba
  %i.bl = fmul fast <8 x float> %i.bk, %i.bj
  %i.bm = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.az, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.bl)
  %i.bn = fneg fast <8 x float> %i.bb
  %i.bo = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.bn, <8 x float> splat (float 5.000000e-01), <8 x float> nofpclass(nan inf) %i.bm)
  %i.bp = fadd fast <8 x float> %i.bo, %i.ba
  %i.bq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.az, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.bp)
  %i.br = bitcast <16 x i16> %i.ad to <8 x i32>
  %i.bs = and <8 x i32> %i.br, splat (i32 2147418112)
  %i.bt = bitcast <8 x i32> %i.bs to <8 x float>
  %i.bu = fcmp fast uge <8 x float> %i.bt, splat (float f0x38D1B717)
  %i.bv = select <8 x i1> %i.al, <8 x float> splat (float -nan(0x3FFFFF)), <8 x float> %i.bq
  %i.bw = select <8 x i1> %i.bu, <8 x float> %i.bv, <8 x float> %i.aj
  %i.bx = bitcast <8 x float> %i.bw to <8 x i32>  ; 2 uses
  %i.by = shufflevector <8 x i32> %i.bx, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bz = shufflevector <8 x i32> %i.bx, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ca = lshr <4 x i32> %i.by, splat (i32 16)
  %i.cb = lshr <4 x i32> %i.bz, splat (i32 16)
  %i.cc = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.ca, <4 x i32> %i.cb)
  store <8 x i16> %i.cc, ptr %.030124, align 1, !tbaa !41
  %i.cd = getelementptr inbounds nuw i8, ptr %.030124, i64 16 ; 2 uses
  %i.ce = add nuw nsw i32 %.0125, 8               ; 3 uses
  %i.cf = or disjoint i32 %i.ce, 7
  %i.cg = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.ch = icmp slt i32 %i.cf, %i.cg
  br i1 %i.ch, label %.lr.ph, label %.preheader123, !llvm.loop !470

.preheader:                                       ; preds = %.lr.ph129, %.preheader123
  %i.ci = phi i32 [ %i.x, %.preheader123 ], [ %i.eo, %.lr.ph129 ] ; 3 uses
  %.131.lcssa = phi ptr [ %.030.lcssa, %.preheader123 ], [ %i.el, %.lr.ph129 ]
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader123 ], [ %i.em, %.lr.ph129 ] ; 2 uses
  %i.cj = icmp slt i32 %.1.lcssa, %i.ci
  br i1 %i.cj, label %.lr.ph135, label %._crit_edge

.lr.ph129:                                        ; preds = %.preheader123, %.lr.ph129
  %.1128 = phi i32 [ %i.em, %.lr.ph129 ], [ %.0.lcssa, %.preheader123 ]
  %.131127 = phi ptr [ %i.el, %.lr.ph129 ], [ %.030.lcssa, %.preheader123 ] ; 3 uses
  %i.ck = load i64, ptr %.131127, align 1, !tbaa !41
  %i.cl = insertelement <2 x i64> poison, i64 %i.ck, i64 0
  %i.cm = bitcast <2 x i64> %i.cl to <8 x i16>
  %i.cn = shufflevector <8 x i16> %i.cm, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3> ; 2 uses
  %i.co = bitcast <8 x i16> %i.cn to <4 x float>  ; 5 uses
  %i.cp = fmul fast <4 x float> %i.co, %i.co
  %i.cq = fmul fast <4 x float> %i.co, splat (float f0x3EAAAAAB)
  %i.cr = fadd fast <4 x float> %i.cq, splat (float -5.000000e-01)
  %i.cs = fmul fast <4 x float> %i.cp, %i.cr
  %i.ct = fadd fast <4 x float> %i.cs, %i.co
  %i.cu = fadd fast <4 x float> %i.co, splat (float 1.000000e+00) ; 2 uses
  %i.cv = fcmp fast ole <4 x float> %i.cu, zeroinitializer
  %i.cw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.cu, <4 x float> splat (float f0x00800000))
  %i.cx = bitcast <4 x float> %i.cw to <4 x i32>  ; 2 uses
  %i.cy = lshr <4 x i32> %i.cx, splat (i32 23)
  %i.cz = and <4 x i32> %i.cx, splat (i32 -2139095041)
  %i.da = or disjoint <4 x i32> %i.cz, splat (i32 1056964608)
  %i.db = bitcast <4 x i32> %i.da to <4 x float>  ; 3 uses
  %i.dc = add nsw <4 x i32> %i.cy, splat (i32 -127)
  %i.dd = sitofp fast <4 x i32> %i.dc to <4 x float> ; 2 uses
  %i.de = fadd fast <4 x float> %i.dd, splat (float 1.000000e+00)
  %i.df = fcmp fast olt <4 x float> %i.db, splat (float f0x3F3504F3) ; 2 uses
  %i.dg = select <4 x i1> %i.df, <4 x float> %i.db, <4 x float> zeroinitializer
  %i.dh = fadd fast <4 x float> %i.db, splat (float -1.000000e+00)
  %i.di = select fast <4 x i1> %i.df, <4 x float> %i.dd, <4 x float> %i.de ; 2 uses
  %i.dj = fadd fast <4 x float> %i.dh, %i.dg      ; 12 uses
  %i.dk = fmul fast <4 x float> %i.dj, %i.dj      ; 2 uses
  %i.dl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dj, <4 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <4 x float> splat (float f0xBDEBD1B8))
  %i.dm = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dl, <4 x float> nofpclass(nan inf) %i.dj, <4 x float> splat (float f0x3DEF251A))
  %i.dn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dm, <4 x float> nofpclass(nan inf) %i.dj, <4 x float> splat (float f0xBDFE5D4F))
  %i.do = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dn, <4 x float> nofpclass(nan inf) %i.dj, <4 x float> splat (float f0x3E11E9BF))
  %i.dp = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.do, <4 x float> nofpclass(nan inf) %i.dj, <4 x float> splat (float f0xBE2AAE50))
  %i.dq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dp, <4 x float> nofpclass(nan inf) %i.dj, <4 x float> splat (float f0x3E4CCEAC))
  %i.dr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dq, <4 x float> nofpclass(nan inf) %i.dj, <4 x float> splat (float f0xBE7FFFFC))
  %i.ds = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dr, <4 x float> nofpclass(nan inf) %i.dj, <4 x float> splat (float f0x3EAAAAAA))
  %i.dt = fmul fast <4 x float> %i.dk, %i.dj
  %i.du = fmul fast <4 x float> %i.dt, %i.ds
  %i.dv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.di, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.du)
  %i.dw = fneg fast <4 x float> %i.dk
  %i.dx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.dw, <4 x float> splat (float 5.000000e-01), <4 x float> nofpclass(nan inf) %i.dv)
  %i.dy = fadd fast <4 x float> %i.dx, %i.dj
  %i.dz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.di, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.dy)
  %i.ea = bitcast <8 x i16> %i.cn to <4 x i32>
  %i.eb = and <4 x i32> %i.ea, splat (i32 2147418112)
  %i.ec = bitcast <4 x i32> %i.eb to <4 x float>
  %i.ed = fcmp fast uge <4 x float> %i.ec, splat (float f0x38D1B717)
  %i.ee = select <4 x i1> %i.cv, <4 x float> splat (float -nan(0x3FFFFF)), <4 x float> %i.dz
  %i.ef = select <4 x i1> %i.ed, <4 x float> %i.ee, <4 x float> %i.ct
  %i.eg = bitcast <4 x float> %i.ef to <4 x i32>
  %i.eh = lshr <4 x i32> %i.eg, splat (i32 16)
  %i.ei = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.eh, <4 x i32> poison)
  %i.ej = bitcast <8 x i16> %i.ei to <2 x i64>
  %i.ek = extractelement <2 x i64> %i.ej, i64 0
  store i64 %i.ek, ptr %.131127, align 1, !tbaa !41
  %i.el = getelementptr inbounds nuw i8, ptr %.131127, i64 8 ; 2 uses
  %i.em = add nuw nsw i32 %.1128, 4               ; 3 uses
  %i.en = or disjoint i32 %i.em, 3
  %i.eo = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.ep = icmp slt i32 %i.en, %i.eo
  br i1 %i.ep, label %.lr.ph129, label %.preheader, !llvm.loop !471

.lr.ph135:                                        ; preds = %.preheader, %.lr.ph135
  %.2134 = phi i32 [ %i.ez, %.lr.ph135 ], [ %.1.lcssa, %.preheader ]
  %.232133 = phi ptr [ %i.ey, %.lr.ph135 ], [ %.131.lcssa, %.preheader ] ; 3 uses
  %i.eq = load i16, ptr %.232133, align 2, !tbaa !51
  %i.er = zext i16 %i.eq to i32
  %i.es = shl nuw i32 %i.er, 16
  %i.et = bitcast i32 %i.es to float
  %i.eu = call fast noundef nofpclass(nan inf) float @log1pf(float noundef nofpclass(nan inf) %i.et) #20
  %i.ev = bitcast float %i.eu to i32
  %i.ew = lshr i32 %i.ev, 16
  %i.ex = trunc nuw i32 %i.ew to i16
  store i16 %i.ex, ptr %.232133, align 2, !tbaa !51
  %i.ey = getelementptr inbounds nuw i8, ptr %.232133, i64 2
  %i.ez = add nuw nsw i32 %.2134, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.ez, %i.ci
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph135, !llvm.loop !472

._crit_edge:                                      ; preds = %.lr.ph135, %.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond145.not = icmp eq i32 %i.o, %lftr.wideiv
  br i1 %exitcond145.not, label %._crit_edge138, label %.noexc

._crit_edge138:                                   ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge138, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.maxnum.v8f32(<8 x float>, <8 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.maxnum.v4f32(<4 x float>, <4 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fabs.v8f32(<8 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.copysign.v4f32(<4 x float>, <4 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.copysign.v8f32(<8 x float>, <8 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.floor.v8f32(<8 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.ceil.v8f32(<8 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.exp.v8f32(<8 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.log.v8f32(<8 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.sin.v8f32(<8 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.cos.v8f32(<8 x float>) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.tan.v8f32(<8 x float>) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.asin.v8f32(<8 x float>) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.acos.v8f32(<8 x float>) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.atan.v8f32(<8 x float>) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.tanh.v8f32(<8 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.log10.v8f32(<8 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.nearbyint.v8f32(<8 x float>) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.sinh.v8f32(<8 x float>) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.cosh.v8f32(<8 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.fabs.v16f32(<16 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.floor.v16f32(<16 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.floor.v4f32(<4 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.ceil.v16f32(<16 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.ceil.v4f32(<4 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.sqrt.v16f32(<16 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.exp.v16f32(<16 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.exp.v4f32(<4 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.log.v16f32(<16 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.log.v4f32(<4 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.sin.v16f32(<16 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.sin.v4f32(<4 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.cos.v16f32(<16 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.cos.v4f32(<4 x float>) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.tan.v16f32(<16 x float>) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.tan.v4f32(<4 x float>) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.asin.v16f32(<16 x float>) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.asin.v4f32(<4 x float>) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.acos.v16f32(<16 x float>) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.acos.v4f32(<4 x float>) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.atan.v16f32(<16 x float>) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.atan.v4f32(<4 x float>) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.tanh.v16f32(<16 x float>) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.tanh.v4f32(<4 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.log10.v16f32(<16 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.log10.v4f32(<4 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.nearbyint.v16f32(<16 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.nearbyint.v4f32(<4 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.trunc.v16f32(<16 x float>) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.sinh.v16f32(<16 x float>) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.sinh.v4f32(<4 x float>) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.cosh.v16f32(<16 x float>) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.cosh.v4f32(<4 x float>) #11

attributes #0 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="256" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "_ZGVbN4v_expm1f" "_ZGVcN8v_expm1f" "_ZGVdN8v_expm1f" "_ZGVeN16v_expm1f" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "_ZGVbN4v_asinhf" "_ZGVcN8v_asinhf" "_ZGVdN8v_asinhf" "_ZGVeN16v_asinhf" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "_ZGVbN4v_acoshf" "_ZGVcN8v_acoshf" "_ZGVdN8v_acoshf" "_ZGVeN16v_acoshf" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "_ZGVbN4v_atanhf" "_ZGVcN8v_atanhf" "_ZGVdN8v_atanhf" "_ZGVeN16v_atanhf" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "_ZGVbN4v_log1pf" "_ZGVcN8v_log1pf" "_ZGVdN8v_log1pf" "_ZGVeN16v_log1pf" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #17 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #18 = { builtin nounwind }
attributes #19 = { nounwind willreturn memory(read) }
attributes #20 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"bool", !5, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"p1 _ZTSN4ncnn9AllocatorE", !10, i64 0}
!12 = !{!"_ZTSN4ncnn6OptionE", !9, i64 0, !9, i64 1, !9, i64 2, !9, i64 3, !6, i64 4, !11, i64 8, !11, i64 16, !6, i64 24, !9, i64 28, !9, i64 29, !9, i64 30, !9, i64 31, !9, i64 32, !9, i64 33, !9, i64 34, !9, i64 35, !9, i64 36, !9, i64 37, !9, i64 38, !9, i64 39, !6, i64 40, !9, i64 44, !9, i64 45, !9, i64 46, !9, i64 47, !5, i64 48, !9, i64 49, !9, i64 50, !9, i64 51, !9, i64 52, !9, i64 53, !9, i64 54, !9, i64 55, !9, i64 56, !9, i64 57, !9, i64 58, !9, i64 59, !9, i64 60, !9, i64 61, !9, i64 62, !9, i64 63}
!13 = !{!"p1 int", !10, i64 0}
!14 = !{!"long", !5, i64 0}
!15 = !{!"_ZTSN4ncnn3MatE", !10, i64 0, !13, i64 8, !14, i64 16, !6, i64 24, !11, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !14, i64 64}
!16 = !{!15, !6, i64 24}
!17 = !{!15, !14, i64 16}
!18 = !{!"p1 omnipotent char", !10, i64 0}
!19 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !18, i64 0}
!20 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !19, i64 0, !14, i64 8, !5, i64 16}
!21 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !13, i64 0, !13, i64 8, !13, i64 16}
!22 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !21, i64 0}
!23 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !22, i64 0}
!24 = !{!"_ZTSSt6vectorIiSaIiEE", !23, i64 0}
!25 = !{!"p1 _ZTSN4ncnn3MatE", !10, i64 0}
!26 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE17_Vector_impl_dataE", !25, i64 0, !25, i64 8, !25, i64 16}
!27 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE12_Vector_implE", !26, i64 0}
!28 = !{!"_ZTSSt12_Vector_baseIN4ncnn3MatESaIS1_EE", !27, i64 0}
!29 = !{!"_ZTSSt6vectorIN4ncnn3MatESaIS1_EE", !28, i64 0}
!30 = !{!"_ZTSN4ncnn5LayerE", !9, i64 8, !9, i64 9, !9, i64 10, !9, i64 11, !9, i64 12, !9, i64 13, !9, i64 14, !9, i64 15, !9, i64 16, !9, i64 17, !9, i64 18, !9, i64 19, !9, i64 20, !9, i64 21, !9, i64 22, !9, i64 23, !9, i64 24, !9, i64 25, !9, i64 26, !9, i64 27, !6, i64 28, !10, i64 32, !6, i64 40, !20, i64 48, !20, i64 80, !24, i64 112, !24, i64 136, !29, i64 160, !29, i64 184}
end_hunk_4
