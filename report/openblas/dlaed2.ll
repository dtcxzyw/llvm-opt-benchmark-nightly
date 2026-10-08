Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dlaed2?download=true
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@dlaed2_:bb.a
  call void @dcopy_(ptr noundef nonnull %1, ptr noundef %i.jj, ptr noundef nonnull @c__1, ptr noundef nonnull %i.jl, ptr noundef nonnull @c__1) #6
  %i.jm = sext i32 %i.jf to i64
  %i.jn = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.jm
  %i.jo = load double, ptr %i.jn, align 8, !tbaa !37
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv578
  store double %i.jo, ptr %i.jp, align 8, !tbaa !37
  %i.jq = load i32, ptr %1, align 4, !tbaa !35
  %i.jr = add nsw i32 %i.jq, %.0474
  %indvars.iv.next579 = add nuw nsw i64 %indvars.iv578, 1
  %i.js = load i32, ptr %i.a, align 4, !tbaa !35
  %i.jt = sext i32 %i.js to i64
  %.not452.not = icmp slt i64 %indvars.iv578, %i.jt
  br i1 %.not452.not, label %.lr.ph476, label %._crit_edge477, !llvm.loop !19

._crit_edge477:                                   ; preds = %.lr.ph476, %bb.h
  call void @dlacpy_(ptr noundef nonnull @.str.2, ptr noundef nonnull %1, ptr noundef nonnull %1, ptr noundef %11, ptr noundef nonnull %1, ptr noundef %4, ptr noundef nonnull %5) #6
  call void @dcopy_(ptr noundef nonnull %1, ptr noundef %9, ptr noundef nonnull @c__1, ptr noundef nonnull %3, ptr noundef nonnull @c__1) #6
  br label %.loopexit

bb.i:                                             ; preds = %._crit_edge471
  %i.ju = load i32, ptr %2, align 4, !tbaa !35    ; 5 uses
  %.not440478 = icmp slt i32 %i.ju, 1
  br i1 %.not440478, label %._crit_edge482, label %iter.check727

iter.check727:                                    ; preds = %bb.i
  %i.jv = add nuw i32 %i.ju, 1
  %wide.trip.count584 = zext i32 %i.jv to i64
  %i.jw = zext nneg i32 %i.ju to i64              ; 5 uses
  %min.iters.check716 = icmp ult i32 %i.ju, 8
  br i1 %min.iters.check716, label %.lr.ph481.preheader, label %vector.main.loop.iter.check717

vector.main.loop.iter.check717:                   ; preds = %iter.check727
  %min.iters.check718 = icmp ult i32 %i.ju, 32
  br i1 %min.iters.check718, label %vec.epilog.ph731, label %vector.ph719

vector.ph719:                                     ; preds = %vector.main.loop.iter.check717
  %i.jx = and i64 %i.jw, 24
  %n.vec720 = and i64 %i.jw, 2147483616           ; 4 uses
  %i.jy = or disjoint i64 %n.vec720, 1
  br label %vector.body721

vector.body721:                                   ; preds = %vector.ph719, %vector.body721
  %index722 = phi i64 [ 0, %vector.ph719 ], [ %index.next723, %vector.body721 ] ; 2 uses
  %i.jz = getelementptr [4 x i8], ptr %15, i64 %index722 ; 4 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 32
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jz, i64 64
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jz, i64 96
  store <8 x i32> splat (i32 1), ptr %i.jz, align 4, !tbaa !35
  store <8 x i32> splat (i32 1), ptr %i.ka, align 4, !tbaa !35
  store <8 x i32> splat (i32 1), ptr %i.kb, align 4, !tbaa !35
  store <8 x i32> splat (i32 1), ptr %i.kc, align 4, !tbaa !35
  %index.next723 = add nuw i64 %index722, 32      ; 2 uses
  %i.kd = icmp eq i64 %index.next723, %n.vec720
  br i1 %i.kd, label %middle.block724, label %vector.body721, !llvm.loop !20

middle.block724:                                  ; preds = %vector.body721
  %cmp.n725 = icmp eq i64 %n.vec720, %i.jw
  br i1 %cmp.n725, label %._crit_edge482, label %vec.epilog.iter.check729

vec.epilog.iter.check729:                         ; preds = %middle.block724
  %min.epilog.iters.check730 = icmp eq i64 %i.jx, 0
  br i1 %min.epilog.iters.check730, label %.lr.ph481.preheader, label %vec.epilog.ph731, !prof !45

vec.epilog.ph731:                                 ; preds = %vector.main.loop.iter.check717, %vec.epilog.iter.check729
  %vec.epilog.resume.val726 = phi i64 [ %n.vec720, %vec.epilog.iter.check729 ], [ 0, %vector.main.loop.iter.check717 ]
  %n.vec732 = and i64 %i.jw, 2147483640           ; 3 uses
  %i.ke = or disjoint i64 %n.vec732, 1
  br label %vec.epilog.vector.body733

vec.epilog.vector.body733:                        ; preds = %vec.epilog.vector.body733, %vec.epilog.ph731
  %index734 = phi i64 [ %vec.epilog.resume.val726, %vec.epilog.ph731 ], [ %index.next735, %vec.epilog.vector.body733 ] ; 2 uses
  %i.kf = getelementptr [4 x i8], ptr %15, i64 %index734
  store <8 x i32> splat (i32 1), ptr %i.kf, align 4, !tbaa !35
  %index.next735 = add nuw i64 %index734, 8       ; 2 uses
  %i.kg = icmp eq i64 %index.next735, %n.vec732
  br i1 %i.kg, label %vec.epilog.middle.block736, label %vec.epilog.vector.body733, !llvm.loop !21

vec.epilog.middle.block736:                       ; preds = %vec.epilog.vector.body733
  %cmp.n737 = icmp eq i64 %n.vec732, %i.jw
  br i1 %cmp.n737, label %._crit_edge482, label %.lr.ph481.preheader

.lr.ph481.preheader:                              ; preds = %iter.check727, %vec.epilog.iter.check729, %vec.epilog.middle.block736
  %indvars.iv581.ph = phi i64 [ 1, %iter.check727 ], [ %i.jy, %vec.epilog.iter.check729 ], [ %i.ke, %vec.epilog.middle.block736 ]
  br label %.lr.ph481

.lr.ph481:                                        ; preds = %.lr.ph481.preheader, %.lr.ph481
  %indvars.iv581 = phi i64 [ %indvars.iv.next582, %.lr.ph481 ], [ %indvars.iv581.ph, %.lr.ph481.preheader ] ; 2 uses
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv581
  store i32 1, ptr %i.kh, align 4, !tbaa !35
  %indvars.iv.next582 = add nuw nsw i64 %indvars.iv581, 1 ; 2 uses
  %exitcond585.not = icmp eq i64 %indvars.iv.next582, %wide.trip.count584
  br i1 %exitcond585.not, label %._crit_edge482, label %.lr.ph481, !llvm.loop !22

._crit_edge482:                                   ; preds = %.lr.ph481, %middle.block724, %vec.epilog.middle.block736, %bb.i
  %i.ki = load i32, ptr %1, align 4, !tbaa !35    ; 3 uses
  %.not441483.not = icmp slt i32 %i.ab, %i.ki
  br i1 %.not441483.not, label %iter.check750, label %._crit_edge487

iter.check750:                                    ; preds = %._crit_edge482
  %i.kj = zext nneg i32 %i.ab to i64              ; 3 uses
  %i.kk = add nuw nsw i64 %i.kj, 1                ; 3 uses
  %i.kl = add nuw i32 %i.ki, 1
  %i.km = xor i32 %i.ab, -1
  %i.kn = add i32 %i.ki, %i.km                    ; 3 uses
  %i.ko = zext i32 %i.kn to i64
  %i.kp = add nuw nsw i64 %i.ko, 1                ; 5 uses
  %min.iters.check739 = icmp ult i32 %i.kn, 7
  br i1 %min.iters.check739, label %.lr.ph486.preheader, label %vector.main.loop.iter.check740

vector.main.loop.iter.check740:                   ; preds = %iter.check750
  %min.iters.check741 = icmp ult i32 %i.kn, 31
  br i1 %min.iters.check741, label %vec.epilog.ph754, label %vector.ph742

vector.ph742:                                     ; preds = %vector.main.loop.iter.check740
  %i.kq = and i64 %i.kp, 24
  %n.vec743 = and i64 %i.kp, 8589934560           ; 4 uses
  %i.kr = add nuw nsw i64 %i.kk, %n.vec743
  %i.ks = getelementptr [4 x i8], ptr %15, i64 %i.kj
  br label %vector.body744

vector.body744:                                   ; preds = %vector.ph742, %vector.body744
  %index745 = phi i64 [ 0, %vector.ph742 ], [ %index.next746, %vector.body744 ] ; 2 uses
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.ks, i64 %index745 ; 4 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 32
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kt, i64 64
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kt, i64 96
  store <8 x i32> splat (i32 3), ptr %i.kt, align 4, !tbaa !35
  store <8 x i32> splat (i32 3), ptr %i.ku, align 4, !tbaa !35
  store <8 x i32> splat (i32 3), ptr %i.kv, align 4, !tbaa !35
  store <8 x i32> splat (i32 3), ptr %i.kw, align 4, !tbaa !35
  %index.next746 = add nuw i64 %index745, 32      ; 2 uses
  %i.kx = icmp eq i64 %index.next746, %n.vec743
  br i1 %i.kx, label %middle.block747, label %vector.body744, !llvm.loop !23

middle.block747:                                  ; preds = %vector.body744
  %cmp.n748 = icmp eq i64 %i.kp, %n.vec743
  br i1 %cmp.n748, label %._crit_edge487, label %vec.epilog.iter.check752

vec.epilog.iter.check752:                         ; preds = %middle.block747
  %min.epilog.iters.check753 = icmp eq i64 %i.kq, 0
  br i1 %min.epilog.iters.check753, label %.lr.ph486.preheader, label %vec.epilog.ph754, !prof !45

vec.epilog.ph754:                                 ; preds = %vector.main.loop.iter.check740, %vec.epilog.iter.check752
  %vec.epilog.resume.val749 = phi i64 [ %n.vec743, %vec.epilog.iter.check752 ], [ 0, %vector.main.loop.iter.check740 ]
  %n.vec755 = and i64 %i.kp, 8589934584           ; 3 uses
  %i.ky = add nuw nsw i64 %i.kk, %n.vec755
  %i.kz = getelementptr [4 x i8], ptr %15, i64 %i.kj
  br label %vec.epilog.vector.body756

vec.epilog.vector.body756:                        ; preds = %vec.epilog.vector.body756, %vec.epilog.ph754
  %index757 = phi i64 [ %vec.epilog.resume.val749, %vec.epilog.ph754 ], [ %index.next758, %vec.epilog.vector.body756 ] ; 2 uses
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %i.kz, i64 %index757
  store <8 x i32> splat (i32 3), ptr %i.la, align 4, !tbaa !35
  %index.next758 = add nuw i64 %index757, 8       ; 2 uses
  %i.lb = icmp eq i64 %index.next758, %n.vec755
  br i1 %i.lb, label %vec.epilog.middle.block759, label %vec.epilog.vector.body756, !llvm.loop !24

vec.epilog.middle.block759:                       ; preds = %vec.epilog.vector.body756
  %cmp.n760 = icmp eq i64 %i.kp, %n.vec755
  br i1 %cmp.n760, label %._crit_edge487, label %.lr.ph486.preheader

.lr.ph486.preheader:                              ; preds = %iter.check750, %vec.epilog.iter.check752, %vec.epilog.middle.block759
  %indvars.iv586.ph = phi i64 [ %i.kk, %iter.check750 ], [ %i.kr, %vec.epilog.iter.check752 ], [ %i.ky, %vec.epilog.middle.block759 ]
  br label %.lr.ph486

.lr.ph486:                                        ; preds = %.lr.ph486.preheader, %.lr.ph486
  %indvars.iv586 = phi i64 [ %indvars.iv.next587, %.lr.ph486 ], [ %indvars.iv586.ph, %.lr.ph486.preheader ] ; 2 uses
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv586
  store i32 3, ptr %i.lc, align 4, !tbaa !35
  %indvars.iv.next587 = add nuw nsw i64 %indvars.iv586, 1 ; 2 uses
  %lftr.wideiv589 = trunc i64 %indvars.iv.next587 to i32
  %exitcond590.not = icmp eq i32 %i.kl, %lftr.wideiv589
  br i1 %exitcond590.not, label %._crit_edge487, label %.lr.ph486, !llvm.loop !25

._crit_edge487:                                   ; preds = %.lr.ph486, %middle.block747, %vec.epilog.middle.block759, %._crit_edge482
  store i32 0, ptr %0, align 4, !tbaa !35
  %i.ld = load i32, ptr %1, align 4, !tbaa !35    ; 4 uses
  %i.le = add i32 %i.ld, 1                        ; 4 uses
  store i32 %i.ld, ptr %i.a, align 4, !tbaa !35
  %.not442488 = icmp slt i32 %i.ld, 1
  br i1 %.not442488, label %.loopexit454, label %.lr.ph492.preheader

.lr.ph492.preheader:                              ; preds = %._crit_edge487
  %wide.trip.count598 = zext i32 %i.le to i64
  %i.lf = load i32, ptr %12, align 4, !tbaa !35   ; 3 uses
  %i.lg = sext i32 %i.lf to i64                   ; 2 uses
  %i.lh = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.lg
  %i.li = load double, ptr %i.lh, align 8, !tbaa !37 ; 3 uses
  %i.lj = fcmp oge double %i.li, 0.000000e+00
  %i.lk = fneg double %i.li
  %i.ll = select i1 %i.lj, double %i.li, double %i.lk
  %i.lm = fmul double %i.ja, %i.ll
  %i.ln = fcmp ugt double %i.lm, %i.iz
  br i1 %i.ln, label %.preheader, label %.lr.ph698

.lr.ph698:                                        ; preds = %.lr.ph492.preheader
  %i.lo = sext i32 %i.le to i64
  br label %bb.j

.lr.ph492:                                        ; preds = %bb.k
  %indvars.iv.next592 = add nsw i64 %indvars.iv591697, -1 ; 2 uses
  %i.lp = getelementptr [4 x i8], ptr %12, i64 %indvars.iv593696
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !35 ; 3 uses
  %i.lr = sext i32 %i.lq to i64                   ; 2 uses
  %i.ls = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.lr
  %i.lt = load double, ptr %i.ls, align 8, !tbaa !37 ; 3 uses
  %i.lu = fcmp oge double %i.lt, 0.000000e+00
  %i.lv = fneg double %i.lt
  %i.lw = select i1 %i.lu, double %i.lt, double %i.lv
  %i.lx = fmul double %i.ja, %i.lw
  %i.ly = fcmp ugt double %i.lx, %i.iz
  br i1 %i.ly, label %.lr.ph492..preheader.split.loop.exit_crit_edge, label %bb.j, !llvm.loop !26

.lr.ph492..preheader.split.loop.exit_crit_edge:   ; preds = %.lr.ph492
  %i.lz = trunc nsw i64 %indvars.iv.next592 to i32
  %i.ma = trunc nuw nsw i64 %indvars.iv.next594 to i32
  br label %.preheader

.preheader:                                       ; preds = %bb.k, %.lr.ph492.preheader, %.lr.ph492..preheader.split.loop.exit_crit_edge
  %i.mb = phi i32 [ %i.lf, %.lr.ph492.preheader ], [ %i.lq, %.lr.ph492..preheader.split.loop.exit_crit_edge ], [ %i.mg, %bb.k ] ; 2 uses
  %i.mc = phi i32 [ %i.ld, %.lr.ph492.preheader ], [ %i.mj, %.lr.ph492..preheader.split.loop.exit_crit_edge ], [ %i.mj, %bb.k ]
  %.1415.lcssa.ph = phi i32 [ 1, %.lr.ph492.preheader ], [ %i.ma, %.lr.ph492..preheader.split.loop.exit_crit_edge ], [ %i.le, %bb.k ] ; 2 uses
  %.0411.lcssa.ph = phi i32 [ %i.le, %.lr.ph492.preheader ], [ %i.lz, %.lr.ph492..preheader.split.loop.exit_crit_edge ], [ 1, %bb.k ]
  %i.md = icmp slt i32 %.1415.lcssa.ph, %i.mc
  br i1 %i.md, label %.lr.ph508.preheader, label %.loopexit454

.lr.ph508.preheader:                              ; preds = %.preheader
  %i.me = sext i32 %.1415.lcssa.ph to i64
  br label %.lr.ph508

bb.j:                                             ; preds = %.lr.ph698, %.lr.ph492
  %i.mf = phi i64 [ %i.lg, %.lr.ph698 ], [ %i.lr, %.lr.ph492 ]
  %i.mg = phi i32 [ %i.lf, %.lr.ph698 ], [ %i.lq, %.lr.ph492 ] ; 2 uses
  %indvars.iv591697 = phi i64 [ %i.lo, %.lr.ph698 ], [ %indvars.iv.next592, %.lr.ph492 ] ; 2 uses
  %indvars.iv593696 = phi i64 [ 1, %.lr.ph698 ], [ %indvars.iv.next594, %.lr.ph492 ] ; 3 uses
  %i.mh = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.mf
  store i32 4, ptr %i.mh, align 4, !tbaa !35
  %i.mi = getelementptr [4 x i8], ptr %i.s, i64 %indvars.iv591697
  %17 = getelementptr i8, ptr %i.mi, i64 -4
  store i32 %i.mg, ptr %17, align 4, !tbaa !35
  %i.mj = load i32, ptr %1, align 4, !tbaa !35    ; 3 uses
  %i.mk = zext i32 %i.mj to i64
  %i.ml = icmp eq i64 %indvars.iv593696, %i.mk
  br i1 %i.ml, label %.loopexit454, label %bb.k

bb.k:                                             ; preds = %bb.j
  %indvars.iv.next594 = add nuw nsw i64 %indvars.iv593696, 1 ; 3 uses
  %exitcond599.not = icmp eq i64 %indvars.iv.next594, %wide.trip.count598
  br i1 %exitcond599.not, label %.preheader, label %.lr.ph492, !llvm.loop !26

.lr.ph508:                                        ; preds = %.lr.ph508.preheader, %bb.t
  %indvars.iv603 = phi i64 [ %indvars.iv.next604, %bb.t ], [ %i.me, %.lr.ph508.preheader ] ; 2 uses
  %.0408507 = phi i32 [ %.1409, %bb.t ], [ %i.mb, %.lr.ph508.preheader ] ; 7 uses
  %.1412506 = phi i32 [ %.2413, %bb.t ], [ %.0411.lcssa.ph, %.lr.ph508.preheader ] ; 7 uses
  %indvars.iv.next604 = add nsw i64 %indvars.iv603, 1 ; 2 uses
  %.in = getelementptr [4 x i8], ptr %12, i64 %indvars.iv603
  %i.mm = load i32, ptr %.in, align 4, !tbaa !35  ; 6 uses
  %i.mn = load double, ptr %7, align 8, !tbaa !37
  %i.mo = sext i32 %i.mm to i64                   ; 4 uses
  %i.mp = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.mo ; 2 uses
  %i.mq = load double, ptr %i.mp, align 8, !tbaa !37 ; 4 uses
  %i.mr = fcmp oge double %i.mq, 0.000000e+00
  %i.ms = fneg double %i.mq
  %i.mt = select i1 %i.mr, double %i.mq, double %i.ms
  %i.mu = fmul double %i.mn, %i.mt
  %i.mv = fcmp ugt double %i.mu, %i.iz
  br i1 %i.mv, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph508
  %i.mw = add nsw i32 %.1412506, -1               ; 2 uses
  %i.mx = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.mo
  store i32 4, ptr %i.mx, align 4, !tbaa !35
  %i.my = sext i32 %i.mw to i64
  %i.mz = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.my
  store i32 %i.mm, ptr %i.mz, align 4, !tbaa !35
  br label %bb.t

bb.m:                                             ; preds = %.lr.ph508
  %i.na = sext i32 %.0408507 to i64               ; 3 uses
  %i.nb = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.na ; 3 uses
  %i.nc = load double, ptr %i.nb, align 8, !tbaa !37
  store double %i.nc, ptr %i.d, align 8, !tbaa !37
  store double %i.mq, ptr %i.c, align 8, !tbaa !37
  %i.nd = call double @dlapy2_(ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #6 ; 3 uses
  %i.ne = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.mo ; 3 uses
  %i.nf = load double, ptr %i.ne, align 8, !tbaa !37
  %i.ng = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.na ; 3 uses
  %i.nh = load double, ptr %i.ng, align 8, !tbaa !37 ; 2 uses
  %i.ni = fsub double %i.nf, %i.nh                ; 2 uses
  store double %i.ni, ptr %i.e, align 8, !tbaa !37
  %i.nj = load double, ptr %i.c, align 8, !tbaa !37
  %i.nk = fdiv double %i.nj, %i.nd                ; 2 uses
  store double %i.nk, ptr %i.c, align 8, !tbaa !37
  %i.nl = load double, ptr %i.d, align 8, !tbaa !37
  %i.nm = fneg double %i.nl
  %i.nn = fdiv double %i.nm, %i.nd                ; 2 uses
  store double %i.nn, ptr %i.d, align 8, !tbaa !37
  %i.no = fmul double %i.ni, %i.nk
  %i.np = fmul double %i.no, %i.nn
  %i.nq = call double @llvm.fabs.f64(double %i.np)
  %i.nr = fcmp ugt double %i.nq, %i.iz
  br i1 %i.nr, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  store double %i.nd, ptr %i.mp, align 8, !tbaa !37
  store double 0.000000e+00, ptr %i.nb, align 8, !tbaa !37
  %i.ns = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.mo ; 2 uses
  %i.nt = load i32, ptr %i.ns, align 4, !tbaa !35
  %i.nu = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.na ; 2 uses
  %i.nv = load i32, ptr %i.nu, align 4, !tbaa !35
  %.not444 = icmp eq i32 %i.nt, %i.nv
  br i1 %.not444, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i32 2, ptr %i.ns, align 4, !tbaa !35
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  store i32 4, ptr %i.nu, align 4, !tbaa !35
  %i.nw = mul nsw i32 %.0408507, %i.i
  %i.nx = sext i32 %i.nw to i64
  %i.ny = getelementptr [8 x i8], ptr %i.k, i64 %i.nx
  %i.nz = getelementptr i8, ptr %i.ny, i64 8
  %i.oa = mul nsw i32 %i.mm, %i.i
  %i.ob = sext i32 %i.oa to i64
  %i.oc = getelementptr [8 x i8], ptr %i.k, i64 %i.ob
  %i.od = getelementptr i8, ptr %i.oc, i64 8
  call void @drot_(ptr noundef nonnull %1, ptr noundef %i.nz, ptr noundef nonnull @c__1, ptr noundef %i.od, ptr noundef nonnull @c__1, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #6
  %i.oe = load double, ptr %i.c, align 8, !tbaa !37 ; 2 uses
  %i.of = load double, ptr %i.d, align 8, !tbaa !37 ; 2 uses
  %i.og = load double, ptr %i.ng, align 8, !tbaa !37 ; 2 uses
  %i.oh = fmul double %i.oe, %i.oe                ; 2 uses
  %i.oi = load double, ptr %i.ne, align 8, !tbaa !37 ; 2 uses
  %i.oj = fmul double %i.of, %i.of                ; 2 uses
  %i.ok = fmul double %i.oj, %i.oi
  %i.ol = call double @llvm.fmuladd.f64(double %i.og, double %i.oh, double %i.ok) ; 3 uses
  store double %i.ol, ptr %i.e, align 8, !tbaa !37
  %i.om = fmul double %i.oh, %i.oi
  %i.on = call double @llvm.fmuladd.f64(double %i.og, double %i.oj, double %i.om)
  store double %i.on, ptr %i.ne, align 8, !tbaa !37
  store double %i.ol, ptr %i.ng, align 8, !tbaa !37
  %i.oo = add nsw i32 %.1412506, -1               ; 2 uses
  %i.op = load i32, ptr %1, align 4, !tbaa !35
  %.not445499 = icmp sgt i32 %.1412506, %i.op
  br i1 %.not445499, label %._crit_edge503, label %.lr.ph502

.lr.ph502:                                        ; preds = %bb.p, %bb.q
  %indvars.iv600 = phi i64 [ %indvars.iv.next601, %bb.q ], [ 1, %bb.p ] ; 2 uses
  %i.oq = phi i32 [ %i.pa, %bb.q ], [ %.1412506, %bb.p ]
  %i.or = sext i32 %i.oq to i64
  %i.os = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.or ; 3 uses
  %i.ot = load i32, ptr %i.os, align 4, !tbaa !35 ; 2 uses
  %i.ou = sext i32 %i.ot to i64
  %i.ov = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.ou
  %i.ow = load double, ptr %i.ov, align 8, !tbaa !37
  %i.ox = fcmp olt double %i.ol, %i.ow
  %i.oy = getelementptr i8, ptr %i.os, i64 -4     ; 2 uses
  br i1 %i.ox, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph502
  store i32 %i.ot, ptr %i.oy, align 4, !tbaa !35
  store i32 %.0408507, ptr %i.os, align 4, !tbaa !35
  %indvars.iv.next601 = add nuw nsw i64 %indvars.iv600, 1
  %i.oz = trunc nuw nsw i64 %indvars.iv600 to i32
  %i.pa = add i32 %.1412506, %i.oz                ; 3 uses
  %i.pb = load i32, ptr %1, align 4, !tbaa !35
  %.not445 = icmp sgt i32 %i.pa, %i.pb
  br i1 %.not445, label %._crit_edge503, label %.lr.ph502

bb.r:                                             ; preds = %.lr.ph502
  store i32 %.0408507, ptr %i.oy, align 4, !tbaa !35
  br label %bb.t

._crit_edge503:                                   ; preds = %bb.q, %bb.p
  %.lcssa = phi i32 [ %.1412506, %bb.p ], [ %i.pa, %bb.q ]
  %i.pc = sext i32 %.lcssa to i64
  %i.pd = getelementptr [4 x i8], ptr %i.s, i64 %i.pc
  %i.pe = getelementptr i8, ptr %i.pd, i64 -4
  store i32 %.0408507, ptr %i.pe, align 4, !tbaa !35
  br label %bb.t

bb.s:                                             ; preds = %bb.m
  %i.pf = load i32, ptr %0, align 4, !tbaa !35
  %i.pg = add nsw i32 %i.pf, 1                    ; 2 uses
  store i32 %i.pg, ptr %0, align 4, !tbaa !35
  %i.ph = sext i32 %i.pg to i64                   ; 3 uses
  %i.pi = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.ph
  store double %i.nh, ptr %i.pi, align 8, !tbaa !37
  %i.pj = load double, ptr %i.nb, align 8, !tbaa !37
  %i.pk = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.ph
  store double %i.pj, ptr %i.pk, align 8, !tbaa !37
  %i.pl = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.ph
  store i32 %.0408507, ptr %i.pl, align 4, !tbaa !35
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %._crit_edge503, %bb.s, %bb.l
  %.2413 = phi i32 [ %i.mw, %bb.l ], [ %.1412506, %bb.s ], [ %i.oo, %._crit_edge503 ], [ %i.oo, %bb.r ]
  %.1409 = phi i32 [ %.0408507, %bb.l ], [ %i.mm, %bb.s ], [ %i.mm, %._crit_edge503 ], [ %i.mm, %bb.r ] ; 2 uses
  %i.pm = load i32, ptr %1, align 4, !tbaa !35
  %i.pn = sext i32 %i.pm to i64
  %.not443 = icmp slt i64 %indvars.iv.next604, %i.pn
  br i1 %.not443, label %.lr.ph508, label %.loopexit454

.loopexit454:                                     ; preds = %bb.j, %bb.t, %._crit_edge487, %.preheader
  %.2410 = phi i32 [ %.1409, %bb.t ], [ %i.mb, %.preheader ], [ undef, %._crit_edge487 ], [ undef, %bb.j ] ; 2 uses
  %i.po = load i32, ptr %0, align 4, !tbaa !35
  %i.pp = add nsw i32 %i.po, 1                    ; 2 uses
  store i32 %i.pp, ptr %0, align 4, !tbaa !35
  %i.pq = sext i32 %.2410 to i64                  ; 2 uses
  %i.pr = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.pq
  %i.ps = load double, ptr %i.pr, align 8, !tbaa !37
  %i.pt = sext i32 %i.pp to i64                   ; 3 uses
  %i.pu = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.pt
  store double %i.ps, ptr %i.pu, align 8, !tbaa !37
  %i.pv = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.pq
  %i.pw = load double, ptr %i.pv, align 8, !tbaa !37
  %i.px = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.pt
  store double %i.pw, ptr %i.px, align 8, !tbaa !37
  %i.py = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.pt
  store i32 %.2410, ptr %i.py, align 4, !tbaa !35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, i8 0, i64 16, i1 false), !tbaa !35
  %i.pz = load i32, ptr %1, align 4, !tbaa !35    ; 4 uses
  %.not446511 = icmp slt i32 %i.pz, 1
  br i1 %.not446511, label %._crit_edge515, label %.lr.ph514.preheader

.lr.ph514.preheader:                              ; preds = %.loopexit454
  %i.qa = zext nneg i32 %i.pz to i64              ; 2 uses
  %xtraiter789 = and i64 %i.qa, 7                 ; 3 uses
  %i.qb = icmp ult i32 %i.pz, 8
  br i1 %i.qb, label %.lr.ph514.epil.preheader, label %.lr.ph514.preheader.new

.lr.ph514.preheader.new:                          ; preds = %.lr.ph514.preheader
  %unroll_iter793 = and i64 %i.qa, 2147483640
  br label %.lr.ph514

.lr.ph514:                                        ; preds = %.lr.ph514, %.lr.ph514.preheader.new
  %indvars.iv609 = phi i64 [ 1, %.lr.ph514.preheader.new ], [ %indvars.iv.next610.7, %.lr.ph514 ] ; 9 uses
  %niter794 = phi i64 [ 0, %.lr.ph514.preheader.new ], [ %niter794.next.7, %.lr.ph514 ]
  %i.qc = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv609
  %i.qd = load i32, ptr %i.qc, align 4, !tbaa !35
end_hunk_0
