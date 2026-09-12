Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaMfs?download=true
inline.NumInlined: 356
inline.NumDeleted: 83
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 11
begin_hunk_0_@Gia_ManInsertMfs:bb.a
  store i32 %i.hs, ptr %gep.2, align 4, !tbaa !37
  %indvars.iv.next718.2 = add nsw i64 %indvars.iv717, 3 ; 2 uses
  %i.ht = getelementptr inbounds [4 x i8], ptr %.val436, i64 %indvars.iv.next718.2
  store i32 %.2327666, ptr %i.ht, align 4, !tbaa !37
  %i.hu = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv719
  %gep.3 = getelementptr i8, ptr %i.hu, i64 12
  %i.hv = trunc nsw i64 %indvars.iv.next718.2 to i32
  store i32 %i.hv, ptr %gep.3, align 4, !tbaa !37
  %indvars.iv.next718.3 = add nsw i64 %indvars.iv717, 4 ; 2 uses
  %indvars.iv.next720.3 = add nuw nsw i64 %indvars.iv719, 4 ; 2 uses
  %exitcond725.not.3 = icmp eq i64 %indvars.iv.next720.3, %wide.trip.count724
  br i1 %exitcond725.not.3, label %.loopexit.loopexit, label %scalar.ph, !llvm.loop !101

.loopexit.loopexit:                               ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next718.lcssa = phi i64 [ %i.hc, %middle.block ], [ %indvars.iv.next718.lcssa994.unr, %scalar.ph.prol.loopexit ], [ %indvars.iv.next718.3, %scalar.ph ]
  %i.hw = trunc nsw i64 %indvars.iv.next718.lcssa to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.ak
  %.2 = phi i32 [ %.0669, %bb.ak ], [ %i.hw, %.loopexit.loopexit ]
  %i.hx = add nsw i32 %i.gs, %.1321668
  %i.hy = add nuw nsw i32 %.2327666, 1            ; 2 uses
  %exitcond726.not = icmp eq i32 %i.hy, %i.e
  br i1 %exitcond726.not, label %.loopexit649, label %bb.ak, !llvm.loop !102

.loopexit649:                                     ; preds = %.loopexit, %Vec_IntStartFull.exit504, %._crit_edge662
  %.0637 = phi ptr [ null, %._crit_edge662 ], [ %i.fm, %Vec_IntStartFull.exit504 ], [ %i.fm, %.loopexit ] ; 4 uses
  %.0636 = phi ptr [ null, %._crit_edge662 ], [ %i.fx, %Vec_IntStartFull.exit504 ], [ %i.fx, %.loopexit ] ; 5 uses
  %.0635 = phi ptr [ null, %._crit_edge662 ], [ %i.gh, %Vec_IntStartFull.exit504 ], [ %i.gh, %.loopexit ] ; 6 uses
  %i.hz = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #21 ; 7 uses
  %i.ia = add i32 %i.e, -1
  %or.cond.i = icmp ult i32 %i.ia, 15
  %spec.store.select.i = select i1 %or.cond.i, i32 16, i32 %i.e ; 5 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hz, i64 4 ; 5 uses
  store i32 0, ptr %i.ib, align 4, !tbaa !35
  store i32 %spec.store.select.i, ptr %i.hz, align 8, !tbaa !42
  %.not.i505 = icmp eq i32 %spec.store.select.i, 0 ; 2 uses
  br i1 %.not.i505, label %Vec_IntAlloc.exit, label %bb.al

bb.al:                                            ; preds = %.loopexit649
  %i.ic = sext i32 %spec.store.select.i to i64
  %i.id = shl nsw i64 %i.ic, 2
  %i.ie = call noalias ptr @malloc(i64 noundef %i.id) #21
  br label %Vec_IntAlloc.exit

Vec_IntAlloc.exit:                                ; preds = %.loopexit649, %bb.al
  %i.if = phi ptr [ %i.ie, %bb.al ], [ null, %.loopexit649 ]
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hz, i64 8 ; 5 uses
  store ptr %i.if, ptr %i.ig, align 8, !tbaa !43
  %i.ih = call ptr @Sfm_NtkDfs(ptr noundef %1, ptr noundef nonnull %phi.call, ptr noundef nonnull %i.bj, ptr noundef nonnull %i.hz, i32 noundef %2, ptr noundef %.0637) #20 ; 4 uses
  %i.ii = load i32, ptr %i.ib, align 4, !tbaa !35 ; 3 uses
  %i.ij = icmp slt i32 %i.ii, 2
  br i1 %i.ij, label %Vec_IntUniqify.exit, label %bb.am

bb.am:                                            ; preds = %Vec_IntAlloc.exit
  %.val22.i = load ptr, ptr %i.ig, align 8, !tbaa !43
  %i.ik = zext nneg i32 %i.ii to i64
  call void @qsort(ptr noundef %.val22.i, i64 noundef %i.ik, i64 noundef 4, ptr noundef nonnull @Vec_IntSortCompare1) #20
  %i.il = load i32, ptr %i.ib, align 4, !tbaa !35 ; 2 uses
  %i.im = icmp sgt i32 %i.il, 1
  br i1 %i.im, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.am
  %i.in = load ptr, ptr %i.ig, align 8, !tbaa !43 ; 2 uses
  br label %bb.an

bb.an:                                            ; preds = %bb.ap, %.lr.ph.i
  %i.io = phi i32 [ %i.il, %.lr.ph.i ], [ %i.iw, %bb.ap ]
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.ap ] ; 2 uses
  %.024.i = phi i32 [ 1, %.lr.ph.i ], [ %.1.i, %bb.ap ] ; 3 uses
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.in, i64 %indvars.iv.i ; 2 uses
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !37 ; 2 uses
  %i.ir = getelementptr i8, ptr %i.ip, i64 -4
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !37
  %.not.i506 = icmp eq i32 %i.iq, %i.is
  br i1 %.not.i506, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.it = add nsw i32 %.024.i, 1
  %i.iu = sext i32 %.024.i to i64
  %i.iv = getelementptr inbounds [4 x i8], ptr %i.in, i64 %i.iu
  store i32 %i.iq, ptr %i.iv, align 4, !tbaa !37
  %.pre.i = load i32, ptr %i.ib, align 4, !tbaa !35
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.iw = phi i32 [ %.pre.i, %bb.ao ], [ %i.io, %bb.an ] ; 2 uses
  %.1.i = phi i32 [ %i.it, %bb.ao ], [ %.024.i, %bb.an ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ix = sext i32 %i.iw to i64
  %i.iy = icmp slt i64 %indvars.iv.next.i, %i.ix
  br i1 %i.iy, label %bb.an, label %._crit_edge.i, !llvm.loop !103

._crit_edge.i:                                    ; preds = %bb.ap, %bb.am
  %.0.lcssa.i = phi i32 [ 1, %bb.am ], [ %.1.i, %bb.ap ] ; 2 uses
  store i32 %.0.lcssa.i, ptr %i.ib, align 4, !tbaa !35
  br label %Vec_IntUniqify.exit

Vec_IntUniqify.exit:                              ; preds = %Vec_IntAlloc.exit, %._crit_edge.i
  %.val381 = phi i32 [ %i.ii, %Vec_IntAlloc.exit ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.iz = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #21 ; 6 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 4 ; 2 uses
  store i32 %spec.store.select.i, ptr %i.iz, align 8, !tbaa !42
  br i1 %.not.i505, label %Vec_IntAlloc.exit.thread.i512, label %Vec_IntAlloc.exit.i510

Vec_IntAlloc.exit.thread.i512:                    ; preds = %Vec_IntUniqify.exit
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  store ptr null, ptr %i.jb, align 8, !tbaa !43
  store i32 %i.e, ptr %i.ja, align 4, !tbaa !35
  br label %Vec_IntStart.exit

Vec_IntAlloc.exit.i510:                           ; preds = %Vec_IntUniqify.exit
  %i.jc = sext i32 %spec.store.select.i to i64
  %i.jd = shl nsw i64 %i.jc, 2
  %i.je = call noalias ptr @malloc(i64 noundef %i.jd) #21 ; 4 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  store ptr %i.je, ptr %i.jf, align 8, !tbaa !43
  store i32 %i.e, ptr %i.ja, align 4, !tbaa !35
  %.not.i511 = icmp eq ptr %i.je, null
  br i1 %.not.i511, label %Vec_IntStart.exit, label %bb.aq

bb.aq:                                            ; preds = %Vec_IntAlloc.exit.i510
  %i.jg = sext i32 %i.e to i64
  %i.jh = shl nsw i64 %i.jg, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.je, i8 0, i64 %i.jh, i1 false)
  br label %Vec_IntStart.exit

Vec_IntStart.exit:                                ; preds = %Vec_IntAlloc.exit.thread.i512, %Vec_IntAlloc.exit.i510, %bb.aq
  %.val412 = phi ptr [ null, %Vec_IntAlloc.exit.thread.i512 ], [ null, %Vec_IntAlloc.exit.i510 ], [ %i.je, %bb.aq ] ; 6 uses
  %i.ji = icmp sgt i32 %.val381, 0
  br i1 %i.ji, label %.lr.ph673, label %.critedge2

.lr.ph673:                                        ; preds = %Vec_IntStart.exit
  %.val414 = load ptr, ptr %i.ig, align 8, !tbaa !43 ; 5 uses
  %i.jj = zext nneg i32 %.val381 to i64           ; 2 uses
  %xtraiter999 = and i64 %i.jj, 3                 ; 3 uses
  %i.jk = icmp ult i32 %.val381, 4
  br i1 %i.jk, label %.epil.preheader998, label %.lr.ph673.new

.lr.ph673.new:                                    ; preds = %.lr.ph673
  %unroll_iter1002 = and i64 %i.jj, 2147483644
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ar, %.lr.ph673.new
  %indvars.iv727 = phi i64 [ 0, %.lr.ph673.new ], [ %indvars.iv.next728.3, %bb.ar ] ; 5 uses
  %niter1003 = phi i64 [ 0, %.lr.ph673.new ], [ %niter1003.next.3, %bb.ar ]
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %.val414, i64 %indvars.iv727
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !37
  %i.jn = sext i32 %i.jm to i64
  %i.jo = getelementptr inbounds [4 x i8], ptr %.val412, i64 %i.jn
  store i32 1, ptr %i.jo, align 4, !tbaa !37
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %.val414, i64 %indvars.iv727
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 4
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !37
  %i.js = sext i32 %i.jr to i64
  %i.jt = getelementptr inbounds [4 x i8], ptr %.val412, i64 %i.js
  store i32 1, ptr %i.jt, align 4, !tbaa !37
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %.val414, i64 %indvars.iv727
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 8
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !37
  %i.jx = sext i32 %i.jw to i64
  %i.jy = getelementptr inbounds [4 x i8], ptr %.val412, i64 %i.jx
  store i32 1, ptr %i.jy, align 4, !tbaa !37
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %.val414, i64 %indvars.iv727
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 12
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !37
  %i.kc = sext i32 %i.kb to i64
  %i.kd = getelementptr inbounds [4 x i8], ptr %.val412, i64 %i.kc
  store i32 1, ptr %i.kd, align 4, !tbaa !37
  %indvars.iv.next728.3 = add nuw nsw i64 %indvars.iv727, 4 ; 2 uses
  %niter1003.next.3 = add i64 %niter1003, 4       ; 2 uses
  %niter1003.ncmp.3.not = icmp eq i64 %niter1003.next.3, %unroll_iter1002
  br i1 %niter1003.ncmp.3.not, label %.critedge2.loopexit.unr-lcssa, label %bb.ar, !llvm.loop !104

.critedge2.loopexit.unr-lcssa:                    ; preds = %bb.ar
  %lcmp.mod1000.not = icmp eq i64 %xtraiter999, 0
  br i1 %lcmp.mod1000.not, label %.critedge2, label %.epil.preheader998

.epil.preheader998:                               ; preds = %.critedge2.loopexit.unr-lcssa, %.lr.ph673
  %indvars.iv727.epil.init = phi i64 [ 0, %.lr.ph673 ], [ %indvars.iv.next728.3, %.critedge2.loopexit.unr-lcssa ]
  %lcmp.mod1001 = icmp ne i64 %xtraiter999, 0
  call void @llvm.assume(i1 %lcmp.mod1001)
  br label %bb.as

bb.as:                                            ; preds = %bb.as, %.epil.preheader998
  %indvars.iv727.epil = phi i64 [ %indvars.iv727.epil.init, %.epil.preheader998 ], [ %indvars.iv.next728.epil, %bb.as ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader998 ], [ %epil.iter.next, %bb.as ]
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %.val414, i64 %indvars.iv727.epil
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !37
  %i.kg = sext i32 %i.kf to i64
  %i.kh = getelementptr inbounds [4 x i8], ptr %.val412, i64 %i.kg
  store i32 1, ptr %i.kh, align 4, !tbaa !37
  %indvars.iv.next728.epil = add nuw nsw i64 %indvars.iv727.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter999
  br i1 %epil.iter.cmp.not, label %.critedge2, label %bb.as, !llvm.loop !105

.critedge2:                                       ; preds = %.critedge2.loopexit.unr-lcssa, %bb.as, %Vec_IntStart.exit
  %.val396 = load i32, ptr %i.bl, align 8, !tbaa !44
  %i.ki = call ptr @Gia_ManStart(i32 noundef %.val396) #20 ; 16 uses
  %i.kj = load ptr, ptr %0, align 8, !tbaa !137   ; 3 uses
  %.not.i513 = icmp eq ptr %i.kj, null
  br i1 %.not.i513, label %Abc_UtilStrsav.exit, label %bb.at

bb.at:                                            ; preds = %.critedge2
  %i.kk = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.kj) #24
  %i.kl = add i64 %i.kk, 1
  %i.km = call noalias ptr @malloc(i64 noundef %i.kl) #21 ; 2 uses
  %i.kn = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.km, ptr noundef nonnull readonly dereferenceable(1) %i.kj) #20 ; 0 uses
  br label %Abc_UtilStrsav.exit

Abc_UtilStrsav.exit:                              ; preds = %.critedge2, %bb.at
  %i.ko = phi ptr [ %i.km, %bb.at ], [ null, %.critedge2 ]
  store ptr %i.ko, ptr %i.ki, align 8, !tbaa !137
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !138 ; 3 uses
  %.not.i514 = icmp eq ptr %i.kq, null
  br i1 %.not.i514, label %Abc_UtilStrsav.exit515, label %bb.au

bb.au:                                            ; preds = %Abc_UtilStrsav.exit
  %i.kr = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.kq) #24
  %i.ks = add i64 %i.kr, 1
  %i.kt = call noalias ptr @malloc(i64 noundef %i.ks) #21 ; 2 uses
  %i.ku = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.kt, ptr noundef nonnull readonly dereferenceable(1) %i.kq) #20 ; 0 uses
  br label %Abc_UtilStrsav.exit515

Abc_UtilStrsav.exit515:                           ; preds = %Abc_UtilStrsav.exit, %bb.au
  %i.kv = phi ptr [ %i.kt, %bb.au ], [ null, %Abc_UtilStrsav.exit ]
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  store ptr %i.kv, ptr %i.kw, align 8, !tbaa !138
  %.val395 = load i32, ptr %i.bl, align 8, !tbaa !44 ; 5 uses
  %i.kx = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #21 ; 12 uses
  %i.ky = add i32 %.val395, -1
  %or.cond.i.i516 = icmp ult i32 %i.ky, 15
  %spec.store.select.i.i517 = select i1 %or.cond.i.i516, i32 16, i32 %.val395 ; 3 uses
  %i.kz = getelementptr i8, ptr %i.kx, i64 4      ; 9 uses
  store i32 %spec.store.select.i.i517, ptr %i.kx, align 8, !tbaa !42
  %.not.i.i518 = icmp eq i32 %spec.store.select.i.i517, 0
  br i1 %.not.i.i518, label %Vec_IntAlloc.exit.thread.i521, label %Vec_IntAlloc.exit.i519

Vec_IntAlloc.exit.thread.i521:                    ; preds = %Abc_UtilStrsav.exit515
  %i.la = getelementptr inbounds nuw i8, ptr %i.kx, i64 8
  store ptr null, ptr %i.la, align 8, !tbaa !43
  store i32 %.val395, ptr %i.kz, align 4, !tbaa !35
  br label %Vec_IntStart.exit522

Vec_IntAlloc.exit.i519:                           ; preds = %Abc_UtilStrsav.exit515
  %i.lb = sext i32 %spec.store.select.i.i517 to i64
  %i.lc = shl nsw i64 %i.lb, 2
  %i.ld = call noalias ptr @malloc(i64 noundef %i.lc) #21 ; 4 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.kx, i64 8
  store ptr %i.ld, ptr %i.le, align 8, !tbaa !43
  store i32 %.val395, ptr %i.kz, align 4, !tbaa !35
  %.not.i520 = icmp eq ptr %i.ld, null
  br i1 %.not.i520, label %Vec_IntStart.exit522, label %bb.av

bb.av:                                            ; preds = %Vec_IntAlloc.exit.i519
  %i.lf = sext i32 %.val395 to i64
  %i.lg = shl nsw i64 %i.lf, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ld, i8 0, i64 %i.lg, i1 false)
  br label %Vec_IntStart.exit522

Vec_IntStart.exit522:                             ; preds = %Vec_IntAlloc.exit.thread.i521, %Vec_IntAlloc.exit.i519, %bb.av
  %.val433 = phi ptr [ null, %Vec_IntAlloc.exit.thread.i521 ], [ null, %Vec_IntAlloc.exit.i519 ], [ %i.ld, %bb.av ]
  %i.lh = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #21 ; 6 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 4 ; 5 uses
  store i32 16, ptr %i.lh, align 8, !tbaa !42
  %i.lj = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #21 ; 5 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lh, i64 8 ; 4 uses
  store ptr %i.lj, ptr %i.lk, align 8, !tbaa !43
  %.not.i524 = icmp eq ptr %i.lj, null
  br i1 %.not.i524, label %Vec_IntPush.exit541, label %bb.aw

bb.aw:                                            ; preds = %Vec_IntStart.exit522
  store i32 0, ptr %i.lj, align 4
  br label %Vec_IntPush.exit541

Vec_IntPush.exit541:                              ; preds = %Vec_IntStart.exit522, %bb.aw
  %i.ll = getelementptr i8, ptr %i.kx, i64 8      ; 9 uses
  store i32 1, ptr %.val433, align 4, !tbaa !37
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lj, i64 4
  store i32 0, ptr %i.lm, align 4, !tbaa !37
  store i32 3, ptr %i.li, align 4, !tbaa !35
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lj, i64 8
  store i32 0, ptr %i.ln, align 4, !tbaa !37
  %i.lo = getelementptr i8, ptr %0, i64 408       ; 4 uses
  %.val443 = load ptr, ptr %i.lo, align 8, !tbaa !43
  %i.lp = load i32, ptr %.val443, align 4, !tbaa !37
  %i.lq = getelementptr i8, ptr %i.ah, i64 8
  %i.lr = sext i32 %i.lp to i64
  %i.ls = getelementptr inbounds [4 x i8], ptr %.val398, i64 %i.lr
  store i32 0, ptr %i.ls, align 4, !tbaa !37
  %i.lt = getelementptr i8, ptr %0, i64 32        ; 3 uses
  %i.lu = load ptr, ptr %i.v, align 8, !tbaa !34  ; 2 uses
  %i.lv = getelementptr i8, ptr %i.lu, i64 4
  %.val379674 = load i32, ptr %i.lv, align 4, !tbaa !35
  %i.lw = icmp sgt i32 %.val379674, 0
  br i1 %i.lw, label %.lr.ph676, label %.critedge4

.lr.ph676:                                        ; preds = %Vec_IntPush.exit541
  %.not363 = icmp eq ptr %.0636, null
  %i.lx = getelementptr i8, ptr %.0636, i64 8
  %i.ly = getelementptr inbounds nuw i8, ptr %i.ki, i64 64 ; 2 uses
  %i.lz = getelementptr i8, ptr %i.ki, i64 32     ; 2 uses
  %i.ma = icmp ne ptr %.0635, null                ; 2 uses
  %i.mb = getelementptr i8, ptr %.0635, i64 8
  br label %bb.ax

bb.ax:                                            ; preds = %.lr.ph676, %bb.bp
  %indvars.iv730 = phi i64 [ 0, %.lr.ph676 ], [ %indvars.iv.next731, %bb.bp ] ; 3 uses
  %i.mc = phi ptr [ %i.lu, %.lr.ph676 ], [ %i.pa, %bb.bp ]
  %.val417 = load ptr, ptr %i.lt, align 8, !tbaa !48 ; 2 uses
  %i.md = getelementptr i8, ptr %i.mc, i64 8
  %.val418.val = load ptr, ptr %i.md, align 8, !tbaa !43
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %.val418.val, i64 %indvars.iv730
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !37
  %i.mg = sext i32 %i.mf to i64                   ; 3 uses
  %i.mh = getelementptr inbounds [12 x i8], ptr %.val417, i64 %i.mg
  %.not356 = icmp eq ptr %.val417, null
  br i1 %.not356, label %.critedge4, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  br i1 %.not354, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %.val457 = load i64, ptr %i.mh, align 4
  %i.mi = lshr i64 %.val457, 32
  %i.mj = trunc nuw i64 %i.mi to i32
  %i.mk = and i32 %i.mj, 536870911
  %i.ml = call i32 @Tim_ManBoxForCi(ptr noundef nonnull %i.d, i32 noundef %i.mk) #20
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ay, %bb.az
  %i.mm = phi i32 [ %i.ml, %bb.az ], [ -1, %bb.ay ] ; 2 uses
  br i1 %.not363, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %.val413 = load ptr, ptr %i.lx, align 8, !tbaa !43
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %.val413, i64 %indvars.iv730
  %i.mo = load i32, ptr %i.mn, align 4, !tbaa !37
  br label %bb.bc

bb.bc:                                            ; preds = %bb.ba, %bb.bb
  %i.mp = phi i32 [ %i.mo, %bb.bb ], [ -1, %bb.ba ] ; 3 uses
  %i.mq = icmp sgt i32 %i.mm, -1
  br i1 %i.mq, label %bb.bd, label %bb.bf

bb.bd:                                            ; preds = %bb.bc
  %i.mr = zext nneg i32 %i.mm to i64
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %.val412, i64 %i.mr
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !37
  %.not364 = icmp eq i32 %i.mt, 0
  br i1 %.not364, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %.val442 = load ptr, ptr %i.lo, align 8, !tbaa !43
  %i.mu = getelementptr inbounds [4 x i8], ptr %.val442, i64 %i.mg
  %i.mv = load i32, ptr %i.mu, align 4, !tbaa !37
  %i.mw = sext i32 %i.mv to i64
  %i.mx = getelementptr inbounds [4 x i8], ptr %.val398, i64 %i.mw
  store i32 -1, ptr %i.mx, align 4, !tbaa !37
  %i.my = icmp sgt i32 %i.mp, -1
  %or.cond = and i1 %i.ma, %i.my
  br i1 %or.cond, label %.sink.split, label %bb.bp

bb.bf:                                            ; preds = %bb.bd, %bb.bc
  %i.mz = call fastcc ptr @Gia_ManAppendObj(ptr noundef nonnull %i.ki) ; 4 uses
  %i.na = load i64, ptr %i.mz, align 4
  %i.nb = or i64 %i.na, 2684354559                ; 2 uses
  store i64 %i.nb, ptr %i.mz, align 4
  %i.nc = load ptr, ptr %i.ly, align 8, !tbaa !34
  %i.nd = getelementptr i8, ptr %i.nc, i64 4
  %.val.i = load i32, ptr %i.nd, align 4, !tbaa !35
  %i.ne = and i32 %.val.i, 536870911
  %i.nf = zext nneg i32 %i.ne to i64
  %i.ng = shl nuw nsw i64 %i.nf, 32
  %i.nh = and i64 %i.nb, -2305843004918726657
  %i.ni = or disjoint i64 %i.ng, %i.nh
  store i64 %i.ni, ptr %i.mz, align 4
  %i.nj = load ptr, ptr %i.ly, align 8, !tbaa !34 ; 6 uses
  %.val11.i = load ptr, ptr %i.lz, align 8, !tbaa !48 ; 3 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 4 ; 3 uses
  %i.nl = load i32, ptr %i.nk, align 4, !tbaa !35 ; 7 uses
  %i.nm = load i32, ptr %i.nj, align 8, !tbaa !42
  %i.nn = icmp eq i32 %i.nl, %i.nm
  br i1 %i.nn, label %bb.bg, label %Gia_ManAppendCi.exit

bb.bg:                                            ; preds = %bb.bf
  %i.no = icmp slt i32 %i.nl, 16
  br i1 %i.no, label %bb.bh, label %bb.bk

bb.bh:                                            ; preds = %bb.bg
  %i.np = getelementptr inbounds nuw i8, ptr %i.nj, i64 8 ; 2 uses
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !43 ; 2 uses
  %.not9.i.i.i = icmp eq ptr %i.nq, null
  br i1 %.not9.i.i.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.nr = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.nq, i64 noundef 64) #23
  br label %Vec_IntGrow.exit.i.i

bb.bj:                                            ; preds = %bb.bh
  %i.ns = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #21
  br label %Vec_IntGrow.exit.i.i

Vec_IntGrow.exit.i.i:                             ; preds = %bb.bj, %bb.bi
  %i.nt = phi ptr [ %i.nr, %bb.bi ], [ %i.ns, %bb.bj ]
  store ptr %i.nt, ptr %i.np, align 8, !tbaa !43
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.bk:                                            ; preds = %bb.bg
  %i.nu = icmp samesign ult i32 %i.nl, 1073741823
  %i.nv = shl nuw nsw i32 %i.nl, 1
  %spec.select.i.i = select i1 %i.nu, i32 %i.nv, i32 2147483647 ; 3 uses
  %.not.i9.i.i = icmp samesign ult i32 %i.nl, %spec.select.i.i
  br i1 %.not.i9.i.i, label %bb.bl, label %Gia_ManAppendCi.exit

bb.bl:                                            ; preds = %bb.bk
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nj, i64 8 ; 2 uses
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !43 ; 2 uses
  %.not9.i10.i.i = icmp eq ptr %i.nx, null
  %i.ny = zext nneg i32 %spec.select.i.i to i64
  %i.nz = shl nuw nsw i64 %i.ny, 2                ; 2 uses
  br i1 %.not9.i10.i.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.oa = call ptr @realloc(ptr noundef nonnull %i.nx, i64 noundef %i.nz) #23
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bl
end_hunk_0
begin_hunk_1_@Gia_ManInsertMfs:bb.a
.Vec_IntPush.exit557_crit_edge:                   ; preds = %bb.bx
  %.pre759 = load ptr, ptr %i.ph, align 8, !tbaa !43
  br label %Vec_IntPush.exit557

bb.by:                                            ; preds = %bb.bx
  %i.rg = icmp slt i32 %i.rd, 16
  br i1 %i.rg, label %bb.bz, label %bb.cc

bb.bz:                                            ; preds = %bb.by
  %i.rh = load ptr, ptr %i.ph, align 8, !tbaa !43 ; 2 uses
  %.not9.i.i555 = icmp eq ptr %i.rh, null
  br i1 %.not9.i.i555, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.ri = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.rh, i64 noundef 64) #23
  br label %Vec_IntGrow.exit11.sink.split.i553

bb.cb:                                            ; preds = %bb.bz
  %i.rj = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #21
  br label %Vec_IntGrow.exit11.sink.split.i553

bb.cc:                                            ; preds = %bb.by
  %i.rk = icmp samesign ult i32 %i.rd, 1073741823
  %i.rl = shl nuw nsw i32 %i.rd, 1
  %spec.select.i550 = select i1 %i.rk, i32 %i.rl, i32 2147483647 ; 4 uses
  %.not.i9.i551 = icmp samesign ult i32 %i.rd, %spec.select.i550
  %.pre760 = load ptr, ptr %i.ph, align 8, !tbaa !43 ; 3 uses
  br i1 %.not.i9.i551, label %bb.cd, label %Vec_IntPush.exit557

bb.cd:                                            ; preds = %bb.cc
  %.not9.i10.i552 = icmp eq ptr %.pre760, null
  %i.rm = zext nneg i32 %spec.select.i550 to i64
  %i.rn = shl nuw nsw i64 %i.rm, 2                ; 2 uses
  br i1 %.not9.i10.i552, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.ro = call ptr @realloc(ptr noundef nonnull %.pre760, i64 noundef %i.rn) #23
  br label %Vec_IntGrow.exit11.sink.split.i553

bb.cf:                                            ; preds = %bb.cd
  %i.rp = call noalias ptr @malloc(i64 noundef %i.rn) #21
  br label %Vec_IntGrow.exit11.sink.split.i553

Vec_IntGrow.exit11.sink.split.i553:               ; preds = %bb.ce, %bb.cf, %bb.ca, %bb.cb
  %storemerge640 = phi ptr [ %i.rj, %bb.cb ], [ %i.ri, %bb.ca ], [ %i.ro, %bb.ce ], [ %i.rp, %bb.cf ] ; 2 uses
  %spec.select.sink.i554 = phi i32 [ 16, %bb.cb ], [ 16, %bb.ca ], [ %spec.select.i550, %bb.ce ], [ %spec.select.i550, %bb.cf ]
  store ptr %storemerge640, ptr %i.ph, align 8, !tbaa !43
  store i32 %spec.select.sink.i554, ptr %i.pe, align 8, !tbaa !42
  %.pre761 = load i32, ptr %i.pf, align 4, !tbaa !35
  br label %Vec_IntPush.exit557

Vec_IntPush.exit557:                              ; preds = %.Vec_IntPush.exit557_crit_edge, %bb.cc, %Vec_IntGrow.exit11.sink.split.i553
  %i.rq = phi i32 [ %i.rd, %.Vec_IntPush.exit557_crit_edge ], [ %i.rd, %bb.cc ], [ %.pre761, %Vec_IntGrow.exit11.sink.split.i553 ] ; 2 uses
  %i.rr = phi ptr [ %.pre759, %.Vec_IntPush.exit557_crit_edge ], [ %.pre760, %bb.cc ], [ %storemerge640, %Vec_IntGrow.exit11.sink.split.i553 ]
  %i.rs = add nsw i32 %i.rq, 1
  store i32 %i.rs, ptr %i.pf, align 4, !tbaa !35
  %i.rt = sext i32 %i.rq to i64
  %i.ru = getelementptr inbounds [4 x i8], ptr %i.rr, i64 %i.rt
  store i32 %.0316, ptr %i.ru, align 4, !tbaa !37
  %indvars.iv.next734 = add nuw nsw i64 %indvars.iv733, 1 ; 2 uses
  %.val376 = load i32, ptr %i.qm, align 4, !tbaa !35
  %i.rv = sext i32 %.val376 to i64
  %i.rw = icmp slt i64 %indvars.iv.next734, %i.rv
  br i1 %i.rw, label %bb.bv, label %.critedge11, !llvm.loop !107

.critedge11:                                      ; preds = %Vec_IntPush.exit557, %bb.bu
  %i.rx = icmp eq i32 %i.qk, -1
  br i1 %i.rx, label %bb.cg, label %bb.dj

bb.cg:                                            ; preds = %.critedge11
  %.val403 = load ptr, ptr %i.qc, align 8, !tbaa !43
  %i.ry = getelementptr inbounds [4 x i8], ptr %.val403, i64 %i.qi
  %i.rz = load i32, ptr %i.ry, align 4, !tbaa !37
  %.val449 = load ptr, ptr %i.qd, align 8, !tbaa !47
  %i.sa = getelementptr i8, ptr %.val449, i64 8
  %.val449.val = load ptr, ptr %i.sa, align 8, !tbaa !43 ; 2 uses
  %i.sb = sext i32 %i.rz to i64
  %i.sc = getelementptr inbounds [4 x i8], ptr %.val449.val, i64 %i.sb
  %i.sd = load i32, ptr %i.sc, align 4, !tbaa !37
  %i.se = sext i32 %i.sd to i64
  %i.sf = getelementptr inbounds [4 x i8], ptr %.val449.val, i64 %i.se ; 2 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sf, i64 4
  %i.sh = load i32, ptr %i.sf, align 4, !tbaa !37
  %i.si = sext i32 %i.sh to i64
  %i.sj = getelementptr inbounds [4 x i8], ptr %i.sg, i64 %i.si
  %i.sk = load i32, ptr %i.sj, align 4, !tbaa !37
  %.not362 = icmp sgt i32 %i.sk, -1
  br i1 %.not362, label %bb.di, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %.val375 = load i32, ptr %i.li, align 4, !tbaa !35
  %.val448 = load ptr, ptr %i.ph, align 8, !tbaa !43 ; 16 uses
  %.val374 = load i32, ptr %i.pf, align 4, !tbaa !35 ; 14 uses
  %i.sl = icmp sgt i32 %.val374, 0
  br i1 %i.sl, label %.lr.ph.i558, label %Abc_TtSimplify.exit

.lr.ph.i558:                                      ; preds = %bb.ch
  %i.sm = add nsw i32 %.val374, -6                ; 2 uses
  %i.sn = shl nuw i32 1, %i.sm
  %.fr.i.i.i = freeze i32 %i.sn                   ; 6 uses
  %i.so = icmp samesign ult i32 %.val374, 7       ; 4 uses
  %i.sp = sext i32 %.fr.i.i.i to i64
  %.idx.i57.i = shl nsw i64 %i.sp, 3
  %i.sq = getelementptr inbounds i8, ptr %i.qg, i64 %.idx.i57.i ; 3 uses
  %.not.i559 = icmp eq i32 %i.sm, 31              ; 5 uses
  %wide.trip.count51.i72.i = zext i32 %.fr.i.i.i to i64 ; 6 uses
  %wide.trip.count.i = zext nneg i32 %.val374 to i64 ; 6 uses
  %min.iters.check954 = icmp ult i32 %.fr.i.i.i, 4
  %n.vec956 = and i64 %wide.trip.count51.i72.i, 4294967292 ; 3 uses
  %cmp.n967 = icmp eq i64 %n.vec956, %wide.trip.count51.i72.i
  %min.iters.check924 = icmp ult i32 %.fr.i.i.i, 4
  %n.vec926 = and i64 %wide.trip.count51.i72.i, 4294967292 ; 3 uses
  %cmp.n937 = icmp eq i64 %n.vec926, %wide.trip.count51.i72.i
  br label %bb.ci

bb.ci:                                            ; preds = %Abc_TtCofactor0.exit.i, %.lr.ph.i558
  %indvars.iv.i560 = phi i64 [ 0, %.lr.ph.i558 ], [ %indvars.iv.next.i561, %Abc_TtCofactor0.exit.i ] ; 14 uses
  %i.sr = getelementptr inbounds nuw [4 x i8], ptr %.val448, i64 %indvars.iv.i560
  %i.ss = load i32, ptr %i.sr, align 4, !tbaa !37
  switch i32 %i.ss, label %Abc_TtCofactor0.exit.i [
    i32 0, label %bb.cj
    i32 1, label %bb.co
  ]

bb.cj:                                            ; preds = %bb.ci
  br i1 %i.so, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.st = load i64, ptr %i.qg, align 8, !tbaa !46
  %i.su = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv.i560
  %i.sv = load i64, ptr %i.su, align 8, !tbaa !46
  %i.sw = and i64 %i.sv, %i.st                    ; 2 uses
  %i.sx = trunc nuw nsw i64 %indvars.iv.i560 to i32
  %i.sy = shl nuw i32 1, %i.sx
  %i.sz = zext nneg i32 %i.sy to i64
  %i.ta = shl i64 %i.sw, %i.sz
  %i.tb = or i64 %i.ta, %i.sw
  br label %Abc_TtCofactor0.exit.sink.split.i

bb.cl:                                            ; preds = %bb.cj
  %i.tc = icmp samesign ult i64 %indvars.iv.i560, 6
  br i1 %i.tc, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  br i1 %.not.i559, label %Abc_TtCofactor0.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.cm
  %i.td = trunc nuw nsw i64 %indvars.iv.i560 to i32
  %i.te = shl nuw nsw i32 1, %i.td
  %i.tf = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv.i560
  %i.tg = load i64, ptr %i.tf, align 8, !tbaa !46 ; 2 uses
  %i.th = zext nneg i32 %i.te to i64              ; 2 uses
  br i1 %min.iters.check924, label %scalar.ph923.preheader, label %vector.ph925

vector.ph925:                                     ; preds = %.lr.ph.i.i
  %broadcast.splatinsert927 = insertelement <2 x i64> poison, i64 %i.tg, i64 0
  %broadcast.splat928 = shufflevector <2 x i64> %broadcast.splatinsert927, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert929 = insertelement <2 x i64> poison, i64 %i.th, i64 0
  %broadcast.splat930 = shufflevector <2 x i64> %broadcast.splatinsert929, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body931

vector.body931:                                   ; preds = %vector.body931, %vector.ph925
  %index932 = phi i64 [ 0, %vector.ph925 ], [ %index.next935, %vector.body931 ] ; 2 uses
  %i.ti = getelementptr inbounds nuw [8 x i8], ptr %i.qg, i64 %index932 ; 3 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ti, i64 16 ; 2 uses
  %wide.load933 = load <2 x i64>, ptr %i.ti, align 8, !tbaa !46
  %wide.load934 = load <2 x i64>, ptr %i.tj, align 8, !tbaa !46
  %i.tk = and <2 x i64> %wide.load933, %broadcast.splat928 ; 2 uses
  %i.tl = and <2 x i64> %wide.load934, %broadcast.splat928 ; 2 uses
  %i.tm = shl <2 x i64> %i.tk, %broadcast.splat930
  %i.tn = shl <2 x i64> %i.tl, %broadcast.splat930
  %i.to = or <2 x i64> %i.tm, %i.tk
  %i.tp = or <2 x i64> %i.tn, %i.tl
  store <2 x i64> %i.to, ptr %i.ti, align 8, !tbaa !46
  store <2 x i64> %i.tp, ptr %i.tj, align 8, !tbaa !46
  %index.next935 = add nuw i64 %index932, 4       ; 2 uses
  %i.tq = icmp eq i64 %index.next935, %n.vec926
  br i1 %i.tq, label %middle.block936, label %vector.body931, !llvm.loop !108

middle.block936:                                  ; preds = %vector.body931
  br i1 %cmp.n937, label %Abc_TtCofactor0.exit.i, label %scalar.ph923.preheader

scalar.ph923.preheader:                           ; preds = %.lr.ph.i.i, %middle.block936
  %indvars.iv48.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec926, %middle.block936 ]
  br label %scalar.ph923

scalar.ph923:                                     ; preds = %scalar.ph923.preheader, %scalar.ph923
  %indvars.iv48.i.i = phi i64 [ %indvars.iv.next49.i.i, %scalar.ph923 ], [ %indvars.iv48.i.i.ph, %scalar.ph923.preheader ] ; 2 uses
  %i.tr = getelementptr inbounds nuw [8 x i8], ptr %i.qg, i64 %indvars.iv48.i.i ; 2 uses
  %i.ts = load i64, ptr %i.tr, align 8, !tbaa !46
  %i.tt = and i64 %i.ts, %i.tg                    ; 2 uses
  %i.tu = shl i64 %i.tt, %i.th
  %i.tv = or i64 %i.tu, %i.tt
  store i64 %i.tv, ptr %i.tr, align 8, !tbaa !46
  %indvars.iv.next49.i.i = add nuw nsw i64 %indvars.iv48.i.i, 1 ; 2 uses
  %exitcond52.not.i.i = icmp eq i64 %indvars.iv.next49.i.i, %wide.trip.count51.i72.i
  br i1 %exitcond52.not.i.i, label %Abc_TtCofactor0.exit.i, label %scalar.ph923, !llvm.loop !109

bb.cn:                                            ; preds = %bb.cl
  %i.tw = add nsw i64 %indvars.iv.i560, -6        ; 3 uses
  %i.tx = trunc nsw i64 %i.tw to i32              ; 2 uses
  %i.ty = shl nuw i32 1, %i.tx                    ; 4 uses
  br i1 %.not.i559, label %Abc_TtCofactor0.exit.i, label %.preheader.lr.ph.i.i

.preheader.lr.ph.i.i:                             ; preds = %bb.cn
  %i.tz = icmp eq i64 %i.tw, 31
  %i.ua = shl i32 2, %i.tx
  %i.ub = sext i32 %i.ua to i64
  br i1 %i.tz, label %Abc_TtCofactor0.exit.i, label %.preheader.us.preheader.i.i

.preheader.us.preheader.i.i:                      ; preds = %.preheader.lr.ph.i.i
  %3 = sext i32 %i.ty to i64
  %smax.i.i = call i32 @llvm.smax.i32(i32 %i.ty, i32 1)
  %min.iters.check942 = icmp slt i32 %i.ty, 4
  %4 = and i32 %smax.i.i, 2147483644
  %n.vec944 = zext nneg i32 %4 to i64
  %exitcond.not.i.i = icmp slt i32 %i.ty, 2
  %exitcond.not.i.i.1 = icmp eq i64 %i.tw, 1
  br label %.preheader.us.i.i

.preheader.us.i.i:                                ; preds = %._crit_edge.us.i.i, %.preheader.us.preheader.i.i
  %.03643.us.i.i = phi ptr [ %i.ui, %._crit_edge.us.i.i ], [ %i.qg, %.preheader.us.preheader.i.i ] ; 6 uses
  %invariant.gep.i.i = getelementptr [8 x i8], ptr %.03643.us.i.i, i64 %3 ; 4 uses
  br i1 %min.iters.check942, label %scalar.ph941, label %vector.body945

vector.body945:                                   ; preds = %.preheader.us.i.i, %vector.body945
  %index946 = phi i64 [ %index.next949, %vector.body945 ], [ 0, %.preheader.us.i.i ] ; 3 uses
  %i.uc = getelementptr inbounds nuw [8 x i8], ptr %.03643.us.i.i, i64 %index946 ; 2 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %i.uc, i64 16
  %wide.load947 = load <2 x i64>, ptr %i.uc, align 8, !tbaa !46
  %wide.load948 = load <2 x i64>, ptr %i.ud, align 8, !tbaa !46
  %i.ue = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %index946 ; 2 uses
  %i.uf = getelementptr i8, ptr %i.ue, i64 16
  store <2 x i64> %wide.load947, ptr %i.ue, align 8, !tbaa !46
  store <2 x i64> %wide.load948, ptr %i.uf, align 8, !tbaa !46
  %index.next949 = add nuw i64 %index946, 4       ; 2 uses
  %i.ug = icmp eq i64 %index.next949, %n.vec944
  br i1 %i.ug, label %._crit_edge.us.i.i, label %vector.body945, !llvm.loop !110

scalar.ph941:                                     ; preds = %.preheader.us.i.i
  %5 = load i64, ptr %.03643.us.i.i, align 8, !tbaa !46
  store i64 %5, ptr %invariant.gep.i.i, align 8, !tbaa !46
  br i1 %exitcond.not.i.i, label %._crit_edge.us.i.i, label %scalar.ph941.1

scalar.ph941.1:                                   ; preds = %scalar.ph941
  %6 = getelementptr inbounds nuw i8, ptr %.03643.us.i.i, i64 8
  %i.uh = load i64, ptr %6, align 8, !tbaa !46
  %gep.i.i.1 = getelementptr i8, ptr %invariant.gep.i.i, i64 8
  store i64 %i.uh, ptr %gep.i.i.1, align 8, !tbaa !46
  br i1 %exitcond.not.i.i.1, label %._crit_edge.us.i.i, label %scalar.ph941.2

scalar.ph941.2:                                   ; preds = %scalar.ph941.1
  %7 = getelementptr inbounds nuw i8, ptr %.03643.us.i.i, i64 16
  %8 = load i64, ptr %7, align 8, !tbaa !46
  %gep.i.i.2 = getelementptr i8, ptr %invariant.gep.i.i, i64 16
  store i64 %8, ptr %gep.i.i.2, align 8, !tbaa !46
  br label %._crit_edge.us.i.i

._crit_edge.us.i.i:                               ; preds = %vector.body945, %scalar.ph941, %scalar.ph941.1, %scalar.ph941.2
  %i.ui = getelementptr inbounds [8 x i8], ptr %.03643.us.i.i, i64 %i.ub ; 2 uses
  %i.uj = icmp ult ptr %i.ui, %i.sq
  br i1 %i.uj, label %.preheader.us.i.i, label %Abc_TtCofactor0.exit.i, !llvm.loop !111

bb.co:                                            ; preds = %bb.ci
  br i1 %i.so, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.uk = load i64, ptr %i.qg, align 8, !tbaa !46
  %i.ul = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6, i64 %indvars.iv.i560
  %i.um = load i64, ptr %i.ul, align 8, !tbaa !46
  %i.un = and i64 %i.um, %i.uk                    ; 2 uses
  %i.uo = trunc nuw nsw i64 %indvars.iv.i560 to i32
  %i.up = shl nuw i32 1, %i.uo
  %i.uq = zext nneg i32 %i.up to i64
  %i.ur = lshr i64 %i.un, %i.uq
  %i.us = or i64 %i.ur, %i.un
  br label %Abc_TtCofactor0.exit.sink.split.i

bb.cq:                                            ; preds = %bb.co
  %i.ut = icmp samesign ult i64 %indvars.iv.i560, 6
  br i1 %i.ut, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  br i1 %.not.i559, label %Abc_TtCofactor0.exit.i, label %.lr.ph.i71.i

.lr.ph.i71.i:                                     ; preds = %bb.cr
  %i.uu = trunc nuw nsw i64 %indvars.iv.i560 to i32
  %i.uv = shl nuw nsw i32 1, %i.uu
  %i.uw = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6, i64 %indvars.iv.i560
  %i.ux = load i64, ptr %i.uw, align 8, !tbaa !46 ; 2 uses
  %i.uy = zext nneg i32 %i.uv to i64              ; 2 uses
  br i1 %min.iters.check954, label %scalar.ph953.preheader, label %vector.ph955

vector.ph955:                                     ; preds = %.lr.ph.i71.i
  %broadcast.splatinsert957.a = insertelement <2 x i64> poison, i64 %i.ux, i64 0
  %broadcast.splat958.a = shufflevector <2 x i64> %broadcast.splatinsert957.a, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert959 = insertelement <2 x i64> poison, i64 %i.uy, i64 0
  %broadcast.splat960 = shufflevector <2 x i64> %broadcast.splatinsert959, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body961

vector.body961:                                   ; preds = %vector.body961, %vector.ph955
  %index962 = phi i64 [ 0, %vector.ph955 ], [ %index.next965, %vector.body961 ] ; 2 uses
  %i.uz = getelementptr inbounds nuw [8 x i8], ptr %i.qg, i64 %index962 ; 3 uses
  %i.va = getelementptr inbounds nuw i8, ptr %i.uz, i64 16 ; 2 uses
  %wide.load963 = load <2 x i64>, ptr %i.uz, align 8, !tbaa !46
  %wide.load964 = load <2 x i64>, ptr %i.va, align 8, !tbaa !46
  %i.vb = and <2 x i64> %wide.load963, %broadcast.splat958.a ; 2 uses
  %i.vc = and <2 x i64> %wide.load964, %broadcast.splat958.a ; 2 uses
  %i.vd = lshr <2 x i64> %i.vb, %broadcast.splat960
  %i.ve = lshr <2 x i64> %i.vc, %broadcast.splat960
  %i.vf = or <2 x i64> %i.vd, %i.vb
  %i.vg = or <2 x i64> %i.ve, %i.vc
  store <2 x i64> %i.vf, ptr %i.uz, align 8, !tbaa !46
  store <2 x i64> %i.vg, ptr %i.va, align 8, !tbaa !46
  %index.next965 = add nuw i64 %index962, 4       ; 2 uses
  %i.vh = icmp eq i64 %index.next965, %n.vec956
  br i1 %i.vh, label %middle.block966, label %vector.body961, !llvm.loop !112

middle.block966:                                  ; preds = %vector.body961
  br i1 %cmp.n967, label %Abc_TtCofactor0.exit.i, label %scalar.ph953.preheader

scalar.ph953.preheader:                           ; preds = %.lr.ph.i71.i, %middle.block966
  %indvars.iv48.i73.i.ph = phi i64 [ 0, %.lr.ph.i71.i ], [ %n.vec956, %middle.block966 ]
  br label %scalar.ph953

scalar.ph953:                                     ; preds = %scalar.ph953.preheader, %scalar.ph953
  %indvars.iv48.i73.i = phi i64 [ %indvars.iv.next49.i74.i, %scalar.ph953 ], [ %indvars.iv48.i73.i.ph, %scalar.ph953.preheader ] ; 2 uses
  %i.vi = getelementptr inbounds nuw [8 x i8], ptr %i.qg, i64 %indvars.iv48.i73.i ; 2 uses
  %i.vj = load i64, ptr %i.vi, align 8, !tbaa !46
  %i.vk = and i64 %i.vj, %i.ux                    ; 2 uses
  %i.vl = lshr i64 %i.vk, %i.uy
  %i.vm = or i64 %i.vl, %i.vk
  store i64 %i.vm, ptr %i.vi, align 8, !tbaa !46
  %indvars.iv.next49.i74.i = add nuw nsw i64 %indvars.iv48.i73.i, 1 ; 2 uses
  %exitcond52.not.i75.i = icmp eq i64 %indvars.iv.next49.i74.i, %wide.trip.count51.i72.i
  br i1 %exitcond52.not.i75.i, label %Abc_TtCofactor0.exit.i, label %scalar.ph953, !llvm.loop !113

bb.cs:                                            ; preds = %bb.cq
  %i.vn = add nsw i64 %indvars.iv.i560, -6        ; 3 uses
  %i.vo = trunc nsw i64 %i.vn to i32              ; 2 uses
  %i.vp = shl nuw i32 1, %i.vo                    ; 4 uses
  br i1 %.not.i559, label %Abc_TtCofactor0.exit.i, label %.preheader.lr.ph.i58.i

.preheader.lr.ph.i58.i:                           ; preds = %bb.cs
  %i.vq = icmp eq i64 %i.vn, 31
  %i.vr = shl i32 2, %i.vo
  %i.vs = sext i32 %i.vr to i64
  br i1 %i.vq, label %Abc_TtCofactor0.exit.i, label %.preheader.us.preheader.i60.i

.preheader.us.preheader.i60.i:                    ; preds = %.preheader.lr.ph.i58.i
  %9 = sext i32 %i.vp to i64
  %smax.i61.i = call i32 @llvm.smax.i32(i32 %i.vp, i32 1)
  %min.iters.check972 = icmp slt i32 %i.vp, 4
  %10 = and i32 %smax.i61.i, 2147483644
  %n.vec974 = zext nneg i32 %10 to i64
  %exitcond.not.i69.i = icmp slt i32 %i.vp, 2
  %exitcond.not.i69.i.1 = icmp eq i64 %i.vn, 1
  br label %.preheader.us.i63.i

.preheader.us.i63.i:                              ; preds = %._crit_edge.us.i70.i, %.preheader.us.preheader.i60.i
  %.03643.us.i64.i = phi ptr [ %i.vz, %._crit_edge.us.i70.i ], [ %i.qg, %.preheader.us.preheader.i60.i ] ; 6 uses
  %invariant.gep.i65.i = getelementptr [8 x i8], ptr %.03643.us.i64.i, i64 %9 ; 4 uses
  br i1 %min.iters.check972, label %scalar.ph971, label %vector.body975

vector.body975:                                   ; preds = %.preheader.us.i63.i, %vector.body975
  %index976 = phi i64 [ %index.next979, %vector.body975 ], [ 0, %.preheader.us.i63.i ] ; 3 uses
  %i.vt = getelementptr [8 x i8], ptr %invariant.gep.i65.i, i64 %index976 ; 2 uses
  %i.vu = getelementptr i8, ptr %i.vt, i64 16
  %wide.load977 = load <2 x i64>, ptr %i.vt, align 8, !tbaa !46
  %wide.load978 = load <2 x i64>, ptr %i.vu, align 8, !tbaa !46
  %i.vv = getelementptr inbounds nuw [8 x i8], ptr %.03643.us.i64.i, i64 %index976 ; 2 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vv, i64 16
  store <2 x i64> %wide.load977, ptr %i.vv, align 8, !tbaa !46
  store <2 x i64> %wide.load978, ptr %i.vw, align 8, !tbaa !46
  %index.next979 = add nuw i64 %index976, 4       ; 2 uses
  %i.vx = icmp eq i64 %index.next979, %n.vec974
  br i1 %i.vx, label %._crit_edge.us.i70.i, label %vector.body975, !llvm.loop !114

scalar.ph971:                                     ; preds = %.preheader.us.i63.i
  %11 = load i64, ptr %invariant.gep.i65.i, align 8, !tbaa !46
  store i64 %11, ptr %.03643.us.i64.i, align 8, !tbaa !46
  br i1 %exitcond.not.i69.i, label %._crit_edge.us.i70.i, label %scalar.ph971.1

scalar.ph971.1:                                   ; preds = %scalar.ph971
  %gep.i67.i.1 = getelementptr i8, ptr %invariant.gep.i65.i, i64 8
  %i.vy = load i64, ptr %gep.i67.i.1, align 8, !tbaa !46
  %12 = getelementptr inbounds nuw i8, ptr %.03643.us.i64.i, i64 8
  store i64 %i.vy, ptr %12, align 8, !tbaa !46
  br i1 %exitcond.not.i69.i.1, label %._crit_edge.us.i70.i, label %scalar.ph971.2

scalar.ph971.2:                                   ; preds = %scalar.ph971.1
  %gep.i67.i.2 = getelementptr i8, ptr %invariant.gep.i65.i, i64 16
  %13 = load i64, ptr %gep.i67.i.2, align 8, !tbaa !46
  %14 = getelementptr inbounds nuw i8, ptr %.03643.us.i64.i, i64 16
  store i64 %13, ptr %14, align 8, !tbaa !46
  br label %._crit_edge.us.i70.i

._crit_edge.us.i70.i:                             ; preds = %vector.body975, %scalar.ph971, %scalar.ph971.1, %scalar.ph971.2
  %i.vz = getelementptr inbounds [8 x i8], ptr %.03643.us.i64.i, i64 %i.vs ; 2 uses
  %i.wa = icmp ult ptr %i.vz, %i.sq
  br i1 %i.wa, label %.preheader.us.i63.i, label %Abc_TtCofactor0.exit.i, !llvm.loop !115

Abc_TtCofactor0.exit.sink.split.i:                ; preds = %bb.cp, %bb.ck
  %.sink.i = phi i64 [ %i.us, %bb.cp ], [ %i.tb, %bb.ck ]
  store i64 %.sink.i, ptr %i.qg, align 8, !tbaa !46
  br label %Abc_TtCofactor0.exit.i

Abc_TtCofactor0.exit.i:                           ; preds = %._crit_edge.us.i70.i, %scalar.ph953, %._crit_edge.us.i.i, %scalar.ph923, %middle.block966, %middle.block936, %Abc_TtCofactor0.exit.sink.split.i, %.preheader.lr.ph.i58.i, %bb.cs, %bb.cr, %.preheader.lr.ph.i.i, %bb.cn, %bb.cm, %bb.ci
  %indvars.iv.next.i561 = add nuw nsw i64 %indvars.iv.i560, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i561, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.lr.ph97.i, label %bb.ci, !llvm.loop !116

.loopexit.i:                                      ; preds = %bb.cx, %.lr.ph97.i
  %indvars.iv.next108.i = add nuw nsw i64 %indvars.iv107.i, 1
  %exitcond118.not.i = icmp eq i64 %indvars.iv.next115.i, %wide.trip.count.i
  br i1 %exitcond118.not.i, label %._crit_edge.i562, label %.lr.ph97.i, !llvm.loop !117

.lr.ph97.i:                                       ; preds = %Abc_TtCofactor0.exit.i, %.loopexit.i
  %indvars.iv114.i = phi i64 [ %indvars.iv.next115.i, %.loopexit.i ], [ 0, %Abc_TtCofactor0.exit.i ] ; 5 uses
  %indvars.iv107.i = phi i64 [ %indvars.iv.next108.i, %.loopexit.i ], [ 1, %Abc_TtCofactor0.exit.i ] ; 2 uses
  %indvars.iv.next115.i = add nuw nsw i64 %indvars.iv114.i, 1 ; 3 uses
  %i.wb = icmp samesign ult i64 %indvars.iv.next115.i, %wide.trip.count.i
  br i1 %i.wb, label %.lr.ph95.i, label %.loopexit.i

.lr.ph95.i:                                       ; preds = %.lr.ph97.i
  %i.wc = getelementptr inbounds nuw [4 x i8], ptr %.val448, i64 %indvars.iv114.i
  %i.wd = load i32, ptr %i.wc, align 4, !tbaa !37 ; 2 uses
  %i.we = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv114.i
  %i.wf = trunc nuw nsw i64 %indvars.iv114.i to i32
  %i.wg = shl nuw i32 1, %i.wf
  %i.wh = zext nneg i32 %i.wg to i64              ; 2 uses
  %i.wi = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6, i64 %indvars.iv114.i
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cx, %.lr.ph95.i
  %indvars.iv109.i = phi i64 [ %indvars.iv107.i, %.lr.ph95.i ], [ %indvars.iv.next110.i, %bb.cx ] ; 7 uses
  %i.wj = getelementptr inbounds nuw [4 x i8], ptr %.val448, i64 %indvars.iv109.i
  %i.wk = load i32, ptr %i.wj, align 4, !tbaa !37 ; 2 uses
  %.unshifted.i = xor i32 %i.wk, %i.wd
  %i.wl = icmp ult i32 %.unshifted.i, 2
  br i1 %i.wl, label %bb.cu, label %bb.cx

bb.cu:                                            ; preds = %bb.ct
  %i.wm = icmp eq i32 %i.wd, %i.wk
  %i.wn = load i64, ptr %i.qg, align 8, !tbaa !46 ; 2 uses
  %i.wo = load i64, ptr %i.we, align 8, !tbaa !46 ; 2 uses
  %i.wp = and i64 %i.wo, %i.wn                    ; 2 uses
  %i.wq = shl i64 %i.wp, %i.wh
  %i.wr = or i64 %i.wq, %i.wp                     ; 2 uses
  %i.ws = trunc nuw nsw i64 %indvars.iv109.i to i32
  %i.wt = shl nuw i32 1, %i.ws
  %i.wu = zext nneg i32 %i.wt to i64              ; 4 uses
  %i.wv = load i64, ptr %i.wi, align 8, !tbaa !46 ; 2 uses
  %i.ww = and i64 %i.wv, %i.wn                    ; 2 uses
  %i.wx = lshr i64 %i.ww, %i.wh
  %i.wy = or i64 %i.wx, %i.ww                     ; 2 uses
  br i1 %i.wm, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.wz = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv109.i
  %i.xa = load i64, ptr %i.wz, align 8, !tbaa !46
  %i.xb = and i64 %i.xa, %i.wr                    ; 2 uses
  %i.xc = shl i64 %i.xb, %i.wu
  %i.xd = or i64 %i.xc, %i.xb
  %i.xe = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6, i64 %indvars.iv109.i
  %i.xf = load i64, ptr %i.xe, align 8, !tbaa !46
  %i.xg = and i64 %i.xf, %i.wy                    ; 2 uses
  %i.xh = lshr i64 %i.xg, %i.wu
  %i.xi = or i64 %i.xh, %i.xg
  br label %.sink.split.i

bb.cw:                                            ; preds = %bb.cu
  %i.xj = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6, i64 %indvars.iv109.i
  %i.xk = load i64, ptr %i.xj, align 8, !tbaa !46
  %i.xl = and i64 %i.xk, %i.wr                    ; 2 uses
  %i.xm = lshr i64 %i.xl, %i.wu
  %i.xn = or i64 %i.xm, %i.xl
  %i.xo = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv109.i
  %i.xp = load i64, ptr %i.xo, align 8, !tbaa !46
  %i.xq = and i64 %i.xp, %i.wy                    ; 2 uses
  %i.xr = shl i64 %i.xq, %i.wu
  %i.xs = or i64 %i.xr, %i.xq
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.cw, %bb.cv
  %.sink138.i = phi i64 [ %i.xn, %bb.cw ], [ %i.xd, %bb.cv ]
  %.sink137.i = phi i64 [ %i.xs, %bb.cw ], [ %i.xi, %bb.cv ]
  %i.xt = and i64 %.sink138.i, %i.wo
  %i.xu = and i64 %.sink137.i, %i.wv
  %i.xv = or i64 %i.xu, %i.xt
  store i64 %i.xv, ptr %i.qg, align 8, !tbaa !46
  br label %bb.cx

bb.cx:                                            ; preds = %.sink.split.i, %bb.ct
  %indvars.iv.next110.i = add nuw nsw i64 %indvars.iv109.i, 1 ; 2 uses
  %exitcond113.not.i = icmp eq i64 %indvars.iv.next110.i, %wide.trip.count.i
  br i1 %exitcond113.not.i, label %.loopexit.i, label %bb.ct, !llvm.loop !118

._crit_edge.i562:                                 ; preds = %.loopexit.i
  %smax56.i.i.i = call i32 @llvm.smax.i32(i32 %.fr.i.i.i, i32 1)
  %wide.trip.count57.i.i.i = zext nneg i32 %smax56.i.i.i to i64
  %.not32.i.i = icmp eq ptr %.val448, null        ; 2 uses
  br i1 %i.so, label %.lr.ph.split.us.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %._crit_edge.i562
  %i.xw = load i64, ptr %i.qg, align 8, !tbaa !46 ; 24 uses
  br i1 %.not32.i.i, label %Abc_TtHasVar.exit.us.us.i.i, label %Abc_TtHasVar.exit.us.i.i

Abc_TtHasVar.exit.us.us.i.i:                      ; preds = %.lr.ph.split.us.i.i
  %i.xx = lshr i64 %i.xw, 1
  %i.xy = xor i64 %i.xx, %i.xw
  %i.xz = and i64 %i.xy, 6148914691236517205
  %.not39.us.us.i.i = icmp ne i64 %i.xz, 0        ; 2 uses
  %i.ya = zext i1 %.not39.us.us.i.i to i32        ; 2 uses
  %i.yb = zext i1 %.not39.us.us.i.i to i32        ; 2 uses
  %exitcond104.not.i.i = icmp eq i32 %.val374, 1
  br i1 %exitcond104.not.i.i, label %._crit_edge.i.i, label %Abc_TtHasVar.exit.us.us.i.i.1

Abc_TtHasVar.exit.us.us.i.i.1:                    ; preds = %Abc_TtHasVar.exit.us.us.i.i
  %i.yc = lshr i64 %i.xw, 2
  %i.yd = xor i64 %i.yc, %i.xw
  %i.ye = and i64 %i.yd, 3689348814741910323
  %.not39.us.us.i.i.1 = icmp ne i64 %i.ye, 0      ; 2 uses
  %i.yf = zext i1 %.not39.us.us.i.i.1 to i32
  %.124.us.us.i.i.1 = add nuw nsw i32 %i.ya, %i.yf ; 2 uses
  %i.yg = select i1 %.not39.us.us.i.i.1, i32 2, i32 0
  %.1.us.us.i.i.1 = or disjoint i32 %i.yg, %i.yb  ; 2 uses
  %exitcond104.not.i.i.1 = icmp eq i32 %.val374, 2
  br i1 %exitcond104.not.i.i.1, label %._crit_edge.i.i, label %Abc_TtHasVar.exit.us.us.i.i.2

Abc_TtHasVar.exit.us.us.i.i.2:                    ; preds = %Abc_TtHasVar.exit.us.us.i.i.1
  %i.yh = lshr i64 %i.xw, 4
  %i.yi = xor i64 %i.yh, %i.xw
  %i.yj = and i64 %i.yi, 1085102592571150095
  %.not39.us.us.i.i.2 = icmp ne i64 %i.yj, 0      ; 2 uses
  %i.yk = zext i1 %.not39.us.us.i.i.2 to i32
  %.124.us.us.i.i.2 = add nuw nsw i32 %.124.us.us.i.i.1, %i.yk ; 2 uses
  %i.yl = select i1 %.not39.us.us.i.i.2, i32 4, i32 0
  %.1.us.us.i.i.2 = or disjoint i32 %i.yl, %.1.us.us.i.i.1 ; 2 uses
  %exitcond104.not.i.i.2 = icmp eq i32 %.val374, 3
  br i1 %exitcond104.not.i.i.2, label %._crit_edge.i.i, label %Abc_TtHasVar.exit.us.us.i.i.3

Abc_TtHasVar.exit.us.us.i.i.3:                    ; preds = %Abc_TtHasVar.exit.us.us.i.i.2
  %i.ym = lshr i64 %i.xw, 8
  %i.yn = xor i64 %i.ym, %i.xw
  %i.yo = and i64 %i.yn, 71777214294589695
  %.not39.us.us.i.i.3 = icmp ne i64 %i.yo, 0      ; 2 uses
  %i.yp = zext i1 %.not39.us.us.i.i.3 to i32
  %.124.us.us.i.i.3 = add nuw nsw i32 %.124.us.us.i.i.2, %i.yp ; 2 uses
  %i.yq = select i1 %.not39.us.us.i.i.3, i32 8, i32 0
  %.1.us.us.i.i.3 = or disjoint i32 %i.yq, %.1.us.us.i.i.2 ; 2 uses
  %exitcond104.not.i.i.3 = icmp eq i32 %.val374, 4
  br i1 %exitcond104.not.i.i.3, label %._crit_edge.i.i, label %Abc_TtHasVar.exit.us.us.i.i.4

Abc_TtHasVar.exit.us.us.i.i.4:                    ; preds = %Abc_TtHasVar.exit.us.us.i.i.3
  %i.yr = lshr i64 %i.xw, 16
  %i.ys = xor i64 %i.yr, %i.xw
  %i.yt = and i64 %i.ys, 281470681808895
  %.not39.us.us.i.i.4 = icmp ne i64 %i.yt, 0      ; 2 uses
  %i.yu = zext i1 %.not39.us.us.i.i.4 to i32
  %.124.us.us.i.i.4 = add nuw nsw i32 %.124.us.us.i.i.3, %i.yu ; 2 uses
  %i.yv = select i1 %.not39.us.us.i.i.4, i32 16, i32 0
  %.1.us.us.i.i.4 = or disjoint i32 %i.yv, %.1.us.us.i.i.3 ; 2 uses
  %exitcond104.not.i.i.4 = icmp eq i32 %.val374, 5
  br i1 %exitcond104.not.i.i.4, label %._crit_edge.i.i, label %Abc_TtHasVar.exit.us.us.i.i.5

Abc_TtHasVar.exit.us.us.i.i.5:                    ; preds = %Abc_TtHasVar.exit.us.us.i.i.4
  %i.yw = lshr i64 %i.xw, 32
  %.masked1010 = and i64 %i.xw, 4294967295
  %.not39.us.us.i.i.5 = icmp ne i64 %i.yw, %.masked1010 ; 2 uses
  %i.yx = zext i1 %.not39.us.us.i.i.5 to i32
  %.124.us.us.i.i.5 = add nuw nsw i32 %.124.us.us.i.i.4, %i.yx
  %i.yy = select i1 %.not39.us.us.i.i.5, i32 32, i32 0
  %.1.us.us.i.i.5 = or disjoint i32 %i.yy, %.1.us.us.i.i.4
  br label %._crit_edge.i.i

Abc_TtHasVar.exit.us.i.i:                         ; preds = %.lr.ph.split.us.i.i
  %i.yz = lshr i64 %i.xw, 1
  %i.za = xor i64 %i.yz, %i.xw
  %i.zb = and i64 %i.za, 6148914691236517205
  %.not39.us.i.i = icmp eq i64 %i.zb, 0
  %spec.select = select i1 %.not39.us.i.i, i32 0, i32 1 ; 7 uses
  %exitcond99.not.i.i = icmp eq i32 %.val374, 1
  br i1 %exitcond99.not.i.i, label %._crit_edge.i.i, label %Abc_TtHasVar.exit.us.i.i.1

Abc_TtHasVar.exit.us.i.i.1:                       ; preds = %Abc_TtHasVar.exit.us.i.i
  %i.zc = lshr i64 %i.xw, 2
  %i.zd = xor i64 %i.zc, %i.xw
  %i.ze = and i64 %i.zd, 3689348814741910323
  %.not39.us.i.i.1 = icmp eq i64 %i.ze, 0
  br i1 %.not39.us.i.i.1, label %Abc_TtHasVar.exit.thread.us.i.i.1, label %Abc_TtHasVar.exit.thread36.us.i.i.1

Abc_TtHasVar.exit.thread36.us.i.i.1:              ; preds = %Abc_TtHasVar.exit.us.i.i.1
  %i.zf = or disjoint i32 %spec.select, 2
  %i.zg = getelementptr inbounds nuw i8, ptr %.val448, i64 4
  %i.zh = load i32, ptr %i.zg, align 4, !tbaa !37
  %i.zi = zext nneg i32 %spec.select to i64
  %i.zj = getelementptr inbounds nuw [4 x i8], ptr %.val448, i64 %i.zi
  store i32 %i.zh, ptr %i.zj, align 4, !tbaa !37
  %i.zk = add nuw nsw i32 %spec.select, 1
  br label %Abc_TtHasVar.exit.thread.us.i.i.1

Abc_TtHasVar.exit.thread.us.i.i.1:                ; preds = %Abc_TtHasVar.exit.thread36.us.i.i.1, %Abc_TtHasVar.exit.us.i.i.1
  %.124.us.i.i.1 = phi i32 [ %i.zk, %Abc_TtHasVar.exit.thread36.us.i.i.1 ], [ %spec.select, %Abc_TtHasVar.exit.us.i.i.1 ] ; 4 uses
  %.1.us.i.i.1 = phi i32 [ %i.zf, %Abc_TtHasVar.exit.thread36.us.i.i.1 ], [ %spec.select, %Abc_TtHasVar.exit.us.i.i.1 ] ; 3 uses
  %exitcond99.not.i.i.1 = icmp eq i32 %.val374, 2
  br i1 %exitcond99.not.i.i.1, label %._crit_edge.i.i, label %Abc_TtHasVar.exit.us.i.i.2

Abc_TtHasVar.exit.us.i.i.2:                       ; preds = %Abc_TtHasVar.exit.thread.us.i.i.1
  %i.zl = lshr i64 %i.xw, 4
  %i.zm = xor i64 %i.zl, %i.xw
  %i.zn = and i64 %i.zm, 1085102592571150095
  %.not39.us.i.i.2 = icmp eq i64 %i.zn, 0
  br i1 %.not39.us.i.i.2, label %Abc_TtHasVar.exit.thread.us.i.i.2, label %Abc_TtHasVar.exit.thread36.us.i.i.2

Abc_TtHasVar.exit.thread36.us.i.i.2:              ; preds = %Abc_TtHasVar.exit.us.i.i.2
  %i.zo = or i32 %.1.us.i.i.1, 4
  %i.zp = getelementptr inbounds nuw i8, ptr %.val448, i64 8
  %i.zq = load i32, ptr %i.zp, align 4, !tbaa !37
  %i.zr = sext i32 %.124.us.i.i.1 to i64
  %i.zs = getelementptr inbounds [4 x i8], ptr %.val448, i64 %i.zr
  store i32 %i.zq, ptr %i.zs, align 4, !tbaa !37
  %i.zt = add nsw i32 %.124.us.i.i.1, 1
  br label %Abc_TtHasVar.exit.thread.us.i.i.2

Abc_TtHasVar.exit.thread.us.i.i.2:                ; preds = %Abc_TtHasVar.exit.thread36.us.i.i.2, %Abc_TtHasVar.exit.us.i.i.2
  %.124.us.i.i.2 = phi i32 [ %i.zt, %Abc_TtHasVar.exit.thread36.us.i.i.2 ], [ %.124.us.i.i.1, %Abc_TtHasVar.exit.us.i.i.2 ] ; 4 uses
  %.1.us.i.i.2 = phi i32 [ %i.zo, %Abc_TtHasVar.exit.thread36.us.i.i.2 ], [ %.1.us.i.i.1, %Abc_TtHasVar.exit.us.i.i.2 ] ; 3 uses
  %exitcond99.not.i.i.2 = icmp eq i32 %.val374, 3
  br i1 %exitcond99.not.i.i.2, label %._crit_edge.i.i, label %Abc_TtHasVar.exit.us.i.i.3

Abc_TtHasVar.exit.us.i.i.3:                       ; preds = %Abc_TtHasVar.exit.thread.us.i.i.2
  %i.zu = lshr i64 %i.xw, 8
  %i.zv = xor i64 %i.zu, %i.xw
  %i.zw = and i64 %i.zv, 71777214294589695
  %.not39.us.i.i.3 = icmp eq i64 %i.zw, 0
  br i1 %.not39.us.i.i.3, label %Abc_TtHasVar.exit.thread.us.i.i.3, label %Abc_TtHasVar.exit.thread36.us.i.i.3

Abc_TtHasVar.exit.thread36.us.i.i.3:              ; preds = %Abc_TtHasVar.exit.us.i.i.3
  %i.zx = or i32 %.1.us.i.i.2, 8
  %i.zy = getelementptr inbounds nuw i8, ptr %.val448, i64 12
  %i.zz = load i32, ptr %i.zy, align 4, !tbaa !37
  %i.aaa = sext i32 %.124.us.i.i.2 to i64
  %i.aab = getelementptr inbounds [4 x i8], ptr %.val448, i64 %i.aaa
  store i32 %i.zz, ptr %i.aab, align 4, !tbaa !37
  %i.aac = add nsw i32 %.124.us.i.i.2, 1
  br label %Abc_TtHasVar.exit.thread.us.i.i.3

Abc_TtHasVar.exit.thread.us.i.i.3:                ; preds = %Abc_TtHasVar.exit.thread36.us.i.i.3, %Abc_TtHasVar.exit.us.i.i.3
  %.124.us.i.i.3 = phi i32 [ %i.aac, %Abc_TtHasVar.exit.thread36.us.i.i.3 ], [ %.124.us.i.i.2, %Abc_TtHasVar.exit.us.i.i.3 ] ; 4 uses
  %.1.us.i.i.3 = phi i32 [ %i.zx, %Abc_TtHasVar.exit.thread36.us.i.i.3 ], [ %.1.us.i.i.2, %Abc_TtHasVar.exit.us.i.i.3 ] ; 3 uses
  %exitcond99.not.i.i.3 = icmp eq i32 %.val374, 4
  br i1 %exitcond99.not.i.i.3, label %._crit_edge.i.i, label %Abc_TtHasVar.exit.us.i.i.4

Abc_TtHasVar.exit.us.i.i.4:                       ; preds = %Abc_TtHasVar.exit.thread.us.i.i.3
  %i.aad = lshr i64 %i.xw, 16
  %i.aae = xor i64 %i.aad, %i.xw
  %i.aaf = and i64 %i.aae, 281470681808895
  %.not39.us.i.i.4 = icmp eq i64 %i.aaf, 0
  br i1 %.not39.us.i.i.4, label %Abc_TtHasVar.exit.thread.us.i.i.4, label %Abc_TtHasVar.exit.thread36.us.i.i.4

Abc_TtHasVar.exit.thread36.us.i.i.4:              ; preds = %Abc_TtHasVar.exit.us.i.i.4
  %i.aag = or i32 %.1.us.i.i.3, 16
  %i.aah = getelementptr inbounds nuw i8, ptr %.val448, i64 16
  %i.aai = load i32, ptr %i.aah, align 4, !tbaa !37
  %i.aaj = sext i32 %.124.us.i.i.3 to i64
  %i.aak = getelementptr inbounds [4 x i8], ptr %.val448, i64 %i.aaj
  store i32 %i.aai, ptr %i.aak, align 4, !tbaa !37
  %i.aal = add nsw i32 %.124.us.i.i.3, 1
  br label %Abc_TtHasVar.exit.thread.us.i.i.4

Abc_TtHasVar.exit.thread.us.i.i.4:                ; preds = %Abc_TtHasVar.exit.thread36.us.i.i.4, %Abc_TtHasVar.exit.us.i.i.4
  %.124.us.i.i.4 = phi i32 [ %i.aal, %Abc_TtHasVar.exit.thread36.us.i.i.4 ], [ %.124.us.i.i.3, %Abc_TtHasVar.exit.us.i.i.4 ] ; 4 uses
  %.1.us.i.i.4 = phi i32 [ %i.aag, %Abc_TtHasVar.exit.thread36.us.i.i.4 ], [ %.1.us.i.i.3, %Abc_TtHasVar.exit.us.i.i.4 ] ; 3 uses
  %exitcond99.not.i.i.4 = icmp eq i32 %.val374, 5
  br i1 %exitcond99.not.i.i.4, label %._crit_edge.i.i, label %Abc_TtHasVar.exit.us.i.i.5

Abc_TtHasVar.exit.us.i.i.5:                       ; preds = %Abc_TtHasVar.exit.thread.us.i.i.4
  %i.aam = lshr i64 %i.xw, 32
  %.masked = and i64 %i.xw, 4294967295
  %.not39.us.i.i.5 = icmp eq i64 %i.aam, %.masked
  br i1 %.not39.us.i.i.5, label %._crit_edge.i.i, label %Abc_TtHasVar.exit.thread36.us.i.i.5

Abc_TtHasVar.exit.thread36.us.i.i.5:              ; preds = %Abc_TtHasVar.exit.us.i.i.5
  %i.aan = or i32 %.1.us.i.i.4, 32
  %i.aao = getelementptr inbounds nuw i8, ptr %.val448, i64 20
  %i.aap = load i32, ptr %i.aao, align 4, !tbaa !37
  %i.aaq = sext i32 %.124.us.i.i.4 to i64
  %i.aar = getelementptr inbounds [4 x i8], ptr %.val448, i64 %i.aaq
  store i32 %i.aap, ptr %i.aar, align 4, !tbaa !37
  %i.aas = add nsw i32 %.124.us.i.i.4, 1
  br label %._crit_edge.i.i

.lr.ph.split.i.i:                                 ; preds = %._crit_edge.i562
  br i1 %.not.i559, label %Abc_TtSimplify.exit, label %.lr.ph.split.split.i.i

.lr.ph.split.split.i.i:                           ; preds = %.lr.ph.split.i.i, %Abc_TtHasVar.exit.thread.i.i
  %indvars.iv.i78.i = phi i64 [ %indvars.iv.next.i79.i, %Abc_TtHasVar.exit.thread.i.i ], [ 0, %.lr.ph.split.i.i ] ; 7 uses
  %.047.i.i = phi i32 [ %.1.i.i, %Abc_TtHasVar.exit.thread.i.i ], [ 0, %.lr.ph.split.i.i ] ; 4 uses
  %.02346.i.i = phi i32 [ %.124.i.i, %Abc_TtHasVar.exit.thread.i.i ], [ 0, %.lr.ph.split.i.i ] ; 5 uses
  %i.aat = icmp samesign ult i64 %indvars.iv.i78.i, 6
  br i1 %i.aat, label %.lr.ph.i.i.i, label %.preheader.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.split.split.i.i
  %i.aau = trunc nuw nsw i64 %indvars.iv.i78.i to i32
  %i.aav = shl nuw nsw i32 1, %i.aau              ; 2 uses
  %i.aaw = zext nneg i32 %i.aav to i64
  %i.aax = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv.i78.i
  %i.aay = load i64, ptr %i.aax, align 8, !tbaa !46
  br label %bb.cz

bb.cy:                                            ; preds = %bb.cz
  %indvars.iv.next54.i.i.i = add nuw nsw i64 %indvars.iv53.i.i.i, 1 ; 2 uses
  %exitcond58.not.i.i.i = icmp eq i64 %indvars.iv.next54.i.i.i, %wide.trip.count57.i.i.i
  br i1 %exitcond58.not.i.i.i, label %Abc_TtHasVar.exit.thread.i.i, label %bb.cz, !llvm.loop !0

bb.cz:                                            ; preds = %bb.cy, %.lr.ph.i.i.i
  %indvars.iv53.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next54.i.i.i, %bb.cy ] ; 2 uses
  %i.aaz = getelementptr inbounds nuw [8 x i8], ptr %i.qg, i64 %indvars.iv53.i.i.i
  %i.aba = load i64, ptr %i.aaz, align 8, !tbaa !46 ; 2 uses
  %i.abb = lshr i64 %i.aba, %i.aaw
  %i.abc = xor i64 %i.abb, %i.aba
  %i.abd = and i64 %i.abc, %i.aay
  %.not39.i.i.i = icmp eq i64 %i.abd, 0
  br i1 %.not39.i.i.i, label %bb.cy, label %Abc_TtHasVar.exit.thread36.i.i

.preheader.lr.ph.i.i.i:                           ; preds = %.lr.ph.split.split.i.i
  %i.abe = add nsw i64 %indvars.iv.i78.i, -6      ; 2 uses
  %i.abf = icmp eq i64 %i.abe, 31
  %i.abg = trunc nsw i64 %i.abe to i32            ; 2 uses
  %i.abh = shl i32 2, %i.abg
  %i.abi = sext i32 %i.abh to i64
  br i1 %i.abf, label %Abc_TtHasVar.exit.thread.i.i, label %.preheader.us.preheader.i.i.i

.preheader.us.preheader.i.i.i:                    ; preds = %.preheader.lr.ph.i.i.i
  %i.abj = shl nuw i32 1, %i.abg                  ; 2 uses
  %15 = sext i32 %i.abj to i64
  %smax.i.i.i = call i32 @llvm.smax.i32(i32 %i.abj, i32 1)
  %wide.trip.count.i.i.i = zext nneg i32 %smax.i.i.i to i64
  br label %.preheader.us.i.i.i

.preheader.us.i.i.i:                              ; preds = %._crit_edge.us.i.i.i, %.preheader.us.preheader.i.i.i
  %.03343.us.i.i.i = phi ptr [ %i.abn, %._crit_edge.us.i.i.i ], [ %i.qg, %.preheader.us.preheader.i.i.i ] ; 3 uses
  %invariant.gep.i.i.i = getelementptr [8 x i8], ptr %.03343.us.i.i.i, i64 %15
  br label %bb.db

bb.da:                                            ; preds = %bb.db
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %._crit_edge.us.i.i.i, label %bb.db, !llvm.loop !1

bb.db:                                            ; preds = %bb.da, %.preheader.us.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.preheader.us.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.da ] ; 3 uses
  %i.abk = getelementptr inbounds nuw [8 x i8], ptr %.03343.us.i.i.i, i64 %indvars.iv.i.i.i
  %i.abl = load i64, ptr %i.abk, align 8, !tbaa !46
  %gep.i.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i.i, i64 %indvars.iv.i.i.i
  %i.abm = load i64, ptr %gep.i.i.i, align 8, !tbaa !46
  %.not.us.i.i.i = icmp eq i64 %i.abl, %i.abm
  br i1 %.not.us.i.i.i, label %bb.da, label %Abc_TtHasVar.exit.thread36.loopexit.i.i

._crit_edge.us.i.i.i:                             ; preds = %bb.da
  %i.abn = getelementptr inbounds [8 x i8], ptr %.03343.us.i.i.i, i64 %i.abi ; 2 uses
  %i.abo = icmp ult ptr %i.abn, %i.sq
  br i1 %i.abo, label %.preheader.us.i.i.i, label %Abc_TtHasVar.exit.thread.i.i, !llvm.loop !2

Abc_TtHasVar.exit.thread36.loopexit.i.i:          ; preds = %bb.db
  %.pre.i.i = trunc nuw nsw i64 %indvars.iv.i78.i to i32
  %.pre109.i.i = shl nuw i32 1, %.pre.i.i
  br label %Abc_TtHasVar.exit.thread36.i.i

Abc_TtHasVar.exit.thread36.i.i:                   ; preds = %bb.cz, %Abc_TtHasVar.exit.thread36.loopexit.i.i
  %.pre-phi110.i.i = phi i32 [ %.pre109.i.i, %Abc_TtHasVar.exit.thread36.loopexit.i.i ], [ %i.aav, %bb.cz ]
  %i.abp = or i32 %.pre-phi110.i.i, %.047.i.i
  br i1 %.not32.i.i, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %Abc_TtHasVar.exit.thread36.i.i
  %i.abq = getelementptr inbounds nuw [4 x i8], ptr %.val448, i64 %indvars.iv.i78.i
  %i.abr = load i32, ptr %i.abq, align 4, !tbaa !37
  %i.abs = sext i32 %.02346.i.i to i64
  %i.abt = getelementptr inbounds [4 x i8], ptr %.val448, i64 %i.abs
  store i32 %i.abr, ptr %i.abt, align 4, !tbaa !37
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %Abc_TtHasVar.exit.thread36.i.i
  %i.abu = add nsw i32 %.02346.i.i, 1
  br label %Abc_TtHasVar.exit.thread.i.i

Abc_TtHasVar.exit.thread.i.i:                     ; preds = %._crit_edge.us.i.i.i, %bb.cy, %bb.dd, %.preheader.lr.ph.i.i.i
  %.124.i.i = phi i32 [ %i.abu, %bb.dd ], [ %.02346.i.i, %bb.cy ], [ %.02346.i.i, %.preheader.lr.ph.i.i.i ], [ %.02346.i.i, %._crit_edge.us.i.i.i ] ; 2 uses
  %.1.i.i = phi i32 [ %i.abp, %bb.dd ], [ %.047.i.i, %bb.cy ], [ %.047.i.i, %.preheader.lr.ph.i.i.i ], [ %.047.i.i, %._crit_edge.us.i.i.i ] ; 2 uses
  %indvars.iv.next.i79.i = add nuw nsw i64 %indvars.iv.i78.i, 1 ; 2 uses
  %exitcond.not.i80.i = icmp eq i64 %indvars.iv.next.i79.i, %wide.trip.count.i
  br i1 %exitcond.not.i80.i, label %._crit_edge.i.i, label %.lr.ph.split.split.i.i, !llvm.loop !119

._crit_edge.i.i:                                  ; preds = %Abc_TtHasVar.exit.thread.i.i, %Abc_TtHasVar.exit.us.i.i, %Abc_TtHasVar.exit.thread.us.i.i.1, %Abc_TtHasVar.exit.thread.us.i.i.2, %Abc_TtHasVar.exit.thread.us.i.i.3, %Abc_TtHasVar.exit.thread.us.i.i.4, %Abc_TtHasVar.exit.thread36.us.i.i.5, %Abc_TtHasVar.exit.us.i.i.5, %Abc_TtHasVar.exit.us.us.i.i, %Abc_TtHasVar.exit.us.us.i.i.1, %Abc_TtHasVar.exit.us.us.i.i.2, %Abc_TtHasVar.exit.us.us.i.i.3, %Abc_TtHasVar.exit.us.us.i.i.4, %Abc_TtHasVar.exit.us.us.i.i.5
  %.023.lcssa.i.i = phi i32 [ %.124.us.i.i.4, %Abc_TtHasVar.exit.us.i.i.5 ], [ %.124.us.us.i.i.5, %Abc_TtHasVar.exit.us.us.i.i.5 ], [ %i.ya, %Abc_TtHasVar.exit.us.us.i.i ], [ %.124.us.us.i.i.1, %Abc_TtHasVar.exit.us.us.i.i.1 ], [ %.124.us.us.i.i.2, %Abc_TtHasVar.exit.us.us.i.i.2 ], [ %.124.us.us.i.i.3, %Abc_TtHasVar.exit.us.us.i.i.3 ], [ %.124.us.us.i.i.4, %Abc_TtHasVar.exit.us.us.i.i.4 ], [ %spec.select, %Abc_TtHasVar.exit.us.i.i ], [ %.124.us.i.i.1, %Abc_TtHasVar.exit.thread.us.i.i.1 ], [ %.124.us.i.i.2, %Abc_TtHasVar.exit.thread.us.i.i.2 ], [ %.124.us.i.i.3, %Abc_TtHasVar.exit.thread.us.i.i.3 ], [ %.124.us.i.i.4, %Abc_TtHasVar.exit.thread.us.i.i.4 ], [ %i.aas, %Abc_TtHasVar.exit.thread36.us.i.i.5 ], [ %.124.i.i, %Abc_TtHasVar.exit.thread.i.i ] ; 4 uses
  %.0.lcssa.i.i = phi i32 [ %.1.us.i.i.4, %Abc_TtHasVar.exit.us.i.i.5 ], [ %.1.us.us.i.i.5, %Abc_TtHasVar.exit.us.us.i.i.5 ], [ %i.yb, %Abc_TtHasVar.exit.us.us.i.i ], [ %.1.us.us.i.i.1, %Abc_TtHasVar.exit.us.us.i.i.1 ], [ %.1.us.us.i.i.2, %Abc_TtHasVar.exit.us.us.i.i.2 ], [ %.1.us.us.i.i.3, %Abc_TtHasVar.exit.us.us.i.i.3 ], [ %.1.us.us.i.i.4, %Abc_TtHasVar.exit.us.us.i.i.4 ], [ %spec.select, %Abc_TtHasVar.exit.us.i.i ], [ %.1.us.i.i.1, %Abc_TtHasVar.exit.thread.us.i.i.1 ], [ %.1.us.i.i.2, %Abc_TtHasVar.exit.thread.us.i.i.2 ], [ %.1.us.i.i.3, %Abc_TtHasVar.exit.thread.us.i.i.3 ], [ %.1.us.i.i.4, %Abc_TtHasVar.exit.thread.us.i.i.4 ], [ %i.aan, %Abc_TtHasVar.exit.thread36.us.i.i.5 ], [ %.1.i.i, %Abc_TtHasVar.exit.thread.i.i ] ; 4 uses
  %i.abv = icmp eq i32 %.0.lcssa.i.i, 0
  br i1 %i.abv, label %Abc_TtSimplify.exit, label %bb.de

bb.de:                                            ; preds = %._crit_edge.i.i
  %i.abw = add nsw i32 %.0.lcssa.i.i, 1
  %i.abx = and i32 %i.abw, %.0.lcssa.i.i
  %.not.i81.not.i = icmp eq i32 %i.abx, 0
  br i1 %.not.i81.not.i, label %Abc_TtSimplify.exit, label %.lr.ph61.i.i.i

.lr.ph61.i.i.i:                                   ; preds = %bb.de
  %i.aby = select i1 %i.so, i32 1, i32 %.fr.i.i.i ; 4 uses
  %i.abz = sext i32 %i.aby to i64
  %.idx65.i.i.i.i = shl nsw i64 %i.abz, 3         ; 2 uses
  %i.aca = getelementptr inbounds i8, ptr %i.qg, i64 %.idx65.i.i.i.i ; 2 uses
  %i.acb = icmp sgt i32 %i.aby, 0
  %wide.trip.count73.i.i.i.i = zext i32 %i.aby to i64 ; 3 uses
  br i1 %i.acb, label %.lr.ph61.split.us.split.us.i.i.i.preheader, label %Abc_TtSimplify.exit

.lr.ph61.split.us.split.us.i.i.i.preheader:       ; preds = %.lr.ph61.i.i.i
  %i.acc = add i64 %.idx65.i.i.i.i, %i.qh
  %min.iters.check885 = icmp ult i32 %i.aby, 4
  %n.vec887 = and i64 %wide.trip.count73.i.i.i.i, 2147483644 ; 3 uses
  %cmp.n901 = icmp eq i64 %n.vec887, %wide.trip.count73.i.i.i.i
  br label %.lr.ph61.split.us.split.us.i.i.i

.lr.ph61.split.us.split.us.i.i.i:                 ; preds = %.lr.ph61.split.us.split.us.i.i.i.preheader, %bb.dg
  %indvars.iv100.i.i.i = phi i64 [ %indvars.iv.next101.i.i.i, %bb.dg ], [ 0, %.lr.ph61.split.us.split.us.i.i.i.preheader ] ; 3 uses
  %.056.us.us.i.i.i = phi i32 [ %.1.us.us.i.i.i, %bb.dg ], [ 0, %.lr.ph61.split.us.split.us.i.i.i.preheader ] ; 4 uses
  %indvars105.i.i.i = trunc i64 %indvars.iv100.i.i.i to i32 ; 2 uses
  %i.acd = shl nuw i32 1, %indvars105.i.i.i
  %i.ace = and i32 %i.acd, %.0.lcssa.i.i
  %.not.us.us.i.i.i = icmp eq i32 %i.ace, 0
  br i1 %.not.us.us.i.i.i, label %bb.dg, label %.preheader.us.us.i.i.i

.preheader.us.us.i.i.i:                           ; preds = %.lr.ph61.split.us.split.us.i.i.i
  %.not15.not18.us.us.i.i.i = icmp slt i32 %.056.us.us.i.i.i, %indvars105.i.i.i
  br i1 %.not15.not18.us.us.i.i.i, label %.lr.ph.us.us.preheader.i.i.i, label %._crit_edge.split.us.us.split.us.us.i.i.i

.lr.ph.us.us.preheader.i.i.i:                     ; preds = %.preheader.us.us.i.i.i
  %i.acf = sext i32 %.056.us.us.i.i.i to i64
  br label %.lr.ph.us.us.i.i.i

.lr.ph.us.us.i.i.i:                               ; preds = %Abc_TtSwapAdjacent.exit.us.us.us.us.i.i.i, %.lr.ph.us.us.preheader.i.i.i
  %indvars.iv102.i.i.i = phi i64 [ %indvars.iv100.i.i.i, %.lr.ph.us.us.preheader.i.i.i ], [ %indvars.iv.next103.i.i.i, %Abc_TtSwapAdjacent.exit.us.us.us.us.i.i.i ] ; 4 uses
  %indvars.iv.next103.i.i.i = add nsw i64 %indvars.iv102.i.i.i, -1 ; 5 uses
  %i.acg = icmp slt i64 %indvars.iv102.i.i.i, 6
  br i1 %i.acg, label %.lr.ph64.i.us.us.us.us.i.i.i, label %bb.df

bb.df:                                            ; preds = %.lr.ph.us.us.i.i.i
  %i.ach = icmp eq i64 %indvars.iv.next103.i.i.i, 5
  br i1 %i.ach, label %.lr.ph.i.us.us.us.us.i.i.i, label %.preheader.lr.ph.i.us.us.us.us.i.i.i

.preheader.lr.ph.i.us.us.us.us.i.i.i:             ; preds = %bb.df
  %i.aci = icmp samesign ult i64 %indvars.iv102.i.i.i, 8
  %i.acj = trunc i64 %indvars.iv102.i.i.i to i32
  %i.ack = add i32 %i.acj, -7
  %i.acl = shl nuw i32 1, %i.ack
  %i.acm = select i1 %i.aci, i32 1, i32 %i.acl    ; 7 uses
  %i.acn = icmp sgt i32 %i.acm, 0
  %i.aco = shl i32 %i.acm, 2                      ; 2 uses
  %i.acp = sext i32 %i.aco to i64                 ; 3 uses
  br i1 %i.acn, label %.preheader.us.preheader.i.us.us.us.us.i.i.i, label %Abc_TtSwapAdjacent.exit.us.us.us.us.i.i.i

.preheader.us.preheader.i.us.us.us.us.i.i.i:      ; preds = %.preheader.lr.ph.i.us.us.us.us.i.i.i
  %i.acq = shl nuw nsw i32 %i.acm, 1
  %i.acr = zext nneg i32 %i.acm to i64            ; 6 uses
  %i.acs = zext nneg i32 %i.acq to i64            ; 2 uses
  %i.act = shl nuw nsw i64 %i.acr, 3              ; 2 uses
  %scevgep = getelementptr i8, ptr %i.qg, i64 %i.act
  %i.acu = shl nsw i64 %i.acp, 3                  ; 4 uses
  %i.acv = add i64 %i.acu, %i.qh
  %umax = call i64 @llvm.umax.i64(i64 %i.acc, i64 %i.acv)
  %i.acw = sub i64 %umax, %i.qh                   ; 2 uses
  %i.acx = icmp ne i64 %i.acw, %i.acu
  %umin = zext i1 %i.acx to i64                   ; 2 uses
  %i.acy = or disjoint i64 %i.acu, %umin
  %i.acz = sub i64 %i.acw, %i.acy
  %umax904 = call i64 @llvm.umax.i64(i64 %i.acu, i64 1)
  %i.ada = udiv i64 %i.acz, %umax904
  %i.adb = add i64 %i.ada, %umin
  %i.adc = shl i64 %i.adb, 3
  %i.add = mul i64 %i.adc, %i.acp                 ; 2 uses
  %i.ade = shl nuw nsw i64 %i.acr, 4
  %i.adf = getelementptr i8, ptr %i.qg, i64 %i.add
  %scevgep905 = getelementptr i8, ptr %i.adf, i64 %i.ade
  %i.adg = shl nuw nsw i64 %i.acs, 3              ; 2 uses
  %scevgep906 = getelementptr i8, ptr %i.qg, i64 %i.adg
  %i.adh = getelementptr i8, ptr %i.qg, i64 %i.add
  %i.adi = getelementptr i8, ptr %i.adh, i64 %i.act
  %scevgep907 = getelementptr i8, ptr %i.adi, i64 %i.adg
  %min.iters.check910 = icmp ult i32 %i.acm, 6
  %bound0 = icmp ult ptr %scevgep, %scevgep907
  %bound1 = icmp ult ptr %scevgep906, %scevgep905
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i32 %i.aco, 0
  %i.adj = or i1 %found.conflict, %stride.check
  %n.vec912 = and i64 %i.acr, 2147483644
  %xtraiter1004 = and i64 %i.acr, 1
  %i.adk = icmp eq i32 %i.acm, 1
  %unroll_iter1008 = and i64 %i.acr, 2147483646
  %lcmp.mod1006.not = icmp eq i64 %xtraiter1004, 0
  %lcmp.mod1007 = trunc i32 %i.acm to i1
  br label %.preheader.us.i.us.us.us.us.i.i.i

.preheader.us.i.us.us.us.us.i.i.i:                ; preds = %._crit_edge.us.i.us.us.us.us.i.i.i, %.preheader.us.preheader.i.us.us.us.us.i.i.i
  %.061.us.i.us.us.us.us.i.i.i = phi ptr [ %i.adw, %._crit_edge.us.i.us.us.us.us.i.i.i ], [ %i.qg, %.preheader.us.preheader.i.us.us.us.us.i.i.i ] ; 3 uses
  %invariant.gep.i.us.us.us.us.i.i.i = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i.us.us.us.us.i.i.i, i64 %i.acr ; 4 uses
  %invariant.gep80.i.us.us.us.us.i.i.i = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i.us.us.us.us.i.i.i, i64 %i.acs ; 4 uses
  %brmerge = select i1 %min.iters.check910, i1 true, i1 %i.adj
  br i1 %brmerge, label %scalar.ph909.preheader, label %vector.body913

scalar.ph909.preheader:                           ; preds = %.preheader.us.i.us.us.us.us.i.i.i
  br i1 %i.adk, label %scalar.ph909.epil.preheader, label %scalar.ph909

vector.body913:                                   ; preds = %.preheader.us.i.us.us.us.us.i.i.i, %vector.body913
  %index914 = phi i64 [ %index.next919, %vector.body913 ], [ 0, %.preheader.us.i.us.us.us.us.i.i.i ] ; 3 uses
  %i.adl = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.us.us.us.us.i.i.i, i64 %index914 ; 3 uses
  %i.adm = getelementptr inbounds nuw i8, ptr %i.adl, i64 16 ; 2 uses
  %wide.load915 = load <2 x i64>, ptr %i.adl, align 8, !tbaa !46, !alias.scope !139, !noalias !140
  %wide.load916 = load <2 x i64>, ptr %i.adm, align 8, !tbaa !46, !alias.scope !139, !noalias !140
  %i.adn = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i.us.us.us.us.i.i.i, i64 %index914 ; 3 uses
  %i.ado = getelementptr inbounds nuw i8, ptr %i.adn, i64 16 ; 2 uses
  %wide.load917 = load <2 x i64>, ptr %i.adn, align 8, !tbaa !46, !alias.scope !140
  %wide.load918 = load <2 x i64>, ptr %i.ado, align 8, !tbaa !46, !alias.scope !140
  store <2 x i64> %wide.load917, ptr %i.adl, align 8, !tbaa !46, !alias.scope !139, !noalias !140
  store <2 x i64> %wide.load918, ptr %i.adm, align 8, !tbaa !46, !alias.scope !139, !noalias !140
  store <2 x i64> %wide.load915, ptr %i.adn, align 8, !tbaa !46, !alias.scope !140
  store <2 x i64> %wide.load916, ptr %i.ado, align 8, !tbaa !46, !alias.scope !140
  %index.next919 = add nuw i64 %index914, 4       ; 2 uses
  %i.adp = icmp eq i64 %index.next919, %n.vec912
  br i1 %i.adp, label %._crit_edge.us.i.us.us.us.us.i.i.i, label %vector.body913, !llvm.loop !123

scalar.ph909:                                     ; preds = %scalar.ph909.preheader, %scalar.ph909
  %indvars.iv.i.us.us.us.us.i.i.i = phi i64 [ %indvars.iv.next.i.us.us.us.us.i.i.i.1, %scalar.ph909 ], [ 0, %scalar.ph909.preheader ] ; 4 uses
  %niter1009 = phi i64 [ %niter1009.next.1, %scalar.ph909 ], [ 0, %scalar.ph909.preheader ]
  %gep.i.us.us.us.us.i.i.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.us.us.us.us.i.i.i, i64 %indvars.iv.i.us.us.us.us.i.i.i ; 2 uses
  %i.adq = load i64, ptr %gep.i.us.us.us.us.i.i.i, align 8, !tbaa !46
  %gep81.i.us.us.us.us.i.i.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i.us.us.us.us.i.i.i, i64 %indvars.iv.i.us.us.us.us.i.i.i ; 2 uses
  %i.adr = load i64, ptr %gep81.i.us.us.us.us.i.i.i, align 8, !tbaa !46
  store i64 %i.adr, ptr %gep.i.us.us.us.us.i.i.i, align 8, !tbaa !46
  store i64 %i.adq, ptr %gep81.i.us.us.us.us.i.i.i, align 8, !tbaa !46
  %indvars.iv.next.i.us.us.us.us.i.i.i = or disjoint i64 %indvars.iv.i.us.us.us.us.i.i.i, 1 ; 2 uses
  %gep.i.us.us.us.us.i.i.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.us.us.us.us.i.i.i, i64 %indvars.iv.next.i.us.us.us.us.i.i.i ; 2 uses
  %i.ads = load i64, ptr %gep.i.us.us.us.us.i.i.i.1, align 8, !tbaa !46
  %gep81.i.us.us.us.us.i.i.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i.us.us.us.us.i.i.i, i64 %indvars.iv.next.i.us.us.us.us.i.i.i ; 2 uses
  %i.adt = load i64, ptr %gep81.i.us.us.us.us.i.i.i.1, align 8, !tbaa !46
  store i64 %i.adt, ptr %gep.i.us.us.us.us.i.i.i.1, align 8, !tbaa !46
  store i64 %i.ads, ptr %gep81.i.us.us.us.us.i.i.i.1, align 8, !tbaa !46
  %indvars.iv.next.i.us.us.us.us.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.us.us.us.us.i.i.i, 2 ; 2 uses
  %niter1009.next.1 = add i64 %niter1009, 2       ; 2 uses
  %niter1009.ncmp.1 = icmp eq i64 %niter1009.next.1, %unroll_iter1008
  br i1 %niter1009.ncmp.1, label %._crit_edge.us.i.us.us.us.us.i.i.i.loopexit.unr-lcssa, label %scalar.ph909, !llvm.loop !124

._crit_edge.us.i.us.us.us.us.i.i.i.loopexit.unr-lcssa: ; preds = %scalar.ph909
  br i1 %lcmp.mod1006.not, label %._crit_edge.us.i.us.us.us.us.i.i.i, label %scalar.ph909.epil.preheader

scalar.ph909.epil.preheader:                      ; preds = %._crit_edge.us.i.us.us.us.us.i.i.i.loopexit.unr-lcssa, %scalar.ph909.preheader
  %indvars.iv.i.us.us.us.us.i.i.i.epil.init = phi i64 [ 0, %scalar.ph909.preheader ], [ %indvars.iv.next.i.us.us.us.us.i.i.i.1, %._crit_edge.us.i.us.us.us.us.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod1007)
  %gep.i.us.us.us.us.i.i.i.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.us.us.us.us.i.i.i, i64 %indvars.iv.i.us.us.us.us.i.i.i.epil.init ; 2 uses
  %i.adu = load i64, ptr %gep.i.us.us.us.us.i.i.i.epil, align 8, !tbaa !46
  %gep81.i.us.us.us.us.i.i.i.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i.us.us.us.us.i.i.i, i64 %indvars.iv.i.us.us.us.us.i.i.i.epil.init ; 2 uses
  %i.adv = load i64, ptr %gep81.i.us.us.us.us.i.i.i.epil, align 8, !tbaa !46
  store i64 %i.adv, ptr %gep.i.us.us.us.us.i.i.i.epil, align 8, !tbaa !46
  store i64 %i.adu, ptr %gep81.i.us.us.us.us.i.i.i.epil, align 8, !tbaa !46
  br label %._crit_edge.us.i.us.us.us.us.i.i.i

._crit_edge.us.i.us.us.us.us.i.i.i:               ; preds = %vector.body913, %scalar.ph909.epil.preheader, %._crit_edge.us.i.us.us.us.us.i.i.i.loopexit.unr-lcssa
  %i.adw = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i.us.us.us.us.i.i.i, i64 %i.acp ; 2 uses
  %i.adx = icmp ult ptr %i.adw, %i.aca
  br i1 %i.adx, label %.preheader.us.i.us.us.us.us.i.i.i, label %Abc_TtSwapAdjacent.exit.us.us.us.us.i.i.i, !llvm.loop !125

.lr.ph.i.us.us.us.us.i.i.i:                       ; preds = %bb.df, %.lr.ph.i.us.us.us.us.i.i.i
  %.05462.i.us.us.us.us.i.i.i = phi ptr [ %i.aeb, %.lr.ph.i.us.us.us.us.i.i.i ], [ %i.qg, %bb.df ] ; 2 uses
  %i.ady = getelementptr inbounds nuw i8, ptr %.05462.i.us.us.us.us.i.i.i, i64 4 ; 2 uses
  %i.adz = load <2 x i32>, ptr %i.ady, align 4, !tbaa !37
  %i.aea = shufflevector <2 x i32> %i.adz, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.aea, ptr %i.ady, align 4, !tbaa !37
  %i.aeb = getelementptr inbounds nuw i8, ptr %.05462.i.us.us.us.us.i.i.i, i64 16 ; 2 uses
  %i.aec = icmp ult ptr %i.aeb, %i.aca
  br i1 %i.aec, label %.lr.ph.i.us.us.us.us.i.i.i, label %Abc_TtSwapAdjacent.exit.us.us.us.us.i.i.i, !llvm.loop !126

.lr.ph64.i.us.us.us.us.i.i.i:                     ; preds = %.lr.ph.us.us.i.i.i
  %i.aed = trunc nsw i64 %indvars.iv.next103.i.i.i to i32
  %i.aee = shl nuw nsw i32 1, %i.aed
  %i.aef = getelementptr inbounds [24 x i8], ptr @s_PMasks, i64 %indvars.iv.next103.i.i.i ; 3 uses
  %i.aeg = load i64, ptr %i.aef, align 8, !tbaa !46 ; 2 uses
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.aef, i64 8
  %i.aei = load i64, ptr %i.aeh, align 8, !tbaa !46 ; 2 uses
  %i.aej = zext nneg i32 %i.aee to i64            ; 3 uses
  %i.aek = getelementptr inbounds nuw i8, ptr %i.aef, i64 16
  %i.ael = load i64, ptr %i.aek, align 8, !tbaa !46 ; 2 uses
  br i1 %min.iters.check885, label %scalar.ph884.preheader, label %vector.ph886

vector.ph886:                                     ; preds = %.lr.ph64.i.us.us.us.us.i.i.i
  %broadcast.splatinsert888 = insertelement <2 x i64> poison, i64 %i.aeg, i64 0
  %broadcast.splat889 = shufflevector <2 x i64> %broadcast.splatinsert888, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert890 = insertelement <2 x i64> poison, i64 %i.aei, i64 0
  %broadcast.splat891 = shufflevector <2 x i64> %broadcast.splatinsert890, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert892 = insertelement <2 x i64> poison, i64 %i.aej, i64 0
  %broadcast.splat893 = shufflevector <2 x i64> %broadcast.splatinsert892, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert894 = insertelement <2 x i64> poison, i64 %i.ael, i64 0
  %broadcast.splat895 = shufflevector <2 x i64> %broadcast.splatinsert894, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body896

vector.body896:                                   ; preds = %vector.body896, %vector.ph886
  %index897 = phi i64 [ 0, %vector.ph886 ], [ %index.next899, %vector.body896 ] ; 2 uses
  %i.aem = getelementptr inbounds nuw [8 x i8], ptr %i.qg, i64 %index897 ; 3 uses
  %i.aen = getelementptr inbounds nuw i8, ptr %i.aem, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.aem, align 8, !tbaa !46 ; 3 uses
  %wide.load898 = load <2 x i64>, ptr %i.aen, align 8, !tbaa !46 ; 3 uses
  %i.aeo = and <2 x i64> %wide.load, %broadcast.splat889
  %i.aep = and <2 x i64> %wide.load898, %broadcast.splat889
  %i.aeq = and <2 x i64> %wide.load, %broadcast.splat891
  %i.aer = and <2 x i64> %wide.load898, %broadcast.splat891
  %i.aes = shl <2 x i64> %i.aeq, %broadcast.splat893
  %i.aet = shl <2 x i64> %i.aer, %broadcast.splat893
  %i.aeu = or <2 x i64> %i.aes, %i.aeo
  %i.aev = or <2 x i64> %i.aet, %i.aep
  %i.aew = and <2 x i64> %wide.load, %broadcast.splat895
  %i.aex = and <2 x i64> %wide.load898, %broadcast.splat895
  %i.aey = lshr <2 x i64> %i.aew, %broadcast.splat893
  %i.aez = lshr <2 x i64> %i.aex, %broadcast.splat893
  %i.afa = or <2 x i64> %i.aeu, %i.aey
  %i.afb = or <2 x i64> %i.aev, %i.aez
  store <2 x i64> %i.afa, ptr %i.aem, align 8, !tbaa !46
  store <2 x i64> %i.afb, ptr %i.aen, align 8, !tbaa !46
  %index.next899 = add nuw i64 %index897, 4       ; 2 uses
  %i.afc = icmp eq i64 %index.next899, %n.vec887
  br i1 %i.afc, label %middle.block900, label %vector.body896, !llvm.loop !127

middle.block900:                                  ; preds = %vector.body896
  br i1 %cmp.n901, label %Abc_TtSwapAdjacent.exit.us.us.us.us.i.i.i, label %scalar.ph884.preheader

scalar.ph884.preheader:                           ; preds = %.lr.ph64.i.us.us.us.us.i.i.i, %middle.block900
  %indvars.iv70.i.us.us.us.us.i.i.i.ph = phi i64 [ 0, %.lr.ph64.i.us.us.us.us.i.i.i ], [ %n.vec887, %middle.block900 ]
  br label %scalar.ph884

scalar.ph884:                                     ; preds = %scalar.ph884.preheader, %scalar.ph884
  %indvars.iv70.i.us.us.us.us.i.i.i = phi i64 [ %indvars.iv.next71.i.us.us.us.us.i.i.i, %scalar.ph884 ], [ %indvars.iv70.i.us.us.us.us.i.i.i.ph, %scalar.ph884.preheader ] ; 2 uses
  %i.afd = getelementptr inbounds nuw [8 x i8], ptr %i.qg, i64 %indvars.iv70.i.us.us.us.us.i.i.i ; 2 uses
  %i.afe = load i64, ptr %i.afd, align 8, !tbaa !46 ; 3 uses
  %i.aff = and i64 %i.afe, %i.aeg
  %i.afg = and i64 %i.afe, %i.aei
  %i.afh = shl i64 %i.afg, %i.aej
  %i.afi = or i64 %i.afh, %i.aff
  %i.afj = and i64 %i.afe, %i.ael
  %i.afk = lshr i64 %i.afj, %i.aej
  %i.afl = or i64 %i.afi, %i.afk
  store i64 %i.afl, ptr %i.afd, align 8, !tbaa !46
  %indvars.iv.next71.i.us.us.us.us.i.i.i = add nuw nsw i64 %indvars.iv70.i.us.us.us.us.i.i.i, 1 ; 2 uses
  %exitcond74.not.i.us.us.us.us.i.i.i = icmp eq i64 %indvars.iv.next71.i.us.us.us.us.i.i.i, %wide.trip.count73.i.i.i.i
  br i1 %exitcond74.not.i.us.us.us.us.i.i.i, label %Abc_TtSwapAdjacent.exit.us.us.us.us.i.i.i, label %scalar.ph884, !llvm.loop !128

Abc_TtSwapAdjacent.exit.us.us.us.us.i.i.i:        ; preds = %._crit_edge.us.i.us.us.us.us.i.i.i, %.lr.ph.i.us.us.us.us.i.i.i, %scalar.ph884, %middle.block900, %.preheader.lr.ph.i.us.us.us.us.i.i.i
  %.not15.not.us.us.us.us.i.i.i = icmp sgt i64 %indvars.iv.next103.i.i.i, %i.acf
  br i1 %.not15.not.us.us.us.us.i.i.i, label %.lr.ph.us.us.i.i.i, label %._crit_edge.split.us.us.split.us.us.i.i.i, !llvm.loop !129

._crit_edge.split.us.us.split.us.us.i.i.i:        ; preds = %Abc_TtSwapAdjacent.exit.us.us.us.us.i.i.i, %.preheader.us.us.i.i.i
  %i.afm = add nsw i32 %.056.us.us.i.i.i, 1
  br label %bb.dg

bb.dg:                                            ; preds = %._crit_edge.split.us.us.split.us.us.i.i.i, %.lr.ph61.split.us.split.us.i.i.i
  %.1.us.us.i.i.i = phi i32 [ %i.afm, %._crit_edge.split.us.us.split.us.us.i.i.i ], [ %.056.us.us.i.i.i, %.lr.ph61.split.us.split.us.i.i.i ]
  %indvars.iv.next101.i.i.i = add nuw nsw i64 %indvars.iv100.i.i.i, 1 ; 2 uses
  %exitcond107.not.i.i.i = icmp eq i64 %indvars.iv.next101.i.i.i, %wide.trip.count.i
  br i1 %exitcond107.not.i.i.i, label %Abc_TtSimplify.exit, label %.lr.ph61.split.us.split.us.i.i.i, !llvm.loop !130

Abc_TtSimplify.exit:                              ; preds = %bb.dg, %bb.ch, %.lr.ph.split.i.i, %._crit_edge.i.i, %bb.de, %.lr.ph61.i.i.i
  %.0634 = phi i32 [ %.023.lcssa.i.i, %._crit_edge.i.i ], [ %.023.lcssa.i.i, %bb.de ], [ 0, %bb.ch ], [ %.023.lcssa.i.i, %.lr.ph61.i.i.i ], [ 0, %.lr.ph.split.i.i ], [ %.023.lcssa.i.i, %bb.dg ]
  store i32 %.0634, ptr %i.pf, align 4, !tbaa !35
  %i.afn = call i32 @Gia_ManFromIfLogicCreateLut(ptr noundef nonnull %i.ki, ptr noundef %i.qg, ptr noundef nonnull %i.pe, ptr noundef nonnull %i.pi, ptr noundef nonnull %i.kx, ptr noundef nonnull %i.lh) #20 ; 3 uses
  %.val371 = load i32, ptr %i.li, align 4, !tbaa !35 ; 2 uses
  %i.afo = icmp slt i32 %.val375, %.val371
  br i1 %i.afo, label %bb.dh, label %.sink.split867

bb.dh:                                            ; preds = %Abc_TtSimplify.exit
  %i.afp = ashr i32 %i.afn, 1
  %i.afq = sub nsw i32 0, %i.afp
  %.val426 = load ptr, ptr %i.lk, align 8, !tbaa !43
  %i.afr = sext i32 %.val371 to i64
  %i.afs = getelementptr [4 x i8], ptr %.val426, i64 %i.afr
  %i.aft = getelementptr i8, ptr %i.afs, i64 -4
  store i32 %i.afq, ptr %i.aft, align 4, !tbaa !37
  br label %.sink.split867

bb.di:                                            ; preds = %bb.cg
  %i.afu = call i32 @Gia_ManFromIfLogicCreateLut(ptr noundef nonnull %i.ki, ptr noundef %i.qg, ptr noundef nonnull %i.pe, ptr noundef nonnull %i.pi, ptr noundef nonnull %i.kx, ptr noundef nonnull %i.lh) #20
  br label %.sink.split867

bb.dj:                                            ; preds = %.critedge11
  %i.afv = and i32 %i.qk, 1
  %.not361 = icmp eq i32 %i.afv, 0
  br i1 %.not361, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.afw = getelementptr inbounds [4 x i8], ptr %.val398, i64 %i.qi
  %i.afx = load i32, ptr %i.afw, align 4, !tbaa !37 ; 2 uses
  %i.afy = icmp slt i32 %i.afx, 0
  br i1 %i.afy, label %bb.dm, label %.sink.split867

bb.dl:                                            ; preds = %bb.dj
  %.val401 = load ptr, ptr %i.qc, align 8, !tbaa !43
  %i.afz = getelementptr inbounds [4 x i8], ptr %.val401, i64 %i.qi
  %i.aga = load i32, ptr %i.afz, align 4, !tbaa !37
  %.val400 = load ptr, ptr %i.ph, align 8, !tbaa !43
  %i.agb = load i32, ptr %.val400, align 4, !tbaa !37
  %i.agc = load i64, ptr %i.qg, align 8, !tbaa !46
  %i.agd = icmp eq i64 %i.agc, 6148914691236517205
  %i.age = zext i1 %i.agd to i32
  %i.agf = xor i32 %i.agb, %i.age                 ; 2 uses
  %.val415 = load ptr, ptr %i.lt, align 8, !tbaa !48
  %i.agg = sext i32 %i.aga to i64
  %i.agh = getelementptr inbounds [12 x i8], ptr %.val415, i64 %i.agg
  %.val456 = load i64, ptr %i.agh, align 4
  %i.agi = lshr i64 %.val456, 32
  %i.agj = and i64 %i.agi, 536870911
  %i.agk = getelementptr inbounds nuw [4 x i8], ptr %.val399, i64 %i.agj
  store i32 %i.agf, ptr %i.agk, align 4, !tbaa !37
  br label %.sink.split867

.sink.split867:                                   ; preds = %bb.di, %bb.dk, %bb.dl, %bb.dh, %Abc_TtSimplify.exit, %bb.bt
  %.1317.sink = phi i32 [ %i.qu, %bb.bt ], [ %i.agf, %bb.dl ], [ %i.afu, %bb.di ], [ %i.afx, %bb.dk ], [ %i.afn, %bb.dh ], [ %i.afn, %Abc_TtSimplify.exit ]
  %i.agl = getelementptr inbounds [4 x i8], ptr %.val398, i64 %i.qi
  store i32 %.1317.sink, ptr %i.agl, align 4, !tbaa !37
  br label %bb.dm

bb.dm:                                            ; preds = %.sink.split867, %bb.dk
  %indvars.iv.next737 = add nuw nsw i64 %indvars.iv736, 1 ; 2 uses
  %.val378 = load i32, ptr %i.px, align 4, !tbaa !35
  %i.agm = sext i32 %.val378 to i64
  %i.agn = icmp slt i64 %indvars.iv.next737, %i.agm
  br i1 %i.agn, label %bb.br, label %.critedge9.loopexit, !llvm.loop !131

.critedge9.loopexit:                              ; preds = %bb.dm
  %.pre767 = load ptr, ptr %i.pl, align 8, !tbaa !43
  br label %.critedge9

.critedge9:                                       ; preds = %.critedge9.loopexit, %Vec_IntStartFull.exit549
  %i.ago = phi ptr [ %.pre767, %.critedge9.loopexit ], [ %i.pk, %Vec_IntStartFull.exit549 ] ; 2 uses
  %.not.i563 = icmp eq ptr %i.ago, null
  br i1 %.not.i563, label %Vec_IntFree.exit, label %bb.dn

bb.dn:                                            ; preds = %.critedge9
  call void @free(ptr noundef nonnull %i.ago) #20
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %.critedge9, %bb.dn
  call void @free(ptr noundef nonnull %i.pi) #20
  %i.agp = load ptr, ptr %i.ph, align 8, !tbaa !43 ; 2 uses
  %.not.i564 = icmp eq ptr %i.agp, null
  br i1 %.not.i564, label %Vec_IntFree.exit565, label %bb.do

bb.do:                                            ; preds = %Vec_IntFree.exit
  call void @free(ptr noundef nonnull %i.agp) #20
  br label %Vec_IntFree.exit565

Vec_IntFree.exit565:                              ; preds = %Vec_IntFree.exit, %bb.do
  call void @free(ptr noundef nonnull %i.pe) #20
  %i.agq = load ptr, ptr %i.aa, align 8, !tbaa !36 ; 2 uses
  %i.agr = getelementptr i8, ptr %i.agq, i64 4
  %.val367685 = load i32, ptr %i.agr, align 4, !tbaa !35 ; 2 uses
  %i.ags = icmp sgt i32 %.val367685, 0
  br i1 %i.ags, label %.lr.ph688, label %.critedge13

.lr.ph688:                                        ; preds = %Vec_IntFree.exit565, %bb.ds
  %indvars.iv739 = phi i64 [ %indvars.iv.next740, %bb.ds ], [ 0, %Vec_IntFree.exit565 ] ; 4 uses
  %.val367687 = phi i32 [ %.val367, %bb.ds ], [ %.val367685, %Vec_IntFree.exit565 ]
  %i.agt = phi ptr [ %i.ahr, %bb.ds ], [ %i.agq, %Vec_IntFree.exit565 ]
  %.val450 = load ptr, ptr %i.lt, align 8, !tbaa !48 ; 2 uses
  %i.agu = getelementptr i8, ptr %i.agt, i64 8
  %.val451.val = load ptr, ptr %i.agu, align 8, !tbaa !43
  %i.agv = getelementptr inbounds nuw [4 x i8], ptr %.val451.val, i64 %indvars.iv739
  %i.agw = load i32, ptr %i.agv, align 4, !tbaa !37 ; 2 uses
  %i.agx = sext i32 %i.agw to i64
  %i.agy = getelementptr inbounds [12 x i8], ptr %.val450, i64 %i.agx
  %.not357 = icmp eq ptr %.val450, null
  br i1 %.not357, label %.critedge13, label %bb.dp

bb.dp:                                            ; preds = %.lr.ph688
  %i.agz = sub nsw i32 %.val367687, %i.u
  %i.aha = sext i32 %i.agz to i64
  %i.ahb = icmp slt i64 %indvars.iv739, %i.aha
  br i1 %i.ahb, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %bb.dp
  %i.ahc = getelementptr inbounds nuw [4 x i8], ptr %.val399, i64 %indvars.iv739
  %i.ahd = load i32, ptr %i.ahc, align 4, !tbaa !37 ; 2 uses
  %i.ahe = icmp eq i32 %i.ahd, -1
  br i1 %i.ahe, label %bb.ds, label %.sink.split869

bb.dr:                                            ; preds = %bb.dp
  %.val3.i = load i64, ptr %i.agy, align 4
  %i.ahf = trunc i64 %.val3.i to i32              ; 2 uses
  %i.ahg = and i32 %i.ahf, 536870911
  %i.ahh = sub nsw i32 %i.agw, %i.ahg
  %.val440 = load ptr, ptr %i.lo, align 8, !tbaa !43
  %i.ahi = sext i32 %i.ahh to i64
  %i.ahj = getelementptr inbounds [4 x i8], ptr %.val440, i64 %i.ahi
  %i.ahk = load i32, ptr %i.ahj, align 4, !tbaa !37
  %i.ahl = sext i32 %i.ahk to i64
  %i.ahm = getelementptr inbounds [4 x i8], ptr %.val398, i64 %i.ahl
  %i.ahn = load i32, ptr %i.ahm, align 4, !tbaa !37
  %i.aho = lshr i32 %i.ahf, 29
  %i.ahp = and i32 %i.aho, 1
  %i.ahq = xor i32 %i.ahn, %i.ahp
  br label %.sink.split869

.sink.split869:                                   ; preds = %bb.dq, %bb.dr
  %.sink870 = phi i32 [ %i.ahq, %bb.dr ], [ %i.ahd, %bb.dq ]
  call fastcc void @Gia_ManAppendCo(ptr noundef nonnull %i.ki, i32 noundef %.sink870)
  br label %bb.ds

bb.ds:                                            ; preds = %.sink.split869, %bb.dq
  %indvars.iv.next740 = add nuw nsw i64 %indvars.iv739, 1 ; 2 uses
  %i.ahr = load ptr, ptr %i.aa, align 8, !tbaa !36 ; 2 uses
  %i.ahs = getelementptr i8, ptr %i.ahr, i64 4
  %.val367 = load i32, ptr %i.ahs, align 4, !tbaa !35 ; 2 uses
  %i.aht = sext i32 %.val367 to i64
  %i.ahu = icmp slt i64 %indvars.iv.next740, %i.aht
  br i1 %i.ahu, label %.lr.ph688, label %.critedge13, !llvm.loop !132

.critedge13:                                      ; preds = %.lr.ph688, %bb.ds, %Vec_IntFree.exit565
  %.val366 = load i32, ptr %i.kz, align 4, !tbaa !35 ; 6 uses
  %i.ahv = getelementptr i8, ptr %i.ki, i64 24    ; 2 uses
  %.val394 = load i32, ptr %i.ahv, align 8, !tbaa !44 ; 11 uses
  %i.ahw = icmp sgt i32 %.val366, %.val394
  br i1 %i.ahw, label %Vec_IntFillExtra.exit.sink.split, label %bb.dt

bb.dt:                                            ; preds = %.critedge13
  %.not.i566 = icmp sgt i32 %.val394, %.val366
  br i1 %.not.i566, label %bb.du, label %Vec_IntFillExtra.exit

bb.du:                                            ; preds = %bb.dt
  %i.ahx = load i32, ptr %i.kx, align 8, !tbaa !42 ; 4 uses
  %i.ahy = shl nsw i32 %i.ahx, 1                  ; 2 uses
  %i.ahz = icmp sgt i32 %.val394, %i.ahy
  %.not.i.i567 = icmp slt i32 %i.ahx, %.val394    ; 2 uses
  br i1 %i.ahz, label %bb.dv, label %bb.dz

bb.dv:                                            ; preds = %bb.du
  br i1 %.not.i.i567, label %bb.dw, label %Vec_IntGrow.exit.i568

bb.dw:                                            ; preds = %bb.dv
  %i.aia = load ptr, ptr %i.ll, align 8, !tbaa !43 ; 2 uses
  %.not9.i.i573 = icmp eq ptr %i.aia, null
  %i.aib = sext i32 %.val394 to i64
  %i.aic = shl nsw i64 %i.aib, 2                  ; 2 uses
  br i1 %.not9.i.i573, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.aid = call ptr @realloc(ptr noundef nonnull %i.aia, i64 noundef %i.aic) #23
  br label %Vec_IntGrow.exit.sink.split.i

bb.dy:                                            ; preds = %bb.dw
  %i.aie = call noalias ptr @malloc(i64 noundef %i.aic) #21
  br label %Vec_IntGrow.exit.sink.split.i

bb.dz:                                            ; preds = %bb.du
  br i1 %.not.i.i567, label %bb.ea, label %Vec_IntGrow.exit.i568

bb.ea:                                            ; preds = %bb.dz
  %i.aif = icmp slt i32 %i.ahx, 1073741823
  %spec.select.i571 = select i1 %i.aif, i32 %i.ahy, i32 2147483647 ; 4 uses
  %.not.i22.i = icmp slt i32 %i.ahx, %spec.select.i571
  br i1 %.not.i22.i, label %bb.eb, label %Vec_IntGrow.exit.i568

bb.eb:                                            ; preds = %bb.ea
  %i.aig = load ptr, ptr %i.ll, align 8, !tbaa !43 ; 2 uses
  %.not9.i23.i = icmp eq ptr %i.aig, null
  %i.aih = sext i32 %spec.select.i571 to i64
  %i.aii = shl nuw nsw i64 %i.aih, 2              ; 2 uses
  br i1 %.not9.i23.i, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.aij = call ptr @realloc(ptr noundef nonnull %i.aig, i64 noundef %i.aii) #23
  br label %Vec_IntGrow.exit.sink.split.i

bb.ed:                                            ; preds = %bb.eb
  %i.aik = call noalias ptr @malloc(i64 noundef %i.aii) #21
  br label %Vec_IntGrow.exit.sink.split.i

Vec_IntGrow.exit.sink.split.i:                    ; preds = %bb.ec, %bb.ed, %bb.dx, %bb.dy
  %storemerge639 = phi ptr [ %i.aie, %bb.dy ], [ %i.aid, %bb.dx ], [ %i.aij, %bb.ec ], [ %i.aik, %bb.ed ]
  %spec.select.sink.i572 = phi i32 [ %.val394, %bb.dy ], [ %.val394, %bb.dx ], [ %spec.select.i571, %bb.ec ], [ %spec.select.i571, %bb.ed ]
  store ptr %storemerge639, ptr %i.ll, align 8, !tbaa !43
  store i32 %spec.select.sink.i572, ptr %i.kx, align 8, !tbaa !42
  %.pre768 = load i32, ptr %i.kz, align 4, !tbaa !35
  br label %Vec_IntGrow.exit.i568

Vec_IntGrow.exit.i568:                            ; preds = %Vec_IntGrow.exit.sink.split.i, %bb.ea, %bb.dz, %bb.dv
  %i.ail = phi i32 [ %.pre768, %Vec_IntGrow.exit.sink.split.i ], [ %.val366, %bb.ea ], [ %.val366, %bb.dz ], [ %.val366, %bb.dv ] ; 3 uses
  %i.aim = icmp slt i32 %i.ail, %.val394
  br i1 %i.aim, label %.lr.ph.i570, label %Vec_IntFillExtra.exit.sink.split

.lr.ph.i570:                                      ; preds = %Vec_IntGrow.exit.i568
  %i.ain = load ptr, ptr %i.ll, align 8, !tbaa !43
  %i.aio = sext i32 %i.ail to i64
  %i.aip = shl nsw i64 %i.aio, 2
  %scevgep.i = getelementptr i8, ptr %i.ain, i64 %i.aip
  %i.aiq = xor i32 %i.ail, -1
  %i.air = add i32 %.val394, %i.aiq
  %i.ais = zext i32 %i.air to i64
  %i.ait = shl nuw nsw i64 %i.ais, 2
  %i.aiu = add nuw nsw i64 %i.ait, 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i, i8 0, i64 %i.aiu, i1 false), !tbaa !37
  br label %Vec_IntFillExtra.exit.sink.split

Vec_IntFillExtra.exit.sink.split:                 ; preds = %Vec_IntGrow.exit.i568, %.lr.ph.i570, %.critedge13
  store i32 %.val394, ptr %i.kz, align 4, !tbaa !35
  br label %Vec_IntFillExtra.exit

Vec_IntFillExtra.exit:                            ; preds = %Vec_IntFillExtra.exit.sink.split, %bb.dt
  %.val690 = phi i32 [ %.val366, %bb.dt ], [ %.val394, %Vec_IntFillExtra.exit.sink.split ] ; 2 uses
  %i.aiv = icmp sgt i32 %.val690, 0
  br i1 %i.aiv, label %.lr.ph692, label %.critedge15

.lr.ph692:                                        ; preds = %Vec_IntFillExtra.exit
  %.val397 = load ptr, ptr %i.ll, align 8, !tbaa !43
  br label %bb.ee

bb.ee:                                            ; preds = %.lr.ph692, %bb.eg
  %.val770 = phi i32 [ %.val690, %.lr.ph692 ], [ %.val, %bb.eg ]
  %indvars.iv742 = phi i64 [ 0, %.lr.ph692 ], [ %indvars.iv.next743, %bb.eg ] ; 2 uses
  %i.aiw = getelementptr inbounds nuw [4 x i8], ptr %.val397, i64 %indvars.iv742 ; 2 uses
  %i.aix = load i32, ptr %i.aiw, align 4, !tbaa !37 ; 2 uses
  %i.aiy = icmp sgt i32 %i.aix, 0
  br i1 %i.aiy, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %bb.ee
  %.val391 = load i32, ptr %i.ahv, align 8, !tbaa !44
  %i.aiz = add nsw i32 %.val391, %i.aix
  store i32 %i.aiz, ptr %i.aiw, align 4, !tbaa !37
  %.val.pre = load i32, ptr %i.kz, align 4, !tbaa !35
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ee, %bb.ef
  %.val = phi i32 [ %.val770, %bb.ee ], [ %.val.pre, %bb.ef ] ; 2 uses
  %indvars.iv.next743 = add nuw nsw i64 %indvars.iv742, 1 ; 2 uses
  %i.aja = sext i32 %.val to i64
  %i.ajb = icmp slt i64 %indvars.iv.next743, %i.aja
  br i1 %i.ajb, label %bb.ee, label %.critedge15, !llvm.loop !133

.critedge15:                                      ; preds = %bb.eg, %Vec_IntFillExtra.exit
  %.val7.i = load i32, ptr %i.li, align 4, !tbaa !35
  %i.ajc = icmp sgt i32 %.val7.i, 0
  br i1 %i.ajc, label %.lr.ph.i574, label %Vec_IntAppend.exit

.lr.ph.i574:                                      ; preds = %.critedge15, %Vec_IntPush.exit.i
  %indvars.iv.i575 = phi i64 [ %indvars.iv.next.i577, %Vec_IntPush.exit.i ], [ 0, %.critedge15 ] ; 2 uses
  %.val6.i = load ptr, ptr %i.lk, align 8, !tbaa !43
  %i.ajd = getelementptr inbounds nuw [4 x i8], ptr %.val6.i, i64 %indvars.iv.i575
  %i.aje = load i32, ptr %i.ajd, align 4, !tbaa !37
  %i.ajf = load i32, ptr %i.kz, align 4, !tbaa !35 ; 7 uses
  %i.ajg = load i32, ptr %i.kx, align 8, !tbaa !42
  %i.ajh = icmp eq i32 %i.ajf, %i.ajg
  br i1 %i.ajh, label %bb.eh, label %.Vec_IntPush.exit_crit_edge.i

.Vec_IntPush.exit_crit_edge.i:                    ; preds = %.lr.ph.i574
  %.pre.i576 = load ptr, ptr %i.ll, align 8, !tbaa !43
  br label %Vec_IntPush.exit.i

bb.eh:                                            ; preds = %.lr.ph.i574
  %i.aji = icmp slt i32 %i.ajf, 16
  br i1 %i.aji, label %bb.ei, label %bb.el

bb.ei:                                            ; preds = %bb.eh
  %i.ajj = load ptr, ptr %i.ll, align 8, !tbaa !43 ; 2 uses
  %.not9.i.i.i584 = icmp eq ptr %i.ajj, null
  br i1 %.not9.i.i.i584, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.ajk = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ajj, i64 noundef 64) #23
  br label %Vec_IntGrow.exit11.sink.split.i.i582

bb.ek:                                            ; preds = %bb.ei
  %i.ajl = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #21
  br label %Vec_IntGrow.exit11.sink.split.i.i582

bb.el:                                            ; preds = %bb.eh
  %i.ajm = icmp samesign ult i32 %i.ajf, 1073741823
  %i.ajn = shl nuw nsw i32 %i.ajf, 1
  %spec.select.i.i579 = select i1 %i.ajm, i32 %i.ajn, i32 2147483647 ; 4 uses
  %.not.i9.i.i580 = icmp samesign ult i32 %i.ajf, %spec.select.i.i579
  %.pre10.i = load ptr, ptr %i.ll, align 8, !tbaa !43 ; 3 uses
  br i1 %.not.i9.i.i580, label %bb.em, label %Vec_IntPush.exit.i

bb.em:                                            ; preds = %bb.el
  %.not9.i10.i.i581 = icmp eq ptr %.pre10.i, null
  %i.ajo = zext nneg i32 %spec.select.i.i579 to i64
  %i.ajp = shl nuw nsw i64 %i.ajo, 2              ; 2 uses
  br i1 %.not9.i10.i.i581, label %bb.eo, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.ajq = call ptr @realloc(ptr noundef nonnull %.pre10.i, i64 noundef %i.ajp) #23
  br label %Vec_IntGrow.exit11.sink.split.i.i582

bb.eo:                                            ; preds = %bb.em
  %i.ajr = call noalias ptr @malloc(i64 noundef %i.ajp) #21
  br label %Vec_IntGrow.exit11.sink.split.i.i582

Vec_IntGrow.exit11.sink.split.i.i582:             ; preds = %bb.eo, %bb.en, %bb.ek, %bb.ej
  %i.ajs = phi ptr [ %i.ajl, %bb.ek ], [ %i.ajk, %bb.ej ], [ %i.ajq, %bb.en ], [ %i.ajr, %bb.eo ] ; 2 uses
  %spec.select.sink.i.i583 = phi i32 [ 16, %bb.ek ], [ 16, %bb.ej ], [ %spec.select.i.i579, %bb.en ], [ %spec.select.i.i579, %bb.eo ]
  store ptr %i.ajs, ptr %i.ll, align 8, !tbaa !43
  store i32 %spec.select.sink.i.i583, ptr %i.kx, align 8, !tbaa !42
  %.pre11.i = load i32, ptr %i.kz, align 4, !tbaa !35
  br label %Vec_IntPush.exit.i

Vec_IntPush.exit.i:                               ; preds = %Vec_IntGrow.exit11.sink.split.i.i582, %bb.el, %.Vec_IntPush.exit_crit_edge.i
  %i.ajt = phi i32 [ %i.ajf, %.Vec_IntPush.exit_crit_edge.i ], [ %i.ajf, %bb.el ], [ %.pre11.i, %Vec_IntGrow.exit11.sink.split.i.i582 ] ; 2 uses
  %i.aju = phi ptr [ %.pre.i576, %.Vec_IntPush.exit_crit_edge.i ], [ %.pre10.i, %bb.el ], [ %i.ajs, %Vec_IntGrow.exit11.sink.split.i.i582 ]
  %i.ajv = add nsw i32 %i.ajt, 1
  store i32 %i.ajv, ptr %i.kz, align 4, !tbaa !35
  %i.ajw = sext i32 %i.ajt to i64
  %i.ajx = getelementptr inbounds [4 x i8], ptr %i.aju, i64 %i.ajw
  store i32 %i.aje, ptr %i.ajx, align 4, !tbaa !37
  %indvars.iv.next.i577 = add nuw nsw i64 %indvars.iv.i575, 1 ; 2 uses
  %.val.i578 = load i32, ptr %i.li, align 4, !tbaa !35
  %i.ajy = sext i32 %.val.i578 to i64
  %i.ajz = icmp slt i64 %indvars.iv.next.i577, %i.ajy
  br i1 %i.ajz, label %.lr.ph.i574, label %Vec_IntAppend.exit, !llvm.loop !134

Vec_IntAppend.exit:                               ; preds = %Vec_IntPush.exit.i, %.critedge15
  %i.aka = load ptr, ptr %i.lk, align 8, !tbaa !43 ; 2 uses
  %.not.i585 = icmp eq ptr %i.aka, null
  br i1 %.not.i585, label %Vec_IntFree.exit586, label %bb.ep

bb.ep:                                            ; preds = %Vec_IntAppend.exit
  call void @free(ptr noundef nonnull %i.aka) #20
  br label %Vec_IntFree.exit586

Vec_IntFree.exit586:                              ; preds = %Vec_IntAppend.exit, %bb.ep
  call void @free(ptr noundef nonnull %i.lh) #20
  %i.akb = getelementptr inbounds nuw i8, ptr %i.ki, i64 264
  store ptr %i.kx, ptr %i.akb, align 8, !tbaa !47
  br i1 %.not354, label %bb.er, label %bb.eq

bb.eq:                                            ; preds = %Vec_IntFree.exit586
  %i.akc = call ptr @Gia_ManUpdateTimMan2(ptr noundef nonnull %0, ptr noundef nonnull %i.hz, i32 noundef 0) #20
  %i.akd = getelementptr inbounds nuw i8, ptr %i.ki, i64 752
  store ptr %i.akc, ptr %i.akd, align 8, !tbaa !32
  br label %bb.er

bb.er:                                            ; preds = %bb.eq, %Vec_IntFree.exit586
  %i.ake = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.akf = load ptr, ptr %i.ake, align 8, !tbaa !49 ; 2 uses
  %.not358 = icmp eq ptr %i.akf, null
  br i1 %.not358, label %bb.et, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.akg = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.akh = call ptr @Gia_ManUpdateExtraAig2(ptr noundef %i.akg, ptr noundef nonnull %i.akf, ptr noundef nonnull %i.hz) #20
  %i.aki = getelementptr inbounds nuw i8, ptr %i.ki, i64 536
  store ptr %i.akh, ptr %i.aki, align 8, !tbaa !49
  br label %bb.et

bb.et:                                            ; preds = %bb.es, %bb.er
  %i.akj = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.akk = load ptr, ptr %i.akj, align 8, !tbaa !141 ; 3 uses
  %.not359 = icmp eq ptr %i.akk, null
  br i1 %.not359, label %bb.ew, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.akl = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #21 ; 4 uses
  %i.akm = getelementptr inbounds nuw i8, ptr %i.akk, i64 4
  %i.akn = load i32, ptr %i.akm, align 4, !tbaa !35 ; 4 uses
  %i.ako = getelementptr inbounds nuw i8, ptr %i.akl, i64 4
  store i32 %i.akn, ptr %i.ako, align 4, !tbaa !35
  store i32 %i.akn, ptr %i.akl, align 8, !tbaa !42
  %.not.i587 = icmp eq i32 %i.akn, 0
  br i1 %.not.i587, label %Vec_IntDup.exit, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.akp = sext i32 %i.akn to i64
  %i.akq = shl nsw i64 %i.akp, 2                  ; 2 uses
  %i.akr = call noalias ptr @malloc(i64 noundef %i.akq) #21
  br label %Vec_IntDup.exit

Vec_IntDup.exit:                                  ; preds = %bb.eu, %bb.ev
  %.pre-phi12.i = phi i64 [ %i.akq, %bb.ev ], [ 0, %bb.eu ]
  %i.aks = phi ptr [ %i.akr, %bb.ev ], [ null, %bb.eu ] ; 2 uses
  %i.akt = getelementptr inbounds nuw i8, ptr %i.akl, i64 8
  store ptr %i.aks, ptr %i.akt, align 8, !tbaa !43
  %i.aku = getelementptr inbounds nuw i8, ptr %i.akk, i64 8
  %i.akv = load ptr, ptr %i.aku, align 8, !tbaa !43
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.aks, ptr align 4 %i.akv, i64 %.pre-phi12.i, i1 false)
  %i.akw = getelementptr inbounds nuw i8, ptr %i.ki, i64 480
  store ptr %i.akl, ptr %i.akw, align 8, !tbaa !141
  br label %bb.ew

bb.ew:                                            ; preds = %Vec_IntDup.exit, %bb.et
  %i.akx = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.aky = load ptr, ptr %i.akx, align 8, !tbaa !142 ; 3 uses
  %.not360 = icmp eq ptr %i.aky, null
  br i1 %.not360, label %bb.ez, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.akz = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #21 ; 4 uses
  %i.ala = getelementptr inbounds nuw i8, ptr %i.aky, i64 4
  %i.alb = load i32, ptr %i.ala, align 4, !tbaa !35 ; 4 uses
  %i.alc = getelementptr inbounds nuw i8, ptr %i.akz, i64 4
  store i32 %i.alb, ptr %i.alc, align 4, !tbaa !35
  store i32 %i.alb, ptr %i.akz, align 8, !tbaa !42
  %.not.i589 = icmp eq i32 %i.alb, 0
  br i1 %.not.i589, label %Vec_IntDup.exit592, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.ald = sext i32 %i.alb to i64
  %i.ale = shl nsw i64 %i.ald, 2                  ; 2 uses
  %i.alf = call noalias ptr @malloc(i64 noundef %i.ale) #21
  br label %Vec_IntDup.exit592

Vec_IntDup.exit592:                               ; preds = %bb.ex, %bb.ey
  %.pre-phi12.i591 = phi i64 [ %i.ale, %bb.ey ], [ 0, %bb.ex ]
  %i.alg = phi ptr [ %i.alf, %bb.ey ], [ null, %bb.ex ] ; 2 uses
  %i.alh = getelementptr inbounds nuw i8, ptr %i.akz, i64 8
  store ptr %i.alg, ptr %i.alh, align 8, !tbaa !43
  %i.ali = getelementptr inbounds nuw i8, ptr %i.aky, i64 8
  %i.alj = load ptr, ptr %i.ali, align 8, !tbaa !43
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.alg, ptr align 4 %i.alj, i64 %.pre-phi12.i591, i1 false)
  %i.alk = getelementptr inbounds nuw i8, ptr %i.ki, i64 488
  store ptr %i.akz, ptr %i.alk, align 8, !tbaa !142
  br label %bb.ez

bb.ez:                                            ; preds = %Vec_IntDup.exit592, %bb.ew
  %i.all = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.alm = load i32, ptr %i.all, align 8, !tbaa !143
  %i.aln = getelementptr inbounds nuw i8, ptr %i.ki, i64 816
  store i32 %i.alm, ptr %i.aln, align 8, !tbaa !143
  %i.alo = load i32, ptr %phi.call, align 8, !tbaa !39 ; 2 uses
  %i.alp = icmp sgt i32 %i.alo, 0
  %i.alq = getelementptr inbounds nuw i8, ptr %phi.call, i64 8 ; 2 uses
  %.pre.i.i593 = load ptr, ptr %i.alq, align 8, !tbaa !40 ; 3 uses
  br i1 %i.alp, label %.lr.ph.i.i597, label %._crit_edge.i.i594

.lr.ph.i.i597:                                    ; preds = %bb.ez, %bb.fb
  %i.alr = phi i32 [ %i.alz, %bb.fb ], [ %i.alo, %bb.ez ]
  %i.als = phi ptr [ %i.ama, %bb.fb ], [ %.pre.i.i593, %bb.ez ] ; 2 uses
  %indvars.iv.i.i598 = phi i64 [ %indvars.iv.next.i.i599, %bb.fb ], [ 0, %bb.ez ] ; 3 uses
  %i.alt = getelementptr inbounds nuw [16 x i8], ptr %i.als, i64 %indvars.iv.i.i598
  %i.alu = getelementptr inbounds nuw i8, ptr %i.alt, i64 8
  %i.alv = load ptr, ptr %i.alu, align 8, !tbaa !43 ; 2 uses
  %.not15.i.i = icmp eq ptr %i.alv, null
  br i1 %.not15.i.i, label %bb.fb, label %bb.fa

bb.fa:                                            ; preds = %.lr.ph.i.i597
  call void @free(ptr noundef nonnull %i.alv) #20
  %i.alw = load ptr, ptr %i.alq, align 8, !tbaa !40 ; 2 uses
  %i.alx = getelementptr inbounds nuw [16 x i8], ptr %i.alw, i64 %indvars.iv.i.i598
  %i.aly = getelementptr inbounds nuw i8, ptr %i.alx, i64 8
  store ptr null, ptr %i.aly, align 8, !tbaa !43
  %.pre18.i.i = load i32, ptr %phi.call, align 8, !tbaa !39
  br label %bb.fb

bb.fb:                                            ; preds = %bb.fa, %.lr.ph.i.i597
  %i.alz = phi i32 [ %.pre18.i.i, %bb.fa ], [ %i.alr, %.lr.ph.i.i597 ] ; 2 uses
  %i.ama = phi ptr [ %i.alw, %bb.fa ], [ %i.als, %.lr.ph.i.i597 ] ; 2 uses
  %indvars.iv.next.i.i599 = add nuw nsw i64 %indvars.iv.i.i598, 1 ; 2 uses
  %i.amb = sext i32 %i.alz to i64
  %i.amc = icmp slt i64 %indvars.iv.next.i.i599, %i.amb
  br i1 %i.amc, label %.lr.ph.i.i597, label %._crit_edge.thread.i.i596, !llvm.loop !135

._crit_edge.i.i594:                               ; preds = %bb.ez
  %.not.i.i595 = icmp eq ptr %.pre.i.i593, null
  br i1 %.not.i.i595, label %Vec_WecFree.exit, label %._crit_edge.thread.i.i596

._crit_edge.thread.i.i596:                        ; preds = %bb.fb, %._crit_edge.i.i594
  %i.amd = phi ptr [ %.pre.i.i593, %._crit_edge.i.i594 ], [ %i.ama, %bb.fb ]
  call void @free(ptr noundef nonnull %i.amd) #20
  br label %Vec_WecFree.exit

Vec_WecFree.exit:                                 ; preds = %._crit_edge.i.i594, %._crit_edge.thread.i.i596
  call void @free(ptr noundef nonnull %phi.call) #20
  %i.ame = getelementptr inbounds nuw i8, ptr %i.ih, i64 8
  %i.amf = load ptr, ptr %i.ame, align 8, !tbaa !43 ; 2 uses
  %.not.i600 = icmp eq ptr %i.amf, null
  br i1 %.not.i600, label %Vec_IntFree.exit601, label %bb.fc

bb.fc:                                            ; preds = %Vec_WecFree.exit
  call void @free(ptr noundef nonnull %i.amf) #20
  br label %Vec_IntFree.exit601

Vec_IntFree.exit601:                              ; preds = %Vec_WecFree.exit, %bb.fc
  call void @free(ptr noundef nonnull %i.ih) #20
  %i.amg = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.amh = load ptr, ptr %i.amg, align 8, !tbaa !43 ; 2 uses
  %.not.i602 = icmp eq ptr %i.amh, null
  br i1 %.not.i602, label %Vec_IntFree.exit603, label %bb.fd

bb.fd:                                            ; preds = %Vec_IntFree.exit601
  call void @free(ptr noundef nonnull %i.amh) #20
  br label %Vec_IntFree.exit603

Vec_IntFree.exit603:                              ; preds = %Vec_IntFree.exit601, %bb.fd
  call void @free(ptr noundef nonnull %i.bj) #20
  %i.ami = load ptr, ptr %i.lq, align 8, !tbaa !43 ; 2 uses
  %.not.i604 = icmp eq ptr %i.ami, null
  br i1 %.not.i604, label %Vec_IntFree.exit605, label %bb.fe

bb.fe:                                            ; preds = %Vec_IntFree.exit603
  call void @free(ptr noundef nonnull %i.ami) #20
  br label %Vec_IntFree.exit605

Vec_IntFree.exit605:                              ; preds = %Vec_IntFree.exit603, %bb.fe
  call void @free(ptr noundef nonnull %i.ah) #20
  %i.amj = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.amk = load ptr, ptr %i.amj, align 8, !tbaa !43 ; 2 uses
  %.not.i606 = icmp eq ptr %i.amk, null
  br i1 %.not.i606, label %Vec_IntFree.exit607, label %bb.ff

bb.ff:                                            ; preds = %Vec_IntFree.exit605
  call void @free(ptr noundef nonnull %i.amk) #20
  br label %Vec_IntFree.exit607

Vec_IntFree.exit607:                              ; preds = %Vec_IntFree.exit605, %bb.ff
  call void @free(ptr noundef nonnull %i.bk) #20
  %i.aml = load ptr, ptr %i.ig, align 8, !tbaa !43 ; 2 uses
  %.not.i608 = icmp eq ptr %i.aml, null
  br i1 %.not.i608, label %Vec_IntFree.exit609, label %bb.fg

bb.fg:                                            ; preds = %Vec_IntFree.exit607
  call void @free(ptr noundef nonnull %i.aml) #20
  br label %Vec_IntFree.exit609

Vec_IntFree.exit609:                              ; preds = %Vec_IntFree.exit607, %bb.fg
  call void @free(ptr noundef nonnull %i.hz) #20
  %i.amm = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  %i.amn = load ptr, ptr %i.amm, align 8, !tbaa !43 ; 2 uses
  %.not.i610 = icmp eq ptr %i.amn, null
  br i1 %.not.i610, label %Vec_IntFree.exit611, label %bb.fh

bb.fh:                                            ; preds = %Vec_IntFree.exit609
  call void @free(ptr noundef nonnull %i.amn) #20
  br label %Vec_IntFree.exit611

Vec_IntFree.exit611:                              ; preds = %Vec_IntFree.exit609, %bb.fh
  call void @free(ptr noundef nonnull %i.iz) #20
  %i.amo = getelementptr inbounds nuw i8, ptr %i.pn, i64 8
  %i.amp = load ptr, ptr %i.amo, align 8, !tbaa !43 ; 2 uses
  %.not.i612 = icmp eq ptr %i.amp, null
  br i1 %.not.i612, label %Vec_IntFree.exit613, label %bb.fi

bb.fi:                                            ; preds = %Vec_IntFree.exit611
  call void @free(ptr noundef nonnull %i.amp) #20
  br label %Vec_IntFree.exit613

Vec_IntFree.exit613:                              ; preds = %Vec_IntFree.exit611, %bb.fi
  call void @free(ptr noundef nonnull %i.pn) #20
  %i.amq = icmp eq ptr %.0637, null
  br i1 %i.amq, label %Vec_IntFreeP.exit, label %bb.fj

bb.fj:                                            ; preds = %Vec_IntFree.exit613
  %i.amr = getelementptr inbounds nuw i8, ptr %.0637, i64 8
  %i.ams = load ptr, ptr %i.amr, align 8, !tbaa !43 ; 2 uses
  %.not.i614 = icmp eq ptr %i.ams, null
  br i1 %.not.i614, label %bb.fk, label %.thread.i

.thread.i:                                        ; preds = %bb.fj
  call void @free(ptr noundef nonnull %i.ams) #20
  br label %bb.fk

bb.fk:                                            ; preds = %.thread.i, %bb.fj
  call void @free(ptr noundef nonnull %.0637) #20
  br label %Vec_IntFreeP.exit

Vec_IntFreeP.exit:                                ; preds = %Vec_IntFree.exit613, %bb.fk
  %i.amt = icmp eq ptr %.0636, null
  br i1 %i.amt, label %Vec_IntFreeP.exit617, label %bb.fl

bb.fl:                                            ; preds = %Vec_IntFreeP.exit
  %i.amu = getelementptr inbounds nuw i8, ptr %.0636, i64 8
  %i.amv = load ptr, ptr %i.amu, align 8, !tbaa !43 ; 2 uses
  %.not.i615 = icmp eq ptr %i.amv, null
  br i1 %.not.i615, label %bb.fm, label %.thread.i616

.thread.i616:                                     ; preds = %bb.fl
  call void @free(ptr noundef nonnull %i.amv) #20
  br label %bb.fm

bb.fm:                                            ; preds = %.thread.i616, %bb.fl
  call void @free(ptr noundef nonnull %.0636) #20
  br label %Vec_IntFreeP.exit617

Vec_IntFreeP.exit617:                             ; preds = %Vec_IntFreeP.exit, %bb.fm
  %i.amw = icmp eq ptr %.0635, null
  br i1 %i.amw, label %Vec_IntFreeP.exit620, label %bb.fn

bb.fn:                                            ; preds = %Vec_IntFreeP.exit617
  %i.amx = getelementptr inbounds nuw i8, ptr %.0635, i64 8
  %i.amy = load ptr, ptr %i.amx, align 8, !tbaa !43 ; 2 uses
  %.not.i618 = icmp eq ptr %i.amy, null
  br i1 %.not.i618, label %bb.fo, label %.thread.i619

.thread.i619:                                     ; preds = %bb.fn
  call void @free(ptr noundef nonnull %i.amy) #20
  br label %bb.fo

bb.fo:                                            ; preds = %.thread.i619, %bb.fn
  call void @free(ptr noundef nonnull %.0635) #20
  br label %Vec_IntFreeP.exit620

Vec_IntFreeP.exit620:                             ; preds = %Vec_IntFreeP.exit617, %bb.fo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret ptr %i.ki
}

declare ptr @Sfm_NtkDfs(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @Gia_ManStart(i32 noundef) local_unnamed_addr #3

declare i32 @Tim_ManBoxForCi(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @Sfm_NodeReadTruth(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @Sfm_NodeReadFanins(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @Gia_ManFromIfLogicCreateLut(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @Gia_ManAppendCo(ptr noundef %0, i32 noundef %1) unnamed_addr #5 {
bb.a:
  %i.a = tail call fastcc ptr @Gia_ManAppendObj(ptr noundef %0) ; 8 uses
  %i.b = load i64, ptr %i.a, align 4
  %i.c = or i64 %i.b, 2147483648                  ; 2 uses
  store i64 %i.c, ptr %i.a, align 4
  %i.d = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %.val20 = load ptr, ptr %i.d, align 8, !tbaa !48
  %i.e = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.f = ptrtoint ptr %.val20 to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 12
  %i.i = trunc i64 %i.h to i32
  %i.j = lshr i32 %1, 1
  %i.k = sub i32 %i.i, %i.j
  %i.l = and i32 %i.k, 536870911
  %i.m = zext nneg i32 %i.l to i64
  %i.n = and i64 %i.c, -1073741824
  %i.o = shl i32 %1, 29
  %i.p = and i32 %i.o, 536870912
  %i.q = zext nneg i32 %i.p to i64
  %i.r = or disjoint i64 %i.n, %i.q
  %i.s = or disjoint i64 %i.r, %i.m               ; 2 uses
  store i64 %i.s, ptr %i.a, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !36
  %i.v = getelementptr i8, ptr %i.u, i64 4
  %.val = load i32, ptr %i.v, align 4, !tbaa !35
  %i.w = and i32 %.val, 536870911
  %i.x = zext nneg i32 %i.w to i64
  %i.y = shl nuw nsw i64 %i.x, 32
  %i.z = and i64 %i.s, -2305843004918726657
  %i.aa = or disjoint i64 %i.z, %i.y
  store i64 %i.aa, ptr %i.a, align 4
  %i.ab = load ptr, ptr %i.t, align 8, !tbaa !36  ; 6 uses
  %.val19 = load ptr, ptr %i.d, align 8, !tbaa !48
  %i.ac = ptrtoint ptr %.val19 to i64
  %i.ad = sub i64 %i.e, %i.ac
  %i.ae = sdiv exact i64 %i.ad, 12
  %i.af = trunc i64 %i.ae to i32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 4 ; 3 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !35 ; 7 uses
  %i.ai = load i32, ptr %i.ab, align 8, !tbaa !42
  %i.aj = icmp eq i32 %i.ah, %i.ai
  br i1 %i.aj, label %bb.b, label %Vec_IntPush.exit

bb.b:                                             ; preds = %bb.a
  %i.ak = icmp slt i32 %i.ah, 16
  br i1 %i.ak, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !43 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.am, null
  br i1 %.not9.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.an = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.am, i64 noundef 64) #23
  br label %Vec_IntGrow.exit.i

bb.e:                                             ; preds = %bb.c
  %i.ao = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #21
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.e, %bb.d
  %i.ap = phi ptr [ %i.an, %bb.d ], [ %i.ao, %bb.e ]
  store ptr %i.ap, ptr %i.al, align 8, !tbaa !43
  br label %Vec_IntGrow.exit11.sink.split.i

bb.f:                                             ; preds = %bb.b
  %i.aq = icmp samesign ult i32 %i.ah, 1073741823
  %i.ar = shl nuw nsw i32 %i.ah, 1
  %spec.select.i = select i1 %i.aq, i32 %i.ar, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.ah, %spec.select.i
  br i1 %.not.i9.i, label %bb.g, label %Vec_IntPush.exit

bb.g:                                             ; preds = %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !43 ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.at, null
  %i.au = zext nneg i32 %spec.select.i to i64
  %i.av = shl nuw nsw i64 %i.au, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aw = tail call ptr @realloc(ptr noundef nonnull %i.at, i64 noundef %i.av) #23
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ax = tail call noalias ptr @malloc(i64 noundef %i.av) #21
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ay = phi ptr [ %i.aw, %bb.h ], [ %i.ax, %bb.i ]
  store ptr %i.ay, ptr %i.as, align 8, !tbaa !43
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.j, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.j ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %i.ab, align 8, !tbaa !42
  %.pre = load i32, ptr %i.ag, align 4, !tbaa !35
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.a, %bb.f, %Vec_IntGrow.exit11.sink.split.i
  %i.az = phi i32 [ %i.ah, %bb.a ], [ %i.ah, %bb.f ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !43
  %i.bc = add nsw i32 %i.az, 1
  store i32 %i.bc, ptr %i.ag, align 4, !tbaa !35
  %i.bd = sext i32 %i.az to i64
  %i.be = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.bd
  store i32 %i.af, ptr %i.be, align 4, !tbaa !37
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !144
  %.not = icmp eq ptr %i.bg, null
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %Vec_IntPush.exit
  %i.bh = load i64, ptr %i.a, align 4
  %i.bi = and i64 %i.bh, 536870911
  %i.bj = sub nsw i64 0, %i.bi
  %i.bk = getelementptr inbounds [12 x i8], ptr %i.a, i64 %i.bj
  tail call void @Gia_ObjAddFanout(ptr noundef nonnull %0, ptr noundef nonnull %i.bk, ptr noundef nonnull %i.a) #20
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %Vec_IntPush.exit
  ret void
}

declare ptr @Gia_ManUpdateTimMan2(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @Gia_ManUpdateExtraAig2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define ptr @Gia_ManPerformMfs(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 752 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !49   ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str)
  br label %bb.o

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %i.d, i64 64
  %.val = load ptr, ptr %i.f, align 8, !tbaa !34
  %i.g = getelementptr i8, ptr %.val, i64 4
  %.val.val = load i32, ptr %i.g, align 4, !tbaa !35
  %i.h = icmp sgt i32 %.val.val, 15
  br i1 %i.h, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.1)
  br label %bb.o

.thread:                                          ; preds = %bb.a, %bb.d
  %i.i = tail call i32 @Gia_ManLutSizeMax(ptr noundef nonnull %0) #20
  %i.j = icmp sgt i32 %i.i, 15
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.thread
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.2)
  br label %bb.o

bb.g:                                             ; preds = %.thread
  %i.k = tail call ptr @Gia_ManExtractMfs(ptr noundef nonnull %0) ; 3 uses
  %i.l = tail call i32 @Sfm_NtkPerform(ptr noundef %i.k, ptr noundef %1) #20 ; 2 uses
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !32
  %.not30 = icmp eq ptr %i.n, null
  br i1 %.not30, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.3)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.o = tail call ptr @Gia_ManDup(ptr noundef nonnull %0) #20 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !47   ; 2 uses
  %i.r = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #21 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !35   ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  store i32 %i.t, ptr %i.u, align 4, !tbaa !35
  store i32 %i.t, ptr %i.r, align 8, !tbaa !42
  %.not.i = icmp eq i32 %i.t, 0
  br i1 %.not.i, label %Vec_IntDup.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = sext i32 %i.t to i64
  %i.w = shl nsw i64 %i.v, 2                      ; 2 uses
  %i.x = tail call noalias ptr @malloc(i64 noundef %i.w) #21
  br label %Vec_IntDup.exit

Vec_IntDup.exit:                                  ; preds = %bb.j, %bb.k
  %.pre-phi12.i = phi i64 [ %i.w, %bb.k ], [ 0, %bb.j ]
  %i.y = phi ptr [ %i.x, %bb.k ], [ null, %bb.j ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.y, ptr %i.z, align 8, !tbaa !43
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !43
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.y, ptr align 4 %i.ab, i64 %.pre-phi12.i, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 264
  store ptr %i.r, ptr %i.ac, align 8, !tbaa !47
  tail call void @Gia_ManTransferTiming(ptr noundef %i.o, ptr noundef nonnull %0) #20
  br label %bb.n

bb.l:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !146
  %i.af = tail call ptr @Gia_ManInsertMfs(ptr noundef nonnull %0, ptr noundef %i.k, i32 noundef %i.ae) ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !147
  %.not29 = icmp eq i32 %i.ah, 0
  br i1 %.not29, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.4, i32 noundef %i.l)
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %Vec_IntDup.exit
  %.0 = phi ptr [ %i.o, %Vec_IntDup.exit ], [ %i.af, %bb.m ], [ %i.af, %bb.l ]
  tail call void @Sfm_NtkFree(ptr noundef %i.k) #20
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.f, %bb.e, %bb.c
  %.024 = phi ptr [ null, %bb.c ], [ null, %bb.e ], [ null, %bb.f ], [ %.0, %bb.n ]
  ret ptr %.024
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @Abc_Print(i32 %0, ptr noundef %1, ...) unnamed_addr #5 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.a = load i32, ptr @enable_dbg_outs, align 4, !tbaa !37
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 (...) @Abc_FrameIsBridgeMode() #20 ; 0 uses
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.c = call i32 (...) @Abc_FrameIsBridgeMode() #20
  %.not9 = icmp eq i32 %i.c, 0
  br i1 %.not9, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = call ptr @vnsprintf(ptr noundef %1, ptr noundef nonnull %2) #20 ; 3 uses
  %i.e = load ptr, ptr @stdout, align 8, !tbaa !152
  %i.f = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #24
  %i.g = trunc i64 %i.f to i32
  %i.h = call i32 @Gia_ManToBridgeText(ptr noundef %i.e, i32 noundef %i.g, ptr noundef nonnull %i.d) #20 ; 0 uses
  call void @free(ptr noundef %i.d) #20
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = load ptr, ptr @stdout, align 8, !tbaa !152, !noalias !153
  %i.j = call i32 @vfprintf(ptr noundef %i.i, ptr noundef %1, ptr noundef nonnull %2) #20, !inline_history !150 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.va_end.p0(ptr nonnull %2)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret void
}

declare i32 @Sfm_NtkPerform(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @Gia_ManDup(ptr noundef) local_unnamed_addr #3

declare void @Gia_ManTransferTiming(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @Sfm_NtkFree(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 2) i32 @Vec_IntSortCompare1(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #11 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !37
  %i.b = load i32, ptr %1, align 4, !tbaa !37
  %.0 = tail call i32 @llvm.scmp.i32.i32(i32 %i.a, i32 %i.b)
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @Gia_ManAppendObj(ptr nofree noundef captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !44   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 4 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !154
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.f = shl nsw i32 %i.b, 1
  %i.g = tail call noundef range(i32 -2147483648, 536870913) i32 @llvm.smin.i32(i32 %i.f, i32 536870912) ; 6 uses
  %i.h = icmp eq i32 %i.b, 536870912
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  tail call void @exit(i32 noundef 1) #25
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 820
  %i.j = load i32, ptr %i.i, align 4, !tbaa !155
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %i.b, i32 noundef %i.g) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !48   ; 2 uses
  %.not33 = icmp eq ptr %i.m, null
  %i.n = sext i32 %i.g to i64
  %i.o = mul nsw i64 %i.n, 12                     ; 2 uses
  br i1 %.not33, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = tail call ptr @realloc(ptr noundef nonnull %i.m, i64 noundef %i.o) #23
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.q = tail call noalias ptr @malloc(i64 noundef %i.o) #21
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.r = phi ptr [ %i.p, %bb.g ], [ %i.q, %bb.h ] ; 2 uses
  store ptr %i.r, ptr %i.l, align 8, !tbaa !48
  %i.s = load i32, ptr %i.c, align 4, !tbaa !154  ; 2 uses
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds [12 x i8], ptr %i.r, i64 %i.t
  %i.v = sub nsw i32 %i.g, %i.s
  %i.w = sext i32 %i.v to i64
  %i.x = mul nsw i64 %i.w, 12
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.u, i8 0, i64 %i.x, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !156  ; 2 uses
  %.not34 = icmp eq ptr %i.z, null
  br i1 %.not34, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = sext i32 %i.g to i64
  %i.ab = shl nsw i64 %i.aa, 2
  %i.ac = tail call ptr @realloc(ptr noundef nonnull %i.z, i64 noundef %i.ab) #23 ; 2 uses
  store ptr %i.ac, ptr %i.y, align 8, !tbaa !156
  %i.ad = load i32, ptr %i.c, align 4, !tbaa !154 ; 2 uses
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.ae
  %i.ag = sub nsw i32 %i.g, %i.ad
  %i.ah = sext i32 %i.ag to i64
  %i.ai = shl nsw i64 %i.ah, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.af, i8 0, i64 %i.ai, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  store i32 %i.g, ptr %i.c, align 4, !tbaa !154
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.a
  %i.aj = getelementptr i8, ptr %0, i64 100
  %.val = load i32, ptr %i.aj, align 4, !tbaa !35
  %.not35 = icmp eq i32 %.val, 0
  br i1 %.not35, label %bb.w, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 3 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !35 ; 7 uses
  %i.an = load i32, ptr %i.ak, align 8, !tbaa !42
  %i.ao = icmp eq i32 %i.am, %i.an
  br i1 %i.ao, label %bb.n, label %Vec_IntPush.exit

bb.n:                                             ; preds = %bb.m
  %i.ap = icmp slt i32 %i.am, 16
  br i1 %i.ap, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !43 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.ar, null
  br i1 %.not9.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.as = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ar, i64 noundef 64) #23
  br label %Vec_IntGrow.exit.i

bb.q:                                             ; preds = %bb.o
  %i.at = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #21
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.q, %bb.p
  %i.au = phi ptr [ %i.as, %bb.p ], [ %i.at, %bb.q ]
  store ptr %i.au, ptr %i.aq, align 8, !tbaa !43
  br label %Vec_IntGrow.exit11.sink.split.i

bb.r:                                             ; preds = %bb.n
  %i.av = icmp samesign ult i32 %i.am, 1073741823
  %i.aw = shl nuw nsw i32 %i.am, 1
  %spec.select.i = select i1 %i.av, i32 %i.aw, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.am, %spec.select.i
  br i1 %.not.i9.i, label %bb.s, label %Vec_IntPush.exit

bb.s:                                             ; preds = %bb.r
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !43 ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.ay, null
  %i.az = zext nneg i32 %spec.select.i to i64
  %i.ba = shl nuw nsw i64 %i.az, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bb = tail call ptr @realloc(ptr noundef nonnull %i.ay, i64 noundef %i.ba) #23
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.bc = tail call noalias ptr @malloc(i64 noundef %i.ba) #21
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bd = phi ptr [ %i.bb, %bb.t ], [ %i.bc, %bb.u ]
  store ptr %i.bd, ptr %i.ax, align 8, !tbaa !43
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.v, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.v ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %i.ak, align 8, !tbaa !42
  %.pre = load i32, ptr %i.al, align 4, !tbaa !35
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.m, %bb.r, %Vec_IntGrow.exit11.sink.split.i
  %i.be = phi i32 [ %i.am, %bb.m ], [ %i.am, %bb.r ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !43
  %i.bh = add nsw i32 %i.be, 1
  store i32 %i.bh, ptr %i.al, align 4, !tbaa !35
  %i.bi = sext i32 %i.be to i64
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.bi
  store i32 0, ptr %i.bj, align 4, !tbaa !37
  br label %bb.w

bb.w:                                             ; preds = %Vec_IntPush.exit, %bb.l
  %i.bk = load i32, ptr %i.a, align 8, !tbaa !44  ; 2 uses
  %i.bl = add nsw i32 %i.bk, 1
  store i32 %i.bl, ptr %i.a, align 8, !tbaa !44
  %i.bm = getelementptr i8, ptr %0, i64 32
  %.val36 = load ptr, ptr %i.bm, align 8, !tbaa !48
  %i.bn = sext i32 %i.bk to i64
  %i.bo = getelementptr inbounds [12 x i8], ptr %.val36, i64 %i.bn
  ret ptr %i.bo
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #14

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #15

declare void @Gia_ObjAddFanout(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @Abc_FrameIsBridgeMode(...) local_unnamed_addr #3

declare i32 @Gia_ManToBridgeText(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #16

declare ptr @vnsprintf(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #16

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #17

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32, i32) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nofree nounwind }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { nounwind }
attributes #21 = { nounwind allocsize(0) }
attributes #22 = { nounwind allocsize(0,1) }
attributes #23 = { nounwind allocsize(1) }
attributes #24 = { nounwind willreturn memory(read) }
attributes #25 = { cold noreturn nounwind }

!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !45}
!1 = distinct !{!1, !45}
!2 = distinct !{!2, !45}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 omnipotent char", !11, i64 0}
!13 = !{!"p1 _ZTS10Gia_Obj_t_", !11, i64 0}
!14 = !{!"p1 int", !11, i64 0}
!15 = !{!"p1 _ZTS10Vec_Int_t_", !11, i64 0}
!16 = !{!"Vec_Int_t_", !8, i64 0, !8, i64 4, !14, i64 8}
!17 = !{!"p1 _ZTS10Gia_Rpr_t_", !11, i64 0}
!18 = !{!"p1 _ZTS10Vec_Wec_t_", !11, i64 0}
!19 = !{!"p1 _ZTS10Vec_Str_t_", !11, i64 0}
!20 = !{!"p1 _ZTS10Abc_Cex_t_", !11, i64 0}
!21 = !{!"p1 _ZTS10Vec_Ptr_t_", !11, i64 0}
!22 = !{!"p1 _ZTS10Gia_Plc_t_", !11, i64 0}
!23 = !{!"p1 _ZTS10Gia_Man_t_", !11, i64 0}
!24 = !{!"p1 _ZTS10Vec_Flt_t_", !11, i64 0}
!25 = !{!"float", !7, i64 0}
!26 = !{!"p1 _ZTS10Vec_Vec_t_", !11, i64 0}
!27 = !{!"long", !7, i64 0}
!28 = !{!"p1 _ZTS10Vec_Wrd_t_", !11, i64 0}
!29 = !{!"p1 _ZTS10Vec_Bit_t_", !11, i64 0}
!30 = !{!"p1 _ZTS10Gia_Dat_t_", !11, i64 0}
!31 = !{!"Gia_Man_t_", !12, i64 0, !12, i64 8, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !13, i64 32, !14, i64 40, !8, i64 48, !8, i64 52, !8, i64 56, !15, i64 64, !15, i64 72, !16, i64 80, !16, i64 96, !8, i64 112, !8, i64 116, !8, i64 120, !16, i64 128, !14, i64 144, !14, i64 152, !15, i64 160, !8, i64 168, !8, i64 172, !8, i64 176, !8, i64 180, !14, i64 184, !17, i64 192, !14, i64 200, !14, i64 208, !14, i64 216, !8, i64 224, !8, i64 228, !14, i64 232, !8, i64 240, !15, i64 248, !15, i64 256, !15, i64 264, !18, i64 272, !18, i64 280, !15, i64 288, !11, i64 296, !15, i64 304, !15, i64 312, !19, i64 320, !12, i64 328, !15, i64 336, !15, i64 344, !15, i64 352, !15, i64 360, !15, i64 368, !20, i64 376, !20, i64 384, !21, i64 392, !16, i64 400, !16, i64 416, !15, i64 432, !15, i64 440, !15, i64 448, !15, i64 456, !15, i64 464, !15, i64 472, !15, i64 480, !15, i64 488, !15, i64 496, !15, i64 504, !15, i64 512, !12, i64 520, !22, i64 528, !23, i64 536, !24, i64 544, !24, i64 552, !15, i64 560, !15, i64 568, !15, i64 576, !15, i64 584, !15, i64 592, !8, i64 600, !25, i64 604, !25, i64 608, !15, i64 616, !14, i64 624, !8, i64 632, !21, i64 640, !21, i64 648, !21, i64 656, !15, i64 664, !15, i64 672, !15, i64 680, !15, i64 688, !15, i64 696, !15, i64 704, !15, i64 712, !15, i64 720, !15, i64 728, !26, i64 736, !24, i64 744, !11, i64 752, !11, i64 760, !11, i64 768, !27, i64 776, !27, i64 784, !11, i64 792, !14, i64 800, !8, i64 808, !8, i64 812, !8, i64 816, !8, i64 820, !8, i64 824, !8, i64 828, !8, i64 832, !8, i64 836, !8, i64 840, !8, i64 844, !8, i64 848, !8, i64 852, !28, i64 856, !28, i64 864, !28, i64 872, !28, i64 880, !15, i64 888, !15, i64 896, !15, i64 904, !29, i64 912, !8, i64 920, !8, i64 924, !8, i64 928, !15, i64 936, !8, i64 944, !8, i64 948, !15, i64 952, !15, i64 960, !21, i64 968, !28, i64 976, !15, i64 984, !15, i64 992, !8, i64 1000, !8, i64 1004, !28, i64 1008, !16, i64 1016, !16, i64 1032, !16, i64 1048, !30, i64 1064, !19, i64 1072, !19, i64 1080, !8, i64 1088, !8, i64 1092, !8, i64 1096, !8, i64 1100, !19, i64 1104, !15, i64 1112, !15, i64 1120, !15, i64 1128, !21, i64 1136}
!32 = !{!31, !11, i64 752}
!33 = !{!31, !8, i64 16}
!34 = !{!31, !15, i64 64}
!35 = !{!16, !8, i64 4}
!36 = !{!31, !15, i64 72}
!37 = !{!8, !8, i64 0}
!38 = !{!"Vec_Wec_t_", !8, i64 0, !8, i64 4, !15, i64 8}
!39 = !{!38, !8, i64 0}
!40 = !{!38, !15, i64 8}
!41 = !{!38, !8, i64 4}
!42 = !{!16, !8, i64 0}
!43 = !{!16, !14, i64 8}
!44 = !{!31, !8, i64 24}
!45 = !{!"llvm.loop.mustprogress"}
!46 = !{!27, !27, i64 0}
!47 = !{!31, !15, i64 264}
!48 = !{!31, !13, i64 32}
!49 = !{!31, !23, i64 536}
!50 = !{!"llvm.loop.isvectorized", i32 1}
!51 = !{!"llvm.loop.unroll.runtime.disable"}
!52 = distinct !{!52, !45}
!53 = distinct !{!53, !45}
!54 = distinct !{!54, !45}
!55 = distinct !{!55, !45}
!56 = distinct !{!56, !45}
!57 = distinct !{!57, !45}
!58 = distinct !{!58, !45}
!59 = distinct !{!59, !45, !50, !51}
!60 = distinct !{!60, !45}
!61 = distinct !{!61, !45}
!62 = distinct !{!62, !45}
!63 = distinct !{!63, !45}
!64 = distinct !{!64, !45}
!65 = distinct !{!65, !45}
!66 = !{!"Vec_Str_t_", !8, i64 0, !8, i64 4, !12, i64 8}
!67 = !{!66, !8, i64 0}
!68 = !{!66, !12, i64 8}
!69 = !{!66, !8, i64 4}
!70 = !{!"p1 long", !11, i64 0}
!71 = !{!"Vec_Wrd_t_", !8, i64 0, !8, i64 4, !70, i64 8}
!72 = !{!71, !8, i64 0}
!73 = !{!71, !70, i64 8}
!74 = !{!71, !8, i64 4}
!75 = !{!7, !7, i64 0}
!76 = distinct !{!76, !45, !50, !51}
!77 = distinct !{!77, !"LVerDomain"}
!78 = distinct !{!78, !77}
!79 = distinct !{!79, !77}
!80 = distinct !{!80, !45, !50, !51}
!81 = distinct !{!81, !45, !50}
!82 = distinct !{!82, !45}
!83 = distinct !{!83, !"LVerDomain"}
!84 = distinct !{!84, !83}
!85 = distinct !{!85, !83}
!86 = distinct !{!86, !45, !50, !51}
!87 = distinct !{!87, !45, !50}
!88 = distinct !{!88, !45}
!89 = distinct !{!89, !45}
!90 = distinct !{!90, !45}
!91 = !{!78}
!92 = !{!79}
!93 = !{!84}
!94 = !{!85}
!95 = distinct !{!95, !45}
!96 = distinct !{!96, !45}
!97 = distinct !{!97, !45}
!98 = distinct !{!98, !45}
!99 = distinct !{!99, !45, !50, !51}
!100 = distinct !{!100, !136}
!101 = distinct !{!101, !45, !50}
!102 = distinct !{!102, !45}
!103 = distinct !{!103, !45}
!104 = distinct !{!104, !45}
!105 = distinct !{!105, !136}
!106 = distinct !{!106, !45}
!107 = distinct !{!107, !45}
!108 = distinct !{!108, !45, !50, !51}
!109 = distinct !{!109, !45, !51, !50}
!110 = distinct !{!110, !45, !50, !51}
!111 = distinct !{!111, !45}
!112 = distinct !{!112, !45, !50, !51}
!113 = distinct !{!113, !45, !51, !50}
!114 = distinct !{!114, !45, !50, !51}
!115 = distinct !{!115, !45}
!116 = distinct !{!116, !45}
!117 = distinct !{!117, !45}
!118 = distinct !{!118, !45}
!119 = distinct !{!119, !45}
!120 = distinct !{!120, !"LVerDomain"}
!121 = distinct !{!121, !120}
!122 = distinct !{!122, !120}
!123 = distinct !{!123, !45, !50, !51}
!124 = distinct !{!124, !45, !50}
!125 = distinct !{!125, !45}
!126 = distinct !{!126, !45}
!127 = distinct !{!127, !45, !50, !51}
!128 = distinct !{!128, !45, !51, !50}
!129 = distinct !{!129, !45}
!130 = distinct !{!130, !45}
!131 = distinct !{!131, !45}
!132 = distinct !{!132, !45}
!133 = distinct !{!133, !45}
!134 = distinct !{!134, !45}
!135 = distinct !{!135, !45}
!136 = !{!"llvm.loop.unroll.disable"}
!137 = !{!31, !12, i64 0}
!138 = !{!31, !12, i64 8}
!139 = !{!121}
!140 = !{!122}
!141 = !{!31, !15, i64 480}
!142 = !{!31, !15, i64 488}
!143 = !{!31, !8, i64 816}
!144 = !{!31, !14, i64 232}
!145 = !{!"Sfm_Par_t_", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !8, i64 72, !8, i64 76, !8, i64 80, !8, i64 84, !8, i64 88, !8, i64 92, !8, i64 96, !8, i64 100, !8, i64 104, !8, i64 108, !8, i64 112, !8, i64 116, !8, i64 120}
!146 = !{!145, !8, i64 104}
!147 = !{!145, !8, i64 116}
!148 = distinct !{!148, !"vprintf"}
!149 = distinct !{!149, !148, !"vprintf: argument 0"}
!150 = distinct !{null}
!151 = !{!"p1 _ZTS8_IO_FILE", !11, i64 0}
!152 = !{!151, !151, i64 0}
!153 = !{!149}
!154 = !{!31, !8, i64 28}
!155 = !{!31, !8, i64 820}
!156 = !{!31, !14, i64 40}
end_hunk_1
