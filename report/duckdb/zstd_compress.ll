inline.NumInlined: 798
inline.NumDeleted: 175
begin_hunk_0_@_ZN11duckdb_zstd18ZSTD_compressBoundEm:bb.a
  br i1 %i.i, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.a, %bb.b
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread
  %i.j = phi i64 [ -72, %.thread ], [ %.fr, %bb.b ]
  ret i64 %i.j
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN11duckdb_zstd15ZSTD_createCCtxEv() local_unnamed_addr #2 {
_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit.i:
  %calloc = tail call dereferenceable_or_null(5248) ptr @calloc(i64 1, i64 5248) ; 7 uses
  %.not6.i = icmp eq ptr %calloc, null
  br i1 %.not6.i, label %_ZN11duckdb_zstd24ZSTD_createCCtx_advancedENS_14ZSTD_customMemE.exit, label %bb.a

bb.a:                                             ; preds = %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit.i
  %i.a = tail call i32 asm "cpuid", "={ax},{ax},~{ebx},~{ecx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 0) #25, !srcloc !7 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.a, 0
  br i1 %.not.i.i.i.i, label %_ZN11duckdb_zstdL13ZSTD_initCCtxEPNS_11ZSTD_CCtx_sENS_14ZSTD_customMemE.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call { i32, i32, i32 } asm "cpuid", "={ax},={cx},={dx},{ax},~{ebx},~{dirflag},~{fpsr},~{flags}"(i32 1) #25, !srcloc !8 ; 0 uses
  %i.c = icmp ugt i32 %i.a, 6
  br i1 %i.c, label %_ZN11duckdb_zstdL10ZSTD_cpuidEv.exit.i.i.i, label %_ZN11duckdb_zstdL13ZSTD_initCCtxEPNS_11ZSTD_CCtx_sENS_14ZSTD_customMemE.exit.i

_ZN11duckdb_zstdL10ZSTD_cpuidEv.exit.i.i.i:       ; preds = %bb.b
  %i.d = tail call { i32, i32, i32 } asm "cpuid", "={ax},={bx},={cx},{ax},{cx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #25, !srcloc !9
  %i.e = extractvalue { i32, i32, i32 } %i.d, 1   ; 2 uses
  %i.f = and i32 %i.e, 8
  %.not.i.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i.i, label %_ZN11duckdb_zstdL13ZSTD_initCCtxEPNS_11ZSTD_CCtx_sENS_14ZSTD_customMemE.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZN11duckdb_zstdL10ZSTD_cpuidEv.exit.i.i.i
  %i.g = lshr i32 %i.e, 8
  %i.h = and i32 %i.g, 1
  br label %_ZN11duckdb_zstdL13ZSTD_initCCtxEPNS_11ZSTD_CCtx_sENS_14ZSTD_customMemE.exit.i

_ZN11duckdb_zstdL13ZSTD_initCCtxEPNS_11ZSTD_CCtx_sENS_14ZSTD_customMemE.exit.i: ; preds = %bb.c, %_ZN11duckdb_zstdL10ZSTD_cpuidEv.exit.i.i.i, %bb.b, %bb.a
  %i.i = phi i32 [ 0, %_ZN11duckdb_zstdL10ZSTD_cpuidEv.exit.i.i.i ], [ %i.h, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  %i.j = getelementptr inbounds nuw i8, ptr %calloc, i64 8
  store i32 %i.i, ptr %i.j, align 8, !tbaa !10
  tail call fastcc void @_ZN11duckdb_zstdL18ZSTD_clearAllDictsEPNS_11ZSTD_CCtx_sE(ptr noundef nonnull %calloc)
  %i.k = getelementptr inbounds nuw i8, ptr %calloc, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.k, i8 0, i64 216, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %calloc, i64 60
  store i32 3, ptr %i.l, align 4, !tbaa !58
  %i.m = getelementptr inbounds nuw i8, ptr %calloc, i64 48
  store i32 1, ptr %i.m, align 8, !tbaa !59
  br label %_ZN11duckdb_zstd24ZSTD_createCCtx_advancedENS_14ZSTD_customMemE.exit

_ZN11duckdb_zstd24ZSTD_createCCtx_advancedENS_14ZSTD_customMemE.exit: ; preds = %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit.i, %_ZN11duckdb_zstdL13ZSTD_initCCtxEPNS_11ZSTD_CCtx_sENS_14ZSTD_customMemE.exit.i
  ret ptr %calloc
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN11duckdb_zstd24ZSTD_createCCtx_advancedENS_14ZSTD_customMemE(ptr nofree noundef readonly byval(%"struct.duckdb_zstd::ZSTD_customMem") align 8 captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !60     ; 2 uses
  %.not = icmp eq ptr %i.a, null                  ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !61
  %.not5 = icmp eq ptr %i.c, null
  %i.d = xor i1 %.not, %.not5
  br i1 %i.d, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.28.0.copyload = load ptr, ptr %.sroa.28.0..sroa_idx, align 8, !tbaa !62
  %i.e = tail call noundef ptr %i.a(ptr noundef %.sroa.28.0.copyload, i64 noundef 5248), !inline_history !63
  br label %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit

bb.d:                                             ; preds = %bb.b
  %i.f = tail call noalias dereferenceable_or_null(5248) ptr @malloc(i64 noundef 5248) #26
  br label %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit

_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit: ; preds = %bb.c, %bb.d
  %.0.i = phi ptr [ %i.e, %bb.c ], [ %i.f, %bb.d ] ; 9 uses
  %.not6 = icmp eq ptr %.0.i, null
  br i1 %.not6, label %bb.h, label %bb.e

bb.e:                                             ; preds = %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5248) %.0.i, i8 0, i64 5248, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %.0.i, i64 872
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %i.h = tail call i32 asm "cpuid", "={ax},{ax},~{ebx},~{ecx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 0) #25, !srcloc !7 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i.i, label %_ZN11duckdb_zstdL13ZSTD_initCCtxEPNS_11ZSTD_CCtx_sENS_14ZSTD_customMemE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = tail call { i32, i32, i32 } asm "cpuid", "={ax},={cx},={dx},{ax},~{ebx},~{dirflag},~{fpsr},~{flags}"(i32 1) #25, !srcloc !8 ; 0 uses
  %i.j = icmp ugt i32 %i.h, 6
  br i1 %i.j, label %_ZN11duckdb_zstdL10ZSTD_cpuidEv.exit.i.i, label %_ZN11duckdb_zstdL13ZSTD_initCCtxEPNS_11ZSTD_CCtx_sENS_14ZSTD_customMemE.exit

_ZN11duckdb_zstdL10ZSTD_cpuidEv.exit.i.i:         ; preds = %bb.f
  %i.k = tail call { i32, i32, i32 } asm "cpuid", "={ax},={bx},={cx},{ax},{cx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #25, !srcloc !9
  %i.l = extractvalue { i32, i32, i32 } %i.k, 1   ; 2 uses
  %i.m = and i32 %i.l, 8
  %.not.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i, label %_ZN11duckdb_zstdL13ZSTD_initCCtxEPNS_11ZSTD_CCtx_sENS_14ZSTD_customMemE.exit, label %bb.g

bb.g:                                             ; preds = %_ZN11duckdb_zstdL10ZSTD_cpuidEv.exit.i.i
  %i.n = lshr i32 %i.l, 8
  %i.o = and i32 %i.n, 1
  br label %_ZN11duckdb_zstdL13ZSTD_initCCtxEPNS_11ZSTD_CCtx_sENS_14ZSTD_customMemE.exit

_ZN11duckdb_zstdL13ZSTD_initCCtxEPNS_11ZSTD_CCtx_sENS_14ZSTD_customMemE.exit: ; preds = %bb.e, %bb.f, %_ZN11duckdb_zstdL10ZSTD_cpuidEv.exit.i.i, %bb.g
  %i.p = phi i32 [ 0, %_ZN11duckdb_zstdL10ZSTD_cpuidEv.exit.i.i ], [ %i.o, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ]
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  store i32 %i.p, ptr %i.q, align 8, !tbaa !10
  tail call fastcc void @_ZN11duckdb_zstdL18ZSTD_clearAllDictsEPNS_11ZSTD_CCtx_sE(ptr noundef nonnull %.0.i)
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.r, i8 0, i64 216, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i, i64 60
  store i32 3, ptr %i.s, align 4, !tbaa !58
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i, i64 48
  store i32 1, ptr %i.t, align 8, !tbaa !59
  br label %bb.h

bb.h:                                             ; preds = %_ZN11duckdb_zstdL13ZSTD_initCCtxEPNS_11ZSTD_CCtx_sENS_14ZSTD_customMemE.exit, %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ %.0.i, %_ZN11duckdb_zstdL13ZSTD_initCCtxEPNS_11ZSTD_CCtx_sENS_14ZSTD_customMemE.exit ], [ null, %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit ]
  ret ptr %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind memory(argmem: write) uwtable
define noundef ptr @_ZN11duckdb_zstd19ZSTD_initStaticCCtxEPvm(ptr noundef %0, i64 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp ugt i64 %1, 5248
  %i.b = ptrtoint ptr %0 to i64
  %i.c = and i64 %i.b, 7
  %.not = icmp eq i64 %i.c, 0
  %or.cond = and i1 %i.a, %.not
  br i1 %or.cond, label %bb.b, label %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_objectEPNS_10ZSTD_cwkspEm.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 5248 ; 6 uses
  %i.e = icmp eq ptr %0, null
  br i1 %i.e, label %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_objectEPNS_10ZSTD_cwkspEm.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 4 uses
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = and i64 %i.g, -64                        ; 2 uses
  %i.i = inttoptr i64 %i.h to ptr                 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5248) %0, i8 0, i64 5248, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 680
  store ptr %0, ptr %i.j, align 8, !tbaa !62
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 688
  store ptr %i.f, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !62
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 696 ; 4 uses
  store ptr %i.d, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !62
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 4 uses
  store ptr %i.d, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !62
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 4 uses
  store ptr %i.d, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !62
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 720
  store ptr %i.i, ptr %.sroa.14.0..sroa_idx, align 8, !tbaa !62
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 728
  store ptr %i.i, ptr %.sroa.15.0..sroa_idx, align 8, !tbaa !62
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 736 ; 3 uses
  %.sroa.1833.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 740
  store i32 0, ptr %.sroa.1833.0..sroa_idx, align 4, !tbaa !3
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 748
  store i32 1, ptr %.sroa.21.0..sroa_idx, align 4, !tbaa !64
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 904
  store i64 %1, ptr %i.k, align 8, !tbaa !65
  %i.l = ptrtoint ptr %i.d to i64
  %i.m = sub i64 %i.h, %i.l
  %i.n = icmp ult i64 %i.m, 20184
  br i1 %i.n, label %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_objectEPNS_10ZSTD_cwkspEm.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = icmp samesign ult i64 %1, 10880
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %.sroa.16.0..sroa_idx, align 8, !tbaa !66
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 10880 ; 4 uses
  store ptr %i.p, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !67
  store ptr %i.p, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !68
  store ptr %i.p, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !69
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.q = phi ptr [ %i.d, %bb.e ], [ %i.p, %bb.f ] ; 4 uses
  %.0.i24 = phi ptr [ null, %bb.e ], [ %i.d, %bb.f ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 3200
  store ptr %.0.i24, ptr %i.r, align 8, !tbaa !70
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 5632 ; 5 uses
  %i.t = icmp ugt ptr %i.s, %i.f
  br i1 %i.t, label %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_objectEPNS_10ZSTD_cwkspEm.exit28.thread41, label %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_objectEPNS_10ZSTD_cwkspEm.exit28.thread

_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_objectEPNS_10ZSTD_cwkspEm.exit28.thread41: ; preds = %bb.g
  store i8 1, ptr %.sroa.16.0..sroa_idx, align 8, !tbaa !66
  br label %bb.h

_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_objectEPNS_10ZSTD_cwkspEm.exit28.thread: ; preds = %bb.g
  store ptr %i.s, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !67
  store ptr %i.s, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !68
  store ptr %i.s, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !69
  br label %bb.h

bb.h:                                             ; preds = %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_objectEPNS_10ZSTD_cwkspEm.exit28.thread41, %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_objectEPNS_10ZSTD_cwkspEm.exit28.thread
  %.sink48 = phi i64 [ 8920, %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_objectEPNS_10ZSTD_cwkspEm.exit28.thread41 ], [ 14552, %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_objectEPNS_10ZSTD_cwkspEm.exit28.thread ]
  %.sink = phi ptr [ null, %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_objectEPNS_10ZSTD_cwkspEm.exit28.thread41 ], [ %i.q, %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_objectEPNS_10ZSTD_cwkspEm.exit28.thread ]
  %i.u = phi ptr [ %i.q, %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_objectEPNS_10ZSTD_cwkspEm.exit28.thread41 ], [ %i.s, %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_objectEPNS_10ZSTD_cwkspEm.exit28.thread ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sink48 ; 4 uses
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 3208
  store ptr %.sink, ptr %2, align 8, !tbaa !71
  %i.w = icmp ugt ptr %i.v, %i.f
  br i1 %i.w, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i8 1, ptr %.sroa.16.0..sroa_idx, align 8, !tbaa !66
  br label %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_objectEPNS_10ZSTD_cwkspEm.exit31

bb.j:                                             ; preds = %bb.h
  store ptr %i.v, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !67
  store ptr %i.v, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !68
  store ptr %i.v, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !69
  br label %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_objectEPNS_10ZSTD_cwkspEm.exit31

_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_objectEPNS_10ZSTD_cwkspEm.exit31: ; preds = %bb.i, %bb.j
  %.0.i30 = phi ptr [ null, %bb.i ], [ %i.u, %bb.j ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 3520
  store ptr %.0.i30, ptr %i.x, align 8, !tbaa !72
  %i.y = tail call i32 asm "cpuid", "={ax},{ax},~{ebx},~{ecx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 0) #25, !srcloc !7 ; 2 uses
  %.not.i32 = icmp eq i32 %i.y, 0
  br i1 %.not.i32, label %_ZN11duckdb_zstdL10ZSTD_cpuidEv.exit, label %bb.k

bb.k:                                             ; preds = %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_objectEPNS_10ZSTD_cwkspEm.exit31
  %i.z = tail call { i32, i32, i32 } asm "cpuid", "={ax},={cx},={dx},{ax},~{ebx},~{dirflag},~{fpsr},~{flags}"(i32 1) #25, !srcloc !8 ; 0 uses
  %i.aa = icmp ugt i32 %i.y, 6
  br i1 %i.aa, label %bb.l, label %_ZN11duckdb_zstdL10ZSTD_cpuidEv.exit

bb.l:                                             ; preds = %bb.k
  %i.ab = tail call { i32, i32, i32 } asm "cpuid", "={ax},={bx},={cx},{ax},{cx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #25, !srcloc !9
  %i.ac = extractvalue { i32, i32, i32 } %i.ab, 1
  %i.ad = lshr i32 %i.ac, 8
  %i.ae = and i32 %i.ad, 1
  br label %_ZN11duckdb_zstdL10ZSTD_cpuidEv.exit

_ZN11duckdb_zstdL10ZSTD_cpuidEv.exit:             ; preds = %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_objectEPNS_10ZSTD_cwkspEm.exit31, %bb.k, %bb.l
  %.sroa.3.8.insert.insert.i = phi i32 [ %i.ae, %bb.l ], [ 0, %bb.k ], [ 0, %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_objectEPNS_10ZSTD_cwkspEm.exit31 ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.3.8.insert.insert.i, ptr %i.af, align 8, !tbaa !10
  br label %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_objectEPNS_10ZSTD_cwkspEm.exit.thread

_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_objectEPNS_10ZSTD_cwkspEm.exit.thread: ; preds = %bb.b, %bb.c, %bb.a, %_ZN11duckdb_zstdL10ZSTD_cpuidEv.exit
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.a ], [ null, %bb.c ], [ %0, %_ZN11duckdb_zstdL10ZSTD_cpuidEv.exit ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: mustprogress uwtable
define noundef range(i64 -64, 1) i64 @_ZN11duckdb_zstd13ZSTD_freeCCtxEPNS_11ZSTD_CCtx_sE(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 904
  %i.c = load i64, ptr %i.b, align 8, !tbaa !65
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.c, label %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !73
  %.not.i = icmp ugt ptr %i.e, %0
  br i1 %.not.i, label %_ZN11duckdb_zstdL22ZSTD_cwksp_owns_bufferEPKNS_10ZSTD_cwkspEPKv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !74
  %i.h = icmp uge ptr %0, %i.g
  br label %_ZN11duckdb_zstdL22ZSTD_cwksp_owns_bufferEPKNS_10ZSTD_cwkspEPKv.exit

_ZN11duckdb_zstdL22ZSTD_cwksp_owns_bufferEPKNS_10ZSTD_cwkspEPKv.exit: ; preds = %bb.c, %bb.d
  %.not9 = phi i1 [ true, %bb.c ], [ %i.h, %bb.d ]
  tail call fastcc void @_ZN11duckdb_zstdL18ZSTD_clearAllDictsEPNS_11ZSTD_CCtx_sE(ptr noundef nonnull %0)
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 2 uses
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !62 ; 2 uses
  %.sroa.34.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 888 ; 2 uses
  %.sroa.34.0.copyload.i = load ptr, ptr %.sroa.34.0..sroa_idx.i, align 8, !tbaa !62
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !73   ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.d, i8 0, i64 72, i1 false)
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %_ZN11duckdb_zstdL20ZSTD_freeCCtxContentEPNS_11ZSTD_CCtx_sE.exit, label %bb.e

bb.e:                                             ; preds = %_ZN11duckdb_zstdL22ZSTD_cwksp_owns_bufferEPKNS_10ZSTD_cwkspEPKv.exit
  %.not4.i.i.i = icmp eq ptr %.sroa.2.0.copyload.i, null
  br i1 %.not4.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void %.sroa.2.0.copyload.i(ptr noundef %.sroa.34.0.copyload.i, ptr noundef nonnull %i.i), !inline_history !75
  br label %_ZN11duckdb_zstdL20ZSTD_freeCCtxContentEPNS_11ZSTD_CCtx_sE.exit

bb.g:                                             ; preds = %bb.e
  tail call void @free(ptr noundef nonnull %i.i) #27
  br label %_ZN11duckdb_zstdL20ZSTD_freeCCtxContentEPNS_11ZSTD_CCtx_sE.exit

_ZN11duckdb_zstdL20ZSTD_freeCCtxContentEPNS_11ZSTD_CCtx_sE.exit: ; preds = %_ZN11duckdb_zstdL22ZSTD_cwksp_owns_bufferEPKNS_10ZSTD_cwkspEPKv.exit, %bb.f, %bb.g
  br i1 %.not9, label %bb.h, label %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit

bb.h:                                             ; preds = %_ZN11duckdb_zstdL20ZSTD_freeCCtxContentEPNS_11ZSTD_CCtx_sE.exit
  %.sroa.1.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !62 ; 2 uses
  %.not4.i = icmp eq ptr %.sroa.1.0.copyload, null
  br i1 %.not4.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.34.0..sroa_idx.i, align 8, !tbaa !62
  tail call void %.sroa.1.0.copyload(ptr noundef %.sroa.2.0.copyload, ptr noundef nonnull %0), !inline_history !76
  br label %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit

bb.j:                                             ; preds = %bb.h
  tail call void @free(ptr noundef nonnull %0) #27
  br label %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit

_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit: ; preds = %bb.j, %bb.i, %_ZN11duckdb_zstdL20ZSTD_freeCCtxContentEPNS_11ZSTD_CCtx_sE.exit, %bb.b, %bb.a
  %.0 = phi i64 [ -64, %bb.b ], [ 0, %bb.a ], [ 0, %_ZN11duckdb_zstdL20ZSTD_freeCCtxContentEPNS_11ZSTD_CCtx_sE.exit ], [ 0, %bb.i ], [ 0, %bb.j ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_ZN11duckdb_zstd16ZSTD_sizeof_CCtxEPKNS_11ZSTD_CCtx_sE(ptr nofree noundef readonly captures(address) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !77   ; 2 uses
  %i.d = icmp eq ptr %i.c, %0
  %i.e = select i1 %i.d, i64 0, i64 5248
  %i.f = getelementptr i8, ptr %0, i64 688
  %.val7 = load ptr, ptr %i.f, align 8, !tbaa !74
  %i.g = ptrtoint ptr %.val7 to i64
  %i.h = ptrtoint ptr %i.c to i64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 3656
  %.sroa.0.0.copyload = load ptr, ptr %i.i, align 8, !tbaa !62
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 3672
  %.sroa.28.0.copyload = load i64, ptr %.sroa.28.0..sroa_idx, align 8, !tbaa !78
  %.sroa.39.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 3688
  %.sroa.39.0.copyload = load ptr, ptr %.sroa.39.0..sroa_idx, align 8, !tbaa !79 ; 4 uses
  %i.j = icmp eq ptr %.sroa.39.0.copyload, null
  br i1 %i.j, label %_ZN11duckdb_zstdL21ZSTD_sizeof_localDictENS_14ZSTD_localDictE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.39.0.copyload, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !80   ; 2 uses
  %i.m = icmp eq ptr %i.l, %.sroa.39.0.copyload
  %i.n = select i1 %i.m, i64 0, i64 6080
  %i.o = getelementptr i8, ptr %.sroa.39.0.copyload, i64 40
  %.val5.i.i = load ptr, ptr %i.o, align 8, !tbaa !74
  %i.p = ptrtoint ptr %.val5.i.i to i64
  %i.q = ptrtoint ptr %i.l to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = add i64 %i.r, %i.n
  br label %_ZN11duckdb_zstdL21ZSTD_sizeof_localDictENS_14ZSTD_localDictE.exit

_ZN11duckdb_zstdL21ZSTD_sizeof_localDictENS_14ZSTD_localDictE.exit: ; preds = %bb.b, %bb.c
  %.0.i.i = phi i64 [ %i.s, %bb.c ], [ 0, %bb.b ]
  %.not.i = icmp eq ptr %.sroa.0.0.copyload, null
  %i.t = select i1 %.not.i, i64 0, i64 %.sroa.28.0.copyload
  %i.u = sub i64 %i.g, %i.h
  %i.v = add i64 %i.u, %i.e
  %i.w = add i64 %i.v, %i.t
  %i.x = add i64 %i.w, %.0.i.i
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZN11duckdb_zstdL21ZSTD_sizeof_localDictENS_14ZSTD_localDictE.exit
  %.0 = phi i64 [ %i.x, %_ZN11duckdb_zstdL21ZSTD_sizeof_localDictENS_14ZSTD_localDictE.exit ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_ZN11duckdb_zstd19ZSTD_sizeof_CStreamEPKNS_11ZSTD_CCtx_sE(ptr nofree noundef readonly captures(address) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %_ZN11duckdb_zstd16ZSTD_sizeof_CCtxEPKNS_11ZSTD_CCtx_sE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !77   ; 2 uses
  %i.d = icmp eq ptr %i.c, %0
  %i.e = select i1 %i.d, i64 0, i64 5248
  %i.f = getelementptr i8, ptr %0, i64 688
  %.val7.i = load ptr, ptr %i.f, align 8, !tbaa !74
  %i.g = ptrtoint ptr %.val7.i to i64
  %i.h = ptrtoint ptr %i.c to i64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 3656
  %.sroa.0.0.copyload.i = load ptr, ptr %i.i, align 8, !tbaa !62
  %.sroa.28.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 3672
  %.sroa.28.0.copyload.i = load i64, ptr %.sroa.28.0..sroa_idx.i, align 8, !tbaa !78
  %.sroa.39.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 3688
  %.sroa.39.0.copyload.i = load ptr, ptr %.sroa.39.0..sroa_idx.i, align 8, !tbaa !79 ; 4 uses
  %i.j = icmp eq ptr %.sroa.39.0.copyload.i, null
  br i1 %i.j, label %_ZN11duckdb_zstdL21ZSTD_sizeof_localDictENS_14ZSTD_localDictE.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.39.0.copyload.i, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !80   ; 2 uses
  %i.m = icmp eq ptr %i.l, %.sroa.39.0.copyload.i
  %i.n = select i1 %i.m, i64 0, i64 6080
  %i.o = getelementptr i8, ptr %.sroa.39.0.copyload.i, i64 40
  %.val5.i.i.i = load ptr, ptr %i.o, align 8, !tbaa !74
  %i.p = ptrtoint ptr %.val5.i.i.i to i64
  %i.q = ptrtoint ptr %i.l to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = add i64 %i.r, %i.n
  br label %_ZN11duckdb_zstdL21ZSTD_sizeof_localDictENS_14ZSTD_localDictE.exit.i

_ZN11duckdb_zstdL21ZSTD_sizeof_localDictENS_14ZSTD_localDictE.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i.i = phi i64 [ %i.s, %bb.c ], [ 0, %bb.b ]
  %.not.i.i = icmp eq ptr %.sroa.0.0.copyload.i, null
  %i.t = select i1 %.not.i.i, i64 0, i64 %.sroa.28.0.copyload.i
  %i.u = sub i64 %i.g, %i.h
  %i.v = add i64 %i.u, %i.e
  %i.w = add i64 %i.v, %i.t
  %i.x = add i64 %i.w, %.0.i.i.i
  br label %_ZN11duckdb_zstd16ZSTD_sizeof_CCtxEPKNS_11ZSTD_CCtx_sE.exit
end_hunk_0
begin_hunk_1_@_ZN11duckdb_zstd33ZSTD_compress_usingCDict_advancedEPNS_11ZSTD_CCtx_sEPvmPKvmPKNS_12ZSTD_CDict_sENS_20ZSTD_frameParametersE:bb.a

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN11duckdb_zstd24ZSTD_compress_usingCDictEPNS_11ZSTD_CCtx_sEPvmPKvmPKNS_12ZSTD_CDict_sE(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc noundef i64 @_ZN11duckdb_zstdL38ZSTD_compressBegin_usingCDict_internalEPNS_11ZSTD_CCtx_sEPKNS_12ZSTD_CDict_sENS_20ZSTD_frameParametersEy(ptr noundef %0, ptr noundef %5, i64 1, i32 0, i64 noundef %4) ; 2 uses
  %i.b = icmp ult i64 %i.a, -119
  br i1 %i.b, label %bb.b, label %_ZN11duckdb_zstdL33ZSTD_compress_usingCDict_internalEPNS_11ZSTD_CCtx_sEPvmPKvmPKNS_12ZSTD_CDict_sENS_20ZSTD_frameParametersE.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef i64 @_ZN11duckdb_zstd23ZSTD_compressEnd_publicEPNS_11ZSTD_CCtx_sEPvmPKvm(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4)
  br label %_ZN11duckdb_zstdL33ZSTD_compress_usingCDict_internalEPNS_11ZSTD_CCtx_sEPvmPKvmPKNS_12ZSTD_CDict_sENS_20ZSTD_frameParametersE.exit

_ZN11duckdb_zstdL33ZSTD_compress_usingCDict_internalEPNS_11ZSTD_CCtx_sEPvmPKvmPKNS_12ZSTD_CDict_sENS_20ZSTD_frameParametersE.exit: ; preds = %bb.a, %bb.b
  %.1.i = phi i64 [ %i.c, %bb.b ], [ %i.a, %bb.a ]
  ret i64 %.1.i
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN11duckdb_zstd18ZSTD_createCStreamEv() local_unnamed_addr #2 {
_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit.i.i:
  %calloc = tail call dereferenceable_or_null(5248) ptr @calloc(i64 1, i64 5248) ; 7 uses
  %.not6.i.i = icmp eq ptr %calloc, null
  br i1 %.not6.i.i, label %_ZN11duckdb_zstd27ZSTD_createCStream_advancedENS_14ZSTD_customMemE.exit, label %bb.a

bb.a:                                             ; preds = %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit.i.i
  %i.a = tail call i32 asm "cpuid", "={ax},{ax},~{ebx},~{ecx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 0) #25, !srcloc !7 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.a, 0
  br i1 %.not.i.i.i.i.i, label %_ZN11duckdb_zstdL13ZSTD_initCCtxEPNS_11ZSTD_CCtx_sENS_14ZSTD_customMemE.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call { i32, i32, i32 } asm "cpuid", "={ax},={cx},={dx},{ax},~{ebx},~{dirflag},~{fpsr},~{flags}"(i32 1) #25, !srcloc !8 ; 0 uses
  %i.c = icmp ugt i32 %i.a, 6
  br i1 %i.c, label %_ZN11duckdb_zstdL10ZSTD_cpuidEv.exit.i.i.i.i, label %_ZN11duckdb_zstdL13ZSTD_initCCtxEPNS_11ZSTD_CCtx_sENS_14ZSTD_customMemE.exit.i.i

_ZN11duckdb_zstdL10ZSTD_cpuidEv.exit.i.i.i.i:     ; preds = %bb.b
  %i.d = tail call { i32, i32, i32 } asm "cpuid", "={ax},={bx},={cx},{ax},{cx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #25, !srcloc !9
  %i.e = extractvalue { i32, i32, i32 } %i.d, 1   ; 2 uses
  %i.f = and i32 %i.e, 8
  %.not.i.i.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i.i.i, label %_ZN11duckdb_zstdL13ZSTD_initCCtxEPNS_11ZSTD_CCtx_sENS_14ZSTD_customMemE.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN11duckdb_zstdL10ZSTD_cpuidEv.exit.i.i.i.i
  %i.g = lshr i32 %i.e, 8
  %i.h = and i32 %i.g, 1
  br label %_ZN11duckdb_zstdL13ZSTD_initCCtxEPNS_11ZSTD_CCtx_sENS_14ZSTD_customMemE.exit.i.i

_ZN11duckdb_zstdL13ZSTD_initCCtxEPNS_11ZSTD_CCtx_sENS_14ZSTD_customMemE.exit.i.i: ; preds = %bb.c, %_ZN11duckdb_zstdL10ZSTD_cpuidEv.exit.i.i.i.i, %bb.b, %bb.a
  %i.i = phi i32 [ 0, %_ZN11duckdb_zstdL10ZSTD_cpuidEv.exit.i.i.i.i ], [ %i.h, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  %i.j = getelementptr inbounds nuw i8, ptr %calloc, i64 8
  store i32 %i.i, ptr %i.j, align 8, !tbaa !10
  tail call fastcc void @_ZN11duckdb_zstdL18ZSTD_clearAllDictsEPNS_11ZSTD_CCtx_sE(ptr noundef nonnull %calloc)
  %i.k = getelementptr inbounds nuw i8, ptr %calloc, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.k, i8 0, i64 216, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %calloc, i64 60
  store i32 3, ptr %i.l, align 4, !tbaa !58
  %i.m = getelementptr inbounds nuw i8, ptr %calloc, i64 48
  store i32 1, ptr %i.m, align 8, !tbaa !59
  br label %_ZN11duckdb_zstd27ZSTD_createCStream_advancedENS_14ZSTD_customMemE.exit

_ZN11duckdb_zstd27ZSTD_createCStream_advancedENS_14ZSTD_customMemE.exit: ; preds = %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit.i.i, %_ZN11duckdb_zstdL13ZSTD_initCCtxEPNS_11ZSTD_CCtx_sENS_14ZSTD_customMemE.exit.i.i
  ret ptr %calloc
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN11duckdb_zstd27ZSTD_createCStream_advancedENS_14ZSTD_customMemE(ptr nofree noundef readonly byval(%"struct.duckdb_zstd::ZSTD_customMem") align 8 captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %.sroa.06.0.copyload = load ptr, ptr %0, align 8, !tbaa !62 ; 3 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !62 ; 2 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !62 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.06.0.copyload, null ; 2 uses
  %.not5.i = icmp eq ptr %.sroa.2.0.copyload, null
  %i.a = xor i1 %.not.i, %.not5.i
  br i1 %i.a, label %_ZN11duckdb_zstd24ZSTD_createCCtx_advancedENS_14ZSTD_customMemE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = tail call noundef ptr %.sroa.06.0.copyload(ptr noundef %.sroa.3.0.copyload, i64 noundef 5248), !inline_history !361
  br label %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit.i

bb.d:                                             ; preds = %bb.b
  %i.c = tail call noalias dereferenceable_or_null(5248) ptr @malloc(i64 noundef 5248) #26
  br label %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit.i

_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit.i: ; preds = %bb.d, %bb.c
  %.0.i.i = phi ptr [ %i.b, %bb.c ], [ %i.c, %bb.d ] ; 11 uses
  %.not6.i = icmp eq ptr %.0.i.i, null
  br i1 %.not6.i, label %_ZN11duckdb_zstd24ZSTD_createCCtx_advancedENS_14ZSTD_customMemE.exit, label %bb.e

bb.e:                                             ; preds = %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5248) %.0.i.i, i8 0, i64 5248, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 872
  store ptr %.sroa.06.0.copyload, ptr %i.d, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 880
  store ptr %.sroa.2.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 888
  store ptr %.sroa.3.0.copyload, ptr %.sroa.6.0..sroa_idx, align 8
  %i.e = tail call i32 asm "cpuid", "={ax},{ax},~{ebx},~{ecx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 0) #25, !srcloc !7 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.i.i, label %_ZN11duckdb_zstdL13ZSTD_initCCtxEPNS_11ZSTD_CCtx_sENS_14ZSTD_customMemE.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = tail call { i32, i32, i32 } asm "cpuid", "={ax},={cx},={dx},{ax},~{ebx},~{dirflag},~{fpsr},~{flags}"(i32 1) #25, !srcloc !8 ; 0 uses
  %i.g = icmp ugt i32 %i.e, 6
  br i1 %i.g, label %_ZN11duckdb_zstdL10ZSTD_cpuidEv.exit.i.i.i, label %_ZN11duckdb_zstdL13ZSTD_initCCtxEPNS_11ZSTD_CCtx_sENS_14ZSTD_customMemE.exit.i

_ZN11duckdb_zstdL10ZSTD_cpuidEv.exit.i.i.i:       ; preds = %bb.f
  %i.h = tail call { i32, i32, i32 } asm "cpuid", "={ax},={bx},={cx},{ax},{cx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #25, !srcloc !9
  %i.i = extractvalue { i32, i32, i32 } %i.h, 1   ; 2 uses
  %i.j = and i32 %i.i, 8
  %.not.i.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i.i.i, label %_ZN11duckdb_zstdL13ZSTD_initCCtxEPNS_11ZSTD_CCtx_sENS_14ZSTD_customMemE.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZN11duckdb_zstdL10ZSTD_cpuidEv.exit.i.i.i
  %i.k = lshr i32 %i.i, 8
  %i.l = and i32 %i.k, 1
  br label %_ZN11duckdb_zstdL13ZSTD_initCCtxEPNS_11ZSTD_CCtx_sENS_14ZSTD_customMemE.exit.i

_ZN11duckdb_zstdL13ZSTD_initCCtxEPNS_11ZSTD_CCtx_sENS_14ZSTD_customMemE.exit.i: ; preds = %bb.g, %_ZN11duckdb_zstdL10ZSTD_cpuidEv.exit.i.i.i, %bb.f, %bb.e
  %i.m = phi i32 [ 0, %_ZN11duckdb_zstdL10ZSTD_cpuidEv.exit.i.i.i ], [ %i.l, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ]
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  store i32 %i.m, ptr %i.n, align 8, !tbaa !10
  tail call fastcc void @_ZN11duckdb_zstdL18ZSTD_clearAllDictsEPNS_11ZSTD_CCtx_sE(ptr noundef nonnull %.0.i.i)
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.o, i8 0, i64 216, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 60
  store i32 3, ptr %i.p, align 4, !tbaa !58
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 48
  store i32 1, ptr %i.q, align 8, !tbaa !59
  br label %_ZN11duckdb_zstd24ZSTD_createCCtx_advancedENS_14ZSTD_customMemE.exit

_ZN11duckdb_zstd24ZSTD_createCCtx_advancedENS_14ZSTD_customMemE.exit: ; preds = %bb.a, %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit.i, %_ZN11duckdb_zstdL13ZSTD_initCCtxEPNS_11ZSTD_CCtx_sENS_14ZSTD_customMemE.exit.i
  %.1.i = phi ptr [ null, %bb.a ], [ %.0.i.i, %_ZN11duckdb_zstdL13ZSTD_initCCtxEPNS_11ZSTD_CCtx_sENS_14ZSTD_customMemE.exit.i ], [ null, %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit.i ]
  ret ptr %.1.i
}

; Function Attrs: mustprogress nounwind memory(argmem: write) uwtable
define noundef ptr @_ZN11duckdb_zstd22ZSTD_initStaticCStreamEPvm(ptr noundef %0, i64 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp ugt i64 %1, 5248
  %i.b = ptrtoint ptr %0 to i64
  %i.c = and i64 %i.b, 7
  %.not.i = icmp eq i64 %i.c, 0
  %or.cond.i = and i1 %i.a, %.not.i
  br i1 %or.cond.i, label %bb.b, label %_ZN11duckdb_zstd19ZSTD_initStaticCCtxEPvm.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 5248 ; 6 uses
  %i.e = icmp eq ptr %0, null
  br i1 %i.e, label %_ZN11duckdb_zstd19ZSTD_initStaticCCtxEPvm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 4 uses
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = and i64 %i.g, -64                        ; 2 uses
  %i.i = inttoptr i64 %i.h to ptr                 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5248) %0, i8 0, i64 5248, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 680
  store ptr %0, ptr %i.j, align 8, !tbaa !62
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 688
  store ptr %i.f, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !62
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 696 ; 4 uses
  store ptr %i.d, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !62
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 4 uses
  store ptr %i.d, ptr %.sroa.10.0..sroa_idx.i, align 8, !tbaa !62
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 4 uses
  store ptr %i.d, ptr %.sroa.12.0..sroa_idx.i, align 8, !tbaa !62
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 720
  store ptr %i.i, ptr %.sroa.14.0..sroa_idx.i, align 8, !tbaa !62
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 728
  store ptr %i.i, ptr %.sroa.15.0..sroa_idx.i, align 8, !tbaa !62
  %.sroa.16.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 736 ; 3 uses
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 748
  store i32 1, ptr %.sroa.21.0..sroa_idx.i, align 4, !tbaa !64
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 904
  store i64 %1, ptr %i.k, align 8, !tbaa !65
  %i.l = ptrtoint ptr %i.d to i64
  %i.m = sub i64 %i.h, %i.l
  %i.n = icmp ult i64 %i.m, 20184
  br i1 %i.n, label %_ZN11duckdb_zstd19ZSTD_initStaticCCtxEPvm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = icmp samesign ult i64 %1, 10880
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %.sroa.16.0..sroa_idx.i, align 8, !tbaa !66
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 10880 ; 4 uses
  store ptr %i.p, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !67
  store ptr %i.p, ptr %.sroa.10.0..sroa_idx.i, align 8, !tbaa !68
  store ptr %i.p, ptr %.sroa.12.0..sroa_idx.i, align 8, !tbaa !69
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.q = phi ptr [ %i.d, %bb.e ], [ %i.p, %bb.f ] ; 4 uses
  %.0.i24.i = phi ptr [ null, %bb.e ], [ %i.d, %bb.f ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 3200
  store ptr %.0.i24.i, ptr %i.r, align 8, !tbaa !70
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 5632 ; 5 uses
  %i.t = icmp ugt ptr %i.s, %i.f
  br i1 %i.t, label %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_objectEPNS_10ZSTD_cwkspEm.exit28.thread41.i, label %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_objectEPNS_10ZSTD_cwkspEm.exit28.thread.i

_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_objectEPNS_10ZSTD_cwkspEm.exit28.thread41.i: ; preds = %bb.g
  store i8 1, ptr %.sroa.16.0..sroa_idx.i, align 8, !tbaa !66
  br label %bb.h

_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_objectEPNS_10ZSTD_cwkspEm.exit28.thread.i: ; preds = %bb.g
  store ptr %i.s, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !67
  store ptr %i.s, ptr %.sroa.10.0..sroa_idx.i, align 8, !tbaa !68
  store ptr %i.s, ptr %.sroa.12.0..sroa_idx.i, align 8, !tbaa !69
  br label %bb.h

bb.h:                                             ; preds = %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_objectEPNS_10ZSTD_cwkspEm.exit28.thread.i, %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_objectEPNS_10ZSTD_cwkspEm.exit28.thread41.i
  %.sink48.i = phi i64 [ 8920, %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_objectEPNS_10ZSTD_cwkspEm.exit28.thread41.i ], [ 14552, %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_objectEPNS_10ZSTD_cwkspEm.exit28.thread.i ]
  %.sink.i = phi ptr [ null, %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_objectEPNS_10ZSTD_cwkspEm.exit28.thread41.i ], [ %i.q, %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_objectEPNS_10ZSTD_cwkspEm.exit28.thread.i ]
  %i.u = phi ptr [ %i.q, %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_objectEPNS_10ZSTD_cwkspEm.exit28.thread41.i ], [ %i.s, %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_objectEPNS_10ZSTD_cwkspEm.exit28.thread.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sink48.i ; 4 uses
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 3208
  store ptr %.sink.i, ptr %2, align 8, !tbaa !71
  %i.w = icmp ugt ptr %i.v, %i.f
  br i1 %i.w, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i8 1, ptr %.sroa.16.0..sroa_idx.i, align 8, !tbaa !66
  br label %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_objectEPNS_10ZSTD_cwkspEm.exit31.i

bb.j:                                             ; preds = %bb.h
  store ptr %i.v, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !67
  store ptr %i.v, ptr %.sroa.10.0..sroa_idx.i, align 8, !tbaa !68
  store ptr %i.v, ptr %.sroa.12.0..sroa_idx.i, align 8, !tbaa !69
  br label %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_objectEPNS_10ZSTD_cwkspEm.exit31.i

_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_objectEPNS_10ZSTD_cwkspEm.exit31.i: ; preds = %bb.j, %bb.i
  %.0.i30.i = phi ptr [ null, %bb.i ], [ %i.u, %bb.j ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 3520
  store ptr %.0.i30.i, ptr %i.x, align 8, !tbaa !72
  %i.y = tail call i32 asm "cpuid", "={ax},{ax},~{ebx},~{ecx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 0) #25, !srcloc !7 ; 2 uses
  %.not.i32.i = icmp eq i32 %i.y, 0
  br i1 %.not.i32.i, label %_ZN11duckdb_zstdL10ZSTD_cpuidEv.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_objectEPNS_10ZSTD_cwkspEm.exit31.i
  %i.z = tail call { i32, i32, i32 } asm "cpuid", "={ax},={cx},={dx},{ax},~{ebx},~{dirflag},~{fpsr},~{flags}"(i32 1) #25, !srcloc !8 ; 0 uses
  %i.aa = icmp ugt i32 %i.y, 6
  br i1 %i.aa, label %bb.l, label %_ZN11duckdb_zstdL10ZSTD_cpuidEv.exit.i

bb.l:                                             ; preds = %bb.k
  %i.ab = tail call { i32, i32, i32 } asm "cpuid", "={ax},={bx},={cx},{ax},{cx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #25, !srcloc !9
  %i.ac = extractvalue { i32, i32, i32 } %i.ab, 1
  %i.ad = lshr i32 %i.ac, 8
  %i.ae = and i32 %i.ad, 1
  br label %_ZN11duckdb_zstdL10ZSTD_cpuidEv.exit.i

_ZN11duckdb_zstdL10ZSTD_cpuidEv.exit.i:           ; preds = %bb.l, %bb.k, %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_objectEPNS_10ZSTD_cwkspEm.exit31.i
  %.sroa.3.8.insert.insert.i.i = phi i32 [ %i.ae, %bb.l ], [ 0, %bb.k ], [ 0, %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_objectEPNS_10ZSTD_cwkspEm.exit31.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.3.8.insert.insert.i.i, ptr %i.af, align 8, !tbaa !10
  br label %_ZN11duckdb_zstd19ZSTD_initStaticCCtxEPvm.exit

_ZN11duckdb_zstd19ZSTD_initStaticCCtxEPvm.exit:   ; preds = %bb.a, %bb.b, %bb.c, %_ZN11duckdb_zstdL10ZSTD_cpuidEv.exit.i
  %.0.i = phi ptr [ null, %bb.b ], [ null, %bb.a ], [ null, %bb.c ], [ %0, %_ZN11duckdb_zstdL10ZSTD_cpuidEv.exit.i ]
  ret ptr %.0.i
}

; Function Attrs: mustprogress uwtable
define noundef range(i64 -64, 1) i64 @_ZN11duckdb_zstd16ZSTD_freeCStreamEPNS_11ZSTD_CCtx_sE(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %_ZN11duckdb_zstd13ZSTD_freeCCtxEPNS_11ZSTD_CCtx_sE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 904
  %i.c = load i64, ptr %i.b, align 8, !tbaa !65
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %bb.c, label %_ZN11duckdb_zstd13ZSTD_freeCCtxEPNS_11ZSTD_CCtx_sE.exit

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !73
  %.not.i.i = icmp ugt ptr %i.e, %0
  br i1 %.not.i.i, label %_ZN11duckdb_zstdL22ZSTD_cwksp_owns_bufferEPKNS_10ZSTD_cwkspEPKv.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !74
  %i.h = icmp uge ptr %0, %i.g
  br label %_ZN11duckdb_zstdL22ZSTD_cwksp_owns_bufferEPKNS_10ZSTD_cwkspEPKv.exit.i

_ZN11duckdb_zstdL22ZSTD_cwksp_owns_bufferEPKNS_10ZSTD_cwkspEPKv.exit.i: ; preds = %bb.d, %bb.c
  %.not9.i = phi i1 [ true, %bb.c ], [ %i.h, %bb.d ]
  tail call fastcc void @_ZN11duckdb_zstdL18ZSTD_clearAllDictsEPNS_11ZSTD_CCtx_sE(ptr noundef nonnull %0)
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 2 uses
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !62 ; 2 uses
  %.sroa.34.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 888 ; 2 uses
  %.sroa.34.0.copyload.i.i = load ptr, ptr %.sroa.34.0..sroa_idx.i.i, align 8, !tbaa !62
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !73   ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.d, i8 0, i64 72, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i, label %_ZN11duckdb_zstdL20ZSTD_freeCCtxContentEPNS_11ZSTD_CCtx_sE.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZN11duckdb_zstdL22ZSTD_cwksp_owns_bufferEPKNS_10ZSTD_cwkspEPKv.exit.i
  %.not4.i.i.i.i = icmp eq ptr %.sroa.2.0.copyload.i.i, null
  br i1 %.not4.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void %.sroa.2.0.copyload.i.i(ptr noundef %.sroa.34.0.copyload.i.i, ptr noundef nonnull %i.i), !inline_history !362
  br label %_ZN11duckdb_zstdL20ZSTD_freeCCtxContentEPNS_11ZSTD_CCtx_sE.exit.i

bb.g:                                             ; preds = %bb.e
  tail call void @free(ptr noundef nonnull %i.i) #27
  br label %_ZN11duckdb_zstdL20ZSTD_freeCCtxContentEPNS_11ZSTD_CCtx_sE.exit.i

_ZN11duckdb_zstdL20ZSTD_freeCCtxContentEPNS_11ZSTD_CCtx_sE.exit.i: ; preds = %bb.g, %bb.f, %_ZN11duckdb_zstdL22ZSTD_cwksp_owns_bufferEPKNS_10ZSTD_cwkspEPKv.exit.i
  br i1 %.not9.i, label %bb.h, label %_ZN11duckdb_zstd13ZSTD_freeCCtxEPNS_11ZSTD_CCtx_sE.exit

bb.h:                                             ; preds = %_ZN11duckdb_zstdL20ZSTD_freeCCtxContentEPNS_11ZSTD_CCtx_sE.exit.i
  %.sroa.1.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !62 ; 2 uses
  %.not4.i.i = icmp eq ptr %.sroa.1.0.copyload.i, null
  br i1 %.not4.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.34.0..sroa_idx.i.i, align 8, !tbaa !62
  tail call void %.sroa.1.0.copyload.i(ptr noundef %.sroa.2.0.copyload.i, ptr noundef nonnull %0), !inline_history !363
  br label %_ZN11duckdb_zstd13ZSTD_freeCCtxEPNS_11ZSTD_CCtx_sE.exit

bb.j:                                             ; preds = %bb.h
  tail call void @free(ptr noundef nonnull %0) #27
  br label %_ZN11duckdb_zstd13ZSTD_freeCCtxEPNS_11ZSTD_CCtx_sE.exit

_ZN11duckdb_zstd13ZSTD_freeCCtxEPNS_11ZSTD_CCtx_sE.exit: ; preds = %bb.a, %bb.b, %_ZN11duckdb_zstdL20ZSTD_freeCCtxContentEPNS_11ZSTD_CCtx_sE.exit.i, %bb.i, %bb.j
  %.0.i = phi i64 [ -64, %bb.b ], [ 0, %bb.a ], [ 0, %_ZN11duckdb_zstdL20ZSTD_freeCCtxContentEPNS_11ZSTD_CCtx_sE.exit.i ], [ 0, %bb.i ], [ 0, %bb.j ]
  ret i64 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i64 @_ZN11duckdb_zstd18ZSTD_CStreamInSizeEv() local_unnamed_addr #0 {
bb.a:
  ret i64 131072
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i64 8, 7) i64 @_ZN11duckdb_zstd19ZSTD_CStreamOutSizeEv() local_unnamed_addr #0 {
bb.a:
  ret i64 131591
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef range(i64 -60, 1) i64 @_ZN11duckdb_zstd17ZSTD_resetCStreamEPNS_11ZSTD_CCtx_sEy(ptr nofree noundef writeonly captures(none) initializes((760, 768), (3608, 3612)) %0, i64 noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 3608
  store i32 0, ptr %i.b, align 8, !tbaa !102
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.d = add i64 %1, 1
  %i.e = select i1 %i.a, i64 0, i64 %i.d
  store i64 %i.e, ptr %i.c, align 8, !tbaa !139
  ret i64 0
}

; Function Attrs: mustprogress uwtable
define noundef range(i64 -64, 1) i64 @_ZN11duckdb_zstd25ZSTD_initCStream_internalEPNS_11ZSTD_CCtx_sEPKvmPKNS_12ZSTD_CDict_sEPKNS_18ZSTD_CCtx_params_sEy(ptr nofree noundef captures(none) initializes((16, 232), (760, 768), (3608, 3612), (3664, 3688), (3696, 3728)) %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, i64 noundef %5) local_unnamed_addr #2 {
_ZN11duckdb_zstd27ZSTD_CCtx_setPledgedSrcSizeEPNS_11ZSTD_CCtx_sEy.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3608
  store i32 0, ptr %i.a, align 8, !tbaa !102
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.c = add i64 %5, 1
  store i64 %i.c, ptr %i.b, align 8, !tbaa !139
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.d, ptr noundef nonnull align 8 dereferenceable(216) %4, i64 216, i1 false), !tbaa.struct !133
  %.not28 = icmp eq ptr %1, null
  tail call fastcc void @_ZN11duckdb_zstdL18ZSTD_clearAllDictsEPNS_11ZSTD_CCtx_sE(ptr noundef nonnull %0)
  br i1 %.not28, label %_ZN11duckdb_zstd18ZSTD_CCtx_refCDictEPNS_11ZSTD_CCtx_sEPKNS_12ZSTD_CDict_sE.exit, label %bb.a

bb.a:                                             ; preds = %_ZN11duckdb_zstd27ZSTD_CCtx_setPledgedSrcSizeEPNS_11ZSTD_CCtx_sEy.exit
  %i.e = icmp eq i64 %2, 0
  br i1 %i.e, label %_ZN11duckdb_zstd24ZSTD_CCtx_loadDictionaryEPNS_11ZSTD_CCtx_sEPKvm.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 904
  %i.g = load i64, ptr %i.f, align 8, !tbaa !65
  %.not28.i.i = icmp eq i64 %i.g, 0
  br i1 %.not28.i.i, label %bb.c, label %_ZN11duckdb_zstd24ZSTD_CCtx_loadDictionaryEPNS_11ZSTD_CCtx_sEPKvm.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 872
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.h, align 8, !tbaa !62 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.0.0.copyload.i.i, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.230.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 888
  %.sroa.230.0.copyload.i.i = load ptr, ptr %.sroa.230.0..sroa_idx.i.i, align 8, !tbaa !62
  %i.i = tail call noundef ptr %.sroa.0.0.copyload.i.i(ptr noundef %.sroa.230.0.copyload.i.i, i64 noundef %2), !inline_history !364
  br label %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit.i.i

bb.e:                                             ; preds = %bb.c
  %i.j = tail call noalias ptr @malloc(i64 noundef %2) #26
  br label %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit.i.i

_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit.i.i: ; preds = %bb.e, %bb.d
  %.0.i.i.i = phi ptr [ %i.i, %bb.d ], [ %i.j, %bb.e ] ; 4 uses
  %i.k = icmp eq ptr %.0.i.i.i, null
  br i1 %i.k, label %_ZN11duckdb_zstd24ZSTD_CCtx_loadDictionaryEPNS_11ZSTD_CCtx_sEPKvm.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0.i.i.i, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 3656
  store ptr %.0.i.i.i, ptr %i.l, align 8, !tbaa !140
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 3664
  store ptr %.0.i.i.i, ptr %i.m, align 8, !tbaa !141
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 3672
  store i64 %2, ptr %i.n, align 8, !tbaa !142
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 3680
  store i32 0, ptr %i.o, align 8, !tbaa !143
  br label %_ZN11duckdb_zstd24ZSTD_CCtx_loadDictionaryEPNS_11ZSTD_CCtx_sEPKvm.exit.thread

_ZN11duckdb_zstd18ZSTD_CCtx_refCDictEPNS_11ZSTD_CCtx_sEPKNS_12ZSTD_CDict_sE.exit: ; preds = %_ZN11duckdb_zstd27ZSTD_CCtx_setPledgedSrcSizeEPNS_11ZSTD_CCtx_sEy.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 3696
  store ptr %3, ptr %i.p, align 8, !tbaa !132
  br label %_ZN11duckdb_zstd24ZSTD_CCtx_loadDictionaryEPNS_11ZSTD_CCtx_sEPKvm.exit.thread

_ZN11duckdb_zstd24ZSTD_CCtx_loadDictionaryEPNS_11ZSTD_CCtx_sEPKvm.exit.thread: ; preds = %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit.i.i, %bb.b, %bb.f, %bb.a, %_ZN11duckdb_zstd18ZSTD_CCtx_refCDictEPNS_11ZSTD_CCtx_sEPKNS_12ZSTD_CDict_sE.exit
  %.4 = phi i64 [ 0, %bb.f ], [ 0, %bb.a ], [ 0, %_ZN11duckdb_zstd18ZSTD_CCtx_refCDictEPNS_11ZSTD_CCtx_sEPKNS_12ZSTD_CDict_sE.exit ], [ -64, %bb.b ], [ -64, %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit.i.i ]
  ret i64 %.4
}

; Function Attrs: mustprogress uwtable
define noundef range(i64 -60, 1) i64 @_ZN11duckdb_zstd36ZSTD_initCStream_usingCDict_advancedEPNS_11ZSTD_CCtx_sEPKNS_12ZSTD_CDict_sENS_20ZSTD_frameParametersEy(ptr nofree noundef captures(none) initializes((48, 60), (760, 768), (3608, 3612), (3664, 3688), (3696, 3728)) %0, ptr noundef %1, i64 %2, i32 %3, i64 noundef %4) local_unnamed_addr #2 {
_ZN11duckdb_zstd27ZSTD_CCtx_setPledgedSrcSizeEPNS_11ZSTD_CCtx_sEy.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3608
  store i32 0, ptr %i.a, align 8, !tbaa !102
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.c = add i64 %4, 1
  store i64 %i.c, ptr %i.b, align 8, !tbaa !139
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
end_hunk_1
