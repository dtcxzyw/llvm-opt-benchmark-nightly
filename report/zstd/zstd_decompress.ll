Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zstd/original/zstd_decompress?download=true
inline.NumInlined: 232
inline.NumDeleted: 51
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@ZSTD_sizeof_DCtx:bb.a
  %.0 = phi i64 [ %i.k, %bb.b ], [ 0, %bb.a ]
  ret i64 %.0
}

declare i64 @ZSTD_sizeof_DDict(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i64 @ZSTD_estimateDCtxSize() local_unnamed_addr #2 {
bb.a:
  ret i64 95976
}

; Function Attrs: nounwind memory(argmem: write) uwtable
define noundef ptr @ZSTD_initStaticDCtx(ptr noundef %0, i64 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, 7
  %.not = icmp ne i64 %i.b, 0
  %i.c = icmp ult i64 %1, 95976
  %or.cond = or i1 %i.c, %.not
  br i1 %or.cond, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 30168
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 30184
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 29912
  store ptr null, ptr %i.f, align 8, !tbaa !25
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 30204
  store i32 0, ptr %i.g, align 4, !tbaa !26
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 30208
  store i32 0, ptr %i.h, align 8, !tbaa !27
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 30280
  store i64 0, ptr %i.i, align 8, !tbaa !24
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 30236
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 30316
  store i32 0, ptr %i.k, align 4, !tbaa !28
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 95960
  store i64 0, ptr %i.l, align 8, !tbaa !29
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 30176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.j, i8 0, i64 20, i1 false)
  store i32 1, ptr %i.m, align 8, !tbaa !30
  %i.n = tail call i32 asm "cpuid", "={ax},{ax},~{ebx},~{ecx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 0) #16, !srcloc !31 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i, label %ZSTD_initDCtx_internal.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = tail call { i32, i32, i32 } asm "cpuid", "={ax},={cx},={dx},{ax},~{ebx},~{dirflag},~{fpsr},~{flags}"(i32 1) #16, !srcloc !32 ; 0 uses
  %i.p = icmp ugt i32 %i.n, 6
  br i1 %i.p, label %ZSTD_cpuid.exit.i.i, label %ZSTD_initDCtx_internal.exit

ZSTD_cpuid.exit.i.i:                              ; preds = %bb.c
  %i.q = tail call { i32, i32, i32 } asm "cpuid", "={ax},={bx},={cx},{ax},{cx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #16, !srcloc !33
  %i.r = extractvalue { i32, i32, i32 } %i.q, 1   ; 2 uses
  %i.s = and i32 %i.r, 8
  %.not.i.i = icmp eq i32 %i.s, 0
  br i1 %.not.i.i, label %ZSTD_initDCtx_internal.exit, label %bb.d

bb.d:                                             ; preds = %ZSTD_cpuid.exit.i.i
  %i.t = lshr i32 %i.r, 8
  %i.u = and i32 %i.t, 1
  br label %ZSTD_initDCtx_internal.exit

ZSTD_initDCtx_internal.exit:                      ; preds = %bb.b, %bb.c, %ZSTD_cpuid.exit.i.i, %bb.d
  %i.v = phi i32 [ 0, %ZSTD_cpuid.exit.i.i ], [ %i.u, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 30180
  store i32 %i.v, ptr %i.w, align 4, !tbaa !34
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 30216
  store ptr null, ptr %i.x, align 8, !tbaa !35
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 30104
  store i32 0, ptr %i.y, align 8, !tbaa !36
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 30264
  store i64 134217729, ptr %i.z, align 8, !tbaa !37
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 30320
  store i32 0, ptr %i.aa, align 8, !tbaa !38
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 30108
  store i32 0, ptr %i.ab, align 4, !tbaa !39
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 30224
  store i32 0, ptr %i.ac, align 8, !tbaa !40
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 30228
  store i32 0, ptr %i.ad, align 4, !tbaa !41
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 30232
  store i32 0, ptr %i.ae, align 8, !tbaa !42
  store i64 %1, ptr %i.d, align 8, !tbaa !43
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 95976
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 30240
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !44
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %ZSTD_initDCtx_internal.exit
  %.0 = phi ptr [ %0, %ZSTD_initDCtx_internal.exit ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nounwind uwtable
define ptr @ZSTD_createDCtx_advanced(ptr nofree noundef readonly byval(%struct.ZSTD_customMem) align 8 captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %.sroa.0.0.copyload1 = load ptr, ptr %0, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.5.0.copyload3 = load ptr, ptr %.sroa.5.0..sroa_idx2, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.6.0.copyload5 = load ptr, ptr %.sroa.6.0..sroa_idx4, align 8 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.0.0.copyload1, null ; 2 uses
  %.not6.i = icmp eq ptr %.sroa.5.0.copyload3, null
  %i.a = xor i1 %.not.i, %.not6.i
  br i1 %i.a, label %ZSTD_createDCtx_internal.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = tail call ptr %.sroa.0.0.copyload1(ptr noundef %.sroa.6.0.copyload5, i64 noundef 95976) #15, !inline_history !0
  br label %ZSTD_customMalloc.exit.i

bb.d:                                             ; preds = %bb.b
  %i.c = tail call noalias dereferenceable_or_null(95976) ptr @malloc(i64 noundef 95976) #17
  br label %ZSTD_customMalloc.exit.i

ZSTD_customMalloc.exit.i:                         ; preds = %bb.d, %bb.c
  %.0.i.i = phi ptr [ %i.b, %bb.c ], [ %i.c, %bb.d ] ; 24 uses
  %.not7.i = icmp eq ptr %.0.i.i, null
  br i1 %.not7.i, label %ZSTD_createDCtx_internal.exit, label %bb.e

bb.e:                                             ; preds = %ZSTD_customMalloc.exit.i
  %i.d = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 30128
  store ptr %.sroa.0.0.copyload1, ptr %i.d, align 8, !tbaa !45
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 30136
  store ptr %.sroa.5.0.copyload3, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !45
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 30144
  store ptr %.sroa.6.0.copyload5, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !45
  %i.e = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 30168
  store i64 0, ptr %i.e, align 8, !tbaa !43
  %i.f = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 30184
  %i.g = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 29912
  store ptr null, ptr %i.g, align 8, !tbaa !25
  %i.h = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 30204
  store i32 0, ptr %i.h, align 4, !tbaa !26
  %i.i = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 30208
  store i32 0, ptr %i.i, align 8, !tbaa !27
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 30280
  store i64 0, ptr %i.j, align 8, !tbaa !24
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 30236
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 30316
  store i32 0, ptr %i.l, align 4, !tbaa !28
  %i.m = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 95960
  store i64 0, ptr %i.m, align 8, !tbaa !29
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 30176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.k, i8 0, i64 20, i1 false)
  store i32 1, ptr %i.n, align 8, !tbaa !30
  %i.o = tail call i32 asm "cpuid", "={ax},{ax},~{ebx},~{ecx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 0) #16, !srcloc !31 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i.i, label %ZSTD_initDCtx_internal.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = tail call { i32, i32, i32 } asm "cpuid", "={ax},={cx},={dx},{ax},~{ebx},~{dirflag},~{fpsr},~{flags}"(i32 1) #16, !srcloc !32 ; 0 uses
  %i.q = icmp ugt i32 %i.o, 6
  br i1 %i.q, label %ZSTD_cpuid.exit.i.i.i, label %ZSTD_initDCtx_internal.exit.i

ZSTD_cpuid.exit.i.i.i:                            ; preds = %bb.f
  %i.r = tail call { i32, i32, i32 } asm "cpuid", "={ax},={bx},={cx},{ax},{cx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #16, !srcloc !33
  %i.s = extractvalue { i32, i32, i32 } %i.r, 1   ; 2 uses
  %i.t = and i32 %i.s, 8
  %.not.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i, label %ZSTD_initDCtx_internal.exit.i, label %bb.g

bb.g:                                             ; preds = %ZSTD_cpuid.exit.i.i.i
  %i.u = lshr i32 %i.s, 8
  %i.v = and i32 %i.u, 1
  br label %ZSTD_initDCtx_internal.exit.i

ZSTD_initDCtx_internal.exit.i:                    ; preds = %bb.g, %ZSTD_cpuid.exit.i.i.i, %bb.f, %bb.e
  %i.w = phi i32 [ 0, %ZSTD_cpuid.exit.i.i.i ], [ %i.v, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ]
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 30180
  store i32 %i.w, ptr %i.x, align 4, !tbaa !34
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 30216
  store ptr null, ptr %i.y, align 8, !tbaa !35
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 30104
  store i32 0, ptr %i.z, align 8, !tbaa !36
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 30264
  store i64 134217729, ptr %i.aa, align 8, !tbaa !37
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 30320
  store i32 0, ptr %i.ab, align 8, !tbaa !38
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 30108
  store i32 0, ptr %i.ac, align 4, !tbaa !39
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 30224
  store i32 0, ptr %i.ad, align 8, !tbaa !40
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 30228
  store i32 0, ptr %i.ae, align 4, !tbaa !41
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 30232
  store i32 0, ptr %i.af, align 8, !tbaa !42
  br label %ZSTD_createDCtx_internal.exit

ZSTD_createDCtx_internal.exit:                    ; preds = %bb.a, %ZSTD_customMalloc.exit.i, %ZSTD_initDCtx_internal.exit.i
  %.1.i = phi ptr [ null, %bb.a ], [ %.0.i.i, %ZSTD_initDCtx_internal.exit.i ], [ null, %ZSTD_customMalloc.exit.i ]
  ret ptr %.1.i
}

; Function Attrs: nounwind memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable
define noalias noundef ptr @ZSTD_createDCtx() local_unnamed_addr #5 {
ZSTD_customMalloc.exit.i:
  %i.a = tail call noalias dereferenceable_or_null(95976) ptr @malloc(i64 noundef 95976) #17 ; 22 uses
  %.not7.i = icmp eq ptr %i.a, null
  br i1 %.not7.i, label %ZSTD_createDCtx_internal.exit, label %bb.a

bb.a:                                             ; preds = %ZSTD_customMalloc.exit.i
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 30128
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 30168
  store i64 0, ptr %i.c, align 8, !tbaa !43
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 30184
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 29912
  store ptr null, ptr %i.e, align 8, !tbaa !25
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 30204
  store i32 0, ptr %i.f, align 4, !tbaa !26
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 30208
  store i32 0, ptr %i.g, align 8, !tbaa !27
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 30280
  store i64 0, ptr %i.h, align 8, !tbaa !24
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 30236
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 30316
  store i32 0, ptr %i.j, align 4, !tbaa !28
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 95960
  store i64 0, ptr %i.k, align 8, !tbaa !29
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 30176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.i, i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  store i32 1, ptr %i.l, align 8, !tbaa !30
  %i.m = tail call i32 asm "cpuid", "={ax},{ax},~{ebx},~{ecx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 0) #16, !srcloc !31 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i.i.i, label %ZSTD_initDCtx_internal.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = tail call { i32, i32, i32 } asm "cpuid", "={ax},={cx},={dx},{ax},~{ebx},~{dirflag},~{fpsr},~{flags}"(i32 1) #16, !srcloc !32 ; 0 uses
  %i.o = icmp ugt i32 %i.m, 6
  br i1 %i.o, label %ZSTD_cpuid.exit.i.i.i, label %ZSTD_initDCtx_internal.exit.i

ZSTD_cpuid.exit.i.i.i:                            ; preds = %bb.b
  %i.p = tail call { i32, i32, i32 } asm "cpuid", "={ax},={bx},={cx},{ax},{cx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #16, !srcloc !33
  %i.q = extractvalue { i32, i32, i32 } %i.p, 1   ; 2 uses
  %i.r = and i32 %i.q, 8
  %.not.i.i.i = icmp eq i32 %i.r, 0
  br i1 %.not.i.i.i, label %ZSTD_initDCtx_internal.exit.i, label %bb.c

bb.c:                                             ; preds = %ZSTD_cpuid.exit.i.i.i
  %i.s = lshr i32 %i.q, 8
  %i.t = and i32 %i.s, 1
  br label %ZSTD_initDCtx_internal.exit.i

ZSTD_initDCtx_internal.exit.i:                    ; preds = %bb.c, %ZSTD_cpuid.exit.i.i.i, %bb.b, %bb.a
  %i.u = phi i32 [ 0, %ZSTD_cpuid.exit.i.i.i ], [ %i.t, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 30180
  store i32 %i.u, ptr %i.v, align 4, !tbaa !34
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 30216
  store ptr null, ptr %i.w, align 8, !tbaa !35
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 30104
  store i32 0, ptr %i.x, align 8, !tbaa !36
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 30264
  store i64 134217729, ptr %i.y, align 8, !tbaa !37
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 30320
  store i32 0, ptr %i.z, align 8, !tbaa !38
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 30108
  store i32 0, ptr %i.aa, align 4, !tbaa !39
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 30224
  store i32 0, ptr %i.ab, align 8, !tbaa !40
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 30228
  store i32 0, ptr %i.ac, align 4, !tbaa !41
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 30232
  store i32 0, ptr %i.ad, align 8, !tbaa !42
  br label %ZSTD_createDCtx_internal.exit

ZSTD_createDCtx_internal.exit:                    ; preds = %ZSTD_customMalloc.exit.i, %ZSTD_initDCtx_internal.exit.i
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define range(i64 -64, 1) i64 @ZSTD_freeDCtx(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %ZSTD_customFree.exit21, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 30168
  %i.c = load i64, ptr %i.b, align 8, !tbaa !43
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.c, label %ZSTD_customFree.exit21

bb.c:                                             ; preds = %bb.b
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 30136
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !45 ; 7 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 30144
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !45 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 30184 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !22
  %i.f = tail call i64 @ZSTD_freeDDict(ptr noundef %i.e) #15 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 30208
  store i32 0, ptr %i.g, align 8, !tbaa !27
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 30240 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !44   ; 3 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %ZSTD_customFree.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not4.i = icmp eq ptr %.sroa.3.0.copyload, null
  br i1 %.not4.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void %.sroa.3.0.copyload(ptr noundef %.sroa.6.0.copyload, ptr noundef nonnull %i.i) #15, !inline_history !1
  br label %ZSTD_customFree.exit

bb.f:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.i) #15
  br label %ZSTD_customFree.exit

ZSTD_customFree.exit:                             ; preds = %bb.c, %bb.e, %bb.f
  store ptr null, ptr %i.h, align 8, !tbaa !44
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 30216 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !35   ; 4 uses
  %.not12 = icmp eq ptr %i.k, null
  br i1 %.not12, label %bb.k, label %bb.g

bb.g:                                             ; preds = %ZSTD_customFree.exit
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !49   ; 3 uses
  %.not.i18 = icmp eq ptr %i.l, null
  %.not4.i10.i = icmp eq ptr %.sroa.3.0.copyload, null ; 2 uses
  br i1 %.not.i18, label %ZSTD_customFree.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %.not4.i10.i, label %ZSTD_customFree.exit.thread.i, label %ZSTD_customFree.exit.thread2.i

ZSTD_customFree.exit.thread2.i:                   ; preds = %bb.h
  tail call void %.sroa.3.0.copyload(ptr noundef %.sroa.6.0.copyload, ptr noundef nonnull %i.l) #15, !inline_history !106
  br label %bb.i

ZSTD_customFree.exit.thread.i:                    ; preds = %bb.h
  tail call void @free(ptr noundef nonnull %i.l) #15
  br label %bb.j

ZSTD_customFree.exit.i:                           ; preds = %bb.g
  br i1 %.not4.i10.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %ZSTD_customFree.exit.i, %ZSTD_customFree.exit.thread2.i
  tail call void %.sroa.3.0.copyload(ptr noundef %.sroa.6.0.copyload, ptr noundef nonnull %i.k) #15, !inline_history !106
  br label %ZSTD_freeDDictHashSet.exit

bb.j:                                             ; preds = %ZSTD_customFree.exit.i, %ZSTD_customFree.exit.thread.i
  tail call void @free(ptr noundef nonnull %i.k) #15
  br label %ZSTD_freeDDictHashSet.exit

ZSTD_freeDDictHashSet.exit:                       ; preds = %bb.i, %bb.j
  store ptr null, ptr %i.j, align 8, !tbaa !35
  br label %bb.k

bb.k:                                             ; preds = %ZSTD_customFree.exit, %ZSTD_freeDDictHashSet.exit
  %.not4.i20 = icmp eq ptr %.sroa.3.0.copyload, null
  br i1 %.not4.i20, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void %.sroa.3.0.copyload(ptr noundef %.sroa.6.0.copyload, ptr noundef nonnull %0) #15, !inline_history !1
  br label %ZSTD_customFree.exit21

bb.m:                                             ; preds = %bb.k
  tail call void @free(ptr noundef nonnull %0) #15
  br label %ZSTD_customFree.exit21

ZSTD_customFree.exit21:                           ; preds = %bb.m, %bb.l, %bb.b, %bb.a
  %.0 = phi i64 [ -64, %bb.b ], [ 0, %bb.a ], [ 0, %bb.l ], [ 0, %bb.m ]
  ret i64 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @ZSTD_copyDCtx(ptr nofree noundef writeonly captures(none) initializes((0, 30240)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(30240) %0, ptr noundef nonnull align 8 dereferenceable(30240) %1, i64 30240, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 2) i32 @ZSTD_isFrame(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp ult i64 %1, 4
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load i32, ptr %0, align 1, !tbaa !50    ; 2 uses
  %i.b = icmp eq i32 %.val, -47205080
  %i.c = and i32 %.val, -16
  %i.d = icmp eq i32 %i.c, 407710288
  %.0.not.not = or i1 %i.b, %i.d
  %spec.select = zext i1 %.0.not.not to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.1 = phi i32 [ %spec.select, %bb.b ], [ 0, %bb.a ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 2) i32 @ZSTD_isSkippableFrame(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp ult i64 %1, 4
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load i32, ptr %0, align 1, !tbaa !50
  %i.b = and i32 %.val, -16
  %.not = icmp eq i32 %i.b, 407710288
  %spec.select = zext i1 %.not to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.1 = phi i32 [ %spec.select, %bb.b ], [ 0, %bb.a ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i64 @ZSTD_frameHeaderSize(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp ult i64 %1, 5
  br i1 %i.a, label %ZSTD_frameHeaderSize_internal.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 4
  %i.c = load i8, ptr %i.b, align 1, !tbaa !51
  %i.d = zext i8 %i.c to i32                      ; 3 uses
  %i.e = and i32 %i.d, 3
  %i.f = lshr i32 %i.d, 6                         ; 2 uses
  %i.g = and i32 %i.d, 32                         ; 2 uses
  %.not.i = icmp ne i32 %i.g, 0
  %.lobit.i = lshr exact i32 %i.g, 5
  %i.h = xor i32 %.lobit.i, 1
  %i.i = zext nneg i32 %i.h to i64
  %i.j = zext nneg i32 %i.e to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr @ZSTD_did_fieldSize, i64 %i.j
  %i.l = load i64, ptr %i.k, align 8, !tbaa !52
  %i.m = zext nneg i32 %i.f to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr @ZSTD_fcs_fieldSize, i64 %i.m
  %i.o = load i64, ptr %i.n, align 8, !tbaa !52
  %.not15.i = icmp eq i32 %i.f, 0
  %narrow.i = and i1 %.not.i, %.not15.i
  %i.p = zext i1 %narrow.i to i64
  %i.q = add i64 %i.l, 5
  %i.r = add i64 %i.q, %i.o
  %i.s = add i64 %i.r, %i.i
  %i.t = add i64 %i.s, %i.p
  br label %ZSTD_frameHeaderSize_internal.exit

ZSTD_frameHeaderSize_internal.exit:               ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.t, %bb.b ], [ -72, %bb.a ]
  ret i64 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define i64 @ZSTD_getFrameHeader_advanced(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #6 {
bb.a:
  %.sroa.0 = alloca i32, align 4                  ; 9 uses
  %i.a = icmp eq i32 %3, 0
  %i.b = select i1 %i.a, i64 5, i64 1             ; 8 uses
  %i.c = icmp ne i64 %2, 0                        ; 2 uses
  %i.d = icmp eq ptr %1, null
  %or.cond6 = and i1 %i.d, %i.c
  br i1 %or.cond6, label %.critedge121, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ult i64 %2, %i.b
  br i1 %i.e, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.f = icmp ne i32 %3, 1
  %or.cond = and i1 %i.c, %i.f
  br i1 %or.cond, label %bb.d, label %.critedge121

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  store i32 -47205080, ptr %.sroa.0, align 4, !tbaa !50
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0, ptr align 1 %1, i64 %2, i1 false)
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..val130 = load i32, ptr %.sroa.0, align 4, !tbaa !50
  %.not118 = icmp eq i32 %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..val130, -47205080
  br i1 %.not118, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 407710288, ptr %.sroa.0, align 4, !tbaa !50
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0, ptr align 1 %1, i64 %2, i1 false)
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..val129 = load i32, ptr %.sroa.0, align 4, !tbaa !50
  %i.g = and i32 %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..val129, -16
  %.not119 = icmp eq i32 %i.g, 407710288
  br i1 %.not119, label %.critedge, label %bb.f

.critedge:                                        ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  br label %.critedge121

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  br label %.critedge121

bb.g:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  %.not = icmp eq i32 %3, 1
  br i1 %.not, label %ZSTD_frameHeaderSize_internal.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.val128 = load i32, ptr %1, align 1, !tbaa !50 ; 2 uses
  %.not114 = icmp eq i32 %.val128, -47205080
  br i1 %.not114, label %ZSTD_frameHeaderSize_internal.exit139, label %bb.i

ZSTD_frameHeaderSize_internal.exit139:            ; preds = %bb.h
  %i.h = getelementptr i8, ptr %1, i64 %i.b
  %i.i = getelementptr i8, ptr %i.h, i64 -1
  br label %ZSTD_frameHeaderSize_internal.exit

bb.i:                                             ; preds = %bb.h
  %i.j = and i32 %.val128, -16
  %i.k = icmp eq i32 %i.j, 407710288
  br i1 %i.k, label %bb.j, label %.critedge121

bb.j:                                             ; preds = %bb.i
  %i.l = icmp ult i64 %2, 8
  br i1 %i.l, label %.critedge121, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 1, ptr %i.m, align 4, !tbaa !53
  %.val126 = load i32, ptr %1, align 1, !tbaa !50
  %i.n = add i32 %.val126, -407710288
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.n, ptr %i.o, align 4, !tbaa !107
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 8, ptr %i.p, align 8, !tbaa !54
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val125 = load i32, ptr %i.q, align 1, !tbaa !50
  %i.r = zext i32 %.val125 to i64
  store i64 %i.r, ptr %0, align 8, !tbaa !55
  br label %.critedge121

ZSTD_frameHeaderSize_internal.exit:               ; preds = %bb.g, %ZSTD_frameHeaderSize_internal.exit139
  %.sink166.in = phi ptr [ %i.i, %ZSTD_frameHeaderSize_internal.exit139 ], [ %1, %bb.g ]
  %.sink154 = phi i64 [ %i.b, %ZSTD_frameHeaderSize_internal.exit139 ], [ 1, %bb.g ]
  %.sink166 = load i8, ptr %.sink166.in, align 1, !tbaa !51
  %i.s = zext i8 %.sink166 to i32                 ; 3 uses
  %i.t = and i32 %i.s, 3
  %i.u = lshr i32 %i.s, 6                         ; 2 uses
  %i.v = and i32 %i.s, 32                         ; 2 uses
  %.not.i134 = icmp ne i32 %i.v, 0
  %.lobit.i135 = lshr exact i32 %i.v, 5
  %i.w = xor i32 %.lobit.i135, 1
  %i.x = zext nneg i32 %i.w to i64
  %i.y = zext nneg i32 %i.t to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr @ZSTD_did_fieldSize, i64 %i.y
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !52
  %i.ab = zext nneg i32 %i.u to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr @ZSTD_fcs_fieldSize, i64 %i.ab
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !52
  %.not15.i136 = icmp eq i32 %i.u, 0
  %narrow.i137 = and i1 %.not.i134, %.not15.i136
  %i.ae = zext i1 %narrow.i137 to i64
  %i.af = add i64 %i.aa, %.sink154
  %i.ag = add i64 %i.af, %i.ad
  %i.ah = add i64 %i.ag, %i.x
  %i.ai = add i64 %i.ah, %i.ae                    ; 3 uses
  %.not115 = icmp ult i64 %2, %i.ai
  br i1 %.not115, label %.critedge121, label %bb.l

bb.l:                                             ; preds = %ZSTD_frameHeaderSize_internal.exit
  %i.aj = trunc i64 %i.ai to i32
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.aj, ptr %i.ak, align 8, !tbaa !54
  %i.al = getelementptr i8, ptr %1, i64 %i.b      ; 2 uses
  %i.am = getelementptr i8, ptr %i.al, i64 -1
  %i.an = load i8, ptr %i.am, align 1, !tbaa !51
  %i.ao = zext i8 %i.an to i32                    ; 5 uses
  %i.ap = and i32 %i.ao, 3                        ; 2 uses
  %i.aq = lshr i32 %i.ao, 2
  %i.ar = and i32 %i.aq, 1
  %i.as = lshr i32 %i.ao, 6
  %i.at = and i32 %i.ao, 8
  %.not116 = icmp eq i32 %i.at, 0
  br i1 %.not116, label %bb.m, label %.critedge121

bb.m:                                             ; preds = %bb.l
  %i.au = and i32 %i.ao, 32
  %.not117 = icmp eq i32 %i.au, 0                 ; 3 uses
  br i1 %.not117, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.av = load i8, ptr %i.al, align 1, !tbaa !51  ; 2 uses
  %i.aw = icmp ult i8 %i.av, -80
  br i1 %i.aw, label %.thread, label %.critedge121

.thread:                                          ; preds = %bb.n
  %i.ax = add nuw nsw i64 %i.b, 1
  %i.ay = zext i8 %i.av to i32                    ; 2 uses
  %i.az = lshr i32 %i.ay, 3
  %i.ba = add nuw nsw i32 %i.az, 10
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = shl nuw nsw i64 1, %i.bb                ; 2 uses
  %i.bd = lshr i64 %i.bc, 3
  %i.be = and i32 %i.ay, 7
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = mul nuw nsw i64 %i.bd, %i.bf
  %i.bh = add nuw nsw i64 %i.bg, %i.bc
  br label %bb.o

bb.o:                                             ; preds = %.thread, %bb.m
  %.098 = phi i64 [ %i.b, %bb.m ], [ %i.ax, %.thread ] ; 7 uses
  %.1 = phi i64 [ 0, %bb.m ], [ %i.bh, %.thread ]
  switch i32 %i.ap, label %default.unreachable [
    i32 3, label %bb.r
    i32 1, label %bb.p
    i32 2, label %bb.q
    i32 0, label %bb.s
  ]

bb.p:                                             ; preds = %bb.o
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 %.098
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !51
  %i.bk = zext i8 %i.bj to i32
  %i.bl = add nuw nsw i64 %.098, 1
  br label %bb.s

bb.q:                                             ; preds = %bb.o
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 %.098
  %.val132 = load i16, ptr %i.bm, align 1, !tbaa !109
  %i.bn = zext i16 %.val132 to i32
  %i.bo = add nuw nsw i64 %.098, 2
  br label %bb.s

bb.r:                                             ; preds = %bb.o
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 %.098
  %.val124 = load i32, ptr %i.bp, align 1, !tbaa !50
  %i.bq = add nuw nsw i64 %.098, 4
  br label %bb.s

default.unreachable:                              ; preds = %bb.s, %bb.o
  unreachable

bb.s:                                             ; preds = %bb.o, %bb.r, %bb.q, %bb.p
  %.199 = phi i64 [ %.098, %bb.o ], [ %i.bq, %bb.r ], [ %i.bl, %bb.p ], [ %i.bo, %bb.q ] ; 4 uses
  %.096 = phi i32 [ %i.ap, %bb.o ], [ %.val124, %bb.r ], [ %i.bk, %bb.p ], [ %i.bn, %bb.q ]
  switch i32 %i.as, label %default.unreachable [
    i32 3, label %bb.x
    i32 1, label %bb.v
    i32 2, label %bb.w
    i32 0, label %bb.t
  ]

bb.t:                                             ; preds = %bb.s
  br i1 %.not117, label %bb.y, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 %.199
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !51
  %i.bt = zext i8 %i.bs to i64
  br label %bb.y

bb.v:                                             ; preds = %bb.s
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 %.199
  %.val131 = load i16, ptr %i.bu, align 1, !tbaa !109
  %i.bv = zext i16 %.val131 to i64
  %i.bw = add nuw nsw i64 %i.bv, 256
  br label %bb.y

bb.w:                                             ; preds = %bb.s
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 %.199
  %.val = load i32, ptr %i.bx, align 1, !tbaa !50
  %i.by = zext i32 %.val to i64
  br label %bb.y

bb.x:                                             ; preds = %bb.s
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 %.199
  %.val133 = load i64, ptr %i.bz, align 1, !tbaa !52
  br label %bb.y

bb.y:                                             ; preds = %bb.t, %bb.u, %bb.x, %bb.w, %bb.v
  %.0 = phi i64 [ %i.bt, %bb.u ], [ -1, %bb.t ], [ %.val133, %bb.x ], [ %i.bw, %bb.v ], [ %i.by, %bb.w ] ; 2 uses
  %spec.select = select i1 %.not117, i64 %.1, i64 %.0 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.ca, align 4, !tbaa !53
  store i64 %.0, ptr %0, align 8, !tbaa !55
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %spec.select, ptr %i.cb, align 8, !tbaa !56
  %i.cc = tail call i64 @llvm.umin.i64(i64 %spec.select, i64 131072)
  %i.cd = trunc nuw nsw i64 %i.cc to i32
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.cd, ptr %i.ce, align 8, !tbaa !57
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %.096, ptr %i.cf, align 4, !tbaa !107
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.ar, ptr %i.cg, align 8, !tbaa !58
  br label %.critedge121

.critedge121:                                     ; preds = %bb.n, %bb.l, %bb.y, %ZSTD_frameHeaderSize_internal.exit, %bb.i, %bb.j, %bb.c, %.critedge, %bb.f, %bb.a, %bb.k
  %.5 = phi i64 [ %i.ai, %ZSTD_frameHeaderSize_internal.exit ], [ -1, %bb.a ], [ -10, %bb.f ], [ %i.b, %bb.c ], [ 0, %bb.k ], [ 8, %bb.j ], [ -10, %bb.i ], [ %i.b, %.critedge ], [ 0, %bb.y ], [ -16, %bb.n ], [ -14, %bb.l ]
  ret i64 %.5
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define i64 @ZSTD_getFrameHeader(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call i64 @ZSTD_getFrameHeader_advanced(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef 0)
  ret i64 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define i64 @ZSTD_getFrameContentSize(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #6 {
bb.a:
  %2 = alloca %struct.ZSTD_FrameHeader, align 8   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.a = call i64 @ZSTD_getFrameHeader_advanced(ptr noundef nonnull %2, ptr noundef readonly %0, i64 noundef %1, i32 noundef 0)
  %.not = icmp eq i64 %i.a, 0
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.c = load i32, ptr %i.b, align 4
  %i.d = icmp eq i32 %i.c, 1
  %i.e = load i64, ptr %2, align 8
  %spec.select = select i1 %i.d, i64 0, i64 %i.e
  %.0 = select i1 %.not, i64 %spec.select, i64 -2
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i64 -80, 4294967288) i64 @ZSTD_readSkippableFrame(ptr nofree noundef writeonly captures(address_is_null) %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp ult i64 %4, 8
  br i1 %i.a, label %bb.h, label %ZSTD_isSkippableFrame.exit

ZSTD_isSkippableFrame.exit:                       ; preds = %bb.a
  %.val = load i32, ptr %3, align 1, !tbaa !50    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 4
  %.val.i = load i32, ptr %i.b, align 1, !tbaa !50 ; 2 uses
  %i.c = icmp ugt i32 %.val.i, -9
  %i.d = zext i32 %.val.i to i64
  %i.e = add nuw nsw i64 %i.d, 8                  ; 2 uses
  %i.f = icmp ugt i64 %i.e, %4
  %..i = select i1 %i.f, i64 -72, i64 %i.e
  %.1.i = select i1 %i.c, i64 -14, i64 %..i       ; 2 uses
  %i.g = add nsw i64 %.1.i, -8                    ; 5 uses
  %i.h = and i32 %.val, -16
  %.not.i.not = icmp eq i32 %i.h, 407710288
  br i1 %.not.i.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %ZSTD_isSkippableFrame.exit
  %i.i = icmp ugt i64 %.1.i, %4
  br i1 %i.i, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = icmp ugt i64 %i.g, %1
  br i1 %i.j, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = icmp ne i64 %i.g, 0
  %i.l = icmp ne ptr %0, null
  %or.cond = and i1 %i.l, %i.k
  br i1 %or.cond, label %bb.e, label %bb.f
end_hunk_0
begin_hunk_1_@ZSTD_createDStream:ZSTD_customMalloc.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 30264
  store i64 134217729, ptr %i.y, align 8, !tbaa !37
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 30320
  store i32 0, ptr %i.z, align 8, !tbaa !38
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 30108
  store i32 0, ptr %i.aa, align 4, !tbaa !39
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 30224
  store i32 0, ptr %i.ab, align 8, !tbaa !40
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 30228
  store i32 0, ptr %i.ac, align 4, !tbaa !41
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 30232
  store i32 0, ptr %i.ad, align 8, !tbaa !42
  br label %ZSTD_createDCtx_internal.exit

ZSTD_createDCtx_internal.exit:                    ; preds = %ZSTD_customMalloc.exit.i, %ZSTD_initDCtx_internal.exit.i
  ret ptr %i.a
}

; Function Attrs: nounwind memory(argmem: write) uwtable
define noundef ptr @ZSTD_initStaticDStream(ptr noundef %0, i64 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, 7
  %.not.i = icmp ne i64 %i.b, 0
  %i.c = icmp ult i64 %1, 95976
  %or.cond.i = or i1 %i.c, %.not.i
  br i1 %or.cond.i, label %ZSTD_initStaticDCtx.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 30168
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 30184
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 29912
  store ptr null, ptr %i.f, align 8, !tbaa !25
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 30204
  store i32 0, ptr %i.g, align 4, !tbaa !26
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 30208
  store i32 0, ptr %i.h, align 8, !tbaa !27
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 30280
  store i64 0, ptr %i.i, align 8, !tbaa !24
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 30236
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 30316
  store i32 0, ptr %i.k, align 4, !tbaa !28
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 95960
  store i64 0, ptr %i.l, align 8, !tbaa !29
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 30176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.j, i8 0, i64 20, i1 false)
  store i32 1, ptr %i.m, align 8, !tbaa !30
  %i.n = tail call i32 asm "cpuid", "={ax},{ax},~{ebx},~{ecx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 0) #16, !srcloc !31 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i.i, label %ZSTD_initDCtx_internal.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = tail call { i32, i32, i32 } asm "cpuid", "={ax},={cx},={dx},{ax},~{ebx},~{dirflag},~{fpsr},~{flags}"(i32 1) #16, !srcloc !32 ; 0 uses
  %i.p = icmp ugt i32 %i.n, 6
  br i1 %i.p, label %ZSTD_cpuid.exit.i.i.i, label %ZSTD_initDCtx_internal.exit.i

ZSTD_cpuid.exit.i.i.i:                            ; preds = %bb.c
  %i.q = tail call { i32, i32, i32 } asm "cpuid", "={ax},={bx},={cx},{ax},{cx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #16, !srcloc !33
  %i.r = extractvalue { i32, i32, i32 } %i.q, 1   ; 2 uses
  %i.s = and i32 %i.r, 8
  %.not.i.i.i = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i, label %ZSTD_initDCtx_internal.exit.i, label %bb.d

bb.d:                                             ; preds = %ZSTD_cpuid.exit.i.i.i
  %i.t = lshr i32 %i.r, 8
  %i.u = and i32 %i.t, 1
  br label %ZSTD_initDCtx_internal.exit.i

ZSTD_initDCtx_internal.exit.i:                    ; preds = %bb.d, %ZSTD_cpuid.exit.i.i.i, %bb.c, %bb.b
  %i.v = phi i32 [ 0, %ZSTD_cpuid.exit.i.i.i ], [ %i.u, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 30180
  store i32 %i.v, ptr %i.w, align 4, !tbaa !34
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 30216
  store ptr null, ptr %i.x, align 8, !tbaa !35
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 30104
  store i32 0, ptr %i.y, align 8, !tbaa !36
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 30264
  store i64 134217729, ptr %i.z, align 8, !tbaa !37
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 30320
  store i32 0, ptr %i.aa, align 8, !tbaa !38
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 30108
  store i32 0, ptr %i.ab, align 4, !tbaa !39
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 30224
  store i32 0, ptr %i.ac, align 8, !tbaa !40
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 30228
  store i32 0, ptr %i.ad, align 4, !tbaa !41
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 30232
  store i32 0, ptr %i.ae, align 8, !tbaa !42
  store i64 %1, ptr %i.d, align 8, !tbaa !43
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 95976
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 30240
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !44
  br label %ZSTD_initStaticDCtx.exit

ZSTD_initStaticDCtx.exit:                         ; preds = %bb.a, %ZSTD_initDCtx_internal.exit.i
  %.0.i = phi ptr [ %0, %ZSTD_initDCtx_internal.exit.i ], [ null, %bb.a ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define ptr @ZSTD_createDStream_advanced(ptr nofree noundef readonly byval(%struct.ZSTD_customMem) align 8 captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %.sroa.0.0.copyload1 = load ptr, ptr %0, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.5.0.copyload3 = load ptr, ptr %.sroa.5.0..sroa_idx2, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.6.0.copyload5 = load ptr, ptr %.sroa.6.0..sroa_idx4, align 8 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.0.0.copyload1, null ; 2 uses
  %.not6.i = icmp eq ptr %.sroa.5.0.copyload3, null
  %i.a = xor i1 %.not.i, %.not6.i
  br i1 %i.a, label %ZSTD_createDCtx_internal.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = tail call ptr %.sroa.0.0.copyload1(ptr noundef %.sroa.6.0.copyload5, i64 noundef 95976) #15, !inline_history !0
  br label %ZSTD_customMalloc.exit.i

bb.d:                                             ; preds = %bb.b
  %i.c = tail call noalias dereferenceable_or_null(95976) ptr @malloc(i64 noundef 95976) #17
  br label %ZSTD_customMalloc.exit.i

ZSTD_customMalloc.exit.i:                         ; preds = %bb.d, %bb.c
  %.0.i.i = phi ptr [ %i.b, %bb.c ], [ %i.c, %bb.d ] ; 24 uses
  %.not7.i = icmp eq ptr %.0.i.i, null
  br i1 %.not7.i, label %ZSTD_createDCtx_internal.exit, label %bb.e

bb.e:                                             ; preds = %ZSTD_customMalloc.exit.i
  %i.d = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 30128
  store ptr %.sroa.0.0.copyload1, ptr %i.d, align 8, !tbaa !45
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 30136
  store ptr %.sroa.5.0.copyload3, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !45
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 30144
  store ptr %.sroa.6.0.copyload5, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !45
  %i.e = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 30168
  store i64 0, ptr %i.e, align 8, !tbaa !43
  %i.f = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 30184
  %i.g = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 29912
  store ptr null, ptr %i.g, align 8, !tbaa !25
  %i.h = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 30204
  store i32 0, ptr %i.h, align 4, !tbaa !26
  %i.i = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 30208
  store i32 0, ptr %i.i, align 8, !tbaa !27
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 30280
  store i64 0, ptr %i.j, align 8, !tbaa !24
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 30236
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 30316
  store i32 0, ptr %i.l, align 4, !tbaa !28
  %i.m = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 95960
  store i64 0, ptr %i.m, align 8, !tbaa !29
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 30176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.k, i8 0, i64 20, i1 false)
  store i32 1, ptr %i.n, align 8, !tbaa !30
  %i.o = tail call i32 asm "cpuid", "={ax},{ax},~{ebx},~{ecx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 0) #16, !srcloc !31 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i.i, label %ZSTD_initDCtx_internal.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = tail call { i32, i32, i32 } asm "cpuid", "={ax},={cx},={dx},{ax},~{ebx},~{dirflag},~{fpsr},~{flags}"(i32 1) #16, !srcloc !32 ; 0 uses
  %i.q = icmp ugt i32 %i.o, 6
  br i1 %i.q, label %ZSTD_cpuid.exit.i.i.i, label %ZSTD_initDCtx_internal.exit.i

ZSTD_cpuid.exit.i.i.i:                            ; preds = %bb.f
  %i.r = tail call { i32, i32, i32 } asm "cpuid", "={ax},={bx},={cx},{ax},{cx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #16, !srcloc !33
  %i.s = extractvalue { i32, i32, i32 } %i.r, 1   ; 2 uses
  %i.t = and i32 %i.s, 8
  %.not.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i, label %ZSTD_initDCtx_internal.exit.i, label %bb.g

bb.g:                                             ; preds = %ZSTD_cpuid.exit.i.i.i
  %i.u = lshr i32 %i.s, 8
  %i.v = and i32 %i.u, 1
  br label %ZSTD_initDCtx_internal.exit.i

ZSTD_initDCtx_internal.exit.i:                    ; preds = %bb.g, %ZSTD_cpuid.exit.i.i.i, %bb.f, %bb.e
  %i.w = phi i32 [ 0, %ZSTD_cpuid.exit.i.i.i ], [ %i.v, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ]
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 30180
  store i32 %i.w, ptr %i.x, align 4, !tbaa !34
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 30216
  store ptr null, ptr %i.y, align 8, !tbaa !35
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 30104
  store i32 0, ptr %i.z, align 8, !tbaa !36
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 30264
  store i64 134217729, ptr %i.aa, align 8, !tbaa !37
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 30320
  store i32 0, ptr %i.ab, align 8, !tbaa !38
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 30108
  store i32 0, ptr %i.ac, align 4, !tbaa !39
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 30224
  store i32 0, ptr %i.ad, align 8, !tbaa !40
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 30228
  store i32 0, ptr %i.ae, align 4, !tbaa !41
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 30232
  store i32 0, ptr %i.af, align 8, !tbaa !42
  br label %ZSTD_createDCtx_internal.exit

ZSTD_createDCtx_internal.exit:                    ; preds = %bb.a, %ZSTD_customMalloc.exit.i, %ZSTD_initDCtx_internal.exit.i
  %.1.i = phi ptr [ null, %bb.a ], [ %.0.i.i, %ZSTD_initDCtx_internal.exit.i ], [ null, %ZSTD_customMalloc.exit.i ]
  ret ptr %.1.i
}

; Function Attrs: nounwind uwtable
define range(i64 -64, 1) i64 @ZSTD_freeDStream(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @ZSTD_freeDCtx(ptr noundef %0)
  ret i64 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i64 @ZSTD_DStreamInSize() local_unnamed_addr #2 {
bb.a:
  ret i64 131075
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i64 @ZSTD_DStreamOutSize() local_unnamed_addr #2 {
bb.a:
  ret i64 131072
}

; Function Attrs: nounwind uwtable
define range(i64 -64, 1) i64 @ZSTD_DCtx_loadDictionary_advanced(ptr nofree noundef captures(none) %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 30236
  %i.b = load i32, ptr %i.a, align 4, !tbaa !98
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 30184 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !22
  %i.e = tail call i64 @ZSTD_freeDDict(ptr noundef %i.d) #15 ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 30208 ; 2 uses
  store i32 0, ptr %i.f, align 8, !tbaa !27
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  %i.g = icmp ne ptr %1, null
  %i.h = icmp ne i64 %2, 0
  %or.cond = and i1 %i.g, %i.h
  br i1 %or.cond, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 30128
  %i.j = tail call ptr @ZSTD_createDDict_advanced(ptr noundef nonnull %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef nonnull byval(%struct.ZSTD_customMem) align 8 %i.i) #15 ; 3 uses
  store ptr %i.j, ptr %i.c, align 8, !tbaa !22
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 30192
  store ptr %i.j, ptr %i.l, align 8, !tbaa !81
  store i32 -1, ptr %i.f, align 8, !tbaa !27
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %bb.c, %bb.a
  %.0 = phi i64 [ -64, %bb.c ], [ -60, %bb.a ], [ 0, %bb.d ], [ 0, %bb.b ]
  ret i64 %.0
}

declare ptr @ZSTD_createDDict_advanced(ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef byval(%struct.ZSTD_customMem) align 8) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define range(i64 -64, 1) i64 @ZSTD_DCtx_loadDictionary_byReference(ptr nofree noundef captures(none) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 30236
  %i.b = load i32, ptr %i.a, align 4, !tbaa !98
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.b, label %ZSTD_DCtx_loadDictionary_advanced.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 30184 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !22
  %i.e = tail call i64 @ZSTD_freeDDict(ptr noundef %i.d) #15 ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 30208 ; 2 uses
  store i32 0, ptr %i.f, align 8, !tbaa !27
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  %i.g = icmp ne ptr %1, null
  %i.h = icmp ne i64 %2, 0
  %or.cond.i = and i1 %i.g, %i.h
  br i1 %or.cond.i, label %bb.c, label %ZSTD_DCtx_loadDictionary_advanced.exit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 30128
  %i.j = tail call ptr @ZSTD_createDDict_advanced(ptr noundef nonnull %1, i64 noundef %2, i32 noundef 1, i32 noundef 0, ptr noundef nonnull byval(%struct.ZSTD_customMem) align 8 %i.i) #15 ; 3 uses
  store ptr %i.j, ptr %i.c, align 8, !tbaa !22
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %ZSTD_DCtx_loadDictionary_advanced.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 30192
  store ptr %i.j, ptr %i.l, align 8, !tbaa !81
  store i32 -1, ptr %i.f, align 8, !tbaa !27
  br label %ZSTD_DCtx_loadDictionary_advanced.exit

ZSTD_DCtx_loadDictionary_advanced.exit:           ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.0.i = phi i64 [ -64, %bb.c ], [ -60, %bb.a ], [ 0, %bb.d ], [ 0, %bb.b ]
  ret i64 %.0.i
}

; Function Attrs: nounwind uwtable
define range(i64 -64, 1) i64 @ZSTD_DCtx_loadDictionary(ptr nofree noundef captures(none) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 30236
  %i.b = load i32, ptr %i.a, align 4, !tbaa !98
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.b, label %ZSTD_DCtx_loadDictionary_advanced.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 30184 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !22
  %i.e = tail call i64 @ZSTD_freeDDict(ptr noundef %i.d) #15 ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 30208 ; 2 uses
  store i32 0, ptr %i.f, align 8, !tbaa !27
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  %i.g = icmp ne ptr %1, null
  %i.h = icmp ne i64 %2, 0
  %or.cond.i = and i1 %i.g, %i.h
  br i1 %or.cond.i, label %bb.c, label %ZSTD_DCtx_loadDictionary_advanced.exit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 30128
  %i.j = tail call ptr @ZSTD_createDDict_advanced(ptr noundef nonnull %1, i64 noundef %2, i32 noundef 0, i32 noundef 0, ptr noundef nonnull byval(%struct.ZSTD_customMem) align 8 %i.i) #15 ; 3 uses
  store ptr %i.j, ptr %i.c, align 8, !tbaa !22
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %ZSTD_DCtx_loadDictionary_advanced.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 30192
  store ptr %i.j, ptr %i.l, align 8, !tbaa !81
  store i32 -1, ptr %i.f, align 8, !tbaa !27
  br label %ZSTD_DCtx_loadDictionary_advanced.exit

ZSTD_DCtx_loadDictionary_advanced.exit:           ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.0.i = phi i64 [ -64, %bb.c ], [ -60, %bb.a ], [ 0, %bb.d ], [ 0, %bb.b ]
  ret i64 %.0.i
}

; Function Attrs: nounwind uwtable
define range(i64 -64, 1) i64 @ZSTD_DCtx_refPrefix_advanced(ptr nofree noundef captures(none) %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 30236
  %i.b = load i32, ptr %i.a, align 4, !tbaa !98
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.b, label %ZSTD_DCtx_loadDictionary_advanced.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 30184 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !22
  %i.e = tail call i64 @ZSTD_freeDDict(ptr noundef %i.d) #15 ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 30208 ; 2 uses
  store i32 0, ptr %i.f, align 8, !tbaa !27
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  %i.g = icmp ne ptr %1, null
  %i.h = icmp ne i64 %2, 0
  %or.cond.i = and i1 %i.g, %i.h
  br i1 %or.cond.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 30128
  %i.j = tail call ptr @ZSTD_createDDict_advanced(ptr noundef nonnull %1, i64 noundef %2, i32 noundef 1, i32 noundef %3, ptr noundef nonnull byval(%struct.ZSTD_customMem) align 8 %i.i) #15 ; 3 uses
  store ptr %i.j, ptr %i.c, align 8, !tbaa !22
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %ZSTD_DCtx_loadDictionary_advanced.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 30192
  store ptr %i.j, ptr %i.l, align 8, !tbaa !81
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  store i32 1, ptr %i.f, align 8, !tbaa !27
  br label %ZSTD_DCtx_loadDictionary_advanced.exit

ZSTD_DCtx_loadDictionary_advanced.exit:           ; preds = %bb.c, %bb.a, %bb.e
  %.1 = phi i64 [ 0, %bb.e ], [ -64, %bb.c ], [ -60, %bb.a ]
  ret i64 %.1
}

; Function Attrs: nounwind uwtable
define range(i64 -64, 1) i64 @ZSTD_DCtx_refPrefix(ptr nofree noundef captures(none) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 30236
  %i.b = load i32, ptr %i.a, align 4, !tbaa !98
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %bb.b, label %ZSTD_DCtx_refPrefix_advanced.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 30184 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !22
  %i.e = tail call i64 @ZSTD_freeDDict(ptr noundef %i.d) #15 ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 30208 ; 2 uses
  store i32 0, ptr %i.f, align 8, !tbaa !27
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  %i.g = icmp ne ptr %1, null
  %i.h = icmp ne i64 %2, 0
  %or.cond.i.i = and i1 %i.g, %i.h
  br i1 %or.cond.i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
end_hunk_1
