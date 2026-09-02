Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/net?download=true
inline.NumInlined: 183
inline.NumDeleted: 69
begin_hunk_0_@io_recvmsg:bb.a
  %i.v = getelementptr i8, ptr %i.c, i64 136      ; 3 uses
  %i.w = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %i.x = getelementptr i8, ptr %i.c, i64 48       ; 2 uses
  %i.y = getelementptr i8, ptr %i.c, i64 80       ; 2 uses
  %.sroa.6.0..sroa_idx.i = getelementptr i8, ptr %i.c, i64 96 ; 2 uses
  %.sroa.7.0..sroa_idx.i = getelementptr i8, ptr %i.c, i64 104 ; 3 uses
  %.sroa.8.0..sroa_idx.i = getelementptr i8, ptr %i.c, i64 112
  %i.z = getelementptr i8, ptr %i.c, i64 64       ; 3 uses
  %i.aa = getelementptr i8, ptr %i.c, i64 128     ; 2 uses
  %i.ab = getelementptr i8, ptr %i.c, i64 76
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ad = and i32 %spec.select, -1073741824
  %i.ae = getelementptr i8, ptr %i.c, i64 132     ; 3 uses
  %i.af = getelementptr i8, ptr %i.c, i64 72      ; 2 uses
  %i.ag = getelementptr i8, ptr %i.g, i64 16
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ah = and i32 %spec.select, 256
  %.not86 = icmp eq i32 %i.ah, 0                  ; 3 uses
  %i.ai = getelementptr i8, ptr %i.c, i64 56
  %i.aj = getelementptr i8, ptr %i.g, i64 4
  %i.ak = getelementptr i8, ptr %0, i64 20        ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %io_kbuf_recycle.exit115, %bb.d
  %.0116 = phi i1 [ true, %bb.d ], [ %.1117, %io_kbuf_recycle.exit115 ]
  %.071 = phi i32 [ 0, %bb.d ], [ %.273, %io_kbuf_recycle.exit115 ] ; 3 uses
  store ptr null, ptr %3, align 8
  %.val91 = load i64, ptr %i.h, align 8
  %i.al = and i64 %.val91, 196640
  %.0.i = icmp eq i64 %i.al, 32
  br i1 %.0.i, label %bb.f, label %bb.p

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.am = load i32, ptr %i.q, align 8
  %i.an = sext i32 %i.am to i64
  store i64 %i.an, ptr %i.a, align 8
  %i.ao = load i16, ptr %i.r, align 2
  %i.ap = zext i16 %i.ao to i32
  %i.aq = call { ptr, ptr } @io_buffer_select(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef %i.ap, i32 noundef %1) #12 ; 2 uses
  %i.ar = extractvalue { ptr, ptr } %i.aq, 0      ; 3 uses
  %i.as = extractvalue { ptr, ptr } %i.aq, 1      ; 5 uses
  store ptr %i.ar, ptr %3, align 8
  store ptr %i.as, ptr %.sroa.4.0..sroa_idx, align 8
  %.not82 = icmp eq ptr %i.as, null
  br i1 %.not82, label %io_kbuf_recycle.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.at = load i64, ptr %i.h, align 8             ; 5 uses
  %i.au = and i64 %i.at, 134217728
  %.not83 = icmp eq i64 %i.au, 0
  %.pre = load i64, ptr %i.a, align 8             ; 3 uses
  br i1 %.not83, label %io_kbuf_recycle.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.av = ptrtoint ptr %i.as to i64               ; 2 uses
  %i.aw = load i32, ptr %i.s, align 8
  %i.ax = sext i32 %i.aw to i64
  %i.ay = add nsw i64 %i.ax, 16                   ; 2 uses
  %i.az = load i64, ptr %i.t, align 8             ; 3 uses
  %i.ba = add i64 %i.ay, %i.az                    ; 3 uses
  %i.bb = icmp ult i64 %.pre, %i.ba
  br i1 %i.bb, label %io_recvmsg_prep_multishot.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not.i = icmp eq i64 %i.az, 0
  br i1 %.not.i, label %io_recvmsg_prep_multishot.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bc = add i64 %i.ay, %i.av
  %i.bd = inttoptr i64 %i.bc to ptr
  store ptr %i.bd, ptr %i.u, align 8
  store i64 %i.az, ptr %i.v, align 8
  br label %io_recvmsg_prep_multishot.exit.thread

io_recvmsg_prep_multishot.exit.thread:            ; preds = %bb.i, %bb.j
  store ptr %i.as, ptr %i.w, align 8
  %i.be = add i64 %i.ba, %i.av
  %i.bf = inttoptr i64 %i.be to ptr               ; 2 uses
  store ptr %i.bf, ptr %.sroa.4.0..sroa_idx, align 8
  %i.bg = sub i64 %.pre, %i.ba                    ; 2 uses
  store i64 %i.bg, ptr %i.x, align 8
  br label %io_kbuf_recycle.exit

io_recvmsg_prep_multishot.exit:                   ; preds = %bb.h
  %i.bh = and i64 %i.at, 17179869184
  %.not.i93 = icmp eq i64 %i.bh, 0
  br i1 %.not.i93, label %bb.k, label %io_kbuf_recycle.exit.thread

bb.k:                                             ; preds = %io_recvmsg_prep_multishot.exit
  %i.bi = and i64 %i.at, 131072
  %.not7.i = icmp eq i64 %i.bi, 0
  br i1 %.not7.i, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not.i.not.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.not.i, label %io_kbuf_recycle.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bj = and i64 %i.at, -51539738625
  store i64 %i.bj, ptr %i.h, align 8
  br label %io_kbuf_recycle.exit.thread

bb.n:                                             ; preds = %bb.k
  %i.bk = and i64 %i.at, 65536
  %.not8.i = icmp eq i64 %i.bk, 0
  br i1 %.not8.i, label %io_kbuf_recycle.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bl = call zeroext i1 @io_kbuf_recycle_legacy(ptr noundef %0, i32 noundef %1) #12 ; 0 uses
  br label %io_kbuf_recycle.exit.thread

io_kbuf_recycle.exit.thread:                      ; preds = %bb.f, %io_recvmsg_prep_multishot.exit, %bb.l, %bb.m, %bb.n, %bb.o
  %.1.ph = phi i32 [ -14, %bb.o ], [ -14, %bb.n ], [ -14, %bb.m ], [ -14, %bb.l ], [ -14, %io_recvmsg_prep_multishot.exit ], [ -105, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %io_kbuf_recycle.exit102

io_kbuf_recycle.exit:                             ; preds = %bb.g, %io_recvmsg_prep_multishot.exit.thread
  %i.bm = phi i64 [ %.pre, %bb.g ], [ %i.bg, %io_recvmsg_prep_multishot.exit.thread ]
  %i.bn = phi ptr [ %i.as, %bb.g ], [ %i.bf, %io_recvmsg_prep_multishot.exit.thread ]
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  store ptr %i.bn, ptr %.sroa.6.0..sroa_idx.i, align 8
  store i64 %i.bm, ptr %.sroa.7.0..sroa_idx.i, align 8
  store i64 1, ptr %.sroa.8.0..sroa_idx.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.p

bb.p:                                             ; preds = %io_kbuf_recycle.exit, %bb.e
  %i.bo = phi ptr [ %i.ar, %io_kbuf_recycle.exit ], [ null, %bb.e ] ; 3 uses
  %i.bp = load i8, ptr %i.aa, align 8
  %i.bq = or i8 %i.bp, 2
  store i8 %i.bq, ptr %i.aa, align 8
  store i32 -1, ptr %i.ab, align 4
  %i.br = load i64, ptr %i.h, align 8
  %i.bs = and i64 %i.br, 134217728
  %.not85 = icmp eq i64 %i.bs, 0
  br i1 %.not85, label %bb.w, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  %i.bt = load i32, ptr %i.s, align 8
  %.not.i95 = icmp eq i32 %i.bt, 0
  br i1 %.not.i95, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store ptr %i.ac, ptr %i.z, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %2, i8 0, i64 144, i1 false), !annotation !16
  store i32 %i.ad, ptr %i.ae, align 4
  store i32 0, ptr %i.af, align 8
  %i.bu = load ptr, ptr %i.ag, align 16
  %i.bv = getelementptr i8, ptr %i.bu, i64 40
  %i.bw = load i32, ptr %i.bv, align 8
  %i.bx = lshr i32 %i.bw, 5
  %i.by = and i32 %i.bx, 64
  %spec.select.i = or i32 %i.by, %spec.select
  %i.bz = call i32 @sock_recvmsg(ptr noundef nonnull %i.g, ptr noundef %i.z, i32 noundef %spec.select.i) #12 ; 5 uses
  %i.ca = icmp slt i32 %i.bz, 1                   ; 2 uses
  %i.cb = icmp slt i32 %i.bz, 0
  br i1 %i.cb, label %io_recvmsg_multishot.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cc = load i64, ptr %i.t, align 8
  %i.cd = load i64, ptr %i.v, align 8
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = trunc i64 %i.ce to i32
  %i.cg = load i32, ptr %i.ae, align 4
  %i.ch = and i32 %i.cg, 2147483647
  store i32 %i.cf, ptr %.sroa.2.0..sroa_idx.i, align 4
  store i32 %i.ch, ptr %.sroa.4.0..sroa_idx.i, align 4
  store i32 %i.bz, ptr %.sroa.3.0..sroa_idx.i, align 8
  %i.ci = zext nneg i32 %i.bz to i64
  %i.cj = load i64, ptr %i.x, align 8
  %spec.select4347.i = call i64 @llvm.umin.i64(i64 %i.cj, i64 %i.ci)
  %spec.select43.i = trunc nuw nsw i64 %spec.select4347.i to i32
  %i.ck = load i32, ptr %i.af, align 8            ; 2 uses
  %i.cl = load i32, ptr %i.s, align 8
  %.036.in.i = call i32 @llvm.smin.i32(i32 %i.ck, i32 %i.cl)
  %.036.i = add i32 %.036.in.i, 16                ; 2 uses
  store i32 %i.ck, ptr %2, align 8
  %i.cm = sext i32 %.036.i to i64                 ; 2 uses
  %i.cn = icmp ugt i32 %.036.i, 144
  br i1 %i.cn, label %bb.u, label %check_copy_size.exit.i.i, !prof !12

bb.u:                                             ; preds = %bb.t
  call void @__copy_overflow(i32 noundef range(i32 0, -2147483648) 144, i64 noundef range(i64 -2147483648, 2147483648) %i.cm) #12
  br label %io_recvmsg_multishot.exit

check_copy_size.exit.i.i:                         ; preds = %bb.t
  %i.co = load ptr, ptr %i.w, align 8
  %i.cp = call i64 @_copy_to_user(ptr noundef %i.co, ptr noundef nonnull %2, i64 noundef range(i64 -2147483648, 2147483648) %i.cm) #12
  %i.cq = icmp eq i64 %i.cp, 0
  br i1 %i.cq, label %bb.v, label %io_recvmsg_multishot.exit

bb.v:                                             ; preds = %check_copy_size.exit.i.i
  %i.cr = load i32, ptr %i.s, align 8
  %4 = zext i32 %i.cr to i64
  %5 = add nuw nsw i64 %4, 16
  %6 = load i64, ptr %i.t, align 8
  %7 = add i64 %5, %6
  %8 = trunc i64 %7 to i32
  %i.cs = add i32 %8, %spec.select43.i
  br label %io_recvmsg_multishot.exit

io_recvmsg_multishot.exit:                        ; preds = %bb.u, %check_copy_size.exit.i.i, %bb.s, %bb.v
  %.2118.shrunk = phi i1 [ %i.ca, %bb.s ], [ %i.ca, %bb.v ], [ true, %check_copy_size.exit.i.i ], [ true, %bb.u ]
  %.0.i96 = phi i32 [ %i.bz, %bb.s ], [ %i.cs, %bb.v ], [ -14, %check_copy_size.exit.i.i ], [ -14, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  br label %bb.aa

bb.w:                                             ; preds = %bb.p
  br i1 %.not86, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ct = load i64, ptr %i.v, align 8
  %.not87 = icmp eq i64 %i.ct, 0
  br i1 %.not87, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %.val = load i64, ptr %.sroa.7.0..sroa_idx.i, align 8
  %i.cu = trunc i64 %.val to i32
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w
  %.172 = phi i32 [ %.071, %bb.x ], [ %i.cu, %bb.y ], [ %.071, %bb.w ]
  %i.cv = load ptr, ptr %i.w, align 8
  %i.cw = load ptr, ptr %i.ai, align 8
  %i.cx = call i64 @__sys_recvmsg_sock(ptr noundef nonnull %i.g, ptr noundef %i.z, ptr noundef %i.cv, ptr noundef %i.cw, i32 noundef %spec.select) #12
  %i.cy = trunc i64 %i.cx to i32
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %io_recvmsg_multishot.exit
  %.1117 = phi i1 [ %.0116, %bb.z ], [ %.2118.shrunk, %io_recvmsg_multishot.exit ] ; 2 uses
  %.074 = phi i32 [ %i.cy, %bb.z ], [ %.0.i96, %io_recvmsg_multishot.exit ] ; 10 uses
  %.273 = phi i32 [ %.172, %bb.z ], [ %.071, %io_recvmsg_multishot.exit ] ; 2 uses
  %i.cz = icmp slt i32 %.074, %.273
  br i1 %i.cz, label %bb.ab, label %bb.am

bb.ab:                                            ; preds = %bb.aa
  %i.da = icmp eq i32 %.074, -11
  %or.cond = and i1 %i.e, %i.da
  br i1 %or.cond, label %bb.ac, label %bb.ai

bb.ac:                                            ; preds = %bb.ab
  %i.db = load i64, ptr %i.h, align 8             ; 4 uses
  %i.dc = and i64 %i.db, 17179869184
  %.not.i97 = icmp eq i64 %i.dc, 0
  br i1 %.not.i97, label %bb.ad, label %io_kbuf_recycle.exit102

bb.ad:                                            ; preds = %bb.ac
  %i.dd = and i64 %i.db, 131072
  %.not7.i99 = icmp eq i64 %i.dd, 0
  br i1 %.not7.i99, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.not.i.not.i100 = icmp eq ptr %i.bo, null
  br i1 %.not.i.not.i100, label %io_kbuf_recycle.exit102, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.de = and i64 %i.db, -51539738625
  store i64 %i.de, ptr %i.h, align 8
  br label %io_kbuf_recycle.exit102

bb.ag:                                            ; preds = %bb.ad
  %i.df = and i64 %i.db, 65536
  %.not8.i101 = icmp eq i64 %i.df, 0
  br i1 %.not8.i101, label %io_kbuf_recycle.exit102, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dg = call zeroext i1 @io_kbuf_recycle_legacy(ptr noundef %0, i32 noundef %1) #12 ; 0 uses
  br label %io_kbuf_recycle.exit102

bb.ai:                                            ; preds = %bb.ab
  %i.dh = icmp slt i32 %.074, 1
  %or.cond126 = select i1 %i.dh, i1 true, i1 %.not86
  br i1 %or.cond126, label %io_net_retry.exit.thread, label %io_net_retry.exit

io_net_retry.exit:                                ; preds = %bb.ai
  %i.di = load i16, ptr %i.aj, align 4
  %i.dj = and i16 %i.di, -5
  %spec.select.i104 = icmp eq i16 %i.dj, 1
  br i1 %spec.select.i104, label %bb.aj, label %io_net_retry.exit.thread

bb.aj:                                            ; preds = %io_net_retry.exit
  %i.dk = load i32, ptr %i.ak, align 4
  %i.dl = add i32 %i.dk, %.074
  store i32 %i.dl, ptr %i.ak, align 4
  %i.dm = load i64, ptr %i.h, align 8             ; 2 uses
  %i.dn = or i64 %i.dm, 17179869184
  store i64 %i.dn, ptr %i.h, align 8
  %i.do = and i64 %i.dm, 34359738368
  %.not.i106 = icmp eq i64 %i.do, 0
  br i1 %.not.i106, label %io_kbuf_recycle.exit102, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %.val28.i.i = load i8, ptr %i.y, align 8
  %i.dp = icmp eq i8 %.val28.i.i, 0
  br i1 %i.dp, label %io_bundle_nbufs.exit.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dq = load ptr, ptr %i.c, align 8             ; 2 uses
  %.not.i.i = icmp eq ptr %i.dq, null
  %i.dr = getelementptr i8, ptr %i.c, i64 24
  %spec.select.i.i = select i1 %.not.i.i, ptr %i.dr, ptr %i.dq ; 2 uses
  %.val.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i, align 8
  %.not26.i.i = icmp eq i64 %.val.i.i, 0
  br i1 %.not26.i.i, label %iter_iov.exit.i.i, label %.preheader.i.i

iter_iov.exit.i.i:                                ; preds = %bb.al
  %i.ds = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8
  %i.dt = ptrtoint ptr %i.ds to i64
  %i.du = ptrtoint ptr %spec.select.i.i to i64
  %i.dv = sub i64 %i.dt, %i.du
  %i.dw = lshr exact i64 %i.dv, 4
  %i.dx = trunc i64 %i.dw to i32
  br label %io_bundle_nbufs.exit.i

.preheader.i.i:                                   ; preds = %bb.al, %.preheader.i.i
  %.023.i.i = phi i32 [ %i.ee, %.preheader.i.i ], [ 0, %bb.al ] ; 2 uses
  %.021.i.i = phi i32 [ %i.ef, %.preheader.i.i ], [ %.074, %bb.al ] ; 2 uses
  %i.dy = sext i32 %.023.i.i to i64
  %i.dz = getelementptr [16 x i8], ptr %spec.select.i.i, i64 %i.dy
  %i.ea = getelementptr i8, ptr %i.dz, i64 8
  %i.eb = load i64, ptr %i.ea, align 8
  %i.ec = trunc i64 %i.eb to i32
  %i.ed = call i32 @llvm.smin.i32(i32 %.021.i.i, i32 %i.ec)
  %i.ee = add i32 %.023.i.i, 1                    ; 2 uses
  %i.ef = sub i32 %.021.i.i, %i.ed                ; 2 uses
  %.not27.i.i = icmp eq i32 %i.ef, 0
  br i1 %.not27.i.i, label %io_bundle_nbufs.exit.i, label %.preheader.i.i, !llvm.loop !0

io_bundle_nbufs.exit.i:                           ; preds = %.preheader.i.i, %iter_iov.exit.i.i, %bb.ak
  %.0.i.i = phi i32 [ %i.dx, %iter_iov.exit.i.i ], [ 1, %bb.ak ], [ %i.ee, %.preheader.i.i ]
  %i.eg = call zeroext i1 @io_kbuf_commit(ptr noundef %0, ptr noundef %i.bo, i32 noundef range(i32 1, -2147483648) %.074, i32 noundef %.0.i.i) #12 ; 0 uses
  br label %io_kbuf_recycle.exit102

io_net_retry.exit.thread:                         ; preds = %io_net_retry.exit, %bb.ai
  %i.eh = icmp eq i32 %.074, -512
  %i.ei = load i64, ptr %i.h, align 8             ; 2 uses
  %i.ej = or i64 %i.ei, 256                       ; 2 uses
  %i.ek = and i64 %i.ei, 64
  %.not.i107 = icmp eq i64 %i.ek, 0
  %i.el = and i64 %i.ej, -8388673
  %i.em = or disjoint i64 %i.el, 8388608
  %storemerge.i = select i1 %.not.i107, i64 %i.ej, i64 %i.em
  store i64 %storemerge.i, ptr %i.h, align 8
  br i1 %i.eh, label %.thread, label %bb.ap

bb.am:                                            ; preds = %bb.aa
  br i1 %.not86, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.en = load i32, ptr %i.ae, align 4
  %i.eo = and i32 %i.en, 40
  %.not89 = icmp eq i32 %i.eo, 0
  br i1 %.not89, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ep = load i64, ptr %i.h, align 8             ; 2 uses
  %i.eq = or i64 %i.ep, 256                       ; 2 uses
  %i.er = and i64 %i.ep, 64
  %.not.i108 = icmp eq i64 %i.er, 0
  %i.es = and i64 %i.eq, -8388673
  %i.et = or disjoint i64 %i.es, 8388608
  %storemerge.i109 = select i1 %.not.i108, i64 %i.eq, i64 %i.et
  store i64 %storemerge.i109, ptr %i.h, align 8
  br label %bb.ap

bb.ap:                                            ; preds = %io_net_retry.exit.thread, %bb.am, %bb.an, %bb.ao
  %i.eu = icmp sgt i32 %.074, 0
  br i1 %i.eu, label %bb.aq, label %.thread

bb.aq:                                            ; preds = %bb.ap
  %i.ev = load i32, ptr %i.ak, align 4
  %i.ew = add i32 %i.ev, %.074
  br label %io_kbuf_recycle.exit115

.thread:                                          ; preds = %io_net_retry.exit.thread, %bb.ap
  %.175125 = phi i32 [ %.074, %bb.ap ], [ -4, %io_net_retry.exit.thread ] ; 5 uses
  %i.ex = load i32, ptr %i.ak, align 4            ; 2 uses
  %.not90 = icmp eq i32 %i.ex, 0
  br i1 %.not90, label %bb.ar, label %io_kbuf_recycle.exit115

bb.ar:                                            ; preds = %.thread
  %i.ey = load i64, ptr %i.h, align 8             ; 4 uses
  %i.ez = and i64 %i.ey, 17179869184
  %.not.i110 = icmp eq i64 %i.ez, 0
  br i1 %.not.i110, label %bb.as, label %io_kbuf_recycle.exit115

bb.as:                                            ; preds = %bb.ar
  %i.fa = and i64 %i.ey, 131072
  %.not7.i112 = icmp eq i64 %i.fa, 0
  br i1 %.not7.i112, label %bb.av, label %bb.at

bb.at:                                            ; preds = %bb.as
  %.not.i.not.i113 = icmp eq ptr %i.bo, null
  br i1 %.not.i.not.i113, label %io_kbuf_recycle.exit115, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fb = and i64 %i.ey, -51539738625
  store i64 %i.fb, ptr %i.h, align 8
  br label %io_kbuf_recycle.exit115
end_hunk_0
