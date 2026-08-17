inline.NumInlined: 80
inline.NumDeleted: 34
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@qcow2_store_persistent_dirty_bitmaps:bb.a
  %i.w = call zeroext i1 @bdrv_dirty_bitmap_inconsistent(ptr noundef nonnull %.0124242) #13
  br i1 %i.w, label %find_bitmap_by_name.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = call zeroext i1 @bdrv_dirty_bitmap_readonly(ptr noundef nonnull %.0124242) #13
  br i1 %i.x, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %.08.i = load ptr, ptr %.0137, align 8          ; 2 uses
  %.not9.i = icmp eq ptr %.08.i, null
  br i1 %.not9.i, label %find_bitmap_by_name.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %bb.h
  %.010.i = phi ptr [ %.0.i158, %bb.h ], [ %.08.i, %bb.g ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.010.i, i64 32
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.t, ptr noundef nonnull dereferenceable(1) %i.z) #17
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %find_bitmap_by_name.exit, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.010.i, i64 48
  %.0.i158 = load ptr, ptr %i.ac, align 8         ; 2 uses
  %.not.i159 = icmp eq ptr %.0.i158, null
  br i1 %.not.i159, label %find_bitmap_by_name.exit.thread, label %.lr.ph.i, !llvm.loop !18

find_bitmap_by_name.exit:                         ; preds = %.lr.ph.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.010.i, i64 40
  store ptr %.0124242, ptr %i.ad, align 8
  br label %find_bitmap_by_name.exit.thread

bb.i:                                             ; preds = %bb.f
  %i.ae = call fastcc i32 @check_constraints_on_bitmap(ptr noundef nonnull %0, ptr noundef %i.t, i32 noundef %i.u, ptr noundef %spec.select)
  %i.af = icmp slt i32 %i.ae, 0
  br i1 %i.af, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void (ptr, ptr, ...) @error_prepend(ptr noundef %spec.select, ptr noundef nonnull @.str.10, ptr noundef %i.t) #13
  br label %store_bitmap.exit.thread

bb.k:                                             ; preds = %bb.i
  %.08.i160 = load ptr, ptr %.0137, align 8       ; 2 uses
  %.not9.i161 = icmp eq ptr %.08.i160, null
  br i1 %.not9.i161, label %.loopexit, label %.lr.ph.i162

.lr.ph.i162:                                      ; preds = %bb.k, %bb.l
  %.010.i163 = phi ptr [ %.0.i164, %bb.l ], [ %.08.i160, %bb.k ] ; 7 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.010.i163, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.t, ptr noundef nonnull dereferenceable(1) %i.ah) #17
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %find_bitmap_by_name.exit167, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i162
  %i.ak = getelementptr inbounds nuw i8, ptr %.010.i163, i64 48
  %.0.i164 = load ptr, ptr %i.ak, align 8         ; 2 uses
  %.not.i165 = icmp eq ptr %.0.i164, null
  br i1 %.not.i165, label %.loopexit, label %.lr.ph.i162, !llvm.loop !18

.loopexit:                                        ; preds = %bb.l, %bb.k
  %i.al = add i32 %.0125241.ph, 1                 ; 2 uses
  %i.am = icmp ugt i32 %i.al, 65535
  br i1 %i.am, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.loopexit
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %spec.select, ptr noundef nonnull @.str, i32 noundef 1593, ptr noundef nonnull @__func__.qcow2_store_persistent_dirty_bitmaps, ptr noundef nonnull @.str.11) #13
  br label %store_bitmap.exit.thread

bb.n:                                             ; preds = %.loopexit
  %i.an = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.t) #17
  %i.ao = shl i64 %i.an, 32
  %i.ap = add i64 %i.ao, 133143986176
  %sext = ashr exact i64 %i.ap, 32
  %i.aq = and i64 %sext, -8
  %i.ar = add i64 %i.aq, %.0126240.ph             ; 2 uses
  %i.as = icmp ugt i64 %i.ar, 67107840
  br i1 %i.as, label %bb.o, label %g_strdup_inline.exit

bb.o:                                             ; preds = %bb.n
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %spec.select, ptr noundef nonnull @.str, i32 noundef 1599, ptr noundef nonnull @__func__.qcow2_store_persistent_dirty_bitmaps, ptr noundef nonnull @.str.12) #13
  br label %store_bitmap.exit.thread

g_strdup_inline.exit:                             ; preds = %bb.n
  %i.at = call noalias dereferenceable_or_null(56) ptr @g_malloc0(i64 noundef 56) #14 ; 4 uses
  %i.au = call noalias ptr @g_strdup(ptr noundef nonnull %i.t) #13
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  store ptr %i.au, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 48 ; 2 uses
  store ptr null, ptr %i.aw, align 8
  %i.ax = load ptr, ptr %i.s, align 8
  store ptr %i.at, ptr %i.ax, align 8
  store ptr %i.aw, ptr %i.s, align 8
  br label %find_bitmap_by_name.exit.thread.thread

find_bitmap_by_name.exit167:                      ; preds = %.lr.ph.i162
  %i.ay = getelementptr inbounds nuw i8, ptr %.010.i163, i64 24
  %i.az = load i32, ptr %i.ay, align 8
  %i.ba = and i32 %i.az, 1
  %.not153 = icmp eq i32 %i.ba, 0
  br i1 %.not153, label %bb.p, label %bb.q

bb.p:                                             ; preds = %find_bitmap_by_name.exit167
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %spec.select, ptr noundef nonnull @.str, i32 noundef 1609, ptr noundef nonnull @__func__.qcow2_store_persistent_dirty_bitmaps, ptr noundef nonnull @.str.13, ptr noundef nonnull %i.t) #13
  br label %store_bitmap.exit.thread

bb.q:                                             ; preds = %find_bitmap_by_name.exit167
  %i.bb = call noundef dereferenceable_or_null(24) ptr @g_memdup2(ptr noundef nonnull %.010.i163, i64 noundef 24) #18 ; 2 uses
  store i64 0, ptr %.010.i163, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %.010.i163, i64 8
  store i32 0, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 2 uses
  store ptr null, ptr %i.bd, align 8
  %i.be = load ptr, ptr %i.j, align 8
  store ptr %i.bb, ptr %i.be, align 8
  store ptr %i.bd, ptr %i.j, align 8
  br label %find_bitmap_by_name.exit.thread.thread

find_bitmap_by_name.exit.thread:                  ; preds = %bb.h, %bb.g, %.backedge, %bb.e, %find_bitmap_by_name.exit
  %i.bf = call ptr @bdrv_dirty_bitmap_next(ptr noundef nonnull %.0124242) #13 ; 2 uses
  %.not = icmp eq ptr %i.bf, null
  br i1 %.not, label %._crit_edge, label %.backedge, !llvm.loop !22

find_bitmap_by_name.exit.thread.thread:           ; preds = %g_strdup_inline.exit, %bb.q
  %.0134 = phi ptr [ %i.at, %g_strdup_inline.exit ], [ %.010.i163, %bb.q ] ; 3 uses
  %.1127 = phi i64 [ %i.ar, %g_strdup_inline.exit ], [ %.0126240.ph, %bb.q ]
  %.1 = phi i32 [ %i.al, %g_strdup_inline.exit ], [ %.0125241.ph, %bb.q ]
  %i.bg = call zeroext i1 @bdrv_dirty_bitmap_enabled(ptr noundef nonnull %.0124242) #13
  %i.bh = select i1 %i.bg, i32 2, i32 0
  %i.bi = getelementptr inbounds nuw i8, ptr %.0134, i64 24
  store i32 %i.bh, ptr %i.bi, align 8
  %i.bj = call i32 @bdrv_dirty_bitmap_granularity(ptr noundef nonnull %.0124242) #13
  %i.bk = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.bj, i1 false)
  %i.bl = trunc nuw nsw i32 %i.bk to i8
  %i.bm = getelementptr inbounds nuw i8, ptr %.0134, i64 28
  store i8 %i.bl, ptr %i.bm, align 4
  %i.bn = getelementptr inbounds nuw i8, ptr %.0134, i64 40
  store ptr %.0124242, ptr %i.bn, align 8
  %i.bo = call ptr @bdrv_dirty_bitmap_next(ptr noundef nonnull %.0124242) #13 ; 2 uses
  %.not346 = icmp eq ptr %i.bo, null
  br i1 %.not346, label %._crit_edge.thread, label %.backedge.outer, !llvm.loop !22

._crit_edge:                                      ; preds = %find_bitmap_by_name.exit.thread
  br i1 %.0130239.ph, label %._crit_edge.thread, label %.critedge

._crit_edge.thread:                               ; preds = %find_bitmap_by_name.exit.thread.thread, %._crit_edge
  %i.bp = call zeroext i1 @bdrv_is_read_only(ptr noundef nonnull %0) #13
  br i1 %i.bp, label %can_write.exit.thread, label %can_write.exit

can_write.exit:                                   ; preds = %._crit_edge.thread
  %i.bq = call i32 @bdrv_get_flags(ptr noundef nonnull %0) #13
  %i.br = and i32 %i.bq, 2048
  %.not.i168 = icmp eq i32 %i.br, 0
  br i1 %.not.i168, label %.preheader193, label %can_write.exit.thread

.preheader193:                                    ; preds = %can_write.exit
  %.1135243 = load ptr, ptr %.0137, align 8       ; 2 uses
  %.not150244 = icmp eq ptr %.1135243, null
  br i1 %.not150244, label %._crit_edge249, label %.lr.ph248

.lr.ph248:                                        ; preds = %.preheader193
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 16832 ; 3 uses
  br label %bb.r

can_write.exit.thread:                            ; preds = %._crit_edge.thread, %can_write.exit
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %spec.select, ptr noundef nonnull @.str, i32 noundef 1627, ptr noundef nonnull @__func__.qcow2_store_persistent_dirty_bitmaps, ptr noundef nonnull @.str.14) #13
  br label %store_bitmap.exit.thread

bb.r:                                             ; preds = %.lr.ph248, %bb.az
  %.1135245 = phi ptr [ %.1135243, %.lr.ph248 ], [ %.1135, %bb.az ] ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.1135245, i64 40 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8            ; 2 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %bb.az, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bw = call zeroext i1 @bdrv_dirty_bitmap_readonly(ptr noundef nonnull %i.bu) #13
  br i1 %i.bw, label %bb.az, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bx = load ptr, ptr %i.bt, align 8            ; 9 uses
  %.not.i169 = icmp eq ptr %i.bx, null
  br i1 %.not.i169, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  call void @__assert_fail(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str, i32 noundef 1388, ptr noundef nonnull @__PRETTY_FUNCTION__.store_bitmap) #15
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.by = call ptr @bdrv_dirty_bitmap_name(ptr noundef nonnull %i.bx) #13 ; 2 uses
  %i.bz = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.ca = call i64 @bdrv_dirty_bitmap_size(ptr noundef nonnull %i.bx) #13 ; 3 uses
  %i.cb = call ptr @bdrv_dirty_bitmap_name(ptr noundef nonnull %i.bx) #13 ; 3 uses
  %i.cc = call i64 @bdrv_dirty_bitmap_serialization_size(ptr noundef nonnull %i.bx, i64 noundef 0, i64 noundef %i.ca) #13
  %.val.i.i = load i32, ptr %i.bz, align 8
  %i.cd = getelementptr i8, ptr %i.bz, i64 4      ; 6 uses
  %.val111.i.i = load i32, ptr %i.cd, align 4     ; 2 uses
  %i.ce = add i32 %.val111.i.i, -1
  %i.cf = sext i32 %i.ce to i64
  %i.cg = add i64 %i.cc, %i.cf
  %i.ch = zext nneg i32 %.val.i.i to i64
  %i.ci = lshr i64 %i.cg, %i.ch                   ; 18 uses
  %i.cj = icmp ugt i64 %i.ci, 134217728
  %i.ck = sext i32 %.val111.i.i to i64
  %i.cl = mul nsw i64 %i.ci, %i.ck
  %i.cm = icmp ugt i64 %i.cl, 536870912
  %or.cond.i.i = select i1 %i.cj, i1 true, i1 %i.cm
  br i1 %or.cond.i.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %spec.select, ptr noundef nonnull @.str, i32 noundef 1298, ptr noundef nonnull @__func__.store_bitmap_data, ptr noundef nonnull @.str.47, ptr noundef %i.cb) #13
  br label %store_bitmap.exit.thread

bb.x:                                             ; preds = %bb.v
  %i.cn = call noalias ptr @g_try_malloc0_n(i64 noundef %i.ci, i64 noundef 8) #16 ; 13 uses
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %spec.select, ptr noundef nonnull @.str, i32 noundef 1304, ptr noundef nonnull @__func__.store_bitmap_data, ptr noundef nonnull @.str.48) #13
  br label %store_bitmap.exit.thread

bb.z:                                             ; preds = %bb.x
  %i.cp = load i32, ptr %i.cd, align 4
  %i.cq = sext i32 %i.cp to i64
  %i.cr = call noalias ptr @g_malloc(i64 noundef %i.cq) #14 ; 5 uses
  %i.cs = load i32, ptr %i.cd, align 4
  %i.ct = call i64 @bdrv_dirty_bitmap_serialization_coverage(i32 noundef %i.cs, ptr noundef nonnull %i.bx) #13 ; 5 uses
  %i.cu = add i64 %i.ca, -1
  %i.cv = add i64 %i.cu, %i.ct
  %i.cw = udiv i64 %i.cv, %i.ct
  %i.cx = icmp eq i64 %i.cw, %i.ci
  br i1 %i.cx, label %.preheader.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @__assert_fail(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str, i32 noundef 1310, ptr noundef nonnull @__PRETTY_FUNCTION__.store_bitmap_data) #15
  unreachable

.preheader.i.i:                                   ; preds = %bb.z, %bb.aj
  %.099.i.i = phi i64 [ %i.dd, %bb.aj ], [ 0, %bb.z ]
  %i.cy = call i64 @bdrv_dirty_bitmap_next_dirty(ptr noundef nonnull %i.bx, i64 noundef %.099.i.i, i64 noundef 9223372036854775807) #13 ; 2 uses
  %i.cz = icmp sgt i64 %i.cy, -1
  br i1 %i.cz, label %bb.ab, label %bb.ap

bb.ab:                                            ; preds = %.preheader.i.i
  %i.da = udiv i64 %i.cy, %i.ct                   ; 2 uses
  %i.db = mul i64 %i.da, %i.ct                    ; 4 uses
  %i.dc = add i64 %i.db, %i.ct
  %i.dd = call i64 @llvm.umin.i64(i64 %i.ca, i64 %i.dc) ; 2 uses
  %i.de = sub i64 %i.dd, %i.db                    ; 2 uses
  %i.df = call i64 @bdrv_dirty_bitmap_serialization_size(ptr noundef nonnull %i.bx, i64 noundef %i.db, i64 noundef %i.de) #13 ; 4 uses
  %i.dg = load i32, ptr %i.cd, align 4
  %i.dh = sext i32 %i.dg to i64                   ; 2 uses
  %.not.i.i = icmp ugt i64 %i.df, %i.dh
  br i1 %.not.i.i, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  call void @__assert_fail(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str, i32 noundef 1329, ptr noundef nonnull @__PRETTY_FUNCTION__.store_bitmap_data) #15
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.di = call i64 @qcow2_alloc_clusters(ptr noundef nonnull %0, i64 noundef %i.dh) #13 ; 5 uses
  %i.dj = icmp slt i64 %i.di, 0
  br i1 %i.dj, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.dk = trunc i64 %i.di to i32
  %i.dl = sub i32 0, %i.dk
  call void (ptr, ptr, i32, ptr, i32, ptr, ...) @error_setg_errno_internal(ptr noundef %spec.select, ptr noundef nonnull @.str, i32 noundef 1335, ptr noundef nonnull @__func__.store_bitmap_data, i32 noundef %i.dl, ptr noundef nonnull @.str.44, ptr noundef %i.cb) #13
  br label %bb.al

bb.af:                                            ; preds = %bb.ad
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.da
  store i64 %i.di, ptr %i.dm, align 8
  call void @bdrv_dirty_bitmap_serialize_part(ptr noundef nonnull %i.bx, ptr noundef %i.cr, i64 noundef %i.db, i64 noundef %i.de) #13
  %i.dn = load i32, ptr %i.cd, align 4
  %i.do = sext i32 %i.dn to i64                   ; 3 uses
  %i.dp = icmp ult i64 %i.df, %i.do
  br i1 %i.dp, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.df
  %i.dr = sub nuw i64 %i.do, %i.df
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.dq, i8 noundef 0, i64 noundef %i.dr, i1 noundef false) #13
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.ds = call i32 @qcow2_pre_write_overlap_check(ptr noundef nonnull %0, i32 noundef 0, i64 noundef %i.di, i64 noundef %i.do, i1 noundef zeroext false) #13 ; 2 uses
  %i.dt = icmp slt i32 %i.ds, 0
  br i1 %i.dt, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.du = sub i32 0, %i.ds
  call void (ptr, ptr, i32, ptr, i32, ptr, ...) @error_setg_errno_internal(ptr noundef %spec.select, ptr noundef nonnull @.str, i32 noundef 1347, ptr noundef nonnull @__func__.store_bitmap_data, i32 noundef %i.du, ptr noundef nonnull @.str.45) #13
  br label %bb.al

bb.aj:                                            ; preds = %bb.ah
  %i.dv = load ptr, ptr %i.bs, align 8
  %i.dw = load i32, ptr %i.cd, align 4
  %i.dx = sext i32 %i.dw to i64
  %i.dy = call i32 @bdrv_pwrite(ptr noundef %i.dv, i64 noundef %i.di, i64 noundef %i.dx, ptr noundef %i.cr, i32 noundef 0) #13 ; 2 uses
  %i.dz = icmp slt i32 %i.dy, 0
  br i1 %i.dz, label %bb.ak, label %.preheader.i.i

bb.ak:                                            ; preds = %bb.aj
  %i.ea = sub i32 0, %i.dy
  call void (ptr, ptr, i32, ptr, i32, ptr, ...) @error_setg_errno_internal(ptr noundef %spec.select, ptr noundef nonnull @.str, i32 noundef 1354, ptr noundef nonnull @__func__.store_bitmap_data, i32 noundef %i.ea, ptr noundef nonnull @.str.46, ptr noundef %i.cb) #13
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ai, %bb.ae
  %5 = trunc nuw nsw i64 %i.ci to i32
  %.not13.i.i.i = icmp eq i64 %i.ci, 0
  br i1 %.not13.i.i.i, label %clear_bitmap_table.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.al
  %i.eb = load ptr, ptr %i.d, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 4
  br label %bb.am

bb.am:                                            ; preds = %bb.ao, %.lr.ph.i.i.i
  %.012.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i ], [ %7, %bb.ao ] ; 2 uses
  %6 = sext i32 %.012.i.i.i to i64
  %i.ed = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %6 ; 2 uses
  %i.ee = load i64, ptr %i.ed, align 8
  %i.ef = and i64 %i.ee, 72057594037927424        ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.ef, 0
  br i1 %.not.i.i.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.eg = load i32, ptr %i.ec, align 4
  %i.eh = sext i32 %i.eg to i64
  call void @qcow2_free_clusters(ptr noundef nonnull %0, i64 noundef %i.ef, i64 noundef %i.eh, i32 noundef 1) #13
  store i64 0, ptr %i.ed, align 8
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %7 = add nuw i32 %.012.i.i.i, 1                 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i32 %7, %5
  br i1 %exitcond.not.i.i.i, label %clear_bitmap_table.exit.i.i, label %bb.am, !llvm.loop !21

clear_bitmap_table.exit.i.i:                      ; preds = %bb.ao, %bb.al
  call void @g_free(ptr noundef %i.cr) #13
  call void @g_free(ptr noundef nonnull %i.cn) #13
  br label %store_bitmap.exit.thread

bb.ap:                                            ; preds = %.preheader.i.i
  %i.ei = trunc nuw nsw i64 %i.ci to i32          ; 2 uses
  call void @g_free(ptr noundef %i.cr) #13
  %i.ej = shl nuw nsw i64 %i.ci, 3                ; 5 uses
  %i.ek = call i64 @qcow2_alloc_clusters(ptr noundef nonnull %0, i64 noundef %i.ej) #13 ; 8 uses
  %i.el = icmp slt i64 %i.ek, 0
  br i1 %i.el, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.em = trunc i64 %i.ek to i32                  ; 2 uses
  %i.en = sub i32 0, %i.em
  call void (ptr, ptr, i32, ptr, i32, ptr, ...) @error_setg_errno_internal(ptr noundef %spec.select, ptr noundef nonnull @.str, i32 noundef 1402, ptr noundef nonnull @__func__.store_bitmap, i32 noundef %i.en, ptr noundef nonnull @.str.44, ptr noundef %i.by) #13
  %i.eo = icmp slt i32 %i.em, 0
  br label %bb.au

bb.ar:                                            ; preds = %bb.ap
  %i.ep = call i32 @qcow2_pre_write_overlap_check(ptr noundef nonnull %0, i32 noundef 0, i64 noundef %i.ek, i64 noundef %i.ej, i1 noundef zeroext false) #13 ; 2 uses
  %i.eq = icmp slt i32 %i.ep, 0
  br i1 %i.eq, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.er = sub i32 0, %i.ep
  call void (ptr, ptr, i32, ptr, i32, ptr, ...) @error_setg_errno_internal(ptr noundef %spec.select, ptr noundef nonnull @.str, i32 noundef 1410, ptr noundef nonnull @__func__.store_bitmap, i32 noundef %i.er, ptr noundef nonnull @.str.45) #13
  br label %bb.au

bb.at:                                            ; preds = %bb.ar
  %.not.i45.i = icmp eq i64 %i.ci, 0
  br i1 %.not.i45.i, label %bitmap_table_bswap_be.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.at
  %min.iters.check447 = icmp ult i64 %i.ci, 4
  br i1 %min.iters.check447, label %.lr.ph.i.i.preheader460, label %vector.ph448

vector.ph448:                                     ; preds = %.lr.ph.i.i.preheader
  %n.vec449 = and i64 %i.ci, 268435452            ; 3 uses
  br label %vector.body450

vector.body450:                                   ; preds = %vector.body450, %vector.ph448
  %index451 = phi i64 [ 0, %vector.ph448 ], [ %index.next454, %vector.body450 ] ; 2 uses
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %index451 ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16 ; 2 uses
  %wide.load452 = load <2 x i64>, ptr %i.es, align 8
  %wide.load453 = load <2 x i64>, ptr %i.et, align 8
  %i.eu = call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %wide.load452)
  %i.ev = call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %wide.load453)
  store <2 x i64> %i.eu, ptr %i.es, align 8
  store <2 x i64> %i.ev, ptr %i.et, align 8
  %index.next454 = add nuw i64 %index451, 4       ; 2 uses
  %i.ew = icmp eq i64 %index.next454, %n.vec449
  br i1 %i.ew, label %middle.block455, label %vector.body450, !llvm.loop !23

middle.block455:                                  ; preds = %vector.body450
  %cmp.n456 = icmp eq i64 %i.ci, %n.vec449
  br i1 %cmp.n456, label %bitmap_table_bswap_be.exit.thread.i, label %.lr.ph.i.i.preheader460

.lr.ph.i.i.preheader460:                          ; preds = %.lr.ph.i.i.preheader, %middle.block455
  %.06.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %n.vec449, %middle.block455 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader460, %.lr.ph.i.i
  %.06.i.i = phi i64 [ %i.fa, %.lr.ph.i.i ], [ %.06.i.i.ph, %.lr.ph.i.i.preheader460 ] ; 2 uses
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %.06.i.i ; 2 uses
  %i.ey = load i64, ptr %i.ex, align 8
  %i.ez = call noundef i64 @llvm.bswap.i64(i64 %i.ey)
  store i64 %i.ez, ptr %i.ex, align 8
  %i.fa = add nuw nsw i64 %.06.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.fa, %i.ci
  br i1 %exitcond.not.i.i, label %bitmap_table_bswap_be.exit.thread.i, label %.lr.ph.i.i, !llvm.loop !26

bitmap_table_bswap_be.exit.i:                     ; preds = %bb.at
  %i.fb = load ptr, ptr %i.bs, align 8
  %i.fc = call i32 @bdrv_pwrite(ptr noundef %i.fb, i64 noundef %i.ek, i64 noundef %i.ej, ptr noundef nonnull %i.cn, i32 noundef 0) #13 ; 2 uses
  %i.fd = icmp slt i32 %i.fc, 0
  br i1 %i.fd, label %bitmap_table_bswap_be.exit50.i, label %store_bitmap.exit.thread191

bitmap_table_bswap_be.exit.thread.i:              ; preds = %.lr.ph.i.i, %middle.block455
  %i.fe = load ptr, ptr %i.bs, align 8
  %i.ff = call i32 @bdrv_pwrite(ptr noundef %i.fe, i64 noundef %i.ek, i64 noundef %i.ej, ptr noundef nonnull %i.cn, i32 noundef 0) #13 ; 3 uses
  %i.fg = icmp slt i32 %i.ff, 0
  br i1 %i.fg, label %.lr.ph.i47.i.preheader, label %store_bitmap.exit.thread191

.lr.ph.i47.i.preheader:                           ; preds = %bitmap_table_bswap_be.exit.thread.i
  %min.iters.check = icmp ult i64 %i.ci, 4
  br i1 %min.iters.check, label %.lr.ph.i47.i.preheader459, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i47.i.preheader
  %n.vec = and i64 %i.ci, 268435452               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %index ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.fh, align 8
  %wide.load445 = load <2 x i64>, ptr %i.fi, align 8
  %i.fj = call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %wide.load)
  %i.fk = call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %wide.load445)
  store <2 x i64> %i.fj, ptr %i.fh, align 8
  store <2 x i64> %i.fk, ptr %i.fi, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fl = icmp eq i64 %index.next, %n.vec
  br i1 %i.fl, label %middle.block, label %vector.body, !llvm.loop !27

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ci, %n.vec
  br i1 %cmp.n, label %bitmap_table_bswap_be.exit50.i, label %.lr.ph.i47.i.preheader459

.lr.ph.i47.i.preheader459:                        ; preds = %.lr.ph.i47.i.preheader, %middle.block
  %.06.i48.i.ph = phi i64 [ 0, %.lr.ph.i47.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i47.i

.lr.ph.i47.i:                                     ; preds = %.lr.ph.i47.i.preheader459, %.lr.ph.i47.i
  %.06.i48.i = phi i64 [ %i.fp, %.lr.ph.i47.i ], [ %.06.i48.i.ph, %.lr.ph.i47.i.preheader459 ] ; 2 uses
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %.06.i48.i ; 2 uses
  %i.fn = load i64, ptr %i.fm, align 8
  %i.fo = call noundef i64 @llvm.bswap.i64(i64 %i.fn)
  store i64 %i.fo, ptr %i.fm, align 8
  %i.fp = add nuw nsw i64 %.06.i48.i, 1           ; 2 uses
  %exitcond.not.i49.i = icmp eq i64 %i.fp, %i.ci
  br i1 %exitcond.not.i49.i, label %bitmap_table_bswap_be.exit50.i, label %.lr.ph.i47.i, !llvm.loop !28

bitmap_table_bswap_be.exit50.i:                   ; preds = %.lr.ph.i47.i, %middle.block, %bitmap_table_bswap_be.exit.i
  %i.fq = phi i32 [ %i.fc, %bitmap_table_bswap_be.exit.i ], [ %i.ff, %middle.block ], [ %i.ff, %.lr.ph.i47.i ]
  %i.fr = sub i32 0, %i.fq
  call void (ptr, ptr, i32, ptr, i32, ptr, ...) @error_setg_errno_internal(ptr noundef %spec.select, ptr noundef nonnull @.str, i32 noundef 1419, ptr noundef nonnull @__func__.store_bitmap, i32 noundef %i.fr, ptr noundef nonnull @.str.46, ptr noundef %i.by) #13
  br label %bb.au

store_bitmap.exit.thread191:                      ; preds = %bitmap_table_bswap_be.exit.i, %bitmap_table_bswap_be.exit.thread.i
  call void @g_free(ptr noundef nonnull %i.cn) #13
  store i64 %i.ek, ptr %.1135245, align 8
  %i.fs = getelementptr inbounds nuw i8, ptr %.1135245, i64 8
  store i32 %i.ei, ptr %i.fs, align 8
  br label %bb.az

bb.au:                                            ; preds = %bitmap_table_bswap_be.exit50.i, %bb.as, %bb.aq
  %.038.i = phi i1 [ %i.eo, %bb.aq ], [ true, %bb.as ], [ true, %bitmap_table_bswap_be.exit50.i ]
  %.not13.i.i = icmp eq i64 %i.ci, 0
  br i1 %.not13.i.i, label %clear_bitmap_table.exit.i, label %.lr.ph.i51.i

.lr.ph.i51.i:                                     ; preds = %bb.au
  %i.ft = load ptr, ptr %i.d, align 8
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 4
  br label %bb.av

bb.av:                                            ; preds = %bb.ax, %.lr.ph.i51.i
  %.012.i.i = phi i32 [ 0, %.lr.ph.i51.i ], [ %9, %bb.ax ] ; 2 uses
  %8 = sext i32 %.012.i.i to i64
  %i.fv = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %8 ; 2 uses
  %i.fw = load i64, ptr %i.fv, align 8
  %i.fx = and i64 %i.fw, 72057594037927424        ; 2 uses
  %.not.i52.i = icmp eq i64 %i.fx, 0
  br i1 %.not.i52.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fy = load i32, ptr %i.fu, align 4
  %i.fz = sext i32 %i.fy to i64
  call void @qcow2_free_clusters(ptr noundef nonnull %0, i64 noundef %i.fx, i64 noundef %i.fz, i32 noundef 1) #13
  store i64 0, ptr %i.fv, align 8
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %9 = add nuw i32 %.012.i.i, 1                   ; 2 uses
  %exitcond.not.i53.i = icmp eq i32 %9, %i.ei
  br i1 %exitcond.not.i53.i, label %clear_bitmap_table.exit.i, label %bb.av, !llvm.loop !21

clear_bitmap_table.exit.i:                        ; preds = %bb.ax, %bb.au
  %i.ga = icmp sgt i64 %i.ek, 0
  br i1 %i.ga, label %bb.ay, label %store_bitmap.exit

bb.ay:                                            ; preds = %clear_bitmap_table.exit.i
  call void @qcow2_free_clusters(ptr noundef nonnull %0, i64 noundef %i.ek, i64 noundef %i.ej, i32 noundef 4) #13
  br label %store_bitmap.exit

store_bitmap.exit:                                ; preds = %clear_bitmap_table.exit.i, %bb.ay
  call void @g_free(ptr noundef nonnull %i.cn) #13
  br i1 %.038.i, label %store_bitmap.exit.thread, label %bb.az

bb.az:                                            ; preds = %store_bitmap.exit.thread191, %store_bitmap.exit, %bb.r, %bb.s
  %i.gb = getelementptr inbounds nuw i8, ptr %.1135245, i64 48
  %.1135 = load ptr, ptr %i.gb, align 8           ; 2 uses
  %.not150 = icmp eq ptr %.1135, null
  br i1 %.not150, label %._crit_edge249, label %bb.r, !llvm.loop !29

._crit_edge249:                                   ; preds = %bb.az, %.preheader193
  %i.gc = call fastcc i32 @update_ext_header_and_dir(ptr noundef nonnull %0, ptr noundef nonnull %.0137) ; 2 uses
  %i.gd = icmp slt i32 %i.gc, 0
  br i1 %i.gd, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %._crit_edge249
  %i.ge = sub i32 0, %i.gc
  call void (ptr, ptr, i32, ptr, i32, ptr, ...) @error_setg_errno_internal(ptr noundef %spec.select, ptr noundef nonnull @.str, i32 noundef 1647, ptr noundef nonnull @__func__.qcow2_store_persistent_dirty_bitmaps, i32 noundef %i.ge, ptr noundef nonnull @.str.9) #13
  br label %store_bitmap.exit.thread

bb.bb:                                            ; preds = %._crit_edge249
  %i.gf = load ptr, ptr %4, align 8               ; 2 uses
  %.not151250 = icmp eq ptr %i.gf, null
  br i1 %.not151250, label %.critedge, label %.lr.ph253

.lr.ph253:                                        ; preds = %bb.bb, %.lr.ph253
  %.0132251 = phi ptr [ %i.gh, %.lr.ph253 ], [ %i.gf, %bb.bb ] ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.0132251, i64 16
  %i.gh = load ptr, ptr %i.gg, align 8            ; 2 uses
  call fastcc void @free_bitmap_clusters(ptr noundef nonnull %0, ptr noundef %.0132251)
  call void @g_free(ptr noundef nonnull %.0132251) #13
  %.not151 = icmp eq ptr %i.gh, null
  br i1 %.not151, label %.critedge, label %.lr.ph253, !llvm.loop !30

.critedge:                                        ; preds = %.lr.ph253, %bb.d, %bb.bb, %._crit_edge
  %.pre308 = load ptr, ptr %.0137, align 8        ; 3 uses
  br i1 %1, label %.preheader, label %.preheader.i

.preheader:                                       ; preds = %.critedge
  %.not152255 = icmp eq ptr %.pre308, null
  br i1 %.not152255, label %.sink.split, label %.lr.ph257

.lr.ph257:                                        ; preds = %.preheader, %bb.bd
  %.2136256 = phi ptr [ %.2136, %bb.bd ], [ %.pre308, %.preheader ] ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.2136256, i64 40
  %i.gj = load ptr, ptr %i.gi, align 8            ; 2 uses
  %i.gk = icmp eq ptr %i.gj, null
  br i1 %i.gk, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %.lr.ph257
  call void @bdrv_release_dirty_bitmap(ptr noundef nonnull %i.gj) #13
  br label %bb.bd

bb.bd:                                            ; preds = %.lr.ph257, %bb.bc
  %i.gl = getelementptr inbounds nuw i8, ptr %.2136256, i64 48
  %.2136 = load ptr, ptr %i.gl, align 8           ; 2 uses
  %.not152 = icmp eq ptr %.2136, null
  br i1 %.not152, label %.preheader.i.loopexit, label %.lr.ph257, !llvm.loop !31

.preheader.i.loopexit:                            ; preds = %bb.bd
  %.pre = load ptr, ptr %.0137, align 8
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.loopexit, %.critedge
  %i.gm = phi ptr [ %.pre, %.preheader.i.loopexit ], [ %.pre308, %.critedge ] ; 2 uses
  %.not10.i = icmp eq ptr %i.gm, null
  br i1 %.not10.i, label %.sink.split, label %.lr.ph.i171

.lr.ph.i171:                                      ; preds = %.preheader.i
  %i.gn = getelementptr inbounds nuw i8, ptr %.0137, i64 8
  br label %bb.be

bb.be:                                            ; preds = %bitmap_free.exit.i, %.lr.ph.i171
  %i.go = phi ptr [ %i.gm, %.lr.ph.i171 ], [ %i.gu, %bitmap_free.exit.i ] ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 48 ; 2 uses
  %i.gq = load ptr, ptr %i.gp, align 8            ; 2 uses
  store ptr %i.gq, ptr %.0137, align 8
  %i.gr = icmp eq ptr %i.gq, null
  br i1 %i.gr, label %bb.bf, label %bitmap_free.exit.i

bb.bf:                                            ; preds = %bb.be
  store ptr %.0137, ptr %i.gn, align 8
  br label %bitmap_free.exit.i

bitmap_free.exit.i:                               ; preds = %bb.bf, %bb.be
  store ptr null, ptr %i.gp, align 8
  %i.gs = getelementptr inbounds nuw i8, ptr %i.go, i64 32
  %i.gt = load ptr, ptr %i.gs, align 8
  call void @g_free(ptr noundef %i.gt) #13
  call void @g_free(ptr noundef nonnull %i.go) #13
  %i.gu = load ptr, ptr %.0137, align 8           ; 2 uses
  %.not.i172 = icmp eq ptr %i.gu, null
  br i1 %.not.i172, label %.sink.split, label %bb.be, !llvm.loop !10

store_bitmap.exit.thread:                         ; preds = %store_bitmap.exit, %clear_bitmap_table.exit.i.i, %bb.y, %bb.w, %bb.j, %bb.m, %bb.o, %bb.p, %bb.ba, %can_write.exit.thread
  %.3258 = load ptr, ptr %.0137, align 8          ; 2 uses
  %.not155259 = icmp eq ptr %.3258, null
  br i1 %.not155259, label %._crit_edge262, label %.lr.ph261

.lr.ph261:                                        ; preds = %store_bitmap.exit.thread, %bb.bj
  %.3260 = phi ptr [ %.3, %bb.bj ], [ %.3258, %store_bitmap.exit.thread ] ; 4 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.3260, i64 40
  %i.gw = load ptr, ptr %i.gv, align 8            ; 2 uses
  %i.gx = icmp eq ptr %i.gw, null
  br i1 %i.gx, label %bb.bj, label %bb.bg

bb.bg:                                            ; preds = %.lr.ph261
  %i.gy = load i64, ptr %.3260, align 8
  %i.gz = icmp eq i64 %i.gy, 0
  br i1 %i.gz, label %bb.bj, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ha = call zeroext i1 @bdrv_dirty_bitmap_readonly(ptr noundef nonnull %i.gw) #13
  br i1 %i.ha, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call fastcc void @free_bitmap_clusters(ptr noundef nonnull %0, ptr noundef %.3260)
  br label %bb.bj

bb.bj:                                            ; preds = %.lr.ph261, %bb.bg, %bb.bh, %bb.bi
  %i.hb = getelementptr inbounds nuw i8, ptr %.3260, i64 48
  %.3 = load ptr, ptr %i.hb, align 8              ; 2 uses
  %.not155 = icmp eq ptr %.3, null
  br i1 %.not155, label %._crit_edge262, label %.lr.ph261, !llvm.loop !32

._crit_edge262:                                   ; preds = %bb.bj, %store_bitmap.exit.thread
  %i.hc = load ptr, ptr %4, align 8               ; 2 uses
  %.not156263 = icmp eq ptr %i.hc, null
  br i1 %.not156263, label %.preheader.i173, label %.lr.ph266

.lr.ph266:                                        ; preds = %._crit_edge262, %.lr.ph266
  %.1133264 = phi ptr [ %i.he, %.lr.ph266 ], [ %i.hc, %._crit_edge262 ] ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %.1133264, i64 16
  %i.he = load ptr, ptr %i.hd, align 8            ; 2 uses
  call void @g_free(ptr noundef nonnull %.1133264) #13
  %.not156 = icmp eq ptr %i.he, null
  br i1 %.not156, label %.preheader.i173, label %.lr.ph266, !llvm.loop !33

.preheader.i173:                                  ; preds = %.lr.ph266, %._crit_edge262
  %i.hf = load ptr, ptr %.0137, align 8           ; 2 uses
  %.not10.i174 = icmp eq ptr %i.hf, null
  br i1 %.not10.i174, label %.sink.split, label %.lr.ph.i175

.lr.ph.i175:                                      ; preds = %.preheader.i173, %bitmap_free.exit.i176
  %i.hg = phi ptr [ %i.hm, %bitmap_free.exit.i176 ], [ %i.hf, %.preheader.i173 ] ; 3 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 48 ; 2 uses
  %i.hi = load ptr, ptr %i.hh, align 8            ; 2 uses
  store ptr %i.hi, ptr %.0137, align 8
  %i.hj = icmp eq ptr %i.hi, null
  br i1 %i.hj, label %bb.bk, label %bitmap_free.exit.i176

bb.bk:                                            ; preds = %.lr.ph.i175
  store ptr %.0137, ptr %i.s, align 8
  br label %bitmap_free.exit.i176

bitmap_free.exit.i176:                            ; preds = %bb.bk, %.lr.ph.i175
  store ptr null, ptr %i.hh, align 8
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hg, i64 32
  %i.hl = load ptr, ptr %i.hk, align 8
  call void @g_free(ptr noundef %i.hl) #13
  call void @g_free(ptr noundef nonnull %i.hg) #13
  %i.hm = load ptr, ptr %.0137, align 8           ; 2 uses
  %.not.i177 = icmp eq ptr %i.hm, null
  br i1 %.not.i177, label %.sink.split, label %.lr.ph.i175, !llvm.loop !10

.sink.split:                                      ; preds = %bitmap_free.exit.i176, %bitmap_free.exit.i, %.preheader.i173, %.preheader.i, %.preheader
  %.0.ph = phi i1 [ true, %.preheader.i ], [ false, %.preheader.i173 ], [ true, %.preheader ], [ true, %bitmap_free.exit.i ], [ false, %bitmap_free.exit.i176 ]
  call void @g_free(ptr noundef nonnull %.0137) #13
  br label %bb.bl

bb.bl:                                            ; preds = %.sink.split, %bb.c
  %.0 = phi i1 [ false, %bb.c ], [ %.0.ph, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %.val = load ptr, ptr %3, align 8
  %.val157 = load ptr, ptr %i.a, align 8
  call void @error_propagate(ptr noundef %.val157, ptr noundef %.val) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  ret i1 %.0
}

declare ptr @bdrv_dirty_bitmap_first(ptr noundef) local_unnamed_addr #2

declare ptr @bdrv_dirty_bitmap_name(ptr noundef) local_unnamed_addr #2

declare i32 @bdrv_dirty_bitmap_granularity(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @bdrv_dirty_bitmap_get_persistence(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @check_constraints_on_bitmap(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 {
end_hunk_0
