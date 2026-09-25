Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d/original/recording?download=true
inline.NumInlined: 853
inline.NumDeleted: 41
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@b3StartRecordingIntoBuffer:bb.a
  %i.ck = load ptr, ptr %1, align 8, !tbaa !72
  %i.cl = sext i32 %i.ch to i64
  %i.cm = getelementptr inbounds i8, ptr %i.ck, i64 %i.cl ; 3 uses
  %i.cn = trunc i32 %i.cj to i8
  store i8 %i.cn, ptr %i.cm, align 1, !tbaa !29
  %i.co = lshr i32 %i.cj, 8
  %i.cp = trunc i32 %i.co to i8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 1
  store i8 %i.cp, ptr %i.cq, align 1, !tbaa !29
  %i.cr = lshr i32 %i.cj, 16
  %i.cs = trunc i32 %i.cr to i8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cm, i64 2
  store i8 %i.cs, ptr %i.ct, align 1, !tbaa !29
  %i.cu = load ptr, ptr %i.ce, align 8, !tbaa !43
  call void @b3UnlockMutex(ptr noundef %i.cu) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret void
}

declare float @b3GetLengthUnitsPerMeter() local_unnamed_addr #2

declare i32 @b3SerializeWorld(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden i64 @b3HashWorldState(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3880
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 3888
  %i.c = load i32, ptr %i.b, align 8, !tbaa !394  ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.c to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.0.lcssa = phi i64 [ -3750763034362895579, %bb.a ], [ %.2, %bb.d ]
  ret i64 %.0.lcssa

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %.060 = phi i64 [ -3750763034362895579, %.lr.ph.preheader ], [ %.2, %bb.d ] ; 2 uses
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !395
  %i.f = getelementptr inbounds nuw [128 x i8], ptr %i.e, i64 %indvars.iv ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 108
  %i.h = load i32, ptr %i.g, align 4, !tbaa !397
  %i.i = zext i32 %i.h to i64
  %.not = icmp eq i64 %indvars.iv, %i.i
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph
  %i.j = tail call ptr @b3GetBodySim(ptr noundef nonnull %0, ptr noundef nonnull %i.f) #17 ; 7 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.2.0.copyload58 = load i32, ptr %.sroa.2.0..sroa_idx, align 4
  %i.k = load i32, ptr %i.j, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.m = load i32, ptr %i.l, align 4
  %i.n = zext i32 %i.k to i64
  %i.o = zext i32 %i.m to i64
  %i.p = zext i32 %.sroa.2.0.copyload58 to i64
  %i.q = xor i64 %.060, %i.n
  %i.r = mul i64 %i.q, 1099511628211
  %i.s = xor i64 %i.r, %i.o
  %i.t = mul i64 %i.s, 1099511628211
  %i.u = xor i64 %i.t, %i.p
  %i.v = mul i64 %i.u, 1099511628211
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %.0.copyload = load i32, ptr %i.w, align 4
  %i.x = zext i32 %.0.copyload to i64
  %i.y = xor i64 %i.v, %i.x
  %i.z = mul i64 %i.y, 1099511628211
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.0.copyload7 = load i32, ptr %i.aa, align 4
  %i.ab = zext i32 %.0.copyload7 to i64
  %i.ac = xor i64 %i.z, %i.ab
  %i.ad = mul i64 %i.ac, 1099511628211
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %.0.copyload9 = load i32, ptr %i.ae, align 4
  %i.af = zext i32 %.0.copyload9 to i64
  %i.ag = xor i64 %i.ad, %i.af
  %i.ah = mul i64 %i.ag, 1099511628211
  %i.ai = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.0.copyload11 = load i32, ptr %i.ai, align 4
  %i.aj = zext i32 %.0.copyload11 to i64
  %i.ak = xor i64 %i.ah, %i.aj
  %i.al = mul i64 %i.ak, 1099511628211            ; 2 uses
  %i.am = tail call ptr @b3GetBodyState(ptr noundef nonnull %0, ptr noundef nonnull %i.f) #17 ; 7 uses
  %.not56 = icmp eq ptr %i.am, null
  br i1 %.not56, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.0.copyload13 = load i32, ptr %i.am, align 4
  %i.an = zext i32 %.0.copyload13 to i64
  %i.ao = xor i64 %i.al, %i.an
  %i.ap = mul i64 %i.ao, 1099511628211
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %.0.copyload15 = load i32, ptr %i.aq, align 4
  %i.ar = zext i32 %.0.copyload15 to i64
  %i.as = xor i64 %i.ap, %i.ar
  %i.at = mul i64 %i.as, 1099511628211
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.0.copyload17 = load i32, ptr %i.au, align 4
  %i.av = zext i32 %.0.copyload17 to i64
  %i.aw = xor i64 %i.at, %i.av
  %i.ax = mul i64 %i.aw, 1099511628211
  %i.ay = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  %.0.copyload19 = load i32, ptr %i.ay, align 4
  %i.az = zext i32 %.0.copyload19 to i64
  %i.ba = xor i64 %i.ax, %i.az
  %i.bb = mul i64 %i.ba, 1099511628211
  %i.bc = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %.0.copyload21 = load i32, ptr %i.bc, align 4
  %i.bd = zext i32 %.0.copyload21 to i64
  %i.be = xor i64 %i.bb, %i.bd
  %i.bf = mul i64 %i.be, 1099511628211
  %i.bg = getelementptr inbounds nuw i8, ptr %i.am, i64 20
  %.0.copyload23 = load i32, ptr %i.bg, align 4
  %i.bh = zext i32 %.0.copyload23 to i64
  %i.bi = xor i64 %i.bf, %i.bh
  %i.bj = mul i64 %i.bi, 1099511628211
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %.lr.ph
  %.2 = phi i64 [ %.060, %.lr.ph ], [ %i.bj, %bb.c ], [ %i.al, %bb.b ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !393
}

; Function Attrs: nounwind uwtable
define hidden void @b3StopRecordingInternal(ptr nofree noundef captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %1 = alloca %struct.b3RecArgs_DestroyWorld, align 2 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4736 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !172  ; 16 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.a, align 8, !tbaa !172
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.e = load i8, ptr %i.d, align 8, !tbaa !120, !range !14, !noundef !15
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.g, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !35
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 100
  %.sroa.6.0.copyload = load <2 x float>, ptr %.sroa.6.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 108
  %.sroa.7.0.copyload = load float, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !35
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.5.0 = phi float [ %.sroa.5.0.copyload, %bb.c ], [ 0.000000e+00, %bb.b ]
  %.sroa.7.0 = phi float [ %.sroa.7.0.copyload, %bb.c ], [ 0.000000e+00, %bb.b ]
  %.sroa.6.0 = phi <2 x float> [ %.sroa.6.0.copyload, %bb.c ], [ zeroinitializer, %bb.b ]
  %.sroa.0.0 = phi <2 x float> [ %.sroa.0.0.copyload, %bb.c ], [ zeroinitializer, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !43
  tail call void @b3LockMutex(ptr noundef %i.i) #17
  tail call void @b3RecBeginRecord(ptr noundef nonnull %i.b, i8 noundef zeroext -14)
  tail call void @b3RecW_VEC3(ptr noundef nonnull %i.b, <2 x float> %.sroa.0.0, float %.sroa.5.0)
  tail call void @b3RecW_VEC3(ptr noundef nonnull %i.b, <2 x float> %.sroa.6.0, float %.sroa.7.0)
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 3 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !71
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !70   ; 2 uses
  %i.n = sub nsw i32 %i.k, %i.m
  %i.o = add nsw i32 %i.n, -3                     ; 3 uses
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !72
  %i.q = sext i32 %i.m to i64
  %i.r = getelementptr inbounds i8, ptr %i.p, i64 %i.q ; 3 uses
  %i.s = trunc i32 %i.o to i8
  store i8 %i.s, ptr %i.r, align 1, !tbaa !29
  %i.t = lshr i32 %i.o, 8
  %i.u = trunc i32 %i.t to i8
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  store i8 %i.u, ptr %i.v, align 1, !tbaa !29
  %i.w = lshr i32 %i.o, 16
  %i.x = trunc i32 %i.w to i8
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  store i8 %i.x, ptr %i.y, align 1, !tbaa !29
  %i.z = load ptr, ptr %i.h, align 8, !tbaa !43
  tail call void @b3UnlockMutex(ptr noundef %i.z) #17
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 4760
  %i.ab = load i16, ptr %i.aa, align 8, !tbaa !173
  %i.ac = add i16 %i.ab, 1
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 4488
  %i.ae = load i16, ptr %i.ad, align 8, !tbaa !174
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  store i16 %i.ac, ptr %1, align 2, !tbaa !54
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i16 %i.ae, ptr %.sroa.4.0..sroa_idx, align 2, !tbaa !54
  call void @b3RecWrite_DestroyWorld(ptr noundef nonnull %i.b, ptr noundef nonnull %1)
  %i.af = load i32, ptr %i.j, align 4, !tbaa !71  ; 4 uses
  tail call void @b3RecWriteRegistry(ptr noundef nonnull %i.b)
  %i.ag = load i32, ptr %i.j, align 4, !tbaa !71
  %i.ah = sub nsw i32 %i.ag, %i.af                ; 3 uses
  %i.ai = load ptr, ptr %i.b, align 8, !tbaa !72  ; 10 uses
  %i.aj = sext i32 %i.af to i64                   ; 3 uses
  %i.ak = sext i32 %i.ah to i64                   ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  store i32 %i.af, ptr %i.al, align 1, !tbaa !29
  store i32 %i.ah, ptr %i.am, align 1, !tbaa !29
  %i.an = ashr i32 %i.af, 31
  %i.ao = trunc nsw i32 %i.an to i8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 36
  store i8 %i.ao, ptr %i.ap, align 1, !tbaa !29
  %i.aq = ashr i32 %i.ah, 31
  %i.ar = trunc nsw i32 %i.aq to i8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 44
  store i8 %i.ar, ptr %i.as, align 1, !tbaa !29
  %i.at = lshr i64 %i.aj, 40
  %i.au = trunc i64 %i.at to i8
  %i.av = getelementptr inbounds nuw i8, ptr %i.ai, i64 37
  store i8 %i.au, ptr %i.av, align 1, !tbaa !29
  %i.aw = lshr i64 %i.ak, 40
  %i.ax = trunc i64 %i.aw to i8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ai, i64 45
  store i8 %i.ax, ptr %i.ay, align 1, !tbaa !29
  %i.az = lshr i64 %i.aj, 48
  %i.ba = trunc i64 %i.az to i8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ai, i64 38
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !29
  %i.bc = lshr i64 %i.ak, 48
  %i.bd = trunc i64 %i.bc to i8
  %i.be = getelementptr inbounds nuw i8, ptr %i.ai, i64 46
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !29
  %i.bf = lshr i64 %i.aj, 56
  %i.bg = trunc nuw i64 %i.bf to i8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ai, i64 39
  store i8 %i.bg, ptr %i.bh, align 1, !tbaa !29
  %i.bi = lshr i64 %i.ak, 56
  %i.bj = trunc nuw i64 %i.bi to i8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ai, i64 47
  store i8 %i.bj, ptr %i.bk, align 1, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret void
}

; Function Attrs: nofree nounwind uwtable
define zeroext i1 @b3SaveRecordingToFile(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #10 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias ptr @fopen(ptr noundef nonnull %1, ptr noundef nonnull @.str) ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !tbaa !72
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !71
  %i.h = sext i32 %i.g to i64
  %i.i = tail call i64 @fwrite(ptr noundef %i.e, i64 noundef 1, i64 noundef %i.h, ptr noundef nonnull %i.c)
  %i.j = tail call i32 @fclose(ptr noundef nonnull %i.c) ; 0 uses
  %i.k = trunc i64 %i.i to i32
  %i.l = load i32, ptr %i.f, align 4, !tbaa !71
  %i.m = icmp eq i32 %i.l, %i.k
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ %i.m, %bb.c ], [ false, %bb.b ]
  ret i1 %.1
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define noundef ptr @b3LoadRecordingFromFile(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noalias ptr @fopen(ptr noundef nonnull %0, ptr noundef nonnull @.str.1) ; 8 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @fseek(ptr noundef nonnull %i.b, i64 noundef 0, i32 noundef 2)
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i32 @fclose(ptr noundef nonnull %i.b) ; 0 uses
  br label %bb.l

bb.e:                                             ; preds = %bb.c
  %i.f = tail call i64 @ftell(ptr noundef nonnull %i.b) ; 5 uses
  %i.g = add i64 %i.f, -2147483648
  %or.cond = icmp ult i64 %i.g, -2147483600
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.h = tail call i32 @fclose(ptr noundef nonnull %i.b) ; 0 uses
  br label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.i = tail call i32 @fseek(ptr noundef nonnull %i.b, i64 noundef 0, i32 noundef 0) ; 0 uses
  %i.j = trunc nuw nsw i64 %i.f to i32            ; 2 uses
  %i.k = tail call ptr @b3Alloc(i64 noundef 120) #17 ; 10 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.k, i8 0, i64 120, i1 false)
  %i.l = tail call ptr @b3Alloc(i64 noundef %i.f) #17
  store ptr %i.l, ptr %i.k, align 8, !tbaa !72
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i32 %i.j, ptr %i.m, align 8, !tbaa !119
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 12 ; 2 uses
  store i32 0, ptr %i.n, align 4, !tbaa !71
  %i.o = tail call ptr @b3CreateMutex() #17
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store ptr %i.o, ptr %i.p, align 8, !tbaa !43
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !72
  %i.r = tail call i64 @fread(ptr noundef %i.q, i64 noundef 1, i64 noundef %i.f, ptr noundef nonnull %i.b)
  %i.s = tail call i32 @fclose(ptr noundef nonnull %i.b) ; 0 uses
  %.not27 = icmp eq i64 %i.r, %i.f
  br i1 %.not27, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @b3DestroyRecording(ptr noundef nonnull %i.k)
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.t = load ptr, ptr %i.k, align 8, !tbaa !72
  %.sroa.0.0.copyload = load i32, ptr %i.t, align 1
  %.not28 = icmp eq i32 %.sroa.0.0.copyload, 1129460546
  br i1 %.not28, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @b3DestroyRecording(ptr noundef nonnull %i.k)
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  store i32 %i.j, ptr %i.n, align 4, !tbaa !71
  br label %bb.l

bb.l:                                             ; preds = %bb.d, %bb.b, %bb.h, %bb.k, %bb.j, %bb.f, %bb.a
  %.4 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ null, %bb.d ], [ null, %bb.f ], [ null, %bb.h ], [ null, %bb.j ], [ %i.k, %bb.k ]
  ret ptr %.4
}

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr noundef captures(none), i64 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i64 @ftell(ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define hidden i32 @b3RecInternHull(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.b = load i32, ptr %i.a, align 4, !tbaa !399  ; 3 uses
  %i.c = sext i32 %i.b to i64                     ; 2 uses
  %i.d = tail call ptr @b3Alloc(i64 noundef %i.c) #17 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.d, ptr align 8 %1, i64 %i.c, i1 false)
  %i.e = tail call i64 @b3Hash64NonZero(ptr noundef %i.d, i32 noundef %i.b) #17
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = tail call i32 @b3InternGeometry(ptr noundef nonnull %i.f, i32 noundef 0, i64 noundef %i.e, ptr noundef %i.d, i32 noundef %i.b)
  ret i32 %i.g
}

declare i64 @b3Hash64NonZero(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden i32 @b3RecInternMesh(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !401  ; 3 uses
  %i.c = sext i32 %i.b to i64                     ; 2 uses
  %i.d = tail call ptr @b3Alloc(i64 noundef %i.c) #17 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.d, ptr align 8 %1, i64 %i.c, i1 false)
  %i.e = tail call i64 @b3Hash64NonZero(ptr noundef %i.d, i32 noundef %i.b) #17
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = tail call i32 @b3InternGeometry(ptr noundef nonnull %i.f, i32 noundef 1, i64 noundef %i.e, ptr noundef %i.d, i32 noundef %i.b)
  ret i32 %i.g
}

; Function Attrs: nounwind uwtable
define hidden i32 @b3RecInternHeightField(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !403  ; 3 uses
  %i.c = sext i32 %i.b to i64                     ; 2 uses
  %i.d = tail call ptr @b3Alloc(i64 noundef %i.c) #17 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.d, ptr align 8 %1, i64 %i.c, i1 false)
  %i.e = tail call i64 @b3Hash64NonZero(ptr noundef %i.d, i32 noundef %i.b) #17
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
end_hunk_0
