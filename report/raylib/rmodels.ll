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
  %i.ao = zext i32 %i.e to i64                    ; 7 uses
  %i.ap = sub nsw i64 0, %i.ao
  %i.aq = icmp slt i32 %6, 8                      ; 4 uses
  %i.ar = sub i32 %i.c, %i.af
  %narrow = select i1 %i.aq, i32 %i.ar, i32 0
  %.0537.idx = zext i32 %narrow to i64            ; 7 uses
  %i.as = icmp eq i32 %6, 8
  %.not612 = icmp eq i32 %i.g, %3                 ; 3 uses
  %i.at = sext i32 %i.h to i64                    ; 61 uses
  %i.au = sext i32 %i.g to i64                    ; 2 uses
  %i.av = sext i32 %3 to i64                      ; 2 uses
  %or.cond = select i1 %i.aq, i1 true, i1 %.not612
  %.6573753 = add i32 %4, -1                      ; 8 uses
  %.not614754 = icmp eq i32 %.6573753, 0          ; 7 uses
  %wide.trip.count977 = zext i32 %5 to i64
  %8 = sub nsw i64 %i.ao, %.0537.idx              ; 4 uses
  %9 = add i32 %4, -2                             ; 2 uses
  %10 = zext i32 %9 to i64                        ; 2 uses
  %11 = mul nsw i64 %i.at, %10
  %12 = zext i32 %9 to i64                        ; 3 uses
  %13 = add nsw i64 %12, -1
  %14 = mul i64 %13, %i.at
  %i.aw = sub nsw i64 0, %i.at
  %15 = mul nsw i64 %i.at, %12
  %i.ax = add i32 %4, -2                          ; 2 uses
  %i.ay = zext i32 %i.ax to i64                   ; 2 uses
  %i.az = mul nsw i64 %i.at, %i.ay                ; 2 uses
  %16 = add i64 %i.az, %.0537.idx
  %i.ba = sub i64 %16, %i.ao
  %i.bb = zext i32 %i.ax to i64                   ; 3 uses
  %17 = add nsw i64 %i.bb, -1
  %18 = mul i64 %17, %i.at
  %19 = sub nsw i64 0, %i.at
  %i.bc = mul nsw i64 %i.at, %i.bb                ; 2 uses
  %20 = add i64 %i.bc, %.0537.idx
  %i.bd = sub i64 %20, %i.ao
  %i.be = add i32 %4, -2
  %i.bf = zext i32 %i.be to i64                   ; 3 uses
  %21 = add nsw i64 %i.bf, -1
  %i.bg = mul i64 %21, %i.at                      ; 2 uses
  %22 = add i64 %i.bg, %.0537.idx
  %i.bh = sub i64 %22, %i.ao
  %23 = add nsw i64 %i.at, %i.ao
  %24 = sub nsw i64 %.0537.idx, %23
  %i.bi = mul nsw i64 %i.at, %i.bf                ; 2 uses
  %i.bj = add i64 %i.bi, %.0537.idx
  %i.bk = sub i64 %i.bj, %i.ao
  %i.bl = sub nsw i64 0, %i.at                    ; 2 uses
  %i.bm = add i32 %4, -2                          ; 2 uses
  %i.bn = zext i32 %i.bm to i64                   ; 3 uses
  %25 = add nsw i64 %i.bn, -1
  %i.bo = mul i64 %25, %i.at
  %26 = mul nsw i64 %i.at, %i.bn
  %i.bp = zext i32 %i.bm to i64                   ; 3 uses
  %27 = add nsw i64 %i.bp, -1
  %i.bq = mul i64 %27, %i.at
  %28 = sub nsw i64 0, %i.at
  %i.br = mul nsw i64 %i.at, %i.bp
  %brmerge.not = and i1 %i.w, %i.a
  %xtraiter1797 = and i32 %4, 7                   ; 3 uses
  %i.bs = icmp ult i32 %4, 8
  %unroll_iter = and i32 %4, -8
  %lcmp.mod1798.not = icmp eq i32 %xtraiter1797, 0
  %lcmp.mod1799 = icmp ne i32 %xtraiter1797, 0
  %invariant.op = add i64 %8, -1
  %invariant.op1837 = add i64 %8, -1
  %invariant.op1839 = add i64 %8, -1
  %invariant.op1841 = add i64 %8, -1
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph836, %.loopexit734
  %indvars.iv974 = phi i64 [ 0, %.lr.ph836 ], [ %indvars.iv.next975, %.loopexit734 ] ; 3 uses
  %.0548834 = phi i32 [ %4, %.lr.ph836 ], [ %.1549, %.loopexit734 ]
  %.0551833 = phi i32 [ %i.i, %.lr.ph836 ], [ %.1552, %.loopexit734 ] ; 17 uses
  %.0579831 = phi ptr [ %1, %.lr.ph836 ], [ %.11590, %.loopexit734 ] ; 3 uses
  %i.bt = load ptr, ptr %i.u, align 8             ; 7 uses
  %i.bu = ptrtoaddr ptr %i.bt to i64              ; 4 uses
  %i.bv = trunc i64 %indvars.iv974 to i32
  %i.bw = mul i32 %i.e, %i.bv
  %i.bx = zext i32 %i.bw to i64                   ; 10 uses
  %i.by = getelementptr i8, ptr %i.bt, i64 %i.bx  ; 5 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.0579831, i64 1 ; 9 uses
  %i.ca = load i8, ptr %.0579831, align 1         ; 3 uses
  %i.cb = icmp ult i8 %i.ca, 5
  br i1 %i.cb, label %bb.l, label %.loopexit713.sink.split

bb.l:                                             ; preds = %bb.k
  %.1552 = select i1 %i.aq, i32 1, i32 %.0551833  ; 30 uses
  %.1549 = select i1 %i.aq, i32 %i.af, i32 %.0548834 ; 2 uses
  %.0537 = getelementptr i8, ptr %i.by, i64 %.0537.idx ; 3 uses
  %i.cc = getelementptr i8, ptr %.0537, i64 %i.ap ; 4 uses
  %i.cd = icmp eq i64 %indvars.iv974, 0
  br i1 %i.cd, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ce = zext nneg i8 %i.ca to i64
  %i.cf = getelementptr inbounds nuw i8, ptr @first_row_filter, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0528.in = phi i8 [ %i.cg, %bb.m ], [ %i.ca, %bb.l ] ; 3 uses
  %i.ch = icmp sgt i32 %.1552, 0                  ; 8 uses
  br i1 %i.ch, label %.lr.ph.preheader, label %._crit_edge

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
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bz, i64 %indvars.iv
  %i.cj = load i8, ptr %i.ci, align 1
  br label %.sink.split

bb.p:                                             ; preds = %.lr.ph
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bz, i64 %indvars.iv
  %i.cl = load i8, ptr %i.ck, align 1
  br label %.sink.split

bb.q:                                             ; preds = %.lr.ph
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bz, i64 %indvars.iv
  %i.cn = load i8, ptr %i.cm, align 1
  %i.co = getelementptr inbounds nuw i8, ptr %i.cc, i64 %indvars.iv
  %i.cp = load i8, ptr %i.co, align 1
  %.narrow648 = add i8 %i.cp, %i.cn
  br label %.sink.split

bb.r:                                             ; preds = %.lr.ph
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bz, i64 %indvars.iv
  %i.cr = load i8, ptr %i.cq, align 1
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cc, i64 %indvars.iv
  %i.ct = load i8, ptr %i.cs, align 1
  %i.cu = lshr i8 %i.ct, 1
  %.narrow646 = add i8 %i.cu, %i.cr
  br label %.sink.split

bb.s:                                             ; preds = %.lr.ph
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bz, i64 %indvars.iv
  %i.cw = load i8, ptr %i.cv, align 1
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cc, i64 %indvars.iv
  %i.cy = load i8, ptr %i.cx, align 1
  %.narrow644 = add i8 %i.cy, %i.cw
  br label %.sink.split

bb.t:                                             ; preds = %.lr.ph
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bz, i64 %indvars.iv
  %i.da = load i8, ptr %i.cz, align 1
  br label %.sink.split

bb.u:                                             ; preds = %.lr.ph
  %i.db = getelementptr inbounds nuw i8, ptr %i.bz, i64 %indvars.iv
  %i.dc = load i8, ptr %i.db, align 1
  br label %.sink.split

.sink.split:                                      ; preds = %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o
  %.sink = phi i8 [ %i.cj, %bb.o ], [ %i.cl, %bb.p ], [ %.narrow648, %bb.q ], [ %.narrow646, %bb.r ], [ %.narrow644, %bb.s ], [ %i.da, %bb.t ], [ %i.dc, %bb.u ]
  %i.dd = getelementptr inbounds nuw i8, ptr %.0537, i64 %indvars.iv
  store i8 %.sink, ptr %i.dd, align 1
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
  %i.de = getelementptr inbounds i8, ptr %i.by, i64 %i.au
  store i8 -1, ptr %i.de, align 1
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.df = getelementptr inbounds i8, ptr %i.bz, i64 %i.au
  %i.dg = getelementptr inbounds i8, ptr %i.by, i64 %i.av
  br label %bb.ad

bb.z:                                             ; preds = %._crit_edge
  br i1 %i.a, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %.pre992 = sext i32 %.0551833 to i64            ; 2 uses
  br i1 %.not612, label %._crit_edge991, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dh = getelementptr inbounds i8, ptr %i.by, i64 %.pre992 ; 2 uses
  store i8 -1, ptr %i.dh, align 1
  %i.di = getelementptr i8, ptr %i.dh, i64 1
  store i8 -1, ptr %i.di, align 1
  br label %._crit_edge991

._crit_edge991:                                   ; preds = %bb.aa, %bb.ab
  %i.dj = getelementptr inbounds i8, ptr %i.bz, i64 %.pre992
  %i.dk = getelementptr inbounds i8, ptr %i.by, i64 %i.at
  br label %bb.ad

bb.ac:                                            ; preds = %bb.z
  %i.dl = getelementptr inbounds nuw i8, ptr %.0579831, i64 2
  %i.dm = getelementptr inbounds nuw i8, ptr %.0537, i64 1
  br label %bb.ad

bb.ad:                                            ; preds = %._crit_edge991, %bb.ac, %bb.y
  %.sink1041 = phi i64 [ %i.at, %._crit_edge991 ], [ 1, %bb.ac ], [ %i.av, %bb.y ] ; 9 uses
  %.1580 = phi ptr [ %i.dj, %._crit_edge991 ], [ %i.dl, %bb.ac ], [ %i.df, %bb.y ] ; 62 uses
  %.1538 = phi ptr [ %i.dk, %._crit_edge991 ], [ %i.dm, %bb.ac ], [ %i.dg, %bb.y ] ; 95 uses
  %.15801079 = ptrtoaddr ptr %.1580 to i64        ; 6 uses
  %.15381080 = ptrtoaddr ptr %.1538 to i64        ; 10 uses
  %i.dn = getelementptr i8, ptr %i.cc, i64 %.sink1041 ; 24 uses
  br i1 %or.cond, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.do = add i32 %.1549, -1
  %i.dp = mul i32 %i.do, %.1552                   ; 26 uses
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
  %i.dq = icmp sgt i32 %i.dp, 0
  br i1 %i.dq, label %iter.check1279, label %.loopexit723

iter.check1279:                                   ; preds = %.preheader732
  %i.dr = sext i32 %.1552 to i64                  ; 6 uses
  %wide.trip.count947 = zext nneg i32 %i.dp to i64 ; 8 uses
  %min.iters.check1261 = icmp ult i32 %i.dp, 4
  br i1 %min.iters.check1261, label %.lr.ph820.preheader, label %vector.memcheck1262

vector.memcheck1262:                              ; preds = %iter.check1279
  %i.ds = sub i64 %.15801079, %.15381080
  %diff.check1263 = icmp ugt i64 %i.ds, -32
  %i.dt = add nsw i64 %i.dr, -1
  %diff.check1264 = icmp ult i64 %i.dt, 31
  %conflict.rdx1265 = or i1 %diff.check1263, %diff.check1264
  br i1 %conflict.rdx1265, label %.lr.ph820.preheader, label %vector.main.loop.iter.check1266

vector.main.loop.iter.check1266:                  ; preds = %vector.memcheck1262
  %min.iters.check1267 = icmp ult i32 %i.dp, 32
  br i1 %min.iters.check1267, label %vec.epilog.ph1283, label %vector.ph1268

vector.ph1268:                                    ; preds = %vector.main.loop.iter.check1266
  %i.du = and i64 %wide.trip.count947, 28
  %n.vec1269 = and i64 %wide.trip.count947, 2147483616 ; 4 uses
  br label %vector.body1270

vector.body1270:                                  ; preds = %vector.ph1268, %vector.body1270
  %index1271 = phi i64 [ 0, %vector.ph1268 ], [ %index.next1276, %vector.body1270 ] ; 4 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.1580, i64 %index1271 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %wide.load1272 = load <16 x i8>, ptr %i.dv, align 1
  %wide.load1273 = load <16 x i8>, ptr %i.dw, align 1
  %i.dx = sub nsw i64 %index1271, %i.dr
  %i.dy = getelementptr inbounds i8, ptr %.1538, i64 %i.dx ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %wide.load1274 = load <16 x i8>, ptr %i.dy, align 1
  %wide.load1275 = load <16 x i8>, ptr %i.dz, align 1
  %i.ea = add <16 x i8> %wide.load1274, %wide.load1272
  %i.eb = add <16 x i8> %wide.load1275, %wide.load1273
  %i.ec = getelementptr inbounds nuw i8, ptr %.1538, i64 %index1271 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  store <16 x i8> %i.ea, ptr %i.ec, align 1
  store <16 x i8> %i.eb, ptr %i.ed, align 1
  %index.next1276 = add nuw i64 %index1271, 32    ; 2 uses
  %i.ee = icmp eq i64 %index.next1276, %n.vec1269
  br i1 %i.ee, label %middle.block1277, label %vector.body1270, !llvm.loop !286

middle.block1277:                                 ; preds = %vector.body1270
  %cmp.n1278 = icmp eq i64 %n.vec1269, %wide.trip.count947
  br i1 %cmp.n1278, label %.loopexit723, label %vec.epilog.iter.check1280

vec.epilog.iter.check1280:                        ; preds = %middle.block1277
  %min.epilog.iters.check1282 = icmp eq i64 %i.du, 0
  br i1 %min.epilog.iters.check1282, label %.lr.ph820.preheader, label %vec.epilog.ph1283, !prof !16

vec.epilog.ph1283:                                ; preds = %vector.main.loop.iter.check1266, %vec.epilog.iter.check1280
  %vec.epilog.resume.val1284 = phi i64 [ %n.vec1269, %vec.epilog.iter.check1280 ], [ 0, %vector.main.loop.iter.check1266 ]
  %n.vec1285 = and i64 %wide.trip.count947, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body1286

vec.epilog.vector.body1286:                       ; preds = %vec.epilog.vector.body1286, %vec.epilog.ph1283
  %index1287 = phi i64 [ %vec.epilog.resume.val1284, %vec.epilog.ph1283 ], [ %index.next1290, %vec.epilog.vector.body1286 ] ; 4 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.1580, i64 %index1287
  %wide.load1288 = load <4 x i8>, ptr %i.ef, align 1
  %i.eg = sub nsw i64 %index1287, %i.dr
  %i.eh = getelementptr inbounds i8, ptr %.1538, i64 %i.eg
  %wide.load1289 = load <4 x i8>, ptr %i.eh, align 1
  %i.ei = add <4 x i8> %wide.load1289, %wide.load1288
  %i.ej = getelementptr inbounds nuw i8, ptr %.1538, i64 %index1287
  store <4 x i8> %i.ei, ptr %i.ej, align 1
  %index.next1290 = add nuw i64 %index1287, 4     ; 2 uses
  %i.ek = icmp eq i64 %index.next1290, %n.vec1285
  br i1 %i.ek, label %vec.epilog.middle.block1291, label %vec.epilog.vector.body1286, !llvm.loop !287

vec.epilog.middle.block1291:                      ; preds = %vec.epilog.vector.body1286
  %cmp.n1292 = icmp eq i64 %n.vec1285, %wide.trip.count947
  br i1 %cmp.n1292, label %.loopexit723, label %.lr.ph820.preheader

.lr.ph820.preheader:                              ; preds = %iter.check1279, %vector.memcheck1262, %vec.epilog.iter.check1280, %vec.epilog.middle.block1291
  %indvars.iv944.ph = phi i64 [ 0, %iter.check1279 ], [ 0, %vector.memcheck1262 ], [ %n.vec1269, %vec.epilog.iter.check1280 ], [ %n.vec1285, %vec.epilog.middle.block1291 ] ; 6 uses
  %xtraiter1800 = and i64 %wide.trip.count947, 1
  %lcmp.mod1801.not = icmp eq i64 %xtraiter1800, 0
  br i1 %lcmp.mod1801.not, label %.lr.ph820.prol.loopexit, label %.lr.ph820.prol

.lr.ph820.prol:                                   ; preds = %.lr.ph820.preheader
  %i.el = getelementptr inbounds nuw i8, ptr %.1580, i64 %indvars.iv944.ph
  %i.em = load i8, ptr %i.el, align 1
  %i.en = sub nsw i64 %indvars.iv944.ph, %i.dr
  %i.eo = getelementptr inbounds i8, ptr %.1538, i64 %i.en
  %i.ep = load i8, ptr %i.eo, align 1
  %.narrow632.prol = add i8 %i.ep, %i.em
  %i.eq = getelementptr inbounds nuw i8, ptr %.1538, i64 %indvars.iv944.ph
  store i8 %.narrow632.prol, ptr %i.eq, align 1
  %indvars.iv.next945.prol = or disjoint i64 %indvars.iv944.ph, 1
  br label %.lr.ph820.prol.loopexit

.lr.ph820.prol.loopexit:                          ; preds = %.lr.ph820.prol, %.lr.ph820.preheader
  %indvars.iv944.unr = phi i64 [ %indvars.iv944.ph, %.lr.ph820.preheader ], [ %indvars.iv.next945.prol, %.lr.ph820.prol ]
  %i.er = add nsw i64 %wide.trip.count947, -1
  %i.es = icmp eq i64 %indvars.iv944.ph, %i.er
  br i1 %i.es, label %.loopexit723, label %.lr.ph820

.preheader730:                                    ; preds = %bb.ae
  %i.et = icmp sgt i32 %i.dp, 0
  br i1 %i.et, label %iter.check1242, label %.loopexit723

iter.check1242:                                   ; preds = %.preheader730
  %i.eu = sext i32 %.1552 to i64                  ; 6 uses
  %wide.trip.count952 = zext nneg i32 %i.dp to i64 ; 8 uses
  %min.iters.check1224 = icmp ult i32 %i.dp, 4
  br i1 %min.iters.check1224, label %.lr.ph822.preheader, label %vector.memcheck1225

vector.memcheck1225:                              ; preds = %iter.check1242
  %i.ev = sub i64 %.15801079, %.15381080
  %diff.check1226 = icmp ugt i64 %i.ev, -32
  %i.ew = add nsw i64 %i.eu, -1
  %diff.check1227 = icmp ult i64 %i.ew, 31
  %conflict.rdx1228 = or i1 %diff.check1226, %diff.check1227
  br i1 %conflict.rdx1228, label %.lr.ph822.preheader, label %vector.main.loop.iter.check1229

vector.main.loop.iter.check1229:                  ; preds = %vector.memcheck1225
  %min.iters.check1230 = icmp ult i32 %i.dp, 32
  br i1 %min.iters.check1230, label %vec.epilog.ph1246, label %vector.ph1231

vector.ph1231:                                    ; preds = %vector.main.loop.iter.check1229
  %i.ex = and i64 %wide.trip.count952, 28
  %n.vec1232 = and i64 %wide.trip.count952, 2147483616 ; 4 uses
  br label %vector.body1233

vector.body1233:                                  ; preds = %vector.ph1231, %vector.body1233
  %index1234 = phi i64 [ 0, %vector.ph1231 ], [ %index.next1239, %vector.body1233 ] ; 4 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.1580, i64 %index1234 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %wide.load1235 = load <16 x i8>, ptr %i.ey, align 1
  %wide.load1236 = load <16 x i8>, ptr %i.ez, align 1
  %i.fa = sub nsw i64 %index1234, %i.eu
  %i.fb = getelementptr inbounds i8, ptr %.1538, i64 %i.fa ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %wide.load1237 = load <16 x i8>, ptr %i.fb, align 1
  %wide.load1238 = load <16 x i8>, ptr %i.fc, align 1
  %i.fd = lshr <16 x i8> %wide.load1237, splat (i8 1)
  %i.fe = lshr <16 x i8> %wide.load1238, splat (i8 1)
  %i.ff = add <16 x i8> %i.fd, %wide.load1235
  %i.fg = add <16 x i8> %i.fe, %wide.load1236
  %i.fh = getelementptr inbounds nuw i8, ptr %.1538, i64 %index1234 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  store <16 x i8> %i.ff, ptr %i.fh, align 1
  store <16 x i8> %i.fg, ptr %i.fi, align 1
  %index.next1239 = add nuw i64 %index1234, 32    ; 2 uses
  %i.fj = icmp eq i64 %index.next1239, %n.vec1232
  br i1 %i.fj, label %middle.block1240, label %vector.body1233, !llvm.loop !288

middle.block1240:                                 ; preds = %vector.body1233
  %cmp.n1241 = icmp eq i64 %n.vec1232, %wide.trip.count952
  br i1 %cmp.n1241, label %.loopexit723, label %vec.epilog.iter.check1243

vec.epilog.iter.check1243:                        ; preds = %middle.block1240
  %min.epilog.iters.check1245 = icmp eq i64 %i.ex, 0
  br i1 %min.epilog.iters.check1245, label %.lr.ph822.preheader, label %vec.epilog.ph1246, !prof !16

vec.epilog.ph1246:                                ; preds = %vector.main.loop.iter.check1229, %vec.epilog.iter.check1243
  %vec.epilog.resume.val1247 = phi i64 [ %n.vec1232, %vec.epilog.iter.check1243 ], [ 0, %vector.main.loop.iter.check1229 ]
  %n.vec1248 = and i64 %wide.trip.count952, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body1249

vec.epilog.vector.body1249:                       ; preds = %vec.epilog.vector.body1249, %vec.epilog.ph1246
  %index1250 = phi i64 [ %vec.epilog.resume.val1247, %vec.epilog.ph1246 ], [ %index.next1253, %vec.epilog.vector.body1249 ] ; 4 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.1580, i64 %index1250
  %wide.load1251 = load <4 x i8>, ptr %i.fk, align 1
  %i.fl = sub nsw i64 %index1250, %i.eu
  %i.fm = getelementptr inbounds i8, ptr %.1538, i64 %i.fl
  %wide.load1252 = load <4 x i8>, ptr %i.fm, align 1
  %i.fn = lshr <4 x i8> %wide.load1252, splat (i8 1)
  %i.fo = add <4 x i8> %i.fn, %wide.load1251
  %i.fp = getelementptr inbounds nuw i8, ptr %.1538, i64 %index1250
  store <4 x i8> %i.fo, ptr %i.fp, align 1
  %index.next1253 = add nuw i64 %index1250, 4     ; 2 uses
  %i.fq = icmp eq i64 %index.next1253, %n.vec1248
  br i1 %i.fq, label %vec.epilog.middle.block1254, label %vec.epilog.vector.body1249, !llvm.loop !289

vec.epilog.middle.block1254:                      ; preds = %vec.epilog.vector.body1249
end_hunk_0
begin_hunk_1_@_m3dstbi__create_png_image_raw:bb.a
  %indvars.iv969 = phi i64 [ %indvars.iv.next970.1, %.lr.ph830 ], [ %indvars.iv969.unr, %.lr.ph830.prol.loopexit ] ; 5 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %.1580, i64 %indvars.iv969
  %i.mu = load i8, ptr %i.mt, align 1
  %i.mv = sub nsw i64 %indvars.iv969, %i.lq
  %i.mw = getelementptr inbounds i8, ptr %.1538, i64 %i.mv
  %i.mx = load i8, ptr %i.mw, align 1
  %.narrow642 = add i8 %i.mx, %i.mu
  %i.my = getelementptr inbounds nuw i8, ptr %.1538, i64 %indvars.iv969
  store i8 %.narrow642, ptr %i.my, align 1
  %indvars.iv.next970 = add nuw nsw i64 %indvars.iv969, 1 ; 3 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %.1580, i64 %indvars.iv.next970
  %i.na = load i8, ptr %i.mz, align 1
  %i.nb = sub nsw i64 %indvars.iv.next970, %i.lq
  %i.nc = getelementptr inbounds i8, ptr %.1538, i64 %i.nb
  %i.nd = load i8, ptr %i.nc, align 1
  %.narrow642.1 = add i8 %i.nd, %i.na
  %i.ne = getelementptr inbounds nuw i8, ptr %.1538, i64 %indvars.iv.next970
  store i8 %.narrow642.1, ptr %i.ne, align 1
  %indvars.iv.next970.1 = add nuw nsw i64 %indvars.iv969, 2 ; 2 uses
  %exitcond973.not.1 = icmp eq i64 %indvars.iv.next970.1, %wide.trip.count972
  br i1 %exitcond973.not.1, label %.loopexit723, label %.lr.ph830, !llvm.loop !299

.lr.ph828:                                        ; preds = %.lr.ph828.prol.loopexit, %.lr.ph828
  %indvars.iv964 = phi i64 [ %indvars.iv.next965.3, %.lr.ph828 ], [ %indvars.iv964.unr, %.lr.ph828.prol.loopexit ] ; 7 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %.1580, i64 %indvars.iv964
  %i.ng = load i8, ptr %i.nf, align 1
  %i.nh = getelementptr inbounds nuw i8, ptr %i.dn, i64 %indvars.iv964
  %i.ni = load i8, ptr %i.nh, align 1
  %.narrow640 = add i8 %i.ni, %i.ng
  %i.nj = getelementptr inbounds nuw i8, ptr %.1538, i64 %indvars.iv964
  store i8 %.narrow640, ptr %i.nj, align 1
  %indvars.iv.next965 = add nuw nsw i64 %indvars.iv964, 1 ; 3 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %.1580, i64 %indvars.iv.next965
  %i.nl = load i8, ptr %i.nk, align 1
  %i.nm = getelementptr inbounds nuw i8, ptr %i.dn, i64 %indvars.iv.next965
  %i.nn = load i8, ptr %i.nm, align 1
  %.narrow640.1 = add i8 %i.nn, %i.nl
  %i.no = getelementptr inbounds nuw i8, ptr %.1538, i64 %indvars.iv.next965
  store i8 %.narrow640.1, ptr %i.no, align 1
  %indvars.iv.next965.1 = add nuw nsw i64 %indvars.iv964, 2 ; 3 uses
  %i.np = getelementptr inbounds nuw i8, ptr %.1580, i64 %indvars.iv.next965.1
  %i.nq = load i8, ptr %i.np, align 1
  %i.nr = getelementptr inbounds nuw i8, ptr %i.dn, i64 %indvars.iv.next965.1
  %i.ns = load i8, ptr %i.nr, align 1
  %.narrow640.2 = add i8 %i.ns, %i.nq
  %i.nt = getelementptr inbounds nuw i8, ptr %.1538, i64 %indvars.iv.next965.1
  store i8 %.narrow640.2, ptr %i.nt, align 1
  %indvars.iv.next965.2 = add nuw nsw i64 %indvars.iv964, 3 ; 3 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %.1580, i64 %indvars.iv.next965.2
  %i.nv = load i8, ptr %i.nu, align 1
  %i.nw = getelementptr inbounds nuw i8, ptr %i.dn, i64 %indvars.iv.next965.2
  %i.nx = load i8, ptr %i.nw, align 1
  %.narrow640.3 = add i8 %i.nx, %i.nv
  %i.ny = getelementptr inbounds nuw i8, ptr %.1538, i64 %indvars.iv.next965.2
  store i8 %.narrow640.3, ptr %i.ny, align 1
  %indvars.iv.next965.3 = add nuw nsw i64 %indvars.iv964, 4 ; 2 uses
  %exitcond968.not.3 = icmp eq i64 %indvars.iv.next965.3, %wide.trip.count967
  br i1 %exitcond968.not.3, label %.loopexit723, label %.lr.ph828, !llvm.loop !300

.lr.ph826:                                        ; preds = %.lr.ph826.prol.loopexit, %.lr.ph826
  %indvars.iv959 = phi i64 [ %indvars.iv.next960.1, %.lr.ph826 ], [ %indvars.iv959.unr, %.lr.ph826.prol.loopexit ] ; 6 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %.1580, i64 %indvars.iv959
  %i.oa = load i8, ptr %i.nz, align 1
  %i.ob = getelementptr inbounds nuw i8, ptr %i.dn, i64 %indvars.iv959
  %i.oc = load i8, ptr %i.ob, align 1
  %i.od = zext i8 %i.oc to i16
  %i.oe = sub nsw i64 %indvars.iv959, %i.il
  %i.of = getelementptr inbounds i8, ptr %.1538, i64 %i.oe
  %i.og = load i8, ptr %i.of, align 1
  %i.oh = zext i8 %i.og to i16
  %i.oi = add nuw nsw i16 %i.oh, %i.od
  %i.oj = lshr i16 %i.oi, 1
  %.tr637 = trunc nuw i16 %i.oj to i8
  %.narrow638 = add i8 %i.oa, %.tr637
  %i.ok = getelementptr inbounds nuw i8, ptr %.1538, i64 %indvars.iv959
  store i8 %.narrow638, ptr %i.ok, align 1
  %indvars.iv.next960 = add nuw nsw i64 %indvars.iv959, 1 ; 4 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %.1580, i64 %indvars.iv.next960
  %i.om = load i8, ptr %i.ol, align 1
  %i.on = getelementptr inbounds nuw i8, ptr %i.dn, i64 %indvars.iv.next960
  %i.oo = load i8, ptr %i.on, align 1
  %i.op = zext i8 %i.oo to i16
  %i.oq = sub nsw i64 %indvars.iv.next960, %i.il
  %i.or = getelementptr inbounds i8, ptr %.1538, i64 %i.oq
  %i.os = load i8, ptr %i.or, align 1
  %i.ot = zext i8 %i.os to i16
  %i.ou = add nuw nsw i16 %i.ot, %i.op
  %i.ov = lshr i16 %i.ou, 1
  %.tr637.1 = trunc nuw i16 %i.ov to i8
  %.narrow638.1 = add i8 %i.om, %.tr637.1
  %i.ow = getelementptr inbounds nuw i8, ptr %.1538, i64 %indvars.iv.next960
  store i8 %.narrow638.1, ptr %i.ow, align 1
  %indvars.iv.next960.1 = add nuw nsw i64 %indvars.iv959, 2 ; 2 uses
  %exitcond963.not.1 = icmp eq i64 %indvars.iv.next960.1, %wide.trip.count962
  br i1 %exitcond963.not.1, label %.loopexit723, label %.lr.ph826, !llvm.loop !301

.lr.ph824:                                        ; preds = %.lr.ph824.preheader, %.lr.ph824
  %indvars.iv954 = phi i64 [ %indvars.iv.next955, %.lr.ph824 ], [ %indvars.iv954.ph, %.lr.ph824.preheader ] ; 5 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %.1580, i64 %indvars.iv954
  %i.oy = load i8, ptr %i.ox, align 1
  %i.oz = sub nsw i64 %indvars.iv954, %i.gb       ; 2 uses
  %i.pa = getelementptr inbounds i8, ptr %.1538, i64 %i.oz
  %i.pb = load i8, ptr %i.pa, align 1             ; 2 uses
  %i.pc = zext i8 %i.pb to i32                    ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.dn, i64 %indvars.iv954
  %i.pe = load i8, ptr %i.pd, align 1             ; 2 uses
  %i.pf = zext i8 %i.pe to i32                    ; 2 uses
  %i.pg = getelementptr inbounds i8, ptr %i.dn, i64 %i.oz
  %i.ph = load i8, ptr %i.pg, align 1             ; 2 uses
  %i.pi = zext i8 %i.ph to i32                    ; 2 uses
  %i.pj = add nuw nsw i32 %i.pf, %i.pc
  %i.pk = sub nsw i32 %i.pj, %i.pi                ; 3 uses
  %i.pl = sub nsw i32 %i.pk, %i.pc
  %i.pm = tail call i32 @llvm.abs.i32(i32 %i.pl, i1 true) ; 2 uses
  %i.pn = sub nsw i32 %i.pk, %i.pf
  %i.po = tail call i32 @llvm.abs.i32(i32 %i.pn, i1 true) ; 2 uses
  %i.pp = sub nsw i32 %i.pk, %i.pi
  %i.pq = tail call i32 @llvm.abs.i32(i32 %i.pp, i1 true) ; 2 uses
  %.not.i651 = icmp samesign ugt i32 %i.pm, %i.po
  %.not20.i652 = icmp samesign ugt i32 %i.pm, %i.pq
  %or.cond.i653 = select i1 %.not.i651, i1 true, i1 %.not20.i652
  %.not21.i = icmp samesign ugt i32 %i.po, %i.pq
  %i.pr = select i1 %.not21.i, i8 %i.ph, i8 %i.pe
  %.tr635 = select i1 %or.cond.i653, i8 %i.pr, i8 %i.pb
  %.narrow636 = add i8 %.tr635, %i.oy
  %i.ps = getelementptr inbounds nuw i8, ptr %.1538, i64 %indvars.iv954
  store i8 %.narrow636, ptr %i.ps, align 1
  %indvars.iv.next955 = add nuw nsw i64 %indvars.iv954, 1 ; 2 uses
  %exitcond958.not = icmp eq i64 %indvars.iv.next955, %wide.trip.count957
  br i1 %exitcond958.not, label %.loopexit723, label %.lr.ph824, !llvm.loop !302

.lr.ph822:                                        ; preds = %.lr.ph822.prol.loopexit, %.lr.ph822
  %indvars.iv949 = phi i64 [ %indvars.iv.next950.1, %.lr.ph822 ], [ %indvars.iv949.unr, %.lr.ph822.prol.loopexit ] ; 5 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %.1580, i64 %indvars.iv949
  %i.pu = load i8, ptr %i.pt, align 1
  %i.pv = sub nsw i64 %indvars.iv949, %i.eu
  %i.pw = getelementptr inbounds i8, ptr %.1538, i64 %i.pv
  %i.px = load i8, ptr %i.pw, align 1
  %i.py = lshr i8 %i.px, 1
  %.narrow634 = add i8 %i.py, %i.pu
  %i.pz = getelementptr inbounds nuw i8, ptr %.1538, i64 %indvars.iv949
  store i8 %.narrow634, ptr %i.pz, align 1
  %indvars.iv.next950 = add nuw nsw i64 %indvars.iv949, 1 ; 3 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %.1580, i64 %indvars.iv.next950
  %i.qb = load i8, ptr %i.qa, align 1
  %i.qc = sub nsw i64 %indvars.iv.next950, %i.eu
  %i.qd = getelementptr inbounds i8, ptr %.1538, i64 %i.qc
  %i.qe = load i8, ptr %i.qd, align 1
  %i.qf = lshr i8 %i.qe, 1
  %.narrow634.1 = add i8 %i.qf, %i.qb
  %i.qg = getelementptr inbounds nuw i8, ptr %.1538, i64 %indvars.iv.next950
  store i8 %.narrow634.1, ptr %i.qg, align 1
  %indvars.iv.next950.1 = add nuw nsw i64 %indvars.iv949, 2 ; 2 uses
  %exitcond953.not.1 = icmp eq i64 %indvars.iv.next950.1, %wide.trip.count952
  br i1 %exitcond953.not.1, label %.loopexit723, label %.lr.ph822, !llvm.loop !303

.lr.ph820:                                        ; preds = %.lr.ph820.prol.loopexit, %.lr.ph820
  %indvars.iv944 = phi i64 [ %indvars.iv.next945.1, %.lr.ph820 ], [ %indvars.iv944.unr, %.lr.ph820.prol.loopexit ] ; 5 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %.1580, i64 %indvars.iv944
  %i.qi = load i8, ptr %i.qh, align 1
  %i.qj = sub nsw i64 %indvars.iv944, %i.dr
  %i.qk = getelementptr inbounds i8, ptr %.1538, i64 %i.qj
  %i.ql = load i8, ptr %i.qk, align 1
  %.narrow632 = add i8 %i.ql, %i.qi
  %i.qm = getelementptr inbounds nuw i8, ptr %.1538, i64 %indvars.iv944
  store i8 %.narrow632, ptr %i.qm, align 1
  %indvars.iv.next945 = add nuw nsw i64 %indvars.iv944, 1 ; 3 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %.1580, i64 %indvars.iv.next945
  %i.qo = load i8, ptr %i.qn, align 1
  %i.qp = sub nsw i64 %indvars.iv.next945, %i.dr
  %i.qq = getelementptr inbounds i8, ptr %.1538, i64 %i.qp
  %i.qr = load i8, ptr %i.qq, align 1
  %.narrow632.1 = add i8 %i.qr, %i.qo
  %i.qs = getelementptr inbounds nuw i8, ptr %.1538, i64 %indvars.iv.next945
  store i8 %.narrow632.1, ptr %i.qs, align 1
  %indvars.iv.next945.1 = add nuw nsw i64 %indvars.iv944, 2 ; 2 uses
  %exitcond948.not.1 = icmp eq i64 %indvars.iv.next945.1, %wide.trip.count947
  br i1 %exitcond948.not.1, label %.loopexit723, label %.lr.ph820, !llvm.loop !304

.loopexit723:                                     ; preds = %.lr.ph820.prol.loopexit, %.lr.ph820, %.lr.ph822.prol.loopexit, %.lr.ph822, %.lr.ph824, %.lr.ph826.prol.loopexit, %.lr.ph826, %.lr.ph828.prol.loopexit, %.lr.ph828, %.lr.ph830.prol.loopexit, %.lr.ph830, %middle.block1277, %vec.epilog.middle.block1291, %middle.block1240, %vec.epilog.middle.block1254, %middle.block1201, %vec.epilog.middle.block1217, %middle.block1155, %vec.epilog.middle.block1170, %middle.block1112, %vec.epilog.middle.block1126, %middle.block, %vec.epilog.middle.block, %.preheader732, %.preheader730, %.preheader728, %.preheader726, %.preheader724, %.preheader722, %bb.af, %bb.ae
  %i.qt = sext i32 %i.dp to i64
  %i.qu = getelementptr inbounds i8, ptr %.1580, i64 %i.qt
  br label %.loopexit734

bb.ag:                                            ; preds = %bb.ad
  switch i8 %.0528.in, label %.loopexit736 [
    i8 0, label %.preheader735
    i8 1, label %.preheader737
    i8 2, label %.preheader739
    i8 3, label %.preheader741
    i8 4, label %.preheader743
    i8 5, label %.preheader745
    i8 6, label %.preheader747
  ]

.preheader747:                                    ; preds = %bb.ag
  br i1 %.not614754, label %.loopexit736, label %.preheader721.lr.ph

.preheader721.lr.ph:                              ; preds = %.preheader747
  %i.qv = sext i32 %.0551833 to i64               ; 3 uses
  %wide.trip.count911 = zext i32 %.1552 to i64    ; 11 uses
  %scevgep1692 = getelementptr i8, ptr %.1538, i64 %i.bq
  %scevgep1693 = getelementptr i8, ptr %scevgep1692, i64 %wide.trip.count911
  %scevgep1694 = getelementptr i8, ptr %.1538, i64 %28
  %i.qw = mul nsw i64 %i.bp, %i.qv
  %i.qx = getelementptr i8, ptr %.1580, i64 %i.qw
  %scevgep1695 = getelementptr i8, ptr %i.qx, i64 %wide.trip.count911
  %scevgep1696 = getelementptr i8, ptr %.1538, i64 %i.br
  %scevgep1697 = getelementptr i8, ptr %scevgep1696, i64 %wide.trip.count911 ; 2 uses
  %min.iters.check1698 = icmp ult i32 %.1552, 4
  %bound01700 = icmp ult ptr %.1538, %scevgep1695
  %bound11701 = icmp ult ptr %.1580, %scevgep1697
  %found.conflict1702 = and i1 %bound01700, %bound11701
  %i.qy = or i32 %.0551833, %i.h
  %i.qz = icmp slt i32 %i.qy, 0
  %i.ra = or i1 %found.conflict1702, %i.qz
  %bound01705 = icmp ult ptr %.1538, %scevgep1693
  %bound11706 = icmp ult ptr %scevgep1694, %scevgep1697
  %found.conflict1707 = and i1 %bound01705, %bound11706
  %conflict.rdx1708 = or i1 %i.ra, %found.conflict1707
  %min.iters.check1710 = icmp ult i32 %.1552, 32
  %i.rb = and i64 %wide.trip.count911, 28
  %n.vec1712 = and i64 %wide.trip.count911, 2147483616 ; 4 uses
  %cmp.n1721 = icmp eq i64 %n.vec1712, %wide.trip.count911
  %min.epilog.iters.check1725 = icmp eq i64 %i.rb, 0
  %n.vec1728 = and i64 %wide.trip.count911, 2147483644 ; 3 uses
  %cmp.n1735 = icmp eq i64 %n.vec1728, %wide.trip.count911
  %xtraiter = and i64 %wide.trip.count911, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.rc = add nsw i64 %wide.trip.count911, -1
  br label %.preheader721

.preheader745:                                    ; preds = %bb.ag
  br i1 %.not614754, label %.loopexit736, label %.preheader720.lr.ph

.preheader720.lr.ph:                              ; preds = %.preheader745
  %i.rd = sext i32 %.0551833 to i64               ; 3 uses
  %wide.trip.count916 = zext i32 %.1552 to i64    ; 11 uses
  %scevgep1631 = getelementptr i8, ptr %.1538, i64 %i.bo
  %scevgep1632 = getelementptr i8, ptr %scevgep1631, i64 %wide.trip.count916
  %scevgep1633 = getelementptr i8, ptr %.1538, i64 %i.bl
  %i.re = mul nsw i64 %i.bn, %i.rd
  %i.rf = getelementptr i8, ptr %.1580, i64 %i.re
  %scevgep1634 = getelementptr i8, ptr %i.rf, i64 %wide.trip.count916
  %scevgep1635 = getelementptr i8, ptr %.1538, i64 %26
  %scevgep1636 = getelementptr i8, ptr %scevgep1635, i64 %wide.trip.count916 ; 2 uses
  %min.iters.check1637 = icmp ult i32 %.1552, 4
  %bound01639 = icmp ult ptr %.1538, %scevgep1634
  %bound11640 = icmp ult ptr %.1580, %scevgep1636
  %found.conflict1641 = and i1 %bound01639, %bound11640
  %i.rg = or i32 %.0551833, %i.h
  %i.rh = icmp slt i32 %i.rg, 0
  %i.ri = or i1 %found.conflict1641, %i.rh
  %bound01644 = icmp ult ptr %.1538, %scevgep1632
  %bound11645 = icmp ult ptr %scevgep1633, %scevgep1636
  %found.conflict1646 = and i1 %bound01644, %bound11645
  %conflict.rdx1647 = or i1 %i.ri, %found.conflict1646
  %min.iters.check1649 = icmp ult i32 %.1552, 32
  %i.rj = and i64 %wide.trip.count916, 28
  %n.vec1651 = and i64 %wide.trip.count916, 2147483616 ; 4 uses
  %cmp.n1660 = icmp eq i64 %n.vec1651, %wide.trip.count916
  %min.epilog.iters.check1664 = icmp eq i64 %i.rj, 0
  %n.vec1667 = and i64 %wide.trip.count916, 2147483644 ; 3 uses
  %cmp.n1674 = icmp eq i64 %n.vec1667, %wide.trip.count916
  %xtraiter1785 = and i64 %wide.trip.count916, 1
  %lcmp.mod1786.not = icmp eq i64 %xtraiter1785, 0
  %i.rk = add nsw i64 %wide.trip.count916, -1
  br label %.preheader720

.preheader743:                                    ; preds = %bb.ag
  br i1 %.not614754, label %.loopexit736, label %.preheader719.lr.ph

.preheader719.lr.ph:                              ; preds = %.preheader743
  %i.rl = sext i32 %.0551833 to i64               ; 3 uses
  %wide.trip.count921 = zext i32 %.1552 to i64    ; 10 uses
  %scevgep1554 = getelementptr i8, ptr %i.bt, i64 %i.bh
  %i.rm = add nsw i64 %.sink1041, %wide.trip.count921
  %i.rn = add nsw i64 %i.rm, %i.bx                ; 2 uses
  %scevgep1555 = getelementptr i8, ptr %scevgep1554, i64 %i.rn
  %scevgep1556 = getelementptr i8, ptr %i.bt, i64 %24
  %i.ro = getelementptr i8, ptr %scevgep1556, i64 %.sink1041
  %scevgep1557 = getelementptr i8, ptr %i.ro, i64 %i.bx
  %scevgep1558 = getelementptr i8, ptr %i.bt, i64 %i.bk
  %scevgep1559 = getelementptr i8, ptr %scevgep1558, i64 %i.rn
  %scevgep1560 = getelementptr i8, ptr %.1538, i64 %i.bg
  %scevgep1561 = getelementptr i8, ptr %scevgep1560, i64 %wide.trip.count921
  %scevgep1562 = getelementptr i8, ptr %.1538, i64 %i.bl
  %i.rp = mul nsw i64 %i.bf, %i.rl
  %i.rq = getelementptr i8, ptr %.1580, i64 %i.rp
  %scevgep1563 = getelementptr i8, ptr %i.rq, i64 %wide.trip.count921
  %scevgep1564 = getelementptr i8, ptr %.1538, i64 %i.bi
  %scevgep1565 = getelementptr i8, ptr %scevgep1564, i64 %wide.trip.count921 ; 4 uses
  %min.iters.check1566 = icmp ult i32 %.1552, 4
  %bound01568 = icmp ult ptr %.1538, %scevgep1563
  %bound11569 = icmp ult ptr %.1580, %scevgep1565
  %found.conflict1570 = and i1 %bound01568, %bound11569
  %i.rr = or i32 %.0551833, %i.h
  %i.rs = icmp slt i32 %i.rr, 0
  %i.rt = or i1 %found.conflict1570, %i.rs
  %bound01573 = icmp ult ptr %.1538, %scevgep1561
  %bound11574 = icmp ult ptr %scevgep1562, %scevgep1565
  %found.conflict1575 = and i1 %bound01573, %bound11574
  %conflict.rdx1576 = or i1 %i.rt, %found.conflict1575
  %bound01577 = icmp ult ptr %.1538, %scevgep1559
  %bound11578 = icmp ult ptr %i.dn, %scevgep1565
  %found.conflict1579 = and i1 %bound01577, %bound11578
  %conflict.rdx1580 = or i1 %conflict.rdx1576, %found.conflict1579
  %bound01581 = icmp ult ptr %.1538, %scevgep1555
  %bound11582 = icmp ult ptr %scevgep1557, %scevgep1565
  %found.conflict1583 = and i1 %bound01581, %bound11582
  %conflict.rdx1584 = or i1 %conflict.rdx1580, %found.conflict1583
  %min.iters.check1586 = icmp ult i32 %.1552, 16
  %i.ru = and i64 %wide.trip.count921, 12
  %n.vec1588 = and i64 %wide.trip.count921, 2147483632 ; 4 uses
  %cmp.n1597 = icmp eq i64 %n.vec1588, %wide.trip.count921
  %min.epilog.iters.check1601 = icmp eq i64 %i.ru, 0
  %n.vec1604 = and i64 %wide.trip.count921, 2147483644 ; 3 uses
  %cmp.n1613 = icmp eq i64 %n.vec1604, %wide.trip.count921
  br label %.preheader719

.preheader741:                                    ; preds = %bb.ag
  br i1 %.not614754, label %.loopexit736, label %.preheader718.lr.ph

.preheader718.lr.ph:                              ; preds = %.preheader741
  %i.rv = sext i32 %.0551833 to i64               ; 3 uses
  %wide.trip.count926 = zext i32 %.1552 to i64    ; 12 uses
  %scevgep1470 = getelementptr i8, ptr %.1538, i64 %18
  %scevgep1471 = getelementptr i8, ptr %scevgep1470, i64 %wide.trip.count926
  %scevgep1472 = getelementptr i8, ptr %.1538, i64 %19
  %scevgep1473 = getelementptr i8, ptr %i.bt, i64 %i.bd
  %i.rw = getelementptr i8, ptr %scevgep1473, i64 %.sink1041
  %i.rx = getelementptr i8, ptr %i.rw, i64 %wide.trip.count926
  %scevgep1474 = getelementptr i8, ptr %i.rx, i64 %i.bx
  %i.ry = mul nsw i64 %i.bb, %i.rv
  %i.rz = getelementptr i8, ptr %.1580, i64 %i.ry
  %scevgep1475 = getelementptr i8, ptr %i.rz, i64 %wide.trip.count926
  %scevgep1476 = getelementptr i8, ptr %.1538, i64 %i.bc
  %scevgep1477 = getelementptr i8, ptr %scevgep1476, i64 %wide.trip.count926 ; 3 uses
  %min.iters.check1478 = icmp ult i32 %.1552, 8
  %bound01480 = icmp ult ptr %.1538, %scevgep1475
  %bound11481 = icmp ult ptr %.1580, %scevgep1477
  %found.conflict1482 = and i1 %bound01480, %bound11481
  %i.sa = or i32 %.0551833, %i.h
  %i.sb = icmp slt i32 %i.sa, 0
  %i.sc = or i1 %found.conflict1482, %i.sb
  %bound01485 = icmp ult ptr %.1538, %scevgep1474
  %bound11486 = icmp ult ptr %i.dn, %scevgep1477
  %found.conflict1487 = and i1 %bound01485, %bound11486
  %conflict.rdx1488 = or i1 %i.sc, %found.conflict1487
  %bound01489 = icmp ult ptr %.1538, %scevgep1471
  %bound11490 = icmp ult ptr %scevgep1472, %scevgep1477
  %found.conflict1491 = and i1 %bound01489, %bound11490
  %conflict.rdx1492 = or i1 %conflict.rdx1488, %found.conflict1491
  %min.iters.check1494 = icmp ult i32 %.1552, 32
  %i.sd = and i64 %wide.trip.count926, 24
  %n.vec1496 = and i64 %wide.trip.count926, 2147483616 ; 4 uses
  %cmp.n1507 = icmp eq i64 %n.vec1496, %wide.trip.count926
  %min.epilog.iters.check1511 = icmp eq i64 %i.sd, 0
  %n.vec1514 = and i64 %wide.trip.count926, 2147483640 ; 3 uses
  %cmp.n1522 = icmp eq i64 %n.vec1514, %wide.trip.count926
  %xtraiter1787 = and i64 %wide.trip.count926, 1
  %lcmp.mod1788.not = icmp eq i64 %xtraiter1787, 0
  %i.se = add nsw i64 %wide.trip.count926, -1
  br label %.preheader718

.preheader739:                                    ; preds = %bb.ag
  br i1 %.not614754, label %.loopexit736, label %.preheader717.lr.ph

.preheader717.lr.ph:                              ; preds = %.preheader739
  %i.sf = sext i32 %.0551833 to i64               ; 3 uses
  %wide.trip.count931 = zext i32 %.1552 to i64    ; 11 uses
  %scevgep1404 = getelementptr i8, ptr %i.bt, i64 %i.ba
  %i.sg = getelementptr i8, ptr %scevgep1404, i64 %.sink1041
  %i.sh = getelementptr i8, ptr %i.sg, i64 %wide.trip.count931
  %scevgep1405.a = getelementptr i8, ptr %i.sh, i64 %i.bx
  %i.si = mul nsw i64 %i.ay, %i.sf
  %i.sj = getelementptr i8, ptr %.1580, i64 %i.si
  %scevgep1406 = getelementptr i8, ptr %i.sj, i64 %wide.trip.count931
  %scevgep1407 = getelementptr i8, ptr %.1538, i64 %i.az
  %scevgep1408 = getelementptr i8, ptr %scevgep1407, i64 %wide.trip.count931 ; 2 uses
  %min.iters.check1409 = icmp ult i32 %.1552, 4
  %bound01411 = icmp ult ptr %.1538, %scevgep1406
  %bound11412 = icmp ult ptr %.1580, %scevgep1408
  %found.conflict1413 = and i1 %bound01411, %bound11412
  %i.sk = or i32 %.0551833, %i.h
  %i.sl = icmp slt i32 %i.sk, 0
  %i.sm = or i1 %found.conflict1413, %i.sl
  %bound01416 = icmp ult ptr %.1538, %scevgep1405.a
  %bound11417 = icmp ult ptr %i.dn, %scevgep1408
  %found.conflict1418 = and i1 %bound01416, %bound11417
  %conflict.rdx1419 = or i1 %i.sm, %found.conflict1418
  %min.iters.check1421 = icmp ult i32 %.1552, 32
  %i.sn = and i64 %wide.trip.count931, 28
  %n.vec1423 = and i64 %wide.trip.count931, 2147483616 ; 4 uses
  %cmp.n1432 = icmp eq i64 %n.vec1423, %wide.trip.count931
  %min.epilog.iters.check1436 = icmp eq i64 %i.sn, 0
  %n.vec1439 = and i64 %wide.trip.count931, 2147483644 ; 3 uses
  %cmp.n1446 = icmp eq i64 %n.vec1439, %wide.trip.count931
  %xtraiter1789 = and i64 %wide.trip.count931, 3  ; 2 uses
  %lcmp.mod1790.not = icmp eq i64 %xtraiter1789, 0
  br label %.preheader717

.preheader737:                                    ; preds = %bb.ag
  br i1 %.not614754, label %.loopexit736, label %.preheader716.lr.ph

.preheader716.lr.ph:                              ; preds = %.preheader737
  %i.so = sext i32 %.0551833 to i64               ; 3 uses
  %wide.trip.count936 = zext i32 %.1552 to i64    ; 11 uses
  %scevgep1344 = getelementptr i8, ptr %.1538, i64 %14
  %scevgep1345 = getelementptr i8, ptr %scevgep1344, i64 %wide.trip.count936
  %scevgep1346 = getelementptr i8, ptr %.1538, i64 %i.aw
  %i.sp = mul nsw i64 %12, %i.so
  %i.sq = getelementptr i8, ptr %.1580, i64 %i.sp
  %scevgep1347 = getelementptr i8, ptr %i.sq, i64 %wide.trip.count936
  %scevgep1348 = getelementptr i8, ptr %.1538, i64 %15
  %scevgep1349 = getelementptr i8, ptr %scevgep1348, i64 %wide.trip.count936 ; 2 uses
  %min.iters.check1350 = icmp ult i32 %.1552, 4
  %bound01352 = icmp ult ptr %.1538, %scevgep1347
  %bound11353 = icmp ult ptr %.1580, %scevgep1349
  %found.conflict1354 = and i1 %bound01352, %bound11353
  %i.sr = or i32 %.0551833, %i.h
  %i.ss = icmp slt i32 %i.sr, 0
  %i.st = or i1 %found.conflict1354, %i.ss
  %bound01357 = icmp ult ptr %.1538, %scevgep1345
  %bound11358 = icmp ult ptr %scevgep1346, %scevgep1349
  %found.conflict1359 = and i1 %bound01357, %bound11358
  %conflict.rdx1360 = or i1 %i.st, %found.conflict1359
  %min.iters.check1362 = icmp ult i32 %.1552, 32
  %i.su = and i64 %wide.trip.count936, 28
  %n.vec1364 = and i64 %wide.trip.count936, 2147483616 ; 4 uses
  %cmp.n1373 = icmp eq i64 %n.vec1364, %wide.trip.count936
  %min.epilog.iters.check1377 = icmp eq i64 %i.su, 0
  %n.vec1380 = and i64 %wide.trip.count936, 2147483644 ; 3 uses
  %cmp.n1387 = icmp eq i64 %n.vec1380, %wide.trip.count936
  %xtraiter1791 = and i64 %wide.trip.count936, 1
  %lcmp.mod1792.not = icmp eq i64 %xtraiter1791, 0
  %i.sv = add nsw i64 %wide.trip.count936, -1
  br label %.preheader716

.preheader735:                                    ; preds = %bb.ag
  br i1 %.not614754, label %.loopexit736, label %.preheader715.lr.ph

.preheader715.lr.ph:                              ; preds = %.preheader735
  %i.sw = sext i32 %.0551833 to i64               ; 3 uses
  %wide.trip.count941 = zext i32 %.1552 to i64    ; 10 uses
  %i.sx = mul nsw i64 %10, %i.sw
  %i.sy = getelementptr i8, ptr %.1580, i64 %i.sx
  %scevgep = getelementptr i8, ptr %i.sy, i64 %wide.trip.count941
  %scevgep1298 = getelementptr i8, ptr %.1538, i64 %11
  %scevgep1299 = getelementptr i8, ptr %scevgep1298, i64 %wide.trip.count941
  %min.iters.check1300 = icmp ult i32 %.1552, 4
  %bound0 = icmp ult ptr %.1538, %scevgep
  %bound1 = icmp ult ptr %.1580, %scevgep1299
  %found.conflict = and i1 %bound0, %bound1
  %i.sz = or i32 %.0551833, %i.h
  %i.ta = icmp slt i32 %i.sz, 0
  %i.tb = or i1 %found.conflict, %i.ta
  %min.iters.check1304 = icmp ult i32 %.1552, 32
  %i.tc = and i64 %wide.trip.count941, 28
  %n.vec1306 = and i64 %wide.trip.count941, 2147483616 ; 4 uses
  %cmp.n1313 = icmp eq i64 %n.vec1306, %wide.trip.count941
  %min.epilog.iters.check1317 = icmp eq i64 %i.tc, 0
  %n.vec1320 = and i64 %wide.trip.count941, 2147483644 ; 3 uses
  %cmp.n1326 = icmp eq i64 %n.vec1320, %wide.trip.count941
  %xtraiter1794 = and i64 %wide.trip.count941, 3  ; 2 uses
  %lcmp.mod1795.not = icmp eq i64 %xtraiter1794, 0
  br label %.preheader715

.preheader715:                                    ; preds = %.preheader715.lr.ph, %._crit_edge808
  %.0567813 = phi i32 [ %.6573753, %.preheader715.lr.ph ], [ %.0567, %._crit_edge808 ]
  %.2539812 = phi ptr [ %.1538, %.preheader715.lr.ph ], [ %i.ue, %._crit_edge808 ] ; 9 uses
  %.2581811 = phi ptr [ %.1580, %.preheader715.lr.ph ], [ %i.ud, %._crit_edge808 ] ; 8 uses
  br i1 %i.ch, label %iter.check1314, label %._crit_edge808

iter.check1314:                                   ; preds = %.preheader715
  %brmerge = select i1 %min.iters.check1300, i1 true, i1 %i.tb
  br i1 %brmerge, label %.lr.ph807.preheader, label %vector.main.loop.iter.check1303

vector.main.loop.iter.check1303:                  ; preds = %iter.check1314
  br i1 %min.iters.check1304, label %vec.epilog.ph1318, label %vector.body1307

vector.body1307:                                  ; preds = %vector.main.loop.iter.check1303, %vector.body1307
  %index1308 = phi i64 [ %index.next1311, %vector.body1307 ], [ 0, %vector.main.loop.iter.check1303 ] ; 3 uses
  %i.td = getelementptr inbounds nuw i8, ptr %.2581811, i64 %index1308 ; 2 uses
  %i.te = getelementptr inbounds nuw i8, ptr %i.td, i64 16
  %wide.load1309 = load <16 x i8>, ptr %i.td, align 1, !alias.scope !363
  %wide.load1310 = load <16 x i8>, ptr %i.te, align 1, !alias.scope !363
  %i.tf = getelementptr inbounds nuw i8, ptr %.2539812, i64 %index1308 ; 2 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tf, i64 16
  store <16 x i8> %wide.load1309, ptr %i.tf, align 1, !alias.scope !364, !noalias !363
  store <16 x i8> %wide.load1310, ptr %i.tg, align 1, !alias.scope !364, !noalias !363
  %index.next1311 = add nuw i64 %index1308, 32    ; 2 uses
  %i.th = icmp eq i64 %index.next1311, %n.vec1306
  br i1 %i.th, label %middle.block1312, label %vector.body1307, !llvm.loop !308

middle.block1312:                                 ; preds = %vector.body1307
  br i1 %cmp.n1313, label %._crit_edge808, label %vec.epilog.iter.check1315

vec.epilog.iter.check1315:                        ; preds = %middle.block1312
  br i1 %min.epilog.iters.check1317, label %.lr.ph807.preheader, label %vec.epilog.ph1318, !prof !16

vec.epilog.ph1318:                                ; preds = %vector.main.loop.iter.check1303, %vec.epilog.iter.check1315
  %vec.epilog.resume.val1319 = phi i64 [ %n.vec1306, %vec.epilog.iter.check1315 ], [ 0, %vector.main.loop.iter.check1303 ]
  br label %vec.epilog.vector.body1321

vec.epilog.vector.body1321:                       ; preds = %vec.epilog.vector.body1321, %vec.epilog.ph1318
  %index1322 = phi i64 [ %vec.epilog.resume.val1319, %vec.epilog.ph1318 ], [ %index.next1324, %vec.epilog.vector.body1321 ] ; 3 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %.2581811, i64 %index1322
  %wide.load1323 = load <4 x i8>, ptr %i.ti, align 1, !alias.scope !363
  %i.tj = getelementptr inbounds nuw i8, ptr %.2539812, i64 %index1322
  store <4 x i8> %wide.load1323, ptr %i.tj, align 1, !alias.scope !364, !noalias !363
  %index.next1324 = add nuw i64 %index1322, 4     ; 2 uses
  %i.tk = icmp eq i64 %index.next1324, %n.vec1320
  br i1 %i.tk, label %vec.epilog.middle.block1325, label %vec.epilog.vector.body1321, !llvm.loop !309

vec.epilog.middle.block1325:                      ; preds = %vec.epilog.vector.body1321
  br i1 %cmp.n1326, label %._crit_edge808, label %.lr.ph807.preheader

.lr.ph807.preheader:                              ; preds = %iter.check1314, %vec.epilog.iter.check1315, %vec.epilog.middle.block1325
  %indvars.iv938.ph = phi i64 [ 0, %iter.check1314 ], [ %n.vec1320, %vec.epilog.middle.block1325 ], [ %n.vec1306, %vec.epilog.iter.check1315 ] ; 3 uses
  br i1 %lcmp.mod1795.not, label %.lr.ph807.prol.loopexit, label %.lr.ph807.prol

.lr.ph807.prol:                                   ; preds = %.lr.ph807.preheader, %.lr.ph807.prol
  %indvars.iv938.prol = phi i64 [ %indvars.iv.next939.prol, %.lr.ph807.prol ], [ %indvars.iv938.ph, %.lr.ph807.preheader ] ; 3 uses
  %prol.iter1796 = phi i64 [ %prol.iter1796.next, %.lr.ph807.prol ], [ 0, %.lr.ph807.preheader ]
  %i.tl = getelementptr inbounds nuw i8, ptr %.2581811, i64 %indvars.iv938.prol
  %i.tm = load i8, ptr %i.tl, align 1
  %i.tn = getelementptr inbounds nuw i8, ptr %.2539812, i64 %indvars.iv938.prol
  store i8 %i.tm, ptr %i.tn, align 1
  %indvars.iv.next939.prol = add nuw nsw i64 %indvars.iv938.prol, 1 ; 2 uses
  %prol.iter1796.next = add i64 %prol.iter1796, 1 ; 2 uses
  %prol.iter1796.cmp.not = icmp eq i64 %prol.iter1796.next, %xtraiter1794
  br i1 %prol.iter1796.cmp.not, label %.lr.ph807.prol.loopexit, label %.lr.ph807.prol, !llvm.loop !310

.lr.ph807.prol.loopexit:                          ; preds = %.lr.ph807.prol, %.lr.ph807.preheader
  %indvars.iv938.unr = phi i64 [ %indvars.iv938.ph, %.lr.ph807.preheader ], [ %indvars.iv.next939.prol, %.lr.ph807.prol ]
  %i.to = sub nsw i64 %indvars.iv938.ph, %wide.trip.count941
  %i.tp = icmp ugt i64 %i.to, -4
  br i1 %i.tp, label %._crit_edge808, label %.lr.ph807

.lr.ph807:                                        ; preds = %.lr.ph807.prol.loopexit, %.lr.ph807
  %indvars.iv938 = phi i64 [ %indvars.iv.next939.3, %.lr.ph807 ], [ %indvars.iv938.unr, %.lr.ph807.prol.loopexit ] ; 6 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %.2581811, i64 %indvars.iv938
  %i.tr = load i8, ptr %i.tq, align 1
  %i.ts = getelementptr inbounds nuw i8, ptr %.2539812, i64 %indvars.iv938
  store i8 %i.tr, ptr %i.ts, align 1
  %indvars.iv.next939 = add nuw nsw i64 %indvars.iv938, 1 ; 2 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %.2581811, i64 %indvars.iv.next939
  %i.tu = load i8, ptr %i.tt, align 1
  %i.tv = getelementptr inbounds nuw i8, ptr %.2539812, i64 %indvars.iv.next939
  store i8 %i.tu, ptr %i.tv, align 1
  %indvars.iv.next939.1 = add nuw nsw i64 %indvars.iv938, 2 ; 2 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %.2581811, i64 %indvars.iv.next939.1
  %i.tx = load i8, ptr %i.tw, align 1
  %i.ty = getelementptr inbounds nuw i8, ptr %.2539812, i64 %indvars.iv.next939.1
  store i8 %i.tx, ptr %i.ty, align 1
  %indvars.iv.next939.2 = add nuw nsw i64 %indvars.iv938, 3 ; 2 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %.2581811, i64 %indvars.iv.next939.2
  %i.ua = load i8, ptr %i.tz, align 1
  %i.ub = getelementptr inbounds nuw i8, ptr %.2539812, i64 %indvars.iv.next939.2
  store i8 %i.ua, ptr %i.ub, align 1
  %indvars.iv.next939.3 = add nuw nsw i64 %indvars.iv938, 4 ; 2 uses
  %exitcond942.not.3 = icmp eq i64 %indvars.iv.next939.3, %wide.trip.count941
  br i1 %exitcond942.not.3, label %._crit_edge808, label %.lr.ph807, !llvm.loop !311

._crit_edge808:                                   ; preds = %.lr.ph807.prol.loopexit, %.lr.ph807, %middle.block1312, %vec.epilog.middle.block1325, %.preheader715
  %i.uc = getelementptr inbounds i8, ptr %.2539812, i64 %i.sw
  store i8 -1, ptr %i.uc, align 1
  %i.ud = getelementptr inbounds i8, ptr %.2581811, i64 %i.sw ; 2 uses
  %i.ue = getelementptr inbounds i8, ptr %.2539812, i64 %i.at
  %.0567 = add i32 %.0567813, -1                  ; 2 uses
  %.not630 = icmp eq i32 %.0567, 0
  br i1 %.not630, label %.loopexit736, label %.preheader715

.preheader716:                                    ; preds = %.preheader716.lr.ph, %._crit_edge799
  %.1568804 = phi i32 [ %.6573753, %.preheader716.lr.ph ], [ %.1568, %._crit_edge799 ]
  %.3540803 = phi ptr [ %.1538, %.preheader716.lr.ph ], [ %i.vq, %._crit_edge799 ] ; 12 uses
  %.3582802 = phi ptr [ %.1580, %.preheader716.lr.ph ], [ %i.vp, %._crit_edge799 ] ; 6 uses
  br i1 %i.ch, label %iter.check1374, label %._crit_edge799

iter.check1374:                                   ; preds = %.preheader716
  %brmerge1843 = select i1 %min.iters.check1350, i1 true, i1 %conflict.rdx1360
  br i1 %brmerge1843, label %.lr.ph798.preheader, label %vector.main.loop.iter.check1361

vector.main.loop.iter.check1361:                  ; preds = %iter.check1374
  br i1 %min.iters.check1362, label %vec.epilog.ph1378, label %vector.body1365

vector.body1365:                                  ; preds = %vector.main.loop.iter.check1361, %vector.body1365
  %index1366 = phi i64 [ %index.next1371, %vector.body1365 ], [ 0, %vector.main.loop.iter.check1361 ] ; 4 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %.3582802, i64 %index1366 ; 2 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %i.uf, i64 16
  %wide.load1367 = load <16 x i8>, ptr %i.uf, align 1, !alias.scope !365
  %wide.load1368 = load <16 x i8>, ptr %i.ug, align 1, !alias.scope !365
  %i.uh = sub nsw i64 %index1366, %i.at
  %i.ui = getelementptr inbounds i8, ptr %.3540803, i64 %i.uh ; 2 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ui, i64 16
  %wide.load1369 = load <16 x i8>, ptr %i.ui, align 1, !alias.scope !366
  %wide.load1370 = load <16 x i8>, ptr %i.uj, align 1, !alias.scope !366
  %i.uk = add <16 x i8> %wide.load1369, %wide.load1367
  %i.ul = add <16 x i8> %wide.load1370, %wide.load1368
  %i.um = getelementptr inbounds nuw i8, ptr %.3540803, i64 %index1366 ; 2 uses
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 16
  store <16 x i8> %i.uk, ptr %i.um, align 1, !alias.scope !367, !noalias !368
  store <16 x i8> %i.ul, ptr %i.un, align 1, !alias.scope !367, !noalias !368
  %index.next1371 = add nuw i64 %index1366, 32    ; 2 uses
  %i.uo = icmp eq i64 %index.next1371, %n.vec1364
  br i1 %i.uo, label %middle.block1372, label %vector.body1365, !llvm.loop !316

middle.block1372:                                 ; preds = %vector.body1365
  br i1 %cmp.n1373, label %._crit_edge799, label %vec.epilog.iter.check1375

vec.epilog.iter.check1375:                        ; preds = %middle.block1372
  br i1 %min.epilog.iters.check1377, label %.lr.ph798.preheader, label %vec.epilog.ph1378, !prof !16

vec.epilog.ph1378:                                ; preds = %vector.main.loop.iter.check1361, %vec.epilog.iter.check1375
  %vec.epilog.resume.val1379 = phi i64 [ %n.vec1364, %vec.epilog.iter.check1375 ], [ 0, %vector.main.loop.iter.check1361 ]
  br label %vec.epilog.vector.body1381

vec.epilog.vector.body1381:                       ; preds = %vec.epilog.vector.body1381, %vec.epilog.ph1378
  %index1382 = phi i64 [ %vec.epilog.resume.val1379, %vec.epilog.ph1378 ], [ %index.next1385, %vec.epilog.vector.body1381 ] ; 4 uses
  %i.up = getelementptr inbounds nuw i8, ptr %.3582802, i64 %index1382
  %wide.load1383 = load <4 x i8>, ptr %i.up, align 1, !alias.scope !365
  %i.uq = sub nsw i64 %index1382, %i.at
  %i.ur = getelementptr inbounds i8, ptr %.3540803, i64 %i.uq
  %wide.load1384 = load <4 x i8>, ptr %i.ur, align 1, !alias.scope !366
  %i.us = add <4 x i8> %wide.load1384, %wide.load1383
  %i.ut = getelementptr inbounds nuw i8, ptr %.3540803, i64 %index1382
  store <4 x i8> %i.us, ptr %i.ut, align 1, !alias.scope !367, !noalias !368
  %index.next1385 = add nuw i64 %index1382, 4     ; 2 uses
  %i.uu = icmp eq i64 %index.next1385, %n.vec1380
  br i1 %i.uu, label %vec.epilog.middle.block1386, label %vec.epilog.vector.body1381, !llvm.loop !317

vec.epilog.middle.block1386:                      ; preds = %vec.epilog.vector.body1381
  br i1 %cmp.n1387, label %._crit_edge799, label %.lr.ph798.preheader

.lr.ph798.preheader:                              ; preds = %iter.check1374, %vec.epilog.iter.check1375, %vec.epilog.middle.block1386
  %indvars.iv933.ph = phi i64 [ 0, %iter.check1374 ], [ %n.vec1380, %vec.epilog.middle.block1386 ], [ %n.vec1364, %vec.epilog.iter.check1375 ] ; 6 uses
  br i1 %lcmp.mod1792.not, label %.lr.ph798.prol.loopexit, label %.lr.ph798.prol

.lr.ph798.prol:                                   ; preds = %.lr.ph798.preheader
  %i.uv = getelementptr inbounds nuw i8, ptr %.3582802, i64 %indvars.iv933.ph
  %i.uw = load i8, ptr %i.uv, align 1
  %i.ux = sub nsw i64 %indvars.iv933.ph, %i.at
  %i.uy = getelementptr inbounds i8, ptr %.3540803, i64 %i.ux
  %i.uz = load i8, ptr %i.uy, align 1
  %.narrow629.prol = add i8 %i.uz, %i.uw
  %i.va = getelementptr inbounds nuw i8, ptr %.3540803, i64 %indvars.iv933.ph
  store i8 %.narrow629.prol, ptr %i.va, align 1
  %indvars.iv.next934.prol = or disjoint i64 %indvars.iv933.ph, 1
end_hunk_1
