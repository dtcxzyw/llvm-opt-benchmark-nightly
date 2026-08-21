inline.NumInlined: 1421
inline.NumDeleted: 227
loop-unroll.NumCompletelyUnrolled: 83
loop-unroll.NumRuntimeUnrolled: 98
loop-unroll.NumUnrolled: 187
begin_hunk_0_@_m3dstbi__zbuild_huffman:bb.a
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = zext i8 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ab ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = add nsw i32 %i.ad, 1
  store i32 %i.ae, ptr %i.ac, align 4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.lr.ph

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.unr-lcssa ]
  %lcmp.mod154 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod154)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.epil
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = zext i8 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ah ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = add nsw i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ai, align 4
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !279

._crit_edge:                                      ; preds = %.lr.ph.epil, %._crit_edge.unr-lcssa
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.pre = load i32, ptr %.phi.trans.insert, align 4
  %i.al = icmp sgt i32 %.pre, 2
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.an = load i32, ptr %i.am, align 8
  %i.ao = icmp sgt i32 %i.an, 4
  %or.cond103 = select i1 %i.al, i1 true, i1 %i.ao
  br i1 %or.cond103, label %.loopexit70, label %bb.b

._crit_edge.thread:                               ; preds = %bb.a
  %.old = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.old101 = load i32, ptr %.old, align 8
  %.old102 = icmp sgt i32 %.old101, 4
  br i1 %.old102, label %.loopexit70, label %bb.b

bb.b:                                             ; preds = %._crit_edge, %._crit_edge.thread
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.aq = load <8 x i32>, ptr %i.ap, align 4
  %.fr = freeze <8 x i32> %i.aq
  %i.ar = icmp sgt <8 x i32> %.fr, <i32 8, i32 16, i32 32, i32 64, i32 128, i32 256, i32 512, i32 1024> ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.at = load <4 x i32>, ptr %i.as, align 4
  %.fr152 = freeze <4 x i32> %i.at
  %i.au = icmp sgt <4 x i32> %.fr152, <i32 2048, i32 4096, i32 8192, i32 16384>
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.aw = load i32, ptr %i.av, align 4
  %i.ax = icmp sgt i32 %i.aw, 32768
  %i.ay = shufflevector <8 x i1> %i.ar, <8 x i1> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %rdx.op = or <4 x i1> %i.ay, %i.au
  %i.az = shufflevector <4 x i1> %rdx.op, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ba = shufflevector <8 x i1> %i.az, <8 x i1> %i.ar, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.bb = bitcast <8 x i1> %i.ba to i8
  %i.bc = icmp ne i8 %i.bb, 0
  %op.rdx = select i1 %i.bc, i1 true, i1 %i.ax
  br i1 %op.rdx, label %.loopexit70, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1124 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1056
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.d
  %indvars.iv87 = phi i64 [ 1, %.preheader ], [ %indvars.iv.next88, %bb.d ] ; 8 uses
  %.06275 = phi i32 [ 0, %.preheader ], [ %i.bu, %bb.d ] ; 3 uses
  %.06374 = phi i32 [ 0, %.preheader ], [ %i.bv, %bb.d ] ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv87
  store i32 %.06275, ptr %i.bg, align 4
  %i.bh = trunc i32 %.06275 to i16
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %i.bd, i64 %indvars.iv87
  store i16 %i.bh, ptr %i.bi, align 2
  %i.bj = trunc i32 %.06374 to i16
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %i.be, i64 %indvars.iv87
  store i16 %i.bj, ptr %i.bk, align 2
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv87
  %i.bm = load i32, ptr %i.bl, align 4            ; 3 uses
  %i.bn = add nsw i32 %i.bm, %.06275              ; 3 uses
  %.not68 = icmp ne i32 %i.bm, 0
  %i.bo = trunc nuw nsw i64 %indvars.iv87 to i32
  %i.bp = shl nuw nsw i32 1, %i.bo
  %.not69.not = icmp sgt i32 %i.bn, %i.bp
  %or.cond = select i1 %.not68, i1 %.not69.not, i1 false
  br i1 %or.cond, label %.loopexit70, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bq = trunc i64 %indvars.iv87 to i32
  %i.br = sub i32 16, %i.bq
  %i.bs = shl i32 %i.bn, %i.br
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv87
  store i32 %i.bs, ptr %i.bt, align 4
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
  br i1 %i.cv, label %.lr.ph78, label %.loopexit

.lr.ph78:                                         ; preds = %bb.g
  %trunc.i.i = trunc i32 %i.ce to i16
  %rev.i.i = tail call i16 @llvm.bitreverse.i16(i16 %trunc.i.i)
  %i.cw = zext i16 %rev.i.i to i32
  %i.cx = sub nuw nsw i32 16, %i.cb
  %i.cy = lshr i32 %i.cw, %i.cx
  %i.cz = shl nuw nsw i32 1, %i.cb
  %i.da = zext nneg i32 %i.cy to i64
  %i.db = zext nneg i32 %i.cz to i64
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph78, %bb.h
  %indvars.iv91 = phi i64 [ %i.da, %.lr.ph78 ], [ %indvars.iv.next92, %bb.h ] ; 2 uses
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv91
  store i16 %i.cq, ptr %i.dc, align 2
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, %i.db ; 2 uses
  %i.dd = icmp samesign ult i64 %indvars.iv.next92, 512
  br i1 %i.dd, label %bb.h, label %.loopexit

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
  %i.e = shl i32 %i.c, %i.d                       ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load i32, ptr %i.f, align 8              ; 8 uses
  %i.h = shl i32 %3, %i.d                         ; 18 uses
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
  %i.m = mul nsw i32 %5, %4                       ; 3 uses
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
  %i.r = mul nsw i32 %i.h, %i.m
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
  %i.at = sext i32 %i.h to i64                    ; 60 uses
  %i.au = sext i32 %i.g to i64                    ; 2 uses
  %i.av = sext i32 %3 to i64                      ; 2 uses
  %or.cond = select i1 %i.aq, i1 true, i1 %.not612
  %.6573753 = add i32 %4, -1                      ; 8 uses
  %.not614754 = icmp eq i32 %.6573753, 0          ; 7 uses
  %wide.trip.count977 = zext i32 %5 to i64
  %i.aw = sub nsw i64 %i.ao, %.0537.idx
  %i.ax = add i32 %4, -2                          ; 2 uses
  %i.ay = zext i32 %i.ax to i64                   ; 2 uses
  %i.az = mul nsw i64 %i.at, %i.ay
  %i.ba = zext i32 %i.ax to i64                   ; 3 uses
  %i.bb = mul nsw i64 %i.at, %i.ba
  %i.bc = sub nsw i64 0, %i.at
  %i.bd = add nsw i64 %i.ba, -1
  %i.be = mul i64 %i.bd, %i.at
  %i.bf = add i32 %4, -2                          ; 2 uses
  %i.bg = zext i32 %i.bf to i64                   ; 2 uses
  %i.bh = mul nsw i64 %i.at, %i.bg                ; 2 uses
  %i.bi = add i64 %i.bh, %.0537.idx
  %i.bj = sub i64 %i.bi, %i.ao
  %i.bk = zext i32 %i.bf to i64                   ; 3 uses
  %i.bl = mul nsw i64 %i.at, %i.bk                ; 2 uses
  %i.bm = add i64 %i.bl, %.0537.idx
  %i.bn = sub i64 %i.bm, %i.ao
  %i.bo = sub nsw i64 0, %i.at                    ; 2 uses
  %i.bp = add nsw i64 %i.bk, -1
  %i.bq = mul i64 %i.bp, %i.at
  %i.br = add i32 %4, -2
  %i.bs = zext i32 %i.br to i64                   ; 3 uses
  %i.bt = mul nsw i64 %i.at, %i.bs                ; 2 uses
  %i.bu = add nsw i64 %i.bs, -1
  %i.bv = mul i64 %i.bu, %i.at                    ; 2 uses
  %i.bw = add i64 %i.bt, %.0537.idx
  %i.bx = sub i64 %i.bw, %i.ao
  %i.by = add nsw i64 %i.at, %i.ao
  %i.bz = sub nsw i64 %.0537.idx, %i.by
  %i.ca = add i64 %i.bv, %.0537.idx
  %i.cb = sub i64 %i.ca, %i.ao
  %i.cc = add i32 %4, -2                          ; 2 uses
  %i.cd = zext i32 %i.cc to i64                   ; 3 uses
  %i.ce = mul nsw i64 %i.at, %i.cd
  %i.cf = sub nsw i64 0, %i.at                    ; 2 uses
  %i.cg = add nsw i64 %i.cd, -1
  %i.ch = mul i64 %i.cg, %i.at
  %i.ci = zext i32 %i.cc to i64                   ; 3 uses
  %i.cj = mul nsw i64 %i.at, %i.ci
  %i.ck = add nsw i64 %i.ci, -1
  %i.cl = mul i64 %i.ck, %i.at
  %stride.check1575 = icmp slt i32 %i.h, 0
  %stride.check1528 = icmp slt i32 %i.h, 0
  %stride.check1467 = icmp slt i32 %i.h, 0
  %stride.check1405 = icmp slt i32 %i.h, 0
  %stride.check1356 = icmp slt i32 %i.h, 0
  %stride.check1310 = icmp slt i32 %i.h, 0
  %brmerge.not = and i1 %i.w, %i.a
  %xtraiter1647 = and i32 %4, 7                   ; 3 uses
  %i.cm = icmp ult i32 %4, 8
  %unroll_iter = and i32 %4, -8
  %lcmp.mod1648.not = icmp eq i32 %xtraiter1647, 0
  %lcmp.mod1649 = icmp ne i32 %xtraiter1647, 0
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph836, %.loopexit734
  %indvars.iv974 = phi i64 [ 0, %.lr.ph836 ], [ %indvars.iv.next975, %.loopexit734 ] ; 9 uses
  %.0548834 = phi i32 [ %4, %.lr.ph836 ], [ %.1549, %.loopexit734 ]
  %.0551833 = phi i32 [ %i.i, %.lr.ph836 ], [ %.1552, %.loopexit734 ] ; 17 uses
  %.0579831 = phi ptr [ %1, %.lr.ph836 ], [ %.11590, %.loopexit734 ] ; 3 uses
  %8 = trunc i64 %indvars.iv974 to i32
  %9 = mul i32 %i.e, %8
  %10 = zext i32 %9 to i64                        ; 2 uses
  %11 = trunc i64 %indvars.iv974 to i32
  %12 = mul i32 %i.e, %11
  %13 = zext i32 %12 to i64
  %14 = trunc i64 %indvars.iv974 to i32
  %15 = mul i32 %i.e, %14
  %16 = zext i32 %15 to i64
  %17 = trunc i64 %indvars.iv974 to i32
  %18 = mul i32 %i.e, %17
  %19 = zext i32 %18 to i64                       ; 2 uses
  %20 = trunc i64 %indvars.iv974 to i32
  %21 = mul i32 %i.e, %20
  %22 = zext i32 %21 to i64
  %23 = trunc i64 %indvars.iv974 to i32
  %24 = mul i32 %i.e, %23
  %25 = zext i32 %24 to i64
  %i.cn = load ptr, ptr %i.u, align 8             ; 7 uses
  %i.co = ptrtoaddr ptr %i.cn to i64              ; 4 uses
  %i.cp = trunc i64 %indvars.iv974 to i32
  %i.cq = mul i32 %i.e, %i.cp
  %i.cr = zext i32 %i.cq to i64                   ; 2 uses
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
  %.15381076 = ptrtoaddr ptr %.1538 to i64        ; 10 uses
  %.15801077 = ptrtoaddr ptr %.1580 to i64        ; 6 uses
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
  br i1 %i.ek, label %iter.check1251, label %.loopexit723

iter.check1251:                                   ; preds = %.preheader732
  %i.el = sext i32 %.1552 to i64                  ; 6 uses
  %wide.trip.count947 = zext nneg i32 %i.ej to i64 ; 8 uses
  %min.iters.check1236 = icmp ult i32 %i.ej, 4
  br i1 %min.iters.check1236, label %.lr.ph820.preheader, label %vector.memcheck1232

vector.memcheck1232:                              ; preds = %iter.check1251
  %i.em = sub i64 %.15801077, %.15381076
  %diff.check1233 = icmp ugt i64 %i.em, -32
  %i.en = add nsw i64 %i.el, -1
  %diff.check1234 = icmp ult i64 %i.en, 31
  %conflict.rdx1235 = or i1 %diff.check1233, %diff.check1234
  br i1 %conflict.rdx1235, label %.lr.ph820.preheader, label %vector.main.loop.iter.check1237

vector.main.loop.iter.check1237:                  ; preds = %vector.memcheck1232
  %min.iters.check1238 = icmp ult i32 %i.ej, 32
  br i1 %min.iters.check1238, label %vec.epilog.ph1255, label %vector.ph1239

vector.ph1239:                                    ; preds = %vector.main.loop.iter.check1237
  %i.eo = and i64 %wide.trip.count947, 28
  %n.vec1240 = and i64 %wide.trip.count947, 2147483616 ; 4 uses
  br label %vector.body1241

vector.body1241:                                  ; preds = %vector.body1241, %vector.ph1239
  %index1242 = phi i64 [ 0, %vector.ph1239 ], [ %index.next1247, %vector.body1241 ] ; 4 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.1580, i64 %index1242 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %wide.load1243 = load <16 x i8>, ptr %i.ep, align 1
  %wide.load1244 = load <16 x i8>, ptr %i.eq, align 1
  %i.er = sub nsw i64 %index1242, %i.el
  %i.es = getelementptr inbounds i8, ptr %.1538, i64 %i.er ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %wide.load1245 = load <16 x i8>, ptr %i.es, align 1
  %wide.load1246 = load <16 x i8>, ptr %i.et, align 1
  %i.eu = add <16 x i8> %wide.load1245, %wide.load1243
  %i.ev = add <16 x i8> %wide.load1246, %wide.load1244
  %i.ew = getelementptr inbounds nuw i8, ptr %.1538, i64 %index1242 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  store <16 x i8> %i.eu, ptr %i.ew, align 1
  store <16 x i8> %i.ev, ptr %i.ex, align 1
  %index.next1247 = add nuw i64 %index1242, 32    ; 2 uses
  %i.ey = icmp eq i64 %index.next1247, %n.vec1240
  br i1 %i.ey, label %middle.block1248, label %vector.body1241, !llvm.loop !280

middle.block1248:                                 ; preds = %vector.body1241
  %cmp.n1249 = icmp eq i64 %n.vec1240, %wide.trip.count947
  br i1 %cmp.n1249, label %.loopexit723, label %vec.epilog.iter.check1253

vec.epilog.iter.check1253:                        ; preds = %middle.block1248
  %min.epilog.iters.check1254 = icmp eq i64 %i.eo, 0
  br i1 %min.epilog.iters.check1254, label %.lr.ph820.preheader, label %vec.epilog.ph1255, !prof !57

vec.epilog.ph1255:                                ; preds = %vector.main.loop.iter.check1237, %vec.epilog.iter.check1253
  %vec.epilog.resume.val1250 = phi i64 [ %n.vec1240, %vec.epilog.iter.check1253 ], [ 0, %vector.main.loop.iter.check1237 ]
  %n.vec1256 = and i64 %wide.trip.count947, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body1257

vec.epilog.vector.body1257:                       ; preds = %vec.epilog.vector.body1257, %vec.epilog.ph1255
  %index1258 = phi i64 [ %vec.epilog.resume.val1250, %vec.epilog.ph1255 ], [ %index.next1261, %vec.epilog.vector.body1257 ] ; 4 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.1580, i64 %index1258
  %wide.load1259 = load <4 x i8>, ptr %i.ez, align 1
  %i.fa = sub nsw i64 %index1258, %i.el
  %i.fb = getelementptr inbounds i8, ptr %.1538, i64 %i.fa
  %wide.load1260 = load <4 x i8>, ptr %i.fb, align 1
  %i.fc = add <4 x i8> %wide.load1260, %wide.load1259
  %i.fd = getelementptr inbounds nuw i8, ptr %.1538, i64 %index1258
  store <4 x i8> %i.fc, ptr %i.fd, align 1
  %index.next1261 = add nuw i64 %index1258, 4     ; 2 uses
  %i.fe = icmp eq i64 %index.next1261, %n.vec1256
  br i1 %i.fe, label %vec.epilog.middle.block1262, label %vec.epilog.vector.body1257, !llvm.loop !281

vec.epilog.middle.block1262:                      ; preds = %vec.epilog.vector.body1257
  %cmp.n1263 = icmp eq i64 %n.vec1256, %wide.trip.count947
  br i1 %cmp.n1263, label %.loopexit723, label %.lr.ph820.preheader

.lr.ph820.preheader:                              ; preds = %vector.memcheck1232, %iter.check1251, %vec.epilog.iter.check1253, %vec.epilog.middle.block1262
  %indvars.iv944.ph = phi i64 [ 0, %iter.check1251 ], [ 0, %vector.memcheck1232 ], [ %n.vec1240, %vec.epilog.iter.check1253 ], [ %n.vec1256, %vec.epilog.middle.block1262 ] ; 6 uses
  %xtraiter1650 = and i64 %wide.trip.count947, 1
  %lcmp.mod1651.not = icmp eq i64 %xtraiter1650, 0
  br i1 %lcmp.mod1651.not, label %.lr.ph820.prol.loopexit, label %.lr.ph820.prol

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
  br i1 %i.fn, label %iter.check1218, label %.loopexit723

iter.check1218:                                   ; preds = %.preheader730
  %i.fo = sext i32 %.1552 to i64                  ; 6 uses
  %wide.trip.count952 = zext nneg i32 %i.ej to i64 ; 8 uses
  %min.iters.check1203 = icmp ult i32 %i.ej, 4
  br i1 %min.iters.check1203, label %.lr.ph822.preheader, label %vector.memcheck1199

vector.memcheck1199:                              ; preds = %iter.check1218
  %i.fp = sub i64 %.15801077, %.15381076
  %diff.check1200 = icmp ugt i64 %i.fp, -32
  %i.fq = add nsw i64 %i.fo, -1
  %diff.check1201 = icmp ult i64 %i.fq, 31
  %conflict.rdx1202 = or i1 %diff.check1200, %diff.check1201
  br i1 %conflict.rdx1202, label %.lr.ph822.preheader, label %vector.main.loop.iter.check1204

vector.main.loop.iter.check1204:                  ; preds = %vector.memcheck1199
  %min.iters.check1205 = icmp ult i32 %i.ej, 32
  br i1 %min.iters.check1205, label %vec.epilog.ph1222, label %vector.ph1206

vector.ph1206:                                    ; preds = %vector.main.loop.iter.check1204
  %i.fr = and i64 %wide.trip.count952, 28
  %n.vec1207 = and i64 %wide.trip.count952, 2147483616 ; 4 uses
  br label %vector.body1208

vector.body1208:                                  ; preds = %vector.body1208, %vector.ph1206
  %index1209 = phi i64 [ 0, %vector.ph1206 ], [ %index.next1214, %vector.body1208 ] ; 4 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.1580, i64 %index1209 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  %wide.load1210 = load <16 x i8>, ptr %i.fs, align 1
  %wide.load1211 = load <16 x i8>, ptr %i.ft, align 1
  %i.fu = sub nsw i64 %index1209, %i.fo
  %i.fv = getelementptr inbounds i8, ptr %.1538, i64 %i.fu ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  %wide.load1212 = load <16 x i8>, ptr %i.fv, align 1
  %wide.load1213 = load <16 x i8>, ptr %i.fw, align 1
  %i.fx = lshr <16 x i8> %wide.load1212, splat (i8 1)
  %i.fy = lshr <16 x i8> %wide.load1213, splat (i8 1)
  %i.fz = add <16 x i8> %i.fx, %wide.load1210
  %i.ga = add <16 x i8> %i.fy, %wide.load1211
  %i.gb = getelementptr inbounds nuw i8, ptr %.1538, i64 %index1209 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  store <16 x i8> %i.fz, ptr %i.gb, align 1
  store <16 x i8> %i.ga, ptr %i.gc, align 1
  %index.next1214 = add nuw i64 %index1209, 32    ; 2 uses
  %i.gd = icmp eq i64 %index.next1214, %n.vec1207
  br i1 %i.gd, label %middle.block1215, label %vector.body1208, !llvm.loop !282

middle.block1215:                                 ; preds = %vector.body1208
  %cmp.n1216 = icmp eq i64 %n.vec1207, %wide.trip.count952
  br i1 %cmp.n1216, label %.loopexit723, label %vec.epilog.iter.check1220

vec.epilog.iter.check1220:                        ; preds = %middle.block1215
  %min.epilog.iters.check1221 = icmp eq i64 %i.fr, 0
  br i1 %min.epilog.iters.check1221, label %.lr.ph822.preheader, label %vec.epilog.ph1222, !prof !57

vec.epilog.ph1222:                                ; preds = %vector.main.loop.iter.check1204, %vec.epilog.iter.check1220
  %vec.epilog.resume.val1217 = phi i64 [ %n.vec1207, %vec.epilog.iter.check1220 ], [ 0, %vector.main.loop.iter.check1204 ]
  %n.vec1223 = and i64 %wide.trip.count952, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body1224

vec.epilog.vector.body1224:                       ; preds = %vec.epilog.vector.body1224, %vec.epilog.ph1222
  %index1225 = phi i64 [ %vec.epilog.resume.val1217, %vec.epilog.ph1222 ], [ %index.next1228, %vec.epilog.vector.body1224 ] ; 4 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.1580, i64 %index1225
  %wide.load1226 = load <4 x i8>, ptr %i.ge, align 1
  %i.gf = sub nsw i64 %index1225, %i.fo
  %i.gg = getelementptr inbounds i8, ptr %.1538, i64 %i.gf
  %wide.load1227 = load <4 x i8>, ptr %i.gg, align 1
  %i.gh = lshr <4 x i8> %wide.load1227, splat (i8 1)
  %i.gi = add <4 x i8> %i.gh, %wide.load1226
  %i.gj = getelementptr inbounds nuw i8, ptr %.1538, i64 %index1225
  store <4 x i8> %i.gi, ptr %i.gj, align 1
  %index.next1228 = add nuw i64 %index1225, 4     ; 2 uses
  %i.gk = icmp eq i64 %index.next1228, %n.vec1223
  br i1 %i.gk, label %vec.epilog.middle.block1229, label %vec.epilog.vector.body1224, !llvm.loop !283

vec.epilog.middle.block1229:                      ; preds = %vec.epilog.vector.body1224
  %cmp.n1230 = icmp eq i64 %n.vec1223, %wide.trip.count952
  br i1 %cmp.n1230, label %.loopexit723, label %.lr.ph822.preheader

.lr.ph822.preheader:                              ; preds = %vector.memcheck1199, %iter.check1218, %vec.epilog.iter.check1220, %vec.epilog.middle.block1229
  %indvars.iv949.ph = phi i64 [ 0, %iter.check1218 ], [ 0, %vector.memcheck1199 ], [ %n.vec1207, %vec.epilog.iter.check1220 ], [ %n.vec1223, %vec.epilog.middle.block1229 ] ; 6 uses
  %xtraiter1653 = and i64 %wide.trip.count952, 1
  %lcmp.mod1654.not = icmp eq i64 %xtraiter1653, 0
  br i1 %lcmp.mod1654.not, label %.lr.ph822.prol.loopexit, label %.lr.ph822.prol

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
  br i1 %i.gu, label %iter.check1183, label %.loopexit723

iter.check1183:                                   ; preds = %.preheader728
  %i.gv = sext i32 %.1552 to i64                  ; 5 uses
  %wide.trip.count957 = zext nneg i32 %i.ej to i64 ; 6 uses
  %min.iters.check1168 = icmp ult i32 %i.ej, 4
  br i1 %min.iters.check1168, label %.lr.ph824.preheader, label %vector.memcheck1160

vector.memcheck1160:                              ; preds = %iter.check1183
  %i.gw = sub i64 %.15801077, %.15381076
  %diff.check1161 = icmp ugt i64 %i.gw, -16
  %i.gx = add nsw i64 %i.gv, -1
  %diff.check1162 = icmp ult i64 %i.gx, 15
  %conflict.rdx1163 = or i1 %diff.check1161, %diff.check1162
  %i.gy = add i64 %i.ao, %.15381076
  %i.gz = add nsw i64 %.sink1041, %.0537.idx
  %i.ha = add i64 %i.gz, %i.co
  %i.hb = add i64 %i.ha, %19
  %i.hc = sub i64 %i.hb, %i.gy
  %diff.check1164 = icmp ugt i64 %i.hc, -16
  %conflict.rdx1165 = or i1 %conflict.rdx1163, %diff.check1164
  %i.hd = add i64 %i.aw, %.15381076
  %i.he = add i64 %i.hd, %i.gv
  %i.hf = add i64 %.sink1041, %i.co
  %i.hg = add i64 %i.hf, %19
  %i.hh = sub i64 %i.hg, %i.he
  %diff.check1166 = icmp ugt i64 %i.hh, -16
  %conflict.rdx1167 = or i1 %conflict.rdx1165, %diff.check1166
  br i1 %conflict.rdx1167, label %.lr.ph824.preheader, label %vector.main.loop.iter.check1169

vector.main.loop.iter.check1169:                  ; preds = %vector.memcheck1160
  %min.iters.check1170 = icmp ult i32 %i.ej, 16
  br i1 %min.iters.check1170, label %vec.epilog.ph1187, label %vector.ph1171

vector.ph1171:                                    ; preds = %vector.main.loop.iter.check1169
  %i.hi = and i64 %wide.trip.count957, 12
  %n.vec1172 = and i64 %wide.trip.count957, 2147483632 ; 4 uses
  br label %vector.body1173

vector.body1173:                                  ; preds = %vector.body1173, %vector.ph1171
  %index1174 = phi i64 [ 0, %vector.ph1171 ], [ %index.next1179, %vector.body1173 ] ; 5 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %.1580, i64 %index1174
  %wide.load1175 = load <16 x i8>, ptr %i.hj, align 1
  %i.hk = sub nsw i64 %index1174, %i.gv           ; 2 uses
  %i.hl = getelementptr inbounds i8, ptr %.1538, i64 %i.hk
  %wide.load1176 = load <16 x i8>, ptr %i.hl, align 1 ; 2 uses
  %i.hm = zext <16 x i8> %wide.load1176 to <16 x i32> ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.eh, i64 %index1174
  %wide.load1177 = load <16 x i8>, ptr %i.hn, align 1 ; 2 uses
  %i.ho = zext <16 x i8> %wide.load1177 to <16 x i32> ; 2 uses
  %i.hp = getelementptr inbounds i8, ptr %i.eh, i64 %i.hk
  %wide.load1178 = load <16 x i8>, ptr %i.hp, align 1 ; 2 uses
  %i.hq = zext <16 x i8> %wide.load1178 to <16 x i32> ; 2 uses
  %i.hr = add nuw nsw <16 x i32> %i.ho, %i.hm
  %i.hs = sub nsw <16 x i32> %i.hr, %i.hq         ; 3 uses
  %i.ht = sub nsw <16 x i32> %i.hs, %i.hm
  %i.hu = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.ht, i1 true) ; 2 uses
  %i.hv = sub nsw <16 x i32> %i.hs, %i.ho
  %i.hw = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.hv, i1 true) ; 2 uses
  %i.hx = sub nsw <16 x i32> %i.hs, %i.hq
  %i.hy = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.hx, i1 true) ; 2 uses
  %i.hz = icmp samesign ugt <16 x i32> %i.hu, %i.hw
  %i.ia = icmp samesign ugt <16 x i32> %i.hu, %i.hy
  %i.ib = select <16 x i1> %i.hz, <16 x i1> splat (i1 true), <16 x i1> %i.ia
  %i.ic = icmp samesign ugt <16 x i32> %i.hw, %i.hy
  %i.id = select <16 x i1> %i.ic, <16 x i8> %wide.load1178, <16 x i8> %wide.load1177
  %i.ie = select <16 x i1> %i.ib, <16 x i8> %i.id, <16 x i8> %wide.load1176
  %i.if = add <16 x i8> %i.ie, %wide.load1175
  %i.ig = getelementptr inbounds nuw i8, ptr %.1538, i64 %index1174
  store <16 x i8> %i.if, ptr %i.ig, align 1
  %index.next1179 = add nuw i64 %index1174, 16    ; 2 uses
  %i.ih = icmp eq i64 %index.next1179, %n.vec1172
  br i1 %i.ih, label %middle.block1180, label %vector.body1173, !llvm.loop !284

middle.block1180:                                 ; preds = %vector.body1173
  %cmp.n1181 = icmp eq i64 %n.vec1172, %wide.trip.count957
  br i1 %cmp.n1181, label %.loopexit723, label %vec.epilog.iter.check1185

vec.epilog.iter.check1185:                        ; preds = %middle.block1180
  %min.epilog.iters.check1186 = icmp eq i64 %i.hi, 0
  br i1 %min.epilog.iters.check1186, label %.lr.ph824.preheader, label %vec.epilog.ph1187, !prof !104

vec.epilog.ph1187:                                ; preds = %vector.main.loop.iter.check1169, %vec.epilog.iter.check1185
  %vec.epilog.resume.val1182 = phi i64 [ %n.vec1172, %vec.epilog.iter.check1185 ], [ 0, %vector.main.loop.iter.check1169 ]
  %n.vec1188 = and i64 %wide.trip.count957, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body1189

vec.epilog.vector.body1189:                       ; preds = %vec.epilog.vector.body1189, %vec.epilog.ph1187
  %index1190 = phi i64 [ %vec.epilog.resume.val1182, %vec.epilog.ph1187 ], [ %index.next1195, %vec.epilog.vector.body1189 ] ; 5 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %.1580, i64 %index1190
  %wide.load1191 = load <4 x i8>, ptr %i.ii, align 1
  %i.ij = sub nsw i64 %index1190, %i.gv           ; 2 uses
  %i.ik = getelementptr inbounds i8, ptr %.1538, i64 %i.ij
  %wide.load1192 = load <4 x i8>, ptr %i.ik, align 1 ; 2 uses
  %i.il = zext <4 x i8> %wide.load1192 to <4 x i32> ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.eh, i64 %index1190
  %wide.load1193 = load <4 x i8>, ptr %i.im, align 1 ; 2 uses
  %i.in = zext <4 x i8> %wide.load1193 to <4 x i32> ; 2 uses
  %i.io = getelementptr inbounds i8, ptr %i.eh, i64 %i.ij
  %wide.load1194 = load <4 x i8>, ptr %i.io, align 1 ; 2 uses
  %i.ip = zext <4 x i8> %wide.load1194 to <4 x i32> ; 2 uses
  %i.iq = add nuw nsw <4 x i32> %i.in, %i.il
  %i.ir = sub nsw <4 x i32> %i.iq, %i.ip          ; 3 uses
  %i.is = sub nsw <4 x i32> %i.ir, %i.il
  %i.it = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.is, i1 true) ; 2 uses
  %i.iu = sub nsw <4 x i32> %i.ir, %i.in
  %i.iv = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.iu, i1 true) ; 2 uses
  %i.iw = sub nsw <4 x i32> %i.ir, %i.ip
  %i.ix = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.iw, i1 true) ; 2 uses
  %i.iy = icmp samesign ugt <4 x i32> %i.it, %i.iv
  %i.iz = icmp samesign ugt <4 x i32> %i.it, %i.ix
  %i.ja = select <4 x i1> %i.iy, <4 x i1> splat (i1 true), <4 x i1> %i.iz
  %i.jb = icmp samesign ugt <4 x i32> %i.iv, %i.ix
  %i.jc = select <4 x i1> %i.jb, <4 x i8> %wide.load1194, <4 x i8> %wide.load1193
  %i.jd = select <4 x i1> %i.ja, <4 x i8> %i.jc, <4 x i8> %wide.load1192
  %i.je = add <4 x i8> %i.jd, %wide.load1191
  %i.jf = getelementptr inbounds nuw i8, ptr %.1538, i64 %index1190
  store <4 x i8> %i.je, ptr %i.jf, align 1
  %index.next1195 = add nuw i64 %index1190, 4     ; 2 uses
  %i.jg = icmp eq i64 %index.next1195, %n.vec1188
  br i1 %i.jg, label %vec.epilog.middle.block1196, label %vec.epilog.vector.body1189, !llvm.loop !285

vec.epilog.middle.block1196:                      ; preds = %vec.epilog.vector.body1189
  %cmp.n1197 = icmp eq i64 %n.vec1188, %wide.trip.count957
  br i1 %cmp.n1197, label %.loopexit723, label %.lr.ph824.preheader

.lr.ph824.preheader:                              ; preds = %vector.memcheck1160, %iter.check1183, %vec.epilog.iter.check1185, %vec.epilog.middle.block1196
  %indvars.iv954.ph = phi i64 [ 0, %iter.check1183 ], [ 0, %vector.memcheck1160 ], [ %n.vec1172, %vec.epilog.iter.check1185 ], [ %n.vec1188, %vec.epilog.middle.block1196 ]
  br label %.lr.ph824

.preheader726:                                    ; preds = %bb.ae
  %i.jh = icmp sgt i32 %i.ej, 0
  br i1 %i.jh, label %iter.check1145, label %.loopexit723

iter.check1145:                                   ; preds = %.preheader726
  %i.ji = sext i32 %.1552 to i64                  ; 6 uses
  %wide.trip.count962 = zext nneg i32 %i.ej to i64 ; 8 uses
  %min.iters.check1128 = icmp ult i32 %i.ej, 8
  br i1 %min.iters.check1128, label %.lr.ph826.preheader, label %vector.memcheck1122

vector.memcheck1122:                              ; preds = %iter.check1145
  %i.jj = sub i64 %.15801077, %.15381076
  %diff.check1123 = icmp ugt i64 %i.jj, -32
  %i.jk = add i64 %i.ao, %.15381076
  %i.jl = add nsw i64 %.sink1041, %.0537.idx
  %i.jm = add i64 %i.jl, %i.co
  %i.jn = add i64 %i.jm, %22
  %i.jo = sub i64 %i.jn, %i.jk
  %diff.check1124 = icmp ugt i64 %i.jo, -32
  %conflict.rdx1125 = or i1 %diff.check1123, %diff.check1124
  %i.jp = add nsw i64 %i.ji, -1
  %diff.check1126 = icmp ult i64 %i.jp, 31
  %conflict.rdx1127 = or i1 %conflict.rdx1125, %diff.check1126
  br i1 %conflict.rdx1127, label %.lr.ph826.preheader, label %vector.main.loop.iter.check1129

vector.main.loop.iter.check1129:                  ; preds = %vector.memcheck1122
  %min.iters.check1130 = icmp ult i32 %i.ej, 32
  br i1 %min.iters.check1130, label %vec.epilog.ph1149, label %vector.ph1131

vector.ph1131:                                    ; preds = %vector.main.loop.iter.check1129
  %i.jq = and i64 %wide.trip.count962, 24
  %n.vec1132 = and i64 %wide.trip.count962, 2147483616 ; 4 uses
  br label %vector.body1133

vector.body1133:                                  ; preds = %vector.body1133, %vector.ph1131
  %index1134 = phi i64 [ 0, %vector.ph1131 ], [ %index.next1141, %vector.body1133 ] ; 5 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %.1580, i64 %index1134 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 16
  %wide.load1135 = load <16 x i8>, ptr %i.jr, align 1
  %wide.load1136 = load <16 x i8>, ptr %i.js, align 1
  %i.jt = getelementptr inbounds nuw i8, ptr %i.eh, i64 %index1134 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 16
  %wide.load1137 = load <16 x i8>, ptr %i.jt, align 1
  %wide.load1138 = load <16 x i8>, ptr %i.ju, align 1
  %i.jv = zext <16 x i8> %wide.load1137 to <16 x i16>
  %i.jw = zext <16 x i8> %wide.load1138 to <16 x i16>
  %i.jx = sub nsw i64 %index1134, %i.ji
  %i.jy = getelementptr inbounds i8, ptr %.1538, i64 %i.jx ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 16
  %wide.load1139 = load <16 x i8>, ptr %i.jy, align 1
  %wide.load1140 = load <16 x i8>, ptr %i.jz, align 1
  %i.ka = zext <16 x i8> %wide.load1139 to <16 x i16>
  %i.kb = zext <16 x i8> %wide.load1140 to <16 x i16>
  %i.kc = add nuw nsw <16 x i16> %i.ka, %i.jv
  %i.kd = add nuw nsw <16 x i16> %i.kb, %i.jw
  %i.ke = lshr <16 x i16> %i.kc, splat (i16 1)
  %i.kf = lshr <16 x i16> %i.kd, splat (i16 1)
  %i.kg = trunc nuw <16 x i16> %i.ke to <16 x i8>
  %i.kh = trunc nuw <16 x i16> %i.kf to <16 x i8>
  %i.ki = add <16 x i8> %wide.load1135, %i.kg
  %i.kj = add <16 x i8> %wide.load1136, %i.kh
  %i.kk = getelementptr inbounds nuw i8, ptr %.1538, i64 %index1134 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 16
  store <16 x i8> %i.ki, ptr %i.kk, align 1
  store <16 x i8> %i.kj, ptr %i.kl, align 1
  %index.next1141 = add nuw i64 %index1134, 32    ; 2 uses
  %i.km = icmp eq i64 %index.next1141, %n.vec1132
  br i1 %i.km, label %middle.block1142, label %vector.body1133, !llvm.loop !286

middle.block1142:                                 ; preds = %vector.body1133
  %cmp.n1143 = icmp eq i64 %n.vec1132, %wide.trip.count962
  br i1 %cmp.n1143, label %.loopexit723, label %vec.epilog.iter.check1147

vec.epilog.iter.check1147:                        ; preds = %middle.block1142
  %min.epilog.iters.check1148 = icmp eq i64 %i.jq, 0
  br i1 %min.epilog.iters.check1148, label %.lr.ph826.preheader, label %vec.epilog.ph1149, !prof !287

vec.epilog.ph1149:                                ; preds = %vector.main.loop.iter.check1129, %vec.epilog.iter.check1147
  %vec.epilog.resume.val1144 = phi i64 [ %n.vec1132, %vec.epilog.iter.check1147 ], [ 0, %vector.main.loop.iter.check1129 ]
  %n.vec1150 = and i64 %wide.trip.count962, 2147483640 ; 3 uses
  br label %vec.epilog.vector.body1151

vec.epilog.vector.body1151:                       ; preds = %vec.epilog.vector.body1151, %vec.epilog.ph1149
  %index1152 = phi i64 [ %vec.epilog.resume.val1144, %vec.epilog.ph1149 ], [ %index.next1156, %vec.epilog.vector.body1151 ] ; 5 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %.1580, i64 %index1152
  %wide.load1153 = load <8 x i8>, ptr %i.kn, align 1
  %i.ko = getelementptr inbounds nuw i8, ptr %i.eh, i64 %index1152
  %wide.load1154 = load <8 x i8>, ptr %i.ko, align 1
  %i.kp = zext <8 x i8> %wide.load1154 to <8 x i16>
  %i.kq = sub nsw i64 %index1152, %i.ji
  %i.kr = getelementptr inbounds i8, ptr %.1538, i64 %i.kq
  %wide.load1155 = load <8 x i8>, ptr %i.kr, align 1
  %i.ks = zext <8 x i8> %wide.load1155 to <8 x i16>
  %i.kt = add nuw nsw <8 x i16> %i.ks, %i.kp
  %i.ku = lshr <8 x i16> %i.kt, splat (i16 1)
  %i.kv = trunc nuw <8 x i16> %i.ku to <8 x i8>
  %i.kw = add <8 x i8> %wide.load1153, %i.kv
  %i.kx = getelementptr inbounds nuw i8, ptr %.1538, i64 %index1152
  store <8 x i8> %i.kw, ptr %i.kx, align 1
  %index.next1156 = add nuw i64 %index1152, 8     ; 2 uses
  %i.ky = icmp eq i64 %index.next1156, %n.vec1150
  br i1 %i.ky, label %vec.epilog.middle.block1157, label %vec.epilog.vector.body1151, !llvm.loop !288

vec.epilog.middle.block1157:                      ; preds = %vec.epilog.vector.body1151
  %cmp.n1158 = icmp eq i64 %n.vec1150, %wide.trip.count962
  br i1 %cmp.n1158, label %.loopexit723, label %.lr.ph826.preheader

.lr.ph826.preheader:                              ; preds = %vector.memcheck1122, %iter.check1145, %vec.epilog.iter.check1147, %vec.epilog.middle.block1157
  %indvars.iv959.ph = phi i64 [ 0, %iter.check1145 ], [ 0, %vector.memcheck1122 ], [ %n.vec1132, %vec.epilog.iter.check1147 ], [ %n.vec1150, %vec.epilog.middle.block1157 ] ; 7 uses
  %xtraiter1656 = and i64 %wide.trip.count962, 1
  %lcmp.mod1657.not = icmp eq i64 %xtraiter1656, 0
  br i1 %lcmp.mod1657.not, label %.lr.ph826.prol.loopexit, label %.lr.ph826.prol

.lr.ph826.prol:                                   ; preds = %.lr.ph826.preheader
  %i.kz = getelementptr inbounds nuw i8, ptr %.1580, i64 %indvars.iv959.ph
  %i.la = load i8, ptr %i.kz, align 1
  %i.lb = getelementptr inbounds nuw i8, ptr %i.eh, i64 %indvars.iv959.ph
  %i.lc = load i8, ptr %i.lb, align 1
  %i.ld = zext i8 %i.lc to i16
  %i.le = sub nsw i64 %indvars.iv959.ph, %i.ji
  %i.lf = getelementptr inbounds i8, ptr %.1538, i64 %i.le
  %i.lg = load i8, ptr %i.lf, align 1
  %i.lh = zext i8 %i.lg to i16
  %i.li = add nuw nsw i16 %i.lh, %i.ld
  %i.lj = lshr i16 %i.li, 1
  %.tr637.prol = trunc nuw i16 %i.lj to i8
  %.narrow638.prol = add i8 %i.la, %.tr637.prol
  %i.lk = getelementptr inbounds nuw i8, ptr %.1538, i64 %indvars.iv959.ph
  store i8 %.narrow638.prol, ptr %i.lk, align 1
  %indvars.iv.next960.prol = or disjoint i64 %indvars.iv959.ph, 1
  br label %.lr.ph826.prol.loopexit

.lr.ph826.prol.loopexit:                          ; preds = %.lr.ph826.prol, %.lr.ph826.preheader
  %indvars.iv959.unr = phi i64 [ %indvars.iv959.ph, %.lr.ph826.preheader ], [ %indvars.iv.next960.prol, %.lr.ph826.prol ]
  %i.ll = add nsw i64 %wide.trip.count962, -1
  %i.lm = icmp eq i64 %indvars.iv959.ph, %i.ll
  br i1 %i.lm, label %.loopexit723, label %.lr.ph826

.preheader724:                                    ; preds = %bb.ae
  %i.ln = icmp sgt i32 %i.ej, 0
  br i1 %i.ln, label %iter.check1108, label %.loopexit723

iter.check1108:                                   ; preds = %.preheader724
  %wide.trip.count967 = zext nneg i32 %i.ej to i64 ; 8 uses
  %min.iters.check1093 = icmp ult i32 %i.ej, 4
  br i1 %min.iters.check1093, label %.lr.ph828.preheader, label %vector.memcheck1089

vector.memcheck1089:                              ; preds = %iter.check1108
  %i.lo = sub i64 %.15801077, %.15381076
  %diff.check1090 = icmp ugt i64 %i.lo, -32
  %i.lp = add i64 %i.ao, %.15381076
  %i.lq = add nsw i64 %.sink1041, %.0537.idx
  %i.lr = add i64 %i.lq, %i.co
  %i.ls = add i64 %i.lr, %25
  %i.lt = sub i64 %i.ls, %i.lp
  %diff.check1091 = icmp ugt i64 %i.lt, -32
  %conflict.rdx1092 = or i1 %diff.check1090, %diff.check1091
  br i1 %conflict.rdx1092, label %.lr.ph828.preheader, label %vector.main.loop.iter.check1094

vector.main.loop.iter.check1094:                  ; preds = %vector.memcheck1089
  %min.iters.check1095 = icmp ult i32 %i.ej, 32
  br i1 %min.iters.check1095, label %vec.epilog.ph1112, label %vector.ph1096

vector.ph1096:                                    ; preds = %vector.main.loop.iter.check1094
  %i.lu = and i64 %wide.trip.count967, 28
  %n.vec1097 = and i64 %wide.trip.count967, 2147483616 ; 4 uses
  br label %vector.body1098

vector.body1098:                                  ; preds = %vector.body1098, %vector.ph1096
  %index1099 = phi i64 [ 0, %vector.ph1096 ], [ %index.next1104, %vector.body1098 ] ; 4 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %.1580, i64 %index1099 ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 16
  %wide.load1100 = load <16 x i8>, ptr %i.lv, align 1
  %wide.load1101 = load <16 x i8>, ptr %i.lw, align 1
  %i.lx = getelementptr inbounds nuw i8, ptr %i.eh, i64 %index1099 ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 16
  %wide.load1102 = load <16 x i8>, ptr %i.lx, align 1
  %wide.load1103 = load <16 x i8>, ptr %i.ly, align 1
  %i.lz = add <16 x i8> %wide.load1102, %wide.load1100
  %i.ma = add <16 x i8> %wide.load1103, %wide.load1101
  %i.mb = getelementptr inbounds nuw i8, ptr %.1538, i64 %index1099 ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 16
  store <16 x i8> %i.lz, ptr %i.mb, align 1
  store <16 x i8> %i.ma, ptr %i.mc, align 1
  %index.next1104 = add nuw i64 %index1099, 32    ; 2 uses
  %i.md = icmp eq i64 %index.next1104, %n.vec1097
  br i1 %i.md, label %middle.block1105, label %vector.body1098, !llvm.loop !289

middle.block1105:                                 ; preds = %vector.body1098
  %cmp.n1106 = icmp eq i64 %n.vec1097, %wide.trip.count967
  br i1 %cmp.n1106, label %.loopexit723, label %vec.epilog.iter.check1110

vec.epilog.iter.check1110:                        ; preds = %middle.block1105
  %min.epilog.iters.check1111 = icmp eq i64 %i.lu, 0
  br i1 %min.epilog.iters.check1111, label %.lr.ph828.preheader, label %vec.epilog.ph1112, !prof !57

vec.epilog.ph1112:                                ; preds = %vector.main.loop.iter.check1094, %vec.epilog.iter.check1110
  %vec.epilog.resume.val1107 = phi i64 [ %n.vec1097, %vec.epilog.iter.check1110 ], [ 0, %vector.main.loop.iter.check1094 ]
  %n.vec1113 = and i64 %wide.trip.count967, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body1114

vec.epilog.vector.body1114:                       ; preds = %vec.epilog.vector.body1114, %vec.epilog.ph1112
  %index1115 = phi i64 [ %vec.epilog.resume.val1107, %vec.epilog.ph1112 ], [ %index.next1118, %vec.epilog.vector.body1114 ] ; 4 uses
  %i.me = getelementptr inbounds nuw i8, ptr %.1580, i64 %index1115
  %wide.load1116 = load <4 x i8>, ptr %i.me, align 1
  %i.mf = getelementptr inbounds nuw i8, ptr %i.eh, i64 %index1115
  %wide.load1117 = load <4 x i8>, ptr %i.mf, align 1
  %i.mg = add <4 x i8> %wide.load1117, %wide.load1116
  %i.mh = getelementptr inbounds nuw i8, ptr %.1538, i64 %index1115
  store <4 x i8> %i.mg, ptr %i.mh, align 1
  %index.next1118 = add nuw i64 %index1115, 4     ; 2 uses
  %i.mi = icmp eq i64 %index.next1118, %n.vec1113
  br i1 %i.mi, label %vec.epilog.middle.block1119, label %vec.epilog.vector.body1114, !llvm.loop !290

vec.epilog.middle.block1119:                      ; preds = %vec.epilog.vector.body1114
  %cmp.n1120 = icmp eq i64 %n.vec1113, %wide.trip.count967
  br i1 %cmp.n1120, label %.loopexit723, label %.lr.ph828.preheader

.lr.ph828.preheader:                              ; preds = %vector.memcheck1089, %iter.check1108, %vec.epilog.iter.check1110, %vec.epilog.middle.block1119
  %indvars.iv964.ph = phi i64 [ 0, %iter.check1108 ], [ 0, %vector.memcheck1089 ], [ %n.vec1097, %vec.epilog.iter.check1110 ], [ %n.vec1113, %vec.epilog.middle.block1119 ] ; 3 uses
  %xtraiter1659 = and i64 %wide.trip.count967, 3  ; 2 uses
  %lcmp.mod1660.not = icmp eq i64 %xtraiter1659, 0
  br i1 %lcmp.mod1660.not, label %.lr.ph828.prol.loopexit, label %.lr.ph828.prol

.lr.ph828.prol:                                   ; preds = %.lr.ph828.preheader, %.lr.ph828.prol
  %indvars.iv964.prol = phi i64 [ %indvars.iv.next965.prol, %.lr.ph828.prol ], [ %indvars.iv964.ph, %.lr.ph828.preheader ] ; 4 uses
  %prol.iter1661 = phi i64 [ %prol.iter1661.next, %.lr.ph828.prol ], [ 0, %.lr.ph828.preheader ]
  %i.mj = getelementptr inbounds nuw i8, ptr %.1580, i64 %indvars.iv964.prol
  %i.mk = load i8, ptr %i.mj, align 1
  %i.ml = getelementptr inbounds nuw i8, ptr %i.eh, i64 %indvars.iv964.prol
  %i.mm = load i8, ptr %i.ml, align 1
  %.narrow640.prol = add i8 %i.mm, %i.mk
  %i.mn = getelementptr inbounds nuw i8, ptr %.1538, i64 %indvars.iv964.prol
  store i8 %.narrow640.prol, ptr %i.mn, align 1
  %indvars.iv.next965.prol = add nuw nsw i64 %indvars.iv964.prol, 1 ; 2 uses
  %prol.iter1661.next = add i64 %prol.iter1661, 1 ; 2 uses
  %prol.iter1661.cmp.not = icmp eq i64 %prol.iter1661.next, %xtraiter1659
  br i1 %prol.iter1661.cmp.not, label %.lr.ph828.prol.loopexit, label %.lr.ph828.prol, !llvm.loop !291

.lr.ph828.prol.loopexit:                          ; preds = %.lr.ph828.prol, %.lr.ph828.preheader
  %indvars.iv964.unr = phi i64 [ %indvars.iv964.ph, %.lr.ph828.preheader ], [ %indvars.iv.next965.prol, %.lr.ph828.prol ]
  %i.mo = sub nsw i64 %indvars.iv964.ph, %wide.trip.count967
  %i.mp = icmp ugt i64 %i.mo, -4
  br i1 %i.mp, label %.loopexit723, label %.lr.ph828

.preheader722:                                    ; preds = %bb.ae
  %i.mq = icmp sgt i32 %i.ej, 0
  br i1 %i.mq, label %iter.check, label %.loopexit723

iter.check:                                       ; preds = %.preheader722
  %i.mr = sext i32 %.1552 to i64                  ; 6 uses
  %wide.trip.count972 = zext nneg i32 %i.ej to i64 ; 8 uses
  %min.iters.check = icmp ult i32 %i.ej, 4
  br i1 %min.iters.check, label %.lr.ph830.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ms = sub i64 %.15801077, %.15381076
  %diff.check = icmp ugt i64 %i.ms, -32
  %i.mt = add nsw i64 %i.mr, -1
  %diff.check1078 = icmp ult i64 %i.mt, 31
  %conflict.rdx = or i1 %diff.check, %diff.check1078
  br i1 %conflict.rdx, label %.lr.ph830.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check1079 = icmp ult i32 %i.ej, 32
  br i1 %min.iters.check1079, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.mu = and i64 %wide.trip.count972, 28
  %n.vec = and i64 %wide.trip.count972, 2147483616 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %.1580, i64 %index ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 16
  %wide.load = load <16 x i8>, ptr %i.mv, align 1
  %wide.load1080 = load <16 x i8>, ptr %i.mw, align 1
  %i.mx = sub nsw i64 %index, %i.mr
  %i.my = getelementptr inbounds i8, ptr %.1538, i64 %i.mx ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 16
  %wide.load1081 = load <16 x i8>, ptr %i.my, align 1
  %wide.load1082 = load <16 x i8>, ptr %i.mz, align 1
  %i.na = add <16 x i8> %wide.load1081, %wide.load
  %i.nb = add <16 x i8> %wide.load1082, %wide.load1080
  %i.nc = getelementptr inbounds nuw i8, ptr %.1538, i64 %index ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 16
  store <16 x i8> %i.na, ptr %i.nc, align 1
  store <16 x i8> %i.nb, ptr %i.nd, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ne = icmp eq i64 %index.next, %n.vec
  br i1 %i.ne, label %middle.block, label %vector.body, !llvm.loop !292

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count972
  br i1 %cmp.n, label %.loopexit723, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.mu, 0
  br i1 %min.epilog.iters.check, label %.lr.ph830.preheader, label %vec.epilog.ph, !prof !57

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec1083 = and i64 %wide.trip.count972, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1084 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1087, %vec.epilog.vector.body ] ; 4 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %.1580, i64 %index1084
  %wide.load1085 = load <4 x i8>, ptr %i.nf, align 1
  %i.ng = sub nsw i64 %index1084, %i.mr
  %i.nh = getelementptr inbounds i8, ptr %.1538, i64 %i.ng
  %wide.load1086 = load <4 x i8>, ptr %i.nh, align 1
  %i.ni = add <4 x i8> %wide.load1086, %wide.load1085
  %i.nj = getelementptr inbounds nuw i8, ptr %.1538, i64 %index1084
  store <4 x i8> %i.ni, ptr %i.nj, align 1
  %index.next1087 = add nuw i64 %index1084, 4     ; 2 uses
  %i.nk = icmp eq i64 %index.next1087, %n.vec1083
  br i1 %i.nk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !293

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n1088 = icmp eq i64 %n.vec1083, %wide.trip.count972
  br i1 %cmp.n1088, label %.loopexit723, label %.lr.ph830.preheader

.lr.ph830.preheader:                              ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv969.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec1083, %vec.epilog.middle.block ] ; 6 uses
  %xtraiter1662 = and i64 %wide.trip.count972, 1
  %lcmp.mod1663.not = icmp eq i64 %xtraiter1662, 0
  br i1 %lcmp.mod1663.not, label %.lr.ph830.prol.loopexit, label %.lr.ph830.prol

.lr.ph830.prol:                                   ; preds = %.lr.ph830.preheader
  %i.nl = getelementptr inbounds nuw i8, ptr %.1580, i64 %indvars.iv969.ph
  %i.nm = load i8, ptr %i.nl, align 1
  %i.nn = sub nsw i64 %indvars.iv969.ph, %i.mr
  %i.no = getelementptr inbounds i8, ptr %.1538, i64 %i.nn
  %i.np = load i8, ptr %i.no, align 1
  %.narrow642.prol = add i8 %i.np, %i.nm
  %i.nq = getelementptr inbounds nuw i8, ptr %.1538, i64 %indvars.iv969.ph
  store i8 %.narrow642.prol, ptr %i.nq, align 1
  %indvars.iv.next970.prol = or disjoint i64 %indvars.iv969.ph, 1
  br label %.lr.ph830.prol.loopexit

.lr.ph830.prol.loopexit:                          ; preds = %.lr.ph830.prol, %.lr.ph830.preheader
  %indvars.iv969.unr = phi i64 [ %indvars.iv969.ph, %.lr.ph830.preheader ], [ %indvars.iv.next970.prol, %.lr.ph830.prol ]
  %i.nr = add nsw i64 %wide.trip.count972, -1
  %i.ns = icmp eq i64 %indvars.iv969.ph, %i.nr
  br i1 %i.ns, label %.loopexit723, label %.lr.ph830

bb.af:                                            ; preds = %bb.ae
  %i.nt = sext i32 %i.ej to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.1538, ptr nonnull align 1 %.1580, i64 %i.nt, i1 false)
  br label %.loopexit723

.lr.ph830:                                        ; preds = %.lr.ph830.prol.loopexit, %.lr.ph830
end_hunk_0
begin_hunk_1_@_m3dstbi__create_png_image_raw:bb.a
  %i.pw = lshr i16 %i.pv, 1
  %.tr637.1 = trunc nuw i16 %i.pw to i8
  %.narrow638.1 = add i8 %i.pn, %.tr637.1
  %i.px = getelementptr inbounds nuw i8, ptr %.1538, i64 %indvars.iv.next960
  store i8 %.narrow638.1, ptr %i.px, align 1
  %indvars.iv.next960.1 = add nuw nsw i64 %indvars.iv959, 2 ; 2 uses
  %exitcond963.not.1 = icmp eq i64 %indvars.iv.next960.1, %wide.trip.count962
  br i1 %exitcond963.not.1, label %.loopexit723, label %.lr.ph826, !llvm.loop !296

.lr.ph824:                                        ; preds = %.lr.ph824.preheader, %.lr.ph824
  %indvars.iv954 = phi i64 [ %indvars.iv.next955, %.lr.ph824 ], [ %indvars.iv954.ph, %.lr.ph824.preheader ] ; 5 uses
  %i.py = getelementptr inbounds nuw i8, ptr %.1580, i64 %indvars.iv954
  %i.pz = load i8, ptr %i.py, align 1
  %i.qa = sub nsw i64 %indvars.iv954, %i.gv       ; 2 uses
  %i.qb = getelementptr inbounds i8, ptr %.1538, i64 %i.qa
  %i.qc = load i8, ptr %i.qb, align 1             ; 2 uses
  %i.qd = zext i8 %i.qc to i32                    ; 2 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %i.eh, i64 %indvars.iv954
  %i.qf = load i8, ptr %i.qe, align 1             ; 2 uses
  %i.qg = zext i8 %i.qf to i32                    ; 2 uses
  %i.qh = getelementptr inbounds i8, ptr %i.eh, i64 %i.qa
  %i.qi = load i8, ptr %i.qh, align 1             ; 2 uses
  %i.qj = zext i8 %i.qi to i32                    ; 2 uses
  %i.qk = add nuw nsw i32 %i.qg, %i.qd
  %i.ql = sub nsw i32 %i.qk, %i.qj                ; 3 uses
  %i.qm = sub nsw i32 %i.ql, %i.qd
  %i.qn = tail call i32 @llvm.abs.i32(i32 %i.qm, i1 true) ; 2 uses
  %i.qo = sub nsw i32 %i.ql, %i.qg
  %i.qp = tail call i32 @llvm.abs.i32(i32 %i.qo, i1 true) ; 2 uses
  %i.qq = sub nsw i32 %i.ql, %i.qj
  %i.qr = tail call i32 @llvm.abs.i32(i32 %i.qq, i1 true) ; 2 uses
  %.not.i651 = icmp samesign ugt i32 %i.qn, %i.qp
  %.not20.i652 = icmp samesign ugt i32 %i.qn, %i.qr
  %or.cond.i653 = select i1 %.not.i651, i1 true, i1 %.not20.i652
  %.not21.i = icmp samesign ugt i32 %i.qp, %i.qr
  %i.qs = select i1 %.not21.i, i8 %i.qi, i8 %i.qf
  %.tr635 = select i1 %or.cond.i653, i8 %i.qs, i8 %i.qc
  %.narrow636 = add i8 %.tr635, %i.pz
  %i.qt = getelementptr inbounds nuw i8, ptr %.1538, i64 %indvars.iv954
  store i8 %.narrow636, ptr %i.qt, align 1
  %indvars.iv.next955 = add nuw nsw i64 %indvars.iv954, 1 ; 2 uses
  %exitcond958.not = icmp eq i64 %indvars.iv.next955, %wide.trip.count957
  br i1 %exitcond958.not, label %.loopexit723, label %.lr.ph824, !llvm.loop !297

.lr.ph822:                                        ; preds = %.lr.ph822.prol.loopexit, %.lr.ph822
  %indvars.iv949 = phi i64 [ %indvars.iv.next950.1, %.lr.ph822 ], [ %indvars.iv949.unr, %.lr.ph822.prol.loopexit ] ; 5 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %.1580, i64 %indvars.iv949
  %i.qv = load i8, ptr %i.qu, align 1
  %i.qw = sub nsw i64 %indvars.iv949, %i.fo
  %i.qx = getelementptr inbounds i8, ptr %.1538, i64 %i.qw
  %i.qy = load i8, ptr %i.qx, align 1
  %i.qz = lshr i8 %i.qy, 1
  %.narrow634 = add i8 %i.qz, %i.qv
  %i.ra = getelementptr inbounds nuw i8, ptr %.1538, i64 %indvars.iv949
  store i8 %.narrow634, ptr %i.ra, align 1
  %indvars.iv.next950 = add nuw nsw i64 %indvars.iv949, 1 ; 3 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %.1580, i64 %indvars.iv.next950
  %i.rc = load i8, ptr %i.rb, align 1
  %i.rd = sub nsw i64 %indvars.iv.next950, %i.fo
  %i.re = getelementptr inbounds i8, ptr %.1538, i64 %i.rd
  %i.rf = load i8, ptr %i.re, align 1
  %i.rg = lshr i8 %i.rf, 1
  %.narrow634.1 = add i8 %i.rg, %i.rc
  %i.rh = getelementptr inbounds nuw i8, ptr %.1538, i64 %indvars.iv.next950
  store i8 %.narrow634.1, ptr %i.rh, align 1
  %indvars.iv.next950.1 = add nuw nsw i64 %indvars.iv949, 2 ; 2 uses
  %exitcond953.not.1 = icmp eq i64 %indvars.iv.next950.1, %wide.trip.count952
  br i1 %exitcond953.not.1, label %.loopexit723, label %.lr.ph822, !llvm.loop !298

.lr.ph820:                                        ; preds = %.lr.ph820.prol.loopexit, %.lr.ph820
  %indvars.iv944 = phi i64 [ %indvars.iv.next945.1, %.lr.ph820 ], [ %indvars.iv944.unr, %.lr.ph820.prol.loopexit ] ; 5 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %.1580, i64 %indvars.iv944
  %i.rj = load i8, ptr %i.ri, align 1
  %i.rk = sub nsw i64 %indvars.iv944, %i.el
  %i.rl = getelementptr inbounds i8, ptr %.1538, i64 %i.rk
  %i.rm = load i8, ptr %i.rl, align 1
  %.narrow632 = add i8 %i.rm, %i.rj
  %i.rn = getelementptr inbounds nuw i8, ptr %.1538, i64 %indvars.iv944
  store i8 %.narrow632, ptr %i.rn, align 1
  %indvars.iv.next945 = add nuw nsw i64 %indvars.iv944, 1 ; 3 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %.1580, i64 %indvars.iv.next945
  %i.rp = load i8, ptr %i.ro, align 1
  %i.rq = sub nsw i64 %indvars.iv.next945, %i.el
  %i.rr = getelementptr inbounds i8, ptr %.1538, i64 %i.rq
  %i.rs = load i8, ptr %i.rr, align 1
  %.narrow632.1 = add i8 %i.rs, %i.rp
  %i.rt = getelementptr inbounds nuw i8, ptr %.1538, i64 %indvars.iv.next945
  store i8 %.narrow632.1, ptr %i.rt, align 1
  %indvars.iv.next945.1 = add nuw nsw i64 %indvars.iv944, 2 ; 2 uses
  %exitcond948.not.1 = icmp eq i64 %indvars.iv.next945.1, %wide.trip.count947
  br i1 %exitcond948.not.1, label %.loopexit723, label %.lr.ph820, !llvm.loop !299

.loopexit723:                                     ; preds = %.lr.ph820.prol.loopexit, %.lr.ph820, %.lr.ph822.prol.loopexit, %.lr.ph822, %.lr.ph824, %.lr.ph826.prol.loopexit, %.lr.ph826, %.lr.ph828.prol.loopexit, %.lr.ph828, %.lr.ph830.prol.loopexit, %.lr.ph830, %middle.block1248, %vec.epilog.middle.block1262, %middle.block1215, %vec.epilog.middle.block1229, %middle.block1180, %vec.epilog.middle.block1196, %middle.block1142, %vec.epilog.middle.block1157, %middle.block1105, %vec.epilog.middle.block1119, %middle.block, %vec.epilog.middle.block, %.preheader732, %.preheader730, %.preheader728, %.preheader726, %.preheader724, %.preheader722, %bb.af, %bb.ae
  %i.ru = sext i32 %i.ej to i64
  %i.rv = getelementptr inbounds i8, ptr %.1580, i64 %i.ru
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
  %i.rw = sext i32 %.0551833 to i64               ; 3 uses
  %wide.trip.count911 = zext i32 %.1552 to i64    ; 11 uses
  %scevgep1561 = getelementptr i8, ptr %.1538, i64 %i.cj
  %scevgep1562 = getelementptr i8, ptr %scevgep1561, i64 %wide.trip.count911 ; 2 uses
  %i.rx = mul nsw i64 %i.ci, %i.rw
  %i.ry = getelementptr i8, ptr %.1580, i64 %i.rx
  %scevgep1563 = getelementptr i8, ptr %i.ry, i64 %wide.trip.count911
  %scevgep1564 = getelementptr i8, ptr %.1538, i64 %i.cf
  %scevgep1565 = getelementptr i8, ptr %.1538, i64 %i.cl
  %scevgep1566 = getelementptr i8, ptr %scevgep1565, i64 %wide.trip.count911
  %min.iters.check1578 = icmp ult i32 %.1552, 4
  %bound01567 = icmp ult ptr %.1538, %scevgep1563
  %bound11568 = icmp ult ptr %.1580, %scevgep1562
  %found.conflict1569 = and i1 %bound01567, %bound11568
  %i.rz = or i32 %.0551833, %i.h
  %i.sa = icmp slt i32 %i.rz, 0
  %i.sb = or i1 %found.conflict1569, %i.sa
  %bound01572 = icmp ult ptr %.1538, %scevgep1566
  %bound11573 = icmp ult ptr %scevgep1564, %scevgep1562
  %found.conflict1574 = and i1 %bound01572, %bound11573
  %i.sc = or i1 %found.conflict1574, %stride.check1575
  %conflict.rdx1577 = or i1 %i.sb, %i.sc
  %min.iters.check1580 = icmp ult i32 %.1552, 32
  %i.sd = and i64 %wide.trip.count911, 28
  %n.vec1582 = and i64 %wide.trip.count911, 2147483616 ; 4 uses
  %cmp.n1591 = icmp eq i64 %n.vec1582, %wide.trip.count911
  %min.epilog.iters.check1596 = icmp eq i64 %i.sd, 0
  %n.vec1598 = and i64 %wide.trip.count911, 2147483644 ; 3 uses
  %cmp.n1605 = icmp eq i64 %n.vec1598, %wide.trip.count911
  %xtraiter = and i64 %wide.trip.count911, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.se = add nsw i64 %wide.trip.count911, -1
  br label %.preheader721

.preheader745:                                    ; preds = %bb.ag
  br i1 %.not614754, label %.loopexit736, label %.preheader720.lr.ph

.preheader720.lr.ph:                              ; preds = %.preheader745
  %i.sf = sext i32 %.0551833 to i64               ; 3 uses
  %wide.trip.count916 = zext i32 %.1552 to i64    ; 11 uses
  %scevgep1514 = getelementptr i8, ptr %.1538, i64 %i.ce
  %scevgep1515 = getelementptr i8, ptr %scevgep1514, i64 %wide.trip.count916 ; 2 uses
  %i.sg = mul nsw i64 %i.cd, %i.sf
  %i.sh = getelementptr i8, ptr %.1580, i64 %i.sg
  %scevgep1516 = getelementptr i8, ptr %i.sh, i64 %wide.trip.count916
  %scevgep1517 = getelementptr i8, ptr %.1538, i64 %i.cf
  %scevgep1518 = getelementptr i8, ptr %.1538, i64 %i.ch
  %scevgep1519 = getelementptr i8, ptr %scevgep1518, i64 %wide.trip.count916
  %min.iters.check1531 = icmp ult i32 %.1552, 4
  %bound01520 = icmp ult ptr %.1538, %scevgep1516
  %bound11521 = icmp ult ptr %.1580, %scevgep1515
  %found.conflict1522 = and i1 %bound01520, %bound11521
  %i.si = or i32 %.0551833, %i.h
  %i.sj = icmp slt i32 %i.si, 0
  %i.sk = or i1 %found.conflict1522, %i.sj
  %bound01525 = icmp ult ptr %.1538, %scevgep1519
  %bound11526 = icmp ult ptr %scevgep1517, %scevgep1515
  %found.conflict1527 = and i1 %bound01525, %bound11526
  %i.sl = or i1 %found.conflict1527, %stride.check1528
  %conflict.rdx1530 = or i1 %i.sk, %i.sl
  %min.iters.check1533 = icmp ult i32 %.1552, 32
  %i.sm = and i64 %wide.trip.count916, 28
  %n.vec1535 = and i64 %wide.trip.count916, 2147483616 ; 4 uses
  %cmp.n1544 = icmp eq i64 %n.vec1535, %wide.trip.count916
  %min.epilog.iters.check1549 = icmp eq i64 %i.sm, 0
  %n.vec1551 = and i64 %wide.trip.count916, 2147483644 ; 3 uses
  %cmp.n1558 = icmp eq i64 %n.vec1551, %wide.trip.count916
  %xtraiter1635 = and i64 %wide.trip.count916, 1
  %lcmp.mod1636.not = icmp eq i64 %xtraiter1635, 0
  %i.sn = add nsw i64 %wide.trip.count916, -1
  br label %.preheader720

.preheader743:                                    ; preds = %bb.ag
  br i1 %.not614754, label %.loopexit736, label %.preheader719.lr.ph

.preheader719.lr.ph:                              ; preds = %.preheader743
  %i.so = sext i32 %.0551833 to i64               ; 3 uses
  %wide.trip.count921 = zext i32 %.1552 to i64    ; 10 uses
  %scevgep1447 = getelementptr i8, ptr %.1538, i64 %i.bt
  %scevgep1448 = getelementptr i8, ptr %scevgep1447, i64 %wide.trip.count921 ; 4 uses
  %i.sp = mul nsw i64 %i.bs, %i.so
  %i.sq = getelementptr i8, ptr %.1580, i64 %i.sp
  %scevgep1449 = getelementptr i8, ptr %i.sq, i64 %wide.trip.count921
  %scevgep1450 = getelementptr i8, ptr %.1538, i64 %i.bo
  %scevgep1451 = getelementptr i8, ptr %.1538, i64 %i.bv
  %scevgep1452 = getelementptr i8, ptr %scevgep1451, i64 %wide.trip.count921
  %scevgep1453 = getelementptr i8, ptr %i.cn, i64 %i.bx
  %i.sr = add nsw i64 %.sink1041, %wide.trip.count921
  %i.ss = add nsw i64 %i.sr, %10                  ; 2 uses
  %scevgep1454 = getelementptr i8, ptr %scevgep1453, i64 %i.ss
  %scevgep1455 = getelementptr i8, ptr %i.cn, i64 %i.bz
  %i.st = getelementptr i8, ptr %scevgep1455, i64 %.sink1041
  %scevgep1456 = getelementptr i8, ptr %i.st, i64 %10
  %scevgep1457 = getelementptr i8, ptr %i.cn, i64 %i.cb
  %scevgep1458 = getelementptr i8, ptr %scevgep1457, i64 %i.ss
  %min.iters.check1482 = icmp ult i32 %.1552, 4
  %bound01459 = icmp ult ptr %.1538, %scevgep1449
  %bound11460 = icmp ult ptr %.1580, %scevgep1448
  %found.conflict1461 = and i1 %bound01459, %bound11460
  %i.su = or i32 %.0551833, %i.h
  %i.sv = icmp slt i32 %i.su, 0
  %i.sw = or i1 %found.conflict1461, %i.sv
  %bound01464 = icmp ult ptr %.1538, %scevgep1452
  %bound11465 = icmp ult ptr %scevgep1450, %scevgep1448
  %found.conflict1466 = and i1 %bound01464, %bound11465
  %i.sx = or i1 %found.conflict1466, %stride.check1467
  %conflict.rdx1469 = or i1 %i.sw, %i.sx
  %bound01470 = icmp ult ptr %.1538, %scevgep1454
  %bound11471 = icmp ult ptr %i.eh, %scevgep1448
  %found.conflict1472 = and i1 %bound01470, %bound11471
  %conflict.rdx1475 = or i1 %found.conflict1472, %conflict.rdx1469
  %bound01476 = icmp ult ptr %.1538, %scevgep1458
  %bound11477 = icmp ult ptr %scevgep1456, %scevgep1448
  %found.conflict1478 = and i1 %bound01476, %bound11477
  %conflict.rdx1481 = or i1 %found.conflict1478, %conflict.rdx1475
  %min.iters.check1484 = icmp ult i32 %.1552, 16
  %i.sy = and i64 %wide.trip.count921, 12
  %n.vec1486 = and i64 %wide.trip.count921, 2147483632 ; 4 uses
  %cmp.n1495 = icmp eq i64 %n.vec1486, %wide.trip.count921
  %min.epilog.iters.check1500 = icmp eq i64 %i.sy, 0
  %n.vec1502 = and i64 %wide.trip.count921, 2147483644 ; 3 uses
  %cmp.n1511 = icmp eq i64 %n.vec1502, %wide.trip.count921
  br label %.preheader719

.preheader741:                                    ; preds = %bb.ag
  br i1 %.not614754, label %.loopexit736, label %.preheader718.lr.ph

.preheader718.lr.ph:                              ; preds = %.preheader741
  %i.sz = sext i32 %.0551833 to i64               ; 3 uses
  %wide.trip.count926 = zext i32 %.1552 to i64    ; 12 uses
  %scevgep1389 = getelementptr i8, ptr %.1538, i64 %i.bl
  %scevgep1390 = getelementptr i8, ptr %scevgep1389, i64 %wide.trip.count926 ; 3 uses
  %i.ta = mul nsw i64 %i.bk, %i.sz
  %i.tb = getelementptr i8, ptr %.1580, i64 %i.ta
  %scevgep1391 = getelementptr i8, ptr %i.tb, i64 %wide.trip.count926
  %scevgep1392 = getelementptr i8, ptr %i.cn, i64 %i.bn
  %i.tc = getelementptr i8, ptr %scevgep1392, i64 %.sink1041
  %i.td = getelementptr i8, ptr %i.tc, i64 %wide.trip.count926
  %scevgep1393 = getelementptr i8, ptr %i.td, i64 %13
  %scevgep1394 = getelementptr i8, ptr %.1538, i64 %i.bo
  %scevgep1395 = getelementptr i8, ptr %.1538, i64 %i.bq
  %scevgep1396 = getelementptr i8, ptr %scevgep1395, i64 %wide.trip.count926
  %min.iters.check1414 = icmp ult i32 %.1552, 8
  %bound01397 = icmp ult ptr %.1538, %scevgep1391
  %bound11398 = icmp ult ptr %.1580, %scevgep1390
  %found.conflict1399 = and i1 %bound01397, %bound11398
  %i.te = or i32 %.0551833, %i.h
  %i.tf = icmp slt i32 %i.te, 0
  %i.tg = or i1 %found.conflict1399, %i.tf
  %bound01402 = icmp ult ptr %.1538, %scevgep1393
  %bound11403 = icmp ult ptr %i.eh, %scevgep1390
  %found.conflict1404 = and i1 %bound01402, %bound11403
  %i.th = or i1 %found.conflict1404, %stride.check1405
  %conflict.rdx1407 = or i1 %i.tg, %i.th
  %bound01408 = icmp ult ptr %.1538, %scevgep1396
  %bound11409 = icmp ult ptr %scevgep1394, %scevgep1390
  %found.conflict1410 = and i1 %bound01408, %bound11409
  %conflict.rdx1413 = or i1 %found.conflict1410, %conflict.rdx1407
  %min.iters.check1416 = icmp ult i32 %.1552, 32
  %i.ti = and i64 %wide.trip.count926, 24
  %n.vec1418 = and i64 %wide.trip.count926, 2147483616 ; 4 uses
  %cmp.n1429 = icmp eq i64 %n.vec1418, %wide.trip.count926
  %min.epilog.iters.check1434 = icmp eq i64 %i.ti, 0
  %n.vec1436 = and i64 %wide.trip.count926, 2147483640 ; 3 uses
  %cmp.n1444 = icmp eq i64 %n.vec1436, %wide.trip.count926
  %xtraiter1637 = and i64 %wide.trip.count926, 1
  %lcmp.mod1638.not = icmp eq i64 %xtraiter1637, 0
  %i.tj = add nsw i64 %wide.trip.count926, -1
  br label %.preheader718

.preheader739:                                    ; preds = %bb.ag
  br i1 %.not614754, label %.loopexit736, label %.preheader717.lr.ph

.preheader717.lr.ph:                              ; preds = %.preheader739
  %i.tk = sext i32 %.0551833 to i64               ; 3 uses
  %wide.trip.count931 = zext i32 %.1552 to i64    ; 11 uses
  %scevgep1343 = getelementptr i8, ptr %.1538, i64 %i.bh
  %scevgep1344 = getelementptr i8, ptr %scevgep1343, i64 %wide.trip.count931 ; 2 uses
  %i.tl = mul nsw i64 %i.bg, %i.tk
  %i.tm = getelementptr i8, ptr %.1580, i64 %i.tl
  %scevgep1345 = getelementptr i8, ptr %i.tm, i64 %wide.trip.count931
  %scevgep1346 = getelementptr i8, ptr %i.cn, i64 %i.bj
  %i.tn = getelementptr i8, ptr %scevgep1346, i64 %.sink1041
  %i.to = getelementptr i8, ptr %i.tn, i64 %wide.trip.count931
  %scevgep1347 = getelementptr i8, ptr %i.to, i64 %16
  %min.iters.check1359 = icmp ult i32 %.1552, 4
  %bound01348 = icmp ult ptr %.1538, %scevgep1345
  %bound11349 = icmp ult ptr %.1580, %scevgep1344
  %found.conflict1350 = and i1 %bound01348, %bound11349
  %i.tp = or i32 %.0551833, %i.h
  %i.tq = icmp slt i32 %i.tp, 0
  %i.tr = or i1 %found.conflict1350, %i.tq
  %bound01353 = icmp ult ptr %.1538, %scevgep1347
  %bound11354 = icmp ult ptr %i.eh, %scevgep1344
  %found.conflict1355 = and i1 %bound01353, %bound11354
  %i.ts = or i1 %found.conflict1355, %stride.check1356
  %conflict.rdx1358 = or i1 %i.tr, %i.ts
  %min.iters.check1361 = icmp ult i32 %.1552, 32
  %i.tt = and i64 %wide.trip.count931, 28
  %n.vec1363 = and i64 %wide.trip.count931, 2147483616 ; 4 uses
  %cmp.n1372 = icmp eq i64 %n.vec1363, %wide.trip.count931
  %min.epilog.iters.check1377 = icmp eq i64 %i.tt, 0
  %n.vec1379 = and i64 %wide.trip.count931, 2147483644 ; 3 uses
  %cmp.n1386 = icmp eq i64 %n.vec1379, %wide.trip.count931
  %xtraiter1639 = and i64 %wide.trip.count931, 3  ; 2 uses
  %lcmp.mod1640.not = icmp eq i64 %xtraiter1639, 0
  br label %.preheader717

.preheader737:                                    ; preds = %bb.ag
  br i1 %.not614754, label %.loopexit736, label %.preheader716.lr.ph

.preheader716.lr.ph:                              ; preds = %.preheader737
  %i.tu = sext i32 %.0551833 to i64               ; 3 uses
  %wide.trip.count936 = zext i32 %.1552 to i64    ; 11 uses
  %scevgep1296 = getelementptr i8, ptr %.1538, i64 %i.bb
  %scevgep1297 = getelementptr i8, ptr %scevgep1296, i64 %wide.trip.count936 ; 2 uses
  %i.tv = mul nsw i64 %i.ba, %i.tu
  %i.tw = getelementptr i8, ptr %.1580, i64 %i.tv
  %scevgep1298 = getelementptr i8, ptr %i.tw, i64 %wide.trip.count936
  %scevgep1299 = getelementptr i8, ptr %.1538, i64 %i.bc
  %scevgep1300 = getelementptr i8, ptr %.1538, i64 %i.be
  %scevgep1301 = getelementptr i8, ptr %scevgep1300, i64 %wide.trip.count936
  %min.iters.check1313 = icmp ult i32 %.1552, 4
  %bound01302 = icmp ult ptr %.1538, %scevgep1298
  %bound11303 = icmp ult ptr %.1580, %scevgep1297
  %found.conflict1304 = and i1 %bound01302, %bound11303
  %i.tx = or i32 %.0551833, %i.h
  %i.ty = icmp slt i32 %i.tx, 0
  %i.tz = or i1 %found.conflict1304, %i.ty
  %bound01307 = icmp ult ptr %.1538, %scevgep1301
  %bound11308 = icmp ult ptr %scevgep1299, %scevgep1297
  %found.conflict1309 = and i1 %bound01307, %bound11308
  %i.ua = or i1 %found.conflict1309, %stride.check1310
  %conflict.rdx1312 = or i1 %i.tz, %i.ua
  %min.iters.check1315 = icmp ult i32 %.1552, 32
  %i.ub = and i64 %wide.trip.count936, 28
  %n.vec1317 = and i64 %wide.trip.count936, 2147483616 ; 4 uses
  %cmp.n1326 = icmp eq i64 %n.vec1317, %wide.trip.count936
  %min.epilog.iters.check1331 = icmp eq i64 %i.ub, 0
  %n.vec1333 = and i64 %wide.trip.count936, 2147483644 ; 3 uses
  %cmp.n1340 = icmp eq i64 %n.vec1333, %wide.trip.count936
  %xtraiter1641 = and i64 %wide.trip.count936, 1
  %lcmp.mod1642.not = icmp eq i64 %xtraiter1641, 0
  %i.uc = add nsw i64 %wide.trip.count936, -1
  br label %.preheader716

.preheader735:                                    ; preds = %bb.ag
  br i1 %.not614754, label %.loopexit736, label %.preheader715.lr.ph

.preheader715.lr.ph:                              ; preds = %.preheader735
  %i.ud = sext i32 %.0551833 to i64               ; 3 uses
  %wide.trip.count941 = zext i32 %.1552 to i64    ; 10 uses
  %scevgep = getelementptr i8, ptr %.1538, i64 %i.az
  %scevgep1266 = getelementptr i8, ptr %scevgep, i64 %wide.trip.count941
  %i.ue = mul nsw i64 %i.ay, %i.ud
  %i.uf = getelementptr i8, ptr %.1580, i64 %i.ue
  %scevgep1267 = getelementptr i8, ptr %i.uf, i64 %wide.trip.count941
  %min.iters.check1269 = icmp ult i32 %.1552, 4
  %bound0 = icmp ult ptr %.1538, %scevgep1267
  %bound1 = icmp ult ptr %.1580, %scevgep1266
  %found.conflict = and i1 %bound0, %bound1
  %i.ug = or i32 %.0551833, %i.h
  %i.uh = icmp slt i32 %i.ug, 0
  %i.ui = or i1 %found.conflict, %i.uh
  %min.iters.check1271 = icmp ult i32 %.1552, 32
  %i.uj = and i64 %wide.trip.count941, 28
  %n.vec1273 = and i64 %wide.trip.count941, 2147483616 ; 4 uses
  %cmp.n1280 = icmp eq i64 %n.vec1273, %wide.trip.count941
  %min.epilog.iters.check1285 = icmp eq i64 %i.uj, 0
  %n.vec1287 = and i64 %wide.trip.count941, 2147483644 ; 3 uses
  %cmp.n1293 = icmp eq i64 %n.vec1287, %wide.trip.count941
  %xtraiter1644 = and i64 %wide.trip.count941, 3  ; 2 uses
  %lcmp.mod1645.not = icmp eq i64 %xtraiter1644, 0
  br label %.preheader715

.preheader715:                                    ; preds = %.preheader715.lr.ph, %._crit_edge808
  %.0567813 = phi i32 [ %.6573753, %.preheader715.lr.ph ], [ %.0567, %._crit_edge808 ]
  %.2539812 = phi ptr [ %.1538, %.preheader715.lr.ph ], [ %i.vl, %._crit_edge808 ] ; 9 uses
  %.2581811 = phi ptr [ %.1580, %.preheader715.lr.ph ], [ %i.vk, %._crit_edge808 ] ; 8 uses
  br i1 %i.db, label %iter.check1282, label %._crit_edge808

iter.check1282:                                   ; preds = %.preheader715
  %brmerge = select i1 %min.iters.check1269, i1 true, i1 %i.ui
  br i1 %brmerge, label %.lr.ph807.preheader, label %vector.main.loop.iter.check1270

vector.main.loop.iter.check1270:                  ; preds = %iter.check1282
  br i1 %min.iters.check1271, label %vec.epilog.ph1286, label %vector.body1274

vector.body1274:                                  ; preds = %vector.main.loop.iter.check1270, %vector.body1274
  %index1275 = phi i64 [ %index.next1278, %vector.body1274 ], [ 0, %vector.main.loop.iter.check1270 ] ; 3 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %.2581811, i64 %index1275 ; 2 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uk, i64 16
  %wide.load1276 = load <16 x i8>, ptr %i.uk, align 1, !alias.scope !300
  %wide.load1277 = load <16 x i8>, ptr %i.ul, align 1, !alias.scope !300
  %i.um = getelementptr inbounds nuw i8, ptr %.2539812, i64 %index1275 ; 2 uses
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 16
  store <16 x i8> %wide.load1276, ptr %i.um, align 1, !alias.scope !303, !noalias !300
  store <16 x i8> %wide.load1277, ptr %i.un, align 1, !alias.scope !303, !noalias !300
  %index.next1278 = add nuw i64 %index1275, 32    ; 2 uses
  %i.uo = icmp eq i64 %index.next1278, %n.vec1273
  br i1 %i.uo, label %middle.block1279, label %vector.body1274, !llvm.loop !305

middle.block1279:                                 ; preds = %vector.body1274
  br i1 %cmp.n1280, label %._crit_edge808, label %vec.epilog.iter.check1284

vec.epilog.iter.check1284:                        ; preds = %middle.block1279
  br i1 %min.epilog.iters.check1285, label %.lr.ph807.preheader, label %vec.epilog.ph1286, !prof !57

vec.epilog.ph1286:                                ; preds = %vector.main.loop.iter.check1270, %vec.epilog.iter.check1284
  %vec.epilog.resume.val1281 = phi i64 [ %n.vec1273, %vec.epilog.iter.check1284 ], [ 0, %vector.main.loop.iter.check1270 ]
  br label %vec.epilog.vector.body1288

vec.epilog.vector.body1288:                       ; preds = %vec.epilog.vector.body1288, %vec.epilog.ph1286
  %index1289 = phi i64 [ %vec.epilog.resume.val1281, %vec.epilog.ph1286 ], [ %index.next1291, %vec.epilog.vector.body1288 ] ; 3 uses
  %i.up = getelementptr inbounds nuw i8, ptr %.2581811, i64 %index1289
  %wide.load1290 = load <4 x i8>, ptr %i.up, align 1, !alias.scope !300
  %i.uq = getelementptr inbounds nuw i8, ptr %.2539812, i64 %index1289
  store <4 x i8> %wide.load1290, ptr %i.uq, align 1, !alias.scope !303, !noalias !300
  %index.next1291 = add nuw i64 %index1289, 4     ; 2 uses
  %i.ur = icmp eq i64 %index.next1291, %n.vec1287
  br i1 %i.ur, label %vec.epilog.middle.block1292, label %vec.epilog.vector.body1288, !llvm.loop !306

vec.epilog.middle.block1292:                      ; preds = %vec.epilog.vector.body1288
  br i1 %cmp.n1293, label %._crit_edge808, label %.lr.ph807.preheader

.lr.ph807.preheader:                              ; preds = %iter.check1282, %vec.epilog.iter.check1284, %vec.epilog.middle.block1292
  %indvars.iv938.ph = phi i64 [ 0, %iter.check1282 ], [ %n.vec1287, %vec.epilog.middle.block1292 ], [ %n.vec1273, %vec.epilog.iter.check1284 ] ; 3 uses
  br i1 %lcmp.mod1645.not, label %.lr.ph807.prol.loopexit, label %.lr.ph807.prol

.lr.ph807.prol:                                   ; preds = %.lr.ph807.preheader, %.lr.ph807.prol
  %indvars.iv938.prol = phi i64 [ %indvars.iv.next939.prol, %.lr.ph807.prol ], [ %indvars.iv938.ph, %.lr.ph807.preheader ] ; 3 uses
  %prol.iter1646 = phi i64 [ %prol.iter1646.next, %.lr.ph807.prol ], [ 0, %.lr.ph807.preheader ]
  %i.us = getelementptr inbounds nuw i8, ptr %.2581811, i64 %indvars.iv938.prol
  %i.ut = load i8, ptr %i.us, align 1
  %i.uu = getelementptr inbounds nuw i8, ptr %.2539812, i64 %indvars.iv938.prol
  store i8 %i.ut, ptr %i.uu, align 1
  %indvars.iv.next939.prol = add nuw nsw i64 %indvars.iv938.prol, 1 ; 2 uses
  %prol.iter1646.next = add i64 %prol.iter1646, 1 ; 2 uses
  %prol.iter1646.cmp.not = icmp eq i64 %prol.iter1646.next, %xtraiter1644
  br i1 %prol.iter1646.cmp.not, label %.lr.ph807.prol.loopexit, label %.lr.ph807.prol, !llvm.loop !307

.lr.ph807.prol.loopexit:                          ; preds = %.lr.ph807.prol, %.lr.ph807.preheader
  %indvars.iv938.unr = phi i64 [ %indvars.iv938.ph, %.lr.ph807.preheader ], [ %indvars.iv.next939.prol, %.lr.ph807.prol ]
  %i.uv = sub nsw i64 %indvars.iv938.ph, %wide.trip.count941
  %i.uw = icmp ugt i64 %i.uv, -4
  br i1 %i.uw, label %._crit_edge808, label %.lr.ph807

.lr.ph807:                                        ; preds = %.lr.ph807.prol.loopexit, %.lr.ph807
  %indvars.iv938 = phi i64 [ %indvars.iv.next939.3, %.lr.ph807 ], [ %indvars.iv938.unr, %.lr.ph807.prol.loopexit ] ; 6 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %.2581811, i64 %indvars.iv938
  %i.uy = load i8, ptr %i.ux, align 1
  %i.uz = getelementptr inbounds nuw i8, ptr %.2539812, i64 %indvars.iv938
  store i8 %i.uy, ptr %i.uz, align 1
  %indvars.iv.next939 = add nuw nsw i64 %indvars.iv938, 1 ; 2 uses
  %i.va = getelementptr inbounds nuw i8, ptr %.2581811, i64 %indvars.iv.next939
  %i.vb = load i8, ptr %i.va, align 1
  %i.vc = getelementptr inbounds nuw i8, ptr %.2539812, i64 %indvars.iv.next939
  store i8 %i.vb, ptr %i.vc, align 1
  %indvars.iv.next939.1 = add nuw nsw i64 %indvars.iv938, 2 ; 2 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %.2581811, i64 %indvars.iv.next939.1
  %i.ve = load i8, ptr %i.vd, align 1
  %i.vf = getelementptr inbounds nuw i8, ptr %.2539812, i64 %indvars.iv.next939.1
  store i8 %i.ve, ptr %i.vf, align 1
  %indvars.iv.next939.2 = add nuw nsw i64 %indvars.iv938, 3 ; 2 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %.2581811, i64 %indvars.iv.next939.2
  %i.vh = load i8, ptr %i.vg, align 1
  %i.vi = getelementptr inbounds nuw i8, ptr %.2539812, i64 %indvars.iv.next939.2
  store i8 %i.vh, ptr %i.vi, align 1
  %indvars.iv.next939.3 = add nuw nsw i64 %indvars.iv938, 4 ; 2 uses
  %exitcond942.not.3 = icmp eq i64 %indvars.iv.next939.3, %wide.trip.count941
  br i1 %exitcond942.not.3, label %._crit_edge808, label %.lr.ph807, !llvm.loop !308

._crit_edge808:                                   ; preds = %.lr.ph807.prol.loopexit, %.lr.ph807, %middle.block1279, %vec.epilog.middle.block1292, %.preheader715
  %i.vj = getelementptr inbounds i8, ptr %.2539812, i64 %i.ud
  store i8 -1, ptr %i.vj, align 1
  %i.vk = getelementptr inbounds i8, ptr %.2581811, i64 %i.ud ; 2 uses
  %i.vl = getelementptr inbounds i8, ptr %.2539812, i64 %i.at
  %.0567 = add i32 %.0567813, -1                  ; 2 uses
  %.not630 = icmp eq i32 %.0567, 0
  br i1 %.not630, label %.loopexit736, label %.preheader715

.preheader716:                                    ; preds = %.preheader716.lr.ph, %._crit_edge799
  %.1568804 = phi i32 [ %.6573753, %.preheader716.lr.ph ], [ %.1568, %._crit_edge799 ]
  %.3540803 = phi ptr [ %.1538, %.preheader716.lr.ph ], [ %i.wx, %._crit_edge799 ] ; 12 uses
  %.3582802 = phi ptr [ %.1580, %.preheader716.lr.ph ], [ %i.ww, %._crit_edge799 ] ; 6 uses
end_hunk_1
