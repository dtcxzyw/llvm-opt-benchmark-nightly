Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/reduce?download=true
inline.NumInlined: 27
inline.NumDeleted: 20
begin_hunk_0_@PMPI_Reduce:bb.a
  %or.cond7.i.not = icmp eq i32 %i.k, 0
  br i1 %or.cond7.i.not, label %bb.e, label %ompi_comm_invalid.exit.thread

ompi_comm_invalid.exit.thread:                    ; preds = %bb.d, %ompi_comm_invalid.exit
  %i.l = tail call i32 @ompi_errhandler_invoke(ptr noundef null, ptr noundef null, i32 noundef -1, i32 noundef 5, ptr noundef nonnull @FUNC_NAME) #7
  br label %.thread120

bb.e:                                             ; preds = %ompi_comm_invalid.exit
  %i.m = icmp eq ptr %4, @ompi_mpi_op_null
  %i.n = icmp eq ptr %4, null
  %or.cond = or i1 %i.m, %i.n
  br i1 %or.cond, label %bb.u, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr i8, ptr %4, i64 84
  %.val.i = load i32, ptr %i.o, align 4, !tbaa !49
  %i.p = trunc i32 %.val.i to i1
  br i1 %i.p, label %bb.g, label %ompi_op_is_valid.exit

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr i8, ptr %3, i64 16
  %.val20.i = load i16, ptr %i.q, align 8, !tbaa !55
  %i.r = and i16 %.val20.i, 512
  %.not.i = icmp eq i16 %i.r, 0
  br i1 %.not.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 200
  %i.t = load i32, ptr %i.s, align 8, !tbaa !56
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [4 x i8], ptr @ompi_op_ddt_map, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !12   ; 2 uses
  %i.x = icmp eq i32 %i.w, -1
  br i1 %i.x, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.z = sext i32 %i.w to i64
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.z
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !57
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.j, label %ompi_op_is_valid.exit

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 240
  %i.af = call i32 (ptr, ptr, ...) @opal_asprintf(ptr noundef nonnull %i.a, ptr noundef nonnull @.str, ptr noundef nonnull @FUNC_NAME, ptr noundef nonnull %i.ad, ptr noundef nonnull %i.ae) #7 ; 0 uses
  br label %bb.n

bb.k:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 240 ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !57
  %.not19.i = icmp eq i8 %i.ah, 0
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  br i1 %.not19.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aj = call i32 (ptr, ptr, ...) @opal_asprintf(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.1, ptr noundef nonnull @FUNC_NAME, ptr noundef nonnull %i.ai, ptr noundef nonnull %i.ag) #7 ; 0 uses
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.ak = call i32 (ptr, ptr, ...) @opal_asprintf(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.2, ptr noundef nonnull @FUNC_NAME, ptr noundef nonnull %i.ai) #7 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.j, %bb.l, %bb.m
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 312
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !58
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 320
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !59
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !60
  %i.aq = call i32 @ompi_errhandler_invoke(ptr noundef %i.am, ptr noundef nonnull %6, i32 noundef %i.ao, i32 noundef 10, ptr noundef %i.ap) #7
  %i.ar = load ptr, ptr %i.a, align 8, !tbaa !60
  call void @free(ptr noundef %i.ar) #7
  br label %.thread120

ompi_op_is_valid.exit:                            ; preds = %bb.i, %bb.f
  %i.as = getelementptr i8, ptr %6, i64 220
  %.val97 = load i32, ptr %i.as, align 4, !tbaa !61
  %i.at = icmp ne i32 %.val97, %5                 ; 2 uses
  %i.au = icmp eq ptr %0, inttoptr (i64 1 to ptr)
  %or.cond3 = and i1 %i.au, %i.at
  br i1 %or.cond3, label %bb.u, label %bb.o

bb.o:                                             ; preds = %ompi_op_is_valid.exit
  br i1 %i.at, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = icmp eq ptr %1, inttoptr (i64 1 to ptr)
  br i1 %i.av, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = icmp eq ptr %0, %1
  %i.ax = icmp ne i32 %2, 0
  %or.cond5 = and i1 %i.aw, %i.ax
  br i1 %or.cond5, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.o, %bb.q
  %i.ay = icmp eq ptr %3, null
  %i.az = icmp eq ptr %3, @ompi_mpi_datatype_null
  %or.cond7 = or i1 %i.ay, %i.az
  br i1 %or.cond7, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ba = icmp slt i32 %2, 0
  br i1 %i.ba, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bb = getelementptr i8, ptr %3, i64 16
  %.val98 = load i16, ptr %i.bb, align 8, !tbaa !62
  %i.bc = and i16 %.val98, 5
  %or.cond127 = icmp eq i16 %i.bc, 4
  br i1 %or.cond127, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.e, %bb.p, %bb.r, %bb.s, %bb.q, %ompi_op_is_valid.exit, %bb.t
  %.0111.ph = phi i32 [ 3, %bb.t ], [ 13, %ompi_op_is_valid.exit ], [ 13, %bb.q ], [ 10, %bb.e ], [ 2, %bb.s ], [ 3, %bb.r ], [ 13, %bb.p ]
  %i.bd = tail call fastcc i32 @ompi_errcode_get_mpi_code(i32 noundef %.0111.ph) ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 312
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !58
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 320
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !59
  %i.bi = tail call i32 @ompi_errhandler_invoke(ptr noundef %i.bf, ptr noundef nonnull %6, i32 noundef %i.bh, i32 noundef %i.bd, ptr noundef nonnull @FUNC_NAME) #7 ; 0 uses
  br label %.thread120

bb.v:                                             ; preds = %bb.t
  %i.bj = and i32 %i.j, 1
  %.not92 = icmp eq i32 %i.bj, 0
  br i1 %.not92, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bk = icmp sgt i32 %5, -1
  br i1 %i.bk, label %ompi_comm_remote_size.exit, label %bb.x

ompi_comm_remote_size.exit:                       ; preds = %bb.w
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 272
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !63
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !66
  %i.bp = icmp slt i32 %5, %i.bo
  br i1 %i.bp, label %bb.ac, label %bb.y

bb.x:                                             ; preds = %bb.w
  switch i32 %5, label %bb.y [
    i32 -4, label %bb.ac
    i32 -2, label %bb.ac
  ]

bb.y:                                             ; preds = %ompi_comm_remote_size.exit, %bb.x
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 312
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !58
  %i.bs = getelementptr inbounds nuw i8, ptr %6, i64 320
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !59
  %i.bu = tail call i32 @ompi_errhandler_invoke(ptr noundef %i.br, ptr noundef nonnull %6, i32 noundef %i.bt, i32 noundef 8, ptr noundef nonnull @FUNC_NAME) #7
  br label %.thread120

bb.z:                                             ; preds = %bb.v
  %i.bv = icmp slt i32 %5, 0
  br i1 %i.bv, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bw = getelementptr i8, ptr %6, i64 264
  %.val100 = load ptr, ptr %i.bw, align 8, !tbaa !67
  %i.bx = getelementptr i8, ptr %.val100, i64 16
  %.val100.val = load i32, ptr %i.bx, align 8, !tbaa !66
  %.not93 = icmp slt i32 %5, %.val100.val
  br i1 %.not93, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 312
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !58
  %i.ca = getelementptr inbounds nuw i8, ptr %6, i64 320
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !59
  %i.cc = tail call i32 @ompi_errhandler_invoke(ptr noundef %i.bz, ptr noundef nonnull %6, i32 noundef %i.cb, i32 noundef 8, ptr noundef nonnull @FUNC_NAME) #7
  br label %.thread120

.thread120:                                       ; preds = %ompi_comm_invalid.exit.thread, %bb.u, %bb.n, %bb.y, %bb.ab
  %.0.ph = phi i32 [ %i.cc, %bb.ab ], [ %i.bu, %bb.y ], [ %i.aq, %bb.n ], [ %i.bd, %bb.u ], [ %i.l, %ompi_comm_invalid.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.ap

bb.ac:                                            ; preds = %ompi_comm_remote_size.exit, %bb.aa, %bb.x, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.a
  %i.cd = getelementptr i8, ptr %6, i64 377
  %.val.i103 = load i8, ptr %i.cd, align 1, !tbaa !68, !range !10, !noundef !11
  %i.ce = trunc nuw i8 %.val.i103 to i1
  br i1 %i.ce, label %bb.ag, label %bb.ae, !prof !13

bb.ae:                                            ; preds = %bb.ad
  %i.cf = getelementptr i8, ptr %6, i64 378
  %.val5.i = load i8, ptr %i.cf, align 2, !tbaa !69, !range !10, !noundef !11
  %i.cg = trunc nuw i8 %.val5.i to i1
  br i1 %i.cg, label %bb.af, label %ompi_comm_iface_coll_check.exit, !prof !13

bb.af:                                            ; preds = %bb.ae
  %i.ch = tail call i32 @opal_progress() #7       ; 0 uses
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ad, %bb.af
  %.3.ph = phi i32 [ 77, %bb.ad ], [ 75, %bb.af ] ; 2 uses
  %7 = icmp eq i32 %.3.ph, 76
  %.finite = select i1 %7, i32 76, i32 77
  %8 = icmp eq i32 %.3.ph, 75
  %.finite137 = select i1 %8, i32 75, i32 %.finite ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %6, i64 312
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !58
  %i.ck = getelementptr inbounds nuw i8, ptr %6, i64 320
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !59
  %i.cm = tail call i32 @ompi_errhandler_invoke(ptr noundef %i.cj, ptr noundef nonnull %6, i32 noundef %i.cl, i32 noundef %.finite137, ptr noundef nonnull @FUNC_NAME) #7 ; 0 uses
  br label %bb.ap

ompi_comm_iface_coll_check.exit:                  ; preds = %bb.ae
  %i.cn = icmp eq i32 %2, 0
  br i1 %i.cn, label %bb.ap, label %bb.ah

bb.ah:                                            ; preds = %ompi_comm_iface_coll_check.exit
  %i.co = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 8 uses
  %i.cp = load i8, ptr @opal_uses_threads, align 1, !tbaa !9, !range !10, !noundef !11
  %i.cq = trunc nuw i8 %i.cp to i1
  br i1 %i.cq, label %bb.ai, label %bb.aj, !prof !13

bb.ai:                                            ; preds = %bb.ah
  %i.cr = atomicrmw volatile add ptr %i.co, i32 1 monotonic, align 4 ; 0 uses
  br label %opal_thread_add_fetch_32.exit

bb.aj:                                            ; preds = %bb.ah
  %i.cs = load volatile i32, ptr %i.co, align 4, !tbaa !12
  %i.ct = add nsw i32 %i.cs, 1
  store volatile i32 %i.ct, ptr %i.co, align 4, !tbaa !12
  %i.cu = load volatile i32, ptr %i.co, align 4, !tbaa !12 ; 0 uses
  br label %opal_thread_add_fetch_32.exit

opal_thread_add_fetch_32.exit:                    ; preds = %bb.ai, %bb.aj
  %i.cv = getelementptr inbounds nuw i8, ptr %6, i64 344
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !70 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 176
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !74
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 184
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !75
  %i.db = tail call i32 %i.cy(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull %6, ptr noundef %i.da) #7 ; 2 uses
  %i.dc = load i8, ptr @opal_uses_threads, align 1, !tbaa !9, !range !10, !noundef !11
  %i.dd = trunc nuw i8 %i.dc to i1
  br i1 %i.dd, label %bb.ak, label %bb.al, !prof !13

bb.ak:                                            ; preds = %opal_thread_add_fetch_32.exit
  %i.de = atomicrmw volatile add ptr %i.co, i32 -1 monotonic, align 4
  %i.df = add i32 %i.de, -1
  br label %opal_thread_add_fetch_32.exit107

bb.al:                                            ; preds = %opal_thread_add_fetch_32.exit
  %i.dg = load volatile i32, ptr %i.co, align 4, !tbaa !12
  %i.dh = add nsw i32 %i.dg, -1
  store volatile i32 %i.dh, ptr %i.co, align 4, !tbaa !12
  %i.di = load volatile i32, ptr %i.co, align 4, !tbaa !12
  br label %opal_thread_add_fetch_32.exit107

opal_thread_add_fetch_32.exit107:                 ; preds = %bb.ak, %bb.al
  %.0.i106 = phi i32 [ %i.df, %bb.ak ], [ %i.di, %bb.al ]
  %i.dj = icmp eq i32 %.0.i106, 0
  br i1 %i.dj, label %bb.am, label %bb.an

bb.am:                                            ; preds = %opal_thread_add_fetch_32.exit107
  %i.dk = load ptr, ptr %4, align 8, !tbaa !76
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 48
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !78 ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !20 ; 2 uses
  %.not6.i = icmp eq ptr %i.dn, null
  br i1 %.not6.i, label %opal_obj_run_destructors.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.am, %.lr.ph.i
  %i.do = phi ptr [ %i.dq, %.lr.ph.i ], [ %i.dn, %bb.am ]
  %.07.i = phi ptr [ %i.dp, %.lr.ph.i ], [ %i.dm, %bb.am ]
  tail call void %i.do(ptr noundef nonnull %4) #7, !inline_history !22
  %i.dp = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !20 ; 2 uses
  %.not.i108 = icmp eq ptr %i.dq, null
  br i1 %.not.i108, label %opal_obj_run_destructors.exit, label %.lr.ph.i, !llvm.loop !23

opal_obj_run_destructors.exit:                    ; preds = %.lr.ph.i, %bb.am
  tail call void @free(ptr noundef nonnull %4) #7
  br label %bb.an

bb.an:                                            ; preds = %opal_obj_run_destructors.exit, %opal_thread_add_fetch_32.exit107
  %.not94 = icmp eq i32 %i.db, 0
  br i1 %.not94, label %bb.ap, label %bb.ao, !prof !79

bb.ao:                                            ; preds = %bb.an
  %i.dr = tail call fastcc i32 @ompi_errcode_get_mpi_code(i32 noundef %i.db) ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %6, i64 312
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !58
  %i.du = getelementptr inbounds nuw i8, ptr %6, i64 320
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !59
  %i.dw = tail call i32 @ompi_errhandler_invoke(ptr noundef %i.dt, ptr noundef nonnull %6, i32 noundef %i.dv, i32 noundef %i.dr, ptr noundef nonnull @FUNC_NAME) #7 ; 0 uses
  br label %bb.ap

bb.ap:                                            ; preds = %.thread120, %bb.an, %ompi_comm_iface_coll_check.exit, %bb.ao, %bb.ag
  %.1 = phi i32 [ %.finite137, %bb.ag ], [ %.0.ph, %.thread120 ], [ 0, %bb.an ], [ %i.dr, %bb.ao ], [ 0, %ompi_comm_iface_coll_check.exit ]
  ret i32 %.1
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
  %i.b = load i32, ptr @ompi_errcode_intern_lastused, align 4, !tbaa !12 ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.d = load i8, ptr @opal_uses_threads, align 1, !tbaa !9, !range !10, !noundef !11
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %.lr.ph.split, label %.lr.ph.split.us, !prof !13

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.f = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 88), align 8
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 112), align 8, !tbaa !83
  %i.h = sext i32 %i.f to i64
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %.thread.i.us

.thread.i.us:                                     ; preds = %bb.b, %.lr.ph.split.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %.lr.ph.split.us ] ; 3 uses
  %.not.us = icmp slt i64 %indvars.iv, %i.h
  tail call void @llvm.assume(i1 %.not.us)
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !20   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !85
  %i.m = icmp eq i32 %i.l, %0
  br i1 %i.m, label %.split.us, label %bb.b

bb.b:                                             ; preds = %.thread.i.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.thread.i.us, !llvm.loop !80

bb.c:                                             ; preds = %opal_pointer_array_get_item.exit
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1 ; 2 uses
  %i.n = load i32, ptr @ompi_errcode_intern_lastused, align 4, !tbaa !12
  %i.o = sext i32 %i.n to i64
  %i.p = icmp slt i64 %indvars.iv.next19, %i.o
  br i1 %i.p, label %.lr.ph.split, label %.loopexit, !llvm.loop !81

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.c
  %i.q = phi i8 [ %i.ad, %bb.c ], [ 1, %.lr.ph ]
  %indvars.iv18 = phi i64 [ %indvars.iv.next19, %bb.c ], [ 0, %.lr.ph ] ; 4 uses
  %i.r = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 88), align 8
  %i.s = sext i32 %i.r to i64
  %.not = icmp slt i64 %indvars.iv18, %i.s
  tail call void @llvm.assume(i1 %.not)
  %i.t = trunc nuw i8 %i.q to i1
  br i1 %i.t, label %bb.d, label %.thread.i, !prof !13

.thread.i:                                        ; preds = %.lr.ph.split
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 112), align 8, !tbaa !83
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv18
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !20
  br label %opal_pointer_array_get_item.exit

bb.d:                                             ; preds = %.lr.ph.split
  %i.x = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 32)) #7 ; 0 uses
  %.pre.i = load i8, ptr @opal_uses_threads, align 1, !tbaa !9, !range !10
  %i.y = trunc nuw i8 %.pre.i to i1
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 112), align 8, !tbaa !83
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv18
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !20 ; 2 uses
  br i1 %i.y, label %bb.e, label %opal_pointer_array_get_item.exit, !prof !87

bb.e:                                             ; preds = %bb.d
  %i.ac = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 32)) #7 ; 0 uses
  %.pre = load i8, ptr @opal_uses_threads, align 1, !tbaa !9, !range !10
  br label %opal_pointer_array_get_item.exit

opal_pointer_array_get_item.exit:                 ; preds = %.thread.i, %bb.d, %bb.e
  %i.ad = phi i8 [ 0, %.thread.i ], [ %.pre, %bb.e ], [ 0, %bb.d ]
  %.0.i = phi ptr [ %i.w, %.thread.i ], [ %i.ab, %bb.e ], [ %i.ab, %bb.d ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !85
  %i.ag = icmp eq i32 %i.af, %0
  br i1 %i.ag, label %.split.us, label %bb.c

.split.us:                                        ; preds = %.thread.i.us, %opal_pointer_array_get_item.exit
  %.us-phi = phi ptr [ %.0.i, %opal_pointer_array_get_item.exit ], [ %i.j, %.thread.i.us ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.us-phi, i64 20
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !88
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.c, %.preheader, %.split.us, %bb.a
  %.010 = phi i32 [ %0, %bb.a ], [ %i.ai, %.split.us ], [ 14, %bb.c ], [ 14, %.preheader ], [ 14, %bb.b ]
  ret i32 %.010
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #5

declare i32 @opal_asprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @opal_progress() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"_Bool", !4, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{i8 0, i8 2}
!11 = !{}
!12 = !{!5, !5, i64 0}
!13 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!14 = !{!"any pointer", !4, i64 0}
!15 = !{!"p1 _ZTS12opal_class_t", !14, i64 0}
!16 = !{!"opal_object_t", !15, i64 0, !5, i64 8}
!17 = !{!"opal_mutex_t", !16, i64 0, !4, i64 16, !5, i64 56}
!18 = !{!"any p2 pointer", !14, i64 0}
!19 = !{!"p1 long", !14, i64 0}
!20 = !{!14, !14, i64 0}
!21 = !{!"llvm.loop.mustprogress"}
!22 = distinct !{null}
!23 = distinct !{!23, !21}
!24 = !{!"p1 _ZTS19opal_hash_element_t", !14, i64 0}
!25 = !{!"long", !4, i64 0}
!26 = !{!"p1 _ZTS24opal_hash_type_methods_t", !14, i64 0}
!27 = !{!"opal_hash_table_t", !16, i64 0, !24, i64 16, !25, i64 24, !25, i64 32, !25, i64 40, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !26, i64 64}
!28 = !{!"p1 _ZTS11opal_info_t", !14, i64 0}
!29 = !{!"opal_infosubscriber_t", !16, i64 0, !27, i64 16, !28, i64 88}
!30 = !{!"p1 omnipotent char", !14, i64 0}
!31 = !{!"ompi_comm_extended_cid_t", !25, i64 0, !4, i64 8}
!32 = !{!"ompi_comm_extended_cid_block_t", !31, i64 0, !25, i64 16, !4, i64 24, !4, i64 25}
!33 = !{!"p1 int", !14, i64 0}
!34 = !{!"p1 _ZTS12ompi_group_t", !14, i64 0}
!35 = !{!"p1 _ZTS19ompi_communicator_t", !14, i64 0}
!36 = !{!"p1 _ZTS17opal_hash_table_t", !14, i64 0}
!37 = !{!"p1 _ZTS22mca_topo_base_module_t", !14, i64 0}
!38 = !{!"p2 _ZTS20ompi_peruse_handle_t", !18, i64 0}
!39 = !{!"p1 _ZTS17ompi_errhandler_t", !14, i64 0}
!40 = !{!"p1 _ZTS14mca_pml_comm_t", !14, i64 0}
!41 = !{!"p1 _ZTS14mca_mtl_comm_t", !14, i64 0}
!42 = !{!"p1 _ZTS25mca_coll_base_comm_coll_t", !14, i64 0}
!43 = !{!"p1 _ZTS15ompi_instance_t", !14, i64 0}
!44 = !{!"p1 _ZTS13opal_object_t", !14, i64 0}
!45 = !{!"ompi_communicator_t", !29, i64 0, !17, i64 96, !30, i64 160, !31, i64 168, !32, i64 184, !5, i64 216, !5, i64 220, !5, i64 224, !5, i64 228, !5, i64 232, !33, i64 240, !5, i64 248, !5, i64 252, !5, i64 256, !34, i64 264, !34, i64 272, !35, i64 280, !36, i64 288, !37, i64 296, !38, i64 304, !39, i64 312, !5, i64 320, !40, i64 328, !41, i64 336, !42, i64 344, !43, i64 352, !44, i64 360, !5, i64 368, !5, i64 372, !8, i64 376, !8, i64 377, !8, i64 378}
!46 = !{!45, !5, i64 224}
!47 = !{!"ompi_op_base_op_3buff_fns_1_0_0_t", !4, i64 0, !4, i64 344}
!48 = !{!"ompi_op_t", !16, i64 0, !4, i64 16, !5, i64 80, !5, i64 84, !5, i64 88, !4, i64 96, !47, i64 784}
!49 = !{!48, !5, i64 84}
!50 = !{!"short", !4, i64 0}
!51 = !{!"p1 _ZTS12dt_elem_desc", !14, i64 0}
!52 = !{!"dt_type_desc_t", !25, i64 0, !25, i64 8, !51, i64 16}
!53 = !{!"opal_datatype_t", !16, i64 0, !50, i64 16, !50, i64 18, !5, i64 20, !25, i64 24, !25, i64 32, !25, i64 40, !25, i64 48, !25, i64 56, !25, i64 64, !5, i64 72, !5, i64 76, !4, i64 80, !52, i64 144, !52, i64 168, !19, i64 192}
!54 = !{!"ompi_datatype_t", !53, i64 0, !5, i64 200, !5, i64 204, !36, i64 208, !14, i64 216, !25, i64 224, !25, i64 232, !4, i64 240}
!55 = !{!54, !50, i64 16}
!56 = !{!54, !5, i64 200}
!57 = !{!4, !4, i64 0}
!58 = !{!45, !39, i64 312}
!59 = !{!45, !5, i64 320}
!60 = !{!30, !30, i64 0}
!61 = !{!45, !5, i64 220}
!62 = !{!53, !50, i64 16}
!63 = !{!45, !34, i64 272}
!64 = !{!"p2 _ZTS11ompi_proc_t", !18, i64 0}
end_hunk_0
