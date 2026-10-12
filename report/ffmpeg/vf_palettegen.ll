Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_palettegen?download=true
inline.NumInlined: 11
inline.NumDeleted: 10
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@get_palette_frame:bb.a
.preheader.i.preheader:                           ; preds = %bb.a
  %scevgep149.a = getelementptr i8, ptr %i.c, i64 524312
  br label %.preheader.i

load_color_refs.exit.thread:                      ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 524320
  store ptr null, ptr %i.l, align 8, !tbaa !57
  %i.m = load i32, ptr %i.h, align 8, !tbaa !51
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.4, i32 noundef %i.m) #14
  br label %write_palette.exit

.preheader.i:                                     ; preds = %.preheader.i.preheader, %._crit_edge.i
  %indvars.iv27.i = phi i64 [ %indvars.iv.next28.i, %._crit_edge.i ], [ 0, %.preheader.i.preheader ] ; 2 uses
  %.01520.i = phi i32 [ %.1.lcssa.i, %._crit_edge.i ], [ 0, %.preheader.i.preheader ] ; 2 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %indvars.iv27.i ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !45   ; 3 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %i.r = sext i32 %.01520.i to i64                ; 6 uses
  %wide.trip.count.i = zext nneg i32 %i.p to i64  ; 6 uses
  %min.iters.check = icmp ult i32 %i.p, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i
  %i.s = shl nsw i64 %i.r, 3
  %scevgep = getelementptr i8, ptr %i.k, i64 %i.s
  %i.t = add nsw i64 %i.r, %wide.trip.count.i
  %i.u = shl nsw i64 %i.t, 3
  %scevgep148 = getelementptr i8, ptr %i.k, i64 %i.u
  %bound0 = icmp ult ptr %scevgep, %scevgep149.a
  %bound1 = icmp ult ptr %i.g, %scevgep148
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i, 2147483644 ; 4 uses
  %i.v = add nsw i64 %n.vec, %i.r                 ; 2 uses
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !46, !alias.scope !97 ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.k, i64 %i.r
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %wide.gep = getelementptr inbounds nuw [24 x i8], ptr %i.w, <2 x i64> %vec.ind
  %wide.gep150 = getelementptr inbounds nuw [24 x i8], ptr %i.w, <2 x i64> %step.add
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <2 x ptr> %wide.gep, ptr %gep, align 8, !tbaa !58, !alias.scope !98, !noalias !97
  store <2 x ptr> %wide.gep150, ptr %i.x, align 8, !tbaa !58, !alias.scope !98, !noalias !97
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !88

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %._crit_edge.loopexit.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck, %.lr.ph.preheader.i, %middle.block
  %indvars.iv22.i.ph = phi i64 [ %i.r, %vector.memcheck ], [ %i.r, %.lr.ph.preheader.i ], [ %i.v, %middle.block ] ; 2 uses
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %indvars.iv22.i.prol = phi i64 [ %indvars.iv.next23.i.prol, %.lr.ph.i.prol ], [ %indvars.iv22.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.z = load ptr, ptr %i.n, align 8, !tbaa !46
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %indvars.iv.i.prol
  %indvars.iv.next23.i.prol = add nsw i64 %indvars.iv22.i.prol, 1 ; 3 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.k, i64 %indvars.iv22.i.prol
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !58
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !89

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.next23.i.lcssa156.unr = phi i64 [ poison, %.lr.ph.i.preheader ], [ %indvars.iv.next23.i.prol, %.lr.ph.i.prol ]
  %indvars.iv22.i.unr = phi i64 [ %indvars.iv22.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next23.i.prol, %.lr.ph.i.prol ]
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.ac = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.ad = icmp ugt i64 %i.ac, -4
  br i1 %i.ad, label %._crit_edge.loopexit.i, label %.lr.ph.i

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block
  %indvars.iv.next23.i.lcssa = phi i64 [ %i.v, %middle.block ], [ %indvars.iv.next23.i.lcssa156.unr, %.lr.ph.i.prol.loopexit ], [ %indvars.iv.next23.i.3, %.lr.ph.i ]
  %i.ae = trunc nsw i64 %indvars.iv.next23.i.lcssa to i32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.preheader.i
  %.1.lcssa.i = phi i32 [ %.01520.i, %.preheader.i ], [ %i.ae, %._crit_edge.loopexit.i ]
  %indvars.iv.next28.i = add nuw nsw i64 %indvars.iv27.i, 1 ; 2 uses
  %exitcond30.not.i = icmp eq i64 %indvars.iv.next28.i, 32768
  br i1 %exitcond30.not.i, label %load_color_refs.exit, label %.preheader.i, !llvm.loop !90

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv22.i = phi i64 [ %indvars.iv.next23.i.3, %.lr.ph.i ], [ %indvars.iv22.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.af = load ptr, ptr %i.n, align 8, !tbaa !46
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %indvars.iv.i
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.k, i64 %indvars.iv22.i
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !58
  %i.ai = load ptr, ptr %i.n, align 8, !tbaa !46
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %i.ai, i64 %indvars.iv.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = getelementptr [8 x i8], ptr %i.k, i64 %indvars.iv22.i
  %i.am = getelementptr i8, ptr %i.al, i64 8
  store ptr %i.ak, ptr %i.am, align 8, !tbaa !58
  %i.an = load ptr, ptr %i.n, align 8, !tbaa !46
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %i.an, i64 %indvars.iv.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %i.aq = getelementptr [8 x i8], ptr %i.k, i64 %indvars.iv22.i
  %i.ar = getelementptr i8, ptr %i.aq, i64 16
  store ptr %i.ap, ptr %i.ar, align 8, !tbaa !58
  %i.as = load ptr, ptr %i.n, align 8, !tbaa !46
  %i.at = getelementptr inbounds nuw [24 x i8], ptr %i.as, i64 %indvars.iv.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 72
  %indvars.iv.next23.i.3 = add nsw i64 %indvars.iv22.i, 4 ; 2 uses
  %i.av = getelementptr [8 x i8], ptr %i.k, i64 %indvars.iv22.i
  %i.aw = getelementptr i8, ptr %i.av, i64 24
  store ptr %i.au, ptr %i.aw, align 8, !tbaa !58
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !91

load_color_refs.exit:                             ; preds = %._crit_edge.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 524320 ; 3 uses
  store ptr %i.k, ptr %i.ax, align 8, !tbaa !57
  %i.ay = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !59
  %i.ba = getelementptr inbounds nuw i8, ptr %i.f, i64 44
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !60
  %i.bc = tail call ptr @ff_get_video_buffer(ptr noundef %i.f, i32 noundef %i.az, i32 noundef %i.bb) #14 ; 10 uses
  %.not79 = icmp eq ptr %i.bc, null
  br i1 %.not79, label %write_palette.exit, label %bb.b

bb.b:                                             ; preds = %load_color_refs.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 136
  store i64 0, ptr %i.bd, align 8, !tbaa !53
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 524336 ; 9 uses
  %i.bf = load i32, ptr %i.h, align 8, !tbaa !51
  %i.bg = getelementptr inbounds nuw i8, ptr %i.c, i64 524380
  store i32 %i.bf, ptr %i.bg, align 4, !tbaa !62
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 524384
  store i32 -1, ptr %i.bh, align 8, !tbaa !102
  tail call fastcc void @compute_box_stats(ptr noundef nonnull %i.c, ptr noundef nonnull %i.be)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 538672 ; 7 uses
  store i32 1, ptr %i.bi, align 8, !tbaa !103
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.c, i64 12 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.c, i64 524380 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !62 ; 2 uses
  %i.bn = icmp sgt i32 %i.bm, 1
  br i1 %i.bn, label %.lr.ph145, label %.critedge

bb.c:                                             ; preds = %get_next_box_id_to_split.exit
  %i.bo = zext nneg i32 %.117.i.lcssa to i64
  %i.bp = getelementptr inbounds nuw [56 x i8], ptr %i.be, i64 %i.bo ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 44 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !62 ; 2 uses
  %i.bs = icmp sgt i32 %i.br, 1
  br i1 %i.bs, label %.lr.ph145, label %.critedge.loopexit

.lr.ph145:                                        ; preds = %bb.b, %bb.c
  %i.bt = phi i32 [ %i.br, %bb.c ], [ %i.bm, %bb.b ] ; 2 uses
  %i.bu = phi ptr [ %i.bq, %bb.c ], [ %i.bl, %bb.b ] ; 3 uses
  %.073106143 = phi ptr [ %i.bp, %bb.c ], [ %i.be, %bb.b ] ; 6 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.073106143, i64 48 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !102 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.073106143, i64 16 ; 2 uses
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !63 ; 2 uses
  %.not82 = icmp eq i32 %i.bw, %i.by
  br i1 %.not82, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph145
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds [8 x i8], ptr @cmp_funcs, i64 %i.bz
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !104
  %i.cc = load ptr, ptr %i.ax, align 8, !tbaa !57
  %i.cd = getelementptr inbounds nuw i8, ptr %.073106143, i64 40
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !64
  %i.cf = sext i32 %i.ce to i64
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.cc, i64 %i.cf
  %i.ch = zext nneg i32 %i.bt to i64
  tail call void @qsort(ptr noundef %i.cg, i64 noundef %i.ch, i64 noundef 8, ptr noundef %i.cb) #14
  %i.ci = load i32, ptr %i.bx, align 8, !tbaa !63 ; 2 uses
  store i32 %i.ci, ptr %i.bv, align 8, !tbaa !102
  %.pre = load i32, ptr %i.bu, align 4, !tbaa !62
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph145
  %i.cj = phi i32 [ %i.ci, %bb.d ], [ %i.bw, %.lr.ph145 ]
  %i.ck = phi i32 [ %.pre, %bb.d ], [ %i.bt, %.lr.ph145 ] ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.073106143, i64 24
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !65
  %i.cn = add nsw i64 %i.cm, 1
  %i.co = ashr i64 %i.cn, 1
  %i.cp = getelementptr inbounds nuw i8, ptr %.073106143, i64 40 ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !64 ; 5 uses
  %i.cr = add i32 %i.cq, -2
  %i.cs = add i32 %i.cr, %i.ck
  %i.ct = icmp slt i32 %i.cq, %i.cs
  br i1 %i.ct, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e
  %i.cu = load ptr, ptr %i.ax, align 8, !tbaa !57
  %i.cv = sext i32 %i.cq to i64
  %1 = add i32 %i.ck, -2
  %2 = add i32 %1, %i.cq                          ; 2 uses
  %wide.trip.count = sext i32 %2 to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ %i.cv, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 3 uses
  %.071101 = phi i64 [ 0, %.lr.ph ], [ %i.da, %bb.g ]
  %i.cw = getelementptr inbounds [8 x i8], ptr %i.cu, i64 %indvars.iv
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !58
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !49
  %i.da = add nsw i64 %i.cz, %.071101             ; 2 uses
  %i.db = icmp sgt i64 %i.da, %i.co
  br i1 %i.db, label %._crit_edge.loopexit.split.loop.exit138, label %bb.g

bb.g:                                             ; preds = %bb.f
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.f, !llvm.loop !92

._crit_edge.loopexit.split.loop.exit138:          ; preds = %bb.f
  %i.dc = trunc nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.g, %._crit_edge.loopexit.split.loop.exit138, %bb.e
  %.072.lcssa = phi i32 [ %i.cq, %bb.e ], [ %i.dc, %._crit_edge.loopexit.split.loop.exit138 ], [ %2, %bb.g ] ; 2 uses
  %i.dd = load i32, ptr %i.bi, align 8, !tbaa !103 ; 2 uses
  %i.de = add nsw i32 %i.dd, 1
  store i32 %i.de, ptr %i.bi, align 8, !tbaa !103
  %i.df = sext i32 %i.dd to i64
  %i.dg = getelementptr inbounds [56 x i8], ptr %i.be, i64 %i.df ; 4 uses
  %i.dh = add nsw i32 %.072.lcssa, 1
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 40
  store i32 %i.dh, ptr %i.di, align 8, !tbaa !64
  %i.dj = load i32, ptr %i.cp, align 8, !tbaa !64
  %.neg.i = xor i32 %.072.lcssa, -1
  %i.dk = add i32 %i.ck, %.neg.i
  %i.dl = add i32 %i.dk, %i.dj                    ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dg, i64 44 ; 2 uses
  store i32 %i.dl, ptr %i.dm, align 4, !tbaa !62
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dg, i64 48
  store i32 %i.cj, ptr %i.dn, align 8, !tbaa !102
  %i.do = load i32, ptr %i.bu, align 4, !tbaa !62
  %i.dp = sub nsw i32 %i.do, %i.dl                ; 2 uses
  store i32 %i.dp, ptr %i.bu, align 4, !tbaa !62
  %i.dq = icmp sgt i32 %i.dp, 0
  br i1 %i.dq, label %bb.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 245) #14
  tail call void @abort() #15
  unreachable

bb.i:                                             ; preds = %._crit_edge
  %i.dr = load i32, ptr %i.dm, align 4, !tbaa !62
  %i.ds = icmp sgt i32 %i.dr, 0
  br i1 %i.ds, label %split_box.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10, i32 noundef 246) #14
  tail call void @abort() #15
  unreachable

split_box.exit:                                   ; preds = %bb.i
  tail call fastcc void @compute_box_stats(ptr noundef nonnull %i.c, ptr noundef nonnull %.073106143)
  tail call fastcc void @compute_box_stats(ptr noundef nonnull %i.c, ptr noundef nonnull %i.dg)
  %i.dt = load i32, ptr %i.bi, align 8, !tbaa !103 ; 6 uses
  %i.du = load i32, ptr %i.bj, align 8, !tbaa !23
  %i.dv = load i32, ptr %i.bk, align 4, !tbaa !24
  %i.dw = sub nsw i32 %i.du, %i.dv
  %i.dx = icmp ne i32 %i.dt, %i.dw
  %i.dy = icmp sgt i32 %i.dt, 0
  %or.cond.i = and i1 %i.dy, %i.dx
  br i1 %or.cond.i, label %.lr.ph.i83, label %.critedge.loopexit

.lr.ph.i83:                                       ; preds = %split_box.exit
  %wide.trip.count.i84 = zext nneg i32 %i.dt to i64 ; 2 uses
  %xtraiter157 = and i64 %wide.trip.count.i84, 1
  %i.dz = icmp eq i32 %i.dt, 1
  br i1 %i.dz, label %.epil.preheader, label %.lr.ph.i83.new

.lr.ph.i83.new:                                   ; preds = %.lr.ph.i83
  %unroll_iter = and i64 %wide.trip.count.i84, 2147483646
  br label %bb.k

bb.k:                                             ; preds = %bb.o, %.lr.ph.i83.new
  %indvars.iv.i85 = phi i64 [ 0, %.lr.ph.i83.new ], [ %indvars.iv.next.i86.1, %bb.o ] ; 4 uses
  %.01522.i = phi i64 [ -1, %.lr.ph.i83.new ], [ %.1.i.1, %bb.o ] ; 3 uses
  %.01621.i = phi i32 [ -1, %.lr.ph.i83.new ], [ %.117.i.1, %bb.o ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i83.new ], [ %niter.next.1, %bb.o ]
  %i.ea = getelementptr inbounds nuw [56 x i8], ptr %i.be, i64 %indvars.iv.i85 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 44
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !62
  %i.ed = icmp sgt i32 %i.ec, 1
  br i1 %i.ed, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ea, i64 32
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !66 ; 2 uses
  %i.eg = icmp sgt i64 %i.ef, %.01522.i
  %i.eh = trunc nuw nsw i64 %indvars.iv.i85 to i32
  %spec.select.i = select i1 %i.eg, i32 %i.eh, i32 %.01621.i
  %spec.select20.i = tail call i64 @llvm.smax.i64(i64 %i.ef, i64 %.01522.i)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.117.i = phi i32 [ %.01621.i, %bb.k ], [ %spec.select.i, %bb.l ] ; 2 uses
  %.1.i = phi i64 [ %.01522.i, %bb.k ], [ %spec.select20.i, %bb.l ] ; 3 uses
  %indvars.iv.next.i86 = or disjoint i64 %indvars.iv.i85, 1 ; 2 uses
  %i.ei = getelementptr inbounds nuw [56 x i8], ptr %i.be, i64 %indvars.iv.next.i86 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 44
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !62
  %i.el = icmp sgt i32 %i.ek, 1
  br i1 %i.el, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.em = getelementptr inbounds nuw i8, ptr %i.ei, i64 32
  %i.en = load i64, ptr %i.em, align 8, !tbaa !66 ; 2 uses
  %i.eo = icmp sgt i64 %i.en, %.1.i
  %i.ep = trunc nuw nsw i64 %indvars.iv.next.i86 to i32
  %spec.select.i.1 = select i1 %i.eo, i32 %i.ep, i32 %.117.i
  %spec.select20.i.1 = tail call i64 @llvm.smax.i64(i64 %i.en, i64 %.1.i)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.117.i.1 = phi i32 [ %.117.i, %bb.m ], [ %spec.select.i.1, %bb.n ] ; 3 uses
  %.1.i.1 = phi i64 [ %.1.i, %bb.m ], [ %spec.select20.i.1, %bb.n ] ; 2 uses
  %indvars.iv.next.i86.1 = add nuw nsw i64 %indvars.iv.i85, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %get_next_box_id_to_split.exit.unr-lcssa, label %bb.k, !llvm.loop !93

get_next_box_id_to_split.exit.unr-lcssa:          ; preds = %bb.o
  %lcmp.mod158.not = icmp eq i64 %xtraiter157, 0
  br i1 %lcmp.mod158.not, label %get_next_box_id_to_split.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %get_next_box_id_to_split.exit.unr-lcssa, %.lr.ph.i83
  %indvars.iv.i85.epil.init = phi i64 [ 0, %.lr.ph.i83 ], [ %indvars.iv.next.i86.1, %get_next_box_id_to_split.exit.unr-lcssa ] ; 2 uses
  %.01522.i.epil.init = phi i64 [ -1, %.lr.ph.i83 ], [ %.1.i.1, %get_next_box_id_to_split.exit.unr-lcssa ]
  %.01621.i.epil.init = phi i32 [ -1, %.lr.ph.i83 ], [ %.117.i.1, %get_next_box_id_to_split.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod160 = trunc i32 %i.dt to i1
  tail call void @llvm.assume(i1 %lcmp.mod160)
  %i.eq = getelementptr inbounds nuw [56 x i8], ptr %i.be, i64 %indvars.iv.i85.epil.init ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 44
  %i.es = load i32, ptr %i.er, align 4, !tbaa !62
  %i.et = icmp sgt i32 %i.es, 1
  br i1 %i.et, label %bb.p, label %get_next_box_id_to_split.exit

bb.p:                                             ; preds = %.epil.preheader
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eq, i64 32
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !66
  %i.ew = icmp sgt i64 %i.ev, %.01522.i.epil.init
  %i.ex = trunc nuw nsw i64 %indvars.iv.i85.epil.init to i32
  %spec.select.i.epil = select i1 %i.ew, i32 %i.ex, i32 %.01621.i.epil.init
  br label %get_next_box_id_to_split.exit

get_next_box_id_to_split.exit:                    ; preds = %.epil.preheader, %bb.p, %get_next_box_id_to_split.exit.unr-lcssa
  %.117.i.lcssa = phi i32 [ %.117.i.1, %get_next_box_id_to_split.exit.unr-lcssa ], [ %.01621.i.epil.init, %.epil.preheader ], [ %spec.select.i.epil, %bb.p ] ; 2 uses
  %i.ey = icmp slt i32 %.117.i.lcssa, 0
  br i1 %i.ey, label %.critedge.loopexit, label %bb.c

.critedge.loopexit:                               ; preds = %split_box.exit, %get_next_box_id_to_split.exit, %bb.c
  %i.ez = sitofp nsz i32 %i.dt to double
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.b
  %i.fa = phi double [ 1.000000e+00, %bb.b ], [ %i.ez, %.critedge.loopexit ]
  %i.fb = load i32, ptr %i.h, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.fc = sitofp nsz i32 %i.fb to double
  %i.fd = fdiv nsz double %i.fa, %i.fc            ; 2 uses
  %i.fe = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 32, ptr noundef nonnull @.str.12, double noundef %i.fd) #14 ; 0 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.bc, i64 312
  %i.fg = call i32 @av_dict_set(ptr noundef nonnull %i.ff, ptr noundef nonnull @.str.13, ptr noundef nonnull %i.a, i32 noundef 0) #14 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.fh = load i32, ptr %i.bi, align 8, !tbaa !103
  %i.fi = load i32, ptr %i.bk, align 4, !tbaa !24
  %.not81 = icmp eq i32 %i.fi, 0
  %i.fj = select i1 %.not81, ptr @.str.7, ptr @.str.6
  %i.fk = load i32, ptr %i.h, align 8, !tbaa !51
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 32, ptr noundef nonnull @.str.5, i32 noundef %i.fh, ptr noundef nonnull %i.fj, i32 noundef %i.fk, double noundef %i.fd) #14
  %i.fl = load i32, ptr %i.bi, align 8, !tbaa !103 ; 2 uses
  %i.fm = icmp sgt i32 %i.fl, 0
  br i1 %i.fm, label %.lr.ph108, label %.critedge.._crit_edge109_crit_edge

.critedge.._crit_edge109_crit_edge:               ; preds = %.critedge
  %.pre117 = sext i32 %i.fl to i64
  br label %._crit_edge109

._crit_edge109:                                   ; preds = %.lr.ph108, %.critedge.._crit_edge109_crit_edge
  %.pre-phi = phi i64 [ %.pre117, %.critedge.._crit_edge109_crit_edge ], [ %i.hu, %.lr.ph108 ]
  call void @qsort(ptr noundef nonnull %i.be, i64 noundef %.pre-phi, i64 noundef 56, ptr noundef nonnull @cmp_color) #14
  %i.fn = load ptr, ptr %i.b, align 8, !tbaa !19  ; 5 uses
  %i.fo = load ptr, ptr %i.bc, align 8, !tbaa !41 ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.bc, i64 64
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !42
  %i.fr = ashr i32 %i.fq, 2                       ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.bc, i64 108 ; 2 uses
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !39 ; 3 uses
  %i.fu = icmp sgt i32 %i.ft, 0
  br i1 %i.fu, label %.preheader.lr.ph.i, label %._crit_edge51.i

.preheader.lr.ph.i:                               ; preds = %._crit_edge109
  %i.fv = getelementptr inbounds nuw i8, ptr %i.bc, i64 104 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fn, i64 538672
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fn, i64 524336
  %i.fy = sext i32 %i.fr to i64                   ; 2 uses
  %i.fz = load i32, ptr %i.fv, align 8, !tbaa !40 ; 2 uses
  %i.ga = icmp sgt i32 %i.fz, 0
  br i1 %i.ga, label %.preheader.i89, label %.preheader.lr.ph.split.us.i

.preheader.lr.ph.split.us.i:                      ; preds = %.preheader.lr.ph.i
  %i.gb = zext nneg i32 %i.ft to i64
  %i.gc = shl nuw nsw i64 %i.gb, 2
  %i.gd = mul nsw i64 %i.gc, %i.fy
  %scevgep.i = getelementptr i8, ptr %i.fo, i64 %i.gd
  br label %._crit_edge51.i

.preheader.i89:                                   ; preds = %.preheader.lr.ph.i, %._crit_edge.i90
  %i.ge = phi i32 [ %i.gj, %._crit_edge.i90 ], [ %i.ft, %.preheader.lr.ph.i ]
  %i.gf = phi i32 [ %i.gk, %._crit_edge.i90 ], [ %i.fz, %.preheader.lr.ph.i ] ; 2 uses
  %.03650.i = phi i32 [ %i.gm, %._crit_edge.i90 ], [ 0, %.preheader.lr.ph.i ] ; 2 uses
  %.03749.i = phi i32 [ %.1.lcssa.i91, %._crit_edge.i90 ], [ 0, %.preheader.lr.ph.i ] ; 2 uses
  %.03848.i = phi ptr [ %i.gl, %._crit_edge.i90 ], [ %i.fo, %.preheader.lr.ph.i ] ; 3 uses
  %.03947.i = phi i32 [ %.140.lcssa.i, %._crit_edge.i90 ], [ 0, %.preheader.lr.ph.i ] ; 2 uses
  %i.gg = icmp sgt i32 %i.gf, 0
end_hunk_0
