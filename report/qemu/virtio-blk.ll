Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/virtio-blk?download=true
inline.NumInlined: 209
inline.NumDeleted: 70
begin_hunk_0_@virtio_blk_handle_request:bb.a
    i32 32, label %bb.t
  ]

bb.r:                                             ; preds = %bb.q
  %i.cg = and i32 %.0.i134, 1
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 260
  %i.ci = load i8, ptr %i.ch, align 4, !range !11, !noundef !12
  %i.cj = zext nneg i8 %i.ci to i32
  %.not131 = icmp eq i32 %i.cg, %i.cj
  br i1 %.not131, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ck = getelementptr inbounds nuw i8, ptr %i.n, i64 736
  %i.cl = load i32, ptr %i.ck, align 8
  %.not132 = icmp eq i32 %i.cl, 0
  br i1 %.not132, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.q, %bb.s, %bb.r
  call fastcc void @virtio_blk_submit_multireq(ptr noundef nonnull %i.n, ptr noundef %1)
  %.pr.pre = load i32, ptr %i.ce, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.pr = phi i32 [ %.pr.pre, %bb.t ], [ %i.cf, %bb.s ] ; 2 uses
  %i.cm = icmp ult i32 %.pr, 32
  br i1 %i.cm, label %.thread144, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @__assert_fail(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 905, ptr noundef nonnull @__PRETTY_FUNCTION__.virtio_blk_handle_request) #15
  unreachable

.thread144:                                       ; preds = %bb.u, %bb.q
  %i.cn = phi i32 [ %.pr, %bb.u ], [ %i.cf, %bb.q ] ; 2 uses
  %i.co = add nuw nsw i32 %i.cn, 1
  store i32 %i.co, ptr %i.ce, align 8
  %i.cp = zext nneg i32 %i.cn to i64
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.cp
  store ptr %0, ptr %i.cq, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 260
  store i8 %i.be, ptr %i.cr, align 4
  br label %bb.bc

bb.w:                                             ; preds = %bb.p
  call void @virtio_blk_req_complete(ptr noundef nonnull %0, i8 noundef zeroext 1)
  %i.cs = getelementptr inbounds nuw i8, ptr %i.n, i64 552
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = call ptr @blk_get_stats(ptr noundef %i.ct) #14
  %i.cv = select i1 %i.bc, i32 2, i32 1
  call void @block_acct_invalid(ptr noundef %i.cu, i32 noundef %i.cv) #14
  call void @g_free(ptr noundef nonnull %0) #14
  br label %bb.bc

bb.x:                                             ; preds = %virtio_ldl_p.exit
  call fastcc void @virtio_blk_handle_flush(ptr noundef %0, ptr noundef %1)
  br label %bb.bc

bb.y:                                             ; preds = %virtio_ldl_p.exit
  %i.cw = load i32, ptr %i.c, align 4
  call fastcc void @virtio_blk_handle_zone_report(ptr noundef %0, ptr noundef nonnull %i.f, i32 noundef %i.cw)
  br label %bb.bc

bb.z:                                             ; preds = %virtio_ldl_p.exit
  call fastcc void @virtio_blk_handle_zone_mgmt(ptr noundef %0, i32 noundef 0)
  br label %bb.bc

bb.aa:                                            ; preds = %virtio_ldl_p.exit
  call fastcc void @virtio_blk_handle_zone_mgmt(ptr noundef %0, i32 noundef 1)
  br label %bb.bc

bb.ab:                                            ; preds = %virtio_ldl_p.exit
  call fastcc void @virtio_blk_handle_zone_mgmt(ptr noundef %0, i32 noundef 2)
  br label %bb.bc

bb.ac:                                            ; preds = %virtio_ldl_p.exit
  call fastcc void @virtio_blk_handle_zone_mgmt(ptr noundef %0, i32 noundef 3)
  br label %bb.bc

bb.ad:                                            ; preds = %virtio_ldl_p.exit
  call fastcc void @virtio_blk_handle_zone_mgmt(ptr noundef %0, i32 noundef 3)
  br label %bb.bc

bb.ae:                                            ; preds = %virtio_ldl_p.exit
  call fastcc void @virtio_blk_handle_scsi(ptr noundef %0)
  br label %bb.bc

iov_from_buf.exit:                                ; preds = %virtio_ldl_p.exit
  %i.cx = getelementptr inbounds nuw i8, ptr %i.n, i64 728
  %i.cy = load ptr, ptr %i.cx, align 8            ; 2 uses
  %.not129 = icmp eq ptr %i.cy, null
  %spec.select = select i1 %.not129, ptr @.str.8, ptr %i.cy ; 2 uses
  %i.cz = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %spec.select) #16
  %i.da = load i32, ptr %i.c, align 4
  %i.db = call i64 @iov_size(ptr noundef nonnull %i.f, i32 noundef %i.da) #14
  %i.dc = load i32, ptr %i.c, align 4
  %i.dd = add i64 %i.cz, 1
  %i.de = call i64 @llvm.umin.i64(i64 %i.db, i64 %i.dd)
  %i.df = call i64 @llvm.umin.i64(i64 %i.de, i64 20)
  %i.dg = call i64 @iov_from_buf_full(ptr noundef nonnull %i.f, i32 noundef %i.dc, i64 noundef 0, ptr noundef nonnull %spec.select, i64 noundef %i.df) #14 ; 0 uses
  call void @virtio_blk_req_complete(ptr noundef nonnull %0, i8 noundef zeroext 0)
  call void @g_free(ptr noundef nonnull %0) #14
  br label %bb.bc

bb.af:                                            ; preds = %virtio_ldl_p.exit
  %i.dh = load ptr, ptr %i.b, align 8
  %i.di = load i32, ptr %i.d, align 4
  %i.dj = zext i32 %i.di to i64
  %i.dk = load i32, ptr %i.c, align 4
  call fastcc void @virtio_blk_handle_zone_append(ptr noundef %0, ptr noundef %i.dh, ptr noundef nonnull %i.f, i64 noundef %i.dj, i32 noundef %i.dk)
  br label %bb.bc

bb.ag:                                            ; preds = %virtio_ldl_p.exit, %virtio_ldl_p.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !annotation !13
  %i.dl = load ptr, ptr %i.b, align 8
  %i.dm = load i32, ptr %i.d, align 4
  %i.dn = call i64 @iov_size(ptr noundef %i.dl, i32 noundef %i.dm) #14
  %i.do = and i32 %.0.i134, 2147483647
  %i.dp = icmp eq i32 %i.do, 13                   ; 3 uses
  %i.dq = and i32 %.0.i134, 1
  %.not126 = icmp eq i32 %i.dq, 0
  %i.dr = icmp ugt i64 %i.dn, 16
  %i.ds = select i1 %.not126, i1 true, i1 %i.dr, !prof !17
  br i1 %i.ds, label %bb.ah, label %bb.ai, !prof !17

bb.ah:                                            ; preds = %bb.ag
  call void @virtio_blk_req_complete(ptr noundef nonnull %0, i8 noundef zeroext 2)
  call void @g_free(ptr noundef nonnull %0) #14
  br label %virtio_blk_handle_discard_write_zeroes.exit

bb.ai:                                            ; preds = %bb.ag
  %i.dt = load ptr, ptr %i.b, align 8             ; 3 uses
  %i.du = load i32, ptr %i.d, align 4             ; 2 uses
  %.not.i137 = icmp eq i32 %i.du, 0
  br i1 %.not.i137, label %iov_to_buf.exit139, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dw = load i64, ptr %i.dv, align 8
  %i.dx = icmp ugt i64 %i.dw, 15
  br i1 %i.dx, label %iov_to_buf.exit139.thread, label %iov_to_buf.exit139

iov_to_buf.exit139.thread:                        ; preds = %bb.aj
  %i.dy = load ptr, ptr %i.dt, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 1 dereferenceable(16) %i.dy, i64 noundef 16, i1 noundef false) #14
  br label %bb.al

iov_to_buf.exit139:                               ; preds = %bb.ai, %bb.aj
  %i.dz = call i64 @iov_to_buf_full(ptr noundef %i.dt, i32 noundef %i.du, i64 noundef 0, ptr noundef nonnull %2, i64 noundef 16) #14
  %.not127 = icmp eq i64 %i.dz, 16
  br i1 %.not127, label %bb.al, label %bb.ak, !prof !18

bb.ak:                                            ; preds = %iov_to_buf.exit139
  call void @iov_discard_undo(ptr noundef nonnull %i.au) #14
  call void @iov_discard_undo(ptr noundef nonnull %i.z) #14
  call void (ptr, ptr, ...) @virtio_error(ptr noundef nonnull %i.o, ptr noundef nonnull @.str.9) #14
  br label %virtio_blk_handle_discard_write_zeroes.exit

bb.al:                                            ; preds = %iov_to_buf.exit139.thread, %iov_to_buf.exit139
  %i.ea = load ptr, ptr %i.m, align 8             ; 6 uses
  %i.eb = call ptr @object_dynamic_cast_assert(ptr noundef %i.ea, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 91, ptr noundef nonnull @__func__.VIRTIO_DEVICE) #14 ; 2 uses
  %i.ec = getelementptr i8, ptr %i.eb, i64 184
  %.val.i.i.i = load i64, ptr %i.ec, align 8
  %i.ed = and i64 %.val.i.i.i, 4294967296
  %.not.i.i.i.i = icmp eq i64 %i.ed, 0
  br i1 %.not.i.i.i.i, label %bb.am, label %virtio_vdev_is_big_endian.exit.thread.i50.i

bb.am:                                            ; preds = %bb.al
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 480
  %i.ef = load i8, ptr %i.ee, align 8
  switch i8 %i.ef, label %virtio_vdev_is_big_endian.exit.thread.i50.i [
    i8 0, label %bb.an
    i8 2, label %.thread75.i
  ]

bb.an:                                            ; preds = %bb.am
  call void @__assert_fail(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 622, ptr noundef nonnull @__PRETTY_FUNCTION__.virtio_vdev_is_big_endian) #15
  unreachable

.thread75.i:                                      ; preds = %bb.am
  %.val.i.i141 = load i64, ptr %2, align 8
  %i.eg = call i64 @llvm.bswap.i64(i64 %.val.i.i141)
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val.i47.i = load i32, ptr %i.eh, align 8
  %i.ei = call i32 @llvm.bswap.i32(i32 %.val.i47.i)
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.val.i53.i = load i32, ptr %i.ej, align 4
  %i.ek = call i32 @llvm.bswap.i32(i32 %.val.i53.i)
  br label %virtio_ldl_p.exit54.i

virtio_vdev_is_big_endian.exit.thread.i50.i:      ; preds = %bb.am, %bb.al
  %.val3.i61.i = load i64, ptr %2, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val3.i4572.i = load i32, ptr %i.el, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.val3.i51.i = load i32, ptr %i.em, align 4
  br label %virtio_ldl_p.exit54.i

virtio_ldl_p.exit54.i:                            ; preds = %virtio_vdev_is_big_endian.exit.thread.i50.i, %.thread75.i
  %.0.i4667.i = phi i32 [ %i.ei, %.thread75.i ], [ %.val3.i4572.i, %virtio_vdev_is_big_endian.exit.thread.i50.i ] ; 2 uses
  %.0.i5764.i = phi i64 [ %i.eg, %.thread75.i ], [ %.val3.i61.i, %virtio_vdev_is_big_endian.exit.thread.i50.i ] ; 5 uses
  %.0.i52.i = phi i32 [ %i.ek, %.thread75.i ], [ %.val3.i51.i, %virtio_vdev_is_big_endian.exit.thread.i50.i ] ; 3 uses
  %.in.v.i = select i1 %i.dp, i64 752, i64 748
  %.in.i = getelementptr inbounds nuw i8, ptr %i.ea, i64 %.in.v.i
  %i.en = load i32, ptr %.in.i, align 4
  %i.eo = icmp ugt i32 %.0.i4667.i, %i.en
  br i1 %i.eo, label %bb.aw, label %bb.ao, !prof !17

bb.ao:                                            ; preds = %virtio_ldl_p.exit54.i
  %i.ep = shl i32 %.0.i4667.i, 9                  ; 3 uses
  %i.eq = sext i32 %i.ep to i64                   ; 4 uses
  %i.er = lshr exact i64 %i.eq, 9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.es = icmp slt i32 %i.ep, 0
  br i1 %i.es, label %virtio_blk_sect_range_ok.exit.thread.i, label %bb.ap, !prof !19

bb.ap:                                            ; preds = %bb.ao
  %i.et = getelementptr inbounds nuw i8, ptr %i.ea, i64 760
  %i.eu = load i16, ptr %i.et, align 8
  %i.ev = zext i16 %i.eu to i64
  %i.ew = and i64 %.0.i5764.i, %i.ev
  %.not.i.i = icmp eq i64 %i.ew, 0
  br i1 %.not.i.i, label %bb.aq, label %virtio_blk_sect_range_ok.exit.thread.i, !prof !20

bb.aq:                                            ; preds = %bb.ap
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ea, i64 632
  %i.ey = load i32, ptr %i.ex, align 8
  %i.ez = urem i32 %i.ep, %i.ey
  %.not13.i.i = icmp eq i32 %i.ez, 0
  br i1 %.not13.i.i, label %virtio_blk_sect_range_ok.exit.i, label %virtio_blk_sect_range_ok.exit.thread.i, !prof !20

virtio_blk_sect_range_ok.exit.thread.i:           ; preds = %bb.aq, %bb.ap, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.aw

virtio_blk_sect_range_ok.exit.i:                  ; preds = %bb.aq
  store i64 0, ptr %i.a, align 8, !annotation !13
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ea, i64 552 ; 4 uses
  %i.fb = load ptr, ptr %i.fa, align 8
  call void @blk_get_geometry(ptr noundef %i.fb, ptr noundef nonnull %i.a) #14
  %i.fc = load i64, ptr %i.a, align 8             ; 2 uses
  %i.fd = icmp ule i64 %.0.i5764.i, %i.fc
  %i.fe = sub nuw i64 %i.fc, %.0.i5764.i
  %i.ff = icmp ule i64 %i.er, %i.fe
  %or.cond.not.i.i = select i1 %i.fd, i1 %i.ff, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br i1 %or.cond.not.i.i, label %bb.ar, label %bb.aw, !prof !21

bb.ar:                                            ; preds = %virtio_blk_sect_range_ok.exit.i
  %.not.i140 = icmp ult i32 %.0.i52.i, 2
  br i1 %.not.i140, label %bb.as, label %bb.aw, !prof !9

bb.as:                                            ; preds = %bb.ar
  br i1 %i.dp, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %spec.select.i = shl nuw nsw i32 %.0.i52.i, 2
  %i.fg = load ptr, ptr %i.fa, align 8
  %i.fh = call ptr @blk_get_stats(ptr noundef %i.fg) #14
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 216
  call void @block_acct_start(ptr noundef %i.fh, ptr noundef nonnull %i.fi, i64 noundef %i.eq, i32 noundef 2) #14
  %i.fj = load ptr, ptr %i.fa, align 8
  %i.fk = shl i64 %.0.i5764.i, 9
  %i.fl = call ptr @blk_aio_pwrite_zeroes(ptr noundef %i.fj, i64 noundef %i.fk, i64 noundef %i.eq, i32 noundef %spec.select.i, ptr noundef nonnull @virtio_blk_discard_write_zeroes_complete, ptr noundef nonnull %0) #14 ; 0 uses
  br label %virtio_blk_handle_discard_write_zeroes.exit.thread151

bb.au:                                            ; preds = %bb.as
  %.not40.i = icmp eq i32 %.0.i52.i, 0
  br i1 %.not40.i, label %bb.av, label %bb.ay, !prof !9

bb.av:                                            ; preds = %bb.au
  %i.fm = load ptr, ptr %i.fa, align 8
  %i.fn = shl i64 %.0.i5764.i, 9
  %i.fo = call ptr @blk_aio_pdiscard(ptr noundef %i.fm, i64 noundef %i.fn, i64 noundef %i.eq, ptr noundef nonnull @virtio_blk_discard_write_zeroes_complete, ptr noundef nonnull %0) #14 ; 0 uses
  br label %virtio_blk_handle_discard_write_zeroes.exit.thread151

bb.aw:                                            ; preds = %bb.ar, %virtio_blk_sect_range_ok.exit.i, %virtio_blk_sect_range_ok.exit.thread.i, %virtio_ldl_p.exit54.i
  %.037.i = phi i8 [ 2, %bb.ar ], [ 1, %virtio_ldl_p.exit54.i ], [ 1, %virtio_blk_sect_range_ok.exit.i ], [ 1, %virtio_blk_sect_range_ok.exit.thread.i ] ; 2 uses
  br i1 %i.dp, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ea, i64 552
  %i.fq = load ptr, ptr %i.fp, align 8
  %i.fr = call ptr @blk_get_stats(ptr noundef %i.fq) #14
  call void @block_acct_invalid(ptr noundef %i.fr, i32 noundef 2) #14
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw, %bb.au
  %.038.i.ph = phi i8 [ 2, %bb.au ], [ %.037.i, %bb.aw ], [ %.037.i, %bb.ax ]
  call void @virtio_blk_req_complete(ptr noundef nonnull %0, i8 noundef zeroext %.038.i.ph)
  call void @g_free(ptr noundef nonnull %0) #14
  br label %virtio_blk_handle_discard_write_zeroes.exit.thread151

virtio_blk_handle_discard_write_zeroes.exit.thread151: ; preds = %bb.ay, %bb.at, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br label %bb.bc

virtio_blk_handle_discard_write_zeroes.exit:      ; preds = %bb.ak, %bb.ah
  %.1 = phi i32 [ 0, %bb.ah ], [ -1, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br label %bb.bc

bb.az:                                            ; preds = %virtio_ldl_p.exit
  %i.fs = call fastcc ptr @VIRTIO_BLK_GET_CLASS(ptr noundef %i.n)
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 400
  %i.fu = load ptr, ptr %i.ft, align 8            ; 2 uses
  %.not133 = icmp eq ptr %i.fu, null
  br i1 %.not133, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fv = call zeroext i1 %i.fu(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %.0.i134) #14
  br i1 %i.fv, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  call void @virtio_blk_req_complete(ptr noundef nonnull %0, i8 noundef zeroext 2)
  call void @g_free(ptr noundef nonnull %0) #14
  br label %bb.bc

bb.bc:                                            ; preds = %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %iov_from_buf.exit, %bb.af, %bb.bb, %bb.ba, %.thread144, %virtio_blk_handle_discard_write_zeroes.exit.thread151, %virtio_blk_handle_discard_write_zeroes.exit, %bb.w, %bb.h, %bb.f, %bb.c
  %.2 = phi i32 [ -1, %bb.c ], [ -1, %bb.f ], [ -1, %bb.h ], [ %.1, %virtio_blk_handle_discard_write_zeroes.exit ], [ 0, %bb.w ], [ 0, %virtio_blk_handle_discard_write_zeroes.exit.thread151 ], [ 0, %.thread144 ], [ 0, %bb.ba ], [ 0, %bb.bb ], [ 0, %bb.af ], [ 0, %iov_from_buf.exit ], [ 0, %bb.ae ], [ 0, %bb.ad ], [ 0, %bb.ac ], [ 0, %bb.ab ], [ 0, %bb.aa ], [ 0, %bb.z ], [ 0, %bb.y ], [ 0, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  ret i32 %.2
}

declare void @virtqueue_detach_element(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @g_free(ptr noundef) local_unnamed_addr #2

declare i32 @virtio_queue_empty(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @virtio_blk_submit_multireq(ptr nofree noundef readonly captures(none) %0, ptr noundef nonnull %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = load ptr, ptr %1, align 8                ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 152 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 260
  %i.k = load i8, ptr %i.j, align 4, !range !11, !noundef !12
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = getelementptr i8, ptr %0, i64 856
  %.val.i = load i8, ptr %i.m, align 8, !range !11, !noundef !12
  %i.n = shl nuw nsw i8 %.val.i, 3
  %spec.select.i = zext nneg i8 %i.n to i32       ; 2 uses
  %i.o = shl i64 %i.i, 9                          ; 2 uses
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = tail call ptr @blk_aio_pwritev(ptr noundef %i.e, i64 noundef %i.o, ptr noundef nonnull %i.g, i32 noundef %spec.select.i, ptr noundef nonnull @virtio_blk_rw_complete, ptr noundef nonnull %i.f) #14 ; 0 uses
  br label %submit_requests.exit

bb.d:                                             ; preds = %bb.b
  %i.q = tail call ptr @blk_aio_preadv(ptr noundef %i.e, i64 noundef %i.o, ptr noundef nonnull %i.g, i32 noundef %spec.select.i, ptr noundef nonnull @virtio_blk_rw_complete, ptr noundef nonnull %i.f) #14 ; 0 uses
  br label %submit_requests.exit

bb.e:                                             ; preds = %bb.a
  %i.r = load ptr, ptr %1, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 552
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call i32 @blk_get_max_transfer(ptr noundef %i.v) #14
  %i.x = load i32, ptr %i.a, align 8
  %i.y = zext i32 %i.x to i64
  tail call void @qsort(ptr noundef nonnull %1, i64 noundef %i.y, i64 noundef 8, ptr noundef nonnull @multireq_compare) #14
  %i.z = load i32, ptr %i.a, align 8
  %.not66 = icmp eq i32 %i.z, 0
  br i1 %.not66, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.ab = zext i32 %i.w to i64                    ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %.thread56
  %.063 = phi i64 [ 0, %.lr.ph ], [ %.1, %.thread56 ] ; 3 uses
  %.04262 = phi i32 [ 0, %.lr.ph ], [ %i.bd, %.thread56 ] ; 3 uses
  %.04461 = phi i32 [ 0, %.lr.ph ], [ %i.bg, %.thread56 ] ; 4 uses
  %.04660 = phi i32 [ 0, %.lr.ph ], [ %i.bh, %.thread56 ] ; 5 uses
  %.04859 = phi i32 [ 0, %.lr.ph ], [ %.149, %.thread56 ] ; 3 uses
  %.05058 = phi i32 [ 0, %.lr.ph ], [ %i.bi, %.thread56 ] ; 3 uses
  %i.ac = sext i32 %.05058 to i64
  %i.ad = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ac
  %i.ae = load ptr, ptr %i.ad, align 8            ; 6 uses
  %i.af = icmp sgt i32 %.04660, 0
  br i1 %i.af, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.ag = sext i32 %.04262 to i64                 ; 2 uses
  %i.ah = add i64 %.063, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  %i.aj = load i64, ptr %i.ai, align 8
  %.not = icmp eq i64 %i.ah, %i.aj
  br i1 %.not, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.ak = load ptr, ptr %i.aa, align 8
  %i.al = tail call i32 @blk_get_max_iov(ptr noundef %i.ak) #14
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 160
  %i.an = load i32, ptr %i.am, align 8
  %i.ao = sub i32 %i.al, %i.an
  %i.ap = icmp sgt i32 %.04461, %i.ao
  br i1 %i.ap, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ae, i64 184
  %i.ar = load i64, ptr %i.aq, align 8            ; 2 uses
  %i.as = icmp ugt i64 %i.ar, %i.ab
  br i1 %i.as, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.at = sub nuw nsw i64 %i.ab, %i.ar
  %i.au = lshr i64 %i.at, 9
  %i.av = icmp ult i64 %i.au, %i.ag
  br i1 %i.av, label %.thread, label %.thread56

.thread:                                          ; preds = %bb.g, %bb.h, %bb.i, %bb.j
  tail call fastcc void @submit_requests(ptr noundef %0, ptr noundef %1, i32 noundef %.04859, i32 noundef %.04660, i32 noundef %.04461)
  br label %bb.l

bb.k:                                             ; preds = %bb.f
  %i.aw = icmp eq i32 %.04660, 0
  br i1 %i.aw, label %bb.l, label %.thread56

bb.l:                                             ; preds = %.thread, %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  %i.ay = load i64, ptr %i.ax, align 8
  br label %.thread56

.thread56:                                        ; preds = %bb.j, %bb.l, %bb.k
  %.14754 = phi i32 [ 0, %bb.l ], [ %.04660, %bb.k ], [ %.04660, %bb.j ]
  %.149 = phi i32 [ %.05058, %bb.l ], [ %.04859, %bb.k ], [ %.04859, %bb.j ] ; 2 uses
  %.145 = phi i32 [ 0, %bb.l ], [ %.04461, %bb.k ], [ %.04461, %bb.j ]
  %.143 = phi i32 [ 0, %bb.l ], [ %.04262, %bb.k ], [ %.04262, %bb.j ]
  %.1 = phi i64 [ %i.ay, %bb.l ], [ %.063, %bb.k ], [ %.063, %bb.j ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.ae, i64 184
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = lshr i64 %i.ba, 9
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = add i32 %.143, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.ae, i64 160
  %i.bf = load i32, ptr %i.be, align 8
  %i.bg = add i32 %i.bf, %.145                    ; 2 uses
  %i.bh = add i32 %.14754, 1                      ; 2 uses
  %i.bi = add nuw i32 %.05058, 1                  ; 2 uses
  %i.bj = load i32, ptr %i.a, align 8
  %i.bk = icmp ult i32 %i.bi, %i.bj
  br i1 %i.bk, label %bb.f, label %._crit_edge, !llvm.loop !22

._crit_edge:                                      ; preds = %.thread56, %bb.e
  %.048.lcssa = phi i32 [ 0, %bb.e ], [ %.149, %.thread56 ]
  %.046.lcssa = phi i32 [ 0, %bb.e ], [ %i.bh, %.thread56 ]
  %.044.lcssa = phi i32 [ 0, %bb.e ], [ %i.bg, %.thread56 ]
  tail call fastcc void @submit_requests(ptr noundef %0, ptr noundef %1, i32 noundef %.048.lcssa, i32 noundef %.046.lcssa, i32 noundef %.044.lcssa)
  br label %submit_requests.exit

submit_requests.exit:                             ; preds = %bb.d, %bb.c, %._crit_edge
  store i32 0, ptr %i.a, align 8
  ret void
end_hunk_0
