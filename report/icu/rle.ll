Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/rle?download=true
inline.NumInlined: 10
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@usArrayToRLEString:bb.a
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.1.us.i.1 = phi ptr [ %i.x, %bb.m ], [ %.2.us.i, %bb.l ] ; 4 uses
  %i.y = icmp ult ptr %.1.us.i.1, %i.b
  br i1 %i.y, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i32 15, ptr %4, align 4, !tbaa !11
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.z = getelementptr inbounds nuw i8, ptr %.1.us.i.1, i64 2
  store i16 -23131, ptr %.1.us.i.1, align 2, !tbaa !9
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.2.us.i.1 = phi ptr [ %i.z, %bb.p ], [ %.1.us.i.1, %bb.o ] ; 5 uses
  %exitcond49.not.i.1 = icmp eq i32 %.03670, 2
  br i1 %exitcond49.not.i.1, label %encodeRunShort.exit, label %.lr.ph.split.us.i.2

.lr.ph.split.us.i.2:                              ; preds = %bb.q
  %i.aa = icmp ult ptr %.2.us.i.1, %i.b
  br i1 %i.aa, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph.split.us.i.2
  store i32 15, ptr %4, align 4, !tbaa !11
  br label %bb.t

bb.s:                                             ; preds = %.lr.ph.split.us.i.2
  %i.ab = getelementptr inbounds nuw i8, ptr %.2.us.i.1, i64 2
  store i16 -23131, ptr %.2.us.i.1, align 2, !tbaa !9
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.1.us.i.2 = phi ptr [ %i.ab, %bb.s ], [ %.2.us.i.1, %bb.r ] ; 4 uses
  %i.ac = icmp ult ptr %.1.us.i.2, %i.b
  br i1 %i.ac, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i32 15, ptr %4, align 4, !tbaa !11
  br label %encodeRunShort.exit

bb.v:                                             ; preds = %bb.t
  %i.ad = getelementptr inbounds nuw i8, ptr %.1.us.i.2, i64 2
  store i16 -23131, ptr %.1.us.i.2, align 2, !tbaa !9
  br label %encodeRunShort.exit

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.ae = icmp ult ptr %.03968, %i.b
  br i1 %i.ae, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.lr.ph.split.i
  %i.af = getelementptr inbounds nuw i8, ptr %.03968, i64 2
  store i16 %.03769, ptr %.03968, align 2, !tbaa !9
  br label %bb.y

bb.x:                                             ; preds = %.lr.ph.split.i
  store i32 15, ptr %4, align 4, !tbaa !11
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.2.i = phi ptr [ %i.af, %bb.w ], [ %.03968, %bb.x ] ; 5 uses
  %exitcond.not.i = icmp eq i32 %.03670, 1
  br i1 %exitcond.not.i, label %encodeRunShort.exit, label %.lr.ph.split.i.1

.lr.ph.split.i.1:                                 ; preds = %bb.y
  %i.ag = icmp ult ptr %.2.i, %i.b
  br i1 %i.ag, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.lr.ph.split.i.1
  store i32 15, ptr %4, align 4, !tbaa !11
  br label %bb.ab

bb.aa:                                            ; preds = %.lr.ph.split.i.1
  %i.ah = getelementptr inbounds nuw i8, ptr %.2.i, i64 2
  store i16 %.03769, ptr %.2.i, align 2, !tbaa !9
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.2.i.1 = phi ptr [ %i.ah, %bb.aa ], [ %.2.i, %bb.z ] ; 5 uses
  %exitcond.not.i.1 = icmp eq i32 %.03670, 2
  br i1 %exitcond.not.i.1, label %encodeRunShort.exit, label %.lr.ph.split.i.2

.lr.ph.split.i.2:                                 ; preds = %bb.ab
  %i.ai = icmp ult ptr %.2.i.1, %i.b
  br i1 %i.ai, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph.split.i.2
  store i32 15, ptr %4, align 4, !tbaa !11
  br label %encodeRunShort.exit

bb.ad:                                            ; preds = %.lr.ph.split.i.2
  %i.aj = getelementptr inbounds nuw i8, ptr %.2.i.1, i64 2
  store i16 %.03769, ptr %.2.i.1, align 2, !tbaa !9
  br label %encodeRunShort.exit

bb.ae:                                            ; preds = %bb.e
  %i.ak = icmp eq i32 %.03670, 42405
  br i1 %i.ak, label %bb.af, label %bb.am

bb.af:                                            ; preds = %bb.ae
  %i.al = icmp eq i16 %.03769, -23131
  br i1 %i.al, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %i.am = icmp ult ptr %.03968, %i.b
  br i1 %i.am, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.an = getelementptr inbounds nuw i8, ptr %.03968, i64 2
  store i16 -23131, ptr %.03968, align 2, !tbaa !9
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  store i32 15, ptr %4, align 4, !tbaa !11
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.af
  %.3.i = phi ptr [ %i.an, %bb.ah ], [ %.03968, %bb.ai ], [ %.03968, %bb.af ] ; 4 uses
  %i.ao = icmp ult ptr %.3.i, %i.b
  br i1 %i.ao, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.ap = getelementptr inbounds nuw i8, ptr %.3.i, i64 2
  store i16 %.03769, ptr %.3.i, align 2, !tbaa !9
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  store i32 15, ptr %4, align 4, !tbaa !11
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.ae
  %.041.i = phi i32 [ %.03670, %bb.ae ], [ 42404, %bb.ak ], [ 42404, %bb.al ]
  %.5.i = phi ptr [ %.03968, %bb.ae ], [ %i.ap, %bb.ak ], [ %.3.i, %bb.al ] ; 4 uses
  %i.aq = icmp ult ptr %.5.i, %i.b
  br i1 %i.aq, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.ar = getelementptr inbounds nuw i8, ptr %.5.i, i64 2
  store i16 -23131, ptr %.5.i, align 2, !tbaa !9
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  store i32 15, ptr %4, align 4, !tbaa !11
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.6.i = phi ptr [ %i.ar, %bb.an ], [ %.5.i, %bb.ao ] ; 4 uses
  %i.as = icmp ult ptr %.6.i, %i.b
  br i1 %i.as, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.at = trunc nuw i32 %.041.i to i16
  %i.au = getelementptr inbounds nuw i8, ptr %.6.i, i64 2
  store i16 %i.at, ptr %.6.i, align 2, !tbaa !9
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  store i32 15, ptr %4, align 4, !tbaa !11
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.7.i = phi ptr [ %i.au, %bb.aq ], [ %.6.i, %bb.ar ] ; 4 uses
  %i.av = icmp ult ptr %.7.i, %i.b
  br i1 %i.av, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.aw = getelementptr inbounds nuw i8, ptr %.7.i, i64 2
  store i16 %.03769, ptr %.7.i, align 2, !tbaa !9
  br label %encodeRunShort.exit

bb.au:                                            ; preds = %bb.as
  store i32 15, ptr %4, align 4, !tbaa !11
  br label %encodeRunShort.exit

encodeRunShort.exit:                              ; preds = %bb.y, %bb.ab, %bb.ad, %bb.ac, %bb.k, %bb.q, %bb.v, %bb.u, %bb.au, %bb.at, %.preheader.i, %bb.d
  %.140 = phi ptr [ %.03968, %bb.d ], [ %.7.i, %bb.au ], [ %i.aw, %bb.at ], [ %.03968, %.preheader.i ], [ %.1.us.i.2, %bb.u ], [ %.2.us.i, %bb.k ], [ %.2.us.i.1, %bb.q ], [ %i.ad, %bb.v ], [ %.2.i, %bb.y ], [ %.2.i.1, %bb.ab ], [ %i.aj, %bb.ad ], [ %.2.i.1, %bb.ac ] ; 9 uses
  %.138 = phi i16 [ %.03769, %bb.d ], [ %i.l, %bb.au ], [ %i.l, %bb.at ], [ %i.l, %.preheader.i ], [ %i.l, %bb.k ], [ %i.l, %bb.u ], [ %i.l, %bb.v ], [ %i.l, %bb.q ], [ %i.l, %bb.ac ], [ %i.l, %bb.ad ], [ %i.l, %bb.ab ], [ %i.l, %bb.y ] ; 5 uses
  %.1 = phi i32 [ %i.o, %bb.d ], [ 1, %bb.au ], [ 1, %bb.at ], [ 1, %.preheader.i ], [ 1, %bb.k ], [ 1, %bb.u ], [ 1, %bb.v ], [ 1, %bb.q ], [ 1, %bb.ac ], [ 1, %bb.ad ], [ 1, %bb.ab ], [ 1, %bb.y ] ; 6 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !12

._crit_edge:                                      ; preds = %encodeRunShort.exit
  %i.ax = icmp slt i32 %.1, 4
  br i1 %i.ax, label %.preheader.i52, label %bb.bl

.preheader.i52:                                   ; preds = %._crit_edge
  %i.ay = icmp sgt i32 %.1, 0
  br i1 %i.ay, label %.lr.ph.i53, label %encodeRunShort.exit65

.lr.ph.i53:                                       ; preds = %bb.c, %.preheader.i52
  %.039.lcssa8492 = phi ptr [ %.140, %.preheader.i52 ], [ %i.i, %bb.c ] ; 4 uses
  %.037.lcssa8591 = phi i16 [ %.138, %.preheader.i52 ], [ %i.g, %bb.c ] ; 4 uses
  %.036.lcssa8690 = phi i32 [ %.1, %.preheader.i52 ], [ 1, %bb.c ] ; 8 uses
  %i.az = icmp eq i16 %.037.lcssa8591, -23131
  br i1 %i.az, label %.lr.ph.split.us.i59.preheader, label %.lr.ph.split.i54.preheader

.lr.ph.split.i54.preheader:                       ; preds = %.lr.ph.i53
  %i.ba = icmp eq i32 %.036.lcssa8690, 1
  br i1 %i.ba, label %.lr.ph.split.i54.epil.preheader, label %.lr.ph.split.i54.preheader.new

.lr.ph.split.i54.preheader.new:                   ; preds = %.lr.ph.split.i54.preheader
  %unroll_iter = and i32 %.036.lcssa8690, 2147483646
  br label %.lr.ph.split.i54

.lr.ph.split.us.i59.preheader:                    ; preds = %.lr.ph.i53
  %i.bb = icmp eq i32 %.036.lcssa8690, 1
  br i1 %i.bb, label %.lr.ph.split.us.i59.epil.preheader, label %.lr.ph.split.us.i59.preheader.new

.lr.ph.split.us.i59.preheader.new:                ; preds = %.lr.ph.split.us.i59.preheader
  %unroll_iter105 = and i32 %.036.lcssa8690, 2147483646
  br label %.lr.ph.split.us.i59

.lr.ph.split.us.i59:                              ; preds = %bb.bf, %.lr.ph.split.us.i59.preheader.new
  %.04046.us.i61 = phi ptr [ %.039.lcssa8492, %.lr.ph.split.us.i59.preheader.new ], [ %.2.us.i63.1, %bb.bf ] ; 4 uses
  %niter106 = phi i32 [ 0, %.lr.ph.split.us.i59.preheader.new ], [ %niter106.next.1, %bb.bf ]
  %i.bc = icmp ult ptr %.04046.us.i61, %i.b
  br i1 %i.bc, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %.lr.ph.split.us.i59
  store i32 15, ptr %4, align 4, !tbaa !11
  br label %bb.ax

bb.aw:                                            ; preds = %.lr.ph.split.us.i59
  %i.bd = getelementptr inbounds nuw i8, ptr %.04046.us.i61, i64 2
  store i16 -23131, ptr %.04046.us.i61, align 2, !tbaa !9
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.1.us.i62 = phi ptr [ %i.bd, %bb.aw ], [ %.04046.us.i61, %bb.av ] ; 4 uses
  %i.be = icmp ult ptr %.1.us.i62, %i.b
  br i1 %i.be, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  store i32 15, ptr %4, align 4, !tbaa !11
  br label %.lr.ph.split.us.i59.1

bb.az:                                            ; preds = %bb.ax
  %i.bf = getelementptr inbounds nuw i8, ptr %.1.us.i62, i64 2
  store i16 -23131, ptr %.1.us.i62, align 2, !tbaa !9
  br label %.lr.ph.split.us.i59.1

.lr.ph.split.us.i59.1:                            ; preds = %bb.az, %bb.ay
  %.2.us.i63 = phi ptr [ %i.bf, %bb.az ], [ %.1.us.i62, %bb.ay ] ; 4 uses
  %i.bg = icmp ult ptr %.2.us.i63, %i.b
  br i1 %i.bg, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %.lr.ph.split.us.i59.1
  store i32 15, ptr %4, align 4, !tbaa !11
  br label %bb.bc

bb.bb:                                            ; preds = %.lr.ph.split.us.i59.1
  %i.bh = getelementptr inbounds nuw i8, ptr %.2.us.i63, i64 2
  store i16 -23131, ptr %.2.us.i63, align 2, !tbaa !9
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.1.us.i62.1 = phi ptr [ %i.bh, %bb.bb ], [ %.2.us.i63, %bb.ba ] ; 4 uses
  %i.bi = icmp ult ptr %.1.us.i62.1, %i.b
  br i1 %i.bi, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  store i32 15, ptr %4, align 4, !tbaa !11
  br label %bb.bf

bb.be:                                            ; preds = %bb.bc
  %i.bj = getelementptr inbounds nuw i8, ptr %.1.us.i62.1, i64 2
  store i16 -23131, ptr %.1.us.i62.1, align 2, !tbaa !9
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %.2.us.i63.1 = phi ptr [ %i.bj, %bb.be ], [ %.1.us.i62.1, %bb.bd ] ; 3 uses
  %niter106.next.1 = add i32 %niter106, 2         ; 2 uses
  %niter106.ncmp.1 = icmp eq i32 %niter106.next.1, %unroll_iter105
  br i1 %niter106.ncmp.1, label %encodeRunShort.exit65.loopexit.unr-lcssa, label %.lr.ph.split.us.i59, !llvm.loop !14

.lr.ph.split.i54:                                 ; preds = %bb.bk, %.lr.ph.split.i54.preheader.new
  %.04046.i56 = phi ptr [ %.039.lcssa8492, %.lr.ph.split.i54.preheader.new ], [ %.2.i57.1, %bb.bk ] ; 4 uses
  %niter = phi i32 [ 0, %.lr.ph.split.i54.preheader.new ], [ %niter.next.1, %bb.bk ]
  %i.bk = icmp ult ptr %.04046.i56, %i.b
  br i1 %i.bk, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %.lr.ph.split.i54
  %i.bl = getelementptr inbounds nuw i8, ptr %.04046.i56, i64 2
  store i16 %.037.lcssa8591, ptr %.04046.i56, align 2, !tbaa !9
  br label %.lr.ph.split.i54.1

bb.bh:                                            ; preds = %.lr.ph.split.i54
  store i32 15, ptr %4, align 4, !tbaa !11
  br label %.lr.ph.split.i54.1

.lr.ph.split.i54.1:                               ; preds = %bb.bh, %bb.bg
  %.2.i57 = phi ptr [ %i.bl, %bb.bg ], [ %.04046.i56, %bb.bh ] ; 4 uses
  %i.bm = icmp ult ptr %.2.i57, %i.b
  br i1 %i.bm, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %.lr.ph.split.i54.1
  store i32 15, ptr %4, align 4, !tbaa !11
  br label %bb.bk

bb.bj:                                            ; preds = %.lr.ph.split.i54.1
  %i.bn = getelementptr inbounds nuw i8, ptr %.2.i57, i64 2
  store i16 %.037.lcssa8591, ptr %.2.i57, align 2, !tbaa !9
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %.2.i57.1 = phi ptr [ %i.bn, %bb.bj ], [ %.2.i57, %bb.bi ] ; 3 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %encodeRunShort.exit65.loopexit97.unr-lcssa, label %.lr.ph.split.i54, !llvm.loop !14

bb.bl:                                            ; preds = %._crit_edge
  %i.bo = icmp eq i32 %.1, 42405
  br i1 %i.bo, label %bb.bm, label %bb.bt

bb.bm:                                            ; preds = %bb.bl
  %i.bp = icmp eq i16 %.138, -23131
  br i1 %i.bp, label %bb.bn, label %bb.bq

bb.bn:                                            ; preds = %bb.bm
  %i.bq = icmp ult ptr %.140, %i.b
  br i1 %i.bq, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.br = getelementptr inbounds nuw i8, ptr %.140, i64 2
  store i16 -23131, ptr %.140, align 2, !tbaa !9
  br label %bb.bq

bb.bp:                                            ; preds = %bb.bn
  store i32 15, ptr %4, align 4, !tbaa !11
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo, %bb.bm
  %.3.i51 = phi ptr [ %i.br, %bb.bo ], [ %.140, %bb.bp ], [ %.140, %bb.bm ] ; 4 uses
  %i.bs = icmp ult ptr %.3.i51, %i.b
  br i1 %i.bs, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.bt = getelementptr inbounds nuw i8, ptr %.3.i51, i64 2
  store i16 %.138, ptr %.3.i51, align 2, !tbaa !9
  br label %bb.bt

bb.bs:                                            ; preds = %bb.bq
  store i32 15, ptr %4, align 4, !tbaa !11
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br, %bb.bl
  %.041.i46 = phi i32 [ %.1, %bb.bl ], [ 42404, %bb.br ], [ 42404, %bb.bs ]
  %.5.i47 = phi ptr [ %.140, %bb.bl ], [ %i.bt, %bb.br ], [ %.3.i51, %bb.bs ] ; 4 uses
  %i.bu = icmp ult ptr %.5.i47, %i.b
  br i1 %i.bu, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %.5.i47, i64 2
  store i16 -23131, ptr %.5.i47, align 2, !tbaa !9
  br label %bb.bw

bb.bv:                                            ; preds = %bb.bt
  store i32 15, ptr %4, align 4, !tbaa !11
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %.6.i48 = phi ptr [ %i.bv, %bb.bu ], [ %.5.i47, %bb.bv ] ; 4 uses
  %i.bw = icmp ult ptr %.6.i48, %i.b
  br i1 %i.bw, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.bx = trunc nuw i32 %.041.i46 to i16
  %i.by = getelementptr inbounds nuw i8, ptr %.6.i48, i64 2
  store i16 %i.bx, ptr %.6.i48, align 2, !tbaa !9
  br label %bb.bz

bb.by:                                            ; preds = %bb.bw
  store i32 15, ptr %4, align 4, !tbaa !11
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %.7.i49 = phi ptr [ %i.by, %bb.bx ], [ %.6.i48, %bb.by ] ; 4 uses
  %i.bz = icmp ult ptr %.7.i49, %i.b
  br i1 %i.bz, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.ca = getelementptr inbounds nuw i8, ptr %.7.i49, i64 2
  store i16 %.138, ptr %.7.i49, align 2, !tbaa !9
  br label %encodeRunShort.exit65

bb.cb:                                            ; preds = %bb.bz
  store i32 15, ptr %4, align 4, !tbaa !11
  br label %encodeRunShort.exit65

bb.cc:                                            ; preds = %bb.b
  store i32 15, ptr %4, align 4, !tbaa !11
  br label %encodeRunShort.exit65

bb.cd:                                            ; preds = %bb.a
  store i32 15, ptr %4, align 4, !tbaa !11
  br label %encodeRunShort.exit65

encodeRunShort.exit65.loopexit.unr-lcssa:         ; preds = %bb.bf
  %lcmp.mod102.not = trunc i32 %.036.lcssa8690 to i1
  br i1 %lcmp.mod102.not, label %.lr.ph.split.us.i59.epil.preheader, label %encodeRunShort.exit65

.lr.ph.split.us.i59.epil.preheader:               ; preds = %encodeRunShort.exit65.loopexit.unr-lcssa, %.lr.ph.split.us.i59.preheader
  %.04046.us.i61.epil.init = phi ptr [ %.039.lcssa8492, %.lr.ph.split.us.i59.preheader ], [ %.2.us.i63.1, %encodeRunShort.exit65.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod104 = trunc i32 %.036.lcssa8690 to i1
  tail call void @llvm.assume(i1 %lcmp.mod104)
  %i.cb = icmp ult ptr %.04046.us.i61.epil.init, %i.b
  br i1 %i.cb, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %.lr.ph.split.us.i59.epil.preheader
  store i32 15, ptr %4, align 4, !tbaa !11
  br label %bb.cg

bb.cf:                                            ; preds = %.lr.ph.split.us.i59.epil.preheader
  %i.cc = getelementptr inbounds nuw i8, ptr %.04046.us.i61.epil.init, i64 2
  store i16 -23131, ptr %.04046.us.i61.epil.init, align 2, !tbaa !9
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %.1.us.i62.epil = phi ptr [ %i.cc, %bb.cf ], [ %.04046.us.i61.epil.init, %bb.ce ] ; 4 uses
  %i.cd = icmp ult ptr %.1.us.i62.epil, %i.b
  br i1 %i.cd, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  store i32 15, ptr %4, align 4, !tbaa !11
  br label %encodeRunShort.exit65

bb.ci:                                            ; preds = %bb.cg
  %i.ce = getelementptr inbounds nuw i8, ptr %.1.us.i62.epil, i64 2
  store i16 -23131, ptr %.1.us.i62.epil, align 2, !tbaa !9
  br label %encodeRunShort.exit65

encodeRunShort.exit65.loopexit97.unr-lcssa:       ; preds = %bb.bk
  %lcmp.mod.not = trunc i32 %.036.lcssa8690 to i1
  br i1 %lcmp.mod.not, label %.lr.ph.split.i54.epil.preheader, label %encodeRunShort.exit65

.lr.ph.split.i54.epil.preheader:                  ; preds = %encodeRunShort.exit65.loopexit97.unr-lcssa, %.lr.ph.split.i54.preheader
  %.04046.i56.epil.init = phi ptr [ %.039.lcssa8492, %.lr.ph.split.i54.preheader ], [ %.2.i57.1, %encodeRunShort.exit65.loopexit97.unr-lcssa ] ; 4 uses
  %lcmp.mod100 = trunc i32 %.036.lcssa8690 to i1
  tail call void @llvm.assume(i1 %lcmp.mod100)
  %i.cf = icmp ult ptr %.04046.i56.epil.init, %i.b
  br i1 %i.cf, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %.lr.ph.split.i54.epil.preheader
  store i32 15, ptr %4, align 4, !tbaa !11
  br label %encodeRunShort.exit65

bb.ck:                                            ; preds = %.lr.ph.split.i54.epil.preheader
  %i.cg = getelementptr inbounds nuw i8, ptr %.04046.i56.epil.init, i64 2
  store i16 %.037.lcssa8591, ptr %.04046.i56.epil.init, align 2, !tbaa !9
  br label %encodeRunShort.exit65

encodeRunShort.exit65:                            ; preds = %encodeRunShort.exit65.loopexit97.unr-lcssa, %bb.ck, %bb.cj, %encodeRunShort.exit65.loopexit.unr-lcssa, %bb.ci, %bb.ch, %bb.cb, %bb.ca, %.preheader.i52, %bb.cc, %bb.cd
  %.2 = phi ptr [ %2, %bb.cd ], [ %i.f, %bb.cc ], [ %.7.i49, %bb.cb ], [ %i.ca, %bb.ca ], [ %.140, %.preheader.i52 ], [ %.1.us.i62.epil, %bb.ch ], [ %.2.us.i63.1, %encodeRunShort.exit65.loopexit.unr-lcssa ], [ %i.ce, %bb.ci ], [ %.2.i57.1, %encodeRunShort.exit65.loopexit97.unr-lcssa ], [ %i.cg, %bb.ck ], [ %.04046.i56.epil.init, %bb.cj ]
  %i.ch = ptrtoint ptr %.2 to i64
  %i.ci = ptrtoint ptr %2 to i64
  %i.cj = sub i64 %i.ch, %i.ci
  %i.ck = lshr exact i64 %i.cj, 1
  %i.cl = trunc i64 %i.ck to i32
  ret i32 %i.cl
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @byteArrayToRLEString(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr nofree noundef captures(address_is_null) %4) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [2 x i8], align 2                 ; 7 uses
  %i.b = sext i32 %3 to i64
  %.idx = shl nsw i64 %i.b, 1
  %i.c = getelementptr inbounds i8, ptr %2, i64 %.idx ; 3 uses
  %i.d = icmp sgt i32 %3, 0
  br i1 %i.d, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.e = lshr i32 %1, 16
  %i.f = trunc nuw i32 %i.e to i16
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 2 uses
  store i16 %i.f, ptr %2, align 2, !tbaa !9
  %.not = icmp eq i32 %3, 1
  br i1 %.not, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i8, ptr %0, align 1, !tbaa !15      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i16 0, ptr %i.a, align 2
  %i.i = trunc i32 %1 to i16
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  store i16 %i.i, ptr %i.g, align 2, !tbaa !9
  %i.k = icmp sgt i32 %1, 1
  br i1 %i.k, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %.03952 = phi i32 [ 1, %.lr.ph.preheader ], [ %.1, %bb.f ] ; 3 uses
  %.04051 = phi i8 [ %i.h, %.lr.ph.preheader ], [ %.141, %bb.f ] ; 3 uses
  %.04250 = phi ptr [ %i.j, %.lr.ph.preheader ], [ %.143, %bb.f ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.m = load i8, ptr %i.l, align 1, !tbaa !15    ; 2 uses
  %i.n = icmp eq i8 %i.m, %.04051
  %i.o = icmp slt i32 %.03952, 255
  %or.cond = select i1 %i.n, i1 %i.o, i1 false
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.p = add nsw i32 %.03952, 1
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.q = call fastcc ptr @encodeRunByte(ptr noundef %.04250, ptr noundef nonnull %i.c, i8 noundef zeroext %.04051, i32 noundef %.03952, ptr noundef %i.a, ptr noundef %4)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.143 = phi ptr [ %.04250, %bb.d ], [ %i.q, %bb.e ] ; 2 uses
  %.141 = phi i8 [ %.04051, %bb.d ], [ %i.m, %bb.e ] ; 2 uses
  %.1 = phi i32 [ %i.p, %bb.d ], [ 1, %bb.e ]     ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !16

._crit_edge:                                      ; preds = %bb.f, %bb.c
  %.042.lcssa = phi ptr [ %i.j, %bb.c ], [ %.143, %bb.f ]
  %.040.lcssa = phi i8 [ %i.h, %bb.c ], [ %.141, %bb.f ]
  %.039.lcssa = phi i32 [ 1, %bb.c ], [ %.1, %bb.f ]
  %i.r = call fastcc ptr @encodeRunByte(ptr noundef %.042.lcssa, ptr noundef nonnull %i.c, i8 noundef zeroext %.040.lcssa, i32 noundef %.039.lcssa, ptr noundef %i.a, ptr noundef %4) ; 5 uses
  %i.s = load i8, ptr %i.a, align 2, !tbaa !15
  %.not49 = icmp eq i8 %i.s, 0
  br i1 %.not49, label %appendEncodedByte.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  %.not.i = icmp eq ptr %4, null
  br i1 %.not.i, label %appendEncodedByte.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = load i32, ptr %4, align 4, !tbaa !11
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %appendEncodedByte.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = icmp ult ptr %i.r, %i.c
  br i1 %i.v, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !15
  %i.y = zext i8 %i.x to i16
  %i.z = shl nuw i16 %i.y, 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  store i16 %i.z, ptr %i.r, align 2, !tbaa !9
  br label %appendEncodedByte.exit

bb.k:                                             ; preds = %bb.i
  store i32 15, ptr %4, align 4, !tbaa !11
  br label %appendEncodedByte.exit

appendEncodedByte.exit:                           ; preds = %bb.j, %bb.k, %bb.h, %bb.g, %._crit_edge
  %.2 = phi ptr [ %i.r, %._crit_edge ], [ null, %bb.g ], [ null, %bb.h ], [ %i.aa, %bb.j ], [ %i.r, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.n

bb.l:                                             ; preds = %bb.b
  store i32 15, ptr %4, align 4, !tbaa !11
  br label %bb.n

bb.m:                                             ; preds = %bb.a
  store i32 15, ptr %4, align 4, !tbaa !11
  br label %bb.n

bb.n:                                             ; preds = %appendEncodedByte.exit, %bb.l, %bb.m
  %.3 = phi ptr [ %.2, %appendEncodedByte.exit ], [ %i.g, %bb.l ], [ %2, %bb.m ]
  %i.ab = ptrtoint ptr %.3 to i64
  %i.ac = ptrtoint ptr %2 to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = lshr exact i64 %i.ad, 1
  %i.af = trunc i64 %i.ae to i32
  ret i32 %i.af
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc ptr @encodeRunByte(ptr nofree noundef writeonly captures(address, ret: address, provenance) %0, ptr nofree noundef readnone captures(address) %1, i8 noundef zeroext %2, i32 noundef %3, ptr nofree noundef nonnull captures(none) %4, ptr nofree noundef captures(address_is_null) %5) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %5, null
  br i1 %.not, label %appendEncodedByte.exit78, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %5, align 4, !tbaa !11
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %appendEncodedByte.exit78, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = icmp slt i32 %3, 4
  br i1 %i.c, label %.preheader, label %bb.at

.preheader:                                       ; preds = %bb.c
  %i.d = icmp sgt i32 %3, 0
  br i1 %i.d, label %.lr.ph, label %appendEncodedByte.exit78

.lr.ph:                                           ; preds = %.preheader
  %i.e = icmp eq i8 %2, -91
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 1 ; 18 uses
  %i.g = zext i8 %2 to i16                        ; 3 uses
  br i1 %i.e, label %.lr.ph.split.us.split, label %appendEncodedByte.exit

.lr.ph.split.us.split:                            ; preds = %.lr.ph
  %i.h = load i32, ptr %5, align 4, !tbaa !11
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %appendEncodedByte.exit53.us, label %bb.d

bb.d:                                             ; preds = %.lr.ph.split.us.split
  %i.j = load i8, ptr %4, align 1, !tbaa !15
  %.not19.i.us.not = icmp eq i8 %i.j, 0
  br i1 %.not19.i.us.not, label %appendEncodedByte.exit.us, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = icmp ult ptr %0, %1
  br i1 %i.k, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 15, ptr %5, align 4, !tbaa !11
  br label %appendEncodedByte.exit.us.thread

bb.g:                                             ; preds = %bb.e
  %i.l = load i8, ptr %i.f, align 1, !tbaa !15
  %i.m = zext i8 %i.l to i16
  %i.n = shl nuw i16 %i.m, 8
  %i.o = or disjoint i16 %i.n, 165
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 2
end_hunk_0
