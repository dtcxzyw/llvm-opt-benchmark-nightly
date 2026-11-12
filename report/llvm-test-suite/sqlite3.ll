Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/sqlite3?download=true
inline.NumInlined: 3252
inline.NumDeleted: 430
loop-unroll.NumCompletelyUnrolled: 78
loop-unroll.NumRuntimeUnrolled: 59
loop-unroll.NumUnrolled: 138
begin_hunk_0_@sqlite3PutVarint:bb.a
  %i.e = trunc i64 %i.d to i8
  %i.f = or i8 %i.e, -128
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 %i.f, ptr %i.g, align 1, !tbaa !838
  %i.h = lshr i64 %1, 15
  %i.i = trunc i64 %i.h to i8
  %i.j = or i8 %i.i, -128
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i8 %i.j, ptr %i.k, align 1, !tbaa !838
  %i.l = lshr i64 %1, 22
  %i.m = trunc i64 %i.l to i8
  %i.n = or i8 %i.m, -128
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.n, ptr %i.o, align 1, !tbaa !838
  %i.p = lshr i64 %1, 29
  %i.q = trunc i64 %i.p to i8
  %i.r = or i8 %i.q, -128
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.r, ptr %i.s, align 1, !tbaa !838
  %i.t = lshr i64 %1, 36
  %i.u = trunc i64 %i.t to i8
  %i.v = or i8 %i.u, -128
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %i.v, ptr %i.w, align 1, !tbaa !838
  %i.x = lshr i64 %1, 43
  %i.y = trunc i64 %i.x to i8
  %i.z = or i8 %i.y, -128
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.z, ptr %i.aa, align 1, !tbaa !838
  %i.ab = lshr i64 %1, 50
  %i.ac = trunc i64 %i.ab to i8
  %i.ad = or i8 %i.ac, -128
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.ad, ptr %i.ae, align 1, !tbaa !838
  %i.af = lshr i64 %1, 57
  %i.ag = trunc nuw nsw i64 %i.af to i8
  %i.ah = or disjoint i8 %i.ag, -128
  store i8 %i.ah, ptr %0, align 1, !tbaa !838
  br label %.loopexit

.preheader:                                       ; preds = %bb.a, %.preheader
  %indvars.iv43 = phi i32 [ %indvars.iv.next44, %.preheader ], [ 1, %bb.a ] ; 4 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader ], [ 0, %bb.a ] ; 7 uses
  %.125 = phi i64 [ %i.al, %.preheader ], [ %1, %bb.a ] ; 2 uses
  %i.ai = trunc i64 %.125 to i8
  %i.aj = or i8 %i.ai, -128
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  store i8 %i.aj, ptr %i.ak, align 1, !tbaa !838
  %i.al = lshr i64 %.125, 7                       ; 2 uses
  %.not27 = icmp eq i64 %i.al, 0
  %indvars.iv.next44 = add nuw nsw i32 %indvars.iv43, 1
  br i1 %.not27, label %iter.check, label %.preheader, !llvm.loop !57

iter.check:                                       ; preds = %.preheader
  %i.am = load i8, ptr %i.a, align 1, !tbaa !838
  %i.an = and i8 %i.am, 127
  store i8 %i.an, ptr %i.a, align 1, !tbaa !838
  %wide.trip.count = zext nneg i32 %indvars.iv43 to i64 ; 6 uses
  %min.iters.check = icmp samesign ult i32 %indvars.iv43, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check45 = icmp samesign ult i32 %indvars.iv43, 32
  br i1 %min.iters.check45, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ao = and i64 %wide.trip.count, 24
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 5 uses
  %i.ap = sub nsw i64 %indvars.iv, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aq = sub i64 %indvars.iv, %index
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aq ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -15
  %i.at = getelementptr inbounds i8, ptr %i.ar, i64 -31
  %wide.load = load <16 x i8>, ptr %i.as, align 1, !tbaa !838
  %wide.load46 = load <16 x i8>, ptr %i.at, align 1, !tbaa !838
  %reverse = shufflevector <16 x i8> %wide.load, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse47 = shufflevector <16 x i8> %wide.load46, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store <16 x i8> %reverse, ptr %i.au, align 1, !tbaa !838
  store <16 x i8> %reverse47, ptr %i.av, align 1, !tbaa !838
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !2377

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ao, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !846

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec48 = and i64 %wide.trip.count, 2147483640 ; 4 uses
  %i.ax = sub nsw i64 %indvars.iv, %n.vec48
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index49 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next52, %vec.epilog.vector.body ] ; 3 uses
  %i.ay = sub i64 %indvars.iv, %index49
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ay
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 -7
  %wide.load50 = load <8 x i8>, ptr %i.ba, align 1, !tbaa !838
  %reverse51 = shufflevector <8 x i8> %wide.load50, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 %index49
  store <8 x i8> %reverse51, ptr %i.bb, align 1, !tbaa !838
  %index.next52 = add nuw i64 %index49, 8         ; 2 uses
  %i.bc = icmp eq i64 %index.next52, %n.vec48
  br i1 %i.bc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2378

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n53 = icmp eq i64 %n.vec48, %wide.trip.count
  br i1 %cmp.n53, label %.loopexit.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv38.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec48, %vec.epilog.middle.block ]
  %indvars.iv36.ph = phi i64 [ %indvars.iv, %iter.check ], [ %i.ap, %vec.epilog.iter.check ], [ %i.ax, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %vec.epilog.scalar.ph ], [ %indvars.iv38.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %indvars.iv36 = phi i64 [ %indvars.iv.next37, %vec.epilog.scalar.ph ], [ %indvars.iv36.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv36
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !838
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv38
  store i8 %i.be, ptr %i.bf, align 1, !tbaa !838
  %indvars.iv.next37 = add nsw i64 %indvars.iv36, -1
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next39, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !2379

.loopexit.loopexit:                               ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.bg = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit33, %.loopexit.loopexit
  %.026 = phi i32 [ %i.bg, %.loopexit.loopexit ], [ 9, %.loopexit.loopexit33 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #44
  ret i32 %.026
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @sqlite3BtreeBeginStmt(ptr nofree noundef readonly captures(none) %0) unnamed_addr #5 !guid !2381 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1050 ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !1049
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.c, ptr %i.d, align 8, !tbaa !1134
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i8, ptr %i.e, align 8, !tbaa !1333
  %.not = icmp eq i8 %i.f, 2
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.h = load i8, ptr %i.g, align 8, !tbaa !1249
  %.not9 = icmp eq i8 %i.h, 0
  br i1 %.not9, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 33
  %i.j = load i8, ptr %i.i, align 1, !tbaa !1339
  %.not11 = icmp eq i8 %i.j, 0
  %i.k = select i1 %.not11, i32 1, i32 8
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 33
  %i.m = load i8, ptr %i.l, align 1, !tbaa !1339
  %.not10 = icmp eq i8 %i.m, 0
  br i1 %.not10, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !1141
  %i.o = tail call fastcc i32 @sqlite3PagerStmtBegin(ptr noundef %i.n)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.p = phi i32 [ %i.o, %bb.e ], [ 0, %bb.d ]
  store i8 1, ptr %i.g, align 8, !tbaa !1249
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %.0 = phi i32 [ %i.k, %bb.c ], [ %i.p, %bb.f ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @sqlite3BtreeBeginTrans(ptr noundef %0, i32 noundef %1) unnamed_addr #5 !guid !2385 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1050 ; 27 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !1049
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !1134
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.g = load i8, ptr %i.f, align 8, !tbaa !1333  ; 2 uses
  %i.h = icmp eq i8 %i.g, 2
  br i1 %i.h, label %sqlite3BtreeInvokeBusyHandler.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ne i8 %i.g, 1
  %i.j = icmp ne i32 %1, 0                        ; 6 uses
  %or.cond = or i1 %i.j, %i.i
  br i1 %or.cond, label %bb.c, label %sqlite3BtreeInvokeBusyHandler.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 33 ; 3 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !1339
  %i.m = icmp ne i8 %i.l, 0
  %or.cond3 = and i1 %i.j, %i.m
  br i1 %or.cond3, label %sqlite3BtreeInvokeBusyHandler.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 5 uses
  %i.o = load i8, ptr %i.n, align 8, !tbaa !1246
  %i.p = icmp eq i8 %i.o, 2
  %or.cond5 = and i1 %i.j, %i.p
  br i1 %or.cond5, label %sqlite3BtreeInvokeBusyHandler.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = icmp sgt i32 %1, 1                       ; 3 uses
  br i1 %i.q, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %.05390 = load ptr, ptr %i.r, align 8, !tbaa !1344 ; 2 uses
  %.not91 = icmp eq ptr %.05390, null
  br i1 %.not91, label %.thread, label %.lr.ph

bb.g:                                             ; preds = %.lr.ph
  %i.s = getelementptr inbounds nuw i8, ptr %.05392, i64 16
  %.053 = load ptr, ptr %i.s, align 8, !tbaa !1344 ; 2 uses
  %.not = icmp eq ptr %.053, null
  br i1 %.not, label %.thread, label %.lr.ph, !llvm.loop !2382

.lr.ph:                                           ; preds = %bb.f, %bb.g
  %.05392 = phi ptr [ %.053, %bb.g ], [ %.05390, %bb.f ] ; 2 uses
  %i.t = load ptr, ptr %.05392, align 8, !tbaa !1346
  %.not58 = icmp eq ptr %i.t, %0
  br i1 %.not58, label %bb.g, label %sqlite3BtreeInvokeBusyHandler.exit.thread

.thread:                                          ; preds = %bb.g, %bb.f, %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 6 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.c, i64 46 ; 3 uses
  %.phi.trans.insert68.i = getelementptr inbounds nuw i8, ptr %i.c, i64 34 ; 3 uses
  %.phi.trans.insert70.i = getelementptr inbounds nuw i8, ptr %i.c, i64 35 ; 3 uses
  %.phi.trans.insert72.i = getelementptr inbounds nuw i8, ptr %i.c, i64 36 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 44 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 38 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 39 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 60
  %i.ac = zext i1 %i.q to i32
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %sqlite3BtreeInvokeBusyHandler.exit, %.thread
  %.2 = phi i32 [ 0, %.thread ], [ 5, %sqlite3BtreeInvokeBusyHandler.exit ]
  %i.af = load ptr, ptr %i.u, align 8, !tbaa !1247 ; 2 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.i, label %lockBtree.exit

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #44
  %i.ah = load ptr, ptr %i.c, align 8, !tbaa !1141
  %i.ai = call fastcc i32 @sqlite3PagerAcquire(ptr noundef %i.ah, i32 noundef 1, ptr noundef %i.a, i32 noundef 0) ; 2 uses
  %.not.i.i = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i, label %bb.j, label %sqlite3BtreeGetPage.exit.i

sqlite3BtreeGetPage.exit.i:                       ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #44
  br label %newDatabase.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.aj = load ptr, ptr %i.a, align 8, !tbaa !1268 ; 9 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !1253
  %.not.i.i.i = icmp eq ptr %i.ak, null           ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 88 ; 2 uses
  %i.am = select i1 %.not.i.i.i, ptr null, ptr %i.al
  %i.an = getelementptr i8, ptr %i.aj, i64 80
  %.val.i.i = load ptr, ptr %i.an, align 8, !tbaa !1273
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 200 ; 2 uses
  store ptr %.val.i.i, ptr %i.ao, align 8, !tbaa !1350
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 208 ; 2 uses
  store ptr %i.aj, ptr %i.ap, align 8, !tbaa !1245
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 192
  store ptr %i.c, ptr %i.aq, align 8, !tbaa !1351
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 216
  store i32 1, ptr %i.ar, align 8, !tbaa !1056
  %i.as = getelementptr inbounds nuw i8, ptr %i.aj, i64 96
  store i8 100, ptr %i.as, align 8, !tbaa !1352
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #44
  %i.at = load ptr, ptr %i.c, align 8, !tbaa !1141
  %i.au = tail call fastcc i32 @sqlite3PagerPagecount(ptr noundef %i.at)
  %i.av = icmp sgt i32 %i.au, 0
  br i1 %i.av, label %bb.k, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.j
  %.pre.i = load i16, ptr %.phi.trans.insert.i, align 2, !tbaa !1377
  %.pre69.i = load i8, ptr %.phi.trans.insert68.i, align 2, !tbaa !1430
  %.pre71.i = load i8, ptr %.phi.trans.insert70.i, align 1, !tbaa !1431
  %.pre73.i = load i8, ptr %.phi.trans.insert72.i, align 4, !tbaa !1432
  %i.aw = zext i16 %.pre.i to i32
  br label %bb.r

bb.k:                                             ; preds = %bb.j
  %i.ax = load ptr, ptr %i.ao, align 8, !tbaa !1350 ; 17 uses
  %i.ay = load i128, ptr %i.ax, align 1
  %i.az = icmp ne i128 %i.ay, 265465397511803988906881385371554131
  %i.ba = zext i1 %i.az to i32
  %.not54.i = icmp eq i32 %i.ba, 0
  br i1 %.not54.i, label %bb.l, label %.thread66.i

bb.l:                                             ; preds = %bb.k
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 18
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !838
  %i.bd = icmp ugt i8 %i.bc, 1
  br i1 %i.bd, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i8 1, ptr %i.k, align 1, !tbaa !1339
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.be = getelementptr inbounds nuw i8, ptr %i.ax, i64 19
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !838
  %i.bg = icmp ugt i8 %i.bf, 1
  br i1 %i.bg, label %.thread66.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !838 ; 2 uses
  %i.bj = zext i8 %i.bi to i32
  %i.bk = shl nuw nsw i32 %i.bj, 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ax, i64 17
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !838
  %i.bn = zext i8 %i.bm to i32
  %i.bo = or disjoint i32 %i.bk, %i.bn            ; 4 uses
  %i.bp = add nuw nsw i32 %i.bo, 65535
  %i.bq = and i32 %i.bp, %i.bo
  %i.br = icmp ne i32 %i.bq, 0
  %i.bs = icmp ult i8 %i.bi, 2
  %or.cond.i = or i1 %i.bs, %i.br
  br i1 %or.cond.i, label %.thread66.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bt = trunc nuw i32 %i.bo to i16
  store i16 %i.bt, ptr %i.v, align 4, !tbaa !1378
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ax, i64 20
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !838
  %i.bw = zext i8 %i.bv to i32
  %i.bx = sub nuw nsw i32 %i.bo, %i.bw            ; 3 uses
  %i.by = trunc nuw i32 %i.bx to i16
  store i16 %i.by, ptr %.phi.trans.insert.i, align 2, !tbaa !1377
  %i.bz = icmp samesign ult i32 %i.bx, 500
  br i1 %i.bz, label %.thread66.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ax, i64 21
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !838 ; 2 uses
  store i8 %i.cb, ptr %.phi.trans.insert68.i, align 2, !tbaa !1430
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ax, i64 22
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !838 ; 2 uses
  store i8 %i.cd, ptr %.phi.trans.insert70.i, align 1, !tbaa !1431
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ax, i64 23
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !838 ; 2 uses
  store i8 %i.cf, ptr %.phi.trans.insert72.i, align 4, !tbaa !1432
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ax, i64 52
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !838
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ax, i64 53
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !838
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ax, i64 54
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !838
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ax, i64 55
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !838
  %i.co = or i8 %i.cj, %i.ch
  %i.cp = or i8 %i.co, %i.cl
  %i.cq = or i8 %i.cp, %i.cn
  %i.cr = icmp ne i8 %i.cq, 0
  %i.cs = zext i1 %i.cr to i8
  store i8 %i.cs, ptr %i.w, align 2, !tbaa !1387
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ax, i64 64
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !838
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ax, i64 65
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !838
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ax, i64 66
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !838
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ax, i64 67
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !838
  %i.db = or i8 %i.cw, %i.cu
  %i.dc = or i8 %i.db, %i.cy
  %i.dd = or i8 %i.dc, %i.da
  %i.de = icmp ne i8 %i.dd, 0
  %i.df = zext i1 %i.de to i8
  store i8 %i.df, ptr %i.x, align 1, !tbaa !1409
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %._crit_edge.i
  %i.dg = phi i8 [ %.pre73.i, %._crit_edge.i ], [ %i.cf, %bb.q ]
  %i.dh = phi i8 [ %.pre71.i, %._crit_edge.i ], [ %i.cd, %bb.q ]
  %i.di = phi i8 [ %.pre69.i, %._crit_edge.i ], [ %i.cb, %bb.q ]
  %i.dj = phi i32 [ %i.aw, %._crit_edge.i ], [ %i.bx, %bb.q ] ; 2 uses
  %i.dk = add nsw i32 %i.dj, -12                  ; 3 uses
  %i.dl = zext i8 %i.di to i32
  %i.dm = mul nsw i32 %i.dk, %i.dl                ; 2 uses
  %i.dn = sdiv i32 %i.dm, 255                     ; 2 uses
  %i.do = add nsw i32 %i.dn, -23
  store i32 %i.do, ptr %i.y, align 8, !tbaa !2386
  %i.dp = zext i8 %i.dh to i32
  %i.dq = mul nsw i32 %i.dk, %i.dp
  %i.dr = sdiv i32 %i.dq, 255                     ; 2 uses
  %i.ds = add nsw i32 %i.dr, -23
  store i32 %i.ds, ptr %i.z, align 4, !tbaa !2387
  %i.dt = add nsw i32 %i.dj, -35
  store i32 %i.dt, ptr %i.aa, align 8, !tbaa !2388
  %i.du = zext i8 %i.dg to i32
  %i.dv = mul nsw i32 %i.dk, %i.du
  %i.dw = sdiv i32 %i.dv, 255
  %i.dx = add nsw i32 %i.dw, -23
  store i32 %i.dx, ptr %i.ab, align 4, !tbaa !2389
  %i.dy = icmp sgt i32 %i.dr, %i.dn
  %i.dz = icmp slt i32 %i.dm, 5865
  %or.cond57.i = or i1 %i.dz, %i.dy
  br i1 %or.cond57.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store ptr %i.am, ptr %i.u, align 8, !tbaa !1247
  br label %lockBtree.exit

bb.t:                                             ; preds = %bb.r
  br i1 %.not.i.i.i, label %releasePage.exit.i, label %.thread66.i

.thread66.i:                                      ; preds = %bb.t, %bb.p, %bb.o, %bb.n, %bb.k
  %i.ea = load ptr, ptr %i.ap, align 8, !tbaa !1245
  tail call fastcc void @sqlite3PagerUnref(ptr noundef %i.ea)
  br label %releasePage.exit.i

releasePage.exit.i:                               ; preds = %.thread66.i, %bb.t
  store ptr null, ptr %i.u, align 8, !tbaa !1247
  br label %newDatabase.exit.thread

lockBtree.exit:                                   ; preds = %bb.s, %bb.h
  %i.eb = phi ptr [ %i.af, %bb.h ], [ %i.al, %bb.s ]
  %.3 = phi i32 [ %.2, %bb.h ], [ 0, %bb.s ]      ; 2 uses
  %i.ec = icmp eq i32 %.3, 0                      ; 2 uses
  %or.cond7 = and i1 %i.j, %i.ec
  br i1 %or.cond7, label %bb.u, label %newDatabase.exit

bb.u:                                             ; preds = %lockBtree.exit
  %i.ed = load i8, ptr %i.k, align 1, !tbaa !1339
  %.not59 = icmp eq i8 %i.ed, 0
  br i1 %.not59, label %bb.v, label %newDatabase.exit.thread

bb.v:                                             ; preds = %bb.u
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 120
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !1245
  %.val = load ptr, ptr %i.ef, align 8, !tbaa !1253
  %i.eg = tail call fastcc i32 @sqlite3PagerBegin(ptr %.val, i32 noundef %i.ac) ; 2 uses
  %i.eh = icmp eq i32 %i.eg, 0
  br i1 %i.eh, label %bb.w, label %newDatabase.exit.thread

bb.w:                                             ; preds = %bb.v
  %i.ei = load ptr, ptr %i.c, align 8, !tbaa !1141
  %i.ej = tail call fastcc i32 @sqlite3PagerPagecount(ptr noundef %i.ei)
  %i.ek = icmp sgt i32 %i.ej, 0
  br i1 %i.ek, label %.thread75, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.el = load ptr, ptr %i.u, align 8, !tbaa !1247 ; 11 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 112
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !1350 ; 18 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 120
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !1245
  %i.eq = tail call fastcc i32 @sqlite3PagerWrite(ptr noundef %i.ep) ; 2 uses
  %.not.i61 = icmp eq i32 %i.eq, 0
  br i1 %.not.i61, label %bb.y, label %newDatabase.exit.thread

bb.y:                                             ; preds = %bb.x
  %i.er = getelementptr inbounds nuw i8, ptr %i.el, i64 112
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.en, ptr noundef nonnull align 16 dereferenceable(16) @zMagicHeader, i64 16, i1 false)
  %2 = getelementptr i8, ptr %i.c, i64 45
  %3 = load i8, ptr %2, align 1, !tbaa !1378
  %i.es = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  store i8 %3, ptr %i.es, align 1, !tbaa !838
  %i.et = load i16, ptr %i.v, align 4, !tbaa !1378
  %i.eu = trunc i16 %i.et to i8
  %i.ev = getelementptr inbounds nuw i8, ptr %i.en, i64 17
  store i8 %i.eu, ptr %i.ev, align 1, !tbaa !838
  %i.ew = getelementptr inbounds nuw i8, ptr %i.en, i64 18
  store i8 1, ptr %i.ew, align 1, !tbaa !838
  %i.ex = getelementptr inbounds nuw i8, ptr %i.en, i64 19
  store i8 1, ptr %i.ex, align 1, !tbaa !838
  %i.ey = load i16, ptr %i.v, align 4, !tbaa !1378
  %i.ez = trunc i16 %i.ey to i8
  %i.fa = load i16, ptr %.phi.trans.insert.i, align 2, !tbaa !1377
  %i.fb = trunc i16 %i.fa to i8
  %i.fc = sub i8 %i.ez, %i.fb
  %i.fd = getelementptr inbounds nuw i8, ptr %i.en, i64 20
  store i8 %i.fc, ptr %i.fd, align 1, !tbaa !838
  %i.fe = load i8, ptr %.phi.trans.insert68.i, align 2, !tbaa !1430
  %i.ff = getelementptr inbounds nuw i8, ptr %i.en, i64 21
  store i8 %i.fe, ptr %i.ff, align 1, !tbaa !838
  %i.fg = load i8, ptr %.phi.trans.insert70.i, align 1, !tbaa !1431
  %i.fh = getelementptr inbounds nuw i8, ptr %i.en, i64 22
  store i8 %i.fg, ptr %i.fh, align 1, !tbaa !838
  %i.fi = load i8, ptr %.phi.trans.insert72.i, align 4, !tbaa !1432
  %i.fj = getelementptr inbounds nuw i8, ptr %i.en, i64 23
  store i8 %i.fi, ptr %i.fj, align 1, !tbaa !838
  %i.fk = getelementptr inbounds nuw i8, ptr %i.en, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(76) %i.fk, i8 0, i64 76, i1 false)
  %i.fl = load ptr, ptr %i.er, align 8, !tbaa !1350
  %i.fm = getelementptr inbounds nuw i8, ptr %i.el, i64 104 ; 2 uses
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !1351 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.el, i64 8 ; 2 uses
  %i.fp = load i8, ptr %i.fo, align 8, !tbaa !1352 ; 3 uses
  %i.fq = zext i8 %i.fp to i64                    ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.fq ; 6 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fn, i64 46 ; 3 uses
  %i.ft = load i16, ptr %i.fs, align 2, !tbaa !1377
  %i.fu = zext i16 %i.ft to i64
  %i.fv = sub nsw i64 %i.fu, %i.fq
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.fr, i8 0, i64 %i.fv, i1 false)
  store i8 13, ptr %i.fr, align 1, !tbaa !838
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fr, i64 1
  store i32 0, ptr %i.fw, align 1
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fr, i64 7
  store i8 0, ptr %i.fx, align 1, !tbaa !838
  %4 = getelementptr i8, ptr %i.fn, i64 47
  %5 = load i8, ptr %4, align 1, !tbaa !1377
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fr, i64 5
  store i8 %5, ptr %i.fy, align 1, !tbaa !838
  %i.fz = load i16, ptr %i.fs, align 2, !tbaa !1377
  %i.ga = trunc i16 %i.fz to i8
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fr, i64 6
  store i8 %i.ga, ptr %i.gb, align 1, !tbaa !838
  %i.gc = load i16, ptr %i.fs, align 2, !tbaa !1377
  %i.gd = zext i8 %i.fp to i16
  %i.ge = add nuw nsw i16 %i.gd, 8                ; 2 uses
  %i.gf = sub i16 %i.gc, %i.ge
  %i.gg = getelementptr inbounds nuw i8, ptr %i.el, i64 18
  store i16 %i.gf, ptr %i.gg, align 2, !tbaa !1379
  %i.gh = getelementptr inbounds nuw i8, ptr %i.el, i64 9
  store i8 0, ptr %i.gh, align 1, !tbaa !1360
  %i.gi = load ptr, ptr %i.fm, align 8, !tbaa !1351
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 56
  %i.gk = getelementptr inbounds nuw i8, ptr %i.el, i64 10
  %i.gl = load <2 x i32>, ptr %i.gj, align 8, !tbaa !107
  %i.gm = trunc <2 x i32> %i.gl to <2 x i16>
  store <2 x i16> %i.gm, ptr %i.gk, align 2, !tbaa !933
  store i8 %i.fp, ptr %i.fo, align 8, !tbaa !1352
  %i.gn = getelementptr inbounds nuw i8, ptr %i.el, i64 14
  store i16 %i.ge, ptr %i.gn, align 2, !tbaa !1357
  %i.go = getelementptr inbounds nuw i8, ptr %i.el, i64 20
  store i16 0, ptr %i.go, align 4, !tbaa !1359
  store <8 x i8> <i8 1, i8 0, i8 0, i8 1, i8 1, i8 0, i8 1, i8 1>, ptr %i.el, align 8, !tbaa !838
  %i.gp = getelementptr inbounds nuw i8, ptr %i.c, i64 37
  store i8 1, ptr %i.gp, align 1, !tbaa !1433
  %i.gq = getelementptr inbounds nuw i8, ptr %i.en, i64 52
  %i.gr = load i8, ptr %i.w, align 2, !tbaa !1387
  store i8 0, ptr %i.gq, align 1, !tbaa !838
  %i.gs = getelementptr inbounds nuw i8, ptr %i.en, i64 53
  store i8 0, ptr %i.gs, align 1, !tbaa !838
  %i.gt = getelementptr inbounds nuw i8, ptr %i.en, i64 54
  store i8 0, ptr %i.gt, align 1, !tbaa !838
  %i.gu = getelementptr inbounds nuw i8, ptr %i.en, i64 55
  store i8 %i.gr, ptr %i.gu, align 1, !tbaa !838
  %i.gv = getelementptr inbounds nuw i8, ptr %i.en, i64 64
  %i.gw = load i8, ptr %i.x, align 1, !tbaa !1409
  store i8 0, ptr %i.gv, align 1, !tbaa !838
  %i.gx = getelementptr inbounds nuw i8, ptr %i.en, i64 65
  store i8 0, ptr %i.gx, align 1, !tbaa !838
  %i.gy = getelementptr inbounds nuw i8, ptr %i.en, i64 66
  store i8 0, ptr %i.gy, align 1, !tbaa !838
  %i.gz = getelementptr inbounds nuw i8, ptr %i.en, i64 67
  store i8 %i.gw, ptr %i.gz, align 1, !tbaa !838
  br label %.thread75

newDatabase.exit:                                 ; preds = %lockBtree.exit
  br i1 %i.ec, label %bb.z, label %newDatabase.exit.thread

bb.z:                                             ; preds = %newDatabase.exit
  br i1 %i.j, label %.thread75, label %.critedge.thread

.thread75:                                        ; preds = %bb.w, %bb.y, %bb.z
  store i8 0, ptr %i.ae, align 8, !tbaa !1249
  br label %.critedge.thread

newDatabase.exit.thread:                          ; preds = %sqlite3BtreeGetPage.exit.i, %releasePage.exit.i, %bb.x, %bb.u, %bb.v, %newDatabase.exit
  %.470 = phi i32 [ %.3, %newDatabase.exit ], [ %i.eq, %bb.x ], [ 8, %bb.u ], [ %i.eg, %bb.v ], [ %i.ai, %sqlite3BtreeGetPage.exit.i ], [ 26, %releasePage.exit.i ] ; 2 uses
  %i.ha = load i8, ptr %i.n, align 8, !tbaa !1246
  %i.hb = icmp eq i8 %i.ha, 0
  br i1 %i.hb, label %bb.aa, label %unlockBtreeIfUnused.exit

bb.aa:                                            ; preds = %newDatabase.exit.thread
  %i.hc = load ptr, ptr %i.ad, align 8, !tbaa !1135
  %i.hd = icmp eq ptr %i.hc, null
  br i1 %i.hd, label %bb.ab, label %unlockBtreeIfUnused.exit

bb.ab:                                            ; preds = %bb.aa
  %i.he = load ptr, ptr %i.u, align 8, !tbaa !1247 ; 2 uses
  %.not.i62 = icmp eq ptr %i.he, null
  br i1 %.not.i62, label %unlockBtreeIfUnused.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.hf = load ptr, ptr %i.c, align 8, !tbaa !1141
  %i.hg = getelementptr i8, ptr %i.hf, i64 76
  %.val.i = load i32, ptr %i.hg, align 4, !tbaa !1248
  %i.hh = icmp sgt i32 %.val.i, 0
  br i1 %i.hh, label %releasePage.exit.i63, label %bb.ad

releasePage.exit.i63:                             ; preds = %bb.ac
  %i.hi = getelementptr inbounds nuw i8, ptr %i.he, i64 120
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !1245
  tail call fastcc void @sqlite3PagerUnref(ptr noundef %i.hj)
  br label %bb.ad

bb.ad:                                            ; preds = %releasePage.exit.i63, %bb.ac
  store ptr null, ptr %i.u, align 8, !tbaa !1247
  store i8 0, ptr %i.ae, align 8, !tbaa !1249
  br label %unlockBtreeIfUnused.exit

unlockBtreeIfUnused.exit:                         ; preds = %bb.ad, %bb.ab, %bb.aa, %newDatabase.exit.thread
  %i.hk = icmp eq i32 %.470, 5
  br i1 %i.hk, label %bb.ae, label %sqlite3BtreeInvokeBusyHandler.exit.thread

bb.ae:                                            ; preds = %unlockBtreeIfUnused.exit
  %i.hl = load i8, ptr %i.n, align 8, !tbaa !1246
  %i.hm = icmp eq i8 %i.hl, 0
  br i1 %i.hm, label %bb.af, label %sqlite3BtreeInvokeBusyHandler.exit.thread

bb.af:                                            ; preds = %bb.ae
  %i.hn = load ptr, ptr %i.e, align 8, !tbaa !1134 ; 3 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 432
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !1392 ; 2 uses
  %i.hq = icmp eq ptr %i.hp, null
  br i1 %i.hq, label %sqlite3BtreeInvokeBusyHandler.exit.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hn, i64 448 ; 4 uses
  %i.hs = load i32, ptr %i.hr, align 8, !tbaa !1390 ; 2 uses
  %i.ht = icmp slt i32 %i.hs, 0
  br i1 %i.ht, label %sqlite3BtreeInvokeBusyHandler.exit.thread, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hn, i64 440
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !1393
  %i.hw = tail call i32 %i.hp(ptr noundef %i.hv, i32 noundef %i.hs) #44, !inline_history !2383
  %i.hx = icmp eq i32 %i.hw, 0
  br i1 %i.hx, label %sqlite3BtreeInvokeBusyHandler.exit.thread82, label %sqlite3BtreeInvokeBusyHandler.exit

sqlite3BtreeInvokeBusyHandler.exit.thread82:      ; preds = %bb.ah
  store i32 -1, ptr %i.hr, align 8, !tbaa !1390
  br label %sqlite3BtreeInvokeBusyHandler.exit.thread

sqlite3BtreeInvokeBusyHandler.exit:               ; preds = %bb.ah
  %i.hy = load i32, ptr %i.hr, align 8, !tbaa !1390
  %i.hz = add nsw i32 %i.hy, 1
  store i32 %i.hz, ptr %i.hr, align 8, !tbaa !1390
  br label %bb.h, !llvm.loop !2384

.critedge.thread:                                 ; preds = %bb.z, %.thread75
  %i.ia = load i8, ptr %i.f, align 8, !tbaa !1333
  %i.ib = icmp eq i8 %i.ia, 0
  br i1 %i.ib, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %.critedge.thread
  %i.ic = getelementptr inbounds nuw i8, ptr %i.c, i64 68 ; 2 uses
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !1353
  %i.ie = add nsw i32 %i.id, 1
  store i32 %i.ie, ptr %i.ic, align 4, !tbaa !1353
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %.critedge.thread
  %i.if = select i1 %i.j, i8 2, i8 1              ; 3 uses
  store i8 %i.if, ptr %i.f, align 8, !tbaa !1333
  %i.ig = load i8, ptr %i.n, align 8, !tbaa !1246
  %i.ih = icmp ugt i8 %i.if, %i.ig
  br i1 %i.ih, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store i8 %i.if, ptr %i.n, align 8, !tbaa !1246
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  br i1 %i.q, label %bb.am, label %sqlite3BtreeInvokeBusyHandler.exit.thread

bb.am:                                            ; preds = %bb.al
  %i.ii = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  store ptr %0, ptr %i.ii, align 8, !tbaa !1348
  br label %sqlite3BtreeInvokeBusyHandler.exit.thread

sqlite3BtreeInvokeBusyHandler.exit.thread:        ; preds = %.lr.ph, %unlockBtreeIfUnused.exit, %bb.ae, %bb.af, %bb.ag, %sqlite3BtreeInvokeBusyHandler.exit.thread82, %bb.b, %bb.a, %bb.al, %bb.am, %bb.c, %bb.d
  %.5 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 8, %bb.c ], [ 0, %bb.am ], [ 0, %bb.al ], [ 5, %sqlite3BtreeInvokeBusyHandler.exit.thread82 ], [ 5, %bb.d ], [ 5, %bb.af ], [ 5, %bb.ae ], [ %.470, %unlockBtreeIfUnused.exit ], [ 5, %bb.ag ], [ 5, %.lr.ph ]
  ret i32 %.5
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @sqlite3BtreeGetMeta(ptr noundef %0, i32 noundef range(i32 -2147483647, -2147483648) %1, ptr nofree noundef nonnull writeonly captures(none) %2) unnamed_addr #5 !guid !2390 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #44
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1050 ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !1049
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.d, ptr %i.e, align 8, !tbaa !1134
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 17 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !1137
  %.not.i = icmp eq i8 %i.g, 0
  br i1 %.not.i, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1348 ; 2 uses
  %.not29.i = icmp eq ptr %i.i, null
  %.not30.i = icmp eq ptr %i.i, %0
  %or.cond34.i = or i1 %.not29.i, %.not30.i
  br i1 %or.cond34.i, label %bb.c, label %queryTableLock.exit

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %.035.i = load ptr, ptr %i.j, align 8, !tbaa !1344 ; 2 uses
  %.not3236.i = icmp eq ptr %.035.i, null
  br i1 %.not3236.i, label %.loopexit, label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %bb.c, %bb.f
  %.037.i = phi ptr [ %.0.i, %bb.f ], [ %.035.i, %bb.c ] ; 4 uses
  %i.k = load ptr, ptr %.037.i, align 8, !tbaa !1346
  %.not33.i = icmp eq ptr %i.k, %0
  br i1 %.not33.i, label %bb.f, label %bb.d

end_hunk_0
begin_hunk_1_@sqlite3BtreeCreateTable:bb.a
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.i, %.critedge.preheader.i
  %storemerge.in96.i = phi i32 [ %.promoted.i, %.critedge.preheader.i ], [ %storemerge.i, %.critedge.i ] ; 4 uses
  %storemerge.i = add i32 %storemerge.in96.i, 1   ; 11 uses
  %i.aj = add i32 %storemerge.in96.i, -1          ; 2 uses
  %i.ak = urem i32 %i.aj, %i.ag
  %i.al = sub nuw i32 %i.aj, %i.ak                ; 2 uses
  %i.am = add nsw i32 %i.al, 1
  %i.an = icmp eq i32 %i.am, %i.ai
  %spec.select.v.i.i = select i1 %i.an, i32 3, i32 2
  %spec.select.i.i = add nsw i32 %spec.select.v.i.i, %i.al
  %i.ao = icmp eq i32 %storemerge.i, %spec.select.i.i
  %i.ap = icmp eq i32 %storemerge.in96.i, %i.ai
  %or.cond.i = or i1 %i.ap, %i.ao
  br i1 %or.cond.i, label %.critedge.i, label %bb.f, !llvm.loop !2416

bb.f:                                             ; preds = %.critedge.i
  %i.aq = call fastcc i32 @allocateBtreePage(ptr noundef nonnull %i.j, ptr noundef %i.e, ptr noundef %i.d, i32 noundef %storemerge.i, i8 noundef zeroext 1) ; 2 uses
  %.not65.i = icmp eq i32 %i.aq, 0
  br i1 %.not65.i, label %bb.g, label %releasePage.exit87.thread.i

bb.g:                                             ; preds = %bb.f
  %i.ar = load i32, ptr %i.d, align 4, !tbaa !107 ; 2 uses
  %.not66.i = icmp eq i32 %i.ar, %storemerge.i
  br i1 %.not66.i, label %bb.p, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #44
  %i.as = load ptr, ptr %i.e, align 8, !tbaa !1354 ; 2 uses
  %.not.i76.i = icmp eq ptr %i.as, null
  br i1 %.not.i76.i, label %releasePage.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 120
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !1245
  tail call fastcc void @sqlite3PagerUnref(ptr noundef %i.au)
  br label %releasePage.exit.i

releasePage.exit.i:                               ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #44
  %i.av = load ptr, ptr %i.j, align 8, !tbaa !1141
  %i.aw = call fastcc i32 @sqlite3PagerAcquire(ptr noundef %i.av, i32 noundef %storemerge.i, ptr noundef %i.a, i32 noundef 0) ; 2 uses
  %.not.i77.i = icmp eq i32 %i.aw, 0
  br i1 %.not.i77.i, label %bb.j, label %sqlite3BtreeGetPage.exit.i

sqlite3BtreeGetPage.exit.i:                       ; preds = %releasePage.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #44
  br label %releasePage.exit79.thread.i

bb.j:                                             ; preds = %releasePage.exit.i
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !1268 ; 9 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !1253
  %.not.i.i.i = icmp eq ptr %i.ay, null           ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 88 ; 2 uses
  %i.ba = select i1 %.not.i.i.i, ptr null, ptr %i.az ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ax, i64 80
  %.val.i.i = load ptr, ptr %i.bb, align 8, !tbaa !1273
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 200
  store ptr %.val.i.i, ptr %i.bc, align 8, !tbaa !1350
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 208 ; 2 uses
  store ptr %i.ax, ptr %i.bd, align 8, !tbaa !1245
  %i.be = getelementptr inbounds nuw i8, ptr %i.ax, i64 192
  store ptr %i.j, ptr %i.be, align 8, !tbaa !1351
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ax, i64 216
  store i32 %storemerge.i, ptr %i.bf, align 8, !tbaa !1056
  %i.bg = icmp eq i32 %storemerge.in96.i, 0
  %i.bh = select i1 %i.bg, i8 100, i8 0
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ax, i64 96
  store i8 %i.bh, ptr %i.bi, align 8, !tbaa !1352
  store ptr %i.ba, ptr %i.b, align 8, !tbaa !1354
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #44
  %i.bj = call fastcc i32 @ptrmapGet(ptr noundef nonnull %i.j, i32 noundef %storemerge.i, ptr noundef %i.f, ptr noundef nonnull %i.g) ; 3 uses
  %i.bk = icmp ne i32 %i.bj, 0
  %i.bl = load i8, ptr %i.f, align 1              ; 2 uses
  %i.bm = add i8 %i.bl, -1
  %i.bn = icmp ult i8 %i.bm, 2
  %or.cond6.i = select i1 %i.bk, i1 true, i1 %i.bn
  br i1 %or.cond6.i, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  br i1 %.not.i.i.i, label %releasePage.exit79.thread.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bo = load ptr, ptr %i.bd, align 8, !tbaa !1245
  call fastcc void @sqlite3PagerUnref(ptr noundef %i.bo)
  br label %releasePage.exit79.thread.i

bb.m:                                             ; preds = %bb.j
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ba, i64 120 ; 3 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !1245
  %i.br = call fastcc i32 @sqlite3PagerWrite(ptr noundef %i.bq) ; 2 uses
  %.not68.i = icmp eq i32 %i.br, 0
  br i1 %.not68.i, label %releasePage.exit83.i, label %releasePage.exit81.i

releasePage.exit81.i:                             ; preds = %bb.m
  %i.bs = load ptr, ptr %i.bp, align 8, !tbaa !1245
  call fastcc void @sqlite3PagerUnref(ptr noundef %i.bs)
  br label %releasePage.exit79.thread.i

releasePage.exit83.i:                             ; preds = %bb.m
  %i.bt = load i32, ptr %i.g, align 4, !tbaa !107
  %i.bu = call fastcc i32 @relocatePage(ptr noundef nonnull %i.j, ptr noundef nonnull %i.az, i8 noundef zeroext %i.bl, i32 noundef %i.bt, i32 noundef %i.ar) ; 2 uses
  %i.bv = load ptr, ptr %i.bp, align 8, !tbaa !1245
  call fastcc void @sqlite3PagerUnref(ptr noundef %i.bv)
  %.not69.i = icmp eq i32 %i.bu, 0
  br i1 %.not69.i, label %bb.n, label %releasePage.exit79.thread.i

bb.n:                                             ; preds = %releasePage.exit83.i
  %i.bw = call fastcc i32 @sqlite3BtreeGetPage(ptr noundef nonnull %i.j, i32 noundef %storemerge.i, ptr noundef nonnull %i.b, i32 noundef 0) ; 2 uses
  %.not70.i = icmp eq i32 %i.bw, 0
  br i1 %.not70.i, label %bb.o, label %releasePage.exit79.thread.i

bb.o:                                             ; preds = %bb.n
  %i.bx = load ptr, ptr %i.b, align 8, !tbaa !1354 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 120 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !1245
  %i.ca = call fastcc i32 @sqlite3PagerWrite(ptr noundef %i.bz) ; 2 uses
  %.not71.i = icmp eq i32 %i.ca, 0
  br i1 %.not71.i, label %releasePage.exit79.i, label %releasePage.exit85.i

releasePage.exit85.i:                             ; preds = %bb.o
  %i.cb = load ptr, ptr %i.by, align 8, !tbaa !1245
  call fastcc void @sqlite3PagerUnref(ptr noundef %i.cb)
  br label %releasePage.exit79.thread.i

releasePage.exit79.thread.i:                      ; preds = %releasePage.exit85.i, %bb.n, %releasePage.exit83.i, %releasePage.exit81.i, %bb.l, %bb.k, %sqlite3BtreeGetPage.exit.i
  %.049.ph.i = phi i32 [ %i.bj, %bb.l ], [ %i.bj, %bb.k ], [ %i.ca, %releasePage.exit85.i ], [ %i.bu, %releasePage.exit83.i ], [ %i.aw, %sqlite3BtreeGetPage.exit.i ], [ %i.br, %releasePage.exit81.i ], [ %i.bw, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #44
  br label %releasePage.exit87.thread.i

releasePage.exit79.i:                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #44
  br label %bb.q

bb.p:                                             ; preds = %bb.g
  %i.cc = load ptr, ptr %i.e, align 8, !tbaa !1354
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %releasePage.exit79.i
  %i.cd = phi ptr [ %i.bx, %releasePage.exit79.i ], [ %i.cc, %bb.p ] ; 5 uses
  %i.ce = call fastcc i32 @ptrmapPut(ptr noundef nonnull %i.j, i32 noundef %storemerge.i, i8 noundef zeroext 1, i32 noundef 0) ; 3 uses
  %.not72.i = icmp eq i32 %i.ce, 0
  br i1 %.not72.i, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.not.i86.i = icmp eq ptr %i.cd, null
  br i1 %.not.i86.i, label %releasePage.exit87.thread.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 120
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !1245
  call fastcc void @sqlite3PagerUnref(ptr noundef %i.cg)
  br label %releasePage.exit87.thread.i

bb.t:                                             ; preds = %bb.q
  %i.ch = call fastcc i32 @sqlite3BtreeUpdateMeta(ptr noundef nonnull %0, i32 noundef 4, i32 noundef %storemerge.i) ; 3 uses
  %.not73.i = icmp eq i32 %i.ch, 0
  br i1 %.not73.i, label %releasePage.exit87.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.not.i88.i = icmp eq ptr %i.cd, null
  br i1 %.not.i88.i, label %releasePage.exit87.thread.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 120
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !1245
  call fastcc void @sqlite3PagerUnref(ptr noundef %i.cj)
  br label %releasePage.exit87.thread.i

releasePage.exit87.thread.i:                      ; preds = %bb.v, %bb.u, %bb.s, %bb.r, %releasePage.exit79.thread.i, %bb.f, %invalidateAllOverflowCache.exit.i
  %.2.ph.i = phi i32 [ %i.ch, %bb.v ], [ %i.ch, %bb.u ], [ %i.ce, %bb.r ], [ %i.aq, %bb.f ], [ %i.ce, %bb.s ], [ %i.ac, %invalidateAllOverflowCache.exit.i ], [ %.049.ph.i, %releasePage.exit79.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #44
  br label %btreeCreateTable.exit

releasePage.exit87.i:                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #44
  br label %bb.x

bb.w:                                             ; preds = %bb.c
  %i.ck = call fastcc i32 @allocateBtreePage(ptr noundef nonnull %i.j, ptr noundef %i.b, ptr noundef %i.c, i32 noundef 1, i8 noundef zeroext 0) ; 2 uses
  %.not63.i = icmp eq i32 %i.ck, 0
  br i1 %.not63.i, label %._crit_edge.i, label %btreeCreateTable.exit

._crit_edge.i:                                    ; preds = %bb.w
  %.pre.i = load ptr, ptr %i.b, align 8, !tbaa !1354
  %.pre98.i = load i32, ptr %i.c, align 4, !tbaa !107
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge.i, %releasePage.exit87.i
  %i.cl = phi i32 [ %.pre98.i, %._crit_edge.i ], [ %storemerge.i, %releasePage.exit87.i ]
  %i.cm = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.cd, %releasePage.exit87.i ] ; 18 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 112
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !1350
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 104 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !1351 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 2 uses
  %i.cs = load i8, ptr %i.cr, align 8, !tbaa !1352 ; 3 uses
  %i.ct = zext i8 %i.cs to i64                    ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.ct ; 6 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cq, i64 46 ; 3 uses
  %i.cw = load i16, ptr %i.cv, align 2, !tbaa !1377
  %i.cx = zext i16 %i.cw to i64
  %i.cy = sub nsw i64 %i.cx, %i.ct
  call void @llvm.memset.p0.i64(ptr align 1 %i.cu, i8 0, i64 %i.cy, i1 false)
  %i.cz = trunc nuw nsw i32 %2 to i8              ; 2 uses
  %i.da = or disjoint i8 %i.cz, 8
  store i8 %i.da, ptr %i.cu, align 1, !tbaa !838
  %i.db = getelementptr inbounds nuw i8, ptr %i.cu, i64 1
  store i32 0, ptr %i.db, align 1
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cu, i64 7
  store i8 0, ptr %i.dc, align 1, !tbaa !838
  %3 = getelementptr i8, ptr %i.cq, i64 47
  %4 = load i8, ptr %3, align 1, !tbaa !1377
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cu, i64 5
  store i8 %4, ptr %i.dd, align 1, !tbaa !838
  %i.de = load i16, ptr %i.cv, align 2, !tbaa !1377
  %i.df = trunc i16 %i.de to i8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cu, i64 6
  store i8 %i.df, ptr %i.dg, align 1, !tbaa !838
  %i.dh = load i16, ptr %i.cv, align 2, !tbaa !1377
  %i.di = zext i8 %i.cs to i16
  %i.dj = add nuw nsw i16 %i.di, 8                ; 2 uses
  %i.dk = sub i16 %i.dh, %i.dj
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cm, i64 18
  store i16 %i.dk, ptr %i.dl, align 2, !tbaa !1379
  %i.dm = and i32 %2, 5
  %i.dn = icmp ne i32 %i.dm, 0
  %i.do = zext i1 %i.dn to i8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cm, i64 3
  store i8 %i.do, ptr %i.dp, align 1, !tbaa !1057
  %i.dq = lshr i8 %i.cz, 1
  %i.dr = and i8 %i.dq, 1                         ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cm, i64 5
  store i8 %i.dr, ptr %i.ds, align 1, !tbaa !1373
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  store i8 1, ptr %i.dt, align 4, !tbaa !1368
  %i.du = getelementptr inbounds nuw i8, ptr %i.cm, i64 9
  store i8 0, ptr %i.du, align 1, !tbaa !1360
  %i.dv = load ptr, ptr %i.cp, align 8, !tbaa !1351 ; 2 uses
  %.not.i.i90.i = icmp samesign ugt i32 %2, 3     ; 3 uses
  %..i.i.i = select i1 %.not.i.i90.i, i64 56, i64 48
  %.29.i.i.i = select i1 %.not.i.i90.i, i64 60, i64 52
  %.30.i.i.i = zext i1 %.not.i.i90.i to i8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 %..i.i.i
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.29.i.i.i
  %.sink.in.i.i.i = load i32, ptr %i.dx, align 4, !tbaa !107
  %.sink.i.i.i = trunc i32 %.sink.in.i.i.i to i16
  %.sink25.in.i.i.i = load i32, ptr %i.dw, align 8, !tbaa !107
  %.sink25.i.i.i = trunc i32 %.sink25.in.i.i.i to i16
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cm, i64 6
  store i8 %.30.i.i.i, ptr %i.dy, align 2, !tbaa !1367
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cm, i64 10
  store i16 %.sink25.i.i.i, ptr %i.dz, align 2, !tbaa !1374
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cm, i64 12
  store i16 %.sink.i.i.i, ptr %i.ea, align 4, !tbaa !1375
  %i.eb = xor i8 %i.dr, 1
  %i.ec = getelementptr inbounds nuw i8, ptr %i.cm, i64 7
  store i8 %i.eb, ptr %i.ec, align 1, !tbaa !1361
  store i8 %i.cs, ptr %i.cr, align 8, !tbaa !1352
  %i.ed = getelementptr inbounds nuw i8, ptr %i.cm, i64 14
  store i16 %i.dj, ptr %i.ed, align 2, !tbaa !1357
  %i.ee = getelementptr inbounds nuw i8, ptr %i.cm, i64 2
  store i8 0, ptr %i.ee, align 2, !tbaa !1376
  %i.ef = getelementptr inbounds nuw i8, ptr %i.cm, i64 1
  store i8 0, ptr %i.ef, align 1, !tbaa !1371
  %i.eg = getelementptr inbounds nuw i8, ptr %i.cm, i64 20
  store i16 0, ptr %i.eg, align 4, !tbaa !1359
  store i8 1, ptr %i.cm, align 8, !tbaa !1369
  %i.eh = getelementptr inbounds nuw i8, ptr %i.cm, i64 120
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !1245
  call fastcc void @sqlite3PagerUnref(ptr noundef %i.ei)
  store i32 %i.cl, ptr %1, align 4, !tbaa !107
  br label %btreeCreateTable.exit

btreeCreateTable.exit:                            ; preds = %bb.b, %releasePage.exit87.thread.i, %bb.w, %bb.x
  %.3.i = phi i32 [ %i.p, %bb.b ], [ 0, %bb.x ], [ %.2.ph.i, %releasePage.exit87.thread.i ], [ %i.ck, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #44
  ret i32 %.3.i
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @sqlite3BtreeNext(ptr noundef %0, ptr nofree noundef nonnull writeonly captures(none) %1) unnamed_addr #5 !guid !2421 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 105 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 102
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.n, %bb.a
  %i.i = load i8, ptr %i.a, align 1, !tbaa !1040  ; 3 uses
  %i.j = icmp ugt i8 %i.i, 1
  br i1 %i.j, label %bb.b, label %sqlite3BtreeRestoreOrClearCursorPosition.exit.thread

bb.b:                                             ; preds = %tailrecurse
  %i.k = icmp eq i8 %i.i, 3
  br i1 %i.k, label %sqlite3BtreeRestoreOrClearCursorPosition.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load i8, ptr %i.b, align 4, !tbaa !1033
  %.not.i3 = icmp eq i8 %i.l, 0
  br i1 %.not.i3, label %bb.d, label %btreeNext.exit

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr %i.a, align 1, !tbaa !1040
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !1041
  %i.n = load i64, ptr %i.d, align 8, !tbaa !1042
  %i.o = tail call fastcc i32 @sqlite3BtreeMoveto(ptr noundef nonnull %0, ptr noundef %i.m, i64 noundef %i.n, i32 noundef 0, ptr noundef nonnull %i.e), !inline_history !2418 ; 2 uses
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.e, label %btreeNext.exit

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !1041 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %sqlite3_free.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds i8, ptr %i.q, i64 -8 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !829
  %i.u = shl i64 %i.t, 32
  %i.v = ashr exact i64 %i.u, 32
  %i.w = load i64, ptr @mem.5, align 8, !tbaa !824
  %i.x = sub nsw i64 %i.w, %i.v
  store i64 %i.x, ptr @mem.5, align 8, !tbaa !824
  tail call void @free(ptr noundef nonnull %i.s) #44, !inline_history !2418
  br label %sqlite3_free.exit.i

sqlite3_free.exit.i:                              ; preds = %bb.f, %bb.e
  store ptr null, ptr %i.c, align 8, !tbaa !1041
  %.pr.pre = load i8, ptr %i.a, align 1, !tbaa !1040
  br label %sqlite3BtreeRestoreOrClearCursorPosition.exit.thread

sqlite3BtreeRestoreOrClearCursorPosition.exit:    ; preds = %bb.b
  %i.y = load i32, ptr %i.e, align 8, !tbaa !1044 ; 2 uses
  %.not.i = icmp eq i32 %i.y, 0
  br i1 %.not.i, label %.thread, label %btreeNext.exit

sqlite3BtreeRestoreOrClearCursorPosition.exit.thread: ; preds = %sqlite3_free.exit.i, %tailrecurse
  %i.z = phi i8 [ %i.i, %tailrecurse ], [ %.pr.pre, %sqlite3_free.exit.i ]
  %i.aa = icmp eq i8 %i.z, 0
  br i1 %i.aa, label %bb.g, label %bb.h

bb.g:                                             ; preds = %sqlite3BtreeRestoreOrClearCursorPosition.exit.thread
  store i32 1, ptr %1, align 4, !tbaa !107
  br label %btreeNext.exit

bb.h:                                             ; preds = %sqlite3BtreeRestoreOrClearCursorPosition.exit.thread
  %.pr = load i32, ptr %i.e, align 8, !tbaa !1044
  %i.ab = icmp sgt i32 %.pr, 0
  br i1 %i.ab, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.e, align 8, !tbaa !1044
  store i32 0, ptr %1, align 4, !tbaa !107
  br label %btreeNext.exit

.thread:                                          ; preds = %sqlite3BtreeRestoreOrClearCursorPosition.exit, %bb.h
  %i.ac = load ptr, ptr %i.f, align 8, !tbaa !1053 ; 6 uses
  store i32 0, ptr %i.e, align 8, !tbaa !1044
  %i.ad = load i32, ptr %i.g, align 8, !tbaa !1356
  %i.ae = add nsw i32 %i.ad, 1                    ; 2 uses
  store i32 %i.ae, ptr %i.g, align 8, !tbaa !1356
  store i16 0, ptr %i.h, align 2, !tbaa !1355
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 20
  %i.ag = load i16, ptr %i.af, align 4, !tbaa !1359
  %i.ah = zext i16 %i.ag to i32
  %.not44.i = icmp slt i32 %i.ae, %i.ah
  br i1 %.not44.i, label %bb.o, label %bb.j

bb.j:                                             ; preds = %.thread
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.aj = load i8, ptr %i.ai, align 4, !tbaa !1368
  %.not46.i = icmp eq i8 %i.aj, 0
  br i1 %.not46.i, label %bb.k, label %.preheader

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 112
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !1350
  %i.am = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.an = load i8, ptr %i.am, align 8, !tbaa !1352
  %i.ao = zext i8 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load i32, ptr %i.aq, align 1
  %i.as = tail call i32 @llvm.bswap.i32(i32 %i.ar)
  %i.at = tail call fastcc i32 @moveToChild(ptr noundef nonnull %0, i32 noundef %i.as), !inline_history !2419 ; 2 uses
  %.not47.i = icmp eq i32 %i.at, 0
  br i1 %.not47.i, label %bb.l, label %btreeNext.exit

bb.l:                                             ; preds = %bb.k
  %i.au = tail call fastcc i32 @moveToLeftmost(ptr noundef nonnull %0), !inline_history !2419
  store i32 0, ptr %1, align 4, !tbaa !107
  br label %btreeNext.exit

.preheader:                                       ; preds = %bb.j, %sqlite3BtreeIsRootPage.exit.thread
  %.0.i = phi ptr [ %i.bl, %sqlite3BtreeIsRootPage.exit.thread ], [ %i.ac, %bb.j ]
  %i.av = getelementptr i8, ptr %.0.i, i64 136
  %.0.val.i = load ptr, ptr %i.av, align 8, !tbaa !1372 ; 4 uses
  %i.aw = icmp eq ptr %.0.val.i, null
  br i1 %i.aw, label %sqlite3BtreeIsRootPage.exit.thread11, label %bb.m

bb.m:                                             ; preds = %.preheader
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.val.i, i64 128
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !1056
  %i.az = icmp ugt i32 %i.ay, 1
  br i1 %i.az, label %sqlite3BtreeIsRootPage.exit.thread, label %sqlite3BtreeIsRootPage.exit

sqlite3BtreeIsRootPage.exit:                      ; preds = %bb.m
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.val.i, i64 112
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !1350
end_hunk_1
begin_hunk_2_@sqlite3VtabBegin:bb.a
  %i.ab = sext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.ab
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ac, i8 0, i64 40, i1 false)
  store ptr %i.z, ptr %i.a, align 8, !tbaa !1118
  br label %bb.k

bb.k:                                             ; preds = %sqlite3DbRealloc.exit.i, %._crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre19.i, %._crit_edge.i ], [ %i.ab, %sqlite3DbRealloc.exit.i ]
  %i.ad = phi i32 [ %i.q, %._crit_edge.i ], [ %i.aa, %sqlite3DbRealloc.exit.i ]
  %i.ae = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.z, %sqlite3DbRealloc.exit.i ]
  %i.af = add nsw i32 %i.ad, 1
  store i32 %i.af, ptr %i.j, align 8, !tbaa !1119
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %.pre-phi.i
  store ptr %1, ptr %i.ag, align 8, !tbaa !1120
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !1110
  %i.aj = add nsw i32 %i.ai, 1
  store i32 %i.aj, ptr %i.ah, align 8, !tbaa !1110
  br label %addToVTrans.exit

addToVTrans.exit:                                 ; preds = %bb.f, %.critedge, %bb.h, %bb.j, %bb.k, %bb.d, %bb.c, %bb.b
  %.124 = phi i32 [ 6, %bb.b ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.k ], [ %i.p, %.critedge ], [ 7, %bb.h ], [ 7, %bb.j ], [ 0, %bb.f ]
  ret i32 %.124
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @sqlite3VtabCallCreate(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #5 !guid !2466 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !979
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [48 x i8], ptr %i.b, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1129
  %i.f = tail call fastcc ptr @sqlite3FindTable(ptr noundef %0, ptr noundef %2, ptr noundef %i.e) ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1471 ; 3 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 136
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1113
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !849
  %i.l = tail call ptr (ptr, ptr, ...) @sqlite3MPrintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.248, ptr noundef %i.k)
  store ptr %i.l, ptr %3, align 8, !tbaa !849
  br label %addToVTrans.exit

bb.b:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !1071
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !2467
  %i.p = tail call fastcc i32 @vtabCallConstructor(ptr noundef nonnull %0, ptr noundef nonnull %i.f, ptr noundef %i.h, ptr noundef %i.o, ptr noundef %3) ; 2 uses
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.c, label %addToVTrans.exit

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1109 ; 3 uses
  %.not21 = icmp eq ptr %i.s, null
  br i1 %.not21, label %addToVTrans.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 3 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !1119 ; 4 uses
  %i.v = srem i32 %i.u, 5
  %i.w = icmp eq i32 %i.v, 0
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  br i1 %i.w, label %bb.e, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d
  %.pre.i = load ptr, ptr %i.x, align 8, !tbaa !1118
  %.pre19.i = sext i32 %i.u to i64
  br label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 42 ; 2 uses
  %i.z = load i8, ptr %i.y, align 2, !tbaa !901
  %i.aa = icmp eq i8 %i.z, 0
  br i1 %i.aa, label %bb.f, label %addToVTrans.exit

bb.f:                                             ; preds = %bb.e
  %i.ab = load ptr, ptr %i.x, align 8, !tbaa !1118
  %i.ac = shl i32 %i.u, 3
  %i.ad = add i32 %i.ac, 40
  %i.ae = tail call ptr @sqlite3_realloc(ptr noundef %i.ab, i32 noundef %i.ad) ; 4 uses
  %.not.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i, label %bb.g, label %sqlite3DbRealloc.exit.i

bb.g:                                             ; preds = %bb.f
  store i8 1, ptr %i.y, align 2, !tbaa !901
  br label %addToVTrans.exit

sqlite3DbRealloc.exit.i:                          ; preds = %bb.f
  %i.af = load i32, ptr %i.t, align 8, !tbaa !1119 ; 2 uses
  %i.ag = sext i32 %i.af to i64                   ; 2 uses
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.ag
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ah, i8 0, i64 40, i1 false)
  store ptr %i.ae, ptr %i.x, align 8, !tbaa !1118
  br label %bb.h

bb.h:                                             ; preds = %sqlite3DbRealloc.exit.i, %._crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre19.i, %._crit_edge.i ], [ %i.ag, %sqlite3DbRealloc.exit.i ]
  %i.ai = phi i32 [ %i.u, %._crit_edge.i ], [ %i.af, %sqlite3DbRealloc.exit.i ]
  %i.aj = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.ae, %sqlite3DbRealloc.exit.i ]
  %i.ak = add nsw i32 %i.ai, 1
  store i32 %i.ak, ptr %i.t, align 8, !tbaa !1119
  %i.al = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %.pre-phi.i
  store ptr %i.s, ptr %i.al, align 8, !tbaa !1120
  %i.am = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !1110
  %i.ao = add nsw i32 %i.an, 1
  store i32 %i.ao, ptr %i.am, align 8, !tbaa !1110
  br label %addToVTrans.exit

addToVTrans.exit:                                 ; preds = %bb.h, %bb.g, %bb.e, %.thread, %bb.c, %bb.b
  %.1 = phi i32 [ 1, %.thread ], [ 0, %bb.c ], [ %i.p, %bb.b ], [ 0, %bb.h ], [ 7, %bb.g ], [ 7, %bb.e ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @sqlite3VtabCallDestroy(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #5 !guid !2468 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !979
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [48 x i8], ptr %i.b, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1129
  %i.f = tail call fastcc ptr @sqlite3FindTable(ptr noundef %0, ptr noundef %2, ptr noundef %i.e) ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 120 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1109 ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1471
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1071
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !2469 ; 2 uses
  %.not13 = icmp eq ptr %i.m, null
  br i1 %.not13, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = tail call i32 %i.m(ptr noundef nonnull %i.h) #44 ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.b, %bb.c
  store ptr null, ptr %i.g, align 8, !tbaa !1109
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.thread, %bb.a
  %.1 = phi i32 [ 0, %bb.a ], [ 0, %.thread ], [ %i.n, %bb.c ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal i32 @sqlite3BtreeInvokeBusyHandler(ptr nofree noundef readonly captures(none) %0, i32 %1) #5 !guid !2471 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1134 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 432
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1392 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %sqlite3InvokeBusyHandler.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 448 ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !1390 ; 2 uses
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %sqlite3InvokeBusyHandler.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 440
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1393
  %i.k = tail call i32 %i.d(ptr noundef %i.j, i32 noundef %i.g) #44, !inline_history !2470 ; 2 uses
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load i32, ptr %i.f, align 8, !tbaa !1390
  %i.n = add nsw i32 %i.m, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %storemerge.i = phi i32 [ %i.n, %bb.d ], [ -1, %bb.c ]
  store i32 %storemerge.i, ptr %i.f, align 8, !tbaa !1390
  br label %sqlite3InvokeBusyHandler.exit

sqlite3InvokeBusyHandler.exit:                    ; preds = %bb.a, %bb.b, %bb.e
  %.0.i = phi i32 [ %i.k, %bb.e ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @zeroPage(ptr nofree noundef captures(none) initializes((0, 8), (9, 16), (18, 22)) %0, i32 noundef range(i32 0, 256) %1) unnamed_addr #34 !guid !2472 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1350
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1351 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8, !tbaa !1352  ; 3 uses
  %i.g = zext i8 %i.f to i32                      ; 2 uses
  %i.h = zext i8 %i.f to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.h ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 46 ; 3 uses
  %i.k = load i16, ptr %i.j, align 2, !tbaa !1377
  %i.l = zext i16 %i.k to i32
  %i.m = sub nsw i32 %i.l, %i.g
  %i.n = sext i32 %i.m to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.i, i8 0, i64 %i.n, i1 false)
  %i.o = trunc nuw i32 %1 to i8                   ; 3 uses
  store i8 %i.o, ptr %i.i, align 1, !tbaa !838
  %i.p = lshr i32 %1, 1
  %i.q = and i32 %i.p, 4
  %reass.sub = sub nsw i32 %i.g, %i.q
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i32 0, ptr %i.r, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 7
  store i8 0, ptr %i.s, align 1, !tbaa !838
  %2 = getelementptr i8, ptr %i.d, i64 47
  %3 = load i8, ptr %2, align 1, !tbaa !1377
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 5
  store i8 %3, ptr %i.t, align 1, !tbaa !838
  %i.u = load i16, ptr %i.j, align 2, !tbaa !1377
  %i.v = trunc i16 %i.u to i8
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 6
  store i8 %i.v, ptr %i.w, align 1, !tbaa !838
  %i.x = load i16, ptr %i.j, align 2, !tbaa !1377
  %i.y = trunc nsw i32 %reass.sub to i16
  %i.z = add nsw i16 %i.y, 12                     ; 2 uses
  %i.aa = sub i16 %i.x, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i16 %i.aa, ptr %i.ab, align 2, !tbaa !1379
  %i.ac = and i32 %1, 5
  %i.ad = icmp ne i32 %i.ac, 0
  %i.ae = zext i1 %i.ad to i8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %i.ae, ptr %i.af, align 1, !tbaa !1057
  %i.ag = lshr i8 %i.o, 1
  %i.ah = and i8 %i.ag, 1                         ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.ah, ptr %i.ai, align 1, !tbaa !1373
  %i.aj = lshr i8 %i.o, 3                         ; 2 uses
  %i.ak = and i8 %i.aj, 1                         ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.ak, ptr %i.al, align 4, !tbaa !1368
  %i.am = shl nuw nsw i8 %i.ak, 2
  %i.an = xor i8 %i.am, 4
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !1360
  %i.ap = load ptr, ptr %i.c, align 8, !tbaa !1351 ; 2 uses
  %i.aq = and i32 %1, 4
  %.not.i = icmp eq i32 %i.aq, 0                  ; 4 uses
  %..i = select i1 %.not.i, i64 48, i64 56
  %.29.i = select i1 %.not.i, i64 52, i64 60
  %not..not.i = xor i1 %.not.i, true
  %.30.i = zext i1 %not..not.i to i8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 %..i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.29.i
  %.sink.in.i = load i32, ptr %i.as, align 4, !tbaa !107
  %.sink.i = trunc i32 %.sink.in.i to i16
  %.sink25.in.i = load i32, ptr %i.ar, align 8, !tbaa !107
  %.sink25.i = trunc i32 %.sink25.in.i to i16
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i8 %.30.i, ptr %i.at, align 2, !tbaa !1367
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 %.sink25.i, ptr %i.au, align 2, !tbaa !1374
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i16 %.sink.i, ptr %i.av, align 4, !tbaa !1375
  %.not23.i = icmp eq i8 %i.ah, 0
  %.not24.i = trunc i8 %i.aj to i1
  %narrow.i = or i1 %.not.i, %.not24.i
  %narrow31.i = select i1 %.not23.i, i1 %narrow.i, i1 false
  %i.aw = zext i1 %narrow31.i to i8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !1361
  store i8 %i.f, ptr %i.e, align 8, !tbaa !1352
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i16 %i.z, ptr %i.ay, align 2, !tbaa !1357
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 0, ptr %i.az, align 2, !tbaa !1376
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.ba, align 1, !tbaa !1371
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i16 0, ptr %i.bb, align 4, !tbaa !1359
  store i8 1, ptr %0, align 8, !tbaa !1369
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @dfltCompare(ptr nofree readnone captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) #13 !guid !2473 {
bb.a:
  %i.a = tail call i32 @llvm.smin.i32(i32 %1, i32 %3)
  %i.b = sext i32 %i.a to i64
  %i.c = tail call i32 @memcmp(ptr noundef %2, ptr noundef %4, i64 noundef %i.b) #43 ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  %i.e = sub nsw i32 %1, %3
  %spec.select = select i1 %i.d, i32 %i.e, i32 %i.c
  ret i32 %spec.select
}

; Function Attrs: nounwind uwtable
define internal void @pageDestructor(ptr nofree noundef captures(none) %0, i32 %1) #5 !guid !2474 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1253
  %.not.i = icmp eq ptr %i.a, null
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.c = select i1 %.not.i, ptr null, ptr %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 136 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1372 ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.b, label %releasePage.exit

releasePage.exit:                                 ; preds = %bb.a
  store ptr null, ptr %i.d, align 8, !tbaa !1372
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1245
  tail call fastcc void @sqlite3PagerUnref(ptr noundef %i.g)
  br label %bb.b

bb.b:                                             ; preds = %releasePage.exit, %bb.a
  store i8 0, ptr %i.b, align 8, !tbaa !1369
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @pageReinit(ptr nofree noundef captures(none) %0, i32 %1) #3 !guid !2475 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !1369
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.a, align 8, !tbaa !1369
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1372
  %i.e = tail call fastcc i32 @sqlite3BtreeInitPage(ptr noundef nonnull %i.a, ptr noundef %i.d) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 8) i32 @sqlite3PagerSetPagesize(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1) unnamed_addr #5 !guid !2476 {
bb.a:
  %i.a = load i16, ptr %1, align 2, !tbaa !933    ; 2 uses
  %i.b = zext i16 %i.a to i32                     ; 5 uses
  %.not = icmp eq i16 %i.a, 0
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !1262
  %.not19 = icmp eq i32 %i.d, %i.b
  br i1 %.not19, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i8, ptr %i.e, align 8, !tbaa !1267
  %.not20 = icmp eq i8 %i.f, 0
  br i1 %.not20, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.h = load i32, ptr %i.g, align 4, !tbaa !1248
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.j = tail call ptr @sqlite3_malloc(i32 noundef %i.b) ; 2 uses
  %.not21 = icmp eq ptr %i.j, null
  br i1 %.not21, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @pager_reset(ptr noundef nonnull %0)
  store i32 %i.b, ptr %i.c, align 4, !tbaa !1262
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 19
  %i.l = load i8, ptr %i.k, align 1, !tbaa !1319
  %.not.i = icmp eq i8 %i.l, 0
  br i1 %.not.i, label %bb.g, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.f
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !1314
  br label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1193 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1196
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 88
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1320 ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %sqlite3OsSectorSize.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = tail call i32 %i.q(ptr noundef nonnull %i.n) #44, !inline_history !39
  %.pre.pre = load i32, ptr %i.c, align 4, !tbaa !1262
  br label %sqlite3OsSectorSize.exit.i

sqlite3OsSectorSize.exit.i:                       ; preds = %bb.h, %bb.g
  %.pre = phi i32 [ %.pre.pre, %bb.h ], [ %i.b, %bb.g ]
  %i.s = phi i32 [ %i.r, %bb.h ], [ 512, %bb.g ]  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i32 %i.s, ptr %i.t, align 8, !tbaa !1314
  br label %bb.i

bb.i:                                             ; preds = %sqlite3OsSectorSize.exit.i, %._crit_edge.i
  %i.u = phi i32 [ %i.b, %._crit_edge.i ], [ %.pre, %sqlite3OsSectorSize.exit.i ] ; 2 uses
  %i.v = phi i32 [ %.pre.i, %._crit_edge.i ], [ %i.s, %sqlite3OsSectorSize.exit.i ]
  %i.w = icmp slt i32 %i.v, %i.u
  br i1 %i.w, label %bb.j, label %setSectorSize.exit

bb.j:                                             ; preds = %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i32 %i.u, ptr %i.x, align 8, !tbaa !1314
  br label %setSectorSize.exit

setSectorSize.exit:                               ; preds = %bb.i, %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1311 ; 2 uses
end_hunk_2
begin_hunk_3_@balance_nonroot:bb.a
  %.0406.lcssa865.ph = phi i32 [ %.2408, %._crit_edge642 ], [ 0, %._crit_edge ]
  %.0458.lcssa864.ph = phi i32 [ %.3461, %._crit_edge642 ], [ 0, %._crit_edge ] ; 2 uses
  store i32 0, ptr %i.i, align 16, !tbaa !107
  store i32 %.0458.lcssa864.ph, ptr %i.h, align 16, !tbaa !107
  %i.th = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ti = load ptr, ptr %i.th, align 8, !tbaa !1350
  %i.tj = load i8, ptr %i.ti, align 1, !tbaa !838 ; 2 uses
  %i.tk = zext i8 %i.tj to i32
  br label %.lr.ph661

._crit_edge650:                                   ; preds = %bb.bn
  %i.tl = sext i32 %.2427 to i64                  ; 2 uses
  %i.tm = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.tl
  store i32 %.1410, ptr %i.tm, align 4, !tbaa !107
  %i.tn = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.tl
  store i32 %.3461, ptr %i.tn, align 4, !tbaa !107
  %i.to = icmp sgt i32 %.2427, 0                  ; 3 uses
  br i1 %i.to, label %.lr.ph655.preheader, label %._crit_edge656

.lr.ph655.preheader:                              ; preds = %._crit_edge650
  %i.tp = zext nneg i32 %.2427 to i64             ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.tp
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !107
  br label %.lr.ph655

.lr.ph655:                                        ; preds = %.lr.ph655.preheader, %bb.bq
  %i.tq = phi i32 [ %.pre, %.lr.ph655.preheader ], [ %.0399, %bb.bq ]
  %indvars.iv748 = phi i64 [ %i.tp, %.lr.ph655.preheader ], [ %indvars.iv.next749, %bb.bq ] ; 3 uses
  %i.tr = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv748
  %indvars.iv.next749 = add nsw i64 %indvars.iv748, -1 ; 3 uses
  %i.ts = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next749 ; 2 uses
  %i.tt = load i32, ptr %i.ts, align 4, !tbaa !107
  %i.tu = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next749 ; 2 uses
  %i.tv = load i32, ptr %i.tu, align 4, !tbaa !107 ; 2 uses
  %i.tw = add nsw i32 %i.tv, -1
  br label %bb.bo

bb.bo:                                            ; preds = %.critedge, %.lr.ph655
  %.0400 = phi i32 [ %i.tq, %.lr.ph655 ], [ %.pre-phi810, %.critedge ] ; 3 uses
  %.0399 = phi i32 [ %i.tt, %.lr.ph655 ], [ %.pre-phi815, %.critedge ] ; 4 uses
  %.0398 = phi i32 [ %i.tw, %.lr.ph655 ], [ %i.ui, %.critedge ] ; 2 uses
  %i.tx = phi i32 [ %i.tv, %.lr.ph655 ], [ %i.uh, %.critedge ] ; 3 uses
  %.0397 = add i32 %i.tx, %.neg
  %i.ty = icmp eq i32 %.0400, 0
  %.phi.trans.insert798 = sext i32 %.0397 to i64
  %.phi.trans.insert799 = getelementptr inbounds [2 x i8], ptr %i.nx, i64 %.phi.trans.insert798
  %.pre800 = load i16, ptr %.phi.trans.insert799, align 2, !tbaa !933 ; 2 uses
  br i1 %i.ty, label %..critedge_crit_edge, label %bb.bp

..critedge_crit_edge:                             ; preds = %bb.bo
  %.pre801 = sext i32 %.0398 to i64
  %.phi.trans.insert802 = getelementptr inbounds [2 x i8], ptr %i.nx, i64 %.pre801
  %.pre803 = load i16, ptr %.phi.trans.insert802, align 2, !tbaa !933
  %.pre805 = zext i16 %.pre800 to i32
  %.pre809 = add nuw nsw i32 %.pre805, 2
  %.pre811 = zext i16 %.pre803 to i32
  %.pre813 = add i32 %.0399, -2
  %.pre814 = sub i32 %.pre813, %.pre811
  br label %.critedge

bb.bp:                                            ; preds = %bb.bo
  %i.tz = zext i16 %.pre800 to i32
  %i.ua = add i32 %.0400, 2
  %i.ub = add i32 %i.ua, %i.tz                    ; 2 uses
  %i.uc = sext i32 %.0398 to i64
  %i.ud = getelementptr inbounds [2 x i8], ptr %i.nx, i64 %i.uc
  %i.ue = load i16, ptr %i.ud, align 2, !tbaa !933
  %i.uf = zext i16 %i.ue to i32
  %.neg586 = add i32 %.0399, -2
  %i.ug = sub i32 %.neg586, %i.uf                 ; 2 uses
  %.not512 = icmp sgt i32 %i.ub, %i.ug
  br i1 %.not512, label %bb.bq, label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge, %bb.bp
  %.pre-phi815 = phi i32 [ %.pre814, %..critedge_crit_edge ], [ %i.ug, %bb.bp ]
  %.pre-phi810 = phi i32 [ %.pre809, %..critedge_crit_edge ], [ %i.ub, %bb.bp ]
  %i.uh = add nsw i32 %i.tx, -1                   ; 2 uses
  store i32 %i.uh, ptr %i.tu, align 4, !tbaa !107
  %i.ui = add nsw i32 %i.tx, -2
  br label %bb.bo, !llvm.loop !2509

bb.bq:                                            ; preds = %bb.bp
  store i32 %.0400, ptr %i.tr, align 4, !tbaa !107
  store i32 %.0399, ptr %i.ts, align 4, !tbaa !107
  %i.uj = icmp sgt i64 %indvars.iv748, 1
  br i1 %i.uj, label %.lr.ph655, label %._crit_edge656, !llvm.loop !2510

._crit_edge656:                                   ; preds = %bb.bq, %._crit_edge650
  %i.uk = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ul = load ptr, ptr %i.uk, align 8, !tbaa !1350
  %i.um = load i8, ptr %i.ul, align 1, !tbaa !838 ; 2 uses
  %i.un = zext i8 %i.um to i32                    ; 2 uses
  %.not499657 = icmp slt i32 %.2427, 0
  br i1 %.not499657, label %.preheader594, label %.lr.ph661

.lr.ph661:                                        ; preds = %._crit_edge656.thread, %._crit_edge656
  %i.uo = phi i32 [ %i.tk, %._crit_edge656.thread ], [ %i.un, %._crit_edge656 ] ; 4 uses
  %i.up = phi i8 [ %i.tj, %._crit_edge656.thread ], [ %i.um, %._crit_edge656 ] ; 3 uses
  %.0406.lcssa865870881 = phi i32 [ %.0406.lcssa865.ph, %._crit_edge656.thread ], [ %.2408, %._crit_edge656 ]
  %.0458.lcssa864871879 = phi i32 [ %.0458.lcssa864.ph, %._crit_edge656.thread ], [ %.3461, %._crit_edge656 ]
  %.1426.lcssa872877 = phi i32 [ 0, %._crit_edge656.thread ], [ %.2427, %._crit_edge656 ] ; 2 uses
  %i.uq = phi i1 [ false, %._crit_edge656.thread ], [ %i.to, %._crit_edge656 ]
  %i.ur = lshr i32 %i.uo, 1
  %i.us = and i32 %i.ur, 4
  %i.ut = and i32 %i.uo, 5
  %i.uu = icmp ne i32 %i.ut, 0
  %i.uv = zext i1 %i.uu to i8
  %i.uw = lshr i8 %i.up, 1
  %i.ux = and i8 %i.uw, 1                         ; 2 uses
  %i.uy = lshr i8 %i.up, 3                        ; 2 uses
  %i.uz = and i8 %i.uy, 1                         ; 2 uses
  %i.va = shl nuw nsw i8 %i.uz, 2
  %i.vb = xor i8 %i.va, 4
  %i.vc = and i32 %i.uo, 4
  %.not.i.i524 = icmp eq i32 %i.vc, 0             ; 4 uses
  %..i.i = select i1 %.not.i.i524, i64 48, i64 56
  %.29.i.i = select i1 %.not.i.i524, i64 52, i64 60
  %not..not.i.i = xor i1 %.not.i.i524, true
  %.30.i.i = zext i1 %not..not.i.i to i8
  %.not23.i.i = icmp eq i8 %i.ux, 0
  %.not24.i.i = trunc i8 %i.uy to i1
  %narrow.i.i = or i1 %.not.i.i524, %.not24.i.i
  %narrow31.i.i = select i1 %.not23.i.i, i1 %narrow.i.i, i1 false
  %i.vd = zext i1 %narrow31.i.i to i8
  %i.ve = zext nneg i32 %.0456.lcssa to i64
  %i.vf = add nuw i32 %.1426.lcssa872877, 1       ; 2 uses
  %wide.trip.count755 = zext i32 %i.vf to i64
  br label %bb.br

.preheader594:                                    ; preds = %bb.bv, %._crit_edge656
  %i.vg = phi i32 [ %i.un, %._crit_edge656 ], [ %i.uo, %bb.bv ]
  %.0406.lcssa865870882 = phi i32 [ %.2408, %._crit_edge656 ], [ %.0406.lcssa865870881, %bb.bv ]
  %.0458.lcssa864871880 = phi i32 [ %.3461, %._crit_edge656 ], [ %.0458.lcssa864871879, %bb.bv ]
  %.1426.lcssa872878 = phi i32 [ %.2427, %._crit_edge656 ], [ %.1426.lcssa872877, %bb.bv ] ; 3 uses
  %i.vh = phi i1 [ %i.to, %._crit_edge656 ], [ %i.uq, %bb.bv ]
  %.0452.lcssa = phi i32 [ 0, %._crit_edge656 ], [ %i.vf, %bb.bv ] ; 15 uses
  %i.vi = icmp samesign ult i32 %.0452.lcssa, %.0456.lcssa
  br i1 %i.vi, label %.lr.ph665.preheader, label %.preheader593

.lr.ph665.preheader:                              ; preds = %.preheader594
  %i.vj = zext nneg i32 %.0452.lcssa to i64
  %wide.trip.count760 = zext nneg i32 %.0456.lcssa to i64
  br label %.lr.ph665

bb.br:                                            ; preds = %.lr.ph661, %bb.bv
  %indvars.iv751 = phi i64 [ 0, %.lr.ph661 ], [ %indvars.iv.next752, %bb.bv ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #44
  %i.vk = icmp samesign ult i64 %indvars.iv751, %i.ve
  br i1 %i.vk, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.vl = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv751 ; 2 uses
  %i.vm = load ptr, ptr %i.vl, align 8, !tbaa !1354 ; 3 uses
  %i.vn = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv751
  store ptr %i.vm, ptr %i.vn, align 8, !tbaa !1354
  %i.vo = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv751
  %i.vp = load i32, ptr %i.vo, align 4, !tbaa !107
  %i.vq = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv751
  store i32 %i.vp, ptr %i.vq, align 4, !tbaa !107
  store ptr null, ptr %i.vl, align 8, !tbaa !1354
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vm, i64 120
  %i.vs = load ptr, ptr %i.vr, align 8, !tbaa !1245
  %i.vt = tail call fastcc i32 @sqlite3PagerWrite(ptr noundef %i.vs) ; 2 uses
  %.not511 = icmp eq i32 %i.vt, 0
  br i1 %.not511, label %bb.bv, label %.thread.split.loop.exit

bb.bt:                                            ; preds = %bb.br
  %i.vu = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv751 ; 2 uses
  %i.vv = getelementptr i8, ptr %i.vu, i64 -4
  %i.vw = load i32, ptr %i.vv, align 4, !tbaa !107
  %i.vx = call fastcc i32 @allocateBtreePage(ptr noundef %i.n, ptr noundef %i.k, ptr noundef %i.vu, i32 noundef %i.vw, i8 noundef zeroext 0) ; 2 uses
  %.not510 = icmp eq i32 %i.vx, 0
  br i1 %.not510, label %bb.bu, label %.thread.split.loop.exit918

bb.bu:                                            ; preds = %bb.bt
  %i.vy = load ptr, ptr %i.k, align 8, !tbaa !1354 ; 2 uses
  %i.vz = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv751
  store ptr %i.vy, ptr %i.vz, align 8, !tbaa !1354
  br label %bb.bv

.thread.split.loop.exit:                          ; preds = %bb.bs
  %indvars754.le = trunc i64 %indvars.iv751 to i32
  %i.wa = add nuw nsw i32 %indvars754.le, 1
  br label %.thread

.thread.split.loop.exit918:                       ; preds = %bb.bt
  %indvars754.le921 = trunc i64 %indvars.iv751 to i32
  br label %.thread

.thread:                                          ; preds = %.thread.split.loop.exit918, %.thread.split.loop.exit
  %.2454.ph = phi i32 [ %i.wa, %.thread.split.loop.exit ], [ %indvars754.le921, %.thread.split.loop.exit918 ]
  %.3414.ph = phi i32 [ %i.vt, %.thread.split.loop.exit ], [ %i.vx, %.thread.split.loop.exit918 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #44
  br label %.loopexit

bb.bv:                                            ; preds = %bb.bs, %bb.bu
  %i.wb = phi ptr [ %i.vm, %bb.bs ], [ %i.vy, %bb.bu ] ; 17 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %i.wb, i64 112
  %i.wd = load ptr, ptr %i.wc, align 8, !tbaa !1350
  %i.we = getelementptr inbounds nuw i8, ptr %i.wb, i64 104 ; 2 uses
  %i.wf = load ptr, ptr %i.we, align 8, !tbaa !1351 ; 2 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %i.wb, i64 8 ; 2 uses
  %i.wh = load i8, ptr %i.wg, align 8, !tbaa !1352 ; 3 uses
  %i.wi = zext i8 %i.wh to i32                    ; 2 uses
  %i.wj = zext i8 %i.wh to i64
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wd, i64 %i.wj ; 6 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wf, i64 46 ; 3 uses
  %i.wm = load i16, ptr %i.wl, align 2, !tbaa !1377
  %i.wn = zext i16 %i.wm to i32
  %i.wo = sub nsw i32 %i.wn, %i.wi
  %i.wp = sext i32 %i.wo to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.wk, i8 0, i64 %i.wp, i1 false)
  store i8 %i.up, ptr %i.wk, align 1, !tbaa !838
  %reass.sub.i = sub nsw i32 %i.wi, %i.us
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wk, i64 1
  store i32 0, ptr %i.wq, align 1
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wk, i64 7
  store i8 0, ptr %i.wr, align 1, !tbaa !838
  %5 = getelementptr i8, ptr %i.wf, i64 47
  %6 = load i8, ptr %5, align 1, !tbaa !1377
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wk, i64 5
  store i8 %6, ptr %i.ws, align 1, !tbaa !838
  %i.wt = load i16, ptr %i.wl, align 2, !tbaa !1377
  %i.wu = trunc i16 %i.wt to i8
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wk, i64 6
  store i8 %i.wu, ptr %i.wv, align 1, !tbaa !838
  %i.ww = load i16, ptr %i.wl, align 2, !tbaa !1377
  %i.wx = trunc nsw i32 %reass.sub.i to i16
  %i.wy = add nsw i16 %i.wx, 12                   ; 2 uses
  %i.wz = sub i16 %i.ww, %i.wy
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wb, i64 18
  store i16 %i.wz, ptr %i.xa, align 2, !tbaa !1379
  %i.xb = getelementptr inbounds nuw i8, ptr %i.wb, i64 3
  store i8 %i.uv, ptr %i.xb, align 1, !tbaa !1057
  %i.xc = getelementptr inbounds nuw i8, ptr %i.wb, i64 5
  store i8 %i.ux, ptr %i.xc, align 1, !tbaa !1373
  %i.xd = getelementptr inbounds nuw i8, ptr %i.wb, i64 4
  store i8 %i.uz, ptr %i.xd, align 4, !tbaa !1368
  %i.xe = getelementptr inbounds nuw i8, ptr %i.wb, i64 9
  store i8 %i.vb, ptr %i.xe, align 1, !tbaa !1360
  %i.xf = load ptr, ptr %i.we, align 8, !tbaa !1351 ; 2 uses
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xf, i64 %..i.i
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xf, i64 %.29.i.i
  %.sink.in.i.i = load i32, ptr %i.xh, align 4, !tbaa !107
  %.sink.i.i = trunc i32 %.sink.in.i.i to i16
  %.sink25.in.i.i = load i32, ptr %i.xg, align 8, !tbaa !107
  %.sink25.i.i = trunc i32 %.sink25.in.i.i to i16
  %i.xi = getelementptr inbounds nuw i8, ptr %i.wb, i64 6
  store i8 %.30.i.i, ptr %i.xi, align 2, !tbaa !1367
  %i.xj = getelementptr inbounds nuw i8, ptr %i.wb, i64 10
  store i16 %.sink25.i.i, ptr %i.xj, align 2, !tbaa !1374
  %i.xk = getelementptr inbounds nuw i8, ptr %i.wb, i64 12
  store i16 %.sink.i.i, ptr %i.xk, align 4, !tbaa !1375
  %i.xl = getelementptr inbounds nuw i8, ptr %i.wb, i64 7
  store i8 %i.vd, ptr %i.xl, align 1, !tbaa !1361
  store i8 %i.wh, ptr %i.wg, align 8, !tbaa !1352
  %i.xm = getelementptr inbounds nuw i8, ptr %i.wb, i64 14
  store i16 %i.wy, ptr %i.xm, align 2, !tbaa !1357
  %i.xn = getelementptr inbounds nuw i8, ptr %i.wb, i64 2
  store i8 0, ptr %i.xn, align 2, !tbaa !1376
  %i.xo = getelementptr inbounds nuw i8, ptr %i.wb, i64 1
  store i8 0, ptr %i.xo, align 1, !tbaa !1371
  %i.xp = getelementptr inbounds nuw i8, ptr %i.wb, i64 20
  store i16 0, ptr %i.xp, align 4, !tbaa !1359
  store i8 1, ptr %i.wb, align 8, !tbaa !1369
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #44
  %indvars.iv.next752 = add nuw nsw i64 %indvars.iv751, 1 ; 2 uses
  %exitcond756.not = icmp eq i64 %indvars.iv.next752, %wide.trip.count755
  br i1 %exitcond756.not, label %.preheader594, label %bb.br, !llvm.loop !2511

.preheader593:                                    ; preds = %releasePage.exit, %.preheader594
  br i1 %i.vh, label %.lr.ph675.preheader, label %.preheader592

.lr.ph675.preheader:                              ; preds = %.preheader593
  %i.xq = add nuw i32 %.1426.lcssa872878, 1
  %wide.trip.count772 = zext nneg i32 %.1426.lcssa872878 to i64
  %wide.trip.count767 = zext i32 %i.xq to i64     ; 2 uses
  %i.xr = zext i32 %.1426.lcssa872878 to i64
  %i.xs = add nsw i64 %wide.trip.count767, -2
  br label %.lr.ph671.preheader

.lr.ph665:                                        ; preds = %.lr.ph665.preheader, %releasePage.exit
  %indvars.iv757 = phi i64 [ %i.vj, %.lr.ph665.preheader ], [ %indvars.iv.next758, %releasePage.exit ] ; 2 uses
  %i.xt = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv757 ; 2 uses
  %i.xu = load ptr, ptr %i.xt, align 8, !tbaa !1354 ; 3 uses
  %i.xv = tail call fastcc i32 @freePage(ptr noundef %i.xu) ; 2 uses
  %.not509 = icmp eq i32 %i.xv, 0
  br i1 %.not509, label %bb.bw, label %.loopexit

bb.bw:                                            ; preds = %.lr.ph665
  %.not.i525 = icmp eq ptr %i.xu, null
  br i1 %.not.i525, label %releasePage.exit, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xu, i64 120
  %i.xx = load ptr, ptr %i.xw, align 8, !tbaa !1245
  tail call fastcc void @sqlite3PagerUnref(ptr noundef %i.xx)
  br label %releasePage.exit

releasePage.exit:                                 ; preds = %bb.bw, %bb.bx
  store ptr null, ptr %i.xt, align 8, !tbaa !1354
  %indvars.iv.next758 = add nuw nsw i64 %indvars.iv757, 1 ; 2 uses
  %exitcond761.not = icmp eq i64 %indvars.iv.next758, %wide.trip.count760
  br i1 %exitcond761.not, label %.preheader593, label %.lr.ph665, !llvm.loop !2512

.preheader592:                                    ; preds = %bb.bz, %.preheader593
  %i.xy = icmp sgt i32 %.0452.lcssa, 0            ; 2 uses
  br i1 %i.xy, label %.lr.ph683, label %._crit_edge684

.lr.ph683:                                        ; preds = %.preheader592
  %i.xz = add nsw i32 %.0452.lcssa, -1
  %i.ya = getelementptr inbounds nuw i8, ptr %1, i64 30
  %i.yb = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.yc = getelementptr inbounds nuw i8, ptr %i.p, i64 2
  %i.yd = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.ye = zext nneg i32 %i.xz to i64
  %wide.trip.count781 = zext nneg i32 %.0452.lcssa to i64
  br label %bb.ca

.lr.ph671.preheader:                              ; preds = %bb.bz, %.lr.ph675.preheader
  %indvars.iv769 = phi i64 [ 0, %.lr.ph675.preheader ], [ %indvars.iv.next770, %bb.bz ] ; 7 uses
  %indvars.iv762 = phi i64 [ 1, %.lr.ph675.preheader ], [ %indvars.iv.next763, %bb.bz ] ; 3 uses
  %i.yf = sub nsw i64 %i.xr, %indvars.iv769
  %i.yg = sub i64 %i.xs, %indvars.iv769
  %i.yh = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv769 ; 2 uses
  %i.yi = load i32, ptr %i.yh, align 4, !tbaa !107 ; 3 uses
  %indvars.iv.next770 = add nuw nsw i64 %indvars.iv769, 1 ; 2 uses
  %i.yj = trunc nuw nsw i64 %indvars.iv769 to i32 ; 2 uses
  %xtraiter = and i64 %i.yf, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph671.prol.loopexit, label %.lr.ph671.prol

.lr.ph671.prol:                                   ; preds = %.lr.ph671.preheader, %.lr.ph671.prol
  %indvars.iv764.prol = phi i64 [ %indvars.iv.next765.prol, %.lr.ph671.prol ], [ %indvars.iv762, %.lr.ph671.preheader ] ; 3 uses
  %.0394669.prol = phi i32 [ %spec.select520.prol, %.lr.ph671.prol ], [ %i.yj, %.lr.ph671.preheader ]
  %.0395668.prol = phi i32 [ %spec.select519.prol, %.lr.ph671.prol ], [ %i.yi, %.lr.ph671.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph671.prol ], [ 0, %.lr.ph671.preheader ]
  %i.yk = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv764.prol
  %i.yl = load i32, ptr %i.yk, align 4, !tbaa !107 ; 2 uses
  %i.ym = icmp ult i32 %i.yl, %.0395668.prol
  %spec.select519.prol = tail call i32 @llvm.umin.i32(i32 %i.yl, i32 %.0395668.prol) ; 2 uses
  %i.yn = trunc nuw nsw i64 %indvars.iv764.prol to i32
  %spec.select520.prol = select i1 %i.ym, i32 %i.yn, i32 %.0394669.prol ; 3 uses
  %indvars.iv.next765.prol = add nuw nsw i64 %indvars.iv764.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph671.prol.loopexit, label %.lr.ph671.prol, !llvm.loop !2513

.lr.ph671.prol.loopexit:                          ; preds = %.lr.ph671.prol, %.lr.ph671.preheader
  %spec.select520.lcssa.unr = phi i32 [ poison, %.lr.ph671.preheader ], [ %spec.select520.prol, %.lr.ph671.prol ]
  %indvars.iv764.unr = phi i64 [ %indvars.iv762, %.lr.ph671.preheader ], [ %indvars.iv.next765.prol, %.lr.ph671.prol ]
  %.0394669.unr = phi i32 [ %i.yj, %.lr.ph671.preheader ], [ %spec.select520.prol, %.lr.ph671.prol ]
  %.0395668.unr = phi i32 [ %i.yi, %.lr.ph671.preheader ], [ %spec.select519.prol, %.lr.ph671.prol ]
  %i.yo = icmp ult i64 %i.yg, 3
  br i1 %i.yo, label %._crit_edge672, label %.lr.ph671

.lr.ph671:                                        ; preds = %.lr.ph671.prol.loopexit, %.lr.ph671
  %indvars.iv764 = phi i64 [ %indvars.iv.next765.3, %.lr.ph671 ], [ %indvars.iv764.unr, %.lr.ph671.prol.loopexit ] ; 6 uses
  %.0394669 = phi i32 [ %spec.select520.3, %.lr.ph671 ], [ %.0394669.unr, %.lr.ph671.prol.loopexit ]
  %.0395668 = phi i32 [ %spec.select519.3, %.lr.ph671 ], [ %.0395668.unr, %.lr.ph671.prol.loopexit ] ; 2 uses
  %i.yp = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv764
  %i.yq = load i32, ptr %i.yp, align 4, !tbaa !107 ; 2 uses
  %i.yr = icmp ult i32 %i.yq, %.0395668
  %spec.select519 = tail call i32 @llvm.umin.i32(i32 %i.yq, i32 %.0395668) ; 2 uses
  %i.ys = trunc nuw nsw i64 %indvars.iv764 to i32
  %spec.select520 = select i1 %i.yr, i32 %i.ys, i32 %.0394669
  %indvars.iv.next765 = add nuw nsw i64 %indvars.iv764, 1 ; 2 uses
  %i.yt = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next765
  %i.yu = load i32, ptr %i.yt, align 4, !tbaa !107 ; 2 uses
  %i.yv = icmp ult i32 %i.yu, %spec.select519
  %spec.select519.1 = tail call i32 @llvm.umin.i32(i32 %i.yu, i32 %spec.select519) ; 2 uses
  %i.yw = trunc nuw nsw i64 %indvars.iv.next765 to i32
  %spec.select520.1 = select i1 %i.yv, i32 %i.yw, i32 %spec.select520
  %indvars.iv.next765.1 = add nuw nsw i64 %indvars.iv764, 2 ; 2 uses
  %i.yx = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next765.1
  %i.yy = load i32, ptr %i.yx, align 4, !tbaa !107 ; 2 uses
  %i.yz = icmp ult i32 %i.yy, %spec.select519.1
  %spec.select519.2 = tail call i32 @llvm.umin.i32(i32 %i.yy, i32 %spec.select519.1) ; 2 uses
  %i.za = trunc nuw nsw i64 %indvars.iv.next765.1 to i32
  %spec.select520.2 = select i1 %i.yz, i32 %i.za, i32 %spec.select520.1
  %indvars.iv.next765.2 = add nuw nsw i64 %indvars.iv764, 3 ; 2 uses
  %i.zb = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next765.2
  %i.zc = load i32, ptr %i.zb, align 4, !tbaa !107 ; 2 uses
  %i.zd = icmp ult i32 %i.zc, %spec.select519.2
  %spec.select519.3 = tail call i32 @llvm.umin.i32(i32 %i.zc, i32 %spec.select519.2)
  %i.ze = trunc nuw nsw i64 %indvars.iv.next765.2 to i32
  %spec.select520.3 = select i1 %i.zd, i32 %i.ze, i32 %spec.select520.2 ; 2 uses
  %indvars.iv.next765.3 = add nuw nsw i64 %indvars.iv764, 4 ; 2 uses
  %exitcond768.not.3 = icmp eq i64 %indvars.iv.next765.3, %wide.trip.count767
  br i1 %exitcond768.not.3, label %._crit_edge672, label %.lr.ph671, !llvm.loop !2514

._crit_edge672:                                   ; preds = %.lr.ph671, %.lr.ph671.prol.loopexit
  %spec.select520.lcssa = phi i32 [ %spec.select520.lcssa.unr, %.lr.ph671.prol.loopexit ], [ %spec.select520.3, %.lr.ph671 ]
  %i.zf = sext i32 %spec.select520.lcssa to i64   ; 3 uses
  %i.zg = icmp slt i64 %indvars.iv769, %i.zf
  br i1 %i.zg, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %._crit_edge672
  %i.zh = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv769 ; 2 uses
  %i.zi = load ptr, ptr %i.zh, align 8, !tbaa !1354
  %i.zj = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.zf ; 2 uses
  %i.zk = load i32, ptr %i.zj, align 4, !tbaa !107
  store i32 %i.zk, ptr %i.yh, align 4, !tbaa !107
  %i.zl = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.zf ; 2 uses
  %i.zm = load ptr, ptr %i.zl, align 8, !tbaa !1354
  store ptr %i.zm, ptr %i.zh, align 8, !tbaa !1354
  store i32 %i.yi, ptr %i.zj, align 4, !tbaa !107
  store ptr %i.zi, ptr %i.zl, align 8, !tbaa !1354
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %._crit_edge672
  %indvars.iv.next763 = add nuw nsw i64 %indvars.iv762, 1
  %exitcond773.not = icmp eq i64 %indvars.iv.next770, %wide.trip.count772
  br i1 %exitcond773.not, label %.preheader592, label %.lr.ph671.preheader, !llvm.loop !2515

bb.ca:                                            ; preds = %.lr.ph683, %bb.cu
  %indvars.iv778 = phi i64 [ 0, %.lr.ph683 ], [ %indvars.iv.next779, %bb.cu ] ; 4 uses
  %.3682 = phi i32 [ %.0406.lcssa865870882, %.lr.ph683 ], [ %.6.ph, %bb.cu ] ; 6 uses
  %.1419680 = phi i32 [ %spec.store.select, %.lr.ph683 ], [ %.4422.ph, %bb.cu ] ; 6 uses
  %.2431679 = phi i32 [ 0, %.lr.ph683 ], [ %.6435.ph, %bb.cu ] ; 5 uses
  %i.zn = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv778
  %i.zo = load ptr, ptr %i.zn, align 8, !tbaa !1354 ; 11 uses
end_hunk_3
begin_hunk_4_@reparentPage:bb.a
_page_ref.exit.i:                                 ; preds = %.critedge.i.i.i.i, %bb.n
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.w, i64 76 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !1248
  %i.ar = add nsw i32 %i.aq, 1
  store i32 %i.ar, ptr %i.ap, align 4, !tbaa !1248
  br label %bb.q

bb.p:                                             ; preds = %pager_lookup.exit.i
  %i.as = add i16 %i.u, 1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_page_ref.exit.i
  %.sink.i = phi i16 [ 1, %_page_ref.exit.i ], [ %i.as, %bb.p ]
  store i16 %.sink.i, ptr %i.t, align 2, !tbaa !1254
  %i.at = getelementptr inbounds nuw i8, ptr %.014.i.i, i64 88 ; 2 uses
  %i.au = load i8, ptr %i.at, align 8, !tbaa !1369
  %.not24 = icmp eq i8 %i.au, 0
  br i1 %.not24, label %bb.af, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.av = load ptr, ptr %.014.i.i, align 8, !tbaa !1253
  %.not.i = icmp eq ptr %i.av, null
  %i.aw = select i1 %.not.i, ptr null, ptr %i.at
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 136 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !1372 ; 3 uses
  %.not25 = icmp eq ptr %i.ay, %2
  br i1 %.not25, label %bb.ae, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.not26 = icmp eq ptr %i.ay, null
  br i1 %.not26, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 120
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !1245
  tail call fastcc void @sqlite3PagerUnref(ptr noundef %i.ba)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  store ptr %2, ptr %i.ax, align 8, !tbaa !1372
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !1245 ; 7 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 62 ; 2 uses
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !1254 ; 2 uses
  %i.bf = icmp eq i16 %i.be, 0
  br i1 %i.bf, label %bb.v, label %sqlite3PagerRef.exit

bb.v:                                             ; preds = %bb.u
  %i.bg = load ptr, ptr %i.bc, align 8, !tbaa !1253 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 168 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 32 ; 4 uses
  %i.bj = load ptr, ptr %i.bh, align 8, !tbaa !1258
  %i.bk = icmp eq ptr %i.bc, %i.bj
  br i1 %i.bk, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bl = load ptr, ptr %i.bi, align 8, !tbaa !1255
  store ptr %i.bl, ptr %i.bh, align 8, !tbaa !1258
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 176 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !1256
  %i.bo = icmp eq ptr %i.bc, %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bc, i64 40
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !1257 ; 4 uses
  br i1 %i.bo, label %bb.y, label %._crit_edge.i.i.i.i28

bb.y:                                             ; preds = %bb.x
  store ptr %i.bq, ptr %i.bm, align 8, !tbaa !1256
  br label %._crit_edge.i.i.i.i28

._crit_edge.i.i.i.i28:                            ; preds = %bb.y, %bb.x
  %.not.i.i.i.i29 = icmp eq ptr %i.bq, null
  %.pre42.i.i.i.i30 = load ptr, ptr %i.bi, align 8, !tbaa !1255 ; 3 uses
  br i1 %.not.i.i.i.i29, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %._crit_edge.i.i.i.i28
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  store ptr %.pre42.i.i.i.i30, ptr %i.br, align 8, !tbaa !1255
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %._crit_edge.i.i.i.i28
  %.not33.i.i.i.i31 = icmp eq ptr %.pre42.i.i.i.i30, null
  br i1 %.not33.i.i.i.i31, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bs = getelementptr inbounds nuw i8, ptr %.pre42.i.i.i.i30, i64 40
  store ptr %i.bq, ptr %i.bs, align 8, !tbaa !1257
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bg, i64 184 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !1259
  %i.bv = icmp eq ptr %i.bc, %i.bu
  br i1 %i.bv, label %.preheader.i.i.i.i33, label %_page_ref.exit.i32

.preheader.i.i.i.i33:                             ; preds = %bb.ac
  %.037.i.i.i.i34 = load ptr, ptr %i.bi, align 8, !tbaa !1255 ; 2 uses
  %.not3538.i.i.i.i35 = icmp eq ptr %.037.i.i.i.i34, null
  br i1 %.not3538.i.i.i.i35, label %.critedge.i.i.i.i41, label %.lr.ph.i.i.i.i36

.lr.ph.i.i.i.i36:                                 ; preds = %.preheader.i.i.i.i33, %bb.ad
  %.039.i.i.i.i37 = phi ptr [ %.0.i.i.i.i39, %bb.ad ], [ %.037.i.i.i.i34, %.preheader.i.i.i.i33 ] ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.039.i.i.i.i37, i64 58
  %i.bx = load i8, ptr %i.bw, align 2, !tbaa !1260
  %.not36.i.i.i.i38 = icmp eq i8 %i.bx, 0
  br i1 %.not36.i.i.i.i38, label %.critedge.i.i.i.i41, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.i.i.i36
  %i.by = getelementptr inbounds nuw i8, ptr %.039.i.i.i.i37, i64 32
  %.0.i.i.i.i39 = load ptr, ptr %i.by, align 8, !tbaa !1255 ; 2 uses
  %.not35.i.i.i.i40 = icmp eq ptr %.0.i.i.i.i39, null
  br i1 %.not35.i.i.i.i40, label %.critedge.i.i.i.i41, label %.lr.ph.i.i.i.i36, !llvm.loop !40

.critedge.i.i.i.i41:                              ; preds = %bb.ad, %.lr.ph.i.i.i.i36, %.preheader.i.i.i.i33
  %.0.lcssa.i.i.i.i42 = phi ptr [ null, %.preheader.i.i.i.i33 ], [ null, %bb.ad ], [ %.039.i.i.i.i37, %.lr.ph.i.i.i.i36 ]
  store ptr %.0.lcssa.i.i.i.i42, ptr %i.bt, align 8, !tbaa !1259
  br label %_page_ref.exit.i32

_page_ref.exit.i32:                               ; preds = %.critedge.i.i.i.i41, %bb.ac
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i8 0, i64 16, i1 false)
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bg, i64 76 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !1248
  %i.cb = add nsw i32 %i.ca, 1
  store i32 %i.cb, ptr %i.bz, align 4, !tbaa !1248
  br label %sqlite3PagerRef.exit

sqlite3PagerRef.exit:                             ; preds = %bb.u, %_page_ref.exit.i32
  %storemerge.i = add i16 %i.be, 1
  store i16 %storemerge.i, ptr %i.bd, align 2, !tbaa !1254
  br label %bb.ae

bb.ae:                                            ; preds = %sqlite3PagerRef.exit, %bb.r
  %i.cc = trunc i32 %3 to i16
  %i.cd = getelementptr inbounds nuw i8, ptr %.014.i.i, i64 104
  store i16 %i.cc, ptr %i.cd, align 8, !tbaa !1370
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.q
  tail call fastcc void @sqlite3PagerUnref(ptr noundef nonnull %.014.i.i)
  br label %sqlite3PagerLookup.exit.thread

sqlite3PagerLookup.exit.thread:                   ; preds = %bb.f, %bb.d, %bb.e, %bb.c, %bb.b, %bb.af
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 38
  %i.cf = load i8, ptr %i.ce, align 2, !tbaa !1387
  %.not27 = icmp eq i8 %i.cf, 0
  br i1 %.not27, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %sqlite3PagerLookup.exit.thread
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !1056
  %i.ci = tail call fastcc i32 @ptrmapPut(ptr noundef nonnull %0, i32 noundef %1, i8 noundef zeroext 5, i32 noundef %i.ch)
  br label %bb.ah

bb.ah:                                            ; preds = %sqlite3PagerLookup.exit.thread, %bb.a, %bb.ag
  %.0 = phi i32 [ 0, %bb.a ], [ %i.ci, %bb.ag ], [ 0, %sqlite3PagerLookup.exit.thread ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @balance_quick(ptr nofree noundef captures(none) %0, ptr noundef %1) unnamed_addr #5 !guid !2532 {
bb.a:
  %2 = alloca %struct.CellInfo, align 8           ; 4 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %3 = alloca %struct.CellInfo, align 8           ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca [64 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #44
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #44
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1351 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.h = load i16, ptr %i.g, align 4, !tbaa !1359
  %i.i = zext i16 %i.h to i32                     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #44
  %i.j = call fastcc i32 @allocateBtreePage(ptr noundef %i.f, ptr noundef %i.a, ptr noundef %i.b, i32 noundef 0, i8 noundef zeroext 0) ; 2 uses
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %.lr.ph.i, label %bb.s

.lr.ph.i:                                         ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1473 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #44
  call fastcc void @sqlite3BtreeParseCellPtr(ptr noundef nonnull readonly %0, ptr noundef %i.l, ptr noundef nonnull %2)
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 30
  %i.n = load i16, ptr %i.m, align 2, !tbaa !1385 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #44
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !1354 ; 22 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1350
  %i.r = load i8, ptr %i.q, align 1, !tbaa !838   ; 4 uses
  %i.s = zext i8 %i.r to i32                      ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 112 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1350
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 104 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1351 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.y = load i8, ptr %i.x, align 8, !tbaa !1352  ; 3 uses
  %i.z = zext i8 %i.y to i32                      ; 2 uses
  %i.aa = zext i8 %i.y to i64                     ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.aa ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 46 ; 3 uses
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !1377
  %i.ae = zext i16 %i.ad to i32
  %i.af = sub nsw i32 %i.ae, %i.z
  %i.ag = sext i32 %i.af to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ab, i8 0, i64 %i.ag, i1 false)
  store i8 %i.r, ptr %i.ab, align 1, !tbaa !838
  %i.ah = lshr i32 %i.s, 1
  %i.ai = and i32 %i.ah, 4
  %reass.sub.i = sub nsw i32 %i.z, %i.ai
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  store i32 0, ptr %i.aj, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 7
  store i8 0, ptr %i.ak, align 1, !tbaa !838
  %4 = getelementptr i8, ptr %i.w, i64 47
  %5 = load i8, ptr %4, align 1, !tbaa !1377
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 5
  store i8 %5, ptr %i.al, align 1, !tbaa !838
  %i.am = load i16, ptr %i.ac, align 2, !tbaa !1377
  %i.an = trunc i16 %i.am to i8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ab, i64 6
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !838
  %i.ap = load i16, ptr %i.ac, align 2, !tbaa !1377
  %i.aq = trunc nsw i32 %reass.sub.i to i16
  %i.ar = add nsw i16 %i.aq, 12                   ; 3 uses
  %i.as = sub i16 %i.ap, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.o, i64 18 ; 3 uses
  store i16 %i.as, ptr %i.at, align 2, !tbaa !1379
  %i.au = and i32 %i.s, 5
  %i.av = icmp ne i32 %i.au, 0
  %i.aw = zext i1 %i.av to i8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.o, i64 3
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !1057
  %i.ay = lshr i8 %i.r, 1
  %i.az = and i8 %i.ay, 1                         ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.o, i64 5
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !1373
  %i.bb = lshr i8 %i.r, 3                         ; 2 uses
  %i.bc = and i8 %i.bb, 1                         ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  store i8 %i.bc, ptr %i.bd, align 4, !tbaa !1368
  %i.be = shl nuw nsw i8 %i.bc, 2
  %i.bf = xor i8 %i.be, 4
  %i.bg = getelementptr inbounds nuw i8, ptr %i.o, i64 9
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !1360
  %i.bh = load ptr, ptr %i.v, align 8, !tbaa !1351 ; 2 uses
  %i.bi = and i32 %i.s, 4
  %.not.i.i = icmp eq i32 %i.bi, 0                ; 4 uses
  %..i.i = select i1 %.not.i.i, i64 48, i64 56
  %.29.i.i = select i1 %.not.i.i, i64 52, i64 60
  %not..not.i.i = xor i1 %.not.i.i, true
  %.30.i.i = zext i1 %not..not.i.i to i8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 %..i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.29.i.i
  %.sink.in.i.i = load i32, ptr %i.bk, align 4, !tbaa !107
  %.sink.i.i = trunc i32 %.sink.in.i.i to i16
  %.sink25.in.i.i = load i32, ptr %i.bj, align 8, !tbaa !107
  %.sink25.i.i = trunc i32 %.sink25.in.i.i to i16
  %i.bl = getelementptr inbounds nuw i8, ptr %i.o, i64 6
  store i8 %.30.i.i, ptr %i.bl, align 2, !tbaa !1367
  %i.bm = getelementptr inbounds nuw i8, ptr %i.o, i64 10
  store i16 %.sink25.i.i, ptr %i.bm, align 2, !tbaa !1374
  %i.bn = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  store i16 %.sink.i.i, ptr %i.bn, align 4, !tbaa !1375
  %.not23.i.i = icmp eq i8 %i.az, 0
  %.not24.i.i = trunc i8 %i.bb to i1
  %narrow.i.i = or i1 %.not.i.i, %.not24.i.i
  %narrow31.i.i = select i1 %.not23.i.i, i1 %narrow.i.i, i1 false
  %i.bo = zext i1 %narrow31.i.i to i8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.o, i64 7
  store i8 %i.bo, ptr %i.bp, align 1, !tbaa !1361
  store i8 %i.y, ptr %i.x, align 8, !tbaa !1352
  %i.bq = getelementptr inbounds nuw i8, ptr %i.o, i64 14
  store i16 %i.ar, ptr %i.bq, align 2, !tbaa !1357
  %i.br = getelementptr inbounds nuw i8, ptr %i.o, i64 2
  store i8 0, ptr %i.br, align 2, !tbaa !1376
  %i.bs = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  store i8 0, ptr %i.bs, align 1, !tbaa !1371
  %i.bt = getelementptr inbounds nuw i8, ptr %i.o, i64 20 ; 2 uses
  store i16 0, ptr %i.bt, align 4, !tbaa !1359
  store i8 1, ptr %i.o, align 8, !tbaa !1369
  %i.bu = zext i16 %i.n to i32
  %i.bv = load ptr, ptr %i.t, align 8, !tbaa !1350 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.aa ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 3
  store i8 0, ptr %i.bx, align 1, !tbaa !838
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  store i8 1, ptr %i.by, align 1, !tbaa !838
  %i.bz = tail call fastcc i32 @allocateSpace(ptr noundef nonnull %i.o, i32 noundef %i.bu) ; 3 uses
  %i.ca = load i16, ptr %i.at, align 2, !tbaa !1379
  %i.cb = add i16 %i.ca, -2
  store i16 %i.cb, ptr %i.at, align 2, !tbaa !1379
  %i.cc = zext nneg i16 %i.ar to i64
  %i.cd = zext i16 %i.n to i64
  %i.ce = lshr i32 %i.bz, 8
  %i.cf = trunc i32 %i.ce to i8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.cc ; 2 uses
  store i8 %i.cf, ptr %i.cg, align 1, !tbaa !838
  %i.ch = trunc i32 %i.bz to i8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 1
  store i8 %i.ch, ptr %i.ci, align 1, !tbaa !838
  %i.cj = sext i32 %i.bz to i64
  %i.ck = getelementptr inbounds i8, ptr %i.bv, i64 %i.cj
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ck, ptr align 1 %i.l, i64 %i.cd, i1 false)
  store i16 1, ptr %i.bt, align 4, !tbaa !1359
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 0, ptr %i.cl, align 2, !tbaa !1376
  %i.cm = getelementptr inbounds nuw i8, ptr %i.o, i64 136
  store ptr %1, ptr %i.cm, align 8, !tbaa !1372
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !1245 ; 7 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 62 ; 2 uses
  %i.cq = load i16, ptr %i.cp, align 2, !tbaa !1254 ; 2 uses
  %i.cr = icmp eq i16 %i.cq, 0
  br i1 %i.cr, label %bb.b, label %sqlite3PagerRef.exit

bb.b:                                             ; preds = %.lr.ph.i
  %i.cs = load ptr, ptr %i.co, align 8, !tbaa !1253 ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 168 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.co, i64 32 ; 4 uses
  %i.cv = load ptr, ptr %i.ct, align 8, !tbaa !1258
  %i.cw = icmp eq ptr %i.co, %i.cv
  br i1 %i.cw, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.cx = load ptr, ptr %i.cu, align 8, !tbaa !1255
  store ptr %i.cx, ptr %i.ct, align 8, !tbaa !1258
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cs, i64 176 ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !1256
  %i.da = icmp eq ptr %i.co, %i.cz
  %i.db = getelementptr inbounds nuw i8, ptr %i.co, i64 40
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !1257 ; 4 uses
  br i1 %i.da, label %bb.e, label %._crit_edge.i.i.i.i

bb.e:                                             ; preds = %bb.d
  store ptr %i.dc, ptr %i.cy, align 8, !tbaa !1256
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.e, %bb.d
  %.not.i.i.i.i = icmp eq ptr %i.dc, null
  %.pre42.i.i.i.i = load ptr, ptr %i.cu, align 8, !tbaa !1255 ; 3 uses
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 32
  store ptr %.pre42.i.i.i.i, ptr %i.dd, align 8, !tbaa !1255
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i.i.i.i
  %.not33.i.i.i.i = icmp eq ptr %.pre42.i.i.i.i, null
  br i1 %.not33.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.de = getelementptr inbounds nuw i8, ptr %.pre42.i.i.i.i, i64 40
  store ptr %i.dc, ptr %i.de, align 8, !tbaa !1257
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.df = getelementptr inbounds nuw i8, ptr %i.cs, i64 184 ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !1259
  %i.dh = icmp eq ptr %i.co, %i.dg
  br i1 %i.dh, label %.preheader.i.i.i.i, label %_page_ref.exit.i

.preheader.i.i.i.i:                               ; preds = %bb.i
  %.037.i.i.i.i = load ptr, ptr %i.cu, align 8, !tbaa !1255 ; 2 uses
  %.not3538.i.i.i.i = icmp eq ptr %.037.i.i.i.i, null
  br i1 %.not3538.i.i.i.i, label %.critedge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i, %bb.j
  %.039.i.i.i.i = phi ptr [ %.0.i.i.i.i, %bb.j ], [ %.037.i.i.i.i, %.preheader.i.i.i.i ] ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.039.i.i.i.i, i64 58
  %i.dj = load i8, ptr %i.di, align 2, !tbaa !1260
  %.not36.i.i.i.i = icmp eq i8 %i.dj, 0
  br i1 %.not36.i.i.i.i, label %.critedge.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i
  %i.dk = getelementptr inbounds nuw i8, ptr %.039.i.i.i.i, i64 32
  %.0.i.i.i.i = load ptr, ptr %i.dk, align 8, !tbaa !1255 ; 2 uses
  %.not35.i.i.i.i = icmp eq ptr %.0.i.i.i.i, null
  br i1 %.not35.i.i.i.i, label %.critedge.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !40

.critedge.i.i.i.i:                                ; preds = %bb.j, %.lr.ph.i.i.i.i, %.preheader.i.i.i.i
  %.0.lcssa.i.i.i.i = phi ptr [ null, %.preheader.i.i.i.i ], [ null, %bb.j ], [ %.039.i.i.i.i, %.lr.ph.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i, ptr %i.df, align 8, !tbaa !1259
  br label %_page_ref.exit.i

_page_ref.exit.i:                                 ; preds = %.critedge.i.i.i.i, %bb.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cu, i8 0, i64 16, i1 false)
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cs, i64 76 ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !1248
  %i.dn = add nsw i32 %i.dm, 1
  store i32 %i.dn, ptr %i.dl, align 4, !tbaa !1248
  br label %sqlite3PagerRef.exit

sqlite3PagerRef.exit:                             ; preds = %.lr.ph.i, %_page_ref.exit.i
  %storemerge.i = add i16 %i.cq, 1
  store i16 %storemerge.i, ptr %i.cp, align 2, !tbaa !1254
  %i.do = load ptr, ptr %i.p, align 8, !tbaa !1350 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.dq = load i16, ptr %i.dp, align 2, !tbaa !1357
  %i.dr = zext i16 %i.dq to i32
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.dt = load i16, ptr %i.ds, align 4, !tbaa !1359
  %i.du = zext i16 %i.dt to i32
  %i.dv = shl nuw nsw i32 %i.du, 1
  %i.dw = add nsw i32 %i.dr, -2
  %i.dx = add nsw i32 %i.dw, %i.dv
  %i.dy = sext i32 %i.dx to i64
  %i.dz = getelementptr inbounds i8, ptr %i.do, i64 %i.dy ; 2 uses
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !838
  %i.eb = zext i8 %i.ea to i64
  %i.ec = shl nuw nsw i64 %i.eb, 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dz, i64 1
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !838
  %i.ef = zext i8 %i.ee to i64
end_hunk_4
