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
begin_hunk_1_@_ZN4ncnnL22unary_op_inplace_bf16sINS_23UnaryOp_x86_fma_functor13unary_op_ceilEEEiRNS_3MatERKNS_6OptionE.omp_outlined:bb.a
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
  %i.cb = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ca, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
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
  %i.ab = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aa, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ac = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.aa, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
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
  %i.cb = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ca, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
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
  %i.ab = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aa, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ac = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.aa, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
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
  %i.cb = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ca, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
end_hunk_1
begin_hunk_2_@_ZN4ncnnL22unary_op_inplace_bf16sINS_23UnaryOp_x86_fma_functor14unary_op_log1pEEEiRNS_3MatERKNS_6OptionE.omp_outlined:bb.a

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
  %i.ab = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aa, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ac = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.aa, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
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
  %i.cn = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cm, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
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
end_hunk_2
