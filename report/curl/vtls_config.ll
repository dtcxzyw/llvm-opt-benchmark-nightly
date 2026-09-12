Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/curl/original/vtls_config?download=true
inline.NumInlined: 6
inline.NumDeleted: 2
begin_hunk_0_@match_ssl_primary_config:bb.a
bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.l = load i8, ptr %i.k, align 4, !tbaa !35
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 164
  %i.n = load i8, ptr %i.m, align 4, !tbaa !35
  %i.o = icmp eq i8 %i.l, %i.n
  br i1 %i.o, label %bb.d, label %bb.y

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 166
  %i.q = load i8, ptr %i.p, align 2
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 166
  %i.s = load i8, ptr %i.r, align 2
  %i.t = xor i8 %i.s, %i.q
  %i.u = and i8 %i.t, 7
  %or.cond3 = icmp eq i8 %i.u, 0
  br i1 %or.cond3, label %bb.e, label %bb.y

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !20
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !20
  %i.z = tail call fastcc zeroext i1 @blobcmp(ptr noundef %i.w, ptr noundef %i.y)
  br i1 %i.z, label %bb.f, label %bb.y

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !21
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !21
  %i.ae = tail call fastcc zeroext i1 @blobcmp(ptr noundef %i.ab, ptr noundef %i.ad)
  br i1 %i.ae, label %bb.g, label %bb.y

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !22
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !22
  %i.aj = tail call fastcc zeroext i1 @blobcmp(ptr noundef %i.ag, ptr noundef %i.ai)
  br i1 %i.aj, label %bb.h, label %bb.y

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !23
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !23
  %i.ao = tail call fastcc zeroext i1 @blobcmp(ptr noundef %i.al, ptr noundef %i.an)
  br i1 %i.ao, label %bb.i, label %bb.y

bb.i:                                             ; preds = %bb.h
  %i.ap = load ptr, ptr %0, align 8, !tbaa !13
  %i.aq = load ptr, ptr %1, align 8, !tbaa !13
  %i.ar = tail call zeroext i1 @Curl_safecmp(ptr noundef %i.ap, ptr noundef %i.aq) #7
  br i1 %i.ar, label %bb.j, label %bb.y

bb.j:                                             ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !14
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !14
  %i.aw = tail call zeroext i1 @Curl_safecmp(ptr noundef %i.at, ptr noundef %i.av) #7
  br i1 %i.aw, label %bb.k, label %bb.y

bb.k:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !15
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !15
  %i.bb = tail call zeroext i1 @Curl_safecmp(ptr noundef %i.ay, ptr noundef %i.ba) #7
  br i1 %i.bb, label %bb.l, label %bb.y

bb.l:                                             ; preds = %bb.k
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !16
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !16
  %i.bg = tail call zeroext i1 @Curl_safecmp(ptr noundef %i.bd, ptr noundef %i.bf) #7
  br i1 %i.bg, label %bb.m, label %bb.y

bb.m:                                             ; preds = %bb.l
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !31
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !31
  %i.bl = tail call i32 @Curl_timestrcmp(ptr noundef %i.bi, ptr noundef %i.bk) #7
  %.not = icmp eq i32 %i.bl, 0
  br i1 %.not, label %bb.n, label %bb.y

bb.n:                                             ; preds = %bb.m
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !32
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !32
  %i.bq = tail call i32 @Curl_timestrcmp(ptr noundef %i.bn, ptr noundef %i.bp) #7
  %.not53 = icmp eq i32 %i.bq, 0
  br i1 %.not53, label %bb.o, label %bb.y

bb.o:                                             ; preds = %bb.n
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !17
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !17
  %i.bv = tail call i32 @curl_strequal(ptr noundef %i.bs, ptr noundef %i.bu) #7
  %.not54 = icmp eq i32 %i.bv, 0
  br i1 %.not54, label %bb.y, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !18
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !18
  %i.ca = tail call i32 @curl_strequal(ptr noundef %i.bx, ptr noundef %i.bz) #7
  %.not55 = icmp eq i32 %i.ca, 0
  br i1 %.not55, label %bb.y, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !24
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !24
  %i.cf = tail call i32 @curl_strequal(ptr noundef %i.cc, ptr noundef %i.ce) #7
  %.not56 = icmp eq i32 %i.cf, 0
  br i1 %.not56, label %bb.y, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !25
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !25
  %i.ck = tail call i32 @curl_strequal(ptr noundef %i.ch, ptr noundef %i.cj) #7
  %.not57 = icmp eq i32 %i.ck, 0
  br i1 %.not57, label %bb.y, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !26
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !26
  %i.cp = tail call zeroext i1 @Curl_safecmp(ptr noundef %i.cm, ptr noundef %i.co) #7
  br i1 %i.cp, label %bb.t, label %bb.y

bb.t:                                             ; preds = %bb.s
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !19
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !19
  %i.cu = tail call zeroext i1 @Curl_safecmp(ptr noundef %i.cr, ptr noundef %i.ct) #7
  br i1 %i.cu, label %bb.u, label %bb.y

bb.u:                                             ; preds = %bb.t
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !27
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !27
  %i.cz = tail call i32 @curl_strequal(ptr noundef %i.cw, ptr noundef %i.cy) #7
  %.not58 = icmp eq i32 %i.cz, 0
  br i1 %.not58, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !28
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !28
  %i.de = tail call zeroext i1 @Curl_safecmp(ptr noundef %i.db, ptr noundef %i.dd) #7
  br i1 %i.de, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !29
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !29
  %i.dj = tail call i32 @curl_strequal(ptr noundef %i.dg, ptr noundef %i.di) #7
  %.not59 = icmp eq i32 %i.dj, 0
  br i1 %.not59, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !30
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !30
  %i.do = tail call i32 @Curl_timestrcmp(ptr noundef %i.dl, ptr noundef %i.dn) #7
  %.not60 = icmp eq i32 %i.do, 0
  br i1 %.not60, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %.0 = phi i1 [ false, %bb.y ], [ true, %bb.x ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define hidden i32 @Curl_ssl_easy_config_complete(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2864 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !99
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 964
  %i.e = load i8, ptr %i.d, align 4, !tbaa !100   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 992 ; 6 uses
  %i.g = load i16, ptr %i.f, align 8
  %2 = shl i8 %i.e, 2                             ; 6 uses
  %3 = and i8 %2, 64
  %4 = zext nneg i8 %3 to i16
  %i.h = and i16 %i.g, -127
  %i.i = or disjoint i16 %i.h, %4
  %5 = and i8 %2, 4
  %6 = zext nneg i8 %5 to i16
  %7 = or disjoint i16 %i.i, %6
  %i.j = and i8 %2, 16
  %i.k = zext nneg i8 %i.j to i16
  %i.l = or disjoint i16 %7, %i.k
  %8 = and i8 %2, 32
  %9 = zext nneg i8 %8 to i16
  %i.m = lshr i8 %i.e, 5
  %10 = and i8 %i.m, 2
  %11 = zext nneg i8 %10 to i16
  %i.n = and i8 %2, 8
  %.masked.masked.i = zext nneg i8 %i.n to i16
  %.masked16.i = or disjoint i16 %i.l, %.masked.masked.i
  %i.o = or i16 %.masked16.i, %9
  %i.p = or i16 %i.o, %11
  store i16 %i.p, ptr %i.f, align 8
  %i.q = tail call zeroext i1 @Curl_peer_equal(ptr noundef %1, ptr noundef %i.c) #7
  %12 = and i8 %2, -128
  %13 = zext i8 %12 to i16
  %i.r = select i1 %i.q, i16 %13, i16 0
  %i.s = load i16, ptr %i.f, align 8
  %i.t = and i16 %i.s, -129
  %i.u = or disjoint i16 %i.t, %i.r
  store i16 %i.u, ptr %i.f, align 8
  %i.v = tail call i32 @Curl_ssl_backend() #7
  %.not = icmp eq i32 %i.v, 8
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.w = load i16, ptr %i.f, align 8              ; 3 uses
  %i.x = and i16 %i.w, 512
  %.not119 = icmp eq i16 %i.x, 0
  br i1 %.not119, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1344 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !101
  %.not120 = icmp eq ptr %i.z, null
  br i1 %.not120, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aa = tail call i32 @Curl_setstropt(ptr noundef nonnull %i.y, ptr noundef nonnull @.str) #7 ; 2 uses
  %.not121 = icmp eq i32 %i.aa, 0
  br i1 %.not121, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %bb.d
  %.pre = load i16, ptr %i.f, align 8
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.c, %bb.b
  %i.ab = phi i16 [ %.pre, %._crit_edge ], [ %i.w, %bb.c ], [ %i.w, %bb.b ]
  %i.ac = and i16 %i.ab, 256
  %.not122 = icmp eq i16 %i.ac, 0
  br i1 %.not122, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1352 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !101
  %.not123 = icmp eq ptr %i.ae, null
  br i1 %.not123, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.af = tail call i32 @Curl_setstropt(ptr noundef nonnull %i.ad, ptr noundef nonnull @.str.1) #7 ; 2 uses
  %.not124 = icmp eq i32 %i.af, 0
  br i1 %.not124, label %bb.h, label %bb.r

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g, %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1384
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !101
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 864
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !102
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %i.ak = load <2 x ptr>, ptr %i.aj, align 8, !tbaa !101
  store <2 x ptr> %i.ak, ptr %i.a, align 8, !tbaa !101
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1368
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.an = load <2 x ptr>, ptr %i.al, align 8, !tbaa !101
  store <2 x ptr> %i.an, ptr %i.am, align 8, !tbaa !101
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1880
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !101
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 848
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !103
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1840
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !101
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 952
  store ptr %i.at, ptr %i.au, align 8, !tbaa !104
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 1392
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !101
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 816
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !105
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 1920
  %i.az = load <2 x ptr>, ptr %i.ay, align 8, !tbaa !95
  %i.ba = shufflevector <2 x ptr> %i.az, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.ba, ptr %i.ar, align 8, !tbaa !95
  %i.bb = load ptr, ptr %i.b, align 8, !tbaa !99
  %i.bc = tail call zeroext i1 @Curl_peer_equal(ptr noundef %i.bb, ptr noundef %1) #7
  br i1 %i.bc, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 1304
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1904
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1360
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !101
  %i.bh = load ptr, ptr %i.be, align 8, !tbaa !95
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 1312
  %i.bj = load <2 x ptr>, ptr %i.bi, align 8, !tbaa !101
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 1328
  %i.bl = load <2 x ptr>, ptr %i.bk, align 8, !tbaa !101
  %i.bm = load ptr, ptr %i.bd, align 8, !tbaa !101
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 1912
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !95
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 1752
  %i.bq = load <2 x ptr>, ptr %i.bp, align 8, !tbaa !101
  %i.br = shufflevector <2 x ptr> %i.bl, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.sink142 = phi ptr [ %i.bg, %bb.i ], [ null, %bb.h ]
  %.sink141 = phi ptr [ %i.bh, %bb.i ], [ null, %bb.h ]
  %.sink136 = phi ptr [ %i.bm, %bb.i ], [ null, %bb.h ]
  %.sink135 = phi ptr [ %i.bo, %bb.i ], [ null, %bb.h ]
  %i.bs = phi <2 x ptr> [ %i.bj, %bb.i ], [ splat (ptr null), %bb.h ]
  %i.bt = phi <2 x ptr> [ %i.br, %bb.i ], [ splat (ptr null), %bb.h ]
  %i.bu = phi <2 x ptr> [ %i.bq, %bb.i ], [ splat (ptr null), %bb.h ]
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 856
  store ptr %.sink142, ptr %i.bv, align 8, !tbaa !106
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 904
  store ptr %.sink141, ptr %i.bw, align 8, !tbaa !107
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 872
  store <2 x ptr> %i.bs, ptr %i.bx, align 8, !tbaa !101
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 888
  store <2 x ptr> %i.bt, ptr %i.by, align 8, !tbaa !101
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 824
  store ptr %.sink136, ptr %i.bz, align 8, !tbaa !108
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 928
  store ptr %.sink135, ptr %i.ca, align 8, !tbaa !109
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 936
  store <2 x ptr> %i.bu, ptr %i.cb, align 8, !tbaa !101
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 1164
  %i.ce = load i8, ptr %i.cd, align 4, !tbaa !100 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 1192 ; 6 uses
  %i.cg = load i16, ptr %i.cf, align 8
  %14 = shl i8 %i.ce, 2                           ; 6 uses
  %15 = and i8 %14, 64
  %16 = zext nneg i8 %15 to i16
  %i.ch = and i16 %i.cg, -127
  %i.ci = or disjoint i16 %i.ch, %16
  %17 = and i8 %14, 4
  %18 = zext nneg i8 %17 to i16
  %19 = or disjoint i16 %i.ci, %18
  %i.cj = and i8 %14, 16
  %i.ck = zext nneg i8 %i.cj to i16
  %i.cl = or disjoint i16 %19, %i.ck
  %20 = and i8 %14, 32
  %21 = zext nneg i8 %20 to i16
  %i.cm = lshr i8 %i.ce, 5
  %22 = and i8 %i.cm, 2
  %23 = zext nneg i8 %22 to i16
  %i.cn = and i8 %14, 8
  %.masked.masked.i132 = zext nneg i8 %i.cn to i16
  %.masked16.i133 = or disjoint i16 %i.cl, %.masked.masked.i132
  %i.co = or i16 %.masked16.i133, %21
  %i.cp = or i16 %i.co, %23
  store i16 %i.cp, ptr %i.cf, align 8
  %i.cq = tail call zeroext i1 @Curl_peer_equal(ptr noundef null, ptr noundef null) #7
  %24 = and i8 %14, -128
  %25 = zext i8 %24 to i16
  %i.cr = select i1 %i.cq, i16 %25, i16 0
  %i.cs = load i16, ptr %i.cf, align 8
  %i.ct = and i16 %i.cs, -129
  %i.cu = or disjoint i16 %i.ct, %i.cr
  store i16 %i.cu, ptr %i.cf, align 8
  %i.cv = tail call i32 @Curl_ssl_backend() #7
  %.not125 = icmp eq i32 %i.cv, 8
  br i1 %.not125, label %bb.q, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cw = load i16, ptr %i.cf, align 8            ; 3 uses
  %i.cx = and i16 %i.cw, 512
  %.not126 = icmp eq i16 %i.cx, 0
  br i1 %.not126, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 1448 ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !101
  %.not127 = icmp eq ptr %i.cz, null
  br i1 %.not127, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.da = tail call i32 @Curl_setstropt(ptr noundef nonnull %i.cy, ptr noundef nonnull @.str) #7 ; 2 uses
  %.not128 = icmp eq i32 %i.da, 0
  br i1 %.not128, label %._crit_edge143, label %bb.r

._crit_edge143:                                   ; preds = %bb.m
  %.pre144 = load i16, ptr %i.cf, align 8
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge143, %bb.l, %bb.k
  %i.db = phi i16 [ %.pre144, %._crit_edge143 ], [ %i.cw, %bb.l ], [ %i.cw, %bb.k ]
  %i.dc = and i16 %i.db, 256
  %.not129 = icmp eq i16 %i.dc, 0
  br i1 %.not129, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 1456 ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !101
  %.not130 = icmp eq ptr %i.de, null
  br i1 %.not130, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.df = tail call i32 @Curl_setstropt(ptr noundef nonnull %i.dd, ptr noundef nonnull @.str.1) #7 ; 2 uses
  %.not131 = icmp eq i32 %i.df, 0
  br i1 %.not131, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.n, %bb.o, %bb.p, %bb.j
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 1448
  %i.dh = load <2 x ptr>, ptr %i.dg, align 8, !tbaa !101
  store <2 x ptr> %i.dh, ptr %i.cc, align 8, !tbaa !101
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 1472
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.dk = load <2 x ptr>, ptr %i.di, align 8, !tbaa !101
  store <2 x ptr> %i.dk, ptr %i.dj, align 8, !tbaa !101
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 1464
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !101
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 1056
  store ptr %i.dm, ptr %i.dn, align 8, !tbaa !106
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 1936
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !95
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 1104
  store ptr %i.dp, ptr %i.dq, align 8, !tbaa !107
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 1112
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 1496
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !101
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 1016
  store ptr %i.dt, ptr %i.du, align 8, !tbaa !105
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 1952
  %i.dw = load <2 x ptr>, ptr %i.dv, align 8, !tbaa !95
  %i.dx = shufflevector <2 x ptr> %i.dw, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.dx, ptr %i.dr, align 8, !tbaa !95
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 1488
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !101
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 1064
  store ptr %i.dz, ptr %i.ea, align 8, !tbaa !102
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 1416
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.ed = load <2 x ptr>, ptr %i.eb, align 8, !tbaa !101
  store <2 x ptr> %i.ed, ptr %i.ec, align 8, !tbaa !101
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 1432
  %i.eg = load <2 x ptr>, ptr %i.ef, align 8, !tbaa !101
  %i.eh = shufflevector <2 x ptr> %i.eg, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.eh, ptr %i.ee, align 8, !tbaa !101
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 1408
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !101
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 1024
  store ptr %i.ej, ptr %i.ek, align 8, !tbaa !108
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 1944
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !95
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 1128
  store ptr %i.em, ptr %i.en, align 8, !tbaa !109
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 1768
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.eq = load <2 x ptr>, ptr %i.eo, align 8, !tbaa !101
  store <2 x ptr> %i.eq, ptr %i.ep, align 8, !tbaa !101
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.m, %bb.g, %bb.d, %bb.q
  %.0 = phi i32 [ 0, %bb.q ], [ %i.da, %bb.m ], [ %i.af, %bb.g ], [ %i.aa, %bb.d ], [ %i.df, %bb.p ]
  ret i32 %.0
}

declare i32 @Curl_ssl_backend() local_unnamed_addr #2

declare i32 @Curl_setstropt(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @Curl_peer_equal(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 28) i32 @Curl_ssl_conn_config_init(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) initializes((544, 550)) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.c = tail call fastcc zeroext i1 @clone_ssl_primary_config(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 552
  %i.f = tail call fastcc zeroext i1 @clone_ssl_primary_config(ptr noundef nonnull %i.d, ptr noundef nonnull %i.e)
  %. = select i1 %i.f, i32 0, i32 27
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ 27, %bb.a ], [ %., %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @clone_ssl_primary_config(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) initializes((160, 166)) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 166 ; 6 uses
  %i.b = load i8, ptr %i.a, align 2
  %i.c = or i8 %i.b, 16                           ; 2 uses
  store i8 %i.c, ptr %i.a, align 2
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 165
  %i.e = load i8, ptr %i.d, align 1, !tbaa !33
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 165
  store i8 %i.e, ptr %i.f, align 1, !tbaa !33
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.h = load i32, ptr %i.g, align 8, !tbaa !34
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 160
  store i32 %i.h, ptr %i.i, align 8, !tbaa !34
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 166 ; 4 uses
  %i.k = load i8, ptr %i.j, align 2
  %i.l = and i8 %i.k, 1
  %i.m = and i8 %i.c, -2
  %i.n = or disjoint i8 %i.l, %i.m                ; 2 uses
  store i8 %i.n, ptr %i.a, align 2
  %i.o = load i8, ptr %i.j, align 2
  %i.p = and i8 %i.o, 2
  %i.q = and i8 %i.n, -3
  %i.r = or disjoint i8 %i.q, %i.p                ; 2 uses
  store i8 %i.r, ptr %i.a, align 2
  %i.s = load i8, ptr %i.j, align 2
  %i.t = and i8 %i.s, 4
  %i.u = and i8 %i.r, -5
  %i.v = or disjoint i8 %i.u, %i.t                ; 2 uses
  store i8 %i.v, ptr %i.a, align 2
  %i.w = load i8, ptr %i.j, align 2
  %i.x = and i8 %i.w, 8
  %i.y = and i8 %i.v, -9
  %i.z = or disjoint i8 %i.y, %i.x
  store i8 %i.z, ptr %i.a, align 2
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.ab = load i8, ptr %i.aa, align 4, !tbaa !35
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 164
  store i8 %i.ab, ptr %i.ac, align 4, !tbaa !35
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !20 ; 3 uses
  %.not.i = icmp eq ptr %i.af, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ag = load ptr, ptr @Curl_cmalloc, align 8, !tbaa !9
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !97
  %i.aj = add i64 %i.ai, 24
  %i.ak = tail call ptr %i.ag(i64 noundef %i.aj) #7, !inline_history !110 ; 6 uses
  %.not17.i = icmp eq ptr %i.ak, null
  br i1 %.not17.i, label %blobdup.exit, label %.thread.i

.thread.i:                                        ; preds = %bb.b
  %i.al = load i64, ptr %i.ah, align 8, !tbaa !97 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i64 %i.al, ptr %i.am, align 8, !tbaa !97
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store i32 1, ptr %i.an, align 8, !tbaa !111
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 24 ; 2 uses
  store ptr %i.ao, ptr %i.ak, align 8, !tbaa !98
  %i.ap = load ptr, ptr %i.af, align 8, !tbaa !98
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ao, ptr align 1 %i.ap, i64 %i.al, i1 false)
  store ptr %i.ak, ptr %i.ad, align 8, !tbaa !95
  br label %bb.c

bb.c:                                             ; preds = %.thread.i, %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 112
end_hunk_0
