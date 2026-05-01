inline.NumInlined: 395
inline.NumDeleted: 110
begin_hunk_0_@cliInitHelp:bb.a
  store ptr %i.ay, ptr @helpEntries, align 8, !tbaa !28
  %i.az = load i32, ptr @helpEntriesLen, align 4, !tbaa !9
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr [88 x i8], ptr %i.ay, i64 %i.ba ; 10 uses
  %i.bc = getelementptr i8, ptr %i.bb, i64 -88
  %i.bd = getelementptr i8, ptr %i.bb, i64 -84
  store i32 1, ptr %i.bd, align 4, !tbaa !231
end_hunk_0
begin_hunk_1_@cliInitHelp:bb.a

bb.s:                                             ; preds = %bb.r, %._crit_edge73.i
  %i.cu = getelementptr i8, ptr %i.bb, i64 -56
  %i.cv = getelementptr i8, ptr %i.bb, i64 -40
  store ptr @.str.515, ptr %i.cv, align 8, !tbaa !45
  store <2 x ptr> <ptr @.str.514, ptr @.str.516>, ptr %i.cu, align 8, !tbaa !29
  %.pre.i = load i64, ptr %i.o, align 8, !tbaa !33
  br label %bb.t

end_hunk_1
begin_hunk_2_@main:bb.a
  %7 = alloca %struct.timeval, align 8            ; 5 uses
  %8 = alloca %struct.timeval, align 8            ; 5 uses
  %i.m = alloca ptr, align 8                      ; 6 uses
  %i.n = alloca [3 x ptr], align 16               ; 5 uses
  %i.o = alloca [3 x i64], align 16               ; 6 uses
  %9 = alloca %struct.timeval, align 8            ; 5 uses
  %i.p = alloca [16 x i64], align 16              ; 23 uses
end_hunk_2
begin_hunk_3_@main:bb.a
  %puts92.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.36) ; 0 uses
  call fastcc void @sendReadOnly()
  %i.bvp = uitofp i64 %i.bvo to double            ; 2 uses
  %i.bvq = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.bvr = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.bvs = getelementptr inbounds nuw i8, ptr %i.o, i64 16
end_hunk_3
begin_hunk_4_@main:bb.a
  %i.bxw = phi i64 [ 0, %.lr.ph.i.i107 ], [ %i.byh, %bb.wd ]
  %.032.i.i = phi i32 [ 0, %.lr.ph.i.i107 ], [ %i.byg, %bb.wd ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #34
  store <2 x ptr> <ptr @.str.843, ptr @.str.844>, ptr %i.n, align 16, !tbaa !29
  %i.bxx = load ptr, ptr %i.bxu, align 8, !tbaa !38
  %i.bxy = getelementptr inbounds nuw [8 x i8], ptr %i.bxx, i64 %i.bxw
  %i.bxz = load ptr, ptr %i.bxy, align 8, !tbaa !39 ; 2 uses
end_hunk_4
begin_hunk_5_@clusterManagerMoveSlot:bb.a
  %i.bz = load i64, ptr %i.av, align 8, !tbaa !33
  %i.ca = add i64 %i.bz, 2                        ; 2 uses
  %i.cb = shl i64 %i.ca, 3                        ; 2 uses
  %i.cc = call noalias ptr @zcalloc(i64 noundef %i.cb) #38 ; 8 uses
  %i.cd = call noalias ptr @zcalloc(i64 noundef %i.cb) #38 ; 9 uses
  store i64 5, ptr %i.cd, align 8, !tbaa !26
  store <2 x ptr> <ptr @.str.343, ptr @.str.344>, ptr %i.cc, align 8, !tbaa !29
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store i64 12, ptr %i.ce, align 8, !tbaa !26
  %i.cf = load i64, ptr %i.av, align 8, !tbaa !33 ; 5 uses
end_hunk_5
begin_hunk_6_@getKeySizes:bb.a
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca [2 x ptr], align 16               ; 5 uses
  %i.c = alloca [2 x i64], align 16               ; 5 uses
  %i.d = alloca [3 x ptr], align 16               ; 5 uses
  %i.e = alloca [3 x i64], align 16               ; 6 uses
  %i.f = alloca [5 x ptr], align 16               ; 7 uses
  %i.g = alloca [5 x i64], align 16               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
end_hunk_6
begin_hunk_7_@getKeySizes:bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 32
end_hunk_7
begin_hunk_8_@getKeySizes:bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 16
end_hunk_8
begin_hunk_9_@getKeySizes:bb.a

bb.b:                                             ; preds = %.lr.ph.split.us.split.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #34
  store <2 x ptr> <ptr @.str.796, ptr @.str.797>, ptr %i.d, align 16, !tbaa !29
  %i.ab = load ptr, ptr %i.k, align 8, !tbaa !38
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.y
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !39 ; 2 uses
end_hunk_9
begin_hunk_10_@getKeySizes:bb.a
bb.d:                                             ; preds = %.lr.ph.split.us.split
  %i.as = call ptr @hi_sdsfromlonglong(i64 noundef %4) #34 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #34
  store <2 x ptr> <ptr @.str.796, ptr @.str.797>, ptr %i.f, align 16, !tbaa !29
  %i.at = load ptr, ptr %i.k, align 8, !tbaa !38
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.ap
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !39 ; 2 uses
end_hunk_10
