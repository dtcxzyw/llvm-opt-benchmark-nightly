Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rmodels?download=true
inline.NumInlined: 1421
inline.NumDeleted: 227
loop-unroll.NumCompletelyUnrolled: 83
loop-unroll.NumRuntimeUnrolled: 99
loop-unroll.NumUnrolled: 188
begin_hunk_0_@_m3dstbi__zbuild_huffman:bb.a
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
  %lcmp.mod162 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod162)
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
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !296

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
  %.fr160 = freeze <4 x i32> %i.at
  %i.au = icmp sgt <4 x i32> %.fr160, <i32 2048, i32 4096, i32 8192, i32 16384>
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
  br i1 %i.dd, label %bb.h, label %.loopexit, !llvm.loop !297

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
  %brmerge.not = and i1 %i.w, %i.a
  %xtraiter1667 = and i32 %4, 7                   ; 3 uses
  %i.cm = icmp ult i32 %4, 8
  %unroll_iter = and i32 %4, -8
  %lcmp.mod1668.not = icmp eq i32 %xtraiter1667, 0
  %lcmp.mod1669 = icmp ne i32 %xtraiter1667, 0
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
end_hunk_0
begin_hunk_1_@_m3dstbi__create_png_image_raw:bb.a
  %exitcond973.not.1 = icmp eq i64 %indvars.iv.next970.1, %wide.trip.count972
  br i1 %exitcond973.not.1, label %.loopexit723, label %.lr.ph830, !llvm.loop !311

.lr.ph828:                                        ; preds = %.lr.ph828.prol.loopexit, %.lr.ph828
  %indvars.iv964 = phi i64 [ %indvars.iv.next965.3, %.lr.ph828 ], [ %indvars.iv964.unr, %.lr.ph828.prol.loopexit ] ; 7 uses
  %i.og = getelementptr inbounds nuw i8, ptr %.1580, i64 %indvars.iv964
  %i.oh = load i8, ptr %i.og, align 1
  %i.oi = getelementptr inbounds nuw i8, ptr %i.eh, i64 %indvars.iv964
  %i.oj = load i8, ptr %i.oi, align 1
  %.narrow640 = add i8 %i.oj, %i.oh
  %i.ok = getelementptr inbounds nuw i8, ptr %.1538, i64 %indvars.iv964
  store i8 %.narrow640, ptr %i.ok, align 1
  %indvars.iv.next965 = add nuw nsw i64 %indvars.iv964, 1 ; 3 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %.1580, i64 %indvars.iv.next965
  %i.om = load i8, ptr %i.ol, align 1
  %i.on = getelementptr inbounds nuw i8, ptr %i.eh, i64 %indvars.iv.next965
  %i.oo = load i8, ptr %i.on, align 1
  %.narrow640.1 = add i8 %i.oo, %i.om
  %i.op = getelementptr inbounds nuw i8, ptr %.1538, i64 %indvars.iv.next965
  store i8 %.narrow640.1, ptr %i.op, align 1
  %indvars.iv.next965.1 = add nuw nsw i64 %indvars.iv964, 2 ; 3 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %.1580, i64 %indvars.iv.next965.1
  %i.or = load i8, ptr %i.oq, align 1
  %i.os = getelementptr inbounds nuw i8, ptr %i.eh, i64 %indvars.iv.next965.1
  %i.ot = load i8, ptr %i.os, align 1
  %.narrow640.2 = add i8 %i.ot, %i.or
  %i.ou = getelementptr inbounds nuw i8, ptr %.1538, i64 %indvars.iv.next965.1
  store i8 %.narrow640.2, ptr %i.ou, align 1
  %indvars.iv.next965.2 = add nuw nsw i64 %indvars.iv964, 3 ; 3 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %.1580, i64 %indvars.iv.next965.2
  %i.ow = load i8, ptr %i.ov, align 1
  %i.ox = getelementptr inbounds nuw i8, ptr %i.eh, i64 %indvars.iv.next965.2
  %i.oy = load i8, ptr %i.ox, align 1
  %.narrow640.3 = add i8 %i.oy, %i.ow
  %i.oz = getelementptr inbounds nuw i8, ptr %.1538, i64 %indvars.iv.next965.2
  store i8 %.narrow640.3, ptr %i.oz, align 1
  %indvars.iv.next965.3 = add nuw nsw i64 %indvars.iv964, 4 ; 2 uses
  %exitcond968.not.3 = icmp eq i64 %indvars.iv.next965.3, %wide.trip.count967
  br i1 %exitcond968.not.3, label %.loopexit723, label %.lr.ph828, !llvm.loop !312

.lr.ph826:                                        ; preds = %.lr.ph826.prol.loopexit, %.lr.ph826
  %indvars.iv959 = phi i64 [ %indvars.iv.next960.1, %.lr.ph826 ], [ %indvars.iv959.unr, %.lr.ph826.prol.loopexit ] ; 6 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %.1580, i64 %indvars.iv959
  %i.pb = load i8, ptr %i.pa, align 1
  %i.pc = getelementptr inbounds nuw i8, ptr %i.eh, i64 %indvars.iv959
  %i.pd = load i8, ptr %i.pc, align 1
  %i.pe = zext i8 %i.pd to i16
  %i.pf = sub nsw i64 %indvars.iv959, %i.ji
  %i.pg = getelementptr inbounds i8, ptr %.1538, i64 %i.pf
  %i.ph = load i8, ptr %i.pg, align 1
  %i.pi = zext i8 %i.ph to i16
  %i.pj = add nuw nsw i16 %i.pi, %i.pe
  %i.pk = lshr i16 %i.pj, 1
  %.tr637 = trunc nuw i16 %i.pk to i8
  %.narrow638 = add i8 %i.pb, %.tr637
  %i.pl = getelementptr inbounds nuw i8, ptr %.1538, i64 %indvars.iv959
  store i8 %.narrow638, ptr %i.pl, align 1
  %indvars.iv.next960 = add nuw nsw i64 %indvars.iv959, 1 ; 4 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %.1580, i64 %indvars.iv.next960
  %i.pn = load i8, ptr %i.pm, align 1
  %i.po = getelementptr inbounds nuw i8, ptr %i.eh, i64 %indvars.iv.next960
  %i.pp = load i8, ptr %i.po, align 1
  %i.pq = zext i8 %i.pp to i16
  %i.pr = sub nsw i64 %indvars.iv.next960, %i.ji
  %i.ps = getelementptr inbounds i8, ptr %.1538, i64 %i.pr
  %i.pt = load i8, ptr %i.ps, align 1
  %i.pu = zext i8 %i.pt to i16
  %i.pv = add nuw nsw i16 %i.pu, %i.pq
  %i.pw = lshr i16 %i.pv, 1
  %.tr637.1 = trunc nuw i16 %i.pw to i8
  %.narrow638.1 = add i8 %i.pn, %.tr637.1
  %i.px = getelementptr inbounds nuw i8, ptr %.1538, i64 %indvars.iv.next960
  store i8 %.narrow638.1, ptr %i.px, align 1
  %indvars.iv.next960.1 = add nuw nsw i64 %indvars.iv959, 2 ; 2 uses
  %exitcond963.not.1 = icmp eq i64 %indvars.iv.next960.1, %wide.trip.count962
  br i1 %exitcond963.not.1, label %.loopexit723, label %.lr.ph826, !llvm.loop !313

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
  br i1 %exitcond958.not, label %.loopexit723, label %.lr.ph824, !llvm.loop !314

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
  br i1 %exitcond953.not.1, label %.loopexit723, label %.lr.ph822, !llvm.loop !315

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
  br i1 %exitcond948.not.1, label %.loopexit723, label %.lr.ph820, !llvm.loop !316

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
  %conflict.rdx1577 = or i1 %i.sb, %found.conflict1574
  %min.iters.check1580 = icmp ult i32 %.1552, 32
  %i.sc = and i64 %wide.trip.count911, 28
  %n.vec1582 = and i64 %wide.trip.count911, 2147483616 ; 4 uses
  %cmp.n1591 = icmp eq i64 %n.vec1582, %wide.trip.count911
  %min.epilog.iters.check1596 = icmp eq i64 %i.sc, 0
  %n.vec1598 = and i64 %wide.trip.count911, 2147483644 ; 3 uses
  %cmp.n1605 = icmp eq i64 %n.vec1598, %wide.trip.count911
  %xtraiter = and i64 %wide.trip.count911, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.sd = add nsw i64 %wide.trip.count911, -1
  br label %.preheader721

.preheader745:                                    ; preds = %bb.ag
  br i1 %.not614754, label %.loopexit736, label %.preheader720.lr.ph

.preheader720.lr.ph:                              ; preds = %.preheader745
  %i.se = sext i32 %.0551833 to i64               ; 3 uses
  %wide.trip.count916 = zext i32 %.1552 to i64    ; 11 uses
  %scevgep1514 = getelementptr i8, ptr %.1538, i64 %i.ce
  %scevgep1515 = getelementptr i8, ptr %scevgep1514, i64 %wide.trip.count916 ; 2 uses
  %i.sf = mul nsw i64 %i.cd, %i.se
  %i.sg = getelementptr i8, ptr %.1580, i64 %i.sf
  %scevgep1516 = getelementptr i8, ptr %i.sg, i64 %wide.trip.count916
  %scevgep1517 = getelementptr i8, ptr %.1538, i64 %i.cf
  %scevgep1518 = getelementptr i8, ptr %.1538, i64 %i.ch
  %scevgep1519 = getelementptr i8, ptr %scevgep1518, i64 %wide.trip.count916
  %min.iters.check1531 = icmp ult i32 %.1552, 4
  %bound01520 = icmp ult ptr %.1538, %scevgep1516
  %bound11521 = icmp ult ptr %.1580, %scevgep1515
  %found.conflict1522 = and i1 %bound01520, %bound11521
  %i.sh = or i32 %.0551833, %i.h
  %i.si = icmp slt i32 %i.sh, 0
  %i.sj = or i1 %found.conflict1522, %i.si
  %bound01525 = icmp ult ptr %.1538, %scevgep1519
  %bound11526 = icmp ult ptr %scevgep1517, %scevgep1515
  %found.conflict1527 = and i1 %bound01525, %bound11526
  %conflict.rdx1530 = or i1 %i.sj, %found.conflict1527
  %min.iters.check1533 = icmp ult i32 %.1552, 32
  %i.sk = and i64 %wide.trip.count916, 28
  %n.vec1535.a = and i64 %wide.trip.count916, 2147483616 ; 4 uses
  %cmp.n1544 = icmp eq i64 %n.vec1535.a, %wide.trip.count916
  %min.epilog.iters.check1549 = icmp eq i64 %i.sk, 0
  %n.vec1551 = and i64 %wide.trip.count916, 2147483644 ; 3 uses
  %cmp.n1558 = icmp eq i64 %n.vec1551, %wide.trip.count916
  %xtraiter1655 = and i64 %wide.trip.count916, 1
  %lcmp.mod1656.not = icmp eq i64 %xtraiter1655, 0
  %i.sl = add nsw i64 %wide.trip.count916, -1
  br label %.preheader720

.preheader743:                                    ; preds = %bb.ag
  br i1 %.not614754, label %.loopexit736, label %.preheader719.lr.ph

.preheader719.lr.ph:                              ; preds = %.preheader743
  %i.sm = sext i32 %.0551833 to i64               ; 3 uses
  %wide.trip.count921 = zext i32 %.1552 to i64    ; 10 uses
  %scevgep1447.a = getelementptr i8, ptr %.1538, i64 %i.bt
  %scevgep1448.a = getelementptr i8, ptr %scevgep1447.a, i64 %wide.trip.count921 ; 4 uses
  %i.sn = mul nsw i64 %i.bs, %i.sm
  %i.so = getelementptr i8, ptr %.1580, i64 %i.sn
  %scevgep1449.a = getelementptr i8, ptr %i.so, i64 %wide.trip.count921
  %scevgep1450.a = getelementptr i8, ptr %.1538, i64 %i.bo
  %scevgep1451 = getelementptr i8, ptr %.1538, i64 %i.bv
  %scevgep1452 = getelementptr i8, ptr %scevgep1451, i64 %wide.trip.count921
  %scevgep1453 = getelementptr i8, ptr %i.cn, i64 %i.bx
  %i.sp = add nsw i64 %.sink1041, %wide.trip.count921
  %i.sq = add nsw i64 %i.sp, %i.cr                ; 2 uses
  %scevgep1454 = getelementptr i8, ptr %scevgep1453, i64 %i.sq
  %scevgep1455 = getelementptr i8, ptr %i.cn, i64 %i.bz
  %i.sr = getelementptr i8, ptr %scevgep1455, i64 %.sink1041
  %scevgep1456 = getelementptr i8, ptr %i.sr, i64 %i.cr
  %scevgep1457 = getelementptr i8, ptr %i.cn, i64 %i.cb
  %scevgep1458 = getelementptr i8, ptr %scevgep1457, i64 %i.sq
  %min.iters.check1482 = icmp ult i32 %.1552, 4
  %bound01459 = icmp ult ptr %.1538, %scevgep1449.a
  %bound11460 = icmp ult ptr %.1580, %scevgep1448.a
  %found.conflict1461 = and i1 %bound01459, %bound11460
  %i.ss = or i32 %.0551833, %i.h
  %i.st = icmp slt i32 %i.ss, 0
  %i.su = or i1 %found.conflict1461, %i.st
  %bound01464.a = icmp ult ptr %.1538, %scevgep1452
  %bound11465.a = icmp ult ptr %scevgep1450.a, %scevgep1448.a
  %found.conflict1466.a = and i1 %bound01464.a, %bound11465.a
  %conflict.rdx1469 = or i1 %i.su, %found.conflict1466.a
  %bound01470 = icmp ult ptr %.1538, %scevgep1454
  %bound11471 = icmp ult ptr %i.eh, %scevgep1448.a
  %found.conflict1472 = and i1 %bound01470, %bound11471
  %conflict.rdx1475 = or i1 %conflict.rdx1469, %found.conflict1472
  %bound01476 = icmp ult ptr %.1538, %scevgep1458
  %bound11477 = icmp ult ptr %scevgep1456, %scevgep1448.a
  %found.conflict1478 = and i1 %bound01476, %bound11477
  %conflict.rdx1481 = or i1 %conflict.rdx1475, %found.conflict1478
  %min.iters.check1484 = icmp ult i32 %.1552, 16
  %i.sv = and i64 %wide.trip.count921, 12
  %n.vec1486 = and i64 %wide.trip.count921, 2147483632 ; 4 uses
  %cmp.n1495 = icmp eq i64 %n.vec1486, %wide.trip.count921
  %min.epilog.iters.check1500 = icmp eq i64 %i.sv, 0
  %n.vec1502 = and i64 %wide.trip.count921, 2147483644 ; 3 uses
  %cmp.n1511 = icmp eq i64 %n.vec1502, %wide.trip.count921
  br label %.preheader719

.preheader741:                                    ; preds = %bb.ag
  br i1 %.not614754, label %.loopexit736, label %.preheader718.lr.ph

.preheader718.lr.ph:                              ; preds = %.preheader741
  %i.sw = sext i32 %.0551833 to i64               ; 3 uses
  %wide.trip.count926 = zext i32 %.1552 to i64    ; 12 uses
  %scevgep1389.a = getelementptr i8, ptr %.1538, i64 %i.bl
  %scevgep1390.a = getelementptr i8, ptr %scevgep1389.a, i64 %wide.trip.count926 ; 3 uses
  %i.sx = mul nsw i64 %i.bk, %i.sw
  %i.sy = getelementptr i8, ptr %.1580, i64 %i.sx
  %scevgep1391.a = getelementptr i8, ptr %i.sy, i64 %wide.trip.count926
  %scevgep1392.a = getelementptr i8, ptr %i.cn, i64 %i.bn
  %i.sz = getelementptr i8, ptr %scevgep1392.a, i64 %.sink1041
  %i.ta = getelementptr i8, ptr %i.sz, i64 %wide.trip.count926
  %scevgep1393 = getelementptr i8, ptr %i.ta, i64 %i.cr
  %scevgep1394 = getelementptr i8, ptr %.1538, i64 %i.bo
  %scevgep1395 = getelementptr i8, ptr %.1538, i64 %i.bq
  %scevgep1396 = getelementptr i8, ptr %scevgep1395, i64 %wide.trip.count926
  %min.iters.check1414 = icmp ult i32 %.1552, 8
  %bound01397 = icmp ult ptr %.1538, %scevgep1391.a
  %bound11398 = icmp ult ptr %.1580, %scevgep1390.a
  %found.conflict1399 = and i1 %bound01397, %bound11398
  %i.tb = or i32 %.0551833, %i.h
  %i.tc = icmp slt i32 %i.tb, 0
  %i.td = or i1 %found.conflict1399, %i.tc
  %bound01402.a = icmp ult ptr %.1538, %scevgep1393
  %bound11403.a = icmp ult ptr %i.eh, %scevgep1390.a
  %found.conflict1404.a = and i1 %bound01402.a, %bound11403.a
  %conflict.rdx1407 = or i1 %i.td, %found.conflict1404.a
  %bound01408 = icmp ult ptr %.1538, %scevgep1396
  %bound11409 = icmp ult ptr %scevgep1394, %scevgep1390.a
  %found.conflict1410 = and i1 %bound01408, %bound11409
  %conflict.rdx1413 = or i1 %conflict.rdx1407, %found.conflict1410
  %min.iters.check1416 = icmp ult i32 %.1552, 32
  %i.te = and i64 %wide.trip.count926, 24
  %n.vec1418 = and i64 %wide.trip.count926, 2147483616 ; 4 uses
  %cmp.n1429 = icmp eq i64 %n.vec1418, %wide.trip.count926
  %min.epilog.iters.check1434 = icmp eq i64 %i.te, 0
  %n.vec1436 = and i64 %wide.trip.count926, 2147483640 ; 3 uses
  %cmp.n1444 = icmp eq i64 %n.vec1436, %wide.trip.count926
  %xtraiter1657 = and i64 %wide.trip.count926, 1
  %lcmp.mod1658.not = icmp eq i64 %xtraiter1657, 0
  %i.tf = add nsw i64 %wide.trip.count926, -1
  br label %.preheader718

.preheader739:                                    ; preds = %bb.ag
  br i1 %.not614754, label %.loopexit736, label %.preheader717.lr.ph

.preheader717.lr.ph:                              ; preds = %.preheader739
  %i.tg = sext i32 %.0551833 to i64               ; 3 uses
  %wide.trip.count931 = zext i32 %.1552 to i64    ; 11 uses
  %scevgep1343.a = getelementptr i8, ptr %.1538, i64 %i.bh
  %scevgep1344.a = getelementptr i8, ptr %scevgep1343.a, i64 %wide.trip.count931 ; 2 uses
  %i.th = mul nsw i64 %i.bg, %i.tg
  %i.ti = getelementptr i8, ptr %.1580, i64 %i.th
  %scevgep1345.a = getelementptr i8, ptr %i.ti, i64 %wide.trip.count931
  %scevgep1346 = getelementptr i8, ptr %i.cn, i64 %i.bj
  %i.tj = getelementptr i8, ptr %scevgep1346, i64 %.sink1041
  %i.tk = getelementptr i8, ptr %i.tj, i64 %wide.trip.count931
  %scevgep1347 = getelementptr i8, ptr %i.tk, i64 %i.cr
  %min.iters.check1359 = icmp ult i32 %.1552, 4
  %bound01348 = icmp ult ptr %.1538, %scevgep1345.a
  %bound11349 = icmp ult ptr %.1580, %scevgep1344.a
  %found.conflict1350 = and i1 %bound01348, %bound11349
  %i.tl = or i32 %.0551833, %i.h
  %i.tm = icmp slt i32 %i.tl, 0
  %i.tn = or i1 %found.conflict1350, %i.tm
  %bound01353 = icmp ult ptr %.1538, %scevgep1347
  %bound11354 = icmp ult ptr %i.eh, %scevgep1344.a
  %found.conflict1355 = and i1 %bound01353, %bound11354
  %conflict.rdx1358 = or i1 %i.tn, %found.conflict1355
  %min.iters.check1361 = icmp ult i32 %.1552, 32
  %i.to = and i64 %wide.trip.count931, 28
  %n.vec1363 = and i64 %wide.trip.count931, 2147483616 ; 4 uses
  %cmp.n1372 = icmp eq i64 %n.vec1363, %wide.trip.count931
  %min.epilog.iters.check1377 = icmp eq i64 %i.to, 0
  %n.vec1379 = and i64 %wide.trip.count931, 2147483644 ; 3 uses
  %cmp.n1386 = icmp eq i64 %n.vec1379, %wide.trip.count931
  %xtraiter1659 = and i64 %wide.trip.count931, 3  ; 2 uses
  %lcmp.mod1660.not = icmp eq i64 %xtraiter1659, 0
  br label %.preheader717

.preheader737:                                    ; preds = %bb.ag
  br i1 %.not614754, label %.loopexit736, label %.preheader716.lr.ph

.preheader716.lr.ph:                              ; preds = %.preheader737
  %i.tp = sext i32 %.0551833 to i64               ; 3 uses
  %wide.trip.count936 = zext i32 %.1552 to i64    ; 11 uses
  %scevgep1296 = getelementptr i8, ptr %.1538, i64 %i.bb
  %scevgep1297 = getelementptr i8, ptr %scevgep1296, i64 %wide.trip.count936 ; 2 uses
  %i.tq = mul nsw i64 %i.ba, %i.tp
  %i.tr = getelementptr i8, ptr %.1580, i64 %i.tq
  %scevgep1298 = getelementptr i8, ptr %i.tr, i64 %wide.trip.count936
  %scevgep1299 = getelementptr i8, ptr %.1538, i64 %i.bc
  %scevgep1300 = getelementptr i8, ptr %.1538, i64 %i.be
  %scevgep1301 = getelementptr i8, ptr %scevgep1300, i64 %wide.trip.count936
  %min.iters.check1313.a = icmp ult i32 %.1552, 4
  %bound01302 = icmp ult ptr %.1538, %scevgep1298
  %bound11303 = icmp ult ptr %.1580, %scevgep1297
  %found.conflict1304 = and i1 %bound01302, %bound11303
  %i.ts = or i32 %.0551833, %i.h
  %i.tt = icmp slt i32 %i.ts, 0
  %i.tu = or i1 %found.conflict1304, %i.tt
  %bound01307 = icmp ult ptr %.1538, %scevgep1301
  %bound11308 = icmp ult ptr %scevgep1299, %scevgep1297
  %found.conflict1309 = and i1 %bound01307, %bound11308
  %conflict.rdx1312 = or i1 %i.tu, %found.conflict1309
  %min.iters.check1315 = icmp ult i32 %.1552, 32
  %i.tv = and i64 %wide.trip.count936, 28
  %n.vec1317 = and i64 %wide.trip.count936, 2147483616 ; 4 uses
  %cmp.n1326 = icmp eq i64 %n.vec1317, %wide.trip.count936
  %min.epilog.iters.check1331 = icmp eq i64 %i.tv, 0
  %n.vec1333 = and i64 %wide.trip.count936, 2147483644 ; 3 uses
  %cmp.n1340 = icmp eq i64 %n.vec1333, %wide.trip.count936
  %xtraiter1661 = and i64 %wide.trip.count936, 1
  %lcmp.mod1662.not = icmp eq i64 %xtraiter1661, 0
  %i.tw = add nsw i64 %wide.trip.count936, -1
  br label %.preheader716

.preheader735:                                    ; preds = %bb.ag
  br i1 %.not614754, label %.loopexit736, label %.preheader715.lr.ph

.preheader715.lr.ph:                              ; preds = %.preheader735
  %i.tx = sext i32 %.0551833 to i64               ; 3 uses
  %wide.trip.count941 = zext i32 %.1552 to i64    ; 10 uses
  %scevgep = getelementptr i8, ptr %.1538, i64 %i.az
  %scevgep1266 = getelementptr i8, ptr %scevgep, i64 %wide.trip.count941
  %i.ty = mul nsw i64 %i.ay, %i.tx
  %i.tz = getelementptr i8, ptr %.1580, i64 %i.ty
  %scevgep1267 = getelementptr i8, ptr %i.tz, i64 %wide.trip.count941
  %min.iters.check1269 = icmp ult i32 %.1552, 4
  %bound0 = icmp ult ptr %.1538, %scevgep1267
  %bound1 = icmp ult ptr %.1580, %scevgep1266
  %found.conflict = and i1 %bound0, %bound1
  %i.ua = or i32 %.0551833, %i.h
  %i.ub = icmp slt i32 %i.ua, 0
  %i.uc = or i1 %found.conflict, %i.ub
  %min.iters.check1271 = icmp ult i32 %.1552, 32
  %i.ud = and i64 %wide.trip.count941, 28
  %n.vec1273 = and i64 %wide.trip.count941, 2147483616 ; 4 uses
  %cmp.n1280 = icmp eq i64 %n.vec1273, %wide.trip.count941
  %min.epilog.iters.check1285 = icmp eq i64 %i.ud, 0
  %n.vec1287 = and i64 %wide.trip.count941, 2147483644 ; 3 uses
  %cmp.n1293 = icmp eq i64 %n.vec1287, %wide.trip.count941
  %xtraiter1664 = and i64 %wide.trip.count941, 3  ; 2 uses
  %lcmp.mod1665.not = icmp eq i64 %xtraiter1664, 0
  br label %.preheader715

.preheader715:                                    ; preds = %.preheader715.lr.ph, %._crit_edge808
  %.0567813 = phi i32 [ %.6573753, %.preheader715.lr.ph ], [ %.0567, %._crit_edge808 ]
  %.2539812 = phi ptr [ %.1538, %.preheader715.lr.ph ], [ %i.vf, %._crit_edge808 ] ; 9 uses
  %.2581811 = phi ptr [ %.1580, %.preheader715.lr.ph ], [ %i.ve, %._crit_edge808 ] ; 8 uses
  br i1 %i.db, label %iter.check1282, label %._crit_edge808

iter.check1282:                                   ; preds = %.preheader715
  %brmerge = select i1 %min.iters.check1269, i1 true, i1 %i.uc
  br i1 %brmerge, label %.lr.ph807.preheader, label %vector.main.loop.iter.check1270

vector.main.loop.iter.check1270:                  ; preds = %iter.check1282
  br i1 %min.iters.check1271, label %vec.epilog.ph1286, label %vector.body1274

vector.body1274:                                  ; preds = %vector.main.loop.iter.check1270, %vector.body1274
  %index1275 = phi i64 [ %index.next1278, %vector.body1274 ], [ 0, %vector.main.loop.iter.check1270 ] ; 3 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %.2581811, i64 %index1275 ; 2 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ue, i64 16
  %wide.load1276 = load <16 x i8>, ptr %i.ue, align 1, !alias.scope !375
  %wide.load1277 = load <16 x i8>, ptr %i.uf, align 1, !alias.scope !375
  %i.ug = getelementptr inbounds nuw i8, ptr %.2539812, i64 %index1275 ; 2 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ug, i64 16
  store <16 x i8> %wide.load1276, ptr %i.ug, align 1, !alias.scope !376, !noalias !375
  store <16 x i8> %wide.load1277, ptr %i.uh, align 1, !alias.scope !376, !noalias !375
  %index.next1278 = add nuw i64 %index1275, 32    ; 2 uses
  %i.ui = icmp eq i64 %index.next1278, %n.vec1273
  br i1 %i.ui, label %middle.block1279, label %vector.body1274, !llvm.loop !320

middle.block1279:                                 ; preds = %vector.body1274
  br i1 %cmp.n1280, label %._crit_edge808, label %vec.epilog.iter.check1284

vec.epilog.iter.check1284:                        ; preds = %middle.block1279
  br i1 %min.epilog.iters.check1285, label %.lr.ph807.preheader, label %vec.epilog.ph1286, !prof !16

vec.epilog.ph1286:                                ; preds = %vector.main.loop.iter.check1270, %vec.epilog.iter.check1284
  %vec.epilog.resume.val1281 = phi i64 [ %n.vec1273, %vec.epilog.iter.check1284 ], [ 0, %vector.main.loop.iter.check1270 ]
  br label %vec.epilog.vector.body1288

vec.epilog.vector.body1288:                       ; preds = %vec.epilog.vector.body1288, %vec.epilog.ph1286
  %index1289 = phi i64 [ %vec.epilog.resume.val1281, %vec.epilog.ph1286 ], [ %index.next1291, %vec.epilog.vector.body1288 ] ; 3 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %.2581811, i64 %index1289
  %wide.load1290 = load <4 x i8>, ptr %i.uj, align 1, !alias.scope !375
  %i.uk = getelementptr inbounds nuw i8, ptr %.2539812, i64 %index1289
  store <4 x i8> %wide.load1290, ptr %i.uk, align 1, !alias.scope !376, !noalias !375
  %index.next1291 = add nuw i64 %index1289, 4     ; 2 uses
  %i.ul = icmp eq i64 %index.next1291, %n.vec1287
  br i1 %i.ul, label %vec.epilog.middle.block1292, label %vec.epilog.vector.body1288, !llvm.loop !321

vec.epilog.middle.block1292:                      ; preds = %vec.epilog.vector.body1288
  br i1 %cmp.n1293, label %._crit_edge808, label %.lr.ph807.preheader

.lr.ph807.preheader:                              ; preds = %iter.check1282, %vec.epilog.iter.check1284, %vec.epilog.middle.block1292
  %indvars.iv938.ph = phi i64 [ 0, %iter.check1282 ], [ %n.vec1287, %vec.epilog.middle.block1292 ], [ %n.vec1273, %vec.epilog.iter.check1284 ] ; 3 uses
  br i1 %lcmp.mod1665.not, label %.lr.ph807.prol.loopexit, label %.lr.ph807.prol

.lr.ph807.prol:                                   ; preds = %.lr.ph807.preheader, %.lr.ph807.prol
  %indvars.iv938.prol = phi i64 [ %indvars.iv.next939.prol, %.lr.ph807.prol ], [ %indvars.iv938.ph, %.lr.ph807.preheader ] ; 3 uses
  %prol.iter1666 = phi i64 [ %prol.iter1666.next, %.lr.ph807.prol ], [ 0, %.lr.ph807.preheader ]
  %i.um = getelementptr inbounds nuw i8, ptr %.2581811, i64 %indvars.iv938.prol
  %i.un = load i8, ptr %i.um, align 1
  %i.uo = getelementptr inbounds nuw i8, ptr %.2539812, i64 %indvars.iv938.prol
  store i8 %i.un, ptr %i.uo, align 1
  %indvars.iv.next939.prol = add nuw nsw i64 %indvars.iv938.prol, 1 ; 2 uses
  %prol.iter1666.next = add i64 %prol.iter1666, 1 ; 2 uses
  %prol.iter1666.cmp.not = icmp eq i64 %prol.iter1666.next, %xtraiter1664
  br i1 %prol.iter1666.cmp.not, label %.lr.ph807.prol.loopexit, label %.lr.ph807.prol, !llvm.loop !322

.lr.ph807.prol.loopexit:                          ; preds = %.lr.ph807.prol, %.lr.ph807.preheader
  %indvars.iv938.unr = phi i64 [ %indvars.iv938.ph, %.lr.ph807.preheader ], [ %indvars.iv.next939.prol, %.lr.ph807.prol ]
  %i.up = sub nsw i64 %indvars.iv938.ph, %wide.trip.count941
  %i.uq = icmp ugt i64 %i.up, -4
  br i1 %i.uq, label %._crit_edge808, label %.lr.ph807

.lr.ph807:                                        ; preds = %.lr.ph807.prol.loopexit, %.lr.ph807
  %indvars.iv938 = phi i64 [ %indvars.iv.next939.3, %.lr.ph807 ], [ %indvars.iv938.unr, %.lr.ph807.prol.loopexit ] ; 6 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %.2581811, i64 %indvars.iv938
  %i.us = load i8, ptr %i.ur, align 1
  %i.ut = getelementptr inbounds nuw i8, ptr %.2539812, i64 %indvars.iv938
  store i8 %i.us, ptr %i.ut, align 1
  %indvars.iv.next939 = add nuw nsw i64 %indvars.iv938, 1 ; 2 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %.2581811, i64 %indvars.iv.next939
  %i.uv = load i8, ptr %i.uu, align 1
  %i.uw = getelementptr inbounds nuw i8, ptr %.2539812, i64 %indvars.iv.next939
  store i8 %i.uv, ptr %i.uw, align 1
  %indvars.iv.next939.1 = add nuw nsw i64 %indvars.iv938, 2 ; 2 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %.2581811, i64 %indvars.iv.next939.1
  %i.uy = load i8, ptr %i.ux, align 1
  %i.uz = getelementptr inbounds nuw i8, ptr %.2539812, i64 %indvars.iv.next939.1
  store i8 %i.uy, ptr %i.uz, align 1
  %indvars.iv.next939.2 = add nuw nsw i64 %indvars.iv938, 3 ; 2 uses
  %i.va = getelementptr inbounds nuw i8, ptr %.2581811, i64 %indvars.iv.next939.2
  %i.vb = load i8, ptr %i.va, align 1
  %i.vc = getelementptr inbounds nuw i8, ptr %.2539812, i64 %indvars.iv.next939.2
  store i8 %i.vb, ptr %i.vc, align 1
  %indvars.iv.next939.3 = add nuw nsw i64 %indvars.iv938, 4 ; 2 uses
  %exitcond942.not.3 = icmp eq i64 %indvars.iv.next939.3, %wide.trip.count941
  br i1 %exitcond942.not.3, label %._crit_edge808, label %.lr.ph807, !llvm.loop !323

._crit_edge808:                                   ; preds = %.lr.ph807.prol.loopexit, %.lr.ph807, %middle.block1279, %vec.epilog.middle.block1292, %.preheader715
  %i.vd = getelementptr inbounds i8, ptr %.2539812, i64 %i.tx
  store i8 -1, ptr %i.vd, align 1
  %i.ve = getelementptr inbounds i8, ptr %.2581811, i64 %i.tx ; 2 uses
  %i.vf = getelementptr inbounds i8, ptr %.2539812, i64 %i.at
  %.0567 = add i32 %.0567813, -1                  ; 2 uses
  %.not630 = icmp eq i32 %.0567, 0
  br i1 %.not630, label %.loopexit736, label %.preheader715

.preheader716:                                    ; preds = %.preheader716.lr.ph, %._crit_edge799
  %.1568804 = phi i32 [ %.6573753, %.preheader716.lr.ph ], [ %.1568, %._crit_edge799 ]
  %.3540803 = phi ptr [ %.1538, %.preheader716.lr.ph ], [ %i.wr, %._crit_edge799 ] ; 12 uses
  %.3582802 = phi ptr [ %.1580, %.preheader716.lr.ph ], [ %i.wq, %._crit_edge799 ] ; 6 uses
  br i1 %i.db, label %iter.check1328, label %._crit_edge799

iter.check1328:                                   ; preds = %.preheader716
  %brmerge1707 = select i1 %min.iters.check1313.a, i1 true, i1 %conflict.rdx1312
  br i1 %brmerge1707, label %.lr.ph798.preheader, label %vector.main.loop.iter.check1314

vector.main.loop.iter.check1314:                  ; preds = %iter.check1328
  br i1 %min.iters.check1315, label %vec.epilog.ph1332, label %vector.body1318

vector.body1318:                                  ; preds = %vector.main.loop.iter.check1314, %vector.body1318
  %index1319 = phi i64 [ %index.next1324, %vector.body1318 ], [ 0, %vector.main.loop.iter.check1314 ] ; 4 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %.3582802, i64 %index1319 ; 2 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vg, i64 16
  %wide.load1320.a = load <16 x i8>, ptr %i.vg, align 1, !alias.scope !377
  %wide.load1321.a = load <16 x i8>, ptr %i.vh, align 1, !alias.scope !377
  %i.vi = sub nsw i64 %index1319, %i.at
  %i.vj = getelementptr inbounds i8, ptr %.3540803, i64 %i.vi ; 2 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vj, i64 16
  %wide.load1322 = load <16 x i8>, ptr %i.vj, align 1, !alias.scope !378
  %wide.load1323 = load <16 x i8>, ptr %i.vk, align 1, !alias.scope !378
  %i.vl = add <16 x i8> %wide.load1322, %wide.load1320.a
  %i.vm = add <16 x i8> %wide.load1323, %wide.load1321.a
  %i.vn = getelementptr inbounds nuw i8, ptr %.3540803, i64 %index1319 ; 2 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vn, i64 16
  store <16 x i8> %i.vl, ptr %i.vn, align 1, !alias.scope !379, !noalias !380
  store <16 x i8> %i.vm, ptr %i.vo, align 1, !alias.scope !379, !noalias !380
  %index.next1324 = add nuw i64 %index1319, 32    ; 2 uses
  %i.vp = icmp eq i64 %index.next1324, %n.vec1317
  br i1 %i.vp, label %middle.block1325, label %vector.body1318, !llvm.loop !328

middle.block1325:                                 ; preds = %vector.body1318
  br i1 %cmp.n1326, label %._crit_edge799, label %vec.epilog.iter.check1330

vec.epilog.iter.check1330:                        ; preds = %middle.block1325
  br i1 %min.epilog.iters.check1331, label %.lr.ph798.preheader, label %vec.epilog.ph1332, !prof !16

vec.epilog.ph1332:                                ; preds = %vector.main.loop.iter.check1314, %vec.epilog.iter.check1330
  %vec.epilog.resume.val1327 = phi i64 [ %n.vec1317, %vec.epilog.iter.check1330 ], [ 0, %vector.main.loop.iter.check1314 ]
  br label %vec.epilog.vector.body1334

vec.epilog.vector.body1334:                       ; preds = %vec.epilog.vector.body1334, %vec.epilog.ph1332
  %index1335 = phi i64 [ %vec.epilog.resume.val1327, %vec.epilog.ph1332 ], [ %index.next1338, %vec.epilog.vector.body1334 ] ; 4 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %.3582802, i64 %index1335
  %wide.load1336 = load <4 x i8>, ptr %i.vq, align 1, !alias.scope !377
  %i.vr = sub nsw i64 %index1335, %i.at
  %i.vs = getelementptr inbounds i8, ptr %.3540803, i64 %i.vr
  %wide.load1337 = load <4 x i8>, ptr %i.vs, align 1, !alias.scope !378
  %i.vt = add <4 x i8> %wide.load1337, %wide.load1336
  %i.vu = getelementptr inbounds nuw i8, ptr %.3540803, i64 %index1335
end_hunk_1
