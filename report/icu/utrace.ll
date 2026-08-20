inline.NumInlined: 26
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 20
loop-unroll.NumUnrolledNotLatch: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@_ZL15pTraceEntryFunc = internal unnamed_addr global ptr null, align 8
@_ZL13gTraceContext = internal unnamed_addr global ptr null, align 8
@_ZL14pTraceExitFunc = internal unnamed_addr global ptr null, align 8
@_ZL8gExitFmt = internal constant [9 x i8] c"Returns.\00", align 1
@_ZL13gExitFmtValue = internal constant [12 x i8] c"Returns %d.\00", align 1
@_ZL14gExitFmtStatus = internal constant [23 x i8] c"Returns.  Status = %d.\00", align 16
@_ZL19gExitFmtValueStatus = internal constant [26 x i8] c"Returns %d.  Status = %d.\00", align 16
@_ZL17gExitFmtPtrStatus = internal constant [26 x i8] c"Returns %d.  Status = %p.\00", align 16
@_ZL14pTraceDataFunc = internal unnamed_addr global ptr null, align 8
@_ZL12utrace_level = internal unnamed_addr global i32 0, align 4
@_ZL8trFnName = internal unnamed_addr constant [3 x ptr] [ptr @.str.3, ptr @.str.4, ptr null], align 16
@_ZL11trConvNames = internal unnamed_addr constant [9 x ptr] [ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr null], align 16
@_ZL11trCollNames = internal unnamed_addr constant [10 x ptr] [ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr null], align 16
@_ZL14trResDataNames = internal unnamed_addr constant [5 x ptr] [ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr null], align 16
@.str.1 = private unnamed_addr constant [30 x i8] c"[BOGUS Trace Function Number]\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"*NULL*\00", align 1
@_ZZL14outputHexBytesliPcPiiE9gHexChars = internal unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 16
@.str.3 = private unnamed_addr constant [7 x i8] c"u_init\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"u_cleanup\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"ucnv_open\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"ucnv_openPackage\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"ucnv_openAlgorithmic\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"ucnv_clone\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"ucnv_close\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"ucnv_flushCache\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"ucnv_load\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"ucnv_unload\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"ucol_open\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"ucol_close\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"ucol_strcoll\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"ucol_getSortKey\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"ucol_getLocale\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"ucol_nextSortKeyPart\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"ucol_strcollIter\00", align 1
@.str.20 = private unnamed_addr constant [25 x i8] c"ucol_openFromShortString\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"ucol_strcollUTF8\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"resc\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"bundle-open\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"file-open\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"res-open\00", align 1
@switch.table.utrace_exit_78 = private unnamed_addr constant [19 x ptr] [ptr @_ZL8gExitFmt, ptr @_ZL13gExitFmtValue, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr @_ZL14gExitFmtStatus, ptr @_ZL19gExitFmtValueStatus, ptr @_ZL17gExitFmtPtrStatus], align 8

; Function Attrs: mustprogress uwtable
define void @utrace_entry_78(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @_ZL15pTraceEntryFunc, align 8, !tbaa !8 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @_ZL13gTraceContext, align 8, !tbaa !8
  tail call void %i.a(ptr noundef %i.b, i32 noundef %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @utrace_exit_78(i32 noundef %0, i32 noundef %1, ...) local_unnamed_addr #0 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  %i.a = load ptr, ptr @_ZL14pTraceExitFunc, align 8, !tbaa !8 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.b = icmp ult i32 %1, 19
  %switch.shifted = lshr i32 458755, %1
  %switch.lobit = trunc i32 %switch.shifted to i1
  %or.cond = select i1 %i.b, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @abort() #15
  unreachable

switch.lookup:                                    ; preds = %bb.b
  %i.c = zext nneg i32 %1 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.utrace_exit_78, i64 %i.c
  %switch.load = load ptr, ptr %switch.gep, align 8
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.d = load ptr, ptr @_ZL13gTraceContext, align 8, !tbaa !8
  call void %i.a(ptr noundef %i.d, i32 noundef %0, ptr noundef nonnull %switch.load, ptr noundef nonnull %2)
  call void @llvm.va_end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br label %bb.d

bb.d:                                             ; preds = %switch.lookup, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define void @utrace_data_78(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #0 {
bb.a:
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  %i.a = load ptr, ptr @_ZL14pTraceDataFunc, align 8, !tbaa !8 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @llvm.va_start.p0(ptr nonnull %3)
  %i.b = load ptr, ptr @_ZL13gTraceContext, align 8, !tbaa !8
  call void %i.a(ptr noundef %i.b, i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %3)
  call void @llvm.va_end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -2147483647, -2147483648) i32 @utrace_vformat_78(ptr nofree noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 31 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %.old.i = icmp sgt i32 %2, 0                    ; 28 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 22 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 11 uses
  %i.d = sext i32 %1 to i64                       ; 38 uses
  %i.e = add i32 %2, -1                           ; 3 uses
  %i.f = zext i32 %i.e to i64
  %i.g = add nuw nsw i64 %i.f, 1                  ; 5 uses
  %min.iters.check2215 = icmp ult i32 %i.e, 7
  %min.iters.check2217 = icmp ult i32 %i.e, 15
  %i.h = and i64 %i.g, 8
  %n.vec2219 = and i64 %i.g, 8589934576           ; 5 uses
  %i.i = trunc i64 %n.vec2219 to i32
  %broadcast.splatinsert2220 = insertelement <16 x i64> poison, i64 %i.d, i64 0
  %broadcast.splat2221 = shufflevector <16 x i64> %broadcast.splatinsert2220, <16 x i64> poison, <16 x i32> zeroinitializer
  %cmp.n2263 = icmp eq i64 %i.g, %n.vec2219
  %min.epilog.iters.check2270.not.not = icmp eq i64 %i.h, 0
  %n.vec2272 = and i64 %i.g, 8589934584           ; 4 uses
  %i.j = trunc i64 %n.vec2272 to i32
  %broadcast.splatinsert2273 = insertelement <8 x i64> poison, i64 %i.d, i64 0
  %broadcast.splat2274 = shufflevector <8 x i64> %broadcast.splatinsert2273, <8 x i64> poison, <8 x i32> zeroinitializer
  %cmp.n2300 = icmp eq i64 %i.g, %n.vec2272
  %min.iters.check2136 = icmp ult i32 %2, 4
  %min.iters.check2138 = icmp ult i32 %2, 16
  %i.k = and i32 %2, 12
  %n.vec2140 = and i32 %2, -16                    ; 5 uses
  %broadcast.splatinsert2141 = insertelement <16 x i32> poison, i32 %1, i64 0
  %broadcast.splat2142 = shufflevector <16 x i32> %broadcast.splatinsert2141, <16 x i32> poison, <16 x i32> zeroinitializer
  %cmp.n2184 = icmp eq i32 %2, %n.vec2140
  %min.epilog.iters.check2190 = icmp eq i32 %i.k, 0
  %n.vec2192 = and i32 %2, -4                     ; 4 uses
  %broadcast.splatinsert2193 = insertelement <4 x i32> poison, i32 %1, i64 0
  %broadcast.splat2194 = shufflevector <4 x i32> %broadcast.splatinsert2193, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n2212 = icmp eq i32 %2, %n.vec2192
  %min.iters.check2057 = icmp ult i32 %2, 4
  %min.iters.check2059 = icmp ult i32 %2, 16
  %i.l = and i32 %2, 12
  %n.vec2061 = and i32 %2, 2147483632             ; 5 uses
  %broadcast.splatinsert2062 = insertelement <16 x i32> poison, i32 %1, i64 0
  %broadcast.splat2063 = shufflevector <16 x i32> %broadcast.splatinsert2062, <16 x i32> poison, <16 x i32> zeroinitializer
  %cmp.n2105 = icmp eq i32 %2, %n.vec2061
  %min.epilog.iters.check2111 = icmp eq i32 %i.l, 0
  %n.vec2113 = and i32 %2, 2147483644             ; 4 uses
  %broadcast.splatinsert2114 = insertelement <4 x i32> poison, i32 %1, i64 0
  %broadcast.splat2115 = shufflevector <4 x i32> %broadcast.splatinsert2114, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n2133 = icmp eq i32 %2, %n.vec2113
  %min.iters.check1978 = icmp ult i32 %2, 4
  %min.iters.check1980 = icmp ult i32 %2, 16
  %i.m = and i32 %2, 12
  %n.vec1982 = and i32 %2, -16                    ; 5 uses
  %broadcast.splatinsert1983 = insertelement <16 x i32> poison, i32 %1, i64 0
  %broadcast.splat1984 = shufflevector <16 x i32> %broadcast.splatinsert1983, <16 x i32> poison, <16 x i32> zeroinitializer
  %cmp.n2026 = icmp eq i32 %2, %n.vec1982
  %min.epilog.iters.check2032 = icmp eq i32 %i.m, 0
  %n.vec2034 = and i32 %2, -4                     ; 4 uses
  %broadcast.splatinsert2035 = insertelement <4 x i32> poison, i32 %1, i64 0
  %broadcast.splat2036 = shufflevector <4 x i32> %broadcast.splatinsert2035, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n2054 = icmp eq i32 %2, %n.vec2034
  %min.iters.check1899 = icmp ult i32 %2, 4
  %min.iters.check1901 = icmp ult i32 %2, 16
  %i.n = and i32 %2, 12
  %n.vec1903 = and i32 %2, -16                    ; 5 uses
  %broadcast.splatinsert1904 = insertelement <16 x i32> poison, i32 %1, i64 0
  %broadcast.splat1905 = shufflevector <16 x i32> %broadcast.splatinsert1904, <16 x i32> poison, <16 x i32> zeroinitializer
  %cmp.n1947 = icmp eq i32 %2, %n.vec1903
  %min.epilog.iters.check1953 = icmp eq i32 %i.n, 0
  %n.vec1955 = and i32 %2, -4                     ; 4 uses
  %broadcast.splatinsert1956 = insertelement <4 x i32> poison, i32 %1, i64 0
  %broadcast.splat1957 = shufflevector <4 x i32> %broadcast.splatinsert1956, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n1975 = icmp eq i32 %2, %n.vec1955
  %min.iters.check1820 = icmp ult i32 %2, 4
  %min.iters.check1822 = icmp ult i32 %2, 16
  %i.o = and i32 %2, 12
  %n.vec1824 = and i32 %2, -16                    ; 5 uses
  %broadcast.splatinsert1825 = insertelement <16 x i32> poison, i32 %1, i64 0
  %broadcast.splat1826 = shufflevector <16 x i32> %broadcast.splatinsert1825, <16 x i32> poison, <16 x i32> zeroinitializer
  %cmp.n1868 = icmp eq i32 %2, %n.vec1824
  %min.epilog.iters.check1874 = icmp eq i32 %i.o, 0
  %n.vec1876 = and i32 %2, -4                     ; 4 uses
  %broadcast.splatinsert1877 = insertelement <4 x i32> poison, i32 %1, i64 0
  %broadcast.splat1878 = shufflevector <4 x i32> %broadcast.splatinsert1877, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n1896 = icmp eq i32 %2, %n.vec1876
  %min.iters.check1741 = icmp ult i32 %2, 4
  %min.iters.check1743 = icmp ult i32 %2, 16
  %i.p = and i32 %2, 12
  %n.vec1745 = and i32 %2, 2147483632             ; 5 uses
  %broadcast.splatinsert1746 = insertelement <16 x i32> poison, i32 %1, i64 0
  %broadcast.splat1747 = shufflevector <16 x i32> %broadcast.splatinsert1746, <16 x i32> poison, <16 x i32> zeroinitializer
  %cmp.n1789 = icmp eq i32 %2, %n.vec1745
  %min.epilog.iters.check1795 = icmp eq i32 %i.p, 0
  %n.vec1797 = and i32 %2, 2147483644             ; 4 uses
  %broadcast.splatinsert1798 = insertelement <4 x i32> poison, i32 %1, i64 0
  %broadcast.splat1799 = shufflevector <4 x i32> %broadcast.splatinsert1798, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n1817 = icmp eq i32 %2, %n.vec1797
  %min.iters.check1662 = icmp ult i32 %2, 4
  %min.iters.check1664 = icmp ult i32 %2, 16
  %i.q = and i32 %2, 12
  %n.vec1666 = and i32 %2, 2147483632             ; 5 uses
  %broadcast.splatinsert1667 = insertelement <16 x i32> poison, i32 %1, i64 0
  %broadcast.splat1668 = shufflevector <16 x i32> %broadcast.splatinsert1667, <16 x i32> poison, <16 x i32> zeroinitializer
  %cmp.n1710 = icmp eq i32 %2, %n.vec1666
  %min.epilog.iters.check1716 = icmp eq i32 %i.q, 0
  %n.vec1718 = and i32 %2, 2147483644             ; 4 uses
  %broadcast.splatinsert1719 = insertelement <4 x i32> poison, i32 %1, i64 0
  %broadcast.splat1720 = shufflevector <4 x i32> %broadcast.splatinsert1719, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n1738 = icmp eq i32 %2, %n.vec1718
  %min.iters.check1583 = icmp ult i32 %2, 4
  %min.iters.check1585 = icmp ult i32 %2, 16
  %i.r = and i32 %2, 12
  %n.vec1587 = and i32 %2, 2147483632             ; 5 uses
  %broadcast.splatinsert1588 = insertelement <16 x i32> poison, i32 %1, i64 0
  %broadcast.splat1589 = shufflevector <16 x i32> %broadcast.splatinsert1588, <16 x i32> poison, <16 x i32> zeroinitializer
  %cmp.n1631 = icmp eq i32 %2, %n.vec1587
  %min.epilog.iters.check1637 = icmp eq i32 %i.r, 0
  %n.vec1639 = and i32 %2, 2147483644             ; 4 uses
  %broadcast.splatinsert1640 = insertelement <4 x i32> poison, i32 %1, i64 0
  %broadcast.splat1641 = shufflevector <4 x i32> %broadcast.splatinsert1640, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n1659 = icmp eq i32 %2, %n.vec1639
  %min.iters.check1504 = icmp ult i32 %2, 4
  %min.iters.check1506 = icmp ult i32 %2, 16
  %i.s = and i32 %2, 12
  %n.vec1508 = and i32 %2, 2147483632             ; 5 uses
  %broadcast.splatinsert1509 = insertelement <16 x i32> poison, i32 %1, i64 0
  %broadcast.splat1510 = shufflevector <16 x i32> %broadcast.splatinsert1509, <16 x i32> poison, <16 x i32> zeroinitializer
  %cmp.n1552 = icmp eq i32 %2, %n.vec1508
  %min.epilog.iters.check1558 = icmp eq i32 %i.s, 0
  %n.vec1560 = and i32 %2, 2147483644             ; 4 uses
  %broadcast.splatinsert1561 = insertelement <4 x i32> poison, i32 %1, i64 0
  %broadcast.splat1562 = shufflevector <4 x i32> %broadcast.splatinsert1561, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n1580 = icmp eq i32 %2, %n.vec1560
  %min.iters.check1425 = icmp ult i32 %2, 4
  %min.iters.check1427 = icmp ult i32 %2, 16
  %i.t = and i32 %2, 12
  %n.vec1429 = and i32 %2, 2147483632             ; 5 uses
  %broadcast.splatinsert1430 = insertelement <16 x i32> poison, i32 %1, i64 0
  %broadcast.splat1431 = shufflevector <16 x i32> %broadcast.splatinsert1430, <16 x i32> poison, <16 x i32> zeroinitializer
  %cmp.n1473 = icmp eq i32 %2, %n.vec1429
  %min.epilog.iters.check1479 = icmp eq i32 %i.t, 0
  %n.vec1481 = and i32 %2, 2147483644             ; 4 uses
  %broadcast.splatinsert1482 = insertelement <4 x i32> poison, i32 %1, i64 0
  %broadcast.splat1483 = shufflevector <4 x i32> %broadcast.splatinsert1482, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n1501 = icmp eq i32 %2, %n.vec1481
  %min.iters.check1346 = icmp ult i32 %2, 4
  %min.iters.check1348 = icmp ult i32 %2, 16
  %i.u = and i32 %2, 12
  %n.vec1350 = and i32 %2, 2147483632             ; 5 uses
  %broadcast.splatinsert1351 = insertelement <16 x i32> poison, i32 %1, i64 0
  %broadcast.splat1352 = shufflevector <16 x i32> %broadcast.splatinsert1351, <16 x i32> poison, <16 x i32> zeroinitializer
  %cmp.n1394 = icmp eq i32 %2, %n.vec1350
  %min.epilog.iters.check1400 = icmp eq i32 %i.u, 0
  %n.vec1402 = and i32 %2, 2147483644             ; 4 uses
  %broadcast.splatinsert1403 = insertelement <4 x i32> poison, i32 %1, i64 0
  %broadcast.splat1404 = shufflevector <4 x i32> %broadcast.splatinsert1403, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n1422 = icmp eq i32 %2, %n.vec1402
  %min.iters.check1267 = icmp ult i32 %2, 4
  %min.iters.check1269 = icmp ult i32 %2, 16
  %i.v = and i32 %2, 12
  %n.vec1271 = and i32 %2, 2147483632             ; 5 uses
  %broadcast.splatinsert1272 = insertelement <16 x i32> poison, i32 %1, i64 0
  %broadcast.splat1273 = shufflevector <16 x i32> %broadcast.splatinsert1272, <16 x i32> poison, <16 x i32> zeroinitializer
  %cmp.n1315 = icmp eq i32 %2, %n.vec1271
  %min.epilog.iters.check1321 = icmp eq i32 %i.v, 0
  %n.vec1323 = and i32 %2, 2147483644             ; 4 uses
  %broadcast.splatinsert1324 = insertelement <4 x i32> poison, i32 %1, i64 0
  %broadcast.splat1325 = shufflevector <4 x i32> %broadcast.splatinsert1324, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n1343 = icmp eq i32 %2, %n.vec1323
  %min.iters.check1161 = icmp ult i32 %2, 4
  %min.iters.check1163 = icmp ult i32 %2, 32
  %i.w = and i32 %2, 28
  %n.vec1165 = and i32 %2, 2147483616             ; 5 uses
  %broadcast.splatinsert1166 = insertelement <16 x i32> poison, i32 %1, i64 0
  %broadcast.splat1167 = shufflevector <16 x i32> %broadcast.splatinsert1166, <16 x i32> poison, <16 x i32> zeroinitializer ; 2 uses
  %cmp.n1238 = icmp eq i32 %2, %n.vec1165
  %min.epilog.iters.check1243 = icmp eq i32 %i.w, 0
  %n.vec1245 = and i32 %2, 2147483644             ; 4 uses
  %broadcast.splatinsert1246 = insertelement <4 x i32> poison, i32 %1, i64 0
  %broadcast.splat1247 = shufflevector <4 x i32> %broadcast.splatinsert1246, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n1265 = icmp eq i32 %2, %n.vec1245
  %min.iters.check1082 = icmp ult i32 %2, 4
  %min.iters.check1084 = icmp ult i32 %2, 16
  %i.x = and i32 %2, 12
  %n.vec1086 = and i32 %2, -16                    ; 5 uses
  %broadcast.splatinsert1087 = insertelement <16 x i32> poison, i32 %1, i64 0
  %broadcast.splat1088 = shufflevector <16 x i32> %broadcast.splatinsert1087, <16 x i32> poison, <16 x i32> zeroinitializer
  %cmp.n1130 = icmp eq i32 %2, %n.vec1086
  %min.epilog.iters.check1136 = icmp eq i32 %i.x, 0
  %n.vec1138 = and i32 %2, -4                     ; 4 uses
  %broadcast.splatinsert1139 = insertelement <4 x i32> poison, i32 %1, i64 0
  %broadcast.splat1140 = shufflevector <4 x i32> %broadcast.splatinsert1139, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n1158 = icmp eq i32 %2, %n.vec1138
  %min.iters.check1003 = icmp ult i32 %2, 4
  %min.iters.check1005 = icmp ult i32 %2, 16
  %i.y = and i32 %2, 12
  %n.vec1007 = and i32 %2, -16                    ; 5 uses
  %broadcast.splatinsert1008 = insertelement <16 x i32> poison, i32 %1, i64 0
  %broadcast.splat1009 = shufflevector <16 x i32> %broadcast.splatinsert1008, <16 x i32> poison, <16 x i32> zeroinitializer
  %cmp.n1051 = icmp eq i32 %2, %n.vec1007
  %min.epilog.iters.check1057 = icmp eq i32 %i.y, 0
  %n.vec1059 = and i32 %2, -4                     ; 4 uses
  %broadcast.splatinsert1060 = insertelement <4 x i32> poison, i32 %1, i64 0
  %broadcast.splat1061 = shufflevector <4 x i32> %broadcast.splatinsert1060, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n1079 = icmp eq i32 %2, %n.vec1059
  %min.iters.check924 = icmp ult i32 %2, 4
  %min.iters.check926 = icmp ult i32 %2, 16
  %i.z = and i32 %2, 12
end_hunk_0
begin_hunk_1_@utrace_vformat_78:bb.a

pred.store.if1109:                                ; preds = %pred.store.continue1108
  %i.chx = add i32 %i.cgt, 7
  %i.chy = sext i32 %i.chx to i64
  %i.chz = getelementptr inbounds i8, ptr %0, i64 %i.chy
  store i8 32, ptr %i.chz, align 1, !tbaa !10
  br label %pred.store.continue1110

pred.store.continue1110:                          ; preds = %pred.store.if1109, %pred.store.continue1108
  %i.cia = extractelement <16 x i1> %i.cgu, i64 8
  br i1 %i.cia, label %pred.store.if1111, label %pred.store.continue1112

pred.store.if1111:                                ; preds = %pred.store.continue1110
  %i.cib = add i32 %i.cgt, 8
  %i.cic = sext i32 %i.cib to i64
  %i.cid = getelementptr inbounds i8, ptr %0, i64 %i.cic
  store i8 32, ptr %i.cid, align 1, !tbaa !10
  br label %pred.store.continue1112

pred.store.continue1112:                          ; preds = %pred.store.if1111, %pred.store.continue1110
  %i.cie = extractelement <16 x i1> %i.cgu, i64 9
  br i1 %i.cie, label %pred.store.if1113, label %pred.store.continue1114

pred.store.if1113:                                ; preds = %pred.store.continue1112
  %i.cif = add i32 %i.cgt, 9
  %i.cig = sext i32 %i.cif to i64
  %i.cih = getelementptr inbounds i8, ptr %0, i64 %i.cig
  store i8 32, ptr %i.cih, align 1, !tbaa !10
  br label %pred.store.continue1114

pred.store.continue1114:                          ; preds = %pred.store.if1113, %pred.store.continue1112
  %i.cii = extractelement <16 x i1> %i.cgu, i64 10
  br i1 %i.cii, label %pred.store.if1115, label %pred.store.continue1116

pred.store.if1115:                                ; preds = %pred.store.continue1114
  %i.cij = add i32 %i.cgt, 10
  %i.cik = sext i32 %i.cij to i64
  %i.cil = getelementptr inbounds i8, ptr %0, i64 %i.cik
  store i8 32, ptr %i.cil, align 1, !tbaa !10
  br label %pred.store.continue1116

pred.store.continue1116:                          ; preds = %pred.store.if1115, %pred.store.continue1114
  %i.cim = extractelement <16 x i1> %i.cgu, i64 11
  br i1 %i.cim, label %pred.store.if1117, label %pred.store.continue1118

pred.store.if1117:                                ; preds = %pred.store.continue1116
  %i.cin = add i32 %i.cgt, 11
  %i.cio = sext i32 %i.cin to i64
  %i.cip = getelementptr inbounds i8, ptr %0, i64 %i.cio
  store i8 32, ptr %i.cip, align 1, !tbaa !10
  br label %pred.store.continue1118

pred.store.continue1118:                          ; preds = %pred.store.if1117, %pred.store.continue1116
  %i.ciq = extractelement <16 x i1> %i.cgu, i64 12
  br i1 %i.ciq, label %pred.store.if1119, label %pred.store.continue1120

pred.store.if1119:                                ; preds = %pred.store.continue1118
  %i.cir = add i32 %i.cgt, 12
  %i.cis = sext i32 %i.cir to i64
  %i.cit = getelementptr inbounds i8, ptr %0, i64 %i.cis
  store i8 32, ptr %i.cit, align 1, !tbaa !10
  br label %pred.store.continue1120

pred.store.continue1120:                          ; preds = %pred.store.if1119, %pred.store.continue1118
  %i.ciu = extractelement <16 x i1> %i.cgu, i64 13
  br i1 %i.ciu, label %pred.store.if1121, label %pred.store.continue1122

pred.store.if1121:                                ; preds = %pred.store.continue1120
  %i.civ = add i32 %i.cgt, 13
  %i.ciw = sext i32 %i.civ to i64
  %i.cix = getelementptr inbounds i8, ptr %0, i64 %i.ciw
  store i8 32, ptr %i.cix, align 1, !tbaa !10
  br label %pred.store.continue1122

pred.store.continue1122:                          ; preds = %pred.store.if1121, %pred.store.continue1120
  %i.ciy = extractelement <16 x i1> %i.cgu, i64 14
  br i1 %i.ciy, label %pred.store.if1123, label %pred.store.continue1124

pred.store.if1123:                                ; preds = %pred.store.continue1122
  %i.ciz = add i32 %i.cgt, 14
  %i.cja = sext i32 %i.ciz to i64
  %i.cjb = getelementptr inbounds i8, ptr %0, i64 %i.cja
  store i8 32, ptr %i.cjb, align 1, !tbaa !10
  br label %pred.store.continue1124

pred.store.continue1124:                          ; preds = %pred.store.if1123, %pred.store.continue1122
  %i.cjc = extractelement <16 x i1> %i.cgu, i64 15
  br i1 %i.cjc, label %pred.store.if1125, label %pred.store.continue1126

pred.store.if1125:                                ; preds = %pred.store.continue1124
  %i.cjd = add i32 %i.cgt, 15
  %i.cje = sext i32 %i.cjd to i64
  %i.cjf = getelementptr inbounds i8, ptr %0, i64 %i.cje
  store i8 32, ptr %i.cjf, align 1, !tbaa !10
  br label %pred.store.continue1126

pred.store.continue1126:                          ; preds = %pred.store.if1125, %pred.store.continue1124
  %index.next1127 = add nuw i32 %index1093, 16    ; 2 uses
  %vec.ind.next1128 = add nsw <16 x i32> %vec.ind1094, splat (i32 16)
  %i.cjg = icmp eq i32 %index.next1127, %n.vec1086
  br i1 %i.cjg, label %middle.block1129, label %vector.body1092, !llvm.loop !79

middle.block1129:                                 ; preds = %pred.store.continue1126
  br i1 %cmp.n1130, label %.loopexit.i314, label %vec.epilog.iter.check1135

vec.epilog.iter.check1135:                        ; preds = %middle.block1129
  br i1 %min.epilog.iters.check1136, label %.lr.ph.i316.preheader, label %vec.epilog.ph1137, !prof !21

vec.epilog.ph1137:                                ; preds = %vector.main.loop.iter.check1083, %vec.epilog.iter.check1135
  %vec.epilog.resume.val1131 = phi i32 [ %n.vec1086, %vec.epilog.iter.check1135 ], [ 0, %vector.main.loop.iter.check1083 ]
  %bc.resume.val1132 = phi i32 [ %i.cgs, %vec.epilog.iter.check1135 ], [ %.promoted479647, %vector.main.loop.iter.check1083 ]
  %i.cjh = add i32 %.promoted479647, %n.vec1138   ; 2 uses
  %broadcast.splatinsert1141 = insertelement <4 x i32> poison, i32 %bc.resume.val1132, i64 0
  %broadcast.splat1142 = shufflevector <4 x i32> %broadcast.splatinsert1141, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction1143 = add nsw <4 x i32> %broadcast.splat1142, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body1144

vec.epilog.vector.body1144:                       ; preds = %pred.store.continue1154, %vec.epilog.ph1137
  %index1145 = phi i32 [ %vec.epilog.resume.val1131, %vec.epilog.ph1137 ], [ %index.next1155, %pred.store.continue1154 ] ; 2 uses
  %vec.ind1146 = phi <4 x i32> [ %induction1143, %vec.epilog.ph1137 ], [ %vec.ind.next1156, %pred.store.continue1154 ] ; 2 uses
  %i.cji = add i32 %.promoted479647, %index1145   ; 4 uses
  %i.cjj = icmp slt <4 x i32> %vec.ind1146, %broadcast.splat1140 ; 4 uses
  %i.cjk = extractelement <4 x i1> %i.cjj, i64 0
  br i1 %i.cjk, label %pred.store.if1147, label %pred.store.continue1148

pred.store.if1147:                                ; preds = %vec.epilog.vector.body1144
  %i.cjl = sext i32 %i.cji to i64
  %i.cjm = getelementptr inbounds i8, ptr %0, i64 %i.cjl
  store i8 32, ptr %i.cjm, align 1, !tbaa !10
  br label %pred.store.continue1148

pred.store.continue1148:                          ; preds = %pred.store.if1147, %vec.epilog.vector.body1144
  %i.cjn = extractelement <4 x i1> %i.cjj, i64 1
  br i1 %i.cjn, label %pred.store.if1149, label %pred.store.continue1150

pred.store.if1149:                                ; preds = %pred.store.continue1148
  %i.cjo = add i32 %i.cji, 1
  %i.cjp = sext i32 %i.cjo to i64
  %i.cjq = getelementptr inbounds i8, ptr %0, i64 %i.cjp
  store i8 32, ptr %i.cjq, align 1, !tbaa !10
  br label %pred.store.continue1150

pred.store.continue1150:                          ; preds = %pred.store.if1149, %pred.store.continue1148
  %i.cjr = extractelement <4 x i1> %i.cjj, i64 2
  br i1 %i.cjr, label %pred.store.if1151, label %pred.store.continue1152

pred.store.if1151:                                ; preds = %pred.store.continue1150
  %i.cjs = add i32 %i.cji, 2
  %i.cjt = sext i32 %i.cjs to i64
  %i.cju = getelementptr inbounds i8, ptr %0, i64 %i.cjt
  store i8 32, ptr %i.cju, align 1, !tbaa !10
  br label %pred.store.continue1152

pred.store.continue1152:                          ; preds = %pred.store.if1151, %pred.store.continue1150
  %i.cjv = extractelement <4 x i1> %i.cjj, i64 3
  br i1 %i.cjv, label %pred.store.if1153, label %pred.store.continue1154

pred.store.if1153:                                ; preds = %pred.store.continue1152
  %i.cjw = add i32 %i.cji, 3
  %i.cjx = sext i32 %i.cjw to i64
  %i.cjy = getelementptr inbounds i8, ptr %0, i64 %i.cjx
  store i8 32, ptr %i.cjy, align 1, !tbaa !10
  br label %pred.store.continue1154

pred.store.continue1154:                          ; preds = %pred.store.if1153, %pred.store.continue1152
  %index.next1155 = add nuw i32 %index1145, 4     ; 2 uses
  %vec.ind.next1156 = add nsw <4 x i32> %vec.ind1146, splat (i32 4)
  %i.cjz = icmp eq i32 %index.next1155, %n.vec1138
  br i1 %i.cjz, label %vec.epilog.middle.block1157, label %vec.epilog.vector.body1144, !llvm.loop !80

vec.epilog.middle.block1157:                      ; preds = %pred.store.continue1154
  br i1 %cmp.n1158, label %.loopexit.i314, label %.lr.ph.i316.preheader

.lr.ph.i316.preheader:                            ; preds = %iter.check1133, %vec.epilog.iter.check1135, %vec.epilog.middle.block1157
  %.pre.i319480.ph = phi i32 [ %.promoted479647, %iter.check1133 ], [ %i.cgs, %vec.epilog.iter.check1135 ], [ %i.cjh, %vec.epilog.middle.block1157 ]
  %.030.i317.ph = phi i32 [ 0, %iter.check1133 ], [ %n.vec1086, %vec.epilog.iter.check1135 ], [ %n.vec1138, %vec.epilog.middle.block1157 ]
  br label %.lr.ph.i316

.lr.ph.i316:                                      ; preds = %.lr.ph.i316.preheader, %bb.gr
  %.pre.i319480 = phi i32 [ %i.ckd, %bb.gr ], [ %.pre.i319480.ph, %.lr.ph.i316.preheader ] ; 3 uses
  %.030.i317 = phi i32 [ %i.cke, %bb.gr ], [ %.030.i317.ph, %.lr.ph.i316.preheader ]
  %i.cka = icmp slt i32 %.pre.i319480, %1
  br i1 %i.cka, label %bb.gq, label %bb.gr

bb.gq:                                            ; preds = %.lr.ph.i316
  %i.ckb = sext i32 %.pre.i319480 to i64
  %i.ckc = getelementptr inbounds i8, ptr %0, i64 %i.ckb
  store i8 32, ptr %i.ckc, align 1, !tbaa !10
  br label %bb.gr

bb.gr:                                            ; preds = %bb.gq, %.lr.ph.i316
  %i.ckd = add nsw i32 %.pre.i319480, 1           ; 2 uses
  %i.cke = add nuw nsw i32 %.030.i317, 1          ; 2 uses
  %exitcond.not.i318 = icmp eq i32 %i.cke, %2
  br i1 %exitcond.not.i318, label %.loopexit.i314, label %.lr.ph.i316, !llvm.loop !81

.loopexit.i314:                                   ; preds = %bb.gr, %middle.block1129, %vec.epilog.middle.block1157, %_ZL12outputStringPKcPcPiii.exit232.thread652, %_ZL12outputStringPKcPcPiii.exit232.thread, %bb.go, %bb.gp
  %.3649 = phi i64 [ %.3651.a, %_ZL12outputStringPKcPcPiii.exit232.thread ], [ %.3, %bb.gp ], [ %.3651.a, %bb.go ], [ %.0141.ph, %_ZL12outputStringPKcPcPiii.exit232.thread652 ], [ %.3650, %middle.block1129 ], [ %.3650, %vec.epilog.middle.block1157 ], [ %.3650, %bb.gr ]
  %i.ckf = phi i32 [ %.promoted479648, %_ZL12outputStringPKcPcPiii.exit232.thread ], [ 0, %bb.gp ], [ %.promoted479648, %bb.go ], [ 0, %_ZL12outputStringPKcPcPiii.exit232.thread652 ], [ %i.cgs, %middle.block1129 ], [ %i.cjh, %vec.epilog.middle.block1157 ], [ %i.ckd, %bb.gr ] ; 3 uses
  %i.ckg = icmp slt i32 %i.ckf, %1
  %5 = sext i32 %i.ckf to i64                     ; 10 uses
  br i1 %i.ckg, label %bb.gs, label %_ZL10outputCharcPcPiii.exit321

bb.gs:                                            ; preds = %.loopexit.i314
  %i.ckh = getelementptr inbounds i8, ptr %0, i64 %5
  store i8 91, ptr %i.ckh, align 1, !tbaa !10
  br label %_ZL10outputCharcPcPiii.exit321

_ZL10outputCharcPcPiii.exit321:                   ; preds = %.loopexit.i314, %bb.gs
  %i.cki = add nsw i32 %i.ckf, 1
  store i32 %i.cki, ptr %i.a, align 4, !tbaa !19
  %i.ckj = zext i32 %i.acb to i64                 ; 8 uses
  %6 = add nsw i64 %5, 1                          ; 2 uses
  %i.ckk = icmp slt i64 %6, %i.d
  br i1 %i.ckk, label %bb.gt, label %_ZL10outputCharcPcPiii.exit.i326

bb.gt:                                            ; preds = %_ZL10outputCharcPcPiii.exit321
  %i.ckl = lshr i64 %i.ckj, 28
  %i.ckm = getelementptr inbounds nuw i8, ptr @_ZZL14outputHexBytesliPcPiiE9gHexChars, i64 %i.ckl
  %i.ckn = load i8, ptr %i.ckm, align 1, !tbaa !10
  %i.cko = getelementptr inbounds i8, ptr %0, i64 %6
  store i8 %i.ckn, ptr %i.cko, align 1, !tbaa !10
  br label %_ZL10outputCharcPcPiii.exit.i326

_ZL10outputCharcPcPiii.exit.i326:                 ; preds = %bb.gt, %_ZL10outputCharcPcPiii.exit321
  %indvars.iv.next555 = add nsw i64 %5, 2         ; 2 uses
  %i.ckp = icmp slt i64 %indvars.iv.next555, %i.d
  br i1 %i.ckp, label %bb.gu, label %_ZL10outputCharcPcPiii.exit.i326.1

bb.gu:                                            ; preds = %_ZL10outputCharcPcPiii.exit.i326
  %i.ckq = lshr i64 %i.ckj, 24
  %i.ckr = and i64 %i.ckq, 15
  %i.cks = getelementptr inbounds nuw i8, ptr @_ZZL14outputHexBytesliPcPiiE9gHexChars, i64 %i.ckr
  %i.ckt = load i8, ptr %i.cks, align 1, !tbaa !10
  %i.cku = getelementptr inbounds i8, ptr %0, i64 %indvars.iv.next555
  store i8 %i.ckt, ptr %i.cku, align 1, !tbaa !10
  br label %_ZL10outputCharcPcPiii.exit.i326.1

_ZL10outputCharcPcPiii.exit.i326.1:               ; preds = %bb.gu, %_ZL10outputCharcPcPiii.exit.i326
  %indvars.iv.next555.1 = add nsw i64 %5, 3       ; 2 uses
  %i.ckv = icmp slt i64 %indvars.iv.next555.1, %i.d
  br i1 %i.ckv, label %bb.gv, label %_ZL10outputCharcPcPiii.exit.i326.2

bb.gv:                                            ; preds = %_ZL10outputCharcPcPiii.exit.i326.1
  %i.ckw = lshr i64 %i.ckj, 20
  %i.ckx = and i64 %i.ckw, 15
  %i.cky = getelementptr inbounds nuw i8, ptr @_ZZL14outputHexBytesliPcPiiE9gHexChars, i64 %i.ckx
  %i.ckz = load i8, ptr %i.cky, align 1, !tbaa !10
  %i.cla = getelementptr inbounds i8, ptr %0, i64 %indvars.iv.next555.1
  store i8 %i.ckz, ptr %i.cla, align 1, !tbaa !10
  br label %_ZL10outputCharcPcPiii.exit.i326.2

_ZL10outputCharcPcPiii.exit.i326.2:               ; preds = %bb.gv, %_ZL10outputCharcPcPiii.exit.i326.1
  %indvars.iv.next555.2 = add nsw i64 %5, 4       ; 2 uses
  %i.clb = icmp slt i64 %indvars.iv.next555.2, %i.d
  br i1 %i.clb, label %bb.gw, label %_ZL10outputCharcPcPiii.exit.i326.3

bb.gw:                                            ; preds = %_ZL10outputCharcPcPiii.exit.i326.2
  %i.clc = lshr i64 %i.ckj, 16
  %i.cld = and i64 %i.clc, 15
  %i.cle = getelementptr inbounds nuw i8, ptr @_ZZL14outputHexBytesliPcPiiE9gHexChars, i64 %i.cld
  %i.clf = load i8, ptr %i.cle, align 1, !tbaa !10
  %i.clg = getelementptr inbounds i8, ptr %0, i64 %indvars.iv.next555.2
  store i8 %i.clf, ptr %i.clg, align 1, !tbaa !10
  br label %_ZL10outputCharcPcPiii.exit.i326.3

_ZL10outputCharcPcPiii.exit.i326.3:               ; preds = %bb.gw, %_ZL10outputCharcPcPiii.exit.i326.2
  %indvars.iv.next555.3 = add nsw i64 %5, 5       ; 2 uses
  %i.clh = icmp slt i64 %indvars.iv.next555.3, %i.d
  br i1 %i.clh, label %bb.gx, label %_ZL10outputCharcPcPiii.exit.i326.4

bb.gx:                                            ; preds = %_ZL10outputCharcPcPiii.exit.i326.3
  %i.cli = lshr i64 %i.ckj, 12
  %i.clj = and i64 %i.cli, 15
  %i.clk = getelementptr inbounds nuw i8, ptr @_ZZL14outputHexBytesliPcPiiE9gHexChars, i64 %i.clj
  %i.cll = load i8, ptr %i.clk, align 1, !tbaa !10
  %i.clm = getelementptr inbounds i8, ptr %0, i64 %indvars.iv.next555.3
  store i8 %i.cll, ptr %i.clm, align 1, !tbaa !10
  br label %_ZL10outputCharcPcPiii.exit.i326.4

_ZL10outputCharcPcPiii.exit.i326.4:               ; preds = %bb.gx, %_ZL10outputCharcPcPiii.exit.i326.3
  %indvars.iv.next555.4 = add nsw i64 %5, 6       ; 2 uses
  %i.cln = icmp slt i64 %indvars.iv.next555.4, %i.d
  br i1 %i.cln, label %bb.gy, label %_ZL10outputCharcPcPiii.exit.i326.5

bb.gy:                                            ; preds = %_ZL10outputCharcPcPiii.exit.i326.4
  %i.clo = lshr i64 %i.ckj, 8
  %i.clp = and i64 %i.clo, 15
  %i.clq = getelementptr inbounds nuw i8, ptr @_ZZL14outputHexBytesliPcPiiE9gHexChars, i64 %i.clp
  %i.clr = load i8, ptr %i.clq, align 1, !tbaa !10
  %i.cls = getelementptr inbounds i8, ptr %0, i64 %indvars.iv.next555.4
  store i8 %i.clr, ptr %i.cls, align 1, !tbaa !10
  br label %_ZL10outputCharcPcPiii.exit.i326.5

_ZL10outputCharcPcPiii.exit.i326.5:               ; preds = %bb.gy, %_ZL10outputCharcPcPiii.exit.i326.4
  %indvars.iv.next555.5 = add nsw i64 %5, 7       ; 2 uses
  %i.clt = icmp slt i64 %indvars.iv.next555.5, %i.d
  br i1 %i.clt, label %bb.gz, label %_ZL10outputCharcPcPiii.exit.i326.6

bb.gz:                                            ; preds = %_ZL10outputCharcPcPiii.exit.i326.5
  %i.clu = lshr i64 %i.ckj, 4
  %i.clv = and i64 %i.clu, 15
  %i.clw = getelementptr inbounds nuw i8, ptr @_ZZL14outputHexBytesliPcPiiE9gHexChars, i64 %i.clv
  %i.clx = load i8, ptr %i.clw, align 1, !tbaa !10
  %i.cly = getelementptr inbounds i8, ptr %0, i64 %indvars.iv.next555.5
  store i8 %i.clx, ptr %i.cly, align 1, !tbaa !10
  br label %_ZL10outputCharcPcPiii.exit.i326.6

_ZL10outputCharcPcPiii.exit.i326.6:               ; preds = %bb.gz, %_ZL10outputCharcPcPiii.exit.i326.5
  %indvars.iv.next555.6 = add nsw i64 %5, 8       ; 2 uses
  %i.clz = icmp slt i64 %indvars.iv.next555.6, %i.d
  br i1 %i.clz, label %bb.ha, label %_ZL10outputCharcPcPiii.exit.i326.7

bb.ha:                                            ; preds = %_ZL10outputCharcPcPiii.exit.i326.6
  %i.cma = and i64 %i.ckj, 15
  %i.cmb = getelementptr inbounds nuw i8, ptr @_ZZL14outputHexBytesliPcPiiE9gHexChars, i64 %i.cma
  %i.cmc = load i8, ptr %i.cmb, align 1, !tbaa !10
  %i.cmd = getelementptr inbounds i8, ptr %0, i64 %indvars.iv.next555.6
  store i8 %i.cmc, ptr %i.cmd, align 1, !tbaa !10
  br label %_ZL10outputCharcPcPiii.exit.i326.7

_ZL10outputCharcPcPiii.exit.i326.7:               ; preds = %bb.ha, %_ZL10outputCharcPcPiii.exit.i326.6
  %indvars.iv.next555.7 = add nsw i64 %5, 9       ; 3 uses
  %i.cme = trunc nsw i64 %indvars.iv.next555.7 to i32 ; 10 uses
  %i.cmf = icmp eq i64 %indvars.iv.next555.7, 0
  br i1 %i.cmf, label %bb.hd, label %bb.hb

bb.hb:                                            ; preds = %_ZL10outputCharcPcPiii.exit.i326.7
  %i.cmg = icmp sgt i32 %1, %i.cme
  br i1 %i.cmg, label %bb.hc, label %.loopexit.i332

bb.hc:                                            ; preds = %bb.hb
  %i.cmh = getelementptr i8, ptr %0, i64 %indvars.iv.next555.7
  %i.cmi = getelementptr i8, ptr %i.cmh, i64 -1
  %i.cmj = load i8, ptr %i.cmi, align 1, !tbaa !10
  %i.cmk = icmp eq i8 %i.cmj, 10
  %or.cond401 = and i1 %.old.i, %i.cmk
  br i1 %or.cond401, label %iter.check1054, label %.loopexit.i332

bb.hd:                                            ; preds = %_ZL10outputCharcPcPiii.exit.i326.7
  br i1 %.old.i, label %iter.check1054, label %.loopexit.i332

iter.check1054:                                   ; preds = %bb.hc, %bb.hd
  br i1 %min.iters.check1003, label %.lr.ph.i334.preheader, label %vector.main.loop.iter.check1004

vector.main.loop.iter.check1004:                  ; preds = %iter.check1054
  br i1 %min.iters.check1005, label %vec.epilog.ph1058, label %vector.ph1006

vector.ph1006:                                    ; preds = %vector.main.loop.iter.check1004
  %i.cml = add i32 %n.vec1007, %i.cme             ; 3 uses
  %broadcast.splatinsert1010 = insertelement <16 x i32> poison, i32 %i.cme, i64 0
  %broadcast.splat1011 = shufflevector <16 x i32> %broadcast.splatinsert1010, <16 x i32> poison, <16 x i32> zeroinitializer
  %induction1012 = add nsw <16 x i32> %broadcast.splat1011, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  br label %vector.body1013

vector.body1013:                                  ; preds = %pred.store.continue1047, %vector.ph1006
  %index1014 = phi i32 [ 0, %vector.ph1006 ], [ %index.next1048, %pred.store.continue1047 ] ; 2 uses
  %vec.ind1015 = phi <16 x i32> [ %induction1012, %vector.ph1006 ], [ %vec.ind.next1049, %pred.store.continue1047 ] ; 2 uses
  %i.cmm = add i32 %index1014, %i.cme             ; 16 uses
  %i.cmn = icmp slt <16 x i32> %vec.ind1015, %broadcast.splat1009 ; 16 uses
  %i.cmo = extractelement <16 x i1> %i.cmn, i64 0
  br i1 %i.cmo, label %pred.store.if1016, label %pred.store.continue1017

pred.store.if1016:                                ; preds = %vector.body1013
  %i.cmp = sext i32 %i.cmm to i64
  %i.cmq = getelementptr inbounds i8, ptr %0, i64 %i.cmp
  store i8 32, ptr %i.cmq, align 1, !tbaa !10
  br label %pred.store.continue1017

pred.store.continue1017:                          ; preds = %pred.store.if1016, %vector.body1013
  %i.cmr = extractelement <16 x i1> %i.cmn, i64 1
  br i1 %i.cmr, label %pred.store.if1018, label %pred.store.continue1019

pred.store.if1018:                                ; preds = %pred.store.continue1017
  %i.cms = add i32 %i.cmm, 1
  %i.cmt = sext i32 %i.cms to i64
  %i.cmu = getelementptr inbounds i8, ptr %0, i64 %i.cmt
  store i8 32, ptr %i.cmu, align 1, !tbaa !10
  br label %pred.store.continue1019

pred.store.continue1019:                          ; preds = %pred.store.if1018, %pred.store.continue1017
  %i.cmv = extractelement <16 x i1> %i.cmn, i64 2
  br i1 %i.cmv, label %pred.store.if1020, label %pred.store.continue1021

pred.store.if1020:                                ; preds = %pred.store.continue1019
  %i.cmw = add i32 %i.cmm, 2
  %i.cmx = sext i32 %i.cmw to i64
  %i.cmy = getelementptr inbounds i8, ptr %0, i64 %i.cmx
  store i8 32, ptr %i.cmy, align 1, !tbaa !10
  br label %pred.store.continue1021

pred.store.continue1021:                          ; preds = %pred.store.if1020, %pred.store.continue1019
  %i.cmz = extractelement <16 x i1> %i.cmn, i64 3
  br i1 %i.cmz, label %pred.store.if1022, label %pred.store.continue1023

pred.store.if1022:                                ; preds = %pred.store.continue1021
  %i.cna = add i32 %i.cmm, 3
  %i.cnb = sext i32 %i.cna to i64
  %i.cnc = getelementptr inbounds i8, ptr %0, i64 %i.cnb
  store i8 32, ptr %i.cnc, align 1, !tbaa !10
  br label %pred.store.continue1023

pred.store.continue1023:                          ; preds = %pred.store.if1022, %pred.store.continue1021
  %i.cnd = extractelement <16 x i1> %i.cmn, i64 4
  br i1 %i.cnd, label %pred.store.if1024, label %pred.store.continue1025

pred.store.if1024:                                ; preds = %pred.store.continue1023
  %i.cne = add i32 %i.cmm, 4
  %i.cnf = sext i32 %i.cne to i64
  %i.cng = getelementptr inbounds i8, ptr %0, i64 %i.cnf
  store i8 32, ptr %i.cng, align 1, !tbaa !10
  br label %pred.store.continue1025

pred.store.continue1025:                          ; preds = %pred.store.if1024, %pred.store.continue1023
  %i.cnh = extractelement <16 x i1> %i.cmn, i64 5
  br i1 %i.cnh, label %pred.store.if1026, label %pred.store.continue1027

pred.store.if1026:                                ; preds = %pred.store.continue1025
  %i.cni = add i32 %i.cmm, 5
  %i.cnj = sext i32 %i.cni to i64
  %i.cnk = getelementptr inbounds i8, ptr %0, i64 %i.cnj
  store i8 32, ptr %i.cnk, align 1, !tbaa !10
  br label %pred.store.continue1027

pred.store.continue1027:                          ; preds = %pred.store.if1026, %pred.store.continue1025
  %i.cnl = extractelement <16 x i1> %i.cmn, i64 6
  br i1 %i.cnl, label %pred.store.if1028, label %pred.store.continue1029

pred.store.if1028:                                ; preds = %pred.store.continue1027
  %i.cnm = add i32 %i.cmm, 6
  %i.cnn = sext i32 %i.cnm to i64
  %i.cno = getelementptr inbounds i8, ptr %0, i64 %i.cnn
  store i8 32, ptr %i.cno, align 1, !tbaa !10
  br label %pred.store.continue1029

pred.store.continue1029:                          ; preds = %pred.store.if1028, %pred.store.continue1027
  %i.cnp = extractelement <16 x i1> %i.cmn, i64 7
  br i1 %i.cnp, label %pred.store.if1030, label %pred.store.continue1031

pred.store.if1030:                                ; preds = %pred.store.continue1029
  %i.cnq = add i32 %i.cmm, 7
  %i.cnr = sext i32 %i.cnq to i64
  %i.cns = getelementptr inbounds i8, ptr %0, i64 %i.cnr
  store i8 32, ptr %i.cns, align 1, !tbaa !10
  br label %pred.store.continue1031

pred.store.continue1031:                          ; preds = %pred.store.if1030, %pred.store.continue1029
  %i.cnt = extractelement <16 x i1> %i.cmn, i64 8
  br i1 %i.cnt, label %pred.store.if1032, label %pred.store.continue1033

pred.store.if1032:                                ; preds = %pred.store.continue1031
  %i.cnu = add i32 %i.cmm, 8
  %i.cnv = sext i32 %i.cnu to i64
  %i.cnw = getelementptr inbounds i8, ptr %0, i64 %i.cnv
  store i8 32, ptr %i.cnw, align 1, !tbaa !10
  br label %pred.store.continue1033

pred.store.continue1033:                          ; preds = %pred.store.if1032, %pred.store.continue1031
  %i.cnx = extractelement <16 x i1> %i.cmn, i64 9
  br i1 %i.cnx, label %pred.store.if1034, label %pred.store.continue1035

pred.store.if1034:                                ; preds = %pred.store.continue1033
  %i.cny = add i32 %i.cmm, 9
  %i.cnz = sext i32 %i.cny to i64
  %i.coa = getelementptr inbounds i8, ptr %0, i64 %i.cnz
  store i8 32, ptr %i.coa, align 1, !tbaa !10
  br label %pred.store.continue1035

pred.store.continue1035:                          ; preds = %pred.store.if1034, %pred.store.continue1033
  %i.cob = extractelement <16 x i1> %i.cmn, i64 10
  br i1 %i.cob, label %pred.store.if1036, label %pred.store.continue1037

pred.store.if1036:                                ; preds = %pred.store.continue1035
  %i.coc = add i32 %i.cmm, 10
  %i.cod = sext i32 %i.coc to i64
  %i.coe = getelementptr inbounds i8, ptr %0, i64 %i.cod
  store i8 32, ptr %i.coe, align 1, !tbaa !10
  br label %pred.store.continue1037

pred.store.continue1037:                          ; preds = %pred.store.if1036, %pred.store.continue1035
  %i.cof = extractelement <16 x i1> %i.cmn, i64 11
  br i1 %i.cof, label %pred.store.if1038, label %pred.store.continue1039

pred.store.if1038:                                ; preds = %pred.store.continue1037
  %i.cog = add i32 %i.cmm, 11
  %i.coh = sext i32 %i.cog to i64
  %i.coi = getelementptr inbounds i8, ptr %0, i64 %i.coh
  store i8 32, ptr %i.coi, align 1, !tbaa !10
  br label %pred.store.continue1039

pred.store.continue1039:                          ; preds = %pred.store.if1038, %pred.store.continue1037
  %i.coj = extractelement <16 x i1> %i.cmn, i64 12
  br i1 %i.coj, label %pred.store.if1040, label %pred.store.continue1041

pred.store.if1040:                                ; preds = %pred.store.continue1039
  %i.cok = add i32 %i.cmm, 12
  %i.col = sext i32 %i.cok to i64
  %i.com = getelementptr inbounds i8, ptr %0, i64 %i.col
  store i8 32, ptr %i.com, align 1, !tbaa !10
  br label %pred.store.continue1041

pred.store.continue1041:                          ; preds = %pred.store.if1040, %pred.store.continue1039
  %i.con = extractelement <16 x i1> %i.cmn, i64 13
  br i1 %i.con, label %pred.store.if1042, label %pred.store.continue1043

pred.store.if1042:                                ; preds = %pred.store.continue1041
  %i.coo = add i32 %i.cmm, 13
  %i.cop = sext i32 %i.coo to i64
  %i.coq = getelementptr inbounds i8, ptr %0, i64 %i.cop
  store i8 32, ptr %i.coq, align 1, !tbaa !10
  br label %pred.store.continue1043

pred.store.continue1043:                          ; preds = %pred.store.if1042, %pred.store.continue1041
  %i.cor = extractelement <16 x i1> %i.cmn, i64 14
  br i1 %i.cor, label %pred.store.if1044, label %pred.store.continue1045

pred.store.if1044:                                ; preds = %pred.store.continue1043
  %i.cos = add i32 %i.cmm, 14
  %i.cot = sext i32 %i.cos to i64
  %i.cou = getelementptr inbounds i8, ptr %0, i64 %i.cot
  store i8 32, ptr %i.cou, align 1, !tbaa !10
  br label %pred.store.continue1045

end_hunk_1
