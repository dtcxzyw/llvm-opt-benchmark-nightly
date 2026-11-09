Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rmodels?download=true
inline.NumInlined: 1421
inline.NumDeleted: 227
loop-unroll.NumCompletelyUnrolled: 83
loop-unroll.NumRuntimeUnrolled: 99
loop-unroll.NumUnrolled: 188
begin_hunk_0_@_m3dstbi__zbuild_huffman:bb.a
  %i.bu = shl i32 %i.bn, 1
  %i.bv = add nsw i32 %i.bm, %.06374
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1 ; 2 uses
  %exitcond90.not = icmp eq i64 %indvars.iv.next88, 16
  br i1 %exitcond90.not, label %bb.e, label %bb.c

bb.e:                                             ; preds = %bb.d
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 1120
  store i32 65536, ptr %i.bw, align 4
  br i1 %i.c, label %.lr.ph81, label %.loopexit70

.lr.ph81:                                         ; preds = %bb.e
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 1156
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 1444
  %wide.trip.count97 = zext nneg i32 %2 to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph81, %bb.i
  %indvars.iv94 = phi i64 [ 0, %.lr.ph81 ], [ %indvars.iv.next95, %bb.i ] ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv94
  %i.ca = load i8, ptr %i.bz, align 1             ; 5 uses
  %i.cb = zext i8 %i.ca to i32                    ; 3 uses
  %.not = icmp eq i8 %i.ca, 0
  br i1 %.not, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cc = zext i8 %i.ca to i64                    ; 3 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cc ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4            ; 3 uses
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %i.bd, i64 %i.cc
  %i.cg = load i16, ptr %i.cf, align 2
  %i.ch = zext i16 %i.cg to i32
  %i.ci = sub i32 %i.ce, %i.ch
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %i.be, i64 %i.cc
  %i.ck = load i16, ptr %i.cj, align 2
  %i.cl = zext i16 %i.ck to i32
  %i.cm = add nsw i32 %i.ci, %i.cl
  %i.cn = shl nuw nsw i32 %i.cb, 9
  %i.co = trunc nuw nsw i64 %indvars.iv94 to i32
  %i.cp = or i32 %i.cn, %i.co
  %i.cq = trunc i32 %i.cp to i16
  %i.cr = sext i32 %i.cm to i64                   ; 2 uses
  %i.cs = getelementptr inbounds i8, ptr %i.bx, i64 %i.cr
  store i8 %i.ca, ptr %i.cs, align 1
  %i.ct = trunc i64 %indvars.iv94 to i16
  %i.cu = getelementptr inbounds [2 x i8], ptr %i.by, i64 %i.cr
  store i16 %i.ct, ptr %i.cu, align 2
  %i.cv = icmp ult i8 %i.ca, 10
  br i1 %i.cv, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %bb.g
  %trunc.i.i = trunc i32 %i.ce to i16
  %rev.i.i = tail call i16 @llvm.bitreverse.i16(i16 %trunc.i.i)
  %i.cw = zext i16 %rev.i.i to i32
  %i.cx = sub nuw nsw i32 16, %i.cb
  %i.cy = lshr i32 %i.cw, %i.cx
  %i.cz = shl nuw nsw i32 1, %i.cb
  %i.da = zext nneg i32 %i.cy to i64
  %i.db = zext nneg i32 %i.cz to i64
  br label %bb.h

bb.h:                                             ; preds = %iter.check, %bb.h
  %indvars.iv91 = phi i64 [ %i.da, %iter.check ], [ %indvars.iv.next92, %bb.h ] ; 2 uses
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv91
  store i16 %i.cq, ptr %i.dc, align 2
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, %i.db ; 2 uses
  %i.dd = icmp samesign ult i64 %indvars.iv.next92, 512
  br i1 %i.dd, label %bb.h, label %.loopexit, !llvm.loop !285

.loopexit:                                        ; preds = %bb.h, %bb.g
  %i.de = add nsw i32 %i.ce, 1
  store i32 %i.de, ptr %i.cd, align 4
  br label %bb.i

bb.i:                                             ; preds = %.loopexit, %bb.f
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1 ; 2 uses
  %exitcond98.not = icmp eq i64 %indvars.iv.next95, %wide.trip.count97
  br i1 %exitcond98.not, label %.loopexit70, label %bb.f

.loopexit70:                                      ; preds = %bb.c, %bb.i, %bb.b, %._crit_edge.thread, %._crit_edge, %bb.e
  %.065 = phi i32 [ 1, %bb.e ], [ 0, %bb.b ], [ 1, %bb.i ], [ 0, %._crit_edge ], [ 0, %._crit_edge.thread ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #54
  ret i32 %.065
}

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @_m3dstbi__create_png_image_raw(ptr nofree noundef nonnull captures(none) initializes((24, 32)) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef range(i32 0, 256) %7) unnamed_addr #25 {
bb.a:
  %i.a = icmp eq i32 %6, 16                       ; 5 uses
  %i.b = load ptr, ptr %0, align 8                ; 3 uses
  %i.c = mul i32 %4, %3                           ; 4 uses
  %i.d = zext i1 %i.a to i32                      ; 3 uses
  %i.e = shl i32 %i.c, %i.d                       ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load i32, ptr %i.f, align 8              ; 8 uses
  %i.h = shl i32 %3, %i.d                         ; 12 uses
  %i.i = shl i32 %i.g, %i.d
  %i.j = or i32 %5, %4
  %or.cond.not.i.i.i = icmp sgt i32 %i.j, -1
  br i1 %or.cond.not.i.i.i, label %bb.b, label %_m3dstbi__malloc_mad3.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.k = icmp eq i32 %5, 0                        ; 2 uses
  br i1 %i.k, label %_m3dstbi__mul2sizes_valid.exit.thread15.i.i, label %_m3dstbi__mul2sizes_valid.exit.i.i

_m3dstbi__mul2sizes_valid.exit.i.i:               ; preds = %bb.b
  %i.l = udiv i32 2147483647, %5
  %.not23.i.i = icmp sgt i32 %4, %i.l
  br i1 %.not23.i.i, label %_m3dstbi__malloc_mad3.exit.thread, label %_m3dstbi__mul2sizes_valid.exit.thread15.i.i

_m3dstbi__mul2sizes_valid.exit.thread15.i.i:      ; preds = %_m3dstbi__mul2sizes_valid.exit.i.i, %bb.b
  %i.m = mul nuw nsw i32 %5, %4                   ; 3 uses
  %i.n = or i32 %i.h, %i.m
  %or.cond.not.i10.i.i = icmp sgt i32 %i.n, -1
  br i1 %or.cond.not.i10.i.i, label %bb.c, label %_m3dstbi__malloc_mad3.exit.thread

bb.c:                                             ; preds = %_m3dstbi__mul2sizes_valid.exit.thread15.i.i
  %i.o = icmp eq i32 %i.h, 0
  br i1 %i.o, label %_m3dstbi__malloc_mad3.exit, label %_m3dstbi__mul2sizes_valid.exit12.i.i

_m3dstbi__mul2sizes_valid.exit12.i.i:             ; preds = %bb.c
  %i.p = udiv i32 2147483647, %i.h
  %.not.i.i = icmp sgt i32 %i.m, %i.p
  br i1 %.not.i.i, label %_m3dstbi__malloc_mad3.exit.thread, label %_m3dstbi__malloc_mad3.exit

_m3dstbi__malloc_mad3.exit.thread:                ; preds = %_m3dstbi__mul2sizes_valid.exit12.i.i, %_m3dstbi__mul2sizes_valid.exit.i.i, %bb.a, %_m3dstbi__mul2sizes_valid.exit.thread15.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.q, align 8
  br label %.loopexit713.sink.split

_m3dstbi__malloc_mad3.exit:                       ; preds = %bb.c, %_m3dstbi__mul2sizes_valid.exit12.i.i
  %i.r = mul nuw nsw i32 %i.h, %i.m
  %i.s = sext i32 %i.r to i64
  %i.t = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -2147483648, 2147483648) %i.s) #56 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  store ptr %i.t, ptr %i.u, align 8
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %.loopexit713.sink.split, label %bb.d

bb.d:                                             ; preds = %_m3dstbi__malloc_mad3.exit
  %i.v = or i32 %i.g, %4
  %or.cond.not.i.i = icmp sgt i32 %i.v, -1
  br i1 %or.cond.not.i.i, label %bb.e, label %.loopexit713.sink.split

bb.e:                                             ; preds = %bb.d
  %i.w = icmp ne i32 %4, 0                        ; 2 uses
  br i1 %i.w, label %_m3dstbi__mul2sizes_valid.exit.i, label %_m3dstbi__mul2sizes_valid.exit.thread15.i

_m3dstbi__mul2sizes_valid.exit.i:                 ; preds = %bb.e
  %i.x = udiv i32 2147483647, %4
  %.not23.i = icmp sgt i32 %i.g, %i.x
  br i1 %.not23.i, label %.loopexit713.sink.split, label %_m3dstbi__mul2sizes_valid.exit.thread15.i

_m3dstbi__mul2sizes_valid.exit.thread15.i:        ; preds = %_m3dstbi__mul2sizes_valid.exit.i, %bb.e
  %i.y = mul i32 %i.g, %4                         ; 14 uses
  %i.z = or i32 %i.y, %6
  %or.cond.not.i10.i = icmp sgt i32 %i.z, -1
  br i1 %or.cond.not.i10.i, label %bb.f, label %.loopexit713.sink.split

bb.f:                                             ; preds = %_m3dstbi__mul2sizes_valid.exit.thread15.i
  %i.aa = icmp eq i32 %6, 0
  br i1 %i.aa, label %_m3dstbi__mad3sizes_valid.exit._crit_edge, label %_m3dstbi__mul2sizes_valid.exit12.i

_m3dstbi__mul2sizes_valid.exit12.i:               ; preds = %bb.f
  %i.ab = udiv i32 2147483647, %6
  %.not.i = icmp sgt i32 %i.y, %i.ab
  %i.ac = mul i32 %i.y, %6                        ; 2 uses
  %i.ad = icmp sgt i32 %i.ac, 2147483640
  %or.cond705 = or i1 %.not.i, %i.ad
  br i1 %or.cond705, label %.loopexit713.sink.split, label %_m3dstbi__mad3sizes_valid.exit._crit_edge

_m3dstbi__mad3sizes_valid.exit._crit_edge:        ; preds = %bb.f, %_m3dstbi__mul2sizes_valid.exit12.i
  %.pre-phi = phi i32 [ %i.ac, %_m3dstbi__mul2sizes_valid.exit12.i ], [ 0, %bb.f ]
  %i.ae = add nsw i32 %.pre-phi, 7
  %i.af = lshr i32 %i.ae, 3                       ; 4 uses
  %i.ag = add nuw nsw i32 %i.af, 1
  %i.ah = mul i32 %i.ag, %5                       ; 2 uses
  %i.ai = load i32, ptr %i.b, align 8
  %i.aj = icmp eq i32 %i.ai, %4
  br i1 %i.aj, label %bb.g, label %bb.i

bb.g:                                             ; preds = %_m3dstbi__mad3sizes_valid.exit._crit_edge
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = icmp eq i32 %i.al, %5
  br i1 %i.am, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.not597 = icmp eq i32 %2, %i.ah
  br i1 %.not597, label %bb.j, label %.loopexit713.sink.split

bb.i:                                             ; preds = %bb.g, %_m3dstbi__mad3sizes_valid.exit._crit_edge
  %i.an = icmp ult i32 %2, %i.ah
  br i1 %i.an, label %.loopexit713.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  br i1 %i.k, label %._crit_edge837.thread, label %.lr.ph836

.lr.ph836:                                        ; preds = %bb.j
  %i.ao = zext i32 %i.e to i64                    ; 10 uses
  %i.ap = sub nsw i64 0, %i.ao
  %i.aq = icmp slt i32 %6, 8                      ; 4 uses
  %i.ar = sub i32 %i.c, %i.af
  %narrow = select i1 %i.aq, i32 %i.ar, i32 0
  %.0537.idx = zext i32 %narrow to i64            ; 10 uses
  %i.as = icmp eq i32 %6, 8
  %.not612 = icmp eq i32 %i.g, %3                 ; 3 uses
  %i.at = sext i32 %i.h to i64                    ; 61 uses
  %i.au = sext i32 %i.g to i64                    ; 2 uses
  %i.av = sext i32 %3 to i64                      ; 2 uses
  %or.cond = select i1 %i.aq, i1 true, i1 %.not612
  %.6573753 = add i32 %4, -1                      ; 8 uses
  %.not614754 = icmp eq i32 %.6573753, 0          ; 7 uses
  %wide.trip.count977 = zext i32 %5 to i64
  %i.aw = add i32 %4, -2                          ; 2 uses
  %i.ax = zext i32 %i.aw to i64                   ; 2 uses
  %i.ay = mul nsw i64 %i.at, %i.ax
  %i.az = zext i32 %i.aw to i64                   ; 3 uses
  %i.ba = add nsw i64 %i.az, -1
  %i.bb = mul i64 %i.ba, %i.at
  %i.bc = sub nsw i64 0, %i.at
  %i.bd = mul nsw i64 %i.at, %i.az
  %i.be = add i32 %4, -2                          ; 2 uses
  %i.bf = zext i32 %i.be to i64                   ; 2 uses
  %i.bg = mul nsw i64 %i.at, %i.bf                ; 2 uses
  %i.bh = add i64 %i.bg, %.0537.idx
  %i.bi = sub i64 %i.bh, %i.ao
  %i.bj = zext i32 %i.be to i64                   ; 3 uses
  %i.bk = add nsw i64 %i.bj, -1
  %i.bl = mul i64 %i.bk, %i.at
  %i.bm = sub nsw i64 0, %i.at
  %i.bn = mul nsw i64 %i.at, %i.bj                ; 2 uses
  %i.bo = add i64 %i.bn, %.0537.idx
  %i.bp = sub i64 %i.bo, %i.ao
  %i.bq = add i32 %4, -2
  %i.br = zext i32 %i.bq to i64                   ; 3 uses
  %i.bs = add nsw i64 %i.br, -1
  %i.bt = mul i64 %i.bs, %i.at                    ; 2 uses
  %i.bu = add i64 %i.bt, %.0537.idx
  %i.bv = sub i64 %i.bu, %i.ao
  %i.bw = add nsw i64 %i.at, %i.ao
  %i.bx = sub nsw i64 %.0537.idx, %i.bw
  %i.by = mul nsw i64 %i.at, %i.br                ; 2 uses
  %i.bz = add i64 %i.by, %.0537.idx
  %i.ca = sub i64 %i.bz, %i.ao
  %i.cb = sub nsw i64 0, %i.at                    ; 2 uses
  %i.cc = add i32 %4, -2                          ; 2 uses
  %i.cd = zext i32 %i.cc to i64                   ; 3 uses
  %i.ce = add nsw i64 %i.cd, -1
  %i.cf = mul i64 %i.ce, %i.at
  %i.cg = mul nsw i64 %i.at, %i.cd
  %i.ch = zext i32 %i.cc to i64                   ; 3 uses
  %i.ci = add nsw i64 %i.ch, -1
  %i.cj = mul i64 %i.ci, %i.at
  %i.ck = sub nsw i64 0, %i.at
  %i.cl = mul nsw i64 %i.at, %i.ch
  %brmerge.not = and i1 %i.w, %i.a
  %xtraiter1797 = and i32 %4, 7                   ; 3 uses
  %i.cm = icmp ult i32 %4, 8
  %unroll_iter = and i32 %4, -8
  %lcmp.mod1798.not = icmp eq i32 %xtraiter1797, 0
  %lcmp.mod1799 = icmp ne i32 %xtraiter1797, 0
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph836, %.loopexit734
  %indvars.iv974 = phi i64 [ 0, %.lr.ph836 ], [ %indvars.iv.next975, %.loopexit734 ] ; 3 uses
  %.0548834 = phi i32 [ %4, %.lr.ph836 ], [ %.1549, %.loopexit734 ]
  %.0551833 = phi i32 [ %i.i, %.lr.ph836 ], [ %.1552, %.loopexit734 ] ; 17 uses
  %.0579831 = phi ptr [ %1, %.lr.ph836 ], [ %.11590, %.loopexit734 ] ; 3 uses
  %i.cn = load ptr, ptr %i.u, align 8             ; 7 uses
  %i.co = ptrtoaddr ptr %i.cn to i64              ; 4 uses
  %i.cp = trunc i64 %indvars.iv974 to i32
  %i.cq = mul i32 %i.e, %i.cp
  %i.cr = zext i32 %i.cq to i64                   ; 10 uses
  %i.cs = getelementptr i8, ptr %i.cn, i64 %i.cr  ; 5 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.0579831, i64 1 ; 9 uses
  %i.cu = load i8, ptr %.0579831, align 1         ; 3 uses
  %i.cv = icmp ult i8 %i.cu, 5
  br i1 %i.cv, label %bb.l, label %.loopexit713.sink.split

bb.l:                                             ; preds = %bb.k
  %.1552 = select i1 %i.aq, i32 1, i32 %.0551833  ; 30 uses
  %.1549 = select i1 %i.aq, i32 %i.af, i32 %.0548834 ; 2 uses
  %.0537 = getelementptr i8, ptr %i.cs, i64 %.0537.idx ; 3 uses
  %i.cw = getelementptr i8, ptr %.0537, i64 %i.ap ; 4 uses
  %i.cx = icmp eq i64 %indvars.iv974, 0
  br i1 %i.cx, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cy = zext nneg i8 %i.cu to i64
  %i.cz = getelementptr inbounds nuw i8, ptr @first_row_filter, i64 %i.cy
  %i.da = load i8, ptr %i.cz, align 1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0528.in = phi i8 [ %i.da, %bb.m ], [ %i.cu, %bb.l ] ; 3 uses
  %i.db = icmp sgt i32 %.1552, 0                  ; 8 uses
  br i1 %i.db, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.n
  %wide.trip.count = zext nneg i32 %.1552 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.v
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.v ] ; 12 uses
  switch i8 %.0528.in, label %bb.v [
    i8 0, label %bb.o
    i8 1, label %bb.p
    i8 2, label %bb.q
    i8 3, label %bb.r
    i8 4, label %bb.s
    i8 5, label %bb.t
    i8 6, label %bb.u
  ]

bb.o:                                             ; preds = %.lr.ph
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ct, i64 %indvars.iv
  %i.dd = load i8, ptr %i.dc, align 1
  br label %.sink.split

bb.p:                                             ; preds = %.lr.ph
  %i.de = getelementptr inbounds nuw i8, ptr %i.ct, i64 %indvars.iv
  %i.df = load i8, ptr %i.de, align 1
  br label %.sink.split

bb.q:                                             ; preds = %.lr.ph
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ct, i64 %indvars.iv
  %i.dh = load i8, ptr %i.dg, align 1
  %i.di = getelementptr inbounds nuw i8, ptr %i.cw, i64 %indvars.iv
  %i.dj = load i8, ptr %i.di, align 1
  %.narrow648 = add i8 %i.dj, %i.dh
  br label %.sink.split

bb.r:                                             ; preds = %.lr.ph
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ct, i64 %indvars.iv
  %i.dl = load i8, ptr %i.dk, align 1
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cw, i64 %indvars.iv
  %i.dn = load i8, ptr %i.dm, align 1
  %i.do = lshr i8 %i.dn, 1
  %.narrow646 = add i8 %i.do, %i.dl
  br label %.sink.split

bb.s:                                             ; preds = %.lr.ph
  %i.dp = getelementptr inbounds nuw i8, ptr %i.ct, i64 %indvars.iv
  %i.dq = load i8, ptr %i.dp, align 1
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cw, i64 %indvars.iv
  %i.ds = load i8, ptr %i.dr, align 1
  %.narrow644 = add i8 %i.ds, %i.dq
  br label %.sink.split

bb.t:                                             ; preds = %.lr.ph
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ct, i64 %indvars.iv
  %i.du = load i8, ptr %i.dt, align 1
  br label %.sink.split

bb.u:                                             ; preds = %.lr.ph
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ct, i64 %indvars.iv
  %i.dw = load i8, ptr %i.dv, align 1
  br label %.sink.split

.sink.split:                                      ; preds = %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o
  %.sink = phi i8 [ %i.dd, %bb.o ], [ %i.df, %bb.p ], [ %.narrow648, %bb.q ], [ %.narrow646, %bb.r ], [ %.narrow644, %bb.s ], [ %i.du, %bb.t ], [ %i.dw, %bb.u ]
  %i.dx = getelementptr inbounds nuw i8, ptr %.0537, i64 %indvars.iv
  store i8 %.sink, ptr %i.dx, align 1
  br label %bb.v

bb.v:                                             ; preds = %.sink.split, %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.v, %bb.n
  br i1 %i.as, label %bb.w, label %bb.z

bb.w:                                             ; preds = %._crit_edge
  br i1 %.not612, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dy = getelementptr inbounds i8, ptr %i.cs, i64 %i.au
  store i8 -1, ptr %i.dy, align 1
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.dz = getelementptr inbounds i8, ptr %i.ct, i64 %i.au
  %i.ea = getelementptr inbounds i8, ptr %i.cs, i64 %i.av
  br label %bb.ad

bb.z:                                             ; preds = %._crit_edge
  br i1 %i.a, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %.pre992 = sext i32 %.0551833 to i64            ; 2 uses
  br i1 %.not612, label %._crit_edge991, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.eb = getelementptr inbounds i8, ptr %i.cs, i64 %.pre992 ; 2 uses
  store i8 -1, ptr %i.eb, align 1
  %i.ec = getelementptr i8, ptr %i.eb, i64 1
  store i8 -1, ptr %i.ec, align 1
  br label %._crit_edge991

._crit_edge991:                                   ; preds = %bb.aa, %bb.ab
  %i.ed = getelementptr inbounds i8, ptr %i.ct, i64 %.pre992
  %i.ee = getelementptr inbounds i8, ptr %i.cs, i64 %i.at
  br label %bb.ad

bb.ac:                                            ; preds = %bb.z
  %i.ef = getelementptr inbounds nuw i8, ptr %.0579831, i64 2
  %i.eg = getelementptr inbounds nuw i8, ptr %.0537, i64 1
  br label %bb.ad

bb.ad:                                            ; preds = %._crit_edge991, %bb.ac, %bb.y
  %.sink1041 = phi i64 [ %i.at, %._crit_edge991 ], [ 1, %bb.ac ], [ %i.av, %bb.y ] ; 9 uses
  %.1580 = phi ptr [ %i.ed, %._crit_edge991 ], [ %i.ef, %bb.ac ], [ %i.dz, %bb.y ] ; 62 uses
  %.1538 = phi ptr [ %i.ee, %._crit_edge991 ], [ %i.eg, %bb.ac ], [ %i.ea, %bb.y ] ; 95 uses
  %.15801079 = ptrtoaddr ptr %.1580 to i64        ; 6 uses
  %.15381080 = ptrtoaddr ptr %.1538 to i64        ; 10 uses
  %i.eh = getelementptr i8, ptr %i.cw, i64 %.sink1041 ; 24 uses
  br i1 %or.cond, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.ei = add i32 %.1549, -1
  %i.ej = mul i32 %i.ei, %.1552                   ; 26 uses
  switch i8 %.0528.in, label %.loopexit723 [
    i8 0, label %bb.af
    i8 1, label %.preheader722
    i8 2, label %.preheader724
    i8 3, label %.preheader726
    i8 4, label %.preheader728
    i8 5, label %.preheader730
    i8 6, label %.preheader732
  ]

.preheader732:                                    ; preds = %bb.ae
  %i.ek = icmp sgt i32 %i.ej, 0
  br i1 %i.ek, label %iter.check1279, label %.loopexit723

iter.check1279:                                   ; preds = %.preheader732
  %i.el = sext i32 %.1552 to i64                  ; 6 uses
  %wide.trip.count947 = zext nneg i32 %i.ej to i64 ; 8 uses
  %min.iters.check1261 = icmp ult i32 %i.ej, 4
  br i1 %min.iters.check1261, label %.lr.ph820.preheader, label %vector.memcheck1262

vector.memcheck1262:                              ; preds = %iter.check1279
  %i.em = sub i64 %.15801079, %.15381080
  %diff.check1263 = icmp ugt i64 %i.em, -32
  %i.en = add nsw i64 %i.el, -1
  %diff.check1264 = icmp ult i64 %i.en, 31
  %conflict.rdx1265 = or i1 %diff.check1263, %diff.check1264
  br i1 %conflict.rdx1265, label %.lr.ph820.preheader, label %vector.main.loop.iter.check1266

vector.main.loop.iter.check1266:                  ; preds = %vector.memcheck1262
  %min.iters.check1267 = icmp ult i32 %i.ej, 32
  br i1 %min.iters.check1267, label %vec.epilog.ph1283, label %vector.ph1268

vector.ph1268:                                    ; preds = %vector.main.loop.iter.check1266
  %i.eo = and i64 %wide.trip.count947, 28
  %n.vec1269 = and i64 %wide.trip.count947, 2147483616 ; 4 uses
  br label %vector.body1270

vector.body1270:                                  ; preds = %vector.ph1268, %vector.body1270
  %index1271 = phi i64 [ 0, %vector.ph1268 ], [ %index.next1276, %vector.body1270 ] ; 4 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.1580, i64 %index1271 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %wide.load1272 = load <16 x i8>, ptr %i.ep, align 1
  %wide.load1273 = load <16 x i8>, ptr %i.eq, align 1
  %i.er = sub nsw i64 %index1271, %i.el
  %i.es = getelementptr inbounds i8, ptr %.1538, i64 %i.er ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %wide.load1274 = load <16 x i8>, ptr %i.es, align 1
  %wide.load1275 = load <16 x i8>, ptr %i.et, align 1
  %i.eu = add <16 x i8> %wide.load1274, %wide.load1272
  %i.ev = add <16 x i8> %wide.load1275, %wide.load1273
  %i.ew = getelementptr inbounds nuw i8, ptr %.1538, i64 %index1271 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  store <16 x i8> %i.eu, ptr %i.ew, align 1
  store <16 x i8> %i.ev, ptr %i.ex, align 1
  %index.next1276 = add nuw i64 %index1271, 32    ; 2 uses
  %i.ey = icmp eq i64 %index.next1276, %n.vec1269
  br i1 %i.ey, label %middle.block1277, label %vector.body1270, !llvm.loop !286

middle.block1277:                                 ; preds = %vector.body1270
  %cmp.n1278 = icmp eq i64 %n.vec1269, %wide.trip.count947
  br i1 %cmp.n1278, label %.loopexit723, label %vec.epilog.iter.check1280

vec.epilog.iter.check1280:                        ; preds = %middle.block1277
  %min.epilog.iters.check1282 = icmp eq i64 %i.eo, 0
  br i1 %min.epilog.iters.check1282, label %.lr.ph820.preheader, label %vec.epilog.ph1283, !prof !16

vec.epilog.ph1283:                                ; preds = %vector.main.loop.iter.check1266, %vec.epilog.iter.check1280
  %vec.epilog.resume.val1284 = phi i64 [ %n.vec1269, %vec.epilog.iter.check1280 ], [ 0, %vector.main.loop.iter.check1266 ]
  %n.vec1285 = and i64 %wide.trip.count947, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body1286

vec.epilog.vector.body1286:                       ; preds = %vec.epilog.vector.body1286, %vec.epilog.ph1283
  %index1287 = phi i64 [ %vec.epilog.resume.val1284, %vec.epilog.ph1283 ], [ %index.next1290, %vec.epilog.vector.body1286 ] ; 4 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.1580, i64 %index1287
  %wide.load1288 = load <4 x i8>, ptr %i.ez, align 1
  %i.fa = sub nsw i64 %index1287, %i.el
  %i.fb = getelementptr inbounds i8, ptr %.1538, i64 %i.fa
  %wide.load1289 = load <4 x i8>, ptr %i.fb, align 1
  %i.fc = add <4 x i8> %wide.load1289, %wide.load1288
  %i.fd = getelementptr inbounds nuw i8, ptr %.1538, i64 %index1287
  store <4 x i8> %i.fc, ptr %i.fd, align 1
  %index.next1290 = add nuw i64 %index1287, 4     ; 2 uses
  %i.fe = icmp eq i64 %index.next1290, %n.vec1285
  br i1 %i.fe, label %vec.epilog.middle.block1291, label %vec.epilog.vector.body1286, !llvm.loop !287

vec.epilog.middle.block1291:                      ; preds = %vec.epilog.vector.body1286
  %cmp.n1292 = icmp eq i64 %n.vec1285, %wide.trip.count947
  br i1 %cmp.n1292, label %.loopexit723, label %.lr.ph820.preheader

.lr.ph820.preheader:                              ; preds = %iter.check1279, %vector.memcheck1262, %vec.epilog.iter.check1280, %vec.epilog.middle.block1291
  %indvars.iv944.ph = phi i64 [ 0, %iter.check1279 ], [ 0, %vector.memcheck1262 ], [ %n.vec1269, %vec.epilog.iter.check1280 ], [ %n.vec1285, %vec.epilog.middle.block1291 ] ; 6 uses
  %xtraiter1800 = and i64 %wide.trip.count947, 1
  %lcmp.mod1801.not = icmp eq i64 %xtraiter1800, 0
  br i1 %lcmp.mod1801.not, label %.lr.ph820.prol.loopexit, label %.lr.ph820.prol

.lr.ph820.prol:                                   ; preds = %.lr.ph820.preheader
  %i.ff = getelementptr inbounds nuw i8, ptr %.1580, i64 %indvars.iv944.ph
  %i.fg = load i8, ptr %i.ff, align 1
  %i.fh = sub nsw i64 %indvars.iv944.ph, %i.el
  %i.fi = getelementptr inbounds i8, ptr %.1538, i64 %i.fh
  %i.fj = load i8, ptr %i.fi, align 1
  %.narrow632.prol = add i8 %i.fj, %i.fg
  %i.fk = getelementptr inbounds nuw i8, ptr %.1538, i64 %indvars.iv944.ph
  store i8 %.narrow632.prol, ptr %i.fk, align 1
  %indvars.iv.next945.prol = or disjoint i64 %indvars.iv944.ph, 1
  br label %.lr.ph820.prol.loopexit

.lr.ph820.prol.loopexit:                          ; preds = %.lr.ph820.prol, %.lr.ph820.preheader
  %indvars.iv944.unr = phi i64 [ %indvars.iv944.ph, %.lr.ph820.preheader ], [ %indvars.iv.next945.prol, %.lr.ph820.prol ]
  %i.fl = add nsw i64 %wide.trip.count947, -1
  %i.fm = icmp eq i64 %indvars.iv944.ph, %i.fl
  br i1 %i.fm, label %.loopexit723, label %.lr.ph820

.preheader730:                                    ; preds = %bb.ae
  %i.fn = icmp sgt i32 %i.ej, 0
  br i1 %i.fn, label %iter.check1242, label %.loopexit723

iter.check1242:                                   ; preds = %.preheader730
  %i.fo = sext i32 %.1552 to i64                  ; 6 uses
  %wide.trip.count952 = zext nneg i32 %i.ej to i64 ; 8 uses
  %min.iters.check1224 = icmp ult i32 %i.ej, 4
  br i1 %min.iters.check1224, label %.lr.ph822.preheader, label %vector.memcheck1225

vector.memcheck1225:                              ; preds = %iter.check1242
  %i.fp = sub i64 %.15801079, %.15381080
  %diff.check1226 = icmp ugt i64 %i.fp, -32
  %i.fq = add nsw i64 %i.fo, -1
  %diff.check1227 = icmp ult i64 %i.fq, 31
  %conflict.rdx1228 = or i1 %diff.check1226, %diff.check1227
  br i1 %conflict.rdx1228, label %.lr.ph822.preheader, label %vector.main.loop.iter.check1229

vector.main.loop.iter.check1229:                  ; preds = %vector.memcheck1225
  %min.iters.check1230 = icmp ult i32 %i.ej, 32
  br i1 %min.iters.check1230, label %vec.epilog.ph1246, label %vector.ph1231

vector.ph1231:                                    ; preds = %vector.main.loop.iter.check1229
  %i.fr = and i64 %wide.trip.count952, 28
  %n.vec1232 = and i64 %wide.trip.count952, 2147483616 ; 4 uses
  br label %vector.body1233

vector.body1233:                                  ; preds = %vector.ph1231, %vector.body1233
  %index1234 = phi i64 [ 0, %vector.ph1231 ], [ %index.next1239, %vector.body1233 ] ; 4 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.1580, i64 %index1234 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  %wide.load1235 = load <16 x i8>, ptr %i.fs, align 1
  %wide.load1236 = load <16 x i8>, ptr %i.ft, align 1
  %i.fu = sub nsw i64 %index1234, %i.fo
  %i.fv = getelementptr inbounds i8, ptr %.1538, i64 %i.fu ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  %wide.load1237 = load <16 x i8>, ptr %i.fv, align 1
  %wide.load1238 = load <16 x i8>, ptr %i.fw, align 1
  %i.fx = lshr <16 x i8> %wide.load1237, splat (i8 1)
  %i.fy = lshr <16 x i8> %wide.load1238, splat (i8 1)
  %i.fz = add <16 x i8> %i.fx, %wide.load1235
  %i.ga = add <16 x i8> %i.fy, %wide.load1236
  %i.gb = getelementptr inbounds nuw i8, ptr %.1538, i64 %index1234 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  store <16 x i8> %i.fz, ptr %i.gb, align 1
  store <16 x i8> %i.ga, ptr %i.gc, align 1
  %index.next1239 = add nuw i64 %index1234, 32    ; 2 uses
  %i.gd = icmp eq i64 %index.next1239, %n.vec1232
  br i1 %i.gd, label %middle.block1240, label %vector.body1233, !llvm.loop !288

middle.block1240:                                 ; preds = %vector.body1233
  %cmp.n1241 = icmp eq i64 %n.vec1232, %wide.trip.count952
  br i1 %cmp.n1241, label %.loopexit723, label %vec.epilog.iter.check1243

vec.epilog.iter.check1243:                        ; preds = %middle.block1240
  %min.epilog.iters.check1245 = icmp eq i64 %i.fr, 0
  br i1 %min.epilog.iters.check1245, label %.lr.ph822.preheader, label %vec.epilog.ph1246, !prof !16

vec.epilog.ph1246:                                ; preds = %vector.main.loop.iter.check1229, %vec.epilog.iter.check1243
  %vec.epilog.resume.val1247 = phi i64 [ %n.vec1232, %vec.epilog.iter.check1243 ], [ 0, %vector.main.loop.iter.check1229 ]
  %n.vec1248 = and i64 %wide.trip.count952, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body1249

vec.epilog.vector.body1249:                       ; preds = %vec.epilog.vector.body1249, %vec.epilog.ph1246
  %index1250 = phi i64 [ %vec.epilog.resume.val1247, %vec.epilog.ph1246 ], [ %index.next1253, %vec.epilog.vector.body1249 ] ; 4 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.1580, i64 %index1250
  %wide.load1251 = load <4 x i8>, ptr %i.ge, align 1
  %i.gf = sub nsw i64 %index1250, %i.fo
  %i.gg = getelementptr inbounds i8, ptr %.1538, i64 %i.gf
  %wide.load1252 = load <4 x i8>, ptr %i.gg, align 1
  %i.gh = lshr <4 x i8> %wide.load1252, splat (i8 1)
  %i.gi = add <4 x i8> %i.gh, %wide.load1251
  %i.gj = getelementptr inbounds nuw i8, ptr %.1538, i64 %index1250
  store <4 x i8> %i.gi, ptr %i.gj, align 1
  %index.next1253 = add nuw i64 %index1250, 4     ; 2 uses
  %i.gk = icmp eq i64 %index.next1253, %n.vec1248
  br i1 %i.gk, label %vec.epilog.middle.block1254, label %vec.epilog.vector.body1249, !llvm.loop !289

vec.epilog.middle.block1254:                      ; preds = %vec.epilog.vector.body1249
  %cmp.n1255 = icmp eq i64 %n.vec1248, %wide.trip.count952
  br i1 %cmp.n1255, label %.loopexit723, label %.lr.ph822.preheader

.lr.ph822.preheader:                              ; preds = %iter.check1242, %vector.memcheck1225, %vec.epilog.iter.check1243, %vec.epilog.middle.block1254
  %indvars.iv949.ph = phi i64 [ 0, %iter.check1242 ], [ 0, %vector.memcheck1225 ], [ %n.vec1232, %vec.epilog.iter.check1243 ], [ %n.vec1248, %vec.epilog.middle.block1254 ] ; 6 uses
  %xtraiter1803 = and i64 %wide.trip.count952, 1
  %lcmp.mod1804.not = icmp eq i64 %xtraiter1803, 0
  br i1 %lcmp.mod1804.not, label %.lr.ph822.prol.loopexit, label %.lr.ph822.prol

.lr.ph822.prol:                                   ; preds = %.lr.ph822.preheader
  %i.gl = getelementptr inbounds nuw i8, ptr %.1580, i64 %indvars.iv949.ph
  %i.gm = load i8, ptr %i.gl, align 1
  %i.gn = sub nsw i64 %indvars.iv949.ph, %i.fo
  %i.go = getelementptr inbounds i8, ptr %.1538, i64 %i.gn
  %i.gp = load i8, ptr %i.go, align 1
  %i.gq = lshr i8 %i.gp, 1
  %.narrow634.prol = add i8 %i.gq, %i.gm
  %i.gr = getelementptr inbounds nuw i8, ptr %.1538, i64 %indvars.iv949.ph
  store i8 %.narrow634.prol, ptr %i.gr, align 1
  %indvars.iv.next950.prol = or disjoint i64 %indvars.iv949.ph, 1
  br label %.lr.ph822.prol.loopexit

.lr.ph822.prol.loopexit:                          ; preds = %.lr.ph822.prol, %.lr.ph822.preheader
  %indvars.iv949.unr = phi i64 [ %indvars.iv949.ph, %.lr.ph822.preheader ], [ %indvars.iv.next950.prol, %.lr.ph822.prol ]
  %i.gs = add nsw i64 %wide.trip.count952, -1
  %i.gt = icmp eq i64 %indvars.iv949.ph, %i.gs
  br i1 %i.gt, label %.loopexit723, label %.lr.ph822

.preheader728:                                    ; preds = %bb.ae
  %i.gu = icmp sgt i32 %i.ej, 0
  br i1 %i.gu, label %iter.check1203, label %.loopexit723

iter.check1203:                                   ; preds = %.preheader728
  %i.gv = sext i32 %.1552 to i64                  ; 5 uses
  %wide.trip.count957 = zext nneg i32 %i.ej to i64 ; 6 uses
  %min.iters.check1181 = icmp ult i32 %i.ej, 4
  br i1 %min.iters.check1181, label %.lr.ph824.preheader, label %vector.memcheck1182

vector.memcheck1182:                              ; preds = %iter.check1203
  %i.gw = sub i64 %.15801079, %.15381080
  %diff.check1183 = icmp ugt i64 %i.gw, -16
  %i.gx = add nsw i64 %i.gv, -1
  %diff.check1184 = icmp ult i64 %i.gx, 15
  %conflict.rdx1185 = or i1 %diff.check1183, %diff.check1184
  %8 = add i64 %.15381080, %i.ao
  %i.gy = add i64 %.sink1041, %i.co
  %i.gz = add i64 %i.gy, %.0537.idx
  %9 = add i64 %i.gz, %i.cr
  %10 = sub i64 %9, %8
  %diff.check1186 = icmp ugt i64 %10, -16
  %conflict.rdx1187 = or i1 %conflict.rdx1185, %diff.check1186
  %i.ha = add i64 %.15381080, %i.gv
  %11 = add i64 %i.ha, %i.ao
  %i.hb = add i64 %.sink1041, %i.co
  %i.hc = add i64 %i.hb, %.0537.idx
  %12 = add i64 %i.hc, %i.cr
  %13 = sub i64 %12, %11
  %diff.check1188 = icmp ugt i64 %13, -16
  %conflict.rdx1189 = or i1 %conflict.rdx1187, %diff.check1188
  br i1 %conflict.rdx1189, label %.lr.ph824.preheader, label %vector.main.loop.iter.check1190

vector.main.loop.iter.check1190:                  ; preds = %vector.memcheck1182
  %min.iters.check1191 = icmp ult i32 %i.ej, 16
  br i1 %min.iters.check1191, label %vec.epilog.ph1207, label %vector.ph1192

vector.ph1192:                                    ; preds = %vector.main.loop.iter.check1190
  %i.hd = and i64 %wide.trip.count957, 12
  %n.vec1193 = and i64 %wide.trip.count957, 2147483632 ; 4 uses
  br label %vector.body1194

vector.body1194:                                  ; preds = %vector.ph1192, %vector.body1194
  %index1195 = phi i64 [ 0, %vector.ph1192 ], [ %index.next1200, %vector.body1194 ] ; 5 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.1580, i64 %index1195
  %wide.load1196 = load <16 x i8>, ptr %i.he, align 1
  %i.hf = sub nsw i64 %index1195, %i.gv           ; 2 uses
  %i.hg = getelementptr inbounds i8, ptr %.1538, i64 %i.hf
  %wide.load1197 = load <16 x i8>, ptr %i.hg, align 1 ; 2 uses
  %i.hh = zext <16 x i8> %wide.load1197 to <16 x i32> ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.eh, i64 %index1195
  %wide.load1198 = load <16 x i8>, ptr %i.hi, align 1 ; 2 uses
  %i.hj = zext <16 x i8> %wide.load1198 to <16 x i32> ; 2 uses
  %i.hk = getelementptr inbounds i8, ptr %i.eh, i64 %i.hf
  %wide.load1199 = load <16 x i8>, ptr %i.hk, align 1 ; 2 uses
  %i.hl = zext <16 x i8> %wide.load1199 to <16 x i32> ; 2 uses
  %i.hm = add nuw nsw <16 x i32> %i.hj, %i.hh
  %i.hn = sub nsw <16 x i32> %i.hm, %i.hl         ; 3 uses
  %i.ho = sub nsw <16 x i32> %i.hn, %i.hh
  %i.hp = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.ho, i1 true) ; 2 uses
  %i.hq = sub nsw <16 x i32> %i.hn, %i.hj
  %i.hr = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.hq, i1 true) ; 2 uses
  %i.hs = sub nsw <16 x i32> %i.hn, %i.hl
  %i.ht = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.hs, i1 true) ; 2 uses
  %i.hu = icmp samesign ugt <16 x i32> %i.hp, %i.hr
  %i.hv = icmp samesign ugt <16 x i32> %i.hp, %i.ht
  %i.hw = select <16 x i1> %i.hu, <16 x i1> splat (i1 true), <16 x i1> %i.hv
  %i.hx = icmp samesign ugt <16 x i32> %i.hr, %i.ht
  %i.hy = select <16 x i1> %i.hx, <16 x i8> %wide.load1199, <16 x i8> %wide.load1198
  %i.hz = select <16 x i1> %i.hw, <16 x i8> %i.hy, <16 x i8> %wide.load1197
  %i.ia = add <16 x i8> %i.hz, %wide.load1196
  %i.ib = getelementptr inbounds nuw i8, ptr %.1538, i64 %index1195
  store <16 x i8> %i.ia, ptr %i.ib, align 1
  %index.next1200 = add nuw i64 %index1195, 16    ; 2 uses
  %i.ic = icmp eq i64 %index.next1200, %n.vec1193
  br i1 %i.ic, label %middle.block1201, label %vector.body1194, !llvm.loop !290

middle.block1201:                                 ; preds = %vector.body1194
  %cmp.n1202 = icmp eq i64 %n.vec1193, %wide.trip.count957
  br i1 %cmp.n1202, label %.loopexit723, label %vec.epilog.iter.check1204

vec.epilog.iter.check1204:                        ; preds = %middle.block1201
  %min.epilog.iters.check1206 = icmp eq i64 %i.hd, 0
  br i1 %min.epilog.iters.check1206, label %.lr.ph824.preheader, label %vec.epilog.ph1207, !prof !17

vec.epilog.ph1207:                                ; preds = %vector.main.loop.iter.check1190, %vec.epilog.iter.check1204
  %vec.epilog.resume.val1208 = phi i64 [ %n.vec1193, %vec.epilog.iter.check1204 ], [ 0, %vector.main.loop.iter.check1190 ]
  %n.vec1209 = and i64 %wide.trip.count957, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body1210

vec.epilog.vector.body1210:                       ; preds = %vec.epilog.vector.body1210, %vec.epilog.ph1207
  %index1211 = phi i64 [ %vec.epilog.resume.val1208, %vec.epilog.ph1207 ], [ %index.next1216, %vec.epilog.vector.body1210 ] ; 5 uses
  %i.id = getelementptr inbounds nuw i8, ptr %.1580, i64 %index1211
  %wide.load1212 = load <4 x i8>, ptr %i.id, align 1
  %i.ie = sub nsw i64 %index1211, %i.gv           ; 2 uses
  %i.if = getelementptr inbounds i8, ptr %.1538, i64 %i.ie
  %wide.load1213 = load <4 x i8>, ptr %i.if, align 1 ; 2 uses
  %i.ig = zext <4 x i8> %wide.load1213 to <4 x i32> ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.eh, i64 %index1211
  %wide.load1214 = load <4 x i8>, ptr %i.ih, align 1 ; 2 uses
  %i.ii = zext <4 x i8> %wide.load1214 to <4 x i32> ; 2 uses
  %i.ij = getelementptr inbounds i8, ptr %i.eh, i64 %i.ie
  %wide.load1215 = load <4 x i8>, ptr %i.ij, align 1 ; 2 uses
  %i.ik = zext <4 x i8> %wide.load1215 to <4 x i32> ; 2 uses
  %i.il = add nuw nsw <4 x i32> %i.ii, %i.ig
  %i.im = sub nsw <4 x i32> %i.il, %i.ik          ; 3 uses
  %i.in = sub nsw <4 x i32> %i.im, %i.ig
  %i.io = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.in, i1 true) ; 2 uses
  %i.ip = sub nsw <4 x i32> %i.im, %i.ii
  %i.iq = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.ip, i1 true) ; 2 uses
  %i.ir = sub nsw <4 x i32> %i.im, %i.ik
  %i.is = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.ir, i1 true) ; 2 uses
  %i.it = icmp samesign ugt <4 x i32> %i.io, %i.iq
  %i.iu = icmp samesign ugt <4 x i32> %i.io, %i.is
  %i.iv = select <4 x i1> %i.it, <4 x i1> splat (i1 true), <4 x i1> %i.iu
  %i.iw = icmp samesign ugt <4 x i32> %i.iq, %i.is
  %i.ix = select <4 x i1> %i.iw, <4 x i8> %wide.load1215, <4 x i8> %wide.load1214
  %i.iy = select <4 x i1> %i.iv, <4 x i8> %i.ix, <4 x i8> %wide.load1213
  %i.iz = add <4 x i8> %i.iy, %wide.load1212
  %i.ja = getelementptr inbounds nuw i8, ptr %.1538, i64 %index1211
  store <4 x i8> %i.iz, ptr %i.ja, align 1
  %index.next1216 = add nuw i64 %index1211, 4     ; 2 uses
  %i.jb = icmp eq i64 %index.next1216, %n.vec1209
  br i1 %i.jb, label %vec.epilog.middle.block1217, label %vec.epilog.vector.body1210, !llvm.loop !291

vec.epilog.middle.block1217:                      ; preds = %vec.epilog.vector.body1210
  %cmp.n1218 = icmp eq i64 %n.vec1209, %wide.trip.count957
  br i1 %cmp.n1218, label %.loopexit723, label %.lr.ph824.preheader

.lr.ph824.preheader:                              ; preds = %iter.check1203, %vector.memcheck1182, %vec.epilog.iter.check1204, %vec.epilog.middle.block1217
  %indvars.iv954.ph = phi i64 [ 0, %iter.check1203 ], [ 0, %vector.memcheck1182 ], [ %n.vec1193, %vec.epilog.iter.check1204 ], [ %n.vec1209, %vec.epilog.middle.block1217 ]
  br label %.lr.ph824

.preheader726:                                    ; preds = %bb.ae
  %i.jc = icmp sgt i32 %i.ej, 0
  br i1 %i.jc, label %iter.check1157, label %.loopexit723

iter.check1157:                                   ; preds = %.preheader726
  %i.jd = sext i32 %.1552 to i64                  ; 6 uses
  %wide.trip.count962 = zext nneg i32 %i.ej to i64 ; 8 uses
  %min.iters.check1135 = icmp ult i32 %i.ej, 8
  br i1 %min.iters.check1135, label %.lr.ph826.preheader, label %vector.memcheck1136

vector.memcheck1136:                              ; preds = %iter.check1157
  %i.je = sub i64 %.15801079, %.15381080
  %diff.check1137 = icmp ugt i64 %i.je, -32
  %14 = add i64 %.15381080, %i.ao
  %i.jf = add i64 %.sink1041, %i.co
  %i.jg = add i64 %i.jf, %.0537.idx
  %15 = add i64 %i.jg, %i.cr
  %16 = sub i64 %15, %14
  %diff.check1138 = icmp ugt i64 %16, -32
  %conflict.rdx1139 = or i1 %diff.check1137, %diff.check1138
  %i.jh = add nsw i64 %i.jd, -1
  %diff.check1140 = icmp ult i64 %i.jh, 31
  %conflict.rdx1141 = or i1 %conflict.rdx1139, %diff.check1140
  br i1 %conflict.rdx1141, label %.lr.ph826.preheader, label %vector.main.loop.iter.check1142

vector.main.loop.iter.check1142:                  ; preds = %vector.memcheck1136
  %min.iters.check1143 = icmp ult i32 %i.ej, 32
  br i1 %min.iters.check1143, label %vec.epilog.ph1161, label %vector.ph1144

vector.ph1144:                                    ; preds = %vector.main.loop.iter.check1142
  %i.ji = and i64 %wide.trip.count962, 24
  %n.vec1145 = and i64 %wide.trip.count962, 2147483616 ; 4 uses
  br label %vector.body1146

vector.body1146:                                  ; preds = %vector.ph1144, %vector.body1146
  %index1147 = phi i64 [ 0, %vector.ph1144 ], [ %index.next1154, %vector.body1146 ] ; 5 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %.1580, i64 %index1147 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 16
  %wide.load1148 = load <16 x i8>, ptr %i.jj, align 1
  %wide.load1149 = load <16 x i8>, ptr %i.jk, align 1
  %i.jl = getelementptr inbounds nuw i8, ptr %i.eh, i64 %index1147 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 16
  %wide.load1150 = load <16 x i8>, ptr %i.jl, align 1
  %wide.load1151 = load <16 x i8>, ptr %i.jm, align 1
  %i.jn = zext <16 x i8> %wide.load1150 to <16 x i16>
  %i.jo = zext <16 x i8> %wide.load1151 to <16 x i16>
  %i.jp = sub nsw i64 %index1147, %i.jd
  %i.jq = getelementptr inbounds i8, ptr %.1538, i64 %i.jp ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 16
  %wide.load1152 = load <16 x i8>, ptr %i.jq, align 1
  %wide.load1153 = load <16 x i8>, ptr %i.jr, align 1
  %i.js = zext <16 x i8> %wide.load1152 to <16 x i16>
  %i.jt = zext <16 x i8> %wide.load1153 to <16 x i16>
  %i.ju = add nuw nsw <16 x i16> %i.js, %i.jn
  %i.jv = add nuw nsw <16 x i16> %i.jt, %i.jo
  %i.jw = lshr <16 x i16> %i.ju, splat (i16 1)
  %i.jx = lshr <16 x i16> %i.jv, splat (i16 1)
  %i.jy = trunc nuw <16 x i16> %i.jw to <16 x i8>
  %i.jz = trunc nuw <16 x i16> %i.jx to <16 x i8>
  %i.ka = add <16 x i8> %wide.load1148, %i.jy
  %i.kb = add <16 x i8> %wide.load1149, %i.jz
  %i.kc = getelementptr inbounds nuw i8, ptr %.1538, i64 %index1147 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 16
  store <16 x i8> %i.ka, ptr %i.kc, align 1
  store <16 x i8> %i.kb, ptr %i.kd, align 1
  %index.next1154 = add nuw i64 %index1147, 32    ; 2 uses
  %i.ke = icmp eq i64 %index.next1154, %n.vec1145
  br i1 %i.ke, label %middle.block1155, label %vector.body1146, !llvm.loop !292

middle.block1155:                                 ; preds = %vector.body1146
  %cmp.n1156 = icmp eq i64 %n.vec1145, %wide.trip.count962
  br i1 %cmp.n1156, label %.loopexit723, label %vec.epilog.iter.check1158

vec.epilog.iter.check1158:                        ; preds = %middle.block1155
  %min.epilog.iters.check1160 = icmp eq i64 %i.ji, 0
  br i1 %min.epilog.iters.check1160, label %.lr.ph826.preheader, label %vec.epilog.ph1161, !prof !362

vec.epilog.ph1161:                                ; preds = %vector.main.loop.iter.check1142, %vec.epilog.iter.check1158
  %vec.epilog.resume.val1162 = phi i64 [ %n.vec1145, %vec.epilog.iter.check1158 ], [ 0, %vector.main.loop.iter.check1142 ]
  %n.vec1163 = and i64 %wide.trip.count962, 2147483640 ; 3 uses
  br label %vec.epilog.vector.body1164

vec.epilog.vector.body1164:                       ; preds = %vec.epilog.vector.body1164, %vec.epilog.ph1161
  %index1165 = phi i64 [ %vec.epilog.resume.val1162, %vec.epilog.ph1161 ], [ %index.next1169, %vec.epilog.vector.body1164 ] ; 5 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %.1580, i64 %index1165
  %wide.load1166 = load <8 x i8>, ptr %i.kf, align 1
  %i.kg = getelementptr inbounds nuw i8, ptr %i.eh, i64 %index1165
  %wide.load1167 = load <8 x i8>, ptr %i.kg, align 1
  %i.kh = zext <8 x i8> %wide.load1167 to <8 x i16>
  %i.ki = sub nsw i64 %index1165, %i.jd
  %i.kj = getelementptr inbounds i8, ptr %.1538, i64 %i.ki
  %wide.load1168 = load <8 x i8>, ptr %i.kj, align 1
  %i.kk = zext <8 x i8> %wide.load1168 to <8 x i16>
  %i.kl = add nuw nsw <8 x i16> %i.kk, %i.kh
  %i.km = lshr <8 x i16> %i.kl, splat (i16 1)
  %i.kn = trunc nuw <8 x i16> %i.km to <8 x i8>
  %i.ko = add <8 x i8> %wide.load1166, %i.kn
  %i.kp = getelementptr inbounds nuw i8, ptr %.1538, i64 %index1165
  store <8 x i8> %i.ko, ptr %i.kp, align 1
  %index.next1169 = add nuw i64 %index1165, 8     ; 2 uses
  %i.kq = icmp eq i64 %index.next1169, %n.vec1163
  br i1 %i.kq, label %vec.epilog.middle.block1170, label %vec.epilog.vector.body1164, !llvm.loop !293

vec.epilog.middle.block1170:                      ; preds = %vec.epilog.vector.body1164
  %cmp.n1171 = icmp eq i64 %n.vec1163, %wide.trip.count962
  br i1 %cmp.n1171, label %.loopexit723, label %.lr.ph826.preheader

.lr.ph826.preheader:                              ; preds = %iter.check1157, %vector.memcheck1136, %vec.epilog.iter.check1158, %vec.epilog.middle.block1170
  %indvars.iv959.ph = phi i64 [ 0, %iter.check1157 ], [ 0, %vector.memcheck1136 ], [ %n.vec1145, %vec.epilog.iter.check1158 ], [ %n.vec1163, %vec.epilog.middle.block1170 ] ; 7 uses
  %xtraiter1806 = and i64 %wide.trip.count962, 1
  %lcmp.mod1807.not = icmp eq i64 %xtraiter1806, 0
  br i1 %lcmp.mod1807.not, label %.lr.ph826.prol.loopexit, label %.lr.ph826.prol

.lr.ph826.prol:                                   ; preds = %.lr.ph826.preheader
  %i.kr = getelementptr inbounds nuw i8, ptr %.1580, i64 %indvars.iv959.ph
  %i.ks = load i8, ptr %i.kr, align 1
  %i.kt = getelementptr inbounds nuw i8, ptr %i.eh, i64 %indvars.iv959.ph
  %i.ku = load i8, ptr %i.kt, align 1
  %i.kv = zext i8 %i.ku to i16
  %i.kw = sub nsw i64 %indvars.iv959.ph, %i.jd
  %i.kx = getelementptr inbounds i8, ptr %.1538, i64 %i.kw
  %i.ky = load i8, ptr %i.kx, align 1
  %i.kz = zext i8 %i.ky to i16
  %i.la = add nuw nsw i16 %i.kz, %i.kv
  %i.lb = lshr i16 %i.la, 1
  %.tr637.prol = trunc nuw i16 %i.lb to i8
  %.narrow638.prol = add i8 %i.ks, %.tr637.prol
  %i.lc = getelementptr inbounds nuw i8, ptr %.1538, i64 %indvars.iv959.ph
  store i8 %.narrow638.prol, ptr %i.lc, align 1
  %indvars.iv.next960.prol = or disjoint i64 %indvars.iv959.ph, 1
  br label %.lr.ph826.prol.loopexit

.lr.ph826.prol.loopexit:                          ; preds = %.lr.ph826.prol, %.lr.ph826.preheader
  %indvars.iv959.unr = phi i64 [ %indvars.iv959.ph, %.lr.ph826.preheader ], [ %indvars.iv.next960.prol, %.lr.ph826.prol ]
  %i.ld = add nsw i64 %wide.trip.count962, -1
  %i.le = icmp eq i64 %indvars.iv959.ph, %i.ld
  br i1 %i.le, label %.loopexit723, label %.lr.ph826

.preheader724:                                    ; preds = %bb.ae
  %i.lf = icmp sgt i32 %i.ej, 0
  br i1 %i.lf, label %iter.check1114, label %.loopexit723

iter.check1114:                                   ; preds = %.preheader724
  %wide.trip.count967 = zext nneg i32 %i.ej to i64 ; 8 uses
  %min.iters.check1096 = icmp ult i32 %i.ej, 4
  br i1 %min.iters.check1096, label %.lr.ph828.preheader, label %vector.memcheck1097

vector.memcheck1097:                              ; preds = %iter.check1114
  %i.lg = sub i64 %.15801079, %.15381080
  %diff.check1098 = icmp ugt i64 %i.lg, -32
  %17 = add i64 %.15381080, %i.ao
  %i.lh = add i64 %.sink1041, %i.co
  %i.li = add i64 %i.lh, %.0537.idx
  %18 = add i64 %i.li, %i.cr
  %19 = sub i64 %18, %17
  %diff.check1099 = icmp ugt i64 %19, -32
  %conflict.rdx1100 = or i1 %diff.check1098, %diff.check1099
  br i1 %conflict.rdx1100, label %.lr.ph828.preheader, label %vector.main.loop.iter.check1101

vector.main.loop.iter.check1101:                  ; preds = %vector.memcheck1097
  %min.iters.check1102 = icmp ult i32 %i.ej, 32
  br i1 %min.iters.check1102, label %vec.epilog.ph1118, label %vector.ph1103

vector.ph1103:                                    ; preds = %vector.main.loop.iter.check1101
  %i.lj = and i64 %wide.trip.count967, 28
  %n.vec1104 = and i64 %wide.trip.count967, 2147483616 ; 4 uses
  br label %vector.body1105

vector.body1105:                                  ; preds = %vector.ph1103, %vector.body1105
  %index1106 = phi i64 [ 0, %vector.ph1103 ], [ %index.next1111, %vector.body1105 ] ; 4 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %.1580, i64 %index1106 ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 16
  %wide.load1107 = load <16 x i8>, ptr %i.lk, align 1
  %wide.load1108 = load <16 x i8>, ptr %i.ll, align 1
  %i.lm = getelementptr inbounds nuw i8, ptr %i.eh, i64 %index1106 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 16
  %wide.load1109 = load <16 x i8>, ptr %i.lm, align 1
  %wide.load1110 = load <16 x i8>, ptr %i.ln, align 1
  %i.lo = add <16 x i8> %wide.load1109, %wide.load1107
  %i.lp = add <16 x i8> %wide.load1110, %wide.load1108
  %i.lq = getelementptr inbounds nuw i8, ptr %.1538, i64 %index1106 ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 16
  store <16 x i8> %i.lo, ptr %i.lq, align 1
  store <16 x i8> %i.lp, ptr %i.lr, align 1
  %index.next1111 = add nuw i64 %index1106, 32    ; 2 uses
  %i.ls = icmp eq i64 %index.next1111, %n.vec1104
  br i1 %i.ls, label %middle.block1112, label %vector.body1105, !llvm.loop !294

middle.block1112:                                 ; preds = %vector.body1105
  %cmp.n1113 = icmp eq i64 %n.vec1104, %wide.trip.count967
  br i1 %cmp.n1113, label %.loopexit723, label %vec.epilog.iter.check1115

vec.epilog.iter.check1115:                        ; preds = %middle.block1112
  %min.epilog.iters.check1117 = icmp eq i64 %i.lj, 0
  br i1 %min.epilog.iters.check1117, label %.lr.ph828.preheader, label %vec.epilog.ph1118, !prof !16

vec.epilog.ph1118:                                ; preds = %vector.main.loop.iter.check1101, %vec.epilog.iter.check1115
  %vec.epilog.resume.val1119 = phi i64 [ %n.vec1104, %vec.epilog.iter.check1115 ], [ 0, %vector.main.loop.iter.check1101 ]
  %n.vec1120 = and i64 %wide.trip.count967, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body1121

vec.epilog.vector.body1121:                       ; preds = %vec.epilog.vector.body1121, %vec.epilog.ph1118
  %index1122 = phi i64 [ %vec.epilog.resume.val1119, %vec.epilog.ph1118 ], [ %index.next1125, %vec.epilog.vector.body1121 ] ; 4 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %.1580, i64 %index1122
  %wide.load1123 = load <4 x i8>, ptr %i.lt, align 1
  %i.lu = getelementptr inbounds nuw i8, ptr %i.eh, i64 %index1122
  %wide.load1124 = load <4 x i8>, ptr %i.lu, align 1
  %i.lv = add <4 x i8> %wide.load1124, %wide.load1123
  %i.lw = getelementptr inbounds nuw i8, ptr %.1538, i64 %index1122
  store <4 x i8> %i.lv, ptr %i.lw, align 1
  %index.next1125 = add nuw i64 %index1122, 4     ; 2 uses
  %i.lx = icmp eq i64 %index.next1125, %n.vec1120
  br i1 %i.lx, label %vec.epilog.middle.block1126, label %vec.epilog.vector.body1121, !llvm.loop !295

vec.epilog.middle.block1126:                      ; preds = %vec.epilog.vector.body1121
  %cmp.n1127 = icmp eq i64 %n.vec1120, %wide.trip.count967
  br i1 %cmp.n1127, label %.loopexit723, label %.lr.ph828.preheader

.lr.ph828.preheader:                              ; preds = %iter.check1114, %vector.memcheck1097, %vec.epilog.iter.check1115, %vec.epilog.middle.block1126
  %indvars.iv964.ph = phi i64 [ 0, %iter.check1114 ], [ 0, %vector.memcheck1097 ], [ %n.vec1104, %vec.epilog.iter.check1115 ], [ %n.vec1120, %vec.epilog.middle.block1126 ] ; 3 uses
  %xtraiter1809 = and i64 %wide.trip.count967, 3  ; 2 uses
  %lcmp.mod1810.not = icmp eq i64 %xtraiter1809, 0
  br i1 %lcmp.mod1810.not, label %.lr.ph828.prol.loopexit, label %.lr.ph828.prol

.lr.ph828.prol:                                   ; preds = %.lr.ph828.preheader, %.lr.ph828.prol
  %indvars.iv964.prol = phi i64 [ %indvars.iv.next965.prol, %.lr.ph828.prol ], [ %indvars.iv964.ph, %.lr.ph828.preheader ] ; 4 uses
  %prol.iter1811 = phi i64 [ %prol.iter1811.next, %.lr.ph828.prol ], [ 0, %.lr.ph828.preheader ]
  %i.ly = getelementptr inbounds nuw i8, ptr %.1580, i64 %indvars.iv964.prol
  %i.lz = load i8, ptr %i.ly, align 1
  %i.ma = getelementptr inbounds nuw i8, ptr %i.eh, i64 %indvars.iv964.prol
  %i.mb = load i8, ptr %i.ma, align 1
  %.narrow640.prol = add i8 %i.mb, %i.lz
  %i.mc = getelementptr inbounds nuw i8, ptr %.1538, i64 %indvars.iv964.prol
  store i8 %.narrow640.prol, ptr %i.mc, align 1
  %indvars.iv.next965.prol = add nuw nsw i64 %indvars.iv964.prol, 1 ; 2 uses
  %prol.iter1811.next = add i64 %prol.iter1811, 1 ; 2 uses
  %prol.iter1811.cmp.not = icmp eq i64 %prol.iter1811.next, %xtraiter1809
  br i1 %prol.iter1811.cmp.not, label %.lr.ph828.prol.loopexit, label %.lr.ph828.prol, !llvm.loop !296

.lr.ph828.prol.loopexit:                          ; preds = %.lr.ph828.prol, %.lr.ph828.preheader
  %indvars.iv964.unr = phi i64 [ %indvars.iv964.ph, %.lr.ph828.preheader ], [ %indvars.iv.next965.prol, %.lr.ph828.prol ]
  %i.md = sub nsw i64 %indvars.iv964.ph, %wide.trip.count967
  %i.me = icmp ugt i64 %i.md, -4
  br i1 %i.me, label %.loopexit723, label %.lr.ph828

.preheader722:                                    ; preds = %bb.ae
  %i.mf = icmp sgt i32 %i.ej, 0
  br i1 %i.mf, label %iter.check, label %.loopexit723

iter.check:                                       ; preds = %.preheader722
  %i.mg = sext i32 %.1552 to i64                  ; 6 uses
  %wide.trip.count972 = zext nneg i32 %i.ej to i64 ; 8 uses
  %min.iters.check = icmp ult i32 %i.ej, 4
  br i1 %min.iters.check, label %.lr.ph830.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.mh = sub i64 %.15801079, %.15381080
  %diff.check = icmp ugt i64 %i.mh, -32
  %i.mi = add nsw i64 %i.mg, -1
  %diff.check1081 = icmp ult i64 %i.mi, 31
  %conflict.rdx = or i1 %diff.check, %diff.check1081
  br i1 %conflict.rdx, label %.lr.ph830.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check1082 = icmp ult i32 %i.ej, 32
  br i1 %min.iters.check1082, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.mj = and i64 %wide.trip.count972, 28
  %n.vec = and i64 %wide.trip.count972, 2147483616 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %.1580, i64 %index ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 16
  %wide.load = load <16 x i8>, ptr %i.mk, align 1
  %wide.load1083 = load <16 x i8>, ptr %i.ml, align 1
  %i.mm = sub nsw i64 %index, %i.mg
  %i.mn = getelementptr inbounds i8, ptr %.1538, i64 %i.mm ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 16
  %wide.load1084 = load <16 x i8>, ptr %i.mn, align 1
  %wide.load1085 = load <16 x i8>, ptr %i.mo, align 1
  %i.mp = add <16 x i8> %wide.load1084, %wide.load
  %i.mq = add <16 x i8> %wide.load1085, %wide.load1083
  %i.mr = getelementptr inbounds nuw i8, ptr %.1538, i64 %index ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 16
  store <16 x i8> %i.mp, ptr %i.mr, align 1
  store <16 x i8> %i.mq, ptr %i.ms, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.mt = icmp eq i64 %index.next, %n.vec
  br i1 %i.mt, label %middle.block, label %vector.body, !llvm.loop !297

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count972
  br i1 %cmp.n, label %.loopexit723, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.mj, 0
  br i1 %min.epilog.iters.check, label %.lr.ph830.preheader, label %vec.epilog.ph, !prof !16

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec1086 = and i64 %wide.trip.count972, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1087 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1090, %vec.epilog.vector.body ] ; 4 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %.1580, i64 %index1087
  %wide.load1088 = load <4 x i8>, ptr %i.mu, align 1
  %i.mv = sub nsw i64 %index1087, %i.mg
  %i.mw = getelementptr inbounds i8, ptr %.1538, i64 %i.mv
  %wide.load1089 = load <4 x i8>, ptr %i.mw, align 1
  %i.mx = add <4 x i8> %wide.load1089, %wide.load1088
  %i.my = getelementptr inbounds nuw i8, ptr %.1538, i64 %index1087
  store <4 x i8> %i.mx, ptr %i.my, align 1
  %index.next1090 = add nuw i64 %index1087, 4     ; 2 uses
  %i.mz = icmp eq i64 %index.next1090, %n.vec1086
  br i1 %i.mz, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !298

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n1091 = icmp eq i64 %n.vec1086, %wide.trip.count972
  br i1 %cmp.n1091, label %.loopexit723, label %.lr.ph830.preheader

.lr.ph830.preheader:                              ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv969.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec1086, %vec.epilog.middle.block ] ; 6 uses
  %xtraiter1812 = and i64 %wide.trip.count972, 1
  %lcmp.mod1813.not = icmp eq i64 %xtraiter1812, 0
  br i1 %lcmp.mod1813.not, label %.lr.ph830.prol.loopexit, label %.lr.ph830.prol

.lr.ph830.prol:                                   ; preds = %.lr.ph830.preheader
  %i.na = getelementptr inbounds nuw i8, ptr %.1580, i64 %indvars.iv969.ph
  %i.nb = load i8, ptr %i.na, align 1
  %i.nc = sub nsw i64 %indvars.iv969.ph, %i.mg
  %i.nd = getelementptr inbounds i8, ptr %.1538, i64 %i.nc
  %i.ne = load i8, ptr %i.nd, align 1
  %.narrow642.prol = add i8 %i.ne, %i.nb
  %i.nf = getelementptr inbounds nuw i8, ptr %.1538, i64 %indvars.iv969.ph
  store i8 %.narrow642.prol, ptr %i.nf, align 1
  %indvars.iv.next970.prol = or disjoint i64 %indvars.iv969.ph, 1
  br label %.lr.ph830.prol.loopexit

.lr.ph830.prol.loopexit:                          ; preds = %.lr.ph830.prol, %.lr.ph830.preheader
  %indvars.iv969.unr = phi i64 [ %indvars.iv969.ph, %.lr.ph830.preheader ], [ %indvars.iv.next970.prol, %.lr.ph830.prol ]
  %i.ng = add nsw i64 %wide.trip.count972, -1
  %i.nh = icmp eq i64 %indvars.iv969.ph, %i.ng
  br i1 %i.nh, label %.loopexit723, label %.lr.ph830

bb.af:                                            ; preds = %bb.ae
  %i.ni = sext i32 %i.ej to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.1538, ptr nonnull align 1 %.1580, i64 %i.ni, i1 false)
  br label %.loopexit723

.lr.ph830:                                        ; preds = %.lr.ph830.prol.loopexit, %.lr.ph830
  %indvars.iv969 = phi i64 [ %indvars.iv.next970.1, %.lr.ph830 ], [ %indvars.iv969.unr, %.lr.ph830.prol.loopexit ] ; 5 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %.1580, i64 %indvars.iv969
end_hunk_0
