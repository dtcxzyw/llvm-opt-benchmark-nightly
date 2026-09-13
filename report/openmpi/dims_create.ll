Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/dims_create?download=true
inline.NumInlined: 14
inline.NumDeleted: 8
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@PMPI_Dims_create:bb.a
  %i.w = icmp slt i32 %i.t, 0
  br i1 %i.w, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = srem i32 %0, %i.t
  %.not53 = icmp eq i32 %i.x, 0
  br i1 %.not53, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_mpi_comm_world, i64 312), align 8, !tbaa !57
  %i.z = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_mpi_comm_world, i64 320), align 8, !tbaa !58
  %i.aa = tail call i32 @ompi_errhandler_invoke(ptr noundef %i.y, ptr noundef nonnull @ompi_mpi_comm_world, i32 noundef %i.z, i32 noundef 12, ptr noundef nonnull @FUNC_NAME) #7
  br label %.loopexit

bb.o:                                             ; preds = %bb.m
  %i.ab = sdiv i32 %.04084, %i.t
  br label %bb.p

bb.p:                                             ; preds = %bb.k, %bb.o
  %.141 = phi i32 [ %.04084, %bb.k ], [ %i.ab, %bb.o ] ; 8 uses
  %.139 = phi i32 [ %i.v, %bb.k ], [ %.03885, %bb.o ] ; 15 uses
  %i.ac = add nuw nsw i32 %.04283, 1              ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.086, i64 4
  %exitcond.not = icmp eq i32 %i.ac, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !8

._crit_edge:                                      ; preds = %bb.p
  %i.ae = icmp eq i32 %.139, 0
  br i1 %i.ae, label %._crit_edge.thread, label %bb.r

._crit_edge.thread:                               ; preds = %bb.j, %._crit_edge
  %.040.lcssa116 = phi i32 [ %.141, %._crit_edge ], [ %0, %bb.j ]
  %i.af = icmp eq i32 %.040.lcssa116, 1
  br i1 %i.af, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %._crit_edge.thread
  %i.ag = tail call i32 @ompi_errhandler_invoke(ptr noundef null, ptr noundef null, i32 noundef -1, i32 noundef 12, ptr noundef nonnull @FUNC_NAME) #7
  br label %.loopexit

bb.r:                                             ; preds = %._crit_edge
  %i.ah = icmp eq i32 %.141, 1
  br i1 %i.ah, label %.preheader, label %bb.u

.preheader:                                       ; preds = %bb.r
  %i.ai = zext nneg i32 %1 to i64                 ; 2 uses
  %min.iters.check136 = icmp ult i32 %1, 8
  br i1 %min.iters.check136, label %.lr.ph96.preheader, label %vector.ph137

vector.ph137:                                     ; preds = %.preheader
  %n.vec138 = and i64 %i.ai, 2147483640           ; 4 uses
  %i.aj = trunc nuw nsw i64 %n.vec138 to i32
  %i.ak = shl nuw nsw i64 %n.vec138, 2
  %i.al = getelementptr i8, ptr %2, i64 %i.ak
  br label %vector.body139

vector.body139:                                   ; preds = %pred.store.continue164, %vector.ph137
  %index140 = phi i64 [ 0, %vector.ph137 ], [ %index.next165, %pred.store.continue164 ] ; 2 uses
  %i.am = shl i64 %index140, 2                    ; 8 uses
  %next.gep141 = getelementptr i8, ptr %2, i64 %i.am ; 3 uses
  %i.an = getelementptr i8, ptr %2, i64 %i.am
  %next.gep142 = getelementptr i8, ptr %i.an, i64 4
  %i.ao = getelementptr i8, ptr %2, i64 %i.am
  %next.gep143 = getelementptr i8, ptr %i.ao, i64 8
  %i.ap = getelementptr i8, ptr %2, i64 %i.am
  %next.gep144 = getelementptr i8, ptr %i.ap, i64 12
  %i.aq = getelementptr i8, ptr %2, i64 %i.am
  %next.gep145 = getelementptr i8, ptr %i.aq, i64 16
  %i.ar = getelementptr i8, ptr %2, i64 %i.am
  %next.gep146 = getelementptr i8, ptr %i.ar, i64 20
  %i.as = getelementptr i8, ptr %2, i64 %i.am
  %next.gep147 = getelementptr i8, ptr %i.as, i64 24
  %i.at = getelementptr i8, ptr %2, i64 %i.am
  %next.gep148 = getelementptr i8, ptr %i.at, i64 28
  %i.au = getelementptr i8, ptr %next.gep141, i64 16
  %wide.load149 = load <4 x i32>, ptr %next.gep141, align 4, !tbaa !28
  %wide.load150 = load <4 x i32>, ptr %i.au, align 4, !tbaa !28
  %i.av = icmp eq <4 x i32> %wide.load149, zeroinitializer ; 4 uses
  %i.aw = icmp eq <4 x i32> %wide.load150, zeroinitializer ; 4 uses
  %i.ax = extractelement <4 x i1> %i.av, i64 0
  br i1 %i.ax, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body139
  store i32 1, ptr %next.gep141, align 4, !tbaa !28
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body139
  %i.ay = extractelement <4 x i1> %i.av, i64 1
  br i1 %i.ay, label %pred.store.if151, label %pred.store.continue152

pred.store.if151:                                 ; preds = %pred.store.continue
  store i32 1, ptr %next.gep142, align 4, !tbaa !28
  br label %pred.store.continue152

pred.store.continue152:                           ; preds = %pred.store.if151, %pred.store.continue
  %i.az = extractelement <4 x i1> %i.av, i64 2
  br i1 %i.az, label %pred.store.if153, label %pred.store.continue154

pred.store.if153:                                 ; preds = %pred.store.continue152
  store i32 1, ptr %next.gep143, align 4, !tbaa !28
  br label %pred.store.continue154

pred.store.continue154:                           ; preds = %pred.store.if153, %pred.store.continue152
  %i.ba = extractelement <4 x i1> %i.av, i64 3
  br i1 %i.ba, label %pred.store.if155, label %pred.store.continue156

pred.store.if155:                                 ; preds = %pred.store.continue154
  store i32 1, ptr %next.gep144, align 4, !tbaa !28
  br label %pred.store.continue156

pred.store.continue156:                           ; preds = %pred.store.if155, %pred.store.continue154
  %i.bb = extractelement <4 x i1> %i.aw, i64 0
  br i1 %i.bb, label %pred.store.if157, label %pred.store.continue158

pred.store.if157:                                 ; preds = %pred.store.continue156
  store i32 1, ptr %next.gep145, align 4, !tbaa !28
  br label %pred.store.continue158

pred.store.continue158:                           ; preds = %pred.store.if157, %pred.store.continue156
  %i.bc = extractelement <4 x i1> %i.aw, i64 1
  br i1 %i.bc, label %pred.store.if159, label %pred.store.continue160

pred.store.if159:                                 ; preds = %pred.store.continue158
  store i32 1, ptr %next.gep146, align 4, !tbaa !28
  br label %pred.store.continue160

pred.store.continue160:                           ; preds = %pred.store.if159, %pred.store.continue158
  %i.bd = extractelement <4 x i1> %i.aw, i64 2
  br i1 %i.bd, label %pred.store.if161, label %pred.store.continue162

pred.store.if161:                                 ; preds = %pred.store.continue160
  store i32 1, ptr %next.gep147, align 4, !tbaa !28
  br label %pred.store.continue162

pred.store.continue162:                           ; preds = %pred.store.if161, %pred.store.continue160
  %i.be = extractelement <4 x i1> %i.aw, i64 3
  br i1 %i.be, label %pred.store.if163, label %pred.store.continue164

pred.store.if163:                                 ; preds = %pred.store.continue162
  store i32 1, ptr %next.gep148, align 4, !tbaa !28
  br label %pred.store.continue164

pred.store.continue164:                           ; preds = %pred.store.if163, %pred.store.continue162
  %index.next165 = add nuw i64 %index140, 8       ; 2 uses
  %i.bf = icmp eq i64 %index.next165, %n.vec138
  br i1 %i.bf, label %middle.block166, label %vector.body139, !llvm.loop !9

middle.block166:                                  ; preds = %pred.store.continue164
  %cmp.n167 = icmp eq i64 %n.vec138, %i.ai
  br i1 %cmp.n167, label %.loopexit, label %.lr.ph96.preheader

.lr.ph96.preheader:                               ; preds = %.preheader, %middle.block166
  %.14395.ph = phi i32 [ 0, %.preheader ], [ %i.aj, %middle.block166 ]
  %.04594.ph = phi ptr [ %2, %.preheader ], [ %i.al, %middle.block166 ]
  br label %.lr.ph96

.lr.ph96:                                         ; preds = %.lr.ph96.preheader, %bb.t
  %.14395 = phi i32 [ %i.bi, %bb.t ], [ %.14395.ph, %.lr.ph96.preheader ]
  %.04594 = phi ptr [ %i.bj, %bb.t ], [ %.04594.ph, %.lr.ph96.preheader ] ; 3 uses
  %i.bg = load i32, ptr %.04594, align 4, !tbaa !28
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph96
  store i32 1, ptr %.04594, align 4, !tbaa !28
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph96, %bb.s
  %i.bi = add nuw nsw i32 %.14395, 1              ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.04594, i64 4
  %exitcond100.not = icmp eq i32 %i.bi, %1
  br i1 %exitcond100.not, label %.loopexit, label %.lr.ph96, !llvm.loop !10

bb.u:                                             ; preds = %bb.r
  %i.bk = icmp slt i32 %.141, 2
  br i1 %i.bk, label %getfactors.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bl = uitofp nneg i32 %.141 to double         ; 2 uses
  %sqrt.i = tail call double @llvm.sqrt.f64(double %i.bl)
  %i.bm = tail call double @llvm.ceil.f64(double %sqrt.i)
  %i.bn = fptosi double %i.bm to i32              ; 2 uses
  %i.bo = tail call double @log(double noundef %i.bl) #7
  %i.bp = fdiv double %i.bo, f0x3FE62E42FEFA39EF
  %i.bq = tail call double @llvm.ceil.f64(double %i.bp)
  %i.br = fptosi double %i.bq to i32
  %i.bs = zext i32 %i.br to i64
  %i.bt = shl nuw nsw i64 %i.bs, 2
  %i.bu = tail call noalias ptr @malloc(i64 noundef %i.bt) #8 ; 5 uses
  %i.bv = and i32 %.141, 1
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %.lr.ph.i, label %.preheader34.i

.preheader34.loopexit.i:                          ; preds = %.lr.ph.i
  %i.bx = trunc nuw i64 %indvars.iv.next.i to i32
  br label %.preheader34.i

.preheader34.i:                                   ; preds = %.preheader34.loopexit.i, %bb.v
  %.030.lcssa.i = phi i32 [ %.141, %bb.v ], [ %i.ca, %.preheader34.loopexit.i ] ; 3 uses
  %.0.lcssa.i = phi i32 [ 0, %bb.v ], [ %i.bx, %.preheader34.loopexit.i ] ; 2 uses
  %i.by = icmp samesign ugt i32 %.030.lcssa.i, 1
  %3 = icmp samesign ugt i32 %i.bn, 2
  %i.bz = select i1 %i.by, i1 %3, i1 false
  br i1 %i.bz, label %.preheader.i, label %._crit_edge46.i

.lr.ph.i:                                         ; preds = %bb.v, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %bb.v ] ; 2 uses
  %.03035.i = phi i32 [ %i.ca, %.lr.ph.i ], [ %.141, %bb.v ] ; 2 uses
  %i.ca = lshr exact i32 %.03035.i, 1             ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv.i
  store i32 2, ptr %i.cb, align 4, !tbaa !28
  %i.cc = and i32 %.03035.i, 2
  %i.cd = icmp eq i32 %i.cc, 0
  br i1 %i.cd, label %.lr.ph.i, label %.preheader34.loopexit.i, !llvm.loop !11

.preheader.i:                                     ; preds = %.preheader34.i, %._crit_edge.i
  %.145.i = phi i32 [ %.2.lcssa.i, %._crit_edge.i ], [ %.0.lcssa.i, %.preheader34.i ] ; 2 uses
  %.02844.i = phi i32 [ %i.cm, %._crit_edge.i ], [ 3, %.preheader34.i ] ; 5 uses
  %.13143.i = phi i32 [ %.232.lcssa.i, %._crit_edge.i ], [ %.030.lcssa.i, %.preheader34.i ] ; 3 uses
  %i.ce = srem i32 %.13143.i, %.02844.i
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %.lr.ph40.preheader.i, label %._crit_edge.i

.lr.ph40.preheader.i:                             ; preds = %.preheader.i
  %i.cg = sext i32 %.145.i to i64
  br label %.lr.ph40.i

.lr.ph40.i:                                       ; preds = %.lr.ph40.i, %.lr.ph40.preheader.i
  %indvars.iv53.i = phi i64 [ %i.cg, %.lr.ph40.preheader.i ], [ %indvars.iv.next54.i, %.lr.ph40.i ] ; 2 uses
  %.23238.i = phi i32 [ %.13143.i, %.lr.ph40.preheader.i ], [ %i.ch, %.lr.ph40.i ]
  %i.ch = sdiv i32 %.23238.i, %.02844.i           ; 3 uses
  %indvars.iv.next54.i = add nsw i64 %indvars.iv53.i, 1 ; 2 uses
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.bu, i64 %indvars.iv53.i
  store i32 %.02844.i, ptr %i.ci, align 4, !tbaa !28
  %i.cj = srem i32 %i.ch, %.02844.i
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %.lr.ph40.i, label %._crit_edge.loopexit.i, !llvm.loop !12

._crit_edge.loopexit.i:                           ; preds = %.lr.ph40.i
  %i.cl = trunc nsw i64 %indvars.iv.next54.i to i32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.preheader.i
  %.232.lcssa.i = phi i32 [ %.13143.i, %.preheader.i ], [ %i.ch, %._crit_edge.loopexit.i ] ; 3 uses
  %.2.lcssa.i = phi i32 [ %.145.i, %.preheader.i ], [ %i.cl, %._crit_edge.loopexit.i ] ; 2 uses
  %i.cm = add nuw nsw i32 %.02844.i, 2            ; 2 uses
  %i.cn = icmp sgt i32 %.232.lcssa.i, 1
  %4 = icmp samesign ule i32 %i.cm, %i.bn
  %i.co = select i1 %i.cn, i1 %4, i1 false
  br i1 %i.co, label %.preheader.i, label %._crit_edge46.i, !llvm.loop !13

._crit_edge46.i:                                  ; preds = %._crit_edge.i, %.preheader34.i
  %.131.lcssa.i = phi i32 [ %.030.lcssa.i, %.preheader34.i ], [ %.232.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.1.lcssa.i = phi i32 [ %.0.lcssa.i, %.preheader34.i ], [ %.2.lcssa.i, %._crit_edge.i ] ; 3 uses
  %.not.i = icmp eq i32 %.131.lcssa.i, 1
  br i1 %.not.i, label %getfactors.exit, label %bb.w

bb.w:                                             ; preds = %._crit_edge46.i
  %i.cp = add nsw i32 %.1.lcssa.i, 1
  %i.cq = sext i32 %.1.lcssa.i to i64
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.bu, i64 %i.cq
  store i32 %.131.lcssa.i, ptr %i.cr, align 4, !tbaa !28
  br label %getfactors.exit

getfactors.exit:                                  ; preds = %._crit_edge46.i, %bb.w, %bb.u
  %.073 = phi i32 [ 0, %bb.u ], [ %i.cp, %bb.w ], [ %.1.lcssa.i, %._crit_edge46.i ] ; 4 uses
  %.072 = phi ptr [ null, %bb.u ], [ %i.bu, %bb.w ], [ %i.bu, %._crit_edge46.i ] ; 5 uses
  %i.cs = icmp slt i32 %.139, 1
  br i1 %i.cs, label %assignnodes.exit, label %bb.x

bb.x:                                             ; preds = %getfactors.exit
  %i.ct = zext nneg i32 %.139 to i64
  %i.cu = shl nuw nsw i64 %i.ct, 2
  %i.cv = tail call noalias ptr @malloc(i64 noundef %i.cu) #8 ; 15 uses
  %i.cw = icmp eq ptr %i.cv, null
  br i1 %i.cw, label %assignnodes.exit, label %.lr.ph.i54.preheader

.lr.ph.i54.preheader:                             ; preds = %bb.x
  %i.cx = zext nneg i32 %.139 to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %.139, 8
  br i1 %min.iters.check, label %.lr.ph.i54.preheader173, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i54.preheader
  %n.vec = and i64 %i.cx, 2147483640              ; 4 uses
  %i.cy = shl nuw nsw i64 %n.vec, 2
  %i.cz = getelementptr i8, ptr %i.cv, i64 %i.cy
  %i.da = trunc nuw nsw i64 %n.vec to i32
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.db = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.cv, i64 %i.db ; 2 uses
  %i.dc = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> splat (i32 1), ptr %next.gep, align 4, !tbaa !28
  store <4 x i32> splat (i32 1), ptr %i.dc, align 4, !tbaa !28
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dd = icmp eq i64 %index.next, %n.vec
  br i1 %i.dd, label %middle.block, label %vector.body, !llvm.loop !14

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.cx
  br i1 %cmp.n, label %.preheader59.i, label %.lr.ph.i54.preheader173

.lr.ph.i54.preheader173:                          ; preds = %.lr.ph.i54.preheader, %middle.block
  %.04561.i.ph = phi ptr [ %i.cv, %.lr.ph.i54.preheader ], [ %i.cz, %middle.block ]
  %.05060.i.ph = phi i32 [ 0, %.lr.ph.i54.preheader ], [ %i.da, %middle.block ]
  br label %.lr.ph.i54

.preheader59.i:                                   ; preds = %.lr.ph.i54, %middle.block
  %.04866.i = add i32 %.073, -1                   ; 2 uses
  %i.de = icmp sgt i32 %.073, 0
  br i1 %i.de, label %.lr.ph68.i, label %.preheader.i55

.lr.ph68.i:                                       ; preds = %.preheader59.i
  %.not.i56 = icmp eq i32 %.139, 1
  br i1 %.not.i56, label %.lr.ph68.split.i, label %.lr.ph65.us.preheader.i

.lr.ph65.us.preheader.i:                          ; preds = %.lr.ph68.i
  %i.df = zext nneg i32 %.04866.i to i64
  %i.dg = add nsw i32 %.139, -1                   ; 2 uses
  %i.dh = add nsw i32 %.139, -2
  %xtraiter = and i32 %i.dg, 3                    ; 3 uses
  %i.di = icmp ult i32 %i.dh, 3
  %unroll_iter = and i32 %i.dg, -4
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod178 = icmp ne i32 %xtraiter, 0
  br label %.lr.ph65.us.i

.lr.ph65.us.i:                                    ; preds = %._crit_edge.us.i, %.lr.ph65.us.preheader.i
  %indvars.iv.i57 = phi i64 [ %i.df, %.lr.ph65.us.preheader.i ], [ %indvars.iv.next.i58, %._crit_edge.us.i ] ; 3 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %.072, i64 %indvars.iv.i57
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !28
  %.pre.i = load i32, ptr %i.cv, align 4, !tbaa !28 ; 2 uses
  br i1 %i.di, label %.epil.preheader, label %.lr.ph65.us.i.new

.lr.ph65.us.i.new:                                ; preds = %.lr.ph65.us.i, %.lr.ph65.us.i.new
  %i.dl = phi i32 [ %i.dx, %.lr.ph65.us.i.new ], [ %.pre.i, %.lr.ph65.us.i ] ; 2 uses
  %.064.us.i = phi ptr [ %spec.select.us.i.3, %.lr.ph65.us.i.new ], [ %i.cv, %.lr.ph65.us.i ]
  %.pn63.us.i = phi ptr [ %.146.us.i.3, %.lr.ph65.us.i.new ], [ %i.cv, %.lr.ph65.us.i ] ; 4 uses
  %niter = phi i32 [ %niter.next.3, %.lr.ph65.us.i.new ], [ 0, %.lr.ph65.us.i ]
  %.146.us.i = getelementptr inbounds nuw i8, ptr %.pn63.us.i, i64 4 ; 2 uses
  %i.dm = load i32, ptr %.146.us.i, align 4, !tbaa !28 ; 2 uses
  %i.dn = icmp slt i32 %i.dm, %i.dl
  %spec.select.us.i = select i1 %i.dn, ptr %.146.us.i, ptr %.064.us.i
  %i.do = tail call i32 @llvm.smin.i32(i32 %i.dm, i32 %i.dl) ; 2 uses
  %.146.us.i.1 = getelementptr inbounds nuw i8, ptr %.pn63.us.i, i64 8 ; 2 uses
  %i.dp = load i32, ptr %.146.us.i.1, align 4, !tbaa !28 ; 2 uses
  %i.dq = icmp slt i32 %i.dp, %i.do
  %spec.select.us.i.1 = select i1 %i.dq, ptr %.146.us.i.1, ptr %spec.select.us.i
  %i.dr = tail call i32 @llvm.smin.i32(i32 %i.dp, i32 %i.do) ; 2 uses
  %.146.us.i.2 = getelementptr inbounds nuw i8, ptr %.pn63.us.i, i64 12 ; 2 uses
  %i.ds = load i32, ptr %.146.us.i.2, align 4, !tbaa !28 ; 2 uses
  %i.dt = icmp slt i32 %i.ds, %i.dr
  %spec.select.us.i.2 = select i1 %i.dt, ptr %.146.us.i.2, ptr %spec.select.us.i.1
  %i.du = tail call i32 @llvm.smin.i32(i32 %i.ds, i32 %i.dr) ; 2 uses
  %.146.us.i.3 = getelementptr inbounds nuw i8, ptr %.pn63.us.i, i64 16 ; 4 uses
  %i.dv = load i32, ptr %.146.us.i.3, align 4, !tbaa !28 ; 2 uses
  %i.dw = icmp slt i32 %i.dv, %i.du
  %spec.select.us.i.3 = select i1 %i.dw, ptr %.146.us.i.3, ptr %spec.select.us.i.2 ; 3 uses
  %i.dx = tail call i32 @llvm.smin.i32(i32 %i.dv, i32 %i.du) ; 2 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.i.unr-lcssa, label %.lr.ph65.us.i.new, !llvm.loop !15

._crit_edge.us.i.unr-lcssa:                       ; preds = %.lr.ph65.us.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.i.unr-lcssa, %.lr.ph65.us.i
  %.epil.init = phi i32 [ %.pre.i, %.lr.ph65.us.i ], [ %i.dx, %._crit_edge.us.i.unr-lcssa ]
  %.064.us.i.epil.init = phi ptr [ %i.cv, %.lr.ph65.us.i ], [ %spec.select.us.i.3, %._crit_edge.us.i.unr-lcssa ]
  %.pn63.us.i.epil.init = phi ptr [ %i.cv, %.lr.ph65.us.i ], [ %.146.us.i.3, %._crit_edge.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod178)
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %.epil.preheader
  %i.dy = phi i32 [ %.epil.init, %.epil.preheader ], [ %i.eb, %bb.y ] ; 2 uses
  %.064.us.i.epil = phi ptr [ %.064.us.i.epil.init, %.epil.preheader ], [ %spec.select.us.i.epil, %bb.y ]
  %.pn63.us.i.epil = phi ptr [ %.pn63.us.i.epil.init, %.epil.preheader ], [ %.146.us.i.epil, %bb.y ]
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.y ]
  %.146.us.i.epil = getelementptr inbounds nuw i8, ptr %.pn63.us.i.epil, i64 4 ; 3 uses
  %i.dz = load i32, ptr %.146.us.i.epil, align 4, !tbaa !28 ; 2 uses
  %i.ea = icmp slt i32 %i.dz, %i.dy
  %spec.select.us.i.epil = select i1 %i.ea, ptr %.146.us.i.epil, ptr %.064.us.i.epil ; 2 uses
  %i.eb = tail call i32 @llvm.smin.i32(i32 %i.dz, i32 %i.dy)
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us.i, label %bb.y, !llvm.loop !16

._crit_edge.us.i:                                 ; preds = %bb.y, %._crit_edge.us.i.unr-lcssa
  %spec.select.us.i.lcssa = phi ptr [ %spec.select.us.i.3, %._crit_edge.us.i.unr-lcssa ], [ %spec.select.us.i.epil, %bb.y ] ; 2 uses
  %i.ec = load i32, ptr %spec.select.us.i.lcssa, align 4, !tbaa !28
  %i.ed = mul nsw i32 %i.ec, %i.dk
  store i32 %i.ed, ptr %spec.select.us.i.lcssa, align 4, !tbaa !28
  %indvars.iv.next.i58 = add nsw i64 %indvars.iv.i57, -1
  %i.ee = icmp sgt i64 %indvars.iv.i57, 0
  br i1 %i.ee, label %.lr.ph65.us.i, label %.preheader.i55, !llvm.loop !17

.lr.ph68.split.i:                                 ; preds = %.lr.ph68.i
  %.promoted.i = load i32, ptr %i.cv, align 4, !tbaa !28 ; 2 uses
  %i.ef = zext i32 %.04866.i to i64               ; 3 uses
  %i.eg = zext nneg i32 %.073 to i64              ; 2 uses
  %min.iters.check123 = icmp ult i32 %.073, 8
  br i1 %min.iters.check123, label %scalar.ph122.preheader, label %vector.ph124

vector.ph124:                                     ; preds = %.lr.ph68.split.i
  %n.vec125 = and i64 %i.eg, 2147483640           ; 3 uses
  %i.eh = sub nsw i64 %i.ef, %n.vec125
  %i.ei = insertelement <4 x i32> <i32 poison, i32 1, i32 1, i32 1>, i32 %.promoted.i, i64 0
  br label %vector.body126

vector.body126:                                   ; preds = %vector.body126, %vector.ph124
  %index127 = phi i64 [ 0, %vector.ph124 ], [ %index.next131, %vector.body126 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.ei, %vector.ph124 ], [ %i.en, %vector.body126 ]
  %vec.phi128 = phi <4 x i32> [ splat (i32 1), %vector.ph124 ], [ %i.eo, %vector.body126 ]
  %i.ej = sub i64 %i.ef, %index127
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %.072, i64 %i.ej ; 2 uses
  %i.el = getelementptr inbounds i8, ptr %i.ek, i64 -12
  %i.em = getelementptr inbounds i8, ptr %i.ek, i64 -28
  %wide.load = load <4 x i32>, ptr %i.el, align 4, !tbaa !28
  %wide.load129 = load <4 x i32>, ptr %i.em, align 4, !tbaa !28
  %reverse = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse130 = shufflevector <4 x i32> %wide.load129, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.en = mul <4 x i32> %reverse, %vec.phi        ; 2 uses
  %i.eo = mul <4 x i32> %reverse130, %vec.phi128  ; 2 uses
  %index.next131 = add nuw i64 %index127, 8       ; 2 uses
  %i.ep = icmp eq i64 %index.next131, %n.vec125
  br i1 %i.ep, label %middle.block132, label %vector.body126, !llvm.loop !18

middle.block132:                                  ; preds = %vector.body126
  %bin.rdx = mul <4 x i32> %i.eo, %i.en
  %i.eq = tail call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n133 = icmp eq i64 %n.vec125, %i.eg
  br i1 %cmp.n133, label %.preheader.thread.i, label %scalar.ph122.preheader

scalar.ph122.preheader:                           ; preds = %.lr.ph68.split.i, %middle.block132
  %indvars.iv78.i.ph = phi i64 [ %i.ef, %.lr.ph68.split.i ], [ %i.eh, %middle.block132 ]
  %.ph = phi i32 [ %.promoted.i, %.lr.ph68.split.i ], [ %i.eq, %middle.block132 ]
  br label %scalar.ph122

.lr.ph.i54:                                       ; preds = %.lr.ph.i54.preheader173, %.lr.ph.i54
  %.04561.i = phi ptr [ %i.es, %.lr.ph.i54 ], [ %.04561.i.ph, %.lr.ph.i54.preheader173 ] ; 2 uses
  %.05060.i = phi i32 [ %i.er, %.lr.ph.i54 ], [ %.05060.i.ph, %.lr.ph.i54.preheader173 ]
  store i32 1, ptr %.04561.i, align 4, !tbaa !28
  %i.er = add nuw nsw i32 %.05060.i, 1            ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.04561.i, i64 4
  %exitcond.not.i = icmp eq i32 %i.er, %.139
  br i1 %exitcond.not.i, label %.preheader59.i, label %.lr.ph.i54, !llvm.loop !19
end_hunk_0
