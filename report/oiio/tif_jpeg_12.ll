Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/tif_jpeg_12?download=true
inline.NumInlined: 40
inline.NumDeleted: 16
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 10
begin_hunk_0_@JPEGPostEncode:bb.a
  %i.p = load i32, ptr %i.o, align 4, !tbaa !125
  %i.q = shl i32 %i.p, 3
  %i.r = zext i32 %i.q to i64
  %i.s = load i32, ptr %i.c, align 8, !tbaa !126
  %i.t = mul nsw i32 %i.s, %i.n                   ; 2 uses
  %i.u = shl nsw i32 %i.n, 3                      ; 2 uses
  %i.v = icmp slt i32 %i.t, %i.u
  br i1 %i.v, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv39
  %i.x = sext i32 %i.t to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ %i.x, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !138
  %i.z = getelementptr inbounds [8 x i8], ptr %i.y, i64 %indvars.iv ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !128
  %i.ab = getelementptr i8, ptr %i.z, i64 -8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !128
  tail call void @_TIFFmemcpy(ptr noundef %i.aa, ptr noundef %i.ac, i64 noundef %i.r) #16
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.u, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.d

._crit_edge.loopexit:                             ; preds = %bb.d
  %.pre = load i32, ptr %i.f, align 4, !tbaa !21
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %i.ad = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.l, %bb.c ] ; 2 uses
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.02834, i64 96
  %i.af = sext i32 %i.ad to i64
  %i.ag = icmp slt i64 %indvars.iv.next40, %i.af
  br i1 %i.ag, label %bb.c, label %._crit_edge37

._crit_edge37:                                    ; preds = %._crit_edge, %bb.b
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 352
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !21
  %i.aj = shl nsw i32 %i.ai, 3                    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 1184
  %i.al = tail call fastcc i32 @TIFFjpeg_write_raw_data(ptr noundef nonnull %i.b, ptr noundef nonnull %i.ak, i32 noundef %i.aj)
  %.not = icmp eq i32 %i.al, %i.aj
  br i1 %.not, label %._crit_edge37._crit_edge, label %bb.f

._crit_edge37._crit_edge:                         ; preds = %._crit_edge37
  %.pre42 = load ptr, ptr %i.a, align 8, !tbaa !43
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge37._crit_edge, %bb.a
  %i.am = phi ptr [ %.pre42, %._crit_edge37._crit_edge ], [ %i.b, %bb.a ]
  %i.an = tail call fastcc i32 @TIFFjpeg_finish_compress(ptr noundef %i.am)
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge37, %bb.e
  %.1 = phi i32 [ %i.an, %bb.e ], [ 0, %._crit_edge37 ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @JPEGEncode(ptr noundef %0, ptr noundef %1, i64 noundef %2, i16 zeroext %3) #0 {
bb.a:
  %i.a = alloca [1 x ptr], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !43   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1176 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !121  ; 2 uses
  %i.f = sdiv i64 %2, %i.e                        ; 3 uses
  %i.g = srem i64 %2, %i.e
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %0, align 8, !tbaa !127
  tail call void (ptr, ptr, ptr, ...) @TIFFWarningExtR(ptr noundef nonnull %0, ptr noundef %i.h, ptr noundef nonnull @.str.36) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i32, ptr %i.i, align 8, !tbaa !66
  %i.k = and i32 %i.j, 1024
  %.not51 = icmp eq i32 %i.k, 0
  br i1 %.not51, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 844
  %i.m = load i32, ptr %i.l, align 4, !tbaa !120  ; 2 uses
  %i.n = zext i32 %i.m to i64
  %i.o = add nsw i64 %i.f, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.q = load i32, ptr %i.p, align 4, !tbaa !189  ; 2 uses
  %i.r = zext i32 %i.q to i64
  %i.s = icmp sgt i64 %i.o, %i.r
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = sub i32 %i.q, %i.m
  %i.u = zext i32 %i.t to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.049 = phi i64 [ %i.f, %bb.c ], [ %i.u, %bb.e ], [ %i.f, %bb.d ] ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 88 ; 4 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !21
  %i.x = icmp eq i32 %i.w, 12
  br i1 %i.x, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.y = load i64, ptr %i.d, align 8, !tbaa !121
  %i.z = shl nsw i64 %i.y, 1
  %i.aa = sdiv i64 %i.z, 3                        ; 2 uses
  %i.ab = trunc i64 %i.aa to i32
  %sext = shl i64 %i.aa, 32
  %i.ac = ashr exact i64 %sext, 31
  %i.ad = tail call ptr @_TIFFmallocExt(ptr noundef nonnull %0, i64 noundef %i.ac) #16 ; 2 uses
  %.not52 = icmp eq ptr %i.ad, null
  br i1 %.not52, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38) #16
  br label %.loopexit55

bb.i:                                             ; preds = %bb.g, %bb.f
  %.048 = phi ptr [ %i.ad, %bb.g ], [ null, %bb.f ] ; 7 uses
  %.047 = phi i32 [ %i.ab, %bb.g ], [ 0, %bb.f ]
  %i.ae = icmp sgt i64 %.049, 0
  br i1 %i.ae, label %.lr.ph59, label %._crit_edge

.lr.ph59:                                         ; preds = %bb.i
  %.047.fr = freeze i32 %.047                     ; 3 uses
  %i.af = add nsw i64 %.049, -1                   ; 2 uses
  %i.ag = icmp sgt i32 %.047.fr, 1
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 844 ; 4 uses
  br i1 %i.ag, label %.lr.ph59.split.us.preheader, label %.lr.ph59.split

.lr.ph59.split.us.preheader:                      ; preds = %.lr.ph59
  %i.ai = lshr i32 %.047.fr, 1
  %wide.trip.count = zext nneg i32 %i.ai to i64   ; 5 uses
  %i.aj = shl nuw nsw i64 %wide.trip.count, 2
  %scevgep = getelementptr i8, ptr %.048, i64 %i.aj
  %i.ak = mul nuw nsw i64 %wide.trip.count, 3
  %min.iters.check = icmp ult i32 %.047.fr, 10
  %i.al = and i64 %wide.trip.count, 3             ; 2 uses
  %i.am = icmp eq i64 %i.al, 0
  %i.an = select i1 %i.am, i64 4, i64 %i.al
  %n.vec = sub nsw i64 %wide.trip.count, %i.an    ; 2 uses
  br label %.lr.ph59.split.us

.lr.ph59.split.us:                                ; preds = %.lr.ph59.split.us.preheader, %bb.m
  %i.ao = phi i64 [ %i.du, %bb.m ], [ %i.af, %.lr.ph59.split.us.preheader ] ; 3 uses
  %.04558.us = phi ptr [ %i.dt, %bb.m ], [ %1, %.lr.ph59.split.us.preheader ] ; 9 uses
  %.157.us = phi i64 [ %i.ao, %bb.m ], [ %.049, %.lr.ph59.split.us.preheader ]
  %i.ap = load i32, ptr %i.v, align 8, !tbaa !21
  %i.aq = icmp eq i32 %i.ap, 12
  br i1 %i.aq, label %.lr.ph.us, label %bb.j

bb.j:                                             ; preds = %.lr.ph59.split.us
  store ptr %.04558.us, ptr %i.a, align 8, !tbaa !128
  br label %..loopexit_crit_edge.us

.lr.ph.us:                                        ; preds = %.lr.ph59.split.us
  store ptr %.048, ptr %i.a, align 8, !tbaa !128
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.us
  %scevgep72 = getelementptr i8, ptr %.04558.us, i64 %i.ak
  %bound0 = icmp ult ptr %.048, %scevgep72
  %bound1 = icmp ult ptr %.04558.us, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 6 uses
  %i.ar = mul nuw nsw i64 %index, 3
  %i.as = mul nuw i64 %index, 3
  %i.at = mul nuw i64 %index, 3
  %i.au = mul nuw i64 %index, 3
  %i.av = getelementptr inbounds nuw i8, ptr %.04558.us, i64 %i.ar ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.04558.us, i64 %i.as ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 3
  %i.ay = getelementptr inbounds nuw i8, ptr %.04558.us, i64 %i.at ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 6
  %i.ba = getelementptr inbounds nuw i8, ptr %.04558.us, i64 %i.au ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 9
  %i.bc = shl nuw nsw i64 %index, 2
  %i.bd = getelementptr inbounds nuw i8, ptr %.048, i64 %i.bc
  %i.be = load i8, ptr %i.av, align 1, !tbaa !21, !alias.scope !190
  %i.bf = load i8, ptr %i.ax, align 1, !tbaa !21, !alias.scope !190
  %i.bg = load i8, ptr %i.az, align 1, !tbaa !21, !alias.scope !190
  %i.bh = load i8, ptr %i.bb, align 1, !tbaa !21, !alias.scope !190
  %i.bi = insertelement <4 x i8> poison, i8 %i.be, i64 0
  %i.bj = insertelement <4 x i8> %i.bi, i8 %i.bf, i64 1
  %i.bk = insertelement <4 x i8> %i.bj, i8 %i.bg, i64 2
  %i.bl = insertelement <4 x i8> %i.bk, i8 %i.bh, i64 3
  %i.bm = zext <4 x i8> %i.bl to <4 x i16>
  %i.bn = shl nuw nsw <4 x i16> %i.bm, splat (i16 4)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.av, i64 1
  %i.bp = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ay, i64 7
  %i.br = getelementptr inbounds nuw i8, ptr %i.ba, i64 10
  %i.bs = load i8, ptr %i.bo, align 1, !tbaa !21, !alias.scope !190
  %i.bt = load i8, ptr %i.bp, align 1, !tbaa !21, !alias.scope !190
  %i.bu = load i8, ptr %i.bq, align 1, !tbaa !21, !alias.scope !190
  %i.bv = load i8, ptr %i.br, align 1, !tbaa !21, !alias.scope !190
  %i.bw = insertelement <4 x i8> poison, i8 %i.bs, i64 0
  %i.bx = insertelement <4 x i8> %i.bw, i8 %i.bt, i64 1
  %i.by = insertelement <4 x i8> %i.bx, i8 %i.bu, i64 2
  %i.bz = insertelement <4 x i8> %i.by, i8 %i.bv, i64 3 ; 2 uses
  %i.ca = lshr <4 x i8> %i.bz, splat (i8 4)
  %i.cb = zext nneg <4 x i8> %i.ca to <4 x i16>
  %i.cc = or disjoint <4 x i16> %i.bn, %i.cb
  %i.cd = and <4 x i8> %i.bz, splat (i8 15)
  %i.ce = zext nneg <4 x i8> %i.cd to <4 x i16>
  %i.cf = shl nuw nsw <4 x i16> %i.ce, splat (i16 8)
  %i.cg = getelementptr inbounds nuw i8, ptr %i.av, i64 2
  %i.ch = getelementptr inbounds nuw i8, ptr %i.aw, i64 5
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ba, i64 11
  %i.ck = load i8, ptr %i.cg, align 1, !tbaa !21, !alias.scope !190
  %i.cl = load i8, ptr %i.ch, align 1, !tbaa !21, !alias.scope !190
  %i.cm = load i8, ptr %i.ci, align 1, !tbaa !21, !alias.scope !190
  %i.cn = load i8, ptr %i.cj, align 1, !tbaa !21, !alias.scope !190
  %i.co = insertelement <4 x i8> poison, i8 %i.ck, i64 0
  %i.cp = insertelement <4 x i8> %i.co, i8 %i.cl, i64 1
  %i.cq = insertelement <4 x i8> %i.cp, i8 %i.cm, i64 2
  %i.cr = insertelement <4 x i8> %i.cq, i8 %i.cn, i64 3
  %i.cs = zext <4 x i8> %i.cr to <4 x i16>
  %i.ct = or disjoint <4 x i16> %i.cf, %i.cs
  %interleaved.vec = shufflevector <4 x i16> %i.cc, <4 x i16> %i.ct, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec, ptr %i.bd, align 2, !tbaa !77, !alias.scope !191, !noalias !190
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cu = icmp eq i64 %index.next, %n.vec
  br i1 %i.cu, label %scalar.ph.preheader, label %vector.body, !llvm.loop !187

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph.us
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.us ], [ %n.vec, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.cv = mul nuw nsw i64 %indvars.iv, 3
  %i.cw = getelementptr inbounds nuw i8, ptr %.04558.us, i64 %i.cv ; 3 uses
  %.idx = shl nuw nsw i64 %indvars.iv, 2
  %i.cx = getelementptr inbounds nuw i8, ptr %.048, i64 %.idx ; 2 uses
  %i.cy = load i8, ptr %i.cw, align 1, !tbaa !21
  %i.cz = zext i8 %i.cy to i16
  %i.da = shl nuw nsw i16 %i.cz, 4
  %i.db = getelementptr inbounds nuw i8, ptr %i.cw, i64 1 ; 2 uses
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !21
  %i.dd = lshr i8 %i.dc, 4
  %i.de = zext nneg i8 %i.dd to i16
  %i.df = or disjoint i16 %i.da, %i.de
  store i16 %i.df, ptr %i.cx, align 2, !tbaa !77
  %i.dg = load i8, ptr %i.db, align 1, !tbaa !21
  %i.dh = and i8 %i.dg, 15
  %i.di = zext nneg i8 %i.dh to i16
  %i.dj = shl nuw nsw i16 %i.di, 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cw, i64 2
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !21
  %i.dm = zext i8 %i.dl to i16
  %i.dn = or disjoint i16 %i.dj, %i.dm
  %i.do = getelementptr inbounds nuw i8, ptr %i.cx, i64 2
  store i16 %i.dn, ptr %i.do, align 2, !tbaa !77
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %..loopexit_crit_edge.us, label %scalar.ph, !llvm.loop !188

..loopexit_crit_edge.us:                          ; preds = %scalar.ph, %bb.j
  %i.dp = call fastcc i32 @TIFFjpeg_write_scanlines(ptr noundef nonnull %i.c, ptr noundef %i.a)
  %.not53.us = icmp eq i32 %i.dp, 1
  br i1 %.not53.us, label %bb.k, label %.loopexit55

bb.k:                                             ; preds = %..loopexit_crit_edge.us
  %.not54.us = icmp eq i64 %.157.us, 1
  br i1 %.not54.us, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dq = load i32, ptr %i.ah, align 4, !tbaa !120
  %i.dr = add i32 %i.dq, 1
  store i32 %i.dr, ptr %i.ah, align 4, !tbaa !120
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ds = load i64, ptr %i.d, align 8, !tbaa !121
  %i.dt = getelementptr inbounds i8, ptr %.04558.us, i64 %i.ds
  %i.du = add nsw i64 %i.ao, -1
  %.not69 = icmp eq i64 %i.ao, 0
  br i1 %.not69, label %._crit_edge, label %.lr.ph59.split.us

.lr.ph59.split:                                   ; preds = %.lr.ph59, %bb.p
  %i.dv = phi i64 [ %i.ed, %bb.p ], [ %i.af, %.lr.ph59 ] ; 3 uses
  %.04558 = phi ptr [ %i.ec, %bb.p ], [ %1, %.lr.ph59 ] ; 2 uses
  %.157 = phi i64 [ %i.dv, %bb.p ], [ %.049, %.lr.ph59 ]
  %i.dw = load i32, ptr %i.v, align 8, !tbaa !21
  %i.dx = icmp eq i32 %i.dw, 12
  %spec.select = select i1 %i.dx, ptr %.048, ptr %.04558
  store ptr %spec.select, ptr %i.a, align 8, !tbaa !128
  %i.dy = call fastcc i32 @TIFFjpeg_write_scanlines(ptr noundef nonnull %i.c, ptr noundef %i.a)
  %.not53 = icmp eq i32 %i.dy, 1
  br i1 %.not53, label %bb.n, label %.loopexit55

bb.n:                                             ; preds = %.lr.ph59.split
  %.not54 = icmp eq i64 %.157, 1
  br i1 %.not54, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dz = load i32, ptr %i.ah, align 4, !tbaa !120
  %i.ea = add i32 %i.dz, 1
  store i32 %i.ea, ptr %i.ah, align 4, !tbaa !120
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.eb = load i64, ptr %i.d, align 8, !tbaa !121
  %i.ec = getelementptr inbounds i8, ptr %.04558, i64 %i.eb
  %i.ed = add nsw i64 %i.dv, -1
  %.not68 = icmp eq i64 %i.dv, 0
  br i1 %.not68, label %._crit_edge, label %.lr.ph59.split

._crit_edge:                                      ; preds = %bb.p, %bb.m, %bb.i
  %i.ee = load i32, ptr %i.v, align 8, !tbaa !21
  %i.ef = icmp eq i32 %i.ee, 12
  br i1 %i.ef, label %bb.q, label %.loopexit55

bb.q:                                             ; preds = %._crit_edge
  call void @_TIFFfreeExt(ptr noundef %0, ptr noundef %.048) #16
  br label %.loopexit55

.loopexit55:                                      ; preds = %.lr.ph59.split, %..loopexit_crit_edge.us, %._crit_edge, %bb.q, %bb.h
  %.0 = phi i32 [ 0, %bb.h ], [ 1, %._crit_edge ], [ 1, %bb.q ], [ 0, %..loopexit_crit_edge.us ], [ 0, %.lr.ph59.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal void @JPEGCleanup(ptr noundef initializes((1256, 1280)) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1072 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1272
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1256
  %i.e = load <2 x ptr>, ptr %i.c, align 8, !tbaa !44
  %i.f = shufflevector <2 x ptr> %i.e, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.f, ptr %i.d, align 8, !tbaa !44
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 1288
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !46
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1272
  store ptr %i.h, ptr %i.i, align 8, !tbaa !45
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 656
  %i.k = load i32, ptr %i.j, align 8, !tbaa !67
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @TIFFjpeg_destroy(ptr noundef nonnull %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 1312
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !47   ; 2 uses
  %.not16 = icmp eq ptr %i.m, null
  br i1 %.not16, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef nonnull %i.m) #16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !43
  tail call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef %i.n) #16
  store ptr null, ptr %i.a, align 8, !tbaa !43
  tail call void @_TIFFSetDefaultCompressionState(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @JPEGDefaultStripSize(ptr noundef %0, i32 noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1296
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !192
  %i.e = tail call i32 %i.d(ptr noundef %0, i32 noundef %1) #16 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.g = load i32, ptr %i.f, align 4, !tbaa !84
  %i.h = icmp ult i32 %i.e, %i.g
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 338
  %i.j = load i16, ptr %i.i, align 2, !tbaa !77
  %i.k = zext i16 %i.j to i32
  %i.l = shl nuw nsw i32 %i.k, 3                  ; 3 uses
  %i.m = sub nsw i32 0, %i.l
  %i.n = icmp ult i32 %i.e, %i.m
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = add i32 %i.e, -1
  %i.p = add i32 %i.o, %i.l
  %.fr = freeze i32 %i.p                          ; 2 uses
  %i.q = urem i32 %.fr, %i.l
  %i.r = sub nuw i32 %.fr, %i.q
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ %i.e, %bb.a ], [ %i.r, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal void @JPEGDefaultTileSize(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
end_hunk_0
