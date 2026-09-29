Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/common_ompio_aggregators?download=true
inline.NumInlined: 4
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 17
begin_hunk_0_@mca_common_ompio_prepare_to_group:bb.a
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void (i32, ptr, ...) @opal_output(i32 noundef 1, ptr noundef nonnull @.str.19) #10
  call void @free(ptr noundef nonnull %i.p) #10
  br label %bb.ak

bb.g:                                             ; preds = %bb.e
  %i.w = load i32, ptr %i.k, align 4, !tbaa !77   ; 6 uses
  %i.x = sext i32 %i.w to i64
  %i.y = shl nsw i64 %i.x, 3
  %i.z = call noalias ptr @malloc(i64 noundef %i.y) #11 ; 5 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.h, label %.preheader143

.preheader143:                                    ; preds = %bb.g
  %i.ab = icmp sgt i32 %i.w, 0
  br i1 %i.ab, label %.lr.ph.preheader, label %.preheader142

.lr.ph.preheader:                                 ; preds = %.preheader143
  %wide.trip.count = zext nneg i32 %i.w to i64    ; 4 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ac = icmp eq i32 %i.w, 1
  br i1 %i.ac, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

bb.h:                                             ; preds = %bb.g
  call void (i32, ptr, ...) @opal_output(i32 noundef 1, ptr noundef nonnull @.str.2) #10
  call void @free(ptr noundef nonnull %i.p) #10
  br label %bb.ak

.lr.ph148.unr-lcssa:                              ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph148, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.lr.ph148.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %.lr.ph148.unr-lcssa ] ; 2 uses
  %lcmp.mod213 = trunc i32 %i.w to i1
  call void @llvm.assume(i1 %lcmp.mod213)
  %.idx.epil = mul nuw nsw i64 %indvars.iv.epil.init, 24
  %i.ad = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.epil ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !66
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !66
  %i.ah = add nsw i64 %i.ag, %i.ae
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv.epil.init
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !66
  br label %.lr.ph148

.lr.ph148:                                        ; preds = %.lr.ph148.unr-lcssa, %.lr.ph.epil.preheader
  %.promoted = load i64, ptr %4, align 8, !tbaa !66 ; 2 uses
  %xtraiter214 = and i64 %wide.trip.count, 3      ; 3 uses
  %i.aj = icmp ult i32 %i.w, 4
  br i1 %i.aj, label %.epil.preheader, label %.lr.ph148.new

.lr.ph148.new:                                    ; preds = %.lr.ph148
  %unroll_iter218 = and i64 %wide.trip.count, 2147483644
  br label %bb.i

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %.idx = mul nuw nsw i64 %indvars.iv, 24
  %i.ak = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !66
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !66
  %i.ao = add nsw i64 %i.an, %i.al
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !66
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %.idx.1 = mul nuw nsw i64 %indvars.iv.next, 24
  %i.aq = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.1 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !66
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.at = load i64, ptr %i.as, align 8, !tbaa !66
  %i.au = add nsw i64 %i.at, %i.ar
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv.next
  store i64 %i.au, ptr %i.av, align 8, !tbaa !66
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph148.unr-lcssa, label %.lr.ph, !llvm.loop !123

bb.i:                                             ; preds = %bb.i, %.lr.ph148.new
  %indvars.iv168 = phi i64 [ 0, %.lr.ph148.new ], [ %indvars.iv.next169.3, %bb.i ] ; 5 uses
  %i.aw = phi i64 [ %.promoted, %.lr.ph148.new ], [ %i.bp, %bb.i ]
  %niter219 = phi i64 [ 0, %.lr.ph148.new ], [ %niter219.next.3, %bb.i ]
  %.idx204 = mul nuw nsw i64 %indvars.iv168, 24
  %i.ax = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx204
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !66
  %i.ba = add nsw i64 %i.az, %i.aw
  %i.bb = mul nuw i64 %indvars.iv168, 24
  %i.bc = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 40
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !66
  %i.bf = add nsw i64 %i.be, %i.ba
  %i.bg = mul nuw i64 %indvars.iv168, 24
  %i.bh = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 64
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !66
  %i.bk = add nsw i64 %i.bj, %i.bf
  %i.bl = mul nuw i64 %indvars.iv168, 24
  %i.bm = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 88
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !66
  %i.bp = add nsw i64 %i.bo, %i.bk                ; 3 uses
  %indvars.iv.next169.3 = add nuw nsw i64 %indvars.iv168, 4 ; 2 uses
  %niter219.next.3 = add i64 %niter219, 4         ; 2 uses
  %niter219.ncmp.3 = icmp eq i64 %niter219.next.3, %unroll_iter218
  br i1 %niter219.ncmp.3, label %._crit_edge.unr-lcssa, label %bb.i, !llvm.loop !124

._crit_edge.unr-lcssa:                            ; preds = %bb.i
  %lcmp.mod215.not = icmp eq i64 %xtraiter214, 0
  br i1 %lcmp.mod215.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph148
  %indvars.iv168.epil.init = phi i64 [ 0, %.lr.ph148 ], [ %indvars.iv.next169.3, %._crit_edge.unr-lcssa ]
  %.epil.init = phi i64 [ %.promoted, %.lr.ph148 ], [ %i.bp, %._crit_edge.unr-lcssa ]
  %lcmp.mod217 = icmp ne i64 %xtraiter214, 0
  call void @llvm.assume(i1 %lcmp.mod217)
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.epil.preheader
  %indvars.iv168.epil = phi i64 [ %indvars.iv168.epil.init, %.epil.preheader ], [ %indvars.iv.next169.epil, %bb.j ] ; 2 uses
  %i.bq = phi i64 [ %.epil.init, %.epil.preheader ], [ %i.bu, %bb.j ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.j ]
  %.idx204.epil = mul nuw nsw i64 %indvars.iv168.epil, 24
  %i.br = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx204.epil
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !66
  %i.bu = add nsw i64 %i.bt, %i.bq                ; 2 uses
  %indvars.iv.next169.epil = add nuw nsw i64 %indvars.iv168.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter214
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.j, !llvm.loop !125

._crit_edge:                                      ; preds = %bb.j, %._crit_edge.unr-lcssa
  %.lcssa212 = phi i64 [ %i.bp, %._crit_edge.unr-lcssa ], [ %i.bu, %bb.j ]
  store i64 %.lcssa212, ptr %4, align 8, !tbaa !66
  br label %.preheader142

.preheader142:                                    ; preds = %.preheader143, %._crit_edge
  store ptr %i.p, ptr %1, align 8, !tbaa !88
  store ptr %i.z, ptr %2, align 8, !tbaa !88
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 5 uses
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !75 ; 3 uses
  %i.bx = icmp sgt i32 %i.bw, 0
  br i1 %i.bx, label %.lr.ph152, label %._crit_edge153

.lr.ph152:                                        ; preds = %.preheader142
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !76
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph152, %bb.m
  %i.cb = phi i32 [ %i.bw, %.lr.ph152 ], [ %i.cg, %bb.m ]
  %indvars.iv173 = phi i64 [ 0, %.lr.ph152 ], [ %indvars.iv.next174, %bb.m ] ; 2 uses
  %i.cc = load i32, ptr %i.by, align 8, !tbaa !67
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %indvars.iv173
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !35
  %i.cf = icmp eq i32 %i.cc, %i.ce
  br i1 %i.cf, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 1, ptr %7, align 4, !tbaa !35
  %.pre = load i32, ptr %i.bv, align 8, !tbaa !75
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.cg = phi i32 [ %i.cb, %bb.k ], [ %.pre, %bb.l ] ; 3 uses
  %indvars.iv.next174 = add nuw nsw i64 %indvars.iv173, 1 ; 2 uses
  %i.ch = sext i32 %i.cg to i64
  %i.ci = icmp slt i64 %indvars.iv.next174, %i.ch
  br i1 %i.ci, label %bb.k, label %._crit_edge153, !llvm.loop !126

._crit_edge153:                                   ; preds = %bb.m, %.preheader142
  %.lcssa144 = phi i32 [ %i.bw, %.preheader142 ], [ %i.cg, %bb.m ] ; 2 uses
  %i.cj = load i32, ptr %7, align 4, !tbaa !35
  %i.ck = icmp eq i32 %i.cj, 1
  br i1 %i.ck, label %bb.n, label %bb.aj

bb.n:                                             ; preds = %._crit_edge153
  %i.cl = sext i32 %.lcssa144 to i64              ; 2 uses
  %i.cm = shl nsw i64 %i.cl, 3
  %i.cn = call noalias ptr @malloc(i64 noundef %i.cm) #11 ; 6 uses
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void (i32, ptr, ...) @opal_output(i32 noundef 1, ptr noundef nonnull @.str.2) #10
  br label %bb.ak

bb.p:                                             ; preds = %bb.n
  %i.cp = shl nsw i64 %i.cl, 2
  %i.cq = call noalias ptr @malloc(i64 noundef %i.cp) #11 ; 10 uses
  %i.cr = icmp eq ptr %i.cq, null
  br i1 %i.cr, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void (i32, ptr, ...) @opal_output(i32 noundef 1, ptr noundef nonnull @.str.2) #10
  call void @free(ptr noundef nonnull %i.cn) #10
  br label %bb.ak

bb.r:                                             ; preds = %bb.p
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 4 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !76
  %i.cu = load ptr, ptr %i.t, align 8, !tbaa !68
  %i.cv = call i32 @ompi_fcoll_base_coll_allgather_array(ptr noundef %4, i32 noundef 1, ptr noundef nonnull @ompi_mpi_long_long_int, ptr noundef nonnull %i.cn, i32 noundef 1, ptr noundef nonnull @ompi_mpi_long_long_int, i32 noundef 0, ptr noundef %i.ct, i32 noundef %.lcssa144, ptr noundef %i.cu) #10 ; 2 uses
  %.not136 = icmp eq i32 %i.cv, 0
  br i1 %.not136, label %.preheader141, label %bb.s

.preheader141:                                    ; preds = %bb.r
  %i.cw = load i32, ptr %i.bv, align 8, !tbaa !75
  %i.cx = icmp sgt i32 %i.cw, 0
  br i1 %i.cx, label %.lr.ph155, label %._crit_edge156.thread

._crit_edge156.thread:                            ; preds = %.preheader141
  store ptr %i.cn, ptr %3, align 8, !tbaa !88
  br label %._crit_edge163

.lr.ph155:                                        ; preds = %.preheader141
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  br label %bb.t

bb.s:                                             ; preds = %bb.r
  call void (i32, ptr, ...) @opal_output(i32 noundef 1, ptr noundef nonnull @.str.20) #10
  call void @free(ptr noundef nonnull %i.cq) #10
  br label %bb.ak

bb.t:                                             ; preds = %.lr.ph155, %bb.y
  %indvars.iv176 = phi i64 [ 0, %.lr.ph155 ], [ %indvars.iv.next177, %bb.y ] ; 4 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %indvars.iv176 ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !66
  %i.db = load ptr, ptr %i.cy, align 8, !tbaa !32
  %i.dc = call i32 %i.db(ptr noundef nonnull @.str.10, i32 noundef 14) #10
  %i.dd = sext i32 %i.dc to i64
  %i.de = icmp ugt i64 %i.da, %i.dd
  br i1 %i.de, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %indvars.iv176
  store i32 2, ptr %i.df, align 4, !tbaa !35
  br label %bb.y

bb.v:                                             ; preds = %bb.t
  %i.dg = load i64, ptr %i.cz, align 8, !tbaa !66
  %i.dh = load ptr, ptr %i.cy, align 8, !tbaa !32
  %i.di = call i32 %i.dh(ptr noundef nonnull @.str.10, i32 noundef 14) #10
  %i.dj = sext i32 %i.di to i64
  %i.dk = icmp ult i64 %i.dg, %i.dj
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %indvars.iv176 ; 2 uses
  br i1 %i.dk, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 1, ptr %i.dl, align 4, !tbaa !35
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  store i32 3, ptr %i.dl, align 4, !tbaa !35
  br label %bb.y

bb.y:                                             ; preds = %bb.u, %bb.x, %bb.w
  %indvars.iv.next177 = add nuw nsw i64 %indvars.iv176, 1 ; 2 uses
  %i.dm = load i32, ptr %i.bv, align 8, !tbaa !75 ; 5 uses
  %i.dn = sext i32 %i.dm to i64
  %i.do = icmp slt i64 %indvars.iv.next177, %i.dn
  br i1 %i.do, label %bb.t, label %._crit_edge156, !llvm.loop !127

._crit_edge156:                                   ; preds = %bb.y
  store ptr %i.cn, ptr %3, align 8, !tbaa !88
  %i.dp = icmp sgt i32 %i.dm, 0
  br i1 %i.dp, label %.lr.ph160, label %._crit_edge163

.lr.ph160:                                        ; preds = %._crit_edge156
  %i.dq = add nsw i32 %i.dm, -1
  %i.dr = zext nneg i32 %i.dq to i64              ; 2 uses
  %wide.trip.count182 = zext nneg i32 %i.dm to i64
  %i.ds = load i32, ptr %i.cq, align 4, !tbaa !35
  %i.dt = icmp eq i32 %i.ds, 1
  br i1 %i.dt, label %bb.z, label %9

bb.z:                                             ; preds = %.lr.ph160
  store i32 3, ptr %i.cq, align 4, !tbaa !35
  br label %9

9:                                                ; preds = %bb.z, %.lr.ph160
  switch i32 %i.dm, label %.peel.next.preheader.split [
    i32 1, label %.lr.ph162
    i32 2, label %.peel.next.peel
  ]

.peel.next.preheader.split:                       ; preds = %9
  %10 = add nsw i64 %wide.trip.count182, -2
  br label %.peel.next

.peel.next.peel:                                  ; preds = %9, %.thread
  %11 = phi i64 [ 1, %9 ], [ %indvars.iv.next180, %.thread ] ; 2 uses
  %12 = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %11 ; 4 uses
  %13 = load i32, ptr %12, align 4, !tbaa !35
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %.lr.ph162

15:                                               ; preds = %.peel.next.peel
  %16 = icmp eq i64 %11, %i.dr
  %17 = getelementptr i8, ptr %12, i64 -4
  %18 = load i32, ptr %17, align 4, !tbaa !35
  %.not138.peel = icmp eq i32 %18, 1              ; 2 uses
  br i1 %16, label %22, label %19

19:                                               ; preds = %15
  br i1 %.not138.peel, label %.lr.ph162, label %bb.aa

bb.aa:                                            ; preds = %19
  %20 = getelementptr inbounds nuw i8, ptr %12, i64 4
  %21 = load i32, ptr %20, align 4, !tbaa !35
  %exitcond183.peel.not = icmp eq i32 %21, 1
  br i1 %exitcond183.peel.not, label %.lr.ph162, label %.thread.sink.split.peel

22:                                               ; preds = %15
  br i1 %.not138.peel, label %.lr.ph162, label %.thread.sink.split.peel

.thread.sink.split.peel:                          ; preds = %22, %bb.aa
  store i32 3, ptr %12, align 4, !tbaa !35
  br label %.lr.ph162

.lr.ph162:                                        ; preds = %.thread.sink.split.peel, %22, %bb.aa, %19, %.peel.next.peel, %9
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  br label %bb.af

.peel.next:                                       ; preds = %.peel.next.preheader.split, %.thread
  %indvars.iv179 = phi i64 [ %indvars.iv.next180, %.thread ], [ 1, %.peel.next.preheader.split ] ; 4 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %indvars.iv179 ; 4 uses
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !35
  %i.dx = icmp eq i32 %i.dw, 1
  br i1 %i.dx, label %bb.ab, label %.thread

bb.ab:                                            ; preds = %.peel.next
  %i.dy = icmp eq i64 %indvars.iv179, %i.dr
  %i.dz = getelementptr i8, ptr %i.dv, i64 -4
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !35
  %.not138 = icmp eq i32 %i.ea, 1                 ; 2 uses
  br i1 %i.dy, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  br i1 %.not138, label %.thread, label %.thread.sink.split

bb.ad:                                            ; preds = %bb.ab
  br i1 %.not138, label %.thread, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dv, i64 4
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !35
  %i.ed = icmp eq i32 %i.ec, 1
  br i1 %i.ed, label %.thread, label %.thread.sink.split

.thread.sink.split:                               ; preds = %bb.ae, %bb.ac
  store i32 3, ptr %i.dv, align 4, !tbaa !35
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.ac, %.peel.next, %bb.ae, %bb.ad
  %indvars.iv.next180 = add nuw nsw i64 %indvars.iv179, 1 ; 2 uses
  %exitcond183.not = icmp eq i64 %indvars.iv179, %10
  br i1 %exitcond183.not, label %.peel.next.peel, label %.peel.next, !llvm.loop !128

bb.af:                                            ; preds = %.lr.ph162, %.thread140
  %indvars.iv185 = phi i64 [ 0, %.lr.ph162 ], [ %indvars.iv.next186, %.thread140 ] ; 5 uses
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %indvars.iv185
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !35 ; 2 uses
  switch i32 %i.ef, label %.thread140 [
    i32 1, label %bb.ag
    i32 2, label %bb.ah
    i32 3, label %bb.ai
  ]

bb.ag:                                            ; preds = %bb.af
  %i.eg = load i32, ptr %i.du, align 8, !tbaa !67
  %i.eh = load ptr, ptr %i.cs, align 8, !tbaa !76
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %indvars.iv185
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !35
  %i.ek = icmp eq i32 %i.eg, %i.ej
  br i1 %i.ek, label %.thread140.sink.split, label %.thread140

bb.ah:                                            ; preds = %bb.af
  %i.el = load i32, ptr %i.du, align 8, !tbaa !67
  %i.em = load ptr, ptr %i.cs, align 8, !tbaa !76
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %indvars.iv185
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !35
  %i.ep = icmp eq i32 %i.el, %i.eo
  br i1 %i.ep, label %.thread140.sink.split, label %.thread140

bb.ai:                                            ; preds = %bb.af
  %i.eq = load i32, ptr %i.du, align 8, !tbaa !67
  %i.er = load ptr, ptr %i.cs, align 8, !tbaa !76
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %indvars.iv185
  %i.et = load i32, ptr %i.es, align 4, !tbaa !35
  %i.eu = icmp eq i32 %i.eq, %i.et
  br i1 %i.eu, label %.thread140.sink.split, label %.thread140

.thread140.sink.split:                            ; preds = %bb.ai, %bb.ah, %bb.ag
  store i32 %i.ef, ptr %8, align 4, !tbaa !35
  br label %.thread140

.thread140:                                       ; preds = %.thread140.sink.split, %bb.af, %bb.ag, %bb.ah, %bb.ai
  %indvars.iv.next186 = add nuw nsw i64 %indvars.iv185, 1 ; 2 uses
  %i.ev = load i32, ptr %i.bv, align 8, !tbaa !75
  %i.ew = sext i32 %i.ev to i64
  %i.ex = icmp slt i64 %indvars.iv.next186, %i.ew
  br i1 %i.ex, label %bb.af, label %._crit_edge163, !llvm.loop !129

._crit_edge163:                                   ; preds = %.thread140, %._crit_edge156, %._crit_edge156.thread
  store ptr %i.cq, ptr %5, align 8, !tbaa !86
  br label %bb.aj

bb.aj:                                            ; preds = %._crit_edge163, %._crit_edge153
  %i.ey = load ptr, ptr %i.r, align 8, !tbaa !78
  %i.ez = load i32, ptr %i.k, align 4, !tbaa !77
  %i.fa = load ptr, ptr %i.t, align 8, !tbaa !68
  %i.fb = call i32 @ompi_fcoll_base_coll_bcast_array(ptr noundef %8, i32 noundef 1, ptr noundef nonnull @ompi_mpi_int, i32 noundef 0, ptr noundef %i.ey, i32 noundef %i.ez, ptr noundef %i.fa) #10
  br label %bb.ak

bb.ak:                                            ; preds = %bb.f, %bb.o, %bb.s, %bb.aj, %bb.q, %bb.h, %bb.d
  %.0127 = phi i32 [ -2, %bb.d ], [ -2, %bb.h ], [ %i.v, %bb.f ], [ -2, %bb.o ], [ -2, %bb.q ], [ %i.fb, %bb.aj ], [ %i.cv, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.0127
}

; Function Attrs: nounwind uwtable
define range(i32 -2, 1) i32 @mca_common_ompio_split_initial_groups(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 9 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 8 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store i64 0, ptr %i.c, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  store i64 0, ptr %i.d, align 8, !tbaa !66
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !32
  %i.g = tail call i32 %i.f(ptr noundef nonnull @.str.10, i32 noundef 14) #10
  %i.h = sext i32 %i.g to i64                     ; 2 uses
  %i.i = sdiv i64 %i.h, %3
  %i.j = srem i64 %i.h, %3
  %.not = icmp ne i64 %i.j, 0
  %i.k = zext i1 %.not to i64
  %i.l = add nsw i64 %i.i, %i.k
  %i.m = trunc i64 %i.l to i32                    ; 9 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 396
  %i.o = load i32, ptr %i.n, align 4, !tbaa !77   ; 8 uses
  %i.p = call i32 @mca_common_ompio_split_a_group(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %i.m, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) ; 2 uses
  %.not56 = icmp eq i32 %i.p, 0
  br i1 %.not56, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @opal_output(i32 noundef 1, ptr noundef nonnull @.str.16) #10
  br label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !32
  %i.r = tail call i32 %i.q(ptr noundef nonnull @.str.5, i32 noundef 16) #10
  switch i32 %i.r, label %bb.n [
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 3, label %.preheader
    i32 4, label %.preheader61
  ]

bb.d:                                             ; preds = %bb.c
  %i.s = load i32, ptr %i.a, align 4, !tbaa !35
  br label %bb.n

bb.e:                                             ; preds = %bb.c
  %i.t = load i32, ptr %i.a, align 4, !tbaa !35   ; 3 uses
  %i.u = sitofp i32 %i.t to double
  %i.v = sitofp i32 %i.m to double
  %i.w = fmul nnan double %i.v, 5.000000e-01
  %i.x = fcmp ult double %i.w, %i.u
  br i1 %i.x, label %bb.n, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = load i32, ptr %i.b, align 4, !tbaa !35   ; 2 uses
  %i.z = srem i32 %i.o, %i.y
  %i.aa = sdiv i32 %i.o, %i.y                     ; 2 uses
  %i.ab = icmp eq i32 %i.z, 0                     ; 2 uses
  %i.ac = add nsw i32 %i.t, %i.m
  %spec.select = select i1 %i.ab, i32 %i.aa, i32 %i.m
  %spec.select85 = select i1 %i.ab, i32 %i.aa, i32 %i.ac
  br label %bb.n

.preheader:                                       ; preds = %bb.c, %bb.g
  %.049 = phi i32 [ %i.ah, %bb.g ], [ %i.m, %bb.c ] ; 3 uses
  %i.ad = load i64, ptr %i.c, align 8, !tbaa !66
  %i.ae = icmp slt i64 %i.ad, 1048576
  %i.af = icmp slt i32 %.049, %i.o
  %or.cond = select i1 %i.ae, i1 %i.af, i1 false
  br i1 %or.cond, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.preheader
  %i.ag = add nsw i32 %.049, %i.o
  %i.ah = sdiv i32 %i.ag, 2                       ; 2 uses
  %i.ai = call i32 @mca_common_ompio_split_a_group(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %i.ah, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) ; 2 uses
  %.not59 = icmp eq i32 %i.ai, 0
  br i1 %.not59, label %.preheader, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (i32, ptr, ...) @opal_output(i32 noundef 1, ptr noundef nonnull @.str.17) #10
  br label %bb.o

bb.i:                                             ; preds = %.preheader
  %i.aj = load i32, ptr %i.a, align 4, !tbaa !35
  br label %bb.n

.preheader61:                                     ; preds = %bb.c, %bb.j
  %.1 = phi i32 [ %i.aq, %bb.j ], [ %i.m, %bb.c ] ; 6 uses
  %i.ak = load i64, ptr %i.c, align 8, !tbaa !66
  %i.al = icmp slt i64 %i.ak, 1048576
  %i.am = icmp slt i32 %.1, %i.o
  %or.cond60 = select i1 %i.al, i1 %i.am, i1 false
  br i1 %or.cond60, label %bb.j, label %bb.l

bb.j:                                             ; preds = %.preheader61
  %i.an = add nsw i32 %.1, %i.o                   ; 2 uses
  %i.ao = sdiv i32 %i.an, 2
  %i.ap = and i32 %i.an, 1
  %i.aq = add nsw i32 %i.ao, %i.ap                ; 2 uses
  %i.ar = call i32 @mca_common_ompio_split_a_group(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %i.aq, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) ; 2 uses
  %.not58 = icmp eq i32 %i.ar, 0
  br i1 %.not58, label %.preheader61, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void (i32, ptr, ...) @opal_output(i32 noundef 1, ptr noundef nonnull @.str.18) #10
  br label %bb.o

bb.l:                                             ; preds = %.preheader61
  %i.as = load i32, ptr %i.a, align 4, !tbaa !35  ; 3 uses
  %i.at = sitofp i32 %i.as to double
  %i.au = sitofp i32 %.1 to double
  %i.av = fmul nnan double %i.au, 5.000000e-01
  %i.aw = fcmp ult double %i.av, %i.at
  br i1 %i.aw, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ax = load i32, ptr %i.b, align 4, !tbaa !35  ; 2 uses
  %i.ay = srem i32 %i.o, %i.ax
  %i.az = sdiv i32 %i.o, %i.ax                    ; 2 uses
  %i.ba = icmp eq i32 %i.ay, 0                    ; 2 uses
  %i.bb = add nsw i32 %i.as, %.1
  %spec.select86 = select i1 %i.ba, i32 %i.az, i32 %.1
  %spec.select87 = select i1 %i.ba, i32 %i.az, i32 %i.bb
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.f, %bb.l, %bb.e, %bb.i, %bb.d, %bb.c
  %.2 = phi i32 [ %i.m, %bb.c ], [ %i.m, %bb.d ], [ %.1, %bb.l ], [ %spec.select, %bb.f ], [ %i.m, %bb.e ], [ %.049, %bb.i ], [ %spec.select86, %bb.m ]
  %.0 = phi i32 [ 0, %bb.c ], [ %i.s, %bb.d ], [ %i.as, %bb.l ], [ %spec.select85, %bb.f ], [ %i.t, %bb.e ], [ %i.aj, %bb.i ], [ %spec.select87, %bb.m ]
  %i.bc = tail call i32 @mca_common_ompio_finalize_split(ptr noundef %0, i32 noundef %.2, i32 noundef %.0)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.k, %bb.h, %bb.b
  %.050 = phi i32 [ %i.p, %bb.b ], [ %i.bc, %bb.n ], [ %i.ai, %bb.h ], [ %i.ar, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
end_hunk_0
begin_hunk_1_@mca_common_ompio_finalize_split:bb.a
  store i32 %i.eg, ptr %i.eh, align 4, !tbaa !35
  %indvars.iv.next84.3 = add nuw nsw i64 %indvars.iv83, 4 ; 2 uses
  %exitcond87.not.3 = icmp eq i64 %indvars.iv.next84.3, %wide.trip.count86
  br i1 %exitcond87.not.3, label %.loopexit, label %.lr.ph70, !llvm.loop !165

.loopexit:                                        ; preds = %.lr.ph70.prol.loopexit, %.lr.ph70, %middle.block132, %.lr.ph72
  %i.ei = icmp slt i64 %indvars.iv.next89, %i.bq
  %indvar.next = add i64 %indvar, 1
  br i1 %i.ei, label %.lr.ph72, label %.loopexit61, !llvm.loop !166

.loopexit61:                                      ; preds = %.lr.ph68.prol.loopexit, %.lr.ph68, %.loopexit, %middle.block146, %.preheader62, %bb.d
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1 ; 2 uses
  %exitcond95.not = icmp eq i64 %indvars.iv.next92, %wide.trip.count94
  br i1 %exitcond95.not, label %.loopexit65, label %bb.d, !llvm.loop !167

.loopexit65:                                      ; preds = %.loopexit61, %.preheader64, %bb.c
  %.054 = phi i32 [ -2, %bb.c ], [ 0, %.preheader64 ], [ 0, %.loopexit61 ]
  ret i32 %.054
}

declare i32 @ompi_fcoll_base_coll_allgather_array(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare i32 @ompi_fcoll_base_coll_allgatherv_array(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare i32 @ompi_fcoll_base_coll_bcast_array(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.minnum.f64(double, double) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fadd.v2f64(double, <2 x double>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(0) }

!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !34}
!1 = distinct !{!1, !34}
!2 = distinct !{!2, !34}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 _ZTS11ompi_file_t", !11, i64 0}
!13 = !{!"long long", !7, i64 0}
!14 = !{!"p1 _ZTS19ompi_communicator_t", !11, i64 0}
!15 = !{!"p1 omnipotent char", !11, i64 0}
!16 = !{!"p1 _ZTS16opal_convertor_t", !11, i64 0}
!17 = !{!"p1 _ZTS11opal_info_t", !11, i64 0}
!18 = !{!"long", !7, i64 0}
!19 = !{!"p1 _ZTS14ompi_request_t", !11, i64 0}
!20 = !{!"_Bool", !7, i64 0}
!21 = !{!"p1 _ZTS5iovec", !11, i64 0}
!22 = !{!"p1 _ZTS15ompi_datatype_t", !11, i64 0}
!23 = !{!"p1 _ZTS27mca_common_ompio_io_array_t", !11, i64 0}
!24 = !{!"p1 _ZTS26mca_base_component_2_1_0_t", !11, i64 0}
!25 = !{!"p1 _ZTS26mca_fs_base_module_1_0_0_t", !11, i64 0}
!26 = !{!"p1 _ZTS29mca_fcoll_base_module_1_0_0_t", !11, i64 0}
!27 = !{!"p1 _ZTS28mca_fbtl_base_module_1_0_0_t", !11, i64 0}
!28 = !{!"p1 _ZTS32mca_sharedfp_base_module_1_0_0_t", !11, i64 0}
!29 = !{!"p1 _ZTS28mca_common_ompio_print_queue", !11, i64 0}
!30 = !{!"p1 int", !11, i64 0}
!31 = !{!"ompio_file_t", !8, i64 0, !12, i64 8, !13, i64 16, !13, i64 24, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !14, i64 48, !15, i64 56, !15, i64 64, !15, i64 72, !16, i64 80, !16, i64 88, !17, i64 96, !8, i64 104, !11, i64 112, !8, i64 120, !8, i64 124, !18, i64 128, !8, i64 136, !18, i64 144, !18, i64 152, !8, i64 160, !8, i64 164, !19, i64 168, !20, i64 176, !11, i64 184, !21, i64 192, !8, i64 200, !22, i64 208, !18, i64 216, !18, i64 224, !8, i64 232, !18, i64 240, !18, i64 248, !22, i64 256, !22, i64 264, !22, i64 272, !18, i64 280, !23, i64 288, !8, i64 296, !24, i64 304, !24, i64 312, !24, i64 320, !24, i64 328, !25, i64 336, !26, i64 344, !27, i64 352, !28, i64 360, !29, i64 368, !29, i64 376, !30, i64 384, !8, i64 392, !8, i64 396, !30, i64 400, !30, i64 408, !8, i64 416, !30, i64 424, !8, i64 432, !11, i64 440, !11, i64 448}
!32 = !{!31, !11, i64 448}
!33 = !{!31, !8, i64 36}
!34 = !{!"llvm.loop.mustprogress"}
!35 = !{!8, !8, i64 0}
!36 = !{!"p1 _ZTS12opal_class_t", !11, i64 0}
!37 = !{!"opal_object_t", !36, i64 0, !8, i64 8}
!38 = !{!"p1 _ZTS19opal_hash_element_t", !11, i64 0}
!39 = !{!"p1 _ZTS24opal_hash_type_methods_t", !11, i64 0}
!40 = !{!"opal_hash_table_t", !37, i64 0, !38, i64 16, !18, i64 24, !18, i64 32, !18, i64 40, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !39, i64 64}
!41 = !{!"opal_infosubscriber_t", !37, i64 0, !40, i64 16, !17, i64 88}
!42 = !{!"opal_mutex_t", !37, i64 0, !7, i64 16, !8, i64 56}
!43 = !{!"ompi_comm_extended_cid_t", !18, i64 0, !7, i64 8}
!44 = !{!"ompi_comm_extended_cid_block_t", !43, i64 0, !18, i64 16, !7, i64 24, !7, i64 25}
!45 = !{!"p1 _ZTS12ompi_group_t", !11, i64 0}
!46 = !{!"p1 _ZTS17opal_hash_table_t", !11, i64 0}
!47 = !{!"p1 _ZTS22mca_topo_base_module_t", !11, i64 0}
!48 = !{!"any p2 pointer", !11, i64 0}
!49 = !{!"p2 _ZTS20ompi_peruse_handle_t", !48, i64 0}
!50 = !{!"p1 _ZTS17ompi_errhandler_t", !11, i64 0}
!51 = !{!"p1 _ZTS14mca_pml_comm_t", !11, i64 0}
!52 = !{!"p1 _ZTS14mca_mtl_comm_t", !11, i64 0}
!53 = !{!"p1 _ZTS25mca_coll_base_comm_coll_t", !11, i64 0}
!54 = !{!"p1 _ZTS15ompi_instance_t", !11, i64 0}
!55 = !{!"p1 _ZTS13opal_object_t", !11, i64 0}
!56 = !{!"ompi_communicator_t", !41, i64 0, !42, i64 96, !15, i64 160, !43, i64 168, !44, i64 184, !8, i64 216, !8, i64 220, !8, i64 224, !8, i64 228, !8, i64 232, !30, i64 240, !8, i64 248, !8, i64 252, !8, i64 256, !45, i64 264, !45, i64 272, !14, i64 280, !46, i64 288, !47, i64 296, !49, i64 304, !50, i64 312, !8, i64 320, !51, i64 328, !52, i64 336, !53, i64 344, !54, i64 352, !55, i64 360, !8, i64 368, !8, i64 372, !20, i64 376, !20, i64 377, !20, i64 378}
!57 = !{!"ompi_predefined_communicator_t", !56, i64 0, !7, i64 384}
!58 = !{!57, !8, i64 224}
!59 = !{!"", !13, i64 0, !30, i64 8, !8, i64 16}
!60 = !{!59, !8, i64 16}
!61 = !{!59, !30, i64 8}
!62 = !{!31, !21, i64 192}
!63 = !{!"iovec", !11, i64 0, !18, i64 8}
!64 = !{!63, !11, i64 0}
!65 = !{!63, !18, i64 8}
!66 = !{!13, !13, i64 0}
!67 = !{!31, !8, i64 32}
!68 = !{!31, !14, i64 48}
!69 = !{!56, !53, i64 344}
!70 = !{!"p1 _ZTS28mca_coll_base_module_2_4_0_t", !11, i64 0}
!71 = !{!"p1 _ZTS11opal_list_t", !11, i64 0}
!72 = !{!"mca_coll_base_comm_coll_t", !11, i64 0, !70, i64 8, !11, i64 16, !70, i64 24, !11, i64 32, !70, i64 40, !11, i64 48, !70, i64 56, !11, i64 64, !70, i64 72, !11, i64 80, !70, i64 88, !11, i64 96, !70, i64 104, !11, i64 112, !70, i64 120, !11, i64 128, !70, i64 136, !11, i64 144, !70, i64 152, !11, i64 160, !70, i64 168, !11, i64 176, !70, i64 184, !11, i64 192, !70, i64 200, !11, i64 208, !70, i64 216, !11, i64 224, !70, i64 232, !11, i64 240, !70, i64 248, !11, i64 256, !70, i64 264, !11, i64 272, !70, i64 280, !11, i64 288, !70, i64 296, !11, i64 304, !70, i64 312, !11, i64 320, !70, i64 328, !11, i64 336, !70, i64 344, !11, i64 352, !70, i64 360, !11, i64 368, !70, i64 376, !11, i64 384, !70, i64 392, !11, i64 400, !70, i64 408, !11, i64 416, !70, i64 424, !11, i64 432, !70, i64 440, !11, i64 448, !70, i64 456, !11, i64 464, !70, i64 472, !11, i64 480, !70, i64 488, !11, i64 496, !70, i64 504, !11, i64 512, !70, i64 520, !11, i64 528, !70, i64 536, !11, i64 544, !70, i64 552, !11, i64 560, !70, i64 568, !11, i64 576, !70, i64 584, !11, i64 592, !70, i64 600, !11, i64 608, !70, i64 616, !11, i64 624, !70, i64 632, !11, i64 640, !70, i64 648, !11, i64 656, !70, i64 664, !11, i64 672, !70, i64 680, !11, i64 688, !70, i64 696, !11, i64 704, !70, i64 712, !11, i64 720, !70, i64 728, !11, i64 736, !70, i64 744, !11, i64 752, !70, i64 760, !11, i64 768, !70, i64 776, !11, i64 784, !70, i64 792, !11, i64 800, !70, i64 808, !11, i64 816, !70, i64 824, !11, i64 832, !70, i64 840, !11, i64 848, !70, i64 856, !11, i64 864, !70, i64 872, !11, i64 880, !70, i64 888, !11, i64 896, !70, i64 904, !11, i64 912, !70, i64 920, !11, i64 928, !70, i64 936, !11, i64 944, !70, i64 952, !11, i64 960, !70, i64 968, !11, i64 976, !70, i64 984, !11, i64 992, !70, i64 1000, !11, i64 1008, !70, i64 1016, !11, i64 1024, !70, i64 1032, !11, i64 1040, !70, i64 1048, !11, i64 1056, !70, i64 1064, !11, i64 1072, !70, i64 1080, !11, i64 1088, !70, i64 1096, !11, i64 1104, !71, i64 1112}
!73 = !{!72, !11, i64 0}
!74 = !{!72, !70, i64 8}
!75 = !{!31, !8, i64 392}
!76 = !{!31, !30, i64 384}
!77 = !{!31, !8, i64 396}
!78 = !{!31, !30, i64 400}
!79 = !{!"llvm.loop.unroll.disable"}
!80 = !{!31, !8, i64 432}
!81 = !{!31, !30, i64 424}
!82 = !{!"llvm.loop.isvectorized", i32 1}
!83 = !{!"llvm.loop.unroll.runtime.disable"}
!84 = !{!31, !8, i64 416}
!85 = !{!31, !30, i64 408}
!86 = !{!30, !30, i64 0}
!87 = !{!"p1 long long", !11, i64 0}
!88 = !{!87, !87, i64 0}
!89 = distinct !{!89, !34}
!90 = !{!31, !18, i64 144}
!91 = !{!31, !18, i64 152}
!92 = !{!31, !8, i64 160}
!93 = distinct !{!93, !34}
!94 = distinct !{!94, !34}
!95 = !{!59, !13, i64 0}
!96 = distinct !{!96, !34}
!97 = distinct !{!97, !34}
!98 = !{!56, !47, i64 296}
!99 = !{!7, !7, i64 0}
!100 = !{!"", !8, i64 0, !30, i64 8, !30, i64 16, !30, i64 24, !8, i64 32}
!101 = !{!100, !8, i64 0}
!102 = !{!100, !30, i64 8}
!103 = !{!100, !30, i64 16}
!104 = !{!100, !30, i64 24}
!105 = distinct !{!105, !34}
!106 = distinct !{!106, !34}
!107 = distinct !{!107, !34}
!108 = distinct !{!108, !79}
!109 = distinct !{!109, !34, !82, !83}
!110 = distinct !{!110, !79}
!111 = distinct !{!111, !34, !82}
!112 = distinct !{!112, !34, !82, !83}
!113 = distinct !{!113, !79}
!114 = distinct !{!114, !34, !82}
!115 = !{!31, !8, i64 104}
!116 = distinct !{!116, !34, !82, !83}
!117 = distinct !{!117, !79}
!118 = distinct !{!118, !34, !82}
!119 = distinct !{!119, !34}
!120 = distinct !{!120, !34}
!121 = !{!72, !11, i64 32}
!122 = !{!72, !70, i64 40}
!123 = distinct !{!123, !34}
!124 = distinct !{!124, !34}
!125 = distinct !{!125, !79}
!126 = distinct !{!126, !34}
!127 = distinct !{!127, !34}
!128 = distinct !{!128, !34, !130}
!129 = distinct !{!129, !34}
!130 = !{!"llvm.loop.peeled.count", i32 2}
!131 = distinct !{!131, !34}
!132 = distinct !{!132, !34}
!133 = distinct !{!133, !34, !82, !83}
!134 = distinct !{!134, !79}
!135 = distinct !{!135, !34, !82}
!136 = distinct !{!136, !34}
!137 = distinct !{!137, !34}
!138 = distinct !{!138, !34}
!139 = !{!"mca_pml_base_module_2_1_0_t", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !8, i64 168, !8, i64 172, !8, i64 176, !11, i64 184}
!140 = !{!139, !11, i64 88}
!141 = !{!139, !11, i64 72}
!142 = !{!"ompi_request_fns_t", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56}
!143 = !{!142, !11, i64 48}
!144 = distinct !{!144, !34, !82, !83}
!145 = distinct !{!145, !79}
!146 = distinct !{!146, !34, !82}
!147 = distinct !{!147, !34, !82, !83}
!148 = distinct !{!148, !34, !83, !82}
!149 = distinct !{!149, !34}
!150 = distinct !{!150, !79}
!151 = distinct !{!151, !34}
!152 = distinct !{!152, !34}
!153 = distinct !{!153, !79}
!154 = distinct !{!154, !34}
!155 = distinct !{!155, !"LVerDomain"}
!156 = distinct !{!156, !155}
!157 = distinct !{!157, !155}
!158 = distinct !{!158, !34, !82, !83}
!159 = distinct !{!159, !34, !82}
!160 = distinct !{!160, !34, !82, !83}
!161 = distinct !{!161, !79}
!162 = distinct !{!162, !34, !82}
!163 = distinct !{!163, !34, !82, !83}
!164 = distinct !{!164, !79}
!165 = distinct !{!165, !34, !82}
!166 = distinct !{!166, !34}
!167 = distinct !{!167, !34}
!168 = !{!156}
!169 = !{!157}
end_hunk_1
