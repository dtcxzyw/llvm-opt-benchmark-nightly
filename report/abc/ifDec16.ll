Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/ifDec16?download=true
inline.NumInlined: 202
inline.NumDeleted: 55
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 44
loop-unroll.NumUnrolled: 76
begin_hunk_0_@If_CluHashLookup:bb.a
  br label %bb.ae

.preheader:                                       ; preds = %bb.ab, %bb.ad
  %.0121 = phi ptr [ %i.hl, %bb.ad ], [ %i.hf, %bb.ab ] ; 2 uses
  %i.hl = load ptr, ptr %.0121, align 8, !tbaa !103 ; 4 uses
  %.not138 = icmp eq ptr %i.hl, null
  br i1 %.not138, label %.critedge2, label %bb.ad

bb.ad:                                            ; preds = %.preheader
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 12
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !88
  %i.ho = icmp ult i32 %i.hi, %i.hn
  br i1 %i.ho, label %.preheader, label %.critedge2, !llvm.loop !106

.critedge2:                                       ; preds = %.preheader, %bb.ad
  store ptr %i.hl, ptr %i.fo, align 8, !tbaa !103
  store ptr %i.fo, ptr %.0121, align 8, !tbaa !103
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %.critedge2
  %indvars.iv.next215 = add nuw nsw i64 %indvars.iv214, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next215, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.aa, !llvm.loop !107

.critedge:                                        ; preds = %bb.ae, %._crit_edge191.thread, %._crit_edge191
  %.val140249 = phi i32 [ %.val140.pre, %._crit_edge191 ], [ 0, %._crit_edge191.thread ], [ %.val140.pre, %bb.ae ] ; 2 uses
  %.pre220248 = phi ptr [ %.pre220.pre, %._crit_edge191 ], [ %i.du, %._crit_edge191.thread ], [ %.pre220.pre, %bb.ae ] ; 2 uses
  %.0125.lcssa = phi i32 [ %i.cz, %._crit_edge191 ], [ %i.cz, %._crit_edge191.thread ], [ %i.hc, %bb.ae ]
  store i32 %.val140249, ptr %i.dl, align 4, !tbaa !10
  %.not.i171 = icmp eq ptr %.pre220248, null
  br i1 %.not.i171, label %Vec_PtrFree.exit, label %bb.af

bb.af:                                            ; preds = %.critedge
  tail call void @free(ptr noundef nonnull %.pre220248) #24
  %.pre221.pre = load i32, ptr %i.dl, align 4, !tbaa !10
  br label %Vec_PtrFree.exit

Vec_PtrFree.exit:                                 ; preds = %.critedge, %bb.af
  %.pre221 = phi i32 [ %.val140249, %.critedge ], [ %.pre221.pre, %bb.af ]
  tail call void @free(ptr noundef nonnull %i.do) #24
  %.pre222 = load ptr, ptr %i.i, align 8, !tbaa !94
  %.pre225 = sext i32 %.0125.lcssa to i64
  br label %bb.ag

bb.ag:                                            ; preds = %Vec_PtrFree.exit, %bb.m
  %.pre-phi = phi i64 [ %.pre225, %Vec_PtrFree.exit ], [ %i.da, %bb.m ]
  %i.hp = phi ptr [ %.pre222, %Vec_PtrFree.exit ], [ %i.o, %bb.m ]
  %i.hq = phi i32 [ %.pre221, %Vec_PtrFree.exit ], [ %i.dm, %bb.m ]
  %i.hr = add nsw i32 %i.hq, 1
  store i32 %i.hr, ptr %i.dl, align 4, !tbaa !10
  %i.hs = tail call ptr @Mem_FixedEntryFetch(ptr noundef %i.hp) #24 ; 6 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ht, ptr noundef nonnull align 8 dereferenceable(1) %1, i64 %i.dd, i1 false)
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hs, i64 8 ; 3 uses
  store i32 255, ptr %i.hu, align 8, !tbaa !16
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hs, i64 12
  store i32 1, ptr %i.hv, align 4, !tbaa !88
  store ptr null, ptr %i.hs, align 8, !tbaa !103
  %i.hw = load ptr, ptr %i.r, align 8, !tbaa !11
  %i.hx = getelementptr inbounds [8 x i8], ptr %i.hw, i64 %.pre-phi ; 2 uses
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !14
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ai, %bb.ag
  %.0127 = phi ptr [ %i.hy, %bb.ag ], [ %i.hz, %bb.ai ] ; 3 uses
  %cond = icmp eq ptr %.0127, null
  br i1 %cond, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.hz = load ptr, ptr %.0127, align 8, !tbaa !103 ; 2 uses
  %.not136 = icmp eq ptr %i.hz, null
  br i1 %.not136, label %.critedge4, label %bb.ah, !llvm.loop !108

bb.aj:                                            ; preds = %bb.ah
  store ptr %i.hs, ptr %i.hx, align 8, !tbaa !14
  br label %bb.ak

.critedge4:                                       ; preds = %bb.ai
  store ptr %i.hs, ptr %.0127, align 8, !tbaa !103
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %.critedge4, %bb.a, %bb.l
  %.0122 = phi ptr [ null, %bb.a ], [ %i.dj, %bb.l ], [ %i.hu, %.critedge4 ], [ %i.hu, %bb.aj ]
  ret ptr %.0122
}

declare ptr @Mem_FixedStart(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #8

declare void @Mem_FixedEntryRecycle(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

declare ptr @Mem_FixedEntryFetch(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @If_CluChangePhase(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #10 {
bb.a:
  %i.a = icmp slt i32 %1, 7
  %i.b = add nsw i32 %1, -6
  %i.c = shl nuw i32 1, %i.b
  %i.d = select i1 %i.a, i32 1, i32 %i.c          ; 8 uses
  %i.e = icmp slt i32 %2, 6
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = icmp sgt i32 %i.d, 0
  br i1 %i.f, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %i.g = shl nuw nsw i32 1, %2
  %i.h = sext i32 %2 to i64
  %i.i = getelementptr inbounds [8 x i8], ptr @s_Truths6, i64 %i.h
  %i.j = load i64, ptr %i.i, align 8, !tbaa !18   ; 5 uses
  %i.k = xor i64 %i.j, -1                         ; 4 uses
  %i.l = zext nneg i32 %i.g to i64                ; 7 uses
  %min.iters.check68 = icmp ult i32 %i.d, 4
  br i1 %min.iters.check68, label %scalar.ph67, label %vector.ph69

vector.ph69:                                      ; preds = %.lr.ph
  %i.m = and i32 %i.d, 2147483644
  %n.vec70 = zext nneg i32 %i.m to i64
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.j, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert71 = insertelement <2 x i64> poison, i64 %i.k, i64 0
  %broadcast.splat72 = shufflevector <2 x i64> %broadcast.splatinsert71, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert73 = insertelement <2 x i64> poison, i64 %i.l, i64 0
  %broadcast.splat74 = shufflevector <2 x i64> %broadcast.splatinsert73, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  br label %vector.body75

vector.body75:                                    ; preds = %vector.body75, %vector.ph69
  %index76 = phi i64 [ 0, %vector.ph69 ], [ %index.next79, %vector.body75 ] ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index76 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %wide.load77.a = load <2 x i64>, ptr %i.n, align 8, !tbaa !18 ; 2 uses
  %wide.load78 = load <2 x i64>, ptr %i.o, align 8, !tbaa !18 ; 2 uses
  %i.p = and <2 x i64> %wide.load77.a, %broadcast.splat72
  %i.q = and <2 x i64> %wide.load78, %broadcast.splat72
  %i.r = shl <2 x i64> %i.p, %broadcast.splat74
  %i.s = shl <2 x i64> %i.q, %broadcast.splat74
  %i.t = and <2 x i64> %broadcast.splat, %wide.load77.a
  %i.u = and <2 x i64> %broadcast.splat, %wide.load78
  %i.v = lshr <2 x i64> %i.t, %broadcast.splat74
  %i.w = lshr <2 x i64> %i.u, %broadcast.splat74
  %i.x = or <2 x i64> %i.r, %i.v
  %i.y = or <2 x i64> %i.s, %i.w
  store <2 x i64> %i.x, ptr %i.n, align 8, !tbaa !18
  store <2 x i64> %i.y, ptr %i.o, align 8, !tbaa !18
  %index.next79 = add nuw i64 %index76, 4         ; 2 uses
  %i.z = icmp eq i64 %index.next79, %n.vec70
  br i1 %i.z, label %.loopexit, label %vector.body75, !llvm.loop !109

scalar.ph67:                                      ; preds = %.lr.ph
  %i.aa = load i64, ptr %0, align 8, !tbaa !18    ; 2 uses
  %i.ab = and i64 %i.aa, %i.k
  %i.ac = shl i64 %i.ab, %i.l
  %i.ad = and i64 %i.j, %i.aa
  %i.ae = lshr i64 %i.ad, %i.l
  %i.af = or i64 %i.ac, %i.ae
  store i64 %i.af, ptr %0, align 8, !tbaa !18
  %exitcond54.not = icmp eq i32 %i.d, 1
  br i1 %exitcond54.not, label %.loopexit, label %scalar.ph67.1

scalar.ph67.1:                                    ; preds = %scalar.ph67
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !18 ; 2 uses
  %i.ai = and i64 %i.ah, %i.k
  %i.aj = shl i64 %i.ai, %i.l
  %i.ak = and i64 %i.j, %i.ah
  %i.al = lshr i64 %i.ak, %i.l
  %i.am = or i64 %i.aj, %i.al
  store i64 %i.am, ptr %i.ag, align 8, !tbaa !18
  %exitcond54.not.1 = icmp eq i32 %i.d, 2
  br i1 %exitcond54.not.1, label %.loopexit, label %scalar.ph67.2

scalar.ph67.2:                                    ; preds = %scalar.ph67.1
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !18 ; 2 uses
  %i.ap = and i64 %i.ao, %i.k
  %i.aq = shl i64 %i.ap, %i.l
  %i.ar = and i64 %i.j, %i.ao
  %i.as = lshr i64 %i.ar, %i.l
  %i.at = or i64 %i.aq, %i.as
  store i64 %i.at, ptr %i.an, align 8, !tbaa !18
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.au = add nsw i32 %2, -6                      ; 3 uses
  %i.av = shl nuw i32 1, %i.au                    ; 4 uses
  %i.aw = icmp sgt i32 %i.d, 0
  br i1 %i.aw, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %bb.c
  %.not = icmp eq i32 %i.au, 31
  %i.ax = shl i32 2, %i.au                        ; 4 uses
  %i.ay = sext i32 %i.ax to i64                   ; 2 uses
  br i1 %.not, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.az = sext i32 %i.av to i64                   ; 2 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.av, i32 1) ; 2 uses
  %wide.trip.count = zext nneg i32 %smax to i64   ; 4 uses
  %smax60 = tail call i32 @llvm.smax.i32(i32 %i.d, i32 %i.ax)
  %i.ba = add nsw i32 %smax60, -1
  %i.bb = shl nuw nsw i64 %wide.trip.count, 3     ; 2 uses
  %i.bc = shl nsw i64 %i.az, 3                    ; 2 uses
  %scevgep61.a = getelementptr i8, ptr %0, i64 %i.bc
  %min.iters.check = icmp slt i32 %i.av, 10
  %i.bd = add nsw i32 %2, -5
  %i.be = lshr i32 %i.ba, %i.bd
  %i.bf = zext i32 %i.be to i64
  %i.bg = mul nsw i64 %i.bf, %i.ay
  %i.bh = shl i64 %i.bg, 3                        ; 2 uses
  %i.bi = getelementptr i8, ptr %0, i64 %i.bh
  %scevgep = getelementptr i8, ptr %i.bi, i64 %i.bb
  %i.bj = getelementptr i8, ptr %0, i64 %i.bh
  %i.bk = getelementptr i8, ptr %i.bj, i64 %i.bc
  %scevgep62 = getelementptr i8, ptr %i.bk, i64 %i.bb
  %bound0 = icmp ult ptr %0, %scevgep62
  %bound1 = icmp ult ptr %scevgep61.a, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i32 %i.ax, 0
  %i.bl = or i1 %found.conflict, %stride.check
  %n.vec = and i64 %wide.trip.count, 2147483644
  %xtraiter = and i64 %wide.trip.count, 1
  %i.bm = icmp slt i32 %i.av, 2
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod86 = trunc i32 %smax to i1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.045 = phi i32 [ %i.cc, %._crit_edge ], [ 0, %.preheader.preheader ]
  %.03844 = phi ptr [ %i.cb, %._crit_edge ], [ %0, %.preheader.preheader ] ; 6 uses
  %invariant.gep = getelementptr [8 x i8], ptr %.03844, i64 %i.az ; 4 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.bl
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

scalar.ph.preheader:                              ; preds = %.preheader
  br i1 %i.bm, label %scalar.ph.epil.preheader, label %scalar.ph

vector.body:                                      ; preds = %.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader ] ; 3 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %.03844, i64 %index ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.bn, align 8, !tbaa !18, !alias.scope !110, !noalias !113
  %wide.load64.a = load <2 x i64>, ptr %i.bo, align 8, !tbaa !18, !alias.scope !110, !noalias !113
  %i.bp = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 3 uses
  %i.bq = getelementptr i8, ptr %i.bp, i64 16     ; 2 uses
  %wide.load65.a = load <2 x i64>, ptr %i.bp, align 8, !tbaa !18, !alias.scope !113
  %wide.load66 = load <2 x i64>, ptr %i.bq, align 8, !tbaa !18, !alias.scope !113
  store <2 x i64> %wide.load65.a, ptr %i.bn, align 8, !tbaa !18, !alias.scope !110, !noalias !113
  store <2 x i64> %wide.load66, ptr %i.bo, align 8, !tbaa !18, !alias.scope !110, !noalias !113
  store <2 x i64> %wide.load, ptr %i.bp, align 8, !tbaa !18, !alias.scope !113
  store <2 x i64> %wide.load64.a, ptr %i.bq, align 8, !tbaa !18, !alias.scope !113
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.br = icmp eq i64 %index.next, %n.vec
  br i1 %i.br, label %._crit_edge, label %vector.body, !llvm.loop !115

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ 0, %scalar.ph.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %scalar.ph ], [ 0, %scalar.ph.preheader ]
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %.03844, i64 %indvars.iv ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !18
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv ; 2 uses
  %i.bu = load i64, ptr %gep, align 8, !tbaa !18
  store i64 %i.bu, ptr %i.bs, align 8, !tbaa !18
  store i64 %i.bt, ptr %gep, align 8, !tbaa !18
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %.03844, i64 %indvars.iv.next ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !18
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next ; 2 uses
  %i.bx = load i64, ptr %gep.1, align 8, !tbaa !18
  store i64 %i.bx, ptr %i.bv, align 8, !tbaa !18
  store i64 %i.bw, ptr %gep.1, align 8, !tbaa !18
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %scalar.ph, !llvm.loop !116

._crit_edge.loopexit.unr-lcssa:                   ; preds = %scalar.ph
  br i1 %lcmp.mod.not, label %._crit_edge, label %scalar.ph.epil.preheader

scalar.ph.epil.preheader:                         ; preds = %._crit_edge.loopexit.unr-lcssa, %scalar.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %scalar.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod86)
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %.03844, i64 %indvars.iv.epil.init ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !18
  %gep.epil = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.epil.init ; 2 uses
  %i.ca = load i64, ptr %gep.epil, align 8, !tbaa !18
  store i64 %i.ca, ptr %i.by, align 8, !tbaa !18
  store i64 %i.bz, ptr %gep.epil, align 8, !tbaa !18
  br label %._crit_edge

._crit_edge:                                      ; preds = %vector.body, %scalar.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa
  %i.cb = getelementptr inbounds [8 x i8], ptr %.03844, i64 %i.ay
  %i.cc = add nsw i32 %.045, %i.ax                ; 2 uses
  %i.cd = icmp slt i32 %i.cc, %i.d
  br i1 %i.cd, label %.preheader, label %.loopexit, !llvm.loop !117

.loopexit:                                        ; preds = %._crit_edge, %vector.body75, %scalar.ph67, %scalar.ph67.1, %scalar.ph67.2, %bb.c, %.preheader.lr.ph, %bb.b
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @If_CluCountOnesInCofs(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #10 {
bb.a:
  %i.a = icmp slt i32 %1, 7
  %i.b = add nsw i32 %1, -6
  %i.c = shl nuw i32 1, %i.b                      ; 2 uses
  %i.d = select i1 %i.a, i32 1, i32 %i.c          ; 6 uses
  %i.e = sext i32 %1 to i64
  %i.f = shl nsw i64 %i.e, 3
  tail call void @llvm.memset.p0.i64(ptr align 4 %2, i8 0, i64 %i.f, i1 false)
  %i.g = icmp sgt i32 %i.d, 0                     ; 3 uses
  %i.h = icmp sgt i32 %1, 0                       ; 2 uses
  %or.cond = and i1 %i.g, %i.h
  br i1 %or.cond, label %.preheader49.preheader, label %._crit_edge52.split

.preheader49.preheader:                           ; preds = %bb.a
  %wide.trip.count67 = zext nneg i32 %i.d to i64
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %exitcond.not = icmp eq i32 %1, 1
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %exitcond.not.1 = icmp eq i32 %1, 2
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %exitcond.not.2 = icmp eq i32 %1, 3
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 2 uses
  %exitcond.not.3 = icmp eq i32 %1, 4
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 2 uses
  %exitcond.not.4 = icmp eq i32 %1, 5
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 2 uses
  %.promoted = load i32, ptr %i.i, align 4, !tbaa !10
  br label %.preheader49

.preheader49:                                     ; preds = %.preheader49.preheader, %._crit_edge
  %i.o = phi i32 [ %.promoted, %.preheader49.preheader ], [ %i.al, %._crit_edge ]
  %indvars.iv64 = phi i64 [ 0, %.preheader49.preheader ], [ %indvars.iv.next65, %._crit_edge ] ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv64
  %i.q = load i64, ptr %i.p, align 8, !tbaa !18   ; 12 uses
  %i.r = lshr i64 %i.q, 1
  %i.s = and i64 %i.r, 1229782938247303441
  %i.t = lshr i64 %i.q, 3
  %i.u = and i64 %i.t, 1229782938247303441
  %i.v = add nuw nsw i64 %i.u, %i.s               ; 2 uses
  %i.w = and i64 %i.v, 217020518514230019
  %i.x = lshr i64 %i.v, 4
  %i.y = and i64 %i.x, 217020518514230019
  %i.z = add nuw nsw i64 %i.y, %i.w               ; 2 uses
  %i.aa = and i64 %i.z, 1970354902204423
  %i.ab = lshr i64 %i.z, 8
  %i.ac = and i64 %i.ab, 1970354902204423
  %i.ad = add nuw nsw i64 %i.ac, %i.aa            ; 2 uses
  %i.ae = and i64 %i.ad, 64424509455
  %i.af = lshr i64 %i.ad, 16
  %i.ag = and i64 %i.af, 64424509455
  %i.ah = add nuw nsw i64 %i.ag, %i.ae            ; 2 uses
  %i.ai = lshr i64 %i.ah, 32
  %i.aj = add nuw nsw i64 %i.ai, %i.ah
  %i.ak = trunc i64 %i.aj to i32
  %i.al = add nsw i32 %i.o, %i.ak                 ; 2 uses
  br i1 %exitcond.not, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %.preheader49
  %i.am = and i64 %i.q, 4919131752989213764
  %i.an = lshr i64 %i.q, 1
  %i.ao = and i64 %i.an, 4919131752989213764
  %i.ap = add nuw i64 %i.ao, %i.am                ; 2 uses
  %i.aq = lshr exact i64 %i.ap, 2
  %i.ar = and i64 %i.aq, 217020518514230019
  %i.as = lshr i64 %i.ap, 6
  %i.at = and i64 %i.as, 217020518514230019
  %i.au = add nuw nsw i64 %i.at, %i.ar            ; 2 uses
  %i.av = and i64 %i.au, 1970354902204423
  %i.aw = lshr i64 %i.au, 8
  %i.ax = and i64 %i.aw, 1970354902204423
  %i.ay = add nuw nsw i64 %i.ax, %i.av            ; 2 uses
  %i.az = and i64 %i.ay, 64424509455
  %i.ba = lshr i64 %i.ay, 16
  %i.bb = and i64 %i.ba, 64424509455
  %i.bc = add nuw nsw i64 %i.bb, %i.az            ; 2 uses
  %i.bd = lshr i64 %i.bc, 32
  %i.be = add nuw nsw i64 %i.bd, %i.bc
  %i.bf = trunc i64 %i.be to i32
  %i.bg = load i32, ptr %i.j, align 4, !tbaa !10
  %i.bh = add nsw i32 %i.bg, %i.bf
  store i32 %i.bh, ptr %i.j, align 4, !tbaa !10
  br i1 %exitcond.not.1, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bi = and i64 %i.q, 5787213827046133840
  %i.bj = lshr i64 %i.q, 1
  %i.bk = and i64 %i.bj, 5787213827046133840
  %i.bl = add nuw i64 %i.bk, %i.bi                ; 2 uses
  %i.bm = and i64 %i.bl, 3472328296227680304
  %i.bn = lshr exact i64 %i.bl, 2
  %i.bo = and i64 %i.bn, 3472328296227680304
  %i.bp = add nuw nsw i64 %i.bo, %i.bm            ; 2 uses
  %i.bq = lshr exact i64 %i.bp, 4
  %i.br = and i64 %i.bq, 1970354902204423
  %i.bs = lshr i64 %i.bp, 12
  %i.bt = and i64 %i.bs, 1970354902204423
  %i.bu = add nuw nsw i64 %i.bt, %i.br            ; 2 uses
  %i.bv = and i64 %i.bu, 64424509455
end_hunk_0
begin_hunk_1_@If_CluCountOnesInCofs:bb.a
  %i.hs = add nuw nsw <2 x i64> %i.hq, %i.hm      ; 2 uses
  %i.ht = lshr <2 x i64> %i.hr, splat (i64 32)
  %i.hu = lshr <2 x i64> %i.hs, splat (i64 32)
  %i.hv = add nuw nsw <2 x i64> %i.ht, %i.hr
  %i.hw = add nuw nsw <2 x i64> %i.hu, %i.hs
  %i.hx = trunc <2 x i64> %i.hv to <2 x i32>
  %i.hy = trunc <2 x i64> %i.hw to <2 x i32>
  %i.hz = add <2 x i32> %vec.phi, %i.hx           ; 2 uses
  %i.ia = add <2 x i32> %vec.phi93, %i.hy         ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ib = icmp eq i64 %index.next, %n.vec
  br i1 %i.ib, label %middle.block, label %vector.body, !llvm.loop !121

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.ia, %i.hz
  %i.ic = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx)
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph, %.lr.ph.1, %.lr.ph.2, %middle.block, %.loopexit
  %.0.lcssa = phi i32 [ 0, %.loopexit ], [ %i.ic, %middle.block ], [ %i.jb, %.lr.ph ], [ %i.kb, %.lr.ph.1 ], [ %i.lb, %.lr.ph.2 ] ; 5 uses
  br i1 %i.h, label %.lr.ph60.preheader, label %._crit_edge61

.lr.ph60.preheader:                               ; preds = %.preheader
  %wide.trip.count87 = zext nneg i32 %1 to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count87, 3       ; 3 uses
  %i.id = icmp ult i32 %1, 4
  br i1 %i.id, label %.lr.ph60.epil.preheader, label %.lr.ph60.preheader.new

.lr.ph60.preheader.new:                           ; preds = %.lr.ph60.preheader
  %unroll_iter = and i64 %wide.trip.count87, 2147483644
  br label %.lr.ph60

.lr.ph:                                           ; preds = %.lr.ph.preheader
  %i.ie = load i64, ptr %0, align 8, !tbaa !18    ; 2 uses
  %i.if = and i64 %i.ie, 6148914691236517205
  %i.ig = lshr i64 %i.ie, 1
  %i.ih = and i64 %i.ig, 6148914691236517205
  %i.ii = add nuw i64 %i.ih, %i.if                ; 2 uses
  %i.ij = and i64 %i.ii, 3689348814741910323
  %i.ik = lshr i64 %i.ii, 2
  %i.il = and i64 %i.ik, 3689348814741910323
  %i.im = add nuw nsw i64 %i.il, %i.ij            ; 2 uses
  %i.in = and i64 %i.im, 506381209866536711
  %i.io = lshr i64 %i.im, 4
  %i.ip = and i64 %i.io, 506381209866536711
  %i.iq = add nuw nsw i64 %i.ip, %i.in            ; 2 uses
  %i.ir = and i64 %i.iq, 4222189076152335
  %i.is = lshr i64 %i.iq, 8
  %i.it = and i64 %i.is, 4222189076152335
  %i.iu = add nuw nsw i64 %i.it, %i.ir            ; 2 uses
  %i.iv = and i64 %i.iu, 133143986207
  %i.iw = lshr i64 %i.iu, 16
  %i.ix = and i64 %i.iw, 133143986207
  %i.iy = add nuw nsw i64 %i.ix, %i.iv            ; 2 uses
  %i.iz = lshr i64 %i.iy, 32
  %i.ja = add nuw nsw i64 %i.iz, %i.iy
  %i.jb = trunc i64 %i.ja to i32                  ; 2 uses
  %exitcond83.not = icmp eq i32 %i.d, 1
  br i1 %exitcond83.not, label %.preheader, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.jd = load i64, ptr %i.jc, align 8, !tbaa !18 ; 2 uses
  %i.je = and i64 %i.jd, 6148914691236517205
  %i.jf = lshr i64 %i.jd, 1
  %i.jg = and i64 %i.jf, 6148914691236517205
  %i.jh = add nuw i64 %i.jg, %i.je                ; 2 uses
  %i.ji = and i64 %i.jh, 3689348814741910323
  %i.jj = lshr i64 %i.jh, 2
  %i.jk = and i64 %i.jj, 3689348814741910323
  %i.jl = add nuw nsw i64 %i.jk, %i.ji            ; 2 uses
  %i.jm = and i64 %i.jl, 506381209866536711
  %i.jn = lshr i64 %i.jl, 4
  %i.jo = and i64 %i.jn, 506381209866536711
  %i.jp = add nuw nsw i64 %i.jo, %i.jm            ; 2 uses
  %i.jq = and i64 %i.jp, 4222189076152335
  %i.jr = lshr i64 %i.jp, 8
  %i.js = and i64 %i.jr, 4222189076152335
  %i.jt = add nuw nsw i64 %i.js, %i.jq            ; 2 uses
  %i.ju = and i64 %i.jt, 133143986207
  %i.jv = lshr i64 %i.jt, 16
  %i.jw = and i64 %i.jv, 133143986207
  %i.jx = add nuw nsw i64 %i.jw, %i.ju            ; 2 uses
  %i.jy = lshr i64 %i.jx, 32
  %i.jz = add nuw nsw i64 %i.jy, %i.jx
  %i.ka = trunc i64 %i.jz to i32
  %i.kb = add nuw nsw i32 %i.jb, %i.ka            ; 2 uses
  %exitcond83.not.1 = icmp eq i32 %i.d, 2
  br i1 %exitcond83.not.1, label %.preheader, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %.lr.ph.1
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.kd = load i64, ptr %i.kc, align 8, !tbaa !18 ; 2 uses
  %i.ke = and i64 %i.kd, 6148914691236517205
  %i.kf = lshr i64 %i.kd, 1
  %i.kg = and i64 %i.kf, 6148914691236517205
  %i.kh = add nuw i64 %i.kg, %i.ke                ; 2 uses
  %i.ki = and i64 %i.kh, 3689348814741910323
  %i.kj = lshr i64 %i.kh, 2
  %i.kk = and i64 %i.kj, 3689348814741910323
  %i.kl = add nuw nsw i64 %i.kk, %i.ki            ; 2 uses
  %i.km = and i64 %i.kl, 506381209866536711
  %i.kn = lshr i64 %i.kl, 4
  %i.ko = and i64 %i.kn, 506381209866536711
  %i.kp = add nuw nsw i64 %i.ko, %i.km            ; 2 uses
  %i.kq = and i64 %i.kp, 4222189076152335
  %i.kr = lshr i64 %i.kp, 8
  %i.ks = and i64 %i.kr, 4222189076152335
  %i.kt = add nuw nsw i64 %i.ks, %i.kq            ; 2 uses
  %i.ku = and i64 %i.kt, 133143986207
  %i.kv = lshr i64 %i.kt, 16
  %i.kw = and i64 %i.kv, 133143986207
  %i.kx = add nuw nsw i64 %i.kw, %i.ku            ; 2 uses
  %i.ky = lshr i64 %i.kx, 32
  %i.kz = add nuw nsw i64 %i.ky, %i.kx
  %i.la = trunc i64 %i.kz to i32
  %i.lb = add nuw nsw i32 %i.kb, %i.la
  br label %.preheader

.lr.ph60:                                         ; preds = %.lr.ph60, %.lr.ph60.preheader.new
  %indvars.iv84 = phi i64 [ 0, %.lr.ph60.preheader.new ], [ %indvars.iv.next85.3, %.lr.ph60 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph60.preheader.new ], [ %niter.next.3, %.lr.ph60 ]
  %.idx92 = shl nuw nsw i64 %indvars.iv84, 3
  %i.lc = getelementptr inbounds nuw i8, ptr %2, i64 %.idx92 ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 4
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !10
  %i.lf = sub nsw i32 %.0.lcssa, %i.le
  store i32 %i.lf, ptr %i.lc, align 4, !tbaa !10
  %indvars.iv.next85 = shl i64 %indvars.iv84, 3
  %i.lg = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next85 ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 8
  %i.li = getelementptr inbounds nuw i8, ptr %i.lg, i64 12
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !10
  %i.lk = sub nsw i32 %.0.lcssa, %i.lj
  store i32 %i.lk, ptr %i.lh, align 4, !tbaa !10
  %indvars.iv.next85.1 = shl i64 %indvars.iv84, 3
  %i.ll = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next85.1 ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 16
  %i.ln = getelementptr inbounds nuw i8, ptr %i.ll, i64 20
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !10
  %i.lp = sub nsw i32 %.0.lcssa, %i.lo
  store i32 %i.lp, ptr %i.lm, align 4, !tbaa !10
  %indvars.iv.next85.2 = shl i64 %indvars.iv84, 3
  %i.lq = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next85.2 ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 24
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lq, i64 28
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !10
  %i.lu = sub nsw i32 %.0.lcssa, %i.lt
  store i32 %i.lu, ptr %i.lr, align 4, !tbaa !10
  %indvars.iv.next85.3 = add nuw nsw i64 %indvars.iv84, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge61.loopexit.unr-lcssa, label %.lr.ph60, !llvm.loop !122

._crit_edge61.loopexit.unr-lcssa:                 ; preds = %.lr.ph60
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge61, label %.lr.ph60.epil.preheader

.lr.ph60.epil.preheader:                          ; preds = %._crit_edge61.loopexit.unr-lcssa, %.lr.ph60.preheader
  %indvars.iv84.epil.init = phi i64 [ 0, %.lr.ph60.preheader ], [ %indvars.iv.next85.3, %._crit_edge61.loopexit.unr-lcssa ]
  %lcmp.mod98 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod98)
  br label %.lr.ph60.epil

.lr.ph60.epil:                                    ; preds = %.lr.ph60.epil, %.lr.ph60.epil.preheader
  %indvars.iv84.epil = phi i64 [ %indvars.iv84.epil.init, %.lr.ph60.epil.preheader ], [ %indvars.iv.next85.epil, %.lr.ph60.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph60.epil.preheader ], [ %epil.iter.next, %.lr.ph60.epil ]
  %.idx92.epil = shl nuw nsw i64 %indvars.iv84.epil, 3
  %i.lv = getelementptr inbounds nuw i8, ptr %2, i64 %.idx92.epil ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 4
  %i.lx = load i32, ptr %i.lw, align 4, !tbaa !10
  %i.ly = sub nsw i32 %.0.lcssa, %i.lx
  store i32 %i.ly, ptr %i.lv, align 4, !tbaa !10
  %indvars.iv.next85.epil = add nuw nsw i64 %indvars.iv84.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge61, label %.lr.ph60.epil, !llvm.loop !123

._crit_edge61:                                    ; preds = %._crit_edge61.loopexit.unr-lcssa, %.lr.ph60.epil, %.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i32 @If_CluSemiCanonicize(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #11 {
bb.a:
  %i.a = alloca [1024 x i64], align 16            ; 3 uses
  %i.b = alloca [32 x i32], align 16              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  call void @If_CluCountOnesInCofs(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %i.b)
  %i.c = icmp sgt i32 %1, 0
  br i1 %i.c, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.a
  %i.d = icmp samesign ult i32 %1, 7
  %i.e = add nsw i32 %1, -6
  %i.f = shl nuw i32 1, %i.e
  %i.g = select i1 %i.d, i32 1, i32 %i.f          ; 7 uses
  %i.h = icmp sgt i32 %i.g, 0                     ; 2 uses
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %i.g, 4
  %i.i = and i32 %i.g, 2147483644
  %n.vec = zext nneg i32 %i.i to i64
  %exitcond54.not.i = icmp eq i32 %i.g, 1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %exitcond54.not.i.1 = icmp eq i32 %i.g, 2
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.b

.lr.ph105.preheader:                              ; preds = %If_CluChangePhase.exit
  %wide.trip.count125 = zext nneg i32 %1 to i64
  %min.iters.check177 = icmp ult i32 %1, 8
  br i1 %min.iters.check177, label %.lr.ph105.preheader228, label %vector.ph178

vector.ph178:                                     ; preds = %.lr.ph105.preheader
  %n.vec179 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  br label %vector.body180

vector.body180:                                   ; preds = %vector.body180, %vector.ph178
  %index181 = phi i64 [ 0, %vector.ph178 ], [ %index.next182, %vector.body180 ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph178 ], [ %vec.ind.next, %vector.body180 ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index181 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store <4 x i32> %vec.ind, ptr %i.l, align 4, !tbaa !10
  store <4 x i32> %step.add, ptr %i.m, align 4, !tbaa !10
  %index.next182 = add nuw i64 %index181, 8       ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.n = icmp eq i64 %index.next182, %n.vec179
  br i1 %i.n, label %middle.block183, label %vector.body180, !llvm.loop !124

middle.block183:                                  ; preds = %vector.body180
  %cmp.n184 = icmp eq i64 %n.vec179, %wide.trip.count
  br i1 %cmp.n184, label %.preheader, label %.lr.ph105.preheader228

.lr.ph105.preheader228:                           ; preds = %.lr.ph105.preheader, %middle.block183
  %indvars.iv122.ph = phi i64 [ 0, %.lr.ph105.preheader ], [ %n.vec179, %middle.block183 ]
  br label %.lr.ph105

bb.b:                                             ; preds = %.lr.ph, %If_CluChangePhase.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %If_CluChangePhase.exit ] ; 6 uses
  %.066102 = phi i32 [ 0, %.lr.ph ], [ %.167, %If_CluChangePhase.exit ] ; 2 uses
  %.idx = shl nuw nsw i64 %indvars.iv, 3
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx ; 3 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !10   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 4 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !10   ; 2 uses
  %.not80 = icmp sgt i32 %i.p, %i.r
  br i1 %.not80, label %bb.c, label %If_CluChangePhase.exit

bb.c:                                             ; preds = %bb.b
  %i.s = trunc nuw nsw i64 %indvars.iv to i32
  %i.t = shl nuw i32 1, %i.s                      ; 2 uses
  %i.u = or i32 %i.t, %.066102                    ; 7 uses
  store i32 %i.r, ptr %i.o, align 8, !tbaa !10
  store i32 %i.p, ptr %i.q, align 4, !tbaa !10
  %i.v = icmp samesign ult i64 %indvars.iv, 6
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  br i1 %i.h, label %.lr.ph.i, label %If_CluChangePhase.exit

.lr.ph.i:                                         ; preds = %bb.d
  %i.w = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6, i64 %indvars.iv
  %i.x = load i64, ptr %i.w, align 8, !tbaa !18   ; 5 uses
  %i.y = xor i64 %i.x, -1                         ; 4 uses
  %i.z = zext nneg i32 %i.t to i64                ; 7 uses
  br i1 %min.iters.check, label %scalar.ph, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.x, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert154 = insertelement <2 x i64> poison, i64 %i.y, i64 0
  %broadcast.splat155 = shufflevector <2 x i64> %broadcast.splatinsert154, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert156 = insertelement <2 x i64> poison, i64 %i.z, i64 0
  %broadcast.splat157 = shufflevector <2 x i64> %broadcast.splatinsert156, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.aa, align 8, !tbaa !18 ; 2 uses
  %wide.load158 = load <2 x i64>, ptr %i.ab, align 8, !tbaa !18 ; 2 uses
  %i.ac = and <2 x i64> %wide.load, %broadcast.splat155
  %i.ad = and <2 x i64> %wide.load158, %broadcast.splat155
  %i.ae = shl <2 x i64> %i.ac, %broadcast.splat157
  %i.af = shl <2 x i64> %i.ad, %broadcast.splat157
  %i.ag = and <2 x i64> %wide.load, %broadcast.splat
  %i.ah = and <2 x i64> %wide.load158, %broadcast.splat
  %i.ai = lshr <2 x i64> %i.ag, %broadcast.splat157
  %i.aj = lshr <2 x i64> %i.ah, %broadcast.splat157
  %i.ak = or <2 x i64> %i.ae, %i.ai
  %i.al = or <2 x i64> %i.af, %i.aj
  store <2 x i64> %i.ak, ptr %i.aa, align 8, !tbaa !18
  store <2 x i64> %i.al, ptr %i.ab, align 8, !tbaa !18
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %If_CluChangePhase.exit, label %vector.body, !llvm.loop !125

scalar.ph:                                        ; preds = %.lr.ph.i
  %i.an = load i64, ptr %0, align 8, !tbaa !18    ; 2 uses
  %i.ao = and i64 %i.an, %i.y
  %i.ap = shl i64 %i.ao, %i.z
  %i.aq = and i64 %i.an, %i.x
  %i.ar = lshr i64 %i.aq, %i.z
  %i.as = or i64 %i.ap, %i.ar
  store i64 %i.as, ptr %0, align 8, !tbaa !18
  br i1 %exitcond54.not.i, label %If_CluChangePhase.exit, label %scalar.ph.1

scalar.ph.1:                                      ; preds = %scalar.ph
  %i.at = load i64, ptr %i.j, align 8, !tbaa !18  ; 2 uses
  %i.au = and i64 %i.at, %i.y
  %i.av = shl i64 %i.au, %i.z
  %i.aw = and i64 %i.at, %i.x
  %i.ax = lshr i64 %i.aw, %i.z
  %i.ay = or i64 %i.av, %i.ax
  store i64 %i.ay, ptr %i.j, align 8, !tbaa !18
  br i1 %exitcond54.not.i.1, label %If_CluChangePhase.exit, label %scalar.ph.2

scalar.ph.2:                                      ; preds = %scalar.ph.1
  %i.az = load i64, ptr %i.k, align 8, !tbaa !18  ; 2 uses
  %i.ba = and i64 %i.az, %i.y
  %i.bb = shl i64 %i.ba, %i.z
  %i.bc = and i64 %i.az, %i.x
  %i.bd = lshr i64 %i.bc, %i.z
  %i.be = or i64 %i.bb, %i.bd
  store i64 %i.be, ptr %i.k, align 8, !tbaa !18
  br label %If_CluChangePhase.exit

bb.e:                                             ; preds = %bb.c
  br i1 %i.h, label %.preheader.lr.ph.i, label %If_CluChangePhase.exit

.preheader.lr.ph.i:                               ; preds = %bb.e
  %i.bf = trunc i64 %indvars.iv to i32            ; 2 uses
  %i.bg = add i32 %i.bf, -6                       ; 2 uses
  %i.bh = shl nuw i32 1, %i.bg                    ; 4 uses
  %i.bi = shl i32 2, %i.bg                        ; 4 uses
  %i.bj = sext i32 %i.bi to i64                   ; 2 uses
  %i.bk = sext i32 %i.bh to i64                   ; 2 uses
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.bh, i32 1) ; 2 uses
  %wide.trip.count.i = zext nneg i32 %smax.i to i64 ; 4 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.g, i32 %i.bi)
  %3 = add nsw i32 %smax, -1
  %i.bl = shl nuw nsw i64 %wide.trip.count.i, 3   ; 2 uses
  %i.bm = shl nsw i64 %i.bk, 3                    ; 2 uses
  %scevgep159 = getelementptr i8, ptr %0, i64 %i.bm
  %min.iters.check163 = icmp slt i32 %i.bh, 10
  %i.bn = add i32 %i.bf, -5
  %i.bo = lshr i32 %3, %i.bn
  %i.bp = zext i32 %i.bo to i64
  %i.bq = shl nuw nsw i64 %i.bp, 3
  %i.br = mul i64 %i.bq, %i.bj                    ; 2 uses
  %i.bs = getelementptr i8, ptr %0, i64 %i.br
  %scevgep = getelementptr i8, ptr %i.bs, i64 %i.bl
  %i.bt = getelementptr i8, ptr %0, i64 %i.br
  %i.bu = getelementptr i8, ptr %i.bt, i64 %i.bm
  %scevgep160 = getelementptr i8, ptr %i.bu, i64 %i.bl
  %bound0 = icmp ult ptr %0, %scevgep160
  %bound1 = icmp ult ptr %scevgep159, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i32 %i.bi, 0
  %i.bv = or i1 %found.conflict, %stride.check
  %n.vec165 = and i64 %wide.trip.count.i, 2147483644
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.bw = icmp slt i32 %i.bh, 2
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod232 = trunc i32 %smax.i to i1
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.lr.ph.i
  %.045.i = phi i32 [ %i.cm, %._crit_edge.i ], [ 0, %.preheader.lr.ph.i ]
  %.03844.i = phi ptr [ %i.cl, %._crit_edge.i ], [ %0, %.preheader.lr.ph.i ] ; 6 uses
  %invariant.gep.i = getelementptr [8 x i8], ptr %.03844.i, i64 %i.bk ; 4 uses
  %brmerge250 = select i1 %min.iters.check163, i1 true, i1 %i.bv
  br i1 %brmerge250, label %scalar.ph162.preheader, label %vector.body166

scalar.ph162.preheader:                           ; preds = %.preheader.i
  br i1 %i.bw, label %scalar.ph162.epil.preheader, label %scalar.ph162

vector.body166:                                   ; preds = %.preheader.i, %vector.body166
  %index167 = phi i64 [ %index.next172, %vector.body166 ], [ 0, %.preheader.i ] ; 3 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %.03844.i, i64 %index167 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16 ; 2 uses
  %wide.load168 = load <2 x i64>, ptr %i.bx, align 8, !tbaa !18, !alias.scope !126, !noalias !129
  %wide.load169 = load <2 x i64>, ptr %i.by, align 8, !tbaa !18, !alias.scope !126, !noalias !129
  %i.bz = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %index167 ; 3 uses
  %i.ca = getelementptr i8, ptr %i.bz, i64 16     ; 2 uses
  %wide.load170 = load <2 x i64>, ptr %i.bz, align 8, !tbaa !18, !alias.scope !129
  %wide.load171 = load <2 x i64>, ptr %i.ca, align 8, !tbaa !18, !alias.scope !129
  store <2 x i64> %wide.load170, ptr %i.bx, align 8, !tbaa !18, !alias.scope !126, !noalias !129
  store <2 x i64> %wide.load171, ptr %i.by, align 8, !tbaa !18, !alias.scope !126, !noalias !129
  store <2 x i64> %wide.load168, ptr %i.bz, align 8, !tbaa !18, !alias.scope !129
  store <2 x i64> %wide.load169, ptr %i.ca, align 8, !tbaa !18, !alias.scope !129
  %index.next172 = add nuw i64 %index167, 4       ; 2 uses
  %i.cb = icmp eq i64 %index.next172, %n.vec165
  br i1 %i.cb, label %._crit_edge.i, label %vector.body166, !llvm.loop !131

scalar.ph162:                                     ; preds = %scalar.ph162.preheader, %scalar.ph162
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %scalar.ph162 ], [ 0, %scalar.ph162.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %scalar.ph162 ], [ 0, %scalar.ph162.preheader ]
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %.03844.i, i64 %indvars.iv.i ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !18
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i ; 2 uses
  %i.ce = load i64, ptr %gep.i, align 8, !tbaa !18
  store i64 %i.ce, ptr %i.cc, align 8, !tbaa !18
  store i64 %i.cd, ptr %gep.i, align 8, !tbaa !18
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %.03844.i, i64 %indvars.iv.next.i ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !18
  %gep.i.1 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i ; 2 uses
  %i.ch = load i64, ptr %gep.i.1, align 8, !tbaa !18
  store i64 %i.ch, ptr %i.cf, align 8, !tbaa !18
  store i64 %i.cg, ptr %gep.i.1, align 8, !tbaa !18
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %scalar.ph162, !llvm.loop !132

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %scalar.ph162
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %scalar.ph162.epil.preheader

scalar.ph162.epil.preheader:                      ; preds = %._crit_edge.i.loopexit.unr-lcssa, %scalar.ph162.preheader
  %indvars.iv.i.epil.init = phi i64 [ 0, %scalar.ph162.preheader ], [ %indvars.iv.next.i.1, %._crit_edge.i.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod232)
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %.03844.i, i64 %indvars.iv.i.epil.init ; 2 uses
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !18
  %gep.i.epil = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i.epil.init ; 2 uses
  %i.ck = load i64, ptr %gep.i.epil, align 8, !tbaa !18
  store i64 %i.ck, ptr %i.ci, align 8, !tbaa !18
  store i64 %i.cj, ptr %gep.i.epil, align 8, !tbaa !18
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %vector.body166, %scalar.ph162.epil.preheader, %._crit_edge.i.loopexit.unr-lcssa
  %i.cl = getelementptr inbounds [8 x i8], ptr %.03844.i, i64 %i.bj
  %i.cm = add nsw i32 %.045.i, %i.bi              ; 2 uses
  %i.cn = icmp slt i32 %i.cm, %i.g
  br i1 %i.cn, label %.preheader.i, label %If_CluChangePhase.exit, !llvm.loop !117

If_CluChangePhase.exit:                           ; preds = %._crit_edge.i, %vector.body, %scalar.ph, %scalar.ph.1, %scalar.ph.2, %bb.e, %bb.d, %bb.b
  %.167 = phi i32 [ %.066102, %bb.b ], [ %i.u, %bb.d ], [ %i.u, %vector.body ], [ %i.u, %bb.e ], [ %i.u, %scalar.ph ], [ %i.u, %scalar.ph.2 ], [ %i.u, %scalar.ph.1 ], [ %i.u, %._crit_edge.i ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph105.preheader, label %bb.b, !llvm.loop !133

.preheader:                                       ; preds = %.lr.ph105, %middle.block183, %bb.a
  %.066.lcssa144 = phi i32 [ 0, %bb.a ], [ %.167, %middle.block183 ], [ %.167, %.lr.ph105 ]
  %i.co = icmp sgt i32 %1, 1
  %i.cp = icmp slt i32 %1, 7
  %i.cq = add nsw i32 %1, -6
  %i.cr = shl nuw i32 1, %i.cq
  %i.cs = select i1 %i.cp, i32 1, i32 %i.cr       ; 5 uses
  %i.ct = icmp slt i32 %i.cs, 1                   ; 4 uses
  %i.cu = zext i32 %i.cs to i64                   ; 5 uses
  br i1 %i.co, label %.lr.ph111.us.preheader, label %If_CluCopy.exit

.lr.ph111.us.preheader:                           ; preds = %.preheader
  %i.cv = add nsw i32 %1, -1
  %wide.trip.count131 = zext i32 %i.cv to i64
  %i.cw = add nsw i64 %i.cu, -1                   ; 3 uses
  %i.cx = lshr i64 %i.cw, 1                       ; 2 uses
  %i.cy = add nuw i64 %i.cx, 1                    ; 2 uses
  %i.cz = icmp eq i64 %i.cx, 0
  %unroll_iter242 = and i64 %i.cy, -2
  %i.da = and i64 %i.cw, 2
  %lcmp.mod240.not.not = icmp eq i64 %i.da, 0
  %lcmp.mod241 = trunc i64 %i.cy to i1
  %min.iters.check190 = icmp ult i32 %i.cs, 4
  %n.vec192 = and i64 %i.cu, 2147483644
  %xtraiter244 = and i64 %i.cu, 1
  %i.db = icmp eq i64 %i.cw, 0
  %unroll_iter248 = and i64 %i.cu, 2147483646
  %lcmp.mod246.not = icmp eq i64 %xtraiter244, 0
  %lcmp.mod247 = trunc i32 %i.cs to i1
  br label %.lr.ph111.us

.lr.ph111.us:                                     ; preds = %.lr.ph111.us.backedge, %.lr.ph111.us.preheader
  %indvars.iv128 = phi i64 [ 0, %.lr.ph111.us.preheader ], [ %indvars.iv128.be, %.lr.ph111.us.backedge ] ; 8 uses
  %.1110.us = phi i32 [ 0, %.lr.ph111.us.preheader ], [ %.2.us, %.lr.ph111.us.backedge ] ; 2 uses
  %.061109.us = phi i32 [ 0, %.lr.ph111.us.preheader ], [ %.061109.us.be, %.lr.ph111.us.backedge ]
  %.169107.us = phi ptr [ %i.a, %.lr.ph111.us.preheader ], [ %.270.us, %.lr.ph111.us.backedge ] ; 19 uses
  %.172106.us = phi ptr [ %0, %.lr.ph111.us.preheader ], [ %.273.us, %.lr.ph111.us.backedge ] ; 19 uses
  %.169107.us187 = ptrtoaddr ptr %.169107.us to i64 ; 2 uses
  %.172106.us188 = ptrtoaddr ptr %.172106.us to i64 ; 2 uses
  %.idx141 = shl nuw nsw i64 %indvars.iv128, 3
  %i.dc = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx141 ; 3 uses
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !10 ; 2 uses
  %indvars.iv.next129 = add nuw nsw i64 %indvars.iv128, 1 ; 3 uses
  %.idx142 = shl nuw nsw i64 %indvars.iv.next129, 3
  %i.de = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx142 ; 3 uses
  %i.df = load i32, ptr %i.de, align 8, !tbaa !10 ; 2 uses
  %.not79.us = icmp sgt i32 %i.dd, %i.df
  br i1 %.not79.us, label %bb.f, label %If_CluSwapAdjacent.exit.us

bb.f:                                             ; preds = %.lr.ph111.us
  %i.dg = add nsw i32 %.1110.us, 1                ; 9 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv128 ; 2 uses
  %i.di = load <2 x i32>, ptr %i.dh, align 4, !tbaa !10
  %i.dj = shufflevector <2 x i32> %i.di, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.dj, ptr %i.dh, align 4, !tbaa !10
  store i32 %i.df, ptr %i.dc, align 8, !tbaa !10
  store i32 %i.dd, ptr %i.de, align 8, !tbaa !10
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dc, i64 4 ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !10
  %i.dm = getelementptr inbounds nuw i8, ptr %i.de, i64 4 ; 2 uses
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !10
  store i32 %i.dn, ptr %i.dk, align 4, !tbaa !10
  store i32 %i.dl, ptr %i.dm, align 4, !tbaa !10
  %i.do = icmp samesign ult i64 %indvars.iv128, 5
  br i1 %i.do, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not.i81.us = icmp eq i64 %indvars.iv128, 5
  br i1 %.not.i81.us, label %.preheader.i89.us, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %i.ct, label %If_CluSwapAdjacent.exit.us, label %.preheader87.lr.ph.i.us

.preheader87.lr.ph.i.us:                          ; preds = %bb.h
  %i.dp = trunc i64 %indvars.iv128 to i32
  %i.dq = add i32 %i.dp, -6                       ; 4 uses
  %i.dr = shl nuw i32 1, %i.dq                    ; 4 uses
  %i.ds = shl i32 4, %i.dq                        ; 2 uses
  %i.dt = sext i32 %i.ds to i64                   ; 2 uses
  %i.du = shl i32 3, %i.dq
  %i.dv = shl i32 2, %i.dq
  %smax.i82.us = tail call i32 @llvm.smax.i32(i32 %i.dr, i32 1)
  %i.dw = sext i32 %i.dv to i64                   ; 2 uses
  %i.dx = sext i32 %i.dr to i64                   ; 2 uses
  %i.dy = sext i32 %i.du to i64                   ; 6 uses
  %wide.trip.count.i83.us = zext nneg i32 %smax.i82.us to i64 ; 4 uses
  %i.dz = shl nuw nsw i64 %wide.trip.count.i83.us, 3 ; 3 uses
  %min.iters.check212 = icmp slt i32 %i.dr, 4
  %i.ea = sub i64 %.172106.us188, %.169107.us187
  %diff.check210 = icmp ugt i64 %i.ea, -32
  %or.cond = select i1 %min.iters.check212, i1 true, i1 %diff.check210
  %n.vec214 = and i64 %wide.trip.count.i83.us, 2147483644
  %xtraiter233 = and i64 %wide.trip.count.i83.us, 3 ; 3 uses
  %i.eb = icmp slt i32 %i.dr, 4
  %unroll_iter236 = and i64 %wide.trip.count.i83.us, 2147483644
  %lcmp.mod234.not = icmp eq i64 %xtraiter233, 0
  %lcmp.mod235 = icmp ne i64 %xtraiter233, 0
  br label %.lr.ph.us.preheader.i.us
end_hunk_1
begin_hunk_2_@If_CluSemiCanonicizeVerify:bb.a
  %i.ax = add nsw i64 %indvars.iv.next151.i.us.2, %i.ab ; 2 uses
  %i.ay = getelementptr inbounds [8 x i8], ptr %.07996.us.i.us, i64 %i.ax
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !18
  %i.ba = getelementptr inbounds [8 x i8], ptr %.07897.us.i.us, i64 %i.ax
  store i64 %i.az, ptr %i.ba, align 8, !tbaa !18
  %indvars.iv.next151.i.us.3 = add nuw nsw i64 %indvars.iv150.i.us, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.i.us.loopexit.unr-lcssa, label %.lr.ph95.us.i.us, !llvm.loop !158

._crit_edge.us.i.us.loopexit.unr-lcssa:           ; preds = %.lr.ph95.us.i.us
  br i1 %lcmp.mod.not, label %._crit_edge.us.i.us, label %.lr.ph95.us.i.us.epil.preheader

.lr.ph95.us.i.us.epil.preheader:                  ; preds = %._crit_edge.us.i.us.loopexit.unr-lcssa, %.lr.ph95.us.i.us.preheader
  %indvars.iv150.i.us.epil.init = phi i64 [ 0, %.lr.ph95.us.i.us.preheader ], [ %indvars.iv.next151.i.us.3, %._crit_edge.us.i.us.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod205)
  br label %.lr.ph95.us.i.us.epil

.lr.ph95.us.i.us.epil:                            ; preds = %.lr.ph95.us.i.us.epil, %.lr.ph95.us.i.us.epil.preheader
  %indvars.iv150.i.us.epil = phi i64 [ %indvars.iv.next151.i.us.epil, %.lr.ph95.us.i.us.epil ], [ %indvars.iv150.i.us.epil.init, %.lr.ph95.us.i.us.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph95.us.i.us.epil ], [ 0, %.lr.ph95.us.i.us.epil.preheader ]
  %i.bb = add nsw i64 %indvars.iv150.i.us.epil, %i.ab ; 2 uses
  %i.bc = getelementptr inbounds [8 x i8], ptr %.07996.us.i.us, i64 %i.bb
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !18
  %i.be = getelementptr inbounds [8 x i8], ptr %.07897.us.i.us, i64 %i.bb
  store i64 %i.bd, ptr %i.be, align 8, !tbaa !18
  %indvars.iv.next151.i.us.epil = add nuw nsw i64 %indvars.iv150.i.us.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us.i.us, label %.lr.ph95.us.i.us.epil, !llvm.loop !159

._crit_edge.us.i.us:                              ; preds = %vector.body155, %._crit_edge.us.i.us.loopexit.unr-lcssa, %.lr.ph95.us.i.us.epil
  %i.bf = getelementptr inbounds [8 x i8], ptr %.07996.us.i.us, i64 %i.w
  %i.bg = getelementptr inbounds [8 x i8], ptr %.07897.us.i.us, i64 %i.w
  %i.bh = add nsw i32 %.098.us.i.us, %i.v         ; 2 uses
  %i.bi = icmp slt i32 %i.bh, %i.f
  br i1 %i.bi, label %.lr.ph.us.preheader.i.us, label %If_CluSwapAdjacent.exit.us, !llvm.loop !137

.preheader.i.us:                                  ; preds = %bb.d
  br i1 %i.g, label %If_CluSwapAdjacent.exit.us, label %.lr.ph.i71.us

.lr.ph.i71.us:                                    ; preds = %.preheader.i.us, %.lr.ph.i71.us
  %indvars.iv155.i.us = phi i64 [ %indvars.iv.next156.i.us, %.lr.ph.i71.us ], [ 0, %.preheader.i.us ] ; 3 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %.155103.us, i64 %indvars.iv155.i.us
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %.152104.us, i64 %indvars.iv155.i.us
  %i.bl = load <2 x i64>, ptr %i.bj, align 8, !tbaa !18 ; 3 uses
  %i.bm = and <2 x i64> %i.bl, <i64 4294967295, i64 -4294967296>
  %i.bn = shl <2 x i64> %i.bl, splat (i64 32)
  %i.bo = lshr <2 x i64> %i.bl, splat (i64 32)
  %i.bp = shufflevector <2 x i64> %i.bn, <2 x i64> %i.bo, <2 x i32> <i32 1, i32 2>
  %i.bq = or disjoint <2 x i64> %i.bp, %i.bm
  store <2 x i64> %i.bq, ptr %i.bk, align 8, !tbaa !18
  %indvars.iv.next156.i.us = add nuw nsw i64 %indvars.iv155.i.us, 2 ; 2 uses
  %i.br = icmp samesign ult i64 %indvars.iv.next156.i.us, %.pre-phi
  br i1 %i.br, label %.lr.ph.i71.us, label %If_CluSwapAdjacent.exit.us, !llvm.loop !138

bb.f:                                             ; preds = %bb.c
  br i1 %i.g, label %If_CluSwapAdjacent.exit.us, label %.lr.ph127.i.us

.lr.ph127.i.us:                                   ; preds = %bb.f
  %i.bs = trunc nuw nsw i64 %indvars.iv to i32
  %i.bt = shl nuw nsw i32 1, %i.bs
  %i.bu = getelementptr inbounds nuw [24 x i8], ptr @PMasks, i64 %indvars.iv ; 3 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !18 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !18 ; 4 uses
  %i.by = zext nneg i32 %i.bt to i64              ; 7 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !18 ; 4 uses
  %i.cb = sub i64 %.155103.us141, %.152104.us140
  %diff.check = icmp ugt i64 %i.cb, -32
  %or.cond199 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond199, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph127.i.us
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.bv, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert142 = insertelement <2 x i64> poison, i64 %i.bx, i64 0
  %broadcast.splat143 = shufflevector <2 x i64> %broadcast.splatinsert142, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert144 = insertelement <2 x i64> poison, i64 %i.by, i64 0
  %broadcast.splat145 = shufflevector <2 x i64> %broadcast.splatinsert144, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert146 = insertelement <2 x i64> poison, i64 %i.ca, i64 0
  %broadcast.splat147 = shufflevector <2 x i64> %broadcast.splatinsert146, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %.155103.us, i64 %index ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %wide.load = load <2 x i64>, ptr %i.cc, align 8, !tbaa !18 ; 3 uses
  %wide.load148 = load <2 x i64>, ptr %i.cd, align 8, !tbaa !18 ; 3 uses
  %i.ce = and <2 x i64> %wide.load, %broadcast.splat
  %i.cf = and <2 x i64> %wide.load148, %broadcast.splat
  %i.cg = and <2 x i64> %wide.load, %broadcast.splat143
  %i.ch = and <2 x i64> %wide.load148, %broadcast.splat143
  %i.ci = shl <2 x i64> %i.cg, %broadcast.splat145
  %i.cj = shl <2 x i64> %i.ch, %broadcast.splat145
  %i.ck = or <2 x i64> %i.ci, %i.ce
  %i.cl = or <2 x i64> %i.cj, %i.cf
  %i.cm = and <2 x i64> %wide.load, %broadcast.splat147
  %i.cn = and <2 x i64> %wide.load148, %broadcast.splat147
  %i.co = lshr <2 x i64> %i.cm, %broadcast.splat145
  %i.cp = lshr <2 x i64> %i.cn, %broadcast.splat145
  %i.cq = or <2 x i64> %i.ck, %i.co
  %i.cr = or <2 x i64> %i.cl, %i.cp
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %.152104.us, i64 %index ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  store <2 x i64> %i.cq, ptr %i.cs, align 8, !tbaa !18
  store <2 x i64> %i.cr, ptr %i.ct, align 8, !tbaa !18
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cu = icmp eq i64 %index.next, %n.vec
  br i1 %i.cu, label %middle.block, label %vector.body, !llvm.loop !160

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %If_CluSwapAdjacent.exit.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph127.i.us, %middle.block
  %indvars.iv158.i.us.ph = phi i64 [ 0, %.lr.ph127.i.us ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %indvars.iv158.i.us.ph, 1
  br i1 %lcmp.mod207.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %.155103.us, i64 %indvars.iv158.i.us.ph
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !18 ; 3 uses
  %i.cx = and i64 %i.cw, %i.bv
  %i.cy = and i64 %i.cw, %i.bx
  %i.cz = shl i64 %i.cy, %i.by
  %i.da = or i64 %i.cz, %i.cx
  %i.db = and i64 %i.cw, %i.ca
  %i.dc = lshr i64 %i.db, %i.by
  %i.dd = or i64 %i.da, %i.dc
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %.152104.us, i64 %indvars.iv158.i.us.ph
  store i64 %i.dd, ptr %i.de, align 8, !tbaa !18
  %indvars.iv.next159.i.us.prol = or disjoint i64 %indvars.iv158.i.us.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv158.i.us.unr = phi i64 [ %indvars.iv158.i.us.ph, %scalar.ph.preheader ], [ %indvars.iv.next159.i.us.prol, %scalar.ph.prol ]
  %i.df = icmp eq i64 %.pre-phi, %.neg
  br i1 %i.df, label %If_CluSwapAdjacent.exit.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv158.i.us = phi i64 [ %indvars.iv.next159.i.us.1, %scalar.ph ], [ %indvars.iv158.i.us.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %.155103.us, i64 %indvars.iv158.i.us
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !18 ; 3 uses
  %i.di = and i64 %i.dh, %i.bv
  %i.dj = and i64 %i.dh, %i.bx
  %i.dk = shl i64 %i.dj, %i.by
  %i.dl = or i64 %i.dk, %i.di
  %i.dm = and i64 %i.dh, %i.ca
  %i.dn = lshr i64 %i.dm, %i.by
  %i.do = or i64 %i.dl, %i.dn
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %.152104.us, i64 %indvars.iv158.i.us
  store i64 %i.do, ptr %i.dp, align 8, !tbaa !18
  %indvars.iv.next159.i.us = add nuw nsw i64 %indvars.iv158.i.us, 1 ; 2 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %.155103.us, i64 %indvars.iv.next159.i.us
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !18 ; 3 uses
  %i.ds = and i64 %i.dr, %i.bv
  %i.dt = and i64 %i.dr, %i.bx
  %i.du = shl i64 %i.dt, %i.by
  %i.dv = or i64 %i.du, %i.ds
  %i.dw = and i64 %i.dr, %i.ca
  %i.dx = lshr i64 %i.dw, %i.by
  %i.dy = or i64 %i.dv, %i.dx
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %.152104.us, i64 %indvars.iv.next159.i.us
  store i64 %i.dy, ptr %i.dz, align 8, !tbaa !18
  %indvars.iv.next159.i.us.1 = add nuw nsw i64 %indvars.iv158.i.us, 2 ; 2 uses
  %exitcond162.not.i.us.1 = icmp eq i64 %indvars.iv.next159.i.us.1, %.pre-phi
  br i1 %exitcond162.not.i.us.1, label %If_CluSwapAdjacent.exit.us, label %scalar.ph, !llvm.loop !161

If_CluSwapAdjacent.exit.us:                       ; preds = %._crit_edge.us.i.us, %.lr.ph.i71.us, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.f, %.preheader.i.us, %.preheader87.lr.ph.i.us, %bb.e, %bb.b
  %i.ea = phi i32 [ %i.m, %bb.b ], [ %i.k, %bb.f ], [ %i.k, %.lr.ph.i71.us ], [ %i.k, %.preheader.i.us ], [ %i.k, %bb.e ], [ %i.k, %.preheader87.lr.ph.i.us ], [ %i.k, %middle.block ], [ %i.k, %scalar.ph.prol.loopexit ], [ %i.k, %scalar.ph ], [ %i.k, %._crit_edge.us.i.us ]
  %.256.us = phi ptr [ %.155103.us, %bb.b ], [ %.152104.us, %bb.f ], [ %.152104.us, %.lr.ph.i71.us ], [ %.152104.us, %.preheader.i.us ], [ %.152104.us, %bb.e ], [ %.152104.us, %.preheader87.lr.ph.i.us ], [ %.152104.us, %middle.block ], [ %.152104.us, %scalar.ph.prol.loopexit ], [ %.152104.us, %scalar.ph ], [ %.152104.us, %._crit_edge.us.i.us ] ; 3 uses
  %.253.us = phi ptr [ %.152104.us, %bb.b ], [ %.155103.us, %bb.f ], [ %.155103.us, %.lr.ph.i71.us ], [ %.155103.us, %.preheader.i.us ], [ %.155103.us, %bb.e ], [ %.155103.us, %.preheader87.lr.ph.i.us ], [ %.155103.us, %middle.block ], [ %.155103.us, %scalar.ph.prol.loopexit ], [ %.155103.us, %scalar.ph ], [ %.155103.us, %._crit_edge.us.i.us ] ; 3 uses
  %.148.us = phi i32 [ %.047106.us, %bb.b ], [ 1, %bb.f ], [ 1, %.lr.ph.i71.us ], [ 1, %.preheader.i.us ], [ 1, %bb.e ], [ 1, %.preheader87.lr.ph.i.us ], [ 1, %middle.block ], [ 1, %scalar.ph.prol.loopexit ], [ 1, %scalar.ph ], [ 1, %._crit_edge.us.i.us ] ; 2 uses
  %.2.us = phi i32 [ %.1107.us, %bb.b ], [ %i.p, %bb.f ], [ %i.p, %.lr.ph.i71.us ], [ %i.p, %.preheader.i.us ], [ %i.p, %bb.e ], [ %i.p, %.preheader87.lr.ph.i.us ], [ %i.p, %middle.block ], [ %i.p, %scalar.ph.prol.loopexit ], [ %i.p, %scalar.ph ], [ %i.p, %._crit_edge.us.i.us ] ; 3 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.b, !llvm.loop !162

._crit_edge.us:                                   ; preds = %If_CluSwapAdjacent.exit.us
  %.not.us = icmp eq i32 %.148.us, 0
  br i1 %.not.us, label %.split.us, label %.lr.ph.us, !llvm.loop !163

.split.us:                                        ; preds = %._crit_edge.us
  %i.eb = and i32 %.2.us, 1
  %i.ec = icmp eq i32 %i.eb, 0
  %i.ed = or i1 %i.g, %i.ec
  br i1 %i.ed, label %If_CluCopy.exit78, label %.lr.ph.preheader.i72

.lr.ph.preheader.i72:                             ; preds = %.split.us
  %i.ee = shl nuw nsw i64 %.pre-phi, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %.253.us, ptr align 8 %.256.us, i64 %i.ee, i1 false), !tbaa !18
  br label %If_CluCopy.exit78

If_CluCopy.exit78:                                ; preds = %If_CluCopy.exit, %.lr.ph.preheader.i72, %.split.us
  %i.ef = icmp sgt i32 %2, 0
  br i1 %i.ef, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %If_CluCopy.exit78
  %wide.trip.count122 = zext nneg i32 %2 to i64
  %min.iters.check164 = icmp samesign ult i64 %.pre-phi, 4
  %n.vec166 = and i64 %.pre-phi, 4294967292       ; 3 uses
  %cmp.n179 = icmp eq i64 %.pre-phi, %n.vec166
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %If_CluChangePhase.exit
  %indvars.iv119 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next120, %If_CluChangePhase.exit ] ; 5 uses
  %i.eg = trunc nuw nsw i64 %indvars.iv119 to i32
  %i.eh = shl nuw i32 1, %i.eg                    ; 2 uses
  %i.ei = and i32 %i.eh, %4
  %.not65 = icmp eq i32 %i.ei, 0
  br i1 %.not65, label %If_CluChangePhase.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ej = icmp samesign ult i64 %indvars.iv119, 6
  br i1 %i.ej, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  br i1 %i.g, label %If_CluChangePhase.exit, label %.lr.ph.i88

.lr.ph.i88:                                       ; preds = %bb.i
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6, i64 %indvars.iv119
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !18 ; 3 uses
  %i.em = xor i64 %i.el, -1                       ; 2 uses
  %i.en = zext nneg i32 %i.eh to i64              ; 3 uses
  br i1 %min.iters.check164, label %scalar.ph163.preheader, label %vector.ph165

vector.ph165:                                     ; preds = %.lr.ph.i88
  %broadcast.splatinsert167 = insertelement <2 x i64> poison, i64 %i.el, i64 0
  %broadcast.splat168 = shufflevector <2 x i64> %broadcast.splatinsert167, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert169 = insertelement <2 x i64> poison, i64 %i.em, i64 0
  %broadcast.splat170 = shufflevector <2 x i64> %broadcast.splatinsert169, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert171 = insertelement <2 x i64> poison, i64 %i.en, i64 0
  %broadcast.splat172 = shufflevector <2 x i64> %broadcast.splatinsert171, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  br label %vector.body173

vector.body173:                                   ; preds = %vector.body173, %vector.ph165
  %index174 = phi i64 [ 0, %vector.ph165 ], [ %index.next177, %vector.body173 ] ; 2 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index174 ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16 ; 2 uses
  %wide.load175 = load <2 x i64>, ptr %i.eo, align 8, !tbaa !18 ; 2 uses
  %wide.load176 = load <2 x i64>, ptr %i.ep, align 8, !tbaa !18 ; 2 uses
  %i.eq = and <2 x i64> %wide.load175, %broadcast.splat170
  %i.er = and <2 x i64> %wide.load176, %broadcast.splat170
  %i.es = shl <2 x i64> %i.eq, %broadcast.splat172
  %i.et = shl <2 x i64> %i.er, %broadcast.splat172
  %i.eu = and <2 x i64> %wide.load175, %broadcast.splat168
  %i.ev = and <2 x i64> %wide.load176, %broadcast.splat168
  %i.ew = lshr <2 x i64> %i.eu, %broadcast.splat172
  %i.ex = lshr <2 x i64> %i.ev, %broadcast.splat172
  %i.ey = or <2 x i64> %i.es, %i.ew
  %i.ez = or <2 x i64> %i.et, %i.ex
  store <2 x i64> %i.ey, ptr %i.eo, align 8, !tbaa !18
  store <2 x i64> %i.ez, ptr %i.ep, align 8, !tbaa !18
  %index.next177 = add nuw i64 %index174, 4       ; 2 uses
  %i.fa = icmp eq i64 %index.next177, %n.vec166
  br i1 %i.fa, label %middle.block178, label %vector.body173, !llvm.loop !164

middle.block178:                                  ; preds = %vector.body173
  br i1 %cmp.n179, label %If_CluChangePhase.exit, label %scalar.ph163.preheader

scalar.ph163.preheader:                           ; preds = %.lr.ph.i88, %middle.block178
  %indvars.iv50.i.ph = phi i64 [ 0, %.lr.ph.i88 ], [ %n.vec166, %middle.block178 ]
  br label %scalar.ph163

scalar.ph163:                                     ; preds = %scalar.ph163.preheader, %scalar.ph163
  %indvars.iv50.i = phi i64 [ %indvars.iv.next51.i, %scalar.ph163 ], [ %indvars.iv50.i.ph, %scalar.ph163.preheader ] ; 2 uses
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv50.i ; 2 uses
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !18 ; 2 uses
  %i.fd = and i64 %i.fc, %i.em
  %i.fe = shl i64 %i.fd, %i.en
  %i.ff = and i64 %i.fc, %i.el
  %i.fg = lshr i64 %i.ff, %i.en
  %i.fh = or i64 %i.fe, %i.fg
  store i64 %i.fh, ptr %i.fb, align 8, !tbaa !18
  %indvars.iv.next51.i = add nuw nsw i64 %indvars.iv50.i, 1 ; 2 uses
  %exitcond54.not.i = icmp eq i64 %indvars.iv.next51.i, %.pre-phi
  br i1 %exitcond54.not.i, label %If_CluChangePhase.exit, label %scalar.ph163, !llvm.loop !165

bb.j:                                             ; preds = %bb.h
  %i.fi = add nsw i64 %indvars.iv119, -6          ; 2 uses
  %i.fj = trunc nsw i64 %i.fi to i32              ; 3 uses
  %i.fk = shl nuw i32 1, %i.fj                    ; 4 uses
  br i1 %i.g, label %If_CluChangePhase.exit, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %bb.j
  %i.fl = icmp eq i64 %i.fi, 31
  %i.fm = shl i32 2, %i.fj                        ; 4 uses
  %i.fn = sext i32 %i.fm to i64                   ; 2 uses
  br i1 %i.fl, label %If_CluChangePhase.exit, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %.preheader.lr.ph.i
  %i.fo = sext i32 %i.fk to i64                   ; 2 uses
  %smax.i80 = tail call i32 @llvm.smax.i32(i32 %i.fk, i32 1) ; 2 uses
  %wide.trip.count.i81 = zext nneg i32 %smax.i80 to i64 ; 4 uses
  %smax = call i32 @llvm.smax.i32(i32 %i.f, i32 %i.fm)
  %5 = add nsw i32 %smax, -1
  %i.fp = shl nuw nsw i64 %wide.trip.count.i81, 3 ; 2 uses
  %i.fq = shl nsw i64 %i.fo, 3                    ; 2 uses
  %scevgep182 = getelementptr i8, ptr %0, i64 %i.fq
  %min.iters.check186 = icmp slt i32 %i.fk, 10
  %i.fr = add i32 %i.fj, 1
  %i.fs = lshr i32 %5, %i.fr
  %i.ft = zext i32 %i.fs to i64
  %i.fu = shl nuw nsw i64 %i.ft, 3
  %i.fv = mul i64 %i.fu, %i.fn                    ; 2 uses
  %i.fw = getelementptr i8, ptr %0, i64 %i.fv
  %scevgep = getelementptr i8, ptr %i.fw, i64 %i.fp
  %i.fx = getelementptr i8, ptr %0, i64 %i.fv
  %i.fy = getelementptr i8, ptr %i.fx, i64 %i.fq
  %scevgep183 = getelementptr i8, ptr %i.fy, i64 %i.fp
  %bound0 = icmp ult ptr %0, %scevgep183
  %bound1 = icmp ult ptr %scevgep182, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i32 %i.fm, 0
  %i.fz = or i1 %found.conflict, %stride.check
  %n.vec188 = and i64 %wide.trip.count.i81, 2147483644
  %xtraiter208 = and i64 %wide.trip.count.i81, 1
  %i.ga = icmp slt i32 %i.fk, 2
  %unroll_iter212 = and i64 %wide.trip.count.i81, 2147483646
  %lcmp.mod210.not = icmp eq i64 %xtraiter208, 0
  %lcmp.mod211 = trunc i32 %smax.i80 to i1
  br label %.preheader.i82

.preheader.i82:                                   ; preds = %._crit_edge.i, %.preheader.preheader.i
  %.045.i = phi i32 [ %i.gq, %._crit_edge.i ], [ 0, %.preheader.preheader.i ]
  %.03844.i = phi ptr [ %i.gp, %._crit_edge.i ], [ %0, %.preheader.preheader.i ] ; 6 uses
  %invariant.gep.i83 = getelementptr [8 x i8], ptr %.03844.i, i64 %i.fo ; 4 uses
  %brmerge = select i1 %min.iters.check186, i1 true, i1 %i.fz
  br i1 %brmerge, label %scalar.ph185.preheader, label %vector.body189

scalar.ph185.preheader:                           ; preds = %.preheader.i82
  br i1 %i.ga, label %scalar.ph185.epil.preheader, label %scalar.ph185

vector.body189:                                   ; preds = %.preheader.i82, %vector.body189
  %index190 = phi i64 [ %index.next195, %vector.body189 ], [ 0, %.preheader.i82 ] ; 3 uses
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %.03844.i, i64 %index190 ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 16 ; 2 uses
  %wide.load191 = load <2 x i64>, ptr %i.gb, align 8, !tbaa !18, !alias.scope !166, !noalias !169
  %wide.load192 = load <2 x i64>, ptr %i.gc, align 8, !tbaa !18, !alias.scope !166, !noalias !169
  %i.gd = getelementptr [8 x i8], ptr %invariant.gep.i83, i64 %index190 ; 3 uses
  %i.ge = getelementptr i8, ptr %i.gd, i64 16     ; 2 uses
  %wide.load193 = load <2 x i64>, ptr %i.gd, align 8, !tbaa !18, !alias.scope !169
  %wide.load194 = load <2 x i64>, ptr %i.ge, align 8, !tbaa !18, !alias.scope !169
  store <2 x i64> %wide.load193, ptr %i.gb, align 8, !tbaa !18, !alias.scope !166, !noalias !169
  store <2 x i64> %wide.load194, ptr %i.gc, align 8, !tbaa !18, !alias.scope !166, !noalias !169
  store <2 x i64> %wide.load191, ptr %i.gd, align 8, !tbaa !18, !alias.scope !169
  store <2 x i64> %wide.load192, ptr %i.ge, align 8, !tbaa !18, !alias.scope !169
  %index.next195 = add nuw i64 %index190, 4       ; 2 uses
  %i.gf = icmp eq i64 %index.next195, %n.vec188
  br i1 %i.gf, label %._crit_edge.i, label %vector.body189, !llvm.loop !171

scalar.ph185:                                     ; preds = %scalar.ph185.preheader, %scalar.ph185
  %indvars.iv.i84 = phi i64 [ %indvars.iv.next.i86.1, %scalar.ph185 ], [ 0, %scalar.ph185.preheader ] ; 4 uses
  %niter213 = phi i64 [ %niter213.next.1, %scalar.ph185 ], [ 0, %scalar.ph185.preheader ]
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %.03844.i, i64 %indvars.iv.i84 ; 2 uses
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !18
  %gep.i85 = getelementptr [8 x i8], ptr %invariant.gep.i83, i64 %indvars.iv.i84 ; 2 uses
  %i.gi = load i64, ptr %gep.i85, align 8, !tbaa !18
  store i64 %i.gi, ptr %i.gg, align 8, !tbaa !18
  store i64 %i.gh, ptr %gep.i85, align 8, !tbaa !18
  %indvars.iv.next.i86 = or disjoint i64 %indvars.iv.i84, 1 ; 2 uses
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %.03844.i, i64 %indvars.iv.next.i86 ; 2 uses
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !18
  %gep.i85.1 = getelementptr [8 x i8], ptr %invariant.gep.i83, i64 %indvars.iv.next.i86 ; 2 uses
  %i.gl = load i64, ptr %gep.i85.1, align 8, !tbaa !18
  store i64 %i.gl, ptr %i.gj, align 8, !tbaa !18
  store i64 %i.gk, ptr %gep.i85.1, align 8, !tbaa !18
  %indvars.iv.next.i86.1 = add nuw nsw i64 %indvars.iv.i84, 2 ; 2 uses
  %niter213.next.1 = add i64 %niter213, 2         ; 2 uses
  %niter213.ncmp.1 = icmp eq i64 %niter213.next.1, %unroll_iter212
  br i1 %niter213.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %scalar.ph185, !llvm.loop !172

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %scalar.ph185
  br i1 %lcmp.mod210.not, label %._crit_edge.i, label %scalar.ph185.epil.preheader

scalar.ph185.epil.preheader:                      ; preds = %._crit_edge.i.loopexit.unr-lcssa, %scalar.ph185.preheader
  %indvars.iv.i84.epil.init = phi i64 [ 0, %scalar.ph185.preheader ], [ %indvars.iv.next.i86.1, %._crit_edge.i.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod211)
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %.03844.i, i64 %indvars.iv.i84.epil.init ; 2 uses
  %i.gn = load i64, ptr %i.gm, align 8, !tbaa !18
  %gep.i85.epil = getelementptr [8 x i8], ptr %invariant.gep.i83, i64 %indvars.iv.i84.epil.init ; 2 uses
  %i.go = load i64, ptr %gep.i85.epil, align 8, !tbaa !18
  store i64 %i.go, ptr %i.gm, align 8, !tbaa !18
  store i64 %i.gn, ptr %gep.i85.epil, align 8, !tbaa !18
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %vector.body189, %scalar.ph185.epil.preheader, %._crit_edge.i.loopexit.unr-lcssa
  %i.gp = getelementptr inbounds [8 x i8], ptr %.03844.i, i64 %i.fn
  %i.gq = add nsw i32 %.045.i, %i.fm              ; 2 uses
  %i.gr = icmp slt i32 %i.gq, %i.f
  br i1 %i.gr, label %.preheader.i82, label %If_CluChangePhase.exit, !llvm.loop !117

If_CluChangePhase.exit:                           ; preds = %._crit_edge.i, %scalar.ph163, %middle.block178, %.preheader.lr.ph.i, %bb.j, %bb.i, %bb.g
  %indvars.iv.next120 = add nuw nsw i64 %indvars.iv119, 1 ; 2 uses
  %exitcond123.not = icmp eq i64 %indvars.iv.next120, %wide.trip.count122
  br i1 %exitcond123.not, label %._crit_edge, label %bb.g, !llvm.loop !173

._crit_edge:                                      ; preds = %If_CluChangePhase.exit, %If_CluCopy.exit78
  br i1 %i.g, label %If_CluEqual.exit.thread, label %.lr.ph.i92

bb.k:                                             ; preds = %.lr.ph.i92
  %indvars.iv.next.i95 = add nuw nsw i64 %indvars.iv.i93, 1 ; 2 uses
  %exitcond.not.i96 = icmp eq i64 %indvars.iv.next.i95, %.pre-phi
  br i1 %exitcond.not.i96, label %If_CluEqual.exit.thread, label %.lr.ph.i92, !llvm.loop !174

.lr.ph.i92:                                       ; preds = %._crit_edge, %bb.k
  %indvars.iv.i93 = phi i64 [ %indvars.iv.next.i95, %bb.k ], [ 0, %._crit_edge ] ; 3 uses
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i93
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !18
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i93
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !18
  %.not.i94 = icmp eq i64 %i.gt, %i.gv
  br i1 %.not.i94, label %bb.k, label %If_CluEqual.exit

If_CluEqual.exit:                                 ; preds = %.lr.ph.i92
  tail call void @Kit_DsdPrintFromTruth(ptr noundef nonnull %1, i32 noundef %2) #24
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  call void @Kit_DsdPrintFromTruth(ptr noundef nonnull %i.b, i32 noundef %2) #24
  %putchar63 = call i32 @putchar(i32 10)          ; 0 uses
  call void @Kit_DsdPrintFromTruth(ptr noundef nonnull %0, i32 noundef %2) #24
  %putchar64 = call i32 @putchar(i32 10)          ; 0 uses
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  br label %If_CluEqual.exit.thread

If_CluEqual.exit.thread:                          ; preds = %bb.k, %._crit_edge, %If_CluEqual.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

; Function Attrs: nofree nounwind uwtable
define void @If_CluPrintGroup(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !175
  %i.b = sext i8 %i.a to i32
  %i.c = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %i.b) ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !177
  %i.f = sext i8 %i.e to i32
  %i.g = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %i.f) ; 0 uses
  %i.h = load i8, ptr %0, align 1, !tbaa !175
  %i.i = icmp sgt i8 %i.h, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv
  %i.l = load i8, ptr %i.k, align 1, !tbaa !80
  %i.m = sext i8 %i.l to i32
  %i.n = add nsw i32 %i.m, 97
  %i.o = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.n) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.p = load i8, ptr %0, align 1, !tbaa !175
  %i.q = sext i8 %i.p to i64
  %i.r = icmp slt i64 %indvars.iv.next, %i.q
  br i1 %i.r, label %bb.b, label %._crit_edge, !llvm.loop !178

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define void @If_CluPrintConfig(i32 %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  store i64 %3, ptr %i.a, align 8, !tbaa !18
  %i.b = load i8, ptr %1, align 1, !tbaa !175
  %i.c = sext i8 %i.b to i32
  %i.d = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %i.c) ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !177
  %i.g = sext i8 %i.f to i32
  %i.h = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %i.g) ; 0 uses
  %i.i = load i8, ptr %1, align 1, !tbaa !175
  %i.j = icmp sgt i8 %i.i, 0
  br i1 %i.j, label %.lr.ph.i, label %If_CluPrintGroup.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 2
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.b ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv.i
  %i.m = load i8, ptr %i.l, align 1, !tbaa !80
  %i.n = sext i8 %i.m to i32
  %i.o = add nsw i32 %i.n, 97
  %i.p = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.o) ; 0 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.q = load i8, ptr %1, align 1, !tbaa !175
  %i.r = sext i8 %i.q to i64
end_hunk_2
