Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/ziplist?download=true
inline.NumInlined: 60
inline.NumDeleted: 6
begin_hunk_0_@zipEntry:bb.a
  %.ph.ph = phi i32 [ 2, %bb.g ], [ 5, %bb.h ], [ 1, %bb.f ], [ 1, %switch.lookup ]
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %.sink70, ptr %i.al, align 4, !tbaa !24
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.k
  %.ph = phi i32 [ 1, %bb.k ], [ %.ph.ph, %.sink.split ]
  %i.am = add nuw nsw i32 %.ph, %.
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 %i.am, ptr %i.an, align 8, !tbaa !23
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %0, ptr %i.ao, align 8, !tbaa !32
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc range(i32 0, 2) i32 @zipEntrySafe(ptr nofree noundef readnone captures(address) %0, i64 noundef range(i64 -2, 8589934605) %1, ptr noundef %2, ptr nofree noundef nonnull writeonly captures(none) %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -1 ; 8 uses
  %.not = icmp uge ptr %2, %i.a                   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.e = icmp ult ptr %i.d, %i.c
  %or.cond = select i1 %.not, i1 %i.e, i1 false
  br i1 %or.cond, label %bb.b, label %bb.s

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr %2, align 1, !tbaa !14
  %i.g = icmp ult i8 %i.f, -2                     ; 2 uses
  %. = select i1 %i.g, i32 1, i32 5               ; 4 uses
  store i32 %., ptr %3, align 8, !tbaa !27
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = load i8, ptr %2, align 1, !tbaa !14
  %i.i = zext i8 %i.h to i32
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %2, i64 1
  %i.k = load i32, ptr %i.j, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.l = phi i32 [ %i.i, %bb.c ], [ %i.k, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.l, ptr %i.m, align 4, !tbaa !26
  %i.n = zext nneg i32 %. to i64
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 %i.n ; 5 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !14    ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.r = icmp ult i8 %i.p, -64                    ; 2 uses
  %i.s = and i8 %i.p, -64
  %spec.select = select i1 %i.r, i8 %i.s, i8 %i.p
  store i8 %spec.select, ptr %i.q, align 4, !tbaa !29
  br i1 %i.r, label %bb.f, label %bb.k, !prof !30

bb.f:                                             ; preds = %bb.e
  %i.t = lshr i8 %i.p, 6
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  switch i8 %i.t, label %.unreachabledefault [
    i8 0, label %bb.g
    i8 1, label %bb.h
    i8 2, label %bb.i
    i8 3, label %bb.j
  ]

bb.g:                                             ; preds = %bb.f
  store i32 1, ptr %i.u, align 8, !tbaa !31
  %i.v = load i8, ptr %i.o, align 1, !tbaa !14
  %i.w = and i8 %i.v, 63
  %i.x = zext nneg i8 %i.w to i32
  br label %.sink.split

bb.h:                                             ; preds = %bb.f
  store i32 2, ptr %i.u, align 8, !tbaa !31
  %i.y = load i8, ptr %i.o, align 1, !tbaa !14
  %i.z = and i8 %i.y, 63
  %i.aa = zext nneg i8 %i.z to i32
  %i.ab = shl nuw nsw i32 %i.aa, 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !14
  %i.ae = zext i8 %i.ad to i32
  %i.af = or disjoint i32 %i.ab, %i.ae
  br label %.sink.split

bb.i:                                             ; preds = %bb.f
  store i32 5, ptr %i.u, align 8, !tbaa !31
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.ah = load i32, ptr %i.ag, align 1
  %i.ai = tail call i32 @llvm.bswap.i32(i32 %i.ah)
  br label %.sink.split

.unreachabledefault:                              ; preds = %bb.f
  unreachable

bb.j:                                             ; preds = %bb.f
  store i32 0, ptr %i.u, align 8, !tbaa !31
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.aj, align 4, !tbaa !24
  br label %bb.n

bb.k:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 1, ptr %i.ak, align 8, !tbaa !31
  %i.al = add nsw i8 %i.p, 64                     ; 2 uses
  %i.am = tail call i8 @llvm.fshl.i8(i8 %i.al, i8 %i.al, i8 7) ; 3 uses
  %i.an = icmp ult i8 %i.am, 32
  br i1 %i.an, label %switch.hole_check, label %bb.l

bb.l:                                             ; preds = %switch.hole_check, %bb.k
  %i.ao = add nsw i8 %i.p, 1
  %or.cond215 = icmp ult i8 %i.ao, -14
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.ap, align 4, !tbaa !24
  br i1 %or.cond215, label %bb.m, label %bb.o, !prof !30

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.ak, align 8, !tbaa !31
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.j
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %., ptr %i.aq, align 8, !tbaa !23
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %2, ptr %i.ar, align 8, !tbaa !32
  br label %bb.au

switch.hole_check:                                ; preds = %bb.k
  %switch.maskindex = zext nneg i8 %i.am to i32
  %switch.shifted = lshr i32 -2130640639, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %bb.l

switch.lookup:                                    ; preds = %switch.hole_check
  %i.as = zext nneg i8 %i.am to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.__ziplistInsert, i64 %i.as
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %.sink.split

.sink.split:                                      ; preds = %switch.lookup, %bb.h, %bb.i, %bb.g
  %.sink = phi i32 [ %i.af, %bb.h ], [ %i.ai, %bb.i ], [ %switch.ext, %switch.lookup ], [ %i.x, %bb.g ] ; 2 uses
  %.ph235.ph = phi i32 [ 2, %bb.h ], [ 5, %bb.i ], [ 1, %switch.lookup ], [ 1, %bb.g ]
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %.sink, ptr %i.at, align 4, !tbaa !24
  %i.au = zext i32 %.sink to i64
  br label %bb.o

bb.o:                                             ; preds = %.sink.split, %bb.l
  %.ph = phi i64 [ 0, %bb.l ], [ %i.au, %.sink.split ]
  %.ph235 = phi i32 [ 1, %bb.l ], [ %.ph235.ph, %.sink.split ]
  %i.av = add nuw nsw i32 %.ph235, %.             ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %i.av, ptr %i.aw, align 8, !tbaa !23
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %2, ptr %i.ax, align 8, !tbaa !32
  %i.ay = zext nneg i32 %i.av to i64
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %.ph ; 2 uses
  %i.bb = icmp ult ptr %i.ba, %i.a
  %i.bc = icmp ugt ptr %i.ba, %i.c
  %spec.select216 = select i1 %i.bb, i1 true, i1 %i.bc, !prof !25
  br i1 %spec.select216, label %bb.au, label %bb.p, !prof !25

bb.p:                                             ; preds = %bb.o
  %.not213 = icmp eq i32 %4, 0
  br i1 %.not213, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bd = zext i32 %i.l to i64
  %i.be = sub nsw i64 0, %i.bd
  %i.bf = getelementptr inbounds i8, ptr %2, i64 %i.be ; 2 uses
  %i.bg = icmp ult ptr %i.bf, %i.a
  %i.bh = icmp ugt ptr %i.bf, %i.c
  %spec.select217 = select i1 %i.bg, i1 true, i1 %i.bh, !prof !25
  br i1 %spec.select217, label %bb.au, label %bb.r, !prof !25

bb.r:                                             ; preds = %bb.q, %bb.p
  br label %bb.au

bb.s:                                             ; preds = %bb.a
  %i.bi = icmp ule ptr %2, %i.c
  %.not234 = select i1 %.not, i1 %i.bi, i1 false, !prof !19
  br i1 %.not234, label %bb.t, label %bb.au, !prof !19

bb.t:                                             ; preds = %bb.s
  %i.bj = load i8, ptr %2, align 1, !tbaa !14
  %i.bk = icmp ult i8 %i.bj, -2
  %.218 = select i1 %i.bk, i32 1, i32 5           ; 2 uses
  store i32 %.218, ptr %3, align 8, !tbaa !27
  %i.bl = zext nneg i32 %.218 to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 %i.bl ; 4 uses
  %i.bn = icmp ult ptr %i.bm, %i.a
  %i.bo = icmp ugt ptr %i.bm, %i.c
  %i.bp = select i1 %i.bn, i1 true, i1 %i.bo, !prof !25
  br i1 %i.bp, label %bb.au, label %bb.u, !prof !25

bb.u:                                             ; preds = %bb.t
  %i.bq = load i8, ptr %i.bm, align 1, !tbaa !14  ; 6 uses
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.bs = icmp ult i8 %i.bq, -64                  ; 2 uses
  %i.bt = and i8 %i.bq, -64
  %spec.select219 = select i1 %i.bs, i8 %i.bt, i8 %i.bq ; 5 uses
  store i8 %spec.select219, ptr %i.br, align 4, !tbaa !29
  %i.bu = add i8 %spec.select219, 64              ; 2 uses
  %i.bv = tail call i8 @llvm.fshl.i8(i8 %i.bu, i8 %i.bu, i8 7) ; 2 uses
  %i.bw = icmp ult i8 %i.bv, 32
  br i1 %i.bw, label %switch.hole_check239, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.old = add i8 %spec.select219, 15
  %or.cond14.i.old = icmp ult i8 %.old, 13
  br i1 %or.cond14.i.old, label %switch.lookup240, label %bb.w

bb.w:                                             ; preds = %switch.hole_check239, %bb.v
  switch i8 %spec.select219, label %zipEncodingLenSize.exit [
    i8 0, label %switch.lookup240
    i8 64, label %bb.x
    i8 -128, label %bb.y
  ]

bb.x:                                             ; preds = %bb.w
  br label %switch.lookup240

bb.y:                                             ; preds = %bb.w
  br label %switch.lookup240

zipEncodingLenSize.exit:                          ; preds = %bb.w
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 255, ptr %i.bx, align 8, !tbaa !31
  br label %bb.au

switch.hole_check239:                             ; preds = %bb.u
  %switch.maskindex241 = zext nneg i8 %i.bv to i32
  %switch.shifted242 = lshr i32 -2130640639, %switch.maskindex241
  %switch.lobit243 = trunc i32 %switch.shifted242 to i1
  %i.by = add i8 %spec.select219, 15
  %or.cond14.i = icmp ult i8 %i.by, 13
  %or.cond244 = or i1 %or.cond14.i, %switch.lobit243
  br i1 %or.cond244, label %switch.lookup240, label %bb.w

switch.lookup240:                                 ; preds = %switch.hole_check239, %bb.v, %bb.x, %bb.y, %bb.w
  %.0.i.ph = phi i32 [ 1, %bb.w ], [ 5, %bb.y ], [ 1, %bb.v ], [ 2, %bb.x ], [ 1, %switch.hole_check239 ] ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 7 uses
  store i32 %.0.i.ph, ptr %i.bz, align 8, !tbaa !31
  %i.ca = zext nneg i32 %.0.i.ph to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.ca ; 2 uses
  %i.cc = icmp ult ptr %i.cb, %i.a
  %i.cd = icmp ugt ptr %i.cb, %i.c
  %spec.select220 = select i1 %i.cc, i1 true, i1 %i.cd, !prof !25
  br i1 %spec.select220, label %bb.au, label %bb.z, !prof !25

bb.z:                                             ; preds = %switch.lookup240
  %i.ce = load i8, ptr %2, align 1, !tbaa !14
  %i.cf = icmp ult i8 %i.ce, -2                   ; 2 uses
  %.221 = select i1 %i.cf, i32 1, i32 5           ; 5 uses
  store i32 %.221, ptr %3, align 8, !tbaa !27
  br i1 %i.cf, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cg = load i8, ptr %2, align 1, !tbaa !14
  %i.ch = zext i8 %i.cg to i32
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.ci = getelementptr i8, ptr %2, i64 1
  %i.cj = load i32, ptr %i.ci, align 1
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  %i.ck = phi i32 [ %i.ch, %bb.aa ], [ %i.cj, %bb.ab ] ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.ck, ptr %i.cl, align 4, !tbaa !26
  br i1 %i.bs, label %bb.ad, label %bb.ai

bb.ad:                                            ; preds = %bb.ac
  %i.cm = lshr i8 %i.bq, 6
  switch i8 %i.cm, label %.unreachabledefault237 [
    i8 0, label %bb.ae
    i8 1, label %bb.af
    i8 2, label %bb.ag
    i8 3, label %bb.ah
  ]

bb.ae:                                            ; preds = %bb.ad
  store i32 1, ptr %i.bz, align 8, !tbaa !31
  %i.cn = zext nneg i32 %.221 to i64
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 %i.cn
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !14
  %i.cq = and i8 %i.cp, 63
  %i.cr = zext nneg i8 %i.cq to i32               ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %i.cr, ptr %i.cs, align 4, !tbaa !24
  br label %bb.aq

bb.af:                                            ; preds = %bb.ad
  store i32 2, ptr %i.bz, align 8, !tbaa !31
  %i.ct = zext nneg i32 %.221 to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 %i.ct ; 2 uses
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !14
  %i.cw = and i8 %i.cv, 63
  %i.cx = zext nneg i8 %i.cw to i32
  %i.cy = shl nuw nsw i32 %i.cx, 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cu, i64 1
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !14
  %i.db = zext i8 %i.da to i32
  %i.dc = or disjoint i32 %i.cy, %i.db            ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %i.dc, ptr %i.dd, align 4, !tbaa !24
  br label %bb.aq

bb.ag:                                            ; preds = %bb.ad
  store i32 5, ptr %i.bz, align 8, !tbaa !31
  %i.de = zext nneg i32 %.221 to i64
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 1
  %i.dh = load i32, ptr %i.dg, align 1
  %i.di = tail call i32 @llvm.bswap.i32(i32 %i.dh) ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %i.di, ptr %i.dj, align 4, !tbaa !24
  br label %bb.aq

.unreachabledefault237:                           ; preds = %bb.ad
  unreachable

bb.ah:                                            ; preds = %bb.ad
  store i32 0, ptr %i.bz, align 8, !tbaa !31
  %i.dk = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.dk, align 4, !tbaa !24
  br label %bb.aq

bb.ai:                                            ; preds = %bb.ac
  store i32 1, ptr %i.bz, align 8, !tbaa !31
  %5 = add nsw i8 %i.bq, 64                       ; 2 uses
  %6 = tail call i8 @llvm.fshl.i8(i8 %5, i8 %5, i8 7)
  switch i8 %6, label %bb.ao [
    i8 31, label %bb.aj
    i8 0, label %bb.ak
    i8 24, label %bb.al
    i8 8, label %bb.am
    i8 16, label %bb.an
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.dl = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 1, ptr %i.dl, align 4, !tbaa !24
  br label %bb.aq

bb.ak:                                            ; preds = %bb.ai
  %i.dm = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 2, ptr %i.dm, align 4, !tbaa !24
  br label %bb.aq

bb.al:                                            ; preds = %bb.ai
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 3, ptr %i.dn, align 4, !tbaa !24
  br label %bb.aq

bb.am:                                            ; preds = %bb.ai
  %i.do = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 4, ptr %i.do, align 4, !tbaa !24
  br label %bb.aq

bb.an:                                            ; preds = %bb.ai
  %i.dp = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 8, ptr %i.dp, align 4, !tbaa !24
  br label %bb.aq

bb.ao:                                            ; preds = %bb.ai
  %i.dq = add nsw i8 %i.bq, 1
  %or.cond222 = icmp ult i8 %i.dq, -14
  %i.dr = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.dr, align 4, !tbaa !24
  br i1 %or.cond222, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  store i32 0, ptr %i.bz, align 8, !tbaa !31
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ao, %bb.aj, %bb.al, %bb.an, %bb.ap, %bb.am, %bb.ak, %bb.ae, %bb.ag, %bb.ah, %bb.af
  %i.ds = phi i32 [ 1, %bb.aj ], [ 3, %bb.al ], [ 8, %bb.an ], [ 0, %bb.ap ], [ %i.dc, %bb.af ], [ 4, %bb.am ], [ 2, %bb.ak ], [ %i.cr, %bb.ae ], [ %i.di, %bb.ag ], [ 0, %bb.ah ], [ 0, %bb.ao ]
  %i.dt = phi i32 [ 1, %bb.aj ], [ 1, %bb.al ], [ 1, %bb.an ], [ 0, %bb.ap ], [ 2, %bb.af ], [ 1, %bb.am ], [ 1, %bb.ak ], [ 1, %bb.ae ], [ 5, %bb.ag ], [ 0, %bb.ah ], [ 1, %bb.ao ]
  %i.du = add nuw nsw i32 %i.dt, %.221            ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %i.du, ptr %i.dv, align 8, !tbaa !23
  %i.dw = zext nneg i32 %i.du to i64
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 %i.dw
  %i.dy = zext i32 %i.ds to i64
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.dy ; 2 uses
  %i.ea = icmp ult ptr %i.dz, %i.a
  %i.eb = icmp ugt ptr %i.dz, %i.c
  %spec.select223 = select i1 %i.ea, i1 true, i1 %i.eb, !prof !25
  br i1 %spec.select223, label %bb.au, label %bb.ar, !prof !25

bb.ar:                                            ; preds = %bb.aq
  %.not209 = icmp eq i32 %4, 0
  br i1 %.not209, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ec = zext i32 %i.ck to i64
  %i.ed = sub nsw i64 0, %i.ec
  %i.ee = getelementptr inbounds i8, ptr %2, i64 %i.ed ; 2 uses
  %i.ef = icmp ult ptr %i.ee, %i.a
  %i.eg = icmp ugt ptr %i.ee, %i.c
  %spec.select224 = select i1 %i.ef, i1 true, i1 %i.eg, !prof !25
  br i1 %spec.select224, label %bb.au, label %bb.at, !prof !25

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.eh = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %2, ptr %i.eh, align 8, !tbaa !32
  br label %bb.au

bb.au:                                            ; preds = %bb.n, %zipEncodingLenSize.exit, %bb.as, %bb.aq, %switch.lookup240, %bb.t, %bb.s, %bb.q, %bb.o, %bb.at, %bb.r
  %.0 = phi i32 [ 1, %bb.at ], [ 0, %bb.n ], [ 0, %bb.o ], [ 1, %bb.r ], [ 0, %bb.q ], [ 0, %bb.s ], [ 0, %bb.t ], [ 0, %zipEncodingLenSize.exit ], [ 0, %switch.lookup240 ], [ 0, %bb.aq ], [ 0, %bb.as ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @__ziplistDelete(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %3 = alloca %struct.zlentry, align 8            ; 5 uses
  %4 = alloca %struct.zlentry, align 8            ; 6 uses
  %5 = alloca %struct.zlentry, align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.a = load i32, ptr %0, align 4, !tbaa !13
  %i.b = zext i32 %i.a to i64                     ; 5 uses
  call fastcc void @zipEntry(ptr noundef %1, ptr noundef %4)
  %i.c = load i8, ptr %1, align 1, !tbaa !14      ; 2 uses
  %i.d = icmp ne i8 %i.c, -1                      ; 2 uses
  %i.e = icmp ne i32 %2, 0
  %i.f = and i1 %i.d, %i.e
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 12
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %zipRawEntryLengthSafe.exit
  %.06084 = phi i32 [ 0, %.lr.ph ], [ %i.o, %zipRawEntryLengthSafe.exit ]
  %.06183 = phi ptr [ %1, %.lr.ph ], [ %i.n, %zipRawEntryLengthSafe.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.i = call fastcc i32 @zipEntrySafe(ptr noundef nonnull readnone %0, i64 noundef range(i64 0, 4294967296) %i.b, ptr noundef nonnull %.06183, ptr noundef %3, i32 noundef 0)
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %bb.c, label %zipRawEntryLengthSafe.exit, !prof !25

bb.c:                                             ; preds = %bb.b
  tail call void @_serverAssert(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.1, i32 noundef 693) #18
  tail call void @abort() #19
  unreachable

zipRawEntryLengthSafe.exit:                       ; preds = %bb.b
  %i.j = load i32, ptr %i.g, align 8, !tbaa !23
  %i.k = load i32, ptr %i.h, align 4, !tbaa !24
  %i.l = add i32 %i.k, %i.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %.06183, i64 %i.m ; 3 uses
  %i.o = add nuw i32 %.06084, 1                   ; 3 uses
  %i.p = load i8, ptr %i.n, align 1, !tbaa !14    ; 2 uses
  %i.q = icmp ne i8 %i.p, -1                      ; 2 uses
  %i.r = icmp ult i32 %i.o, %2
  %i.s = select i1 %i.q, i1 %i.r, i1 false
  br i1 %i.s, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !40

._crit_edge.loopexit:                             ; preds = %zipRawEntryLengthSafe.exit
  %indvars = trunc i32 %i.o to i16
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.061.lcssa = phi ptr [ %1, %bb.a ], [ %i.n, %._crit_edge.loopexit ] ; 3 uses
  %.059.lcssa = phi i16 [ 0, %bb.a ], [ %indvars, %._crit_edge.loopexit ]
  %.lcssa79 = phi i8 [ %i.c, %bb.a ], [ %i.p, %._crit_edge.loopexit ]
  %.lcssa = phi i1 [ %i.d, %bb.a ], [ %i.q, %._crit_edge.loopexit ]
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !32   ; 4 uses
  %.not = icmp ult ptr %.061.lcssa, %i.u
  br i1 %.not, label %bb.d, label %bb.e, !prof !25

bb.d:                                             ; preds = %._crit_edge
  tail call void @_serverAssert(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 862) #18
  tail call void @abort() #19
  unreachable

bb.e:                                             ; preds = %._crit_edge
  %i.v = ptrtoint ptr %.061.lcssa to i64
  %i.w = ptrtoint ptr %i.u to i64                 ; 3 uses
  %i.x = sub i64 %i.v, %i.w
  %i.y = trunc i64 %i.x to i32                    ; 3 uses
  %.not66 = icmp eq i32 %i.y, 0
  br i1 %.not66, label %bb.u, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %.lcssa, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !26  ; 3 uses
  %.not72 = icmp eq i8 %.lcssa79, -2
  %..i = select i1 %.not72, i32 -5, i32 -1
  %i.ab = icmp ult i32 %i.aa, 254                 ; 2 uses
  %i.ac = select i1 %i.ab, i32 1, i32 5
  %i.ad = add nsw i32 %i.ac, %..i                 ; 3 uses
  %narrow = sub nsw i32 0, %i.ad
  %i.ae = sext i32 %narrow to i64
  %i.af = getelementptr inbounds i8, ptr %.061.lcssa, i64 %i.ae ; 8 uses
  %i.ag = icmp uge ptr %i.af, %i.u
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %i.b
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 -1
  %i.aj = icmp ult ptr %i.af, %i.ai
  %i.ak = select i1 %i.ag, i1 %i.aj, i1 false, !prof !19
  br i1 %i.ak, label %bb.i, label %bb.h, !prof !19

bb.h:                                             ; preds = %bb.g
  tail call void @_serverAssert(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 878) #18
  tail call void @abort() #19
  unreachable

bb.i:                                             ; preds = %bb.g
  br i1 %i.ab, label %bb.j, label %zipStorePrevEntryLengthLarge.exit.i

bb.j:                                             ; preds = %bb.i
  %i.al = trunc nuw i32 %i.aa to i8
  br label %zipStorePrevEntryLength.exit

zipStorePrevEntryLengthLarge.exit.i:              ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  store i32 %i.aa, ptr %i.am, align 1
  br label %zipStorePrevEntryLength.exit

zipStorePrevEntryLength.exit:                     ; preds = %bb.j, %zipStorePrevEntryLengthLarge.exit.i
  %.sink = phi i8 [ %i.al, %bb.j ], [ -2, %zipStorePrevEntryLengthLarge.exit.i ]
end_hunk_0
