Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/tm_kpartitioning?download=true
inline.NumInlined: 12
inline.NumDeleted: 11
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@tm_kpartition:bb.a
  %i.j = icmp sgt i32 %i.h, 1
  br i1 %i.j, label %bb.h, label %kpartition_greedy.exit

bb.h:                                             ; preds = %bb.g
  %i.k = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.l = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.k, ptr noundef nonnull @.str.7, i32 noundef %4, i32 noundef %2) #14 ; 0 uses
  br label %kpartition_greedy.exit

bb.i:                                             ; preds = %bb.f
  %i.m = icmp sgt i32 %i.h, 5
  br i1 %i.m, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !12
  %i.p = add nsw i32 %i.o, -1
  %i.q = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %i.b, i32 noundef %2, i32 noundef %0, i32 noundef %i.p) ; 0 uses
  %i.r = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %4) ; 0 uses
  %i.s = icmp slt i32 %2, 17
  br i1 %i.s, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.t = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10) ; 0 uses
  tail call void @tm_print_1D_tab(ptr noundef %3, i32 noundef %4) #15
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %i.u = sext i32 %2 to i64                       ; 2 uses
  %i.v = shl nsw i64 %i.u, 2
  %i.w = icmp sgt i32 %2, 0                       ; 2 uses
  %i.x = sext i32 %0 to i64
  %.not.i = icmp eq i32 %4, 0
  %i.y = icmp sgt i32 %0, 0
  %i.z = add nsw i32 %2, -1
  %i.aa = icmp slt i32 %0, 1
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %wide.trip.count.i.i = zext i32 %2 to i64       ; 4 uses
  %i.ac = shl nuw nsw i64 %wide.trip.count.i.i, 2
  %i.ad = sext i32 %4 to i64
  %i.ae = sext i32 %i.b to i64
  %brmerge.i = or i1 %i.aa, %.not.i
  %wide.trip.count.i = zext nneg i32 %0 to i64    ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %eval_cost.exit.i, %bb.l
  %.094147.i = phi double [ -1.000000e+00, %bb.l ], [ %.016.lcssa.i..094147.i, %eval_cost.exit.i ] ; 3 uses
  %.096146.i = phi i32 [ 0, %bb.l ], [ %i.ec, %eval_cost.exit.i ]
  %.0100145.i = phi ptr [ null, %bb.l ], [ %..0100145.i, %eval_cost.exit.i ] ; 2 uses
  %i.af = tail call noalias ptr @malloc(i64 noundef %i.v) #16 ; 14 uses
  br i1 %i.w, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.m
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.af, i8 -1, i64 %i.ac, i1 false), !tbaa !8
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.preheader.i, %bb.m
  %i.ag = tail call noalias ptr @calloc(i64 noundef %i.x, i64 noundef 4) #17 ; 6 uses
  br i1 %brmerge.i, label %.loopexit.i, label %.lr.ph137.i

.lr.ph137.i:                                      ; preds = %._crit_edge.i, %._crit_edge131.i
  %indvars.iv157.i = phi i64 [ %indvars.iv.next158.i, %._crit_edge131.i ], [ 0, %._crit_edge.i ] ; 3 uses
  %.0135.i = phi i32 [ %.1.lcssa.i, %._crit_edge131.i ], [ %i.z, %._crit_edge.i ] ; 2 uses
  %.093134.i = phi i32 [ %.092.lcssa.i, %._crit_edge131.i ], [ 0, %._crit_edge.i ] ; 4 uses
  %indvars.iv.next158.i = add nuw nsw i64 %indvars.iv157.i, 1 ; 3 uses
  %i.ah = mul nsw i64 %indvars.iv.next158.i, %i.ae
  %i.ai = icmp slt i32 %.093134.i, %4
  br i1 %i.ai, label %.lr.ph123.preheader.i, label %._crit_edge124.i

.lr.ph123.preheader.i:                            ; preds = %.lr.ph137.i
  %i.aj = sext i32 %.093134.i to i64
  br label %.lr.ph123.i

.lr.ph123.i:                                      ; preds = %bb.n, %.lr.ph123.preheader.i
  %indvars.iv.i = phi i64 [ %i.aj, %.lr.ph123.preheader.i ], [ %indvars.iv.next.i, %bb.n ] ; 3 uses
  %i.ak = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv.i
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !8
  %i.am = sext i32 %i.al to i64
  %.not110.i = icmp sgt i64 %i.ah, %i.am
  br i1 %.not110.i, label %bb.n, label %._crit_edge124.loopexit.split.loop.exit.i

bb.n:                                             ; preds = %.lr.ph123.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.ad
  br i1 %exitcond.not.i, label %._crit_edge124.i, label %.lr.ph123.i, !llvm.loop !16

._crit_edge124.loopexit.split.loop.exit.i:        ; preds = %.lr.ph123.i
  %i.an = trunc nsw i64 %indvars.iv.i to i32
  br label %._crit_edge124.i

._crit_edge124.i:                                 ; preds = %bb.n, %._crit_edge124.loopexit.split.loop.exit.i, %.lr.ph137.i
  %.092.lcssa.i = phi i32 [ %.093134.i, %.lr.ph137.i ], [ %i.an, %._crit_edge124.loopexit.split.loop.exit.i ], [ %4, %bb.n ] ; 2 uses
  %.neg.i = sub i32 %.093134.i, %.092.lcssa.i
  %i.ao = add i32 %.neg.i, %i.b                   ; 5 uses
  %i.ap = icmp sgt i32 %i.ao, 0
  br i1 %i.ap, label %.lr.ph130.preheader.i, label %._crit_edge131.i

.lr.ph130.preheader.i:                            ; preds = %._crit_edge124.i
  %i.aq = sext i32 %.0135.i to i64                ; 3 uses
  %i.ar = trunc nuw nsw i64 %indvars.iv157.i to i32 ; 2 uses
  %i.as = zext nneg i32 %i.ao to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %i.ao, 8
  br i1 %min.iters.check, label %.lr.ph130.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph130.preheader.i
  %n.vec = and i64 %i.as, 2147483640              ; 4 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ar, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.at = sub nsw i64 %i.aq, %n.vec               ; 2 uses
  %i.au = trunc nuw nsw i64 %n.vec to i32
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = sub i64 %i.aq, %index
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.av ; 2 uses
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 -12
  %i.ay = getelementptr inbounds i8, ptr %i.aw, i64 -28
  store <4 x i32> %broadcast.splat, ptr %i.ax, align 4, !tbaa !8
  store <4 x i32> %broadcast.splat, ptr %i.ay, align 4, !tbaa !8
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !18

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.as
  br i1 %cmp.n, label %._crit_edge131.loopexit.i, label %.lr.ph130.i.preheader

.lr.ph130.i.preheader:                            ; preds = %.lr.ph130.preheader.i, %middle.block
  %indvars.iv153.i.ph = phi i64 [ %i.aq, %.lr.ph130.preheader.i ], [ %i.at, %middle.block ]
  %.097127.i.ph = phi i32 [ 0, %.lr.ph130.preheader.i ], [ %i.au, %middle.block ]
  br label %.lr.ph130.i

.lr.ph130.i:                                      ; preds = %.lr.ph130.i.preheader, %.lr.ph130.i
  %indvars.iv153.i = phi i64 [ %indvars.iv.next154.i, %.lr.ph130.i ], [ %indvars.iv153.i.ph, %.lr.ph130.i.preheader ] ; 2 uses
  %.097127.i = phi i32 [ %i.bb, %.lr.ph130.i ], [ %.097127.i.ph, %.lr.ph130.i.preheader ]
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.af, i64 %indvars.iv153.i
  store i32 %i.ar, ptr %i.ba, align 4, !tbaa !8
  %indvars.iv.next154.i = add nsw i64 %indvars.iv153.i, -1 ; 2 uses
  %i.bb = add nuw nsw i32 %.097127.i, 1           ; 2 uses
  %exitcond156.not.i = icmp eq i32 %i.bb, %i.ao
  br i1 %exitcond156.not.i, label %._crit_edge131.loopexit.i, label %.lr.ph130.i, !llvm.loop !21

._crit_edge131.loopexit.i:                        ; preds = %.lr.ph130.i, %middle.block
  %indvars.iv.next154.i.lcssa = phi i64 [ %i.at, %middle.block ], [ %indvars.iv.next154.i, %.lr.ph130.i ]
  %i.bc = trunc nsw i64 %indvars.iv.next154.i.lcssa to i32
  br label %._crit_edge131.i

._crit_edge131.i:                                 ; preds = %._crit_edge131.loopexit.i, %._crit_edge124.i
  %.1.lcssa.i = phi i32 [ %.0135.i, %._crit_edge124.i ], [ %i.bc, %._crit_edge131.loopexit.i ]
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv157.i ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !8
  %i.bf = add nsw i32 %i.be, %i.ao
  store i32 %i.bf, ptr %i.bd, align 4, !tbaa !8
  %exitcond160.not.i = icmp eq i64 %indvars.iv.next158.i, %wide.trip.count.i
  br i1 %exitcond160.not.i, label %.loopexit.i, label %.lr.ph137.i, !llvm.loop !22

.loopexit.i:                                      ; preds = %._crit_edge131.i, %._crit_edge.i
  br i1 %i.y, label %.lr.ph141.i, label %.preheader118.i

.preheader118.i:                                  ; preds = %bb.p, %.loopexit.i
  br i1 %i.w, label %.lr.ph143.i, label %._crit_edge144.i

.lr.ph141.i:                                      ; preds = %.loopexit.i, %bb.p
  %indvars.iv161.i = phi i64 [ %indvars.iv.next162.i, %bb.p ], [ 0, %.loopexit.i ] ; 3 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv161.i ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !8  ; 2 uses
  %.not108.i = icmp slt i32 %i.bh, %i.b
  br i1 %.not108.i, label %.preheader.i, label %bb.p

.preheader.i:                                     ; preds = %.lr.ph141.i, %.preheader.i
  %i.bi = tail call i64 @tm_genrand_int32() #15
  %i.bj = urem i64 %i.bi, %i.u
  %sext.i = shl i64 %i.bj, 32
  %i.bk = ashr exact i64 %sext.i, 30              ; 2 uses
  %i.bl = getelementptr inbounds i8, ptr %i.af, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !8
  %.not109.i = icmp eq i32 %i.bm, -1
  br i1 %.not109.i, label %bb.o, label %.preheader.i, !llvm.loop !23

bb.o:                                             ; preds = %.preheader.i
  %i.bn = getelementptr inbounds i8, ptr %i.af, i64 %i.bk
  %i.bo = trunc nuw nsw i64 %indvars.iv161.i to i32
  store i32 %i.bo, ptr %i.bn, align 4, !tbaa !8
  %i.bp = add nsw i32 %i.bh, 1
  store i32 %i.bp, ptr %i.bg, align 4, !tbaa !8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph141.i
  %indvars.iv.next162.i = add nuw nsw i64 %indvars.iv161.i, 1 ; 2 uses
  %exitcond165.not.i = icmp eq i64 %indvars.iv.next162.i, %wide.trip.count.i
  br i1 %exitcond165.not.i, label %.preheader118.i, label %.lr.ph141.i, !llvm.loop !24

.lr.ph143.i:                                      ; preds = %.preheader118.i, %bb.z
  %indvars.iv166.i = phi i64 [ %indvars.iv.next167.i, %bb.z ], [ 0, %.preheader118.i ] ; 4 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv166.i ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !8
  %i.bs = icmp eq i32 %i.br, -1
  br i1 %i.bs, label %bb.q, label %bb.z

bb.q:                                             ; preds = %.lr.ph143.i
  %i.bt = load i32, ptr %i.ab, align 8, !tbaa !12 ; 2 uses
  %i.bu = sext i32 %i.bt to i64
  %.not.i.i = icmp slt i64 %indvars.iv166.i, %i.bu
  br i1 %.not.i.i, label %.preheader.i.i, label %.lr.ph.i.i

.preheader.i.i:                                   ; preds = %bb.q
  %5 = zext nneg i32 %i.bt to i64
  br label %.preheader.i.i.a

.lr.ph.i.i:                                       ; preds = %bb.q, %bb.s
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.s ], [ 0, %bb.q ] ; 2 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv.i.i
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !8  ; 3 uses
  %.not45.i.i = icmp eq i32 %i.bw, -1
  br i1 %.not45.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !8
  %i.ca = icmp slt i32 %i.bz, %i.b
  br i1 %i.ca, label %allocate_vertex.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %allocate_vertex.exit.i, label %.lr.ph.i.i, !llvm.loop !25

.preheader.i.i.a:                                 ; preds = %bb.y, %.preheader.i.i
  %indvars.iv58.i.i = phi i64 [ 0, %.preheader.i.i ], [ %indvars.iv.next59.i.i, %bb.y ] ; 4 uses
  %.053.i.i = phi double [ -1.000000e+00, %.preheader.i.i ], [ %.1.i.i, %bb.y ] ; 4 uses
  %.03652.i.i = phi i32 [ 0, %.preheader.i.i ], [ %.137.i.i, %bb.y ] ; 3 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv58.i.i
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !8  ; 3 uses
  %.not44.i.i = icmp eq i32 %i.cc, -1
  br i1 %.not44.i.i, label %bb.y, label %bb.t

bb.t:                                             ; preds = %.preheader.i.i.a
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %i.cd
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !8
  %i.cg = icmp slt i32 %i.cf, %i.b
  br i1 %i.cg, label %bb.u, label %bb.y

bb.u:                                             ; preds = %bb.t
  %6 = icmp samesign ult i64 %indvars.iv58.i.i, %5
  br i1 %6, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ch = load ptr, ptr %1, align 8, !tbaa !26
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %indvars.iv166.i
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !27
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %indvars.iv58.i.i
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !29
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.cm = phi double [ %i.cl, %bb.v ], [ 0.000000e+00, %bb.u ] ; 2 uses
  %i.cn = fcmp ogt double %i.cm, %.053.i.i
  br i1 %i.cn, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.t, %.preheader.i.i.a
  %.137.i.i = phi i32 [ %i.cc, %bb.x ], [ %.03652.i.i, %bb.w ], [ %.03652.i.i, %bb.t ], [ %.03652.i.i, %.preheader.i.i.a ] ; 2 uses
  %.1.i.i = phi double [ %i.cm, %bb.x ], [ %.053.i.i, %bb.w ], [ %.053.i.i, %bb.t ], [ %.053.i.i, %.preheader.i.i.a ]
  %indvars.iv.next59.i.i = add nuw nsw i64 %indvars.iv58.i.i, 1 ; 2 uses
  %exitcond62.not.i.i = icmp eq i64 %indvars.iv.next59.i.i, %wide.trip.count.i.i
  br i1 %exitcond62.not.i.i, label %allocate_vertex.exit.i, label %.preheader.i.i.a, !llvm.loop !31

allocate_vertex.exit.i:                           ; preds = %bb.s, %bb.r, %bb.y
  %.2.i.i = phi i32 [ %.137.i.i, %bb.y ], [ 0, %bb.s ], [ %i.bw, %bb.r ] ; 2 uses
  store i32 %.2.i.i, ptr %i.bq, align 4, !tbaa !8
  %i.co = sext i32 %.2.i.i to i64
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %i.co ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !8
  %i.cr = add nsw i32 %i.cq, 1
  store i32 %i.cr, ptr %i.cp, align 4, !tbaa !8
  br label %bb.z

bb.z:                                             ; preds = %allocate_vertex.exit.i, %.lr.ph143.i
  %indvars.iv.next167.i = add nuw nsw i64 %indvars.iv166.i, 1 ; 2 uses
  %exitcond170.not.i = icmp eq i64 %indvars.iv.next167.i, %wide.trip.count.i.i
  br i1 %exitcond170.not.i, label %._crit_edge144.i, label %.lr.ph143.i, !llvm.loop !32

._crit_edge144.i:                                 ; preds = %bb.z, %.preheader118.i
  %i.cs = load i32, ptr %i.ab, align 8, !tbaa !12 ; 2 uses
  %i.ct = icmp sgt i32 %i.cs, 0
  br i1 %i.ct, label %.lr.ph21.preheader.i.i, label %eval_cost.exit.i

.lr.ph21.preheader.i.i:                           ; preds = %._crit_edge144.i
  %i.cu = zext nneg i32 %i.cs to i64              ; 5 uses
  %i.cv = add nsw i64 %i.cu, -2
  br label %.lr.ph21.i.i

.loopexit.i.i:                                    ; preds = %.prol.loopexit, %bb.ae, %.lr.ph21.i.i
  %.1.lcssa.i.i = phi double [ %.01619.i.i, %.lr.ph21.i.i ], [ %.2.i115.i.lcssa.unr, %.prol.loopexit ], [ %.2.i115.i.1, %bb.ae ] ; 2 uses
  %indvars.iv.next.i112.i = add nuw nsw i64 %indvars.iv.i111.i, 1
  %exitcond30.not.i.i = icmp eq i64 %indvars.iv.next27.i.i, %i.cu
  br i1 %exitcond30.not.i.i, label %eval_cost.exit.i, label %.lr.ph21.i.i, !llvm.loop !33

.lr.ph21.i.i:                                     ; preds = %.loopexit.i.i, %.lr.ph21.preheader.i.i
  %indvars.iv26.i.i = phi i64 [ 0, %.lr.ph21.preheader.i.i ], [ %indvars.iv.next27.i.i, %.loopexit.i.i ] ; 7 uses
  %indvars.iv.i111.i = phi i64 [ 1, %.lr.ph21.preheader.i.i ], [ %indvars.iv.next.i112.i, %.loopexit.i.i ] ; 5 uses
  %.01619.i.i = phi double [ 0.000000e+00, %.lr.ph21.preheader.i.i ], [ %.1.lcssa.i.i, %.loopexit.i.i ] ; 4 uses
  %indvars.iv.next27.i.i = add nuw nsw i64 %indvars.iv26.i.i, 1 ; 3 uses
  %i.cw = icmp samesign ult i64 %indvars.iv.next27.i.i, %i.cu
  br i1 %i.cw, label %.lr.ph.i113.i, label %.loopexit.i.i

.lr.ph.i113.i:                                    ; preds = %.lr.ph21.i.i
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv26.i.i
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !8  ; 3 uses
  %i.cz = sub nsw i64 %indvars.iv26.i.i, %i.cu
  %i.da = and i64 %i.cz, 1
  %lcmp.mod.not.not = icmp eq i64 %i.da, 0
  br i1 %lcmp.mod.not.not, label %.prol.preheader, label %.prol.loopexit

.prol.preheader:                                  ; preds = %.lr.ph.i113.i
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv.i111.i
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !8
  %.not.i114.i.prol = icmp eq i32 %i.cy, %i.dc
  br i1 %.not.i114.i.prol, label %.prol.loopexit.unr-lcssa, label %bb.aa

bb.aa:                                            ; preds = %.prol.preheader
  %i.dd = load ptr, ptr %1, align 8, !tbaa !26
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %indvars.iv26.i.i
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !27
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %indvars.iv.i111.i
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !29
  %i.di = fadd double %.01619.i.i, %i.dh
  br label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %bb.aa, %.prol.preheader
  %.2.i115.i.prol = phi double [ %i.di, %bb.aa ], [ %.01619.i.i, %.prol.preheader ] ; 2 uses
  %indvars.iv.next24.i.i.prol = add nuw nsw i64 %indvars.iv.i111.i, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.i113.i
  %.2.i115.i.lcssa.unr = phi double [ poison, %.lr.ph.i113.i ], [ %.2.i115.i.prol, %.prol.loopexit.unr-lcssa ]
  %indvars.iv23.i.i.unr = phi i64 [ %indvars.iv.i111.i, %.lr.ph.i113.i ], [ %indvars.iv.next24.i.i.prol, %.prol.loopexit.unr-lcssa ]
  %.117.i.i.unr = phi double [ %.01619.i.i, %.lr.ph.i113.i ], [ %.2.i115.i.prol, %.prol.loopexit.unr-lcssa ]
  %i.dj = icmp eq i64 %i.cv, %indvars.iv26.i.i
  br i1 %i.dj, label %.loopexit.i.i, label %.lr.ph.i113.i.new

.lr.ph.i113.i.new:                                ; preds = %.prol.loopexit, %bb.ae
  %indvars.iv23.i.i = phi i64 [ %indvars.iv.next24.i.i.1, %bb.ae ], [ %indvars.iv23.i.i.unr, %.prol.loopexit ] ; 4 uses
  %.117.i.i = phi double [ %.2.i115.i.1, %bb.ae ], [ %.117.i.i.unr, %.prol.loopexit ] ; 2 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv23.i.i
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !8
  %.not.i114.i = icmp eq i32 %i.cy, %i.dl
  br i1 %.not.i114.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i113.i.new
  %i.dm = load ptr, ptr %1, align 8, !tbaa !26
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %indvars.iv26.i.i
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !27
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %indvars.iv23.i.i
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !29
  %i.dr = fadd double %.117.i.i, %i.dq
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.lr.ph.i113.i.new
  %.2.i115.i = phi double [ %i.dr, %bb.ab ], [ %.117.i.i, %.lr.ph.i113.i.new ] ; 2 uses
  %indvars.iv.next24.i.i = add nuw nsw i64 %indvars.iv23.i.i, 1 ; 2 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv.next24.i.i
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !8
  %.not.i114.i.1 = icmp eq i32 %i.cy, %i.dt
  br i1 %.not.i114.i.1, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.du = load ptr, ptr %1, align 8, !tbaa !26
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %indvars.iv26.i.i
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !27
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %indvars.iv.next24.i.i
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !29
  %i.dz = fadd double %.2.i115.i, %i.dy
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.2.i115.i.1 = phi double [ %i.dz, %bb.ad ], [ %.2.i115.i, %bb.ac ] ; 2 uses
  %indvars.iv.next24.i.i.1 = add nuw nsw i64 %indvars.iv23.i.i, 2 ; 2 uses
  %exitcond.not.i116.i.1 = icmp eq i64 %indvars.iv.next24.i.i.1, %i.cu
  br i1 %exitcond.not.i116.i.1, label %.loopexit.i.i, label %.lr.ph.i113.i.new, !llvm.loop !34

eval_cost.exit.i:                                 ; preds = %.loopexit.i.i, %._crit_edge144.i
  %.016.lcssa.i.i = phi double [ 0.000000e+00, %._crit_edge144.i ], [ %.1.lcssa.i.i, %.loopexit.i.i ] ; 2 uses
  %i.ea = fcmp olt double %.016.lcssa.i.i, %.094147.i
  %i.eb = fcmp oeq double %.094147.i, -1.000000e+00
  %or.cond.i = or i1 %i.eb, %i.ea                 ; 3 uses
  %.0100145..i = select i1 %or.cond.i, ptr %.0100145.i, ptr %i.af
  %..0100145.i = select i1 %or.cond.i, ptr %i.af, ptr %.0100145.i ; 2 uses
  %.016.lcssa.i..094147.i = select i1 %or.cond.i, double %.016.lcssa.i.i, double %.094147.i
  tail call void @free(ptr noundef %.0100145..i) #15
  tail call void @free(ptr noundef %i.ag) #15
  %i.ec = add nuw nsw i32 %.096146.i, 1           ; 2 uses
  %exitcond171.not.i = icmp eq i32 %i.ec, 10
  br i1 %exitcond171.not.i, label %kpartition_greedy.exit, label %bb.m, !llvm.loop !35

kpartition_greedy.exit:                           ; preds = %eval_cost.exit.i, %bb.h, %bb.g, %bb.b, %bb.c
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ null, %bb.g ], [ null, %bb.h ], [ %..0100145.i, %eval_cost.exit.i ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nounwind uwtable
define hidden noundef ptr @tm_kpartition_build_tree_from_topology(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr nofree noundef readnone captures(none) %6) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %7 = alloca %struct._com_mat_t, align 8         ; 5 uses
  store ptr %5, ptr %i.a, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  %i.b = tail call i32 @tm_get_verbose_level() #15
  store i32 %i.b, ptr @verbose_level, align 4, !tbaa !8
  %i.c = tail call i32 @tm_nb_processing_units(ptr noundef %0) #15
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.e = load i32, ptr %i.d, align 4, !tbaa !36
  %i.f = mul i32 %i.e, %i.c                       ; 9 uses
  %i.g = load i32, ptr @verbose_level, align 4, !tbaa !8
  %i.h = icmp sgt i32 %i.g, 4
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = sub nsw i32 %i.f, %2
  %i.j = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %4, i32 noundef %2, i32 noundef %i.f, i32 noundef %i.i) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = icmp eq ptr %3, null
  %i.l = icmp ne i32 %4, 0
  %or.cond = and i1 %i.k, %i.l
  br i1 %or.cond, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.m = load i32, ptr @verbose_level, align 4, !tbaa !8
  %i.n = icmp sgt i32 %i.m, 1
end_hunk_0
