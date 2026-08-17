inline.NumInlined: 379
inline.NumDeleted: 77
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@dw_i3c_write:bb.a
  %i.ja = getelementptr inbounds nuw i8, ptr %i.a, i64 1340 ; 2 uses
  %i.jb = load i32, ptr %i.ja, align 4
  %i.jc = and i32 %i.jb, -17                      ; 2 uses
  store i32 %i.jc, ptr %i.ja, align 4
  %i.jd = getelementptr inbounds nuw i8, ptr %i.a, i64 1348
  %i.je = load i32, ptr %i.jd, align 4
  %i.jf = and i32 %i.je, %i.jc
  %i.jg = icmp ne i32 %i.jf, 0
  %i.jh = getelementptr inbounds nuw i8, ptr %i.a, i64 1088
  %i.ji = load ptr, ptr %i.jh, align 16
  %i.jj = zext i1 %i.jg to i32
  tail call void @qemu_set_irq(ptr noundef %i.ji, i32 noundef %i.jj) #6
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %dw_i3c_cmd_queue_reset.exit.i
  %i.jk = and i32 %i.p, 8
  %.not13.i = icmp eq i32 %i.jk, 0
  br i1 %.not13.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.jl = getelementptr inbounds nuw i8, ptr %i.a, i64 1152 ; 2 uses
  tail call void @fifo8_reset(ptr noundef nonnull %i.jl) #6
  %i.jm = tail call i32 @fifo8_num_free(ptr noundef nonnull %i.jl) #6
  %i.jn = add i32 %i.jm, 3
  %i.jo = lshr i32 %i.jn, 2
  %i.jp = getelementptr inbounds nuw i8, ptr %i.a, i64 1360 ; 2 uses
  %i.jq = load i32, ptr %i.jp, align 16
  %i.jr = and i32 %i.jo, 255
  %i.js = and i32 %i.jq, -256
  %i.jt = or disjoint i32 %i.jr, %i.js
  store i32 %i.jt, ptr %i.jp, align 16
  %i.ju = getelementptr inbounds nuw i8, ptr %i.a, i64 1340 ; 2 uses
  %i.jv = load i32, ptr %i.ju, align 4
  %i.jw = or i32 %i.jv, 1                         ; 2 uses
  store i32 %i.jw, ptr %i.ju, align 4
  %i.jx = getelementptr inbounds nuw i8, ptr %i.a, i64 1348
  %i.jy = load i32, ptr %i.jx, align 4
  %i.jz = and i32 %i.jy, %i.jw
  %i.ka = icmp ne i32 %i.jz, 0
  %i.kb = getelementptr inbounds nuw i8, ptr %i.a, i64 1088
  %i.kc = load ptr, ptr %i.kb, align 16
  %i.kd = zext i1 %i.ka to i32
  tail call void @qemu_set_irq(ptr noundef %i.kc, i32 noundef %i.kd) #6
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.ke = and i32 %i.p, 16
  %.not14.i = icmp eq i32 %i.ke, 0
  br i1 %.not14.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.kf = getelementptr inbounds nuw i8, ptr %i.a, i64 1176
  tail call void @fifo8_reset(ptr noundef nonnull %i.kf) #6
  %i.kg = getelementptr inbounds nuw i8, ptr %i.a, i64 1128
  %i.kh = tail call i32 @fifo8_num_used(ptr noundef nonnull %i.kg) #6
  %i.ki = getelementptr inbounds nuw i8, ptr %i.a, i64 1360 ; 2 uses
  %i.kj = load i32, ptr %i.ki, align 16
  %i.kk = and i32 %i.kj, -16711681
  %i.kl = shl i32 %i.kh, 14
  %i.km = add i32 %i.kl, 49152
  %i.kn = and i32 %i.km, 16711680
  %i.ko = or disjoint i32 %i.kn, %i.kk
  store i32 %i.ko, ptr %i.ki, align 16
  %i.kp = getelementptr inbounds nuw i8, ptr %i.a, i64 1340 ; 2 uses
  %i.kq = load i32, ptr %i.kp, align 4
  %i.kr = and i32 %i.kq, -3                       ; 2 uses
  store i32 %i.kr, ptr %i.kp, align 4
  %i.ks = getelementptr inbounds nuw i8, ptr %i.a, i64 1348
  %i.kt = load i32, ptr %i.ks, align 4
  %i.ku = and i32 %i.kt, %i.kr
  %i.kv = icmp ne i32 %i.ku, 0
  %i.kw = getelementptr inbounds nuw i8, ptr %i.a, i64 1088
  %i.kx = load ptr, ptr %i.kw, align 16
  %i.ky = zext i1 %i.kv to i32
  tail call void @qemu_set_irq(ptr noundef %i.kx, i32 noundef %i.ky) #6
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.kz = and i32 %i.p, 32
  %.not15.i = icmp eq i32 %i.kz, 0
  br i1 %.not15.i, label %dw_i3c_push_tx.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.la = getelementptr inbounds nuw i8, ptr %i.a, i64 1200
  tail call void @fifo8_reset(ptr noundef nonnull %i.la) #6
  %i.lb = getelementptr inbounds nuw i8, ptr %i.a, i64 1128
  %i.lc = tail call i32 @fifo8_num_used(ptr noundef nonnull %i.lb) #6
  %i.ld = getelementptr inbounds nuw i8, ptr %i.a, i64 1356 ; 2 uses
  %i.le = load i32, ptr %i.ld, align 4
  %i.lf = and i32 %i.le, -16711681
  %i.lg = shl i32 %i.lc, 14
  %i.lh = add i32 %i.lg, 49152
  %i.li = and i32 %i.lh, 16711680
  %i.lj = or disjoint i32 %i.li, %i.lf
  store i32 %i.lj, ptr %i.ld, align 4
  %i.lk = getelementptr inbounds nuw i8, ptr %i.a, i64 1340 ; 2 uses
  %i.ll = load i32, ptr %i.lk, align 4
  %i.lm = and i32 %i.ll, -5                       ; 2 uses
  store i32 %i.lm, ptr %i.lk, align 4
  %i.ln = getelementptr inbounds nuw i8, ptr %i.a, i64 1348
  %i.lo = load i32, ptr %i.ln, align 4
  %i.lp = and i32 %i.lo, %i.lm
  %i.lq = icmp ne i32 %i.lp, 0
  %i.lr = getelementptr inbounds nuw i8, ptr %i.a, i64 1088
  %i.ls = load ptr, ptr %i.lr, align 16
  %i.lt = zext i1 %i.lq to i32
  tail call void @qemu_set_irq(ptr noundef %i.ls, i32 noundef %i.lt) #6
  br label %dw_i3c_push_tx.exit

bb.ap:                                            ; preds = %trace_dw_i3c_write.exit
  %i.lu = and i32 %i.p, 16352
  %i.lv = xor i32 %i.lu, -1
  %i.lw = getelementptr inbounds nuw i8, ptr %i.a, i64 1340 ; 2 uses
  %i.lx = load i32, ptr %i.lw, align 4
  %i.ly = and i32 %i.lx, %i.lv                    ; 2 uses
  store i32 %i.ly, ptr %i.lw, align 4
  %i.lz = getelementptr inbounds nuw i8, ptr %i.a, i64 1348
  %i.ma = load i32, ptr %i.lz, align 4
  %i.mb = and i32 %i.ma, %i.ly
  %i.mc = icmp ne i32 %i.mb, 0
  %i.md = getelementptr inbounds nuw i8, ptr %i.a, i64 1088
  %i.me = load ptr, ptr %i.md, align 16
  %i.mf = zext i1 %i.mc to i32
  tail call void @qemu_set_irq(ptr noundef %i.me, i32 noundef %i.mf) #6
  br label %dw_i3c_push_tx.exit

bb.aq:                                            ; preds = %trace_dw_i3c_write.exit
  %i.mg = getelementptr inbounds nuw i8, ptr %i.a, i64 1344
  store i32 %i.p, ptr %i.mg, align 16
  %i.mh = getelementptr inbounds nuw i8, ptr %i.a, i64 1348
  %i.mi = load i32, ptr %i.mh, align 4
  %i.mj = getelementptr inbounds nuw i8, ptr %i.a, i64 1340
  %i.mk = load i32, ptr %i.mj, align 4
  %i.ml = and i32 %i.mk, %i.mi
  %i.mm = icmp ne i32 %i.ml, 0
  %i.mn = getelementptr inbounds nuw i8, ptr %i.a, i64 1088
  %i.mo = load ptr, ptr %i.mn, align 16
  %i.mp = zext i1 %i.mm to i32
  tail call void @qemu_set_irq(ptr noundef %i.mo, i32 noundef %i.mp) #6
  br label %dw_i3c_push_tx.exit

bb.ar:                                            ; preds = %trace_dw_i3c_write.exit
  %i.mq = getelementptr inbounds nuw i8, ptr %i.a, i64 1348
  store i32 %i.p, ptr %i.mq, align 4
  %i.mr = getelementptr inbounds nuw i8, ptr %i.a, i64 1340
  %i.ms = load i32, ptr %i.mr, align 4
  %i.mt = and i32 %i.ms, %i.p
  %i.mu = icmp ne i32 %i.mt, 0
  %i.mv = getelementptr inbounds nuw i8, ptr %i.a, i64 1088
  %i.mw = load ptr, ptr %i.mv, align 16
  %i.mx = zext i1 %i.mu to i32
  tail call void @qemu_set_irq(ptr noundef %i.mw, i32 noundef %i.mx) #6
  br label %dw_i3c_push_tx.exit

bb.as:                                            ; preds = %trace_dw_i3c_write.exit
  %i.my = getelementptr inbounds nuw i8, ptr %i.a, i64 1340
  store i32 %i.p, ptr %i.my, align 4
  %i.mz = getelementptr inbounds nuw i8, ptr %i.a, i64 1348
  %i.na = load i32, ptr %i.mz, align 4
  %i.nb = and i32 %i.na, %i.p
  %i.nc = icmp ne i32 %i.nb, 0
  %i.nd = getelementptr inbounds nuw i8, ptr %i.a, i64 1088
  %i.ne = load ptr, ptr %i.nd, align 16
  %i.nf = zext i1 %i.nc to i32
  tail call void @qemu_set_irq(ptr noundef %i.ne, i32 noundef %i.nf) #6
  br label %dw_i3c_push_tx.exit

bb.at:                                            ; preds = %trace_dw_i3c_write.exit
  %i.ng = getelementptr inbounds nuw i8, ptr %i.a, i64 1280
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %i.ng, i64 %i.l
  store i32 %i.p, ptr %i.nh, align 4
  br label %dw_i3c_push_tx.exit

dw_i3c_push_tx.exit:                              ; preds = %bb.ao, %bb.an, %bb.y, %bb.v, %bb.u, %bb.s, %trace_dw_i3c_push_tx.exit.i, %bb.n, %bb.e, %bb.f, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %dw_i3c_ctrl_w.exit
  ret void
}

declare zeroext i1 @fifo8_is_empty(ptr noundef) local_unnamed_addr #1

declare zeroext i8 @fifo8_pop(ptr noundef) local_unnamed_addr #1

declare i32 @fifo8_num_used(ptr noundef) local_unnamed_addr #1

declare void @qemu_set_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @object_get_canonical_path(ptr noundef) local_unnamed_addr #1

declare void @qemu_log(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @dw_i3c_cmd_queue_execute(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %1 = alloca %union.anon.56, align 8             ; 11 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca [4 x i8], align 4                 ; 8 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca i8, align 1                       ; 9 uses
  %i.i = alloca i32, align 4                      ; 11 uses
  %2 = alloca %union.anon.45, align 4             ; 5 uses
  %i.j = alloca i32, align 4                      ; 7 uses
  %i.k = alloca i8, align 1                       ; 4 uses
  %i.l = alloca i32, align 4                      ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1364 ; 28 uses
  %i.n = load i32, ptr %i.m, align 4
  %i.o = and i32 %i.n, -4128769
  store i32 %i.o, ptr %i.m, align 4
  %i.p = getelementptr i8, ptr %0, i64 1280       ; 23 uses
  %.val19 = load i32, ptr %i.p, align 16
  %i.q = icmp slt i32 %.val19, -1073741824
  br i1 %i.q, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1104 ; 3 uses
  %i.s = tail call i32 @fifo8_num_used(ptr noundef nonnull %i.r) #6
  %i.t = add i32 %i.s, 3
  %i.u = and i32 %i.t, 4
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.b
  %i.v = tail call zeroext i1 @fifo8_is_empty(ptr noundef nonnull %i.r) #6
  br i1 %i.v, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1264 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1096 ; 10 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1340 ; 17 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1269 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1372 ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1376 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.af = getelementptr i8, ptr %0, i64 1288      ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1152 ; 7 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1360 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1312
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1348 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %dw_i3c_transfer_cmd.exit
  %i.am = call fastcc i32 @dw_i3c_cmd_queue_pop(ptr noundef nonnull %0) ; 8 uses
  %i.an = call fastcc i32 @dw_i3c_cmd_queue_pop(ptr noundef nonnull %0) ; 24 uses
  %i.ao = load i8, ptr %i.w, align 16
  %i.ap = zext i8 %i.ao to i32
  %i.aq = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.aq, 0
  br i1 %.not.i, label %trace_dw_i3c_cmd_queue_execute.exit, label %bb.d, !prof !7

bb.d:                                             ; preds = %bb.c
  %i.ar = load i16, ptr @_TRACE_DW_I3C_CMD_QUEUE_EXECUTE_DSTATE, align 2
  %.not3.i = icmp eq i16 %i.ar, 0
  br i1 %.not3.i, label %trace_dw_i3c_cmd_queue_execute.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.as = load i32, ptr @qemu_loglevel, align 4
  %i.at = and i32 %i.as, 32768
  %.not4.i = icmp eq i32 %i.at, 0
  br i1 %.not4.i, label %trace_dw_i3c_cmd_queue_execute.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.32, i32 noundef range(i32 0, 256) %i.ap, i32 noundef %i.an, i32 noundef %i.am) #6
  br label %trace_dw_i3c_cmd_queue_execute.exit

trace_dw_i3c_cmd_queue_execute.exit:              ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %i.au = trunc i32 %i.an to i8                   ; 4 uses
  %trunc = and i8 %i.au, 7
  switch i8 %trunc, label %bb.dq [
    i8 0, label %bb.g
    i8 3, label %bb.cn
    i8 1, label %bb.dn
    i8 2, label %bb.dn
  ]

bb.g:                                             ; preds = %trace_dw_i3c_cmd_queue_execute.exit
  %i.av = and i32 %i.am, 7                        ; 2 uses
  %i.aw = load i32, ptr %i.m, align 4
  %i.ax = and i32 %i.aw, -251658241
  %i.ay = shl i32 %i.an, 21
  %i.az = and i32 %i.ay, 251658240
  %i.ba = or disjoint i32 %i.ax, %i.az
  store i32 %i.ba, ptr %i.m, align 4
  %i.bb = lshr i32 %i.an, 21
  %i.bc = and i32 %i.bb, 7
  switch i32 %i.bc, label %bb.p [
    i32 6, label %bb.h
    i32 5, label %bb.l
  ]

bb.h:                                             ; preds = %bb.g
  %.val42.i = load i32, ptr %i.af, align 8
  %i.bd = and i32 %.val42.i, 8
  %.not59.i = icmp eq i32 %i.bd, 0
  br i1 %.not59.i, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.be = call ptr @object_get_canonical_path(ptr noundef nonnull %0) #6 ; 2 uses
  %i.bf = load i32, ptr @qemu_loglevel, align 4
  %i.bg = and i32 %i.bf, 2048
  %.not60.i = icmp eq i32 %i.bg, 0
  br i1 %.not60.i, label %bb.k, label %bb.j, !prof !7

bb.j:                                             ; preds = %bb.i
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.33, ptr noundef %i.be) #6
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bh = load i32, ptr %i.m, align 4
  %i.bi = and i32 %i.bh, -4128769
  %i.bj = or disjoint i32 %i.bi, 1245184
  store i32 %i.bj, ptr %i.m, align 4
  call void @g_free(ptr noundef %i.be) #6
  br label %dw_i3c_transfer_cmd.exit

bb.l:                                             ; preds = %bb.g
  %.val43.i = load i32, ptr %i.af, align 8
  %i.bk = and i32 %.val43.i, 16
  %.not.i20 = icmp eq i32 %i.bk, 0
  br i1 %.not.i20, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.bl = call ptr @object_get_canonical_path(ptr noundef nonnull %0) #6 ; 2 uses
  %i.bm = load i32, ptr @qemu_loglevel, align 4
  %i.bn = and i32 %i.bm, 2048
  %.not58.i = icmp eq i32 %i.bn, 0
  br i1 %.not58.i, label %bb.o, label %bb.n, !prof !7

bb.n:                                             ; preds = %bb.m
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.34, ptr noundef %i.bl) #6
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bo = load i32, ptr %i.m, align 4
  %i.bp = and i32 %i.bo, -4128769
  %i.bq = or disjoint i32 %i.bp, 1245184
  store i32 %i.bq, ptr %i.m, align 4
  call void @g_free(ptr noundef %i.bl) #6
  br label %dw_i3c_transfer_cmd.exit

bb.p:                                             ; preds = %bb.l, %bb.h, %bb.g
  switch i32 %i.av, label %bb.ck [
    i32 1, label %bb.q
    i32 2, label %bb.bo
  ]

bb.q:                                             ; preds = %bb.p
  %.sroa.2.0.extract.shift.i.i = lshr i32 %i.am, 16 ; 4 uses
  %.sroa.2.0.extract.trunc.i.i = trunc nuw i32 %.sroa.2.0.extract.shift.i.i to i16 ; 4 uses
  %i.br = and i32 %i.an, 268435456
  %i.bs = icmp ne i32 %i.br, 0                    ; 4 uses
  %i.bt = lshr i32 %i.an, 16                      ; 2 uses
  %i.bu = trunc nuw i32 %i.bt to i16
  %i.bv = and i16 %i.bu, 31                       ; 5 uses
  %i.bw = and i32 %i.bt, 31                       ; 2 uses
  %i.bx = load i8, ptr %i.z, align 1
  %i.by = zext i8 %i.bx to i16
  %i.bz = icmp samesign ugt i16 %i.bv, %i.by
  br i1 %i.bz, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.ca = call ptr @object_get_canonical_path(ptr noundef nonnull %0) #6 ; 2 uses
  %i.cb = load i32, ptr @qemu_loglevel, align 4
  %i.cc = and i32 %i.cb, 2048
  %.not.i.i.i = icmp eq i32 %i.cc, 0
  br i1 %.not.i.i.i, label %bb.t, label %bb.s, !prof !7

bb.s:                                             ; preds = %bb.r
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.38, ptr noundef %i.ca, i32 noundef %i.bw) #6
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  call void @g_free(ptr noundef %i.ca) #6
  %.pre.i.i = load i32, ptr %i.aa, align 4
  %.pre66.i.i = trunc i32 %.pre.i.i to i16
  %.pre67.i.i = lshr i16 %.pre66.i.i, 2
  %.pre69.i.i = add nuw nsw i16 %.pre67.i.i, %i.bv
  %.pre71.i.i = zext nneg i16 %.pre69.i.i to i64
  %.phi.trans.insert51 = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %.pre71.i.i
  %.pre52 = load i32, ptr %.phi.trans.insert51, align 4
  br label %dw_i3c_target_addr.exit.i.i

bb.u:                                             ; preds = %bb.q
  %i.cd = load i32, ptr %i.aa, align 4
  %i.ce = trunc i32 %i.cd to i16
  %i.cf = lshr i16 %i.ce, 2
  %i.cg = add nuw nsw i16 %i.cf, %i.bv
  %i.ch = zext nneg i16 %i.cg to i64
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4            ; 4 uses
  %i.ck = icmp slt i32 %i.cj, 0
  %i.cl = and i32 %i.cj, 127
  %i.cm = lshr i32 %i.cj, 16
  %.0.in.i.i.i = select i1 %i.ck, i32 %i.cl, i32 %i.cm
  %.0.i.i.i = trunc i32 %.0.in.i.i.i to i8
  br label %dw_i3c_target_addr.exit.i.i

dw_i3c_target_addr.exit.i.i:                      ; preds = %bb.u, %bb.t
  %i.cn = phi i32 [ %.pre52, %bb.t ], [ %i.cj, %bb.u ]
  %.1.i.i.i = phi i8 [ 0, %bb.t ], [ %.0.i.i.i, %bb.u ]
  %i.co = icmp slt i32 %i.cn, 0                   ; 5 uses
  %i.cp = and i32 %i.an, 32768
  %.not.i.i = icmp eq i32 %i.cp, 0
  br i1 %.not.i.i, label %bb.ak, label %bb.v

bb.v:                                             ; preds = %dw_i3c_target_addr.exit.i.i
  %i.cq = load ptr, ptr %i.x, align 8
  %i.cr = call i32 @i3c_start_transfer(ptr noundef %i.cq, i8 noundef zeroext 126, i1 noundef zeroext false) #6
  %.not.i.i.i.i = icmp eq i32 %i.cr, 0
  br i1 %.not.i.i.i.i, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cs = call ptr @object_get_canonical_path(ptr noundef nonnull %0) #6 ; 2 uses
  %i.ct = load i32, ptr @qemu_loglevel, align 4
  %i.cu = and i32 %i.ct, 2048
  %.not32.i.i.i.i = icmp eq i32 %i.cu, 0
  br i1 %.not32.i.i.i.i, label %dw_i3c_send_start.exit.i.i.i, label %bb.x, !prof !7

bb.x:                                             ; preds = %bb.w
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.45, ptr noundef %i.cs, i32 noundef 126) #6
  br label %dw_i3c_send_start.exit.i.i.i

dw_i3c_send_start.exit.i.i.i:                     ; preds = %bb.x, %bb.w
  %i.cv = load i32, ptr %i.m, align 4
  %i.cw = and i32 %i.cv, -4144897
  %i.cx = or disjoint i32 %i.cw, 1249024
  store i32 %i.cx, ptr %i.m, align 4
  %i.cy = load i32, ptr %i.y, align 4
  %i.cz = or i32 %i.cy, 512
  store i32 %i.cz, ptr %i.y, align 4
  %i.da = load i32, ptr %i.p, align 16
  %i.db = or i32 %i.da, 1073741824
  store i32 %i.db, ptr %i.p, align 16
  call void @g_free(ptr noundef %i.cs) #6
  br label %dw_i3c_transfer_ccc.exit.thread.i.i

bb.y:                                             ; preds = %bb.v
  %i.dc = load i8, ptr %i.w, align 16
  %i.dd = zext i8 %i.dc to i32
  %i.de = lshr i32 %i.an, 7                       ; 2 uses
  %i.df = trunc i32 %i.de to i8
  %i.dg = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i17.i.i.i = icmp eq i32 %i.dg, 0
  br i1 %.not.i17.i.i.i, label %trace_dw_i3c_transfer_ccc.exit.i.i.i, label %bb.z, !prof !7

bb.z:                                             ; preds = %bb.y
  %i.dh = load i16, ptr @_TRACE_DW_I3C_TRANSFER_CCC_DSTATE, align 2
  %.not2.i.i.i.i = icmp eq i16 %i.dh, 0
  br i1 %.not2.i.i.i.i, label %trace_dw_i3c_transfer_ccc.exit.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.di = load i32, ptr @qemu_loglevel, align 4
  %i.dj = and i32 %i.di, 32768
  %.not3.i.i.i.i = icmp eq i32 %i.dj, 0
  br i1 %.not3.i.i.i.i, label %trace_dw_i3c_transfer_ccc.exit.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dk = and i32 %i.de, 255
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.39, i32 noundef range(i32 0, 256) %i.dd, i32 noundef %i.dk) #6
  br label %trace_dw_i3c_transfer_ccc.exit.i.i.i

trace_dw_i3c_transfer_ccc.exit.i.i.i:             ; preds = %bb.ab, %bb.aa, %bb.z, %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i8 %i.df, ptr %i.k, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #6
  store i32 0, ptr %i.l, align 4, !annotation !11
  %i.dl = call fastcc i32 @dw_i3c_send(ptr noundef nonnull %0, ptr noundef %i.k, i32 noundef 1, ptr noundef %i.l, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %.not14.i.i.i = icmp eq i32 %i.dl, 0
  br i1 %.not14.i.i.i, label %bb.ac, label %dw_i3c_transfer_ccc.exit.thread.i.i

bb.ac:                                            ; preds = %trace_dw_i3c_transfer_ccc.exit.i.i.i
  %i.dm = and i32 %i.an, 16384
  %.not15.i.i.i = icmp eq i32 %i.dm, 0
  br i1 %.not15.i.i.i, label %dw_i3c_transfer_ccc.exit.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dn = load i8, ptr %i.z, align 1
  %i.do = zext i8 %i.dn to i16
  %i.dp = icmp samesign ugt i16 %i.bv, %i.do
  br i1 %i.dp, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  %i.dq = call ptr @object_get_canonical_path(ptr noundef nonnull %0) #6 ; 2 uses
  %i.dr = load i32, ptr @qemu_loglevel, align 4
  %i.ds = and i32 %i.dr, 2048
  %.not.i18.i.i.i = icmp eq i32 %i.ds, 0
  br i1 %.not.i18.i.i.i, label %bb.ag, label %bb.af, !prof !7

bb.af:                                            ; preds = %bb.ae
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.38, ptr noundef %i.dq, i32 noundef %i.bw) #6
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  call void @g_free(ptr noundef %i.dq) #6
  br label %dw_i3c_target_addr.exit.i.i.i

bb.ah:                                            ; preds = %bb.ad
  %i.dt = load i32, ptr %i.aa, align 4
  %i.du = trunc i32 %i.dt to i16
  %i.dv = lshr i16 %i.du, 2
  %i.dw = add nuw nsw i16 %i.dv, %i.bv
  %i.dx = zext nneg i16 %i.dw to i64
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.dx
  %i.dz = load i32, ptr %i.dy, align 4            ; 3 uses
  %i.ea = icmp slt i32 %i.dz, 0
  %i.eb = and i32 %i.dz, 127
  %i.ec = lshr i32 %i.dz, 16
  %.0.in.i.i.i.i = select i1 %i.ea, i32 %i.eb, i32 %i.ec
  %.0.i.i.i.i = trunc i32 %.0.in.i.i.i.i to i8
  br label %dw_i3c_target_addr.exit.i.i.i

dw_i3c_target_addr.exit.i.i.i:                    ; preds = %bb.ah, %bb.ag
  %.1.i.i.i.i = phi i8 [ 0, %bb.ag ], [ %.0.i.i.i.i, %bb.ah ] ; 2 uses
  %i.ed = load ptr, ptr %i.x, align 8
  %i.ee = call i32 @i3c_start_transfer(ptr noundef %i.ed, i8 noundef zeroext %.1.i.i.i.i, i1 noundef zeroext %i.bs) #6
  %.not.i20.i.i.i = icmp eq i32 %i.ee, 0
  br i1 %.not.i20.i.i.i, label %dw_i3c_transfer_ccc.exit.i.i, label %bb.ai

bb.ai:                                            ; preds = %dw_i3c_target_addr.exit.i.i.i
  %i.ef = call ptr @object_get_canonical_path(ptr noundef nonnull %0) #6 ; 2 uses
  %i.eg = load i32, ptr @qemu_loglevel, align 4
  %i.eh = and i32 %i.eg, 2048
  %.not32.i21.i.i.i = icmp eq i32 %i.eh, 0
  br i1 %.not32.i21.i.i.i, label %dw_i3c_send_start.exit22.i.i.i, label %bb.aj, !prof !7

bb.aj:                                            ; preds = %bb.ai
  %i.ei = zext i8 %.1.i.i.i.i to i32
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.45, ptr noundef %i.ef, i32 noundef %i.ei) #6
  br label %dw_i3c_send_start.exit22.i.i.i

dw_i3c_send_start.exit22.i.i.i:                   ; preds = %bb.aj, %bb.ai
  %i.ej = load i32, ptr %i.m, align 4
  %i.ek = and i32 %i.ej, -4144897
  %i.el = or disjoint i32 %i.ek, 1249024
  store i32 %i.el, ptr %i.m, align 4
  %i.em = load i32, ptr %i.y, align 4
  %i.en = or i32 %i.em, 512
  store i32 %i.en, ptr %i.y, align 4
  %i.eo = load i32, ptr %i.p, align 16
  %i.ep = or i32 %i.eo, 1073741824
  store i32 %i.ep, ptr %i.p, align 16
  call void @g_free(ptr noundef %i.ef) #6
  br label %dw_i3c_transfer_ccc.exit.thread.i.i

bb.ak:                                            ; preds = %dw_i3c_target_addr.exit.i.i
  %i.eq = load i32, ptr %i.p, align 16
  %i.er = and i32 %i.eq, 1
  %.not42.i.i = icmp eq i32 %i.er, 0
  %brmerge.i.i = select i1 %.not42.i.i, i1 true, i1 %i.co
  br i1 %brmerge.i.i, label %dw_i3c_send_start.exit.thread.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.es = load ptr, ptr %i.x, align 8
  %i.et = call i32 @i3c_start_transfer(ptr noundef %i.es, i8 noundef zeroext 126, i1 noundef zeroext false) #6
  %.not.i50.i.i = icmp eq i32 %i.et, 0
  br i1 %.not.i50.i.i, label %dw_i3c_send_start.exit.thread.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.eu = call ptr @object_get_canonical_path(ptr noundef nonnull %0) #6 ; 2 uses
  %i.ev = load i32, ptr @qemu_loglevel, align 4
  %i.ew = and i32 %i.ev, 2048
  %.not32.i.i.i = icmp eq i32 %i.ew, 0
  br i1 %.not32.i.i.i, label %dw_i3c_send_start.exit.i.i, label %bb.an, !prof !7

bb.an:                                            ; preds = %bb.am
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.45, ptr noundef %i.eu, i32 noundef 126) #6
  br label %dw_i3c_send_start.exit.i.i

dw_i3c_send_start.exit.i.i:                       ; preds = %bb.an, %bb.am
  %i.ex = load i32, ptr %i.m, align 4
  %i.ey = and i32 %i.ex, -4144897
  %i.ez = or disjoint i32 %i.ey, 1249024
  store i32 %i.ez, ptr %i.m, align 4
  %i.fa = load i32, ptr %i.y, align 4
  %i.fb = or i32 %i.fa, 512
  store i32 %i.fb, ptr %i.y, align 4
  %i.fc = load i32, ptr %i.p, align 16
  %i.fd = or i32 %i.fc, 1073741824
  store i32 %i.fd, ptr %i.p, align 16
  call void @g_free(ptr noundef %i.eu) #6
  br label %dw_i3c_transfer_ccc.exit.thread.i.i

dw_i3c_send_start.exit.thread.i.i:                ; preds = %bb.al, %bb.ak
  %i.fe = call fastcc i32 @dw_i3c_send_start(ptr noundef nonnull %0, i8 noundef zeroext %.1.i.i.i, i1 noundef zeroext %i.bs, i1 noundef zeroext %i.co)
  %.not44.i.i = icmp eq i32 %i.fe, 0
  br i1 %.not44.i.i, label %dw_i3c_transfer_ccc.exit.i.i, label %dw_i3c_transfer_ccc.exit.thread.i.i

dw_i3c_transfer_ccc.exit.i.i:                     ; preds = %dw_i3c_send_start.exit.thread.i.i, %dw_i3c_target_addr.exit.i.i.i, %bb.ac
  br i1 %i.bs, label %bb.ao, label %bb.ar

bb.ao:                                            ; preds = %dw_i3c_transfer_ccc.exit.i.i
  %narrow.i.i = add nuw nsw i32 %.sroa.2.0.extract.shift.i.i, 3
  %i.ff = and i32 %narrow.i.i, 131068
  %i.fg = zext nneg i32 %i.ff to i64
  %i.fh = call noalias ptr @g_malloc0(i64 noundef %i.fg) #7 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #6
  store i32 0, ptr %i.j, align 4
  %i.fi = call fastcc i32 @dw_i3c_recv_data(ptr noundef nonnull %0, i1 noundef zeroext %i.co, ptr noundef %i.fh, i16 noundef zeroext %.sroa.2.0.extract.trunc.i.i, ptr noundef %i.j)
  %.not.i51.i.i = icmp eq i32 %i.fi, 0
  br i1 %.not.i51.i.i, label %.preheader.i.i.i, label %dw_i3c_rx.exit.i.i

.preheader.i.i.i:                                 ; preds = %bb.ao
  %i.fj = load i32, ptr %i.j, align 4             ; 2 uses
  %.not30.i.i.i = icmp ult i32 %i.fj, 4
  br i1 %.not30.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %.preheader.i.i.i
  %.023.lcssa.i.i.i = phi ptr [ %i.fh, %.preheader.i.i.i ], [ %i.fm, %.lr.ph.i.i.i ]
  %.lcssa.i.i.i = phi i32 [ %i.fj, %.preheader.i.i.i ], [ %i.fp, %.lr.ph.i.i.i ] ; 2 uses
  %i.fk = and i32 %.lcssa.i.i.i, 3
  %.not26.i.i.i = icmp eq i32 %i.fk, 0
  br i1 %.not26.i.i.i, label %bb.aq, label %bb.ap

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %.lr.ph.i.i.i
  %.028.i.i.i = phi i16 [ %i.fn, %.lr.ph.i.i.i ], [ 0, %.preheader.i.i.i ]
  %.02327.i.i.i = phi ptr [ %i.fm, %.lr.ph.i.i.i ], [ %i.fh, %.preheader.i.i.i ] ; 2 uses
  %i.fl = load i32, ptr %.02327.i.i.i, align 4
  call fastcc void @dw_i3c_push_rx(ptr noundef nonnull %0, i32 noundef %i.fl)
  %i.fm = getelementptr inbounds nuw i8, ptr %.02327.i.i.i, i64 4 ; 2 uses
  %i.fn = add i16 %.028.i.i.i, 1                  ; 2 uses
  %i.fo = zext i16 %i.fn to i32
  %i.fp = load i32, ptr %i.j, align 4             ; 2 uses
  %i.fq = lshr i32 %i.fp, 2
  %i.fr = icmp samesign ugt i32 %i.fq, %i.fo
  br i1 %i.fr, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !16

bb.ap:                                            ; preds = %._crit_edge.i.i.i
  %i.fs = load i32, ptr %.023.lcssa.i.i.i, align 4
  call fastcc void @dw_i3c_push_rx(ptr noundef nonnull %0, i32 noundef %i.fs)
  %.pre.i.i.i = load i32, ptr %i.j, align 4
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %._crit_edge.i.i.i
  %i.ft = phi i32 [ %.pre.i.i.i, %bb.ap ], [ %.lcssa.i.i.i, %._crit_edge.i.i.i ]
  %i.fu = trunc i32 %i.ft to i16
  br label %dw_i3c_rx.exit.i.i

dw_i3c_rx.exit.i.i:                               ; preds = %bb.aq, %bb.ao
  %.024.i.i.i = phi i16 [ %i.fu, %bb.aq ], [ 0, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #6
  call void @g_free(ptr noundef %i.fh) #6
  br label %bb.bj

bb.ar:                                            ; preds = %dw_i3c_transfer_ccc.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  %.not35.i.i.i = icmp eq i32 %.sroa.2.0.extract.shift.i.i, 0
  br i1 %.not35.i.i.i, label %dw_i3c_tx.exit.i.i, label %.lr.ph.i52.i.i

.lr.ph.i52.i.i:                                   ; preds = %bb.ar, %bb.bi
  %.01534.i.i.i = phi i16 [ %.us-phi.i.i.i, %bb.bi ], [ 0, %bb.ar ] ; 2 uses
  %i.fv = call zeroext i1 @fifo8_is_empty(ptr noundef nonnull %i.ah) #6
  br i1 %i.fv, label %bb.as, label %bb.av

bb.as:                                            ; preds = %.lr.ph.i52.i.i
  %i.fw = call ptr @object_get_canonical_path(ptr noundef nonnull %0) #6 ; 2 uses
  %i.fx = load i32, ptr @qemu_loglevel, align 4
  %i.fy = and i32 %i.fx, 2048
  %.not22.i.i.i.i = icmp eq i32 %i.fy, 0
  br i1 %.not22.i.i.i.i, label %bb.au, label %bb.at, !prof !7

bb.at:                                            ; preds = %bb.as
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.56, ptr noundef %i.fw) #6
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  call void @g_free(ptr noundef %i.fw) #6
  br label %dw_i3c_pop_tx.exit.i.i.i

bb.av:                                            ; preds = %.lr.ph.i52.i.i
  %i.fz = call zeroext i8 @fifo8_pop(ptr noundef nonnull %i.ah) #6
  %i.ga = zext i8 %i.fz to i32
  %i.gb = call zeroext i8 @fifo8_pop(ptr noundef nonnull %i.ah) #6
  %i.gc = zext i8 %i.gb to i32
  %i.gd = shl nuw nsw i32 %i.gc, 8
  %i.ge = or disjoint i32 %i.gd, %i.ga
  %i.gf = call zeroext i8 @fifo8_pop(ptr noundef nonnull %i.ah) #6
  %i.gg = zext i8 %i.gf to i32
  %i.gh = shl nuw nsw i32 %i.gg, 16
  %i.gi = or disjoint i32 %i.gh, %i.ge
  %i.gj = call zeroext i8 @fifo8_pop(ptr noundef nonnull %i.ah) #6
  %i.gk = zext i8 %i.gj to i32
  %i.gl = shl nuw i32 %i.gk, 24
  %i.gm = or disjoint i32 %i.gl, %i.gi            ; 3 uses
  %i.gn = load i8, ptr %i.w, align 16
  %i.go = zext i8 %i.gn to i32
  %i.gp = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i.i.i.i = icmp eq i32 %i.gp, 0
  br i1 %.not.i.i.i.i.i, label %trace_dw_i3c_pop_tx.exit.i.i.i.i, label %bb.aw, !prof !7

bb.aw:                                            ; preds = %bb.av
  %i.gq = load i16, ptr @_TRACE_DW_I3C_POP_TX_DSTATE, align 2
  %.not2.i.i.i.i.i = icmp eq i16 %i.gq, 0
  br i1 %.not2.i.i.i.i.i, label %trace_dw_i3c_pop_tx.exit.i.i.i.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gr = load i32, ptr @qemu_loglevel, align 4
  %i.gs = and i32 %i.gr, 32768
  %.not3.i.i.i.i.i = icmp eq i32 %i.gs, 0
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
  br i1 %i.co, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %dw_i3c_pop_tx.exit.i.i.i, %26
  %indvars.iv.i.i.i.a = phi i64 [ %indvars.iv.next48.i.i.i, %26 ], [ 0, %dw_i3c_pop_tx.exit.i.i.i ] ; 3 uses
  %.132.i.i.i.a = phi i16 [ %27, %26 ], [ %.01534.i.i.i, %dw_i3c_pop_tx.exit.i.i.i ] ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.i.i.i.a
  %i.hs = load i8, ptr %i.hr, align 1             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i8 %i.hs, ptr %i.h, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #6
  store i32 0, ptr %i.i, align 4
  %i.ht = load ptr, ptr %i.x, align 8
  %3 = call i32 @legacy_i2c_send(ptr noundef %i.ht, i8 noundef zeroext %i.hs) #6
  %.not.i25.us.i.i.i = icmp eq i32 %3, 0          ; 2 uses
  br i1 %.not.i25.us.i.i.i, label %.thread.i.us.loopexit.i.i.i, label %.thread.i.loopexit.i.i.i

.thread.i.us.loopexit.i.i.i:                      ; preds = %bb.ba
  %4 = load i32, ptr %i.i, align 4
  %5 = add i32 %4, 1                              ; 2 uses
  store i32 %5, ptr %i.i, align 4
  br label %.thread.i.us.i.i.i

6:                                                ; preds = %.thread.i.loopexit.i.i.i
  %7 = load i8, ptr %i.h, align 1
  %8 = zext i8 %7 to i32
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.40, ptr noundef %29, i32 noundef %8) #6
  br label %9

9:                                                ; preds = %.thread.i.loopexit.i.i.i, %6
  %10 = load i32, ptr %i.m, align 4
  %11 = and i32 %10, -4144897
  %12 = or disjoint i32 %11, 1249024
  store i32 %12, ptr %i.m, align 4
  %13 = load i32, ptr %i.y, align 4
  %14 = or i32 %13, 512
  store i32 %14, ptr %i.y, align 4
  %15 = load i32, ptr %i.p, align 16
  %16 = or i32 %15, 1073741824
  store i32 %16, ptr %i.p, align 16
  call void @g_free(ptr noundef %29) #6
  %.pre.i55.i.i = load i32, ptr %i.i, align 4
  br label %.thread.i.us.i.i.i

.thread.i.us.i.i.i:                               ; preds = %9, %.thread.i.us.loopexit.i.i.i
  %17 = phi i32 [ %5, %.thread.i.us.loopexit.i.i.i ], [ %.pre.i55.i.i, %9 ]
  %18 = load i8, ptr %i.w, align 16
  %19 = zext i8 %18 to i32
  %20 = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i22.us.i.i.i = icmp eq i32 %20, 0
  br i1 %.not.i.i22.us.i.i.i, label %dw_i3c_send.exit.us.i.i.i, label %21, !prof !7

21:                                               ; preds = %.thread.i.us.i.i.i
  %22 = load i16, ptr @_TRACE_DW_I3C_SEND_DSTATE, align 2
  %.not2.i.i23.us.i.i.i = icmp eq i16 %22, 0
  br i1 %.not2.i.i23.us.i.i.i, label %dw_i3c_send.exit.us.i.i.i, label %.preheader.i.preheader.i.i.i

.preheader.i.preheader.i.i.i:                     ; preds = %21
  %23 = load i32, ptr @qemu_loglevel, align 4
  %24 = and i32 %23, 32768
  %.not.i25.i.i.i = icmp eq i32 %24, 0
  br i1 %.not.i25.i.i.i, label %dw_i3c_send.exit.us.i.i.i, label %25

25:                                               ; preds = %.preheader.i.preheader.i.i.i
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.44, i32 noundef range(i32 0, 256) %19, i32 noundef %17) #6
  br label %dw_i3c_send.exit.us.i.i.i

dw_i3c_send.exit.us.i.i.i:                        ; preds = %25, %.preheader.i.preheader.i.i.i, %21, %.thread.i.us.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br i1 %.not.i25.us.i.i.i, label %26, label %dw_i3c_tx.exit.i.i

26:                                               ; preds = %dw_i3c_send.exit.us.i.i.i
  %27 = add nuw i16 %.132.i.i.i.a, 1              ; 3 uses
  %.not21.us.i.i.i = icmp ult i16 %27, %.sroa.2.0.extract.trunc.i.i
  %indvars.iv.next48.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.a, 1
  %28 = icmp samesign ult i64 %indvars.iv.i.i.i.a, 3
  %or.cond.i.i.i = select i1 %.not21.us.i.i.i, i1 %28, i1 false
  br i1 %or.cond.i.i.i, label %bb.ba, label %bb.bi, !llvm.loop !17

.thread.i.loopexit.i.i.i:                         ; preds = %bb.ba
  %29 = call ptr @object_get_canonical_path(ptr noundef nonnull %0) #6 ; 2 uses
  %i.hu = load i32, ptr @qemu_loglevel, align 4
  %30 = and i32 %i.hu, 2048
  %.not53.i.us.i.i.i = icmp eq i32 %30, 0
  br i1 %.not53.i.us.i.i.i, label %9, label %6, !prof !7

bb.bb:                                            ; preds = %dw_i3c_pop_tx.exit.i.i.i, %bb.bh
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %bb.bh ], [ 0, %dw_i3c_pop_tx.exit.i.i.i ] ; 3 uses
  %.132.i.i.i = phi i16 [ %i.ip, %bb.bh ], [ %.01534.i.i.i, %dw_i3c_pop_tx.exit.i.i.i ] ; 2 uses
  %31 = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.i.i.i
  %32 = load i8, ptr %31, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i8 %32, ptr %i.h, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #6
  store i32 0, ptr %i.i, align 4
  %33 = load ptr, ptr %i.x, align 8
  %i.hv = call i32 @i3c_send(ptr noundef %33, ptr noundef nonnull %i.h, i32 noundef 1, ptr noundef nonnull %i.i) #6
  %.not45.i.i.i.i = icmp eq i32 %i.hv, 0          ; 2 uses
  br i1 %.not45.i.i.i.i, label %.thread.i.i.i.i, label %.thread49.i.i.i.i

.thread49.i.i.i.i:                                ; preds = %bb.bb
  %i.hw = call ptr @object_get_canonical_path(ptr noundef nonnull %0) #6 ; 2 uses
  %i.hx = load i32, ptr @qemu_loglevel, align 4
  %i.hy = and i32 %i.hx, 2048
  %.not53.i.i.i.i = icmp eq i32 %i.hy, 0
  br i1 %.not53.i.i.i.i, label %bb.bd, label %bb.bc, !prof !7

bb.bc:                                            ; preds = %.thread49.i.i.i.i
  %i.hz = load i8, ptr %i.h, align 1
  %i.ia = zext i8 %i.hz to i32
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.40, ptr noundef %i.hw, i32 noundef %i.ia) #6
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %.thread49.i.i.i.i
  %i.ib = load i32, ptr %i.m, align 4
  %i.ic = and i32 %i.ib, -4144897
  %i.id = or disjoint i32 %i.ic, 1249024
  store i32 %i.id, ptr %i.m, align 4
  %i.ie = load i32, ptr %i.y, align 4
  %i.if = or i32 %i.ie, 512
  store i32 %i.if, ptr %i.y, align 4
  %i.ig = load i32, ptr %i.p, align 16
  %i.ih = or i32 %i.ig, 1073741824
  store i32 %i.ih, ptr %i.p, align 16
  call void @g_free(ptr noundef %i.hw) #6
  br label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %bb.bd, %bb.bb
  %i.ii = load i8, ptr %i.w, align 16
  %i.ij = zext i8 %i.ii to i32
  %i.ik = load i32, ptr %i.i, align 4
  %i.il = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i22.i.i.i = icmp eq i32 %i.il, 0
  br i1 %.not.i.i22.i.i.i, label %dw_i3c_send.exit.i.i.i, label %bb.be, !prof !7

bb.be:                                            ; preds = %.thread.i.i.i.i
  %i.im = load i16, ptr @_TRACE_DW_I3C_SEND_DSTATE, align 2
  %.not2.i.i23.i.i.i = icmp eq i16 %i.im, 0
  br i1 %.not2.i.i23.i.i.i, label %dw_i3c_send.exit.i.i.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.in = load i32, ptr @qemu_loglevel, align 4
  %i.io = and i32 %i.in, 32768
  %.not3.i.i24.i.i.i = icmp eq i32 %i.io, 0
  br i1 %.not3.i.i24.i.i.i, label %dw_i3c_send.exit.i.i.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.44, i32 noundef range(i32 0, 256) %i.ij, i32 noundef %i.ik) #6
  br label %dw_i3c_send.exit.i.i.i

dw_i3c_send.exit.i.i.i:                           ; preds = %bb.bg, %bb.bf, %bb.be, %.thread.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br i1 %.not45.i.i.i.i, label %bb.bh, label %dw_i3c_tx.exit.i.i

bb.bh:                                            ; preds = %dw_i3c_send.exit.i.i.i
  %i.ip = add i16 %.132.i.i.i, 1                  ; 3 uses
  %.not21.i.i.i = icmp ult i16 %i.ip, %.sroa.2.0.extract.trunc.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1
  %i.iq = icmp samesign ult i64 %indvars.iv.i.i.i, 3
  %or.cond.i.i.i.a = select i1 %.not21.i.i.i, i1 %i.iq, i1 false
  br i1 %or.cond.i.i.i.a, label %bb.bb, label %bb.bi, !llvm.loop !17

bb.bi:                                            ; preds = %bb.bh, %26
  %.us-phi.i.i.i = phi i16 [ %27, %26 ], [ %i.ip, %bb.bh ] ; 3 uses
  %34 = icmp ult i16 %.us-phi.i.i.i, %.sroa.2.0.extract.trunc.i.i
  br i1 %34, label %.lr.ph.i52.i.i, label %dw_i3c_tx.exit.i.i, !llvm.loop !18

dw_i3c_tx.exit.i.i:                               ; preds = %bb.bi, %dw_i3c_send.exit.i.i.i, %dw_i3c_send.exit.us.i.i.i, %bb.ar
  %.218.i.i.i = phi i16 [ %.132.i.i.i, %dw_i3c_send.exit.i.i.i ], [ %.132.i.i.i.a, %dw_i3c_send.exit.us.i.i.i ], [ 0, %bb.ar ], [ %.us-phi.i.i.i, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  br label %bb.bj

bb.bj:                                            ; preds = %dw_i3c_tx.exit.i.i, %dw_i3c_rx.exit.i.i
  %.040.i.i = phi i16 [ %.024.i.i.i, %dw_i3c_rx.exit.i.i ], [ %.218.i.i.i, %dw_i3c_tx.exit.i.i ]
  %i.ir = load i32, ptr %i.m, align 4
  %i.is = and i32 %i.ir, -4128769
  store i32 %i.is, ptr %i.m, align 4
  %i.it = zext i16 %.040.i.i to i32
  br label %dw_i3c_transfer_ccc.exit.thread.i.i

dw_i3c_transfer_ccc.exit.thread.i.i:              ; preds = %bb.bj, %dw_i3c_send_start.exit.thread.i.i, %dw_i3c_send_start.exit.i.i, %dw_i3c_send_start.exit22.i.i.i, %trace_dw_i3c_transfer_ccc.exit.i.i.i, %dw_i3c_send_start.exit.i.i.i
  %.141.i.i = phi i32 [ 0, %dw_i3c_send_start.exit.thread.i.i ], [ %i.it, %bb.bj ], [ 0, %dw_i3c_send_start.exit.i.i ], [ 0, %dw_i3c_send_start.exit22.i.i.i ], [ 0, %dw_i3c_send_start.exit.i.i.i ], [ 0, %trace_dw_i3c_transfer_ccc.exit.i.i.i ] ; 2 uses
  %.1.i.i = phi i8 [ 9, %dw_i3c_send_start.exit.thread.i.i ], [ 0, %bb.bj ], [ 9, %dw_i3c_send_start.exit.i.i ], [ 4, %dw_i3c_send_start.exit22.i.i.i ], [ 4, %dw_i3c_send_start.exit.i.i.i ], [ 9, %trace_dw_i3c_transfer_ccc.exit.i.i.i ]
  %i.iu = and i32 %i.an, 1073741824
  %.not46.i.i = icmp eq i32 %i.iu, 0
  br i1 %.not46.i.i, label %dw_i3c_end_transfer.exit.i.i, label %bb.bk

bb.bk:                                            ; preds = %dw_i3c_transfer_ccc.exit.thread.i.i
  %i.iv = load ptr, ptr %i.x, align 8             ; 2 uses
  br i1 %i.co, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  call void @legacy_i2c_end_transfer(ptr noundef %i.iv) #6
  br label %dw_i3c_end_transfer.exit.i.i

bb.bm:                                            ; preds = %bb.bk
  call void @i3c_end_transfer(ptr noundef %i.iv) #6
  br label %dw_i3c_end_transfer.exit.i.i

dw_i3c_end_transfer.exit.i.i:                     ; preds = %bb.bm, %bb.bl, %dw_i3c_transfer_ccc.exit.thread.i.i
  %i.iw = and i32 %i.an, 67108864
  %.not47.i.i = icmp eq i32 %i.iw, 0
  br i1 %.not47.i.i, label %dw_i3c_transfer.exit.i, label %bb.bn

bb.bn:                                            ; preds = %dw_i3c_end_transfer.exit.i.i
  %i.ix = sub nsw i32 %.sroa.2.0.extract.shift.i.i, %.141.i.i
  %i.iy = select i1 %i.bs, i32 %.141.i.i, i32 %i.ix
  %i.iz = trunc i32 %i.iy to i16
  %i.ja = lshr i8 %i.au, 3
  %i.jb = and i8 %i.ja, 15
  call fastcc void @dw_i3c_resp_queue_push(ptr noundef nonnull %0, i8 noundef zeroext %.1.i.i, i8 noundef zeroext %i.jb, i16 noundef zeroext %i.iz)
  br label %dw_i3c_transfer.exit.i

dw_i3c_transfer.exit.i:                           ; preds = %bb.bn, %dw_i3c_end_transfer.exit.i.i
  %i.jc = load i32, ptr %i.ak, align 4
  %i.jd = load i32, ptr %i.y, align 4
  %i.je = and i32 %i.jd, %i.jc
  %i.jf = icmp ne i32 %i.je, 0
  %i.jg = load ptr, ptr %i.al, align 16
  %i.jh = zext i1 %i.jf to i32
  call void @qemu_set_irq(ptr noundef %i.jg, i32 noundef %i.jh) #6
  br label %dw_i3c_transfer_cmd.exit

bb.bo:                                            ; preds = %bb.p
  %.sroa.3.0.extract.shift.i.i = lshr i32 %i.am, 8
  %.sroa.3.0.extract.trunc.i.i = trunc i32 %.sroa.3.0.extract.shift.i.i to i8
  %.sroa.433.0.extract.shift.i.i = lshr i32 %i.am, 16
  %.sroa.433.0.extract.trunc.i.i = trunc i32 %.sroa.433.0.extract.shift.i.i to i8
  %.sroa.5.0.extract.shift.i.i = lshr i32 %i.am, 24
  %.sroa.5.0.extract.trunc.i.i = trunc nuw i32 %.sroa.5.0.extract.shift.i.i to i8
  %i.ji = lshr i32 %i.an, 16                      ; 2 uses
  %i.jj = trunc nuw i32 %i.ji to i16
  %i.jk = and i16 %i.jj, 31                       ; 3 uses
  %i.jl = and i32 %i.ji, 31
  %i.jm = load i8, ptr %i.z, align 1
  %i.jn = zext i8 %i.jm to i16
  %i.jo = icmp samesign ugt i16 %i.jk, %i.jn
  br i1 %i.jo, label %bb.bp, label %bb.bs

bb.bp:                                            ; preds = %bb.bo
  %i.jp = call ptr @object_get_canonical_path(ptr noundef nonnull %0) #6 ; 2 uses
  %i.jq = load i32, ptr @qemu_loglevel, align 4
  %i.jr = and i32 %i.jq, 2048
  %.not.i.i53.i = icmp eq i32 %i.jr, 0
  br i1 %.not.i.i53.i, label %bb.br, label %bb.bq, !prof !7

bb.bq:                                            ; preds = %bb.bp
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.38, ptr noundef %i.jp, i32 noundef %i.jl) #6
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  call void @g_free(ptr noundef %i.jp) #6
  %.pre.i55.i = load i32, ptr %i.aa, align 4
  %.pre58.i.i = trunc i32 %.pre.i55.i to i16
  %.pre59.i.i = lshr i16 %.pre58.i.i, 2
  %.pre61.i.i = add nuw nsw i16 %.pre59.i.i, %i.jk
  %.pre63.i.i = zext nneg i16 %.pre61.i.i to i64
  %.phi.trans.insert = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %.pre63.i.i
  %.pre = load i32, ptr %.phi.trans.insert, align 4
  br label %dw_i3c_target_addr.exit.i46.i

bb.bs:                                            ; preds = %bb.bo
  %i.js = load i32, ptr %i.aa, align 4
  %i.jt = trunc i32 %i.js to i16
  %i.ju = lshr i16 %i.jt, 2
  %i.jv = add nuw nsw i16 %i.ju, %i.jk
  %i.jw = zext nneg i16 %i.jv to i64
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.jw
  %i.jy = load i32, ptr %i.jx, align 4            ; 4 uses
  %i.jz = icmp slt i32 %i.jy, 0
  %i.ka = and i32 %i.jy, 127
  %i.kb = lshr i32 %i.jy, 16
  %.0.in.i.i44.i = select i1 %i.jz, i32 %i.ka, i32 %i.kb
  %.0.i.i45.i = trunc i32 %.0.in.i.i44.i to i8
  br label %dw_i3c_target_addr.exit.i46.i

dw_i3c_target_addr.exit.i46.i:                    ; preds = %bb.bs, %bb.br
  %i.kc = phi i32 [ %.pre, %bb.br ], [ %i.jy, %bb.bs ]
  %.1.i.i47.i = phi i8 [ 0, %bb.br ], [ %.0.i.i45.i, %bb.bs ]
  %i.kd = icmp slt i32 %i.kc, 0                   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #6
  store i32 0, ptr %i.f, align 4, !annotation !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #6
  store i32 0, ptr %i.g, align 4, !annotation !11
  %i.ke = and i32 %i.an, 268435456
  %.not.i48.i = icmp eq i32 %i.ke, 0
  br i1 %.not.i48.i, label %bb.bw, label %bb.bt

bb.bt:                                            ; preds = %dw_i3c_target_addr.exit.i46.i
  %i.kf = call ptr @object_get_canonical_path(ptr noundef nonnull %0) #6 ; 2 uses
  %i.kg = load i32, ptr @qemu_loglevel, align 4
  %i.kh = and i32 %i.kg, 2048
  %.not57.i.i = icmp eq i32 %i.kh, 0
  br i1 %.not57.i.i, label %bb.bv, label %bb.bu, !prof !7

bb.bu:                                            ; preds = %bb.bt
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.59, ptr noundef %i.kf) #6
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  call void @g_free(ptr noundef %i.kf) #6
  br label %dw_i3c_short_transfer.exit.i

bb.bw:                                            ; preds = %dw_i3c_target_addr.exit.i46.i
  %i.ki = call fastcc i32 @dw_i3c_send_start(ptr noundef nonnull %0, i8 noundef zeroext %.1.i.i47.i, i1 noundef zeroext false, i1 noundef zeroext %i.kd)
  %.not45.i.i = icmp eq i32 %i.ki, 0
  br i1 %.not45.i.i, label %bb.bx, label %bb.cf

bb.bx:                                            ; preds = %bb.bw
  %i.kj = and i32 %i.an, 32768
  %.not46.i50.i = icmp eq i32 %i.kj, 0
  br i1 %.not46.i50.i, label %bb.ca, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.kk = lshr i32 %i.an, 7
  %i.kl = trunc i32 %i.kk to i8
  store i8 %i.kl, ptr %i.f, align 4
  %i.km = and i32 %i.an, 33554432
  %.not47.i51.i = icmp eq i32 %i.km, 0
  br i1 %.not47.i51.i, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  store i8 %.sroa.3.0.extract.trunc.i.i, ptr %i.ag, align 1
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by, %bb.bx
  %.043.i.i = phi i8 [ 2, %bb.bz ], [ 1, %bb.by ], [ 0, %bb.bx ] ; 3 uses
  %i.kn = and i32 %i.am, 16
  %.not48.i.i = icmp eq i32 %i.kn, 0
  br i1 %.not48.i.i, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.ko = zext nneg i8 %.043.i.i to i64
  %i.kp = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ko
  store i8 %.sroa.433.0.extract.trunc.i.i, ptr %i.kp, align 1
  %i.kq = add nuw nsw i8 %.043.i.i, 1
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %.1.i52.i = phi i8 [ %i.kq, %bb.cb ], [ %.043.i.i, %bb.ca ] ; 4 uses
  %i.kr = and i32 %i.am, 32
  %.not49.i.i = icmp eq i32 %i.kr, 0
  br i1 %.not49.i.i, label %bb.cd, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.cc
  %i.ks = zext nneg i8 %.1.i52.i to i64
  %i.kt = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ks
  store i8 %.sroa.5.0.extract.trunc.i.i, ptr %i.kt, align 1
  %i.ku = add nuw nsw i8 %.1.i52.i, 1
  br label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %.not50.i.i = icmp eq i8 %.1.i52.i, 0
  br i1 %.not50.i.i, label %.sink.split.i.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %.thread.i.i
  %.256.i.i = phi i8 [ %i.ku, %.thread.i.i ], [ %.1.i52.i, %bb.cd ]
  %i.kv = zext nneg i8 %.256.i.i to i32
  %i.kw = call fastcc i32 @dw_i3c_send(ptr noundef nonnull %0, ptr noundef %i.f, i32 noundef %i.kv, ptr noundef %i.g, i1 noundef zeroext %i.kd)
  %.not51.i.i = icmp eq i32 %i.kw, 0
  br i1 %.not51.i.i, label %.sink.split.i.i, label %bb.cf

.sink.split.i.i:                                  ; preds = %bb.ce, %bb.cd
  %i.kx = load i32, ptr %i.m, align 4
  %i.ky = and i32 %i.kx, -4128769
  store i32 %i.ky, ptr %i.m, align 4
  br label %bb.cf

bb.cf:                                            ; preds = %.sink.split.i.i, %bb.ce, %bb.bw
end_hunk_0
