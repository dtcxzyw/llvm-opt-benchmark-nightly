inline.NumInlined: 231
inline.NumDeleted: 51
begin_hunk_0_@_ZN11duckdb_zstd21ZSTD_estimateDCtxSizeEv:bb.a
bb.a:
  ret i64 95976
}

; Function Attrs: mustprogress nounwind memory(argmem: write) uwtable
define noundef ptr @_ZN11duckdb_zstd19ZSTD_initStaticDCtxEPvm(ptr noundef %0, i64 noundef %1) local_unnamed_addr #3 {
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
  store ptr null, ptr %i.f, align 8, !tbaa !32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 30204
  store i32 0, ptr %i.g, align 4, !tbaa !33
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 30208
  store i32 0, ptr %i.h, align 8, !tbaa !34
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 30280
  store i64 0, ptr %i.i, align 8, !tbaa !31
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 30236
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 30316
  store i32 0, ptr %i.k, align 4, !tbaa !35
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 95960
  store i64 0, ptr %i.l, align 8, !tbaa !36
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 30176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.j, i8 0, i64 20, i1 false)
  store i32 1, ptr %i.m, align 8, !tbaa !37
  %i.n = tail call i32 asm "cpuid", "={ax},{ax},~{ebx},~{ecx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 0) #14, !srcloc !38 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i, label %_ZN11duckdb_zstdL22ZSTD_initDCtx_internalEPNS_11ZSTD_DCtx_sE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = tail call { i32, i32, i32 } asm "cpuid", "={ax},={cx},={dx},{ax},~{ebx},~{dirflag},~{fpsr},~{flags}"(i32 1) #14, !srcloc !39 ; 0 uses
  %i.p = icmp ugt i32 %i.n, 6
  br i1 %i.p, label %_ZN11duckdb_zstdL10ZSTD_cpuidEv.exit.i.i, label %_ZN11duckdb_zstdL22ZSTD_initDCtx_internalEPNS_11ZSTD_DCtx_sE.exit

_ZN11duckdb_zstdL10ZSTD_cpuidEv.exit.i.i:         ; preds = %bb.c
  %i.q = tail call { i32, i32, i32 } asm "cpuid", "={ax},={bx},={cx},{ax},{cx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #14, !srcloc !40
  %i.r = extractvalue { i32, i32, i32 } %i.q, 1   ; 2 uses
  %i.s = and i32 %i.r, 8
  %.not.i.i = icmp eq i32 %i.s, 0
  br i1 %.not.i.i, label %_ZN11duckdb_zstdL22ZSTD_initDCtx_internalEPNS_11ZSTD_DCtx_sE.exit, label %bb.d

bb.d:                                             ; preds = %_ZN11duckdb_zstdL10ZSTD_cpuidEv.exit.i.i
  %i.t = lshr i32 %i.r, 8
  %i.u = and i32 %i.t, 1
  br label %_ZN11duckdb_zstdL22ZSTD_initDCtx_internalEPNS_11ZSTD_DCtx_sE.exit

_ZN11duckdb_zstdL22ZSTD_initDCtx_internalEPNS_11ZSTD_DCtx_sE.exit: ; preds = %bb.b, %bb.c, %_ZN11duckdb_zstdL10ZSTD_cpuidEv.exit.i.i, %bb.d
  %i.v = phi i32 [ 0, %_ZN11duckdb_zstdL10ZSTD_cpuidEv.exit.i.i ], [ %i.u, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 30180
  store i32 %i.v, ptr %i.w, align 4, !tbaa !41
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 30216
  store ptr null, ptr %i.x, align 8, !tbaa !42
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 30104
  store i32 0, ptr %i.y, align 8, !tbaa !43
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 30264
  store i64 134217729, ptr %i.z, align 8, !tbaa !44
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 30320
  store i32 0, ptr %i.aa, align 8, !tbaa !45
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 30108
  store i32 0, ptr %i.ab, align 4, !tbaa !46
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 30224
  store i32 0, ptr %i.ac, align 8, !tbaa !47
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 30228
  store i32 0, ptr %i.ad, align 4, !tbaa !48
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 30232
  store i32 0, ptr %i.ae, align 8, !tbaa !49
  store i64 %1, ptr %i.d, align 8, !tbaa !50
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 95976
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 30240
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !51
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZN11duckdb_zstdL22ZSTD_initDCtx_internalEPNS_11ZSTD_DCtx_sE.exit
  %.0 = phi ptr [ %0, %_ZN11duckdb_zstdL22ZSTD_initDCtx_internalEPNS_11ZSTD_DCtx_sE.exit ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN11duckdb_zstd24ZSTD_createDCtx_advancedENS_14ZSTD_customMemE(ptr noundef readonly byval(%"struct.duckdb_zstd::ZSTD_customMem") align 8 captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %.sroa.06.0.copyload = load ptr, ptr %0, align 8, !tbaa !52 ; 3 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !52 ; 2 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !52 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.06.0.copyload, null ; 2 uses
  %.not6.i = icmp eq ptr %.sroa.2.0.copyload, null
  %i.a = xor i1 %.not.i, %.not6.i
  br i1 %i.a, label %_ZN11duckdb_zstdL24ZSTD_createDCtx_internalENS_14ZSTD_customMemE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = tail call noundef ptr %.sroa.06.0.copyload(ptr noundef %.sroa.3.0.copyload, i64 noundef 95976), !inline_history !53
  br label %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit.i

bb.d:                                             ; preds = %bb.b
  %i.c = tail call noalias dereferenceable_or_null(95976) ptr @malloc(i64 noundef 95976) #15
  br label %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit.i

_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit.i: ; preds = %bb.d, %bb.c
  %.0.i.i = phi ptr [ %i.b, %bb.c ], [ %i.c, %bb.d ] ; 24 uses
  %.not7.i = icmp eq ptr %.0.i.i, null
  br i1 %.not7.i, label %_ZN11duckdb_zstdL24ZSTD_createDCtx_internalENS_14ZSTD_customMemE.exit, label %bb.e

bb.e:                                             ; preds = %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit.i
  %i.d = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 30128
  store ptr %.sroa.06.0.copyload, ptr %i.d, align 8, !tbaa !52
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 30136
  store ptr %.sroa.2.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !52
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 30144
  store ptr %.sroa.3.0.copyload, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !52
  %i.e = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 30168
  store i64 0, ptr %i.e, align 8, !tbaa !50
  %i.f = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 30184
  %i.g = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 29912
  store ptr null, ptr %i.g, align 8, !tbaa !32
  %i.h = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 30204
  store i32 0, ptr %i.h, align 4, !tbaa !33
  %i.i = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 30208
  store i32 0, ptr %i.i, align 8, !tbaa !34
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 30280
  store i64 0, ptr %i.j, align 8, !tbaa !31
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 30236
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 30316
  store i32 0, ptr %i.l, align 4, !tbaa !35
  %i.m = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 95960
  store i64 0, ptr %i.m, align 8, !tbaa !36
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 30176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.k, i8 0, i64 20, i1 false)
  store i32 1, ptr %i.n, align 8, !tbaa !37
  %i.o = tail call i32 asm "cpuid", "={ax},{ax},~{ebx},~{ecx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 0) #14, !srcloc !38 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i.i, label %_ZN11duckdb_zstdL22ZSTD_initDCtx_internalEPNS_11ZSTD_DCtx_sE.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = tail call { i32, i32, i32 } asm "cpuid", "={ax},={cx},={dx},{ax},~{ebx},~{dirflag},~{fpsr},~{flags}"(i32 1) #14, !srcloc !39 ; 0 uses
  %i.q = icmp ugt i32 %i.o, 6
  br i1 %i.q, label %_ZN11duckdb_zstdL10ZSTD_cpuidEv.exit.i.i.i, label %_ZN11duckdb_zstdL22ZSTD_initDCtx_internalEPNS_11ZSTD_DCtx_sE.exit.i

_ZN11duckdb_zstdL10ZSTD_cpuidEv.exit.i.i.i:       ; preds = %bb.f
  %i.r = tail call { i32, i32, i32 } asm "cpuid", "={ax},={bx},={cx},{ax},{cx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #14, !srcloc !40
  %i.s = extractvalue { i32, i32, i32 } %i.r, 1   ; 2 uses
  %i.t = and i32 %i.s, 8
  %.not.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i, label %_ZN11duckdb_zstdL22ZSTD_initDCtx_internalEPNS_11ZSTD_DCtx_sE.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZN11duckdb_zstdL10ZSTD_cpuidEv.exit.i.i.i
  %i.u = lshr i32 %i.s, 8
  %i.v = and i32 %i.u, 1
  br label %_ZN11duckdb_zstdL22ZSTD_initDCtx_internalEPNS_11ZSTD_DCtx_sE.exit.i

_ZN11duckdb_zstdL22ZSTD_initDCtx_internalEPNS_11ZSTD_DCtx_sE.exit.i: ; preds = %bb.g, %_ZN11duckdb_zstdL10ZSTD_cpuidEv.exit.i.i.i, %bb.f, %bb.e
  %i.w = phi i32 [ 0, %_ZN11duckdb_zstdL10ZSTD_cpuidEv.exit.i.i.i ], [ %i.v, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ]
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 30180
  store i32 %i.w, ptr %i.x, align 4, !tbaa !41
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 30216
  store ptr null, ptr %i.y, align 8, !tbaa !42
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 30104
  store i32 0, ptr %i.z, align 8, !tbaa !43
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 30264
  store i64 134217729, ptr %i.aa, align 8, !tbaa !44
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 30320
  store i32 0, ptr %i.ab, align 8, !tbaa !45
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 30108
  store i32 0, ptr %i.ac, align 4, !tbaa !46
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 30224
  store i32 0, ptr %i.ad, align 8, !tbaa !47
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 30228
  store i32 0, ptr %i.ae, align 4, !tbaa !48
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 30232
  store i32 0, ptr %i.af, align 8, !tbaa !49
  br label %_ZN11duckdb_zstdL24ZSTD_createDCtx_internalENS_14ZSTD_customMemE.exit

_ZN11duckdb_zstdL24ZSTD_createDCtx_internalENS_14ZSTD_customMemE.exit: ; preds = %bb.a, %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit.i, %_ZN11duckdb_zstdL22ZSTD_initDCtx_internalEPNS_11ZSTD_DCtx_sE.exit.i
  %.1.i = phi ptr [ null, %bb.a ], [ %.0.i.i, %_ZN11duckdb_zstdL22ZSTD_initDCtx_internalEPNS_11ZSTD_DCtx_sE.exit.i ], [ null, %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit.i ]
  ret ptr %.1.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: mustprogress nounwind memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable
define noalias noundef ptr @_ZN11duckdb_zstd15ZSTD_createDCtxEv() local_unnamed_addr #5 {
_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit.i:
  %i.a = tail call noalias dereferenceable_or_null(95976) ptr @malloc(i64 noundef 95976) #15 ; 22 uses
  %.not7.i = icmp eq ptr %i.a, null
  br i1 %.not7.i, label %_ZN11duckdb_zstdL24ZSTD_createDCtx_internalENS_14ZSTD_customMemE.exit, label %bb.a

bb.a:                                             ; preds = %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit.i
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 30128
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 30168
  store i64 0, ptr %i.c, align 8, !tbaa !50
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 30184
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 29912
  store ptr null, ptr %i.e, align 8, !tbaa !32
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 30204
  store i32 0, ptr %i.f, align 4, !tbaa !33
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 30208
  store i32 0, ptr %i.g, align 8, !tbaa !34
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 30280
  store i64 0, ptr %i.h, align 8, !tbaa !31
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 30236
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 30316
  store i32 0, ptr %i.j, align 4, !tbaa !35
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 95960
  store i64 0, ptr %i.k, align 8, !tbaa !36
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 30176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.i, i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  store i32 1, ptr %i.l, align 8, !tbaa !37
  %i.m = tail call i32 asm "cpuid", "={ax},{ax},~{ebx},~{ecx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 0) #14, !srcloc !38 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i.i.i, label %_ZN11duckdb_zstdL22ZSTD_initDCtx_internalEPNS_11ZSTD_DCtx_sE.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = tail call { i32, i32, i32 } asm "cpuid", "={ax},={cx},={dx},{ax},~{ebx},~{dirflag},~{fpsr},~{flags}"(i32 1) #14, !srcloc !39 ; 0 uses
  %i.o = icmp ugt i32 %i.m, 6
  br i1 %i.o, label %_ZN11duckdb_zstdL10ZSTD_cpuidEv.exit.i.i.i, label %_ZN11duckdb_zstdL22ZSTD_initDCtx_internalEPNS_11ZSTD_DCtx_sE.exit.i

_ZN11duckdb_zstdL10ZSTD_cpuidEv.exit.i.i.i:       ; preds = %bb.b
  %i.p = tail call { i32, i32, i32 } asm "cpuid", "={ax},={bx},={cx},{ax},{cx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #14, !srcloc !40
  %i.q = extractvalue { i32, i32, i32 } %i.p, 1   ; 2 uses
  %i.r = and i32 %i.q, 8
  %.not.i.i.i = icmp eq i32 %i.r, 0
  br i1 %.not.i.i.i, label %_ZN11duckdb_zstdL22ZSTD_initDCtx_internalEPNS_11ZSTD_DCtx_sE.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZN11duckdb_zstdL10ZSTD_cpuidEv.exit.i.i.i
  %i.s = lshr i32 %i.q, 8
  %i.t = and i32 %i.s, 1
  br label %_ZN11duckdb_zstdL22ZSTD_initDCtx_internalEPNS_11ZSTD_DCtx_sE.exit.i

_ZN11duckdb_zstdL22ZSTD_initDCtx_internalEPNS_11ZSTD_DCtx_sE.exit.i: ; preds = %bb.c, %_ZN11duckdb_zstdL10ZSTD_cpuidEv.exit.i.i.i, %bb.b, %bb.a
  %i.u = phi i32 [ 0, %_ZN11duckdb_zstdL10ZSTD_cpuidEv.exit.i.i.i ], [ %i.t, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 30180
  store i32 %i.u, ptr %i.v, align 4, !tbaa !41
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 30216
  store ptr null, ptr %i.w, align 8, !tbaa !42
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 30104
  store i32 0, ptr %i.x, align 8, !tbaa !43
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 30264
  store i64 134217729, ptr %i.y, align 8, !tbaa !44
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 30320
  store i32 0, ptr %i.z, align 8, !tbaa !45
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 30108
  store i32 0, ptr %i.aa, align 4, !tbaa !46
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 30224
  store i32 0, ptr %i.ab, align 8, !tbaa !47
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 30228
  store i32 0, ptr %i.ac, align 4, !tbaa !48
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 30232
  store i32 0, ptr %i.ad, align 8, !tbaa !49
  br label %_ZN11duckdb_zstdL24ZSTD_createDCtx_internalENS_14ZSTD_customMemE.exit

_ZN11duckdb_zstdL24ZSTD_createDCtx_internalENS_14ZSTD_customMemE.exit: ; preds = %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit.i, %_ZN11duckdb_zstdL22ZSTD_initDCtx_internalEPNS_11ZSTD_DCtx_sE.exit.i
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define noundef range(i64 -64, 1) i64 @_ZN11duckdb_zstd13ZSTD_freeDCtxEPNS_11ZSTD_DCtx_sE(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit19, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 30168
  %i.c = load i64, ptr %i.b, align 8, !tbaa !50
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.c, label %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit19

bb.c:                                             ; preds = %bb.b
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 30136
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !52 ; 7 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 30144
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !52 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 30184 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.f = tail call noundef i64 @_ZN11duckdb_zstd14ZSTD_freeDDictEPNS_12ZSTD_DDict_sE(ptr noundef %i.e) ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 30208
  store i32 0, ptr %i.g, align 8, !tbaa !34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 30240 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !51   ; 3 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not4.i = icmp eq ptr %.sroa.6.0.copyload, null
  br i1 %.not4.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void %.sroa.6.0.copyload(ptr noundef %.sroa.8.0.copyload, ptr noundef nonnull %i.i), !inline_history !54
  br label %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit

bb.f:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.i) #16
  br label %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit

_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit: ; preds = %bb.c, %bb.e, %bb.f
  store ptr null, ptr %i.h, align 8, !tbaa !51
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 30216 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !42   ; 4 uses
  %.not12 = icmp eq ptr %i.k, null
  br i1 %.not12, label %bb.k, label %bb.g

bb.g:                                             ; preds = %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !55   ; 3 uses
  %.not.i16 = icmp eq ptr %i.l, null
  %.not4.i10.i = icmp eq ptr %.sroa.6.0.copyload, null ; 2 uses
  br i1 %.not.i16, label %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %.not4.i10.i, label %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit.thread.i, label %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit.thread18.i

_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit.thread18.i: ; preds = %bb.h
  tail call void %.sroa.6.0.copyload(ptr noundef %.sroa.8.0.copyload, ptr noundef nonnull %i.l), !inline_history !59
  br label %bb.i

_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit.thread.i: ; preds = %bb.h
  tail call void @free(ptr noundef nonnull %i.l) #16
  br label %bb.j

_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit.i: ; preds = %bb.g
  br i1 %.not4.i10.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit.i, %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit.thread18.i
  tail call void %.sroa.6.0.copyload(ptr noundef %.sroa.8.0.copyload, ptr noundef nonnull %i.k), !inline_history !59
  br label %_ZN11duckdb_zstdL21ZSTD_freeDDictHashSetEPNS_17ZSTD_DDictHashSetENS_14ZSTD_customMemE.exit

bb.j:                                             ; preds = %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit.i, %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit.thread.i
  tail call void @free(ptr noundef nonnull %i.k) #16
  br label %_ZN11duckdb_zstdL21ZSTD_freeDDictHashSetEPNS_17ZSTD_DDictHashSetENS_14ZSTD_customMemE.exit

_ZN11duckdb_zstdL21ZSTD_freeDDictHashSetEPNS_17ZSTD_DDictHashSetENS_14ZSTD_customMemE.exit: ; preds = %bb.i, %bb.j
  store ptr null, ptr %i.j, align 8, !tbaa !42
  br label %bb.k

bb.k:                                             ; preds = %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit, %_ZN11duckdb_zstdL21ZSTD_freeDDictHashSetEPNS_17ZSTD_DDictHashSetENS_14ZSTD_customMemE.exit
  %.not4.i18 = icmp eq ptr %.sroa.6.0.copyload, null
  br i1 %.not4.i18, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void %.sroa.6.0.copyload(ptr noundef %.sroa.8.0.copyload, ptr noundef nonnull %0), !inline_history !54
  br label %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit19

bb.m:                                             ; preds = %bb.k
  tail call void @free(ptr noundef nonnull %0) #16
  br label %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit19

_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit19: ; preds = %bb.m, %bb.l, %bb.b, %bb.a
  %.0 = phi i64 [ -64, %bb.b ], [ 0, %bb.a ], [ 0, %bb.l ], [ 0, %bb.m ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN11duckdb_zstd13ZSTD_copyDCtxEPNS_11ZSTD_DCtx_sEPKS0_(ptr noundef writeonly captures(none) initializes((0, 30240)) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(30240) %0, ptr noundef nonnull align 8 dereferenceable(30240) %1, i64 30240, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef range(i32 0, 2) i32 @_ZN11duckdb_zstd12ZSTD_isFrameEPKvm(ptr noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp ult i64 %1, 4
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load i32, ptr %0, align 1, !tbaa !3     ; 2 uses
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
define noundef range(i32 0, 2) i32 @_ZN11duckdb_zstd21ZSTD_isSkippableFrameEPKvm(ptr noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #7 {
end_hunk_0
begin_hunk_1_@_ZN11duckdb_zstd30ZSTD_decompressBegin_usingDictEPNS_11ZSTD_DCtx_sEPKvm:bb.a
  store i64 %i.b, ptr %i.c, align 8, !tbaa !92
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 30104
  %i.e = load i32, ptr %i.d, align 8, !tbaa !43
  %i.f = icmp eq i32 %i.e, 0
  %i.g = select i1 %i.f, i64 5, i64 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 29920
  store i64 %i.g, ptr %i.h, align 8, !tbaa !93
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 29976
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 29888 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 10296 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  store i32 201326604, ptr %i.l, align 8, !tbaa !3
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 30004
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 30000
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 30200 ; 2 uses
  store i32 0, ptr %i.o, align 8, !tbaa !94
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 29992
  store <4 x i32> <i32 3, i32 0, i32 0, i32 0>, ptr %i.p, align 8, !tbaa !60
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 30176
  store i32 1, ptr %i.q, align 8, !tbaa !37
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 26684
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.r, ptr noundef nonnull align 4 dereferenceable(12) @_ZN11duckdb_zstdL13repStartValueE, i64 12, i1 false)
  store ptr %i.k, ptr %0, align 8, !tbaa !124
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 6192
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.s, ptr %i.t, align 8, !tbaa !125
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4136
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.u, ptr %i.v, align 8, !tbaa !126
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.l, ptr %i.w, align 8, !tbaa !127
  %i.x = icmp ne ptr %1, null
  %i.y = icmp ne i64 %2, 0
  %or.cond = and i1 %i.x, %i.y
  br i1 %or.cond, label %bb.d, label %_ZN11duckdb_zstdL32ZSTD_decompress_insertDictionaryEPNS_11ZSTD_DCtx_sEPKvm.exit

bb.d:                                             ; preds = %bb.c
  %i.z = icmp ult i64 %2, 8
  br i1 %i.z, label %_ZN11duckdb_zstdL32ZSTD_decompress_insertDictionaryEPNS_11ZSTD_DCtx_sEPKvm.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.val33.i = load i32, ptr %1, align 1, !tbaa !3
  %.not.not.i = icmp eq i32 %.val33.i, -332356553
  br i1 %.not.not.i, label %bb.f, label %_ZN11duckdb_zstdL32ZSTD_decompress_insertDictionaryEPNS_11ZSTD_DCtx_sEPKvm.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val.i = load i32, ptr %i.aa, align 1, !tbaa !3
  store i32 %.val.i, ptr %i.o, align 8, !tbaa !94
  %i.ab = tail call noundef i64 @_ZN11duckdb_zstd17ZSTD_loadDEntropyEPNS_21ZSTD_entropyDTables_tEPKvm(ptr noundef nonnull %i.k, ptr noundef nonnull %1, i64 noundef range(i64 1, 0) %2) ; 2 uses
  %i.ac = icmp ult i64 %i.ab, -119
  br i1 %i.ac, label %bb.g, label %_ZN11duckdb_zstdL32ZSTD_decompress_insertDictionaryEPNS_11ZSTD_DCtx_sEPKvm.exit

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %i.ab
  store i32 1, ptr %i.m, align 4, !tbaa !128
  store i32 1, ptr %i.n, align 8, !tbaa !129
  %.pre = load ptr, ptr %i.j, align 8, !tbaa !91
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 29896
  %.pre16 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !130
  %i.ae = ptrtoint ptr %.pre16 to i64
  br label %_ZN11duckdb_zstdL32ZSTD_decompress_insertDictionaryEPNS_11ZSTD_DCtx_sEPKvm.exit.thread

_ZN11duckdb_zstdL32ZSTD_decompress_insertDictionaryEPNS_11ZSTD_DCtx_sEPKvm.exit.thread: ; preds = %bb.d, %bb.e, %bb.g
  %i.af = phi i64 [ 0, %bb.d ], [ %i.ae, %bb.g ], [ 0, %bb.e ]
  %i.ag = phi ptr [ null, %bb.d ], [ %.pre, %bb.g ], [ null, %bb.e ] ; 2 uses
  %.sink41.i = phi ptr [ %1, %bb.d ], [ %i.ad, %bb.g ], [ %1, %bb.e ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 29912
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !32
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 29896
  %i.aj = ptrtoint ptr %i.ag to i64
  %.neg.i34.i = sub i64 %i.af, %i.aj
  %i.ak = getelementptr inbounds i8, ptr %.sink41.i, i64 %.neg.i34.i
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 29904
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !131
  store ptr %.sink41.i, ptr %i.ai, align 8, !tbaa !130
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 %2
  store ptr %i.am, ptr %i.j, align 8, !tbaa !91
  br label %_ZN11duckdb_zstdL32ZSTD_decompress_insertDictionaryEPNS_11ZSTD_DCtx_sEPKvm.exit

_ZN11duckdb_zstdL32ZSTD_decompress_insertDictionaryEPNS_11ZSTD_DCtx_sEPKvm.exit: ; preds = %bb.f, %bb.c, %_ZN11duckdb_zstdL32ZSTD_decompress_insertDictionaryEPNS_11ZSTD_DCtx_sEPKvm.exit.thread
  %.1 = phi i64 [ 0, %bb.c ], [ 0, %_ZN11duckdb_zstdL32ZSTD_decompress_insertDictionaryEPNS_11ZSTD_DCtx_sEPKvm.exit.thread ], [ -30, %bb.f ]
  ret i64 %.1
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN11duckdb_zstd31ZSTD_decompressBegin_usingDDictEPNS_11ZSTD_DCtx_sEPKNS_12ZSTD_DDict_sE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef ptr @_ZN11duckdb_zstd22ZSTD_DDict_dictContentEPKNS_12ZSTD_DDict_sE(ptr noundef nonnull %1)
  %i.b = tail call noundef i64 @_ZN11duckdb_zstd19ZSTD_DDict_dictSizeEPKNS_12ZSTD_DDict_sE(ptr noundef nonnull %1)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 29912
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !32
  %i.f = icmp ne ptr %i.e, %i.c
  %i.g = zext i1 %i.f to i32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 30204
  store i32 %i.g, ptr %i.h, align 4, !tbaa !33
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.not.i = icmp eq ptr @_ZN11duckdb_zstd27ZSTD_trace_decompress_beginEPKNS_11ZSTD_DCtx_sE, null
  br i1 %.not.i, label %_ZN11duckdb_zstd20ZSTD_decompressBeginEPNS_11ZSTD_DCtx_sE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call noundef i64 @_ZN11duckdb_zstd27ZSTD_trace_decompress_beginEPKNS_11ZSTD_DCtx_sE(ptr noundef %0)
  br label %_ZN11duckdb_zstd20ZSTD_decompressBeginEPNS_11ZSTD_DCtx_sE.exit

_ZN11duckdb_zstd20ZSTD_decompressBeginEPNS_11ZSTD_DCtx_sE.exit: ; preds = %bb.c, %bb.d
  %i.j = phi i64 [ %i.i, %bb.d ], [ 0, %bb.c ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 95968
  store i64 %i.j, ptr %i.k, align 8, !tbaa !92
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 30104
  %i.m = load i32, ptr %i.l, align 8, !tbaa !43
  %i.n = icmp eq i32 %i.m, 0
  %i.o = select i1 %i.n, i64 5, i64 1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 29920
  store i64 %i.o, ptr %i.p, align 8, !tbaa !93
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 29976
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 29888
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 10296 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  store i32 201326604, ptr %i.t, align 8, !tbaa !3
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 30200
  store i32 0, ptr %i.u, align 8, !tbaa !94
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 29992
  store <4 x i32> <i32 3, i32 0, i32 0, i32 0>, ptr %i.v, align 8, !tbaa !60
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 30176
  store i32 1, ptr %i.w, align 8, !tbaa !37
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 26684
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.x, ptr noundef nonnull align 4 dereferenceable(12) @_ZN11duckdb_zstdL13repStartValueE, i64 12, i1 false)
  store ptr %i.s, ptr %0, align 8, !tbaa !124
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 6192
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.y, ptr %i.z, align 8, !tbaa !125
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 4136
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !126
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.t, ptr %i.ac, align 8, !tbaa !127
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN11duckdb_zstd20ZSTD_decompressBeginEPNS_11ZSTD_DCtx_sE.exit
  tail call void @_ZN11duckdb_zstd24ZSTD_copyDDictParametersEPNS_11ZSTD_DCtx_sEPKNS_12ZSTD_DDict_sE(ptr noundef nonnull %0, ptr noundef nonnull %1)
  br label %bb.f

bb.f:                                             ; preds = %_ZN11duckdb_zstd20ZSTD_decompressBeginEPNS_11ZSTD_DCtx_sE.exit, %bb.e
  ret i64 0
}

declare noundef ptr @_ZN11duckdb_zstd22ZSTD_DDict_dictContentEPKNS_12ZSTD_DDict_sE(ptr noundef) local_unnamed_addr #1

declare noundef i64 @_ZN11duckdb_zstd19ZSTD_DDict_dictSizeEPKNS_12ZSTD_DDict_sE(ptr noundef) local_unnamed_addr #1

declare void @_ZN11duckdb_zstd24ZSTD_copyDDictParametersEPNS_11ZSTD_DCtx_sEPKNS_12ZSTD_DDict_sE(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_ZN11duckdb_zstd23ZSTD_getDictID_fromDictEPKvm(ptr noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp ult i64 %1, 8
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val3 = load i32, ptr %0, align 1, !tbaa !3
  %.not = icmp eq i32 %.val3, -332356553
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.val = load i32, ptr %i.b, align 1, !tbaa !3
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ %.val, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef i32 @_ZN11duckdb_zstd24ZSTD_getDictID_fromFrameEPKvm(ptr noundef readonly captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #6 {
bb.a:
  %2 = alloca %"struct.duckdb_zstd::ZSTD_frameHeader", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %2, i8 0, i64 48, i1 false)
  %i.a = call noundef i64 @_ZN11duckdb_zstd28ZSTD_getFrameHeader_advancedEPNS_16ZSTD_frameHeaderEPKvmNS_13ZSTD_format_eE(ptr noundef nonnull %2, ptr noundef readonly %0, i64 noundef %1, i32 noundef 0)
  %i.b = icmp ult i64 %i.a, -119
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.d = load i32, ptr %i.c, align 4
  %.0 = select i1 %i.b, i32 %i.d, i32 0
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable
define noalias noundef ptr @_ZN11duckdb_zstd18ZSTD_createDStreamEv() local_unnamed_addr #5 {
_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit.i:
  %i.a = tail call noalias dereferenceable_or_null(95976) ptr @malloc(i64 noundef 95976) #15 ; 22 uses
  %.not7.i = icmp eq ptr %i.a, null
  br i1 %.not7.i, label %_ZN11duckdb_zstdL24ZSTD_createDCtx_internalENS_14ZSTD_customMemE.exit, label %bb.a

bb.a:                                             ; preds = %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit.i
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 30128
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 30168
  store i64 0, ptr %i.c, align 8, !tbaa !50
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 30184
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 29912
  store ptr null, ptr %i.e, align 8, !tbaa !32
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 30204
  store i32 0, ptr %i.f, align 4, !tbaa !33
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 30208
  store i32 0, ptr %i.g, align 8, !tbaa !34
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 30280
  store i64 0, ptr %i.h, align 8, !tbaa !31
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 30236
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 30316
  store i32 0, ptr %i.j, align 4, !tbaa !35
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 95960
  store i64 0, ptr %i.k, align 8, !tbaa !36
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 30176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.i, i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  store i32 1, ptr %i.l, align 8, !tbaa !37
  %i.m = tail call i32 asm "cpuid", "={ax},{ax},~{ebx},~{ecx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 0) #14, !srcloc !38 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i.i.i, label %_ZN11duckdb_zstdL22ZSTD_initDCtx_internalEPNS_11ZSTD_DCtx_sE.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = tail call { i32, i32, i32 } asm "cpuid", "={ax},={cx},={dx},{ax},~{ebx},~{dirflag},~{fpsr},~{flags}"(i32 1) #14, !srcloc !39 ; 0 uses
  %i.o = icmp ugt i32 %i.m, 6
  br i1 %i.o, label %_ZN11duckdb_zstdL10ZSTD_cpuidEv.exit.i.i.i, label %_ZN11duckdb_zstdL22ZSTD_initDCtx_internalEPNS_11ZSTD_DCtx_sE.exit.i

_ZN11duckdb_zstdL10ZSTD_cpuidEv.exit.i.i.i:       ; preds = %bb.b
  %i.p = tail call { i32, i32, i32 } asm "cpuid", "={ax},={bx},={cx},{ax},{cx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #14, !srcloc !40
  %i.q = extractvalue { i32, i32, i32 } %i.p, 1   ; 2 uses
  %i.r = and i32 %i.q, 8
  %.not.i.i.i = icmp eq i32 %i.r, 0
  br i1 %.not.i.i.i, label %_ZN11duckdb_zstdL22ZSTD_initDCtx_internalEPNS_11ZSTD_DCtx_sE.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZN11duckdb_zstdL10ZSTD_cpuidEv.exit.i.i.i
  %i.s = lshr i32 %i.q, 8
  %i.t = and i32 %i.s, 1
  br label %_ZN11duckdb_zstdL22ZSTD_initDCtx_internalEPNS_11ZSTD_DCtx_sE.exit.i

_ZN11duckdb_zstdL22ZSTD_initDCtx_internalEPNS_11ZSTD_DCtx_sE.exit.i: ; preds = %bb.c, %_ZN11duckdb_zstdL10ZSTD_cpuidEv.exit.i.i.i, %bb.b, %bb.a
  %i.u = phi i32 [ 0, %_ZN11duckdb_zstdL10ZSTD_cpuidEv.exit.i.i.i ], [ %i.t, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 30180
  store i32 %i.u, ptr %i.v, align 4, !tbaa !41
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 30216
  store ptr null, ptr %i.w, align 8, !tbaa !42
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 30104
  store i32 0, ptr %i.x, align 8, !tbaa !43
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 30264
  store i64 134217729, ptr %i.y, align 8, !tbaa !44
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 30320
  store i32 0, ptr %i.z, align 8, !tbaa !45
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 30108
  store i32 0, ptr %i.aa, align 4, !tbaa !46
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 30224
  store i32 0, ptr %i.ab, align 8, !tbaa !47
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 30228
  store i32 0, ptr %i.ac, align 4, !tbaa !48
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 30232
  store i32 0, ptr %i.ad, align 8, !tbaa !49
  br label %_ZN11duckdb_zstdL24ZSTD_createDCtx_internalENS_14ZSTD_customMemE.exit

_ZN11duckdb_zstdL24ZSTD_createDCtx_internalENS_14ZSTD_customMemE.exit: ; preds = %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit.i, %_ZN11duckdb_zstdL22ZSTD_initDCtx_internalEPNS_11ZSTD_DCtx_sE.exit.i
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind memory(argmem: write) uwtable
define noundef ptr @_ZN11duckdb_zstd22ZSTD_initStaticDStreamEPvm(ptr noundef %0, i64 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, 7
  %.not.i = icmp ne i64 %i.b, 0
  %i.c = icmp ult i64 %1, 95976
  %or.cond.i = or i1 %i.c, %.not.i
  br i1 %or.cond.i, label %_ZN11duckdb_zstd19ZSTD_initStaticDCtxEPvm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 30168
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 30184
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 29912
  store ptr null, ptr %i.f, align 8, !tbaa !32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 30204
  store i32 0, ptr %i.g, align 4, !tbaa !33
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 30208
  store i32 0, ptr %i.h, align 8, !tbaa !34
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 30280
  store i64 0, ptr %i.i, align 8, !tbaa !31
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 30236
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 30316
  store i32 0, ptr %i.k, align 4, !tbaa !35
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 95960
  store i64 0, ptr %i.l, align 8, !tbaa !36
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 30176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.j, i8 0, i64 20, i1 false)
  store i32 1, ptr %i.m, align 8, !tbaa !37
  %i.n = tail call i32 asm "cpuid", "={ax},{ax},~{ebx},~{ecx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 0) #14, !srcloc !38 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i.i, label %_ZN11duckdb_zstdL22ZSTD_initDCtx_internalEPNS_11ZSTD_DCtx_sE.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = tail call { i32, i32, i32 } asm "cpuid", "={ax},={cx},={dx},{ax},~{ebx},~{dirflag},~{fpsr},~{flags}"(i32 1) #14, !srcloc !39 ; 0 uses
  %i.p = icmp ugt i32 %i.n, 6
  br i1 %i.p, label %_ZN11duckdb_zstdL10ZSTD_cpuidEv.exit.i.i.i, label %_ZN11duckdb_zstdL22ZSTD_initDCtx_internalEPNS_11ZSTD_DCtx_sE.exit.i

_ZN11duckdb_zstdL10ZSTD_cpuidEv.exit.i.i.i:       ; preds = %bb.c
  %i.q = tail call { i32, i32, i32 } asm "cpuid", "={ax},={bx},={cx},{ax},{cx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #14, !srcloc !40
  %i.r = extractvalue { i32, i32, i32 } %i.q, 1   ; 2 uses
  %i.s = and i32 %i.r, 8
  %.not.i.i.i = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i, label %_ZN11duckdb_zstdL22ZSTD_initDCtx_internalEPNS_11ZSTD_DCtx_sE.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN11duckdb_zstdL10ZSTD_cpuidEv.exit.i.i.i
  %i.t = lshr i32 %i.r, 8
  %i.u = and i32 %i.t, 1
  br label %_ZN11duckdb_zstdL22ZSTD_initDCtx_internalEPNS_11ZSTD_DCtx_sE.exit.i

_ZN11duckdb_zstdL22ZSTD_initDCtx_internalEPNS_11ZSTD_DCtx_sE.exit.i: ; preds = %bb.d, %_ZN11duckdb_zstdL10ZSTD_cpuidEv.exit.i.i.i, %bb.c, %bb.b
  %i.v = phi i32 [ 0, %_ZN11duckdb_zstdL10ZSTD_cpuidEv.exit.i.i.i ], [ %i.u, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 30180
  store i32 %i.v, ptr %i.w, align 4, !tbaa !41
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 30216
  store ptr null, ptr %i.x, align 8, !tbaa !42
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 30104
  store i32 0, ptr %i.y, align 8, !tbaa !43
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 30264
  store i64 134217729, ptr %i.z, align 8, !tbaa !44
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 30320
  store i32 0, ptr %i.aa, align 8, !tbaa !45
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 30108
  store i32 0, ptr %i.ab, align 4, !tbaa !46
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 30224
  store i32 0, ptr %i.ac, align 8, !tbaa !47
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 30228
  store i32 0, ptr %i.ad, align 4, !tbaa !48
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 30232
  store i32 0, ptr %i.ae, align 8, !tbaa !49
  store i64 %1, ptr %i.d, align 8, !tbaa !50
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 95976
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 30240
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !51
  br label %_ZN11duckdb_zstd19ZSTD_initStaticDCtxEPvm.exit

_ZN11duckdb_zstd19ZSTD_initStaticDCtxEPvm.exit:   ; preds = %bb.a, %_ZN11duckdb_zstdL22ZSTD_initDCtx_internalEPNS_11ZSTD_DCtx_sE.exit.i
  %.0.i = phi ptr [ %0, %_ZN11duckdb_zstdL22ZSTD_initDCtx_internalEPNS_11ZSTD_DCtx_sE.exit.i ], [ null, %bb.a ]
  ret ptr %.0.i
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN11duckdb_zstd27ZSTD_createDStream_advancedENS_14ZSTD_customMemE(ptr noundef readonly byval(%"struct.duckdb_zstd::ZSTD_customMem") align 8 captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %.sroa.06.0.copyload = load ptr, ptr %0, align 8, !tbaa !52 ; 3 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !52 ; 2 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !52 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.06.0.copyload, null ; 2 uses
  %.not6.i = icmp eq ptr %.sroa.2.0.copyload, null
  %i.a = xor i1 %.not.i, %.not6.i
  br i1 %i.a, label %_ZN11duckdb_zstdL24ZSTD_createDCtx_internalENS_14ZSTD_customMemE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = tail call noundef ptr %.sroa.06.0.copyload(ptr noundef %.sroa.3.0.copyload, i64 noundef 95976), !inline_history !53
  br label %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit.i

bb.d:                                             ; preds = %bb.b
  %i.c = tail call noalias dereferenceable_or_null(95976) ptr @malloc(i64 noundef 95976) #15
  br label %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit.i

_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit.i: ; preds = %bb.d, %bb.c
  %.0.i.i = phi ptr [ %i.b, %bb.c ], [ %i.c, %bb.d ] ; 24 uses
  %.not7.i = icmp eq ptr %.0.i.i, null
  br i1 %.not7.i, label %_ZN11duckdb_zstdL24ZSTD_createDCtx_internalENS_14ZSTD_customMemE.exit, label %bb.e

bb.e:                                             ; preds = %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit.i
  %i.d = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 30128
  store ptr %.sroa.06.0.copyload, ptr %i.d, align 8, !tbaa !52
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 30136
  store ptr %.sroa.2.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !52
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 30144
  store ptr %.sroa.3.0.copyload, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !52
  %i.e = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 30168
  store i64 0, ptr %i.e, align 8, !tbaa !50
  %i.f = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 30184
  %i.g = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 29912
  store ptr null, ptr %i.g, align 8, !tbaa !32
  %i.h = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 30204
  store i32 0, ptr %i.h, align 4, !tbaa !33
end_hunk_1
