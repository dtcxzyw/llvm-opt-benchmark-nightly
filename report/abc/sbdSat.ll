Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/sbdSat?download=true
inline.NumInlined: 155
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 18
begin_hunk_0_@Sbd_SolverTopo:bb.a
  %.1.lcssa.us = phi i32 [ %.0478.us, %.preheader459.us ], [ %.lcssa975, %._crit_edge472.us.us ] ; 2 uses
  %indvars.iv.next686 = add nuw nsw i64 %indvars.iv685, 1 ; 2 uses
  %indvars.iv.next682 = add i32 %indvars.iv681, 1
  %exitcond689.not = icmp eq i64 %indvars.iv.next686, %wide.trip.count688
  br i1 %exitcond689.not, label %._crit_edge479, label %.preheader459.us, !llvm.loop !81

.preheader461:                                    ; preds = %.preheader462, %.preheader461
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %.preheader461 ], [ 0, %.preheader462 ] ; 9 uses
  %niter = phi i64 [ %niter.next.7, %.preheader461 ], [ 0, %.preheader462 ]
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %indvars.iv
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.z, i8 -1, i64 %i.j, i1 false), !tbaa !18
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %indvars.iv
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ab, i8 -1, i64 %i.j, i1 false), !tbaa !18
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %indvars.iv
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ad, i8 -1, i64 %i.j, i1 false), !tbaa !18
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %indvars.iv
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 72
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.af, i8 -1, i64 %i.j, i1 false), !tbaa !18
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %indvars.iv
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 96
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ah, i8 -1, i64 %i.j, i1 false), !tbaa !18
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %indvars.iv
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 120
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.aj, i8 -1, i64 %i.j, i1 false), !tbaa !18
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %indvars.iv
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 144
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.al, i8 -1, i64 %i.j, i1 false), !tbaa !18
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %indvars.iv
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 168
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.an, i8 -1, i64 %i.j, i1 false), !tbaa !18
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge467.unr-lcssa, label %.preheader461, !llvm.loop !82

._crit_edge467.unr-lcssa:                         ; preds = %.preheader461
  br i1 %lcmp.mod.not, label %._crit_edge467, label %.preheader461.epil.preheader

.preheader461.epil.preheader:                     ; preds = %._crit_edge467.unr-lcssa, %.preheader462
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader462 ], [ %indvars.iv.next.7, %._crit_edge467.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod988)
  br label %.preheader461.epil

.preheader461.epil:                               ; preds = %.preheader461.epil, %.preheader461.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.preheader461.epil.preheader ], [ %indvars.iv.next.epil, %.preheader461.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.preheader461.epil.preheader ], [ %epil.iter.next, %.preheader461.epil ]
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %indvars.iv.epil
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ao, i8 -1, i64 %i.j, i1 false), !tbaa !18
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge467, label %.preheader461.epil, !llvm.loop !83

._crit_edge467:                                   ; preds = %.preheader461.epil, %._crit_edge467.unr-lcssa
  %indvars.iv.next669 = add nuw nsw i64 %indvars.iv668, 1 ; 2 uses
  %exitcond672.not = icmp eq i64 %indvars.iv.next669, %wide.trip.count671
  br i1 %exitcond672.not, label %.preheader460, label %.preheader462, !llvm.loop !84

._crit_edge479:                                   ; preds = %._crit_edge475.split.us.us, %bb.a, %.preheader459.lr.ph, %.preheader460
  %.0.lcssa = phi i32 [ 0, %.preheader460 ], [ 0, %.preheader459.lr.ph ], [ 0, %bb.a ], [ %.1.lcssa.us, %._crit_edge475.split.us.us ] ; 6 uses
  %i.ap = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %.0.lcssa) ; 0 uses
  store i32 %.0.lcssa, ptr %7, align 4, !tbaa !18
  %i.aq = tail call ptr @sat_solver_new() #21     ; 15 uses
  tail call void @sat_solver_setnvars(ptr noundef %i.aq, i32 noundef %.0.lcssa) #21
  %i.ar = add nsw i32 %1, %0                      ; 6 uses
  %i.as = add i32 %i.ar, -1                       ; 3 uses
  %i.at = icmp sgt i32 %i.ar, 1
  br i1 %i.at, label %.lr.ph, label %bb.n

.lr.ph:                                           ; preds = %._crit_edge479
  %i.au = icmp sgt i32 %2, 0
  %wide.trip.count703 = zext nneg i32 %i.as to i64
  %wide.trip.count698 = zext nneg i32 %1 to i64
  %wide.trip.count693 = zext nneg i32 %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %._crit_edge485.split
  %indvars.iv700 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next701, %._crit_edge485.split ] ; 2 uses
  %storemerge438503 = phi ptr [ %i.c, %.lr.ph ], [ %storemerge438497, %._crit_edge485.split ] ; 3 uses
  br i1 %i.e, label %.preheader457.lr.ph, label %._crit_edge485.split

.preheader457.lr.ph:                              ; preds = %bb.b
  %invariant.gep = getelementptr inbounds nuw [24 x i8], ptr %3, i64 %indvars.iv700
  br i1 %i.au, label %.preheader457, label %._crit_edge485.split

.preheader457:                                    ; preds = %.preheader457.lr.ph, %._crit_edge483
  %indvars.iv695 = phi i64 [ %indvars.iv.next696, %._crit_edge483 ], [ 0, %.preheader457.lr.ph ] ; 2 uses
  %storemerge438502 = phi ptr [ %storemerge438499, %._crit_edge483 ], [ %storemerge438503, %.preheader457.lr.ph ]
  %.val360496 = phi i32 [ %.val360494, %._crit_edge483 ], [ 0, %.preheader457.lr.ph ]
  %gep = getelementptr inbounds nuw [912 x i8], ptr %invariant.gep, i64 %indvars.iv695
  br label %bb.c

bb.c:                                             ; preds = %.preheader457, %bb.m
  %indvars.iv690 = phi i64 [ 0, %.preheader457 ], [ %indvars.iv.next691, %bb.m ] ; 2 uses
  %storemerge438501 = phi ptr [ %storemerge438502, %.preheader457 ], [ %storemerge438499, %bb.m ] ; 7 uses
  %.val360495 = phi i32 [ %.val360496, %.preheader457 ], [ %.val360494, %bb.m ] ; 8 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %gep, i64 %indvars.iv690
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !18 ; 2 uses
  %i.ax = icmp sgt i32 %i.aw, -1
  br i1 %i.ax, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.ay = shl nuw nsw i32 %i.aw, 1
  %i.az = load i32, ptr %i.a, align 8, !tbaa !12
  %i.ba = icmp eq i32 %.val360495, %i.az
  br i1 %i.ba, label %bb.e, label %Vec_IntPush.exit

bb.e:                                             ; preds = %bb.d
  %i.bb = icmp slt i32 %.val360495, 16
  br i1 %i.bb, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %.not9.i.i = icmp eq ptr %storemerge438501, null
  br i1 %.not9.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bc = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge438501, i64 noundef 64) #20
  br label %Vec_IntGrow.exit11.sink.split.i

bb.h:                                             ; preds = %bb.f
  %i.bd = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #19
  br label %Vec_IntGrow.exit11.sink.split.i

bb.i:                                             ; preds = %bb.e
  %i.be = icmp samesign ult i32 %.val360495, 1073741823
  %i.bf = shl nuw nsw i32 %.val360495, 1
  %spec.select.i = select i1 %i.be, i32 %i.bf, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %.val360495, %spec.select.i
  br i1 %.not.i9.i, label %bb.j, label %Vec_IntPush.exit

bb.j:                                             ; preds = %bb.i
  %.not9.i10.i = icmp eq ptr %storemerge438501, null
  %i.bg = zext nneg i32 %spec.select.i to i64
  %i.bh = shl nuw nsw i64 %i.bg, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bi = tail call ptr @realloc(ptr noundef nonnull %storemerge438501, i64 noundef %i.bh) #20
  br label %Vec_IntGrow.exit11.sink.split.i

bb.l:                                             ; preds = %bb.j
  %i.bj = tail call noalias ptr @malloc(i64 noundef %i.bh) #19
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.k, %bb.l, %bb.g, %bb.h
  %storemerge438 = phi ptr [ %i.bd, %bb.h ], [ %i.bc, %bb.g ], [ %i.bi, %bb.k ], [ %i.bj, %bb.l ]
  %spec.select.sink.i = phi i32 [ 16, %bb.h ], [ 16, %bb.g ], [ %spec.select.i, %bb.k ], [ %spec.select.i, %bb.l ]
  store i32 %spec.select.sink.i, ptr %i.a, align 8, !tbaa !12
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.d, %bb.i, %Vec_IntGrow.exit11.sink.split.i
  %storemerge438500 = phi ptr [ %storemerge438501, %bb.d ], [ %storemerge438501, %bb.i ], [ %storemerge438, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.bk = add nsw i32 %.val360495, 1
  %i.bl = sext i32 %.val360495 to i64
  %i.bm = getelementptr inbounds [4 x i8], ptr %storemerge438500, i64 %i.bl
  store i32 %i.ay, ptr %i.bm, align 4, !tbaa !18
  br label %bb.m

bb.m:                                             ; preds = %bb.c, %Vec_IntPush.exit
  %storemerge438499 = phi ptr [ %storemerge438501, %bb.c ], [ %storemerge438500, %Vec_IntPush.exit ] ; 3 uses
  %.val360494 = phi i32 [ %.val360495, %bb.c ], [ %i.bk, %Vec_IntPush.exit ] ; 3 uses
  %indvars.iv.next691 = add nuw nsw i64 %indvars.iv690, 1 ; 2 uses
  %exitcond694.not = icmp eq i64 %indvars.iv.next691, %wide.trip.count693
  br i1 %exitcond694.not, label %._crit_edge483, label %bb.c, !llvm.loop !85

._crit_edge483:                                   ; preds = %bb.m
  %indvars.iv.next696 = add nuw nsw i64 %indvars.iv695, 1 ; 2 uses
  %exitcond699.not = icmp eq i64 %indvars.iv.next696, %wide.trip.count698
  br i1 %exitcond699.not, label %._crit_edge485.split, label %.preheader457, !llvm.loop !86

._crit_edge485.split:                             ; preds = %._crit_edge483, %.preheader457.lr.ph, %bb.b
  %storemerge438497 = phi ptr [ %storemerge438503, %bb.b ], [ %storemerge438503, %.preheader457.lr.ph ], [ %storemerge438499, %._crit_edge483 ] ; 5 uses
  %.val360492 = phi i32 [ 0, %bb.b ], [ 0, %.preheader457.lr.ph ], [ %.val360494, %._crit_edge483 ] ; 2 uses
  %i.bn = sext i32 %.val360492 to i64
  %i.bo = getelementptr inbounds [4 x i8], ptr %storemerge438497, i64 %i.bn
  %i.bp = tail call i32 @sat_solver_addclause(ptr noundef %i.aq, ptr noundef %storemerge438497, ptr noundef %i.bo) #21 ; 0 uses
  %indvars.iv.next701 = add nuw nsw i64 %indvars.iv700, 1 ; 2 uses
  %exitcond704.not = icmp eq i64 %indvars.iv.next701, %wide.trip.count703
  br i1 %exitcond704.not, label %._crit_edge488, label %bb.b, !llvm.loop !87

._crit_edge488:                                   ; preds = %._crit_edge485.split
  store i32 %.val360492, ptr %i.b, align 4, !tbaa !11
  store ptr %storemerge438497, ptr %i.d, align 8
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge488, %._crit_edge479
  %.promoted516.us872 = phi ptr [ %storemerge438497, %._crit_edge488 ], [ %i.c, %._crit_edge479 ] ; 5 uses
  %.2305.lcssa = phi i32 [ %i.as, %._crit_edge488 ], [ 0, %._crit_edge479 ]
  %i.bq = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %.2305.lcssa) ; 0 uses
  br i1 %i.e, label %.preheader456.lr.ph, label %._crit_edge541.thread938

._crit_edge541.thread938:                         ; preds = %bb.n
  %i.br = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 0) ; 0 uses
  %i.bs = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef 0) ; 0 uses
  br label %._crit_edge608

.preheader456.lr.ph:                              ; preds = %bb.n
  %i.bt = icmp sgt i32 %2, 0
  br i1 %i.bt, label %.preheader456.us.preheader, label %.preheader454.lr.ph

.preheader456.us.preheader:                       ; preds = %.preheader456.lr.ph
  %i.bu = add i32 %0, -1
  %i.bv = sext i32 %0 to i64
  %wide.trip.count740 = zext nneg i32 %1 to i64
  %wide.trip.count735 = zext nneg i32 %2 to i64
  br label %.preheader456.us

.preheader456.us:                                 ; preds = %.preheader456.us.preheader, %._crit_edge537.us
  %.val339.us880 = phi ptr [ %.promoted516.us872, %.preheader456.us.preheader ], [ %.val339.us883, %._crit_edge537.us ]
  %.val340.us873 = phi ptr [ %.promoted516.us872, %.preheader456.us.preheader ], [ %.val340.us875, %._crit_edge537.us ]
  %.promoted516.us867 = phi ptr [ %.promoted516.us872, %.preheader456.us.preheader ], [ %.promoted516.us869, %._crit_edge537.us ]
  %indvars.iv737 = phi i64 [ 0, %.preheader456.us.preheader ], [ %indvars.iv.next738, %._crit_edge537.us ] ; 3 uses
  %indvars.iv720 = phi i32 [ %i.bu, %.preheader456.us.preheader ], [ %indvars.iv.next721, %._crit_edge537.us ] ; 2 uses
  %indvars.iv712 = phi i32 [ %0, %.preheader456.us.preheader ], [ %indvars.iv.next713, %._crit_edge537.us ] ; 3 uses
  %.0281540.us = phi i32 [ 0, %.preheader456.us.preheader ], [ %.2283.lcssa.us, %._crit_edge537.us ]
  %i.bw = add nsw i64 %indvars.iv737, %i.bv       ; 2 uses
  %i.bx = icmp sgt i64 %i.bw, 0
  %i.by = getelementptr inbounds nuw [912 x i8], ptr %3, i64 %indvars.iv737 ; 2 uses
  %wide.trip.count714 = zext i32 %indvars.iv712 to i64
  %wide.trip.count730 = zext i32 %indvars.iv712 to i64 ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %.preheader456.us, %._crit_edge530.us
  %.val339.us882 = phi ptr [ %.val339.us880, %.preheader456.us ], [ %.val339.us883, %._crit_edge530.us ]
  %.val340.us874 = phi ptr [ %.val340.us873, %.preheader456.us ], [ %.val340.us875, %._crit_edge530.us ] ; 4 uses
  %.promoted516.us = phi ptr [ %.promoted516.us867, %.preheader456.us ], [ %.promoted516.us869, %._crit_edge530.us ]
  %indvars.iv732 = phi i64 [ 0, %.preheader456.us ], [ %indvars.iv.next733, %._crit_edge530.us ] ; 3 uses
  %.1282535.us = phi i32 [ %.0281540.us, %.preheader456.us ], [ %.2283.lcssa.us, %._crit_edge530.us ] ; 2 uses
  store i32 0, ptr %i.b, align 4, !tbaa !11
  br i1 %i.bx, label %.lr.ph506.us, label %.thread

.thread:                                          ; preds = %bb.o
  %i.bz = tail call i32 @sat_solver_addclause(ptr noundef %i.aq, ptr noundef %.val340.us874, ptr noundef %.val340.us874) #21 ; 0 uses
  br label %._crit_edge530.us

bb.p:                                             ; preds = %.lr.ph506.us, %Vec_IntPush.exit369.us
  %indvars.iv707 = phi i64 [ 0, %.lr.ph506.us ], [ %indvars.iv.next708, %Vec_IntPush.exit369.us ] ; 2 uses
  %indvars.iv705 = phi i64 [ 0, %.lr.ph506.us ], [ %indvars.iv.next706, %Vec_IntPush.exit369.us ] ; 7 uses
  %storemerge437517.us = phi ptr [ %.promoted516.us, %.lr.ph506.us ], [ %storemerge437518.us, %Vec_IntPush.exit369.us ] ; 6 uses
  %spec.select.sink.i366515.us = phi i32 [ %.promoted513.us, %.lr.ph506.us ], [ %spec.select.sink.i366514.us, %Vec_IntPush.exit369.us ] ; 3 uses
  %gep510.us = getelementptr inbounds nuw [24 x i8], ptr %invariant.gep509.us, i64 %indvars.iv707
  %i.ca = load i32, ptr %gep510.us, align 4, !tbaa !18
  %i.cb = shl nsw i32 %i.ca, 1
  %i.cc = trunc nsw i64 %indvars.iv705 to i32
  %i.cd = icmp eq i32 %spec.select.sink.i366515.us, %i.cc
  br i1 %i.cd, label %bb.q, label %Vec_IntPush.exit369.us

bb.q:                                             ; preds = %bb.p
  %i.ce = icmp samesign ult i64 %indvars.iv705, 16
  br i1 %i.ce, label %bb.v, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cf = icmp samesign ult i64 %indvars.iv705, 1073741823
  %indvars.iv705.tr = trunc nsw i64 %indvars.iv705 to i32
  %i.cg = shl nsw i32 %indvars.iv705.tr, 1
  %spec.select.i362.us = select i1 %i.cf, i32 %i.cg, i32 2147483647 ; 4 uses
  %i.ch = sext i32 %spec.select.i362.us to i64
  %.not.i9.i363.us = icmp samesign ult i64 %indvars.iv705, %i.ch
  br i1 %.not.i9.i363.us, label %bb.s, label %Vec_IntPush.exit369.us

bb.s:                                             ; preds = %bb.r
  %.not9.i10.i364.us = icmp eq ptr %storemerge437517.us, null
  %i.ci = zext nneg i32 %spec.select.i362.us to i64
  %i.cj = shl nuw nsw i64 %i.ci, 2                ; 2 uses
  br i1 %.not9.i10.i364.us, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ck = tail call ptr @realloc(ptr noundef nonnull %storemerge437517.us, i64 noundef %i.cj) #20
  br label %Vec_IntPush.exit369.us

bb.u:                                             ; preds = %bb.s
  %i.cl = tail call noalias ptr @malloc(i64 noundef %i.cj) #19
  br label %Vec_IntPush.exit369.us

bb.v:                                             ; preds = %bb.q
  %.not9.i.i367.us = icmp eq ptr %storemerge437517.us, null
  br i1 %.not9.i.i367.us, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cm = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge437517.us, i64 noundef 64) #20
  br label %Vec_IntPush.exit369.us

bb.x:                                             ; preds = %bb.v
  %i.cn = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #19
  br label %Vec_IntPush.exit369.us

Vec_IntPush.exit369.us:                           ; preds = %bb.t, %bb.u, %bb.w, %bb.x, %bb.r, %bb.p
  %storemerge437518.us = phi ptr [ %storemerge437517.us, %bb.p ], [ %storemerge437517.us, %bb.r ], [ %i.cn, %bb.x ], [ %i.cm, %bb.w ], [ %i.ck, %bb.t ], [ %i.cl, %bb.u ] ; 8 uses
  %spec.select.sink.i366514.us = phi i32 [ %spec.select.sink.i366515.us, %bb.p ], [ %spec.select.sink.i366515.us, %bb.r ], [ 16, %bb.x ], [ 16, %bb.w ], [ %spec.select.i362.us, %bb.t ], [ %spec.select.i362.us, %bb.u ] ; 2 uses
  %indvars.iv.next706 = add nuw nsw i64 %indvars.iv705, 1 ; 3 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %storemerge437518.us, i64 %indvars.iv705
  store i32 %i.cb, ptr %i.co, align 4, !tbaa !18
  %indvars.iv.next708 = add nuw nsw i64 %indvars.iv707, 1 ; 2 uses
  %exitcond715.not = icmp eq i64 %indvars.iv.next708, %wide.trip.count714
  br i1 %exitcond715.not, label %.lr.ph529.us, label %bb.p, !llvm.loop !88

.lr.ph529.us:                                     ; preds = %Vec_IntPush.exit369.us
  %i.cp = trunc nsw i64 %indvars.iv.next706 to i32
  store i32 %i.cp, ptr %i.b, align 4, !tbaa !11
  store i32 %spec.select.sink.i366514.us, ptr %i.a, align 8
  store ptr %storemerge437518.us, ptr %i.d, align 8
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %storemerge437518.us, i64 %indvars.iv.next706
  %i.cr = tail call i32 @sat_solver_addclause(ptr noundef %i.aq, ptr noundef nonnull %storemerge437518.us, ptr noundef nonnull %i.cq) #21 ; 0 uses
  %invariant.gep532.us = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv732 ; 2 uses
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph529.us, %.loopexit455.us
  %.val339.us884 = phi ptr [ %storemerge437518.us, %.lr.ph529.us ], [ %.val339.us885, %.loopexit455.us ] ; 2 uses
  %.val340.us877 = phi ptr [ %storemerge437518.us, %.lr.ph529.us ], [ %.val340.us876, %.loopexit455.us ] ; 2 uses
  %.promoted516.us871 = phi ptr [ %storemerge437518.us, %.lr.ph529.us ], [ %.promoted516.us870, %.loopexit455.us ]
  %indvars.iv727 = phi i64 [ 0, %.lr.ph529.us ], [ %indvars.iv.next728, %.loopexit455.us ] ; 2 uses
  %indvars.iv722 = phi i32 [ %indvars.iv720, %.lr.ph529.us ], [ %indvars.iv.next723, %.loopexit455.us ] ; 2 uses
  %indvars.iv716 = phi i64 [ 1, %.lr.ph529.us ], [ %indvars.iv.next717, %.loopexit455.us ] ; 2 uses
  %.2283527.us = phi i32 [ %.1282535.us, %.lr.ph529.us ], [ %.3284.lcssa.us, %.loopexit455.us ] ; 2 uses
  %indvars.iv.next728 = add nuw nsw i64 %indvars.iv727, 1 ; 3 uses
  %i.cs = icmp slt i64 %indvars.iv.next728, %i.bw
  br i1 %i.cs, label %.lr.ph522.us, label %.loopexit455.us

bb.z:                                             ; preds = %.lr.ph522.us, %Vec_IntFillTwo.exit.us
  %.val339.us886 = phi ptr [ %.val339.us884, %.lr.ph522.us ], [ %.val339.us, %Vec_IntFillTwo.exit.us ]
  %i.ct = phi ptr [ %.val340.us877, %.lr.ph522.us ], [ %.val339.us, %Vec_IntFillTwo.exit.us ] ; 3 uses
  %indvars.iv718 = phi i64 [ %indvars.iv716, %.lr.ph522.us ], [ %indvars.iv.next719, %Vec_IntFillTwo.exit.us ] ; 2 uses
  %i.cu = load i32, ptr %gep533.us, align 4, !tbaa !18
  %i.cv = shl nsw i32 %i.cu, 1
  %i.cw = or disjoint i32 %i.cv, 1
  %gep525.us = getelementptr inbounds nuw [24 x i8], ptr %invariant.gep532.us, i64 %indvars.iv718
  %i.cx = load i32, ptr %gep525.us, align 4, !tbaa !18
  %i.cy = shl nsw i32 %i.cx, 1
  %i.cz = or disjoint i32 %i.cy, 1
  %i.da = load i32, ptr %i.a, align 8, !tbaa !12
  %.not.i.i.us = icmp slt i32 %i.da, 2
  br i1 %.not.i.i.us, label %bb.aa, label %Vec_IntFillTwo.exit.us

bb.aa:                                            ; preds = %bb.z
  %.not9.i.i371.us = icmp eq ptr %i.ct, null
  br i1 %.not9.i.i371.us, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.db = tail call dereferenceable_or_null(8) ptr @realloc(ptr noundef nonnull %i.ct, i64 noundef 8) #20
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.dc = tail call noalias dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #19
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.dd = phi ptr [ %i.db, %bb.ab ], [ %i.dc, %bb.ac ] ; 3 uses
  store ptr %i.dd, ptr %i.d, align 8, !tbaa !13
  store i32 2, ptr %i.a, align 8, !tbaa !12
  br label %Vec_IntFillTwo.exit.us

Vec_IntFillTwo.exit.us:                           ; preds = %bb.ad, %bb.z
  %.val339.us = phi ptr [ %i.dd, %bb.ad ], [ %.val339.us886, %bb.z ] ; 7 uses
  %i.de = phi ptr [ %i.dd, %bb.ad ], [ %i.ct, %bb.z ] ; 2 uses
  store i32 %i.cw, ptr %i.de, align 4, !tbaa !18
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  store i32 %i.cz, ptr %i.df, align 4, !tbaa !18
  store i32 2, ptr %i.b, align 4, !tbaa !11
  %i.dg = getelementptr inbounds nuw i8, ptr %.val339.us, i64 8
  %i.dh = tail call i32 @sat_solver_addclause(ptr noundef %i.aq, ptr noundef %.val339.us, ptr noundef nonnull %i.dg) #21 ; 0 uses
  %indvars.iv.next719 = add nuw nsw i64 %indvars.iv718, 1 ; 2 uses
  %exitcond726.not = icmp eq i64 %indvars.iv.next719, %wide.trip.count730
  br i1 %exitcond726.not, label %.loopexit455.us.loopexit, label %bb.z, !llvm.loop !89

.loopexit455.us.loopexit:                         ; preds = %Vec_IntFillTwo.exit.us
  %i.di = add i32 %.2283527.us, %indvars.iv722
  br label %.loopexit455.us

.loopexit455.us:                                  ; preds = %.loopexit455.us.loopexit, %bb.y
  %.val339.us885 = phi ptr [ %.val339.us884, %bb.y ], [ %.val339.us, %.loopexit455.us.loopexit ] ; 2 uses
  %.val340.us876 = phi ptr [ %.val340.us877, %bb.y ], [ %.val339.us, %.loopexit455.us.loopexit ] ; 2 uses
  %.promoted516.us870 = phi ptr [ %.promoted516.us871, %bb.y ], [ %.val339.us, %.loopexit455.us.loopexit ] ; 2 uses
  %.3284.lcssa.us = phi i32 [ %.2283527.us, %bb.y ], [ %i.di, %.loopexit455.us.loopexit ] ; 2 uses
  %indvars.iv.next717 = add nuw nsw i64 %indvars.iv716, 1
  %indvars.iv.next723 = add i32 %indvars.iv722, -1
  %exitcond731.not = icmp eq i64 %indvars.iv.next728, %wide.trip.count730
  br i1 %exitcond731.not, label %._crit_edge530.us, label %bb.y, !llvm.loop !90

._crit_edge530.us:                                ; preds = %.loopexit455.us, %.thread
  %.val339.us883 = phi ptr [ %.val339.us882, %.thread ], [ %.val339.us885, %.loopexit455.us ] ; 3 uses
  %.val340.us875 = phi ptr [ %.val340.us874, %.thread ], [ %.val340.us876, %.loopexit455.us ] ; 2 uses
  %.promoted516.us869 = phi ptr [ %.val340.us874, %.thread ], [ %.promoted516.us870, %.loopexit455.us ] ; 2 uses
  %.2283.lcssa.us = phi i32 [ %.1282535.us, %.thread ], [ %.3284.lcssa.us, %.loopexit455.us ] ; 3 uses
  %indvars.iv.next733 = add nuw nsw i64 %indvars.iv732, 1 ; 2 uses
  %exitcond736.not = icmp eq i64 %indvars.iv.next733, %wide.trip.count735
  br i1 %exitcond736.not, label %._crit_edge537.us, label %bb.o, !llvm.loop !91

.lr.ph506.us:                                     ; preds = %bb.o
  %invariant.gep509.us = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv732
  %.promoted513.us = load i32, ptr %i.a, align 8, !tbaa !12
  br label %bb.p

.lr.ph522.us:                                     ; preds = %bb.y
  %gep533.us = getelementptr inbounds nuw [24 x i8], ptr %invariant.gep532.us, i64 %indvars.iv727
  br label %bb.z

._crit_edge537.us:                                ; preds = %._crit_edge530.us
  %indvars.iv.next738 = add nuw nsw i64 %indvars.iv737, 1 ; 2 uses
  %indvars.iv.next713 = add i32 %indvars.iv712, 1
  %indvars.iv.next721 = add i32 %indvars.iv720, 1
  %exitcond741.not = icmp eq i64 %indvars.iv.next738, %wide.trip.count740
  br i1 %exitcond741.not, label %.preheader454.lr.ph, label %.preheader456.us, !llvm.loop !92

.preheader454.lr.ph:                              ; preds = %._crit_edge537.us, %.preheader456.lr.ph
  %.2283.lcssa.us.sink = phi i32 [ 0, %.preheader456.lr.ph ], [ %.2283.lcssa.us, %._crit_edge537.us ]
  %8 = phi ptr [ %.promoted516.us872, %.preheader456.lr.ph ], [ %.val339.us883, %._crit_edge537.us ] ; 2 uses
  %i.dj = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %.2283.lcssa.us.sink) ; 0 uses
  %9 = icmp sgt i32 %2, 0
  %10 = sext i32 %2 to i64
  %i.dk = sext i32 %0 to i64
  %wide.trip.count771 = zext nneg i32 %1 to i64
  %invariant.op962 = sub nsw i64 0, %i.dk
  %wide.trip.count763 = zext nneg i32 %2 to i64   ; 2 uses
  br label %.preheader454

.preheader454:                                    ; preds = %.preheader454.lr.ph, %._crit_edge566
  %.val338.us.us.us888 = phi ptr [ %8, %.preheader454.lr.ph ], [ %.val338.us.us.us889, %._crit_edge566 ] ; 3 uses
  %i.dl = phi ptr [ %8, %.preheader454.lr.ph ], [ %15, %._crit_edge566 ] ; 3 uses
  %indvars.iv768 = phi i64 [ 0, %.preheader454.lr.ph ], [ %indvars.iv.next769, %._crit_edge566 ] ; 3 uses
  %indvars.iv756 = phi i32 [ %0, %.preheader454.lr.ph ], [ %indvars.iv.next757, %._crit_edge566 ] ; 2 uses
  %.4285574 = phi i32 [ 0, %.preheader454.lr.ph ], [ %.5.lcssa, %._crit_edge566 ] ; 3 uses
  %i.dm = icmp sgt i64 %indvars.iv768, %invariant.op962
  br i1 %i.dm, label %.preheader453.lr.ph, label %._crit_edge566

.preheader453.lr.ph:                              ; preds = %.preheader454
  %11 = getelementptr inbounds nuw [912 x i8], ptr %3, i64 %indvars.iv768 ; 2 uses
  br i1 %9, label %.preheader453.us.preheader, label %._crit_edge566

.preheader453.us.preheader:                       ; preds = %.preheader453.lr.ph
  %wide.trip.count766 = zext i32 %indvars.iv756 to i64 ; 2 uses
  br label %.preheader452.us.us.preheader

.preheader452.us.us.preheader:                    ; preds = %._crit_edge556.us, %.preheader453.us.preheader
  %.val338.us.us.us890 = phi ptr [ %.val338.us.us.us888, %.preheader453.us.preheader ], [ %.val338.us.us.us893, %._crit_edge556.us ]
  %12 = phi ptr [ %i.dl, %.preheader453.us.preheader ], [ %i.ei, %._crit_edge556.us ]
  %indvars.iv751 = phi i64 [ 0, %.preheader453.us.preheader ], [ %indvars.iv.next752, %._crit_edge556.us ] ; 3 uses
  %.5565.us = phi i32 [ %.4285574, %.preheader453.us.preheader ], [ %.us-phi553.us.us, %._crit_edge556.us ]
  %13 = getelementptr inbounds nuw [24 x i8], ptr %11, i64 %indvars.iv751
  br label %.preheader452.us.us

.preheader452.us.us:                              ; preds = %.preheader452.us.us.preheader, %._crit_edge551.us.us
  %.val338.us.us.us892 = phi ptr [ %.val338.us.us.us890, %.preheader452.us.us.preheader ], [ %.val338.us.us.us893, %._crit_edge551.us.us ] ; 2 uses
  %i.dn = phi ptr [ %12, %.preheader452.us.us.preheader ], [ %i.ei, %._crit_edge551.us.us ] ; 2 uses
  %indvars.iv760 = phi i64 [ 0, %.preheader452.us.us.preheader ], [ %indvars.iv.next761, %._crit_edge551.us.us ] ; 2 uses
  %indvars.iv746.in = phi i32 [ %2, %.preheader452.us.us.preheader ], [ %indvars.iv746, %._crit_edge551.us.us ]
  %indvars.iv742 = phi i64 [ 1, %.preheader452.us.us.preheader ], [ %indvars.iv.next743, %._crit_edge551.us.us ] ; 2 uses
  %.6555.us.us = phi i32 [ %.5565.us, %.preheader452.us.us.preheader ], [ %.us-phi553.us.us, %._crit_edge551.us.us ] ; 2 uses
  %indvars.iv746 = add i32 %indvars.iv746.in, -1  ; 2 uses
  %indvars.iv.next761 = add nuw nsw i64 %indvars.iv760, 1 ; 3 uses
  %14 = icmp slt i64 %indvars.iv.next761, %10
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %indvars.iv760
  br i1 %14, label %.preheader451.us.us.us, label %._crit_edge551.us.us

.preheader451.us.us.us:                           ; preds = %.preheader452.us.us, %._crit_edge547.us.us.us
  %.val338.us.us.us894 = phi ptr [ %.val338.us.us.us, %._crit_edge547.us.us.us ], [ %.val338.us.us.us892, %.preheader452.us.us ]
  %i.dp = phi ptr [ %.val338.us.us.us, %._crit_edge547.us.us.us ], [ %i.dn, %.preheader452.us.us ]
  %indvars.iv753 = phi i64 [ %indvars.iv.next754, %._crit_edge547.us.us.us ], [ %indvars.iv751, %.preheader452.us.us ] ; 2 uses
  %.7550.us.us.us = phi i32 [ %i.eh, %._crit_edge547.us.us.us ], [ %.6555.us.us, %.preheader452.us.us ]
  %i.dq = getelementptr inbounds nuw [24 x i8], ptr %11, i64 %indvars.iv753
  br label %bb.ae

bb.ae:                                            ; preds = %Vec_IntFillTwo.exit375.us.us.us, %.preheader451.us.us.us
  %.val338.us.us.us895 = phi ptr [ %.val338.us.us.us, %Vec_IntFillTwo.exit375.us.us.us ], [ %.val338.us.us.us894, %.preheader451.us.us.us ]
  %i.dr = phi ptr [ %.val338.us.us.us, %Vec_IntFillTwo.exit375.us.us.us ], [ %i.dp, %.preheader451.us.us.us ] ; 3 uses
  %indvars.iv744 = phi i64 [ %indvars.iv.next745, %Vec_IntFillTwo.exit375.us.us.us ], [ %indvars.iv742, %.preheader451.us.us.us ] ; 2 uses
  %i.ds = load i32, ptr %i.do, align 4, !tbaa !18
  %i.dt = shl nsw i32 %i.ds, 1
  %i.du = or disjoint i32 %i.dt, 1
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %indvars.iv744
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !18
  %i.dx = shl nsw i32 %i.dw, 1
  %i.dy = or disjoint i32 %i.dx, 1
  %i.dz = load i32, ptr %i.a, align 8, !tbaa !12
  %.not.i.i372.us.us.us = icmp slt i32 %i.dz, 2
  br i1 %.not.i.i372.us.us.us, label %bb.af, label %Vec_IntFillTwo.exit375.us.us.us

bb.af:                                            ; preds = %bb.ae
  %.not9.i.i374.us.us.us = icmp eq ptr %i.dr, null
  br i1 %.not9.i.i374.us.us.us, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ea = tail call dereferenceable_or_null(8) ptr @realloc(ptr noundef nonnull %i.dr, i64 noundef 8) #20
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.eb = tail call noalias dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #19
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.ec = phi ptr [ %i.ea, %bb.ag ], [ %i.eb, %bb.ah ] ; 3 uses
  store ptr %i.ec, ptr %i.d, align 8, !tbaa !13
  store i32 2, ptr %i.a, align 8, !tbaa !12
  br label %Vec_IntFillTwo.exit375.us.us.us

Vec_IntFillTwo.exit375.us.us.us:                  ; preds = %bb.ai, %bb.ae
  %.val338.us.us.us = phi ptr [ %i.ec, %bb.ai ], [ %.val338.us.us.us895, %bb.ae ] ; 8 uses
  %i.ed = phi ptr [ %i.ec, %bb.ai ], [ %i.dr, %bb.ae ] ; 2 uses
  store i32 %i.du, ptr %i.ed, align 4, !tbaa !18
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 4
  store i32 %i.dy, ptr %i.ee, align 4, !tbaa !18
  store i32 2, ptr %i.b, align 4, !tbaa !11
  %i.ef = getelementptr inbounds nuw i8, ptr %.val338.us.us.us, i64 8
  %i.eg = tail call i32 @sat_solver_addclause(ptr noundef %i.aq, ptr noundef %.val338.us.us.us, ptr noundef nonnull %i.ef) #21 ; 0 uses
  %indvars.iv.next745 = add nuw nsw i64 %indvars.iv744, 1 ; 2 uses
  %exitcond750.not = icmp eq i64 %indvars.iv.next745, %wide.trip.count763
  br i1 %exitcond750.not, label %._crit_edge547.us.us.us, label %bb.ae, !llvm.loop !93

._crit_edge547.us.us.us:                          ; preds = %Vec_IntFillTwo.exit375.us.us.us
  %i.eh = add i32 %indvars.iv746, %.7550.us.us.us ; 2 uses
  %indvars.iv.next754 = add nuw nsw i64 %indvars.iv753, 1 ; 2 uses
  %exitcond759.not = icmp eq i64 %indvars.iv.next754, %wide.trip.count766
  br i1 %exitcond759.not, label %._crit_edge551.us.us, label %.preheader451.us.us.us, !llvm.loop !94

._crit_edge551.us.us:                             ; preds = %._crit_edge547.us.us.us, %.preheader452.us.us
  %.val338.us.us.us893 = phi ptr [ %.val338.us.us.us892, %.preheader452.us.us ], [ %.val338.us.us.us, %._crit_edge547.us.us.us ] ; 3 uses
  %i.ei = phi ptr [ %i.dn, %.preheader452.us.us ], [ %.val338.us.us.us, %._crit_edge547.us.us.us ] ; 3 uses
  %.us-phi553.us.us = phi i32 [ %.6555.us.us, %.preheader452.us.us ], [ %i.eh, %._crit_edge547.us.us.us ] ; 3 uses
  %indvars.iv.next743 = add nuw nsw i64 %indvars.iv742, 1
  %exitcond764.not = icmp eq i64 %indvars.iv.next761, %wide.trip.count763
  br i1 %exitcond764.not, label %._crit_edge556.us, label %.preheader452.us.us, !llvm.loop !95

._crit_edge556.us:                                ; preds = %._crit_edge551.us.us
  %indvars.iv.next752 = add nuw nsw i64 %indvars.iv751, 1 ; 2 uses
  %exitcond767.not = icmp eq i64 %indvars.iv.next752, %wide.trip.count766
  br i1 %exitcond767.not, label %._crit_edge566, label %.preheader452.us.us.preheader, !llvm.loop !96

._crit_edge566:                                   ; preds = %._crit_edge556.us, %.preheader453.lr.ph, %.preheader454
  %.val338.us.us.us889 = phi ptr [ %.val338.us.us.us888, %.preheader454 ], [ %.val338.us.us.us888, %.preheader453.lr.ph ], [ %.val338.us.us.us893, %._crit_edge556.us ] ; 4 uses
  %15 = phi ptr [ %i.dl, %.preheader454 ], [ %i.dl, %.preheader453.lr.ph ], [ %i.ei, %._crit_edge556.us ]
  %.5.lcssa = phi i32 [ %.4285574, %.preheader454 ], [ %.4285574, %.preheader453.lr.ph ], [ %.us-phi553.us.us, %._crit_edge556.us ] ; 2 uses
  %indvars.iv.next769 = add nuw nsw i64 %indvars.iv768, 1 ; 2 uses
  %indvars.iv.next757 = add i32 %indvars.iv756, 1
  %exitcond772.not = icmp eq i64 %indvars.iv.next769, %wide.trip.count771
  br i1 %exitcond772.not, label %._crit_edge575, label %.preheader454, !llvm.loop !97

._crit_edge575:                                   ; preds = %._crit_edge566
  %i.ej = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %.5.lcssa) ; 0 uses
  %.not964 = icmp eq i32 %1, 1
  br i1 %.not964, label %._crit_edge608.thread, label %.preheader450.lr.ph

._crit_edge608.thread:                            ; preds = %._crit_edge575
  %i.ek = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef 0) ; 0 uses
  br label %.loopexit

.preheader450.lr.ph:                              ; preds = %._crit_edge575
  %i.el = add i32 %0, -1                          ; 2 uses
  %wide.trip.count811 = zext nneg i32 %1 to i64
  br label %.preheader450

.preheader450:                                    ; preds = %.preheader450.lr.ph, %._crit_edge604
  %i.em = phi ptr [ %.val338.us.us.us889, %.preheader450.lr.ph ], [ %i.hr, %._crit_edge604 ] ; 2 uses
  %i.en = phi ptr [ %.val338.us.us.us889, %.preheader450.lr.ph ], [ %i.hs, %._crit_edge604 ] ; 2 uses
  %indvars.iv808 = phi i64 [ 1, %.preheader450.lr.ph ], [ %indvars.iv.next809, %._crit_edge604 ] ; 3 uses
  %indvars.iv782 = phi i32 [ %0, %.preheader450.lr.ph ], [ %indvars.iv.next783, %._crit_edge604 ] ; 2 uses
  %indvars.iv777 = phi i32 [ %i.el, %.preheader450.lr.ph ], [ %indvars.iv.next778, %._crit_edge604 ] ; 2 uses
  %.9607 = phi i32 [ 0, %.preheader450.lr.ph ], [ %.10.lcssa, %._crit_edge604 ] ; 2 uses
  %i.eo = trunc nuw nsw i64 %indvars.iv808 to i32
  %i.ep = add i32 %i.el, %i.eo                    ; 2 uses
  %i.eq = icmp sgt i32 %i.ep, 0
  br i1 %i.eq, label %.lr.ph603, label %._crit_edge604

.lr.ph603:                                        ; preds = %.preheader450
  %i.er = getelementptr inbounds nuw [912 x i8], ptr %3, i64 %indvars.iv808 ; 4 uses
  %i.es = getelementptr i8, ptr %i.er, i64 -912   ; 4 uses
  %i.et = zext nneg i32 %i.ep to i64
  %wide.trip.count806 = zext i32 %indvars.iv782 to i64 ; 2 uses
  br label %bb.aj

.loopexit449:                                     ; preds = %.loopexit448, %Vec_IntFillTwo.exit383
  %i.eu = phi ptr [ %i.ge, %Vec_IntFillTwo.exit383 ], [ %i.gh, %.loopexit448 ] ; 2 uses
  %i.ev = phi ptr [ %i.ge, %Vec_IntFillTwo.exit383 ], [ %i.gi, %.loopexit448 ] ; 2 uses
  %.12.lcssa = phi i32 [ %.11.lcssa, %Vec_IntFillTwo.exit383 ], [ %.13.lcssa, %.loopexit448 ] ; 2 uses
  %indvars.iv.next774 = add nuw nsw i64 %indvars.iv773, 1
  %indvars.iv.next780 = add i32 %indvars.iv779, -1
  %indvars.iv.next791 = add nsw i32 %indvars.iv790, 1
  %exitcond807.not = icmp eq i64 %indvars.iv.next804, %wide.trip.count806
  br i1 %exitcond807.not, label %._crit_edge604, label %bb.aj, !llvm.loop !98

bb.aj:                                            ; preds = %.lr.ph603, %.loopexit449
  %i.ew = phi ptr [ %i.em, %.lr.ph603 ], [ %i.eu, %.loopexit449 ] ; 2 uses
  %i.ex = phi ptr [ %i.en, %.lr.ph603 ], [ %i.ev, %.loopexit449 ]
  %indvars.iv803 = phi i64 [ 0, %.lr.ph603 ], [ %indvars.iv.next804, %.loopexit449 ] ; 9 uses
  %indvars.iv790 = phi i32 [ -1, %.lr.ph603 ], [ %indvars.iv.next791, %.loopexit449 ] ; 2 uses
  %indvars.iv779 = phi i32 [ %indvars.iv777, %.lr.ph603 ], [ %indvars.iv.next780, %.loopexit449 ] ; 2 uses
  %indvars.iv773 = phi i64 [ 1, %.lr.ph603 ], [ %indvars.iv.next774, %.loopexit449 ] ; 2 uses
  %.10602 = phi i32 [ %.9607, %.lr.ph603 ], [ %.12.lcssa, %.loopexit449 ] ; 2 uses
  %indvars.iv.next804 = add nuw nsw i64 %indvars.iv803, 1 ; 3 uses
  %i.ey = icmp samesign ult i64 %indvars.iv.next804, %i.et
  br i1 %i.ey, label %.lr.ph580, label %._crit_edge581

.lr.ph580:                                        ; preds = %bb.aj
  %i.ez = getelementptr inbounds nuw [24 x i8], ptr %i.er, i64 %indvars.iv803
  br label %bb.ak

bb.ak:                                            ; preds = %.lr.ph580, %Vec_IntFillTwo.exit379
  %i.fa = phi ptr [ %i.ew, %.lr.ph580 ], [ %i.fm, %Vec_IntFillTwo.exit379 ]
  %.val337897 = phi ptr [ %i.ex, %.lr.ph580 ], [ %.val337, %Vec_IntFillTwo.exit379 ] ; 3 uses
  %indvars.iv775 = phi i64 [ %indvars.iv773, %.lr.ph580 ], [ %indvars.iv.next776, %Vec_IntFillTwo.exit379 ] ; 2 uses
  %i.fb = load i32, ptr %i.ez, align 4, !tbaa !18
  %i.fc = shl nsw i32 %i.fb, 1
  %i.fd = or disjoint i32 %i.fc, 1
  %i.fe = getelementptr inbounds nuw [24 x i8], ptr %i.es, i64 %indvars.iv775
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !18
  %i.fg = shl nsw i32 %i.ff, 1
  %i.fh = or disjoint i32 %i.fg, 1
  %i.fi = load i32, ptr %i.a, align 8, !tbaa !12
  %.not.i.i376 = icmp slt i32 %i.fi, 2
  br i1 %.not.i.i376, label %bb.al, label %Vec_IntFillTwo.exit379

bb.al:                                            ; preds = %bb.ak
  %.not9.i.i378 = icmp eq ptr %.val337897, null
  br i1 %.not9.i.i378, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fj = tail call dereferenceable_or_null(8) ptr @realloc(ptr noundef nonnull %.val337897, i64 noundef 8) #20
  br label %bb.ao

bb.an:                                            ; preds = %bb.al
  %i.fk = tail call noalias dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #19
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.fl = phi ptr [ %i.fj, %bb.am ], [ %i.fk, %bb.an ] ; 3 uses
  store ptr %i.fl, ptr %i.d, align 8, !tbaa !13
  store i32 2, ptr %i.a, align 8, !tbaa !12
  br label %Vec_IntFillTwo.exit379

Vec_IntFillTwo.exit379:                           ; preds = %bb.ak, %bb.ao
  %i.fm = phi ptr [ %i.fl, %bb.ao ], [ %i.fa, %bb.ak ] ; 2 uses
  %.val337 = phi ptr [ %i.fl, %bb.ao ], [ %.val337897, %bb.ak ] ; 5 uses
  store i32 %i.fd, ptr %.val337, align 4, !tbaa !18
  %i.fn = getelementptr inbounds nuw i8, ptr %.val337, i64 4
  store i32 %i.fh, ptr %i.fn, align 4, !tbaa !18
  store i32 2, ptr %i.b, align 4, !tbaa !11
  %i.fo = getelementptr inbounds nuw i8, ptr %.val337, i64 8
  %i.fp = tail call i32 @sat_solver_addclause(ptr noundef %i.aq, ptr noundef nonnull %.val337, ptr noundef nonnull %i.fo) #21 ; 0 uses
  %indvars.iv.next776 = add nuw nsw i64 %indvars.iv775, 1 ; 2 uses
  %exitcond785.not = icmp eq i64 %indvars.iv.next776, %wide.trip.count806
  br i1 %exitcond785.not, label %._crit_edge581.loopexit, label %bb.ak, !llvm.loop !99

._crit_edge581.loopexit:                          ; preds = %Vec_IntFillTwo.exit379
  %i.fq = add i32 %.10602, %indvars.iv779
  br label %._crit_edge581

._crit_edge581:                                   ; preds = %._crit_edge581.loopexit, %bb.aj
  %i.fr = phi ptr [ %i.ew, %bb.aj ], [ %i.fm, %._crit_edge581.loopexit ] ; 3 uses
  %.11.lcssa = phi i32 [ %.10602, %bb.aj ], [ %i.fq, %._crit_edge581.loopexit ] ; 2 uses
  %i.fs = getelementptr inbounds nuw [24 x i8], ptr %i.er, i64 %indvars.iv803
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !18
  %i.fu = shl nsw i32 %i.ft, 1
  %i.fv = or disjoint i32 %i.fu, 1
  %i.fw = getelementptr inbounds nuw [24 x i8], ptr %i.es, i64 %indvars.iv803
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !18
  %i.fy = shl nsw i32 %i.fx, 1
  %i.fz = or disjoint i32 %i.fy, 1
  %i.ga = load i32, ptr %i.a, align 8, !tbaa !12
  %.not.i.i380 = icmp slt i32 %i.ga, 2
  br i1 %.not.i.i380, label %bb.ap, label %Vec_IntFillTwo.exit383

bb.ap:                                            ; preds = %._crit_edge581
  %.not9.i.i382 = icmp eq ptr %i.fr, null
  br i1 %.not9.i.i382, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gb = tail call dereferenceable_or_null(8) ptr @realloc(ptr noundef nonnull %i.fr, i64 noundef 8) #20
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  %i.gc = tail call noalias dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #19
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.gd = phi ptr [ %i.gb, %bb.aq ], [ %i.gc, %bb.ar ] ; 2 uses
  store ptr %i.gd, ptr %i.d, align 8, !tbaa !13
  store i32 2, ptr %i.a, align 8, !tbaa !12
  br label %Vec_IntFillTwo.exit383

Vec_IntFillTwo.exit383:                           ; preds = %._crit_edge581, %bb.as
  %i.ge = phi ptr [ %i.gd, %bb.as ], [ %i.fr, %._crit_edge581 ] ; 6 uses
  store i32 %i.fv, ptr %i.ge, align 4, !tbaa !18
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 4
  store i32 %i.fz, ptr %i.gf, align 4, !tbaa !18
  store i32 2, ptr %i.b, align 4, !tbaa !11
  %.not = icmp eq i64 %indvars.iv803, 0
  br i1 %.not, label %.loopexit449, label %.lr.ph599

..loopexit448_crit_edge:                          ; preds = %Vec_IntPushTwo.exit, %Vec_IntPushTwo.exit.peel
  %i.gg = add i32 %.12598, %indvars.iv792
  store i32 2, ptr %i.b, align 4, !tbaa !11
  store i32 %spec.select.sink.i.i591.peel, ptr %i.a, align 8
  store ptr %storemerge436596.peel, ptr %i.d, align 8
  br label %.loopexit448

.loopexit448:                                     ; preds = %.lr.ph599..loopexit448_crit_edge, %..loopexit448_crit_edge
  %indvars.iv.next787.pre-phi = phi i64 [ %.pre911, %.lr.ph599..loopexit448_crit_edge ], [ %indvars.iv.next789.peel, %..loopexit448_crit_edge ]
  %i.gh = phi ptr [ %.promoted593, %.lr.ph599..loopexit448_crit_edge ], [ %storemerge436596.peel, %..loopexit448_crit_edge ] ; 2 uses
  %i.gi = phi ptr [ %i.gj, %.lr.ph599..loopexit448_crit_edge ], [ %storemerge436596.peel, %..loopexit448_crit_edge ] ; 2 uses
  %.13.lcssa = phi i32 [ %.12598, %.lr.ph599..loopexit448_crit_edge ], [ %i.gg, %..loopexit448_crit_edge ] ; 2 uses
  %indvars.iv.next793 = add nsw i32 %indvars.iv792, -1
  %exitcond802.not = icmp eq i64 %indvars.iv.next799, %indvars.iv803
  br i1 %exitcond802.not, label %.loopexit449, label %.lr.ph599, !llvm.loop !100

.lr.ph599:                                        ; preds = %Vec_IntFillTwo.exit383, %.loopexit448
  %.promoted593 = phi ptr [ %i.gh, %.loopexit448 ], [ %i.ge, %Vec_IntFillTwo.exit383 ] ; 6 uses
  %i.gj = phi ptr [ %i.gi, %.loopexit448 ], [ %i.ge, %Vec_IntFillTwo.exit383 ]
  %indvars.iv798 = phi i64 [ %indvars.iv.next799, %.loopexit448 ], [ 0, %Vec_IntFillTwo.exit383 ] ; 2 uses
  %indvars.iv792 = phi i32 [ %indvars.iv.next793, %.loopexit448 ], [ %indvars.iv790, %Vec_IntFillTwo.exit383 ] ; 2 uses
  %indvars.iv786 = phi i64 [ %indvars.iv.next787.pre-phi, %.loopexit448 ], [ 1, %Vec_IntFillTwo.exit383 ] ; 3 uses
  %.12598 = phi i32 [ %.13.lcssa, %.loopexit448 ], [ %.11.lcssa, %Vec_IntFillTwo.exit383 ] ; 2 uses
  %indvars.iv.next799 = add nuw nsw i64 %indvars.iv798, 1 ; 3 uses
  %i.gk = icmp samesign ult i64 %indvars.iv.next799, %indvars.iv803
  br i1 %i.gk, label %.lr.ph586, label %.lr.ph599..loopexit448_crit_edge

.lr.ph599..loopexit448_crit_edge:                 ; preds = %.lr.ph599
  %.pre911 = add nuw nsw i64 %indvars.iv786, 1
  br label %.loopexit448

.lr.ph586:                                        ; preds = %.lr.ph599
  %i.gl = getelementptr inbounds nuw [24 x i8], ptr %i.er, i64 %indvars.iv798
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 4 ; 2 uses
  %.promoted589 = load i32, ptr %i.a, align 8, !tbaa !12 ; 3 uses
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !18
  %i.go = shl nsw i32 %i.gn, 1
  %i.gp = or disjoint i32 %i.go, 1                ; 2 uses
  %i.gq = getelementptr inbounds nuw [24 x i8], ptr %i.es, i64 %indvars.iv786
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 4
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !18
  %i.gt = shl nsw i32 %i.gs, 1
  %i.gu = or disjoint i32 %i.gt, 1
  %i.gv = icmp eq i32 %.promoted589, 2
  br i1 %i.gv, label %bb.at, label %Vec_IntPush.exit.i.peel

bb.at:                                            ; preds = %.lr.ph586
  %.not9.i.i.i.peel = icmp eq ptr %.promoted593, null
  br i1 %.not9.i.i.i.peel, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gw = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %.promoted593, i64 noundef 64) #20
  br label %Vec_IntPush.exit.i.peel.thread

bb.av:                                            ; preds = %bb.at
  %i.gx = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #19
  br label %Vec_IntPush.exit.i.peel.thread

Vec_IntPush.exit.i.peel.thread:                   ; preds = %bb.au, %bb.av
  %storemerge436594.peel.ph = phi ptr [ %i.gx, %bb.av ], [ %i.gw, %bb.au ] ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %storemerge436594.peel.ph, i64 8
  store i32 %i.gp, ptr %i.gy, align 4, !tbaa !18
  br label %Vec_IntPushTwo.exit.peel

Vec_IntPush.exit.i.peel:                          ; preds = %.lr.ph586
  %i.gz = getelementptr inbounds nuw i8, ptr %.promoted593, i64 8
end_hunk_0
begin_hunk_1_@Sbd_SolverTopo:bb.a
  br label %Vec_IntPushTwo.exit.peel

Vec_IntPushTwo.exit.peel:                         ; preds = %Vec_IntPush.exit.i.peel.thread, %Vec_IntGrow.exit11.sink.split.i6.i.peel, %Vec_IntPush.exit.i.peel
  %storemerge436596.peel = phi ptr [ %.promoted593, %Vec_IntPush.exit.i.peel ], [ %i.hb, %Vec_IntGrow.exit11.sink.split.i6.i.peel ], [ %storemerge436594.peel.ph, %Vec_IntPush.exit.i.peel.thread ] ; 10 uses
  %spec.select.sink.i.i591.peel = phi i32 [ %.promoted589, %Vec_IntPush.exit.i.peel ], [ 16, %Vec_IntGrow.exit11.sink.split.i6.i.peel ], [ 16, %Vec_IntPush.exit.i.peel.thread ]
  %i.hc = getelementptr inbounds nuw i8, ptr %storemerge436596.peel, i64 12
  store i32 %i.gu, ptr %i.hc, align 4, !tbaa !18
  %i.hd = getelementptr i8, ptr %storemerge436596.peel, i64 16
  %i.he = tail call i32 @sat_solver_addclause(ptr noundef %i.aq, ptr noundef %storemerge436596.peel, ptr noundef %i.hd) #21 ; 0 uses
  %indvars.iv.next789.peel = add nuw nsw i64 %indvars.iv786, 1 ; 3 uses
  %exitcond796.peel.not = icmp eq i64 %indvars.iv.next789.peel, %indvars.iv803
  br i1 %exitcond796.peel.not, label %..loopexit448_crit_edge, label %.peel.next

.peel.next:                                       ; preds = %Vec_IntPushTwo.exit.peel
  %i.hf = getelementptr inbounds nuw i8, ptr %storemerge436596.peel, i64 8
  %i.hg = getelementptr inbounds nuw i8, ptr %storemerge436596.peel, i64 12
  %i.hh = getelementptr i8, ptr %storemerge436596.peel, i64 16
  br label %Vec_IntPushTwo.exit

Vec_IntPushTwo.exit:                              ; preds = %.peel.next, %Vec_IntPushTwo.exit
  %indvars.iv788 = phi i64 [ %indvars.iv.next789.peel, %.peel.next ], [ %indvars.iv.next789, %Vec_IntPushTwo.exit ] ; 2 uses
  %i.hi = getelementptr inbounds nuw [24 x i8], ptr %i.es, i64 %indvars.iv788
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 4
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !18
  %i.hl = shl nsw i32 %i.hk, 1
  %i.hm = or disjoint i32 %i.hl, 1
  %i.hn = load i32, ptr %i.gm, align 4, !tbaa !18
  %i.ho = shl nsw i32 %i.hn, 1
  %i.hp = or disjoint i32 %i.ho, 1
  store i32 %i.hp, ptr %i.hf, align 4, !tbaa !18
  store i32 %i.hm, ptr %i.hg, align 4, !tbaa !18
  %i.hq = tail call i32 @sat_solver_addclause(ptr noundef %i.aq, ptr noundef nonnull %storemerge436596.peel, ptr noundef %i.hh) #21 ; 0 uses
  %indvars.iv.next789 = add nuw nsw i64 %indvars.iv788, 1 ; 2 uses
  %exitcond796.not = icmp eq i64 %indvars.iv.next789, %indvars.iv803
  br i1 %exitcond796.not, label %..loopexit448_crit_edge, label %Vec_IntPushTwo.exit, !llvm.loop !101

._crit_edge604:                                   ; preds = %.loopexit449, %.preheader450
  %i.hr = phi ptr [ %i.em, %.preheader450 ], [ %i.eu, %.loopexit449 ] ; 2 uses
  %i.hs = phi ptr [ %i.en, %.preheader450 ], [ %i.ev, %.loopexit449 ]
  %.10.lcssa = phi i32 [ %.9607, %.preheader450 ], [ %.12.lcssa, %.loopexit449 ] ; 2 uses
  %indvars.iv.next809 = add nuw nsw i64 %indvars.iv808, 1 ; 2 uses
  %indvars.iv.next778 = add i32 %indvars.iv777, 1
  %indvars.iv.next783 = add i32 %indvars.iv782, 1
  %exitcond812.not = icmp eq i64 %indvars.iv.next809, %wide.trip.count811
  br i1 %exitcond812.not, label %._crit_edge608, label %.preheader450, !llvm.loop !102

._crit_edge608:                                   ; preds = %._crit_edge604, %._crit_edge541.thread938
  %.promoted616906 = phi ptr [ %.promoted516.us872, %._crit_edge541.thread938 ], [ %i.hr, %._crit_edge604 ] ; 2 uses
  %.9.lcssa = phi i32 [ 0, %._crit_edge541.thread938 ], [ %.10.lcssa, %._crit_edge604 ]
  %i.ht = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %.9.lcssa) ; 0 uses
  %i.hu = icmp eq i32 %2, 2
  %or.cond = and i1 %i.hu, %i.e
  br i1 %or.cond, label %.preheader446.preheader, label %.loopexit

.preheader446.preheader:                          ; preds = %._crit_edge608
  %i.hv = shl i32 %0, 1
  %i.hw = sext i32 %0 to i64                      ; 3 uses
  %wide.trip.count829 = zext nneg i32 %1 to i64
  br label %.preheader446

.preheader446:                                    ; preds = %.preheader446.preheader, %bb.az
  %.promoted616902 = phi ptr [ %.promoted616906, %.preheader446.preheader ], [ %.promoted616904, %bb.az ]
  %indvars.iv826 = phi i64 [ 1, %.preheader446.preheader ], [ %indvars.iv.next827, %bb.az ] ; 3 uses
  %.14632 = phi i32 [ 0, %.preheader446.preheader ], [ %.16.lcssa, %bb.az ]
  %i.hx = add nsw i64 %indvars.iv826, %i.hw
  %i.hy = getelementptr inbounds nuw [912 x i8], ptr %3, i64 %indvars.iv826 ; 2 uses
  br label %.preheader445

.preheader445:                                    ; preds = %.preheader446, %._crit_edge627
  %.promoted616903 = phi ptr [ %.promoted616902, %.preheader446 ], [ %.promoted616904, %._crit_edge627 ] ; 2 uses
  %indvars.iv823 = phi i64 [ %i.hw, %.preheader446 ], [ %indvars.iv.next824, %._crit_edge627 ] ; 5 uses
  %indvars.iv818 = phi i32 [ %i.hv, %.preheader446 ], [ %indvars.iv.next819, %._crit_edge627 ] ; 2 uses
  %.15630 = phi i32 [ %.14632, %.preheader446 ], [ %.16.lcssa, %._crit_edge627 ] ; 2 uses
  %i.hz = icmp sgt i64 %indvars.iv823, 0
  br i1 %i.hz, label %.preheader444.lr.ph, label %._crit_edge627

.preheader444.lr.ph:                              ; preds = %.preheader445
  %i.ia = getelementptr inbounds nuw [24 x i8], ptr %i.hy, i64 %indvars.iv823 ; 2 uses
  %i.ib = sub nsw i64 %indvars.iv823, %i.hw
  %i.ic = getelementptr inbounds [912 x i8], ptr %3, i64 %i.ib
  %wide.trip.count821 = and i64 %indvars.iv823, 4294967295
  %.promoted611.pre = load i32, ptr %i.a, align 8, !tbaa !12
  br label %.preheader444

.preheader444:                                    ; preds = %.preheader444.lr.ph, %Vec_IntPush.exit407.1
  %.promoted616 = phi ptr [ %.promoted616903, %.preheader444.lr.ph ], [ %storemerge435620, %Vec_IntPush.exit407.1 ] ; 7 uses
  %.promoted611 = phi i32 [ %.promoted611.pre, %.preheader444.lr.ph ], [ %spec.select.sink.i404614, %Vec_IntPush.exit407.1 ] ; 4 uses
  %indvars.iv816 = phi i64 [ 0, %.preheader444.lr.ph ], [ %indvars.iv.next817, %Vec_IntPush.exit407.1 ] ; 3 uses
  %i.id = getelementptr inbounds nuw [24 x i8], ptr %i.hy, i64 %indvars.iv816
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 4 ; 3 uses
  %i.if = getelementptr inbounds nuw [24 x i8], ptr %i.ic, i64 %indvars.iv816 ; 3 uses
  %i.ig = load i32, ptr %i.ia, align 4, !tbaa !18
  %i.ih = shl nsw i32 %i.ig, 1
  %i.ii = or disjoint i32 %i.ih, 1                ; 2 uses
  %i.ij = icmp eq i32 %.promoted611, 0
  br i1 %i.ij, label %bb.aw, label %Vec_IntPush.exit391

bb.aw:                                            ; preds = %.preheader444
  %.not9.i.i389 = icmp eq ptr %.promoted616, null
  br i1 %.not9.i.i389, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ik = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %.promoted616, i64 noundef 64) #20
  br label %Vec_IntPush.exit391.thread

bb.ay:                                            ; preds = %bb.aw
  %i.il = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #19
  br label %Vec_IntPush.exit391.thread

Vec_IntPush.exit391.thread:                       ; preds = %bb.ax, %bb.ay
  %storemerge435618.ph = phi ptr [ %i.il, %bb.ay ], [ %i.ik, %bb.ax ] ; 2 uses
  store i32 %i.ii, ptr %storemerge435618.ph, align 4, !tbaa !18
  %i.im = load i32, ptr %i.ie, align 4, !tbaa !18
  %i.in = shl nsw i32 %i.im, 1
  %i.io = or disjoint i32 %i.in, 1
  br label %Vec_IntPush.exit399.thread

Vec_IntPush.exit391:                              ; preds = %.preheader444
  store i32 %i.ii, ptr %.promoted616, align 4, !tbaa !18
  %i.ip = load i32, ptr %i.ie, align 4, !tbaa !18
  %i.iq = shl nsw i32 %i.ip, 1
  %i.ir = or disjoint i32 %i.iq, 1                ; 2 uses
  %i.is = icmp eq i32 %.promoted611, 1
  br i1 %i.is, label %Vec_IntGrow.exit.i398, label %Vec_IntPush.exit399

Vec_IntGrow.exit.i398:                            ; preds = %Vec_IntPush.exit391
  %i.it = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %.promoted616, i64 noundef 64) #20
  br label %Vec_IntPush.exit399.thread

Vec_IntPush.exit399.thread:                       ; preds = %Vec_IntGrow.exit.i398, %Vec_IntPush.exit391.thread
  %.ph948 = phi i32 [ %i.io, %Vec_IntPush.exit391.thread ], [ %i.ir, %Vec_IntGrow.exit.i398 ]
  %storemerge435617.ph = phi ptr [ %storemerge435618.ph, %Vec_IntPush.exit391.thread ], [ %i.it, %Vec_IntGrow.exit.i398 ] ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %storemerge435617.ph, i64 4
  store i32 %.ph948, ptr %i.iu, align 4, !tbaa !18
  %i.iv = load i32, ptr %i.if, align 4, !tbaa !18
  br label %Vec_IntPush.exit407.1

Vec_IntPush.exit399:                              ; preds = %Vec_IntPush.exit391
  %i.iw = getelementptr inbounds nuw i8, ptr %.promoted616, i64 4
  store i32 %i.ir, ptr %i.iw, align 4, !tbaa !18
  %i.ix = load i32, ptr %i.if, align 4, !tbaa !18 ; 2 uses
  %i.iy = icmp eq i32 %.promoted611, 2
  br i1 %i.iy, label %Vec_IntGrow.exit.i406, label %Vec_IntPush.exit407.1

Vec_IntGrow.exit.i406:                            ; preds = %Vec_IntPush.exit399
  %i.iz = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %.promoted616, i64 noundef 64) #20
  br label %Vec_IntPush.exit407.1

Vec_IntPush.exit407.1:                            ; preds = %Vec_IntGrow.exit.i406, %Vec_IntPush.exit399, %Vec_IntPush.exit399.thread
  %.in.in = phi i32 [ %i.ix, %Vec_IntPush.exit399 ], [ %i.ix, %Vec_IntGrow.exit.i406 ], [ %i.iv, %Vec_IntPush.exit399.thread ]
  %storemerge435620 = phi ptr [ %.promoted616, %Vec_IntPush.exit399 ], [ %i.iz, %Vec_IntGrow.exit.i406 ], [ %storemerge435617.ph, %Vec_IntPush.exit399.thread ] ; 11 uses
  %spec.select.sink.i404614 = phi i32 [ %.promoted611, %Vec_IntPush.exit399 ], [ 16, %Vec_IntGrow.exit.i406 ], [ 16, %Vec_IntPush.exit399.thread ] ; 2 uses
  %.in = shl nsw i32 %.in.in, 1
  %i.ja = or disjoint i32 %.in, 1
  %i.jb = getelementptr inbounds nuw i8, ptr %storemerge435620, i64 8
  store i32 %i.ja, ptr %i.jb, align 4, !tbaa !18
  %i.jc = getelementptr inbounds nuw i8, ptr %storemerge435620, i64 12
  %i.jd = tail call i32 @sat_solver_addclause(ptr noundef %i.aq, ptr noundef %storemerge435620, ptr noundef nonnull %i.jc) #21 ; 0 uses
  %i.je = load i32, ptr %i.ia, align 4, !tbaa !18
  %i.jf = shl nsw i32 %i.je, 1
  %i.jg = or disjoint i32 %i.jf, 1
  store i32 %i.jg, ptr %storemerge435620, align 4, !tbaa !18
  %i.jh = load i32, ptr %i.ie, align 4, !tbaa !18
  %i.ji = shl nsw i32 %i.jh, 1
  %i.jj = or disjoint i32 %i.ji, 1
  %i.jk = getelementptr inbounds nuw i8, ptr %storemerge435620, i64 4
  store i32 %i.jj, ptr %i.jk, align 4, !tbaa !18
  %i.jl = getelementptr inbounds nuw i8, ptr %i.if, i64 4
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !18
  %i.jn = shl nsw i32 %i.jm, 1
  %i.jo = or disjoint i32 %i.jn, 1
  %i.jp = getelementptr inbounds nuw i8, ptr %storemerge435620, i64 8
  store i32 %i.jo, ptr %i.jp, align 4, !tbaa !18
  %i.jq = getelementptr inbounds nuw i8, ptr %storemerge435620, i64 12
  %i.jr = tail call i32 @sat_solver_addclause(ptr noundef %i.aq, ptr noundef nonnull %storemerge435620, ptr noundef nonnull %i.jq) #21 ; 0 uses
  store i32 3, ptr %i.b, align 4, !tbaa !11
  store i32 %spec.select.sink.i404614, ptr %i.a, align 8
  store ptr %storemerge435620, ptr %i.d, align 8
  %indvars.iv.next817 = add nuw nsw i64 %indvars.iv816, 1 ; 2 uses
  %exitcond822.not = icmp eq i64 %indvars.iv.next817, %wide.trip.count821
  br i1 %exitcond822.not, label %._crit_edge627.loopexit, label %.preheader444, !llvm.loop !103

._crit_edge627.loopexit:                          ; preds = %Vec_IntPush.exit407.1
  %i.js = add i32 %.15630, %indvars.iv818
  br label %._crit_edge627

._crit_edge627:                                   ; preds = %._crit_edge627.loopexit, %.preheader445
  %.promoted616904 = phi ptr [ %.promoted616903, %.preheader445 ], [ %storemerge435620, %._crit_edge627.loopexit ] ; 3 uses
  %.16.lcssa = phi i32 [ %.15630, %.preheader445 ], [ %i.js, %._crit_edge627.loopexit ] ; 3 uses
  %indvars.iv.next824 = add nsw i64 %indvars.iv823, 1 ; 2 uses
  %i.jt = icmp slt i64 %indvars.iv.next824, %i.hx
  %indvars.iv.next819 = add i32 %indvars.iv818, 2
  br i1 %i.jt, label %.preheader445, label %bb.az, !llvm.loop !104

bb.az:                                            ; preds = %._crit_edge627
  %indvars.iv.next827 = add nuw nsw i64 %indvars.iv826, 1 ; 2 uses
  %exitcond830.not = icmp eq i64 %indvars.iv.next827, %wide.trip.count829
  br i1 %exitcond830.not, label %.loopexit, label %.preheader446, !llvm.loop !105

.loopexit:                                        ; preds = %bb.az, %._crit_edge608.thread, %._crit_edge608
  %i.ju = phi ptr [ %.promoted616906, %._crit_edge608 ], [ %.val338.us.us.us889, %._crit_edge608.thread ], [ %.promoted616904, %bb.az ] ; 2 uses
  %.18 = phi i32 [ 0, %._crit_edge608 ], [ 0, %._crit_edge608.thread ], [ %.16.lcssa, %bb.az ]
  %i.jv = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %.18) ; 0 uses
  %i.jw = icmp sgt i32 %i.ar, 0
  br i1 %i.jw, label %.preheader443.preheader, label %._crit_edge638

.preheader443.preheader:                          ; preds = %.loopexit
  %wide.trip.count838 = zext nneg i32 %i.ar to i64 ; 2 uses
  %xtraiter989 = and i64 %wide.trip.count838, 1
  %i.jx = icmp eq i32 %i.ar, 1
  br i1 %i.jx, label %.preheader443.epil.preheader, label %.preheader443.preheader.new

.preheader443.preheader.new:                      ; preds = %.preheader443.preheader
  %unroll_iter994 = and i64 %wide.trip.count838, 2147483646
  br label %.preheader443

.preheader443:                                    ; preds = %.preheader443, %.preheader443.preheader.new
  %indvars.iv835 = phi i64 [ 0, %.preheader443.preheader.new ], [ %indvars.iv.next836.1, %.preheader443 ] ; 3 uses
  %.3637 = phi i32 [ %.0.lcssa, %.preheader443.preheader.new ], [ %i.km, %.preheader443 ] ; 3 uses
  %niter995 = phi i64 [ 0, %.preheader443.preheader.new ], [ %niter995.next.1, %.preheader443 ]
  %i.jy = getelementptr inbounds nuw [32 x i8], ptr %4, i64 %indvars.iv835 ; 2 uses
  %i.jz = insertelement <4 x i32> poison, i32 %.3637, i64 0
  %i.ka = shufflevector <4 x i32> %i.jz, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.kb = add nsw <4 x i32> %i.ka, <i32 4, i32 5, i32 6, i32 7>
  %i.kc = add nsw <4 x i32> %i.ka, <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %i.kc, ptr %i.jy, align 4, !tbaa !18
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jy, i64 16
  %i.ke = add nsw i32 %.3637, 8
  store <4 x i32> %i.kb, ptr %i.kd, align 4, !tbaa !18
  %i.kf = getelementptr inbounds nuw [32 x i8], ptr %4, i64 %indvars.iv835 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 32
  %i.kh = insertelement <4 x i32> poison, i32 %i.ke, i64 0
  %i.ki = shufflevector <4 x i32> %i.kh, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.kj = add nsw <4 x i32> %i.ki, <i32 4, i32 5, i32 6, i32 7>
  %i.kk = add nsw <4 x i32> %i.ki, <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %i.kk, ptr %i.kg, align 4, !tbaa !18
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kf, i64 48
  %i.km = add nsw i32 %.3637, 16                  ; 3 uses
  store <4 x i32> %i.kj, ptr %i.kl, align 4, !tbaa !18
  %indvars.iv.next836.1 = add nuw nsw i64 %indvars.iv835, 2 ; 2 uses
  %niter995.next.1 = add i64 %niter995, 2         ; 2 uses
  %niter995.ncmp.1 = icmp eq i64 %niter995.next.1, %unroll_iter994
  br i1 %niter995.ncmp.1, label %._crit_edge638.loopexit.unr-lcssa, label %.preheader443, !llvm.loop !106

._crit_edge638.loopexit.unr-lcssa:                ; preds = %.preheader443
  %lcmp.mod991.not = icmp eq i64 %xtraiter989, 0
  br i1 %lcmp.mod991.not, label %._crit_edge638, label %.preheader443.epil.preheader

.preheader443.epil.preheader:                     ; preds = %._crit_edge638.loopexit.unr-lcssa, %.preheader443.preheader
  %indvars.iv835.epil.init = phi i64 [ 0, %.preheader443.preheader ], [ %indvars.iv.next836.1, %._crit_edge638.loopexit.unr-lcssa ]
  %.3637.epil.init = phi i32 [ %.0.lcssa, %.preheader443.preheader ], [ %i.km, %._crit_edge638.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod993 = trunc i32 %i.ar to i1
  tail call void @llvm.assume(i1 %lcmp.mod993)
  %i.kn = getelementptr inbounds nuw [32 x i8], ptr %4, i64 %indvars.iv835.epil.init ; 2 uses
  %i.ko = insertelement <4 x i32> poison, i32 %.3637.epil.init, i64 0
  %i.kp = shufflevector <4 x i32> %i.ko, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.kq = add nsw <4 x i32> %i.kp, <i32 4, i32 5, i32 6, i32 7>
  %i.kr = add nsw <4 x i32> %i.kp, <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %i.kr, ptr %i.kn, align 4, !tbaa !18
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kn, i64 16
  %i.kt = add nsw i32 %.3637.epil.init, 8
  store <4 x i32> %i.kq, ptr %i.ks, align 4, !tbaa !18
  br label %._crit_edge638

._crit_edge638:                                   ; preds = %.preheader443.epil.preheader, %._crit_edge638.loopexit.unr-lcssa, %.loopexit
  %.3.lcssa = phi i32 [ %.0.lcssa, %.loopexit ], [ %i.km, %._crit_edge638.loopexit.unr-lcssa ], [ %i.kt, %.preheader443.epil.preheader ]
  %i.ku = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %.3.lcssa) ; 0 uses
  %i.kv = icmp sgt i32 %0, 0
  br i1 %i.kv, label %.lr.ph642.preheader, label %.preheader442

.lr.ph642.preheader:                              ; preds = %._crit_edge638
  %wide.trip.count843 = zext nneg i32 %0 to i64
  br label %.lr.ph642

.preheader442:                                    ; preds = %Vec_IntFill.exit, %._crit_edge638
  %i.kw = phi ptr [ %i.ju, %._crit_edge638 ], [ %.val334, %Vec_IntFill.exit ] ; 2 uses
  %i.kx = icmp slt i32 %6, 8
  br i1 %i.kx, label %.lr.ph644, label %.preheader441

.lr.ph644:                                        ; preds = %.preheader442
  %i.ky = sext i32 %i.as to i64
  %i.kz = getelementptr inbounds [32 x i8], ptr %4, i64 %i.ky
  %i.la = sext i32 %6 to i64
  %i.lb = getelementptr [4 x i8], ptr %i.kz, i64 %i.la
  %i.lc = getelementptr i8, ptr %i.lb, i64 4
  br label %bb.be

.lr.ph642:                                        ; preds = %.lr.ph642.preheader, %Vec_IntFill.exit
  %.val334907 = phi ptr [ %i.ju, %.lr.ph642.preheader ], [ %.val334, %Vec_IntFill.exit ] ; 3 uses
  %indvars.iv840 = phi i64 [ 0, %.lr.ph642.preheader ], [ %indvars.iv.next841, %Vec_IntFill.exit ] ; 3 uses
  %i.ld = getelementptr inbounds nuw [32 x i8], ptr %4, i64 %indvars.iv840
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv840
  %i.lf = load i32, ptr %i.le, align 4, !tbaa !18
  %i.lg = sext i32 %i.lf to i64
  %i.lh = getelementptr inbounds [4 x i8], ptr %i.ld, i64 %i.lg
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !18
  %i.lj = shl nsw i32 %i.li, 1
  %i.lk = load i32, ptr %i.a, align 8, !tbaa !12
  %.not.i.i408 = icmp slt i32 %i.lk, 1
  br i1 %.not.i.i408, label %bb.ba, label %Vec_IntFill.exit

bb.ba:                                            ; preds = %.lr.ph642
  %.not9.i.i410 = icmp eq ptr %.val334907, null
  br i1 %.not9.i.i410, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ll = tail call dereferenceable_or_null(4) ptr @realloc(ptr noundef nonnull %.val334907, i64 noundef 4) #20
  br label %bb.bd

bb.bc:                                            ; preds = %bb.ba
  %i.lm = tail call noalias dereferenceable_or_null(4) ptr @malloc(i64 noundef 4) #19
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.ln = phi ptr [ %i.ll, %bb.bb ], [ %i.lm, %bb.bc ] ; 2 uses
  store ptr %i.ln, ptr %i.d, align 8, !tbaa !13
  store i32 1, ptr %i.a, align 8, !tbaa !12
  br label %Vec_IntFill.exit

Vec_IntFill.exit:                                 ; preds = %.lr.ph642, %bb.bd
  %.val334 = phi ptr [ %i.ln, %bb.bd ], [ %.val334907, %.lr.ph642 ] ; 5 uses
  store i32 %i.lj, ptr %.val334, align 4, !tbaa !18
  store i32 1, ptr %i.b, align 4, !tbaa !11
  %i.lo = getelementptr inbounds nuw i8, ptr %.val334, i64 4
  %i.lp = tail call i32 @sat_solver_addclause(ptr noundef %i.aq, ptr noundef nonnull %.val334, ptr noundef nonnull %i.lo) #21 ; 0 uses
  %indvars.iv.next841 = add nuw nsw i64 %indvars.iv840, 1 ; 2 uses
  %exitcond844.not = icmp eq i64 %indvars.iv.next841, %wide.trip.count843
  br i1 %exitcond844.not, label %.preheader442, label %.lr.ph642, !llvm.loop !107

.preheader441:                                    ; preds = %Vec_IntFill.exit414, %.preheader442
  %i.lq = phi ptr [ %i.kw, %.preheader442 ], [ %.val333, %Vec_IntFill.exit414 ] ; 3 uses
  br i1 %i.e, label %.preheader440.lr.ph, label %._crit_edge651

.preheader440.lr.ph:                              ; preds = %.preheader441
  %i.lr = icmp sgt i32 %2, 0
  %i.ls = sext i32 %0 to i64
  %wide.trip.count865 = zext nneg i32 %1 to i64
  %wide.trip.count853 = zext nneg i32 %2 to i64
  br label %.preheader440

bb.be:                                            ; preds = %.lr.ph644, %Vec_IntFill.exit414
  %.val333909 = phi ptr [ %i.kw, %.lr.ph644 ], [ %.val333, %Vec_IntFill.exit414 ] ; 3 uses
  %.6295643 = phi i32 [ %6, %.lr.ph644 ], [ %i.mc, %Vec_IntFill.exit414 ]
  %i.lt = load i32, ptr %i.lc, align 4, !tbaa !18
  %i.lu = shl nsw i32 %i.lt, 1
  %i.lv = or disjoint i32 %i.lu, 1
  %i.lw = load i32, ptr %i.a, align 8, !tbaa !12
  %.not.i.i411 = icmp slt i32 %i.lw, 1
  br i1 %.not.i.i411, label %bb.bf, label %Vec_IntFill.exit414

bb.bf:                                            ; preds = %bb.be
  %.not9.i.i413 = icmp eq ptr %.val333909, null
  br i1 %.not9.i.i413, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.lx = tail call dereferenceable_or_null(4) ptr @realloc(ptr noundef nonnull %.val333909, i64 noundef 4) #20
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bf
  %i.ly = tail call noalias dereferenceable_or_null(4) ptr @malloc(i64 noundef 4) #19
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.lz = phi ptr [ %i.lx, %bb.bg ], [ %i.ly, %bb.bh ] ; 2 uses
  store ptr %i.lz, ptr %i.d, align 8, !tbaa !13
  store i32 1, ptr %i.a, align 8, !tbaa !12
  br label %Vec_IntFill.exit414

Vec_IntFill.exit414:                              ; preds = %bb.be, %bb.bi
  %.val333 = phi ptr [ %i.lz, %bb.bi ], [ %.val333909, %bb.be ] ; 5 uses
  store i32 %i.lv, ptr %.val333, align 4, !tbaa !18
  store i32 1, ptr %i.b, align 4, !tbaa !11
  %i.ma = getelementptr inbounds nuw i8, ptr %.val333, i64 4
  %i.mb = tail call i32 @sat_solver_addclause(ptr noundef %i.aq, ptr noundef nonnull %.val333, ptr noundef nonnull %i.ma) #21 ; 0 uses
  %i.mc = add nsw i32 %.6295643, 1                ; 2 uses
  %exitcond845.not = icmp eq i32 %i.mc, 8
  br i1 %exitcond845.not, label %.preheader441, label %bb.be, !llvm.loop !108

.preheader440:                                    ; preds = %.preheader440.lr.ph, %._crit_edge649.split
  %i.md = phi ptr [ %i.lq, %.preheader440.lr.ph ], [ %i.nw, %._crit_edge649.split ] ; 3 uses
  %i.me = phi ptr [ %i.lq, %.preheader440.lr.ph ], [ %i.nx, %._crit_edge649.split ] ; 3 uses
  %indvars.iv862 = phi i64 [ 0, %.preheader440.lr.ph ], [ %indvars.iv.next863, %._crit_edge649.split ] ; 3 uses
  %indvars.iv858 = phi i32 [ %0, %.preheader440.lr.ph ], [ %indvars.iv.next859, %._crit_edge649.split ] ; 2 uses
  %i.mf = add nsw i64 %indvars.iv862, %i.ls       ; 2 uses
  %i.mg = icmp sgt i64 %i.mf, 0
  br i1 %i.mg, label %.preheader439.lr.ph, label %._crit_edge649.split

.preheader439.lr.ph:                              ; preds = %.preheader440
  %i.mh = getelementptr inbounds nuw [912 x i8], ptr %3, i64 %indvars.iv862
  %i.mi = getelementptr inbounds nuw [32 x i8], ptr %4, i64 %i.mf
  br i1 %i.lr, label %.preheader439.preheader, label %._crit_edge649.split

.preheader439.preheader:                          ; preds = %.preheader439.lr.ph
  %wide.trip.count860 = zext i32 %indvars.iv858 to i64
  br label %.preheader439

.preheader439:                                    ; preds = %.preheader439.preheader, %._crit_edge647
  %i.mj = phi ptr [ %i.md, %.preheader439.preheader ], [ %i.nr, %._crit_edge647 ]
  %i.mk = phi ptr [ %i.me, %.preheader439.preheader ], [ %i.nr, %._crit_edge647 ]
  %indvars.iv855 = phi i64 [ 0, %.preheader439.preheader ], [ %indvars.iv.next856, %._crit_edge647 ] ; 3 uses
  %i.ml = getelementptr inbounds nuw [24 x i8], ptr %i.mh, i64 %indvars.iv855
end_hunk_1
