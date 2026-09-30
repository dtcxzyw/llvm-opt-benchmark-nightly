Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/fdc?download=true
inline.NumInlined: 138
inline.NumDeleted: 47
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@fdctrl_write:bb.a

bb.au:                                            ; preds = %bb.at
  store i8 %i.ey, ptr %i.fx, align 1
  %.not29.i.i.i = icmp ne i8 %i.ga, %i.ew         ; 2 uses
  %.not.i.i.i.i = icmp ne ptr %.val30.i.i.i, null
  %or.cond.not.i.i = select i1 %.not29.i.i.i, i1 %.not.i.i.i.i, i1 false
  br i1 %or.cond.not.i.i, label %fd_media_present.exit.i.i.i, label %fd_media_present.exit.thread.i.i.i

fd_media_present.exit.i.i.i:                      ; preds = %bb.au
  %i.gl = tail call zeroext i1 @blk_is_inserted(ptr noundef nonnull %.val30.i.i.i) #16
  br i1 %i.gl, label %bb.av, label %fd_media_present.exit.thread.i.i.i

bb.av:                                            ; preds = %fd_media_present.exit.i.i.i
  %i.gm = getelementptr inbounds nuw i8, ptr %.0.i.i.i50.i, i64 45
  store i8 0, ptr %i.gm, align 1
  br label %fd_media_present.exit.thread.i.i.i

fd_media_present.exit.thread.i.i.i:               ; preds = %bb.av, %fd_media_present.exit.i.i.i, %bb.au
  store i8 %i.ew, ptr %i.fz, align 2
  store i8 %i.fa, ptr %i.gb, align 1
  %.val.i.pre.i.i = load ptr, ptr %i.eq, align 8
  br label %bb.aw

bb.aw:                                            ; preds = %fd_media_present.exit.thread.i.i.i, %bb.at
  %.val.i.i.i = phi ptr [ %.val.i.pre.i.i, %fd_media_present.exit.thread.i.i.i ], [ %.val30.i.i.i, %bb.at ] ; 2 uses
  %.1.i.i.i = phi i1 [ %.not29.i.i.i, %fd_media_present.exit.thread.i.i.i ], [ false, %bb.at ]
  %.not.i31.i.i.i = icmp eq ptr %.val.i.i.i, null
  br i1 %.not.i31.i.i.i, label %fd_seek.exit.thread54.i.i, label %fd_media_present.exit32.i.i.i

fd_media_present.exit32.i.i.i:                    ; preds = %bb.aw
  %i.gn = tail call zeroext i1 @blk_is_inserted(ptr noundef nonnull %.val.i.i.i) #16
  %cond.fr.i.i.i = freeze i1 %i.gn
  br i1 %cond.fr.i.i.i, label %fd_seek.exit.i.i, label %fd_seek.exit.thread54.i.i

fd_seek.exit.i.i:                                 ; preds = %fd_media_present.exit32.i.i.i
  br i1 %.1.i.i.i, label %bb.ax, label %bb.ay

fd_seek.exit.thread.i.i:                          ; preds = %bb.ar, %get_cur_drv.exit.i.i
  tail call fastcc void @fdctrl_stop_transfer(ptr noundef nonnull %0, i8 noundef zeroext 64, i8 noundef zeroext 0, i8 noundef zeroext 0)
  %i.go = load ptr, ptr %i.ax, align 8
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 3
  store i8 %i.ew, ptr %i.gp, align 1
  %i.gq = load ptr, ptr %i.ax, align 8
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 4
  store i8 %i.ey, ptr %i.gr, align 1
  %i.gs = load ptr, ptr %i.ax, align 8
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 5
  store i8 %i.fa, ptr %i.gt, align 1
  br label %fdctrl_write_tape.exit

fd_seek.exit.thread54.i.i:                        ; preds = %fd_media_present.exit32.i.i.i, %bb.aw
  tail call fastcc void @fdctrl_stop_transfer(ptr noundef nonnull %0, i8 noundef zeroext 64, i8 noundef zeroext 1, i8 noundef zeroext 0)
  %i.gu = load ptr, ptr %i.ax, align 8
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 3
  store i8 %i.ew, ptr %i.gv, align 1
  %i.gw = load ptr, ptr %i.ax, align 8
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 4
  store i8 %i.ey, ptr %i.gx, align 1
  %i.gy = load ptr, ptr %i.ax, align 8
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 5
  store i8 %i.fa, ptr %i.gz, align 1
  br label %fdctrl_write_tape.exit

fd_seek.exit.thread56.i.i:                        ; preds = %bb.as
  tail call fastcc void @fdctrl_stop_transfer(ptr noundef nonnull %0, i8 noundef zeroext 64, i8 noundef zeroext -128, i8 noundef zeroext 0)
  %i.ha = load ptr, ptr %i.ax, align 8
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 3
  store i8 %i.ew, ptr %i.hb, align 1
  %i.hc = load ptr, ptr %i.ax, align 8
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 4
  store i8 %i.ey, ptr %i.hd, align 1
  %i.he = load ptr, ptr %i.ax, align 8
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 5
  store i8 %i.fa, ptr %i.hf, align 1
  br label %fdctrl_write_tape.exit

bb.ax:                                            ; preds = %fd_seek.exit.i.i
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 41 ; 2 uses
  %i.hh = load i8, ptr %i.hg, align 1
  %i.hi = or i8 %i.hh, 32
  store i8 %i.hi, ptr %i.hg, align 1
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %fd_seek.exit.i.i
  %i.hj = load ptr, ptr %i.ax, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(512) %i.hj, i8 noundef 0, i64 noundef 512, i1 noundef false) #16
  %i.hk = load ptr, ptr %i.eq, align 8            ; 2 uses
  %i.hl = icmp eq ptr %i.hk, null
  br i1 %i.hl, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.hm = load i8, ptr %i.fx, align 1
  %i.hn = load i8, ptr %i.fz, align 2
  %i.ho = load i8, ptr %i.gb, align 1
  %i.hp = load i8, ptr %i.fi, align 8
  %i.hq = load i32, ptr %i.fl, align 4
  %i.hr = and i32 %i.hq, 1
  %i.hs = zext i8 %i.hn to i32
  %i.ht = shl nuw nsw i32 %i.hs, %i.hr
  %i.hu = zext i8 %i.hm to i32
  %i.hv = add nuw nsw i32 %i.ht, %i.hu
  %i.hw = zext i8 %i.hp to i32
  %i.hx = mul nuw nsw i32 %i.hv, %i.hw
  %i.hy = zext i8 %i.ho to i32
  %i.hz = add nsw i32 %i.hy, -1
  %i.ia = add nsw i32 %i.hz, %i.hx
  %i.ib = shl nsw i32 %i.ia, 9
  %i.ic = sext i32 %i.ib to i64
  %i.id = load ptr, ptr %i.ax, align 8
  %i.ie = tail call i32 @blk_pwrite(ptr noundef nonnull %i.hk, i64 noundef %i.ic, i64 noundef 512, ptr noundef %i.id, i32 noundef 0) #16
  %i.if = icmp slt i32 %i.ie, 0
  br i1 %i.if, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az, %bb.ay
  tail call fastcc void @fdctrl_stop_transfer(ptr noundef nonnull %0, i8 noundef zeroext 96, i8 noundef zeroext 0, i8 noundef zeroext 0)
  br label %fdctrl_write_tape.exit

bb.bb:                                            ; preds = %bb.az
  %i.ig = load i8, ptr %i.gb, align 1
  %i.ih = load i8, ptr %i.fi, align 8
  %i.ii = icmp eq i8 %i.ig, %i.ih
  br i1 %i.ii, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.ij = load i8, ptr %i.dx, align 4
  %i.ik = and i8 %i.ij, -3
  store i8 %i.ik, ptr %i.dx, align 4
  tail call fastcc void @fdctrl_stop_transfer(ptr noundef nonnull %0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0)
  br label %fdctrl_write_tape.exit

bb.bd:                                            ; preds = %bb.bb
  store i32 0, ptr %i.at, align 4
  store i32 4, ptr %i.bc, align 8
  br label %fdctrl_write_tape.exit

bb.be:                                            ; preds = %bb.al
  %i.il = load i8, ptr %i.ea, align 1
  %i.im = zext i8 %i.il to i64
  %i.in = getelementptr inbounds nuw i8, ptr @command_to_handler, i64 %i.im
  %i.io = load i8, ptr %i.in, align 1
  %i.ip = zext i8 %i.io to i64
  %i.iq = getelementptr inbounds nuw [40 x i8], ptr @handlers, i64 %i.ip ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 24
  %i.is = load ptr, ptr %i.ir, align 8
  %i.it = getelementptr inbounds nuw i8, ptr %i.iq, i64 32
  %i.iu = load i32, ptr %i.it, align 8
  tail call void %i.is(ptr noundef nonnull %0, i32 noundef %i.iu) #16, !inline_history !12
  br label %fdctrl_write_tape.exit

bb.bf:                                            ; preds = %bb.t
  tail call void @abort() #17
  unreachable

bb.bg:                                            ; preds = %trace_fdc_ioport_write.exit
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 35
  %i.iw = load i8, ptr %i.iv, align 1
  %i.ix = and i8 %i.iw, 4
  %.not.i17 = icmp eq i8 %i.ix, 0
  br i1 %.not.i17, label %fdctrl_write_tape.exit, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 38 ; 2 uses
  %i.iz = load i8, ptr %i.iy, align 2
  %i.ja = and i8 %i.iz, -4
  %i.jb = and i8 %i.b, 3
  %i.jc = or disjoint i8 %i.ja, %i.jb
  store i8 %i.jc, ptr %i.iy, align 2
  br label %fdctrl_write_tape.exit

fdctrl_write_tape.exit:                           ; preds = %bb.bh, %bb.bg, %bb.be, %bb.bd, %bb.bc, %bb.ba, %fd_seek.exit.thread56.i.i, %fd_seek.exit.thread54.i.i, %fd_seek.exit.thread.i.i, %bb.ak, %bb.ad, %bb.ac, %bb.ab, %get_cur_drv.exit.i, %bb.w, %bb.q, %bb.p, %bb.o, %bb.j, %bb.i, %bb.h, %trace_fdc_ioport_write.exit, %fdctrl_write_dor.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define internal noundef i32 @fdc_pre_load(ptr nofree noundef writeonly captures(none) initializes((20, 21)) %0) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 0, ptr %i.a, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @fdc_post_load(ptr nofree noundef captures(none) initializes((35, 36), (40, 41)) %0, i32 %1) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load i8, ptr %i.a, align 4               ; 2 uses
  %i.c = and i8 %i.b, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 %i.c, ptr %i.d, align 8
  %i.e = and i8 %i.b, -2
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 35
  store i8 %i.e, ptr %i.f, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.h = load i8, ptr %i.g, align 4
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %0, i64 39
  %.val = load i8, ptr %i.j, align 1              ; 2 uses
  %2 = zext i8 %.val to i32                       ; 2 uses
  %3 = and i32 %2, 32
  %.not.i = icmp ne i32 %3, 0
  %4 = icmp sgt i8 %.val, -1
  %or.cond.i = or i1 %4, %.not.i
  %5 = and i32 %2, 64
  %.not3.i = icmp eq i32 %5, 0
  %6 = select i1 %.not3.i, i8 1, i8 3
  %i.k = select i1 %or.cond.i, i8 2, i8 %6
  store i8 %i.k, ptr %i.g, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @fdc_pre_save(ptr nofree noundef captures(none) initializes((36, 37)) %0) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 35
  %i.b = load i8, ptr %i.a, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i8, ptr %i.c, align 8
  %i.e = or i8 %i.d, %i.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 %i.e, ptr %i.f, align 4
  ret i32 0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fdctrl_reset(ptr nofree noundef captures(none) initializes((20, 21), (34, 36), (39, 42), (60, 70), (320, 324)) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 41 ; 3 uses
  store i8 0, ptr %i.a, align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 33 ; 6 uses
  %i.c = load i8, ptr %i.b, align 1
  %.not.i = icmp sgt i8 %i.c, -1
  br i1 %.not.i, label %fdctrl_reset_irq.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8
  tail call void @qemu_set_irq(ptr noundef %i.d, i32 noundef 0) #16
  br label %fdctrl_reset_irq.exit

fdctrl_reset_irq.exit:                            ; preds = %bb.a, %bb.b
  store i8 0, ptr %i.b, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 34
  store i8 -64, ptr %i.e, align 2
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.g = load ptr, ptr %i.f, align 8
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %fdctrl_reset_irq.exit
  store i8 64, ptr %i.b, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %fdctrl_reset_irq.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 35
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load i32, ptr %i.j, align 8
  %.not24 = icmp eq i32 %i.k, -1
  %i.l = select i1 %.not24, i8 4, i8 12
  store i8 %i.l, ptr %i.i, align 1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 39 ; 3 uses
  store i8 -128, ptr %i.m, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  store i32 0, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  tail call void @timer_del(ptr noundef %i.p) #16
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 69
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(10) %i.q, i8 0, i64 10, i1 false)
  %i.u = load i8, ptr %i.t, align 8               ; 2 uses
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %fd_recalibrate.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.x = load i32, ptr %i.w, align 4
  %i.y = and i32 %i.x, 1
  %i.z = zext i8 %i.u to i32
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 245 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 246 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 2             ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 247 ; 2 uses
  %i.af = load i8, ptr %i.ae, align 1
  %i.ag = zext i8 %i.ad to i32
  %i.ah = shl nuw nsw i32 %i.ag, %i.y
  %i.ai = zext i8 %i.ab to i32
  %i.aj = add nuw nsw i32 %i.ah, %i.ai
  %i.ak = zext i8 %i.af to i32
  %i.al = add nsw i32 %i.ak, -1
  %i.am = mul nuw nsw i32 %i.aj, %i.z
  %i.an = sub nsw i32 0, %i.am
  %.not28.i.i = icmp eq i32 %i.al, %i.an
  br i1 %.not28.i.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i8 0, ptr %i.aa, align 1
  %.not29.i.i = icmp eq i8 %i.ad, 0
  br i1 %.not29.i.i, label %fd_media_present.exit.thread.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr i8, ptr %0, i64 224
  %.val30.i.i = load ptr, ptr %i.ao, align 8      ; 2 uses
  %.not.i.i.i = icmp eq ptr %.val30.i.i, null
  br i1 %.not.i.i.i, label %fd_media_present.exit.thread.i.i, label %fd_media_present.exit.i.i

fd_media_present.exit.i.i:                        ; preds = %bb.g
  %i.ap = tail call zeroext i1 @blk_is_inserted(ptr noundef nonnull %.val30.i.i) #16
  br i1 %i.ap, label %bb.h, label %fd_media_present.exit.thread.i.i

bb.h:                                             ; preds = %fd_media_present.exit.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 261
  store i8 0, ptr %i.aq, align 1
  br label %fd_media_present.exit.thread.i.i

fd_media_present.exit.thread.i.i:                 ; preds = %bb.h, %fd_media_present.exit.i.i, %bb.g, %bb.f
  store i8 0, ptr %i.ac, align 2
  store i8 1, ptr %i.ae, align 1
  br label %bb.i

bb.i:                                             ; preds = %fd_media_present.exit.thread.i.i, %bb.e
  %i.ar = getelementptr i8, ptr %0, i64 224
  %.val.i.i = load ptr, ptr %i.ar, align 8        ; 2 uses
  %.not.i31.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not.i31.i.i, label %fd_recalibrate.exit, label %fd_media_present.exit32.i.i

fd_media_present.exit32.i.i:                      ; preds = %bb.i
  %i.as = tail call zeroext i1 @blk_is_inserted(ptr noundef nonnull %.val.i.i) #16 ; 0 uses
  br label %fd_recalibrate.exit

fd_recalibrate.exit:                              ; preds = %bb.d, %bb.i, %fd_media_present.exit32.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.au = load i8, ptr %i.at, align 8             ; 2 uses
  %i.av = icmp eq i8 %i.au, 0
  br i1 %i.av, label %fd_recalibrate.exit.1, label %bb.j

bb.j:                                             ; preds = %fd_recalibrate.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.ax = load i32, ptr %i.aw, align 4
  %i.ay = and i32 %i.ax, 1
  %i.az = zext i8 %i.au to i32
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 293 ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 1
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 294 ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 2             ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 295 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1
  %i.bg = zext i8 %i.bd to i32
  %i.bh = shl nuw nsw i32 %i.bg, %i.ay
  %i.bi = zext i8 %i.bb to i32
  %i.bj = add nuw nsw i32 %i.bh, %i.bi
  %i.bk = zext i8 %i.bf to i32
  %i.bl = add nsw i32 %i.bk, -1
  %i.bm = mul nuw nsw i32 %i.bj, %i.az
  %i.bn = sub nsw i32 0, %i.bm
  %.not28.i.i.1 = icmp eq i32 %i.bl, %i.bn
  br i1 %.not28.i.i.1, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i8 0, ptr %i.ba, align 1
  %.not29.i.i.1 = icmp eq i8 %i.bd, 0
  br i1 %.not29.i.i.1, label %fd_media_present.exit.thread.i.i.1, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bo = getelementptr i8, ptr %0, i64 272
  %.val30.i.i.1 = load ptr, ptr %i.bo, align 8    ; 2 uses
  %.not.i.i.i.1 = icmp eq ptr %.val30.i.i.1, null
  br i1 %.not.i.i.i.1, label %fd_media_present.exit.thread.i.i.1, label %fd_media_present.exit.i.i.1

fd_media_present.exit.i.i.1:                      ; preds = %bb.l
  %i.bp = tail call zeroext i1 @blk_is_inserted(ptr noundef nonnull %.val30.i.i.1) #16
  br i1 %i.bp, label %bb.m, label %fd_media_present.exit.thread.i.i.1

bb.m:                                             ; preds = %fd_media_present.exit.i.i.1
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 309
  store i8 0, ptr %i.bq, align 1
  br label %fd_media_present.exit.thread.i.i.1

fd_media_present.exit.thread.i.i.1:               ; preds = %bb.m, %fd_media_present.exit.i.i.1, %bb.l, %bb.k
  store i8 0, ptr %i.bc, align 2
  store i8 1, ptr %i.be, align 1
  br label %bb.n

bb.n:                                             ; preds = %fd_media_present.exit.thread.i.i.1, %bb.j
  %i.br = getelementptr i8, ptr %0, i64 272
  %.val.i.i.1 = load ptr, ptr %i.br, align 8      ; 2 uses
  %.not.i31.i.i.1 = icmp eq ptr %.val.i.i.1, null
  br i1 %.not.i31.i.i.1, label %fd_recalibrate.exit.1, label %fd_media_present.exit32.i.i.1

fd_media_present.exit32.i.i.1:                    ; preds = %bb.n
  %i.bs = tail call zeroext i1 @blk_is_inserted(ptr noundef nonnull %.val.i.i.1) #16 ; 0 uses
  br label %fd_recalibrate.exit.1

fd_recalibrate.exit.1:                            ; preds = %fd_media_present.exit32.i.i.1, %bb.n, %fd_recalibrate.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 1, ptr %i.bt, align 4
  store i8 0, ptr %i.s, align 1
  store i32 0, ptr %i.q, align 4
  store i32 1, ptr %i.r, align 8
  %i.bu = load i8, ptr %i.m, align 1
end_hunk_0
begin_hunk_1_@fdctrl_result_timer:bb.a

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @fd_revalidate(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call zeroext i1 @blk_is_writable(ptr noundef nonnull %i.b) #16
  %i.d = xor i1 %i.c, true
  %i.e = zext i1 %i.d to i8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i8 %i.e, ptr %i.f, align 4
  %i.g = load ptr, ptr %i.a, align 8
  %i.h = tail call zeroext i1 @blk_is_inserted(ptr noundef %i.g) #16
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 3, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 -1, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 41
  store i8 -1, ptr %i.k, align 1
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 47 ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !range !10, !noundef !11
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = tail call fastcc i32 @pick_geometry(ptr noundef nonnull %0)
  %.not14 = icmp eq i32 %i.o, 0
  br i1 %.not14, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %i.l, align 1
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 41
  store i8 0, ptr %i.q, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4
  %i.t = and i32 %i.s, -2
  store i32 %i.t, ptr %i.r, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 3, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 3, ptr %i.v, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.f, %bb.e, %bb.d, %bb.g
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @do_qemu_init_fdc_register_types() #0 {
bb.a:
  tail call void @register_module_init(ptr noundef nonnull @fdc_register_types, i32 noundef 4) #16
  ret void
}

declare void @register_module_init(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal void @fdc_register_types() #0 {
bb.a:
  %i.a = tail call ptr @type_register_static(ptr noundef nonnull @floppy_bus_info) #16 ; 0 uses
  %i.b = tail call ptr @type_register_static(ptr noundef nonnull @floppy_drive_info) #16 ; 0 uses
  ret void
}

declare void @qemu_log(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @fdrive_post_load(ptr nofree noundef captures(none) %0, i32 %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call zeroext i1 @blk_is_writable(ptr noundef nonnull %i.b) #16
  %i.d = xor i1 %i.c, true
  %i.e = zext i1 %i.d to i8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i8 %i.e, ptr %i.f, align 4
  %i.g = load ptr, ptr %i.a, align 8
  %i.h = tail call zeroext i1 @blk_is_inserted(ptr noundef %i.g) #16
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 3, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 -1, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 41
  store i8 -1, ptr %i.k, align 1
  br label %fd_revalidate.exit

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 47 ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !range !10, !noundef !11
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %fd_revalidate.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = tail call fastcc i32 @pick_geometry(ptr noundef nonnull %0)
  %.not14.i = icmp eq i32 %i.o, 0
  br i1 %.not14.i, label %bb.f, label %fd_revalidate.exit

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %i.l, align 1
  br label %fd_revalidate.exit

bb.g:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 41
  store i8 0, ptr %i.q, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4
  %i.t = and i32 %i.s, -2
  store i32 %i.t, ptr %i.r, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 3, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 3, ptr %i.v, align 8
  br label %fd_revalidate.exit

fd_revalidate.exit:                               ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define internal zeroext i1 @fdrive_media_changed_needed(ptr nofree noundef readonly captures(none) %0) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 45
  %i.d = load i8, ptr %i.c, align 1
  %i.e = icmp ne i8 %i.d, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = phi i1 [ false, %bb.a ], [ %i.e, %bb.b ]
  ret i1 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define internal zeroext i1 @fdrive_perpendicular_needed(ptr nofree noundef readonly captures(none) %0) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.b = load i8, ptr %i.a, align 4
  %i.c = icmp ne i8 %i.b, 0
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define internal zeroext i1 @fdc_reset_sensei_needed(ptr nofree noundef readonly captures(none) %0) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp ne i32 %i.b, 0
  ret i1 %i.c
}

; Function Attrs: nounwind sspstrong uwtable
define internal zeroext i1 @fdc_result_timer_needed(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call zeroext i1 @timer_pending(ptr noundef %i.b) #16
  ret i1 %i.c
}

declare zeroext i1 @timer_pending(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define internal zeroext i1 @fdc_phase_needed(ptr nofree noundef readonly captures(none) %0) #7 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 39
  %.val = load i8, ptr %i.a, align 1              ; 2 uses
  %i.b = zext i8 %.val to i32                     ; 2 uses
  %i.c = and i32 %i.b, 32
  %.not.i = icmp ne i32 %i.c, 0
  %i.d = icmp sgt i8 %.val, -1
  %or.cond.i = or i1 %i.d, %.not.i
  %1 = and i32 %i.b, 64
  %.not3.i = icmp eq i32 %1, 0
  %..i = select i1 %.not3.i, i32 1, i32 3
  %.0.i = select i1 %or.cond.i, i32 2, i32 %..i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i8, ptr %i.e, align 4
  %i.g = zext i8 %i.f to i32
  %i.h = icmp ne i32 %.0.i, %i.g
  ret i1 %i.h
}

declare void @qemu_set_irq(ptr noundef, i32 noundef) local_unnamed_addr #4

declare zeroext i1 @blk_is_inserted(ptr noundef) #4

declare ptr @object_class_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare ptr @object_get_class(ptr noundef) local_unnamed_addr #4

declare ptr @blk_new(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

declare ptr @qemu_get_aio_context() local_unnamed_addr #4

; Function Attrs: noreturn
declare void @g_assertion_message_expr(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define internal void @fdctrl_start_transfer(ptr nofree noundef captures(none) initializes((40, 41)) %0, i32 noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 18 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.d = load i8, ptr %i.c, align 1
  %i.e = and i8 %i.d, 1                           ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 %i.e, ptr %i.f, align 8
  %i.g = icmp eq i8 %i.e, 0
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.j = load i8, ptr %i.i, align 1
  %i.k = lshr i8 %i.j, 2
  %i.l = and i8 %i.k, 1
  %i.m = zext nneg i8 %i.l to i64
  %i.n = getelementptr inbounds nuw [48 x i8], ptr %i.h, i64 %i.m
  br label %get_drv.exit.i

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.p = load i8, ptr %i.o, align 1
  %i.q = and i8 %i.p, 4
  %.not.not.i.i.i = icmp eq i8 %i.q, 0
  %.0.v.i.i.i = select i1 %.not.not.i.i.i, i64 264, i64 216
  %.0.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.0.v.i.i.i
  br label %get_drv.exit.i

get_drv.exit.i:                                   ; preds = %bb.c, %bb.b
  %.0.i.i = phi ptr [ %.0.i.i.i, %bb.c ], [ %i.n, %bb.b ] ; 10 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %bb.d, label %get_cur_drv.exit

bb.d:                                             ; preds = %get_drv.exit.i
  %i.t = tail call ptr @qemu_get_aio_context() #16
  %i.u = tail call ptr @blk_new(ptr noundef %i.t, i64 noundef 0, i64 noundef 15) #16 ; 2 uses
  store ptr %i.u, ptr %i.r, align 8
  %.pre = load ptr, ptr %i.a, align 8
  br label %get_cur_drv.exit

get_cur_drv.exit:                                 ; preds = %get_drv.exit.i, %bb.d
  %.val30.i = phi ptr [ %i.s, %get_drv.exit.i ], [ %i.u, %bb.d ] ; 3 uses
  %i.v = phi ptr [ %i.b, %get_drv.exit.i ], [ %.pre, %bb.d ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  %i.x = load i8, ptr %i.w, align 1               ; 9 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 3
  %i.z = load i8, ptr %i.y, align 1               ; 8 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.ab = load i8, ptr %i.aa, align 1             ; 8 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 41
  %i.ad = load i8, ptr %i.ac, align 1
  %i.ae = icmp ugt i8 %i.x, %i.ad
  br i1 %i.ae, label %fd_seek.exit.thread, label %bb.e

bb.e:                                             ; preds = %get_cur_drv.exit
  %.not.i106 = icmp eq i8 %i.z, 0
  br i1 %.not.i106, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 36
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = and i32 %i.ag, 1
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %fd_seek.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 40
  %i.ak = load i8, ptr %i.aj, align 8             ; 2 uses
  %i.al = icmp ugt i8 %i.ab, %i.ak
  br i1 %i.al, label %fd_seek.exit.thread112, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 36
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = and i32 %i.an, 1                        ; 2 uses
  %i.ap = zext i8 %i.x to i32
  %i.aq = shl nuw nsw i32 %i.ap, %i.ao
  %i.ar = zext i8 %i.z to i32
  %i.as = add nuw nsw i32 %i.aq, %i.ar
  %i.at = zext i8 %i.ak to i32                    ; 2 uses
  %i.au = mul nuw nsw i32 %i.as, %i.at
  %i.av = zext i8 %i.ab to i32                    ; 2 uses
  %i.aw = add nsw i32 %i.av, -1
  %i.ax = add nsw i32 %i.aw, %i.au
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 29 ; 2 uses
  %i.az = load i8, ptr %i.ay, align 1
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 30 ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 2             ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 31 ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 1
  %i.be = zext i8 %i.bb to i32
  %i.bf = shl nuw nsw i32 %i.be, %i.ao
  %i.bg = zext i8 %i.az to i32
  %i.bh = add nuw nsw i32 %i.bf, %i.bg
  %i.bi = mul nuw nsw i32 %i.bh, %i.at
  %i.bj = zext i8 %i.bd to i32
  %i.bk = add nsw i32 %i.bj, -1
  %i.bl = add nsw i32 %i.bk, %i.bi
  %.not28.i = icmp eq i32 %i.ax, %i.bl
  br i1 %.not28.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i8 %i.z, ptr %i.ay, align 1
  %.not29.i = icmp ne i8 %i.bb, %i.x              ; 2 uses
  %.not.i.i = icmp ne ptr %.val30.i, null
  %or.cond.not = select i1 %.not29.i, i1 %.not.i.i, i1 false
  br i1 %or.cond.not, label %fd_media_present.exit.i, label %fd_media_present.exit.thread.i

fd_media_present.exit.i:                          ; preds = %bb.i
  %i.bm = tail call zeroext i1 @blk_is_inserted(ptr noundef nonnull %.val30.i) #16
  br i1 %i.bm, label %bb.j, label %fd_media_present.exit.thread.i

bb.j:                                             ; preds = %fd_media_present.exit.i
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 45
  store i8 0, ptr %i.bn, align 1
  br label %fd_media_present.exit.thread.i

fd_media_present.exit.thread.i:                   ; preds = %bb.j, %fd_media_present.exit.i, %bb.i
  store i8 %i.x, ptr %i.ba, align 2
  store i8 %i.ab, ptr %i.bc, align 1
  %.val.i.pre = load ptr, ptr %i.r, align 8
  br label %bb.k

bb.k:                                             ; preds = %fd_media_present.exit.thread.i, %bb.h
  %.val.i = phi ptr [ %.val.i.pre, %fd_media_present.exit.thread.i ], [ %.val30.i, %bb.h ] ; 2 uses
  %.1.i = phi i1 [ %.not29.i, %fd_media_present.exit.thread.i ], [ false, %bb.h ]
  %.not.i31.i = icmp eq ptr %.val.i, null
  br i1 %.not.i31.i, label %fd_seek.exit.thread110, label %fd_media_present.exit32.i

fd_media_present.exit32.i:                        ; preds = %bb.k
  %i.bo = tail call zeroext i1 @blk_is_inserted(ptr noundef nonnull %.val.i) #16
  %cond.fr.i = freeze i1 %i.bo
  br i1 %cond.fr.i, label %fd_seek.exit, label %fd_seek.exit.thread110

fd_seek.exit:                                     ; preds = %fd_media_present.exit32.i
  br i1 %.1.i, label %bb.l, label %bb.m

fd_seek.exit.thread:                              ; preds = %get_cur_drv.exit, %bb.f
  tail call fastcc void @fdctrl_stop_transfer(ptr noundef nonnull %0, i8 noundef zeroext 64, i8 noundef zeroext 0, i8 noundef zeroext 0)
  %i.bp = load ptr, ptr %i.a, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 3
  store i8 %i.x, ptr %i.bq, align 1
  %i.br = load ptr, ptr %i.a, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  store i8 %i.z, ptr %i.bs, align 1
  %i.bt = load ptr, ptr %i.a, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 5
  store i8 %i.ab, ptr %i.bu, align 1
  br label %bb.aa

fd_seek.exit.thread110:                           ; preds = %bb.k, %fd_media_present.exit32.i
  tail call fastcc void @fdctrl_stop_transfer(ptr noundef nonnull %0, i8 noundef zeroext 64, i8 noundef zeroext 1, i8 noundef zeroext 0)
  %i.bv = load ptr, ptr %i.a, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 3
  store i8 %i.x, ptr %i.bw, align 1
  %i.bx = load ptr, ptr %i.a, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  store i8 %i.z, ptr %i.by, align 1
  %i.bz = load ptr, ptr %i.a, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 5
  store i8 %i.ab, ptr %i.ca, align 1
  br label %bb.aa

fd_seek.exit.thread112:                           ; preds = %bb.g
  tail call fastcc void @fdctrl_stop_transfer(ptr noundef nonnull %0, i8 noundef zeroext 64, i8 noundef zeroext -128, i8 noundef zeroext 0)
end_hunk_1
