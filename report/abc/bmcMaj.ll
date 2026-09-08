Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/bmcMaj?download=true
inline.NumInlined: 1214
inline.NumDeleted: 188
loop-unroll.NumCompletelyUnrolled: 96
loop-unroll.NumRuntimeUnrolled: 75
loop-unroll.NumUnrolled: 171
loop-unroll.NumUnrolledNotLatch: 4
begin_hunk_0_@Exa4_ManGenStart:bb.a
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.i359
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !54 ; 3 uses
  switch i32 %i.ha, label %bb.aj [
    i32 1, label %Exa4_ManAddClause.exit376
    i32 0, label %bb.al
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.hb = load i32, ptr %i.cc, align 8, !tbaa !135
  %i.hc = shl nsw i32 %i.hb, 1
  %.not31.i375 = icmp sgt i32 %i.ha, %i.hc
  br i1 %.not31.i375, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.hd = add nsw i32 %.034.i360, 1
  %i.he = sext i32 %.034.i360 to i64
  %i.hf = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.he
  store i32 %i.ha, ptr %i.hf, align 4, !tbaa !54
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.ai
  %.1.i361 = phi i32 [ %.034.i360, %bb.ai ], [ %i.hd, %bb.ak ], [ %.034.i360, %bb.aj ] ; 3 uses
  %indvars.iv.next.i362 = add nuw nsw i64 %indvars.iv.i359, 1 ; 2 uses
  %exitcond.not.i363 = icmp eq i64 %indvars.iv.next.i362, %wide.trip.count.i358
  br i1 %exitcond.not.i363, label %._crit_edge.i364, label %bb.ai, !llvm.loop !477

._crit_edge.i364:                                 ; preds = %bb.al
  %i.hg = load ptr, ptr %i.ca, align 8, !tbaa !136 ; 2 uses
  %.not.i365 = icmp eq ptr %i.hg, null
  br i1 %.not.i365, label %Exa4_ManAddClause.exit376, label %bb.am

._crit_edge.thread.i352:                          ; preds = %bb.ah
  %i.hh = load ptr, ptr %i.ca, align 8, !tbaa !136 ; 2 uses
  %.not48.i353 = icmp eq ptr %i.hh, null
  br i1 %.not48.i353, label %Exa4_ManAddClause.exit376, label %.thread.i354

.thread.i354:                                     ; preds = %._crit_edge.thread.i352
  %i.hi = load i32, ptr %i.cb, align 4, !tbaa !137
  %i.hj = add nsw i32 %i.hi, 1
  store i32 %i.hj, ptr %i.cb, align 4, !tbaa !137
  br label %._crit_edge38.i355

bb.am:                                            ; preds = %._crit_edge.i364
  %i.hk = load i32, ptr %i.cb, align 4, !tbaa !137
  %i.hl = add nsw i32 %i.hk, 1
  store i32 %i.hl, ptr %i.cb, align 4, !tbaa !137
  %i.hm = icmp sgt i32 %.1.i361, 0
  br i1 %i.hm, label %.lr.ph37.preheader.i366, label %._crit_edge38.i355

.lr.ph37.preheader.i366:                          ; preds = %bb.am
  %wide.trip.count43.i367 = zext nneg i32 %.1.i361 to i64
  br label %.lr.ph37.i368

.lr.ph37.i368:                                    ; preds = %.lr.ph37.i368, %.lr.ph37.preheader.i366
  %indvars.iv40.i369 = phi i64 [ 0, %.lr.ph37.preheader.i366 ], [ %indvars.iv.next41.i371, %.lr.ph37.i368 ] ; 2 uses
  %i.hn = load ptr, ptr %i.ca, align 8, !tbaa !136
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv40.i369
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !54 ; 2 uses
  %i.hq = and i32 %i.hp, 1
  %.not30.i370 = icmp eq i32 %i.hq, 0
  %i.hr = select i1 %.not30.i370, ptr @.str.57, ptr @.str.143
  %i.hs = ashr i32 %i.hp, 1
  %i.ht = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hn, ptr noundef nonnull @.str.142, ptr noundef nonnull %i.hr, i32 noundef %i.hs) #41 ; 0 uses
  %indvars.iv.next41.i371 = add nuw nsw i64 %indvars.iv40.i369, 1 ; 2 uses
  %exitcond44.not.i372 = icmp eq i64 %indvars.iv.next41.i371, %wide.trip.count43.i367
  br i1 %exitcond44.not.i372, label %._crit_edge38.loopexit.i373, label %.lr.ph37.i368, !llvm.loop !10

._crit_edge38.loopexit.i373:                      ; preds = %.lr.ph37.i368
  %.pre.i374 = load ptr, ptr %i.ca, align 8, !tbaa !136
  br label %._crit_edge38.i355

._crit_edge38.i355:                               ; preds = %._crit_edge38.loopexit.i373, %bb.am, %.thread.i354
  %i.hu = phi ptr [ %.pre.i374, %._crit_edge38.loopexit.i373 ], [ %i.hg, %bb.am ], [ %i.hh, %.thread.i354 ]
  %i.hv = tail call i64 @fwrite(ptr nonnull @.str.144, i64 2, i64 1, ptr %i.hu) ; 0 uses
  br label %Exa4_ManAddClause.exit376

Exa4_ManAddClause.exit376:                        ; preds = %bb.ai, %.loopexit652, %.preheader658, %._crit_edge38.i355, %._crit_edge.thread.i352, %._crit_edge.i364
  br i1 %i.dq, label %bb.at, label %.preheader656

.preheader656:                                    ; preds = %Exa4_ManAddClause.exit376
  %i.hw = load i32, ptr %i.by, align 4, !tbaa !130 ; 4 uses
  %i.hx = icmp sgt i32 %i.hw, 0
  br i1 %i.hx, label %.lr.ph695, label %.loopexit657

.lr.ph695:                                        ; preds = %.preheader656, %.loopexit651
  %.pre921926 = phi i32 [ %.pre921927, %.loopexit651 ], [ %i.hw, %.preheader656 ] ; 2 uses
  %i.hy = phi i32 [ %i.je, %.loopexit651 ], [ %i.hw, %.preheader656 ] ; 4 uses
  %indvars.iv807 = phi i64 [ %indvars.iv.next808, %.loopexit651 ], [ 0, %.preheader656 ] ; 4 uses
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %indvars.iv807 ; 2 uses
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !54
  %.not299 = icmp ne i32 %i.ia, 0
  %i.ib = sext i32 %i.hy to i64
  %i.ic = icmp slt i64 %indvars.iv807, %i.ib
  %or.cond1073 = and i1 %.not299, %i.ic
  br i1 %or.cond1073, label %.lr.ph692, label %.loopexit651

.lr.ph692:                                        ; preds = %.lr.ph695, %bb.as
  %.pre921928 = phi i32 [ %.pre921929, %bb.as ], [ %.pre921926, %.lr.ph695 ] ; 3 uses
  %i.id = phi i32 [ %i.ja, %bb.as ], [ %i.hy, %.lr.ph695 ]
  %i.ie = phi i32 [ %i.jb, %bb.as ], [ %i.hy, %.lr.ph695 ]
  %indvars.iv809 = phi i64 [ %indvars.iv.next810, %bb.as ], [ %indvars.iv807, %.lr.ph695 ] ; 2 uses
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %indvars.iv809
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !54 ; 3 uses
  %.not300 = icmp eq i32 %i.ig, 0
  br i1 %.not300, label %bb.as, label %bb.an

bb.an:                                            ; preds = %.lr.ph692
  %i.ih = load i32, ptr %i.hz, align 4, !tbaa !54 ; 3 uses
  %i.ii = shl nsw i32 %i.ih, 1
  %i.ij = or disjoint i32 %i.ii, 1
  %i.ik = shl nsw i32 %i.ig, 1
  %i.il = or disjoint i32 %i.ik, 1                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #41
  store i32 %i.ij, ptr %i.g, align 16, !tbaa !54
  store i32 %i.il, ptr %i.cg, align 4, !tbaa !54
  store i32 0, ptr %i.ch, align 8, !tbaa !54
  store i32 0, ptr %i.ci, align 4, !tbaa !54
  %cond629 = icmp eq i32 %i.ih, 0
  br i1 %cond629, label %Exa4_ManAddClause4.exit395, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.im = load i32, ptr %i.cc, align 8, !tbaa !135 ; 2 uses
  %.not31.i.i393 = icmp slt i32 %i.ih, %i.im      ; 3 uses
  %spec.select.i394 = zext i1 %.not31.i.i393 to i32
  %.not31.i.1.i392.not = icmp slt i32 %i.ig, %i.im
  br i1 %.not31.i.1.i392.not, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.in = select i1 %.not31.i.i393, i32 2, i32 1
  %.sroa.sel = select i1 %.not31.i.i393, ptr %i.cg, ptr %i.g
  store i32 %i.il, ptr %.sroa.sel, align 4, !tbaa !54
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.1.i.1.i378 = phi i32 [ %spec.select.i394, %bb.ao ], [ %i.in, %bb.ap ] ; 2 uses
  %i.io = load ptr, ptr %i.ca, align 8, !tbaa !136 ; 2 uses
  %.not.i.i379 = icmp eq ptr %i.io, null
  br i1 %.not.i.i379, label %Exa4_ManAddClause4.exit395, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ip = load i32, ptr %i.cb, align 4, !tbaa !137
  %i.iq = add nsw i32 %i.ip, 1
  store i32 %i.iq, ptr %i.cb, align 4, !tbaa !137
  %.not.i380 = icmp eq i32 %.1.i.1.i378, 0
  br i1 %.not.i380, label %._crit_edge38.i.i390, label %.lr.ph37.preheader.i.i381

.lr.ph37.preheader.i.i381:                        ; preds = %bb.ar
  %wide.trip.count43.i.i382 = zext nneg i32 %.1.i.1.i378 to i64
  br label %.lr.ph37.i.i383

.lr.ph37.i.i383:                                  ; preds = %.lr.ph37.i.i383, %.lr.ph37.preheader.i.i381
  %indvars.iv40.i.i384 = phi i64 [ 0, %.lr.ph37.preheader.i.i381 ], [ %indvars.iv.next41.i.i386, %.lr.ph37.i.i383 ] ; 2 uses
  %i.ir = load ptr, ptr %i.ca, align 8, !tbaa !136
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv40.i.i384
  %i.it = load i32, ptr %i.is, align 4, !tbaa !54 ; 2 uses
  %i.iu = and i32 %i.it, 1
  %.not30.i.i385 = icmp eq i32 %i.iu, 0
  %i.iv = select i1 %.not30.i.i385, ptr @.str.57, ptr @.str.143
  %i.iw = ashr i32 %i.it, 1
  %i.ix = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ir, ptr noundef nonnull @.str.142, ptr noundef nonnull %i.iv, i32 noundef %i.iw) #41 ; 0 uses
  %indvars.iv.next41.i.i386 = add nuw nsw i64 %indvars.iv40.i.i384, 1 ; 2 uses
  %exitcond44.not.i.i387 = icmp eq i64 %indvars.iv.next41.i.i386, %wide.trip.count43.i.i382
  br i1 %exitcond44.not.i.i387, label %._crit_edge38.loopexit.i.i388, label %.lr.ph37.i.i383, !llvm.loop !10

._crit_edge38.loopexit.i.i388:                    ; preds = %.lr.ph37.i.i383
  %.pre.i.i389 = load ptr, ptr %i.ca, align 8, !tbaa !136
  br label %._crit_edge38.i.i390

._crit_edge38.i.i390:                             ; preds = %._crit_edge38.loopexit.i.i388, %bb.ar
  %i.iy = phi ptr [ %.pre.i.i389, %._crit_edge38.loopexit.i.i388 ], [ %i.io, %bb.ar ]
  %i.iz = tail call i64 @fwrite(ptr nonnull @.str.144, i64 2, i64 1, ptr %i.iy) ; 0 uses
  %.pre921.pre = load i32, ptr %i.by, align 4, !tbaa !130
  br label %Exa4_ManAddClause4.exit395

Exa4_ManAddClause4.exit395:                       ; preds = %bb.an, %bb.aq, %._crit_edge38.i.i390
  %.pre921 = phi i32 [ %.pre921928, %bb.an ], [ %.pre921928, %bb.aq ], [ %.pre921.pre, %._crit_edge38.i.i390 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #41
  br label %bb.as

bb.as:                                            ; preds = %.lr.ph692, %Exa4_ManAddClause4.exit395
  %.pre921929 = phi i32 [ %.pre921928, %.lr.ph692 ], [ %.pre921, %Exa4_ManAddClause4.exit395 ] ; 2 uses
  %i.ja = phi i32 [ %i.id, %.lr.ph692 ], [ %.pre921, %Exa4_ManAddClause4.exit395 ] ; 2 uses
  %i.jb = phi i32 [ %i.ie, %.lr.ph692 ], [ %.pre921, %Exa4_ManAddClause4.exit395 ] ; 2 uses
  %indvars.iv.next810 = add nuw nsw i64 %indvars.iv809, 1 ; 2 uses
  %i.jc = trunc nuw i64 %indvars.iv.next810 to i32
  %i.jd = icmp sgt i32 %i.jb, %i.jc
  br i1 %i.jd, label %.lr.ph692, label %.loopexit651, !llvm.loop !482

.loopexit651:                                     ; preds = %bb.as, %.lr.ph695
  %.pre921927 = phi i32 [ %.pre921926, %.lr.ph695 ], [ %.pre921929, %bb.as ]
  %i.je = phi i32 [ %i.hy, %.lr.ph695 ], [ %i.ja, %bb.as ] ; 3 uses
  %indvars.iv.next808 = add nuw nsw i64 %indvars.iv807, 1 ; 2 uses
  %i.jf = sext i32 %i.je to i64
  %i.jg = icmp slt i64 %indvars.iv.next808, %i.jf
  br i1 %i.jg, label %.lr.ph695, label %.loopexit657, !llvm.loop !483

bb.at:                                            ; preds = %Exa4_ManAddClause.exit376
  %i.jh = trunc nsw i64 %indvars.iv861 to i32     ; 2 uses
  %i.ji = sub nsw i32 %i.jh, %i.dl                ; 2 uses
  %i.jj = mul nsw i32 %i.ji, 5                    ; 3 uses
  %i.jk = add nsw i32 %i.jj, 1                    ; 7 uses
  %.pre924 = load i32, ptr %i.bt, align 8, !tbaa !129 ; 4 uses
  br i1 %.not301, label %.loopexit663, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.jl = sext i32 %.pre924 to i64                ; 2 uses
  %i.jm = icmp sgt i64 %indvars.iv861, %i.jl
  br i1 %i.jm, label %.preheader655.lr.ph, label %.loopexit663

.preheader655.lr.ph:                              ; preds = %bb.au
  %i.jn = load i32, ptr %i.by, align 4, !tbaa !130 ; 4 uses
  %i.jo = icmp sgt i32 %i.jn, 0
  br i1 %i.jo, label %.preheader655, label %.loopexit663

.preheader655:                                    ; preds = %.preheader655.lr.ph, %._crit_edge701
  %.pre922931 = phi i32 [ %.pre922932, %._crit_edge701 ], [ %i.jn, %.preheader655.lr.ph ] ; 2 uses
  %i.jp = phi i32 [ %i.ld, %._crit_edge701 ], [ %i.jn, %.preheader655.lr.ph ] ; 2 uses
  %i.jq = phi i32 [ %i.le, %._crit_edge701 ], [ %i.jn, %.preheader655.lr.ph ] ; 3 uses
  %indvars.iv822 = phi i64 [ %indvars.iv.next823, %._crit_edge701 ], [ %i.jl, %.preheader655.lr.ph ] ; 2 uses
  %i.jr = icmp sgt i32 %i.jq, 0
  br i1 %i.jr, label %.lr.ph700, label %._crit_edge701

.lr.ph700:                                        ; preds = %.preheader655
  %i.js = getelementptr inbounds [512 x i8], ptr %i.bz, i64 %indvars.iv822
  br label %bb.av

bb.av:                                            ; preds = %.lr.ph700, %.loopexit649
  %.pre922933 = phi i32 [ %.pre922931, %.lr.ph700 ], [ %.pre922934, %.loopexit649 ] ; 2 uses
  %i.jt = phi i32 [ %i.jp, %.lr.ph700 ], [ %i.la, %.loopexit649 ] ; 2 uses
  %i.ju = phi i32 [ %i.jq, %.lr.ph700 ], [ %i.la, %.loopexit649 ] ; 2 uses
  %indvars.iv818 = phi i64 [ 0, %.lr.ph700 ], [ %.pre939, %.loopexit649 ] ; 2 uses
  %indvars.iv813 = phi i64 [ 1, %.lr.ph700 ], [ %indvars.iv.next814, %.loopexit649 ] ; 2 uses
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %indvars.iv818 ; 2 uses
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !54
  %.not308 = icmp ne i32 %i.jw, 0
  %.pre939 = add nuw nsw i64 %indvars.iv818, 1    ; 3 uses
  %i.jx = sext i32 %i.ju to i64
  %i.jy = icmp slt i64 %.pre939, %i.jx
  %or.cond1075 = select i1 %.not308, i1 %i.jy, i1 false
  br i1 %or.cond1075, label %.lr.ph698, label %.loopexit649

.lr.ph698:                                        ; preds = %bb.av, %bb.bb
  %.pre922935 = phi i32 [ %.pre922936, %bb.bb ], [ %.pre922933, %bb.av ] ; 3 uses
  %i.jz = phi i32 [ %i.kw, %bb.bb ], [ %i.jt, %bb.av ]
  %i.ka = phi i32 [ %i.kx, %bb.bb ], [ %i.ju, %bb.av ]
  %indvars.iv815 = phi i64 [ %indvars.iv.next816, %bb.bb ], [ %indvars.iv813, %bb.av ] ; 2 uses
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %indvars.iv815
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !54 ; 3 uses
  %.not309 = icmp eq i32 %i.kc, 0
  br i1 %.not309, label %bb.bb, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph698
  %i.kd = load i32, ptr %i.jv, align 4, !tbaa !54 ; 3 uses
  %i.ke = shl nsw i32 %i.kd, 1
  %i.kf = or disjoint i32 %i.ke, 1
  %i.kg = shl nsw i32 %i.kc, 1
  %i.kh = or disjoint i32 %i.kg, 1                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #41
  store i32 %i.kf, ptr %i.f, align 16, !tbaa !54
  store i32 %i.kh, ptr %i.cj, align 4, !tbaa !54
  store i32 0, ptr %i.ck, align 8, !tbaa !54
  store i32 0, ptr %i.cl, align 4, !tbaa !54
  %cond630 = icmp eq i32 %i.kd, 0
  br i1 %cond630, label %Exa4_ManAddClause4.exit414, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ki = load i32, ptr %i.cc, align 8, !tbaa !135 ; 2 uses
  %.not31.i.i412 = icmp slt i32 %i.kd, %i.ki      ; 3 uses
  %spec.select.i413 = zext i1 %.not31.i.i412 to i32
  %.not31.i.1.i411.not = icmp slt i32 %i.kc, %i.ki
  br i1 %.not31.i.1.i411.not, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.kj = select i1 %.not31.i.i412, i32 2, i32 1
  %.sroa.sel914 = select i1 %.not31.i.i412, ptr %i.cj, ptr %i.f
  store i32 %i.kh, ptr %.sroa.sel914, align 4, !tbaa !54
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.1.i.1.i397 = phi i32 [ %spec.select.i413, %bb.ax ], [ %i.kj, %bb.ay ] ; 2 uses
  %i.kk = load ptr, ptr %i.ca, align 8, !tbaa !136 ; 2 uses
  %.not.i.i398 = icmp eq ptr %i.kk, null
  br i1 %.not.i.i398, label %Exa4_ManAddClause4.exit414, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.kl = load i32, ptr %i.cb, align 4, !tbaa !137
  %i.km = add nsw i32 %i.kl, 1
  store i32 %i.km, ptr %i.cb, align 4, !tbaa !137
  %.not.i399 = icmp eq i32 %.1.i.1.i397, 0
  br i1 %.not.i399, label %._crit_edge38.i.i409, label %.lr.ph37.preheader.i.i400

.lr.ph37.preheader.i.i400:                        ; preds = %bb.ba
  %wide.trip.count43.i.i401 = zext nneg i32 %.1.i.1.i397 to i64
  br label %.lr.ph37.i.i402

.lr.ph37.i.i402:                                  ; preds = %.lr.ph37.i.i402, %.lr.ph37.preheader.i.i400
  %indvars.iv40.i.i403 = phi i64 [ 0, %.lr.ph37.preheader.i.i400 ], [ %indvars.iv.next41.i.i405, %.lr.ph37.i.i402 ] ; 2 uses
  %i.kn = load ptr, ptr %i.ca, align 8, !tbaa !136
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv40.i.i403
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !54 ; 2 uses
  %i.kq = and i32 %i.kp, 1
  %.not30.i.i404 = icmp eq i32 %i.kq, 0
  %i.kr = select i1 %.not30.i.i404, ptr @.str.57, ptr @.str.143
  %i.ks = ashr i32 %i.kp, 1
  %i.kt = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.kn, ptr noundef nonnull @.str.142, ptr noundef nonnull %i.kr, i32 noundef %i.ks) #41 ; 0 uses
  %indvars.iv.next41.i.i405 = add nuw nsw i64 %indvars.iv40.i.i403, 1 ; 2 uses
  %exitcond44.not.i.i406 = icmp eq i64 %indvars.iv.next41.i.i405, %wide.trip.count43.i.i401
  br i1 %exitcond44.not.i.i406, label %._crit_edge38.loopexit.i.i407, label %.lr.ph37.i.i402, !llvm.loop !10

._crit_edge38.loopexit.i.i407:                    ; preds = %.lr.ph37.i.i402
  %.pre.i.i408 = load ptr, ptr %i.ca, align 8, !tbaa !136
  br label %._crit_edge38.i.i409

._crit_edge38.i.i409:                             ; preds = %._crit_edge38.loopexit.i.i407, %bb.ba
  %i.ku = phi ptr [ %.pre.i.i408, %._crit_edge38.loopexit.i.i407 ], [ %i.kk, %bb.ba ]
  %i.kv = tail call i64 @fwrite(ptr nonnull @.str.144, i64 2, i64 1, ptr %i.ku) ; 0 uses
  %.pre922.pre = load i32, ptr %i.by, align 4, !tbaa !130
  br label %Exa4_ManAddClause4.exit414

Exa4_ManAddClause4.exit414:                       ; preds = %bb.aw, %bb.az, %._crit_edge38.i.i409
  %.pre922 = phi i32 [ %.pre922935, %bb.aw ], [ %.pre922935, %bb.az ], [ %.pre922.pre, %._crit_edge38.i.i409 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #41
  br label %bb.bb

bb.bb:                                            ; preds = %.lr.ph698, %Exa4_ManAddClause4.exit414
  %.pre922936 = phi i32 [ %.pre922935, %.lr.ph698 ], [ %.pre922, %Exa4_ManAddClause4.exit414 ] ; 2 uses
  %i.kw = phi i32 [ %i.jz, %.lr.ph698 ], [ %.pre922, %Exa4_ManAddClause4.exit414 ] ; 2 uses
  %i.kx = phi i32 [ %i.ka, %.lr.ph698 ], [ %.pre922, %Exa4_ManAddClause4.exit414 ] ; 2 uses
  %indvars.iv.next816 = add nuw nsw i64 %indvars.iv815, 1 ; 2 uses
  %i.ky = trunc nuw i64 %indvars.iv.next816 to i32
  %i.kz = icmp sgt i32 %i.kx, %i.ky
  br i1 %i.kz, label %.lr.ph698, label %.loopexit649, !llvm.loop !484

.loopexit649:                                     ; preds = %bb.bb, %bb.av
  %.pre922934 = phi i32 [ %.pre922933, %bb.av ], [ %.pre922936, %bb.bb ] ; 2 uses
  %i.la = phi i32 [ %i.jt, %bb.av ], [ %i.kw, %bb.bb ] ; 5 uses
  %i.lb = sext i32 %i.la to i64
  %i.lc = icmp slt i64 %.pre939, %i.lb
  %indvars.iv.next814 = add nuw nsw i64 %indvars.iv813, 1
  br i1 %i.lc, label %bb.av, label %._crit_edge701, !llvm.loop !485

._crit_edge701:                                   ; preds = %.loopexit649, %.preheader655
  %.pre922932 = phi i32 [ %.pre922931, %.preheader655 ], [ %.pre922934, %.loopexit649 ]
  %i.ld = phi i32 [ %i.jp, %.preheader655 ], [ %i.la, %.loopexit649 ]
  %i.le = phi i32 [ %i.jq, %.preheader655 ], [ %i.la, %.loopexit649 ]
  %indvars.iv.next823 = add nsw i64 %indvars.iv822, 1 ; 2 uses
  %lftr.wideiv825 = trunc i64 %indvars.iv.next823 to i32
  %exitcond826.not = icmp eq i32 %lftr.wideiv825, %i.jh
  br i1 %exitcond826.not, label %.loopexit663.loopexit, label %.preheader655, !llvm.loop !486

.loopexit663.loopexit:                            ; preds = %._crit_edge701
  %.pre923 = load i32, ptr %i.bt, align 8, !tbaa !129
  br label %.loopexit663

.loopexit663:                                     ; preds = %.preheader655.lr.ph, %.loopexit663.loopexit, %bb.au, %bb.at
  %i.lf = phi i32 [ %.pre924, %bb.at ], [ %.pre923, %.loopexit663.loopexit ], [ %.pre924, %bb.au ], [ %.pre924, %.preheader655.lr.ph ]
  %i.lg = sext i32 %i.lf to i64                   ; 2 uses
  %i.lh = icmp sgt i64 %indvars.iv861, %i.lg
  br i1 %i.lh, label %.preheader654, label %._crit_edge711

.preheader654:                                    ; preds = %.loopexit663, %bb.bw
  %indvars.iv836 = phi i64 [ %indvars.iv.next837, %bb.bw ], [ %i.lg, %.loopexit663 ] ; 3 uses
  %invariant.gep706 = getelementptr [4 x i8], ptr %i.dm, i64 %indvars.iv836
  %i.li = getelementptr inbounds [512 x i8], ptr %i.bz, i64 %indvars.iv836
  br label %bb.bc

bb.bc:                                            ; preds = %.preheader654, %.loopexit647
  %i.lj = phi i1 [ true, %.preheader654 ], [ false, %.loopexit647 ]
  %indvars.iv833 = phi i64 [ 0, %.preheader654 ], [ 1, %.loopexit647 ] ; 2 uses
  %gep707 = getelementptr [256 x i8], ptr %invariant.gep706, i64 %indvars.iv833 ; 3 uses
  %i.lk = load i32, ptr %gep707, align 4, !tbaa !54
  %.not304 = icmp eq i32 %i.lk, 0
  br i1 %.not304, label %.loopexit647, label %.preheader646

.preheader646:                                    ; preds = %bb.bc
  %i.ll = load i32, ptr %i.by, align 4, !tbaa !130 ; 2 uses
  %i.lm = icmp sgt i32 %i.ll, 0
  br i1 %i.lm, label %.lr.ph705, label %.loopexit647

.lr.ph705:                                        ; preds = %.preheader646
  %i.ln = xor i64 %indvars.iv833, 1
  %i.lo = getelementptr inbounds nuw [256 x i8], ptr %i.dm, i64 %i.ln
  br label %bb.bd

bb.bd:                                            ; preds = %.lr.ph705, %.loopexit645
  %i.lp = phi i32 [ %i.ll, %.lr.ph705 ], [ %i.nz, %.loopexit645 ]
  %indvars.iv830 = phi i64 [ 0, %.lr.ph705 ], [ %indvars.iv.next831, %.loopexit645 ] ; 3 uses
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %i.lo, i64 %indvars.iv830 ; 2 uses
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !54 ; 3 uses
  %.not306 = icmp eq i32 %i.lr, 0
  br i1 %.not306, label %.loopexit645, label %.preheader644

.preheader644:                                    ; preds = %bb.bd
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.li, i64 %indvars.iv830 ; 2 uses
  %i.ls = load i32, ptr %invariant.gep, align 4, !tbaa !54 ; 3 uses
  %.not307 = icmp eq i32 %i.ls, 0
  br i1 %.not307, label %bb.bm, label %bb.be

bb.be:                                            ; preds = %.preheader644
  %i.lt = load i32, ptr %gep707, align 4, !tbaa !54 ; 3 uses
  %i.lu = shl nsw i32 %i.lt, 1
end_hunk_0
begin_hunk_1_@Exa4_ManGenStart:bb.a
  %.not30.i.i423 = icmp eq i32 %i.mp, 0
  %i.mq = select i1 %.not30.i.i423, ptr @.str.57, ptr @.str.143
  %i.mr = ashr i32 %i.mo, 1
  %i.ms = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.mm, ptr noundef nonnull @.str.142, ptr noundef nonnull %i.mq, i32 noundef %i.mr) #41 ; 0 uses
  %indvars.iv.next41.i.i424 = add nuw nsw i64 %indvars.iv40.i.i422, 1 ; 2 uses
  %exitcond44.not.i.i425 = icmp eq i64 %indvars.iv.next41.i.i424, %wide.trip.count43.i.i420
  br i1 %exitcond44.not.i.i425, label %._crit_edge38.loopexit.i.i426, label %.lr.ph37.i.i421, !llvm.loop !10

._crit_edge38.loopexit.i.i426:                    ; preds = %.lr.ph37.i.i421
  %.pre.i.i427 = load ptr, ptr %i.ca, align 8, !tbaa !136
  br label %._crit_edge38.i.i428

._crit_edge38.i.i428:                             ; preds = %._crit_edge38.loopexit.i.i426, %bb.bl
  %i.mt = phi ptr [ %.pre.i.i427, %._crit_edge38.loopexit.i.i426 ], [ %i.mj, %bb.bl ]
  %i.mu = tail call i64 @fwrite(ptr nonnull @.str.144, i64 2, i64 1, ptr %i.mt) ; 0 uses
  br label %Exa4_ManAddClause4.exit434

Exa4_ManAddClause4.exit434:                       ; preds = %bb.be, %bb.bi, %._crit_edge.i.i, %._crit_edge38.i.i428
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #41
  br label %bb.bm

bb.bm:                                            ; preds = %.preheader644, %Exa4_ManAddClause4.exit434
  %gep.1 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 256
  %i.mv = load i32, ptr %gep.1, align 4, !tbaa !54 ; 3 uses
  %.not307.1 = icmp eq i32 %i.mv, 0
  br i1 %.not307.1, label %.loopexit645.loopexit, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.mw = load i32, ptr %gep707, align 4, !tbaa !54 ; 3 uses
  %i.mx = shl nsw i32 %i.mw, 1
  %i.my = or disjoint i32 %i.mx, 1
  %i.mz = load i32, ptr %i.lq, align 4, !tbaa !54 ; 3 uses
  %i.na = shl nsw i32 %i.mz, 1
  %i.nb = or disjoint i32 %i.na, 1                ; 2 uses
  %i.nc = shl nsw i32 %i.mv, 1
  %i.nd = or disjoint i32 %i.nc, 1                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #41
  store i32 %i.my, ptr %i.e, align 16, !tbaa !54
  store i32 %i.nb, ptr %i.cm, align 4, !tbaa !54
  store i32 %i.nd, ptr %i.cn, align 8, !tbaa !54
  store i32 0, ptr %i.co, align 4, !tbaa !54
  %cond631.1 = icmp eq i32 %i.mw, 0
  br i1 %cond631.1, label %Exa4_ManAddClause4.exit434.1, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ne = load i32, ptr %i.cc, align 8, !tbaa !135 ; 4 uses
  %.not31.i.i432.1 = icmp slt i32 %i.mw, %i.ne    ; 3 uses
  %cond635.1 = icmp eq i32 %i.mz, 0
  br i1 %cond635.1, label %Exa4_ManAddClause4.exit434.1, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %spec.select.i433.1 = zext i1 %.not31.i.i432.1 to i32
  %.not31.i.1.i431.not.1 = icmp slt i32 %i.mz, %i.ne
  br i1 %.not31.i.1.i431.not.1, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.nf = select i1 %.not31.i.i432.1, i32 2, i32 1
  %.sroa.sel920 = select i1 %.not31.i.i432.1, ptr %i.cm, ptr %i.e
  store i32 %i.nb, ptr %.sroa.sel920, align 4, !tbaa !54
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %.1.i.1.i416.1 = phi i32 [ %spec.select.i433.1, %bb.bp ], [ %i.nf, %bb.bq ] ; 4 uses
  %.not31.i.2.i.not.1 = icmp slt i32 %i.mv, %i.ne
  br i1 %.not31.i.2.i.not.1, label %bb.bs, label %._crit_edge.i.i.1

bb.bs:                                            ; preds = %bb.br
  %i.ng = add nuw nsw i32 %.1.i.1.i416.1, 1       ; 3 uses
  %i.nh = zext nneg i32 %.1.i.1.i416.1 to i64
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.nh
  store i32 %i.nd, ptr %i.ni, align 4, !tbaa !54
  %.pre.i430.1 = load i32, ptr %i.co, align 4, !tbaa !54 ; 3 uses
  switch i32 %.pre.i430.1, label %bb.bt [
    i32 1, label %Exa4_ManAddClause4.exit434.1
    i32 0, label %._crit_edge.i.i.1
  ]

bb.bt:                                            ; preds = %bb.bs
  %i.nj = shl nsw i32 %i.ne, 1
  %.not31.i.3.i.1 = icmp sgt i32 %.pre.i430.1, %i.nj
  br i1 %.not31.i.3.i.1, label %._crit_edge.i.i.1, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.nk = add nuw nsw i32 %.1.i.1.i416.1, 2
  %i.nl = zext nneg i32 %i.ng to i64
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.nl
  store i32 %.pre.i430.1, ptr %i.nm, align 4, !tbaa !54
  br label %._crit_edge.i.i.1

._crit_edge.i.i.1:                                ; preds = %bb.bu, %bb.bt, %bb.bs, %bb.br
  %.1.i.3.i.1 = phi i32 [ %i.ng, %bb.bs ], [ %i.nk, %bb.bu ], [ %i.ng, %bb.bt ], [ %.1.i.1.i416.1, %bb.br ] ; 2 uses
  %i.nn = load ptr, ptr %i.ca, align 8, !tbaa !136 ; 2 uses
  %.not.i.i417.1 = icmp eq ptr %i.nn, null
  br i1 %.not.i.i417.1, label %Exa4_ManAddClause4.exit434.1, label %bb.bv

bb.bv:                                            ; preds = %._crit_edge.i.i.1
  %i.no = load i32, ptr %i.cb, align 4, !tbaa !137
  %i.np = add nsw i32 %i.no, 1
  store i32 %i.np, ptr %i.cb, align 4, !tbaa !137
  %.not.i418.1 = icmp eq i32 %.1.i.3.i.1, 0
  br i1 %.not.i418.1, label %._crit_edge38.i.i428.1, label %.lr.ph37.preheader.i.i419.1

.lr.ph37.preheader.i.i419.1:                      ; preds = %bb.bv
  %wide.trip.count43.i.i420.1 = zext nneg i32 %.1.i.3.i.1 to i64
  br label %.lr.ph37.i.i421.1

.lr.ph37.i.i421.1:                                ; preds = %.lr.ph37.i.i421.1, %.lr.ph37.preheader.i.i419.1
  %indvars.iv40.i.i422.1 = phi i64 [ 0, %.lr.ph37.preheader.i.i419.1 ], [ %indvars.iv.next41.i.i424.1, %.lr.ph37.i.i421.1 ] ; 2 uses
  %i.nq = load ptr, ptr %i.ca, align 8, !tbaa !136
  %i.nr = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv40.i.i422.1
  %i.ns = load i32, ptr %i.nr, align 4, !tbaa !54 ; 2 uses
  %i.nt = and i32 %i.ns, 1
  %.not30.i.i423.1 = icmp eq i32 %i.nt, 0
  %i.nu = select i1 %.not30.i.i423.1, ptr @.str.57, ptr @.str.143
  %i.nv = ashr i32 %i.ns, 1
  %i.nw = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.nq, ptr noundef nonnull @.str.142, ptr noundef nonnull %i.nu, i32 noundef %i.nv) #41 ; 0 uses
  %indvars.iv.next41.i.i424.1 = add nuw nsw i64 %indvars.iv40.i.i422.1, 1 ; 2 uses
  %exitcond44.not.i.i425.1 = icmp eq i64 %indvars.iv.next41.i.i424.1, %wide.trip.count43.i.i420.1
  br i1 %exitcond44.not.i.i425.1, label %._crit_edge38.loopexit.i.i426.1, label %.lr.ph37.i.i421.1, !llvm.loop !10

._crit_edge38.loopexit.i.i426.1:                  ; preds = %.lr.ph37.i.i421.1
  %.pre.i.i427.1 = load ptr, ptr %i.ca, align 8, !tbaa !136
  br label %._crit_edge38.i.i428.1

._crit_edge38.i.i428.1:                           ; preds = %._crit_edge38.loopexit.i.i426.1, %bb.bv
  %i.nx = phi ptr [ %.pre.i.i427.1, %._crit_edge38.loopexit.i.i426.1 ], [ %i.nn, %bb.bv ]
  %i.ny = tail call i64 @fwrite(ptr nonnull @.str.144, i64 2, i64 1, ptr %i.nx) ; 0 uses
  br label %Exa4_ManAddClause4.exit434.1

Exa4_ManAddClause4.exit434.1:                     ; preds = %._crit_edge38.i.i428.1, %._crit_edge.i.i.1, %bb.bs, %bb.bo, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #41
  br label %.loopexit645.loopexit

.loopexit645.loopexit:                            ; preds = %Exa4_ManAddClause4.exit434.1, %bb.bm
  %.pre925 = load i32, ptr %i.by, align 4, !tbaa !130
  br label %.loopexit645

.loopexit645:                                     ; preds = %.loopexit645.loopexit, %bb.bd
  %i.nz = phi i32 [ %.pre925, %.loopexit645.loopexit ], [ %i.lp, %bb.bd ] ; 2 uses
  %indvars.iv.next831 = add nuw nsw i64 %indvars.iv830, 1 ; 2 uses
  %i.oa = sext i32 %i.nz to i64
  %i.ob = icmp slt i64 %indvars.iv.next831, %i.oa
  br i1 %i.ob, label %bb.bd, label %.loopexit647, !llvm.loop !487

.loopexit647:                                     ; preds = %.loopexit645, %.preheader646, %bb.bc
  br i1 %i.lj, label %bb.bc, label %bb.bw, !llvm.loop !488

bb.bw:                                            ; preds = %.loopexit647
  %indvars.iv.next837 = add nsw i64 %indvars.iv836, 1 ; 2 uses
  %exitcond840.not = icmp eq i64 %indvars.iv.next837, %indvars.iv861
  br i1 %exitcond840.not, label %._crit_edge711, label %.preheader654, !llvm.loop !489

._crit_edge711:                                   ; preds = %bb.bw, %.loopexit663
  br i1 %.not302, label %.preheader660, label %.preheader662

.preheader662:                                    ; preds = %._crit_edge711
  br i1 %i.cq, label %.lr.ph714.preheader, label %._crit_edge.thread.i435

.lr.ph714.preheader:                              ; preds = %.preheader662
  br i1 %min.iters.check, label %.lr.ph714.preheader1102, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph714.preheader
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.jk, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op = add <4 x i32> splat (i32 4), %broadcast.splat
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.oc = add nsw <4 x i32> %broadcast.splat, %vec.ind
  %.reass = add <4 x i32> %vec.ind, %invariant.op
  %i.od = shl nsw <4 x i32> %i.oc, splat (i32 1)
  %i.oe = shl nsw <4 x i32> %.reass, splat (i32 1)
  %i.of = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %index ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 16
  store <4 x i32> %i.od, ptr %i.of, align 16, !tbaa !54
  store <4 x i32> %i.oe, ptr %i.og, align 16, !tbaa !54
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.oh = icmp eq i64 %index.next, %n.vec
  br i1 %i.oh, label %middle.block, label %vector.body, !llvm.loop !490

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.lr.ph.i440.preheader, label %.lr.ph714.preheader1102

.lr.ph714.preheader1102:                          ; preds = %.lr.ph714.preheader, %middle.block
  %indvars.iv841.ph = phi i64 [ 0, %.lr.ph714.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph714

.preheader660:                                    ; preds = %._crit_edge711
  %i.oi = shl nsw i32 %i.jk, 1                    ; 3 uses
  %i.oj = mul i32 %i.ji, 10                       ; 3 uses
  %i.ok = add i32 %i.oj, 4                        ; 11 uses
  %i.ol = add i32 %i.oj, 6                        ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #41
  store i32 %i.oi, ptr %i.c, align 16, !tbaa !54
  store i32 %i.ok, ptr %i.cu, align 4, !tbaa !54
  store i32 %i.ol, ptr %i.cv, align 8, !tbaa !54
  store i32 0, ptr %i.cw, align 4, !tbaa !54
  %cond1077.a = icmp eq i32 %i.jk, 0
  br i1 %cond1077.a, label %9, label %7

.lr.ph714:                                        ; preds = %.lr.ph714.preheader1102, %.lr.ph714
  %indvars.iv841 = phi i64 [ %indvars.iv.next842, %.lr.ph714 ], [ %indvars.iv841.ph, %.lr.ph714.preheader1102 ] ; 3 uses
  %indvars845 = trunc i64 %indvars.iv841 to i32
  %i.om = add nsw i32 %i.jk, %indvars845
  %i.on = shl nsw i32 %i.om, 1
  %indvars.iv.next842 = add nuw nsw i64 %indvars.iv841, 1 ; 2 uses
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv841
  store i32 %i.on, ptr %i.oo, align 4, !tbaa !54
  %exitcond847.not = icmp eq i64 %indvars.iv.next842, %wide.trip.count846
  br i1 %exitcond847.not, label %.lr.ph.i440.preheader, label %.lr.ph714, !llvm.loop !491

.lr.ph.i440.preheader:                            ; preds = %.lr.ph714, %middle.block
  br label %.lr.ph.i440

.lr.ph.i440:                                      ; preds = %.lr.ph.i440.preheader, %bb.bz
  %indvars.iv.i442 = phi i64 [ %indvars.iv.next.i445, %bb.bz ], [ 0, %.lr.ph.i440.preheader ] ; 2 uses
  %.034.i443 = phi i32 [ %.1.i444, %bb.bz ], [ 0, %.lr.ph.i440.preheader ] ; 4 uses
  %i.op = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.i442
  %i.oq = load i32, ptr %i.op, align 4, !tbaa !54 ; 3 uses
  switch i32 %i.oq, label %bb.bx [
    i32 1, label %.lr.ph721.preheader
    i32 0, label %bb.bz
  ]

bb.bx:                                            ; preds = %.lr.ph.i440
  %i.or = load i32, ptr %i.cc, align 8, !tbaa !135
  %i.os = shl nsw i32 %i.or, 1
  %.not31.i458 = icmp sgt i32 %i.oq, %i.os
  br i1 %.not31.i458, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ot = add nsw i32 %.034.i443, 1
  %i.ou = sext i32 %.034.i443 to i64
  %i.ov = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.ou
  store i32 %i.oq, ptr %i.ov, align 4, !tbaa !54
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx, %.lr.ph.i440
  %.1.i444 = phi i32 [ %.034.i443, %.lr.ph.i440 ], [ %i.ot, %bb.by ], [ %.034.i443, %bb.bx ] ; 3 uses
  %indvars.iv.next.i445 = add nuw nsw i64 %indvars.iv.i442, 1 ; 2 uses
  %exitcond.not.i446 = icmp eq i64 %indvars.iv.next.i445, %wide.trip.count.i441
  br i1 %exitcond.not.i446, label %._crit_edge.i447, label %.lr.ph.i440, !llvm.loop !477

._crit_edge.i447:                                 ; preds = %bb.bz
  %i.ow = load ptr, ptr %i.ca, align 8, !tbaa !136 ; 2 uses
  %.not.i448 = icmp eq ptr %i.ow, null
  br i1 %.not.i448, label %.lr.ph721.preheader, label %bb.ca

._crit_edge.thread.i435:                          ; preds = %.preheader662
  %i.ox = load ptr, ptr %i.ca, align 8, !tbaa !136 ; 2 uses
  %.not48.i436 = icmp eq ptr %i.ox, null
  br i1 %.not48.i436, label %.loopexit661, label %Exa4_ManAddClause.exit459

bb.ca:                                            ; preds = %._crit_edge.i447
  %i.oy = load i32, ptr %i.cb, align 4, !tbaa !137
  %i.oz = add nsw i32 %i.oy, 1
  store i32 %i.oz, ptr %i.cb, align 4, !tbaa !137
  %i.pa = icmp sgt i32 %.1.i444, 0
  br i1 %i.pa, label %.lr.ph37.preheader.i449, label %Exa4_ManAddClause.exit459.thread1043

.lr.ph37.preheader.i449:                          ; preds = %bb.ca
  %wide.trip.count43.i450 = zext nneg i32 %.1.i444 to i64
  br label %.lr.ph37.i451

.lr.ph37.i451:                                    ; preds = %.lr.ph37.i451, %.lr.ph37.preheader.i449
  %indvars.iv40.i452 = phi i64 [ 0, %.lr.ph37.preheader.i449 ], [ %indvars.iv.next41.i454, %.lr.ph37.i451 ] ; 2 uses
  %i.pb = load ptr, ptr %i.ca, align 8, !tbaa !136
  %i.pc = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv40.i452
  %i.pd = load i32, ptr %i.pc, align 4, !tbaa !54 ; 2 uses
  %i.pe = and i32 %i.pd, 1
  %.not30.i453 = icmp eq i32 %i.pe, 0
  %i.pf = select i1 %.not30.i453, ptr @.str.57, ptr @.str.143
  %i.pg = ashr i32 %i.pd, 1
  %i.ph = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.pb, ptr noundef nonnull @.str.142, ptr noundef nonnull %i.pf, i32 noundef %i.pg) #41 ; 0 uses
  %indvars.iv.next41.i454 = add nuw nsw i64 %indvars.iv40.i452, 1 ; 2 uses
  %exitcond44.not.i455 = icmp eq i64 %indvars.iv.next41.i454, %wide.trip.count43.i450
  br i1 %exitcond44.not.i455, label %._crit_edge38.loopexit.i456, label %.lr.ph37.i451, !llvm.loop !10

._crit_edge38.loopexit.i456:                      ; preds = %.lr.ph37.i451
  %.pre.i457 = load ptr, ptr %i.ca, align 8, !tbaa !136
  br label %Exa4_ManAddClause.exit459.thread1043

Exa4_ManAddClause.exit459.thread1043:             ; preds = %._crit_edge38.loopexit.i456, %bb.ca
  %.ph = phi ptr [ %i.ow, %bb.ca ], [ %.pre.i457, %._crit_edge38.loopexit.i456 ]
  %i.pi = tail call i64 @fwrite(ptr nonnull @.str.144, i64 2, i64 1, ptr %.ph) ; 0 uses
  br label %.lr.ph721.preheader

.lr.ph721.preheader:                              ; preds = %.lr.ph.i440, %._crit_edge.i447, %Exa4_ManAddClause.exit459.thread1043
  br label %.lr.ph721

Exa4_ManAddClause.exit459:                        ; preds = %._crit_edge.thread.i435
  %i.pj = load i32, ptr %i.cb, align 4, !tbaa !137
  %i.pk = add nsw i32 %i.pj, 1
  store i32 %i.pk, ptr %i.cb, align 4, !tbaa !137
  %i.pl = tail call i64 @fwrite(ptr nonnull @.str.144, i64 2, i64 1, ptr nonnull %i.ox) ; 0 uses
  br label %.loopexit661

.loopexit653:                                     ; preds = %Exa4_ManAddClause4.exit482, %.lr.ph721
  %indvars.iv.next849 = add nuw nsw i64 %indvars.iv848, 1
  %exitcond859.not = icmp eq i64 %indvars.iv.next856, %i.cy
  br i1 %exitcond859.not, label %.loopexit661, label %.lr.ph721, !llvm.loop !492

.lr.ph721:                                        ; preds = %.lr.ph721.preheader, %.loopexit653
  %indvars.iv855 = phi i64 [ %indvars.iv.next856, %.loopexit653 ], [ 0, %.lr.ph721.preheader ] ; 2 uses
  %indvars.iv848 = phi i64 [ %indvars.iv.next849, %.loopexit653 ], [ 1, %.lr.ph721.preheader ] ; 2 uses
  %indvars.iv.next856 = add nuw nsw i64 %indvars.iv855, 1 ; 3 uses
  %i.pm = icmp samesign ult i64 %indvars.iv.next856, %i.cy
  br i1 %i.pm, label %.lr.ph719, label %.loopexit653

.lr.ph719:                                        ; preds = %.lr.ph721
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv855
  %i.po = load i32, ptr %i.pn, align 4, !tbaa !54
  %i.pp = xor i32 %i.po, 1                        ; 4 uses
  br label %bb.cb

bb.cb:                                            ; preds = %.lr.ph719, %Exa4_ManAddClause4.exit482
  %indvars.iv850 = phi i64 [ %indvars.iv848, %.lr.ph719 ], [ %indvars.iv.next851, %Exa4_ManAddClause4.exit482 ] ; 2 uses
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv850
  %i.pr = load i32, ptr %i.pq, align 4, !tbaa !54
  %i.ps = xor i32 %i.pr, 1                        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #41
  store i32 %i.pp, ptr %i.d, align 16, !tbaa !54
  store i32 %i.ps, ptr %i.cr, align 4, !tbaa !54
  store i32 0, ptr %i.cs, align 8, !tbaa !54
  store i32 0, ptr %i.ct, align 4, !tbaa !54
  switch i32 %i.pp, label %bb.cc [
    i32 1, label %Exa4_ManAddClause4.exit482
    i32 0, label %bb.cd
  ]

bb.cc:                                            ; preds = %bb.cb
  %i.pt = load i32, ptr %i.cc, align 8, !tbaa !135
  %i.pu = shl nsw i32 %i.pt, 1
  %.not31.i.i480 = icmp sle i32 %i.pp, %i.pu
  %spec.select.i481 = zext i1 %.not31.i.i480 to i32
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %.1.i.i460 = phi i32 [ %i.pp, %bb.cb ], [ %spec.select.i481, %bb.cc ] ; 4 uses
  switch i32 %i.ps, label %bb.ce [
    i32 1, label %Exa4_ManAddClause4.exit482
    i32 0, label %bb.cg
  ]

bb.ce:                                            ; preds = %bb.cd
  %i.pv = load i32, ptr %i.cc, align 8, !tbaa !135
  %i.pw = shl nsw i32 %i.pv, 1
  %.not31.i.1.i479 = icmp sgt i32 %i.ps, %i.pw
  br i1 %.not31.i.1.i479, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.px = add nuw nsw i32 %.1.i.i460, 1
  %i.py = zext nneg i32 %.1.i.i460 to i64
  %i.pz = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.py
  store i32 %i.ps, ptr %i.pz, align 4, !tbaa !54
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce, %bb.cd
  %.1.i.1.i461 = phi i32 [ %.1.i.i460, %bb.cd ], [ %i.px, %bb.cf ], [ %.1.i.i460, %bb.ce ] ; 2 uses
  %i.qa = load ptr, ptr %i.ca, align 8, !tbaa !136 ; 2 uses
  %.not.i.i465 = icmp eq ptr %i.qa, null
  br i1 %.not.i.i465, label %Exa4_ManAddClause4.exit482, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.qb = load i32, ptr %i.cb, align 4, !tbaa !137
  %i.qc = add nsw i32 %i.qb, 1
  store i32 %i.qc, ptr %i.cb, align 4, !tbaa !137
  %.not.i466 = icmp eq i32 %.1.i.1.i461, 0
  br i1 %.not.i466, label %._crit_edge38.i.i476, label %.lr.ph37.preheader.i.i467

.lr.ph37.preheader.i.i467:                        ; preds = %bb.ch
  %wide.trip.count43.i.i468 = zext nneg i32 %.1.i.1.i461 to i64
  br label %.lr.ph37.i.i469

.lr.ph37.i.i469:                                  ; preds = %.lr.ph37.i.i469, %.lr.ph37.preheader.i.i467
  %indvars.iv40.i.i470 = phi i64 [ 0, %.lr.ph37.preheader.i.i467 ], [ %indvars.iv.next41.i.i472, %.lr.ph37.i.i469 ] ; 2 uses
  %i.qd = load ptr, ptr %i.ca, align 8, !tbaa !136
  %i.qe = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv40.i.i470
  %i.qf = load i32, ptr %i.qe, align 4, !tbaa !54 ; 2 uses
  %i.qg = and i32 %i.qf, 1
  %.not30.i.i471 = icmp eq i32 %i.qg, 0
  %i.qh = select i1 %.not30.i.i471, ptr @.str.57, ptr @.str.143
  %i.qi = ashr i32 %i.qf, 1
  %i.qj = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.qd, ptr noundef nonnull @.str.142, ptr noundef nonnull %i.qh, i32 noundef %i.qi) #41 ; 0 uses
  %indvars.iv.next41.i.i472 = add nuw nsw i64 %indvars.iv40.i.i470, 1 ; 2 uses
  %exitcond44.not.i.i473 = icmp eq i64 %indvars.iv.next41.i.i472, %wide.trip.count43.i.i468
  br i1 %exitcond44.not.i.i473, label %._crit_edge38.loopexit.i.i474, label %.lr.ph37.i.i469, !llvm.loop !10

._crit_edge38.loopexit.i.i474:                    ; preds = %.lr.ph37.i.i469
  %.pre.i.i475 = load ptr, ptr %i.ca, align 8, !tbaa !136
  br label %._crit_edge38.i.i476

._crit_edge38.i.i476:                             ; preds = %._crit_edge38.loopexit.i.i474, %bb.ch
  %i.qk = phi ptr [ %.pre.i.i475, %._crit_edge38.loopexit.i.i474 ], [ %i.qa, %bb.ch ]
  %i.ql = tail call i64 @fwrite(ptr nonnull @.str.144, i64 2, i64 1, ptr %i.qk) ; 0 uses
  br label %Exa4_ManAddClause4.exit482

Exa4_ManAddClause4.exit482:                       ; preds = %bb.cb, %bb.cd, %bb.cg, %._crit_edge38.i.i476
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #41
  %indvars.iv.next851 = add nuw nsw i64 %indvars.iv850, 1 ; 2 uses
  %exitcond854.not = icmp eq i64 %indvars.iv.next851, %i.cy
  br i1 %exitcond854.not, label %.loopexit653, label %bb.cb, !llvm.loop !493

7:                                                ; preds = %.preheader660
  %8 = load i32, ptr %i.cc, align 8, !tbaa !135
  %.not31.i.i505 = icmp slt i32 %i.jj, %8
  %spec.select.i506 = zext i1 %.not31.i.i505 to i32
  br label %9

9:                                                ; preds = %.preheader660, %7
  %.1.i.i483 = phi i32 [ 0, %.preheader660 ], [ %spec.select.i506, %7 ] ; 4 uses
  %cond1077 = icmp eq i32 %i.ok, 0
  br i1 %cond1077, label %bb.ck, label %bb.ci

bb.ci:                                            ; preds = %9
  %i.qm = load i32, ptr %i.cc, align 8, !tbaa !135
  %i.qn = shl nsw i32 %i.qm, 1
  %.not31.i.1.i504 = icmp sgt i32 %i.ok, %i.qn
  br i1 %.not31.i.1.i504, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %10 = add nuw nsw i32 %.1.i.i483, 1
  %11 = zext nneg i32 %.1.i.i483 to i64
  %12 = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %11
  store i32 %i.ok, ptr %12, align 4, !tbaa !54
  br label %bb.ck

bb.ck:                                            ; preds = %9, %bb.cj, %bb.ci
  %.1.i.1.i484 = phi i32 [ %.1.i.i483, %9 ], [ %10, %bb.cj ], [ %.1.i.i483, %bb.ci ] ; 5 uses
  %cond1078 = icmp eq i32 %i.ol, 0
  br i1 %cond1078, label %._crit_edge.i.i486, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.qo = load i32, ptr %i.cc, align 8, !tbaa !135
  %i.qp = shl nsw i32 %i.qo, 1                    ; 2 uses
  %.not31.i.2.i502 = icmp sgt i32 %i.ol, %i.qp
  br i1 %.not31.i.2.i502, label %._crit_edge.i.i486, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.qq = add nuw nsw i32 %.1.i.1.i484, 1         ; 3 uses
  %i.qr = zext nneg i32 %.1.i.1.i484 to i64
  %i.qs = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.qr
  store i32 %i.ol, ptr %i.qs, align 4, !tbaa !54
  %.pre.i503 = load i32, ptr %i.cw, align 4, !tbaa !54 ; 3 uses
  switch i32 %.pre.i503, label %bb.cn [
    i32 1, label %Exa4_ManAddClause4.exit507
    i32 0, label %._crit_edge.i.i486
  ]

bb.cn:                                            ; preds = %bb.cm
  %.not31.i.3.i501 = icmp sgt i32 %.pre.i503, %i.qp
  br i1 %.not31.i.3.i501, label %._crit_edge.i.i486, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.qt = add nuw nsw i32 %.1.i.1.i484, 2
  %i.qu = zext nneg i32 %i.qq to i64
  %i.qv = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.qu
  store i32 %.pre.i503, ptr %i.qv, align 4, !tbaa !54
  br label %._crit_edge.i.i486

._crit_edge.i.i486:                               ; preds = %bb.ck, %bb.cl, %bb.co, %bb.cn, %bb.cm
  %.1.i.3.i487 = phi i32 [ %i.qq, %bb.cm ], [ %i.qt, %bb.co ], [ %i.qq, %bb.cn ], [ %.1.i.1.i484, %bb.ck ], [ %.1.i.1.i484, %bb.cl ] ; 2 uses
  %i.qw = load ptr, ptr %i.ca, align 8, !tbaa !136 ; 2 uses
  %.not.i.i488 = icmp eq ptr %i.qw, null
  br i1 %.not.i.i488, label %Exa4_ManAddClause4.exit507, label %bb.cp

bb.cp:                                            ; preds = %._crit_edge.i.i486
  %i.qx = load i32, ptr %i.cb, align 4, !tbaa !137
  %i.qy = add nsw i32 %i.qx, 1
  store i32 %i.qy, ptr %i.cb, align 4, !tbaa !137
  %.not.i489 = icmp eq i32 %.1.i.3.i487, 0
  br i1 %.not.i489, label %._crit_edge38.i.i499, label %.lr.ph37.preheader.i.i490

.lr.ph37.preheader.i.i490:                        ; preds = %bb.cp
  %wide.trip.count43.i.i491 = zext nneg i32 %.1.i.3.i487 to i64
  br label %.lr.ph37.i.i492

.lr.ph37.i.i492:                                  ; preds = %.lr.ph37.i.i492, %.lr.ph37.preheader.i.i490
  %indvars.iv40.i.i493 = phi i64 [ 0, %.lr.ph37.preheader.i.i490 ], [ %indvars.iv.next41.i.i495, %.lr.ph37.i.i492 ] ; 2 uses
  %i.qz = load ptr, ptr %i.ca, align 8, !tbaa !136
  %i.ra = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv40.i.i493
  %i.rb = load i32, ptr %i.ra, align 4, !tbaa !54 ; 2 uses
  %i.rc = and i32 %i.rb, 1
  %.not30.i.i494 = icmp eq i32 %i.rc, 0
  %i.rd = select i1 %.not30.i.i494, ptr @.str.57, ptr @.str.143
  %i.re = ashr i32 %i.rb, 1
  %i.rf = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.qz, ptr noundef nonnull @.str.142, ptr noundef nonnull %i.rd, i32 noundef %i.re) #41 ; 0 uses
  %indvars.iv.next41.i.i495 = add nuw nsw i64 %indvars.iv40.i.i493, 1 ; 2 uses
  %exitcond44.not.i.i496 = icmp eq i64 %indvars.iv.next41.i.i495, %wide.trip.count43.i.i491
  br i1 %exitcond44.not.i.i496, label %._crit_edge38.loopexit.i.i497, label %.lr.ph37.i.i492, !llvm.loop !10

._crit_edge38.loopexit.i.i497:                    ; preds = %.lr.ph37.i.i492
  %.pre.i.i498 = load ptr, ptr %i.ca, align 8, !tbaa !136
  br label %._crit_edge38.i.i499

._crit_edge38.i.i499:                             ; preds = %._crit_edge38.loopexit.i.i497, %bb.cp
  %i.rg = phi ptr [ %.pre.i.i498, %._crit_edge38.loopexit.i.i497 ], [ %i.qw, %bb.cp ]
  %i.rh = tail call i64 @fwrite(ptr nonnull @.str.144, i64 2, i64 1, ptr %i.rg) ; 0 uses
  br label %Exa4_ManAddClause4.exit507

Exa4_ManAddClause4.exit507:                       ; preds = %bb.cm, %._crit_edge.i.i486, %._crit_edge38.i.i499
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #41
  %i.ri = or disjoint i32 %i.oi, 1                ; 5 uses
  %i.rj = or disjoint i32 %i.ol, 1                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #41
  store i32 %i.ri, ptr %i.c, align 16, !tbaa !54
  store i32 %i.ok, ptr %i.cu, align 4, !tbaa !54
  store i32 %i.rj, ptr %i.cv, align 8, !tbaa !54
  store i32 0, ptr %i.cw, align 4, !tbaa !54
  %cond1079.a = icmp eq i32 %i.jk, 0
  br i1 %cond1079.a, label %Exa4_ManAddClause4.exit507.1, label %13

13:                                               ; preds = %Exa4_ManAddClause4.exit507
  %14 = load i32, ptr %i.cc, align 8, !tbaa !135
  %.not31.i.i505.1 = icmp slt i32 %i.jk, %14      ; 3 uses
  %spec.select.i506.1 = zext i1 %.not31.i.i505.1 to i32 ; 2 uses
  %cond1079 = icmp eq i32 %i.ok, 0
  br i1 %cond1079, label %bb.cs, label %bb.cq

bb.cq:                                            ; preds = %13
  %i.rk = load i32, ptr %i.cc, align 8, !tbaa !135
  %i.rl = shl nsw i32 %i.rk, 1
  %.not31.i.1.i504.1 = icmp sgt i32 %i.ok, %i.rl
  br i1 %.not31.i.1.i504.1, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.rm = select i1 %.not31.i.i505.1, i32 2, i32 1
  %.sroa.sel1137.idx = select i1 %.not31.i.i505.1, i64 4, i64 0
  %.sroa.sel1137 = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sroa.sel1137.idx
  store i32 %i.ok, ptr %.sroa.sel1137, align 4, !tbaa !54
  br label %bb.cs

bb.cs:                                            ; preds = %13, %bb.cr, %bb.cq
  %.1.i.1.i484.1 = phi i32 [ %spec.select.i506.1, %13 ], [ %i.rm, %bb.cr ], [ %spec.select.i506.1, %bb.cq ] ; 4 uses
  %cond1069 = icmp eq i32 %i.ol, 0
  br i1 %cond1069, label %Exa4_ManAddClause4.exit507.1, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.rn = load i32, ptr %i.cc, align 8, !tbaa !135
  %i.ro = shl nsw i32 %i.rn, 1                    ; 2 uses
  %.not31.i.2.i502.1.not = icmp slt i32 %i.ol, %i.ro
  br i1 %.not31.i.2.i502.1.not, label %bb.cu, label %._crit_edge.i.i486.1

bb.cu:                                            ; preds = %bb.ct
  %i.rp = add nuw nsw i32 %.1.i.1.i484.1, 1       ; 3 uses
  %i.rq = zext nneg i32 %.1.i.1.i484.1 to i64
  %i.rr = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.rq
  store i32 %i.rj, ptr %i.rr, align 4, !tbaa !54
  %.pre.i503.1 = load i32, ptr %i.cw, align 4, !tbaa !54 ; 3 uses
  switch i32 %.pre.i503.1, label %bb.cv [
    i32 1, label %Exa4_ManAddClause4.exit507.1
    i32 0, label %._crit_edge.i.i486.1
  ]

bb.cv:                                            ; preds = %bb.cu
  %.not31.i.3.i501.1 = icmp sgt i32 %.pre.i503.1, %i.ro
  br i1 %.not31.i.3.i501.1, label %._crit_edge.i.i486.1, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.rs = add nuw nsw i32 %.1.i.1.i484.1, 2
  %i.rt = zext nneg i32 %i.rp to i64
  %i.ru = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.rt
  store i32 %.pre.i503.1, ptr %i.ru, align 4, !tbaa !54
  br label %._crit_edge.i.i486.1

._crit_edge.i.i486.1:                             ; preds = %bb.cw, %bb.cv, %bb.cu, %bb.ct
  %.1.i.3.i487.1 = phi i32 [ %i.rp, %bb.cu ], [ %i.rs, %bb.cw ], [ %i.rp, %bb.cv ], [ %.1.i.1.i484.1, %bb.ct ] ; 2 uses
  %i.rv = load ptr, ptr %i.ca, align 8, !tbaa !136 ; 2 uses
  %.not.i.i488.1 = icmp eq ptr %i.rv, null
  br i1 %.not.i.i488.1, label %Exa4_ManAddClause4.exit507.1, label %bb.cx

bb.cx:                                            ; preds = %._crit_edge.i.i486.1
  %i.rw = load i32, ptr %i.cb, align 4, !tbaa !137
  %i.rx = add nsw i32 %i.rw, 1
  store i32 %i.rx, ptr %i.cb, align 4, !tbaa !137
  %.not.i489.1 = icmp eq i32 %.1.i.3.i487.1, 0
  br i1 %.not.i489.1, label %._crit_edge38.i.i499.1, label %.lr.ph37.preheader.i.i490.1

.lr.ph37.preheader.i.i490.1:                      ; preds = %bb.cx
  %wide.trip.count43.i.i491.1 = zext nneg i32 %.1.i.3.i487.1 to i64
  br label %.lr.ph37.i.i492.1

.lr.ph37.i.i492.1:                                ; preds = %.lr.ph37.i.i492.1, %.lr.ph37.preheader.i.i490.1
  %indvars.iv40.i.i493.1 = phi i64 [ 0, %.lr.ph37.preheader.i.i490.1 ], [ %indvars.iv.next41.i.i495.1, %.lr.ph37.i.i492.1 ] ; 2 uses
  %i.ry = load ptr, ptr %i.ca, align 8, !tbaa !136
  %i.rz = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv40.i.i493.1
  %i.sa = load i32, ptr %i.rz, align 4, !tbaa !54 ; 2 uses
  %i.sb = and i32 %i.sa, 1
  %.not30.i.i494.1 = icmp eq i32 %i.sb, 0
  %i.sc = select i1 %.not30.i.i494.1, ptr @.str.57, ptr @.str.143
  %i.sd = ashr i32 %i.sa, 1
  %i.se = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ry, ptr noundef nonnull @.str.142, ptr noundef nonnull %i.sc, i32 noundef %i.sd) #41 ; 0 uses
  %indvars.iv.next41.i.i495.1 = add nuw nsw i64 %indvars.iv40.i.i493.1, 1 ; 2 uses
  %exitcond44.not.i.i496.1 = icmp eq i64 %indvars.iv.next41.i.i495.1, %wide.trip.count43.i.i491.1
  br i1 %exitcond44.not.i.i496.1, label %._crit_edge38.loopexit.i.i497.1, label %.lr.ph37.i.i492.1, !llvm.loop !10

._crit_edge38.loopexit.i.i497.1:                  ; preds = %.lr.ph37.i.i492.1
  %.pre.i.i498.1 = load ptr, ptr %i.ca, align 8, !tbaa !136
  br label %._crit_edge38.i.i499.1

._crit_edge38.i.i499.1:                           ; preds = %._crit_edge38.loopexit.i.i497.1, %bb.cx
  %i.sf = phi ptr [ %.pre.i.i498.1, %._crit_edge38.loopexit.i.i497.1 ], [ %i.rv, %bb.cx ]
  %i.sg = tail call i64 @fwrite(ptr nonnull @.str.144, i64 2, i64 1, ptr %i.sf) ; 0 uses
  br label %Exa4_ManAddClause4.exit507.1

Exa4_ManAddClause4.exit507.1:                     ; preds = %bb.cs, %Exa4_ManAddClause4.exit507, %._crit_edge38.i.i499.1, %._crit_edge.i.i486.1, %bb.cu
  %15 = phi i32 [ %i.rj, %Exa4_ManAddClause4.exit507 ], [ %i.rj, %._crit_edge38.i.i499.1 ], [ %i.rj, %._crit_edge.i.i486.1 ], [ %i.rj, %bb.cu ], [ 1, %bb.cs ] ; 3 uses
  %16 = phi i32 [ 1, %Exa4_ManAddClause4.exit507 ], [ %i.ri, %._crit_edge38.i.i499.1 ], [ %i.ri, %._crit_edge.i.i486.1 ], [ %i.ri, %bb.cu ], [ %i.ri, %bb.cs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #41
  %i.sh = or disjoint i32 %i.ok, 1                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #41
  store i32 %i.oi, ptr %i.c, align 16, !tbaa !54
  store i32 %i.sh, ptr %i.cu, align 4, !tbaa !54
  store i32 %15, ptr %i.cv, align 8, !tbaa !54
  store i32 0, ptr %i.cw, align 4, !tbaa !54
  %cond1070.a = icmp eq i32 %i.jk, 0
  br i1 %cond1070.a, label %19, label %17

17:                                               ; preds = %Exa4_ManAddClause4.exit507.1
  %18 = load i32, ptr %i.cc, align 8, !tbaa !135
  %.not31.i.i505.2 = icmp slt i32 %i.jj, %18
  %spec.select.i506.2 = zext i1 %.not31.i.i505.2 to i32
  br label %19

19:                                               ; preds = %Exa4_ManAddClause4.exit507.1, %17
  %.1.i.i483.2 = phi i32 [ 0, %Exa4_ManAddClause4.exit507.1 ], [ %spec.select.i506.2, %17 ] ; 3 uses
  %cond1070 = icmp eq i32 %i.ok, 0
  br i1 %cond1070, label %Exa4_ManAddClause4.exit507.2, label %bb.cy

bb.cy:                                            ; preds = %19
  %i.si = load i32, ptr %i.cc, align 8, !tbaa !135
  %i.sj = shl nsw i32 %i.si, 1
  %.not31.i.1.i504.2.not = icmp slt i32 %i.ok, %i.sj
  br i1 %.not31.i.1.i504.2.not, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %20 = add nuw nsw i32 %.1.i.i483.2, 1
  %21 = zext nneg i32 %.1.i.i483.2 to i64
  %22 = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %21
  store i32 %i.sh, ptr %22, align 4, !tbaa !54
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %.1.i.1.i484.2 = phi i32 [ %.1.i.i483.2, %bb.cy ], [ %20, %bb.cz ] ; 4 uses
  %cond1071 = icmp eq i32 %15, 1
  br i1 %cond1071, label %Exa4_ManAddClause4.exit507.2, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.sk = load i32, ptr %i.cc, align 8, !tbaa !135
  %i.sl = shl nsw i32 %i.sk, 1                    ; 2 uses
  %.not31.i.2.i502.2.not = icmp slt i32 %i.ol, %i.sl
  br i1 %.not31.i.2.i502.2.not, label %bb.dc, label %._crit_edge.i.i486.2

bb.dc:                                            ; preds = %bb.db
  %i.sm = add nuw nsw i32 %.1.i.1.i484.2, 1       ; 3 uses
  %i.sn = zext nneg i32 %.1.i.1.i484.2 to i64
  %i.so = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.sn
  store i32 %15, ptr %i.so, align 4, !tbaa !54
  %.pre.i503.2 = load i32, ptr %i.cw, align 4, !tbaa !54 ; 3 uses
  switch i32 %.pre.i503.2, label %bb.dd [
    i32 1, label %Exa4_ManAddClause4.exit507.2
    i32 0, label %._crit_edge.i.i486.2
  ]

bb.dd:                                            ; preds = %bb.dc
  %.not31.i.3.i501.2 = icmp sgt i32 %.pre.i503.2, %i.sl
  br i1 %.not31.i.3.i501.2, label %._crit_edge.i.i486.2, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.sp = add nuw nsw i32 %.1.i.1.i484.2, 2
  %i.sq = zext nneg i32 %i.sm to i64
  %i.sr = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.sq
  store i32 %.pre.i503.2, ptr %i.sr, align 4, !tbaa !54
  br label %._crit_edge.i.i486.2

._crit_edge.i.i486.2:                             ; preds = %bb.de, %bb.dd, %bb.dc, %bb.db
  %.1.i.3.i487.2 = phi i32 [ %i.sm, %bb.dc ], [ %i.sp, %bb.de ], [ %i.sm, %bb.dd ], [ %.1.i.1.i484.2, %bb.db ] ; 2 uses
  %i.ss = load ptr, ptr %i.ca, align 8, !tbaa !136 ; 2 uses
  %.not.i.i488.2 = icmp eq ptr %i.ss, null
  br i1 %.not.i.i488.2, label %Exa4_ManAddClause4.exit507.2, label %bb.df

bb.df:                                            ; preds = %._crit_edge.i.i486.2
  %i.st = load i32, ptr %i.cb, align 4, !tbaa !137
  %i.su = add nsw i32 %i.st, 1
  store i32 %i.su, ptr %i.cb, align 4, !tbaa !137
  %.not.i489.2 = icmp eq i32 %.1.i.3.i487.2, 0
  br i1 %.not.i489.2, label %._crit_edge38.i.i499.2, label %.lr.ph37.preheader.i.i490.2

.lr.ph37.preheader.i.i490.2:                      ; preds = %bb.df
  %wide.trip.count43.i.i491.2 = zext nneg i32 %.1.i.3.i487.2 to i64
  br label %.lr.ph37.i.i492.2

.lr.ph37.i.i492.2:                                ; preds = %.lr.ph37.i.i492.2, %.lr.ph37.preheader.i.i490.2
  %indvars.iv40.i.i493.2 = phi i64 [ 0, %.lr.ph37.preheader.i.i490.2 ], [ %indvars.iv.next41.i.i495.2, %.lr.ph37.i.i492.2 ] ; 2 uses
  %i.sv = load ptr, ptr %i.ca, align 8, !tbaa !136
  %i.sw = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv40.i.i493.2
  %i.sx = load i32, ptr %i.sw, align 4, !tbaa !54 ; 2 uses
  %i.sy = and i32 %i.sx, 1
  %.not30.i.i494.2 = icmp eq i32 %i.sy, 0
  %i.sz = select i1 %.not30.i.i494.2, ptr @.str.57, ptr @.str.143
  %i.ta = ashr i32 %i.sx, 1
  %i.tb = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.sv, ptr noundef nonnull @.str.142, ptr noundef nonnull %i.sz, i32 noundef %i.ta) #41 ; 0 uses
  %indvars.iv.next41.i.i495.2 = add nuw nsw i64 %indvars.iv40.i.i493.2, 1 ; 2 uses
  %exitcond44.not.i.i496.2 = icmp eq i64 %indvars.iv.next41.i.i495.2, %wide.trip.count43.i.i491.2
  br i1 %exitcond44.not.i.i496.2, label %._crit_edge38.loopexit.i.i497.2, label %.lr.ph37.i.i492.2, !llvm.loop !10

._crit_edge38.loopexit.i.i497.2:                  ; preds = %.lr.ph37.i.i492.2
  %.pre.i.i498.2 = load ptr, ptr %i.ca, align 8, !tbaa !136
  br label %._crit_edge38.i.i499.2

._crit_edge38.i.i499.2:                           ; preds = %._crit_edge38.loopexit.i.i497.2, %bb.df
  %i.tc = phi ptr [ %.pre.i.i498.2, %._crit_edge38.loopexit.i.i497.2 ], [ %i.ss, %bb.df ]
  %i.td = tail call i64 @fwrite(ptr nonnull @.str.144, i64 2, i64 1, ptr %i.tc) ; 0 uses
  br label %Exa4_ManAddClause4.exit507.2

Exa4_ManAddClause4.exit507.2:                     ; preds = %bb.da, %19, %._crit_edge38.i.i499.2, %._crit_edge.i.i486.2, %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #41
  br i1 %.not303, label %.loopexit661, label %bb.dg

bb.dg:                                            ; preds = %Exa4_ManAddClause4.exit507.2
  %i.te = add i32 %i.oj, 5
  tail call fastcc void @Exa4_ManAddClause4(ptr noundef nonnull %0, i32 noundef %16, i32 noundef %i.te, i32 noundef %i.ol, i32 noundef 0)
  br label %.loopexit661

.loopexit661:                                     ; preds = %.loopexit653, %._crit_edge.thread.i435, %Exa4_ManAddClause.exit459, %Exa4_ManAddClause4.exit507.2, %bb.dg
  %indvars.iv.next862 = add nsw i64 %indvars.iv861, 1 ; 2 uses
  %i.tf = load i32, ptr %i.bt, align 8, !tbaa !129 ; 3 uses
  %i.tg = load i32, ptr %i.bv, align 4, !tbaa !127
  %i.th = add nsw i32 %i.tg, %i.tf                ; 2 uses
  %i.ti = sext i32 %i.th to i64
  %i.tj = icmp slt i64 %indvars.iv.next862, %i.ti
  br i1 %i.tj, label %bb.n, label %.preheader643, !llvm.loop !494

.preheader642:                                    ; preds = %.preheader642.lr.ph, %.loopexit641
  %indvar = phi i32 [ 0, %.preheader642.lr.ph ], [ %indvar.next, %.loopexit641 ] ; 3 uses
  %indvars.iv886 = phi i64 [ %i.dj, %.preheader642.lr.ph ], [ %indvars.iv.next887, %.loopexit641 ] ; 2 uses
  %indvars.iv864.in = phi i64 [ %i.dj, %.preheader642.lr.ph ], [ %indvars.iv864, %.loopexit641 ] ; 2 uses
  %indvars.iv864 = add nsw i64 %indvars.iv864.in, 1 ; 5 uses
  %i.tk = load i32, ptr %i.db, align 4, !tbaa !130 ; 4 uses
  %indvars.iv.next887 = add nsw i64 %indvars.iv886, 1 ; 3 uses
  %i.tl = sext i32 %i.tk to i64
  %i.tm = icmp slt i64 %indvars.iv.next887, %i.tl
  %invariant.gep739 = getelementptr [4 x i8], ptr %i.dc, i64 %indvars.iv886 ; 4 uses
  br i1 %i.tm, label %.preheader639.us.preheader.preheader, label %._crit_edge.thread.i508

.preheader639.us.preheader.preheader:             ; preds = %.preheader642
  %i.tn = add i32 %i.cz, %indvar
  %i.to = sub i32 %i.dk, %indvar
  %i.tp = add i32 %i.tk, %i.to                    ; 4 uses
  %reass.sub = sub i32 %i.tk, %i.tn
  %i.tq = add i32 %reass.sub, -2                  ; 2 uses
  %xtraiter1111 = and i32 %i.tp, 1
  %i.tr = icmp eq i32 %i.tq, 0
  br i1 %i.tr, label %.preheader639.us.preheader.epil.preheader, label %.preheader639.us.preheader.preheader.new

.preheader639.us.preheader.preheader.new:         ; preds = %.preheader639.us.preheader.preheader
  %unroll_iter1115 = and i32 %i.tp, -2
  br label %.preheader639.us.preheader

.preheader639.us.preheader:                       ; preds = %bb.dj, %.preheader639.us.preheader.preheader.new
  %indvars.iv866 = phi i64 [ %indvars.iv864, %.preheader639.us.preheader.preheader.new ], [ %indvars.iv.next867.11122, %bb.dj ] ; 3 uses
  %.4728.us = phi i32 [ 0, %.preheader639.us.preheader.preheader.new ], [ %.5.us.11121, %bb.dj ] ; 3 uses
  %niter1116 = phi i32 [ 0, %.preheader639.us.preheader.preheader.new ], [ %niter1116.next.1, %bb.dj ]
  %gep736.us = getelementptr [512 x i8], ptr %invariant.gep739, i64 %indvars.iv866
  %i.ts = load i32, ptr %gep736.us, align 4, !tbaa !54 ; 2 uses
  %.not297.us = icmp eq i32 %i.ts, 0
  br i1 %.not297.us, label %.preheader639.us.preheader.1, label %bb.dh

bb.dh:                                            ; preds = %.preheader639.us.preheader
  %i.tt = shl nsw i32 %i.ts, 1
  %i.tu = add nsw i32 %.4728.us, 1
  %i.tv = sext i32 %.4728.us to i64
  %i.tw = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.tv
  store i32 %i.tt, ptr %i.tw, align 4, !tbaa !54
  br label %.preheader639.us.preheader.1

.preheader639.us.preheader.1:                     ; preds = %bb.dh, %.preheader639.us.preheader
  %.5.us = phi i32 [ %i.tu, %bb.dh ], [ %.4728.us, %.preheader639.us.preheader ] ; 3 uses
  %i.tx = getelementptr [512 x i8], ptr %invariant.gep739, i64 %indvars.iv866
  %gep736.us.11119 = getelementptr i8, ptr %i.tx, i64 512
  %i.ty = load i32, ptr %gep736.us.11119, align 4, !tbaa !54 ; 2 uses
  %.not297.us.11120 = icmp eq i32 %i.ty, 0
  br i1 %.not297.us.11120, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %.preheader639.us.preheader.1
  %i.tz = shl nsw i32 %i.ty, 1
  %i.ua = add nsw i32 %.5.us, 1
  %i.ub = sext i32 %.5.us to i64
  %i.uc = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.ub
  store i32 %i.tz, ptr %i.uc, align 4, !tbaa !54
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %.preheader639.us.preheader.1
  %.5.us.11121 = phi i32 [ %i.ua, %bb.di ], [ %.5.us, %.preheader639.us.preheader.1 ] ; 3 uses
  %indvars.iv.next867.11122 = add nsw i64 %indvars.iv866, 2 ; 2 uses
  %niter1116.next.1 = add i32 %niter1116, 2       ; 2 uses
  %niter1116.ncmp.1 = icmp eq i32 %niter1116.next.1, %unroll_iter1115
  br i1 %niter1116.ncmp.1, label %._crit_edge731.us.unr-lcssa, label %.preheader639.us.preheader, !llvm.loop !495

._crit_edge731.us.unr-lcssa:                      ; preds = %bb.dj
  %lcmp.mod1112.not = icmp eq i32 %xtraiter1111, 0
  br i1 %lcmp.mod1112.not, label %._crit_edge731.us, label %.preheader639.us.preheader.epil.preheader

.preheader639.us.preheader.epil.preheader:        ; preds = %._crit_edge731.us.unr-lcssa, %.preheader639.us.preheader.preheader
  %indvars.iv866.epil.init = phi i64 [ %indvars.iv864, %.preheader639.us.preheader.preheader ], [ %indvars.iv.next867.11122, %._crit_edge731.us.unr-lcssa ]
  %.4728.us.epil.init = phi i32 [ 0, %.preheader639.us.preheader.preheader ], [ %.5.us.11121, %._crit_edge731.us.unr-lcssa ] ; 3 uses
  %lcmp.mod1114 = trunc i32 %i.tp to i1
  tail call void @llvm.assume(i1 %lcmp.mod1114)
  %gep736.us.epil = getelementptr [512 x i8], ptr %invariant.gep739, i64 %indvars.iv866.epil.init
  %i.ud = load i32, ptr %gep736.us.epil, align 4, !tbaa !54 ; 2 uses
  %.not297.us.epil = icmp eq i32 %i.ud, 0
  br i1 %.not297.us.epil, label %._crit_edge731.us, label %bb.dk

bb.dk:                                            ; preds = %.preheader639.us.preheader.epil.preheader
  %i.ue = shl nsw i32 %i.ud, 1
  %i.uf = add nsw i32 %.4728.us.epil.init, 1
  %i.ug = sext i32 %.4728.us.epil.init to i64
  %i.uh = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.ug
  store i32 %i.ue, ptr %i.uh, align 4, !tbaa !54
  br label %._crit_edge731.us

._crit_edge731.us:                                ; preds = %.preheader639.us.preheader.epil.preheader, %bb.dk, %._crit_edge731.us.unr-lcssa
  %.5.us.lcssa = phi i32 [ %.5.us.11121, %._crit_edge731.us.unr-lcssa ], [ %i.uf, %bb.dk ], [ %.4728.us.epil.init, %.preheader639.us.preheader.epil.preheader ] ; 4 uses
  %gep740.us.1 = getelementptr i8, ptr %invariant.gep739, i64 256 ; 3 uses
  %xtraiter1124 = and i32 %i.tp, 1
  %lcmp.mod1125.not = icmp eq i32 %xtraiter1124, 0
  br i1 %lcmp.mod1125.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %._crit_edge731.us
  %gep736.us.1.prol = getelementptr [512 x i8], ptr %gep740.us.1, i64 %indvars.iv864
  %i.ui = load i32, ptr %gep736.us.1.prol, align 4, !tbaa !54 ; 2 uses
  %.not297.us.1.prol = icmp eq i32 %i.ui, 0
  br i1 %.not297.us.1.prol, label %.prol.loopexit.unr-lcssa, label %bb.dl

bb.dl:                                            ; preds = %.prol.preheader
  %i.uj = shl nsw i32 %i.ui, 1
  %i.uk = add nsw i32 %.5.us.lcssa, 1
  %i.ul = sext i32 %.5.us.lcssa to i64
  %i.um = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.ul
  store i32 %i.uj, ptr %i.um, align 4, !tbaa !54
  br label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %bb.dl, %.prol.preheader
  %.5.us.1.prol = phi i32 [ %i.uk, %bb.dl ], [ %.5.us.lcssa, %.prol.preheader ] ; 2 uses
  %indvars.iv.next867.1.prol = add nsw i64 %indvars.iv864.in, 2
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %._crit_edge731.us
  %.5.us.1.lcssa.unr = phi i32 [ poison, %._crit_edge731.us ], [ %.5.us.1.prol, %.prol.loopexit.unr-lcssa ]
  %indvars.iv866.1.unr = phi i64 [ %indvars.iv864, %._crit_edge731.us ], [ %indvars.iv.next867.1.prol, %.prol.loopexit.unr-lcssa ]
  %.4728.us.1.unr = phi i32 [ %.5.us.lcssa, %._crit_edge731.us ], [ %.5.us.1.prol, %.prol.loopexit.unr-lcssa ]
  %i.un = icmp eq i32 %i.tq, 0
  br i1 %i.un, label %.split742.us, label %._crit_edge731.us.new

._crit_edge731.us.new:                            ; preds = %.prol.loopexit, %bb.dp
  %indvars.iv866.1 = phi i64 [ %indvars.iv.next867.1.1, %bb.dp ], [ %indvars.iv866.1.unr, %.prol.loopexit ] ; 3 uses
  %.4728.us.1 = phi i32 [ %.5.us.1.1, %bb.dp ], [ %.4728.us.1.unr, %.prol.loopexit ] ; 3 uses
  %gep736.us.1 = getelementptr [512 x i8], ptr %gep740.us.1, i64 %indvars.iv866.1
  %i.uo = load i32, ptr %gep736.us.1, align 4, !tbaa !54 ; 2 uses
  %.not297.us.1 = icmp eq i32 %i.uo, 0
  br i1 %.not297.us.1, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %._crit_edge731.us.new
  %i.up = shl nsw i32 %i.uo, 1
  %i.uq = add nsw i32 %.4728.us.1, 1
  %i.ur = sext i32 %.4728.us.1 to i64
  %i.us = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.ur
  store i32 %i.up, ptr %i.us, align 4, !tbaa !54
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %._crit_edge731.us.new
  %.5.us.1 = phi i32 [ %i.uq, %bb.dm ], [ %.4728.us.1, %._crit_edge731.us.new ] ; 3 uses
  %i.ut = getelementptr [512 x i8], ptr %gep740.us.1, i64 %indvars.iv866.1
  %gep736.us.1.1 = getelementptr i8, ptr %i.ut, i64 512
  %i.uu = load i32, ptr %gep736.us.1.1, align 4, !tbaa !54 ; 2 uses
  %.not297.us.1.1 = icmp eq i32 %i.uu, 0
  br i1 %.not297.us.1.1, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.uv = shl nsw i32 %i.uu, 1
  %i.uw = add nsw i32 %.5.us.1, 1
  %i.ux = sext i32 %.5.us.1 to i64
  %i.uy = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.ux
  store i32 %i.uv, ptr %i.uy, align 4, !tbaa !54
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dn
  %.5.us.1.1 = phi i32 [ %i.uw, %bb.do ], [ %.5.us.1, %bb.dn ] ; 2 uses
  %indvars.iv.next867.1.1 = add nsw i64 %indvars.iv866.1, 2 ; 2 uses
  %lftr.wideiv869.1.1 = trunc i64 %indvars.iv.next867.1.1 to i32
  %exitcond870.1.not.1 = icmp eq i32 %i.tk, %lftr.wideiv869.1.1
  br i1 %exitcond870.1.not.1, label %.split742.us, label %._crit_edge731.us.new, !llvm.loop !495

.preheader637:                                    ; preds = %.loopexit641, %.preheader643
  %.lcssa = phi i32 [ %.pre-phi, %.preheader643 ], [ %i.xm, %.loopexit641 ] ; 2 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.va = load i32, ptr %i.uz, align 4, !tbaa !130
  %i.vb = icmp slt i32 %.lcssa, %i.va
  br i1 %i.vb, label %.preheader.lr.ph, label %._crit_edge762

.preheader.lr.ph:                                 ; preds = %.preheader637
  %i.vc = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.vd = getelementptr inbounds nuw i8, ptr %0, i64 32816 ; 7 uses
  %i.ve = getelementptr inbounds nuw i8, ptr %0, i64 32812 ; 6 uses
  %i.vf = getelementptr inbounds nuw i8, ptr %0, i64 32808 ; 3 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.vh = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.vi = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.vj = sext i32 %.lcssa to i64
  br label %.preheader

.split742.us:                                     ; preds = %bb.dp, %.prol.loopexit
  %.5.us.1.lcssa = phi i32 [ %.5.us.1.lcssa.unr, %.prol.loopexit ], [ %.5.us.1.1, %bb.dp ] ; 7 uses
  %i.vk = icmp sgt i32 %.5.us.1.lcssa, 0
  br i1 %i.vk, label %.lr.ph.i513, label %._crit_edge.thread.i508

.lr.ph.i513:                                      ; preds = %.split742.us
  %wide.trip.count.i514 = zext nneg i32 %.5.us.1.lcssa to i64
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dt, %.lr.ph.i513
  %indvars.iv.i515 = phi i64 [ 0, %.lr.ph.i513 ], [ %indvars.iv.next.i518, %bb.dt ] ; 2 uses
end_hunk_1
begin_hunk_2_@Exa6_ManGenStart:bb.a
  %i.fj = add nsw i32 %i.fi, %i.fh
  %i.fk = shl nsw i32 %i.fj, 1
  %.not32.i.i = icmp sle i32 %i.fd, %i.fk
  %spec.select.i = zext i1 %.not32.i.i to i32
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.1.i.i = phi i32 [ %i.fd, %bb.x ], [ %spec.select.i, %bb.y ] ; 4 uses
  switch i32 %i.fg, label %bb.aa [
    i32 1, label %Exa6_ManAddClause4.exit
    i32 0, label %bb.ac
  ]

bb.aa:                                            ; preds = %bb.z
  %i.fl = load i32, ptr %i.s, align 8, !tbaa !180
  %i.fm = load i32, ptr %i.t, align 4, !tbaa !181
  %i.fn = add nsw i32 %i.fm, %i.fl
  %i.fo = shl nsw i32 %i.fn, 1
  %.not32.i.1.i = icmp sgt i32 %i.fg, %i.fo
  br i1 %.not32.i.1.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fp = add nuw nsw i32 %.1.i.i, 1
  %i.fq = zext nneg i32 %.1.i.i to i64
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.fq
  store i32 %i.fg, ptr %i.fr, align 4, !tbaa !54
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %.1.i.1.i = phi i32 [ %.1.i.i, %bb.z ], [ %i.fp, %bb.ab ], [ %.1.i.i, %bb.aa ] ; 2 uses
  %i.fs = load ptr, ptr %i.q, align 8, !tbaa !182 ; 2 uses
  %.not.i.i = icmp eq ptr %i.fs, null
  br i1 %.not.i.i, label %Exa6_ManAddClause4.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ft = load i32, ptr %i.r, align 8, !tbaa !183
  %i.fu = add nsw i32 %i.ft, 1
  store i32 %i.fu, ptr %i.r, align 8, !tbaa !183
  %.not.i251 = icmp eq i32 %.1.i.1.i, 0
  br i1 %.not.i251, label %._crit_edge39.i.i, label %.lr.ph38.preheader.i.i

.lr.ph38.preheader.i.i:                           ; preds = %bb.ad
  %wide.trip.count44.i.i = zext nneg i32 %.1.i.1.i to i64
  br label %.lr.ph38.i.i

.lr.ph38.i.i:                                     ; preds = %.lr.ph38.i.i, %.lr.ph38.preheader.i.i
  %indvars.iv41.i.i = phi i64 [ 0, %.lr.ph38.preheader.i.i ], [ %indvars.iv.next42.i.i, %.lr.ph38.i.i ] ; 2 uses
  %i.fv = load ptr, ptr %i.q, align 8, !tbaa !182
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv41.i.i
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !54 ; 2 uses
  %i.fy = and i32 %i.fx, 1
  %.not31.i.i = icmp eq i32 %i.fy, 0
  %i.fz = select i1 %.not31.i.i, ptr @.str.57, ptr @.str.143
  %i.ga = ashr i32 %i.fx, 1
  %i.gb = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fv, ptr noundef nonnull @.str.142, ptr noundef nonnull %i.fz, i32 noundef %i.ga) #41 ; 0 uses
  %indvars.iv.next42.i.i = add nuw nsw i64 %indvars.iv41.i.i, 1 ; 2 uses
  %exitcond45.not.i.i = icmp eq i64 %indvars.iv.next42.i.i, %wide.trip.count44.i.i
  br i1 %exitcond45.not.i.i, label %._crit_edge39.loopexit.i.i, label %.lr.ph38.i.i, !llvm.loop !22

._crit_edge39.loopexit.i.i:                       ; preds = %.lr.ph38.i.i
  %.pre.i.i = load ptr, ptr %i.q, align 8, !tbaa !182
  br label %._crit_edge39.i.i

._crit_edge39.i.i:                                ; preds = %._crit_edge39.loopexit.i.i, %bb.ad
  %i.gc = phi ptr [ %.pre.i.i, %._crit_edge39.loopexit.i.i ], [ %i.fs, %bb.ad ]
  %i.gd = tail call i64 @fwrite(ptr nonnull @.str.144, i64 2, i64 1, ptr %i.gc) ; 0 uses
  br label %Exa6_ManAddClause4.exit

Exa6_ManAddClause4.exit:                          ; preds = %bb.x, %bb.z, %bb.ac, %._crit_edge39.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #41
  %indvars.iv.next588 = add nuw nsw i64 %indvars.iv587, 1 ; 2 uses
  %exitcond591.not = icmp eq i64 %indvars.iv.next588, %wide.trip.count595
  br i1 %exitcond591.not, label %.loopexit480, label %bb.x, !llvm.loop !627

._crit_edge500:                                   ; preds = %.loopexit480, %._crit_edge39.i.thread, %._crit_edge.thread.i
  br i1 %i.dc, label %bb.ak, label %.preheader484

.preheader484:                                    ; preds = %._crit_edge500
  %i.ge = load i32, ptr %i.o, align 4, !tbaa !175 ; 4 uses
  %i.gf = icmp sgt i32 %i.ge, 0
  br i1 %i.gf, label %.lr.ph505, label %.loopexit485

.lr.ph505:                                        ; preds = %.preheader484, %.loopexit479
  %.pre721728 = phi i32 [ %.pre721729, %.loopexit479 ], [ %i.ge, %.preheader484 ] ; 2 uses
  %i.gg = phi i32 [ %i.ho, %.loopexit479 ], [ %i.ge, %.preheader484 ] ; 4 uses
  %indvars.iv597 = phi i64 [ %indvars.iv.next598, %.loopexit479 ], [ 0, %.preheader484 ] ; 4 uses
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %indvars.iv597 ; 2 uses
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !54
  %.not239 = icmp ne i32 %i.gi, 0
  %i.gj = sext i32 %i.gg to i64
  %i.gk = icmp slt i64 %indvars.iv597, %i.gj
  %or.cond = and i1 %.not239, %i.gk
  br i1 %or.cond, label %.lr.ph502, label %.loopexit479

.lr.ph502:                                        ; preds = %.lr.ph505, %bb.aj
  %.pre721730 = phi i32 [ %.pre721731, %bb.aj ], [ %.pre721728, %.lr.ph505 ] ; 3 uses
  %i.gl = phi i32 [ %i.hk, %bb.aj ], [ %i.gg, %.lr.ph505 ]
  %i.gm = phi i32 [ %i.hl, %bb.aj ], [ %i.gg, %.lr.ph505 ]
  %indvars.iv599 = phi i64 [ %indvars.iv.next600, %bb.aj ], [ %indvars.iv597, %.lr.ph505 ] ; 2 uses
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %indvars.iv599
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !54 ; 3 uses
  %.not240 = icmp eq i32 %i.go, 0
  br i1 %.not240, label %bb.aj, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph502
  %i.gp = load i32, ptr %i.gh, align 4, !tbaa !54 ; 3 uses
  %i.gq = shl nsw i32 %i.gp, 1
  %i.gr = or disjoint i32 %i.gq, 1
  %i.gs = shl nsw i32 %i.go, 1
  %i.gt = or disjoint i32 %i.gs, 1                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #41
  store i32 %i.gr, ptr %i.g, align 16, !tbaa !54
  store i32 %i.gt, ptr %i.x, align 4, !tbaa !54
  store i32 0, ptr %i.y, align 8, !tbaa !54
  store i32 0, ptr %i.z, align 4, !tbaa !54
  %cond = icmp eq i32 %i.gp, 0
  br i1 %cond, label %Exa6_ManAddClause4.exit270, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gu = load i32, ptr %i.s, align 8, !tbaa !180
  %i.gv = load i32, ptr %i.t, align 4, !tbaa !181
  %i.gw = add nsw i32 %i.gv, %i.gu                ; 2 uses
  %.not32.i.i268 = icmp slt i32 %i.gp, %i.gw      ; 3 uses
  %spec.select.i269 = zext i1 %.not32.i.i268 to i32
  %.not32.i.1.i267.not = icmp slt i32 %i.go, %i.gw
  br i1 %.not32.i.1.i267.not, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.gx = select i1 %.not32.i.i268, i32 2, i32 1
  %.sroa.sel = select i1 %.not32.i.i268, ptr %i.x, ptr %i.g
  store i32 %i.gt, ptr %.sroa.sel, align 4, !tbaa !54
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.1.i.1.i253 = phi i32 [ %spec.select.i269, %bb.af ], [ %i.gx, %bb.ag ] ; 2 uses
  %i.gy = load ptr, ptr %i.q, align 8, !tbaa !182 ; 2 uses
  %.not.i.i254 = icmp eq ptr %i.gy, null
  br i1 %.not.i.i254, label %Exa6_ManAddClause4.exit270, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gz = load i32, ptr %i.r, align 8, !tbaa !183
  %i.ha = add nsw i32 %i.gz, 1
  store i32 %i.ha, ptr %i.r, align 8, !tbaa !183
  %.not.i255 = icmp eq i32 %.1.i.1.i253, 0
  br i1 %.not.i255, label %._crit_edge39.i.i265, label %.lr.ph38.preheader.i.i256

.lr.ph38.preheader.i.i256:                        ; preds = %bb.ai
  %wide.trip.count44.i.i257 = zext nneg i32 %.1.i.1.i253 to i64
  br label %.lr.ph38.i.i258

.lr.ph38.i.i258:                                  ; preds = %.lr.ph38.i.i258, %.lr.ph38.preheader.i.i256
  %indvars.iv41.i.i259 = phi i64 [ 0, %.lr.ph38.preheader.i.i256 ], [ %indvars.iv.next42.i.i261, %.lr.ph38.i.i258 ] ; 2 uses
  %i.hb = load ptr, ptr %i.q, align 8, !tbaa !182
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv41.i.i259
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !54 ; 2 uses
  %i.he = and i32 %i.hd, 1
  %.not31.i.i260 = icmp eq i32 %i.he, 0
  %i.hf = select i1 %.not31.i.i260, ptr @.str.57, ptr @.str.143
  %i.hg = ashr i32 %i.hd, 1
  %i.hh = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hb, ptr noundef nonnull @.str.142, ptr noundef nonnull %i.hf, i32 noundef %i.hg) #41 ; 0 uses
  %indvars.iv.next42.i.i261 = add nuw nsw i64 %indvars.iv41.i.i259, 1 ; 2 uses
  %exitcond45.not.i.i262 = icmp eq i64 %indvars.iv.next42.i.i261, %wide.trip.count44.i.i257
  br i1 %exitcond45.not.i.i262, label %._crit_edge39.loopexit.i.i263, label %.lr.ph38.i.i258, !llvm.loop !22

._crit_edge39.loopexit.i.i263:                    ; preds = %.lr.ph38.i.i258
  %.pre.i.i264 = load ptr, ptr %i.q, align 8, !tbaa !182
  br label %._crit_edge39.i.i265

._crit_edge39.i.i265:                             ; preds = %._crit_edge39.loopexit.i.i263, %bb.ai
  %i.hi = phi ptr [ %.pre.i.i264, %._crit_edge39.loopexit.i.i263 ], [ %i.gy, %bb.ai ]
  %i.hj = tail call i64 @fwrite(ptr nonnull @.str.144, i64 2, i64 1, ptr %i.hi) ; 0 uses
  %.pre721.pre = load i32, ptr %i.o, align 4, !tbaa !175
  br label %Exa6_ManAddClause4.exit270

Exa6_ManAddClause4.exit270:                       ; preds = %bb.ae, %bb.ah, %._crit_edge39.i.i265
  %.pre721 = phi i32 [ %.pre721730, %bb.ae ], [ %.pre721730, %bb.ah ], [ %.pre721.pre, %._crit_edge39.i.i265 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #41
  br label %bb.aj

bb.aj:                                            ; preds = %.lr.ph502, %Exa6_ManAddClause4.exit270
  %.pre721731 = phi i32 [ %.pre721730, %.lr.ph502 ], [ %.pre721, %Exa6_ManAddClause4.exit270 ] ; 2 uses
  %i.hk = phi i32 [ %i.gl, %.lr.ph502 ], [ %.pre721, %Exa6_ManAddClause4.exit270 ] ; 2 uses
  %i.hl = phi i32 [ %i.gm, %.lr.ph502 ], [ %.pre721, %Exa6_ManAddClause4.exit270 ] ; 2 uses
  %indvars.iv.next600 = add nuw nsw i64 %indvars.iv599, 1 ; 2 uses
  %i.hm = trunc nuw i64 %indvars.iv.next600 to i32
  %i.hn = icmp sgt i32 %i.hl, %i.hm
  br i1 %i.hn, label %.lr.ph502, label %.loopexit479, !llvm.loop !628

.loopexit479:                                     ; preds = %bb.aj, %.lr.ph505
  %.pre721729 = phi i32 [ %.pre721728, %.lr.ph505 ], [ %.pre721731, %bb.aj ]
  %i.ho = phi i32 [ %i.gg, %.lr.ph505 ], [ %i.hk, %bb.aj ] ; 3 uses
  %indvars.iv.next598 = add nuw nsw i64 %indvars.iv597, 1 ; 2 uses
  %i.hp = sext i32 %i.ho to i64
  %i.hq = icmp slt i64 %indvars.iv.next598, %i.hp
  br i1 %i.hq, label %.lr.ph505, label %.loopexit485, !llvm.loop !629

bb.ak:                                            ; preds = %._crit_edge500
  %i.hr = trunc nsw i64 %indvars.iv650 to i32     ; 2 uses
  %i.hs = sub nsw i32 %i.hr, %i.cx                ; 2 uses
  %i.ht = mul nsw i32 %i.hs, 3                    ; 3 uses
  %i.hu = add nsw i32 %i.ht, 1                    ; 7 uses
  %.pre724 = load i32, ptr %i.j, align 8, !tbaa !174 ; 4 uses
  br i1 %.not241, label %.loopexit489, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.hv = sext i32 %.pre724 to i64                ; 2 uses
  %i.hw = icmp sgt i64 %indvars.iv650, %i.hv
  br i1 %i.hw, label %.preheader483.lr.ph, label %.loopexit489

.preheader483.lr.ph:                              ; preds = %bb.al
  %i.hx = load i32, ptr %i.o, align 4, !tbaa !175 ; 4 uses
  %i.hy = icmp sgt i32 %i.hx, 0
  br i1 %i.hy, label %.preheader483, label %.loopexit489

.preheader483:                                    ; preds = %.preheader483.lr.ph, %._crit_edge511
  %.pre722733 = phi i32 [ %.pre722734, %._crit_edge511 ], [ %i.hx, %.preheader483.lr.ph ] ; 2 uses
  %i.hz = phi i32 [ %i.jp, %._crit_edge511 ], [ %i.hx, %.preheader483.lr.ph ] ; 2 uses
  %i.ia = phi i32 [ %i.jq, %._crit_edge511 ], [ %i.hx, %.preheader483.lr.ph ] ; 3 uses
  %indvars.iv612 = phi i64 [ %indvars.iv.next613, %._crit_edge511 ], [ %i.hv, %.preheader483.lr.ph ] ; 2 uses
  %i.ib = icmp sgt i32 %i.ia, 0
  br i1 %i.ib, label %.lr.ph510, label %._crit_edge511

.lr.ph510:                                        ; preds = %.preheader483
  %i.ic = getelementptr inbounds [512 x i8], ptr %i.p, i64 %indvars.iv612
  br label %bb.am

bb.am:                                            ; preds = %.lr.ph510, %.loopexit477
  %.pre722735 = phi i32 [ %.pre722733, %.lr.ph510 ], [ %.pre722736, %.loopexit477 ] ; 2 uses
  %i.id = phi i32 [ %i.hz, %.lr.ph510 ], [ %i.jm, %.loopexit477 ] ; 2 uses
  %i.ie = phi i32 [ %i.ia, %.lr.ph510 ], [ %i.jm, %.loopexit477 ] ; 2 uses
  %indvars.iv608 = phi i64 [ 0, %.lr.ph510 ], [ %.pre741, %.loopexit477 ] ; 2 uses
  %indvars.iv603 = phi i64 [ 1, %.lr.ph510 ], [ %indvars.iv.next604, %.loopexit477 ] ; 2 uses
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %indvars.iv608 ; 2 uses
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !54
  %.not248 = icmp ne i32 %i.ig, 0
  %.pre741 = add nuw nsw i64 %indvars.iv608, 1    ; 3 uses
  %i.ih = sext i32 %i.ie to i64
  %i.ii = icmp slt i64 %.pre741, %i.ih
  %or.cond862 = select i1 %.not248, i1 %i.ii, i1 false
  br i1 %or.cond862, label %.lr.ph508, label %.loopexit477

.lr.ph508:                                        ; preds = %bb.am, %bb.as
  %.pre722737 = phi i32 [ %.pre722738, %bb.as ], [ %.pre722735, %bb.am ] ; 3 uses
  %i.ij = phi i32 [ %i.ji, %bb.as ], [ %i.id, %bb.am ]
  %i.ik = phi i32 [ %i.jj, %bb.as ], [ %i.ie, %bb.am ]
  %indvars.iv605 = phi i64 [ %indvars.iv.next606, %bb.as ], [ %indvars.iv603, %bb.am ] ; 2 uses
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.ic, i64 %indvars.iv605
  %i.im = load i32, ptr %i.il, align 4, !tbaa !54 ; 3 uses
  %.not249 = icmp eq i32 %i.im, 0
  br i1 %.not249, label %bb.as, label %bb.an

bb.an:                                            ; preds = %.lr.ph508
  %i.in = load i32, ptr %i.if, align 4, !tbaa !54 ; 3 uses
  %i.io = shl nsw i32 %i.in, 1
  %i.ip = or disjoint i32 %i.io, 1
  %i.iq = shl nsw i32 %i.im, 1
  %i.ir = or disjoint i32 %i.iq, 1                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #41
  store i32 %i.ip, ptr %i.f, align 16, !tbaa !54
  store i32 %i.ir, ptr %i.aa, align 4, !tbaa !54
  store i32 0, ptr %i.ab, align 8, !tbaa !54
  store i32 0, ptr %i.ac, align 4, !tbaa !54
  %cond458 = icmp eq i32 %i.in, 0
  br i1 %cond458, label %Exa6_ManAddClause4.exit289, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.is = load i32, ptr %i.s, align 8, !tbaa !180
  %i.it = load i32, ptr %i.t, align 4, !tbaa !181
  %i.iu = add nsw i32 %i.it, %i.is                ; 2 uses
  %.not32.i.i287 = icmp slt i32 %i.in, %i.iu      ; 3 uses
  %spec.select.i288 = zext i1 %.not32.i.i287 to i32
  %.not32.i.1.i286.not = icmp slt i32 %i.im, %i.iu
  br i1 %.not32.i.1.i286.not, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.iv = select i1 %.not32.i.i287, i32 2, i32 1
  %.sroa.sel714 = select i1 %.not32.i.i287, ptr %i.aa, ptr %i.f
  store i32 %i.ir, ptr %.sroa.sel714, align 4, !tbaa !54
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.1.i.1.i272 = phi i32 [ %spec.select.i288, %bb.ao ], [ %i.iv, %bb.ap ] ; 2 uses
  %i.iw = load ptr, ptr %i.q, align 8, !tbaa !182 ; 2 uses
  %.not.i.i273 = icmp eq ptr %i.iw, null
  br i1 %.not.i.i273, label %Exa6_ManAddClause4.exit289, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ix = load i32, ptr %i.r, align 8, !tbaa !183
  %i.iy = add nsw i32 %i.ix, 1
  store i32 %i.iy, ptr %i.r, align 8, !tbaa !183
  %.not.i274 = icmp eq i32 %.1.i.1.i272, 0
  br i1 %.not.i274, label %._crit_edge39.i.i284, label %.lr.ph38.preheader.i.i275

.lr.ph38.preheader.i.i275:                        ; preds = %bb.ar
  %wide.trip.count44.i.i276 = zext nneg i32 %.1.i.1.i272 to i64
  br label %.lr.ph38.i.i277

.lr.ph38.i.i277:                                  ; preds = %.lr.ph38.i.i277, %.lr.ph38.preheader.i.i275
  %indvars.iv41.i.i278 = phi i64 [ 0, %.lr.ph38.preheader.i.i275 ], [ %indvars.iv.next42.i.i280, %.lr.ph38.i.i277 ] ; 2 uses
  %i.iz = load ptr, ptr %i.q, align 8, !tbaa !182
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv41.i.i278
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !54 ; 2 uses
  %i.jc = and i32 %i.jb, 1
  %.not31.i.i279 = icmp eq i32 %i.jc, 0
  %i.jd = select i1 %.not31.i.i279, ptr @.str.57, ptr @.str.143
  %i.je = ashr i32 %i.jb, 1
  %i.jf = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.iz, ptr noundef nonnull @.str.142, ptr noundef nonnull %i.jd, i32 noundef %i.je) #41 ; 0 uses
  %indvars.iv.next42.i.i280 = add nuw nsw i64 %indvars.iv41.i.i278, 1 ; 2 uses
  %exitcond45.not.i.i281 = icmp eq i64 %indvars.iv.next42.i.i280, %wide.trip.count44.i.i276
  br i1 %exitcond45.not.i.i281, label %._crit_edge39.loopexit.i.i282, label %.lr.ph38.i.i277, !llvm.loop !22

._crit_edge39.loopexit.i.i282:                    ; preds = %.lr.ph38.i.i277
  %.pre.i.i283 = load ptr, ptr %i.q, align 8, !tbaa !182
  br label %._crit_edge39.i.i284

._crit_edge39.i.i284:                             ; preds = %._crit_edge39.loopexit.i.i282, %bb.ar
  %i.jg = phi ptr [ %.pre.i.i283, %._crit_edge39.loopexit.i.i282 ], [ %i.iw, %bb.ar ]
  %i.jh = tail call i64 @fwrite(ptr nonnull @.str.144, i64 2, i64 1, ptr %i.jg) ; 0 uses
  %.pre722.pre = load i32, ptr %i.o, align 4, !tbaa !175
  br label %Exa6_ManAddClause4.exit289

Exa6_ManAddClause4.exit289:                       ; preds = %bb.an, %bb.aq, %._crit_edge39.i.i284
  %.pre722 = phi i32 [ %.pre722737, %bb.an ], [ %.pre722737, %bb.aq ], [ %.pre722.pre, %._crit_edge39.i.i284 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #41
  br label %bb.as

bb.as:                                            ; preds = %.lr.ph508, %Exa6_ManAddClause4.exit289
  %.pre722738 = phi i32 [ %.pre722737, %.lr.ph508 ], [ %.pre722, %Exa6_ManAddClause4.exit289 ] ; 2 uses
  %i.ji = phi i32 [ %i.ij, %.lr.ph508 ], [ %.pre722, %Exa6_ManAddClause4.exit289 ] ; 2 uses
  %i.jj = phi i32 [ %i.ik, %.lr.ph508 ], [ %.pre722, %Exa6_ManAddClause4.exit289 ] ; 2 uses
  %indvars.iv.next606 = add nuw nsw i64 %indvars.iv605, 1 ; 2 uses
  %i.jk = trunc nuw i64 %indvars.iv.next606 to i32
  %i.jl = icmp sgt i32 %i.jj, %i.jk
  br i1 %i.jl, label %.lr.ph508, label %.loopexit477, !llvm.loop !630

.loopexit477:                                     ; preds = %bb.as, %bb.am
  %.pre722736 = phi i32 [ %.pre722735, %bb.am ], [ %.pre722738, %bb.as ] ; 2 uses
  %i.jm = phi i32 [ %i.id, %bb.am ], [ %i.ji, %bb.as ] ; 5 uses
  %i.jn = sext i32 %i.jm to i64
  %i.jo = icmp slt i64 %.pre741, %i.jn
  %indvars.iv.next604 = add nuw nsw i64 %indvars.iv603, 1
  br i1 %i.jo, label %bb.am, label %._crit_edge511, !llvm.loop !631

._crit_edge511:                                   ; preds = %.loopexit477, %.preheader483
  %.pre722734 = phi i32 [ %.pre722733, %.preheader483 ], [ %.pre722736, %.loopexit477 ]
  %i.jp = phi i32 [ %i.hz, %.preheader483 ], [ %i.jm, %.loopexit477 ]
  %i.jq = phi i32 [ %i.ia, %.preheader483 ], [ %i.jm, %.loopexit477 ]
  %indvars.iv.next613 = add nsw i64 %indvars.iv612, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next613 to i32
  %exitcond615.not = icmp eq i32 %lftr.wideiv, %i.hr
  br i1 %exitcond615.not, label %.loopexit489.loopexit, label %.preheader483, !llvm.loop !632

.loopexit489.loopexit:                            ; preds = %._crit_edge511
  %.pre723 = load i32, ptr %i.j, align 8, !tbaa !174
  br label %.loopexit489

.loopexit489:                                     ; preds = %.preheader483.lr.ph, %.loopexit489.loopexit, %bb.al, %bb.ak
  %i.jr = phi i32 [ %.pre724, %bb.ak ], [ %.pre723, %.loopexit489.loopexit ], [ %.pre724, %bb.al ], [ %.pre724, %.preheader483.lr.ph ]
  %i.js = sext i32 %i.jr to i64                   ; 2 uses
  %i.jt = icmp sgt i64 %indvars.iv650, %i.js
  br i1 %i.jt, label %.preheader482, label %._crit_edge521

.preheader482:                                    ; preds = %.loopexit489, %bb.bn
  %indvars.iv625 = phi i64 [ %indvars.iv.next626, %bb.bn ], [ %i.js, %.loopexit489 ] ; 3 uses
  %invariant.gep516 = getelementptr [4 x i8], ptr %i.cy, i64 %indvars.iv625
  %i.ju = getelementptr inbounds [512 x i8], ptr %i.p, i64 %indvars.iv625
  br label %bb.at

bb.at:                                            ; preds = %.preheader482, %.loopexit475
  %i.jv = phi i1 [ true, %.preheader482 ], [ false, %.loopexit475 ]
  %indvars.iv622 = phi i64 [ 0, %.preheader482 ], [ 1, %.loopexit475 ] ; 2 uses
  %gep517 = getelementptr [256 x i8], ptr %invariant.gep516, i64 %indvars.iv622 ; 3 uses
  %i.jw = load i32, ptr %gep517, align 4, !tbaa !54
  %.not244 = icmp eq i32 %i.jw, 0
  br i1 %.not244, label %.loopexit475, label %.preheader474

.preheader474:                                    ; preds = %bb.at
  %i.jx = load i32, ptr %i.o, align 4, !tbaa !175 ; 2 uses
  %i.jy = icmp sgt i32 %i.jx, 0
  br i1 %i.jy, label %.lr.ph515, label %.loopexit475

.lr.ph515:                                        ; preds = %.preheader474
  %i.jz = xor i64 %indvars.iv622, 1
  %i.ka = getelementptr inbounds nuw [256 x i8], ptr %i.cy, i64 %i.jz
  br label %bb.au

bb.au:                                            ; preds = %.lr.ph515, %.loopexit473
  %i.kb = phi i32 [ %i.jx, %.lr.ph515 ], [ %i.mp, %.loopexit473 ]
  %indvars.iv619 = phi i64 [ 0, %.lr.ph515 ], [ %indvars.iv.next620, %.loopexit473 ] ; 3 uses
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.ka, i64 %indvars.iv619 ; 2 uses
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !54 ; 3 uses
  %.not246 = icmp eq i32 %i.kd, 0
  br i1 %.not246, label %.loopexit473, label %.preheader472

.preheader472:                                    ; preds = %bb.au
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.ju, i64 %indvars.iv619 ; 2 uses
  %i.ke = load i32, ptr %invariant.gep, align 4, !tbaa !54 ; 3 uses
  %.not247 = icmp eq i32 %i.ke, 0
  br i1 %.not247, label %bb.bd, label %bb.av

bb.av:                                            ; preds = %.preheader472
end_hunk_2
begin_hunk_3_@Exa6_ManGenStart:bb.a
  %i.lf = ashr i32 %i.lc, 1
  %i.lg = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.la, ptr noundef nonnull @.str.142, ptr noundef nonnull %i.le, i32 noundef %i.lf) #41 ; 0 uses
  %indvars.iv.next42.i.i299 = add nuw nsw i64 %indvars.iv41.i.i297, 1 ; 2 uses
  %exitcond45.not.i.i300 = icmp eq i64 %indvars.iv.next42.i.i299, %wide.trip.count44.i.i295
  br i1 %exitcond45.not.i.i300, label %._crit_edge39.loopexit.i.i301, label %.lr.ph38.i.i296, !llvm.loop !22

._crit_edge39.loopexit.i.i301:                    ; preds = %.lr.ph38.i.i296
  %.pre.i.i302 = load ptr, ptr %i.q, align 8, !tbaa !182
  br label %._crit_edge39.i.i303

._crit_edge39.i.i303:                             ; preds = %._crit_edge39.loopexit.i.i301, %bb.bc
  %i.lh = phi ptr [ %.pre.i.i302, %._crit_edge39.loopexit.i.i301 ], [ %i.kx, %bb.bc ]
  %i.li = tail call i64 @fwrite(ptr nonnull @.str.144, i64 2, i64 1, ptr %i.lh) ; 0 uses
  br label %Exa6_ManAddClause4.exit309

Exa6_ManAddClause4.exit309:                       ; preds = %bb.av, %bb.az, %._crit_edge.i.i, %._crit_edge39.i.i303
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #41
  br label %bb.bd

bb.bd:                                            ; preds = %.preheader472, %Exa6_ManAddClause4.exit309
  %gep.1 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 256
  %i.lj = load i32, ptr %gep.1, align 4, !tbaa !54 ; 3 uses
  %.not247.1 = icmp eq i32 %i.lj, 0
  br i1 %.not247.1, label %.loopexit473.loopexit, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.lk = load i32, ptr %gep517, align 4, !tbaa !54 ; 3 uses
  %i.ll = shl nsw i32 %i.lk, 1
  %i.lm = or disjoint i32 %i.ll, 1
  %i.ln = load i32, ptr %i.kc, align 4, !tbaa !54 ; 3 uses
  %i.lo = shl nsw i32 %i.ln, 1
  %i.lp = or disjoint i32 %i.lo, 1                ; 2 uses
  %i.lq = shl nsw i32 %i.lj, 1
  %i.lr = or disjoint i32 %i.lq, 1                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #41
  store i32 %i.lm, ptr %i.e, align 16, !tbaa !54
  store i32 %i.lp, ptr %i.ad, align 4, !tbaa !54
  store i32 %i.lr, ptr %i.ae, align 8, !tbaa !54
  store i32 0, ptr %i.af, align 4, !tbaa !54
  %cond459.1 = icmp eq i32 %i.lk, 0
  br i1 %cond459.1, label %Exa6_ManAddClause4.exit309.1, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ls = load i32, ptr %i.s, align 8, !tbaa !180
  %i.lt = load i32, ptr %i.t, align 4, !tbaa !181
  %i.lu = add nsw i32 %i.lt, %i.ls                ; 4 uses
  %.not32.i.i307.1 = icmp slt i32 %i.lk, %i.lu    ; 3 uses
  %cond463.1 = icmp eq i32 %i.ln, 0
  br i1 %cond463.1, label %Exa6_ManAddClause4.exit309.1, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %spec.select.i308.1 = zext i1 %.not32.i.i307.1 to i32
  %.not32.i.1.i306.not.1 = icmp slt i32 %i.ln, %i.lu
  br i1 %.not32.i.1.i306.not.1, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.lv = select i1 %.not32.i.i307.1, i32 2, i32 1
  %.sroa.sel720 = select i1 %.not32.i.i307.1, ptr %i.ad, ptr %i.e
  store i32 %i.lp, ptr %.sroa.sel720, align 4, !tbaa !54
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.1.i.1.i291.1 = phi i32 [ %spec.select.i308.1, %bb.bg ], [ %i.lv, %bb.bh ] ; 4 uses
  %.not32.i.2.i.not.1 = icmp slt i32 %i.lj, %i.lu
  br i1 %.not32.i.2.i.not.1, label %bb.bj, label %._crit_edge.i.i.1

bb.bj:                                            ; preds = %bb.bi
  %i.lw = add nuw nsw i32 %.1.i.1.i291.1, 1       ; 3 uses
  %i.lx = zext nneg i32 %.1.i.1.i291.1 to i64
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.lx
  store i32 %i.lr, ptr %i.ly, align 4, !tbaa !54
  %.pre.i305.1 = load i32, ptr %i.af, align 4, !tbaa !54 ; 3 uses
  switch i32 %.pre.i305.1, label %bb.bk [
    i32 1, label %Exa6_ManAddClause4.exit309.1
    i32 0, label %._crit_edge.i.i.1
  ]

bb.bk:                                            ; preds = %bb.bj
  %i.lz = shl nsw i32 %i.lu, 1
  %.not32.i.3.i.1 = icmp sgt i32 %.pre.i305.1, %i.lz
  br i1 %.not32.i.3.i.1, label %._crit_edge.i.i.1, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ma = add nuw nsw i32 %.1.i.1.i291.1, 2
  %i.mb = zext nneg i32 %i.lw to i64
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.mb
  store i32 %.pre.i305.1, ptr %i.mc, align 4, !tbaa !54
  br label %._crit_edge.i.i.1

._crit_edge.i.i.1:                                ; preds = %bb.bl, %bb.bk, %bb.bj, %bb.bi
  %.1.i.3.i.1 = phi i32 [ %i.lw, %bb.bj ], [ %i.ma, %bb.bl ], [ %i.lw, %bb.bk ], [ %.1.i.1.i291.1, %bb.bi ] ; 2 uses
  %i.md = load ptr, ptr %i.q, align 8, !tbaa !182 ; 2 uses
  %.not.i.i292.1 = icmp eq ptr %i.md, null
  br i1 %.not.i.i292.1, label %Exa6_ManAddClause4.exit309.1, label %bb.bm

bb.bm:                                            ; preds = %._crit_edge.i.i.1
  %i.me = load i32, ptr %i.r, align 8, !tbaa !183
  %i.mf = add nsw i32 %i.me, 1
  store i32 %i.mf, ptr %i.r, align 8, !tbaa !183
  %.not.i293.1 = icmp eq i32 %.1.i.3.i.1, 0
  br i1 %.not.i293.1, label %._crit_edge39.i.i303.1, label %.lr.ph38.preheader.i.i294.1

.lr.ph38.preheader.i.i294.1:                      ; preds = %bb.bm
  %wide.trip.count44.i.i295.1 = zext nneg i32 %.1.i.3.i.1 to i64
  br label %.lr.ph38.i.i296.1

.lr.ph38.i.i296.1:                                ; preds = %.lr.ph38.i.i296.1, %.lr.ph38.preheader.i.i294.1
  %indvars.iv41.i.i297.1 = phi i64 [ 0, %.lr.ph38.preheader.i.i294.1 ], [ %indvars.iv.next42.i.i299.1, %.lr.ph38.i.i296.1 ] ; 2 uses
  %i.mg = load ptr, ptr %i.q, align 8, !tbaa !182
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv41.i.i297.1
  %i.mi = load i32, ptr %i.mh, align 4, !tbaa !54 ; 2 uses
  %i.mj = and i32 %i.mi, 1
  %.not31.i.i298.1 = icmp eq i32 %i.mj, 0
  %i.mk = select i1 %.not31.i.i298.1, ptr @.str.57, ptr @.str.143
  %i.ml = ashr i32 %i.mi, 1
  %i.mm = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.mg, ptr noundef nonnull @.str.142, ptr noundef nonnull %i.mk, i32 noundef %i.ml) #41 ; 0 uses
  %indvars.iv.next42.i.i299.1 = add nuw nsw i64 %indvars.iv41.i.i297.1, 1 ; 2 uses
  %exitcond45.not.i.i300.1 = icmp eq i64 %indvars.iv.next42.i.i299.1, %wide.trip.count44.i.i295.1
  br i1 %exitcond45.not.i.i300.1, label %._crit_edge39.loopexit.i.i301.1, label %.lr.ph38.i.i296.1, !llvm.loop !22

._crit_edge39.loopexit.i.i301.1:                  ; preds = %.lr.ph38.i.i296.1
  %.pre.i.i302.1 = load ptr, ptr %i.q, align 8, !tbaa !182
  br label %._crit_edge39.i.i303.1

._crit_edge39.i.i303.1:                           ; preds = %._crit_edge39.loopexit.i.i301.1, %bb.bm
  %i.mn = phi ptr [ %.pre.i.i302.1, %._crit_edge39.loopexit.i.i301.1 ], [ %i.md, %bb.bm ]
  %i.mo = tail call i64 @fwrite(ptr nonnull @.str.144, i64 2, i64 1, ptr %i.mn) ; 0 uses
  br label %Exa6_ManAddClause4.exit309.1

Exa6_ManAddClause4.exit309.1:                     ; preds = %._crit_edge39.i.i303.1, %._crit_edge.i.i.1, %bb.bj, %bb.bf, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #41
  br label %.loopexit473.loopexit

.loopexit473.loopexit:                            ; preds = %Exa6_ManAddClause4.exit309.1, %bb.bd
  %.pre725 = load i32, ptr %i.o, align 4, !tbaa !175
  br label %.loopexit473

.loopexit473:                                     ; preds = %.loopexit473.loopexit, %bb.au
  %i.mp = phi i32 [ %.pre725, %.loopexit473.loopexit ], [ %i.kb, %bb.au ] ; 2 uses
  %indvars.iv.next620 = add nuw nsw i64 %indvars.iv619, 1 ; 2 uses
  %i.mq = sext i32 %i.mp to i64
  %i.mr = icmp slt i64 %indvars.iv.next620, %i.mq
  br i1 %i.mr, label %bb.au, label %.loopexit475, !llvm.loop !633

.loopexit475:                                     ; preds = %.loopexit473, %.preheader474, %bb.at
  br i1 %i.jv, label %bb.at, label %bb.bn, !llvm.loop !634

bb.bn:                                            ; preds = %.loopexit475
  %indvars.iv.next626 = add nsw i64 %indvars.iv625, 1 ; 2 uses
  %exitcond629.not = icmp eq i64 %indvars.iv.next626, %indvars.iv650
  br i1 %exitcond629.not, label %._crit_edge521, label %.preheader482, !llvm.loop !635

._crit_edge521:                                   ; preds = %bb.bn, %.loopexit489
  br i1 %.not242, label %.preheader486, label %.preheader488

.preheader488:                                    ; preds = %._crit_edge521
  br i1 %i.ah, label %.lr.ph524.preheader, label %._crit_edge.thread.i310

.lr.ph524.preheader:                              ; preds = %.preheader488
  br i1 %min.iters.check, label %.lr.ph524.preheader878, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph524.preheader
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.hu, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op = add <4 x i32> splat (i32 4), %broadcast.splat
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.ms = add nsw <4 x i32> %broadcast.splat, %vec.ind
  %.reass = add <4 x i32> %vec.ind, %invariant.op
  %i.mt = shl nsw <4 x i32> %i.ms, splat (i32 1)
  %i.mu = shl nsw <4 x i32> %.reass, splat (i32 1)
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %index ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 16
  store <4 x i32> %i.mt, ptr %i.mv, align 16, !tbaa !54
  store <4 x i32> %i.mu, ptr %i.mw, align 16, !tbaa !54
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.mx = icmp eq i64 %index.next, %n.vec
  br i1 %i.mx, label %middle.block, label %vector.body, !llvm.loop !636

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.lr.ph.i315.preheader, label %.lr.ph524.preheader878

.lr.ph524.preheader878:                           ; preds = %.lr.ph524.preheader, %middle.block
  %indvars.iv630.ph = phi i64 [ 0, %.lr.ph524.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph524

.preheader486:                                    ; preds = %._crit_edge521
  %i.my = shl nsw i32 %i.hu, 1                    ; 3 uses
  %i.mz = mul i32 %i.hs, 6                        ; 3 uses
  %i.na = add i32 %i.mz, 4                        ; 11 uses
  %i.nb = add i32 %i.mz, 6                        ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #41
  store i32 %i.my, ptr %i.c, align 16, !tbaa !54
  store i32 %i.na, ptr %i.al, align 4, !tbaa !54
  store i32 %i.nb, ptr %i.am, align 8, !tbaa !54
  store i32 0, ptr %i.an, align 4, !tbaa !54
  %cond864.a = icmp eq i32 %i.hu, 0
  br i1 %cond864.a, label %9, label %5

.lr.ph524:                                        ; preds = %.lr.ph524.preheader878, %.lr.ph524
  %indvars.iv630 = phi i64 [ %indvars.iv.next631, %.lr.ph524 ], [ %indvars.iv630.ph, %.lr.ph524.preheader878 ] ; 3 uses
  %indvars634 = trunc i64 %indvars.iv630 to i32
  %i.nc = add nsw i32 %i.hu, %indvars634
  %i.nd = shl nsw i32 %i.nc, 1
  %indvars.iv.next631 = add nuw nsw i64 %indvars.iv630, 1 ; 2 uses
  %i.ne = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv630
  store i32 %i.nd, ptr %i.ne, align 4, !tbaa !54
  %exitcond636.not = icmp eq i64 %indvars.iv.next631, %wide.trip.count635
  br i1 %exitcond636.not, label %.lr.ph.i315.preheader, label %.lr.ph524, !llvm.loop !637

.lr.ph.i315.preheader:                            ; preds = %.lr.ph524, %middle.block
  br label %.lr.ph.i315

.lr.ph.i315:                                      ; preds = %.lr.ph.i315.preheader, %bb.bq
  %indvars.iv.i317 = phi i64 [ %indvars.iv.next.i320, %bb.bq ], [ 0, %.lr.ph.i315.preheader ] ; 2 uses
  %.035.i318 = phi i32 [ %.1.i319, %bb.bq ], [ 0, %.lr.ph.i315.preheader ] ; 4 uses
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.i317
  %i.ng = load i32, ptr %i.nf, align 4, !tbaa !54 ; 3 uses
  switch i32 %i.ng, label %bb.bo [
    i32 1, label %.lr.ph531.preheader
    i32 0, label %bb.bq
  ]

bb.bo:                                            ; preds = %.lr.ph.i315
  %i.nh = load i32, ptr %i.s, align 8, !tbaa !180
  %i.ni = load i32, ptr %i.t, align 4, !tbaa !181
  %i.nj = add nsw i32 %i.ni, %i.nh
  %i.nk = shl nsw i32 %i.nj, 1
  %.not32.i333 = icmp sgt i32 %i.ng, %i.nk
  br i1 %.not32.i333, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.nl = add nsw i32 %.035.i318, 1
  %i.nm = sext i32 %.035.i318 to i64
  %i.nn = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.nm
  store i32 %i.ng, ptr %i.nn, align 4, !tbaa !54
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo, %.lr.ph.i315
  %.1.i319 = phi i32 [ %.035.i318, %.lr.ph.i315 ], [ %i.nl, %bb.bp ], [ %.035.i318, %bb.bo ] ; 3 uses
  %indvars.iv.next.i320 = add nuw nsw i64 %indvars.iv.i317, 1 ; 2 uses
  %exitcond.not.i321 = icmp eq i64 %indvars.iv.next.i320, %wide.trip.count.i316
  br i1 %exitcond.not.i321, label %._crit_edge.i322, label %.lr.ph.i315, !llvm.loop !21

._crit_edge.i322:                                 ; preds = %bb.bq
  %i.no = load ptr, ptr %i.q, align 8, !tbaa !182 ; 2 uses
  %.not.i323 = icmp eq ptr %i.no, null
  br i1 %.not.i323, label %.lr.ph531.preheader, label %bb.br

._crit_edge.thread.i310:                          ; preds = %.preheader488
  %i.np = load ptr, ptr %i.q, align 8, !tbaa !182 ; 2 uses
  %.not49.i311 = icmp eq ptr %i.np, null
  br i1 %.not49.i311, label %.loopexit487, label %Exa6_ManAddClause.exit334

bb.br:                                            ; preds = %._crit_edge.i322
  %i.nq = load i32, ptr %i.r, align 8, !tbaa !183
  %i.nr = add nsw i32 %i.nq, 1
  store i32 %i.nr, ptr %i.r, align 8, !tbaa !183
  %i.ns = icmp sgt i32 %.1.i319, 0
  br i1 %i.ns, label %.lr.ph38.preheader.i324, label %Exa6_ManAddClause.exit334.thread832

.lr.ph38.preheader.i324:                          ; preds = %bb.br
  %wide.trip.count44.i325 = zext nneg i32 %.1.i319 to i64
  br label %.lr.ph38.i326

.lr.ph38.i326:                                    ; preds = %.lr.ph38.i326, %.lr.ph38.preheader.i324
  %indvars.iv41.i327 = phi i64 [ 0, %.lr.ph38.preheader.i324 ], [ %indvars.iv.next42.i329, %.lr.ph38.i326 ] ; 2 uses
  %i.nt = load ptr, ptr %i.q, align 8, !tbaa !182
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv41.i327
  %i.nv = load i32, ptr %i.nu, align 4, !tbaa !54 ; 2 uses
  %i.nw = and i32 %i.nv, 1
  %.not31.i328 = icmp eq i32 %i.nw, 0
  %i.nx = select i1 %.not31.i328, ptr @.str.57, ptr @.str.143
  %i.ny = ashr i32 %i.nv, 1
  %i.nz = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.nt, ptr noundef nonnull @.str.142, ptr noundef nonnull %i.nx, i32 noundef %i.ny) #41 ; 0 uses
  %indvars.iv.next42.i329 = add nuw nsw i64 %indvars.iv41.i327, 1 ; 2 uses
  %exitcond45.not.i330 = icmp eq i64 %indvars.iv.next42.i329, %wide.trip.count44.i325
  br i1 %exitcond45.not.i330, label %._crit_edge39.loopexit.i331, label %.lr.ph38.i326, !llvm.loop !22

._crit_edge39.loopexit.i331:                      ; preds = %.lr.ph38.i326
  %.pre.i332 = load ptr, ptr %i.q, align 8, !tbaa !182
  br label %Exa6_ManAddClause.exit334.thread832

Exa6_ManAddClause.exit334.thread832:              ; preds = %._crit_edge39.loopexit.i331, %bb.br
  %.ph = phi ptr [ %i.no, %bb.br ], [ %.pre.i332, %._crit_edge39.loopexit.i331 ]
  %i.oa = tail call i64 @fwrite(ptr nonnull @.str.144, i64 2, i64 1, ptr %.ph) ; 0 uses
  br label %.lr.ph531.preheader

.lr.ph531.preheader:                              ; preds = %.lr.ph.i315, %._crit_edge.i322, %Exa6_ManAddClause.exit334.thread832
  br label %.lr.ph531

Exa6_ManAddClause.exit334:                        ; preds = %._crit_edge.thread.i310
  %i.ob = load i32, ptr %i.r, align 8, !tbaa !183
  %i.oc = add nsw i32 %i.ob, 1
  store i32 %i.oc, ptr %i.r, align 8, !tbaa !183
  %i.od = tail call i64 @fwrite(ptr nonnull @.str.144, i64 2, i64 1, ptr nonnull %i.np) ; 0 uses
  br label %.loopexit487

.loopexit481:                                     ; preds = %Exa6_ManAddClause4.exit357, %.lr.ph531
  %indvars.iv.next638 = add nuw nsw i64 %indvars.iv637, 1
  %exitcond648.not = icmp eq i64 %indvars.iv.next645, %i.ap
  br i1 %exitcond648.not, label %.loopexit487, label %.lr.ph531, !llvm.loop !638

.lr.ph531:                                        ; preds = %.lr.ph531.preheader, %.loopexit481
  %indvars.iv644 = phi i64 [ %indvars.iv.next645, %.loopexit481 ], [ 0, %.lr.ph531.preheader ] ; 2 uses
  %indvars.iv637 = phi i64 [ %indvars.iv.next638, %.loopexit481 ], [ 1, %.lr.ph531.preheader ] ; 2 uses
  %indvars.iv.next645 = add nuw nsw i64 %indvars.iv644, 1 ; 3 uses
  %i.oe = icmp samesign ult i64 %indvars.iv.next645, %i.ap
  br i1 %i.oe, label %.lr.ph529, label %.loopexit481

.lr.ph529:                                        ; preds = %.lr.ph531
  %i.of = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv644
  %i.og = load i32, ptr %i.of, align 4, !tbaa !54
  %i.oh = xor i32 %i.og, 1                        ; 4 uses
  br label %bb.bs

bb.bs:                                            ; preds = %.lr.ph529, %Exa6_ManAddClause4.exit357
  %indvars.iv639 = phi i64 [ %indvars.iv637, %.lr.ph529 ], [ %indvars.iv.next640, %Exa6_ManAddClause4.exit357 ] ; 2 uses
  %i.oi = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv639
  %i.oj = load i32, ptr %i.oi, align 4, !tbaa !54
  %i.ok = xor i32 %i.oj, 1                        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #41
  store i32 %i.oh, ptr %i.d, align 16, !tbaa !54
  store i32 %i.ok, ptr %i.ai, align 4, !tbaa !54
  store i32 0, ptr %i.aj, align 8, !tbaa !54
  store i32 0, ptr %i.ak, align 4, !tbaa !54
  switch i32 %i.oh, label %bb.bt [
    i32 1, label %Exa6_ManAddClause4.exit357
    i32 0, label %bb.bu
  ]

bb.bt:                                            ; preds = %bb.bs
  %i.ol = load i32, ptr %i.s, align 8, !tbaa !180
  %i.om = load i32, ptr %i.t, align 4, !tbaa !181
  %i.on = add nsw i32 %i.om, %i.ol
  %i.oo = shl nsw i32 %i.on, 1
  %.not32.i.i355 = icmp sle i32 %i.oh, %i.oo
  %spec.select.i356 = zext i1 %.not32.i.i355 to i32
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %.1.i.i335 = phi i32 [ %i.oh, %bb.bs ], [ %spec.select.i356, %bb.bt ] ; 4 uses
  switch i32 %i.ok, label %bb.bv [
    i32 1, label %Exa6_ManAddClause4.exit357
    i32 0, label %bb.bx
  ]

bb.bv:                                            ; preds = %bb.bu
  %i.op = load i32, ptr %i.s, align 8, !tbaa !180
  %i.oq = load i32, ptr %i.t, align 4, !tbaa !181
  %i.or = add nsw i32 %i.oq, %i.op
  %i.os = shl nsw i32 %i.or, 1
  %.not32.i.1.i354 = icmp sgt i32 %i.ok, %i.os
  br i1 %.not32.i.1.i354, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ot = add nuw nsw i32 %.1.i.i335, 1
  %i.ou = zext nneg i32 %.1.i.i335 to i64
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ou
  store i32 %i.ok, ptr %i.ov, align 4, !tbaa !54
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv, %bb.bu
  %.1.i.1.i336 = phi i32 [ %.1.i.i335, %bb.bu ], [ %i.ot, %bb.bw ], [ %.1.i.i335, %bb.bv ] ; 2 uses
  %i.ow = load ptr, ptr %i.q, align 8, !tbaa !182 ; 2 uses
  %.not.i.i340 = icmp eq ptr %i.ow, null
  br i1 %.not.i.i340, label %Exa6_ManAddClause4.exit357, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ox = load i32, ptr %i.r, align 8, !tbaa !183
  %i.oy = add nsw i32 %i.ox, 1
  store i32 %i.oy, ptr %i.r, align 8, !tbaa !183
  %.not.i341 = icmp eq i32 %.1.i.1.i336, 0
  br i1 %.not.i341, label %._crit_edge39.i.i351, label %.lr.ph38.preheader.i.i342

.lr.ph38.preheader.i.i342:                        ; preds = %bb.by
  %wide.trip.count44.i.i343 = zext nneg i32 %.1.i.1.i336 to i64
  br label %.lr.ph38.i.i344

.lr.ph38.i.i344:                                  ; preds = %.lr.ph38.i.i344, %.lr.ph38.preheader.i.i342
  %indvars.iv41.i.i345 = phi i64 [ 0, %.lr.ph38.preheader.i.i342 ], [ %indvars.iv.next42.i.i347, %.lr.ph38.i.i344 ] ; 2 uses
  %i.oz = load ptr, ptr %i.q, align 8, !tbaa !182
  %i.pa = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv41.i.i345
  %i.pb = load i32, ptr %i.pa, align 4, !tbaa !54 ; 2 uses
  %i.pc = and i32 %i.pb, 1
  %.not31.i.i346 = icmp eq i32 %i.pc, 0
  %i.pd = select i1 %.not31.i.i346, ptr @.str.57, ptr @.str.143
  %i.pe = ashr i32 %i.pb, 1
  %i.pf = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.oz, ptr noundef nonnull @.str.142, ptr noundef nonnull %i.pd, i32 noundef %i.pe) #41 ; 0 uses
  %indvars.iv.next42.i.i347 = add nuw nsw i64 %indvars.iv41.i.i345, 1 ; 2 uses
  %exitcond45.not.i.i348 = icmp eq i64 %indvars.iv.next42.i.i347, %wide.trip.count44.i.i343
  br i1 %exitcond45.not.i.i348, label %._crit_edge39.loopexit.i.i349, label %.lr.ph38.i.i344, !llvm.loop !22

._crit_edge39.loopexit.i.i349:                    ; preds = %.lr.ph38.i.i344
  %.pre.i.i350 = load ptr, ptr %i.q, align 8, !tbaa !182
  br label %._crit_edge39.i.i351

._crit_edge39.i.i351:                             ; preds = %._crit_edge39.loopexit.i.i349, %bb.by
  %i.pg = phi ptr [ %.pre.i.i350, %._crit_edge39.loopexit.i.i349 ], [ %i.ow, %bb.by ]
  %i.ph = tail call i64 @fwrite(ptr nonnull @.str.144, i64 2, i64 1, ptr %i.pg) ; 0 uses
  br label %Exa6_ManAddClause4.exit357

Exa6_ManAddClause4.exit357:                       ; preds = %bb.bs, %bb.bu, %bb.bx, %._crit_edge39.i.i351
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #41
  %indvars.iv.next640 = add nuw nsw i64 %indvars.iv639, 1 ; 2 uses
  %exitcond643.not = icmp eq i64 %indvars.iv.next640, %i.ap
  br i1 %exitcond643.not, label %.loopexit481, label %bb.bs, !llvm.loop !639

5:                                                ; preds = %.preheader486
  %6 = load i32, ptr %i.s, align 8, !tbaa !180
  %7 = load i32, ptr %i.t, align 4, !tbaa !181
  %8 = add nsw i32 %7, %6
  %.not32.i.i380 = icmp slt i32 %i.ht, %8
  %spec.select.i381 = zext i1 %.not32.i.i380 to i32
  br label %9

9:                                                ; preds = %.preheader486, %5
  %.1.i.i358 = phi i32 [ 0, %.preheader486 ], [ %spec.select.i381, %5 ] ; 4 uses
  %cond864 = icmp eq i32 %i.na, 0
  br i1 %cond864, label %bb.cb, label %bb.bz

bb.bz:                                            ; preds = %9
  %i.pi = load i32, ptr %i.s, align 8, !tbaa !180
  %i.pj = load i32, ptr %i.t, align 4, !tbaa !181
  %i.pk = add nsw i32 %i.pj, %i.pi
  %i.pl = shl nsw i32 %i.pk, 1
  %.not32.i.1.i379 = icmp sgt i32 %i.na, %i.pl
  br i1 %.not32.i.1.i379, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %10 = add nuw nsw i32 %.1.i.i358, 1
  %11 = zext nneg i32 %.1.i.i358 to i64
  %12 = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %11
  store i32 %i.na, ptr %12, align 4, !tbaa !54
  br label %bb.cb

bb.cb:                                            ; preds = %9, %bb.ca, %bb.bz
  %.1.i.1.i359 = phi i32 [ %.1.i.i358, %9 ], [ %10, %bb.ca ], [ %.1.i.i358, %bb.bz ] ; 5 uses
  %cond865 = icmp eq i32 %i.nb, 0
  br i1 %cond865, label %._crit_edge.i.i361, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.pm = load i32, ptr %i.s, align 8, !tbaa !180
  %i.pn = load i32, ptr %i.t, align 4, !tbaa !181
  %i.po = add nsw i32 %i.pn, %i.pm
  %i.pp = shl nsw i32 %i.po, 1                    ; 2 uses
  %.not32.i.2.i377 = icmp sgt i32 %i.nb, %i.pp
  br i1 %.not32.i.2.i377, label %._crit_edge.i.i361, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.pq = add nuw nsw i32 %.1.i.1.i359, 1         ; 3 uses
  %i.pr = zext nneg i32 %.1.i.1.i359 to i64
  %i.ps = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.pr
  store i32 %i.nb, ptr %i.ps, align 4, !tbaa !54
  %.pre.i378 = load i32, ptr %i.an, align 4, !tbaa !54 ; 3 uses
  switch i32 %.pre.i378, label %bb.ce [
    i32 1, label %Exa6_ManAddClause4.exit382
    i32 0, label %._crit_edge.i.i361
  ]

bb.ce:                                            ; preds = %bb.cd
  %.not32.i.3.i376 = icmp sgt i32 %.pre.i378, %i.pp
  br i1 %.not32.i.3.i376, label %._crit_edge.i.i361, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.pt = add nuw nsw i32 %.1.i.1.i359, 2
  %i.pu = zext nneg i32 %i.pq to i64
  %i.pv = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.pu
  store i32 %.pre.i378, ptr %i.pv, align 4, !tbaa !54
  br label %._crit_edge.i.i361

._crit_edge.i.i361:                               ; preds = %bb.cb, %bb.cc, %bb.cf, %bb.ce, %bb.cd
  %.1.i.3.i362 = phi i32 [ %i.pq, %bb.cd ], [ %i.pt, %bb.cf ], [ %i.pq, %bb.ce ], [ %.1.i.1.i359, %bb.cb ], [ %.1.i.1.i359, %bb.cc ] ; 2 uses
  %i.pw = load ptr, ptr %i.q, align 8, !tbaa !182 ; 2 uses
  %.not.i.i363 = icmp eq ptr %i.pw, null
  br i1 %.not.i.i363, label %Exa6_ManAddClause4.exit382, label %bb.cg

bb.cg:                                            ; preds = %._crit_edge.i.i361
  %i.px = load i32, ptr %i.r, align 8, !tbaa !183
  %i.py = add nsw i32 %i.px, 1
  store i32 %i.py, ptr %i.r, align 8, !tbaa !183
  %.not.i364 = icmp eq i32 %.1.i.3.i362, 0
  br i1 %.not.i364, label %._crit_edge39.i.i374, label %.lr.ph38.preheader.i.i365

.lr.ph38.preheader.i.i365:                        ; preds = %bb.cg
  %wide.trip.count44.i.i366 = zext nneg i32 %.1.i.3.i362 to i64
  br label %.lr.ph38.i.i367

.lr.ph38.i.i367:                                  ; preds = %.lr.ph38.i.i367, %.lr.ph38.preheader.i.i365
  %indvars.iv41.i.i368 = phi i64 [ 0, %.lr.ph38.preheader.i.i365 ], [ %indvars.iv.next42.i.i370, %.lr.ph38.i.i367 ] ; 2 uses
  %i.pz = load ptr, ptr %i.q, align 8, !tbaa !182
  %i.qa = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv41.i.i368
  %i.qb = load i32, ptr %i.qa, align 4, !tbaa !54 ; 2 uses
  %i.qc = and i32 %i.qb, 1
  %.not31.i.i369 = icmp eq i32 %i.qc, 0
  %i.qd = select i1 %.not31.i.i369, ptr @.str.57, ptr @.str.143
  %i.qe = ashr i32 %i.qb, 1
  %i.qf = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.pz, ptr noundef nonnull @.str.142, ptr noundef nonnull %i.qd, i32 noundef %i.qe) #41 ; 0 uses
  %indvars.iv.next42.i.i370 = add nuw nsw i64 %indvars.iv41.i.i368, 1 ; 2 uses
  %exitcond45.not.i.i371 = icmp eq i64 %indvars.iv.next42.i.i370, %wide.trip.count44.i.i366
  br i1 %exitcond45.not.i.i371, label %._crit_edge39.loopexit.i.i372, label %.lr.ph38.i.i367, !llvm.loop !22

._crit_edge39.loopexit.i.i372:                    ; preds = %.lr.ph38.i.i367
  %.pre.i.i373 = load ptr, ptr %i.q, align 8, !tbaa !182
  br label %._crit_edge39.i.i374

._crit_edge39.i.i374:                             ; preds = %._crit_edge39.loopexit.i.i372, %bb.cg
  %i.qg = phi ptr [ %.pre.i.i373, %._crit_edge39.loopexit.i.i372 ], [ %i.pw, %bb.cg ]
  %i.qh = tail call i64 @fwrite(ptr nonnull @.str.144, i64 2, i64 1, ptr %i.qg) ; 0 uses
  br label %Exa6_ManAddClause4.exit382

Exa6_ManAddClause4.exit382:                       ; preds = %bb.cd, %._crit_edge.i.i361, %._crit_edge39.i.i374
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #41
  %i.qi = or disjoint i32 %i.my, 1                ; 5 uses
  %i.qj = or disjoint i32 %i.nb, 1                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #41
  store i32 %i.qi, ptr %i.c, align 16, !tbaa !54
  store i32 %i.na, ptr %i.al, align 4, !tbaa !54
  store i32 %i.qj, ptr %i.am, align 8, !tbaa !54
  store i32 0, ptr %i.an, align 4, !tbaa !54
  %cond866.a = icmp eq i32 %i.hu, 0
  br i1 %cond866.a, label %Exa6_ManAddClause4.exit382.1, label %13

13:                                               ; preds = %Exa6_ManAddClause4.exit382
  %14 = load i32, ptr %i.s, align 8, !tbaa !180
  %15 = load i32, ptr %i.t, align 4, !tbaa !181
  %16 = add nsw i32 %15, %14
  %.not32.i.i380.1 = icmp slt i32 %i.hu, %16      ; 3 uses
  %spec.select.i381.1 = zext i1 %.not32.i.i380.1 to i32 ; 2 uses
  %cond866 = icmp eq i32 %i.na, 0
  br i1 %cond866, label %bb.cj, label %bb.ch

bb.ch:                                            ; preds = %13
  %i.qk = load i32, ptr %i.s, align 8, !tbaa !180
  %i.ql = load i32, ptr %i.t, align 4, !tbaa !181
  %i.qm = add nsw i32 %i.ql, %i.qk
  %i.qn = shl nsw i32 %i.qm, 1
  %.not32.i.1.i379.1 = icmp sgt i32 %i.na, %i.qn
  br i1 %.not32.i.1.i379.1, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.qo = select i1 %.not32.i.i380.1, i32 2, i32 1
  %.sroa.sel933.idx = select i1 %.not32.i.i380.1, i64 4, i64 0
  %.sroa.sel933 = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sroa.sel933.idx
  store i32 %i.na, ptr %.sroa.sel933, align 4, !tbaa !54
  br label %bb.cj

bb.cj:                                            ; preds = %13, %bb.ci, %bb.ch
  %.1.i.1.i359.1 = phi i32 [ %spec.select.i381.1, %13 ], [ %i.qo, %bb.ci ], [ %spec.select.i381.1, %bb.ch ] ; 4 uses
  %cond857 = icmp eq i32 %i.nb, 0
  br i1 %cond857, label %Exa6_ManAddClause4.exit382.1, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.qp = load i32, ptr %i.s, align 8, !tbaa !180
  %i.qq = load i32, ptr %i.t, align 4, !tbaa !181
  %i.qr = add nsw i32 %i.qq, %i.qp
  %i.qs = shl nsw i32 %i.qr, 1                    ; 2 uses
  %.not32.i.2.i377.1.not = icmp slt i32 %i.nb, %i.qs
  br i1 %.not32.i.2.i377.1.not, label %bb.cl, label %._crit_edge.i.i361.1

bb.cl:                                            ; preds = %bb.ck
  %i.qt = add nuw nsw i32 %.1.i.1.i359.1, 1       ; 3 uses
  %i.qu = zext nneg i32 %.1.i.1.i359.1 to i64
  %i.qv = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.qu
  store i32 %i.qj, ptr %i.qv, align 4, !tbaa !54
  %.pre.i378.1 = load i32, ptr %i.an, align 4, !tbaa !54 ; 3 uses
  switch i32 %.pre.i378.1, label %bb.cm [
    i32 1, label %Exa6_ManAddClause4.exit382.1
    i32 0, label %._crit_edge.i.i361.1
  ]

bb.cm:                                            ; preds = %bb.cl
  %.not32.i.3.i376.1 = icmp sgt i32 %.pre.i378.1, %i.qs
  br i1 %.not32.i.3.i376.1, label %._crit_edge.i.i361.1, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.qw = add nuw nsw i32 %.1.i.1.i359.1, 2
  %i.qx = zext nneg i32 %i.qt to i64
  %i.qy = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.qx
  store i32 %.pre.i378.1, ptr %i.qy, align 4, !tbaa !54
  br label %._crit_edge.i.i361.1

._crit_edge.i.i361.1:                             ; preds = %bb.cn, %bb.cm, %bb.cl, %bb.ck
  %.1.i.3.i362.1 = phi i32 [ %i.qt, %bb.cl ], [ %i.qw, %bb.cn ], [ %i.qt, %bb.cm ], [ %.1.i.1.i359.1, %bb.ck ] ; 2 uses
  %i.qz = load ptr, ptr %i.q, align 8, !tbaa !182 ; 2 uses
  %.not.i.i363.1 = icmp eq ptr %i.qz, null
  br i1 %.not.i.i363.1, label %Exa6_ManAddClause4.exit382.1, label %bb.co

bb.co:                                            ; preds = %._crit_edge.i.i361.1
  %i.ra = load i32, ptr %i.r, align 8, !tbaa !183
  %i.rb = add nsw i32 %i.ra, 1
  store i32 %i.rb, ptr %i.r, align 8, !tbaa !183
  %.not.i364.1 = icmp eq i32 %.1.i.3.i362.1, 0
  br i1 %.not.i364.1, label %._crit_edge39.i.i374.1, label %.lr.ph38.preheader.i.i365.1

.lr.ph38.preheader.i.i365.1:                      ; preds = %bb.co
  %wide.trip.count44.i.i366.1 = zext nneg i32 %.1.i.3.i362.1 to i64
  br label %.lr.ph38.i.i367.1

.lr.ph38.i.i367.1:                                ; preds = %.lr.ph38.i.i367.1, %.lr.ph38.preheader.i.i365.1
  %indvars.iv41.i.i368.1 = phi i64 [ 0, %.lr.ph38.preheader.i.i365.1 ], [ %indvars.iv.next42.i.i370.1, %.lr.ph38.i.i367.1 ] ; 2 uses
  %i.rc = load ptr, ptr %i.q, align 8, !tbaa !182
  %i.rd = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv41.i.i368.1
  %i.re = load i32, ptr %i.rd, align 4, !tbaa !54 ; 2 uses
  %i.rf = and i32 %i.re, 1
  %.not31.i.i369.1 = icmp eq i32 %i.rf, 0
  %i.rg = select i1 %.not31.i.i369.1, ptr @.str.57, ptr @.str.143
  %i.rh = ashr i32 %i.re, 1
  %i.ri = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.rc, ptr noundef nonnull @.str.142, ptr noundef nonnull %i.rg, i32 noundef %i.rh) #41 ; 0 uses
  %indvars.iv.next42.i.i370.1 = add nuw nsw i64 %indvars.iv41.i.i368.1, 1 ; 2 uses
  %exitcond45.not.i.i371.1 = icmp eq i64 %indvars.iv.next42.i.i370.1, %wide.trip.count44.i.i366.1
  br i1 %exitcond45.not.i.i371.1, label %._crit_edge39.loopexit.i.i372.1, label %.lr.ph38.i.i367.1, !llvm.loop !22

._crit_edge39.loopexit.i.i372.1:                  ; preds = %.lr.ph38.i.i367.1
  %.pre.i.i373.1 = load ptr, ptr %i.q, align 8, !tbaa !182
  br label %._crit_edge39.i.i374.1

._crit_edge39.i.i374.1:                           ; preds = %._crit_edge39.loopexit.i.i372.1, %bb.co
  %i.rj = phi ptr [ %.pre.i.i373.1, %._crit_edge39.loopexit.i.i372.1 ], [ %i.qz, %bb.co ]
  %i.rk = tail call i64 @fwrite(ptr nonnull @.str.144, i64 2, i64 1, ptr %i.rj) ; 0 uses
  br label %Exa6_ManAddClause4.exit382.1

Exa6_ManAddClause4.exit382.1:                     ; preds = %bb.cj, %Exa6_ManAddClause4.exit382, %._crit_edge39.i.i374.1, %._crit_edge.i.i361.1, %bb.cl
  %17 = phi i32 [ %i.qj, %Exa6_ManAddClause4.exit382 ], [ %i.qj, %._crit_edge39.i.i374.1 ], [ %i.qj, %._crit_edge.i.i361.1 ], [ %i.qj, %bb.cl ], [ 1, %bb.cj ] ; 3 uses
  %18 = phi i32 [ 1, %Exa6_ManAddClause4.exit382 ], [ %i.qi, %._crit_edge39.i.i374.1 ], [ %i.qi, %._crit_edge.i.i361.1 ], [ %i.qi, %bb.cl ], [ %i.qi, %bb.cj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #41
  %i.rl = or disjoint i32 %i.na, 1                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #41
  store i32 %i.my, ptr %i.c, align 16, !tbaa !54
  store i32 %i.rl, ptr %i.al, align 4, !tbaa !54
  store i32 %17, ptr %i.am, align 8, !tbaa !54
  store i32 0, ptr %i.an, align 4, !tbaa !54
  %cond858.a = icmp eq i32 %i.hu, 0
  br i1 %cond858.a, label %23, label %19

19:                                               ; preds = %Exa6_ManAddClause4.exit382.1
  %20 = load i32, ptr %i.s, align 8, !tbaa !180
  %21 = load i32, ptr %i.t, align 4, !tbaa !181
  %22 = add nsw i32 %21, %20
  %.not32.i.i380.2 = icmp slt i32 %i.ht, %22
  %spec.select.i381.2 = zext i1 %.not32.i.i380.2 to i32
  br label %23

23:                                               ; preds = %Exa6_ManAddClause4.exit382.1, %19
  %.1.i.i358.2 = phi i32 [ 0, %Exa6_ManAddClause4.exit382.1 ], [ %spec.select.i381.2, %19 ] ; 3 uses
  %cond858 = icmp eq i32 %i.na, 0
  br i1 %cond858, label %Exa6_ManAddClause4.exit382.2, label %bb.cp

bb.cp:                                            ; preds = %23
  %i.rm = load i32, ptr %i.s, align 8, !tbaa !180
  %i.rn = load i32, ptr %i.t, align 4, !tbaa !181
  %i.ro = add nsw i32 %i.rn, %i.rm
  %i.rp = shl nsw i32 %i.ro, 1
  %.not32.i.1.i379.2.not = icmp slt i32 %i.na, %i.rp
  br i1 %.not32.i.1.i379.2.not, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %24 = add nuw nsw i32 %.1.i.i358.2, 1
  %25 = zext nneg i32 %.1.i.i358.2 to i64
  %26 = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %25
  store i32 %i.rl, ptr %26, align 4, !tbaa !54
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %.1.i.1.i359.2 = phi i32 [ %.1.i.i358.2, %bb.cp ], [ %24, %bb.cq ] ; 4 uses
  %cond859 = icmp eq i32 %17, 1
  br i1 %cond859, label %Exa6_ManAddClause4.exit382.2, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.rq = load i32, ptr %i.s, align 8, !tbaa !180
  %i.rr = load i32, ptr %i.t, align 4, !tbaa !181
  %i.rs = add nsw i32 %i.rr, %i.rq
  %i.rt = shl nsw i32 %i.rs, 1                    ; 2 uses
  %.not32.i.2.i377.2.not = icmp slt i32 %i.nb, %i.rt
  br i1 %.not32.i.2.i377.2.not, label %bb.ct, label %._crit_edge.i.i361.2

bb.ct:                                            ; preds = %bb.cs
  %i.ru = add nuw nsw i32 %.1.i.1.i359.2, 1       ; 3 uses
  %i.rv = zext nneg i32 %.1.i.1.i359.2 to i64
  %i.rw = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.rv
  store i32 %17, ptr %i.rw, align 4, !tbaa !54
  %.pre.i378.2 = load i32, ptr %i.an, align 4, !tbaa !54 ; 3 uses
  switch i32 %.pre.i378.2, label %bb.cu [
    i32 1, label %Exa6_ManAddClause4.exit382.2
    i32 0, label %._crit_edge.i.i361.2
  ]

bb.cu:                                            ; preds = %bb.ct
  %.not32.i.3.i376.2 = icmp sgt i32 %.pre.i378.2, %i.rt
  br i1 %.not32.i.3.i376.2, label %._crit_edge.i.i361.2, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.rx = add nuw nsw i32 %.1.i.1.i359.2, 2
  %i.ry = zext nneg i32 %i.ru to i64
  %i.rz = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ry
  store i32 %.pre.i378.2, ptr %i.rz, align 4, !tbaa !54
  br label %._crit_edge.i.i361.2

._crit_edge.i.i361.2:                             ; preds = %bb.cv, %bb.cu, %bb.ct, %bb.cs
  %.1.i.3.i362.2 = phi i32 [ %i.ru, %bb.ct ], [ %i.rx, %bb.cv ], [ %i.ru, %bb.cu ], [ %.1.i.1.i359.2, %bb.cs ] ; 2 uses
  %i.sa = load ptr, ptr %i.q, align 8, !tbaa !182 ; 2 uses
  %.not.i.i363.2 = icmp eq ptr %i.sa, null
  br i1 %.not.i.i363.2, label %Exa6_ManAddClause4.exit382.2, label %bb.cw

bb.cw:                                            ; preds = %._crit_edge.i.i361.2
  %i.sb = load i32, ptr %i.r, align 8, !tbaa !183
  %i.sc = add nsw i32 %i.sb, 1
  store i32 %i.sc, ptr %i.r, align 8, !tbaa !183
  %.not.i364.2 = icmp eq i32 %.1.i.3.i362.2, 0
  br i1 %.not.i364.2, label %._crit_edge39.i.i374.2, label %.lr.ph38.preheader.i.i365.2

.lr.ph38.preheader.i.i365.2:                      ; preds = %bb.cw
  %wide.trip.count44.i.i366.2 = zext nneg i32 %.1.i.3.i362.2 to i64
  br label %.lr.ph38.i.i367.2

.lr.ph38.i.i367.2:                                ; preds = %.lr.ph38.i.i367.2, %.lr.ph38.preheader.i.i365.2
  %indvars.iv41.i.i368.2 = phi i64 [ 0, %.lr.ph38.preheader.i.i365.2 ], [ %indvars.iv.next42.i.i370.2, %.lr.ph38.i.i367.2 ] ; 2 uses
  %i.sd = load ptr, ptr %i.q, align 8, !tbaa !182
  %i.se = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv41.i.i368.2
  %i.sf = load i32, ptr %i.se, align 4, !tbaa !54 ; 2 uses
  %i.sg = and i32 %i.sf, 1
  %.not31.i.i369.2 = icmp eq i32 %i.sg, 0
  %i.sh = select i1 %.not31.i.i369.2, ptr @.str.57, ptr @.str.143
  %i.si = ashr i32 %i.sf, 1
  %i.sj = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.sd, ptr noundef nonnull @.str.142, ptr noundef nonnull %i.sh, i32 noundef %i.si) #41 ; 0 uses
  %indvars.iv.next42.i.i370.2 = add nuw nsw i64 %indvars.iv41.i.i368.2, 1 ; 2 uses
  %exitcond45.not.i.i371.2 = icmp eq i64 %indvars.iv.next42.i.i370.2, %wide.trip.count44.i.i366.2
  br i1 %exitcond45.not.i.i371.2, label %._crit_edge39.loopexit.i.i372.2, label %.lr.ph38.i.i367.2, !llvm.loop !22

._crit_edge39.loopexit.i.i372.2:                  ; preds = %.lr.ph38.i.i367.2
  %.pre.i.i373.2 = load ptr, ptr %i.q, align 8, !tbaa !182
  br label %._crit_edge39.i.i374.2

._crit_edge39.i.i374.2:                           ; preds = %._crit_edge39.loopexit.i.i372.2, %bb.cw
  %i.sk = phi ptr [ %.pre.i.i373.2, %._crit_edge39.loopexit.i.i372.2 ], [ %i.sa, %bb.cw ]
  %i.sl = tail call i64 @fwrite(ptr nonnull @.str.144, i64 2, i64 1, ptr %i.sk) ; 0 uses
  br label %Exa6_ManAddClause4.exit382.2

Exa6_ManAddClause4.exit382.2:                     ; preds = %bb.cr, %23, %._crit_edge39.i.i374.2, %._crit_edge.i.i361.2, %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #41
  br i1 %.not243, label %.loopexit487, label %bb.cx

bb.cx:                                            ; preds = %Exa6_ManAddClause4.exit382.2
  %i.sm = add i32 %i.mz, 5
  tail call fastcc void @Exa6_ManAddClause4(ptr noundef nonnull %0, i32 noundef %18, i32 noundef %i.sm, i32 noundef %i.nb, i32 noundef 0)
  br label %.loopexit487

.loopexit487:                                     ; preds = %.loopexit481, %._crit_edge.thread.i310, %Exa6_ManAddClause.exit334, %Exa6_ManAddClause4.exit382.2, %bb.cx
  %indvars.iv.next651 = add nsw i64 %indvars.iv650, 1 ; 2 uses
  %i.sn = load i32, ptr %i.j, align 8, !tbaa !174 ; 3 uses
  %i.so = load i32, ptr %i.l, align 4, !tbaa !172 ; 2 uses
  %i.sp = add nsw i32 %i.so, %i.sn                ; 2 uses
  %i.sq = sext i32 %i.sp to i64
  %i.sr = icmp slt i64 %indvars.iv.next651, %i.sq
  br i1 %i.sr, label %bb.k, label %.preheader471, !llvm.loop !640

.preheader470:                                    ; preds = %.preheader470.preheader, %.loopexit469
  %indvar = phi i32 [ 0, %.preheader470.preheader ], [ %indvar.next, %.loopexit469 ] ; 3 uses
  %i.ss = phi i32 [ %i.aq, %.preheader470.preheader ], [ %i.wb, %.loopexit469 ] ; 2 uses
  %i.st = phi i32 [ %i.ar, %.preheader470.preheader ], [ %i.wc, %.loopexit469 ] ; 2 uses
  %indvars.iv675 = phi i64 [ %i.bc, %.preheader470.preheader ], [ %indvars.iv.next676, %.loopexit469 ] ; 2 uses
  %indvars.iv653.in = phi i64 [ %i.bc, %.preheader470.preheader ], [ %indvars.iv653, %.loopexit469 ] ; 2 uses
  %indvars.iv653 = add nsw i64 %indvars.iv653.in, 1 ; 5 uses
  %i.su = load i32, ptr %i.at, align 4, !tbaa !175 ; 4 uses
  %indvars.iv.next676 = add nsw i64 %indvars.iv675, 1 ; 3 uses
  %i.sv = sext i32 %i.su to i64
  %i.sw = icmp slt i64 %indvars.iv.next676, %i.sv
  %invariant.gep549 = getelementptr [4 x i8], ptr %i.au, i64 %indvars.iv675 ; 4 uses
  br i1 %i.sw, label %.preheader467.us.preheader.preheader, label %.loopexit469

.preheader467.us.preheader.preheader:             ; preds = %.preheader470
  %i.sx = add i32 %i.ar, %indvar
  %i.sy = sub i32 %i.bd, %indvar
  %i.sz = add i32 %i.su, %i.sy                    ; 4 uses
  %reass.sub = sub i32 %i.su, %i.sx
  %i.ta = add i32 %reass.sub, -2                  ; 2 uses
  %xtraiter888 = and i32 %i.sz, 1
  %i.tb = icmp eq i32 %i.ta, 0
  br i1 %i.tb, label %.preheader467.us.preheader.epil.preheader, label %.preheader467.us.preheader.preheader.new

.preheader467.us.preheader.preheader.new:         ; preds = %.preheader467.us.preheader.preheader
  %unroll_iter892 = and i32 %i.sz, -2
  br label %.preheader467.us.preheader

.preheader467.us.preheader:                       ; preds = %bb.da, %.preheader467.us.preheader.preheader.new
  %indvars.iv655 = phi i64 [ %indvars.iv653, %.preheader467.us.preheader.preheader.new ], [ %indvars.iv.next656.1899, %bb.da ] ; 3 uses
  %.4538.us = phi i32 [ 0, %.preheader467.us.preheader.preheader.new ], [ %.5.us.1898, %bb.da ] ; 3 uses
  %niter893 = phi i32 [ 0, %.preheader467.us.preheader.preheader.new ], [ %niter893.next.1, %bb.da ]
  %gep546.us = getelementptr [512 x i8], ptr %invariant.gep549, i64 %indvars.iv655
  %i.tc = load i32, ptr %gep546.us, align 4, !tbaa !54 ; 2 uses
  %.not238.us = icmp eq i32 %i.tc, 0
  br i1 %.not238.us, label %.preheader467.us.preheader.1, label %bb.cy

bb.cy:                                            ; preds = %.preheader467.us.preheader
  %i.td = shl nsw i32 %i.tc, 1
  %i.te = add nsw i32 %.4538.us, 1
  %i.tf = sext i32 %.4538.us to i64
  %i.tg = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.tf
  store i32 %i.td, ptr %i.tg, align 4, !tbaa !54
  br label %.preheader467.us.preheader.1

.preheader467.us.preheader.1:                     ; preds = %bb.cy, %.preheader467.us.preheader
  %.5.us = phi i32 [ %i.te, %bb.cy ], [ %.4538.us, %.preheader467.us.preheader ] ; 3 uses
  %i.th = getelementptr [512 x i8], ptr %invariant.gep549, i64 %indvars.iv655
  %gep546.us.1896 = getelementptr i8, ptr %i.th, i64 512
  %i.ti = load i32, ptr %gep546.us.1896, align 4, !tbaa !54 ; 2 uses
  %.not238.us.1897 = icmp eq i32 %i.ti, 0
  br i1 %.not238.us.1897, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %.preheader467.us.preheader.1
  %i.tj = shl nsw i32 %i.ti, 1
  %i.tk = add nsw i32 %.5.us, 1
  %i.tl = sext i32 %.5.us to i64
  %i.tm = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.tl
  store i32 %i.tj, ptr %i.tm, align 4, !tbaa !54
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %.preheader467.us.preheader.1
  %.5.us.1898 = phi i32 [ %i.tk, %bb.cz ], [ %.5.us, %.preheader467.us.preheader.1 ] ; 3 uses
  %indvars.iv.next656.1899 = add nsw i64 %indvars.iv655, 2 ; 2 uses
  %niter893.next.1 = add i32 %niter893, 2         ; 2 uses
  %niter893.ncmp.1 = icmp eq i32 %niter893.next.1, %unroll_iter892
  br i1 %niter893.ncmp.1, label %._crit_edge541.us.unr-lcssa, label %.preheader467.us.preheader, !llvm.loop !622

._crit_edge541.us.unr-lcssa:                      ; preds = %bb.da
  %lcmp.mod889.not = icmp eq i32 %xtraiter888, 0
  br i1 %lcmp.mod889.not, label %._crit_edge541.us, label %.preheader467.us.preheader.epil.preheader

.preheader467.us.preheader.epil.preheader:        ; preds = %._crit_edge541.us.unr-lcssa, %.preheader467.us.preheader.preheader
  %indvars.iv655.epil.init = phi i64 [ %indvars.iv653, %.preheader467.us.preheader.preheader ], [ %indvars.iv.next656.1899, %._crit_edge541.us.unr-lcssa ]
  %.4538.us.epil.init = phi i32 [ 0, %.preheader467.us.preheader.preheader ], [ %.5.us.1898, %._crit_edge541.us.unr-lcssa ] ; 3 uses
  %lcmp.mod891 = trunc i32 %i.sz to i1
  tail call void @llvm.assume(i1 %lcmp.mod891)
  %gep546.us.epil = getelementptr [512 x i8], ptr %invariant.gep549, i64 %indvars.iv655.epil.init
  %i.tn = load i32, ptr %gep546.us.epil, align 4, !tbaa !54 ; 2 uses
  %.not238.us.epil = icmp eq i32 %i.tn, 0
  br i1 %.not238.us.epil, label %._crit_edge541.us, label %bb.db

bb.db:                                            ; preds = %.preheader467.us.preheader.epil.preheader
  %i.to = shl nsw i32 %i.tn, 1
  %i.tp = add nsw i32 %.4538.us.epil.init, 1
  %i.tq = sext i32 %.4538.us.epil.init to i64
  %i.tr = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.tq
  store i32 %i.to, ptr %i.tr, align 4, !tbaa !54
  br label %._crit_edge541.us

._crit_edge541.us:                                ; preds = %.preheader467.us.preheader.epil.preheader, %bb.db, %._crit_edge541.us.unr-lcssa
  %.5.us.lcssa = phi i32 [ %.5.us.1898, %._crit_edge541.us.unr-lcssa ], [ %i.tp, %bb.db ], [ %.4538.us.epil.init, %.preheader467.us.preheader.epil.preheader ] ; 4 uses
  %gep550.us.1 = getelementptr i8, ptr %invariant.gep549, i64 256 ; 3 uses
  %xtraiter901 = and i32 %i.sz, 1
  %lcmp.mod902.not = icmp eq i32 %xtraiter901, 0
  br i1 %lcmp.mod902.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %._crit_edge541.us
  %gep546.us.1.prol = getelementptr [512 x i8], ptr %gep550.us.1, i64 %indvars.iv653
  %i.ts = load i32, ptr %gep546.us.1.prol, align 4, !tbaa !54 ; 2 uses
  %.not238.us.1.prol = icmp eq i32 %i.ts, 0
  br i1 %.not238.us.1.prol, label %.prol.loopexit.unr-lcssa, label %bb.dc

bb.dc:                                            ; preds = %.prol.preheader
  %i.tt = shl nsw i32 %i.ts, 1
  %i.tu = add nsw i32 %.5.us.lcssa, 1
  %i.tv = sext i32 %.5.us.lcssa to i64
  %i.tw = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.tv
  store i32 %i.tt, ptr %i.tw, align 4, !tbaa !54
  br label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %bb.dc, %.prol.preheader
  %.5.us.1.prol = phi i32 [ %i.tu, %bb.dc ], [ %.5.us.lcssa, %.prol.preheader ] ; 2 uses
  %indvars.iv.next656.1.prol = add nsw i64 %indvars.iv653.in, 2
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %._crit_edge541.us
  %.5.us.1.lcssa.unr = phi i32 [ poison, %._crit_edge541.us ], [ %.5.us.1.prol, %.prol.loopexit.unr-lcssa ]
  %indvars.iv655.1.unr = phi i64 [ %indvars.iv653, %._crit_edge541.us ], [ %indvars.iv.next656.1.prol, %.prol.loopexit.unr-lcssa ]
  %.4538.us.1.unr = phi i32 [ %.5.us.lcssa, %._crit_edge541.us ], [ %.5.us.1.prol, %.prol.loopexit.unr-lcssa ]
  %i.tx = icmp eq i32 %i.ta, 0
  br i1 %i.tx, label %.preheader468, label %._crit_edge541.us.new

._crit_edge541.us.new:                            ; preds = %.prol.loopexit, %bb.dg
  %indvars.iv655.1 = phi i64 [ %indvars.iv.next656.1.1, %bb.dg ], [ %indvars.iv655.1.unr, %.prol.loopexit ] ; 3 uses
  %.4538.us.1 = phi i32 [ %.5.us.1.1, %bb.dg ], [ %.4538.us.1.unr, %.prol.loopexit ] ; 3 uses
  %gep546.us.1 = getelementptr [512 x i8], ptr %gep550.us.1, i64 %indvars.iv655.1
  %i.ty = load i32, ptr %gep546.us.1, align 4, !tbaa !54 ; 2 uses
  %.not238.us.1 = icmp eq i32 %i.ty, 0
  br i1 %.not238.us.1, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %._crit_edge541.us.new
  %i.tz = shl nsw i32 %i.ty, 1
  %i.ua = add nsw i32 %.4538.us.1, 1
  %i.ub = sext i32 %.4538.us.1 to i64
  %i.uc = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.ub
  store i32 %i.tz, ptr %i.uc, align 4, !tbaa !54
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %._crit_edge541.us.new
  %.5.us.1 = phi i32 [ %i.ua, %bb.dd ], [ %.4538.us.1, %._crit_edge541.us.new ] ; 3 uses
  %i.ud = getelementptr [512 x i8], ptr %gep550.us.1, i64 %indvars.iv655.1
  %gep546.us.1.1 = getelementptr i8, ptr %i.ud, i64 512
  %i.ue = load i32, ptr %gep546.us.1.1, align 4, !tbaa !54 ; 2 uses
  %.not238.us.1.1 = icmp eq i32 %i.ue, 0
  br i1 %.not238.us.1.1, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.uf = shl nsw i32 %i.ue, 1
  %i.ug = add nsw i32 %.5.us.1, 1
  %i.uh = sext i32 %.5.us.1 to i64
  %i.ui = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.uh
  store i32 %i.uf, ptr %i.ui, align 4, !tbaa !54
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de
  %.5.us.1.1 = phi i32 [ %i.ug, %bb.df ], [ %.5.us.1, %bb.de ] ; 2 uses
  %indvars.iv.next656.1.1 = add nsw i64 %indvars.iv655.1, 2 ; 2 uses
  %lftr.wideiv658.1.1 = trunc i64 %indvars.iv.next656.1.1 to i32
  %exitcond659.1.not.1 = icmp eq i32 %i.su, %lftr.wideiv658.1.1
  br i1 %exitcond659.1.not.1, label %.preheader468, label %._crit_edge541.us.new, !llvm.loop !622

.preheader465:                                    ; preds = %.loopexit469, %.split.us561, %.preheader471
  %.lcssa = phi i32 [ %.pre-phi, %.preheader471 ], [ %.pre-phi, %.split.us561 ], [ %i.wd, %.loopexit469 ] ; 2 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.uk = load i32, ptr %i.uj, align 4, !tbaa !175
  %i.ul = icmp slt i32 %.lcssa, %i.uk
  br i1 %i.ul, label %.preheader.lr.ph, label %._crit_edge575

.preheader.lr.ph:                                 ; preds = %.preheader465
  %i.um = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.un = getelementptr inbounds nuw i8, ptr %0, i64 32824 ; 7 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %0, i64 32816 ; 6 uses
  %i.up = getelementptr inbounds nuw i8, ptr %0, i64 32808 ; 3 uses
  %i.uq = getelementptr inbounds nuw i8, ptr %0, i64 32812 ; 3 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.us = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ut = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.uu = sext i32 %.lcssa to i64
  br label %.preheader

.preheader468:                                    ; preds = %bb.dg, %.prol.loopexit
  %.5.us.1.lcssa = phi i32 [ %.5.us.1.lcssa.unr, %.prol.loopexit ], [ %.5.us.1.1, %bb.dg ] ; 3 uses
  %i.uv = icmp sgt i32 %.5.us.1.lcssa, 0
  br i1 %i.uv, label %.lr.ph555.preheader, label %.loopexit469

.lr.ph555.preheader:                              ; preds = %.preheader468
  %i.uw = zext nneg i32 %.5.us.1.lcssa to i64
  %wide.trip.count673 = zext nneg i32 %.5.us.1.lcssa to i64 ; 2 uses
end_hunk_3
