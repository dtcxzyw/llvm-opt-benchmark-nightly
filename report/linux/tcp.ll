Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/tcp?download=true
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
  %i.bv = add nuw i8 %.01320.i, 1                 ; 3 uses
  %i.bw = shl i32 %.01419.i, 1
  %spec.select.i = call i32 @llvm.smin.i32(i32 %i.bw, i32 120) ; 2 uses
  %i.bx = add i32 %spec.select.i, %.021.i         ; 2 uses
  %i.by = icmp sgt i32 %i.bt, %i.bx
  %6 = icmp ne i8 %i.bv, -1
  %7 = select i1 %i.by, i1 %6, i1 false
  br i1 %7, label %.lr.ph.i, label %secs_to_retrans.exit, !llvm.loop !132

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
