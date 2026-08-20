inline.NumInlined: 912
inline.NumDeleted: 363
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@do_tcp_setsockopt:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %tcp_sock_set_syncnt.exit

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, i8 0, i64 16, i1 false), !annotation !24
  %i.w = icmp eq i32 %5, 0
  br i1 %i.w, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = tail call i32 @llvm.umin.i32(i32 %5, i32 15)
  %i.y = zext nneg i32 %i.x to i64                ; 3 uses
  %i.z = trunc i8 %4 to i1
  br i1 %i.z, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aa = add nsw i64 %i.y, -1
  %i.ab = tail call i64 @strnlen(ptr noundef %3, i64 noundef %i.aa) #21
  %i.ac = add i64 %i.ab, 1
  %i.ad = tail call i64 @llvm.umin.i64(i64 %i.ac, i64 range(i64 1, 4294967296) %i.y) ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.c, ptr align 1 %3, i64 %i.ad, i1 false)
  br label %strncpy_from_sockptr.exit199

bb.k:                                             ; preds = %bb.i
  %i.ae = call i64 @strncpy_from_user(ptr noundef nonnull %i.c, ptr noundef %3, i64 noundef range(i64 1, 4294967296) %i.y) #20
  br label %strncpy_from_sockptr.exit199

strncpy_from_sockptr.exit199:                     ; preds = %bb.j, %bb.k
  %.0.i198 = phi i64 [ %i.ad, %bb.j ], [ %i.ae, %bb.k ] ; 2 uses
  %i.af = trunc i64 %.0.i198 to i32               ; 2 uses
  store i32 %i.af, ptr %i.a, align 4
  %i.ag = icmp slt i32 %i.af, 0
  br i1 %i.ag, label %bb.m, label %bb.l

bb.l:                                             ; preds = %strncpy_from_sockptr.exit199
  %i.ah = and i64 %.0.i198, 2147483647
  %i.ai = getelementptr i8, ptr %i.c, i64 %i.ah
  store i8 0, ptr %i.ai, align 1
  call void @sockopt_lock_sock(ptr noundef %0) #20
  %i.aj = call i32 @tcp_set_ulp(ptr noundef %0, ptr noundef nonnull %i.c) #20
  call void @sockopt_release_sock(ptr noundef %0) #20
  br label %bb.m

bb.m:                                             ; preds = %strncpy_from_sockptr.exit199, %bb.h, %bb.l
  %.1 = phi i32 [ %i.aj, %bb.l ], [ -22, %bb.h ], [ -14, %strncpy_from_sockptr.exit199 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  br label %tcp_sock_set_syncnt.exit

bb.n:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.d, i8 0, i64 32, i1 false), !annotation !24
  switch i32 %5, label %.critedge [
    i32 32, label %bb.o
    i32 16, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n, %bb.n
  %i.ak = zext nneg i32 %5 to i64                 ; 2 uses
  %i.al = trunc i8 %4 to i1
  br i1 %i.al, label %copy_from_sockptr.exit.thread, label %check_copy_size.exit.i.i.i

check_copy_size.exit.i.i.i:                       ; preds = %bb.o
  %i.am = call i64 @_copy_from_user(ptr noundef nonnull %i.d, ptr noundef %3, i64 noundef range(i64 -2147483648, 4294967296) %i.ak) #20
  %i.an = and i64 %i.am, 4294967295
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %bb.p, label %.critedge

copy_from_sockptr.exit.thread:                    ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.d, ptr align 1 %3, i64 range(i64 -2147483648, 4294967296) %i.ak, i1 false)
  br label %bb.p

bb.p:                                             ; preds = %copy_from_sockptr.exit.thread, %check_copy_size.exit.i.i.i
  %i.ap = icmp eq i32 %5, 32
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %spec.select = select i1 %i.ap, ptr %i.aq, ptr null
  %i.ar = call i32 @tcp_fastopen_reset_cipher(ptr noundef %.val196, ptr noundef %0, ptr noundef nonnull %i.d, ptr noundef %spec.select) #20
  br label %.critedge

.critedge:                                        ; preds = %check_copy_size.exit.i.i.i, %bb.n, %bb.p
  %.2 = phi i32 [ %i.ar, %bb.p ], [ -22, %bb.n ], [ -14, %check_copy_size.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  br label %tcp_sock_set_syncnt.exit

bb.q:                                             ; preds = %bb.a
  %i.as = icmp ult i32 %5, 4
  br i1 %i.as, label %tcp_sock_set_syncnt.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.at = trunc i8 %4 to i1
  br i1 %i.at, label %copy_from_sockptr.exit205.thread, label %copy_from_sockptr.exit205

copy_from_sockptr.exit205.thread:                 ; preds = %bb.r
  %i.au = load i32, ptr %3, align 1
  store i32 %i.au, ptr %i.a, align 4
  br label %bb.s

copy_from_sockptr.exit205:                        ; preds = %bb.r
  %i.av = call i64 @_copy_from_user(ptr noundef nonnull %i.a, ptr noundef %3, i64 noundef range(i64 -2147483648, 4294967296) 4) #20
  %i.aw = and i64 %i.av, 4294967295
  %.not182 = icmp eq i64 %i.aw, 0
  br i1 %.not182, label %bb.s, label %tcp_sock_set_syncnt.exit

bb.s:                                             ; preds = %copy_from_sockptr.exit205.thread, %copy_from_sockptr.exit205
  switch i32 %2, label %bb.am [
    i32 7, label %bb.t
    i32 18, label %bb.v
    i32 5, label %bb.x
    i32 6, label %bb.z
    i32 8, label %bb.ab
    i32 9, label %bb.ag
    i32 44, label %bb.ah
    i32 45, label %usecs_to_jiffies.exit195
    i32 46, label %usecs_to_jiffies.exit
    i32 2, label %bb.ak
  ]

bb.t:                                             ; preds = %bb.s
  %i.ax = load i32, ptr %i.a, align 4             ; 2 uses
  %i.ay = add i32 %i.ax, -128
  %or.cond.i = icmp ult i32 %i.ay, -127
  br i1 %or.cond.i, label %tcp_sock_set_syncnt.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.az = trunc nuw nsw i32 %i.ax to i8
  %i.ba = getelementptr i8, ptr %0, i64 1260
  store volatile i8 %i.az, ptr %i.ba, align 4
  br label %tcp_sock_set_syncnt.exit

bb.v:                                             ; preds = %bb.s
  %i.bb = load i32, ptr %i.a, align 4             ; 2 uses
  %i.bc = icmp slt i32 %i.bb, 0
  br i1 %i.bc, label %tcp_sock_set_syncnt.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bd = getelementptr i8, ptr %0, i64 1300
  store volatile i32 %i.bb, ptr %i.bd, align 4
  br label %tcp_sock_set_syncnt.exit

bb.x:                                             ; preds = %bb.s
  %i.be = load i32, ptr %i.a, align 4             ; 2 uses
  %i.bf = add i32 %i.be, -32768
  %or.cond.i208 = icmp ult i32 %i.bf, -32767
  br i1 %or.cond.i208, label %tcp_sock_set_syncnt.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bg = mul nuw nsw i32 %i.be, 1000
  %i.bh = getelementptr i8, ptr %0, i64 2264
  store volatile i32 %i.bg, ptr %i.bh, align 8
  br label %tcp_sock_set_syncnt.exit

bb.z:                                             ; preds = %bb.s
  %i.bi = load i32, ptr %i.a, align 4             ; 2 uses
  %i.bj = add i32 %i.bi, -128
  %or.cond.i210 = icmp ult i32 %i.bj, -127
  br i1 %or.cond.i210, label %tcp_sock_set_syncnt.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bk = trunc nuw nsw i32 %i.bi to i8
  %i.bl = getelementptr i8, ptr %0, i64 1925
  store volatile i8 %i.bk, ptr %i.bl, align 1
  br label %tcp_sock_set_syncnt.exit

bb.ab:                                            ; preds = %bb.s
  %i.bm = load i32, ptr %i.a, align 4             ; 3 uses
  %i.bn = icmp slt i32 %i.bm, 0
  br i1 %i.bn, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.bo = getelementptr i8, ptr %0, i64 2268
  store volatile i32 -1, ptr %i.bo, align 4
  br label %tcp_sock_set_syncnt.exit

bb.ad:                                            ; preds = %bb.ab
  %i.bp = icmp samesign ugt i32 %i.bm, 120
  br i1 %i.bp, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.bq = getelementptr i8, ptr %0, i64 2268
  store volatile i32 120000, ptr %i.bq, align 4
  br label %tcp_sock_set_syncnt.exit

bb.af:                                            ; preds = %bb.ad
  %i.br = mul nuw nsw i32 %i.bm, 1000
  %i.bs = getelementptr i8, ptr %0, i64 2268
  store volatile i32 %i.br, ptr %i.bs, align 4
  br label %tcp_sock_set_syncnt.exit

bb.ag:                                            ; preds = %bb.s
  %i.bt = load i32, ptr %i.a, align 4             ; 3 uses
  %i.bu = icmp sgt i32 %i.bt, 0
  br i1 %i.bu, label %.preheader.i, label %secs_to_retrans.exit

.preheader.i:                                     ; preds = %bb.ag
  %.not.i = icmp eq i32 %i.bt, 1
  br i1 %.not.i, label %secs_to_retrans.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.021.i = phi i32 [ %i.bx, %.lr.ph.i ], [ 1, %.preheader.i ]
  %.01320.i = phi i8 [ %i.bv, %.lr.ph.i ], [ 1, %.preheader.i ]
  %.01419.i = phi i32 [ %spec.select.i, %.lr.ph.i ], [ 1, %.preheader.i ]
  %i.bv = add nuw i8 %.01320.i, 1                 ; 2 uses
  %i.bw = shl i32 %.01419.i, 1
  %spec.select.i = call i32 @llvm.smin.i32(i32 %i.bw, i32 120) ; 2 uses
  %i.bx = add i32 %spec.select.i, %.021.i         ; 2 uses
  %i.by = icmp sgt i32 %i.bt, %i.bx
  br i1 %i.by, label %.lr.ph.i, label %secs_to_retrans.exit, !llvm.loop !132

secs_to_retrans.exit:                             ; preds = %.lr.ph.i, %bb.ag, %.preheader.i
  %.1.i = phi i8 [ 0, %bb.ag ], [ 1, %.preheader.i ], [ %i.bv, %.lr.ph.i ]
  %i.bz = getelementptr i8, ptr %0, i64 1028
  store volatile i8 %.1.i, ptr %i.bz, align 4
  br label %tcp_sock_set_syncnt.exit

bb.ah:                                            ; preds = %bb.s
  %i.ca = load i32, ptr %i.a, align 4             ; 2 uses
  %i.cb = add i32 %i.ca, -120001
  %or.cond5 = icmp ult i32 %i.cb, -119001
  br i1 %or.cond5, label %tcp_sock_set_syncnt.exit, label %msecs_to_jiffies.exit

msecs_to_jiffies.exit:                            ; preds = %bb.ah
  %i.cc = call i64 @__msecs_to_jiffies(i32 noundef %i.ca) #20
  %i.cd = trunc i64 %i.cc to i32
  %i.ce = getelementptr i8, ptr %0, i64 1200
  store volatile i32 %i.cd, ptr %i.ce, align 8
  br label %tcp_sock_set_syncnt.exit

usecs_to_jiffies.exit195:                         ; preds = %bb.s
  %i.cf = load i32, ptr %i.a, align 4
  %i.cg = call i64 @__usecs_to_jiffies(i32 noundef %i.cf) #20
  %i.ch = trunc i64 %i.cg to i32                  ; 2 uses
  %i.ci = add i32 %i.ch, -201
  %or.cond7 = icmp ult i32 %i.ci, -199
  br i1 %or.cond7, label %tcp_sock_set_syncnt.exit, label %bb.ai

bb.ai:                                            ; preds = %usecs_to_jiffies.exit195
  %i.cj = getelementptr i8, ptr %0, i64 1196
  store volatile i32 %i.ch, ptr %i.cj, align 4
  br label %tcp_sock_set_syncnt.exit

usecs_to_jiffies.exit:                            ; preds = %bb.s
  %i.ck = load i32, ptr %i.a, align 4
  %i.cl = call i64 @__usecs_to_jiffies(i32 noundef %i.ck) #20
  %i.cm = trunc i64 %i.cl to i32                  ; 2 uses
  %i.cn = add i32 %i.cm, -201
  %or.cond9 = icmp ult i32 %i.cn, -199
  br i1 %or.cond9, label %tcp_sock_set_syncnt.exit, label %bb.aj

bb.aj:                                            ; preds = %usecs_to_jiffies.exit
  %i.co = getelementptr i8, ptr %0, i64 1204
  store volatile i32 %i.cm, ptr %i.co, align 4
  br label %tcp_sock_set_syncnt.exit

bb.ak:                                            ; preds = %bb.s
  %i.cp = load i32, ptr %i.a, align 4             ; 3 uses
  %.not.i212 = icmp ne i32 %i.cp, 0
  %i.cq = add i32 %i.cp, -32768
  %or.cond.i213 = icmp ult i32 %i.cq, -32680
  %or.cond9.i = and i1 %.not.i212, %or.cond.i213
  br i1 %or.cond9.i, label %tcp_sock_set_syncnt.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cr = trunc nuw nsw i32 %i.cp to i16
  %i.cs = getelementptr i8, ptr %0, i64 1784
  store volatile i16 %i.cr, ptr %i.cs, align 8
  br label %tcp_sock_set_syncnt.exit

bb.am:                                            ; preds = %bb.s
  call void @sockopt_lock_sock(ptr noundef %0) #20
  switch i32 %2, label %tcp_can_repair_sock.exit.thread [
    i32 1, label %bb.an
    i32 16, label %bb.ao
    i32 17, label %bb.aq
    i32 19, label %bb.ar
    i32 20, label %bb.aw
    i32 21, label %bb.az
    i32 22, label %bb.bf
    i32 3, label %bb.bj
    i32 4, label %bb.bk
    i32 27, label %bb.bl
    i32 10, label %bb.bn
    i32 12, label %bb.bo
    i32 42, label %bb.bp
    i32 14, label %bb.bq
    i32 32, label %bb.bq
    i32 23, label %bb.br
    i32 30, label %bb.bu
    i32 34, label %bb.by
    i32 24, label %bb.cb
    i32 29, label %bb.cf
    i32 25, label %bb.cg
    i32 36, label %bb.ch
    i32 37, label %bb.cj
  ]

bb.an:                                            ; preds = %bb.am
  %i.ct = load i32, ptr %i.a, align 4
  %i.cu = icmp ne i32 %i.ct, 0
  call void @__tcp_sock_set_nodelay(ptr noundef %0, i1 noundef zeroext %i.cu) #21
  br label %tcp_can_repair_sock.exit.thread

bb.ao:                                            ; preds = %bb.am
  %i.cv = load i32, ptr %i.a, align 4             ; 2 uses
  %or.cond11 = icmp ugt i32 %i.cv, 1
  br i1 %or.cond11, label %tcp_can_repair_sock.exit.thread, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.cw = trunc nuw nsw i32 %i.cv to i16
  %i.cx = getelementptr i8, ptr %0, i64 1921      ; 2 uses
  %i.cy = load i16, ptr %i.cx, align 1
  %i.cz = shl nuw nsw i16 %i.cw, 7
  %i.da = and i16 %i.cy, -129
  %i.db = or disjoint i16 %i.da, %i.cz
  store i16 %i.db, ptr %i.cx, align 1
  br label %tcp_can_repair_sock.exit.thread

bb.aq:                                            ; preds = %bb.am
  %i.dc = load i32, ptr %i.a, align 4
  %or.cond13 = icmp ugt i32 %i.dc, 1
  %spec.select192 = select i1 %or.cond13, i32 -22, i32 0
  br label %tcp_can_repair_sock.exit.thread

bb.ar:                                            ; preds = %bb.am
  %.val.i = load ptr, ptr %i.e, align 8
  %i.dd = getelementptr i8, ptr %.val.i, i64 112
  %i.de = load ptr, ptr %i.dd, align 16
  %i.df = call zeroext i1 @sockopt_ns_capable(ptr noundef %i.de, i32 noundef 12) #20
  br i1 %i.df, label %tcp_can_repair_sock.exit, label %tcp_can_repair_sock.exit.thread

tcp_can_repair_sock.exit:                         ; preds = %bb.ar
  %i.dg = getelementptr i8, ptr %0, i64 18
  %i.dh = load volatile i8, ptr %i.dg, align 2
  %.not232 = icmp eq i8 %i.dh, 10
  br i1 %.not232, label %tcp_can_repair_sock.exit.thread, label %bb.as

bb.as:                                            ; preds = %tcp_can_repair_sock.exit
  %i.di = load i32, ptr %i.a, align 4
  switch i32 %i.di, label %tcp_can_repair_sock.exit.thread [
    i32 1, label %bb.at
    i32 0, label %bb.au
    i32 -1, label %bb.av
  ]

bb.at:                                            ; preds = %bb.as
  %i.dj = getelementptr i8, ptr %0, i64 1471      ; 2 uses
  %i.dk = load i8, ptr %i.dj, align 1
  %i.dl = or i8 %i.dk, 1
  store i8 %i.dl, ptr %i.dj, align 1
  %i.dm = getelementptr i8, ptr %0, i64 19        ; 2 uses
  %i.dn = load i8, ptr %i.dm, align 1
  %i.do = and i8 %i.dn, -16
  %i.dp = or disjoint i8 %i.do, 2
  store i8 %i.dp, ptr %i.dm, align 1
  %i.dq = getelementptr i8, ptr %0, i64 1923
  store i8 0, ptr %i.dq, align 1
  br label %tcp_can_repair_sock.exit.thread

bb.au:                                            ; preds = %bb.as
  %i.dr = getelementptr i8, ptr %0, i64 1471      ; 2 uses
  %i.ds = load i8, ptr %i.dr, align 1
  %i.dt = and i8 %i.ds, -2
  store i8 %i.dt, ptr %i.dr, align 1
  %i.du = getelementptr i8, ptr %0, i64 19        ; 2 uses
  %i.dv = load i8, ptr %i.du, align 1
  %i.dw = and i8 %i.dv, -16
  store i8 %i.dw, ptr %i.du, align 1
  call void @tcp_send_window_probe(ptr noundef %0) #20
  br label %tcp_can_repair_sock.exit.thread

bb.av:                                            ; preds = %bb.as
  %i.dx = getelementptr i8, ptr %0, i64 1471      ; 2 uses
  %i.dy = load i8, ptr %i.dx, align 1
  %i.dz = and i8 %i.dy, -2
  store i8 %i.dz, ptr %i.dx, align 1
  %i.ea = getelementptr i8, ptr %0, i64 19        ; 2 uses
  %i.eb = load i8, ptr %i.ea, align 1
  %i.ec = and i8 %i.eb, -16
  store i8 %i.ec, ptr %i.ea, align 1
  br label %tcp_can_repair_sock.exit.thread

bb.aw:                                            ; preds = %bb.am
  %i.ed = getelementptr i8, ptr %0, i64 1471
  %i.ee = load i8, ptr %i.ed, align 1
  %i.ef = and i8 %i.ee, 1
  %.not191 = icmp eq i8 %i.ef, 0
  br i1 %.not191, label %tcp_can_repair_sock.exit.thread, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.eg = load i32, ptr %i.a, align 4             ; 2 uses
  %i.eh = icmp ult i32 %i.eg, 3
  br i1 %i.eh, label %bb.ay, label %tcp_can_repair_sock.exit.thread

bb.ay:                                            ; preds = %bb.ax
  %i.ei = trunc nuw nsw i32 %i.eg to i8
  %i.ej = getelementptr i8, ptr %0, i64 1923
  store i8 %i.ei, ptr %i.ej, align 1
  br label %tcp_can_repair_sock.exit.thread

bb.az:                                            ; preds = %bb.am
  %i.ek = getelementptr i8, ptr %0, i64 18
  %i.el = load volatile i8, ptr %i.ek, align 2
  %.not189 = icmp eq i8 %i.el, 7
  br i1 %.not189, label %bb.ba, label %tcp_can_repair_sock.exit.thread

bb.ba:                                            ; preds = %bb.az
  %i.em = getelementptr i8, ptr %0, i64 1923
  %i.en = load i8, ptr %i.em, align 1
end_hunk_0
begin_hunk_1_@do_tcp_setsockopt:bb.a
  %i.gw = icmp eq i8 %i.gv, 7
  br i1 %i.gw, label %bb.bx, label %tcp_can_repair_sock.exit.thread

bb.bx:                                            ; preds = %bb.bw
  %i.gx = trunc nuw nsw i32 %i.gq to i16
  %i.gy = getelementptr i8, ptr %0, i64 1921      ; 2 uses
  %i.gz = load i16, ptr %i.gy, align 1
  %i.ha = shl nuw nsw i16 %i.gx, 8
  %i.hb = and i16 %i.gz, -257
  %i.hc = or disjoint i16 %i.hb, %i.ha
  store i16 %i.hc, ptr %i.gy, align 1
  br label %tcp_can_repair_sock.exit.thread

bb.by:                                            ; preds = %bb.am
  %i.hd = load i32, ptr %i.a, align 4             ; 2 uses
  %or.cond19 = icmp ugt i32 %i.hd, 1
  br i1 %or.cond19, label %tcp_can_repair_sock.exit.thread, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.he = getelementptr i8, ptr %0, i64 18
  %i.hf = load volatile i8, ptr %i.he, align 2
  %i.hg = zext nneg i8 %i.hf to i32
  %i.hh = shl nuw i32 1, %i.hg
  %i.hi = and i32 %i.hh, 1152
  %.not184 = icmp eq i32 %i.hi, 0
  br i1 %.not184, label %tcp_can_repair_sock.exit.thread, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.hj = trunc nuw nsw i32 %i.hd to i16
  %i.hk = getelementptr i8, ptr %0, i64 1921      ; 2 uses
  %i.hl = load i16, ptr %i.hk, align 1
  %i.hm = shl nuw nsw i16 %i.hj, 9
  %i.hn = and i16 %i.hl, -513
  %i.ho = or disjoint i16 %i.hn, %i.hm
  store i16 %i.ho, ptr %i.hk, align 1
  br label %tcp_can_repair_sock.exit.thread

bb.cb:                                            ; preds = %bb.am
  %i.hp = getelementptr i8, ptr %0, i64 1471      ; 2 uses
  %i.hq = load i8, ptr %i.hp, align 1             ; 2 uses
  %i.hr = and i8 %i.hq, 1
  %.not183 = icmp eq i8 %i.hr, 0
  br i1 %.not183, label %tcp_can_repair_sock.exit.thread, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.hs = load i32, ptr %i.a, align 4             ; 3 uses
  %i.ht = trunc i32 %i.hs to i8
  %i.hu = shl i8 %i.ht, 1
  %i.hv = and i8 %i.hu, 2
  %i.hw = and i8 %i.hq, -3
  %i.hx = or disjoint i8 %i.hv, %i.hw
  store i8 %i.hx, ptr %i.hp, align 1
  %i.hy = trunc i32 %i.hs to i1
  %i.hz = call i64 @ktime_get() #20               ; 2 uses
  br i1 %i.hy, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.ia = udiv i64 %i.hz, 1000
  br label %tcp_clock_ts.exit

bb.ce:                                            ; preds = %bb.cc
  %i.ib = udiv i64 %i.hz, 1000000
  br label %tcp_clock_ts.exit

tcp_clock_ts.exit:                                ; preds = %bb.cd, %bb.ce
  %i.ic = phi i64 [ %i.ia, %bb.cd ], [ %i.ib, %bb.ce ]
  %i.id = trunc i64 %i.ic to i32
  %i.ie = sub i32 %i.hs, %i.id
  %i.if = getelementptr i8, ptr %0, i64 1440
  store volatile i32 %i.ie, ptr %i.if, align 32
  br label %tcp_can_repair_sock.exit.thread

bb.cf:                                            ; preds = %bb.am
  %i.ig = call fastcc i32 @tcp_repair_set_window(ptr noundef %0, ptr %3, i8 %4, i32 noundef %5) #21, !srcloc !135
  br label %tcp_can_repair_sock.exit.thread

bb.cg:                                            ; preds = %bb.am
  %i.ih = load i32, ptr %i.a, align 4
  %i.ii = getelementptr i8, ptr %0, i64 1420
  store volatile i32 %i.ih, ptr %i.ii, align 4
  %i.ij = getelementptr i8, ptr %0, i64 696
  %i.ik = load volatile ptr, ptr %i.ij, align 8
  call void %i.ik(ptr noundef %0) #20
  br label %tcp_can_repair_sock.exit.thread

bb.ch:                                            ; preds = %bb.am
  %i.il = load i32, ptr %i.a, align 4             ; 2 uses
  %or.cond21 = icmp ugt i32 %i.il, 1
  br i1 %or.cond21, label %tcp_can_repair_sock.exit.thread, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.im = trunc nuw nsw i32 %i.il to i8
  %i.in = getelementptr i8, ptr %0, i64 1471      ; 2 uses
  %i.io = load i8, ptr %i.in, align 1
  %i.ip = shl nuw nsw i8 %i.im, 4
  %i.iq = and i8 %i.io, -17
  %i.ir = or disjoint i8 %i.iq, %i.ip
  store i8 %i.ir, ptr %i.in, align 1
  br label %tcp_can_repair_sock.exit.thread

bb.cj:                                            ; preds = %bb.am
  %i.is = load i32, ptr %i.a, align 4             ; 2 uses
  %i.it = icmp ugt i32 %i.is, 268435455
  br i1 %i.it, label %tcp_can_repair_sock.exit.thread, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  call fastcc void @tcp_enable_tx_delay(ptr noundef %0, i32 noundef %i.is) #21, !srcloc !136
  %i.iu = load i32, ptr %i.a, align 4
  %i.iv = getelementptr i8, ptr %0, i64 1928
  store volatile i32 %i.iu, ptr %i.iv, align 8
  br label %tcp_can_repair_sock.exit.thread

tcp_can_repair_sock.exit.thread:                  ; preds = %tcp_can_repair_sock.exit216, %bb.bp, %bb.ar, %bb.aq, %bb.am, %bb.cj, %bb.ch, %bb.cb, %bb.bz, %bb.by, %bb.bv, %bb.bw, %bb.bu, %bb.br, %bb.bs, %bb.bl, %bb.bg, %bb.bh, %bb.bf, %bb.ba, %bb.bd, %bb.bb, %bb.az, %bb.ax, %bb.aw, %bb.as, %tcp_can_repair_sock.exit, %bb.ao, %bb.ci, %bb.ca, %bb.bx, %bb.bt, %bb.bm, %bb.bi, %bb.be, %bb.bc, %bb.ay, %bb.au, %bb.av, %bb.at, %bb.ap, %bb.ck, %bb.cg, %bb.cf, %tcp_clock_ts.exit, %bb.bq, %bb.bo, %bb.bn, %bb.bk, %bb.bj, %bb.an
  %.0166 = phi i32 [ -22, %bb.cj ], [ 0, %bb.an ], [ 0, %bb.ck ], [ 0, %bb.ap ], [ -22, %bb.ao ], [ -92, %bb.am ], [ 0, %bb.at ], [ 0, %bb.au ], [ 0, %bb.av ], [ -1, %tcp_can_repair_sock.exit ], [ %spec.select192, %bb.aq ], [ 0, %bb.ay ], [ -1, %bb.aw ], [ -22, %bb.as ], [ -22, %bb.ax ], [ 0, %bb.bc ], [ -1, %bb.az ], [ -1, %bb.bb ], [ 0, %bb.be ], [ -1, %bb.bd ], [ -22, %bb.bf ], [ %i.fg, %bb.bi ], [ -22, %bb.ba ], [ 0, %bb.bj ], [ %i.fk, %bb.bk ], [ -1, %bb.bg ], [ 0, %bb.bm ], [ %i.fs, %bb.bn ], [ 0, %bb.bo ], [ -1, %bb.bp ], [ -22, %bb.bl ], [ %i.gd, %bb.bq ], [ 0, %bb.bt ], [ %spec.select231, %tcp_can_repair_sock.exit216 ], [ -22, %bb.br ], [ 0, %bb.bx ], [ -22, %bb.bu ], [ -22, %bb.bw ], [ -95, %bb.bv ], [ 0, %bb.ca ], [ -22, %bb.by ], [ 0, %tcp_clock_ts.exit ], [ -22, %bb.bz ], [ %i.ig, %bb.cf ], [ 0, %bb.cg ], [ -1, %bb.cb ], [ 0, %bb.ci ], [ -22, %bb.ch ], [ -1, %bb.bh ], [ -22, %bb.bs ], [ -1, %bb.ar ]
  call void @sockopt_release_sock(ptr noundef %0) #20
  br label %tcp_sock_set_syncnt.exit

tcp_sock_set_syncnt.exit:                         ; preds = %bb.al, %bb.ak, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.aj, %usecs_to_jiffies.exit, %bb.ai, %usecs_to_jiffies.exit195, %bb.ah, %bb.ac, %bb.af, %bb.ae, %copy_from_sockptr.exit205, %bb.q, %tcp_can_repair_sock.exit.thread, %msecs_to_jiffies.exit, %secs_to_retrans.exit, %.critedge, %bb.m, %bb.g
  %.5 = phi i32 [ %.2, %.critedge ], [ -22, %bb.q ], [ %.0166, %tcp_can_repair_sock.exit.thread ], [ -22, %bb.ak ], [ -22, %bb.t ], [ -22, %bb.v ], [ -22, %bb.x ], [ -14, %copy_from_sockptr.exit205 ], [ 0, %secs_to_retrans.exit ], [ 0, %bb.ac ], [ 0, %msecs_to_jiffies.exit ], [ -22, %bb.ah ], [ -22, %usecs_to_jiffies.exit195 ], [ 0, %bb.al ], [ %.0, %bb.g ], [ %.1, %bb.m ], [ 0, %bb.ae ], [ 0, %bb.af ], [ 0, %bb.ai ], [ 0, %bb.aj ], [ -22, %usecs_to_jiffies.exit ], [ 0, %bb.u ], [ 0, %bb.w ], [ 0, %bb.y ], [ 0, %bb.aa ], [ -22, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i32 %.5
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @sockopt_lock_sock(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @tcp_set_congestion_control(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @sockopt_ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @sockopt_release_sock(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @tcp_set_ulp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @copy_from_sockptr(ptr noundef %0, ptr %1, i8 %2, i64 noundef range(i64 -2147483648, 4294967296) %3) unnamed_addr #6 align 16 prefalign(16) {
bb.a:
  %i.a = trunc i8 %2 to i1
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ugt i64 %3, 2147483647
  br i1 %i.b, label %bb.c, label %check_copy_size.exit.i.i, !prof !34

bb.c:                                             ; preds = %bb.b
  tail call void asm sideeffect "312: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 312b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 312) #19, !srcloc !56
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.3, ptr nonnull @.str.16, i32 57, i32 2307, i64 16) #19, !srcloc !57
  tail call void asm sideeffect "313: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 313b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 313) #19, !srcloc !58
  br label %copy_from_user.exit.i

check_copy_size.exit.i.i:                         ; preds = %bb.b
  %i.c = tail call i64 @_copy_from_user(ptr noundef %0, ptr noundef %1, i64 noundef range(i64 -2147483648, 4294967296) %3) #20
  br label %copy_from_user.exit.i

copy_from_user.exit.i:                            ; preds = %check_copy_size.exit.i.i, %bb.c
  %.0.i.i = phi i64 [ %i.c, %check_copy_size.exit.i.i ], [ %3, %bb.c ]
  %i.d = trunc i64 %.0.i.i to i32
  br label %copy_from_sockptr_offset.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr align 1 %1, i64 range(i64 -2147483648, 4294967296) %3, i1 false)
  br label %copy_from_sockptr_offset.exit

copy_from_sockptr_offset.exit:                    ; preds = %copy_from_user.exit.i, %bb.d
  %.0.i = phi i32 [ 0, %bb.d ], [ %i.d, %copy_from_user.exit.i ]
  ret i32 %.0.i
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @tcp_fastopen_reset_cipher(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @tcp_send_window_probe(ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 -27, 1) i32 @tcp_repair_options_est(ptr noundef %0, ptr %1, i8 %2, i32 noundef %3) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %4 = alloca %struct.tcp_repair_opt, align 8     ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 4 uses
  %i.b = icmp ugt i32 %3, 7
  br i1 %i.b, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  store i64 0, ptr %4, align 8, !annotation !24
  %i.c = zext i32 %3 to i64                       ; 2 uses
  %i.d = trunc i8 %2 to i1
  %i.e = getelementptr i8, ptr %0, i64 1780       ; 12 uses
  %i.f = getelementptr i8, ptr %0, i64 1786       ; 2 uses
  br i1 %i.d, label %copy_from_sockptr_offset.exit.thread.us, label %copy_from_sockptr_offset.exit

copy_from_sockptr_offset.exit.thread.us:          ; preds = %.lr.ph, %bb.i
  %.02135.us = phi i64 [ %i.i, %bb.i ], [ 0, %.lr.ph ] ; 2 uses
  %.02334.us = phi i64 [ %i.j, %bb.i ], [ %i.c, %.lr.ph ]
  %i.g = getelementptr i8, ptr %1, i64 %.02135.us
  %i.h = load i64, ptr %i.g, align 1              ; 5 uses
  %i.i = add nuw i64 %.02135.us, 8
  %i.j = add nsw i64 %.02334.us, -8               ; 2 uses
  %i.k = trunc i64 %i.h to i32
  %i.l = lshr i64 %i.h, 32                        ; 4 uses
  switch i32 %i.k, label %bb.i [
    i32 2, label %bb.h
    i32 3, label %bb.f
    i32 4, label %bb.d
    i32 8, label %bb.b
  ]

bb.b:                                             ; preds = %copy_from_sockptr_offset.exit.thread.us
  %.not25.us = icmp eq i64 %i.l, 0
  br i1 %.not25.us, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.m = load i16, ptr %i.e, align 4
  %i.n = or i16 %i.m, 2
  store i16 %i.n, ptr %i.e, align 4
  br label %bb.i

bb.d:                                             ; preds = %copy_from_sockptr_offset.exit.thread.us
  %.not26.us = icmp eq i64 %i.l, 0
  br i1 %.not26.us, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.o = load i16, ptr %i.e, align 4
  %i.p = or i16 %i.o, 16
  store i16 %i.p, ptr %i.e, align 4
  br label %bb.i

bb.f:                                             ; preds = %copy_from_sockptr_offset.exit.thread.us
  %i.q = and i64 %i.h, 281470681743360
  %i.r = icmp samesign ult i64 %i.q, 64424509440
  %i.s = icmp ult i64 %i.h, 4222124650659840
  %or.cond.not.us = and i1 %i.s, %i.r
  br i1 %or.cond.not.us, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.t = trunc i64 %i.l to i16
  %i.u = load i16, ptr %i.e, align 4
  %i.v = shl i16 %i.t, 8
  %i.w = and i16 %i.u, 247
  %sh.diff.us52 = lshr i64 %i.h, 36
  %tr.sh.diff.us = trunc nuw i64 %sh.diff.us52 to i16
  %i.x = and i16 %tr.sh.diff.us, -4096
  %.masked.us = and i16 %i.v, 3840
  %i.y = or disjoint i16 %.masked.us, %i.x
  %i.z = or disjoint i16 %i.y, %i.w
  %i.aa = or disjoint i16 %i.z, 8
  store i16 %i.aa, ptr %i.e, align 4
  br label %bb.i

bb.h:                                             ; preds = %copy_from_sockptr_offset.exit.thread.us
  %i.ab = trunc i64 %i.l to i16
  store i16 %i.ab, ptr %i.f, align 2
  tail call void @tcp_mtup_init(ptr noundef %0) #20
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.e, %bb.c, %copy_from_sockptr_offset.exit.thread.us
  %i.ac = icmp ugt i64 %i.j, 7
  br i1 %i.ac, label %copy_from_sockptr_offset.exit.thread.us, label %.critedge, !llvm.loop !137

copy_from_sockptr_offset.exit:                    ; preds = %.lr.ph, %bb.r
  %.02135 = phi i64 [ %i.ag, %bb.r ], [ 0, %.lr.ph ] ; 2 uses
  %.02334 = phi i64 [ %i.ah, %bb.r ], [ %i.c, %.lr.ph ]
  %i.ad = getelementptr i8, ptr %1, i64 %.02135
  %i.ae = call i64 @_copy_from_user(ptr noundef nonnull %4, ptr noundef %i.ad, i64 noundef range(i64 -2147483648, 4294967296) 8) #20
  %i.af = and i64 %i.ae, 4294967295
  %.not = icmp eq i64 %i.af, 0
  br i1 %.not, label %bb.j, label %.critedge

bb.j:                                             ; preds = %copy_from_sockptr_offset.exit
  %i.ag = add nuw i64 %.02135, 8
  %i.ah = add nsw i64 %.02334, -8                 ; 2 uses
  %i.ai = load i32, ptr %4, align 8
  switch i32 %i.ai, label %bb.r [
    i32 2, label %bb.k
    i32 3, label %bb.l
    i32 4, label %bb.n
    i32 8, label %bb.p
  ]

bb.k:                                             ; preds = %bb.j
  %i.aj = load i32, ptr %i.a, align 4
  %i.ak = trunc i32 %i.aj to i16
  store i16 %i.ak, ptr %i.f, align 2
  call void @tcp_mtup_init(ptr noundef %0) #20
  br label %bb.r

bb.l:                                             ; preds = %bb.j
  %i.al = load i32, ptr %i.a, align 4             ; 4 uses
  %i.am = and i32 %i.al, 65535
  %i.an = icmp samesign ult i32 %i.am, 15
  %i.ao = icmp ult i32 %i.al, 983040
  %or.cond.not = and i1 %i.ao, %i.an
  br i1 %or.cond.not, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  %i.ap = trunc i32 %i.al to i16
  %i.aq = load i16, ptr %i.e, align 4
  %i.ar = shl i16 %i.ap, 8
  %i.as = and i16 %i.aq, 247
  %sh.diff = lshr i32 %i.al, 4
  %tr.sh.diff = trunc nuw i32 %sh.diff to i16
  %i.at = and i16 %tr.sh.diff, -4096
  %.masked = and i16 %i.ar, 3840
  %i.au = or disjoint i16 %.masked, %i.at
  %i.av = or disjoint i16 %i.au, %i.as
  %i.aw = or disjoint i16 %i.av, 8
  store i16 %i.aw, ptr %i.e, align 4
  br label %bb.r

bb.n:                                             ; preds = %bb.j
  %i.ax = load i32, ptr %i.a, align 4
  %.not26 = icmp eq i32 %i.ax, 0
  br i1 %.not26, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.n
  %i.ay = load i16, ptr %i.e, align 4
  %i.az = or i16 %i.ay, 16
  store i16 %i.az, ptr %i.e, align 4
  br label %bb.r

bb.p:                                             ; preds = %bb.j
  %i.ba = load i32, ptr %i.a, align 4
  %.not25 = icmp eq i32 %i.ba, 0
  br i1 %.not25, label %bb.q, label %.critedge

bb.q:                                             ; preds = %bb.p
  %i.bb = load i16, ptr %i.e, align 4
  %i.bc = or i16 %i.bb, 2
  store i16 %i.bc, ptr %i.e, align 4
  br label %bb.r

bb.r:                                             ; preds = %bb.m, %bb.q, %bb.o, %bb.k, %bb.j
  %i.bd = icmp ugt i64 %i.ah, 7
  br i1 %i.bd, label %copy_from_sockptr_offset.exit, label %.critedge, !llvm.loop !137

.critedge:                                        ; preds = %copy_from_sockptr_offset.exit, %bb.n, %bb.p, %bb.r, %bb.l, %bb.d, %bb.b, %bb.i, %bb.f, %bb.a
  %.3 = phi i32 [ -27, %bb.f ], [ 0, %bb.a ], [ 0, %bb.i ], [ -22, %bb.b ], [ -22, %bb.d ], [ -14, %copy_from_sockptr_offset.exit ], [ 0, %bb.r ], [ -27, %bb.l ], [ -22, %bb.p ], [ -22, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  ret i32 %.3
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @tcp_fastopen_init_key_once(ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 -22, 1) i32 @tcp_repair_set_window(ptr nofree noundef captures(none) %0, ptr %1, i8 %2, i32 noundef %3) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %4 = alloca %struct.tcp_repair_window, align 4  ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.a = getelementptr i8, ptr %0, i64 1471
  %i.b = load i8, ptr %i.a, align 1
  %i.c = and i8 %i.b, 1
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not10 = icmp eq i32 %3, 20
  br i1 %.not10, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %4, i8 0, i64 20, i1 false), !annotation !24
  %i.d = trunc i8 %2 to i1
  br i1 %i.d, label %copy_from_sockptr.exit.thread, label %copy_from_sockptr.exit

copy_from_sockptr.exit.thread:                    ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %4, ptr noundef align 1 dereferenceable(20) %1, i64 range(i64 -2147483648, 4294967296) 20, i1 false)
  br label %bb.d

copy_from_sockptr.exit:                           ; preds = %bb.c
  %i.e = call i64 @_copy_from_user(ptr noundef nonnull %4, ptr noundef %1, i64 noundef range(i64 -2147483648, 4294967296) 20) #20
  %i.f = and i64 %i.e, 4294967295
  %.not11 = icmp eq i64 %i.f, 0
  br i1 %.not11, label %bb.d, label %bb.h

bb.d:                                             ; preds = %copy_from_sockptr.exit.thread, %copy_from_sockptr.exit
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.h = load i32, ptr %i.g, align 4              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.j = load i32, ptr %i.i, align 4              ; 2 uses
  %i.k = icmp ult i32 %i.h, %i.j
  br i1 %i.k, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr i8, ptr %0, i64 1704
  %i.m = load i32, ptr %i.l, align 8              ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.o = load i32, ptr %i.n, align 4              ; 3 uses
  %i.p = add i32 %i.o, %i.m
  %i.q = load i32, ptr %4, align 4                ; 2 uses
  %i.r = sub i32 %i.p, %i.q
  %i.s = icmp slt i32 %i.r, 0
  br i1 %i.s, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.u = load i32, ptr %i.t, align 4              ; 3 uses
  %i.v = sub i32 %i.m, %i.u
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr i8, ptr %0, i64 1476
  store i32 %i.q, ptr %i.x, align 4
  %i.y = getelementptr i8, ptr %0, i64 1444
  store i32 %i.j, ptr %i.y, align 4
  %i.z = getelementptr i8, ptr %0, i64 1408
  store i32 %i.h, ptr %i.z, align 64
  %i.aa = getelementptr i8, ptr %0, i64 1752
  store i32 %i.o, ptr %i.aa, align 8
  %i.ab = getelementptr i8, ptr %0, i64 1812
  store i32 %i.u, ptr %i.ab, align 4
  %i.ac = add i32 %i.u, %i.o
  %i.ad = getelementptr i8, ptr %0, i64 1756
  store i32 %i.ac, ptr %i.ad, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.d, %copy_from_sockptr.exit, %bb.b, %bb.a, %bb.g
  %.0 = phi i32 [ -1, %bb.a ], [ -22, %bb.b ], [ -14, %copy_from_sockptr.exit ], [ -22, %bb.d ], [ -22, %bb.e ], [ 0, %bb.g ], [ -22, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @tcp_enable_tx_delay(ptr noundef %0, i32 noundef range(i32 0, 268435456) %1) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 1928
  %i.b = load i32, ptr %i.a, align 8
  %i.c = sub i32 %1, %i.b
  %i.d = shl i32 %i.c, 3                          ; 2 uses
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %arch_static_branch.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @tcp_tx_delay_enabled, i1 false) #19
          to label %arch_static_branch.exit [label %arch_static_branch.exit.thread], !srcloc !25

arch_static_branch.exit:                          ; preds = %bb.b
  %i.e = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $2, $1", "={ax},=*m,r,0,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @tcp_enable_tx_delay.__tcp_tx_delay_enabled, i32 1, i32 0, ptr nonnull elementtype(i32) @tcp_enable_tx_delay.__tcp_tx_delay_enabled) #19, !srcloc !138
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %arch_static_branch.exit.thread

bb.c:                                             ; preds = %arch_static_branch.exit
  tail call void @static_key_enable(ptr noundef nonnull @tcp_tx_delay_enabled) #20
  %i.g = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #25 ; 0 uses
  br label %arch_static_branch.exit.thread

arch_static_branch.exit.thread:                   ; preds = %bb.b, %arch_static_branch.exit, %bb.c, %bb.a
  %.not43 = icmp eq i32 %i.d, 0
  br i1 %.not43, label %bb.f, label %bb.d

bb.d:                                             ; preds = %arch_static_branch.exit.thread
  %i.h = getelementptr i8, ptr %0, i64 18
  %i.i = load volatile i8, ptr %i.h, align 2
  %i.j = icmp eq i8 %i.i, 1
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr i8, ptr %0, i64 1720       ; 2 uses
  %i.l = load i32, ptr %i.k, align 8
  %i.m = zext i32 %i.l to i64
  %i.n = sext i32 %i.d to i64
  %i.o = add nsw i64 %i.m, %i.n                   ; 2 uses
  %i.p = icmp sgt i64 %i.o, 4294967294
  %i.q = tail call i64 @llvm.smax.i64(i64 %i.o, i64 1)
  %i.r = trunc i64 %i.q to i32
  %i.s = select i1 %i.p, i32 -1, i32 %i.r
  store volatile i32 %i.s, ptr %i.k, align 8
  tail call void @tcp_set_rto(ptr noundef %0) #20
  %i.t = getelementptr i8, ptr %0, i64 1504       ; 2 uses
  %i.u = load volatile i64, ptr @jiffies, align 64
end_hunk_1
begin_hunk_2_@do_tcp_getsockopt:bb.a
    i32 19, label %bb.au
    i32 20, label %bb.av
    i32 29, label %bb.ax
    i32 21, label %bb.bc
    i32 18, label %bb.bf
    i32 23, label %bb.bg
    i32 30, label %bb.bh
    i32 34, label %bb.bi
    i32 37, label %bb.bj
    i32 24, label %bb.bk
    i32 25, label %bb.bp
    i32 36, label %bb.bq
    i32 27, label %bb.br
    i32 28, label %bb.bs
    i32 35, label %bb.cd
    i32 42, label %bb.cy
    i32 41, label %bb.cz
    i32 40, label %bb.cz
    i32 43, label %.sink.split
    i32 44, label %bb.da
    i32 45, label %bb.db
    i32 46, label %bb.dc
  ]

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr i8, ptr %0, i64 1448
  %i.p = load i32, ptr %i.o, align 8
  store i32 %i.p, ptr %i.a, align 4
  %i.q = getelementptr i8, ptr %0, i64 1784
  %i.r = load volatile i16, ptr %i.q, align 8     ; 2 uses
  %i.s = zext i16 %i.r to i32
  %.not236 = icmp eq i16 %i.r, 0
  br i1 %.not236, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr i8, ptr %0, i64 18
  %i.u = load volatile i8, ptr %i.t, align 2
  %i.v = zext nneg i8 %i.u to i32
  %i.w = shl nuw i32 1, %i.v
  %i.x = and i32 %i.w, 1152
  %.not237 = icmp eq i32 %i.x, 0
  br i1 %.not237, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 %i.s, ptr %i.a, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.y = getelementptr i8, ptr %0, i64 1471
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = and i8 %i.z, 1
  %.not238 = icmp eq i8 %i.aa, 0
  br i1 %.not238, label %bb.dd, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr i8, ptr %0, i64 1786
  %i.ac = load i16, ptr %i.ab, align 2
  %i.ad = zext i16 %i.ac to i32
  br label %.sink.split

bb.h:                                             ; preds = %bb.b
  %i.ae = getelementptr i8, ptr %0, i64 1681
  %i.af = load i16, ptr %i.ae, align 1
  %i.ag = and i16 %i.af, 1
  %i.ah = zext nneg i16 %i.ag to i32
  br label %.sink.split

bb.i:                                             ; preds = %bb.b
  %i.ai = getelementptr i8, ptr %0, i64 1681
  %i.aj = load i16, ptr %i.ai, align 1
  %i.ak = lshr i16 %i.aj, 1
  %.lobit = and i16 %i.ak, 1
  %i.al = zext nneg i16 %.lobit to i32
  br label %.sink.split

bb.j:                                             ; preds = %bb.b
  %.val.i = load ptr, ptr %i.e, align 8
  %i.am = getelementptr i8, ptr %0, i64 2260
  %i.an = load volatile i32, ptr %i.am, align 4   ; 2 uses
  %.not.i = icmp eq i32 %i.an, 0
  br i1 %.not.i, label %bb.k, label %keepalive_time_when.exit

bb.k:                                             ; preds = %bb.j
  %i.ao = getelementptr i8, ptr %.val.i, i64 1484
  %i.ap = load volatile i32, ptr %i.ao, align 4
  br label %keepalive_time_when.exit

keepalive_time_when.exit:                         ; preds = %bb.j, %bb.k
  %i.aq = phi i32 [ %i.ap, %bb.k ], [ %i.an, %bb.j ]
  %i.ar = sdiv i32 %i.aq, 1000
  br label %.sink.split

bb.l:                                             ; preds = %bb.b
  %.val.i249 = load ptr, ptr %i.e, align 8
  %i.as = getelementptr i8, ptr %0, i64 2264
  %i.at = load volatile i32, ptr %i.as, align 8   ; 2 uses
  %.not.i250 = icmp eq i32 %i.at, 0
  br i1 %.not.i250, label %bb.m, label %keepalive_intvl_when.exit

bb.m:                                             ; preds = %bb.l
  %i.au = getelementptr i8, ptr %.val.i249, i64 1488
  %i.av = load volatile i32, ptr %i.au, align 16
  br label %keepalive_intvl_when.exit

keepalive_intvl_when.exit:                        ; preds = %bb.l, %bb.m
  %i.aw = phi i32 [ %i.av, %bb.m ], [ %i.at, %bb.l ]
  %i.ax = sdiv i32 %i.aw, 1000
  br label %.sink.split

bb.n:                                             ; preds = %bb.b
  %.val.i251 = load ptr, ptr %i.e, align 8
  %i.ay = getelementptr i8, ptr %0, i64 1925
  %i.az = load volatile i8, ptr %i.ay, align 1    ; 2 uses
  %.not.i252 = icmp eq i8 %i.az, 0
  br i1 %.not.i252, label %bb.o, label %keepalive_probes.exit

bb.o:                                             ; preds = %bb.n
  %i.ba = getelementptr i8, ptr %.val.i251, i64 1492
  %i.bb = load volatile i8, ptr %i.ba, align 4
  br label %keepalive_probes.exit

keepalive_probes.exit:                            ; preds = %bb.n, %bb.o
  %.in.i = phi i8 [ %i.bb, %bb.o ], [ %i.az, %bb.n ]
  %i.bc = zext i8 %.in.i to i32
  br label %.sink.split

bb.p:                                             ; preds = %bb.b
  %i.bd = getelementptr i8, ptr %0, i64 1260
  %i.be = load volatile i8, ptr %i.bd, align 4    ; 2 uses
  %.not235 = icmp eq i8 %i.be, 0
  br i1 %.not235, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bf = getelementptr i8, ptr %.val, i64 1493
  %i.bg = load volatile i8, ptr %i.bf, align 1
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %.in = phi i8 [ %i.bg, %bb.q ], [ %i.be, %bb.p ]
  %i.bh = zext i8 %.in to i32
  br label %.sink.split

bb.s:                                             ; preds = %bb.b
  %i.bi = getelementptr i8, ptr %0, i64 2268
  %i.bj = load volatile i32, ptr %i.bi, align 4   ; 4 uses
  store i32 %i.bj, ptr %i.a, align 4
  %i.bk = icmp sgt i32 %i.bj, -1
  br i1 %i.bk, label %bb.t, label %bb.dd

bb.t:                                             ; preds = %bb.s
  %.not234 = icmp eq i32 %i.bj, 0
  br i1 %.not234, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bl = getelementptr i8, ptr %.val, i64 1508
  %i.bm = load volatile i32, ptr %i.bl, align 4
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %i.bn = phi i32 [ %i.bm, %bb.u ], [ %i.bj, %bb.t ]
  %i.bo = sdiv i32 %i.bn, 1000
  br label %.sink.split

bb.w:                                             ; preds = %bb.b
  %i.bp = getelementptr i8, ptr %0, i64 1028
  %i.bq = load volatile i8, ptr %i.bp, align 4    ; 3 uses
  %.not.i253 = icmp eq i8 %i.bq, 0
  br i1 %.not.i253, label %.sink.split, label %.preheader.i

.preheader.i:                                     ; preds = %bb.w
  %i.br = add i8 %i.bq, -1                        ; 3 uses
  %.not1617.i = icmp eq i8 %i.br, 0
  br i1 %.not1617.i, label %.sink.split, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  %i.bs = add i8 %i.bq, -2
  %xtraiter = and i8 %i.br, 3                     ; 3 uses
  %i.bt = icmp ult i8 %i.bs, 3
  br i1 %i.bt, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i8 %i.br, -4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.019.i = phi i32 [ 1, %.lr.ph.i.preheader.new ], [ %i.cb, %.lr.ph.i ]
  %.01118.i = phi i32 [ 1, %.lr.ph.i.preheader.new ], [ %spec.select.i.3, %.lr.ph.i ]
  %niter = phi i8 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.bu = shl i32 %.01118.i, 1
  %spec.select.i = call i32 @llvm.smin.i32(i32 %i.bu, i32 120) ; 2 uses
  %i.bv = add i32 %spec.select.i, %.019.i
  %i.bw = shl i32 %spec.select.i, 1
  %spec.select.i.1 = call i32 @llvm.smin.i32(i32 %i.bw, i32 120) ; 2 uses
  %i.bx = add i32 %spec.select.i.1, %i.bv
  %i.by = shl i32 %spec.select.i.1, 1
  %spec.select.i.2 = call i32 @llvm.smin.i32(i32 %i.by, i32 120) ; 2 uses
  %i.bz = add i32 %spec.select.i.2, %i.bx
  %i.ca = shl i32 %spec.select.i.2, 1
  %spec.select.i.3 = call i32 @llvm.smin.i32(i32 %i.ca, i32 120) ; 3 uses
  %i.cb = add i32 %spec.select.i.3, %i.bz         ; 3 uses
  %niter.next.3 = add nuw i8 %niter, 4            ; 2 uses
  %niter.ncmp.3 = icmp eq i8 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.sink.split.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !139

bb.x:                                             ; preds = %bb.b
  %i.cc = getelementptr i8, ptr %0, i64 1716
  %i.cd = load volatile i32, ptr %i.cc, align 4
  br label %.sink.split

bb.y:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %6, i8 0, i64 280, i1 false), !annotation !24
  br i1 %i.i, label %copy_from_sockptr.exit258.thread, label %copy_from_sockptr.exit258

copy_from_sockptr.exit258.thread:                 ; preds = %bb.y
  %i.ce = load i32, ptr %i.f, align 1
  store i32 %i.ce, ptr %i.b, align 4
  br label %bb.z

copy_from_sockptr.exit258:                        ; preds = %bb.y
  %i.cf = call i64 @_copy_from_user(ptr noundef nonnull %i.b, ptr noundef %i.f, i64 noundef range(i64 -2147483648, 4294967296) 4) #20
  %i.cg = and i64 %i.cf, 4294967295
  %.not231 = icmp eq i64 %i.cg, 0
  br i1 %.not231, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %copy_from_sockptr.exit258.thread, %copy_from_sockptr.exit258
  call void @tcp_get_info(ptr noundef %0, ptr noundef nonnull %6) #21
  %i.ch = load i32, ptr %i.b, align 4
  %i.ci = call i32 @llvm.umin.i32(i32 %i.ch, i32 280) ; 3 uses
  store i32 %i.ci, ptr %i.b, align 4
  br i1 %i.i, label %copy_to_sockptr.exit.thread, label %copy_to_sockptr.exit

copy_to_sockptr.exit.thread:                      ; preds = %bb.z
  store i32 %i.ci, ptr %i.f, align 1
  br label %bb.aa

copy_to_sockptr.exit:                             ; preds = %bb.z
  %i.cj = call i64 @_copy_to_user(ptr noundef %i.f, ptr noundef nonnull %i.b, i64 noundef range(i64 -2147483648, 2147483648) 4) #20
  %i.ck = and i64 %i.cj, 4294967295
  %.not232 = icmp eq i64 %i.ck, 0
  br i1 %.not232, label %copy_to_sockptr.exit._crit_edge, label %bb.ab

copy_to_sockptr.exit._crit_edge:                  ; preds = %copy_to_sockptr.exit
  %.pre483 = load i32, ptr %i.b, align 4
  br label %bb.aa

bb.aa:                                            ; preds = %copy_to_sockptr.exit._crit_edge, %copy_to_sockptr.exit.thread
  %i.cl = phi i32 [ %.pre483, %copy_to_sockptr.exit._crit_edge ], [ %i.ci, %copy_to_sockptr.exit.thread ]
  %i.cm = sext i32 %i.cl to i64
  %i.cn = call fastcc i32 @copy_to_sockptr(ptr %3, i8 %4, ptr noundef nonnull %6, i64 noundef %i.cm) #21, !srcloc !140
  %.not233 = icmp eq i32 %i.cn, 0
  %. = select i1 %.not233, i32 0, i32 -14
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %copy_to_sockptr.exit, %copy_from_sockptr.exit258
  %.0 = phi i32 [ -14, %copy_to_sockptr.exit ], [ -14, %copy_from_sockptr.exit258 ], [ %., %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %tcp_can_repair_sock.exit.thread

bb.ac:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %7, i8 0, i64 20, i1 false), !annotation !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store i32 0, ptr %i.c, align 4, !annotation !24
  br i1 %i.i, label %copy_from_sockptr.exit266.thread, label %copy_from_sockptr.exit266

copy_from_sockptr.exit266.thread:                 ; preds = %bb.ac
  %i.co = load i32, ptr %i.f, align 1
  store i32 %i.co, ptr %i.b, align 4
  br label %bb.ad

copy_from_sockptr.exit266:                        ; preds = %bb.ac
  %i.cp = call i64 @_copy_from_user(ptr noundef nonnull %i.b, ptr noundef %i.f, i64 noundef range(i64 -2147483648, 4294967296) 4) #20
  %i.cq = and i64 %i.cp, 4294967295
  %.not226 = icmp eq i64 %i.cq, 0
  br i1 %.not226, label %bb.ad, label %bb.ai

bb.ad:                                            ; preds = %copy_from_sockptr.exit266.thread, %copy_from_sockptr.exit266
  %i.cr = getelementptr i8, ptr %0, i64 1216
  %i.cs = load ptr, ptr %i.cr, align 8            ; 2 uses
  %.not227 = icmp eq ptr %i.cs, null
  br i1 %.not227, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ct = getelementptr i8, ptr %i.cs, i64 88
  %i.cu = load ptr, ptr %i.ct, align 8            ; 2 uses
  %.not228 = icmp eq ptr %i.cu, null
  br i1 %.not228, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cv = call i64 %i.cu(ptr noundef %0, i32 noundef -1, ptr noundef nonnull %i.c, ptr noundef nonnull %7) #20
  %i.cw = trunc i64 %i.cv to i32
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %.0181 = phi i32 [ %i.cw, %bb.af ], [ 0, %bb.ae ], [ 0, %bb.ad ]
  %i.cx = load i32, ptr %i.b, align 4
  %i.cy = call i32 @llvm.umin.i32(i32 %i.cx, i32 %.0181) ; 3 uses
  store i32 %i.cy, ptr %i.b, align 4
  br i1 %i.i, label %copy_to_sockptr.exit271.thread, label %copy_to_sockptr.exit271

copy_to_sockptr.exit271.thread:                   ; preds = %bb.ag
  store i32 %i.cy, ptr %i.f, align 1
  br label %bb.ah

copy_to_sockptr.exit271:                          ; preds = %bb.ag
  %i.cz = call i64 @_copy_to_user(ptr noundef %i.f, ptr noundef nonnull %i.b, i64 noundef range(i64 -2147483648, 2147483648) 4) #20
  %i.da = and i64 %i.cz, 4294967295
  %.not229 = icmp eq i64 %i.da, 0
  br i1 %.not229, label %copy_to_sockptr.exit271._crit_edge, label %bb.ai

copy_to_sockptr.exit271._crit_edge:               ; preds = %copy_to_sockptr.exit271
  %.pre482 = load i32, ptr %i.b, align 4
  br label %bb.ah

bb.ah:                                            ; preds = %copy_to_sockptr.exit271._crit_edge, %copy_to_sockptr.exit271.thread
  %i.db = phi i32 [ %.pre482, %copy_to_sockptr.exit271._crit_edge ], [ %i.cy, %copy_to_sockptr.exit271.thread ]
  %i.dc = sext i32 %i.db to i64
  %i.dd = call fastcc i32 @copy_to_sockptr(ptr %3, i8 %4, ptr noundef nonnull %7, i64 noundef %i.dc) #21, !srcloc !141
  %.not230 = icmp eq i32 %i.dd, 0
  %.241 = select i1 %.not230, i32 0, i32 -14
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %copy_to_sockptr.exit271, %copy_from_sockptr.exit266
  %.1 = phi i32 [ -14, %copy_to_sockptr.exit271 ], [ -14, %copy_from_sockptr.exit266 ], [ %.241, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %tcp_can_repair_sock.exit.thread

bb.aj:                                            ; preds = %bb.b
  %i.de = getelementptr i8, ptr %0, i64 1266
  %i.df = load i8, ptr %i.de, align 2
  %.val.i272 = load ptr, ptr %i.e, align 8
  %i.dg = getelementptr i8, ptr %.val.i272, i64 1499
  %i.dh = load volatile i8, ptr %i.dg, align 1
  %.not473 = icmp ult i8 %i.df, %i.dh
  %i.di = zext i1 %.not473 to i32
  br label %.sink.split

bb.ak:                                            ; preds = %bb.b
  br i1 %i.i, label %copy_to_sockptr.exit282.thread, label %copy_from_sockptr.exit277

copy_from_sockptr.exit277:                        ; preds = %bb.ak
  %i.dj = call i64 @_copy_from_user(ptr noundef nonnull %i.b, ptr noundef %i.f, i64 noundef range(i64 -2147483648, 4294967296) 4) #20
  %i.dk = and i64 %i.dj, 4294967295
  %.not223 = icmp eq i64 %i.dk, 0
  br i1 %.not223, label %copy_to_sockptr.exit282, label %tcp_can_repair_sock.exit.thread

copy_to_sockptr.exit282:                          ; preds = %copy_from_sockptr.exit277
  %i.dl = load i32, ptr %i.b, align 4
  %i.dm = call i32 @llvm.umin.i32(i32 %i.dl, i32 16)
  store i32 %i.dm, ptr %i.b, align 4
  %i.dn = call i64 @_copy_to_user(ptr noundef %i.f, ptr noundef nonnull %i.b, i64 noundef range(i64 -2147483648, 2147483648) 4) #20
  %i.do = and i64 %i.dn, 4294967295
  %.not224 = icmp eq i64 %i.do, 0
  br i1 %.not224, label %copy_to_sockptr.exit282._crit_edge, label %tcp_can_repair_sock.exit.thread

copy_to_sockptr.exit282._crit_edge:               ; preds = %copy_to_sockptr.exit282
  %.pre481 = load i32, ptr %i.b, align 4
  br label %bb.al

copy_to_sockptr.exit282.thread:                   ; preds = %bb.ak
  %i.dp = load i32, ptr %i.f, align 1
  %i.dq = call i32 @llvm.umin.i32(i32 %i.dp, i32 16) ; 3 uses
  store i32 %i.dq, ptr %i.b, align 4
  store i32 %i.dq, ptr %i.f, align 1
  br label %bb.al

bb.al:                                            ; preds = %copy_to_sockptr.exit282._crit_edge, %copy_to_sockptr.exit282.thread
  %i.dr = phi i32 [ %.pre481, %copy_to_sockptr.exit282._crit_edge ], [ %i.dq, %copy_to_sockptr.exit282.thread ]
  %i.ds = getelementptr i8, ptr %0, i64 1216
  %i.dt = load ptr, ptr %i.ds, align 8
  %i.du = getelementptr i8, ptr %i.dt, i64 96
  %i.dv = sext i32 %i.dr to i64
  %i.dw = call fastcc i32 @copy_to_sockptr(ptr %3, i8 %4, ptr noundef %i.du, i64 noundef %i.dv) #21, !srcloc !142
  %.not225 = icmp eq i32 %i.dw, 0
  %.242 = select i1 %.not225, i32 0, i32 -14
  br label %tcp_can_repair_sock.exit.thread

bb.am:                                            ; preds = %bb.b
  br i1 %i.i, label %bb.an, label %copy_from_sockptr.exit287

copy_from_sockptr.exit287:                        ; preds = %bb.am
  %i.dx = call i64 @_copy_from_user(ptr noundef nonnull %i.b, ptr noundef %i.f, i64 noundef range(i64 -2147483648, 4294967296) 4) #20
  %i.dy = and i64 %i.dx, 4294967295
  %.not218 = icmp eq i64 %i.dy, 0
  br i1 %.not218, label %.thread402, label %tcp_can_repair_sock.exit.thread

bb.an:                                            ; preds = %bb.am
  %i.dz = load i32, ptr %i.f, align 1
  %i.ea = call i32 @llvm.umin.i32(i32 %i.dz, i32 16) ; 3 uses
  store i32 %i.ea, ptr %i.b, align 4
  %i.eb = getelementptr i8, ptr %0, i64 1232      ; 2 uses
  %i.ec = load ptr, ptr %i.eb, align 8
  %.not219 = icmp eq ptr %i.ec, null
  br i1 %.not219, label %copy_to_sockptr.exit292.thread, label %copy_to_sockptr.exit297.thread

.thread402:                                       ; preds = %copy_from_sockptr.exit287
  %i.ed = load i32, ptr %i.b, align 4
  %i.ee = call i32 @llvm.umin.i32(i32 %i.ed, i32 16)
  store i32 %i.ee, ptr %i.b, align 4
end_hunk_2
