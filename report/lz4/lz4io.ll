Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lz4/original/lz4io?download=true
inline.NumInlined: 97
inline.NumDeleted: 35
begin_hunk_0_@fflush
; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local range(i32 1, 201) i32 @LZ4IO_setNbWorkers(ptr nofree noundef writeonly captures(none) initializes((68, 72)) %0, i32 noundef %1) local_unnamed_addr #8 {
bb.a:
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %1, i32 1)
  %i.a = tail call i32 @llvm.umin.i32(i32 %spec.store.select, i32 200) ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 %i.a, ptr %i.b, align 4, !tbaa !24
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local range(i32 0, 2) i32 @LZ4IO_setDictionaryFilename(ptr nofree noundef writeonly captures(none) initializes((44, 48), (56, 64)) %0, ptr noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %1, ptr %i.a, align 8, !tbaa !22
  %i.b = icmp ne ptr %1, null
  %i.c = zext i1 %i.b to i32                      ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.c, ptr %i.d, align 4, !tbaa !20
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local range(i32 0, 2) i32 @LZ4IO_setPassThrough(ptr nofree noundef writeonly captures(none) initializes((0, 4)) %0, i32 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp ne i32 %1, 0
  %i.b = zext i1 %i.a to i32                      ; 2 uses
  store i32 %i.b, ptr %0, align 8, !tbaa !25
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local range(i32 0, 2) i32 @LZ4IO_setOverwrite(ptr nofree noundef writeonly captures(none) initializes((4, 8)) %0, i32 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp ne i32 %1, 0
  %i.b = zext i1 %i.a to i32                      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.b, ptr %i.c, align 4, !tbaa !26
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local range(i32 0, 2) i32 @LZ4IO_setTestMode(ptr nofree noundef writeonly captures(none) initializes((8, 12)) %0, i32 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp ne i32 %1, 0
  %i.b = zext i1 %i.a to i32                      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.b, ptr %i.c, align 8, !tbaa !27
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local i64 @LZ4IO_setBlockSizeID(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = and i32 %1, -4
  %or.cond.not = icmp eq i32 %i.a, 4
  br i1 %or.cond.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %1, ptr %i.b, align 4, !tbaa !28
  %i.c = zext nneg i32 %1 to i64
  %i.d = getelementptr [8 x i8], ptr @LZ4IO_setBlockSizeID.blockSizeTable, i64 %i.c
  %i.e = getelementptr i8, ptr %i.d, i64 -32
  %i.f = load i64, ptr %i.e, align 8, !tbaa !29   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.f, ptr %i.g, align 8, !tbaa !18
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define dso_local range(i64 32, 4194305) i64 @LZ4IO_setBlockSize(ptr nofree noundef writeonly captures(none) initializes((16, 24)) %0, i64 noundef %1) local_unnamed_addr #9 {
bb.a:
  %spec.store.select = tail call i64 @llvm.umax.i64(i64 %1, i64 32)
  %spec.store.select2 = tail call i64 @llvm.umin.i64(i64 %spec.store.select, i64 4194304) ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %spec.store.select2, ptr %i.a, align 8, !tbaa !18
  %i.b = add nsw i64 %spec.store.select2, -1
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.012 = phi i64 [ %i.b, %bb.a ], [ %i.c, %bb.b ]
  %.0 = phi i32 [ 0, %bb.a ], [ %i.d, %bb.b ]     ; 2 uses
  %i.c = lshr i64 %.012, 2                        ; 2 uses
  %.not = icmp eq i64 %i.c, 0
  %i.d = add nuw nsw i32 %.0, 1
  br i1 %.not, label %bb.c, label %bb.b, !llvm.loop !112

bb.c:                                             ; preds = %bb.b
  %spec.store.select1 = tail call i32 @llvm.umax.i32(i32 %.0, i32 7)
  %i.e = add nsw i32 %spec.store.select1, -3
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.e, ptr %i.f, align 4, !tbaa !28
  ret i64 %spec.store.select2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local range(i32 0, 2) i32 @LZ4IO_setBlockMode(ptr nofree noundef writeonly captures(none) initializes((32, 36)) %0, i32 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq i32 %1, 1
  %i.b = zext i1 %i.a to i32                      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.b, ptr %i.c, align 8, !tbaa !113
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local range(i32 0, 2) i32 @LZ4IO_setBlockChecksumMode(ptr nofree noundef writeonly captures(none) initializes((24, 28)) %0, i32 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp ne i32 %1, 0
  %i.b = zext i1 %i.a to i32                      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.b, ptr %i.c, align 8, !tbaa !31
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local range(i32 0, 2) i32 @LZ4IO_setStreamChecksumMode(ptr nofree noundef writeonly captures(none) initializes((28, 32)) %0, i32 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp ne i32 %1, 0
  %i.b = zext i1 %i.a to i32                      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.b, ptr %i.c, align 4, !tbaa !32
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @LZ4IO_setNotificationLevel(i32 noundef returned %0) local_unnamed_addr #10 {
bb.a:
  store i32 %0, ptr @g_displayLevel, align 4, !tbaa !11
  ret i32 %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef range(i32 0, 3) i32 @LZ4IO_setSparseFile(ptr nofree noundef writeonly captures(none) initializes((36, 40)) %0, i32 noundef %1) local_unnamed_addr #8 {
bb.a:
  %.not = icmp eq i32 %1, 0
  %i.a = select i1 %.not, i32 0, i32 2            ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.a, ptr %i.b, align 4, !tbaa !33
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local range(i32 0, 2) i32 @LZ4IO_setContentSize(ptr nofree noundef writeonly captures(none) initializes((40, 44)) %0, i32 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp ne i32 %1, 0
  %i.b = zext i1 %i.a to i32                      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.b, ptr %i.c, align 8, !tbaa !19
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @LZ4IO_favorDecSpeed(ptr nofree noundef writeonly captures(none) initializes((48, 52)) %0, i32 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp ne i32 %1, 0
  %i.b = zext i1 %i.a to i32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.b, ptr %i.c, align 8, !tbaa !21
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @LZ4IO_setRemoveSrcFile(ptr nofree noundef writeonly captures(none) initializes((64, 68)) %0, i32 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp ne i32 %1, 0
  %i.b = zext i1 %i.a to i32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %i.b, ptr %i.c, align 8, !tbaa !23
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @LZ4IO_compressFilename_Legacy(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #11 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = tail call i64 @TIME_getTime() #25
  %i.c = tail call i64 @clock() #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.d = call fastcc i32 @LZ4IO_compressLegacy_internal(ptr noundef %i.a, ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3)
  %i.e = load i64, ptr %i.a, align 8, !tbaa !35
  %i.f = tail call i64 @TIME_clockSpan_ns(i64 %i.b) #25
  %i.g = tail call i64 @clock() #25
  %i.h = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  %i.i = icmp sgt i32 %i.h, 2
  br i1 %i.i, label %bb.b, label %LZ4IO_finalTimeDisplay.exit

bb.b:                                             ; preds = %bb.a
  %i.j = sitofp i64 %i.c to double
  %4 = sitofp i64 %i.g to double
  %i.k = tail call i64 @llvm.umax.i64(i64 %i.f, i64 1)
  %i.l = uitofp i64 %i.k to double
  %i.m = insertelement <2 x double> poison, double %4, i64 0
  %i.n = insertelement <2 x double> %i.m, double %i.l, i64 1
  %i.o = fdiv <2 x double> %i.n, <double 1.000000e+06, double 1.000000e+09> ; 3 uses
  %i.p = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.q = uitofp i64 %i.e to double
  %i.r = extractelement <2 x double> %i.o, i64 1  ; 2 uses
  %i.s = insertelement <2 x double> poison, double %i.j, i64 0
  %i.t = insertelement <2 x double> %i.s, double %i.q, i64 1
  %i.u = insertelement <2 x double> %i.o, double 1.000000e+06, i64 0
  %i.v = fdiv <2 x double> %i.t, %i.u             ; 2 uses
  %foldExtExtBinop = fsub <2 x double> %i.o, %i.v
  %i.w = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.x = extractelement <2 x double> %i.v, i64 1
  %i.y = fmul double %i.x, f0x3F50000000000000
  %i.z = fmul double %i.y, f0x3F50000000000000
  %i.aa = fdiv double %i.w, %i.r
  %i.ab = fmul double %i.aa, 1.000000e+02
  %i.ac = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.p, ptr noundef nonnull @.str.49, double noundef %i.r, double noundef %i.z, double noundef %i.ab) #27 ; 0 uses
  %i.ad = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  %i.ae = icmp sgt i32 %i.ad, 3
  br i1 %i.ae, label %bb.c, label %LZ4IO_finalTimeDisplay.exit

bb.c:                                             ; preds = %bb.b
  %i.af = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.ag = tail call i32 @fflush(ptr noundef %i.af) ; 0 uses
  br label %LZ4IO_finalTimeDisplay.exit

LZ4IO_finalTimeDisplay.exit:                      ; preds = %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret i32 %i.d
}

declare i64 @TIME_getTime() local_unnamed_addr #12

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @LZ4IO_compressLegacy_internal(ptr nofree noundef nonnull writeonly captures(none) initializes((0, 8)) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #11 {
bb.a:
  %5 = alloca %struct.WriteRegister, align 8      ; 8 uses
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %6 = alloca %struct.CompressLegacyState, align 4 ; 4 uses
  %7 = alloca %struct.ReadTracker, align 8        ; 14 uses
  %i.b = icmp slt i32 %3, 3
  %i.c = select i1 %i.b, ptr @LZ4IO_compressBlockLegacy_fast, ptr @LZ4IO_compressBlockLegacy_HC
  %i.d = tail call fastcc ptr @LZ4IO_openSrcFile(ptr noundef %1) ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 68
  %i.f = load i32, ptr %i.e, align 4, !tbaa !24
  %i.g = tail call ptr @TPool_create(i32 noundef %i.f, i32 noundef 4) #25 ; 5 uses
  %i.h = tail call ptr @TPool_create(i32 noundef 1, i32 noundef 4) #25 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %5, i8 0, i64 40, i1 false), !alias.scope !116
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 16, ptr %i.i, align 8, !alias.scope !116
  %i.j = tail call noalias dereferenceable_or_null(384) ptr @calloc(i64 noundef 1, i64 noundef 384) #30, !noalias !116 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !37, !alias.scope !116
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 8388608, ptr %i.l, align 8, !tbaa !38, !alias.scope !116
  store i64 0, ptr %0, align 8, !tbaa !35
  %i.m = icmp eq ptr %i.d, null                   ; 2 uses
  br i1 %i.m, label %bb.aj, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = tail call fastcc ptr @LZ4IO_openDstFile(ptr noundef %2, ptr noundef nonnull %4) ; 4 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.aj, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = icmp eq ptr %i.g, null
  %i.q = icmp eq ptr %i.h, null
  %or.cond = select i1 %i.p, i1 true, i1 %i.q
  br i1 %or.cond, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.r = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %bb.e, label %.thread45

bb.e:                                             ; preds = %bb.d
  %i.t = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.u = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.t, ptr noundef nonnull @.str, i32 noundef 21) #27 ; 0 uses
  %i.v = load i32, ptr @g_displayLevel, align 4, !tbaa !11 ; 2 uses
  %i.w = icmp sgt i32 %i.v, 3
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.y = tail call i32 @fflush(ptr noundef %i.x)  ; 0 uses
  %.pr = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.z = phi i32 [ %i.v, %bb.e ], [ %.pr, %bb.f ]
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %bb.h, label %.thread45

bb.h:                                             ; preds = %bb.g
  %i.ab = load ptr, ptr @stderr, align 8, !tbaa !14
  %fwrite39 = tail call i64 @fwrite(ptr nonnull @.str.44, i64 26, i64 1, ptr %i.ab) #28 ; 0 uses
  %i.ac = load i32, ptr @g_displayLevel, align 4, !tbaa !11 ; 2 uses
  %i.ad = icmp sgt i32 %i.ac, 3
  br i1 %i.ad, label %bb.i, label %thread-pre-split

bb.i:                                             ; preds = %bb.h
  %i.ae = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.af = tail call i32 @fflush(ptr noundef %i.ae) ; 0 uses
  %.pr44.pre = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.i, %bb.h
  %i.ag = phi i32 [ %i.ac, %bb.h ], [ %.pr44.pre, %bb.i ]
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %bb.j, label %.thread45

bb.j:                                             ; preds = %thread-pre-split
  %i.ai = load ptr, ptr @stderr, align 8, !tbaa !14
  %fwrite40 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 2, i64 1, ptr %i.ai) #28 ; 0 uses
  %i.aj = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  %i.ak = icmp sgt i32 %i.aj, 3
  br i1 %i.ak, label %bb.k, label %.thread45

bb.k:                                             ; preds = %bb.j
  %i.al = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.am = tail call i32 @fflush(ptr noundef %i.al) ; 0 uses
  br label %.thread45

.thread45:                                        ; preds = %bb.g, %bb.d, %bb.j, %bb.k, %thread-pre-split
  %i.an = tail call i32 @fflush(ptr noundef null) ; 0 uses
  tail call void @exit(i32 noundef 21) #29
  unreachable

bb.l:                                             ; preds = %bb.c
  %i.ao = icmp eq ptr %i.j, null
  br i1 %i.ao, label %bb.m, label %bb.u

bb.m:                                             ; preds = %bb.l
  %i.ap = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  %i.aq = icmp sgt i32 %i.ap, 0
  br i1 %i.aq, label %bb.n, label %.thread50

bb.n:                                             ; preds = %bb.m
  %i.ar = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.as = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ar, ptr noundef nonnull @.str, i32 noundef 22) #27 ; 0 uses
  %i.at = load i32, ptr @g_displayLevel, align 4, !tbaa !11 ; 2 uses
  %i.au = icmp sgt i32 %i.at, 3
  br i1 %i.au, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.av = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.aw = tail call i32 @fflush(ptr noundef %i.av) ; 0 uses
  %.pr46 = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.ax = phi i32 [ %i.at, %bb.n ], [ %.pr46, %bb.o ]
  %i.ay = icmp sgt i32 %i.ax, 0
  br i1 %i.ay, label %bb.q, label %.thread50

bb.q:                                             ; preds = %bb.p
  %i.az = load ptr, ptr @stderr, align 8, !tbaa !14
  %fwrite37 = tail call i64 @fwrite(ptr nonnull @.str.45, i64 29, i64 1, ptr %i.az) #28 ; 0 uses
  %i.ba = load i32, ptr @g_displayLevel, align 4, !tbaa !11 ; 2 uses
  %i.bb = icmp sgt i32 %i.ba, 3
  br i1 %i.bb, label %bb.r, label %thread-pre-split48

bb.r:                                             ; preds = %bb.q
  %i.bc = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.bd = tail call i32 @fflush(ptr noundef %i.bc) ; 0 uses
  %.pr49.pre = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  br label %thread-pre-split48

thread-pre-split48:                               ; preds = %bb.r, %bb.q
  %i.be = phi i32 [ %i.ba, %bb.q ], [ %.pr49.pre, %bb.r ]
  %i.bf = icmp sgt i32 %i.be, 0
  br i1 %i.bf, label %bb.s, label %.thread50

bb.s:                                             ; preds = %thread-pre-split48
  %i.bg = load ptr, ptr @stderr, align 8, !tbaa !14
  %fwrite38 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 2, i64 1, ptr %i.bg) #28 ; 0 uses
  %i.bh = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  %i.bi = icmp sgt i32 %i.bh, 3
  br i1 %i.bi, label %bb.t, label %.thread50

bb.t:                                             ; preds = %bb.s
  %i.bj = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.bk = tail call i32 @fflush(ptr noundef %i.bj) ; 0 uses
  br label %.thread50

.thread50:                                        ; preds = %bb.p, %bb.m, %bb.s, %bb.t, %thread-pre-split48
  %i.bl = tail call i32 @fflush(ptr noundef null) ; 0 uses
  tail call void @exit(i32 noundef 22) #29
  unreachable

bb.u:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i32 407642370, ptr %i.a, align 4
  %i.bm = call i64 @fwrite(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 4, ptr noundef nonnull %i.n)
  %.not = icmp eq i64 %i.bm, 4
  br i1 %.not, label %bb.ad, label %bb.v

end_hunk_0
begin_hunk_1_@LZ4IO_compressLegacy_internal:bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.co, i8 0, i64 24, i1 false)
  store ptr %i.c, ptr %i.cp, align 8, !tbaa !49
  %i.cq = getelementptr inbounds nuw i8, ptr %7, i64 64
  store ptr %6, ptr %i.cq, align 8, !tbaa !50
  %i.cr = getelementptr inbounds nuw i8, ptr %7, i64 72
  store ptr null, ptr %i.cr, align 8, !tbaa !51
  %i.cs = getelementptr inbounds nuw i8, ptr %7, i64 80
  store ptr %i.n, ptr %i.cs, align 8, !tbaa !52
  %i.ct = getelementptr inbounds nuw i8, ptr %7, i64 88
  store ptr %5, ptr %i.ct, align 8, !tbaa !53
  %i.cu = call i32 @LZ4_compressBound(i32 noundef 8388608) #25
  %i.cv = sext i32 %i.cu to i64
  %i.cw = add nsw i64 %i.cv, 4
  %i.cx = getelementptr inbounds nuw i8, ptr %7, i64 96
  store i64 %i.cw, ptr %i.cx, align 8, !tbaa !54
  call void @TPool_submitJob(ptr noundef nonnull %i.g, ptr noundef nonnull @LZ4IO_readAndProcess, ptr noundef nonnull %7) #25
  call void @TPool_jobsCompleted(ptr noundef nonnull %i.g) #25
  call void @TPool_jobsCompleted(ptr noundef nonnull %i.h) #25
  %i.cy = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  %i.cz = icmp sgt i32 %i.cy, 1
  br i1 %i.cz, label %bb.ae, label %.thread57

bb.ae:                                            ; preds = %bb.ad
  %i.da = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.db = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.da, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17) #27 ; 0 uses
  %i.dc = load i32, ptr @g_displayLevel, align 4, !tbaa !11 ; 2 uses
  %i.dd = icmp sgt i32 %i.dc, 3
  br i1 %i.dd, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.de = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.df = call i32 @fflush(ptr noundef %i.de)     ; 0 uses
  %.pr56 = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af
  %i.dg = phi i32 [ %i.dc, %bb.ae ], [ %.pr56, %bb.af ]
  %i.dh = icmp sgt i32 %i.dg, 1
  br i1 %i.dh, label %bb.ah, label %.thread57

bb.ah:                                            ; preds = %bb.ag
  %i.di = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.dj = load i64, ptr %i.co, align 8, !tbaa !55 ; 2 uses
  %i.dk = load i64, ptr %i.ck, align 8, !tbaa !39 ; 2 uses
  %i.dl = uitofp i64 %i.dk to double
  %i.dm = call i64 @llvm.umax.i64(i64 %i.dj, i64 1)
  %i.dn = uitofp i64 %i.dm to double
  %i.do = fdiv double %i.dl, %i.dn
  %i.dp = fmul double %i.do, 1.000000e+02
  %i.dq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.di, ptr noundef nonnull @.str.46, i64 noundef %i.dj, i64 noundef %i.dk, double noundef %i.dp) #27 ; 0 uses
  %i.dr = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  %i.ds = icmp sgt i32 %i.dr, 3
  br i1 %i.ds, label %bb.ai, label %.thread57

bb.ai:                                            ; preds = %bb.ah
  %i.dt = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.du = call i32 @fflush(ptr noundef %i.dt)     ; 0 uses
  br label %.thread57

.thread57:                                        ; preds = %bb.ad, %bb.ah, %bb.ai, %bb.ag
  %i.dv = load i64, ptr %i.co, align 8, !tbaa !55
  store i64 %i.dv, ptr %0, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %.val.pre = load ptr, ptr %i.k, align 8, !tbaa !37
  br label %bb.aj

bb.aj:                                            ; preds = %bb.b, %bb.a, %.thread57
  %.val = phi ptr [ %.val.pre, %.thread57 ], [ %i.j, %bb.a ], [ %i.j, %bb.b ]
  %.029 = phi i32 [ 0, %.thread57 ], [ 1, %bb.a ], [ 1, %bb.b ]
  %.0 = phi ptr [ %i.n, %.thread57 ], [ null, %bb.a ], [ null, %bb.b ] ; 2 uses
  call void @free(ptr noundef %.val) #25
  call void @TPool_free(ptr noundef %i.h) #25
  call void @TPool_free(ptr noundef %i.g) #25
  br i1 %i.m, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dw = call i32 @fclose(ptr noundef nonnull %i.d) ; 0 uses
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.not42 = icmp eq ptr %.0, null
  br i1 %.not42, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dx = icmp eq ptr %2, null
  br i1 %i.dx, label %LZ4IO_isStdout.exit.thread, label %LZ4IO_isStdout.exit

LZ4IO_isStdout.exit:                              ; preds = %bb.am
  %i.dy = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %2, ptr noundef nonnull dereferenceable(7) @.str.3) #31
  %.not.i.i.not = icmp eq i32 %i.dy, 0
  br i1 %.not.i.i.not, label %bb.an, label %LZ4IO_isStdout.exit.thread

LZ4IO_isStdout.exit.thread:                       ; preds = %bb.am, %LZ4IO_isStdout.exit
  %i.dz = call i32 @fclose(ptr noundef nonnull %.0) ; 0 uses
  br label %bb.an

bb.an:                                            ; preds = %LZ4IO_isStdout.exit.thread, %LZ4IO_isStdout.exit, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  ret i32 %.029
}

; Function Attrs: nounwind uwtable
define dso_local i32 @LZ4IO_compressMultipleFilenames_Legacy(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #11 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = tail call i64 @TIME_getTime() #25
  %i.c = tail call i64 @clock() #25
  %i.d = sitofp i64 %i.c to double
  %i.e = fdiv nnan double %i.d, 1.000000e+06
  %i.f = tail call noalias dereferenceable_or_null(30) ptr @malloc(i64 noundef 30) #26 ; 3 uses
  %i.g = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #31
  %i.h = icmp eq ptr %i.f, null
  br i1 %i.h, label %bb.j, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.i = icmp sgt i32 %1, 0
  br i1 %i.i, label %LZ4IO_isStdout.exit.lr.ph, label %._crit_edge

LZ4IO_isStdout.exit.lr.ph:                        ; preds = %.preheader
  %i.j = add i64 %i.g, 1
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %LZ4IO_isStdout.exit

LZ4IO_isStdout.exit:                              ; preds = %LZ4IO_isStdout.exit.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 0, %LZ4IO_isStdout.exit.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %.04076 = phi i64 [ 30, %LZ4IO_isStdout.exit.lr.ph ], [ %.2.ph, %bb.g ] ; 3 uses
  %.04175 = phi ptr [ %i.f, %LZ4IO_isStdout.exit.lr.ph ], [ %.243.ph, %bb.g ] ; 3 uses
  %.04474 = phi i32 [ 0, %LZ4IO_isStdout.exit.lr.ph ], [ %.145.ph, %bb.g ]
  %.04772 = phi i64 [ 0, %LZ4IO_isStdout.exit.lr.ph ], [ %.148.ph, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 0, ptr %i.a, align 8, !tbaa !35
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !56   ; 3 uses
  %i.m = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.l) #31 ; 2 uses
  %i.n = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %2, ptr noundef nonnull dereferenceable(7) @.str.3) #31
  %.not.i.i.not = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %LZ4IO_isStdout.exit
  %i.o = call fastcc i32 @LZ4IO_compressLegacy_internal(ptr noundef %i.a, ptr noundef nonnull %i.l, ptr noundef nonnull @.str.3, i32 noundef %3, ptr noundef %4)
  br label %bb.g

bb.c:                                             ; preds = %LZ4IO_isStdout.exit
  %i.p = add i64 %i.j, %i.m
  %.not56 = icmp ugt i64 %.04076, %i.p
  br i1 %.not56, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef %.04175) #25
  %i.q = add i64 %i.m, 20                         ; 2 uses
  %i.r = tail call noalias ptr @malloc(i64 noundef %i.q) #26 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.f, label %._crit_edge80

._crit_edge80:                                    ; preds = %bb.d
  %.pre = load ptr, ptr %i.k, align 8, !tbaa !56
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge80, %bb.c
  %i.t = phi ptr [ %.pre, %._crit_edge80 ], [ %i.l, %bb.c ]
  %.142 = phi ptr [ %i.r, %._crit_edge80 ], [ %.04175, %bb.c ] ; 4 uses
  %.1 = phi i64 [ %i.q, %._crit_edge80 ], [ %.04076, %bb.c ]
  %i.u = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %.142, ptr noundef nonnull dereferenceable(1) %i.t) #25 ; 0 uses
  %i.v = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %.142, ptr noundef nonnull dereferenceable(1) %2) #25 ; 0 uses
  %i.w = load ptr, ptr %i.k, align 8, !tbaa !56
  %i.x = call fastcc i32 @LZ4IO_compressLegacy_internal(ptr noundef %i.a, ptr noundef %i.w, ptr noundef nonnull %.142, i32 noundef %3, ptr noundef %4)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.j

bb.g:                                             ; preds = %bb.b, %bb.e
  %.pn68 = phi i32 [ %i.x, %bb.e ], [ %i.o, %bb.b ]
  %.243.ph = phi ptr [ %.142, %bb.e ], [ %.04175, %bb.b ] ; 2 uses
  %.2.ph = phi i64 [ %.1, %bb.e ], [ %.04076, %bb.b ]
  %.145.ph = add nuw nsw i32 %.pn68, %.04474      ; 2 uses
  %.pn = load i64, ptr %i.a, align 8, !tbaa !35
  %.148.ph = add i64 %.pn, %.04772                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %LZ4IO_isStdout.exit, !llvm.loop !117

._crit_edge.loopexit:                             ; preds = %bb.g
  %i.y = uitofp i64 %.148.ph to double
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.047.lcssa = phi double [ 0.000000e+00, %.preheader ], [ %i.y, %._crit_edge.loopexit ]
  %.044.lcssa = phi i32 [ 0, %.preheader ], [ %.145.ph, %._crit_edge.loopexit ]
  %.041.lcssa = phi ptr [ %i.f, %.preheader ], [ %.243.ph, %._crit_edge.loopexit ]
  %i.z = tail call i64 @TIME_clockSpan_ns(i64 %i.b) #25
  %i.aa = tail call i64 @clock() #25
  %i.ab = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  %i.ac = icmp sgt i32 %i.ab, 2
  br i1 %i.ac, label %bb.h, label %LZ4IO_finalTimeDisplay.exit

bb.h:                                             ; preds = %._crit_edge
  %5 = sitofp i64 %i.aa to double
  %i.ad = tail call i64 @llvm.umax.i64(i64 %i.z, i64 1)
  %i.ae = uitofp i64 %i.ad to double
  %i.af = insertelement <2 x double> poison, double %5, i64 0
  %i.ag = insertelement <2 x double> %i.af, double %i.ae, i64 1
  %i.ah = fdiv <2 x double> %i.ag, <double 1.000000e+06, double 1.000000e+09> ; 3 uses
  %i.ai = extractelement <2 x double> %i.ah, i64 0
  %i.aj = fsub double %i.ai, %i.e
  %i.ak = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.al = extractelement <2 x double> %i.ah, i64 1
  %i.am = insertelement <2 x double> poison, double %.047.lcssa, i64 0
  %i.an = insertelement <2 x double> %i.am, double %i.aj, i64 1
  %i.ao = shufflevector <2 x double> %i.ah, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ap = fdiv <2 x double> %i.an, %i.ao
  %i.aq = fmul <2 x double> %i.ap, <double f0x3F50000000000000, double 1.000000e+02> ; 2 uses
  %i.ar = extractelement <2 x double> %i.aq, i64 0
  %i.as = fmul double %i.ar, f0x3F50000000000000
  %i.at = extractelement <2 x double> %i.aq, i64 1
  %i.au = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ak, ptr noundef nonnull @.str.49, double noundef %i.al, double noundef %i.as, double noundef %i.at) #27 ; 0 uses
  %i.av = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  %i.aw = icmp sgt i32 %i.av, 3
  br i1 %i.aw, label %bb.i, label %LZ4IO_finalTimeDisplay.exit

bb.i:                                             ; preds = %bb.h
  %i.ax = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.ay = tail call i32 @fflush(ptr noundef %i.ax) ; 0 uses
  br label %LZ4IO_finalTimeDisplay.exit

LZ4IO_finalTimeDisplay.exit:                      ; preds = %._crit_edge, %bb.h, %bb.i
  tail call void @free(ptr noundef %.041.lcssa) #25
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %bb.a, %LZ4IO_finalTimeDisplay.exit
  %.251 = phi i32 [ %.044.lcssa, %LZ4IO_finalTimeDisplay.exit ], [ %1, %bb.f ], [ %1, %bb.a ]
  ret i32 %.251
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #14

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias noundef readonly captures(none)) local_unnamed_addr #14

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @LZ4IO_compressFilename_extRess_MT(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #11 {
bb.a:
  %6 = alloca %struct.stat, align 8               ; 5 uses
  %7 = alloca %struct.LZ4F_preferences_t, align 8 ; 11 uses
  %8 = alloca %struct.WriteRegister, align 8      ; 9 uses
  %9 = alloca %struct.LZ4IO_CfcParameters, align 8 ; 6 uses
  %10 = alloca %struct.ReadTracker, align 8       ; 16 uses
  %11 = alloca %struct.CompressJobDesc, align 8   ; 14 uses
  %12 = alloca %struct.stat, align 8              ; 5 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !62     ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !63   ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !64   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !65   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.h = tail call fastcc ptr @LZ4IO_openSrcFile(ptr noundef %2) ; 7 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.dv, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = tail call fastcc ptr @LZ4IO_openDstFile(ptr noundef %3, ptr noundef %5) ; 7 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = tail call i32 @fclose(ptr noundef nonnull %i.h) ; 0 uses
  br label %bb.dv

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(56) %i.m, i64 56, i1 false), !tbaa.struct !67
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i32 %4, ptr %i.n, align 8, !tbaa !68
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.p = load i32, ptr %i.o, align 8, !tbaa !19
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.q = tail call i32 @fileno(ptr noundef nonnull %i.h) #25 ; 2 uses
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @perror(ptr noundef nonnull @.str.61) #28
  tail call void @exit(i32 noundef 1) #29
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.s = call i32 @fstat(i32 noundef %i.q, ptr noundef nonnull %6) #25
  %.not.i = icmp eq i32 %i.s, 0
  br i1 %.not.i, label %bb.h, label %UTIL_getOpenFileSize.exit

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.u = load i32, ptr %i.t, align 8, !tbaa !71
  %i.v = and i32 %i.u, 61440
  %i.w = icmp eq i32 %i.v, 32768
  br i1 %i.w, label %bb.i, label %UTIL_getOpenFileSize.exit

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.y = load i64, ptr %i.x, align 8, !tbaa !72
  br label %UTIL_getOpenFileSize.exit

UTIL_getOpenFileSize.exit:                        ; preds = %bb.g, %bb.h, %bb.i
  %.0.i = phi i64 [ %i.y, %bb.i ], [ 0, %bb.h ], [ 0, %bb.g ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 %.0.i, ptr %i.z, align 8, !tbaa !73
  %i.aa = icmp eq i64 %.0.i, 0
  %i.ab = load i32, ptr @g_displayLevel, align 4
  %i.ac = icmp sgt i32 %i.ab, 2
  %or.cond3 = select i1 %i.aa, i1 %i.ac, i1 false
  br i1 %or.cond3, label %bb.j, label %bb.l

bb.j:                                             ; preds = %UTIL_getOpenFileSize.exit
  %i.ad = load ptr, ptr @stderr, align 8, !tbaa !14
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.4, i64 47, i64 1, ptr %i.ad) #28 ; 0 uses
  %i.ae = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  %i.af = icmp sgt i32 %i.ae, 3
  br i1 %i.af, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ag = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.ah = tail call i32 @fflush(ptr noundef %i.ag) ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %UTIL_getOpenFileSize.exit, %bb.j, %bb.k, %bb.d
  %i.ai = tail call i64 @fread(ptr noundef %i.a, i64 noundef 1, i64 noundef 4194304, ptr noundef nonnull %i.h) ; 9 uses
  %i.aj = tail call i32 @ferror(ptr noundef nonnull %i.h) #25
  %.not131 = icmp eq i32 %i.aj, 0
  br i1 %.not131, label %bb.u, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  %i.al = icmp sgt i32 %i.ak, 0
  br i1 %i.al, label %bb.n, label %.thread175

bb.n:                                             ; preds = %bb.m
  %i.am = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.an = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.am, ptr noundef nonnull @.str, i32 noundef 40) #27 ; 0 uses
  %i.ao = load i32, ptr @g_displayLevel, align 4, !tbaa !11 ; 2 uses
  %i.ap = icmp sgt i32 %i.ao, 3
  br i1 %i.ap, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.aq = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.ar = tail call i32 @fflush(ptr noundef %i.aq) ; 0 uses
  %.pr = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.as = phi i32 [ %i.ao, %bb.n ], [ %.pr, %bb.o ]
  %i.at = icmp sgt i32 %i.as, 0
  br i1 %i.at, label %bb.q, label %.thread175

bb.q:                                             ; preds = %bb.p
  %i.au = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.av = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.au, ptr noundef nonnull @.str.5, i32 noundef 4194304, ptr noundef %2) #27 ; 0 uses
  %i.aw = load i32, ptr @g_displayLevel, align 4, !tbaa !11 ; 2 uses
  %i.ax = icmp sgt i32 %i.aw, 3
  br i1 %i.ax, label %bb.r, label %thread-pre-split

bb.r:                                             ; preds = %bb.q
  %i.ay = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.az = tail call i32 @fflush(ptr noundef %i.ay) ; 0 uses
  %.pr174.pre = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.r, %bb.q
  %i.ba = phi i32 [ %i.aw, %bb.q ], [ %.pr174.pre, %bb.r ]
  %i.bb = icmp sgt i32 %i.ba, 0
  br i1 %i.bb, label %bb.s, label %.thread175

bb.s:                                             ; preds = %thread-pre-split
  %i.bc = load ptr, ptr @stderr, align 8, !tbaa !14
  %fwrite163 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 2, i64 1, ptr %i.bc) #28 ; 0 uses
  %i.bd = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  %i.be = icmp sgt i32 %i.bd, 3
  br i1 %i.be, label %bb.t, label %.thread175

bb.t:                                             ; preds = %bb.s
  %i.bf = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.bg = tail call i32 @fflush(ptr noundef %i.bf) ; 0 uses
  br label %.thread175

.thread175:                                       ; preds = %bb.p, %bb.m, %bb.s, %bb.t, %thread-pre-split
  %i.bh = tail call i32 @fflush(ptr noundef null) ; 0 uses
  tail call void @exit(i32 noundef 40) #29
  unreachable

bb.u:                                             ; preds = %bb.l
end_hunk_1
begin_hunk_2_@LZ4IO_compressFilename_extRess_ST:bb.a
  br i1 %i.mb, label %LZ4IO_isStdout.exit.thread, label %LZ4IO_isStdout.exit

LZ4IO_isStdout.exit:                              ; preds = %bb.dg
  %i.mc = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %3, ptr noundef nonnull dereferenceable(7) @.str.3) #31
  %.not.i.i.not = icmp eq i32 %i.mc, 0
  br i1 %.not.i.i.not, label %bb.dh, label %LZ4IO_isStdout.exit.thread

LZ4IO_isStdout.exit.thread:                       ; preds = %bb.dg, %LZ4IO_isStdout.exit
  %i.md = call i32 @fclose(ptr noundef nonnull %i.l) ; 0 uses
  br label %bb.dh

bb.dh:                                            ; preds = %LZ4IO_isStdout.exit.thread, %LZ4IO_isStdout.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.me = icmp eq ptr %2, null
  br i1 %i.me, label %LZ4IO_isStdin.exit.thread, label %LZ4IO_isStdin.exit

LZ4IO_isStdin.exit:                               ; preds = %bb.dh
  %i.mf = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %2, ptr noundef nonnull dereferenceable(6) @.str.73) #31
  %.not.i.i161.not = icmp eq i32 %i.mf, 0
  br i1 %.not.i.i161.not, label %UTIL_getFileStat.exit.thread, label %LZ4IO_isStdin.exit.thread

LZ4IO_isStdin.exit.thread:                        ; preds = %bb.dh, %LZ4IO_isStdin.exit
  br i1 %i.mb, label %LZ4IO_isDevNull.exit.thread, label %LZ4IO_isStdout.exit165

LZ4IO_isStdout.exit165:                           ; preds = %LZ4IO_isStdin.exit.thread
  %i.mg = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %3, ptr noundef nonnull dereferenceable(7) @.str.3) #31
  %.not.i.i163.not = icmp eq i32 %i.mg, 0
  br i1 %.not.i.i163.not, label %UTIL_getFileStat.exit.thread, label %LZ4IO_isDevNull.exit

LZ4IO_isDevNull.exit:                             ; preds = %LZ4IO_isStdout.exit165
  %i.mh = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %3, ptr noundef nonnull dereferenceable(10) @.str.74) #31
  %.not.i.i166.not = icmp eq i32 %i.mh, 0
  br i1 %.not.i.i166.not, label %UTIL_getFileStat.exit.thread, label %LZ4IO_isDevNull.exit.thread

LZ4IO_isDevNull.exit.thread:                      ; preds = %LZ4IO_isStdin.exit.thread, %LZ4IO_isDevNull.exit
  %i.mi = call i32 @stat(ptr noundef readonly %2, ptr noundef nonnull %8) #25
  %.not.i168 = icmp eq i32 %i.mi, 0
  br i1 %.not.i168, label %UTIL_getFileStat.exit, label %UTIL_getFileStat.exit.thread

UTIL_getFileStat.exit:                            ; preds = %LZ4IO_isDevNull.exit.thread
  %i.mj = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.mk = load i32, ptr %i.mj, align 8, !tbaa !71
  %i.ml = and i32 %i.mk, 61440
  %.not235 = icmp eq i32 %i.ml, 32768
  br i1 %.not235, label %bb.di, label %UTIL_getFileStat.exit.thread

bb.di:                                            ; preds = %UTIL_getFileStat.exit
  call fastcc void @UTIL_setFileStat(ptr noundef %3, ptr noundef %8)
  br label %UTIL_getFileStat.exit.thread

UTIL_getFileStat.exit.thread:                     ; preds = %LZ4IO_isDevNull.exit.thread, %bb.di, %UTIL_getFileStat.exit, %LZ4IO_isDevNull.exit, %LZ4IO_isStdout.exit165, %LZ4IO_isStdin.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %i.mm = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.mn = load i32, ptr %i.mm, align 8, !tbaa !23
  %.not153 = icmp eq i32 %i.mn, 0
  br i1 %.not153, label %bb.ds, label %bb.dj

bb.dj:                                            ; preds = %UTIL_getFileStat.exit.thread
  %i.mo = call i32 @remove(ptr noundef %2) #25
  %.not154 = icmp eq i32 %i.mo, 0
  br i1 %.not154, label %bb.ds, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.mp = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  %i.mq = icmp sgt i32 %i.mp, 0
  br i1 %i.mq, label %bb.dl, label %.thread232

bb.dl:                                            ; preds = %bb.dk
  %i.mr = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.ms = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.mr, ptr noundef nonnull @.str, i32 noundef 50) #27 ; 0 uses
  %i.mt = load i32, ptr @g_displayLevel, align 4, !tbaa !11 ; 2 uses
  %i.mu = icmp sgt i32 %i.mt, 3
  br i1 %i.mu, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  %i.mv = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.mw = call i32 @fflush(ptr noundef %i.mv)     ; 0 uses
  %.pr228 = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dl, %bb.dm
  %i.mx = phi i32 [ %i.mt, %bb.dl ], [ %.pr228, %bb.dm ]
  %i.my = icmp sgt i32 %i.mx, 0
  br i1 %i.my, label %bb.do, label %.thread232

bb.do:                                            ; preds = %bb.dn
  %i.mz = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.na = tail call ptr @__errno_location() #32
  %i.nb = load i32, ptr %i.na, align 4, !tbaa !11
  %i.nc = call ptr @strerror(i32 noundef %i.nb) #25
  %i.nd = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.mz, ptr noundef nonnull @.str.15, ptr noundef %2, ptr noundef %i.nc) #27 ; 0 uses
  %i.ne = load i32, ptr @g_displayLevel, align 4, !tbaa !11 ; 2 uses
  %i.nf = icmp sgt i32 %i.ne, 3
  br i1 %i.nf, label %bb.dp, label %thread-pre-split230

bb.dp:                                            ; preds = %bb.do
  %i.ng = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.nh = call i32 @fflush(ptr noundef %i.ng)     ; 0 uses
  %.pr231.pre = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  br label %thread-pre-split230

thread-pre-split230:                              ; preds = %bb.dp, %bb.do
  %i.ni = phi i32 [ %i.ne, %bb.do ], [ %.pr231.pre, %bb.dp ]
  %i.nj = icmp sgt i32 %i.ni, 0
  br i1 %i.nj, label %bb.dq, label %.thread232

bb.dq:                                            ; preds = %thread-pre-split230
  %i.nk = load ptr, ptr @stderr, align 8, !tbaa !14
  %fwrite156 = call i64 @fwrite(ptr nonnull @.str.2, i64 2, i64 1, ptr %i.nk) #28 ; 0 uses
  %i.nl = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  %i.nm = icmp sgt i32 %i.nl, 3
  br i1 %i.nm, label %bb.dr, label %.thread232

bb.dr:                                            ; preds = %bb.dq
  %i.nn = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.no = call i32 @fflush(ptr noundef %i.nn)     ; 0 uses
  br label %.thread232

.thread232:                                       ; preds = %bb.dn, %bb.dk, %bb.dq, %bb.dr, %thread-pre-split230
  %i.np = call i32 @fflush(ptr noundef null)      ; 0 uses
  call void @exit(i32 noundef 50) #29
  unreachable

bb.ds:                                            ; preds = %bb.dj, %UTIL_getFileStat.exit.thread
  %i.nq = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  %i.nr = icmp sgt i32 %i.nq, 1
  br i1 %i.nr, label %bb.dt, label %.thread234

bb.dt:                                            ; preds = %bb.ds
  %i.ns = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.nt = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ns, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17) #27 ; 0 uses
  %i.nu = load i32, ptr @g_displayLevel, align 4, !tbaa !11 ; 2 uses
  %i.nv = icmp sgt i32 %i.nu, 3
  br i1 %i.nv, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt
  %i.nw = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.nx = call i32 @fflush(ptr noundef %i.nw)     ; 0 uses
  %.pr233 = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  br label %bb.dv

bb.dv:                                            ; preds = %bb.dt, %bb.du
  %i.ny = phi i32 [ %i.nu, %bb.dt ], [ %.pr233, %bb.du ]
  %i.nz = icmp sgt i32 %i.ny, 1
  br i1 %i.nz, label %bb.dw, label %.thread234

bb.dw:                                            ; preds = %bb.dv
  %i.oa = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.ob = uitofp i64 %.1117 to double
  %i.oc = call i64 @llvm.umax.i64(i64 %.1, i64 1)
  %i.od = uitofp i64 %i.oc to double
  %i.oe = fdiv double %i.ob, %i.od
  %i.of = fmul double %i.oe, 1.000000e+02
  %i.og = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.oa, ptr noundef nonnull @.str.18, i64 noundef %.1, i64 noundef %.1117, double noundef %i.of) #27 ; 0 uses
  %i.oh = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  %i.oi = icmp sgt i32 %i.oh, 3
  br i1 %i.oi, label %bb.dx, label %.thread234

bb.dx:                                            ; preds = %bb.dw
  %i.oj = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.ok = call i32 @fflush(ptr noundef %i.oj)     ; 0 uses
  br label %.thread234

.thread234:                                       ; preds = %bb.ds, %bb.dw, %bb.dx, %bb.dv
  store i64 %.1, ptr %0, align 8, !tbaa !35
  br label %bb.dy

bb.dy:                                            ; preds = %bb.a, %.thread234, %bb.c
  %.0 = phi i32 [ 0, %.thread234 ], [ 1, %bb.c ], [ 1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  ret i32 %.0
}

declare i64 @LZ4F_compressBegin_usingCDict(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #12

declare i64 @LZ4F_compressUpdate(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #12

declare i64 @LZ4F_compressEnd(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #12

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @LZ4IO_compressFilename(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #11 {
bb.a:
  %4 = alloca %struct.cRess_t, align 8            ; 5 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = tail call i64 @TIME_getTime() #25
  %i.c = tail call i64 @clock() #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call fastcc void @LZ4IO_createCResources(ptr dead_on_unwind noalias writable align 8 %4, ptr noundef %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.d = call range(i32 0, 2) i32 @LZ4IO_compressFilename_extRess_ST(ptr noundef nonnull %i.a, ptr noundef nonnull readonly %4, ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef readonly %3)
  call fastcc void @LZ4IO_freeCResources(ptr noundef nonnull byval(%struct.cRess_t) align 8 %4)
  %i.e = load i64, ptr %i.a, align 8, !tbaa !35
  %i.f = call i64 @TIME_clockSpan_ns(i64 %i.b) #25
  %i.g = call i64 @clock() #25
  %i.h = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  %i.i = icmp sgt i32 %i.h, 2
  br i1 %i.i, label %bb.b, label %LZ4IO_finalTimeDisplay.exit

bb.b:                                             ; preds = %bb.a
  %i.j = sitofp i64 %i.c to double
  %5 = sitofp i64 %i.g to double
  %i.k = call i64 @llvm.umax.i64(i64 %i.f, i64 1)
  %i.l = uitofp i64 %i.k to double
  %i.m = insertelement <2 x double> poison, double %5, i64 0
  %i.n = insertelement <2 x double> %i.m, double %i.l, i64 1
  %i.o = fdiv <2 x double> %i.n, <double 1.000000e+06, double 1.000000e+09> ; 3 uses
  %i.p = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.q = uitofp i64 %i.e to double
  %i.r = extractelement <2 x double> %i.o, i64 1  ; 2 uses
  %i.s = insertelement <2 x double> poison, double %i.j, i64 0
  %i.t = insertelement <2 x double> %i.s, double %i.q, i64 1
  %i.u = insertelement <2 x double> %i.o, double 1.000000e+06, i64 0
  %i.v = fdiv <2 x double> %i.t, %i.u             ; 2 uses
  %foldExtExtBinop = fsub <2 x double> %i.o, %i.v
  %i.w = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.x = extractelement <2 x double> %i.v, i64 1
  %i.y = fmul double %i.x, f0x3F50000000000000
  %i.z = fmul double %i.y, f0x3F50000000000000
  %i.aa = fdiv double %i.w, %i.r
  %i.ab = fmul double %i.aa, 1.000000e+02
  %i.ac = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.p, ptr noundef nonnull @.str.49, double noundef %i.r, double noundef %i.z, double noundef %i.ab) #27 ; 0 uses
  %i.ad = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  %i.ae = icmp sgt i32 %i.ad, 3
  br i1 %i.ae, label %bb.c, label %LZ4IO_finalTimeDisplay.exit

bb.c:                                             ; preds = %bb.b
  %i.af = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.ag = call i32 @fflush(ptr noundef %i.af)     ; 0 uses
  br label %LZ4IO_finalTimeDisplay.exit

LZ4IO_finalTimeDisplay.exit:                      ; preds = %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret i32 %i.d
}

; Function Attrs: nounwind uwtable
define internal fastcc void @LZ4IO_createCResources(ptr dead_on_unwind noalias nonnull writable align 8 initializes((0, 120)) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #11 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %0, i8 0, i64 120, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 1, ptr %i.c, align 4, !tbaa !127
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !28
  store i32 %i.f, ptr %i.b, align 8, !tbaa !128
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load i32, ptr %i.g, align 8, !tbaa !31
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 %i.h, ptr %i.i, align 4, !tbaa !129
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.k = load <2 x i32>, ptr %i.j, align 4, !tbaa !11
  %i.l = shufflevector <2 x i32> %i.k, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.l, ptr %i.d, align 4, !tbaa !11
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.n = load i32, ptr %i.m, align 8, !tbaa !21
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %i.n, ptr %i.o, align 8, !tbaa !130
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = tail call i64 @LZ4F_createCompressionContext(ptr noundef nonnull %i.p, i32 noundef 100) #25 ; 2 uses
  %i.r = tail call i32 @LZ4F_isError(i64 noundef %i.q) #25
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %bb.c, label %.thread12

bb.c:                                             ; preds = %bb.b
  %i.u = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.v = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.u, ptr noundef nonnull @.str, i32 noundef 30) #27 ; 0 uses
  %i.w = load i32, ptr @g_displayLevel, align 4, !tbaa !11 ; 2 uses
  %i.x = icmp sgt i32 %i.w, 3
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.y = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.z = tail call i32 @fflush(ptr noundef %i.y)  ; 0 uses
  %.pr = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.aa = phi i32 [ %i.w, %bb.c ], [ %.pr, %bb.d ]
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %bb.f, label %.thread12

bb.f:                                             ; preds = %bb.e
  %i.ac = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.ad = tail call ptr @LZ4F_getErrorName(i64 noundef %i.q) #25
  %i.ae = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ac, ptr noundef nonnull @.str.75, ptr noundef %i.ad) #27 ; 0 uses
  %i.af = load i32, ptr @g_displayLevel, align 4, !tbaa !11 ; 2 uses
  %i.ag = icmp sgt i32 %i.af, 3
  br i1 %i.ag, label %bb.g, label %thread-pre-split

bb.g:                                             ; preds = %bb.f
  %i.ah = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.ai = tail call i32 @fflush(ptr noundef %i.ah) ; 0 uses
  %.pr11.pre = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.g, %bb.f
  %i.aj = phi i32 [ %i.af, %bb.f ], [ %.pr11.pre, %bb.g ]
  %i.ak = icmp sgt i32 %i.aj, 0
  br i1 %i.ak, label %bb.h, label %.thread12

bb.h:                                             ; preds = %thread-pre-split
  %i.al = load ptr, ptr @stderr, align 8, !tbaa !14
  %fwrite10 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 2, i64 1, ptr %i.al) #28 ; 0 uses
  %i.am = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  %i.an = icmp sgt i32 %i.am, 3
  br i1 %i.an, label %bb.i, label %.thread12

bb.i:                                             ; preds = %bb.h
  %i.ao = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.ap = tail call i32 @fflush(ptr noundef %i.ao) ; 0 uses
  br label %.thread12

.thread12:                                        ; preds = %bb.e, %bb.b, %bb.h, %bb.i, %thread-pre-split
  %i.aq = tail call i32 @fflush(ptr noundef null) ; 0 uses
  tail call void @exit(i32 noundef 30) #29
  unreachable

bb.j:                                             ; preds = %bb.a
  %i.ar = tail call noalias dereferenceable_or_null(4194304) ptr @malloc(i64 noundef 4194304) #26
  store ptr %i.ar, ptr %0, align 8, !tbaa !62
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 4194304, ptr %i.as, align 8, !tbaa !131
  %i.at = tail call i64 @LZ4F_compressFrameBound(i64 noundef 4194304, ptr noundef nonnull %i.b) #25 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.at, ptr %i.au, align 8, !tbaa !64
  %i.av = tail call noalias ptr @malloc(i64 noundef %i.at) #26 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !63
  %i.ax = load ptr, ptr %0, align 8, !tbaa !62
  %i.ay = icmp ne ptr %i.ax, null
  %i.az = icmp ne ptr %i.av, null
  %or.cond = and i1 %i.az, %i.ay
  br i1 %or.cond, label %bb.s, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ba = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  %i.bb = icmp sgt i32 %i.ba, 0
  br i1 %i.bb, label %bb.l, label %.thread17

bb.l:                                             ; preds = %bb.k
  %i.bc = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.bd = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bc, ptr noundef nonnull @.str, i32 noundef 31) #27 ; 0 uses
  %i.be = load i32, ptr @g_displayLevel, align 4, !tbaa !11 ; 2 uses
  %i.bf = icmp sgt i32 %i.be, 3
  br i1 %i.bf, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bg = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.bh = tail call i32 @fflush(ptr noundef %i.bg) ; 0 uses
  %.pr13 = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.bi = phi i32 [ %i.be, %bb.l ], [ %.pr13, %bb.m ]
  %i.bj = icmp sgt i32 %i.bi, 0
  br i1 %i.bj, label %bb.o, label %.thread17

bb.o:                                             ; preds = %bb.n
  %i.bk = load ptr, ptr @stderr, align 8, !tbaa !14
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.76, i64 41, i64 1, ptr %i.bk) #28 ; 0 uses
  %i.bl = load i32, ptr @g_displayLevel, align 4, !tbaa !11 ; 2 uses
  %i.bm = icmp sgt i32 %i.bl, 3
  br i1 %i.bm, label %bb.p, label %thread-pre-split15

bb.p:                                             ; preds = %bb.o
  %i.bn = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.bo = tail call i32 @fflush(ptr noundef %i.bn) ; 0 uses
  %.pr16.pre = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  br label %thread-pre-split15

thread-pre-split15:                               ; preds = %bb.p, %bb.o
  %i.bp = phi i32 [ %i.bl, %bb.o ], [ %.pr16.pre, %bb.p ]
  %i.bq = icmp sgt i32 %i.bp, 0
  br i1 %i.bq, label %bb.q, label %.thread17

bb.q:                                             ; preds = %thread-pre-split15
  %i.br = load ptr, ptr @stderr, align 8, !tbaa !14
  %fwrite9 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 2, i64 1, ptr %i.br) #28 ; 0 uses
  %i.bs = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  %i.bt = icmp sgt i32 %i.bs, 3
  br i1 %i.bt, label %bb.r, label %.thread17

bb.r:                                             ; preds = %bb.q
  %i.bu = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.bv = tail call i32 @fflush(ptr noundef %i.bu) ; 0 uses
  br label %.thread17

.thread17:                                        ; preds = %bb.n, %bb.k, %bb.q, %bb.r, %thread-pre-split15
  %i.bw = tail call i32 @fflush(ptr noundef null) ; 0 uses
  tail call void @exit(i32 noundef 31) #29
  unreachable

bb.s:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 44
end_hunk_2
begin_hunk_3_@LZ4IO_createCResources:bb.a
LZ4IO_createCDict.exit:                           ; preds = %bb.s, %bb.t
  %.0.i = phi ptr [ %i.cd, %bb.t ], [ null, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %.0.i, ptr %i.ce, align 8, !tbaa !74
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cf, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @LZ4IO_freeCResources(ptr nofree noundef readonly byval(%struct.cRess_t) align 8 captures(none) %0) unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !75
  tail call void @TPool_free(ptr noundef %i.b) #25
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !76
  tail call void @TPool_free(ptr noundef %i.d) #25
  %i.e = load ptr, ptr %0, align 8, !tbaa !62
  tail call void @free(ptr noundef %i.e) #25
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !63
  tail call void @free(ptr noundef %i.g) #25
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !74
  tail call void @LZ4F_freeCDict(ptr noundef %i.i) #25
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !65
  %i.l = tail call i64 @LZ4F_freeCompressionContext(ptr noundef %i.k) #25 ; 2 uses
  %i.m = tail call i32 @LZ4F_isError(i64 noundef %i.l) #25
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %bb.c, label %.thread3

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.q = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.p, ptr noundef nonnull @.str, i32 noundef 35) #27 ; 0 uses
  %i.r = load i32, ptr @g_displayLevel, align 4, !tbaa !11 ; 2 uses
  %i.s = icmp sgt i32 %i.r, 3
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.t = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.u = tail call i32 @fflush(ptr noundef %i.t)  ; 0 uses
  %.pr = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.v = phi i32 [ %i.r, %bb.c ], [ %.pr, %bb.d ]
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %bb.f, label %.thread3

bb.f:                                             ; preds = %bb.e
  %i.x = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.y = tail call ptr @LZ4F_getErrorName(i64 noundef %i.l) #25
  %i.z = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.x, ptr noundef nonnull @.str.82, ptr noundef %i.y) #27 ; 0 uses
  %i.aa = load i32, ptr @g_displayLevel, align 4, !tbaa !11 ; 2 uses
  %i.ab = icmp sgt i32 %i.aa, 3
  br i1 %i.ab, label %bb.g, label %thread-pre-split

bb.g:                                             ; preds = %bb.f
  %i.ac = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.ad = tail call i32 @fflush(ptr noundef %i.ac) ; 0 uses
  %.pr2.pre = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.g, %bb.f
  %i.ae = phi i32 [ %i.aa, %bb.f ], [ %.pr2.pre, %bb.g ]
  %i.af = icmp sgt i32 %i.ae, 0
  br i1 %i.af, label %bb.h, label %.thread3

bb.h:                                             ; preds = %thread-pre-split
  %i.ag = load ptr, ptr @stderr, align 8, !tbaa !14
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.2, i64 2, i64 1, ptr %i.ag) #28 ; 0 uses
  %i.ah = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  %i.ai = icmp sgt i32 %i.ah, 3
  br i1 %i.ai, label %bb.i, label %.thread3

bb.i:                                             ; preds = %bb.h
  %i.aj = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.ak = tail call i32 @fflush(ptr noundef %i.aj) ; 0 uses
  br label %.thread3

.thread3:                                         ; preds = %bb.e, %bb.b, %bb.h, %bb.i, %thread-pre-split
  %i.al = tail call i32 @fflush(ptr noundef null) ; 0 uses
  tail call void @exit(i32 noundef 35) #29
  unreachable

bb.j:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @LZ4IO_compressMultipleFilenames(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #11 {
bb.a:
  %5 = alloca %struct.cRess_t, align 8            ; 7 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = tail call noalias dereferenceable_or_null(30) ptr @malloc(i64 noundef 30) #26 ; 3 uses
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.d = tail call i64 @TIME_getTime() #25
  %i.e = tail call i64 @clock() #25
  %i.f = sitofp i64 %i.e to double
  %i.g = fdiv nnan double %i.f, 1.000000e+06
  %i.h = icmp eq ptr %i.b, null
  br i1 %i.h, label %LZ4IO_finalTimeDisplay.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call fastcc void @LZ4IO_createCResources(ptr dead_on_unwind noalias writable align 8 %5, ptr noundef %4)
  %i.i = icmp sgt i32 %1, 0
  br i1 %i.i, label %LZ4IO_isStdout.exit.lr.ph, label %._crit_edge

LZ4IO_isStdout.exit.lr.ph:                        ; preds = %bb.b
  %i.j = add i64 %i.c, 1
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %LZ4IO_isStdout.exit

LZ4IO_isStdout.exit:                              ; preds = %LZ4IO_isStdout.exit.lr.ph, %bb.h
  %indvars.iv = phi i64 [ 0, %LZ4IO_isStdout.exit.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 2 uses
  %.04177 = phi i64 [ 0, %LZ4IO_isStdout.exit.lr.ph ], [ %.1.ph, %bb.h ]
  %.04276 = phi i64 [ 30, %LZ4IO_isStdout.exit.lr.ph ], [ %.2.ph, %bb.h ] ; 3 uses
  %.04475 = phi ptr [ %i.b, %LZ4IO_isStdout.exit.lr.ph ], [ %.246.ph, %bb.h ] ; 3 uses
  %.04774 = phi i32 [ 0, %LZ4IO_isStdout.exit.lr.ph ], [ %.148.ph, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !56   ; 3 uses
  %i.m = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.l) #31 ; 2 uses
  %i.n = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %2, ptr noundef nonnull dereferenceable(7) @.str.3) #31
  %.not.i.i.not = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %LZ4IO_isStdout.exit
  %i.o = call range(i32 0, 2) i32 @LZ4IO_compressFilename_extRess_ST(ptr noundef nonnull %i.a, ptr noundef nonnull readonly %5, ptr noundef nonnull %i.l, ptr noundef nonnull @.str.3, i32 noundef %3, ptr noundef readonly %4)
  br label %bb.h

bb.d:                                             ; preds = %LZ4IO_isStdout.exit
  %i.p = add i64 %i.j, %i.m
  %.not57 = icmp ugt i64 %.04276, %i.p
  br i1 %.not57, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @free(ptr noundef %.04475) #25
  %i.q = add i64 %i.m, 20                         ; 2 uses
  %i.r = call noalias ptr @malloc(i64 noundef %i.q) #26 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.g, label %._crit_edge81

._crit_edge81:                                    ; preds = %bb.e
  %.pre = load ptr, ptr %i.k, align 8, !tbaa !56
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge81, %bb.d
  %i.t = phi ptr [ %.pre, %._crit_edge81 ], [ %i.l, %bb.d ]
  %.145 = phi ptr [ %i.r, %._crit_edge81 ], [ %.04475, %bb.d ] ; 4 uses
  %.143 = phi i64 [ %i.q, %._crit_edge81 ], [ %.04276, %bb.d ]
  %i.u = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %.145, ptr noundef nonnull dereferenceable(1) %i.t) #25 ; 0 uses
  %i.v = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %.145, ptr noundef nonnull dereferenceable(1) %2) #25 ; 0 uses
  %i.w = load ptr, ptr %i.k, align 8, !tbaa !56
  %i.x = call range(i32 0, 2) i32 @LZ4IO_compressFilename_extRess_ST(ptr noundef nonnull %i.a, ptr noundef nonnull readonly %5, ptr noundef %i.w, ptr noundef nonnull %.145, i32 noundef %3, ptr noundef readonly %4)
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  call fastcc void @LZ4IO_freeCResources(ptr noundef nonnull byval(%struct.cRess_t) align 8 %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %LZ4IO_finalTimeDisplay.exit

bb.h:                                             ; preds = %bb.c, %bb.f
  %.pn = phi i32 [ %i.x, %bb.f ], [ %i.o, %bb.c ]
  %.246.ph = phi ptr [ %.145, %bb.f ], [ %.04475, %bb.c ] ; 2 uses
  %.2.ph = phi i64 [ %.143, %bb.f ], [ %.04276, %bb.c ]
  %.pn69 = load i64, ptr %i.a, align 8, !tbaa !35
  %.1.ph = add i64 %.pn69, %.04177                ; 2 uses
  %.148.ph = add nuw nsw i32 %.pn, %.04774        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %LZ4IO_isStdout.exit, !llvm.loop !132

._crit_edge.loopexit:                             ; preds = %bb.h
  %i.y = uitofp i64 %.1.ph to double
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %.047.lcssa = phi i32 [ 0, %bb.b ], [ %.148.ph, %._crit_edge.loopexit ] ; 3 uses
  %.044.lcssa = phi ptr [ %i.b, %bb.b ], [ %.246.ph, %._crit_edge.loopexit ]
  %.041.lcssa = phi double [ 0.000000e+00, %bb.b ], [ %i.y, %._crit_edge.loopexit ]
  call fastcc void @LZ4IO_freeCResources(ptr noundef nonnull byval(%struct.cRess_t) align 8 %5)
  call void @free(ptr noundef %.044.lcssa) #25
  %i.z = call i64 @TIME_clockSpan_ns(i64 %i.d) #25
  %i.aa = call i64 @clock() #25
  %i.ab = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  %i.ac = icmp sgt i32 %i.ab, 2
  br i1 %i.ac, label %bb.i, label %LZ4IO_finalTimeDisplay.exit

bb.i:                                             ; preds = %._crit_edge
  %6 = sitofp i64 %i.aa to double
  %i.ad = call i64 @llvm.umax.i64(i64 %i.z, i64 1)
  %i.ae = uitofp i64 %i.ad to double
  %i.af = insertelement <2 x double> poison, double %6, i64 0
  %i.ag = insertelement <2 x double> %i.af, double %i.ae, i64 1
  %i.ah = fdiv <2 x double> %i.ag, <double 1.000000e+06, double 1.000000e+09> ; 3 uses
  %i.ai = extractelement <2 x double> %i.ah, i64 0
  %i.aj = fsub double %i.ai, %i.g
  %i.ak = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.al = extractelement <2 x double> %i.ah, i64 1
  %i.am = insertelement <2 x double> poison, double %.041.lcssa, i64 0
  %i.an = insertelement <2 x double> %i.am, double %i.aj, i64 1
  %i.ao = shufflevector <2 x double> %i.ah, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ap = fdiv <2 x double> %i.an, %i.ao
  %i.aq = fmul <2 x double> %i.ap, <double f0x3F50000000000000, double 1.000000e+02> ; 2 uses
  %i.ar = extractelement <2 x double> %i.aq, i64 0
  %i.as = fmul double %i.ar, f0x3F50000000000000
  %i.at = extractelement <2 x double> %i.aq, i64 1
  %i.au = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ak, ptr noundef nonnull @.str.49, double noundef %i.al, double noundef %i.as, double noundef %i.at) #27 ; 0 uses
  %i.av = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  %i.aw = icmp sgt i32 %i.av, 3
  br i1 %i.aw, label %bb.j, label %LZ4IO_finalTimeDisplay.exit

bb.j:                                             ; preds = %bb.i
  %i.ax = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.ay = call i32 @fflush(ptr noundef %i.ax)     ; 0 uses
  br label %LZ4IO_finalTimeDisplay.exit

LZ4IO_finalTimeDisplay.exit:                      ; preds = %bb.j, %bb.i, %._crit_edge, %bb.g, %bb.a
  %.252 = phi i32 [ %1, %bb.a ], [ %1, %bb.g ], [ %.047.lcssa, %._crit_edge ], [ %.047.lcssa, %bb.i ], [ %.047.lcssa, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  ret i32 %.252
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @LZ4IO_decompressFilename(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #11 {
bb.a:
  %3 = alloca %struct.dRess_t, align 8            ; 5 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call fastcc void @LZ4IO_createDResources(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef %2)
  %i.b = call i64 @TIME_getTime() #25
  %i.c = call i64 @clock() #25
  %i.d = sitofp i64 %i.c to double
  %i.e = fdiv nnan double %i.d, 1.000000e+06
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 0, ptr %i.a, align 8, !tbaa !35
  %i.f = call fastcc i32 @LZ4IO_decompressDstFile(ptr noundef %i.a, ptr noundef nonnull byval(%struct.dRess_t) align 8 %3, ptr noundef %0, ptr noundef %1, ptr noundef %2) ; 2 uses
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %LZ4IO_finalTimeDisplay.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.a, align 8, !tbaa !35
  %i.h = call i64 @TIME_clockSpan_ns(i64 %i.b) #25
  %i.i = call i64 @clock() #25
  %i.j = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  %i.k = icmp sgt i32 %i.j, 2
  br i1 %i.k, label %bb.c, label %LZ4IO_finalTimeDisplay.exit

bb.c:                                             ; preds = %bb.b
  %4 = sitofp i64 %i.i to double
  %i.l = call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.m = uitofp i64 %i.l to double
  %i.n = insertelement <2 x double> poison, double %4, i64 0
  %i.o = insertelement <2 x double> %i.n, double %i.m, i64 1
  %i.p = fdiv <2 x double> %i.o, <double 1.000000e+06, double 1.000000e+09> ; 3 uses
  %i.q = extractelement <2 x double> %i.p, i64 0
  %i.r = fsub double %i.q, %i.e
  %i.s = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.t = uitofp i64 %i.g to double
  %i.u = extractelement <2 x double> %i.p, i64 1
  %i.v = insertelement <2 x double> poison, double %i.t, i64 0
  %i.w = insertelement <2 x double> %i.v, double %i.r, i64 1
  %i.x = shufflevector <2 x double> %i.p, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.y = fdiv <2 x double> %i.w, %i.x
  %i.z = fmul <2 x double> %i.y, <double f0x3F50000000000000, double 1.000000e+02> ; 2 uses
  %i.aa = extractelement <2 x double> %i.z, i64 0
  %i.ab = fmul double %i.aa, f0x3F50000000000000
  %i.ac = extractelement <2 x double> %i.z, i64 1
  %i.ad = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.s, ptr noundef nonnull @.str.49, double noundef %i.u, double noundef %i.ab, double noundef %i.ac) #27 ; 0 uses
  %i.ae = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  %i.af = icmp sgt i32 %i.ae, 3
  br i1 %i.af, label %bb.d, label %LZ4IO_finalTimeDisplay.exit

bb.d:                                             ; preds = %bb.c
  %i.ag = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.ah = call i32 @fflush(ptr noundef %i.ag)     ; 0 uses
  br label %LZ4IO_finalTimeDisplay.exit

LZ4IO_finalTimeDisplay.exit:                      ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  call fastcc void @LZ4IO_freeDResources(ptr noundef nonnull byval(%struct.dRess_t) align 8 %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  ret i32 %i.f
}

; Function Attrs: nounwind uwtable
define internal fastcc void @LZ4IO_createDResources(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = tail call i64 @LZ4F_createDecompressionContext(ptr noundef nonnull %i.a, i32 noundef 100) #25 ; 2 uses
  %i.c = tail call i32 @LZ4F_isError(i64 noundef %i.b) #25
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %.thread7

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.g = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.f, ptr noundef nonnull @.str, i32 noundef 60) #27 ; 0 uses
  %i.h = load i32, ptr @g_displayLevel, align 4, !tbaa !11 ; 2 uses
  %i.i = icmp sgt i32 %i.h, 3
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.k = tail call i32 @fflush(ptr noundef %i.j)  ; 0 uses
  %.pr = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.l = phi i32 [ %i.h, %bb.c ], [ %.pr, %bb.d ]
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %bb.f, label %.thread7

bb.f:                                             ; preds = %bb.e
  %i.n = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.o = tail call ptr @LZ4F_getErrorName(i64 noundef %i.b) #25
  %i.p = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.n, ptr noundef nonnull @.str.83, ptr noundef %i.o) #27 ; 0 uses
  %i.q = load i32, ptr @g_displayLevel, align 4, !tbaa !11 ; 2 uses
  %i.r = icmp sgt i32 %i.q, 3
  br i1 %i.r, label %bb.g, label %thread-pre-split

bb.g:                                             ; preds = %bb.f
  %i.s = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.t = tail call i32 @fflush(ptr noundef %i.s)  ; 0 uses
  %.pr6.pre = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.g, %bb.f
  %i.u = phi i32 [ %i.q, %bb.f ], [ %.pr6.pre, %bb.g ]
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %bb.h, label %.thread7

bb.h:                                             ; preds = %thread-pre-split
  %i.w = load ptr, ptr @stderr, align 8, !tbaa !14
  %fwrite5 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 2, i64 1, ptr %i.w) #28 ; 0 uses
  %i.x = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  %i.y = icmp sgt i32 %i.x, 3
  br i1 %i.y, label %bb.i, label %.thread7

bb.i:                                             ; preds = %bb.h
  %i.z = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.aa = tail call i32 @fflush(ptr noundef %i.z) ; 0 uses
  br label %.thread7

.thread7:                                         ; preds = %bb.e, %bb.b, %bb.h, %bb.i, %thread-pre-split
  %i.ab = tail call i32 @fflush(ptr noundef null) ; 0 uses
  tail call void @exit(i32 noundef 60) #29
  unreachable

bb.j:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 65536, ptr %i.ac, align 8, !tbaa !133
  %i.ad = tail call noalias dereferenceable_or_null(65536) ptr @malloc(i64 noundef 65536) #26 ; 2 uses
  store ptr %i.ad, ptr %0, align 8, !tbaa !108
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 65536, ptr %i.ae, align 8, !tbaa !134
  %i.af = tail call noalias dereferenceable_or_null(65536) ptr @malloc(i64 noundef 65536) #26 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !109
  %i.ah = icmp ne ptr %i.ad, null
  %i.ai = icmp ne ptr %i.af, null
  %or.cond = and i1 %i.ah, %i.ai
  br i1 %or.cond, label %bb.s, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  %i.ak = icmp sgt i32 %i.aj, 0
  br i1 %i.ak, label %bb.l, label %.thread12

bb.l:                                             ; preds = %bb.k
  %i.al = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.am = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.al, ptr noundef nonnull @.str, i32 noundef 61) #27 ; 0 uses
  %i.an = load i32, ptr @g_displayLevel, align 4, !tbaa !11 ; 2 uses
  %i.ao = icmp sgt i32 %i.an, 3
  br i1 %i.ao, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ap = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.aq = tail call i32 @fflush(ptr noundef %i.ap) ; 0 uses
  %.pr8 = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.ar = phi i32 [ %i.an, %bb.l ], [ %.pr8, %bb.m ]
  %i.as = icmp sgt i32 %i.ar, 0
  br i1 %i.as, label %bb.o, label %.thread12

bb.o:                                             ; preds = %bb.n
  %i.at = load ptr, ptr @stderr, align 8, !tbaa !14
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.81, i64 36, i64 1, ptr %i.at) #28 ; 0 uses
  %i.au = load i32, ptr @g_displayLevel, align 4, !tbaa !11 ; 2 uses
  %i.av = icmp sgt i32 %i.au, 3
  br i1 %i.av, label %bb.p, label %thread-pre-split10

bb.p:                                             ; preds = %bb.o
  %i.aw = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.ax = tail call i32 @fflush(ptr noundef %i.aw) ; 0 uses
  %.pr11.pre = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  br label %thread-pre-split10

thread-pre-split10:                               ; preds = %bb.p, %bb.o
  %i.ay = phi i32 [ %i.au, %bb.o ], [ %.pr11.pre, %bb.p ]
  %i.az = icmp sgt i32 %i.ay, 0
  br i1 %i.az, label %bb.q, label %.thread12

bb.q:                                             ; preds = %thread-pre-split10
  %i.ba = load ptr, ptr @stderr, align 8, !tbaa !14
  %fwrite4 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 2, i64 1, ptr %i.ba) #28 ; 0 uses
  %i.bb = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  %i.bc = icmp sgt i32 %i.bb, 3
  br i1 %i.bc, label %bb.r, label %.thread12

bb.r:                                             ; preds = %bb.q
  %i.bd = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.be = tail call i32 @fflush(ptr noundef %i.bd) ; 0 uses
  br label %.thread12

.thread12:                                        ; preds = %bb.n, %bb.k, %bb.q, %bb.r, %thread-pre-split10
  %i.bf = tail call i32 @fflush(ptr noundef null) ; 0 uses
  tail call void @exit(i32 noundef 61) #29
  unreachable

bb.s:                                             ; preds = %bb.j
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !20
  %.not.i = icmp eq i32 %i.bh, 0
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  br i1 %.not.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i64 0, ptr %i.bi, align 8, !tbaa !135
  br label %LZ4IO_loadDDict.exit

bb.u:                                             ; preds = %bb.s
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !22
  %i.bl = tail call fastcc ptr @LZ4IO_createDict(ptr noundef %i.bi, ptr noundef %i.bk)
  br label %LZ4IO_loadDDict.exit

LZ4IO_loadDDict.exit:                             ; preds = %bb.t, %bb.u
  %.sink.i = phi ptr [ null, %bb.t ], [ %i.bl, %bb.u ]
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %.sink.i, ptr %i.bm, align 8, !tbaa !110
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %i.bn, align 8, !tbaa !111
  ret void
}

end_hunk_3
begin_hunk_4_@LZ4IO_decompressMultipleFilenames:bb.a

bb.l:                                             ; preds = %bb.k
  %i.an = load ptr, ptr @stderr, align 8, !tbaa !14
  %fwrite = call i64 @fwrite(ptr nonnull @.str.23, i64 47, i64 1, ptr %i.an) #28 ; 0 uses
  %i.ao = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  %i.ap = icmp sgt i32 %i.ao, 3
  br i1 %i.ap, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.aq = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.ar = call i32 @fflush(ptr noundef %i.aq)     ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j
  %i.as = call fastcc ptr @LZ4IO_openDstFile(ptr noundef nonnull @.str.3, ptr noundef nonnull %3)
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.as, ptr %i.at, align 8, !tbaa !111
  %i.au = icmp sgt i32 %1, 0
  br i1 %i.au, label %LZ4IO_isStdout.exit.lr.ph, label %._crit_edge

LZ4IO_isStdout.exit.lr.ph:                        ; preds = %bb.n
  %i.av = sub i64 0, %i.c
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %LZ4IO_isStdout.exit

LZ4IO_isStdout.exit:                              ; preds = %LZ4IO_isStdout.exit.lr.ph, %bb.af
  %indvars.iv = phi i64 [ 0, %LZ4IO_isStdout.exit.lr.ph ], [ %indvars.iv.next, %bb.af ] ; 2 uses
  %.095 = phi i64 [ 30, %LZ4IO_isStdout.exit.lr.ph ], [ %.2, %bb.af ] ; 3 uses
  %.05794 = phi ptr [ %i.b, %LZ4IO_isStdout.exit.lr.ph ], [ %.259, %bb.af ] ; 3 uses
  %.06093 = phi i32 [ 0, %LZ4IO_isStdout.exit.lr.ph ], [ %.161, %bb.af ] ; 3 uses
  %.06292 = phi i32 [ 0, %LZ4IO_isStdout.exit.lr.ph ], [ %.163, %bb.af ] ; 3 uses
  %.06491 = phi i64 [ 0, %LZ4IO_isStdout.exit.lr.ph ], [ %.165, %bb.af ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 0, ptr %i.a, align 8, !tbaa !35
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv ; 4 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !56 ; 3 uses
  %i.ay = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ax) #31 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ay
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 %i.av
  %i.bb = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %2, ptr noundef nonnull dereferenceable(7) @.str.3) #31
  %.not.i.i.not = icmp eq i32 %i.bb, 0
  br i1 %.not.i.i.not, label %bb.o, label %LZ4IO_isDevNull.exit

LZ4IO_isDevNull.exit:                             ; preds = %LZ4IO_isStdout.exit
  %i.bc = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %2, ptr noundef nonnull dereferenceable(10) @.str.74) #31
  %.not.i.i77.not = icmp eq i32 %i.bc, 0
  br i1 %.not.i.i77.not, label %bb.o, label %bb.p

bb.o:                                             ; preds = %LZ4IO_isDevNull.exit, %LZ4IO_isStdout.exit
  %i.bd = call fastcc i32 @LZ4IO_decompressSrcFile(ptr noundef %i.a, ptr noundef nonnull byval(%struct.dRess_t) align 8 %4, ptr noundef nonnull %i.ax, ptr noundef nonnull %3)
  %i.be = add nsw i32 %i.bd, %.06093
  %i.bf = load i64, ptr %i.a, align 8, !tbaa !35
  %i.bg = add i64 %i.bf, %.06491
  br label %bb.af

bb.p:                                             ; preds = %LZ4IO_isDevNull.exit
  %i.bh = sub i64 %i.ay, %i.c                     ; 3 uses
  %i.bi = add i64 %i.bh, 1
  %.not70 = icmp ugt i64 %.095, %i.bi
  br i1 %.not70, label %bb.z, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @free(ptr noundef %.05794) #25
  %i.bj = add i64 %i.ay, 20                       ; 2 uses
  %i.bk = call noalias ptr @malloc(i64 noundef %i.bj) #26 ; 2 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %bb.r, label %bb.z

bb.r:                                             ; preds = %bb.q
  %i.bm = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  %i.bn = icmp sgt i32 %i.bm, 0
  br i1 %i.bn, label %bb.s, label %.thread85

bb.s:                                             ; preds = %bb.r
  %i.bo = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.bp = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bo, ptr noundef nonnull @.str, i32 noundef 71) #27 ; 0 uses
  %i.bq = load i32, ptr @g_displayLevel, align 4, !tbaa !11 ; 2 uses
  %i.br = icmp sgt i32 %i.bq, 3
  br i1 %i.br, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bs = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.bt = call i32 @fflush(ptr noundef %i.bs)     ; 0 uses
  %.pr81 = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %i.bu = phi i32 [ %i.bq, %bb.s ], [ %.pr81, %bb.t ]
  %i.bv = icmp sgt i32 %i.bu, 0
  br i1 %i.bv, label %bb.v, label %.thread85

bb.v:                                             ; preds = %bb.u
  %i.bw = load ptr, ptr @stderr, align 8, !tbaa !14
  %fwrite73 = call i64 @fwrite(ptr nonnull @.str.22, i64 23, i64 1, ptr %i.bw) #28 ; 0 uses
  %i.bx = load i32, ptr @g_displayLevel, align 4, !tbaa !11 ; 2 uses
  %i.by = icmp sgt i32 %i.bx, 3
  br i1 %i.by, label %bb.w, label %thread-pre-split83

bb.w:                                             ; preds = %bb.v
  %i.bz = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.ca = call i32 @fflush(ptr noundef %i.bz)     ; 0 uses
  %.pr84.pre = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  br label %thread-pre-split83

thread-pre-split83:                               ; preds = %bb.w, %bb.v
  %i.cb = phi i32 [ %i.bx, %bb.v ], [ %.pr84.pre, %bb.w ]
  %i.cc = icmp sgt i32 %i.cb, 0
  br i1 %i.cc, label %bb.x, label %.thread85

bb.x:                                             ; preds = %thread-pre-split83
  %i.cd = load ptr, ptr @stderr, align 8, !tbaa !14
  %fwrite74 = call i64 @fwrite(ptr nonnull @.str.2, i64 2, i64 1, ptr %i.cd) #28 ; 0 uses
  %i.ce = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  %i.cf = icmp sgt i32 %i.ce, 3
  br i1 %i.cf, label %bb.y, label %.thread85

bb.y:                                             ; preds = %bb.x
  %i.cg = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.ch = call i32 @fflush(ptr noundef %i.cg)     ; 0 uses
  br label %.thread85

.thread85:                                        ; preds = %bb.u, %bb.r, %bb.x, %bb.y, %thread-pre-split83
  %i.ci = call i32 @fflush(ptr noundef null)      ; 0 uses
  call void @exit(i32 noundef 71) #29
  unreachable

bb.z:                                             ; preds = %bb.q, %bb.p
  %.158 = phi ptr [ %i.bk, %bb.q ], [ %.05794, %bb.p ] ; 5 uses
  %.1 = phi i64 [ %i.bj, %bb.q ], [ %.095, %bb.p ] ; 2 uses
  %.not71 = icmp ugt i64 %i.ay, %i.c
  br i1 %.not71, label %UTIL_sameString.exit, label %bb.aa

UTIL_sameString.exit:                             ; preds = %bb.z
  %i.cj = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.ba, ptr noundef nonnull readonly dereferenceable(1) %2) #31
  %.not.i.not = icmp eq i32 %i.cj, 0
  br i1 %.not.i.not, label %bb.ae, label %bb.aa

bb.aa:                                            ; preds = %UTIL_sameString.exit, %bb.z
  %i.ck = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  %i.cl = icmp sgt i32 %i.ck, 0
  br i1 %i.cl, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.cm = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.cn = load ptr, ptr %i.aw, align 8, !tbaa !56
  %i.co = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cm, ptr noundef nonnull @.str.24, ptr noundef nonnull %2, ptr noundef %i.cn) #27 ; 0 uses
  %i.cp = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  %i.cq = icmp sgt i32 %i.cp, 3
  br i1 %i.cq, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.cr = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.cs = call i32 @fflush(ptr noundef %i.cr)     ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac, %bb.aa
  %i.ct = add nsw i32 %.06292, 1
  br label %bb.af

bb.ae:                                            ; preds = %UTIL_sameString.exit
  %i.cu = load ptr, ptr %i.aw, align 8, !tbaa !56
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.158, ptr align 1 %i.cu, i64 %i.bh, i1 false)
  %i.cv = getelementptr inbounds nuw i8, ptr %.158, i64 %i.bh
  store i8 0, ptr %i.cv, align 1, !tbaa !66
  %i.cw = load ptr, ptr %i.aw, align 8, !tbaa !56
  %i.cx = call fastcc i32 @LZ4IO_decompressDstFile(ptr noundef %i.a, ptr noundef nonnull byval(%struct.dRess_t) align 8 %4, ptr noundef %i.cw, ptr noundef %.158, ptr noundef nonnull %3)
  %i.cy = add nsw i32 %i.cx, %.06093
  %i.cz = load i64, ptr %i.a, align 8, !tbaa !35
  %i.da = add i64 %i.cz, %.06491
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.o
  %.165 = phi i64 [ %i.bg, %bb.o ], [ %.06491, %bb.ad ], [ %i.da, %bb.ae ] ; 2 uses
  %.163 = phi i32 [ %.06292, %bb.o ], [ %i.ct, %bb.ad ], [ %.06292, %bb.ae ] ; 2 uses
  %.161 = phi i32 [ %i.be, %bb.o ], [ %.06093, %bb.ad ], [ %i.cy, %bb.ae ] ; 2 uses
  %.259 = phi ptr [ %.05794, %bb.o ], [ %.158, %bb.ad ], [ %.158, %bb.ae ] ; 2 uses
  %.2 = phi i64 [ %.095, %bb.o ], [ %.1, %bb.ad ], [ %.1, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %LZ4IO_isStdout.exit, !llvm.loop !137

._crit_edge.loopexit:                             ; preds = %bb.af
  %i.db = uitofp i64 %.165 to double
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.n
  %.064.lcssa = phi double [ 0.000000e+00, %bb.n ], [ %i.db, %._crit_edge.loopexit ]
  %.062.lcssa = phi i32 [ 0, %bb.n ], [ %.163, %._crit_edge.loopexit ]
  %.060.lcssa = phi i32 [ 0, %bb.n ], [ %.161, %._crit_edge.loopexit ]
  %.057.lcssa = phi ptr [ %i.b, %bb.n ], [ %.259, %._crit_edge.loopexit ]
  call fastcc void @LZ4IO_freeDResources(ptr noundef nonnull byval(%struct.dRess_t) align 8 %4)
  call void @free(ptr noundef %.057.lcssa) #25
  %i.dc = call i64 @TIME_clockSpan_ns(i64 %i.d) #25
  %i.dd = call i64 @clock() #25
  %i.de = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  %i.df = icmp sgt i32 %i.de, 2
  br i1 %i.df, label %bb.ag, label %LZ4IO_finalTimeDisplay.exit

bb.ag:                                            ; preds = %._crit_edge
  %5 = sitofp i64 %i.dd to double
  %i.dg = call i64 @llvm.umax.i64(i64 %i.dc, i64 1)
  %i.dh = uitofp i64 %i.dg to double
  %i.di = insertelement <2 x double> poison, double %5, i64 0
  %i.dj = insertelement <2 x double> %i.di, double %i.dh, i64 1
  %i.dk = fdiv <2 x double> %i.dj, <double 1.000000e+06, double 1.000000e+09> ; 3 uses
  %i.dl = extractelement <2 x double> %i.dk, i64 0
  %i.dm = fsub double %i.dl, %i.g
  %i.dn = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.do = extractelement <2 x double> %i.dk, i64 1
  %i.dp = insertelement <2 x double> poison, double %.064.lcssa, i64 0
  %i.dq = insertelement <2 x double> %i.dp, double %i.dm, i64 1
  %i.dr = shufflevector <2 x double> %i.dk, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ds = fdiv <2 x double> %i.dq, %i.dr
  %i.dt = fmul <2 x double> %i.ds, <double f0x3F50000000000000, double 1.000000e+02> ; 2 uses
  %i.du = extractelement <2 x double> %i.dt, i64 0
  %i.dv = fmul double %i.du, f0x3F50000000000000
  %i.dw = extractelement <2 x double> %i.dt, i64 1
  %i.dx = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dn, ptr noundef nonnull @.str.49, double noundef %i.do, double noundef %i.dv, double noundef %i.dw) #27 ; 0 uses
  %i.dy = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  %i.dz = icmp sgt i32 %i.dy, 3
  br i1 %i.dz, label %bb.ah, label %LZ4IO_finalTimeDisplay.exit

bb.ah:                                            ; preds = %bb.ag
  %i.ea = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.eb = call i32 @fflush(ptr noundef %i.ea)     ; 0 uses
  br label %LZ4IO_finalTimeDisplay.exit

LZ4IO_finalTimeDisplay.exit:                      ; preds = %._crit_edge, %bb.ag, %bb.ah
  %i.ec = add nsw i32 %.060.lcssa, %.062.lcssa
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret i32 %i.ec
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @LZ4IO_decompressSrcFile(ptr nofree noundef nonnull writeonly captures(none) %0, ptr nofree noundef readonly byval(%struct.dRess_t) align 8 captures(none) %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !111
  %i.c = tail call fastcc ptr @LZ4IO_openSrcFile(ptr noundef %2) ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.q, label %.split

.split:                                           ; preds = %bb.a, %.split23
  %.020 = phi i64 [ %i.f, %.split23 ], [ 0, %bb.a ] ; 3 uses
  %i.e = tail call fastcc i64 @selectDecoder(ptr noundef nonnull byval(%struct.dRess_t) align 8 %1, ptr noundef %i.c, ptr noundef %i.b, ptr noundef %3) ; 2 uses
  switch i64 %i.e, label %.split23 [
    i64 -1, label %.loopexit.loopexit
    i64 -2, label %.loopexit
  ]

.split23:                                         ; preds = %.split
  %i.f = add i64 %.020, %i.e
  br label %.split

.loopexit.loopexit:                               ; preds = %.split
  br label %.loopexit

.loopexit:                                        ; preds = %.split, %.loopexit.loopexit
  %.1.ph = phi i32 [ 0, %.loopexit.loopexit ], [ 1, %.split ]
  %i.g = tail call i32 @fclose(ptr noundef nonnull %i.c) ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.i = load i32, ptr %i.h, align 8, !tbaa !23
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %.loopexit
  %i.j = tail call i32 @remove(ptr noundef %2) #25
  %.not25 = icmp eq i32 %i.j, 0
  br i1 %.not25, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %bb.d, label %.thread8

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.n = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.m, ptr noundef nonnull @.str, i32 noundef 45) #27 ; 0 uses
  %i.o = load i32, ptr @g_displayLevel, align 4, !tbaa !11 ; 2 uses
  %i.p = icmp sgt i32 %i.o, 3
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.r = tail call i32 @fflush(ptr noundef %i.q)  ; 0 uses
  %.pr = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.s = phi i32 [ %i.o, %bb.d ], [ %.pr, %bb.e ]
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %bb.g, label %.thread8

bb.g:                                             ; preds = %bb.f
  %i.u = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.v = tail call ptr @__errno_location() #32
  %i.w = load i32, ptr %i.v, align 4, !tbaa !11
  %i.x = tail call ptr @strerror(i32 noundef %i.w) #25
  %i.y = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.u, ptr noundef nonnull @.str.15, ptr noundef %2, ptr noundef %i.x) #27 ; 0 uses
  %i.z = load i32, ptr @g_displayLevel, align 4, !tbaa !11 ; 2 uses
  %i.aa = icmp sgt i32 %i.z, 3
  br i1 %i.aa, label %bb.h, label %thread-pre-split

bb.h:                                             ; preds = %bb.g
  %i.ab = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.ac = tail call i32 @fflush(ptr noundef %i.ab) ; 0 uses
  %.pr7.pre = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.h, %bb.g
  %i.ad = phi i32 [ %i.z, %bb.g ], [ %.pr7.pre, %bb.h ]
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %bb.i, label %.thread8

bb.i:                                             ; preds = %thread-pre-split
  %i.af = load ptr, ptr @stderr, align 8, !tbaa !14
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.2, i64 2, i64 1, ptr %i.af) #28 ; 0 uses
  %i.ag = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  %i.ah = icmp sgt i32 %i.ag, 3
  br i1 %i.ah, label %bb.j, label %.thread8

bb.j:                                             ; preds = %bb.i
  %i.ai = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.aj = tail call i32 @fflush(ptr noundef %i.ai) ; 0 uses
  br label %.thread8

.thread8:                                         ; preds = %bb.f, %bb.c, %bb.i, %bb.j, %thread-pre-split
  %i.ak = tail call i32 @fflush(ptr noundef null) ; 0 uses
  tail call void @exit(i32 noundef 45) #29
  unreachable

bb.k:                                             ; preds = %bb.b, %.loopexit
  %i.al = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  %i.am = icmp sgt i32 %i.al, 1
  br i1 %i.am, label %bb.l, label %.thread10

bb.l:                                             ; preds = %bb.k
  %i.an = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.ao = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.an, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17) #27 ; 0 uses
  %i.ap = load i32, ptr @g_displayLevel, align 4, !tbaa !11 ; 2 uses
  %i.aq = icmp sgt i32 %i.ap, 3
  br i1 %i.aq, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ar = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.as = tail call i32 @fflush(ptr noundef %i.ar) ; 0 uses
  %.pr9 = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.at = phi i32 [ %i.ap, %bb.l ], [ %.pr9, %bb.m ]
  %i.au = icmp sgt i32 %i.at, 1
  br i1 %i.au, label %bb.o, label %.thread10

bb.o:                                             ; preds = %bb.n
  %i.av = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.aw = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.av, ptr noundef nonnull @.str.84, ptr noundef %2, i64 noundef %.020) #27 ; 0 uses
  %i.ax = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  %i.ay = icmp sgt i32 %i.ax, 3
  br i1 %i.ay, label %bb.p, label %.thread10

bb.p:                                             ; preds = %bb.o
  %i.az = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.ba = tail call i32 @fflush(ptr noundef %i.az) ; 0 uses
  br label %.thread10

.thread10:                                        ; preds = %bb.k, %bb.o, %bb.p, %bb.n
  store i64 %.020, ptr %0, align 8, !tbaa !35
  br label %bb.q

bb.q:                                             ; preds = %bb.a, %.thread10
  %.022 = phi i32 [ %.1.ph, %.thread10 ], [ 1, %bb.a ]
  ret i32 %.022
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef ptr @LZ4IO_blockTypeID(i32 noundef %0, i32 noundef %1, ptr nofree noundef returned writeonly captures(ret: address, provenance) initializes((0, 4)) %2) local_unnamed_addr #8 {
bb.a:
  store i8 66, ptr %2, align 1, !tbaa !66
  %i.a = trunc i32 %0 to i8
  %i.b = add i8 %i.a, 48
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 %i.b, ptr %i.c, align 1, !tbaa !66
  %i.d = icmp eq i32 %1, 1
  %i.e = select i1 %i.d, i8 73, i8 68
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 %i.e, ptr %i.f, align 1, !tbaa !66
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 3
  store i8 0, ptr %i.g, align 1, !tbaa !66
  ret ptr %2
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @LZ4IO_displayCompressedFilesInfo(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #11 {
bb.a:
  %i.a = alloca [16384 x i8], align 16            ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 5 uses
  %i.c = alloca [4 x i8], align 4                 ; 5 uses
  %2 = alloca %struct.stat, align 8               ; 5 uses
  %i.d = alloca [19 x i8], align 16               ; 12 uses
  %3 = alloca %struct.LZ4IO_frameInfo_t, align 8  ; 15 uses
  %i.e = alloca i64, align 8                      ; 9 uses
end_hunk_4
