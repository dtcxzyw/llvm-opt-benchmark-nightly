Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_test_harness?download=true
inline.NumInlined: 25
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@SDLTest_ExecuteTestSuiteRunner:bb.a
  %indvars.iv563 = phi i64 [ %indvars.iv.next564, %bb.m ], [ 0, %bb.k ]
  %i.dg = phi ptr [ %i.dp, %bb.m ], [ %i.de, %bb.k ] ; 2 uses
  %indvars.iv.next564 = add nuw nsw i64 %indvars.iv563, 1 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.di = load ptr, ptr %i.dh, align 8            ; 2 uses
  %.not377 = icmp eq ptr %i.di, null
  br i1 %.not377, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph466.split
  %i.dj = load ptr, ptr %i.cr, align 8
  %i.dk = call i32 @SDL_strcasecmp(ptr noundef %i.dj, ptr noundef nonnull %i.di) #8
  %i.dl = icmp eq i32 %i.dk, 0
  br i1 %i.dl, label %._crit_edge472.thread, label %._crit_edge609

._crit_edge609:                                   ; preds = %bb.l
  %.pre610 = load ptr, ptr %i.dc, align 8
  br label %bb.m

._crit_edge472.thread:                            ; preds = %bb.l
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %.pre608 = load ptr, ptr %i.dm, align 8         ; 2 uses
  %.pre = load ptr, ptr %i.cw, align 8            ; 2 uses
  call void (ptr, ...) @SDLTest_Log(ptr noundef nonnull @.str.7, ptr noundef %.pre608, ptr noundef %.pre) #8
  br label %bb.p

bb.m:                                             ; preds = %._crit_edge609, %.lr.ph466.split
  %i.dn = phi ptr [ %.pre610, %._crit_edge609 ], [ %i.df, %.lr.ph466.split ] ; 2 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %indvars.iv.next564
  %i.dp = load ptr, ptr %i.do, align 8            ; 2 uses
  %.not546 = icmp eq ptr %i.dp, null
  br i1 %.not546, label %.loopexit437, label %.lr.ph466.split, !llvm.loop !8

.loopexit437:                                     ; preds = %bb.m, %bb.k
  %i.dq = load ptr, ptr %0, align 8
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %indvars.iv.next567
  %i.ds = load ptr, ptr %i.dr, align 8            ; 2 uses
  %.not664 = icmp eq ptr %i.ds, null
  br i1 %.not664, label %._crit_edge472, label %.lr.ph471, !llvm.loop !9

._crit_edge472:                                   ; preds = %.loopexit437, %.preheader438
  %i.dt = load ptr, ptr %i.cr, align 8
  call void (ptr, ...) @SDLTest_LogError(ptr noundef nonnull @.str.8, ptr noundef %i.dt) #8
  %i.du = load ptr, ptr %0, align 8
  %i.dv = load ptr, ptr %i.du, align 8            ; 2 uses
  %.not395482 = icmp eq ptr %i.dv, null
  br i1 %.not395482, label %._crit_edge486, label %.lr.ph485

.lr.ph485:                                        ; preds = %._crit_edge472, %._crit_edge481
  %indvars.iv572 = phi i64 [ %indvars.iv.next573, %._crit_edge481 ], [ 0, %._crit_edge472 ]
  %i.dw = phi ptr [ %i.em, %._crit_edge481 ], [ %i.dv, %._crit_edge472 ] ; 2 uses
  %i.dx = load ptr, ptr %i.dw, align 8            ; 2 uses
  %.not396 = icmp eq ptr %i.dx, null
  br i1 %.not396, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph485
  call void (ptr, ...) @SDLTest_Log(ptr noundef nonnull @.str.9, ptr noundef nonnull %i.dx) #8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph485
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 16 ; 2 uses
  %i.dz = load ptr, ptr %i.dy, align 8
  %i.ea = load ptr, ptr %i.dz, align 8            ; 2 uses
  %.not397477 = icmp eq ptr %i.ea, null
  br i1 %.not397477, label %._crit_edge481, label %.lr.ph480

.lr.ph480:                                        ; preds = %bb.o, %.lr.ph480
  %indvars.iv569 = phi i64 [ %indvars.iv.next570, %.lr.ph480 ], [ 0, %bb.o ]
  %i.eb = phi ptr [ %i.ej, %.lr.ph480 ], [ %i.ea, %bb.o ] ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 24
  %i.ef = load i32, ptr %i.ee, align 8
  %.not398 = icmp eq i32 %i.ef, 0
  %i.eg = select i1 %.not398, ptr @.str.12, ptr @.str.11
  call void (ptr, ...) @SDLTest_Log(ptr noundef nonnull @.str.10, ptr noundef %i.ed, ptr noundef nonnull %i.eg) #8
  %indvars.iv.next570 = add nuw nsw i64 %indvars.iv569, 1 ; 2 uses
  %i.eh = load ptr, ptr %i.dy, align 8
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %indvars.iv.next570
  %i.ej = load ptr, ptr %i.ei, align 8            ; 2 uses
  %.not397 = icmp eq ptr %i.ej, null
  br i1 %.not397, label %._crit_edge481, label %.lr.ph480, !llvm.loop !10

._crit_edge481:                                   ; preds = %.lr.ph480, %bb.o
  %indvars.iv.next573 = add nuw nsw i64 %indvars.iv572, 1 ; 2 uses
  %i.ek = load ptr, ptr %0, align 8
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %indvars.iv.next573
  %i.em = load ptr, ptr %i.el, align 8            ; 2 uses
  %.not395 = icmp eq ptr %i.em, null
  br i1 %.not395, label %._crit_edge486, label %.lr.ph485, !llvm.loop !11

._crit_edge486:                                   ; preds = %._crit_edge481, %._crit_edge472
  call void (ptr, ...) @SDLTest_Log(ptr noundef nonnull @.str.13) #8
  call void @SDL_free(ptr noundef nonnull %i.cq) #8
  br label %bb.ck

bb.p:                                             ; preds = %._crit_edge472.thread, %.thread
  %i.en = phi i1 [ false, %.thread ], [ true, %._crit_edge472.thread ]
  %.0312450 = phi ptr [ null, %.thread ], [ %.pre608, %._crit_edge472.thread ]
  %.2320413 = phi ptr [ %i.db, %.thread ], [ %.pre, %._crit_edge472.thread ]
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 0, ptr %i.eo, align 4
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.i, %bb.h
  %.3325 = phi i1 [ false, %bb.p ], [ true, %bb.i ], [ true, %bb.h ]
  %.3321 = phi ptr [ %.2320413, %bb.p ], [ null, %bb.i ], [ null, %bb.h ] ; 2 uses
  %.2317 = phi i1 [ %i.en, %bb.p ], [ false, %bb.i ], [ false, %bb.h ] ; 2 uses
  %.2314 = phi ptr [ %.0312450, %bb.p ], [ null, %bb.i ], [ null, %bb.h ] ; 2 uses
  %i.ep = load ptr, ptr %0, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %bb.q
  %indvars.iv581 = phi i32 [ %indvars.iv.next582, %bb.r ], [ 0, %bb.q ] ; 4 uses
  %indvars.iv575 = phi i64 [ %indvars.iv.next576, %bb.r ], [ 0, %bb.q ] ; 5 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %indvars.iv575
  %i.er = load ptr, ptr %i.eq, align 8
  %.not378 = icmp eq ptr %i.er, null
  %indvars.iv.next576 = add nuw nsw i64 %indvars.iv575, 1
  %indvars.iv.next582 = add nuw i32 %indvars.iv581, 1
  br i1 %.not378, label %bb.s, label %bb.r, !llvm.loop !12

bb.s:                                             ; preds = %bb.r
  %i.es = trunc nuw nsw i64 %indvars.iv575 to i32
  %i.et = shl nuw nsw i64 %indvars.iv575, 2
  %i.eu = call noalias ptr @SDL_malloc(i64 noundef %i.et) #8 ; 8 uses
  %.not379 = icmp eq ptr %i.eu, null
  br i1 %.not379, label %bb.t, label %.preheader436.a

.preheader436.a:                                  ; preds = %bb.s
  %.not547 = icmp eq i64 %indvars.iv575, 0        ; 2 uses
  br i1 %.not547, label %._crit_edge489, label %.lr.ph488.preheader

.lr.ph488.preheader:                              ; preds = %.preheader436.a
  %wide.trip.count = zext i32 %indvars.iv581 to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %indvars.iv581, 8
  br i1 %min.iters.check, label %.lr.ph488.preheader684, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph488.preheader
  %n.vec = and i64 %wide.trip.count, 4294967288   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %index ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  store <4 x i32> %vec.ind, ptr %i.ev, align 4
  store <4 x i32> %step.add, ptr %i.ew, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.ex = icmp eq i64 %index.next, %n.vec
  br i1 %i.ex, label %middle.block, label %vector.body, !llvm.loop !13

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge489, label %.lr.ph488.preheader684

.lr.ph488.preheader684:                           ; preds = %.lr.ph488.preheader, %middle.block
  %indvars.iv578.ph = phi i64 [ 0, %.lr.ph488.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph488

bb.t:                                             ; preds = %bb.s
  call void @SDL_free(ptr noundef nonnull %i.cq) #8
  %i.ey = call zeroext i1 @SDL_OutOfMemory() #8
  %i.ez = zext i1 %i.ey to i32
  br label %bb.ck

.lr.ph488:                                        ; preds = %.lr.ph488.preheader684, %.lr.ph488
  %indvars.iv578 = phi i64 [ %indvars.iv.next579, %.lr.ph488 ], [ %indvars.iv578.ph, %.lr.ph488.preheader684 ] ; 3 uses
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %indvars.iv578
  %i.fb = trunc nuw nsw i64 %indvars.iv578 to i32
  store i32 %i.fb, ptr %i.fa, align 4
  %indvars.iv.next579 = add nuw nsw i64 %indvars.iv578, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next579, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge489, label %.lr.ph488, !llvm.loop !14

._crit_edge489:                                   ; preds = %.lr.ph488, %middle.block, %.preheader436.a
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.fd = load i64, ptr %i.fc, align 8            ; 2 uses
  %.not380 = icmp eq i64 %i.fd, 0
  br i1 %.not380, label %bb.u, label %bb.v

bb.u:                                             ; preds = %._crit_edge489
  %i.fe = call fastcc i64 @SDLTest_GenerateExecKey(ptr noundef %.0328, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef 1)
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge489, %bb.u
  %.0326 = phi i64 [ %i.fe, %bb.u ], [ %i.fd, %._crit_edge489 ]
  call void @SDLTest_FuzzerInit(i64 noundef %.0326) #8
  %i.ff = add nsw i32 %i.es, -2                   ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  br label %bb.w

.preheader435.a:                                  ; preds = %bb.y
  br i1 %.not547, label %._crit_edge539, label %.lr.ph538

.lr.ph538:                                        ; preds = %.preheader435.a
  %i.fh = icmp eq ptr %.3321, null
  %or.cond3 = or i1 %.3325, %i.fh
  %1 = icmp ne ptr %.2314, null
  %or.cond5 = and i1 %.2317, %1
  %wide.trip.count601 = zext i32 %indvars.iv581 to i64
  br label %bb.z

bb.w:                                             ; preds = %bb.v, %bb.y
  %i.fi = phi i32 [ 99, %bb.v ], [ %i.ft, %bb.y ] ; 2 uses
  %i.fj = call i32 @SDLTest_RandomIntegerInRange(i32 noundef 0, i32 noundef %i.ff) #8
  %i.fk = call i32 @SDLTest_RandomIntegerInRange(i32 noundef 0, i32 noundef %i.ff) #8
  %i.fl = load i8, ptr %i.fg, align 4, !range !27, !noundef !28
  %i.fm = trunc nuw i8 %i.fl to i1
  br i1 %i.fm, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.fn = sext i32 %i.fk to i64
  %i.fo = getelementptr inbounds [4 x i8], ptr %i.eu, i64 %i.fn ; 2 uses
  %i.fp = load i32, ptr %i.fo, align 4
  %i.fq = sext i32 %i.fj to i64
  %i.fr = getelementptr inbounds [4 x i8], ptr %i.eu, i64 %i.fq ; 2 uses
  %i.fs = load i32, ptr %i.fr, align 4
  store i32 %i.fs, ptr %i.fo, align 4
  store i32 %i.fp, ptr %i.fr, align 4
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.ft = add nsw i32 %i.fi, -1
  %.not381 = icmp eq i32 %i.fi, 0
  br i1 %.not381, label %.preheader435.a, label %bb.w, !llvm.loop !15

bb.z:                                             ; preds = %.lr.ph538, %bb.ce
  %indvars.iv598 = phi i64 [ 0, %.lr.ph538 ], [ %indvars.iv.next599, %bb.ce ] ; 2 uses
  %.0281536 = phi i32 [ 0, %.lr.ph538 ], [ %.6, %bb.ce ] ; 3 uses
  %.0285535 = phi i32 [ 0, %.lr.ph538 ], [ %.6291, %bb.ce ] ; 3 uses
  %.0292534 = phi i32 [ 0, %.lr.ph538 ], [ %.6298, %bb.ce ] ; 3 uses
  %.0300533 = phi i32 [ 0, %.lr.ph538 ], [ %.5305, %bb.ce ] ; 3 uses
  %.0306532 = phi i1 [ false, %.lr.ph538 ], [ %.5311, %bb.ce ] ; 3 uses
  %.0337531 = phi i32 [ 0, %.lr.ph538 ], [ %.4341, %bb.ce ] ; 3 uses
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %indvars.iv598
  %i.fv = load i32, ptr %i.fu, align 4            ; 2 uses
  %i.fw = load ptr, ptr %0, align 8
  %i.fx = sext i32 %i.fv to i64
  %i.fy = getelementptr inbounds [8 x i8], ptr %i.fw, i64 %i.fx
  %i.fz = load ptr, ptr %i.fy, align 8            ; 7 uses
  %i.ga = load ptr, ptr %i.fz, align 8            ; 4 uses
  %.not382 = icmp eq ptr %i.ga, null              ; 2 uses
  %spec.select = select i1 %.not382, ptr @.str.16, ptr %i.ga ; 3 uses
  %i.gb = add nsw i32 %i.fv, 1                    ; 4 uses
  %brmerge = select i1 %or.cond3, i1 true, i1 %.not382
  br i1 %brmerge, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gc = call i32 @SDL_strcasecmp(ptr noundef nonnull %.3321, ptr noundef nonnull %i.ga) #8
  %.not384 = icmp eq i32 %i.gc, 0
  br i1 %.not384, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gd = load i8, ptr @SDLTest_Color, align 1, !range !27, !noundef !28
  %i.ge = trunc nuw i8 %i.gd to i1                ; 2 uses
  %i.gf = select i1 %i.ge, ptr @.str.18, ptr @.str.11
  %i.gg = select i1 %i.ge, ptr @.str.19, ptr @.str.11
  call void (ptr, ...) @SDLTest_Log(ptr noundef nonnull @.str.17, i32 noundef %i.gb, ptr noundef nonnull %i.ga, ptr noundef nonnull %i.gf, ptr noundef nonnull %i.gg) #8
  br label %bb.ce

bb.ac:                                            ; preds = %bb.z, %bb.aa
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fz, i64 16 ; 2 uses
  %i.gi = load ptr, ptr %i.gh, align 8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ad, %bb.ac
  %indvars.iv589 = phi i32 [ %indvars.iv.next590, %bb.ad ], [ 0, %bb.ac ] ; 4 uses
  %indvars.iv583 = phi i64 [ %indvars.iv.next584, %bb.ad ], [ 0, %bb.ac ] ; 5 uses
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.gi, i64 %indvars.iv583
  %i.gk = load ptr, ptr %i.gj, align 8
  %.not385 = icmp eq ptr %i.gk, null
  %indvars.iv.next584 = add nuw nsw i64 %indvars.iv583, 1
  %indvars.iv.next590 = add nuw i32 %indvars.iv589, 1
  br i1 %.not385, label %bb.ae, label %bb.ad, !llvm.loop !16

bb.ae:                                            ; preds = %bb.ad
  %i.gl = trunc nuw nsw i64 %indvars.iv583 to i32
  %i.gm = shl nuw nsw i64 %indvars.iv583, 2
  %i.gn = call noalias ptr @SDL_malloc(i64 noundef %i.gm) #8 ; 7 uses
  %.not386.not = icmp eq ptr %i.gn, null
  br i1 %.not386.not, label %.thread424, label %.preheader434

.preheader434:                                    ; preds = %bb.ae
  %.not549 = icmp eq i64 %indvars.iv583, 0        ; 2 uses
  br i1 %.not549, label %.preheader, label %.lr.ph491.preheader

.lr.ph491.preheader:                              ; preds = %.preheader434
  %wide.trip.count591 = zext i32 %indvars.iv589 to i64 ; 3 uses
  %min.iters.check671 = icmp ult i32 %indvars.iv589, 8
  br i1 %min.iters.check671, label %.lr.ph491.preheader683, label %vector.ph672

vector.ph672:                                     ; preds = %.lr.ph491.preheader
  %n.vec673 = and i64 %wide.trip.count591, 4294967288 ; 3 uses
  br label %vector.body674

vector.body674:                                   ; preds = %vector.body674, %vector.ph672
  %index675 = phi i64 [ 0, %vector.ph672 ], [ %index.next678, %vector.body674 ] ; 2 uses
  %vec.ind676 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph672 ], [ %vec.ind.next679, %vector.body674 ] ; 3 uses
  %step.add677 = add <4 x i32> %vec.ind676, splat (i32 4)
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %index675 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 16
  store <4 x i32> %vec.ind676, ptr %i.go, align 4
  store <4 x i32> %step.add677, ptr %i.gp, align 4
  %index.next678 = add nuw i64 %index675, 8       ; 2 uses
  %vec.ind.next679 = add <4 x i32> %vec.ind676, splat (i32 8)
  %i.gq = icmp eq i64 %index.next678, %n.vec673
  br i1 %i.gq, label %middle.block680, label %vector.body674, !llvm.loop !17

middle.block680:                                  ; preds = %vector.body674
  %cmp.n681 = icmp eq i64 %n.vec673, %wide.trip.count591
  br i1 %cmp.n681, label %.preheader, label %.lr.ph491.preheader683

.lr.ph491.preheader683:                           ; preds = %.lr.ph491.preheader, %middle.block680
  %indvars.iv586.ph = phi i64 [ 0, %.lr.ph491.preheader ], [ %n.vec673, %middle.block680 ]
  br label %.lr.ph491

.thread424:                                       ; preds = %bb.ae
  call void @SDL_free(ptr noundef nonnull %i.eu) #8
  call void @SDL_free(ptr noundef nonnull %i.cq) #8
  %i.gr = call zeroext i1 @SDL_OutOfMemory() #8
  %i.gs = zext i1 %i.gr to i32
  br label %bb.ck

.preheader:                                       ; preds = %.lr.ph491, %middle.block680, %.preheader434
  %i.gt = add nsw i32 %i.gl, -1                   ; 2 uses
  br label %bb.af

.lr.ph491:                                        ; preds = %.lr.ph491.preheader683, %.lr.ph491
  %indvars.iv586 = phi i64 [ %indvars.iv.next587, %.lr.ph491 ], [ %indvars.iv586.ph, %.lr.ph491.preheader683 ] ; 3 uses
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %indvars.iv586
  %i.gv = trunc nuw nsw i64 %indvars.iv586 to i32
  store i32 %i.gv, ptr %i.gu, align 4
  %indvars.iv.next587 = add nuw nsw i64 %indvars.iv586, 1 ; 2 uses
  %exitcond592.not = icmp eq i64 %indvars.iv.next587, %wide.trip.count591
  br i1 %exitcond592.not, label %.preheader, label %.lr.ph491, !llvm.loop !18

bb.af:                                            ; preds = %.preheader, %bb.ah
  %i.gw = phi i32 [ 99, %.preheader ], [ %i.hh, %bb.ah ] ; 2 uses
  %i.gx = call i32 @SDLTest_RandomIntegerInRange(i32 noundef 0, i32 noundef %i.gt) #8
  %i.gy = call i32 @SDLTest_RandomIntegerInRange(i32 noundef 0, i32 noundef %i.gt) #8
  %i.gz = load i8, ptr %i.fg, align 4, !range !27, !noundef !28
  %i.ha = trunc nuw i8 %i.gz to i1
  br i1 %i.ha, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.hb = sext i32 %i.gy to i64
  %i.hc = getelementptr inbounds [4 x i8], ptr %i.gn, i64 %i.hb ; 2 uses
  %i.hd = load i32, ptr %i.hc, align 4
  %i.he = sext i32 %i.gx to i64
  %i.hf = getelementptr inbounds [4 x i8], ptr %i.gn, i64 %i.he ; 2 uses
  %i.hg = load i32, ptr %i.hf, align 4
  store i32 %i.hg, ptr %i.hc, align 4
  store i32 %i.hd, ptr %i.hf, align 4
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.hh = add nsw i32 %i.gw, -1
  %.not387 = icmp eq i32 %i.gw, 0
  br i1 %.not387, label %bb.ai, label %bb.af, !llvm.loop !19

bb.ai:                                            ; preds = %bb.ah
  %i.hi = call i64 @SDL_GetPerformanceCounter() #8
  %i.hj = uitofp i64 %i.hi to float
  %i.hk = call i64 @SDL_GetPerformanceFrequency() #8
  %i.hl = uitofp i64 %i.hk to float
  %i.hm = fdiv float %i.hj, %i.hl
  call void (ptr, ...) @SDLTest_Log(ptr noundef nonnull @.str.20, i32 noundef %i.gb, ptr noundef nonnull %spec.select) #8
  br i1 %.not549, label %._crit_edge521, label %.lr.ph520

.lr.ph520:                                        ; preds = %bb.ai
  %i.hn = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %i.ho = getelementptr inbounds nuw i8, ptr %i.fz, i64 24
  %wide.trip.count596 = zext i32 %indvars.iv589 to i64
  br label %bb.aj

bb.aj:                                            ; preds = %.lr.ph520, %.thread423
  %indvars.iv593 = phi i64 [ 0, %.lr.ph520 ], [ %indvars.iv.next594, %.thread423 ] ; 2 uses
  %.0270517 = phi i32 [ 0, %.lr.ph520 ], [ %.3, %.thread423 ] ; 3 uses
  %.0273516 = phi i32 [ 0, %.lr.ph520 ], [ %.3276, %.thread423 ] ; 3 uses
  %.0277515 = phi i32 [ 0, %.lr.ph520 ], [ %.3280, %.thread423 ] ; 3 uses
  %.1282514 = phi i32 [ %.0281536, %.lr.ph520 ], [ %.4, %.thread423 ] ; 3 uses
  %.1286513 = phi i32 [ %.0285535, %.lr.ph520 ], [ %.4289, %.thread423 ] ; 3 uses
  %.1293512 = phi i32 [ %.0292534, %.lr.ph520 ], [ %.4296, %.thread423 ] ; 3 uses
  %.1301511 = phi i32 [ %.0300533, %.lr.ph520 ], [ %.3303, %.thread423 ] ; 2 uses
  %.1307510 = phi i1 [ %.0306532, %.lr.ph520 ], [ %.3309, %.thread423 ] ; 3 uses
  %.1338509 = phi i32 [ %.0337531, %.lr.ph520 ], [ %.2339, %.thread423 ] ; 6 uses
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %indvars.iv593
  %i.hq = load i32, ptr %i.hp, align 4            ; 2 uses
  %i.hr = load ptr, ptr %i.gh, align 8
  %i.hs = sext i32 %i.hq to i64
  %i.ht = getelementptr inbounds [8 x i8], ptr %i.hr, i64 %i.hs
  %i.hu = load ptr, ptr %i.ht, align 8            ; 6 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 8 ; 6 uses
  %i.hw = load ptr, ptr %i.hv, align 8            ; 4 uses
  %.not388 = icmp eq ptr %i.hw, null              ; 2 uses
  %spec.select400 = select i1 %.not388, ptr @.str.16, ptr %i.hw ; 4 uses
  %i.hx = add nsw i32 %i.hq, 1                    ; 2 uses
  br i1 %or.cond5, label %2, label %bb.am

2:                                                ; preds = %bb.aj
  br i1 %.not388, label %bb.an, label %bb.ak

bb.ak:                                            ; preds = %2
  %i.hy = call i32 @SDL_strcasecmp(ptr noundef nonnull %.2314, ptr noundef nonnull %i.hw) #8
  %.not390 = icmp eq i32 %i.hy, 0
  br i1 %.not390, label %bb.an, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.hz = load i8, ptr @SDLTest_Color, align 1, !range !27, !noundef !28
  %i.ia = trunc nuw i8 %i.hz to i1                ; 2 uses
  %i.ib = select i1 %i.ia, ptr @.str.18, ptr @.str.11
  %i.ic = select i1 %i.ia, ptr @.str.19, ptr @.str.11
  call void (ptr, ...) @SDLTest_Log(ptr noundef nonnull @.str.21, i32 noundef %i.gb, i32 noundef %i.hx, ptr noundef nonnull %i.hw, ptr noundef nonnull %i.ib, ptr noundef nonnull %i.ic) #8
  br label %.thread423

bb.am:                                            ; preds = %bb.aj
  br i1 %.2317, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %2, %bb.ak, %bb.am
  %i.id = getelementptr inbounds nuw i8, ptr %i.hu, i64 24
  %i.ie = load i32, ptr %i.id, align 8
  %.not391 = icmp eq i32 %i.ie, 0
  br i1 %.not391, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  call void (ptr, ...) @SDLTest_Log(ptr noundef nonnull @.str.22) #8
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %bb.am
  %.2308 = phi i1 [ %.1307510, %bb.an ], [ true, %bb.ao ], [ %.1307510, %bb.am ] ; 5 uses
  %i.if = call i64 @SDL_GetPerformanceCounter() #8
  %i.ig = uitofp i64 %i.if to float
  %i.ih = call i64 @SDL_GetPerformanceFrequency() #8
  %i.ii = uitofp i64 %i.ih to float
  %i.ij = fdiv float %i.ig, %i.ii
  %i.ik = load i8, ptr @SDLTest_Color, align 1, !range !27, !noundef !28
  %i.il = trunc nuw i8 %i.ik to i1                ; 2 uses
  %i.im = select i1 %i.il, ptr @.str.24, ptr @.str.11
  %i.in = select i1 %i.il, ptr @.str.19, ptr @.str.11
  call void (ptr, ...) @SDLTest_Log(ptr noundef nonnull @.str.23, ptr noundef nonnull %i.im, i32 noundef %i.gb, i32 noundef %i.hx, ptr noundef nonnull %spec.select400, ptr noundef nonnull %i.in) #8
  %i.io = getelementptr inbounds nuw i8, ptr %i.hu, i64 16
  %i.ip = load ptr, ptr %i.io, align 8            ; 3 uses
  %.not392 = icmp eq ptr %i.ip, null
  br i1 %.not392, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.iq = load i8, ptr %i.ip, align 1
  %.not393 = icmp eq i8 %i.iq, 0
  br i1 %.not393, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void (ptr, ...) @SDLTest_Log(ptr noundef nonnull @.str.25, ptr noundef nonnull %i.ip) #8
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %bb.ap
  %i.ir = load i32, ptr %i.d, align 8
  %i.is = icmp sgt i32 %i.ir, 0
  br i1 %i.is, label %.lr.ph500, label %._crit_edge501

.lr.ph500:                                        ; preds = %bb.as
  %i.it = getelementptr inbounds nuw i8, ptr %i.hu, i64 24
  br label %bb.at

bb.at:                                            ; preds = %.lr.ph500, %bb.bu
  %.1271498 = phi i32 [ %.0270517, %.lr.ph500 ], [ %.2272, %bb.bu ] ; 3 uses
  %.1274497 = phi i32 [ %.0273516, %.lr.ph500 ], [ %.2275, %bb.bu ] ; 3 uses
  %.1278496 = phi i32 [ %.0277515, %.lr.ph500 ], [ %.2279, %bb.bu ] ; 3 uses
  %.2283495 = phi i32 [ %.1282514, %.lr.ph500 ], [ %.3284, %bb.bu ] ; 3 uses
  %.2287494 = phi i32 [ %.1286513, %.lr.ph500 ], [ %.3288, %bb.bu ] ; 3 uses
  %.2294493 = phi i32 [ %.1293512, %.lr.ph500 ], [ %.3295, %bb.bu ] ; 3 uses
  %.0329492 = phi i32 [ 0, %.lr.ph500 ], [ %i.iu, %bb.bu ]
  %i.iu = add nuw nsw i32 %.0329492, 1            ; 4 uses
  %i.iv = load i64, ptr %i.fc, align 8            ; 2 uses
  %.not394 = icmp eq i64 %i.iv, 0
  br i1 %.not394, label %.thread414, label %bb.au

.thread414:                                       ; preds = %bb.at
  %i.iw = load ptr, ptr %i.fz, align 8
  %i.ix = load ptr, ptr %i.hv, align 8
  %i.iy = call fastcc i64 @SDLTest_GenerateExecKey(ptr noundef %.0328, ptr noundef %i.iw, ptr noundef %i.ix, i32 noundef %i.iu)
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %.thread414
  %.sink = phi i64 [ %i.iy, %.thread414 ], [ %i.iv, %bb.at ] ; 2 uses
  call void (ptr, ...) @SDLTest_Log(ptr noundef nonnull @.str.26, i32 noundef %i.iu, i64 noundef %.sink) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store ptr null, ptr %i.a, align 8
  %i.iz = load ptr, ptr %i.fz, align 8
  %.not.i = icmp eq ptr %i.iz, null
  br i1 %.not.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ja = load ptr, ptr %i.hv, align 8            ; 2 uses
  %.not38.i = icmp eq ptr %i.ja, null
  br i1 %.not38.i, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av, %bb.au
  call void (ptr, ...) @SDLTest_LogError(ptr noundef nonnull @.str.53) #8
  br label %SDLTest_RunTest.exit.thread

bb.ax:                                            ; preds = %bb.av
  %i.jb = load i32, ptr %i.it, align 8
  %.not39.i = icmp ne i32 %i.jb, 0
  %brmerge.i = or i1 %.2308, %.not39.i
  br i1 %brmerge.i, label %bb.ay, label %SDLTest_RunTest.exit.thread420

SDLTest_RunTest.exit.thread420:                   ; preds = %bb.ax
  %i.jc = load i8, ptr @SDLTest_Color, align 1, !range !27, !noundef !28
  %i.jd = trunc nuw i8 %i.jc to i1                ; 2 uses
  %i.je = select i1 %i.jd, ptr @.str.24, ptr @.str.11
  %i.jf = select i1 %i.jd, ptr @.str.19, ptr @.str.11
  call void (i32, ptr, ...) @SDLTest_LogMessage(i32 noundef 4, ptr noundef nonnull @.str.64, ptr noundef nonnull %i.je, ptr noundef nonnull @.str.30, ptr noundef nonnull %i.ja, ptr noundef nonnull %i.jf, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.11) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.bs

bb.ay:                                            ; preds = %bb.ax
  call void @SDLTest_FuzzerInit(i64 noundef %.sink) #8
  call void @SDLTest_ResetAssertSummary() #8
  %i.jg = call i32 @SDL_AddTimer(i32 noundef 3600000, ptr noundef nonnull @SDLTest_BailOut, ptr noundef null) #8 ; 2 uses
  %i.jh = icmp eq i32 %i.jg, 0                    ; 2 uses
  br i1 %i.jh, label %bb.az, label %SDLTest_SetTestTimeout.exit.i

bb.az:                                            ; preds = %bb.ay
  %i.ji = call ptr @SDL_GetError() #8
  call void (ptr, ...) @SDLTest_LogError(ptr noundef nonnull @.str.62, ptr noundef %i.ji) #8
  br label %SDLTest_SetTestTimeout.exit.i

SDLTest_SetTestTimeout.exit.i:                    ; preds = %bb.az, %bb.ay
  %i.jj = load ptr, ptr %i.hn, align 8            ; 2 uses
  %.not40.i = icmp eq ptr %i.jj, null
  br i1 %.not40.i, label %bb.bc, label %bb.ba

bb.ba:                                            ; preds = %SDLTest_SetTestTimeout.exit.i
  call void %i.jj(ptr noundef nonnull %i.a) #8, !inline_history !20
  %i.jk = call i32 @SDLTest_AssertSummaryToTestResult() #8
  %i.jl = icmp eq i32 %i.jk, 1
  br i1 %i.jl, label %bb.bb, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.ba
  %.pre.i = load ptr, ptr %i.a, align 8
  br label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.jm = load ptr, ptr %i.fz, align 8
  %i.jn = load i8, ptr @SDLTest_Color, align 1, !range !27, !noundef !28
  %i.jo = trunc nuw i8 %i.jn to i1                ; 3 uses
  %i.jp = select i1 %i.jo, ptr @.str.33, ptr @.str.11
  %i.jq = select i1 %i.jo, ptr @.str.24, ptr @.str.11
  %i.jr = select i1 %i.jo, ptr @.str.19, ptr @.str.11 ; 2 uses
  call void (i32, ptr, ...) @SDLTest_LogMessage(i32 noundef 6, ptr noundef nonnull @.str.64, ptr noundef nonnull %i.jq, ptr noundef nonnull @.str.55, ptr noundef %i.jm, ptr noundef nonnull %i.jr, ptr noundef nonnull %i.jp, ptr noundef nonnull @.str.34, ptr noundef nonnull %i.jr) #8
  br label %SDLTest_RunTest.exit.thread

bb.bc:                                            ; preds = %._crit_edge.i, %SDLTest_SetTestTimeout.exit.i
  %i.js = phi ptr [ %.pre.i, %._crit_edge.i ], [ null, %SDLTest_SetTestTimeout.exit.i ]
  %i.jt = load ptr, ptr %i.hu, align 8
  %i.ju = call i32 %i.jt(ptr noundef %i.js) #8, !inline_history !20 ; 3 uses
  %i.jv = icmp eq i32 %i.ju, 2                    ; 2 uses
  br i1 %i.jv, label %bb.bf, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %.off.i = add i32 %i.ju, -1
  %switch.i = icmp ult i32 %.off.i, -2
  br i1 %switch.i, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.jw = call i32 @SDLTest_AssertSummaryToTestResult() #8
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd, %bb.bc
  %.0.i401 = phi i32 [ %i.jw, %bb.be ], [ 3, %bb.bc ], [ 1, %bb.bd ] ; 2 uses
  %i.jx = load ptr, ptr %i.ho, align 8            ; 2 uses
  %.not41.i = icmp eq ptr %i.jx, null
  br i1 %.not41.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.jy = load ptr, ptr %i.a, align 8
  call void %i.jx(ptr noundef %i.jy) #8, !inline_history !20
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  br i1 %i.jh, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.jz = call zeroext i1 @SDL_RemoveTimer(i32 noundef %i.jg) #8 ; 0 uses
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %i.ka = call i32 @SDLTest_GetFuzzerInvocationCount() #8 ; 2 uses
  %i.kb = icmp sgt i32 %i.ka, 0
  br i1 %i.kb, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  call void (ptr, ...) @SDLTest_Log(ptr noundef nonnull @.str.56, i32 noundef %i.ka) #8
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  br i1 %i.jv, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.kc = load ptr, ptr %i.hv, align 8
  %i.kd = load i8, ptr @SDLTest_Color, align 1, !range !27, !noundef !28
  %i.ke = trunc nuw i8 %i.kd to i1                ; 3 uses
  %i.kf = select i1 %i.ke, ptr @.str.18, ptr @.str.11
  %i.kg = select i1 %i.ke, ptr @.str.24, ptr @.str.11
  %i.kh = select i1 %i.ke, ptr @.str.19, ptr @.str.11 ; 2 uses
  call void (i32, ptr, ...) @SDLTest_LogMessage(i32 noundef 4, ptr noundef nonnull @.str.64, ptr noundef nonnull %i.kg, ptr noundef nonnull @.str.30, ptr noundef %i.kc, ptr noundef nonnull %i.kh, ptr noundef nonnull %i.kf, ptr noundef nonnull @.str.57, ptr noundef nonnull %i.kh) #8
  br label %SDLTest_RunTest.exit

bb.bn:                                            ; preds = %bb.bl
  switch i32 %i.ju, label %bb.bq [
    i32 0, label %bb.bo
    i32 -1, label %bb.bp
  ]

bb.bo:                                            ; preds = %bb.bn
  %i.ki = load ptr, ptr %i.hv, align 8
  %i.kj = load i8, ptr @SDLTest_Color, align 1, !range !27, !noundef !28
  %i.kk = trunc nuw i8 %i.kj to i1                ; 3 uses
  %i.kl = select i1 %i.kk, ptr @.str.33, ptr @.str.11
end_hunk_0
