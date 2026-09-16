Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/sqlite3?download=true
inline.NumInlined: 3254
inline.NumDeleted: 427
loop-unroll.NumCompletelyUnrolled: 74
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 105
begin_hunk_0_@sqlite3_blob_write:bb.a
  br i1 %i.aa, label %.critedge.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.0204.i.i, i64 105
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !340
  %.not24.i.i = icmp eq i8 %i.ac, 1
  br i1 %.not24.i.i, label %bb.i, label %.critedge.i.i

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %.0204.i.i, i64 48
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !347
  %.not25.i.i = icmp eq i32 %i.ae, %i.y
  br i1 %.not25.i.i, label %bb.j, label %.critedge.i.i

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %.0204.i.i, i64 104
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !345
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.ai = load ptr, ptr %.0204.i.i, align 8, !tbaa !346
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !349 ; 3 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %.thread.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not27.i.i = icmp eq ptr %i.aj, %.val.i
  br i1 %.not27.i.i, label %.critedge.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.am = load i32, ptr %i.al, align 8, !tbaa !352
  %i.an = and i32 %i.am, 16384
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %.thread.i, label %.critedge.i.i

bb.n:                                             ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %.0204.i.i, i64 56
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !353
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 128
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !356
  %.not26.i.i = icmp eq i32 %i.as, %i.y
  br i1 %.not26.i.i, label %.critedge.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.at = tail call fastcc i32 @moveToRoot(ptr noundef nonnull %.0204.i.i) ; 0 uses
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.i, %bb.h, %.lr.ph.i.i
  %.020.in.i.i = getelementptr inbounds nuw i8, ptr %.0204.i.i, i64 16
  %.020.i.i = load ptr, ptr %.020.in.i.i, align 8, !tbaa !351 ; 2 uses
  %.not.i.i3 = icmp eq ptr %.020.i.i, null
  br i1 %.not.i.i3, label %.loopexit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !12

.loopexit.loopexit.i:                             ; preds = %.critedge.i.i
  %.pre.i = load i8, ptr %i.o, align 1, !tbaa !340
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %bb.g
  %i.au = phi i8 [ %.pre.i, %.loopexit.loopexit.i ], [ %i.p, %bb.g ]
  %i.av = icmp eq i8 %i.au, 0
  br i1 %i.av, label %.thread.i, label %bb.p

bb.p:                                             ; preds = %.loopexit.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !353
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 3
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !357
  %.not15.i = icmp eq i8 %i.az, 0
  br i1 %.not15.i, label %.thread.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ba = tail call fastcc i32 @accessPayload(ptr noundef nonnull %i.k, i32 noundef %i.n, i32 noundef %2, ptr noundef %1, i32 noundef 0, i32 noundef 1)
  br label %sqlite3BtreePutData.exit

sqlite3BtreePutData.exit:                         ; preds = %bb.e, %bb.q
  %.0.i = phi i32 [ %i.t, %bb.e ], [ %i.ba, %bb.q ] ; 2 uses
  %i.bb = icmp eq i32 %.0.i, 4
  br i1 %i.bb, label %sqlite3BtreePutData.exit.thread6, label %.thread.i

sqlite3BtreePutData.exit.thread6:                 ; preds = %bb.d, %sqlite3BtreePutData.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %i.h, i64 116
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !178
  switch i32 %i.bd, label %sqlite3VdbeFinalize.exit.i [
    i32 -1108210269, label %bb.r
    i32 1369188723, label %bb.r
    i32 649915045, label %bb.s
  ]

bb.r:                                             ; preds = %sqlite3BtreePutData.exit.thread6, %sqlite3BtreePutData.exit.thread6
  %i.be = tail call fastcc i32 @sqlite3VdbeReset(ptr noundef nonnull %i.h) ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %sqlite3BtreePutData.exit.thread6
  tail call fastcc void @sqlite3VdbeDelete(ptr noundef nonnull %i.h)
  br label %sqlite3VdbeFinalize.exit.i

sqlite3VdbeFinalize.exit.i:                       ; preds = %bb.s, %sqlite3BtreePutData.exit.thread6
  store ptr null, ptr %i.g, align 8, !tbaa !334
  br label %bb.t

.thread.i:                                        ; preds = %bb.m, %bb.k, %bb.p, %.loopexit.i, %bb.f, %sqlite3BtreePutData.exit
  %.0.i5 = phi i32 [ %.0.i, %sqlite3BtreePutData.exit ], [ 1, %.loopexit.i ], [ 8, %bb.f ], [ 1, %bb.p ], [ 6, %bb.k ], [ 6, %bb.m ] ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i32 %.0.i5, ptr %i.bf, align 8, !tbaa !201
  %i.bg = getelementptr inbounds nuw i8, ptr %i.h, i64 188
  store i32 %.0.i5, ptr %i.bg, align 4, !tbaa !200
  br label %bb.u

bb.t:                                             ; preds = %sqlite3VdbeFinalize.exit.i, %bb.b
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %blobReadWrite.exit, label %bb.u

bb.u:                                             ; preds = %bb.t, %.thread.i
  %.028.i = phi i32 [ %.0.i5, %.thread.i ], [ 4, %bb.t ]
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 42 ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 2, !tbaa !202
  %.not7.i.i = icmp eq i8 %i.bi, 0
  br i1 %.not7.i.i, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !191 ; 3 uses
  %.not12.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not12.i.i.i, label %sqlite3Error.exit.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i32 7, ptr %i.bl, align 8, !tbaa !201
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 36 ; 2 uses
  %i.bn = load i16, ptr %i.bm, align 4, !tbaa !197
  %i.bo = and i16 %i.bn, -32
  %i.bp = or disjoint i16 %i.bo, 1
  store i16 %i.bp, ptr %i.bm, align 4, !tbaa !197
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 38
  store i8 5, ptr %i.bq, align 2, !tbaa !199
  br label %sqlite3Error.exit.i.i

sqlite3Error.exit.i.i:                            ; preds = %bb.w, %bb.v
  store i8 0, ptr %i.bh, align 2, !tbaa !202
  br label %bb.x

bb.x:                                             ; preds = %sqlite3Error.exit.i.i, %bb.u
  %.0.ph.i.i = phi i32 [ %.028.i, %bb.u ], [ 7, %sqlite3Error.exit.i.i ]
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !205
  %i.bt = and i32 %i.bs, %.0.ph.i.i
  br label %blobReadWrite.exit

blobReadWrite.exit:                               ; preds = %bb.a, %bb.t, %bb.x
  %.023.i = phi i32 [ 1, %bb.a ], [ %i.bt, %bb.x ], [ 4, %bb.t ]
  ret i32 %.023.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @sqlite3_blob_bytes(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !337
  ret i32 %i.b
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @sqlite3_set_authorizer(ptr nofree noundef captures(none) initializes((272, 288)) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272
  store ptr %1, ptr %i.a, align 8, !tbaa !358
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 280
  store ptr %2, ptr %i.b, align 8, !tbaa !359
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.04.i = load ptr, ptr %i.c, align 8, !tbaa !264 ; 2 uses
  %.not5.i = icmp eq ptr %.04.i, null
  br i1 %.not5.i, label %sqlite3ExpirePreparedStatements.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.06.i = phi ptr [ %.0.i, %.lr.ph.i ], [ %.04.i, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.06.i, i64 339
  store i8 1, ptr %i.d, align 1, !tbaa !177
  %i.e = getelementptr inbounds nuw i8, ptr %.06.i, i64 16
  %.0.i = load ptr, ptr %i.e, align 8, !tbaa !264 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %sqlite3ExpirePreparedStatements.exit, label %.lr.ph.i, !llvm.loop !13

sqlite3ExpirePreparedStatements.exit:             ; preds = %.lr.ph.i, %bb.a
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @sqlite3_exec(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr noundef %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #43
  store ptr null, ptr %i.b, align 8, !tbaa !262
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.ak, label %.preheader200

.preheader200:                                    ; preds = %bb.a
  %i.d = icmp eq ptr %0, null                     ; 3 uses
  %i.e = getelementptr i8, ptr %0, i64 72         ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 42 ; 4 uses
  %.not116 = icmp eq ptr %2, null
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %.preheader200.split.us

.preheader200.split.us:                           ; preds = %.preheader200.split.outer, %.preheader200
  %.093.ph = phi ptr [ %1, %.preheader200 ], [ %.093.ph.a, %.preheader200.split.outer ] ; 3 uses
  %.088.ph = phi i32 [ 0, %.preheader200 ], [ %.088.ph.a, %.preheader200.split.outer ]
  %.081.ph = phi i32 [ 0, %.preheader200 ], [ %.081.ph.a, %.preheader200.split.outer ]
  br label %.preheader200.split

.preheader200.split:                              ; preds = %.preheader200.split.backedge, %.preheader200.split.us
  %.088 = phi i32 [ %.088.ph, %.preheader200.split.us ], [ %.088.be, %.preheader200.split.backedge ] ; 3 uses
  %.081 = phi i32 [ %.081.ph, %.preheader200.split.us ], [ %.182, %.preheader200.split.backedge ] ; 2 uses
  switch i32 %.088, label %.critedgethread-pre-split [
    i32 0, label %bb.c
    i32 17, label %bb.b
  ]

bb.b:                                             ; preds = %.preheader200.split
  %i.h = icmp slt i32 %.081, 1
  br i1 %i.h, label %bb.c, label %.critedgethread-pre-split

bb.c:                                             ; preds = %.preheader200.split, %bb.b
  %.182 = phi i32 [ %.081, %.preheader200.split ], [ 1, %bb.b ] ; 3 uses
  %i.i = load i8, ptr %.093.ph, align 1, !tbaa !139
  %.not = icmp eq i8 %i.i, 0
  br i1 %.not, label %.critedgethread-pre-split, label %5

5:                                                ; preds = %bb.c
  store ptr null, ptr %i.b, align 8, !tbaa !262
  br i1 %i.d, label %.preheader200.split.backedge, label %sqlite3SafetyCheckOk.exit.i

sqlite3SafetyCheckOk.exit.i:                      ; preds = %5
  %i.j = load i32, ptr %i.e, align 8, !tbaa !260
  switch i32 %i.j, label %.preheader200.split.backedge [
    i32 -264537850, label %sqlite3LockAndPrepare.exit
    i32 -1607883113, label %sqlite3LockAndPrepare.exit
  ]

.preheader200.split.backedge:                     ; preds = %sqlite3SafetyCheckOk.exit.i, %5, %sqlite3LockAndPrepare.exit
  %.088.be = phi i32 [ 21, %5 ], [ 21, %sqlite3SafetyCheckOk.exit.i ], [ %i.k, %sqlite3LockAndPrepare.exit ]
  br label %.preheader200.split, !llvm.loop !1124

sqlite3LockAndPrepare.exit:                       ; preds = %sqlite3SafetyCheckOk.exit.i, %sqlite3SafetyCheckOk.exit.i
  %i.k = call fastcc i32 @sqlite3Prepare(ptr noundef nonnull %0, ptr noundef nonnull %.093.ph, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a), !inline_history !14 ; 2 uses
  %.not114 = icmp eq i32 %i.k, 0
  br i1 %.not114, label %bb.d, label %.preheader200.split.backedge

bb.d:                                             ; preds = %sqlite3LockAndPrepare.exit
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !262  ; 3 uses
  %.not115 = icmp eq ptr %i.l, null
  br i1 %.not115, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !150
  br label %.preheader200.split.outer

.preheader200.split.outer:                        ; preds = %bb.e, %sqlite3_free.exit
  %.093.ph.a = phi ptr [ %.497.ph, %sqlite3_free.exit ], [ %i.m, %bb.e ]
  %.088.ph.a = phi i32 [ %.189.ph177, %sqlite3_free.exit ], [ 0, %bb.e ]
  %.081.ph.a = phi i32 [ %.4.ph, %sqlite3_free.exit ], [ %.182, %bb.e ]
  br label %.preheader200.split.us, !llvm.loop !1124

bb.f:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 308
  %i.o = load i32, ptr %i.n, align 4, !tbaa !258  ; 6 uses
  %i.p = shl i32 %i.o, 4
  %i.q = or disjoint i32 %i.p, 1                  ; 2 uses
  %i.r = load i8, ptr %i.f, align 2, !tbaa !202
  %i.s = icmp eq i8 %i.r, 0
  br i1 %i.s, label %bb.g, label %.critedgethread-pre-split

bb.g:                                             ; preds = %bb.f
  %i.t = call ptr @sqlite3_malloc(i32 noundef %i.q) ; 11 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %.critedge.sink.split, label %sqlite3DbMallocZero.exit

sqlite3DbMallocZero.exit:                         ; preds = %bb.g
  %i.v = zext i32 %i.q to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.t, i8 0, i64 %i.v, i1 false)
  %i.w = icmp slt i32 %i.o, 1                     ; 2 uses
  %i.x = sext i32 %i.o to i64
  %i.y = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.x ; 3 uses
  %wide.trip.count = zext nneg i32 %i.o to i64
  %wide.trip.count258 = zext nneg i32 %i.o to i64
  br label %sqlite3DbMallocZero.exit.split.us

sqlite3DbMallocZero.exit.split.us:                ; preds = %bb.q, %sqlite3DbMallocZero.exit
  %6 = phi ptr [ %i.l, %sqlite3DbMallocZero.exit ], [ %10, %bb.q ] ; 8 uses
  %.077 = phi i32 [ 0, %sqlite3DbMallocZero.exit ], [ %.279, %bb.q ] ; 3 uses
  %.073 = phi ptr [ null, %sqlite3DbMallocZero.exit ], [ %.2, %bb.q ] ; 2 uses
  %7 = call i32 @sqlite3_step(ptr noundef %6)     ; 5 uses
  br i1 %.not116, label %bb.q, label %sqlite3DbMallocZero.exit.split

sqlite3DbMallocZero.exit.split:                   ; preds = %sqlite3DbMallocZero.exit.split.us
  %i.z = icmp ne i32 %7, 100                      ; 3 uses
  br i1 %i.z, label %bb.h, label %bb.j

bb.h:                                             ; preds = %sqlite3DbMallocZero.exit.split
  %8 = icmp ne i32 %7, 101
  %i.aa = icmp ne i32 %.077, 0
  %or.cond = select i1 %8, i1 true, i1 %i.aa
  br i1 %or.cond, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = load i32, ptr %i.g, align 8, !tbaa !352
  %i.ac = and i32 %i.ab, 256
  %.not117 = icmp eq i32 %i.ac, 0
  br i1 %.not117, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i, %sqlite3DbMallocZero.exit.split
  %9 = icmp ne i32 %.077, 0
  %brmerge = select i1 %9, i1 true, i1 %i.w
  br i1 %brmerge, label %.loopexit198, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %.not.i.i131 = icmp eq ptr %6, null
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 308
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 64
  br i1 %.not.i.i131, label %sqlite3_column_name.exit.thread, label %sqlite3_column_count.exit.i.i

sqlite3_column_count.exit.i.i:                    ; preds = %.lr.ph, %bb.n
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.n ], [ 0, %.lr.ph ] ; 6 uses
  %i.af = load i32, ptr %i.ad, align 4, !tbaa !258
  %i.ag = sext i32 %i.af to i64
  %i.ah = icmp slt i64 %indvars.iv, %i.ag
  br i1 %i.ah, label %bb.k, label %sqlite3_column_name.exit.thread

bb.k:                                             ; preds = %sqlite3_column_count.exit.i.i
  %i.ai = load ptr, ptr %i.ae, align 8, !tbaa !278
  %i.aj = getelementptr inbounds nuw [48 x i8], ptr %i.ai, i64 %indvars.iv
  %i.ak = call fastcc ptr @sqlite3ValueText(ptr noundef %i.aj, i8 noundef zeroext 1) ; 2 uses
  %i.al = load ptr, ptr %6, align 8, !tbaa !179   ; 3 uses
  %.not20.i.i = icmp eq ptr %i.al, null
  br i1 %.not20.i.i, label %sqlite3_column_name.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 42
  %i.an = load i8, ptr %i.am, align 2, !tbaa !202
  %.not21.i.i = icmp eq i8 %i.an, 0
  br i1 %.not21.i.i, label %sqlite3_column_name.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 42
  store i8 0, ptr %i.ao, align 2, !tbaa !202
  br label %sqlite3_column_name.exit.thread

sqlite3_column_name.exit.thread:                  ; preds = %.lr.ph, %sqlite3_column_count.exit.i.i, %bb.m
  %.0205 = phi i64 [ %indvars.iv, %bb.m ], [ %indvars.iv, %sqlite3_column_count.exit.i.i ], [ 0, %.lr.ph ]
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.0205
  store ptr null, ptr %i.ap, align 8, !tbaa !150
  br label %.critedge.sink.split

sqlite3_column_name.exit:                         ; preds = %bb.k, %bb.l
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv
  store ptr %i.ak, ptr %i.aq, align 8, !tbaa !150
  %.not124 = icmp eq ptr %i.ak, null
  br i1 %.not124, label %.critedge.sink.split, label %bb.n

bb.n:                                             ; preds = %sqlite3_column_name.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit198, label %sqlite3_column_count.exit.i.i, !llvm.loop !1125

.loopexit198:                                     ; preds = %bb.n, %bb.j
  %brmerge247 = select i1 %i.z, i1 true, i1 %i.w
  %.073.mux = select i1 %i.z, ptr %.073, ptr %i.y
  br i1 %brmerge247, label %.loopexit, label %.lr.ph241

.lr.ph241:                                        ; preds = %.loopexit198, %bb.p
  %indvars.iv272 = phi i64 [ %indvars.iv.next273, %bb.p ], [ 0, %.loopexit198 ] ; 3 uses
  %i.ar = trunc nuw nsw i64 %indvars.iv272 to i32 ; 2 uses
  %i.as = call ptr @sqlite3_column_text(ptr noundef %6, i32 noundef %i.ar) ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv272
  store ptr %i.as, ptr %i.at, align 8, !tbaa !150
  %.not122 = icmp eq ptr %i.as, null
  br i1 %.not122, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph241
  %i.au = call i32 @sqlite3_column_type(ptr noundef %6, i32 noundef %i.ar)
  %.not123 = icmp eq i32 %i.au, 5
  br i1 %.not123, label %bb.p, label %.critedge.sink.split

bb.p:                                             ; preds = %.lr.ph241, %bb.o
  %indvars.iv.next273 = add nuw nsw i64 %indvars.iv272, 1 ; 2 uses
  %exitcond276.not = icmp eq i64 %indvars.iv.next273, %wide.trip.count258
  br i1 %exitcond276.not, label %.loopexit, label %.lr.ph241, !llvm.loop !1126

.loopexit:                                        ; preds = %bb.p, %.loopexit198
  %.174 = phi ptr [ %.073.mux, %.loopexit198 ], [ %i.y, %bb.p ] ; 2 uses
  %i.av = call i32 %2(ptr noundef %3, i32 noundef %i.o, ptr noundef %.174, ptr noundef nonnull %i.t) #43
  %.not118 = icmp eq i32 %i.av, 0
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !262 ; 2 uses
  br i1 %.not118, label %bb.q, label %.critedge

bb.q:                                             ; preds = %.loopexit, %sqlite3DbMallocZero.exit.split.us
  %10 = phi ptr [ %.pre, %.loopexit ], [ %6, %sqlite3DbMallocZero.exit.split.us ]
  %.279 = phi i32 [ 1, %.loopexit ], [ %.077, %sqlite3DbMallocZero.exit.split.us ]
  %.2 = phi ptr [ %.174, %.loopexit ], [ %.073, %sqlite3DbMallocZero.exit.split.us ]
  %.not119 = icmp eq i32 %7, 100
  br i1 %.not119, label %sqlite3DbMallocZero.exit.split.us, label %.thread

.thread:                                          ; preds = %bb.h, %bb.i, %bb.q
  %11 = load ptr, ptr %i.b, align 8, !tbaa !262   ; 5 uses
  %i.aw = icmp eq ptr %11, null
  br i1 %i.aw, label %.sink.split, label %.thread.thread

.thread.thread:                                   ; preds = %.thread
  %i.ax = getelementptr inbounds nuw i8, ptr %11, i64 116
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !178
  switch i32 %i.ay, label %.sink.split [
    i32 -1108210269, label %sqlite3_finalize.exit
    i32 1369188723, label %sqlite3_finalize.exit
    i32 649915045, label %sqlite3_finalize.exit.thread165
  ]

sqlite3_finalize.exit.thread165:                  ; preds = %.thread.thread
  call fastcc void @sqlite3VdbeDelete(ptr noundef nonnull %11)
  br label %.sink.split

sqlite3_finalize.exit:                            ; preds = %.thread.thread, %.thread.thread
  %i.az = call fastcc i32 @sqlite3VdbeReset(ptr noundef nonnull %11) ; 2 uses
  call fastcc void @sqlite3VdbeDelete(ptr noundef nonnull %11)
  store ptr null, ptr %i.b, align 8, !tbaa !262
  %.not120 = icmp eq i32 %i.az, 17
  br i1 %.not120, label %sqlite3_free.exit, label %bb.r

.sink.split:                                      ; preds = %.thread.thread, %.thread, %sqlite3_finalize.exit.thread165
  %.0.i164.ph = phi i32 [ 0, %sqlite3_finalize.exit.thread165 ], [ 21, %.thread.thread ], [ 0, %.thread ]
  store ptr null, ptr %i.b, align 8, !tbaa !262
  br label %bb.r

bb.r:                                             ; preds = %.sink.split, %sqlite3_finalize.exit
  %.0.i164 = phi i32 [ %i.az, %sqlite3_finalize.exit ], [ %.0.i164.ph, %.sink.split ]
  %i.ba = load ptr, ptr %i.a, align 8, !tbaa !150
  %i.bb = tail call ptr @__ctype_b_loc() #46
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !232
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %bb.r
  %.295 = phi ptr [ %i.ba, %bb.r ], [ %i.bi, %bb.s ] ; 3 uses
  %i.bd = load i8, ptr %.295, align 1, !tbaa !139
  %i.be = zext i8 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %i.bc, i64 %i.be
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !233
  %i.bh = and i16 %i.bg, 8192
  %.not121 = icmp eq i16 %i.bh, 0
  %i.bi = getelementptr inbounds nuw i8, ptr %.295, i64 1
  br i1 %.not121, label %sqlite3_free.exit, label %bb.s, !llvm.loop !1127

sqlite3_free.exit:                                ; preds = %bb.s, %sqlite3_finalize.exit
  %.497.ph = phi ptr [ %.093.ph, %sqlite3_finalize.exit ], [ %.295, %bb.s ]
  %.189.ph177 = phi i32 [ 17, %sqlite3_finalize.exit ], [ %.0.i164, %bb.s ]
  %.4.ph = phi i32 [ %.182, %sqlite3_finalize.exit ], [ 0, %bb.s ]
  %i.bj = getelementptr inbounds i8, ptr %i.t, i64 -8 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !130
  %sext.i = shl i64 %i.bk, 32
  %i.bl = ashr exact i64 %sext.i, 32
  %i.bm = load i64, ptr @mem.5, align 8, !tbaa !125
  %i.bn = sub nsw i64 %i.bm, %i.bl
  store i64 %i.bn, ptr @mem.5, align 8, !tbaa !125
  call void @free(ptr noundef nonnull %i.bj) #43
  br label %.preheader200.split.outer

.critedge.sink.split:                             ; preds = %bb.g, %sqlite3_column_name.exit, %bb.o, %sqlite3_column_name.exit.thread
  %.391.ph.ph = phi i32 [ %7, %sqlite3_column_name.exit ], [ 100, %bb.o ], [ %7, %sqlite3_column_name.exit.thread ], [ 0, %bb.g ]
  %.287.ph.ph = phi ptr [ %i.t, %sqlite3_column_name.exit ], [ %i.t, %bb.o ], [ %i.t, %sqlite3_column_name.exit.thread ], [ null, %bb.g ]
  store i8 1, ptr %i.f, align 2, !tbaa !202
  br label %.critedgethread-pre-split

.critedgethread-pre-split:                        ; preds = %bb.b, %bb.c, %.preheader200.split, %bb.f, %.critedge.sink.split
  %.391.ph = phi i32 [ %.391.ph.ph, %.critedge.sink.split ], [ 17, %bb.b ], [ %.088, %bb.c ], [ %.088, %.preheader200.split ], [ 0, %bb.f ]
  %.287.ph = phi ptr [ %.287.ph.ph, %.critedge.sink.split ], [ null, %bb.f ], [ null, %.preheader200.split ], [ null, %bb.c ], [ null, %bb.b ]
  %.pr = load ptr, ptr %i.b, align 8, !tbaa !262
  br label %.critedge

.critedge:                                        ; preds = %.loopexit, %.critedgethread-pre-split
  %12 = phi ptr [ %.pr, %.critedgethread-pre-split ], [ %.pre, %.loopexit ] ; 4 uses
  %.391 = phi i32 [ %.391.ph, %.critedgethread-pre-split ], [ 4, %.loopexit ] ; 2 uses
  %.287 = phi ptr [ %.287.ph, %.critedgethread-pre-split ], [ %i.t, %.loopexit ] ; 2 uses
  %.not125 = icmp eq ptr %12, null
  br i1 %.not125, label %sqlite3_finalize.exit135, label %bb.t

bb.t:                                             ; preds = %.critedge
  %i.bo = getelementptr inbounds nuw i8, ptr %12, i64 116
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !178
  switch i32 %i.bp, label %sqlite3_finalize.exit135 [
    i32 -1108210269, label %bb.u
    i32 1369188723, label %bb.u
    i32 649915045, label %bb.v
  ]

bb.u:                                             ; preds = %bb.t, %bb.t
  %i.bq = call fastcc i32 @sqlite3VdbeReset(ptr noundef nonnull %12) ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  call fastcc void @sqlite3VdbeDelete(ptr noundef nonnull %12)
  br label %sqlite3_finalize.exit135

sqlite3_finalize.exit135:                         ; preds = %bb.v, %bb.t, %.critedge
  %.not126 = icmp eq ptr %.287, null
  br i1 %.not126, label %13, label %sqlite3_free.exit137

sqlite3_free.exit137:                             ; preds = %sqlite3_finalize.exit135
  %i.br = getelementptr inbounds i8, ptr %.287, i64 -8 ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !130
  %sext.i136 = shl i64 %i.bs, 32
  %i.bt = ashr exact i64 %sext.i136, 32
  %i.bu = load i64, ptr @mem.5, align 8, !tbaa !125
  %i.bv = sub nsw i64 %i.bu, %i.bt
  store i64 %i.bv, ptr @mem.5, align 8, !tbaa !125
  call void @free(ptr noundef nonnull %i.br) #43
  br label %13

13:                                               ; preds = %sqlite3_free.exit137, %sqlite3_finalize.exit135
  br i1 %i.d, label %sqlite3ApiExit.exit, label %bb.w

bb.w:                                             ; preds = %13
  %i.bw = load i8, ptr %i.f, align 2, !tbaa !202
  %.not7.i = icmp eq i8 %i.bw, 0
  br i1 %.not7.i, label %sqlite3ApiExit.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !191 ; 3 uses
  %.not12.i.i = icmp eq ptr %i.by, null
  br i1 %.not12.i.i, label %sqlite3Error.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 7, ptr %i.bz, align 8, !tbaa !201
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 36 ; 2 uses
  %i.cb = load i16, ptr %i.ca, align 4, !tbaa !197
  %i.cc = and i16 %i.cb, -32
  %i.cd = or disjoint i16 %i.cc, 1
  store i16 %i.cd, ptr %i.ca, align 4, !tbaa !197
  %i.ce = getelementptr inbounds nuw i8, ptr %i.by, i64 38
  store i8 5, ptr %i.ce, align 2, !tbaa !199
  br label %sqlite3Error.exit.i

sqlite3Error.exit.i:                              ; preds = %bb.y, %bb.x
  store i8 0, ptr %i.f, align 2, !tbaa !202
  br label %sqlite3ApiExit.exit.thread

sqlite3ApiExit.exit:                              ; preds = %13
  %14 = and i32 %.391, 255                        ; 3 uses
  %.not127 = icmp eq i32 %14, 0
  br i1 %.not127, label %sqlite3_errcode.exit.thread.a, label %sqlite3_errcode.exit.thread

sqlite3ApiExit.exit.thread:                       ; preds = %bb.w, %sqlite3Error.exit.i
  %.0.ph.i = phi i32 [ %.391, %bb.w ], [ 7, %sqlite3Error.exit.i ]
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !205 ; 2 uses
  %i.ch = and i32 %i.cg, %.0.ph.i                 ; 7 uses
  %.not127196 = icmp eq i32 %i.ch, 0
  br i1 %.not127196, label %sqlite3_errcode.exit.thread.a, label %bb.z

bb.z:                                             ; preds = %sqlite3ApiExit.exit.thread
  %.val.i = load i32, ptr %i.e, align 8, !tbaa !260
  switch i32 %.val.i, label %sqlite3_errcode.exit [
    i32 -264537850, label %bb.aa
    i32 -1607883113, label %bb.aa
    i32 1266094736, label %bb.aa
  ]

bb.aa:                                            ; preds = %bb.z, %bb.z, %bb.z
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !201
  %i.ck = and i32 %i.cg, %i.cj
  br label %sqlite3_errcode.exit

sqlite3_errcode.exit:                             ; preds = %bb.z, %bb.aa
  %.0.i140 = phi i32 [ 21, %bb.z ], [ %i.ck, %bb.aa ]
  %i.cl = icmp eq i32 %i.ch, %.0.i140
  %i.cm = icmp ne ptr %4, null
  %or.cond3 = and i1 %i.cm, %i.cl
  br i1 %or.cond3, label %bb.ab, label %sqlite3_errcode.exit.thread.a

sqlite3_errcode.exit.thread:                      ; preds = %sqlite3ApiExit.exit
  %15 = icmp eq i32 %14, 7
  %16 = icmp ne ptr %4, null
  %or.cond3285 = and i1 %16, %15
  br i1 %or.cond3285, label %sqlite3_errmsg.exit, label %sqlite3_errcode.exit.thread.a

bb.ab:                                            ; preds = %sqlite3_errcode.exit
  %.val.i142 = load i32, ptr %i.e, align 8, !tbaa !260
  switch i32 %.val.i142, label %sqlite3_errmsg.exit [
    i32 -264537850, label %bb.ac
    i32 -1607883113, label %bb.ac
    i32 1266094736, label %bb.ac
  ]

bb.ac:                                            ; preds = %bb.ab, %bb.ab, %bb.ab
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !201
  %i.cp = icmp eq i32 %i.co, 21
  br i1 %i.cp, label %sqlite3_errmsg.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !191
  %i.cs = call fastcc ptr @sqlite3ValueText(ptr noundef %i.cr, i8 noundef zeroext 1) ; 2 uses
  %i.ct = icmp eq ptr %i.cs, null
  br i1 %i.ct, label %bb.ae, label %sqlite3_errmsg.exit

bb.ae:                                            ; preds = %bb.ad
  %i.cu = load i32, ptr %i.cn, align 8, !tbaa !201
  %i.cv = call fastcc ptr @sqlite3ErrStr(i32 noundef %i.cu)
  br label %sqlite3_errmsg.exit

sqlite3_errmsg.exit:                              ; preds = %sqlite3_errcode.exit.thread, %bb.ab, %bb.ac, %bb.ad, %bb.ae
  %17 = phi i32 [ 7, %sqlite3_errcode.exit.thread ], [ %i.ch, %bb.ad ], [ %i.ch, %bb.ae ], [ %i.ch, %bb.ac ], [ %i.ch, %bb.ab ] ; 2 uses
  %.08.i = phi ptr [ @.str.206, %sqlite3_errcode.exit.thread ], [ %i.cs, %bb.ad ], [ %i.cv, %bb.ae ], [ @.str.566, %bb.ac ], [ @.str.566, %bb.ab ]
  %i.cw = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.08.i) #42
  %i.cx = trunc i64 %i.cw to i32
  %i.cy = add i32 %i.cx, 1                        ; 2 uses
  %i.cz = call ptr @sqlite3_malloc(i32 noundef %i.cy) ; 3 uses
  store ptr %i.cz, ptr %4, align 8, !tbaa !150
  %.not129 = icmp eq ptr %i.cz, null
  br i1 %.not129, label %bb.ak, label %18

18:                                               ; preds = %sqlite3_errmsg.exit
  br i1 %i.d, label %sqlite3_errmsg.exit146, label %bb.af

bb.af:                                            ; preds = %18
  %.val.i144 = load i32, ptr %i.e, align 8, !tbaa !260
  switch i32 %.val.i144, label %sqlite3_errmsg.exit146 [
    i32 -264537850, label %bb.ag
    i32 -1607883113, label %bb.ag
    i32 1266094736, label %bb.ag
  ]

bb.ag:                                            ; preds = %bb.af, %bb.af, %bb.af
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.db = load i32, ptr %i.da, align 8, !tbaa !201
  %i.dc = icmp eq i32 %i.db, 21
  br i1 %i.dc, label %sqlite3_errmsg.exit146, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !191
  %i.df = call fastcc ptr @sqlite3ValueText(ptr noundef %i.de, i8 noundef zeroext 1) ; 2 uses
  %i.dg = icmp eq ptr %i.df, null
  br i1 %i.dg, label %bb.ai, label %sqlite3_errmsg.exit146

bb.ai:                                            ; preds = %bb.ah
  %i.dh = load i32, ptr %i.da, align 8, !tbaa !201
  %i.di = call fastcc ptr @sqlite3ErrStr(i32 noundef %i.dh)
  br label %sqlite3_errmsg.exit146

sqlite3_errmsg.exit146:                           ; preds = %18, %bb.af, %bb.ag, %bb.ah, %bb.ai
  %.08.i145 = phi ptr [ @.str.206, %18 ], [ %i.df, %bb.ah ], [ %i.di, %bb.ai ], [ @.str.566, %bb.ag ], [ @.str.566, %bb.af ]
  %i.dj = sext i32 %i.cy to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cz, ptr nonnull align 1 %.08.i145, i64 %i.dj, i1 false)
  br label %bb.ak

sqlite3_errcode.exit.thread.a:                    ; preds = %sqlite3_errcode.exit.thread, %sqlite3ApiExit.exit.thread, %sqlite3_errcode.exit, %sqlite3ApiExit.exit
  %19 = phi i32 [ 0, %sqlite3ApiExit.exit.thread ], [ %i.ch, %sqlite3_errcode.exit ], [ 0, %sqlite3ApiExit.exit ], [ %14, %sqlite3_errcode.exit.thread ] ; 2 uses
  %.not128 = icmp eq ptr %4, null
  br i1 %.not128, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %sqlite3_errcode.exit.thread.a
  store ptr null, ptr %4, align 8, !tbaa !150
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %sqlite3_errcode.exit.thread.a, %sqlite3_errmsg.exit146, %sqlite3_errmsg.exit, %bb.a
  %.092 = phi i32 [ 0, %bb.a ], [ %19, %bb.aj ], [ %17, %sqlite3_errmsg.exit ], [ %17, %sqlite3_errmsg.exit146 ], [ %19, %sqlite3_errcode.exit.thread.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  ret i32 %.092
}

; Function Attrs: nounwind uwtable
define dso_local i32 @sqlite3_prepare(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %sqlite3LockAndPrepare.exit, label %sqlite3SafetyCheckOk.exit

sqlite3SafetyCheckOk.exit:                        ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load i32, ptr %i.b, align 8, !tbaa !260
  switch i32 %i.c, label %sqlite3LockAndPrepare.exit [
    i32 -264537850, label %bb.b
    i32 -1607883113, label %bb.b
  ]

bb.b:                                             ; preds = %sqlite3SafetyCheckOk.exit, %sqlite3SafetyCheckOk.exit
  %i.d = tail call fastcc i32 @sqlite3Prepare(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i32 noundef 0, ptr noundef %3, ptr noundef %4), !inline_history !15
  br label %sqlite3LockAndPrepare.exit

sqlite3LockAndPrepare.exit:                       ; preds = %sqlite3SafetyCheckOk.exit, %bb.a, %bb.b
  %.0.i = phi i32 [ %i.d, %bb.b ], [ 21, %sqlite3SafetyCheckOk.exit ], [ 21, %bb.a ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #20

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @sqlite3_errcode(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #13 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 72
  %.val = load i32, ptr %i.a, align 8, !tbaa !260
  switch i32 %.val, label %.critedge [
    i32 -264537850, label %bb.c
    i32 -1607883113, label %bb.c
    i32 1266094736, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 42
  %i.c = load i8, ptr %i.b, align 2, !tbaa !202
  %.not8 = icmp eq i8 %i.c, 0
  br i1 %.not8, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i32, ptr %i.d, align 8, !tbaa !201
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.g = load i32, ptr %i.f, align 4, !tbaa !205
  %i.h = and i32 %i.g, %i.e
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.c, %bb.a, %bb.d
  %.0 = phi i32 [ 21, %bb.b ], [ %i.h, %bb.d ], [ 7, %bb.a ], [ 7, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @sqlite3_prepare_v2(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %sqlite3LockAndPrepare.exit, label %sqlite3SafetyCheckOk.exit.i

sqlite3SafetyCheckOk.exit.i:                      ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load i32, ptr %i.b, align 8, !tbaa !260
  switch i32 %i.c, label %sqlite3LockAndPrepare.exit [
    i32 -264537850, label %bb.b
    i32 -1607883113, label %bb.b
  ]

bb.b:                                             ; preds = %sqlite3SafetyCheckOk.exit.i, %sqlite3SafetyCheckOk.exit.i
  %i.d = tail call fastcc i32 @sqlite3Prepare(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i32 noundef 1, ptr noundef %3, ptr noundef %4), !inline_history !15
  br label %sqlite3LockAndPrepare.exit

sqlite3LockAndPrepare.exit:                       ; preds = %bb.a, %sqlite3SafetyCheckOk.exit.i, %bb.b
  %.0.i = phi i32 [ %i.d, %bb.b ], [ 21, %sqlite3SafetyCheckOk.exit.i ], [ 21, %bb.a ]
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define dso_local i32 @sqlite3_prepare16(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call fastcc i32 @sqlite3Prepare16(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef 0, ptr noundef %3, ptr noundef %4)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @sqlite3Prepare16(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef range(i32 0, 2) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(address_is_null) %5) unnamed_addr #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #43
  store ptr null, ptr %i.a, align 8, !tbaa !150
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %sqlite3SafetyCheckOk.exit.thread, label %sqlite3SafetyCheckOk.exit

sqlite3SafetyCheckOk.exit:                        ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !260
  switch i32 %i.d, label %sqlite3SafetyCheckOk.exit.thread [
    i32 -264537850, label %bb.b
    i32 -1607883113, label %bb.b
  ]

bb.b:                                             ; preds = %sqlite3SafetyCheckOk.exit, %sqlite3SafetyCheckOk.exit
  %i.e = tail call fastcc ptr @sqlite3Utf16to8(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2) ; 8 uses
  %.not25 = icmp eq ptr %i.e, null
  br i1 %.not25, label %sqlite3_free.exit, label %sqlite3SafetyCheckOk.exit.i

sqlite3SafetyCheckOk.exit.i:                      ; preds = %bb.b
  %i.f = load i32, ptr %i.c, align 8, !tbaa !260
  switch i32 %i.f, label %.thread [
    i32 -264537850, label %sqlite3LockAndPrepare.exit
    i32 -1607883113, label %sqlite3LockAndPrepare.exit
  ]

sqlite3LockAndPrepare.exit:                       ; preds = %sqlite3SafetyCheckOk.exit.i, %sqlite3SafetyCheckOk.exit.i
  %i.g = call fastcc i32 @sqlite3Prepare(ptr noundef nonnull %0, ptr noundef nonnull %i.e, i32 noundef -1, i32 noundef range(i32 0, 2) %3, ptr noundef %4, ptr noundef nonnull %i.a), !inline_history !15 ; 2 uses
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !150 ; 2 uses
  %i.h = icmp ne ptr %.pre, null
  %i.i = icmp ne ptr %5, null
  %or.cond = and i1 %i.i, %i.h
  br i1 %or.cond, label %bb.c, label %.thread

bb.c:                                             ; preds = %sqlite3LockAndPrepare.exit
  %i.j = ptrtoint ptr %.pre to i64
  %i.k = ptrtoint ptr %i.e to i64
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = and i64 %i.l, 2147483648
  %i.n = icmp eq i64 %i.m, 0
  %i.o = and i64 %i.l, 4294967295
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.o
  %.0.i27 = select i1 %i.n, ptr %i.p, ptr inttoptr (i64 -1 to ptr) ; 2 uses
  %i.q = load i8, ptr %i.e, align 1, !tbaa !139   ; 2 uses
  %i.r = icmp ne i8 %i.q, 0
  %i.s = icmp ult ptr %i.e, %.0.i27
  %i.t = select i1 %i.r, i1 %i.s, i1 false
  br i1 %i.t, label %.lr.ph.i, label %sqlite3Utf8CharLen.exit

.lr.ph.i:                                         ; preds = %bb.c, %.loopexit.i
  %i.u = phi i8 [ %i.aa, %.loopexit.i ], [ %i.q, %bb.c ]
  %.01116.i = phi ptr [ %.2.i, %.loopexit.i ], [ %i.e, %bb.c ]
  %.01215.i = phi i32 [ %i.ab, %.loopexit.i ], [ 0, %bb.c ]
  %i.v = getelementptr inbounds nuw i8, ptr %.01116.i, i64 1 ; 3 uses
  %i.w = icmp ugt i8 %i.u, -65
  br i1 %i.w, label %.preheader.i, label %.lr.ph..loopexit_crit_edge.i

.lr.ph..loopexit_crit_edge.i:                     ; preds = %.lr.ph.i
  %.pre.i = load i8, ptr %i.v, align 1, !tbaa !139
  br label %.loopexit.i

.preheader.i:                                     ; preds = %.lr.ph.i, %.preheader.i
  %.1.i = phi ptr [ %i.z, %.preheader.i ], [ %i.v, %.lr.ph.i ] ; 3 uses
  %i.x = load i8, ptr %.1.i, align 1, !tbaa !139  ; 2 uses
  %i.y = icmp slt i8 %i.x, -64
  %i.z = getelementptr inbounds nuw i8, ptr %.1.i, i64 1
  br i1 %i.y, label %.preheader.i, label %.loopexit.i, !llvm.loop !16

.loopexit.i:                                      ; preds = %.preheader.i, %.lr.ph..loopexit_crit_edge.i
  %i.aa = phi i8 [ %.pre.i, %.lr.ph..loopexit_crit_edge.i ], [ %i.x, %.preheader.i ] ; 2 uses
  %.2.i = phi ptr [ %i.v, %.lr.ph..loopexit_crit_edge.i ], [ %.1.i, %.preheader.i ] ; 2 uses
  %i.ab = add nuw nsw i32 %.01215.i, 1            ; 2 uses
  %i.ac = icmp ne i8 %i.aa, 0
  %i.ad = icmp ult ptr %.2.i, %.0.i27
  %i.ae = select i1 %i.ac, i1 %i.ad, i1 false
  br i1 %i.ae, label %.lr.ph.i, label %sqlite3Utf8CharLen.exit, !llvm.loop !17

sqlite3Utf8CharLen.exit:                          ; preds = %.loopexit.i, %bb.c
  %.012.lcssa.i = phi i32 [ 0, %bb.c ], [ %i.ab, %.loopexit.i ] ; 3 uses
  %i.af = zext i32 %.012.lcssa.i to i64
  %i.ag = shl nuw nsw i64 %i.af, 1
  %scevgep = getelementptr i8, ptr %1, i64 %i.ag  ; 2 uses
  %exitcond.not.i52 = icmp eq i32 %.012.lcssa.i, 0
  br i1 %exitcond.not.i52, label %sqlite3LockAndPrepare.exit.thread, label %.lr.ph

.split.i:                                         ; preds = %.lr.ph
  %i.ah = add nuw i32 %.14953.i54, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ah, %.012.lcssa.i
  br i1 %exitcond.not.i, label %sqlite3LockAndPrepare.exit.thread, label %.lr.ph, !llvm.loop !1128

.lr.ph:                                           ; preds = %sqlite3Utf8CharLen.exit, %.split.i
  %.14953.i54 = phi i32 [ %i.ah, %.split.i ], [ 0, %sqlite3Utf8CharLen.exit ]
  %.24554.i53 = phi ptr [ %i.al, %.split.i ], [ %1, %sqlite3Utf8CharLen.exit ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.24554.i53, i64 1
  %i.aj = load i8, ptr %.24554.i53, align 1, !tbaa !139
  %i.ak = sext i8 %i.aj to i32
end_hunk_0
begin_hunk_1_@sqlite3CreateIndex:bb.a
  %i.nd = sub nsw i64 %i.nc, %i.nb
  store i64 %i.nd, ptr @mem.5, align 8, !tbaa !125
  call void @free(ptr noundef nonnull %i.mz) #43
  br label %sqlite3_free.exit380

sqlite3_free.exit380:                             ; preds = %bb.ch, %.thread439
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @sqlite3CreateForeignKey(ptr nofree noundef captures(none) %0, ptr noundef captures(address_is_null) %1, ptr noundef nonnull %2, ptr noundef captures(address_is_null) %3, i32 noundef %4) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !379  ; 8 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %sqlite3_free.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = load i32, ptr %i.d, align 8, !tbaa !293
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %sqlite3_free.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.g = load i8, ptr %i.f, align 8, !tbaa !375
  %.not120 = icmp eq i8 %i.g, 0
  br i1 %.not120, label %bb.d, label %sqlite3_free.exit

bb.d:                                             ; preds = %bb.c
  %i.h = icmp eq ptr %1, null                     ; 2 uses
  br i1 %i.h, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !301  ; 2 uses
  %i.k = icmp slt i32 %i.j, 1
  br i1 %i.k, label %sqlite3_free.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not123 = icmp eq ptr %3, null
  br i1 %.not123, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = load i32, ptr %3, align 8, !tbaa !806
  %.not124 = icmp eq i32 %i.l, 1
  br i1 %.not124, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !302
  %i.o = zext nneg i32 %i.j to i64
  %i.p = getelementptr [40 x i8], ptr %i.n, i64 %i.o
  %i.q = getelementptr i8, ptr %i.p, i64 -40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !306
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.372, ptr noundef %i.r, ptr noundef nonnull %2)
  br label %sqlite3_free.exit

bb.i:                                             ; preds = %bb.d
  %.not121 = icmp eq ptr %3, null
  %.pre = load i32, ptr %1, align 8, !tbaa !806   ; 3 uses
  br i1 %.not121, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = load i32, ptr %3, align 8, !tbaa !806
  %.not122 = icmp eq i32 %i.s, %.pre
  br i1 %.not122, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.373)
  br label %sqlite3_free.exit

.thread:                                          ; preds = %bb.i, %bb.j, %bb.f, %bb.g
  %.1106 = phi i32 [ 1, %bb.f ], [ 1, %bb.g ], [ %.pre, %bb.j ], [ %.pre, %bb.i ] ; 6 uses
  %i.t = sext i32 %.1106 to i64
  %i.u = shl nsw i64 %i.t, 4                      ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.w = load i32, ptr %i.v, align 8
  %i.x = lshr i32 %i.w, 1
  %i.y = trunc i64 %i.u to i32
  %i.z = add nuw i32 %i.x, 57
  %i.aa = add i32 %i.z, %i.y                      ; 3 uses
  %.not125 = icmp ne ptr %3, null                 ; 2 uses
  br i1 %.not125, label %.preheader140, label %.loopexit141

.preheader140:                                    ; preds = %.thread
  %i.ab = load i32, ptr %3, align 8, !tbaa !806   ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %.lr.ph, label %.loopexit141

.lr.ph:                                           ; preds = %.preheader140
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !805
  %wide.trip.count = zext nneg i32 %i.ab to i64
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %bb.l
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.l ] ; 2 uses
  %.0109144 = phi i32 [ %i.aa, %.lr.ph ], [ %i.al, %bb.l ]
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %indvars.iv
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !810
  %i.ai = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ah) #42
  %i.aj = trunc i64 %i.ai to i32
  %i.ak = add i32 %.0109144, 1
  %i.al = add i32 %i.ak, %i.aj                    ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit141, label %bb.l, !llvm.loop !1611

.loopexit141:                                     ; preds = %bb.l, %.preheader140, %.thread
  %.1110 = phi i32 [ %i.aa, %.thread ], [ %i.aa, %.preheader140 ], [ %i.al, %bb.l ] ; 3 uses
  %i.am = load ptr, ptr %0, align 8, !tbaa !291   ; 2 uses
  %.not.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i, label %sqlite3DbMallocRaw.exit.i, label %bb.m

bb.m:                                             ; preds = %.loopexit141
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 42 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 2, !tbaa !202
  %i.ap = icmp eq i8 %i.ao, 0
  br i1 %i.ap, label %bb.n, label %sqlite3_free.exit

bb.n:                                             ; preds = %bb.m
  %i.aq = tail call ptr @sqlite3_malloc(i32 noundef %.1110) ; 2 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i8 1, ptr %i.an, align 2, !tbaa !202
  br label %sqlite3_free.exit

sqlite3DbMallocRaw.exit.i:                        ; preds = %.loopexit141
  %i.as = tail call ptr @sqlite3_malloc(i32 noundef %.1110) ; 2 uses
  %.not.i = icmp eq ptr %i.as, null
  br i1 %.not.i, label %sqlite3_free.exit, label %bb.p

bb.p:                                             ; preds = %sqlite3DbMallocRaw.exit.i, %bb.n
  %.0.i11.i = phi ptr [ %i.as, %sqlite3DbMallocRaw.exit.i ], [ %i.aq, %bb.n ] ; 14 uses
  %i.at = zext i32 %.1110 to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %.0.i11.i, i8 0, i64 %i.at, i1 false)
  store ptr %i.b, ptr %.0.i11.i, align 8, !tbaa !1615
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !399
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.i11.i, i64 8
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !402
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.i11.i, i64 56 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.i11.i, i64 40 ; 4 uses
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !902
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.u ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.i11.i, i64 16
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !752
  %i.bb = load ptr, ptr %2, align 8, !tbaa !154
  %i.bc = load i32, ptr %i.v, align 8
  %i.bd = lshr i32 %i.bc, 1
  %i.be = zext nneg i32 %i.bd to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.az, ptr align 1 %i.bb, i64 %i.be, i1 false)
  %i.bf = load i32, ptr %i.v, align 8
  %i.bg = lshr i32 %i.bf, 1
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bh
  store i8 0, ptr %i.bi, align 1, !tbaa !139
  %i.bj = load i32, ptr %i.v, align 8
  %i.bk = lshr i32 %i.bj, 1
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 1
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.i11.i, i64 24
  store ptr null, ptr %i.bo, align 8, !tbaa !753
  %i.bp = getelementptr inbounds nuw i8, ptr %.0.i11.i, i64 32
  store i32 %.1106, ptr %i.bp, align 8, !tbaa !903
  br i1 %i.h, label %5, label %.preheader138

.preheader138:                                    ; preds = %bb.p
  %i.bq = icmp sgt i32 %.1106, 0
  br i1 %i.bq, label %.preheader137.lr.ph, label %.loopexit

.preheader137.lr.ph:                              ; preds = %.preheader138
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !301 ; 2 uses
  %i.bt = icmp sgt i32 %i.bs, 0
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br i1 %i.bt, label %.preheader137.lr.ph.split.us, label %.preheader137.lr.ph..thread131_crit_edge

.preheader137.lr.ph..thread131_crit_edge:         ; preds = %.preheader137.lr.ph
  %.pre172 = load ptr, ptr %i.bu, align 8, !tbaa !805
  %.phi.trans.insert173 = getelementptr inbounds nuw i8, ptr %.pre172, i64 8
  %.pre174 = load ptr, ptr %.phi.trans.insert173, align 8, !tbaa !810
  br label %.thread131

.preheader137.lr.ph.split.us:                     ; preds = %.preheader137.lr.ph
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !302
  %i.bx = load ptr, ptr %i.bu, align 8, !tbaa !805
  %wide.trip.count165 = zext nneg i32 %.1106 to i64
  %wide.trip.count160 = zext nneg i32 %i.bs to i64
  br label %.preheader137.us

5:                                                ; preds = %bb.p
  %6 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %7 = load i32, ptr %6, align 8, !tbaa !301
  %8 = add nsw i32 %7, -1
  %9 = load ptr, ptr %i.ay, align 8, !tbaa !902
  store i32 %8, ptr %9, align 8, !tbaa !905
  br label %.loopexit139

.preheader137.us:                                 ; preds = %.preheader137.lr.ph.split.us, %bb.t
  %indvars.iv162 = phi i64 [ 0, %.preheader137.lr.ph.split.us ], [ %indvars.iv.next163, %bb.t ] ; 3 uses
  %i.by = getelementptr inbounds nuw [24 x i8], ptr %i.bx, i64 %indvars.iv162
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !810 ; 3 uses
  br label %bb.q

bb.q:                                             ; preds = %.preheader137.us, %bb.s
  %indvars.iv157 = phi i64 [ 0, %.preheader137.us ], [ %indvars.iv.next158, %bb.s ] ; 3 uses
  %i.cb = getelementptr inbounds nuw [40 x i8], ptr %i.bw, i64 %indvars.iv157
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !306 ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !139 ; 2 uses
  %.not10.i.us = icmp eq i8 %i.cd, 0
  br i1 %.not10.i.us, label %sqlite3StrICmp.exit.us, label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %bb.q, %bb.r
  %i.ce = phi i8 [ %i.cp, %bb.r ], [ %i.cd, %bb.q ] ; 2 uses
  %.012.i.us = phi ptr [ %i.co, %bb.r ], [ %i.ca, %bb.q ] ; 3 uses
  %.0911.i.us = phi ptr [ %i.cn, %bb.r ], [ %i.cc, %bb.q ]
  %i.cf = zext i8 %i.ce to i64
  %i.cg = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !139
  %i.ci = load i8, ptr %.012.i.us, align 1, !tbaa !139
  %i.cj = zext i8 %i.ci to i64
  %i.ck = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !139
  %i.cm = icmp eq i8 %i.ch, %i.cl
  br i1 %i.cm, label %bb.r, label %.critedge.loopexit.i.ussplit

bb.r:                                             ; preds = %.lr.ph.i.us
  %i.cn = getelementptr inbounds nuw i8, ptr %.0911.i.us, i64 1 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.012.i.us, i64 1 ; 2 uses
  %i.cp = load i8, ptr %i.cn, align 1, !tbaa !139 ; 2 uses
  %.not.i128.us = icmp eq i8 %i.cp, 0
  br i1 %.not.i128.us, label %..critedge.loopexit.i.us_crit_edge, label %.lr.ph.i.us, !llvm.loop !10

..critedge.loopexit.i.us_crit_edge:               ; preds = %bb.r
  br label %sqlite3StrICmp.exit.us, !llvm.loop !10

.critedge.loopexit.i.ussplit:                     ; preds = %.lr.ph.i.us
  %i.cq = zext i8 %i.ce to i64
  br label %sqlite3StrICmp.exit.us

sqlite3StrICmp.exit.us:                           ; preds = %..critedge.loopexit.i.us_crit_edge, %.critedge.loopexit.i.ussplit, %bb.q
  %.0.lcssa.i.us = phi ptr [ %i.ca, %bb.q ], [ %i.co, %..critedge.loopexit.i.us_crit_edge ], [ %.012.i.us, %.critedge.loopexit.i.ussplit ]
  %.lcssa.i.us = phi i64 [ 0, %bb.q ], [ 0, %..critedge.loopexit.i.us_crit_edge ], [ %i.cq, %.critedge.loopexit.i.ussplit ]
  %i.cr = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %.lcssa.i.us
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !139
  %i.ct = load i8, ptr %.0.lcssa.i.us, align 1, !tbaa !139
  %i.cu = zext i8 %i.ct to i64
  %i.cv = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.cu
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !139
  %i.cx = icmp eq i8 %i.cs, %i.cw
  br i1 %i.cx, label %bb.t, label %bb.s

bb.s:                                             ; preds = %sqlite3StrICmp.exit.us
  %indvars.iv.next158 = add nuw nsw i64 %indvars.iv157, 1 ; 2 uses
  %exitcond161.not = icmp eq i64 %indvars.iv.next158, %wide.trip.count160
  br i1 %exitcond161.not, label %.thread131, label %bb.q, !llvm.loop !1612

bb.t:                                             ; preds = %sqlite3StrICmp.exit.us
  %i.cy = trunc nuw nsw i64 %indvars.iv157 to i32
  %i.cz = load ptr, ptr %i.ay, align 8, !tbaa !902
  %i.da = getelementptr inbounds nuw [16 x i8], ptr %i.cz, i64 %indvars.iv162
  store i32 %i.cy, ptr %i.da, align 8, !tbaa !905
  %indvars.iv.next163 = add nuw nsw i64 %indvars.iv162, 1 ; 2 uses
  %exitcond166.not = icmp eq i64 %indvars.iv.next163, %wide.trip.count165
  br i1 %exitcond166.not, label %.loopexit139, label %.preheader137.us, !llvm.loop !1613

.loopexit139:                                     ; preds = %bb.t, %5
  %i.db = icmp sgt i32 %.1106, 0
  %or.cond = select i1 %.not125, i1 %i.db, i1 false
  br i1 %or.cond, label %.lr.ph153, label %.loopexit

.lr.ph153:                                        ; preds = %.loopexit139
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 16
  %wide.trip.count170 = zext nneg i32 %.1106 to i64
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph153, %bb.u
  %indvars.iv167 = phi i64 [ 0, %.lr.ph153 ], [ %indvars.iv.next168, %bb.u ] ; 3 uses
  %.0104152 = phi ptr [ %i.bn, %.lr.ph153 ], [ %i.do, %bb.u ] ; 4 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !805
  %i.de = getelementptr inbounds nuw [24 x i8], ptr %i.dd, i64 %indvars.iv167
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !810 ; 2 uses
  %i.dh = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dg) #42
  %i.di = load ptr, ptr %i.ay, align 8, !tbaa !902
  %i.dj = getelementptr inbounds nuw [16 x i8], ptr %i.di, i64 %indvars.iv167
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  store ptr %.0104152, ptr %i.dk, align 8, !tbaa !906
  %sext = shl i64 %i.dh, 32                       ; 2 uses
  %i.dl = ashr exact i64 %sext, 32                ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0104152, ptr nonnull align 1 %i.dg, i64 %i.dl, i1 false)
  %i.dm = getelementptr inbounds i8, ptr %.0104152, i64 %i.dl
  store i8 0, ptr %i.dm, align 1, !tbaa !139
  %sext127 = add i64 %sext, 4294967296
  %i.dn = ashr exact i64 %sext127, 32
  %i.do = getelementptr inbounds i8, ptr %.0104152, i64 %i.dn
  %indvars.iv.next168 = add nuw nsw i64 %indvars.iv167, 1 ; 2 uses
  %exitcond171.not = icmp eq i64 %indvars.iv.next168, %wide.trip.count170
  br i1 %exitcond171.not, label %.loopexit, label %bb.u, !llvm.loop !1614

.loopexit:                                        ; preds = %bb.u, %.preheader138, %.loopexit139
  %i.dp = getelementptr inbounds nuw i8, ptr %.0.i11.i, i64 48
  store i8 0, ptr %i.dp, align 8, !tbaa !852
  %i.dq = trunc i32 %4 to i8
  %i.dr = getelementptr inbounds nuw i8, ptr %.0.i11.i, i64 50
  store i8 %i.dq, ptr %i.dr, align 2, !tbaa !1616
  %i.ds = lshr i32 %4, 8
  %i.dt = trunc i32 %i.ds to i8
  %i.du = getelementptr inbounds nuw i8, ptr %.0.i11.i, i64 49
  store i8 %i.dt, ptr %i.du, align 1, !tbaa !1617
  %i.dv = lshr i32 %4, 16
  %i.dw = trunc i32 %i.dv to i8
  %i.dx = getelementptr inbounds nuw i8, ptr %.0.i11.i, i64 51
  store i8 %i.dw, ptr %i.dx, align 1, !tbaa !1618
  store ptr %.0.i11.i, ptr %i.au, align 8, !tbaa !399
  br label %sqlite3_free.exit

.thread131:                                       ; preds = %bb.s, %.preheader137.lr.ph..thread131_crit_edge
  %i.dy = phi ptr [ %.pre174, %.preheader137.lr.ph..thread131_crit_edge ], [ %i.ca, %bb.s ]
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.374, ptr noundef %i.dy)
  %i.dz = getelementptr inbounds i8, ptr %.0.i11.i, i64 -8 ; 2 uses
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !130
  %sext.i = shl i64 %i.ea, 32
  %i.eb = ashr exact i64 %sext.i, 32
  %i.ec = load i64, ptr @mem.5, align 8, !tbaa !125
  %i.ed = sub nsw i64 %i.ec, %i.eb
  store i64 %i.ed, ptr @mem.5, align 8, !tbaa !125
  tail call void @free(ptr noundef nonnull %i.dz) #43
  br label %sqlite3_free.exit

sqlite3_free.exit:                                ; preds = %bb.m, %bb.o, %sqlite3DbMallocRaw.exit.i, %bb.h, %bb.e, %bb.k, %.loopexit, %bb.c, %bb.b, %bb.a, %.thread131
  tail call fastcc void @sqlite3ExprListDelete(ptr noundef %1)
  tail call fastcc void @sqlite3ExprListDelete(ptr noundef %3)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @sqlite3DropTable(ptr noundef %0, ptr noundef captures(address_is_null) %1, i32 noundef range(i32 0, 2) %2, i32 noundef %3) unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !291    ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !293
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %.thread140

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 42
  %i.e = load i8, ptr %i.d, align 2, !tbaa !202
  %.not93 = icmp eq i8 %i.e, 0
  br i1 %.not93, label %bb.c, label %.thread140

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !162  ; 3 uses
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !161  ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.k = load i8, ptr %i.j, align 8, !tbaa !241
  %.not.i123 = icmp eq i8 %i.k, 0
  br i1 %.not.i123, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = tail call fastcc i32 @sqlite3Init(ptr noundef nonnull %i.a, ptr noundef nonnull %i.l), !inline_history !899 ; 2 uses
  %.not8.i = icmp eq i32 %i.m, 0
  br i1 %.not8.i, label %..thread_crit_edge, label %sqlite3ReadSchema.exit

..thread_crit_edge:                               ; preds = %bb.d
  %.pre = load ptr, ptr %0, align 8, !tbaa !291
  br label %.thread

sqlite3ReadSchema.exit:                           ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.m, ptr %i.n, align 8, !tbaa !292
  %i.o = load i32, ptr %i.b, align 8, !tbaa !293
  %i.p = add nsw i32 %i.o, 1
  store i32 %i.p, ptr %i.b, align 8, !tbaa !293
  br label %bb.i

.thread:                                          ; preds = %..thread_crit_edge, %bb.c
  %i.q = phi ptr [ %.pre, %..thread_crit_edge ], [ %i.a, %bb.c ]
  %i.r = tail call fastcc ptr @sqlite3FindTable(ptr noundef %i.q, ptr noundef %i.h, ptr noundef %i.i), !inline_history !294 ; 20 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.e, label %sqlite3LocateTable.exit

bb.e:                                             ; preds = %.thread
  %.not17.i = icmp eq i32 %2, 0
  %i.t = select i1 %.not17.i, ptr @.str.254, ptr @.str.253 ; 2 uses
  %.not18.i = icmp eq ptr %i.i, null
  br i1 %.not18.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.255, ptr noundef nonnull %i.t, ptr noundef nonnull %i.i, ptr noundef %i.h), !inline_history !294
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.256, ptr noundef nonnull %i.t, ptr noundef %i.h), !inline_history !294
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 34
  store i8 1, ptr %i.u, align 2, !tbaa !303
  br label %bb.i

bb.i:                                             ; preds = %sqlite3ReadSchema.exit, %bb.h
  %.not111 = icmp eq i32 %3, 0
  br i1 %.not111, label %.thread140, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !304  ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %sqlite3ErrorClear.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 -8 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !130
  %sext.i.i = shl i64 %i.z, 32
  %i.aa = ashr exact i64 %sext.i.i, 32
  %i.ab = load i64, ptr @mem.5, align 8, !tbaa !125
  %i.ac = sub nsw i64 %i.ab, %i.aa
  store i64 %i.ac, ptr @mem.5, align 8, !tbaa !125
  tail call void @free(ptr noundef nonnull %i.y) #43
  br label %sqlite3ErrorClear.exit

sqlite3ErrorClear.exit:                           ; preds = %bb.j, %bb.k
  store ptr null, ptr %i.v, align 8, !tbaa !304
  store i32 0, ptr %i.b, align 8, !tbaa !293
  br label %.thread140

sqlite3LocateTable.exit:                          ; preds = %.thread
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 144
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !314 ; 2 uses
  %.not.i114 = icmp eq ptr %i.ae, null
  br i1 %.not.i114, label %sqlite3SchemaToIndex.exit, label %.preheader.i

.preheader.i:                                     ; preds = %sqlite3LocateTable.exit
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !315 ; 3 uses
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %.lr.ph.i, label %sqlite3SchemaToIndex.exit

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !279
  %wide.trip.count.i = zext nneg i32 %i.ag to i64
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.m ] ; 3 uses
  %i.ak = getelementptr inbounds nuw [48 x i8], ptr %i.aj, i64 %indvars.iv.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !283
  %i.an = icmp eq ptr %i.am, %i.ae
  br i1 %i.an, label %.loopexit.loopexit.split.loop.exit13.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %sqlite3SchemaToIndex.exit, label %bb.l, !llvm.loop !11

.loopexit.loopexit.split.loop.exit13.i:           ; preds = %bb.l
  %i.ao = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %sqlite3SchemaToIndex.exit

sqlite3SchemaToIndex.exit:                        ; preds = %bb.m, %sqlite3LocateTable.exit, %.preheader.i, %.loopexit.loopexit.split.loop.exit13.i
end_hunk_1
