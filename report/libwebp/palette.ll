Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libwebp/original/palette?download=true
inline.NumInlined: 20
inline.NumDeleted: 11
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@PaletteCompareColorsForQsort:bb.a
  %i.b = select i1 %i.a, i32 -1, i32 1
  ret i32 %i.b
}

; Function Attrs: nofree nounwind uwtable
define hidden i32 @GetColorPalette(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 8 uses
  %i.b = alloca [1024 x i32], align 16            ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.a, i8 0, i64 1024, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.b, i8 0, i64 4096, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !16   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !17   ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.preheader64.lr.ph, label %._crit_edge87

.preheader64.lr.ph:                               ; preds = %bb.a
  %i.h = icmp sgt i32 %i.d, 0
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  br i1 %i.h, label %.preheader64.us.preheader, label %._crit_edge87

.preheader64.us.preheader:                        ; preds = %.preheader64.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !18   ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !9
  %i.m = xor i32 %i.l, -1
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %.preheader64.us

.preheader64.us:                                  ; preds = %.preheader64.us.preheader, %._crit_edge80.us
  %.04186.us = phi i32 [ %.2.ph.us, %._crit_edge80.us ], [ %i.m, %.preheader64.us.preheader ]
  %.04285.us = phi ptr [ %i.ak, %._crit_edge80.us ], [ %i.k, %.preheader64.us.preheader ] ; 2 uses
  %.04384.us = phi i32 [ %.3.ph.us, %._crit_edge80.us ], [ 0, %.preheader64.us.preheader ]
  %.04683.us = phi i32 [ %i.al, %._crit_edge80.us ], [ 0, %.preheader64.us.preheader ]
  br label %bb.b

bb.b:                                             ; preds = %.preheader64.us, %.loopexit.us
  %indvars.iv = phi i64 [ 0, %.preheader64.us ], [ %indvars.iv.next, %.loopexit.us ] ; 2 uses
  %.178.us = phi i32 [ %.04186.us, %.preheader64.us ], [ %.2.ph.us, %.loopexit.us ] ; 2 uses
  %.14477.us = phi i32 [ %.04384.us, %.preheader64.us ], [ %.3.ph.us, %.loopexit.us ] ; 4 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %.04285.us, i64 %indvars.iv
  %i.o = load i32, ptr %i.n, align 4, !tbaa !9    ; 6 uses
  %i.p = icmp eq i32 %i.o, %.178.us
  br i1 %i.p, label %.loopexit.us, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = mul i32 %i.o, 506832829
  %i.r = lshr i32 %i.q, 22                        ; 2 uses
  %i.s = zext nneg i32 %i.r to i64                ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !19
  %.not5873.us = icmp eq i8 %i.u, 0
  br i1 %.not5873.us, label %._crit_edge.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %bb.c, %bb.d
  %i.v = phi i64 [ %i.ab, %bb.d ], [ %i.s, %bb.c ]
  %.04074.us = phi i32 [ %i.aa, %bb.d ], [ %i.r, %bb.c ]
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !9
  %i.y = icmp eq i32 %i.x, %i.o
  br i1 %i.y, label %.loopexit.us, label %bb.d

bb.d:                                             ; preds = %.lr.ph.us
  %i.z = add nuw nsw i32 %.04074.us, 1
  %i.aa = and i32 %i.z, 1023                      ; 2 uses
  %i.ab = zext nneg i32 %i.aa to i64              ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !19
  %.not58.us = icmp eq i8 %i.ad, 0
  br i1 %.not58.us, label %._crit_edge.us, label %.lr.ph.us

._crit_edge.us:                                   ; preds = %bb.d, %bb.c
  %.lcssa72.us = phi i64 [ %i.s, %bb.c ], [ %i.ab, %bb.d ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 %.lcssa72.us
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.lcssa72.us
  store i32 %i.o, ptr %i.af, align 4, !tbaa !9
  store i8 1, ptr %i.ae, align 1, !tbaa !19
  %i.ag = add nsw i32 %.14477.us, 1
  %i.ah = icmp sgt i32 %.14477.us, 255
  br i1 %i.ah, label %.loopexit65, label %.loopexit.us

.loopexit.us:                                     ; preds = %.lr.ph.us, %._crit_edge.us, %bb.b
  %.3.ph.us = phi i32 [ %.14477.us, %bb.b ], [ %i.ag, %._crit_edge.us ], [ %.14477.us, %.lr.ph.us ] ; 3 uses
  %.2.ph.us = phi i32 [ %.178.us, %bb.b ], [ %i.o, %._crit_edge.us ], [ %i.o, %.lr.ph.us ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge80.us, label %bb.b, !llvm.loop !21

._crit_edge80.us:                                 ; preds = %.loopexit.us
  %i.ai = load i32, ptr %i.i, align 8, !tbaa !20
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds [4 x i8], ptr %.04285.us, i64 %i.aj
  %i.al = add nuw nsw i32 %.04683.us, 1           ; 2 uses
  %exitcond93.not = icmp eq i32 %i.al, %i.f
  br i1 %exitcond93.not, label %._crit_edge87, label %.preheader64.us, !llvm.loop !22

._crit_edge87:                                    ; preds = %._crit_edge80.us, %.preheader64.lr.ph, %bb.a
  %.043.lcssa = phi i32 [ 0, %bb.a ], [ 0, %.preheader64.lr.ph ], [ %.3.ph.us, %._crit_edge80.us ]
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.loopexit65, label %.preheader

.preheader:                                       ; preds = %._crit_edge87, %bb.g
  %indvars.iv94 = phi i64 [ %indvars.iv.next95.1, %bb.g ], [ 0, %._crit_edge87 ] ; 4 uses
  %.490 = phi i32 [ %.5.1, %bb.g ], [ 0, %._crit_edge87 ] ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv94
  %i.an = load i8, ptr %i.am, align 2, !tbaa !19
  %.not57 = icmp eq i8 %i.an, 0
  br i1 %.not57, label %.preheader.1, label %bb.e

bb.e:                                             ; preds = %.preheader
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv94
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !9
  %i.aq = sext i32 %.490 to i64
  %i.ar = getelementptr inbounds [4 x i8], ptr %1, i64 %i.aq
  store i32 %i.ap, ptr %i.ar, align 4, !tbaa !9
  %i.as = add nsw i32 %.490, 1
  br label %.preheader.1

.preheader.1:                                     ; preds = %.preheader, %bb.e
  %.5 = phi i32 [ %i.as, %bb.e ], [ %.490, %.preheader ] ; 3 uses
  %indvars.iv.next95 = or disjoint i64 %indvars.iv94, 1 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next95
  %i.au = load i8, ptr %i.at, align 1, !tbaa !19
  %.not57.1 = icmp eq i8 %i.au, 0
  br i1 %.not57.1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.preheader.1
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next95
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !9
  %i.ax = sext i32 %.5 to i64
  %i.ay = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ax
  store i32 %i.aw, ptr %i.ay, align 4, !tbaa !9
  %i.az = add nsw i32 %.5, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.preheader.1
  %.5.1 = phi i32 [ %i.az, %bb.f ], [ %.5, %.preheader.1 ] ; 3 uses
  %indvars.iv.next95.1 = add nuw nsw i64 %indvars.iv94, 2 ; 2 uses
  %exitcond97.not.1 = icmp eq i64 %indvars.iv.next95.1, 1024
  br i1 %exitcond97.not.1, label %bb.h, label %.preheader, !llvm.loop !23

bb.h:                                             ; preds = %bb.g
  %i.ba = sext i32 %.5.1 to i64
  tail call void @qsort(ptr noundef nonnull %1, i64 noundef %i.ba, i64 noundef 4, ptr noundef nonnull @PaletteCompareColorsForQsort) #10
  br label %.loopexit65

.loopexit65:                                      ; preds = %._crit_edge.us, %._crit_edge87, %bb.h
  %.352 = phi i32 [ %.043.lcssa, %._crit_edge87 ], [ %.5.1, %bb.h ], [ 257, %._crit_edge.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.352
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @PaletteSort(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #6 {
bb.a:
  %i.a = alloca [256 x i32], align 16             ; 7 uses
  %i.b = alloca [256 x i32], align 16             ; 11 uses
  %i.c = alloca [256 x i8], align 16              ; 9 uses
  %5 = alloca [256 x %struct.Sum], align 16       ; 12 uses
  switch i32 %0, label %PaletteSortMinimizeDeltas.exit [
    i32 0, label %bb.b
    i32 1, label %bb.e
    i32 2, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %2, align 4, !tbaa !9
  %i.e = icmp eq i32 %i.d, 0
  %i.f = icmp ugt i32 %3, 17
  %or.cond = and i1 %i.f, %i.e
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.h = add i32 %3, -1
  %i.i = zext i32 %i.h to i64                     ; 2 uses
  %i.j = shl nuw nsw i64 %i.i, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %4, ptr nonnull align 4 %i.g, i64 %i.j, i1 false)
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.i
  store i32 0, ptr %i.k, align 4, !tbaa !9
  br label %PaletteSortMinimizeDeltas.exit

bb.d:                                             ; preds = %bb.b
  %i.l = zext i32 %3 to i64
  %i.m = shl nuw nsw i64 %i.l, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %4, ptr nonnull align 4 %2, i64 %i.m, i1 false)
  br label %PaletteSortMinimizeDeltas.exit

bb.e:                                             ; preds = %bb.a
  %i.n = sext i32 %3 to i64
  %i.o = shl nsw i64 %i.n, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %4, ptr readonly align 4 %2, i64 %i.o, i1 false)
  %i.p = icmp sgt i32 %3, 0
  br i1 %i.p, label %.lr.ph.preheader.i.i, label %PaletteHasNonMonotonousDeltas.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.e
  %wide.trip.count.i.i = zext nneg i32 %3 to i64  ; 3 uses
  %min.iters.check82 = icmp ult i32 %3, 8
  br i1 %min.iters.check82, label %.lr.ph.i.i.preheader, label %vector.ph83

vector.ph83:                                      ; preds = %.lr.ph.preheader.i.i
  %n.vec84 = and i64 %wide.trip.count.i.i, 2147483640 ; 3 uses
  br label %vector.body85

vector.body85:                                    ; preds = %vector.body85, %vector.ph83
  %index86 = phi i64 [ 0, %vector.ph83 ], [ %index.next91, %vector.body85 ] ; 2 uses
  %vec.phi87 = phi <4 x i8> [ zeroinitializer, %vector.ph83 ], [ %i.bq, %vector.body85 ]
  %vec.phi88 = phi <4 x i8> [ zeroinitializer, %vector.ph83 ], [ %i.br, %vector.body85 ]
  %vector.recur = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph83 ], [ %wide.load90, %vector.body85 ]
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index86 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %wide.load89 = load <4 x i32>, ptr %i.q, align 4, !tbaa !9 ; 4 uses
  %wide.load90 = load <4 x i32>, ptr %i.r, align 4, !tbaa !9 ; 5 uses
  %i.s = shufflevector <4 x i32> %vector.recur, <4 x i32> %wide.load89, <4 x i32> <i32 3, i32 4, i32 5, i32 6> ; 2 uses
  %i.t = shufflevector <4 x i32> %wide.load89, <4 x i32> %wide.load90, <4 x i32> <i32 3, i32 4, i32 5, i32 6> ; 2 uses
  %i.u = and <4 x i32> %i.s, splat (i32 65280)
  %i.v = and <4 x i32> %i.t, splat (i32 65280)
  %i.w = sub <4 x i32> %wide.load89, %i.u
  %i.x = sub <4 x i32> %wide.load90, %i.v
  %i.y = or <4 x i32> %wide.load89, splat (i32 65280)
  %i.z = or <4 x i32> %wide.load90, splat (i32 65280)
  %i.aa = and <4 x i32> %i.s, splat (i32 16711935)
  %i.ab = and <4 x i32> %i.t, splat (i32 16711935)
  %i.ac = sub <4 x i32> %i.y, %i.aa               ; 2 uses
  %i.ad = sub <4 x i32> %i.z, %i.ab               ; 2 uses
  %i.ae = lshr <4 x i32> %i.ac, splat (i32 16)
  %i.af = lshr <4 x i32> %i.ad, splat (i32 16)
  %i.ag = lshr <4 x i32> %i.w, splat (i32 8)
  %i.ah = lshr <4 x i32> %i.x, splat (i32 8)
  %i.ai = and <4 x i32> %i.ae, splat (i32 255)    ; 2 uses
  %i.aj = and <4 x i32> %i.af, splat (i32 255)    ; 2 uses
  %i.ak = icmp eq <4 x i32> %i.ai, zeroinitializer
  %i.al = icmp eq <4 x i32> %i.aj, zeroinitializer
  %i.am = icmp samesign ult <4 x i32> %i.ai, splat (i32 128)
  %i.an = icmp samesign ult <4 x i32> %i.aj, splat (i32 128)
  %i.ao = select <4 x i1> %i.am, <4 x i8> splat (i8 1), <4 x i8> splat (i8 2)
  %i.ap = select <4 x i1> %i.an, <4 x i8> splat (i8 1), <4 x i8> splat (i8 2)
  %i.aq = select <4 x i1> %i.ak, <4 x i8> zeroinitializer, <4 x i8> %i.ao
  %i.ar = select <4 x i1> %i.al, <4 x i8> zeroinitializer, <4 x i8> %i.ap
  %i.as = and <4 x i32> %i.ag, splat (i32 255)    ; 2 uses
  %i.at = and <4 x i32> %i.ah, splat (i32 255)    ; 2 uses
  %i.au = icmp eq <4 x i32> %i.as, zeroinitializer
  %i.av = icmp eq <4 x i32> %i.at, zeroinitializer
  %i.aw = icmp samesign ult <4 x i32> %i.as, splat (i32 128)
  %i.ax = icmp samesign ult <4 x i32> %i.at, splat (i32 128)
  %i.ay = select <4 x i1> %i.aw, <4 x i8> splat (i8 8), <4 x i8> splat (i8 16)
  %i.az = select <4 x i1> %i.ax, <4 x i8> splat (i8 8), <4 x i8> splat (i8 16)
  %i.ba = select <4 x i1> %i.au, <4 x i8> zeroinitializer, <4 x i8> %i.ay
  %i.bb = select <4 x i1> %i.av, <4 x i8> zeroinitializer, <4 x i8> %i.az
  %i.bc = and <4 x i32> %i.ac, splat (i32 255)    ; 2 uses
  %i.bd = and <4 x i32> %i.ad, splat (i32 255)    ; 2 uses
  %i.be = icmp eq <4 x i32> %i.bc, zeroinitializer
  %i.bf = icmp eq <4 x i32> %i.bd, zeroinitializer
  %i.bg = icmp samesign ult <4 x i32> %i.bc, splat (i32 128)
  %i.bh = icmp samesign ult <4 x i32> %i.bd, splat (i32 128)
  %i.bi = select <4 x i1> %i.bg, <4 x i8> splat (i8 64), <4 x i8> splat (i8 -128)
  %i.bj = select <4 x i1> %i.bh, <4 x i8> splat (i8 64), <4 x i8> splat (i8 -128)
  %i.bk = select <4 x i1> %i.be, <4 x i8> zeroinitializer, <4 x i8> %i.bi
  %i.bl = select <4 x i1> %i.bf, <4 x i8> zeroinitializer, <4 x i8> %i.bj
  %i.bm = or <4 x i8> %i.bk, %vec.phi87
  %i.bn = or <4 x i8> %i.bl, %vec.phi88
  %i.bo = or <4 x i8> %i.bm, %i.ba
  %i.bp = or <4 x i8> %i.bn, %i.bb
  %i.bq = or <4 x i8> %i.bo, %i.aq                ; 2 uses
  %i.br = or <4 x i8> %i.bp, %i.ar                ; 2 uses
  %index.next91 = add nuw i64 %index86, 8         ; 2 uses
  %i.bs = icmp eq i64 %index.next91, %n.vec84
  br i1 %i.bs, label %middle.block92, label %vector.body85, !llvm.loop !24

middle.block92:                                   ; preds = %vector.body85
  %bin.rdx93 = or <4 x i8> %i.br, %i.bq
  %i.bt = tail call i8 @llvm.vector.reduce.or.v4i8(<4 x i8> %bin.rdx93) ; 2 uses
  %vector.recur.extract = extractelement <4 x i32> %wide.load90, i64 3
  %cmp.n94 = icmp eq i64 %n.vec84, %wide.trip.count.i.i
  br i1 %cmp.n94, label %PaletteHasNonMonotonousDeltas.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.preheader.i.i, %middle.block92
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %n.vec84, %middle.block92 ]
  %.030.i.i.ph = phi i8 [ 0, %.lr.ph.preheader.i.i ], [ %i.bt, %middle.block92 ]
  %.02228.i.i.ph = phi i32 [ 0, %.lr.ph.preheader.i.i ], [ %vector.recur.extract, %middle.block92 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.030.i.i = phi i8 [ %.3.i.i, %.lr.ph.i.i ], [ %.030.i.i.ph, %.lr.ph.i.i.preheader ]
  %.02228.i.i = phi i32 [ %i.bv, %.lr.ph.i.i ], [ %.02228.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i.i
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !9  ; 3 uses
  %i.bw = and i32 %.02228.i.i, 65280
  %i.bx = sub i32 %i.bv, %i.bw
  %i.by = or i32 %i.bv, 65280
  %i.bz = and i32 %.02228.i.i, 16711935
  %i.ca = sub i32 %i.by, %i.bz                    ; 2 uses
  %i.cb = lshr i32 %i.ca, 16
  %i.cc = lshr i32 %i.bx, 8
  %i.cd = and i32 %i.cb, 255                      ; 2 uses
  %.not.i.i = icmp eq i32 %i.cd, 0
  %i.ce = icmp samesign ult i32 %i.cd, 128
  %i.cf = select i1 %i.ce, i8 1, i8 2
  %i.cg = select i1 %.not.i.i, i8 0, i8 %i.cf
  %i.ch = and i32 %i.cc, 255                      ; 2 uses
  %.not26.i.i = icmp eq i32 %i.ch, 0
  %i.ci = icmp samesign ult i32 %i.ch, 128
  %i.cj = select i1 %i.ci, i8 8, i8 16
  %i.ck = select i1 %.not26.i.i, i8 0, i8 %i.cj
  %i.cl = and i32 %i.ca, 255                      ; 2 uses
  %.not27.i.i = icmp eq i32 %i.cl, 0
  %i.cm = icmp samesign ult i32 %i.cl, 128
  %i.cn = select i1 %i.cm, i8 64, i8 -128
  %i.co = select i1 %.not27.i.i, i8 0, i8 %i.cn
  %i.cp = or i8 %i.co, %.030.i.i
  %i.cq = or i8 %i.cp, %i.ck
  %.3.i.i = or i8 %i.cq, %i.cg                    ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %PaletteHasNonMonotonousDeltas.exit.i, label %.lr.ph.i.i, !llvm.loop !25

PaletteHasNonMonotonousDeltas.exit.i:             ; preds = %.lr.ph.i.i, %middle.block92, %bb.e
  %.0.lcssa.i.i = phi i8 [ 0, %bb.e ], [ %i.bt, %middle.block92 ], [ %.3.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.cr = shl i8 %.0.lcssa.i.i, 1
  %i.cs = and i8 %i.cr, %.0.lcssa.i.i
  %.not41.i = icmp eq i8 %i.cs, 0
  br i1 %.not41.i, label %PaletteSortMinimizeDeltas.exit, label %bb.f

bb.f:                                             ; preds = %PaletteHasNonMonotonousDeltas.exit.i
  %i.ct = icmp sgt i32 %3, 17
  br i1 %i.ct, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.cu = load i32, ptr %4, align 4, !tbaa !9
  %i.cv = icmp eq i32 %i.cu, 0
  br i1 %i.cv, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cw = add nsw i32 %3, -1                      ; 2 uses
  %i.cx = zext nneg i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.cx ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !9
  store i32 0, ptr %i.cy, align 4, !tbaa !9
  store i32 %i.cz, ptr %4, align 4, !tbaa !9
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %.036.i = phi i32 [ %i.cw, %bb.h ], [ %3, %bb.g ], [ %3, %bb.f ] ; 2 uses
  %6 = icmp sgt i32 %.036.i, 0
  br i1 %6, label %.preheader.preheader.i, label %PaletteSortMinimizeDeltas.exit

.preheader.preheader.i:                           ; preds = %bb.i
  %wide.trip.count51.i = zext nneg i32 %.036.i to i64 ; 2 uses
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.k, %.preheader.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.preheader.i ], [ %indvars.iv.next.i, %bb.k ] ; 4 uses
  %.03545.i = phi i32 [ 0, %.preheader.preheader.i ], [ %i.ek, %bb.k ] ; 2 uses
  %i.da = and i32 %.03545.i, -16711936
  %i.db = and i32 %.03545.i, 16711935
  %i.dc = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.preheader.i
  %indvars.iv47.i = phi i64 [ %indvars.iv.i, %.preheader.i ], [ %indvars.iv.next48.i, %bb.j ] ; 3 uses
  %.044.i = phi i32 [ -1, %.preheader.i ], [ %spec.select40.i, %bb.j ] ; 2 uses
  %.03143.i = phi i32 [ %i.dc, %.preheader.i ], [ %spec.select.i, %bb.j ]
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv47.i
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !9  ; 2 uses
  %i.df = or i32 %i.de, 16711680
  %i.dg = sub i32 %i.df, %i.da                    ; 3 uses
  %i.dh = or i32 %i.de, 65280
  %i.di = sub i32 %i.dh, %i.db                    ; 2 uses
  %i.dj = and i32 %i.di, 255                      ; 3 uses
  %i.dk = icmp samesign ult i32 %i.dj, 129
  %i.dl = sub nuw nsw i32 256, %i.dj
  %i.dm = select i1 %i.dk, i32 %i.dj, i32 %i.dl
  %i.dn = lshr i32 %i.dg, 8
  %i.do = and i32 %i.dn, 255                      ; 3 uses
  %i.dp = icmp samesign ult i32 %i.do, 129
  %i.dq = sub nuw nsw i32 256, %i.do
  %i.dr = select i1 %i.dp, i32 %i.do, i32 %i.dq
  %i.ds = add nuw nsw i32 %i.dr, %i.dm
  %i.dt = lshr i32 %i.di, 16
  %i.du = and i32 %i.dt, 255                      ; 3 uses
  %i.dv = icmp samesign ult i32 %i.du, 129
  %i.dw = sub nuw nsw i32 256, %i.du
  %i.dx = select i1 %i.dv, i32 %i.du, i32 %i.dw
  %i.dy = add nuw nsw i32 %i.ds, %i.dx
  %i.dz = mul nuw nsw i32 %i.dy, 9
  %i.ea = lshr i32 %i.dg, 24                      ; 2 uses
  %i.eb = icmp ult i32 %i.dg, -2130706432
  %i.ec = sub nuw nsw i32 256, %i.ea
  %i.ed = select i1 %i.eb, i32 %i.ea, i32 %i.ec
  %i.ee = add nuw nsw i32 %i.dz, %i.ed            ; 2 uses
  %i.ef = icmp ugt i32 %.044.i, %i.ee
  %i.eg = trunc nuw nsw i64 %indvars.iv47.i to i32
  %spec.select.i = select i1 %i.ef, i32 %i.eg, i32 %.03143.i ; 2 uses
  %spec.select40.i = tail call i32 @llvm.umin.i32(i32 %.044.i, i32 %i.ee)
  %indvars.iv.next48.i = add nuw nsw i64 %indvars.iv47.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next48.i, %wide.trip.count51.i
  br i1 %exitcond.not.i, label %bb.k, label %bb.j, !llvm.loop !26

bb.k:                                             ; preds = %bb.j
  %i.eh = sext i32 %spec.select.i to i64
  %i.ei = getelementptr inbounds [4 x i8], ptr %4, i64 %i.eh ; 2 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.i ; 2 uses
  %i.ek = load i32, ptr %i.ei, align 4, !tbaa !9  ; 2 uses
  %i.el = load i32, ptr %i.ej, align 4, !tbaa !9
  store i32 %i.el, ptr %i.ei, align 4, !tbaa !9
  store i32 %i.ek, ptr %i.ej, align 4, !tbaa !9
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond52.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count51.i
  br i1 %exitcond52.not.i, label %PaletteSortMinimizeDeltas.exit, label %.preheader.i, !llvm.loop !27

bb.l:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %i.em = icmp ult i32 %3, 2
  br i1 %i.em, label %PaletteSortModifiedZeng.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.en = mul i32 %3, %3
  %i.eo = zext i32 %i.en to i64
  %i.ep = tail call ptr @WebPSafeCalloc(i64 noundef %i.eo, i64 noundef 4) #10 ; 24 uses
  %i.eq = icmp eq ptr %i.ep, null
  br i1 %i.eq, label %PaletteSortModifiedZeng.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !18 ; 2 uses
  %i.et = load i32, ptr %i.es, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.a, i8 0, i64 1024, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !16
  %i.ew = shl nsw i32 %i.ev, 1
  %i.ex = sext i32 %i.ew to i64
  %i.ey = tail call ptr @WebPSafeMalloc(i64 noundef %i.ex, i64 noundef 4) #10 ; 4 uses
  %i.ez = icmp eq ptr %i.ey, null
  br i1 %i.ez, label %bb.ab, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.fa = load i32, ptr %i.eu, align 8, !tbaa !16
  %i.fb = zext i32 %3 to i64                      ; 14 uses
  %i.fc = shl nuw nsw i64 %i.fb, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.b, ptr noundef nonnull readonly align 4 dereferenceable(1) %2, i64 %i.fc, i1 false)
  call void @qsort(ptr noundef nonnull %i.b, i64 noundef %i.fb, i64 noundef 4, ptr noundef nonnull @PaletteCompareColorsForQsort) #10
  %i.fd = load i32, ptr %i.b, align 16, !tbaa !9
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %SearchColorNoIdx.exit.i.i.i, %bb.o
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %SearchColorNoIdx.exit.i.i.i ], [ 0, %bb.o ] ; 3 uses
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i.i.i
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !9  ; 3 uses
  %i.fg = icmp eq i32 %i.fd, %i.ff
  br i1 %i.fg, label %SearchColorNoIdx.exit.i.i.i, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.lr.ph.i.i.i, %.preheader.i.i.i.i
  %.018.i.i.i.i = phi i32 [ %..018.i.i.i.i, %.preheader.i.i.i.i ], [ 0, %.lr.ph.i.i.i ] ; 2 uses
  %.017.i.i.i.i = phi i32 [ %.017..i.i.i.i, %.preheader.i.i.i.i ], [ %3, %.lr.ph.i.i.i ] ; 2 uses
  %i.fh = add nsw i32 %.017.i.i.i.i, %.018.i.i.i.i
  %i.fi = ashr i32 %i.fh, 1                       ; 3 uses
  %i.fj = sext i32 %i.fi to i64                   ; 2 uses
  %i.fk = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.fj
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !9  ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.fl, %i.ff
  %i.fm = icmp ult i32 %i.fl, %i.ff               ; 2 uses
  %..018.i.i.i.i = select i1 %i.fm, i32 %i.fi, i32 %.018.i.i.i.i
  %.017..i.i.i.i = select i1 %i.fm, i32 %.017.i.i.i.i, i32 %i.fi
  br i1 %.not.i.i.i.i, label %SearchColorNoIdx.exit.i.i.i, label %.preheader.i.i.i.i

SearchColorNoIdx.exit.i.i.i:                      ; preds = %.preheader.i.i.i.i, %.lr.ph.i.i.i
  %.223.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.fj, %.preheader.i.i.i.i ]
  %i.fn = getelementptr inbounds [4 x i8], ptr %i.a, i64 %.223.i.i.i.i
  %i.fo = trunc nuw i64 %indvars.iv.i.i.i to i32
  store i32 %i.fo, ptr %i.fn, align 4, !tbaa !9
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %i.fb
  br i1 %exitcond.not.i.i.i, label %PrepareMapToPalette.exit.preheader.i.i, label %.lr.ph.i.i.i, !llvm.loop !0

PrepareMapToPalette.exit.preheader.i.i:           ; preds = %SearchColorNoIdx.exit.i.i.i
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !17
  %i.fr = icmp sgt i32 %i.fq, 0
  br i1 %i.fr, label %.preheader.lr.ph.i.i, label %.loopexit120.i

.preheader.lr.ph.i.i:                             ; preds = %PrepareMapToPalette.exit.preheader.i.i
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ft = load i32, ptr %i.eu, align 8, !tbaa !16 ; 2 uses
  %i.fu = icmp sgt i32 %i.ft, 0
  br i1 %i.fu, label %.preheader.i.preheader.i, label %.loopexit120.i

.preheader.i.preheader.i:                         ; preds = %.preheader.lr.ph.i.i
  %i.fv = xor i32 %i.et, -1
  %i.fw = sext i32 %i.fa to i64
  %i.fx = getelementptr inbounds [4 x i8], ptr %i.ey, i64 %i.fw
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %PrepareMapToPalette.exit.i.i, %.preheader.i.preheader.i
  %i.fy = phi i32 [ %i.iw, %PrepareMapToPalette.exit.i.i ], [ %i.ft, %.preheader.i.preheader.i ] ; 2 uses
  %.05989.i.i = phi i32 [ %.1.lcssa.i.i, %PrepareMapToPalette.exit.i.i ], [ 0, %.preheader.i.preheader.i ] ; 3 uses
  %.06088.i.i = phi i32 [ %.161.lcssa.i.i, %PrepareMapToPalette.exit.i.i ], [ %i.fv, %.preheader.i.preheader.i ] ; 3 uses
  %.06386.i.i = phi ptr [ %i.iz, %PrepareMapToPalette.exit.i.i ], [ %i.es, %.preheader.i.preheader.i ] ; 3 uses
  %.06485.i.i = phi i32 [ %i.ja, %PrepareMapToPalette.exit.i.i ], [ 0, %.preheader.i.preheader.i ] ; 2 uses
  %.06683.i.i = phi ptr [ %.06782.i.i, %PrepareMapToPalette.exit.i.i ], [ %i.fx, %.preheader.i.preheader.i ] ; 3 uses
  %.06782.i.i = phi ptr [ %.06683.i.i, %PrepareMapToPalette.exit.i.i ], [ %i.ey, %.preheader.i.preheader.i ] ; 2 uses
  %i.fz = icmp sgt i32 %i.fy, 0
  br i1 %i.fz, label %.lr.ph.i.i27, label %PrepareMapToPalette.exit.i.i

.lr.ph.i.i27:                                     ; preds = %.preheader.i.i
  %.not74.i.i = icmp eq i32 %.06485.i.i, 0
  br i1 %.not74.i.i, label %.lr.ph.split.us.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i27, %bb.t
  %indvars.iv95.i.i = phi i64 [ %indvars.iv.next96.i.i, %bb.t ], [ 0, %.lr.ph.i.i27 ] ; 4 uses
  %.179.us.i.i = phi i32 [ %.2.us.i.i, %bb.t ], [ %.05989.i.i, %.lr.ph.i.i27 ]
  %.16178.us.i.i = phi i32 [ %.262.us.i.i, %bb.t ], [ %.06088.i.i, %.lr.ph.i.i27 ] ; 2 uses
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %.06386.i.i, i64 %indvars.iv95.i.i
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !9  ; 5 uses
  %.not.us.i.i = icmp eq i32 %i.gb, %.16178.us.i.i
  br i1 %.not.us.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph.split.us.i.i
  %i.gc = load i32, ptr %i.b, align 16, !tbaa !9
  %i.gd = icmp eq i32 %i.gc, %i.gb
  br i1 %i.gd, label %SearchColorNoIdx.exit.us.i.i, label %.preheader.i.us.i.i

.preheader.i.us.i.i:                              ; preds = %bb.p, %.preheader.i.us.i.i
  %.018.i.us.i.i = phi i32 [ %..018.i.us.i.i, %.preheader.i.us.i.i ], [ 0, %bb.p ] ; 2 uses
  %.017.i.us.i.i = phi i32 [ %.017..i.us.i.i, %.preheader.i.us.i.i ], [ %3, %bb.p ] ; 2 uses
  %i.ge = add nsw i32 %.017.i.us.i.i, %.018.i.us.i.i
  %i.gf = ashr i32 %i.ge, 1                       ; 3 uses
  %i.gg = sext i32 %i.gf to i64                   ; 2 uses
  %i.gh = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.gg
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !9  ; 2 uses
  %.not.i.us.i.i = icmp eq i32 %i.gi, %i.gb
  %i.gj = icmp ult i32 %i.gi, %i.gb               ; 2 uses
  %..018.i.us.i.i = select i1 %i.gj, i32 %i.gf, i32 %.018.i.us.i.i
  %.017..i.us.i.i = select i1 %i.gj, i32 %.017.i.us.i.i, i32 %i.gf
  br i1 %.not.i.us.i.i, label %SearchColorNoIdx.exit.us.i.i, label %.preheader.i.us.i.i

SearchColorNoIdx.exit.us.i.i:                     ; preds = %.preheader.i.us.i.i, %bb.p
  %.223.i.us.i.i = phi i64 [ 0, %bb.p ], [ %i.gg, %.preheader.i.us.i.i ]
  %i.gk = getelementptr inbounds [4 x i8], ptr %i.a, i64 %.223.i.us.i.i
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !9
  br label %bb.q

bb.q:                                             ; preds = %SearchColorNoIdx.exit.us.i.i, %.lr.ph.split.us.i.i
  %.262.us.i.i = phi i32 [ %i.gb, %SearchColorNoIdx.exit.us.i.i ], [ %.16178.us.i.i, %.lr.ph.split.us.i.i ] ; 2 uses
  %.2.us.i.i = phi i32 [ %i.gl, %SearchColorNoIdx.exit.us.i.i ], [ %.179.us.i.i, %.lr.ph.split.us.i.i ] ; 6 uses
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %.06683.i.i, i64 %indvars.iv95.i.i ; 2 uses
end_hunk_0
