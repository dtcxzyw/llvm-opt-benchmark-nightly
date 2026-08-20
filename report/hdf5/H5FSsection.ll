inline.NumInlined: 14
inline.NumDeleted: 7
begin_hunk_0_@H5FS_sect_try_merge:bb.a
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !82   ; 3 uses
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !97
  %.not18 = icmp eq i64 %i.t, %i.l
  br i1 %.not18, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = call fastcc i32 @H5FS__sect_link(ptr noundef %1, ptr noundef nonnull %i.r, i32 noundef %3)
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.w = load i64, ptr @H5E_FSPACE_g, align 8, !tbaa !13
  %i.x = load i64, ptr @H5E_CANTINSERT_g, align 8, !tbaa !13
  %i.y = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5FS_sect_try_merge, i32 noundef 1564, i64 noundef %i.w, i64 noundef %i.x, ptr noundef nonnull @.str.12) #5 ; 0 uses
  br label %bb.k

bb.j:                                             ; preds = %bb.c
  %i.z = load i64, ptr @H5E_FSPACE_g, align 8, !tbaa !13
  %i.aa = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !13
  %i.ab = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5FS_sect_try_merge, i32 noundef 1546, i64 noundef %i.z, i64 noundef %i.aa, ptr noundef nonnull @.str.7) #5 ; 0 uses
  br label %bb.m

bb.k:                                             ; preds = %bb.h, %bb.f, %bb.g, %bb.i, %bb.e
  %.015.ph = phi i1 [ true, %bb.h ], [ false, %bb.g ], [ true, %bb.f ], [ false, %bb.i ], [ false, %bb.e ]
  %.0.ph = phi i32 [ 1, %bb.h ], [ 0, %bb.g ], [ 1, %bb.f ], [ -1, %bb.i ], [ -1, %bb.e ]
  %i.ac = call fastcc i32 @H5FS__sinfo_unlock(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %.015.ph)
  %i.ad = icmp slt i32 %i.ac, 0
  br i1 %i.ad, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ae = load i64, ptr @H5E_FSPACE_g, align 8, !tbaa !13
  %i.af = load i64, ptr @H5E_CANTRELEASE_g, align 8, !tbaa !13
  %i.ag = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5FS_sect_try_merge, i32 noundef 1573, i64 noundef %i.ae, i64 noundef %i.af, ptr noundef nonnull @.str.9) #5 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.l, %bb.b
  %.1 = phi i32 [ -1, %bb.l ], [ %.0.ph, %bb.k ], [ -1, %bb.j ], [ 0, %bb.b ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 2) i32 @H5FS_sect_find(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = load i8, ptr @H5FS_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  %i.d = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.e = trunc nuw i8 %i.d to i1                  ; 2 uses
  %i.f = select i1 %i.c, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %.thread, !prof !12

.thread:                                          ; preds = %bb.a
  store i8 1, ptr @H5FS_init_g, align 1, !tbaa !8
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = xor i1 %i.e, true
  %i.h = select i1 %i.c, i1 true, i1 %i.g
  br i1 %i.h, label %bb.c, label %bb.bc, !prof !117

bb.c:                                             ; preds = %.thread, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.j = load i64, ptr %i.i, align 8, !tbaa !109
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %bb.bc, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = tail call fastcc i32 @H5FS__sinfo_lock(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 0)
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = load i64, ptr @H5E_FSPACE_g, align 8, !tbaa !13
  %i.n = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !13
  %i.o = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5FS_sect_find, i32 noundef 1757, i64 noundef %i.m, i64 noundef %i.n, ptr noundef nonnull @.str.7) #5 ; 0 uses
  br label %bb.bc

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %2, ptr %i.a, align 8, !tbaa !13
  %i.p = load i8, ptr @H5FS_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.q = trunc nuw i8 %i.p to i1
  %i.r = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.s = trunc nuw i8 %i.r to i1
  %i.t = xor i1 %i.s, true
  %i.u = select i1 %i.q, i1 true, i1 %i.t
  br i1 %i.u, label %bb.g, label %.loopexit, !prof !12

bb.g:                                             ; preds = %bb.f
  %i.v = lshr i64 %2, 32                          ; 2 uses
  %.not.i.i = icmp eq i64 %i.v, 0
  br i1 %.not.i.i, label %bb.o, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = lshr i64 %2, 48                          ; 2 uses
  %.not26.i.i = icmp eq i64 %i.w, 0
  br i1 %.not26.i.i, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = lshr i64 %2, 56                          ; 2 uses
  %.not28.i.i = icmp eq i64 %i.x, 0
  br i1 %.not28.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !29
  %i.aa = zext i8 %i.z to i32
  %i.ab = add nuw nsw i32 %i.aa, 56
  br label %H5VM_log2_gen.exit.i

bb.k:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.w
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !29
  %i.ae = zext i8 %i.ad to i32
  %i.af = add nuw nsw i32 %i.ae, 48
  br label %H5VM_log2_gen.exit.i

bb.l:                                             ; preds = %bb.h
  %i.ag = lshr i64 %2, 40                         ; 2 uses
  %.not27.i.i = icmp eq i64 %i.ag, 0
  br i1 %.not27.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ah = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !29
  %i.aj = zext i8 %i.ai to i32
  %i.ak = add nuw nsw i32 %i.aj, 40
  br label %H5VM_log2_gen.exit.i

bb.n:                                             ; preds = %bb.l
  %i.al = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.v
  %i.am = load i8, ptr %i.al, align 1, !tbaa !29
  %i.an = zext i8 %i.am to i32
  %i.ao = add nuw nsw i32 %i.an, 32
  br label %H5VM_log2_gen.exit.i

bb.o:                                             ; preds = %bb.g
  %i.ap = lshr i64 %2, 16                         ; 2 uses
  %.not23.i.i = icmp eq i64 %i.ap, 0
  br i1 %.not23.i.i, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aq = lshr i64 %2, 24                         ; 2 uses
  %.not25.i.i = icmp eq i64 %i.aq, 0
  br i1 %.not25.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ar = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !29
  %i.at = zext i8 %i.as to i32
  %i.au = add nuw nsw i32 %i.at, 24
  br label %H5VM_log2_gen.exit.i

bb.r:                                             ; preds = %bb.p
  %i.av = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.ap
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !29
  %i.ax = zext i8 %i.aw to i32
  %i.ay = add nuw nsw i32 %i.ax, 16
  br label %H5VM_log2_gen.exit.i

bb.s:                                             ; preds = %bb.o
  %i.az = lshr i64 %2, 8                          ; 2 uses
  %.not24.i.i = icmp eq i64 %i.az, 0
  br i1 %.not24.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ba = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !29
  %i.bc = zext i8 %i.bb to i32
  %i.bd = add nuw nsw i32 %i.bc, 8
  br label %H5VM_log2_gen.exit.i

bb.u:                                             ; preds = %bb.s
  %i.be = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %2
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !29
  %i.bg = zext i8 %i.bf to i32
  br label %H5VM_log2_gen.exit.i

H5VM_log2_gen.exit.i:                             ; preds = %bb.u, %bb.t, %bb.r, %bb.q, %bb.n, %bb.m, %bb.k, %bb.j
  %.0.i.i = phi i32 [ %i.ay, %bb.r ], [ %i.af, %bb.k ], [ %i.ao, %bb.n ], [ %i.ab, %bb.j ], [ %i.ak, %bb.m ], [ %i.au, %bb.q ], [ %i.bd, %bb.t ], [ %i.bg, %bb.u ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 392
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !118
  %.069.fr.i = freeze i64 %i.bi                   ; 3 uses
  %i.bj = icmp ugt i64 %.069.fr.i, 1
  br i1 %i.bj, label %bb.v, label %.thread.i

bb.v:                                             ; preds = %H5VM_log2_gen.exit.i
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !119
  %.not.i = icmp ult i64 %2, %i.bl
  br i1 %.not.i, label %.thread.i, label %bb.w

.thread.i:                                        ; preds = %bb.v, %H5VM_log2_gen.exit.i
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 360 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 408
  %.pre138.i = load ptr, ptr %i.bm, align 8, !tbaa !41
  %4 = zext nneg i32 %.0.i.i to i64
  br label %.split.us.i

bb.w:                                             ; preds = %bb.v
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 360 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 408
  %.pre.i = load ptr, ptr %i.bo, align 8, !tbaa !41
  br label %.split.i

.split.us.i:                                      ; preds = %bb.y, %.thread.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.y ], [ %4, %.thread.i ] ; 3 uses
  %5 = phi ptr [ %i.bw, %bb.y ], [ %.pre138.i, %.thread.i ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 248
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !39
  %i.bs = getelementptr inbounds nuw [32 x i8], ptr %i.br, i64 %indvars.iv
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !98 ; 2 uses
  %.not82.us.i = icmp eq ptr %i.bu, null
  br i1 %.not82.us.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.split.us.i
  %i.bv = call ptr @H5SL_greater(ptr noundef nonnull %i.bu, ptr noundef nonnull %i.a) #5 ; 3 uses
  %.not84.us.i = icmp eq ptr %i.bv, null
  br i1 %.not84.us.i, label %._crit_edge139.i, label %.split123.us.i

._crit_edge139.i:                                 ; preds = %bb.x
  %.pre140.i = load ptr, ptr %i.bm, align 8, !tbaa !41
  br label %bb.y

bb.y:                                             ; preds = %._crit_edge139.i, %.split.us.i
  %i.bw = phi ptr [ %.pre140.i, %._crit_edge139.i ], [ %5, %.split.us.i ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %i.bw, i64 260
  %7 = load i32, ptr %6, align 4, !tbaa !30
  %8 = zext i32 %7 to i64
  %9 = icmp samesign ult i64 %indvars.iv.next, %8
  br i1 %9, label %.split.us.i, label %.loopexit, !llvm.loop !120

.split.i:                                         ; preds = %.loopexit.i, %bb.w
  %i.bx = phi ptr [ %i.gx, %.loopexit.i ], [ %.pre.i, %bb.w ]
  %.074.i = phi i32 [ %11, %.loopexit.i ], [ %.0.i.i, %bb.w ] ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 248
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !39
  %10 = zext i32 %.074.i to i64                   ; 3 uses
  %i.ca = getelementptr inbounds nuw [32 x i8], ptr %i.bz, i64 %10
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !98 ; 2 uses
  %.not82.i = icmp eq ptr %i.cc, null
  br i1 %.not82.i, label %.loopexit.i, label %bb.z

bb.z:                                             ; preds = %.split.i
  %i.cd = tail call ptr @H5SL_first(ptr noundef nonnull %i.cc) #5 ; 2 uses
  %.not85118.i = icmp eq ptr %i.cd, null
  br i1 %.not85118.i, label %.loopexit.i, label %.lr.ph121.i

.split123.us.i:                                   ; preds = %bb.x
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !102
  %i.cg = call ptr @H5SL_remove_first(ptr noundef %i.cf) #5 ; 3 uses
  store ptr %i.cg, ptr %3, align 8, !tbaa !82
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.split123.us.i
  %i.ci = load i64, ptr @H5E_FSPACE_g, align 8, !tbaa !13
  %i.cj = load i64, ptr @H5E_CANTREMOVE_g, align 8, !tbaa !13
  %i.ck = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5FS__sect_find_node, i32 noundef 1630, i64 noundef %i.ci, i64 noundef %i.cj, ptr noundef nonnull @.str.45) #5 ; 0 uses
  br label %bb.ay

bb.ab:                                            ; preds = %.split123.us.i
  %i.cl = trunc nuw i64 %indvars.iv to i32
  %i.cm = load ptr, ptr %i.bn, align 8, !tbaa !50
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !51
  %i.cp = zext i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw [136 x i8], ptr %i.cm, i64 %i.cp ; 2 uses
  %i.cr = load ptr, ptr %i.bm, align 8, !tbaa !41
  %i.cs = call fastcc i32 @H5FS__size_node_decr(ptr noundef %i.cr, i32 noundef %i.cl, ptr noundef nonnull %i.bv, ptr noundef %i.cq)
  %i.ct = icmp slt i32 %i.cs, 0
  br i1 %i.ct, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.cu = load i64, ptr @H5E_FSPACE_g, align 8, !tbaa !13
  %i.cv = load i64, ptr @H5E_CANTREMOVE_g, align 8, !tbaa !13
  %i.cw = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5FS__sect_find_node, i32 noundef 1637, i64 noundef %i.cu, i64 noundef %i.cv, ptr noundef nonnull @.str.44) #5 ; 0 uses
  br label %bb.ay

bb.ad:                                            ; preds = %bb.ab
  %i.cx = load ptr, ptr %3, align 8, !tbaa !82
  %i.cy = call fastcc i32 @H5FS__sect_unlink_rest(ptr noundef nonnull %1, ptr noundef %i.cq, ptr noundef %i.cx)
  %i.cz = icmp slt i32 %i.cy, 0
  br i1 %i.cz, label %bb.ae, label %bb.az

bb.ae:                                            ; preds = %bb.ad
  %i.da = load i64, ptr @H5E_FSPACE_g, align 8, !tbaa !13
  %i.db = load i64, ptr @H5E_CANTFREE_g, align 8, !tbaa !13
  %i.dc = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5FS__sect_find_node, i32 noundef 1640, i64 noundef %i.da, i64 noundef %i.db, ptr noundef nonnull @.str.41) #5 ; 0 uses
  br label %bb.ay

.lr.ph121.i:                                      ; preds = %bb.z, %._crit_edge.i
  %.070119.i = phi ptr [ %i.gw, %._crit_edge.i ], [ %i.cd, %bb.z ] ; 2 uses
  %i.dd = tail call ptr @H5SL_item(ptr noundef nonnull %.070119.i) #5 ; 7 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !102
  %i.dg = tail call ptr @H5SL_first(ptr noundef %i.df) #5 ; 2 uses
  %.not86115.i = icmp eq ptr %i.dg, null
  br i1 %.not86115.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph121.i, %bb.ax
  %.067116.i = phi ptr [ %i.gv, %bb.ax ], [ %i.dg, %.lr.ph121.i ] ; 2 uses
  %i.dh = tail call ptr @H5SL_item(ptr noundef nonnull %.067116.i) #5 ; 4 uses
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !115
  %i.dj = urem i64 %i.di, %.069.fr.i              ; 2 uses
  %.not87.i = icmp eq i64 %i.dj, 0                ; 2 uses
  %i.dk = sub i64 %.069.fr.i, %i.dj               ; 2 uses
  %spec.select.i = select i1 %.not87.i, i64 0, i64 %i.dk
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !97
  %i.dn = add i64 %spec.select.i, %2
  %.not88.i = icmp ult i64 %i.dm, %i.dn
  br i1 %.not88.i, label %bb.ax, label %bb.af

bb.af:                                            ; preds = %.lr.ph.i
  %i.do = load ptr, ptr %i.bp, align 8, !tbaa !50
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !51
  %i.dr = zext i32 %i.dq to i64
  %i.ds = getelementptr inbounds nuw [136 x i8], ptr %i.do, i64 %i.dr ; 4 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 120
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !121
  %.not89.i = icmp eq ptr %i.du, null
  br i1 %.not89.i, label %bb.ax, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dd, i64 24 ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ds, i64 120
  %i.dx = load ptr, ptr %i.dv, align 8, !tbaa !102
  %i.dy = tail call ptr @H5SL_remove(ptr noundef %i.dx, ptr noundef nonnull %i.dh) #5 ; 2 uses
  store ptr %i.dy, ptr %3, align 8, !tbaa !82
  %i.dz = icmp eq ptr %i.dy, null
  br i1 %i.dz, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ea = load i64, ptr @H5E_FSPACE_g, align 8, !tbaa !13
  %i.eb = load i64, ptr @H5E_CANTREMOVE_g, align 8, !tbaa !13
  %i.ec = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5FS__sect_find_node, i32 noundef 1682, i64 noundef %i.ea, i64 noundef %i.eb, ptr noundef nonnull @.str.45) #5 ; 0 uses
  br label %bb.ay

bb.ai:                                            ; preds = %bb.ag
  %i.ed = load ptr, ptr %i.bo, align 8, !tbaa !41 ; 3 uses
  %i.ee = load i8, ptr @H5FS_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.ef = trunc nuw i8 %i.ee to i1
  %i.eg = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.eh = trunc nuw i8 %i.eg to i1
  %i.ei = xor i1 %i.eh, true
  %i.ej = select i1 %i.ef, i1 true, i1 %i.ei
  br i1 %i.ej, label %bb.aj, label %bb.as, !prof !12

bb.aj:                                            ; preds = %bb.ai
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ed, i64 248 ; 2 uses
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !39
  %i.em = getelementptr inbounds nuw [32 x i8], ptr %i.el, i64 %10 ; 4 uses
  %i.en = load i64, ptr %i.em, align 8, !tbaa !104
  %i.eo = add i64 %i.en, -1
  store i64 %i.eo, ptr %i.em, align 8, !tbaa !104
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %i.eq = load i32, ptr %i.ep, align 8, !tbaa !89
  %i.er = and i32 %i.eq, 1
  %.not.i90.i = icmp eq i32 %i.er, 0
  br i1 %.not.i90.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.es = getelementptr inbounds nuw i8, ptr %i.dd, i64 16 ; 2 uses
  %i.et = load i64, ptr %i.es, align 8, !tbaa !106
  %i.eu = add i64 %i.et, -1                       ; 2 uses
  store i64 %i.eu, ptr %i.es, align 8, !tbaa !106
  %i.ev = getelementptr inbounds nuw i8, ptr %i.em, i64 16 ; 2 uses
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !105
  %i.ex = add i64 %i.ew, -1
  store i64 %i.ex, ptr %i.ev, align 8, !tbaa !105
  %i.ey = icmp eq i64 %i.eu, 0
  br i1 %i.ey, label %.sink.split.i.i, label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.ez = getelementptr inbounds nuw i8, ptr %i.dd, i64 8 ; 2 uses
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !108
  %i.fb = add i64 %i.fa, -1                       ; 2 uses
  store i64 %i.fb, ptr %i.ez, align 8, !tbaa !108
  %i.fc = getelementptr inbounds nuw i8, ptr %i.em, i64 8 ; 2 uses
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !107
  %i.fe = add i64 %i.fd, -1
  store i64 %i.fe, ptr %i.fc, align 8, !tbaa !107
  %i.ff = icmp eq i64 %i.fb, 0
  br i1 %i.ff, label %.sink.split.i.i, label %bb.am

.sink.split.i.i:                                  ; preds = %bb.al, %bb.ak
  %.sink34.i.i = phi i64 [ 288, %bb.ak ], [ 280, %bb.al ]
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ed, i64 %.sink34.i.i ; 2 uses
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !13
  %i.fi = add i64 %i.fh, -1
  store i64 %i.fi, ptr %i.fg, align 8, !tbaa !13
  br label %bb.am

bb.am:                                            ; preds = %.sink.split.i.i, %bb.al, %bb.ak
  %i.fj = load ptr, ptr %i.dv, align 8, !tbaa !102
  %i.fk = tail call i64 @H5SL_count(ptr noundef %i.fj) #5
  %i.fl = icmp eq i64 %i.fk, 0
  br i1 %i.fl, label %bb.an, label %bb.as

bb.an:                                            ; preds = %bb.am
  %i.fm = load ptr, ptr %i.ek, align 8, !tbaa !39
  %i.fn = getelementptr inbounds nuw [32 x i8], ptr %i.fm, i64 %10
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 24
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !98
  %i.fq = tail call ptr @H5SL_remove(ptr noundef %i.fp, ptr noundef nonnull %i.dd) #5
  %.not31.i.i = icmp eq ptr %i.fq, %i.dd
  br i1 %.not31.i.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fr = load i64, ptr @H5E_FSPACE_g, align 8, !tbaa !13
  %i.fs = load i64, ptr @H5E_CANTREMOVE_g, align 8, !tbaa !13
  %i.ft = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5FS__size_node_decr, i32 noundef 719, i64 noundef %i.fr, i64 noundef %i.fs, ptr noundef nonnull @.str.45) #5 ; 0 uses
  br label %H5FS__size_node_decr.exit.i

bb.ap:                                            ; preds = %bb.an
  %i.fu = load ptr, ptr %i.dv, align 8, !tbaa !102
  %i.fv = tail call i32 @H5SL_close(ptr noundef %i.fu) #5
  %i.fw = icmp slt i32 %i.fv, 0
  br i1 %i.fw, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.fx = load i64, ptr @H5E_FSPACE_g, align 8, !tbaa !13
  %i.fy = load i64, ptr @H5E_CANTCLOSEOBJ_g, align 8, !tbaa !13
  %i.fz = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5FS__size_node_decr, i32 noundef 723, i64 noundef %i.fx, i64 noundef %i.fy, ptr noundef nonnull @.str.46) #5 ; 0 uses
  br label %H5FS__size_node_decr.exit.i

bb.ar:                                            ; preds = %bb.ap
  %i.ga = tail call ptr @H5FL_reg_free(ptr noundef nonnull @H5_H5FS_node_t_reg_free_list, ptr noundef nonnull %i.dd) #5 ; 0 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ed, i64 272 ; 2 uses
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !103
  %i.gd = add i64 %i.gc, -1
  store i64 %i.gd, ptr %i.gb, align 8, !tbaa !103
  br label %bb.as

H5FS__size_node_decr.exit.i:                      ; preds = %bb.aq, %bb.ao
  %i.ge = load i64, ptr @H5E_FSPACE_g, align 8, !tbaa !13
  %i.gf = load i64, ptr @H5E_CANTREMOVE_g, align 8, !tbaa !13
  %i.gg = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5FS__sect_find_node, i32 noundef 1686, i64 noundef %i.ge, i64 noundef %i.gf, ptr noundef nonnull @.str.44) #5 ; 0 uses
  br label %bb.ay

bb.as:                                            ; preds = %bb.ar, %bb.am, %bb.ai
  %i.gh = load ptr, ptr %3, align 8, !tbaa !82
  %i.gi = tail call fastcc i32 @H5FS__sect_unlink_rest(ptr noundef nonnull %1, ptr noundef nonnull %i.ds, ptr noundef %i.gh)
  %i.gj = icmp slt i32 %i.gi, 0
  br i1 %i.gj, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.gk = load i64, ptr @H5E_FSPACE_g, align 8, !tbaa !13
  %i.gl = load i64, ptr @H5E_CANTFREE_g, align 8, !tbaa !13
  %i.gm = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5FS__sect_find_node, i32 noundef 1690, i64 noundef %i.gk, i64 noundef %i.gl, ptr noundef nonnull @.str.41) #5 ; 0 uses
  br label %bb.ay

bb.au:                                            ; preds = %bb.as
  br i1 %.not87.i, label %bb.az, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.gn = load ptr, ptr %i.dw, align 8, !tbaa !121
  %i.go = load ptr, ptr %3, align 8, !tbaa !82
  %i.gp = tail call ptr %i.gn(ptr noundef %i.go, i64 noundef %i.dk) #5, !inline_history !122
  %i.gq = tail call fastcc i32 @H5FS__sect_link(ptr noundef nonnull %1, ptr noundef %i.gp, i32 noundef 0)
  %i.gr = icmp slt i32 %i.gq, 0
  br i1 %i.gr, label %bb.aw, label %bb.az

bb.aw:                                            ; preds = %bb.av
  %i.gs = load i64, ptr @H5E_FSPACE_g, align 8, !tbaa !13
  %i.gt = load i64, ptr @H5E_CANTINSERT_g, align 8, !tbaa !13
  %i.gu = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5FS__sect_find_node, i32 noundef 1702, i64 noundef %i.gs, i64 noundef %i.gt, ptr noundef nonnull @.str.12) #5 ; 0 uses
  br label %bb.ay

bb.ax:                                            ; preds = %bb.af, %.lr.ph.i
  %i.gv = tail call ptr @H5SL_next(ptr noundef nonnull %.067116.i) #5 ; 2 uses
  %.not86.i = icmp eq ptr %i.gv, null
  br i1 %.not86.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !123

._crit_edge.i:                                    ; preds = %bb.ax, %.lr.ph121.i
  %i.gw = tail call ptr @H5SL_next(ptr noundef nonnull %.070119.i) #5 ; 2 uses
  %.not85.i = icmp eq ptr %i.gw, null
  br i1 %.not85.i, label %.loopexit.i, label %.lr.ph121.i

.loopexit.i:                                      ; preds = %._crit_edge.i, %bb.z, %.split.i
  %11 = add i32 %.074.i, 1                        ; 2 uses
  %i.gx = load ptr, ptr %i.bo, align 8, !tbaa !41 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 260
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !30
  %12 = icmp ult i32 %11, %i.gz
  br i1 %12, label %.split.i, label %.loopexit, !llvm.loop !120

bb.ay:                                            ; preds = %bb.ah, %bb.aa, %bb.ac, %bb.ae, %bb.aw, %bb.at, %H5FS__size_node_decr.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ha = load i64, ptr @H5E_FSPACE_g, align 8, !tbaa !13
  %i.hb = load i64, ptr @H5E_CANTFREE_g, align 8, !tbaa !13
  %i.hc = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5FS_sect_find, i32 noundef 1762, i64 noundef %i.ha, i64 noundef %i.hb, ptr noundef nonnull @.str.15) #5 ; 0 uses
  br label %bb.ba

bb.az:                                            ; preds = %bb.av, %bb.au, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.ba

.loopexit:                                        ; preds = %.loopexit.i, %bb.y, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ay, %bb.az, %.loopexit
  %.014.ph = phi i1 [ true, %bb.az ], [ false, %.loopexit ], [ false, %bb.ay ]
  %.0.ph = phi i32 [ 1, %bb.az ], [ 0, %.loopexit ], [ -1, %bb.ay ]
  %i.hd = call fastcc i32 @H5FS__sinfo_unlock(ptr noundef %0, ptr noundef nonnull %1, i1 noundef zeroext %.014.ph)
  %i.he = icmp slt i32 %i.hd, 0
  br i1 %i.he, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.hf = load i64, ptr @H5E_FSPACE_g, align 8, !tbaa !13
  %i.hg = load i64, ptr @H5E_CANTRELEASE_g, align 8, !tbaa !13
  %i.hh = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5FS_sect_find, i32 noundef 1774, i64 noundef %i.hf, i64 noundef %i.hg, ptr noundef nonnull @.str.9) #5 ; 0 uses
  br label %bb.bc

bb.bc:                                            ; preds = %bb.e, %bb.c, %bb.ba, %bb.bb, %bb.b
  %.1 = phi i32 [ -1, %bb.bb ], [ %.0.ph, %bb.ba ], [ 0, %bb.b ], [ -1, %bb.e ], [ 0, %bb.c ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5FS_sect_iterate(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.H5FS_iter_ud_t, align 8     ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5
  %i.a = load i8, ptr @H5FS_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %.thread, !prof !12

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %4, align 8, !tbaa !124
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %2, ptr %i.g, align 8, !tbaa !126
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %3, ptr %i.h, align 8, !tbaa !127
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.j = load i64, ptr %i.i, align 8, !tbaa !109
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = tail call fastcc i32 @H5FS__sinfo_lock(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 128)
  %i.l = icmp sgt i32 %i.k, -1
  br i1 %i.l, label %.preheader, label %bb.d

.preheader:                                       ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 360 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !41   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 260
  %i.p = load i32, ptr %i.o, align 4, !tbaa !30
  %.not32 = icmp eq i32 %i.p, 0
  br i1 %.not32, label %.loopexit, label %.lr.ph

bb.d:                                             ; preds = %bb.c
  %i.q = load i64, ptr @H5E_FSPACE_g, align 8, !tbaa !13
  %i.r = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !13
  %i.s = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5FS_sect_iterate, i32 noundef 1880, i64 noundef %i.q, i64 noundef %i.r, ptr noundef nonnull @.str.7) #5 ; 0 uses
  br label %.thread

.lr.ph:                                           ; preds = %.preheader, %bb.f
  %i.t = phi ptr [ %i.ae, %bb.f ], [ %i.n, %.preheader ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.f ], [ 0, %.preheader ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 248
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !39
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %i.v, i64 %indvars.iv
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !98   ; 2 uses
  %.not27 = icmp eq ptr %i.y, null
  br i1 %.not27, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.z = call i32 @H5SL_iterate(ptr noundef nonnull %i.y, ptr noundef nonnull @H5FS__iterate_node_cb, ptr noundef nonnull %4) #5
  %i.aa = icmp slt i32 %i.z, 0
  br i1 %i.aa, label %.split, label %._crit_edge

._crit_edge:                                      ; preds = %bb.e
  %.pre = load ptr, ptr %i.m, align 8, !tbaa !41
  br label %bb.f

.split:                                           ; preds = %bb.e
  %i.ab = load i64, ptr @H5E_FSPACE_g, align 8, !tbaa !13
  %i.ac = load i64, ptr @H5E_BADITER_g, align 8, !tbaa !13
  %i.ad = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5FS_sect_iterate, i32 noundef 1889, i64 noundef %i.ab, i64 noundef %i.ac, ptr noundef nonnull @.str.16) #5 ; 0 uses
  br label %.loopexit

bb.f:                                             ; preds = %._crit_edge, %.lr.ph
  %i.ae = phi ptr [ %.pre, %._crit_edge ], [ %i.t, %.lr.ph ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 260
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !30
  %i.ah = zext i32 %i.ag to i64
  %i.ai = icmp samesign ult i64 %indvars.iv.next, %i.ah
  br i1 %i.ai, label %.lr.ph, label %.loopexit, !llvm.loop !128

.loopexit:                                        ; preds = %bb.f, %.preheader, %.split
  %.130 = phi i32 [ -1, %.split ], [ 0, %.preheader ], [ 0, %bb.f ]
  %i.aj = call fastcc i32 @H5FS__sinfo_unlock(ptr noundef %0, ptr noundef nonnull %1, i1 noundef zeroext false)
  %i.ak = icmp slt i32 %i.aj, 0
  br i1 %i.ak, label %bb.g, label %.thread

bb.g:                                             ; preds = %.loopexit
  %i.al = load i64, ptr @H5E_FSPACE_g, align 8, !tbaa !13
  %i.am = load i64, ptr @H5E_CANTRELEASE_g, align 8, !tbaa !13
  %i.an = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5FS_sect_iterate, i32 noundef 1897, i64 noundef %i.al, i64 noundef %i.am, ptr noundef nonnull @.str.9) #5 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.b, %bb.a, %bb.g, %.loopexit
  %.2 = phi i32 [ -1, %bb.g ], [ %.130, %.loopexit ], [ 0, %bb.b ], [ 0, %bb.a ], [ -1, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  ret i32 %.2
}

declare i32 @H5SL_iterate(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @H5FS__iterate_node_cb(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = load i8, ptr @H5FS_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.d, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !102
  %i.i = tail call i32 @H5SL_iterate(ptr noundef %i.h, ptr noundef nonnull @H5FS__iterate_sect_cb, ptr noundef %2) #5
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = load i64, ptr @H5E_FSPACE_g, align 8, !tbaa !13
  %i.l = load i64, ptr @H5E_BADITER_g, align 8, !tbaa !13
  %i.m = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5FS__iterate_node_cb, i32 noundef 1841, i64 noundef %i.k, i64 noundef %i.l, ptr noundef nonnull @.str.58) #5 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ -1, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @H5FS_sect_stats(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #3 {
bb.a:
  %i.a = load i8, ptr @H5FS_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.f, !prof !12

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.h = load i64, ptr %i.g, align 8, !tbaa !114
  store i64 %i.h, ptr %1, align 8, !tbaa !13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.not7 = icmp eq ptr %2, null
  br i1 %.not7, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.j = load i64, ptr %i.i, align 8, !tbaa !109
  store i64 %i.j, ptr %2, align 8, !tbaa !13
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.a
  ret i32 0
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5FS_sect_change_class(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5FS_init_g, align 1, !tbaa !8, !range !10, !noundef !11
end_hunk_0
