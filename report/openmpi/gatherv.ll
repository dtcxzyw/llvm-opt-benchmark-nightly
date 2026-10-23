Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/gatherv?download=true
inline.NumInlined: 32
inline.NumDeleted: 14
begin_hunk_0_@PMPI_Gatherv:bb.a
  %or.cond.i = or i1 %i.f, %i.g
  br i1 %or.cond.i, label %ompi_comm_invalid.exit.thread, label %ompi_comm_invalid.exit

ompi_comm_invalid.exit:                           ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 224
  %i.i = load i32, ptr %i.h, align 8, !tbaa !45   ; 2 uses
  %i.j = and i32 %i.i, 48
  %or.cond7.i.not = icmp eq i32 %i.j, 0
  br i1 %or.cond7.i.not, label %bb.e, label %ompi_comm_invalid.exit.thread

ompi_comm_invalid.exit.thread:                    ; preds = %bb.d, %ompi_comm_invalid.exit
  %i.k = tail call i32 @ompi_errhandler_invoke(ptr noundef null, ptr noundef null, i32 noundef -1, i32 noundef 5, ptr noundef nonnull @FUNC_NAME) #5
  br label %bb.al

bb.e:                                             ; preds = %ompi_comm_invalid.exit
  %i.l = getelementptr i8, ptr %8, i64 220
  %.val157 = load i32, ptr %i.l, align 4, !tbaa !46
  %.not = icmp eq i32 %.val157, %7                ; 2 uses
  %.not214 = icmp eq ptr %0, inttoptr (i64 1 to ptr)
  %or.cond213.v = select i1 %.not, ptr %3, ptr %0
  %or.cond213.not = icmp eq ptr %or.cond213.v, inttoptr (i64 1 to ptr)
  br i1 %or.cond213.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 312
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !47
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 320
  %i.p = load i32, ptr %i.o, align 8, !tbaa !48
  %i.q = tail call i32 @ompi_errhandler_invoke(ptr noundef %i.n, ptr noundef nonnull %8, i32 noundef %i.p, i32 noundef 13, ptr noundef nonnull @FUNC_NAME) #5
  br label %bb.al

bb.g:                                             ; preds = %bb.e
  %i.r = and i32 %i.i, 1
  %.not145 = icmp eq i32 %i.r, 0
  br i1 %.not145, label %bb.h, label %bb.t

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr i8, ptr %8, i64 264
  %.val159 = load ptr, ptr %i.s, align 8, !tbaa !49
  %i.t = getelementptr i8, ptr %.val159, i64 16
  %.val159.val = load i32, ptr %i.t, align 8, !tbaa !52 ; 3 uses
  %i.u = icmp sge i32 %7, %.val159.val
  %i.v = icmp slt i32 %7, 0
  %or.cond5 = or i1 %i.v, %i.u
  br i1 %or.cond5, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  br i1 %.not214, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = icmp eq ptr %2, null
  %i.x = icmp eq ptr %2, @ompi_mpi_datatype_null
  %or.cond7 = or i1 %i.w, %i.x
  br i1 %or.cond7, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = icmp slt i32 %1, 0
  br i1 %i.y, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = getelementptr i8, ptr %2, i64 16
  %.val161 = load i16, ptr %i.z, align 8, !tbaa !57
  %i.aa = and i16 %.val161, 5
  %or.cond185 = icmp eq i16 %i.aa, 4
  br i1 %or.cond185, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.h, %bb.j, %bb.k, %bb.l
  %.0170.ph = phi i32 [ 3, %bb.l ], [ 8, %bb.h ], [ 2, %bb.k ], [ 3, %bb.j ]
  %i.ab = tail call fastcc i32 @ompi_errcode_get_mpi_code(i32 noundef %.0170.ph) ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 312
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !47
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 320
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !48
  %i.ag = tail call i32 @ompi_errhandler_invoke(ptr noundef %i.ad, ptr noundef nonnull %8, i32 noundef %i.af, i32 noundef %i.ab, ptr noundef nonnull @FUNC_NAME) #5 ; 0 uses
  br label %bb.al

bb.n:                                             ; preds = %bb.l, %bb.i
  br i1 %.not, label %bb.o, label %.loopexit

bb.o:                                             ; preds = %bb.n
  %i.ah = icmp eq ptr %5, null
  br i1 %i.ah, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 312
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !47
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 320
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !48
  %i.am = tail call i32 @ompi_errhandler_invoke(ptr noundef %i.aj, ptr noundef nonnull %8, i32 noundef %i.al, i32 noundef 13, ptr noundef nonnull @FUNC_NAME) #5
  br label %bb.al

bb.q:                                             ; preds = %bb.o
  %i.an = icmp eq ptr %4, null
  br i1 %i.an, label %bb.r, label %.preheader

.preheader:                                       ; preds = %bb.q
  %i.ao = icmp sgt i32 %.val159.val, 0
  br i1 %i.ao, label %.lr.ph192, label %.loopexit

.lr.ph192:                                        ; preds = %.preheader
  %i.ap = icmp eq ptr %6, @ompi_mpi_datatype_null
  %i.aq = icmp eq ptr %6, null
  %or.cond9 = or i1 %i.ap, %i.aq
  br i1 %or.cond9, label %.lr.ph192.split.us, label %.lr.ph192.split.preheader

.lr.ph192.split.preheader:                        ; preds = %.lr.ph192
  %wide.trip.count202 = zext nneg i32 %.val159.val to i64
  br label %.lr.ph192.split

.lr.ph192.split.us:                               ; preds = %.lr.ph192
  %i.ar = load i32, ptr %4, align 4, !tbaa !12
  %i.as = icmp slt i32 %i.ar, 0
  br i1 %i.as, label %.split194.us, label %.split196.us

.split196.us:                                     ; preds = %.lr.ph192.split.us
  %i.at = getelementptr inbounds nuw i8, ptr %8, i64 312
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !47
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 320
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !48
  %i.ax = tail call i32 @ompi_errhandler_invoke(ptr noundef %i.au, ptr noundef nonnull %8, i32 noundef %i.aw, i32 noundef 3, ptr noundef nonnull @FUNC_NAME) #5
  br label %bb.al

bb.r:                                             ; preds = %bb.q
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 312
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !47
  %i.ba = getelementptr inbounds nuw i8, ptr %8, i64 320
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !48
  %i.bc = tail call i32 @ompi_errhandler_invoke(ptr noundef %i.az, ptr noundef nonnull %8, i32 noundef %i.bb, i32 noundef 2, ptr noundef nonnull @FUNC_NAME) #5
  br label %bb.al

.lr.ph192.split:                                  ; preds = %.lr.ph192.split.preheader, %bb.s
  %indvars.iv199 = phi i64 [ 0, %.lr.ph192.split.preheader ], [ %indvars.iv.next200, %bb.s ] ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv199
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !12
  %i.bf = icmp slt i32 %i.be, 0
  br i1 %i.bf, label %.split194.us, label %bb.s

.split194.us:                                     ; preds = %.lr.ph192.split, %.lr.ph192.split.us
  %i.bg = getelementptr inbounds nuw i8, ptr %8, i64 312
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !47
  %i.bi = getelementptr inbounds nuw i8, ptr %8, i64 320
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !48
  %i.bk = tail call i32 @ompi_errhandler_invoke(ptr noundef %i.bh, ptr noundef %8, i32 noundef %i.bj, i32 noundef 2, ptr noundef nonnull @FUNC_NAME) #5
  br label %bb.al

bb.s:                                             ; preds = %.lr.ph192.split
  %indvars.iv.next200 = add nuw nsw i64 %indvars.iv199, 1 ; 2 uses
  %exitcond203.not = icmp eq i64 %indvars.iv.next200, %wide.trip.count202
  br i1 %exitcond203.not, label %.loopexit, label %.lr.ph192.split, !llvm.loop !21

bb.t:                                             ; preds = %bb.g
  %i.bl = icmp sgt i32 %7, -1
  br i1 %i.bl, label %ompi_comm_remote_size.exit, label %bb.u

ompi_comm_remote_size.exit:                       ; preds = %bb.t
  %i.bm = getelementptr inbounds nuw i8, ptr %8, i64 272
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !58
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !52
  %i.bq = icmp slt i32 %7, %i.bp
  br i1 %i.bq, label %bb.w, label %bb.v

bb.u:                                             ; preds = %bb.t
  switch i32 %7, label %bb.v [
    i32 -4, label %bb.w
    i32 -2, label %bb.w
  ]

bb.v:                                             ; preds = %ompi_comm_remote_size.exit, %bb.u
  %i.br = getelementptr inbounds nuw i8, ptr %8, i64 312
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !47
  %i.bt = getelementptr inbounds nuw i8, ptr %8, i64 320
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !48
  %i.bv = tail call i32 @ompi_errhandler_invoke(ptr noundef %i.bs, ptr noundef nonnull %8, i32 noundef %i.bu, i32 noundef 8, ptr noundef nonnull @FUNC_NAME) #5
  br label %bb.al

bb.w:                                             ; preds = %bb.u, %bb.u, %ompi_comm_remote_size.exit
  %i.bw = and i32 %7, -3
  %or.cond14.not = icmp eq i32 %i.bw, -4
  br i1 %or.cond14.not, label %bb.ab, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bx = icmp eq ptr %2, null
  %i.by = icmp eq ptr %2, @ompi_mpi_datatype_null
  %or.cond17 = or i1 %i.bx, %i.by
  br i1 %or.cond17, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bz = icmp slt i32 %1, 0
  br i1 %i.bz, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ca = getelementptr i8, ptr %2, i64 16
  %.val160 = load i16, ptr %i.ca, align 8, !tbaa !57
  %i.cb = and i16 %.val160, 5
  %or.cond186 = icmp eq i16 %i.cb, 4
  br i1 %or.cond186, label %.loopexit, label %bb.aa

bb.aa:                                            ; preds = %bb.x, %bb.y, %bb.z
  %.1171.ph = phi i32 [ 3, %bb.z ], [ 3, %bb.x ], [ 2, %bb.y ]
  %9 = tail call fastcc i32 @ompi_errcode_get_mpi_code(i32 noundef %.1171.ph) ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %8, i64 312
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !47
  %i.ce = getelementptr inbounds nuw i8, ptr %8, i64 320
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !48
  %i.cg = tail call i32 @ompi_errhandler_invoke(ptr noundef %i.cd, ptr noundef nonnull %8, i32 noundef %i.cf, i32 noundef %9, ptr noundef nonnull @FUNC_NAME) #5 ; 0 uses
  br label %bb.al

bb.ab:                                            ; preds = %bb.w
  %i.ch = icmp eq i32 %7, -4
  br i1 %i.ch, label %bb.ac, label %.loopexit

bb.ac:                                            ; preds = %bb.ab
  %i.ci = icmp eq ptr %5, null
  br i1 %i.ci, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.cj = getelementptr inbounds nuw i8, ptr %8, i64 312
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !47
  %i.cl = getelementptr inbounds nuw i8, ptr %8, i64 320
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !48
  %i.cn = tail call i32 @ompi_errhandler_invoke(ptr noundef %i.ck, ptr noundef nonnull %8, i32 noundef %i.cm, i32 noundef 13, ptr noundef nonnull @FUNC_NAME) #5
  br label %bb.al

bb.ae:                                            ; preds = %bb.ac
  %i.co = icmp eq ptr %4, null
  br i1 %i.co, label %bb.af, label %ompi_comm_remote_size.exit166

bb.af:                                            ; preds = %bb.ae
  %i.cp = getelementptr inbounds nuw i8, ptr %8, i64 312
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !47
  %i.cr = getelementptr inbounds nuw i8, ptr %8, i64 320
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !48
  %i.ct = tail call i32 @ompi_errhandler_invoke(ptr noundef %i.cq, ptr noundef nonnull %8, i32 noundef %i.cs, i32 noundef 2, ptr noundef nonnull @FUNC_NAME) #5
  br label %bb.al

ompi_comm_remote_size.exit166:                    ; preds = %bb.ae
  %i.cu = getelementptr inbounds nuw i8, ptr %8, i64 272
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !58
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !52 ; 2 uses
  %i.cy = icmp sgt i32 %i.cx, 0
  br i1 %i.cy, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %ompi_comm_remote_size.exit166
  %i.cz = icmp eq ptr %6, @ompi_mpi_datatype_null
  %i.da = icmp eq ptr %6, null
  %or.cond20 = or i1 %i.cz, %i.da
  br i1 %or.cond20, label %.lr.ph.split.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %wide.trip.count = zext nneg i32 %i.cx to i64
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.db = load i32, ptr %4, align 4, !tbaa !12
  %i.dc = icmp slt i32 %i.db, 0
  br i1 %i.dc, label %.split.us, label %.split190.us

.split190.us:                                     ; preds = %.lr.ph.split.us
  %i.dd = getelementptr inbounds nuw i8, ptr %8, i64 312
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !47
  %i.df = getelementptr inbounds nuw i8, ptr %8, i64 320
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !48
  %i.dh = tail call i32 @ompi_errhandler_invoke(ptr noundef %i.de, ptr noundef nonnull %8, i32 noundef %i.dg, i32 noundef 3, ptr noundef nonnull @FUNC_NAME) #5
  br label %bb.al

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.ag
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next, %bb.ag ] ; 2 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !12
  %i.dk = icmp slt i32 %i.dj, 0
  br i1 %i.dk, label %.split.us, label %bb.ag

.split.us:                                        ; preds = %.lr.ph.split, %.lr.ph.split.us
  %i.dl = getelementptr inbounds nuw i8, ptr %8, i64 312
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !47
  %i.dn = getelementptr inbounds nuw i8, ptr %8, i64 320
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !48
  %i.dp = tail call i32 @ompi_errhandler_invoke(ptr noundef %i.dm, ptr noundef %8, i32 noundef %i.do, i32 noundef 2, ptr noundef nonnull @FUNC_NAME) #5
  br label %bb.al

bb.ag:                                            ; preds = %.lr.ph.split
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph.split, !llvm.loop !22

.loopexit:                                        ; preds = %bb.ag, %bb.s, %ompi_comm_remote_size.exit166, %.preheader, %bb.z, %bb.n, %bb.ab, %bb.a
  %i.dq = getelementptr i8, ptr %8, i64 377
  %.val.i = load i8, ptr %i.dq, align 1, !tbaa !59, !range !10, !noundef !11
  %i.dr = trunc nuw i8 %.val.i to i1
  br i1 %i.dr, label %bb.aj, label %bb.ah, !prof !13

bb.ah:                                            ; preds = %.loopexit
  %i.ds = getelementptr i8, ptr %8, i64 378
  %.val5.i = load i8, ptr %i.ds, align 2, !tbaa !60, !range !10, !noundef !11
  %i.dt = trunc nuw i8 %.val5.i to i1
  br i1 %i.dt, label %bb.ai, label %ompi_comm_iface_coll_check.exit, !prof !13

bb.ai:                                            ; preds = %bb.ah
  %i.du = tail call i32 @opal_progress() #5       ; 0 uses
  br label %bb.aj

bb.aj:                                            ; preds = %.loopexit, %bb.ai
  %.3.ph = phi i32 [ 77, %.loopexit ], [ 75, %bb.ai ]
  %10 = tail call fastcc i32 @ompi_errcode_get_mpi_code(i32 noundef %.3.ph) ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %8, i64 312
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !47
  %i.dx = getelementptr inbounds nuw i8, ptr %8, i64 320
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !48
  %i.dz = tail call i32 @ompi_errhandler_invoke(ptr noundef %i.dw, ptr noundef nonnull %8, i32 noundef %i.dy, i32 noundef %10, ptr noundef nonnull @FUNC_NAME) #5 ; 0 uses
  br label %bb.al

ompi_comm_iface_coll_check.exit:                  ; preds = %bb.ah
  %i.ea = getelementptr inbounds nuw i8, ptr %8, i64 344
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !61 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 160
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !65
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 168
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !66
  %i.eg = tail call i32 %i.ed(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, ptr noundef nonnull %8, ptr noundef %i.ef) #5 ; 2 uses
  %.not153 = icmp eq i32 %i.eg, 0
  br i1 %.not153, label %bb.al, label %bb.ak, !prof !67

bb.ak:                                            ; preds = %ompi_comm_iface_coll_check.exit
  %i.eh = tail call fastcc i32 @ompi_errcode_get_mpi_code(i32 noundef %i.eg) ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %8, i64 312
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !47
  %i.ek = getelementptr inbounds nuw i8, ptr %8, i64 320
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !48
  %i.em = tail call i32 @ompi_errhandler_invoke(ptr noundef %i.ej, ptr noundef nonnull %8, i32 noundef %i.el, i32 noundef %i.eh, ptr noundef nonnull @FUNC_NAME) #5 ; 0 uses
  br label %bb.al

bb.al:                                            ; preds = %ompi_comm_iface_coll_check.exit, %bb.ak, %bb.aj, %.split190.us, %.split.us, %bb.af, %bb.ad, %bb.aa, %bb.v, %.split196.us, %.split194.us, %bb.r, %bb.p, %bb.m, %bb.f, %ompi_comm_invalid.exit.thread
  %.0 = phi i32 [ %i.k, %ompi_comm_invalid.exit.thread ], [ %i.q, %bb.f ], [ %9, %bb.aa ], [ %10, %bb.aj ], [ %i.ax, %.split196.us ], [ %i.eh, %bb.ak ], [ 0, %ompi_comm_iface_coll_check.exit ], [ %i.cn, %bb.ad ], [ %i.ct, %bb.af ], [ %i.dp, %.split.us ], [ %i.dh, %.split190.us ], [ %i.bv, %bb.v ], [ %i.ab, %bb.m ], [ %i.am, %bb.p ], [ %i.bc, %bb.r ], [ %i.bk, %.split194.us ]
  ret i32 %.0
}

declare i32 @ompi_errhandler_invoke(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @ompi_errcode_get_mpi_code(i32 noundef range(i32 1, 0) %0) unnamed_addr #2 {
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
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 112), align 8, !tbaa !71
  %i.h = sext i32 %i.f to i64
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %.thread.i.us

.thread.i.us:                                     ; preds = %bb.b, %.lr.ph.split.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %.lr.ph.split.us ] ; 3 uses
  %.not.us = icmp slt i64 %indvars.iv, %i.h
  tail call void @llvm.assume(i1 %.not.us)
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !72   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !74
  %i.m = icmp eq i32 %i.l, %0
  br i1 %i.m, label %.split.us, label %bb.b

bb.b:                                             ; preds = %.thread.i.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.thread.i.us, !llvm.loop !68

bb.c:                                             ; preds = %opal_pointer_array_get_item.exit
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1 ; 2 uses
  %i.n = load i32, ptr @ompi_errcode_intern_lastused, align 4, !tbaa !12
  %i.o = sext i32 %i.n to i64
  %i.p = icmp slt i64 %indvars.iv.next19, %i.o
  br i1 %i.p, label %.lr.ph.split, label %.loopexit, !llvm.loop !69

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
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 112), align 8, !tbaa !71
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv18
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !72
  br label %opal_pointer_array_get_item.exit

bb.d:                                             ; preds = %.lr.ph.split
  %i.x = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 32)) #5 ; 0 uses
  %.pre.i = load i8, ptr @opal_uses_threads, align 1, !tbaa !9, !range !10
  %i.y = trunc nuw i8 %.pre.i to i1
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 112), align 8, !tbaa !71
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv18
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !72 ; 2 uses
  br i1 %i.y, label %bb.e, label %opal_pointer_array_get_item.exit, !prof !76

bb.e:                                             ; preds = %bb.d
  %i.ac = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 32)) #5 ; 0 uses
  %.pre = load i8, ptr @opal_uses_threads, align 1, !tbaa !9, !range !10
  br label %opal_pointer_array_get_item.exit

opal_pointer_array_get_item.exit:                 ; preds = %.thread.i, %bb.d, %bb.e
  %i.ad = phi i8 [ 0, %.thread.i ], [ %.pre, %bb.e ], [ 0, %bb.d ]
  %.0.i = phi ptr [ %i.w, %.thread.i ], [ %i.ab, %bb.e ], [ %i.ab, %bb.d ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !74
  %i.ag = icmp eq i32 %i.af, %0
  br i1 %i.ag, label %.split.us, label %bb.c

.split.us:                                        ; preds = %.thread.i.us, %opal_pointer_array_get_item.exit
  %.us-phi = phi ptr [ %.0.i, %opal_pointer_array_get_item.exit ], [ %i.j, %.thread.i.us ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.us-phi, i64 20
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !77
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.c, %.preheader, %.split.us, %bb.a
  %.010 = phi i32 [ %0, %bb.a ], [ %i.ai, %.split.us ], [ 14, %bb.c ], [ 14, %.preheader ], [ 14, %bb.b ]
  ret i32 %.010
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #3

declare i32 @opal_progress() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nounwind }

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
!20 = !{!"llvm.loop.mustprogress"}
!21 = distinct !{!21, !20}
!22 = distinct !{!22, !20}
!23 = !{!"p1 _ZTS19opal_hash_element_t", !14, i64 0}
!24 = !{!"long", !4, i64 0}
!25 = !{!"p1 _ZTS24opal_hash_type_methods_t", !14, i64 0}
!26 = !{!"opal_hash_table_t", !16, i64 0, !23, i64 16, !24, i64 24, !24, i64 32, !24, i64 40, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !25, i64 64}
!27 = !{!"p1 _ZTS11opal_info_t", !14, i64 0}
!28 = !{!"opal_infosubscriber_t", !16, i64 0, !26, i64 16, !27, i64 88}
!29 = !{!"p1 omnipotent char", !14, i64 0}
!30 = !{!"ompi_comm_extended_cid_t", !24, i64 0, !4, i64 8}
!31 = !{!"ompi_comm_extended_cid_block_t", !30, i64 0, !24, i64 16, !4, i64 24, !4, i64 25}
!32 = !{!"p1 int", !14, i64 0}
!33 = !{!"p1 _ZTS12ompi_group_t", !14, i64 0}
!34 = !{!"p1 _ZTS19ompi_communicator_t", !14, i64 0}
!35 = !{!"p1 _ZTS17opal_hash_table_t", !14, i64 0}
!36 = !{!"p1 _ZTS22mca_topo_base_module_t", !14, i64 0}
!37 = !{!"p2 _ZTS20ompi_peruse_handle_t", !18, i64 0}
!38 = !{!"p1 _ZTS17ompi_errhandler_t", !14, i64 0}
!39 = !{!"p1 _ZTS14mca_pml_comm_t", !14, i64 0}
!40 = !{!"p1 _ZTS14mca_mtl_comm_t", !14, i64 0}
!41 = !{!"p1 _ZTS25mca_coll_base_comm_coll_t", !14, i64 0}
!42 = !{!"p1 _ZTS15ompi_instance_t", !14, i64 0}
!43 = !{!"p1 _ZTS13opal_object_t", !14, i64 0}
!44 = !{!"ompi_communicator_t", !28, i64 0, !17, i64 96, !29, i64 160, !30, i64 168, !31, i64 184, !5, i64 216, !5, i64 220, !5, i64 224, !5, i64 228, !5, i64 232, !32, i64 240, !5, i64 248, !5, i64 252, !5, i64 256, !33, i64 264, !33, i64 272, !34, i64 280, !35, i64 288, !36, i64 296, !37, i64 304, !38, i64 312, !5, i64 320, !39, i64 328, !40, i64 336, !41, i64 344, !42, i64 352, !43, i64 360, !5, i64 368, !5, i64 372, !8, i64 376, !8, i64 377, !8, i64 378}
!45 = !{!44, !5, i64 224}
!46 = !{!44, !5, i64 220}
!47 = !{!44, !38, i64 312}
!48 = !{!44, !5, i64 320}
!49 = !{!44, !33, i64 264}
!50 = !{!"p2 _ZTS11ompi_proc_t", !18, i64 0}
!51 = !{!"ompi_group_t", !16, i64 0, !5, i64 16, !5, i64 20, !5, i64 24, !50, i64 32, !5, i64 40, !33, i64 48, !4, i64 56, !42, i64 72}
!52 = !{!51, !5, i64 16}
!53 = !{!"short", !4, i64 0}
!54 = !{!"p1 _ZTS12dt_elem_desc", !14, i64 0}
!55 = !{!"dt_type_desc_t", !24, i64 0, !24, i64 8, !54, i64 16}
!56 = !{!"opal_datatype_t", !16, i64 0, !53, i64 16, !53, i64 18, !5, i64 20, !24, i64 24, !24, i64 32, !24, i64 40, !24, i64 48, !24, i64 56, !24, i64 64, !5, i64 72, !5, i64 76, !4, i64 80, !55, i64 144, !55, i64 168, !19, i64 192}
!57 = !{!56, !53, i64 16}
!58 = !{!44, !33, i64 272}
!59 = !{!44, !8, i64 377}
!60 = !{!44, !8, i64 378}
!61 = !{!44, !41, i64 344}
!62 = !{!"p1 _ZTS28mca_coll_base_module_2_4_0_t", !14, i64 0}
!63 = !{!"p1 _ZTS11opal_list_t", !14, i64 0}
!64 = !{!"mca_coll_base_comm_coll_t", !14, i64 0, !62, i64 8, !14, i64 16, !62, i64 24, !14, i64 32, !62, i64 40, !14, i64 48, !62, i64 56, !14, i64 64, !62, i64 72, !14, i64 80, !62, i64 88, !14, i64 96, !62, i64 104, !14, i64 112, !62, i64 120, !14, i64 128, !62, i64 136, !14, i64 144, !62, i64 152, !14, i64 160, !62, i64 168, !14, i64 176, !62, i64 184, !14, i64 192, !62, i64 200, !14, i64 208, !62, i64 216, !14, i64 224, !62, i64 232, !14, i64 240, !62, i64 248, !14, i64 256, !62, i64 264, !14, i64 272, !62, i64 280, !14, i64 288, !62, i64 296, !14, i64 304, !62, i64 312, !14, i64 320, !62, i64 328, !14, i64 336, !62, i64 344, !14, i64 352, !62, i64 360, !14, i64 368, !62, i64 376, !14, i64 384, !62, i64 392, !14, i64 400, !62, i64 408, !14, i64 416, !62, i64 424, !14, i64 432, !62, i64 440, !14, i64 448, !62, i64 456, !14, i64 464, !62, i64 472, !14, i64 480, !62, i64 488, !14, i64 496, !62, i64 504, !14, i64 512, !62, i64 520, !14, i64 528, !62, i64 536, !14, i64 544, !62, i64 552, !14, i64 560, !62, i64 568, !14, i64 576, !62, i64 584, !14, i64 592, !62, i64 600, !14, i64 608, !62, i64 616, !14, i64 624, !62, i64 632, !14, i64 640, !62, i64 648, !14, i64 656, !62, i64 664, !14, i64 672, !62, i64 680, !14, i64 688, !62, i64 696, !14, i64 704, !62, i64 712, !14, i64 720, !62, i64 728, !14, i64 736, !62, i64 744, !14, i64 752, !62, i64 760, !14, i64 768, !62, i64 776, !14, i64 784, !62, i64 792, !14, i64 800, !62, i64 808, !14, i64 816, !62, i64 824, !14, i64 832, !62, i64 840, !14, i64 848, !62, i64 856, !14, i64 864, !62, i64 872, !14, i64 880, !62, i64 888, !14, i64 896, !62, i64 904, !14, i64 912, !62, i64 920, !14, i64 928, !62, i64 936, !14, i64 944, !62, i64 952, !14, i64 960, !62, i64 968, !14, i64 976, !62, i64 984, !14, i64 992, !62, i64 1000, !14, i64 1008, !62, i64 1016, !14, i64 1024, !62, i64 1032, !14, i64 1040, !62, i64 1048, !14, i64 1056, !62, i64 1064, !14, i64 1072, !62, i64 1080, !14, i64 1088, !62, i64 1096, !14, i64 1104, !63, i64 1112}
!65 = !{!64, !14, i64 160}
!66 = !{!64, !62, i64 168}
!67 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!68 = distinct !{!68, !20}
!69 = distinct !{!69, !20, !75}
!70 = !{!"opal_pointer_array_t", !16, i64 0, !17, i64 16, !5, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !5, i64 96, !19, i64 104, !18, i64 112}
!71 = !{!70, !18, i64 112}
!72 = !{!14, !14, i64 0}
!73 = !{!"ompi_errcode_intern_t", !16, i64 0, !5, i64 16, !5, i64 20, !5, i64 24, !4, i64 28}
!74 = !{!73, !5, i64 16}
!75 = !{!"llvm.loop.unswitch.partial.disable"}
!76 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!77 = !{!73, !5, i64 20}
end_hunk_0
