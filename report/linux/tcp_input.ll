inline.NumInlined: 1215
inline.NumDeleted: 412
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@tcp_data_queue:bb.a
bb.dt:                                            ; preds = %bb.ds
  %i.ug = load i32, ptr %i.am, align 8
  %i.uh = sub i32 %i.tz, %i.ug
  %i.ui = icmp slt i32 %i.uh, 0
  %..i.i179.i = select i1 %i.ui, i64 50, i64 51
  %i.uj = getelementptr i8, ptr %.val15.i.i177.i, i64 744
  %i.uk = load ptr, ptr %i.uj, align 8
  %i.ul = getelementptr [8 x i8], ptr %i.uk, i64 %..i.i179.i ; 2 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ul, ptr elementtype(i64) %i.ul) #22, !srcloc !175
  %i.um = load i16, ptr %i.ai, align 4
  %i.un = or i16 %i.um, 4
  store i16 %i.un, ptr %i.ai, align 4
  store i32 %i.tz, ptr %i.sr, align 8
  br label %tcp_dsack_extend.exit180.sink.split.i

bb.du:                                            ; preds = %bb.dq
  %i.uo = load i32, ptr %i.ss, align 4            ; 2 uses
  %i.up = sub i32 %i.uo, %i.tz
  %i.uq = icmp slt i32 %i.up, 0
  br i1 %i.uq, label %tcp_dsack_extend.exit180.i, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.ur = load i32, ptr %i.sr, align 8            ; 2 uses
  %i.us = sub i32 %i.ua, %i.ur
  %i.ut = icmp slt i32 %i.us, 0
  br i1 %i.ut, label %tcp_dsack_extend.exit180.i, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.uu = sub i32 %i.tz, %i.ur
  %i.uv = icmp slt i32 %i.uu, 0
  br i1 %i.uv, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  store i32 %i.tz, ptr %i.sr, align 8
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.dw
  %i.uw = sub i32 %i.uo, %i.ua
  %i.ux = icmp slt i32 %i.uw, 0
  br i1 %i.ux, label %tcp_dsack_extend.exit180.sink.split.i, label %tcp_dsack_extend.exit180.i

tcp_dsack_extend.exit180.sink.split.i:            ; preds = %bb.dy, %bb.dt
  store i32 %i.ua, ptr %i.ss, align 4
  br label %tcp_dsack_extend.exit180.i

tcp_dsack_extend.exit180.i:                       ; preds = %tcp_dsack_extend.exit180.sink.split.i, %bb.dy, %bb.dv, %bb.du, %bb.ds, %bb.dr
  %.val.i127 = load ptr, ptr %i.or, align 16
  %i.uy = getelementptr i8, ptr %.val.i127, i64 744
  %i.uz = load ptr, ptr %i.uy, align 8
  %i.va = getelementptr i8, ptr %i.uz, i64 680    ; 2 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.va, ptr elementtype(i64) %i.va) #22, !srcloc !203
  call fastcc void @tcp_drop_reason(ptr noundef %0, ptr noundef nonnull %i.st, i32 noundef 35) #24, !srcloc !204
  %i.vb = call ptr @rb_next(ptr noundef %1) #23   ; 2 uses
  %.not145.i = icmp eq ptr %i.vb, null
  br i1 %.not145.i, label %.critedge.i, label %bb.de, !llvm.loop !205

.critedge.i:                                      ; preds = %tcp_dsack_extend.exit180.i, %bb.dd
  store ptr %1, ptr %i.pf, align 16
  br label %tcp_dsack_set.exit.i

tcp_dsack_set.exit.i:                             ; preds = %bb.de, %.critedge.i, %bb.dp, %bb.do, %bb.dl, %bb.dk, %bb.dj, %bb.di, %bb.dh, %bb.co, %bb.cn, %bb.cm, %bb.cg
  %.0.i = phi ptr [ null, %bb.cg ], [ null, %bb.co ], [ %1, %.critedge.i ], [ null, %bb.cm ], [ null, %bb.cn ], [ %1, %bb.dp ], [ %1, %bb.do ], [ %1, %bb.dl ], [ %1, %bb.dk ], [ %1, %bb.dj ], [ %1, %bb.di ], [ %1, %bb.dh ], [ %1, %bb.de ] ; 6 uses
  %.val158.i = load i16, ptr %i.ai, align 4
  %i.vc = and i16 %.val158.i, 112
  %.not187.i = icmp eq i16 %i.vc, 0
  br i1 %.not187.i, label %tcp_sack_new_ofo_skb.exit.i, label %bb.dz

bb.dz:                                            ; preds = %tcp_dsack_set.exit.i
  %i.vd = getelementptr i8, ptr %0, i64 2144      ; 4 uses
  %i.ve = getelementptr i8, ptr %0, i64 1783      ; 7 uses
  %i.vf = load i8, ptr %i.ve, align 1             ; 4 uses
  %i.vg = zext i8 %i.vf to i32                    ; 3 uses
  %.not.i181.i = icmp eq i8 %i.vf, 0
  br i1 %.not.i181.i, label %.loopexit.i.i, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.dz
  %i.vh = add nsw i32 %i.vg, -1                   ; 3 uses
  %i.vi = zext nneg i32 %i.vh to i64
  %i.vj = shl nuw nsw i64 %i.vi, 3
  %i.vk = getelementptr i8, ptr %0, i64 %i.vj     ; 2 uses
  %scevgep.i.i = getelementptr i8, ptr %i.vk, i64 2152 ; 2 uses
  %scevgep81.i.i = getelementptr i8, ptr %i.vk, i64 2144
  br label %.preheader.i.i120

.preheader.i.i120:                                ; preds = %tcp_sack_extend.exit.i.i, %.preheader.preheader.i.i
  %.063.i.i = phi i32 [ %i.xw, %tcp_sack_extend.exit.i.i ], [ 0, %.preheader.preheader.i.i ] ; 4 uses
  %.03962.i.i = phi ptr [ %i.xx, %tcp_sack_extend.exit.i.i ], [ %i.vd, %.preheader.preheader.i.i ] ; 7 uses
  %i.vl = getelementptr i8, ptr %.03962.i.i, i64 4
  %i.vm = load i32, ptr %i.vl, align 4            ; 2 uses
  %i.vn = sub i32 %i.vm, %i.ov
  %i.vo = icmp slt i32 %i.vn, 0
  br i1 %i.vo, label %tcp_sack_extend.exit.i.i, label %bb.ea

bb.ea:                                            ; preds = %.preheader.i.i120
  %i.vp = load i32, ptr %.03962.i.i, align 4      ; 2 uses
  %i.vq = sub i32 %i.ow, %i.vp
  %i.vr = icmp slt i32 %i.vq, 0
  br i1 %i.vr, label %tcp_sack_extend.exit.i.i, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.vs = getelementptr i8, ptr %.03962.i.i, i64 4
  %i.vt = sub i32 %i.ov, %i.vp
  %i.vu = icmp slt i32 %i.vt, 0
  br i1 %i.vu, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %bb.eb
  store i32 %i.ov, ptr %.03962.i.i, align 4
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.eb
  %i.vv = sub i32 %i.vm, %i.ow
  %i.vw = icmp slt i32 %i.vv, 0
  br i1 %i.vw, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %bb.ed
  store i32 %i.ow, ptr %i.vs, align 4
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %bb.ed
  %i.vx = icmp samesign ugt i32 %.063.i.i, 1
  br i1 %i.vx, label %bb.eg, label %tcp_sack_compress_send_ack.exit.i.i

bb.eg:                                            ; preds = %bb.ef
  %i.vy = getelementptr i8, ptr %0, i64 1920      ; 3 uses
  %i.vz = load i8, ptr %i.vy, align 64
  %.not.i.i.i125 = icmp eq i8 %i.vz, 0
  br i1 %.not.i.i.i125, label %.lr.ph68.preheader.i.i, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.wa = getelementptr i8, ptr %0, i64 2048
  %i.wb = call i32 @hrtimer_try_to_cancel(ptr noundef %i.wa) #23
  %i.wc = icmp eq i32 %i.wb, 1
  br i1 %i.wc, label %bb.ei, label %.thread.i.i.i

bb.ei:                                            ; preds = %bb.eh
  %i.wd = getelementptr i8, ptr %0, i64 128       ; 3 uses
  %i.we = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.wd, i32 -1, ptr elementtype(i32) %i.wd) #22, !srcloc !54
  %i.wf = icmp slt i32 %i.we, 2
  br i1 %i.wf, label %bb.ej, label %.thread.i.i.i, !prof !17

bb.ej:                                            ; preds = %bb.ei
  call void @refcount_warn_saturate(ptr noundef %i.wd, i32 noundef 4) #23
  br label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.eh, %bb.ei, %bb.ej
  %i.wg = load i8, ptr %i.vy, align 64
  %i.wh = zext i8 %i.wg to i64
  %i.wi = add nsw i64 %i.wh, -1
  %.val.i.i.i126 = load ptr, ptr %i.or, align 16
  %i.wj = getelementptr i8, ptr %.val.i.i.i126, i64 744
  %i.wk = load ptr, ptr %i.wj, align 8
  %i.wl = getelementptr i8, ptr %i.wk, i64 952    ; 2 uses
  call void asm sideeffect "addq $1, %gs:$0", "=*m,re,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.wl, i64 %i.wi, ptr elementtype(i64) %i.wl) #22, !srcloc !55
  store i8 0, ptr %i.vy, align 64
  call void @tcp_send_ack(ptr noundef %0) #23
  br label %.lr.ph68.preheader.i.i

tcp_sack_compress_send_ack.exit.i.i:              ; preds = %bb.ef
  %.not69.i.i = icmp eq i32 %.063.i.i, 0
  br i1 %.not69.i.i, label %._crit_edge.i.i, label %.lr.ph68.preheader.i.i

.lr.ph68.preheader.i.i:                           ; preds = %tcp_sack_compress_send_ack.exit.i.i, %.thread.i.i.i, %bb.eg
  %.pre.i.i = load i64, ptr %.03962.i.i, align 4
  br label %.lr.ph68.i.i

.lr.ph68.i.i:                                     ; preds = %.lr.ph68.i.i, %.lr.ph68.preheader.i.i
  %.167.i.i = phi i32 [ %i.wo, %.lr.ph68.i.i ], [ %.063.i.i, %.lr.ph68.preheader.i.i ] ; 2 uses
  %.14066.i.i = phi ptr [ %i.wm, %.lr.ph68.i.i ], [ %.03962.i.i, %.lr.ph68.preheader.i.i ] ; 2 uses
  %i.wm = getelementptr i8, ptr %.14066.i.i, i64 -8 ; 3 uses
  %i.wn = load i64, ptr %i.wm, align 4
  store i64 %i.wn, ptr %.14066.i.i, align 4
  store i64 %.pre.i.i, ptr %i.wm, align 4
  %i.wo = add nsw i32 %.167.i.i, -1
  %i.wp = icmp sgt i32 %.167.i.i, 1
  br i1 %i.wp, label %.lr.ph68.i.i, label %._crit_edge.i.i, !llvm.loop !206

._crit_edge.i.i:                                  ; preds = %.lr.ph68.i.i, %tcp_sack_compress_send_ack.exit.i.i
  %.not44.i.i = icmp eq i8 %i.vf, 1
  br i1 %.not44.i.i, label %tcp_sack_new_ofo_skb.exit.i, label %bb.ek

bb.ek:                                            ; preds = %._crit_edge.i.i
  %.promoted.i.i.i = load i8, ptr %i.ve, align 1  ; 2 uses
  %i.wq = icmp ugt i8 %.promoted.i.i.i, 1
  br i1 %i.wq, label %.lr.ph21.lr.ph.i.i.i, label %tcp_sack_new_ofo_skb.exit.i

.lr.ph21.lr.ph.i.i.i:                             ; preds = %bb.ek
  %i.wr = getelementptr i8, ptr %0, i64 2152
  %i.ws = getelementptr i8, ptr %0, i64 2148      ; 2 uses
  br label %.lr.ph21.i.i.i

.lr.ph21.i.i.i:                                   ; preds = %tcp_sack_extend.exit.i.i.i, %.lr.ph21.lr.ph.i.i.i
  %indvar.i.i.i = phi i64 [ 0, %.lr.ph21.lr.ph.i.i.i ], [ %indvar.next.i.i.i, %tcp_sack_extend.exit.i.i.i ] ; 3 uses
  %.017.ph24.i.i.i = phi ptr [ %i.wr, %.lr.ph21.lr.ph.i.i.i ], [ %i.xt, %tcp_sack_extend.exit.i.i.i ] ; 3 uses
  %.018.ph23.i.i.i = phi i32 [ 1, %.lr.ph21.lr.ph.i.i.i ], [ %i.xs, %tcp_sack_extend.exit.i.i.i ] ; 3 uses
  %i.wt = phi i8 [ %.promoted.i.i.i, %.lr.ph21.lr.ph.i.i.i ], [ %i.wz, %tcp_sack_extend.exit.i.i.i ] ; 2 uses
  %i.wu = shl nuw nsw i64 %indvar.i.i.i, 3
  %i.wv = getelementptr i8, ptr %0, i64 %i.wu     ; 2 uses
  %scevgep.i.i.i = getelementptr i8, ptr %i.wv, i64 2152
  %scevgep27.i.i.i = getelementptr i8, ptr %i.wv, i64 2160
  %i.ww = getelementptr i8, ptr %.017.ph24.i.i.i, i64 4
  %i.wx = trunc nuw i32 %.018.ph23.i.i.i to i8
  br label %bb.el

.loopexit.i.i.i:                                  ; preds = %.lr.ph.preheader.i.i.i, %bb.er
  %i.wy = icmp ugt i8 %i.xp, %i.wx
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %i.wy, label %bb.el, label %tcp_sack_new_ofo_skb.exit.i

bb.el:                                            ; preds = %.loopexit.i.i.i, %.lr.ph21.i.i.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %.loopexit.i.i.i ], [ 0, %.lr.ph21.i.i.i ] ; 2 uses
  %i.wz = phi i8 [ %i.xp, %.loopexit.i.i.i ], [ %i.wt, %.lr.ph21.i.i.i ] ; 3 uses
  %2 = trunc nuw i64 %indvars.iv to i8
  %3 = xor i8 %2, -1
  %4 = add i8 %i.wt, %3
  %5 = zext i8 %4 to i64
  %reass.sub.i.i.i = sub nsw i64 %5, %indvar.i.i.i
  %i.xa = shl i64 %reass.sub.i.i.i, 3
  %6 = add i64 %i.xa, 34359738352
  %i.xb = and i64 %6, 34359738360
  %i.xc = add nuw nsw i64 %i.xb, 8
  %i.xd = load i32, ptr %.017.ph24.i.i.i, align 4 ; 3 uses
  %i.xe = load i32, ptr %i.ww, align 4            ; 3 uses
  %i.xf = load i32, ptr %i.ws, align 4            ; 2 uses
  %i.xg = sub i32 %i.xf, %i.xd
  %i.xh = icmp slt i32 %i.xg, 0
  br i1 %i.xh, label %tcp_sack_extend.exit.i.i.i, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.xi = load i32, ptr %i.vd, align 16           ; 2 uses
  %i.xj = sub i32 %i.xe, %i.xi
  %i.xk = icmp slt i32 %i.xj, 0
  br i1 %i.xk, label %tcp_sack_extend.exit.i.i.i, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.xl = sub i32 %i.xd, %i.xi
  %i.xm = icmp slt i32 %i.xl, 0
  br i1 %i.xm, label %bb.eo, label %bb.ep

bb.eo:                                            ; preds = %bb.en
  store i32 %i.xd, ptr %i.vd, align 16
  br label %bb.ep

bb.ep:                                            ; preds = %bb.eo, %bb.en
  %i.xn = sub i32 %i.xf, %i.xe
  %i.xo = icmp slt i32 %i.xn, 0
  br i1 %i.xo, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %bb.ep
  store i32 %i.xe, ptr %i.ws, align 4
  br label %bb.er

bb.er:                                            ; preds = %bb.eq, %bb.ep
  %i.xp = add i8 %i.wz, -1                        ; 4 uses
  store i8 %i.xp, ptr %i.ve, align 1
  %i.xq = zext i8 %i.xp to i32
  %i.xr = icmp samesign ult i32 %.018.ph23.i.i.i, %i.xq
  br i1 %i.xr, label %.lr.ph.preheader.i.i.i, label %.loopexit.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.er
  call void @llvm.memmove.p0.p0.i64(ptr noundef align 4 %scevgep.i.i.i, ptr noundef align 4 %scevgep27.i.i.i, i64 %i.xc, i1 false)
  br label %.loopexit.i.i.i

tcp_sack_extend.exit.i.i.i:                       ; preds = %bb.em, %bb.el
  %i.xs = add nuw nsw i32 %.018.ph23.i.i.i, 1     ; 2 uses
  %i.xt = getelementptr i8, ptr %.017.ph24.i.i.i, i64 8
  %i.xu = zext i8 %i.wz to i32
  %i.xv = icmp samesign ult i32 %i.xs, %i.xu
  %indvar.next.i.i.i = add nuw nsw i64 %indvar.i.i.i, 1
  br i1 %i.xv, label %.lr.ph21.i.i.i, label %tcp_sack_new_ofo_skb.exit.i, !llvm.loop !207

tcp_sack_extend.exit.i.i:                         ; preds = %bb.ea, %.preheader.i.i120
  %i.xw = add nuw nsw i32 %.063.i.i, 1            ; 2 uses
  %i.xx = getelementptr i8, ptr %.03962.i.i, i64 8
  %exitcond.not.i.i = icmp eq i32 %i.xw, %i.vg
  br i1 %exitcond.not.i.i, label %bb.es, label %.preheader.i.i120, !llvm.loop !208

bb.es:                                            ; preds = %tcp_sack_extend.exit.i.i
  %.not70.i.i = icmp eq i32 %i.vh, 0
  br i1 %.not70.i.i, label %.lr.ph.preheader.i.i, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.xy = getelementptr i8, ptr %0, i64 1920      ; 3 uses
  %i.xz = load i8, ptr %i.xy, align 64
  %.not.i45.i.i = icmp eq i8 %i.xz, 0
  br i1 %.not.i45.i.i, label %tcp_sack_compress_send_ack.exit52.i.i, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.ya = getelementptr i8, ptr %0, i64 2048
  %i.yb = call i32 @hrtimer_try_to_cancel(ptr noundef %i.ya) #23
  %i.yc = icmp eq i32 %i.yb, 1
  br i1 %i.yc, label %bb.ev, label %.thread.i47.i.i

bb.ev:                                            ; preds = %bb.eu
  %i.yd = getelementptr i8, ptr %0, i64 128       ; 3 uses
  %i.ye = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.yd, i32 -1, ptr elementtype(i32) %i.yd) #22, !srcloc !54
  %i.yf = icmp slt i32 %i.ye, 2
  br i1 %i.yf, label %bb.ew, label %.thread.i47.i.i, !prof !17

bb.ew:                                            ; preds = %bb.ev
  call void @refcount_warn_saturate(ptr noundef %i.yd, i32 noundef 4) #23
  br label %.thread.i47.i.i

.thread.i47.i.i:                                  ; preds = %bb.eu, %bb.ev, %bb.ew
  %i.yg = load i8, ptr %i.xy, align 64
  %i.yh = zext i8 %i.yg to i64
  %i.yi = add nsw i64 %i.yh, -1
  %.val.i48.i.i = load ptr, ptr %i.or, align 16
  %i.yj = getelementptr i8, ptr %.val.i48.i.i, i64 744
  %i.yk = load ptr, ptr %i.yj, align 8
  %i.yl = getelementptr i8, ptr %i.yk, i64 952    ; 2 uses
  call void asm sideeffect "addq $1, %gs:$0", "=*m,re,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.yl, i64 %i.yi, ptr elementtype(i64) %i.yl) #22, !srcloc !55
  store i8 0, ptr %i.xy, align 64
  call void @tcp_send_ack(ptr noundef %0) #23
  br label %tcp_sack_compress_send_ack.exit52.i.i

tcp_sack_compress_send_ack.exit52.i.i:            ; preds = %.thread.i47.i.i, %bb.et
  %i.ym = icmp ugt i8 %i.vf, 3
  br i1 %i.ym, label %bb.ex, label %.lr.ph.preheader.i.i

bb.ex:                                            ; preds = %tcp_sack_compress_send_ack.exit52.i.i
  %i.yn = load i8, ptr %i.ve, align 1
  %i.yo = add i8 %i.yn, -1
  store i8 %i.yo, ptr %i.ve, align 1
  br label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.ex, %tcp_sack_compress_send_ack.exit52.i.i, %bb.es
  %.241.i.i = phi ptr [ %scevgep81.i.i, %bb.ex ], [ %scevgep.i.i, %tcp_sack_compress_send_ack.exit52.i.i ], [ %scevgep.i.i, %bb.es ] ; 2 uses
  %.2.i.i = phi i32 [ %i.vh, %bb.ex ], [ %i.vg, %tcp_sack_compress_send_ack.exit52.i.i ], [ 1, %bb.es ]
  %i.yp = add nsw i32 %.2.i.i, -1
  %i.yq = zext i32 %i.yp to i64                   ; 2 uses
  %i.yr = mul nsw i64 %i.yq, -8
  %scevgep87.i.i = getelementptr i8, ptr %.241.i.i, i64 %i.yr
  %i.ys = shl nuw nsw i64 %i.yq, 3                ; 2 uses
  %i.yt = sub nuw nsw i64 -8, %i.ys
  %scevgep88.i.i = getelementptr i8, ptr %.241.i.i, i64 %i.yt ; 2 uses
  %i.yu = add nuw nsw i64 %i.ys, 8
  call void @llvm.memmove.p0.p0.i64(ptr noundef align 4 %scevgep87.i.i, ptr noundef align 4 %scevgep88.i.i, i64 %i.yu, i1 false)
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.preheader.i.i, %bb.dz
  %.4.i.i = phi ptr [ %i.vd, %bb.dz ], [ %scevgep88.i.i, %.lr.ph.preheader.i.i ] ; 2 uses
  store i32 %i.ov, ptr %.4.i.i, align 4
  %i.yv = getelementptr i8, ptr %.4.i.i, i64 4
  store i32 %i.ow, ptr %i.yv, align 4
  %i.yw = load i8, ptr %i.ve, align 1
  %i.yx = add i8 %i.yw, 1
  store i8 %i.yx, ptr %i.ve, align 1
  br label %tcp_sack_new_ofo_skb.exit.i

tcp_sack_new_ofo_skb.exit.i:                      ; preds = %tcp_sack_extend.exit.i.i.i, %.loopexit.i.i.i, %.loopexit.i.i, %bb.ek, %._crit_edge.i.i, %tcp_dsack_set.exit.i, %bb.cd
  %.1.i = phi ptr [ %1, %bb.cd ], [ %.0.i, %tcp_dsack_set.exit.i ], [ %.0.i, %._crit_edge.i.i ], [ %.0.i, %bb.ek ], [ %.0.i, %.loopexit.i.i ], [ %.0.i, %.loopexit.i.i.i ], [ %.0.i, %tcp_sack_extend.exit.i.i.i ] ; 8 uses
  %.not150.i = icmp eq ptr %.1.i, null
  br i1 %.not150.i, label %skb_set_owner_r.exit.i, label %bb.ey

bb.ey:                                            ; preds = %tcp_sack_new_ofo_skb.exit.i
  %.val157.i = load i16, ptr %i.ai, align 4
  %i.yy = and i16 %.val157.i, 112
  %.not189.i = icmp eq i16 %i.yy, 0
  br i1 %.not189.i, label %bb.fa, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  call fastcc void @tcp_grow_window(ptr noundef %0, ptr noundef nonnull %.1.i, i1 noundef zeroext false) #24, !srcloc !209
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ez, %bb.ey
  call void @skb_condense(ptr noundef nonnull %.1.i) #23
  %i.yz = getelementptr i8, ptr %.1.i, i64 96     ; 2 uses
  %i.za = load ptr, ptr %i.yz, align 8            ; 2 uses
  %.not.i.i182.i = icmp eq ptr %i.za, null
  br i1 %.not.i.i182.i, label %bb.fc, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  call void %i.za(ptr noundef nonnull %.1.i) #23, !inline_history !210
  br label %skb_orphan.exit.i.i

bb.fc:                                            ; preds = %bb.fa
  %i.zb = getelementptr i8, ptr %.1.i, i64 24
  %i.zc = load ptr, ptr %i.zb, align 8
  %.not6.i.i.i = icmp eq ptr %i.zc, null
  br i1 %.not6.i.i.i, label %skb_orphan.exit.i.i, label %bb.fd, !prof !42

bb.fd:                                            ; preds = %bb.fc
  call void asm sideeffect "586: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 586b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 586) #22, !srcloc !76
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.8, i32 3396, i32 0, i64 16) #22, !srcloc !77
  unreachable

skb_orphan.exit.i.i:                              ; preds = %bb.fc, %bb.fb
  %i.zd = getelementptr i8, ptr %.1.i, i64 24
  store ptr %0, ptr %i.zd, align 8
  store ptr @sock_rfree, ptr %i.yz, align 8
  %i.ze = getelementptr i8, ptr %.1.i, i64 216    ; 2 uses
  %i.zf = load i32, ptr %i.ze, align 8
  %i.zg = getelementptr i8, ptr %0, i64 192       ; 2 uses
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock addl $1, $0", "=*m,ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.zg, i32 %i.zf, ptr elementtype(i32) %i.zg) #22, !srcloc !73
  %i.zh = getelementptr i8, ptr %0, i64 40
  %.val.i.i183.i = load ptr, ptr %i.zh, align 8
  %i.zi = getelementptr i8, ptr %.val.i.i183.i, i64 248
  %.val.val.i.i.i121 = load ptr, ptr %i.zi, align 8
  %.not.i8.i.i = icmp eq ptr %.val.val.i.i.i121, null
  br i1 %.not.i8.i.i, label %skb_set_owner_r.exit.i, label %bb.fe

bb.fe:                                            ; preds = %skb_orphan.exit.i.i
  %i.zj = load i32, ptr %i.ze, align 8
  %i.zk = getelementptr i8, ptr %0, i64 348       ; 2 uses
  %i.zl = load i32, ptr %i.zk, align 4
  %i.zm = sub i32 %i.zl, %i.zj
  store volatile i32 %i.zm, ptr %i.zk, align 4
  br label %skb_set_owner_r.exit.i

skb_set_owner_r.exit.i:                           ; preds = %bb.fe, %skb_orphan.exit.i.i, %tcp_sack_new_ofo_skb.exit.i
  %i.zn = getelementptr i8, ptr %0, i64 288
  %i.zo = load ptr, ptr %i.zn, align 8
  %.not152.i = icmp eq ptr %i.zo, null
  br i1 %.not152.i, label %tcp_data_queue_ofo.exit, label %bb.ff

bb.ff:                                            ; preds = %skb_set_owner_r.exit.i
  %i.zp = getelementptr i8, ptr %0, i64 1856
  %i.zq = load i32, ptr %i.zp, align 64           ; 2 uses
  %.val.i184.i = load ptr, ptr %i.or, align 16    ; 3 uses
end_hunk_0
