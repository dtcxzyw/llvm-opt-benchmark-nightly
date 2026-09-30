Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/tcp_cubic?download=true
inline.NumInlined: 47
inline.NumDeleted: 18
begin_hunk_0_@cubictcp_cwnd_event_tx_start:bb.a
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %i.h = icmp ne i32 %i.g, 0
  %i.i = icmp sgt i32 %i.e, 0
  %or.cond = select i1 %i.h, i1 %i.i, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = add i32 %i.g, %i.e                       ; 2 uses
  %i.k = sub i32 %i.b, %i.j
  %i.l = icmp slt i32 %i.k, 0
  %spec.store.select = select i1 %i.l, i32 %i.b, i32 %i.j
  store i32 %spec.store.select, ptr %i.f, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cubictcp_cong_avoid(ptr noundef %0, i32 %1, i32 noundef %2) #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 1304       ; 5 uses
  %i.b = getelementptr i8, ptr %0, i64 1471
  %i.c = load i8, ptr %i.b, align 1
  %i.d = and i8 %i.c, 8
  %.not.i = icmp eq i8 %i.d, 0
  %i.e = getelementptr i8, ptr %0, i64 1452
  %.val8.i = load i32, ptr %i.e, align 4          ; 3 uses
  %i.f = getelementptr i8, ptr %0, i64 1500
  %.val9.i = load i32, ptr %i.f, align 4
  %i.g = icmp ult i32 %.val8.i, %.val9.i          ; 2 uses
  br i1 %.not.i, label %bb.b, label %tcp_is_cwnd_limited.exit.thread

bb.b:                                             ; preds = %bb.a
  br i1 %i.g, label %tcp_is_cwnd_limited.exit, label %tcp_is_cwnd_limited.exit.thread20

tcp_is_cwnd_limited.exit:                         ; preds = %bb.b
  %i.h = getelementptr i8, ptr %0, i64 1624
  %i.i = load i32, ptr %i.h, align 8
  %i.j = shl i32 %i.i, 1
  %i.k = icmp ult i32 %.val8.i, %i.j
  br i1 %i.k, label %tcp_is_cwnd_limited.exit.thread.thread, label %tcp_is_cwnd_limited.exit.thread20

tcp_is_cwnd_limited.exit.thread:                  ; preds = %bb.a
  br i1 %i.g, label %tcp_is_cwnd_limited.exit.thread.thread, label %bb.c

tcp_is_cwnd_limited.exit.thread.thread:           ; preds = %tcp_is_cwnd_limited.exit, %tcp_is_cwnd_limited.exit.thread
  %i.l = tail call i32 @tcp_slow_start(ptr noundef %0, i32 noundef %2) #9 ; 2 uses
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %tcp_is_cwnd_limited.exit.thread20, label %._crit_edge

._crit_edge:                                      ; preds = %tcp_is_cwnd_limited.exit.thread.thread
  %i.m = getelementptr i8, ptr %0, i64 1452
  %.val.pre = load i32, ptr %i.m, align 4
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %tcp_is_cwnd_limited.exit.thread
  %.val = phi i32 [ %.val.pre, %._crit_edge ], [ %.val8.i, %tcp_is_cwnd_limited.exit.thread ] ; 15 uses
  %.0 = phi i32 [ %i.l, %._crit_edge ], [ %2, %tcp_is_cwnd_limited.exit.thread ] ; 3 uses
  %i.n = getelementptr i8, ptr %0, i64 1336       ; 5 uses
  %i.o = load i32, ptr %i.n, align 4
  %i.p = add i32 %i.o, %.0
  store i32 %i.p, ptr %i.n, align 4
  %i.q = getelementptr i8, ptr %0, i64 1312       ; 3 uses
  %i.r = load i32, ptr %i.q, align 4
  %i.s = icmp eq i32 %i.r, %.val
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.t = load volatile i64, ptr @jiffies, align 64
  %i.u = trunc i64 %i.t to i32
  %i.v = getelementptr i8, ptr %0, i64 1316
  %i.w = load i32, ptr %i.v, align 4
  %i.x = sub i32 %i.u, %i.w
  %i.y = icmp slt i32 %i.x, 32
  br i1 %i.y, label %.bictcp_update.exit_crit_edge, label %bb.e

.bictcp_update.exit_crit_edge:                    ; preds = %bb.d
  %.pre = load i32, ptr %i.a, align 4
  br label %bictcp_update.exit

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.z = getelementptr i8, ptr %0, i64 1332       ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4             ; 2 uses
  %.not.i17 = icmp eq i32 %i.aa, 0
  br i1 %.not.i17, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = load volatile i64, ptr @jiffies, align 64
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = getelementptr i8, ptr %0, i64 1316      ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = icmp eq i32 %i.ae, %i.ac
  br i1 %i.af, label %bb.o, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 %.val, ptr %i.q, align 4
  %i.ag = load volatile i64, ptr @jiffies, align 64
  %i.ah = trunc i64 %i.ag to i32
  store i32 %i.ah, ptr %i.ad, align 4
  br label %usecs_to_jiffies.exit.i

bb.h:                                             ; preds = %bb.e
  store i32 %.val, ptr %i.q, align 4
  %i.ai = load volatile i64, ptr @jiffies, align 64
  %i.aj = trunc i64 %i.ai to i32
  %i.ak = getelementptr i8, ptr %0, i64 1316
  store i32 %i.aj, ptr %i.ak, align 4
  %i.al = load volatile i64, ptr @jiffies, align 64
  %i.am = trunc i64 %i.al to i32                  ; 3 uses
  store i32 %i.am, ptr %i.z, align 4
  store i32 %.0, ptr %i.n, align 4
  %i.an = getelementptr i8, ptr %0, i64 1340
  store i32 %.val, ptr %i.an, align 4
  %i.ao = getelementptr i8, ptr %0, i64 1308
  %i.ap = load i32, ptr %i.ao, align 4            ; 3 uses
  %.not95.i = icmp ugt i32 %i.ap, %.val
  br i1 %.not95.i, label %fls64.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = getelementptr i8, ptr %0, i64 1324
  store i32 0, ptr %i.aq, align 4
  %i.ar = getelementptr i8, ptr %0, i64 1320
  store i32 %.val, ptr %i.ar, align 4
  br label %usecs_to_jiffies.exit.i

fls64.exit.i.i:                                   ; preds = %bb.h
  %i.as = load i64, ptr @cube_factor, align 8
  %i.at = sub nuw i32 %i.ap, %.val
  %i.au = zext i32 %i.at to i64
  %i.av = mul i64 %i.as, %i.au                    ; 4 uses
  %i.aw = tail call i32 asm "bsrq $1,${0:q}", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.av, i32 -1) #10, !srcloc !11
  %i.ax = add i32 %i.aw, 1                        ; 2 uses
  %i.ay = icmp ult i32 %i.ax, 7
  br i1 %i.ay, label %bb.j, label %bb.k

bb.j:                                             ; preds = %fls64.exit.i.i
  %i.az = and i64 %i.av, 4294967295
  %i.ba = getelementptr i8, ptr @cubic_root.v, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1
  %i.bc = zext i8 %i.bb to i32
  %i.bd = add nuw nsw i32 %i.bc, 35
  %i.be = lshr i32 %i.bd, 6
  br label %cubic_root.exit.i

bb.k:                                             ; preds = %fls64.exit.i.i
  %i.bf = mul i32 %i.ax, 84
  %i.bg = lshr i32 %i.bf, 8
  %i.bh = add nsw i32 %i.bg, -1                   ; 2 uses
  %i.bi = mul nsw i32 %i.bh, 3
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = lshr i64 %i.av, %i.bj
  %i.bl = and i64 %i.bk, 4294967295
  %i.bm = getelementptr i8, ptr @cubic_root.v, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1
  %i.bo = zext i8 %i.bn to i32
  %i.bp = add nuw nsw i32 %i.bo, 10
  %i.bq = shl i32 %i.bp, %i.bh
  %i.br = lshr i32 %i.bq, 6                       ; 3 uses
  %i.bs = shl nuw nsw i32 %i.br, 1
  %i.bt = zext nneg i32 %i.br to i64
  %i.bu = add nsw i32 %i.br, -1
  %i.bv = zext i32 %i.bu to i64
  %i.bw = mul nuw nsw i64 %i.bv, %i.bt
  %i.bx = udiv i64 %i.av, %i.bw
  %i.by = trunc i64 %i.bx to i32
  %i.bz = add i32 %i.bs, %i.by
  %i.ca = mul i32 %i.bz, 341
  %i.cb = lshr i32 %i.ca, 10
  br label %cubic_root.exit.i

cubic_root.exit.i:                                ; preds = %bb.k, %bb.j
  %.0.i97.i = phi i32 [ %i.be, %bb.j ], [ %i.cb, %bb.k ]
  %i.cc = getelementptr i8, ptr %0, i64 1324
  store i32 %.0.i97.i, ptr %i.cc, align 4
  %i.cd = getelementptr i8, ptr %0, i64 1320
  store i32 %i.ap, ptr %i.cd, align 4
  br label %usecs_to_jiffies.exit.i

usecs_to_jiffies.exit.i:                          ; preds = %cubic_root.exit.i, %bb.i, %bb.g
  %i.ce = phi i32 [ %i.aa, %bb.g ], [ %i.am, %bb.i ], [ %i.am, %cubic_root.exit.i ]
  %i.cf = load volatile i64, ptr @jiffies, align 64
  %i.cg = trunc i64 %i.cf to i32
  %i.ch = sub i32 %i.cg, %i.ce
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr i8, ptr %0, i64 1328
  %i.ck = load i32, ptr %i.cj, align 4
  %i.cl = tail call i64 @__usecs_to_jiffies(i32 noundef %i.ck) #9
  %i.cm = add i64 %i.cl, %i.ci
  %i.cn = shl i64 %i.cm, 10
  %i.co = udiv i64 %i.cn, 1000                    ; 3 uses
  %i.cp = getelementptr i8, ptr %0, i64 1324
  %i.cq = load i32, ptr %i.cp, align 4
  %i.cr = zext i32 %i.cq to i64                   ; 3 uses
  %i.cs = icmp samesign ult i64 %i.co, %i.cr      ; 2 uses
  %i.ct = sub nuw nsw i64 %i.cr, %i.co
  %i.cu = sub nuw nsw i64 %i.co, %i.cr
  %.084.i = select i1 %i.cs, i64 %i.ct, i64 %i.cu ; 3 uses
  %i.cv = load i32, ptr @cube_rtt_scale, align 4
  %i.cw = zext i32 %i.cv to i64
  %i.cx = mul i64 %.084.i, %i.cw
  %i.cy = mul i64 %i.cx, %.084.i
  %i.cz = mul i64 %i.cy, %.084.i
  %i.da = lshr i64 %i.cz, 40
  %i.db = trunc nuw nsw i64 %i.da to i32          ; 2 uses
  %i.dc = getelementptr i8, ptr %0, i64 1320
  %i.dd = load i32, ptr %i.dc, align 4
  %i.de = sub nsw i32 0, %i.db
  %.0.p.i = select i1 %i.cs, i32 %i.de, i32 %i.db
  %.0.i18 = add i32 %.0.p.i, %i.dd                ; 2 uses
  %i.df = icmp ugt i32 %.0.i18, %.val
  br i1 %i.df, label %bb.l, label %bb.m

bb.l:                                             ; preds = %usecs_to_jiffies.exit.i
  %i.dg = sub nuw i32 %.0.i18, %.val
  %i.dh = udiv i32 %.val, %i.dg
  br label %bb.n

bb.m:                                             ; preds = %usecs_to_jiffies.exit.i
  %i.di = mul i32 %.val, 100
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %storemerge.i = phi i32 [ %i.di, %bb.m ], [ %i.dh, %bb.l ] ; 2 uses
  %i.dj = getelementptr i8, ptr %0, i64 1308
  %i.dk = load i32, ptr %i.dj, align 4
  %i.dl = icmp eq i32 %i.dk, 0
  %i.dm = tail call i32 @llvm.umin.i32(i32 %storemerge.i, i32 20)
  %spec.store.select.i = select i1 %i.dl, i32 %i.dm, i32 %storemerge.i
  store i32 %spec.store.select.i, ptr %i.a, align 4
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.f
  %i.dn = load i32, ptr @tcp_friendliness, align 4
  %.not96.i = icmp eq i32 %i.dn, 0
  br i1 %.not96.i, label %._crit_edge102.i, label %bb.p

._crit_edge102.i:                                 ; preds = %bb.o
  %.pre103.i = load i32, ptr %i.a, align 4
  br label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.do = load i32, ptr @beta_scale, align 4
  %i.dp = mul i32 %i.do, %.val
  %i.dq = lshr i32 %i.dp, 3                       ; 3 uses
  %.promoted.i = load i32, ptr %i.n, align 4      ; 2 uses
  %i.dr = icmp ugt i32 %.promoted.i, %i.dq
  %i.ds = getelementptr i8, ptr %0, i64 1340      ; 2 uses
  %.promoted98.i = load i32, ptr %i.ds, align 4   ; 2 uses
  br i1 %i.dr, label %.lr.ph.i, label %._crit_edge101.i

.lr.ph.i:                                         ; preds = %bb.p, %.lr.ph.i
  %i.dt = phi i32 [ %i.dw, %.lr.ph.i ], [ %.promoted98.i, %bb.p ]
  %i.du = phi i32 [ %i.dv, %.lr.ph.i ], [ %.promoted.i, %bb.p ]
  %i.dv = sub nuw i32 %i.du, %i.dq                ; 3 uses
  %i.dw = add i32 %i.dt, 1                        ; 3 uses
  %i.dx = icmp ugt i32 %i.dv, %i.dq
  br i1 %i.dx, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !10

._crit_edge.i:                                    ; preds = %.lr.ph.i
  store i32 %i.dv, ptr %i.n, align 4
  store i32 %i.dw, ptr %i.ds, align 4
  br label %._crit_edge101.i

._crit_edge101.i:                                 ; preds = %._crit_edge.i, %bb.p
  %i.dy = phi i32 [ %i.dw, %._crit_edge.i ], [ %.promoted98.i, %bb.p ] ; 2 uses
  %i.dz = icmp ugt i32 %i.dy, %.val
  %.pre104.i = load i32, ptr %i.a, align 4        ; 2 uses
  br i1 %i.dz, label %bb.q, label %bb.r

bb.q:                                             ; preds = %._crit_edge101.i
  %i.ea = sub nuw i32 %i.dy, %.val
  %i.eb = udiv i32 %.val, %i.ea
  %spec.select.i = tail call i32 @llvm.umin.i32(i32 %.pre104.i, i32 %i.eb)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %._crit_edge101.i, %._crit_edge102.i
  %i.ec = phi i32 [ %.pre103.i, %._crit_edge102.i ], [ %.pre104.i, %._crit_edge101.i ], [ %spec.select.i, %bb.q ]
  %i.ed = tail call i32 @llvm.umax.i32(i32 %i.ec, i32 2) ; 2 uses
  store i32 %i.ed, ptr %i.a, align 4
  br label %bictcp_update.exit

bictcp_update.exit:                               ; preds = %.bictcp_update.exit_crit_edge, %bb.r
  %i.ee = phi i32 [ %.pre, %.bictcp_update.exit_crit_edge ], [ %i.ed, %bb.r ]
  tail call void @tcp_cong_avoid_ai(ptr noundef %0, i32 noundef %i.ee, i32 noundef %.0) #9
  br label %tcp_is_cwnd_limited.exit.thread20

tcp_is_cwnd_limited.exit.thread20:                ; preds = %bb.b, %tcp_is_cwnd_limited.exit.thread.thread, %tcp_is_cwnd_limited.exit, %bictcp_update.exit
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @tcp_slow_start(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @tcp_cong_avoid_ai(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern mustprogress nofree noinline norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none)
define internal range(i32 2, 4194304) i32 @cubictcp_recalc_ssthresh(ptr nofree noundef captures(none) initializes((1332, 1336)) %0) #4 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 1332
  store i32 0, ptr %i.a, align 4
  %i.b = getelementptr i8, ptr %0, i64 1452
  %.val19 = load i32, ptr %i.b, align 4           ; 4 uses
  %i.c = getelementptr i8, ptr %0, i64 1308       ; 2 uses
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp ult i32 %.val19, %i.d
  %i.f = load i32, ptr @fast_convergence, align 4
  %i.g = icmp ne i32 %i.f, 0
  %or.cond = select i1 %i.e, i1 %i.g, i1 false
  %i.h = load i32, ptr @beta, align 4
  %i.i = add i32 %i.h, 1024
  %i.j = mul i32 %i.i, %.val19
  %i.k = lshr i32 %i.j, 11
  %storemerge = select i1 %or.cond, i32 %i.k, i32 %.val19
  store i32 %storemerge, ptr %i.c, align 4
  %i.l = load i32, ptr @beta, align 4
  %i.m = mul i32 %i.l, %.val19
  %i.n = lshr i32 %i.m, 10
  %i.o = tail call i32 @llvm.umax.i32(i32 %i.n, i32 2)
  ret i32 %i.o
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree noinline norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: readwrite)
define internal void @cubictcp_state(ptr nofree noundef captures(none) %0, i8 noundef zeroext %1) #5 align 16 prefalign(16) {
bb.a:
  %i.a = icmp eq i8 %1, 4
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 1304
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(40) %i.b, i8 0, i64 40, i1 false)
  %i.c = getelementptr i8, ptr %0, i64 1347
  store i8 0, ptr %i.c, align 1
  %i.d = getelementptr i8, ptr %0, i64 1696
  %.val.i = load i64, ptr %i.d, align 32
  %i.e = trunc i64 %.val.i to i32                 ; 2 uses
  %i.f = getelementptr i8, ptr %0, i64 1356
  store i32 %i.e, ptr %i.f, align 4
  %i.g = getelementptr i8, ptr %0, i64 1348
  store i32 %i.e, ptr %i.g, align 4
  %i.h = getelementptr i8, ptr %0, i64 1708
  %i.i = load i32, ptr %i.h, align 4
  %i.j = getelementptr i8, ptr %0, i64 1352
  store i32 %i.i, ptr %i.j, align 8
  %i.k = getelementptr i8, ptr %0, i64 1360
  store i32 -1, ptr %i.k, align 16
  %i.l = getelementptr i8, ptr %0, i64 1346
  store i8 0, ptr %i.l, align 2
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cubictcp_acked(ptr nofree noundef captures(address) %0, ptr nofree noundef readonly captures(none) %1) #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %hystart_update.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 1332
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load volatile i64, ptr @jiffies, align 64
  %i.g = trunc i64 %i.f to i32
  %i.h = sub i32 %i.g, %i.e
  %i.i = icmp slt i32 %i.h, 1000
  br i1 %i.i, label %hystart_update.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %spec.store.select = tail call i32 @llvm.umax.i32(i32 %i.b, i32 1) ; 6 uses
  %i.j = getelementptr i8, ptr %0, i64 1328       ; 3 uses
  %i.k = load i32, ptr %i.j, align 4              ; 2 uses
  %i.l = add i32 %i.k, -1
  %or.cond19.not = icmp ult i32 %i.l, %spec.store.select
  br i1 %or.cond19.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 %spec.store.select, ptr %i.j, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.m = phi i32 [ %i.k, %bb.d ], [ %spec.store.select, %bb.e ]
  %i.n = getelementptr i8, ptr %0, i64 1347       ; 3 uses
  %i.o = load i8, ptr %i.n, align 1
  %.not18 = icmp eq i8 %i.o, 0
  br i1 %.not18, label %bb.g, label %hystart_update.exit

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr i8, ptr %0, i64 1452       ; 5 uses
  %.val = load i32, ptr %i.p, align 4             ; 2 uses
  %i.q = getelementptr i8, ptr %0, i64 1500       ; 3 uses
  %.val20 = load i32, ptr %i.q, align 4
  %i.r = icmp ult i32 %.val, %.val20
  %i.s = load i32, ptr @hystart, align 4
end_hunk_0
