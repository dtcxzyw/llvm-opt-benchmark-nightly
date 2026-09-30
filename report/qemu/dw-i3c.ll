Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/dw-i3c?download=true
inline.NumInlined: 379
inline.NumDeleted: 77
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@dw_i3c_ibi_handle:bb.a
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4            ; 3 uses
  %i.bc = icmp slt i32 %i.bb, 0
  %i.bd = and i32 %i.bb, 127
  %i.be = lshr i32 %i.bb, 16
  %.0.in.i.i.i = select i1 %i.bc, i32 %i.bd, i32 %i.be
  %.0.i.i.i = trunc i32 %.0.in.i.i.i to i8
  br label %dw_i3c_target_addr.exit.i.i

dw_i3c_target_addr.exit.i.i:                      ; preds = %bb.r, %bb.q
  %.1.i.i.i = phi i8 [ 0, %bb.q ], [ %.0.i.i.i, %bb.r ]
  %i.bf = icmp eq i8 %.1.i.i.i, %1
  br i1 %i.bf, label %dw_i3c_addr_table_index_from_addr.exit.i, label %bb.m

dw_i3c_addr_table_index_from_addr.exit.i:         ; preds = %dw_i3c_target_addr.exit.i.i
  %i.bg = load i32, ptr %i.ai, align 4
  %i.bh = lshr i32 %i.bg, 2
  %i.bi = and i32 %i.bh, 16383
  %narrow.i = add nuw nsw i32 %i.bi, %indvars.iv.i
  %i.bj = zext nneg i32 %narrow.i to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4
  %i.bm = and i32 %i.bl, 16384
  %.not19.i = icmp eq i32 %i.bm, 0
  br i1 %.not19.i, label %dw_i3c_handle_hj.exit, label %bb.s

bb.s:                                             ; preds = %dw_i3c_addr_table_index_from_addr.exit.i
  %i.bn = load i32, ptr %i.p, align 4
  %i.bo = or i32 %i.bn, -2147483648
  store i32 %i.bo, ptr %i.p, align 4
  %i.bp = getelementptr inbounds nuw i8, ptr %i.c, i64 1259
  store i8 1, ptr %i.bp, align 1
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 1256
  store i8 %1, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.c, i64 1257
  store i8 2, ptr %i.br, align 1
  %i.bs = getelementptr inbounds nuw i8, ptr %i.c, i64 1258
  store i8 1, ptr %i.bs, align 2
  br label %dw_i3c_handle_hj.exit

bb.t:                                             ; preds = %bb.i
  %i.bt = and i32 %i.y, 8
  %.not.i22 = icmp eq i32 %i.bt, 0
  br i1 %.not.i22, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bu = getelementptr inbounds nuw i8, ptr %i.c, i64 1224
  store i8 1, ptr %i.bu, align 8
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bv = getelementptr inbounds nuw i8, ptr %i.c, i64 1372 ; 3 uses
  %i.bw = load i32, ptr %i.bv, align 4            ; 2 uses
  %i.bx = and i32 %i.bw, 16711680
  %.not11.not.i.i23 = icmp eq i32 %i.bx, 0
  br i1 %.not11.not.i.i23, label %dw_i3c_handle_hj.exit, label %.lr.ph.i.i24

.lr.ph.i.i24:                                     ; preds = %bb.v
  %i.by = lshr i32 %i.bw, 16
  %i.bz = getelementptr inbounds nuw i8, ptr %i.c, i64 1269
  %i.ca = trunc i32 %i.by to i8
  %umax.i25 = tail call i8 @llvm.umax.i8(i8 %i.ca, i8 1)
  %wide.trip.count.i26 = zext i8 %umax.i25 to i32
  br label %bb.x

bb.w:                                             ; preds = %dw_i3c_target_addr.exit.i.i30
  %indvars.iv.next.i32 = add nuw nsw i32 %indvars.iv.i27, 1 ; 2 uses
  %exitcond.not.i33 = icmp eq i32 %indvars.iv.next.i32, %wide.trip.count.i26
  br i1 %exitcond.not.i33, label %dw_i3c_handle_hj.exit, label %bb.x, !llvm.loop !10

bb.x:                                             ; preds = %bb.w, %.lr.ph.i.i24
  %indvars.iv.i27 = phi i32 [ %indvars.iv.next.i32, %bb.w ], [ 0, %.lr.ph.i.i24 ] ; 5 uses
  %i.cb = load i8, ptr %i.bz, align 1
  %i.cc = zext i8 %i.cb to i32
  %i.cd = icmp samesign ugt i32 %indvars.iv.i27, %i.cc
  br i1 %i.cd, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.ce = tail call ptr @object_get_canonical_path(ptr noundef nonnull %i.c) #6 ; 2 uses
  %i.cf = load i32, ptr @qemu_loglevel, align 4
  %i.cg = and i32 %i.cf, 2048
  %.not.i.i.i38 = icmp eq i32 %i.cg, 0
  br i1 %.not.i.i.i38, label %bb.aa, label %bb.z, !prof !7

bb.z:                                             ; preds = %bb.y
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.38, ptr noundef %i.ce, i32 noundef %indvars.iv.i27) #6
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  tail call void @g_free(ptr noundef %i.ce) #6
  br label %dw_i3c_target_addr.exit.i.i30

bb.ab:                                            ; preds = %bb.x
  %i.ch = trunc nuw nsw i32 %indvars.iv.i27 to i16
  %i.ci = load i32, ptr %i.bv, align 4
  %i.cj = trunc i32 %i.ci to i16
  %i.ck = lshr i16 %i.cj, 2
  %i.cl = add nuw nsw i16 %i.ck, %i.ch
  %i.cm = zext nneg i16 %i.cl to i64
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.cm
  %i.co = load i32, ptr %i.cn, align 4            ; 3 uses
  %i.cp = icmp slt i32 %i.co, 0
  %i.cq = and i32 %i.co, 127
  %i.cr = lshr i32 %i.co, 16
  %.0.in.i.i.i28 = select i1 %i.cp, i32 %i.cq, i32 %i.cr
  %.0.i.i.i29 = trunc i32 %.0.in.i.i.i28 to i8
  br label %dw_i3c_target_addr.exit.i.i30

dw_i3c_target_addr.exit.i.i30:                    ; preds = %bb.ab, %bb.aa
  %.1.i.i.i31 = phi i8 [ 0, %bb.aa ], [ %.0.i.i.i29, %bb.ab ]
  %i.cs = icmp eq i8 %.1.i.i.i31, %1
  br i1 %i.cs, label %dw_i3c_addr_table_index_from_addr.exit.i35, label %bb.w

dw_i3c_addr_table_index_from_addr.exit.i35:       ; preds = %dw_i3c_target_addr.exit.i.i30
  %i.ct = load i32, ptr %i.bv, align 4
  %i.cu = lshr i32 %i.ct, 2
  %i.cv = and i32 %i.cu, 16383
  %narrow.i36 = add nuw nsw i32 %i.cv, %indvars.iv.i27
  %i.cw = zext nneg i32 %narrow.i36 to i64
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.cw
  %i.cy = load i32, ptr %i.cx, align 4
  %i.cz = and i32 %i.cy, 8192
  %.not19.i37 = icmp eq i32 %i.cz, 0
  br i1 %.not19.i37, label %dw_i3c_handle_hj.exit, label %bb.ac

bb.ac:                                            ; preds = %dw_i3c_addr_table_index_from_addr.exit.i35
  %i.da = load i32, ptr %i.p, align 4
  %i.db = or i32 %i.da, -2147483648
  store i32 %i.db, ptr %i.p, align 4
  %i.dc = getelementptr inbounds nuw i8, ptr %i.c, i64 1259
  store i8 1, ptr %i.dc, align 1
  %i.dd = getelementptr inbounds nuw i8, ptr %i.c, i64 1256
  store i8 %1, ptr %i.dd, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.c, i64 1257
  store i8 1, ptr %i.de, align 1
  %i.df = getelementptr inbounds nuw i8, ptr %i.c, i64 1258
  store i8 1, ptr %i.df, align 2
  br label %dw_i3c_handle_hj.exit

dw_i3c_handle_hj.exit:                            ; preds = %bb.m, %bb.w, %bb.ac, %dw_i3c_addr_table_index_from_addr.exit.i35, %bb.v, %bb.s, %dw_i3c_addr_table_index_from_addr.exit.i, %bb.l, %bb.h, %bb.g
  %.0 = phi i32 [ 0, %bb.g ], [ -1, %bb.w ], [ -1, %bb.h ], [ 0, %dw_i3c_addr_table_index_from_addr.exit.i ], [ -1, %bb.s ], [ -1, %bb.l ], [ 0, %dw_i3c_addr_table_index_from_addr.exit.i35 ], [ -1, %bb.ac ], [ -1, %bb.v ], [ -1, %bb.m ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 -1, 1) i32 @dw_i3c_ibi_recv(ptr nofree noundef readonly captures(none) %0, i8 noundef zeroext %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.b, ptr noundef nonnull @.str, ptr noundef nonnull @.str.15, i32 noundef 18, ptr noundef nonnull @__func__.DW_I3C) #6 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1232 ; 2 uses
  %i.e = tail call zeroext i1 @fifo8_is_full(ptr noundef nonnull %i.d) #6
  br i1 %i.e, label %trace_dw_i3c_ibi_recv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @fifo8_push(ptr noundef nonnull %i.d, i8 noundef zeroext %1) #6
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 1264
  %i.g = load i8, ptr %i.f, align 16
  %i.h = zext i8 %i.g to i32
  %i.i = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %trace_dw_i3c_ibi_recv.exit, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  %i.j = load i16, ptr @_TRACE_DW_I3C_IBI_RECV_DSTATE, align 2
  %.not2.i = icmp eq i16 %i.j, 0
  br i1 %.not2.i, label %trace_dw_i3c_ibi_recv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load i32, ptr @qemu_loglevel, align 4
  %i.l = and i32 %i.k, 32768
  %.not3.i = icmp eq i32 %i.l, 0
  br i1 %.not3.i, label %trace_dw_i3c_ibi_recv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = zext i8 %1 to i32
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.72, i32 noundef range(i32 0, 256) %i.h, i32 noundef %i.m) #6
  br label %trace_dw_i3c_ibi_recv.exit

trace_dw_i3c_ibi_recv.exit:                       ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ -1, %bb.a ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @dw_i3c_ibi_finish(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %1 = alloca %union.anon.86, align 4             ; 7 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.f, ptr noundef nonnull @.str, ptr noundef nonnull @.str.15, i32 noundef 18, ptr noundef nonnull @__func__.DW_I3C) #6 ; 30 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1280 ; 5 uses
  %i.i = load i32, ptr %i.h, align 16
  %i.j = and i32 %i.i, 256
  %.not = icmp eq i32 %i.j, 0
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 1258
  %i.l = load i8, ptr %i.k, align 2, !range !13
  %2 = trunc nuw i8 %i.l to i1                    ; 2 uses
  br i1 %.not, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %3 = select i1 %2, i8 -127, i8 1
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %2, label %bb.c, label %bb.k

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %spec.store.select.i = phi i8 [ %3, %._crit_edge ], [ -127, %bb.b ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 1258
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 1096 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call i32 @i3c_start_transfer(ptr noundef %i.o, i8 noundef zeroext 126, i1 noundef zeroext false) #6
  %.not.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i, label %dw_i3c_send_start.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = tail call ptr @object_get_canonical_path(ptr noundef nonnull %i.g) #6 ; 2 uses
  %i.r = load i32, ptr @qemu_loglevel, align 4
  %i.s = and i32 %i.r, 2048
  %.not32.i.i = icmp eq i32 %i.s, 0
  br i1 %.not32.i.i, label %bb.f, label %bb.e, !prof !7

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.45, ptr noundef %i.q, i32 noundef 126) #6
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 1364 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4
  %i.v = and i32 %i.u, -4144897
  %i.w = or disjoint i32 %i.v, 1249024
  store i32 %i.w, ptr %i.t, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 1340 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4
  %i.z = or i32 %i.y, 512
  store i32 %i.z, ptr %i.x, align 4
  %i.aa = load i32, ptr %i.h, align 16
  %i.ab = or i32 %i.aa, 1073741824
  store i32 %i.ab, ptr %i.h, align 16
  tail call void @g_free(ptr noundef %i.q) #6
  br label %dw_i3c_send_start.exit.i

dw_i3c_send_start.exit.i:                         ; preds = %bb.f, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 %spec.store.select.i, ptr %i.c, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !annotation !9
  %i.ac = call fastcc i32 @dw_i3c_send(ptr noundef nonnull %i.g, ptr noundef %i.c, i32 noundef 1, ptr noundef %i.d, i1 noundef zeroext false) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ad = load i8, ptr %i.m, align 2, !range !13, !noundef !14
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.g, label %dw_i3c_send_disec.exit

bb.g:                                             ; preds = %dw_i3c_send_start.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 1256
  %i.ag = load i8, ptr %i.af, align 8             ; 2 uses
  %i.ah = load ptr, ptr %i.n, align 8
  %i.ai = call i32 @i3c_start_transfer(ptr noundef %i.ah, i8 noundef zeroext %i.ag, i1 noundef zeroext false) #6
  %.not.i8.i = icmp eq i32 %i.ai, 0
  br i1 %.not.i8.i, label %dw_i3c_send_disec.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = call ptr @object_get_canonical_path(ptr noundef nonnull %i.g) #6 ; 2 uses
  %i.ak = load i32, ptr @qemu_loglevel, align 4
  %i.al = and i32 %i.ak, 2048
  %.not32.i9.i = icmp eq i32 %i.al, 0
  br i1 %.not32.i9.i, label %bb.j, label %bb.i, !prof !7

bb.i:                                             ; preds = %bb.h
  %i.am = zext i8 %i.ag to i32
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.45, ptr noundef %i.aj, i32 noundef %i.am) #6
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 1364 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = and i32 %i.ao, -4144897
  %i.aq = or disjoint i32 %i.ap, 1249024
  store i32 %i.aq, ptr %i.an, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %i.g, i64 1340 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = or i32 %i.as, 512
  store i32 %i.at, ptr %i.ar, align 4
  %i.au = load i32, ptr %i.h, align 16
  %i.av = or i32 %i.au, 1073741824
  store i32 %i.av, ptr %i.h, align 16
  call void @g_free(ptr noundef %i.aj) #6
  br label %dw_i3c_send_disec.exit

dw_i3c_send_disec.exit:                           ; preds = %dw_i3c_send_start.exit.i, %bb.g, %bb.j
  %i.aw = getelementptr inbounds nuw i8, ptr %i.g, i64 1257
  %i.ax = load i8, ptr %i.aw, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.ax, ptr %i.a, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 0, ptr %i.b, align 4, !annotation !9
  %i.ay = call fastcc i32 @dw_i3c_send(ptr noundef nonnull %i.g, ptr noundef %i.a, i32 noundef 1, ptr noundef %i.b, i1 noundef zeroext false) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.k

bb.k:                                             ; preds = %dw_i3c_send_disec.exit, %bb.b
  %i.az = getelementptr i8, ptr %i.g, i64 1308    ; 2 uses
  %.val.i = load i32, ptr %i.az, align 4
  %i.ba = lshr i32 %.val.i, 16
  %i.bb = and i32 %i.ba, 31                       ; 2 uses
  %i.bc = icmp eq i32 %i.bb, 0
  %.tr.i.i = trunc nuw nsw i32 %i.bb to i8
  %i.bd = shl nuw nsw i8 %.tr.i.i, 2
  %i.be = call i8 @llvm.umin.i8(i8 %i.bd, i8 63)
  %spec.store.select1.i.i = select i1 %i.bc, i8 4, i8 %i.be ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.g, i64 1232 ; 6 uses
  %i.bg = call i32 @fifo8_num_used(ptr noundef nonnull %i.bf) #6
  %i.bh = zext nneg i8 %spec.store.select1.i.i to i32 ; 5 uses
  %i.bi = udiv i32 %i.bg, %i.bh
  %i.bj = call i32 @fifo8_num_used(ptr noundef nonnull %i.bf) #6
  %i.bk = urem i32 %i.bj, %i.bh
  %.not.i = icmp ne i32 %i.bk, 0
  %i.bl = zext i1 %.not.i to i32
  %i.bm = add i32 %i.bi, %i.bl                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #6
  store i32 0, ptr %1, align 4
  %i.bn = getelementptr inbounds nuw i8, ptr %i.g, i64 1259
  %i.bo = load i8, ptr %i.bn, align 1, !range !13, !noundef !14
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bq = getelementptr inbounds nuw i8, ptr %i.g, i64 1224
  %i.br = load i8, ptr %i.bq, align 8, !range !13, !noundef !14
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %bb.m, label %dw_i3c_ibi_queue_push.exit

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bt = and i32 %i.bm, 255                      ; 2 uses
  %i.bu = icmp eq i32 %i.bt, 0
  %i.bv = getelementptr inbounds nuw i8, ptr %i.g, i64 1228 ; 7 uses
  br i1 %i.bu, label %.thread.i, label %.lr.ph115.i

.thread.i:                                        ; preds = %bb.m
  %i.bw = load i32, ptr %i.bv, align 4            ; 4 uses
  %i.bx = or i32 %i.bw, 16777216                  ; 2 uses
  store i32 %i.bx, ptr %i.bv, align 4
  %i.by = getelementptr inbounds nuw i8, ptr %i.g, i64 1200 ; 4 uses
  %i.bz = trunc i32 %i.bw to i8
  call void @fifo8_push(ptr noundef nonnull %i.by, i8 noundef zeroext %i.bz) #6
  %i.ca = lshr i32 %i.bw, 8
  %i.cb = trunc i32 %i.ca to i8
  call void @fifo8_push(ptr noundef nonnull %i.by, i8 noundef zeroext %i.cb) #6
  %i.cc = lshr i32 %i.bw, 16
  %i.cd = trunc i32 %i.cc to i8
  call void @fifo8_push(ptr noundef nonnull %i.by, i8 noundef zeroext %i.cd) #6
  %i.ce = lshr i32 %i.bx, 24
  %i.cf = trunc nuw i32 %i.ce to i8
  call void @fifo8_push(ptr noundef nonnull %i.by, i8 noundef zeroext %i.cf) #6
  br label %._crit_edge116.i

.lr.ph115.i:                                      ; preds = %bb.m
  %i.cg = getelementptr inbounds nuw i8, ptr %i.g, i64 1200 ; 12 uses
  %.not118.i = icmp eq i8 %spec.store.select1.i.i, 0
  %i.ch = and i32 %i.bh, 3
  %.not110.i = icmp eq i32 %i.ch, 0
  br label %bb.n

._crit_edge116.i.loopexit:                        ; preds = %bb.v
  %i.ci = shl i32 %i.bm, 24
  %i.cj = and i32 %i.ci, 520093696
  br label %._crit_edge116.i

._crit_edge116.i:                                 ; preds = %._crit_edge116.i.loopexit, %.thread.i
  %.0124.i = phi i32 [ 16777216, %.thread.i ], [ %i.cj, %._crit_edge116.i.loopexit ]
  %i.ck = getelementptr inbounds nuw i8, ptr %i.g, i64 1200 ; 2 uses
  %i.cl = call i32 @fifo8_num_used(ptr noundef nonnull %i.ck) #6
  %i.cm = getelementptr inbounds nuw i8, ptr %i.g, i64 1356 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 4
  %i.co = and i32 %i.cn, -536805377
  %i.cp = shl i32 %i.cl, 14
  %i.cq = add i32 %i.cp, 49152
  %i.cr = and i32 %i.cq, 16711680
  %i.cs = or disjoint i32 %i.co, %.0124.i
  %i.ct = or disjoint i32 %i.cs, %i.cr
  store i32 %i.ct, ptr %i.cm, align 4
  %i.cu = load i32, ptr %i.az, align 4
  %i.cv = lshr i32 %i.cu, 24
  %i.cw = add nuw nsw i32 %i.cv, 1
  %i.cx = call i32 @fifo8_num_used(ptr noundef nonnull %i.ck) #6
  %i.cy = zext i32 %i.cx to i64
  %i.cz = add nuw nsw i64 %i.cy, 3
  %i.da = lshr i64 %i.cz, 2
  %i.db = trunc nuw nsw i64 %i.da to i32
  %i.dc = and i32 %i.cw, 255
  %.not109.i = icmp samesign ugt i32 %i.dc, %i.db
  br i1 %.not109.i, label %dw_i3c_ibi_queue_push.exit, label %bb.w

bb.n:                                             ; preds = %bb.v, %.lr.ph115.i
  %indvars.iv.i = phi i32 [ 0, %.lr.ph115.i ], [ %indvars.iv.next.i, %bb.v ]
  %i.dd = call i32 @fifo8_num_used(ptr noundef nonnull %i.bf) #6
  %i.de = icmp ult i32 %i.dd, %i.bh
  br i1 %i.de, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.df = call i32 @fifo8_num_used(ptr noundef nonnull %i.bf) #6
  %i.dg = load i32, ptr %i.bv, align 4
  %i.dh = and i32 %i.df, 255
end_hunk_0
