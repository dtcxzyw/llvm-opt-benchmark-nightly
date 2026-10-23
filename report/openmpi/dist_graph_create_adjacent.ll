Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/dist_graph_create_adjacent?download=true
inline.NumInlined: 21
inline.NumDeleted: 11
begin_hunk_0_@PMPI_Dist_graph_create_adjacent:bb.a
bb.p:                                             ; preds = %.lr.ph125.split.us
  %indvars.iv.next148 = add nuw nsw i64 %indvars.iv147, 1 ; 2 uses
  %exitcond151.not = icmp eq i64 %indvars.iv.next148, %wide.trip.count150
  br i1 %exitcond151.not, label %.loopexit, label %.lr.ph125.split.us, !llvm.loop !32

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.s
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.s ], [ 0, %.lr.ph ] ; 3 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !14 ; 3 uses
  %i.aq = icmp sgt i32 %i.ap, -1
  %.not105 = icmp eq i32 %i.ap, -2
  %or.cond108 = or i1 %i.aq, %.not105
  %.not106 = icmp slt i32 %i.ap, %.val.val
  %or.cond117 = select i1 %or.cond108, i1 %.not106, i1 false
  br i1 %or.cond117, label %bb.q, label %.split.us

.split.us:                                        ; preds = %.lr.ph.split, %.lr.ph.split.us
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !56
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.au = load i32, ptr %i.at, align 8, !tbaa !57
  %i.av = tail call i32 @ompi_errhandler_invoke(ptr noundef %i.as, ptr noundef %0, i32 noundef %i.au, i32 noundef 13, ptr noundef nonnull @.str.2) #6
  br label %bb.ag

bb.q:                                             ; preds = %.lr.ph.split
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !14
  %i.ay = icmp slt i32 %i.ax, 0
  br i1 %i.ay, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !56
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !57
  %i.bd = tail call i32 @ompi_errhandler_invoke(ptr noundef %i.ba, ptr noundef %0, i32 noundef %i.bc, i32 noundef 13, ptr noundef nonnull @.str.3) #6
  br label %bb.ag

bb.s:                                             ; preds = %bb.q
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count140
  br i1 %exitcond.not, label %.preheader, label %.lr.ph.split, !llvm.loop !31

.lr.ph125.split:                                  ; preds = %.lr.ph125, %bb.v
  %indvars.iv142 = phi i64 [ %indvars.iv.next143, %bb.v ], [ 0, %.lr.ph125 ] ; 3 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv142
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !14 ; 3 uses
  %i.bg = icmp sgt i32 %i.bf, -1
  %.not102 = icmp eq i32 %i.bf, -2
  %or.cond109 = or i1 %i.bg, %.not102
  %.not103 = icmp slt i32 %i.bf, %.val.val
  %or.cond118 = select i1 %or.cond109, i1 %.not103, i1 false
  br i1 %or.cond118, label %bb.t, label %.split127.us

.split127.us:                                     ; preds = %.lr.ph125.split, %.lr.ph125.split.us
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !56
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !57
  %i.bl = tail call i32 @ompi_errhandler_invoke(ptr noundef %i.bi, ptr noundef %0, i32 noundef %i.bk, i32 noundef 13, ptr noundef nonnull @.str.4) #6
  br label %bb.ag

bb.t:                                             ; preds = %.lr.ph125.split
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv142
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !14
  %i.bo = icmp slt i32 %i.bn, 0
  br i1 %i.bo, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !56
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !57
  %i.bt = tail call i32 @ompi_errhandler_invoke(ptr noundef %i.bq, ptr noundef %0, i32 noundef %i.bs, i32 noundef 13, ptr noundef nonnull @.str.5) #6
  br label %bb.ag

bb.v:                                             ; preds = %bb.t
  %indvars.iv.next143 = add nuw nsw i64 %indvars.iv142, 1 ; 2 uses
  %exitcond146.not = icmp eq i64 %indvars.iv.next143, %wide.trip.count150
  br i1 %exitcond146.not, label %.loopexit, label %.lr.ph125.split, !llvm.loop !32

.loopexit:                                        ; preds = %bb.v, %bb.p, %.preheader, %bb.a
  %i.bu = call i32 @mca_topo_base_comm_select(ptr noundef %0, ptr noundef null, ptr noundef nonnull %i.a, i32 noundef 1024) #6 ; 5 uses
  %.not99 = icmp eq i32 %i.bu, 0
  br i1 %.not99, label %bb.ab, label %bb.w

bb.w:                                             ; preds = %.loopexit
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !56
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !57
  %i.bz = icmp sgt i32 %i.bu, -1
  br i1 %i.bz, label %ompi_errcode_get_mpi_code.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.w
  %i.ca = load i32, ptr @ompi_errcode_intern_lastused, align 4, !tbaa !14 ; 2 uses
  %i.cb = icmp sgt i32 %i.ca, 0
  br i1 %i.cb, label %.lr.ph.i, label %ompi_errcode_get_mpi_code.exit

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.cc = load i8, ptr @opal_uses_threads, align 1, !tbaa !11, !range !12, !noundef !13
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %.lr.ph.split.i, label %.lr.ph.split.us.i, !prof !15

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %i.ce = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 88), align 8
  %i.cf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 112), align 8, !tbaa !24
  %i.cg = sext i32 %i.ce to i64
  %wide.trip.count.i = zext nneg i32 %i.ca to i64
  br label %.thread.i.us.i

.thread.i.us.i:                                   ; preds = %bb.x, %.lr.ph.split.us.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.x ], [ 0, %.lr.ph.split.us.i ] ; 3 uses
  %.not.us.i = icmp slt i64 %indvars.iv.i, %i.cg
  call void @llvm.assume(i1 %.not.us.i)
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv.i
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !25 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !27
  %i.cl = icmp eq i32 %i.ck, %i.bu
  br i1 %i.cl, label %.split.us.i, label %bb.x

bb.x:                                             ; preds = %.thread.i.us.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %ompi_errcode_get_mpi_code.exit, label %.thread.i.us.i, !llvm.loop !0

bb.y:                                             ; preds = %opal_pointer_array_get_item.exit.i
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1 ; 2 uses
  %i.cm = load i32, ptr @ompi_errcode_intern_lastused, align 4, !tbaa !14
  %i.cn = sext i32 %i.cm to i64
  %i.co = icmp slt i64 %indvars.iv.next19.i, %i.cn
  br i1 %i.co, label %.lr.ph.split.i, label %ompi_errcode_get_mpi_code.exit, !llvm.loop !1

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.y
  %i.cp = phi i8 [ %i.dc, %bb.y ], [ 1, %.lr.ph.i ]
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %bb.y ], [ 0, %.lr.ph.i ] ; 4 uses
  %i.cq = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 88), align 8
  %i.cr = sext i32 %i.cq to i64
  %.not.i = icmp slt i64 %indvars.iv18.i, %i.cr
  call void @llvm.assume(i1 %.not.i)
  %i.cs = trunc nuw i8 %i.cp to i1
  br i1 %i.cs, label %bb.z, label %.thread.i.i, !prof !15

.thread.i.i:                                      ; preds = %.lr.ph.split.i
  %i.ct = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 112), align 8, !tbaa !24
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %indvars.iv18.i
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !25
  br label %opal_pointer_array_get_item.exit.i

bb.z:                                             ; preds = %.lr.ph.split.i
  %i.cw = call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 32)) #6 ; 0 uses
  %.pre.i.i = load i8, ptr @opal_uses_threads, align 1, !tbaa !11, !range !12
  %i.cx = trunc nuw i8 %.pre.i.i to i1
  %i.cy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 112), align 8, !tbaa !24
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %indvars.iv18.i
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !25 ; 2 uses
  br i1 %i.cx, label %bb.aa, label %opal_pointer_array_get_item.exit.i, !prof !29

bb.aa:                                            ; preds = %bb.z
  %i.db = call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 32)) #6 ; 0 uses
  %.pre.i = load i8, ptr @opal_uses_threads, align 1, !tbaa !11, !range !12
  br label %opal_pointer_array_get_item.exit.i

opal_pointer_array_get_item.exit.i:               ; preds = %bb.aa, %bb.z, %.thread.i.i
  %i.dc = phi i8 [ 0, %.thread.i.i ], [ %.pre.i, %bb.aa ], [ 0, %bb.z ]
  %.0.i.i = phi ptr [ %i.cv, %.thread.i.i ], [ %i.da, %bb.aa ], [ %i.da, %bb.z ] ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !27
  %i.df = icmp eq i32 %i.de, %i.bu
  br i1 %i.df, label %.split.us.i, label %bb.y

.split.us.i:                                      ; preds = %.thread.i.us.i, %opal_pointer_array_get_item.exit.i
  %.us-phi.i = phi ptr [ %.0.i.i, %opal_pointer_array_get_item.exit.i ], [ %i.ci, %.thread.i.us.i ]
  %i.dg = getelementptr inbounds nuw i8, ptr %.us-phi.i, i64 20
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !30
  br label %ompi_errcode_get_mpi_code.exit

ompi_errcode_get_mpi_code.exit:                   ; preds = %bb.x, %bb.y, %bb.w, %.preheader.i, %.split.us.i
  %.010.i = phi i32 [ %i.bu, %bb.w ], [ %i.dh, %.split.us.i ], [ 14, %bb.y ], [ 14, %.preheader.i ], [ 14, %bb.x ]
  %i.di = call i32 @ompi_errhandler_invoke(ptr noundef %i.bw, ptr noundef %0, i32 noundef %i.by, i32 noundef %.010.i, ptr noundef nonnull @FUNC_NAME) #6
  br label %bb.ag

bb.ab:                                            ; preds = %.loopexit
  %i.dj = getelementptr i8, ptr %0, i64 377
  %.val.i.i = load i8, ptr %i.dj, align 1, !tbaa !62, !range !12, !noundef !13
  %i.dk = trunc nuw i8 %.val.i.i to i1
  br i1 %i.dk, label %bb.ae, label %bb.ac, !prof !15

bb.ac:                                            ; preds = %bb.ab
  %i.dl = getelementptr i8, ptr %0, i64 378
  %.val5.i.i = load i8, ptr %i.dl, align 2, !tbaa !63, !range !12, !noundef !13
  %i.dm = trunc nuw i8 %.val5.i.i to i1
  br i1 %i.dm, label %bb.ad, label %ompi_comm_iface_create_check.exit, !prof !15

bb.ad:                                            ; preds = %bb.ac
  %i.dn = call i32 @opal_progress() #6            ; 0 uses
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ab, %bb.ad
  %.0111.ph = phi i32 [ 77, %bb.ab ], [ 75, %bb.ad ] ; 2 uses
  %10 = icmp eq i32 %.0111.ph, 76
  %.finite = select i1 %10, i32 76, i32 77
  %11 = icmp eq i32 %.0111.ph, 75
  %.finite186 = select i1 %11, i32 75, i32 %.finite ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !56
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !57
  %i.ds = call i32 @ompi_errhandler_invoke(ptr noundef %i.dp, ptr noundef nonnull %0, i32 noundef %i.dr, i32 noundef %.finite186, ptr noundef nonnull @FUNC_NAME) #6 ; 0 uses
  br label %bb.ag

ompi_comm_iface_create_check.exit:                ; preds = %bb.ac
  %i.dt = load ptr, ptr %i.a, align 8, !tbaa !64  ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 40
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !65
  %i.dw = call i32 %i.dv(ptr noundef %i.dt, ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, i32 noundef %8, ptr noundef %9) #6 ; 2 uses
  %.not100 = icmp eq i32 %i.dw, 0
  br i1 %.not100, label %bb.ag, label %bb.af, !prof !66

bb.af:                                            ; preds = %ompi_comm_iface_create_check.exit
  %i.dx = call fastcc i32 @ompi_errcode_get_mpi_code(i32 noundef %i.dw) ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !56
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !57
  %i.ec = call i32 @ompi_errhandler_invoke(ptr noundef %i.dz, ptr noundef nonnull %0, i32 noundef %i.eb, i32 noundef %i.dx, ptr noundef nonnull @FUNC_NAME) #6 ; 0 uses
  br label %bb.ag

bb.ag:                                            ; preds = %ompi_comm_iface_create_check.exit, %bb.af, %bb.ae, %ompi_errcode_get_mpi_code.exit, %bb.u, %.split127.us, %bb.r, %.split.us, %bb.m, %bb.h, %bb.f, %ompi_comm_invalid.exit.thread
  %.0 = phi i32 [ %i.l, %ompi_comm_invalid.exit.thread ], [ %i.n, %bb.f ], [ %i.u, %bb.h ], [ %i.af, %bb.m ], [ %i.av, %.split.us ], [ %i.bd, %bb.r ], [ %i.bl, %.split127.us ], [ %i.bt, %bb.u ], [ %i.di, %ompi_errcode_get_mpi_code.exit ], [ %.finite186, %bb.ae ], [ 0, %ompi_comm_iface_create_check.exit ], [ %i.dx, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @ompi_errhandler_invoke(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @ompi_errcode_get_mpi_code(i32 noundef range(i32 1, 0) %0) unnamed_addr #3 {
bb.a:
  %i.a = icmp sgt i32 %0, -1
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = load i32, ptr @ompi_errcode_intern_lastused, align 4, !tbaa !14 ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.d = load i8, ptr @opal_uses_threads, align 1, !tbaa !11, !range !12, !noundef !13
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %.lr.ph.split, label %.lr.ph.split.us, !prof !15

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.f = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 88), align 8
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 112), align 8, !tbaa !24
  %i.h = sext i32 %i.f to i64
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %.thread.i.us

.thread.i.us:                                     ; preds = %bb.b, %.lr.ph.split.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %.lr.ph.split.us ] ; 3 uses
  %.not.us = icmp slt i64 %indvars.iv, %i.h
  tail call void @llvm.assume(i1 %.not.us)
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !25   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !27
  %i.m = icmp eq i32 %i.l, %0
  br i1 %i.m, label %.split.us, label %bb.b

bb.b:                                             ; preds = %.thread.i.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.thread.i.us, !llvm.loop !0

bb.c:                                             ; preds = %opal_pointer_array_get_item.exit
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1 ; 2 uses
  %i.n = load i32, ptr @ompi_errcode_intern_lastused, align 4, !tbaa !14
  %i.o = sext i32 %i.n to i64
  %i.p = icmp slt i64 %indvars.iv.next19, %i.o
  br i1 %i.p, label %.lr.ph.split, label %.loopexit, !llvm.loop !1

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.c
  %i.q = phi i8 [ %i.ad, %bb.c ], [ 1, %.lr.ph ]
  %indvars.iv18 = phi i64 [ %indvars.iv.next19, %bb.c ], [ 0, %.lr.ph ] ; 4 uses
  %i.r = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 88), align 8
  %i.s = sext i32 %i.r to i64
  %.not = icmp slt i64 %indvars.iv18, %i.s
  tail call void @llvm.assume(i1 %.not)
  %i.t = trunc nuw i8 %i.q to i1
  br i1 %i.t, label %bb.d, label %.thread.i, !prof !15

.thread.i:                                        ; preds = %.lr.ph.split
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 112), align 8, !tbaa !24
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv18
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !25
  br label %opal_pointer_array_get_item.exit

bb.d:                                             ; preds = %.lr.ph.split
  %i.x = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 32)) #6 ; 0 uses
  %.pre.i = load i8, ptr @opal_uses_threads, align 1, !tbaa !11, !range !12
  %i.y = trunc nuw i8 %.pre.i to i1
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 112), align 8, !tbaa !24
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv18
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !25 ; 2 uses
  br i1 %i.y, label %bb.e, label %opal_pointer_array_get_item.exit, !prof !29

bb.e:                                             ; preds = %bb.d
  %i.ac = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 32)) #6 ; 0 uses
  %.pre = load i8, ptr @opal_uses_threads, align 1, !tbaa !11, !range !12
  br label %opal_pointer_array_get_item.exit

opal_pointer_array_get_item.exit:                 ; preds = %.thread.i, %bb.d, %bb.e
  %i.ad = phi i8 [ 0, %.thread.i ], [ %.pre, %bb.e ], [ 0, %bb.d ]
  %.0.i = phi ptr [ %i.w, %.thread.i ], [ %i.ab, %bb.e ], [ %i.ab, %bb.d ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !27
  %i.ag = icmp eq i32 %i.af, %0
  br i1 %i.ag, label %.split.us, label %bb.c

.split.us:                                        ; preds = %.thread.i.us, %opal_pointer_array_get_item.exit
  %.us-phi = phi ptr [ %.0.i, %opal_pointer_array_get_item.exit ], [ %i.j, %.thread.i.us ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.us-phi, i64 20
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !30
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.c, %.preheader, %.split.us, %bb.a
  %.010 = phi i32 [ %0, %bb.a ], [ %i.ai, %.split.us ], [ 14, %bb.c ], [ 14, %.preheader ], [ 14, %bb.b ]
  ret i32 %.010
}

declare i32 @mca_topo_base_comm_select(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #4

declare i32 @opal_progress() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !21}
!1 = distinct !{!1, !21, !28}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"_Bool", !6, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{i8 0, i8 2}
!13 = !{}
!14 = !{!7, !7, i64 0}
!15 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!16 = !{!"any pointer", !6, i64 0}
!17 = !{!"p1 _ZTS12opal_class_t", !16, i64 0}
!18 = !{!"opal_object_t", !17, i64 0, !7, i64 8}
!19 = !{!"opal_mutex_t", !18, i64 0, !6, i64 16, !7, i64 56}
!20 = !{!"any p2 pointer", !16, i64 0}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!"p1 long", !16, i64 0}
!23 = !{!"opal_pointer_array_t", !18, i64 0, !19, i64 16, !7, i64 80, !7, i64 84, !7, i64 88, !7, i64 92, !7, i64 96, !22, i64 104, !20, i64 112}
!24 = !{!23, !20, i64 112}
!25 = !{!16, !16, i64 0}
!26 = !{!"ompi_errcode_intern_t", !18, i64 0, !7, i64 16, !7, i64 20, !7, i64 24, !6, i64 28}
!27 = !{!26, !7, i64 16}
!28 = !{!"llvm.loop.unswitch.partial.disable"}
!29 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!30 = !{!26, !7, i64 20}
!31 = distinct !{!31, !21}
!32 = distinct !{!32, !21}
!33 = !{!"p1 _ZTS19opal_hash_element_t", !16, i64 0}
!34 = !{!"long", !6, i64 0}
!35 = !{!"p1 _ZTS24opal_hash_type_methods_t", !16, i64 0}
!36 = !{!"opal_hash_table_t", !18, i64 0, !33, i64 16, !34, i64 24, !34, i64 32, !34, i64 40, !7, i64 48, !7, i64 52, !7, i64 56, !7, i64 60, !35, i64 64}
!37 = !{!"p1 _ZTS11opal_info_t", !16, i64 0}
!38 = !{!"opal_infosubscriber_t", !18, i64 0, !36, i64 16, !37, i64 88}
!39 = !{!"p1 omnipotent char", !16, i64 0}
!40 = !{!"ompi_comm_extended_cid_t", !34, i64 0, !6, i64 8}
!41 = !{!"ompi_comm_extended_cid_block_t", !40, i64 0, !34, i64 16, !6, i64 24, !6, i64 25}
!42 = !{!"p1 int", !16, i64 0}
!43 = !{!"p1 _ZTS12ompi_group_t", !16, i64 0}
!44 = !{!"p1 _ZTS19ompi_communicator_t", !16, i64 0}
!45 = !{!"p1 _ZTS17opal_hash_table_t", !16, i64 0}
!46 = !{!"p1 _ZTS22mca_topo_base_module_t", !16, i64 0}
!47 = !{!"p2 _ZTS20ompi_peruse_handle_t", !20, i64 0}
!48 = !{!"p1 _ZTS17ompi_errhandler_t", !16, i64 0}
!49 = !{!"p1 _ZTS14mca_pml_comm_t", !16, i64 0}
!50 = !{!"p1 _ZTS14mca_mtl_comm_t", !16, i64 0}
!51 = !{!"p1 _ZTS25mca_coll_base_comm_coll_t", !16, i64 0}
!52 = !{!"p1 _ZTS15ompi_instance_t", !16, i64 0}
!53 = !{!"p1 _ZTS13opal_object_t", !16, i64 0}
!54 = !{!"ompi_communicator_t", !38, i64 0, !19, i64 96, !39, i64 160, !40, i64 168, !41, i64 184, !7, i64 216, !7, i64 220, !7, i64 224, !7, i64 228, !7, i64 232, !42, i64 240, !7, i64 248, !7, i64 252, !7, i64 256, !43, i64 264, !43, i64 272, !44, i64 280, !45, i64 288, !46, i64 296, !47, i64 304, !48, i64 312, !7, i64 320, !49, i64 328, !50, i64 336, !51, i64 344, !52, i64 352, !53, i64 360, !7, i64 368, !7, i64 372, !10, i64 376, !10, i64 377, !10, i64 378}
!55 = !{!54, !7, i64 224}
!56 = !{!54, !48, i64 312}
!57 = !{!54, !7, i64 320}
!58 = !{!54, !43, i64 264}
!59 = !{!"p2 _ZTS11ompi_proc_t", !20, i64 0}
!60 = !{!"ompi_group_t", !18, i64 0, !7, i64 16, !7, i64 20, !7, i64 24, !59, i64 32, !7, i64 40, !43, i64 48, !6, i64 56, !52, i64 72}
!61 = !{!60, !7, i64 16}
!62 = !{!54, !10, i64 377}
!63 = !{!54, !10, i64 378}
!64 = !{!46, !46, i64 0}
!65 = !{!6, !6, i64 0}
!66 = !{!"branch_weights", !"expected", i32 2000, i32 1}
end_hunk_0
