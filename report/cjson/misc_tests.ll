Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cjson/original/misc_tests?download=true
inline.NumInlined: 403
inline.NumDeleted: 24
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@parse_string:bb.a
  store i8 %i.x, ptr %.090119, align 1, !tbaa !53
  br label %.critedge

bb.g:                                             ; preds = %.lr.ph123
  %i.aa = ptrtoint ptr %.065120 to i64
  %i.ab = sub i64 %i.o, %i.aa                     ; 2 uses
  %i.ac = icmp slt i64 %i.ab, 1
  br i1 %i.ac, label %utf16_literal_to_utf8.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %.065120, i64 1
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !53  ; 2 uses
  switch i8 %i.ae, label %utf16_literal_to_utf8.exit.thread [
    i8 98, label %bb.i
    i8 102, label %bb.j
    i8 110, label %bb.k
    i8 114, label %bb.l
    i8 116, label %bb.m
    i8 34, label %bb.n
    i8 92, label %bb.n
    i8 47, label %bb.n
    i8 117, label %bb.o
  ]

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %.090119, i64 1
  store i8 8, ptr %.090119, align 1, !tbaa !53
  br label %bb.al

bb.j:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %.090119, i64 1
  store i8 12, ptr %.090119, align 1, !tbaa !53
  br label %bb.al

bb.k:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %.090119, i64 1
  store i8 10, ptr %.090119, align 1, !tbaa !53
  br label %bb.al

bb.l:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %.090119, i64 1
  store i8 13, ptr %.090119, align 1, !tbaa !53
  br label %bb.al

bb.m:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %.090119, i64 1
  store i8 9, ptr %.090119, align 1, !tbaa !53
  br label %bb.al

bb.n:                                             ; preds = %bb.h, %bb.h, %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %.090119, i64 1
  store i8 %i.ae, ptr %.090119, align 1, !tbaa !53
  br label %bb.al

bb.o:                                             ; preds = %bb.h
  %i.al = icmp samesign ult i64 %i.ab, 6
  br i1 %i.al, label %utf16_literal_to_utf8.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.am = getelementptr inbounds nuw i8, ptr %.065120, i64 2
  %i.an = load i8, ptr %i.am, align 1, !tbaa !53  ; 4 uses
  %i.ao = zext nneg i8 %i.an to i32
  %i.ap = add i8 %i.an, -48
  %or.cond.i.i = icmp ult i8 %i.ap, 10
  br i1 %or.cond.i.i, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aq = add i8 %i.an, -65
  %or.cond31.i.i = icmp ult i8 %i.aq, 6
  br i1 %or.cond31.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ar = add i8 %i.an, -97
  %or.cond32.i.i = icmp ult i8 %i.ar, 6
  br i1 %or.cond32.i.i, label %bb.s, label %bb.ak

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %.sink.i.i = phi i32 [ -48, %bb.p ], [ -55, %bb.q ], [ -87, %bb.r ]
  %i.as = add nsw i32 %.sink.i.i, %i.ao
  %i.at = getelementptr inbounds nuw i8, ptr %.065120, i64 3
  %i.au = load i8, ptr %i.at, align 1, !tbaa !53  ; 4 uses
  %i.av = zext nneg i8 %i.au to i32
  %i.aw = add i8 %i.au, -48
  %or.cond.1.i.i = icmp ult i8 %i.aw, 10
  br i1 %or.cond.1.i.i, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ax = add i8 %i.au, -65
  %or.cond31.1.i.i = icmp ult i8 %i.ax, 6
  br i1 %or.cond31.1.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ay = add i8 %i.au, -97
  %or.cond32.1.i.i = icmp ult i8 %i.ay, 6
  br i1 %or.cond32.1.i.i, label %bb.v, label %bb.ak

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %.sink35.i.i = phi i32 [ -55, %bb.t ], [ -87, %bb.u ], [ -48, %bb.s ]
  %i.az = add nsw i32 %.sink35.i.i, %i.av
  %i.ba = shl nuw nsw i32 %i.as, 8
  %i.bb = shl nuw nsw i32 %i.az, 4
  %i.bc = getelementptr inbounds nuw i8, ptr %.065120, i64 4
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !53  ; 4 uses
  %i.be = zext nneg i8 %i.bd to i32
  %i.bf = add i8 %i.bd, -48
  %or.cond.2.i.i = icmp ult i8 %i.bf, 10
  br i1 %or.cond.2.i.i, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bg = add i8 %i.bd, -65
  %or.cond31.2.i.i = icmp ult i8 %i.bg, 6
  br i1 %or.cond31.2.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bh = add i8 %i.bd, -97
  %or.cond32.2.i.i = icmp ult i8 %i.bh, 6
  br i1 %or.cond32.2.i.i, label %bb.y, label %bb.ak

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v
  %.sink36.i.i = phi i32 [ -55, %bb.w ], [ -87, %bb.x ], [ -48, %bb.v ]
  %i.bi = add nuw nsw i32 %i.bb, %i.ba
  %i.bj = add nuw nsw i32 %i.bi, %i.be
  %.1.2.i.i = add nsw i32 %i.bj, %.sink36.i.i
  %i.bk = shl nuw nsw i32 %.1.2.i.i, 4
  %i.bl = getelementptr inbounds nuw i8, ptr %.065120, i64 5
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !53  ; 4 uses
  %i.bn = zext nneg i8 %i.bm to i32
  %i.bo = add i8 %i.bm, -48
  %or.cond.3.i.i = icmp ult i8 %i.bo, 10
  br i1 %or.cond.3.i.i, label %parse_hex4.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bp = add i8 %i.bm, -65
  %or.cond31.3.i.i = icmp ult i8 %i.bp, 6
  br i1 %or.cond31.3.i.i, label %parse_hex4.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bq = add i8 %i.bm, -97
  %or.cond32.3.i.i = icmp ult i8 %i.bq, 6
  br i1 %or.cond32.3.i.i, label %parse_hex4.exit.i, label %bb.ak

parse_hex4.exit.i:                                ; preds = %bb.aa, %bb.z, %bb.y
  %.sink37.i.i = phi i32 [ -55, %bb.z ], [ -87, %bb.aa ], [ -48, %bb.y ]
  %i.br = add nuw nsw i32 %i.bk, %i.bn
  %.1.3.i.i = add nsw i32 %i.br, %.sink37.i.i     ; 10 uses
  %i.bs = and i32 %.1.3.i.i, -1024
  switch i32 %i.bs, label %bb.af [
    i32 56320, label %utf16_literal_to_utf8.exit.thread
    i32 55296, label %bb.ab
  ]

bb.ab:                                            ; preds = %parse_hex4.exit.i
  %i.bt = getelementptr inbounds nuw i8, ptr %.065120, i64 6 ; 2 uses
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = sub i64 %i.o, %i.bu
  %i.bw = icmp slt i64 %i.bv, 6
  br i1 %i.bw, label %utf16_literal_to_utf8.exit.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bx = load i8, ptr %i.bt, align 1, !tbaa !53
  %.not.i = icmp eq i8 %i.bx, 92
  br i1 %.not.i, label %bb.ad, label %utf16_literal_to_utf8.exit.thread

bb.ad:                                            ; preds = %bb.ac
  %i.by = getelementptr inbounds nuw i8, ptr %.065120, i64 7
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !53
  %.not53.i = icmp eq i8 %i.bz, 117
  br i1 %.not53.i, label %bb.ae, label %utf16_literal_to_utf8.exit.thread

bb.ae:                                            ; preds = %bb.ad
  %i.ca = getelementptr inbounds nuw i8, ptr %.065120, i64 8
  %i.cb = tail call fastcc i32 @parse_hex4(ptr noundef nonnull %i.ca) ; 2 uses
  %i.cc = add nsw i32 %i.cb, -57344
  %or.cond5.i = icmp ult i32 %i.cc, -1024
  br i1 %or.cond5.i, label %utf16_literal_to_utf8.exit.thread, label %.thread83.i

.thread83.i:                                      ; preds = %bb.ae
  %i.cd = shl nuw nsw i32 %.1.3.i.i, 10
  %i.ce = and i32 %i.cd, 1047552
  %i.cf = and i32 %i.cb, 1023
  %i.cg = add nuw nsw i32 %i.ce, 65536
  %i.ch = or disjoint i32 %i.cf, %i.cg
  br label %.lr.ph.preheader.i

bb.af:                                            ; preds = %parse_hex4.exit.i
  %i.ci = icmp ugt i32 %.1.3.i.i, 127
  br i1 %i.ci, label %bb.ag, label %bb.ak

bb.ag:                                            ; preds = %bb.af
  %i.cj = icmp ult i32 %.1.3.i.i, 2048
  br i1 %i.cj, label %.lr.ph.preheader.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ck = icmp ult i32 %.1.3.i.i, 65536
  br i1 %i.ck, label %.lr.ph.preheader.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cl = icmp ult i32 %.1.3.i.i, 1114112
  br i1 %i.cl, label %.lr.ph.preheader.i, label %utf16_literal_to_utf8.exit.thread

.lr.ph.preheader.i:                               ; preds = %.thread83.i, %bb.ag, %bb.ah, %bb.ai
  %.04669.i = phi i64 [ 6, %bb.ah ], [ 12, %.thread83.i ], [ 6, %bb.ag ], [ 6, %bb.ai ]
  %.167.shrunk.i = phi i32 [ %.1.3.i.i, %bb.ah ], [ %i.ch, %.thread83.i ], [ %.1.3.i.i, %bb.ag ], [ %.1.3.i.i, %bb.ai ] ; 2 uses
  %.048.i = phi i64 [ 3, %bb.ah ], [ 4, %.thread83.i ], [ 2, %bb.ag ], [ 4, %bb.ai ] ; 4 uses
  %.045.i = phi i64 [ 224, %bb.ah ], [ 240, %.thread83.i ], [ 192, %bb.ag ], [ 240, %bb.ai ]
  %i.cm = trunc i32 %.167.shrunk.i to i8
  %i.cn = and i8 %i.cm, 63
  %i.co = or disjoint i8 %i.cn, -128
  %2 = getelementptr i8, ptr %.090119, i64 %.048.i
  %i.cp = getelementptr i8, ptr %2, i64 -1
  store i8 %i.co, ptr %i.cp, align 1, !tbaa !53
  %i.cq = lshr i32 %.167.shrunk.i, 6              ; 2 uses
  %i.cr = zext nneg i32 %i.cq to i64              ; 3 uses
  %indvars.iv.next.i = add nsw i64 %.048.i, -2    ; 2 uses
  %i.cs = and i64 %indvars.iv.next.i, 255
  %.not54.i = icmp eq i64 %i.cs, 0
  br i1 %.not54.i, label %bb.aj, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %.lr.ph.preheader.i
  %i.ct = trunc i32 %i.cq to i8
  %i.cu = and i8 %i.ct, 63
  %i.cv = or disjoint i8 %i.cu, -128
  %i.cw = getelementptr inbounds nuw i8, ptr %.090119, i64 %indvars.iv.next.i
  store i8 %i.cv, ptr %i.cw, align 1, !tbaa !53
  %i.cx = lshr i64 %i.cr, 6                       ; 2 uses
  %indvars.iv.next.i.1 = add nsw i64 %.048.i, -3  ; 2 uses
  %i.cy = and i64 %indvars.iv.next.i.1, 255
  %.not54.i.1 = icmp eq i64 %i.cy, 0
  br i1 %.not54.i.1, label %bb.aj, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %.lr.ph.i.1
  %i.cz = trunc i64 %i.cx to i8
  %i.da = and i8 %i.cz, 63
  %i.db = or disjoint i8 %i.da, -128
  %i.dc = getelementptr inbounds nuw i8, ptr %.090119, i64 %indvars.iv.next.i.1
  store i8 %i.db, ptr %i.dc, align 1, !tbaa !53
  %i.dd = lshr i64 %i.cr, 12
  br label %bb.aj

bb.aj:                                            ; preds = %.lr.ph.i.2, %.lr.ph.i.1, %.lr.ph.preheader.i
  %.lcssa = phi i64 [ %i.cr, %.lr.ph.preheader.i ], [ %i.cx, %.lr.ph.i.1 ], [ %i.dd, %.lr.ph.i.2 ]
  %i.de = or i64 %.lcssa, %.045.i
  br label %utf16_literal_to_utf8.exit

bb.ak:                                            ; preds = %bb.af, %bb.aa, %bb.x, %bb.u, %bb.r
  %.167.shrunk.ph.i = phi i32 [ 0, %bb.x ], [ 0, %bb.aa ], [ 0, %bb.u ], [ 0, %bb.r ], [ %.1.3.i.i, %bb.af ]
  %.16795.i = zext nneg i32 %.167.shrunk.ph.i to i64
  br label %utf16_literal_to_utf8.exit

utf16_literal_to_utf8.exit:                       ; preds = %bb.aj, %bb.ak
  %.16795.sink.i = phi i64 [ %.16795.i, %bb.ak ], [ %i.de, %bb.aj ]
  %.0466998108.i = phi i64 [ 6, %bb.ak ], [ %.04669.i, %bb.aj ]
  %.04899106.i = phi i64 [ 1, %bb.ak ], [ %.048.i, %bb.aj ]
  %i.df = trunc i64 %.16795.sink.i to i8
  store i8 %i.df, ptr %.090119, align 1, !tbaa !53
  %i.dg = getelementptr inbounds nuw i8, ptr %.090119, i64 %.04899106.i
  br label %bb.al

bb.al:                                            ; preds = %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %utf16_literal_to_utf8.exit
  %.191 = phi ptr [ %i.af, %bb.i ], [ %i.ag, %bb.j ], [ %i.ah, %bb.k ], [ %i.ai, %bb.l ], [ %i.aj, %bb.m ], [ %i.ak, %bb.n ], [ %i.dg, %utf16_literal_to_utf8.exit ]
  %.0 = phi i64 [ 2, %bb.i ], [ 2, %bb.j ], [ 2, %bb.k ], [ 2, %bb.l ], [ 2, %bb.m ], [ 2, %bb.n ], [ %.0466998108.i, %utf16_literal_to_utf8.exit ]
  %i.dh = getelementptr inbounds nuw i8, ptr %.065120, i64 %.0
  br label %.critedge

.critedge:                                        ; preds = %bb.al, %bb.f
  %.393 = phi ptr [ %.191, %bb.al ], [ %i.z, %bb.f ] ; 2 uses
  %.2 = phi ptr [ %i.dh, %bb.al ], [ %i.y, %bb.f ] ; 2 uses
  %i.di = icmp ult ptr %.2, %.063116.ptr.le
  br i1 %i.di, label %.lr.ph123, label %.critedge._crit_edge

.critedge._crit_edge:                             ; preds = %.critedge, %.critedge.preheader
  %.090.lcssa = phi ptr [ %i.u, %.critedge.preheader ], [ %.393, %.critedge ]
  store i8 0, ptr %.090.lcssa, align 1, !tbaa !53
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 16, ptr %i.dj, align 8, !tbaa !36
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.u, ptr %i.dk, align 8, !tbaa !37
  %i.dl = load ptr, ptr %1, align 8, !tbaa !48
  %i.dm = ptrtoint ptr %i.dl to i64
  %i.dn = add i64 %i.o, 1
  %i.do = sub i64 %i.dn, %i.dm
  br label %bb.am

utf16_literal_to_utf8.exit.thread:                ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.ab, %parse_hex4.exit.i, %bb.ai, %bb.o, %bb.h, %bb.g
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !61
  tail call void %i.dq(ptr noundef nonnull %i.u) #29
  br label %.thread103

.thread103:                                       ; preds = %bb.b, %bb.d, %.preheader, %bb.e, %bb.a, %utf16_literal_to_utf8.exit.thread
  %.3107 = phi ptr [ %.065120, %utf16_literal_to_utf8.exit.thread ], [ %.ptr, %bb.a ], [ %.ptr, %.preheader ], [ %.ptr, %bb.e ], [ %.ptr, %bb.d ], [ %.ptr, %bb.b ]
  %i.dr = load ptr, ptr %1, align 8, !tbaa !48
  %i.ds = ptrtoint ptr %.3107 to i64
  %i.dt = ptrtoint ptr %i.dr to i64
  %i.du = sub i64 %i.ds, %i.dt
  br label %bb.am

bb.am:                                            ; preds = %.thread103, %.critedge._crit_edge
  %storemerge = phi i64 [ %i.do, %.critedge._crit_edge ], [ %i.du, %.thread103 ]
  %.067 = phi i32 [ 1, %.critedge._crit_edge ], [ 0, %.thread103 ]
  store i64 %storemerge, ptr %i.b, align 8, !tbaa !52
  ret i32 %.067
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef range(i32 0, 2) i32 @parse_object(ptr nofree noundef nonnull writeonly captures(none) %0, ptr nofree noundef nonnull captures(address_is_null) %1) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !62   ; 3 uses
  %i.c = icmp ugt i64 %i.b, 999
  br i1 %i.c, label %.critedge.thread119, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add nuw nsw i64 %i.b, 1
  store i64 %i.d, ptr %i.a, align 8, !tbaa !62
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 20 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !52   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !49   ; 5 uses
  %i.i = icmp ult i64 %i.f, %i.h
  br i1 %i.i, label %bb.c, label %.critedge.thread119

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %1, align 8, !tbaa !48     ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.f
  %i.l = load i8, ptr %i.k, align 1, !tbaa !53
  %.not = icmp eq i8 %i.l, 123
  br i1 %.not, label %bb.d, label %.critedge.thread119

bb.d:                                             ; preds = %bb.c
  %i.m = add nuw i64 %i.f, 1                      ; 4 uses
  store i64 %i.m, ptr %i.e, align 8, !tbaa !52
  %i.n = icmp ult i64 %i.m, %i.h
  br i1 %i.n, label %.lr.ph.i, label %buffer_skip_whitespace.exit

.lr.ph.i:                                         ; preds = %bb.d, %bb.e
  %i.o = phi i64 [ %i.s, %bb.e ], [ %i.m, %bb.d ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !53
  %i.r = icmp ult i8 %i.q, 33
  br i1 %i.r, label %bb.e, label %buffer_skip_whitespace.exit

bb.e:                                             ; preds = %.lr.ph.i
  %i.s = add i64 %i.o, 1                          ; 3 uses
  store i64 %i.s, ptr %i.e, align 8, !tbaa !52
  %exitcond.not.i = icmp eq i64 %i.s, %i.h
  br i1 %exitcond.not.i, label %.critedge.thread.i, label %.lr.ph.i

.critedge.thread.i:                               ; preds = %bb.e
  %i.t = add i64 %i.h, -1                         ; 2 uses
  store i64 %i.t, ptr %i.e, align 8, !tbaa !52
  br label %buffer_skip_whitespace.exit

buffer_skip_whitespace.exit:                      ; preds = %.lr.ph.i, %bb.d, %.critedge.thread.i
  %i.u = phi i64 [ %i.t, %.critedge.thread.i ], [ %i.m, %bb.d ], [ %i.o, %.lr.ph.i ] ; 5 uses
  %i.v = icmp ult i64 %i.u, %i.h
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %buffer_skip_whitespace.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.u
  %i.x = load i8, ptr %i.w, align 1, !tbaa !53
  %i.y = icmp eq i8 %i.x, 125
  br i1 %i.y, label %.thread114, label %bb.h

.thread114:                                       ; preds = %bb.f
  store i64 %i.b, ptr %i.a, align 8, !tbaa !62
  br label %bb.x

bb.g:                                             ; preds = %buffer_skip_whitespace.exit
  %i.z = add i64 %i.u, -1
  store i64 %i.z, ptr %i.e, align 8, !tbaa !52
  br label %.critedge.thread119

bb.h:                                             ; preds = %bb.f
  %i.aa = add i64 %i.u, -1
  store i64 %i.aa, ptr %i.e, align 8, !tbaa !52
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.i

bb.i:                                             ; preds = %bb.v, %bb.h
  %.071 = phi ptr [ null, %bb.h ], [ %.172, %bb.v ] ; 4 uses
  %.070 = phi ptr [ null, %bb.h ], [ %i.ac, %bb.v ] ; 2 uses
  %.val = load ptr, ptr %i.ab, align 8, !tbaa !40
  %i.ac = tail call ptr %.val(i64 noundef 64) #29, !inline_history !1 ; 11 uses
  %.not.i = icmp eq ptr %i.ac, null
  br i1 %.not.i, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ac, i8 0, i64 64, i1 false)
  %i.ad = icmp eq ptr %.071, null
  br i1 %i.ad, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr %i.ac, ptr %.070, align 8, !tbaa !42
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %.070, ptr %i.ae, align 8, !tbaa !63
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.172 = phi ptr [ %.071, %bb.k ], [ %i.ac, %bb.j ] ; 10 uses
  %i.af = load i64, ptr %i.e, align 8, !tbaa !52
  %i.ag = add i64 %i.af, 1                        ; 3 uses
  %i.ah = load i64, ptr %i.g, align 8, !tbaa !49  ; 3 uses
  %i.ai = icmp ult i64 %i.ag, %i.ah
  br i1 %i.ai, label %bb.m, label %.critedge.thread123

bb.m:                                             ; preds = %bb.l
  store i64 %i.ag, ptr %i.e, align 8, !tbaa !52
  %i.aj = load ptr, ptr %1, align 8, !tbaa !48    ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %buffer_skip_whitespace.exit97, label %.lr.ph.i93

.lr.ph.i93:                                       ; preds = %bb.m, %bb.n
  %i.al = phi i64 [ %i.ap, %bb.n ], [ %i.ag, %bb.m ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !53
  %i.ao = icmp ult i8 %i.an, 33
  br i1 %i.ao, label %bb.n, label %buffer_skip_whitespace.exit97

bb.n:                                             ; preds = %.lr.ph.i93
  %i.ap = add i64 %i.al, 1                        ; 3 uses
  store i64 %i.ap, ptr %i.e, align 8, !tbaa !52
  %exitcond.not.i96 = icmp eq i64 %i.ap, %i.ah
  br i1 %exitcond.not.i96, label %.critedge.thread.i95.loopexit, label %.lr.ph.i93

.critedge.thread.i95.loopexit:                    ; preds = %bb.n
  %i.aq = add i64 %i.ah, -1
  store i64 %i.aq, ptr %i.e, align 8, !tbaa !52
  br label %buffer_skip_whitespace.exit97

buffer_skip_whitespace.exit97:                    ; preds = %.lr.ph.i93, %bb.m, %.critedge.thread.i95.loopexit
  %i.ar = tail call fastcc i32 @parse_string(ptr noundef %i.ac, ptr noundef %1)
  %.not86 = icmp eq i32 %i.ar, 0
  br i1 %.not86, label %.critedge.thread123, label %bb.o

bb.o:                                             ; preds = %buffer_skip_whitespace.exit97
  %i.as = load ptr, ptr %1, align 8, !tbaa !48    ; 4 uses
  %i.at = icmp ne ptr %i.as, null
  %.pre = load i64, ptr %i.e, align 8, !tbaa !52  ; 3 uses
  %.pre143 = load i64, ptr %i.g, align 8, !tbaa !49 ; 7 uses
  %i.au = icmp ult i64 %.pre, %.pre143
  %or.cond = select i1 %i.at, i1 %i.au, i1 false
  br i1 %or.cond, label %.lr.ph.i99, label %buffer_skip_whitespace.exit103

.lr.ph.i99:                                       ; preds = %bb.o, %bb.p
  %i.av = phi i64 [ %i.az, %bb.p ], [ %.pre, %bb.o ] ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !53
  %i.ay = icmp ult i8 %i.ax, 33
  br i1 %i.ay, label %bb.p, label %buffer_skip_whitespace.exit103

bb.p:                                             ; preds = %.lr.ph.i99
  %i.az = add i64 %i.av, 1                        ; 3 uses
end_hunk_0
