Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d/original/body?download=true
inline.NumInlined: 305
inline.NumDeleted: 45
begin_hunk_0_@b3Body_Enable:bb.a

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.j, %bb.k
  %.not67 = icmp eq i32 %i.bw, -1
  br i1 %.not67, label %._crit_edge75, label %bb.j

._crit_edge75:                                    ; preds = %bb.n, %bb.i
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
  %2 = alloca %struct.b3RecArgs_BodySetMotionLocks, align 8 ; 8 uses
  %.sroa.3.0.extract.shift = lshr i64 %0, 32
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
  %i.h = bitcast i48 %1 to <6 x i8>
  %i.i = shufflevector <6 x i8> %i.h, <6 x i8> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i8> %i.i, ptr %i.g, align 8, !tbaa !125
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i8 %.sroa.10.0.extract.trunc, ptr %.sroa.10.0..sroa_idx, align 4, !tbaa !125
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 13
  store i8 %.sroa.12.0.extract.trunc, ptr %.sroa.12.0..sroa_idx, align 1, !tbaa !125
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 14
  store i16 0, ptr %i.j, align 2
  call void @b3RecWrite_BodySetMotionLocks(ptr noundef nonnull %i.f, ptr noundef nonnull %2) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = trunc i48 %1 to i1
  %i.l = trunc i48 %1 to i32
  %i.m = and i32 %i.l, 1
  %i.n = and i48 %1, 256
  %.not49 = icmp eq i48 %i.n, 0                   ; 2 uses
  %i.o = select i1 %.not49, i32 0, i32 2
  %i.p = or disjoint i32 %i.o, %i.m
  %i.q = and i48 %1, 65536
  %.not50 = icmp eq i48 %i.q, 0                   ; 2 uses
  %i.r = select i1 %.not50, i32 0, i32 4
  %i.s = or disjoint i32 %i.p, %i.r
  %i.t = and i48 %1, 16777216
  %.not51 = icmp eq i48 %i.t, 0                   ; 2 uses
  %i.u = select i1 %.not51, i32 0, i32 8
  %i.v = or disjoint i32 %i.s, %i.u
  %i.w = trunc i48 %.sroa.10.0.extract.shift to i1 ; 2 uses
  %i.x = select i1 %i.w, i32 16, i32 0
  %i.y = or disjoint i32 %i.v, %i.x
  %i.z = trunc i48 %.sroa.12.0.extract.shift to i1 ; 2 uses
  %i.aa = select i1 %i.z, i32 32, i32 0
  %i.ab = or disjoint i32 %i.y, %i.aa             ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 3880
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !68
  %i.ae = shl i64 %0, 32
  %sext.i = add i64 %i.ae, -4294967296
  %i.af = ashr exact i64 %sext.i, 25
  %i.ag = getelementptr inbounds i8, ptr %i.ad, i64 %i.af ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 112 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !89 ; 3 uses
  %i.aj = and i32 %i.ai, 63
  %i.ak = icmp eq i32 %i.aj, %i.ab
  br i1 %i.ak, label %bb.s, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.al = and i32 %i.ai, 56
  %i.am = icmp eq i32 %i.al, 56
  %i.an = and i32 %i.ab, 56
  %i.ao = and i32 %i.ai, -64
  %i.ap = or i32 %i.ao, %i.ab                     ; 2 uses
  store i32 %i.ap, ptr %i.ah, align 8, !tbaa !89
  %i.aq = and i32 %i.ap, -833                     ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 3920
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !69 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.au = load i32, ptr %i.at, align 8, !tbaa !72 ; 2 uses
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds [88 x i8], ptr %i.as, i64 %i.av
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !82
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !83
  %i.ba = sext i32 %i.az to i64                   ; 3 uses
  %i.bb = getelementptr inbounds [216 x i8], ptr %i.ax, i64 %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 212
  store i32 %i.aq, ptr %i.bc, align 4, !tbaa !93
  %i.bd = icmp eq i32 %i.au, 2
  br i1 %i.bd, label %b3GetBodyState.exit.i, label %b3GetBodyState.exit.thread

b3GetBodyState.exit.i:                            ; preds = %bb.e
  %i.be = getelementptr inbounds nuw i8, ptr %i.as, i64 192
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !88 ; 3 uses
  %.not.i = icmp eq ptr %i.bf, null
  br i1 %.not.i, label %b3GetBodyState.exit.thread, label %bb.f

bb.f:                                             ; preds = %b3GetBodyState.exit.i
  %i.bg = getelementptr inbounds [56 x i8], ptr %i.bf, i64 %i.ba
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 52
  store i32 %i.aq, ptr %i.bh, align 4, !tbaa !95
  %i.bi = getelementptr inbounds [56 x i8], ptr %i.bf, i64 %i.ba ; 6 uses
  br i1 %i.k, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store float 0.000000e+00, ptr %i.bi, align 4, !tbaa !337
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  br i1 %.not49, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  store float 0.000000e+00, ptr %i.bj, align 4, !tbaa !338
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  br i1 %.not50, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store float 0.000000e+00, ptr %i.bk, align 4, !tbaa !339
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  br i1 %.not51, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 12
  store float 0.000000e+00, ptr %i.bl, align 4, !tbaa !340
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  br i1 %i.w, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store float 0.000000e+00, ptr %i.bm, align 4, !tbaa !341
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  br i1 %i.z, label %bb.q, label %b3GetBodyState.exit.thread

bb.q:                                             ; preds = %bb.p
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 20
  store float 0.000000e+00, ptr %i.bn, align 4, !tbaa !342
  br label %b3GetBodyState.exit.thread

b3GetBodyState.exit.thread:                       ; preds = %b3GetBodyState.exit.i, %bb.e, %bb.p, %bb.q
  %i.bo = icmp ne i32 %i.an, 56
  %.not42 = xor i1 %i.bo, %i.am
  br i1 %.not42, label %bb.s, label %bb.r

bb.r:                                             ; preds = %b3GetBodyState.exit.thread
  call void @b3UpdateBodyMassData(ptr noundef nonnull %i.c, ptr noundef nonnull %i.ag)
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
  %i.l = lshr i8 %i.k, 4
  %1 = and i8 %i.l, 1
  %i.m = lshr i8 %i.k, 5
  %2 = and i8 %i.m, 1
  %.sroa.6.0.insert.ext = zext nneg i8 %2 to i48
  %.sroa.6.0.insert.shift = shl nuw nsw i48 %.sroa.6.0.insert.ext, 40
  %.sroa.5.0.insert.ext = zext nneg i8 %1 to i48
  %.sroa.5.0.insert.shift = shl nuw nsw i48 %.sroa.5.0.insert.ext, 32
  %i.n = lshr i8 %i.k, 1
  %3 = lshr i8 %i.k, 2
  %i.o = lshr i8 %i.k, 3
  %4 = insertelement <4 x i8> poison, i8 %i.k, i64 0
  %5 = insertelement <4 x i8> %4, i8 %i.n, i64 1
  %6 = insertelement <4 x i8> %5, i8 %3, i64 2
  %7 = insertelement <4 x i8> %6, i8 %i.o, i64 3
  %8 = and <4 x i8> %7, splat (i8 1)
  %i.p = bitcast <4 x i8> %8 to i32
  %i.q = zext nneg i32 %i.p to i48
  %op.rdx = or disjoint i48 %.sroa.5.0.insert.shift, %i.q
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
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b3GetWorld(i32 noundef %i.b) #10
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 3880
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !68
  %i.f = shl i64 %0, 32
end_hunk_0
