Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/pgstat_relation?download=true
inline.NumInlined: 18
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@AtPrepare_PgStat_Relations:bb.a
  %i.n = load <2 x i64>, ptr %i.m, align 8
  store <2 x i64> %i.n, ptr %i.c, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %.015, i64 48
  %i.p = load i64, ptr %i.o, align 8
  store i64 %i.p, ptr %i.d, align 8
  %i.q = load i32, ptr %i.i, align 8
  store i32 %i.q, ptr %i.e, align 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.s = load i8, ptr %i.r, align 4, !range !4, !noundef !5
  store i8 %i.s, ptr %i.f, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %.015, i64 24
  %i.u = load i8, ptr %i.t, align 8, !range !4, !noundef !5
  store i8 %i.u, ptr %i.g, align 1
  call void @RegisterTwoPhaseRecord(i8 noundef zeroext 2, i16 noundef zeroext 0, ptr noundef nonnull %1, i32 noundef 56) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  %i.v = getelementptr inbounds nuw i8, ptr %.015, i64 80
  %.0 = load ptr, ptr %i.v, align 8               ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !12

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

declare void @RegisterTwoPhaseRecord(i8 noundef zeroext, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @PostPrepare_PgStat_Relations(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.05 = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not6 = icmp eq ptr %.05, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %.0, %.lr.ph ], [ %.05, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.07, i64 72
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr null, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 80
  %.0 = load ptr, ptr %i.e, align 8               ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !13

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @pgstat_twophase_postcommit(i64 %0, i16 noundef zeroext %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.d = load i8, ptr %i.c, align 4, !range !4, !noundef !5 ; 2 uses
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = load i32, ptr @MyDatabaseId, align 4
  %i.g = select i1 %i.e, i32 0, i32 %i.f
  %i.h = zext i32 %i.b to i64
  %i.i = tail call ptr @pgstat_prep_pending_entry(i32 noundef 2, i32 noundef %i.g, i64 noundef %i.h, ptr noundef null) #9
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8              ; 11 uses
  store i32 %i.b, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  store i8 %i.d, ptr %i.l, align 4
  %i.m = load i64, ptr %2, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 40 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8
  %i.p = add i64 %i.o, %i.m
  store i64 %i.p, ptr %i.n, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.r = load i64, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 48 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8
  %i.u = add i64 %i.t, %i.r
  store i64 %i.u, ptr %i.s, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.w = load i64, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 56 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8
  %i.z = add i64 %i.y, %i.w
  store i64 %i.z, ptr %i.x, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 53
  %i.ab = load i8, ptr %i.aa, align 1, !range !4, !noundef !5 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  store i8 %i.ab, ptr %i.ac, align 8
  %i.ad = trunc nuw i8 %i.ab to i1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.k, i64 88 ; 2 uses
  br i1 %i.ad, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.pre = load i64, ptr %i.ae, align 8
  %.phi.trans.insert24 = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  %.pre25 = load i64, ptr %.phi.trans.insert24, align 8
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i8 0, i64 16, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.af = phi i64 [ %.pre25, %._crit_edge ], [ 0, %bb.b ]
  %i.ag = phi i64 [ %.pre, %._crit_edge ], [ 0, %bb.b ]
  %i.ah = load i64, ptr %2, align 8
  %i.ai = load i64, ptr %i.v, align 8
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.k, i64 88
  %i.al = add i64 %i.aj, %i.ag
  store i64 %i.al, ptr %i.ak, align 8
  %i.am = load i64, ptr %i.q, align 8
  %i.an = load i64, ptr %i.v, align 8
  %i.ao = add i64 %i.an, %i.am
  %i.ap = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  %i.aq = add i64 %i.ao, %i.af
  store i64 %i.aq, ptr %i.ap, align 8
  %i.ar = load i64, ptr %2, align 8
  %i.as = load i64, ptr %i.q, align 8
  %i.at = add i64 %i.as, %i.ar
  %i.au = load i64, ptr %i.v, align 8
  %i.av = add i64 %i.at, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.k, i64 104 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = add i64 %i.av, %i.ax
  store i64 %i.ay, ptr %i.aw, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @pgstat_twophase_postabort(i64 %0, i16 noundef zeroext %1, ptr nofree noundef captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.d = load i8, ptr %i.c, align 4, !range !4, !noundef !5 ; 2 uses
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = load i32, ptr @MyDatabaseId, align 4
  %i.g = select i1 %i.e, i32 0, i32 %i.f
  %i.h = zext i32 %i.b to i64
  %i.i = tail call ptr @pgstat_prep_pending_entry(i32 noundef 2, i32 noundef %i.g, i64 noundef %i.h, ptr noundef null) #9
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8              ; 6 uses
  store i32 %i.b, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  store i8 %i.d, ptr %i.l, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 53
  %i.n = load i8, ptr %i.m, align 1, !range !4, !noundef !5
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.pre = load i64, ptr %2, align 8
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.q = load <2 x i64>, ptr %i.p, align 8
  %i.r = load i64, ptr %i.p, align 8
  store <2 x i64> %i.q, ptr %2, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.t, ptr %i.u, align 8
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.v = phi i64 [ %.pre, %._crit_edge ], [ %i.r, %bb.b ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 40 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8
  %i.y = add i64 %i.x, %i.v
  store i64 %i.y, ptr %i.w, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 48 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = add i64 %i.ac, %i.aa
  store i64 %i.ad, ptr %i.ab, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 56 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = add i64 %i.ah, %i.af
  store i64 %i.ai, ptr %i.ag, align 8
  %i.aj = load i64, ptr %2, align 8
  %i.ak = load i64, ptr %i.z, align 8
  %i.al = add i64 %i.ak, %i.aj
  %i.am = getelementptr inbounds nuw i8, ptr %i.k, i64 96 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = add i64 %i.al, %i.an
  store i64 %i.ao, ptr %i.am, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @pgstat_relation_flush_cb(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.c = load i32, ptr %i.b, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8              ; 21 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8              ; 19 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 9 uses
  %2 = ptrtoaddr ptr %i.h to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = and i64 %i.j, -8
  %i.l = inttoptr i64 %i.k to ptr                 ; 3 uses
  %3 = sub i64 0, %2
  %4 = and i64 %3, 7                              ; 10 uses
  %exitcond.i90 = icmp eq i64 %4, 0
  br i1 %exitcond.i90, label %.preheader53.i, label %.lr.ph

5:                                                ; preds = %.lr.ph
  %exitcond.i = icmp eq i64 %4, 1
  br i1 %exitcond.i, label %.preheader53.i, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %5
  %.4.ptr.i.1 = getelementptr inbounds nuw i8, ptr %i.e, i64 17
  %6 = load i8, ptr %.4.ptr.i.1, align 1
  %.not50.i.1 = icmp eq i8 %6, 0
  br i1 %.not50.i.1, label %7, label %.loopexit, !llvm.loop !14

7:                                                ; preds = %.lr.ph.1
  %exitcond.i.1 = icmp eq i64 %4, 2
  br i1 %exitcond.i.1, label %.preheader53.i, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %7
  %.4.ptr.i.2 = getelementptr inbounds nuw i8, ptr %i.e, i64 18
  %8 = load i8, ptr %.4.ptr.i.2, align 1
  %.not50.i.2 = icmp eq i8 %8, 0
  br i1 %.not50.i.2, label %9, label %.loopexit, !llvm.loop !14

9:                                                ; preds = %.lr.ph.2
  %exitcond.i.2 = icmp eq i64 %4, 3
  br i1 %exitcond.i.2, label %.preheader53.i, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %9
  %.4.ptr.i.3 = getelementptr inbounds nuw i8, ptr %i.e, i64 19
  %10 = load i8, ptr %.4.ptr.i.3, align 1
  %.not50.i.3 = icmp eq i8 %10, 0
  br i1 %.not50.i.3, label %bb.b, label %.loopexit, !llvm.loop !14

bb.b:                                             ; preds = %.lr.ph.3
  %exitcond.i.3 = icmp eq i64 %4, 4
  br i1 %exitcond.i.3, label %.preheader53.i, label %.lr.ph.4

.lr.ph.4:                                         ; preds = %bb.b
  %.4.ptr.i.4 = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.m = load i8, ptr %.4.ptr.i.4, align 1
  %.not50.i.4 = icmp eq i8 %i.m, 0
  br i1 %.not50.i.4, label %11, label %.loopexit, !llvm.loop !14

11:                                               ; preds = %.lr.ph.4
  %exitcond.i.4 = icmp eq i64 %4, 5
  br i1 %exitcond.i.4, label %.preheader53.i, label %.lr.ph.5

.lr.ph.5:                                         ; preds = %11
  %.4.ptr.i.5 = getelementptr inbounds nuw i8, ptr %i.e, i64 21
  %12 = load i8, ptr %.4.ptr.i.5, align 1
  %.not50.i.5 = icmp eq i8 %12, 0
  br i1 %.not50.i.5, label %13, label %.loopexit, !llvm.loop !14

13:                                               ; preds = %.lr.ph.5
  %exitcond.i.5 = icmp eq i64 %4, 6
  br i1 %exitcond.i.5, label %.preheader53.i, label %.lr.ph.6

.lr.ph.6:                                         ; preds = %13
  %.4.ptr.i.6 = getelementptr inbounds nuw i8, ptr %i.e, i64 22
  %i.n = load i8, ptr %.4.ptr.i.6, align 1
  %.not50.i.6 = icmp eq i8 %i.n, 0
  br i1 %.not50.i.6, label %.preheader53.i, label %.loopexit, !llvm.loop !14

.preheader53.i:                                   ; preds = %5, %7, %9, %bb.b, %11, %13, %.lr.ph.6, %bb.a
  %14 = getelementptr inbounds i8, ptr %i.l, i64 -56 ; 2 uses
  %.5.ptr60.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %4 ; 2 uses
  %15 = icmp ult ptr %.5.ptr60.i, %14
  br i1 %15, label %.lr.ph.i, label %.preheader51.i

.lr.ph:                                           ; preds = %bb.a
  %16 = load i8, ptr %i.h, align 1
  %.not50.i = icmp eq i8 %16, 0
  br i1 %.not50.i, label %5, label %.loopexit, !llvm.loop !14

.preheader51.i:                                   ; preds = %bb.c, %.preheader53.i
  %.5.idx.lcssa.i = phi i64 [ %4, %.preheader53.i ], [ %.5.add.i, %bb.c ] ; 3 uses
  %.6.ptr63.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.5.idx.lcssa.i ; 2 uses
  %i.o = icmp ult ptr %.6.ptr63.i, %i.l
  br i1 %i.o, label %.lr.ph66.i, label %.preheader.i

.lr.ph.i:                                         ; preds = %.preheader53.i, %bb.c
  %.5.ptr62.i = phi ptr [ %.5.ptr.i, %bb.c ], [ %.5.ptr60.i, %.preheader53.i ]
  %.5.idx61.i = phi i64 [ %.5.add.i, %bb.c ], [ %4, %.preheader53.i ]
  %i.p = load <8 x i64>, ptr %.5.ptr62.i, align 8
  %i.q = tail call i64 @llvm.vector.reduce.or.v8i64(<8 x i64> %i.p)
  %.not49.i = icmp eq i64 %i.q, 0
  br i1 %.not49.i, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %.lr.ph.i
  %.5.add.i = add nuw nsw i64 %.5.idx61.i, 64     ; 3 uses
  %.5.ptr.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.5.add.i ; 2 uses
  %i.r = icmp ult ptr %.5.ptr.i, %14
  br i1 %i.r, label %.lr.ph.i, label %.preheader51.i, !llvm.loop !15

.preheader.i:                                     ; preds = %bb.d, %.preheader51.i
  %.6.idx.lcssa.i = phi i64 [ %.5.idx.lcssa.i, %.preheader51.i ], [ %.6.add.i, %bb.d ] ; 3 uses
  %umax.i = tail call i64 @llvm.umax.i64(i64 %.6.idx.lcssa.i, i64 112)
  %exitcond73.not.i93 = icmp ugt i64 %.6.idx.lcssa.i, 111
  br i1 %exitcond73.not.i93, label %pg_memory_is_all_zeros.exit, label %.lr.ph95

.lr.ph66.i:                                       ; preds = %.preheader51.i, %bb.d
  %.6.ptr65.i = phi ptr [ %.6.ptr.i, %bb.d ], [ %.6.ptr63.i, %.preheader51.i ]
  %.6.idx64.i = phi i64 [ %.6.add.i, %bb.d ], [ %.5.idx.lcssa.i, %.preheader51.i ]
  %i.s = load i64, ptr %.6.ptr65.i, align 8
  %.not48.i = icmp eq i64 %i.s, 0
  br i1 %.not48.i, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %.lr.ph66.i
  %.6.add.i = add nuw nsw i64 %.6.idx64.i, 8      ; 3 uses
  %.6.ptr.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.6.add.i ; 2 uses
  %i.t = icmp ult ptr %.6.ptr.i, %i.l
  br i1 %i.t, label %.lr.ph66.i, label %.preheader.i, !llvm.loop !16

bb.e:                                             ; preds = %.lr.ph95
  %.7.add.i = add i64 %.7.idx.i94, 1              ; 2 uses
  %exitcond73.not.i = icmp eq i64 %.7.add.i, %umax.i
  br i1 %exitcond73.not.i, label %pg_memory_is_all_zeros.exit, label %.lr.ph95, !llvm.loop !17

.lr.ph95:                                         ; preds = %.preheader.i, %bb.e
  %.7.idx.i94 = phi i64 [ %.7.add.i, %bb.e ], [ %.6.idx.lcssa.i, %.preheader.i ] ; 2 uses
  %.7.ptr.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.7.idx.i94
  %i.u = load i8, ptr %.7.ptr.i, align 1
  %.not47.i = icmp eq i8 %i.u, 0
  br i1 %.not47.i, label %bb.e, label %.loopexit, !llvm.loop !17

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph.1, %.lr.ph.2, %.lr.ph.3, %.lr.ph.4, %.lr.ph.5, %.lr.ph.6, %.lr.ph.i, %.lr.ph66.i, %.lr.ph95
  %i.v = tail call zeroext i1 @pgstat_lock_entry(ptr noundef nonnull %0, i1 noundef zeroext %1) #9
  br i1 %i.v, label %bb.f, label %pg_memory_is_all_zeros.exit

bb.f:                                             ; preds = %.loopexit
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.x = load i64, ptr %i.h, align 8
  %i.y = load i64, ptr %i.w, align 8
  %i.z = add i64 %i.y, %i.x
  store i64 %i.z, ptr %i.w, align 8
  %i.aa = load i64, ptr %i.h, align 8
  %.not = icmp eq i64 %i.aa, 0
  br i1 %.not, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = tail call i64 @GetCurrentTransactionStopTimestamp() #9 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = icmp sgt i64 %i.ab, %i.ad
  br i1 %i.ae, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i64 %i.ab, ptr %i.ac, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = add i64 %i.ai, %i.ag
  store i64 %i.aj, ptr %i.ah, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.g, i64 48 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = add i64 %i.an, %i.al
  store i64 %i.ao, ptr %i.am, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 3 uses
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.g, i64 56 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = add i64 %i.as, %i.aq
  store i64 %i.at, ptr %i.ar, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.g, i64 64 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = add i64 %i.ax, %i.av
  store i64 %i.ay, ptr %i.aw, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.g, i64 72 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = add i64 %i.bc, %i.ba
  store i64 %i.bd, ptr %i.bb, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.bf = load i64, ptr %i.be, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.g, i64 80 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = add i64 %i.bh, %i.bf
  store i64 %i.bi, ptr %i.bg, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.bk = load i64, ptr %i.bj, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.g, i64 88 ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8
  %i.bn = add i64 %i.bm, %i.bk
  store i64 %i.bn, ptr %i.bl, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.bp = load i8, ptr %i.bo, align 8, !range !4, !noundef !5
  %i.bq = trunc nuw i8 %i.bp to i1
  %i.br = getelementptr inbounds nuw i8, ptr %i.g, i64 96 ; 2 uses
  br i1 %i.bq, label %bb.j, label %._crit_edge

._crit_edge:                                      ; preds = %bb.i
  %.pre = load i64, ptr %i.br, align 8
  %.phi.trans.insert76 = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  %.pre77 = load i64, ptr %.phi.trans.insert76, align 8
  %.phi.trans.insert78 = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  %.pre79 = load i64, ptr %.phi.trans.insert78, align 8
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  store i64 0, ptr %i.bs, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.br, i8 0, i64 16, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %bb.j
  %i.bt = phi i64 [ %.pre79, %._crit_edge ], [ 0, %bb.j ]
  %i.bu = phi i64 [ %.pre77, %._crit_edge ], [ 0, %bb.j ]
  %i.bv = phi i64 [ %.pre, %._crit_edge ], [ 0, %bb.j ]
  %i.bw = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %i.bx = load i64, ptr %i.bw, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.g, i64 96 ; 2 uses
  %i.bz = add i64 %i.bv, %i.bx                    ; 2 uses
  store i64 %i.bz, ptr %i.by, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %i.cb = load i64, ptr %i.ca, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.g, i64 104 ; 2 uses
  %i.cd = add i64 %i.bu, %i.cb                    ; 2 uses
  store i64 %i.cd, ptr %i.cc, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %i.cf = load i64, ptr %i.ce, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.g, i64 112 ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8
  %i.ci = add i64 %i.ch, %i.cf
  store i64 %i.ci, ptr %i.cg, align 8
  %i.cj = load i64, ptr %i.ap, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  %i.cl = add i64 %i.bt, %i.cj
  store i64 %i.cl, ptr %i.ck, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.e, i64 112 ; 2 uses
  %i.cn = load i64, ptr %i.cm, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.g, i64 128 ; 2 uses
  %i.cp = load i64, ptr %i.co, align 8
  %i.cq = add i64 %i.cp, %i.cn
  store i64 %i.cq, ptr %i.co, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.e, i64 120 ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.g, i64 136 ; 2 uses
  %i.cu = load i64, ptr %i.ct, align 8
  %i.cv = add i64 %i.cu, %i.cs
  store i64 %i.cv, ptr %i.ct, align 8
  %spec.select = tail call i64 @llvm.smax.i64(i64 %i.bz, i64 0)
  store i64 %spec.select, ptr %i.by, align 8
  %i.cw = tail call i64 @llvm.smax.i64(i64 %i.cd, i64 0)
  store i64 %i.cw, ptr %i.cc, align 8
  tail call void @pgstat_unlock_entry(ptr noundef nonnull %0) #9
  %i.cx = tail call ptr @pgstat_prep_database_pending(i32 noundef %i.c) #9 ; 7 uses
  %i.cy = load i64, ptr %i.af, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 32 ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8
  %i.db = add i64 %i.da, %i.cy
  store i64 %i.db, ptr %i.cz, align 8
  %i.dc = load i64, ptr %i.ak, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cx, i64 40 ; 2 uses
  %i.de = load i64, ptr %i.dd, align 8
  %i.df = add i64 %i.de, %i.dc
  store i64 %i.df, ptr %i.dd, align 8
  %i.dg = load i64, ptr %i.ap, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cx, i64 48 ; 2 uses
  %i.di = load i64, ptr %i.dh, align 8
  %i.dj = add i64 %i.di, %i.dg
  store i64 %i.dj, ptr %i.dh, align 8
  %i.dk = load i64, ptr %i.au, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cx, i64 56 ; 2 uses
  %i.dm = load i64, ptr %i.dl, align 8
  %i.dn = add i64 %i.dm, %i.dk
  store i64 %i.dn, ptr %i.dl, align 8
  %i.do = load i64, ptr %i.az, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cx, i64 64 ; 2 uses
  %i.dq = load i64, ptr %i.dp, align 8
  %i.dr = add i64 %i.dq, %i.do
  store i64 %i.dr, ptr %i.dp, align 8
  %i.ds = load i64, ptr %i.cm, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cx, i64 16 ; 2 uses
  %i.du = load i64, ptr %i.dt, align 8
  %i.dv = add i64 %i.du, %i.ds
  store i64 %i.dv, ptr %i.dt, align 8
  %i.dw = load i64, ptr %i.cr, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cx, i64 24 ; 2 uses
  %i.dy = load i64, ptr %i.dx, align 8
  %i.dz = add i64 %i.dy, %i.dw
  store i64 %i.dz, ptr %i.dx, align 8
  br label %pg_memory_is_all_zeros.exit

pg_memory_is_all_zeros.exit:                      ; preds = %bb.e, %.preheader.i, %.loopexit, %bb.k
  %.0 = phi i1 [ false, %.loopexit ], [ true, %bb.k ], [ true, %.preheader.i ], [ true, %bb.e ]
  ret i1 %.0
}

declare zeroext i1 @pgstat_lock_entry(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare i64 @GetCurrentTransactionStopTimestamp() local_unnamed_addr #2

declare ptr @pgstat_prep_database_pending(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @pgstat_relation_delete_pending_cb(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %pgstat_unlink_relation.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 480 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %pgstat_unlink_relation.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  store ptr null, ptr %i.h, align 8
  store ptr null, ptr %i.e, align 8
  br label %pgstat_unlink_relation.exit

pgstat_unlink_relation.exit:                      ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @pgstat_relation_reset_timestamp_cb(ptr nofree noundef writeonly captures(none) initializes((240, 248)) %0, i64 noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i64 %1, ptr %i.a, align 8
  ret void
}

declare ptr @pgstat_prep_pending_entry(i32 noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @MemoryContextAllocZero(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.or.v8i64(<8 x i64>) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{i8 0, i8 2}
!5 = !{}
!6 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = distinct !{!9, !8}
!10 = distinct !{!10, !8}
!11 = distinct !{!11, !8}
!12 = distinct !{!12, !8}
!13 = distinct !{!13, !8}
!14 = distinct !{!14, !8}
!15 = distinct !{!15, !8}
!16 = distinct !{!16, !8}
!17 = distinct !{!17, !8}
end_hunk_0
