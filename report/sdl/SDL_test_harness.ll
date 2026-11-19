Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_test_harness?download=true
inline.NumInlined: 25
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@SDLTest_GenerateRunSeed:bb.a
  br label %bb.f

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next, %.preheader ] ; 2 uses
  %i.d = call i32 @SDL_rand_r(ptr noundef nonnull %i.a, i32 noundef 36) #8 ; 2 uses
  %i.e = icmp slt i32 %i.d, 10
  %i.f = trunc i32 %i.d to i8
  %.0.v = select i1 %i.e, i8 48, i8 55
  %.0 = add i8 %.0.v, %i.f
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  store i8 %.0, ptr %i.g, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.e, label %.preheader, !llvm.loop !5

bb.e:                                             ; preds = %.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %wide.trip.count
  store i8 0, ptr %i.h, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.015 = phi ptr [ null, %bb.d ], [ %0, %bb.e ], [ null, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret ptr %.015
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i64 @SDL_GetPerformanceCounter() local_unnamed_addr #2

declare void @SDLTest_LogError(ptr noundef, ...) local_unnamed_addr #2

declare i32 @SDL_rand_r(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 3) i32 @SDLTest_ExecuteTestSuiteRunner(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = alloca i64, align 8                      ; 19 uses
  %i.c = alloca [17 x i8], align 16               ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.e = load i32, ptr %i.d, align 8
  %i.f = icmp slt i32 %i.e, 1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %i.d, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %.preheader.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load i8, ptr %i.h, align 1
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %.preheader.i, label %bb.e

.preheader.i:                                     ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.k = tail call i64 @SDL_GetPerformanceCounter() #8
  store i64 %i.k, ptr %i.b, align 8
  %i.l = call i32 @SDL_rand_r(ptr noundef nonnull %i.b, i32 noundef 36) #8 ; 2 uses
  %i.m = icmp slt i32 %i.l, 10
  %i.n = trunc i32 %i.l to i8
  %.0.v.i = select i1 %i.m, i8 48, i8 55
  %.0.i = add i8 %.0.v.i, %i.n
  store i8 %.0.i, ptr %i.c, align 16
  %i.o = call i32 @SDL_rand_r(ptr noundef nonnull %i.b, i32 noundef 36) #8 ; 2 uses
  %i.p = icmp slt i32 %i.o, 10
  %i.q = trunc i32 %i.o to i8
  %.0.v.i.1 = select i1 %i.p, i8 48, i8 55
  %.0.i.1 = add i8 %.0.v.i.1, %i.q
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %.0.i.1, ptr %i.r, align 1
  %i.s = call i32 @SDL_rand_r(ptr noundef nonnull %i.b, i32 noundef 36) #8 ; 2 uses
  %i.t = icmp slt i32 %i.s, 10
  %i.u = trunc i32 %i.s to i8
  %.0.v.i.2 = select i1 %i.t, i8 48, i8 55
  %.0.i.2 = add i8 %.0.v.i.2, %i.u
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i8 %.0.i.2, ptr %i.v, align 2
  %i.w = call i32 @SDL_rand_r(ptr noundef nonnull %i.b, i32 noundef 36) #8 ; 2 uses
  %i.x = icmp slt i32 %i.w, 10
  %i.y = trunc i32 %i.w to i8
  %.0.v.i.3 = select i1 %i.x, i8 48, i8 55
  %.0.i.3 = add i8 %.0.v.i.3, %i.y
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  store i8 %.0.i.3, ptr %i.z, align 1
  %i.aa = call i32 @SDL_rand_r(ptr noundef nonnull %i.b, i32 noundef 36) #8 ; 2 uses
  %i.ab = icmp slt i32 %i.aa, 10
  %i.ac = trunc i32 %i.aa to i8
  %.0.v.i.4 = select i1 %i.ab, i8 48, i8 55
  %.0.i.4 = add i8 %.0.v.i.4, %i.ac
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i8 %.0.i.4, ptr %i.ad, align 4
  %i.ae = call i32 @SDL_rand_r(ptr noundef nonnull %i.b, i32 noundef 36) #8 ; 2 uses
  %i.af = icmp slt i32 %i.ae, 10
  %i.ag = trunc i32 %i.ae to i8
  %.0.v.i.5 = select i1 %i.af, i8 48, i8 55
  %.0.i.5 = add i8 %.0.v.i.5, %i.ag
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 5
  store i8 %.0.i.5, ptr %i.ah, align 1
  %i.ai = call i32 @SDL_rand_r(ptr noundef nonnull %i.b, i32 noundef 36) #8 ; 2 uses
  %i.aj = icmp slt i32 %i.ai, 10
  %i.ak = trunc i32 %i.ai to i8
  %.0.v.i.6 = select i1 %i.aj, i8 48, i8 55
  %.0.i.6 = add i8 %.0.v.i.6, %i.ak
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 6
  store i8 %.0.i.6, ptr %i.al, align 2
  %i.am = call i32 @SDL_rand_r(ptr noundef nonnull %i.b, i32 noundef 36) #8 ; 2 uses
  %i.an = icmp slt i32 %i.am, 10
  %i.ao = trunc i32 %i.am to i8
  %.0.v.i.7 = select i1 %i.an, i8 48, i8 55
  %.0.i.7 = add i8 %.0.v.i.7, %i.ao
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 7
  store i8 %.0.i.7, ptr %i.ap, align 1
  %i.aq = call i32 @SDL_rand_r(ptr noundef nonnull %i.b, i32 noundef 36) #8 ; 2 uses
  %i.ar = icmp slt i32 %i.aq, 10
  %i.as = trunc i32 %i.aq to i8
  %.0.v.i.8 = select i1 %i.ar, i8 48, i8 55
  %.0.i.8 = add i8 %.0.v.i.8, %i.as
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i8 %.0.i.8, ptr %i.at, align 8
  %i.au = call i32 @SDL_rand_r(ptr noundef nonnull %i.b, i32 noundef 36) #8 ; 2 uses
  %i.av = icmp slt i32 %i.au, 10
  %i.aw = trunc i32 %i.au to i8
  %.0.v.i.9 = select i1 %i.av, i8 48, i8 55
  %.0.i.9 = add i8 %.0.v.i.9, %i.aw
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 9
  store i8 %.0.i.9, ptr %i.ax, align 1
  %i.ay = call i32 @SDL_rand_r(ptr noundef nonnull %i.b, i32 noundef 36) #8 ; 2 uses
  %i.az = icmp slt i32 %i.ay, 10
  %i.ba = trunc i32 %i.ay to i8
  %.0.v.i.10 = select i1 %i.az, i8 48, i8 55
  %.0.i.10 = add i8 %.0.v.i.10, %i.ba
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 10
  store i8 %.0.i.10, ptr %i.bb, align 2
  %i.bc = call i32 @SDL_rand_r(ptr noundef nonnull %i.b, i32 noundef 36) #8 ; 2 uses
  %i.bd = icmp slt i32 %i.bc, 10
  %i.be = trunc i32 %i.bc to i8
  %.0.v.i.11 = select i1 %i.bd, i8 48, i8 55
  %.0.i.11 = add i8 %.0.v.i.11, %i.be
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 11
  store i8 %.0.i.11, ptr %i.bf, align 1
  %i.bg = call i32 @SDL_rand_r(ptr noundef nonnull %i.b, i32 noundef 36) #8 ; 2 uses
  %i.bh = icmp slt i32 %i.bg, 10
  %i.bi = trunc i32 %i.bg to i8
  %.0.v.i.12 = select i1 %i.bh, i8 48, i8 55
  %.0.i.12 = add i8 %.0.v.i.12, %i.bi
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i8 %.0.i.12, ptr %i.bj, align 4
  %i.bk = call i32 @SDL_rand_r(ptr noundef nonnull %i.b, i32 noundef 36) #8 ; 2 uses
  %i.bl = icmp slt i32 %i.bk, 10
  %i.bm = trunc i32 %i.bk to i8
  %.0.v.i.13 = select i1 %i.bl, i8 48, i8 55
  %.0.i.13 = add i8 %.0.v.i.13, %i.bm
  %i.bn = getelementptr inbounds nuw i8, ptr %i.c, i64 13
  store i8 %.0.i.13, ptr %i.bn, align 1
  %i.bo = call i32 @SDL_rand_r(ptr noundef nonnull %i.b, i32 noundef 36) #8 ; 2 uses
  %i.bp = icmp slt i32 %i.bo, 10
  %i.bq = trunc i32 %i.bo to i8
  %.0.v.i.14 = select i1 %i.bp, i8 48, i8 55
  %.0.i.14 = add i8 %.0.v.i.14, %i.bq
  %i.br = getelementptr inbounds nuw i8, ptr %i.c, i64 14
  store i8 %.0.i.14, ptr %i.br, align 2
  %i.bs = call i32 @SDL_rand_r(ptr noundef nonnull %i.b, i32 noundef 36) #8 ; 2 uses
  %i.bt = icmp slt i32 %i.bs, 10
  %i.bu = trunc i32 %i.bs to i8
  %.0.v.i.15 = select i1 %i.bt, i8 48, i8 55
  %.0.i.15 = add i8 %.0.v.i.15, %i.bu
  %i.bv = getelementptr inbounds nuw i8, ptr %i.c, i64 15
  store i8 %.0.i.15, ptr %i.bv, align 1
  %i.bw = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i8 0, ptr %i.bw, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %bb.e

bb.e:                                             ; preds = %.preheader.i, %bb.d
  %.0328 = phi ptr [ %i.c, %.preheader.i ], [ %i.h, %bb.d ] ; 6 uses
  %i.bx = call i64 @SDL_GetPerformanceCounter() #8
  %i.by = uitofp i64 %i.bx to float
  %i.bz = call i64 @SDL_GetPerformanceFrequency() #8
  %i.ca = uitofp i64 %i.bz to float
  %i.cb = fdiv float %i.by, %i.ca
  call void (ptr, ...) @SDLTest_Log(ptr noundef nonnull @.str.3, ptr noundef nonnull %.0328) #8
  %i.cc = load ptr, ptr %0, align 8               ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8            ; 2 uses
  %.not372458 = icmp eq ptr %i.cd, null
  br i1 %.not372458, label %._crit_edge.thread, label %.lr.ph461

.loopexit439:                                     ; preds = %.lr.ph, %.lr.ph461
  %.1343.lcssa = phi i32 [ %.0342459, %.lr.ph461 ], [ %i.cj, %.lr.ph ] ; 3 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %indvars.iv.next561
  %i.cf = load ptr, ptr %i.ce, align 8            ; 2 uses
  %.not372 = icmp eq ptr %i.cf, null
  br i1 %.not372, label %._crit_edge, label %.lr.ph461, !llvm.loop !6

.lr.ph461:                                        ; preds = %bb.e, %.loopexit439
  %indvars.iv560 = phi i64 [ %indvars.iv.next561, %.loopexit439 ], [ 0, %bb.e ]
  %1 = phi ptr [ %i.cf, %.loopexit439 ], [ %i.cd, %bb.e ]
  %.0342459 = phi i32 [ %.1343.lcssa, %.loopexit439 ], [ 0, %bb.e ] ; 2 uses
  %indvars.iv.next561 = add nuw nsw i64 %indvars.iv560, 1 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8            ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8
  %.not399455 = icmp eq ptr %i.ci, null
  br i1 %.not399455, label %.loopexit439, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph461, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.lr.ph461 ]
  %.1343456 = phi i32 [ %i.cj, %.lr.ph ], [ %.0342459, %.lr.ph461 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cj = add nsw i32 %.1343456, 1                ; 2 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %indvars.iv.next
  %i.cl = load ptr, ptr %i.ck, align 8
  %.not399 = icmp eq ptr %i.cl, null
  br i1 %.not399, label %.loopexit439, label %.lr.ph, !llvm.loop !7

._crit_edge:                                      ; preds = %.loopexit439
  %i.cm = icmp eq i32 %.1343.lcssa, 0
  br i1 %i.cm, label %._crit_edge.thread, label %bb.f

._crit_edge.thread:                               ; preds = %bb.e, %._crit_edge
  call void (ptr, ...) @SDLTest_LogError(ptr noundef nonnull @.str.4) #8
  br label %bb.ck

bb.f:                                             ; preds = %._crit_edge
  %i.cn = sext i32 %.1343.lcssa to i64
  %i.co = shl nsw i64 %i.cn, 3
  %i.cp = call noalias ptr @SDL_malloc(i64 noundef %i.co) #8 ; 7 uses
  %.not373 = icmp eq ptr %i.cp, null
  br i1 %.not373, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void (ptr, ...) @SDLTest_LogError(ptr noundef nonnull @.str.5) #8
  br label %bb.ck

bb.h:                                             ; preds = %bb.f
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.cr = load ptr, ptr %i.cq, align 8            ; 2 uses
  %.not374 = icmp eq ptr %i.cr, null
  br i1 %.not374, label %bb.q, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cs = load i8, ptr %i.cr, align 1
  %.not375 = icmp eq i8 %i.cs, 0
  br i1 %.not375, label %bb.q, label %.preheader438

.preheader438:                                    ; preds = %bb.i
  %i.ct = load ptr, ptr %0, align 8
  %i.cu = load ptr, ptr %i.ct, align 8            ; 2 uses
  %.not545 = icmp eq ptr %i.cu, null
  br i1 %.not545, label %._crit_edge472, label %.lr.ph471

.lr.ph471:                                        ; preds = %.preheader438, %.loopexit437
  %indvars.iv566 = phi i64 [ %indvars.iv.next567, %.loopexit437 ], [ 0, %.preheader438 ]
  %2 = phi ptr [ %i.dp, %.loopexit437 ], [ %i.cu, %.preheader438 ] ; 4 uses
  %indvars.iv.next567 = add nuw nsw i64 %indvars.iv566, 1 ; 2 uses
  %i.cv = load ptr, ptr %2, align 8               ; 2 uses
  %.not376 = icmp eq ptr %i.cv, null
  br i1 %.not376, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph471
  %i.cw = load ptr, ptr %i.cq, align 8
  %i.cx = call i32 @SDL_strcasecmp(ptr noundef %i.cw, ptr noundef nonnull %i.cv) #8
  %i.cy = icmp eq i32 %i.cx, 0
  br i1 %i.cy, label %.thread, label %bb.k

.thread:                                          ; preds = %bb.j
  %i.cz = load ptr, ptr %2, align 8               ; 2 uses
  call void (ptr, ...) @SDLTest_Log(ptr noundef nonnull @.str.6, ptr noundef %i.cz) #8
  br label %bb.p

bb.k:                                             ; preds = %bb.j, %.lr.ph471
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8            ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8            ; 2 uses
  %.not663 = icmp eq ptr %i.dc, null
  br i1 %.not663, label %.loopexit437, label %.lr.ph466.split

.lr.ph466.split:                                  ; preds = %bb.k, %bb.m
  %i.dd = phi ptr [ %i.dk, %bb.m ], [ %i.db, %bb.k ]
  %indvars.iv563 = phi i64 [ %indvars.iv.next564, %bb.m ], [ 0, %bb.k ]
  %3 = phi ptr [ %i.dm, %bb.m ], [ %i.dc, %bb.k ] ; 2 uses
  %indvars.iv.next564 = add nuw nsw i64 %indvars.iv563, 1 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.df = load ptr, ptr %i.de, align 8            ; 2 uses
  %.not377 = icmp eq ptr %i.df, null
  br i1 %.not377, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph466.split
  %i.dg = load ptr, ptr %i.cq, align 8
  %i.dh = call i32 @SDL_strcasecmp(ptr noundef %i.dg, ptr noundef nonnull %i.df) #8
  %i.di = icmp eq i32 %i.dh, 0
  br i1 %i.di, label %._crit_edge472.thread, label %._crit_edge609

._crit_edge609:                                   ; preds = %bb.l
  %.pre610 = load ptr, ptr %i.da, align 8
  br label %bb.m

._crit_edge472.thread:                            ; preds = %bb.l
  %i.dj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre608 = load ptr, ptr %i.dj, align 8         ; 2 uses
  %.pre = load ptr, ptr %2, align 8               ; 2 uses
  call void (ptr, ...) @SDLTest_Log(ptr noundef nonnull @.str.7, ptr noundef %.pre608, ptr noundef %.pre) #8
  br label %bb.p

bb.m:                                             ; preds = %._crit_edge609, %.lr.ph466.split
  %i.dk = phi ptr [ %.pre610, %._crit_edge609 ], [ %i.dd, %.lr.ph466.split ] ; 2 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %indvars.iv.next564
  %i.dm = load ptr, ptr %i.dl, align 8            ; 2 uses
  %.not546 = icmp eq ptr %i.dm, null
  br i1 %.not546, label %.loopexit437, label %.lr.ph466.split, !llvm.loop !8

.loopexit437:                                     ; preds = %bb.m, %bb.k
  %i.dn = load ptr, ptr %0, align 8
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %indvars.iv.next567
  %i.dp = load ptr, ptr %i.do, align 8            ; 2 uses
  %.not664 = icmp eq ptr %i.dp, null
  br i1 %.not664, label %._crit_edge472, label %.lr.ph471, !llvm.loop !9

._crit_edge472:                                   ; preds = %.loopexit437, %.preheader438
  %i.dq = load ptr, ptr %i.cq, align 8
  call void (ptr, ...) @SDLTest_LogError(ptr noundef nonnull @.str.8, ptr noundef %i.dq) #8
  %i.dr = load ptr, ptr %0, align 8
  %i.ds = load ptr, ptr %i.dr, align 8            ; 2 uses
  %.not395482 = icmp eq ptr %i.ds, null
  br i1 %.not395482, label %._crit_edge486, label %.lr.ph485

.lr.ph485:                                        ; preds = %._crit_edge472, %._crit_edge481
  %indvars.iv572.a = phi i64 [ %indvars.iv.next573.a, %._crit_edge481 ], [ 0, %._crit_edge472 ]
  %i.dt = phi ptr [ %i.ej, %._crit_edge481 ], [ %i.ds, %._crit_edge472 ] ; 2 uses
  %i.du = load ptr, ptr %i.dt, align 8            ; 2 uses
  %.not396 = icmp eq ptr %i.du, null
  br i1 %.not396, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph485
  call void (ptr, ...) @SDLTest_Log(ptr noundef nonnull @.str.9, ptr noundef nonnull %i.du) #8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph485
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 16 ; 2 uses
  %i.dw = load ptr, ptr %i.dv, align 8
  %i.dx = load ptr, ptr %i.dw, align 8            ; 2 uses
  %.not397477 = icmp eq ptr %i.dx, null
  br i1 %.not397477, label %._crit_edge481, label %.lr.ph480

.lr.ph480:                                        ; preds = %bb.o, %.lr.ph480
  %indvars.iv569.a = phi i64 [ %indvars.iv.next570.a, %.lr.ph480 ], [ 0, %bb.o ]
  %i.dy = phi ptr [ %i.eg, %.lr.ph480 ], [ %i.dx, %bb.o ] ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 24
  %i.ec = load i32, ptr %i.eb, align 8
  %.not398 = icmp eq i32 %i.ec, 0
  %i.ed = select i1 %.not398, ptr @.str.12, ptr @.str.11
  call void (ptr, ...) @SDLTest_Log(ptr noundef nonnull @.str.10, ptr noundef %i.ea, ptr noundef nonnull %i.ed) #8
  %indvars.iv.next570.a = add nuw nsw i64 %indvars.iv569.a, 1 ; 2 uses
  %i.ee = load ptr, ptr %i.dv, align 8
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %indvars.iv.next570.a
  %i.eg = load ptr, ptr %i.ef, align 8            ; 2 uses
  %.not397 = icmp eq ptr %i.eg, null
  br i1 %.not397, label %._crit_edge481, label %.lr.ph480, !llvm.loop !10

._crit_edge481:                                   ; preds = %.lr.ph480, %bb.o
  %indvars.iv.next573.a = add nuw nsw i64 %indvars.iv572.a, 1 ; 2 uses
  %i.eh = load ptr, ptr %0, align 8
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %indvars.iv.next573.a
  %i.ej = load ptr, ptr %i.ei, align 8            ; 2 uses
  %.not395 = icmp eq ptr %i.ej, null
  br i1 %.not395, label %._crit_edge486, label %.lr.ph485, !llvm.loop !11

._crit_edge486:                                   ; preds = %._crit_edge481, %._crit_edge472
  call void (ptr, ...) @SDLTest_Log(ptr noundef nonnull @.str.13) #8
  call void @SDL_free(ptr noundef nonnull %i.cp) #8
  br label %bb.ck

bb.p:                                             ; preds = %._crit_edge472.thread, %.thread
  %i.ek = phi i1 [ false, %.thread ], [ true, %._crit_edge472.thread ]
  %.0312450 = phi ptr [ null, %.thread ], [ %.pre608, %._crit_edge472.thread ]
  %.2320413 = phi ptr [ %i.cz, %.thread ], [ %.pre, %._crit_edge472.thread ]
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 0, ptr %i.el, align 4
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.i, %bb.h
  %.3325 = phi i1 [ false, %bb.p ], [ true, %bb.i ], [ true, %bb.h ]
  %.3321 = phi ptr [ %.2320413, %bb.p ], [ null, %bb.i ], [ null, %bb.h ] ; 2 uses
  %.2317 = phi i1 [ %i.ek, %bb.p ], [ false, %bb.i ], [ false, %bb.h ] ; 2 uses
  %.2314 = phi ptr [ %.0312450, %bb.p ], [ null, %bb.i ], [ null, %bb.h ] ; 2 uses
  %i.em = load ptr, ptr %0, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %bb.q
  %indvars.iv581 = phi i32 [ %indvars.iv.next582, %bb.r ], [ 0, %bb.q ] ; 4 uses
  %indvars.iv575 = phi i64 [ %indvars.iv.next576, %bb.r ], [ 0, %bb.q ] ; 5 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %indvars.iv575
  %i.eo = load ptr, ptr %i.en, align 8
  %.not378 = icmp eq ptr %i.eo, null
  %indvars.iv.next576 = add nuw nsw i64 %indvars.iv575, 1
  %indvars.iv.next582 = add nuw i32 %indvars.iv581, 1
  br i1 %.not378, label %bb.s, label %bb.r, !llvm.loop !12

bb.s:                                             ; preds = %bb.r
  %i.ep = trunc nuw nsw i64 %indvars.iv575 to i32
  %i.eq = shl nuw nsw i64 %indvars.iv575, 2
  %i.er = call noalias ptr @SDL_malloc(i64 noundef %i.eq) #8 ; 8 uses
  %.not379 = icmp eq ptr %i.er, null
  br i1 %.not379, label %bb.t, label %.preheader436

.preheader436:                                    ; preds = %bb.s
  %.not547 = icmp eq i64 %indvars.iv575, 0        ; 2 uses
  br i1 %.not547, label %._crit_edge489, label %.lr.ph488.preheader

.lr.ph488.preheader:                              ; preds = %.preheader436
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
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %index ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  store <4 x i32> %vec.ind, ptr %i.es, align 4
  store <4 x i32> %step.add, ptr %i.et, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.eu = icmp eq i64 %index.next, %n.vec
  br i1 %i.eu, label %middle.block, label %vector.body, !llvm.loop !13

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge489, label %.lr.ph488.preheader684

.lr.ph488.preheader684:                           ; preds = %.lr.ph488.preheader, %middle.block
  %indvars.iv578.ph = phi i64 [ 0, %.lr.ph488.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph488

bb.t:                                             ; preds = %bb.s
  call void @SDL_free(ptr noundef nonnull %i.cp) #8
  %i.ev = call zeroext i1 @SDL_OutOfMemory() #8
  %i.ew = zext i1 %i.ev to i32
  br label %bb.ck

.lr.ph488:                                        ; preds = %.lr.ph488.preheader684, %.lr.ph488
  %indvars.iv578 = phi i64 [ %indvars.iv.next579, %.lr.ph488 ], [ %indvars.iv578.ph, %.lr.ph488.preheader684 ] ; 3 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %indvars.iv578
  %i.ey = trunc nuw nsw i64 %indvars.iv578 to i32
  store i32 %i.ey, ptr %i.ex, align 4
  %indvars.iv.next579 = add nuw nsw i64 %indvars.iv578, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next579, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge489, label %.lr.ph488, !llvm.loop !14

._crit_edge489:                                   ; preds = %.lr.ph488, %middle.block, %.preheader436
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.fa = load i64, ptr %i.ez, align 8            ; 2 uses
  %.not380 = icmp eq i64 %i.fa, 0
  br i1 %.not380, label %bb.u, label %bb.v

bb.u:                                             ; preds = %._crit_edge489
  %i.fb = call fastcc i64 @SDLTest_GenerateExecKey(ptr noundef %.0328, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef 1)
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge489, %bb.u
  %.0326 = phi i64 [ %i.fb, %bb.u ], [ %i.fa, %._crit_edge489 ]
  call void @SDLTest_FuzzerInit(i64 noundef %.0326) #8
  %i.fc = add nsw i32 %i.ep, -2                   ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  br label %bb.w

.preheader435:                                    ; preds = %bb.y
  br i1 %.not547, label %._crit_edge539, label %.lr.ph538

.lr.ph538:                                        ; preds = %.preheader435
  %i.fe = icmp eq ptr %.3321, null
  %or.cond3 = or i1 %.3325, %i.fe
  %i.ff = icmp eq ptr %.2314, null
  %not..2317 = xor i1 %.2317, true
  %or.cond5 = or i1 %i.ff, %not..2317
  %wide.trip.count601 = zext i32 %indvars.iv581 to i64
  br label %bb.z

bb.w:                                             ; preds = %bb.v, %bb.y
  %i.fg = phi i32 [ 99, %bb.v ], [ %i.fr, %bb.y ] ; 2 uses
  %i.fh = call i32 @SDLTest_RandomIntegerInRange(i32 noundef 0, i32 noundef %i.fc) #8
  %i.fi = call i32 @SDLTest_RandomIntegerInRange(i32 noundef 0, i32 noundef %i.fc) #8
  %i.fj = load i8, ptr %i.fd, align 4, !range !27, !noundef !28
  %i.fk = trunc nuw i8 %i.fj to i1
  br i1 %i.fk, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.fl = sext i32 %i.fi to i64
  %i.fm = getelementptr inbounds [4 x i8], ptr %i.er, i64 %i.fl ; 2 uses
  %i.fn = load i32, ptr %i.fm, align 4
  %i.fo = sext i32 %i.fh to i64
  %i.fp = getelementptr inbounds [4 x i8], ptr %i.er, i64 %i.fo ; 2 uses
  %i.fq = load i32, ptr %i.fp, align 4
  store i32 %i.fq, ptr %i.fm, align 4
  store i32 %i.fn, ptr %i.fp, align 4
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.fr = add nsw i32 %i.fg, -1
  %.not381 = icmp eq i32 %i.fg, 0
  br i1 %.not381, label %.preheader435, label %bb.w, !llvm.loop !15

bb.z:                                             ; preds = %.lr.ph538, %bb.ce
  %indvars.iv598 = phi i64 [ 0, %.lr.ph538 ], [ %indvars.iv.next599, %bb.ce ] ; 2 uses
  %.0281536 = phi i32 [ 0, %.lr.ph538 ], [ %.6, %bb.ce ] ; 3 uses
  %.0285535 = phi i32 [ 0, %.lr.ph538 ], [ %.6291, %bb.ce ] ; 3 uses
  %.0292534 = phi i32 [ 0, %.lr.ph538 ], [ %.6298, %bb.ce ] ; 3 uses
end_hunk_0
