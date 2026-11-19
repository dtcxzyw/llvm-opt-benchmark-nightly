Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/abcIf?download=true
inline.NumInlined: 290
inline.NumDeleted: 99
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@If_CutTruth:bb.a
  %indvars.iv21.i.i.ph = phi i64 [ 0, %.lr.ph18.preheader.i.i ], [ %n.vec14, %middle.block20 ] ; 3 uses
  %xtraiter25 = and i64 %wide.trip.count24.i.i, 3 ; 2 uses
  %lcmp.mod26.not = icmp eq i64 %xtraiter25, 0
  br i1 %lcmp.mod26.not, label %.lr.ph18.i.i.prol.loopexit, label %.lr.ph18.i.i.prol

.lr.ph18.i.i.prol:                                ; preds = %.lr.ph18.i.i.preheader, %.lr.ph18.i.i.prol
  %indvars.iv21.i.i.prol = phi i64 [ %indvars.iv.next22.i.i.prol, %.lr.ph18.i.i.prol ], [ %indvars.iv21.i.i.ph, %.lr.ph18.i.i.preheader ] ; 3 uses
  %prol.iter27 = phi i64 [ %prol.iter27.next, %.lr.ph18.i.i.prol ], [ 0, %.lr.ph18.i.i.preheader ]
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv21.i.i.prol
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !108
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv21.i.i.prol
  store i64 %i.ba, ptr %i.bb, align 8, !tbaa !108
  %indvars.iv.next22.i.i.prol = add nuw nsw i64 %indvars.iv21.i.i.prol, 1 ; 2 uses
  %prol.iter27.next = add i64 %prol.iter27, 1     ; 2 uses
  %prol.iter27.cmp.not = icmp eq i64 %prol.iter27.next, %xtraiter25
  br i1 %prol.iter27.cmp.not, label %.lr.ph18.i.i.prol.loopexit, label %.lr.ph18.i.i.prol, !llvm.loop !238

.lr.ph18.i.i.prol.loopexit:                       ; preds = %.lr.ph18.i.i.prol, %.lr.ph18.i.i.preheader
  %indvars.iv21.i.i.unr = phi i64 [ %indvars.iv21.i.i.ph, %.lr.ph18.i.i.preheader ], [ %indvars.iv.next22.i.i.prol, %.lr.ph18.i.i.prol ]
  %i.bc = sub nsw i64 %indvars.iv21.i.i.ph, %wide.trip.count24.i.i
  %i.bd = icmp ugt i64 %i.bc, -4
  br i1 %i.bd, label %If_CutTruthW.exit, label %.lr.ph18.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %.lr.ph.i.i ], [ %indvars.iv.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv.i.i
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !108
  %i.bg = xor i64 %i.bf, -1
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i.i
  store i64 %i.bg, ptr %i.bh, align 8, !tbaa !108
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv.next.i.i
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !108
  %i.bk = xor i64 %i.bj, -1
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next.i.i
  store i64 %i.bk, ptr %i.bl, align 8, !tbaa !108
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv.next.i.i.1
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !108
  %i.bo = xor i64 %i.bn, -1
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next.i.i.1
  store i64 %i.bo, ptr %i.bp, align 8, !tbaa !108
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv.next.i.i.2
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !108
  %i.bs = xor i64 %i.br, -1
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next.i.i.2
  store i64 %i.bs, ptr %i.bt, align 8, !tbaa !108
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %If_CutTruthW.exit, label %.lr.ph.i.i, !llvm.loop !239

.lr.ph18.i.i:                                     ; preds = %.lr.ph18.i.i.prol.loopexit, %.lr.ph18.i.i
  %indvars.iv21.i.i = phi i64 [ %indvars.iv.next22.i.i.3, %.lr.ph18.i.i ], [ %indvars.iv21.i.i.unr, %.lr.ph18.i.i.prol.loopexit ] ; 6 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv21.i.i
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !108
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv21.i.i
  store i64 %i.bv, ptr %i.bw, align 8, !tbaa !108
  %indvars.iv.next22.i.i = add nuw nsw i64 %indvars.iv21.i.i, 1 ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv.next22.i.i
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !108
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next22.i.i
  store i64 %i.by, ptr %i.bz, align 8, !tbaa !108
  %indvars.iv.next22.i.i.1 = add nuw nsw i64 %indvars.iv21.i.i, 2 ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv.next22.i.i.1
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !108
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next22.i.i.1
  store i64 %i.cb, ptr %i.cc, align 8, !tbaa !108
  %indvars.iv.next22.i.i.2 = add nuw nsw i64 %indvars.iv21.i.i, 3 ; 2 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv.next22.i.i.2
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !108
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next22.i.i.2
  store i64 %i.ce, ptr %i.cf, align 8, !tbaa !108
  %indvars.iv.next22.i.i.3 = add nuw nsw i64 %indvars.iv21.i.i, 4 ; 2 uses
  %exitcond25.not.i.i.3 = icmp eq i64 %indvars.iv.next22.i.i.3, %wide.trip.count24.i.i
  br i1 %exitcond25.not.i.i.3, label %If_CutTruthW.exit, label %.lr.ph18.i.i, !llvm.loop !240

If_CutTruthW.exit:                                ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %.lr.ph18.i.i.prol.loopexit, %.lr.ph18.i.i, %middle.block, %middle.block20, %.preheader14.i.i, %.preheader.i.i
  ret ptr %i.b
}

declare void @Cudd_Ref(ptr noundef) local_unnamed_addr #2

declare i32 @Kit_TruthIsop(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Abc_SopCreateAnd(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Abc_NtkCreateNodeConst0(ptr noundef) local_unnamed_addr #2

declare ptr @Abc_NtkCreateNodeConst1(ptr noundef) local_unnamed_addr #2

declare ptr @Abc_SopCreateFromIsop(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @Abc_SopComplement(ptr noundef) local_unnamed_addr #2

declare ptr @Abc_RecToHop3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @Abc_TtFlip(ptr nofree noundef captures(address) %0, i32 noundef %1, i32 noundef range(i32 -2147483648, 255) %2) unnamed_addr #5 {
bb.a:
  %i.a = icmp eq i32 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %0, align 8, !tbaa !108    ; 2 uses
  %i.c = shl nuw i32 1, %2
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = shl i64 %i.b, %i.d
  %i.f = sext i32 %2 to i64
  %i.g = getelementptr inbounds [8 x i8], ptr @s_Truths6, i64 %i.f
  %i.h = load i64, ptr %i.g, align 8, !tbaa !108  ; 2 uses
  %i.i = and i64 %i.e, %i.h
  %i.j = and i64 %i.h, %i.b
  %i.k = lshr i64 %i.j, %i.d
  %i.l = or i64 %i.k, %i.i
  store i64 %i.l, ptr %0, align 8, !tbaa !108
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.m = icmp slt i32 %2, 6
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = icmp sgt i32 %1, 0
  br i1 %i.n, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.d
  %i.o = shl nuw nsw i32 1, %2
  %i.p = zext nneg i32 %i.o to i64                ; 3 uses
  %i.q = sext i32 %2 to i64
  %i.r = getelementptr inbounds [8 x i8], ptr @s_Truths6, i64 %i.q
  %i.s = load i64, ptr %i.r, align 8, !tbaa !108  ; 3 uses
  %wide.trip.count59 = zext nneg i32 %1 to i64    ; 3 uses
  %min.iters.check70 = icmp ult i32 %1, 4
  br i1 %min.iters.check70, label %scalar.ph69.preheader, label %vector.ph71

vector.ph71:                                      ; preds = %.lr.ph
  %n.vec72 = and i64 %wide.trip.count59, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.p, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert73 = insertelement <2 x i64> poison, i64 %i.s, i64 0
  %broadcast.splat74 = shufflevector <2 x i64> %broadcast.splatinsert73, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  br label %vector.body75

vector.body75:                                    ; preds = %vector.body75, %vector.ph71
  %index76 = phi i64 [ 0, %vector.ph71 ], [ %index.next79, %vector.body75 ] ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index76 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %wide.load77 = load <2 x i64>, ptr %i.t, align 8, !tbaa !108 ; 2 uses
  %wide.load78 = load <2 x i64>, ptr %i.u, align 8, !tbaa !108 ; 2 uses
  %i.v = shl <2 x i64> %wide.load77, %broadcast.splat
  %i.w = shl <2 x i64> %wide.load78, %broadcast.splat
  %i.x = and <2 x i64> %i.v, %broadcast.splat74
  %i.y = and <2 x i64> %i.w, %broadcast.splat74
  %i.z = and <2 x i64> %broadcast.splat74, %wide.load77
  %i.aa = and <2 x i64> %broadcast.splat74, %wide.load78
  %i.ab = lshr <2 x i64> %i.z, %broadcast.splat
  %i.ac = lshr <2 x i64> %i.aa, %broadcast.splat
  %i.ad = or <2 x i64> %i.ab, %i.x
  %i.ae = or <2 x i64> %i.ac, %i.y
  store <2 x i64> %i.ad, ptr %i.t, align 8, !tbaa !108
  store <2 x i64> %i.ae, ptr %i.u, align 8, !tbaa !108
  %index.next79 = add nuw i64 %index76, 4         ; 2 uses
  %i.af = icmp eq i64 %index.next79, %n.vec72
  br i1 %i.af, label %middle.block80, label %vector.body75, !llvm.loop !241

middle.block80:                                   ; preds = %vector.body75
  %cmp.n81 = icmp eq i64 %n.vec72, %wide.trip.count59
  br i1 %cmp.n81, label %.loopexit, label %scalar.ph69.preheader

scalar.ph69.preheader:                            ; preds = %.lr.ph, %middle.block80
  %indvars.iv56.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec72, %middle.block80 ]
  br label %scalar.ph69

scalar.ph69:                                      ; preds = %scalar.ph69.preheader, %scalar.ph69
  %indvars.iv56 = phi i64 [ %indvars.iv.next57, %scalar.ph69 ], [ %indvars.iv56.ph, %scalar.ph69.preheader ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv56 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !108 ; 2 uses
  %i.ai = shl i64 %i.ah, %i.p
  %i.aj = and i64 %i.ai, %i.s
  %i.ak = and i64 %i.s, %i.ah
  %i.al = lshr i64 %i.ak, %i.p
  %i.am = or i64 %i.al, %i.aj
  store i64 %i.am, ptr %i.ag, align 8, !tbaa !108
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1 ; 2 uses
  %exitcond60.not = icmp eq i64 %indvars.iv.next57, %wide.trip.count59
  br i1 %exitcond60.not, label %.loopexit, label %scalar.ph69, !llvm.loop !242

bb.e:                                             ; preds = %bb.c
  %i.an = sext i32 %1 to i64
  %.idx = shl nsw i64 %i.an, 3
  %i.ao = getelementptr inbounds i8, ptr %0, i64 %.idx
  %i.ap = add nsw i32 %2, -6                      ; 3 uses
  %i.aq = shl nuw i32 1, %i.ap                    ; 4 uses
  %i.ar = icmp sgt i32 %1, 0
  br i1 %i.ar, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %bb.e
  %.not = icmp eq i32 %i.ap, 31
  %i.as = shl i32 2, %i.ap
  %i.at = sext i32 %i.as to i64
  br i1 %.not, label %.loopexit, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %i.au = sext i32 %i.aq to i64                   ; 2 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.aq, i32 1) ; 2 uses
  %wide.trip.count = zext nneg i32 %smax to i64   ; 4 uses
  %3 = shl nsw i64 %i.au, 3                       ; 2 uses
  %i.av = shl nuw nsw i64 %wide.trip.count, 3     ; 2 uses
  %4 = getelementptr i8, ptr %0, i64 %3
  %scevgep = getelementptr i8, ptr %4, i64 %i.av
  %scevgep67 = getelementptr i8, ptr %0, i64 %3
  %scevgep68 = getelementptr i8, ptr %0, i64 %i.av
  %min.iters.check = icmp slt i32 %i.aq, 4
  %bound0 = icmp ult ptr %0, %scevgep
  %bound1 = icmp ult ptr %scevgep67, %scevgep68
  %found.conflict = and i1 %bound0, %bound1
  %n.vec = and i64 %wide.trip.count, 2147483644
  %xtraiter = and i64 %wide.trip.count, 1
  %i.aw = icmp slt i32 %i.aq, 2
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod85 = trunc i32 %smax to i1
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %.051.us = phi ptr [ %i.bl, %._crit_edge.us ], [ %0, %.preheader.us.preheader ] ; 6 uses
  %invariant.gep = getelementptr [8 x i8], ptr %.051.us, i64 %i.au ; 4 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %found.conflict
  br i1 %brmerge, label %vector.memcheck, label %vector.body

vector.memcheck:                                  ; preds = %.preheader.us
  br i1 %i.aw, label %scalar.ph.epil.preheader, label %scalar.ph

vector.body:                                      ; preds = %.preheader.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.us ] ; 3 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %.051.us, i64 %index ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.ax, align 8, !tbaa !108, !alias.scope !249, !noalias !250
  %wide.load66 = load <2 x i64>, ptr %i.ay, align 8, !tbaa !108, !alias.scope !249, !noalias !250
  %i.az = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 3 uses
  %i.ba = getelementptr i8, ptr %i.az, i64 16     ; 2 uses
  %wide.load67 = load <2 x i64>, ptr %i.az, align 8, !tbaa !108, !alias.scope !250
  %wide.load68 = load <2 x i64>, ptr %i.ba, align 8, !tbaa !108, !alias.scope !250
  store <2 x i64> %wide.load67, ptr %i.ax, align 8, !tbaa !108, !alias.scope !249, !noalias !250
  store <2 x i64> %wide.load68, ptr %i.ay, align 8, !tbaa !108, !alias.scope !249, !noalias !250
  store <2 x i64> %wide.load, ptr %i.az, align 8, !tbaa !108, !alias.scope !250
  store <2 x i64> %wide.load66, ptr %i.ba, align 8, !tbaa !108, !alias.scope !250
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %._crit_edge.us, label %vector.body, !llvm.loop !246

scalar.ph:                                        ; preds = %vector.memcheck, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ 0, %vector.memcheck ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %scalar.ph ], [ 0, %vector.memcheck ]
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %.051.us, i64 %indvars.iv ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !108
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv ; 2 uses
  %i.be = load i64, ptr %gep, align 8, !tbaa !108
  store i64 %i.be, ptr %i.bc, align 8, !tbaa !108
  store i64 %i.bd, ptr %gep, align 8, !tbaa !108
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %.051.us, i64 %indvars.iv.next ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !108
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next ; 2 uses
  %i.bh = load i64, ptr %gep.1, align 8, !tbaa !108
  store i64 %i.bh, ptr %i.bf, align 8, !tbaa !108
  store i64 %i.bg, ptr %gep.1, align 8, !tbaa !108
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.loopexit.unr-lcssa, label %scalar.ph, !llvm.loop !247

._crit_edge.us.loopexit.unr-lcssa:                ; preds = %scalar.ph
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %scalar.ph.epil.preheader

scalar.ph.epil.preheader:                         ; preds = %._crit_edge.us.loopexit.unr-lcssa, %vector.memcheck
  %indvars.iv.epil.init = phi i64 [ 0, %vector.memcheck ], [ %indvars.iv.next.1, %._crit_edge.us.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod85)
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %.051.us, i64 %indvars.iv.epil.init ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !108
  %gep.epil = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.epil.init ; 2 uses
  %i.bk = load i64, ptr %gep.epil, align 8, !tbaa !108
  store i64 %i.bk, ptr %i.bi, align 8, !tbaa !108
  store i64 %i.bj, ptr %gep.epil, align 8, !tbaa !108
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %vector.body, %scalar.ph.epil.preheader, %._crit_edge.us.loopexit.unr-lcssa
  %i.bl = getelementptr inbounds [8 x i8], ptr %.051.us, i64 %i.at ; 2 uses
  %i.bm = icmp ult ptr %i.bl, %i.ao
  br i1 %i.bm, label %.preheader.us, label %.loopexit, !llvm.loop !248

.loopexit:                                        ; preds = %._crit_edge.us, %scalar.ph69, %middle.block80, %.preheader.lr.ph, %bb.e, %bb.d, %bb.b
  ret void
}

declare void @Abc_NodeComplement(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @Abc_NodeIfToHop_rec(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 3 uses
  %.val22 = load ptr, ptr %i.a, align 8, !tbaa !53 ; 2 uses
  %.not = icmp eq ptr %.val22, null
  br i1 %.not, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !56
  %i.d = tail call ptr @Abc_NodeIfToHop_rec(ptr noundef %0, ptr noundef %1, ptr noundef %i.c, ptr noundef %3)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !57
  %i.g = tail call ptr @Abc_NodeIfToHop_rec(ptr noundef %0, ptr noundef %1, ptr noundef %i.f, ptr noundef %3)
  %i.h = load i32, ptr %2, align 8                ; 2 uses
  %i.i = lshr i32 %i.h, 4
  %i.j = and i32 %i.i, 1
  %i.k = ptrtoint ptr %i.d to i64
  %i.l = zext nneg i32 %i.j to i64
  %i.m = xor i64 %i.l, %i.k
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = lshr i32 %i.h, 5
  %i.p = and i32 %i.o, 1
  %i.q = ptrtoint ptr %i.g to i64
  %i.r = zext nneg i32 %i.p to i64
  %i.s = xor i64 %i.r, %i.q
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = tail call ptr @Hop_And(ptr noundef %0, ptr noundef %i.n, ptr noundef %i.t) #21 ; 2 uses
  store ptr %i.u, ptr %i.a, align 8, !tbaa !53
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !30   ; 7 uses
  %i.x = load i32, ptr %3, align 8, !tbaa !111
  %i.y = icmp eq i32 %i.w, %i.x
  br i1 %i.y, label %bb.c, label %Vec_PtrPush.exit

bb.c:                                             ; preds = %bb.b
  %i.z = icmp slt i32 %i.w, 16
  br i1 %i.z, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !52 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.ab, null
  br i1 %.not9.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.ab, i64 noundef 128) #23
  br label %Vec_PtrGrow.exit.i

bb.f:                                             ; preds = %bb.d
  %i.ad = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #22
  br label %Vec_PtrGrow.exit.i

Vec_PtrGrow.exit.i:                               ; preds = %bb.f, %bb.e
  %i.ae = phi ptr [ %i.ac, %bb.e ], [ %i.ad, %bb.f ]
  store ptr %i.ae, ptr %i.aa, align 8, !tbaa !52
  br label %Vec_PtrGrow.exit12.sink.split.i

bb.g:                                             ; preds = %bb.c
  %i.af = icmp samesign ult i32 %i.w, 1073741823
  %i.ag = shl nuw nsw i32 %i.w, 1
  %spec.select.i = select i1 %i.af, i32 %i.ag, i32 2147483647 ; 3 uses
  %.not.i10.i = icmp samesign ult i32 %i.w, %spec.select.i
  br i1 %.not.i10.i, label %bb.h, label %Vec_PtrPush.exit

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !52 ; 2 uses
  %.not9.i11.i = icmp eq ptr %i.ai, null
  %i.aj = zext nneg i32 %spec.select.i to i64
  %i.ak = shl nuw nsw i64 %i.aj, 3                ; 2 uses
  br i1 %.not9.i11.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = tail call ptr @realloc(ptr noundef nonnull %i.ai, i64 noundef %i.ak) #23
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.am = tail call noalias ptr @malloc(i64 noundef %i.ak) #22
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.an = phi ptr [ %i.al, %bb.i ], [ %i.am, %bb.j ]
  store ptr %i.an, ptr %i.ah, align 8, !tbaa !52
  br label %Vec_PtrGrow.exit12.sink.split.i

Vec_PtrGrow.exit12.sink.split.i:                  ; preds = %bb.k, %Vec_PtrGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.k ], [ 16, %Vec_PtrGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %3, align 8, !tbaa !111
  %.pre = load i32, ptr %i.v, align 4, !tbaa !30
  br label %Vec_PtrPush.exit

Vec_PtrPush.exit:                                 ; preds = %bb.b, %bb.g, %Vec_PtrGrow.exit12.sink.split.i
  %i.ao = phi i32 [ %i.w, %bb.b ], [ %i.w, %bb.g ], [ %.pre, %Vec_PtrGrow.exit12.sink.split.i ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !52
  %i.ar = add nsw i32 %i.ao, 1
  store i32 %i.ar, ptr %i.v, align 4, !tbaa !30
  %i.as = sext i32 %i.ao to i64
  %i.at = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.as
  store ptr %i.a, ptr %i.at, align 8, !tbaa !53
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %Vec_PtrPush.exit
  %.0 = phi ptr [ %i.u, %Vec_PtrPush.exit ], [ %.val22, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define ptr @Abc_NodeIfToHop2_rec(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 5 uses
  %.val42 = load ptr, ptr %i.a, align 8, !tbaa !53 ; 2 uses
  %.not = icmp eq ptr %.val42, null
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !30   ; 7 uses
  %i.d = load i32, ptr %3, align 8, !tbaa !111
  %i.e = icmp eq i32 %i.c, %i.d
  br i1 %i.e, label %bb.c, label %Vec_PtrPush.exit

bb.c:                                             ; preds = %bb.b
  %i.f = icmp slt i32 %i.c, 16
  br i1 %i.f, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !52   ; 2 uses
  %.not9.i.i = icmp eq ptr %i.h, null
  br i1 %.not9.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.h, i64 noundef 128) #23
  br label %Vec_PtrGrow.exit.i

bb.f:                                             ; preds = %bb.d
  %i.j = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #22
  br label %Vec_PtrGrow.exit.i

Vec_PtrGrow.exit.i:                               ; preds = %bb.f, %bb.e
  %i.k = phi ptr [ %i.i, %bb.e ], [ %i.j, %bb.f ]
  store ptr %i.k, ptr %i.g, align 8, !tbaa !52
  br label %Vec_PtrGrow.exit12.sink.split.i

bb.g:                                             ; preds = %bb.c
  %i.l = icmp samesign ult i32 %i.c, 1073741823
  %i.m = shl nuw nsw i32 %i.c, 1
  %spec.select.i = select i1 %i.l, i32 %i.m, i32 2147483647 ; 3 uses
  %.not.i10.i = icmp samesign ult i32 %i.c, %spec.select.i
  br i1 %.not.i10.i, label %bb.h, label %Vec_PtrPush.exit

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !52   ; 2 uses
  %.not9.i11.i = icmp eq ptr %i.o, null
  %i.p = zext nneg i32 %spec.select.i to i64
  %i.q = shl nuw nsw i64 %i.p, 3                  ; 2 uses
  br i1 %.not9.i11.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = tail call ptr @realloc(ptr noundef nonnull %i.o, i64 noundef %i.q) #23
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.s = tail call noalias ptr @malloc(i64 noundef %i.q) #22
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.t = phi ptr [ %i.r, %bb.i ], [ %i.s, %bb.j ]
  store ptr %i.t, ptr %i.n, align 8, !tbaa !52
  br label %Vec_PtrGrow.exit12.sink.split.i

Vec_PtrGrow.exit12.sink.split.i:                  ; preds = %bb.k, %Vec_PtrGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.k ], [ 16, %Vec_PtrGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %3, align 8, !tbaa !111
  %.pre = load i32, ptr %i.b, align 4, !tbaa !30
  br label %Vec_PtrPush.exit

Vec_PtrPush.exit:                                 ; preds = %bb.b, %bb.g, %Vec_PtrGrow.exit12.sink.split.i
  %i.u = phi i32 [ %i.c, %bb.b ], [ %i.c, %bb.g ], [ %.pre, %Vec_PtrGrow.exit12.sink.split.i ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !52
  %i.x = add nsw i32 %i.u, 1
  store i32 %i.x, ptr %i.b, align 4, !tbaa !30
  %i.y = sext i32 %i.u to i64
  %i.z = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.y
  store ptr %i.a, ptr %i.z, align 8, !tbaa !53
  store ptr inttoptr (i64 1 to ptr), ptr %i.a, align 8, !tbaa !53
  %.val43 = load i32, ptr %2, align 8
end_hunk_0
