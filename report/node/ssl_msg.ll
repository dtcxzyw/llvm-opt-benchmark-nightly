Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/ssl_msg?download=true
inline.NumInlined: 137
inline.NumDeleted: 57
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 8
begin_hunk_0_@mbedtls_ssl_read_record:bb.a
bb.e:                                             ; preds = %bb.c
  %i.ai = load i64, ptr %i.g, align 8, !tbaa !374 ; 2 uses
  %i.aj = icmp ult i64 %i.af, %i.ai
  br i1 %i.aj, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ak = sub nuw i64 %i.ai, %i.af                ; 2 uses
  store i64 %i.ak, ptr %i.g, align 8, !tbaa !374
  %i.al = load ptr, ptr %i.h, align 8, !tbaa !364 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.af
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.al, ptr nonnull align 1 %i.am, i64 %i.ak, i1 false)
  %i.an = load ptr, ptr %i.i, align 8, !tbaa !378
  %i.ao = load i64, ptr %i.g, align 8, !tbaa !374
  %i.ap = trunc i64 %i.ao to i16
  %i.aq = call i16 @llvm.bswap.i16(i16 %i.ap)
  store i16 %i.aq, ptr %i.an, align 1
  %i.ar = load ptr, ptr %i.h, align 8, !tbaa !364
  %i.as = load i64, ptr %i.g, align 8, !tbaa !374
  call void @mbedtls_debug_print_buf(ptr noundef nonnull %0, i32 noundef 4, ptr noundef nonnull @.str, i32 noundef 4789, ptr noundef nonnull @.str.204, ptr noundef %i.ar, i64 noundef %i.as) #19
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  store i64 0, ptr %i.g, align 8, !tbaa !374
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  store i64 0, ptr %i.d, align 8, !tbaa !375
  br label %bb.j

bb.i:                                             ; preds = %.backedge
  br i1 %.not27.i, label %.thread, label %bb.j

.thread:                                          ; preds = %bb.i
  store i64 0, ptr %i.g, align 8, !tbaa !374
  br label %bb.k

ssl_consume_current_message.exit:                 ; preds = %bb.b
  call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 4749, ptr noundef nonnull @.str.26) #19
  br label %ssl_buffer_message.exit.thread

bb.j:                                             ; preds = %bb.d, %bb.i, %bb.h
  %.val.pr = load i64, ptr %i.g, align 8, !tbaa !374
  %.not.i57.not = icmp eq i64 %.val.pr, 0
  br i1 %.not.i57.not, label %bb.k, label %bb.cp

bb.k:                                             ; preds = %.thread, %bb.j
  %i.at = load ptr, ptr %0, align 8, !tbaa !277
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 9
  %i.av = load i8, ptr %i.au, align 1, !tbaa !289
  %i.aw = icmp eq i8 %i.av, 1
  br i1 %i.aw, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  %.val55 = load i64, ptr %i.j, align 8, !tbaa !320
  %.val56 = load i64, ptr %i.k, align 8, !tbaa !319
  %.not = icmp ugt i64 %.val55, %.val56
  br i1 %.not, label %.critedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ax = load ptr, ptr %i.l, align 8, !tbaa !322 ; 8 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 4398, ptr noundef nonnull @.str.175) #19
  %i.az = load i32, ptr %i.m, align 8, !tbaa !321
  switch i32 %i.az, label %.preheader.i [
    i32 10, label %bb.o
    i32 12, label %bb.o
  ]

.preheader.i:                                     ; preds = %bb.n
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 1752
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 1888 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 1776
  %i.bd = load i8, ptr %i.bc, align 8             ; 2 uses
  %i.be = and i8 %i.bd, 1
  %.not56.i = icmp eq i8 %i.be, 0
  br i1 %.not56.i, label %bb.s, label %bb.r

bb.o:                                             ; preds = %bb.n, %bb.n
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ax, i64 1744 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 8, !tbaa !362
  %.not58.i = icmp eq i8 %i.bg, 0
  br i1 %.not58.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 4405, ptr noundef nonnull @.str.176) #19
  br label %ssl_load_buffered_message.exit

bb.q:                                             ; preds = %bb.o
  call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 4410, ptr noundef nonnull @.str.177) #19
  store i32 20, ptr %i.n, align 8, !tbaa !363
  store i64 1, ptr %i.g, align 8, !tbaa !374
  %i.bh = load ptr, ptr %i.h, align 8, !tbaa !364
  store i8 1, ptr %i.bh, align 1, !tbaa !291
  store i64 0, ptr %i.j, align 8, !tbaa !320
  store i64 0, ptr %i.k, align 8, !tbaa !319
  store i8 0, ptr %i.bf, align 8, !tbaa !362
  br label %bb.aa

bb.r:                                             ; preds = %.preheader.i
  %i.bi = load i32, ptr %i.bb, align 8, !tbaa !360
  %i.bj = add i32 %i.bi, 1
  %i.bk = and i8 %i.bd, 4
  %.not57.i = icmp eq i8 %i.bk, 0
  %i.bl = select i1 %.not57.i, ptr @.str.180, ptr @.str.179
  call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 4432, ptr noundef nonnull @.str.178, i32 noundef %i.bj, ptr noundef nonnull %i.bl) #19
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.preheader.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ax, i64 1800
  %i.bn = load i8, ptr %i.bm, align 8             ; 2 uses
  %i.bo = and i8 %i.bn, 1
  %.not56.1.i = icmp eq i8 %i.bo, 0
  br i1 %.not56.1.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bp = load i32, ptr %i.bb, align 8, !tbaa !360
  %i.bq = add i32 %i.bp, 2
  %i.br = and i8 %i.bn, 4
  %.not57.1.i = icmp eq i8 %i.br, 0
  %i.bs = select i1 %.not57.1.i, ptr @.str.180, ptr @.str.179
  call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 4432, ptr noundef nonnull @.str.178, i32 noundef %i.bq, ptr noundef nonnull %i.bs) #19
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ax, i64 1824
  %i.bu = load i8, ptr %i.bt, align 8             ; 2 uses
  %i.bv = and i8 %i.bu, 1
  %.not56.2.i = icmp eq i8 %i.bv, 0
  br i1 %.not56.2.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bw = load i32, ptr %i.bb, align 8, !tbaa !360
  %i.bx = add i32 %i.bw, 3
  %i.by = and i8 %i.bu, 4
  %.not57.2.i = icmp eq i8 %i.by, 0
  %i.bz = select i1 %.not57.2.i, ptr @.str.180, ptr @.str.179
  call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 4432, ptr noundef nonnull @.str.178, i32 noundef %i.bx, ptr noundef nonnull %i.bz) #19
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.ca = load i8, ptr %i.ba, align 8
  %i.cb = and i8 %i.ca, 5
  %or.cond.not.i = icmp eq i8 %i.cb, 5
  br i1 %or.cond.not.i, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ax, i64 1760 ; 3 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !370 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 1
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !291
  %i.cg = zext i8 %i.cf to i64
  %i.ch = shl nuw nsw i64 %i.cg, 16
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 2
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !291
  %i.ck = zext i8 %i.cj to i64
  %i.cl = shl nuw nsw i64 %i.ck, 8
  %i.cm = or disjoint i64 %i.cl, %i.ch
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cd, i64 3
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !291
  %i.cp = zext i8 %i.co to i64
  %i.cq = or disjoint i64 %i.cm, %i.cp            ; 2 uses
  %i.cr = icmp samesign ult i64 %i.cq, 16373
  br i1 %i.cr, label %.thread.i, label %bb.y

.thread.i:                                        ; preds = %bb.x
  %i.cs = add nuw nsw i64 %i.cq, 12               ; 4 uses
  call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 4452, ptr noundef nonnull @.str.181) #19
  %i.ct = load ptr, ptr %i.cc, align 8, !tbaa !370
  call void @mbedtls_debug_print_buf(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 4454, ptr noundef nonnull @.str.182, ptr noundef %i.ct, i64 noundef %i.cs) #19
  store i32 22, ptr %i.n, align 8, !tbaa !363
  store i64 %i.cs, ptr %i.d, align 8, !tbaa !375
  store i64 %i.cs, ptr %i.g, align 8, !tbaa !374
  %i.cu = load ptr, ptr %i.h, align 8, !tbaa !364
  %i.cv = load ptr, ptr %i.cc, align 8, !tbaa !370
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.cu, ptr noundef nonnull align 1 dereferenceable(1) %i.cv, i64 %i.cs, i1 false)
  br label %bb.aa

bb.y:                                             ; preds = %bb.x
  call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 4448, ptr noundef nonnull @.str.26) #19
  br label %.critedge

bb.z:                                             ; preds = %bb.w
  %i.cw = load i32, ptr %i.bb, align 8, !tbaa !360
  call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 4465, ptr noundef nonnull @.str.183, i32 noundef %i.cw) #19
  br label %ssl_load_buffered_message.exit

ssl_load_buffered_message.exit:                   ; preds = %bb.p, %bb.z
  call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 4472, ptr noundef nonnull @.str.184) #19
  br label %.critedge

bb.aa:                                            ; preds = %.thread.i, %bb.q
  call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 4472, ptr noundef nonnull @.str.184) #19
  br label %bb.cp

.critedge:                                        ; preds = %bb.m, %bb.y, %ssl_load_buffered_message.exit, %bb.k, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.cx = load ptr, ptr %i.l, align 8, !tbaa !322 ; 4 uses
  %i.cy = load ptr, ptr %0, align 8, !tbaa !277
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 9
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !289 ; 2 uses
  %.not.i.i = icmp ne i8 %i.da, 1
  %i.db = icmp eq ptr %i.cx, null
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.db
  br i1 %or.cond.i.i, label %3, label %bb.ab

bb.ab:                                            ; preds = %.critedge
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cx, i64 1848
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !365 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.cx, i64 1856
  %i.df = load i64, ptr %i.de, align 8, !tbaa !366 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cx, i64 1864
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !450
  %i.di = icmp eq ptr %i.dd, null
  br i1 %i.di, label %.thread149.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.val31.i.i = load i64, ptr %i.j, align 8, !tbaa !320
  %.val32.i.i = load i64, ptr %i.k, align 8, !tbaa !319
  %.not33.i.i = icmp ugt i64 %.val31.i.i, %.val32.i.i
  br i1 %.not33.i.i, label %.thread149.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 4870, ptr noundef nonnull @.str.212) #19
  %i.dj = load i16, ptr %i.o, align 8, !tbaa !300
  %i.dk = zext i16 %i.dj to i32
  %.not30.i.i = icmp eq i32 %i.dh, %i.dk
  br i1 %.not30.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 4873, ptr noundef nonnull @.str.213) #19
  br label %ssl_free_buffered_record.exit.i.i

bb.af:                                            ; preds = %bb.ad
  call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 4877, ptr noundef nonnull @.str.214) #19
  %i.dl = load ptr, ptr %i.p, align 8, !tbaa !317 ; 2 uses
  %i.dm = load ptr, ptr %i.q, align 8, !tbaa !318
  %i.dn = ptrtoint ptr %i.dl to i64
  %i.do = ptrtoint ptr %i.dm to i64
  %reass.sub = sub i64 %i.do, %i.dn
  %i.dp = add i64 %reass.sub, 16765
  %i.dq = icmp ugt i64 %i.df, %i.dp
  br i1 %i.dq, label %ssl_load_buffered_record.exit.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dl, ptr nonnull align 1 %i.dd, i64 %i.df, i1 false)
  store i64 %i.df, ptr %i.j, align 8, !tbaa !320
  store i64 0, ptr %i.k, align 8, !tbaa !319
  %.val.i.i = load ptr, ptr %i.l, align 8, !tbaa !322 ; 4 uses
  %i.dr = icmp eq ptr %.val.i.i, null
  br i1 %i.dr, label %ssl_free_buffered_record.exit.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ds = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 1848 ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !365 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.dt, null
  br i1 %.not.i.i.i, label %ssl_free_buffered_record.exit.i.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.du = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 1736 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 1856
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !366
  %i.dx = load i64, ptr %i.du, align 8, !tbaa !367
  %i.dy = sub i64 %i.dx, %i.dw
  store i64 %i.dy, ptr %i.du, align 8, !tbaa !367
  call void @free(ptr noundef nonnull %i.dt) #19
  store ptr null, ptr %i.ds, align 8, !tbaa !365
  br label %ssl_free_buffered_record.exit.i.i

ssl_free_buffered_record.exit.i.i:                ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.ae
  call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 4892, ptr noundef nonnull @.str.215) #19
  %.val.pre.i = load ptr, ptr %0, align 8, !tbaa !277
  %.phi.trans.insert.i = getelementptr i8, ptr %.val.pre.i, i64 9
  %.val.val.pre.i = load i8, ptr %.phi.trans.insert.i, align 1, !tbaa !289
  br label %3

ssl_load_buffered_record.exit.i:                  ; preds = %bb.af
  call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 4881, ptr noundef nonnull @.str.26) #19
  br label %ssl_get_next_record.exit.thread

3:                                                ; preds = %ssl_free_buffered_record.exit.i.i, %.critedge
  %.val.val.i = phi i8 [ %i.da, %.critedge ], [ %.val.val.pre.i, %ssl_free_buffered_record.exit.i.i ]
  %.val.val.fr.i = freeze i8 %.val.val.i
  %4 = icmp eq i8 %.val.val.fr.i, 1
  br i1 %4, label %.thread149.i, label %bb.aj

.thread149.i:                                     ; preds = %3, %bb.ac, %bb.ab
  br label %bb.aj

bb.aj:                                            ; preds = %.thread149.i, %3
  %5 = phi i64 [ 13, %.thread149.i ], [ 5, %3 ]
  %i.dz = call i32 @mbedtls_ssl_fetch_input(ptr noundef nonnull %0, i64 noundef %5) ; 3 uses
  %.not88.i = icmp eq i32 %i.dz, 0
  br i1 %.not88.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @mbedtls_debug_print_ret(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 4980, ptr noundef nonnull @.str.205, i32 noundef %i.dz) #19
  br label %ssl_get_next_record.exit

bb.al:                                            ; preds = %bb.aj
  %i.ea = load ptr, ptr %i.p, align 8, !tbaa !317
  %i.eb = load i64, ptr %i.j, align 8, !tbaa !320
  %i.ec = call fastcc i32 @ssl_parse_record_header(ptr noundef nonnull %0, ptr noundef %i.ea, i64 noundef %i.eb, ptr noundef %2) ; 3 uses
  %.not89.i = icmp eq i32 %i.ec, 0
  %i.ed = load ptr, ptr %0, align 8, !tbaa !277
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 9
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !289
  %i.eg = icmp eq i8 %i.ef, 1                     ; 2 uses
  br i1 %.not89.i, label %bb.bc, label %bb.am

bb.am:                                            ; preds = %bb.al
  br i1 %i.eg, label %bb.an, label %ssl_get_next_record.exit

bb.an:                                            ; preds = %bb.am
  switch i32 %i.ec, label %bb.bb [
    i32 -25728, label %bb.ao
    i32 -26368, label %ssl_buffer_future_record.exit.thread.i
  ]

bb.ao:                                            ; preds = %bb.an
  %i.eh = load ptr, ptr %i.l, align 8, !tbaa !322 ; 5 uses
  %i.ei = icmp ne ptr %i.eh, null
  %i.ej = load i8, ptr %i.r, align 8
  %.not.i95.i = icmp eq i8 %i.ej, 22
  %or.cond.i = select i1 %i.ei, i1 %.not.i95.i, i1 false
  br i1 %or.cond.i, label %bb.ap, label %ssl_buffer_future_record.exit.thread.i

bb.ap:                                            ; preds = %bb.ao
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 1736 ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.eh, i64 1848 ; 2 uses
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !365
  %.not28.i.i = icmp eq ptr %i.em, null
  br i1 %.not28.i.i, label %bb.aq, label %ssl_buffer_future_record.exit.thread.i

bb.aq:                                            ; preds = %bb.ap
  %i.en = load i64, ptr %i.s, align 8, !tbaa !299 ; 2 uses
  %i.eo = load i64, ptr %i.ek, align 8, !tbaa !367 ; 2 uses
  %i.ep = sub i64 32768, %i.eo
  %i.eq = icmp ugt i64 %i.en, %i.ep
  br i1 %i.eq, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 4926, ptr noundef nonnull @.str.216, i64 noundef %i.en, i64 noundef 32768, i64 noundef %i.eo) #19
  br label %ssl_buffer_future_record.exit.thread.i

bb.as:                                            ; preds = %bb.aq
  %i.er = load i16, ptr %i.o, align 8, !tbaa !300
  %i.es = zext i16 %i.er to i32
  %i.et = add nuw nsw i32 %i.es, 1
  call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 4932, ptr noundef nonnull @.str.217, i32 noundef %i.et) #19
  %i.eu = load ptr, ptr %i.t, align 8, !tbaa !298
  %i.ev = load i64, ptr %i.s, align 8, !tbaa !299
  call void @mbedtls_debug_print_buf(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 4933, ptr noundef nonnull @.str.218, ptr noundef %i.eu, i64 noundef %i.ev) #19
  %i.ew = load i16, ptr %i.o, align 8, !tbaa !300
  %i.ex = zext i16 %i.ew to i32
  %i.ey = add nuw nsw i32 %i.ex, 1
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eh, i64 1864
  store i32 %i.ey, ptr %i.ez, align 8, !tbaa !450
  %i.fa = load i64, ptr %i.s, align 8, !tbaa !299 ; 4 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.eh, i64 1856
  store i64 %i.fa, ptr %i.fb, align 8, !tbaa !366
  %i.fc = call noalias ptr @calloc(i64 noundef 1, i64 noundef %i.fa) #20 ; 3 uses
  store ptr %i.fc, ptr %i.el, align 8, !tbaa !365
  %i.fd = icmp eq ptr %i.fc, null
  br i1 %i.fd, label %ssl_buffer_future_record.exit.thread.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fe = load ptr, ptr %i.t, align 8, !tbaa !298
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fc, ptr align 1 %i.fe, i64 %i.fa, i1 false)
  %i.ff = load i64, ptr %i.ek, align 8, !tbaa !367
  %i.fg = add i64 %i.ff, %i.fa
  store i64 %i.fg, ptr %i.ek, align 8, !tbaa !367
  br label %ssl_buffer_future_record.exit.thread.i

ssl_buffer_future_record.exit.thread.i:           ; preds = %bb.at, %bb.as, %bb.ar, %bb.ap, %bb.ao, %bb.an
  %i.fh = load ptr, ptr %0, align 8, !tbaa !277   ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 9
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !289
  %i.fk = icmp eq i8 %i.fj, 1
  br i1 %i.fk, label %bb.au, label %bb.av

bb.au:                                            ; preds = %ssl_buffer_future_record.exit.thread.i
  %i.fl = load ptr, ptr %i.p, align 8, !tbaa !317 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 3
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 11
  br label %mbedtls_ssl_update_in_pointers.exit.i

bb.av:                                            ; preds = %ssl_buffer_future_record.exit.thread.i
  %i.fo = load ptr, ptr %i.q, align 8, !tbaa !318
  %i.fp = load ptr, ptr %i.p, align 8, !tbaa !317
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 3
  br label %mbedtls_ssl_update_in_pointers.exit.i

mbedtls_ssl_update_in_pointers.exit.i:            ; preds = %bb.av, %bb.au
  %.sink21.i.i = phi ptr [ %i.fm, %bb.au ], [ %i.fo, %bb.av ] ; 2 uses
  %.sink20.i.i = phi ptr [ %i.fn, %bb.au ], [ %i.fq, %bb.av ] ; 2 uses
  store ptr %.sink21.i.i, ptr %i.u, align 8, !tbaa !295
  store ptr %.sink20.i.i, ptr %i.v, align 8, !tbaa !377
  %i.fr = load i8, ptr %i.r, align 8, !tbaa !293  ; 2 uses
  %i.fs = zext i8 %i.fr to i32
  store i32 %i.fs, ptr %i.n, align 8, !tbaa !363
  %i.ft = load i8, ptr %i.x, align 8, !tbaa !294
  %i.fu = zext i8 %i.ft to i64
  %i.fv = getelementptr inbounds nuw i8, ptr %.sink20.i.i, i64 %i.fu ; 2 uses
  store ptr %i.fv, ptr %i.i, align 8, !tbaa !378
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 2 ; 2 uses
  store ptr %i.fw, ptr %i.h, align 8, !tbaa !364
  store ptr %i.fw, ptr %i.w, align 8, !tbaa !376
  %i.fx = load i64, ptr %i.y, align 8, !tbaa !297
  store i64 %i.fx, ptr %i.g, align 8, !tbaa !374
  %.0.copyload.i.i.i = load i16, ptr %.sink21.i.i, align 1
  %i.fy = icmp eq i16 %.0.copyload.i.i.i, 0
  br i1 %i.fy, label %bb.aw, label %ssl_check_client_reconnect.exit.thread.i

bb.aw:                                            ; preds = %mbedtls_ssl_update_in_pointers.exit.i
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.ga = load i8, ptr %i.fz, align 8, !tbaa !324
  %i.gb = icmp eq i8 %i.ga, 1
  br i1 %i.gb, label %bb.ax, label %ssl_check_client_reconnect.exit.thread.i

bb.ax:                                            ; preds = %bb.aw
  %.val.i97.i = load i32, ptr %i.m, align 8, !tbaa !321
  %i.gc = icmp sgt i32 %.val.i97.i, 26
  %i.gd = icmp eq i8 %i.fr, 22
  %or.cond122.i = select i1 %i.gc, i1 %i.gd, i1 false
  br i1 %or.cond122.i, label %bb.ay, label %ssl_check_client_reconnect.exit.thread.i

bb.ay:                                            ; preds = %bb.ax
  %i.ge = load i64, ptr %i.j, align 8, !tbaa !320
  %i.gf = icmp ugt i64 %i.ge, 13
  br i1 %i.gf, label %bb.az, label %ssl_check_client_reconnect.exit.thread.i

bb.az:                                            ; preds = %bb.ay
  %i.gg = load ptr, ptr %i.q, align 8, !tbaa !318
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 13
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !291
  %i.gj = icmp eq i8 %i.gi, 1
  br i1 %i.gj, label %ssl_check_client_reconnect.exit.i, label %ssl_check_client_reconnect.exit.thread.i

ssl_check_client_reconnect.exit.thread.i:         ; preds = %bb.az, %bb.ay, %bb.ax, %bb.aw, %mbedtls_ssl_update_in_pointers.exit.i
  call void @mbedtls_debug_print_ret(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 5014, ptr noundef nonnull @.str.206, i32 noundef 0) #19
  br label %bb.ba

ssl_check_client_reconnect.exit.i:                ; preds = %bb.az
  call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 4057, ptr noundef nonnull @.str.219) #19
  %i.gk = call fastcc i32 @ssl_handle_possible_reconnect(ptr noundef nonnull %0) ; 3 uses
  call void @mbedtls_debug_print_ret(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 5014, ptr noundef nonnull @.str.206, i32 noundef %i.gk) #19
  %.not94.i = icmp eq i32 %i.gk, 0
  br i1 %.not94.i, label %bb.ba, label %ssl_get_next_record.exit

bb.ba:                                            ; preds = %ssl_check_client_reconnect.exit.i, %ssl_check_client_reconnect.exit.thread.i
  %i.gl = load i64, ptr %i.s, align 8, !tbaa !299
  store i64 %i.gl, ptr %i.k, align 8, !tbaa !319
  call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 5024, ptr noundef nonnull @.str.207) #19
  br label %ssl_get_next_record.exit.thread71

bb.bb:                                            ; preds = %bb.an
  store i64 0, ptr %i.k, align 8, !tbaa !319
  store i64 0, ptr %i.j, align 8, !tbaa !320
  call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 5031, ptr noundef nonnull @.str.208) #19
  br label %ssl_get_next_record.exit.thread71

bb.bc:                                            ; preds = %bb.al
  %i.gm = load i64, ptr %i.s, align 8, !tbaa !299 ; 3 uses
  br i1 %i.eg, label %bb.bd, label %bb.bf

bb.bd:                                            ; preds = %bb.bc
  store i64 %i.gm, ptr %i.k, align 8, !tbaa !319
  %i.gn = load i64, ptr %i.j, align 8, !tbaa !320
  %i.go = icmp ult i64 %i.gm, %i.gn
  br i1 %i.go, label %bb.be, label %bb.bi

bb.be:                                            ; preds = %bb.bd
  call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 5048, ptr noundef nonnull @.str.209) #19
  br label %bb.bi

bb.bf:                                            ; preds = %bb.bc
  %i.gp = call i32 @mbedtls_ssl_fetch_input(ptr noundef nonnull %0, i64 noundef %i.gm) ; 3 uses
  %.not90.i = icmp eq i32 %i.gp, 0
  br i1 %.not90.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call void @mbedtls_debug_print_ret(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 5058, ptr noundef nonnull @.str.205, i32 noundef %i.gp) #19
  br label %ssl_get_next_record.exit

bb.bh:                                            ; preds = %bb.bf
  store i64 0, ptr %i.j, align 8, !tbaa !320
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.be, %bb.bd
  %i.gq = load ptr, ptr %i.t, align 8, !tbaa !298
  %i.gr = load i64, ptr %i.s, align 8, !tbaa !299
end_hunk_0
