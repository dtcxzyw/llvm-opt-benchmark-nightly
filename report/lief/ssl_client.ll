Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/ssl_client?download=true
inline.NumInlined: 33
inline.NumDeleted: 15
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define hidden i32 @mbedtls_ssl_write_client_hello(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 17 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !42   ; 12 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %ssl_prepare_client_hello.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 11 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !17
  %i.j = load i8, ptr %i.i, align 8, !tbaa !43
  %.not.i = icmp eq i8 %i.j, 0
  br i1 %.not.i, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !46
  %i.m = icmp eq i32 %i.l, 772
  br i1 %i.m, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !47
  %.not71.i = icmp eq ptr %i.o, null
  br i1 %.not71.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = tail call i64 @mbedtls_ms_time() #6
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 224
  %i.r = load i64, ptr %i.q, align 8, !tbaa !48
  %i.s = sub nsw i64 %i.p, %i.r                   ; 2 uses
  %i.t = icmp slt i64 %i.s, 0
  br i1 %i.t, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 144
  %i.v = load i32, ptr %i.u, align 8, !tbaa !49
  %i.w = zext i32 %i.v to i64
  %i.x = mul nuw nsw i64 %i.w, 1000
  %i.y = icmp samesign ugt i64 %i.s, %i.x
  br i1 %i.y, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.z = load ptr, ptr %i.h, align 8, !tbaa !17
  store i8 0, ptr %i.z, align 8, !tbaa !43
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d, %bb.c, %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !50
  %.not72.i = icmp eq i32 %i.ab, 0
  br i1 %.not72.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !51
  %i.ae = load ptr, ptr %i.h, align 8, !tbaa !17
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.af = load ptr, ptr %i.h, align 8, !tbaa !17  ; 3 uses
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !43
  %.not73.i = icmp eq i8 %i.ag, 0
  br i1 %.not73.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !46 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.ai, ptr %i.aj, align 8, !tbaa !51
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ak = load ptr, ptr %0, align 8, !tbaa !29
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !52
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.i
  %.sink109.i = phi ptr [ %i.af, %bb.k ], [ %i.af, %bb.l ], [ %i.ae, %bb.i ] ; 4 uses
  %.sink.i = phi i32 [ %i.ai, %bb.k ], [ %i.am, %bb.l ], [ %i.ad, %bb.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.sink109.i, i64 8
  store i32 %.sink.i, ptr %i.an, align 8, !tbaa !53
  %i.ao = load ptr, ptr %0, align 8, !tbaa !29
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 9
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !54
  %.not74.i = icmp eq i8 %i.aq, 1
  br i1 %.not74.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ar = getelementptr inbounds nuw i8, ptr %.sink109.i, i64 1360
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !55
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.au = getelementptr inbounds nuw i8, ptr %.sink109.i, i64 57
  %i.av = load i8, ptr %i.au, align 1, !tbaa !56
  %.not75.i = icmp eq i8 %i.av, 0
  br i1 %.not75.i, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.aw = getelementptr i8, ptr %0, i64 24
  %.val.i = load i32, ptr %i.aw, align 8, !tbaa !51
  %i.ax = getelementptr inbounds nuw i8, ptr %.sink109.i, i64 2024 ; 2 uses
  %i.ay = icmp eq i32 %.val.i, 771
  br i1 %i.ay, label %bb.q, label %ssl_generate_random.exit.i

bb.q:                                             ; preds = %bb.p
  %i.az = tail call i64 @time(ptr noundef null) #6
  %i.ba = trunc i64 %i.az to i32
  %i.bb = tail call i32 @llvm.bswap.i32(i32 %i.ba)
  store i32 %i.bb, ptr %i.ax, align 8
  br label %ssl_generate_random.exit.i

ssl_generate_random.exit.i:                       ; preds = %bb.q, %bb.p
  %.0.i.i = phi i64 [ 4, %bb.q ], [ 0, %bb.p ]    ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.0.i.i
  %i.bd = sub nuw nsw i64 32, %.0.i.i
  %i.be = tail call i32 @psa_generate_random(ptr noundef nonnull %i.bc, i64 noundef %i.bd) #6 ; 2 uses
  %.not76.i = icmp eq i32 %i.be, 0
  br i1 %.not76.i, label %bb.r, label %ssl_prepare_client_hello.exit.thread

bb.r:                                             ; preds = %ssl_generate_random.exit.i, %bb.o, %bb.n
  %i.bf = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !57 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !51 ; 4 uses
  %i.bj = icmp eq i32 %i.bi, 771
  br i1 %i.bj, label %bb.s, label %.thread103.i

bb.s:                                             ; preds = %bb.r
  %i.bk = add i64 %i.bg, -33
  %or.cond.i = icmp ult i64 %i.bk, -17
  %.pre.pre.i = load i32, ptr %i.aa, align 8, !tbaa !50
  %i.bl = icmp eq i32 %.pre.pre.i, 0              ; 2 uses
  br i1 %or.cond.i, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  br i1 %i.bl, label %bb.u, label %.thread103.i

bb.u:                                             ; preds = %bb.t
  %i.bm = load ptr, ptr %i.h, align 8, !tbaa !17
  %i.bn = load i8, ptr %i.bm, align 8, !tbaa !43
  %i.bo = icmp eq i8 %i.bn, 0
  %spec.select110.i = select i1 %i.bo, i64 0, i64 %i.bg
  br label %.thread102.i

bb.v:                                             ; preds = %bb.s
  br i1 %i.bl, label %.thread102.i, label %.thread103.i

.thread102.i:                                     ; preds = %bb.v, %bb.u
  %.061101.i = phi i64 [ %spec.select110.i, %bb.u ], [ 0, %bb.v ] ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !47
  %.not79.i = icmp eq ptr %i.bq, null
  br i1 %.not79.i, label %.thread103.i, label %bb.w

bb.w:                                             ; preds = %.thread102.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.f, i64 136
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !58
  %.not80.i = icmp eq i64 %i.bs, 0
  %spec.select.i = select i1 %.not80.i, i64 %.061101.i, i64 32
  br label %.thread103.i

.thread103.i:                                     ; preds = %bb.w, %.thread102.i, %bb.v, %bb.t, %bb.r
  %.2.i = phi i64 [ %i.bg, %bb.r ], [ 0, %bb.v ], [ %.061101.i, %.thread102.i ], [ %spec.select.i, %bb.w ], [ 0, %bb.t ]
  %i.bt = icmp eq i32 %i.bi, 772
  %spec.select89.i = select i1 %i.bt, i64 32, i64 %.2.i ; 4 uses
  %.not81.i = icmp eq i64 %spec.select89.i, %i.bg
  br i1 %.not81.i, label %bb.z, label %bb.x

bb.x:                                             ; preds = %.thread103.i
  store i64 %spec.select89.i, ptr %i.bf, align 8, !tbaa !57
  %.not82.i = icmp eq i64 %spec.select89.i, 0
  br i1 %.not82.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bu = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.bv = tail call i32 @psa_generate_random(ptr noundef nonnull %i.bu, i64 noundef %spec.select89.i) #6 ; 2 uses
  %.not83.i = icmp eq i32 %i.bv, 0
  br i1 %.not83.i, label %._crit_edge.i, label %ssl_prepare_client_hello.exit.thread

._crit_edge.i:                                    ; preds = %bb.y
  %.pre92.i = load i32, ptr %i.bh, align 8, !tbaa !51
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge.i, %bb.x, %.thread103.i
  %i.bw = phi i32 [ %.pre92.i, %._crit_edge.i ], [ %i.bi, %bb.x ], [ %i.bi, %.thread103.i ]
  %i.bx = icmp eq i32 %i.bw, 772
  br i1 %i.bx, label %bb.aa, label %ssl_prepare_client_hello.exit

bb.aa:                                            ; preds = %bb.z
  %i.by = load ptr, ptr %i.h, align 8, !tbaa !17
  %i.bz = load i8, ptr %i.by, align 8, !tbaa !43
  %.not84.i = icmp eq i8 %i.bz, 0
  br i1 %.not84.i, label %ssl_prepare_client_hello.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !35 ; 2 uses
  %.not85.i = icmp eq ptr %i.cb, null
  %i.cc = getelementptr inbounds nuw i8, ptr %i.f, i64 216
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !59
  %.fr112.i = freeze ptr %i.cd                    ; 2 uses
  %.not113.i = icmp eq ptr %.fr112.i, null        ; 2 uses
  br i1 %.not85.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  br i1 %.not113.i, label %ssl_prepare_client_hello.exit.thread, label %.split.i

.split.i:                                         ; preds = %bb.ac
  %i.ce = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.cb, ptr noundef nonnull dereferenceable(1) %.fr112.i) #7
  %.fr.i = freeze i32 %i.ce
  %.not111.i = icmp eq i32 %.fr.i, 0
  br i1 %.not111.i, label %ssl_prepare_client_hello.exit.thread72, label %ssl_prepare_client_hello.exit.thread

bb.ad:                                            ; preds = %bb.ab
  br i1 %.not113.i, label %ssl_prepare_client_hello.exit.thread72, label %ssl_prepare_client_hello.exit.thread

ssl_prepare_client_hello.exit:                    ; preds = %bb.z, %bb.aa
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !35
  %i.ch = tail call i32 @mbedtls_ssl_session_set_hostname(ptr noundef nonnull %i.f, ptr noundef %i.cg) #6 ; 2 uses
  %.not = icmp eq i32 %i.ch, 0
  br i1 %.not, label %ssl_prepare_client_hello.exit.thread72, label %ssl_prepare_client_hello.exit.thread

ssl_prepare_client_hello.exit.thread72:           ; preds = %bb.ad, %.split.i, %ssl_prepare_client_hello.exit
  %i.ci = call i32 @mbedtls_ssl_start_handshake_msg(ptr noundef nonnull %0, i8 noundef zeroext 1, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #6 ; 2 uses
  %.not47 = icmp eq i32 %i.ci, 0
  br i1 %.not47, label %bb.ae, label %ssl_prepare_client_hello.exit.thread

bb.ae:                                            ; preds = %ssl_prepare_client_hello.exit.thread72
  %i.cj = load ptr, ptr %i.b, align 8, !tbaa !36  ; 6 uses
  %i.ck = load i64, ptr %i.c, align 8, !tbaa !37  ; 5 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.ck ; 13 uses
  %i.cm = load ptr, ptr %i.h, align 8, !tbaa !17  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i64 0, ptr %i.d, align 8, !tbaa !37
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !53 ; 2 uses
  %i.cp = icmp ult i32 %i.co, 772
  br i1 %i.cp, label %.thread.i, label %bb.af

.thread.i:                                        ; preds = %bb.ae
  %i.cq = load i32, ptr %i.bh, align 8, !tbaa !51 ; 2 uses
  %i.cr = icmp ugt i32 %i.cq, 770
  br label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.cs = icmp eq i32 %i.co, 772
  br i1 %i.cs, label %._crit_edge.i63, label %bb.ah

._crit_edge.i63:                                  ; preds = %bb.af
  %.pre.i = load i32, ptr %i.bh, align 8, !tbaa !51
  br label %bb.ag

bb.ag:                                            ; preds = %._crit_edge.i63, %.thread.i
  %i.ct = phi i32 [ %i.cq, %.thread.i ], [ %.pre.i, %._crit_edge.i63 ]
  %i.cu = phi i1 [ %i.cr, %.thread.i ], [ false, %._crit_edge.i63 ]
  %i.cv = icmp ult i32 %i.ct, 772
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.cw = phi i1 [ false, %bb.af ], [ %i.cu, %bb.ag ] ; 4 uses
  %.not160.i = phi i1 [ true, %bb.af ], [ %i.cv, %bb.ag ] ; 3 uses
  %i.cx = ptrtoint ptr %i.cl to i64               ; 5 uses
  %i.cy = ptrtoint ptr %i.cj to i64
  %i.cz = icmp ugt i64 %i.ck, 1
  br i1 %i.cz, label %bb.ai, label %ssl_write_client_hello_body.exit.thread

bb.ai:                                            ; preds = %bb.ah
  %i.da = load ptr, ptr %0, align 8, !tbaa !29
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 9
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !54
  %i.dd = zext i8 %i.dc to i32
  call void @mbedtls_ssl_write_version(ptr noundef %i.cj, i32 noundef %i.dd, i32 noundef 771) #6
  %i.de = add i64 %i.ck, -34                      ; 2 uses
  %i.df = icmp ult i64 %i.de, -32
  br i1 %i.df, label %bb.aj, label %ssl_write_client_hello_body.exit.thread

bb.aj:                                            ; preds = %bb.ai
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cj, i64 2
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cm, i64 2024
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.dg, ptr noundef nonnull align 8 dereferenceable(32) %i.dh, i64 32, i1 false)
  %i.di = load ptr, ptr %i.e, align 8, !tbaa !42
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 24
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !57 ; 2 uses
  %i.dl = add i64 %i.dk, 1
  %.not109 = icmp ugt i64 %i.dl, %i.de
  br i1 %.not109, label %ssl_write_client_hello_body.exit.thread, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cj, i64 34
  %i.dn = trunc i64 %i.dk to i8
  %i.do = getelementptr inbounds nuw i8, ptr %i.cj, i64 35 ; 2 uses
  store i8 %i.dn, ptr %i.dm, align 1, !tbaa !38
  %i.dp = load ptr, ptr %i.e, align 8, !tbaa !42  ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 32
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !57
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.do, ptr nonnull align 8 %i.dq, i64 %i.ds, i1 false)
  %i.dt = load ptr, ptr %i.e, align 8, !tbaa !42
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !57 ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.dv ; 3 uses
  %i.dx = load ptr, ptr %0, align 8, !tbaa !29
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 9
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !54
  %i.ea = icmp eq i8 %i.dz, 1
  br i1 %i.ea, label %bb.al, label %bb.aq

bb.al:                                            ; preds = %bb.ak
  %i.eb = getelementptr inbounds nuw i8, ptr %i.cm, i64 1360 ; 2 uses
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !55
  %.not152.i = icmp eq ptr %i.ec, null
  br i1 %.not152.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ed = getelementptr inbounds nuw i8, ptr %i.cm, i64 1368
  %i.ee = load i16, ptr %i.ed, align 8, !tbaa !60
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.0130.i = phi i16 [ %i.ee, %bb.am ], [ 0, %bb.al ] ; 3 uses
  %i.ef = zext i16 %.0130.i to i64                ; 3 uses
  %i.eg = add nuw nsw i64 %i.dv, 35
  %i.eh = icmp samesign ule i64 %i.eg, %i.ck
  %.neg79 = add nsw i64 %i.ck, -35
  %gepdiff78 = sub i64 %.neg79, %i.dv
  %i.ei = icmp ugt i64 %gepdiff78, %i.ef
  %narrow.i175.not.i = and i1 %i.eh, %i.ei
  br i1 %narrow.i175.not.i, label %bb.ao, label %ssl_write_client_hello_body.exit.thread

bb.ao:                                            ; preds = %bb.an
  %i.ej = trunc i16 %.0130.i to i8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dw, i64 1 ; 3 uses
  store i8 %i.ej, ptr %i.dw, align 1, !tbaa !38
  %.not154.i = icmp eq i16 %.0130.i, 0
  br i1 %.not154.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.el = load ptr, ptr %i.eb, align 8, !tbaa !55
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ek, ptr align 1 %i.el, i64 %i.ef, i1 false)
  %i.em = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.ef
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %bb.ak
  %.2.i57 = phi ptr [ %i.dw, %bb.ak ], [ %i.ek, %bb.ao ], [ %i.em, %bb.ap ] ; 5 uses
  %i.en = load ptr, ptr %0, align 8, !tbaa !29
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 24
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !61 ; 2 uses
  %i.eq = icmp ule ptr %.2.i57, %i.cl
  %i.er = ptrtoint ptr %.2.i57 to i64             ; 2 uses
  %i.es = sub i64 %i.cx, %i.er
  %i.et = icmp ugt i64 %i.es, 1
  %narrow.i.not.i.i = and i1 %i.eq, %i.et
  br i1 %narrow.i.not.i.i, label %bb.ar, label %ssl_write_client_hello_body.exit.thread

bb.ar:                                            ; preds = %bb.aq
  %i.eu = getelementptr inbounds nuw i8, ptr %.2.i57, i64 2 ; 3 uses
  %i.ev = load i32, ptr %i.ep, align 4, !tbaa !62 ; 2 uses
  %.not4866.i.i = icmp eq i32 %i.ev, 0
  br i1 %.not4866.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ar, %bb.au
  %.0180.i = phi i32 [ %.1.i, %bb.au ], [ 0, %bb.ar ] ; 2 uses
  %i.ew = phi i32 [ %i.fo, %bb.au ], [ %i.ev, %bb.ar ] ; 2 uses
  %.068.i.i = phi i64 [ %i.fm, %bb.au ], [ 0, %bb.ar ]
  %.04167.i.i = phi ptr [ %.142.ph.i.i, %bb.au ], [ %i.eu, %bb.ar ] ; 5 uses
  %i.ex = call ptr @mbedtls_ssl_ciphersuite_from_id(i32 noundef %i.ew) #6 ; 2 uses
  %i.ey = load ptr, ptr %i.h, align 8, !tbaa !17
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !53
  %i.fb = load i32, ptr %i.bh, align 8, !tbaa !51
  %i.fc = call i32 @mbedtls_ssl_validate_ciphersuite(ptr noundef nonnull %0, ptr noundef %i.ex, i32 noundef %i.fa, i32 noundef %i.fb) #6
  %.not49.i.i = icmp eq i32 %i.fc, 0
  br i1 %.not49.i.i, label %bb.as, label %bb.au

bb.as:                                            ; preds = %.lr.ph.i.i
  %i.fd = call i32 @mbedtls_ssl_ciphersuite_uses_ec(ptr noundef %i.ex) #6
  %i.fe = icmp ule ptr %.04167.i.i, %i.cl
  %i.ff = ptrtoint ptr %.04167.i.i to i64
  %i.fg = sub i64 %i.cx, %i.ff
  %i.fh = icmp ugt i64 %i.fg, 1
  %narrow.i53.not.i.i = and i1 %i.fe, %i.fh
  br i1 %narrow.i53.not.i.i, label %bb.at, label %ssl_write_client_hello_body.exit.thread

bb.at:                                            ; preds = %bb.as
  %i.fi = or i32 %i.fd, %.0180.i
  %i.fj = trunc i32 %i.ew to i16
  %i.fk = call i16 @llvm.bswap.i16(i16 %i.fj)
  store i16 %i.fk, ptr %.04167.i.i, align 1
  %i.fl = getelementptr inbounds nuw i8, ptr %.04167.i.i, i64 2
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %.lr.ph.i.i
  %.1.i = phi i32 [ %i.fi, %bb.at ], [ %.0180.i, %.lr.ph.i.i ] ; 2 uses
  %.142.ph.i.i = phi ptr [ %i.fl, %bb.at ], [ %.04167.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.fm = add i64 %.068.i.i, 1                    ; 2 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %i.fm
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !62 ; 2 uses
  %.not48.i.i = icmp eq i32 %i.fo, 0
  br i1 %.not48.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !41

._crit_edge.i.i:                                  ; preds = %bb.au, %bb.ar
  %.2181.i = phi i32 [ 0, %bb.ar ], [ %.1.i, %bb.au ] ; 2 uses
  %.041.lcssa.i.i = phi ptr [ %i.eu, %bb.ar ], [ %.142.ph.i.i, %bb.au ] ; 5 uses
  %i.fp = load i32, ptr %i.aa, align 8, !tbaa !50
  %.not51.i.i = icmp eq i32 %i.fp, 0
  br i1 %.not51.i.i, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %._crit_edge.i.i
  %i.fq = icmp ule ptr %.041.lcssa.i.i, %i.cl
  %i.fr = ptrtoint ptr %.041.lcssa.i.i to i64
  %i.fs = sub i64 %i.cx, %i.fr
  %i.ft = icmp ugt i64 %i.fs, 1
  %narrow.i54.not.i.i = and i1 %i.fq, %i.ft
  br i1 %narrow.i54.not.i.i, label %bb.aw, label %ssl_write_client_hello_body.exit.thread

bb.aw:                                            ; preds = %bb.av
  store i16 -256, ptr %.041.lcssa.i.i, align 1
  %i.fu = getelementptr inbounds nuw i8, ptr %.041.lcssa.i.i, i64 2
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %._crit_edge.i.i
  %.3.i.i = phi ptr [ %.041.lcssa.i.i, %._crit_edge.i.i ], [ %i.fu, %bb.aw ] ; 2 uses
  %i.fv = ptrtoint ptr %.3.i.i to i64             ; 3 uses
  %i.fw = ptrtoint ptr %i.eu to i64
  %i.fx = sub i64 %i.fv, %i.fw
  %i.fy = trunc i64 %i.fx to i16
  %i.fz = call i16 @llvm.bswap.i16(i16 %i.fy)
  store i16 %i.fz, ptr %.2.i57, align 1
  %i.ga = sub i64 %i.fv, %i.er
  %i.gb = getelementptr inbounds nuw i8, ptr %.2.i57, i64 %i.ga ; 4 uses
  %i.gc = icmp ule ptr %.3.i.i, %i.cl
  %i.gd = sub i64 %i.cx, %i.fv
  %i.ge = icmp ugt i64 %i.gd, 1
  %narrow.i176.not.i = and i1 %i.gc, %i.ge
  br i1 %narrow.i176.not.i, label %bb.ay, label %ssl_write_client_hello_body.exit.thread

bb.ay:                                            ; preds = %bb.ax
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gb, i64 1
  store i8 1, ptr %i.gb, align 1, !tbaa !38
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gb, i64 2 ; 3 uses
  store i8 0, ptr %i.gf, align 1, !tbaa !38
  %i.gh = getelementptr inbounds nuw i8, ptr %i.cm, i64 2216
  store i32 0, ptr %i.gh, align 8, !tbaa !40
  %i.gi = icmp ule ptr %i.gg, %i.cl
  %i.gj = ptrtoint ptr %i.gg to i64               ; 3 uses
  %i.gk = sub i64 %i.cx, %i.gj
  %i.gl = icmp ugt i64 %i.gk, 1
  %narrow.i177.not.i = and i1 %i.gi, %i.gl
  br i1 %narrow.i177.not.i, label %bb.az, label %ssl_write_client_hello_body.exit.thread

bb.az:                                            ; preds = %bb.ay
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gb, i64 4 ; 2 uses
  %i.gn = call fastcc i32 @ssl_write_hostname_ext(ptr noundef nonnull %0, ptr noundef nonnull %i.gm, ptr noundef nonnull %i.cl, ptr noundef %i.a) ; 2 uses
  %.not158.i = icmp eq i32 %i.gn, 0
  br i1 %.not158.i, label %bb.ba, label %ssl_write_client_hello_body.exit.thread

bb.ba:                                            ; preds = %bb.az
  %i.go = load i64, ptr %i.a, align 8, !tbaa !37
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gm, i64 %i.go ; 2 uses
  %i.gq = call fastcc i32 @ssl_write_alpn_ext(ptr noundef nonnull %0, ptr noundef nonnull %i.gp, ptr noundef nonnull %i.cl, ptr noundef %i.a) ; 2 uses
  %.not159.i = icmp eq i32 %i.gq, 0
  br i1 %.not159.i, label %bb.bb, label %ssl_write_client_hello_body.exit.thread

bb.bb:                                            ; preds = %bb.ba
  %i.gr = load i64, ptr %i.a, align 8, !tbaa !37
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gp, i64 %i.gr ; 3 uses
  br i1 %.not160.i, label %.thread186.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.gt = call i32 @mbedtls_ssl_tls13_write_client_hello_exts(ptr noundef nonnull %0, ptr noundef nonnull %i.gs, ptr noundef nonnull %i.cl, ptr noundef nonnull %i.a) #6 ; 2 uses
  %.not161.i = icmp eq i32 %i.gt, 0
  br i1 %.not161.i, label %bb.bd, label %ssl_write_client_hello_body.exit.thread

bb.bd:                                            ; preds = %bb.bc
  %i.gu = load i64, ptr %i.a, align 8, !tbaa !37
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.gu
  %.val.i58 = load ptr, ptr %0, align 8, !tbaa !29
  %i.gw = getelementptr i8, ptr %.val.i58, i64 32
  %.val.val.i = load i32, ptr %i.gw, align 8, !tbaa !63
  %i.gx = and i32 %.val.val.i, 6
  %.not.i59 = icmp eq i32 %i.gx, 0
  %spec.select.i60 = select i1 %.not.i59, i32 0, i32 2
  br label %.thread186.i

.thread186.i:                                     ; preds = %bb.bd, %bb.bb
  %.3188.i = phi ptr [ %i.gv, %bb.bd ], [ %i.gs, %bb.bb ] ; 3 uses
  %.0.i = phi i32 [ %spec.select.i60, %bb.bd ], [ 0, %bb.bb ]
  %i.gy = icmp ne i32 %.2181.i, 0
  %or.cond.i61 = select i1 %i.cw, i1 %i.gy, i1 false
  %i.gz = zext i1 %or.cond.i61 to i32
  %spec.select170.i = or disjoint i32 %.0.i, %i.gz ; 2 uses
  %.not164.i = icmp eq i32 %spec.select170.i, 0
  br i1 %.not164.i, label %bb.bg, label %bb.be

bb.be:                                            ; preds = %.thread186.i
  %i.ha = call fastcc i32 @ssl_write_supported_groups_ext(ptr noundef nonnull %0, ptr noundef nonnull %.3188.i, ptr noundef nonnull %i.cl, i32 noundef %spec.select170.i, ptr noundef %i.a) ; 2 uses
  %.not165.i = icmp eq i32 %i.ha, 0
  br i1 %.not165.i, label %bb.bf, label %ssl_write_client_hello_body.exit.thread

bb.bf:                                            ; preds = %bb.be
  %i.hb = load i64, ptr %i.a, align 8, !tbaa !37
  %i.hc = getelementptr inbounds nuw i8, ptr %.3188.i, i64 %i.hb
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %.thread186.i
  %.5.ph.i = phi ptr [ %.3188.i, %.thread186.i ], [ %i.hc, %bb.bf ] ; 4 uses
  br i1 %.not160.i, label %bb.bh, label %.split.i62

.split.i62:                                       ; preds = %bb.bg
  %.val171.i = load ptr, ptr %0, align 8, !tbaa !29
  %i.hd = getelementptr i8, ptr %.val171.i, i64 32
  %.val171.val.i = load i32, ptr %i.hd, align 8, !tbaa !63
  %i.he = and i32 %.val171.val.i, 2
  %i.hf = icmp ne i32 %i.he, 0
  %i.hg = select i1 %i.hf, i1 true, i1 %i.cw
  br i1 %i.hg, label %bb.bi, label %bb.bk

bb.bh:                                            ; preds = %bb.bg
  br i1 %i.cw, label %bb.bi, label %.thread222.i

bb.bi:                                            ; preds = %bb.bh, %.split.i62
  %i.hh = call i32 @mbedtls_ssl_write_sig_alg_ext(ptr noundef nonnull %0, ptr noundef %.5.ph.i, ptr noundef nonnull %i.cl, ptr noundef nonnull %i.a) #6 ; 2 uses
  %.not166.i.a = icmp eq i32 %i.hh, 0
  br i1 %.not166.i.a, label %bb.bj, label %ssl_write_client_hello_body.exit.thread

bb.bj:                                            ; preds = %bb.bi
  %i.hi = load i64, ptr %i.a, align 8, !tbaa !37
  %i.hj = getelementptr inbounds nuw i8, ptr %.5.ph.i, i64 %i.hi
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %.split.i62
  %.6.i = phi ptr [ %i.hj, %bb.bj ], [ %.5.ph.i, %.split.i62 ] ; 3 uses
  br i1 %i.cw, label %bb.bl, label %bb.bn

bb.bl:                                            ; preds = %bb.bk
  %i.hk = call i32 @mbedtls_ssl_tls12_write_client_hello_exts(ptr noundef nonnull %0, ptr noundef %.6.i, ptr noundef nonnull %i.cl, i32 noundef %.2181.i, ptr noundef nonnull %i.a) #6 ; 2 uses
  %.not167.i.a = icmp eq i32 %i.hk, 0
  br i1 %.not167.i.a, label %bb.bm, label %ssl_write_client_hello_body.exit.thread

bb.bm:                                            ; preds = %bb.bl
  %i.hl = load i64, ptr %i.a, align 8, !tbaa !37
  %i.hm = getelementptr inbounds nuw i8, ptr %.6.i, i64 %i.hl
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bk
  %.7.i = phi ptr [ %i.hm, %bb.bm ], [ %.6.i, %bb.bk ] ; 4 uses
  br i1 %.not160.i, label %.thread222.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %.val172.i = load ptr, ptr %0, align 8, !tbaa !29
  %1 = getelementptr i8, ptr %.val172.i, i64 32
  %.val172.val.i = load i32, ptr %1, align 8, !tbaa !63
  %i.hn = and i32 %.val172.val.i, 5
  %.not201.i = icmp eq i32 %i.hn, 0
  br i1 %.not201.i, label %.thread222.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ho = call i32 @mbedtls_ssl_tls13_write_identities_of_pre_shared_key_ext(ptr noundef nonnull %0, ptr noundef %.7.i, ptr noundef nonnull %i.cl, ptr noundef nonnull %i.a, ptr noundef nonnull %i.d) #6 ; 2 uses
  %.not169.i = icmp eq i32 %i.ho, 0
  br i1 %.not169.i, label %bb.bq, label %ssl_write_client_hello_body.exit.thread

bb.bq:                                            ; preds = %bb.bp
  %i.hp = load i64, ptr %i.a, align 8, !tbaa !37
  %i.hq = getelementptr inbounds nuw i8, ptr %.7.i, i64 %i.hp
  br label %.thread222.i

.thread222.i:                                     ; preds = %bb.bq, %bb.bo, %bb.bn, %bb.bh
  %.8.i = phi ptr [ %i.hq, %bb.bq ], [ %.7.i, %bb.bo ], [ %.7.i, %bb.bn ], [ %.5.ph.i, %bb.bh ]
  %i.hr = ptrtoint ptr %.8.i to i64               ; 2 uses
  %i.hs = sub i64 %i.hr, %i.gj
  %i.ht = add i64 %i.hs, -2                       ; 2 uses
  %i.hu = icmp eq i64 %i.ht, 0
  br i1 %i.hu, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %.thread222.i
  %i.hv = trunc i64 %i.ht to i16
  %i.hw = call i16 @llvm.bswap.i16(i16 %i.hv)
  store i16 %i.hw, ptr %i.gg, align 1
  br label %bb.bs

ssl_write_client_hello_body.exit.thread:          ; preds = %bb.as, %bb.an, %bb.ah, %bb.ai, %bb.bp, %bb.be, %bb.ax, %bb.ay, %bb.az, %bb.ba, %bb.bc, %bb.bl, %bb.aj, %bb.bi, %bb.av, %bb.aq
  %.4139.i.ph = phi i32 [ -138, %bb.an ], [ -138, %bb.aq ], [ -138, %bb.av ], [ %i.hh, %bb.bi ], [ -138, %bb.aj ], [ %i.hk, %bb.bl ], [ %i.gt, %bb.bc ], [ %i.gq, %bb.ba ], [ %i.gn, %bb.az ], [ -138, %bb.ay ], [ -138, %bb.ax ], [ %i.ha, %bb.be ], [ %i.ho, %bb.bp ], [ -138, %bb.ai ], [ -138, %bb.ah ], [ -138, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %ssl_prepare_client_hello.exit.thread

bb.bs:                                            ; preds = %bb.br, %.thread222.i
  %.pre-phi.i = phi i64 [ %i.gj, %.thread222.i ], [ %i.hr, %bb.br ]
  %i.hx = sub i64 %.pre-phi.i, %i.cy              ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  %i.hy = load ptr, ptr %0, align 8, !tbaa !29
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 9
  %i.ia = load i8, ptr %i.hz, align 1, !tbaa !54
  %i.ib = icmp eq i8 %i.ia, 1
  br i1 %i.ib, label %bb.bt, label %bb.bv

bb.bt:                                            ; preds = %bb.bs
  %i.ic = add i64 %i.hx, 4
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 408
  store i64 %i.ic, ptr %i.id, align 8, !tbaa !64
  call void @mbedtls_ssl_send_flight_completed(ptr noundef nonnull %0) #6
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 2, ptr %i.ie, align 8, !tbaa !65
  %i.if = call i32 @mbedtls_ssl_write_handshake_msg_ext(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 1) #6 ; 2 uses
  %.not55 = icmp eq i32 %i.if, 0
  br i1 %.not55, label %bb.bu, label %ssl_prepare_client_hello.exit.thread

bb.bu:                                            ; preds = %bb.bt
  %i.ig = call i32 @mbedtls_ssl_flight_transmit(ptr noundef nonnull %0) #6
  br label %ssl_prepare_client_hello.exit.thread

bb.bv:                                            ; preds = %bb.bs
  %i.ih = call i32 @mbedtls_ssl_add_hs_hdr_to_checksum(ptr noundef nonnull %0, i32 noundef 1, i64 noundef %i.hx) #6 ; 2 uses
  %.not49 = icmp eq i32 %i.ih, 0
  br i1 %.not49, label %bb.bw, label %ssl_prepare_client_hello.exit.thread

bb.bw:                                            ; preds = %bb.bv
  %i.ii = load ptr, ptr %i.h, align 8, !tbaa !17
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 24
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !66
  %i.il = load ptr, ptr %i.b, align 8, !tbaa !36
  %i.im = load i64, ptr %i.d, align 8, !tbaa !37
  %i.in = sub i64 %i.hx, %i.im
  %i.io = call i32 %i.ik(ptr noundef nonnull %0, ptr noundef %i.il, i64 noundef %i.in) #6 ; 2 uses
  %.not50 = icmp eq i32 %i.io, 0
  br i1 %.not50, label %bb.bx, label %ssl_prepare_client_hello.exit.thread

bb.bx:                                            ; preds = %bb.bw
  %i.ip = load i64, ptr %i.d, align 8, !tbaa !37  ; 2 uses
  %.not51 = icmp eq i64 %i.ip, 0
  br i1 %.not51, label %bb.ca, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.iq = load ptr, ptr %i.b, align 8, !tbaa !36
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 %i.hx ; 2 uses
  %i.is = sub i64 0, %i.ip
  %i.it = getelementptr inbounds i8, ptr %i.ir, i64 %i.is
  %i.iu = call i32 @mbedtls_ssl_tls13_write_binders_of_pre_shared_key_ext(ptr noundef nonnull %0, ptr noundef nonnull %i.it, ptr noundef %i.ir) #6 ; 2 uses
  %.not52 = icmp eq i32 %i.iu, 0
  br i1 %.not52, label %bb.bz, label %ssl_prepare_client_hello.exit.thread

bb.bz:                                            ; preds = %bb.by
  %i.iv = load ptr, ptr %i.h, align 8, !tbaa !17
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 24
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !66
  %i.iy = load ptr, ptr %i.b, align 8, !tbaa !36
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 %i.hx
  %i.ja = load i64, ptr %i.d, align 8, !tbaa !37  ; 2 uses
  %i.jb = sub i64 0, %i.ja
  %i.jc = getelementptr inbounds i8, ptr %i.iz, i64 %i.jb
  %i.jd = call i32 %i.ix(ptr noundef nonnull %0, ptr noundef %i.jc, i64 noundef %i.ja) #6 ; 2 uses
  %.not53 = icmp eq i32 %i.jd, 0
  br i1 %.not53, label %bb.ca, label %ssl_prepare_client_hello.exit.thread

bb.ca:                                            ; preds = %bb.bx, %bb.bz
  %i.je = load i64, ptr %i.c, align 8, !tbaa !37
  %i.jf = call i32 @mbedtls_ssl_finish_handshake_msg(ptr noundef nonnull %0, i64 noundef %i.je, i64 noundef %i.hx) #6 ; 2 uses
  %.not54 = icmp eq i32 %i.jf, 0
  br i1 %.not54, label %bb.cb, label %ssl_prepare_client_hello.exit.thread

bb.cb:                                            ; preds = %bb.ca
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 2, ptr %i.jg, align 8, !tbaa !65
  %i.jh = load ptr, ptr %i.h, align 8, !tbaa !17
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 8
  %i.jj = load i32, ptr %i.ji, align 8, !tbaa !53
  %i.jk = icmp ult i32 %i.jj, 773
  br i1 %i.jk, label %bb.cc, label %ssl_prepare_client_hello.exit.thread

bb.cc:                                            ; preds = %bb.cb
  %i.jl = load i32, ptr %i.bh, align 8, !tbaa !51
  %i.jm = icmp ugt i32 %i.jl, 771
  br i1 %i.jm, label %bb.cd, label %ssl_prepare_client_hello.exit.thread

bb.cd:                                            ; preds = %bb.cc
  %i.jn = call i32 @mbedtls_ssl_tls13_finalize_client_hello(ptr noundef nonnull %0) #6
  br label %ssl_prepare_client_hello.exit.thread

ssl_prepare_client_hello.exit.thread:             ; preds = %bb.ac, %.split.i, %bb.ad, %bb.y, %ssl_generate_random.exit.i, %bb.a, %ssl_write_client_hello_body.exit.thread, %bb.bu, %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.by, %ssl_prepare_client_hello.exit.thread72, %ssl_prepare_client_hello.exit, %bb.bz, %bb.bw, %bb.bv, %bb.bt
  %.034 = phi i32 [ %i.jd, %bb.bz ], [ %i.io, %bb.bw ], [ %i.if, %bb.bt ], [ %i.ig, %bb.bu ], [ %i.ih, %bb.bv ], [ %i.ch, %ssl_prepare_client_hello.exit ], [ %i.ci, %ssl_prepare_client_hello.exit.thread72 ], [ %.4139.i.ph, %ssl_write_client_hello_body.exit.thread ], [ %i.iu, %bb.by ], [ %i.jf, %bb.ca ], [ %i.jn, %bb.cd ], [ 0, %bb.cc ], [ 0, %bb.cb ], [ -27648, %bb.a ], [ %i.bv, %bb.y ], [ %i.be, %ssl_generate_random.exit.i ], [ -135, %bb.ad ], [ -135, %.split.i ], [ -135, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  ret i32 %.034
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @mbedtls_ssl_start_handshake_msg(ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mbedtls_ssl_send_flight_completed(ptr noundef) local_unnamed_addr #2

declare i32 @mbedtls_ssl_flight_transmit(ptr noundef) local_unnamed_addr #2

declare i32 @mbedtls_ssl_add_hs_hdr_to_checksum(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @mbedtls_ssl_tls13_write_binders_of_pre_shared_key_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @mbedtls_ssl_finish_handshake_msg(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @mbedtls_ssl_tls13_finalize_client_hello(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i64 @mbedtls_ms_time() local_unnamed_addr #2

declare i32 @psa_generate_random(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #3

declare i32 @mbedtls_ssl_session_set_hostname(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @mbedtls_ssl_write_version(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -138, 1) i32 @ssl_write_hostname_ext(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 8)) %3) unnamed_addr #0 {
bb.a:
  store i64 0, ptr %3, align 8, !tbaa !37
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #7 ; 3 uses
  %i.e = add i64 %i.d, 9                          ; 2 uses
  %i.f = icmp ule ptr %1, %2
  %i.g = ptrtoint ptr %2 to i64
  %i.h = ptrtoint ptr %1 to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = icmp ule i64 %i.e, %i.i
  %narrow.i.not = and i1 %i.f, %i.j
  br i1 %narrow.i.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i16 0, ptr %1, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.l = trunc i64 %i.d to i16                    ; 3 uses
  %i.m = add i16 %i.l, 5
  %i.n = tail call i16 @llvm.bswap.i16(i16 %i.m)
  store i16 %i.n, ptr %i.k, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.p = add i16 %i.l, 3
  %i.q = tail call i16 @llvm.bswap.i16(i16 %i.p)
  store i16 %i.q, ptr %i.o, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 7
  store i8 0, ptr %i.r, align 1, !tbaa !38
  %i.t = tail call i16 @llvm.bswap.i16(i16 %i.l)
  store i16 %i.t, ptr %i.s, align 1
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !35
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.u, ptr align 1 %i.v, i64 %i.d, i1 false)
  store i64 %i.e, ptr %3, align 8, !tbaa !37
  %i.w = tail call i32 @mbedtls_ssl_get_extension_mask(i32 noundef 0) #6
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !17
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 2216 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !40
  %i.ab = or i32 %i.aa, %i.w
  store i32 %i.ab, ptr %i.z, align 8, !tbaa !40
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ 0, %bb.a ], [ -138, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -138, 1) i32 @ssl_write_alpn_ext(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef nonnull captures(none) initializes((0, 8)) %3) unnamed_addr #0 {
bb.a:
end_hunk_0
