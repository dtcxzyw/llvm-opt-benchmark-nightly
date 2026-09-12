Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d/original/body?download=true
inline.NumInlined: 305
inline.NumDeleted: 45
begin_hunk_0_@b3Body_Enable:bb.a
  call void @b3ValidateSolverSets(ptr noundef nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge75, %bb.d, %bb.a
  ret void
}

declare void @b3RecWrite_BodyEnable(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define void @b3Body_SetMotionLocks(i64 %0, i48 %1) local_unnamed_addr #4 {
bb.a:
  %2 = alloca %struct.b3RecArgs_BodySetMotionLocks, align 8 ; 11 uses
  %.sroa.3.0.extract.shift = lshr i64 %0, 32
  %.sroa.0.0.extract.trunc = trunc i48 %1 to i8
  %.sroa.4.0.extract.shift = lshr i48 %1, 8       ; 2 uses
  %.sroa.4.0.extract.trunc = trunc i48 %.sroa.4.0.extract.shift to i8
  %.sroa.6.0.extract.shift = lshr i48 %1, 16      ; 2 uses
  %.sroa.6.0.extract.trunc = trunc i48 %.sroa.6.0.extract.shift to i8
  %.sroa.8.0.extract.shift = lshr i48 %1, 24      ; 2 uses
  %.sroa.8.0.extract.trunc = trunc i48 %.sroa.8.0.extract.shift to i8
  %.sroa.10.0.extract.shift = lshr i48 %1, 32     ; 2 uses
  %.sroa.10.0.extract.trunc = trunc i48 %.sroa.10.0.extract.shift to i8
  %.sroa.12.0.extract.shift = lshr i48 %1, 40     ; 2 uses
  %.sroa.12.0.extract.trunc = trunc nuw i48 %.sroa.12.0.extract.shift to i8
  %i.a = trunc nuw i64 %.sroa.3.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b3GetUnlockedWorld(i32 noundef %i.b) #10 ; 5 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 4736
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !123  ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  store i64 %0, ptr %2, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 %.sroa.0.0.extract.trunc, ptr %i.g, align 8, !tbaa !124
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 9
  store i8 %.sroa.4.0.extract.trunc, ptr %.sroa.4.0..sroa_idx, align 1, !tbaa !124
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 10
  store i8 %.sroa.6.0.extract.trunc, ptr %.sroa.6.0..sroa_idx, align 2, !tbaa !124
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 11
  store i8 %.sroa.8.0.extract.trunc, ptr %.sroa.8.0..sroa_idx, align 1, !tbaa !124
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i8 %.sroa.10.0.extract.trunc, ptr %.sroa.10.0..sroa_idx, align 4, !tbaa !124
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 13
  store i8 %.sroa.12.0.extract.trunc, ptr %.sroa.12.0..sroa_idx, align 1, !tbaa !124
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 14
  store i16 0, ptr %i.h, align 2
  call void @b3RecWrite_BodySetMotionLocks(ptr noundef nonnull %i.f, ptr noundef nonnull %2) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = trunc i48 %1 to i1
  %i.j = trunc i48 %1 to i32
  %i.k = and i32 %i.j, 1
  %i.l = trunc i48 %.sroa.4.0.extract.shift to i1 ; 2 uses
  %i.m = select i1 %i.l, i32 2, i32 0
  %i.n = or disjoint i32 %i.m, %i.k
  %i.o = trunc i48 %.sroa.6.0.extract.shift to i1 ; 2 uses
  %i.p = select i1 %i.o, i32 4, i32 0
  %i.q = or disjoint i32 %i.n, %i.p
  %i.r = trunc i48 %.sroa.8.0.extract.shift to i1 ; 2 uses
  %i.s = select i1 %i.r, i32 8, i32 0
  %i.t = or disjoint i32 %i.q, %i.s
  %i.u = trunc i48 %.sroa.10.0.extract.shift to i1 ; 2 uses
  %i.v = select i1 %i.u, i32 16, i32 0
  %i.w = or disjoint i32 %i.t, %i.v
  %i.x = trunc i48 %.sroa.12.0.extract.shift to i1 ; 2 uses
  %i.y = select i1 %i.x, i32 32, i32 0
  %i.z = or disjoint i32 %i.w, %i.y               ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 3880
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !68
  %i.ac = shl i64 %0, 32
  %sext.i = add i64 %i.ac, -4294967296
  %i.ad = ashr exact i64 %sext.i, 25
  %i.ae = getelementptr inbounds i8, ptr %i.ab, i64 %i.ad ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 112 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !89 ; 3 uses
  %i.ah = and i32 %i.ag, 63
  %i.ai = icmp eq i32 %i.ah, %i.z
  br i1 %i.ai, label %bb.s, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = and i32 %i.ag, 56
  %i.ak = icmp eq i32 %i.aj, 56
  %i.al = and i32 %i.z, 56
  %i.am = and i32 %i.ag, -64
  %i.an = or i32 %i.am, %i.z                      ; 2 uses
  store i32 %i.an, ptr %i.af, align 8, !tbaa !89
  %i.ao = and i32 %i.an, -833                     ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 3920
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !69 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !72 ; 2 uses
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds [88 x i8], ptr %i.aq, i64 %i.at
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !82
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !83
  %i.ay = sext i32 %i.ax to i64                   ; 3 uses
  %i.az = getelementptr inbounds [216 x i8], ptr %i.av, i64 %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 212
  store i32 %i.ao, ptr %i.ba, align 4, !tbaa !93
  %i.bb = icmp eq i32 %i.as, 2
  br i1 %i.bb, label %b3GetBodyState.exit.i, label %b3GetBodyState.exit.thread

b3GetBodyState.exit.i:                            ; preds = %bb.e
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aq, i64 192
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !88 ; 3 uses
  %.not.i = icmp eq ptr %i.bd, null
  br i1 %.not.i, label %b3GetBodyState.exit.thread, label %bb.f

bb.f:                                             ; preds = %b3GetBodyState.exit.i
  %i.be = getelementptr inbounds [56 x i8], ptr %i.bd, i64 %i.ay
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 52
  store i32 %i.ao, ptr %i.bf, align 4, !tbaa !95
  %i.bg = getelementptr inbounds [56 x i8], ptr %i.bd, i64 %i.ay ; 6 uses
  br i1 %i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store float 0.000000e+00, ptr %i.bg, align 4, !tbaa !337
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  br i1 %i.l, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  store float 0.000000e+00, ptr %i.bh, align 4, !tbaa !338
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  br i1 %i.o, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store float 0.000000e+00, ptr %i.bi, align 4, !tbaa !339
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  br i1 %i.r, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 12
  store float 0.000000e+00, ptr %i.bj, align 4, !tbaa !340
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  br i1 %i.u, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store float 0.000000e+00, ptr %i.bk, align 4, !tbaa !341
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  br i1 %i.x, label %bb.q, label %b3GetBodyState.exit.thread

bb.q:                                             ; preds = %bb.p
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 20
  store float 0.000000e+00, ptr %i.bl, align 4, !tbaa !342
  br label %b3GetBodyState.exit.thread

b3GetBodyState.exit.thread:                       ; preds = %b3GetBodyState.exit.i, %bb.e, %bb.p, %bb.q
  %i.bm = icmp ne i32 %i.al, 56
  %.not42 = xor i1 %i.bm, %i.ak
  br i1 %.not42, label %bb.s, label %bb.r

bb.r:                                             ; preds = %b3GetBodyState.exit.thread
  call void @b3UpdateBodyMassData(ptr noundef nonnull %i.c, ptr noundef nonnull %i.ae)
  br label %bb.s

bb.s:                                             ; preds = %bb.d, %bb.r, %b3GetBodyState.exit.thread, %bb.a
  ret void
}

declare void @b3RecWrite_BodySetMotionLocks(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define range(i48 0, 1103823438082) i48 @b3Body_GetMotionLocks(i64 %0) local_unnamed_addr #4 {
bb.a:
  %.sroa.2.0.extract.shift = lshr i64 %0, 32
  %i.a = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b3GetWorld(i32 noundef %i.b) #10
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 3880
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !68
  %i.f = shl i64 %0, 32
  %sext.i = add i64 %i.f, -4294967296
  %i.g = ashr exact i64 %sext.i, 25
  %i.h = getelementptr inbounds i8, ptr %i.e, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.j = load i32, ptr %i.i, align 8, !tbaa !89
  %i.k = trunc i32 %i.j to i8                     ; 6 uses
  %1 = lshr i8 %i.k, 3
  %2 = lshr i8 %i.k, 2
  %3 = lshr i8 %i.k, 1
  %i.l = insertelement <4 x i8> poison, i8 %i.k, i64 0
  %i.m = insertelement <4 x i8> %i.l, i8 %3, i64 1
  %i.n = insertelement <4 x i8> %i.m, i8 %2, i64 2
  %i.o = insertelement <4 x i8> %i.n, i8 %1, i64 3
  %i.p = and <4 x i8> %i.o, splat (i8 1)
  %4 = lshr i8 %i.k, 4
  %i.q = and i8 %4, 1
  %5 = lshr i8 %i.k, 5
  %i.r = and i8 %5, 1
  %.sroa.6.0.insert.ext = zext nneg i8 %i.r to i48
  %.sroa.6.0.insert.shift = shl nuw nsw i48 %.sroa.6.0.insert.ext, 40
  %.sroa.5.0.insert.ext = zext nneg i8 %i.q to i48
  %.sroa.5.0.insert.shift = shl nuw nsw i48 %.sroa.5.0.insert.ext, 32
  %i.s = bitcast <4 x i8> %i.p to i32
  %i.t = zext nneg i32 %i.s to i48
  %op.rdx = or disjoint i48 %.sroa.5.0.insert.shift, %i.t
  %op.rdx10 = or disjoint i48 %op.rdx, %.sroa.6.0.insert.shift
  ret i48 %op.rdx10
}

; Function Attrs: nounwind uwtable
define void @b3Body_SetBullet(i64 %0, i1 noundef zeroext %1) local_unnamed_addr #4 {
bb.a:
  %2 = alloca %struct.b3RecArgs_BodySetBullet, align 8 ; 6 uses
  %.sroa.3.0.extract.shift = lshr i64 %0, 32
  %i.a = zext i1 %1 to i8
  %i.b = trunc nuw i64 %.sroa.3.0.extract.shift to i32
  %i.c = and i32 %i.b, 65535
  %i.d = tail call ptr @b3GetUnlockedWorld(i32 noundef %i.c) #10 ; 4 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %b3SyncBodyFlags.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 4736
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !123  ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  store i64 %0, ptr %2, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 %i.a, ptr %i.h, align 8, !tbaa !186
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.i, i8 0, i64 3, i1 false)
  call void @b3RecWrite_BodySetBullet(ptr noundef nonnull %i.g, ptr noundef nonnull %2) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = select i1 %1, i32 128, i32 0             ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 3880
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !68
  %i.m = shl i64 %0, 32
  %sext.i = add i64 %i.m, -4294967296
  %i.n = ashr exact i64 %sext.i, 25
  %i.o = getelementptr inbounds i8, ptr %i.l, i64 %i.n ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 112 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !89   ; 2 uses
  %i.r = and i32 %i.q, 128
  %i.s = icmp eq i32 %i.r, %i.j
  br i1 %i.s, label %b3SyncBodyFlags.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = and i32 %i.q, -129
  %i.u = or disjoint i32 %i.t, %i.j               ; 2 uses
  store i32 %i.u, ptr %i.p, align 8, !tbaa !89
  %i.v = and i32 %i.u, -833                       ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 3920
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !69   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.z = load i32, ptr %i.y, align 8, !tbaa !72   ; 2 uses
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds [88 x i8], ptr %i.x, i64 %i.aa
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !82
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !83
  %i.af = sext i32 %i.ae to i64                   ; 2 uses
  %i.ag = getelementptr inbounds [216 x i8], ptr %i.ac, i64 %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 212
  store i32 %i.v, ptr %i.ah, align 4, !tbaa !93
  %i.ai = icmp eq i32 %i.z, 2
  br i1 %i.ai, label %b3GetBodyState.exit.i, label %b3SyncBodyFlags.exit

b3GetBodyState.exit.i:                            ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 192
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !88 ; 2 uses
  %.not.i = icmp eq ptr %i.ak, null
  br i1 %.not.i, label %b3SyncBodyFlags.exit, label %bb.f

bb.f:                                             ; preds = %b3GetBodyState.exit.i
  %i.al = getelementptr inbounds [56 x i8], ptr %i.ak, i64 %i.af
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 52
  store i32 %i.v, ptr %i.am, align 4, !tbaa !95
  br label %b3SyncBodyFlags.exit

b3SyncBodyFlags.exit:                             ; preds = %bb.f, %b3GetBodyState.exit.i, %bb.e, %bb.d, %bb.a
  ret void
}

declare void @b3RecWrite_BodySetBullet(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define zeroext i1 @b3Body_IsBullet(i64 %0) local_unnamed_addr #4 {
bb.a:
  %.sroa.2.0.extract.shift = lshr i64 %0, 32
  %i.a = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b3GetWorld(i32 noundef %i.b) #10
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 3880
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !68
  %i.f = shl i64 %0, 32
  %sext.i = add i64 %i.f, -4294967296
  %i.g = ashr exact i64 %sext.i, 25
  %i.h = getelementptr inbounds i8, ptr %i.e, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.j = load i32, ptr %i.i, align 8, !tbaa !89
  %i.k = and i32 %i.j, 128
  %i.l = icmp ne i32 %i.k, 0
  ret i1 %i.l
}

; Function Attrs: nounwind uwtable
define void @b3Body_AllowFastRotation(i64 %0, i1 noundef zeroext %1) local_unnamed_addr #4 {
bb.a:
  %2 = alloca %struct.b3RecArgs_BodyAllowFastRotation, align 8 ; 6 uses
  %.sroa.3.0.extract.shift = lshr i64 %0, 32
  %i.a = zext i1 %1 to i8
  %i.b = trunc nuw i64 %.sroa.3.0.extract.shift to i32
  %i.c = and i32 %i.b, 65535
  %i.d = tail call ptr @b3GetUnlockedWorld(i32 noundef %i.c) #10 ; 4 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %b3SyncBodyFlags.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 4736
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !123  ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  store i64 %0, ptr %2, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 %i.a, ptr %i.h, align 8, !tbaa !186
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.i, i8 0, i64 3, i1 false)
  call void @b3RecWrite_BodyAllowFastRotation(ptr noundef nonnull %i.g, ptr noundef nonnull %2) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = select i1 %1, i32 1024, i32 0            ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 3880
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !68
  %i.m = shl i64 %0, 32
  %sext.i = add i64 %i.m, -4294967296
  %i.n = ashr exact i64 %sext.i, 25
  %i.o = getelementptr inbounds i8, ptr %i.l, i64 %i.n ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 112 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !89   ; 2 uses
  %i.r = and i32 %i.q, 1024
  %i.s = icmp eq i32 %i.r, %i.j
  br i1 %i.s, label %b3SyncBodyFlags.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = and i32 %i.q, -1025
  %i.u = or disjoint i32 %i.t, %i.j               ; 2 uses
  store i32 %i.u, ptr %i.p, align 8, !tbaa !89
  %i.v = and i32 %i.u, -833                       ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 3920
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !69   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.z = load i32, ptr %i.y, align 8, !tbaa !72   ; 2 uses
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds [88 x i8], ptr %i.x, i64 %i.aa
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !82
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !83
  %i.af = sext i32 %i.ae to i64                   ; 2 uses
  %i.ag = getelementptr inbounds [216 x i8], ptr %i.ac, i64 %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 212
  store i32 %i.v, ptr %i.ah, align 4, !tbaa !93
  %i.ai = icmp eq i32 %i.z, 2
  br i1 %i.ai, label %b3GetBodyState.exit.i, label %b3SyncBodyFlags.exit

b3GetBodyState.exit.i:                            ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 192
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !88 ; 2 uses
  %.not.i = icmp eq ptr %i.ak, null
  br i1 %.not.i, label %b3SyncBodyFlags.exit, label %bb.f

bb.f:                                             ; preds = %b3GetBodyState.exit.i
  %i.al = getelementptr inbounds [56 x i8], ptr %i.ak, i64 %i.af
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 52
  store i32 %i.v, ptr %i.am, align 4, !tbaa !95
  br label %b3SyncBodyFlags.exit

b3SyncBodyFlags.exit:                             ; preds = %bb.f, %b3GetBodyState.exit.i, %bb.e, %bb.d, %bb.a
  ret void
}

declare void @b3RecWrite_BodyAllowFastRotation(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define zeroext i1 @b3Body_IsFastRotationAllowed(i64 %0) local_unnamed_addr #4 {
bb.a:
  %.sroa.2.0.extract.shift = lshr i64 %0, 32
  %i.a = trunc nuw i64 %.sroa.2.0.extract.shift to i32
end_hunk_0
