Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/dw-i3c?download=true
inline.NumInlined: 379
inline.NumDeleted: 77
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@dw_i3c_cmd_queue_execute:bb.a
  br i1 %.not3.i.i.i.i.i, label %trace_dw_i3c_pop_tx.exit.i.i.i.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.57, i32 noundef range(i32 0, 256) %i.go, i32 noundef %i.gm) #6
  br label %trace_dw_i3c_pop_tx.exit.i.i.i.i

trace_dw_i3c_pop_tx.exit.i.i.i.i:                 ; preds = %bb.ay, %bb.ax, %bb.aw, %bb.av
  %i.gt = call i32 @fifo8_num_free(ptr noundef nonnull %i.ah) #6
  %i.gu = add i32 %i.gt, 3
  %i.gv = lshr i32 %i.gu, 2
  %i.gw = load i32, ptr %i.ai, align 16
  %i.gx = and i32 %i.gv, 255
  %i.gy = and i32 %i.gw, -256
  %i.gz = or disjoint i32 %i.gx, %i.gy
  store i32 %i.gz, ptr %i.ai, align 16
  %i.ha = load i32, ptr %i.aj, align 16
  %i.hb = and i32 %i.ha, 7                        ; 2 uses
  %.not.i21.i.i.i.i = icmp eq i32 %i.hb, 0
  %i.hc = shl nuw nsw i32 2, %i.hb
  %i.hd = call i32 @fifo8_num_free(ptr noundef nonnull %i.ah) #6
  %i.he = zext i32 %i.hd to i64
  %i.hf = add nuw nsw i64 %i.he, 3
  %i.hg = lshr i64 %i.hf, 2
  %i.hh = trunc nuw nsw i64 %i.hg to i32
  %i.hi = and i32 %i.hc, 254
  %i.hj = select i1 %.not.i21.i.i.i.i, i32 1, i32 %i.hi
  %.not.i.i53.i.i = icmp samesign ugt i32 %i.hj, %i.hh
  br i1 %.not.i.i53.i.i, label %dw_i3c_pop_tx.exit.i.i.i, label %bb.az

bb.az:                                            ; preds = %trace_dw_i3c_pop_tx.exit.i.i.i.i
  %i.hk = load i32, ptr %i.y, align 4
  %i.hl = or i32 %i.hk, 1                         ; 2 uses
  store i32 %i.hl, ptr %i.y, align 4
  %i.hm = load i32, ptr %i.ak, align 4
  %i.hn = and i32 %i.hm, %i.hl
  %i.ho = icmp ne i32 %i.hn, 0
  %i.hp = load ptr, ptr %i.al, align 16
  %i.hq = zext i1 %i.ho to i32
  call void @qemu_set_irq(ptr noundef %i.hp, i32 noundef %i.hq) #6
  br label %dw_i3c_pop_tx.exit.i.i.i

dw_i3c_pop_tx.exit.i.i.i:                         ; preds = %bb.az, %trace_dw_i3c_pop_tx.exit.i.i.i.i, %bb.au
  %.0.i.i54.i.i = phi i32 [ 0, %bb.au ], [ %i.gm, %bb.az ], [ %i.gm, %trace_dw_i3c_pop_tx.exit.i.i.i.i ]
  store i32 %.0.i.i54.i.i, ptr %2, align 4
  br i1 %i.co, label %.preheader.i.preheader.us.i.i.i, label %dw_i3c_pop_tx.exit.split.i.i.i

.preheader.i.preheader.us.i.i.i:                  ; preds = %dw_i3c_pop_tx.exit.i.i.i, %bb.bf
  %indvars.iv47.i.i.i = phi i64 [ %indvars.iv.next48.i.i.i, %bb.bf ], [ 0, %dw_i3c_pop_tx.exit.i.i.i ] ; 3 uses
  %.132.us.i.i.i = phi i16 [ %i.in, %bb.bf ], [ %.01535.i.i.i, %dw_i3c_pop_tx.exit.i.i.i ] ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv47.i.i.i
  %i.hs = load i8, ptr %i.hr, align 1             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i8 %i.hs, ptr %i.h, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #6
  store i32 0, ptr %i.i, align 4
  %i.ht = load ptr, ptr %i.x, align 8
  %i.hu = call i32 @legacy_i2c_send(ptr noundef %i.ht, i8 noundef zeroext %i.hs) #6
  %.not.i25.us.i.i.i = icmp eq i32 %i.hu, 0       ; 2 uses
  br i1 %.not.i25.us.i.i.i, label %.thread.i.us.loopexit.i.i.i, label %.thread49.i.loopexit.us.i.i.i

.thread.i.us.loopexit.i.i.i:                      ; preds = %.preheader.i.preheader.us.i.i.i
  %i.hv = load i32, ptr %i.i, align 4
  %i.hw = add i32 %i.hv, 1                        ; 2 uses
  store i32 %i.hw, ptr %i.i, align 4
  br label %.thread.i.us.i.i.i

bb.ba:                                            ; preds = %.thread49.i.loopexit.us.i.i.i
  %i.hx = load i8, ptr %i.h, align 1
  %i.hy = zext i8 %i.hx to i32
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.40, ptr noundef %i.ip, i32 noundef %i.hy) #6
  br label %bb.bb

bb.bb:                                            ; preds = %.thread49.i.loopexit.us.i.i.i, %bb.ba
  %i.hz = load i32, ptr %i.m, align 4
  %i.ia = and i32 %i.hz, -4144897
  %i.ib = or disjoint i32 %i.ia, 1249024
  store i32 %i.ib, ptr %i.m, align 4
  %i.ic = load i32, ptr %i.y, align 4
  %i.id = or i32 %i.ic, 512
  store i32 %i.id, ptr %i.y, align 4
  %i.ie = load i32, ptr %i.p, align 16
  %i.if = or i32 %i.ie, 1073741824
  store i32 %i.if, ptr %i.p, align 16
  call void @g_free(ptr noundef %i.ip) #6
  %.pre.i55.i.i = load i32, ptr %i.i, align 4
  br label %.thread.i.us.i.i.i

.thread.i.us.i.i.i:                               ; preds = %bb.bb, %.thread.i.us.loopexit.i.i.i
  %i.ig = phi i32 [ %i.hw, %.thread.i.us.loopexit.i.i.i ], [ %.pre.i55.i.i, %bb.bb ]
  %i.ih = load i8, ptr %i.w, align 16
  %i.ii = zext i8 %i.ih to i32
  %i.ij = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i22.us.i.i.i = icmp eq i32 %i.ij, 0
  br i1 %.not.i.i22.us.i.i.i, label %dw_i3c_send.exit.us.i.i.i, label %bb.bc, !prof !7

bb.bc:                                            ; preds = %.thread.i.us.i.i.i
  %i.ik = load i16, ptr @_TRACE_DW_I3C_SEND_DSTATE, align 2
  %.not2.i.i23.us.i.i.i = icmp eq i16 %i.ik, 0
  br i1 %.not2.i.i23.us.i.i.i, label %dw_i3c_send.exit.us.i.i.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.il = load i32, ptr @qemu_loglevel, align 4
  %i.im = and i32 %i.il, 32768
  %.not3.i.i24.us.i.i.i = icmp eq i32 %i.im, 0
  br i1 %.not3.i.i24.us.i.i.i, label %dw_i3c_send.exit.us.i.i.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.44, i32 noundef range(i32 0, 256) %i.ii, i32 noundef %i.ig) #6
  br label %dw_i3c_send.exit.us.i.i.i

dw_i3c_send.exit.us.i.i.i:                        ; preds = %bb.be, %bb.bd, %bb.bc, %.thread.i.us.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br i1 %.not.i25.us.i.i.i, label %bb.bf, label %dw_i3c_tx.exit.i.i

bb.bf:                                            ; preds = %dw_i3c_send.exit.us.i.i.i
  %i.in = add nuw i16 %.132.us.i.i.i, 1           ; 3 uses
  %.not21.us.i.i.i = icmp ult i16 %i.in, %.sroa.2.0.extract.trunc.i.i
  %indvars.iv.next48.i.i.i = add nuw nsw i64 %indvars.iv47.i.i.i, 1
  %i.io = icmp samesign ult i64 %indvars.iv47.i.i.i, 3
  %or.cond.i.i.i = select i1 %.not21.us.i.i.i, i1 %i.io, i1 false
  br i1 %or.cond.i.i.i, label %.preheader.i.preheader.us.i.i.i, label %.split.us.i.i.i, !llvm.loop !17

.thread49.i.loopexit.us.i.i.i:                    ; preds = %.preheader.i.preheader.us.i.i.i
  %i.ip = call ptr @object_get_canonical_path(ptr noundef nonnull %0) #6 ; 2 uses
  %i.iq = load i32, ptr @qemu_loglevel, align 4
  %i.ir = and i32 %i.iq, 2048
  %.not53.i.us.i.i.i = icmp eq i32 %i.ir, 0
  br i1 %.not53.i.us.i.i.i, label %bb.bb, label %bb.ba, !prof !7

dw_i3c_pop_tx.exit.split.i.i.i:                   ; preds = %dw_i3c_pop_tx.exit.i.i.i, %bb.bl
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %bb.bl ], [ 0, %dw_i3c_pop_tx.exit.i.i.i ] ; 3 uses
  %.132.i.i.i = phi i16 [ %i.jp, %bb.bl ], [ %.01535.i.i.i, %dw_i3c_pop_tx.exit.i.i.i ] ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.i.i.i
  %i.it = load i8, ptr %i.is, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i8 %i.it, ptr %i.h, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #6
  store i32 0, ptr %i.i, align 4
  %i.iu = load ptr, ptr %i.x, align 8
  %i.iv = call i32 @i3c_send(ptr noundef %i.iu, ptr noundef nonnull %i.h, i32 noundef 1, ptr noundef nonnull %i.i) #6
  %.not45.i.i.i.i = icmp eq i32 %i.iv, 0          ; 2 uses
  br i1 %.not45.i.i.i.i, label %.thread.i.i.i.i, label %.thread49.i.i.i.i

.thread49.i.i.i.i:                                ; preds = %dw_i3c_pop_tx.exit.split.i.i.i
  %i.iw = call ptr @object_get_canonical_path(ptr noundef nonnull %0) #6 ; 2 uses
  %i.ix = load i32, ptr @qemu_loglevel, align 4
  %i.iy = and i32 %i.ix, 2048
  %.not53.i.i.i.i = icmp eq i32 %i.iy, 0
  br i1 %.not53.i.i.i.i, label %bb.bh, label %bb.bg, !prof !7

bb.bg:                                            ; preds = %.thread49.i.i.i.i
  %i.iz = load i8, ptr %i.h, align 1
  %i.ja = zext i8 %i.iz to i32
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.40, ptr noundef %i.iw, i32 noundef %i.ja) #6
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %.thread49.i.i.i.i
  %i.jb = load i32, ptr %i.m, align 4
  %i.jc = and i32 %i.jb, -4144897
  %i.jd = or disjoint i32 %i.jc, 1249024
  store i32 %i.jd, ptr %i.m, align 4
  %i.je = load i32, ptr %i.y, align 4
  %i.jf = or i32 %i.je, 512
  store i32 %i.jf, ptr %i.y, align 4
  %i.jg = load i32, ptr %i.p, align 16
  %i.jh = or i32 %i.jg, 1073741824
  store i32 %i.jh, ptr %i.p, align 16
  call void @g_free(ptr noundef %i.iw) #6
  br label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %bb.bh, %dw_i3c_pop_tx.exit.split.i.i.i
  %i.ji = load i8, ptr %i.w, align 16
  %i.jj = zext i8 %i.ji to i32
  %i.jk = load i32, ptr %i.i, align 4
  %i.jl = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i22.i.i.i = icmp eq i32 %i.jl, 0
  br i1 %.not.i.i22.i.i.i, label %dw_i3c_send.exit.i.i.i, label %bb.bi, !prof !7

bb.bi:                                            ; preds = %.thread.i.i.i.i
  %i.jm = load i16, ptr @_TRACE_DW_I3C_SEND_DSTATE, align 2
  %.not2.i.i23.i.i.i = icmp eq i16 %i.jm, 0
  br i1 %.not2.i.i23.i.i.i, label %dw_i3c_send.exit.i.i.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.jn = load i32, ptr @qemu_loglevel, align 4
  %i.jo = and i32 %i.jn, 32768
  %.not3.i.i24.i.i.i = icmp eq i32 %i.jo, 0
  br i1 %.not3.i.i24.i.i.i, label %dw_i3c_send.exit.i.i.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.44, i32 noundef range(i32 0, 256) %i.jj, i32 noundef %i.jk) #6
  br label %dw_i3c_send.exit.i.i.i

dw_i3c_send.exit.i.i.i:                           ; preds = %bb.bk, %bb.bj, %bb.bi, %.thread.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br i1 %.not45.i.i.i.i, label %bb.bl, label %dw_i3c_tx.exit.i.i

bb.bl:                                            ; preds = %dw_i3c_send.exit.i.i.i
  %i.jp = add i16 %.132.i.i.i, 1                  ; 3 uses
  %.not21.i.i.i = icmp ult i16 %i.jp, %.sroa.2.0.extract.trunc.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1
  %i.jq = icmp samesign ult i64 %indvars.iv.i.i.i, 3
  %or.cond36.i.i.i = select i1 %.not21.i.i.i, i1 %i.jq, i1 false
  br i1 %or.cond36.i.i.i, label %dw_i3c_pop_tx.exit.split.i.i.i, label %.split.us.i.i.i, !llvm.loop !17

.split.us.i.i.i:                                  ; preds = %bb.bl, %bb.bf
  %.us-phi.i.i.i = phi i16 [ %i.in, %bb.bf ], [ %i.jp, %bb.bl ] ; 3 uses
  %i.jr = icmp ult i16 %.us-phi.i.i.i, %.sroa.2.0.extract.trunc.i.i
  br i1 %i.jr, label %.lr.ph.i52.i.i, label %dw_i3c_tx.exit.i.i, !llvm.loop !18

dw_i3c_tx.exit.i.i:                               ; preds = %.split.us.i.i.i, %dw_i3c_send.exit.i.i.i, %dw_i3c_send.exit.us.i.i.i, %bb.ar
  %.218.i.i.i = phi i16 [ %.132.i.i.i, %dw_i3c_send.exit.i.i.i ], [ %.132.us.i.i.i, %dw_i3c_send.exit.us.i.i.i ], [ 0, %bb.ar ], [ %.us-phi.i.i.i, %.split.us.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  br label %bb.bm

bb.bm:                                            ; preds = %dw_i3c_tx.exit.i.i, %dw_i3c_rx.exit.i.i
  %.040.i.i = phi i16 [ %.024.i.i.i, %dw_i3c_rx.exit.i.i ], [ %.218.i.i.i, %dw_i3c_tx.exit.i.i ]
  %i.js = load i32, ptr %i.m, align 4
  %i.jt = and i32 %i.js, -4128769
  store i32 %i.jt, ptr %i.m, align 4
  %i.ju = zext i16 %.040.i.i to i32
  br label %dw_i3c_transfer_ccc.exit.thread.i.i

dw_i3c_transfer_ccc.exit.thread.i.i:              ; preds = %bb.bm, %dw_i3c_send_start.exit.thread.i.i, %dw_i3c_send_start.exit.i.i, %dw_i3c_send_start.exit22.i.i.i, %trace_dw_i3c_transfer_ccc.exit.i.i.i, %dw_i3c_send_start.exit.i.i.i
  %.141.i.i = phi i32 [ 0, %dw_i3c_send_start.exit.thread.i.i ], [ %i.ju, %bb.bm ], [ 0, %dw_i3c_send_start.exit.i.i ], [ 0, %dw_i3c_send_start.exit22.i.i.i ], [ 0, %dw_i3c_send_start.exit.i.i.i ], [ 0, %trace_dw_i3c_transfer_ccc.exit.i.i.i ] ; 2 uses
  %.1.i.i = phi i8 [ 9, %dw_i3c_send_start.exit.thread.i.i ], [ 0, %bb.bm ], [ 9, %dw_i3c_send_start.exit.i.i ], [ 4, %dw_i3c_send_start.exit22.i.i.i ], [ 4, %dw_i3c_send_start.exit.i.i.i ], [ 9, %trace_dw_i3c_transfer_ccc.exit.i.i.i ]
  %i.jv = and i32 %i.an, 1073741824
  %.not46.i.i = icmp eq i32 %i.jv, 0
  br i1 %.not46.i.i, label %dw_i3c_end_transfer.exit.i.i, label %bb.bn

bb.bn:                                            ; preds = %dw_i3c_transfer_ccc.exit.thread.i.i
  %i.jw = load ptr, ptr %i.x, align 8             ; 2 uses
  br i1 %i.co, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  call void @legacy_i2c_end_transfer(ptr noundef %i.jw) #6
  br label %dw_i3c_end_transfer.exit.i.i

bb.bp:                                            ; preds = %bb.bn
  call void @i3c_end_transfer(ptr noundef %i.jw) #6
  br label %dw_i3c_end_transfer.exit.i.i

dw_i3c_end_transfer.exit.i.i:                     ; preds = %bb.bp, %bb.bo, %dw_i3c_transfer_ccc.exit.thread.i.i
  %i.jx = and i32 %i.an, 67108864
  %.not47.i.i = icmp eq i32 %i.jx, 0
  br i1 %.not47.i.i, label %dw_i3c_transfer.exit.i, label %bb.bq

bb.bq:                                            ; preds = %dw_i3c_end_transfer.exit.i.i
  %i.jy = sub nsw i32 %.sroa.2.0.extract.shift.i.i, %.141.i.i
  %i.jz = select i1 %i.bs, i32 %.141.i.i, i32 %i.jy
  %i.ka = trunc i32 %i.jz to i16
  %i.kb = lshr i8 %i.au, 3
  %i.kc = and i8 %i.kb, 15
  call fastcc void @dw_i3c_resp_queue_push(ptr noundef nonnull %0, i8 noundef zeroext %.1.i.i, i8 noundef zeroext %i.kc, i16 noundef zeroext %i.ka)
  br label %dw_i3c_transfer.exit.i

dw_i3c_transfer.exit.i:                           ; preds = %bb.bq, %dw_i3c_end_transfer.exit.i.i
  %i.kd = load i32, ptr %i.ak, align 4
  %i.ke = load i32, ptr %i.y, align 4
  %i.kf = and i32 %i.ke, %i.kd
  %i.kg = icmp ne i32 %i.kf, 0
  %i.kh = load ptr, ptr %i.al, align 16
  %i.ki = zext i1 %i.kg to i32
  call void @qemu_set_irq(ptr noundef %i.kh, i32 noundef %i.ki) #6
  br label %dw_i3c_transfer_cmd.exit

bb.br:                                            ; preds = %bb.p
  %.sroa.3.0.extract.shift.i.i = lshr i32 %i.am, 8
  %.sroa.3.0.extract.trunc.i.i = trunc i32 %.sroa.3.0.extract.shift.i.i to i8
  %.sroa.433.0.extract.shift.i.i = lshr i32 %i.am, 16
  %.sroa.433.0.extract.trunc.i.i = trunc i32 %.sroa.433.0.extract.shift.i.i to i8
  %.sroa.5.0.extract.shift.i.i = lshr i32 %i.am, 24
  %.sroa.5.0.extract.trunc.i.i = trunc nuw i32 %.sroa.5.0.extract.shift.i.i to i8
  %i.kj = lshr i32 %i.an, 16                      ; 2 uses
  %i.kk = trunc nuw i32 %i.kj to i16
  %i.kl = and i16 %i.kk, 31                       ; 3 uses
  %i.km = and i32 %i.kj, 31
  %i.kn = load i8, ptr %i.z, align 1
  %i.ko = zext i8 %i.kn to i16
  %i.kp = icmp samesign ugt i16 %i.kl, %i.ko
  br i1 %i.kp, label %bb.bs, label %bb.bv

bb.bs:                                            ; preds = %bb.br
  %i.kq = call ptr @object_get_canonical_path(ptr noundef nonnull %0) #6 ; 2 uses
  %i.kr = load i32, ptr @qemu_loglevel, align 4
  %i.ks = and i32 %i.kr, 2048
  %.not.i.i53.i = icmp eq i32 %i.ks, 0
  br i1 %.not.i.i53.i, label %bb.bu, label %bb.bt, !prof !7

bb.bt:                                            ; preds = %bb.bs
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.38, ptr noundef %i.kq, i32 noundef %i.km) #6
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  call void @g_free(ptr noundef %i.kq) #6
  %.pre.i55.i = load i32, ptr %i.aa, align 4
  %.pre58.i.i = trunc i32 %.pre.i55.i to i16
  %.pre59.i.i = lshr i16 %.pre58.i.i, 2
  %.pre61.i.i = add nuw nsw i16 %.pre59.i.i, %i.kl
  %.pre63.i.i = zext nneg i16 %.pre61.i.i to i64
  %.phi.trans.insert = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %.pre63.i.i
  %.pre = load i32, ptr %.phi.trans.insert, align 4
  br label %dw_i3c_target_addr.exit.i46.i

bb.bv:                                            ; preds = %bb.br
  %i.kt = load i32, ptr %i.aa, align 4
  %i.ku = trunc i32 %i.kt to i16
  %i.kv = lshr i16 %i.ku, 2
  %i.kw = add nuw nsw i16 %i.kv, %i.kl
  %i.kx = zext nneg i16 %i.kw to i64
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.kx
  %i.kz = load i32, ptr %i.ky, align 4            ; 4 uses
  %i.la = icmp slt i32 %i.kz, 0
  %i.lb = and i32 %i.kz, 127
  %i.lc = lshr i32 %i.kz, 16
  %.0.in.i.i44.i = select i1 %i.la, i32 %i.lb, i32 %i.lc
  %.0.i.i45.i = trunc i32 %.0.in.i.i44.i to i8
  br label %dw_i3c_target_addr.exit.i46.i

dw_i3c_target_addr.exit.i46.i:                    ; preds = %bb.bv, %bb.bu
  %i.ld = phi i32 [ %.pre, %bb.bu ], [ %i.kz, %bb.bv ]
  %.1.i.i47.i = phi i8 [ 0, %bb.bu ], [ %.0.i.i45.i, %bb.bv ]
  %i.le = icmp slt i32 %i.ld, 0                   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #6
  store i32 0, ptr %i.f, align 4, !annotation !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #6
  store i32 0, ptr %i.g, align 4, !annotation !11
  %i.lf = and i32 %i.an, 268435456
  %.not.i48.i = icmp eq i32 %i.lf, 0
  br i1 %.not.i48.i, label %bb.bz, label %bb.bw

bb.bw:                                            ; preds = %dw_i3c_target_addr.exit.i46.i
  %i.lg = call ptr @object_get_canonical_path(ptr noundef nonnull %0) #6 ; 2 uses
  %i.lh = load i32, ptr @qemu_loglevel, align 4
  %i.li = and i32 %i.lh, 2048
  %.not57.i.i = icmp eq i32 %i.li, 0
  br i1 %.not57.i.i, label %bb.by, label %bb.bx, !prof !7

bb.bx:                                            ; preds = %bb.bw
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.59, ptr noundef %i.lg) #6
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  call void @g_free(ptr noundef %i.lg) #6
  br label %dw_i3c_short_transfer.exit.i

bb.bz:                                            ; preds = %dw_i3c_target_addr.exit.i46.i
  %i.lj = call fastcc i32 @dw_i3c_send_start(ptr noundef nonnull %0, i8 noundef zeroext %.1.i.i47.i, i1 noundef zeroext false, i1 noundef zeroext %i.le)
  %.not45.i.i = icmp eq i32 %i.lj, 0
  br i1 %.not45.i.i, label %bb.ca, label %bb.ci

bb.ca:                                            ; preds = %bb.bz
  %i.lk = and i32 %i.an, 32768
  %.not46.i50.i = icmp eq i32 %i.lk, 0
  br i1 %.not46.i50.i, label %bb.cd, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.ll = lshr i32 %i.an, 7
  %i.lm = trunc i32 %i.ll to i8
  store i8 %i.lm, ptr %i.f, align 4
  %i.ln = and i32 %i.an, 33554432
  %.not47.i51.i = icmp eq i32 %i.ln, 0
  br i1 %.not47.i51.i, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  store i8 %.sroa.3.0.extract.trunc.i.i, ptr %i.ag, align 1
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb, %bb.ca
  %.043.i.i = phi i8 [ 2, %bb.cc ], [ 1, %bb.cb ], [ 0, %bb.ca ] ; 3 uses
  %i.lo = and i32 %i.am, 16
  %.not48.i.i = icmp eq i32 %i.lo, 0
  br i1 %.not48.i.i, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.lp = zext nneg i8 %.043.i.i to i64
  %i.lq = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.lp
  store i8 %.sroa.433.0.extract.trunc.i.i, ptr %i.lq, align 1
  %i.lr = add nuw nsw i8 %.043.i.i, 1
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %.1.i52.i = phi i8 [ %i.lr, %bb.ce ], [ %.043.i.i, %bb.cd ] ; 4 uses
  %i.ls = and i32 %i.am, 32
  %.not49.i.i = icmp eq i32 %i.ls, 0
  br i1 %.not49.i.i, label %bb.cg, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.cf
  %i.lt = zext nneg i8 %.1.i52.i to i64
  %i.lu = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.lt
  store i8 %.sroa.5.0.extract.trunc.i.i, ptr %i.lu, align 1
  %i.lv = add nuw nsw i8 %.1.i52.i, 1
  br label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %.not50.i.i = icmp eq i8 %.1.i52.i, 0
  br i1 %.not50.i.i, label %.sink.split.i.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %.thread.i.i
end_hunk_0
