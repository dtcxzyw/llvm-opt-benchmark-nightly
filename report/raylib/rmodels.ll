Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rmodels?download=true
inline.NumInlined: 1421
inline.NumDeleted: 227
loop-unroll.NumCompletelyUnrolled: 83
loop-unroll.NumRuntimeUnrolled: 98
loop-unroll.NumUnrolled: 187
begin_hunk_0_@_m3dstbi__zbuild_huffman:bb.a
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.f = load i8, ptr %i.e, align 1
  %i.g = zext i8 %i.f to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.g ; 2 uses
  %i.i = load i32, ptr %i.h, align 4
  %i.j = add nsw i32 %i.i, 1
  store i32 %i.j, ptr %i.h, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.m = load i8, ptr %i.l, align 1
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.n ; 2 uses
  %i.p = load i32, ptr %i.o, align 4
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr %i.o, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %i.t = load i8, ptr %i.s, align 1
  %i.u = zext i8 %i.t to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.u ; 2 uses
  %i.w = load i32, ptr %i.v, align 4
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr %i.v, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 3
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
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !280

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
  %i.e = shl i32 %i.c, %i.d                       ; 3 uses
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
end_hunk_0
begin_hunk_1_@_m3dstbi__create_png_image_raw:bb.a

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
  br i1 %i.ey, label %middle.block1248, label %vector.body1241, !llvm.loop !281

middle.block1248:                                 ; preds = %vector.body1241
  %cmp.n1249 = icmp eq i64 %n.vec1240, %wide.trip.count947
  br i1 %cmp.n1249, label %.loopexit723, label %vec.epilog.iter.check1253

vec.epilog.iter.check1253:                        ; preds = %middle.block1248
  %min.epilog.iters.check1254 = icmp eq i64 %i.eo, 0
  br i1 %min.epilog.iters.check1254, label %.lr.ph820.preheader, label %vec.epilog.ph1255, !prof !15

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
  br i1 %i.fe, label %vec.epilog.middle.block1262, label %vec.epilog.vector.body1257, !llvm.loop !282

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
  br i1 %i.gd, label %middle.block1215, label %vector.body1208, !llvm.loop !283

middle.block1215:                                 ; preds = %vector.body1208
  %cmp.n1216 = icmp eq i64 %n.vec1207, %wide.trip.count952
  br i1 %cmp.n1216, label %.loopexit723, label %vec.epilog.iter.check1220

vec.epilog.iter.check1220:                        ; preds = %middle.block1215
  %min.epilog.iters.check1221 = icmp eq i64 %i.fr, 0
  br i1 %min.epilog.iters.check1221, label %.lr.ph822.preheader, label %vec.epilog.ph1222, !prof !15

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
  br i1 %i.gk, label %vec.epilog.middle.block1229, label %vec.epilog.vector.body1224, !llvm.loop !284

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
  %i.hb = add i64 %i.ha, %i.cr
  %i.hc = sub i64 %i.hb, %i.gy
  %diff.check1164 = icmp ugt i64 %i.hc, -16
  %conflict.rdx1165 = or i1 %conflict.rdx1163, %diff.check1164
  %i.hd = add i64 %i.aw, %.15381076
  %i.he = add i64 %i.hd, %i.gv
  %i.hf = add i64 %.sink1041, %i.co
  %i.hg = add i64 %i.hf, %i.cr
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
  br i1 %i.ih, label %middle.block1180, label %vector.body1173, !llvm.loop !285

middle.block1180:                                 ; preds = %vector.body1173
  %cmp.n1181 = icmp eq i64 %n.vec1172, %wide.trip.count957
  br i1 %cmp.n1181, label %.loopexit723, label %vec.epilog.iter.check1185

vec.epilog.iter.check1185:                        ; preds = %middle.block1180
  %min.epilog.iters.check1186 = icmp eq i64 %i.hi, 0
  br i1 %min.epilog.iters.check1186, label %.lr.ph824.preheader, label %vec.epilog.ph1187, !prof !16

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
  br i1 %i.jg, label %vec.epilog.middle.block1196, label %vec.epilog.vector.body1189, !llvm.loop !286

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
  %i.jn = add i64 %i.jm, %i.cr
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
  br i1 %i.km, label %middle.block1142, label %vector.body1133, !llvm.loop !287

middle.block1142:                                 ; preds = %vector.body1133
  %cmp.n1143 = icmp eq i64 %n.vec1132, %wide.trip.count962
  br i1 %cmp.n1143, label %.loopexit723, label %vec.epilog.iter.check1147

vec.epilog.iter.check1147:                        ; preds = %middle.block1142
  %min.epilog.iters.check1148 = icmp eq i64 %i.jq, 0
  br i1 %min.epilog.iters.check1148, label %.lr.ph826.preheader, label %vec.epilog.ph1149, !prof !356

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
  %i.ls = add i64 %i.lr, %i.cr
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
  br i1 %min.epilog.iters.check1111, label %.lr.ph828.preheader, label %vec.epilog.ph1112, !prof !15

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
  br i1 %min.epilog.iters.check, label %.lr.ph830.preheader, label %vec.epilog.ph, !prof !15

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
  %indvars.iv969 = phi i64 [ %indvars.iv.next970.1, %.lr.ph830 ], [ %indvars.iv969.unr, %.lr.ph830.prol.loopexit ] ; 5 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %.1580, i64 %indvars.iv969
  %i.nv = load i8, ptr %i.nu, align 1
  %i.nw = sub nsw i64 %indvars.iv969, %i.mr
  %i.nx = getelementptr inbounds i8, ptr %.1538, i64 %i.nw
  %i.ny = load i8, ptr %i.nx, align 1
  %.narrow642 = add i8 %i.ny, %i.nv
  %i.nz = getelementptr inbounds nuw i8, ptr %.1538, i64 %indvars.iv969
  store i8 %.narrow642, ptr %i.nz, align 1
  %indvars.iv.next970 = add nuw nsw i64 %indvars.iv969, 1 ; 3 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %.1580, i64 %indvars.iv.next970
  %i.ob = load i8, ptr %i.oa, align 1
  %i.oc = sub nsw i64 %indvars.iv.next970, %i.mr
  %i.od = getelementptr inbounds i8, ptr %.1538, i64 %i.oc
  %i.oe = load i8, ptr %i.od, align 1
  %.narrow642.1 = add i8 %i.oe, %i.ob
  %i.of = getelementptr inbounds nuw i8, ptr %.1538, i64 %indvars.iv.next970
  store i8 %.narrow642.1, ptr %i.of, align 1
  %indvars.iv.next970.1 = add nuw nsw i64 %indvars.iv969, 2 ; 2 uses
  %exitcond973.not.1 = icmp eq i64 %indvars.iv.next970.1, %wide.trip.count972
  br i1 %exitcond973.not.1, label %.loopexit723, label %.lr.ph830, !llvm.loop !294

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
  br i1 %exitcond968.not.3, label %.loopexit723, label %.lr.ph828, !llvm.loop !295

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
  %i.ss = add nsw i64 %i.sr, %i.cr                ; 2 uses
  %scevgep1454 = getelementptr i8, ptr %scevgep1453, i64 %i.ss
  %scevgep1455 = getelementptr i8, ptr %i.cn, i64 %i.bz
  %i.st = getelementptr i8, ptr %scevgep1455, i64 %.sink1041
  %scevgep1456 = getelementptr i8, ptr %i.st, i64 %i.cr
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
  %scevgep1393 = getelementptr i8, ptr %i.td, i64 %i.cr
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
  %scevgep1347 = getelementptr i8, ptr %i.to, i64 %i.cr
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
  %wide.load1276 = load <16 x i8>, ptr %i.uk, align 1, !alias.scope !357
  %wide.load1277 = load <16 x i8>, ptr %i.ul, align 1, !alias.scope !357
  %i.um = getelementptr inbounds nuw i8, ptr %.2539812, i64 %index1275 ; 2 uses
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 16
  store <16 x i8> %wide.load1276, ptr %i.um, align 1, !alias.scope !358, !noalias !357
  store <16 x i8> %wide.load1277, ptr %i.un, align 1, !alias.scope !358, !noalias !357
  %index.next1278 = add nuw i64 %index1275, 32    ; 2 uses
  %i.uo = icmp eq i64 %index.next1278, %n.vec1273
  br i1 %i.uo, label %middle.block1279, label %vector.body1274, !llvm.loop !303

middle.block1279:                                 ; preds = %vector.body1274
  br i1 %cmp.n1280, label %._crit_edge808, label %vec.epilog.iter.check1284

vec.epilog.iter.check1284:                        ; preds = %middle.block1279
  br i1 %min.epilog.iters.check1285, label %.lr.ph807.preheader, label %vec.epilog.ph1286, !prof !15

vec.epilog.ph1286:                                ; preds = %vector.main.loop.iter.check1270, %vec.epilog.iter.check1284
  %vec.epilog.resume.val1281 = phi i64 [ %n.vec1273, %vec.epilog.iter.check1284 ], [ 0, %vector.main.loop.iter.check1270 ]
  br label %vec.epilog.vector.body1288

vec.epilog.vector.body1288:                       ; preds = %vec.epilog.vector.body1288, %vec.epilog.ph1286
  %index1289 = phi i64 [ %vec.epilog.resume.val1281, %vec.epilog.ph1286 ], [ %index.next1291, %vec.epilog.vector.body1288 ] ; 3 uses
  %i.up = getelementptr inbounds nuw i8, ptr %.2581811, i64 %index1289
  %wide.load1290 = load <4 x i8>, ptr %i.up, align 1, !alias.scope !357
  %i.uq = getelementptr inbounds nuw i8, ptr %.2539812, i64 %index1289
  store <4 x i8> %wide.load1290, ptr %i.uq, align 1, !alias.scope !358, !noalias !357
  %index.next1291 = add nuw i64 %index1289, 4     ; 2 uses
  %i.ur = icmp eq i64 %index.next1291, %n.vec1287
  br i1 %i.ur, label %vec.epilog.middle.block1292, label %vec.epilog.vector.body1288, !llvm.loop !304

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
  br i1 %prol.iter1646.cmp.not, label %.lr.ph807.prol.loopexit, label %.lr.ph807.prol, !llvm.loop !305

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
  br i1 %exitcond942.not.3, label %._crit_edge808, label %.lr.ph807, !llvm.loop !306

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
  br i1 %i.db, label %iter.check1328, label %._crit_edge799

iter.check1328:                                   ; preds = %.preheader716
  %brmerge1697 = select i1 %min.iters.check1313, i1 true, i1 %conflict.rdx1312
  br i1 %brmerge1697, label %.lr.ph798.preheader, label %vector.main.loop.iter.check1314

vector.main.loop.iter.check1314:                  ; preds = %iter.check1328
  br i1 %min.iters.check1315, label %vec.epilog.ph1332, label %vector.body1318

vector.body1318:                                  ; preds = %vector.main.loop.iter.check1314, %vector.body1318
  %index1319 = phi i64 [ %index.next1324, %vector.body1318 ], [ 0, %vector.main.loop.iter.check1314 ] ; 4 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %.3582802, i64 %index1319 ; 2 uses
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vm, i64 16
  %wide.load1320 = load <16 x i8>, ptr %i.vm, align 1, !alias.scope !359
  %wide.load1321 = load <16 x i8>, ptr %i.vn, align 1, !alias.scope !359
  %i.vo = sub nsw i64 %index1319, %i.at
  %i.vp = getelementptr inbounds i8, ptr %.3540803, i64 %i.vo ; 2 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vp, i64 16
  %wide.load1322 = load <16 x i8>, ptr %i.vp, align 1, !alias.scope !360
  %wide.load1323 = load <16 x i8>, ptr %i.vq, align 1, !alias.scope !360
  %i.vr = add <16 x i8> %wide.load1322, %wide.load1320
  %i.vs = add <16 x i8> %wide.load1323, %wide.load1321
  %i.vt = getelementptr inbounds nuw i8, ptr %.3540803, i64 %index1319 ; 2 uses
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vt, i64 16
  store <16 x i8> %i.vr, ptr %i.vt, align 1, !alias.scope !361, !noalias !362
  store <16 x i8> %i.vs, ptr %i.vu, align 1, !alias.scope !361, !noalias !362
  %index.next1324 = add nuw i64 %index1319, 32    ; 2 uses
  %i.vv = icmp eq i64 %index.next1324, %n.vec1317
  br i1 %i.vv, label %middle.block1325, label %vector.body1318, !llvm.loop !311

middle.block1325:                                 ; preds = %vector.body1318
  br i1 %cmp.n1326, label %._crit_edge799, label %vec.epilog.iter.check1330

vec.epilog.iter.check1330:                        ; preds = %middle.block1325
  br i1 %min.epilog.iters.check1331, label %.lr.ph798.preheader, label %vec.epilog.ph1332, !prof !15

vec.epilog.ph1332:                                ; preds = %vector.main.loop.iter.check1314, %vec.epilog.iter.check1330
  %vec.epilog.resume.val1327 = phi i64 [ %n.vec1317, %vec.epilog.iter.check1330 ], [ 0, %vector.main.loop.iter.check1314 ]
  br label %vec.epilog.vector.body1334

vec.epilog.vector.body1334:                       ; preds = %vec.epilog.vector.body1334, %vec.epilog.ph1332
  %index1335 = phi i64 [ %vec.epilog.resume.val1327, %vec.epilog.ph1332 ], [ %index.next1338, %vec.epilog.vector.body1334 ] ; 4 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %.3582802, i64 %index1335
  %wide.load1336 = load <4 x i8>, ptr %i.vw, align 1, !alias.scope !359
  %i.vx = sub nsw i64 %index1335, %i.at
  %i.vy = getelementptr inbounds i8, ptr %.3540803, i64 %i.vx
  %wide.load1337 = load <4 x i8>, ptr %i.vy, align 1, !alias.scope !360
  %i.vz = add <4 x i8> %wide.load1337, %wide.load1336
  %i.wa = getelementptr inbounds nuw i8, ptr %.3540803, i64 %index1335
  store <4 x i8> %i.vz, ptr %i.wa, align 1, !alias.scope !361, !noalias !362
  %index.next1338 = add nuw i64 %index1335, 4     ; 2 uses
  %i.wb = icmp eq i64 %index.next1338, %n.vec1333
  br i1 %i.wb, label %vec.epilog.middle.block1339, label %vec.epilog.vector.body1334, !llvm.loop !312

vec.epilog.middle.block1339:                      ; preds = %vec.epilog.vector.body1334
  br i1 %cmp.n1340, label %._crit_edge799, label %.lr.ph798.preheader

.lr.ph798.preheader:                              ; preds = %iter.check1328, %vec.epilog.iter.check1330, %vec.epilog.middle.block1339
  %indvars.iv933.ph = phi i64 [ 0, %iter.check1328 ], [ %n.vec1333, %vec.epilog.middle.block1339 ], [ %n.vec1317, %vec.epilog.iter.check1330 ] ; 6 uses
  br i1 %lcmp.mod1642.not, label %.lr.ph798.prol.loopexit, label %.lr.ph798.prol

.lr.ph798.prol:                                   ; preds = %.lr.ph798.preheader
  %i.wc = getelementptr inbounds nuw i8, ptr %.3582802, i64 %indvars.iv933.ph
  %i.wd = load i8, ptr %i.wc, align 1
  %i.we = sub nsw i64 %indvars.iv933.ph, %i.at
  %i.wf = getelementptr inbounds i8, ptr %.3540803, i64 %i.we
  %i.wg = load i8, ptr %i.wf, align 1
  %.narrow629.prol = add i8 %i.wg, %i.wd
  %i.wh = getelementptr inbounds nuw i8, ptr %.3540803, i64 %indvars.iv933.ph
  store i8 %.narrow629.prol, ptr %i.wh, align 1
  %indvars.iv.next934.prol = or disjoint i64 %indvars.iv933.ph, 1
  br label %.lr.ph798.prol.loopexit

.lr.ph798.prol.loopexit:                          ; preds = %.lr.ph798.prol, %.lr.ph798.preheader
  %indvars.iv933.unr = phi i64 [ %indvars.iv933.ph, %.lr.ph798.preheader ], [ %indvars.iv.next934.prol, %.lr.ph798.prol ]
  %i.wi = icmp eq i64 %indvars.iv933.ph, %i.uc
  br i1 %i.wi, label %._crit_edge799, label %.lr.ph798

.lr.ph798:                                        ; preds = %.lr.ph798.prol.loopexit, %.lr.ph798
  %indvars.iv933 = phi i64 [ %indvars.iv.next934.1, %.lr.ph798 ], [ %indvars.iv933.unr, %.lr.ph798.prol.loopexit ] ; 5 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %.3582802, i64 %indvars.iv933
  %i.wk = load i8, ptr %i.wj, align 1
  %i.wl = sub nsw i64 %indvars.iv933, %i.at
  %i.wm = getelementptr inbounds i8, ptr %.3540803, i64 %i.wl
  %i.wn = load i8, ptr %i.wm, align 1
  %.narrow629 = add i8 %i.wn, %i.wk
  %i.wo = getelementptr inbounds nuw i8, ptr %.3540803, i64 %indvars.iv933
  store i8 %.narrow629, ptr %i.wo, align 1
  %indvars.iv.next934 = add nuw nsw i64 %indvars.iv933, 1 ; 3 uses
  %i.wp = getelementptr inbounds nuw i8, ptr %.3582802, i64 %indvars.iv.next934
  %i.wq = load i8, ptr %i.wp, align 1
  %i.wr = sub nsw i64 %indvars.iv.next934, %i.at
  %i.ws = getelementptr inbounds i8, ptr %.3540803, i64 %i.wr
  %i.wt = load i8, ptr %i.ws, align 1
  %.narrow629.1 = add i8 %i.wt, %i.wq
  %i.wu = getelementptr inbounds nuw i8, ptr %.3540803, i64 %indvars.iv.next934
  store i8 %.narrow629.1, ptr %i.wu, align 1
  %indvars.iv.next934.1 = add nuw nsw i64 %indvars.iv933, 2 ; 2 uses
  %exitcond937.not.1 = icmp eq i64 %indvars.iv.next934.1, %wide.trip.count936
  br i1 %exitcond937.not.1, label %._crit_edge799, label %.lr.ph798, !llvm.loop !313

._crit_edge799:                                   ; preds = %.lr.ph798.prol.loopexit, %.lr.ph798, %middle.block1325, %vec.epilog.middle.block1339, %.preheader716
  %i.wv = getelementptr inbounds i8, ptr %.3540803, i64 %i.tu
  store i8 -1, ptr %i.wv, align 1
  %i.ww = getelementptr inbounds i8, ptr %.3582802, i64 %i.tu ; 2 uses
  %i.wx = getelementptr inbounds i8, ptr %.3540803, i64 %i.at
  %.1568 = add i32 %.1568804, -1                  ; 2 uses
  %.not627 = icmp eq i32 %.1568, 0
  br i1 %.not627, label %.loopexit736, label %.preheader716

.preheader717:                                    ; preds = %.preheader717.lr.ph, %._crit_edge789
  %.2569795 = phi i32 [ %.6573753, %.preheader717.lr.ph ], [ %.2569, %._crit_edge789 ]
  %.3532794 = phi ptr [ %i.eh, %.preheader717.lr.ph ], [ %i.yq, %._crit_edge789 ] ; 8 uses
  %.4541793 = phi ptr [ %.1538, %.preheader717.lr.ph ], [ %i.yp, %._crit_edge789 ] ; 9 uses
  %.4583792 = phi ptr [ %.1580, %.preheader717.lr.ph ], [ %i.yo, %._crit_edge789 ] ; 8 uses
  br i1 %i.db, label %iter.check1374, label %._crit_edge789

iter.check1374:                                   ; preds = %.preheader717
  %brmerge1698 = select i1 %min.iters.check1359, i1 true, i1 %conflict.rdx1358
  br i1 %brmerge1698, label %.lr.ph788.preheader, label %vector.main.loop.iter.check1360

vector.main.loop.iter.check1360:                  ; preds = %iter.check1374
  br i1 %min.iters.check1361, label %vec.epilog.ph1378, label %vector.body1364

vector.body1364:                                  ; preds = %vector.main.loop.iter.check1360, %vector.body1364
  %index1365 = phi i64 [ %index.next1370, %vector.body1364 ], [ 0, %vector.main.loop.iter.check1360 ] ; 4 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %.4583792, i64 %index1365 ; 2 uses
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wy, i64 16
  %wide.load1366 = load <16 x i8>, ptr %i.wy, align 1, !alias.scope !363
  %wide.load1367 = load <16 x i8>, ptr %i.wz, align 1, !alias.scope !363
  %i.xa = getelementptr inbounds nuw i8, ptr %.3532794, i64 %index1365 ; 2 uses
  %i.xb = getelementptr inbounds nuw i8, ptr %i.xa, i64 16
  %wide.load1368 = load <16 x i8>, ptr %i.xa, align 1, !alias.scope !364
  %wide.load1369 = load <16 x i8>, ptr %i.xb, align 1, !alias.scope !364
  %i.xc = add <16 x i8> %wide.load1368, %wide.load1366
  %i.xd = add <16 x i8> %wide.load1369, %wide.load1367
  %i.xe = getelementptr inbounds nuw i8, ptr %.4541793, i64 %index1365 ; 2 uses
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xe, i64 16
  store <16 x i8> %i.xc, ptr %i.xe, align 1, !alias.scope !365, !noalias !366
  store <16 x i8> %i.xd, ptr %i.xf, align 1, !alias.scope !365, !noalias !366
  %index.next1370 = add nuw i64 %index1365, 32    ; 2 uses
  %i.xg = icmp eq i64 %index.next1370, %n.vec1363
  br i1 %i.xg, label %middle.block1371, label %vector.body1364, !llvm.loop !318

middle.block1371:                                 ; preds = %vector.body1364
  br i1 %cmp.n1372, label %._crit_edge789, label %vec.epilog.iter.check1376

vec.epilog.iter.check1376:                        ; preds = %middle.block1371
  br i1 %min.epilog.iters.check1377, label %.lr.ph788.preheader, label %vec.epilog.ph1378, !prof !15

vec.epilog.ph1378:                                ; preds = %vector.main.loop.iter.check1360, %vec.epilog.iter.check1376
  %vec.epilog.resume.val1373 = phi i64 [ %n.vec1363, %vec.epilog.iter.check1376 ], [ 0, %vector.main.loop.iter.check1360 ]
  br label %vec.epilog.vector.body1380

vec.epilog.vector.body1380:                       ; preds = %vec.epilog.vector.body1380, %vec.epilog.ph1378
  %index1381 = phi i64 [ %vec.epilog.resume.val1373, %vec.epilog.ph1378 ], [ %index.next1384, %vec.epilog.vector.body1380 ] ; 4 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %.4583792, i64 %index1381
  %wide.load1382 = load <4 x i8>, ptr %i.xh, align 1, !alias.scope !363
  %i.xi = getelementptr inbounds nuw i8, ptr %.3532794, i64 %index1381
  %wide.load1383 = load <4 x i8>, ptr %i.xi, align 1, !alias.scope !364
  %i.xj = add <4 x i8> %wide.load1383, %wide.load1382
  %i.xk = getelementptr inbounds nuw i8, ptr %.4541793, i64 %index1381
  store <4 x i8> %i.xj, ptr %i.xk, align 1, !alias.scope !365, !noalias !366
  %index.next1384 = add nuw i64 %index1381, 4     ; 2 uses
  %i.xl = icmp eq i64 %index.next1384, %n.vec1379
  br i1 %i.xl, label %vec.epilog.middle.block1385, label %vec.epilog.vector.body1380, !llvm.loop !319

vec.epilog.middle.block1385:                      ; preds = %vec.epilog.vector.body1380
  br i1 %cmp.n1386, label %._crit_edge789, label %.lr.ph788.preheader

.lr.ph788.preheader:                              ; preds = %iter.check1374, %vec.epilog.iter.check1376, %vec.epilog.middle.block1385
  %indvars.iv928.ph = phi i64 [ 0, %iter.check1374 ], [ %n.vec1379, %vec.epilog.middle.block1385 ], [ %n.vec1363, %vec.epilog.iter.check1376 ] ; 3 uses
  br i1 %lcmp.mod1640.not, label %.lr.ph788.prol.loopexit, label %.lr.ph788.prol

.lr.ph788.prol:                                   ; preds = %.lr.ph788.preheader, %.lr.ph788.prol
  %indvars.iv928.prol = phi i64 [ %indvars.iv.next929.prol, %.lr.ph788.prol ], [ %indvars.iv928.ph, %.lr.ph788.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph788.prol ], [ 0, %.lr.ph788.preheader ]
  %i.xm = getelementptr inbounds nuw i8, ptr %.4583792, i64 %indvars.iv928.prol
  %i.xn = load i8, ptr %i.xm, align 1
  %i.xo = getelementptr inbounds nuw i8, ptr %.3532794, i64 %indvars.iv928.prol
  %i.xp = load i8, ptr %i.xo, align 1
  %.narrow626.prol = add i8 %i.xp, %i.xn
  %i.xq = getelementptr inbounds nuw i8, ptr %.4541793, i64 %indvars.iv928.prol
  store i8 %.narrow626.prol, ptr %i.xq, align 1
  %indvars.iv.next929.prol = add nuw nsw i64 %indvars.iv928.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter1639
  br i1 %prol.iter.cmp.not, label %.lr.ph788.prol.loopexit, label %.lr.ph788.prol, !llvm.loop !320

.lr.ph788.prol.loopexit:                          ; preds = %.lr.ph788.prol, %.lr.ph788.preheader
  %indvars.iv928.unr = phi i64 [ %indvars.iv928.ph, %.lr.ph788.preheader ], [ %indvars.iv.next929.prol, %.lr.ph788.prol ]
  %i.xr = sub nsw i64 %indvars.iv928.ph, %wide.trip.count931
  %i.xs = icmp ugt i64 %i.xr, -4
  br i1 %i.xs, label %._crit_edge789, label %.lr.ph788

.lr.ph788:                                        ; preds = %.lr.ph788.prol.loopexit, %.lr.ph788
  %indvars.iv928 = phi i64 [ %indvars.iv.next929.3, %.lr.ph788 ], [ %indvars.iv928.unr, %.lr.ph788.prol.loopexit ] ; 7 uses
  %i.xt = getelementptr inbounds nuw i8, ptr %.4583792, i64 %indvars.iv928
  %i.xu = load i8, ptr %i.xt, align 1
  %i.xv = getelementptr inbounds nuw i8, ptr %.3532794, i64 %indvars.iv928
  %i.xw = load i8, ptr %i.xv, align 1
  %.narrow626 = add i8 %i.xw, %i.xu
  %i.xx = getelementptr inbounds nuw i8, ptr %.4541793, i64 %indvars.iv928
  store i8 %.narrow626, ptr %i.xx, align 1
  %indvars.iv.next929 = add nuw nsw i64 %indvars.iv928, 1 ; 3 uses
  %i.xy = getelementptr inbounds nuw i8, ptr %.4583792, i64 %indvars.iv.next929
  %i.xz = load i8, ptr %i.xy, align 1
  %i.ya = getelementptr inbounds nuw i8, ptr %.3532794, i64 %indvars.iv.next929
  %i.yb = load i8, ptr %i.ya, align 1
  %.narrow626.1 = add i8 %i.yb, %i.xz
  %i.yc = getelementptr inbounds nuw i8, ptr %.4541793, i64 %indvars.iv.next929
  store i8 %.narrow626.1, ptr %i.yc, align 1
  %indvars.iv.next929.1 = add nuw nsw i64 %indvars.iv928, 2 ; 3 uses
  %i.yd = getelementptr inbounds nuw i8, ptr %.4583792, i64 %indvars.iv.next929.1
  %i.ye = load i8, ptr %i.yd, align 1
  %i.yf = getelementptr inbounds nuw i8, ptr %.3532794, i64 %indvars.iv.next929.1
  %i.yg = load i8, ptr %i.yf, align 1
  %.narrow626.2 = add i8 %i.yg, %i.ye
  %i.yh = getelementptr inbounds nuw i8, ptr %.4541793, i64 %indvars.iv.next929.1
  store i8 %.narrow626.2, ptr %i.yh, align 1
  %indvars.iv.next929.2 = add nuw nsw i64 %indvars.iv928, 3 ; 3 uses
  %i.yi = getelementptr inbounds nuw i8, ptr %.4583792, i64 %indvars.iv.next929.2
  %i.yj = load i8, ptr %i.yi, align 1
  %i.yk = getelementptr inbounds nuw i8, ptr %.3532794, i64 %indvars.iv.next929.2
  %i.yl = load i8, ptr %i.yk, align 1
  %.narrow626.3 = add i8 %i.yl, %i.yj
  %i.ym = getelementptr inbounds nuw i8, ptr %.4541793, i64 %indvars.iv.next929.2
  store i8 %.narrow626.3, ptr %i.ym, align 1
  %indvars.iv.next929.3 = add nuw nsw i64 %indvars.iv928, 4 ; 2 uses
  %exitcond932.not.3 = icmp eq i64 %indvars.iv.next929.3, %wide.trip.count931
  br i1 %exitcond932.not.3, label %._crit_edge789, label %.lr.ph788, !llvm.loop !321

._crit_edge789:                                   ; preds = %.lr.ph788.prol.loopexit, %.lr.ph788, %middle.block1371, %vec.epilog.middle.block1385, %.preheader717
  %i.yn = getelementptr inbounds i8, ptr %.4541793, i64 %i.tk
  store i8 -1, ptr %i.yn, align 1
  %i.yo = getelementptr inbounds i8, ptr %.4583792, i64 %i.tk ; 2 uses
  %i.yp = getelementptr inbounds i8, ptr %.4541793, i64 %i.at
  %i.yq = getelementptr inbounds i8, ptr %.3532794, i64 %i.at
  %.2569 = add i32 %.2569795, -1                  ; 2 uses
  %.not624 = icmp eq i32 %.2569, 0
  br i1 %.not624, label %.loopexit736, label %.preheader717

.preheader718:                                    ; preds = %.preheader718.lr.ph, %._crit_edge779
  %.3570785 = phi i32 [ %.6573753, %.preheader718.lr.ph ], [ %.3570, %._crit_edge779 ]
  %.4533784 = phi ptr [ %i.eh, %.preheader718.lr.ph ], [ %i.abn, %._crit_edge779 ] ; 6 uses
  %.5542783 = phi ptr [ %.1538, %.preheader718.lr.ph ], [ %i.abm, %._crit_edge779 ] ; 12 uses
  %.5584782 = phi ptr [ %.1580, %.preheader718.lr.ph ], [ %i.abl, %._crit_edge779 ] ; 6 uses
  br i1 %i.db, label %iter.check1431, label %._crit_edge779

iter.check1431:                                   ; preds = %.preheader718
  %brmerge1699 = select i1 %min.iters.check1414, i1 true, i1 %conflict.rdx1413
  br i1 %brmerge1699, label %.lr.ph778.preheader, label %vector.main.loop.iter.check1415

vector.main.loop.iter.check1415:                  ; preds = %iter.check1431
  br i1 %min.iters.check1416, label %vec.epilog.ph1435, label %vector.body1419

vector.body1419:                                  ; preds = %vector.main.loop.iter.check1415, %vector.body1419
  %index1420 = phi i64 [ %index.next1427, %vector.body1419 ], [ 0, %vector.main.loop.iter.check1415 ] ; 5 uses
  %i.yr = getelementptr inbounds nuw i8, ptr %.5584782, i64 %index1420 ; 2 uses
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yr, i64 16
  %wide.load1421 = load <16 x i8>, ptr %i.yr, align 1, !alias.scope !367
  %wide.load1422 = load <16 x i8>, ptr %i.ys, align 1, !alias.scope !367
  %i.yt = getelementptr inbounds nuw i8, ptr %.4533784, i64 %index1420 ; 2 uses
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yt, i64 16
  %wide.load1423 = load <16 x i8>, ptr %i.yt, align 1, !alias.scope !368
  %wide.load1424 = load <16 x i8>, ptr %i.yu, align 1, !alias.scope !368
  %i.yv = zext <16 x i8> %wide.load1423 to <16 x i16>
  %i.yw = zext <16 x i8> %wide.load1424 to <16 x i16>
  %i.yx = sub nsw i64 %index1420, %i.at
  %i.yy = getelementptr inbounds i8, ptr %.5542783, i64 %i.yx ; 2 uses
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yy, i64 16
  %wide.load1425 = load <16 x i8>, ptr %i.yy, align 1, !alias.scope !369
  %wide.load1426 = load <16 x i8>, ptr %i.yz, align 1, !alias.scope !369
  %i.za = zext <16 x i8> %wide.load1425 to <16 x i16>
  %i.zb = zext <16 x i8> %wide.load1426 to <16 x i16>
  %i.zc = add nuw nsw <16 x i16> %i.za, %i.yv
  %i.zd = add nuw nsw <16 x i16> %i.zb, %i.yw
  %i.ze = lshr <16 x i16> %i.zc, splat (i16 1)
  %i.zf = lshr <16 x i16> %i.zd, splat (i16 1)
  %i.zg = trunc nuw <16 x i16> %i.ze to <16 x i8>
  %i.zh = trunc nuw <16 x i16> %i.zf to <16 x i8>
  %i.zi = add <16 x i8> %wide.load1421, %i.zg
  %i.zj = add <16 x i8> %wide.load1422, %i.zh
  %i.zk = getelementptr inbounds nuw i8, ptr %.5542783, i64 %index1420 ; 2 uses
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zk, i64 16
  store <16 x i8> %i.zi, ptr %i.zk, align 1, !alias.scope !370, !noalias !371
  store <16 x i8> %i.zj, ptr %i.zl, align 1, !alias.scope !370, !noalias !371
  %index.next1427 = add nuw i64 %index1420, 32    ; 2 uses
  %i.zm = icmp eq i64 %index.next1427, %n.vec1418
  br i1 %i.zm, label %middle.block1428, label %vector.body1419, !llvm.loop !327

middle.block1428:                                 ; preds = %vector.body1419
  br i1 %cmp.n1429, label %._crit_edge779, label %vec.epilog.iter.check1433

vec.epilog.iter.check1433:                        ; preds = %middle.block1428
  br i1 %min.epilog.iters.check1434, label %.lr.ph778.preheader, label %vec.epilog.ph1435, !prof !356

vec.epilog.ph1435:                                ; preds = %vector.main.loop.iter.check1415, %vec.epilog.iter.check1433
  %vec.epilog.resume.val1430 = phi i64 [ %n.vec1418, %vec.epilog.iter.check1433 ], [ 0, %vector.main.loop.iter.check1415 ]
  br label %vec.epilog.vector.body1437

vec.epilog.vector.body1437:                       ; preds = %vec.epilog.vector.body1437, %vec.epilog.ph1435
  %index1438 = phi i64 [ %vec.epilog.resume.val1430, %vec.epilog.ph1435 ], [ %index.next1442, %vec.epilog.vector.body1437 ] ; 5 uses
  %i.zn = getelementptr inbounds nuw i8, ptr %.5584782, i64 %index1438
  %wide.load1439 = load <8 x i8>, ptr %i.zn, align 1, !alias.scope !367
  %i.zo = getelementptr inbounds nuw i8, ptr %.4533784, i64 %index1438
  %wide.load1440 = load <8 x i8>, ptr %i.zo, align 1, !alias.scope !368
  %i.zp = zext <8 x i8> %wide.load1440 to <8 x i16>
  %i.zq = sub nsw i64 %index1438, %i.at
  %i.zr = getelementptr inbounds i8, ptr %.5542783, i64 %i.zq
  %wide.load1441 = load <8 x i8>, ptr %i.zr, align 1, !alias.scope !369
  %i.zs = zext <8 x i8> %wide.load1441 to <8 x i16>
  %i.zt = add nuw nsw <8 x i16> %i.zs, %i.zp
  %i.zu = lshr <8 x i16> %i.zt, splat (i16 1)
  %i.zv = trunc nuw <8 x i16> %i.zu to <8 x i8>
  %i.zw = add <8 x i8> %wide.load1439, %i.zv
  %i.zx = getelementptr inbounds nuw i8, ptr %.5542783, i64 %index1438
  store <8 x i8> %i.zw, ptr %i.zx, align 1, !alias.scope !370, !noalias !371
  %index.next1442 = add nuw i64 %index1438, 8     ; 2 uses
  %i.zy = icmp eq i64 %index.next1442, %n.vec1436
  br i1 %i.zy, label %vec.epilog.middle.block1443, label %vec.epilog.vector.body1437, !llvm.loop !328

vec.epilog.middle.block1443:                      ; preds = %vec.epilog.vector.body1437
  br i1 %cmp.n1444, label %._crit_edge779, label %.lr.ph778.preheader

.lr.ph778.preheader:                              ; preds = %iter.check1431, %vec.epilog.iter.check1433, %vec.epilog.middle.block1443
  %indvars.iv923.ph = phi i64 [ 0, %iter.check1431 ], [ %n.vec1436, %vec.epilog.middle.block1443 ], [ %n.vec1418, %vec.epilog.iter.check1433 ] ; 7 uses
  br i1 %lcmp.mod1638.not, label %.lr.ph778.prol.loopexit, label %.lr.ph778.prol

.lr.ph778.prol:                                   ; preds = %.lr.ph778.preheader
  %i.zz = getelementptr inbounds nuw i8, ptr %.5584782, i64 %indvars.iv923.ph
  %i.aaa = load i8, ptr %i.zz, align 1
  %i.aab = getelementptr inbounds nuw i8, ptr %.4533784, i64 %indvars.iv923.ph
  %i.aac = load i8, ptr %i.aab, align 1
  %i.aad = zext i8 %i.aac to i16
  %i.aae = sub nsw i64 %indvars.iv923.ph, %i.at
  %i.aaf = getelementptr inbounds i8, ptr %.5542783, i64 %i.aae
  %i.aag = load i8, ptr %i.aaf, align 1
  %i.aah = zext i8 %i.aag to i16
  %i.aai = add nuw nsw i16 %i.aah, %i.aad
  %i.aaj = lshr i16 %i.aai, 1
  %.tr622.prol = trunc nuw i16 %i.aaj to i8
  %.narrow623.prol = add i8 %i.aaa, %.tr622.prol
  %i.aak = getelementptr inbounds nuw i8, ptr %.5542783, i64 %indvars.iv923.ph
  store i8 %.narrow623.prol, ptr %i.aak, align 1
  %indvars.iv.next924.prol = or disjoint i64 %indvars.iv923.ph, 1
  br label %.lr.ph778.prol.loopexit

.lr.ph778.prol.loopexit:                          ; preds = %.lr.ph778.prol, %.lr.ph778.preheader
  %indvars.iv923.unr = phi i64 [ %indvars.iv923.ph, %.lr.ph778.preheader ], [ %indvars.iv.next924.prol, %.lr.ph778.prol ]
  %i.aal = icmp eq i64 %indvars.iv923.ph, %i.tj
  br i1 %i.aal, label %._crit_edge779, label %.lr.ph778

.lr.ph778:                                        ; preds = %.lr.ph778.prol.loopexit, %.lr.ph778
  %indvars.iv923 = phi i64 [ %indvars.iv.next924.1, %.lr.ph778 ], [ %indvars.iv923.unr, %.lr.ph778.prol.loopexit ] ; 6 uses
  %i.aam = getelementptr inbounds nuw i8, ptr %.5584782, i64 %indvars.iv923
  %i.aan = load i8, ptr %i.aam, align 1
  %i.aao = getelementptr inbounds nuw i8, ptr %.4533784, i64 %indvars.iv923
  %i.aap = load i8, ptr %i.aao, align 1
  %i.aaq = zext i8 %i.aap to i16
  %i.aar = sub nsw i64 %indvars.iv923, %i.at
  %i.aas = getelementptr inbounds i8, ptr %.5542783, i64 %i.aar
  %i.aat = load i8, ptr %i.aas, align 1
  %i.aau = zext i8 %i.aat to i16
  %i.aav = add nuw nsw i16 %i.aau, %i.aaq
  %i.aaw = lshr i16 %i.aav, 1
  %.tr622 = trunc nuw i16 %i.aaw to i8
  %.narrow623 = add i8 %i.aan, %.tr622
  %i.aax = getelementptr inbounds nuw i8, ptr %.5542783, i64 %indvars.iv923
  store i8 %.narrow623, ptr %i.aax, align 1
  %indvars.iv.next924 = add nuw nsw i64 %indvars.iv923, 1 ; 4 uses
  %i.aay = getelementptr inbounds nuw i8, ptr %.5584782, i64 %indvars.iv.next924
  %i.aaz = load i8, ptr %i.aay, align 1
  %i.aba = getelementptr inbounds nuw i8, ptr %.4533784, i64 %indvars.iv.next924
  %i.abb = load i8, ptr %i.aba, align 1
  %i.abc = zext i8 %i.abb to i16
  %i.abd = sub nsw i64 %indvars.iv.next924, %i.at
  %i.abe = getelementptr inbounds i8, ptr %.5542783, i64 %i.abd
  %i.abf = load i8, ptr %i.abe, align 1
  %i.abg = zext i8 %i.abf to i16
  %i.abh = add nuw nsw i16 %i.abg, %i.abc
  %i.abi = lshr i16 %i.abh, 1
  %.tr622.1 = trunc nuw i16 %i.abi to i8
  %.narrow623.1 = add i8 %i.aaz, %.tr622.1
  %i.abj = getelementptr inbounds nuw i8, ptr %.5542783, i64 %indvars.iv.next924
  store i8 %.narrow623.1, ptr %i.abj, align 1
  %indvars.iv.next924.1 = add nuw nsw i64 %indvars.iv923, 2 ; 2 uses
  %exitcond927.not.1 = icmp eq i64 %indvars.iv.next924.1, %wide.trip.count926
  br i1 %exitcond927.not.1, label %._crit_edge779, label %.lr.ph778, !llvm.loop !329

._crit_edge779:                                   ; preds = %.lr.ph778.prol.loopexit, %.lr.ph778, %middle.block1428, %vec.epilog.middle.block1443, %.preheader718
  %i.abk = getelementptr inbounds i8, ptr %.5542783, i64 %i.sz
  store i8 -1, ptr %i.abk, align 1
  %i.abl = getelementptr inbounds i8, ptr %.5584782, i64 %i.sz ; 2 uses
  %i.abm = getelementptr inbounds i8, ptr %.5542783, i64 %i.at
  %i.abn = getelementptr inbounds i8, ptr %.4533784, i64 %i.at
  %.3570 = add i32 %.3570785, -1                  ; 2 uses
  %.not621 = icmp eq i32 %.3570, 0
  br i1 %.not621, label %.loopexit736, label %.preheader718

.preheader719:                                    ; preds = %.preheader719.lr.ph, %._crit_edge769
  %.4571775 = phi i32 [ %.6573753, %.preheader719.lr.ph ], [ %.4571, %._crit_edge769 ]
  %.5534774 = phi ptr [ %i.eh, %.preheader719.lr.ph ], [ %i.ael, %._crit_edge769 ] ; 7 uses
  %.6543773 = phi ptr [ %.1538, %.preheader719.lr.ph ], [ %i.aek, %._crit_edge769 ] ; 8 uses
  %.6585772 = phi ptr [ %.1580, %.preheader719.lr.ph ], [ %i.aej, %._crit_edge769 ] ; 4 uses
  br i1 %i.db, label %iter.check1497, label %._crit_edge769

iter.check1497:                                   ; preds = %.preheader719
  %brmerge1700 = select i1 %min.iters.check1482, i1 true, i1 %conflict.rdx1481
  br i1 %brmerge1700, label %.lr.ph768.preheader, label %vector.main.loop.iter.check1483

vector.main.loop.iter.check1483:                  ; preds = %iter.check1497
  br i1 %min.iters.check1484, label %vec.epilog.ph1501, label %vector.body1487

vector.body1487:                                  ; preds = %vector.main.loop.iter.check1483, %vector.body1487
  %index1488 = phi i64 [ %index.next1493, %vector.body1487 ], [ 0, %vector.main.loop.iter.check1483 ] ; 5 uses
  %i.abo = getelementptr inbounds nuw i8, ptr %.6585772, i64 %index1488
  %wide.load1489 = load <16 x i8>, ptr %i.abo, align 1, !alias.scope !372
  %i.abp = sub nsw i64 %index1488, %i.at          ; 2 uses
  %i.abq = getelementptr inbounds i8, ptr %.6543773, i64 %i.abp
  %wide.load1490 = load <16 x i8>, ptr %i.abq, align 1, !alias.scope !373 ; 2 uses
  %i.abr = zext <16 x i8> %wide.load1490 to <16 x i32> ; 2 uses
  %i.abs = getelementptr inbounds nuw i8, ptr %.5534774, i64 %index1488
  %wide.load1491 = load <16 x i8>, ptr %i.abs, align 1, !alias.scope !374 ; 2 uses
  %i.abt = zext <16 x i8> %wide.load1491 to <16 x i32> ; 2 uses
  %i.abu = getelementptr inbounds i8, ptr %.5534774, i64 %i.abp
  %wide.load1492 = load <16 x i8>, ptr %i.abu, align 1, !alias.scope !375 ; 2 uses
  %i.abv = zext <16 x i8> %wide.load1492 to <16 x i32> ; 2 uses
  %i.abw = add nuw nsw <16 x i32> %i.abt, %i.abr
  %i.abx = sub nsw <16 x i32> %i.abw, %i.abv      ; 3 uses
  %i.aby = sub nsw <16 x i32> %i.abx, %i.abr
  %i.abz = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.aby, i1 true) ; 2 uses
  %i.aca = sub nsw <16 x i32> %i.abx, %i.abt
  %i.acb = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.aca, i1 true) ; 2 uses
  %i.acc = sub nsw <16 x i32> %i.abx, %i.abv
  %i.acd = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.acc, i1 true) ; 2 uses
  %i.ace = icmp samesign ugt <16 x i32> %i.abz, %i.acb
  %i.acf = icmp samesign ugt <16 x i32> %i.abz, %i.acd
  %i.acg = select <16 x i1> %i.ace, <16 x i1> splat (i1 true), <16 x i1> %i.acf
  %i.ach = icmp samesign ugt <16 x i32> %i.acb, %i.acd
  %i.aci = select <16 x i1> %i.ach, <16 x i8> %wide.load1492, <16 x i8> %wide.load1491
  %i.acj = select <16 x i1> %i.acg, <16 x i8> %i.aci, <16 x i8> %wide.load1490
  %i.ack = add <16 x i8> %i.acj, %wide.load1489
  %i.acl = getelementptr inbounds nuw i8, ptr %.6543773, i64 %index1488
  store <16 x i8> %i.ack, ptr %i.acl, align 1, !alias.scope !376, !noalias !377
  %index.next1493 = add nuw i64 %index1488, 16    ; 2 uses
  %i.acm = icmp eq i64 %index.next1493, %n.vec1486
  br i1 %i.acm, label %middle.block1494, label %vector.body1487, !llvm.loop !336

middle.block1494:                                 ; preds = %vector.body1487
  br i1 %cmp.n1495, label %._crit_edge769, label %vec.epilog.iter.check1499

vec.epilog.iter.check1499:                        ; preds = %middle.block1494
  br i1 %min.epilog.iters.check1500, label %.lr.ph768.preheader, label %vec.epilog.ph1501, !prof !16

vec.epilog.ph1501:                                ; preds = %vector.main.loop.iter.check1483, %vec.epilog.iter.check1499
  %vec.epilog.resume.val1496 = phi i64 [ %n.vec1486, %vec.epilog.iter.check1499 ], [ 0, %vector.main.loop.iter.check1483 ]
  br label %vec.epilog.vector.body1503

vec.epilog.vector.body1503:                       ; preds = %vec.epilog.vector.body1503, %vec.epilog.ph1501
  %index1504 = phi i64 [ %vec.epilog.resume.val1496, %vec.epilog.ph1501 ], [ %index.next1509, %vec.epilog.vector.body1503 ] ; 5 uses
  %i.acn = getelementptr inbounds nuw i8, ptr %.6585772, i64 %index1504
  %wide.load1505 = load <4 x i8>, ptr %i.acn, align 1, !alias.scope !372
  %i.aco = sub nsw i64 %index1504, %i.at          ; 2 uses
  %i.acp = getelementptr inbounds i8, ptr %.6543773, i64 %i.aco
  %wide.load1506 = load <4 x i8>, ptr %i.acp, align 1, !alias.scope !373 ; 2 uses
  %i.acq = zext <4 x i8> %wide.load1506 to <4 x i32> ; 2 uses
  %i.acr = getelementptr inbounds nuw i8, ptr %.5534774, i64 %index1504
  %wide.load1507 = load <4 x i8>, ptr %i.acr, align 1, !alias.scope !374 ; 2 uses
  %i.acs = zext <4 x i8> %wide.load1507 to <4 x i32> ; 2 uses
  %i.act = getelementptr inbounds i8, ptr %.5534774, i64 %i.aco
  %wide.load1508 = load <4 x i8>, ptr %i.act, align 1, !alias.scope !375 ; 2 uses
  %i.acu = zext <4 x i8> %wide.load1508 to <4 x i32> ; 2 uses
  %i.acv = add nuw nsw <4 x i32> %i.acs, %i.acq
  %i.acw = sub nsw <4 x i32> %i.acv, %i.acu       ; 3 uses
  %i.acx = sub nsw <4 x i32> %i.acw, %i.acq
  %i.acy = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.acx, i1 true) ; 2 uses
  %i.acz = sub nsw <4 x i32> %i.acw, %i.acs
  %i.ada = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.acz, i1 true) ; 2 uses
  %i.adb = sub nsw <4 x i32> %i.acw, %i.acu
  %i.adc = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.adb, i1 true) ; 2 uses
  %i.add = icmp samesign ugt <4 x i32> %i.acy, %i.ada
  %i.ade = icmp samesign ugt <4 x i32> %i.acy, %i.adc
  %i.adf = select <4 x i1> %i.add, <4 x i1> splat (i1 true), <4 x i1> %i.ade
  %i.adg = icmp samesign ugt <4 x i32> %i.ada, %i.adc
  %i.adh = select <4 x i1> %i.adg, <4 x i8> %wide.load1508, <4 x i8> %wide.load1507
  %i.adi = select <4 x i1> %i.adf, <4 x i8> %i.adh, <4 x i8> %wide.load1506
  %i.adj = add <4 x i8> %i.adi, %wide.load1505
  %i.adk = getelementptr inbounds nuw i8, ptr %.6543773, i64 %index1504
  store <4 x i8> %i.adj, ptr %i.adk, align 1, !alias.scope !376, !noalias !377
  %index.next1509 = add nuw i64 %index1504, 4     ; 2 uses
  %i.adl = icmp eq i64 %index.next1509, %n.vec1502
  br i1 %i.adl, label %vec.epilog.middle.block1510, label %vec.epilog.vector.body1503, !llvm.loop !337

vec.epilog.middle.block1510:                      ; preds = %vec.epilog.vector.body1503
  br i1 %cmp.n1511, label %._crit_edge769, label %.lr.ph768.preheader

.lr.ph768.preheader:                              ; preds = %iter.check1497, %vec.epilog.iter.check1499, %vec.epilog.middle.block1510
  %indvars.iv918.ph = phi i64 [ 0, %iter.check1497 ], [ %n.vec1502, %vec.epilog.middle.block1510 ], [ %n.vec1486, %vec.epilog.iter.check1499 ]
  br label %.lr.ph768

.lr.ph768:                                        ; preds = %.lr.ph768.preheader, %.lr.ph768
  %indvars.iv918 = phi i64 [ %indvars.iv.next919, %.lr.ph768 ], [ %indvars.iv918.ph, %.lr.ph768.preheader ] ; 5 uses
  %i.adm = getelementptr inbounds nuw i8, ptr %.6585772, i64 %indvars.iv918
  %i.adn = load i8, ptr %i.adm, align 1
  %i.ado = sub nsw i64 %indvars.iv918, %i.at      ; 2 uses
  %i.adp = getelementptr inbounds i8, ptr %.6543773, i64 %i.ado
  %i.adq = load i8, ptr %i.adp, align 1           ; 2 uses
  %i.adr = zext i8 %i.adq to i32                  ; 2 uses
  %i.ads = getelementptr inbounds nuw i8, ptr %.5534774, i64 %indvars.iv918
  %i.adt = load i8, ptr %i.ads, align 1           ; 2 uses
  %i.adu = zext i8 %i.adt to i32                  ; 2 uses
  %i.adv = getelementptr inbounds i8, ptr %.5534774, i64 %i.ado
  %i.adw = load i8, ptr %i.adv, align 1           ; 2 uses
  %i.adx = zext i8 %i.adw to i32                  ; 2 uses
  %i.ady = add nuw nsw i32 %i.adu, %i.adr
  %i.adz = sub nsw i32 %i.ady, %i.adx             ; 3 uses
  %i.aea = sub nsw i32 %i.adz, %i.adr
  %i.aeb = tail call i32 @llvm.abs.i32(i32 %i.aea, i1 true) ; 2 uses
  %i.aec = sub nsw i32 %i.adz, %i.adu
  %i.aed = tail call i32 @llvm.abs.i32(i32 %i.aec, i1 true) ; 2 uses
  %i.aee = sub nsw i32 %i.adz, %i.adx
  %i.aef = tail call i32 @llvm.abs.i32(i32 %i.aee, i1 true) ; 2 uses
  %.not.i661 = icmp samesign ugt i32 %i.aeb, %i.aed
  %.not20.i662 = icmp samesign ugt i32 %i.aeb, %i.aef
  %or.cond.i663 = select i1 %.not.i661, i1 true, i1 %.not20.i662
  %.not21.i664 = icmp samesign ugt i32 %i.aed, %i.aef
  %i.aeg = select i1 %.not21.i664, i8 %i.adw, i8 %i.adt
  %.tr619 = select i1 %or.cond.i663, i8 %i.aeg, i8 %i.adq
  %.narrow620 = add i8 %.tr619, %i.adn
  %i.aeh = getelementptr inbounds nuw i8, ptr %.6543773, i64 %indvars.iv918
  store i8 %.narrow620, ptr %i.aeh, align 1
  %indvars.iv.next919 = add nuw nsw i64 %indvars.iv918, 1 ; 2 uses
  %exitcond922.not = icmp eq i64 %indvars.iv.next919, %wide.trip.count921
  br i1 %exitcond922.not, label %._crit_edge769, label %.lr.ph768, !llvm.loop !338

._crit_edge769:                                   ; preds = %.lr.ph768, %middle.block1494, %vec.epilog.middle.block1510, %.preheader719
  %i.aei = getelementptr inbounds i8, ptr %.6543773, i64 %i.so
  store i8 -1, ptr %i.aei, align 1
  %i.aej = getelementptr inbounds i8, ptr %.6585772, i64 %i.so ; 2 uses
  %i.aek = getelementptr inbounds i8, ptr %.6543773, i64 %i.at
  %i.ael = getelementptr inbounds i8, ptr %.5534774, i64 %i.at
  %.4571 = add i32 %.4571775, -1                  ; 2 uses
  %.not618 = icmp eq i32 %.4571, 0
  br i1 %.not618, label %.loopexit736, label %.preheader719

.preheader720:                                    ; preds = %.preheader720.lr.ph, %._crit_edge760
  %.5572765 = phi i32 [ %.6573753, %.preheader720.lr.ph ], [ %.5572, %._crit_edge760 ]
  %.7544764 = phi ptr [ %.1538, %.preheader720.lr.ph ], [ %i.agd, %._crit_edge760 ] ; 12 uses
  %.7586763 = phi ptr [ %.1580, %.preheader720.lr.ph ], [ %i.agc, %._crit_edge760 ] ; 6 uses
  br i1 %i.db, label %iter.check1546, label %._crit_edge760

iter.check1546:                                   ; preds = %.preheader720
  %brmerge1701 = select i1 %min.iters.check1531, i1 true, i1 %conflict.rdx1530
  br i1 %brmerge1701, label %.lr.ph759.preheader, label %vector.main.loop.iter.check1532

vector.main.loop.iter.check1532:                  ; preds = %iter.check1546
  br i1 %min.iters.check1533, label %vec.epilog.ph1550, label %vector.body1536

vector.body1536:                                  ; preds = %vector.main.loop.iter.check1532, %vector.body1536
  %index1537 = phi i64 [ %index.next1542, %vector.body1536 ], [ 0, %vector.main.loop.iter.check1532 ] ; 4 uses
  %i.aem = getelementptr inbounds nuw i8, ptr %.7586763, i64 %index1537 ; 2 uses
  %i.aen = getelementptr inbounds nuw i8, ptr %i.aem, i64 16
  %wide.load1538 = load <16 x i8>, ptr %i.aem, align 1, !alias.scope !378
  %wide.load1539 = load <16 x i8>, ptr %i.aen, align 1, !alias.scope !378
  %i.aeo = sub nsw i64 %index1537, %i.at
  %i.aep = getelementptr inbounds i8, ptr %.7544764, i64 %i.aeo ; 2 uses
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.aep, i64 16
  %wide.load1540 = load <16 x i8>, ptr %i.aep, align 1, !alias.scope !379
  %wide.load1541 = load <16 x i8>, ptr %i.aeq, align 1, !alias.scope !379
  %i.aer = lshr <16 x i8> %wide.load1540, splat (i8 1)
  %i.aes = lshr <16 x i8> %wide.load1541, splat (i8 1)
  %i.aet = add <16 x i8> %i.aer, %wide.load1538
  %i.aeu = add <16 x i8> %i.aes, %wide.load1539
  %i.aev = getelementptr inbounds nuw i8, ptr %.7544764, i64 %index1537 ; 2 uses
  %i.aew = getelementptr inbounds nuw i8, ptr %i.aev, i64 16
  store <16 x i8> %i.aet, ptr %i.aev, align 1, !alias.scope !380, !noalias !381
  store <16 x i8> %i.aeu, ptr %i.aew, align 1, !alias.scope !380, !noalias !381
  %index.next1542 = add nuw i64 %index1537, 32    ; 2 uses
  %i.aex = icmp eq i64 %index.next1542, %n.vec1535
  br i1 %i.aex, label %middle.block1543, label %vector.body1536, !llvm.loop !343

middle.block1543:                                 ; preds = %vector.body1536
  br i1 %cmp.n1544, label %._crit_edge760, label %vec.epilog.iter.check1548

vec.epilog.iter.check1548:                        ; preds = %middle.block1543
  br i1 %min.epilog.iters.check1549, label %.lr.ph759.preheader, label %vec.epilog.ph1550, !prof !15

vec.epilog.ph1550:                                ; preds = %vector.main.loop.iter.check1532, %vec.epilog.iter.check1548
  %vec.epilog.resume.val1545 = phi i64 [ %n.vec1535, %vec.epilog.iter.check1548 ], [ 0, %vector.main.loop.iter.check1532 ]
  br label %vec.epilog.vector.body1552

vec.epilog.vector.body1552:                       ; preds = %vec.epilog.vector.body1552, %vec.epilog.ph1550
  %index1553 = phi i64 [ %vec.epilog.resume.val1545, %vec.epilog.ph1550 ], [ %index.next1556, %vec.epilog.vector.body1552 ] ; 4 uses
  %i.aey = getelementptr inbounds nuw i8, ptr %.7586763, i64 %index1553
  %wide.load1554 = load <4 x i8>, ptr %i.aey, align 1, !alias.scope !378
  %i.aez = sub nsw i64 %index1553, %i.at
  %i.afa = getelementptr inbounds i8, ptr %.7544764, i64 %i.aez
  %wide.load1555 = load <4 x i8>, ptr %i.afa, align 1, !alias.scope !379
  %i.afb = lshr <4 x i8> %wide.load1555, splat (i8 1)
  %i.afc = add <4 x i8> %i.afb, %wide.load1554
  %i.afd = getelementptr inbounds nuw i8, ptr %.7544764, i64 %index1553
  store <4 x i8> %i.afc, ptr %i.afd, align 1, !alias.scope !380, !noalias !381
  %index.next1556 = add nuw i64 %index1553, 4     ; 2 uses
  %i.afe = icmp eq i64 %index.next1556, %n.vec1551
  br i1 %i.afe, label %vec.epilog.middle.block1557, label %vec.epilog.vector.body1552, !llvm.loop !344

vec.epilog.middle.block1557:                      ; preds = %vec.epilog.vector.body1552
  br i1 %cmp.n1558, label %._crit_edge760, label %.lr.ph759.preheader

.lr.ph759.preheader:                              ; preds = %iter.check1546, %vec.epilog.iter.check1548, %vec.epilog.middle.block1557
  %indvars.iv913.ph = phi i64 [ 0, %iter.check1546 ], [ %n.vec1551, %vec.epilog.middle.block1557 ], [ %n.vec1535, %vec.epilog.iter.check1548 ] ; 6 uses
  br i1 %lcmp.mod1636.not, label %.lr.ph759.prol.loopexit, label %.lr.ph759.prol

.lr.ph759.prol:                                   ; preds = %.lr.ph759.preheader
  %i.aff = getelementptr inbounds nuw i8, ptr %.7586763, i64 %indvars.iv913.ph
  %i.afg = load i8, ptr %i.aff, align 1
  %i.afh = sub nsw i64 %indvars.iv913.ph, %i.at
  %i.afi = getelementptr inbounds i8, ptr %.7544764, i64 %i.afh
  %i.afj = load i8, ptr %i.afi, align 1
  %i.afk = lshr i8 %i.afj, 1
  %.narrow617.prol = add i8 %i.afk, %i.afg
  %i.afl = getelementptr inbounds nuw i8, ptr %.7544764, i64 %indvars.iv913.ph
  store i8 %.narrow617.prol, ptr %i.afl, align 1
  %indvars.iv.next914.prol = or disjoint i64 %indvars.iv913.ph, 1
  br label %.lr.ph759.prol.loopexit

.lr.ph759.prol.loopexit:                          ; preds = %.lr.ph759.prol, %.lr.ph759.preheader
  %indvars.iv913.unr = phi i64 [ %indvars.iv913.ph, %.lr.ph759.preheader ], [ %indvars.iv.next914.prol, %.lr.ph759.prol ]
  %i.afm = icmp eq i64 %indvars.iv913.ph, %i.sn
  br i1 %i.afm, label %._crit_edge760, label %.lr.ph759

.lr.ph759:                                        ; preds = %.lr.ph759.prol.loopexit, %.lr.ph759
  %indvars.iv913 = phi i64 [ %indvars.iv.next914.1, %.lr.ph759 ], [ %indvars.iv913.unr, %.lr.ph759.prol.loopexit ] ; 5 uses
  %i.afn = getelementptr inbounds nuw i8, ptr %.7586763, i64 %indvars.iv913
  %i.afo = load i8, ptr %i.afn, align 1
  %i.afp = sub nsw i64 %indvars.iv913, %i.at
  %i.afq = getelementptr inbounds i8, ptr %.7544764, i64 %i.afp
  %i.afr = load i8, ptr %i.afq, align 1
  %i.afs = lshr i8 %i.afr, 1
  %.narrow617 = add i8 %i.afs, %i.afo
  %i.aft = getelementptr inbounds nuw i8, ptr %.7544764, i64 %indvars.iv913
  store i8 %.narrow617, ptr %i.aft, align 1
  %indvars.iv.next914 = add nuw nsw i64 %indvars.iv913, 1 ; 3 uses
  %i.afu = getelementptr inbounds nuw i8, ptr %.7586763, i64 %indvars.iv.next914
  %i.afv = load i8, ptr %i.afu, align 1
  %i.afw = sub nsw i64 %indvars.iv.next914, %i.at
  %i.afx = getelementptr inbounds i8, ptr %.7544764, i64 %i.afw
  %i.afy = load i8, ptr %i.afx, align 1
  %i.afz = lshr i8 %i.afy, 1
  %.narrow617.1 = add i8 %i.afz, %i.afv
  %i.aga = getelementptr inbounds nuw i8, ptr %.7544764, i64 %indvars.iv.next914
  store i8 %.narrow617.1, ptr %i.aga, align 1
  %indvars.iv.next914.1 = add nuw nsw i64 %indvars.iv913, 2 ; 2 uses
  %exitcond917.not.1 = icmp eq i64 %indvars.iv.next914.1, %wide.trip.count916
  br i1 %exitcond917.not.1, label %._crit_edge760, label %.lr.ph759, !llvm.loop !345

._crit_edge760:                                   ; preds = %.lr.ph759.prol.loopexit, %.lr.ph759, %middle.block1543, %vec.epilog.middle.block1557, %.preheader720
  %i.agb = getelementptr inbounds i8, ptr %.7544764, i64 %i.sf
  store i8 -1, ptr %i.agb, align 1
  %i.agc = getelementptr inbounds i8, ptr %.7586763, i64 %i.sf ; 2 uses
  %i.agd = getelementptr inbounds i8, ptr %.7544764, i64 %i.at
  %.5572 = add i32 %.5572765, -1                  ; 2 uses
  %.not615 = icmp eq i32 %.5572, 0
  br i1 %.not615, label %.loopexit736, label %.preheader720

.preheader721:                                    ; preds = %.preheader721.lr.ph, %._crit_edge752
  %.6573757 = phi i32 [ %.6573753, %.preheader721.lr.ph ], [ %.6573, %._crit_edge752 ]
  %.8545756 = phi ptr [ %.1538, %.preheader721.lr.ph ], [ %i.ahp, %._crit_edge752 ] ; 12 uses
  %.8587755 = phi ptr [ %.1580, %.preheader721.lr.ph ], [ %i.aho, %._crit_edge752 ] ; 6 uses
  br i1 %i.db, label %iter.check1593, label %._crit_edge752

iter.check1593:                                   ; preds = %.preheader721
  %brmerge1702 = select i1 %min.iters.check1578, i1 true, i1 %conflict.rdx1577
  br i1 %brmerge1702, label %.lr.ph751.preheader, label %vector.main.loop.iter.check1579

vector.main.loop.iter.check1579:                  ; preds = %iter.check1593
  br i1 %min.iters.check1580, label %vec.epilog.ph1597, label %vector.body1583

vector.body1583:                                  ; preds = %vector.main.loop.iter.check1579, %vector.body1583
  %index1584 = phi i64 [ %index.next1589, %vector.body1583 ], [ 0, %vector.main.loop.iter.check1579 ] ; 4 uses
  %i.age = getelementptr inbounds nuw i8, ptr %.8587755, i64 %index1584 ; 2 uses
  %i.agf = getelementptr inbounds nuw i8, ptr %i.age, i64 16
  %wide.load1585 = load <16 x i8>, ptr %i.age, align 1, !alias.scope !382
  %wide.load1586 = load <16 x i8>, ptr %i.agf, align 1, !alias.scope !382
  %i.agg = sub nsw i64 %index1584, %i.at
  %i.agh = getelementptr inbounds i8, ptr %.8545756, i64 %i.agg ; 2 uses
  %i.agi = getelementptr inbounds nuw i8, ptr %i.agh, i64 16
  %wide.load1587 = load <16 x i8>, ptr %i.agh, align 1, !alias.scope !383
  %wide.load1588 = load <16 x i8>, ptr %i.agi, align 1, !alias.scope !383
  %i.agj = add <16 x i8> %wide.load1587, %wide.load1585
  %i.agk = add <16 x i8> %wide.load1588, %wide.load1586
  %i.agl = getelementptr inbounds nuw i8, ptr %.8545756, i64 %index1584 ; 2 uses
  %i.agm = getelementptr inbounds nuw i8, ptr %i.agl, i64 16
  store <16 x i8> %i.agj, ptr %i.agl, align 1, !alias.scope !384, !noalias !385
  store <16 x i8> %i.agk, ptr %i.agm, align 1, !alias.scope !384, !noalias !385
  %index.next1589 = add nuw i64 %index1584, 32    ; 2 uses
  %i.agn = icmp eq i64 %index.next1589, %n.vec1582
  br i1 %i.agn, label %middle.block1590, label %vector.body1583, !llvm.loop !350

middle.block1590:                                 ; preds = %vector.body1583
  br i1 %cmp.n1591, label %._crit_edge752, label %vec.epilog.iter.check1595

vec.epilog.iter.check1595:                        ; preds = %middle.block1590
  br i1 %min.epilog.iters.check1596, label %.lr.ph751.preheader, label %vec.epilog.ph1597, !prof !15

vec.epilog.ph1597:                                ; preds = %vector.main.loop.iter.check1579, %vec.epilog.iter.check1595
  %vec.epilog.resume.val1592 = phi i64 [ %n.vec1582, %vec.epilog.iter.check1595 ], [ 0, %vector.main.loop.iter.check1579 ]
  br label %vec.epilog.vector.body1599

vec.epilog.vector.body1599:                       ; preds = %vec.epilog.vector.body1599, %vec.epilog.ph1597
  %index1600 = phi i64 [ %vec.epilog.resume.val1592, %vec.epilog.ph1597 ], [ %index.next1603, %vec.epilog.vector.body1599 ] ; 4 uses
  %i.ago = getelementptr inbounds nuw i8, ptr %.8587755, i64 %index1600
  %wide.load1601 = load <4 x i8>, ptr %i.ago, align 1, !alias.scope !382
  %i.agp = sub nsw i64 %index1600, %i.at
  %i.agq = getelementptr inbounds i8, ptr %.8545756, i64 %i.agp
  %wide.load1602 = load <4 x i8>, ptr %i.agq, align 1, !alias.scope !383
  %i.agr = add <4 x i8> %wide.load1602, %wide.load1601
  %i.ags = getelementptr inbounds nuw i8, ptr %.8545756, i64 %index1600
  store <4 x i8> %i.agr, ptr %i.ags, align 1, !alias.scope !384, !noalias !385
  %index.next1603 = add nuw i64 %index1600, 4     ; 2 uses
  %i.agt = icmp eq i64 %index.next1603, %n.vec1598
  br i1 %i.agt, label %vec.epilog.middle.block1604, label %vec.epilog.vector.body1599, !llvm.loop !351

vec.epilog.middle.block1604:                      ; preds = %vec.epilog.vector.body1599
  br i1 %cmp.n1605, label %._crit_edge752, label %.lr.ph751.preheader

.lr.ph751.preheader:                              ; preds = %iter.check1593, %vec.epilog.iter.check1595, %vec.epilog.middle.block1604
  %indvars.iv908.ph = phi i64 [ 0, %iter.check1593 ], [ %n.vec1598, %vec.epilog.middle.block1604 ], [ %n.vec1582, %vec.epilog.iter.check1595 ] ; 6 uses
  br i1 %lcmp.mod.not, label %.lr.ph751.prol.loopexit, label %.lr.ph751.prol

.lr.ph751.prol:                                   ; preds = %.lr.ph751.preheader
  %i.agu = getelementptr inbounds nuw i8, ptr %.8587755, i64 %indvars.iv908.ph
  %i.agv = load i8, ptr %i.agu, align 1
  %i.agw = sub nsw i64 %indvars.iv908.ph, %i.at
  %i.agx = getelementptr inbounds i8, ptr %.8545756, i64 %i.agw
  %i.agy = load i8, ptr %i.agx, align 1
  %.narrow.prol = add i8 %i.agy, %i.agv
  %i.agz = getelementptr inbounds nuw i8, ptr %.8545756, i64 %indvars.iv908.ph
  store i8 %.narrow.prol, ptr %i.agz, align 1
  %indvars.iv.next909.prol = or disjoint i64 %indvars.iv908.ph, 1
  br label %.lr.ph751.prol.loopexit

.lr.ph751.prol.loopexit:                          ; preds = %.lr.ph751.prol, %.lr.ph751.preheader
  %indvars.iv908.unr = phi i64 [ %indvars.iv908.ph, %.lr.ph751.preheader ], [ %indvars.iv.next909.prol, %.lr.ph751.prol ]
  %i.aha = icmp eq i64 %indvars.iv908.ph, %i.se
  br i1 %i.aha, label %._crit_edge752, label %.lr.ph751

.lr.ph751:                                        ; preds = %.lr.ph751.prol.loopexit, %.lr.ph751
  %indvars.iv908 = phi i64 [ %indvars.iv.next909.1, %.lr.ph751 ], [ %indvars.iv908.unr, %.lr.ph751.prol.loopexit ] ; 5 uses
  %i.ahb = getelementptr inbounds nuw i8, ptr %.8587755, i64 %indvars.iv908
  %i.ahc = load i8, ptr %i.ahb, align 1
  %i.ahd = sub nsw i64 %indvars.iv908, %i.at
  %i.ahe = getelementptr inbounds i8, ptr %.8545756, i64 %i.ahd
  %i.ahf = load i8, ptr %i.ahe, align 1
  %.narrow = add i8 %i.ahf, %i.ahc
  %i.ahg = getelementptr inbounds nuw i8, ptr %.8545756, i64 %indvars.iv908
  store i8 %.narrow, ptr %i.ahg, align 1
  %indvars.iv.next909 = add nuw nsw i64 %indvars.iv908, 1 ; 3 uses
  %i.ahh = getelementptr inbounds nuw i8, ptr %.8587755, i64 %indvars.iv.next909
  %i.ahi = load i8, ptr %i.ahh, align 1
  %i.ahj = sub nsw i64 %indvars.iv.next909, %i.at
  %i.ahk = getelementptr inbounds i8, ptr %.8545756, i64 %i.ahj
  %i.ahl = load i8, ptr %i.ahk, align 1
  %.narrow.1 = add i8 %i.ahl, %i.ahi
  %i.ahm = getelementptr inbounds nuw i8, ptr %.8545756, i64 %indvars.iv.next909
  store i8 %.narrow.1, ptr %i.ahm, align 1
  %indvars.iv.next909.1 = add nuw nsw i64 %indvars.iv908, 2 ; 2 uses
  %exitcond912.not.1 = icmp eq i64 %indvars.iv.next909.1, %wide.trip.count911
  br i1 %exitcond912.not.1, label %._crit_edge752, label %.lr.ph751, !llvm.loop !352

._crit_edge752:                                   ; preds = %.lr.ph751.prol.loopexit, %.lr.ph751, %middle.block1590, %vec.epilog.middle.block1604, %.preheader721
  %i.ahn = getelementptr inbounds i8, ptr %.8545756, i64 %i.rw
  store i8 -1, ptr %i.ahn, align 1
  %i.aho = getelementptr inbounds i8, ptr %.8587755, i64 %i.rw ; 2 uses
  %i.ahp = getelementptr inbounds i8, ptr %.8545756, i64 %i.at
  %.6573 = add i32 %.6573757, -1                  ; 2 uses
  %.not614 = icmp eq i32 %.6573, 0
  br i1 %.not614, label %.loopexit736, label %.preheader721

.loopexit736:                                     ; preds = %._crit_edge752, %._crit_edge760, %._crit_edge769, %._crit_edge779, %._crit_edge789, %._crit_edge799, %._crit_edge808, %.preheader747, %.preheader745, %.preheader743, %.preheader741, %.preheader739, %.preheader737, %.preheader735, %bb.ag
  %.9588 = phi ptr [ %.1580, %bb.ag ], [ %i.yo, %._crit_edge789 ], [ %i.abl, %._crit_edge779 ], [ %i.aej, %._crit_edge769 ], [ %i.agc, %._crit_edge760 ], [ %i.vk, %._crit_edge808 ], [ %i.ww, %._crit_edge799 ], [ %.1580, %.preheader735 ], [ %.1580, %.preheader737 ], [ %.1580, %.preheader739 ], [ %.1580, %.preheader741 ], [ %.1580, %.preheader743 ], [ %.1580, %.preheader745 ], [ %.1580, %.preheader747 ], [ %i.aho, %._crit_edge752 ] ; 3 uses
  br i1 %brmerge.not, label %.lr.ph818, label %.loopexit734

.lr.ph818:                                        ; preds = %.loopexit736
  %i.ahq = load ptr, ptr %i.u, align 8
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.ahq, i64 %i.cr ; 2 uses
  %i.ahs = sext i32 %.0551833 to i64              ; 9 uses
  br i1 %i.cm, label %.epil.preheader, label %.lr.ph818.new

.lr.ph818.new:                                    ; preds = %.lr.ph818, %.lr.ph818.new
  %.9546816 = phi ptr [ %i.aiq, %.lr.ph818.new ], [ %i.ahr, %.lr.ph818 ] ; 2 uses
  %niter = phi i32 [ %niter.next.7, %.lr.ph818.new ], [ 0, %.lr.ph818 ]
  %i.aht = getelementptr i8, ptr %.9546816, i64 %i.ahs
  %i.ahu = getelementptr i8, ptr %i.aht, i64 1
  store i8 -1, ptr %i.ahu, align 1
  %i.ahv = getelementptr inbounds i8, ptr %.9546816, i64 %i.at ; 2 uses
  %i.ahw = getelementptr i8, ptr %i.ahv, i64 %i.ahs
  %i.ahx = getelementptr i8, ptr %i.ahw, i64 1
  store i8 -1, ptr %i.ahx, align 1
  %i.ahy = getelementptr inbounds i8, ptr %i.ahv, i64 %i.at ; 2 uses
  %i.ahz = getelementptr i8, ptr %i.ahy, i64 %i.ahs
  %i.aia = getelementptr i8, ptr %i.ahz, i64 1
  store i8 -1, ptr %i.aia, align 1
  %i.aib = getelementptr inbounds i8, ptr %i.ahy, i64 %i.at ; 2 uses
  %i.aic = getelementptr i8, ptr %i.aib, i64 %i.ahs
  %i.aid = getelementptr i8, ptr %i.aic, i64 1
  store i8 -1, ptr %i.aid, align 1
  %i.aie = getelementptr inbounds i8, ptr %i.aib, i64 %i.at ; 2 uses
  %i.aif = getelementptr i8, ptr %i.aie, i64 %i.ahs
  %i.aig = getelementptr i8, ptr %i.aif, i64 1
  store i8 -1, ptr %i.aig, align 1
  %i.aih = getelementptr inbounds i8, ptr %i.aie, i64 %i.at ; 2 uses
  %i.aii = getelementptr i8, ptr %i.aih, i64 %i.ahs
  %i.aij = getelementptr i8, ptr %i.aii, i64 1
  store i8 -1, ptr %i.aij, align 1
  %i.aik = getelementptr inbounds i8, ptr %i.aih, i64 %i.at ; 2 uses
  %i.ail = getelementptr i8, ptr %i.aik, i64 %i.ahs
  %i.aim = getelementptr i8, ptr %i.ail, i64 1
  store i8 -1, ptr %i.aim, align 1
  %i.ain = getelementptr inbounds i8, ptr %i.aik, i64 %i.at ; 2 uses
  %i.aio = getelementptr i8, ptr %i.ain, i64 %i.ahs
  %i.aip = getelementptr i8, ptr %i.aio, i64 1
  store i8 -1, ptr %i.aip, align 1
  %i.aiq = getelementptr inbounds i8, ptr %i.ain, i64 %i.at ; 2 uses
  %niter.next.7 = add nuw i32 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit734.loopexit.unr-lcssa, label %.lr.ph818.new

.loopexit734.loopexit.unr-lcssa:                  ; preds = %.lr.ph818.new
  br i1 %lcmp.mod1648.not, label %.loopexit734, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit734.loopexit.unr-lcssa, %.lr.ph818
  %.9546816.epil.init = phi ptr [ %i.ahr, %.lr.ph818 ], [ %i.aiq, %.loopexit734.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1649)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %.epil.preheader
  %.9546816.epil = phi ptr [ %.9546816.epil.init, %.epil.preheader ], [ %i.ait, %bb.ah ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ah ]
  %i.air = getelementptr i8, ptr %.9546816.epil, i64 %i.ahs
  %i.ais = getelementptr i8, ptr %i.air, i64 1
  store i8 -1, ptr %i.ais, align 1
  %i.ait = getelementptr inbounds i8, ptr %.9546816.epil, i64 %i.at
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter1647
  br i1 %epil.iter.cmp.not, label %.loopexit734, label %bb.ah, !llvm.loop !353

.loopexit734:                                     ; preds = %.loopexit734.loopexit.unr-lcssa, %bb.ah, %.loopexit736, %.loopexit723
  %.11590 = phi ptr [ %.9588, %.loopexit736 ], [ %i.rv, %.loopexit723 ], [ %.9588, %bb.ah ], [ %.9588, %.loopexit734.loopexit.unr-lcssa ]
  %indvars.iv.next975 = add nuw nsw i64 %indvars.iv974, 1 ; 2 uses
  %exitcond978.not = icmp eq i64 %indvars.iv.next975, %wide.trip.count977
  br i1 %exitcond978.not, label %._crit_edge837, label %bb.k

._crit_edge837:                                   ; preds = %.loopexit734
  %i.aiu = icmp slt i32 %6, 8
  br i1 %i.aiu, label %.lr.ph874, label %bb.ax

._crit_edge837.thread:                            ; preds = %bb.j
  br i1 %i.a, label %bb.ay, label %.loopexit713

.lr.ph874:                                        ; preds = %._crit_edge837
  %i.aiv = zext i32 %i.c to i64
  %i.aiw = zext nneg i32 %i.af to i64
  %i.aix = sub nsw i64 0, %i.aiw
  %i.aiy = icmp eq i32 %7, 0
  %i.aiz = sext i32 %6 to i64
  %i.aja = getelementptr inbounds i8, ptr @_m3dstbi__depth_scale_table, i64 %i.aiz
  %i.ajb = icmp sgt i32 %i.y, 7
  %i.ajc = icmp sgt i32 %i.y, 3
  %i.ajd = icmp sgt i32 %i.y, 1
  %.not611 = icmp eq i32 %i.g, %3
  %i.aje = icmp eq i32 %i.g, 1
  %.1867 = add i32 %4, -1                         ; 4 uses
  %i.ajf = icmp sgt i32 %.1867, -1                ; 2 uses
  %i.ajg = zext i32 %.1867 to i64                 ; 8 uses
  %wide.trip.count989 = zext i32 %5 to i64
  %i.ajh = add i32 %i.y, -2                       ; 2 uses
  %i.aji = add nuw nsw i64 %i.ajg, 1
  %i.ajj = and i32 %i.ajh, 2
  %lcmp.mod1666.not.not = icmp eq i32 %i.ajj, 0
  %i.ajk = add nsw i32 %i.y, -2                   ; 2 uses
  %i.ajl = icmp ult i32 %i.ajh, 2
  %i.ajm = and i64 %i.ajg, 1
  %lcmp.mod1669.not.not = icmp eq i64 %i.ajm, 0
  %i.ajn = shl nuw nsw i64 %i.ajg, 2
  %i.ajo = mul nuw nsw i64 %i.ajg, 3
  %indvars.iv.next981.prol = add nsw i64 %i.ajg, -1
  %i.ajp = icmp eq i32 %.1867, 0
  %xtraiter1671 = and i64 %i.aji, 3               ; 2 uses
  %lcmp.mod1672.not = icmp eq i64 %xtraiter1671, 0
  %i.ajq = icmp ult i32 %.1867, 3
  br label %bb.ai

bb.ai:                                            ; preds = %.lr.ph874, %.loopexit
  %indvars.iv986 = phi i64 [ 0, %.lr.ph874 ], [ %indvars.iv.next987, %.loopexit ] ; 2 uses
  %i.ajr = load ptr, ptr %i.u, align 8
  %i.ajs = trunc nuw i64 %indvars.iv986 to i32
  %i.ajt = mul i32 %i.e, %i.ajs
  %i.aju = zext i32 %i.ajt to i64                 ; 2 uses
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.ajr, i64 %i.aju ; 10 uses
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.ajv, i64 %i.aiv
  %i.ajx = getelementptr inbounds i8, ptr %i.ajw, i64 %i.aix ; 9 uses
  br i1 %i.aiy, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ajy = load i8, ptr %i.aja, align 1
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.aj
  %i.ajz = phi i8 [ %i.ajy, %bb.aj ], [ 1, %bb.ai ] ; 29 uses
  switch i32 %6, label %.thread681 [
    i32 4, label %.preheader709
    i32 2, label %.preheader710
    i32 1, label %.preheader711
  ]

.preheader711:                                    ; preds = %bb.ak
  br i1 %i.ajb, label %.lr.ph846, label %._crit_edge847

.preheader710:                                    ; preds = %bb.ak
  br i1 %i.ajc, label %.lr.ph854, label %._crit_edge855

.preheader709:                                    ; preds = %bb.ak
  br i1 %i.ajd, label %.lr.ph862.preheader, label %._crit_edge863

.lr.ph862.preheader:                              ; preds = %.preheader709
  br i1 %lcmp.mod1666.not.not, label %.lr.ph862.prol, label %.lr.ph862.prol.loopexit

.lr.ph862.prol:                                   ; preds = %.lr.ph862.preheader
  %i.aka = load i8, ptr %i.ajx, align 1
  %i.akb = lshr i8 %i.aka, 4
  %i.akc = mul i8 %i.akb, %i.ajz
  %i.akd = getelementptr inbounds nuw i8, ptr %i.ajv, i64 1
  store i8 %i.akc, ptr %i.ajv, align 1
  %i.ake = load i8, ptr %i.ajx, align 1
  %i.akf = and i8 %i.ake, 15
  %i.akg = mul i8 %i.akf, %i.ajz
  %i.akh = getelementptr inbounds nuw i8, ptr %i.ajv, i64 2 ; 2 uses
  store i8 %i.akg, ptr %i.akd, align 1
  %i.aki = getelementptr inbounds nuw i8, ptr %i.ajx, i64 1 ; 2 uses
  br label %.lr.ph862.prol.loopexit

.lr.ph862.prol.loopexit:                          ; preds = %.lr.ph862.prol, %.lr.ph862.preheader
  %.0523861.unr = phi ptr [ %i.ajx, %.lr.ph862.preheader ], [ %i.aki, %.lr.ph862.prol ]
  %.0525860.unr = phi ptr [ %i.ajv, %.lr.ph862.preheader ], [ %i.akh, %.lr.ph862.prol ]
  %.14859.unr = phi i32 [ %i.y, %.lr.ph862.preheader ], [ %i.ajk, %.lr.ph862.prol ]
  %.lcssa1616.unr = phi ptr [ poison, %.lr.ph862.preheader ], [ %i.akh, %.lr.ph862.prol ]
  %.lcssa1614.unr = phi ptr [ poison, %.lr.ph862.preheader ], [ %i.aki, %.lr.ph862.prol ]
  br i1 %i.ajl, label %._crit_edge863, label %.lr.ph862

.lr.ph862:                                        ; preds = %.lr.ph862.prol.loopexit, %.lr.ph862
  %.0523861 = phi ptr [ %i.alb, %.lr.ph862 ], [ %.0523861.unr, %.lr.ph862.prol.loopexit ] ; 4 uses
  %.0525860 = phi ptr [ %i.akz, %.lr.ph862 ], [ %.0525860.unr, %.lr.ph862.prol.loopexit ] ; 5 uses
  %.14859 = phi i32 [ %i.ala, %.lr.ph862 ], [ %.14859.unr, %.lr.ph862.prol.loopexit ] ; 2 uses
  %i.akj = load i8, ptr %.0523861, align 1
  %i.akk = lshr i8 %i.akj, 4
  %i.akl = mul i8 %i.akk, %i.ajz
  %i.akm = getelementptr inbounds nuw i8, ptr %.0525860, i64 1
  store i8 %i.akl, ptr %.0525860, align 1
  %i.akn = load i8, ptr %.0523861, align 1
  %i.ako = and i8 %i.akn, 15
  %i.akp = mul i8 %i.ako, %i.ajz
  %i.akq = getelementptr inbounds nuw i8, ptr %.0525860, i64 2
  store i8 %i.akp, ptr %i.akm, align 1
  %i.akr = getelementptr inbounds nuw i8, ptr %.0523861, i64 1 ; 2 uses
  %i.aks = load i8, ptr %i.akr, align 1
  %i.akt = lshr i8 %i.aks, 4
  %i.aku = mul i8 %i.akt, %i.ajz
  %i.akv = getelementptr inbounds nuw i8, ptr %.0525860, i64 3
  store i8 %i.aku, ptr %i.akq, align 1
  %i.akw = load i8, ptr %i.akr, align 1
  %i.akx = and i8 %i.akw, 15
  %i.aky = mul i8 %i.akx, %i.ajz
  %i.akz = getelementptr inbounds nuw i8, ptr %.0525860, i64 4 ; 2 uses
  store i8 %i.aky, ptr %i.akv, align 1
  %i.ala = add nsw i32 %.14859, -4                ; 2 uses
  %i.alb = getelementptr inbounds nuw i8, ptr %.0523861, i64 2 ; 2 uses
  %i.alc = icmp sgt i32 %.14859, 5
  br i1 %i.alc, label %.lr.ph862, label %._crit_edge863

._crit_edge863:                                   ; preds = %.lr.ph862.prol.loopexit, %.lr.ph862, %.preheader709
  %.14.lcssa = phi i32 [ %i.y, %.preheader709 ], [ %i.ajk, %.lr.ph862.prol.loopexit ], [ %i.ala, %.lr.ph862 ]
  %.0525.lcssa = phi ptr [ %i.ajv, %.preheader709 ], [ %.lcssa1616.unr, %.lr.ph862.prol.loopexit ], [ %i.akz, %.lr.ph862 ]
  %.0523.lcssa = phi ptr [ %i.ajx, %.preheader709 ], [ %.lcssa1614.unr, %.lr.ph862.prol.loopexit ], [ %i.alb, %.lr.ph862 ]
  %i.ald = icmp eq i32 %.14.lcssa, 1
  br i1 %i.ald, label %bb.al, label %.thread681

bb.al:                                            ; preds = %._crit_edge863
  %i.ale = load i8, ptr %.0523.lcssa, align 1
  %i.alf = lshr i8 %i.ale, 4
  %i.alg = mul i8 %i.alf, %i.ajz
  store i8 %i.alg, ptr %.0525.lcssa, align 1
  br label %.thread681

.lr.ph854:                                        ; preds = %.preheader710, %.lr.ph854
  %.1524853 = phi ptr [ %i.ama, %.lr.ph854 ], [ %i.ajx, %.preheader710 ] ; 5 uses
  %.1526852 = phi ptr [ %i.aly, %.lr.ph854 ], [ %i.ajv, %.preheader710 ] ; 5 uses
  %.15851 = phi i32 [ %i.alz, %.lr.ph854 ], [ %i.y, %.preheader710 ] ; 2 uses
  %i.alh = load i8, ptr %.1524853, align 1
  %i.ali = lshr i8 %i.alh, 6
  %i.alj = mul i8 %i.ali, %i.ajz
  %i.alk = getelementptr inbounds nuw i8, ptr %.1526852, i64 1
  store i8 %i.alj, ptr %.1526852, align 1
  %i.all = load i8, ptr %.1524853, align 1
  %i.alm = lshr i8 %i.all, 4
  %i.aln = and i8 %i.alm, 3
  %i.alo = mul i8 %i.aln, %i.ajz
  %i.alp = getelementptr inbounds nuw i8, ptr %.1526852, i64 2
  store i8 %i.alo, ptr %i.alk, align 1
  %i.alq = load i8, ptr %.1524853, align 1
  %i.alr = lshr i8 %i.alq, 2
  %i.als = and i8 %i.alr, 3
  %i.alt = mul i8 %i.als, %i.ajz
  %i.alu = getelementptr inbounds nuw i8, ptr %.1526852, i64 3
  store i8 %i.alt, ptr %i.alp, align 1
  %i.alv = load i8, ptr %.1524853, align 1
  %i.alw = and i8 %i.alv, 3
  %i.alx = mul i8 %i.alw, %i.ajz
  %i.aly = getelementptr inbounds nuw i8, ptr %.1526852, i64 4 ; 2 uses
  store i8 %i.alx, ptr %i.alu, align 1
  %i.alz = add nsw i32 %.15851, -4                ; 2 uses
  %i.ama = getelementptr inbounds nuw i8, ptr %.1524853, i64 1 ; 2 uses
  %i.amb = icmp samesign ugt i32 %.15851, 7
  br i1 %i.amb, label %.lr.ph854, label %._crit_edge855

._crit_edge855:                                   ; preds = %.lr.ph854, %.preheader710
  %.15.lcssa = phi i32 [ %i.y, %.preheader710 ], [ %i.alz, %.lr.ph854 ] ; 3 uses
  %.1526.lcssa = phi ptr [ %i.ajv, %.preheader710 ], [ %i.aly, %.lr.ph854 ] ; 3 uses
  %.1524.lcssa = phi ptr [ %i.ajx, %.preheader710 ], [ %i.ama, %.lr.ph854 ] ; 3 uses
  %i.amc = icmp sgt i32 %.15.lcssa, 0
  br i1 %i.amc, label %bb.am, label %.thread681

bb.am:                                            ; preds = %._crit_edge855
  %i.amd = load i8, ptr %.1524.lcssa, align 1
  %i.ame = lshr i8 %i.amd, 6
  %i.amf = mul i8 %i.ame, %i.ajz
  store i8 %i.amf, ptr %.1526.lcssa, align 1
  %.not703 = icmp eq i32 %.15.lcssa, 1
  br i1 %.not703, label %.thread681, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.amg = getelementptr inbounds nuw i8, ptr %.1526.lcssa, i64 1
  %i.amh = load i8, ptr %.1524.lcssa, align 1
  %i.ami = lshr i8 %i.amh, 4
  %i.amj = and i8 %i.ami, 3
  %i.amk = mul i8 %i.amj, %i.ajz
  store i8 %i.amk, ptr %i.amg, align 1
  %i.aml = icmp eq i32 %.15.lcssa, 3
  br i1 %i.aml, label %bb.ao, label %.thread681

bb.ao:                                            ; preds = %bb.an
  %i.amm = getelementptr inbounds nuw i8, ptr %.1526.lcssa, i64 2
  %i.amn = load i8, ptr %.1524.lcssa, align 1
  %i.amo = lshr i8 %i.amn, 2
  %i.amp = and i8 %i.amo, 3
  %i.amq = mul i8 %i.amp, %i.ajz
  store i8 %i.amq, ptr %i.amm, align 1
  br label %.thread681

.lr.ph846:                                        ; preds = %.preheader711, %.lr.ph846
  %.2845 = phi ptr [ %i.anx, %.lr.ph846 ], [ %i.ajx, %.preheader711 ] ; 9 uses
  %.4844 = phi ptr [ %i.anv, %.lr.ph846 ], [ %i.ajv, %.preheader711 ] ; 9 uses
  %.16843 = phi i32 [ %i.anw, %.lr.ph846 ], [ %i.y, %.preheader711 ] ; 2 uses
  %i.amr = load i8, ptr %.2845, align 1
  %isneg604 = icmp slt i8 %i.amr, 0
  %i.ams = select i1 %isneg604, i8 %i.ajz, i8 0
  %i.amt = getelementptr inbounds nuw i8, ptr %.4844, i64 1
  store i8 %i.ams, ptr %.4844, align 1
  %i.amu = load i8, ptr %.2845, align 1
  %i.amv = and i8 %i.amu, 64
  %.not605 = icmp eq i8 %i.amv, 0
  %i.amw = select i1 %.not605, i8 0, i8 %i.ajz
  %i.amx = getelementptr inbounds nuw i8, ptr %.4844, i64 2
  store i8 %i.amw, ptr %i.amt, align 1
  %i.amy = load i8, ptr %.2845, align 1
  %i.amz = and i8 %i.amy, 32
  %.not606 = icmp eq i8 %i.amz, 0
  %i.ana = select i1 %.not606, i8 0, i8 %i.ajz
  %i.anb = getelementptr inbounds nuw i8, ptr %.4844, i64 3
  store i8 %i.ana, ptr %i.amx, align 1
  %i.anc = load i8, ptr %.2845, align 1
  %i.and = and i8 %i.anc, 16
  %.not607 = icmp eq i8 %i.and, 0
  %i.ane = select i1 %.not607, i8 0, i8 %i.ajz
  %i.anf = getelementptr inbounds nuw i8, ptr %.4844, i64 4
  store i8 %i.ane, ptr %i.anb, align 1
  %i.ang = load i8, ptr %.2845, align 1
  %i.anh = and i8 %i.ang, 8
  %.not608 = icmp eq i8 %i.anh, 0
  %i.ani = select i1 %.not608, i8 0, i8 %i.ajz
  %i.anj = getelementptr inbounds nuw i8, ptr %.4844, i64 5
  store i8 %i.ani, ptr %i.anf, align 1
  %i.ank = load i8, ptr %.2845, align 1
  %i.anl = and i8 %i.ank, 4
  %.not609 = icmp eq i8 %i.anl, 0
  %i.anm = select i1 %.not609, i8 0, i8 %i.ajz
  %i.ann = getelementptr inbounds nuw i8, ptr %.4844, i64 6
  store i8 %i.anm, ptr %i.anj, align 1
  %i.ano = load i8, ptr %.2845, align 1
  %i.anp = and i8 %i.ano, 2
  %.not610 = icmp eq i8 %i.anp, 0
  %i.anq = select i1 %.not610, i8 0, i8 %i.ajz
  %i.anr = getelementptr inbounds nuw i8, ptr %.4844, i64 7
  store i8 %i.anq, ptr %i.ann, align 1
  %i.ans = load i8, ptr %.2845, align 1
  %i.ant = trunc i8 %i.ans to i1
  %i.anu = select i1 %i.ant, i8 %i.ajz, i8 0
  %i.anv = getelementptr inbounds nuw i8, ptr %.4844, i64 8 ; 2 uses
  store i8 %i.anu, ptr %i.anr, align 1
  %i.anw = add nsw i32 %.16843, -8                ; 2 uses
  %i.anx = getelementptr inbounds nuw i8, ptr %.2845, i64 1 ; 2 uses
  %i.any = icmp samesign ugt i32 %.16843, 15
  br i1 %i.any, label %.lr.ph846, label %._crit_edge847

._crit_edge847:                                   ; preds = %.lr.ph846, %.preheader711
  %.16.lcssa = phi i32 [ %i.y, %.preheader711 ], [ %i.anw, %.lr.ph846 ] ; 7 uses
  %.4.lcssa = phi ptr [ %i.ajv, %.preheader711 ], [ %i.anv, %.lr.ph846 ] ; 7 uses
  %.2.lcssa = phi ptr [ %i.ajx, %.preheader711 ], [ %i.anx, %.lr.ph846 ] ; 7 uses
  %i.anz = icmp sgt i32 %.16.lcssa, 0
  br i1 %i.anz, label %bb.ap, label %.thread681

bb.ap:                                            ; preds = %._crit_edge847
  %i.aoa = load i8, ptr %.2.lcssa, align 1
  %isneg = icmp slt i8 %i.aoa, 0
  %i.aob = select i1 %isneg, i8 %i.ajz, i8 0
  store i8 %i.aob, ptr %.4.lcssa, align 1
  %.not700 = icmp eq i32 %.16.lcssa, 1
  br i1 %.not700, label %.thread681, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.aoc = getelementptr inbounds nuw i8, ptr %.4.lcssa, i64 1
  %i.aod = load i8, ptr %.2.lcssa, align 1
  %i.aoe = and i8 %i.aod, 64
  %.not598 = icmp eq i8 %i.aoe, 0
  %i.aof = select i1 %.not598, i8 0, i8 %i.ajz
  store i8 %i.aof, ptr %i.aoc, align 1
  %i.aog = icmp samesign ugt i32 %.16.lcssa, 2
  br i1 %i.aog, label %bb.ar, label %.thread681

bb.ar:                                            ; preds = %bb.aq
  %i.aoh = getelementptr inbounds nuw i8, ptr %.4.lcssa, i64 2
  %i.aoi = load i8, ptr %.2.lcssa, align 1
  %i.aoj = and i8 %i.aoi, 32
  %.not599 = icmp eq i8 %i.aoj, 0
  %i.aok = select i1 %.not599, i8 0, i8 %i.ajz
  store i8 %i.aok, ptr %i.aoh, align 1
  %.not701 = icmp eq i32 %.16.lcssa, 3
  br i1 %.not701, label %.thread681, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.aol = getelementptr inbounds nuw i8, ptr %.4.lcssa, i64 3
  %i.aom = load i8, ptr %.2.lcssa, align 1
  %i.aon = and i8 %i.aom, 16
  %.not600 = icmp eq i8 %i.aon, 0
  %i.aoo = select i1 %.not600, i8 0, i8 %i.ajz
  store i8 %i.aoo, ptr %i.aol, align 1
  %i.aop = icmp samesign ugt i32 %.16.lcssa, 4
  br i1 %i.aop, label %bb.at, label %.thread681

bb.at:                                            ; preds = %bb.as
  %i.aoq = getelementptr inbounds nuw i8, ptr %.4.lcssa, i64 4
  %i.aor = load i8, ptr %.2.lcssa, align 1
  %i.aos = and i8 %i.aor, 8
  %.not601 = icmp eq i8 %i.aos, 0
  %i.aot = select i1 %.not601, i8 0, i8 %i.ajz
  store i8 %i.aot, ptr %i.aoq, align 1
  %.not702 = icmp eq i32 %.16.lcssa, 5
  br i1 %.not702, label %.thread681, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.aou = getelementptr inbounds nuw i8, ptr %.4.lcssa, i64 5
  %i.aov = load i8, ptr %.2.lcssa, align 1
  %i.aow = and i8 %i.aov, 4
  %.not602 = icmp eq i8 %i.aow, 0
  %i.aox = select i1 %.not602, i8 0, i8 %i.ajz
  store i8 %i.aox, ptr %i.aou, align 1
  %i.aoy = icmp eq i32 %.16.lcssa, 7
  br i1 %i.aoy, label %bb.av, label %.thread681

bb.av:                                            ; preds = %bb.au
  %i.aoz = getelementptr inbounds nuw i8, ptr %.4.lcssa, i64 6
  %i.apa = load i8, ptr %.2.lcssa, align 1
  %i.apb = and i8 %i.apa, 2
  %.not603 = icmp eq i8 %i.apb, 0
  %i.apc = select i1 %.not603, i8 0, i8 %i.ajz
  store i8 %i.apc, ptr %i.aoz, align 1
  br label %.thread681

.thread681:                                       ; preds = %._crit_edge847, %bb.ap, %bb.aq, %bb.ar, %bb.as, %bb.at, %._crit_edge855, %bb.am, %bb.ak, %bb.ao, %bb.an, %bb.au, %bb.av, %._crit_edge863, %bb.al
  br i1 %.not611, label %.loopexit, label %bb.aw

bb.aw:                                            ; preds = %.thread681
  %i.apd = load ptr, ptr %i.u, align 8
  %i.ape = getelementptr inbounds nuw i8, ptr %i.apd, i64 %i.aju ; 16 uses
  br i1 %i.aje, label %.preheader, label %.preheader707

.preheader707:                                    ; preds = %bb.aw
  br i1 %i.ajf, label %.lr.ph869.preheader, label %.loopexit

.lr.ph869.preheader:                              ; preds = %.preheader707
  br i1 %lcmp.mod1669.not.not, label %.lr.ph869.prol, label %.lr.ph869.prol.loopexit

.lr.ph869.prol:                                   ; preds = %.lr.ph869.preheader
  %i.apf = getelementptr inbounds nuw i8, ptr %i.ape, i64 %i.ajn ; 4 uses
  %i.apg = getelementptr inbounds nuw i8, ptr %i.apf, i64 3
  store i8 -1, ptr %i.apg, align 1
  %i.aph = getelementptr inbounds nuw i8, ptr %i.ape, i64 %i.ajo ; 3 uses
  %i.api = getelementptr inbounds nuw i8, ptr %i.aph, i64 2
  %i.apj = load i8, ptr %i.api, align 1
  %i.apk = getelementptr inbounds nuw i8, ptr %i.apf, i64 2
  store i8 %i.apj, ptr %i.apk, align 1
  %i.apl = getelementptr inbounds nuw i8, ptr %i.aph, i64 1
  %i.apm = load i8, ptr %i.apl, align 1
  %i.apn = getelementptr inbounds nuw i8, ptr %i.apf, i64 1
  store i8 %i.apm, ptr %i.apn, align 1
  %i.apo = load i8, ptr %i.aph, align 1
  store i8 %i.apo, ptr %i.apf, align 1
  br label %.lr.ph869.prol.loopexit

.lr.ph869.prol.loopexit:                          ; preds = %.lr.ph869.prol, %.lr.ph869.preheader
  %indvars.iv980.unr = phi i64 [ %i.ajg, %.lr.ph869.preheader ], [ %indvars.iv.next981.prol, %.lr.ph869.prol ]
  br i1 %i.ajp, label %.loopexit, label %.lr.ph869

.preheader:                                       ; preds = %bb.aw
  br i1 %i.ajf, label %.lr.ph872.preheader, label %.loopexit

.lr.ph872.preheader:                              ; preds = %.preheader
  br i1 %lcmp.mod1672.not, label %.lr.ph872.prol.loopexit, label %.lr.ph872.prol

.lr.ph872.prol:                                   ; preds = %.lr.ph872.preheader, %.lr.ph872.prol
  %indvars.iv983.prol = phi i64 [ %indvars.iv.next984.prol, %.lr.ph872.prol ], [ %i.ajg, %.lr.ph872.preheader ] ; 3 uses
  %prol.iter1673 = phi i64 [ %prol.iter1673.next, %.lr.ph872.prol ], [ 0, %.lr.ph872.preheader ]
  %i.app = shl nuw nsw i64 %indvars.iv983.prol, 1
  %i.apq = getelementptr inbounds nuw i8, ptr %i.ape, i64 %i.app ; 2 uses
  %i.apr = getelementptr inbounds nuw i8, ptr %i.apq, i64 1
  store i8 -1, ptr %i.apr, align 1
  %i.aps = getelementptr inbounds nuw i8, ptr %i.ape, i64 %indvars.iv983.prol
  %i.apt = load i8, ptr %i.aps, align 1
  store i8 %i.apt, ptr %i.apq, align 1
  %indvars.iv.next984.prol = add nsw i64 %indvars.iv983.prol, -1 ; 2 uses
  %prol.iter1673.next = add i64 %prol.iter1673, 1 ; 2 uses
  %prol.iter1673.cmp.not = icmp eq i64 %prol.iter1673.next, %xtraiter1671
  br i1 %prol.iter1673.cmp.not, label %.lr.ph872.prol.loopexit, label %.lr.ph872.prol, !llvm.loop !354

.lr.ph872.prol.loopexit:                          ; preds = %.lr.ph872.prol, %.lr.ph872.preheader
  %indvars.iv983.unr = phi i64 [ %i.ajg, %.lr.ph872.preheader ], [ %indvars.iv.next984.prol, %.lr.ph872.prol ]
  br i1 %i.ajq, label %.loopexit, label %.lr.ph872

.lr.ph872:                                        ; preds = %.lr.ph872.prol.loopexit, %.lr.ph872
  %indvars.iv983 = phi i64 [ %indvars.iv.next984.3, %.lr.ph872 ], [ %indvars.iv983.unr, %.lr.ph872.prol.loopexit ] ; 6 uses
  %i.apu = shl nuw nsw i64 %indvars.iv983, 1
  %i.apv = getelementptr inbounds nuw i8, ptr %i.ape, i64 %i.apu ; 2 uses
  %i.apw = getelementptr inbounds nuw i8, ptr %i.apv, i64 1
  store i8 -1, ptr %i.apw, align 1
  %i.apx = getelementptr inbounds nuw i8, ptr %i.ape, i64 %indvars.iv983
  %i.apy = load i8, ptr %i.apx, align 1
  store i8 %i.apy, ptr %i.apv, align 1
  %indvars.iv.next984 = add nsw i64 %indvars.iv983, -1 ; 2 uses
  %i.apz = shl nuw nsw i64 %indvars.iv.next984, 1
  %i.aqa = getelementptr inbounds nuw i8, ptr %i.ape, i64 %i.apz ; 2 uses
  %i.aqb = getelementptr inbounds nuw i8, ptr %i.aqa, i64 1
  store i8 -1, ptr %i.aqb, align 1
  %i.aqc = getelementptr inbounds nuw i8, ptr %i.ape, i64 %indvars.iv.next984
  %i.aqd = load i8, ptr %i.aqc, align 1
  store i8 %i.aqd, ptr %i.aqa, align 1
  %indvars.iv.next984.1 = add nsw i64 %indvars.iv983, -2 ; 2 uses
  %i.aqe = shl nuw nsw i64 %indvars.iv.next984.1, 1
  %i.aqf = getelementptr inbounds nuw i8, ptr %i.ape, i64 %i.aqe ; 2 uses
  %i.aqg = getelementptr inbounds nuw i8, ptr %i.aqf, i64 1
  store i8 -1, ptr %i.aqg, align 1
  %i.aqh = getelementptr inbounds nuw i8, ptr %i.ape, i64 %indvars.iv.next984.1
  %i.aqi = load i8, ptr %i.aqh, align 1
  store i8 %i.aqi, ptr %i.aqf, align 1
  %indvars.iv.next984.2 = add nsw i64 %indvars.iv983, -3 ; 3 uses
  %i.aqj = shl nuw nsw i64 %indvars.iv.next984.2, 1
  %i.aqk = getelementptr inbounds nuw i8, ptr %i.ape, i64 %i.aqj ; 2 uses
  %i.aql = getelementptr inbounds nuw i8, ptr %i.aqk, i64 1
  store i8 -1, ptr %i.aql, align 1
  %i.aqm = getelementptr inbounds nuw i8, ptr %i.ape, i64 %indvars.iv.next984.2
  %i.aqn = load i8, ptr %i.aqm, align 1
  store i8 %i.aqn, ptr %i.aqk, align 1
  %indvars.iv.next984.3 = add nsw i64 %indvars.iv983, -4
  %.not1047.3 = icmp eq i64 %indvars.iv.next984.2, 0
  br i1 %.not1047.3, label %.loopexit, label %.lr.ph872

.lr.ph869:                                        ; preds = %.lr.ph869.prol.loopexit, %.lr.ph869
  %indvars.iv980 = phi i64 [ %indvars.iv.next981.1, %.lr.ph869 ], [ %indvars.iv980.unr, %.lr.ph869.prol.loopexit ] ; 4 uses
  %i.aqo = shl nuw nsw i64 %indvars.iv980, 2
  %i.aqp = getelementptr inbounds nuw i8, ptr %i.ape, i64 %i.aqo ; 4 uses
  %i.aqq = getelementptr inbounds nuw i8, ptr %i.aqp, i64 3
  store i8 -1, ptr %i.aqq, align 1
  %i.aqr = mul nuw nsw i64 %indvars.iv980, 3
  %i.aqs = getelementptr inbounds nuw i8, ptr %i.ape, i64 %i.aqr ; 3 uses
  %i.aqt = getelementptr inbounds nuw i8, ptr %i.aqs, i64 2
  %i.aqu = load i8, ptr %i.aqt, align 1
  %i.aqv = getelementptr inbounds nuw i8, ptr %i.aqp, i64 2
  store i8 %i.aqu, ptr %i.aqv, align 1
  %i.aqw = getelementptr inbounds nuw i8, ptr %i.aqs, i64 1
  %i.aqx = load i8, ptr %i.aqw, align 1
  %i.aqy = getelementptr inbounds nuw i8, ptr %i.aqp, i64 1
  store i8 %i.aqx, ptr %i.aqy, align 1
  %i.aqz = load i8, ptr %i.aqs, align 1
  store i8 %i.aqz, ptr %i.aqp, align 1
  %indvars.iv.next981 = add nsw i64 %indvars.iv980, -1 ; 3 uses
  %i.ara = shl nuw nsw i64 %indvars.iv.next981, 2
  %i.arb = getelementptr inbounds nuw i8, ptr %i.ape, i64 %i.ara ; 4 uses
  %i.arc = getelementptr inbounds nuw i8, ptr %i.arb, i64 3
  store i8 -1, ptr %i.arc, align 1
  %i.ard = mul nuw nsw i64 %indvars.iv.next981, 3
  %i.are = getelementptr inbounds nuw i8, ptr %i.ape, i64 %i.ard ; 3 uses
  %i.arf = getelementptr inbounds nuw i8, ptr %i.are, i64 2
  %i.arg = load i8, ptr %i.arf, align 1
  %i.arh = getelementptr inbounds nuw i8, ptr %i.arb, i64 2
  store i8 %i.arg, ptr %i.arh, align 1
  %i.ari = getelementptr inbounds nuw i8, ptr %i.are, i64 1
  %i.arj = load i8, ptr %i.ari, align 1
  %i.ark = getelementptr inbounds nuw i8, ptr %i.arb, i64 1
  store i8 %i.arj, ptr %i.ark, align 1
  %i.arl = load i8, ptr %i.are, align 1
  store i8 %i.arl, ptr %i.arb, align 1
  %indvars.iv.next981.1 = add nsw i64 %indvars.iv980, -2
  %.not1046.1 = icmp eq i64 %indvars.iv.next981, 0
  br i1 %.not1046.1, label %.loopexit, label %.lr.ph869

.loopexit:                                        ; preds = %.lr.ph869.prol.loopexit, %.lr.ph869, %.lr.ph872.prol.loopexit, %.lr.ph872, %.preheader707, %.preheader, %.thread681
  %indvars.iv.next987 = add nuw nsw i64 %indvars.iv986, 1 ; 2 uses
  %exitcond990.not = icmp eq i64 %indvars.iv.next987, %wide.trip.count989
  br i1 %exitcond990.not, label %.loopexit713, label %bb.ai

bb.ax:                                            ; preds = %._crit_edge837
  br i1 %i.a, label %bb.ay, label %.loopexit713

bb.ay:                                            ; preds = %._crit_edge837.thread, %bb.ax
  %i.arm = mul i32 %i.c, %5                       ; 4 uses
  %.not877 = icmp eq i32 %i.arm, 0
  br i1 %.not877, label %.loopexit713, label %.lr.ph842.preheader

.lr.ph842.preheader:                              ; preds = %bb.ay
  %i.arn = load ptr, ptr %i.u, align 8            ; 2 uses
  %xtraiter1674 = and i32 %i.arm, 3               ; 3 uses
  %i.aro = icmp ult i32 %i.arm, 4
  br i1 %i.aro, label %.lr.ph842.epil.preheader, label %.lr.ph842.preheader.new

.lr.ph842.preheader.new:                          ; preds = %.lr.ph842.preheader
  %unroll_iter1678 = and i32 %i.arm, -4
  br label %.lr.ph842

.lr.ph842:                                        ; preds = %.lr.ph842, %.lr.ph842.preheader.new
  %.0840 = phi ptr [ %i.arn, %.lr.ph842.preheader.new ], [ %i.asu, %.lr.ph842 ] ; 10 uses
  %niter1679 = phi i32 [ 0, %.lr.ph842.preheader.new ], [ %niter1679.next.3, %.lr.ph842 ]
  %i.arp = load i8, ptr %.0840, align 1
  %i.arq = zext i8 %i.arp to i16
  %i.arr = shl nuw i16 %i.arq, 8
  %i.ars = getelementptr inbounds nuw i8, ptr %.0840, i64 1
  %i.art = load i8, ptr %i.ars, align 1
  %i.aru = zext i8 %i.art to i16
  %i.arv = or disjoint i16 %i.arr, %i.aru
  store i16 %i.arv, ptr %.0840, align 2
  %i.arw = getelementptr i8, ptr %.0840, i64 2    ; 2 uses
  %i.arx = load i8, ptr %i.arw, align 2
  %i.ary = zext i8 %i.arx to i16
  %i.arz = shl nuw i16 %i.ary, 8
  %i.asa = getelementptr i8, ptr %.0840, i64 3
  %i.asb = load i8, ptr %i.asa, align 1
  %i.asc = zext i8 %i.asb to i16
  %i.asd = or disjoint i16 %i.arz, %i.asc
  store i16 %i.asd, ptr %i.arw, align 2
  %i.ase = getelementptr i8, ptr %.0840, i64 4    ; 2 uses
  %i.asf = load i8, ptr %i.ase, align 2
  %i.asg = zext i8 %i.asf to i16
  %i.ash = shl nuw i16 %i.asg, 8
  %i.asi = getelementptr i8, ptr %.0840, i64 5
  %i.asj = load i8, ptr %i.asi, align 1
  %i.ask = zext i8 %i.asj to i16
  %i.asl = or disjoint i16 %i.ash, %i.ask
  store i16 %i.asl, ptr %i.ase, align 2
  %i.asm = getelementptr i8, ptr %.0840, i64 6    ; 2 uses
  %i.asn = load i8, ptr %i.asm, align 2
  %i.aso = zext i8 %i.asn to i16
  %i.asp = shl nuw i16 %i.aso, 8
  %i.asq = getelementptr i8, ptr %.0840, i64 7
  %i.asr = load i8, ptr %i.asq, align 1
  %i.ass = zext i8 %i.asr to i16
  %i.ast = or disjoint i16 %i.asp, %i.ass
  store i16 %i.ast, ptr %i.asm, align 2
  %i.asu = getelementptr i8, ptr %.0840, i64 8    ; 2 uses
  %niter1679.next.3 = add i32 %niter1679, 4       ; 2 uses
  %niter1679.ncmp.3 = icmp eq i32 %niter1679.next.3, %unroll_iter1678
  br i1 %niter1679.ncmp.3, label %.loopexit713.loopexit.unr-lcssa, label %.lr.ph842

.loopexit713.sink.split:                          ; preds = %bb.k, %bb.i, %bb.h, %_m3dstbi__mul2sizes_valid.exit12.i, %_m3dstbi__mul2sizes_valid.exit.i, %bb.d, %_m3dstbi__mul2sizes_valid.exit.thread15.i, %_m3dstbi__malloc_mad3.exit, %_m3dstbi__malloc_mad3.exit.thread
  %.str.319.sink = phi ptr [ @.str.319, %bb.i ], [ @.str.319, %bb.h ], [ @.str.319, %_m3dstbi__mul2sizes_valid.exit12.i ], [ @.str.320, %_m3dstbi__malloc_mad3.exit ], [ @.str.320, %_m3dstbi__malloc_mad3.exit.thread ], [ @.str.319, %_m3dstbi__mul2sizes_valid.exit.thread15.i ], [ @.str.319, %bb.d ], [ @.str.319, %_m3dstbi__mul2sizes_valid.exit.i ], [ @.str.319, %bb.k ]
  store ptr %.str.319.sink, ptr @_m3dstbi__g_failure_reason, align 8
  br label %.loopexit713

.loopexit713.loopexit.unr-lcssa:                  ; preds = %.lr.ph842
  %lcmp.mod1676.not = icmp eq i32 %xtraiter1674, 0
  br i1 %lcmp.mod1676.not, label %.loopexit713, label %.lr.ph842.epil.preheader

.lr.ph842.epil.preheader:                         ; preds = %.loopexit713.loopexit.unr-lcssa, %.lr.ph842.preheader
  %.0840.epil.init = phi ptr [ %i.arn, %.lr.ph842.preheader ], [ %i.asu, %.loopexit713.loopexit.unr-lcssa ]
  %lcmp.mod1677 = icmp ne i32 %xtraiter1674, 0
  tail call void @llvm.assume(i1 %lcmp.mod1677)
  br label %.lr.ph842.epil

.lr.ph842.epil:                                   ; preds = %.lr.ph842.epil, %.lr.ph842.epil.preheader
  %.0840.epil = phi ptr [ %i.atc, %.lr.ph842.epil ], [ %.0840.epil.init, %.lr.ph842.epil.preheader ] ; 4 uses
  %epil.iter1675 = phi i32 [ %epil.iter1675.next, %.lr.ph842.epil ], [ 0, %.lr.ph842.epil.preheader ]
  %i.asv = load i8, ptr %.0840.epil, align 1
  %i.asw = zext i8 %i.asv to i16
  %i.asx = shl nuw i16 %i.asw, 8
  %i.asy = getelementptr inbounds nuw i8, ptr %.0840.epil, i64 1
  %i.asz = load i8, ptr %i.asy, align 1
  %i.ata = zext i8 %i.asz to i16
  %i.atb = or disjoint i16 %i.asx, %i.ata
  store i16 %i.atb, ptr %.0840.epil, align 2
  %i.atc = getelementptr i8, ptr %.0840.epil, i64 2
  %epil.iter1675.next = add i32 %epil.iter1675, 1 ; 2 uses
  %epil.iter1675.cmp.not = icmp eq i32 %epil.iter1675.next, %xtraiter1674
  br i1 %epil.iter1675.cmp.not, label %.loopexit713, label %.lr.ph842.epil, !llvm.loop !355

.loopexit713:                                     ; preds = %.loopexit, %.loopexit713.loopexit.unr-lcssa, %.lr.ph842.epil, %.loopexit713.sink.split, %._crit_edge837.thread, %bb.ay, %bb.ax
  %.2578 = phi i32 [ 1, %bb.ax ], [ 1, %bb.ay ], [ 1, %._crit_edge837.thread ], [ 0, %.loopexit713.sink.split ], [ 1, %.loopexit713.loopexit.unr-lcssa ], [ 1, %.lr.ph842.epil ], [ 1, %.loopexit ]
  ret i32 %.2578
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #47

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #32

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #41

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr noundef captures(none)) local_unnamed_addr #32

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #48

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -1, 2) i32 @par_shapes__cmp1(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #21 {
bb.a:
  %.b = load i1, ptr @par_shapes__sort_context.1, align 8 ; 2 uses
  %i.a = select i1 %.b, i32 20, i32 0             ; 2 uses
  %i.b = load i16, ptr %0, align 2
  %i.c = load ptr, ptr @par_shapes__sort_context.0, align 8 ; 2 uses
  %i.d = zext i16 %i.b to i64
  %.idx = mul nuw nsw i64 %i.d, 12
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx ; 3 uses
  %i.f = load float, ptr %i.e, align 4
  %i.g = fptosi float %i.f to i32
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.i = load float, ptr %i.h, align 4
  %i.j = fptosi float %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.l = load float, ptr %i.k, align 4
  %i.m = fptosi float %i.l to i32
  %i.n = mul nsw i32 %i.a, %i.j
  %i.o = add nsw i32 %i.n, %i.g
  %i.p = select i1 %.b, i32 400, i32 0            ; 2 uses
  %i.q = mul nsw i32 %i.p, %i.m
  %i.r = add nsw i32 %i.o, %i.q
  %i.s = load i16, ptr %1, align 2
  %i.t = zext i16 %i.s to i64
  %.idx28 = mul nuw nsw i64 %i.t, 12
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx28 ; 3 uses
  %i.v = load float, ptr %i.u, align 4
  %i.w = fptosi float %i.v to i32
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.y = load float, ptr %i.x, align 4
  %i.z = fptosi float %i.y to i32
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ab = load float, ptr %i.aa, align 4
  %i.ac = fptosi float %i.ab to i32
  %i.ad = mul nsw i32 %i.a, %i.z
  %i.ae = add nsw i32 %i.ad, %i.w
  %i.af = mul nsw i32 %i.p, %i.ac
  %i.ag = add nsw i32 %i.ae, %i.af
  %.0 = tail call i32 @llvm.scmp.i32.i32(i32 %i.r, i32 %i.ag)
  ret i32 %.0
}

declare void @LoadTexture(ptr dead_on_unwind writable sret(%struct.Texture) align 4, ptr noundef) local_unnamed_addr #34

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @acosf(float noundef) local_unnamed_addr #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #19

declare ptr @LoadFileText(ptr noundef) local_unnamed_addr #34

declare ptr @GetWorkingDirectory() local_unnamed_addr #34

declare ptr @GetDirectoryPath(ptr noundef) local_unnamed_addr #34

; Function Attrs: nounwind
declare i32 @chdir(ptr noundef) local_unnamed_addr #41

declare void @UnloadFileText(ptr noundef) local_unnamed_addr #34

declare ptr @MemAlloc(i32 noundef) local_unnamed_addr #34

declare void @MemFree(ptr noundef) local_unnamed_addr #34

declare ptr @TextFormat(ptr noundef, ...) local_unnamed_addr #34

; Function Attrs: nounwind uwtable
define internal fastcc void @BuildPoseFromParentJoints(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef captures(none) %2) unnamed_addr #33 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.e, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.e ] ; 5 uses
  %i.b = getelementptr inbounds nuw [36 x i8], ptr %0, i64 %indvars.iv
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 5 uses
  %i.d = load i32, ptr %i.c, align 4              ; 4 uses
  %i.e = icmp sgt i32 %i.d, -1
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %.lr.ph
  %i.f = zext nneg i32 %i.d to i64
  %i.g = icmp samesign ult i64 %indvars.iv, %i.f
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = trunc nuw nsw i64 %indvars.iv to i32
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.337, i32 noundef %i.h, i32 noundef %i.d) #54
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw [40 x i8], ptr %2, i64 %indvars.iv ; 9 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 12 ; 2 uses
  %i.k = zext nneg i32 %i.d to i64
  %i.l = getelementptr inbounds nuw [40 x i8], ptr %2, i64 %i.k ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.n = load <2 x float>, ptr %i.m, align 4      ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %i.p = load <2 x float>, ptr %i.o, align 4      ; 5 uses
  %i.q = load <2 x float>, ptr %i.j, align 4      ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 20 ; 2 uses
  %i.s = load <2 x float>, ptr %i.r, align 4      ; 5 uses
  %i.t = shufflevector <2 x float> %i.n, <2 x float> %i.p, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.u = fneg <2 x float> %i.t                    ; 2 uses
  %i.v = shufflevector <2 x float> %i.p, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.w = fmul <2 x float> %i.v, %i.q
  %i.x = shufflevector <2 x float> %i.s, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.y = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.n, <2 x float> %i.x, <2 x float> %i.w)
  %i.z = shufflevector <2 x float> %i.s, <2 x float> %i.q, <2 x i32> <i32 0, i32 2>
  %i.aa = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.t, <2 x float> %i.z, <2 x float> %i.y)
  %i.ab = shufflevector <2 x float> %i.p, <2 x float> %i.n, <2 x i32> <i32 0, i32 2>
  %i.ac = fneg <2 x float> %i.ab
  %i.ad = shufflevector <2 x float> %i.q, <2 x float> %i.s, <2 x i32> <i32 1, i32 2>
  %i.ae = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ac, <2 x float> %i.ad, <2 x float> %i.aa)
  %i.af = shufflevector <2 x float> %i.p, <2 x float> %i.n, <2 x i32> <i32 1, i32 2>
  %i.ag = fneg <2 x float> %i.q
  %i.ah = shufflevector <2 x float> %i.s, <2 x float> %i.ag, <2 x i32> <i32 0, i32 2>
  %i.ai = fmul <2 x float> %i.af, %i.ah
  %i.aj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.p, <2 x float> %i.x, <2 x float> %i.ai)
  %i.ak = shufflevector <2 x float> %i.n, <2 x float> %i.u, <2 x i32> <i32 0, i32 2>
  %i.al = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.am = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ak, <2 x float> %i.al, <2 x float> %i.aj)
  %i.an = shufflevector <2 x float> %i.q, <2 x float> %i.s, <2 x i32> <i32 0, i32 2>
  %i.ao = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.u, <2 x float> %i.an, <2 x float> %i.am)
  store <2 x float> %i.ae, ptr %i.j, align 4
  store <2 x float> %i.ao, ptr %i.r, align 4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.i, i64 28 ; 2 uses
  %i.aq = load i32, ptr %i.c, align 4
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds [40 x i8], ptr %2, i64 %i.ar ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 28
  %.sroa.030.0.copyload = load <2 x float>, ptr %i.ap, align 4
  %.sroa.231.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 36 ; 2 uses
  %.sroa.231.0.copyload = load float, ptr %.sroa.231.0..sroa_idx, align 4
  %.sroa.028.0.copyload = load <2 x float>, ptr %i.at, align 4
  %.sroa.229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 36
  %.sroa.229.0.copyload = load float, ptr %.sroa.229.0..sroa_idx, align 4
  %i.au = fmul <2 x float> %.sroa.030.0.copyload, %.sroa.028.0.copyload
  %i.av = fmul float %.sroa.231.0.copyload, %.sroa.229.0.copyload
  store <2 x float> %i.au, ptr %i.ap, align 4
  store float %i.av, ptr %.sroa.231.0..sroa_idx, align 4
  %i.aw = load i32, ptr %i.c, align 4
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds [40 x i8], ptr %2, i64 %i.ax ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 28
  %.sroa.020.0.copyload = load <2 x float>, ptr %i.i, align 4
  %.sroa.221.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  %.sroa.221.0.copyload = load float, ptr %.sroa.221.0..sroa_idx, align 4
  %.sroa.018.0.copyload = load <2 x float>, ptr %i.az, align 4
  %.sroa.219.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 36
  %.sroa.219.0.copyload = load float, ptr %.sroa.219.0..sroa_idx, align 4
  %i.ba = fmul <2 x float> %.sroa.020.0.copyload, %.sroa.018.0.copyload ; 5 uses
  %i.bb = fmul float %.sroa.221.0.copyload, %.sroa.219.0.copyload ; 3 uses
  store <2 x float> %i.ba, ptr %i.i, align 4
  store float %i.bb, ptr %.sroa.221.0..sroa_idx, align 4
  %i.bc = load i32, ptr %i.c, align 4
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds [40 x i8], ptr %2, i64 %i.bd ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  %i.bg = load <2 x float>, ptr %i.bf, align 4    ; 7 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 20
  %i.bi = load <2 x float>, ptr %i.bh, align 4    ; 8 uses
  %.sroa.25.8.vec.extract.i = extractelement <2 x float> %i.bi, i64 0 ; 3 uses
  %i.bj = extractelement <2 x float> %i.ba, i64 1
  %i.bk = extractelement <2 x float> %i.ba, i64 0
  %.sroa.01.4.vec.extract.i = extractelement <2 x float> %i.bg, i64 1 ; 8 uses
  %i.bl = fneg float %.sroa.01.4.vec.extract.i    ; 2 uses
end_hunk_1
begin_hunk_2_@LoadImageFromCgltfImage:bb.a
bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.s = load i8, ptr %i.r, align 1
  %i.t = icmp eq i8 %i.s, 58
  br i1 %i.t, label %.preheader, label %bb.p

.preheader:                                       ; preds = %bb.h, %bb.i
  %i.u = phi i8 [ %.pre, %bb.i ], [ 100, %bb.h ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.i ], [ 0, %bb.h ] ; 3 uses
  switch i8 %i.u, label %bb.i [
    i8 0, label %bb.j
    i8 44, label %bb.k
  ]

bb.i:                                             ; preds = %.preheader
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv.next
  %.pre = load i8, ptr %.phi.trans.insert, align 1
  br label %.preheader

bb.j:                                             ; preds = %.preheader
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.369) #54
  br label %bb.aa

bb.k:                                             ; preds = %.preheader
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 1 ; 2 uses
  %i.x = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.w) #51
  %sext = shl i64 %i.x, 32
  %i.y = ashr exact i64 %sext, 32
  %invariant.gep = getelementptr i8, ptr %i.d, i64 %indvars.iv
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %indvars.iv82 = phi i64 [ %indvars.iv.next83, %bb.l ], [ %i.y, %bb.k ] ; 3 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv82
  %i.z = load i8, ptr %gep, align 1
  %i.aa = icmp eq i8 %i.z, 61
  %indvars.iv.next83 = add nsw i64 %indvars.iv82, -1
  br i1 %i.aa, label %bb.l, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = trunc nsw i64 %indvars.iv82 to i32
  %i.ac = mul nsw i32 %i.ab, 3
  %i.ad = sdiv i32 %i.ac, 4                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #54
  store ptr null, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #54
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %3, i8 0, i64 64, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr @LoadFileGLTFCallback, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr @ReleaseFileGLTFCallback, ptr %i.af, align 8
  %i.ag = sext i32 %i.ad to i64
  %i.ah = call i32 @cgltf_load_buffer_base64(ptr noundef nonnull %3, i64 noundef %i.ag, ptr noundef nonnull %i.w, ptr noundef nonnull %i.a)
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #54
  %i.aj = load ptr, ptr %i.a, align 8             ; 2 uses
  call void @LoadImageFromMemory(ptr dead_on_unwind nonnull writable sret(%struct.Image) align 8 %4, ptr noundef nonnull @.str.9, ptr noundef %i.aj, i32 noundef %i.ad) #54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #54
  call void @free(ptr noundef %i.aj) #54
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #54
  br label %bb.aa

bb.p:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #54
  %i.ak = tail call ptr (ptr, ...) @TextFormat(ptr noundef nonnull @.str.335, ptr noundef %2, ptr noundef nonnull %i.d) #54
  call void @LoadImage(ptr dead_on_unwind nonnull writable sret(%struct.Image) align 8 %5, ptr noundef %i.ak) #54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #54
  br label %bb.aa

bb.q:                                             ; preds = %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.am = load ptr, ptr %i.al, align 8            ; 5 uses
  %.not65 = icmp eq ptr %i.am, null
  br i1 %.not65, label %bb.aa, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8            ; 28 uses
  %.not66 = icmp eq ptr %i.aq, null
  br i1 %.not66, label %bb.aa, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.as = load i64, ptr %i.ar, align 8            ; 14 uses
  %i.at = tail call noalias ptr @malloc(i64 noundef %i.as) #56 ; 8 uses
  %.not76 = icmp eq i64 %i.as, 0
  br i1 %.not76, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.s
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = trunc i64 %i.av to i32
  %spec.select = tail call i32 @llvm.umax.i32(i32 %i.aw, i32 1)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ay = load i64, ptr %i.ax, align 8
  %sext92 = shl i64 %i.ay, 32
  %i.az = ashr exact i64 %sext92, 32              ; 9 uses
  %i.ba = sext i32 %spec.select to i64            ; 28 uses
  %min.iters.check = icmp ult i64 %i.as, 8
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.bb = add i64 %i.as, -1                       ; 2 uses
  %i.bc = and i64 %i.bb, 4294967295
  %i.bd = icmp eq i64 %i.bc, 4294967295
  %i.be = icmp ugt i64 %i.bb, 4294967295
  %i.bf = or i1 %i.bd, %i.be
  br i1 %i.bf, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %scevgep = getelementptr i8, ptr %i.at, i64 %i.as
  %i.bg = add nsw i64 %i.as, -1
  %i.bh = mul i64 %i.bg, %i.ba
  %i.bi = getelementptr i8, ptr %i.aq, i64 %i.bh
  %scevgep95 = getelementptr i8, ptr %i.bi, i64 %i.az ; 4 uses
  %scevgep96 = getelementptr i8, ptr %i.aq, i64 %i.az ; 4 uses
  %i.bj = icmp ult ptr %scevgep95, %scevgep96
  %umin = select i1 %i.bj, ptr %scevgep95, ptr %scevgep96
  %i.bk = icmp ugt ptr %scevgep95, %scevgep96
  %umax = select i1 %i.bk, ptr %scevgep95, ptr %scevgep96
  %scevgep97 = getelementptr i8, ptr %umax, i64 1
  %bound0 = icmp ult ptr %i.at, %scevgep97
  %bound1 = icmp ult ptr %umin, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check98 = icmp ult i64 %i.as, 16
  br i1 %min.iters.check98, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bl = and i64 %i.as, 8
  %n.vec = and i64 %i.as, 8589934576              ; 6 uses
  %i.bm = mul i64 %n.vec, %i.ba
  %i.bn = add i64 %i.az, %i.bm
  %i.bo = trunc i64 %n.vec to i32
  %i.bp = shl nsw i64 %i.ba, 1
  %i.bq = mul nsw i64 %i.ba, 3
  %i.br = shl nsw i64 %i.ba, 2
  %i.bs = mul nsw i64 %i.ba, 5
  %i.bt = mul nsw i64 %i.ba, 6
  %i.bu = mul nsw i64 %i.ba, 7
  %i.bv = shl nsw i64 %i.ba, 3
  %i.bw = mul nsw i64 %i.ba, 9
  %i.bx = mul nsw i64 %i.ba, 10
  %i.by = mul nsw i64 %i.ba, 11
  %i.bz = mul nsw i64 %i.ba, 12
  %i.ca = mul nsw i64 %i.ba, 13
  %i.cb = mul nsw i64 %i.ba, 14
  %i.cc = mul nsw i64 %i.ba, 15
  %invariant.gep109 = getelementptr i8, ptr %i.aq, i64 %i.ba
  %invariant.gep111 = getelementptr i8, ptr %i.aq, i64 %i.bp
  %invariant.gep113 = getelementptr i8, ptr %i.aq, i64 %i.bq
  %invariant.gep115 = getelementptr i8, ptr %i.aq, i64 %i.br
  %invariant.gep117 = getelementptr i8, ptr %i.aq, i64 %i.bs
  %invariant.gep119 = getelementptr i8, ptr %i.aq, i64 %i.bt
  %invariant.gep121 = getelementptr i8, ptr %i.aq, i64 %i.bu
  %invariant.gep123 = getelementptr i8, ptr %i.aq, i64 %i.bv
  %invariant.gep125 = getelementptr i8, ptr %i.aq, i64 %i.bw
  %invariant.gep127 = getelementptr i8, ptr %i.aq, i64 %i.bx
  %invariant.gep129 = getelementptr i8, ptr %i.aq, i64 %i.by
  %invariant.gep131 = getelementptr i8, ptr %i.aq, i64 %i.bz
  %invariant.gep133 = getelementptr i8, ptr %i.aq, i64 %i.ca
  %invariant.gep135 = getelementptr i8, ptr %i.aq, i64 %i.cb
  %invariant.gep137 = getelementptr i8, ptr %i.aq, i64 %i.cc
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cd = mul i64 %index, %i.ba
  %i.ce = add i64 %i.az, %i.cd                    ; 16 uses
  %i.cf = getelementptr inbounds i8, ptr %i.aq, i64 %i.ce
  %gep110 = getelementptr i8, ptr %invariant.gep109, i64 %i.ce
  %gep112 = getelementptr i8, ptr %invariant.gep111, i64 %i.ce
  %gep114 = getelementptr i8, ptr %invariant.gep113, i64 %i.ce
  %gep116 = getelementptr i8, ptr %invariant.gep115, i64 %i.ce
  %gep118 = getelementptr i8, ptr %invariant.gep117, i64 %i.ce
  %gep120 = getelementptr i8, ptr %invariant.gep119, i64 %i.ce
  %gep122 = getelementptr i8, ptr %invariant.gep121, i64 %i.ce
  %gep124 = getelementptr i8, ptr %invariant.gep123, i64 %i.ce
  %gep126 = getelementptr i8, ptr %invariant.gep125, i64 %i.ce
  %gep128 = getelementptr i8, ptr %invariant.gep127, i64 %i.ce
  %gep130 = getelementptr i8, ptr %invariant.gep129, i64 %i.ce
  %gep132 = getelementptr i8, ptr %invariant.gep131, i64 %i.ce
  %gep134 = getelementptr i8, ptr %invariant.gep133, i64 %i.ce
  %gep136 = getelementptr i8, ptr %invariant.gep135, i64 %i.ce
  %gep138 = getelementptr i8, ptr %invariant.gep137, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !alias.scope !392
  %i.ch = load i8, ptr %gep110, align 1, !alias.scope !392
  %i.ci = load i8, ptr %gep112, align 1, !alias.scope !392
  %i.cj = load i8, ptr %gep114, align 1, !alias.scope !392
  %i.ck = load i8, ptr %gep116, align 1, !alias.scope !392
  %i.cl = load i8, ptr %gep118, align 1, !alias.scope !392
  %i.cm = load i8, ptr %gep120, align 1, !alias.scope !392
  %i.cn = load i8, ptr %gep122, align 1, !alias.scope !392
  %i.co = load i8, ptr %gep124, align 1, !alias.scope !392
  %i.cp = load i8, ptr %gep126, align 1, !alias.scope !392
  %i.cq = load i8, ptr %gep128, align 1, !alias.scope !392
  %i.cr = load i8, ptr %gep130, align 1, !alias.scope !392
  %i.cs = load i8, ptr %gep132, align 1, !alias.scope !392
  %i.ct = load i8, ptr %gep134, align 1, !alias.scope !392
  %i.cu = load i8, ptr %gep136, align 1, !alias.scope !392
  %i.cv = load i8, ptr %gep138, align 1, !alias.scope !392
  %i.cw = insertelement <16 x i8> poison, i8 %i.cg, i64 0
  %i.cx = insertelement <16 x i8> %i.cw, i8 %i.ch, i64 1
  %i.cy = insertelement <16 x i8> %i.cx, i8 %i.ci, i64 2
  %i.cz = insertelement <16 x i8> %i.cy, i8 %i.cj, i64 3
  %i.da = insertelement <16 x i8> %i.cz, i8 %i.ck, i64 4
  %i.db = insertelement <16 x i8> %i.da, i8 %i.cl, i64 5
  %i.dc = insertelement <16 x i8> %i.db, i8 %i.cm, i64 6
  %i.dd = insertelement <16 x i8> %i.dc, i8 %i.cn, i64 7
  %i.de = insertelement <16 x i8> %i.dd, i8 %i.co, i64 8
  %i.df = insertelement <16 x i8> %i.de, i8 %i.cp, i64 9
  %i.dg = insertelement <16 x i8> %i.df, i8 %i.cq, i64 10
  %i.dh = insertelement <16 x i8> %i.dg, i8 %i.cr, i64 11
  %i.di = insertelement <16 x i8> %i.dh, i8 %i.cs, i64 12
  %i.dj = insertelement <16 x i8> %i.di, i8 %i.ct, i64 13
  %i.dk = insertelement <16 x i8> %i.dj, i8 %i.cu, i64 14
  %i.dl = insertelement <16 x i8> %i.dk, i8 %i.cv, i64 15
  %i.dm = getelementptr inbounds nuw i8, ptr %i.at, i64 %index
  store <16 x i8> %i.dl, ptr %i.dm, align 1, !alias.scope !393, !noalias !392
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dn = icmp eq i64 %index.next, %n.vec
  br i1 %i.dn, label %middle.block, label %vector.body, !llvm.loop !389

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check.not.not = icmp eq i64 %i.bl, 0
  br i1 %min.epilog.iters.check.not.not, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !394

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec100 = and i64 %i.as, 8589934584           ; 5 uses
  %i.do = mul i64 %n.vec100, %i.ba
  %i.dp = add i64 %i.az, %i.do
  %i.dq = trunc i64 %n.vec100 to i32
  %i.dr = shl nsw i64 %i.ba, 1
  %i.ds = mul nsw i64 %i.ba, 3
  %i.dt = shl nsw i64 %i.ba, 2
  %i.du = mul nsw i64 %i.ba, 5
  %i.dv = mul nsw i64 %i.ba, 6
  %i.dw = mul nsw i64 %i.ba, 7
  %invariant.gep139 = getelementptr i8, ptr %i.aq, i64 %i.ba
  %invariant.gep141 = getelementptr i8, ptr %i.aq, i64 %i.dr
  %invariant.gep143 = getelementptr i8, ptr %i.aq, i64 %i.ds
  %invariant.gep145 = getelementptr i8, ptr %i.aq, i64 %i.dt
  %invariant.gep147 = getelementptr i8, ptr %i.aq, i64 %i.du
  %invariant.gep149 = getelementptr i8, ptr %i.aq, i64 %i.dv
  %invariant.gep151 = getelementptr i8, ptr %i.aq, i64 %i.dw
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index101 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next102, %vec.epilog.vector.body ] ; 3 uses
  %i.dx = mul i64 %index101, %i.ba
  %i.dy = add i64 %i.az, %i.dx                    ; 8 uses
  %i.dz = getelementptr inbounds i8, ptr %i.aq, i64 %i.dy
  %gep140 = getelementptr i8, ptr %invariant.gep139, i64 %i.dy
  %gep142 = getelementptr i8, ptr %invariant.gep141, i64 %i.dy
  %gep144 = getelementptr i8, ptr %invariant.gep143, i64 %i.dy
  %gep146 = getelementptr i8, ptr %invariant.gep145, i64 %i.dy
  %gep148 = getelementptr i8, ptr %invariant.gep147, i64 %i.dy
  %gep150 = getelementptr i8, ptr %invariant.gep149, i64 %i.dy
  %gep152 = getelementptr i8, ptr %invariant.gep151, i64 %i.dy
  %i.ea = load i8, ptr %i.dz, align 1, !alias.scope !392
  %i.eb = load i8, ptr %gep140, align 1, !alias.scope !392
  %i.ec = load i8, ptr %gep142, align 1, !alias.scope !392
  %i.ed = load i8, ptr %gep144, align 1, !alias.scope !392
  %i.ee = load i8, ptr %gep146, align 1, !alias.scope !392
  %i.ef = load i8, ptr %gep148, align 1, !alias.scope !392
  %i.eg = load i8, ptr %gep150, align 1, !alias.scope !392
  %i.eh = load i8, ptr %gep152, align 1, !alias.scope !392
  %i.ei = insertelement <8 x i8> poison, i8 %i.ea, i64 0
  %i.ej = insertelement <8 x i8> %i.ei, i8 %i.eb, i64 1
  %i.ek = insertelement <8 x i8> %i.ej, i8 %i.ec, i64 2
  %i.el = insertelement <8 x i8> %i.ek, i8 %i.ed, i64 3
  %i.em = insertelement <8 x i8> %i.el, i8 %i.ee, i64 4
  %i.en = insertelement <8 x i8> %i.em, i8 %i.ef, i64 5
  %i.eo = insertelement <8 x i8> %i.en, i8 %i.eg, i64 6
  %i.ep = insertelement <8 x i8> %i.eo, i8 %i.eh, i64 7
  %i.eq = getelementptr inbounds nuw i8, ptr %i.at, i64 %index101
  store <8 x i8> %i.ep, ptr %i.eq, align 1, !alias.scope !393, !noalias !392
  %index.next102 = add nuw i64 %index101, 8       ; 2 uses
  %i.er = icmp eq i64 %index.next102, %n.vec100
  br i1 %i.er, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !390

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n103 = icmp eq i64 %i.as, %n.vec100
  br i1 %cmp.n103, label %._crit_edge.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.memcheck, %vector.scevcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv85.ph = phi i64 [ %i.az, %iter.check ], [ %i.az, %vector.scevcheck ], [ %i.az, %vector.memcheck ], [ %i.bn, %vec.epilog.iter.check ], [ %i.dp, %vec.epilog.middle.block ]
  %.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.scevcheck ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec100, %vec.epilog.middle.block ]
  %.075.ph = phi i32 [ 0, %iter.check ], [ 0, %vector.scevcheck ], [ 0, %vector.memcheck ], [ %i.bo, %vec.epilog.iter.check ], [ %i.dq, %vec.epilog.middle.block ]
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph, %vec.epilog.middle.block, %middle.block
  %i.es = trunc nuw i64 %i.as to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.s
  %.lcssa = phi i32 [ 0, %bb.s ], [ %i.es, %._crit_edge.loopexit ] ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.eu = load ptr, ptr %i.et, align 8            ; 4 uses
  %i.ev = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.eu, ptr noundef nonnull dereferenceable(11) @.str.370) #51
  %i.ew = icmp eq i32 %i.ev, 0
  br i1 %i.ew, label %bb.u, label %bb.t

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv85 = phi i64 [ %indvars.iv.next86, %.lr.ph ], [ %indvars.iv85.ph, %.lr.ph.preheader ] ; 2 uses
  %i.ex = phi i64 [ %i.fc, %.lr.ph ], [ %.ph, %.lr.ph.preheader ]
  %.075 = phi i32 [ %i.fb, %.lr.ph ], [ %.075.ph, %.lr.ph.preheader ]
  %i.ey = getelementptr inbounds i8, ptr %i.aq, i64 %indvars.iv85
  %i.ez = load i8, ptr %i.ey, align 1
  %i.fa = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ex
  store i8 %i.ez, ptr %i.fa, align 1
  %indvars.iv.next86 = add nsw i64 %indvars.iv85, %i.ba
  %i.fb = add i32 %.075, 1                        ; 2 uses
  %i.fc = zext i32 %i.fb to i64                   ; 2 uses
  %i.fd = icmp ugt i64 %i.as, %i.fc
  br i1 %i.fd, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !391

bb.t:                                             ; preds = %._crit_edge
  %i.fe = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.eu, ptr noundef nonnull dereferenceable(10) @.str.371) #51
  %i.ff = icmp eq i32 %i.fe, 0
  br i1 %i.ff, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #54
  call void @LoadImageFromMemory(ptr dead_on_unwind nonnull writable sret(%struct.Image) align 8 %6, ptr noundef nonnull @.str.9, ptr noundef %i.at, i32 noundef %.lcssa) #54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #54
  br label %bb.z

bb.v:                                             ; preds = %bb.t
  %i.fg = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.eu, ptr noundef nonnull dereferenceable(12) @.str.372) #51
  %i.fh = icmp eq i32 %i.fg, 0
  br i1 %i.fh, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fi = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.eu, ptr noundef nonnull dereferenceable(11) @.str.373) #51
  %i.fj = icmp eq i32 %i.fi, 0
  br i1 %i.fj, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #54
  call void @LoadImageFromMemory(ptr dead_on_unwind nonnull writable sret(%struct.Image) align 8 %7, ptr noundef nonnull @.str.374, ptr noundef %i.at, i32 noundef %.lcssa) #54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #54
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.fk = tail call ptr (ptr, ...) @TextFormat(ptr noundef nonnull @.str.335, ptr noundef %2, ptr noundef null) #54
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.375, ptr noundef %i.fk) #54
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y, %bb.u
  call void @free(ptr noundef %i.at) #54
  br label %bb.aa

bb.aa:                                            ; preds = %bb.j, %bb.o, %bb.p, %bb.z, %bb.r, %bb.q, %bb.a
  ret void
}

declare void @LoadTextureFromImage(ptr dead_on_unwind writable sret(%struct.Texture) align 4, ptr noundef byval(%struct.Image) align 8) local_unnamed_addr #34

declare void @UnloadImage(ptr noundef byval(%struct.Image) align 8) local_unnamed_addr #34

declare i32 @GetImageColor(ptr noundef byval(%struct.Image) align 8, i32 noundef, i32 noundef) local_unnamed_addr #34

; Function Attrs: inlinehint nounwind uwtable
declare void @MatrixDecompose(ptr noundef byval(%struct.Matrix) align 8, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #36

declare void @LoadImageFromMemory(ptr dead_on_unwind writable sret(%struct.Image) align 8, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #34

declare void @LoadImage(ptr dead_on_unwind writable sret(%struct.Image) align 8, ptr noundef) local_unnamed_addr #34

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @GetPoseAtTimeGLTF(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, float noundef %3, ptr nofree noundef nonnull writeonly captures(none) %4) unnamed_addr #33 {
bb.a:
  %i.a = alloca float, align 4                    ; 6 uses
  %i.b = alloca float, align 4                    ; 6 uses
  %i.c = alloca [3 x float], align 8              ; 6 uses
  %i.d = alloca [3 x float], align 8              ; 8 uses
  %i.e = alloca [3 x float], align 8              ; 12 uses
  %i.f = alloca [4 x float], align 16             ; 5 uses
  %i.g = alloca [4 x float], align 16             ; 7 uses
  %i.h = alloca [4 x float], align 16             ; 13 uses
  %i.i = icmp ugt i32 %0, 2
  br i1 %i.i, label %bb.v, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #54
  store float 0.000000e+00, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #54
  store float 0.000000e+00, ptr %i.b, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  %i.l = trunc i64 %i.k to i32
  %i.m = icmp sgt i32 %i.l, 1
  br i1 %i.m, label %.lr.ph, label %.thread227

.lr.ph:                                           ; preds = %bb.b
  %i.n = add i64 %i.k, 4294967295
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.p = load i32, ptr %i.o, align 8
  %.not.i = icmp eq i32 %i.p, 0                   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %wide.trip.count = and i64 %i.n, 4294967295
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.l
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.l ] ; 4 uses
  br i1 %.not.i, label %.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = tail call fastcc ptr @cgltf_find_sparse_index(ptr noundef nonnull readonly %1, i64 noundef %indvars.iv) ; 2 uses
  %.not30.not.i = icmp eq ptr %i.w, null
  br i1 %.not30.not.i, label %.thread.i, label %cgltf_accessor_read_float.exit

.thread.i:                                        ; preds = %bb.d, %bb.c
  %i.x = load ptr, ptr %i.t, align 8              ; 4 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %cgltf_accessor_read_float.exit.thread216, label %bb.e

cgltf_accessor_read_float.exit.thread216:         ; preds = %.thread.i
  store i32 0, ptr %i.a, align 4
  br label %bb.g

bb.e:                                             ; preds = %.thread.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %.not.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i, label %bb.f, label %cgltf_buffer_view_data.exit.thread33.i

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %.not10.i.i = icmp eq ptr %i.ae, null
  br i1 %.not10.i.i, label %.thread233, label %cgltf_buffer_view_data.exit.i

cgltf_buffer_view_data.exit.i:                    ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ag
  br label %cgltf_buffer_view_data.exit.thread33.i

cgltf_buffer_view_data.exit.thread33.i:           ; preds = %cgltf_buffer_view_data.exit.i, %bb.e
  %.0.i35.i = phi ptr [ %i.ah, %cgltf_buffer_view_data.exit.i ], [ %i.aa, %bb.e ]
  %i.ai = load i64, ptr %i.u, align 8
  %i.aj = load i64, ptr %i.v, align 8
  %i.ak = mul i64 %i.aj, %indvars.iv
  %i.al = getelementptr i8, ptr %.0.i35.i, i64 %i.ai
  %i.am = getelementptr i8, ptr %i.al, i64 %i.ak
  br label %cgltf_accessor_read_float.exit

cgltf_accessor_read_float.exit:                   ; preds = %bb.d, %cgltf_buffer_view_data.exit.thread33.i
  %.sink = phi ptr [ %i.am, %cgltf_buffer_view_data.exit.thread33.i ], [ %i.w, %bb.d ]
  %i.an = load i32, ptr %i.q, align 8
  %i.ao = load i32, ptr %i.r, align 8
  %i.ap = load i32, ptr %i.s, align 4
  %i.aq = call fastcc i32 @cgltf_element_read_float(ptr noundef %.sink, i32 noundef %i.an, i32 noundef %i.ao, i32 noundef %i.ap, ptr noundef nonnull %i.a, i64 noundef 1)
  %.not = icmp eq i32 %i.aq, 0
  br i1 %.not, label %.thread233, label %bb.g

bb.g:                                             ; preds = %cgltf_accessor_read_float.exit.thread216, %cgltf_accessor_read_float.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  br i1 %.not.i, label %.thread.i185, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = tail call fastcc ptr @cgltf_find_sparse_index(ptr noundef nonnull readonly %1, i64 noundef %indvars.iv.next) ; 2 uses
  %.not30.not.i183 = icmp eq ptr %i.ar, null
  br i1 %.not30.not.i183, label %.thread.i185, label %cgltf_accessor_read_float.exit191

.thread.i185:                                     ; preds = %bb.h, %bb.g
  %i.as = load ptr, ptr %i.t, align 8             ; 4 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %cgltf_accessor_read_float.exit191.thread221, label %bb.i

cgltf_accessor_read_float.exit191.thread221:      ; preds = %.thread.i185
  store i32 0, ptr %i.b, align 4
  br label %bb.k

bb.i:                                             ; preds = %.thread.i185
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  %i.av = load ptr, ptr %i.au, align 8            ; 2 uses
  %.not.i.i186 = icmp eq ptr %i.av, null
  br i1 %.not.i.i186, label %bb.j, label %cgltf_buffer_view_data.exit.thread33.i187

bb.j:                                             ; preds = %bb.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load ptr, ptr %i.ay, align 8            ; 2 uses
  %.not10.i.i189 = icmp eq ptr %i.az, null
  br i1 %.not10.i.i189, label %.thread233, label %cgltf_buffer_view_data.exit.i190

cgltf_buffer_view_data.exit.i190:                 ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.bb = load i64, ptr %i.ba, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bb
  br label %cgltf_buffer_view_data.exit.thread33.i187

cgltf_buffer_view_data.exit.thread33.i187:        ; preds = %cgltf_buffer_view_data.exit.i190, %bb.i
  %.0.i35.i188 = phi ptr [ %i.bc, %cgltf_buffer_view_data.exit.i190 ], [ %i.av, %bb.i ]
  %i.bd = load i64, ptr %i.u, align 8
  %i.be = load i64, ptr %i.v, align 8
  %i.bf = mul i64 %i.be, %indvars.iv.next
  %i.bg = getelementptr i8, ptr %.0.i35.i188, i64 %i.bd
  %i.bh = getelementptr i8, ptr %i.bg, i64 %i.bf
  br label %cgltf_accessor_read_float.exit191

cgltf_accessor_read_float.exit191:                ; preds = %bb.h, %cgltf_buffer_view_data.exit.thread33.i187
  %.sink266 = phi ptr [ %i.bh, %cgltf_buffer_view_data.exit.thread33.i187 ], [ %i.ar, %bb.h ]
end_hunk_2
begin_hunk_3_@llvm.abs.v4i32
!81 = distinct !{!81, !13}
!82 = distinct !{!82, !13}
!83 = distinct !{!83, !11, !12}
!84 = distinct !{!84, !12, !11}
!85 = distinct !{!85, !"LVerDomain"}
!86 = distinct !{!86, !85}
!87 = distinct !{!87, !11, !12}
!88 = distinct !{!88, !85}
!89 = distinct !{!89, !13}
!90 = distinct !{!90, !11}
!91 = !{!86}
!92 = !{!88}
!93 = distinct !{!93, !11, !12}
!94 = distinct !{!94, !12, !11}
!95 = distinct !{!95, !13}
!96 = distinct !{!96, !11, !12}
!97 = distinct !{!97, !12, !11}
!98 = distinct !{!98, !11, !12}
!99 = distinct !{!99, !12, !11}
!100 = distinct !{!100, !11, !12}
!101 = distinct !{!101, !12, !11}
!102 = distinct !{!102, !13}
!103 = distinct !{!103, !11, !12}
!104 = distinct !{!104, !12, !11}
!105 = distinct !{!105, !11, !12}
!106 = distinct !{!106, !12, !11}
!107 = distinct !{!107, !13}
!108 = distinct !{!108, !13}
!109 = distinct !{!109, !10}
!110 = distinct !{!110, !11, !12}
!111 = distinct !{!111, !11, !12}
!112 = distinct !{!112, !12, !11}
!113 = distinct !{!113, !11, !12}
!114 = distinct !{!114, !11, !12}
!115 = distinct !{!115, !12, !11}
!116 = distinct !{!116, !"LoadOBJ"}
!117 = distinct !{!117, !116, !"LoadOBJ: argument 0"}
!118 = distinct !{!118, !"LoadMaterialDefault"}
!119 = distinct !{!119, !118, !"LoadMaterialDefault: argument 0"}
!120 = distinct !{!120, !"LoadIQM"}
!121 = distinct !{!121, !120, !"LoadIQM: argument 0"}
!122 = distinct !{!122, !"LoadMaterialDefault"}
!123 = distinct !{!123, !122, !"LoadMaterialDefault: argument 0"}
!124 = distinct !{!124, !13}
!125 = distinct !{!125, !"LoadVOX"}
!126 = distinct !{!126, !125, !"LoadVOX: argument 0"}
!127 = distinct !{!127, !"LoadMaterialDefault"}
!128 = distinct !{!128, !127, !"LoadMaterialDefault: argument 0"}
!129 = distinct !{!129, !"LoadM3D"}
!130 = distinct !{!130, !129, !"LoadM3D: argument 0"}
!131 = distinct !{!131, !"LoadMaterialDefault"}
!132 = distinct !{!132, !131, !"LoadMaterialDefault: argument 0"}
!133 = distinct !{!133, !"LoadMaterialDefault"}
!134 = distinct !{!134, !133, !"LoadMaterialDefault: argument 0"}
!135 = distinct !{!135, !"LoadMaterialDefault"}
!136 = distinct !{!136, !135, !"LoadMaterialDefault: argument 0"}
!137 = !{!117}
!138 = !{!119, !117}
!139 = !{!121}
!140 = !{!123, !121}
!141 = !{!126}
!142 = !{!128, !126}
!143 = !{!130}
!144 = !{!132}
!145 = !{!134}
!146 = !{!136}
!147 = distinct !{!147, !"LoadMaterialDefault"}
!148 = distinct !{!148, !147, !"LoadMaterialDefault: argument 0"}
!149 = distinct !{!149, !"LoadMaterialDefault"}
!150 = distinct !{!150, !149, !"LoadMaterialDefault: argument 0"}
!151 = distinct !{!151, !11, !12}
!152 = distinct !{!152, !11}
!153 = distinct !{!153, !11, !12}
!154 = distinct !{!154, !11}
!155 = distinct !{!155, !11, !12}
!156 = distinct !{!156, !11}
!157 = distinct !{!157, !11, !12}
!158 = distinct !{!158, !11}
!159 = distinct !{!159, !11, !12}
!160 = distinct !{!160, !11}
!161 = !{!148}
!162 = !{!150}
!163 = distinct !{!163, !"LoadMaterialDefault"}
!164 = distinct !{!164, !163, !"LoadMaterialDefault: argument 0"}
!165 = !{!164}
!166 = distinct !{!166, !"GetMeshBoundingBox"}
!167 = distinct !{!167, !166, !"GetMeshBoundingBox: argument 0"}
!168 = distinct !{!168, !"GetMeshBoundingBox"}
!169 = distinct !{!169, !168, !"GetMeshBoundingBox: argument 0"}
!170 = !{!167}
!171 = !{!169}
!172 = distinct !{!172, !"MatrixIdentity"}
!173 = distinct !{!173, !172, !"MatrixIdentity: argument 0"}
!174 = distinct !{!174, !"MatrixTranspose"}
!175 = distinct !{!175, !174, !"MatrixTranspose: argument 0"}
!176 = !{!173}
!177 = !{!175}
!178 = distinct !{!178, !"MatrixTranspose"}
!179 = distinct !{!179, !178, !"MatrixTranspose: argument 0"}
!180 = !{!179}
!181 = distinct !{!181, !"LoadMaterialDefault"}
!182 = distinct !{!182, !181, !"LoadMaterialDefault: argument 0"}
!183 = !{!182}
!184 = distinct !{!184, !13}
!185 = distinct !{!185, !14}
!186 = distinct !{!186, !14}
!187 = distinct !{!187, !11, !12}
!188 = distinct !{!188, !12, !11}
!189 = distinct !{!189, !11, !12}
!190 = distinct !{!190, !12, !11}
!191 = distinct !{!191, !11, !12}
!192 = distinct !{!192, !11, !12}
!193 = distinct !{!193, !12, !11}
!194 = distinct !{!194, !12, !11}
!195 = distinct !{!195, !11, !12}
!196 = distinct !{!196, !12, !11}
!197 = distinct !{!197, !11, !12}
!198 = distinct !{!198, !12, !11}
!199 = distinct !{!199, !11, !12}
!200 = distinct !{!200, !12, !11}
!201 = distinct !{!201, !11, !12}
!202 = distinct !{!202, !12, !11}
!203 = distinct !{!203, !11, !12}
!204 = distinct !{!204, !12, !11}
!205 = distinct !{!205, !14}
!206 = distinct !{!206, !11, !12}
!207 = distinct !{!207, !12, !11}
!208 = distinct !{!208, !"MatrixRotate"}
!209 = distinct !{!209, !208, !"MatrixRotate: argument 0"}
!210 = !{!209}
!211 = distinct !{!211, !13}
!212 = distinct !{!212, !13}
!213 = distinct !{!213, !13}
!214 = distinct !{null, null}
!215 = distinct !{null, ptr @cgltf_parse_json_extras}
!216 = distinct !{null, null, null}
!217 = distinct !{null, null, null}
!218 = distinct !{null, null, null}
!219 = distinct !{null, null, null, null}
!220 = distinct !{null, null, null, null, null}
!221 = distinct !{null, null, null, ptr @cgltf_parse_json_extras}
!222 = distinct !{null, null, null, null}
!223 = distinct !{null, null, null, null, null}
!224 = distinct !{null, null, null, null}
!225 = distinct !{null, null, null}
!226 = distinct !{null, null, null}
!227 = distinct !{null, ptr @cgltf_parse_json_extras}
!228 = distinct !{null, null, null}
!229 = distinct !{null, null, null}
!230 = distinct !{null, null, null}
!231 = distinct !{null, null, ptr @cgltf_parse_json_extras}
!232 = distinct !{null, null, null}
!233 = distinct !{null, null, null}
!234 = distinct !{null, null, null}
!235 = distinct !{null, null, ptr @cgltf_parse_json_extras}
!236 = distinct !{null, null, null, null}
!237 = distinct !{null, null, null}
!238 = distinct !{null, null, null}
!239 = distinct !{null, null, ptr @cgltf_parse_json_extras}
!240 = distinct !{null, null, null}
!241 = distinct !{null, null, null}
!242 = distinct !{null, null, null}
!243 = distinct !{null, null, ptr @cgltf_parse_json_extras}
!244 = distinct !{null, null, null, null}
!245 = distinct !{null, null, null}
!246 = distinct !{null, null, null}
!247 = distinct !{null, null, ptr @cgltf_parse_json_extras}
!248 = distinct !{null, null, null}
!249 = distinct !{null, null, null}
!250 = distinct !{null, null, null}
!251 = distinct !{null, null, ptr @cgltf_parse_json_extras}
!252 = distinct !{null, null, null, null}
!253 = distinct !{null, null, null}
!254 = distinct !{null, null, null}
!255 = distinct !{null, null, null, null}
!256 = distinct !{null, null, ptr @cgltf_parse_json_extras}
!257 = distinct !{null, null, null, null}
!258 = distinct !{null, null}
!259 = distinct !{null, ptr @cgltf_parse_json_extras}
!260 = distinct !{null, null, null}
!261 = distinct !{null, null}
!262 = distinct !{null, null, null}
!263 = distinct !{null, null}
!264 = distinct !{null, null}
!265 = distinct !{null, null, null}
!266 = distinct !{null, ptr @cgltf_parse_json_extras}
!267 = distinct !{null, null, null}
!268 = distinct !{null, null}
!269 = distinct !{null, null, null}
!270 = distinct !{null, null, ptr @cgltf_parse_json_extras}
!271 = distinct !{null, null, null, null}
!272 = distinct !{null, null, ptr @cgltf_parse_json_extras}
!273 = distinct !{null, null, null, null}
!274 = distinct !{null, ptr @cgltf_parse_json_extras}
!275 = distinct !{null, null, null}
!276 = distinct !{null, null}
!277 = distinct !{null, ptr @cgltf_parse_json_extras}
!278 = distinct !{null, null}
!279 = distinct !{null, ptr @cgltf_parse_json_extras}
!280 = distinct !{!280, !13}
!281 = distinct !{!281, !11, !12}
!282 = distinct !{!282, !11, !12}
!283 = distinct !{!283, !11, !12}
!284 = distinct !{!284, !11, !12}
!285 = distinct !{!285, !11, !12}
!286 = distinct !{!286, !11, !12}
!287 = distinct !{!287, !11, !12}
!288 = distinct !{!288, !11, !12}
!289 = distinct !{!289, !11, !12}
!290 = distinct !{!290, !11, !12}
!291 = distinct !{!291, !13}
!292 = distinct !{!292, !11, !12}
!293 = distinct !{!293, !11, !12}
!294 = distinct !{!294, !11}
!295 = distinct !{!295, !11}
!296 = distinct !{!296, !11}
!297 = distinct !{!297, !11}
!298 = distinct !{!298, !11}
!299 = distinct !{!299, !11}
!300 = distinct !{!300, !"LVerDomain"}
!301 = distinct !{!301, !300}
!302 = distinct !{!302, !300}
!303 = distinct !{!303, !11, !12}
!304 = distinct !{!304, !11, !12}
!305 = distinct !{!305, !13}
!306 = distinct !{!306, !11}
!307 = distinct !{!307, !"LVerDomain"}
!308 = distinct !{!308, !307}
!309 = distinct !{!309, !307}
!310 = distinct !{!310, !307}
!311 = distinct !{!311, !11, !12}
!312 = distinct !{!312, !11, !12}
!313 = distinct !{!313, !11}
!314 = distinct !{!314, !"LVerDomain"}
!315 = distinct !{!315, !314}
!316 = distinct !{!316, !314}
!317 = distinct !{!317, !314}
!318 = distinct !{!318, !11, !12}
!319 = distinct !{!319, !11, !12}
!320 = distinct !{!320, !13}
!321 = distinct !{!321, !11}
!322 = distinct !{!322, !"LVerDomain"}
!323 = distinct !{!323, !322}
!324 = distinct !{!324, !322}
!325 = distinct !{!325, !322}
!326 = distinct !{!326, !322}
!327 = distinct !{!327, !11, !12}
!328 = distinct !{!328, !11, !12}
!329 = distinct !{!329, !11}
!330 = distinct !{!330, !"LVerDomain"}
!331 = distinct !{!331, !330}
!332 = distinct !{!332, !330}
!333 = distinct !{!333, !330}
!334 = distinct !{!334, !330}
!335 = distinct !{!335, !330}
!336 = distinct !{!336, !11, !12}
!337 = distinct !{!337, !11, !12}
!338 = distinct !{!338, !11}
!339 = distinct !{!339, !"LVerDomain"}
!340 = distinct !{!340, !339}
!341 = distinct !{!341, !339}
!342 = distinct !{!342, !339}
!343 = distinct !{!343, !11, !12}
!344 = distinct !{!344, !11, !12}
!345 = distinct !{!345, !11}
!346 = distinct !{!346, !"LVerDomain"}
!347 = distinct !{!347, !346}
!348 = distinct !{!348, !346}
!349 = distinct !{!349, !346}
!350 = distinct !{!350, !11, !12}
!351 = distinct !{!351, !11, !12}
!352 = distinct !{!352, !11}
!353 = distinct !{!353, !13}
!354 = distinct !{!354, !13}
!355 = distinct !{!355, !13}
!356 = !{!"branch_weights", i32 8, i32 24}
!357 = !{!301}
!358 = !{!302}
!359 = !{!308}
!360 = !{!309}
!361 = !{!310}
!362 = !{!308, !309}
!363 = !{!315}
!364 = !{!316}
!365 = !{!317}
!366 = !{!315, !316}
!367 = !{!323}
!368 = !{!324}
!369 = !{!325}
!370 = !{!326}
!371 = !{!323, !324, !325}
!372 = !{!331}
!373 = !{!332}
!374 = !{!333}
!375 = !{!334}
!376 = !{!335}
!377 = !{!331, !332, !333, !334}
!378 = !{!340}
!379 = !{!341}
!380 = !{!342}
!381 = !{!340, !341}
!382 = !{!347}
!383 = !{!348}
!384 = !{!349}
!385 = !{!347, !348}
!386 = distinct !{!386, !"LVerDomain"}
!387 = distinct !{!387, !386}
!388 = distinct !{!388, !386}
!389 = distinct !{!389, !11, !12}
!390 = distinct !{!390, !11, !12}
!391 = distinct !{!391, !11}
!392 = !{!387}
!393 = !{!388}
!394 = !{!"branch_weights", i32 8, i32 8}
end_hunk_3
