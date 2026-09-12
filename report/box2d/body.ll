Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box2d/original/body?download=true
inline.NumInlined: 207
inline.NumDeleted: 28
begin_hunk_0_@b2Body_Enable:bb.a
.lr.ph76:                                         ; preds = %bb.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.c, i64 2000
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph76, %bb.n
  %.05974 = phi i32 [ %i.bo, %.lr.ph76 ], [ %i.bz, %bb.n ] ; 2 uses
  %i.bq = ashr i32 %.05974, 1
  %i.br = and i32 %.05974, 1
  %i.bs = load ptr, ptr %i.bp, align 8, !tbaa !127
  %i.bt = sext i32 %i.bq to i64
  %i.bu = getelementptr inbounds [72 x i8], ptr %i.bs, i64 %i.bt ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 20 ; 2 uses
  %i.bw = zext nneg i32 %i.br to i64
  %i.bx = getelementptr inbounds nuw [12 x i8], ptr %i.bv, i64 %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !129 ; 2 uses
  %i.ca = load ptr, ptr %i.g, align 8, !tbaa !80  ; 2 uses
  %i.cb = load i32, ptr %i.bv, align 4, !tbaa !169
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds [104 x i8], ptr %i.ca, i64 %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !82 ; 3 uses
  %i.cg = icmp eq i32 %i.cf, 1
  br i1 %i.cg, label %bb.n, label %bb.k, !llvm.loop !245

bb.k:                                             ; preds = %bb.j
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !169
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr inbounds [104 x i8], ptr %i.ca, i64 %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !82 ; 2 uses
  %i.cn = icmp eq i32 %i.cm, 1
  br i1 %i.cn, label %bb.n, label %bb.l, !llvm.loop !245

bb.l:                                             ; preds = %bb.k
  %i.co = icmp eq i32 %i.cf, 0
  %spec.select = select i1 %i.co, i32 %i.cm, i32 %i.cf ; 2 uses
  %i.cp = load ptr, ptr %i.n, align 8, !tbaa !81
  %i.cq = sext i32 %spec.select to i64
  %i.cr = getelementptr inbounds [88 x i8], ptr %i.cp, i64 %i.cq
  call void @b2TransferJoint(ptr noundef nonnull %i.c, ptr noundef %i.cr, ptr noundef nonnull %i.p, ptr noundef nonnull %i.bu) #13
  %.not70 = icmp eq i32 %spec.select, 0
  br i1 %.not70, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @b2LinkJoint(ptr noundef nonnull %i.c, ptr noundef nonnull %i.bu) #13
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.j, %bb.k
  %.not69 = icmp eq i32 %i.bz, -1
  br i1 %.not69, label %._crit_edge77, label %bb.j

._crit_edge77:                                    ; preds = %bb.n, %bb.i
  call void @b2ValidateSolverSets(ptr noundef nonnull %i.c) #13
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge77, %bb.d, %bb.a
  ret void
}

declare void @b2RecWrite_BodyEnable(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define void @b2Body_SetMotionLocks(i64 %0, i24 %1) local_unnamed_addr #5 {
bb.a:
  %2 = alloca %struct.b2RecArgs_BodySetMotionLocks, align 8 ; 8 uses
  %.sroa.3.0.extract.shift = lshr i64 %0, 32
  %.sroa.0.0.extract.trunc = trunc i24 %1 to i8
  %.sroa.4.0.extract.shift = lshr i24 %1, 8       ; 2 uses
  %.sroa.4.0.extract.trunc = trunc i24 %.sroa.4.0.extract.shift to i8
  %.sroa.6.0.extract.shift = lshr i24 %1, 16      ; 2 uses
  %.sroa.6.0.extract.trunc = trunc nuw i24 %.sroa.6.0.extract.shift to i8
  %i.a = trunc nuw i64 %.sroa.3.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b2GetWorldLocked(i32 noundef %i.b) #13 ; 5 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 2712
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !124  ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  store i64 %0, ptr %2, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 %.sroa.0.0.extract.trunc, ptr %i.g, align 8, !tbaa !125
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 9
  store i8 %.sroa.4.0.extract.trunc, ptr %.sroa.4.0..sroa_idx, align 1, !tbaa !125
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 10
  store i8 %.sroa.6.0.extract.trunc, ptr %.sroa.6.0..sroa_idx, align 2, !tbaa !125
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 11
  store i8 0, ptr %i.h, align 1
  call void @b2RecWrite_BodySetMotionLocks(ptr noundef nonnull %i.f, ptr noundef nonnull %2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = trunc i24 %1 to i1
  %.mask = and i24 %1, 1
  %i.j = zext nneg i24 %.mask to i32
  %i.k = trunc i24 %.sroa.4.0.extract.shift to i1 ; 2 uses
  %i.l = select i1 %i.k, i32 2, i32 0
  %i.m = or disjoint i32 %i.l, %i.j
  %i.n = trunc i24 %.sroa.6.0.extract.shift to i1 ; 2 uses
  %i.o = select i1 %i.n, i32 4, i32 0
  %i.p = or disjoint i32 %i.m, %i.o               ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 1920
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !80
  %i.s = shl i64 %0, 32
  %sext.i = add i64 %i.s, -4294967296
  %i.t = ashr exact i64 %sext.i, 32
  %i.u = getelementptr inbounds [104 x i8], ptr %i.r, i64 %i.t ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 80 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !96   ; 2 uses
  %i.x = and i32 %i.w, 7
  %.not28 = icmp eq i32 %i.x, %i.p
  br i1 %.not28, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = and i32 %i.w, -8
  %i.z = or disjoint i32 %i.y, %i.p               ; 2 uses
  store i32 %i.z, ptr %i.v, align 8, !tbaa !96
  %i.aa = and i32 %i.z, -105                      ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 1960
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !81 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !82 ; 2 uses
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds [88 x i8], ptr %i.ac, i64 %i.af
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !92
  %i.ai = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !28
  %i.ak = sext i32 %i.aj to i64                   ; 3 uses
  %i.al = getelementptr inbounds [96 x i8], ptr %i.ah, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 92
  store i32 %i.aa, ptr %i.am, align 4, !tbaa !97
  %i.an = icmp eq i32 %i.ae, 2
  br i1 %i.an, label %b2GetBodyState.exit.i, label %b2GetBodyState.exit.thread

b2GetBodyState.exit.i:                            ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ac, i64 192
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !95 ; 3 uses
  %.not.i = icmp eq ptr %i.ap, null
  br i1 %.not.i, label %b2GetBodyState.exit.thread, label %bb.f

bb.f:                                             ; preds = %b2GetBodyState.exit.i
  %i.aq = getelementptr inbounds [32 x i8], ptr %i.ap, i64 %i.ak
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 12
  store i32 %i.aa, ptr %i.ar, align 4, !tbaa !99
  %i.as = getelementptr inbounds [32 x i8], ptr %i.ap, i64 %i.ak ; 3 uses
  br i1 %i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store float 0.000000e+00, ptr %i.as, align 4, !tbaa !246
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  br i1 %i.k, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  store float 0.000000e+00, ptr %i.at, align 4, !tbaa !247
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  br i1 %i.n, label %bb.k, label %b2GetBodyState.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store float 0.000000e+00, ptr %i.au, align 4, !tbaa !106
  br label %b2GetBodyState.exit.thread

b2GetBodyState.exit.thread:                       ; preds = %b2GetBodyState.exit.i, %bb.e, %bb.j, %bb.k
  call void @b2UpdateBodyMassData(ptr noundef nonnull %i.c, ptr noundef nonnull %i.u)
  br label %bb.l

bb.l:                                             ; preds = %bb.d, %b2GetBodyState.exit.thread, %bb.a
  ret void
}

declare void @b2RecWrite_BodySetMotionLocks(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define range(i24 0, 65794) i24 @b2Body_GetMotionLocks(i64 %0) local_unnamed_addr #5 {
bb.a:
  %.sroa.2.0.extract.shift = lshr i64 %0, 32
  %i.a = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b2GetWorld(i32 noundef %i.b) #13
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1920
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !80
  %i.f = shl i64 %0, 32
  %sext.i = add i64 %i.f, -4294967296
  %i.g = ashr exact i64 %sext.i, 32
  %i.h = getelementptr inbounds [104 x i8], ptr %i.e, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.j = load i32, ptr %i.i, align 8, !tbaa !96   ; 3 uses
  %i.k = trunc i32 %i.j to i8
  %i.l = and i8 %i.k, 1
  %1 = lshr i32 %i.j, 1
  %2 = trunc i32 %1 to i8
  %i.m = and i8 %2, 1
  %3 = lshr i32 %i.j, 2
  %4 = trunc i32 %3 to i8
  %i.n = and i8 %4, 1
  %.sroa.36.0.insert.ext = zext nneg i8 %i.n to i24
  %.sroa.36.0.insert.shift = shl nuw nsw i24 %.sroa.36.0.insert.ext, 16
  %.sroa.25.0.insert.ext = zext nneg i8 %i.m to i24
  %.sroa.25.0.insert.shift = shl nuw nsw i24 %.sroa.25.0.insert.ext, 8
  %.sroa.25.0.insert.insert = or disjoint i24 %.sroa.36.0.insert.shift, %.sroa.25.0.insert.shift
  %.sroa.04.0.insert.ext = zext nneg i8 %i.l to i24
  %.sroa.04.0.insert.insert = or disjoint i24 %.sroa.25.0.insert.insert, %.sroa.04.0.insert.ext
  ret i24 %.sroa.04.0.insert.insert
}

; Function Attrs: nounwind uwtable
define void @b2Body_SetBullet(i64 %0, i1 noundef zeroext %1) local_unnamed_addr #5 {
bb.a:
  %2 = alloca %struct.b2RecArgs_BodySetBullet, align 8 ; 6 uses
  %.sroa.3.0.extract.shift = lshr i64 %0, 32
  %i.a = zext i1 %1 to i8
  %i.b = trunc nuw i64 %.sroa.3.0.extract.shift to i32
  %i.c = and i32 %i.b, 65535
  %i.d = tail call ptr @b2GetWorldLocked(i32 noundef %i.c) #13 ; 4 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %b2SyncBodyFlags.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 2712
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !124  ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  store i64 %0, ptr %2, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 %i.a, ptr %i.h, align 8, !tbaa !173
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.i, i8 0, i64 3, i1 false)
  call void @b2RecWrite_BodySetBullet(ptr noundef nonnull %i.g, ptr noundef nonnull %2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = select i1 %1, i32 16, i32 0              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 1920
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !80
  %i.m = shl i64 %0, 32
  %sext.i = add i64 %i.m, -4294967296
  %i.n = ashr exact i64 %sext.i, 32
  %i.o = getelementptr inbounds [104 x i8], ptr %i.l, i64 %i.n ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 80 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !96   ; 2 uses
  %i.r = and i32 %i.q, 16
  %i.s = icmp eq i32 %i.r, %i.j
  br i1 %i.s, label %b2SyncBodyFlags.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = and i32 %i.q, -17
  %i.u = or disjoint i32 %i.t, %i.j               ; 2 uses
  store i32 %i.u, ptr %i.p, align 8, !tbaa !96
  %i.v = and i32 %i.u, -105                       ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 1960
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !81   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.z = load i32, ptr %i.y, align 8, !tbaa !82   ; 2 uses
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds [88 x i8], ptr %i.x, i64 %i.aa
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !92
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !28
  %i.af = sext i32 %i.ae to i64                   ; 2 uses
  %i.ag = getelementptr inbounds [96 x i8], ptr %i.ac, i64 %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 92
  store i32 %i.v, ptr %i.ah, align 4, !tbaa !97
  %i.ai = icmp eq i32 %i.z, 2
  br i1 %i.ai, label %b2GetBodyState.exit.i, label %b2SyncBodyFlags.exit

b2GetBodyState.exit.i:                            ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 192
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !95 ; 2 uses
  %.not.i = icmp eq ptr %i.ak, null
  br i1 %.not.i, label %b2SyncBodyFlags.exit, label %bb.f

bb.f:                                             ; preds = %b2GetBodyState.exit.i
  %i.al = getelementptr inbounds [32 x i8], ptr %i.ak, i64 %i.af
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  store i32 %i.v, ptr %i.am, align 4, !tbaa !99
  br label %b2SyncBodyFlags.exit

b2SyncBodyFlags.exit:                             ; preds = %bb.f, %b2GetBodyState.exit.i, %bb.e, %bb.d, %bb.a
  ret void
}

declare void @b2RecWrite_BodySetBullet(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define zeroext i1 @b2Body_IsBullet(i64 %0) local_unnamed_addr #5 {
bb.a:
  %.sroa.2.0.extract.shift = lshr i64 %0, 32
  %i.a = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b2GetWorld(i32 noundef %i.b) #13 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1920
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !80
  %i.f = shl i64 %0, 32
  %sext.i = add i64 %i.f, -4294967296
  %i.g = ashr exact i64 %sext.i, 32
  %i.h = getelementptr inbounds [104 x i8], ptr %i.e, i64 %i.g ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 1960
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !81
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !82
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds [88 x i8], ptr %i.j, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !92
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.q = load i32, ptr %i.p, align 4, !tbaa !28
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds [96 x i8], ptr %i.o, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 92
  %i.u = load i32, ptr %i.t, align 4, !tbaa !97
  %i.v = and i32 %i.u, 16
  %i.w = icmp ne i32 %i.v, 0
  ret i1 %i.w
}

; Function Attrs: nounwind uwtable
define void @b2Body_EnableContactRecycling(i64 %0, i1 noundef zeroext %1) local_unnamed_addr #5 {
bb.a:
  %2 = alloca %struct.b2RecArgs_BodyEnableContactRecycling, align 8 ; 6 uses
  %.sroa.3.0.extract.shift = lshr i64 %0, 32
  %i.a = zext i1 %1 to i8
  %i.b = trunc nuw i64 %.sroa.3.0.extract.shift to i32
  %i.c = and i32 %i.b, 65535
  %i.d = tail call ptr @b2GetWorldLocked(i32 noundef %i.c) #13 ; 4 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %b2SyncBodyFlags.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 2712
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !124  ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  store i64 %0, ptr %2, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 %i.a, ptr %i.h, align 8, !tbaa !173
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.i, i8 0, i64 3, i1 false)
  call void @b2RecWrite_BodyEnableContactRecycling(ptr noundef nonnull %i.g, ptr noundef nonnull %2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = select i1 %1, i32 4096, i32 0            ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 1920
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !80
  %i.m = shl i64 %0, 32
  %sext.i = add i64 %i.m, -4294967296
  %i.n = ashr exact i64 %sext.i, 32
  %i.o = getelementptr inbounds [104 x i8], ptr %i.l, i64 %i.n ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 80 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !96   ; 2 uses
  %i.r = and i32 %i.q, 4096
  %i.s = icmp eq i32 %i.r, %i.j
  br i1 %i.s, label %b2SyncBodyFlags.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = and i32 %i.q, -4097
  %i.u = or disjoint i32 %i.t, %i.j               ; 2 uses
  store i32 %i.u, ptr %i.p, align 8, !tbaa !96
  %i.v = and i32 %i.u, -105                       ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 1960
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !81   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.z = load i32, ptr %i.y, align 8, !tbaa !82   ; 2 uses
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds [88 x i8], ptr %i.x, i64 %i.aa
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !92
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !28
  %i.af = sext i32 %i.ae to i64                   ; 2 uses
  %i.ag = getelementptr inbounds [96 x i8], ptr %i.ac, i64 %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 92
  store i32 %i.v, ptr %i.ah, align 4, !tbaa !97
  %i.ai = icmp eq i32 %i.z, 2
  br i1 %i.ai, label %b2GetBodyState.exit.i, label %b2SyncBodyFlags.exit

b2GetBodyState.exit.i:                            ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 192
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !95 ; 2 uses
  %.not.i = icmp eq ptr %i.ak, null
  br i1 %.not.i, label %b2SyncBodyFlags.exit, label %bb.f

bb.f:                                             ; preds = %b2GetBodyState.exit.i
  %i.al = getelementptr inbounds [32 x i8], ptr %i.ak, i64 %i.af
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  store i32 %i.v, ptr %i.am, align 4, !tbaa !99
  br label %b2SyncBodyFlags.exit

b2SyncBodyFlags.exit:                             ; preds = %bb.f, %b2GetBodyState.exit.i, %bb.e, %bb.d, %bb.a
end_hunk_0
