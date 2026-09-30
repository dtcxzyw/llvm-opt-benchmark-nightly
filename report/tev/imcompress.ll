Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/imcompress?download=true
inline.NumInlined: 36
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 58
begin_hunk_0_@imcomp_init_table:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.h, ptr noundef nonnull align 16 dereferenceable(24) @__const.imcomp_init_table.tunit, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #23
  %i.k = load i32, ptr %5, align 4, !tbaa !18     ; 2 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %bb.cw, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = icmp slt i32 %1, 0                       ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !26   ; 9 uses
  br i1 %i.m, label %bb.c, label %._crit_edge419

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1056
  %i.q = load float, ptr %i.p, align 8, !tbaa !38
  %i.r = fcmp oeq float %i.q, 9.999000e+03
  br i1 %i.r, label %bb.d, label %._crit_edge419

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 1000
  %i.t = load i32, ptr %i.s, align 8, !tbaa !36
  %.off = add i32 %i.t, -21
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %._crit_edge419, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @ffpmsg(ptr noundef nonnull @.str.42) #23
  store i32 413, ptr %5, align 4, !tbaa !18
  br label %bb.cw

._crit_edge419:                                   ; preds = %bb.b, %bb.d, %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 1000 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !36   ; 2 uses
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge419
  store i32 11, ptr %i.v, align 8, !tbaa !36
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge419
  %i.y = phi i32 [ 11, %bb.f ], [ %i.w, %._crit_edge419 ] ; 2 uses
  br i1 %i.m, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 1056 ; 2 uses
  %i.aa = load float, ptr %i.z, align 8, !tbaa !38 ; 3 uses
  %i.ab = fcmp une float %i.aa, 9.999000e+03
  br i1 %i.ab, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 1060 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !39 ; 2 uses
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %.thread440, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = fcmp oeq float %i.aa, 0.000000e+00
  br i1 %i.af, label %bb.k, label %.thread

.thread440:                                       ; preds = %bb.i
  store i32 1, ptr %i.ac, align 4, !tbaa !39
  %i.ag = fcmp oeq float %i.aa, 0.000000e+00
  br i1 %i.ag, label %.thread441, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.ah = icmp eq i32 %i.ad, -1
  br i1 %i.ah, label %.thread.sink.split, label %.thread441

.thread441:                                       ; preds = %.thread440, %bb.k
  br label %.thread.sink.split

bb.l:                                             ; preds = %bb.g
  switch i32 %1, label %.thread [
    i32 20, label %bb.n
    i32 40, label %.fold.split
    i32 10, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  br label %bb.n

.thread.sink.split:                               ; preds = %bb.k, %.thread441
  %.sink = phi float [ 4.000000e+00, %.thread441 ], [ 1.600000e+01, %bb.k ]
  store float %.sink, ptr %i.z, align 8, !tbaa !38
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.j, %bb.h, %.thread440, %bb.l
  br label %bb.n

.fold.split:                                      ; preds = %bb.l
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %.fold.split, %.thread, %bb.m
  %i.ai = phi i1 [ false, %.thread ], [ true, %bb.l ], [ false, %bb.m ], [ false, %.fold.split ]
  %.0279 = phi i32 [ %1, %.thread ], [ 16, %bb.l ], [ 8, %bb.m ], [ 32, %.fold.split ] ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 1008
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.j, ptr noundef nonnull align 8 dereferenceable(48) %i.aj, i64 48, i1 false)
  %i.ak = icmp eq i32 %i.y, 41
  br i1 %i.ak, label %bb.o, label %bb.ba

bb.o:                                             ; preds = %bb.n
  %i.al = icmp slt i32 %2, 2
  br i1 %i.al, label %bb.p, label %.preheader330.preheader

.preheader330.preheader:                          ; preds = %bb.o
  %wide.trip.count = zext nneg i32 %2 to i64      ; 4 uses
  %min.iters.check = icmp ult i32 %2, 4
  br i1 %min.iters.check, label %.preheader330.preheader470, label %vector.ph

vector.ph:                                        ; preds = %.preheader330.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.as, %vector.body ]
  %vec.phi455 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.at, %vector.body ]
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %wide.load = load <2 x i64>, ptr %i.am, align 8, !tbaa !37
  %wide.load456 = load <2 x i64>, ptr %i.an, align 8, !tbaa !37
  %i.ao = icmp sgt <2 x i64> %wide.load, splat (i64 3)
  %i.ap = icmp sgt <2 x i64> %wide.load456, splat (i64 3)
  %i.aq = zext <2 x i1> %i.ao to <2 x i32>
  %i.ar = zext <2 x i1> %i.ap to <2 x i32>
  %i.as = add <2 x i32> %vec.phi, %i.aq           ; 2 uses
  %i.at = add <2 x i32> %vec.phi455, %i.ar        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !93

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.at, %i.as
  %i.av = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit467, label %.preheader330.preheader470

.preheader330.preheader470:                       ; preds = %.preheader330.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader330.preheader ], [ %n.vec, %middle.block ]
  %.0276334.ph = phi i32 [ 0, %.preheader330.preheader ], [ %i.av, %middle.block ]
  br label %.preheader330

bb.p:                                             ; preds = %bb.o
  tail call void @ffpmsg(ptr noundef nonnull @.str.43) #23
  store i32 413, ptr %5, align 4, !tbaa !18
  br label %bb.cw

.preheader330:                                    ; preds = %.preheader330.preheader470, %.preheader330
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader330 ], [ %indvars.iv.ph, %.preheader330.preheader470 ] ; 2 uses
  %.0276334 = phi i32 [ %spec.select, %.preheader330 ], [ %.0276334.ph, %.preheader330.preheader470 ]
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !37
  %i.ay = icmp sgt i64 %i.ax, 3
  %i.az = zext i1 %i.ay to i32
  %spec.select = add nuw nsw i32 %.0276334, %i.az ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit467, label %.preheader330, !llvm.loop !94

.loopexit467:                                     ; preds = %.preheader330, %middle.block
  %spec.select.lcssa = phi i32 [ %i.av, %middle.block ], [ %spec.select, %.preheader330 ]
  %i.ba = icmp samesign ult i32 %spec.select.lcssa, 2
  br i1 %i.ba, label %bb.q, label %.lr.ph

bb.q:                                             ; preds = %.loopexit467
  tail call void @ffpmsg(ptr noundef nonnull @.str.44) #23
  store i32 413, ptr %5, align 4, !tbaa !18
  br label %bb.cw

.lr.ph:                                           ; preds = %.loopexit467, %.lr.ph
  %indvars.iv376 = phi i64 [ %indvars.iv.next377, %.lr.ph ], [ 1, %.loopexit467 ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv376
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !37
  %switch326 = icmp ult i64 %i.bc, 2              ; 2 uses
  %indvars.iv.next377 = add nuw nsw i64 %indvars.iv376, 1 ; 2 uses
  %exitcond380.not = icmp ne i64 %indvars.iv.next377, %wide.trip.count
  %or.cond446.not = select i1 %switch326, i1 %exitcond380.not, i1 false
  br i1 %or.cond446.not, label %.lr.ph, label %._crit_edge, !llvm.loop !95

._crit_edge:                                      ; preds = %.lr.ph
  %i.bd = load i64, ptr %i.j, align 16, !tbaa !37
  %i.be = icmp slt i64 %i.bd, 1                   ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8
  %i.bh = icmp eq i64 %i.bg, -1
  %or.cond = select i1 %i.be, i1 %i.bh, i1 false
  br i1 %or.cond, label %bb.r, label %bb.s

bb.r:                                             ; preds = %._crit_edge
  %i.bi = load <2 x i64>, ptr %3, align 8, !tbaa !37
  store <2 x i64> %i.bi, ptr %i.j, align 16, !tbaa !37
  %.not371 = icmp eq i32 %2, 2
  br i1 %.not371, label %.lr.ph348.preheader, label %.lr.ph343.preheader

.lr.ph343.preheader:                              ; preds = %bb.r
  %smax389 = tail call i32 @llvm.smax.i32(i32 %2, i32 3)
  %wide.trip.count390 = zext nneg i32 %smax389 to i64 ; 2 uses
  %i.bj = add nsw i64 %wide.trip.count390, -2     ; 3 uses
  %min.iters.check458 = icmp ult i64 %i.bj, 4
  br i1 %min.iters.check458, label %.lr.ph343.preheader468, label %vector.ph459

vector.ph459:                                     ; preds = %.lr.ph343.preheader
  %n.vec460 = and i64 %i.bj, -4                   ; 3 uses
  %i.bk = or disjoint i64 %n.vec460, 2
  br label %vector.body461

vector.body461:                                   ; preds = %vector.body461, %vector.ph459
  %index462 = phi i64 [ 0, %vector.ph459 ], [ %index.next463, %vector.body461 ] ; 2 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %index462 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  store <2 x i64> splat (i64 1), ptr %i.bm, align 16, !tbaa !37
  store <2 x i64> splat (i64 1), ptr %i.bn, align 16, !tbaa !37
  %index.next463 = add nuw i64 %index462, 4       ; 2 uses
  %i.bo = icmp eq i64 %index.next463, %n.vec460
  br i1 %i.bo, label %middle.block464, label %vector.body461, !llvm.loop !96

middle.block464:                                  ; preds = %vector.body461
  %cmp.n465 = icmp eq i64 %i.bj, %n.vec460
  br i1 %cmp.n465, label %.lr.ph348.preheader, label %.lr.ph343.preheader468

.lr.ph343.preheader468:                           ; preds = %.lr.ph343.preheader, %middle.block464
  %indvars.iv386.ph = phi i64 [ 2, %.lr.ph343.preheader ], [ %i.bk, %middle.block464 ]
  br label %.lr.ph343

.lr.ph343:                                        ; preds = %.lr.ph343.preheader468, %.lr.ph343
  %indvars.iv386 = phi i64 [ %indvars.iv.next387, %.lr.ph343 ], [ %indvars.iv386.ph, %.lr.ph343.preheader468 ] ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv386
  store i64 1, ptr %i.bp, align 8, !tbaa !37
  %indvars.iv.next387 = add nuw nsw i64 %indvars.iv386, 1 ; 2 uses
  %exitcond391.not = icmp eq i64 %indvars.iv.next387, %wide.trip.count390
  br i1 %exitcond391.not, label %.lr.ph348.preheader, label %.lr.ph343, !llvm.loop !97

bb.s:                                             ; preds = %._crit_edge
  %or.cond4 = and i1 %switch326, %i.be
  br i1 %or.cond4, label %bb.t, label %bb.ad

bb.t:                                             ; preds = %bb.s
  %i.bq = load i64, ptr %3, align 8, !tbaa !37
  store i64 %i.bq, ptr %i.j, align 16, !tbaa !37
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !37 ; 11 uses
  %i.bt = icmp slt i64 %i.bs, 31
  br i1 %i.bt, label %.lr.ph348.preheader.sink.split, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bu = and i64 %i.bs, 15
  %i.bv = add nsw i64 %i.bu, -4
  %or.cond317 = icmp ult i64 %i.bv, -3
  br i1 %or.cond317, label %.lr.ph348.preheader.sink.split, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bw = urem i64 %i.bs, 24
  %i.bx = add nsw i64 %i.bw, -4
  %or.cond318 = icmp ult i64 %i.bx, -3
  br i1 %or.cond318, label %.lr.ph348.preheader.sink.split, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.by = urem i64 %i.bs, 20
  %i.bz = add nsw i64 %i.by, -4
  %or.cond319 = icmp ult i64 %i.bz, -3
  br i1 %or.cond319, label %.lr.ph348.preheader.sink.split, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ca = urem i64 %i.bs, 30
  %i.cb = add nsw i64 %i.ca, -4
  %or.cond320 = icmp ult i64 %i.cb, -3
  br i1 %or.cond320, label %.lr.ph348.preheader.sink.split, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cc = urem i64 %i.bs, 28
  %i.cd = add nsw i64 %i.cc, -4
  %or.cond321 = icmp ult i64 %i.cd, -3
  br i1 %or.cond321, label %.lr.ph348.preheader.sink.split, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ce = urem i64 %i.bs, 26
  %i.cf = add nsw i64 %i.ce, -4
  %or.cond322 = icmp ult i64 %i.cf, -3
  br i1 %or.cond322, label %.lr.ph348.preheader.sink.split, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cg = urem i64 %i.bs, 22
  %i.ch = add nsw i64 %i.cg, -4
  %or.cond323 = icmp ult i64 %i.ch, -3
  br i1 %or.cond323, label %.lr.ph348.preheader.sink.split, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ci = urem i64 %i.bs, 18
  %i.cj = add nsw i64 %i.ci, -4
  %or.cond324 = icmp ult i64 %i.cj, -3
  br i1 %or.cond324, label %.lr.ph348.preheader.sink.split, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ck = urem i64 %i.bs, 14
  %i.cl = add nsw i64 %i.ck, -4
  %or.cond325 = icmp ult i64 %i.cl, -3
  %.453 = select i1 %or.cond325, i64 14, i64 17
  br label %.lr.ph348.preheader.sink.split

bb.ad:                                            ; preds = %bb.s
  br i1 %i.be, label %bb.ae, label %.lr.ph340.preheader

bb.ae:                                            ; preds = %bb.ad
  %i.cm = load i64, ptr %3, align 8, !tbaa !37
  store i64 %i.cm, ptr %i.j, align 16, !tbaa !37
  br label %.lr.ph340.preheader

.lr.ph340.preheader:                              ; preds = %bb.ad, %bb.ae
  %smax = tail call i32 @llvm.smax.i32(i32 %2, i32 2)
  %wide.trip.count384 = zext nneg i32 %smax to i64
  %i.cn = add nsw i64 %wide.trip.count384, -1     ; 3 uses
  %xtraiter = and i64 %i.cn, 1
  %i.co = icmp eq i32 %2, 2
  br i1 %i.co, label %.lr.ph340.epil.preheader, label %.lr.ph340.preheader.new

.lr.ph340.preheader.new:                          ; preds = %.lr.ph340.preheader
  %unroll_iter = and i64 %i.cn, -2
  br label %.lr.ph340

.lr.ph340:                                        ; preds = %bb.aj, %.lr.ph340.preheader.new
  %indvars.iv381 = phi i64 [ 1, %.lr.ph340.preheader.new ], [ %indvars.iv.next382.1, %bb.aj ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph340.preheader.new ], [ %niter.next.1, %bb.aj ]
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv381 ; 2 uses
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !37 ; 2 uses
  %i.cr = icmp slt i64 %i.cq, 0
  br i1 %i.cr, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.lr.ph340
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv381
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !37
  br label %.sink.split

bb.ag:                                            ; preds = %.lr.ph340
  %i.cu = icmp eq i64 %i.cq, 0
  br i1 %i.cu, label %.sink.split, label %.lr.ph340.1

.sink.split:                                      ; preds = %bb.ag, %bb.af
  %.sink447 = phi i64 [ %i.ct, %bb.af ], [ 1, %bb.ag ]
  store i64 %.sink447, ptr %i.cp, align 8, !tbaa !37
  br label %.lr.ph340.1

.lr.ph340.1:                                      ; preds = %.sink.split, %bb.ag
  %indvars.iv.next382 = add nuw nsw i64 %indvars.iv381, 1 ; 2 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next382 ; 2 uses
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !37 ; 2 uses
  %i.cx = icmp slt i64 %i.cw, 0
  br i1 %i.cx, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph340.1
  %i.cy = icmp eq i64 %i.cw, 0
  br i1 %i.cy, label %.sink.split.1, label %bb.aj

bb.ai:                                            ; preds = %.lr.ph340.1
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next382
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !37
  br label %.sink.split.1

.sink.split.1:                                    ; preds = %bb.ai, %bb.ah
  %.sink447.1 = phi i64 [ %i.da, %bb.ai ], [ 1, %bb.ah ]
  store i64 %.sink447.1, ptr %i.cv, align 8, !tbaa !37
  br label %bb.aj

bb.aj:                                            ; preds = %.sink.split.1, %bb.ah
  %indvars.iv.next382.1 = add nuw nsw i64 %indvars.iv381, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph348.preheader.loopexit469.unr-lcssa, label %.lr.ph340, !llvm.loop !98

.lr.ph348.preheader.sink.split:                   ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t
  %.sink448 = phi i64 [ %i.bs, %bb.t ], [ 16, %bb.u ], [ 20, %bb.w ], [ 28, %bb.y ], [ 22, %bb.aa ], [ 18, %bb.ab ], [ %.453, %bb.ac ], [ 26, %bb.z ], [ 30, %bb.x ], [ 24, %bb.v ]
  store i64 %.sink448, ptr %i.bf, align 8, !tbaa !37
  br label %.lr.ph348.preheader

.lr.ph348.preheader.loopexit469.unr-lcssa:        ; preds = %bb.aj
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph348.preheader, label %.lr.ph340.epil.preheader

.lr.ph340.epil.preheader:                         ; preds = %.lr.ph348.preheader.loopexit469.unr-lcssa, %.lr.ph340.preheader
  %indvars.iv381.epil.init = phi i64 [ 1, %.lr.ph340.preheader ], [ %indvars.iv.next382.1, %.lr.ph348.preheader.loopexit469.unr-lcssa ] ; 2 uses
  %lcmp.mod474 = trunc i64 %i.cn to i1
  tail call void @llvm.assume(i1 %lcmp.mod474)
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv381.epil.init ; 2 uses
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !37 ; 2 uses
  %i.dd = icmp slt i64 %i.dc, 0
  br i1 %i.dd, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph340.epil.preheader
  %i.de = icmp eq i64 %i.dc, 0
  br i1 %i.de, label %.sink.split.epil, label %.lr.ph348.preheader

bb.al:                                            ; preds = %.lr.ph340.epil.preheader
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv381.epil.init
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !37
  br label %.sink.split.epil

.sink.split.epil:                                 ; preds = %bb.al, %bb.ak
  %.sink447.epil = phi i64 [ %i.dg, %bb.al ], [ 1, %bb.ak ]
  store i64 %.sink447.epil, ptr %i.db, align 8, !tbaa !37
end_hunk_0
