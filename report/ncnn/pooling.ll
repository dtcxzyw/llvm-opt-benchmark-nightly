inline.NumInlined: 38
inline.NumDeleted: 30
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZNK4ncnn7Pooling7forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.2:bb.a
  %factor.op.mul = mul i64 %i.n, %i.p
  %i.q = load ptr, ptr %4, align 8, !tbaa !51, !noalias !89
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.s = load i64, ptr %i.r, align 8, !tbaa !52, !noalias !89
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !48, !noalias !89
  %factor.op.mul106 = mul i64 %i.s, %i.u
  %i.v = load i32, ptr %5, align 4, !tbaa !45     ; 5 uses
  %i.w = icmp sgt i32 %i.v, 0
  %i.x = add i32 %i.v, -1
  br i1 %i.w, label %.noexc.lr.ph.split, label %._crit_edge105.split

.noexc.lr.ph.split:                               ; preds = %.noexc.lr.ph
  %i.y = load i32, ptr %6, align 4, !tbaa !45     ; 2 uses
  %i.z = load i32, ptr %7, align 4, !tbaa !45     ; 11 uses
  %i.aa = icmp sgt i32 %i.z, 0
  %i.ab = add i32 %i.z, -1
  %i.ac = sext i32 %i.z to i64
  br i1 %i.aa, label %.noexc.lr.ph.split.split, label %._crit_edge105.split

.noexc.lr.ph.split.split:                         ; preds = %.noexc.lr.ph.split
  %i.ad = load i32, ptr %8, align 4, !tbaa !45    ; 7 uses
  %i.ae = sext i32 %i.ad to i64
  %i.af = sext i32 %i.k to i64
  %i.ag = add nsw i32 %i.j, 1
  %wide.trip.count125 = zext nneg i32 %i.z to i64 ; 3 uses
  %xtraiter = and i64 %wide.trip.count125, 1
  %i.ah = icmp eq i32 %i.z, 1
  %unroll_iter = and i64 %wide.trip.count125, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod148 = trunc i32 %i.z to i1
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph.split.split, %._crit_edge102
  %indvars.iv128 = phi i64 [ %i.af, %.noexc.lr.ph.split.split ], [ %indvars.iv.next129, %._crit_edge102 ] ; 3 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv128
  %i.ai = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass ; 5 uses
  %.reass107 = mul i64 %factor.op.mul106, %indvars.iv128
  %i.aj = getelementptr inbounds nuw i8, ptr %i.q, i64 %.reass107
  br label %.lr.ph

._crit_edge102:                                   ; preds = %._crit_edge
  %indvars.iv.next129 = add nsw i64 %indvars.iv128, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next129 to i32
  %exitcond131.not = icmp eq i32 %i.ag, %lftr.wideiv
  br i1 %exitcond131.not, label %._crit_edge105.split, label %.noexc

.lr.ph:                                           ; preds = %.noexc, %._crit_edge
  %.047100 = phi i32 [ 0, %.noexc ], [ %i.am, %._crit_edge ] ; 2 uses
  %.04898 = phi ptr [ %i.aj, %.noexc ], [ %i.by, %._crit_edge ] ; 5 uses
  %i.ak = mul nsw i32 %i.y, %.047100
  %i.al = sdiv i32 %i.ak, %i.v                    ; 3 uses
  %i.am = add nuw nsw i32 %.047100, 1             ; 3 uses
  %i.an = mul nsw i32 %i.y, %i.am
  %i.ao = add i32 %i.x, %i.an
  %i.ap = sdiv i32 %i.ao, %i.v                    ; 2 uses
  %i.aq = mul nsw i32 %i.ad, %i.al                ; 4 uses
  %i.ar = icmp slt i32 %i.al, %i.ap
  br i1 %i.ar, label %.preheader.lr.ph.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  br i1 %i.ah, label %.lr.ph.split.epil.preheader, label %.lr.ph.split

.preheader.lr.ph.us.preheader:                    ; preds = %.lr.ph
  %i.as = sext i32 %i.al to i64
  %wide.trip.count120 = sext i32 %i.ap to i64
  br label %.preheader.lr.ph.us

.preheader.lr.ph.us:                              ; preds = %.preheader.lr.ph.us.preheader, %._crit_edge89.us
  %indvars.iv122 = phi i64 [ 0, %.preheader.lr.ph.us.preheader ], [ %indvars.iv.next123, %._crit_edge89.us ] ; 3 uses
  %i.at = trunc i64 %indvars.iv122 to i32
  %i.au = mul i32 %i.ad, %i.at
  %i.av = sdiv i32 %i.au, %i.z                    ; 3 uses
  %indvars.iv.next123 = add nuw nsw i64 %indvars.iv122, 1 ; 3 uses
  %i.aw = trunc i64 %indvars.iv.next123 to i32
  %i.ax = mul i32 %i.ad, %i.aw
  %i.ay = add i32 %i.ab, %i.ax
  %i.az = sdiv i32 %i.ay, %i.z                    ; 2 uses
  %i.ba = add nsw i32 %i.aq, %i.av
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.bb
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !73 ; 2 uses
  %i.be = icmp slt i32 %i.av, %i.az
  br i1 %i.be, label %.preheader.us.us.preheader, label %._crit_edge89.us

.preheader.us.us.preheader:                       ; preds = %.preheader.lr.ph.us
  %i.bf = sext i32 %i.av to i64                   ; 4 uses
  %wide.trip.count115 = sext i32 %i.az to i64     ; 2 uses
  %i.bg = sub nsw i64 %wide.trip.count115, %i.bf  ; 3 uses
  %min.iters.check = icmp ult i64 %i.bg, 8
  %n.vec = and i64 %i.bg, -8                      ; 3 uses
  %i.bh = add nsw i64 %n.vec, %i.bf
  %cmp.n = icmp eq i64 %i.bg, %n.vec
  br label %.preheader.us.us

._crit_edge89.us:                                 ; preds = %._crit_edge.us.us, %.preheader.lr.ph.us
  %.us-phi.us = phi float [ %i.bd, %.preheader.lr.ph.us ], [ %.sroa.speculated.us.us.lcssa, %._crit_edge.us.us ]
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %.04898, i64 %indvars.iv122
  store float %.us-phi.us, ptr %i.bi, align 4, !tbaa !73
  %exitcond126.not = icmp eq i64 %indvars.iv.next123, %wide.trip.count125
  br i1 %exitcond126.not, label %._crit_edge, label %.preheader.lr.ph.us, !llvm.loop !92

.preheader.us.us:                                 ; preds = %.preheader.us.us.preheader, %._crit_edge.us.us
  %indvars.iv117 = phi i64 [ %i.as, %.preheader.us.us.preheader ], [ %indvars.iv.next118, %._crit_edge.us.us ] ; 2 uses
  %.08487.us.us = phi float [ %i.bd, %.preheader.us.us.preheader ], [ %.sroa.speculated.us.us.lcssa, %._crit_edge.us.us ] ; 2 uses
  %i.bj = mul nsw i64 %indvars.iv117, %i.ae
  %invariant.gep = getelementptr [4 x i8], ptr %i.ai, i64 %i.bj ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.us.us
  %broadcast.splatinsert = insertelement <4 x float> poison, float %.08487.us.us, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep151 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.bf
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x float> [ %broadcast.splat, %vector.ph ], [ %i.bl, %vector.body ]
  %vec.phi143 = phi <4 x float> [ %broadcast.splat, %vector.ph ], [ %i.bm, %vector.body ]
  %gep152 = getelementptr [4 x i8], ptr %invariant.gep151, i64 %index ; 2 uses
  %i.bk = getelementptr i8, ptr %gep152, i64 16
  %wide.load = load <4 x float>, ptr %gep152, align 4, !tbaa !73
  %wide.load144 = load <4 x float>, ptr %i.bk, align 4, !tbaa !73
  %i.bl = call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %vec.phi, <4 x float> %wide.load) ; 2 uses
  %i.bm = call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %vec.phi143, <4 x float> %wide.load144) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bn = icmp eq i64 %index.next, %n.vec
  br i1 %i.bn, label %middle.block, label %vector.body, !llvm.loop !93

middle.block:                                     ; preds = %vector.body
  %rdx.minmax.select = call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.bl, <4 x float> %i.bm)
  %i.bo = call nnan ninf nsz float @llvm.vector.reduce.fmax.v4f32(<4 x float> %rdx.minmax.select) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us.us, %middle.block
  %indvars.iv112.ph = phi i64 [ %i.bf, %.preheader.us.us ], [ %i.bh, %middle.block ]
  %.185.us.us.ph = phi float [ %.08487.us.us, %.preheader.us.us ], [ %i.bo, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv112 = phi i64 [ %indvars.iv.next113, %scalar.ph ], [ %indvars.iv112.ph, %scalar.ph.preheader ] ; 2 uses
  %.185.us.us = phi float [ %.sroa.speculated.us.us, %scalar.ph ], [ %.185.us.us.ph, %scalar.ph.preheader ]
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv112
  %i.bp = load float, ptr %gep, align 4, !tbaa !73
  %.sroa.speculated.us.us = call nnan ninf nsz float @llvm.maxnum.f32(float %.185.us.us, float %i.bp) ; 2 uses
  %indvars.iv.next113 = add nsw i64 %indvars.iv112, 1 ; 2 uses
  %exitcond116.not = icmp eq i64 %indvars.iv.next113, %wide.trip.count115
  br i1 %exitcond116.not, label %._crit_edge.us.us, label %scalar.ph, !llvm.loop !94

._crit_edge.us.us:                                ; preds = %scalar.ph, %middle.block
  %.sroa.speculated.us.us.lcssa = phi float [ %i.bo, %middle.block ], [ %.sroa.speculated.us.us, %scalar.ph ] ; 2 uses
  %indvars.iv.next118 = add nsw i64 %indvars.iv117, 1 ; 2 uses
  %exitcond121.not = icmp eq i64 %indvars.iv.next118, %wide.trip.count120
  br i1 %exitcond121.not, label %._crit_edge89.us, label %.preheader.us.us, !llvm.loop !95

._crit_edge.loopexit145.unr-lcssa:                ; preds = %.lr.ph.split
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.split.epil.preheader

.lr.ph.split.epil.preheader:                      ; preds = %._crit_edge.loopexit145.unr-lcssa, %.lr.ph.split.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit145.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod148)
  %i.bq = trunc i64 %indvars.iv.epil.init to i32
  %i.br = mul i32 %i.ad, %i.bq
  %i.bs = sdiv i32 %i.br, %i.z
  %i.bt = add nsw i32 %i.aq, %i.bs
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.bu
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !73
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %.04898, i64 %indvars.iv.epil.init
  store float %i.bw, ptr %i.bx, align 4, !tbaa !73
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.split.epil.preheader, %._crit_edge.loopexit145.unr-lcssa, %._crit_edge89.us
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %.04898, i64 %i.ac
  %exitcond127.not = icmp eq i32 %i.am, %i.v
  br i1 %exitcond127.not, label %._crit_edge102, label %.lr.ph, !llvm.loop !96

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %.lr.ph.split
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.split ], [ 0, %.lr.ph.split.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph.split ], [ 0, %.lr.ph.split.preheader ]
  %i.bz = trunc i64 %indvars.iv to i32
  %i.ca = mul i32 %i.ad, %i.bz
  %i.cb = sdiv i32 %i.ca, %i.z
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.cc = add nsw i32 %i.aq, %i.cb
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.cd
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !73
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %.04898, i64 %indvars.iv
  store float %i.cf, ptr %i.cg, align 4, !tbaa !73
  %i.ch = trunc i64 %indvars.iv.next to i32
  %i.ci = mul i32 %i.ad, %i.ch
  %i.cj = sdiv i32 %i.ci, %i.z
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ck = add nsw i32 %i.aq, %i.cj
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.cl
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !73
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %.04898, i64 %indvars.iv.next
  store float %i.cn, ptr %i.co, align 4, !tbaa !73
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit145.unr-lcssa, label %.lr.ph.split, !llvm.loop !92

._crit_edge105.split:                             ; preds = %._crit_edge102, %.noexc.lr.ph, %.noexc.lr.ph.split, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge105.split, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn7Pooling7forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.3(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !45     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !45
  %i.h = load i32, ptr %0, align 4, !tbaa !45     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !45
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !45
  %i.k = load i32, ptr %i.a, align 4, !tbaa !45   ; 2 uses
  %.not108 = icmp sgt i32 %i.k, %i.j
  br i1 %.not108, label %._crit_edge110.split, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !51, !noalias !97
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !52, !noalias !97
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !48, !noalias !97
  %factor.op.mul = mul i64 %i.n, %i.p
  %i.q = load ptr, ptr %4, align 8, !tbaa !51, !noalias !100
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.s = load i64, ptr %i.r, align 8, !tbaa !52, !noalias !100
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !48, !noalias !100
  %factor.op.mul111 = mul i64 %i.s, %i.u
  %i.v = load i32, ptr %5, align 4, !tbaa !45     ; 5 uses
  %i.w = icmp sgt i32 %i.v, 0
  %i.x = add i32 %i.v, -1
  br i1 %i.w, label %.noexc.lr.ph.split, label %._crit_edge110.split

.noexc.lr.ph.split:                               ; preds = %.noexc.lr.ph
  %i.y = load i32, ptr %6, align 4, !tbaa !45     ; 2 uses
  %i.z = load i32, ptr %7, align 4, !tbaa !45     ; 6 uses
  %i.aa = icmp sgt i32 %i.z, 0
  %i.ab = add i32 %i.z, -1
  %i.ac = sext i32 %i.z to i64
  br i1 %i.aa, label %.noexc.lr.ph.split.split, label %._crit_edge110.split

.noexc.lr.ph.split.split:                         ; preds = %.noexc.lr.ph.split
  %i.ad = load i32, ptr %8, align 4, !tbaa !45    ; 3 uses
  %i.ae = zext nneg i32 %i.z to i64               ; 2 uses
  %i.af = shl nuw nsw i64 %i.ae, 2
  %i.ag = sext i32 %i.ad to i64
  %i.ah = sext i32 %i.k to i64
  %i.ai = add nsw i32 %i.j, 1
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph.split.split, %._crit_edge107
  %indvars.iv129 = phi i64 [ %i.ah, %.noexc.lr.ph.split.split ], [ %indvars.iv.next130, %._crit_edge107 ] ; 3 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv129
  %i.aj = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass
  %.reass112 = mul i64 %factor.op.mul111, %indvars.iv129
  %i.ak = getelementptr i8, ptr %i.q, i64 %.reass112
  br label %.lr.ph

._crit_edge107:                                   ; preds = %._crit_edge
  %indvars.iv.next130 = add nsw i64 %indvars.iv129, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next130 to i32
  %exitcond132.not = icmp eq i32 %i.ai, %lftr.wideiv
  br i1 %exitcond132.not, label %._crit_edge110.split, label %.noexc

.lr.ph:                                           ; preds = %.noexc, %._crit_edge
  %.053105 = phi i32 [ 0, %.noexc ], [ %i.an, %._crit_edge ] ; 2 uses
  %.054103 = phi ptr [ %i.ak, %.noexc ], [ %i.bu, %._crit_edge ] ; 3 uses
  %i.al = mul nsw i32 %i.y, %.053105
  %i.am = sdiv i32 %i.al, %i.v                    ; 3 uses
  %i.an = add nuw nsw i32 %.053105, 1             ; 3 uses
  %i.ao = mul nsw i32 %i.y, %i.an
  %i.ap = add i32 %i.x, %i.ao
  %i.aq = sdiv i32 %i.ap, %i.v                    ; 3 uses
  %i.ar = sub nsw i32 %i.aq, %i.am
  %i.as = icmp slt i32 %i.am, %i.aq
  %i.at = sitofp fast i32 %i.ar to float
  br i1 %i.as, label %.preheader.lr.ph.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  call void @llvm.memset.p0.i64(ptr align 4 %.054103, i8 0, i64 %i.af, i1 false), !tbaa !73
  br label %._crit_edge

.preheader.lr.ph.us.preheader:                    ; preds = %.lr.ph
  %i.au = sext i32 %i.am to i64
  %wide.trip.count121 = sext i32 %i.aq to i64
  br label %.preheader.lr.ph.us

.preheader.lr.ph.us:                              ; preds = %.preheader.lr.ph.us.preheader, %._crit_edge94.us
  %indvars.iv123 = phi i64 [ 0, %.preheader.lr.ph.us.preheader ], [ %indvars.iv.next124, %._crit_edge94.us ] ; 3 uses
  %i.av = trunc i64 %indvars.iv123 to i32
  %i.aw = mul i32 %i.ad, %i.av
  %i.ax = sdiv i32 %i.aw, %i.z                    ; 3 uses
  %indvars.iv.next124 = add nuw nsw i64 %indvars.iv123, 1 ; 3 uses
  %i.ay = trunc i64 %indvars.iv.next124 to i32
  %i.az = mul i32 %i.ad, %i.ay
  %i.ba = add i32 %i.ab, %i.az
  %i.bb = sdiv i32 %i.ba, %i.z                    ; 3 uses
  %i.bc = sub nsw i32 %i.bb, %i.ax
  %i.bd = icmp slt i32 %i.ax, %i.bb
  br i1 %i.bd, label %.preheader.us.us.preheader, label %._crit_edge94.us

.preheader.us.us.preheader:                       ; preds = %.preheader.lr.ph.us
  %i.be = sext i32 %i.ax to i64                   ; 4 uses
  %wide.trip.count = sext i32 %i.bb to i64        ; 2 uses
  %i.bf = sub nsw i64 %wide.trip.count, %i.be     ; 3 uses
  %min.iters.check = icmp ult i64 %i.bf, 8
  %n.vec = and i64 %i.bf, -8                      ; 3 uses
  %i.bg = add nsw i64 %n.vec, %i.be
  %cmp.n = icmp eq i64 %i.bf, %n.vec
  br label %.preheader.us.us

._crit_edge94.us:                                 ; preds = %._crit_edge.us.us, %.preheader.lr.ph.us
  %.us-phi.us = phi float [ 0.000000e+00, %.preheader.lr.ph.us ], [ %.lcssa, %._crit_edge.us.us ]
  %i.bh = sitofp fast i32 %i.bc to float
  %i.bi = fmul fast float %i.bh, %i.at
  %i.bj = fdiv fast float %.us-phi.us, %i.bi
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %.054103, i64 %indvars.iv123
  store float %i.bj, ptr %i.bk, align 4, !tbaa !73
  %exitcond127.not = icmp eq i64 %indvars.iv.next124, %i.ae
  br i1 %exitcond127.not, label %._crit_edge, label %.preheader.lr.ph.us, !llvm.loop !103

.preheader.us.us:                                 ; preds = %.preheader.us.us.preheader, %._crit_edge.us.us
  %indvars.iv118 = phi i64 [ %i.au, %.preheader.us.us.preheader ], [ %indvars.iv.next119, %._crit_edge.us.us ] ; 2 uses
  %.05192.us.us = phi float [ 0.000000e+00, %.preheader.us.us.preheader ], [ %.lcssa, %._crit_edge.us.us ] ; 2 uses
  %i.bl = mul nsw i64 %indvars.iv118, %i.ag
  %invariant.gep = getelementptr [4 x i8], ptr %i.aj, i64 %i.bl ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.us.us
  %i.bm = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.05192.us.us, i64 0
  %invariant.gep150 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.be
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x float> [ %i.bm, %vector.ph ], [ %i.bo, %vector.body ]
  %vec.phi142 = phi <4 x float> [ zeroinitializer, %vector.ph ], [ %i.bp, %vector.body ]
  %gep151 = getelementptr [4 x i8], ptr %invariant.gep150, i64 %index ; 2 uses
  %i.bn = getelementptr i8, ptr %gep151, i64 16
  %wide.load = load <4 x float>, ptr %gep151, align 4, !tbaa !73
  %wide.load143 = load <4 x float>, ptr %i.bn, align 4, !tbaa !73
  %i.bo = fadd fast <4 x float> %wide.load, %vec.phi ; 2 uses
  %i.bp = fadd fast <4 x float> %wide.load143, %vec.phi142 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bq = icmp eq i64 %index.next, %n.vec
  br i1 %i.bq, label %middle.block, label %vector.body, !llvm.loop !104

middle.block:                                     ; preds = %vector.body
  %bin.rdx = fadd fast <4 x float> %i.bp, %i.bo
  %i.br = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us.us, %middle.block
  %indvars.iv.ph = phi i64 [ %i.be, %.preheader.us.us ], [ %i.bg, %middle.block ]
  %.190.us.us.ph = phi float [ %.05192.us.us, %.preheader.us.us ], [ %i.br, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.190.us.us = phi float [ %i.bt, %scalar.ph ], [ %.190.us.us.ph, %scalar.ph.preheader ]
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.bs = load float, ptr %gep, align 4, !tbaa !73
  %i.bt = fadd fast float %i.bs, %.190.us.us      ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us.us, label %scalar.ph, !llvm.loop !105

._crit_edge.us.us:                                ; preds = %scalar.ph, %middle.block
  %.lcssa = phi float [ %i.br, %middle.block ], [ %i.bt, %scalar.ph ] ; 2 uses
  %indvars.iv.next119 = add nsw i64 %indvars.iv118, 1 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNK4ncnn7Pooling12make_paddingERKNS_3MatERS1_RKNS_6OptionE:bb.a
  %i.dz = icmp sgt i32 %i.dx, 0
  %or.cond3 = select i1 %i.dy, i1 true, i1 %i.dz
  br i1 %or.cond3, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull align 8 dereferenceable(64) %3, i64 64, i1 false), !tbaa.struct !108
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !112
  %i.ec = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.eb, ptr %i.ec, align 8, !tbaa !49
  %i.ed = sdiv i32 %i.dx, 2                       ; 2 uses
  %i.ee = sub nsw i32 %i.dx, %i.ed
  %i.ef = sdiv i32 %i.dp, 2                       ; 2 uses
  %i.eg = sub nsw i32 %i.dp, %i.ef
  call void @_ZN4ncnn16copy_make_borderERKNS_3MatERS0_iiiiifRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.ee, i32 noundef %i.ed, i32 noundef %i.eg, i32 noundef %i.ef, i32 noundef 0, float noundef nofpclass(nan inf) %.061, ptr noundef nonnull align 8 dereferenceable(64) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #6
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.k, %bb.o, %bb.n, %bb.m, %bb.l
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn7Pooling7forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.4(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef readonly captures(none) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %9) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !45     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !45
  %i.h = load i32, ptr %0, align 4, !tbaa !45     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !45
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !45
  %i.k = load i32, ptr %i.a, align 4, !tbaa !45   ; 3 uses
  %.not80 = icmp sgt i32 %i.k, %i.j
  br i1 %.not80, label %._crit_edge.split, label %.noexc40.lr.ph

.noexc40.lr.ph:                                   ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = load i32, ptr %i.l, align 4, !tbaa !42, !noalias !113
  %i.n = load ptr, ptr %3, align 8, !tbaa !51, !noalias !113 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.p = load i64, ptr %i.o, align 8, !tbaa !52, !noalias !113 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !48, !noalias !113 ; 5 uses
  %factor.op.mul = mul i64 %i.p, %i.r             ; 2 uses
  %i.s = sext i32 %i.m to i64                     ; 2 uses
  %i.t = load ptr, ptr %4, align 8, !tbaa !51, !noalias !116 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.v = load i64, ptr %i.u, align 8, !tbaa !52, !noalias !116 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !48, !noalias !116 ; 3 uses
  %factor.op.mul82 = mul i64 %i.v, %i.x           ; 2 uses
  %i.y = load i32, ptr %5, align 4, !tbaa !45     ; 3 uses
  %i.z = icmp sgt i32 %i.y, 0
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 224
  %i.ab = mul i64 %i.r, %i.s                      ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 220
  br i1 %i.z, label %.noexc40.lr.ph.split, label %._crit_edge.split

.noexc40.lr.ph.split:                             ; preds = %.noexc40.lr.ph
  %i.ad = load i32, ptr %6, align 4, !tbaa !45    ; 5 uses
  %i.ae = icmp sgt i32 %i.ad, 0
  %i.af = sext i32 %i.ad to i64                   ; 3 uses
  br i1 %i.ae, label %.noexc40.lr.ph.split.split, label %._crit_edge.split

.noexc40.lr.ph.split.split:                       ; preds = %.noexc40.lr.ph.split
  %i.ag = load i32, ptr %i.aa, align 8, !tbaa !31 ; 2 uses
  %i.ah = load i32, ptr %i.ac, align 4, !tbaa !30 ; 3 uses
  %i.ai = load i32, ptr %8, align 4, !tbaa !45    ; 3 uses
  %i.aj = icmp sgt i32 %i.ai, 0
  br i1 %i.aj, label %.noexc40.lr.ph.split.split.split.us, label %.noexc40.preheader

.noexc40.preheader:                               ; preds = %.noexc40.lr.ph.split.split
  %i.ak = sext i32 %i.ah to i64                   ; 5 uses
  %i.al = sext i32 %i.ag to i64                   ; 2 uses
  %i.am = sext i32 %i.k to i64                    ; 4 uses
  %i.an = add nsw i32 %i.j, 1
  %wide.trip.count92 = zext nneg i32 %i.y to i64  ; 2 uses
  %factor.op.mul124 = mul i64 %i.ab, %i.al        ; 2 uses
  %wide.trip.count = zext nneg i32 %i.ad to i64   ; 6 uses
  %i.ao = mul i64 %i.v, %i.x
  %i.ap = mul i64 %i.ao, %i.am                    ; 2 uses
  %i.aq = mul i64 %i.v, %i.x
  %i.ar = add nsw i64 %wide.trip.count92, -1      ; 2 uses
  %i.as = mul nsw i64 %i.ar, %i.af
  %i.at = shl i64 %i.as, 2
  %i.au = shl nuw nsw i64 %wide.trip.count, 2     ; 2 uses
  %i.av = mul i64 %i.p, %i.r
  %i.aw = mul i64 %i.av, %i.am
  %i.ax = mul i64 %i.p, %i.r
  %i.ay = mul nsw i64 %i.ar, %i.s
  %i.az = mul i64 %i.ay, %i.al
  %i.ba = mul i64 %i.p, %i.am
  %i.bb = add i64 %i.az, %i.ba
  %i.bc = mul i64 %i.r, %i.bb
  %i.bd = getelementptr i8, ptr %i.t, i64 %i.ap
  %i.be = getelementptr i8, ptr %i.t, i64 %i.ap
  %i.bf = getelementptr i8, ptr %i.be, i64 %i.at
  %i.bg = getelementptr i8, ptr %i.bf, i64 %i.au
  %i.bh = getelementptr i8, ptr %i.n, i64 %i.aw
  %i.bi = getelementptr i8, ptr %i.n, i64 %i.bc
  %i.bj = getelementptr i8, ptr %i.bi, i64 %i.au
  %min.iters.check = icmp ugt i32 %i.ad, 7
  %ident.check.not = icmp eq i32 %i.ah, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %stride.check = icmp slt i64 %factor.op.mul124, 0
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.noexc40

.noexc40.lr.ph.split.split.split.us:              ; preds = %.noexc40.lr.ph.split.split
  %i.bk = load ptr, ptr %9, align 8, !tbaa !61    ; 5 uses
  %i.bl = sext i32 %i.ah to i64
  %i.bm = sext i32 %i.ag to i64
  %i.bn = sext i32 %i.k to i64
  %i.bo = add nsw i32 %i.j, 1
  %wide.trip.count111 = zext nneg i32 %i.y to i64
  %factor.op.mul126 = mul i64 %i.ab, %i.bm
  %wide.trip.count106 = zext nneg i32 %i.ad to i64
  %wide.trip.count101 = zext nneg i32 %i.ai to i64 ; 2 uses
  %xtraiter134 = and i64 %wide.trip.count101, 3   ; 3 uses
  %i.bp = icmp ult i32 %i.ai, 4
  %unroll_iter = and i64 %wide.trip.count101, 2147483644
  %lcmp.mod135.not = icmp eq i64 %xtraiter134, 0
  %lcmp.mod137 = icmp ne i64 %xtraiter134, 0
  br label %.noexc40.us

.noexc40.us:                                      ; preds = %._ZN4ncnn3MatD2Ev.exit_crit_edge.split79.us.us, %.noexc40.lr.ph.split.split.split.us
  %indvars.iv113 = phi i64 [ %indvars.iv.next114, %._ZN4ncnn3MatD2Ev.exit_crit_edge.split79.us.us ], [ %i.bn, %.noexc40.lr.ph.split.split.split.us ] ; 3 uses
  %.reass.us = mul i64 %factor.op.mul, %indvars.iv113
  %i.bq = getelementptr inbounds nuw i8, ptr %i.n, i64 %.reass.us
  %.reass83.us = mul i64 %factor.op.mul82, %indvars.iv113
  %i.br = getelementptr inbounds nuw i8, ptr %i.t, i64 %.reass83.us
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %._crit_edge73.split.us.us.us, %.noexc40.us
  %indvars.iv108 = phi i64 [ %indvars.iv.next109, %._crit_edge73.split.us.us.us ], [ 0, %.noexc40.us ] ; 2 uses
  %.03675.us.us = phi ptr [ %i.cz, %._crit_edge73.split.us.us.us ], [ %i.br, %.noexc40.us ] ; 2 uses
  %.reass127 = mul i64 %indvars.iv108, %factor.op.mul126
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.reass127
  br label %.lr.ph.us.us.us

.lr.ph.us.us.us:                                  ; preds = %._crit_edge.us.us.us, %.preheader.us.us
  %indvars.iv103 = phi i64 [ %indvars.iv.next104, %._crit_edge.us.us.us ], [ 0, %.preheader.us.us ] ; 3 uses
  %i.bt = mul nsw i64 %indvars.iv103, %i.bl
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %i.bt ; 6 uses
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !73 ; 2 uses
  br i1 %i.bp, label %.epil.preheader, label %.lr.ph.us.us.us.new

.lr.ph.us.us.us.new:                              ; preds = %.lr.ph.us.us.us, %.lr.ph.us.us.us.new
  %indvars.iv98 = phi i64 [ %indvars.iv.next99.3, %.lr.ph.us.us.us.new ], [ 0, %.lr.ph.us.us.us ] ; 5 uses
  %.06869.us.us.us = phi float [ %.sroa.speculated.us.us.us.3, %.lr.ph.us.us.us.new ], [ %i.bv, %.lr.ph.us.us.us ]
  %niter = phi i64 [ %niter.next.3, %.lr.ph.us.us.us.new ], [ 0, %.lr.ph.us.us.us ]
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %indvars.iv98
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !45
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr inbounds [4 x i8], ptr %i.bu, i64 %i.by
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !73
  %.sroa.speculated.us.us.us = call nnan ninf nsz float @llvm.maxnum.f32(float %.06869.us.us.us, float %i.ca)
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %indvars.iv98
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !45
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr inbounds [4 x i8], ptr %i.bu, i64 %i.ce
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !73
  %.sroa.speculated.us.us.us.1 = call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated.us.us.us, float %i.cg)
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %indvars.iv98
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !45
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.bu, i64 %i.ck
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !73
  %.sroa.speculated.us.us.us.2 = call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated.us.us.us.1, float %i.cm)
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %indvars.iv98
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 12
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !45
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.bu, i64 %i.cq
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !73
  %.sroa.speculated.us.us.us.3 = call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated.us.us.us.2, float %i.cs) ; 3 uses
  %indvars.iv.next99.3 = add nuw nsw i64 %indvars.iv98, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.us.us.unr-lcssa, label %.lr.ph.us.us.us.new, !llvm.loop !119

._crit_edge.us.us.us.unr-lcssa:                   ; preds = %.lr.ph.us.us.us.new
  br i1 %lcmp.mod135.not, label %._crit_edge.us.us.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.us.us.unr-lcssa, %.lr.ph.us.us.us
  %indvars.iv98.epil.init = phi i64 [ 0, %.lr.ph.us.us.us ], [ %indvars.iv.next99.3, %._crit_edge.us.us.us.unr-lcssa ]
  %.06869.us.us.us.epil.init = phi float [ %i.bv, %.lr.ph.us.us.us ], [ %.sroa.speculated.us.us.us.3, %._crit_edge.us.us.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod137)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv98.epil = phi i64 [ %indvars.iv.next99.epil, %bb.c ], [ %indvars.iv98.epil.init, %.epil.preheader ] ; 2 uses
  %.06869.us.us.us.epil = phi float [ %.sroa.speculated.us.us.us.epil, %bb.c ], [ %.06869.us.us.us.epil.init, %.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %bb.c ], [ 0, %.epil.preheader ]
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %indvars.iv98.epil
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !45
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.bu, i64 %i.cv
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !73
  %.sroa.speculated.us.us.us.epil = call nnan ninf nsz float @llvm.maxnum.f32(float %.06869.us.us.us.epil, float %i.cx) ; 2 uses
  %indvars.iv.next99.epil = add nuw nsw i64 %indvars.iv98.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter134
  br i1 %epil.iter.cmp.not, label %._crit_edge.us.us.us, label %bb.c, !llvm.loop !120

._crit_edge.us.us.us:                             ; preds = %bb.c, %._crit_edge.us.us.us.unr-lcssa
  %.sroa.speculated.us.us.us.lcssa = phi float [ %.sroa.speculated.us.us.us.3, %._crit_edge.us.us.us.unr-lcssa ], [ %.sroa.speculated.us.us.us.epil, %bb.c ]
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %.03675.us.us, i64 %indvars.iv103
  store float %.sroa.speculated.us.us.us.lcssa, ptr %i.cy, align 4, !tbaa !73
  %indvars.iv.next104 = add nuw nsw i64 %indvars.iv103, 1 ; 2 uses
  %exitcond107.not = icmp eq i64 %indvars.iv.next104, %wide.trip.count106
  br i1 %exitcond107.not, label %._crit_edge73.split.us.us.us, label %.lr.ph.us.us.us, !llvm.loop !121

._crit_edge73.split.us.us.us:                     ; preds = %._crit_edge.us.us.us
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %.03675.us.us, i64 %i.af
  %indvars.iv.next109 = add nuw nsw i64 %indvars.iv108, 1 ; 2 uses
  %exitcond112.not = icmp eq i64 %indvars.iv.next109, %wide.trip.count111
  br i1 %exitcond112.not, label %._ZN4ncnn3MatD2Ev.exit_crit_edge.split79.us.us, label %.preheader.us.us, !llvm.loop !122

._ZN4ncnn3MatD2Ev.exit_crit_edge.split79.us.us:   ; preds = %._crit_edge73.split.us.us.us
  %indvars.iv.next114 = add nsw i64 %indvars.iv113, 1 ; 2 uses
  %lftr.wideiv116 = trunc i64 %indvars.iv.next114 to i32
  %exitcond117.not = icmp eq i32 %i.bo, %lftr.wideiv116
  br i1 %exitcond117.not, label %._crit_edge.split, label %.noexc40.us

.noexc40:                                         ; preds = %.noexc40.preheader, %._ZN4ncnn3MatD2Ev.exit_crit_edge.split79
  %indvar = phi i64 [ 0, %.noexc40.preheader ], [ %indvar.next, %._ZN4ncnn3MatD2Ev.exit_crit_edge.split79 ] ; 3 uses
  %indvars.iv94 = phi i64 [ %i.am, %.noexc40.preheader ], [ %indvars.iv.next95, %._ZN4ncnn3MatD2Ev.exit_crit_edge.split79 ] ; 3 uses
  %i.da = mul i64 %i.aq, %indvar                  ; 2 uses
  %scevgep = getelementptr i8, ptr %i.bd, i64 %i.da
  %scevgep129 = getelementptr i8, ptr %i.bg, i64 %i.da
  %i.db = mul i64 %i.ax, %indvar                  ; 2 uses
  %scevgep130 = getelementptr i8, ptr %i.bh, i64 %i.db
  %scevgep131 = getelementptr i8, ptr %i.bj, i64 %i.db
  %.reass = mul i64 %factor.op.mul, %indvars.iv94
  %i.dc = getelementptr inbounds nuw i8, ptr %i.n, i64 %.reass
  %.reass83 = mul i64 %factor.op.mul82, %indvars.iv94
  %i.dd = getelementptr inbounds nuw i8, ptr %i.t, i64 %.reass83
  %bound0 = icmp ult ptr %scevgep, %scevgep131
  %bound1 = icmp ult ptr %scevgep130, %scevgep129
  %found.conflict = and i1 %bound0, %bound1
  %i.de = or i1 %found.conflict, %stride.check
  br label %.preheader

.preheader:                                       ; preds = %.noexc40, %._crit_edge73.split
  %indvars.iv89 = phi i64 [ 0, %.noexc40 ], [ %indvars.iv.next90, %._crit_edge73.split ] ; 2 uses
  %.03675 = phi ptr [ %i.dd, %.noexc40 ], [ %i.dr, %._crit_edge73.split ] ; 7 uses
  %.reass125 = mul i64 %indvars.iv89, %factor.op.mul124
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 %.reass125 ; 6 uses
  %or.cond.not = xor i1 %or.cond, true
  %brmerge = select i1 %or.cond.not, i1 true, i1 %i.de
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader ] ; 3 uses
  %i.dg = getelementptr inbounds [4 x i8], ptr %i.df, i64 %index ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %wide.load = load <4 x float>, ptr %i.dg, align 4, !tbaa !73, !alias.scope !123
  %wide.load132 = load <4 x float>, ptr %i.dh, align 4, !tbaa !73, !alias.scope !123
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %.03675, i64 %index ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  store <4 x float> %wide.load, ptr %i.di, align 4, !tbaa !73, !alias.scope !126, !noalias !123
  store <4 x float> %wide.load132, ptr %i.dj, align 4, !tbaa !73, !alias.scope !126, !noalias !123
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dk = icmp eq i64 %index.next, %n.vec
  br i1 %i.dk, label %middle.block, label %vector.body, !llvm.loop !128

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge73.split, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.dl = mul nsw i64 %indvars.iv.prol, %i.ak
  %i.dm = getelementptr inbounds [4 x i8], ptr %i.df, i64 %i.dl
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !73
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %.03675, i64 %indvars.iv.prol
  store float %i.dn, ptr %i.do, align 4, !tbaa !73
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !129

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.dp = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.dq = icmp ugt i64 %i.dp, -4
  br i1 %i.dq, label %._crit_edge73.split, label %scalar.ph

._ZN4ncnn3MatD2Ev.exit_crit_edge.split79:         ; preds = %._crit_edge73.split
  %indvars.iv.next95 = add nsw i64 %indvars.iv94, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next95 to i32
  %exitcond97.not = icmp eq i32 %i.an, %lftr.wideiv
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond97.not, label %._crit_edge.split, label %.noexc40

._crit_edge73.split:                              ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %.03675, i64 %i.af
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1 ; 2 uses
  %exitcond93.not = icmp eq i64 %indvars.iv.next90, %wide.trip.count92
  br i1 %exitcond93.not, label %._ZN4ncnn3MatD2Ev.exit_crit_edge.split79, label %.preheader, !llvm.loop !122

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ds = mul nsw i64 %indvars.iv, %i.ak
  %i.dt = getelementptr inbounds [4 x i8], ptr %i.df, i64 %i.ds
  %i.du = load float, ptr %i.dt, align 4, !tbaa !73
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %.03675, i64 %indvars.iv
  store float %i.du, ptr %i.dv, align 4, !tbaa !73
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dw = mul nsw i64 %indvars.iv.next, %i.ak
  %i.dx = getelementptr inbounds [4 x i8], ptr %i.df, i64 %i.dw
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !73
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %.03675, i64 %indvars.iv.next
  store float %i.dy, ptr %i.dz, align 4, !tbaa !73
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ea = mul nsw i64 %indvars.iv.next.1, %i.ak
  %i.eb = getelementptr inbounds [4 x i8], ptr %i.df, i64 %i.ea
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !73
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %.03675, i64 %indvars.iv.next.1
  store float %i.ec, ptr %i.ed, align 4, !tbaa !73
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.ee = mul nsw i64 %indvars.iv.next.2, %i.ak
  %i.ef = getelementptr inbounds [4 x i8], ptr %i.df, i64 %i.ee
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !73
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %.03675, i64 %indvars.iv.next.2
  store float %i.eg, ptr %i.eh, align 4, !tbaa !73
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge73.split, label %scalar.ph, !llvm.loop !130

._crit_edge.split:                                ; preds = %._ZN4ncnn3MatD2Ev.exit_crit_edge.split79, %._ZN4ncnn3MatD2Ev.exit_crit_edge.split79.us.us, %.noexc40.lr.ph, %.noexc40.lr.ph.split, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.split, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn7Pooling7forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.5(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !45     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !45
  %i.h = load i32, ptr %0, align 4, !tbaa !45     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !45
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !45
  %i.k = load i32, ptr %i.a, align 4, !tbaa !45   ; 3 uses
  %.not142 = icmp sgt i32 %i.k, %i.j
  br i1 %.not142, label %._crit_edge.split, label %.noexc72.lr.ph

.noexc72.lr.ph:                                   ; preds = %bb.b
end_hunk_1
begin_hunk_2_@_ZNK4ncnn7Pooling7forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.5:bb.a
  %wide.trip.count169 = zext nneg i32 %i.ak to i64
  %wide.trip.count164 = zext nneg i32 %i.an to i64
  br label %.noexc72.us

.noexc72.us:                                      ; preds = %._ZN4ncnn3MatD2Ev.exit_crit_edge.split141.us.us, %.noexc72.lr.ph.split.split.split.us
  %indvars.iv176 = phi i64 [ %indvars.iv.next177, %._ZN4ncnn3MatD2Ev.exit_crit_edge.split141.us.us ], [ %i.aw, %.noexc72.lr.ph.split.split.split.us ] ; 3 uses
  %.reass.us = mul i64 %factor.op.mul, %indvars.iv176
  %i.ay = getelementptr inbounds nuw i8, ptr %i.n, i64 %.reass.us
  %.reass145.us = mul i64 %factor.op.mul144, %indvars.iv176
  %i.az = getelementptr inbounds nuw i8, ptr %i.t, i64 %.reass145.us
  br label %.lr.ph134.us.us

.lr.ph134.us.us:                                  ; preds = %._crit_edge135.split.us.us.us, %.noexc72.us
  %indvars.iv171 = phi i64 [ %indvars.iv.next172, %._crit_edge135.split.us.us.us ], [ 0, %.noexc72.us ] ; 2 uses
  %.065137.us.us = phi ptr [ %i.cf, %._crit_edge135.split.us.us.us ], [ %i.az, %.noexc72.us ] ; 2 uses
  %i.ba = mul nsw i64 %indvars.iv171, %i.av
  br label %.lr.ph126.us.us.us

.lr.ph126.us.us.us:                               ; preds = %._crit_edge.us.us.us, %.lr.ph134.us.us
  %indvars.iv166 = phi i64 [ %indvars.iv.next167, %._crit_edge.us.us.us ], [ 0, %.lr.ph134.us.us ] ; 3 uses
  %i.bb = mul nsw i64 %indvars.iv166, %i.au
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.us.us.us, %.lr.ph126.us.us.us
  %indvars.iv161 = phi i64 [ %indvars.iv.next162, %.loopexit.us.us.us ], [ 0, %.lr.ph126.us.us.us ] ; 2 uses
  %.054124.us.us.us = phi i32 [ %.4.ph.us.us.us, %.loopexit.us.us.us ], [ 0, %.lr.ph126.us.us.us ] ; 4 uses
  %.055123.us.us.us = phi float [ %.459.ph.us.us.us, %.loopexit.us.us.us ], [ 0.000000e+00, %.lr.ph126.us.us.us ] ; 4 uses
  %i.bc = add nsw i64 %indvars.iv161, %i.ba       ; 3 uses
  %i.bd = icmp slt i64 %i.bc, %i.at
  br i1 %i.bd, label %.loopexit.us.us.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.be = load i32, ptr %8, align 4, !tbaa !45
  %i.bf = load i32, ptr %i.ad, align 8, !tbaa !35
  %i.bg = load i32, ptr %9, align 4, !tbaa !45
  %i.bh = add i32 %i.bf, %i.bg
  %i.bi = sub i32 %i.be, %i.bh
  %i.bj = sext i32 %i.bi to i64
  %.not69.us.us.us = icmp slt i64 %i.bc, %i.bj
  br i1 %.not69.us.us.us, label %.preheader.us.us.us, label %._crit_edge.us.us.us

bb.e:                                             ; preds = %.lr.ph.us.us.us, %bb.h
  %indvars.iv156 = phi i64 [ 0, %.lr.ph.us.us.us ], [ %indvars.iv.next157, %bb.h ] ; 2 uses
  %.1117.us.us.us = phi i32 [ %.054124.us.us.us, %.lr.ph.us.us.us ], [ %.2.ph.us.us.us, %bb.h ] ; 3 uses
  %.156116.us.us.us = phi float [ %.055123.us.us.us, %.lr.ph.us.us.us ], [ %.257.ph.us.us.us, %bb.h ] ; 3 uses
  %i.bk = add nsw i64 %indvars.iv156, %i.bb       ; 3 uses
  %i.bl = icmp slt i64 %i.bk, %i.ce
  br i1 %i.bl, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bm = load i32, ptr %10, align 4, !tbaa !45
  %i.bn = load i32, ptr %i.ag, align 8, !tbaa !33
  %i.bo = load i32, ptr %11, align 4, !tbaa !45
  %i.bp = add i32 %i.bn, %i.bo
  %i.bq = sub i32 %i.bm, %i.bp
  %i.br = sext i32 %i.bq to i64
  %.not70.us.us.us = icmp slt i64 %i.bk, %i.br
  br i1 %.not70.us.us.us, label %bb.g, label %.loopexit.us.us.us

bb.g:                                             ; preds = %bb.f
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.cd, i64 %i.bk
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !73
  %i.bu = fadd fast float %i.bt, %.156116.us.us.us
  %i.bv = add nsw i32 %.1117.us.us.us, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %.257.ph.us.us.us = phi float [ %.156116.us.us.us, %bb.e ], [ %i.bu, %bb.g ] ; 2 uses
  %.2.ph.us.us.us = phi i32 [ %.1117.us.us.us, %bb.e ], [ %i.bv, %bb.g ] ; 2 uses
  %indvars.iv.next157 = add nuw nsw i64 %indvars.iv156, 1 ; 2 uses
  %exitcond160.not = icmp eq i64 %indvars.iv.next157, %wide.trip.count159
  br i1 %exitcond160.not, label %.loopexit.us.us.us, label %bb.e, !llvm.loop !137

.loopexit.us.us.us:                               ; preds = %bb.h, %bb.f, %.preheader.us.us.us, %bb.c
  %.459.ph.us.us.us = phi float [ %.055123.us.us.us, %bb.c ], [ %.055123.us.us.us, %.preheader.us.us.us ], [ %.156116.us.us.us, %bb.f ], [ %.257.ph.us.us.us, %bb.h ] ; 2 uses
  %.4.ph.us.us.us = phi i32 [ %.054124.us.us.us, %bb.c ], [ %.054124.us.us.us, %.preheader.us.us.us ], [ %.1117.us.us.us, %bb.f ], [ %.2.ph.us.us.us, %bb.h ] ; 2 uses
  %indvars.iv.next162 = add nuw nsw i64 %indvars.iv161, 1 ; 2 uses
  %exitcond165.not = icmp eq i64 %indvars.iv.next162, %wide.trip.count164
  br i1 %exitcond165.not, label %._crit_edge.us.us.us, label %bb.c, !llvm.loop !138

._crit_edge.us.us.us:                             ; preds = %.loopexit.us.us.us, %bb.d
  %.055.lcssa.us.us.us = phi float [ %.055123.us.us.us, %bb.d ], [ %.459.ph.us.us.us, %.loopexit.us.us.us ]
  %.054.lcssa.us.us.us = phi i32 [ %.054124.us.us.us, %bb.d ], [ %.4.ph.us.us.us, %.loopexit.us.us.us ]
  %i.bw = sitofp fast i32 %.054.lcssa.us.us.us to float
  %i.bx = fdiv fast float %.055.lcssa.us.us.us, %i.bw
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %.065137.us.us, i64 %indvars.iv166
  store float %i.bx, ptr %i.by, align 4, !tbaa !73
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166, 1 ; 2 uses
  %exitcond170.not = icmp eq i64 %indvars.iv.next167, %wide.trip.count169
  br i1 %exitcond170.not, label %._crit_edge135.split.us.us.us, label %.lr.ph126.us.us.us, !llvm.loop !139

.preheader.us.us.us:                              ; preds = %bb.d
  %i.bz = load i32, ptr %i.ae, align 4, !tbaa !28 ; 2 uses
  %i.ca = icmp sgt i32 %i.bz, 0
  br i1 %i.ca, label %.lr.ph.us.us.us, label %.loopexit.us.us.us

.lr.ph.us.us.us:                                  ; preds = %.preheader.us.us.us
  %i.cb = load i32, ptr %i.af, align 4, !tbaa !32
  %i.cc = mul i64 %i.ah, %i.bc
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.cc
  %i.ce = sext i32 %i.cb to i64
  %wide.trip.count159 = zext nneg i32 %i.bz to i64
  br label %bb.e

._crit_edge135.split.us.us.us:                    ; preds = %._crit_edge.us.us.us
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %.065137.us.us, i64 %i.am
  %indvars.iv.next172 = add nuw nsw i64 %indvars.iv171, 1 ; 2 uses
  %exitcond175.not = icmp eq i64 %indvars.iv.next172, %wide.trip.count174
  br i1 %exitcond175.not, label %._ZN4ncnn3MatD2Ev.exit_crit_edge.split141.us.us, label %.lr.ph134.us.us, !llvm.loop !140

._ZN4ncnn3MatD2Ev.exit_crit_edge.split141.us.us:  ; preds = %._crit_edge135.split.us.us.us
  %indvars.iv.next177 = add nsw i64 %indvars.iv176, 1 ; 2 uses
  %lftr.wideiv179 = trunc i64 %indvars.iv.next177 to i32
  %exitcond180.not = icmp eq i32 %i.ax, %lftr.wideiv179
  br i1 %exitcond180.not, label %._crit_edge.split, label %.noexc72.us

.noexc72:                                         ; preds = %.noexc72.preheader, %._ZN4ncnn3MatD2Ev.exit_crit_edge.split141
  %indvars.iv152 = phi i64 [ %i.ap, %.noexc72.preheader ], [ %indvars.iv.next153, %._ZN4ncnn3MatD2Ev.exit_crit_edge.split141 ] ; 2 uses
  %.reass145 = mul i64 %factor.op.mul144, %indvars.iv152
  %i.cg = getelementptr inbounds nuw i8, ptr %i.t, i64 %.reass145
  br label %.lr.ph134

._ZN4ncnn3MatD2Ev.exit_crit_edge.split141:        ; preds = %._crit_edge135.split
  %indvars.iv.next153 = add nsw i64 %indvars.iv152, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next153 to i32
  %exitcond155.not = icmp eq i32 %i.aq, %lftr.wideiv
  br i1 %exitcond155.not, label %._crit_edge.split, label %.noexc72

.lr.ph134:                                        ; preds = %.noexc72, %._crit_edge135.split
  %.064139 = phi i32 [ 0, %.noexc72 ], [ %i.cl, %._crit_edge135.split ]
  %.065137 = phi ptr [ %i.cg, %.noexc72 ], [ %i.ck, %._crit_edge135.split ] ; 3 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph134, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph134 ] ; 2 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %.065137, i64 %index ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store <4 x float> splat (float +qnan), ptr %i.ch, align 4, !tbaa !73
  store <4 x float> splat (float +qnan), ptr %i.ci, align 4, !tbaa !73
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cj = icmp eq i64 %index.next, %n.vec
  br i1 %i.cj, label %middle.block, label %vector.body, !llvm.loop !141

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge135.split, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph134, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph134 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge135.split:                             ; preds = %scalar.ph, %middle.block
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %.065137, i64 %i.am
  %i.cl = add nuw nsw i32 %.064139, 1             ; 2 uses
  %exitcond151.not = icmp eq i32 %i.cl, %i.y
  br i1 %exitcond151.not, label %._ZN4ncnn3MatD2Ev.exit_crit_edge.split141, label %.lr.ph134, !llvm.loop !140

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %.065137, i64 %indvars.iv
  store float +qnan, ptr %i.cm, align 4, !tbaa !73
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge135.split, label %scalar.ph, !llvm.loop !142

._crit_edge.split:                                ; preds = %._ZN4ncnn3MatD2Ev.exit_crit_edge.split141, %._ZN4ncnn3MatD2Ev.exit_crit_edge.split141.us.us, %.noexc72.lr.ph, %.noexc72.lr.ph.split, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge.split, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn7Pooling7forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.6(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef readonly captures(none) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %9) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !45     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !45
  %i.h = load i32, ptr %0, align 4, !tbaa !45     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !45
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 5 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !45
  %i.k = load i32, ptr %i.a, align 4, !tbaa !45   ; 5 uses
  %.not84 = icmp sgt i32 %i.k, %i.j
  br i1 %.not84, label %._crit_edge.split, label %.noexc44.lr.ph

.noexc44.lr.ph:                                   ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = load i32, ptr %i.l, align 4, !tbaa !42, !noalias !143
  %i.n = load ptr, ptr %3, align 8, !tbaa !51, !noalias !143
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.p = load i64, ptr %i.o, align 8, !tbaa !52, !noalias !143
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !48, !noalias !143 ; 2 uses
  %factor.op.mul = mul i64 %i.p, %i.r
  %i.s = sext i32 %i.m to i64
  %i.t = load ptr, ptr %4, align 8, !tbaa !51, !noalias !146 ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.v = load i64, ptr %i.u, align 8, !tbaa !52, !noalias !146
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !48, !noalias !146
  %factor.op.mul86 = mul i64 %i.v, %i.x           ; 6 uses
  %i.y = load i32, ptr %5, align 4, !tbaa !45     ; 3 uses
  %i.z = icmp sgt i32 %i.y, 0
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 224
  %i.ab = mul i64 %i.r, %i.s
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 220
  br i1 %i.z, label %.noexc44.lr.ph.split, label %._crit_edge.split

.noexc44.lr.ph.split:                             ; preds = %.noexc44.lr.ph
  %i.ad = load i32, ptr %6, align 4, !tbaa !45    ; 4 uses
  %i.ae = icmp sgt i32 %i.ad, 0
  %i.af = sext i32 %i.ad to i64
  br i1 %i.ae, label %.noexc44.lr.ph.split.split, label %._crit_edge.split

.noexc44.lr.ph.split.split:                       ; preds = %.noexc44.lr.ph.split
  %i.ag = load i32, ptr %8, align 4, !tbaa !45    ; 4 uses
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %.noexc44.lr.ph.split.split.split.us, label %.noexc44.preheader

.noexc44.preheader:                               ; preds = %.noexc44.lr.ph.split.split
  %i.ai = zext nneg i32 %i.ad to i64
  %i.aj = sext i32 %i.k to i64                    ; 5 uses
  %i.ak = zext nneg i32 %i.y to i64
  %i.al = mul nuw nsw i64 %i.ai, %i.ak
  %i.am = shl nuw i64 %i.al, 2                    ; 5 uses
  %i.an = add nsw i32 %i.j, 1
  %i.ao = sub i32 %i.an, %i.k                     ; 2 uses
  %10 = sub i32 %i.j, %i.k
  %xtraiter = and i32 %i.ao, 3                    ; 3 uses
  %i.ap = icmp ult i32 %10, 3
  br i1 %i.ap, label %.noexc44.epil.preheader, label %.noexc44.preheader.new

.noexc44.preheader.new:                           ; preds = %.noexc44.preheader
  %unroll_iter = and i32 %i.ao, -4
  br label %.noexc44

.noexc44.lr.ph.split.split.split.us:              ; preds = %.noexc44.lr.ph.split.split
  %i.aq = sitofp fast i32 %i.ag to float
  %i.ar = load i32, ptr %i.ac, align 4, !tbaa !30
  %i.as = load i32, ptr %i.aa, align 8, !tbaa !31
  %i.at = load ptr, ptr %9, align 8, !tbaa !61    ; 5 uses
  %i.au = sext i32 %i.ar to i64
  %i.av = sext i32 %i.as to i64
  %i.aw = sext i32 %i.k to i64
  %i.ax = add nsw i32 %i.j, 1
  %wide.trip.count103 = zext nneg i32 %i.y to i64
  %factor.op.mul116 = mul i64 %i.ab, %i.av
  %wide.trip.count98 = zext nneg i32 %i.ad to i64
  %wide.trip.count.a = zext nneg i32 %i.ag to i64 ; 2 uses
  %xtraiter122 = and i64 %wide.trip.count.a, 3    ; 3 uses
  %i.ay = icmp ult i32 %i.ag, 4
  %unroll_iter127 = and i64 %wide.trip.count.a, 2147483644
  %lcmp.mod124.not = icmp eq i64 %xtraiter122, 0
  %lcmp.mod126 = icmp ne i64 %xtraiter122, 0
  %i.az = fdiv fast float 1.000000e+00, %i.aq
  br label %.noexc44.us

.noexc44.us:                                      ; preds = %._ZN4ncnn3MatD2Ev.exit_crit_edge.split83.us.us, %.noexc44.lr.ph.split.split.split.us
  %indvars.iv105 = phi i64 [ %indvars.iv.next106, %._ZN4ncnn3MatD2Ev.exit_crit_edge.split83.us.us ], [ %i.aw, %.noexc44.lr.ph.split.split.split.us ] ; 3 uses
  %.reass.us = mul i64 %factor.op.mul, %indvars.iv105
  %i.ba = getelementptr inbounds nuw i8, ptr %i.n, i64 %.reass.us
  %.reass87.us = mul i64 %factor.op.mul86, %indvars.iv105
  %i.bb = getelementptr inbounds nuw i8, ptr %i.t, i64 %.reass87.us
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %._crit_edge77.split.us.us.us, %.noexc44.us
  %indvars.iv100 = phi i64 [ %indvars.iv.next101, %._crit_edge77.split.us.us.us ], [ 0, %.noexc44.us ] ; 2 uses
  %.04079.us.us = phi ptr [ %i.co, %._crit_edge77.split.us.us.us ], [ %i.bb, %.noexc44.us ] ; 2 uses
  %.reass = mul i64 %indvars.iv100, %factor.op.mul116
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.reass
  br label %.lr.ph.us.us.us

.lr.ph.us.us.us:                                  ; preds = %._crit_edge.us.us.us, %.preheader.us.us
  %indvars.iv95 = phi i64 [ %indvars.iv.next96, %._crit_edge.us.us.us ], [ 0, %.preheader.us.us ] ; 3 uses
  %i.bd = mul nsw i64 %indvars.iv95, %i.au
  %i.be = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %i.bd ; 5 uses
  br i1 %i.ay, label %.epil.preheader, label %.lr.ph.us.us.us.new

.lr.ph.us.us.us.new:                              ; preds = %.lr.ph.us.us.us, %.lr.ph.us.us.us.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph.us.us.us.new ], [ 0, %.lr.ph.us.us.us ] ; 5 uses
  %.03772.us.us.us = phi float [ %i.cf, %.lr.ph.us.us.us.new ], [ 0.000000e+00, %.lr.ph.us.us.us ]
  %niter128 = phi i64 [ %niter128.next.3, %.lr.ph.us.us.us.new ], [ 0, %.lr.ph.us.us.us ]
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !45
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.be, i64 %i.bh
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !73
  %i.bk = fadd fast float %i.bj, %.03772.us.us.us
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !45
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.be, i64 %i.bo
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !73
  %i.br = fadd fast float %i.bq, %i.bk
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !45
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds [4 x i8], ptr %i.be, i64 %i.bv
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !73
  %i.by = fadd fast float %i.bx, %i.br
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 12
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !45
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds [4 x i8], ptr %i.be, i64 %i.cc
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !73
  %i.cf = fadd fast float %i.ce, %i.by            ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter128.next.3 = add i64 %niter128, 4         ; 2 uses
  %niter128.ncmp.3 = icmp eq i64 %niter128.next.3, %unroll_iter127
  br i1 %niter128.ncmp.3, label %._crit_edge.us.us.us.unr-lcssa, label %.lr.ph.us.us.us.new, !llvm.loop !149

._crit_edge.us.us.us.unr-lcssa:                   ; preds = %.lr.ph.us.us.us.new
  br i1 %lcmp.mod124.not, label %._crit_edge.us.us.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.us.us.unr-lcssa, %.lr.ph.us.us.us
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.us.us.us ], [ %indvars.iv.next.3, %._crit_edge.us.us.us.unr-lcssa ]
  %.03772.us.us.us.epil.init = phi float [ 0.000000e+00, %.lr.ph.us.us.us ], [ %i.cf, %._crit_edge.us.us.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod126)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %bb.c ], [ %indvars.iv.epil.init, %.epil.preheader ] ; 2 uses
  %.03772.us.us.us.epil = phi float [ %i.cl, %bb.c ], [ %.03772.us.us.us.epil.init, %.epil.preheader ]
  %epil.iter123 = phi i64 [ %epil.iter123.next, %bb.c ], [ 0, %.epil.preheader ]
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv.epil
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !45
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds [4 x i8], ptr %i.be, i64 %i.ci
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !73
  %i.cl = fadd fast float %i.ck, %.03772.us.us.us.epil ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter123.next = add i64 %epil.iter123, 1   ; 2 uses
  %epil.iter123.cmp.not = icmp eq i64 %epil.iter123.next, %xtraiter122
  br i1 %epil.iter123.cmp.not, label %._crit_edge.us.us.us, label %bb.c, !llvm.loop !150

._crit_edge.us.us.us:                             ; preds = %bb.c, %._crit_edge.us.us.us.unr-lcssa
  %.lcssa = phi float [ %i.cf, %._crit_edge.us.us.us.unr-lcssa ], [ %i.cl, %bb.c ]
  %i.cm = fmul fast float %.lcssa, %i.az
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %.04079.us.us, i64 %indvars.iv95
  store float %i.cm, ptr %i.cn, align 4, !tbaa !73
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1 ; 2 uses
  %exitcond99.not = icmp eq i64 %indvars.iv.next96, %wide.trip.count98
  br i1 %exitcond99.not, label %._crit_edge77.split.us.us.us, label %.lr.ph.us.us.us, !llvm.loop !151

._crit_edge77.split.us.us.us:                     ; preds = %._crit_edge.us.us.us
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %.04079.us.us, i64 %i.af
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 1 ; 2 uses
  %exitcond104.not = icmp eq i64 %indvars.iv.next101, %wide.trip.count103
  br i1 %exitcond104.not, label %._ZN4ncnn3MatD2Ev.exit_crit_edge.split83.us.us, label %.preheader.us.us, !llvm.loop !152

._ZN4ncnn3MatD2Ev.exit_crit_edge.split83.us.us:   ; preds = %._crit_edge77.split.us.us.us
  %indvars.iv.next106 = add nsw i64 %indvars.iv105, 1 ; 2 uses
  %lftr.wideiv108 = trunc i64 %indvars.iv.next106 to i32
  %exitcond109.not = icmp eq i32 %i.ax, %lftr.wideiv108
  br i1 %exitcond109.not, label %._crit_edge.split, label %.noexc44.us

.noexc44:                                         ; preds = %.noexc44, %.noexc44.preheader.new
  %indvar = phi i64 [ 0, %.noexc44.preheader.new ], [ %indvar.next.3, %.noexc44 ] ; 5 uses
  %niter = phi i32 [ 0, %.noexc44.preheader.new ], [ %niter.next.3, %.noexc44 ]
  %i.cp = add nsw i64 %indvar, %i.aj
  %i.cq = mul i64 %factor.op.mul86, %i.cp
  %scevgep = getelementptr i8, ptr %i.t, i64 %i.cq
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep, i8 0, i64 %i.am, i1 false), !tbaa !73
  %indvar.next = or disjoint i64 %indvar, 1
  %i.cr = add nsw i64 %indvar.next, %i.aj
  %i.cs = mul i64 %factor.op.mul86, %i.cr
  %scevgep.1 = getelementptr i8, ptr %i.t, i64 %i.cs
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.1, i8 0, i64 %i.am, i1 false), !tbaa !73
  %indvar.next.1 = or disjoint i64 %indvar, 2
  %i.ct = add nsw i64 %indvar.next.1, %i.aj
  %i.cu = mul i64 %factor.op.mul86, %i.ct
  %scevgep.2 = getelementptr i8, ptr %i.t, i64 %i.cu
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.2, i8 0, i64 %i.am, i1 false), !tbaa !73
  %indvar.next.2 = or disjoint i64 %indvar, 3
  %i.cv = add nsw i64 %indvar.next.2, %i.aj
  %i.cw = mul i64 %factor.op.mul86, %i.cv
  %scevgep.3 = getelementptr i8, ptr %i.t, i64 %i.cw
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.3, i8 0, i64 %i.am, i1 false), !tbaa !73
  %indvar.next.3 = add nuw nsw i64 %indvar, 4     ; 2 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.split.loopexit118.unr-lcssa, label %.noexc44

._crit_edge.split.loopexit118.unr-lcssa:          ; preds = %.noexc44
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.split, label %.noexc44.epil.preheader

.noexc44.epil.preheader:                          ; preds = %._crit_edge.split.loopexit118.unr-lcssa, %.noexc44.preheader
  %indvar.epil.init = phi i64 [ 0, %.noexc44.preheader ], [ %indvar.next.3, %._crit_edge.split.loopexit118.unr-lcssa ]
  %lcmp.mod119 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod119)
  br label %.noexc44.epil

.noexc44.epil:                                    ; preds = %.noexc44.epil, %.noexc44.epil.preheader
  %indvar.epil = phi i64 [ %indvar.epil.init, %.noexc44.epil.preheader ], [ %indvar.next.epil, %.noexc44.epil ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.noexc44.epil.preheader ], [ %epil.iter.next, %.noexc44.epil ]
  %i.cx = add i64 %indvar.epil, %i.aj
  %i.cy = mul i64 %factor.op.mul86, %i.cx
  %scevgep.epil = getelementptr i8, ptr %i.t, i64 %i.cy
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.epil, i8 0, i64 %i.am, i1 false), !tbaa !73
  %indvar.next.epil = add nuw nsw i64 %indvar.epil, 1
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.split, label %.noexc44.epil, !llvm.loop !153

._crit_edge.split:                                ; preds = %._crit_edge.split.loopexit118.unr-lcssa, %.noexc44.epil, %._ZN4ncnn3MatD2Ev.exit_crit_edge.split83.us.us, %.noexc44.lr.ph, %.noexc44.lr.ph.split, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.split, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #10

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #11

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

declare void @_ZN4ncnn16copy_make_borderERKNS_3MatERS0_iiiiifRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, float noundef nofpclass(nan inf), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.maxnum.v4f32(<4 x float>, <4 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fmax.v4f32(<4 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v4f32(float, <4 x float>) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

attributes #0 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { builtin nounwind }
attributes #17 = { noreturn }
attributes #18 = { builtin allocsize(0) }
attributes #19 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !6, i64 208}
!10 = !{!"_ZTSN4ncnn7PoolingE", !11, i64 0, !6, i64 208, !6, i64 212, !6, i64 216, !6, i64 220, !6, i64 224, !6, i64 228, !6, i64 232, !6, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264}
!11 = !{!"_ZTSN4ncnn5LayerE", !12, i64 8, !12, i64 9, !12, i64 10, !12, i64 11, !12, i64 12, !12, i64 13, !12, i64 14, !12, i64 15, !12, i64 16, !12, i64 17, !12, i64 18, !12, i64 19, !12, i64 20, !12, i64 21, !12, i64 22, !12, i64 23, !12, i64 24, !12, i64 25, !12, i64 26, !12, i64 27, !6, i64 28, !13, i64 32, !6, i64 40, !14, i64 48, !14, i64 80, !18, i64 112, !18, i64 136, !23, i64 160, !23, i64 184}
!12 = !{!"bool", !7, i64 0}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !15, i64 0, !17, i64 8, !7, i64 16}
!15 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !16, i64 0}
!16 = !{!"p1 omnipotent char", !13, i64 0}
!17 = !{!"long", !7, i64 0}
!18 = !{!"_ZTSSt6vectorIiSaIiEE", !19, i64 0}
!19 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !20, i64 0}
!20 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !21, i64 0}
!21 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !22, i64 0, !22, i64 8, !22, i64 16}
!22 = !{!"p1 int", !13, i64 0}
!23 = !{!"_ZTSSt6vectorIN4ncnn3MatESaIS1_EE", !24, i64 0}
!24 = !{!"_ZTSSt12_Vector_baseIN4ncnn3MatESaIS1_EE", !25, i64 0}
!25 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE12_Vector_implE", !26, i64 0}
!26 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE17_Vector_impl_dataE", !27, i64 0, !27, i64 8, !27, i64 16}
!27 = !{!"p1 _ZTSN4ncnn3MatE", !13, i64 0}
!28 = !{!10, !6, i64 212}
!29 = !{!10, !6, i64 216}
!30 = !{!10, !6, i64 220}
!31 = !{!10, !6, i64 224}
!32 = !{!10, !6, i64 228}
!33 = !{!10, !6, i64 232}
!34 = !{!10, !6, i64 236}
!35 = !{!10, !6, i64 240}
!36 = !{!10, !6, i64 244}
!37 = !{!10, !6, i64 248}
!38 = !{!10, !6, i64 252}
!39 = !{!10, !6, i64 256}
!40 = !{!10, !6, i64 260}
!41 = !{!10, !6, i64 264}
!42 = !{!43, !6, i64 44}
!43 = !{!"_ZTSN4ncnn3MatE", !13, i64 0, !22, i64 8, !17, i64 16, !6, i64 24, !44, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !17, i64 64}
!44 = !{!"p1 _ZTSN4ncnn9AllocatorE", !13, i64 0}
!45 = !{!6, !6, i64 0}
!46 = !{!43, !6, i64 48}
!47 = !{!43, !6, i64 56}
!48 = !{!43, !17, i64 16}
!49 = !{!50, !44, i64 8}
!50 = !{!"_ZTSN4ncnn6OptionE", !12, i64 0, !12, i64 1, !12, i64 2, !12, i64 3, !6, i64 4, !44, i64 8, !44, i64 16, !6, i64 24, !12, i64 28, !12, i64 29, !12, i64 30, !12, i64 31, !12, i64 32, !12, i64 33, !12, i64 34, !12, i64 35, !12, i64 36, !12, i64 37, !12, i64 38, !12, i64 39, !6, i64 40, !12, i64 44, !12, i64 45, !12, i64 46, !12, i64 47, !7, i64 48, !12, i64 49, !12, i64 50, !12, i64 51, !12, i64 52, !12, i64 53, !12, i64 54, !12, i64 55, !12, i64 56, !12, i64 57, !12, i64 58, !12, i64 59, !12, i64 60, !12, i64 61, !12, i64 62, !12, i64 63}
!51 = !{!43, !13, i64 0}
!52 = !{!43, !17, i64 64}
!53 = !{!50, !6, i64 4}
!54 = !{!43, !22, i64 8}
!55 = !{!43, !44, i64 32}
!56 = !{!57, !57, i64 0}
!57 = !{!"vtable pointer", !8, i64 0}
!58 = distinct !{null}
!59 = !{!13, !13, i64 0}
!60 = !{!43, !6, i64 24}
!61 = !{!22, !22, i64 0}
!62 = distinct !{!62, !63, !64, !65}
!63 = !{!"llvm.loop.mustprogress"}
!64 = !{!"llvm.loop.isvectorized", i32 1}
!65 = !{!"llvm.loop.unroll.runtime.disable"}
!66 = distinct !{!66, !63}
!67 = distinct !{!67, !63, !65, !64}
!68 = !{!11, !12, i64 8}
!69 = !{!11, !12, i64 9}
!70 = !{!71}
!71 = distinct !{!71, !72, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!72 = distinct !{!72, !"_ZNK4ncnn3Mat7channelEi"}
!73 = !{!74, !74, i64 0}
!74 = !{!"float", !7, i64 0}
!75 = distinct !{!75, !76}
!76 = !{!"llvm.loop.unroll.disable"}
!77 = distinct !{!77, !63, !64, !65}
!78 = distinct !{!78, !63, !65, !64}
!79 = !{!80}
!80 = !{i64 2, i64 -1, i64 -1, i1 true}
!81 = !{!82}
!82 = distinct !{!82, !83, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!83 = distinct !{!83, !"_ZNK4ncnn3Mat7channelEi"}
!84 = distinct !{!84, !63, !64, !65}
!85 = distinct !{!85, !63, !65, !64}
!86 = !{!87}
!87 = distinct !{!87, !88, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!88 = distinct !{!88, !"_ZNK4ncnn3Mat7channelEi"}
!89 = !{!90}
!90 = distinct !{!90, !91, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!91 = distinct !{!91, !"_ZN4ncnn3Mat7channelEi"}
!92 = distinct !{!92, !63}
!93 = distinct !{!93, !63, !64, !65}
!94 = distinct !{!94, !63, !65, !64}
!95 = distinct !{!95, !63}
!96 = distinct !{!96, !63}
!97 = !{!98}
!98 = distinct !{!98, !99, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!99 = distinct !{!99, !"_ZNK4ncnn3Mat7channelEi"}
!100 = !{!101}
!101 = distinct !{!101, !102, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!102 = distinct !{!102, !"_ZN4ncnn3Mat7channelEi"}
!103 = distinct !{!103, !63}
!104 = distinct !{!104, !63, !64, !65}
!105 = distinct !{!105, !63, !65, !64}
!106 = distinct !{!106, !63}
!107 = distinct !{!107, !63}
!108 = !{i64 0, i64 1, !109, i64 1, i64 1, !109, i64 2, i64 1, !109, i64 3, i64 1, !109, i64 4, i64 4, !45, i64 8, i64 8, !110, i64 16, i64 8, !110, i64 24, i64 4, !45, i64 28, i64 1, !109, i64 29, i64 1, !109, i64 30, i64 1, !109, i64 31, i64 1, !109, i64 32, i64 1, !109, i64 33, i64 1, !109, i64 34, i64 1, !109, i64 35, i64 1, !109, i64 36, i64 1, !109, i64 37, i64 1, !109, i64 38, i64 1, !109, i64 39, i64 1, !109, i64 40, i64 4, !45, i64 44, i64 1, !109, i64 45, i64 1, !109, i64 46, i64 1, !109, i64 47, i64 1, !109, i64 48, i64 1, !111, i64 49, i64 1, !109, i64 50, i64 1, !109, i64 51, i64 1, !109, i64 52, i64 1, !109, i64 53, i64 1, !109, i64 54, i64 1, !109, i64 55, i64 1, !109, i64 56, i64 1, !109, i64 57, i64 1, !109, i64 58, i64 1, !109, i64 59, i64 1, !109, i64 60, i64 1, !109, i64 61, i64 1, !109, i64 62, i64 1, !109, i64 63, i64 1, !109}
!109 = !{!12, !12, i64 0}
!110 = !{!44, !44, i64 0}
!111 = !{!7, !7, i64 0}
!112 = !{!50, !44, i64 16}
!113 = !{!114}
!114 = distinct !{!114, !115, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!115 = distinct !{!115, !"_ZN4ncnn3Mat7channelEi"}
!116 = !{!117}
!117 = distinct !{!117, !118, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!118 = distinct !{!118, !"_ZN4ncnn3Mat7channelEi"}
!119 = distinct !{!119, !63}
!120 = distinct !{!120, !76}
!121 = distinct !{!121, !63}
!122 = distinct !{!122, !63}
end_hunk_2
