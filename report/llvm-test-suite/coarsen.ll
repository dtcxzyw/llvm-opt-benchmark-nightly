inline.NumInlined: 8
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@hypre_StructCoarsen:bb.a
  %.3518 = phi ptr [ %.0515584, %bb.b ], [ %.0515584, %.preheader568 ], [ %.2517, %bb.j ] ; 2 uses
  %.3514 = phi ptr [ %.0511585, %bb.b ], [ %.0511585, %.preheader568 ], [ %.2513, %bb.j ] ; 2 uses
  %.3510 = phi i32 [ %.0507586, %bb.b ], [ %.0507586, %.preheader568 ], [ %.2509, %bb.j ] ; 2 uses
  %.3506 = phi i32 [ %.0503587, %bb.b ], [ %.0503587, %.preheader568 ], [ %.2505, %bb.j ] ; 2 uses
  %indvars.iv.next662 = add nuw nsw i64 %indvars.iv661, 1 ; 2 uses
  %exitcond665.not = icmp eq i64 %indvars.iv.next662, %wide.trip.count664
  br i1 %exitcond665.not, label %._crit_edge591, label %bb.b, !llvm.loop !42

._crit_edge591:                                   ; preds = %.loopexit569, %._crit_edge574
  %.0515.lcssa = phi ptr [ null, %._crit_edge574 ], [ %.3518, %.loopexit569 ] ; 3 uses
  %.0511.lcssa = phi ptr [ null, %._crit_edge574 ], [ %.3514, %.loopexit569 ] ; 3 uses
  %.0507.lcssa = phi i32 [ 0, %._crit_edge574 ], [ %.3510, %.loopexit569 ] ; 8 uses
  %.0503.lcssa = phi i32 [ 0, %._crit_edge574 ], [ %.3506, %.loopexit569 ] ; 13 uses
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
  %.not = icmp eq i32 %.0503.lcssa, 0             ; 5 uses
  br i1 %.not, label %.loopexit567, label %bb.k

bb.k:                                             ; preds = %._crit_edge599
  %i.kj = shl i32 %.0503.lcssa, 2                 ; 3 uses
  %i.kk = call ptr @hypre_MAlloc(i32 noundef %i.kj) #5 ; 3 uses
  %i.kl = call ptr @hypre_MAlloc(i32 noundef %i.kj) #5 ; 2 uses
  %i.km = call ptr @hypre_MAlloc(i32 noundef %i.kj) #5 ; 3 uses
  %i.kn = icmp sgt i32 %.0503.lcssa, 0
  br i1 %i.kn, label %.lr.ph602.preheader, label %.loopexit567

.lr.ph602.preheader:                              ; preds = %bb.k
  %wide.trip.count674 = zext nneg i32 %.0503.lcssa to i64
  br label %.lr.ph602

.lr.ph602:                                        ; preds = %.lr.ph602.preheader, %.lr.ph602
  %indvars.iv671 = phi i64 [ 0, %.lr.ph602.preheader ], [ %indvars.iv.next672, %.lr.ph602 ] ; 4 uses
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.km, i64 %indvars.iv671
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %.0511.lcssa, i64 %indvars.iv671
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !4
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.kk, i64 %indvars.iv671
  %i.ks = call i32 @hypre_MPI_Irecv(ptr noundef %i.ko, i32 noundef 1, i32 noundef 1, i32 noundef %i.kq, i32 noundef 0, i32 noundef %i.g, ptr noundef %i.kr) #5 ; 0 uses
  %indvars.iv.next672 = add nuw nsw i64 %indvars.iv671, 1 ; 2 uses
  %exitcond675.not = icmp eq i64 %indvars.iv.next672, %wide.trip.count674
  br i1 %exitcond675.not, label %.loopexit567, label %.lr.ph602, !llvm.loop !44

.loopexit567:                                     ; preds = %.lr.ph602, %bb.k, %._crit_edge599
  %.0522 = phi ptr [ undef, %._crit_edge599 ], [ %i.kk, %bb.k ], [ %i.kk, %.lr.ph602 ] ; 4 uses
  %.0521 = phi ptr [ undef, %._crit_edge599 ], [ %i.kl, %bb.k ], [ %i.kl, %.lr.ph602 ] ; 3 uses
  %.0519 = phi ptr [ undef, %._crit_edge599 ], [ %i.km, %bb.k ], [ %i.km, %.lr.ph602 ] ; 3 uses
  %.not547 = icmp eq i32 %.0507.lcssa, 0          ; 4 uses
  br i1 %.not547, label %.loopexit566, label %bb.l

bb.l:                                             ; preds = %.loopexit567
  %i.kt = shl i32 %.0507.lcssa, 2                 ; 2 uses
  %i.ku = call ptr @hypre_MAlloc(i32 noundef %i.kt) #5 ; 3 uses
  %i.kv = call ptr @hypre_MAlloc(i32 noundef %i.kt) #5 ; 2 uses
  %i.kw = load i32, ptr %i.n, align 8, !tbaa !21
  %i.kx = shl nsw i32 %i.kw, 3
  store i32 %i.kx, ptr %i.c, align 4, !tbaa !4
  %i.ky = icmp sgt i32 %.0507.lcssa, 0
  br i1 %i.ky, label %.lr.ph605.preheader, label %.loopexit566

.lr.ph605.preheader:                              ; preds = %bb.l
  %wide.trip.count679 = zext nneg i32 %.0507.lcssa to i64
  br label %.lr.ph605

.lr.ph605:                                        ; preds = %.lr.ph605.preheader, %.lr.ph605
  %indvars.iv676 = phi i64 [ 0, %.lr.ph605.preheader ], [ %indvars.iv.next677, %.lr.ph605 ] ; 3 uses
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %.0515.lcssa, i64 %indvars.iv676
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !4
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %i.ku, i64 %indvars.iv676
  %i.lc = call i32 @hypre_MPI_Isend(ptr noundef nonnull %i.c, i32 noundef 1, i32 noundef 1, i32 noundef %i.la, i32 noundef 0, i32 noundef %i.g, ptr noundef %i.lb) #5 ; 0 uses
  %indvars.iv.next677 = add nuw nsw i64 %indvars.iv676, 1 ; 2 uses
  %exitcond680.not = icmp eq i64 %indvars.iv.next677, %wide.trip.count679
  br i1 %exitcond680.not, label %.loopexit566, label %.lr.ph605, !llvm.loop !45

.loopexit566:                                     ; preds = %.lr.ph605, %bb.l, %.loopexit567
  %.0525 = phi ptr [ undef, %.loopexit567 ], [ %i.ku, %bb.l ], [ %i.ku, %.lr.ph605 ] ; 4 uses
  %.0524 = phi ptr [ undef, %.loopexit567 ], [ %i.kv, %bb.l ], [ %i.kv, %.lr.ph605 ] ; 3 uses
  br i1 %.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.loopexit566
  %i.ld = call i32 @hypre_MPI_Waitall(i32 noundef %.0503.lcssa, ptr noundef %.0522, ptr noundef %.0521) #5 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.loopexit566
  br i1 %.not547, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.le = call i32 @hypre_MPI_Waitall(i32 noundef %.0507.lcssa, ptr noundef %.0525, ptr noundef %.0524) #5 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  br i1 %.not, label %.loopexit565, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.lf = shl i32 %.0503.lcssa, 3
  %i.lg = call ptr @hypre_MAlloc(i32 noundef %i.lf) #5 ; 3 uses
  %i.lh = icmp sgt i32 %.0503.lcssa, 0
  br i1 %i.lh, label %.lr.ph608.preheader, label %.loopexit565

.lr.ph608.preheader:                              ; preds = %bb.q
  %wide.trip.count684 = zext nneg i32 %.0503.lcssa to i64
  br label %.lr.ph608

.lr.ph608:                                        ; preds = %.lr.ph608.preheader, %.lr.ph608
  %indvars.iv681 = phi i64 [ 0, %.lr.ph608.preheader ], [ %indvars.iv.next682, %.lr.ph608 ] ; 5 uses
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %.0519, i64 %indvars.iv681 ; 2 uses
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !4
  %i.lk = shl i32 %i.lj, 2
  %i.ll = call ptr @hypre_MAlloc(i32 noundef %i.lk) #5 ; 2 uses
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %i.lg, i64 %indvars.iv681
  store ptr %i.ll, ptr %i.lm, align 8, !tbaa !46
  %i.ln = load i32, ptr %i.li, align 4, !tbaa !4
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %.0511.lcssa, i64 %indvars.iv681
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !4
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %.0522, i64 %indvars.iv681
  %i.lr = call i32 @hypre_MPI_Irecv(ptr noundef %i.ll, i32 noundef %i.ln, i32 noundef 1, i32 noundef %i.lp, i32 noundef 0, i32 noundef %i.g, ptr noundef %i.lq) #5 ; 0 uses
  %indvars.iv.next682 = add nuw nsw i64 %indvars.iv681, 1 ; 2 uses
  %exitcond685.not = icmp eq i64 %indvars.iv.next682, %wide.trip.count684
  br i1 %exitcond685.not, label %.loopexit565, label %.lr.ph608, !llvm.loop !47

.loopexit565:                                     ; preds = %.lr.ph608, %bb.q, %bb.p
  %.0520 = phi ptr [ undef, %bb.p ], [ %i.lg, %bb.q ], [ %i.lg, %.lr.ph608 ] ; 4 uses
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
  %i.lw = icmp sgt i32 %.0507.lcssa, 0
  br i1 %i.lw, label %.lr.ph618.preheader, label %.loopexit

.lr.ph618.preheader:                              ; preds = %.preheader564
  %wide.trip.count702 = zext nneg i32 %.0507.lcssa to i64
  br label %.lr.ph618

bb.s:                                             ; preds = %.lr.ph616, %bb.s
  %indvars.iv694 = phi i64 [ 0, %.lr.ph616 ], [ %indvars.iv.next695, %bb.s ] ; 4 uses
  %.1472614 = phi i32 [ 0, %.lr.ph616 ], [ %indvars.iv.next687.2, %bb.s ] ; 3 uses
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv694
  %i.ly = load i32, ptr %i.lx, align 4, !tbaa !4
  %5 = sext i32 %.1472614 to i64
  %i.lz = getelementptr [4 x i8], ptr %i.lu, i64 %5 ; 3 uses
  store i32 %i.ly, ptr %i.lz, align 4, !tbaa !4
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv694
  %i.mb = load i32, ptr %i.ma, align 4, !tbaa !4
  %i.mc = getelementptr i8, ptr %i.lz, i64 4
  store i32 %i.mb, ptr %i.mc, align 4, !tbaa !4
  %i.md = getelementptr inbounds nuw [24 x i8], ptr %i.lv, i64 %indvars.iv694 ; 6 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 12
  %.2473609 = or disjoint i32 %.1472614, 2
  %6 = sext i32 %.2473609 to i64                  ; 3 uses
  %7 = load i32, ptr %i.md, align 4, !tbaa !4
  %8 = getelementptr [4 x i8], ptr %i.lu, i64 %6  ; 2 uses
  store i32 %7, ptr %8, align 4, !tbaa !4
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !4
  %i.mg = getelementptr i8, ptr %i.lz, i64 12
  store i32 %i.mf, ptr %i.mg, align 4, !tbaa !4
  %i.mh = getelementptr inbounds nuw i8, ptr %i.md, i64 4
  %i.mi = load i32, ptr %i.mh, align 4, !tbaa !4
  %i.mj = getelementptr [4 x i8], ptr %i.lu, i64 %6 ; 2 uses
  %i.mk = getelementptr i8, ptr %i.mj, i64 8
  store i32 %i.mi, ptr %i.mk, align 4, !tbaa !4
  %i.ml = getelementptr inbounds nuw i8, ptr %i.md, i64 16
  %i.mm = load i32, ptr %i.ml, align 4, !tbaa !4
  %i.mn = getelementptr i8, ptr %8, i64 12
  store i32 %i.mm, ptr %i.mn, align 4, !tbaa !4
  %i.mo = getelementptr inbounds nuw i8, ptr %i.md, i64 8
  %i.mp = load i32, ptr %i.mo, align 4, !tbaa !4
  %i.mq = getelementptr [4 x i8], ptr %i.lu, i64 %6
  %i.mr = getelementptr i8, ptr %i.mq, i64 16
  store i32 %i.mp, ptr %i.mr, align 4, !tbaa !4
  %i.ms = getelementptr inbounds nuw i8, ptr %i.md, i64 20
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !4
  %i.mu = getelementptr i8, ptr %i.mj, i64 20
  store i32 %i.mt, ptr %i.mu, align 4, !tbaa !4
  %indvars.iv.next687.2 = add i32 %.1472614, 8
  %indvars.iv.next695 = add nuw nsw i64 %indvars.iv694, 1 ; 2 uses
  %exitcond698.not = icmp eq i64 %indvars.iv.next695, %wide.trip.count697
  br i1 %exitcond698.not, label %.preheader564, label %bb.s, !llvm.loop !48

.lr.ph618:                                        ; preds = %.lr.ph618.preheader, %.lr.ph618
  %indvars.iv699 = phi i64 [ 0, %.lr.ph618.preheader ], [ %indvars.iv.next700, %.lr.ph618 ] ; 3 uses
  %i.mv = load i32, ptr %i.c, align 4, !tbaa !4
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %.0515.lcssa, i64 %indvars.iv699
  %i.mx = load i32, ptr %i.mw, align 4, !tbaa !4
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %.0525, i64 %indvars.iv699
  %i.mz = call i32 @hypre_MPI_Isend(ptr noundef %i.lu, i32 noundef %i.mv, i32 noundef 1, i32 noundef %i.mx, i32 noundef 0, i32 noundef %i.g, ptr noundef %i.my) #5 ; 0 uses
  %indvars.iv.next700 = add nuw nsw i64 %indvars.iv699, 1 ; 2 uses
  %exitcond703.not = icmp eq i64 %indvars.iv.next700, %wide.trip.count702
  br i1 %exitcond703.not, label %.loopexit, label %.lr.ph618, !llvm.loop !49

.loopexit:                                        ; preds = %.lr.ph618, %.preheader564, %.loopexit565
  %.0523 = phi ptr [ undef, %.loopexit565 ], [ %i.lu, %.preheader564 ], [ %i.lu, %.lr.ph618 ]
  br i1 %.not, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.loopexit
  %i.na = call i32 @hypre_MPI_Waitall(i32 noundef %.0503.lcssa, ptr noundef %.0522, ptr noundef %.0521) #5 ; 0 uses
  call void @hypre_Free(ptr noundef %.0522) #5
  call void @hypre_Free(ptr noundef %.0521) #5
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.loopexit
  br i1 %.not547, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.nb = call i32 @hypre_MPI_Waitall(i32 noundef %.0507.lcssa, ptr noundef %.0525, ptr noundef %.0524) #5 ; 0 uses
  call void @hypre_Free(ptr noundef %.0525) #5
  call void @hypre_Free(ptr noundef %.0524) #5
  call void @hypre_Free(ptr noundef %.0523) #5
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  br i1 %.not, label %bb.aj, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.nc = call ptr @hypre_BoxArrayCreate(i32 noundef %i.o) #5 ; 4 uses
  %i.nd = call i32 @hypre_BoxArraySetSize(ptr noundef %i.nc, i32 noundef 0) #5 ; 0 uses
  %i.ne = call ptr @hypre_MAlloc(i32 noundef %i.r) #5
  %i.nf = call ptr @hypre_MAlloc(i32 noundef %i.r) #5
  %i.ng = call ptr @hypre_BoxCreate() #5          ; 3 uses
  %i.nh = call ptr @hypre_CAlloc(i32 noundef %.0503.lcssa, i32 noundef 4) #5 ; 3 uses
  %i.ni = icmp sgt i32 %.0503.lcssa, 0            ; 3 uses
  %wide.trip.count707 = zext nneg i32 %.0503.lcssa to i64
  %i.nj = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.nk = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.nl = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.nm = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  br label %bb.y

bb.y:                                             ; preds = %bb.ai, %bb.x
  %indvars.iv717 = phi i64 [ %indvars.iv.next718, %bb.ai ], [ 0, %bb.x ] ; 8 uses
  %.0500 = phi ptr [ %.1501, %bb.ai ], [ %i.ne, %bb.x ] ; 3 uses
  %.0498 = phi ptr [ %.1499, %bb.ai ], [ %i.nf, %bb.x ] ; 3 uses
  %.0491 = phi i32 [ %.2493, %bb.ai ], [ undef, %bb.x ] ; 3 uses
  %.0483 = phi i32 [ %.1484, %bb.ai ], [ %i.o, %bb.x ] ; 3 uses
  %.3474 = phi i32 [ %.5, %bb.ai ], [ 0, %bb.x ]  ; 6 uses
  %.0464 = phi i32 [ %.2.lcssa754, %bb.ai ], [ undef, %bb.x ]
  %i.nn = icmp slt i32 %.3474, %i.o
  br i1 %i.nn, label %bb.z, label %.thread

bb.z:                                             ; preds = %bb.y
  %i.no = sext i32 %.3474 to i64
  %i.np = getelementptr inbounds [4 x i8], ptr %i.bw, i64 %i.no
  %i.nq = load i32, ptr %i.np, align 4, !tbaa !4  ; 2 uses
  br i1 %i.ni, label %.lr.ph623.preheader, label %._crit_edge624.thread

.thread:                                          ; preds = %bb.y
  br i1 %i.ni, label %.lr.ph623.preheader, label %._crit_edge633

.lr.ph623.preheader:                              ; preds = %.thread, %bb.z
  %.2621.ph = phi i32 [ %i.nq, %bb.z ], [ %.0464, %.thread ]
  %.1466620.ph = phi i32 [ -1, %bb.z ], [ -2, %.thread ]
  br label %.lr.ph623

.lr.ph623:                                        ; preds = %.lr.ph623.preheader, %bb.ad
  %indvars.iv704 = phi i64 [ %indvars.iv.next705, %bb.ad ], [ 0, %.lr.ph623.preheader ] ; 5 uses
  %.2621 = phi i32 [ %.3, %bb.ad ], [ %.2621.ph, %.lr.ph623.preheader ] ; 5 uses
  %.1466620 = phi i32 [ %.2467, %bb.ad ], [ %.1466620.ph, %.lr.ph623.preheader ] ; 4 uses
  %i.nr = getelementptr inbounds nuw [4 x i8], ptr %i.nh, i64 %indvars.iv704 ; 2 uses
  %i.ns = load i32, ptr %i.nr, align 4, !tbaa !4  ; 3 uses
  %i.nt = getelementptr inbounds nuw [4 x i8], ptr %.0519, i64 %indvars.iv704
  %i.nu = load i32, ptr %i.nt, align 4, !tbaa !4
  %i.nv = icmp slt i32 %i.ns, %i.nu
  br i1 %i.nv, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %.lr.ph623
  %i.nw = icmp eq i32 %.1466620, -2
  %i.nx = trunc nuw nsw i64 %indvars.iv704 to i32
  %i.ny = getelementptr inbounds nuw [8 x i8], ptr %.0520, i64 %indvars.iv704
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !46
  %i.oa = sext i32 %i.ns to i64
  %i.ob = getelementptr inbounds [4 x i8], ptr %i.nz, i64 %i.oa
  %i.oc = load i32, ptr %i.ob, align 4, !tbaa !4  ; 3 uses
  %i.od = icmp slt i32 %i.oc, %.2621
  %or.cond770 = select i1 %i.nw, i1 true, i1 %i.od
  br i1 %or.cond770, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.oe = icmp eq i32 %i.oc, %.2621
  br i1 %i.oe, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.of = add nsw i32 %i.ns, 8
  store i32 %i.of, ptr %i.nr, align 4, !tbaa !4
  br label %bb.ad

bb.ad:                                            ; preds = %bb.aa, %.lr.ph623, %bb.ac, %bb.ab
  %.2467 = phi i32 [ %i.nx, %bb.aa ], [ %.1466620, %.lr.ph623 ], [ %.1466620, %bb.ac ], [ %.1466620, %bb.ab ] ; 3 uses
  %.3 = phi i32 [ %i.oc, %bb.aa ], [ %.2621, %.lr.ph623 ], [ %.2621, %bb.ac ], [ %.2621, %bb.ab ] ; 2 uses
  %indvars.iv.next705 = add nuw nsw i64 %indvars.iv704, 1 ; 2 uses
  %exitcond708.not = icmp eq i64 %indvars.iv.next705, %wide.trip.count707
  br i1 %exitcond708.not, label %._crit_edge624, label %.lr.ph623, !llvm.loop !50

._crit_edge624:                                   ; preds = %bb.ad
  %i.og = icmp sgt i32 %.2467, -2
  br i1 %i.og, label %._crit_edge624.thread, label %.preheader563

.preheader563:                                    ; preds = %._crit_edge624
  br i1 %i.ni, label %.lr.ph632.preheader, label %._crit_edge633

.lr.ph632.preheader:                              ; preds = %.preheader563
  %wide.trip.count723 = zext nneg i32 %.0503.lcssa to i64
  br label %.lr.ph632

._crit_edge624.thread:                            ; preds = %bb.z, %._crit_edge624
  %.2.lcssa754 = phi i32 [ %.3, %._crit_edge624 ], [ %i.nq, %bb.z ]
  %.1466.lcssa753 = phi i32 [ %.2467, %._crit_edge624 ], [ -1, %bb.z ] ; 2 uses
  %i.oh = zext i32 %.0483 to i64
  %i.oi = icmp eq i64 %indvars.iv717, %i.oh
  br i1 %i.oi, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %._crit_edge624.thread
  %i.oj = add nsw i32 %.0483, %i.o                ; 2 uses
  %i.ok = shl i32 %i.oj, 2                        ; 2 uses
  %i.ol = call ptr @hypre_ReAlloc(ptr noundef %.0500, i32 noundef %i.ok) #5
  %i.om = call ptr @hypre_ReAlloc(ptr noundef %.0498, i32 noundef %i.ok) #5
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %._crit_edge624.thread
  %.1501 = phi ptr [ %i.ol, %bb.ae ], [ %.0500, %._crit_edge624.thread ] ; 3 uses
  %.1499 = phi ptr [ %i.om, %bb.ae ], [ %.0498, %._crit_edge624.thread ] ; 3 uses
  %.1484 = phi i32 [ %i.oj, %bb.ae ], [ %.0483, %._crit_edge624.thread ]
  %i.on = icmp eq i32 %.1466.lcssa753, -1
  br i1 %i.on, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.oo = sext i32 %.3474 to i64                  ; 3 uses
  %i.op = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.oo
  %i.oq = load i32, ptr %i.op, align 4, !tbaa !4
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %.1501, i64 %indvars.iv717
  store i32 %i.oq, ptr %i.or, align 4, !tbaa !4
  %i.os = getelementptr inbounds [4 x i8], ptr %i.bw, i64 %i.oo
  %i.ot = load i32, ptr %i.os, align 4, !tbaa !4
  %i.ou = getelementptr inbounds nuw [4 x i8], ptr %.1499, i64 %indvars.iv717
  store i32 %i.ot, ptr %i.ou, align 4, !tbaa !4
  %i.ov = load ptr, ptr %i.m, align 8, !tbaa !40
  %i.ow = getelementptr inbounds [24 x i8], ptr %i.ov, i64 %i.oo
  %i.ox = call i32 @hypre_AppendBox(ptr noundef %i.ow, ptr noundef %i.nc) #5 ; 0 uses
  %i.oy = icmp eq i32 %.3474, %i.by
  %i.oz = trunc nuw nsw i64 %indvars.iv717 to i32
  %spec.select = select i1 %i.oy, i32 %i.oz, i32 %.0491
  %i.pa = add nsw i32 %.3474, 1
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.pb = zext nneg i32 %.1466.lcssa753 to i64    ; 2 uses
  %i.pc = getelementptr inbounds nuw [4 x i8], ptr %i.nh, i64 %i.pb ; 2 uses
  %i.pd = load i32, ptr %i.pc, align 4, !tbaa !4  ; 3 uses
  %i.pe = getelementptr inbounds nuw [8 x i8], ptr %.0520, i64 %i.pb
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !46 ; 4 uses
  %i.pg = sext i32 %i.pd to i64
  %i.ph = getelementptr [4 x i8], ptr %i.pf, i64 %i.pg ; 3 uses
  %i.pi = load i32, ptr %i.ph, align 4, !tbaa !4
  %i.pj = getelementptr inbounds nuw [4 x i8], ptr %.1499, i64 %indvars.iv717
  store i32 %i.pi, ptr %i.pj, align 4, !tbaa !4
  %i.pk = getelementptr i8, ptr %i.ph, i64 4
  %i.pl = load i32, ptr %i.pk, align 4, !tbaa !4
  %i.pm = getelementptr inbounds nuw [4 x i8], ptr %.1501, i64 %indvars.iv717
  store i32 %i.pl, ptr %i.pm, align 4, !tbaa !4
  %.0627 = add i32 %i.pd, 2
  %9 = sext i32 %.0627 to i64                     ; 3 uses
  %10 = getelementptr [4 x i8], ptr %i.pf, i64 %9 ; 2 uses
  %i.pn = load i32, ptr %10, align 4, !tbaa !4
  store i32 %i.pn, ptr %i.e, align 4, !tbaa !4
  %i.po = getelementptr i8, ptr %i.ph, i64 12
  %i.pp = load i32, ptr %i.po, align 4, !tbaa !4
  store i32 %i.pp, ptr %i.f, align 4, !tbaa !4
  %i.pq = getelementptr [4 x i8], ptr %i.pf, i64 %9 ; 2 uses
  %i.pr = getelementptr i8, ptr %i.pq, i64 8
  %i.ps = load i32, ptr %i.pr, align 4, !tbaa !4
  store i32 %i.ps, ptr %i.nj, align 4, !tbaa !4
  %i.pt = getelementptr i8, ptr %10, i64 12
  %i.pu = load i32, ptr %i.pt, align 4, !tbaa !4
  store i32 %i.pu, ptr %i.nk, align 4, !tbaa !4
  %i.pv = getelementptr [4 x i8], ptr %i.pf, i64 %9
  %i.pw = getelementptr i8, ptr %i.pv, i64 16
  %i.px = load i32, ptr %i.pw, align 4, !tbaa !4
  store i32 %i.px, ptr %i.nl, align 4, !tbaa !4
  %i.py = getelementptr i8, ptr %i.pq, i64 20
  %i.pz = load i32, ptr %i.py, align 4, !tbaa !4
  store i32 %i.pz, ptr %i.nm, align 4, !tbaa !4
  %indvars.iv.next710.2 = add i32 %i.pd, 8
  %i.qa = call i32 @hypre_BoxSetExtents(ptr noundef %i.ng, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) #5 ; 0 uses
  %i.qb = call i32 @hypre_AppendBox(ptr noundef %i.ng, ptr noundef %i.nc) #5 ; 0 uses
  store i32 %indvars.iv.next710.2, ptr %i.pc, align 4, !tbaa !4
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.2493 = phi i32 [ %spec.select, %bb.ag ], [ %.0491, %bb.ah ]
  %.5 = phi i32 [ %i.pa, %bb.ag ], [ %.3474, %bb.ah ]
  %indvars.iv.next718 = add nuw nsw i64 %indvars.iv717, 1
  br label %bb.y

.lr.ph632:                                        ; preds = %.lr.ph632.preheader, %.lr.ph632
  %indvars.iv720 = phi i64 [ 0, %.lr.ph632.preheader ], [ %indvars.iv.next721, %.lr.ph632 ] ; 2 uses
  %i.qc = getelementptr inbounds nuw [8 x i8], ptr %.0520, i64 %indvars.iv720 ; 2 uses
  %i.qd = load ptr, ptr %i.qc, align 8, !tbaa !46
  call void @hypre_Free(ptr noundef %i.qd) #5
  store ptr null, ptr %i.qc, align 8, !tbaa !46
  %indvars.iv.next721 = add nuw nsw i64 %indvars.iv720, 1 ; 2 uses
  %exitcond724.not = icmp eq i64 %indvars.iv.next721, %wide.trip.count723
  br i1 %exitcond724.not, label %._crit_edge633, label %.lr.ph632, !llvm.loop !51

._crit_edge633:                                   ; preds = %.thread, %.lr.ph632, %.preheader563
  %i.qe = trunc i64 %indvars.iv717 to i32
  call void @hypre_Free(ptr noundef %.0520) #5
  call void @hypre_Free(ptr noundef %.0519) #5
  %i.qf = call i32 @hypre_BoxDestroy(ptr noundef %i.ng) #5 ; 0 uses
  call void @hypre_Free(ptr noundef %i.nh) #5
  %i.qg = call i32 @hypre_BoxArrayDestroy(ptr noundef %i.m) #5 ; 0 uses
  call void @hypre_Free(ptr noundef %i.s) #5
  call void @hypre_Free(ptr noundef %i.bw) #5
  br label %bb.aj

bb.aj:                                            ; preds = %._crit_edge633, %bb.w
  %.0533 = phi ptr [ %i.nc, %._crit_edge633 ], [ %i.m, %bb.w ] ; 3 uses
  %.0532 = phi i32 [ %i.qe, %._crit_edge633 ], [ %i.o, %bb.w ] ; 2 uses
  %.0531 = phi ptr [ %.0500, %._crit_edge633 ], [ %i.s, %bb.w ] ; 3 uses
  %.0530 = phi ptr [ %.0498, %._crit_edge633 ], [ %i.bw, %bb.w ] ; 3 uses
  %.0528 = phi i32 [ %.0491, %._crit_edge633 ], [ %i.by, %bb.w ] ; 3 uses
  call void @hypre_Free(ptr noundef %.0515.lcssa) #5
  call void @hypre_Free(ptr noundef %.0511.lcssa) #5
  %.not548 = icmp eq i32 %3, 0
  br i1 %.not548, label %bb.aq, label %.preheader

.preheader:                                       ; preds = %bb.aj
  %i.qh = icmp sgt i32 %.0532, 0
  br i1 %i.qh, label %.lr.ph640, label %._crit_edge641

.lr.ph640:                                        ; preds = %.preheader
  %i.qi = load ptr, ptr %.0533, align 8, !tbaa !40 ; 2 uses
  %i.qj = add nsw i32 %.0528, %i.ca               ; 2 uses
  %i.qk = add nsw i32 %i.qj, %i.cc
  %i.ql = sext i32 %i.qk to i64
  %i.qm = sext i32 %i.qj to i64                   ; 2 uses
  %i.qn = sext i32 %.0528 to i64
  %wide.trip.count728 = zext nneg i32 %.0532 to i64
  br label %bb.ak

bb.ak:                                            ; preds = %.lr.ph640, %bb.ap
  %indvars.iv725 = phi i64 [ 0, %.lr.ph640 ], [ %indvars.iv.next726, %bb.ap ] ; 8 uses
  %.6639 = phi i32 [ 0, %.lr.ph640 ], [ %.7, %bb.ap ] ; 4 uses
  %.0485636 = phi i32 [ 0, %.lr.ph640 ], [ %.2487, %bb.ap ] ; 3 uses
  %.0488635 = phi i32 [ 0, %.lr.ph640 ], [ %.2490, %bb.ap ] ; 3 uses
  %.3494634 = phi i32 [ -1, %.lr.ph640 ], [ %.6497, %bb.ap ] ; 4 uses
  %i.qo = getelementptr inbounds nuw [24 x i8], ptr %i.qi, i64 %indvars.iv725 ; 6 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qo, i64 12
  %i.qq = load i32, ptr %i.qp, align 4, !tbaa !4  ; 2 uses
  %i.qr = load i32, ptr %i.qo, align 4, !tbaa !4  ; 2 uses
  %.not551 = icmp slt i32 %i.qq, %i.qr
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qo, i64 16
  %i.qt = load i32, ptr %i.qs, align 4, !tbaa !4  ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qo, i64 4
  %i.qv = load i32, ptr %i.qu, align 4, !tbaa !4  ; 2 uses
  %.not552 = icmp slt i32 %i.qt, %i.qv
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qo, i64 20
  %i.qx = load i32, ptr %i.qw, align 4, !tbaa !4  ; 2 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qo, i64 8
  %i.qz = load i32, ptr %i.qy, align 4, !tbaa !4  ; 2 uses
  %.not550 = icmp slt i32 %i.qx, %i.qz
  %i.ra = select i1 %.not550, i1 true, i1 %.not552
  %.not549 = select i1 %i.ra, i1 true, i1 %.not551
  br i1 %.not549, label %bb.ap, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.rb = sext i32 %.6639 to i64                  ; 3 uses
  %i.rc = getelementptr inbounds [24 x i8], ptr %i.qi, i64 %i.rb ; 6 uses
  store i32 %i.qr, ptr %i.rc, align 4, !tbaa !4
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 4
  store i32 %i.qv, ptr %i.rd, align 4, !tbaa !4
  %i.re = getelementptr inbounds nuw i8, ptr %i.rc, i64 8
  store i32 %i.qz, ptr %i.re, align 4, !tbaa !4
  %i.rf = getelementptr inbounds nuw i8, ptr %i.rc, i64 12
  store i32 %i.qq, ptr %i.rf, align 4, !tbaa !4
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rc, i64 16
  store i32 %i.qt, ptr %i.rg, align 4, !tbaa !4
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rc, i64 20
  store i32 %i.qx, ptr %i.rh, align 4, !tbaa !4
  %i.ri = getelementptr inbounds nuw [4 x i8], ptr %.0531, i64 %indvars.iv725
  %i.rj = load i32, ptr %i.ri, align 4, !tbaa !4
  %i.rk = getelementptr inbounds [4 x i8], ptr %.0531, i64 %i.rb
  store i32 %i.rj, ptr %i.rk, align 4, !tbaa !4
  %i.rl = getelementptr inbounds nuw [4 x i8], ptr %.0530, i64 %indvars.iv725
  %i.rm = load i32, ptr %i.rl, align 4, !tbaa !4
  %i.rn = getelementptr inbounds [4 x i8], ptr %.0530, i64 %i.rb
  store i32 %i.rm, ptr %i.rn, align 4, !tbaa !4
  %.not553 = icmp sge i64 %indvars.iv725, %i.qn
  %i.ro = icmp slt i64 %indvars.iv725, %i.qm
  %or.cond = select i1 %.not553, i1 %i.ro, i1 false
  br i1 %or.cond, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.rp = icmp eq i32 %.3494634, -1
  %spec.select559 = select i1 %i.rp, i32 %.6639, i32 %.3494634
  %i.rq = add nsw i32 %.0488635, 1
  br label %bb.ao

bb.an:                                            ; preds = %bb.al
  %.not554 = icmp sge i64 %indvars.iv725, %i.qm
  %i.rr = icmp slt i64 %indvars.iv725, %i.ql
  %or.cond561 = select i1 %.not554, i1 %i.rr, i1 false
  %i.rs = zext i1 %or.cond561 to i32
  %spec.select562 = add nsw i32 %.0485636, %i.rs
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.5496 = phi i32 [ %spec.select559, %bb.am ], [ %.3494634, %bb.an ]
  %.1489 = phi i32 [ %i.rq, %bb.am ], [ %.0488635, %bb.an ]
  %.1486 = phi i32 [ %.0485636, %bb.am ], [ %spec.select562, %bb.an ]
  %i.rt = add nsw i32 %.6639, 1
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ak, %bb.ao
  %.6497 = phi i32 [ %.5496, %bb.ao ], [ %.3494634, %bb.ak ] ; 2 uses
  %.2490 = phi i32 [ %.1489, %bb.ao ], [ %.0488635, %bb.ak ] ; 2 uses
  %.2487 = phi i32 [ %.1486, %bb.ao ], [ %.0485636, %bb.ak ] ; 2 uses
  %.7 = phi i32 [ %i.rt, %bb.ao ], [ %.6639, %bb.ak ] ; 2 uses
  %indvars.iv.next726 = add nuw nsw i64 %indvars.iv725, 1 ; 2 uses
  %exitcond729.not = icmp eq i64 %indvars.iv.next726, %wide.trip.count728
  br i1 %exitcond729.not, label %._crit_edge641, label %bb.ak, !llvm.loop !52

._crit_edge641:                                   ; preds = %bb.ap, %.preheader
  %.3494.lcssa = phi i32 [ -1, %.preheader ], [ %.6497, %bb.ap ]
  %.0488.lcssa = phi i32 [ 0, %.preheader ], [ %.2490, %bb.ap ]
  %.0485.lcssa = phi i32 [ 0, %.preheader ], [ %.2487, %bb.ap ]
  %.6.lcssa = phi i32 [ 0, %.preheader ], [ %.7, %bb.ap ]
  %i.ru = call i32 @hypre_BoxArraySetSize(ptr noundef %.0533, i32 noundef %.6.lcssa) #5 ; 0 uses
  br label %bb.aq

bb.aq:                                            ; preds = %._crit_edge641, %bb.aj
  %.1529 = phi i32 [ %.3494.lcssa, %._crit_edge641 ], [ %.0528, %bb.aj ]
  %.0527 = phi i32 [ %.0488.lcssa, %._crit_edge641 ], [ %i.ca, %bb.aj ]
  %.0526 = phi i32 [ %.0485.lcssa, %._crit_edge641 ], [ %i.cc, %bb.aj ]
  %i.rv = call i32 @hypre_StructGridCreate(i32 noundef %i.g, i32 noundef %i.i, ptr noundef nonnull %i.a) #5 ; 0 uses
  %i.rw = load ptr, ptr %i.a, align 8, !tbaa !53
  %i.rx = call i32 @hypre_StructGridSetHood(ptr noundef %i.rw, ptr noundef %.0533, ptr noundef %.0531, ptr noundef %.0530, i32 noundef %.1529, i32 noundef %.0527, i32 noundef %.0526, ptr noundef nonnull %i.ch) #5 ; 0 uses
  %i.ry = load ptr, ptr %i.a, align 8, !tbaa !53
  %i.rz = call i32 @hypre_StructGridSetHoodInfo(ptr noundef %i.ry, i32 noundef %i.ce) #5 ; 0 uses
  %i.sa = icmp sgt i32 %i.i, 0
  br i1 %i.sa, label %.lr.ph648.preheader, label %._crit_edge649

.lr.ph648.preheader:                              ; preds = %bb.aq
  %wide.trip.count733 = zext nneg i32 %i.i to i64 ; 2 uses
  %xtraiter812 = and i64 %wide.trip.count733, 1
  %i.sb = icmp eq i32 %i.i, 1
  br i1 %i.sb, label %.lr.ph648.epil.preheader, label %.lr.ph648.preheader.new

.lr.ph648.preheader.new:                          ; preds = %.lr.ph648.preheader
  %unroll_iter = and i64 %wide.trip.count733, 2147483646
  br label %.lr.ph648

.lr.ph648:                                        ; preds = %bb.at, %.lr.ph648.preheader.new
  %indvars.iv730 = phi i64 [ 0, %.lr.ph648.preheader.new ], [ %indvars.iv.next731.1, %bb.at ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph648.preheader.new ], [ %niter.next.1, %bb.at ]
  %i.sc = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv730 ; 2 uses
  %i.sd = load i32, ptr %i.sc, align 8, !tbaa !4  ; 2 uses
  %i.se = icmp sgt i32 %i.sd, 0
  br i1 %i.se, label %bb.ar, label %.lr.ph648.1

bb.ar:                                            ; preds = %.lr.ph648
  %i.sf = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv730
  %i.sg = load i32, ptr %i.sf, align 4, !tbaa !4
  %i.sh = sdiv i32 %i.sd, %i.sg
  store i32 %i.sh, ptr %i.sc, align 8, !tbaa !4
  br label %.lr.ph648.1

.lr.ph648.1:                                      ; preds = %.lr.ph648, %bb.ar
  %indvars.iv.next731 = or disjoint i64 %indvars.iv730, 1 ; 2 uses
  %i.si = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next731 ; 2 uses
  %i.sj = load i32, ptr %i.si, align 4, !tbaa !4  ; 2 uses
  %i.sk = icmp sgt i32 %i.sj, 0
  br i1 %i.sk, label %bb.as, label %bb.at

bb.as:                                            ; preds = %.lr.ph648.1
  %i.sl = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next731
  %i.sm = load i32, ptr %i.sl, align 4, !tbaa !4
  %i.sn = sdiv i32 %i.sj, %i.sm
  store i32 %i.sn, ptr %i.si, align 4, !tbaa !4
  br label %bb.at
end_hunk_0
