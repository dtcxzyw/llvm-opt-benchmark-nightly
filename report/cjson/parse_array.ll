Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cjson/original/parse_array?download=true
inline.NumInlined: 133
inline.NumDeleted: 24
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@parse_string:bb.a

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
  %i.bx = load i8, ptr %i.bt, align 1, !tbaa !40
  %.not.i = icmp eq i8 %i.bx, 92
  br i1 %.not.i, label %bb.ad, label %utf16_literal_to_utf8.exit.thread

bb.ad:                                            ; preds = %bb.ac
  %i.by = getelementptr inbounds nuw i8, ptr %.065120, i64 7
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !40
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

.lr.ph.preheader.i:                               ; preds = %bb.ai, %bb.ah, %bb.ag, %.thread83.i
  %.04669.i = phi i64 [ 6, %bb.ah ], [ 12, %.thread83.i ], [ 6, %bb.ag ], [ 6, %bb.ai ]
  %.167.shrunk.i = phi i32 [ %.1.3.i.i, %bb.ah ], [ %i.ch, %.thread83.i ], [ %.1.3.i.i, %bb.ag ], [ %.1.3.i.i, %bb.ai ] ; 2 uses
  %.048.i = phi i32 [ 3, %bb.ah ], [ 4, %.thread83.i ], [ 2, %bb.ag ], [ 4, %bb.ai ] ; 2 uses
  %.045.i = phi i64 [ 224, %bb.ah ], [ 240, %.thread83.i ], [ 192, %bb.ag ], [ 240, %bb.ai ]
  %narrow.i = add nuw nsw i32 %.048.i, 255
  %i.cm = and i32 %narrow.i, 255
  %i.cn = zext nneg i32 %i.cm to i64              ; 3 uses
  %i.co = trunc i32 %.167.shrunk.i to i8
  %i.cp = and i8 %i.co, 63
  %i.cq = or disjoint i8 %i.cp, -128
  %i.cr = getelementptr inbounds nuw i8, ptr %.090119, i64 %i.cn
  store i8 %i.cq, ptr %i.cr, align 1, !tbaa !40
  %i.cs = lshr i32 %.167.shrunk.i, 6              ; 2 uses
  %i.ct = zext nneg i32 %i.cs to i64              ; 3 uses
  %indvars.iv.next.i = add nsw i64 %i.cn, -1      ; 2 uses
  %i.cu = and i64 %indvars.iv.next.i, 255
  %.not54.i = icmp eq i64 %i.cu, 0
  br i1 %.not54.i, label %bb.aj, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %.lr.ph.preheader.i
  %i.cv = trunc i32 %i.cs to i8
  %i.cw = and i8 %i.cv, 63
  %i.cx = or disjoint i8 %i.cw, -128
  %i.cy = getelementptr inbounds nuw i8, ptr %.090119, i64 %indvars.iv.next.i
  store i8 %i.cx, ptr %i.cy, align 1, !tbaa !40
  %i.cz = lshr i64 %i.ct, 6                       ; 2 uses
  %indvars.iv.next.i.1 = add nsw i64 %i.cn, -2    ; 2 uses
  %i.da = and i64 %indvars.iv.next.i.1, 255
  %.not54.i.1 = icmp eq i64 %i.da, 0
  br i1 %.not54.i.1, label %bb.aj, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %.lr.ph.i.1
  %i.db = trunc i64 %i.cz to i8
  %i.dc = and i8 %i.db, 63
  %i.dd = or disjoint i8 %i.dc, -128
  %i.de = getelementptr inbounds nuw i8, ptr %.090119, i64 %indvars.iv.next.i.1
  store i8 %i.dd, ptr %i.de, align 1, !tbaa !40
  %i.df = lshr i64 %i.ct, 12
  br label %bb.aj

bb.aj:                                            ; preds = %.lr.ph.i.2, %.lr.ph.i.1, %.lr.ph.preheader.i
  %.lcssa = phi i64 [ %i.ct, %.lr.ph.preheader.i ], [ %i.cz, %.lr.ph.i.1 ], [ %i.df, %.lr.ph.i.2 ]
  %i.dg = or i64 %.lcssa, %.045.i
  %i.dh = zext nneg i32 %.048.i to i64
  br label %utf16_literal_to_utf8.exit

bb.ak:                                            ; preds = %bb.af, %bb.aa, %bb.x, %bb.u, %bb.r
  %.167.shrunk.ph.i = phi i32 [ 0, %bb.x ], [ 0, %bb.aa ], [ 0, %bb.u ], [ 0, %bb.r ], [ %.1.3.i.i, %bb.af ]
  %.16795.i = zext nneg i32 %.167.shrunk.ph.i to i64
  br label %utf16_literal_to_utf8.exit

utf16_literal_to_utf8.exit:                       ; preds = %bb.aj, %bb.ak
  %.16795.sink.i = phi i64 [ %.16795.i, %bb.ak ], [ %i.dg, %bb.aj ]
  %.0466998108.i = phi i64 [ 6, %bb.ak ], [ %.04669.i, %bb.aj ]
  %.04899106.i = phi i64 [ 1, %bb.ak ], [ %i.dh, %bb.aj ]
  %i.di = trunc i64 %.16795.sink.i to i8
  store i8 %i.di, ptr %.090119, align 1, !tbaa !40
  %i.dj = getelementptr inbounds nuw i8, ptr %.090119, i64 %.04899106.i
  br label %bb.al

bb.al:                                            ; preds = %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %utf16_literal_to_utf8.exit
  %.191 = phi ptr [ %i.af, %bb.i ], [ %i.ag, %bb.j ], [ %i.ah, %bb.k ], [ %i.ai, %bb.l ], [ %i.aj, %bb.m ], [ %i.ak, %bb.n ], [ %i.dj, %utf16_literal_to_utf8.exit ]
  %.0 = phi i64 [ 2, %bb.i ], [ 2, %bb.j ], [ 2, %bb.k ], [ 2, %bb.l ], [ 2, %bb.m ], [ 2, %bb.n ], [ %.0466998108.i, %utf16_literal_to_utf8.exit ]
  %i.dk = getelementptr inbounds nuw i8, ptr %.065120, i64 %.0
  br label %.critedge

.critedge:                                        ; preds = %bb.al, %bb.f
  %.393 = phi ptr [ %.191, %bb.al ], [ %i.z, %bb.f ] ; 2 uses
  %.2 = phi ptr [ %i.dk, %bb.al ], [ %i.y, %bb.f ] ; 2 uses
  %i.dl = icmp ult ptr %.2, %.063116.ptr.le
  br i1 %i.dl, label %.lr.ph123, label %.critedge._crit_edge

.critedge._crit_edge:                             ; preds = %.critedge, %.critedge.preheader
  %.090.lcssa = phi ptr [ %i.u, %.critedge.preheader ], [ %.393, %.critedge ]
  store i8 0, ptr %.090.lcssa, align 1, !tbaa !40
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 16, ptr %i.dm, align 8, !tbaa !15
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.u, ptr %i.dn, align 8, !tbaa !19
  %i.do = load ptr, ptr %1, align 8, !tbaa !33
  %i.dp = ptrtoint ptr %i.do to i64
  %i.dq = add i64 %i.o, 1
  %i.dr = sub i64 %i.dq, %i.dp
  br label %bb.am

utf16_literal_to_utf8.exit.thread:                ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.ab, %parse_hex4.exit.i, %bb.ai, %bb.o, %bb.h, %bb.g
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !53
  tail call void %i.dt(ptr noundef nonnull %i.u) #28
  br label %.thread103

.thread103:                                       ; preds = %bb.b, %bb.d, %.preheader, %bb.e, %bb.a, %utf16_literal_to_utf8.exit.thread
  %.3107 = phi ptr [ %.065120, %utf16_literal_to_utf8.exit.thread ], [ %.ptr, %bb.a ], [ %.ptr, %.preheader ], [ %.ptr, %bb.e ], [ %.ptr, %bb.d ], [ %.ptr, %bb.b ]
  %i.du = load ptr, ptr %1, align 8, !tbaa !33
  %i.dv = ptrtoint ptr %.3107 to i64
  %i.dw = ptrtoint ptr %i.du to i64
  %i.dx = sub i64 %i.dv, %i.dw
  br label %bb.am

bb.am:                                            ; preds = %.thread103, %.critedge._crit_edge
  %storemerge = phi i64 [ %i.dr, %.critedge._crit_edge ], [ %i.dx, %.thread103 ]
  %.067 = phi i32 [ 1, %.critedge._crit_edge ], [ 0, %.thread103 ]
  store i64 %storemerge, ptr %i.b, align 8, !tbaa !39
  ret i32 %.067
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef range(i32 0, 2) i32 @parse_array(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef nonnull captures(address_is_null) %1) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !97   ; 3 uses
  %i.c = icmp ugt i64 %i.b, 999
  br i1 %i.c, label %buffer_skip_whitespace.exit78.thread95, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add nuw nsw i64 %i.b, 1
  store i64 %i.d, ptr %i.a, align 8, !tbaa !97
  %i.e = load ptr, ptr %1, align 8, !tbaa !33     ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 14 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !39   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !40
  %.not = icmp eq i8 %i.i, 91
  br i1 %.not, label %bb.c, label %buffer_skip_whitespace.exit78.thread95

bb.c:                                             ; preds = %bb.b
  %i.j = add i64 %i.g, 1                          ; 4 uses
  store i64 %i.j, ptr %i.f, align 8, !tbaa !39
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !35   ; 5 uses
  %i.m = icmp ult i64 %i.j, %i.l
  br i1 %i.m, label %.lr.ph.i, label %buffer_skip_whitespace.exit

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %i.n = phi i64 [ %i.r, %bb.d ], [ %i.j, %bb.c ] ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !40
  %i.q = icmp ult i8 %i.p, 33
  br i1 %i.q, label %bb.d, label %.critedge.i

bb.d:                                             ; preds = %.lr.ph.i
  %i.r = add i64 %i.n, 1                          ; 3 uses
  store i64 %i.r, ptr %i.f, align 8, !tbaa !39
  %exitcond.not.i = icmp eq i64 %i.r, %i.l
  br i1 %exitcond.not.i, label %.critedge.thread.i, label %.lr.ph.i

.critedge.i:                                      ; preds = %.lr.ph.i
  %2 = icmp eq i64 %i.n, %i.l
  br i1 %2, label %.critedge.thread.i, label %buffer_skip_whitespace.exit

.critedge.thread.i:                               ; preds = %bb.d, %.critedge.i
  %i.s = add i64 %i.l, -1                         ; 2 uses
  store i64 %i.s, ptr %i.f, align 8, !tbaa !39
  br label %buffer_skip_whitespace.exit

buffer_skip_whitespace.exit:                      ; preds = %bb.c, %.critedge.i, %.critedge.thread.i
  %i.t = phi i64 [ %i.j, %bb.c ], [ %i.n, %.critedge.i ], [ %i.s, %.critedge.thread.i ] ; 5 uses
  %i.u = icmp ult i64 %i.t, %i.l
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %buffer_skip_whitespace.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.t
  %i.w = load i8, ptr %i.v, align 1, !tbaa !40
  %i.x = icmp eq i8 %i.w, 93
  br i1 %i.x, label %.thread84, label %bb.g

.thread84:                                        ; preds = %bb.e
  store i64 %i.b, ptr %i.a, align 8, !tbaa !97
  br label %bb.s

bb.f:                                             ; preds = %buffer_skip_whitespace.exit
  %i.y = add i64 %i.t, -1
  store i64 %i.y, ptr %i.f, align 8, !tbaa !39
  br label %buffer_skip_whitespace.exit78.thread95

bb.g:                                             ; preds = %bb.e
  %i.z = add i64 %i.t, -1
  store i64 %i.z, ptr %i.f, align 8, !tbaa !39
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.h

bb.h:                                             ; preds = %bb.q, %bb.g
  %.052 = phi ptr [ null, %bb.g ], [ %.153, %bb.q ] ; 4 uses
  %.051 = phi ptr [ null, %bb.g ], [ %i.ab, %bb.q ] ; 2 uses
  %.val = load ptr, ptr %i.aa, align 8, !tbaa !21
  %i.ab = tail call ptr %.val(i64 noundef 64) #28, !inline_history !38 ; 8 uses
  %.not.i = icmp eq ptr %i.ab, null
  br i1 %.not.i, label %buffer_skip_whitespace.exit78, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ab, i8 0, i64 64, i1 false)
  %i.ac = icmp eq ptr %.052, null
  br i1 %i.ac, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr %i.ab, ptr %.051, align 8, !tbaa !27
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %.051, ptr %i.ad, align 8, !tbaa !74
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.153 = phi ptr [ %.052, %bb.j ], [ %i.ab, %bb.i ] ; 6 uses
  %i.ae = load i64, ptr %i.f, align 8, !tbaa !39
  %i.af = add i64 %i.ae, 1                        ; 3 uses
  store i64 %i.af, ptr %i.f, align 8, !tbaa !39
  %i.ag = load ptr, ptr %1, align 8, !tbaa !33    ; 2 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %buffer_skip_whitespace.exit72, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = load i64, ptr %i.k, align 8, !tbaa !35  ; 4 uses
  %i.aj = icmp ult i64 %i.af, %i.ai
  br i1 %i.aj, label %.lr.ph.i68, label %buffer_skip_whitespace.exit72

.lr.ph.i68:                                       ; preds = %bb.l, %bb.m
  %i.ak = phi i64 [ %i.ao, %bb.m ], [ %i.af, %bb.l ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !40
  %i.an = icmp ult i8 %i.am, 33
  br i1 %i.an, label %bb.m, label %.critedge.i69

bb.m:                                             ; preds = %.lr.ph.i68
  %i.ao = add i64 %i.ak, 1                        ; 3 uses
  store i64 %i.ao, ptr %i.f, align 8, !tbaa !39
  %exitcond.not.i71 = icmp eq i64 %i.ao, %i.ai
  br i1 %exitcond.not.i71, label %.critedge.thread.i70, label %.lr.ph.i68

.critedge.i69:                                    ; preds = %.lr.ph.i68
  %3 = icmp eq i64 %i.ak, %i.ai
  br i1 %3, label %.critedge.thread.i70, label %buffer_skip_whitespace.exit72

.critedge.thread.i70:                             ; preds = %bb.m, %.critedge.i69
  %i.ap = add i64 %i.ai, -1
  store i64 %i.ap, ptr %i.f, align 8, !tbaa !39
  br label %buffer_skip_whitespace.exit72

buffer_skip_whitespace.exit72:                    ; preds = %bb.k, %bb.l, %.critedge.i69, %.critedge.thread.i70
  %i.aq = tail call fastcc i32 @parse_value(ptr noundef %i.ab, ptr noundef nonnull %1)
  %.not63 = icmp eq i32 %i.aq, 0
  br i1 %.not63, label %buffer_skip_whitespace.exit78.thread90, label %bb.n

bb.n:                                             ; preds = %buffer_skip_whitespace.exit72
  %i.ar = load ptr, ptr %1, align 8, !tbaa !33    ; 3 uses
  %i.as = icmp ne ptr %i.ar, null
  %.pre = load i64, ptr %i.f, align 8, !tbaa !39  ; 3 uses
  %.pre122 = load i64, ptr %i.k, align 8, !tbaa !35 ; 5 uses
  %i.at = icmp ult i64 %.pre, %.pre122
  %or.cond = select i1 %i.as, i1 %i.at, i1 false
  br i1 %or.cond, label %.lr.ph.i74, label %bb.p

.lr.ph.i74:                                       ; preds = %bb.n, %bb.o
  %i.au = phi i64 [ %i.ay, %bb.o ], [ %.pre, %bb.n ] ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !40
  %i.ax = icmp ult i8 %i.aw, 33
  br i1 %i.ax, label %bb.o, label %.critedge.i75

bb.o:                                             ; preds = %.lr.ph.i74
  %i.ay = add i64 %i.au, 1                        ; 3 uses
  store i64 %i.ay, ptr %i.f, align 8, !tbaa !39
  %exitcond.not.i77 = icmp eq i64 %i.ay, %.pre122
  br i1 %exitcond.not.i77, label %.critedge.thread.i76, label %.lr.ph.i74

.critedge.i75:                                    ; preds = %.lr.ph.i74
  %4 = icmp eq i64 %i.au, %.pre122
  br i1 %4, label %.critedge.thread.i76, label %bb.p

.critedge.thread.i76:                             ; preds = %bb.o, %.critedge.i75
  %i.az = add i64 %.pre122, -1                    ; 2 uses
  store i64 %i.az, ptr %i.f, align 8, !tbaa !39
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %.critedge.i75, %.critedge.thread.i76
  %i.ba = phi i64 [ %.pre, %bb.n ], [ %i.az, %.critedge.thread.i76 ], [ %i.au, %.critedge.i75 ] ; 3 uses
  %i.bb = icmp ult i64 %i.ba, %.pre122
  br i1 %i.bb, label %bb.q, label %buffer_skip_whitespace.exit78.thread90

bb.q:                                             ; preds = %bb.p
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ba
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !40
  switch i8 %i.bd, label %buffer_skip_whitespace.exit78.thread90 [
    i8 44, label %bb.h
    i8 93, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q
  %i.be = load i64, ptr %i.a, align 8, !tbaa !97
  %i.bf = add i64 %i.be, -1
  store i64 %i.bf, ptr %i.a, align 8, !tbaa !97
  %i.bg = getelementptr inbounds nuw i8, ptr %.153, i64 8
  store ptr %i.ab, ptr %i.bg, align 8, !tbaa !74
  br label %bb.s

bb.s:                                             ; preds = %.thread84, %bb.r
  %i.bh = phi i64 [ %i.t, %.thread84 ], [ %i.ba, %bb.r ]
  %.35588 = phi ptr [ null, %.thread84 ], [ %.153, %bb.r ]
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 32, ptr %i.bi, align 8, !tbaa !15
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.35588, ptr %i.bj, align 8, !tbaa !28
  %i.bk = add nuw i64 %i.bh, 1
  store i64 %i.bk, ptr %i.f, align 8, !tbaa !39
  br label %buffer_skip_whitespace.exit78.thread95

buffer_skip_whitespace.exit78:                    ; preds = %bb.h
  %.not66 = icmp eq ptr %.052, null
  br i1 %.not66, label %buffer_skip_whitespace.exit78.thread95, label %buffer_skip_whitespace.exit78.thread90

buffer_skip_whitespace.exit78.thread90:           ; preds = %bb.p, %buffer_skip_whitespace.exit72, %bb.q, %buffer_skip_whitespace.exit78
  %.493 = phi ptr [ %.052, %buffer_skip_whitespace.exit78 ], [ %.153, %bb.q ], [ %.153, %buffer_skip_whitespace.exit72 ], [ %.153, %bb.p ]
  tail call void @cJSON_Delete(ptr noundef nonnull %.493)
  br label %buffer_skip_whitespace.exit78.thread95

buffer_skip_whitespace.exit78.thread95:           ; preds = %bb.f, %bb.b, %buffer_skip_whitespace.exit78, %buffer_skip_whitespace.exit78.thread90, %bb.a, %bb.s
  %.056 = phi i32 [ 0, %bb.a ], [ 1, %bb.s ], [ 0, %buffer_skip_whitespace.exit78.thread90 ], [ 0, %buffer_skip_whitespace.exit78 ], [ 0, %bb.b ], [ 0, %bb.f ]
  ret i32 %.056
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef range(i32 0, 2) i32 @parse_object(ptr nofree noundef nonnull writeonly captures(none) %0, ptr nofree noundef nonnull captures(address_is_null) %1) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !97   ; 3 uses
  %i.c = icmp ugt i64 %i.b, 999
  br i1 %i.c, label %.critedge.thread119, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add nuw nsw i64 %i.b, 1
  store i64 %i.d, ptr %i.a, align 8, !tbaa !97
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 18 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !39   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !35   ; 6 uses
  %i.i = icmp ult i64 %i.f, %i.h
  br i1 %i.i, label %bb.c, label %.critedge.thread119

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %1, align 8, !tbaa !33     ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.f
  %i.l = load i8, ptr %i.k, align 1, !tbaa !40
  %.not = icmp eq i8 %i.l, 123
  br i1 %.not, label %bb.d, label %.critedge.thread119

bb.d:                                             ; preds = %bb.c
  %i.m = add nuw i64 %i.f, 1                      ; 4 uses
  store i64 %i.m, ptr %i.e, align 8, !tbaa !39
  %i.n = icmp ult i64 %i.m, %i.h
  br i1 %i.n, label %.lr.ph.i, label %buffer_skip_whitespace.exit

.lr.ph.i:                                         ; preds = %bb.d, %bb.e
  %i.o = phi i64 [ %i.s, %bb.e ], [ %i.m, %bb.d ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !40
  %i.r = icmp ult i8 %i.q, 33
  br i1 %i.r, label %bb.e, label %.critedge.i

bb.e:                                             ; preds = %.lr.ph.i
  %i.s = add i64 %i.o, 1                          ; 3 uses
  store i64 %i.s, ptr %i.e, align 8, !tbaa !39
  %exitcond.not.i = icmp eq i64 %i.s, %i.h
  br i1 %exitcond.not.i, label %.critedge.thread.i, label %.lr.ph.i

.critedge.i:                                      ; preds = %.lr.ph.i
  %2 = icmp eq i64 %i.o, %i.h
  br i1 %2, label %.critedge.thread.i, label %buffer_skip_whitespace.exit

.critedge.thread.i:                               ; preds = %bb.e, %.critedge.i
  %i.t = add i64 %i.h, -1                         ; 2 uses
  store i64 %i.t, ptr %i.e, align 8, !tbaa !39
  br label %buffer_skip_whitespace.exit

buffer_skip_whitespace.exit:                      ; preds = %bb.d, %.critedge.i, %.critedge.thread.i
  %i.u = phi i64 [ %i.m, %bb.d ], [ %i.o, %.critedge.i ], [ %i.t, %.critedge.thread.i ] ; 5 uses
  %i.v = icmp ult i64 %i.u, %i.h
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %buffer_skip_whitespace.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.u
  %i.x = load i8, ptr %i.w, align 1, !tbaa !40
  %i.y = icmp eq i8 %i.x, 125
  br i1 %i.y, label %.thread114, label %bb.h

.thread114:                                       ; preds = %bb.f
  store i64 %i.b, ptr %i.a, align 8, !tbaa !97
  br label %bb.w

bb.g:                                             ; preds = %buffer_skip_whitespace.exit
  %i.z = add i64 %i.u, -1
  store i64 %i.z, ptr %i.e, align 8, !tbaa !39
  br label %.critedge.thread119

bb.h:                                             ; preds = %bb.f
  %i.aa = add i64 %i.u, -1
  store i64 %i.aa, ptr %i.e, align 8, !tbaa !39
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.i

bb.i:                                             ; preds = %bb.u, %bb.h
  %.071 = phi ptr [ null, %bb.h ], [ %.172, %bb.u ] ; 4 uses
  %.070 = phi ptr [ null, %bb.h ], [ %i.ac, %bb.u ] ; 2 uses
  %.val = load ptr, ptr %i.ab, align 8, !tbaa !21
  %i.ac = tail call ptr %.val(i64 noundef 64) #28, !inline_history !38 ; 11 uses
  %.not.i = icmp eq ptr %i.ac, null
  br i1 %.not.i, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ac, i8 0, i64 64, i1 false)
  %i.ad = icmp eq ptr %.071, null
  br i1 %i.ad, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr %i.ac, ptr %.070, align 8, !tbaa !27
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %.070, ptr %i.ae, align 8, !tbaa !74
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.172 = phi ptr [ %.071, %bb.k ], [ %i.ac, %bb.j ] ; 10 uses
  %i.af = load i64, ptr %i.e, align 8, !tbaa !39
  %i.ag = add i64 %i.af, 1                        ; 3 uses
  %i.ah = load i64, ptr %i.g, align 8, !tbaa !35  ; 4 uses
  %i.ai = icmp ult i64 %i.ag, %i.ah
  br i1 %i.ai, label %bb.m, label %.critedge.thread123

bb.m:                                             ; preds = %bb.l
  store i64 %i.ag, ptr %i.e, align 8, !tbaa !39
  %i.aj = load ptr, ptr %1, align 8, !tbaa !33    ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %buffer_skip_whitespace.exit97, label %.lr.ph.i93

.lr.ph.i93:                                       ; preds = %bb.m, %bb.n
  %i.al = phi i64 [ %i.ap, %bb.n ], [ %i.ag, %bb.m ] ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !40
  %i.ao = icmp ult i8 %i.an, 33
  br i1 %i.ao, label %bb.n, label %.critedge.i94

bb.n:                                             ; preds = %.lr.ph.i93
  %i.ap = add i64 %i.al, 1                        ; 3 uses
  store i64 %i.ap, ptr %i.e, align 8, !tbaa !39
  %exitcond.not.i96 = icmp eq i64 %i.ap, %i.ah
  br i1 %exitcond.not.i96, label %.critedge.thread.i95, label %.lr.ph.i93

.critedge.i94:                                    ; preds = %.lr.ph.i93
  %3 = icmp eq i64 %i.al, %i.ah
  br i1 %3, label %.critedge.thread.i95, label %buffer_skip_whitespace.exit97

.critedge.thread.i95:                             ; preds = %bb.n, %.critedge.i94
  %i.aq = add i64 %i.ah, -1
  store i64 %i.aq, ptr %i.e, align 8, !tbaa !39
  br label %buffer_skip_whitespace.exit97

buffer_skip_whitespace.exit97:                    ; preds = %bb.m, %.critedge.i94, %.critedge.thread.i95
  %i.ar = tail call fastcc i32 @parse_string(ptr noundef %i.ac, ptr noundef %1)
  %.not86 = icmp eq i32 %i.ar, 0
  br i1 %.not86, label %.critedge.thread123, label %bb.o

bb.o:                                             ; preds = %buffer_skip_whitespace.exit97
  %i.as = load ptr, ptr %1, align 8, !tbaa !33    ; 4 uses
  %i.at = icmp ne ptr %i.as, null
  %.pre = load i64, ptr %i.e, align 8, !tbaa !39  ; 3 uses
  %.pre159 = load i64, ptr %i.g, align 8, !tbaa !35 ; 9 uses
  %i.au = icmp ult i64 %.pre, %.pre159
  %or.cond = select i1 %i.at, i1 %i.au, i1 false
  br i1 %or.cond, label %.lr.ph.i99, label %buffer_skip_whitespace.exit103

.lr.ph.i99:                                       ; preds = %bb.o, %bb.p
  %i.av = phi i64 [ %i.az, %bb.p ], [ %.pre, %bb.o ] ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !40
  %i.ay = icmp ult i8 %i.ax, 33
  br i1 %i.ay, label %bb.p, label %.critedge.i100

bb.p:                                             ; preds = %.lr.ph.i99
  %i.az = add i64 %i.av, 1                        ; 3 uses
  store i64 %i.az, ptr %i.e, align 8, !tbaa !39
  %exitcond.not.i102 = icmp eq i64 %i.az, %.pre159
  br i1 %exitcond.not.i102, label %.critedge.thread.i101, label %.lr.ph.i99

.critedge.i100:                                   ; preds = %.lr.ph.i99
  %4 = icmp eq i64 %i.av, %.pre159
  br i1 %4, label %.critedge.thread.i101, label %buffer_skip_whitespace.exit103

.critedge.thread.i101:                            ; preds = %bb.p, %.critedge.i100
  %i.ba = add i64 %.pre159, -1                    ; 2 uses
  store i64 %i.ba, ptr %i.e, align 8, !tbaa !39
  br label %buffer_skip_whitespace.exit103

buffer_skip_whitespace.exit103:                   ; preds = %bb.o, %.critedge.i100, %.critedge.thread.i101
  %i.bb = phi i64 [ %.pre, %bb.o ], [ %i.ba, %.critedge.thread.i101 ], [ %i.av, %.critedge.i100 ] ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ac, i64 32 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !19
  %i.be = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !29
  store ptr null, ptr %i.bc, align 8, !tbaa !19
  %i.bf = icmp ult i64 %i.bb, %.pre159
  br i1 %i.bf, label %bb.q, label %.critedge.thread123

bb.q:                                             ; preds = %buffer_skip_whitespace.exit103
  %i.bg = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.bb
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !40
  %.not87 = icmp eq i8 %i.bh, 58
  br i1 %.not87, label %bb.r, label %.critedge.thread123

bb.r:                                             ; preds = %bb.q
  %i.bi = add nuw i64 %i.bb, 1                    ; 3 uses
  store i64 %i.bi, ptr %i.e, align 8, !tbaa !39
  %i.bj = icmp ult i64 %i.bi, %.pre159
  br i1 %i.bj, label %.lr.ph.i105, label %buffer_skip_whitespace.exit109

.lr.ph.i105:                                      ; preds = %bb.r, %bb.s
  %i.bk = phi i64 [ %i.bo, %bb.s ], [ %i.bi, %bb.r ] ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !40
  %i.bn = icmp ult i8 %i.bm, 33
  br i1 %i.bn, label %bb.s, label %.critedge.i106

bb.s:                                             ; preds = %.lr.ph.i105
  %i.bo = add i64 %i.bk, 1                        ; 3 uses
  store i64 %i.bo, ptr %i.e, align 8, !tbaa !39
  %exitcond.not.i108 = icmp eq i64 %i.bo, %.pre159
  br i1 %exitcond.not.i108, label %.critedge.thread.i107, label %.lr.ph.i105

.critedge.i106:                                   ; preds = %.lr.ph.i105
  %5 = icmp eq i64 %i.bk, %.pre159
  br i1 %5, label %.critedge.thread.i107, label %buffer_skip_whitespace.exit109

.critedge.thread.i107:                            ; preds = %bb.s, %.critedge.i106
  %i.bp = add i64 %.pre159, -1
  store i64 %i.bp, ptr %i.e, align 8, !tbaa !39
  br label %buffer_skip_whitespace.exit109

buffer_skip_whitespace.exit109:                   ; preds = %bb.r, %.critedge.i106, %.critedge.thread.i107
  %i.bq = tail call fastcc i32 @parse_value(ptr noundef %i.ac, ptr noundef nonnull %1)
  %.not88 = icmp eq i32 %i.bq, 0
  br i1 %.not88, label %.critedge.thread123, label %bb.t

bb.t:                                             ; preds = %buffer_skip_whitespace.exit109
  tail call fastcc void @buffer_skip_whitespace(ptr noundef nonnull %1)
  %i.br = load i64, ptr %i.e, align 8, !tbaa !39  ; 3 uses
  %i.bs = load i64, ptr %i.g, align 8, !tbaa !35
  %i.bt = icmp ult i64 %i.br, %i.bs
  br i1 %i.bt, label %bb.u, label %.critedge.thread123

bb.u:                                             ; preds = %bb.t
  %i.bu = load ptr, ptr %1, align 8, !tbaa !33
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.br
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !40
  switch i8 %i.bw, label %.critedge.thread123 [
    i8 44, label %bb.i
    i8 125, label %bb.v
  ]

bb.v:                                             ; preds = %bb.u
  %i.bx = load i64, ptr %i.a, align 8, !tbaa !97
  %i.by = add i64 %i.bx, -1
  store i64 %i.by, ptr %i.a, align 8, !tbaa !97
  %i.bz = getelementptr inbounds nuw i8, ptr %.172, i64 8
  store ptr %i.ac, ptr %i.bz, align 8, !tbaa !74
  br label %bb.w

bb.w:                                             ; preds = %.thread114, %bb.v
  %i.ca = phi i64 [ %i.u, %.thread114 ], [ %i.br, %bb.v ]
  %.374118 = phi ptr [ null, %.thread114 ], [ %.172, %bb.v ]
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 64, ptr %i.cb, align 8, !tbaa !15
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.374118, ptr %i.cc, align 8, !tbaa !28
  %i.cd = add nuw i64 %i.ca, 1
  store i64 %i.cd, ptr %i.e, align 8, !tbaa !39
  br label %.critedge.thread119

.critedge:                                        ; preds = %bb.i
  %.not91 = icmp eq ptr %.071, null
  br i1 %.not91, label %.critedge.thread119, label %.critedge.thread123

.critedge.thread123:                              ; preds = %buffer_skip_whitespace.exit97, %buffer_skip_whitespace.exit103, %bb.l, %bb.q, %buffer_skip_whitespace.exit109, %bb.t, %bb.u, %.critedge
  %.4126 = phi ptr [ %.071, %.critedge ], [ %.172, %bb.u ], [ %.172, %bb.t ], [ %.172, %buffer_skip_whitespace.exit109 ], [ %.172, %bb.q ], [ %.172, %bb.l ], [ %.172, %buffer_skip_whitespace.exit103 ], [ %.172, %buffer_skip_whitespace.exit97 ]
  tail call void @cJSON_Delete(ptr noundef nonnull %.4126)
  br label %.critedge.thread119

.critedge.thread119:                              ; preds = %bb.b, %bb.g, %bb.c, %.critedge, %.critedge.thread123, %bb.a, %bb.w
  %.075 = phi i32 [ 0, %bb.a ], [ 1, %bb.w ], [ 0, %.critedge.thread123 ], [ 0, %.critedge ], [ 0, %bb.c ], [ 0, %bb.g ], [ 0, %bb.b ]
  ret i32 %.075
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define internal fastcc range(i32 0, 65536) i32 @parse_hex4(ptr nofree noundef readonly captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !40      ; 4 uses
  %i.b = zext i8 %i.a to i32
  %i.c = add i8 %i.a, -48
  %or.cond = icmp ult i8 %i.c, 10
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i8 %i.a, -65
  %or.cond31 = icmp ult i8 %i.d, 6
  br i1 %or.cond31, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = add i8 %i.a, -97
  %or.cond32 = icmp ult i8 %i.e, 6
  br i1 %or.cond32, label %bb.d, label %bb.n

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.sink = phi i32 [ -48, %bb.a ], [ -55, %bb.b ], [ -87, %bb.c ]
  %i.f = add nsw i32 %.sink, %i.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !40    ; 4 uses
  %i.i = zext i8 %i.h to i32
  %i.j = add i8 %i.h, -48
  %or.cond.1 = icmp ult i8 %i.j, 10
  br i1 %or.cond.1, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = add i8 %i.h, -65
  %or.cond31.1 = icmp ult i8 %i.k, 6
  br i1 %or.cond31.1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = add i8 %i.h, -97
  %or.cond32.1 = icmp ult i8 %i.l, 6
  br i1 %or.cond32.1, label %bb.g, label %bb.n

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.f
  %.sink35 = phi i32 [ -55, %bb.e ], [ -87, %bb.f ], [ -48, %bb.d ]
  %i.m = add nsw i32 %.sink35, %i.i
  %i.n = shl nuw nsw i32 %i.f, 8
  %i.o = shl nuw nsw i32 %i.m, 4
  %i.p = add nuw nsw i32 %i.n, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.r = load i8, ptr %i.q, align 1, !tbaa !40    ; 4 uses
  %i.s = zext i8 %i.r to i32
  %i.t = add i8 %i.r, -48
  %or.cond.2 = icmp ult i8 %i.t, 10
  br i1 %or.cond.2, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = add i8 %i.r, -65
  %or.cond31.2 = icmp ult i8 %i.u, 6
  br i1 %or.cond31.2, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = add i8 %i.r, -97
  %or.cond32.2 = icmp ult i8 %i.v, 6
  br i1 %or.cond32.2, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  %.sink36 = phi i32 [ -55, %bb.h ], [ -87, %bb.i ], [ -48, %bb.g ]
  %i.w = add nsw i32 %.sink36, %i.s
  %.1.2 = add nuw nsw i32 %i.w, %i.p
  %i.x = shl nuw nsw i32 %.1.2, 4
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.z = load i8, ptr %i.y, align 1, !tbaa !40    ; 4 uses
  %i.aa = zext i8 %i.z to i32
  %i.ab = add i8 %i.z, -48
  %or.cond.3 = icmp ult i8 %i.ab, 10
  br i1 %or.cond.3, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = add i8 %i.z, -65
  %or.cond31.3 = icmp ult i8 %i.ac, 6
  br i1 %or.cond31.3, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ad = add i8 %i.z, -97
  %or.cond32.3 = icmp ult i8 %i.ad, 6
  br i1 %or.cond32.3, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.l
  %.sink37 = phi i32 [ -55, %bb.k ], [ -87, %bb.l ], [ -48, %bb.j ]
  %i.ae = add nsw i32 %.sink37, %i.aa
  %.1.3 = add nuw nsw i32 %i.ae, %i.x
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.i, %bb.f, %bb.c
  %.027 = phi i32 [ 0, %bb.c ], [ %.1.3, %bb.m ], [ 0, %bb.f ], [ 0, %bb.l ], [ 0, %bb.i ]
  ret i32 %.027
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr noundef captures(none)) local_unnamed_addr #23

; Function Attrs: nounwind
declare ptr @localeconv() local_unnamed_addr #24

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc ptr @ensure(ptr nofree noundef nonnull captures(none) %0, i64 noundef %1) unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !54     ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !56   ; 3 uses
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !58   ; 2 uses
  %.not52 = icmp uge i64 %i.f, %i.d
  %i.g = icmp ugt i64 %1, 2147483647
  %or.cond = or i1 %i.g, %.not52
  br i1 %or.cond, label %bb.r, label %bb.e

bb.d:                                             ; preds = %bb.b
  %.old = icmp ugt i64 %1, 2147483647
  br i1 %.old, label %bb.r, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !58
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.c
  %i.h = phi i64 [ %.pre, %._crit_edge ], [ %i.f, %bb.c ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = add nuw nsw i64 %1, 1
  %i.k = add i64 %i.j, %i.h                       ; 4 uses
  %.not53 = icmp ugt i64 %i.k, %i.d
  br i1 %.not53, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.h
  br label %bb.r

bb.g:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load i32, ptr %i.m, align 8, !tbaa !60
  %.not54 = icmp eq i32 %i.n, 0
end_hunk_0
