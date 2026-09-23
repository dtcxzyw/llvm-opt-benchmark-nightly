Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/predicate?download=true
inline.NumInlined: 191
inline.NumDeleted: 56
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@PreCommit_CheckForSerializationFailure:bb.a
  %.not3040 = select i1 %.not29, i1 true, i1 %.not304050
  br i1 %.not3040, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.j
  %.sroa.0.041 = phi ptr [ %i.ar, %bb.j ], [ %i.aa, %bb.e ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.041, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.f
  br i1 %i.ad, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 156
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = and i32 %i.af, 41
  %or.cond38 = icmp eq i32 %i.ag, 0
  br i1 %or.cond38, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f, %.lr.ph
  %i.ah = and i32 %i.w, 2
  %.not34 = icmp eq i32 %i.ah, 0
  br i1 %.not34, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = load ptr, ptr @MainLWLockArray, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 3584
  tail call void @LWLockRelease(ptr noundef nonnull %i.aj) #11
  %i.ak = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #12 ; 0 uses
  %i.al = tail call i32 @errcode(i32 noundef 16777220) #11 ; 0 uses
  %i.am = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.6) #11 ; 0 uses
  %i.an = tail call i32 (ptr, ...) @errdetail_internal(ptr noundef nonnull @.str.14) #11 ; 0 uses
  %i.ao = tail call i32 (ptr, ...) @errhint(ptr noundef nonnull @.str.8) #11 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.4, i32 noundef 4692, ptr noundef nonnull @__func__.PreCommit_CheckForSerializationFailure) #11
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ap = or disjoint i32 %i.w, 8
  store i32 %i.ap, ptr %i.v, align 4
  br label %.loopexit

bb.j:                                             ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.041, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8            ; 2 uses
  %.not30 = icmp eq ptr %i.ar, %i.y
  br i1 %.not30, label %.loopexit, label %.lr.ph, !llvm.loop !42

.loopexit:                                        ; preds = %bb.j, %bb.e, %bb.i, %.lr.ph44
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.014.043, i64 8
  %i.at = load ptr, ptr %i.as, align 8            ; 2 uses
  %.not26 = icmp eq ptr %i.at, %i.q
  br i1 %.not26, label %._crit_edge, label %.lr.ph44, !llvm.loop !43

._crit_edge:                                      ; preds = %.loopexit, %bb.d
  %i.au = load ptr, ptr @PredXact, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 48 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = add i64 %i.aw, 1                        ; 2 uses
  store i64 %i.ax, ptr %i.av, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %i.ax, ptr %i.ay, align 8
  %i.az = load i32, ptr %i.g, align 4
  %i.ba = or i32 %i.az, 2
  store i32 %i.ba, ptr %i.g, align 4
  %i.bb = load ptr, ptr @MainLWLockArray, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 3584
  tail call void @LWLockRelease(ptr noundef nonnull %i.bc) #11
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @AtPrepare_PredicateLocks() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.TwoPhasePredicateRecord, align 4 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #11
  %i.a = load ptr, ptr @MySerializableXact, align 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.c = icmp eq ptr %i.a, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %0, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %i.e = load <2 x i32>, ptr %i.d, align 8
  store <2 x i32> %i.e, ptr %i.b, align 4
  call void @RegisterTwoPhaseRecord(i8 noundef zeroext 4, i16 noundef zeroext 0, ptr noundef nonnull %0, i32 noundef 24) #11
  %i.f = load ptr, ptr @MainLWLockArray, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 3840
  %i.h = call zeroext i1 @LWLockAcquire(ptr noundef nonnull %i.g, i32 noundef 1) #11 ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.k = load ptr, ptr %i.j, align 8              ; 3 uses
  %.not = icmp eq ptr %i.k, null
  %.not111215 = icmp eq ptr %i.k, %i.i
  %.not1112 = select i1 %.not, i1 true, i1 %.not111215
  br i1 %.not1112, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.sroa.0.013 = phi ptr [ %i.o, %.lr.ph ], [ %i.k, %bb.b ] ; 2 uses
  %i.l = getelementptr inbounds i8, ptr %.sroa.0.013, i64 -32
  store i32 1, ptr %0, align 4
  %i.m = load ptr, ptr %i.l, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.m, i64 16, i1 false)
  call void @RegisterTwoPhaseRecord(i8 noundef zeroext 4, i16 noundef zeroext 0, ptr noundef nonnull %0, i32 noundef 24) #11
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.013, i64 8
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %.not11 = icmp eq ptr %i.o, %i.i
  br i1 %.not11, label %._crit_edge, label %.lr.ph, !llvm.loop !44

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  %i.p = load ptr, ptr @MainLWLockArray, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 3840
  call void @LWLockRelease(ptr noundef nonnull %i.q) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #11
  ret void
}

declare void @RegisterTwoPhaseRecord(i8 noundef zeroext, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @PostPrepare_PredicateLocks(i64 %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @MySerializableXact, align 8 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store i32 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 164
  store i32 -1, ptr %i.d, align 4
  %i.e = load ptr, ptr @LocalPredicateLockHash, align 8
  tail call void @hash_destroy(ptr noundef %i.e) #11
  store ptr null, ptr @LocalPredicateLockHash, align 8
  store ptr null, ptr @MySerializableXact, align 8
  store i1 false, ptr @MyXactDidWrite, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

declare void @hash_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @PredicateLockTwoPhaseFinish(i64 %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.SERIALIZABLEXIDTAG, align 4 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  %i.a = trunc i64 %0 to i32
  store i32 %i.a, ptr %2, align 4
  %i.b = load ptr, ptr @MainLWLockArray, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 3584
  %i.d = tail call zeroext i1 @LWLockAcquire(ptr noundef nonnull %i.c, i32 noundef 1) #11 ; 0 uses
  %i.e = load ptr, ptr @SerializableXidHash, align 8
  %i.f = call ptr @hash_search(ptr noundef %i.e, ptr noundef nonnull %2, i32 noundef 0, ptr noundef null) #11 ; 2 uses
  %i.g = load ptr, ptr @MainLWLockArray, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 3584
  call void @LWLockRelease(ptr noundef nonnull %i.h) #11
  %i.i = icmp eq ptr %i.f, null
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  store ptr %i.k, ptr @MySerializableXact, align 8
  store i1 true, ptr @MyXactDidWrite, align 1
  call void @ReleasePredicateLocks(i1 noundef zeroext %1, i1 noundef zeroext false)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @predicatelock_twophase_recover(i64 %0, i16 noundef zeroext %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.SERIALIZABLEXIDTAG, align 4 ; 4 uses
  %i.a = alloca i8, align 1                       ; 3 uses
  %5 = alloca %struct.SERIALIZABLEXIDTAG, align 4 ; 4 uses
  %i.b = trunc i64 %0 to i32                      ; 4 uses
  %i.c = load i32, ptr %2, align 4
  switch i32 %i.c, label %bb.u [
    i32 0, label %bb.b
    i32 1, label %bb.t
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.d = load ptr, ptr @MainLWLockArray, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 3584
  %i.f = tail call zeroext i1 @LWLockAcquire(ptr noundef nonnull %i.e, i32 noundef 0) #11 ; 0 uses
  %i.g = load ptr, ptr @PredXact, align 8         ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8              ; 26 uses
  %i.j = icmp eq ptr %i.i, null
  %i.k = icmp eq ptr %i.i, %i.g
  %spec.select.i.i = or i1 %i.j, %i.k
  br i1 %spec.select.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = load ptr, ptr %i.i, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.m, ptr %i.o, align 8
  %i.p = load ptr, ptr %i.i, align 8
  store ptr %i.p, ptr %i.m, align 8
  %i.q = getelementptr inbounds i8, ptr %i.i, i64 -96 ; 2 uses
  %i.r = load ptr, ptr @PredXact, align 8         ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  store ptr %i.s, ptr %i.s, align 8
  store ptr %i.s, ptr %i.t, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.w = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #12 ; 0 uses
  %i.x = tail call i32 @errcode(i32 noundef 8389) #11 ; 0 uses
  %i.y = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.15) #11 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.4, i32 noundef 4867, ptr noundef nonnull @__func__.predicatelock_twophase_recover) #11
  unreachable

bb.f:                                             ; preds = %bb.d, %bb.c
  store ptr %i.s, ptr %i.l, align 8
  %i.z = load ptr, ptr %i.s, align 8              ; 2 uses
  store ptr %i.z, ptr %i.i, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.i, ptr %i.aa, align 8
  store ptr %i.i, ptr %i.s, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 -1, ptr %i.q, align 8
  %i.ac = getelementptr inbounds i8, ptr %i.i, i64 -92
  store i32 %i.b, ptr %i.ac, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  store i32 0, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 68
  store i32 -1, ptr %i.ae, align 4
  %i.af = getelementptr inbounds i8, ptr %i.i, i64 -88
  store i64 1, ptr %i.af, align 8
  %i.ag = getelementptr inbounds i8, ptr %i.i, i64 -80
  store i64 -1, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 52
  store i32 0, ptr %i.ah, align 4
  %i.ai = getelementptr inbounds i8, ptr %i.i, i64 -72
  store i64 1, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 3 uses
  store ptr %i.aj, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store ptr %i.aj, ptr %i.ak, align 8
  %i.al = getelementptr inbounds i8, ptr %i.i, i64 -32 ; 3 uses
  store ptr %i.al, ptr %i.al, align 8
  %i.am = getelementptr inbounds i8, ptr %i.i, i64 -24
  store ptr %i.al, ptr %i.am, align 8
  %i.an = getelementptr inbounds i8, ptr %i.i, i64 -16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, i8 0, i64 16, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store i32 %i.b, ptr %i.ao, align 8
  %i.ap = load i32, ptr %i.ab, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.i, i64 56 ; 3 uses
  store i32 %i.ap, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.as = load i32, ptr %i.ar, align 4            ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.i, i64 60 ; 3 uses
  store i32 %i.as, ptr %i.at, align 4
  %i.au = and i32 %i.as, 32
  %.not43 = icmp eq i32 %i.au, 0
  br i1 %.not43, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.av = load ptr, ptr @PredXact, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 40 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 8
  %i.ay = add i32 %i.ax, 1
  store i32 %i.ay, ptr %i.aw, align 8
  %.pre = load i32, ptr %i.at, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.az = phi i32 [ %.pre, %bb.g ], [ %i.as, %bb.f ]
  %6 = getelementptr inbounds i8, ptr %i.i, <4 x i64> <i64 -64, i64 -64, i64 -48, i64 -48>
  %i.ba = getelementptr inbounds i8, ptr %i.i, i64 -64
  store <4 x ptr> %6, ptr %i.ba, align 8
  %i.bb = or i32 %i.az, 1536
  store i32 %i.bb, ptr %i.at, align 4
  store i32 %i.b, ptr %4, align 4
  %i.bc = load ptr, ptr @SerializableXidHash, align 8
  %i.bd = call ptr @hash_search(ptr noundef %i.bc, ptr noundef nonnull %4, i32 noundef 1, ptr noundef nonnull %i.a) #11
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr %i.q, ptr %i.be, align 8
  %i.bf = load ptr, ptr @PredXact, align 8        ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 8            ; 5 uses
  %.not44 = icmp eq i32 %i.bh, 0
  %.pre48 = load i32, ptr %i.aq, align 8          ; 5 uses
  br i1 %.not44, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bi = icmp ugt i32 %i.bh, 2
  %i.bj = icmp ugt i32 %.pre48, 2
  %or.cond.i = and i1 %i.bi, %i.bj
  %i.bk = sub i32 %i.bh, %.pre48
  %i.bl = icmp sgt i32 %i.bk, 0
  %i.bm = icmp ugt i32 %i.bh, %.pre48
  %.0.i45 = select i1 %or.cond.i, i1 %i.bl, i1 %i.bm
  br i1 %.0.i45, label %bb.j, label %bb.q

bb.j:                                             ; preds = %bb.i, %bb.h
  store i32 %.pre48, ptr %i.bg, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bf, i64 36
  store i32 1, ptr %i.bn, align 4
  %i.bo = load i32, ptr %i.aq, align 8            ; 6 uses
  %i.bp = load ptr, ptr @MainLWLockArray, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 6656
  %i.br = call zeroext i1 @LWLockAcquire(ptr noundef nonnull %i.bq, i32 noundef 0) #11 ; 0 uses
  %.not.i = icmp eq i32 %i.bo, 0
  br i1 %.not.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bs = load ptr, ptr @serialControl, align 8   ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 12
  store i32 0, ptr %i.bt, align 4
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store i32 0, ptr %i.bu, align 8
  br label %SerialSetActiveSerXmin.exit

bb.l:                                             ; preds = %bb.j
  %i.bv = call zeroext i1 @RecoveryInProgress() #11
  %i.bw = load ptr, ptr @serialControl, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 12 ; 3 uses
  br i1 %i.bv, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.by = load i32, ptr %i.bx, align 4            ; 4 uses
  %.not5.i = icmp eq i32 %i.by, 0
  br i1 %.not5.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bz = icmp ugt i32 %i.bo, 2
  %i.ca = icmp ugt i32 %i.by, 2
  %or.cond.i.i = and i1 %i.bz, %i.ca
  %i.cb = sub i32 %i.bo, %i.by
  %i.cc = icmp slt i32 %i.cb, 0
  %i.cd = icmp ult i32 %i.bo, %i.by
  %.0.i.i = select i1 %or.cond.i.i, i1 %i.cc, i1 %i.cd
  br i1 %.0.i.i, label %bb.o, label %SerialSetActiveSerXmin.exit

bb.o:                                             ; preds = %bb.n, %bb.m
  store i32 %i.bo, ptr %i.bx, align 4
  br label %SerialSetActiveSerXmin.exit

bb.p:                                             ; preds = %bb.l
  store i32 %i.bo, ptr %i.bx, align 4
  br label %SerialSetActiveSerXmin.exit

SerialSetActiveSerXmin.exit:                      ; preds = %bb.k, %bb.n, %bb.o, %bb.p
  %i.ce = load ptr, ptr @MainLWLockArray, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 6656
  call void @LWLockRelease(ptr noundef nonnull %i.cf) #11
  br label %bb.s

bb.q:                                             ; preds = %bb.i
  %i.cg = icmp eq i32 %.pre48, %i.bh
  br i1 %i.cg, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bf, i64 36 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 4
  %i.cj = add i32 %i.ci, 1
  store i32 %i.cj, ptr %i.ch, align 4
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r, %SerialSetActiveSerXmin.exit
  %i.ck = load ptr, ptr @MainLWLockArray, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 3584
  call void @LWLockRelease(ptr noundef nonnull %i.cl) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br label %bb.u

bb.t:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.cn = load ptr, ptr @PredicateLockTargetHash, align 8
  %i.co = tail call i32 @get_hash_value(ptr noundef %i.cn, ptr noundef nonnull %i.cm) #11
  %i.cp = load ptr, ptr @MainLWLockArray, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 3584
  %i.cr = tail call zeroext i1 @LWLockAcquire(ptr noundef nonnull %i.cq, i32 noundef 1) #11 ; 0 uses
  store i32 %i.b, ptr %5, align 4
  %i.cs = load ptr, ptr @SerializableXidHash, align 8
  %i.ct = call ptr @hash_search(ptr noundef %i.cs, ptr noundef nonnull %5, i32 noundef 0, ptr noundef null) #11
  %i.cu = load ptr, ptr @MainLWLockArray, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 3584
  call void @LWLockRelease(ptr noundef nonnull %i.cv) #11
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8
  call fastcc void @CreatePredicateLock(ptr noundef nonnull %i.cm, i32 noundef %i.co, ptr noundef %i.cx)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  br label %bb.u

bb.u:                                             ; preds = %bb.a, %bb.t, %bb.s
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @CreatePredicateLock(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.PREDICATELOCKTAG, align 8   ; 5 uses
  %i.a = alloca i8, align 1                       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.b = load ptr, ptr @MainLWLockArray, align 8  ; 2 uses
  %i.c = and i32 %1, 15
  %i.d = zext nneg i32 %i.c to i64
  %i.e = getelementptr inbounds nuw [128 x i8], ptr %i.b, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 25856 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 3840
  %i.h = tail call zeroext i1 @LWLockAcquire(ptr noundef nonnull %i.g, i32 noundef 1) #11 ; 0 uses
  %i.i = tail call zeroext i1 @IsInParallelMode() #11
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.k = tail call zeroext i1 @LWLockAcquire(ptr noundef nonnull %i.j, i32 noundef 0) #11 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = tail call zeroext i1 @LWLockAcquire(ptr noundef nonnull %i.f, i32 noundef 0) #11 ; 0 uses
  %i.m = load ptr, ptr @PredicateLockTargetHash, align 8
  %i.n = call ptr @hash_search_with_hash_value(ptr noundef %i.m, ptr noundef %0, i32 noundef %1, i32 noundef 3, ptr noundef nonnull %i.a) #11 ; 6 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #12 ; 0 uses
  %i.p = call i32 @errcode(i32 noundef 8389) #11  ; 0 uses
  %i.q = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.15) #11 ; 0 uses
  %i.r = call i32 (ptr, ...) @errhint(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33) #11 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.4, i32 noundef 2408, ptr noundef nonnull @__func__.CreatePredicateLock) #11
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.s = load i8, ptr %i.a, align 1, !range !6, !noundef !7
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 3 uses
  store ptr %i.u, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr %i.u, ptr %i.v, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store ptr %i.n, ptr %3, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %i.w, align 8
  %i.x = load ptr, ptr @PredicateLockHash, align 8
  %i.y = ptrtoint ptr %2 to i64
  %i.z = trunc i64 %i.y to i32
  %i.aa = shl i32 %i.z, 4
  %i.ab = xor i32 %i.aa, %1
  %i.ac = call ptr @hash_search_with_hash_value(ptr noundef %i.x, ptr noundef nonnull %3, i32 noundef %i.ab, i32 noundef 3, ptr noundef nonnull %i.a) #11 ; 6 uses
  %.not18 = icmp eq ptr %i.ac, null
  br i1 %.not18, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ad = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #12 ; 0 uses
  %i.ae = call i32 @errcode(i32 noundef 8389) #11 ; 0 uses
  %i.af = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.15) #11 ; 0 uses
  %i.ag = call i32 (ptr, ...) @errhint(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33) #11 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.4, i32 noundef 2423, ptr noundef nonnull @__func__.CreatePredicateLock) #11
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ah = load i8, ptr %i.a, align 1, !range !6, !noundef !7
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 2 uses
end_hunk_0
