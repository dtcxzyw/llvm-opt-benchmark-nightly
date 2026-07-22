inline.NumInlined: 8
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@hypre_StructCoarsen:bb.a
  %.3525 = phi ptr [ %.0522584, %bb.b ], [ %.0522584, %.preheader568 ], [ %.2524, %bb.j ] ; 2 uses
  %.3521 = phi ptr [ %.0518585, %bb.b ], [ %.0518585, %.preheader568 ], [ %.2520, %bb.j ] ; 2 uses
  %.3517 = phi i32 [ %.0514586, %bb.b ], [ %.0514586, %.preheader568 ], [ %.2516, %bb.j ] ; 2 uses
  %.3513 = phi i32 [ %.0510587, %bb.b ], [ %.0510587, %.preheader568 ], [ %.2512, %bb.j ] ; 2 uses
  %indvars.iv.next662 = add nuw nsw i64 %indvars.iv661, 1 ; 2 uses
  %exitcond665.not = icmp eq i64 %indvars.iv.next662, %wide.trip.count664
  br i1 %exitcond665.not, label %._crit_edge591, label %bb.b, !llvm.loop !42

._crit_edge591:                                   ; preds = %.loopexit569, %._crit_edge574
  %.0522.lcssa = phi ptr [ null, %._crit_edge574 ], [ %.3525, %.loopexit569 ] ; 3 uses
  %.0518.lcssa = phi ptr [ null, %._crit_edge574 ], [ %.3521, %.loopexit569 ] ; 3 uses
  %.0514.lcssa = phi i32 [ 0, %._crit_edge574 ], [ %.3517, %.loopexit569 ] ; 8 uses
  %.0510.lcssa = phi i32 [ 0, %._crit_edge574 ], [ %.3513, %.loopexit569 ] ; 13 uses
  %i.iv = call i32 @hypre_BoxDestroy(ptr noundef %i.ec) #5 ; 0 uses
  %i.iw = call i32 @hypre_BoxDestroy(ptr noundef %i.ed) #5 ; 0 uses
  br i1 %i.t, label %.lr.ph598.preheader, label %._crit_edge599

.lr.ph598.preheader:                              ; preds = %._crit_edge591
  %wide.trip.count669 = zext nneg i32 %i.o to i64
  br label %.lr.ph598

.lr.ph598:                                        ; preds = %.lr.ph598.preheader, %.lr.ph598
  %indvars.iv666 = phi i64 [ 0, %.lr.ph598.preheader ], [ %indvars.iv.next667, %.lr.ph598 ] ; 2 uses
  %i.ix = load ptr, ptr %i.m, align 8, !tbaa !40
  %i.iy = getelementptr inbounds nuw [24 x i8], ptr %i.ix, i64 %indvars.iv666 ; 8 uses
  %i.iz = call i32 @hypre_ProjectBox(ptr noundef %i.iy, ptr noundef nonnull %1, ptr noundef nonnull %2) #5 ; 0 uses
  %i.ja = load i32, ptr %i.iy, align 4, !tbaa !4
  %i.jb = load i32, ptr %1, align 4, !tbaa !4
  %i.jc = sub nsw i32 %i.ja, %i.jb
  %i.jd = load i32, ptr %2, align 4, !tbaa !4
  %i.je = sdiv i32 %i.jc, %i.jd
  store i32 %i.je, ptr %i.iy, align 4, !tbaa !4
  %i.jf = getelementptr inbounds nuw i8, ptr %i.iy, i64 4 ; 2 uses
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !4
  %i.jh = load i32, ptr %i.cw, align 4, !tbaa !4
  %i.ji = sub nsw i32 %i.jg, %i.jh
  %i.jj = load i32, ptr %i.cz, align 4, !tbaa !4
  %i.jk = sdiv i32 %i.ji, %i.jj
  store i32 %i.jk, ptr %i.jf, align 4, !tbaa !4
  %i.jl = getelementptr inbounds nuw i8, ptr %i.iy, i64 8 ; 2 uses
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !4
  %i.jn = load i32, ptr %i.de, align 4, !tbaa !4
  %i.jo = sub nsw i32 %i.jm, %i.jn
  %i.jp = load i32, ptr %i.dh, align 4, !tbaa !4
  %i.jq = sdiv i32 %i.jo, %i.jp
  store i32 %i.jq, ptr %i.jl, align 4, !tbaa !4
  %i.jr = getelementptr inbounds nuw i8, ptr %i.iy, i64 12 ; 2 uses
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !4
  %i.jt = load i32, ptr %1, align 4, !tbaa !4
  %i.ju = sub nsw i32 %i.js, %i.jt
  %i.jv = load i32, ptr %2, align 4, !tbaa !4
  %i.jw = sdiv i32 %i.ju, %i.jv
  store i32 %i.jw, ptr %i.jr, align 4, !tbaa !4
  %i.jx = getelementptr inbounds nuw i8, ptr %i.iy, i64 16 ; 2 uses
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !4
  %i.jz = load i32, ptr %i.cw, align 4, !tbaa !4
  %i.ka = sub nsw i32 %i.jy, %i.jz
  %i.kb = load i32, ptr %i.cz, align 4, !tbaa !4
  %i.kc = sdiv i32 %i.ka, %i.kb
  store i32 %i.kc, ptr %i.jx, align 4, !tbaa !4
  %i.kd = getelementptr inbounds nuw i8, ptr %i.iy, i64 20 ; 2 uses
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !4
  %i.kf = load i32, ptr %i.de, align 4, !tbaa !4
  %i.kg = sub nsw i32 %i.ke, %i.kf
  %i.kh = load i32, ptr %i.dh, align 4, !tbaa !4
  %i.ki = sdiv i32 %i.kg, %i.kh
  store i32 %i.ki, ptr %i.kd, align 4, !tbaa !4
  %indvars.iv.next667 = add nuw nsw i64 %indvars.iv666, 1 ; 2 uses
  %exitcond670.not = icmp eq i64 %indvars.iv.next667, %wide.trip.count669
  br i1 %exitcond670.not, label %._crit_edge599, label %.lr.ph598, !llvm.loop !43

._crit_edge599:                                   ; preds = %.lr.ph598, %._crit_edge591
  %.not = icmp eq i32 %.0510.lcssa, 0             ; 5 uses
  br i1 %.not, label %.loopexit567, label %bb.k

bb.k:                                             ; preds = %._crit_edge599
  %i.kj = shl i32 %.0510.lcssa, 2                 ; 3 uses
  %i.kk = call ptr @hypre_MAlloc(i32 noundef %i.kj) #5 ; 3 uses
  %i.kl = call ptr @hypre_MAlloc(i32 noundef %i.kj) #5 ; 2 uses
  %i.km = call ptr @hypre_MAlloc(i32 noundef %i.kj) #5 ; 3 uses
  %i.kn = icmp sgt i32 %.0510.lcssa, 0
  br i1 %i.kn, label %.lr.ph602.preheader, label %.loopexit567

.lr.ph602.preheader:                              ; preds = %bb.k
  %wide.trip.count674 = zext nneg i32 %.0510.lcssa to i64
  br label %.lr.ph602

.lr.ph602:                                        ; preds = %.lr.ph602.preheader, %.lr.ph602
  %indvars.iv671 = phi i64 [ 0, %.lr.ph602.preheader ], [ %indvars.iv.next672, %.lr.ph602 ] ; 4 uses
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.km, i64 %indvars.iv671
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %.0518.lcssa, i64 %indvars.iv671
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !4
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.kk, i64 %indvars.iv671
  %i.ks = call i32 @hypre_MPI_Irecv(ptr noundef %i.ko, i32 noundef 1, i32 noundef 1, i32 noundef %i.kq, i32 noundef 0, i32 noundef %i.g, ptr noundef %i.kr) #5 ; 0 uses
  %indvars.iv.next672 = add nuw nsw i64 %indvars.iv671, 1 ; 2 uses
  %exitcond675.not = icmp eq i64 %indvars.iv.next672, %wide.trip.count674
  br i1 %exitcond675.not, label %.loopexit567, label %.lr.ph602, !llvm.loop !44

.loopexit567:                                     ; preds = %.lr.ph602, %bb.k, %._crit_edge599
  %.0529 = phi ptr [ undef, %._crit_edge599 ], [ %i.kk, %bb.k ], [ %i.kk, %.lr.ph602 ] ; 4 uses
  %.0528 = phi ptr [ undef, %._crit_edge599 ], [ %i.kl, %bb.k ], [ %i.kl, %.lr.ph602 ] ; 3 uses
  %.0526 = phi ptr [ undef, %._crit_edge599 ], [ %i.km, %bb.k ], [ %i.km, %.lr.ph602 ] ; 3 uses
  %.not547 = icmp eq i32 %.0514.lcssa, 0          ; 4 uses
  br i1 %.not547, label %.loopexit566, label %bb.l

bb.l:                                             ; preds = %.loopexit567
  %i.kt = shl i32 %.0514.lcssa, 2                 ; 2 uses
  %i.ku = call ptr @hypre_MAlloc(i32 noundef %i.kt) #5 ; 3 uses
  %i.kv = call ptr @hypre_MAlloc(i32 noundef %i.kt) #5 ; 2 uses
  %i.kw = load i32, ptr %i.n, align 8, !tbaa !21
  %i.kx = shl nsw i32 %i.kw, 3
  store i32 %i.kx, ptr %i.c, align 4, !tbaa !4
  %i.ky = icmp sgt i32 %.0514.lcssa, 0
  br i1 %i.ky, label %.lr.ph605.preheader, label %.loopexit566

.lr.ph605.preheader:                              ; preds = %bb.l
  %wide.trip.count679 = zext nneg i32 %.0514.lcssa to i64
  br label %.lr.ph605

.lr.ph605:                                        ; preds = %.lr.ph605.preheader, %.lr.ph605
  %indvars.iv676 = phi i64 [ 0, %.lr.ph605.preheader ], [ %indvars.iv.next677, %.lr.ph605 ] ; 3 uses
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %.0522.lcssa, i64 %indvars.iv676
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !4
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %i.ku, i64 %indvars.iv676
  %i.lc = call i32 @hypre_MPI_Isend(ptr noundef nonnull %i.c, i32 noundef 1, i32 noundef 1, i32 noundef %i.la, i32 noundef 0, i32 noundef %i.g, ptr noundef %i.lb) #5 ; 0 uses
  %indvars.iv.next677 = add nuw nsw i64 %indvars.iv676, 1 ; 2 uses
  %exitcond680.not = icmp eq i64 %indvars.iv.next677, %wide.trip.count679
  br i1 %exitcond680.not, label %.loopexit566, label %.lr.ph605, !llvm.loop !45

.loopexit566:                                     ; preds = %.lr.ph605, %bb.l, %.loopexit567
  %.0532 = phi ptr [ undef, %.loopexit567 ], [ %i.ku, %bb.l ], [ %i.ku, %.lr.ph605 ] ; 4 uses
  %.0531 = phi ptr [ undef, %.loopexit567 ], [ %i.kv, %bb.l ], [ %i.kv, %.lr.ph605 ] ; 3 uses
  br i1 %.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.loopexit566
  %i.ld = call i32 @hypre_MPI_Waitall(i32 noundef %.0510.lcssa, ptr noundef %.0529, ptr noundef %.0528) #5 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.loopexit566
  br i1 %.not547, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.le = call i32 @hypre_MPI_Waitall(i32 noundef %.0514.lcssa, ptr noundef %.0532, ptr noundef %.0531) #5 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  br i1 %.not, label %.loopexit565, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.lf = shl i32 %.0510.lcssa, 3
  %i.lg = call ptr @hypre_MAlloc(i32 noundef %i.lf) #5 ; 3 uses
  %i.lh = icmp sgt i32 %.0510.lcssa, 0
  br i1 %i.lh, label %.lr.ph608.preheader, label %.loopexit565

.lr.ph608.preheader:                              ; preds = %bb.q
  %wide.trip.count684 = zext nneg i32 %.0510.lcssa to i64
  br label %.lr.ph608

.lr.ph608:                                        ; preds = %.lr.ph608.preheader, %.lr.ph608
  %indvars.iv681 = phi i64 [ 0, %.lr.ph608.preheader ], [ %indvars.iv.next682, %.lr.ph608 ] ; 5 uses
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %.0526, i64 %indvars.iv681 ; 2 uses
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !4
  %i.lk = shl i32 %i.lj, 2
  %i.ll = call ptr @hypre_MAlloc(i32 noundef %i.lk) #5 ; 2 uses
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %i.lg, i64 %indvars.iv681
  store ptr %i.ll, ptr %i.lm, align 8, !tbaa !46
  %i.ln = load i32, ptr %i.li, align 4, !tbaa !4
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %.0518.lcssa, i64 %indvars.iv681
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !4
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %.0529, i64 %indvars.iv681
  %i.lr = call i32 @hypre_MPI_Irecv(ptr noundef %i.ll, i32 noundef %i.ln, i32 noundef 1, i32 noundef %i.lp, i32 noundef 0, i32 noundef %i.g, ptr noundef %i.lq) #5 ; 0 uses
  %indvars.iv.next682 = add nuw nsw i64 %indvars.iv681, 1 ; 2 uses
  %exitcond685.not = icmp eq i64 %indvars.iv.next682, %wide.trip.count684
  br i1 %exitcond685.not, label %.loopexit565, label %.lr.ph608, !llvm.loop !47

.loopexit565:                                     ; preds = %.lr.ph608, %bb.q, %bb.p
  %.0527 = phi ptr [ undef, %bb.p ], [ %i.lg, %bb.q ], [ %i.lg, %.lr.ph608 ] ; 4 uses
  br i1 %.not547, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %.loopexit565
  %i.ls = load i32, ptr %i.c, align 4, !tbaa !4
  %i.lt = shl i32 %i.ls, 2
  %i.lu = call ptr @hypre_MAlloc(i32 noundef %i.lt) #5 ; 7 uses
  br i1 %i.t, label %.lr.ph616, label %.preheader564

.lr.ph616:                                        ; preds = %bb.r
  %i.lv = load ptr, ptr %i.m, align 8, !tbaa !40
  %wide.trip.count697 = zext nneg i32 %i.o to i64
  br label %bb.s

.preheader564:                                    ; preds = %bb.s, %bb.r
  %i.lw = icmp sgt i32 %.0514.lcssa, 0
  br i1 %i.lw, label %.lr.ph618.preheader, label %.loopexit

.lr.ph618.preheader:                              ; preds = %.preheader564
  %wide.trip.count702 = zext nneg i32 %.0514.lcssa to i64
  br label %.lr.ph618

bb.s:                                             ; preds = %.lr.ph616, %bb.s
  %indvars.iv694 = phi i64 [ 0, %.lr.ph616 ], [ %indvars.iv.next695, %bb.s ] ; 4 uses
  %.1473614 = phi i32 [ 0, %.lr.ph616 ], [ %indvars.iv.next687.2, %bb.s ] ; 2 uses
  %5 = sext i32 %.1473614 to i64                  ; 4 uses
  %6 = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv694
  %7 = load i32, ptr %6, align 4, !tbaa !4
  %i.lx = getelementptr [4 x i8], ptr %i.lu, i64 %5 ; 3 uses
  store i32 %7, ptr %i.lx, align 4, !tbaa !4
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv694
  %i.lz = load i32, ptr %i.ly, align 4, !tbaa !4
  %i.ma = getelementptr i8, ptr %i.lx, i64 4
  store i32 %i.lz, ptr %i.ma, align 4, !tbaa !4
  %i.mb = getelementptr inbounds nuw [24 x i8], ptr %i.lv, i64 %indvars.iv694 ; 6 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 12
  %8 = load i32, ptr %i.mb, align 4, !tbaa !4
  %9 = getelementptr [4 x i8], ptr %i.lu, i64 %5  ; 2 uses
  %10 = getelementptr i8, ptr %9, i64 8
  store i32 %8, ptr %10, align 4, !tbaa !4
  %i.md = load i32, ptr %i.mc, align 4, !tbaa !4
  %i.me = getelementptr i8, ptr %i.lx, i64 12
  store i32 %i.md, ptr %i.me, align 4, !tbaa !4
  %i.mf = getelementptr inbounds nuw i8, ptr %i.mb, i64 4
  %i.mg = load i32, ptr %i.mf, align 4, !tbaa !4
  %i.mh = getelementptr [4 x i8], ptr %i.lu, i64 %5 ; 2 uses
  %i.mi = getelementptr i8, ptr %i.mh, i64 16
  store i32 %i.mg, ptr %i.mi, align 4, !tbaa !4
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mb, i64 16
  %i.mk = load i32, ptr %i.mj, align 4, !tbaa !4
  %i.ml = getelementptr i8, ptr %9, i64 20
  store i32 %i.mk, ptr %i.ml, align 4, !tbaa !4
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mb, i64 8
  %i.mn = load i32, ptr %i.mm, align 4, !tbaa !4
  %i.mo = getelementptr [4 x i8], ptr %i.lu, i64 %5
  %i.mp = getelementptr i8, ptr %i.mo, i64 24
  store i32 %i.mn, ptr %i.mp, align 4, !tbaa !4
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mb, i64 20
  %i.mr = load i32, ptr %i.mq, align 4, !tbaa !4
  %i.ms = getelementptr i8, ptr %i.mh, i64 28
  store i32 %i.mr, ptr %i.ms, align 4, !tbaa !4
  %indvars.iv.next687.2 = add i32 %.1473614, 8
  %indvars.iv.next695 = add nuw nsw i64 %indvars.iv694, 1 ; 2 uses
  %exitcond698.not = icmp eq i64 %indvars.iv.next695, %wide.trip.count697
  br i1 %exitcond698.not, label %.preheader564, label %bb.s, !llvm.loop !48

.lr.ph618:                                        ; preds = %.lr.ph618.preheader, %.lr.ph618
  %indvars.iv699 = phi i64 [ 0, %.lr.ph618.preheader ], [ %indvars.iv.next700, %.lr.ph618 ] ; 3 uses
  %i.mt = load i32, ptr %i.c, align 4, !tbaa !4
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr %.0522.lcssa, i64 %indvars.iv699
  %i.mv = load i32, ptr %i.mu, align 4, !tbaa !4
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %.0532, i64 %indvars.iv699
  %i.mx = call i32 @hypre_MPI_Isend(ptr noundef %i.lu, i32 noundef %i.mt, i32 noundef 1, i32 noundef %i.mv, i32 noundef 0, i32 noundef %i.g, ptr noundef %i.mw) #5 ; 0 uses
  %indvars.iv.next700 = add nuw nsw i64 %indvars.iv699, 1 ; 2 uses
  %exitcond703.not = icmp eq i64 %indvars.iv.next700, %wide.trip.count702
  br i1 %exitcond703.not, label %.loopexit, label %.lr.ph618, !llvm.loop !49

.loopexit:                                        ; preds = %.lr.ph618, %.preheader564, %.loopexit565
  %.0530 = phi ptr [ undef, %.loopexit565 ], [ %i.lu, %.preheader564 ], [ %i.lu, %.lr.ph618 ]
  br i1 %.not, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.loopexit
  %i.my = call i32 @hypre_MPI_Waitall(i32 noundef %.0510.lcssa, ptr noundef %.0529, ptr noundef %.0528) #5 ; 0 uses
  call void @hypre_Free(ptr noundef %.0529) #5
  call void @hypre_Free(ptr noundef %.0528) #5
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.loopexit
  br i1 %.not547, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.mz = call i32 @hypre_MPI_Waitall(i32 noundef %.0514.lcssa, ptr noundef %.0532, ptr noundef %.0531) #5 ; 0 uses
  call void @hypre_Free(ptr noundef %.0532) #5
  call void @hypre_Free(ptr noundef %.0531) #5
  call void @hypre_Free(ptr noundef %.0530) #5
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  br i1 %.not, label %bb.aj, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.na = call ptr @hypre_BoxArrayCreate(i32 noundef %i.o) #5 ; 4 uses
  %i.nb = call i32 @hypre_BoxArraySetSize(ptr noundef %i.na, i32 noundef 0) #5 ; 0 uses
  %i.nc = call ptr @hypre_MAlloc(i32 noundef %i.r) #5
  %i.nd = call ptr @hypre_MAlloc(i32 noundef %i.r) #5
  %i.ne = call ptr @hypre_BoxCreate() #5          ; 3 uses
  %i.nf = call ptr @hypre_CAlloc(i32 noundef %.0510.lcssa, i32 noundef 4) #5 ; 3 uses
  %i.ng = icmp sgt i32 %.0510.lcssa, 0            ; 3 uses
  %wide.trip.count707 = zext nneg i32 %.0510.lcssa to i64
  %i.nh = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.ni = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.nj = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.nk = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  br label %bb.y

bb.y:                                             ; preds = %bb.ai, %bb.x
  %indvars.iv717 = phi i64 [ %indvars.iv.next718, %bb.ai ], [ 0, %bb.x ] ; 8 uses
  %.0506 = phi ptr [ %.1507, %bb.ai ], [ %i.nc, %bb.x ] ; 3 uses
  %.0504 = phi ptr [ %.1505, %bb.ai ], [ %i.nd, %bb.x ] ; 3 uses
  %.0497 = phi i32 [ %.2499, %bb.ai ], [ undef, %bb.x ] ; 3 uses
  %.0484 = phi i32 [ %.1485, %bb.ai ], [ %i.o, %bb.x ] ; 3 uses
  %.3475 = phi i32 [ %.5, %bb.ai ], [ 0, %bb.x ]  ; 6 uses
  %.0464 = phi i32 [ %.2.lcssa754, %bb.ai ], [ undef, %bb.x ]
  %i.nl = icmp slt i32 %.3475, %i.o
  br i1 %i.nl, label %bb.z, label %.thread

bb.z:                                             ; preds = %bb.y
  %i.nm = sext i32 %.3475 to i64
  %i.nn = getelementptr inbounds [4 x i8], ptr %i.bw, i64 %i.nm
  %i.no = load i32, ptr %i.nn, align 4, !tbaa !4  ; 2 uses
  br i1 %i.ng, label %.lr.ph623.preheader, label %._crit_edge624.thread

.thread:                                          ; preds = %bb.y
  br i1 %i.ng, label %.lr.ph623.preheader, label %._crit_edge633

.lr.ph623.preheader:                              ; preds = %.thread, %bb.z
  %.2621.ph = phi i32 [ %i.no, %bb.z ], [ %.0464, %.thread ]
  %.1466620.ph = phi i32 [ -1, %bb.z ], [ -2, %.thread ]
  br label %.lr.ph623

.lr.ph623:                                        ; preds = %.lr.ph623.preheader, %bb.ad
  %indvars.iv704 = phi i64 [ %indvars.iv.next705, %bb.ad ], [ 0, %.lr.ph623.preheader ] ; 5 uses
  %.2621 = phi i32 [ %.3, %bb.ad ], [ %.2621.ph, %.lr.ph623.preheader ] ; 5 uses
  %.1466620 = phi i32 [ %.2467, %bb.ad ], [ %.1466620.ph, %.lr.ph623.preheader ] ; 4 uses
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %i.nf, i64 %indvars.iv704 ; 2 uses
  %i.nq = load i32, ptr %i.np, align 4, !tbaa !4  ; 3 uses
  %i.nr = getelementptr inbounds nuw [4 x i8], ptr %.0526, i64 %indvars.iv704
  %i.ns = load i32, ptr %i.nr, align 4, !tbaa !4
  %i.nt = icmp slt i32 %i.nq, %i.ns
  br i1 %i.nt, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %.lr.ph623
  %i.nu = icmp eq i32 %.1466620, -2
  %i.nv = trunc nuw nsw i64 %indvars.iv704 to i32
  %i.nw = getelementptr inbounds nuw [8 x i8], ptr %.0527, i64 %indvars.iv704
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !46
  %i.ny = sext i32 %i.nq to i64
  %i.nz = getelementptr inbounds [4 x i8], ptr %i.nx, i64 %i.ny
  %i.oa = load i32, ptr %i.nz, align 4, !tbaa !4  ; 3 uses
  %i.ob = icmp slt i32 %i.oa, %.2621
  %or.cond770 = select i1 %i.nu, i1 true, i1 %i.ob
  br i1 %or.cond770, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.oc = icmp eq i32 %i.oa, %.2621
  br i1 %i.oc, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.od = add nsw i32 %i.nq, 8
  store i32 %i.od, ptr %i.np, align 4, !tbaa !4
  br label %bb.ad

bb.ad:                                            ; preds = %bb.aa, %.lr.ph623, %bb.ac, %bb.ab
  %.2467 = phi i32 [ %i.nv, %bb.aa ], [ %.1466620, %.lr.ph623 ], [ %.1466620, %bb.ac ], [ %.1466620, %bb.ab ] ; 3 uses
  %.3 = phi i32 [ %i.oa, %bb.aa ], [ %.2621, %.lr.ph623 ], [ %.2621, %bb.ac ], [ %.2621, %bb.ab ] ; 2 uses
  %indvars.iv.next705 = add nuw nsw i64 %indvars.iv704, 1 ; 2 uses
  %exitcond708.not = icmp eq i64 %indvars.iv.next705, %wide.trip.count707
  br i1 %exitcond708.not, label %._crit_edge624, label %.lr.ph623, !llvm.loop !50

._crit_edge624:                                   ; preds = %bb.ad
  %i.oe = icmp sgt i32 %.2467, -2
  br i1 %i.oe, label %._crit_edge624.thread, label %.preheader563

.preheader563:                                    ; preds = %._crit_edge624
  br i1 %i.ng, label %.lr.ph632.preheader, label %._crit_edge633

.lr.ph632.preheader:                              ; preds = %.preheader563
  %wide.trip.count723 = zext nneg i32 %.0510.lcssa to i64
  br label %.lr.ph632

._crit_edge624.thread:                            ; preds = %bb.z, %._crit_edge624
  %.2.lcssa754 = phi i32 [ %.3, %._crit_edge624 ], [ %i.no, %bb.z ]
  %.1466.lcssa753 = phi i32 [ %.2467, %._crit_edge624 ], [ -1, %bb.z ] ; 2 uses
  %i.of = zext i32 %.0484 to i64
  %i.og = icmp eq i64 %indvars.iv717, %i.of
  br i1 %i.og, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %._crit_edge624.thread
  %i.oh = add nsw i32 %.0484, %i.o                ; 2 uses
  %i.oi = shl i32 %i.oh, 2                        ; 2 uses
  %i.oj = call ptr @hypre_ReAlloc(ptr noundef %.0506, i32 noundef %i.oi) #5
  %i.ok = call ptr @hypre_ReAlloc(ptr noundef %.0504, i32 noundef %i.oi) #5
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %._crit_edge624.thread
  %.1507 = phi ptr [ %i.oj, %bb.ae ], [ %.0506, %._crit_edge624.thread ] ; 3 uses
  %.1505 = phi ptr [ %i.ok, %bb.ae ], [ %.0504, %._crit_edge624.thread ] ; 3 uses
  %.1485 = phi i32 [ %i.oh, %bb.ae ], [ %.0484, %._crit_edge624.thread ]
  %i.ol = icmp eq i32 %.1466.lcssa753, -1
  br i1 %i.ol, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.om = sext i32 %.3475 to i64                  ; 3 uses
  %i.on = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.om
  %i.oo = load i32, ptr %i.on, align 4, !tbaa !4
  %i.op = getelementptr inbounds nuw [4 x i8], ptr %.1507, i64 %indvars.iv717
  store i32 %i.oo, ptr %i.op, align 4, !tbaa !4
  %i.oq = getelementptr inbounds [4 x i8], ptr %i.bw, i64 %i.om
  %i.or = load i32, ptr %i.oq, align 4, !tbaa !4
  %i.os = getelementptr inbounds nuw [4 x i8], ptr %.1505, i64 %indvars.iv717
  store i32 %i.or, ptr %i.os, align 4, !tbaa !4
  %i.ot = load ptr, ptr %i.m, align 8, !tbaa !40
  %i.ou = getelementptr inbounds [24 x i8], ptr %i.ot, i64 %i.om
  %i.ov = call i32 @hypre_AppendBox(ptr noundef %i.ou, ptr noundef %i.na) #5 ; 0 uses
  %i.ow = icmp eq i32 %.3475, %i.by
  %i.ox = trunc nuw nsw i64 %indvars.iv717 to i32
  %spec.select = select i1 %i.ow, i32 %i.ox, i32 %.0497
  %i.oy = add nsw i32 %.3475, 1
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.oz = zext nneg i32 %.1466.lcssa753 to i64    ; 2 uses
  %i.pa = getelementptr inbounds nuw [4 x i8], ptr %i.nf, i64 %i.oz ; 2 uses
  %i.pb = load i32, ptr %i.pa, align 4, !tbaa !4  ; 3 uses
  %i.pc = getelementptr inbounds nuw [8 x i8], ptr %.0527, i64 %i.oz
  %i.pd = load ptr, ptr %i.pc, align 8, !tbaa !46 ; 4 uses
  %i.pe = sext i32 %i.pb to i64
  %i.pf = getelementptr [4 x i8], ptr %i.pd, i64 %i.pe ; 3 uses
  %i.pg = load i32, ptr %i.pf, align 4, !tbaa !4
  %i.ph = getelementptr inbounds nuw [4 x i8], ptr %.1505, i64 %indvars.iv717
  store i32 %i.pg, ptr %i.ph, align 4, !tbaa !4
  %i.pi = getelementptr i8, ptr %i.pf, i64 4
  %i.pj = load i32, ptr %i.pi, align 4, !tbaa !4
  %i.pk = getelementptr inbounds nuw [4 x i8], ptr %.1507, i64 %indvars.iv717
  store i32 %i.pj, ptr %i.pk, align 4, !tbaa !4
  %.0627 = add i32 %i.pb, 2
  %i.pl = sext i32 %.0627 to i64                  ; 3 uses
  %i.pm = getelementptr [4 x i8], ptr %i.pd, i64 %i.pl ; 2 uses
  %i.pn = load i32, ptr %i.pm, align 4, !tbaa !4
  store i32 %i.pn, ptr %i.e, align 4, !tbaa !4
  %i.po = getelementptr i8, ptr %i.pf, i64 12
  %i.pp = load i32, ptr %i.po, align 4, !tbaa !4
  store i32 %i.pp, ptr %i.f, align 4, !tbaa !4
  %i.pq = getelementptr [4 x i8], ptr %i.pd, i64 %i.pl ; 2 uses
  %i.pr = getelementptr i8, ptr %i.pq, i64 8
  %i.ps = load i32, ptr %i.pr, align 4, !tbaa !4
  store i32 %i.ps, ptr %i.nh, align 4, !tbaa !4
  %i.pt = getelementptr i8, ptr %i.pm, i64 12
  %i.pu = load i32, ptr %i.pt, align 4, !tbaa !4
  store i32 %i.pu, ptr %i.ni, align 4, !tbaa !4
end_hunk_0
