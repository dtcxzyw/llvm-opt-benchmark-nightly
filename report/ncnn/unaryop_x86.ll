Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/unaryop_x86?download=true
inline.NumInlined: 57
inline.NumDeleted: 57
loop-unroll.NumCompletelyUnrolled: 46
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_ZN4ncnnL22unary_op_inplace_bf16sINS_19UnaryOp_x86_functor13unary_op_sqrtEEEiRNS_3MatERKNS_6OptionE.omp_outlined:bb.a
  %i.av = bitcast float %i.au to i32
  %i.aw = lshr i32 %i.av, 16
  %i.ax = trunc nuw i32 %i.aw to i16
  store i16 %i.ax, ptr %i.ap, align 2, !tbaa !51
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %bb.d, %bb.c, %.noexc.us
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond53.not = icmp eq i32 %i.w, %lftr.wideiv
  br i1 %exitcond53.not, label %._crit_edge47, label %.noexc.us

.noexc:                                           ; preds = %.noexc.preheader, %._crit_edge
  %i.ay = phi i32 [ %i.n, %.noexc.preheader ], [ %i.bg, %._crit_edge ] ; 2 uses
  %indvars.iv55 = phi i64 [ %i.p, %.noexc.preheader ], [ %indvars.iv.next56, %._crit_edge ] ; 2 uses
  %i.az = load ptr, ptr %3, align 8, !tbaa !39, !noalias !293
  %i.ba = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !293
  %i.bb = mul i64 %i.ba, %indvars.iv55
  %i.bc = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !293
  %i.bd = mul i64 %i.bb, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bd ; 2 uses
  %i.bf = icmp sgt i32 %i.ay, 3
  br i1 %i.bf, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %.noexc
  %i.bg = phi i32 [ %i.ay, %.noexc ], [ %i.co, %.lr.ph ] ; 4 uses
  %.025.lcssa = phi ptr [ %i.be, %.noexc ], [ %i.cl, %.lr.ph ] ; 3 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.cm, %.lr.ph ] ; 4 uses
  %i.bh = icmp slt i32 %.0.lcssa, %i.bg
  br i1 %i.bh, label %.lr.ph44.preheader, label %._crit_edge

.lr.ph44.preheader:                               ; preds = %.preheader
  %i.bi = xor i32 %.0.lcssa, -1
  %i.bj = add i32 %i.bg, %i.bi                    ; 2 uses
  %i.bk = zext i32 %i.bj to i64
  %i.bl = add nuw nsw i64 %i.bk, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.bj, 7
  br i1 %min.iters.check, label %.lr.ph44.preheader73, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph44.preheader
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
  %i.bu = call fast <8 x float> @llvm.sqrt.v8f32(<8 x float> %i.bt)
  %i.bv = bitcast <8 x float> %i.bu to <8 x i32>
  %i.bw = lshr <8 x i32> %i.bv, splat (i32 16)
  %i.bx = trunc nuw <8 x i32> %i.bw to <8 x i16>
  store <8 x i16> %i.bx, ptr %next.gep, align 2, !tbaa !51
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.by = icmp eq i64 %index.next, %n.vec
  br i1 %i.by, label %middle.block, label %vector.body, !llvm.loop !289

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bl, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph44.preheader73

.lr.ph44.preheader73:                             ; preds = %.lr.ph44.preheader, %middle.block
  %.143.ph = phi i32 [ %.0.lcssa, %.lr.ph44.preheader ], [ %i.bn, %middle.block ]
  %.12642.ph = phi ptr [ %.025.lcssa, %.lr.ph44.preheader ], [ %i.bp, %middle.block ]
  br label %.lr.ph44

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.039 = phi i32 [ %i.cm, %.lr.ph ], [ 0, %.noexc ]
  %.02538 = phi ptr [ %i.cl, %.lr.ph ], [ %i.be, %.noexc ] ; 3 uses
  %i.bz = load i64, ptr %.02538, align 1, !tbaa !46
  %i.ca = insertelement <2 x i64> poison, i64 %i.bz, i64 0
  %i.cb = bitcast <2 x i64> %i.ca to <8 x i16>
  %i.cc = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cb, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cd = bitcast <8 x i16> %i.cc to <4 x float>
  %i.ce = call fast noundef nofpclass(nan inf) <4 x float> @llvm.sqrt.v4f32(<4 x float> nofpclass(nan inf) %i.cd)
  %i.cf = bitcast <4 x float> %i.ce to <8 x i16>
  %i.cg = shufflevector <8 x i16> %i.cf, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.ch = bitcast <8 x i16> %i.cg to <4 x float>
  %i.ci = shufflevector <4 x float> %i.ch, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.cj = bitcast <4 x float> %i.ci to <2 x i64>
  %i.ck = extractelement <2 x i64> %i.cj, i64 0
  store i64 %i.ck, ptr %.02538, align 1, !tbaa !46
  %i.cl = getelementptr inbounds nuw i8, ptr %.02538, i64 8 ; 2 uses
  %i.cm = add nuw nsw i32 %.039, 4                ; 3 uses
  %i.cn = or disjoint i32 %i.cm, 3
  %i.co = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.cp = icmp slt i32 %i.cn, %i.co
  br i1 %i.cp, label %.lr.ph, label %.preheader, !llvm.loop !290

.lr.ph44:                                         ; preds = %.lr.ph44.preheader73, %.lr.ph44
  %.143 = phi i32 [ %i.cz, %.lr.ph44 ], [ %.143.ph, %.lr.ph44.preheader73 ]
  %.12642 = phi ptr [ %i.cy, %.lr.ph44 ], [ %.12642.ph, %.lr.ph44.preheader73 ] ; 3 uses
  %i.cq = load i16, ptr %.12642, align 2, !tbaa !51
  %i.cr = zext i16 %i.cq to i32
  %i.cs = shl nuw i32 %i.cr, 16
  %i.ct = bitcast i32 %i.cs to float
  %i.cu = call fast noundef nofpclass(nan inf) float @llvm.sqrt.f32(float %i.ct)
  %i.cv = bitcast float %i.cu to i32
  %i.cw = lshr i32 %i.cv, 16
  %i.cx = trunc nuw i32 %i.cw to i16
  store i16 %i.cx, ptr %.12642, align 2, !tbaa !51
  %i.cy = getelementptr inbounds nuw i8, ptr %.12642, i64 2
  %i.cz = add nuw nsw i32 %.143, 1                ; 2 uses
  %exitcond54.not = icmp eq i32 %i.cz, %i.bg
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
  %i.r = load ptr, ptr %3, align 8, !tbaa !39, !noalias !300
  %i.s = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !300
  %i.t = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !300
  %factor.op.mul = mul i64 %i.s, %i.t
  %i.u = icmp sgt i32 %i.n, 0
  br i1 %i.u, label %.noexc.us.preheader, label %._crit_edge47

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
  %i.ac = call fast float @llvm.sqrt.f32(float %i.ab)
  %i.ad = fdiv fast float 1.000000e+00, %i.ac
  %i.ae = bitcast float %i.ad to i32
  %i.af = lshr i32 %i.ae, 16
  %i.ag = trunc nuw i32 %i.af to i16
  store i16 %i.ag, ptr %i.x, align 2, !tbaa !51
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.c

bb.c:                                             ; preds = %.noexc.us
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 2 ; 2 uses
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !51
  %i.aj = zext i16 %i.ai to i32
  %i.ak = shl nuw i32 %i.aj, 16
  %i.al = bitcast i32 %i.ak to float
  %i.am = call fast float @llvm.sqrt.f32(float %i.al)
  %i.an = fdiv fast float 1.000000e+00, %i.am
  %i.ao = bitcast float %i.an to i32
  %i.ap = lshr i32 %i.ao, 16
  %i.aq = trunc nuw i32 %i.ap to i16
  store i16 %i.aq, ptr %i.ah, align 2, !tbaa !51
  br i1 %exitcond.not.1, label %._crit_edge.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ar = getelementptr inbounds nuw i8, ptr %i.x, i64 4 ; 2 uses
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !51
  %i.at = zext i16 %i.as to i32
  %i.au = shl nuw i32 %i.at, 16
  %i.av = bitcast i32 %i.au to float
  %i.aw = call fast float @llvm.sqrt.f32(float %i.av)
  %i.ax = fdiv fast float 1.000000e+00, %i.aw
  %i.ay = bitcast float %i.ax to i32
  %i.az = lshr i32 %i.ay, 16
  %i.ba = trunc nuw i32 %i.az to i16
  store i16 %i.ba, ptr %i.ar, align 2, !tbaa !51
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %bb.d, %bb.c, %.noexc.us
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond53.not = icmp eq i32 %i.w, %lftr.wideiv
  br i1 %exitcond53.not, label %._crit_edge47, label %.noexc.us

.noexc:                                           ; preds = %.noexc.preheader, %._crit_edge
  %i.bb = phi i32 [ %i.n, %.noexc.preheader ], [ %i.bj, %._crit_edge ] ; 2 uses
  %indvars.iv55 = phi i64 [ %i.p, %.noexc.preheader ], [ %indvars.iv.next56, %._crit_edge ] ; 2 uses
  %i.bc = load ptr, ptr %3, align 8, !tbaa !39, !noalias !300
  %i.bd = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !300
  %i.be = mul i64 %i.bd, %indvars.iv55
  %i.bf = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !300
  %i.bg = mul i64 %i.be, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bg ; 2 uses
  %i.bi = icmp sgt i32 %i.bb, 3
  br i1 %i.bi, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %.noexc
  %i.bj = phi i32 [ %i.bb, %.noexc ], [ %i.cs, %.lr.ph ] ; 4 uses
  %.025.lcssa = phi ptr [ %i.bh, %.noexc ], [ %i.cp, %.lr.ph ] ; 3 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.cq, %.lr.ph ] ; 4 uses
  %i.bk = icmp slt i32 %.0.lcssa, %i.bj
  br i1 %i.bk, label %.lr.ph44.preheader, label %._crit_edge

.lr.ph44.preheader:                               ; preds = %.preheader
  %i.bl = xor i32 %.0.lcssa, -1
  %i.bm = add i32 %i.bj, %i.bl                    ; 2 uses
  %i.bn = zext i32 %i.bm to i64
  %i.bo = add nuw nsw i64 %i.bn, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.bm, 7
  br i1 %min.iters.check, label %.lr.ph44.preheader73, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph44.preheader
  %n.vec = and i64 %i.bo, 8589934584              ; 4 uses
  %i.bp = trunc i64 %n.vec to i32
  %i.bq = add i32 %.0.lcssa, %i.bp
  %i.br = shl nuw nsw i64 %n.vec, 1
  %i.bs = getelementptr i8, ptr %.025.lcssa, i64 %i.br
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bt = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.025.lcssa, i64 %i.bt ; 2 uses
  %wide.load = load <8 x i16>, ptr %next.gep, align 2, !tbaa !51
  %i.bu = zext <8 x i16> %wide.load to <8 x i32>
  %i.bv = shl nuw <8 x i32> %i.bu, splat (i32 16)
  %i.bw = bitcast <8 x i32> %i.bv to <8 x float>
  %i.bx = call fast <8 x float> @llvm.sqrt.v8f32(<8 x float> %i.bw)
  %i.by = fdiv fast <8 x float> splat (float 1.000000e+00), %i.bx
  %i.bz = bitcast <8 x float> %i.by to <8 x i32>
  %i.ca = lshr <8 x i32> %i.bz, splat (i32 16)
  %i.cb = trunc nuw <8 x i32> %i.ca to <8 x i16>
  store <8 x i16> %i.cb, ptr %next.gep, align 2, !tbaa !51
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cc = icmp eq i64 %index.next, %n.vec
  br i1 %i.cc, label %middle.block, label %vector.body, !llvm.loop !296

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bo, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph44.preheader73

.lr.ph44.preheader73:                             ; preds = %.lr.ph44.preheader, %middle.block
  %.143.ph = phi i32 [ %.0.lcssa, %.lr.ph44.preheader ], [ %i.bq, %middle.block ]
  %.12642.ph = phi ptr [ %.025.lcssa, %.lr.ph44.preheader ], [ %i.bs, %middle.block ]
  br label %.lr.ph44

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.039 = phi i32 [ %i.cq, %.lr.ph ], [ 0, %.noexc ]
  %.02538 = phi ptr [ %i.cp, %.lr.ph ], [ %i.bh, %.noexc ] ; 3 uses
  %i.cd = load i64, ptr %.02538, align 1, !tbaa !46
  %i.ce = insertelement <2 x i64> poison, i64 %i.cd, i64 0
  %i.cf = bitcast <2 x i64> %i.ce to <8 x i16>
  %i.cg = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cf, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ch = bitcast <8 x i16> %i.cg to <4 x float>
  %i.ci = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.rsqrt.ps(<4 x float> nofpclass(nan inf) %i.ch)
  %i.cj = bitcast <4 x float> %i.ci to <8 x i16>
  %i.ck = shufflevector <8 x i16> %i.cj, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.cl = bitcast <8 x i16> %i.ck to <4 x float>
  %i.cm = shufflevector <4 x float> %i.cl, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.cn = bitcast <4 x float> %i.cm to <2 x i64>
  %i.co = extractelement <2 x i64> %i.cn, i64 0
  store i64 %i.co, ptr %.02538, align 1, !tbaa !46
  %i.cp = getelementptr inbounds nuw i8, ptr %.02538, i64 8 ; 2 uses
  %i.cq = add nuw nsw i32 %.039, 4                ; 3 uses
  %i.cr = or disjoint i32 %i.cq, 3
  %i.cs = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.ct = icmp slt i32 %i.cr, %i.cs
  br i1 %i.ct, label %.lr.ph, label %.preheader, !llvm.loop !297

.lr.ph44:                                         ; preds = %.lr.ph44.preheader73, %.lr.ph44
  %.143 = phi i32 [ %i.de, %.lr.ph44 ], [ %.143.ph, %.lr.ph44.preheader73 ]
  %.12642 = phi ptr [ %i.dd, %.lr.ph44 ], [ %.12642.ph, %.lr.ph44.preheader73 ] ; 3 uses
  %i.cu = load i16, ptr %.12642, align 2, !tbaa !51
  %i.cv = zext i16 %i.cu to i32
  %i.cw = shl nuw i32 %i.cv, 16
  %i.cx = bitcast i32 %i.cw to float
  %i.cy = call fast float @llvm.sqrt.f32(float %i.cx)
  %i.cz = fdiv fast float 1.000000e+00, %i.cy
  %i.da = bitcast float %i.cz to i32
  %i.db = lshr i32 %i.da, 16
  %i.dc = trunc nuw i32 %i.db to i16
  store i16 %i.dc, ptr %.12642, align 2, !tbaa !51
  %i.dd = getelementptr inbounds nuw i8, ptr %.12642, i64 2
  %i.de = add nuw nsw i32 %.143, 1                ; 2 uses
  %exitcond54.not = icmp eq i32 %i.de, %i.bj
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
  %i.cc = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cb, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cd = bitcast <8 x i16> %i.cc to <4 x float>
  %i.ce = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.cd, <4 x float> splat (float f0x42B0C0A5))
  %i.cf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ce, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.cg = fmul fast <4 x float> %i.cf, splat (float f0x3FB8AA3B)
end_hunk_0
