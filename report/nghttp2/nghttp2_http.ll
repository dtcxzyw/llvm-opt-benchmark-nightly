Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nghttp2/original/nghttp2_http?download=true
inline.NumInlined: 26
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@nghttp2_http_on_header:bb.a
  %i.g = or i32 %i.f, 64
  store i32 %i.g, ptr %i.e, align 8, !tbaa !16
  br label %http_response_on_header.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !30   ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !17
  %i.k = icmp eq i8 %i.j, 58
  br i1 %i.k, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.m = load i32, ptr %i.l, align 8, !tbaa !31
  %i.n = icmp eq i32 %i.m, -1
  %i.o = icmp ne i32 %4, 0
  %or.cond = or i1 %i.o, %i.n
  br i1 %or.cond, label %http_response_on_header.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.q = load i32, ptr %i.p, align 8, !tbaa !16
  %i.r = and i32 %i.q, 64
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %.thread52, label %http_response_on_header.exit

bb.f:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !16
  %i.u = or i32 %i.t, 64
  store i32 %i.u, ptr %i.s, align 8, !tbaa !16
  %i.v = tail call i32 @nghttp2_check_nonempty_header_name(ptr noundef nonnull %i.i, i64 noundef %i.c) #8
  switch i32 %i.v, label %bb.h [
    i32 0, label %http_response_on_header.exit
    i32 2, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  br label %http_response_on_header.exit

bb.h:                                             ; preds = %bb.f
  %.pre = load ptr, ptr %3, align 8, !tbaa !27    ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %.pre38 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !29
  %i.w = icmp eq i64 %.pre38, 0
  br i1 %i.w, label %bb.i, label %.thread52

bb.i:                                             ; preds = %bb.h
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 438, ptr noundef nonnull @__PRETTY_FUNCTION__.nghttp2_http_on_header) #9
  unreachable

.thread52:                                        ; preds = %bb.e, %bb.h
  %i.x = phi ptr [ %.pre, %bb.h ], [ %i.a, %bb.e ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 2739
  %i.z = load i8, ptr %i.y, align 1, !tbaa !55
  %.not21 = icmp eq i8 %i.z, 0
  br i1 %.not21, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.thread52
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ab = load i8, ptr %i.aa, align 4, !tbaa !17
  %i.ac = icmp eq i8 %i.ab, 5
  br i1 %i.ac, label %.thread, label %bb.cb

bb.k:                                             ; preds = %.thread52
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 2737
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !56
  %.not29 = icmp eq i8 %i.ae, 0
  br label %.thread

.thread:                                          ; preds = %bb.j, %bb.k
  %.not91.i = phi i1 [ %.not29, %bb.k ], [ true, %bb.j ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !31
  switch i32 %i.ag, label %bb.bx [
    i32 0, label %bb.l
    i32 1, label %bb.o
    i32 3, label %bb.aa
    i32 5, label %bb.ah
    i32 66, label %bb.ar
    i32 37, label %bb.ax
    i32 27, label %bb.ba
    i32 62, label %http_request_on_header.exit
    i32 63, label %http_request_on_header.exit
    i32 64, label %http_request_on_header.exit
    i32 56, label %http_request_on_header.exit
    i32 65, label %http_request_on_header.exit
    i32 61, label %bb.be
    i32 67, label %bb.bn
  ]

bb.l:                                             ; preds = %.thread
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !57 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !30 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.am = load i64, ptr %i.al, align 8, !tbaa !29 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.am
  %.not8.i.i = icmp samesign eq i64 %i.am, 0
  br i1 %.not8.i.i, label %http_request_on_header.exit, label %.lr.ph.i.i

bb.m:                                             ; preds = %.lr.ph.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.069.i.i, i64 1 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ao, %i.an
  br i1 %.not.i.i, label %bb.n, label %.lr.ph.i.i, !llvm.loop !22

.lr.ph.i.i:                                       ; preds = %bb.l, %bb.m
  %.069.i.i = phi ptr [ %i.ao, %bb.m ], [ %i.ak, %bb.l ] ; 2 uses
  %i.ap = load i8, ptr %.069.i.i, align 1, !tbaa !17
  %i.aq = zext i8 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr @VALID_AUTHORITY_CHARS, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !17
  %.not7.i.i = icmp eq i8 %i.as, 0
  br i1 %.not7.i.i, label %http_request_on_header.exit, label %bb.m

bb.n:                                             ; preds = %bb.m
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !16 ; 2 uses
  %.not.i111.i = trunc i32 %i.au to i1
  br i1 %.not.i111.i, label %http_request_on_header.exit, label %check_pseudo_header.exit.i

check_pseudo_header.exit.i:                       ; preds = %bb.n
  %i.av = or disjoint i32 %i.au, 1
  store i32 %i.av, ptr %i.at, align 8, !tbaa !16
  br label %memieq.exit154.i

bb.o:                                             ; preds = %.thread
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !57 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !30
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !29
  %i.bc = tail call i32 @nghttp2_check_method(ptr noundef %i.az, i64 noundef %i.bb) #8
  %.not103.i = icmp eq i32 %i.bc, 0
  br i1 %.not103.i, label %http_request_on_header.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 5 uses
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !16 ; 5 uses
  %i.bf = and i32 %i.be, 4
  %.not.i113.i = icmp eq i32 %i.bf, 0
  br i1 %.not.i113.i, label %bb.q, label %http_request_on_header.exit

bb.q:                                             ; preds = %bb.p
  %i.bg = load ptr, ptr %i.aw, align 8, !tbaa !57 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !29 ; 2 uses
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %http_request_on_header.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bk = or disjoint i32 %i.be, 4
  store i32 %i.bk, ptr %i.bd, align 8, !tbaa !16
  switch i64 %i.bi, label %memieq.exit154.i [
    i64 4, label %bb.s
    i64 7, label %bb.u
  ]

bb.s:                                             ; preds = %bb.r
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !30
  %i.bn = load i32, ptr %i.bm, align 1
  %i.bo = icmp ne i32 1145128264, %i.bn
  %i.bp = zext i1 %i.bo to i32
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %bb.t, label %memieq.exit154.i

bb.t:                                             ; preds = %bb.s
  %i.br = or i32 %i.be, 260
  store i32 %i.br, ptr %i.bd, align 8, !tbaa !16
  br label %memieq.exit154.i

bb.u:                                             ; preds = %bb.r
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !30 ; 5 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 6
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !17
  switch i8 %i.bv, label %memieq.exit154.i [
    i8 84, label %bb.v
    i8 83, label %bb.y
  ]

bb.v:                                             ; preds = %bb.u
  %i.bw = load i32, ptr %i.bt, align 1
  %i.bx = xor i32 1313754947, %i.bw
  %i.by = getelementptr i8, ptr %i.bt, i64 3
  %i.bz = load i32, ptr %i.by, align 1
  %i.ca = xor i32 1413694798, %i.bz
  %i.cb = or i32 %i.bx, %i.ca
  %i.cc = icmp ne i32 %i.cb, 0
  %i.cd = zext i1 %i.cc to i32
  %i.ce = icmp eq i32 %i.cd, 0
  br i1 %i.ce, label %bb.w, label %memieq.exit154.i

bb.w:                                             ; preds = %bb.v
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !58
  %6 = and i32 %i.cg, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %http_request_on_header.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ch = or i32 %i.be, 132
  store i32 %i.ch, ptr %i.bd, align 8, !tbaa !16
  br label %memieq.exit154.i

bb.y:                                             ; preds = %bb.u
  %i.ci = load i32, ptr %i.bt, align 1
  %i.cj = xor i32 1230262351, %i.ci
  %i.ck = getelementptr i8, ptr %i.bt, i64 3
  %i.cl = load i32, ptr %i.ck, align 1
  %i.cm = xor i32 1397641033, %i.cl
  %i.cn = or i32 %i.cj, %i.cm
  %i.co = icmp ne i32 %i.cn, 0
  %i.cp = zext i1 %i.co to i32
  %i.cq = icmp eq i32 %i.cp, 0
  br i1 %i.cq, label %bb.z, label %memieq.exit154.i

bb.z:                                             ; preds = %bb.y
  %i.cr = or i32 %i.be, 516
  store i32 %i.cr, ptr %i.bd, align 8, !tbaa !16
  br label %memieq.exit154.i

bb.aa:                                            ; preds = %.thread
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !57 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !30
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !29
  %i.cy = tail call i32 @nghttp2_check_path(ptr noundef %i.cv, i64 noundef %i.cx) #8
  %.not101.i = icmp eq i32 %i.cy, 0
  br i1 %.not101.i, label %http_request_on_header.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 4 uses
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !16 ; 4 uses
  %i.db = and i32 %i.da, 2
  %.not.i116.i = icmp eq i32 %i.db, 0
  br i1 %.not.i116.i, label %bb.ac, label %http_request_on_header.exit

bb.ac:                                            ; preds = %bb.ab
  %i.dc = load ptr, ptr %i.cs, align 8, !tbaa !57 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !29 ; 2 uses
  %i.df = icmp eq i64 %i.de, 0
  br i1 %i.df, label %http_request_on_header.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dg = or disjoint i32 %i.da, 2
  store i32 %i.dg, ptr %i.cz, align 8, !tbaa !16
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !30
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !17  ; 2 uses
  %i.dk = icmp eq i8 %i.dj, 47
  br i1 %i.dk, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.dl = or i32 %i.da, 2050
  store i32 %i.dl, ptr %i.cz, align 8, !tbaa !16
  br label %memieq.exit154.i

bb.af:                                            ; preds = %bb.ad
  %i.dm = icmp eq i64 %i.de, 1
  %i.dn = icmp eq i8 %i.dj, 42
  %or.cond.i = and i1 %i.dm, %i.dn
  br i1 %or.cond.i, label %bb.ag, label %memieq.exit154.i

bb.ag:                                            ; preds = %bb.af
  %i.do = or i32 %i.da, 4098
  store i32 %i.do, ptr %i.cz, align 8, !tbaa !16
  br label %memieq.exit154.i

bb.ah:                                            ; preds = %.thread
  %i.dp = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !57 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !30 ; 10 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !29 ; 4 uses
  %i.dv = icmp eq i64 %i.du, 0
  br i1 %i.dv, label %http_request_on_header.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dw = load i8, ptr %i.ds, align 1, !tbaa !17
  %i.dx = and i8 %i.dw, -33
  %i.dy = add i8 %i.dx, -65
  %or.cond32.i.i = icmp ult i8 %i.dy, 26
  br i1 %or.cond32.i.i, label %bb.aj, label %http_request_on_header.exit

bb.aj:                                            ; preds = %bb.ai
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.du
  %.not36.i.i = icmp samesign eq i64 %i.du, 1
  br i1 %.not36.i.i, label %check_scheme.exit.thread172.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.aj
  %.02035.i.i = getelementptr inbounds nuw i8, ptr %i.ds, i64 1 ; 3 uses
  br label %.lr.ph.i120.i

.lr.ph.i120.i:                                    ; preds = %bb.al, %.lr.ph.preheader.i.i
  %.02037.i.i = phi ptr [ %.020.i.i, %bb.al ], [ %.02035.i.i, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.ea = load i8, ptr %.02037.i.i, align 1, !tbaa !17 ; 3 uses
  %i.eb = and i8 %i.ea, -33
  %i.ec = add i8 %i.eb, -65
  %or.cond33.i.i = icmp ult i8 %i.ec, 26
  %i.ed = add i8 %i.ea, -48
  %or.cond31.i.i = icmp ult i8 %i.ed, 10
  %or.cond34.i.i = or i1 %or.cond31.i.i, %or.cond33.i.i
  br i1 %or.cond34.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph.i120.i
  switch i8 %i.ea, label %http_request_on_header.exit [
    i8 43, label %bb.al
    i8 45, label %bb.al
    i8 46, label %bb.al
  ]

bb.al:                                            ; preds = %bb.ak, %bb.ak, %bb.ak, %.lr.ph.i120.i
  %.020.i.i = getelementptr inbounds nuw i8, ptr %.02037.i.i, i64 1 ; 2 uses
  %.not.i121.i = icmp eq ptr %.020.i.i, %i.dz
  br i1 %.not.i121.i, label %check_scheme.exit.i, label %.lr.ph.i120.i, !llvm.loop !23

check_scheme.exit.i:                              ; preds = %bb.al
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 3 uses
  %i.ef = load i32, ptr %i.ee, align 8, !tbaa !16 ; 3 uses
  %i.eg = and i32 %i.ef, 8
  %.not.i122.not.i = icmp eq i32 %i.eg, 0
  br i1 %.not.i122.not.i, label %bb.am, label %http_request_on_header.exit

check_scheme.exit.thread172.i:                    ; preds = %bb.aj
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !16 ; 2 uses
  %i.ej = and i32 %i.ei, 8
  %.not.i122174.i = icmp eq i32 %i.ej, 0
  br i1 %.not.i122174.i, label %.thread181.i, label %http_request_on_header.exit

.thread181.i:                                     ; preds = %check_scheme.exit.thread172.i
  %i.ek = or disjoint i32 %i.ei, 8
  store i32 %i.ek, ptr %i.eh, align 8, !tbaa !16
  br label %memieq.exit154.i

bb.am:                                            ; preds = %check_scheme.exit.i
  %i.el = or disjoint i32 %i.ef, 8
  store i32 %i.el, ptr %i.ee, align 8, !tbaa !16
  switch i64 %i.du, label %memieq.exit154.i [
    i64 4, label %.preheader.preheader.i
    i64 5, label %.preheader206.i
  ]

.preheader206.i:                                  ; preds = %bb.am
  %i.em = load i8, ptr %i.ds, align 1, !tbaa !17
  %i.en = zext i8 %i.em to i64
  %i.eo = getelementptr inbounds nuw i8, ptr @nghttp2_downcase_tbl, i64 %i.en
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !17
  %.not.i127.i = icmp eq i8 %i.ep, 104
  br i1 %.not.i127.i, label %bb.an, label %memieq.exit154.i

.preheader.preheader.i:                           ; preds = %bb.am
  %i.eq = load i8, ptr %i.ds, align 1, !tbaa !17
  %i.er = zext i8 %i.eq to i64
  %i.es = getelementptr inbounds nuw i8, ptr @nghttp2_downcase_tbl, i64 %i.er
  %i.et = load i8, ptr %i.es, align 1, !tbaa !17
  %.not.i125.i = icmp eq i8 %i.et, 104
  br i1 %.not.i125.i, label %.preheader.1.i, label %memieq.exit154.i

.preheader.1.i:                                   ; preds = %.preheader.preheader.i
  %i.eu = load i8, ptr %.02035.i.i, align 1, !tbaa !17
  %i.ev = zext i8 %i.eu to i64
  %i.ew = getelementptr inbounds nuw i8, ptr @nghttp2_downcase_tbl, i64 %i.ev
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !17
  %.not.i125.1.i = icmp eq i8 %i.ex, 116
  br i1 %.not.i125.1.i, label %.preheader.2.i, label %memieq.exit154.i

.preheader.2.i:                                   ; preds = %.preheader.1.i
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ds, i64 2
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !17
  %i.fa = zext i8 %i.ez to i64
  %i.fb = getelementptr inbounds nuw i8, ptr @nghttp2_downcase_tbl, i64 %i.fa
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !17
  %.not.i125.2.i = icmp eq i8 %i.fc, 116
  br i1 %.not.i125.2.i, label %.preheader.3.i, label %memieq.exit154.i

.preheader.3.i:                                   ; preds = %.preheader.2.i
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ds, i64 3
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !17
  %i.ff = zext i8 %i.fe to i64
  %i.fg = getelementptr inbounds nuw i8, ptr @nghttp2_downcase_tbl, i64 %i.ff
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !17
  %.not.i125.3.i = icmp eq i8 %i.fh, 112
  br i1 %.not.i125.3.i, label %memieq.exit.i, label %memieq.exit154.i

bb.an:                                            ; preds = %.preheader206.i
  %i.fi = load i8, ptr %.02035.i.i, align 1, !tbaa !17
  %i.fj = zext i8 %i.fi to i64
  %i.fk = getelementptr inbounds nuw i8, ptr @nghttp2_downcase_tbl, i64 %i.fj
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !17
  %.not.i127.1.i = icmp eq i8 %i.fl, 116
  br i1 %.not.i127.1.i, label %bb.ao, label %memieq.exit154.i

bb.ao:                                            ; preds = %bb.an
end_hunk_0
begin_hunk_1_@nghttp2_http_on_header:bb.a
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !30 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gw, i64 24
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !29 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.ha
  %.not8.i138.i = icmp samesign eq i64 %i.ha, 0
  br i1 %.not8.i138.i, label %http_request_on_header.exit, label %.lr.ph.i139.i

bb.ay:                                            ; preds = %.lr.ph.i139.i
  %i.hc = getelementptr inbounds nuw i8, ptr %.069.i140.i, i64 1 ; 2 uses
  %.not.i142.i = icmp eq ptr %i.hc, %i.hb
  br i1 %.not.i142.i, label %bb.az, label %.lr.ph.i139.i, !llvm.loop !22

.lr.ph.i139.i:                                    ; preds = %bb.ax, %bb.ay
  %.069.i140.i = phi ptr [ %i.hc, %bb.ay ], [ %i.gy, %bb.ax ] ; 2 uses
  %i.hd = load i8, ptr %.069.i140.i, align 1, !tbaa !17
  %i.he = zext i8 %i.hd to i64
  %i.hf = getelementptr inbounds nuw i8, ptr @VALID_AUTHORITY_CHARS, i64 %i.he
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !17
  %.not7.i141.i = icmp eq i8 %i.hg, 0
  br i1 %.not7.i141.i, label %http_request_on_header.exit, label %bb.ay

bb.az:                                            ; preds = %bb.ay
  %i.hh = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.hi = load i32, ptr %i.hh, align 8, !tbaa !16 ; 2 uses
  %i.hj = and i32 %i.hi, 16
  %.not.i145.not.i = icmp eq i32 %i.hj, 0
  br i1 %.not.i145.not.i, label %check_pseudo_header.exit147.i, label %http_request_on_header.exit

check_pseudo_header.exit147.i:                    ; preds = %bb.az
  %i.hk = or disjoint i32 %i.hi, 16
  store i32 %i.hk, ptr %i.hh, align 8, !tbaa !16
  br label %memieq.exit154.i

bb.ba:                                            ; preds = %.thread
  %i.hl = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !19
  %.not88.i = icmp eq i64 %i.hm, -1
  br i1 %.not88.i, label %bb.bb, label %http_request_on_header.exit

bb.bb:                                            ; preds = %bb.ba
  %i.hn = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !57 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 16
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !30
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ho, i64 24
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !29 ; 2 uses
  %i.ht = icmp eq i64 %i.hs, 0
  br i1 %i.ht, label %http_request_on_header.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.bb, %bb.bd
  %.020.i148.i = phi i64 [ %i.ie, %bb.bd ], [ 0, %bb.bb ] ; 2 uses
  %.01519.i.i = phi i64 [ %i.id, %bb.bd ], [ 0, %bb.bb ] ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hq, i64 %.020.i148.i
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !17  ; 2 uses
  %i.hw = add i8 %i.hv, -58
  %or.cond.i.i = icmp ult i8 %i.hw, -10
  br i1 %or.cond.i.i, label %http_request_on_header.exit, label %bb.bc

bb.bc:                                            ; preds = %.preheader.i.i
  %i.hx = and i8 %i.hv, 15
  %i.hy = zext nneg i8 %i.hx to i64               ; 2 uses
  %i.hz = xor i64 %i.hy, 9223372036854775806
  %i.ia = udiv i64 %i.hz, 10
  %i.ib = icmp ugt i64 %.01519.i.i, %i.ia
  br i1 %i.ib, label %http_request_on_header.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ic = mul nuw nsw i64 %.01519.i.i, 10
  %i.id = add nuw i64 %i.ic, %i.hy                ; 2 uses
  %i.ie = add nuw i64 %.020.i148.i, 1             ; 2 uses
  %exitcond.not.i149.i = icmp eq i64 %i.ie, %i.hs
  br i1 %exitcond.not.i149.i, label %parse_uint.exit.i, label %.preheader.i.i, !llvm.loop !0

parse_uint.exit.i:                                ; preds = %bb.bd
  store i64 %i.id, ptr %i.hl, align 8, !tbaa !19
  br label %memieq.exit154.i

bb.be:                                            ; preds = %.thread
  %i.if = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !57 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 24
  %i.ii = load i64, ptr %i.ih, align 8, !tbaa !29
  %i.ij = icmp eq i64 %i.ii, 8
  br i1 %i.ij, label %bb.bf, label %http_request_on_header.exit

bb.bf:                                            ; preds = %bb.be
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ig, i64 16
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !30 ; 8 uses
  %i.im = load i8, ptr %i.il, align 1, !tbaa !17
  %i.in = zext i8 %i.im to i64
  %i.io = getelementptr inbounds nuw i8, ptr @nghttp2_downcase_tbl, i64 %i.in
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !17
  %.not.i151.i = icmp eq i8 %i.ip, 116
  br i1 %.not.i151.i, label %bb.bg, label %http_request_on_header.exit

bb.bg:                                            ; preds = %bb.bf
  %i.iq = getelementptr inbounds nuw i8, ptr %i.il, i64 1
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !17
  %i.is = zext i8 %i.ir to i64
  %i.it = getelementptr inbounds nuw i8, ptr @nghttp2_downcase_tbl, i64 %i.is
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !17
  %.not.i151.1.i = icmp eq i8 %i.iu, 114
  br i1 %.not.i151.1.i, label %bb.bh, label %http_request_on_header.exit

bb.bh:                                            ; preds = %bb.bg
  %i.iv = getelementptr inbounds nuw i8, ptr %i.il, i64 2
  %i.iw = load i8, ptr %i.iv, align 1, !tbaa !17
  %i.ix = zext i8 %i.iw to i64
  %i.iy = getelementptr inbounds nuw i8, ptr @nghttp2_downcase_tbl, i64 %i.ix
  %i.iz = load i8, ptr %i.iy, align 1, !tbaa !17
  %.not.i151.2.i = icmp eq i8 %i.iz, 97
  br i1 %.not.i151.2.i, label %bb.bi, label %http_request_on_header.exit

bb.bi:                                            ; preds = %bb.bh
  %i.ja = getelementptr inbounds nuw i8, ptr %i.il, i64 3
  %i.jb = load i8, ptr %i.ja, align 1, !tbaa !17
  %i.jc = zext i8 %i.jb to i64
  %i.jd = getelementptr inbounds nuw i8, ptr @nghttp2_downcase_tbl, i64 %i.jc
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !17
  %.not.i151.3.i = icmp eq i8 %i.je, 105
  br i1 %.not.i151.3.i, label %bb.bj, label %http_request_on_header.exit

bb.bj:                                            ; preds = %bb.bi
  %i.jf = getelementptr inbounds nuw i8, ptr %i.il, i64 4
  %i.jg = load i8, ptr %i.jf, align 1, !tbaa !17
  %i.jh = zext i8 %i.jg to i64
  %i.ji = getelementptr inbounds nuw i8, ptr @nghttp2_downcase_tbl, i64 %i.jh
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !17
  %.not.i151.4.i = icmp eq i8 %i.jj, 108
  br i1 %.not.i151.4.i, label %bb.bk, label %http_request_on_header.exit

bb.bk:                                            ; preds = %bb.bj
  %i.jk = getelementptr inbounds nuw i8, ptr %i.il, i64 5
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !17
  %i.jm = zext i8 %i.jl to i64
  %i.jn = getelementptr inbounds nuw i8, ptr @nghttp2_downcase_tbl, i64 %i.jm
  %i.jo = load i8, ptr %i.jn, align 1, !tbaa !17
  %.not.i151.5.i = icmp eq i8 %i.jo, 101
  br i1 %.not.i151.5.i, label %bb.bl, label %http_request_on_header.exit

bb.bl:                                            ; preds = %bb.bk
  %i.jp = getelementptr inbounds nuw i8, ptr %i.il, i64 6
  %i.jq = load i8, ptr %i.jp, align 1, !tbaa !17
  %i.jr = zext i8 %i.jq to i64
  %i.js = getelementptr inbounds nuw i8, ptr @nghttp2_downcase_tbl, i64 %i.jr
  %i.jt = load i8, ptr %i.js, align 1, !tbaa !17
  %.not.i151.6.i = icmp eq i8 %i.jt, 114
  br i1 %.not.i151.6.i, label %bb.bm, label %http_request_on_header.exit

bb.bm:                                            ; preds = %bb.bl
  %i.ju = getelementptr inbounds nuw i8, ptr %i.il, i64 7
  %i.jv = load i8, ptr %i.ju, align 1, !tbaa !17
  %i.jw = zext i8 %i.jv to i64
  %i.jx = getelementptr inbounds nuw i8, ptr @nghttp2_downcase_tbl, i64 %i.jw
  %i.jy = load i8, ptr %i.jx, align 1, !tbaa !17
  %.not.i151.7.i = icmp eq i8 %i.jy, 115
  br i1 %.not.i151.7.i, label %memieq.exit154.i, label %http_request_on_header.exit

bb.bn:                                            ; preds = %.thread
  %i.jz = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !57 ; 2 uses
  %i.kb = getelementptr i8, ptr %1, i64 116
  %.val110.i = load i8, ptr %i.kb, align 4, !tbaa !59
  %i.kc = and i8 %.val110.i, 64
  %.not.i155.i = icmp eq i8 %i.kc, 0
  %i.kd = getelementptr inbounds nuw i8, ptr %i.ka, i64 16
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !30 ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ka, i64 24
  %i.kg = load i64, ptr %i.kf, align 8, !tbaa !29 ; 2 uses
  br i1 %.not.i155.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.kh = tail call i32 @nghttp2_check_header_value(ptr noundef %i.ke, i64 noundef %i.kg) #8
  br label %check_header_value.exit.i

bb.bp:                                            ; preds = %bb.bn
  %i.ki = tail call i32 @nghttp2_check_header_value_rfc9113(ptr noundef %i.ke, i64 noundef %i.kg) #8
  br label %check_header_value.exit.i

check_header_value.exit.i:                        ; preds = %bb.bp, %bb.bo
  %.0.i156.i = phi i32 [ %i.kh, %bb.bo ], [ %i.ki, %bb.bp ]
  %.not.i = icmp eq i32 %.0.i156.i, 0
  br i1 %.not.i, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %check_header_value.exit.i
  %i.kj = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.kk = load i32, ptr %i.kj, align 8, !tbaa !16
  %i.kl = and i32 %i.kk, -196609
  %i.km = or disjoint i32 %i.kl, 131072
  store i32 %i.km, ptr %i.kj, align 8, !tbaa !16
  br label %http_request_on_header.exit

bb.br:                                            ; preds = %check_header_value.exit.i
  %.not84.i = icmp eq i32 %4, 0
  br i1 %.not84.i, label %bb.bs, label %memieq.exit154.i

bb.bs:                                            ; preds = %bb.br
  %i.kn = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ko = load i32, ptr %i.kn, align 8, !tbaa !58
  %8 = and i32 %i.ko, 1
  %.not85.i = icmp eq i32 %8, 0
  br i1 %.not85.i, label %memieq.exit154.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.kp = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 5 uses
  %i.kq = load i32, ptr %i.kp, align 8, !tbaa !16
  %i.kr = and i32 %i.kq, 131072
  %.not86.i = icmp eq i32 %i.kr, 0
  br i1 %.not86.i, label %bb.bu, label %memieq.exit154.i

bb.bu:                                            ; preds = %bb.bt
  %i.ks = getelementptr inbounds nuw i8, ptr %1, i64 121 ; 2 uses
  %i.kt = load i8, ptr %i.ks, align 1, !tbaa !60
  call void @nghttp2_extpri_from_uint8(ptr noundef nonnull %5, i8 noundef zeroext %i.kt) #8
  %i.ku = load ptr, ptr %i.jz, align 8, !tbaa !57 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 16
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !30
  %i.kx = getelementptr inbounds nuw i8, ptr %i.ku, i64 24
  %i.ky = load i64, ptr %i.kx, align 8, !tbaa !29
  %i.kz = call i32 @nghttp2_http_parse_priority(ptr noundef nonnull %5, ptr noundef %i.kw, i64 noundef %i.ky)
  %i.la = icmp eq i32 %i.kz, 0
  br i1 %i.la, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.lb = call zeroext i8 @nghttp2_extpri_to_uint8(ptr noundef nonnull %5) #8
  store i8 %i.lb, ptr %i.ks, align 1, !tbaa !60
  %i.lc = load i32, ptr %i.kp, align 8, !tbaa !16
  %i.ld = or i32 %i.lc, 65536
  store i32 %i.ld, ptr %i.kp, align 8, !tbaa !16
  br label %memieq.exit154.i

bb.bw:                                            ; preds = %bb.bu
  %i.le = load i32, ptr %i.kp, align 8, !tbaa !16
  %i.lf = and i32 %i.le, -196609
  %i.lg = or disjoint i32 %i.lf, 131072
  store i32 %i.lg, ptr %i.kp, align 8, !tbaa !16
  br label %memieq.exit154.i

bb.bx:                                            ; preds = %.thread
  %i.lh = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !30
  %i.lj = load i8, ptr %i.li, align 1, !tbaa !17
  %i.lk = icmp eq i8 %i.lj, 58
  br i1 %i.lk, label %http_request_on_header.exit, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ll = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !57 ; 2 uses
  %i.ln = getelementptr i8, ptr %1, i64 116
  %.val.i = load i8, ptr %i.ln, align 4, !tbaa !59
  %i.lo = and i8 %.val.i, 64
  %.not.i157.i = icmp eq i8 %i.lo, 0
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lm, i64 16
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !30 ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lm, i64 24
  %i.ls = load i64, ptr %i.lr, align 8, !tbaa !29 ; 2 uses
  br i1 %.not.i157.i, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.lt = tail call i32 @nghttp2_check_header_value(ptr noundef %i.lq, i64 noundef %i.ls) #8
  br label %check_header_value.exit159.i

bb.ca:                                            ; preds = %bb.by
  %i.lu = tail call i32 @nghttp2_check_header_value_rfc9113(ptr noundef %i.lq, i64 noundef %i.ls) #8
  br label %check_header_value.exit159.i

check_header_value.exit159.i:                     ; preds = %bb.ca, %bb.bz
  %.0.i158.i = phi i32 [ %i.lt, %bb.bz ], [ %i.lu, %bb.ca ]
  %.not109.i = icmp eq i32 %.0.i158.i, 0
  br i1 %.not109.i, label %http_request_on_header.exit, label %memieq.exit154.i

memieq.exit154.i:                                 ; preds = %check_header_value.exit159.i, %bb.bw, %bb.bv, %bb.bt, %bb.bs, %bb.br, %bb.bm, %parse_uint.exit.i, %check_pseudo_header.exit147.i, %bb.aw, %lws.exit.i, %memieq.exit.i, %bb.aq, %bb.ap, %bb.ao, %bb.an, %.preheader.3.i, %.preheader.2.i, %.preheader.1.i, %.preheader.preheader.i, %.preheader206.i, %bb.am, %.thread181.i, %bb.ag, %bb.af, %bb.ae, %bb.z, %bb.y, %bb.x, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %check_pseudo_header.exit.i
  br label %http_request_on_header.exit

http_request_on_header.exit:                      ; preds = %.preheader.i.i, %bb.bc, %.lr.ph.i139.i, %bb.av, %bb.ak, %.lr.ph.i.i, %.thread, %.thread, %.thread, %.thread, %.thread, %bb.l, %bb.n, %bb.o, %bb.p, %bb.q, %bb.w, %bb.aa, %bb.ab, %bb.ac, %bb.ah, %bb.ai, %check_scheme.exit.i, %check_scheme.exit.thread172.i, %bb.ar, %bb.as, %bb.at, %lws.exit.i, %bb.aw, %bb.ax, %bb.az, %bb.ba, %bb.bb, %bb.be, %bb.bf, %bb.bg, %bb.bh, %bb.bi, %bb.bj, %bb.bk, %bb.bl, %bb.bm, %bb.bq, %bb.bx, %check_header_value.exit159.i, %memieq.exit154.i
  %.0.i = phi i32 [ -531, %bb.be ], [ 0, %memieq.exit154.i ], [ -531, %bb.bx ], [ -105, %bb.bq ], [ -531, %bb.o ], [ -105, %check_header_value.exit159.i ], [ -531, %bb.w ], [ -531, %bb.aa ], [ -531, %bb.ar ], [ -531, %bb.as ], [ -531, %bb.ab ], [ -531, %bb.at ], [ -531, %bb.aw ], [ -531, %bb.ak ], [ -531, %bb.ba ], [ -531, %.lr.ph.i.i ], [ -531, %.thread ], [ -531, %check_scheme.exit.i ], [ -105, %.lr.ph.i139.i ], [ -531, %bb.p ], [ -531, %bb.bb ], [ -531, %check_scheme.exit.thread172.i ], [ -531, %lws.exit.i ], [ -531, %.thread ], [ -531, %.thread ], [ -531, %.thread ], [ -531, %.thread ], [ -531, %bb.bf ], [ -531, %bb.l ], [ -531, %bb.n ], [ -531, %bb.az ], [ -531, %bb.q ], [ -531, %bb.ac ], [ -531, %bb.ah ], [ -531, %bb.ai ], [ -531, %bb.ax ], [ -531, %bb.bm ], [ -531, %bb.bl ], [ -531, %bb.bk ], [ -531, %bb.bj ], [ -531, %bb.bi ], [ -531, %bb.bh ], [ -531, %bb.bg ], [ -531, %bb.av ], [ -531, %bb.bc ], [ -531, %.preheader.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  br label %http_response_on_header.exit

bb.cb:                                            ; preds = %bb.j
  %i.lv = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.lw = load i32, ptr %i.lv, align 8, !tbaa !31
  switch i32 %i.lw, label %bb.db [
    i32 7, label %bb.cc
    i32 27, label %bb.cj
    i32 62, label %http_response_on_header.exit
    i32 63, label %http_response_on_header.exit
    i32 64, label %http_response_on_header.exit
    i32 56, label %http_response_on_header.exit
    i32 65, label %http_response_on_header.exit
    i32 61, label %bb.cs
  ]

bb.cc:                                            ; preds = %bb.cb
  %i.lx = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.ly = load i32, ptr %i.lx, align 8, !tbaa !16 ; 2 uses
  %i.lz = and i32 %i.ly, 32
  %.not.i.i25 = icmp eq i32 %i.lz, 0
  br i1 %.not.i.i25, label %bb.cd, label %http_response_on_header.exit

bb.cd:                                            ; preds = %bb.cc
  %i.ma = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !57 ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 24
  %i.md = load i64, ptr %i.mc, align 8, !tbaa !29 ; 2 uses
  %i.me = icmp eq i64 %i.md, 0
  br i1 %i.me, label %http_response_on_header.exit, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.mf = or disjoint i32 %i.ly, 32
  store i32 %i.mf, ptr %i.lx, align 8, !tbaa !16
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mb, i64 16
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !30 ; 3 uses
  %.not.i40.i = icmp eq i64 %i.md, 3
  br i1 %.not.i40.i, label %bb.cf, label %parse_status_code.exit.i

bb.cf:                                            ; preds = %bb.ce
  %i.mi = load i8, ptr %i.mh, align 1, !tbaa !17  ; 2 uses
  %i.mj = zext nneg i8 %i.mi to i32
  %i.mk = add i8 %i.mi, -58
  %or.cond.i.i26 = icmp ult i8 %i.mk, -9
  br i1 %or.cond.i.i26, label %parse_status_code.exit.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mh, i64 1
  %i.mm = load i8, ptr %i.ml, align 1, !tbaa !17  ; 2 uses
  %i.mn = zext nneg i8 %i.mm to i32
  %i.mo = add i8 %i.mm, -58
  %or.cond13.i.i = icmp ult i8 %i.mo, -10
  br i1 %or.cond13.i.i, label %parse_status_code.exit.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mh, i64 2
  %i.mq = load i8, ptr %i.mp, align 1, !tbaa !17  ; 2 uses
  %i.mr = add i8 %i.mq, -58
  %or.cond14.i.i = icmp ult i8 %i.mr, -10
  br i1 %or.cond14.i.i, label %parse_status_code.exit.i, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.ms = zext nneg i8 %i.mq to i32
  %i.mt = mul nuw nsw i32 %i.mj, 100
  %i.mu = mul nuw nsw i32 %i.mn, 10
  %i.mv = add nsw i32 %i.mt, -5328
  %i.mw = add nsw i32 %i.mv, %i.mu
  %i.mx = add nuw nsw i32 %i.mw, %i.ms
  br label %parse_status_code.exit.i

parse_status_code.exit.i:                         ; preds = %bb.ci, %bb.ch, %bb.cg, %bb.cf, %bb.ce
  %.0.i41.i = phi i32 [ %i.mx, %bb.ci ], [ -1, %bb.ch ], [ -1, %bb.cg ], [ -1, %bb.cf ], [ -1, %bb.ce ] ; 3 uses
  %i.my = getelementptr inbounds nuw i8, ptr %1, i64 108
  store i32 %.0.i41.i, ptr %i.my, align 4, !tbaa !20
  %switch.selectcmp.case1.i = icmp eq i32 %.0.i41.i, -1
  %switch.selectcmp.case2.i = icmp eq i32 %.0.i41.i, 101
  %switch.selectcmp.i = or i1 %switch.selectcmp.case1.i, %switch.selectcmp.case2.i
  %i.mz = select i1 %switch.selectcmp.i, i32 -531, i32 0
  br label %http_response_on_header.exit

bb.cj:                                            ; preds = %bb.cb
  %i.na = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.nb = load i32, ptr %i.na, align 4, !tbaa !20 ; 3 uses
  %i.nc = icmp eq i32 %i.nb, 204
  br i1 %i.nc, label %bb.ck, label %bb.cn

bb.ck:                                            ; preds = %bb.cj
  %i.nd = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ne = load i64, ptr %i.nd, align 8, !tbaa !19
  %.not36.i = icmp eq i64 %i.ne, -1
  br i1 %.not36.i, label %bb.cl, label %http_response_on_header.exit

bb.cl:                                            ; preds = %bb.ck
  %i.nf = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !57 ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 24
  %i.ni = load i64, ptr %i.nh, align 8, !tbaa !29
  %i.nj = icmp eq i64 %i.ni, 1
  br i1 %i.nj, label %bb.cm, label %http_response_on_header.exit

bb.cm:                                            ; preds = %bb.cl
  %i.nk = getelementptr inbounds nuw i8, ptr %i.ng, i64 16
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !30
  %i.nm = load i8, ptr %i.nl, align 1, !tbaa !17
  %i.nn = zext i8 %i.nm to i64
  %i.no = getelementptr inbounds nuw i8, ptr @nghttp2_downcase_tbl, i64 %i.nn
  %i.np = load i8, ptr %i.no, align 1, !tbaa !17
  %.not.i42.i = icmp eq i8 %i.np, 48
  br i1 %.not.i42.i, label %memieq.exit.i24, label %http_response_on_header.exit

memieq.exit.i24:                                  ; preds = %bb.cm
  store i64 0, ptr %i.nd, align 8, !tbaa !19
  br label %http_response_on_header.exit

bb.cn:                                            ; preds = %bb.cj
  %.off.i = add i32 %i.nb, -100
  %i.nq = icmp ult i32 %.off.i, 100
  br i1 %i.nq, label %http_response_on_header.exit, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %.off33.i = add i32 %i.nb, -200
  %i.nr = icmp ult i32 %.off33.i, 100
  br i1 %i.nr, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
end_hunk_1
begin_hunk_2_@nghttp2_http_on_header:bb.a

bb.cy:                                            ; preds = %bb.cx
  %i.pk = getelementptr inbounds nuw i8, ptr %i.ol, i64 5
  %i.pl = load i8, ptr %i.pk, align 1, !tbaa !17
  %i.pm = zext i8 %i.pl to i64
  %i.pn = getelementptr inbounds nuw i8, ptr @nghttp2_downcase_tbl, i64 %i.pm
  %i.po = load i8, ptr %i.pn, align 1, !tbaa !17
  %.not.i44.5.i = icmp eq i8 %i.po, 101
  br i1 %.not.i44.5.i, label %bb.cz, label %http_response_on_header.exit

bb.cz:                                            ; preds = %bb.cy
  %i.pp = getelementptr inbounds nuw i8, ptr %i.ol, i64 6
  %i.pq = load i8, ptr %i.pp, align 1, !tbaa !17
  %i.pr = zext i8 %i.pq to i64
  %i.ps = getelementptr inbounds nuw i8, ptr @nghttp2_downcase_tbl, i64 %i.pr
  %i.pt = load i8, ptr %i.ps, align 1, !tbaa !17
  %.not.i44.6.i = icmp eq i8 %i.pt, 114
  br i1 %.not.i44.6.i, label %bb.da, label %http_response_on_header.exit

bb.da:                                            ; preds = %bb.cz
  %i.pu = getelementptr inbounds nuw i8, ptr %i.ol, i64 7
  %i.pv = load i8, ptr %i.pu, align 1, !tbaa !17
  %i.pw = zext i8 %i.pv to i64
  %i.px = getelementptr inbounds nuw i8, ptr @nghttp2_downcase_tbl, i64 %i.pw
  %i.py = load i8, ptr %i.px, align 1, !tbaa !17
  %.not.i44.7.i = icmp eq i8 %i.py, 115
  br i1 %.not.i44.7.i, label %memieq.exit47.i, label %http_response_on_header.exit

bb.db:                                            ; preds = %bb.cb
  %i.pz = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.qa = load ptr, ptr %i.pz, align 8, !tbaa !30
  %i.qb = load i8, ptr %i.qa, align 1, !tbaa !17
  %i.qc = icmp eq i8 %i.qb, 58
  br i1 %i.qc, label %http_response_on_header.exit, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.qd = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.qe = load ptr, ptr %i.qd, align 8, !tbaa !57 ; 2 uses
  %i.qf = getelementptr i8, ptr %1, i64 116
  %.val.i27 = load i8, ptr %i.qf, align 4, !tbaa !59
  %i.qg = and i8 %.val.i27, 64
  %.not.i48.i = icmp eq i8 %i.qg, 0
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qe, i64 16
  %i.qi = load ptr, ptr %i.qh, align 8, !tbaa !30 ; 2 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qe, i64 24
  %i.qk = load i64, ptr %i.qj, align 8, !tbaa !29 ; 2 uses
  br i1 %.not.i48.i, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.ql = tail call i32 @nghttp2_check_header_value(ptr noundef %i.qi, i64 noundef %i.qk) #8
  br label %check_header_value.exit.i28

bb.de:                                            ; preds = %bb.dc
  %i.qm = tail call i32 @nghttp2_check_header_value_rfc9113(ptr noundef %i.qi, i64 noundef %i.qk) #8
  br label %check_header_value.exit.i28

check_header_value.exit.i28:                      ; preds = %bb.de, %bb.dd
  %.0.i49.i = phi i32 [ %i.ql, %bb.dd ], [ %i.qm, %bb.de ]
  %.not39.i = icmp eq i32 %.0.i49.i, 0
  br i1 %.not39.i, label %http_response_on_header.exit, label %memieq.exit47.i

memieq.exit47.i:                                  ; preds = %check_header_value.exit.i28, %bb.da, %bb.cr
  br label %http_response_on_header.exit

http_response_on_header.exit:                     ; preds = %memieq.exit47.i, %check_header_value.exit.i28, %bb.db, %bb.da, %bb.cz, %bb.cy, %bb.cx, %bb.cw, %bb.cv, %bb.cu, %bb.ct, %bb.cs, %bb.cr, %bb.cq, %bb.cp, %bb.cn, %memieq.exit.i24, %bb.cm, %bb.cl, %bb.ck, %parse_status_code.exit.i, %bb.cd, %bb.cc, %bb.cb, %bb.cb, %bb.cb, %bb.cb, %bb.cb, %bb.f, %bb.d, %bb.e, %http_request_on_header.exit, %bb.g, %bb.b
  %.0 = phi i32 [ -105, %bb.b ], [ -531, %bb.g ], [ %.0.i, %http_request_on_header.exit ], [ -105, %bb.f ], [ -531, %bb.d ], [ -531, %bb.e ], [ -531, %bb.cs ], [ 0, %memieq.exit47.i ], [ -531, %bb.db ], [ %i.mz, %parse_status_code.exit.i ], [ -531, %bb.cb ], [ -531, %bb.cm ], [ -106, %memieq.exit.i24 ], [ -531, %bb.ck ], [ -531, %bb.cl ], [ -531, %bb.cn ], [ -106, %bb.cp ], [ -531, %bb.cq ], [ -531, %bb.cr ], [ -105, %check_header_value.exit.i28 ], [ -531, %bb.cc ], [ -531, %bb.cb ], [ -531, %bb.cb ], [ -531, %bb.cb ], [ -531, %bb.cb ], [ -531, %bb.cd ], [ -531, %bb.da ], [ -531, %bb.cz ], [ -531, %bb.cy ], [ -531, %bb.cx ], [ -531, %bb.cw ], [ -531, %bb.cv ], [ -531, %bb.cu ], [ -531, %bb.ct ]
  ret i32 %.0
}

declare i32 @nghttp2_check_nonempty_header_name(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden range(i32 -1, 1) i32 @nghttp2_http_on_request_headers(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !16   ; 9 uses
  %i.c = and i32 %i.b, 32768
  %i.d = and i32 %i.b, 32896
  %or.cond.not = icmp eq i32 %i.d, 128
  br i1 %or.cond.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.b, 11
  %or.cond20.not = icmp eq i32 %i.e, 1
  br i1 %or.cond20.not, label %bb.c, label %check_path.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -1, ptr %i.f, align 8, !tbaa !19
  br label %check_path.exit.thread26

bb.d:                                             ; preds = %bb.a
  %i.g = and i32 %i.b, 14
  %.not16 = icmp ne i32 %i.g, 14
  %i.h = and i32 %i.b, 17
  %i.i = icmp eq i32 %i.h, 0
  %or.cond22.a = or i1 %.not16, %i.i
  br i1 %or.cond22.a, label %check_path.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not17 = icmp eq i32 %i.c, 0
  %i.j = and i32 %i.b, 129
  %or.cond24.not = icmp eq i32 %i.j, 129
  %or.cond.a = or i1 %.not17, %or.cond24.not
  br i1 %or.cond.a, label %bb.f, label %check_path.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.k = and i32 %i.b, 10240
  %or.cond.i = icmp ne i32 %i.k, 8192
  %i.l = and i32 %i.b, 4608
  %or.cond28.not = icmp eq i32 %i.l, 4608
  %or.cond29 = or i1 %or.cond.i, %or.cond28.not
  br i1 %or.cond29, label %check_path.exit.thread26, label %check_path.exit.thread

check_path.exit.thread26:                         ; preds = %bb.f, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.n = load i8, ptr %i.m, align 4, !tbaa !17
  %i.o = icmp eq i8 %i.n, 5
  br i1 %i.o, label %bb.g, label %check_path.exit.thread

bb.g:                                             ; preds = %check_path.exit.thread26
  %i.p = and i32 %i.b, 1920
  store i32 %i.p, ptr %i.a, align 8, !tbaa !16
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -1, ptr %i.q, align 8, !tbaa !19
  br label %check_path.exit.thread

check_path.exit.thread:                           ; preds = %bb.f, %bb.e, %check_path.exit.thread26, %bb.g, %bb.d, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ -1, %bb.d ], [ -1, %bb.f ], [ -1, %bb.e ], [ 0, %bb.g ], [ 0, %check_path.exit.thread26 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden range(i32 -1, 1) i32 @nghttp2_http_on_response_headers(ptr nofree noundef captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !16
  %.fr16 = freeze i32 %i.b                        ; 5 uses
  %i.c = and i32 %.fr16, 32
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !20   ; 2 uses
  %.off = add i32 %i.f, -100
  %i.g = icmp ult i32 %.off, 100
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = and i32 %.fr16, 1920
  %i.i = or disjoint i32 %i.h, 16384
  store i32 %i.i, ptr %i.a, align 8, !tbaa !16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -1, ptr %i.j, align 8, !tbaa !19
  store i32 -1, ptr %i.e, align 4, !tbaa !20
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.k = and i32 %.fr16, -16385
  store i32 %i.k, ptr %i.a, align 8, !tbaa !16
  %i.l = and i32 %.fr16, 256
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %switch.early.test, label %expect_response_body.exit.thread

switch.early.test:                                ; preds = %bb.d
  switch i32 %i.f, label %bb.e [
    i32 304, label %expect_response_body.exit.thread
    i32 204, label %expect_response_body.exit.thread
  ]

expect_response_body.exit.thread:                 ; preds = %switch.early.test, %switch.early.test, %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.m, align 8, !tbaa !19
  br label %bb.g

bb.e:                                             ; preds = %switch.early.test
  %i.n = and i32 %.fr16, 1152
  %.not12 = icmp eq i32 %i.n, 0
  br i1 %.not12, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -1, ptr %i.o, align 8, !tbaa !19
  br label %bb.g

bb.g:                                             ; preds = %expect_response_body.exit.thread, %bb.f, %bb.e, %bb.a, %bb.c
  %.0 = phi i32 [ -1, %bb.a ], [ 0, %bb.c ], [ 0, %bb.e ], [ 0, %bb.f ], [ 0, %expect_response_body.exit.thread ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden range(i32 -1, 1) i32 @nghttp2_http_on_trailer_headers(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.b = load i8, ptr %i.a, align 1, !tbaa !17
  %i.c = and i8 %i.b, 1
  %sext = add nsw i8 %i.c, -1
  %. = sext i8 %sext to i32
  ret i32 %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden range(i32 -1, 1) i32 @nghttp2_http_on_remote_end_stream(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load i32, ptr %i.a, align 8, !tbaa !16
  %i.c = and i32 %i.b, 16384
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !19   ; 2 uses
  %.not5 = icmp eq i64 %i.e, -1
  br i1 %.not5, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !21
  %.not6 = icmp eq i64 %i.e, %i.g
  br i1 %.not6, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.a, %bb.d
  %.0 = phi i32 [ 0, %bb.d ], [ -1, %bb.a ], [ -1, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden range(i32 -1, 1) i32 @nghttp2_http_on_data_chunk(ptr nofree noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !21
  %i.c = add nsw i64 %i.b, %1                     ; 2 uses
  store i64 %i.c, ptr %i.a, align 8, !tbaa !21
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.e = load i32, ptr %i.d, align 8, !tbaa !16
  %i.f = and i32 %i.e, 16384
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !19   ; 2 uses
  %.not7 = icmp ne i64 %i.h, -1
  %i.i = icmp sgt i64 %i.c, %i.h
  %or.cond = select i1 %.not7, i1 %i.i, i1 false
  %spec.select = sext i1 %or.cond to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ -1, %bb.a ], [ %spec.select, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @nghttp2_http_record_request_method(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i8, ptr %i.a, align 4, !tbaa !17
  switch i8 %i.b, label %.critedge [
    i8 1, label %bb.c
    i8 5, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink33 = phi i64 [ 24, %bb.b ], [ 40, %bb.a ]
  %.sink = phi i64 [ 32, %bb.b ], [ 48, %bb.a ]
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %.sink33
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %.sink
  %.023 = load i64, ptr %i.d, align 8, !tbaa !17  ; 2 uses
  %.024 = load ptr, ptr %i.c, align 8, !tbaa !17
  %.not = icmp eq i64 %.023, 0
  br i1 %.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.i
  %.02230 = phi i64 [ %i.ap, %bb.i ], [ 0, %bb.c ] ; 2 uses
  %i.e = getelementptr inbounds nuw [40 x i8], ptr %.024, i64 %.02230 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !63
  %i.h = icmp eq i64 %i.g, 7
  br i1 %i.h, label %bb.d, label %bb.i

bb.d:                                             ; preds = %.lr.ph
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !64   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 6
  %i.k = load i8, ptr %i.j, align 1, !tbaa !17
  %i.l = icmp eq i8 %i.k, 100
  br i1 %i.l, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.m = load i32, ptr %i.i, align 1
  %i.n = xor i32 1952804154, %i.m
  %i.o = getelementptr i8, ptr %i.i, i64 4
  %i.p = load i16, ptr %i.o, align 1
  %i.q = zext i16 %i.p to i32
  %i.r = xor i32 28520, %i.q
  %i.s = or i32 %i.n, %i.r
  %i.t = icmp ne i32 %i.s, 0
  %i.u = zext i1 %i.t to i32
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.x = load i64, ptr %i.w, align 8, !tbaa !65
  switch i64 %i.x, label %.critedge [
    i64 7, label %bb.g
    i64 4, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !66   ; 2 uses
  %i.aa = load i32, ptr %i.z, align 1
  %i.ab = xor i32 1313754947, %i.aa
  %i.ac = getelementptr i8, ptr %i.z, i64 3
  %i.ad = load i32, ptr %i.ac, align 1
  %i.ae = xor i32 1413694798, %i.ad
  %i.af = or i32 %i.ab, %i.ae
  %i.ag = icmp ne i32 %i.af, 0
  %i.ah = zext i1 %i.ag to i32
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %.critedge.sink.split, label %.critedge

bb.h:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !66
  %i.al = load i32, ptr %i.ak, align 1
  %i.am = icmp ne i32 1145128264, %i.al
  %i.an = zext i1 %i.am to i32
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %.critedge.sink.split, label %.critedge

bb.i:                                             ; preds = %bb.e, %bb.d, %.lr.ph
  %i.ap = add nuw i64 %.02230, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ap, %.023
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !61

.critedge.sink.split:                             ; preds = %bb.h, %bb.g
  %.sink37 = phi i32 [ 128, %bb.g ], [ 256, %bb.h ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !16
  %i.as = or i32 %i.ar, %.sink37
  store i32 %i.as, ptr %i.aq, align 8, !tbaa !16
  br label %.critedge

.critedge:                                        ; preds = %bb.i, %.critedge.sink.split, %bb.c, %bb.f, %bb.g, %bb.h, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: nounwind uwtable
define hidden range(i32 -501, 1) i32 @nghttp2_http_parse_priority(ptr nofree noundef captures(none) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.sfparse_parser, align 8     ; 4 uses
  %4 = alloca %struct.sfparse_vec, align 8        ; 5 uses
  %5 = alloca %struct.sfparse_value, align 8      ; 6 uses
  %.sroa.0.0.copyload = load i32, ptr %0, align 4, !tbaa !67
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  call void @sfparse_parser_init(ptr noundef nonnull %3, ptr noundef %1, i64 noundef %2) #8
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  br label %.outer.outer

.outer.outer:                                     ; preds = %bb.f, %bb.a
  %.sroa.5.0.ph.ph = phi i32 [ %i.h, %bb.f ], [ %.sroa.5.0.copyload, %bb.a ]
  %.sroa.0.0.ph.ph = phi i32 [ %.sroa.0.0.ph.ph41, %bb.f ], [ %.sroa.0.0.copyload, %bb.a ]
  br label %.outer.outer40

.outer.outer40:                                   ; preds = %.outer.outer, %bb.h
  %.sroa.0.0.ph.ph41 = phi i32 [ %.sroa.0.0.ph.ph, %.outer.outer ], [ %i.m, %bb.h ] ; 2 uses
  br label %.outer

.outer:                                           ; preds = %.outer.outer40, %bb.d
  br label %bb.b

bb.b:                                             ; preds = %.outer, %bb.c
  %i.c = call i32 @sfparse_parser_dict(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #8
  switch i32 %i.c, label %.loopexit [
    i32 0, label %bb.c
    i32 -2, label %bb.i
  ]

end_hunk_2
