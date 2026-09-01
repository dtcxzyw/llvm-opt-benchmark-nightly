Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/utrace?download=true
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
  %.old.i = icmp sgt i32 %2, 0                    ; 27 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 22 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 11 uses
  %i.d = sext i32 %1 to i64                       ; 37 uses
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
end_hunk_0
begin_hunk_1_@utrace_vformat_78:bb.a
  %i.csf = sext i32 %i.cse to i64
  %i.csg = getelementptr inbounds i8, ptr %0, i64 %i.csf
  store i8 32, ptr %i.csg, align 1, !tbaa !10
  br label %pred.store.continue734

pred.store.continue734:                           ; preds = %pred.store.if733, %pred.store.continue732
  %i.csh = extractelement <16 x i1> %i.cqp, i64 11
  br i1 %i.csh, label %pred.store.if735, label %pred.store.continue736

pred.store.if735:                                 ; preds = %pred.store.continue734
  %i.csi = add i32 %i.cqo, 11
  %i.csj = sext i32 %i.csi to i64
  %i.csk = getelementptr inbounds i8, ptr %0, i64 %i.csj
  store i8 32, ptr %i.csk, align 1, !tbaa !10
  br label %pred.store.continue736

pred.store.continue736:                           ; preds = %pred.store.if735, %pred.store.continue734
  %i.csl = extractelement <16 x i1> %i.cqp, i64 12
  br i1 %i.csl, label %pred.store.if737, label %pred.store.continue738

pred.store.if737:                                 ; preds = %pred.store.continue736
  %i.csm = add i32 %i.cqo, 12
  %i.csn = sext i32 %i.csm to i64
  %i.cso = getelementptr inbounds i8, ptr %0, i64 %i.csn
  store i8 32, ptr %i.cso, align 1, !tbaa !10
  br label %pred.store.continue738

pred.store.continue738:                           ; preds = %pred.store.if737, %pred.store.continue736
  %i.csp = extractelement <16 x i1> %i.cqp, i64 13
  br i1 %i.csp, label %pred.store.if739, label %pred.store.continue740

pred.store.if739:                                 ; preds = %pred.store.continue738
  %i.csq = add i32 %i.cqo, 13
  %i.csr = sext i32 %i.csq to i64
  %i.css = getelementptr inbounds i8, ptr %0, i64 %i.csr
  store i8 32, ptr %i.css, align 1, !tbaa !10
  br label %pred.store.continue740

pred.store.continue740:                           ; preds = %pred.store.if739, %pred.store.continue738
  %i.cst = extractelement <16 x i1> %i.cqp, i64 14
  br i1 %i.cst, label %pred.store.if741, label %pred.store.continue742

pred.store.if741:                                 ; preds = %pred.store.continue740
  %i.csu = add i32 %i.cqo, 14
  %i.csv = sext i32 %i.csu to i64
  %i.csw = getelementptr inbounds i8, ptr %0, i64 %i.csv
  store i8 32, ptr %i.csw, align 1, !tbaa !10
  br label %pred.store.continue742

pred.store.continue742:                           ; preds = %pred.store.if741, %pred.store.continue740
  %i.csx = extractelement <16 x i1> %i.cqp, i64 15
  br i1 %i.csx, label %pred.store.if743, label %pred.store.continue744

pred.store.if743:                                 ; preds = %pred.store.continue742
  %i.csy = add i32 %i.cqo, 15
  %i.csz = sext i32 %i.csy to i64
  %i.cta = getelementptr inbounds i8, ptr %0, i64 %i.csz
  store i8 32, ptr %i.cta, align 1, !tbaa !10
  br label %pred.store.continue744

pred.store.continue744:                           ; preds = %pred.store.if743, %pred.store.continue742
  %index.next = add nuw i32 %index, 16            ; 2 uses
  %vec.ind.next = add nsw <16 x i32> %vec.ind, splat (i32 16)
  %i.ctb = icmp eq i32 %index.next, %n.vec
  br i1 %i.ctb, label %middle.block, label %vector.body, !llvm.loop !85

middle.block:                                     ; preds = %pred.store.continue744
  br i1 %cmp.n, label %.loopexit.i340.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.lr.ph.i346.preheader, label %vec.epilog.ph, !prof !21

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i32 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi i32 [ %i.cqn, %vec.epilog.iter.check ], [ %.promoted514, %vector.main.loop.iter.check ]
  %i.ctc = add i32 %.promoted514, %n.vec745       ; 2 uses
  %broadcast.splatinsert748 = insertelement <4 x i32> poison, i32 %bc.resume.val, i64 0
  %broadcast.splat749 = shufflevector <4 x i32> %broadcast.splatinsert748, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction750 = add nsw <4 x i32> %broadcast.splat749, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %pred.store.continue760, %vec.epilog.ph
  %index751 = phi i32 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next761, %pred.store.continue760 ] ; 2 uses
  %vec.ind752 = phi <4 x i32> [ %induction750, %vec.epilog.ph ], [ %vec.ind.next762, %pred.store.continue760 ] ; 2 uses
  %i.ctd = add i32 %.promoted514, %index751       ; 4 uses
  %i.cte = icmp slt <4 x i32> %vec.ind752, %broadcast.splat747 ; 4 uses
  %i.ctf = extractelement <4 x i1> %i.cte, i64 0
  br i1 %i.ctf, label %pred.store.if753, label %pred.store.continue754

pred.store.if753:                                 ; preds = %vec.epilog.vector.body
  %i.ctg = sext i32 %i.ctd to i64
  %i.cth = getelementptr inbounds i8, ptr %0, i64 %i.ctg
  store i8 32, ptr %i.cth, align 1, !tbaa !10
  br label %pred.store.continue754

pred.store.continue754:                           ; preds = %pred.store.if753, %vec.epilog.vector.body
  %i.cti = extractelement <4 x i1> %i.cte, i64 1
  br i1 %i.cti, label %pred.store.if755, label %pred.store.continue756

pred.store.if755:                                 ; preds = %pred.store.continue754
  %i.ctj = add i32 %i.ctd, 1
  %i.ctk = sext i32 %i.ctj to i64
  %i.ctl = getelementptr inbounds i8, ptr %0, i64 %i.ctk
  store i8 32, ptr %i.ctl, align 1, !tbaa !10
  br label %pred.store.continue756

pred.store.continue756:                           ; preds = %pred.store.if755, %pred.store.continue754
  %i.ctm = extractelement <4 x i1> %i.cte, i64 2
  br i1 %i.ctm, label %pred.store.if757, label %pred.store.continue758

pred.store.if757:                                 ; preds = %pred.store.continue756
  %i.ctn = add i32 %i.ctd, 2
  %i.cto = sext i32 %i.ctn to i64
  %i.ctp = getelementptr inbounds i8, ptr %0, i64 %i.cto
  store i8 32, ptr %i.ctp, align 1, !tbaa !10
  br label %pred.store.continue758

pred.store.continue758:                           ; preds = %pred.store.if757, %pred.store.continue756
  %i.ctq = extractelement <4 x i1> %i.cte, i64 3
  br i1 %i.ctq, label %pred.store.if759, label %pred.store.continue760

pred.store.if759:                                 ; preds = %pred.store.continue758
  %i.ctr = add i32 %i.ctd, 3
  %i.cts = sext i32 %i.ctr to i64
  %i.ctt = getelementptr inbounds i8, ptr %0, i64 %i.cts
  store i8 32, ptr %i.ctt, align 1, !tbaa !10
  br label %pred.store.continue760

pred.store.continue760:                           ; preds = %pred.store.if759, %pred.store.continue758
  %index.next761 = add nuw i32 %index751, 4       ; 2 uses
  %vec.ind.next762 = add nsw <4 x i32> %vec.ind752, splat (i32 4)
  %i.ctu = icmp eq i32 %index.next761, %n.vec745
  br i1 %i.ctu, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !86

vec.epilog.middle.block:                          ; preds = %pred.store.continue760
  br i1 %cmp.n763, label %.loopexit.i340.loopexit, label %.lr.ph.i346.preheader

.lr.ph.i346.preheader:                            ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.pre.i349515.ph = phi i32 [ %.promoted514, %iter.check ], [ %i.cqn, %vec.epilog.iter.check ], [ %i.ctc, %vec.epilog.middle.block ]
  %.030.i347.ph = phi i32 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec745, %vec.epilog.middle.block ]
  br label %.lr.ph.i346

.lr.ph.i346:                                      ; preds = %.lr.ph.i346.preheader, %bb.hp
  %.pre.i349515 = phi i32 [ %i.cty, %bb.hp ], [ %.pre.i349515.ph, %.lr.ph.i346.preheader ] ; 3 uses
  %.030.i347 = phi i32 [ %i.ctz, %bb.hp ], [ %.030.i347.ph, %.lr.ph.i346.preheader ]
  %i.ctv = icmp slt i32 %.pre.i349515, %1
  br i1 %i.ctv, label %bb.ho, label %bb.hp

bb.ho:                                            ; preds = %.lr.ph.i346
  %i.ctw = sext i32 %.pre.i349515 to i64
  %i.ctx = getelementptr inbounds i8, ptr %0, i64 %i.ctw
  store i8 32, ptr %i.ctx, align 1, !tbaa !10
  br label %bb.hp

bb.hp:                                            ; preds = %bb.ho, %.lr.ph.i346
  %i.cty = add nsw i32 %.pre.i349515, 1           ; 2 uses
  %i.ctz = add nuw nsw i32 %.030.i347, 1          ; 2 uses
  %exitcond.not.i348 = icmp eq i32 %i.ctz, %2
  br i1 %exitcond.not.i348, label %.loopexit.i340.loopexit, label %.lr.ph.i346, !llvm.loop !87

.loopexit.i340.loopexit:                          ; preds = %bb.hp, %vec.epilog.middle.block, %middle.block
  %.lcssa711 = phi i32 [ %i.ctc, %vec.epilog.middle.block ], [ %i.cqn, %middle.block ], [ %i.cty, %bb.hp ] ; 2 uses
  store i32 %.lcssa711, ptr %i.a, align 4, !tbaa !19
  br label %.loopexit.i340

.loopexit.i340:                                   ; preds = %.loopexit.i340.loopexit, %bb.hn, %bb.hm, %bb.hl, %bb.hi
  %i.cua = phi i32 [ %.promoted514, %bb.hl ], [ %.promoted514, %bb.hn ], [ %.promoted514, %bb.hi ], [ %.promoted514, %bb.hm ], [ %.lcssa711, %.loopexit.i340.loopexit ] ; 3 uses
  %i.cub = icmp slt i32 %i.cua, %1
  br i1 %i.cub, label %bb.hq, label %bb.hr

bb.hq:                                            ; preds = %.loopexit.i340
  %i.cuc = sext i32 %i.cua to i64
  %i.cud = getelementptr inbounds i8, ptr %0, i64 %i.cuc
  store i8 %i.eh, ptr %i.cud, align 1, !tbaa !10
  br label %bb.hr

bb.hr:                                            ; preds = %bb.hq, %.loopexit.i340
  %.not29.i341 = icmp eq i8 %i.eh, 0
  br i1 %.not29.i341, label %_ZL10outputCharcPcPiii.exit175, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  %i.cue = add nsw i32 %i.cua, 1
  store i32 %i.cue, ptr %i.a, align 4, !tbaa !19
  br label %_ZL10outputCharcPcPiii.exit175

_ZL10outputCharcPcPiii.exit175.loopexit:          ; preds = %_ZL10outputCharcPcPiii.exit.us35.i
  store i32 %.lcssa507510, ptr %i.a, align 4
  br label %_ZL10outputCharcPcPiii.exit175

_ZL10outputCharcPcPiii.exit175.loopexit403:       ; preds = %_ZL10outputCharcPcPiii.exit.us.i
  store i32 %i.je, ptr %i.a, align 4
  br label %_ZL10outputCharcPcPiii.exit175

_ZL10outputCharcPcPiii.exit175:                   ; preds = %_ZL10outputCharcPcPiii.exit.i197.15, %_ZL10outputCharcPcPiii.exit.i190.7, %_ZL10outputCharcPcPiii.exit.i183.3, %_ZL10outputCharcPcPiii.exit.i.1, %_ZL10outputCharcPcPiii.exit175.loopexit403, %_ZL10outputCharcPcPiii.exit175.loopexit, %bb.hs, %bb.hr, %bb.z, %bb.y, %_ZL10outputCharcPcPiii.exit339, %_ZL10outputCharcPcPiii.exit210, %bb.cl, %bb.ar
  %.2145 = phi i32 [ %i.ee, %_ZL10outputCharcPcPiii.exit.i190.7 ], [ %spec.select, %_ZL10outputCharcPcPiii.exit339 ], [ %i.ee, %bb.z ], [ %i.ee, %bb.ar ], [ %i.ee, %bb.hs ], [ %i.ee, %_ZL10outputCharcPcPiii.exit175.loopexit403 ], [ %i.ee, %_ZL10outputCharcPcPiii.exit.i.1 ], [ %i.ee, %_ZL10outputCharcPcPiii.exit.i183.3 ], [ %i.ee, %bb.cl ], [ %.lcssa411, %_ZL10outputCharcPcPiii.exit210 ], [ %i.ee, %bb.y ], [ %i.ee, %_ZL10outputCharcPcPiii.exit175.loopexit ], [ %i.ee, %bb.hr ], [ %i.ee, %_ZL10outputCharcPcPiii.exit.i197.15 ]
  %.4 = phi i64 [ %.0141.ph, %_ZL10outputCharcPcPiii.exit.i190.7 ], [ %.3649, %_ZL10outputCharcPcPiii.exit339 ], [ %.0141.ph, %bb.z ], [ %.0141.ph, %bb.ar ], [ %.0141.ph, %bb.hs ], [ %.0141.ph, %_ZL10outputCharcPcPiii.exit175.loopexit403 ], [ %.0141.ph, %_ZL10outputCharcPcPiii.exit.i.1 ], [ %.0141.ph, %_ZL10outputCharcPcPiii.exit.i183.3 ], [ %.0141.ph, %bb.cl ], [ %.0141.ph, %_ZL10outputCharcPcPiii.exit210 ], [ %.0141.ph, %bb.y ], [ %.0141.ph, %_ZL10outputCharcPcPiii.exit175.loopexit ], [ %.0141.ph, %bb.hr ], [ %i.tc, %_ZL10outputCharcPcPiii.exit.i197.15 ]
  %.promoted430.pre = load i32, ptr %i.a, align 4
  br label %.outer, !llvm.loop !18

bb.ht:                                            ; preds = %bb.k
  %5 = icmp ne i32 %.promoted517, 0
  %.old.i.not = icmp slt i32 %2, 1
  %brmerge = or i1 %5, %.old.i.not
  br i1 %brmerge, label %.loopexit.i355, label %iter.check2383

iter.check2383:                                   ; preds = %bb.ht
  %min.iters.check2303 = icmp ult i32 %2, 4
  br i1 %min.iters.check2303, label %.lr.ph.i358.preheader, label %vector.main.loop.iter.check2304

vector.main.loop.iter.check2304:                  ; preds = %iter.check2383
  %min.iters.check2305 = icmp ult i32 %2, 32
  br i1 %min.iters.check2305, label %vec.epilog.ph2387, label %vector.ph2306

vector.ph2306:                                    ; preds = %vector.main.loop.iter.check2304
  %i.cuf = and i32 %2, 28
  %n.vec2307 = and i32 %2, 2147483616             ; 5 uses
  %broadcast.splatinsert2308 = insertelement <16 x i32> poison, i32 %1, i64 0
  %broadcast.splat2309 = shufflevector <16 x i32> %broadcast.splatinsert2308, <16 x i32> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body2310

vector.body2310:                                  ; preds = %pred.store.continue2377, %vector.ph2306
  %index2311 = phi i32 [ 0, %vector.ph2306 ], [ %index.next2378, %pred.store.continue2377 ] ; 33 uses
  %vec.ind2312 = phi <16 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, %vector.ph2306 ], [ %vec.ind.next2379, %pred.store.continue2377 ] ; 3 uses
  %step.add2313 = add nuw <16 x i32> %vec.ind2312, splat (i32 16)
  %i.cug = icmp slt <16 x i32> %vec.ind2312, %broadcast.splat2309 ; 16 uses
  %i.cuh = icmp slt <16 x i32> %step.add2313, %broadcast.splat2309 ; 16 uses
  %i.cui = extractelement <16 x i1> %i.cug, i64 0
  br i1 %i.cui, label %pred.store.if2314, label %pred.store.continue2315

pred.store.if2314:                                ; preds = %vector.body2310
  %i.cuj = zext nneg i32 %index2311 to i64
  %i.cuk = getelementptr inbounds nuw i8, ptr %0, i64 %i.cuj
  store i8 32, ptr %i.cuk, align 1, !tbaa !10
  br label %pred.store.continue2315

pred.store.continue2315:                          ; preds = %pred.store.if2314, %vector.body2310
  %i.cul = extractelement <16 x i1> %i.cug, i64 1
  br i1 %i.cul, label %pred.store.if2316, label %pred.store.continue2317

pred.store.if2316:                                ; preds = %pred.store.continue2315
  %i.cum = sext i32 %index2311 to i64
  %i.cun = getelementptr inbounds nuw i8, ptr %0, i64 %i.cum
  %i.cuo = getelementptr inbounds nuw i8, ptr %i.cun, i64 1
  store i8 32, ptr %i.cuo, align 1, !tbaa !10
  br label %pred.store.continue2317

pred.store.continue2317:                          ; preds = %pred.store.if2316, %pred.store.continue2315
  %i.cup = extractelement <16 x i1> %i.cug, i64 2
  br i1 %i.cup, label %pred.store.if2318, label %pred.store.continue2319

pred.store.if2318:                                ; preds = %pred.store.continue2317
  %i.cuq = sext i32 %index2311 to i64
  %i.cur = getelementptr inbounds nuw i8, ptr %0, i64 %i.cuq
  %i.cus = getelementptr inbounds nuw i8, ptr %i.cur, i64 2
  store i8 32, ptr %i.cus, align 1, !tbaa !10
  br label %pred.store.continue2319

pred.store.continue2319:                          ; preds = %pred.store.if2318, %pred.store.continue2317
  %i.cut = extractelement <16 x i1> %i.cug, i64 3
  br i1 %i.cut, label %pred.store.if2320, label %pred.store.continue2321

pred.store.if2320:                                ; preds = %pred.store.continue2319
  %i.cuu = sext i32 %index2311 to i64
  %i.cuv = getelementptr inbounds nuw i8, ptr %0, i64 %i.cuu
  %i.cuw = getelementptr inbounds nuw i8, ptr %i.cuv, i64 3
  store i8 32, ptr %i.cuw, align 1, !tbaa !10
  br label %pred.store.continue2321

pred.store.continue2321:                          ; preds = %pred.store.if2320, %pred.store.continue2319
  %i.cux = extractelement <16 x i1> %i.cug, i64 4
  br i1 %i.cux, label %pred.store.if2322, label %pred.store.continue2323

pred.store.if2322:                                ; preds = %pred.store.continue2321
  %i.cuy = sext i32 %index2311 to i64
  %i.cuz = getelementptr inbounds nuw i8, ptr %0, i64 %i.cuy
  %i.cva = getelementptr inbounds nuw i8, ptr %i.cuz, i64 4
  store i8 32, ptr %i.cva, align 1, !tbaa !10
  br label %pred.store.continue2323

pred.store.continue2323:                          ; preds = %pred.store.if2322, %pred.store.continue2321
  %i.cvb = extractelement <16 x i1> %i.cug, i64 5
  br i1 %i.cvb, label %pred.store.if2324, label %pred.store.continue2325

pred.store.if2324:                                ; preds = %pred.store.continue2323
  %i.cvc = sext i32 %index2311 to i64
  %i.cvd = getelementptr inbounds nuw i8, ptr %0, i64 %i.cvc
  %i.cve = getelementptr inbounds nuw i8, ptr %i.cvd, i64 5
  store i8 32, ptr %i.cve, align 1, !tbaa !10
  br label %pred.store.continue2325

pred.store.continue2325:                          ; preds = %pred.store.if2324, %pred.store.continue2323
  %i.cvf = extractelement <16 x i1> %i.cug, i64 6
  br i1 %i.cvf, label %pred.store.if2326, label %pred.store.continue2327

pred.store.if2326:                                ; preds = %pred.store.continue2325
  %i.cvg = sext i32 %index2311 to i64
  %i.cvh = getelementptr inbounds nuw i8, ptr %0, i64 %i.cvg
  %i.cvi = getelementptr inbounds nuw i8, ptr %i.cvh, i64 6
  store i8 32, ptr %i.cvi, align 1, !tbaa !10
  br label %pred.store.continue2327

pred.store.continue2327:                          ; preds = %pred.store.if2326, %pred.store.continue2325
  %i.cvj = extractelement <16 x i1> %i.cug, i64 7
  br i1 %i.cvj, label %pred.store.if2328, label %pred.store.continue2329

pred.store.if2328:                                ; preds = %pred.store.continue2327
  %i.cvk = sext i32 %index2311 to i64
  %i.cvl = getelementptr inbounds nuw i8, ptr %0, i64 %i.cvk
  %i.cvm = getelementptr inbounds nuw i8, ptr %i.cvl, i64 7
  store i8 32, ptr %i.cvm, align 1, !tbaa !10
  br label %pred.store.continue2329

pred.store.continue2329:                          ; preds = %pred.store.if2328, %pred.store.continue2327
  %i.cvn = extractelement <16 x i1> %i.cug, i64 8
  br i1 %i.cvn, label %pred.store.if2330, label %pred.store.continue2331

pred.store.if2330:                                ; preds = %pred.store.continue2329
  %i.cvo = sext i32 %index2311 to i64
  %i.cvp = getelementptr inbounds nuw i8, ptr %0, i64 %i.cvo
  %i.cvq = getelementptr inbounds nuw i8, ptr %i.cvp, i64 8
  store i8 32, ptr %i.cvq, align 1, !tbaa !10
  br label %pred.store.continue2331

pred.store.continue2331:                          ; preds = %pred.store.if2330, %pred.store.continue2329
  %i.cvr = extractelement <16 x i1> %i.cug, i64 9
  br i1 %i.cvr, label %pred.store.if2332, label %pred.store.continue2333

pred.store.if2332:                                ; preds = %pred.store.continue2331
  %i.cvs = sext i32 %index2311 to i64
  %i.cvt = getelementptr inbounds nuw i8, ptr %0, i64 %i.cvs
  %i.cvu = getelementptr inbounds nuw i8, ptr %i.cvt, i64 9
  store i8 32, ptr %i.cvu, align 1, !tbaa !10
  br label %pred.store.continue2333

pred.store.continue2333:                          ; preds = %pred.store.if2332, %pred.store.continue2331
  %i.cvv = extractelement <16 x i1> %i.cug, i64 10
  br i1 %i.cvv, label %pred.store.if2334, label %pred.store.continue2335

pred.store.if2334:                                ; preds = %pred.store.continue2333
  %i.cvw = sext i32 %index2311 to i64
  %i.cvx = getelementptr inbounds nuw i8, ptr %0, i64 %i.cvw
  %i.cvy = getelementptr inbounds nuw i8, ptr %i.cvx, i64 10
  store i8 32, ptr %i.cvy, align 1, !tbaa !10
  br label %pred.store.continue2335

pred.store.continue2335:                          ; preds = %pred.store.if2334, %pred.store.continue2333
  %i.cvz = extractelement <16 x i1> %i.cug, i64 11
  br i1 %i.cvz, label %pred.store.if2336, label %pred.store.continue2337

pred.store.if2336:                                ; preds = %pred.store.continue2335
  %i.cwa = sext i32 %index2311 to i64
  %i.cwb = getelementptr inbounds nuw i8, ptr %0, i64 %i.cwa
  %i.cwc = getelementptr inbounds nuw i8, ptr %i.cwb, i64 11
  store i8 32, ptr %i.cwc, align 1, !tbaa !10
  br label %pred.store.continue2337

pred.store.continue2337:                          ; preds = %pred.store.if2336, %pred.store.continue2335
  %i.cwd = extractelement <16 x i1> %i.cug, i64 12
  br i1 %i.cwd, label %pred.store.if2338, label %pred.store.continue2339

pred.store.if2338:                                ; preds = %pred.store.continue2337
  %i.cwe = sext i32 %index2311 to i64
  %i.cwf = getelementptr inbounds nuw i8, ptr %0, i64 %i.cwe
  %i.cwg = getelementptr inbounds nuw i8, ptr %i.cwf, i64 12
  store i8 32, ptr %i.cwg, align 1, !tbaa !10
  br label %pred.store.continue2339

pred.store.continue2339:                          ; preds = %pred.store.if2338, %pred.store.continue2337
  %i.cwh = extractelement <16 x i1> %i.cug, i64 13
  br i1 %i.cwh, label %pred.store.if2340, label %pred.store.continue2341

pred.store.if2340:                                ; preds = %pred.store.continue2339
  %i.cwi = sext i32 %index2311 to i64
  %i.cwj = getelementptr inbounds nuw i8, ptr %0, i64 %i.cwi
  %i.cwk = getelementptr inbounds nuw i8, ptr %i.cwj, i64 13
  store i8 32, ptr %i.cwk, align 1, !tbaa !10
  br label %pred.store.continue2341

pred.store.continue2341:                          ; preds = %pred.store.if2340, %pred.store.continue2339
  %i.cwl = extractelement <16 x i1> %i.cug, i64 14
  br i1 %i.cwl, label %pred.store.if2342, label %pred.store.continue2343

pred.store.if2342:                                ; preds = %pred.store.continue2341
  %i.cwm = sext i32 %index2311 to i64
  %i.cwn = getelementptr inbounds nuw i8, ptr %0, i64 %i.cwm
  %i.cwo = getelementptr inbounds nuw i8, ptr %i.cwn, i64 14
  store i8 32, ptr %i.cwo, align 1, !tbaa !10
  br label %pred.store.continue2343

pred.store.continue2343:                          ; preds = %pred.store.if2342, %pred.store.continue2341
  %i.cwp = extractelement <16 x i1> %i.cug, i64 15
  br i1 %i.cwp, label %pred.store.if2344, label %pred.store.continue2345

pred.store.if2344:                                ; preds = %pred.store.continue2343
  %i.cwq = sext i32 %index2311 to i64
  %i.cwr = getelementptr inbounds nuw i8, ptr %0, i64 %i.cwq
  %i.cws = getelementptr inbounds nuw i8, ptr %i.cwr, i64 15
  store i8 32, ptr %i.cws, align 1, !tbaa !10
  br label %pred.store.continue2345

pred.store.continue2345:                          ; preds = %pred.store.if2344, %pred.store.continue2343
  %i.cwt = extractelement <16 x i1> %i.cuh, i64 0
  br i1 %i.cwt, label %pred.store.if2346, label %pred.store.continue2347

end_hunk_1
