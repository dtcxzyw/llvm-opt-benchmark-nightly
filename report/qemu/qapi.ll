Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/qapi?download=true
inline.NumInlined: 52
inline.NumDeleted: 27
begin_hunk_0_@bdrv_block_device_info:bb.a
  br i1 %.not.i.i, label %bdrv_cow_bs.exit.thread, label %bdrv_cow_bs.exit

bdrv_cow_bs.exit:                                 ; preds = %._crit_edge
  %i.bc = load ptr, ptr %i.bb, align 8            ; 2 uses
  %.not142 = icmp eq ptr %i.bc, null
  br i1 %.not142, label %bdrv_cow_bs.exit.thread, label %g_strdup_inline.exit150

g_strdup_inline.exit150:                          ; preds = %bdrv_cow_bs.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 49
  %i.be = tail call noalias ptr @g_strdup(ptr noundef nonnull %i.bd) #9
  %i.bf = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr %i.be, ptr %i.bf, align 8
  br label %bdrv_cow_bs.exit.thread

bdrv_cow_bs.exit.thread:                          ; preds = %._crit_edge, %g_strdup_inline.exit150, %bdrv_cow_bs.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 16944
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bdrv_cow_bs.exit.thread
  %i.bj = getelementptr inbounds nuw i8, ptr %i.g, i64 352
  store i8 1, ptr %i.bj, align 8
  %i.bk = tail call ptr @bdrv_query_dirty_bitmaps(ptr noundef nonnull %1) #9
  %i.bl = getelementptr inbounds nuw i8, ptr %i.g, i64 360
  store ptr %i.bk, ptr %i.bl, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bdrv_cow_bs.exit.thread
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 16864
  %i.bn = load i32, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.g, i64 60
  store i32 %i.bn, ptr %i.bo, align 4
  br i1 %i.z, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bp = tail call ptr @blk_get_public(ptr noundef nonnull %0) #9
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 48
  %i.br = load ptr, ptr %i.bq, align 8
  %.not143 = icmp eq ptr %i.br, null
  br i1 %.not143, label %bb.g, label %g_strdup_inline.exit

g_strdup_inline.exit:                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %5, i8 0, i64 248, i1 false), !annotation !10
  %i.bs = tail call ptr @blk_get_public(ptr noundef nonnull %0) #9 ; 2 uses
  call void @throttle_group_get_config(ptr noundef %i.bs, ptr noundef nonnull %5) #9
  %i.bt = load i64, ptr %5, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  store i64 %i.bt, ptr %i.bu, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.bw = load i64, ptr %i.bv, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  store i64 %i.bw, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.bz = load i64, ptr %i.by, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  store i64 %i.bz, ptr %i.ca, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 120
  %i.cc = load i64, ptr %i.cb, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  store i64 %i.cc, ptr %i.cd, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %5, i64 160
  %i.cf = load i64, ptr %i.ce, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  store i64 %i.cf, ptr %i.cg, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %5, i64 200
  %i.ci = load i64, ptr %i.ch, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  store i64 %i.ci, ptr %i.cj, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cl = load i64, ptr %i.ck, align 8            ; 2 uses
  %i.cm = icmp ne i64 %i.cl, 0
  %i.cn = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  %i.co = zext i1 %i.cm to i8                     ; 2 uses
  store i8 %i.co, ptr %i.cn, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  store i64 %i.cl, ptr %i.cp, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.cr = load i64, ptr %i.cq, align 8            ; 2 uses
  %i.cs = icmp ne i64 %i.cr, 0
  %i.ct = getelementptr inbounds nuw i8, ptr %i.g, i64 136
  %i.cu = zext i1 %i.cs to i8                     ; 2 uses
  store i8 %i.cu, ptr %i.ct, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.g, i64 144
  store i64 %i.cr, ptr %i.cv, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.cx = load i64, ptr %i.cw, align 8            ; 2 uses
  %i.cy = icmp ne i64 %i.cx, 0
  %i.cz = getelementptr inbounds nuw i8, ptr %i.g, i64 152
  %i.da = zext i1 %i.cy to i8                     ; 2 uses
  store i8 %i.da, ptr %i.cz, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.g, i64 160
  store i64 %i.cx, ptr %i.db, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %5, i64 128
  %i.dd = load i64, ptr %i.dc, align 8            ; 2 uses
  %i.de = icmp ne i64 %i.dd, 0
  %i.df = getelementptr inbounds nuw i8, ptr %i.g, i64 168
  %i.dg = zext i1 %i.de to i8                     ; 2 uses
  store i8 %i.dg, ptr %i.df, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.g, i64 176
  store i64 %i.dd, ptr %i.dh, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %5, i64 168
  %i.dj = load i64, ptr %i.di, align 8            ; 2 uses
  %i.dk = icmp ne i64 %i.dj, 0
  %i.dl = getelementptr inbounds nuw i8, ptr %i.g, i64 184
  %i.dm = zext i1 %i.dk to i8                     ; 2 uses
  store i8 %i.dm, ptr %i.dl, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.g, i64 192
  store i64 %i.dj, ptr %i.dn, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %5, i64 208
  %i.dp = load i64, ptr %i.do, align 8            ; 2 uses
  %i.dq = icmp ne i64 %i.dp, 0
  %i.dr = getelementptr inbounds nuw i8, ptr %i.g, i64 200
  %i.ds = zext i1 %i.dq to i8                     ; 2 uses
  store i8 %i.ds, ptr %i.dr, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.g, i64 208
  store i64 %i.dp, ptr %i.dt, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.g, i64 216
  store i8 %i.co, ptr %i.du, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.dw = load i64, ptr %i.dv, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.g, i64 224
  store i64 %i.dw, ptr %i.dx, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.g, i64 232
  store i8 %i.cu, ptr %i.dy, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.ea = load i64, ptr %i.dz, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.g, i64 240
  store i64 %i.ea, ptr %i.eb, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.g, i64 248
  store i8 %i.da, ptr %i.ec, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.ee = load i64, ptr %i.ed, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.g, i64 256
  store i64 %i.ee, ptr %i.ef, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.g, i64 264
  store i8 %i.dg, ptr %i.eg, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %5, i64 152
  %i.ei = load i64, ptr %i.eh, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.g, i64 272
  store i64 %i.ei, ptr %i.ej, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.g, i64 280
  store i8 %i.dm, ptr %i.ek, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %5, i64 192
  %i.em = load i64, ptr %i.el, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.g, i64 288
  store i64 %i.em, ptr %i.en, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.g, i64 296
  store i8 %i.ds, ptr %i.eo, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %5, i64 232
  %i.eq = load i64, ptr %i.ep, align 8
  %i.er = getelementptr inbounds nuw i8, ptr %i.g, i64 304
  store i64 %i.eq, ptr %i.er, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %5, i64 240
  %i.et = load i64, ptr %i.es, align 8            ; 2 uses
  %i.eu = icmp ne i64 %i.et, 0
  %i.ev = getelementptr inbounds nuw i8, ptr %i.g, i64 312
  %i.ew = zext i1 %i.eu to i8
  store i8 %i.ew, ptr %i.ev, align 8
  %i.ex = getelementptr inbounds nuw i8, ptr %i.g, i64 320
  store i64 %i.et, ptr %i.ex, align 8
  %i.ey = call ptr @throttle_group_get_name(ptr noundef %i.bs) #9
  %i.ez = call noalias ptr @g_strdup(ptr noundef %i.ey) #9
  %i.fa = getelementptr inbounds nuw i8, ptr %i.g, i64 328
  store ptr %i.ez, ptr %i.fa, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  br label %bb.g

bb.g:                                             ; preds = %g_strdup_inline.exit, %bb.f, %bb.e
  %i.fb = call i64 @bdrv_write_threshold_get(ptr noundef nonnull %1) #9
  %i.fc = getelementptr inbounds nuw i8, ptr %i.g, i64 344
  store i64 %i.fb, ptr %i.fc, align 8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.g, i64 112 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 3 uses
  store i64 0, ptr %i.fe, align 8
  call void @bdrv_query_image_info(ptr noundef nonnull %1, ptr noundef nonnull %i.fd, i1 noundef zeroext %2, i1 noundef zeroext %i.z, ptr noundef %spec.select)
  %i.ff = load ptr, ptr %spec.select, align 8
  %.not144 = icmp eq ptr %i.ff, null
  br i1 %.not144, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @qapi_free_BlockDeviceInfo(ptr noundef nonnull %i.g) #9
  br label %.loopexit

bb.i:                                             ; preds = %bb.g
  %i.fg = load ptr, ptr %i.fd, align 8
  %.0134.in182 = getelementptr inbounds nuw i8, ptr %i.fg, i64 120
  %.0134183 = load ptr, ptr %.0134.in182, align 8 ; 2 uses
  %.not145184 = icmp eq ptr %.0134183, null
  br i1 %.not145184, label %.loopexit, label %.lr.ph187

.lr.ph187:                                        ; preds = %bb.i
  %.promoted = load i64, ptr %i.fe, align 8
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph187, %bb.j
  %i.fh = phi i64 [ %.promoted, %.lr.ph187 ], [ %i.fi, %bb.j ]
  %.0134185 = phi ptr [ %.0134183, %.lr.ph187 ], [ %.0134, %bb.j ]
  %i.fi = add i64 %i.fh, 1                        ; 2 uses
  %.0134.in = getelementptr inbounds nuw i8, ptr %.0134185, i64 120
  %.0134 = load ptr, ptr %.0134.in, align 8       ; 2 uses
  %.not145 = icmp eq ptr %.0134, null
  br i1 %.not145, label %..loopexit_crit_edge, label %bb.j, !llvm.loop !12

..loopexit_crit_edge:                             ; preds = %bb.j
  store i64 %i.fi, ptr %i.fe, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.i, %..loopexit_crit_edge, %bb.h, %bb.b
  %.0 = phi ptr [ null, %bb.h ], [ null, %bb.b ], [ %i.g, %..loopexit_crit_edge ], [ %i.g, %bb.i ]
  %.val = load ptr, ptr %4, align 8
  %.val176 = load ptr, ptr %i.a, align 8
  call void @error_propagate(ptr noundef %.val176, ptr noundef %.val) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare void @error_setg_internal(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @bdrv_refresh_filename(ptr noundef) local_unnamed_addr #3

; Function Attrs: allocsize(0)
declare noalias ptr @g_malloc0(i64 noundef) local_unnamed_addr #4

declare zeroext i1 @bdrv_is_read_only(ptr noundef) local_unnamed_addr #3

declare zeroext i1 @bdrv_is_inactive(ptr noundef) local_unnamed_addr #3

; Function Attrs: allocsize(0)
declare noalias ptr @g_malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare zeroext i1 @blk_enable_write_cache(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare ptr @bdrv_query_dirty_bitmaps(ptr noundef) local_unnamed_addr #3

declare ptr @blk_get_public(ptr noundef) local_unnamed_addr #3

declare void @throttle_group_get_config(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @throttle_group_get_name(ptr noundef) local_unnamed_addr #3

declare i64 @bdrv_write_threshold_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @bdrv_query_image_info(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, i1 noundef zeroext %2, i1 noundef zeroext %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.ErrorPropagator, align 8    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 0, ptr %5, align 8
  store ptr %4, ptr %i.a, align 8
  %i.b = icmp eq ptr %4, null
  %i.c = icmp eq ptr %4, @error_fatal
  %or.cond = or i1 %i.b, %i.c
  %spec.select = select i1 %or.cond, ptr %5, ptr %4 ; 4 uses
  %i.d = tail call noalias dereferenceable_or_null(128) ptr @g_malloc0(i64 noundef 128) #10 ; 4 uses
  call fastcc void @bdrv_do_query_node_info(ptr noundef %0, ptr noundef %i.d, i1 noundef zeroext true, ptr noundef %spec.select)
  %i.e = load ptr, ptr %spec.select, align 8
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  br i1 %2, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = call ptr @bdrv_filter_or_cow_child(ptr noundef %0) #9 ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %bdrv_filter_or_cow_bs.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %i.f, align 8
  br label %bdrv_filter_or_cow_bs.exit

bdrv_filter_or_cow_bs.exit:                       ; preds = %bb.c, %bb.d
  %i.h = phi ptr [ %i.g, %bb.d ], [ null, %bb.c ] ; 2 uses
  br i1 %3, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bdrv_filter_or_cow_bs.exit
  %i.i = call ptr @bdrv_skip_implicit_filters(ptr noundef %i.h) #9
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bdrv_filter_or_cow_bs.exit
  %.034 = phi ptr [ %i.i, %bb.e ], [ %i.h, %bdrv_filter_or_cow_bs.exit ] ; 2 uses
  %.not38 = icmp eq ptr %.034, null
  br i1 %.not38, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  call void @bdrv_query_image_info(ptr noundef nonnull %.034, ptr noundef nonnull %i.j, i1 noundef zeroext false, i1 noundef zeroext %3, ptr noundef nonnull %spec.select)
  %i.k = load ptr, ptr %spec.select, align 8
  %.not39 = icmp eq ptr %i.k, null
  br i1 %.not39, label %.thread, label %bb.h

.thread:                                          ; preds = %bb.g, %bb.f, %bb.b
  store ptr %i.d, ptr %1, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.a, %bb.g
  call void @qapi_free_ImageInfo(ptr noundef %i.d) #9
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.thread
  %.val = load ptr, ptr %5, align 8
  %.val41 = load ptr, ptr %i.a, align 8
  call void @error_propagate(ptr noundef %.val41, ptr noundef %.val) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  ret void
}

declare void @qapi_free_BlockDeviceInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 -2147483648, 1) i32 @bdrv_query_snapshot_info_list(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store ptr null, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr null, ptr %i.b, align 8
  %i.c = call i32 @bdrv_snapshot_list(ptr noundef %0, ptr noundef nonnull %i.a) #9 ; 6 uses
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %i.c to i64
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.e = call ptr @bdrv_get_device_name(ptr noundef %0) #9 ; 3 uses
  switch i32 %i.c, label %bb.e [
    i32 -123, label %bb.c
    i32 -95, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %2, ptr noundef nonnull @.str, i32 noundef 198, ptr noundef nonnull @__func__.bdrv_query_snapshot_info_list, ptr noundef nonnull @.str.2, ptr noundef %i.e) #9
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %2, ptr noundef nonnull @.str, i32 noundef 203, ptr noundef nonnull @__func__.bdrv_query_snapshot_info_list, ptr noundef nonnull @.str.3, ptr noundef %i.e) #9
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.f = sub i32 0, %i.c
  call void (ptr, ptr, i32, ptr, i32, ptr, ...) @error_setg_errno_internal(ptr noundef %2, ptr noundef nonnull @.str, i32 noundef 207, ptr noundef nonnull @__func__.bdrv_query_snapshot_info_list, i32 noundef %i.f, ptr noundef nonnull @.str.4, ptr noundef %i.e) #9
  br label %bb.f

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 4 uses
  %.05157 = phi ptr [ %i.b, %.lr.ph.preheader ], [ %i.ar, %.lr.ph ] ; 2 uses
  %i.g = call noalias dereferenceable_or_null(72) ptr @g_malloc0(i64 noundef 72) #10 ; 10 uses
  %i.h = load ptr, ptr %i.a, align 8
  %i.i = getelementptr inbounds nuw [416 x i8], ptr %i.h, i64 %indvars.iv
  %i.j = call noalias ptr @g_strdup(ptr noundef %i.i) #9
  store ptr %i.j, ptr %i.g, align 8
  %i.k = load ptr, ptr %i.a, align 8
  %i.l = getelementptr inbounds nuw [416 x i8], ptr %i.k, i64 %indvars.iv
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 128
  %i.n = call noalias ptr @g_strdup(ptr noundef nonnull %i.m) #9
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.n, ptr %i.o, align 8
  %i.p = load ptr, ptr %i.a, align 8
  %i.q = getelementptr inbounds nuw [416 x i8], ptr %i.p, i64 %indvars.iv ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 384
  %i.s = load i64, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %i.s, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 392
  %i.v = load i32, ptr %i.u, align 8
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 %i.w, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 396
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store i64 %i.aa, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 400 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = udiv i64 %i.ad, 1000000000
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store i64 %i.ae, ptr %i.af, align 8
  %i.ag = load i64, ptr %i.ac, align 8
  %i.ah = urem i64 %i.ag, 1000000000
  %i.ai = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store i64 %i.ah, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.q, i64 408
  %i.ak = load i64, ptr %i.aj, align 8            ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  store i64 %i.ak, ptr %i.al, align 8
  %i.am = icmp ne i64 %i.ak, -1
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.ao = zext i1 %i.am to i8
end_hunk_0
