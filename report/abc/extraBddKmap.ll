inline.NumInlined: 8
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@Extra_PrintKMap:bb.a
  %fputc387 = tail call i32 @fputc(i32 %.sink578, ptr %0) ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %.sink.split, %bb.v
  tail call void @Cudd_RecursiveDeref(ptr noundef nonnull %1, ptr noundef %i.ff) #5
  tail call void @Cudd_RecursiveDeref(ptr noundef nonnull %1, ptr noundef %i.fg) #5
  %fputc389 = tail call i32 @fputc(i32 32, ptr %0) ; 0 uses
  %.not390 = icmp eq i32 %.0318470, %i.er
  br i1 %.not390, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %fputc392 = tail call i32 @fputc(i32 124, ptr %0) ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.fp = add nuw nsw i32 %.0318470, 1            ; 2 uses
  %exitcond542.not = icmp eq i32 %i.fp, %smax541
  br i1 %exitcond542.not, label %._crit_edge473, label %.lr.ph472, !llvm.loop !54

._crit_edge473:                                   ; preds = %bb.y, %._crit_edge469
  %fputc359 = tail call i32 @fputc(i32 124, ptr %0) ; 0 uses
  %fputc360 = tail call i32 @fputc(i32 10, ptr %0) ; 0 uses
  tail call void @Cudd_RecursiveDeref(ptr noundef %1, ptr noundef %i.fa) #5
  %.not361 = icmp eq i32 %.3317486, %i.es
  br i1 %.not361, label %bb.af, label %.preheader421

.preheader421:                                    ; preds = %._crit_edge473
  br i1 %.not341459, label %._crit_edge477, label %.lr.ph476

.lr.ph476:                                        ; preds = %.preheader421, %.lr.ph476
  %.2303475 = phi i32 [ %i.fq, %.lr.ph476 ], [ 0, %.preheader421 ] ; 2 uses
  %i.fq = add nuw nsw i32 %.2303475, 1
  %fputc383 = tail call i32 @fputc(i32 32, ptr %0) ; 0 uses
  %exitcond543.not = icmp eq i32 %.2303475, %i.db
  br i1 %exitcond543.not, label %._crit_edge477, label %.lr.ph476, !llvm.loop !55

._crit_edge477:                                   ; preds = %.lr.ph476, %.preheader421
  %i.fr = and i32 %.3317486, 1
  %.not363 = icmp eq i32 %i.fr, 0
  %fputc364 = tail call i32 @fputc(i32 43, ptr %0) ; 0 uses
  br i1 %.not363, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %._crit_edge477
  br i1 %.not496, label %._crit_edge481, label %.lr.ph480

.lr.ph480:                                        ; preds = %bb.z, %bb.ab
  %.2309478 = phi i32 [ %i.fs, %bb.ab ], [ 0, %bb.z ] ; 2 uses
  %fputc376 = tail call i32 @fputc(i32 45, ptr %0) ; 0 uses
  %fputc377 = tail call i32 @fputc(i32 45, ptr %0) ; 0 uses
  %fputc378 = tail call i32 @fputc(i32 45, ptr %0) ; 0 uses
  %.not379 = icmp eq i32 %.2309478, %i.er
  br i1 %.not379, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph480
  %fputc381 = tail call i32 @fputc(i32 43, ptr %0) ; 0 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.lr.ph480
  %i.fs = add nuw nsw i32 %.2309478, 1            ; 2 uses
  %exitcond544.not = icmp eq i32 %i.fs, %smax541
  br i1 %exitcond544.not, label %._crit_edge481, label %.lr.ph480, !llvm.loop !56

bb.ac:                                            ; preds = %._crit_edge477
  br i1 %.not496, label %._crit_edge481, label %.lr.ph484

.lr.ph484:                                        ; preds = %bb.ac, %bb.ae
  %.3310482 = phi i32 [ %i.ft, %bb.ae ], [ 0, %bb.ac ] ; 2 uses
  %fputc366 = tail call i32 @fputc(i32 45, ptr %0) ; 0 uses
  %fputc367 = tail call i32 @fputc(i32 45, ptr %0) ; 0 uses
  %fputc368 = tail call i32 @fputc(i32 45, ptr %0) ; 0 uses
  %.not369 = icmp eq i32 %.3310482, %i.er
  br i1 %.not369, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph484
  %fputc371 = tail call i32 @fputc(i32 43, ptr %0) ; 0 uses
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.lr.ph484
  %i.ft = add nuw nsw i32 %.3310482, 1            ; 2 uses
  %exitcond545.not = icmp eq i32 %i.ft, %smax541
  br i1 %exitcond545.not, label %._crit_edge481, label %.lr.ph484, !llvm.loop !57

._crit_edge481:                                   ; preds = %bb.ab, %bb.ae, %bb.ac, %bb.z
  %fputc365 = tail call i32 @fputc(i32 43, ptr %0) ; 0 uses
  %fputc375 = tail call i32 @fputc(i32 10, ptr %0) ; 0 uses
  br label %bb.af

bb.af:                                            ; preds = %._crit_edge481, %._crit_edge473
  %i.fu = add nuw nsw i32 %.3317486, 1            ; 2 uses
  %exitcond547.not = icmp eq i32 %i.fu, %i.dd
  br i1 %exitcond547.not, label %.preheader, label %.preheader422, !llvm.loop !58

.lr.ph489:                                        ; preds = %.lr.ph489.preheader, %.lr.ph489
  %.3488 = phi i32 [ %i.fv, %.lr.ph489 ], [ 0, %.lr.ph489.preheader ] ; 2 uses
  %i.fv = add nuw nsw i32 %.3488, 1
  %fputc356 = tail call i32 @fputc(i32 32, ptr %0) ; 0 uses
  %exitcond548.not = icmp eq i32 %.3488, %i.db
  br i1 %exitcond548.not, label %._crit_edge490, label %.lr.ph489, !llvm.loop !59

._crit_edge490:                                   ; preds = %.lr.ph489, %.preheader
  %fputc346 = tail call i32 @fputc(i32 43, ptr %0) ; 0 uses
  br i1 %.not496, label %._crit_edge494, label %.lr.ph493

.lr.ph493:                                        ; preds = %._crit_edge490
  %i.fw = add nsw i32 %i.de, -1
  %smax549 = tail call i32 @llvm.smax.i32(i32 %i.de, i32 1)
  br label %bb.ag

bb.ag:                                            ; preds = %.lr.ph493, %bb.ai
  %.4311491 = phi i32 [ 0, %.lr.ph493 ], [ %i.fx, %bb.ai ] ; 2 uses
  %fputc349 = tail call i32 @fputc(i32 45, ptr %0) ; 0 uses
  %fputc350 = tail call i32 @fputc(i32 45, ptr %0) ; 0 uses
  %fputc351 = tail call i32 @fputc(i32 45, ptr %0) ; 0 uses
  %.not352 = icmp eq i32 %.4311491, %i.fw
  br i1 %.not352, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %fputc354 = tail call i32 @fputc(i32 43, ptr %0) ; 0 uses
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.fx = add nuw nsw i32 %.4311491, 1            ; 2 uses
  %exitcond550.not = icmp eq i32 %i.fx, %smax549
  br i1 %exitcond550.not, label %._crit_edge494, label %bb.ag, !llvm.loop !60

._crit_edge494:                                   ; preds = %bb.ai, %._crit_edge490
  %fputc347 = tail call i32 @fputc(i32 43, ptr %0) ; 0 uses
  %fputc348 = tail call i32 @fputc(i32 10, ptr %0) ; 0 uses
  br label %bb.aj

bb.aj:                                            ; preds = %.thread420, %._crit_edge494, %bb.k, %bb.d, %bb.b
  ret void
}

declare i32 @Cudd_bddLeq(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #2

declare ptr @Extra_bddBitsToCube(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @Cudd_Ref(ptr noundef) local_unnamed_addr #1

declare ptr @Cudd_Cofactor(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @Cudd_RecursiveDeref(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @Cudd_bddIthVar(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @Cudd_Support(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @Cudd_bddAnd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @Cudd_SupportSize(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define void @Extra_PrintKMapRelation(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %3 to i64
  %i.b = xor i64 %i.a, 1
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = tail call i32 @Cudd_bddLeq(ptr noundef %1, ptr noundef %2, ptr noundef %i.c) #5
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i64 @fwrite(ptr nonnull @.str, i64 48, i64 1, ptr %0) ; 0 uses
  br label %bb.ae

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !27   ; 2 uses
  %i.h = icmp eq ptr %2, %i.g
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = tail call i64 @fwrite(ptr nonnull @.str.18, i64 24, i64 1, ptr %0) ; 0 uses
  br label %bb.ae

bb.e:                                             ; preds = %bb.c
  %i.j = icmp eq ptr %3, %i.g
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.k = tail call i64 @fwrite(ptr nonnull @.str.19, i64 24, i64 1, ptr %0) ; 0 uses
  br label %bb.ae

bb.g:                                             ; preds = %bb.e
  %i.l = add nsw i32 %5, %4
  %or.cond = icmp ugt i32 %i.l, 20
  br i1 %or.cond, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.m = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef 20) #5 ; 0 uses
  br label %bb.ae

bb.i:                                             ; preds = %bb.g
  %i.n = shl nuw nsw i32 1, %4                    ; 2 uses
  %i.o = shl nuw i32 1, %5                        ; 7 uses
  %fputc = tail call i32 @fputc(i32 10, ptr %0)   ; 0 uses
  %i.p = icmp sgt i32 %4, 0                       ; 2 uses
  br i1 %i.p, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.i
  %i.q = add nsw i32 %5, 97
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.j
  %.0226323 = phi i32 [ 0, %.lr.ph ], [ %i.s, %bb.j ] ; 2 uses
  %i.r = add nsw i32 %i.q, %.0226323
  %fputc310 = tail call i32 @fputc(i32 %i.r, ptr %0) ; 0 uses
  %i.s = add nuw nsw i32 %.0226323, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.s, %4
  br i1 %exitcond.not, label %._crit_edge, label %bb.j, !llvm.loop !61

._crit_edge:                                      ; preds = %bb.j, %bb.i
  %i.t = tail call i64 @fwrite(ptr nonnull @.str.11, i64 3, i64 1, ptr %0) ; 0 uses
  %i.u = icmp sgt i32 %5, 0
  br i1 %i.u, label %.lr.ph326, label %._crit_edge327

.lr.ph326:                                        ; preds = %._crit_edge, %.lr.ph326
  %.1227324 = phi i32 [ %i.w, %.lr.ph326 ], [ 0, %._crit_edge ] ; 2 uses
  %i.v = add nuw nsw i32 %.1227324, 97
  %fputc309 = tail call i32 @fputc(i32 %i.v, ptr %0) ; 0 uses
  %i.w = add nuw nsw i32 %.1227324, 1             ; 2 uses
  %exitcond377.not = icmp eq i32 %i.w, %5
  br i1 %exitcond377.not, label %.preheader322.lr.ph, label %.lr.ph326, !llvm.loop !62

._crit_edge327:                                   ; preds = %._crit_edge
  %fputc241 = tail call i32 @fputc(i32 10, ptr %0) ; 0 uses
  br label %.preheader320

.preheader322.lr.ph:                              ; preds = %.lr.ph326
  %fputc241412 = tail call i32 @fputc(i32 10, ptr %0) ; 0 uses
  %i.x = icmp sgt i32 %4, -3
  %.not370 = icmp eq i32 %5, 31
  %i.y = add i32 %4, 2
  %smax = tail call i32 @llvm.smax.i32(i32 %i.y, i32 0)
  %smax379 = tail call i32 @llvm.smax.i32(i32 %i.o, i32 1)
  br label %.preheader322

.preheader322:                                    ; preds = %.preheader322.lr.ph, %._crit_edge332
  %.0333 = phi i32 [ 0, %.preheader322.lr.ph ], [ %i.ai, %._crit_edge332 ] ; 2 uses
  br i1 %i.x, label %.lr.ph329, label %.preheader321

.preheader320:                                    ; preds = %._crit_edge332, %._crit_edge327
  %.not242334 = icmp slt i32 %4, 0                ; 3 uses
  br i1 %.not242334, label %._crit_edge337, label %.lr.ph336

.preheader321:                                    ; preds = %.lr.ph329, %.preheader322
  br i1 %.not370, label %._crit_edge332, label %.lr.ph331

.lr.ph331:                                        ; preds = %.preheader321
  %i.z = xor i32 %.0333, -1
  %i.aa = add nsw i32 %5, %i.z
  %i.ab = shl nuw i32 1, %i.aa
  br label %bb.k

.lr.ph329:                                        ; preds = %.preheader322, %.lr.ph329
  %.0215328 = phi i32 [ %i.ac, %.lr.ph329 ], [ 0, %.preheader322 ] ; 2 uses
  %i.ac = add nuw i32 %.0215328, 1
  %fputc308 = tail call i32 @fputc(i32 32, ptr %0) ; 0 uses
  %exitcond378.not = icmp eq i32 %.0215328, %smax
  br i1 %exitcond378.not, label %.preheader321, label %.lr.ph329, !llvm.loop !63

bb.k:                                             ; preds = %.lr.ph331, %bb.k
  %.0217330 = phi i32 [ 0, %.lr.ph331 ], [ %i.ah, %bb.k ] ; 3 uses
  %i.ad = lshr i32 %.0217330, 1
  %i.ae = xor i32 %i.ad, %.0217330
  %i.af = and i32 %i.ae, %i.ab
  %.not307 = icmp eq i32 %i.af, 0
  %.str.15..str.14 = select i1 %.not307, ptr @.str.15, ptr @.str.14
  %i.ag = tail call i64 @fwrite(ptr nonnull %.str.15..str.14, i64 4, i64 1, ptr %0) ; 0 uses
  %i.ah = add nuw nsw i32 %.0217330, 1            ; 2 uses
  %exitcond380.not = icmp eq i32 %i.ah, %smax379
  br i1 %exitcond380.not, label %._crit_edge332, label %bb.k, !llvm.loop !64

._crit_edge332:                                   ; preds = %bb.k, %.preheader321
  %fputc306 = tail call i32 @fputc(i32 10, ptr %0) ; 0 uses
  %i.ai = add nuw nsw i32 %.0333, 1               ; 2 uses
  %exitcond381.not = icmp eq i32 %i.ai, %5
  br i1 %exitcond381.not, label %.preheader320, label %.preheader322, !llvm.loop !65

.lr.ph336:                                        ; preds = %.preheader320, %.lr.ph336
  %.1216335 = phi i32 [ %i.aj, %.lr.ph336 ], [ 0, %.preheader320 ] ; 2 uses
  %i.aj = add nuw i32 %.1216335, 1
  %fputc305 = tail call i32 @fputc(i32 32, ptr %0) ; 0 uses
  %exitcond382.not = icmp eq i32 %.1216335, %4
  br i1 %exitcond382.not, label %._crit_edge337, label %.lr.ph336, !llvm.loop !66

._crit_edge337:                                   ; preds = %.lr.ph336, %.preheader320
  %fputc243 = tail call i32 @fputc(i32 43, ptr %0) ; 0 uses
  %.not371 = icmp eq i32 %5, 31                   ; 5 uses
  br i1 %.not371, label %._crit_edge341, label %.lr.ph340

.lr.ph340:                                        ; preds = %._crit_edge337
  %i.ak = add nsw i32 %i.o, -1
  %smax383 = tail call i32 @llvm.smax.i32(i32 %i.o, i32 1)
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph340, %bb.n
  %.0220338 = phi i32 [ 0, %.lr.ph340 ], [ %i.al, %bb.n ] ; 2 uses
  %fputc298 = tail call i32 @fputc(i32 45, ptr %0) ; 0 uses
  %fputc299 = tail call i32 @fputc(i32 45, ptr %0) ; 0 uses
  %fputc300 = tail call i32 @fputc(i32 45, ptr %0) ; 0 uses
  %.not301 = icmp eq i32 %.0220338, %i.ak
  br i1 %.not301, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %fputc303 = tail call i32 @fputc(i32 43, ptr %0) ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.al = add nuw nsw i32 %.0220338, 1            ; 2 uses
  %exitcond384.not = icmp eq i32 %i.al, %smax383
  br i1 %exitcond384.not, label %._crit_edge341, label %bb.l, !llvm.loop !67

._crit_edge341:                                   ; preds = %bb.n, %._crit_edge337
  %fputc244 = tail call i32 @fputc(i32 43, ptr %0) ; 0 uses
  %fputc245 = tail call i32 @fputc(i32 10, ptr %0) ; 0 uses
  %.not372 = icmp eq i32 %4, 31
  br i1 %.not372, label %.lr.ph364.preheader, label %.preheader319.lr.ph

.preheader319.lr.ph:                              ; preds = %._crit_edge341
  %i.am = add nsw i32 %i.o, -1                    ; 3 uses
  %i.an = add nsw i32 %i.n, -1
  %smax386 = tail call i32 @llvm.smax.i32(i32 %i.o, i32 1) ; 3 uses
  br label %.preheader319

.preheader319:                                    ; preds = %.preheader319.lr.ph, %bb.aa
  %.0224361 = phi i32 [ 0, %.preheader319.lr.ph ], [ %i.bp, %bb.aa ] ; 5 uses
  %i.ao = lshr i32 %.0224361, 1
  %i.ap = xor i32 %i.ao, %.0224361                ; 2 uses
  br i1 %i.p, label %.lr.ph343, label %._crit_edge344

.preheader:                                       ; preds = %bb.aa
  br i1 %.not242334, label %._crit_edge365, label %.lr.ph364.preheader

.lr.ph364.preheader:                              ; preds = %._crit_edge341, %.preheader
  br label %.lr.ph364

.lr.ph343:                                        ; preds = %.preheader319, %.lr.ph343
  %.1218342 = phi i32 [ %i.au, %.lr.ph343 ], [ 0, %.preheader319 ] ; 2 uses
  %i.aq = xor i32 %.1218342, -1
  %i.ar = add nsw i32 %4, %i.aq
  %i.as = shl nuw i32 1, %i.ar
  %i.at = and i32 %i.as, %i.ap
  %.not295 = icmp eq i32 %i.at, 0
  %. = select i1 %.not295, i32 48, i32 49
  %fputc297 = tail call i32 @fputc(i32 %., ptr %0) ; 0 uses
  %i.au = add nuw nsw i32 %.1218342, 1            ; 2 uses
  %exitcond385.not = icmp eq i32 %i.au, %4
  br i1 %exitcond385.not, label %._crit_edge344, label %.lr.ph343, !llvm.loop !68

._crit_edge344:                                   ; preds = %.lr.ph343, %.preheader319
  %fputc258 = tail call i32 @fputc(i32 32, ptr %0) ; 0 uses
  %i.av = tail call ptr @Extra_bddBitsToCube(ptr noundef %1, i32 noundef %i.ap, i32 noundef %4, ptr noundef %6, i32 noundef 1) #5 ; 3 uses
  tail call void @Cudd_Ref(ptr noundef %i.av) #5
  %fputc259 = tail call i32 @fputc(i32 124, ptr %0) ; 0 uses
  br i1 %.not371, label %._crit_edge348, label %.lr.ph347

.lr.ph347:                                        ; preds = %._crit_edge344, %bb.t
  %.0225345 = phi i32 [ %i.bk, %bb.t ], [ 0, %._crit_edge344 ] ; 4 uses
  %fputc285 = tail call i32 @fputc(i32 32, ptr %0) ; 0 uses
  %i.aw = lshr i32 %.0225345, 1
  %i.ax = xor i32 %i.aw, %.0225345
  %i.ay = tail call ptr @Extra_bddBitsToCube(ptr noundef %1, i32 noundef %i.ax, i32 noundef %5, ptr noundef %7, i32 noundef 1) #5 ; 3 uses
  tail call void @Cudd_Ref(ptr noundef %i.ay) #5
  %i.az = tail call ptr @Cudd_bddAnd(ptr noundef %1, ptr noundef %i.ay, ptr noundef %i.av) #5 ; 4 uses
  tail call void @Cudd_Ref(ptr noundef %i.az) #5
  tail call void @Cudd_RecursiveDeref(ptr noundef %1, ptr noundef %i.ay) #5
  %i.ba = tail call ptr @Cudd_Cofactor(ptr noundef %1, ptr noundef %2, ptr noundef %i.az) #5 ; 4 uses
  tail call void @Cudd_Ref(ptr noundef %i.ba) #5
  %i.bb = tail call ptr @Cudd_Cofactor(ptr noundef %1, ptr noundef %3, ptr noundef %i.az) #5 ; 4 uses
  tail call void @Cudd_Ref(ptr noundef %i.bb) #5
  tail call void @Cudd_RecursiveDeref(ptr noundef %1, ptr noundef %i.az) #5
  %i.bc = load ptr, ptr %i.f, align 8, !tbaa !27  ; 3 uses
  %i.bd = icmp eq ptr %i.ba, %i.bc                ; 2 uses
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = xor i64 %i.be, 1
  %i.bg = inttoptr i64 %i.bf to ptr               ; 2 uses
  %i.bh = icmp eq ptr %i.bb, %i.bg                ; 2 uses
  %or.cond314 = and i1 %i.bd, %i.bh
  br i1 %or.cond314, label %.sink.split, label %bb.o

bb.o:                                             ; preds = %.lr.ph347
  %i.bi = icmp eq ptr %i.ba, %i.bg                ; 2 uses
  %i.bj = icmp eq ptr %i.bb, %i.bc                ; 2 uses
  %or.cond315 = and i1 %i.bj, %i.bi
  br i1 %or.cond315, label %.sink.split, label %bb.p

bb.p:                                             ; preds = %bb.o
  %or.cond316 = and i1 %i.bi, %i.bh
  br i1 %or.cond316, label %.sink.split, label %bb.q

bb.q:                                             ; preds = %bb.p
  %or.cond317 = and i1 %i.bd, %i.bj
  br i1 %or.cond317, label %.sink.split, label %bb.r

.sink.split:                                      ; preds = %bb.q, %bb.p, %bb.o, %.lr.ph347
  %.sink413 = phi i32 [ 49, %.lr.ph347 ], [ 45, %bb.p ], [ 32, %bb.o ], [ 63, %bb.q ]
  %fputc288 = tail call i32 @fputc(i32 %.sink413, ptr %0) ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %.sink.split, %bb.q
  tail call void @Cudd_RecursiveDeref(ptr noundef nonnull %1, ptr noundef %i.ba) #5
  tail call void @Cudd_RecursiveDeref(ptr noundef nonnull %1, ptr noundef %i.bb) #5
  %fputc290 = tail call i32 @fputc(i32 32, ptr %0) ; 0 uses
  %.not291 = icmp eq i32 %.0225345, %i.am
  br i1 %.not291, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %fputc293 = tail call i32 @fputc(i32 124, ptr %0) ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bk = add nuw nsw i32 %.0225345, 1            ; 2 uses
  %exitcond387.not = icmp eq i32 %i.bk, %smax386
  br i1 %exitcond387.not, label %._crit_edge348, label %.lr.ph347, !llvm.loop !69

._crit_edge348:                                   ; preds = %bb.t, %._crit_edge344
  %fputc260 = tail call i32 @fputc(i32 124, ptr %0) ; 0 uses
  %fputc261 = tail call i32 @fputc(i32 10, ptr %0) ; 0 uses
  tail call void @Cudd_RecursiveDeref(ptr noundef %1, ptr noundef %i.av) #5
  %.not262 = icmp eq i32 %.0224361, %i.an
  br i1 %.not262, label %bb.aa, label %.preheader318

.preheader318:                                    ; preds = %._crit_edge348
  br i1 %.not242334, label %._crit_edge352, label %.lr.ph351

.lr.ph351:                                        ; preds = %.preheader318, %.lr.ph351
  %.2350 = phi i32 [ %i.bl, %.lr.ph351 ], [ 0, %.preheader318 ] ; 2 uses
  %i.bl = add nuw i32 %.2350, 1
  %fputc284 = tail call i32 @fputc(i32 32, ptr %0) ; 0 uses
  %exitcond388.not = icmp eq i32 %.2350, %4
  br i1 %exitcond388.not, label %._crit_edge352, label %.lr.ph351, !llvm.loop !70

._crit_edge352:                                   ; preds = %.lr.ph351, %.preheader318
  %i.bm = and i32 %.0224361, 1
  %.not264 = icmp eq i32 %i.bm, 0
  %fputc265 = tail call i32 @fputc(i32 43, ptr %0) ; 0 uses
  br i1 %.not264, label %bb.x, label %bb.u

bb.u:                                             ; preds = %._crit_edge352
  br i1 %.not371, label %._crit_edge356, label %.lr.ph355

.lr.ph355:                                        ; preds = %bb.u, %bb.w
  %.1221353 = phi i32 [ %i.bn, %bb.w ], [ 0, %bb.u ] ; 2 uses
  %fputc277 = tail call i32 @fputc(i32 45, ptr %0) ; 0 uses
  %fputc278 = tail call i32 @fputc(i32 45, ptr %0) ; 0 uses
  %fputc279 = tail call i32 @fputc(i32 45, ptr %0) ; 0 uses
  %.not280 = icmp eq i32 %.1221353, %i.am
  br i1 %.not280, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.lr.ph355
  %fputc282 = tail call i32 @fputc(i32 43, ptr %0) ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.lr.ph355
  %i.bn = add nuw nsw i32 %.1221353, 1            ; 2 uses
  %exitcond389.not = icmp eq i32 %i.bn, %smax386
  br i1 %exitcond389.not, label %._crit_edge356, label %.lr.ph355, !llvm.loop !71

bb.x:                                             ; preds = %._crit_edge352
  br i1 %.not371, label %._crit_edge356, label %.lr.ph359

.lr.ph359:                                        ; preds = %bb.x, %bb.z
  %.2222357 = phi i32 [ %i.bo, %bb.z ], [ 0, %bb.x ] ; 2 uses
  %fputc267 = tail call i32 @fputc(i32 45, ptr %0) ; 0 uses
  %fputc268 = tail call i32 @fputc(i32 45, ptr %0) ; 0 uses
  %fputc269 = tail call i32 @fputc(i32 45, ptr %0) ; 0 uses
  %.not270 = icmp eq i32 %.2222357, %i.am
  br i1 %.not270, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.lr.ph359
  %fputc272 = tail call i32 @fputc(i32 43, ptr %0) ; 0 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.lr.ph359
  %i.bo = add nuw nsw i32 %.2222357, 1            ; 2 uses
  %exitcond390.not = icmp eq i32 %i.bo, %smax386
  br i1 %exitcond390.not, label %._crit_edge356, label %.lr.ph359, !llvm.loop !72

._crit_edge356:                                   ; preds = %bb.w, %bb.z, %bb.x, %bb.u
  %fputc266 = tail call i32 @fputc(i32 43, ptr %0) ; 0 uses
  %fputc276 = tail call i32 @fputc(i32 10, ptr %0) ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %._crit_edge356, %._crit_edge348
  %i.bp = add nuw nsw i32 %.0224361, 1            ; 2 uses
  %exitcond392.not = icmp eq i32 %i.bp, %i.n
  br i1 %exitcond392.not, label %.preheader, label %.preheader319, !llvm.loop !73

.lr.ph364:                                        ; preds = %.lr.ph364.preheader, %.lr.ph364
  %.3363 = phi i32 [ %i.bq, %.lr.ph364 ], [ 0, %.lr.ph364.preheader ] ; 2 uses
  %i.bq = add nuw i32 %.3363, 1
  %fputc257 = tail call i32 @fputc(i32 32, ptr %0) ; 0 uses
  %exitcond393.not = icmp eq i32 %.3363, %4
  br i1 %exitcond393.not, label %._crit_edge365, label %.lr.ph364, !llvm.loop !74

._crit_edge365:                                   ; preds = %.lr.ph364, %.preheader
  %fputc247 = tail call i32 @fputc(i32 43, ptr %0) ; 0 uses
  br i1 %.not371, label %._crit_edge369, label %.lr.ph368

.lr.ph368:                                        ; preds = %._crit_edge365
  %i.br = add nsw i32 %i.o, -1
  %smax394 = tail call i32 @llvm.smax.i32(i32 %i.o, i32 1)
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph368, %bb.ad
  %.3223366 = phi i32 [ 0, %.lr.ph368 ], [ %i.bs, %bb.ad ] ; 2 uses
  %fputc250 = tail call i32 @fputc(i32 45, ptr %0) ; 0 uses
  %fputc251 = tail call i32 @fputc(i32 45, ptr %0) ; 0 uses
  %fputc252 = tail call i32 @fputc(i32 45, ptr %0) ; 0 uses
  %.not253 = icmp eq i32 %.3223366, %i.br
  br i1 %.not253, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %fputc255 = tail call i32 @fputc(i32 43, ptr %0) ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.bs = add nuw nsw i32 %.3223366, 1            ; 2 uses
  %exitcond395.not = icmp eq i32 %i.bs, %smax394
  br i1 %exitcond395.not, label %._crit_edge369, label %bb.ab, !llvm.loop !75

._crit_edge369:                                   ; preds = %bb.ad, %._crit_edge365
  %fputc248 = tail call i32 @fputc(i32 43, ptr %0) ; 0 uses
  %fputc249 = tail call i32 @fputc(i32 10, ptr %0) ; 0 uses
  br label %bb.ae

bb.ae:                                            ; preds = %._crit_edge369, %bb.h, %bb.f, %bb.d, %bb.b
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !18, i64 352}
!9 = !{!"DdManager", !10, i64 0, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !14, i64 80, !14, i64 88, !5, i64 96, !5, i64 100, !15, i64 104, !15, i64 112, !15, i64 120, !5, i64 128, !5, i64 132, !5, i64 136, !5, i64 140, !5, i64 144, !5, i64 148, !16, i64 152, !16, i64 160, !17, i64 168, !5, i64 224, !5, i64 228, !5, i64 232, !5, i64 236, !5, i64 240, !5, i64 244, !5, i64 248, !15, i64 256, !5, i64 264, !5, i64 268, !5, i64 272, !18, i64 280, !13, i64 288, !13, i64 296, !15, i64 304, !5, i64 312, !20, i64 320, !20, i64 328, !20, i64 336, !20, i64 344, !18, i64 352, !20, i64 360, !18, i64 368, !5, i64 376, !21, i64 384, !21, i64 392, !18, i64 400, !11, i64 408, !22, i64 416, !18, i64 424, !5, i64 432, !5, i64 436, !5, i64 440, !15, i64 448, !5, i64 456, !5, i64 460, !5, i64 464, !5, i64 468, !15, i64 472, !15, i64 480, !5, i64 488, !5, i64 492, !5, i64 496, !5, i64 500, !5, i64 504, !5, i64 508, !5, i64 512, !5, i64 516, !5, i64 520, !23, i64 528, !23, i64 536, !5, i64 544, !5, i64 548, !5, i64 552, !5, i64 556, !5, i64 560, !5, i64 564, !24, i64 568, !22, i64 576, !25, i64 584, !25, i64 592, !25, i64 600, !25, i64 608, !26, i64 616, !26, i64 624, !5, i64 632, !13, i64 640, !13, i64 648, !13, i64 656, !5, i64 664, !13, i64 672, !13, i64 680, !15, i64 688, !15, i64 696, !15, i64 704, !15, i64 712, !15, i64 720, !15, i64 728, !5, i64 736, !11, i64 744, !11, i64 752, !13, i64 760}
!10 = !{!"DdNode", !5, i64 0, !5, i64 4, !11, i64 8, !6, i64 16, !13, i64 32}
!11 = !{!"p1 _ZTS6DdNode", !12, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!"long", !6, i64 0}
!14 = !{!"p1 _ZTS7DdCache", !12, i64 0}
!15 = !{!"double", !6, i64 0}
!16 = !{!"p1 _ZTS10DdSubtable", !12, i64 0}
!17 = !{!"DdSubtable", !18, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48}
!18 = !{!"p2 _ZTS6DdNode", !19, i64 0}
!19 = !{!"any p2 pointer", !12, i64 0}
!20 = !{!"p1 int", !12, i64 0}
!21 = !{!"p1 long", !12, i64 0}
!22 = !{!"p1 omnipotent char", !12, i64 0}
!23 = !{!"p1 _ZTS7MtrNode", !12, i64 0}
!24 = !{!"p1 _ZTS12DdLocalCache", !12, i64 0}
!25 = !{!"p1 _ZTS6DdHook", !12, i64 0}
!26 = !{!"p1 _ZTS8_IO_FILE", !12, i64 0}
!27 = !{!9, !11, i64 40}
!28 = !{!26, !26, i64 0}
!29 = distinct !{!29, !30}
!30 = !{!"llvm.loop.mustprogress"}
!31 = !{!11, !11, i64 0}
!32 = distinct !{!32, !30, !33, !34}
!33 = !{!"llvm.loop.isvectorized", i32 1}
!34 = !{!"llvm.loop.unroll.runtime.disable"}
!35 = distinct !{!35, !36}
!36 = !{!"llvm.loop.unroll.disable"}
!37 = distinct !{!37, !30}
!38 = !{!9, !20, i64 336}
!39 = !{!5, !5, i64 0}
!40 = distinct !{!40, !30}
!41 = !{!10, !5, i64 0}
!42 = !{!6, !6, i64 0}
!43 = distinct !{!43, !30}
!44 = distinct !{!44, !30, !33}
!45 = distinct !{!45, !30}
!46 = !{!22, !22, i64 0}
!47 = distinct !{!47, !30}
!48 = distinct !{!48, !30}
!49 = distinct !{!49, !30}
!50 = distinct !{!50, !30}
!51 = distinct !{!51, !30}
!52 = distinct !{!52, !30}
!53 = distinct !{!53, !30}
!54 = distinct !{!54, !30}
!55 = distinct !{!55, !30}
!56 = distinct !{!56, !30}
!57 = distinct !{!57, !30}
!58 = distinct !{!58, !30}
!59 = distinct !{!59, !30}
!60 = distinct !{!60, !30}
!61 = distinct !{!61, !30}
!62 = distinct !{!62, !30}
!63 = distinct !{!63, !30}
!64 = distinct !{!64, !30}
!65 = distinct !{!65, !30}
!66 = distinct !{!66, !30}
!67 = distinct !{!67, !30}
!68 = distinct !{!68, !30}
!69 = distinct !{!69, !30}
!70 = distinct !{!70, !30}
!71 = distinct !{!71, !30}
!72 = distinct !{!72, !30}
!73 = distinct !{!73, !30}
!74 = distinct !{!74, !30}
!75 = distinct !{!75, !30}
end_hunk_0
