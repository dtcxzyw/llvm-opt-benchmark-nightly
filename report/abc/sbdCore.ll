Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/sbdCore?download=true
inline.NumInlined: 748
inline.NumDeleted: 109
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 47
begin_hunk_0_@Sbd_ManExploreCut:Abc_Clock.exit
  %i.xp = load ptr, ptr %i.f, align 8, !tbaa !82
  %i.xq = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.xr = load ptr, ptr %i.xq, align 8, !tbaa !99
  %i.xs = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.xt = load ptr, ptr %i.xs, align 8, !tbaa !80
  %i.xu = load ptr, ptr %i.ef, align 8, !tbaa !83
  %i.xv = load i32, ptr %4, align 4, !tbaa !14
  %i.xw = call i32 @Sbd_ProblemSolve(ptr noundef %i.xk, ptr noundef %i.xm, i32 noundef %1, ptr noundef %i.xo, ptr noundef %i.xp, ptr noundef %i.xr, ptr noundef %i.xt, ptr noundef %i.xu, i32 noundef %i.xv, ptr noundef nonnull %5) #33 ; 2 uses
  %i.xx = call fastcc i64 @Abc_Clock()
  %i.xy = sub i64 %i.xx, %i.xi
  %i.xz = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.ya = load i64, ptr %i.xz, align 8, !tbaa !113
  %i.yb = add nsw i64 %i.xy, %i.ya
  store i64 %i.yb, ptr %i.xz, align 8, !tbaa !113
  %.not493 = icmp eq i32 %i.xw, 0
  br i1 %.not493, label %.loopexit585, label %bb.bk

bb.bk:                                            ; preds = %._crit_edge727
  %i.yc = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.yd = load i32, ptr %i.yc, align 8, !tbaa !14
  %i.ye = add nsw i32 %i.yd, 1
  store i32 %i.ye, ptr %i.yc, align 8, !tbaa !14
  br label %.loopexit585

.loopexit585:                                     ; preds = %bb.q, %.thread559, %bb.bk, %._crit_edge727, %._crit_edge685, %bb.ax, %.thread552, %._crit_edge649, %.critedge3.thread, %.critedge3, %bb.ah, %._crit_edge603
  %.5468 = phi i32 [ %i.rw, %._crit_edge685 ], [ 0, %.thread559 ], [ 1, %._crit_edge603 ], [ 0, %.critedge3 ], [ 0, %.critedge3.thread ], [ %i.lo, %._crit_edge649 ], [ 0, %.thread552 ], [ 0, %bb.ax ], [ 0, %bb.ah ], [ %i.xw, %bb.bk ], [ 0, %._crit_edge727 ], [ 0, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret i32 %.5468
}

declare i32 @Sbd_ProblemSolve(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @Sbd_ManExplore3(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef captures(none) %2, ptr noundef %3) local_unnamed_addr #2 {
bb.a:
  %4 = alloca %struct.timespec, align 8           ; 5 uses
  %5 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca [10 x i32], align 16              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !81
  %i.e = getelementptr i8, ptr %i.d, i64 4
  %.val44 = load i32, ptr %i.e, align 4, !tbaa !47
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !99
  %i.h = getelementptr i8, ptr %i.g, i64 4
  %.val43 = load i32, ptr %i.h, align 4, !tbaa !47
  %i.i = add nsw i32 %.val43, %.val44
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !80
  %i.l = getelementptr i8, ptr %i.k, i64 4
  %.val = load i32, ptr %i.l, align 4, !tbaa !47
  %i.m = add nsw i32 %i.i, %.val
  store i32 %i.m, ptr %i.a, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  %i.n = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %5) #33
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %Abc_Clock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = load i64, ptr %5, align 8, !tbaa !56
  %.neg47 = mul i64 %i.p, -1000000
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !57
  %.neg = sdiv i64 %i.r, -1000
  %.neg48 = add i64 %.neg, %.neg47
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.a, %bb.b
  %.0.i.neg = phi i64 [ %.neg48, %bb.b ], [ 1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !100
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !65
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !70
  %i.y = load ptr, ptr %i.c, align 8, !tbaa !81
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !82
  %i.ab = load ptr, ptr %i.f, align 8, !tbaa !99
  %i.ac = load ptr, ptr %i.j, align 8, !tbaa !80
  %i.ad = call ptr @Sbd_ManSatSolver(ptr noundef %i.t, ptr noundef %i.v, ptr noundef %i.x, i32 noundef %1, ptr noundef %i.y, ptr noundef %i.aa, ptr noundef %i.ab, ptr noundef %i.ac, i32 noundef 0) #33
  store ptr %i.ad, ptr %i.s, align 8, !tbaa !100
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  %i.ae = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %4) #33
  %i.af = icmp slt i32 %i.ae, 0
  br i1 %i.af, label %Abc_Clock.exit46, label %bb.c

bb.c:                                             ; preds = %Abc_Clock.exit
  %i.ag = load i64, ptr %4, align 8, !tbaa !56
  %i.ah = mul nsw i64 %i.ag, 1000000
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !57
  %i.ak = sdiv i64 %i.aj, 1000
  %i.al = add nsw i64 %i.ak, %i.ah
  br label %Abc_Clock.exit46

Abc_Clock.exit46:                                 ; preds = %Abc_Clock.exit, %bb.c
  %.0.i45 = phi i64 [ %i.al, %bb.c ], [ -1, %Abc_Clock.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  %i.am = add i64 %.0.i45, %.0.i.neg
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !101
  %i.ap = add nsw i64 %i.am, %i.ao
  store i64 %i.ap, ptr %i.an, align 8, !tbaa !101
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !92 ; 2 uses
  %.not = icmp eq ptr %i.ar, null
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %Abc_Clock.exit46
  %i.as = call i32 @Sbd_ManCutServerFirst(ptr noundef nonnull %i.ar, i32 noundef %1, ptr noundef nonnull %i.b) #33 ; 2 uses
  %i.at = icmp eq i32 %i.as, -1
  br i1 %i.at, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.au = call i32 @Sbd_ManExploreCut(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %i.as, ptr noundef nonnull %i.b, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %i.a)
  %.not42 = icmp ne i32 %i.au, 0
  %. = zext i1 %.not42 to i32
  br label %.loopexit

bb.f:                                             ; preds = %Abc_Clock.exit46
  %i.av = load ptr, ptr %0, align 8, !tbaa !64    ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !68 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !90
  %.not40.not50 = icmp slt i32 %i.aw, %i.ay
  br i1 %.not40.not50, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 216
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.i
  %.051.in = phi i32 [ %i.aw, %.lr.ph ], [ %.051, %bb.i ]
  %.051 = add nsw i32 %.051.in, 1                 ; 3 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !93
  %i.bb = call i32 @Sbd_StoObjBestCut(ptr noundef %i.ba, i32 noundef %1, i32 noundef %.051, ptr noundef nonnull %i.b) #33 ; 2 uses
  %i.bc = icmp eq i32 %i.bb, -1
  br i1 %i.bc, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bd = call i32 @Sbd_ManExploreCut(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %i.bb, ptr noundef nonnull %i.b, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %i.a)
  %.not41 = icmp eq i32 %i.bd, 0
  br i1 %.not41, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.be = load ptr, ptr %0, align 8, !tbaa !64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !90
  %.not40.not = icmp slt i32 %.051, %i.bg
  br i1 %.not40.not, label %bb.g, label %.loopexit, !llvm.loop !344

.loopexit:                                        ; preds = %bb.h, %bb.i, %bb.f, %bb.e, %bb.d
  %.036 = phi i32 [ 0, %bb.d ], [ %., %bb.e ], [ 0, %bb.f ], [ 1, %bb.h ], [ 0, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret i32 %.036
}

declare i32 @Sbd_ManCutServerFirst(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare i32 @Sbd_StoObjBestCut(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define i32 @Sbd_CutMergeSimple(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(address) %2, ptr noundef %3) local_unnamed_addr #14 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.e = load i32, ptr %1, align 4, !tbaa !14     ; 2 uses
  %i.f = sext i32 %i.e to i64
  %.idx = shl nsw i64 %i.f, 2                     ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %i.c, i64 %.idx ; 3 uses
  %i.h = load i32, ptr %2, align 4, !tbaa !14     ; 2 uses
  %i.i = sext i32 %i.h to i64
  %.idx57 = shl nsw i64 %i.i, 2                   ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %i.d, i64 %.idx57 ; 3 uses
  %.03643 = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.k = icmp sgt i32 %i.e, 0
  %i.l = icmp sgt i32 %i.h, 0
  %i.m = select i1 %i.k, i1 %i.l, i1 false
  br i1 %i.m, label %.lr.ph, label %.preheader42

.preheader42:                                     ; preds = %bb.f, %bb.a
  %.033.lcssa = phi ptr [ %i.c, %bb.a ], [ %.134, %bb.f ] ; 5 uses
  %.0.lcssa = phi ptr [ %i.d, %bb.a ], [ %.1, %bb.f ] ; 5 uses
  %.036.lcssa = phi ptr [ %.03643, %bb.a ], [ %.036, %bb.f ] ; 5 uses
  %.0.lcssa79 = ptrtoaddr ptr %.0.lcssa to i64    ; 2 uses
  %i.n = icmp ult ptr %.033.lcssa, %i.g
  br i1 %i.n, label %.lr.ph51.preheader, label %.preheader

.lr.ph51.preheader:                               ; preds = %.preheader42
  %.036.lcssa71 = ptrtoaddr ptr %.033.lcssa to i64 ; 2 uses
  %.033.lcssa70 = ptrtoaddr ptr %.036.lcssa to i64
  %i.o = add i64 %.idx, %i.b
  %i.p = add i64 %i.o, 3
  %i.q = sub i64 %i.p, %.036.lcssa71              ; 2 uses
  %i.r = lshr i64 %i.q, 2
  %i.s = add nuw nsw i64 %i.r, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.q, 44
  %i.t = sub i64 %.036.lcssa71, %.033.lcssa70
  %diff.check = icmp ugt i64 %i.t, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph51.preheader100, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph51.preheader
  %n.vec = and i64 %i.s, 9223372036854775800      ; 3 uses
  %i.u = shl i64 %n.vec, 2                        ; 2 uses
  %i.v = getelementptr i8, ptr %.033.lcssa, i64 %i.u
  %i.w = getelementptr i8, ptr %.036.lcssa, i64 %i.u ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.x = shl i64 %index, 2                        ; 2 uses
  %next.gep = getelementptr i8, ptr %.033.lcssa, i64 %i.x ; 2 uses
  %next.gep72 = getelementptr i8, ptr %.036.lcssa, i64 %i.x ; 2 uses
  %i.y = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !14
  %wide.load73 = load <4 x i32>, ptr %i.y, align 4, !tbaa !14
  %i.z = getelementptr i8, ptr %next.gep72, i64 16
  store <4 x i32> %wide.load, ptr %next.gep72, align 4, !tbaa !14
  store <4 x i32> %wide.load73, ptr %i.z, align 4, !tbaa !14
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !345

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %.preheader, label %.lr.ph51.preheader100

.lr.ph51.preheader100:                            ; preds = %.lr.ph51.preheader, %middle.block
  %.23550.ph = phi ptr [ %.033.lcssa, %.lr.ph51.preheader ], [ %i.v, %middle.block ]
  %.23849.ph = phi ptr [ %.036.lcssa, %.lr.ph51.preheader ], [ %i.w, %middle.block ]
  br label %.lr.ph51

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %.03646 = phi ptr [ %.036, %bb.f ], [ %.03643, %bb.a ] ; 4 uses
  %.045 = phi ptr [ %.1, %bb.f ], [ %i.d, %bb.a ] ; 4 uses
  %.03344 = phi ptr [ %.134, %bb.f ], [ %i.c, %bb.a ] ; 4 uses
  %i.ab = load i32, ptr %.03344, align 4, !tbaa !14 ; 4 uses
  %i.ac = load i32, ptr %.045, align 4, !tbaa !14 ; 3 uses
  %i.ad = icmp eq i32 %i.ab, %i.ac
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.ae = getelementptr inbounds nuw i8, ptr %.03344, i64 4
  store i32 %i.ab, ptr %.03646, align 4, !tbaa !14
  %i.af = getelementptr inbounds nuw i8, ptr %.045, i64 4
  br label %bb.f

bb.c:                                             ; preds = %.lr.ph
  %i.ag = icmp slt i32 %i.ab, %i.ac
  br i1 %i.ag, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %.03344, i64 4
  store i32 %i.ab, ptr %.03646, align 4, !tbaa !14
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %.045, i64 4
  store i32 %i.ac, ptr %.03646, align 4, !tbaa !14
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %.134 = phi ptr [ %i.ae, %bb.b ], [ %i.ah, %bb.d ], [ %.03344, %bb.e ] ; 3 uses
  %.1 = phi ptr [ %i.af, %bb.b ], [ %.045, %bb.d ], [ %i.ai, %bb.e ] ; 3 uses
  %.036 = getelementptr inbounds nuw i8, ptr %.03646, i64 4 ; 2 uses
  %i.aj = icmp ult ptr %.134, %i.g
  %i.ak = icmp ult ptr %.1, %i.j
  %i.al = select i1 %i.aj, i1 %i.ak, i1 false
  br i1 %i.al, label %.lr.ph, label %.preheader42, !llvm.loop !4

.preheader:                                       ; preds = %.lr.ph51, %middle.block, %.preheader42
  %.238.lcssa = phi ptr [ %.036.lcssa, %.preheader42 ], [ %i.w, %middle.block ], [ %i.bc, %.lr.ph51 ] ; 5 uses
  %i.am = icmp ult ptr %.0.lcssa, %i.j
  br i1 %i.am, label %.lr.ph55.preheader, label %._crit_edge

.lr.ph55.preheader:                               ; preds = %.preheader
  %.238.lcssa80 = ptrtoaddr ptr %.238.lcssa to i64
  %i.an = add i64 %.idx57, %i.a
  %i.ao = add i64 %i.an, 3
  %i.ap = sub i64 %i.ao, %.0.lcssa79              ; 2 uses
  %i.aq = lshr i64 %i.ap, 2
  %i.ar = add nuw nsw i64 %i.aq, 1                ; 2 uses
  %min.iters.check82 = icmp ult i64 %i.ap, 44
  %i.as = sub i64 %.0.lcssa79, %.238.lcssa80
  %diff.check84 = icmp ugt i64 %i.as, -32
  %or.cond98 = select i1 %min.iters.check82, i1 true, i1 %diff.check84
  br i1 %or.cond98, label %.lr.ph55.preheader99, label %vector.ph85

vector.ph85:                                      ; preds = %.lr.ph55.preheader
  %n.vec86 = and i64 %i.ar, 9223372036854775800   ; 3 uses
  %i.at = shl i64 %n.vec86, 2                     ; 2 uses
  %i.au = getelementptr i8, ptr %.0.lcssa, i64 %i.at
  %i.av = getelementptr i8, ptr %.238.lcssa, i64 %i.at ; 2 uses
  br label %vector.body87

vector.body87:                                    ; preds = %vector.body87, %vector.ph85
  %index88 = phi i64 [ 0, %vector.ph85 ], [ %index.next93, %vector.body87 ] ; 2 uses
  %i.aw = shl i64 %index88, 2                     ; 2 uses
  %next.gep89 = getelementptr i8, ptr %.0.lcssa, i64 %i.aw ; 2 uses
  %next.gep90 = getelementptr i8, ptr %.238.lcssa, i64 %i.aw ; 2 uses
  %i.ax = getelementptr i8, ptr %next.gep89, i64 16
  %wide.load91 = load <4 x i32>, ptr %next.gep89, align 4, !tbaa !14
  %wide.load92 = load <4 x i32>, ptr %i.ax, align 4, !tbaa !14
  %i.ay = getelementptr i8, ptr %next.gep90, i64 16
  store <4 x i32> %wide.load91, ptr %next.gep90, align 4, !tbaa !14
  store <4 x i32> %wide.load92, ptr %i.ay, align 4, !tbaa !14
  %index.next93 = add nuw i64 %index88, 8         ; 2 uses
  %i.az = icmp eq i64 %index.next93, %n.vec86
  br i1 %i.az, label %middle.block94, label %vector.body87, !llvm.loop !346

middle.block94:                                   ; preds = %vector.body87
  %cmp.n95 = icmp eq i64 %i.ar, %n.vec86
  br i1 %cmp.n95, label %._crit_edge, label %.lr.ph55.preheader99

.lr.ph55.preheader99:                             ; preds = %.lr.ph55.preheader, %middle.block94
  %.254.ph = phi ptr [ %.0.lcssa, %.lr.ph55.preheader ], [ %i.au, %middle.block94 ]
  %.353.ph = phi ptr [ %.238.lcssa, %.lr.ph55.preheader ], [ %i.av, %middle.block94 ]
  br label %.lr.ph55

.lr.ph51:                                         ; preds = %.lr.ph51.preheader100, %.lr.ph51
  %.23550 = phi ptr [ %i.ba, %.lr.ph51 ], [ %.23550.ph, %.lr.ph51.preheader100 ] ; 2 uses
  %.23849 = phi ptr [ %i.bc, %.lr.ph51 ], [ %.23849.ph, %.lr.ph51.preheader100 ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.23550, i64 4 ; 2 uses
  %i.bb = load i32, ptr %.23550, align 4, !tbaa !14
  %i.bc = getelementptr inbounds nuw i8, ptr %.23849, i64 4 ; 2 uses
  store i32 %i.bb, ptr %.23849, align 4, !tbaa !14
  %i.bd = icmp ult ptr %i.ba, %i.g
  br i1 %i.bd, label %.lr.ph51, label %.preheader, !llvm.loop !347

.lr.ph55:                                         ; preds = %.lr.ph55.preheader99, %.lr.ph55
  %.254 = phi ptr [ %i.be, %.lr.ph55 ], [ %.254.ph, %.lr.ph55.preheader99 ] ; 2 uses
  %.353 = phi ptr [ %i.bg, %.lr.ph55 ], [ %.353.ph, %.lr.ph55.preheader99 ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.254, i64 4 ; 2 uses
  %i.bf = load i32, ptr %.254, align 4, !tbaa !14
  %i.bg = getelementptr inbounds nuw i8, ptr %.353, i64 4 ; 2 uses
  store i32 %i.bf, ptr %.353, align 4, !tbaa !14
  %i.bh = icmp ult ptr %i.be, %i.j
  br i1 %i.bh, label %.lr.ph55, label %._crit_edge, !llvm.loop !348

._crit_edge:                                      ; preds = %.lr.ph55, %middle.block94, %.preheader
  %.3.lcssa = phi ptr [ %.238.lcssa, %.preheader ], [ %i.av, %middle.block94 ], [ %i.bg, %.lr.ph55 ]
  %i.bi = ptrtoint ptr %.3.lcssa to i64
  %i.bj = ptrtoint ptr %3 to i64
  %i.bk = sub i64 %i.bi, %i.bj
  %i.bl = lshr exact i64 %i.bk, 2
  %i.bm = trunc i64 %i.bl to i32
  %i.bn = add i32 %i.bm, -1                       ; 2 uses
  store i32 %i.bn, ptr %3, align 4, !tbaa !14
  ret i32 %i.bn
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @Sbd_ManMergeCuts(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = alloca [13 x i32], align 16              ; 8 uses
  %i.b = alloca [13 x i32], align 16              ; 7 uses
  %i.c = alloca [13 x i32], align 16              ; 7 uses
  %i.d = alloca [13 x i32], align 16              ; 6 uses
  %i.e = alloca [2 x i32], align 4                ; 7 uses
  %i.f = ptrtoaddr ptr %i.e to i64                ; 2 uses
  %i.g = alloca [2 x i32], align 4                ; 7 uses
  %i.h = ptrtoaddr ptr %i.g to i64                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !65
  %i.k = getelementptr i8, ptr %i.j, i64 32
  %.val86 = load ptr, ptr %i.k, align 8, !tbaa !52
  %i.l = sext i32 %1 to i64                       ; 2 uses
  %i.m = getelementptr inbounds [12 x i8], ptr %.val86, i64 %i.l
  %.val87 = load i64, ptr %i.m, align 4           ; 2 uses
  %i.n = trunc i64 %.val87 to i32
  %i.o = and i32 %i.n, 536870911
  %i.p = sub nsw i32 %1, %i.o                     ; 3 uses
  %i.q = lshr i64 %.val87, 32
  %i.r = trunc nuw i64 %i.q to i32
  %i.s = and i32 %i.r, 536870911
  %i.t = sub nsw i32 %1, %i.s                     ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !67
  %i.w = getelementptr i8, ptr %i.v, i64 8
  %.val84 = load ptr, ptr %i.w, align 8, !tbaa !48 ; 3 uses
  %i.x = sext i32 %i.p to i64
  %i.y = getelementptr inbounds [4 x i8], ptr %.val84, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !14
  %spec.select = tail call i32 @llvm.umax.i32(i32 %i.z, i32 1) ; 3 uses
  %i.aa = sext i32 %i.t to i64
  %i.ab = getelementptr inbounds [4 x i8], ptr %.val84, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !14
  %i.ad = tail call i32 @llvm.umax.i32(i32 %i.ac, i32 1) ; 3 uses
  %.val94 = load ptr, ptr %0, align 8, !tbaa !64  ; 3 uses
  %i.ae = getelementptr i8, ptr %0, i64 32
  %.val95 = load ptr, ptr %i.ae, align 8, !tbaa !69
  %.val94.val = load i32, ptr %.val94, align 4, !tbaa !68
  %i.af = getelementptr i8, ptr %.val95, i64 8
  %.val95.val = load ptr, ptr %i.af, align 8, !tbaa !48 ; 4 uses
  %.val95.val230 = ptrtoaddr ptr %.val95.val to i64 ; 4 uses
  %i.ag = add nsw i32 %.val94.val, 1              ; 2 uses
  %i.ah = mul nsw i32 %i.ag, %i.p
  %i.ai = sext i32 %i.ah to i64                   ; 3 uses
  %i.aj = getelementptr inbounds [4 x i8], ptr %.val95.val, i64 %i.ai ; 3 uses
  %i.ak = mul nsw i32 %i.ag, %i.t
  %i.al = sext i32 %i.ak to i64                   ; 3 uses
  %i.am = getelementptr inbounds [4 x i8], ptr %.val95.val, i64 %i.al ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  store i32 1, ptr %i.e, align 4, !tbaa !14
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 7 uses
  store i32 %i.p, ptr %i.an, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #33
  store i32 1, ptr %i.g, align 4, !tbaa !14
  %i.ao = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 7 uses
  store i32 %i.t, ptr %i.ao, align 4, !tbaa !14
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 4 ; 6 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 4 ; 6 uses
  %i.ar = load i32, ptr %i.aj, align 4, !tbaa !14 ; 2 uses
  %i.as = sext i32 %i.ar to i64
  %.idx.i = shl nsw i64 %i.as, 2                  ; 2 uses
  %i.at = getelementptr inbounds i8, ptr %i.ap, i64 %.idx.i ; 3 uses
  %i.au = load i32, ptr %i.am, align 4, !tbaa !14 ; 3 uses
  %i.av = sext i32 %i.au to i64
  %.idx57.i = shl nsw i64 %i.av, 2                ; 3 uses
  %i.aw = getelementptr inbounds i8, ptr %i.aq, i64 %.idx57.i ; 3 uses
  %.03643.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.ax = icmp sgt i32 %i.ar, 0
  %i.ay = icmp sgt i32 %i.au, 0
  %i.az = select i1 %i.ax, i1 %i.ay, i1 false
  br i1 %i.az, label %.lr.ph.i, label %.preheader42.i

.preheader42.i:                                   ; preds = %bb.f, %bb.a
  %.033.lcssa.i = phi ptr [ %i.ap, %bb.a ], [ %.134.i, %bb.f ] ; 5 uses
  %.0.lcssa.i = phi ptr [ %i.aq, %bb.a ], [ %.1.i, %bb.f ] ; 5 uses
  %.036.lcssa.i = phi ptr [ %.03643.i, %bb.a ], [ %.036.i, %bb.f ] ; 5 uses
  %.0.lcssa.i239 = ptrtoaddr ptr %.0.lcssa.i to i64 ; 2 uses
  %i.ba = icmp ult ptr %.033.lcssa.i, %i.at
  br i1 %i.ba, label %.lr.ph51.i.preheader, label %.preheader.i

.lr.ph51.i.preheader:                             ; preds = %.preheader42.i
  %.036.lcssa.i231 = ptrtoaddr ptr %.033.lcssa.i to i64 ; 2 uses
  %.033.lcssa.i229 = ptrtoaddr ptr %.036.lcssa.i to i64
  %i.bb = shl nsw i64 %i.ai, 2
  %i.bc = add i64 %.idx.i, %.val95.val230
  %i.bd = add i64 %i.bc, %i.bb
  %i.be = add i64 %i.bd, 3
  %i.bf = sub i64 %i.be, %.036.lcssa.i231         ; 2 uses
  %i.bg = lshr i64 %i.bf, 2
  %i.bh = add nuw nsw i64 %i.bg, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bf, 44
  %i.bi = sub i64 %.036.lcssa.i231, %.033.lcssa.i229
  %diff.check = icmp ugt i64 %i.bi, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph51.i.preheader416, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph51.i.preheader
  %n.vec = and i64 %i.bh, 9223372036854775800     ; 3 uses
  %i.bj = shl i64 %n.vec, 2                       ; 2 uses
  %i.bk = getelementptr i8, ptr %.033.lcssa.i, i64 %i.bj
  %i.bl = getelementptr i8, ptr %.036.lcssa.i, i64 %i.bj ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bm = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.033.lcssa.i, i64 %i.bm ; 2 uses
  %next.gep232 = getelementptr i8, ptr %.036.lcssa.i, i64 %i.bm ; 2 uses
  %i.bn = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !14
  %wide.load233 = load <4 x i32>, ptr %i.bn, align 4, !tbaa !14
  %i.bo = getelementptr i8, ptr %next.gep232, i64 16
  store <4 x i32> %wide.load, ptr %next.gep232, align 4, !tbaa !14
  store <4 x i32> %wide.load233, ptr %i.bo, align 4, !tbaa !14
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bp = icmp eq i64 %index.next, %n.vec
  br i1 %i.bp, label %middle.block, label %vector.body, !llvm.loop !349

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bh, %n.vec
  br i1 %cmp.n, label %.preheader.i, label %.lr.ph51.i.preheader416

.lr.ph51.i.preheader416:                          ; preds = %.lr.ph51.i.preheader, %middle.block
  %.23550.i.ph = phi ptr [ %.033.lcssa.i, %.lr.ph51.i.preheader ], [ %i.bk, %middle.block ]
  %.23849.i.ph = phi ptr [ %.036.lcssa.i, %.lr.ph51.i.preheader ], [ %i.bl, %middle.block ]
  br label %.lr.ph51.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.f
  %.03646.i = phi ptr [ %.036.i, %bb.f ], [ %.03643.i, %bb.a ] ; 4 uses
  %.045.i = phi ptr [ %.1.i, %bb.f ], [ %i.aq, %bb.a ] ; 4 uses
  %.03344.i = phi ptr [ %.134.i, %bb.f ], [ %i.ap, %bb.a ] ; 4 uses
  %i.bq = load i32, ptr %.03344.i, align 4, !tbaa !14 ; 4 uses
  %i.br = load i32, ptr %.045.i, align 4, !tbaa !14 ; 3 uses
  %i.bs = icmp eq i32 %i.bq, %i.br
  br i1 %i.bs, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  %i.bt = getelementptr inbounds nuw i8, ptr %.03344.i, i64 4
  store i32 %i.bq, ptr %.03646.i, align 4, !tbaa !14
  %i.bu = getelementptr inbounds nuw i8, ptr %.045.i, i64 4
  br label %bb.f

bb.c:                                             ; preds = %.lr.ph.i
  %i.bv = icmp slt i32 %i.bq, %i.br
  br i1 %i.bv, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bw = getelementptr inbounds nuw i8, ptr %.03344.i, i64 4
  store i32 %i.bq, ptr %.03646.i, align 4, !tbaa !14
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.bx = getelementptr inbounds nuw i8, ptr %.045.i, i64 4
  store i32 %i.br, ptr %.03646.i, align 4, !tbaa !14
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.134.i = phi ptr [ %i.bt, %bb.b ], [ %i.bw, %bb.d ], [ %.03344.i, %bb.e ] ; 3 uses
  %.1.i = phi ptr [ %i.bu, %bb.b ], [ %.045.i, %bb.d ], [ %i.bx, %bb.e ] ; 3 uses
  %.036.i = getelementptr inbounds nuw i8, ptr %.03646.i, i64 4 ; 2 uses
  %i.by = icmp ult ptr %.134.i, %i.at
  %i.bz = icmp ult ptr %.1.i, %i.aw
  %i.ca = select i1 %i.by, i1 %i.bz, i1 false
  br i1 %i.ca, label %.lr.ph.i, label %.preheader42.i, !llvm.loop !4

.preheader.i:                                     ; preds = %.lr.ph51.i, %middle.block, %.preheader42.i
  %.238.lcssa.i = phi ptr [ %.036.lcssa.i, %.preheader42.i ], [ %i.bl, %middle.block ], [ %i.ct, %.lr.ph51.i ] ; 5 uses
  %i.cb = icmp ult ptr %.0.lcssa.i, %i.aw
  br i1 %i.cb, label %.lr.ph55.i.preheader, label %Sbd_CutMergeSimple.exit

.lr.ph55.i.preheader:                             ; preds = %.preheader.i
  %.238.lcssa.i240 = ptrtoaddr ptr %.238.lcssa.i to i64
  %i.cc = shl nsw i64 %i.al, 2
  %i.cd = add i64 %.idx57.i, %.val95.val230
  %i.ce = add i64 %i.cd, %i.cc
  %i.cf = add i64 %i.ce, 3
  %i.cg = sub i64 %i.cf, %.0.lcssa.i239           ; 2 uses
  %i.ch = lshr i64 %i.cg, 2
  %i.ci = add nuw nsw i64 %i.ch, 1                ; 2 uses
  %min.iters.check242 = icmp ult i64 %i.cg, 44
  %i.cj = sub i64 %.0.lcssa.i239, %.238.lcssa.i240
  %diff.check244 = icmp ugt i64 %i.cj, -32
  %or.cond396 = select i1 %min.iters.check242, i1 true, i1 %diff.check244
  br i1 %or.cond396, label %.lr.ph55.i.preheader414, label %vector.ph245

vector.ph245:                                     ; preds = %.lr.ph55.i.preheader
  %n.vec246 = and i64 %i.ci, 9223372036854775800  ; 3 uses
  %i.ck = shl i64 %n.vec246, 2                    ; 2 uses
  %i.cl = getelementptr i8, ptr %.0.lcssa.i, i64 %i.ck
  %i.cm = getelementptr i8, ptr %.238.lcssa.i, i64 %i.ck ; 2 uses
  br label %vector.body247

vector.body247:                                   ; preds = %vector.body247, %vector.ph245
  %index248 = phi i64 [ 0, %vector.ph245 ], [ %index.next253, %vector.body247 ] ; 2 uses
  %i.cn = shl i64 %index248, 2                    ; 2 uses
  %next.gep249 = getelementptr i8, ptr %.0.lcssa.i, i64 %i.cn ; 2 uses
  %next.gep250 = getelementptr i8, ptr %.238.lcssa.i, i64 %i.cn ; 2 uses
  %i.co = getelementptr i8, ptr %next.gep249, i64 16
  %wide.load251 = load <4 x i32>, ptr %next.gep249, align 4, !tbaa !14
  %wide.load252 = load <4 x i32>, ptr %i.co, align 4, !tbaa !14
  %i.cp = getelementptr i8, ptr %next.gep250, i64 16
  store <4 x i32> %wide.load251, ptr %next.gep250, align 4, !tbaa !14
  store <4 x i32> %wide.load252, ptr %i.cp, align 4, !tbaa !14
  %index.next253 = add nuw i64 %index248, 8       ; 2 uses
  %i.cq = icmp eq i64 %index.next253, %n.vec246
  br i1 %i.cq, label %middle.block254, label %vector.body247, !llvm.loop !350

middle.block254:                                  ; preds = %vector.body247
  %cmp.n255 = icmp eq i64 %i.ci, %n.vec246
  br i1 %cmp.n255, label %Sbd_CutMergeSimple.exit.loopexit, label %.lr.ph55.i.preheader414

.lr.ph55.i.preheader414:                          ; preds = %.lr.ph55.i.preheader, %middle.block254
  %.254.i.ph = phi ptr [ %.0.lcssa.i, %.lr.ph55.i.preheader ], [ %i.cl, %middle.block254 ]
  %.353.i.ph = phi ptr [ %.238.lcssa.i, %.lr.ph55.i.preheader ], [ %i.cm, %middle.block254 ]
  br label %.lr.ph55.i

.lr.ph51.i:                                       ; preds = %.lr.ph51.i.preheader416, %.lr.ph51.i
  %.23550.i = phi ptr [ %i.cr, %.lr.ph51.i ], [ %.23550.i.ph, %.lr.ph51.i.preheader416 ] ; 2 uses
  %.23849.i = phi ptr [ %i.ct, %.lr.ph51.i ], [ %.23849.i.ph, %.lr.ph51.i.preheader416 ] ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.23550.i, i64 4 ; 2 uses
  %i.cs = load i32, ptr %.23550.i, align 4, !tbaa !14
  %i.ct = getelementptr inbounds nuw i8, ptr %.23849.i, i64 4 ; 2 uses
  store i32 %i.cs, ptr %.23849.i, align 4, !tbaa !14
  %i.cu = icmp ult ptr %i.cr, %i.at
  br i1 %i.cu, label %.lr.ph51.i, label %.preheader.i, !llvm.loop !351

.lr.ph55.i:                                       ; preds = %.lr.ph55.i.preheader414, %.lr.ph55.i
  %.254.i = phi ptr [ %i.cv, %.lr.ph55.i ], [ %.254.i.ph, %.lr.ph55.i.preheader414 ] ; 2 uses
  %.353.i = phi ptr [ %i.cx, %.lr.ph55.i ], [ %.353.i.ph, %.lr.ph55.i.preheader414 ] ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.254.i, i64 4 ; 2 uses
  %i.cw = load i32, ptr %.254.i, align 4, !tbaa !14
  %i.cx = getelementptr inbounds nuw i8, ptr %.353.i, i64 4 ; 2 uses
  store i32 %i.cw, ptr %.353.i, align 4, !tbaa !14
  %i.cy = icmp ult ptr %i.cv, %i.aw
  br i1 %i.cy, label %.lr.ph55.i, label %Sbd_CutMergeSimple.exit.loopexit, !llvm.loop !352

Sbd_CutMergeSimple.exit.loopexit:                 ; preds = %.lr.ph55.i, %middle.block254
  %.lcssa225 = phi ptr [ %i.cm, %middle.block254 ], [ %i.cx, %.lr.ph55.i ]
  %.pre = load i32, ptr %i.e, align 4, !tbaa !14
  %.pre182 = load i32, ptr %i.am, align 4, !tbaa !14 ; 2 uses
  %.pre184 = sext i32 %.pre182 to i64
  %.pre185 = shl nsw i64 %.pre184, 2
  br label %Sbd_CutMergeSimple.exit

Sbd_CutMergeSimple.exit:                          ; preds = %Sbd_CutMergeSimple.exit.loopexit, %.preheader.i
  %.idx57.i97.pre-phi = phi i64 [ %.pre185, %Sbd_CutMergeSimple.exit.loopexit ], [ %.idx57.i, %.preheader.i ] ; 2 uses
  %i.cz = phi i32 [ %.pre182, %Sbd_CutMergeSimple.exit.loopexit ], [ %i.au, %.preheader.i ]
  %i.da = phi i32 [ %.pre, %Sbd_CutMergeSimple.exit.loopexit ], [ 1, %.preheader.i ] ; 2 uses
  %.3.lcssa.i = phi ptr [ %.lcssa225, %Sbd_CutMergeSimple.exit.loopexit ], [ %.238.lcssa.i, %.preheader.i ]
  %i.db = ptrtoint ptr %.3.lcssa.i to i64
  %i.dc = ptrtoint ptr %i.a to i64
  %i.dd = sub i64 %i.db, %i.dc
  %i.de = lshr exact i64 %i.dd, 2
  %i.df = trunc i64 %i.de to i32
  %i.dg = add i32 %i.df, -1                       ; 2 uses
  store i32 %i.dg, ptr %i.a, align 16, !tbaa !14
  %i.dh = sext i32 %i.da to i64
  %.idx.i96 = shl nsw i64 %i.dh, 2                ; 2 uses
  %i.di = getelementptr inbounds i8, ptr %i.an, i64 %.idx.i96 ; 3 uses
  %i.dj = getelementptr inbounds i8, ptr %i.aq, i64 %.idx57.i97.pre-phi ; 3 uses
  %.03643.i98 = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.dk = icmp sgt i32 %i.da, 0
  %i.dl = icmp sgt i32 %i.cz, 0
  %i.dm = select i1 %i.dk, i1 %i.dl, i1 false
  br i1 %i.dm, label %.lr.ph.i112, label %.preheader42.i99

.preheader42.i99:                                 ; preds = %bb.k, %Sbd_CutMergeSimple.exit
  %.033.lcssa.i100 = phi ptr [ %i.an, %Sbd_CutMergeSimple.exit ], [ %.134.i116, %bb.k ] ; 5 uses
  %.0.lcssa.i101 = phi ptr [ %i.aq, %Sbd_CutMergeSimple.exit ], [ %.1.i117, %bb.k ] ; 5 uses
  %.036.lcssa.i102 = phi ptr [ %.03643.i98, %Sbd_CutMergeSimple.exit ], [ %.036.i118, %bb.k ] ; 5 uses
  %.0.lcssa.i101285 = ptrtoaddr ptr %.0.lcssa.i101 to i64 ; 2 uses
  %i.dn = icmp ult ptr %.033.lcssa.i100, %i.di
  br i1 %i.dn, label %.lr.ph51.i109.preheader, label %.preheader.i103

.lr.ph51.i109.preheader:                          ; preds = %.preheader42.i99
  %.036.lcssa.i102263 = ptrtoaddr ptr %.033.lcssa.i100 to i64 ; 2 uses
  %.033.lcssa.i100262 = ptrtoaddr ptr %.036.lcssa.i102 to i64
  %i.do = add i64 %.idx.i96, %i.f
  %i.dp = or disjoint i64 %i.do, 3
  %i.dq = sub i64 %i.dp, %.036.lcssa.i102263      ; 2 uses
  %i.dr = lshr i64 %i.dq, 2
  %i.ds = add nuw nsw i64 %i.dr, 1                ; 2 uses
  %min.iters.check265 = icmp ult i64 %i.dq, 44
  %i.dt = sub i64 %.036.lcssa.i102263, %.033.lcssa.i100262
  %diff.check267 = icmp ugt i64 %i.dt, -32
  %or.cond397 = select i1 %min.iters.check265, i1 true, i1 %diff.check267
  br i1 %or.cond397, label %.lr.ph51.i109.preheader412, label %vector.ph268

vector.ph268:                                     ; preds = %.lr.ph51.i109.preheader
  %n.vec269 = and i64 %i.ds, 9223372036854775800  ; 3 uses
  %i.du = shl i64 %n.vec269, 2                    ; 2 uses
  %i.dv = getelementptr i8, ptr %.033.lcssa.i100, i64 %i.du
  %i.dw = getelementptr i8, ptr %.036.lcssa.i102, i64 %i.du ; 2 uses
  br label %vector.body270

vector.body270:                                   ; preds = %vector.body270, %vector.ph268
  %index271 = phi i64 [ 0, %vector.ph268 ], [ %index.next276, %vector.body270 ] ; 2 uses
  %i.dx = shl i64 %index271, 2                    ; 2 uses
  %next.gep272 = getelementptr i8, ptr %.033.lcssa.i100, i64 %i.dx ; 2 uses
  %next.gep273 = getelementptr i8, ptr %.036.lcssa.i102, i64 %i.dx ; 2 uses
  %i.dy = getelementptr i8, ptr %next.gep272, i64 16
  %wide.load274 = load <4 x i32>, ptr %next.gep272, align 4, !tbaa !14
  %wide.load275 = load <4 x i32>, ptr %i.dy, align 4, !tbaa !14
  %i.dz = getelementptr i8, ptr %next.gep273, i64 16
  store <4 x i32> %wide.load274, ptr %next.gep273, align 4, !tbaa !14
  store <4 x i32> %wide.load275, ptr %i.dz, align 4, !tbaa !14
  %index.next276 = add nuw i64 %index271, 8       ; 2 uses
  %i.ea = icmp eq i64 %index.next276, %n.vec269
  br i1 %i.ea, label %middle.block277, label %vector.body270, !llvm.loop !353

middle.block277:                                  ; preds = %vector.body270
  %cmp.n278 = icmp eq i64 %i.ds, %n.vec269
  br i1 %cmp.n278, label %.preheader.i103, label %.lr.ph51.i109.preheader412

.lr.ph51.i109.preheader412:                       ; preds = %.lr.ph51.i109.preheader, %middle.block277
  %.23550.i110.ph = phi ptr [ %.033.lcssa.i100, %.lr.ph51.i109.preheader ], [ %i.dv, %middle.block277 ]
  %.23849.i111.ph = phi ptr [ %.036.lcssa.i102, %.lr.ph51.i109.preheader ], [ %i.dw, %middle.block277 ]
  br label %.lr.ph51.i109

.lr.ph.i112:                                      ; preds = %Sbd_CutMergeSimple.exit, %bb.k
  %.03646.i113 = phi ptr [ %.036.i118, %bb.k ], [ %.03643.i98, %Sbd_CutMergeSimple.exit ] ; 4 uses
  %.045.i114 = phi ptr [ %.1.i117, %bb.k ], [ %i.aq, %Sbd_CutMergeSimple.exit ] ; 4 uses
  %.03344.i115 = phi ptr [ %.134.i116, %bb.k ], [ %i.an, %Sbd_CutMergeSimple.exit ] ; 4 uses
  %i.eb = load i32, ptr %.03344.i115, align 4, !tbaa !14 ; 4 uses
  %i.ec = load i32, ptr %.045.i114, align 4, !tbaa !14 ; 3 uses
  %i.ed = icmp eq i32 %i.eb, %i.ec
  br i1 %i.ed, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph.i112
  %i.ee = getelementptr inbounds nuw i8, ptr %.03344.i115, i64 4
  store i32 %i.eb, ptr %.03646.i113, align 4, !tbaa !14
  %i.ef = getelementptr inbounds nuw i8, ptr %.045.i114, i64 4
  br label %bb.k

bb.h:                                             ; preds = %.lr.ph.i112
  %i.eg = icmp slt i32 %i.eb, %i.ec
  br i1 %i.eg, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.eh = getelementptr inbounds nuw i8, ptr %.03344.i115, i64 4
  store i32 %i.eb, ptr %.03646.i113, align 4, !tbaa !14
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ei = getelementptr inbounds nuw i8, ptr %.045.i114, i64 4
  store i32 %i.ec, ptr %.03646.i113, align 4, !tbaa !14
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.g
  %.134.i116 = phi ptr [ %i.ee, %bb.g ], [ %i.eh, %bb.i ], [ %.03344.i115, %bb.j ] ; 3 uses
  %.1.i117 = phi ptr [ %i.ef, %bb.g ], [ %.045.i114, %bb.i ], [ %i.ei, %bb.j ] ; 3 uses
  %.036.i118 = getelementptr inbounds nuw i8, ptr %.03646.i113, i64 4 ; 2 uses
  %i.ej = icmp ult ptr %.134.i116, %i.di
  %i.ek = icmp ult ptr %.1.i117, %i.dj
  %i.el = select i1 %i.ej, i1 %i.ek, i1 false
  br i1 %i.el, label %.lr.ph.i112, label %.preheader42.i99, !llvm.loop !4

.preheader.i103:                                  ; preds = %.lr.ph51.i109, %middle.block277, %.preheader42.i99
  %.238.lcssa.i104 = phi ptr [ %.036.lcssa.i102, %.preheader42.i99 ], [ %i.dw, %middle.block277 ], [ %i.fe, %.lr.ph51.i109 ] ; 5 uses
  %i.em = icmp ult ptr %.0.lcssa.i101, %i.dj
  br i1 %i.em, label %.lr.ph55.i106.preheader, label %Sbd_CutMergeSimple.exit119

.lr.ph55.i106.preheader:                          ; preds = %.preheader.i103
  %.238.lcssa.i104286 = ptrtoaddr ptr %.238.lcssa.i104 to i64
  %i.en = shl nsw i64 %i.al, 2
  %i.eo = add i64 %.idx57.i97.pre-phi, %.val95.val230
  %i.ep = add i64 %i.eo, %i.en
  %i.eq = add i64 %i.ep, 3
  %i.er = sub i64 %i.eq, %.0.lcssa.i101285        ; 2 uses
  %i.es = lshr i64 %i.er, 2
  %i.et = add nuw nsw i64 %i.es, 1                ; 2 uses
  %min.iters.check288 = icmp ult i64 %i.er, 44
  %i.eu = sub i64 %.0.lcssa.i101285, %.238.lcssa.i104286
  %diff.check290 = icmp ugt i64 %i.eu, -32
  %or.cond398 = select i1 %min.iters.check288, i1 true, i1 %diff.check290
  br i1 %or.cond398, label %.lr.ph55.i106.preheader410, label %vector.ph291

vector.ph291:                                     ; preds = %.lr.ph55.i106.preheader
  %n.vec292 = and i64 %i.et, 9223372036854775800  ; 3 uses
  %i.ev = shl i64 %n.vec292, 2                    ; 2 uses
  %i.ew = getelementptr i8, ptr %.0.lcssa.i101, i64 %i.ev
  %i.ex = getelementptr i8, ptr %.238.lcssa.i104, i64 %i.ev ; 2 uses
  br label %vector.body293

vector.body293:                                   ; preds = %vector.body293, %vector.ph291
  %index294 = phi i64 [ 0, %vector.ph291 ], [ %index.next299, %vector.body293 ] ; 2 uses
  %i.ey = shl i64 %index294, 2                    ; 2 uses
  %next.gep295 = getelementptr i8, ptr %.0.lcssa.i101, i64 %i.ey ; 2 uses
  %next.gep296 = getelementptr i8, ptr %.238.lcssa.i104, i64 %i.ey ; 2 uses
  %i.ez = getelementptr i8, ptr %next.gep295, i64 16
  %wide.load297 = load <4 x i32>, ptr %next.gep295, align 4, !tbaa !14
  %wide.load298 = load <4 x i32>, ptr %i.ez, align 4, !tbaa !14
  %i.fa = getelementptr i8, ptr %next.gep296, i64 16
  store <4 x i32> %wide.load297, ptr %next.gep296, align 4, !tbaa !14
  store <4 x i32> %wide.load298, ptr %i.fa, align 4, !tbaa !14
  %index.next299 = add nuw i64 %index294, 8       ; 2 uses
  %i.fb = icmp eq i64 %index.next299, %n.vec292
  br i1 %i.fb, label %middle.block300, label %vector.body293, !llvm.loop !354

middle.block300:                                  ; preds = %vector.body293
  %cmp.n301 = icmp eq i64 %i.et, %n.vec292
  br i1 %cmp.n301, label %Sbd_CutMergeSimple.exit119, label %.lr.ph55.i106.preheader410

.lr.ph55.i106.preheader410:                       ; preds = %.lr.ph55.i106.preheader, %middle.block300
  %.254.i107.ph = phi ptr [ %.0.lcssa.i101, %.lr.ph55.i106.preheader ], [ %i.ew, %middle.block300 ]
  %.353.i108.ph = phi ptr [ %.238.lcssa.i104, %.lr.ph55.i106.preheader ], [ %i.ex, %middle.block300 ]
  br label %.lr.ph55.i106

.lr.ph51.i109:                                    ; preds = %.lr.ph51.i109.preheader412, %.lr.ph51.i109
  %.23550.i110 = phi ptr [ %i.fc, %.lr.ph51.i109 ], [ %.23550.i110.ph, %.lr.ph51.i109.preheader412 ] ; 2 uses
  %.23849.i111 = phi ptr [ %i.fe, %.lr.ph51.i109 ], [ %.23849.i111.ph, %.lr.ph51.i109.preheader412 ] ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.23550.i110, i64 4 ; 2 uses
  %i.fd = load i32, ptr %.23550.i110, align 4, !tbaa !14
  %i.fe = getelementptr inbounds nuw i8, ptr %.23849.i111, i64 4 ; 2 uses
  store i32 %i.fd, ptr %.23849.i111, align 4, !tbaa !14
  %i.ff = icmp ult ptr %i.fc, %i.di
  br i1 %i.ff, label %.lr.ph51.i109, label %.preheader.i103, !llvm.loop !355

.lr.ph55.i106:                                    ; preds = %.lr.ph55.i106.preheader410, %.lr.ph55.i106
  %.254.i107 = phi ptr [ %i.fg, %.lr.ph55.i106 ], [ %.254.i107.ph, %.lr.ph55.i106.preheader410 ] ; 2 uses
  %.353.i108 = phi ptr [ %i.fi, %.lr.ph55.i106 ], [ %.353.i108.ph, %.lr.ph55.i106.preheader410 ] ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.254.i107, i64 4 ; 2 uses
  %i.fh = load i32, ptr %.254.i107, align 4, !tbaa !14
  %i.fi = getelementptr inbounds nuw i8, ptr %.353.i108, i64 4 ; 2 uses
  store i32 %i.fh, ptr %.353.i108, align 4, !tbaa !14
  %i.fj = icmp ult ptr %i.fg, %i.dj
  br i1 %i.fj, label %.lr.ph55.i106, label %Sbd_CutMergeSimple.exit119, !llvm.loop !356

Sbd_CutMergeSimple.exit119:                       ; preds = %.lr.ph55.i106, %middle.block300, %.preheader.i103
  %.3.lcssa.i105 = phi ptr [ %.238.lcssa.i104, %.preheader.i103 ], [ %i.ex, %middle.block300 ], [ %i.fi, %.lr.ph55.i106 ]
  %i.fk = ptrtoint ptr %.3.lcssa.i105 to i64
  %i.fl = ptrtoint ptr %i.b to i64
  %i.fm = sub i64 %i.fk, %i.fl
  %i.fn = lshr exact i64 %i.fm, 2
  %i.fo = trunc i64 %i.fn to i32
  %i.fp = add i32 %i.fo, -1                       ; 2 uses
  store i32 %i.fp, ptr %i.b, align 16, !tbaa !14
  %i.fq = load i32, ptr %i.aj, align 4, !tbaa !14 ; 2 uses
  %i.fr = sext i32 %i.fq to i64
  %.idx.i120 = shl nsw i64 %i.fr, 2               ; 2 uses
  %i.fs = getelementptr inbounds i8, ptr %i.ap, i64 %.idx.i120 ; 3 uses
  %i.ft = load i32, ptr %i.g, align 4, !tbaa !14  ; 3 uses
  %i.fu = sext i32 %i.ft to i64
  %.idx57.i121 = shl nsw i64 %i.fu, 2             ; 3 uses
  %i.fv = getelementptr inbounds i8, ptr %i.ao, i64 %.idx57.i121 ; 3 uses
  %.03643.i122 = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  %i.fw = icmp sgt i32 %i.fq, 0
  %i.fx = icmp sgt i32 %i.ft, 0
  %i.fy = select i1 %i.fw, i1 %i.fx, i1 false
  br i1 %i.fy, label %.lr.ph.i136, label %.preheader42.i123

.preheader42.i123:                                ; preds = %bb.p, %Sbd_CutMergeSimple.exit119
  %.033.lcssa.i124 = phi ptr [ %i.ap, %Sbd_CutMergeSimple.exit119 ], [ %.134.i140, %bb.p ] ; 5 uses
  %.0.lcssa.i125 = phi ptr [ %i.ao, %Sbd_CutMergeSimple.exit119 ], [ %.1.i141, %bb.p ] ; 5 uses
  %.036.lcssa.i126 = phi ptr [ %.03643.i122, %Sbd_CutMergeSimple.exit119 ], [ %.036.i142, %bb.p ] ; 5 uses
  %.0.lcssa.i125331 = ptrtoaddr ptr %.0.lcssa.i125 to i64 ; 2 uses
  %i.fz = icmp ult ptr %.033.lcssa.i124, %i.fs
  br i1 %i.fz, label %.lr.ph51.i133.preheader, label %.preheader.i127

.lr.ph51.i133.preheader:                          ; preds = %.preheader42.i123
  %.036.lcssa.i126309 = ptrtoaddr ptr %.033.lcssa.i124 to i64 ; 2 uses
  %.033.lcssa.i124308 = ptrtoaddr ptr %.036.lcssa.i126 to i64
  %i.ga = shl nsw i64 %i.ai, 2
  %i.gb = add i64 %.idx.i120, %.val95.val230
  %i.gc = add i64 %i.gb, %i.ga
  %i.gd = add i64 %i.gc, 3
  %i.ge = sub i64 %i.gd, %.036.lcssa.i126309      ; 2 uses
  %i.gf = lshr i64 %i.ge, 2
  %i.gg = add nuw nsw i64 %i.gf, 1                ; 2 uses
  %min.iters.check311 = icmp ult i64 %i.ge, 44
  %i.gh = sub i64 %.036.lcssa.i126309, %.033.lcssa.i124308
  %diff.check313 = icmp ugt i64 %i.gh, -32
  %or.cond399 = select i1 %min.iters.check311, i1 true, i1 %diff.check313
  br i1 %or.cond399, label %.lr.ph51.i133.preheader408, label %vector.ph314

vector.ph314:                                     ; preds = %.lr.ph51.i133.preheader
  %n.vec315 = and i64 %i.gg, 9223372036854775800  ; 3 uses
  %i.gi = shl i64 %n.vec315, 2                    ; 2 uses
  %i.gj = getelementptr i8, ptr %.033.lcssa.i124, i64 %i.gi
  %i.gk = getelementptr i8, ptr %.036.lcssa.i126, i64 %i.gi ; 2 uses
  br label %vector.body316

vector.body316:                                   ; preds = %vector.body316, %vector.ph314
  %index317 = phi i64 [ 0, %vector.ph314 ], [ %index.next322, %vector.body316 ] ; 2 uses
  %i.gl = shl i64 %index317, 2                    ; 2 uses
  %next.gep318 = getelementptr i8, ptr %.033.lcssa.i124, i64 %i.gl ; 2 uses
  %next.gep319 = getelementptr i8, ptr %.036.lcssa.i126, i64 %i.gl ; 2 uses
  %i.gm = getelementptr i8, ptr %next.gep318, i64 16
  %wide.load320 = load <4 x i32>, ptr %next.gep318, align 4, !tbaa !14
  %wide.load321 = load <4 x i32>, ptr %i.gm, align 4, !tbaa !14
  %i.gn = getelementptr i8, ptr %next.gep319, i64 16
  store <4 x i32> %wide.load320, ptr %next.gep319, align 4, !tbaa !14
  store <4 x i32> %wide.load321, ptr %i.gn, align 4, !tbaa !14
  %index.next322 = add nuw i64 %index317, 8       ; 2 uses
  %i.go = icmp eq i64 %index.next322, %n.vec315
  br i1 %i.go, label %middle.block323, label %vector.body316, !llvm.loop !357

middle.block323:                                  ; preds = %vector.body316
  %cmp.n324 = icmp eq i64 %i.gg, %n.vec315
  br i1 %cmp.n324, label %.preheader.i127, label %.lr.ph51.i133.preheader408

.lr.ph51.i133.preheader408:                       ; preds = %.lr.ph51.i133.preheader, %middle.block323
  %.23550.i134.ph = phi ptr [ %.033.lcssa.i124, %.lr.ph51.i133.preheader ], [ %i.gj, %middle.block323 ]
  %.23849.i135.ph = phi ptr [ %.036.lcssa.i126, %.lr.ph51.i133.preheader ], [ %i.gk, %middle.block323 ]
  br label %.lr.ph51.i133

.lr.ph.i136:                                      ; preds = %Sbd_CutMergeSimple.exit119, %bb.p
  %.03646.i137 = phi ptr [ %.036.i142, %bb.p ], [ %.03643.i122, %Sbd_CutMergeSimple.exit119 ] ; 4 uses
  %.045.i138 = phi ptr [ %.1.i141, %bb.p ], [ %i.ao, %Sbd_CutMergeSimple.exit119 ] ; 4 uses
  %.03344.i139 = phi ptr [ %.134.i140, %bb.p ], [ %i.ap, %Sbd_CutMergeSimple.exit119 ] ; 4 uses
  %i.gp = load i32, ptr %.03344.i139, align 4, !tbaa !14 ; 4 uses
  %i.gq = load i32, ptr %.045.i138, align 4, !tbaa !14 ; 3 uses
  %i.gr = icmp eq i32 %i.gp, %i.gq
  br i1 %i.gr, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph.i136
  %i.gs = getelementptr inbounds nuw i8, ptr %.03344.i139, i64 4
  store i32 %i.gp, ptr %.03646.i137, align 4, !tbaa !14
  %i.gt = getelementptr inbounds nuw i8, ptr %.045.i138, i64 4
  br label %bb.p

bb.m:                                             ; preds = %.lr.ph.i136
  %i.gu = icmp slt i32 %i.gp, %i.gq
  br i1 %i.gu, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.gv = getelementptr inbounds nuw i8, ptr %.03344.i139, i64 4
  store i32 %i.gp, ptr %.03646.i137, align 4, !tbaa !14
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.gw = getelementptr inbounds nuw i8, ptr %.045.i138, i64 4
  store i32 %i.gq, ptr %.03646.i137, align 4, !tbaa !14
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.l
  %.134.i140 = phi ptr [ %i.gs, %bb.l ], [ %i.gv, %bb.n ], [ %.03344.i139, %bb.o ] ; 3 uses
  %.1.i141 = phi ptr [ %i.gt, %bb.l ], [ %.045.i138, %bb.n ], [ %i.gw, %bb.o ] ; 3 uses
  %.036.i142 = getelementptr inbounds nuw i8, ptr %.03646.i137, i64 4 ; 2 uses
  %i.gx = icmp ult ptr %.134.i140, %i.fs
  %i.gy = icmp ult ptr %.1.i141, %i.fv
  %i.gz = select i1 %i.gx, i1 %i.gy, i1 false
  br i1 %i.gz, label %.lr.ph.i136, label %.preheader42.i123, !llvm.loop !4

.preheader.i127:                                  ; preds = %.lr.ph51.i133, %middle.block323, %.preheader42.i123
  %.238.lcssa.i128 = phi ptr [ %.036.lcssa.i126, %.preheader42.i123 ], [ %i.gk, %middle.block323 ], [ %i.hq, %.lr.ph51.i133 ] ; 5 uses
  %i.ha = icmp ult ptr %.0.lcssa.i125, %i.fv
  br i1 %i.ha, label %.lr.ph55.i130.preheader, label %Sbd_CutMergeSimple.exit143

.lr.ph55.i130.preheader:                          ; preds = %.preheader.i127
  %.238.lcssa.i128332 = ptrtoaddr ptr %.238.lcssa.i128 to i64
  %i.hb = add i64 %.idx57.i121, %i.h
  %i.hc = or disjoint i64 %i.hb, 3
  %i.hd = sub i64 %i.hc, %.0.lcssa.i125331        ; 2 uses
  %i.he = lshr i64 %i.hd, 2
  %i.hf = add nuw nsw i64 %i.he, 1                ; 2 uses
  %min.iters.check334 = icmp ult i64 %i.hd, 44
  %i.hg = sub i64 %.0.lcssa.i125331, %.238.lcssa.i128332
  %diff.check336 = icmp ugt i64 %i.hg, -32
  %or.cond400 = select i1 %min.iters.check334, i1 true, i1 %diff.check336
  br i1 %or.cond400, label %.lr.ph55.i130.preheader406, label %vector.ph337

vector.ph337:                                     ; preds = %.lr.ph55.i130.preheader
  %n.vec338 = and i64 %i.hf, 9223372036854775800  ; 3 uses
  %i.hh = shl i64 %n.vec338, 2                    ; 2 uses
  %i.hi = getelementptr i8, ptr %.0.lcssa.i125, i64 %i.hh
  %i.hj = getelementptr i8, ptr %.238.lcssa.i128, i64 %i.hh ; 2 uses
  br label %vector.body339

vector.body339:                                   ; preds = %vector.body339, %vector.ph337
  %index340 = phi i64 [ 0, %vector.ph337 ], [ %index.next345, %vector.body339 ] ; 2 uses
  %i.hk = shl i64 %index340, 2                    ; 2 uses
  %next.gep341 = getelementptr i8, ptr %.0.lcssa.i125, i64 %i.hk ; 2 uses
  %next.gep342 = getelementptr i8, ptr %.238.lcssa.i128, i64 %i.hk ; 2 uses
  %i.hl = getelementptr i8, ptr %next.gep341, i64 16
  %wide.load343 = load <4 x i32>, ptr %next.gep341, align 4, !tbaa !14
  %wide.load344 = load <4 x i32>, ptr %i.hl, align 4, !tbaa !14
  %i.hm = getelementptr i8, ptr %next.gep342, i64 16
  store <4 x i32> %wide.load343, ptr %next.gep342, align 4, !tbaa !14
  store <4 x i32> %wide.load344, ptr %i.hm, align 4, !tbaa !14
  %index.next345 = add nuw i64 %index340, 8       ; 2 uses
  %i.hn = icmp eq i64 %index.next345, %n.vec338
  br i1 %i.hn, label %middle.block346, label %vector.body339, !llvm.loop !358

middle.block346:                                  ; preds = %vector.body339
  %cmp.n347 = icmp eq i64 %i.hf, %n.vec338
  br i1 %cmp.n347, label %Sbd_CutMergeSimple.exit143.loopexit, label %.lr.ph55.i130.preheader406

.lr.ph55.i130.preheader406:                       ; preds = %.lr.ph55.i130.preheader, %middle.block346
  %.254.i131.ph = phi ptr [ %.0.lcssa.i125, %.lr.ph55.i130.preheader ], [ %i.hi, %middle.block346 ]
  %.353.i132.ph = phi ptr [ %.238.lcssa.i128, %.lr.ph55.i130.preheader ], [ %i.hj, %middle.block346 ]
  br label %.lr.ph55.i130

.lr.ph51.i133:                                    ; preds = %.lr.ph51.i133.preheader408, %.lr.ph51.i133
  %.23550.i134 = phi ptr [ %i.ho, %.lr.ph51.i133 ], [ %.23550.i134.ph, %.lr.ph51.i133.preheader408 ] ; 2 uses
  %.23849.i135 = phi ptr [ %i.hq, %.lr.ph51.i133 ], [ %.23849.i135.ph, %.lr.ph51.i133.preheader408 ] ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %.23550.i134, i64 4 ; 2 uses
  %i.hp = load i32, ptr %.23550.i134, align 4, !tbaa !14
  %i.hq = getelementptr inbounds nuw i8, ptr %.23849.i135, i64 4 ; 2 uses
  store i32 %i.hp, ptr %.23849.i135, align 4, !tbaa !14
  %i.hr = icmp ult ptr %i.ho, %i.fs
  br i1 %i.hr, label %.lr.ph51.i133, label %.preheader.i127, !llvm.loop !359

.lr.ph55.i130:                                    ; preds = %.lr.ph55.i130.preheader406, %.lr.ph55.i130
  %.254.i131 = phi ptr [ %i.hs, %.lr.ph55.i130 ], [ %.254.i131.ph, %.lr.ph55.i130.preheader406 ] ; 2 uses
  %.353.i132 = phi ptr [ %i.hu, %.lr.ph55.i130 ], [ %.353.i132.ph, %.lr.ph55.i130.preheader406 ] ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %.254.i131, i64 4 ; 2 uses
  %i.ht = load i32, ptr %.254.i131, align 4, !tbaa !14
  %i.hu = getelementptr inbounds nuw i8, ptr %.353.i132, i64 4 ; 2 uses
  store i32 %i.ht, ptr %.353.i132, align 4, !tbaa !14
  %i.hv = icmp ult ptr %i.hs, %i.fv
  br i1 %i.hv, label %.lr.ph55.i130, label %Sbd_CutMergeSimple.exit143.loopexit, !llvm.loop !360

Sbd_CutMergeSimple.exit143.loopexit:              ; preds = %.lr.ph55.i130, %middle.block346
  %.lcssa221 = phi ptr [ %i.hj, %middle.block346 ], [ %i.hu, %.lr.ph55.i130 ]
  %.pre183 = load i32, ptr %i.g, align 4, !tbaa !14 ; 2 uses
  %.pre186 = sext i32 %.pre183 to i64
  %.pre188 = shl nsw i64 %.pre186, 2
  br label %Sbd_CutMergeSimple.exit143

Sbd_CutMergeSimple.exit143:                       ; preds = %Sbd_CutMergeSimple.exit143.loopexit, %.preheader.i127
  %.idx57.i145.pre-phi = phi i64 [ %.pre188, %Sbd_CutMergeSimple.exit143.loopexit ], [ %.idx57.i121, %.preheader.i127 ] ; 2 uses
  %i.hw = phi i32 [ %.pre183, %Sbd_CutMergeSimple.exit143.loopexit ], [ %i.ft, %.preheader.i127 ]
  %.3.lcssa.i129 = phi ptr [ %.lcssa221, %Sbd_CutMergeSimple.exit143.loopexit ], [ %.238.lcssa.i128, %.preheader.i127 ]
  %i.hx = ptrtoint ptr %.3.lcssa.i129 to i64
  %i.hy = ptrtoint ptr %i.c to i64
  %i.hz = sub i64 %i.hx, %i.hy
  %i.ia = lshr exact i64 %i.hz, 2
  %i.ib = trunc i64 %i.ia to i32
  %i.ic = add i32 %i.ib, -1                       ; 2 uses
  store i32 %i.ic, ptr %i.c, align 16, !tbaa !14
  %i.id = load i32, ptr %i.e, align 4, !tbaa !14  ; 2 uses
  %i.ie = sext i32 %i.id to i64
  %.idx.i144 = shl nsw i64 %i.ie, 2               ; 2 uses
  %i.if = getelementptr inbounds i8, ptr %i.an, i64 %.idx.i144 ; 3 uses
  %i.ig = getelementptr inbounds i8, ptr %i.ao, i64 %.idx57.i145.pre-phi ; 3 uses
  %.03643.i146 = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %i.ih = icmp sgt i32 %i.id, 0
  %i.ii = icmp sgt i32 %i.hw, 0
  %i.ij = select i1 %i.ih, i1 %i.ii, i1 false
  br i1 %i.ij, label %.lr.ph.i160, label %.preheader42.i147

.preheader42.i147:                                ; preds = %bb.u, %Sbd_CutMergeSimple.exit143
  %.033.lcssa.i148 = phi ptr [ %i.an, %Sbd_CutMergeSimple.exit143 ], [ %.134.i164, %bb.u ] ; 5 uses
  %.0.lcssa.i149 = phi ptr [ %i.ao, %Sbd_CutMergeSimple.exit143 ], [ %.1.i165, %bb.u ] ; 5 uses
  %.036.lcssa.i150 = phi ptr [ %.03643.i146, %Sbd_CutMergeSimple.exit143 ], [ %.036.i166, %bb.u ] ; 5 uses
  %.0.lcssa.i149377 = ptrtoaddr ptr %.0.lcssa.i149 to i64 ; 2 uses
  %i.ik = icmp ult ptr %.033.lcssa.i148, %i.if
  br i1 %i.ik, label %.lr.ph51.i157.preheader, label %.preheader.i151

.lr.ph51.i157.preheader:                          ; preds = %.preheader42.i147
  %.036.lcssa.i150355 = ptrtoaddr ptr %.033.lcssa.i148 to i64 ; 2 uses
  %.033.lcssa.i148354 = ptrtoaddr ptr %.036.lcssa.i150 to i64
  %i.il = add i64 %.idx.i144, %i.f
  %i.im = or disjoint i64 %i.il, 3
  %i.in = sub i64 %i.im, %.036.lcssa.i150355      ; 2 uses
  %i.io = lshr i64 %i.in, 2
  %i.ip = add nuw nsw i64 %i.io, 1                ; 2 uses
  %min.iters.check357 = icmp ult i64 %i.in, 44
  %i.iq = sub i64 %.036.lcssa.i150355, %.033.lcssa.i148354
  %diff.check359 = icmp ugt i64 %i.iq, -32
  %or.cond401 = select i1 %min.iters.check357, i1 true, i1 %diff.check359
  br i1 %or.cond401, label %.lr.ph51.i157.preheader404, label %vector.ph360

vector.ph360:                                     ; preds = %.lr.ph51.i157.preheader
  %n.vec361 = and i64 %i.ip, 9223372036854775800  ; 3 uses
  %i.ir = shl i64 %n.vec361, 2                    ; 2 uses
  %i.is = getelementptr i8, ptr %.033.lcssa.i148, i64 %i.ir
  %i.it = getelementptr i8, ptr %.036.lcssa.i150, i64 %i.ir ; 2 uses
  br label %vector.body362

vector.body362:                                   ; preds = %vector.body362, %vector.ph360
  %index363 = phi i64 [ 0, %vector.ph360 ], [ %index.next368, %vector.body362 ] ; 2 uses
  %i.iu = shl i64 %index363, 2                    ; 2 uses
  %next.gep364 = getelementptr i8, ptr %.033.lcssa.i148, i64 %i.iu ; 2 uses
  %next.gep365 = getelementptr i8, ptr %.036.lcssa.i150, i64 %i.iu ; 2 uses
  %i.iv = getelementptr i8, ptr %next.gep364, i64 16
  %wide.load366 = load <4 x i32>, ptr %next.gep364, align 4, !tbaa !14
  %wide.load367 = load <4 x i32>, ptr %i.iv, align 4, !tbaa !14
  %i.iw = getelementptr i8, ptr %next.gep365, i64 16
  store <4 x i32> %wide.load366, ptr %next.gep365, align 4, !tbaa !14
  store <4 x i32> %wide.load367, ptr %i.iw, align 4, !tbaa !14
  %index.next368 = add nuw i64 %index363, 8       ; 2 uses
  %i.ix = icmp eq i64 %index.next368, %n.vec361
  br i1 %i.ix, label %middle.block369, label %vector.body362, !llvm.loop !361

middle.block369:                                  ; preds = %vector.body362
  %cmp.n370 = icmp eq i64 %i.ip, %n.vec361
  br i1 %cmp.n370, label %.preheader.i151, label %.lr.ph51.i157.preheader404

.lr.ph51.i157.preheader404:                       ; preds = %.lr.ph51.i157.preheader, %middle.block369
  %.23550.i158.ph = phi ptr [ %.033.lcssa.i148, %.lr.ph51.i157.preheader ], [ %i.is, %middle.block369 ]
  %.23849.i159.ph = phi ptr [ %.036.lcssa.i150, %.lr.ph51.i157.preheader ], [ %i.it, %middle.block369 ]
  br label %.lr.ph51.i157

.lr.ph.i160:                                      ; preds = %Sbd_CutMergeSimple.exit143, %bb.u
  %.03646.i161 = phi ptr [ %.036.i166, %bb.u ], [ %.03643.i146, %Sbd_CutMergeSimple.exit143 ] ; 4 uses
  %.045.i162 = phi ptr [ %.1.i165, %bb.u ], [ %i.ao, %Sbd_CutMergeSimple.exit143 ] ; 4 uses
  %.03344.i163 = phi ptr [ %.134.i164, %bb.u ], [ %i.an, %Sbd_CutMergeSimple.exit143 ] ; 4 uses
  %i.iy = load i32, ptr %.03344.i163, align 4, !tbaa !14 ; 4 uses
  %i.iz = load i32, ptr %.045.i162, align 4, !tbaa !14 ; 3 uses
  %i.ja = icmp eq i32 %i.iy, %i.iz
  br i1 %i.ja, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph.i160
  %i.jb = getelementptr inbounds nuw i8, ptr %.03344.i163, i64 4
  store i32 %i.iy, ptr %.03646.i161, align 4, !tbaa !14
  %i.jc = getelementptr inbounds nuw i8, ptr %.045.i162, i64 4
  br label %bb.u

bb.r:                                             ; preds = %.lr.ph.i160
  %i.jd = icmp slt i32 %i.iy, %i.iz
  br i1 %i.jd, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.je = getelementptr inbounds nuw i8, ptr %.03344.i163, i64 4
  store i32 %i.iy, ptr %.03646.i161, align 4, !tbaa !14
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.jf = getelementptr inbounds nuw i8, ptr %.045.i162, i64 4
  store i32 %i.iz, ptr %.03646.i161, align 4, !tbaa !14
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.q
  %.134.i164 = phi ptr [ %i.jb, %bb.q ], [ %i.je, %bb.s ], [ %.03344.i163, %bb.t ] ; 3 uses
  %.1.i165 = phi ptr [ %i.jc, %bb.q ], [ %.045.i162, %bb.s ], [ %i.jf, %bb.t ] ; 3 uses
  %.036.i166 = getelementptr inbounds nuw i8, ptr %.03646.i161, i64 4 ; 2 uses
  %i.jg = icmp ult ptr %.134.i164, %i.if
  %i.jh = icmp ult ptr %.1.i165, %i.ig
  %i.ji = select i1 %i.jg, i1 %i.jh, i1 false
  br i1 %i.ji, label %.lr.ph.i160, label %.preheader42.i147, !llvm.loop !4

.preheader.i151:                                  ; preds = %.lr.ph51.i157, %middle.block369, %.preheader42.i147
  %.238.lcssa.i152 = phi ptr [ %.036.lcssa.i150, %.preheader42.i147 ], [ %i.it, %middle.block369 ], [ %i.jz, %.lr.ph51.i157 ] ; 5 uses
  %i.jj = icmp ult ptr %.0.lcssa.i149, %i.ig
  br i1 %i.jj, label %.lr.ph55.i154.preheader, label %Sbd_CutMergeSimple.exit167

.lr.ph55.i154.preheader:                          ; preds = %.preheader.i151
  %.238.lcssa.i152378 = ptrtoaddr ptr %.238.lcssa.i152 to i64
  %i.jk = add i64 %.idx57.i145.pre-phi, %i.h
  %i.jl = or disjoint i64 %i.jk, 3
  %i.jm = sub i64 %i.jl, %.0.lcssa.i149377        ; 2 uses
  %i.jn = lshr i64 %i.jm, 2
  %i.jo = add nuw nsw i64 %i.jn, 1                ; 2 uses
  %min.iters.check380 = icmp ult i64 %i.jm, 44
  %i.jp = sub i64 %.0.lcssa.i149377, %.238.lcssa.i152378
  %diff.check382 = icmp ugt i64 %i.jp, -32
  %or.cond402 = select i1 %min.iters.check380, i1 true, i1 %diff.check382
  br i1 %or.cond402, label %.lr.ph55.i154.preheader403, label %vector.ph383

vector.ph383:                                     ; preds = %.lr.ph55.i154.preheader
  %n.vec384 = and i64 %i.jo, 9223372036854775800  ; 3 uses
  %i.jq = shl i64 %n.vec384, 2                    ; 2 uses
  %i.jr = getelementptr i8, ptr %.0.lcssa.i149, i64 %i.jq
  %i.js = getelementptr i8, ptr %.238.lcssa.i152, i64 %i.jq ; 2 uses
  br label %vector.body385

vector.body385:                                   ; preds = %vector.body385, %vector.ph383
  %index386 = phi i64 [ 0, %vector.ph383 ], [ %index.next391, %vector.body385 ] ; 2 uses
  %i.jt = shl i64 %index386, 2                    ; 2 uses
  %next.gep387 = getelementptr i8, ptr %.0.lcssa.i149, i64 %i.jt ; 2 uses
  %next.gep388 = getelementptr i8, ptr %.238.lcssa.i152, i64 %i.jt ; 2 uses
  %i.ju = getelementptr i8, ptr %next.gep387, i64 16
  %wide.load389 = load <4 x i32>, ptr %next.gep387, align 4, !tbaa !14
  %wide.load390 = load <4 x i32>, ptr %i.ju, align 4, !tbaa !14
  %i.jv = getelementptr i8, ptr %next.gep388, i64 16
  store <4 x i32> %wide.load389, ptr %next.gep388, align 4, !tbaa !14
  store <4 x i32> %wide.load390, ptr %i.jv, align 4, !tbaa !14
  %index.next391 = add nuw i64 %index386, 8       ; 2 uses
  %i.jw = icmp eq i64 %index.next391, %n.vec384
  br i1 %i.jw, label %middle.block392, label %vector.body385, !llvm.loop !362

middle.block392:                                  ; preds = %vector.body385
  %cmp.n393 = icmp eq i64 %i.jo, %n.vec384
  br i1 %cmp.n393, label %Sbd_CutMergeSimple.exit167, label %.lr.ph55.i154.preheader403

.lr.ph55.i154.preheader403:                       ; preds = %.lr.ph55.i154.preheader, %middle.block392
  %.254.i155.ph = phi ptr [ %.0.lcssa.i149, %.lr.ph55.i154.preheader ], [ %i.jr, %middle.block392 ]
  %.353.i156.ph = phi ptr [ %.238.lcssa.i152, %.lr.ph55.i154.preheader ], [ %i.js, %middle.block392 ]
  br label %.lr.ph55.i154

.lr.ph51.i157:                                    ; preds = %.lr.ph51.i157.preheader404, %.lr.ph51.i157
  %.23550.i158 = phi ptr [ %i.jx, %.lr.ph51.i157 ], [ %.23550.i158.ph, %.lr.ph51.i157.preheader404 ] ; 2 uses
  %.23849.i159 = phi ptr [ %i.jz, %.lr.ph51.i157 ], [ %.23849.i159.ph, %.lr.ph51.i157.preheader404 ] ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %.23550.i158, i64 4 ; 2 uses
  %i.jy = load i32, ptr %.23550.i158, align 4, !tbaa !14
  %i.jz = getelementptr inbounds nuw i8, ptr %.23849.i159, i64 4 ; 2 uses
  store i32 %i.jy, ptr %.23849.i159, align 4, !tbaa !14
  %i.ka = icmp ult ptr %i.jx, %i.if
  br i1 %i.ka, label %.lr.ph51.i157, label %.preheader.i151, !llvm.loop !363

.lr.ph55.i154:                                    ; preds = %.lr.ph55.i154.preheader403, %.lr.ph55.i154
  %.254.i155 = phi ptr [ %i.kb, %.lr.ph55.i154 ], [ %.254.i155.ph, %.lr.ph55.i154.preheader403 ] ; 2 uses
  %.353.i156 = phi ptr [ %i.kd, %.lr.ph55.i154 ], [ %.353.i156.ph, %.lr.ph55.i154.preheader403 ] ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %.254.i155, i64 4 ; 2 uses
  %i.kc = load i32, ptr %.254.i155, align 4, !tbaa !14
  %i.kd = getelementptr inbounds nuw i8, ptr %.353.i156, i64 4 ; 2 uses
  store i32 %i.kc, ptr %.353.i156, align 4, !tbaa !14
  %i.ke = icmp ult ptr %i.kb, %i.ig
  br i1 %i.ke, label %.lr.ph55.i154, label %Sbd_CutMergeSimple.exit167, !llvm.loop !364

Sbd_CutMergeSimple.exit167:                       ; preds = %.lr.ph55.i154, %middle.block392, %.preheader.i151
  %.3.lcssa.i153 = phi ptr [ %.238.lcssa.i152, %.preheader.i151 ], [ %i.js, %middle.block392 ], [ %i.kd, %.lr.ph55.i154 ]
  %i.kf = ptrtoint ptr %.3.lcssa.i153 to i64
  %i.kg = ptrtoint ptr %i.d to i64
  %i.kh = sub i64 %i.kf, %i.kg
  %i.ki = lshr exact i64 %i.kh, 2
  %i.kj = trunc i64 %i.ki to i32
  %i.kk = add i32 %i.kj, -1                       ; 3 uses
  store i32 %i.kk, ptr %i.d, align 16, !tbaa !14
  %i.kl = load i32, ptr %.val94, align 4, !tbaa !68 ; 4 uses
  %.not78 = icmp sgt i32 %i.dg, %i.kl
  %i.km = call i32 @llvm.smax.i32(i32 %spec.select, i32 %i.ad) ; 2 uses
  %i.kn = select i1 %.not78, i32 1000000000, i32 %i.km ; 4 uses
  %.not79 = icmp sgt i32 %i.fp, %i.kl
  %i.ko = add nsw i32 %spec.select, 1
  %i.kp = call i32 @llvm.smax.i32(i32 %i.ko, i32 %i.ad)
  %i.kq = select i1 %.not79, i32 1000000000, i32 %i.kp ; 3 uses
  %.not80 = icmp sgt i32 %i.ic, %i.kl
  %i.kr = add nsw i32 %i.ad, 1
  %i.ks = call i32 @llvm.smax.i32(i32 %spec.select, i32 %i.kr)
  %i.kt = select i1 %.not80, i32 1000000000, i32 %i.ks ; 4 uses
  %.not81 = icmp sgt i32 %i.kk, %i.kl
  %i.ku = add nsw i32 %i.km, 1
  %i.kv = select i1 %.not81, i32 1000000000, i32 %i.ku ; 4 uses
  %i.kw = icmp slt i32 %i.kq, %i.kn
  br i1 %i.kw, label %bb.x, label %bb.v

bb.v:                                             ; preds = %Sbd_CutMergeSimple.exit167
  %i.kx = icmp eq i32 %i.kq, %i.kn
  br i1 %i.kx, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.ky = load i32, ptr %i.b, align 16, !tbaa !14
  %i.kz = load i32, ptr %i.a, align 16, !tbaa !14
  %i.la = icmp slt i32 %i.ky, %i.kz
  br i1 %i.la, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w, %Sbd_CutMergeSimple.exit167
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v
  %.070 = phi ptr [ %i.b, %bb.x ], [ %i.a, %bb.w ], [ %i.a, %bb.v ] ; 3 uses
  %.0 = phi i32 [ %i.kq, %bb.x ], [ %i.kn, %bb.w ], [ %i.kn, %bb.v ] ; 3 uses
  %i.lb = icmp slt i32 %i.kt, %.0
  br i1 %i.lb, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.lc = icmp eq i32 %i.kt, %.0
  br i1 %i.lc, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.ld = load i32, ptr %i.c, align 16, !tbaa !14
  %i.le = load i32, ptr %.070, align 16, !tbaa !14
  %i.lf = icmp slt i32 %i.ld, %i.le
  br i1 %i.lf, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa, %bb.y
  br label %bb.ac
end_hunk_0
