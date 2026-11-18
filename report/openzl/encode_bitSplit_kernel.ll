Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/encode_bitSplit_kernel?download=true
inline.NumInlined: 12
inline.NumDeleted: 9
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@ZL_bitSplit_topBitsAreZero:bb.a
  %.not = icmp ult i64 %3, %i.b
  %or.cond = and i1 %i.a, %.not
  br i1 %or.cond, label %bb.b, label %checkTopBitsZero.exit

bb.b:                                             ; preds = %bb.a
  %notmask = shl nsw i64 -1, %3                   ; 8 uses
  %i.c = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %1)
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %.split, label %checkTopBitsZero.exit

.split:                                           ; preds = %bb.b
  %i.e = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %1, i1 true)
  switch i64 %i.e, label %checkTopBitsZero.exit [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
  ]

bb.c:                                             ; preds = %.split
  %i.f = load i8, ptr %0, align 1, !tbaa !11
  %i.g = zext i8 %i.f to i64
  %i.h = and i64 %notmask, %i.g
  %.not.us.us42.i = icmp eq i64 %i.h, 0
  br i1 %.not.us.us42.i, label %.lr.ph43.i.preheader, label %checkTopBitsZero.exit

.lr.ph43.i.preheader:                             ; preds = %bb.c
  %exitcond64.not.i51 = icmp eq i64 %2, 1
  br i1 %exitcond64.not.i51, label %..split24.us.split.us_crit_edge.i26, label %.split.us.us.i.lr.ph, !llvm.loop !21

.split.us.us.i.lr.ph:                             ; preds = %.lr.ph43.i.preheader
  br label %.split.us.us.i, !llvm.loop !21

.split.us.us.i:                                   ; preds = %.split.us.us.i.lr.ph, %.lr.ph43.i
  %i.i = phi i64 [ 1, %.split.us.us.i.lr.ph ], [ %i.n, %.lr.ph43.i ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !11
  %i.l = zext i8 %i.k to i64
  %i.m = and i64 %notmask, %i.l
  %.not.us.us.i = icmp eq i64 %i.m, 0
  br i1 %.not.us.us.i, label %.lr.ph43.i, label %checkTopBitsZero.exit, !llvm.loop !21

.lr.ph43.i:                                       ; preds = %.split.us.us.i
  %i.n = add nuw i64 %i.i, 1                      ; 2 uses
  %exitcond64.not.i = icmp eq i64 %i.n, %2
  br i1 %exitcond64.not.i, label %.lr.ph.i...split24.us.split.us_crit_edge.i26.loopexit46_crit_edge, label %.split.us.us.i, !llvm.loop !21

bb.d:                                             ; preds = %.split
  %i.o = load i16, ptr %0, align 2, !tbaa !16
  %i.p = zext i16 %i.o to i64
  %i.q = and i64 %notmask, %i.p
  %.not.us.us3046.i = icmp eq i64 %i.q, 0
  br i1 %.not.us.us3046.i, label %.lr.ph47.i.preheader, label %checkTopBitsZero.exit

.lr.ph47.i.preheader:                             ; preds = %bb.d
  %exitcond63.not.i50 = icmp eq i64 %2, 1
  br i1 %exitcond63.not.i50, label %..split24.us.split.us_crit_edge.i26, label %.split.us.us27.i.lr.ph, !llvm.loop !21

.split.us.us27.i.lr.ph:                           ; preds = %.lr.ph47.i.preheader
  br label %.split.us.us27.i, !llvm.loop !21

.split.us.us27.i:                                 ; preds = %.split.us.us27.i.lr.ph, %.lr.ph47.i
  %i.r = phi i64 [ 1, %.split.us.us27.i.lr.ph ], [ %i.w, %.lr.ph47.i ] ; 2 uses
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.r
  %i.t = load i16, ptr %i.s, align 2, !tbaa !16
  %i.u = zext i16 %i.t to i64
  %i.v = and i64 %notmask, %i.u
  %.not.us.us30.i = icmp eq i64 %i.v, 0
  br i1 %.not.us.us30.i, label %.lr.ph47.i, label %checkTopBitsZero.exit, !llvm.loop !21

.lr.ph47.i:                                       ; preds = %.split.us.us27.i
  %i.w = add nuw i64 %i.r, 1                      ; 2 uses
  %exitcond63.not.i = icmp eq i64 %i.w, %2
  br i1 %exitcond63.not.i, label %.lr.ph.i...split24.us.split.us_crit_edge.i26.loopexit46_crit_edge, label %.split.us.us27.i, !llvm.loop !21

bb.e:                                             ; preds = %.split
  %i.x = load i32, ptr %0, align 4, !tbaa !17
  %i.y = zext i32 %i.x to i64
  %i.z = and i64 %notmask, %i.y
  %.not.us.us3750.i = icmp eq i64 %i.z, 0
  br i1 %.not.us.us3750.i, label %.lr.ph51.i.preheader, label %checkTopBitsZero.exit

.lr.ph51.i.preheader:                             ; preds = %bb.e
  %exitcond62.not.i49 = icmp eq i64 %2, 1
  br i1 %exitcond62.not.i49, label %..split24.us.split.us_crit_edge.i26, label %.split.us.us34.i.lr.ph, !llvm.loop !21

.split.us.us34.i.lr.ph:                           ; preds = %.lr.ph51.i.preheader
  br label %.split.us.us34.i, !llvm.loop !21

.split.us.us34.i:                                 ; preds = %.split.us.us34.i.lr.ph, %.lr.ph51.i
  %i.aa = phi i64 [ 1, %.split.us.us34.i.lr.ph ], [ %i.af, %.lr.ph51.i ] ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !17
  %i.ad = zext i32 %i.ac to i64
  %i.ae = and i64 %notmask, %i.ad
  %.not.us.us37.i = icmp eq i64 %i.ae, 0
  br i1 %.not.us.us37.i, label %.lr.ph51.i, label %checkTopBitsZero.exit, !llvm.loop !21

.lr.ph51.i:                                       ; preds = %.split.us.us34.i
  %i.af = add nuw i64 %i.aa, 1                    ; 2 uses
  %exitcond62.not.i = icmp eq i64 %i.af, %2
  br i1 %exitcond62.not.i, label %.lr.ph.i...split24.us.split.us_crit_edge.i26.loopexit46_crit_edge, label %.split.us.us34.i, !llvm.loop !21

bb.f:                                             ; preds = %.split
  %i.ag = load i64, ptr %0, align 8, !tbaa !14
  %i.ah = and i64 %i.ag, %notmask
  %.not.us40.i = icmp eq i64 %i.ah, 0
  br i1 %.not.us40.i, label %.lr.ph.i.preheader, label %checkTopBitsZero.exit

.lr.ph.i.preheader:                               ; preds = %bb.f
  %exitcond.not.i48 = icmp eq i64 %2, 1
  br i1 %exitcond.not.i48, label %..split24.us.split.us_crit_edge.i26, label %.split.us.i.lr.ph, !llvm.loop !21

.split.us.i.lr.ph:                                ; preds = %.lr.ph.i.preheader
  br label %.split.us.i, !llvm.loop !21

.lr.ph.i...split24.us.split.us_crit_edge.i26.loopexit46_crit_edge: ; preds = %.lr.ph.i, %.lr.ph51.i, %.lr.ph47.i, %.lr.ph43.i
  br label %..split24.us.split.us_crit_edge.i26, !llvm.loop !21

..split24.us.split.us_crit_edge.i26:              ; preds = %.lr.ph.i.preheader, %.lr.ph.i...split24.us.split.us_crit_edge.i26.loopexit46_crit_edge, %.lr.ph51.i.preheader, %.lr.ph47.i.preheader, %.lr.ph43.i.preheader
  br label %checkTopBitsZero.exit, !llvm.loop !21

.split.us.i:                                      ; preds = %.split.us.i.lr.ph, %.lr.ph.i
  %i.ai = phi i64 [ 1, %.split.us.i.lr.ph ], [ %i.am, %.lr.ph.i ] ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ai
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !14
  %i.al = and i64 %i.ak, %notmask
  %.not.us.i = icmp eq i64 %i.al, 0
  br i1 %.not.us.i, label %.lr.ph.i, label %checkTopBitsZero.exit, !llvm.loop !21

.lr.ph.i:                                         ; preds = %.split.us.i
  %i.am = add nuw i64 %i.ai, 1                    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.am, %2
  br i1 %exitcond.not.i, label %.lr.ph.i...split24.us.split.us_crit_edge.i26.loopexit46_crit_edge, label %.split.us.i, !llvm.loop !21

checkTopBitsZero.exit:                            ; preds = %.split.us.i, %.split.us.us34.i, %.split.us.us27.i, %.split.us.us.i, %bb.f, %..split24.us.split.us_crit_edge.i26, %bb.e, %bb.d, %bb.c, %.split, %bb.b, %bb.a
  %.1 = phi i1 [ true, %bb.b ], [ true, %bb.a ], [ false, %bb.f ], [ true, %.split ], [ false, %.split.us.us34.i ], [ false, %bb.e ], [ false, %bb.c ], [ true, %..split24.us.split.us_crit_edge.i26 ], [ false, %bb.d ], [ false, %.split.us.us.i ], [ false, %.split.us.us27.i ], [ false, %.split.us.i ]
  ret i1 %.1
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @ZL_bitSplitEncode(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4, ptr nofree noundef readonly captures(none) %5, i64 noundef %6) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bitSplit_bf16.exit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %.not.i = icmp eq i64 %4, 2
  %.not8.i = icmp eq i64 %6, 3                    ; 3 uses
  %or.cond.i = and i1 %.not.i, %.not8.i
  br i1 %or.cond.i, label %bb.b, label %bb.k

bb.b:                                             ; preds = %.preheader.preheader
  %i.b = load i8, ptr %5, align 1, !tbaa !11
  switch i8 %i.b, label %isEncodeFp64Pattern.exit.thread [
    i8 7, label %bb.c
    i8 10, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !11
  %.not10.i = icmp eq i8 %i.d, 8
  br i1 %.not10.i, label %bb.d, label %isEncodeFp64Pattern.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 2
  %i.f = load i8, ptr %i.e, align 1, !tbaa !11
  %.not11.i = icmp eq i8 %i.f, 1
  br i1 %.not11.i, label %bb.e, label %isEncodeFp64Pattern.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.g = load i64, ptr %1, align 8, !tbaa !14
  %.not12.i = icmp eq i64 %i.g, 1
  br i1 %.not12.i, label %bb.f, label %isEncodeFp64Pattern.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !14
  %.not13.i = icmp eq i64 %i.i, 1
  br i1 %.not13.i, label %isEncodeBf16Pattern.exit, label %isEncodeFp64Pattern.exit.thread

isEncodeBf16Pattern.exit:                         ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !14
  %.not14.i = icmp eq i64 %i.k, 1
  br i1 %.not14.i, label %iter.check368, label %isEncodeFp64Pattern.exit.thread

iter.check368:                                    ; preds = %isEncodeBf16Pattern.exit
  %i.l = load ptr, ptr %0, align 8, !tbaa !19     ; 9 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !19   ; 9 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !19   ; 9 uses
  %min.iters.check332 = icmp ult i64 %2, 4
  br i1 %min.iters.check332, label %vec.epilog.scalar.ph370.preheader, label %vector.memcheck333

vector.memcheck333:                               ; preds = %iter.check368
  %i.q = getelementptr i8, ptr %i.l, i64 %2       ; 3 uses
  %i.r = getelementptr i8, ptr %i.n, i64 %2       ; 3 uses
  %7 = getelementptr i8, ptr %i.p, i64 %2         ; 3 uses
  %8 = shl i64 %2, 1
  %i.s = getelementptr i8, ptr %3, i64 %8         ; 3 uses
  %bound0334.a = icmp ult ptr %i.l, %i.r
  %bound1335.a = icmp ult ptr %i.n, %i.q
  %found.conflict336.a = and i1 %bound0334.a, %bound1335.a
  %bound0337 = icmp ult ptr %i.l, %7
  %bound1338 = icmp ult ptr %i.p, %i.q
  %found.conflict339 = and i1 %bound0337, %bound1338
  %conflict.rdx340 = or i1 %found.conflict336.a, %found.conflict339
  %bound0341 = icmp ult ptr %i.l, %i.s
  %bound1342 = icmp ult ptr %3, %i.q
  %found.conflict343 = and i1 %bound0341, %bound1342
  %conflict.rdx344 = or i1 %conflict.rdx340, %found.conflict343
  %bound0345 = icmp ult ptr %i.n, %7
  %bound1346 = icmp ult ptr %i.p, %i.r
  %found.conflict347 = and i1 %bound0345, %bound1346
  %conflict.rdx348 = or i1 %conflict.rdx344, %found.conflict347
  %bound0349 = icmp ult ptr %i.n, %i.s
  %bound1350 = icmp ult ptr %3, %i.r
  %found.conflict351 = and i1 %bound0349, %bound1350
  %conflict.rdx352 = or i1 %conflict.rdx348, %found.conflict351
  %bound0353 = icmp ult ptr %i.p, %i.s
  %bound1354 = icmp ult ptr %3, %7
  %found.conflict355 = and i1 %bound0353, %bound1354
  %conflict.rdx356 = or i1 %conflict.rdx352, %found.conflict355
  br i1 %conflict.rdx356, label %vec.epilog.scalar.ph370.preheader, label %vector.main.loop.iter.check357

vector.main.loop.iter.check357:                   ; preds = %vector.memcheck333
  %min.iters.check358 = icmp ult i64 %2, 16
  br i1 %min.iters.check358, label %vec.epilog.ph372, label %vector.ph359

vector.ph359:                                     ; preds = %vector.main.loop.iter.check357
  %i.t = and i64 %2, 12
  %n.vec360 = and i64 %2, -16                     ; 4 uses
  br label %vector.body361

vector.body361:                                   ; preds = %vector.ph359, %vector.body361
  %index362 = phi i64 [ 0, %vector.ph359 ], [ %index.next365, %vector.body361 ] ; 5 uses
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %index362 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %wide.load363 = load <8 x i16>, ptr %i.u, align 2, !tbaa !16, !alias.scope !52 ; 3 uses
  %wide.load364 = load <8 x i16>, ptr %i.v, align 2, !tbaa !16, !alias.scope !52 ; 3 uses
  %i.w = trunc <8 x i16> %wide.load363 to <8 x i8>
  %i.x = and <8 x i8> %i.w, splat (i8 127)
  %i.y = trunc <8 x i16> %wide.load364 to <8 x i8>
  %i.z = and <8 x i8> %i.y, splat (i8 127)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 %index362 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store <8 x i8> %i.x, ptr %i.aa, align 1, !tbaa !11, !alias.scope !53, !noalias !54
  store <8 x i8> %i.z, ptr %i.ab, align 1, !tbaa !11, !alias.scope !53, !noalias !54
  %i.ac = lshr <8 x i16> %wide.load363, splat (i16 7)
  %i.ad = lshr <8 x i16> %wide.load364, splat (i16 7)
  %i.ae = trunc <8 x i16> %i.ac to <8 x i8>
  %i.af = trunc <8 x i16> %i.ad to <8 x i8>
  %i.ag = getelementptr inbounds nuw i8, ptr %i.n, i64 %index362 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store <8 x i8> %i.ae, ptr %i.ag, align 1, !tbaa !11, !alias.scope !55, !noalias !56
  store <8 x i8> %i.af, ptr %i.ah, align 1, !tbaa !11, !alias.scope !55, !noalias !56
  %i.ai = lshr <8 x i16> %wide.load363, splat (i16 15)
  %i.aj = lshr <8 x i16> %wide.load364, splat (i16 15)
  %i.ak = trunc nuw nsw <8 x i16> %i.ai to <8 x i8>
  %i.al = trunc nuw nsw <8 x i16> %i.aj to <8 x i8>
  %i.am = getelementptr inbounds nuw i8, ptr %i.p, i64 %index362 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store <8 x i8> %i.ak, ptr %i.am, align 1, !tbaa !11, !alias.scope !57, !noalias !52
  store <8 x i8> %i.al, ptr %i.an, align 1, !tbaa !11, !alias.scope !57, !noalias !52
  %index.next365 = add nuw i64 %index362, 16      ; 2 uses
  %i.ao = icmp eq i64 %index.next365, %n.vec360
  br i1 %i.ao, label %middle.block366, label %vector.body361, !llvm.loop !27

middle.block366:                                  ; preds = %vector.body361
  %cmp.n367 = icmp eq i64 %2, %n.vec360
  br i1 %cmp.n367, label %bitSplit_bf16.exit, label %vec.epilog.iter.check369

vec.epilog.iter.check369:                         ; preds = %middle.block366
  %min.epilog.iters.check371 = icmp eq i64 %i.t, 0
  br i1 %min.epilog.iters.check371, label %vec.epilog.scalar.ph370.preheader, label %vec.epilog.ph372, !prof !60

vec.epilog.ph372:                                 ; preds = %vector.main.loop.iter.check357, %vec.epilog.iter.check369
  %vec.epilog.resume.val373 = phi i64 [ %n.vec360, %vec.epilog.iter.check369 ], [ 0, %vector.main.loop.iter.check357 ]
  %n.vec374 = and i64 %2, -4                      ; 3 uses
  br label %vec.epilog.vector.body375

vec.epilog.vector.body375:                        ; preds = %vec.epilog.vector.body375, %vec.epilog.ph372
  %index376 = phi i64 [ %vec.epilog.resume.val373, %vec.epilog.ph372 ], [ %index.next378, %vec.epilog.vector.body375 ] ; 5 uses
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %index376
  %wide.load377 = load <4 x i16>, ptr %i.ap, align 2, !tbaa !16, !alias.scope !52 ; 3 uses
  %i.aq = trunc <4 x i16> %wide.load377 to <4 x i8>
  %i.ar = and <4 x i8> %i.aq, splat (i8 127)
  %i.as = getelementptr inbounds nuw i8, ptr %i.l, i64 %index376
  store <4 x i8> %i.ar, ptr %i.as, align 1, !tbaa !11, !alias.scope !53, !noalias !54
  %i.at = lshr <4 x i16> %wide.load377, splat (i16 7)
  %i.au = trunc <4 x i16> %i.at to <4 x i8>
  %i.av = getelementptr inbounds nuw i8, ptr %i.n, i64 %index376
  store <4 x i8> %i.au, ptr %i.av, align 1, !tbaa !11, !alias.scope !55, !noalias !56
  %i.aw = lshr <4 x i16> %wide.load377, splat (i16 15)
  %i.ax = trunc nuw nsw <4 x i16> %i.aw to <4 x i8>
  %i.ay = getelementptr inbounds nuw i8, ptr %i.p, i64 %index376
  store <4 x i8> %i.ax, ptr %i.ay, align 1, !tbaa !11, !alias.scope !57, !noalias !52
  %index.next378 = add nuw i64 %index376, 4       ; 2 uses
  %i.az = icmp eq i64 %index.next378, %n.vec374
  br i1 %i.az, label %vec.epilog.middle.block379, label %vec.epilog.vector.body375, !llvm.loop !28

vec.epilog.middle.block379:                       ; preds = %vec.epilog.vector.body375
  %cmp.n380 = icmp eq i64 %2, %n.vec374
  br i1 %cmp.n380, label %bitSplit_bf16.exit, label %vec.epilog.scalar.ph370.preheader

vec.epilog.scalar.ph370.preheader:                ; preds = %iter.check368, %vector.memcheck333, %vec.epilog.iter.check369, %vec.epilog.middle.block379
  %.017.i.ph = phi i64 [ 0, %iter.check368 ], [ 0, %vector.memcheck333 ], [ %n.vec360, %vec.epilog.iter.check369 ], [ %n.vec374, %vec.epilog.middle.block379 ] ; 7 uses
  %.neg400 = or disjoint i64 %.017.i.ph, 1
  %xtraiter396 = and i64 %2, 1
  %lcmp.mod397.not = icmp eq i64 %xtraiter396, 0
  br i1 %lcmp.mod397.not, label %vec.epilog.scalar.ph370.prol.loopexit, label %vec.epilog.scalar.ph370.prol

vec.epilog.scalar.ph370.prol:                     ; preds = %vec.epilog.scalar.ph370.preheader
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.017.i.ph
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !16 ; 3 uses
  %i.bc = trunc i16 %i.bb to i8
  %i.bd = and i8 %i.bc, 127
  %i.be = getelementptr inbounds nuw i8, ptr %i.l, i64 %.017.i.ph
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !11
  %i.bf = lshr i16 %i.bb, 7
  %i.bg = trunc i16 %i.bf to i8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.n, i64 %.017.i.ph
  store i8 %i.bg, ptr %i.bh, align 1, !tbaa !11
  %i.bi = lshr i16 %i.bb, 15
  %i.bj = trunc nuw nsw i16 %i.bi to i8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.p, i64 %.017.i.ph
  store i8 %i.bj, ptr %i.bk, align 1, !tbaa !11
  %i.bl = or disjoint i64 %.017.i.ph, 1
  br label %vec.epilog.scalar.ph370.prol.loopexit

vec.epilog.scalar.ph370.prol.loopexit:            ; preds = %vec.epilog.scalar.ph370.prol, %vec.epilog.scalar.ph370.preheader
  %.017.i.unr = phi i64 [ %.017.i.ph, %vec.epilog.scalar.ph370.preheader ], [ %i.bl, %vec.epilog.scalar.ph370.prol ]
  %i.bm = icmp eq i64 %2, %.neg400
  br i1 %i.bm, label %bitSplit_bf16.exit, label %vec.epilog.scalar.ph370

vec.epilog.scalar.ph370:                          ; preds = %vec.epilog.scalar.ph370.prol.loopexit, %vec.epilog.scalar.ph370
  %.017.i = phi i64 [ %i.ck, %vec.epilog.scalar.ph370 ], [ %.017.i.unr, %vec.epilog.scalar.ph370.prol.loopexit ] ; 6 uses
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.017.i
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !16 ; 3 uses
  %i.bp = trunc i16 %i.bo to i8
  %i.bq = and i8 %i.bp, 127
  %i.br = getelementptr inbounds nuw i8, ptr %i.l, i64 %.017.i
  store i8 %i.bq, ptr %i.br, align 1, !tbaa !11
  %i.bs = lshr i16 %i.bo, 7
  %i.bt = trunc i16 %i.bs to i8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.n, i64 %.017.i
  store i8 %i.bt, ptr %i.bu, align 1, !tbaa !11
  %i.bv = lshr i16 %i.bo, 15
  %i.bw = trunc nuw nsw i16 %i.bv to i8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.p, i64 %.017.i
  store i8 %i.bw, ptr %i.bx, align 1, !tbaa !11
  %i.by = add nuw i64 %.017.i, 1                  ; 4 uses
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.by
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !16 ; 3 uses
  %i.cb = trunc i16 %i.ca to i8
  %i.cc = and i8 %i.cb, 127
  %i.cd = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.by
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !11
  %i.ce = lshr i16 %i.ca, 7
  %i.cf = trunc i16 %i.ce to i8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.by
  store i8 %i.cf, ptr %i.cg, align 1, !tbaa !11
  %i.ch = lshr i16 %i.ca, 15
  %i.ci = trunc nuw nsw i16 %i.ch to i8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.by
  store i8 %i.ci, ptr %i.cj, align 1, !tbaa !11
  %i.ck = add nuw i64 %.017.i, 2                  ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.ck, %2
  br i1 %exitcond.not.i.1, label %bitSplit_bf16.exit, label %vec.epilog.scalar.ph370, !llvm.loop !29

bb.g:                                             ; preds = %bb.b
  %i.cl = getelementptr inbounds nuw i8, ptr %5, i64 1
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !11
  %.not10.i67 = icmp eq i8 %i.cm, 5
  br i1 %.not10.i67, label %bb.h, label %isEncodeFp64Pattern.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.cn = getelementptr inbounds nuw i8, ptr %5, i64 2
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !11
  %.not11.i68 = icmp eq i8 %i.co, 1
  br i1 %.not11.i68, label %bb.i, label %isEncodeFp64Pattern.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.cp = load i64, ptr %1, align 8, !tbaa !14
  %.not12.i69 = icmp eq i64 %i.cp, 2
  br i1 %.not12.i69, label %bb.j, label %isEncodeFp64Pattern.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !14
  %.not13.i70 = icmp eq i64 %i.cr, 1
  br i1 %.not13.i70, label %isEncodeFp16Pattern.exit, label %isEncodeFp64Pattern.exit.thread

isEncodeFp16Pattern.exit:                         ; preds = %bb.j
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !14
  %.not14.i71 = icmp eq i64 %i.ct, 1
  br i1 %.not14.i71, label %iter.check, label %isEncodeFp64Pattern.exit.thread

iter.check:                                       ; preds = %isEncodeFp16Pattern.exit
  %i.cu = load ptr, ptr %0, align 8, !tbaa !19    ; 9 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !19 ; 9 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !19 ; 9 uses
  %min.iters.check263 = icmp ult i64 %2, 4
  br i1 %min.iters.check263, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck264

vector.memcheck264:                               ; preds = %iter.check
  %i.cz = shl i64 %2, 1                           ; 2 uses
  %i.da = getelementptr i8, ptr %i.cu, i64 %i.cz  ; 3 uses
  %i.db = getelementptr i8, ptr %i.cw, i64 %2     ; 3 uses
  %9 = getelementptr i8, ptr %i.cy, i64 %2        ; 3 uses
  %10 = getelementptr i8, ptr %3, i64 %i.cz       ; 3 uses
  %bound0265.a = icmp ult ptr %i.cu, %i.db
  %bound1266 = icmp ult ptr %i.cw, %i.da
  %found.conflict267 = and i1 %bound0265.a, %bound1266
  %bound0268 = icmp ult ptr %i.cu, %9
  %bound1269 = icmp ult ptr %i.cy, %i.da
  %found.conflict270 = and i1 %bound0268, %bound1269
  %conflict.rdx271 = or i1 %found.conflict267, %found.conflict270
  %bound0272 = icmp ult ptr %i.cu, %10
  %bound1273 = icmp ult ptr %3, %i.da
  %found.conflict274 = and i1 %bound0272, %bound1273
  %conflict.rdx275 = or i1 %conflict.rdx271, %found.conflict274
  %bound0276 = icmp ult ptr %i.cw, %9
  %bound1277 = icmp ult ptr %i.cy, %i.db
  %found.conflict278 = and i1 %bound0276, %bound1277
  %conflict.rdx279 = or i1 %conflict.rdx275, %found.conflict278
  %bound0280 = icmp ult ptr %i.cw, %10
  %bound1281 = icmp ult ptr %3, %i.db
  %found.conflict282 = and i1 %bound0280, %bound1281
  %conflict.rdx283 = or i1 %conflict.rdx279, %found.conflict282
  %bound0284 = icmp ult ptr %i.cy, %10
  %bound1285 = icmp ult ptr %3, %9
  %found.conflict286 = and i1 %bound0284, %bound1285
  %conflict.rdx287 = or i1 %conflict.rdx283, %found.conflict286
  br i1 %conflict.rdx287, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck264
  %min.iters.check288 = icmp ult i64 %2, 16
  br i1 %min.iters.check288, label %vec.epilog.ph, label %vector.ph289

vector.ph289:                                     ; preds = %vector.main.loop.iter.check
  %i.dc = and i64 %2, 12
  %n.vec290 = and i64 %2, -16                     ; 4 uses
  br label %vector.body291

vector.body291:                                   ; preds = %vector.ph289, %vector.body291
  %index292 = phi i64 [ 0, %vector.ph289 ], [ %index.next295, %vector.body291 ] ; 5 uses
  %i.dd = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %index292 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %wide.load293 = load <8 x i16>, ptr %i.dd, align 2, !tbaa !16, !alias.scope !61 ; 3 uses
  %wide.load294 = load <8 x i16>, ptr %i.de, align 2, !tbaa !16, !alias.scope !61 ; 3 uses
  %i.df = and <8 x i16> %wide.load293, splat (i16 1023)
  %i.dg = and <8 x i16> %wide.load294, splat (i16 1023)
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %i.cu, i64 %index292 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  store <8 x i16> %i.df, ptr %i.dh, align 2, !tbaa !16, !alias.scope !62, !noalias !63
  store <8 x i16> %i.dg, ptr %i.di, align 2, !tbaa !16, !alias.scope !62, !noalias !63
  %i.dj = lshr <8 x i16> %wide.load293, splat (i16 10)
  %i.dk = lshr <8 x i16> %wide.load294, splat (i16 10)
  %i.dl = trunc nuw nsw <8 x i16> %i.dj to <8 x i8>
  %i.dm = and <8 x i8> %i.dl, splat (i8 31)
  %i.dn = trunc nuw nsw <8 x i16> %i.dk to <8 x i8>
  %i.do = and <8 x i8> %i.dn, splat (i8 31)
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cw, i64 %index292 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  store <8 x i8> %i.dm, ptr %i.dp, align 1, !tbaa !11, !alias.scope !64, !noalias !65
  store <8 x i8> %i.do, ptr %i.dq, align 1, !tbaa !11, !alias.scope !64, !noalias !65
  %i.dr = lshr <8 x i16> %wide.load293, splat (i16 15)
  %i.ds = lshr <8 x i16> %wide.load294, splat (i16 15)
  %i.dt = trunc nuw nsw <8 x i16> %i.dr to <8 x i8>
  %i.du = trunc nuw nsw <8 x i16> %i.ds to <8 x i8>
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cy, i64 %index292 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  store <8 x i8> %i.dt, ptr %i.dv, align 1, !tbaa !11, !alias.scope !66, !noalias !61
  store <8 x i8> %i.du, ptr %i.dw, align 1, !tbaa !11, !alias.scope !66, !noalias !61
  %index.next295 = add nuw i64 %index292, 16      ; 2 uses
  %i.dx = icmp eq i64 %index.next295, %n.vec290
  br i1 %i.dx, label %middle.block296, label %vector.body291, !llvm.loop !35

middle.block296:                                  ; preds = %vector.body291
  %cmp.n297 = icmp eq i64 %2, %n.vec290
  br i1 %cmp.n297, label %bitSplit_bf16.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block296
  %min.epilog.iters.check = icmp eq i64 %i.dc, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !60

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec290, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec298 = and i64 %2, -4                      ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index299 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next301, %vec.epilog.vector.body ] ; 5 uses
  %i.dy = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %index299
  %wide.load300 = load <4 x i16>, ptr %i.dy, align 2, !tbaa !16, !alias.scope !61 ; 3 uses
  %i.dz = and <4 x i16> %wide.load300, splat (i16 1023)
  %i.ea = getelementptr inbounds nuw [2 x i8], ptr %i.cu, i64 %index299
  store <4 x i16> %i.dz, ptr %i.ea, align 2, !tbaa !16, !alias.scope !62, !noalias !63
  %i.eb = lshr <4 x i16> %wide.load300, splat (i16 10)
  %i.ec = trunc nuw nsw <4 x i16> %i.eb to <4 x i8>
  %i.ed = and <4 x i8> %i.ec, splat (i8 31)
  %i.ee = getelementptr inbounds nuw i8, ptr %i.cw, i64 %index299
  store <4 x i8> %i.ed, ptr %i.ee, align 1, !tbaa !11, !alias.scope !64, !noalias !65
  %i.ef = lshr <4 x i16> %wide.load300, splat (i16 15)
  %i.eg = trunc nuw nsw <4 x i16> %i.ef to <4 x i8>
  %i.eh = getelementptr inbounds nuw i8, ptr %i.cy, i64 %index299
  store <4 x i8> %i.eg, ptr %i.eh, align 1, !tbaa !11, !alias.scope !66, !noalias !61
  %index.next301 = add nuw i64 %index299, 4       ; 2 uses
  %i.ei = icmp eq i64 %index.next301, %n.vec298
  br i1 %i.ei, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !36

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n302 = icmp eq i64 %2, %n.vec298
  br i1 %cmp.n302, label %bitSplit_bf16.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck264, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.017.i72.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck264 ], [ %n.vec290, %vec.epilog.iter.check ], [ %n.vec298, %vec.epilog.middle.block ] ; 7 uses
  %.neg399 = or disjoint i64 %.017.i72.ph, 1
  %xtraiter394 = and i64 %2, 1
  %lcmp.mod395.not = icmp eq i64 %xtraiter394, 0
  br i1 %lcmp.mod395.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.ej = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.017.i72.ph
  %i.ek = load i16, ptr %i.ej, align 2, !tbaa !16 ; 3 uses
  %i.el = and i16 %i.ek, 1023
  %i.em = getelementptr inbounds nuw [2 x i8], ptr %i.cu, i64 %.017.i72.ph
  store i16 %i.el, ptr %i.em, align 2, !tbaa !16
  %i.en = lshr i16 %i.ek, 10
  %i.eo = trunc nuw nsw i16 %i.en to i8
  %i.ep = and i8 %i.eo, 31
  %i.eq = getelementptr inbounds nuw i8, ptr %i.cw, i64 %.017.i72.ph
  store i8 %i.ep, ptr %i.eq, align 1, !tbaa !11
  %i.er = lshr i16 %i.ek, 15
  %i.es = trunc nuw nsw i16 %i.er to i8
  %i.et = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.017.i72.ph
  store i8 %i.es, ptr %i.et, align 1, !tbaa !11
  %i.eu = or disjoint i64 %.017.i72.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.017.i72.unr = phi i64 [ %.017.i72.ph, %vec.epilog.scalar.ph.preheader ], [ %i.eu, %vec.epilog.scalar.ph.prol ]
  %i.ev = icmp eq i64 %2, %.neg399
  br i1 %i.ev, label %bitSplit_bf16.exit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.017.i72 = phi i64 [ %i.ft, %vec.epilog.scalar.ph ], [ %.017.i72.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.ew = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.017.i72
  %i.ex = load i16, ptr %i.ew, align 2, !tbaa !16 ; 3 uses
  %i.ey = and i16 %i.ex, 1023
  %i.ez = getelementptr inbounds nuw [2 x i8], ptr %i.cu, i64 %.017.i72
  store i16 %i.ey, ptr %i.ez, align 2, !tbaa !16
  %i.fa = lshr i16 %i.ex, 10
  %i.fb = trunc nuw nsw i16 %i.fa to i8
  %i.fc = and i8 %i.fb, 31
  %i.fd = getelementptr inbounds nuw i8, ptr %i.cw, i64 %.017.i72
  store i8 %i.fc, ptr %i.fd, align 1, !tbaa !11
  %i.fe = lshr i16 %i.ex, 15
  %i.ff = trunc nuw nsw i16 %i.fe to i8
  %i.fg = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.017.i72
  store i8 %i.ff, ptr %i.fg, align 1, !tbaa !11
  %i.fh = add nuw i64 %.017.i72, 1                ; 4 uses
  %i.fi = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.fh
  %i.fj = load i16, ptr %i.fi, align 2, !tbaa !16 ; 3 uses
  %i.fk = and i16 %i.fj, 1023
  %i.fl = getelementptr inbounds nuw [2 x i8], ptr %i.cu, i64 %i.fh
  store i16 %i.fk, ptr %i.fl, align 2, !tbaa !16
  %i.fm = lshr i16 %i.fj, 10
  %i.fn = trunc nuw nsw i16 %i.fm to i8
  %i.fo = and i8 %i.fn, 31
  %i.fp = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.fh
  store i8 %i.fo, ptr %i.fp, align 1, !tbaa !11
  %i.fq = lshr i16 %i.fj, 15
  %i.fr = trunc nuw nsw i16 %i.fq to i8
  %i.fs = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.fh
  store i8 %i.fr, ptr %i.fs, align 1, !tbaa !11
  %i.ft = add nuw i64 %.017.i72, 2                ; 2 uses
  %exitcond.not.i73.1 = icmp eq i64 %i.ft, %2
  br i1 %exitcond.not.i73.1, label %bitSplit_bf16.exit, label %vec.epilog.scalar.ph, !llvm.loop !37

bb.k:                                             ; preds = %.preheader.preheader
  %.not.i74 = icmp eq i64 %4, 4
  %or.cond.i76 = and i1 %.not.i74, %.not8.i
  br i1 %or.cond.i76, label %bb.l, label %bb.r

bb.l:                                             ; preds = %bb.k
  %i.fu = load i8, ptr %5, align 1, !tbaa !11
  %.not9.i78 = icmp eq i8 %i.fu, 23
  br i1 %.not9.i78, label %bb.m, label %isEncodeFp64Pattern.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.fv = getelementptr inbounds nuw i8, ptr %5, i64 1
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !11
  %.not10.i79 = icmp eq i8 %i.fw, 8
  br i1 %.not10.i79, label %bb.n, label %isEncodeFp64Pattern.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.fx = getelementptr inbounds nuw i8, ptr %5, i64 2
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !11
  %.not11.i80 = icmp eq i8 %i.fy, 1
  br i1 %.not11.i80, label %bb.o, label %isEncodeFp64Pattern.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.fz = load i64, ptr %1, align 8, !tbaa !14
  %.not12.i81 = icmp eq i64 %i.fz, 4
  br i1 %.not12.i81, label %bb.p, label %isEncodeFp64Pattern.exit.thread

bb.p:                                             ; preds = %bb.o
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !14
  %.not13.i82 = icmp eq i64 %i.gb, 1
  br i1 %.not13.i82, label %isEncodeFp32Pattern.exit, label %isEncodeFp64Pattern.exit.thread

isEncodeFp32Pattern.exit:                         ; preds = %bb.p
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !14
  %.not14.i83 = icmp eq i64 %i.gd, 1
  br i1 %.not14.i83, label %bb.q, label %isEncodeFp64Pattern.exit.thread

bb.q:                                             ; preds = %isEncodeFp32Pattern.exit
  %i.ge = load ptr, ptr %0, align 8, !tbaa !19    ; 8 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !19 ; 8 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !19 ; 8 uses
  %min.iters.check200 = icmp ult i64 %2, 28
  br i1 %min.iters.check200, label %scalar.ph199.preheader, label %vector.memcheck201

vector.memcheck201:                               ; preds = %bb.q
  %i.gj = shl i64 %2, 2                           ; 2 uses
  %i.gk = getelementptr i8, ptr %i.ge, i64 %i.gj  ; 3 uses
  %i.gl = getelementptr i8, ptr %i.gg, i64 %2     ; 3 uses
  %11 = getelementptr i8, ptr %i.gi, i64 %2       ; 3 uses
  %12 = getelementptr i8, ptr %3, i64 %i.gj       ; 3 uses
  %bound0202.a = icmp ult ptr %i.ge, %i.gl
  %bound1203 = icmp ult ptr %i.gg, %i.gk
  %found.conflict204 = and i1 %bound0202.a, %bound1203
  %bound0205 = icmp ult ptr %i.ge, %11
  %bound1206 = icmp ult ptr %i.gi, %i.gk
  %found.conflict207 = and i1 %bound0205, %bound1206
  %conflict.rdx208 = or i1 %found.conflict204, %found.conflict207
  %bound0209 = icmp ult ptr %i.ge, %12
  %bound1210 = icmp ult ptr %3, %i.gk
  %found.conflict211 = and i1 %bound0209, %bound1210
  %conflict.rdx212 = or i1 %conflict.rdx208, %found.conflict211
  %bound0213 = icmp ult ptr %i.gg, %11
  %bound1214 = icmp ult ptr %i.gi, %i.gl
  %found.conflict215 = and i1 %bound0213, %bound1214
  %conflict.rdx216 = or i1 %conflict.rdx212, %found.conflict215
  %bound0217 = icmp ult ptr %i.gg, %12
  %bound1218 = icmp ult ptr %3, %i.gl
  %found.conflict219 = and i1 %bound0217, %bound1218
  %conflict.rdx220 = or i1 %conflict.rdx216, %found.conflict219
  %bound0221 = icmp ult ptr %i.gi, %12
  %bound1222 = icmp ult ptr %3, %11
  %found.conflict223 = and i1 %bound0221, %bound1222
  %conflict.rdx224 = or i1 %conflict.rdx220, %found.conflict223
  br i1 %conflict.rdx224, label %scalar.ph199.preheader, label %vector.ph225

vector.ph225:                                     ; preds = %vector.memcheck201
  %n.vec226 = and i64 %2, -8                      ; 3 uses
  br label %vector.body227

vector.body227:                                   ; preds = %vector.body227, %vector.ph225
  %index228 = phi i64 [ 0, %vector.ph225 ], [ %index.next231, %vector.body227 ] ; 5 uses
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index228 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 16
  %wide.load229 = load <4 x i32>, ptr %i.gm, align 4, !tbaa !17, !alias.scope !67 ; 3 uses
  %wide.load230 = load <4 x i32>, ptr %i.gn, align 4, !tbaa !17, !alias.scope !67 ; 3 uses
  %i.go = and <4 x i32> %wide.load229, splat (i32 8388607)
  %i.gp = and <4 x i32> %wide.load230, splat (i32 8388607)
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %index228 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 16
  store <4 x i32> %i.go, ptr %i.gq, align 4, !tbaa !17, !alias.scope !68, !noalias !69
  store <4 x i32> %i.gp, ptr %i.gr, align 4, !tbaa !17, !alias.scope !68, !noalias !69
  %i.gs = lshr <4 x i32> %wide.load229, splat (i32 23)
  %i.gt = lshr <4 x i32> %wide.load230, splat (i32 23)
  %i.gu = trunc <4 x i32> %i.gs to <4 x i8>
  %i.gv = trunc <4 x i32> %i.gt to <4 x i8>
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gg, i64 %index228 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 4
  store <4 x i8> %i.gu, ptr %i.gw, align 1, !tbaa !11, !alias.scope !70, !noalias !71
  store <4 x i8> %i.gv, ptr %i.gx, align 1, !tbaa !11, !alias.scope !70, !noalias !71
  %i.gy = lshr <4 x i32> %wide.load229, splat (i32 31)
  %i.gz = lshr <4 x i32> %wide.load230, splat (i32 31)
  %i.ha = trunc nuw nsw <4 x i32> %i.gy to <4 x i8>
  %i.hb = trunc nuw nsw <4 x i32> %i.gz to <4 x i8>
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gi, i64 %index228 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 4
  store <4 x i8> %i.ha, ptr %i.hc, align 1, !tbaa !11, !alias.scope !72, !noalias !67
  store <4 x i8> %i.hb, ptr %i.hd, align 1, !tbaa !11, !alias.scope !72, !noalias !67
  %index.next231 = add nuw i64 %index228, 8       ; 2 uses
  %i.he = icmp eq i64 %index.next231, %n.vec226
  br i1 %i.he, label %middle.block232, label %vector.body227, !llvm.loop !43

middle.block232:                                  ; preds = %vector.body227
  %cmp.n233 = icmp eq i64 %2, %n.vec226
  br i1 %cmp.n233, label %bitSplit_bf16.exit, label %scalar.ph199.preheader

scalar.ph199.preheader:                           ; preds = %vector.memcheck201, %bb.q, %middle.block232
  %.017.i84.ph = phi i64 [ 0, %vector.memcheck201 ], [ 0, %bb.q ], [ %n.vec226, %middle.block232 ] ; 7 uses
  %.neg398 = or disjoint i64 %.017.i84.ph, 1
  %xtraiter392 = and i64 %2, 1
  %lcmp.mod393.not = icmp eq i64 %xtraiter392, 0
  br i1 %lcmp.mod393.not, label %scalar.ph199.prol.loopexit, label %scalar.ph199.prol

scalar.ph199.prol:                                ; preds = %scalar.ph199.preheader
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.017.i84.ph
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !17 ; 3 uses
  %i.hh = and i32 %i.hg, 8388607
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %.017.i84.ph
  store i32 %i.hh, ptr %i.hi, align 4, !tbaa !17
  %i.hj = lshr i32 %i.hg, 23
  %i.hk = trunc i32 %i.hj to i8
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gg, i64 %.017.i84.ph
  store i8 %i.hk, ptr %i.hl, align 1, !tbaa !11
  %i.hm = lshr i32 %i.hg, 31
  %i.hn = trunc nuw nsw i32 %i.hm to i8
  %i.ho = getelementptr inbounds nuw i8, ptr %i.gi, i64 %.017.i84.ph
  store i8 %i.hn, ptr %i.ho, align 1, !tbaa !11
  %i.hp = or disjoint i64 %.017.i84.ph, 1
  br label %scalar.ph199.prol.loopexit

scalar.ph199.prol.loopexit:                       ; preds = %scalar.ph199.prol, %scalar.ph199.preheader
  %.017.i84.unr = phi i64 [ %.017.i84.ph, %scalar.ph199.preheader ], [ %i.hp, %scalar.ph199.prol ]
  %i.hq = icmp eq i64 %2, %.neg398
  br i1 %i.hq, label %bitSplit_bf16.exit, label %scalar.ph199

scalar.ph199:                                     ; preds = %scalar.ph199.prol.loopexit, %scalar.ph199
  %.017.i84 = phi i64 [ %i.im, %scalar.ph199 ], [ %.017.i84.unr, %scalar.ph199.prol.loopexit ] ; 6 uses
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.017.i84
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !17 ; 3 uses
  %i.ht = and i32 %i.hs, 8388607
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %.017.i84
  store i32 %i.ht, ptr %i.hu, align 4, !tbaa !17
  %i.hv = lshr i32 %i.hs, 23
  %i.hw = trunc i32 %i.hv to i8
  %i.hx = getelementptr inbounds nuw i8, ptr %i.gg, i64 %.017.i84
  store i8 %i.hw, ptr %i.hx, align 1, !tbaa !11
  %i.hy = lshr i32 %i.hs, 31
  %i.hz = trunc nuw nsw i32 %i.hy to i8
  %i.ia = getelementptr inbounds nuw i8, ptr %i.gi, i64 %.017.i84
  store i8 %i.hz, ptr %i.ia, align 1, !tbaa !11
  %i.ib = add nuw i64 %.017.i84, 1                ; 4 uses
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ib
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !17 ; 3 uses
  %i.ie = and i32 %i.id, 8388607
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %i.ib
  store i32 %i.ie, ptr %i.if, align 4, !tbaa !17
  %i.ig = lshr i32 %i.id, 23
  %i.ih = trunc i32 %i.ig to i8
  %i.ii = getelementptr inbounds nuw i8, ptr %i.gg, i64 %i.ib
  store i8 %i.ih, ptr %i.ii, align 1, !tbaa !11
  %i.ij = lshr i32 %i.id, 31
  %i.ik = trunc nuw nsw i32 %i.ij to i8
  %i.il = getelementptr inbounds nuw i8, ptr %i.gi, i64 %i.ib
  store i8 %i.ik, ptr %i.il, align 1, !tbaa !11
  %i.im = add nuw i64 %.017.i84, 2                ; 2 uses
  %exitcond.not.i85.1 = icmp eq i64 %i.im, %2
  br i1 %exitcond.not.i85.1, label %bitSplit_bf16.exit, label %scalar.ph199, !llvm.loop !44

bb.r:                                             ; preds = %bb.k
  %.not.i86 = icmp eq i64 %4, 8
  %or.cond.i88 = and i1 %.not.i86, %.not8.i
  br i1 %or.cond.i88, label %bb.s, label %isEncodeFp64Pattern.exit.thread

bb.s:                                             ; preds = %bb.r
  %i.in = load i8, ptr %5, align 1, !tbaa !11
  %.not9.i90 = icmp eq i8 %i.in, 52
  br i1 %.not9.i90, label %bb.t, label %isEncodeFp64Pattern.exit.thread

bb.t:                                             ; preds = %bb.s
  %i.io = getelementptr inbounds nuw i8, ptr %5, i64 1
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !11
  %.not10.i91 = icmp eq i8 %i.ip, 11
  br i1 %.not10.i91, label %bb.u, label %isEncodeFp64Pattern.exit.thread

bb.u:                                             ; preds = %bb.t
  %i.iq = getelementptr inbounds nuw i8, ptr %5, i64 2
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !11
  %.not11.i92 = icmp eq i8 %i.ir, 1
  br i1 %.not11.i92, label %bb.v, label %isEncodeFp64Pattern.exit.thread

bb.v:                                             ; preds = %bb.u
  %i.is = load i64, ptr %1, align 8, !tbaa !14
  %.not12.i93 = icmp eq i64 %i.is, 8
  br i1 %.not12.i93, label %bb.w, label %isEncodeFp64Pattern.exit.thread

bb.w:                                             ; preds = %bb.v
  %i.it = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.iu = load i64, ptr %i.it, align 8, !tbaa !14
  %.not13.i94 = icmp eq i64 %i.iu, 2
  br i1 %.not13.i94, label %isEncodeFp64Pattern.exit, label %isEncodeFp64Pattern.exit.thread

isEncodeFp64Pattern.exit:                         ; preds = %bb.w
  %i.iv = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !14
  %.not14.i95 = icmp eq i64 %i.iw, 1
  br i1 %.not14.i95, label %bb.x, label %isEncodeFp64Pattern.exit.thread

bb.x:                                             ; preds = %isEncodeFp64Pattern.exit
  %i.ix = load ptr, ptr %0, align 8, !tbaa !19    ; 8 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !19 ; 8 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !19 ; 8 uses
  %min.iters.check = icmp ult i64 %2, 26
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.x
  %i.jc = shl i64 %2, 3                           ; 2 uses
  %i.jd = getelementptr i8, ptr %i.ix, i64 %i.jc  ; 3 uses
  %i.je = shl i64 %2, 1
  %13 = getelementptr i8, ptr %i.iz, i64 %i.je    ; 3 uses
  %i.jf = getelementptr i8, ptr %i.jb, i64 %2     ; 3 uses
  %14 = getelementptr i8, ptr %3, i64 %i.jc       ; 3 uses
  %bound0.a = icmp ult ptr %i.ix, %13
  %bound1 = icmp ult ptr %i.iz, %i.jd
  %found.conflict = and i1 %bound0.a, %bound1
  %bound0152 = icmp ult ptr %i.ix, %i.jf
  %bound1153 = icmp ult ptr %i.jb, %i.jd
  %found.conflict154 = and i1 %bound0152, %bound1153
  %conflict.rdx = or i1 %found.conflict, %found.conflict154
  %bound0155 = icmp ult ptr %i.ix, %14
  %bound1156 = icmp ult ptr %3, %i.jd
  %found.conflict157 = and i1 %bound0155, %bound1156
  %conflict.rdx158 = or i1 %conflict.rdx, %found.conflict157
  %bound0159 = icmp ult ptr %i.iz, %i.jf
  %bound1160 = icmp ult ptr %i.jb, %13
  %found.conflict161 = and i1 %bound0159, %bound1160
  %conflict.rdx162 = or i1 %conflict.rdx158, %found.conflict161
  %bound0163 = icmp ult ptr %i.iz, %14
  %bound1164 = icmp ult ptr %3, %13
  %found.conflict165 = and i1 %bound0163, %bound1164
  %conflict.rdx166 = or i1 %conflict.rdx162, %found.conflict165
  %bound0167 = icmp ult ptr %i.jb, %14
  %bound1168 = icmp ult ptr %3, %i.jf
  %found.conflict169 = and i1 %bound0167, %bound1168
  %conflict.rdx170 = or i1 %conflict.rdx166, %found.conflict169
  br i1 %conflict.rdx170, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %2, -4                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 16
  %wide.load = load <2 x i64>, ptr %i.jg, align 8, !tbaa !14, !alias.scope !73 ; 3 uses
  %wide.load171 = load <2 x i64>, ptr %i.jh, align 8, !tbaa !14, !alias.scope !73 ; 3 uses
  %i.ji = and <2 x i64> %wide.load, splat (i64 4503599627370495)
  %i.jj = and <2 x i64> %wide.load171, splat (i64 4503599627370495)
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.ix, i64 %index ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 16
  store <2 x i64> %i.ji, ptr %i.jk, align 8, !tbaa !14, !alias.scope !74, !noalias !75
  store <2 x i64> %i.jj, ptr %i.jl, align 8, !tbaa !14, !alias.scope !74, !noalias !75
  %i.jm = lshr <2 x i64> %wide.load, splat (i64 52)
  %i.jn = lshr <2 x i64> %wide.load171, splat (i64 52)
  %i.jo = trunc nuw nsw <2 x i64> %i.jm to <2 x i16>
  %i.jp = and <2 x i16> %i.jo, splat (i16 2047)
  %i.jq = trunc nuw nsw <2 x i64> %i.jn to <2 x i16>
  %i.jr = and <2 x i16> %i.jq, splat (i16 2047)
  %i.js = getelementptr inbounds nuw [2 x i8], ptr %i.iz, i64 %index ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 4
  store <2 x i16> %i.jp, ptr %i.js, align 2, !tbaa !16, !alias.scope !76, !noalias !77
  store <2 x i16> %i.jr, ptr %i.jt, align 2, !tbaa !16, !alias.scope !76, !noalias !77
  %i.ju = lshr <2 x i64> %wide.load, splat (i64 63)
  %i.jv = lshr <2 x i64> %wide.load171, splat (i64 63)
  %i.jw = trunc nuw nsw <2 x i64> %i.ju to <2 x i8>
  %i.jx = trunc nuw nsw <2 x i64> %i.jv to <2 x i8>
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jb, i64 %index ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 2
  store <2 x i8> %i.jw, ptr %i.jy, align 1, !tbaa !11, !alias.scope !78, !noalias !73
  store <2 x i8> %i.jx, ptr %i.jz, align 1, !tbaa !11, !alias.scope !78, !noalias !73
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ka = icmp eq i64 %index.next, %n.vec
  br i1 %i.ka, label %middle.block, label %vector.body, !llvm.loop !50

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %bitSplit_bf16.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.x, %middle.block
  %.017.i96.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.x ], [ %n.vec, %middle.block ] ; 7 uses
  %.neg = or disjoint i64 %.017.i96.ph, 1
  %xtraiter = and i64 %2, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.017.i96.ph
  %i.kc = load i64, ptr %i.kb, align 8, !tbaa !14 ; 3 uses
  %i.kd = and i64 %i.kc, 4503599627370495
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %i.ix, i64 %.017.i96.ph
  store i64 %i.kd, ptr %i.ke, align 8, !tbaa !14
  %i.kf = lshr i64 %i.kc, 52
  %i.kg = trunc nuw nsw i64 %i.kf to i16
  %i.kh = and i16 %i.kg, 2047
  %i.ki = getelementptr inbounds nuw [2 x i8], ptr %i.iz, i64 %.017.i96.ph
  store i16 %i.kh, ptr %i.ki, align 2, !tbaa !16
  %i.kj = lshr i64 %i.kc, 63
  %i.kk = trunc nuw nsw i64 %i.kj to i8
  %i.kl = getelementptr inbounds nuw i8, ptr %i.jb, i64 %.017.i96.ph
  store i8 %i.kk, ptr %i.kl, align 1, !tbaa !11
  %i.km = or disjoint i64 %.017.i96.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.017.i96.unr = phi i64 [ %.017.i96.ph, %scalar.ph.preheader ], [ %i.km, %scalar.ph.prol ]
  %i.kn = icmp eq i64 %2, %.neg
  br i1 %i.kn, label %bitSplit_bf16.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.017.i96 = phi i64 [ %i.ll, %scalar.ph ], [ %.017.i96.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.017.i96
  %i.kp = load i64, ptr %i.ko, align 8, !tbaa !14 ; 3 uses
  %i.kq = and i64 %i.kp, 4503599627370495
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %i.ix, i64 %.017.i96
  store i64 %i.kq, ptr %i.kr, align 8, !tbaa !14
  %i.ks = lshr i64 %i.kp, 52
  %i.kt = trunc nuw nsw i64 %i.ks to i16
  %i.ku = and i16 %i.kt, 2047
  %i.kv = getelementptr inbounds nuw [2 x i8], ptr %i.iz, i64 %.017.i96
  store i16 %i.ku, ptr %i.kv, align 2, !tbaa !16
  %i.kw = lshr i64 %i.kp, 63
  %i.kx = trunc nuw nsw i64 %i.kw to i8
  %i.ky = getelementptr inbounds nuw i8, ptr %i.jb, i64 %.017.i96
  store i8 %i.kx, ptr %i.ky, align 1, !tbaa !11
  %i.kz = add nuw i64 %.017.i96, 1                ; 4 uses
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.kz
  %i.lb = load i64, ptr %i.la, align 8, !tbaa !14 ; 3 uses
  %i.lc = and i64 %i.lb, 4503599627370495
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %i.ix, i64 %i.kz
  store i64 %i.lc, ptr %i.ld, align 8, !tbaa !14
  %i.le = lshr i64 %i.lb, 52
  %i.lf = trunc nuw nsw i64 %i.le to i16
  %i.lg = and i16 %i.lf, 2047
  %i.lh = getelementptr inbounds nuw [2 x i8], ptr %i.iz, i64 %i.kz
  store i16 %i.lg, ptr %i.lh, align 2, !tbaa !16
  %i.li = lshr i64 %i.lb, 63
  %i.lj = trunc nuw nsw i64 %i.li to i8
  %i.lk = getelementptr inbounds nuw i8, ptr %i.jb, i64 %i.kz
  store i8 %i.lj, ptr %i.lk, align 1, !tbaa !11
  %i.ll = add nuw i64 %.017.i96, 2                ; 2 uses
  %exitcond.not.i97.1 = icmp eq i64 %i.ll, %2
  br i1 %exitcond.not.i97.1, label %bitSplit_bf16.exit, label %scalar.ph, !llvm.loop !51

isEncodeFp64Pattern.exit.thread:                  ; preds = %bb.b, %isEncodeBf16Pattern.exit, %bb.f, %bb.e, %bb.d, %bb.c, %bb.g, %bb.h, %bb.i, %bb.j, %isEncodeFp16Pattern.exit, %bb.m, %bb.n, %bb.l, %bb.o, %bb.p, %isEncodeFp32Pattern.exit, %bb.t, %bb.u, %bb.s, %bb.v, %bb.r, %bb.w, %isEncodeFp64Pattern.exit
  %i.lm = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %4)
  %i.ln = icmp eq i64 %i.lm, 1
  br i1 %i.ln, label %.split, label %bitSplit_bf16.exit

.split:                                           ; preds = %isEncodeFp64Pattern.exit.thread
  %i.lo = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true) ; 2 uses
  %i.lp = icmp samesign ult i64 %i.lo, 4
  br i1 %i.lp, label %switch.lookup, label %bitSplit_bf16.exit

switch.lookup:                                    ; preds = %.split
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.ZL_bitSplitEncode, i64 %i.lo
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  tail call fastcc void @encodeElements(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %switch.ext, ptr noundef %5, i64 noundef %6)
  br label %bitSplit_bf16.exit

bitSplit_bf16.exit:                               ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %scalar.ph199.prol.loopexit, %scalar.ph199, %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.scalar.ph370.prol.loopexit, %vec.epilog.scalar.ph370, %middle.block, %middle.block232, %middle.block296, %vec.epilog.middle.block, %middle.block366, %vec.epilog.middle.block379, %.split, %switch.lookup, %isEncodeFp64Pattern.exit.thread, %bb.a
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @encodeElements(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef range(i64 1, 0) %2, ptr nofree noundef readonly captures(none) %3, i64 noundef range(i64 1, 9) %4, ptr nofree noundef readonly captures(none) %5, i64 noundef %6) unnamed_addr #3 {
bb.a:
  %i.a = tail call range(i64 1, 5) i64 @llvm.ctpop.i64(i64 %4)
  %i.b = icmp eq i64 %i.a, 1
  %i.c = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  %.not = icmp eq i64 %6, 0
  br i1 %.not, label %.split50.us, label %.split48.us

.split48.us:                                      ; preds = %bb.a, %._crit_edge.us
  %.04447.us = phi i64 [ %i.as, %._crit_edge.us ], [ 0, %bb.a ] ; 9 uses
  br i1 %i.b, label %.split.us, label %.lr.ph.us

.split.us:                                        ; preds = %.split48.us
  switch i64 %i.c, label %default.unreachable68 [
    i64 0, label %bb.e
    i64 1, label %bb.d
    i64 2, label %bb.c
    i64 3, label %bb.b
  ]

bb.b:                                             ; preds = %.split.us
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.04447.us
  %i.e = load i64, ptr %i.d, align 8, !tbaa !14
  br label %.lr.ph.us

bb.c:                                             ; preds = %.split.us
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.04447.us
  %i.g = load i32, ptr %i.f, align 4, !tbaa !17
  %i.h = zext i32 %i.g to i64
  br label %.lr.ph.us

bb.d:                                             ; preds = %.split.us
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.04447.us
  %i.j = load i16, ptr %i.i, align 2, !tbaa !16
  %i.k = zext i16 %i.j to i64
  br label %.lr.ph.us

bb.e:                                             ; preds = %.split.us
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 %.04447.us
  %i.m = load i8, ptr %i.l, align 1, !tbaa !11
  %i.n = zext i8 %i.m to i64
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %.split48.us
  %.043.us = phi i64 [ 0, %.split48.us ], [ %i.n, %bb.e ], [ %i.k, %bb.d ], [ %i.h, %bb.c ], [ %i.e, %bb.b ]
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph.us, %bb.k
  %.046.us = phi i64 [ 0, %.lr.ph.us ], [ %i.ar, %bb.k ] ; 7 uses
  %.04245.us = phi i64 [ 0, %.lr.ph.us ], [ %i.aq, %bb.k ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 %.046.us
  %i.p = load i8, ptr %i.o, align 1, !tbaa !11    ; 2 uses
  %i.q = icmp ugt i8 %i.p, 63
  %i.r = zext i8 %i.p to i64                      ; 2 uses
  %notmask.us = shl nsw i64 -1, %i.r
  %i.s = xor i64 %notmask.us, -1
  %i.t = select i1 %i.q, i64 -1, i64 %i.s
  %i.u = lshr i64 %.043.us, %.04245.us
  %i.v = and i64 %i.t, %i.u                       ; 4 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.046.us
  %i.x = load i64, ptr %i.w, align 8, !tbaa !14   ; 2 uses
  %i.y = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.x)
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %.split1.us, label %bb.k

.split1.us:                                       ; preds = %bb.f
  %i.aa = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.x, i1 true)
end_hunk_0
