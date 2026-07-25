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

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @utrace_entry_78(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @_ZL15pTraceEntryFunc, align 8 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @_ZL13gTraceContext, align 8
  tail call void %i.a(ptr noundef %i.b, i32 noundef %0) #14
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @utrace_exit_78(i32 noundef %0, i32 noundef %1, ...) local_unnamed_addr #0 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  %i.a = load ptr, ptr @_ZL14pTraceExitFunc, align 8 ; 2 uses
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
  %i.d = load ptr, ptr @_ZL13gTraceContext, align 8
  call void %i.a(ptr noundef %i.d, i32 noundef %0, ptr noundef nonnull %switch.load, ptr noundef nonnull %2) #14
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

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @utrace_data_78(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #0 {
bb.a:
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  %i.a = load ptr, ptr @_ZL14pTraceDataFunc, align 8 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @llvm.va_start.p0(ptr nonnull %3)
  %i.b = load ptr, ptr @_ZL13gTraceContext, align 8
  call void %i.a(ptr noundef %i.b, i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %3) #14
  call void @llvm.va_end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -2147483647, -2147483648) i32 @utrace_vformat_78(ptr nofree noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 31 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %.old.i = icmp sgt i32 %2, 0                    ; 28 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 22 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 11 uses
  %i.d = sext i32 %1 to i64                       ; 37 uses
  %5 = add i32 %2, -1                             ; 3 uses
  %i.e = zext i32 %5 to i64
  %6 = add nuw nsw i64 %i.e, 1                    ; 5 uses
  %min.iters.check2253 = icmp ult i32 %5, 7
  %min.iters.check2255 = icmp ult i32 %5, 15
  %n.mod.vf2257 = and i64 %6, 8
  %n.vec2258 = and i64 %6, 8589934576             ; 5 uses
  %i.f = trunc i64 %n.vec2258 to i32
  %broadcast.splatinsert2259 = insertelement <16 x i64> poison, i64 %i.d, i64 0
  %broadcast.splat2260 = shufflevector <16 x i64> %broadcast.splatinsert2259, <16 x i64> poison, <16 x i32> zeroinitializer
  %cmp.n2302 = icmp eq i64 %6, %n.vec2258
  %min.epilog.iters.check2309.not.not = icmp eq i64 %n.mod.vf2257, 0
  %n.vec2312 = and i64 %6, 8589934584             ; 4 uses
  %i.g = trunc i64 %n.vec2312 to i32
  %broadcast.splatinsert2313 = insertelement <8 x i64> poison, i64 %i.d, i64 0
  %broadcast.splat2314 = shufflevector <8 x i64> %broadcast.splatinsert2313, <8 x i64> poison, <8 x i32> zeroinitializer
  %cmp.n2340 = icmp eq i64 %6, %n.vec2312
  %min.iters.check2172 = icmp ult i32 %2, 4
  %min.iters.check2174 = icmp ult i32 %2, 16
  %n.mod.vf2176 = and i32 %2, 12
  %n.vec2177 = and i32 %2, -16                    ; 5 uses
  %broadcast.splatinsert2178 = insertelement <16 x i32> poison, i32 %1, i64 0
  %broadcast.splat2179 = shufflevector <16 x i32> %broadcast.splatinsert2178, <16 x i32> poison, <16 x i32> zeroinitializer
  %cmp.n2221 = icmp eq i32 %2, %n.vec2177
  %min.epilog.iters.check2227 = icmp eq i32 %n.mod.vf2176, 0
  %n.vec2230 = and i32 %2, -4                     ; 4 uses
  %broadcast.splatinsert2231 = insertelement <4 x i32> poison, i32 %1, i64 0
  %broadcast.splat2232 = shufflevector <4 x i32> %broadcast.splatinsert2231, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n2250 = icmp eq i32 %2, %n.vec2230
  %min.iters.check2091 = icmp ult i32 %2, 4
  %min.iters.check2093 = icmp ult i32 %2, 16
  %n.mod.vf2095 = and i32 %2, 12
  %n.vec2096 = and i32 %2, 2147483632             ; 5 uses
  %broadcast.splatinsert2097 = insertelement <16 x i32> poison, i32 %1, i64 0
  %broadcast.splat2098 = shufflevector <16 x i32> %broadcast.splatinsert2097, <16 x i32> poison, <16 x i32> zeroinitializer
  %cmp.n2140 = icmp eq i32 %2, %n.vec2096
  %min.epilog.iters.check2146 = icmp eq i32 %n.mod.vf2095, 0
  %n.vec2149 = and i32 %2, 2147483644             ; 4 uses
  %broadcast.splatinsert2150 = insertelement <4 x i32> poison, i32 %1, i64 0
  %broadcast.splat2151 = shufflevector <4 x i32> %broadcast.splatinsert2150, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n2169 = icmp eq i32 %2, %n.vec2149
  %min.iters.check2010 = icmp ult i32 %2, 4
  %min.iters.check2012 = icmp ult i32 %2, 16
  %n.mod.vf2014 = and i32 %2, 12
  %n.vec2015 = and i32 %2, -16                    ; 5 uses
  %broadcast.splatinsert2016 = insertelement <16 x i32> poison, i32 %1, i64 0
  %broadcast.splat2017 = shufflevector <16 x i32> %broadcast.splatinsert2016, <16 x i32> poison, <16 x i32> zeroinitializer
  %cmp.n2059 = icmp eq i32 %2, %n.vec2015
  %min.epilog.iters.check2065 = icmp eq i32 %n.mod.vf2014, 0
  %n.vec2068 = and i32 %2, -4                     ; 4 uses
  %broadcast.splatinsert2069 = insertelement <4 x i32> poison, i32 %1, i64 0
  %broadcast.splat2070 = shufflevector <4 x i32> %broadcast.splatinsert2069, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n2088 = icmp eq i32 %2, %n.vec2068
  %min.iters.check1929 = icmp ult i32 %2, 4
  %min.iters.check1931 = icmp ult i32 %2, 16
  %n.mod.vf1933 = and i32 %2, 12
  %n.vec1934 = and i32 %2, -16                    ; 5 uses
  %broadcast.splatinsert1935 = insertelement <16 x i32> poison, i32 %1, i64 0
  %broadcast.splat1936 = shufflevector <16 x i32> %broadcast.splatinsert1935, <16 x i32> poison, <16 x i32> zeroinitializer
  %cmp.n1978 = icmp eq i32 %2, %n.vec1934
  %min.epilog.iters.check1984 = icmp eq i32 %n.mod.vf1933, 0
  %n.vec1987 = and i32 %2, -4                     ; 4 uses
  %broadcast.splatinsert1988 = insertelement <4 x i32> poison, i32 %1, i64 0
  %broadcast.splat1989 = shufflevector <4 x i32> %broadcast.splatinsert1988, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n2007 = icmp eq i32 %2, %n.vec1987
  %min.iters.check1848 = icmp ult i32 %2, 4
  %min.iters.check1850 = icmp ult i32 %2, 16
  %n.mod.vf1852 = and i32 %2, 12
  %n.vec1853 = and i32 %2, -16                    ; 5 uses
  %broadcast.splatinsert1854 = insertelement <16 x i32> poison, i32 %1, i64 0
  %broadcast.splat1855 = shufflevector <16 x i32> %broadcast.splatinsert1854, <16 x i32> poison, <16 x i32> zeroinitializer
  %cmp.n1897 = icmp eq i32 %2, %n.vec1853
  %min.epilog.iters.check1903 = icmp eq i32 %n.mod.vf1852, 0
  %n.vec1906 = and i32 %2, -4                     ; 4 uses
  %broadcast.splatinsert1907 = insertelement <4 x i32> poison, i32 %1, i64 0
  %broadcast.splat1908 = shufflevector <4 x i32> %broadcast.splatinsert1907, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n1926 = icmp eq i32 %2, %n.vec1906
  %min.iters.check1767 = icmp ult i32 %2, 4
  %min.iters.check1769 = icmp ult i32 %2, 16
  %n.mod.vf1771 = and i32 %2, 12
  %n.vec1772 = and i32 %2, 2147483632             ; 5 uses
  %broadcast.splatinsert1773 = insertelement <16 x i32> poison, i32 %1, i64 0
  %broadcast.splat1774 = shufflevector <16 x i32> %broadcast.splatinsert1773, <16 x i32> poison, <16 x i32> zeroinitializer
  %cmp.n1816 = icmp eq i32 %2, %n.vec1772
  %min.epilog.iters.check1822 = icmp eq i32 %n.mod.vf1771, 0
  %n.vec1825 = and i32 %2, 2147483644             ; 4 uses
  %broadcast.splatinsert1826 = insertelement <4 x i32> poison, i32 %1, i64 0
  %broadcast.splat1827 = shufflevector <4 x i32> %broadcast.splatinsert1826, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n1845 = icmp eq i32 %2, %n.vec1825
  %min.iters.check1686 = icmp ult i32 %2, 4
  %min.iters.check1688 = icmp ult i32 %2, 16
  %n.mod.vf1690 = and i32 %2, 12
  %n.vec1691 = and i32 %2, 2147483632             ; 5 uses
  %broadcast.splatinsert1692 = insertelement <16 x i32> poison, i32 %1, i64 0
  %broadcast.splat1693 = shufflevector <16 x i32> %broadcast.splatinsert1692, <16 x i32> poison, <16 x i32> zeroinitializer
  %cmp.n1735 = icmp eq i32 %2, %n.vec1691
  %min.epilog.iters.check1741 = icmp eq i32 %n.mod.vf1690, 0
  %n.vec1744 = and i32 %2, 2147483644             ; 4 uses
  %broadcast.splatinsert1745 = insertelement <4 x i32> poison, i32 %1, i64 0
  %broadcast.splat1746 = shufflevector <4 x i32> %broadcast.splatinsert1745, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n1764 = icmp eq i32 %2, %n.vec1744
  %min.iters.check1605 = icmp ult i32 %2, 4
  %min.iters.check1607 = icmp ult i32 %2, 16
  %n.mod.vf1609 = and i32 %2, 12
  %n.vec1610 = and i32 %2, 2147483632             ; 5 uses
  %broadcast.splatinsert1611 = insertelement <16 x i32> poison, i32 %1, i64 0
  %broadcast.splat1612 = shufflevector <16 x i32> %broadcast.splatinsert1611, <16 x i32> poison, <16 x i32> zeroinitializer
  %cmp.n1654 = icmp eq i32 %2, %n.vec1610
  %min.epilog.iters.check1660 = icmp eq i32 %n.mod.vf1609, 0
  %n.vec1663 = and i32 %2, 2147483644             ; 4 uses
  %broadcast.splatinsert1664 = insertelement <4 x i32> poison, i32 %1, i64 0
  %broadcast.splat1665 = shufflevector <4 x i32> %broadcast.splatinsert1664, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n1683 = icmp eq i32 %2, %n.vec1663
  %min.iters.check1524 = icmp ult i32 %2, 4
  %min.iters.check1526 = icmp ult i32 %2, 16
  %n.mod.vf1528 = and i32 %2, 12
  %n.vec1529 = and i32 %2, 2147483632             ; 5 uses
  %broadcast.splatinsert1530 = insertelement <16 x i32> poison, i32 %1, i64 0
  %broadcast.splat1531 = shufflevector <16 x i32> %broadcast.splatinsert1530, <16 x i32> poison, <16 x i32> zeroinitializer
  %cmp.n1573 = icmp eq i32 %2, %n.vec1529
  %min.epilog.iters.check1579 = icmp eq i32 %n.mod.vf1528, 0
  %n.vec1582 = and i32 %2, 2147483644             ; 4 uses
  %broadcast.splatinsert1583 = insertelement <4 x i32> poison, i32 %1, i64 0
  %broadcast.splat1584 = shufflevector <4 x i32> %broadcast.splatinsert1583, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n1602 = icmp eq i32 %2, %n.vec1582
  %min.iters.check1443 = icmp ult i32 %2, 4
  %min.iters.check1445 = icmp ult i32 %2, 16
  %n.mod.vf1447 = and i32 %2, 12
  %n.vec1448 = and i32 %2, 2147483632             ; 5 uses
  %broadcast.splatinsert1449 = insertelement <16 x i32> poison, i32 %1, i64 0
  %broadcast.splat1450 = shufflevector <16 x i32> %broadcast.splatinsert1449, <16 x i32> poison, <16 x i32> zeroinitializer
  %cmp.n1492 = icmp eq i32 %2, %n.vec1448
  %min.epilog.iters.check1498 = icmp eq i32 %n.mod.vf1447, 0
  %n.vec1501 = and i32 %2, 2147483644             ; 4 uses
  %broadcast.splatinsert1502 = insertelement <4 x i32> poison, i32 %1, i64 0
  %broadcast.splat1503 = shufflevector <4 x i32> %broadcast.splatinsert1502, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n1521 = icmp eq i32 %2, %n.vec1501
  %min.iters.check1362 = icmp ult i32 %2, 4
  %min.iters.check1364 = icmp ult i32 %2, 16
  %n.mod.vf1366 = and i32 %2, 12
  %n.vec1367 = and i32 %2, 2147483632             ; 5 uses
  %broadcast.splatinsert1368 = insertelement <16 x i32> poison, i32 %1, i64 0
  %broadcast.splat1369 = shufflevector <16 x i32> %broadcast.splatinsert1368, <16 x i32> poison, <16 x i32> zeroinitializer
  %cmp.n1411 = icmp eq i32 %2, %n.vec1367
  %min.epilog.iters.check1417 = icmp eq i32 %n.mod.vf1366, 0
  %n.vec1420 = and i32 %2, 2147483644             ; 4 uses
  %broadcast.splatinsert1421 = insertelement <4 x i32> poison, i32 %1, i64 0
  %broadcast.splat1422 = shufflevector <4 x i32> %broadcast.splatinsert1421, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n1440 = icmp eq i32 %2, %n.vec1420
  %min.iters.check1281 = icmp ult i32 %2, 4
  %min.iters.check1283 = icmp ult i32 %2, 16
  %n.mod.vf1285 = and i32 %2, 12
  %n.vec1286 = and i32 %2, 2147483632             ; 5 uses
  %broadcast.splatinsert1287 = insertelement <16 x i32> poison, i32 %1, i64 0
  %broadcast.splat1288 = shufflevector <16 x i32> %broadcast.splatinsert1287, <16 x i32> poison, <16 x i32> zeroinitializer
  %cmp.n1330 = icmp eq i32 %2, %n.vec1286
  %min.epilog.iters.check1336 = icmp eq i32 %n.mod.vf1285, 0
  %n.vec1339 = and i32 %2, 2147483644             ; 4 uses
  %broadcast.splatinsert1340 = insertelement <4 x i32> poison, i32 %1, i64 0
  %broadcast.splat1341 = shufflevector <4 x i32> %broadcast.splatinsert1340, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n1359 = icmp eq i32 %2, %n.vec1339
  %min.iters.check1173 = icmp ult i32 %2, 4
  %min.iters.check1175 = icmp ult i32 %2, 32
  %n.mod.vf1177 = and i32 %2, 28
  %n.vec1178 = and i32 %2, 2147483616             ; 5 uses
  %broadcast.splatinsert1179 = insertelement <16 x i32> poison, i32 %1, i64 0
  %broadcast.splat1180 = shufflevector <16 x i32> %broadcast.splatinsert1179, <16 x i32> poison, <16 x i32> zeroinitializer ; 2 uses
  %cmp.n1251 = icmp eq i32 %2, %n.vec1178
  %min.epilog.iters.check1256 = icmp eq i32 %n.mod.vf1177, 0
  %n.vec1259 = and i32 %2, 2147483644             ; 4 uses
  %broadcast.splatinsert1260 = insertelement <4 x i32> poison, i32 %1, i64 0
  %broadcast.splat1261 = shufflevector <4 x i32> %broadcast.splatinsert1260, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n1279 = icmp eq i32 %2, %n.vec1259
  %min.iters.check1092 = icmp ult i32 %2, 4
  %min.iters.check1094 = icmp ult i32 %2, 16
  %n.mod.vf1096 = and i32 %2, 12
  %n.vec1097 = and i32 %2, -16                    ; 5 uses
  %broadcast.splatinsert1098 = insertelement <16 x i32> poison, i32 %1, i64 0
  %broadcast.splat1099 = shufflevector <16 x i32> %broadcast.splatinsert1098, <16 x i32> poison, <16 x i32> zeroinitializer
  %cmp.n1141 = icmp eq i32 %2, %n.vec1097
  %min.epilog.iters.check1147 = icmp eq i32 %n.mod.vf1096, 0
  %n.vec1150 = and i32 %2, -4                     ; 4 uses
  %broadcast.splatinsert1151 = insertelement <4 x i32> poison, i32 %1, i64 0
  %broadcast.splat1152 = shufflevector <4 x i32> %broadcast.splatinsert1151, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n1170 = icmp eq i32 %2, %n.vec1150
  %min.iters.check1011 = icmp ult i32 %2, 4
  %min.iters.check1013 = icmp ult i32 %2, 16
  %n.mod.vf1015 = and i32 %2, 12
  %n.vec1016 = and i32 %2, -16                    ; 5 uses
  %broadcast.splatinsert1017 = insertelement <16 x i32> poison, i32 %1, i64 0
  %broadcast.splat1018 = shufflevector <16 x i32> %broadcast.splatinsert1017, <16 x i32> poison, <16 x i32> zeroinitializer
  %cmp.n1060 = icmp eq i32 %2, %n.vec1016
  %min.epilog.iters.check1066 = icmp eq i32 %n.mod.vf1015, 0
  %n.vec1069 = and i32 %2, -4                     ; 4 uses
  %broadcast.splatinsert1070 = insertelement <4 x i32> poison, i32 %1, i64 0
  %broadcast.splat1071 = shufflevector <4 x i32> %broadcast.splatinsert1070, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n1089 = icmp eq i32 %2, %n.vec1069
  %min.iters.check930 = icmp ult i32 %2, 4
  %min.iters.check932 = icmp ult i32 %2, 16
  %n.mod.vf934 = and i32 %2, 12
  %n.vec935 = and i32 %2, -16                     ; 5 uses
  %broadcast.splatinsert936 = insertelement <16 x i32> poison, i32 %1, i64 0
  %broadcast.splat937 = shufflevector <16 x i32> %broadcast.splatinsert936, <16 x i32> poison, <16 x i32> zeroinitializer
  %cmp.n979 = icmp eq i32 %2, %n.vec935
  %min.epilog.iters.check985 = icmp eq i32 %n.mod.vf934, 0
  %n.vec988 = and i32 %2, -4                      ; 4 uses
  %broadcast.splatinsert989 = insertelement <4 x i32> poison, i32 %1, i64 0
  %broadcast.splat990 = shufflevector <4 x i32> %broadcast.splatinsert989, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n1008 = icmp eq i32 %2, %n.vec988
  %min.iters.check849 = icmp ult i32 %2, 4
  %min.iters.check851 = icmp ult i32 %2, 16
  %n.mod.vf853 = and i32 %2, 12
  %n.vec854 = and i32 %2, 2147483632              ; 5 uses
  %broadcast.splatinsert855 = insertelement <16 x i32> poison, i32 %1, i64 0
  %broadcast.splat856 = shufflevector <16 x i32> %broadcast.splatinsert855, <16 x i32> poison, <16 x i32> zeroinitializer
  %cmp.n898 = icmp eq i32 %2, %n.vec854
  %min.epilog.iters.check904 = icmp eq i32 %n.mod.vf853, 0
  %n.vec907 = and i32 %2, 2147483644              ; 4 uses
  %broadcast.splatinsert908 = insertelement <4 x i32> poison, i32 %1, i64 0
  %broadcast.splat909 = shufflevector <4 x i32> %broadcast.splatinsert908, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n927 = icmp eq i32 %2, %n.vec907
  %min.iters.check768 = icmp ult i32 %2, 4
  %min.iters.check770 = icmp ult i32 %2, 16
  %n.mod.vf772 = and i32 %2, 12
  %n.vec773 = and i32 %2, -16                     ; 5 uses
  %broadcast.splatinsert774 = insertelement <16 x i32> poison, i32 %1, i64 0
  %broadcast.splat775 = shufflevector <16 x i32> %broadcast.splatinsert774, <16 x i32> poison, <16 x i32> zeroinitializer
  %cmp.n817 = icmp eq i32 %2, %n.vec773
  %min.epilog.iters.check823 = icmp eq i32 %n.mod.vf772, 0
  %n.vec826 = and i32 %2, -4                      ; 4 uses
  %broadcast.splatinsert827 = insertelement <4 x i32> poison, i32 %1, i64 0
  %broadcast.splat828 = shufflevector <4 x i32> %broadcast.splatinsert827, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n846 = icmp eq i32 %2, %n.vec826
  %min.iters.check = icmp ult i32 %2, 4
  %min.iters.check713 = icmp ult i32 %2, 16
  %n.mod.vf = and i32 %2, 12
  %n.vec = and i32 %2, -16                        ; 5 uses
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %1, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer
  %cmp.n = icmp eq i32 %2, %n.vec
  %min.epilog.iters.check = icmp eq i32 %n.mod.vf, 0
  %n.vec747 = and i32 %2, -4                      ; 4 uses
  %broadcast.splatinsert748 = insertelement <4 x i32> poison, i32 %1, i64 0
  %broadcast.splat749 = shufflevector <4 x i32> %broadcast.splatinsert748, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n765 = icmp eq i32 %2, %n.vec747
  br label %.outer

.outer:                                           ; preds = %_ZL10outputCharcPcPiii.exit175, %bb.a
  %.promoted430 = phi i32 [ %.promoted430.pre, %_ZL10outputCharcPcPiii.exit175 ], [ 0, %bb.a ] ; 2 uses
  %.0143.ph = phi i64 [ %.4, %_ZL10outputCharcPcPiii.exit175 ], [ 0, %bb.a ] ; 18 uses
  %.0141.ph = phi i32 [ %.2, %_ZL10outputCharcPcPiii.exit175 ], [ 0, %bb.a ] ; 3 uses
  %i.h = add i32 %.0141.ph, 1                     ; 2 uses
  %i.i = sext i32 %.0141.ph to i64
  %i.j = getelementptr inbounds i8, ptr %3, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1               ; 2 uses
  %.not433 = icmp eq i8 %i.k, 37
  br i1 %.not433, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.outer
  %i.l = sext i32 %i.h to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZL10outputCharcPcPiii.exit
  %indvars.iv549 = phi i64 [ %i.l, %.lr.ph.preheader ], [ %indvars.iv.next550, %_ZL10outputCharcPcPiii.exit ] ; 3 uses
  %i.m = phi i8 [ %i.k, %.lr.ph.preheader ], [ %i.df, %_ZL10outputCharcPcPiii.exit ] ; 4 uses
  %.lcssa429431434 = phi i32 [ %.promoted430, %.lr.ph.preheader ], [ %i.dd, %_ZL10outputCharcPcPiii.exit ] ; 10 uses
  %i.n = icmp eq i32 %.lcssa429431434, 0
  br i1 %i.n, label %bb.g, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  switch i8 %i.m, label %bb.c [
    i8 10, label %bb.f
    i8 0, label %.loopexit.i
  ]

bb.c:                                             ; preds = %bb.b
  %i.o = icmp slt i32 %.lcssa429431434, %1
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = sext i32 %.lcssa429431434 to i64
  %i.q = getelementptr i8, ptr %0, i64 %i.p
  %i.r = getelementptr i8, ptr %i.q, i64 -1
  %i.s = load i8, ptr %i.r, align 1
  %i.t = icmp eq i8 %i.s, 10
  br i1 %i.t, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.u = icmp eq i8 %i.m, 10
  %.not.i = icmp sge i32 %.lcssa429431434, %1
  %or.cond.not34.i = and i1 %i.u, %.not.i
  %or.cond31.i = and i1 %.old.i, %or.cond.not34.i
  br i1 %or.cond31.i, label %iter.check2306, label %.loopexit.i

bb.f:                                             ; preds = %bb.b
  %.not.old.i = icmp sge i32 %.lcssa429431434, %1
  %or.cond32.i = and i1 %.old.i, %.not.old.i
  br i1 %or.cond32.i, label %iter.check2306, label %.loopexit.i

bb.g:                                             ; preds = %bb.d, %.lr.ph
  br i1 %.old.i, label %iter.check2306, label %.loopexit.i

iter.check2306:                                   ; preds = %bb.g, %bb.f, %bb.e
  %i.v = sext i32 %.lcssa429431434 to i64         ; 7 uses
  br i1 %min.iters.check2253, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check2254

vector.main.loop.iter.check2254:                  ; preds = %iter.check2306
  br i1 %min.iters.check2255, label %vec.epilog.ph2310, label %vector.ph2256

vector.ph2256:                                    ; preds = %vector.main.loop.iter.check2254
  %i.w = add nsw i64 %n.vec2258, %i.v             ; 3 uses
  %broadcast.splatinsert2261 = insertelement <16 x i64> poison, i64 %i.v, i64 0
  %broadcast.splat2262 = shufflevector <16 x i64> %broadcast.splatinsert2261, <16 x i64> poison, <16 x i32> zeroinitializer
  %induction2263 = add nsw <16 x i64> %broadcast.splat2262, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  br label %vector.body2264

vector.body2264:                                  ; preds = %pred.store.continue2298, %vector.ph2256
  %index2265 = phi i64 [ 0, %vector.ph2256 ], [ %index.next2299, %pred.store.continue2298 ] ; 2 uses
  %vec.ind2266 = phi <16 x i64> [ %induction2263, %vector.ph2256 ], [ %vec.ind.next2300, %pred.store.continue2298 ] ; 2 uses
  %i.x = add i64 %index2265, %i.v                 ; 16 uses
  %i.y = icmp slt <16 x i64> %vec.ind2266, %broadcast.splat2260 ; 16 uses
  %i.z = extractelement <16 x i1> %i.y, i64 0
  br i1 %i.z, label %pred.store.if2267, label %pred.store.continue2268

pred.store.if2267:                                ; preds = %vector.body2264
  %i.aa = getelementptr inbounds i8, ptr %0, i64 %i.x
  store i8 32, ptr %i.aa, align 1
  br label %pred.store.continue2268

pred.store.continue2268:                          ; preds = %pred.store.if2267, %vector.body2264
  %i.ab = extractelement <16 x i1> %i.y, i64 1
  br i1 %i.ab, label %pred.store.if2269, label %pred.store.continue2270

pred.store.if2269:                                ; preds = %pred.store.continue2268
  %i.ac = getelementptr i8, ptr %0, i64 %i.x
  %i.ad = getelementptr i8, ptr %i.ac, i64 1
  store i8 32, ptr %i.ad, align 1
  br label %pred.store.continue2270

pred.store.continue2270:                          ; preds = %pred.store.if2269, %pred.store.continue2268
  %i.ae = extractelement <16 x i1> %i.y, i64 2
  br i1 %i.ae, label %pred.store.if2271, label %pred.store.continue2272

pred.store.if2271:                                ; preds = %pred.store.continue2270
  %i.af = getelementptr i8, ptr %0, i64 %i.x
  %i.ag = getelementptr i8, ptr %i.af, i64 2
  store i8 32, ptr %i.ag, align 1
  br label %pred.store.continue2272

pred.store.continue2272:                          ; preds = %pred.store.if2271, %pred.store.continue2270
  %i.ah = extractelement <16 x i1> %i.y, i64 3
  br i1 %i.ah, label %pred.store.if2273, label %pred.store.continue2274

pred.store.if2273:                                ; preds = %pred.store.continue2272
  %i.ai = getelementptr i8, ptr %0, i64 %i.x
  %i.aj = getelementptr i8, ptr %i.ai, i64 3
  store i8 32, ptr %i.aj, align 1
  br label %pred.store.continue2274

pred.store.continue2274:                          ; preds = %pred.store.if2273, %pred.store.continue2272
  %i.ak = extractelement <16 x i1> %i.y, i64 4
  br i1 %i.ak, label %pred.store.if2275, label %pred.store.continue2276

pred.store.if2275:                                ; preds = %pred.store.continue2274
  %i.al = getelementptr i8, ptr %0, i64 %i.x
  %i.am = getelementptr i8, ptr %i.al, i64 4
  store i8 32, ptr %i.am, align 1
  br label %pred.store.continue2276

pred.store.continue2276:                          ; preds = %pred.store.if2275, %pred.store.continue2274
  %i.an = extractelement <16 x i1> %i.y, i64 5
  br i1 %i.an, label %pred.store.if2277, label %pred.store.continue2278

pred.store.if2277:                                ; preds = %pred.store.continue2276
  %i.ao = getelementptr i8, ptr %0, i64 %i.x
  %i.ap = getelementptr i8, ptr %i.ao, i64 5
  store i8 32, ptr %i.ap, align 1
  br label %pred.store.continue2278

pred.store.continue2278:                          ; preds = %pred.store.if2277, %pred.store.continue2276
  %i.aq = extractelement <16 x i1> %i.y, i64 6
  br i1 %i.aq, label %pred.store.if2279, label %pred.store.continue2280

pred.store.if2279:                                ; preds = %pred.store.continue2278
  %i.ar = getelementptr i8, ptr %0, i64 %i.x
  %i.as = getelementptr i8, ptr %i.ar, i64 6
  store i8 32, ptr %i.as, align 1
  br label %pred.store.continue2280

pred.store.continue2280:                          ; preds = %pred.store.if2279, %pred.store.continue2278
  %i.at = extractelement <16 x i1> %i.y, i64 7
  br i1 %i.at, label %pred.store.if2281, label %pred.store.continue2282

pred.store.if2281:                                ; preds = %pred.store.continue2280
  %i.au = getelementptr i8, ptr %0, i64 %i.x
  %i.av = getelementptr i8, ptr %i.au, i64 7
  store i8 32, ptr %i.av, align 1
  br label %pred.store.continue2282

pred.store.continue2282:                          ; preds = %pred.store.if2281, %pred.store.continue2280
  %i.aw = extractelement <16 x i1> %i.y, i64 8
  br i1 %i.aw, label %pred.store.if2283, label %pred.store.continue2284

pred.store.if2283:                                ; preds = %pred.store.continue2282
  %i.ax = getelementptr i8, ptr %0, i64 %i.x
  %i.ay = getelementptr i8, ptr %i.ax, i64 8
  store i8 32, ptr %i.ay, align 1
  br label %pred.store.continue2284

pred.store.continue2284:                          ; preds = %pred.store.if2283, %pred.store.continue2282
  %i.az = extractelement <16 x i1> %i.y, i64 9
  br i1 %i.az, label %pred.store.if2285, label %pred.store.continue2286

pred.store.if2285:                                ; preds = %pred.store.continue2284
  %i.ba = getelementptr i8, ptr %0, i64 %i.x
  %i.bb = getelementptr i8, ptr %i.ba, i64 9
  store i8 32, ptr %i.bb, align 1
  br label %pred.store.continue2286

pred.store.continue2286:                          ; preds = %pred.store.if2285, %pred.store.continue2284
  %i.bc = extractelement <16 x i1> %i.y, i64 10
  br i1 %i.bc, label %pred.store.if2287, label %pred.store.continue2288

pred.store.if2287:                                ; preds = %pred.store.continue2286
  %i.bd = getelementptr i8, ptr %0, i64 %i.x
  %i.be = getelementptr i8, ptr %i.bd, i64 10
  store i8 32, ptr %i.be, align 1
  br label %pred.store.continue2288

pred.store.continue2288:                          ; preds = %pred.store.if2287, %pred.store.continue2286
  %i.bf = extractelement <16 x i1> %i.y, i64 11
  br i1 %i.bf, label %pred.store.if2289, label %pred.store.continue2290

pred.store.if2289:                                ; preds = %pred.store.continue2288
  %i.bg = getelementptr i8, ptr %0, i64 %i.x
  %i.bh = getelementptr i8, ptr %i.bg, i64 11
  store i8 32, ptr %i.bh, align 1
  br label %pred.store.continue2290

pred.store.continue2290:                          ; preds = %pred.store.if2289, %pred.store.continue2288
  %i.bi = extractelement <16 x i1> %i.y, i64 12
  br i1 %i.bi, label %pred.store.if2291, label %pred.store.continue2292

pred.store.if2291:                                ; preds = %pred.store.continue2290
  %i.bj = getelementptr i8, ptr %0, i64 %i.x
  %i.bk = getelementptr i8, ptr %i.bj, i64 12
  store i8 32, ptr %i.bk, align 1
  br label %pred.store.continue2292

pred.store.continue2292:                          ; preds = %pred.store.if2291, %pred.store.continue2290
  %i.bl = extractelement <16 x i1> %i.y, i64 13
  br i1 %i.bl, label %pred.store.if2293, label %pred.store.continue2294

pred.store.if2293:                                ; preds = %pred.store.continue2292
  %i.bm = getelementptr i8, ptr %0, i64 %i.x
  %i.bn = getelementptr i8, ptr %i.bm, i64 13
  store i8 32, ptr %i.bn, align 1
  br label %pred.store.continue2294

pred.store.continue2294:                          ; preds = %pred.store.if2293, %pred.store.continue2292
  %i.bo = extractelement <16 x i1> %i.y, i64 14
  br i1 %i.bo, label %pred.store.if2295, label %pred.store.continue2296

pred.store.if2295:                                ; preds = %pred.store.continue2294
  %i.bp = getelementptr i8, ptr %0, i64 %i.x
  %i.bq = getelementptr i8, ptr %i.bp, i64 14
  store i8 32, ptr %i.bq, align 1
  br label %pred.store.continue2296

pred.store.continue2296:                          ; preds = %pred.store.if2295, %pred.store.continue2294
  %i.br = extractelement <16 x i1> %i.y, i64 15
  br i1 %i.br, label %pred.store.if2297, label %pred.store.continue2298

pred.store.if2297:                                ; preds = %pred.store.continue2296
  %i.bs = getelementptr i8, ptr %0, i64 %i.x
  %i.bt = getelementptr i8, ptr %i.bs, i64 15
  store i8 32, ptr %i.bt, align 1
  br label %pred.store.continue2298

pred.store.continue2298:                          ; preds = %pred.store.if2297, %pred.store.continue2296
  %index.next2299 = add nuw i64 %index2265, 16    ; 2 uses
  %vec.ind.next2300 = add nsw <16 x i64> %vec.ind2266, splat (i64 16)
  %i.bu = icmp eq i64 %index.next2299, %n.vec2258
  br i1 %i.bu, label %middle.block2301, label %vector.body2264, !llvm.loop !5

middle.block2301:                                 ; preds = %pred.store.continue2298
  br i1 %cmp.n2302, label %.loopexit.i.loopexit, label %vec.epilog.iter.check2308

vec.epilog.iter.check2308:                        ; preds = %middle.block2301
  br i1 %min.epilog.iters.check2309.not.not, label %.lr.ph.i.preheader, label %vec.epilog.ph2310, !prof !9

vec.epilog.ph2310:                                ; preds = %vector.main.loop.iter.check2254, %vec.epilog.iter.check2308
  %vec.epilog.resume.val2303 = phi i64 [ %n.vec2258, %vec.epilog.iter.check2308 ], [ 0, %vector.main.loop.iter.check2254 ]
  %bc.resume.val2304 = phi i64 [ %i.w, %vec.epilog.iter.check2308 ], [ %i.v, %vector.main.loop.iter.check2254 ]
  %i.bv = add nsw i64 %n.vec2312, %i.v            ; 2 uses
  %broadcast.splatinsert2315 = insertelement <8 x i64> poison, i64 %bc.resume.val2304, i64 0
  %broadcast.splat2316 = shufflevector <8 x i64> %broadcast.splatinsert2315, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction2317 = add nsw <8 x i64> %broadcast.splat2316, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  br label %vec.epilog.vector.body2318

vec.epilog.vector.body2318:                       ; preds = %pred.store.continue2336, %vec.epilog.ph2310
  %index2319 = phi i64 [ %vec.epilog.resume.val2303, %vec.epilog.ph2310 ], [ %index.next2337, %pred.store.continue2336 ] ; 2 uses
  %vec.ind2320 = phi <8 x i64> [ %induction2317, %vec.epilog.ph2310 ], [ %vec.ind.next2338, %pred.store.continue2336 ] ; 2 uses
  %i.bw = add i64 %index2319, %i.v                ; 8 uses
  %i.bx = icmp slt <8 x i64> %vec.ind2320, %broadcast.splat2314 ; 8 uses
  %i.by = extractelement <8 x i1> %i.bx, i64 0
  br i1 %i.by, label %pred.store.if2321, label %pred.store.continue2322

pred.store.if2321:                                ; preds = %vec.epilog.vector.body2318
  %i.bz = getelementptr inbounds i8, ptr %0, i64 %i.bw
  store i8 32, ptr %i.bz, align 1
  br label %pred.store.continue2322

pred.store.continue2322:                          ; preds = %pred.store.if2321, %vec.epilog.vector.body2318
  %i.ca = extractelement <8 x i1> %i.bx, i64 1
  br i1 %i.ca, label %pred.store.if2323, label %pred.store.continue2324

pred.store.if2323:                                ; preds = %pred.store.continue2322
  %i.cb = getelementptr i8, ptr %0, i64 %i.bw
  %i.cc = getelementptr i8, ptr %i.cb, i64 1
  store i8 32, ptr %i.cc, align 1
  br label %pred.store.continue2324

pred.store.continue2324:                          ; preds = %pred.store.if2323, %pred.store.continue2322
  %i.cd = extractelement <8 x i1> %i.bx, i64 2
  br i1 %i.cd, label %pred.store.if2325, label %pred.store.continue2326

pred.store.if2325:                                ; preds = %pred.store.continue2324
  %i.ce = getelementptr i8, ptr %0, i64 %i.bw
  %i.cf = getelementptr i8, ptr %i.ce, i64 2
  store i8 32, ptr %i.cf, align 1
  br label %pred.store.continue2326

pred.store.continue2326:                          ; preds = %pred.store.if2325, %pred.store.continue2324
  %i.cg = extractelement <8 x i1> %i.bx, i64 3
  br i1 %i.cg, label %pred.store.if2327, label %pred.store.continue2328

pred.store.if2327:                                ; preds = %pred.store.continue2326
  %i.ch = getelementptr i8, ptr %0, i64 %i.bw
  %i.ci = getelementptr i8, ptr %i.ch, i64 3
  store i8 32, ptr %i.ci, align 1
  br label %pred.store.continue2328

pred.store.continue2328:                          ; preds = %pred.store.if2327, %pred.store.continue2326
  %i.cj = extractelement <8 x i1> %i.bx, i64 4
  br i1 %i.cj, label %pred.store.if2329, label %pred.store.continue2330

pred.store.if2329:                                ; preds = %pred.store.continue2328
  %i.ck = getelementptr i8, ptr %0, i64 %i.bw
  %i.cl = getelementptr i8, ptr %i.ck, i64 4
  store i8 32, ptr %i.cl, align 1
  br label %pred.store.continue2330

pred.store.continue2330:                          ; preds = %pred.store.if2329, %pred.store.continue2328
  %i.cm = extractelement <8 x i1> %i.bx, i64 5
  br i1 %i.cm, label %pred.store.if2331, label %pred.store.continue2332

pred.store.if2331:                                ; preds = %pred.store.continue2330
  %i.cn = getelementptr i8, ptr %0, i64 %i.bw
  %i.co = getelementptr i8, ptr %i.cn, i64 5
  store i8 32, ptr %i.co, align 1
  br label %pred.store.continue2332

pred.store.continue2332:                          ; preds = %pred.store.if2331, %pred.store.continue2330
  %i.cp = extractelement <8 x i1> %i.bx, i64 6
  br i1 %i.cp, label %pred.store.if2333, label %pred.store.continue2334

pred.store.if2333:                                ; preds = %pred.store.continue2332
  %i.cq = getelementptr i8, ptr %0, i64 %i.bw
  %i.cr = getelementptr i8, ptr %i.cq, i64 6
  store i8 32, ptr %i.cr, align 1
  br label %pred.store.continue2334

pred.store.continue2334:                          ; preds = %pred.store.if2333, %pred.store.continue2332
  %i.cs = extractelement <8 x i1> %i.bx, i64 7
  br i1 %i.cs, label %pred.store.if2335, label %pred.store.continue2336

pred.store.if2335:                                ; preds = %pred.store.continue2334
  %i.ct = getelementptr i8, ptr %0, i64 %i.bw
  %i.cu = getelementptr i8, ptr %i.ct, i64 7
  store i8 32, ptr %i.cu, align 1
  br label %pred.store.continue2336

pred.store.continue2336:                          ; preds = %pred.store.if2335, %pred.store.continue2334
  %index.next2337 = add nuw i64 %index2319, 8     ; 2 uses
  %vec.ind.next2338 = add nsw <8 x i64> %vec.ind2320, splat (i64 8)
  %i.cv = icmp eq i64 %index.next2337, %n.vec2312
  br i1 %i.cv, label %vec.epilog.middle.block2339, label %vec.epilog.vector.body2318, !llvm.loop !10

vec.epilog.middle.block2339:                      ; preds = %pred.store.continue2336
  br i1 %cmp.n2340, label %.loopexit.i.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check2306, %vec.epilog.iter.check2308, %vec.epilog.middle.block2339
  %indvars.iv.ph = phi i64 [ %i.v, %iter.check2306 ], [ %i.w, %vec.epilog.iter.check2308 ], [ %i.bv, %vec.epilog.middle.block2339 ]
  %.030.i.ph = phi i32 [ 0, %iter.check2306 ], [ %i.f, %vec.epilog.iter.check2308 ], [ %i.g, %vec.epilog.middle.block2339 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.i ], [ %indvars.iv.ph, %.lr.ph.i.preheader ] ; 3 uses
  %.030.i = phi i32 [ %i.cy, %bb.i ], [ %.030.i.ph, %.lr.ph.i.preheader ]
  %i.cw = icmp slt i64 %indvars.iv, %i.d
  br i1 %i.cw, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.i
  %i.cx = getelementptr inbounds i8, ptr %0, i64 %indvars.iv
  store i8 32, ptr %i.cx, align 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.i
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.cy = add nuw nsw i32 %.030.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.cy, %2
  br i1 %exitcond.not.i, label %.loopexit.i.loopexit, label %.lr.ph.i, !llvm.loop !11

.loopexit.i.loopexit:                             ; preds = %bb.i, %vec.epilog.middle.block2339, %middle.block2301
  %indvars.iv.next.lcssa = phi i64 [ %i.bv, %vec.epilog.middle.block2339 ], [ %i.w, %middle.block2301 ], [ %indvars.iv.next, %bb.i ]
  %i.cz = trunc nsw i64 %indvars.iv.next.lcssa to i32
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit, %bb.g, %bb.f, %bb.e, %bb.b
  %.promoted517 = phi i32 [ %.lcssa429431434, %bb.e ], [ %.lcssa429431434, %bb.g ], [ %.lcssa429431434, %bb.b ], [ %.lcssa429431434, %bb.f ], [ %i.cz, %.loopexit.i.loopexit ] ; 5 uses
  %i.da = icmp slt i32 %.promoted517, %1
  br i1 %i.da, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.loopexit.i
  %i.db = sext i32 %.promoted517 to i64
  %i.dc = getelementptr inbounds i8, ptr %0, i64 %i.db
  store i8 %i.m, ptr %i.dc, align 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.loopexit.i
  %.not29.i = icmp eq i8 %i.m, 0
  br i1 %.not29.i, label %bb.ht, label %_ZL10outputCharcPcPiii.exit

_ZL10outputCharcPcPiii.exit:                      ; preds = %bb.k
  %i.dd = add nsw i32 %.promoted517, 1            ; 2 uses
  %indvars.iv.next550 = add nsw i64 %indvars.iv549, 1 ; 2 uses
  %i.de = getelementptr inbounds i8, ptr %3, i64 %indvars.iv549
  %i.df = load i8, ptr %i.de, align 1             ; 2 uses
  %.not = icmp eq i8 %i.df, 37
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !12

._crit_edge.loopexit:                             ; preds = %_ZL10outputCharcPcPiii.exit
  %i.dg = trunc nsw i64 %indvars.iv549 to i32
  %i.dh = trunc nsw i64 %indvars.iv.next550 to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.outer
  %.promoted514 = phi i32 [ %.promoted430, %.outer ], [ %i.dd, %._crit_edge.loopexit ] ; 81 uses
  %.0141.lcssa = phi i32 [ %.0141.ph, %.outer ], [ %i.dg, %._crit_edge.loopexit ] ; 2 uses
  %.lcssa411 = phi i32 [ %i.h, %.outer ], [ %i.dh, %._crit_edge.loopexit ] ; 2 uses
  store i32 %.promoted514, ptr %i.a, align 4
  %i.di = add nsw i32 %.0141.lcssa, 2             ; 14 uses
  %i.dj = sext i32 %.lcssa411 to i64
  %i.dk = getelementptr inbounds i8, ptr %3, i64 %i.dj
  %i.dl = load i8, ptr %i.dk, align 1             ; 5 uses
  switch i8 %i.dl, label %bb.hh [
    i8 99, label %bb.l
    i8 115, label %bb.aa
    i8 83, label %bb.an
    i8 98, label %bb.as
    i8 104, label %bb.ax
    i8 100, label %bb.be
    i8 108, label %bb.bp
    i8 112, label %bb.ci
    i8 0, label %bb.cm
    i8 118, label %bb.ct
  ]

bb.l:                                             ; preds = %._crit_edge
  %i.dm = load i32, ptr %4, align 8               ; 3 uses
  %i.dn = icmp ult i32 %i.dm, 41
  br i1 %i.dn, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.do = load ptr, ptr %i.c, align 8
  %i.dp = zext nneg i32 %i.dm to i64
  %i.dq = getelementptr i8, ptr %i.do, i64 %i.dp
  %i.dr = add nuw nsw i32 %i.dm, 8
  store i32 %i.dr, ptr %4, align 8
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.ds = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.dt = getelementptr i8, ptr %i.ds, i64 8
  store ptr %i.dt, ptr %i.b, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.du = phi ptr [ %i.dq, %bb.m ], [ %i.ds, %bb.n ]
  %i.dv = load i32, ptr %i.du, align 4
  %i.dw = trunc i32 %i.dv to i8                   ; 4 uses
  %i.dx = icmp eq i32 %.promoted514, 0
  br i1 %i.dx, label %bb.u, label %bb.p

bb.p:                                             ; preds = %bb.o
  switch i8 %i.dw, label %bb.q [
    i8 10, label %bb.t
    i8 0, label %.loopexit.i161
  ]

bb.q:                                             ; preds = %bb.p
  %i.dy = icmp slt i32 %.promoted514, %1
  br i1 %i.dy, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dz = sext i32 %.promoted514 to i64
  %i.ea = getelementptr i8, ptr %0, i64 %i.dz
  %i.eb = getelementptr i8, ptr %i.ea, i64 -1
  %i.ec = load i8, ptr %i.eb, align 1
  %i.ed = icmp eq i8 %i.ec, 10
  br i1 %i.ed, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ee = icmp eq i8 %i.dw, 10
  %.not.i171 = icmp sge i32 %.promoted514, %1
  %or.cond.not34.i172 = and i1 %i.ee, %.not.i171
  %or.cond31.i173 = and i1 %.old.i, %or.cond.not34.i172
  br i1 %or.cond31.i173, label %iter.check820, label %.loopexit.i161

bb.t:                                             ; preds = %bb.p
  %.not.old.i163 = icmp sge i32 %.promoted514, %1
  %or.cond32.i165 = and i1 %.old.i, %.not.old.i163
  br i1 %or.cond32.i165, label %iter.check820, label %.loopexit.i161

bb.u:                                             ; preds = %bb.r, %bb.o
  br i1 %.old.i, label %iter.check820, label %.loopexit.i161

iter.check820:                                    ; preds = %bb.u, %bb.t, %bb.s
  br i1 %min.iters.check768, label %.lr.ph.i167.preheader, label %vector.main.loop.iter.check769

vector.main.loop.iter.check769:                   ; preds = %iter.check820
  br i1 %min.iters.check770, label %vec.epilog.ph824, label %vector.ph771

vector.ph771:                                     ; preds = %vector.main.loop.iter.check769
  %i.ef = add i32 %.promoted514, %n.vec773        ; 3 uses
  %broadcast.splatinsert776 = insertelement <16 x i32> poison, i32 %.promoted514, i64 0
  %broadcast.splat777 = shufflevector <16 x i32> %broadcast.splatinsert776, <16 x i32> poison, <16 x i32> zeroinitializer
  %induction778 = add nsw <16 x i32> %broadcast.splat777, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  br label %vector.body779

vector.body779:                                   ; preds = %pred.store.continue813, %vector.ph771
  %index780 = phi i32 [ 0, %vector.ph771 ], [ %index.next814, %pred.store.continue813 ] ; 2 uses
  %vec.ind781 = phi <16 x i32> [ %induction778, %vector.ph771 ], [ %vec.ind.next815, %pred.store.continue813 ] ; 2 uses
  %i.eg = add i32 %.promoted514, %index780        ; 16 uses
  %i.eh = icmp slt <16 x i32> %vec.ind781, %broadcast.splat775 ; 16 uses
  %i.ei = extractelement <16 x i1> %i.eh, i64 0
  br i1 %i.ei, label %pred.store.if782, label %pred.store.continue783

pred.store.if782:                                 ; preds = %vector.body779
  %i.ej = sext i32 %i.eg to i64
  %i.ek = getelementptr inbounds i8, ptr %0, i64 %i.ej
  store i8 32, ptr %i.ek, align 1
  br label %pred.store.continue783

pred.store.continue783:                           ; preds = %pred.store.if782, %vector.body779
  %i.el = extractelement <16 x i1> %i.eh, i64 1
  br i1 %i.el, label %pred.store.if784, label %pred.store.continue785

pred.store.if784:                                 ; preds = %pred.store.continue783
  %i.em = add i32 %i.eg, 1
  %i.en = sext i32 %i.em to i64
  %i.eo = getelementptr inbounds i8, ptr %0, i64 %i.en
  store i8 32, ptr %i.eo, align 1
  br label %pred.store.continue785

pred.store.continue785:                           ; preds = %pred.store.if784, %pred.store.continue783
  %i.ep = extractelement <16 x i1> %i.eh, i64 2
  br i1 %i.ep, label %pred.store.if786, label %pred.store.continue787

pred.store.if786:                                 ; preds = %pred.store.continue785
  %i.eq = add i32 %i.eg, 2
  %i.er = sext i32 %i.eq to i64
  %i.es = getelementptr inbounds i8, ptr %0, i64 %i.er
  store i8 32, ptr %i.es, align 1
  br label %pred.store.continue787

pred.store.continue787:                           ; preds = %pred.store.if786, %pred.store.continue785
  %i.et = extractelement <16 x i1> %i.eh, i64 3
  br i1 %i.et, label %pred.store.if788, label %pred.store.continue789

pred.store.if788:                                 ; preds = %pred.store.continue787
  %i.eu = add i32 %i.eg, 3
  %i.ev = sext i32 %i.eu to i64
  %i.ew = getelementptr inbounds i8, ptr %0, i64 %i.ev
  store i8 32, ptr %i.ew, align 1
  br label %pred.store.continue789

pred.store.continue789:                           ; preds = %pred.store.if788, %pred.store.continue787
  %i.ex = extractelement <16 x i1> %i.eh, i64 4
  br i1 %i.ex, label %pred.store.if790, label %pred.store.continue791

pred.store.if790:                                 ; preds = %pred.store.continue789
  %i.ey = add i32 %i.eg, 4
  %i.ez = sext i32 %i.ey to i64
  %i.fa = getelementptr inbounds i8, ptr %0, i64 %i.ez
  store i8 32, ptr %i.fa, align 1
  br label %pred.store.continue791

pred.store.continue791:                           ; preds = %pred.store.if790, %pred.store.continue789
  %i.fb = extractelement <16 x i1> %i.eh, i64 5
  br i1 %i.fb, label %pred.store.if792, label %pred.store.continue793

pred.store.if792:                                 ; preds = %pred.store.continue791
  %i.fc = add i32 %i.eg, 5
  %i.fd = sext i32 %i.fc to i64
  %i.fe = getelementptr inbounds i8, ptr %0, i64 %i.fd
  store i8 32, ptr %i.fe, align 1
  br label %pred.store.continue793

pred.store.continue793:                           ; preds = %pred.store.if792, %pred.store.continue791
  %i.ff = extractelement <16 x i1> %i.eh, i64 6
  br i1 %i.ff, label %pred.store.if794, label %pred.store.continue795

pred.store.if794:                                 ; preds = %pred.store.continue793
  %i.fg = add i32 %i.eg, 6
  %i.fh = sext i32 %i.fg to i64
  %i.fi = getelementptr inbounds i8, ptr %0, i64 %i.fh
  store i8 32, ptr %i.fi, align 1
  br label %pred.store.continue795

pred.store.continue795:                           ; preds = %pred.store.if794, %pred.store.continue793
  %i.fj = extractelement <16 x i1> %i.eh, i64 7
  br i1 %i.fj, label %pred.store.if796, label %pred.store.continue797

pred.store.if796:                                 ; preds = %pred.store.continue795
  %i.fk = add i32 %i.eg, 7
  %i.fl = sext i32 %i.fk to i64
  %i.fm = getelementptr inbounds i8, ptr %0, i64 %i.fl
  store i8 32, ptr %i.fm, align 1
  br label %pred.store.continue797

pred.store.continue797:                           ; preds = %pred.store.if796, %pred.store.continue795
  %i.fn = extractelement <16 x i1> %i.eh, i64 8
  br i1 %i.fn, label %pred.store.if798, label %pred.store.continue799

pred.store.if798:                                 ; preds = %pred.store.continue797
  %i.fo = add i32 %i.eg, 8
  %i.fp = sext i32 %i.fo to i64
  %i.fq = getelementptr inbounds i8, ptr %0, i64 %i.fp
  store i8 32, ptr %i.fq, align 1
  br label %pred.store.continue799

pred.store.continue799:                           ; preds = %pred.store.if798, %pred.store.continue797
  %i.fr = extractelement <16 x i1> %i.eh, i64 9
  br i1 %i.fr, label %pred.store.if800, label %pred.store.continue801

pred.store.if800:                                 ; preds = %pred.store.continue799
  %i.fs = add i32 %i.eg, 9
  %i.ft = sext i32 %i.fs to i64
  %i.fu = getelementptr inbounds i8, ptr %0, i64 %i.ft
  store i8 32, ptr %i.fu, align 1
  br label %pred.store.continue801

pred.store.continue801:                           ; preds = %pred.store.if800, %pred.store.continue799
  %i.fv = extractelement <16 x i1> %i.eh, i64 10
  br i1 %i.fv, label %pred.store.if802, label %pred.store.continue803

pred.store.if802:                                 ; preds = %pred.store.continue801
  %i.fw = add i32 %i.eg, 10
  %i.fx = sext i32 %i.fw to i64
  %i.fy = getelementptr inbounds i8, ptr %0, i64 %i.fx
  store i8 32, ptr %i.fy, align 1
  br label %pred.store.continue803

pred.store.continue803:                           ; preds = %pred.store.if802, %pred.store.continue801
  %i.fz = extractelement <16 x i1> %i.eh, i64 11
  br i1 %i.fz, label %pred.store.if804, label %pred.store.continue805

pred.store.if804:                                 ; preds = %pred.store.continue803
  %i.ga = add i32 %i.eg, 11
  %i.gb = sext i32 %i.ga to i64
  %i.gc = getelementptr inbounds i8, ptr %0, i64 %i.gb
  store i8 32, ptr %i.gc, align 1
  br label %pred.store.continue805

pred.store.continue805:                           ; preds = %pred.store.if804, %pred.store.continue803
  %i.gd = extractelement <16 x i1> %i.eh, i64 12
  br i1 %i.gd, label %pred.store.if806, label %pred.store.continue807

pred.store.if806:                                 ; preds = %pred.store.continue805
  %i.ge = add i32 %i.eg, 12
  %i.gf = sext i32 %i.ge to i64
  %i.gg = getelementptr inbounds i8, ptr %0, i64 %i.gf
  store i8 32, ptr %i.gg, align 1
  br label %pred.store.continue807

pred.store.continue807:                           ; preds = %pred.store.if806, %pred.store.continue805
  %i.gh = extractelement <16 x i1> %i.eh, i64 13
  br i1 %i.gh, label %pred.store.if808, label %pred.store.continue809

pred.store.if808:                                 ; preds = %pred.store.continue807
  %i.gi = add i32 %i.eg, 13
  %i.gj = sext i32 %i.gi to i64
  %i.gk = getelementptr inbounds i8, ptr %0, i64 %i.gj
  store i8 32, ptr %i.gk, align 1
  br label %pred.store.continue809

pred.store.continue809:                           ; preds = %pred.store.if808, %pred.store.continue807
  %i.gl = extractelement <16 x i1> %i.eh, i64 14
  br i1 %i.gl, label %pred.store.if810, label %pred.store.continue811

pred.store.if810:                                 ; preds = %pred.store.continue809
  %i.gm = add i32 %i.eg, 14
  %i.gn = sext i32 %i.gm to i64
  %i.go = getelementptr inbounds i8, ptr %0, i64 %i.gn
  store i8 32, ptr %i.go, align 1
  br label %pred.store.continue811

pred.store.continue811:                           ; preds = %pred.store.if810, %pred.store.continue809
  %i.gp = extractelement <16 x i1> %i.eh, i64 15
  br i1 %i.gp, label %pred.store.if812, label %pred.store.continue813

pred.store.if812:                                 ; preds = %pred.store.continue811
  %i.gq = add i32 %i.eg, 15
  %i.gr = sext i32 %i.gq to i64
  %i.gs = getelementptr inbounds i8, ptr %0, i64 %i.gr
  store i8 32, ptr %i.gs, align 1
  br label %pred.store.continue813

pred.store.continue813:                           ; preds = %pred.store.if812, %pred.store.continue811
  %index.next814 = add nuw i32 %index780, 16      ; 2 uses
  %vec.ind.next815 = add nsw <16 x i32> %vec.ind781, splat (i32 16)
  %i.gt = icmp eq i32 %index.next814, %n.vec773
  br i1 %i.gt, label %middle.block816, label %vector.body779, !llvm.loop !13

middle.block816:                                  ; preds = %pred.store.continue813
  br i1 %cmp.n817, label %.loopexit.i161.loopexit, label %vec.epilog.iter.check822

vec.epilog.iter.check822:                         ; preds = %middle.block816
  br i1 %min.epilog.iters.check823, label %.lr.ph.i167.preheader, label %vec.epilog.ph824, !prof !14

vec.epilog.ph824:                                 ; preds = %vector.main.loop.iter.check769, %vec.epilog.iter.check822
  %vec.epilog.resume.val818 = phi i32 [ %n.vec773, %vec.epilog.iter.check822 ], [ 0, %vector.main.loop.iter.check769 ]
  %bc.resume.val819 = phi i32 [ %i.ef, %vec.epilog.iter.check822 ], [ %.promoted514, %vector.main.loop.iter.check769 ]
  %i.gu = add i32 %.promoted514, %n.vec826        ; 2 uses
  %broadcast.splatinsert829 = insertelement <4 x i32> poison, i32 %bc.resume.val819, i64 0
  %broadcast.splat830 = shufflevector <4 x i32> %broadcast.splatinsert829, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction831 = add nsw <4 x i32> %broadcast.splat830, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body832

vec.epilog.vector.body832:                        ; preds = %pred.store.continue842, %vec.epilog.ph824
  %index833 = phi i32 [ %vec.epilog.resume.val818, %vec.epilog.ph824 ], [ %index.next843, %pred.store.continue842 ] ; 2 uses
  %vec.ind834 = phi <4 x i32> [ %induction831, %vec.epilog.ph824 ], [ %vec.ind.next844, %pred.store.continue842 ] ; 2 uses
  %i.gv = add i32 %.promoted514, %index833        ; 4 uses
  %i.gw = icmp slt <4 x i32> %vec.ind834, %broadcast.splat828 ; 4 uses
  %i.gx = extractelement <4 x i1> %i.gw, i64 0
  br i1 %i.gx, label %pred.store.if835, label %pred.store.continue836

pred.store.if835:                                 ; preds = %vec.epilog.vector.body832
  %i.gy = sext i32 %i.gv to i64
  %i.gz = getelementptr inbounds i8, ptr %0, i64 %i.gy
  store i8 32, ptr %i.gz, align 1
  br label %pred.store.continue836

pred.store.continue836:                           ; preds = %pred.store.if835, %vec.epilog.vector.body832
  %i.ha = extractelement <4 x i1> %i.gw, i64 1
  br i1 %i.ha, label %pred.store.if837, label %pred.store.continue838

pred.store.if837:                                 ; preds = %pred.store.continue836
  %i.hb = add i32 %i.gv, 1
  %i.hc = sext i32 %i.hb to i64
  %i.hd = getelementptr inbounds i8, ptr %0, i64 %i.hc
  store i8 32, ptr %i.hd, align 1
  br label %pred.store.continue838

pred.store.continue838:                           ; preds = %pred.store.if837, %pred.store.continue836
  %i.he = extractelement <4 x i1> %i.gw, i64 2
  br i1 %i.he, label %pred.store.if839, label %pred.store.continue840

pred.store.if839:                                 ; preds = %pred.store.continue838
  %i.hf = add i32 %i.gv, 2
  %i.hg = sext i32 %i.hf to i64
  %i.hh = getelementptr inbounds i8, ptr %0, i64 %i.hg
  store i8 32, ptr %i.hh, align 1
  br label %pred.store.continue840

pred.store.continue840:                           ; preds = %pred.store.if839, %pred.store.continue838
  %i.hi = extractelement <4 x i1> %i.gw, i64 3
  br i1 %i.hi, label %pred.store.if841, label %pred.store.continue842

pred.store.if841:                                 ; preds = %pred.store.continue840
  %i.hj = add i32 %i.gv, 3
  %i.hk = sext i32 %i.hj to i64
  %i.hl = getelementptr inbounds i8, ptr %0, i64 %i.hk
  store i8 32, ptr %i.hl, align 1
  br label %pred.store.continue842

pred.store.continue842:                           ; preds = %pred.store.if841, %pred.store.continue840
  %index.next843 = add nuw i32 %index833, 4       ; 2 uses
  %vec.ind.next844 = add nsw <4 x i32> %vec.ind834, splat (i32 4)
  %i.hm = icmp eq i32 %index.next843, %n.vec826
  br i1 %i.hm, label %vec.epilog.middle.block845, label %vec.epilog.vector.body832, !llvm.loop !15

vec.epilog.middle.block845:                       ; preds = %pred.store.continue842
  br i1 %cmp.n846, label %.loopexit.i161.loopexit, label %.lr.ph.i167.preheader

.lr.ph.i167.preheader:                            ; preds = %iter.check820, %vec.epilog.iter.check822, %vec.epilog.middle.block845
  %.pre.i170512.ph = phi i32 [ %.promoted514, %iter.check820 ], [ %i.ef, %vec.epilog.iter.check822 ], [ %i.gu, %vec.epilog.middle.block845 ]
  %.030.i168.ph = phi i32 [ 0, %iter.check820 ], [ %n.vec773, %vec.epilog.iter.check822 ], [ %n.vec826, %vec.epilog.middle.block845 ]
  br label %.lr.ph.i167

.lr.ph.i167:                                      ; preds = %.lr.ph.i167.preheader, %bb.w
  %.pre.i170512 = phi i32 [ %i.hq, %bb.w ], [ %.pre.i170512.ph, %.lr.ph.i167.preheader ] ; 3 uses
  %.030.i168 = phi i32 [ %i.hr, %bb.w ], [ %.030.i168.ph, %.lr.ph.i167.preheader ]
  %i.hn = icmp slt i32 %.pre.i170512, %1
  br i1 %i.hn, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.lr.ph.i167
  %i.ho = sext i32 %.pre.i170512 to i64
  %i.hp = getelementptr inbounds i8, ptr %0, i64 %i.ho
  store i8 32, ptr %i.hp, align 1
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.lr.ph.i167
  %i.hq = add nsw i32 %.pre.i170512, 1            ; 2 uses
  %i.hr = add nuw nsw i32 %.030.i168, 1           ; 2 uses
  %exitcond.not.i169 = icmp eq i32 %i.hr, %2
  br i1 %exitcond.not.i169, label %.loopexit.i161.loopexit, label %.lr.ph.i167, !llvm.loop !16

.loopexit.i161.loopexit:                          ; preds = %bb.w, %vec.epilog.middle.block845, %middle.block816
  %.lcssa711 = phi i32 [ %i.gu, %vec.epilog.middle.block845 ], [ %i.ef, %middle.block816 ], [ %i.hq, %bb.w ] ; 2 uses
  store i32 %.lcssa711, ptr %i.a, align 4
  br label %.loopexit.i161

.loopexit.i161:                                   ; preds = %.loopexit.i161.loopexit, %bb.u, %bb.t, %bb.s, %bb.p
  %i.hs = phi i32 [ %.promoted514, %bb.s ], [ %.promoted514, %bb.u ], [ %.promoted514, %bb.p ], [ %.promoted514, %bb.t ], [ %.lcssa711, %.loopexit.i161.loopexit ] ; 3 uses
  %i.ht = icmp slt i32 %i.hs, %1
  br i1 %i.ht, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.loopexit.i161
  %i.hu = sext i32 %i.hs to i64
  %i.hv = getelementptr inbounds i8, ptr %0, i64 %i.hu
  store i8 %i.dw, ptr %i.hv, align 1
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.loopexit.i161
  %.not29.i162 = icmp eq i8 %i.dw, 0
  br i1 %.not29.i162, label %_ZL10outputCharcPcPiii.exit175, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.hw = add nsw i32 %i.hs, 1
  store i32 %i.hw, ptr %i.a, align 4
  br label %_ZL10outputCharcPcPiii.exit175

bb.aa:                                            ; preds = %._crit_edge
  %i.hx = load i32, ptr %4, align 8               ; 3 uses
  %i.hy = icmp ult i32 %i.hx, 41
  br i1 %i.hy, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.hz = load ptr, ptr %i.c, align 8
  %i.ia = zext nneg i32 %i.hx to i64
  %i.ib = getelementptr i8, ptr %i.hz, i64 %i.ia
  %i.ic = add nuw nsw i32 %i.hx, 8
  store i32 %i.ic, ptr %4, align 8
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.id = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.ie = getelementptr i8, ptr %i.id, i64 8
  store ptr %i.ie, ptr %i.b, align 8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.if = phi ptr [ %i.ib, %bb.ab ], [ %i.id, %bb.ac ]
  %i.ig = load ptr, ptr %i.if, align 8            ; 2 uses
  %i.ih = icmp eq ptr %i.ig, null
  %spec.store.select.i = select i1 %i.ih, ptr @.str.2, ptr %i.ig ; 2 uses
  br i1 %.old.i, label %.split.split.split.us.i, label %.split.us.i

.split.us.i:                                      ; preds = %bb.ad, %_ZL10outputCharcPcPiii.exit.us.i
  %i.ii = phi i32 [ %i.io, %_ZL10outputCharcPcPiii.exit.us.i ], [ %.promoted514, %bb.ad ] ; 4 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZL10outputCharcPcPiii.exit.us.i ], [ 0, %bb.ad ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.ij = getelementptr inbounds nuw i8, ptr %spec.store.select.i, i64 %indvars.iv.i
  %i.ik = load i8, ptr %i.ij, align 1             ; 2 uses
  %i.il = icmp slt i32 %i.ii, %1
  br i1 %i.il, label %bb.ae, label %_ZL10outputCharcPcPiii.exit.us.i

bb.ae:                                            ; preds = %.split.us.i
  %i.im = sext i32 %i.ii to i64
  %i.in = getelementptr inbounds i8, ptr %0, i64 %i.im
  store i8 %i.ik, ptr %i.in, align 1
  br label %_ZL10outputCharcPcPiii.exit.us.i

_ZL10outputCharcPcPiii.exit.us.i:                 ; preds = %bb.ae, %.split.us.i
  %.not29.i.us.i = icmp eq i8 %i.ik, 0
  %i.io = add nsw i32 %i.ii, 1
  br i1 %.not29.i.us.i, label %_ZL10outputCharcPcPiii.exit175.loopexit403, label %.split.us.i, !llvm.loop !17

.split.split.split.us.i:                          ; preds = %bb.ad, %_ZL10outputCharcPcPiii.exit.us35.i
  %.lcssa507509 = phi i32 [ %i.mp, %_ZL10outputCharcPcPiii.exit.us35.i ], [ %.promoted514, %bb.ad ] ; 15 uses
  %indvars.iv41.i = phi i64 [ %indvars.iv.next42.i, %_ZL10outputCharcPcPiii.exit.us35.i ], [ 0, %bb.ad ] ; 2 uses
  %indvars.iv.next42.i = add nuw nsw i64 %indvars.iv41.i, 1
  %i.ip = getelementptr inbounds nuw i8, ptr %spec.store.select.i, i64 %indvars.iv41.i
  %i.iq = load i8, ptr %i.ip, align 1             ; 4 uses
  %i.ir = icmp eq i32 %.lcssa507509, 0
  br i1 %i.ir, label %iter.check901, label %bb.af

bb.af:                                            ; preds = %.split.split.split.us.i
  switch i8 %i.iq, label %bb.ah [
    i8 10, label %bb.ag
    i8 0, label %.loopexit.i.us33.i
  ]

bb.ag:                                            ; preds = %bb.af
  %.not.old.i.us25.not.i = icmp slt i32 %.lcssa507509, %1
  br i1 %.not.old.i.us25.not.i, label %.loopexit.i.us33.i, label %iter.check901

bb.ah:                                            ; preds = %bb.af
  %i.is = icmp slt i32 %.lcssa507509, %1
  br i1 %i.is, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.it = sext i32 %.lcssa507509 to i64
  %i.iu = getelementptr i8, ptr %0, i64 %i.it
  %i.iv = getelementptr i8, ptr %i.iu, i64 -1
  %i.iw = load i8, ptr %i.iv, align 1
  %i.ix = icmp eq i8 %i.iw, 10
  br i1 %i.ix, label %iter.check901, label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.iy = icmp eq i8 %i.iq, 10
  %.not.i.us26.i = icmp sge i32 %.lcssa507509, %1
  %or.cond.not34.i.us27.i = and i1 %.not.i.us26.i, %i.iy
  br i1 %or.cond.not34.i.us27.i, label %iter.check901, label %.loopexit.i.us33.i

iter.check901:                                    ; preds = %bb.aj, %bb.ai, %bb.ag, %.split.split.split.us.i
  br i1 %min.iters.check849, label %.lr.ph.i.us29.i.preheader, label %vector.main.loop.iter.check850

vector.main.loop.iter.check850:                   ; preds = %iter.check901
  br i1 %min.iters.check851, label %vec.epilog.ph905, label %vector.ph852

vector.ph852:                                     ; preds = %vector.main.loop.iter.check850
  %i.iz = add i32 %.lcssa507509, %n.vec854        ; 3 uses
  %broadcast.splatinsert857 = insertelement <16 x i32> poison, i32 %.lcssa507509, i64 0
  %broadcast.splat858 = shufflevector <16 x i32> %broadcast.splatinsert857, <16 x i32> poison, <16 x i32> zeroinitializer
  %induction859 = add nsw <16 x i32> %broadcast.splat858, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  br label %vector.body860

vector.body860:                                   ; preds = %pred.store.continue894, %vector.ph852
  %index861 = phi i32 [ 0, %vector.ph852 ], [ %index.next895, %pred.store.continue894 ] ; 2 uses
  %vec.ind862 = phi <16 x i32> [ %induction859, %vector.ph852 ], [ %vec.ind.next896, %pred.store.continue894 ] ; 2 uses
  %i.ja = add i32 %.lcssa507509, %index861        ; 16 uses
  %i.jb = icmp slt <16 x i32> %vec.ind862, %broadcast.splat856 ; 16 uses
  %i.jc = extractelement <16 x i1> %i.jb, i64 0
  br i1 %i.jc, label %pred.store.if863, label %pred.store.continue864

pred.store.if863:                                 ; preds = %vector.body860
  %i.jd = sext i32 %i.ja to i64
  %i.je = getelementptr inbounds i8, ptr %0, i64 %i.jd
  store i8 32, ptr %i.je, align 1
  br label %pred.store.continue864

pred.store.continue864:                           ; preds = %pred.store.if863, %vector.body860
  %i.jf = extractelement <16 x i1> %i.jb, i64 1
  br i1 %i.jf, label %pred.store.if865, label %pred.store.continue866

pred.store.if865:                                 ; preds = %pred.store.continue864
  %i.jg = add i32 %i.ja, 1
  %i.jh = sext i32 %i.jg to i64
  %i.ji = getelementptr inbounds i8, ptr %0, i64 %i.jh
  store i8 32, ptr %i.ji, align 1
  br label %pred.store.continue866

pred.store.continue866:                           ; preds = %pred.store.if865, %pred.store.continue864
  %i.jj = extractelement <16 x i1> %i.jb, i64 2
  br i1 %i.jj, label %pred.store.if867, label %pred.store.continue868

pred.store.if867:                                 ; preds = %pred.store.continue866
  %i.jk = add i32 %i.ja, 2
  %i.jl = sext i32 %i.jk to i64
  %i.jm = getelementptr inbounds i8, ptr %0, i64 %i.jl
  store i8 32, ptr %i.jm, align 1
  br label %pred.store.continue868

pred.store.continue868:                           ; preds = %pred.store.if867, %pred.store.continue866
  %i.jn = extractelement <16 x i1> %i.jb, i64 3
  br i1 %i.jn, label %pred.store.if869, label %pred.store.continue870

pred.store.if869:                                 ; preds = %pred.store.continue868
  %i.jo = add i32 %i.ja, 3
  %i.jp = sext i32 %i.jo to i64
  %i.jq = getelementptr inbounds i8, ptr %0, i64 %i.jp
  store i8 32, ptr %i.jq, align 1
  br label %pred.store.continue870

pred.store.continue870:                           ; preds = %pred.store.if869, %pred.store.continue868
  %i.jr = extractelement <16 x i1> %i.jb, i64 4
  br i1 %i.jr, label %pred.store.if871, label %pred.store.continue872

pred.store.if871:                                 ; preds = %pred.store.continue870
  %i.js = add i32 %i.ja, 4
  %i.jt = sext i32 %i.js to i64
  %i.ju = getelementptr inbounds i8, ptr %0, i64 %i.jt
  store i8 32, ptr %i.ju, align 1
  br label %pred.store.continue872

pred.store.continue872:                           ; preds = %pred.store.if871, %pred.store.continue870
  %i.jv = extractelement <16 x i1> %i.jb, i64 5
  br i1 %i.jv, label %pred.store.if873, label %pred.store.continue874

pred.store.if873:                                 ; preds = %pred.store.continue872
  %i.jw = add i32 %i.ja, 5
  %i.jx = sext i32 %i.jw to i64
  %i.jy = getelementptr inbounds i8, ptr %0, i64 %i.jx
  store i8 32, ptr %i.jy, align 1
  br label %pred.store.continue874

pred.store.continue874:                           ; preds = %pred.store.if873, %pred.store.continue872
  %i.jz = extractelement <16 x i1> %i.jb, i64 6
  br i1 %i.jz, label %pred.store.if875, label %pred.store.continue876

pred.store.if875:                                 ; preds = %pred.store.continue874
  %i.ka = add i32 %i.ja, 6
  %i.kb = sext i32 %i.ka to i64
  %i.kc = getelementptr inbounds i8, ptr %0, i64 %i.kb
  store i8 32, ptr %i.kc, align 1
  br label %pred.store.continue876

pred.store.continue876:                           ; preds = %pred.store.if875, %pred.store.continue874
  %i.kd = extractelement <16 x i1> %i.jb, i64 7
  br i1 %i.kd, label %pred.store.if877, label %pred.store.continue878

pred.store.if877:                                 ; preds = %pred.store.continue876
  %i.ke = add i32 %i.ja, 7
  %i.kf = sext i32 %i.ke to i64
  %i.kg = getelementptr inbounds i8, ptr %0, i64 %i.kf
  store i8 32, ptr %i.kg, align 1
  br label %pred.store.continue878

pred.store.continue878:                           ; preds = %pred.store.if877, %pred.store.continue876
  %i.kh = extractelement <16 x i1> %i.jb, i64 8
  br i1 %i.kh, label %pred.store.if879, label %pred.store.continue880

pred.store.if879:                                 ; preds = %pred.store.continue878
  %i.ki = add i32 %i.ja, 8
  %i.kj = sext i32 %i.ki to i64
  %i.kk = getelementptr inbounds i8, ptr %0, i64 %i.kj
  store i8 32, ptr %i.kk, align 1
  br label %pred.store.continue880

pred.store.continue880:                           ; preds = %pred.store.if879, %pred.store.continue878
  %i.kl = extractelement <16 x i1> %i.jb, i64 9
  br i1 %i.kl, label %pred.store.if881, label %pred.store.continue882

pred.store.if881:                                 ; preds = %pred.store.continue880
  %i.km = add i32 %i.ja, 9
  %i.kn = sext i32 %i.km to i64
  %i.ko = getelementptr inbounds i8, ptr %0, i64 %i.kn
  store i8 32, ptr %i.ko, align 1
  br label %pred.store.continue882

pred.store.continue882:                           ; preds = %pred.store.if881, %pred.store.continue880
  %i.kp = extractelement <16 x i1> %i.jb, i64 10
  br i1 %i.kp, label %pred.store.if883, label %pred.store.continue884

pred.store.if883:                                 ; preds = %pred.store.continue882
  %i.kq = add i32 %i.ja, 10
  %i.kr = sext i32 %i.kq to i64
  %i.ks = getelementptr inbounds i8, ptr %0, i64 %i.kr
  store i8 32, ptr %i.ks, align 1
  br label %pred.store.continue884

pred.store.continue884:                           ; preds = %pred.store.if883, %pred.store.continue882
  %i.kt = extractelement <16 x i1> %i.jb, i64 11
  br i1 %i.kt, label %pred.store.if885, label %pred.store.continue886

pred.store.if885:                                 ; preds = %pred.store.continue884
  %i.ku = add i32 %i.ja, 11
  %i.kv = sext i32 %i.ku to i64
  %i.kw = getelementptr inbounds i8, ptr %0, i64 %i.kv
  store i8 32, ptr %i.kw, align 1
  br label %pred.store.continue886

pred.store.continue886:                           ; preds = %pred.store.if885, %pred.store.continue884
  %i.kx = extractelement <16 x i1> %i.jb, i64 12
  br i1 %i.kx, label %pred.store.if887, label %pred.store.continue888

pred.store.if887:                                 ; preds = %pred.store.continue886
  %i.ky = add i32 %i.ja, 12
  %i.kz = sext i32 %i.ky to i64
  %i.la = getelementptr inbounds i8, ptr %0, i64 %i.kz
  store i8 32, ptr %i.la, align 1
  br label %pred.store.continue888

pred.store.continue888:                           ; preds = %pred.store.if887, %pred.store.continue886
  %i.lb = extractelement <16 x i1> %i.jb, i64 13
  br i1 %i.lb, label %pred.store.if889, label %pred.store.continue890

pred.store.if889:                                 ; preds = %pred.store.continue888
  %i.lc = add i32 %i.ja, 13
  %i.ld = sext i32 %i.lc to i64
  %i.le = getelementptr inbounds i8, ptr %0, i64 %i.ld
  store i8 32, ptr %i.le, align 1
  br label %pred.store.continue890

pred.store.continue890:                           ; preds = %pred.store.if889, %pred.store.continue888
  %i.lf = extractelement <16 x i1> %i.jb, i64 14
  br i1 %i.lf, label %pred.store.if891, label %pred.store.continue892

pred.store.if891:                                 ; preds = %pred.store.continue890
  %i.lg = add i32 %i.ja, 14
  %i.lh = sext i32 %i.lg to i64
  %i.li = getelementptr inbounds i8, ptr %0, i64 %i.lh
  store i8 32, ptr %i.li, align 1
  br label %pred.store.continue892

pred.store.continue892:                           ; preds = %pred.store.if891, %pred.store.continue890
  %i.lj = extractelement <16 x i1> %i.jb, i64 15
  br i1 %i.lj, label %pred.store.if893, label %pred.store.continue894

pred.store.if893:                                 ; preds = %pred.store.continue892
  %i.lk = add i32 %i.ja, 15
  %i.ll = sext i32 %i.lk to i64
  %i.lm = getelementptr inbounds i8, ptr %0, i64 %i.ll
  store i8 32, ptr %i.lm, align 1
  br label %pred.store.continue894

pred.store.continue894:                           ; preds = %pred.store.if893, %pred.store.continue892
  %index.next895 = add nuw i32 %index861, 16      ; 2 uses
  %vec.ind.next896 = add nsw <16 x i32> %vec.ind862, splat (i32 16)
  %i.ln = icmp eq i32 %index.next895, %n.vec854
  br i1 %i.ln, label %middle.block897, label %vector.body860, !llvm.loop !18

middle.block897:                                  ; preds = %pred.store.continue894
  br i1 %cmp.n898, label %.loopexit.i.us33.i, label %vec.epilog.iter.check903

vec.epilog.iter.check903:                         ; preds = %middle.block897
  br i1 %min.epilog.iters.check904, label %.lr.ph.i.us29.i.preheader, label %vec.epilog.ph905, !prof !14

vec.epilog.ph905:                                 ; preds = %vector.main.loop.iter.check850, %vec.epilog.iter.check903
  %vec.epilog.resume.val899 = phi i32 [ %n.vec854, %vec.epilog.iter.check903 ], [ 0, %vector.main.loop.iter.check850 ]
  %bc.resume.val900 = phi i32 [ %i.iz, %vec.epilog.iter.check903 ], [ %.lcssa507509, %vector.main.loop.iter.check850 ]
  %i.lo = add i32 %.lcssa507509, %n.vec907        ; 2 uses
  %broadcast.splatinsert910 = insertelement <4 x i32> poison, i32 %bc.resume.val900, i64 0
  %broadcast.splat911 = shufflevector <4 x i32> %broadcast.splatinsert910, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction912 = add nsw <4 x i32> %broadcast.splat911, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body913

vec.epilog.vector.body913:                        ; preds = %pred.store.continue923, %vec.epilog.ph905
  %index914 = phi i32 [ %vec.epilog.resume.val899, %vec.epilog.ph905 ], [ %index.next924, %pred.store.continue923 ] ; 2 uses
  %vec.ind915 = phi <4 x i32> [ %induction912, %vec.epilog.ph905 ], [ %vec.ind.next925, %pred.store.continue923 ] ; 2 uses
  %i.lp = add i32 %.lcssa507509, %index914        ; 4 uses
  %i.lq = icmp slt <4 x i32> %vec.ind915, %broadcast.splat909 ; 4 uses
  %i.lr = extractelement <4 x i1> %i.lq, i64 0
  br i1 %i.lr, label %pred.store.if916, label %pred.store.continue917

pred.store.if916:                                 ; preds = %vec.epilog.vector.body913
  %i.ls = sext i32 %i.lp to i64
  %i.lt = getelementptr inbounds i8, ptr %0, i64 %i.ls
  store i8 32, ptr %i.lt, align 1
  br label %pred.store.continue917

pred.store.continue917:                           ; preds = %pred.store.if916, %vec.epilog.vector.body913
  %i.lu = extractelement <4 x i1> %i.lq, i64 1
  br i1 %i.lu, label %pred.store.if918, label %pred.store.continue919

pred.store.if918:                                 ; preds = %pred.store.continue917
  %i.lv = add i32 %i.lp, 1
  %i.lw = sext i32 %i.lv to i64
  %i.lx = getelementptr inbounds i8, ptr %0, i64 %i.lw
  store i8 32, ptr %i.lx, align 1
  br label %pred.store.continue919

pred.store.continue919:                           ; preds = %pred.store.if918, %pred.store.continue917
  %i.ly = extractelement <4 x i1> %i.lq, i64 2
  br i1 %i.ly, label %pred.store.if920, label %pred.store.continue921

pred.store.if920:                                 ; preds = %pred.store.continue919
  %i.lz = add i32 %i.lp, 2
  %i.ma = sext i32 %i.lz to i64
  %i.mb = getelementptr inbounds i8, ptr %0, i64 %i.ma
  store i8 32, ptr %i.mb, align 1
  br label %pred.store.continue921

pred.store.continue921:                           ; preds = %pred.store.if920, %pred.store.continue919
  %i.mc = extractelement <4 x i1> %i.lq, i64 3
  br i1 %i.mc, label %pred.store.if922, label %pred.store.continue923

pred.store.if922:                                 ; preds = %pred.store.continue921
  %i.md = add i32 %i.lp, 3
  %i.me = sext i32 %i.md to i64
  %i.mf = getelementptr inbounds i8, ptr %0, i64 %i.me
  store i8 32, ptr %i.mf, align 1
  br label %pred.store.continue923

pred.store.continue923:                           ; preds = %pred.store.if922, %pred.store.continue921
  %index.next924 = add nuw i32 %index914, 4       ; 2 uses
  %vec.ind.next925 = add nsw <4 x i32> %vec.ind915, splat (i32 4)
  %i.mg = icmp eq i32 %index.next924, %n.vec907
  br i1 %i.mg, label %vec.epilog.middle.block926, label %vec.epilog.vector.body913, !llvm.loop !19

vec.epilog.middle.block926:                       ; preds = %pred.store.continue923
  br i1 %cmp.n927, label %.loopexit.i.us33.i, label %.lr.ph.i.us29.i.preheader

.lr.ph.i.us29.i.preheader:                        ; preds = %iter.check901, %vec.epilog.iter.check903, %vec.epilog.middle.block926
  %.pre.i.us31.i506.ph = phi i32 [ %.lcssa507509, %iter.check901 ], [ %i.iz, %vec.epilog.iter.check903 ], [ %i.lo, %vec.epilog.middle.block926 ]
  %.030.i.us30.i.ph = phi i32 [ 0, %iter.check901 ], [ %n.vec854, %vec.epilog.iter.check903 ], [ %n.vec907, %vec.epilog.middle.block926 ]
  br label %.lr.ph.i.us29.i

.lr.ph.i.us29.i:                                  ; preds = %.lr.ph.i.us29.i.preheader, %bb.al
  %.pre.i.us31.i506 = phi i32 [ %i.mk, %bb.al ], [ %.pre.i.us31.i506.ph, %.lr.ph.i.us29.i.preheader ] ; 3 uses
  %.030.i.us30.i = phi i32 [ %i.ml, %bb.al ], [ %.030.i.us30.i.ph, %.lr.ph.i.us29.i.preheader ]
  %i.mh = icmp slt i32 %.pre.i.us31.i506, %1
  br i1 %i.mh, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.lr.ph.i.us29.i
  %i.mi = sext i32 %.pre.i.us31.i506 to i64
  %i.mj = getelementptr inbounds i8, ptr %0, i64 %i.mi
  store i8 32, ptr %i.mj, align 1
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %.lr.ph.i.us29.i
  %i.mk = add nsw i32 %.pre.i.us31.i506, 1        ; 2 uses
  %i.ml = add nuw nsw i32 %.030.i.us30.i, 1       ; 2 uses
  %exitcond.not.i.us32.i = icmp eq i32 %i.ml, %2
  br i1 %exitcond.not.i.us32.i, label %.loopexit.i.us33.i, label %.lr.ph.i.us29.i, !llvm.loop !20

.loopexit.i.us33.i:                               ; preds = %bb.al, %middle.block897, %vec.epilog.middle.block926, %bb.aj, %bb.ag, %bb.af
  %.lcssa507510 = phi i32 [ %.lcssa507509, %bb.aj ], [ %.lcssa507509, %bb.ag ], [ %.lcssa507509, %bb.af ], [ %i.lo, %vec.epilog.middle.block926 ], [ %i.iz, %middle.block897 ], [ %i.mk, %bb.al ] ; 4 uses
  %i.mm = icmp slt i32 %.lcssa507510, %1
  br i1 %i.mm, label %bb.am, label %_ZL10outputCharcPcPiii.exit.us35.i

bb.am:                                            ; preds = %.loopexit.i.us33.i
  %i.mn = sext i32 %.lcssa507510 to i64
  %i.mo = getelementptr inbounds i8, ptr %0, i64 %i.mn
  store i8 %i.iq, ptr %i.mo, align 1
  br label %_ZL10outputCharcPcPiii.exit.us35.i

_ZL10outputCharcPcPiii.exit.us35.i:               ; preds = %bb.am, %.loopexit.i.us33.i
  %.not29.i.us34.i = icmp eq i8 %i.iq, 0
  %i.mp = add nsw i32 %.lcssa507510, 1
  br i1 %.not29.i.us34.i, label %_ZL10outputCharcPcPiii.exit175.loopexit, label %.split.split.split.us.i, !llvm.loop !17

bb.an:                                            ; preds = %._crit_edge
  %i.mq = load i32, ptr %4, align 8               ; 5 uses
  %i.mr = icmp ult i32 %i.mq, 41
  br i1 %i.mr, label %bb.ao, label %.thread644

.thread644:                                       ; preds = %bb.an
  %i.ms = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.mt = getelementptr i8, ptr %i.ms, i64 8
  store ptr %i.mt, ptr %i.b, align 8
  %i.mu = load ptr, ptr %i.ms, align 8
  br label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.mv = load ptr, ptr %i.c, align 8
  %i.mw = zext nneg i32 %i.mq to i64
  %i.mx = getelementptr i8, ptr %i.mv, i64 %i.mw
  %i.my = add nuw nsw i32 %i.mq, 8                ; 2 uses
  store i32 %i.my, ptr %4, align 8
  %i.mz = load ptr, ptr %i.mx, align 8            ; 2 uses
  %i.na = icmp ult i32 %i.mq, 33
  br i1 %i.na, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.nb = load ptr, ptr %i.c, align 8
  %i.nc = zext nneg i32 %i.my to i64
  %i.nd = getelementptr i8, ptr %i.nb, i64 %i.nc
  %i.ne = add nuw nsw i32 %i.mq, 16
  store i32 %i.ne, ptr %4, align 8
  br label %bb.ar

bb.aq:                                            ; preds = %.thread644, %bb.ao
  %i.nf = phi ptr [ %i.mu, %.thread644 ], [ %i.mz, %bb.ao ]
  %i.ng = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.nh = getelementptr i8, ptr %i.ng, i64 8
  store ptr %i.nh, ptr %i.b, align 8
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.ni = phi ptr [ %i.mz, %bb.ap ], [ %i.nf, %bb.aq ]
  %i.nj = phi ptr [ %i.nd, %bb.ap ], [ %i.ng, %bb.aq ]
  %i.nk = load i32, ptr %i.nj, align 4
  call fastcc void @_ZL13outputUStringPKDsiPcPiii(ptr noundef %i.ni, i32 noundef %i.nk, ptr noundef %0, ptr noundef %i.a, i32 noundef %1, i32 noundef %2)
  br label %_ZL10outputCharcPcPiii.exit175

bb.as:                                            ; preds = %._crit_edge
  %i.nl = load i32, ptr %4, align 8               ; 3 uses
  %i.nm = icmp ult i32 %i.nl, 41
  br i1 %i.nm, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.nn = load ptr, ptr %i.c, align 8
  %i.no = zext nneg i32 %i.nl to i64
  %i.np = getelementptr i8, ptr %i.nn, i64 %i.no
  %i.nq = add nuw nsw i32 %i.nl, 8
  store i32 %i.nq, ptr %4, align 8
  br label %.loopexit.i.i

bb.au:                                            ; preds = %bb.as
  %i.nr = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.ns = getelementptr i8, ptr %i.nr, i64 8
  store ptr %i.ns, ptr %i.b, align 8
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %bb.au, %bb.at
  %i.nt = phi ptr [ %i.np, %bb.at ], [ %i.nr, %bb.au ]
  %i.nu = load i32, ptr %i.nt, align 4
  %i.nv = zext i32 %i.nu to i64                   ; 2 uses
  %i.nw = sext i32 %.promoted514 to i64           ; 2 uses
  %i.nx = icmp slt i32 %.promoted514, %1
  br i1 %i.nx, label %bb.av, label %_ZL10outputCharcPcPiii.exit.i

bb.av:                                            ; preds = %.loopexit.i.i
  %i.ny = lshr i64 %i.nv, 4
  %i.nz = and i64 %i.ny, 15
  %i.oa = getelementptr inbounds nuw i8, ptr @_ZZL14outputHexBytesliPcPiiE9gHexChars, i64 %i.nz
  %i.ob = load i8, ptr %i.oa, align 1
  %i.oc = getelementptr inbounds i8, ptr %0, i64 %i.nw
  store i8 %i.ob, ptr %i.oc, align 1
  br label %_ZL10outputCharcPcPiii.exit.i

_ZL10outputCharcPcPiii.exit.i:                    ; preds = %bb.av, %.loopexit.i.i
  %indvars.iv.next567.a = add nsw i64 %i.nw, 1    ; 2 uses
  %i.od = icmp slt i64 %indvars.iv.next567.a, %i.d
  br i1 %i.od, label %bb.aw, label %_ZL10outputCharcPcPiii.exit.i.1

bb.aw:                                            ; preds = %_ZL10outputCharcPcPiii.exit.i
  %i.oe = and i64 %i.nv, 15
  %i.of = getelementptr inbounds nuw i8, ptr @_ZZL14outputHexBytesliPcPiiE9gHexChars, i64 %i.oe
  %i.og = load i8, ptr %i.of, align 1
  %i.oh = getelementptr inbounds i8, ptr %0, i64 %indvars.iv.next567.a
  store i8 %i.og, ptr %i.oh, align 1
  br label %_ZL10outputCharcPcPiii.exit.i.1

_ZL10outputCharcPcPiii.exit.i.1:                  ; preds = %bb.aw, %_ZL10outputCharcPcPiii.exit.i
  %indvars.iv.next567.1.a = add i32 %.promoted514, 2
  store i32 %indvars.iv.next567.1.a, ptr %i.a, align 4
  br label %_ZL10outputCharcPcPiii.exit175

bb.ax:                                            ; preds = %._crit_edge
  %i.oi = load i32, ptr %4, align 8               ; 3 uses
  %i.oj = icmp ult i32 %i.oi, 41
  br i1 %i.oj, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.ok = load ptr, ptr %i.c, align 8
  %i.ol = zext nneg i32 %i.oi to i64
  %i.om = getelementptr i8, ptr %i.ok, i64 %i.ol
  %i.on = add nuw nsw i32 %i.oi, 8
  store i32 %i.on, ptr %4, align 8
  br label %.loopexit.i.i180

bb.az:                                            ; preds = %bb.ax
  %i.oo = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.op = getelementptr i8, ptr %i.oo, i64 8
  store ptr %i.op, ptr %i.b, align 8
  br label %.loopexit.i.i180

.loopexit.i.i180:                                 ; preds = %bb.az, %bb.ay
  %i.oq = phi ptr [ %i.om, %bb.ay ], [ %i.oo, %bb.az ]
  %i.or = load i32, ptr %i.oq, align 4
  %i.os = zext i32 %i.or to i64                   ; 4 uses
  %i.ot = sext i32 %.promoted514 to i64           ; 4 uses
  %i.ou = icmp slt i32 %.promoted514, %1
  br i1 %i.ou, label %bb.ba, label %_ZL10outputCharcPcPiii.exit.i183

bb.ba:                                            ; preds = %.loopexit.i.i180
  %i.ov = lshr i64 %i.os, 12
  %i.ow = and i64 %i.ov, 15
  %i.ox = getelementptr inbounds nuw i8, ptr @_ZZL14outputHexBytesliPcPiiE9gHexChars, i64 %i.ow
  %i.oy = load i8, ptr %i.ox, align 1
  %i.oz = getelementptr inbounds i8, ptr %0, i64 %i.ot
  store i8 %i.oy, ptr %i.oz, align 1
  br label %_ZL10outputCharcPcPiii.exit.i183

_ZL10outputCharcPcPiii.exit.i183:                 ; preds = %bb.ba, %.loopexit.i.i180
  %indvars.iv.next564.a = add nsw i64 %i.ot, 1    ; 2 uses
  %i.pa = icmp slt i64 %indvars.iv.next564.a, %i.d
  br i1 %i.pa, label %bb.bb, label %_ZL10outputCharcPcPiii.exit.i183.1

bb.bb:                                            ; preds = %_ZL10outputCharcPcPiii.exit.i183
  %i.pb = lshr i64 %i.os, 8
  %i.pc = and i64 %i.pb, 15
  %i.pd = getelementptr inbounds nuw i8, ptr @_ZZL14outputHexBytesliPcPiiE9gHexChars, i64 %i.pc
  %i.pe = load i8, ptr %i.pd, align 1
  %i.pf = getelementptr inbounds i8, ptr %0, i64 %indvars.iv.next564.a
  store i8 %i.pe, ptr %i.pf, align 1
  br label %_ZL10outputCharcPcPiii.exit.i183.1

_ZL10outputCharcPcPiii.exit.i183.1:               ; preds = %bb.bb, %_ZL10outputCharcPcPiii.exit.i183
  %indvars.iv.next564.1 = add nsw i64 %i.ot, 2    ; 2 uses
  %i.pg = icmp slt i64 %indvars.iv.next564.1, %i.d
  br i1 %i.pg, label %bb.bc, label %_ZL10outputCharcPcPiii.exit.i183.2

bb.bc:                                            ; preds = %_ZL10outputCharcPcPiii.exit.i183.1
  %i.ph = lshr i64 %i.os, 4
  %i.pi = and i64 %i.ph, 15
  %i.pj = getelementptr inbounds nuw i8, ptr @_ZZL14outputHexBytesliPcPiiE9gHexChars, i64 %i.pi
  %i.pk = load i8, ptr %i.pj, align 1
  %i.pl = getelementptr inbounds i8, ptr %0, i64 %indvars.iv.next564.1
  store i8 %i.pk, ptr %i.pl, align 1
  br label %_ZL10outputCharcPcPiii.exit.i183.2

_ZL10outputCharcPcPiii.exit.i183.2:               ; preds = %bb.bc, %_ZL10outputCharcPcPiii.exit.i183.1
  %indvars.iv.next564.2 = add nsw i64 %i.ot, 3    ; 2 uses
  %i.pm = icmp slt i64 %indvars.iv.next564.2, %i.d
  br i1 %i.pm, label %bb.bd, label %_ZL10outputCharcPcPiii.exit.i183.3

bb.bd:                                            ; preds = %_ZL10outputCharcPcPiii.exit.i183.2
  %i.pn = and i64 %i.os, 15
  %i.po = getelementptr inbounds nuw i8, ptr @_ZZL14outputHexBytesliPcPiiE9gHexChars, i64 %i.pn
  %i.pp = load i8, ptr %i.po, align 1
  %i.pq = getelementptr inbounds i8, ptr %0, i64 %indvars.iv.next564.2
  store i8 %i.pp, ptr %i.pq, align 1
  br label %_ZL10outputCharcPcPiii.exit.i183.3

_ZL10outputCharcPcPiii.exit.i183.3:               ; preds = %bb.bd, %_ZL10outputCharcPcPiii.exit.i183.2
  %indvars.iv.next564.3 = add i32 %.promoted514, 4
  store i32 %indvars.iv.next564.3, ptr %i.a, align 4
  br label %_ZL10outputCharcPcPiii.exit175

bb.be:                                            ; preds = %._crit_edge
  %i.pr = load i32, ptr %4, align 8               ; 3 uses
end_hunk_0
begin_hunk_1_@utrace_vformat_78:bb.a
  %.030.i206.ph = phi i32 [ 0, %iter.check982 ], [ %n.vec935, %vec.epilog.iter.check984 ], [ %n.vec988, %vec.epilog.middle.block1007 ]
  br label %.lr.ph.i205

.lr.ph.i205:                                      ; preds = %.lr.ph.i205.preheader, %bb.cr
  %.pre.i208489 = phi i32 [ %i.aaa, %bb.cr ], [ %.pre.i208489.ph, %.lr.ph.i205.preheader ] ; 3 uses
  %.030.i206 = phi i32 [ %i.aab, %bb.cr ], [ %.030.i206.ph, %.lr.ph.i205.preheader ]
  %i.zx = icmp slt i32 %.pre.i208489, %1
  br i1 %i.zx, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %.lr.ph.i205
  %i.zy = sext i32 %.pre.i208489 to i64
  %i.zz = getelementptr inbounds i8, ptr %0, i64 %i.zy
  store i8 32, ptr %i.zz, align 1
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %.lr.ph.i205
  %i.aaa = add nsw i32 %.pre.i208489, 1           ; 2 uses
  %i.aab = add nuw nsw i32 %.030.i206, 1          ; 2 uses
  %exitcond.not.i207 = icmp eq i32 %i.aab, %2
  br i1 %exitcond.not.i207, label %.loopexit.i203, label %.lr.ph.i205, !llvm.loop !23

.loopexit.i203:                                   ; preds = %bb.cr, %middle.block978, %vec.epilog.middle.block1007, %bb.cn, %bb.co, %bb.cp
  %i.aac = phi i32 [ %.promoted514, %bb.cn ], [ 0, %bb.cp ], [ %.promoted514, %bb.co ], [ %i.ze, %vec.epilog.middle.block1007 ], [ %i.wp, %middle.block978 ], [ %i.aaa, %bb.cr ] ; 3 uses
  %i.aad = icmp slt i32 %i.aac, %1
  br i1 %i.aad, label %bb.cs, label %_ZL10outputCharcPcPiii.exit210

bb.cs:                                            ; preds = %.loopexit.i203
  %i.aae = sext i32 %i.aac to i64
  %i.aaf = getelementptr inbounds i8, ptr %0, i64 %i.aae
  store i8 37, ptr %i.aaf, align 1
  br label %_ZL10outputCharcPcPiii.exit210

_ZL10outputCharcPcPiii.exit210:                   ; preds = %.loopexit.i203, %bb.cs
  %i.aag = add nsw i32 %i.aac, 1
  store i32 %i.aag, ptr %i.a, align 4
  br label %_ZL10outputCharcPcPiii.exit175

bb.ct:                                            ; preds = %._crit_edge
  %i.aah = sext i32 %i.di to i64
  %i.aai = getelementptr inbounds i8, ptr %3, i64 %i.aah
  %i.aaj = load i8, ptr %i.aai, align 1           ; 2 uses
  %.not159 = icmp eq i8 %i.aaj, 0
  %i.aak = add nsw i32 %.0141.lcssa, 3
  %spec.select = select i1 %.not159, i32 %i.di, i32 %i.aak
  %i.aal = load i32, ptr %4, align 8              ; 5 uses
  %i.aam = icmp ult i32 %i.aal, 41
  br i1 %i.aam, label %bb.cu, label %.thread645

.thread645:                                       ; preds = %bb.ct
  %i.aan = load ptr, ptr %i.b, align 8            ; 2 uses
  %i.aao = getelementptr i8, ptr %i.aan, i64 8
  store ptr %i.aao, ptr %i.b, align 8
  %i.aap = load ptr, ptr %i.aan, align 8
  br label %bb.cw

bb.cu:                                            ; preds = %bb.ct
  %i.aaq = load ptr, ptr %i.c, align 8
  %i.aar = zext nneg i32 %i.aal to i64
  %i.aas = getelementptr i8, ptr %i.aaq, i64 %i.aar
  %i.aat = add nuw nsw i32 %i.aal, 8              ; 2 uses
  store i32 %i.aat, ptr %4, align 8
  %i.aau = load ptr, ptr %i.aas, align 8          ; 2 uses
  %i.aav = icmp ult i32 %i.aal, 33
  br i1 %i.aav, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.aaw = load ptr, ptr %i.c, align 8
  %i.aax = zext nneg i32 %i.aat to i64
  %i.aay = getelementptr i8, ptr %i.aaw, i64 %i.aax
  %i.aaz = add nuw nsw i32 %i.aal, 16
  store i32 %i.aaz, ptr %4, align 8
  br label %bb.cx

bb.cw:                                            ; preds = %.thread645, %bb.cu
  %i.aba = phi ptr [ %i.aap, %.thread645 ], [ %i.aau, %bb.cu ]
  %i.abb = load ptr, ptr %i.b, align 8            ; 2 uses
  %i.abc = getelementptr i8, ptr %i.abb, i64 8
  store ptr %i.abc, ptr %i.b, align 8
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  %i.abd = phi ptr [ %i.aau, %bb.cv ], [ %i.aba, %bb.cw ] ; 6 uses
  %i.abe = phi ptr [ %i.aay, %bb.cv ], [ %i.abb, %bb.cw ]
  %i.abf = load i32, ptr %i.abe, align 4          ; 4 uses
  %i.abg = icmp eq ptr %i.abd, null
  br i1 %i.abg, label %bb.cy, label %.preheader

.preheader:                                       ; preds = %bb.cx
  %i.abh = icmp eq i32 %i.abf, -1                 ; 3 uses
  %i.abi = icmp sgt i32 %i.abf, 0
  %i.abj = or i1 %i.abh, %i.abi
  br i1 %i.abj, label %.lr.ph468, label %_ZL12outputStringPKcPcPiii.exit232

bb.cy:                                            ; preds = %bb.cx
  br i1 %.old.i, label %.split.split.split.us.i218.preheader, label %.split.us.i213.preheader

.split.us.i213.preheader:                         ; preds = %bb.cy
  %i.abk = icmp slt i32 %.promoted514, %1
  br i1 %i.abk, label %bb.cz, label %_ZL10outputCharcPcPiii.exit.us.i217

.split.split.split.us.i218.preheader:             ; preds = %bb.cy
  %i.abl = icmp eq i32 %.promoted514, 0
  br i1 %i.abl, label %iter.check1819, label %bb.dh

bb.cz:                                            ; preds = %.split.us.i213.preheader
  %i.abm = sext i32 %.promoted514 to i64
  %i.abn = getelementptr inbounds i8, ptr %0, i64 %i.abm
  store i8 42, ptr %i.abn, align 1
  br label %_ZL10outputCharcPcPiii.exit.us.i217

_ZL10outputCharcPcPiii.exit.us.i217:              ; preds = %bb.cz, %.split.us.i213.preheader
  %i.abo = add nsw i32 %.promoted514, 1           ; 2 uses
  %i.abp = icmp slt i32 %i.abo, %1
  br i1 %i.abp, label %bb.da, label %_ZL10outputCharcPcPiii.exit.us.i217.1

bb.da:                                            ; preds = %_ZL10outputCharcPcPiii.exit.us.i217
  %i.abq = sext i32 %i.abo to i64
  %i.abr = getelementptr inbounds i8, ptr %0, i64 %i.abq
  store i8 78, ptr %i.abr, align 1
  br label %_ZL10outputCharcPcPiii.exit.us.i217.1

_ZL10outputCharcPcPiii.exit.us.i217.1:            ; preds = %bb.da, %_ZL10outputCharcPcPiii.exit.us.i217
  %i.abs = add nsw i32 %.promoted514, 2           ; 2 uses
  %i.abt = icmp slt i32 %i.abs, %1
  br i1 %i.abt, label %bb.db, label %_ZL10outputCharcPcPiii.exit.us.i217.2

bb.db:                                            ; preds = %_ZL10outputCharcPcPiii.exit.us.i217.1
  %i.abu = sext i32 %i.abs to i64
  %i.abv = getelementptr inbounds i8, ptr %0, i64 %i.abu
  store i8 85, ptr %i.abv, align 1
  br label %_ZL10outputCharcPcPiii.exit.us.i217.2

_ZL10outputCharcPcPiii.exit.us.i217.2:            ; preds = %bb.db, %_ZL10outputCharcPcPiii.exit.us.i217.1
  %i.abw = add nsw i32 %.promoted514, 3           ; 2 uses
  %i.abx = icmp slt i32 %i.abw, %1
  br i1 %i.abx, label %bb.dc, label %_ZL10outputCharcPcPiii.exit.us.i217.3

bb.dc:                                            ; preds = %_ZL10outputCharcPcPiii.exit.us.i217.2
  %i.aby = sext i32 %i.abw to i64
  %i.abz = getelementptr inbounds i8, ptr %0, i64 %i.aby
  store i8 76, ptr %i.abz, align 1
  br label %_ZL10outputCharcPcPiii.exit.us.i217.3

_ZL10outputCharcPcPiii.exit.us.i217.3:            ; preds = %bb.dc, %_ZL10outputCharcPcPiii.exit.us.i217.2
  %i.aca = add nsw i32 %.promoted514, 4           ; 2 uses
  %i.acb = icmp slt i32 %i.aca, %1
  br i1 %i.acb, label %bb.dd, label %_ZL10outputCharcPcPiii.exit.us.i217.4

bb.dd:                                            ; preds = %_ZL10outputCharcPcPiii.exit.us.i217.3
  %i.acc = sext i32 %i.aca to i64
  %i.acd = getelementptr inbounds i8, ptr %0, i64 %i.acc
  store i8 76, ptr %i.acd, align 1
  br label %_ZL10outputCharcPcPiii.exit.us.i217.4

_ZL10outputCharcPcPiii.exit.us.i217.4:            ; preds = %bb.dd, %_ZL10outputCharcPcPiii.exit.us.i217.3
  %i.ace = add nsw i32 %.promoted514, 5           ; 2 uses
  %i.acf = icmp slt i32 %i.ace, %1
  br i1 %i.acf, label %bb.de, label %_ZL10outputCharcPcPiii.exit.us.i217.5

bb.de:                                            ; preds = %_ZL10outputCharcPcPiii.exit.us.i217.4
  %i.acg = sext i32 %i.ace to i64
  %i.ach = getelementptr inbounds i8, ptr %0, i64 %i.acg
  store i8 42, ptr %i.ach, align 1
  br label %_ZL10outputCharcPcPiii.exit.us.i217.5

_ZL10outputCharcPcPiii.exit.us.i217.5:            ; preds = %bb.de, %_ZL10outputCharcPcPiii.exit.us.i217.4
  %i.aci = add nsw i32 %.promoted514, 6           ; 2 uses
  %i.acj = icmp slt i32 %i.aci, %1
  br i1 %i.acj, label %bb.df, label %_ZL10outputCharcPcPiii.exit.us.i217.6

bb.df:                                            ; preds = %_ZL10outputCharcPcPiii.exit.us.i217.5
  %i.ack = sext i32 %i.aci to i64
  %i.acl = getelementptr inbounds i8, ptr %0, i64 %i.ack
  store i8 32, ptr %i.acl, align 1
  br label %_ZL10outputCharcPcPiii.exit.us.i217.6

_ZL10outputCharcPcPiii.exit.us.i217.6:            ; preds = %bb.df, %_ZL10outputCharcPcPiii.exit.us.i217.5
  %i.acm = add nsw i32 %.promoted514, 7           ; 4 uses
  %i.acn = icmp slt i32 %i.acm, %1
  br i1 %i.acn, label %bb.dg, label %_ZL12outputStringPKcPcPiii.exit232.thread653

bb.dg:                                            ; preds = %_ZL10outputCharcPcPiii.exit.us.i217.6
  %i.aco = sext i32 %i.acm to i64
  %i.acp = getelementptr inbounds i8, ptr %0, i64 %i.aco
  store i8 0, ptr %i.acp, align 1
  br label %_ZL12outputStringPKcPcPiii.exit232.thread653

bb.dh:                                            ; preds = %.split.split.split.us.i218.preheader
  %i.acq = icmp slt i32 %.promoted514, %1
  br i1 %i.acq, label %bb.di, label %.loopexit.i.us33.i221

bb.di:                                            ; preds = %bb.dh
  %i.acr = sext i32 %.promoted514 to i64
  %i.acs = getelementptr i8, ptr %0, i64 %i.acr
  %i.act = getelementptr i8, ptr %i.acs, i64 -1
  %i.acu = load i8, ptr %i.act, align 1
  %i.acv = icmp eq i8 %i.acu, 10
  br i1 %i.acv, label %iter.check1819, label %.loopexit.i.us33.i221

iter.check1819:                                   ; preds = %bb.di, %.split.split.split.us.i218.preheader
  br i1 %min.iters.check1767, label %.lr.ph.i.us29.i226.preheader, label %vector.main.loop.iter.check1768

vector.main.loop.iter.check1768:                  ; preds = %iter.check1819
  br i1 %min.iters.check1769, label %vec.epilog.ph1823, label %vector.ph1770

vector.ph1770:                                    ; preds = %vector.main.loop.iter.check1768
  %i.acw = add i32 %.promoted514, %n.vec1772      ; 3 uses
  %broadcast.splatinsert1775 = insertelement <16 x i32> poison, i32 %.promoted514, i64 0
  %broadcast.splat1776 = shufflevector <16 x i32> %broadcast.splatinsert1775, <16 x i32> poison, <16 x i32> zeroinitializer
  %induction1777 = add nsw <16 x i32> %broadcast.splat1776, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  br label %vector.body1778

vector.body1778:                                  ; preds = %pred.store.continue1812, %vector.ph1770
  %index1779 = phi i32 [ 0, %vector.ph1770 ], [ %index.next1813, %pred.store.continue1812 ] ; 2 uses
  %vec.ind1780 = phi <16 x i32> [ %induction1777, %vector.ph1770 ], [ %vec.ind.next1814, %pred.store.continue1812 ] ; 2 uses
  %i.acx = add i32 %.promoted514, %index1779      ; 16 uses
  %i.acy = icmp slt <16 x i32> %vec.ind1780, %broadcast.splat1774 ; 16 uses
  %i.acz = extractelement <16 x i1> %i.acy, i64 0
  br i1 %i.acz, label %pred.store.if1781, label %pred.store.continue1782

pred.store.if1781:                                ; preds = %vector.body1778
  %i.ada = sext i32 %i.acx to i64
  %i.adb = getelementptr inbounds i8, ptr %0, i64 %i.ada
  store i8 32, ptr %i.adb, align 1
  br label %pred.store.continue1782

pred.store.continue1782:                          ; preds = %pred.store.if1781, %vector.body1778
  %i.adc = extractelement <16 x i1> %i.acy, i64 1
  br i1 %i.adc, label %pred.store.if1783, label %pred.store.continue1784

pred.store.if1783:                                ; preds = %pred.store.continue1782
  %i.add = add i32 %i.acx, 1
  %i.ade = sext i32 %i.add to i64
  %i.adf = getelementptr inbounds i8, ptr %0, i64 %i.ade
  store i8 32, ptr %i.adf, align 1
  br label %pred.store.continue1784

pred.store.continue1784:                          ; preds = %pred.store.if1783, %pred.store.continue1782
  %i.adg = extractelement <16 x i1> %i.acy, i64 2
  br i1 %i.adg, label %pred.store.if1785, label %pred.store.continue1786

pred.store.if1785:                                ; preds = %pred.store.continue1784
  %i.adh = add i32 %i.acx, 2
  %i.adi = sext i32 %i.adh to i64
  %i.adj = getelementptr inbounds i8, ptr %0, i64 %i.adi
  store i8 32, ptr %i.adj, align 1
  br label %pred.store.continue1786

pred.store.continue1786:                          ; preds = %pred.store.if1785, %pred.store.continue1784
  %i.adk = extractelement <16 x i1> %i.acy, i64 3
  br i1 %i.adk, label %pred.store.if1787, label %pred.store.continue1788

pred.store.if1787:                                ; preds = %pred.store.continue1786
  %i.adl = add i32 %i.acx, 3
  %i.adm = sext i32 %i.adl to i64
  %i.adn = getelementptr inbounds i8, ptr %0, i64 %i.adm
  store i8 32, ptr %i.adn, align 1
  br label %pred.store.continue1788

pred.store.continue1788:                          ; preds = %pred.store.if1787, %pred.store.continue1786
  %i.ado = extractelement <16 x i1> %i.acy, i64 4
  br i1 %i.ado, label %pred.store.if1789, label %pred.store.continue1790

pred.store.if1789:                                ; preds = %pred.store.continue1788
  %i.adp = add i32 %i.acx, 4
  %i.adq = sext i32 %i.adp to i64
  %i.adr = getelementptr inbounds i8, ptr %0, i64 %i.adq
  store i8 32, ptr %i.adr, align 1
  br label %pred.store.continue1790

pred.store.continue1790:                          ; preds = %pred.store.if1789, %pred.store.continue1788
  %i.ads = extractelement <16 x i1> %i.acy, i64 5
  br i1 %i.ads, label %pred.store.if1791, label %pred.store.continue1792

pred.store.if1791:                                ; preds = %pred.store.continue1790
  %i.adt = add i32 %i.acx, 5
  %i.adu = sext i32 %i.adt to i64
  %i.adv = getelementptr inbounds i8, ptr %0, i64 %i.adu
  store i8 32, ptr %i.adv, align 1
  br label %pred.store.continue1792

pred.store.continue1792:                          ; preds = %pred.store.if1791, %pred.store.continue1790
  %i.adw = extractelement <16 x i1> %i.acy, i64 6
  br i1 %i.adw, label %pred.store.if1793, label %pred.store.continue1794

pred.store.if1793:                                ; preds = %pred.store.continue1792
  %i.adx = add i32 %i.acx, 6
  %i.ady = sext i32 %i.adx to i64
  %i.adz = getelementptr inbounds i8, ptr %0, i64 %i.ady
  store i8 32, ptr %i.adz, align 1
  br label %pred.store.continue1794

pred.store.continue1794:                          ; preds = %pred.store.if1793, %pred.store.continue1792
  %i.aea = extractelement <16 x i1> %i.acy, i64 7
  br i1 %i.aea, label %pred.store.if1795, label %pred.store.continue1796

pred.store.if1795:                                ; preds = %pred.store.continue1794
  %i.aeb = add i32 %i.acx, 7
  %i.aec = sext i32 %i.aeb to i64
  %i.aed = getelementptr inbounds i8, ptr %0, i64 %i.aec
  store i8 32, ptr %i.aed, align 1
  br label %pred.store.continue1796

pred.store.continue1796:                          ; preds = %pred.store.if1795, %pred.store.continue1794
  %i.aee = extractelement <16 x i1> %i.acy, i64 8
  br i1 %i.aee, label %pred.store.if1797, label %pred.store.continue1798

pred.store.if1797:                                ; preds = %pred.store.continue1796
  %i.aef = add i32 %i.acx, 8
  %i.aeg = sext i32 %i.aef to i64
  %i.aeh = getelementptr inbounds i8, ptr %0, i64 %i.aeg
  store i8 32, ptr %i.aeh, align 1
  br label %pred.store.continue1798

pred.store.continue1798:                          ; preds = %pred.store.if1797, %pred.store.continue1796
  %i.aei = extractelement <16 x i1> %i.acy, i64 9
  br i1 %i.aei, label %pred.store.if1799, label %pred.store.continue1800

pred.store.if1799:                                ; preds = %pred.store.continue1798
  %i.aej = add i32 %i.acx, 9
  %i.aek = sext i32 %i.aej to i64
  %i.ael = getelementptr inbounds i8, ptr %0, i64 %i.aek
  store i8 32, ptr %i.ael, align 1
  br label %pred.store.continue1800

pred.store.continue1800:                          ; preds = %pred.store.if1799, %pred.store.continue1798
  %i.aem = extractelement <16 x i1> %i.acy, i64 10
  br i1 %i.aem, label %pred.store.if1801, label %pred.store.continue1802

pred.store.if1801:                                ; preds = %pred.store.continue1800
  %i.aen = add i32 %i.acx, 10
  %i.aeo = sext i32 %i.aen to i64
  %i.aep = getelementptr inbounds i8, ptr %0, i64 %i.aeo
  store i8 32, ptr %i.aep, align 1
  br label %pred.store.continue1802

pred.store.continue1802:                          ; preds = %pred.store.if1801, %pred.store.continue1800
  %i.aeq = extractelement <16 x i1> %i.acy, i64 11
  br i1 %i.aeq, label %pred.store.if1803, label %pred.store.continue1804

pred.store.if1803:                                ; preds = %pred.store.continue1802
  %i.aer = add i32 %i.acx, 11
  %i.aes = sext i32 %i.aer to i64
  %i.aet = getelementptr inbounds i8, ptr %0, i64 %i.aes
  store i8 32, ptr %i.aet, align 1
  br label %pred.store.continue1804

pred.store.continue1804:                          ; preds = %pred.store.if1803, %pred.store.continue1802
  %i.aeu = extractelement <16 x i1> %i.acy, i64 12
  br i1 %i.aeu, label %pred.store.if1805, label %pred.store.continue1806

pred.store.if1805:                                ; preds = %pred.store.continue1804
  %i.aev = add i32 %i.acx, 12
  %i.aew = sext i32 %i.aev to i64
  %i.aex = getelementptr inbounds i8, ptr %0, i64 %i.aew
  store i8 32, ptr %i.aex, align 1
  br label %pred.store.continue1806

pred.store.continue1806:                          ; preds = %pred.store.if1805, %pred.store.continue1804
  %i.aey = extractelement <16 x i1> %i.acy, i64 13
  br i1 %i.aey, label %pred.store.if1807, label %pred.store.continue1808

pred.store.if1807:                                ; preds = %pred.store.continue1806
  %i.aez = add i32 %i.acx, 13
  %i.afa = sext i32 %i.aez to i64
  %i.afb = getelementptr inbounds i8, ptr %0, i64 %i.afa
  store i8 32, ptr %i.afb, align 1
  br label %pred.store.continue1808

pred.store.continue1808:                          ; preds = %pred.store.if1807, %pred.store.continue1806
  %i.afc = extractelement <16 x i1> %i.acy, i64 14
  br i1 %i.afc, label %pred.store.if1809, label %pred.store.continue1810

pred.store.if1809:                                ; preds = %pred.store.continue1808
  %i.afd = add i32 %i.acx, 14
  %i.afe = sext i32 %i.afd to i64
  %i.aff = getelementptr inbounds i8, ptr %0, i64 %i.afe
  store i8 32, ptr %i.aff, align 1
  br label %pred.store.continue1810

pred.store.continue1810:                          ; preds = %pred.store.if1809, %pred.store.continue1808
  %i.afg = extractelement <16 x i1> %i.acy, i64 15
  br i1 %i.afg, label %pred.store.if1811, label %pred.store.continue1812

pred.store.if1811:                                ; preds = %pred.store.continue1810
  %i.afh = add i32 %i.acx, 15
  %i.afi = sext i32 %i.afh to i64
  %i.afj = getelementptr inbounds i8, ptr %0, i64 %i.afi
  store i8 32, ptr %i.afj, align 1
  br label %pred.store.continue1812

pred.store.continue1812:                          ; preds = %pred.store.if1811, %pred.store.continue1810
  %index.next1813 = add nuw i32 %index1779, 16    ; 2 uses
  %vec.ind.next1814 = add nsw <16 x i32> %vec.ind1780, splat (i32 16)
  %i.afk = icmp eq i32 %index.next1813, %n.vec1772
  br i1 %i.afk, label %middle.block1815, label %vector.body1778, !llvm.loop !24

middle.block1815:                                 ; preds = %pred.store.continue1812
  br i1 %cmp.n1816, label %.loopexit.i.us33.i221, label %vec.epilog.iter.check1821

vec.epilog.iter.check1821:                        ; preds = %middle.block1815
  br i1 %min.epilog.iters.check1822, label %.lr.ph.i.us29.i226.preheader, label %vec.epilog.ph1823, !prof !14

vec.epilog.ph1823:                                ; preds = %vector.main.loop.iter.check1768, %vec.epilog.iter.check1821
  %vec.epilog.resume.val1817 = phi i32 [ %n.vec1772, %vec.epilog.iter.check1821 ], [ 0, %vector.main.loop.iter.check1768 ]
  %bc.resume.val1818 = phi i32 [ %i.acw, %vec.epilog.iter.check1821 ], [ %.promoted514, %vector.main.loop.iter.check1768 ]
  %i.afl = add i32 %.promoted514, %n.vec1825      ; 2 uses
  %broadcast.splatinsert1828 = insertelement <4 x i32> poison, i32 %bc.resume.val1818, i64 0
  %broadcast.splat1829 = shufflevector <4 x i32> %broadcast.splatinsert1828, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction1830 = add nsw <4 x i32> %broadcast.splat1829, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body1831

vec.epilog.vector.body1831:                       ; preds = %pred.store.continue1841, %vec.epilog.ph1823
  %index1832 = phi i32 [ %vec.epilog.resume.val1817, %vec.epilog.ph1823 ], [ %index.next1842, %pred.store.continue1841 ] ; 2 uses
  %vec.ind1833 = phi <4 x i32> [ %induction1830, %vec.epilog.ph1823 ], [ %vec.ind.next1843, %pred.store.continue1841 ] ; 2 uses
  %i.afm = add i32 %.promoted514, %index1832      ; 4 uses
  %i.afn = icmp slt <4 x i32> %vec.ind1833, %broadcast.splat1827 ; 4 uses
  %i.afo = extractelement <4 x i1> %i.afn, i64 0
  br i1 %i.afo, label %pred.store.if1834, label %pred.store.continue1835

pred.store.if1834:                                ; preds = %vec.epilog.vector.body1831
  %i.afp = sext i32 %i.afm to i64
  %i.afq = getelementptr inbounds i8, ptr %0, i64 %i.afp
  store i8 32, ptr %i.afq, align 1
  br label %pred.store.continue1835

pred.store.continue1835:                          ; preds = %pred.store.if1834, %vec.epilog.vector.body1831
  %i.afr = extractelement <4 x i1> %i.afn, i64 1
  br i1 %i.afr, label %pred.store.if1836, label %pred.store.continue1837

pred.store.if1836:                                ; preds = %pred.store.continue1835
  %i.afs = add i32 %i.afm, 1
  %i.aft = sext i32 %i.afs to i64
  %i.afu = getelementptr inbounds i8, ptr %0, i64 %i.aft
  store i8 32, ptr %i.afu, align 1
  br label %pred.store.continue1837

pred.store.continue1837:                          ; preds = %pred.store.if1836, %pred.store.continue1835
  %i.afv = extractelement <4 x i1> %i.afn, i64 2
  br i1 %i.afv, label %pred.store.if1838, label %pred.store.continue1839

pred.store.if1838:                                ; preds = %pred.store.continue1837
  %i.afw = add i32 %i.afm, 2
  %i.afx = sext i32 %i.afw to i64
  %i.afy = getelementptr inbounds i8, ptr %0, i64 %i.afx
  store i8 32, ptr %i.afy, align 1
  br label %pred.store.continue1839

pred.store.continue1839:                          ; preds = %pred.store.if1838, %pred.store.continue1837
  %i.afz = extractelement <4 x i1> %i.afn, i64 3
  br i1 %i.afz, label %pred.store.if1840, label %pred.store.continue1841

pred.store.if1840:                                ; preds = %pred.store.continue1839
  %i.aga = add i32 %i.afm, 3
  %i.agb = sext i32 %i.aga to i64
  %i.agc = getelementptr inbounds i8, ptr %0, i64 %i.agb
  store i8 32, ptr %i.agc, align 1
  br label %pred.store.continue1841

pred.store.continue1841:                          ; preds = %pred.store.if1840, %pred.store.continue1839
  %index.next1842 = add nuw i32 %index1832, 4     ; 2 uses
  %vec.ind.next1843 = add nsw <4 x i32> %vec.ind1833, splat (i32 4)
  %i.agd = icmp eq i32 %index.next1842, %n.vec1825
  br i1 %i.agd, label %vec.epilog.middle.block1844, label %vec.epilog.vector.body1831, !llvm.loop !25

vec.epilog.middle.block1844:                      ; preds = %pred.store.continue1841
  br i1 %cmp.n1845, label %.loopexit.i.us33.i221, label %.lr.ph.i.us29.i226.preheader

.lr.ph.i.us29.i226.preheader:                     ; preds = %iter.check1819, %vec.epilog.iter.check1821, %vec.epilog.middle.block1844
  %.pre.i.us31.i229474.ph = phi i32 [ %.promoted514, %iter.check1819 ], [ %i.acw, %vec.epilog.iter.check1821 ], [ %i.afl, %vec.epilog.middle.block1844 ]
  %.030.i.us30.i227.ph = phi i32 [ 0, %iter.check1819 ], [ %n.vec1772, %vec.epilog.iter.check1821 ], [ %n.vec1825, %vec.epilog.middle.block1844 ]
  br label %.lr.ph.i.us29.i226

.lr.ph.i.us29.i226:                               ; preds = %.lr.ph.i.us29.i226.preheader, %bb.dk
  %.pre.i.us31.i229474 = phi i32 [ %i.agh, %bb.dk ], [ %.pre.i.us31.i229474.ph, %.lr.ph.i.us29.i226.preheader ] ; 3 uses
  %.030.i.us30.i227 = phi i32 [ %i.agi, %bb.dk ], [ %.030.i.us30.i227.ph, %.lr.ph.i.us29.i226.preheader ]
  %i.age = icmp slt i32 %.pre.i.us31.i229474, %1
  br i1 %i.age, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %.lr.ph.i.us29.i226
  %i.agf = sext i32 %.pre.i.us31.i229474 to i64
  %i.agg = getelementptr inbounds i8, ptr %0, i64 %i.agf
  store i8 32, ptr %i.agg, align 1
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %.lr.ph.i.us29.i226
  %i.agh = add nsw i32 %.pre.i.us31.i229474, 1    ; 2 uses
  %i.agi = add nuw nsw i32 %.030.i.us30.i227, 1   ; 2 uses
  %exitcond.not.i.us32.i228 = icmp eq i32 %i.agi, %2
  br i1 %exitcond.not.i.us32.i228, label %.loopexit.i.us33.i221, label %.lr.ph.i.us29.i226, !llvm.loop !26

.loopexit.i.us33.i221:                            ; preds = %bb.dk, %middle.block1815, %vec.epilog.middle.block1844, %bb.dh, %bb.di
  %.lcssa475478 = phi i32 [ %.promoted514, %bb.dh ], [ %.promoted514, %bb.di ], [ %i.afl, %vec.epilog.middle.block1844 ], [ %i.acw, %middle.block1815 ], [ %i.agh, %bb.dk ] ; 3 uses
  %i.agj = icmp slt i32 %.lcssa475478, %1
  br i1 %i.agj, label %bb.dl, label %_ZL10outputCharcPcPiii.exit.us35.i223

bb.dl:                                            ; preds = %.loopexit.i.us33.i221
  %i.agk = sext i32 %.lcssa475478 to i64
  %i.agl = getelementptr inbounds i8, ptr %0, i64 %i.agk
  store i8 42, ptr %i.agl, align 1
  br label %_ZL10outputCharcPcPiii.exit.us35.i223

_ZL10outputCharcPcPiii.exit.us35.i223:            ; preds = %bb.dl, %.loopexit.i.us33.i221
  %i.agm = add nsw i32 %.lcssa475478, 1           ; 12 uses
  %i.agn = icmp eq i32 %i.agm, 0
  br i1 %i.agn, label %iter.check1738, label %bb.dm

bb.dm:                                            ; preds = %_ZL10outputCharcPcPiii.exit.us35.i223
  %i.ago = icmp slt i32 %i.agm, %1
  br i1 %i.ago, label %bb.dn, label %.loopexit.i.us33.i221.1

bb.dn:                                            ; preds = %bb.dm
  %i.agp = sext i32 %i.agm to i64
  %i.agq = getelementptr i8, ptr %0, i64 %i.agp
  %i.agr = getelementptr i8, ptr %i.agq, i64 -1
  %i.ags = load i8, ptr %i.agr, align 1
  %i.agt = icmp eq i8 %i.ags, 10
  br i1 %i.agt, label %iter.check1738, label %.loopexit.i.us33.i221.1

iter.check1738:                                   ; preds = %bb.dn, %_ZL10outputCharcPcPiii.exit.us35.i223
  br i1 %min.iters.check1686, label %.lr.ph.i.us29.i226.1.preheader, label %vector.main.loop.iter.check1687

vector.main.loop.iter.check1687:                  ; preds = %iter.check1738
  br i1 %min.iters.check1688, label %vec.epilog.ph1742, label %vector.ph1689

vector.ph1689:                                    ; preds = %vector.main.loop.iter.check1687
  %i.agu = add i32 %i.agm, %n.vec1691             ; 3 uses
  %broadcast.splatinsert1694 = insertelement <16 x i32> poison, i32 %i.agm, i64 0
  %broadcast.splat1695 = shufflevector <16 x i32> %broadcast.splatinsert1694, <16 x i32> poison, <16 x i32> zeroinitializer
  %induction1696 = add nsw <16 x i32> %broadcast.splat1695, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  br label %vector.body1697

vector.body1697:                                  ; preds = %pred.store.continue1731, %vector.ph1689
  %index1698 = phi i32 [ 0, %vector.ph1689 ], [ %index.next1732, %pred.store.continue1731 ] ; 2 uses
  %vec.ind1699 = phi <16 x i32> [ %induction1696, %vector.ph1689 ], [ %vec.ind.next1733, %pred.store.continue1731 ] ; 2 uses
  %i.agv = add i32 %i.agm, %index1698             ; 16 uses
  %i.agw = icmp slt <16 x i32> %vec.ind1699, %broadcast.splat1693 ; 16 uses
  %i.agx = extractelement <16 x i1> %i.agw, i64 0
  br i1 %i.agx, label %pred.store.if1700, label %pred.store.continue1701

pred.store.if1700:                                ; preds = %vector.body1697
  %i.agy = sext i32 %i.agv to i64
  %i.agz = getelementptr inbounds i8, ptr %0, i64 %i.agy
  store i8 32, ptr %i.agz, align 1
  br label %pred.store.continue1701

pred.store.continue1701:                          ; preds = %pred.store.if1700, %vector.body1697
  %i.aha = extractelement <16 x i1> %i.agw, i64 1
  br i1 %i.aha, label %pred.store.if1702, label %pred.store.continue1703

pred.store.if1702:                                ; preds = %pred.store.continue1701
  %i.ahb = add i32 %i.agv, 1
  %i.ahc = sext i32 %i.ahb to i64
  %i.ahd = getelementptr inbounds i8, ptr %0, i64 %i.ahc
  store i8 32, ptr %i.ahd, align 1
  br label %pred.store.continue1703

pred.store.continue1703:                          ; preds = %pred.store.if1702, %pred.store.continue1701
  %i.ahe = extractelement <16 x i1> %i.agw, i64 2
  br i1 %i.ahe, label %pred.store.if1704, label %pred.store.continue1705

pred.store.if1704:                                ; preds = %pred.store.continue1703
  %i.ahf = add i32 %i.agv, 2
  %i.ahg = sext i32 %i.ahf to i64
  %i.ahh = getelementptr inbounds i8, ptr %0, i64 %i.ahg
  store i8 32, ptr %i.ahh, align 1
  br label %pred.store.continue1705

pred.store.continue1705:                          ; preds = %pred.store.if1704, %pred.store.continue1703
  %i.ahi = extractelement <16 x i1> %i.agw, i64 3
  br i1 %i.ahi, label %pred.store.if1706, label %pred.store.continue1707

pred.store.if1706:                                ; preds = %pred.store.continue1705
  %i.ahj = add i32 %i.agv, 3
  %i.ahk = sext i32 %i.ahj to i64
  %i.ahl = getelementptr inbounds i8, ptr %0, i64 %i.ahk
  store i8 32, ptr %i.ahl, align 1
  br label %pred.store.continue1707

pred.store.continue1707:                          ; preds = %pred.store.if1706, %pred.store.continue1705
  %i.ahm = extractelement <16 x i1> %i.agw, i64 4
  br i1 %i.ahm, label %pred.store.if1708, label %pred.store.continue1709

pred.store.if1708:                                ; preds = %pred.store.continue1707
  %i.ahn = add i32 %i.agv, 4
  %i.aho = sext i32 %i.ahn to i64
  %i.ahp = getelementptr inbounds i8, ptr %0, i64 %i.aho
  store i8 32, ptr %i.ahp, align 1
  br label %pred.store.continue1709

pred.store.continue1709:                          ; preds = %pred.store.if1708, %pred.store.continue1707
  %i.ahq = extractelement <16 x i1> %i.agw, i64 5
  br i1 %i.ahq, label %pred.store.if1710, label %pred.store.continue1711

pred.store.if1710:                                ; preds = %pred.store.continue1709
  %i.ahr = add i32 %i.agv, 5
  %i.ahs = sext i32 %i.ahr to i64
  %i.aht = getelementptr inbounds i8, ptr %0, i64 %i.ahs
  store i8 32, ptr %i.aht, align 1
  br label %pred.store.continue1711

pred.store.continue1711:                          ; preds = %pred.store.if1710, %pred.store.continue1709
  %i.ahu = extractelement <16 x i1> %i.agw, i64 6
  br i1 %i.ahu, label %pred.store.if1712, label %pred.store.continue1713

pred.store.if1712:                                ; preds = %pred.store.continue1711
  %i.ahv = add i32 %i.agv, 6
  %i.ahw = sext i32 %i.ahv to i64
  %i.ahx = getelementptr inbounds i8, ptr %0, i64 %i.ahw
  store i8 32, ptr %i.ahx, align 1
  br label %pred.store.continue1713

pred.store.continue1713:                          ; preds = %pred.store.if1712, %pred.store.continue1711
  %i.ahy = extractelement <16 x i1> %i.agw, i64 7
  br i1 %i.ahy, label %pred.store.if1714, label %pred.store.continue1715

pred.store.if1714:                                ; preds = %pred.store.continue1713
  %i.ahz = add i32 %i.agv, 7
  %i.aia = sext i32 %i.ahz to i64
  %i.aib = getelementptr inbounds i8, ptr %0, i64 %i.aia
  store i8 32, ptr %i.aib, align 1
  br label %pred.store.continue1715

pred.store.continue1715:                          ; preds = %pred.store.if1714, %pred.store.continue1713
  %i.aic = extractelement <16 x i1> %i.agw, i64 8
  br i1 %i.aic, label %pred.store.if1716, label %pred.store.continue1717

pred.store.if1716:                                ; preds = %pred.store.continue1715
  %i.aid = add i32 %i.agv, 8
  %i.aie = sext i32 %i.aid to i64
  %i.aif = getelementptr inbounds i8, ptr %0, i64 %i.aie
  store i8 32, ptr %i.aif, align 1
  br label %pred.store.continue1717

pred.store.continue1717:                          ; preds = %pred.store.if1716, %pred.store.continue1715
  %i.aig = extractelement <16 x i1> %i.agw, i64 9
  br i1 %i.aig, label %pred.store.if1718, label %pred.store.continue1719

pred.store.if1718:                                ; preds = %pred.store.continue1717
  %i.aih = add i32 %i.agv, 9
  %i.aii = sext i32 %i.aih to i64
  %i.aij = getelementptr inbounds i8, ptr %0, i64 %i.aii
  store i8 32, ptr %i.aij, align 1
  br label %pred.store.continue1719

pred.store.continue1719:                          ; preds = %pred.store.if1718, %pred.store.continue1717
  %i.aik = extractelement <16 x i1> %i.agw, i64 10
  br i1 %i.aik, label %pred.store.if1720, label %pred.store.continue1721

pred.store.if1720:                                ; preds = %pred.store.continue1719
  %i.ail = add i32 %i.agv, 10
  %i.aim = sext i32 %i.ail to i64
  %i.ain = getelementptr inbounds i8, ptr %0, i64 %i.aim
  store i8 32, ptr %i.ain, align 1
  br label %pred.store.continue1721

pred.store.continue1721:                          ; preds = %pred.store.if1720, %pred.store.continue1719
  %i.aio = extractelement <16 x i1> %i.agw, i64 11
  br i1 %i.aio, label %pred.store.if1722, label %pred.store.continue1723

pred.store.if1722:                                ; preds = %pred.store.continue1721
  %i.aip = add i32 %i.agv, 11
  %i.aiq = sext i32 %i.aip to i64
  %i.air = getelementptr inbounds i8, ptr %0, i64 %i.aiq
  store i8 32, ptr %i.air, align 1
  br label %pred.store.continue1723

pred.store.continue1723:                          ; preds = %pred.store.if1722, %pred.store.continue1721
  %i.ais = extractelement <16 x i1> %i.agw, i64 12
  br i1 %i.ais, label %pred.store.if1724, label %pred.store.continue1725

pred.store.if1724:                                ; preds = %pred.store.continue1723
  %i.ait = add i32 %i.agv, 12
  %i.aiu = sext i32 %i.ait to i64
  %i.aiv = getelementptr inbounds i8, ptr %0, i64 %i.aiu
  store i8 32, ptr %i.aiv, align 1
  br label %pred.store.continue1725

pred.store.continue1725:                          ; preds = %pred.store.if1724, %pred.store.continue1723
  %i.aiw = extractelement <16 x i1> %i.agw, i64 13
  br i1 %i.aiw, label %pred.store.if1726, label %pred.store.continue1727

pred.store.if1726:                                ; preds = %pred.store.continue1725
  %i.aix = add i32 %i.agv, 13
  %i.aiy = sext i32 %i.aix to i64
  %i.aiz = getelementptr inbounds i8, ptr %0, i64 %i.aiy
  store i8 32, ptr %i.aiz, align 1
  br label %pred.store.continue1727

pred.store.continue1727:                          ; preds = %pred.store.if1726, %pred.store.continue1725
  %i.aja = extractelement <16 x i1> %i.agw, i64 14
  br i1 %i.aja, label %pred.store.if1728, label %pred.store.continue1729

pred.store.if1728:                                ; preds = %pred.store.continue1727
  %i.ajb = add i32 %i.agv, 14
  %i.ajc = sext i32 %i.ajb to i64
  %i.ajd = getelementptr inbounds i8, ptr %0, i64 %i.ajc
  store i8 32, ptr %i.ajd, align 1
  br label %pred.store.continue1729

pred.store.continue1729:                          ; preds = %pred.store.if1728, %pred.store.continue1727
  %i.aje = extractelement <16 x i1> %i.agw, i64 15
  br i1 %i.aje, label %pred.store.if1730, label %pred.store.continue1731

pred.store.if1730:                                ; preds = %pred.store.continue1729
  %i.ajf = add i32 %i.agv, 15
  %i.ajg = sext i32 %i.ajf to i64
  %i.ajh = getelementptr inbounds i8, ptr %0, i64 %i.ajg
  store i8 32, ptr %i.ajh, align 1
  br label %pred.store.continue1731

pred.store.continue1731:                          ; preds = %pred.store.if1730, %pred.store.continue1729
  %index.next1732 = add nuw i32 %index1698, 16    ; 2 uses
  %vec.ind.next1733 = add nsw <16 x i32> %vec.ind1699, splat (i32 16)
  %i.aji = icmp eq i32 %index.next1732, %n.vec1691
  br i1 %i.aji, label %middle.block1734, label %vector.body1697, !llvm.loop !27

middle.block1734:                                 ; preds = %pred.store.continue1731
  br i1 %cmp.n1735, label %.loopexit.i.us33.i221.1, label %vec.epilog.iter.check1740

vec.epilog.iter.check1740:                        ; preds = %middle.block1734
  br i1 %min.epilog.iters.check1741, label %.lr.ph.i.us29.i226.1.preheader, label %vec.epilog.ph1742, !prof !14

vec.epilog.ph1742:                                ; preds = %vector.main.loop.iter.check1687, %vec.epilog.iter.check1740
  %vec.epilog.resume.val1736 = phi i32 [ %n.vec1691, %vec.epilog.iter.check1740 ], [ 0, %vector.main.loop.iter.check1687 ]
  %bc.resume.val1737 = phi i32 [ %i.agu, %vec.epilog.iter.check1740 ], [ %i.agm, %vector.main.loop.iter.check1687 ]
  %i.ajj = add i32 %i.agm, %n.vec1744             ; 2 uses
  %broadcast.splatinsert1747 = insertelement <4 x i32> poison, i32 %bc.resume.val1737, i64 0
  %broadcast.splat1748 = shufflevector <4 x i32> %broadcast.splatinsert1747, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction1749 = add nsw <4 x i32> %broadcast.splat1748, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body1750

vec.epilog.vector.body1750:                       ; preds = %pred.store.continue1760, %vec.epilog.ph1742
  %index1751 = phi i32 [ %vec.epilog.resume.val1736, %vec.epilog.ph1742 ], [ %index.next1761, %pred.store.continue1760 ] ; 2 uses
  %vec.ind1752 = phi <4 x i32> [ %induction1749, %vec.epilog.ph1742 ], [ %vec.ind.next1762, %pred.store.continue1760 ] ; 2 uses
  %i.ajk = add i32 %i.agm, %index1751             ; 4 uses
  %i.ajl = icmp slt <4 x i32> %vec.ind1752, %broadcast.splat1746 ; 4 uses
  %i.ajm = extractelement <4 x i1> %i.ajl, i64 0
  br i1 %i.ajm, label %pred.store.if1753, label %pred.store.continue1754

pred.store.if1753:                                ; preds = %vec.epilog.vector.body1750
  %i.ajn = sext i32 %i.ajk to i64
  %i.ajo = getelementptr inbounds i8, ptr %0, i64 %i.ajn
  store i8 32, ptr %i.ajo, align 1
  br label %pred.store.continue1754

pred.store.continue1754:                          ; preds = %pred.store.if1753, %vec.epilog.vector.body1750
  %i.ajp = extractelement <4 x i1> %i.ajl, i64 1
  br i1 %i.ajp, label %pred.store.if1755, label %pred.store.continue1756

pred.store.if1755:                                ; preds = %pred.store.continue1754
  %i.ajq = add i32 %i.ajk, 1
  %i.ajr = sext i32 %i.ajq to i64
  %i.ajs = getelementptr inbounds i8, ptr %0, i64 %i.ajr
  store i8 32, ptr %i.ajs, align 1
  br label %pred.store.continue1756

pred.store.continue1756:                          ; preds = %pred.store.if1755, %pred.store.continue1754
  %i.ajt = extractelement <4 x i1> %i.ajl, i64 2
  br i1 %i.ajt, label %pred.store.if1757, label %pred.store.continue1758

pred.store.if1757:                                ; preds = %pred.store.continue1756
  %i.aju = add i32 %i.ajk, 2
  %i.ajv = sext i32 %i.aju to i64
  %i.ajw = getelementptr inbounds i8, ptr %0, i64 %i.ajv
  store i8 32, ptr %i.ajw, align 1
  br label %pred.store.continue1758

pred.store.continue1758:                          ; preds = %pred.store.if1757, %pred.store.continue1756
  %i.ajx = extractelement <4 x i1> %i.ajl, i64 3
  br i1 %i.ajx, label %pred.store.if1759, label %pred.store.continue1760

pred.store.if1759:                                ; preds = %pred.store.continue1758
  %i.ajy = add i32 %i.ajk, 3
  %i.ajz = sext i32 %i.ajy to i64
  %i.aka = getelementptr inbounds i8, ptr %0, i64 %i.ajz
  store i8 32, ptr %i.aka, align 1
  br label %pred.store.continue1760

pred.store.continue1760:                          ; preds = %pred.store.if1759, %pred.store.continue1758
  %index.next1761 = add nuw i32 %index1751, 4     ; 2 uses
  %vec.ind.next1762 = add nsw <4 x i32> %vec.ind1752, splat (i32 4)
  %i.akb = icmp eq i32 %index.next1761, %n.vec1744
  br i1 %i.akb, label %vec.epilog.middle.block1763, label %vec.epilog.vector.body1750, !llvm.loop !28

vec.epilog.middle.block1763:                      ; preds = %pred.store.continue1760
  br i1 %cmp.n1764, label %.loopexit.i.us33.i221.1, label %.lr.ph.i.us29.i226.1.preheader

.lr.ph.i.us29.i226.1.preheader:                   ; preds = %iter.check1738, %vec.epilog.iter.check1740, %vec.epilog.middle.block1763
  %.pre.i.us31.i229474.1.ph = phi i32 [ %i.agm, %iter.check1738 ], [ %i.agu, %vec.epilog.iter.check1740 ], [ %i.ajj, %vec.epilog.middle.block1763 ]
  %.030.i.us30.i227.1.ph = phi i32 [ 0, %iter.check1738 ], [ %n.vec1691, %vec.epilog.iter.check1740 ], [ %n.vec1744, %vec.epilog.middle.block1763 ]
  br label %.lr.ph.i.us29.i226.1

.lr.ph.i.us29.i226.1:                             ; preds = %.lr.ph.i.us29.i226.1.preheader, %bb.dp
  %.pre.i.us31.i229474.1 = phi i32 [ %i.akf, %bb.dp ], [ %.pre.i.us31.i229474.1.ph, %.lr.ph.i.us29.i226.1.preheader ] ; 3 uses
  %.030.i.us30.i227.1 = phi i32 [ %i.akg, %bb.dp ], [ %.030.i.us30.i227.1.ph, %.lr.ph.i.us29.i226.1.preheader ]
  %i.akc = icmp slt i32 %.pre.i.us31.i229474.1, %1
  br i1 %i.akc, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %.lr.ph.i.us29.i226.1
  %i.akd = sext i32 %.pre.i.us31.i229474.1 to i64
  %i.ake = getelementptr inbounds i8, ptr %0, i64 %i.akd
  store i8 32, ptr %i.ake, align 1
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %.lr.ph.i.us29.i226.1
  %i.akf = add nsw i32 %.pre.i.us31.i229474.1, 1  ; 2 uses
  %i.akg = add nuw nsw i32 %.030.i.us30.i227.1, 1 ; 2 uses
  %exitcond.not.i.us32.i228.1 = icmp eq i32 %i.akg, %2
  br i1 %exitcond.not.i.us32.i228.1, label %.loopexit.i.us33.i221.1, label %.lr.ph.i.us29.i226.1, !llvm.loop !29

.loopexit.i.us33.i221.1:                          ; preds = %bb.dp, %middle.block1734, %vec.epilog.middle.block1763, %bb.dn, %bb.dm
  %.lcssa475478.1 = phi i32 [ %i.agm, %bb.dm ], [ %i.agm, %bb.dn ], [ %i.ajj, %vec.epilog.middle.block1763 ], [ %i.agu, %middle.block1734 ], [ %i.akf, %bb.dp ] ; 3 uses
  %i.akh = icmp slt i32 %.lcssa475478.1, %1
  br i1 %i.akh, label %bb.dq, label %_ZL10outputCharcPcPiii.exit.us35.i223.1

bb.dq:                                            ; preds = %.loopexit.i.us33.i221.1
  %i.aki = sext i32 %.lcssa475478.1 to i64
  %i.akj = getelementptr inbounds i8, ptr %0, i64 %i.aki
  store i8 78, ptr %i.akj, align 1
  br label %_ZL10outputCharcPcPiii.exit.us35.i223.1

_ZL10outputCharcPcPiii.exit.us35.i223.1:          ; preds = %bb.dq, %.loopexit.i.us33.i221.1
  %i.akk = add nsw i32 %.lcssa475478.1, 1         ; 12 uses
  %i.akl = icmp eq i32 %i.akk, 0
  br i1 %i.akl, label %iter.check1657, label %bb.dr

bb.dr:                                            ; preds = %_ZL10outputCharcPcPiii.exit.us35.i223.1
  %i.akm = icmp slt i32 %i.akk, %1
  br i1 %i.akm, label %bb.ds, label %.loopexit.i.us33.i221.2

bb.ds:                                            ; preds = %bb.dr
  %i.akn = sext i32 %i.akk to i64
  %i.ako = getelementptr i8, ptr %0, i64 %i.akn
  %i.akp = getelementptr i8, ptr %i.ako, i64 -1
  %i.akq = load i8, ptr %i.akp, align 1
  %i.akr = icmp eq i8 %i.akq, 10
  br i1 %i.akr, label %iter.check1657, label %.loopexit.i.us33.i221.2

iter.check1657:                                   ; preds = %bb.ds, %_ZL10outputCharcPcPiii.exit.us35.i223.1
  br i1 %min.iters.check1605, label %.lr.ph.i.us29.i226.2.preheader, label %vector.main.loop.iter.check1606

vector.main.loop.iter.check1606:                  ; preds = %iter.check1657
  br i1 %min.iters.check1607, label %vec.epilog.ph1661, label %vector.ph1608

vector.ph1608:                                    ; preds = %vector.main.loop.iter.check1606
  %i.aks = add i32 %i.akk, %n.vec1610             ; 3 uses
  %broadcast.splatinsert1613 = insertelement <16 x i32> poison, i32 %i.akk, i64 0
  %broadcast.splat1614 = shufflevector <16 x i32> %broadcast.splatinsert1613, <16 x i32> poison, <16 x i32> zeroinitializer
  %induction1615 = add nsw <16 x i32> %broadcast.splat1614, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  br label %vector.body1616

vector.body1616:                                  ; preds = %pred.store.continue1650, %vector.ph1608
  %index1617 = phi i32 [ 0, %vector.ph1608 ], [ %index.next1651, %pred.store.continue1650 ] ; 2 uses
  %vec.ind1618 = phi <16 x i32> [ %induction1615, %vector.ph1608 ], [ %vec.ind.next1652, %pred.store.continue1650 ] ; 2 uses
  %i.akt = add i32 %i.akk, %index1617             ; 16 uses
  %i.aku = icmp slt <16 x i32> %vec.ind1618, %broadcast.splat1612 ; 16 uses
  %i.akv = extractelement <16 x i1> %i.aku, i64 0
  br i1 %i.akv, label %pred.store.if1619, label %pred.store.continue1620

pred.store.if1619:                                ; preds = %vector.body1616
  %i.akw = sext i32 %i.akt to i64
  %i.akx = getelementptr inbounds i8, ptr %0, i64 %i.akw
  store i8 32, ptr %i.akx, align 1
  br label %pred.store.continue1620

pred.store.continue1620:                          ; preds = %pred.store.if1619, %vector.body1616
  %i.aky = extractelement <16 x i1> %i.aku, i64 1
  br i1 %i.aky, label %pred.store.if1621, label %pred.store.continue1622

pred.store.if1621:                                ; preds = %pred.store.continue1620
  %i.akz = add i32 %i.akt, 1
  %i.ala = sext i32 %i.akz to i64
  %i.alb = getelementptr inbounds i8, ptr %0, i64 %i.ala
  store i8 32, ptr %i.alb, align 1
  br label %pred.store.continue1622

pred.store.continue1622:                          ; preds = %pred.store.if1621, %pred.store.continue1620
  %i.alc = extractelement <16 x i1> %i.aku, i64 2
  br i1 %i.alc, label %pred.store.if1623, label %pred.store.continue1624

pred.store.if1623:                                ; preds = %pred.store.continue1622
  %i.ald = add i32 %i.akt, 2
  %i.ale = sext i32 %i.ald to i64
  %i.alf = getelementptr inbounds i8, ptr %0, i64 %i.ale
  store i8 32, ptr %i.alf, align 1
  br label %pred.store.continue1624

pred.store.continue1624:                          ; preds = %pred.store.if1623, %pred.store.continue1622
  %i.alg = extractelement <16 x i1> %i.aku, i64 3
  br i1 %i.alg, label %pred.store.if1625, label %pred.store.continue1626

pred.store.if1625:                                ; preds = %pred.store.continue1624
  %i.alh = add i32 %i.akt, 3
  %i.ali = sext i32 %i.alh to i64
  %i.alj = getelementptr inbounds i8, ptr %0, i64 %i.ali
  store i8 32, ptr %i.alj, align 1
  br label %pred.store.continue1626

pred.store.continue1626:                          ; preds = %pred.store.if1625, %pred.store.continue1624
  %i.alk = extractelement <16 x i1> %i.aku, i64 4
  br i1 %i.alk, label %pred.store.if1627, label %pred.store.continue1628

pred.store.if1627:                                ; preds = %pred.store.continue1626
  %i.all = add i32 %i.akt, 4
  %i.alm = sext i32 %i.all to i64
  %i.aln = getelementptr inbounds i8, ptr %0, i64 %i.alm
  store i8 32, ptr %i.aln, align 1
  br label %pred.store.continue1628

pred.store.continue1628:                          ; preds = %pred.store.if1627, %pred.store.continue1626
  %i.alo = extractelement <16 x i1> %i.aku, i64 5
  br i1 %i.alo, label %pred.store.if1629, label %pred.store.continue1630

pred.store.if1629:                                ; preds = %pred.store.continue1628
  %i.alp = add i32 %i.akt, 5
  %i.alq = sext i32 %i.alp to i64
  %i.alr = getelementptr inbounds i8, ptr %0, i64 %i.alq
  store i8 32, ptr %i.alr, align 1
  br label %pred.store.continue1630

pred.store.continue1630:                          ; preds = %pred.store.if1629, %pred.store.continue1628
  %i.als = extractelement <16 x i1> %i.aku, i64 6
  br i1 %i.als, label %pred.store.if1631, label %pred.store.continue1632

pred.store.if1631:                                ; preds = %pred.store.continue1630
  %i.alt = add i32 %i.akt, 6
  %i.alu = sext i32 %i.alt to i64
  %i.alv = getelementptr inbounds i8, ptr %0, i64 %i.alu
  store i8 32, ptr %i.alv, align 1
  br label %pred.store.continue1632

pred.store.continue1632:                          ; preds = %pred.store.if1631, %pred.store.continue1630
  %i.alw = extractelement <16 x i1> %i.aku, i64 7
  br i1 %i.alw, label %pred.store.if1633, label %pred.store.continue1634

pred.store.if1633:                                ; preds = %pred.store.continue1632
  %i.alx = add i32 %i.akt, 7
  %i.aly = sext i32 %i.alx to i64
  %i.alz = getelementptr inbounds i8, ptr %0, i64 %i.aly
  store i8 32, ptr %i.alz, align 1
  br label %pred.store.continue1634

pred.store.continue1634:                          ; preds = %pred.store.if1633, %pred.store.continue1632
  %i.ama = extractelement <16 x i1> %i.aku, i64 8
  br i1 %i.ama, label %pred.store.if1635, label %pred.store.continue1636

pred.store.if1635:                                ; preds = %pred.store.continue1634
  %i.amb = add i32 %i.akt, 8
  %i.amc = sext i32 %i.amb to i64
  %i.amd = getelementptr inbounds i8, ptr %0, i64 %i.amc
  store i8 32, ptr %i.amd, align 1
  br label %pred.store.continue1636

pred.store.continue1636:                          ; preds = %pred.store.if1635, %pred.store.continue1634
  %i.ame = extractelement <16 x i1> %i.aku, i64 9
  br i1 %i.ame, label %pred.store.if1637, label %pred.store.continue1638

pred.store.if1637:                                ; preds = %pred.store.continue1636
  %i.amf = add i32 %i.akt, 9
  %i.amg = sext i32 %i.amf to i64
  %i.amh = getelementptr inbounds i8, ptr %0, i64 %i.amg
  store i8 32, ptr %i.amh, align 1
  br label %pred.store.continue1638

pred.store.continue1638:                          ; preds = %pred.store.if1637, %pred.store.continue1636
  %i.ami = extractelement <16 x i1> %i.aku, i64 10
  br i1 %i.ami, label %pred.store.if1639, label %pred.store.continue1640

pred.store.if1639:                                ; preds = %pred.store.continue1638
  %i.amj = add i32 %i.akt, 10
  %i.amk = sext i32 %i.amj to i64
  %i.aml = getelementptr inbounds i8, ptr %0, i64 %i.amk
  store i8 32, ptr %i.aml, align 1
  br label %pred.store.continue1640

pred.store.continue1640:                          ; preds = %pred.store.if1639, %pred.store.continue1638
  %i.amm = extractelement <16 x i1> %i.aku, i64 11
  br i1 %i.amm, label %pred.store.if1641, label %pred.store.continue1642

pred.store.if1641:                                ; preds = %pred.store.continue1640
  %i.amn = add i32 %i.akt, 11
  %i.amo = sext i32 %i.amn to i64
  %i.amp = getelementptr inbounds i8, ptr %0, i64 %i.amo
  store i8 32, ptr %i.amp, align 1
  br label %pred.store.continue1642

pred.store.continue1642:                          ; preds = %pred.store.if1641, %pred.store.continue1640
  %i.amq = extractelement <16 x i1> %i.aku, i64 12
  br i1 %i.amq, label %pred.store.if1643, label %pred.store.continue1644

pred.store.if1643:                                ; preds = %pred.store.continue1642
  %i.amr = add i32 %i.akt, 12
  %i.ams = sext i32 %i.amr to i64
  %i.amt = getelementptr inbounds i8, ptr %0, i64 %i.ams
  store i8 32, ptr %i.amt, align 1
  br label %pred.store.continue1644

pred.store.continue1644:                          ; preds = %pred.store.if1643, %pred.store.continue1642
  %i.amu = extractelement <16 x i1> %i.aku, i64 13
  br i1 %i.amu, label %pred.store.if1645, label %pred.store.continue1646

pred.store.if1645:                                ; preds = %pred.store.continue1644
  %i.amv = add i32 %i.akt, 13
  %i.amw = sext i32 %i.amv to i64
  %i.amx = getelementptr inbounds i8, ptr %0, i64 %i.amw
  store i8 32, ptr %i.amx, align 1
  br label %pred.store.continue1646

pred.store.continue1646:                          ; preds = %pred.store.if1645, %pred.store.continue1644
  %i.amy = extractelement <16 x i1> %i.aku, i64 14
  br i1 %i.amy, label %pred.store.if1647, label %pred.store.continue1648

pred.store.if1647:                                ; preds = %pred.store.continue1646
  %i.amz = add i32 %i.akt, 14
  %i.ana = sext i32 %i.amz to i64
  %i.anb = getelementptr inbounds i8, ptr %0, i64 %i.ana
  store i8 32, ptr %i.anb, align 1
  br label %pred.store.continue1648

pred.store.continue1648:                          ; preds = %pred.store.if1647, %pred.store.continue1646
  %i.anc = extractelement <16 x i1> %i.aku, i64 15
  br i1 %i.anc, label %pred.store.if1649, label %pred.store.continue1650

pred.store.if1649:                                ; preds = %pred.store.continue1648
  %i.and = add i32 %i.akt, 15
  %i.ane = sext i32 %i.and to i64
  %i.anf = getelementptr inbounds i8, ptr %0, i64 %i.ane
  store i8 32, ptr %i.anf, align 1
  br label %pred.store.continue1650

pred.store.continue1650:                          ; preds = %pred.store.if1649, %pred.store.continue1648
  %index.next1651 = add nuw i32 %index1617, 16    ; 2 uses
  %vec.ind.next1652 = add nsw <16 x i32> %vec.ind1618, splat (i32 16)
  %i.ang = icmp eq i32 %index.next1651, %n.vec1610
  br i1 %i.ang, label %middle.block1653, label %vector.body1616, !llvm.loop !30

middle.block1653:                                 ; preds = %pred.store.continue1650
  br i1 %cmp.n1654, label %.loopexit.i.us33.i221.2, label %vec.epilog.iter.check1659

vec.epilog.iter.check1659:                        ; preds = %middle.block1653
  br i1 %min.epilog.iters.check1660, label %.lr.ph.i.us29.i226.2.preheader, label %vec.epilog.ph1661, !prof !14

vec.epilog.ph1661:                                ; preds = %vector.main.loop.iter.check1606, %vec.epilog.iter.check1659
  %vec.epilog.resume.val1655 = phi i32 [ %n.vec1610, %vec.epilog.iter.check1659 ], [ 0, %vector.main.loop.iter.check1606 ]
  %bc.resume.val1656 = phi i32 [ %i.aks, %vec.epilog.iter.check1659 ], [ %i.akk, %vector.main.loop.iter.check1606 ]
  %i.anh = add i32 %i.akk, %n.vec1663             ; 2 uses
  %broadcast.splatinsert1666 = insertelement <4 x i32> poison, i32 %bc.resume.val1656, i64 0
  %broadcast.splat1667 = shufflevector <4 x i32> %broadcast.splatinsert1666, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction1668 = add nsw <4 x i32> %broadcast.splat1667, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body1669

vec.epilog.vector.body1669:                       ; preds = %pred.store.continue1679, %vec.epilog.ph1661
  %index1670 = phi i32 [ %vec.epilog.resume.val1655, %vec.epilog.ph1661 ], [ %index.next1680, %pred.store.continue1679 ] ; 2 uses
  %vec.ind1671 = phi <4 x i32> [ %induction1668, %vec.epilog.ph1661 ], [ %vec.ind.next1681, %pred.store.continue1679 ] ; 2 uses
  %i.ani = add i32 %i.akk, %index1670             ; 4 uses
  %i.anj = icmp slt <4 x i32> %vec.ind1671, %broadcast.splat1665 ; 4 uses
  %i.ank = extractelement <4 x i1> %i.anj, i64 0
  br i1 %i.ank, label %pred.store.if1672, label %pred.store.continue1673

pred.store.if1672:                                ; preds = %vec.epilog.vector.body1669
  %i.anl = sext i32 %i.ani to i64
  %i.anm = getelementptr inbounds i8, ptr %0, i64 %i.anl
  store i8 32, ptr %i.anm, align 1
  br label %pred.store.continue1673

pred.store.continue1673:                          ; preds = %pred.store.if1672, %vec.epilog.vector.body1669
  %i.ann = extractelement <4 x i1> %i.anj, i64 1
  br i1 %i.ann, label %pred.store.if1674, label %pred.store.continue1675

pred.store.if1674:                                ; preds = %pred.store.continue1673
  %i.ano = add i32 %i.ani, 1
  %i.anp = sext i32 %i.ano to i64
  %i.anq = getelementptr inbounds i8, ptr %0, i64 %i.anp
  store i8 32, ptr %i.anq, align 1
  br label %pred.store.continue1675

pred.store.continue1675:                          ; preds = %pred.store.if1674, %pred.store.continue1673
  %i.anr = extractelement <4 x i1> %i.anj, i64 2
  br i1 %i.anr, label %pred.store.if1676, label %pred.store.continue1677

pred.store.if1676:                                ; preds = %pred.store.continue1675
  %i.ans = add i32 %i.ani, 2
  %i.ant = sext i32 %i.ans to i64
  %i.anu = getelementptr inbounds i8, ptr %0, i64 %i.ant
  store i8 32, ptr %i.anu, align 1
  br label %pred.store.continue1677

pred.store.continue1677:                          ; preds = %pred.store.if1676, %pred.store.continue1675
  %i.anv = extractelement <4 x i1> %i.anj, i64 3
  br i1 %i.anv, label %pred.store.if1678, label %pred.store.continue1679

pred.store.if1678:                                ; preds = %pred.store.continue1677
  %i.anw = add i32 %i.ani, 3
  %i.anx = sext i32 %i.anw to i64
  %i.any = getelementptr inbounds i8, ptr %0, i64 %i.anx
  store i8 32, ptr %i.any, align 1
  br label %pred.store.continue1679

pred.store.continue1679:                          ; preds = %pred.store.if1678, %pred.store.continue1677
  %index.next1680 = add nuw i32 %index1670, 4     ; 2 uses
  %vec.ind.next1681 = add nsw <4 x i32> %vec.ind1671, splat (i32 4)
  %i.anz = icmp eq i32 %index.next1680, %n.vec1663
  br i1 %i.anz, label %vec.epilog.middle.block1682, label %vec.epilog.vector.body1669, !llvm.loop !31

vec.epilog.middle.block1682:                      ; preds = %pred.store.continue1679
  br i1 %cmp.n1683, label %.loopexit.i.us33.i221.2, label %.lr.ph.i.us29.i226.2.preheader

.lr.ph.i.us29.i226.2.preheader:                   ; preds = %iter.check1657, %vec.epilog.iter.check1659, %vec.epilog.middle.block1682
  %.pre.i.us31.i229474.2.ph = phi i32 [ %i.akk, %iter.check1657 ], [ %i.aks, %vec.epilog.iter.check1659 ], [ %i.anh, %vec.epilog.middle.block1682 ]
  %.030.i.us30.i227.2.ph = phi i32 [ 0, %iter.check1657 ], [ %n.vec1610, %vec.epilog.iter.check1659 ], [ %n.vec1663, %vec.epilog.middle.block1682 ]
  br label %.lr.ph.i.us29.i226.2

.lr.ph.i.us29.i226.2:                             ; preds = %.lr.ph.i.us29.i226.2.preheader, %bb.du
  %.pre.i.us31.i229474.2 = phi i32 [ %i.aod, %bb.du ], [ %.pre.i.us31.i229474.2.ph, %.lr.ph.i.us29.i226.2.preheader ] ; 3 uses
  %.030.i.us30.i227.2 = phi i32 [ %i.aoe, %bb.du ], [ %.030.i.us30.i227.2.ph, %.lr.ph.i.us29.i226.2.preheader ]
  %i.aoa = icmp slt i32 %.pre.i.us31.i229474.2, %1
  br i1 %i.aoa, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %.lr.ph.i.us29.i226.2
  %i.aob = sext i32 %.pre.i.us31.i229474.2 to i64
  %i.aoc = getelementptr inbounds i8, ptr %0, i64 %i.aob
  store i8 32, ptr %i.aoc, align 1
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %.lr.ph.i.us29.i226.2
  %i.aod = add nsw i32 %.pre.i.us31.i229474.2, 1  ; 2 uses
  %i.aoe = add nuw nsw i32 %.030.i.us30.i227.2, 1 ; 2 uses
  %exitcond.not.i.us32.i228.2 = icmp eq i32 %i.aoe, %2
  br i1 %exitcond.not.i.us32.i228.2, label %.loopexit.i.us33.i221.2, label %.lr.ph.i.us29.i226.2, !llvm.loop !32

.loopexit.i.us33.i221.2:                          ; preds = %bb.du, %middle.block1653, %vec.epilog.middle.block1682, %bb.ds, %bb.dr
  %.lcssa475478.2 = phi i32 [ %i.akk, %bb.dr ], [ %i.akk, %bb.ds ], [ %i.anh, %vec.epilog.middle.block1682 ], [ %i.aks, %middle.block1653 ], [ %i.aod, %bb.du ] ; 3 uses
  %i.aof = icmp slt i32 %.lcssa475478.2, %1
  br i1 %i.aof, label %bb.dv, label %_ZL10outputCharcPcPiii.exit.us35.i223.2

bb.dv:                                            ; preds = %.loopexit.i.us33.i221.2
  %i.aog = sext i32 %.lcssa475478.2 to i64
  %i.aoh = getelementptr inbounds i8, ptr %0, i64 %i.aog
  store i8 85, ptr %i.aoh, align 1
  br label %_ZL10outputCharcPcPiii.exit.us35.i223.2

_ZL10outputCharcPcPiii.exit.us35.i223.2:          ; preds = %bb.dv, %.loopexit.i.us33.i221.2
  %i.aoi = add nsw i32 %.lcssa475478.2, 1         ; 12 uses
  %i.aoj = icmp eq i32 %i.aoi, 0
  br i1 %i.aoj, label %iter.check1576, label %bb.dw

bb.dw:                                            ; preds = %_ZL10outputCharcPcPiii.exit.us35.i223.2
  %i.aok = icmp slt i32 %i.aoi, %1
  br i1 %i.aok, label %bb.dx, label %.loopexit.i.us33.i221.3

bb.dx:                                            ; preds = %bb.dw
  %i.aol = sext i32 %i.aoi to i64
  %i.aom = getelementptr i8, ptr %0, i64 %i.aol
  %i.aon = getelementptr i8, ptr %i.aom, i64 -1
  %i.aoo = load i8, ptr %i.aon, align 1
  %i.aop = icmp eq i8 %i.aoo, 10
  br i1 %i.aop, label %iter.check1576, label %.loopexit.i.us33.i221.3

iter.check1576:                                   ; preds = %bb.dx, %_ZL10outputCharcPcPiii.exit.us35.i223.2
  br i1 %min.iters.check1524, label %.lr.ph.i.us29.i226.3.preheader, label %vector.main.loop.iter.check1525

vector.main.loop.iter.check1525:                  ; preds = %iter.check1576
  br i1 %min.iters.check1526, label %vec.epilog.ph1580, label %vector.ph1527

vector.ph1527:                                    ; preds = %vector.main.loop.iter.check1525
  %i.aoq = add i32 %i.aoi, %n.vec1529             ; 3 uses
  %broadcast.splatinsert1532 = insertelement <16 x i32> poison, i32 %i.aoi, i64 0
  %broadcast.splat1533 = shufflevector <16 x i32> %broadcast.splatinsert1532, <16 x i32> poison, <16 x i32> zeroinitializer
  %induction1534 = add nsw <16 x i32> %broadcast.splat1533, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  br label %vector.body1535

vector.body1535:                                  ; preds = %pred.store.continue1569, %vector.ph1527
  %index1536 = phi i32 [ 0, %vector.ph1527 ], [ %index.next1570, %pred.store.continue1569 ] ; 2 uses
  %vec.ind1537 = phi <16 x i32> [ %induction1534, %vector.ph1527 ], [ %vec.ind.next1571, %pred.store.continue1569 ] ; 2 uses
  %i.aor = add i32 %i.aoi, %index1536             ; 16 uses
  %i.aos = icmp slt <16 x i32> %vec.ind1537, %broadcast.splat1531 ; 16 uses
  %i.aot = extractelement <16 x i1> %i.aos, i64 0
  br i1 %i.aot, label %pred.store.if1538, label %pred.store.continue1539

pred.store.if1538:                                ; preds = %vector.body1535
  %i.aou = sext i32 %i.aor to i64
  %i.aov = getelementptr inbounds i8, ptr %0, i64 %i.aou
  store i8 32, ptr %i.aov, align 1
  br label %pred.store.continue1539

pred.store.continue1539:                          ; preds = %pred.store.if1538, %vector.body1535
  %i.aow = extractelement <16 x i1> %i.aos, i64 1
  br i1 %i.aow, label %pred.store.if1540, label %pred.store.continue1541

pred.store.if1540:                                ; preds = %pred.store.continue1539
  %i.aox = add i32 %i.aor, 1
  %i.aoy = sext i32 %i.aox to i64
  %i.aoz = getelementptr inbounds i8, ptr %0, i64 %i.aoy
  store i8 32, ptr %i.aoz, align 1
  br label %pred.store.continue1541

pred.store.continue1541:                          ; preds = %pred.store.if1540, %pred.store.continue1539
  %i.apa = extractelement <16 x i1> %i.aos, i64 2
  br i1 %i.apa, label %pred.store.if1542, label %pred.store.continue1543

pred.store.if1542:                                ; preds = %pred.store.continue1541
  %i.apb = add i32 %i.aor, 2
  %i.apc = sext i32 %i.apb to i64
  %i.apd = getelementptr inbounds i8, ptr %0, i64 %i.apc
  store i8 32, ptr %i.apd, align 1
  br label %pred.store.continue1543

pred.store.continue1543:                          ; preds = %pred.store.if1542, %pred.store.continue1541
  %i.ape = extractelement <16 x i1> %i.aos, i64 3
  br i1 %i.ape, label %pred.store.if1544, label %pred.store.continue1545

pred.store.if1544:                                ; preds = %pred.store.continue1543
  %i.apf = add i32 %i.aor, 3
  %i.apg = sext i32 %i.apf to i64
  %i.aph = getelementptr inbounds i8, ptr %0, i64 %i.apg
  store i8 32, ptr %i.aph, align 1
  br label %pred.store.continue1545

pred.store.continue1545:                          ; preds = %pred.store.if1544, %pred.store.continue1543
  %i.api = extractelement <16 x i1> %i.aos, i64 4
  br i1 %i.api, label %pred.store.if1546, label %pred.store.continue1547

pred.store.if1546:                                ; preds = %pred.store.continue1545
  %i.apj = add i32 %i.aor, 4
  %i.apk = sext i32 %i.apj to i64
  %i.apl = getelementptr inbounds i8, ptr %0, i64 %i.apk
  store i8 32, ptr %i.apl, align 1
  br label %pred.store.continue1547

pred.store.continue1547:                          ; preds = %pred.store.if1546, %pred.store.continue1545
  %i.apm = extractelement <16 x i1> %i.aos, i64 5
  br i1 %i.apm, label %pred.store.if1548, label %pred.store.continue1549

pred.store.if1548:                                ; preds = %pred.store.continue1547
  %i.apn = add i32 %i.aor, 5
  %i.apo = sext i32 %i.apn to i64
  %i.app = getelementptr inbounds i8, ptr %0, i64 %i.apo
  store i8 32, ptr %i.app, align 1
  br label %pred.store.continue1549

pred.store.continue1549:                          ; preds = %pred.store.if1548, %pred.store.continue1547
  %i.apq = extractelement <16 x i1> %i.aos, i64 6
  br i1 %i.apq, label %pred.store.if1550, label %pred.store.continue1551

pred.store.if1550:                                ; preds = %pred.store.continue1549
  %i.apr = add i32 %i.aor, 6
  %i.aps = sext i32 %i.apr to i64
  %i.apt = getelementptr inbounds i8, ptr %0, i64 %i.aps
  store i8 32, ptr %i.apt, align 1
  br label %pred.store.continue1551

pred.store.continue1551:                          ; preds = %pred.store.if1550, %pred.store.continue1549
  %i.apu = extractelement <16 x i1> %i.aos, i64 7
  br i1 %i.apu, label %pred.store.if1552, label %pred.store.continue1553

pred.store.if1552:                                ; preds = %pred.store.continue1551
  %i.apv = add i32 %i.aor, 7
  %i.apw = sext i32 %i.apv to i64
  %i.apx = getelementptr inbounds i8, ptr %0, i64 %i.apw
  store i8 32, ptr %i.apx, align 1
  br label %pred.store.continue1553

pred.store.continue1553:                          ; preds = %pred.store.if1552, %pred.store.continue1551
  %i.apy = extractelement <16 x i1> %i.aos, i64 8
  br i1 %i.apy, label %pred.store.if1554, label %pred.store.continue1555

pred.store.if1554:                                ; preds = %pred.store.continue1553
  %i.apz = add i32 %i.aor, 8
  %i.aqa = sext i32 %i.apz to i64
  %i.aqb = getelementptr inbounds i8, ptr %0, i64 %i.aqa
  store i8 32, ptr %i.aqb, align 1
  br label %pred.store.continue1555

pred.store.continue1555:                          ; preds = %pred.store.if1554, %pred.store.continue1553
  %i.aqc = extractelement <16 x i1> %i.aos, i64 9
  br i1 %i.aqc, label %pred.store.if1556, label %pred.store.continue1557

pred.store.if1556:                                ; preds = %pred.store.continue1555
  %i.aqd = add i32 %i.aor, 9
  %i.aqe = sext i32 %i.aqd to i64
  %i.aqf = getelementptr inbounds i8, ptr %0, i64 %i.aqe
  store i8 32, ptr %i.aqf, align 1
  br label %pred.store.continue1557

pred.store.continue1557:                          ; preds = %pred.store.if1556, %pred.store.continue1555
  %i.aqg = extractelement <16 x i1> %i.aos, i64 10
  br i1 %i.aqg, label %pred.store.if1558, label %pred.store.continue1559

pred.store.if1558:                                ; preds = %pred.store.continue1557
  %i.aqh = add i32 %i.aor, 10
  %i.aqi = sext i32 %i.aqh to i64
  %i.aqj = getelementptr inbounds i8, ptr %0, i64 %i.aqi
  store i8 32, ptr %i.aqj, align 1
  br label %pred.store.continue1559

pred.store.continue1559:                          ; preds = %pred.store.if1558, %pred.store.continue1557
  %i.aqk = extractelement <16 x i1> %i.aos, i64 11
  br i1 %i.aqk, label %pred.store.if1560, label %pred.store.continue1561

pred.store.if1560:                                ; preds = %pred.store.continue1559
  %i.aql = add i32 %i.aor, 11
  %i.aqm = sext i32 %i.aql to i64
  %i.aqn = getelementptr inbounds i8, ptr %0, i64 %i.aqm
  store i8 32, ptr %i.aqn, align 1
  br label %pred.store.continue1561

pred.store.continue1561:                          ; preds = %pred.store.if1560, %pred.store.continue1559
  %i.aqo = extractelement <16 x i1> %i.aos, i64 12
  br i1 %i.aqo, label %pred.store.if1562, label %pred.store.continue1563

pred.store.if1562:                                ; preds = %pred.store.continue1561
  %i.aqp = add i32 %i.aor, 12
  %i.aqq = sext i32 %i.aqp to i64
  %i.aqr = getelementptr inbounds i8, ptr %0, i64 %i.aqq
  store i8 32, ptr %i.aqr, align 1
  br label %pred.store.continue1563

pred.store.continue1563:                          ; preds = %pred.store.if1562, %pred.store.continue1561
  %i.aqs = extractelement <16 x i1> %i.aos, i64 13
  br i1 %i.aqs, label %pred.store.if1564, label %pred.store.continue1565

pred.store.if1564:                                ; preds = %pred.store.continue1563
  %i.aqt = add i32 %i.aor, 13
  %i.aqu = sext i32 %i.aqt to i64
  %i.aqv = getelementptr inbounds i8, ptr %0, i64 %i.aqu
  store i8 32, ptr %i.aqv, align 1
  br label %pred.store.continue1565

pred.store.continue1565:                          ; preds = %pred.store.if1564, %pred.store.continue1563
  %i.aqw = extractelement <16 x i1> %i.aos, i64 14
  br i1 %i.aqw, label %pred.store.if1566, label %pred.store.continue1567

pred.store.if1566:                                ; preds = %pred.store.continue1565
  %i.aqx = add i32 %i.aor, 14
  %i.aqy = sext i32 %i.aqx to i64
  %i.aqz = getelementptr inbounds i8, ptr %0, i64 %i.aqy
  store i8 32, ptr %i.aqz, align 1
  br label %pred.store.continue1567

pred.store.continue1567:                          ; preds = %pred.store.if1566, %pred.store.continue1565
  %i.ara = extractelement <16 x i1> %i.aos, i64 15
  br i1 %i.ara, label %pred.store.if1568, label %pred.store.continue1569

pred.store.if1568:                                ; preds = %pred.store.continue1567
  %i.arb = add i32 %i.aor, 15
  %i.arc = sext i32 %i.arb to i64
  %i.ard = getelementptr inbounds i8, ptr %0, i64 %i.arc
  store i8 32, ptr %i.ard, align 1
  br label %pred.store.continue1569

pred.store.continue1569:                          ; preds = %pred.store.if1568, %pred.store.continue1567
  %index.next1570 = add nuw i32 %index1536, 16    ; 2 uses
  %vec.ind.next1571 = add nsw <16 x i32> %vec.ind1537, splat (i32 16)
  %i.are = icmp eq i32 %index.next1570, %n.vec1529
  br i1 %i.are, label %middle.block1572, label %vector.body1535, !llvm.loop !33

middle.block1572:                                 ; preds = %pred.store.continue1569
  br i1 %cmp.n1573, label %.loopexit.i.us33.i221.3, label %vec.epilog.iter.check1578

vec.epilog.iter.check1578:                        ; preds = %middle.block1572
  br i1 %min.epilog.iters.check1579, label %.lr.ph.i.us29.i226.3.preheader, label %vec.epilog.ph1580, !prof !14

vec.epilog.ph1580:                                ; preds = %vector.main.loop.iter.check1525, %vec.epilog.iter.check1578
  %vec.epilog.resume.val1574 = phi i32 [ %n.vec1529, %vec.epilog.iter.check1578 ], [ 0, %vector.main.loop.iter.check1525 ]
  %bc.resume.val1575 = phi i32 [ %i.aoq, %vec.epilog.iter.check1578 ], [ %i.aoi, %vector.main.loop.iter.check1525 ]
  %i.arf = add i32 %i.aoi, %n.vec1582             ; 2 uses
  %broadcast.splatinsert1585 = insertelement <4 x i32> poison, i32 %bc.resume.val1575, i64 0
  %broadcast.splat1586 = shufflevector <4 x i32> %broadcast.splatinsert1585, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction1587 = add nsw <4 x i32> %broadcast.splat1586, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body1588

vec.epilog.vector.body1588:                       ; preds = %pred.store.continue1598, %vec.epilog.ph1580
  %index1589 = phi i32 [ %vec.epilog.resume.val1574, %vec.epilog.ph1580 ], [ %index.next1599, %pred.store.continue1598 ] ; 2 uses
  %vec.ind1590 = phi <4 x i32> [ %induction1587, %vec.epilog.ph1580 ], [ %vec.ind.next1600, %pred.store.continue1598 ] ; 2 uses
  %i.arg = add i32 %i.aoi, %index1589             ; 4 uses
  %i.arh = icmp slt <4 x i32> %vec.ind1590, %broadcast.splat1584 ; 4 uses
  %i.ari = extractelement <4 x i1> %i.arh, i64 0
  br i1 %i.ari, label %pred.store.if1591, label %pred.store.continue1592

pred.store.if1591:                                ; preds = %vec.epilog.vector.body1588
  %i.arj = sext i32 %i.arg to i64
  %i.ark = getelementptr inbounds i8, ptr %0, i64 %i.arj
  store i8 32, ptr %i.ark, align 1
  br label %pred.store.continue1592

pred.store.continue1592:                          ; preds = %pred.store.if1591, %vec.epilog.vector.body1588
  %i.arl = extractelement <4 x i1> %i.arh, i64 1
  br i1 %i.arl, label %pred.store.if1593, label %pred.store.continue1594

pred.store.if1593:                                ; preds = %pred.store.continue1592
  %i.arm = add i32 %i.arg, 1
  %i.arn = sext i32 %i.arm to i64
  %i.aro = getelementptr inbounds i8, ptr %0, i64 %i.arn
  store i8 32, ptr %i.aro, align 1
  br label %pred.store.continue1594

pred.store.continue1594:                          ; preds = %pred.store.if1593, %pred.store.continue1592
  %i.arp = extractelement <4 x i1> %i.arh, i64 2
  br i1 %i.arp, label %pred.store.if1595, label %pred.store.continue1596

pred.store.if1595:                                ; preds = %pred.store.continue1594
  %i.arq = add i32 %i.arg, 2
  %i.arr = sext i32 %i.arq to i64
  %i.ars = getelementptr inbounds i8, ptr %0, i64 %i.arr
  store i8 32, ptr %i.ars, align 1
  br label %pred.store.continue1596

pred.store.continue1596:                          ; preds = %pred.store.if1595, %pred.store.continue1594
  %i.art = extractelement <4 x i1> %i.arh, i64 3
  br i1 %i.art, label %pred.store.if1597, label %pred.store.continue1598

pred.store.if1597:                                ; preds = %pred.store.continue1596
  %i.aru = add i32 %i.arg, 3
  %i.arv = sext i32 %i.aru to i64
  %i.arw = getelementptr inbounds i8, ptr %0, i64 %i.arv
  store i8 32, ptr %i.arw, align 1
  br label %pred.store.continue1598

pred.store.continue1598:                          ; preds = %pred.store.if1597, %pred.store.continue1596
  %index.next1599 = add nuw i32 %index1589, 4     ; 2 uses
  %vec.ind.next1600 = add nsw <4 x i32> %vec.ind1590, splat (i32 4)
  %i.arx = icmp eq i32 %index.next1599, %n.vec1582
  br i1 %i.arx, label %vec.epilog.middle.block1601, label %vec.epilog.vector.body1588, !llvm.loop !34

vec.epilog.middle.block1601:                      ; preds = %pred.store.continue1598
  br i1 %cmp.n1602, label %.loopexit.i.us33.i221.3, label %.lr.ph.i.us29.i226.3.preheader

.lr.ph.i.us29.i226.3.preheader:                   ; preds = %iter.check1576, %vec.epilog.iter.check1578, %vec.epilog.middle.block1601
  %.pre.i.us31.i229474.3.ph = phi i32 [ %i.aoi, %iter.check1576 ], [ %i.aoq, %vec.epilog.iter.check1578 ], [ %i.arf, %vec.epilog.middle.block1601 ]
  %.030.i.us30.i227.3.ph = phi i32 [ 0, %iter.check1576 ], [ %n.vec1529, %vec.epilog.iter.check1578 ], [ %n.vec1582, %vec.epilog.middle.block1601 ]
  br label %.lr.ph.i.us29.i226.3

.lr.ph.i.us29.i226.3:                             ; preds = %.lr.ph.i.us29.i226.3.preheader, %bb.dz
  %.pre.i.us31.i229474.3 = phi i32 [ %i.asb, %bb.dz ], [ %.pre.i.us31.i229474.3.ph, %.lr.ph.i.us29.i226.3.preheader ] ; 3 uses
  %.030.i.us30.i227.3 = phi i32 [ %i.asc, %bb.dz ], [ %.030.i.us30.i227.3.ph, %.lr.ph.i.us29.i226.3.preheader ]
  %i.ary = icmp slt i32 %.pre.i.us31.i229474.3, %1
  br i1 %i.ary, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %.lr.ph.i.us29.i226.3
  %i.arz = sext i32 %.pre.i.us31.i229474.3 to i64
  %i.asa = getelementptr inbounds i8, ptr %0, i64 %i.arz
  store i8 32, ptr %i.asa, align 1
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %.lr.ph.i.us29.i226.3
  %i.asb = add nsw i32 %.pre.i.us31.i229474.3, 1  ; 2 uses
  %i.asc = add nuw nsw i32 %.030.i.us30.i227.3, 1 ; 2 uses
  %exitcond.not.i.us32.i228.3 = icmp eq i32 %i.asc, %2
  br i1 %exitcond.not.i.us32.i228.3, label %.loopexit.i.us33.i221.3, label %.lr.ph.i.us29.i226.3, !llvm.loop !35

.loopexit.i.us33.i221.3:                          ; preds = %bb.dz, %middle.block1572, %vec.epilog.middle.block1601, %bb.dx, %bb.dw
  %.lcssa475478.3 = phi i32 [ %i.aoi, %bb.dw ], [ %i.aoi, %bb.dx ], [ %i.arf, %vec.epilog.middle.block1601 ], [ %i.aoq, %middle.block1572 ], [ %i.asb, %bb.dz ] ; 3 uses
  %i.asd = icmp slt i32 %.lcssa475478.3, %1
  br i1 %i.asd, label %bb.ea, label %_ZL10outputCharcPcPiii.exit.us35.i223.3

bb.ea:                                            ; preds = %.loopexit.i.us33.i221.3
  %i.ase = sext i32 %.lcssa475478.3 to i64
  %i.asf = getelementptr inbounds i8, ptr %0, i64 %i.ase
  store i8 76, ptr %i.asf, align 1
  br label %_ZL10outputCharcPcPiii.exit.us35.i223.3

_ZL10outputCharcPcPiii.exit.us35.i223.3:          ; preds = %bb.ea, %.loopexit.i.us33.i221.3
  %i.asg = add nsw i32 %.lcssa475478.3, 1         ; 12 uses
  %i.ash = icmp eq i32 %i.asg, 0
  br i1 %i.ash, label %iter.check1495, label %bb.eb

bb.eb:                                            ; preds = %_ZL10outputCharcPcPiii.exit.us35.i223.3
  %i.asi = icmp slt i32 %i.asg, %1
  br i1 %i.asi, label %bb.ec, label %.loopexit.i.us33.i221.4

bb.ec:                                            ; preds = %bb.eb
  %i.asj = sext i32 %i.asg to i64
  %i.ask = getelementptr i8, ptr %0, i64 %i.asj
  %i.asl = getelementptr i8, ptr %i.ask, i64 -1
  %i.asm = load i8, ptr %i.asl, align 1
  %i.asn = icmp eq i8 %i.asm, 10
  br i1 %i.asn, label %iter.check1495, label %.loopexit.i.us33.i221.4

iter.check1495:                                   ; preds = %bb.ec, %_ZL10outputCharcPcPiii.exit.us35.i223.3
  br i1 %min.iters.check1443, label %.lr.ph.i.us29.i226.4.preheader, label %vector.main.loop.iter.check1444

vector.main.loop.iter.check1444:                  ; preds = %iter.check1495
  br i1 %min.iters.check1445, label %vec.epilog.ph1499, label %vector.ph1446

vector.ph1446:                                    ; preds = %vector.main.loop.iter.check1444
  %i.aso = add i32 %i.asg, %n.vec1448             ; 3 uses
  %broadcast.splatinsert1451 = insertelement <16 x i32> poison, i32 %i.asg, i64 0
  %broadcast.splat1452 = shufflevector <16 x i32> %broadcast.splatinsert1451, <16 x i32> poison, <16 x i32> zeroinitializer
  %induction1453 = add nsw <16 x i32> %broadcast.splat1452, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  br label %vector.body1454

vector.body1454:                                  ; preds = %pred.store.continue1488, %vector.ph1446
  %index1455 = phi i32 [ 0, %vector.ph1446 ], [ %index.next1489, %pred.store.continue1488 ] ; 2 uses
  %vec.ind1456 = phi <16 x i32> [ %induction1453, %vector.ph1446 ], [ %vec.ind.next1490, %pred.store.continue1488 ] ; 2 uses
  %i.asp = add i32 %i.asg, %index1455             ; 16 uses
  %i.asq = icmp slt <16 x i32> %vec.ind1456, %broadcast.splat1450 ; 16 uses
  %i.asr = extractelement <16 x i1> %i.asq, i64 0
  br i1 %i.asr, label %pred.store.if1457, label %pred.store.continue1458

pred.store.if1457:                                ; preds = %vector.body1454
  %i.ass = sext i32 %i.asp to i64
  %i.ast = getelementptr inbounds i8, ptr %0, i64 %i.ass
  store i8 32, ptr %i.ast, align 1
  br label %pred.store.continue1458

pred.store.continue1458:                          ; preds = %pred.store.if1457, %vector.body1454
  %i.asu = extractelement <16 x i1> %i.asq, i64 1
  br i1 %i.asu, label %pred.store.if1459, label %pred.store.continue1460

pred.store.if1459:                                ; preds = %pred.store.continue1458
  %i.asv = add i32 %i.asp, 1
  %i.asw = sext i32 %i.asv to i64
  %i.asx = getelementptr inbounds i8, ptr %0, i64 %i.asw
  store i8 32, ptr %i.asx, align 1
  br label %pred.store.continue1460

pred.store.continue1460:                          ; preds = %pred.store.if1459, %pred.store.continue1458
  %i.asy = extractelement <16 x i1> %i.asq, i64 2
  br i1 %i.asy, label %pred.store.if1461, label %pred.store.continue1462

pred.store.if1461:                                ; preds = %pred.store.continue1460
  %i.asz = add i32 %i.asp, 2
  %i.ata = sext i32 %i.asz to i64
  %i.atb = getelementptr inbounds i8, ptr %0, i64 %i.ata
  store i8 32, ptr %i.atb, align 1
  br label %pred.store.continue1462

pred.store.continue1462:                          ; preds = %pred.store.if1461, %pred.store.continue1460
  %i.atc = extractelement <16 x i1> %i.asq, i64 3
  br i1 %i.atc, label %pred.store.if1463, label %pred.store.continue1464

pred.store.if1463:                                ; preds = %pred.store.continue1462
  %i.atd = add i32 %i.asp, 3
  %i.ate = sext i32 %i.atd to i64
  %i.atf = getelementptr inbounds i8, ptr %0, i64 %i.ate
  store i8 32, ptr %i.atf, align 1
  br label %pred.store.continue1464

pred.store.continue1464:                          ; preds = %pred.store.if1463, %pred.store.continue1462
  %i.atg = extractelement <16 x i1> %i.asq, i64 4
  br i1 %i.atg, label %pred.store.if1465, label %pred.store.continue1466

pred.store.if1465:                                ; preds = %pred.store.continue1464
  %i.ath = add i32 %i.asp, 4
  %i.ati = sext i32 %i.ath to i64
  %i.atj = getelementptr inbounds i8, ptr %0, i64 %i.ati
  store i8 32, ptr %i.atj, align 1
  br label %pred.store.continue1466

pred.store.continue1466:                          ; preds = %pred.store.if1465, %pred.store.continue1464
  %i.atk = extractelement <16 x i1> %i.asq, i64 5
  br i1 %i.atk, label %pred.store.if1467, label %pred.store.continue1468

pred.store.if1467:                                ; preds = %pred.store.continue1466
  %i.atl = add i32 %i.asp, 5
  %i.atm = sext i32 %i.atl to i64
  %i.atn = getelementptr inbounds i8, ptr %0, i64 %i.atm
  store i8 32, ptr %i.atn, align 1
  br label %pred.store.continue1468

pred.store.continue1468:                          ; preds = %pred.store.if1467, %pred.store.continue1466
  %i.ato = extractelement <16 x i1> %i.asq, i64 6
  br i1 %i.ato, label %pred.store.if1469, label %pred.store.continue1470

pred.store.if1469:                                ; preds = %pred.store.continue1468
  %i.atp = add i32 %i.asp, 6
  %i.atq = sext i32 %i.atp to i64
  %i.atr = getelementptr inbounds i8, ptr %0, i64 %i.atq
  store i8 32, ptr %i.atr, align 1
  br label %pred.store.continue1470

pred.store.continue1470:                          ; preds = %pred.store.if1469, %pred.store.continue1468
  %i.ats = extractelement <16 x i1> %i.asq, i64 7
  br i1 %i.ats, label %pred.store.if1471, label %pred.store.continue1472

pred.store.if1471:                                ; preds = %pred.store.continue1470
  %i.att = add i32 %i.asp, 7
  %i.atu = sext i32 %i.att to i64
  %i.atv = getelementptr inbounds i8, ptr %0, i64 %i.atu
  store i8 32, ptr %i.atv, align 1
  br label %pred.store.continue1472

pred.store.continue1472:                          ; preds = %pred.store.if1471, %pred.store.continue1470
  %i.atw = extractelement <16 x i1> %i.asq, i64 8
  br i1 %i.atw, label %pred.store.if1473, label %pred.store.continue1474

pred.store.if1473:                                ; preds = %pred.store.continue1472
  %i.atx = add i32 %i.asp, 8
  %i.aty = sext i32 %i.atx to i64
  %i.atz = getelementptr inbounds i8, ptr %0, i64 %i.aty
  store i8 32, ptr %i.atz, align 1
  br label %pred.store.continue1474

pred.store.continue1474:                          ; preds = %pred.store.if1473, %pred.store.continue1472
  %i.aua = extractelement <16 x i1> %i.asq, i64 9
  br i1 %i.aua, label %pred.store.if1475, label %pred.store.continue1476

pred.store.if1475:                                ; preds = %pred.store.continue1474
  %i.aub = add i32 %i.asp, 9
  %i.auc = sext i32 %i.aub to i64
  %i.aud = getelementptr inbounds i8, ptr %0, i64 %i.auc
  store i8 32, ptr %i.aud, align 1
  br label %pred.store.continue1476

pred.store.continue1476:                          ; preds = %pred.store.if1475, %pred.store.continue1474
  %i.aue = extractelement <16 x i1> %i.asq, i64 10
  br i1 %i.aue, label %pred.store.if1477, label %pred.store.continue1478

pred.store.if1477:                                ; preds = %pred.store.continue1476
  %i.auf = add i32 %i.asp, 10
  %i.aug = sext i32 %i.auf to i64
  %i.auh = getelementptr inbounds i8, ptr %0, i64 %i.aug
  store i8 32, ptr %i.auh, align 1
  br label %pred.store.continue1478

pred.store.continue1478:                          ; preds = %pred.store.if1477, %pred.store.continue1476
  %i.aui = extractelement <16 x i1> %i.asq, i64 11
  br i1 %i.aui, label %pred.store.if1479, label %pred.store.continue1480

pred.store.if1479:                                ; preds = %pred.store.continue1478
  %i.auj = add i32 %i.asp, 11
  %i.auk = sext i32 %i.auj to i64
  %i.aul = getelementptr inbounds i8, ptr %0, i64 %i.auk
  store i8 32, ptr %i.aul, align 1
  br label %pred.store.continue1480

pred.store.continue1480:                          ; preds = %pred.store.if1479, %pred.store.continue1478
  %i.aum = extractelement <16 x i1> %i.asq, i64 12
  br i1 %i.aum, label %pred.store.if1481, label %pred.store.continue1482

pred.store.if1481:                                ; preds = %pred.store.continue1480
  %i.aun = add i32 %i.asp, 12
  %i.auo = sext i32 %i.aun to i64
  %i.aup = getelementptr inbounds i8, ptr %0, i64 %i.auo
  store i8 32, ptr %i.aup, align 1
  br label %pred.store.continue1482

pred.store.continue1482:                          ; preds = %pred.store.if1481, %pred.store.continue1480
  %i.auq = extractelement <16 x i1> %i.asq, i64 13
  br i1 %i.auq, label %pred.store.if1483, label %pred.store.continue1484

pred.store.if1483:                                ; preds = %pred.store.continue1482
  %i.aur = add i32 %i.asp, 13
  %i.aus = sext i32 %i.aur to i64
  %i.aut = getelementptr inbounds i8, ptr %0, i64 %i.aus
  store i8 32, ptr %i.aut, align 1
  br label %pred.store.continue1484

pred.store.continue1484:                          ; preds = %pred.store.if1483, %pred.store.continue1482
  %i.auu = extractelement <16 x i1> %i.asq, i64 14
  br i1 %i.auu, label %pred.store.if1485, label %pred.store.continue1486

pred.store.if1485:                                ; preds = %pred.store.continue1484
  %i.auv = add i32 %i.asp, 14
  %i.auw = sext i32 %i.auv to i64
  %i.aux = getelementptr inbounds i8, ptr %0, i64 %i.auw
  store i8 32, ptr %i.aux, align 1
  br label %pred.store.continue1486

pred.store.continue1486:                          ; preds = %pred.store.if1485, %pred.store.continue1484
  %i.auy = extractelement <16 x i1> %i.asq, i64 15
  br i1 %i.auy, label %pred.store.if1487, label %pred.store.continue1488

pred.store.if1487:                                ; preds = %pred.store.continue1486
  %i.auz = add i32 %i.asp, 15
  %i.ava = sext i32 %i.auz to i64
  %i.avb = getelementptr inbounds i8, ptr %0, i64 %i.ava
  store i8 32, ptr %i.avb, align 1
  br label %pred.store.continue1488

pred.store.continue1488:                          ; preds = %pred.store.if1487, %pred.store.continue1486
  %index.next1489 = add nuw i32 %index1455, 16    ; 2 uses
  %vec.ind.next1490 = add nsw <16 x i32> %vec.ind1456, splat (i32 16)
  %i.avc = icmp eq i32 %index.next1489, %n.vec1448
  br i1 %i.avc, label %middle.block1491, label %vector.body1454, !llvm.loop !36

middle.block1491:                                 ; preds = %pred.store.continue1488
  br i1 %cmp.n1492, label %.loopexit.i.us33.i221.4, label %vec.epilog.iter.check1497

vec.epilog.iter.check1497:                        ; preds = %middle.block1491
  br i1 %min.epilog.iters.check1498, label %.lr.ph.i.us29.i226.4.preheader, label %vec.epilog.ph1499, !prof !14

vec.epilog.ph1499:                                ; preds = %vector.main.loop.iter.check1444, %vec.epilog.iter.check1497
  %vec.epilog.resume.val1493 = phi i32 [ %n.vec1448, %vec.epilog.iter.check1497 ], [ 0, %vector.main.loop.iter.check1444 ]
  %bc.resume.val1494 = phi i32 [ %i.aso, %vec.epilog.iter.check1497 ], [ %i.asg, %vector.main.loop.iter.check1444 ]
  %i.avd = add i32 %i.asg, %n.vec1501             ; 2 uses
  %broadcast.splatinsert1504 = insertelement <4 x i32> poison, i32 %bc.resume.val1494, i64 0
  %broadcast.splat1505 = shufflevector <4 x i32> %broadcast.splatinsert1504, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction1506 = add nsw <4 x i32> %broadcast.splat1505, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body1507

vec.epilog.vector.body1507:                       ; preds = %pred.store.continue1517, %vec.epilog.ph1499
  %index1508 = phi i32 [ %vec.epilog.resume.val1493, %vec.epilog.ph1499 ], [ %index.next1518, %pred.store.continue1517 ] ; 2 uses
  %vec.ind1509 = phi <4 x i32> [ %induction1506, %vec.epilog.ph1499 ], [ %vec.ind.next1519, %pred.store.continue1517 ] ; 2 uses
  %i.ave = add i32 %i.asg, %index1508             ; 4 uses
  %i.avf = icmp slt <4 x i32> %vec.ind1509, %broadcast.splat1503 ; 4 uses
  %i.avg = extractelement <4 x i1> %i.avf, i64 0
  br i1 %i.avg, label %pred.store.if1510, label %pred.store.continue1511

pred.store.if1510:                                ; preds = %vec.epilog.vector.body1507
  %i.avh = sext i32 %i.ave to i64
  %i.avi = getelementptr inbounds i8, ptr %0, i64 %i.avh
  store i8 32, ptr %i.avi, align 1
  br label %pred.store.continue1511

pred.store.continue1511:                          ; preds = %pred.store.if1510, %vec.epilog.vector.body1507
  %i.avj = extractelement <4 x i1> %i.avf, i64 1
  br i1 %i.avj, label %pred.store.if1512, label %pred.store.continue1513

pred.store.if1512:                                ; preds = %pred.store.continue1511
  %i.avk = add i32 %i.ave, 1
  %i.avl = sext i32 %i.avk to i64
  %i.avm = getelementptr inbounds i8, ptr %0, i64 %i.avl
  store i8 32, ptr %i.avm, align 1
  br label %pred.store.continue1513

pred.store.continue1513:                          ; preds = %pred.store.if1512, %pred.store.continue1511
  %i.avn = extractelement <4 x i1> %i.avf, i64 2
  br i1 %i.avn, label %pred.store.if1514, label %pred.store.continue1515

pred.store.if1514:                                ; preds = %pred.store.continue1513
  %i.avo = add i32 %i.ave, 2
  %i.avp = sext i32 %i.avo to i64
  %i.avq = getelementptr inbounds i8, ptr %0, i64 %i.avp
  store i8 32, ptr %i.avq, align 1
  br label %pred.store.continue1515

pred.store.continue1515:                          ; preds = %pred.store.if1514, %pred.store.continue1513
  %i.avr = extractelement <4 x i1> %i.avf, i64 3
  br i1 %i.avr, label %pred.store.if1516, label %pred.store.continue1517

pred.store.if1516:                                ; preds = %pred.store.continue1515
  %i.avs = add i32 %i.ave, 3
  %i.avt = sext i32 %i.avs to i64
  %i.avu = getelementptr inbounds i8, ptr %0, i64 %i.avt
  store i8 32, ptr %i.avu, align 1
  br label %pred.store.continue1517

pred.store.continue1517:                          ; preds = %pred.store.if1516, %pred.store.continue1515
  %index.next1518 = add nuw i32 %index1508, 4     ; 2 uses
  %vec.ind.next1519 = add nsw <4 x i32> %vec.ind1509, splat (i32 4)
  %i.avv = icmp eq i32 %index.next1518, %n.vec1501
  br i1 %i.avv, label %vec.epilog.middle.block1520, label %vec.epilog.vector.body1507, !llvm.loop !37

vec.epilog.middle.block1520:                      ; preds = %pred.store.continue1517
  br i1 %cmp.n1521, label %.loopexit.i.us33.i221.4, label %.lr.ph.i.us29.i226.4.preheader

.lr.ph.i.us29.i226.4.preheader:                   ; preds = %iter.check1495, %vec.epilog.iter.check1497, %vec.epilog.middle.block1520
  %.pre.i.us31.i229474.4.ph = phi i32 [ %i.asg, %iter.check1495 ], [ %i.aso, %vec.epilog.iter.check1497 ], [ %i.avd, %vec.epilog.middle.block1520 ]
  %.030.i.us30.i227.4.ph = phi i32 [ 0, %iter.check1495 ], [ %n.vec1448, %vec.epilog.iter.check1497 ], [ %n.vec1501, %vec.epilog.middle.block1520 ]
  br label %.lr.ph.i.us29.i226.4

.lr.ph.i.us29.i226.4:                             ; preds = %.lr.ph.i.us29.i226.4.preheader, %bb.ee
  %.pre.i.us31.i229474.4 = phi i32 [ %i.avz, %bb.ee ], [ %.pre.i.us31.i229474.4.ph, %.lr.ph.i.us29.i226.4.preheader ] ; 3 uses
  %.030.i.us30.i227.4 = phi i32 [ %i.awa, %bb.ee ], [ %.030.i.us30.i227.4.ph, %.lr.ph.i.us29.i226.4.preheader ]
  %i.avw = icmp slt i32 %.pre.i.us31.i229474.4, %1
  br i1 %i.avw, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %.lr.ph.i.us29.i226.4
  %i.avx = sext i32 %.pre.i.us31.i229474.4 to i64
  %i.avy = getelementptr inbounds i8, ptr %0, i64 %i.avx
  store i8 32, ptr %i.avy, align 1
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %.lr.ph.i.us29.i226.4
  %i.avz = add nsw i32 %.pre.i.us31.i229474.4, 1  ; 2 uses
  %i.awa = add nuw nsw i32 %.030.i.us30.i227.4, 1 ; 2 uses
  %exitcond.not.i.us32.i228.4 = icmp eq i32 %i.awa, %2
  br i1 %exitcond.not.i.us32.i228.4, label %.loopexit.i.us33.i221.4, label %.lr.ph.i.us29.i226.4, !llvm.loop !38

.loopexit.i.us33.i221.4:                          ; preds = %bb.ee, %middle.block1491, %vec.epilog.middle.block1520, %bb.ec, %bb.eb
  %.lcssa475478.4 = phi i32 [ %i.asg, %bb.eb ], [ %i.asg, %bb.ec ], [ %i.avd, %vec.epilog.middle.block1520 ], [ %i.aso, %middle.block1491 ], [ %i.avz, %bb.ee ] ; 3 uses
  %i.awb = icmp slt i32 %.lcssa475478.4, %1
  br i1 %i.awb, label %bb.ef, label %_ZL10outputCharcPcPiii.exit.us35.i223.4

bb.ef:                                            ; preds = %.loopexit.i.us33.i221.4
  %i.awc = sext i32 %.lcssa475478.4 to i64
  %i.awd = getelementptr inbounds i8, ptr %0, i64 %i.awc
  store i8 76, ptr %i.awd, align 1
  br label %_ZL10outputCharcPcPiii.exit.us35.i223.4

_ZL10outputCharcPcPiii.exit.us35.i223.4:          ; preds = %bb.ef, %.loopexit.i.us33.i221.4
  %i.awe = add nsw i32 %.lcssa475478.4, 1         ; 12 uses
  %i.awf = icmp eq i32 %i.awe, 0
  br i1 %i.awf, label %iter.check1414, label %bb.eg

bb.eg:                                            ; preds = %_ZL10outputCharcPcPiii.exit.us35.i223.4
  %i.awg = icmp slt i32 %i.awe, %1
  br i1 %i.awg, label %bb.eh, label %.loopexit.i.us33.i221.5

bb.eh:                                            ; preds = %bb.eg
  %i.awh = sext i32 %i.awe to i64
  %i.awi = getelementptr i8, ptr %0, i64 %i.awh
  %i.awj = getelementptr i8, ptr %i.awi, i64 -1
  %i.awk = load i8, ptr %i.awj, align 1
  %i.awl = icmp eq i8 %i.awk, 10
  br i1 %i.awl, label %iter.check1414, label %.loopexit.i.us33.i221.5

iter.check1414:                                   ; preds = %bb.eh, %_ZL10outputCharcPcPiii.exit.us35.i223.4
  br i1 %min.iters.check1362, label %.lr.ph.i.us29.i226.5.preheader, label %vector.main.loop.iter.check1363

vector.main.loop.iter.check1363:                  ; preds = %iter.check1414
  br i1 %min.iters.check1364, label %vec.epilog.ph1418, label %vector.ph1365

vector.ph1365:                                    ; preds = %vector.main.loop.iter.check1363
  %i.awm = add i32 %i.awe, %n.vec1367             ; 3 uses
  %broadcast.splatinsert1370 = insertelement <16 x i32> poison, i32 %i.awe, i64 0
  %broadcast.splat1371 = shufflevector <16 x i32> %broadcast.splatinsert1370, <16 x i32> poison, <16 x i32> zeroinitializer
  %induction1372 = add nsw <16 x i32> %broadcast.splat1371, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  br label %vector.body1373

vector.body1373:                                  ; preds = %pred.store.continue1407, %vector.ph1365
  %index1374 = phi i32 [ 0, %vector.ph1365 ], [ %index.next1408, %pred.store.continue1407 ] ; 2 uses
  %vec.ind1375 = phi <16 x i32> [ %induction1372, %vector.ph1365 ], [ %vec.ind.next1409, %pred.store.continue1407 ] ; 2 uses
  %i.awn = add i32 %i.awe, %index1374             ; 16 uses
  %i.awo = icmp slt <16 x i32> %vec.ind1375, %broadcast.splat1369 ; 16 uses
  %i.awp = extractelement <16 x i1> %i.awo, i64 0
  br i1 %i.awp, label %pred.store.if1376, label %pred.store.continue1377

pred.store.if1376:                                ; preds = %vector.body1373
  %i.awq = sext i32 %i.awn to i64
  %i.awr = getelementptr inbounds i8, ptr %0, i64 %i.awq
  store i8 32, ptr %i.awr, align 1
  br label %pred.store.continue1377

pred.store.continue1377:                          ; preds = %pred.store.if1376, %vector.body1373
  %i.aws = extractelement <16 x i1> %i.awo, i64 1
  br i1 %i.aws, label %pred.store.if1378, label %pred.store.continue1379

pred.store.if1378:                                ; preds = %pred.store.continue1377
  %i.awt = add i32 %i.awn, 1
  %i.awu = sext i32 %i.awt to i64
  %i.awv = getelementptr inbounds i8, ptr %0, i64 %i.awu
  store i8 32, ptr %i.awv, align 1
  br label %pred.store.continue1379

pred.store.continue1379:                          ; preds = %pred.store.if1378, %pred.store.continue1377
  %i.aww = extractelement <16 x i1> %i.awo, i64 2
  br i1 %i.aww, label %pred.store.if1380, label %pred.store.continue1381

pred.store.if1380:                                ; preds = %pred.store.continue1379
  %i.awx = add i32 %i.awn, 2
  %i.awy = sext i32 %i.awx to i64
  %i.awz = getelementptr inbounds i8, ptr %0, i64 %i.awy
  store i8 32, ptr %i.awz, align 1
  br label %pred.store.continue1381

pred.store.continue1381:                          ; preds = %pred.store.if1380, %pred.store.continue1379
  %i.axa = extractelement <16 x i1> %i.awo, i64 3
  br i1 %i.axa, label %pred.store.if1382, label %pred.store.continue1383

pred.store.if1382:                                ; preds = %pred.store.continue1381
  %i.axb = add i32 %i.awn, 3
  %i.axc = sext i32 %i.axb to i64
  %i.axd = getelementptr inbounds i8, ptr %0, i64 %i.axc
  store i8 32, ptr %i.axd, align 1
  br label %pred.store.continue1383

pred.store.continue1383:                          ; preds = %pred.store.if1382, %pred.store.continue1381
  %i.axe = extractelement <16 x i1> %i.awo, i64 4
  br i1 %i.axe, label %pred.store.if1384, label %pred.store.continue1385

pred.store.if1384:                                ; preds = %pred.store.continue1383
  %i.axf = add i32 %i.awn, 4
  %i.axg = sext i32 %i.axf to i64
  %i.axh = getelementptr inbounds i8, ptr %0, i64 %i.axg
  store i8 32, ptr %i.axh, align 1
  br label %pred.store.continue1385

pred.store.continue1385:                          ; preds = %pred.store.if1384, %pred.store.continue1383
  %i.axi = extractelement <16 x i1> %i.awo, i64 5
  br i1 %i.axi, label %pred.store.if1386, label %pred.store.continue1387

pred.store.if1386:                                ; preds = %pred.store.continue1385
  %i.axj = add i32 %i.awn, 5
  %i.axk = sext i32 %i.axj to i64
  %i.axl = getelementptr inbounds i8, ptr %0, i64 %i.axk
  store i8 32, ptr %i.axl, align 1
  br label %pred.store.continue1387

pred.store.continue1387:                          ; preds = %pred.store.if1386, %pred.store.continue1385
  %i.axm = extractelement <16 x i1> %i.awo, i64 6
  br i1 %i.axm, label %pred.store.if1388, label %pred.store.continue1389

pred.store.if1388:                                ; preds = %pred.store.continue1387
  %i.axn = add i32 %i.awn, 6
  %i.axo = sext i32 %i.axn to i64
  %i.axp = getelementptr inbounds i8, ptr %0, i64 %i.axo
  store i8 32, ptr %i.axp, align 1
  br label %pred.store.continue1389

pred.store.continue1389:                          ; preds = %pred.store.if1388, %pred.store.continue1387
  %i.axq = extractelement <16 x i1> %i.awo, i64 7
  br i1 %i.axq, label %pred.store.if1390, label %pred.store.continue1391

pred.store.if1390:                                ; preds = %pred.store.continue1389
  %i.axr = add i32 %i.awn, 7
  %i.axs = sext i32 %i.axr to i64
  %i.axt = getelementptr inbounds i8, ptr %0, i64 %i.axs
  store i8 32, ptr %i.axt, align 1
  br label %pred.store.continue1391

pred.store.continue1391:                          ; preds = %pred.store.if1390, %pred.store.continue1389
  %i.axu = extractelement <16 x i1> %i.awo, i64 8
  br i1 %i.axu, label %pred.store.if1392, label %pred.store.continue1393

pred.store.if1392:                                ; preds = %pred.store.continue1391
  %i.axv = add i32 %i.awn, 8
  %i.axw = sext i32 %i.axv to i64
  %i.axx = getelementptr inbounds i8, ptr %0, i64 %i.axw
  store i8 32, ptr %i.axx, align 1
  br label %pred.store.continue1393

pred.store.continue1393:                          ; preds = %pred.store.if1392, %pred.store.continue1391
  %i.axy = extractelement <16 x i1> %i.awo, i64 9
  br i1 %i.axy, label %pred.store.if1394, label %pred.store.continue1395

pred.store.if1394:                                ; preds = %pred.store.continue1393
  %i.axz = add i32 %i.awn, 9
  %i.aya = sext i32 %i.axz to i64
  %i.ayb = getelementptr inbounds i8, ptr %0, i64 %i.aya
  store i8 32, ptr %i.ayb, align 1
  br label %pred.store.continue1395

pred.store.continue1395:                          ; preds = %pred.store.if1394, %pred.store.continue1393
  %i.ayc = extractelement <16 x i1> %i.awo, i64 10
  br i1 %i.ayc, label %pred.store.if1396, label %pred.store.continue1397

pred.store.if1396:                                ; preds = %pred.store.continue1395
  %i.ayd = add i32 %i.awn, 10
  %i.aye = sext i32 %i.ayd to i64
  %i.ayf = getelementptr inbounds i8, ptr %0, i64 %i.aye
  store i8 32, ptr %i.ayf, align 1
  br label %pred.store.continue1397

pred.store.continue1397:                          ; preds = %pred.store.if1396, %pred.store.continue1395
  %i.ayg = extractelement <16 x i1> %i.awo, i64 11
  br i1 %i.ayg, label %pred.store.if1398, label %pred.store.continue1399

pred.store.if1398:                                ; preds = %pred.store.continue1397
  %i.ayh = add i32 %i.awn, 11
  %i.ayi = sext i32 %i.ayh to i64
  %i.ayj = getelementptr inbounds i8, ptr %0, i64 %i.ayi
  store i8 32, ptr %i.ayj, align 1
  br label %pred.store.continue1399

pred.store.continue1399:                          ; preds = %pred.store.if1398, %pred.store.continue1397
  %i.ayk = extractelement <16 x i1> %i.awo, i64 12
  br i1 %i.ayk, label %pred.store.if1400, label %pred.store.continue1401

pred.store.if1400:                                ; preds = %pred.store.continue1399
  %i.ayl = add i32 %i.awn, 12
  %i.aym = sext i32 %i.ayl to i64
  %i.ayn = getelementptr inbounds i8, ptr %0, i64 %i.aym
  store i8 32, ptr %i.ayn, align 1
  br label %pred.store.continue1401

pred.store.continue1401:                          ; preds = %pred.store.if1400, %pred.store.continue1399
  %i.ayo = extractelement <16 x i1> %i.awo, i64 13
  br i1 %i.ayo, label %pred.store.if1402, label %pred.store.continue1403

pred.store.if1402:                                ; preds = %pred.store.continue1401
  %i.ayp = add i32 %i.awn, 13
  %i.ayq = sext i32 %i.ayp to i64
  %i.ayr = getelementptr inbounds i8, ptr %0, i64 %i.ayq
  store i8 32, ptr %i.ayr, align 1
  br label %pred.store.continue1403

pred.store.continue1403:                          ; preds = %pred.store.if1402, %pred.store.continue1401
  %i.ays = extractelement <16 x i1> %i.awo, i64 14
  br i1 %i.ays, label %pred.store.if1404, label %pred.store.continue1405

pred.store.if1404:                                ; preds = %pred.store.continue1403
  %i.ayt = add i32 %i.awn, 14
  %i.ayu = sext i32 %i.ayt to i64
  %i.ayv = getelementptr inbounds i8, ptr %0, i64 %i.ayu
  store i8 32, ptr %i.ayv, align 1
  br label %pred.store.continue1405

pred.store.continue1405:                          ; preds = %pred.store.if1404, %pred.store.continue1403
  %i.ayw = extractelement <16 x i1> %i.awo, i64 15
  br i1 %i.ayw, label %pred.store.if1406, label %pred.store.continue1407

pred.store.if1406:                                ; preds = %pred.store.continue1405
  %i.ayx = add i32 %i.awn, 15
  %i.ayy = sext i32 %i.ayx to i64
  %i.ayz = getelementptr inbounds i8, ptr %0, i64 %i.ayy
  store i8 32, ptr %i.ayz, align 1
  br label %pred.store.continue1407

pred.store.continue1407:                          ; preds = %pred.store.if1406, %pred.store.continue1405
  %index.next1408 = add nuw i32 %index1374, 16    ; 2 uses
  %vec.ind.next1409 = add nsw <16 x i32> %vec.ind1375, splat (i32 16)
  %i.aza = icmp eq i32 %index.next1408, %n.vec1367
  br i1 %i.aza, label %middle.block1410, label %vector.body1373, !llvm.loop !39

middle.block1410:                                 ; preds = %pred.store.continue1407
  br i1 %cmp.n1411, label %.loopexit.i.us33.i221.5, label %vec.epilog.iter.check1416

vec.epilog.iter.check1416:                        ; preds = %middle.block1410
  br i1 %min.epilog.iters.check1417, label %.lr.ph.i.us29.i226.5.preheader, label %vec.epilog.ph1418, !prof !14

vec.epilog.ph1418:                                ; preds = %vector.main.loop.iter.check1363, %vec.epilog.iter.check1416
  %vec.epilog.resume.val1412 = phi i32 [ %n.vec1367, %vec.epilog.iter.check1416 ], [ 0, %vector.main.loop.iter.check1363 ]
  %bc.resume.val1413 = phi i32 [ %i.awm, %vec.epilog.iter.check1416 ], [ %i.awe, %vector.main.loop.iter.check1363 ]
  %i.azb = add i32 %i.awe, %n.vec1420             ; 2 uses
  %broadcast.splatinsert1423 = insertelement <4 x i32> poison, i32 %bc.resume.val1413, i64 0
  %broadcast.splat1424 = shufflevector <4 x i32> %broadcast.splatinsert1423, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction1425 = add nsw <4 x i32> %broadcast.splat1424, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body1426

vec.epilog.vector.body1426:                       ; preds = %pred.store.continue1436, %vec.epilog.ph1418
  %index1427 = phi i32 [ %vec.epilog.resume.val1412, %vec.epilog.ph1418 ], [ %index.next1437, %pred.store.continue1436 ] ; 2 uses
  %vec.ind1428 = phi <4 x i32> [ %induction1425, %vec.epilog.ph1418 ], [ %vec.ind.next1438, %pred.store.continue1436 ] ; 2 uses
  %i.azc = add i32 %i.awe, %index1427             ; 4 uses
  %i.azd = icmp slt <4 x i32> %vec.ind1428, %broadcast.splat1422 ; 4 uses
  %i.aze = extractelement <4 x i1> %i.azd, i64 0
  br i1 %i.aze, label %pred.store.if1429, label %pred.store.continue1430

pred.store.if1429:                                ; preds = %vec.epilog.vector.body1426
  %i.azf = sext i32 %i.azc to i64
  %i.azg = getelementptr inbounds i8, ptr %0, i64 %i.azf
  store i8 32, ptr %i.azg, align 1
  br label %pred.store.continue1430

pred.store.continue1430:                          ; preds = %pred.store.if1429, %vec.epilog.vector.body1426
  %i.azh = extractelement <4 x i1> %i.azd, i64 1
  br i1 %i.azh, label %pred.store.if1431, label %pred.store.continue1432

pred.store.if1431:                                ; preds = %pred.store.continue1430
  %i.azi = add i32 %i.azc, 1
  %i.azj = sext i32 %i.azi to i64
  %i.azk = getelementptr inbounds i8, ptr %0, i64 %i.azj
  store i8 32, ptr %i.azk, align 1
  br label %pred.store.continue1432

pred.store.continue1432:                          ; preds = %pred.store.if1431, %pred.store.continue1430
  %i.azl = extractelement <4 x i1> %i.azd, i64 2
  br i1 %i.azl, label %pred.store.if1433, label %pred.store.continue1434

pred.store.if1433:                                ; preds = %pred.store.continue1432
  %i.azm = add i32 %i.azc, 2
  %i.azn = sext i32 %i.azm to i64
  %i.azo = getelementptr inbounds i8, ptr %0, i64 %i.azn
  store i8 32, ptr %i.azo, align 1
  br label %pred.store.continue1434

pred.store.continue1434:                          ; preds = %pred.store.if1433, %pred.store.continue1432
  %i.azp = extractelement <4 x i1> %i.azd, i64 3
  br i1 %i.azp, label %pred.store.if1435, label %pred.store.continue1436

pred.store.if1435:                                ; preds = %pred.store.continue1434
  %i.azq = add i32 %i.azc, 3
  %i.azr = sext i32 %i.azq to i64
  %i.azs = getelementptr inbounds i8, ptr %0, i64 %i.azr
  store i8 32, ptr %i.azs, align 1
  br label %pred.store.continue1436

pred.store.continue1436:                          ; preds = %pred.store.if1435, %pred.store.continue1434
  %index.next1437 = add nuw i32 %index1427, 4     ; 2 uses
  %vec.ind.next1438 = add nsw <4 x i32> %vec.ind1428, splat (i32 4)
  %i.azt = icmp eq i32 %index.next1437, %n.vec1420
  br i1 %i.azt, label %vec.epilog.middle.block1439, label %vec.epilog.vector.body1426, !llvm.loop !40

vec.epilog.middle.block1439:                      ; preds = %pred.store.continue1436
  br i1 %cmp.n1440, label %.loopexit.i.us33.i221.5, label %.lr.ph.i.us29.i226.5.preheader

.lr.ph.i.us29.i226.5.preheader:                   ; preds = %iter.check1414, %vec.epilog.iter.check1416, %vec.epilog.middle.block1439
  %.pre.i.us31.i229474.5.ph = phi i32 [ %i.awe, %iter.check1414 ], [ %i.awm, %vec.epilog.iter.check1416 ], [ %i.azb, %vec.epilog.middle.block1439 ]
  %.030.i.us30.i227.5.ph = phi i32 [ 0, %iter.check1414 ], [ %n.vec1367, %vec.epilog.iter.check1416 ], [ %n.vec1420, %vec.epilog.middle.block1439 ]
  br label %.lr.ph.i.us29.i226.5

.lr.ph.i.us29.i226.5:                             ; preds = %.lr.ph.i.us29.i226.5.preheader, %bb.ej
  %.pre.i.us31.i229474.5 = phi i32 [ %i.azx, %bb.ej ], [ %.pre.i.us31.i229474.5.ph, %.lr.ph.i.us29.i226.5.preheader ] ; 3 uses
  %.030.i.us30.i227.5 = phi i32 [ %i.azy, %bb.ej ], [ %.030.i.us30.i227.5.ph, %.lr.ph.i.us29.i226.5.preheader ]
  %i.azu = icmp slt i32 %.pre.i.us31.i229474.5, %1
  br i1 %i.azu, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %.lr.ph.i.us29.i226.5
  %i.azv = sext i32 %.pre.i.us31.i229474.5 to i64
  %i.azw = getelementptr inbounds i8, ptr %0, i64 %i.azv
  store i8 32, ptr %i.azw, align 1
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %.lr.ph.i.us29.i226.5
  %i.azx = add nsw i32 %.pre.i.us31.i229474.5, 1  ; 2 uses
  %i.azy = add nuw nsw i32 %.030.i.us30.i227.5, 1 ; 2 uses
  %exitcond.not.i.us32.i228.5 = icmp eq i32 %i.azy, %2
  br i1 %exitcond.not.i.us32.i228.5, label %.loopexit.i.us33.i221.5, label %.lr.ph.i.us29.i226.5, !llvm.loop !41

.loopexit.i.us33.i221.5:                          ; preds = %bb.ej, %middle.block1410, %vec.epilog.middle.block1439, %bb.eh, %bb.eg
  %.lcssa475478.5 = phi i32 [ %i.awe, %bb.eg ], [ %i.awe, %bb.eh ], [ %i.azb, %vec.epilog.middle.block1439 ], [ %i.awm, %middle.block1410 ], [ %i.azx, %bb.ej ] ; 3 uses
  %i.azz = icmp slt i32 %.lcssa475478.5, %1
  br i1 %i.azz, label %bb.ek, label %_ZL10outputCharcPcPiii.exit.us35.i223.5

bb.ek:                                            ; preds = %.loopexit.i.us33.i221.5
  %i.baa = sext i32 %.lcssa475478.5 to i64
  %i.bab = getelementptr inbounds i8, ptr %0, i64 %i.baa
  store i8 42, ptr %i.bab, align 1
  br label %_ZL10outputCharcPcPiii.exit.us35.i223.5

_ZL10outputCharcPcPiii.exit.us35.i223.5:          ; preds = %bb.ek, %.loopexit.i.us33.i221.5
  %i.bac = add nsw i32 %.lcssa475478.5, 1         ; 12 uses
  %i.bad = icmp eq i32 %i.bac, 0
  br i1 %i.bad, label %iter.check1333, label %bb.el

bb.el:                                            ; preds = %_ZL10outputCharcPcPiii.exit.us35.i223.5
  %i.bae = icmp slt i32 %i.bac, %1
  br i1 %i.bae, label %bb.em, label %.loopexit.i.us33.i221.6

bb.em:                                            ; preds = %bb.el
  %i.baf = sext i32 %i.bac to i64
  %i.bag = getelementptr i8, ptr %0, i64 %i.baf
  %i.bah = getelementptr i8, ptr %i.bag, i64 -1
  %i.bai = load i8, ptr %i.bah, align 1
  %i.baj = icmp eq i8 %i.bai, 10
  br i1 %i.baj, label %iter.check1333, label %.loopexit.i.us33.i221.6

iter.check1333:                                   ; preds = %bb.em, %_ZL10outputCharcPcPiii.exit.us35.i223.5
  br i1 %min.iters.check1281, label %.lr.ph.i.us29.i226.6.preheader, label %vector.main.loop.iter.check1282

vector.main.loop.iter.check1282:                  ; preds = %iter.check1333
  br i1 %min.iters.check1283, label %vec.epilog.ph1337, label %vector.ph1284

vector.ph1284:                                    ; preds = %vector.main.loop.iter.check1282
  %i.bak = add i32 %i.bac, %n.vec1286             ; 3 uses
  %broadcast.splatinsert1289 = insertelement <16 x i32> poison, i32 %i.bac, i64 0
  %broadcast.splat1290 = shufflevector <16 x i32> %broadcast.splatinsert1289, <16 x i32> poison, <16 x i32> zeroinitializer
  %induction1291 = add nsw <16 x i32> %broadcast.splat1290, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  br label %vector.body1292

vector.body1292:                                  ; preds = %pred.store.continue1326, %vector.ph1284
  %index1293 = phi i32 [ 0, %vector.ph1284 ], [ %index.next1327, %pred.store.continue1326 ] ; 2 uses
  %vec.ind1294 = phi <16 x i32> [ %induction1291, %vector.ph1284 ], [ %vec.ind.next1328, %pred.store.continue1326 ] ; 2 uses
  %i.bal = add i32 %i.bac, %index1293             ; 16 uses
  %i.bam = icmp slt <16 x i32> %vec.ind1294, %broadcast.splat1288 ; 16 uses
  %i.ban = extractelement <16 x i1> %i.bam, i64 0
  br i1 %i.ban, label %pred.store.if1295, label %pred.store.continue1296

pred.store.if1295:                                ; preds = %vector.body1292
  %i.bao = sext i32 %i.bal to i64
  %i.bap = getelementptr inbounds i8, ptr %0, i64 %i.bao
  store i8 32, ptr %i.bap, align 1
  br label %pred.store.continue1296

pred.store.continue1296:                          ; preds = %pred.store.if1295, %vector.body1292
  %i.baq = extractelement <16 x i1> %i.bam, i64 1
  br i1 %i.baq, label %pred.store.if1297, label %pred.store.continue1298

pred.store.if1297:                                ; preds = %pred.store.continue1296
  %i.bar = add i32 %i.bal, 1
  %i.bas = sext i32 %i.bar to i64
  %i.bat = getelementptr inbounds i8, ptr %0, i64 %i.bas
  store i8 32, ptr %i.bat, align 1
  br label %pred.store.continue1298

pred.store.continue1298:                          ; preds = %pred.store.if1297, %pred.store.continue1296
  %i.bau = extractelement <16 x i1> %i.bam, i64 2
  br i1 %i.bau, label %pred.store.if1299, label %pred.store.continue1300

pred.store.if1299:                                ; preds = %pred.store.continue1298
  %i.bav = add i32 %i.bal, 2
  %i.baw = sext i32 %i.bav to i64
  %i.bax = getelementptr inbounds i8, ptr %0, i64 %i.baw
  store i8 32, ptr %i.bax, align 1
  br label %pred.store.continue1300

pred.store.continue1300:                          ; preds = %pred.store.if1299, %pred.store.continue1298
  %i.bay = extractelement <16 x i1> %i.bam, i64 3
  br i1 %i.bay, label %pred.store.if1301, label %pred.store.continue1302

pred.store.if1301:                                ; preds = %pred.store.continue1300
  %i.baz = add i32 %i.bal, 3
  %i.bba = sext i32 %i.baz to i64
  %i.bbb = getelementptr inbounds i8, ptr %0, i64 %i.bba
  store i8 32, ptr %i.bbb, align 1
  br label %pred.store.continue1302

pred.store.continue1302:                          ; preds = %pred.store.if1301, %pred.store.continue1300
  %i.bbc = extractelement <16 x i1> %i.bam, i64 4
  br i1 %i.bbc, label %pred.store.if1303, label %pred.store.continue1304

pred.store.if1303:                                ; preds = %pred.store.continue1302
  %i.bbd = add i32 %i.bal, 4
  %i.bbe = sext i32 %i.bbd to i64
  %i.bbf = getelementptr inbounds i8, ptr %0, i64 %i.bbe
  store i8 32, ptr %i.bbf, align 1
  br label %pred.store.continue1304

pred.store.continue1304:                          ; preds = %pred.store.if1303, %pred.store.continue1302
  %i.bbg = extractelement <16 x i1> %i.bam, i64 5
  br i1 %i.bbg, label %pred.store.if1305, label %pred.store.continue1306

pred.store.if1305:                                ; preds = %pred.store.continue1304
  %i.bbh = add i32 %i.bal, 5
  %i.bbi = sext i32 %i.bbh to i64
  %i.bbj = getelementptr inbounds i8, ptr %0, i64 %i.bbi
  store i8 32, ptr %i.bbj, align 1
  br label %pred.store.continue1306

pred.store.continue1306:                          ; preds = %pred.store.if1305, %pred.store.continue1304
  %i.bbk = extractelement <16 x i1> %i.bam, i64 6
  br i1 %i.bbk, label %pred.store.if1307, label %pred.store.continue1308

pred.store.if1307:                                ; preds = %pred.store.continue1306
  %i.bbl = add i32 %i.bal, 6
  %i.bbm = sext i32 %i.bbl to i64
  %i.bbn = getelementptr inbounds i8, ptr %0, i64 %i.bbm
  store i8 32, ptr %i.bbn, align 1
  br label %pred.store.continue1308

pred.store.continue1308:                          ; preds = %pred.store.if1307, %pred.store.continue1306
  %i.bbo = extractelement <16 x i1> %i.bam, i64 7
  br i1 %i.bbo, label %pred.store.if1309, label %pred.store.continue1310

pred.store.if1309:                                ; preds = %pred.store.continue1308
  %i.bbp = add i32 %i.bal, 7
  %i.bbq = sext i32 %i.bbp to i64
  %i.bbr = getelementptr inbounds i8, ptr %0, i64 %i.bbq
  store i8 32, ptr %i.bbr, align 1
  br label %pred.store.continue1310

pred.store.continue1310:                          ; preds = %pred.store.if1309, %pred.store.continue1308
  %i.bbs = extractelement <16 x i1> %i.bam, i64 8
  br i1 %i.bbs, label %pred.store.if1311, label %pred.store.continue1312

pred.store.if1311:                                ; preds = %pred.store.continue1310
  %i.bbt = add i32 %i.bal, 8
  %i.bbu = sext i32 %i.bbt to i64
  %i.bbv = getelementptr inbounds i8, ptr %0, i64 %i.bbu
  store i8 32, ptr %i.bbv, align 1
  br label %pred.store.continue1312

pred.store.continue1312:                          ; preds = %pred.store.if1311, %pred.store.continue1310
  %i.bbw = extractelement <16 x i1> %i.bam, i64 9
  br i1 %i.bbw, label %pred.store.if1313, label %pred.store.continue1314

pred.store.if1313:                                ; preds = %pred.store.continue1312
  %i.bbx = add i32 %i.bal, 9
  %i.bby = sext i32 %i.bbx to i64
  %i.bbz = getelementptr inbounds i8, ptr %0, i64 %i.bby
  store i8 32, ptr %i.bbz, align 1
  br label %pred.store.continue1314

pred.store.continue1314:                          ; preds = %pred.store.if1313, %pred.store.continue1312
  %i.bca = extractelement <16 x i1> %i.bam, i64 10
  br i1 %i.bca, label %pred.store.if1315, label %pred.store.continue1316

pred.store.if1315:                                ; preds = %pred.store.continue1314
  %i.bcb = add i32 %i.bal, 10
  %i.bcc = sext i32 %i.bcb to i64
  %i.bcd = getelementptr inbounds i8, ptr %0, i64 %i.bcc
  store i8 32, ptr %i.bcd, align 1
  br label %pred.store.continue1316

pred.store.continue1316:                          ; preds = %pred.store.if1315, %pred.store.continue1314
  %i.bce = extractelement <16 x i1> %i.bam, i64 11
  br i1 %i.bce, label %pred.store.if1317, label %pred.store.continue1318

pred.store.if1317:                                ; preds = %pred.store.continue1316
  %i.bcf = add i32 %i.bal, 11
  %i.bcg = sext i32 %i.bcf to i64
  %i.bch = getelementptr inbounds i8, ptr %0, i64 %i.bcg
  store i8 32, ptr %i.bch, align 1
  br label %pred.store.continue1318

pred.store.continue1318:                          ; preds = %pred.store.if1317, %pred.store.continue1316
  %i.bci = extractelement <16 x i1> %i.bam, i64 12
  br i1 %i.bci, label %pred.store.if1319, label %pred.store.continue1320

pred.store.if1319:                                ; preds = %pred.store.continue1318
  %i.bcj = add i32 %i.bal, 12
  %i.bck = sext i32 %i.bcj to i64
  %i.bcl = getelementptr inbounds i8, ptr %0, i64 %i.bck
  store i8 32, ptr %i.bcl, align 1
  br label %pred.store.continue1320

pred.store.continue1320:                          ; preds = %pred.store.if1319, %pred.store.continue1318
  %i.bcm = extractelement <16 x i1> %i.bam, i64 13
  br i1 %i.bcm, label %pred.store.if1321, label %pred.store.continue1322

pred.store.if1321:                                ; preds = %pred.store.continue1320
  %i.bcn = add i32 %i.bal, 13
  %i.bco = sext i32 %i.bcn to i64
  %i.bcp = getelementptr inbounds i8, ptr %0, i64 %i.bco
  store i8 32, ptr %i.bcp, align 1
  br label %pred.store.continue1322

pred.store.continue1322:                          ; preds = %pred.store.if1321, %pred.store.continue1320
  %i.bcq = extractelement <16 x i1> %i.bam, i64 14
  br i1 %i.bcq, label %pred.store.if1323, label %pred.store.continue1324

pred.store.if1323:                                ; preds = %pred.store.continue1322
  %i.bcr = add i32 %i.bal, 14
  %i.bcs = sext i32 %i.bcr to i64
  %i.bct = getelementptr inbounds i8, ptr %0, i64 %i.bcs
  store i8 32, ptr %i.bct, align 1
  br label %pred.store.continue1324

pred.store.continue1324:                          ; preds = %pred.store.if1323, %pred.store.continue1322
  %i.bcu = extractelement <16 x i1> %i.bam, i64 15
  br i1 %i.bcu, label %pred.store.if1325, label %pred.store.continue1326

pred.store.if1325:                                ; preds = %pred.store.continue1324
  %i.bcv = add i32 %i.bal, 15
  %i.bcw = sext i32 %i.bcv to i64
  %i.bcx = getelementptr inbounds i8, ptr %0, i64 %i.bcw
  store i8 32, ptr %i.bcx, align 1
  br label %pred.store.continue1326

pred.store.continue1326:                          ; preds = %pred.store.if1325, %pred.store.continue1324
  %index.next1327 = add nuw i32 %index1293, 16    ; 2 uses
  %vec.ind.next1328 = add nsw <16 x i32> %vec.ind1294, splat (i32 16)
  %i.bcy = icmp eq i32 %index.next1327, %n.vec1286
  br i1 %i.bcy, label %middle.block1329, label %vector.body1292, !llvm.loop !42

middle.block1329:                                 ; preds = %pred.store.continue1326
  br i1 %cmp.n1330, label %.loopexit.i.us33.i221.6, label %vec.epilog.iter.check1335

vec.epilog.iter.check1335:                        ; preds = %middle.block1329
  br i1 %min.epilog.iters.check1336, label %.lr.ph.i.us29.i226.6.preheader, label %vec.epilog.ph1337, !prof !14

vec.epilog.ph1337:                                ; preds = %vector.main.loop.iter.check1282, %vec.epilog.iter.check1335
  %vec.epilog.resume.val1331 = phi i32 [ %n.vec1286, %vec.epilog.iter.check1335 ], [ 0, %vector.main.loop.iter.check1282 ]
  %bc.resume.val1332 = phi i32 [ %i.bak, %vec.epilog.iter.check1335 ], [ %i.bac, %vector.main.loop.iter.check1282 ]
  %i.bcz = add i32 %i.bac, %n.vec1339             ; 2 uses
  %broadcast.splatinsert1342 = insertelement <4 x i32> poison, i32 %bc.resume.val1332, i64 0
  %broadcast.splat1343 = shufflevector <4 x i32> %broadcast.splatinsert1342, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction1344 = add nsw <4 x i32> %broadcast.splat1343, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body1345

vec.epilog.vector.body1345:                       ; preds = %pred.store.continue1355, %vec.epilog.ph1337
  %index1346 = phi i32 [ %vec.epilog.resume.val1331, %vec.epilog.ph1337 ], [ %index.next1356, %pred.store.continue1355 ] ; 2 uses
  %vec.ind1347 = phi <4 x i32> [ %induction1344, %vec.epilog.ph1337 ], [ %vec.ind.next1357, %pred.store.continue1355 ] ; 2 uses
  %i.bda = add i32 %i.bac, %index1346             ; 4 uses
  %i.bdb = icmp slt <4 x i32> %vec.ind1347, %broadcast.splat1341 ; 4 uses
  %i.bdc = extractelement <4 x i1> %i.bdb, i64 0
  br i1 %i.bdc, label %pred.store.if1348, label %pred.store.continue1349

pred.store.if1348:                                ; preds = %vec.epilog.vector.body1345
  %i.bdd = sext i32 %i.bda to i64
  %i.bde = getelementptr inbounds i8, ptr %0, i64 %i.bdd
  store i8 32, ptr %i.bde, align 1
  br label %pred.store.continue1349

pred.store.continue1349:                          ; preds = %pred.store.if1348, %vec.epilog.vector.body1345
  %i.bdf = extractelement <4 x i1> %i.bdb, i64 1
  br i1 %i.bdf, label %pred.store.if1350, label %pred.store.continue1351

pred.store.if1350:                                ; preds = %pred.store.continue1349
  %i.bdg = add i32 %i.bda, 1
  %i.bdh = sext i32 %i.bdg to i64
  %i.bdi = getelementptr inbounds i8, ptr %0, i64 %i.bdh
  store i8 32, ptr %i.bdi, align 1
  br label %pred.store.continue1351

pred.store.continue1351:                          ; preds = %pred.store.if1350, %pred.store.continue1349
  %i.bdj = extractelement <4 x i1> %i.bdb, i64 2
  br i1 %i.bdj, label %pred.store.if1352, label %pred.store.continue1353

pred.store.if1352:                                ; preds = %pred.store.continue1351
  %i.bdk = add i32 %i.bda, 2
  %i.bdl = sext i32 %i.bdk to i64
  %i.bdm = getelementptr inbounds i8, ptr %0, i64 %i.bdl
  store i8 32, ptr %i.bdm, align 1
  br label %pred.store.continue1353

pred.store.continue1353:                          ; preds = %pred.store.if1352, %pred.store.continue1351
  %i.bdn = extractelement <4 x i1> %i.bdb, i64 3
  br i1 %i.bdn, label %pred.store.if1354, label %pred.store.continue1355

pred.store.if1354:                                ; preds = %pred.store.continue1353
  %i.bdo = add i32 %i.bda, 3
  %i.bdp = sext i32 %i.bdo to i64
  %i.bdq = getelementptr inbounds i8, ptr %0, i64 %i.bdp
  store i8 32, ptr %i.bdq, align 1
  br label %pred.store.continue1355

pred.store.continue1355:                          ; preds = %pred.store.if1354, %pred.store.continue1353
  %index.next1356 = add nuw i32 %index1346, 4     ; 2 uses
  %vec.ind.next1357 = add nsw <4 x i32> %vec.ind1347, splat (i32 4)
  %i.bdr = icmp eq i32 %index.next1356, %n.vec1339
  br i1 %i.bdr, label %vec.epilog.middle.block1358, label %vec.epilog.vector.body1345, !llvm.loop !43

vec.epilog.middle.block1358:                      ; preds = %pred.store.continue1355
  br i1 %cmp.n1359, label %.loopexit.i.us33.i221.6, label %.lr.ph.i.us29.i226.6.preheader

.lr.ph.i.us29.i226.6.preheader:                   ; preds = %iter.check1333, %vec.epilog.iter.check1335, %vec.epilog.middle.block1358
  %.pre.i.us31.i229474.6.ph = phi i32 [ %i.bac, %iter.check1333 ], [ %i.bak, %vec.epilog.iter.check1335 ], [ %i.bcz, %vec.epilog.middle.block1358 ]
  %.030.i.us30.i227.6.ph = phi i32 [ 0, %iter.check1333 ], [ %n.vec1286, %vec.epilog.iter.check1335 ], [ %n.vec1339, %vec.epilog.middle.block1358 ]
  br label %.lr.ph.i.us29.i226.6

.lr.ph.i.us29.i226.6:                             ; preds = %.lr.ph.i.us29.i226.6.preheader, %bb.eo
  %.pre.i.us31.i229474.6 = phi i32 [ %i.bdv, %bb.eo ], [ %.pre.i.us31.i229474.6.ph, %.lr.ph.i.us29.i226.6.preheader ] ; 3 uses
  %.030.i.us30.i227.6 = phi i32 [ %i.bdw, %bb.eo ], [ %.030.i.us30.i227.6.ph, %.lr.ph.i.us29.i226.6.preheader ]
  %i.bds = icmp slt i32 %.pre.i.us31.i229474.6, %1
  br i1 %i.bds, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %.lr.ph.i.us29.i226.6
  %i.bdt = sext i32 %.pre.i.us31.i229474.6 to i64
  %i.bdu = getelementptr inbounds i8, ptr %0, i64 %i.bdt
  store i8 32, ptr %i.bdu, align 1
  br label %bb.eo

bb.eo:                                            ; preds = %bb.en, %.lr.ph.i.us29.i226.6
  %i.bdv = add nsw i32 %.pre.i.us31.i229474.6, 1  ; 2 uses
  %i.bdw = add nuw nsw i32 %.030.i.us30.i227.6, 1 ; 2 uses
  %exitcond.not.i.us32.i228.6 = icmp eq i32 %i.bdw, %2
  br i1 %exitcond.not.i.us32.i228.6, label %.loopexit.i.us33.i221.6, label %.lr.ph.i.us29.i226.6, !llvm.loop !44

.loopexit.i.us33.i221.6:                          ; preds = %bb.eo, %middle.block1329, %vec.epilog.middle.block1358, %bb.em, %bb.el
  %.lcssa475478.6 = phi i32 [ %i.bac, %bb.el ], [ %i.bac, %bb.em ], [ %i.bcz, %vec.epilog.middle.block1358 ], [ %i.bak, %middle.block1329 ], [ %i.bdv, %bb.eo ] ; 3 uses
  %i.bdx = icmp slt i32 %.lcssa475478.6, %1
  br i1 %i.bdx, label %bb.ep, label %_ZL10outputCharcPcPiii.exit.us35.i223.6

bb.ep:                                            ; preds = %.loopexit.i.us33.i221.6
  %i.bdy = sext i32 %.lcssa475478.6 to i64
  %i.bdz = getelementptr inbounds i8, ptr %0, i64 %i.bdy
  store i8 32, ptr %i.bdz, align 1
  br label %_ZL10outputCharcPcPiii.exit.us35.i223.6

_ZL10outputCharcPcPiii.exit.us35.i223.6:          ; preds = %bb.ep, %.loopexit.i.us33.i221.6
  %i.bea = add nsw i32 %.lcssa475478.6, 1         ; 2 uses
  %i.beb = icmp eq i32 %i.bea, 0
  br i1 %i.beb, label %iter.check1253, label %.loopexit.i.us33.i221.7

iter.check1253:                                   ; preds = %_ZL10outputCharcPcPiii.exit.us35.i223.6
  br i1 %min.iters.check1173, label %.lr.ph.i.us29.i226.7.preheader, label %vector.main.loop.iter.check1174

vector.main.loop.iter.check1174:                  ; preds = %iter.check1253
  br i1 %min.iters.check1175, label %vec.epilog.ph1257, label %vector.body1181

vector.body1181:                                  ; preds = %vector.main.loop.iter.check1174, %pred.store.continue1247
  %index1182 = phi i32 [ %index.next1248, %pred.store.continue1247 ], [ 0, %vector.main.loop.iter.check1174 ] ; 33 uses
  %vec.ind1183 = phi <16 x i32> [ %vec.ind.next1249, %pred.store.continue1247 ], [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, %vector.main.loop.iter.check1174 ] ; 3 uses
  %step.add = add nuw <16 x i32> %vec.ind1183, splat (i32 16)
  %i.bec = icmp slt <16 x i32> %vec.ind1183, %broadcast.splat1180 ; 16 uses
  %i.bed = icmp slt <16 x i32> %step.add, %broadcast.splat1180 ; 16 uses
  %i.bee = extractelement <16 x i1> %i.bec, i64 0
  br i1 %i.bee, label %pred.store.if1184, label %pred.store.continue1185

pred.store.if1184:                                ; preds = %vector.body1181
  %i.bef = zext nneg i32 %index1182 to i64
  %i.beg = getelementptr inbounds nuw i8, ptr %0, i64 %i.bef
  store i8 32, ptr %i.beg, align 1
  br label %pred.store.continue1185

pred.store.continue1185:                          ; preds = %pred.store.if1184, %vector.body1181
  %i.beh = extractelement <16 x i1> %i.bec, i64 1
  br i1 %i.beh, label %pred.store.if1186, label %pred.store.continue1187

pred.store.if1186:                                ; preds = %pred.store.continue1185
  %i.bei = sext i32 %index1182 to i64
  %i.bej = getelementptr inbounds nuw i8, ptr %0, i64 %i.bei
  %i.bek = getelementptr inbounds nuw i8, ptr %i.bej, i64 1
  store i8 32, ptr %i.bek, align 1
  br label %pred.store.continue1187

pred.store.continue1187:                          ; preds = %pred.store.if1186, %pred.store.continue1185
  %i.bel = extractelement <16 x i1> %i.bec, i64 2
  br i1 %i.bel, label %pred.store.if1188, label %pred.store.continue1189

pred.store.if1188:                                ; preds = %pred.store.continue1187
  %i.bem = sext i32 %index1182 to i64
  %i.ben = getelementptr inbounds nuw i8, ptr %0, i64 %i.bem
  %i.beo = getelementptr inbounds nuw i8, ptr %i.ben, i64 2
  store i8 32, ptr %i.beo, align 1
  br label %pred.store.continue1189

pred.store.continue1189:                          ; preds = %pred.store.if1188, %pred.store.continue1187
  %i.bep = extractelement <16 x i1> %i.bec, i64 3
  br i1 %i.bep, label %pred.store.if1190, label %pred.store.continue1191

pred.store.if1190:                                ; preds = %pred.store.continue1189
  %i.beq = sext i32 %index1182 to i64
  %i.ber = getelementptr inbounds nuw i8, ptr %0, i64 %i.beq
  %i.bes = getelementptr inbounds nuw i8, ptr %i.ber, i64 3
  store i8 32, ptr %i.bes, align 1
  br label %pred.store.continue1191

pred.store.continue1191:                          ; preds = %pred.store.if1190, %pred.store.continue1189
  %i.bet = extractelement <16 x i1> %i.bec, i64 4
  br i1 %i.bet, label %pred.store.if1192, label %pred.store.continue1193

pred.store.if1192:                                ; preds = %pred.store.continue1191
  %i.beu = sext i32 %index1182 to i64
  %i.bev = getelementptr inbounds nuw i8, ptr %0, i64 %i.beu
  %i.bew = getelementptr inbounds nuw i8, ptr %i.bev, i64 4
  store i8 32, ptr %i.bew, align 1
  br label %pred.store.continue1193

pred.store.continue1193:                          ; preds = %pred.store.if1192, %pred.store.continue1191
  %i.bex = extractelement <16 x i1> %i.bec, i64 5
  br i1 %i.bex, label %pred.store.if1194, label %pred.store.continue1195

pred.store.if1194:                                ; preds = %pred.store.continue1193
  %i.bey = sext i32 %index1182 to i64
  %i.bez = getelementptr inbounds nuw i8, ptr %0, i64 %i.bey
  %i.bfa = getelementptr inbounds nuw i8, ptr %i.bez, i64 5
  store i8 32, ptr %i.bfa, align 1
  br label %pred.store.continue1195

pred.store.continue1195:                          ; preds = %pred.store.if1194, %pred.store.continue1193
  %i.bfb = extractelement <16 x i1> %i.bec, i64 6
  br i1 %i.bfb, label %pred.store.if1196, label %pred.store.continue1197

pred.store.if1196:                                ; preds = %pred.store.continue1195
  %i.bfc = sext i32 %index1182 to i64
  %i.bfd = getelementptr inbounds nuw i8, ptr %0, i64 %i.bfc
  %i.bfe = getelementptr inbounds nuw i8, ptr %i.bfd, i64 6
  store i8 32, ptr %i.bfe, align 1
  br label %pred.store.continue1197

pred.store.continue1197:                          ; preds = %pred.store.if1196, %pred.store.continue1195
  %i.bff = extractelement <16 x i1> %i.bec, i64 7
  br i1 %i.bff, label %pred.store.if1198, label %pred.store.continue1199

pred.store.if1198:                                ; preds = %pred.store.continue1197
  %i.bfg = sext i32 %index1182 to i64
  %i.bfh = getelementptr inbounds nuw i8, ptr %0, i64 %i.bfg
  %i.bfi = getelementptr inbounds nuw i8, ptr %i.bfh, i64 7
  store i8 32, ptr %i.bfi, align 1
  br label %pred.store.continue1199

pred.store.continue1199:                          ; preds = %pred.store.if1198, %pred.store.continue1197
  %i.bfj = extractelement <16 x i1> %i.bec, i64 8
  br i1 %i.bfj, label %pred.store.if1200, label %pred.store.continue1201

pred.store.if1200:                                ; preds = %pred.store.continue1199
  %i.bfk = sext i32 %index1182 to i64
  %i.bfl = getelementptr inbounds nuw i8, ptr %0, i64 %i.bfk
  %i.bfm = getelementptr inbounds nuw i8, ptr %i.bfl, i64 8
  store i8 32, ptr %i.bfm, align 1
  br label %pred.store.continue1201

pred.store.continue1201:                          ; preds = %pred.store.if1200, %pred.store.continue1199
  %i.bfn = extractelement <16 x i1> %i.bec, i64 9
  br i1 %i.bfn, label %pred.store.if1202, label %pred.store.continue1203

pred.store.if1202:                                ; preds = %pred.store.continue1201
  %i.bfo = sext i32 %index1182 to i64
  %i.bfp = getelementptr inbounds nuw i8, ptr %0, i64 %i.bfo
  %i.bfq = getelementptr inbounds nuw i8, ptr %i.bfp, i64 9
  store i8 32, ptr %i.bfq, align 1
  br label %pred.store.continue1203

pred.store.continue1203:                          ; preds = %pred.store.if1202, %pred.store.continue1201
  %i.bfr = extractelement <16 x i1> %i.bec, i64 10
  br i1 %i.bfr, label %pred.store.if1204, label %pred.store.continue1205

pred.store.if1204:                                ; preds = %pred.store.continue1203
  %i.bfs = sext i32 %index1182 to i64
  %i.bft = getelementptr inbounds nuw i8, ptr %0, i64 %i.bfs
  %i.bfu = getelementptr inbounds nuw i8, ptr %i.bft, i64 10
  store i8 32, ptr %i.bfu, align 1
  br label %pred.store.continue1205

pred.store.continue1205:                          ; preds = %pred.store.if1204, %pred.store.continue1203
  %i.bfv = extractelement <16 x i1> %i.bec, i64 11
  br i1 %i.bfv, label %pred.store.if1206, label %pred.store.continue1207

pred.store.if1206:                                ; preds = %pred.store.continue1205
  %i.bfw = sext i32 %index1182 to i64
  %i.bfx = getelementptr inbounds nuw i8, ptr %0, i64 %i.bfw
  %i.bfy = getelementptr inbounds nuw i8, ptr %i.bfx, i64 11
  store i8 32, ptr %i.bfy, align 1
  br label %pred.store.continue1207

pred.store.continue1207:                          ; preds = %pred.store.if1206, %pred.store.continue1205
  %i.bfz = extractelement <16 x i1> %i.bec, i64 12
  br i1 %i.bfz, label %pred.store.if1208, label %pred.store.continue1209

pred.store.if1208:                                ; preds = %pred.store.continue1207
  %i.bga = sext i32 %index1182 to i64
  %i.bgb = getelementptr inbounds nuw i8, ptr %0, i64 %i.bga
  %i.bgc = getelementptr inbounds nuw i8, ptr %i.bgb, i64 12
  store i8 32, ptr %i.bgc, align 1
  br label %pred.store.continue1209

pred.store.continue1209:                          ; preds = %pred.store.if1208, %pred.store.continue1207
  %i.bgd = extractelement <16 x i1> %i.bec, i64 13
  br i1 %i.bgd, label %pred.store.if1210, label %pred.store.continue1211

pred.store.if1210:                                ; preds = %pred.store.continue1209
  %i.bge = sext i32 %index1182 to i64
  %i.bgf = getelementptr inbounds nuw i8, ptr %0, i64 %i.bge
  %i.bgg = getelementptr inbounds nuw i8, ptr %i.bgf, i64 13
  store i8 32, ptr %i.bgg, align 1
  br label %pred.store.continue1211

pred.store.continue1211:                          ; preds = %pred.store.if1210, %pred.store.continue1209
  %i.bgh = extractelement <16 x i1> %i.bec, i64 14
  br i1 %i.bgh, label %pred.store.if1212, label %pred.store.continue1213

pred.store.if1212:                                ; preds = %pred.store.continue1211
  %i.bgi = sext i32 %index1182 to i64
  %i.bgj = getelementptr inbounds nuw i8, ptr %0, i64 %i.bgi
  %i.bgk = getelementptr inbounds nuw i8, ptr %i.bgj, i64 14
  store i8 32, ptr %i.bgk, align 1
  br label %pred.store.continue1213

pred.store.continue1213:                          ; preds = %pred.store.if1212, %pred.store.continue1211
  %i.bgl = extractelement <16 x i1> %i.bec, i64 15
  br i1 %i.bgl, label %pred.store.if1214, label %pred.store.continue1215

pred.store.if1214:                                ; preds = %pred.store.continue1213
  %i.bgm = sext i32 %index1182 to i64
  %i.bgn = getelementptr inbounds nuw i8, ptr %0, i64 %i.bgm
  %i.bgo = getelementptr inbounds nuw i8, ptr %i.bgn, i64 15
  store i8 32, ptr %i.bgo, align 1
  br label %pred.store.continue1215

pred.store.continue1215:                          ; preds = %pred.store.if1214, %pred.store.continue1213
  %i.bgp = extractelement <16 x i1> %i.bed, i64 0
  br i1 %i.bgp, label %pred.store.if1216, label %pred.store.continue1217

pred.store.if1216:                                ; preds = %pred.store.continue1215
  %i.bgq = sext i32 %index1182 to i64
  %i.bgr = getelementptr inbounds nuw i8, ptr %0, i64 %i.bgq
  %i.bgs = getelementptr inbounds nuw i8, ptr %i.bgr, i64 16
  store i8 32, ptr %i.bgs, align 1
  br label %pred.store.continue1217

pred.store.continue1217:                          ; preds = %pred.store.if1216, %pred.store.continue1215
  %i.bgt = extractelement <16 x i1> %i.bed, i64 1
  br i1 %i.bgt, label %pred.store.if1218, label %pred.store.continue1219

pred.store.if1218:                                ; preds = %pred.store.continue1217
  %i.bgu = sext i32 %index1182 to i64
  %i.bgv = getelementptr inbounds nuw i8, ptr %0, i64 %i.bgu
  %i.bgw = getelementptr inbounds nuw i8, ptr %i.bgv, i64 17
end_hunk_1
begin_hunk_2_@utrace_vformat_78:bb.a

pred.store.if1228:                                ; preds = %pred.store.continue1227
  %i.bho = sext i32 %index1182 to i64
  %i.bhp = getelementptr inbounds nuw i8, ptr %0, i64 %i.bho
  %i.bhq = getelementptr inbounds nuw i8, ptr %i.bhp, i64 22
  store i8 32, ptr %i.bhq, align 1
  br label %pred.store.continue1229

pred.store.continue1229:                          ; preds = %pred.store.if1228, %pred.store.continue1227
  %i.bhr = extractelement <16 x i1> %i.bed, i64 7
  br i1 %i.bhr, label %pred.store.if1230, label %pred.store.continue1231

pred.store.if1230:                                ; preds = %pred.store.continue1229
  %i.bhs = sext i32 %index1182 to i64
  %i.bht = getelementptr inbounds nuw i8, ptr %0, i64 %i.bhs
  %i.bhu = getelementptr inbounds nuw i8, ptr %i.bht, i64 23
  store i8 32, ptr %i.bhu, align 1
  br label %pred.store.continue1231

pred.store.continue1231:                          ; preds = %pred.store.if1230, %pred.store.continue1229
  %i.bhv = extractelement <16 x i1> %i.bed, i64 8
  br i1 %i.bhv, label %pred.store.if1232, label %pred.store.continue1233

pred.store.if1232:                                ; preds = %pred.store.continue1231
  %i.bhw = sext i32 %index1182 to i64
  %i.bhx = getelementptr inbounds nuw i8, ptr %0, i64 %i.bhw
  %i.bhy = getelementptr inbounds nuw i8, ptr %i.bhx, i64 24
  store i8 32, ptr %i.bhy, align 1
  br label %pred.store.continue1233

pred.store.continue1233:                          ; preds = %pred.store.if1232, %pred.store.continue1231
  %i.bhz = extractelement <16 x i1> %i.bed, i64 9
  br i1 %i.bhz, label %pred.store.if1234, label %pred.store.continue1235

pred.store.if1234:                                ; preds = %pred.store.continue1233
  %i.bia = sext i32 %index1182 to i64
  %i.bib = getelementptr inbounds nuw i8, ptr %0, i64 %i.bia
  %i.bic = getelementptr inbounds nuw i8, ptr %i.bib, i64 25
  store i8 32, ptr %i.bic, align 1
  br label %pred.store.continue1235

pred.store.continue1235:                          ; preds = %pred.store.if1234, %pred.store.continue1233
  %i.bid = extractelement <16 x i1> %i.bed, i64 10
  br i1 %i.bid, label %pred.store.if1236, label %pred.store.continue1237

pred.store.if1236:                                ; preds = %pred.store.continue1235
  %i.bie = sext i32 %index1182 to i64
  %i.bif = getelementptr inbounds nuw i8, ptr %0, i64 %i.bie
  %i.big = getelementptr inbounds nuw i8, ptr %i.bif, i64 26
  store i8 32, ptr %i.big, align 1
  br label %pred.store.continue1237

pred.store.continue1237:                          ; preds = %pred.store.if1236, %pred.store.continue1235
  %i.bih = extractelement <16 x i1> %i.bed, i64 11
  br i1 %i.bih, label %pred.store.if1238, label %pred.store.continue1239

pred.store.if1238:                                ; preds = %pred.store.continue1237
  %i.bii = sext i32 %index1182 to i64
  %i.bij = getelementptr inbounds nuw i8, ptr %0, i64 %i.bii
  %i.bik = getelementptr inbounds nuw i8, ptr %i.bij, i64 27
  store i8 32, ptr %i.bik, align 1
  br label %pred.store.continue1239

pred.store.continue1239:                          ; preds = %pred.store.if1238, %pred.store.continue1237
  %i.bil = extractelement <16 x i1> %i.bed, i64 12
  br i1 %i.bil, label %pred.store.if1240, label %pred.store.continue1241

pred.store.if1240:                                ; preds = %pred.store.continue1239
  %i.bim = sext i32 %index1182 to i64
  %i.bin = getelementptr inbounds nuw i8, ptr %0, i64 %i.bim
  %i.bio = getelementptr inbounds nuw i8, ptr %i.bin, i64 28
  store i8 32, ptr %i.bio, align 1
  br label %pred.store.continue1241

pred.store.continue1241:                          ; preds = %pred.store.if1240, %pred.store.continue1239
  %i.bip = extractelement <16 x i1> %i.bed, i64 13
  br i1 %i.bip, label %pred.store.if1242, label %pred.store.continue1243

pred.store.if1242:                                ; preds = %pred.store.continue1241
  %i.biq = sext i32 %index1182 to i64
  %i.bir = getelementptr inbounds nuw i8, ptr %0, i64 %i.biq
  %i.bis = getelementptr inbounds nuw i8, ptr %i.bir, i64 29
  store i8 32, ptr %i.bis, align 1
  br label %pred.store.continue1243

pred.store.continue1243:                          ; preds = %pred.store.if1242, %pred.store.continue1241
  %i.bit = extractelement <16 x i1> %i.bed, i64 14
  br i1 %i.bit, label %pred.store.if1244, label %pred.store.continue1245

pred.store.if1244:                                ; preds = %pred.store.continue1243
  %i.biu = sext i32 %index1182 to i64
  %i.biv = getelementptr inbounds nuw i8, ptr %0, i64 %i.biu
  %i.biw = getelementptr inbounds nuw i8, ptr %i.biv, i64 30
  store i8 32, ptr %i.biw, align 1
  br label %pred.store.continue1245

pred.store.continue1245:                          ; preds = %pred.store.if1244, %pred.store.continue1243
  %i.bix = extractelement <16 x i1> %i.bed, i64 15
  br i1 %i.bix, label %pred.store.if1246, label %pred.store.continue1247

pred.store.if1246:                                ; preds = %pred.store.continue1245
  %i.biy = sext i32 %index1182 to i64
  %i.biz = getelementptr inbounds nuw i8, ptr %0, i64 %i.biy
  %i.bja = getelementptr inbounds nuw i8, ptr %i.biz, i64 31
  store i8 32, ptr %i.bja, align 1
  br label %pred.store.continue1247

pred.store.continue1247:                          ; preds = %pred.store.if1246, %pred.store.continue1245
  %index.next1248 = add nuw i32 %index1182, 32    ; 2 uses
  %vec.ind.next1249 = add nuw <16 x i32> %vec.ind1183, splat (i32 32)
  %i.bjb = icmp eq i32 %index.next1248, %n.vec1178
  br i1 %i.bjb, label %middle.block1250, label %vector.body1181, !llvm.loop !45

middle.block1250:                                 ; preds = %pred.store.continue1247
  br i1 %cmp.n1251, label %.loopexit.i.us33.i221.7, label %vec.epilog.iter.check1255

vec.epilog.iter.check1255:                        ; preds = %middle.block1250
  br i1 %min.epilog.iters.check1256, label %.lr.ph.i.us29.i226.7.preheader, label %vec.epilog.ph1257, !prof !46

vec.epilog.ph1257:                                ; preds = %vector.main.loop.iter.check1174, %vec.epilog.iter.check1255
  %vec.epilog.resume.val1252 = phi i32 [ %n.vec1178, %vec.epilog.iter.check1255 ], [ 0, %vector.main.loop.iter.check1174 ] ; 2 uses
  %broadcast.splatinsert1262 = insertelement <4 x i32> poison, i32 %vec.epilog.resume.val1252, i64 0
  %broadcast.splat1263 = shufflevector <4 x i32> %broadcast.splatinsert1262, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction1264 = or disjoint <4 x i32> %broadcast.splat1263, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body1265

vec.epilog.vector.body1265:                       ; preds = %pred.store.continue1275, %vec.epilog.ph1257
  %index1266 = phi i32 [ %vec.epilog.resume.val1252, %vec.epilog.ph1257 ], [ %index.next1276, %pred.store.continue1275 ] ; 5 uses
  %vec.ind1267 = phi <4 x i32> [ %induction1264, %vec.epilog.ph1257 ], [ %vec.ind.next1277, %pred.store.continue1275 ] ; 2 uses
  %i.bjc = icmp slt <4 x i32> %vec.ind1267, %broadcast.splat1261 ; 4 uses
  %i.bjd = extractelement <4 x i1> %i.bjc, i64 0
  br i1 %i.bjd, label %pred.store.if1268, label %pred.store.continue1269

pred.store.if1268:                                ; preds = %vec.epilog.vector.body1265
  %i.bje = zext nneg i32 %index1266 to i64
  %i.bjf = getelementptr inbounds nuw i8, ptr %0, i64 %i.bje
  store i8 32, ptr %i.bjf, align 1
  br label %pred.store.continue1269

pred.store.continue1269:                          ; preds = %pred.store.if1268, %vec.epilog.vector.body1265
  %i.bjg = extractelement <4 x i1> %i.bjc, i64 1
  br i1 %i.bjg, label %pred.store.if1270, label %pred.store.continue1271

pred.store.if1270:                                ; preds = %pred.store.continue1269
  %i.bjh = sext i32 %index1266 to i64
  %i.bji = getelementptr inbounds nuw i8, ptr %0, i64 %i.bjh
  %i.bjj = getelementptr inbounds nuw i8, ptr %i.bji, i64 1
  store i8 32, ptr %i.bjj, align 1
  br label %pred.store.continue1271

pred.store.continue1271:                          ; preds = %pred.store.if1270, %pred.store.continue1269
  %i.bjk = extractelement <4 x i1> %i.bjc, i64 2
  br i1 %i.bjk, label %pred.store.if1272, label %pred.store.continue1273

pred.store.if1272:                                ; preds = %pred.store.continue1271
  %i.bjl = sext i32 %index1266 to i64
  %i.bjm = getelementptr inbounds nuw i8, ptr %0, i64 %i.bjl
  %i.bjn = getelementptr inbounds nuw i8, ptr %i.bjm, i64 2
  store i8 32, ptr %i.bjn, align 1
  br label %pred.store.continue1273

pred.store.continue1273:                          ; preds = %pred.store.if1272, %pred.store.continue1271
  %i.bjo = extractelement <4 x i1> %i.bjc, i64 3
  br i1 %i.bjo, label %pred.store.if1274, label %pred.store.continue1275

pred.store.if1274:                                ; preds = %pred.store.continue1273
  %i.bjp = sext i32 %index1266 to i64
  %i.bjq = getelementptr inbounds nuw i8, ptr %0, i64 %i.bjp
  %i.bjr = getelementptr inbounds nuw i8, ptr %i.bjq, i64 3
  store i8 32, ptr %i.bjr, align 1
  br label %pred.store.continue1275

pred.store.continue1275:                          ; preds = %pred.store.if1274, %pred.store.continue1273
  %index.next1276 = add nuw i32 %index1266, 4     ; 2 uses
  %vec.ind.next1277 = add nuw nsw <4 x i32> %vec.ind1267, splat (i32 4)
  %i.bjs = icmp eq i32 %index.next1276, %n.vec1259
  br i1 %i.bjs, label %vec.epilog.middle.block1278, label %vec.epilog.vector.body1265, !llvm.loop !47

vec.epilog.middle.block1278:                      ; preds = %pred.store.continue1275
  br i1 %cmp.n1279, label %.loopexit.i.us33.i221.7, label %.lr.ph.i.us29.i226.7.preheader

.lr.ph.i.us29.i226.7.preheader:                   ; preds = %iter.check1253, %vec.epilog.iter.check1255, %vec.epilog.middle.block1278
  %.030.i.us30.i227.7.ph = phi i32 [ 0, %iter.check1253 ], [ %n.vec1178, %vec.epilog.iter.check1255 ], [ %n.vec1259, %vec.epilog.middle.block1278 ] ; 2 uses
  br label %.lr.ph.i.us29.i226.7

.lr.ph.i.us29.i226.7:                             ; preds = %.lr.ph.i.us29.i226.7.preheader, %bb.er
  %.pre.i.us31.i229474.7 = phi i32 [ %i.bjw, %bb.er ], [ %.030.i.us30.i227.7.ph, %.lr.ph.i.us29.i226.7.preheader ] ; 3 uses
  %.030.i.us30.i227.7 = phi i32 [ %i.bjx, %bb.er ], [ %.030.i.us30.i227.7.ph, %.lr.ph.i.us29.i226.7.preheader ]
  %i.bjt = icmp slt i32 %.pre.i.us31.i229474.7, %1
  br i1 %i.bjt, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %.lr.ph.i.us29.i226.7
  %i.bju = zext nneg i32 %.pre.i.us31.i229474.7 to i64
  %i.bjv = getelementptr inbounds nuw i8, ptr %0, i64 %i.bju
  store i8 32, ptr %i.bjv, align 1
  br label %bb.er

bb.er:                                            ; preds = %bb.eq, %.lr.ph.i.us29.i226.7
  %i.bjw = add nuw nsw i32 %.pre.i.us31.i229474.7, 1 ; 2 uses
  %i.bjx = add nuw nsw i32 %.030.i.us30.i227.7, 1 ; 2 uses
  %exitcond.not.i.us32.i228.7 = icmp eq i32 %i.bjx, %2
  br i1 %exitcond.not.i.us32.i228.7, label %.loopexit.i.us33.i221.7, label %.lr.ph.i.us29.i226.7, !llvm.loop !48

.loopexit.i.us33.i221.7:                          ; preds = %bb.er, %middle.block1250, %vec.epilog.middle.block1278, %_ZL10outputCharcPcPiii.exit.us35.i223.6
  %.lcssa475478.7 = phi i32 [ %i.bea, %_ZL10outputCharcPcPiii.exit.us35.i223.6 ], [ %n.vec1259, %vec.epilog.middle.block1278 ], [ %n.vec1178, %middle.block1250 ], [ %i.bjw, %bb.er ] ; 4 uses
  %i.bjy = icmp slt i32 %.lcssa475478.7, %1
  br i1 %i.bjy, label %bb.es, label %_ZL12outputStringPKcPcPiii.exit232.thread

bb.es:                                            ; preds = %.loopexit.i.us33.i221.7
  %i.bjz = sext i32 %.lcssa475478.7 to i64
  %i.bka = getelementptr inbounds i8, ptr %0, i64 %i.bjz
  store i8 0, ptr %i.bka, align 1
  br label %_ZL12outputStringPKcPcPiii.exit232.thread

bb.et:                                            ; preds = %.thread
  %i.bkb = add nuw nsw i32 %.0467, 1              ; 2 uses
  %i.bkc = icmp slt i32 %i.bkb, %i.abf
  %i.bkd = or i1 %i.abh, %i.bkc
  br i1 %i.bkd, label %.lr.ph468, label %_ZL12outputStringPKcPcPiii.exit232.loopexit520, !llvm.loop !49

.lr.ph468:                                        ; preds = %.preheader, %bb.et
  %.0467 = phi i32 [ %i.bkb, %bb.et ], [ 0, %.preheader ]
  %.0130466 = phi i32 [ %.1378, %bb.et ], [ 0, %.preheader ] ; 2 uses
  %.0131465 = phi ptr [ %.1132377, %bb.et ], [ %i.abd, %.preheader ] ; 12 uses
  %.0133464 = phi ptr [ %.1134376, %bb.et ], [ %i.abd, %.preheader ] ; 11 uses
  %.0135463 = phi ptr [ %.1136375, %bb.et ], [ %i.abd, %.preheader ] ; 11 uses
  %.0137462 = phi ptr [ %.1138374, %bb.et ], [ %i.abd, %.preheader ] ; 11 uses
  %.0139461 = phi ptr [ %.1140373, %bb.et ], [ %i.abd, %.preheader ] ; 13 uses
  %.1144460 = phi i64 [ %.2145372, %bb.et ], [ %.0143.ph, %.preheader ] ; 2 uses
  switch i8 %i.aaj, label %bb.gg [
    i8 98, label %bb.eu
    i8 104, label %bb.ev
    i8 100, label %bb.ew
    i8 108, label %bb.ex
    i8 112, label %bb.ey
    i8 99, label %bb.ez
    i8 115, label %bb.fl
    i8 83, label %bb.ga
  ]

bb.eu:                                            ; preds = %.lr.ph468
  %i.bke = getelementptr inbounds nuw i8, ptr %.0139461, i64 1
  %i.bkf = load i8, ptr %.0139461, align 1
  %i.bkg = sext i8 %i.bkf to i64
  br label %.thread382

bb.ev:                                            ; preds = %.lr.ph468
  %i.bkh = getelementptr inbounds nuw i8, ptr %.0137462, i64 2
  %i.bki = load i16, ptr %.0137462, align 2
  %i.bkj = sext i16 %i.bki to i64
  br label %.thread382

bb.ew:                                            ; preds = %.lr.ph468
  %i.bkk = getelementptr inbounds nuw i8, ptr %.0135463, i64 4
  %i.bkl = load i32, ptr %.0135463, align 4
  %i.bkm = sext i32 %i.bkl to i64
  br label %.thread382

bb.ex:                                            ; preds = %.lr.ph468
  %i.bkn = getelementptr inbounds nuw i8, ptr %.0133464, i64 8
  %i.bko = load i64, ptr %.0133464, align 8
  br label %.thread382

bb.ey:                                            ; preds = %.lr.ph468
  %i.bkp = load ptr, ptr %.0131465, align 8
  call fastcc void @_ZL14outputPtrBytesPvPcPii(ptr noundef %i.bkp, ptr noundef %0, ptr noundef %i.a, i32 noundef %1)
  %i.bkq = load ptr, ptr %.0131465, align 8
  %i.bkr = icmp ne ptr %i.bkq, null
  %i.bks = zext i1 %i.bkr to i64
  %i.bkt = getelementptr inbounds nuw i8, ptr %.0131465, i64 8
  br label %.thread

bb.ez:                                            ; preds = %.lr.ph468
  %i.bku = load i8, ptr %.0139461, align 1        ; 4 uses
  %i.bkv = load i32, ptr %i.a, align 4            ; 16 uses
  %i.bkw = icmp eq i32 %i.bkv, 0
  br i1 %i.bkw, label %bb.ff, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  switch i8 %i.bku, label %bb.fb [
    i8 10, label %bb.fe
    i8 0, label %.loopexit.i233
  ]

bb.fb:                                            ; preds = %bb.fa
  %i.bkx = icmp slt i32 %i.bkv, %1
  br i1 %i.bkx, label %bb.fc, label %bb.fd

bb.fc:                                            ; preds = %bb.fb
  %i.bky = sext i32 %i.bkv to i64
  %i.bkz = getelementptr i8, ptr %0, i64 %i.bky
  %i.bla = getelementptr i8, ptr %i.bkz, i64 -1
  %i.blb = load i8, ptr %i.bla, align 1
  %i.blc = icmp eq i8 %i.blb, 10
  br i1 %i.blc, label %bb.ff, label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %bb.fb
  %i.bld = icmp eq i8 %i.bku, 10
  %.not.i243 = icmp sge i32 %i.bkv, %1
  %or.cond.not34.i244 = and i1 %i.bld, %.not.i243
  %or.cond31.i245 = and i1 %.old.i, %or.cond.not34.i244
  br i1 %or.cond31.i245, label %iter.check1981, label %.loopexit.i233

bb.fe:                                            ; preds = %bb.fa
  %.not.old.i235 = icmp sge i32 %i.bkv, %1
  %or.cond32.i237 = and i1 %.old.i, %.not.old.i235
  br i1 %or.cond32.i237, label %iter.check1981, label %.loopexit.i233

bb.ff:                                            ; preds = %bb.fc, %bb.ez
  br i1 %.old.i, label %iter.check1981, label %.loopexit.i233

iter.check1981:                                   ; preds = %bb.ff, %bb.fe, %bb.fd
  br i1 %min.iters.check1929, label %.lr.ph.i239.preheader, label %vector.main.loop.iter.check1930

vector.main.loop.iter.check1930:                  ; preds = %iter.check1981
  br i1 %min.iters.check1931, label %vec.epilog.ph1985, label %vector.ph1932

vector.ph1932:                                    ; preds = %vector.main.loop.iter.check1930
  %i.ble = add i32 %i.bkv, %n.vec1934             ; 3 uses
  %broadcast.splatinsert1937 = insertelement <16 x i32> poison, i32 %i.bkv, i64 0
  %broadcast.splat1938 = shufflevector <16 x i32> %broadcast.splatinsert1937, <16 x i32> poison, <16 x i32> zeroinitializer
  %induction1939 = add nsw <16 x i32> %broadcast.splat1938, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  br label %vector.body1940

vector.body1940:                                  ; preds = %pred.store.continue1974, %vector.ph1932
  %index1941 = phi i32 [ 0, %vector.ph1932 ], [ %index.next1975, %pred.store.continue1974 ] ; 2 uses
  %vec.ind1942 = phi <16 x i32> [ %induction1939, %vector.ph1932 ], [ %vec.ind.next1976, %pred.store.continue1974 ] ; 2 uses
  %i.blf = add i32 %i.bkv, %index1941             ; 16 uses
  %i.blg = icmp slt <16 x i32> %vec.ind1942, %broadcast.splat1936 ; 16 uses
  %i.blh = extractelement <16 x i1> %i.blg, i64 0
  br i1 %i.blh, label %pred.store.if1943, label %pred.store.continue1944

pred.store.if1943:                                ; preds = %vector.body1940
  %i.bli = sext i32 %i.blf to i64
  %i.blj = getelementptr inbounds i8, ptr %0, i64 %i.bli
  store i8 32, ptr %i.blj, align 1
  br label %pred.store.continue1944

pred.store.continue1944:                          ; preds = %pred.store.if1943, %vector.body1940
  %i.blk = extractelement <16 x i1> %i.blg, i64 1
  br i1 %i.blk, label %pred.store.if1945, label %pred.store.continue1946

pred.store.if1945:                                ; preds = %pred.store.continue1944
  %i.bll = add i32 %i.blf, 1
  %i.blm = sext i32 %i.bll to i64
  %i.bln = getelementptr inbounds i8, ptr %0, i64 %i.blm
  store i8 32, ptr %i.bln, align 1
  br label %pred.store.continue1946

pred.store.continue1946:                          ; preds = %pred.store.if1945, %pred.store.continue1944
  %i.blo = extractelement <16 x i1> %i.blg, i64 2
  br i1 %i.blo, label %pred.store.if1947, label %pred.store.continue1948

pred.store.if1947:                                ; preds = %pred.store.continue1946
  %i.blp = add i32 %i.blf, 2
  %i.blq = sext i32 %i.blp to i64
  %i.blr = getelementptr inbounds i8, ptr %0, i64 %i.blq
  store i8 32, ptr %i.blr, align 1
  br label %pred.store.continue1948

pred.store.continue1948:                          ; preds = %pred.store.if1947, %pred.store.continue1946
  %i.bls = extractelement <16 x i1> %i.blg, i64 3
  br i1 %i.bls, label %pred.store.if1949, label %pred.store.continue1950

pred.store.if1949:                                ; preds = %pred.store.continue1948
  %i.blt = add i32 %i.blf, 3
  %i.blu = sext i32 %i.blt to i64
  %i.blv = getelementptr inbounds i8, ptr %0, i64 %i.blu
  store i8 32, ptr %i.blv, align 1
  br label %pred.store.continue1950

pred.store.continue1950:                          ; preds = %pred.store.if1949, %pred.store.continue1948
  %i.blw = extractelement <16 x i1> %i.blg, i64 4
  br i1 %i.blw, label %pred.store.if1951, label %pred.store.continue1952

pred.store.if1951:                                ; preds = %pred.store.continue1950
  %i.blx = add i32 %i.blf, 4
  %i.bly = sext i32 %i.blx to i64
  %i.blz = getelementptr inbounds i8, ptr %0, i64 %i.bly
  store i8 32, ptr %i.blz, align 1
  br label %pred.store.continue1952

pred.store.continue1952:                          ; preds = %pred.store.if1951, %pred.store.continue1950
  %i.bma = extractelement <16 x i1> %i.blg, i64 5
  br i1 %i.bma, label %pred.store.if1953, label %pred.store.continue1954

pred.store.if1953:                                ; preds = %pred.store.continue1952
  %i.bmb = add i32 %i.blf, 5
  %i.bmc = sext i32 %i.bmb to i64
  %i.bmd = getelementptr inbounds i8, ptr %0, i64 %i.bmc
  store i8 32, ptr %i.bmd, align 1
  br label %pred.store.continue1954

pred.store.continue1954:                          ; preds = %pred.store.if1953, %pred.store.continue1952
  %i.bme = extractelement <16 x i1> %i.blg, i64 6
  br i1 %i.bme, label %pred.store.if1955, label %pred.store.continue1956

pred.store.if1955:                                ; preds = %pred.store.continue1954
  %i.bmf = add i32 %i.blf, 6
  %i.bmg = sext i32 %i.bmf to i64
  %i.bmh = getelementptr inbounds i8, ptr %0, i64 %i.bmg
  store i8 32, ptr %i.bmh, align 1
  br label %pred.store.continue1956

pred.store.continue1956:                          ; preds = %pred.store.if1955, %pred.store.continue1954
  %i.bmi = extractelement <16 x i1> %i.blg, i64 7
  br i1 %i.bmi, label %pred.store.if1957, label %pred.store.continue1958

pred.store.if1957:                                ; preds = %pred.store.continue1956
  %i.bmj = add i32 %i.blf, 7
  %i.bmk = sext i32 %i.bmj to i64
  %i.bml = getelementptr inbounds i8, ptr %0, i64 %i.bmk
  store i8 32, ptr %i.bml, align 1
  br label %pred.store.continue1958

pred.store.continue1958:                          ; preds = %pred.store.if1957, %pred.store.continue1956
  %i.bmm = extractelement <16 x i1> %i.blg, i64 8
  br i1 %i.bmm, label %pred.store.if1959, label %pred.store.continue1960

pred.store.if1959:                                ; preds = %pred.store.continue1958
  %i.bmn = add i32 %i.blf, 8
  %i.bmo = sext i32 %i.bmn to i64
  %i.bmp = getelementptr inbounds i8, ptr %0, i64 %i.bmo
  store i8 32, ptr %i.bmp, align 1
  br label %pred.store.continue1960

pred.store.continue1960:                          ; preds = %pred.store.if1959, %pred.store.continue1958
  %i.bmq = extractelement <16 x i1> %i.blg, i64 9
  br i1 %i.bmq, label %pred.store.if1961, label %pred.store.continue1962

pred.store.if1961:                                ; preds = %pred.store.continue1960
  %i.bmr = add i32 %i.blf, 9
  %i.bms = sext i32 %i.bmr to i64
  %i.bmt = getelementptr inbounds i8, ptr %0, i64 %i.bms
  store i8 32, ptr %i.bmt, align 1
  br label %pred.store.continue1962

pred.store.continue1962:                          ; preds = %pred.store.if1961, %pred.store.continue1960
  %i.bmu = extractelement <16 x i1> %i.blg, i64 10
  br i1 %i.bmu, label %pred.store.if1963, label %pred.store.continue1964

pred.store.if1963:                                ; preds = %pred.store.continue1962
  %i.bmv = add i32 %i.blf, 10
  %i.bmw = sext i32 %i.bmv to i64
  %i.bmx = getelementptr inbounds i8, ptr %0, i64 %i.bmw
  store i8 32, ptr %i.bmx, align 1
  br label %pred.store.continue1964

pred.store.continue1964:                          ; preds = %pred.store.if1963, %pred.store.continue1962
  %i.bmy = extractelement <16 x i1> %i.blg, i64 11
  br i1 %i.bmy, label %pred.store.if1965, label %pred.store.continue1966

pred.store.if1965:                                ; preds = %pred.store.continue1964
  %i.bmz = add i32 %i.blf, 11
  %i.bna = sext i32 %i.bmz to i64
  %i.bnb = getelementptr inbounds i8, ptr %0, i64 %i.bna
  store i8 32, ptr %i.bnb, align 1
  br label %pred.store.continue1966

pred.store.continue1966:                          ; preds = %pred.store.if1965, %pred.store.continue1964
  %i.bnc = extractelement <16 x i1> %i.blg, i64 12
  br i1 %i.bnc, label %pred.store.if1967, label %pred.store.continue1968

pred.store.if1967:                                ; preds = %pred.store.continue1966
  %i.bnd = add i32 %i.blf, 12
  %i.bne = sext i32 %i.bnd to i64
  %i.bnf = getelementptr inbounds i8, ptr %0, i64 %i.bne
  store i8 32, ptr %i.bnf, align 1
  br label %pred.store.continue1968

pred.store.continue1968:                          ; preds = %pred.store.if1967, %pred.store.continue1966
  %i.bng = extractelement <16 x i1> %i.blg, i64 13
  br i1 %i.bng, label %pred.store.if1969, label %pred.store.continue1970

pred.store.if1969:                                ; preds = %pred.store.continue1968
  %i.bnh = add i32 %i.blf, 13
  %i.bni = sext i32 %i.bnh to i64
  %i.bnj = getelementptr inbounds i8, ptr %0, i64 %i.bni
  store i8 32, ptr %i.bnj, align 1
  br label %pred.store.continue1970

pred.store.continue1970:                          ; preds = %pred.store.if1969, %pred.store.continue1968
  %i.bnk = extractelement <16 x i1> %i.blg, i64 14
  br i1 %i.bnk, label %pred.store.if1971, label %pred.store.continue1972

pred.store.if1971:                                ; preds = %pred.store.continue1970
  %i.bnl = add i32 %i.blf, 14
  %i.bnm = sext i32 %i.bnl to i64
  %i.bnn = getelementptr inbounds i8, ptr %0, i64 %i.bnm
  store i8 32, ptr %i.bnn, align 1
  br label %pred.store.continue1972

pred.store.continue1972:                          ; preds = %pred.store.if1971, %pred.store.continue1970
  %i.bno = extractelement <16 x i1> %i.blg, i64 15
  br i1 %i.bno, label %pred.store.if1973, label %pred.store.continue1974

pred.store.if1973:                                ; preds = %pred.store.continue1972
  %i.bnp = add i32 %i.blf, 15
  %i.bnq = sext i32 %i.bnp to i64
  %i.bnr = getelementptr inbounds i8, ptr %0, i64 %i.bnq
  store i8 32, ptr %i.bnr, align 1
  br label %pred.store.continue1974

pred.store.continue1974:                          ; preds = %pred.store.if1973, %pred.store.continue1972
  %index.next1975 = add nuw i32 %index1941, 16    ; 2 uses
  %vec.ind.next1976 = add nsw <16 x i32> %vec.ind1942, splat (i32 16)
  %i.bns = icmp eq i32 %index.next1975, %n.vec1934
  br i1 %i.bns, label %middle.block1977, label %vector.body1940, !llvm.loop !50

middle.block1977:                                 ; preds = %pred.store.continue1974
  br i1 %cmp.n1978, label %.loopexit.i233.loopexit, label %vec.epilog.iter.check1983

vec.epilog.iter.check1983:                        ; preds = %middle.block1977
  br i1 %min.epilog.iters.check1984, label %.lr.ph.i239.preheader, label %vec.epilog.ph1985, !prof !14

vec.epilog.ph1985:                                ; preds = %vector.main.loop.iter.check1930, %vec.epilog.iter.check1983
  %vec.epilog.resume.val1979 = phi i32 [ %n.vec1934, %vec.epilog.iter.check1983 ], [ 0, %vector.main.loop.iter.check1930 ]
  %bc.resume.val1980 = phi i32 [ %i.ble, %vec.epilog.iter.check1983 ], [ %i.bkv, %vector.main.loop.iter.check1930 ]
  %i.bnt = add i32 %i.bkv, %n.vec1987             ; 2 uses
  %broadcast.splatinsert1990 = insertelement <4 x i32> poison, i32 %bc.resume.val1980, i64 0
  %broadcast.splat1991 = shufflevector <4 x i32> %broadcast.splatinsert1990, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction1992 = add nsw <4 x i32> %broadcast.splat1991, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body1993

vec.epilog.vector.body1993:                       ; preds = %pred.store.continue2003, %vec.epilog.ph1985
  %index1994 = phi i32 [ %vec.epilog.resume.val1979, %vec.epilog.ph1985 ], [ %index.next2004, %pred.store.continue2003 ] ; 2 uses
  %vec.ind1995 = phi <4 x i32> [ %induction1992, %vec.epilog.ph1985 ], [ %vec.ind.next2005, %pred.store.continue2003 ] ; 2 uses
  %i.bnu = add i32 %i.bkv, %index1994             ; 4 uses
  %i.bnv = icmp slt <4 x i32> %vec.ind1995, %broadcast.splat1989 ; 4 uses
  %i.bnw = extractelement <4 x i1> %i.bnv, i64 0
  br i1 %i.bnw, label %pred.store.if1996, label %pred.store.continue1997

pred.store.if1996:                                ; preds = %vec.epilog.vector.body1993
  %i.bnx = sext i32 %i.bnu to i64
  %i.bny = getelementptr inbounds i8, ptr %0, i64 %i.bnx
  store i8 32, ptr %i.bny, align 1
  br label %pred.store.continue1997

pred.store.continue1997:                          ; preds = %pred.store.if1996, %vec.epilog.vector.body1993
  %i.bnz = extractelement <4 x i1> %i.bnv, i64 1
  br i1 %i.bnz, label %pred.store.if1998, label %pred.store.continue1999

pred.store.if1998:                                ; preds = %pred.store.continue1997
  %i.boa = add i32 %i.bnu, 1
  %i.bob = sext i32 %i.boa to i64
  %i.boc = getelementptr inbounds i8, ptr %0, i64 %i.bob
  store i8 32, ptr %i.boc, align 1
  br label %pred.store.continue1999

pred.store.continue1999:                          ; preds = %pred.store.if1998, %pred.store.continue1997
  %i.bod = extractelement <4 x i1> %i.bnv, i64 2
  br i1 %i.bod, label %pred.store.if2000, label %pred.store.continue2001

pred.store.if2000:                                ; preds = %pred.store.continue1999
  %i.boe = add i32 %i.bnu, 2
  %i.bof = sext i32 %i.boe to i64
  %i.bog = getelementptr inbounds i8, ptr %0, i64 %i.bof
  store i8 32, ptr %i.bog, align 1
  br label %pred.store.continue2001

pred.store.continue2001:                          ; preds = %pred.store.if2000, %pred.store.continue1999
  %i.boh = extractelement <4 x i1> %i.bnv, i64 3
  br i1 %i.boh, label %pred.store.if2002, label %pred.store.continue2003

pred.store.if2002:                                ; preds = %pred.store.continue2001
  %i.boi = add i32 %i.bnu, 3
  %i.boj = sext i32 %i.boi to i64
  %i.bok = getelementptr inbounds i8, ptr %0, i64 %i.boj
  store i8 32, ptr %i.bok, align 1
  br label %pred.store.continue2003

pred.store.continue2003:                          ; preds = %pred.store.if2002, %pred.store.continue2001
  %index.next2004 = add nuw i32 %index1994, 4     ; 2 uses
  %vec.ind.next2005 = add nsw <4 x i32> %vec.ind1995, splat (i32 4)
  %i.bol = icmp eq i32 %index.next2004, %n.vec1987
  br i1 %i.bol, label %vec.epilog.middle.block2006, label %vec.epilog.vector.body1993, !llvm.loop !51

vec.epilog.middle.block2006:                      ; preds = %pred.store.continue2003
  br i1 %cmp.n2007, label %.loopexit.i233.loopexit, label %.lr.ph.i239.preheader

.lr.ph.i239.preheader:                            ; preds = %iter.check1981, %vec.epilog.iter.check1983, %vec.epilog.middle.block2006
  %.pre.i242452.ph = phi i32 [ %i.bkv, %iter.check1981 ], [ %i.ble, %vec.epilog.iter.check1983 ], [ %i.bnt, %vec.epilog.middle.block2006 ]
  %.030.i240.ph = phi i32 [ 0, %iter.check1981 ], [ %n.vec1934, %vec.epilog.iter.check1983 ], [ %n.vec1987, %vec.epilog.middle.block2006 ]
  br label %.lr.ph.i239

.lr.ph.i239:                                      ; preds = %.lr.ph.i239.preheader, %bb.fh
  %.pre.i242452 = phi i32 [ %i.bop, %bb.fh ], [ %.pre.i242452.ph, %.lr.ph.i239.preheader ] ; 3 uses
  %.030.i240 = phi i32 [ %i.boq, %bb.fh ], [ %.030.i240.ph, %.lr.ph.i239.preheader ]
  %i.bom = icmp slt i32 %.pre.i242452, %1
  br i1 %i.bom, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %.lr.ph.i239
  %i.bon = sext i32 %.pre.i242452 to i64
  %i.boo = getelementptr inbounds i8, ptr %0, i64 %i.bon
  store i8 32, ptr %i.boo, align 1
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %.lr.ph.i239
  %i.bop = add nsw i32 %.pre.i242452, 1           ; 2 uses
  %i.boq = add nuw nsw i32 %.030.i240, 1          ; 2 uses
  %exitcond.not.i241 = icmp eq i32 %i.boq, %2
  br i1 %exitcond.not.i241, label %.loopexit.i233.loopexit, label %.lr.ph.i239, !llvm.loop !52

.loopexit.i233.loopexit:                          ; preds = %bb.fh, %vec.epilog.middle.block2006, %middle.block1977
  %.lcssa696 = phi i32 [ %i.bnt, %vec.epilog.middle.block2006 ], [ %i.ble, %middle.block1977 ], [ %i.bop, %bb.fh ] ; 2 uses
  store i32 %.lcssa696, ptr %i.a, align 4
  br label %.loopexit.i233

.loopexit.i233:                                   ; preds = %.loopexit.i233.loopexit, %bb.ff, %bb.fe, %bb.fd, %bb.fa
  %i.bor = phi i32 [ %i.bkv, %bb.fd ], [ %i.bkv, %bb.ff ], [ %i.bkv, %bb.fa ], [ %i.bkv, %bb.fe ], [ %.lcssa696, %.loopexit.i233.loopexit ] ; 3 uses
  %i.bos = icmp slt i32 %i.bor, %1
  br i1 %i.bos, label %bb.fi, label %bb.fj

bb.fi:                                            ; preds = %.loopexit.i233
  %i.bot = sext i32 %i.bor to i64
  %i.bou = getelementptr inbounds i8, ptr %0, i64 %i.bot
  store i8 %i.bku, ptr %i.bou, align 1
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fi, %.loopexit.i233
  %.not29.i234 = icmp eq i8 %i.bku, 0
  br i1 %.not29.i234, label %_ZL10outputCharcPcPiii.exit247, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.bov = add nsw i32 %i.bor, 1
  store i32 %i.bov, ptr %i.a, align 4
  br label %_ZL10outputCharcPcPiii.exit247

_ZL10outputCharcPcPiii.exit247:                   ; preds = %bb.fj, %bb.fk
  %i.bow = load i8, ptr %.0139461, align 1
  %i.box = sext i8 %i.bow to i64
  %i.boy = getelementptr inbounds nuw i8, ptr %.0139461, i64 1
  br label %.thread

bb.fl:                                            ; preds = %.lr.ph468
  %i.boz = load ptr, ptr %.0131465, align 8       ; 2 uses
  %i.bpa = icmp eq ptr %i.boz, null
  %spec.store.select.i248 = select i1 %i.bpa, ptr @.str.2, ptr %i.boz ; 2 uses
  %.pr.i249 = load i32, ptr %i.a, align 4         ; 2 uses
  br i1 %.old.i, label %.split.split.split.us.i256, label %.split.us.i251

.split.us.i251:                                   ; preds = %bb.fl, %_ZL10outputCharcPcPiii.exit.us.i255
  %i.bpb = phi i32 [ %i.bph, %_ZL10outputCharcPcPiii.exit.us.i255 ], [ %.pr.i249, %bb.fl ] ; 4 uses
  %indvars.iv.i252 = phi i64 [ %indvars.iv.next.i253, %_ZL10outputCharcPcPiii.exit.us.i255 ], [ 0, %bb.fl ] ; 2 uses
  %indvars.iv.next.i253 = add nuw nsw i64 %indvars.iv.i252, 1
  %i.bpc = getelementptr inbounds nuw i8, ptr %spec.store.select.i248, i64 %indvars.iv.i252
  %i.bpd = load i8, ptr %i.bpc, align 1           ; 2 uses
  %i.bpe = icmp slt i32 %i.bpb, %1
  br i1 %i.bpe, label %bb.fm, label %_ZL10outputCharcPcPiii.exit.us.i255

bb.fm:                                            ; preds = %.split.us.i251
  %i.bpf = sext i32 %i.bpb to i64
  %i.bpg = getelementptr inbounds i8, ptr %0, i64 %i.bpf
  store i8 %i.bpd, ptr %i.bpg, align 1
  br label %_ZL10outputCharcPcPiii.exit.us.i255

_ZL10outputCharcPcPiii.exit.us.i255:              ; preds = %bb.fm, %.split.us.i251
  %.not29.i.us.i254 = icmp eq i8 %i.bpd, 0
  %i.bph = add nsw i32 %i.bpb, 1
  br i1 %.not29.i.us.i254, label %_ZL12outputStringPKcPcPiii.exit270, label %.split.us.i251, !llvm.loop !17

.split.split.split.us.i256:                       ; preds = %bb.fl, %_ZL10outputCharcPcPiii.exit.us35.i261
  %.lcssa444446 = phi i32 [ %i.bti, %_ZL10outputCharcPcPiii.exit.us35.i261 ], [ %.pr.i249, %bb.fl ] ; 15 uses
  %indvars.iv41.i257 = phi i64 [ %indvars.iv.next42.i258, %_ZL10outputCharcPcPiii.exit.us35.i261 ], [ 0, %bb.fl ] ; 2 uses
  %indvars.iv.next42.i258 = add nuw nsw i64 %indvars.iv41.i257, 1
  %i.bpi = getelementptr inbounds nuw i8, ptr %spec.store.select.i248, i64 %indvars.iv41.i257
  %i.bpj = load i8, ptr %i.bpi, align 1           ; 4 uses
  %i.bpk = icmp eq i32 %.lcssa444446, 0
  br i1 %i.bpk, label %iter.check2143, label %bb.fn

bb.fn:                                            ; preds = %.split.split.split.us.i256
  switch i8 %i.bpj, label %bb.fp [
    i8 10, label %bb.fo
    i8 0, label %.loopexit.i.us33.i259
  ]

bb.fo:                                            ; preds = %bb.fn
  %.not.old.i.us25.not.i262 = icmp slt i32 %.lcssa444446, %1
  br i1 %.not.old.i.us25.not.i262, label %.loopexit.i.us33.i259, label %iter.check2143

bb.fp:                                            ; preds = %bb.fn
  %i.bpl = icmp slt i32 %.lcssa444446, %1
  br i1 %i.bpl, label %bb.fq, label %bb.fr

bb.fq:                                            ; preds = %bb.fp
  %i.bpm = sext i32 %.lcssa444446 to i64
  %i.bpn = getelementptr i8, ptr %0, i64 %i.bpm
  %i.bpo = getelementptr i8, ptr %i.bpn, i64 -1
  %i.bpp = load i8, ptr %i.bpo, align 1
  %i.bpq = icmp eq i8 %i.bpp, 10
  br i1 %i.bpq, label %iter.check2143, label %bb.fr

bb.fr:                                            ; preds = %bb.fq, %bb.fp
  %i.bpr = icmp eq i8 %i.bpj, 10
  %.not.i.us26.i268 = icmp sge i32 %.lcssa444446, %1
  %or.cond.not34.i.us27.i269 = and i1 %.not.i.us26.i268, %i.bpr
  br i1 %or.cond.not34.i.us27.i269, label %iter.check2143, label %.loopexit.i.us33.i259

iter.check2143:                                   ; preds = %bb.fr, %bb.fq, %bb.fo, %.split.split.split.us.i256
  br i1 %min.iters.check2091, label %.lr.ph.i.us29.i264.preheader, label %vector.main.loop.iter.check2092

vector.main.loop.iter.check2092:                  ; preds = %iter.check2143
  br i1 %min.iters.check2093, label %vec.epilog.ph2147, label %vector.ph2094

vector.ph2094:                                    ; preds = %vector.main.loop.iter.check2092
  %i.bps = add i32 %.lcssa444446, %n.vec2096      ; 3 uses
  %broadcast.splatinsert2099 = insertelement <16 x i32> poison, i32 %.lcssa444446, i64 0
  %broadcast.splat2100 = shufflevector <16 x i32> %broadcast.splatinsert2099, <16 x i32> poison, <16 x i32> zeroinitializer
  %induction2101 = add nsw <16 x i32> %broadcast.splat2100, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  br label %vector.body2102

vector.body2102:                                  ; preds = %pred.store.continue2136, %vector.ph2094
  %index2103 = phi i32 [ 0, %vector.ph2094 ], [ %index.next2137, %pred.store.continue2136 ] ; 2 uses
  %vec.ind2104 = phi <16 x i32> [ %induction2101, %vector.ph2094 ], [ %vec.ind.next2138, %pred.store.continue2136 ] ; 2 uses
  %i.bpt = add i32 %.lcssa444446, %index2103      ; 16 uses
  %i.bpu = icmp slt <16 x i32> %vec.ind2104, %broadcast.splat2098 ; 16 uses
  %i.bpv = extractelement <16 x i1> %i.bpu, i64 0
  br i1 %i.bpv, label %pred.store.if2105, label %pred.store.continue2106

pred.store.if2105:                                ; preds = %vector.body2102
  %i.bpw = sext i32 %i.bpt to i64
  %i.bpx = getelementptr inbounds i8, ptr %0, i64 %i.bpw
  store i8 32, ptr %i.bpx, align 1
  br label %pred.store.continue2106

pred.store.continue2106:                          ; preds = %pred.store.if2105, %vector.body2102
  %i.bpy = extractelement <16 x i1> %i.bpu, i64 1
  br i1 %i.bpy, label %pred.store.if2107, label %pred.store.continue2108

pred.store.if2107:                                ; preds = %pred.store.continue2106
  %i.bpz = add i32 %i.bpt, 1
  %i.bqa = sext i32 %i.bpz to i64
  %i.bqb = getelementptr inbounds i8, ptr %0, i64 %i.bqa
  store i8 32, ptr %i.bqb, align 1
  br label %pred.store.continue2108

pred.store.continue2108:                          ; preds = %pred.store.if2107, %pred.store.continue2106
  %i.bqc = extractelement <16 x i1> %i.bpu, i64 2
  br i1 %i.bqc, label %pred.store.if2109, label %pred.store.continue2110

pred.store.if2109:                                ; preds = %pred.store.continue2108
  %i.bqd = add i32 %i.bpt, 2
  %i.bqe = sext i32 %i.bqd to i64
  %i.bqf = getelementptr inbounds i8, ptr %0, i64 %i.bqe
  store i8 32, ptr %i.bqf, align 1
  br label %pred.store.continue2110

pred.store.continue2110:                          ; preds = %pred.store.if2109, %pred.store.continue2108
  %i.bqg = extractelement <16 x i1> %i.bpu, i64 3
  br i1 %i.bqg, label %pred.store.if2111, label %pred.store.continue2112

pred.store.if2111:                                ; preds = %pred.store.continue2110
  %i.bqh = add i32 %i.bpt, 3
  %i.bqi = sext i32 %i.bqh to i64
  %i.bqj = getelementptr inbounds i8, ptr %0, i64 %i.bqi
  store i8 32, ptr %i.bqj, align 1
  br label %pred.store.continue2112

pred.store.continue2112:                          ; preds = %pred.store.if2111, %pred.store.continue2110
  %i.bqk = extractelement <16 x i1> %i.bpu, i64 4
  br i1 %i.bqk, label %pred.store.if2113, label %pred.store.continue2114

pred.store.if2113:                                ; preds = %pred.store.continue2112
  %i.bql = add i32 %i.bpt, 4
  %i.bqm = sext i32 %i.bql to i64
  %i.bqn = getelementptr inbounds i8, ptr %0, i64 %i.bqm
  store i8 32, ptr %i.bqn, align 1
  br label %pred.store.continue2114

pred.store.continue2114:                          ; preds = %pred.store.if2113, %pred.store.continue2112
  %i.bqo = extractelement <16 x i1> %i.bpu, i64 5
  br i1 %i.bqo, label %pred.store.if2115, label %pred.store.continue2116

pred.store.if2115:                                ; preds = %pred.store.continue2114
  %i.bqp = add i32 %i.bpt, 5
  %i.bqq = sext i32 %i.bqp to i64
  %i.bqr = getelementptr inbounds i8, ptr %0, i64 %i.bqq
  store i8 32, ptr %i.bqr, align 1
  br label %pred.store.continue2116

pred.store.continue2116:                          ; preds = %pred.store.if2115, %pred.store.continue2114
  %i.bqs = extractelement <16 x i1> %i.bpu, i64 6
  br i1 %i.bqs, label %pred.store.if2117, label %pred.store.continue2118

pred.store.if2117:                                ; preds = %pred.store.continue2116
  %i.bqt = add i32 %i.bpt, 6
  %i.bqu = sext i32 %i.bqt to i64
  %i.bqv = getelementptr inbounds i8, ptr %0, i64 %i.bqu
  store i8 32, ptr %i.bqv, align 1
  br label %pred.store.continue2118

pred.store.continue2118:                          ; preds = %pred.store.if2117, %pred.store.continue2116
  %i.bqw = extractelement <16 x i1> %i.bpu, i64 7
  br i1 %i.bqw, label %pred.store.if2119, label %pred.store.continue2120

pred.store.if2119:                                ; preds = %pred.store.continue2118
  %i.bqx = add i32 %i.bpt, 7
  %i.bqy = sext i32 %i.bqx to i64
  %i.bqz = getelementptr inbounds i8, ptr %0, i64 %i.bqy
  store i8 32, ptr %i.bqz, align 1
  br label %pred.store.continue2120

pred.store.continue2120:                          ; preds = %pred.store.if2119, %pred.store.continue2118
  %i.bra = extractelement <16 x i1> %i.bpu, i64 8
  br i1 %i.bra, label %pred.store.if2121, label %pred.store.continue2122

pred.store.if2121:                                ; preds = %pred.store.continue2120
  %i.brb = add i32 %i.bpt, 8
  %i.brc = sext i32 %i.brb to i64
  %i.brd = getelementptr inbounds i8, ptr %0, i64 %i.brc
  store i8 32, ptr %i.brd, align 1
  br label %pred.store.continue2122

pred.store.continue2122:                          ; preds = %pred.store.if2121, %pred.store.continue2120
  %i.bre = extractelement <16 x i1> %i.bpu, i64 9
  br i1 %i.bre, label %pred.store.if2123, label %pred.store.continue2124

pred.store.if2123:                                ; preds = %pred.store.continue2122
  %i.brf = add i32 %i.bpt, 9
  %i.brg = sext i32 %i.brf to i64
  %i.brh = getelementptr inbounds i8, ptr %0, i64 %i.brg
  store i8 32, ptr %i.brh, align 1
  br label %pred.store.continue2124

pred.store.continue2124:                          ; preds = %pred.store.if2123, %pred.store.continue2122
  %i.bri = extractelement <16 x i1> %i.bpu, i64 10
  br i1 %i.bri, label %pred.store.if2125, label %pred.store.continue2126

pred.store.if2125:                                ; preds = %pred.store.continue2124
  %i.brj = add i32 %i.bpt, 10
  %i.brk = sext i32 %i.brj to i64
  %i.brl = getelementptr inbounds i8, ptr %0, i64 %i.brk
  store i8 32, ptr %i.brl, align 1
  br label %pred.store.continue2126

pred.store.continue2126:                          ; preds = %pred.store.if2125, %pred.store.continue2124
  %i.brm = extractelement <16 x i1> %i.bpu, i64 11
  br i1 %i.brm, label %pred.store.if2127, label %pred.store.continue2128

pred.store.if2127:                                ; preds = %pred.store.continue2126
  %i.brn = add i32 %i.bpt, 11
  %i.bro = sext i32 %i.brn to i64
  %i.brp = getelementptr inbounds i8, ptr %0, i64 %i.bro
  store i8 32, ptr %i.brp, align 1
  br label %pred.store.continue2128

pred.store.continue2128:                          ; preds = %pred.store.if2127, %pred.store.continue2126
  %i.brq = extractelement <16 x i1> %i.bpu, i64 12
  br i1 %i.brq, label %pred.store.if2129, label %pred.store.continue2130

pred.store.if2129:                                ; preds = %pred.store.continue2128
  %i.brr = add i32 %i.bpt, 12
  %i.brs = sext i32 %i.brr to i64
  %i.brt = getelementptr inbounds i8, ptr %0, i64 %i.brs
  store i8 32, ptr %i.brt, align 1
  br label %pred.store.continue2130

pred.store.continue2130:                          ; preds = %pred.store.if2129, %pred.store.continue2128
  %i.bru = extractelement <16 x i1> %i.bpu, i64 13
  br i1 %i.bru, label %pred.store.if2131, label %pred.store.continue2132

pred.store.if2131:                                ; preds = %pred.store.continue2130
  %i.brv = add i32 %i.bpt, 13
  %i.brw = sext i32 %i.brv to i64
  %i.brx = getelementptr inbounds i8, ptr %0, i64 %i.brw
  store i8 32, ptr %i.brx, align 1
  br label %pred.store.continue2132

pred.store.continue2132:                          ; preds = %pred.store.if2131, %pred.store.continue2130
  %i.bry = extractelement <16 x i1> %i.bpu, i64 14
  br i1 %i.bry, label %pred.store.if2133, label %pred.store.continue2134

pred.store.if2133:                                ; preds = %pred.store.continue2132
  %i.brz = add i32 %i.bpt, 14
  %i.bsa = sext i32 %i.brz to i64
  %i.bsb = getelementptr inbounds i8, ptr %0, i64 %i.bsa
  store i8 32, ptr %i.bsb, align 1
  br label %pred.store.continue2134

pred.store.continue2134:                          ; preds = %pred.store.if2133, %pred.store.continue2132
  %i.bsc = extractelement <16 x i1> %i.bpu, i64 15
  br i1 %i.bsc, label %pred.store.if2135, label %pred.store.continue2136

pred.store.if2135:                                ; preds = %pred.store.continue2134
  %i.bsd = add i32 %i.bpt, 15
  %i.bse = sext i32 %i.bsd to i64
  %i.bsf = getelementptr inbounds i8, ptr %0, i64 %i.bse
  store i8 32, ptr %i.bsf, align 1
  br label %pred.store.continue2136

pred.store.continue2136:                          ; preds = %pred.store.if2135, %pred.store.continue2134
  %index.next2137 = add nuw i32 %index2103, 16    ; 2 uses
  %vec.ind.next2138 = add nsw <16 x i32> %vec.ind2104, splat (i32 16)
  %i.bsg = icmp eq i32 %index.next2137, %n.vec2096
  br i1 %i.bsg, label %middle.block2139, label %vector.body2102, !llvm.loop !53

middle.block2139:                                 ; preds = %pred.store.continue2136
  br i1 %cmp.n2140, label %.loopexit.i.us33.i259, label %vec.epilog.iter.check2145

vec.epilog.iter.check2145:                        ; preds = %middle.block2139
  br i1 %min.epilog.iters.check2146, label %.lr.ph.i.us29.i264.preheader, label %vec.epilog.ph2147, !prof !14

vec.epilog.ph2147:                                ; preds = %vector.main.loop.iter.check2092, %vec.epilog.iter.check2145
  %vec.epilog.resume.val2141 = phi i32 [ %n.vec2096, %vec.epilog.iter.check2145 ], [ 0, %vector.main.loop.iter.check2092 ]
  %bc.resume.val2142 = phi i32 [ %i.bps, %vec.epilog.iter.check2145 ], [ %.lcssa444446, %vector.main.loop.iter.check2092 ]
  %i.bsh = add i32 %.lcssa444446, %n.vec2149      ; 2 uses
  %broadcast.splatinsert2152 = insertelement <4 x i32> poison, i32 %bc.resume.val2142, i64 0
  %broadcast.splat2153 = shufflevector <4 x i32> %broadcast.splatinsert2152, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction2154 = add nsw <4 x i32> %broadcast.splat2153, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body2155

vec.epilog.vector.body2155:                       ; preds = %pred.store.continue2165, %vec.epilog.ph2147
  %index2156 = phi i32 [ %vec.epilog.resume.val2141, %vec.epilog.ph2147 ], [ %index.next2166, %pred.store.continue2165 ] ; 2 uses
  %vec.ind2157 = phi <4 x i32> [ %induction2154, %vec.epilog.ph2147 ], [ %vec.ind.next2167, %pred.store.continue2165 ] ; 2 uses
  %i.bsi = add i32 %.lcssa444446, %index2156      ; 4 uses
  %i.bsj = icmp slt <4 x i32> %vec.ind2157, %broadcast.splat2151 ; 4 uses
  %i.bsk = extractelement <4 x i1> %i.bsj, i64 0
  br i1 %i.bsk, label %pred.store.if2158, label %pred.store.continue2159

pred.store.if2158:                                ; preds = %vec.epilog.vector.body2155
  %i.bsl = sext i32 %i.bsi to i64
  %i.bsm = getelementptr inbounds i8, ptr %0, i64 %i.bsl
  store i8 32, ptr %i.bsm, align 1
  br label %pred.store.continue2159

pred.store.continue2159:                          ; preds = %pred.store.if2158, %vec.epilog.vector.body2155
  %i.bsn = extractelement <4 x i1> %i.bsj, i64 1
  br i1 %i.bsn, label %pred.store.if2160, label %pred.store.continue2161

pred.store.if2160:                                ; preds = %pred.store.continue2159
  %i.bso = add i32 %i.bsi, 1
  %i.bsp = sext i32 %i.bso to i64
  %i.bsq = getelementptr inbounds i8, ptr %0, i64 %i.bsp
  store i8 32, ptr %i.bsq, align 1
  br label %pred.store.continue2161

pred.store.continue2161:                          ; preds = %pred.store.if2160, %pred.store.continue2159
  %i.bsr = extractelement <4 x i1> %i.bsj, i64 2
  br i1 %i.bsr, label %pred.store.if2162, label %pred.store.continue2163

pred.store.if2162:                                ; preds = %pred.store.continue2161
  %i.bss = add i32 %i.bsi, 2
  %i.bst = sext i32 %i.bss to i64
  %i.bsu = getelementptr inbounds i8, ptr %0, i64 %i.bst
  store i8 32, ptr %i.bsu, align 1
  br label %pred.store.continue2163

pred.store.continue2163:                          ; preds = %pred.store.if2162, %pred.store.continue2161
  %i.bsv = extractelement <4 x i1> %i.bsj, i64 3
  br i1 %i.bsv, label %pred.store.if2164, label %pred.store.continue2165

pred.store.if2164:                                ; preds = %pred.store.continue2163
  %i.bsw = add i32 %i.bsi, 3
  %i.bsx = sext i32 %i.bsw to i64
  %i.bsy = getelementptr inbounds i8, ptr %0, i64 %i.bsx
  store i8 32, ptr %i.bsy, align 1
  br label %pred.store.continue2165

pred.store.continue2165:                          ; preds = %pred.store.if2164, %pred.store.continue2163
  %index.next2166 = add nuw i32 %index2156, 4     ; 2 uses
  %vec.ind.next2167 = add nsw <4 x i32> %vec.ind2157, splat (i32 4)
  %i.bsz = icmp eq i32 %index.next2166, %n.vec2149
  br i1 %i.bsz, label %vec.epilog.middle.block2168, label %vec.epilog.vector.body2155, !llvm.loop !54

vec.epilog.middle.block2168:                      ; preds = %pred.store.continue2165
  br i1 %cmp.n2169, label %.loopexit.i.us33.i259, label %.lr.ph.i.us29.i264.preheader

.lr.ph.i.us29.i264.preheader:                     ; preds = %iter.check2143, %vec.epilog.iter.check2145, %vec.epilog.middle.block2168
  %.pre.i.us31.i267443.ph = phi i32 [ %.lcssa444446, %iter.check2143 ], [ %i.bps, %vec.epilog.iter.check2145 ], [ %i.bsh, %vec.epilog.middle.block2168 ]
  %.030.i.us30.i265.ph = phi i32 [ 0, %iter.check2143 ], [ %n.vec2096, %vec.epilog.iter.check2145 ], [ %n.vec2149, %vec.epilog.middle.block2168 ]
  br label %.lr.ph.i.us29.i264

.lr.ph.i.us29.i264:                               ; preds = %.lr.ph.i.us29.i264.preheader, %bb.ft
  %.pre.i.us31.i267443 = phi i32 [ %i.btd, %bb.ft ], [ %.pre.i.us31.i267443.ph, %.lr.ph.i.us29.i264.preheader ] ; 3 uses
  %.030.i.us30.i265 = phi i32 [ %i.bte, %bb.ft ], [ %.030.i.us30.i265.ph, %.lr.ph.i.us29.i264.preheader ]
  %i.bta = icmp slt i32 %.pre.i.us31.i267443, %1
  br i1 %i.bta, label %bb.fs, label %bb.ft

bb.fs:                                            ; preds = %.lr.ph.i.us29.i264
  %i.btb = sext i32 %.pre.i.us31.i267443 to i64
  %i.btc = getelementptr inbounds i8, ptr %0, i64 %i.btb
  store i8 32, ptr %i.btc, align 1
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fs, %.lr.ph.i.us29.i264
  %i.btd = add nsw i32 %.pre.i.us31.i267443, 1    ; 2 uses
  %i.bte = add nuw nsw i32 %.030.i.us30.i265, 1   ; 2 uses
  %exitcond.not.i.us32.i266 = icmp eq i32 %i.bte, %2
  br i1 %exitcond.not.i.us32.i266, label %.loopexit.i.us33.i259, label %.lr.ph.i.us29.i264, !llvm.loop !55

.loopexit.i.us33.i259:                            ; preds = %bb.ft, %middle.block2139, %vec.epilog.middle.block2168, %bb.fr, %bb.fo, %bb.fn
  %.lcssa444447 = phi i32 [ %.lcssa444446, %bb.fr ], [ %.lcssa444446, %bb.fo ], [ %.lcssa444446, %bb.fn ], [ %i.bsh, %vec.epilog.middle.block2168 ], [ %i.bps, %middle.block2139 ], [ %i.btd, %bb.ft ] ; 4 uses
  %i.btf = icmp slt i32 %.lcssa444447, %1
  br i1 %i.btf, label %bb.fu, label %_ZL10outputCharcPcPiii.exit.us35.i261

bb.fu:                                            ; preds = %.loopexit.i.us33.i259
  %i.btg = sext i32 %.lcssa444447 to i64
  %i.bth = getelementptr inbounds i8, ptr %0, i64 %i.btg
  store i8 %i.bpj, ptr %i.bth, align 1
  br label %_ZL10outputCharcPcPiii.exit.us35.i261

_ZL10outputCharcPcPiii.exit.us35.i261:            ; preds = %bb.fu, %.loopexit.i.us33.i259
  %.not29.i.us34.i260 = icmp eq i8 %i.bpj, 0
  %i.bti = add nsw i32 %.lcssa444447, 1
  br i1 %.not29.i.us34.i260, label %_ZL12outputStringPKcPcPiii.exit270, label %.split.split.split.us.i256, !llvm.loop !17

_ZL12outputStringPKcPcPiii.exit270:               ; preds = %_ZL10outputCharcPcPiii.exit.us.i255, %_ZL10outputCharcPcPiii.exit.us35.i261
  %.promoted448 = phi i32 [ %.lcssa444447, %_ZL10outputCharcPcPiii.exit.us35.i261 ], [ %i.bpb, %_ZL10outputCharcPcPiii.exit.us.i255 ] ; 10 uses
  %i.btj = icmp eq i32 %.promoted448, 0
  br i1 %i.btj, label %bb.fw, label %bb.fv

bb.fv:                                            ; preds = %_ZL12outputStringPKcPcPiii.exit270
  %.not.old.i271 = icmp sge i32 %.promoted448, %1
  %or.cond32.i273 = and i1 %.old.i, %.not.old.i271
  br i1 %or.cond32.i273, label %iter.check2062, label %.loopexit.i274

bb.fw:                                            ; preds = %_ZL12outputStringPKcPcPiii.exit270
  br i1 %.old.i, label %iter.check2062, label %.loopexit.i274

iter.check2062:                                   ; preds = %bb.fw, %bb.fv
  br i1 %min.iters.check2010, label %.lr.ph.i276.preheader, label %vector.main.loop.iter.check2011

vector.main.loop.iter.check2011:                  ; preds = %iter.check2062
  br i1 %min.iters.check2012, label %vec.epilog.ph2066, label %vector.ph2013

vector.ph2013:                                    ; preds = %vector.main.loop.iter.check2011
  %i.btk = add i32 %.promoted448, %n.vec2015      ; 3 uses
  %broadcast.splatinsert2018 = insertelement <16 x i32> poison, i32 %.promoted448, i64 0
  %broadcast.splat2019 = shufflevector <16 x i32> %broadcast.splatinsert2018, <16 x i32> poison, <16 x i32> zeroinitializer
  %induction2020 = add nsw <16 x i32> %broadcast.splat2019, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  br label %vector.body2021

vector.body2021:                                  ; preds = %pred.store.continue2055, %vector.ph2013
  %index2022 = phi i32 [ 0, %vector.ph2013 ], [ %index.next2056, %pred.store.continue2055 ] ; 2 uses
  %vec.ind2023 = phi <16 x i32> [ %induction2020, %vector.ph2013 ], [ %vec.ind.next2057, %pred.store.continue2055 ] ; 2 uses
  %i.btl = add i32 %.promoted448, %index2022      ; 16 uses
  %i.btm = icmp slt <16 x i32> %vec.ind2023, %broadcast.splat2017 ; 16 uses
  %i.btn = extractelement <16 x i1> %i.btm, i64 0
  br i1 %i.btn, label %pred.store.if2024, label %pred.store.continue2025

pred.store.if2024:                                ; preds = %vector.body2021
  %i.bto = sext i32 %i.btl to i64
  %i.btp = getelementptr inbounds i8, ptr %0, i64 %i.bto
  store i8 32, ptr %i.btp, align 1
  br label %pred.store.continue2025

pred.store.continue2025:                          ; preds = %pred.store.if2024, %vector.body2021
  %i.btq = extractelement <16 x i1> %i.btm, i64 1
  br i1 %i.btq, label %pred.store.if2026, label %pred.store.continue2027

pred.store.if2026:                                ; preds = %pred.store.continue2025
  %i.btr = add i32 %i.btl, 1
  %i.bts = sext i32 %i.btr to i64
  %i.btt = getelementptr inbounds i8, ptr %0, i64 %i.bts
  store i8 32, ptr %i.btt, align 1
  br label %pred.store.continue2027

pred.store.continue2027:                          ; preds = %pred.store.if2026, %pred.store.continue2025
  %i.btu = extractelement <16 x i1> %i.btm, i64 2
  br i1 %i.btu, label %pred.store.if2028, label %pred.store.continue2029

pred.store.if2028:                                ; preds = %pred.store.continue2027
  %i.btv = add i32 %i.btl, 2
  %i.btw = sext i32 %i.btv to i64
  %i.btx = getelementptr inbounds i8, ptr %0, i64 %i.btw
  store i8 32, ptr %i.btx, align 1
  br label %pred.store.continue2029

pred.store.continue2029:                          ; preds = %pred.store.if2028, %pred.store.continue2027
  %i.bty = extractelement <16 x i1> %i.btm, i64 3
  br i1 %i.bty, label %pred.store.if2030, label %pred.store.continue2031

pred.store.if2030:                                ; preds = %pred.store.continue2029
  %i.btz = add i32 %i.btl, 3
  %i.bua = sext i32 %i.btz to i64
  %i.bub = getelementptr inbounds i8, ptr %0, i64 %i.bua
  store i8 32, ptr %i.bub, align 1
  br label %pred.store.continue2031

pred.store.continue2031:                          ; preds = %pred.store.if2030, %pred.store.continue2029
  %i.buc = extractelement <16 x i1> %i.btm, i64 4
  br i1 %i.buc, label %pred.store.if2032, label %pred.store.continue2033

pred.store.if2032:                                ; preds = %pred.store.continue2031
  %i.bud = add i32 %i.btl, 4
  %i.bue = sext i32 %i.bud to i64
  %i.buf = getelementptr inbounds i8, ptr %0, i64 %i.bue
  store i8 32, ptr %i.buf, align 1
  br label %pred.store.continue2033

pred.store.continue2033:                          ; preds = %pred.store.if2032, %pred.store.continue2031
  %i.bug = extractelement <16 x i1> %i.btm, i64 5
  br i1 %i.bug, label %pred.store.if2034, label %pred.store.continue2035

pred.store.if2034:                                ; preds = %pred.store.continue2033
  %i.buh = add i32 %i.btl, 5
  %i.bui = sext i32 %i.buh to i64
  %i.buj = getelementptr inbounds i8, ptr %0, i64 %i.bui
  store i8 32, ptr %i.buj, align 1
  br label %pred.store.continue2035

pred.store.continue2035:                          ; preds = %pred.store.if2034, %pred.store.continue2033
  %i.buk = extractelement <16 x i1> %i.btm, i64 6
  br i1 %i.buk, label %pred.store.if2036, label %pred.store.continue2037

pred.store.if2036:                                ; preds = %pred.store.continue2035
  %i.bul = add i32 %i.btl, 6
  %i.bum = sext i32 %i.bul to i64
  %i.bun = getelementptr inbounds i8, ptr %0, i64 %i.bum
  store i8 32, ptr %i.bun, align 1
  br label %pred.store.continue2037

pred.store.continue2037:                          ; preds = %pred.store.if2036, %pred.store.continue2035
  %i.buo = extractelement <16 x i1> %i.btm, i64 7
  br i1 %i.buo, label %pred.store.if2038, label %pred.store.continue2039

pred.store.if2038:                                ; preds = %pred.store.continue2037
  %i.bup = add i32 %i.btl, 7
  %i.buq = sext i32 %i.bup to i64
  %i.bur = getelementptr inbounds i8, ptr %0, i64 %i.buq
  store i8 32, ptr %i.bur, align 1
  br label %pred.store.continue2039

pred.store.continue2039:                          ; preds = %pred.store.if2038, %pred.store.continue2037
  %i.bus = extractelement <16 x i1> %i.btm, i64 8
  br i1 %i.bus, label %pred.store.if2040, label %pred.store.continue2041

pred.store.if2040:                                ; preds = %pred.store.continue2039
  %i.but = add i32 %i.btl, 8
  %i.buu = sext i32 %i.but to i64
  %i.buv = getelementptr inbounds i8, ptr %0, i64 %i.buu
  store i8 32, ptr %i.buv, align 1
  br label %pred.store.continue2041

pred.store.continue2041:                          ; preds = %pred.store.if2040, %pred.store.continue2039
  %i.buw = extractelement <16 x i1> %i.btm, i64 9
  br i1 %i.buw, label %pred.store.if2042, label %pred.store.continue2043

pred.store.if2042:                                ; preds = %pred.store.continue2041
  %i.bux = add i32 %i.btl, 9
  %i.buy = sext i32 %i.bux to i64
  %i.buz = getelementptr inbounds i8, ptr %0, i64 %i.buy
  store i8 32, ptr %i.buz, align 1
  br label %pred.store.continue2043

pred.store.continue2043:                          ; preds = %pred.store.if2042, %pred.store.continue2041
  %i.bva = extractelement <16 x i1> %i.btm, i64 10
  br i1 %i.bva, label %pred.store.if2044, label %pred.store.continue2045

pred.store.if2044:                                ; preds = %pred.store.continue2043
  %i.bvb = add i32 %i.btl, 10
  %i.bvc = sext i32 %i.bvb to i64
  %i.bvd = getelementptr inbounds i8, ptr %0, i64 %i.bvc
  store i8 32, ptr %i.bvd, align 1
  br label %pred.store.continue2045

pred.store.continue2045:                          ; preds = %pred.store.if2044, %pred.store.continue2043
  %i.bve = extractelement <16 x i1> %i.btm, i64 11
  br i1 %i.bve, label %pred.store.if2046, label %pred.store.continue2047

pred.store.if2046:                                ; preds = %pred.store.continue2045
  %i.bvf = add i32 %i.btl, 11
  %i.bvg = sext i32 %i.bvf to i64
  %i.bvh = getelementptr inbounds i8, ptr %0, i64 %i.bvg
  store i8 32, ptr %i.bvh, align 1
  br label %pred.store.continue2047

pred.store.continue2047:                          ; preds = %pred.store.if2046, %pred.store.continue2045
  %i.bvi = extractelement <16 x i1> %i.btm, i64 12
  br i1 %i.bvi, label %pred.store.if2048, label %pred.store.continue2049

pred.store.if2048:                                ; preds = %pred.store.continue2047
  %i.bvj = add i32 %i.btl, 12
  %i.bvk = sext i32 %i.bvj to i64
  %i.bvl = getelementptr inbounds i8, ptr %0, i64 %i.bvk
  store i8 32, ptr %i.bvl, align 1
  br label %pred.store.continue2049

pred.store.continue2049:                          ; preds = %pred.store.if2048, %pred.store.continue2047
  %i.bvm = extractelement <16 x i1> %i.btm, i64 13
  br i1 %i.bvm, label %pred.store.if2050, label %pred.store.continue2051

pred.store.if2050:                                ; preds = %pred.store.continue2049
  %i.bvn = add i32 %i.btl, 13
  %i.bvo = sext i32 %i.bvn to i64
  %i.bvp = getelementptr inbounds i8, ptr %0, i64 %i.bvo
  store i8 32, ptr %i.bvp, align 1
  br label %pred.store.continue2051

pred.store.continue2051:                          ; preds = %pred.store.if2050, %pred.store.continue2049
  %i.bvq = extractelement <16 x i1> %i.btm, i64 14
  br i1 %i.bvq, label %pred.store.if2052, label %pred.store.continue2053

pred.store.if2052:                                ; preds = %pred.store.continue2051
  %i.bvr = add i32 %i.btl, 14
  %i.bvs = sext i32 %i.bvr to i64
  %i.bvt = getelementptr inbounds i8, ptr %0, i64 %i.bvs
  store i8 32, ptr %i.bvt, align 1
  br label %pred.store.continue2053

pred.store.continue2053:                          ; preds = %pred.store.if2052, %pred.store.continue2051
  %i.bvu = extractelement <16 x i1> %i.btm, i64 15
  br i1 %i.bvu, label %pred.store.if2054, label %pred.store.continue2055

pred.store.if2054:                                ; preds = %pred.store.continue2053
  %i.bvv = add i32 %i.btl, 15
  %i.bvw = sext i32 %i.bvv to i64
  %i.bvx = getelementptr inbounds i8, ptr %0, i64 %i.bvw
  store i8 32, ptr %i.bvx, align 1
  br label %pred.store.continue2055

pred.store.continue2055:                          ; preds = %pred.store.if2054, %pred.store.continue2053
  %index.next2056 = add nuw i32 %index2022, 16    ; 2 uses
  %vec.ind.next2057 = add nsw <16 x i32> %vec.ind2023, splat (i32 16)
  %i.bvy = icmp eq i32 %index.next2056, %n.vec2015
  br i1 %i.bvy, label %middle.block2058, label %vector.body2021, !llvm.loop !56

middle.block2058:                                 ; preds = %pred.store.continue2055
  br i1 %cmp.n2059, label %.loopexit.i274, label %vec.epilog.iter.check2064

vec.epilog.iter.check2064:                        ; preds = %middle.block2058
  br i1 %min.epilog.iters.check2065, label %.lr.ph.i276.preheader, label %vec.epilog.ph2066, !prof !14

vec.epilog.ph2066:                                ; preds = %vector.main.loop.iter.check2011, %vec.epilog.iter.check2064
  %vec.epilog.resume.val2060 = phi i32 [ %n.vec2015, %vec.epilog.iter.check2064 ], [ 0, %vector.main.loop.iter.check2011 ]
  %bc.resume.val2061 = phi i32 [ %i.btk, %vec.epilog.iter.check2064 ], [ %.promoted448, %vector.main.loop.iter.check2011 ]
  %i.bvz = add i32 %.promoted448, %n.vec2068      ; 2 uses
  %broadcast.splatinsert2071 = insertelement <4 x i32> poison, i32 %bc.resume.val2061, i64 0
  %broadcast.splat2072 = shufflevector <4 x i32> %broadcast.splatinsert2071, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction2073 = add nsw <4 x i32> %broadcast.splat2072, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body2074

vec.epilog.vector.body2074:                       ; preds = %pred.store.continue2084, %vec.epilog.ph2066
  %index2075 = phi i32 [ %vec.epilog.resume.val2060, %vec.epilog.ph2066 ], [ %index.next2085, %pred.store.continue2084 ] ; 2 uses
  %vec.ind2076 = phi <4 x i32> [ %induction2073, %vec.epilog.ph2066 ], [ %vec.ind.next2086, %pred.store.continue2084 ] ; 2 uses
  %i.bwa = add i32 %.promoted448, %index2075      ; 4 uses
  %i.bwb = icmp slt <4 x i32> %vec.ind2076, %broadcast.splat2070 ; 4 uses
  %i.bwc = extractelement <4 x i1> %i.bwb, i64 0
  br i1 %i.bwc, label %pred.store.if2077, label %pred.store.continue2078

pred.store.if2077:                                ; preds = %vec.epilog.vector.body2074
  %i.bwd = sext i32 %i.bwa to i64
  %i.bwe = getelementptr inbounds i8, ptr %0, i64 %i.bwd
  store i8 32, ptr %i.bwe, align 1
  br label %pred.store.continue2078

pred.store.continue2078:                          ; preds = %pred.store.if2077, %vec.epilog.vector.body2074
  %i.bwf = extractelement <4 x i1> %i.bwb, i64 1
  br i1 %i.bwf, label %pred.store.if2079, label %pred.store.continue2080

pred.store.if2079:                                ; preds = %pred.store.continue2078
  %i.bwg = add i32 %i.bwa, 1
  %i.bwh = sext i32 %i.bwg to i64
  %i.bwi = getelementptr inbounds i8, ptr %0, i64 %i.bwh
  store i8 32, ptr %i.bwi, align 1
  br label %pred.store.continue2080

pred.store.continue2080:                          ; preds = %pred.store.if2079, %pred.store.continue2078
  %i.bwj = extractelement <4 x i1> %i.bwb, i64 2
  br i1 %i.bwj, label %pred.store.if2081, label %pred.store.continue2082

pred.store.if2081:                                ; preds = %pred.store.continue2080
  %i.bwk = add i32 %i.bwa, 2
  %i.bwl = sext i32 %i.bwk to i64
  %i.bwm = getelementptr inbounds i8, ptr %0, i64 %i.bwl
  store i8 32, ptr %i.bwm, align 1
  br label %pred.store.continue2082

pred.store.continue2082:                          ; preds = %pred.store.if2081, %pred.store.continue2080
  %i.bwn = extractelement <4 x i1> %i.bwb, i64 3
  br i1 %i.bwn, label %pred.store.if2083, label %pred.store.continue2084

pred.store.if2083:                                ; preds = %pred.store.continue2082
  %i.bwo = add i32 %i.bwa, 3
  %i.bwp = sext i32 %i.bwo to i64
  %i.bwq = getelementptr inbounds i8, ptr %0, i64 %i.bwp
  store i8 32, ptr %i.bwq, align 1
  br label %pred.store.continue2084

pred.store.continue2084:                          ; preds = %pred.store.if2083, %pred.store.continue2082
  %index.next2085 = add nuw i32 %index2075, 4     ; 2 uses
  %vec.ind.next2086 = add nsw <4 x i32> %vec.ind2076, splat (i32 4)
  %i.bwr = icmp eq i32 %index.next2085, %n.vec2068
  br i1 %i.bwr, label %vec.epilog.middle.block2087, label %vec.epilog.vector.body2074, !llvm.loop !57

vec.epilog.middle.block2087:                      ; preds = %pred.store.continue2084
  br i1 %cmp.n2088, label %.loopexit.i274, label %.lr.ph.i276.preheader

.lr.ph.i276.preheader:                            ; preds = %iter.check2062, %vec.epilog.iter.check2064, %vec.epilog.middle.block2087
  %.pre.i279449.ph = phi i32 [ %.promoted448, %iter.check2062 ], [ %i.btk, %vec.epilog.iter.check2064 ], [ %i.bvz, %vec.epilog.middle.block2087 ]
  %.030.i277.ph = phi i32 [ 0, %iter.check2062 ], [ %n.vec2015, %vec.epilog.iter.check2064 ], [ %n.vec2068, %vec.epilog.middle.block2087 ]
  br label %.lr.ph.i276

.lr.ph.i276:                                      ; preds = %.lr.ph.i276.preheader, %bb.fy
  %.pre.i279449 = phi i32 [ %i.bwv, %bb.fy ], [ %.pre.i279449.ph, %.lr.ph.i276.preheader ] ; 3 uses
  %.030.i277 = phi i32 [ %i.bww, %bb.fy ], [ %.030.i277.ph, %.lr.ph.i276.preheader ]
  %i.bws = icmp slt i32 %.pre.i279449, %1
  br i1 %i.bws, label %bb.fx, label %bb.fy

bb.fx:                                            ; preds = %.lr.ph.i276
  %i.bwt = sext i32 %.pre.i279449 to i64
  %i.bwu = getelementptr inbounds i8, ptr %0, i64 %i.bwt
  store i8 32, ptr %i.bwu, align 1
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fx, %.lr.ph.i276
  %i.bwv = add nsw i32 %.pre.i279449, 1           ; 2 uses
  %i.bww = add nuw nsw i32 %.030.i277, 1          ; 2 uses
  %exitcond.not.i278 = icmp eq i32 %i.bww, %2
  br i1 %exitcond.not.i278, label %.loopexit.i274, label %.lr.ph.i276, !llvm.loop !58

.loopexit.i274:                                   ; preds = %bb.fy, %middle.block2058, %vec.epilog.middle.block2087, %bb.fw, %bb.fv
  %i.bwx = phi i32 [ %.promoted448, %bb.fv ], [ 0, %bb.fw ], [ %i.bvz, %vec.epilog.middle.block2087 ], [ %i.btk, %middle.block2058 ], [ %i.bwv, %bb.fy ] ; 3 uses
  %i.bwy = icmp slt i32 %i.bwx, %1
  br i1 %i.bwy, label %bb.fz, label %_ZL10outputCharcPcPiii.exit281

bb.fz:                                            ; preds = %.loopexit.i274
  %i.bwz = sext i32 %i.bwx to i64
  %i.bxa = getelementptr inbounds i8, ptr %0, i64 %i.bwz
  store i8 10, ptr %i.bxa, align 1
  br label %_ZL10outputCharcPcPiii.exit281

_ZL10outputCharcPcPiii.exit281:                   ; preds = %.loopexit.i274, %bb.fz
  %i.bxb = add nsw i32 %i.bwx, 1
  store i32 %i.bxb, ptr %i.a, align 4
  %i.bxc = load ptr, ptr %.0131465, align 8
  %i.bxd = icmp ne ptr %i.bxc, null
  %i.bxe = zext i1 %i.bxd to i64
  %i.bxf = getelementptr inbounds nuw i8, ptr %.0131465, i64 8
  br label %.thread

bb.ga:                                            ; preds = %.lr.ph468
  %i.bxg = load ptr, ptr %.0131465, align 8
  call fastcc void @_ZL13outputUStringPKDsiPcPiii(ptr noundef %i.bxg, i32 noundef -1, ptr noundef %0, ptr noundef %i.a, i32 noundef %1, i32 noundef %2)
  %i.bxh = load i32, ptr %i.a, align 4            ; 10 uses
  %i.bxi = icmp eq i32 %i.bxh, 0
  br i1 %i.bxi, label %bb.gc, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %.not.old.i282 = icmp sge i32 %i.bxh, %1
  %or.cond32.i284 = and i1 %.old.i, %.not.old.i282
  br i1 %or.cond32.i284, label %iter.check2224, label %.loopexit.i285

bb.gc:                                            ; preds = %bb.ga
  br i1 %.old.i, label %iter.check2224, label %.loopexit.i285

iter.check2224:                                   ; preds = %bb.gc, %bb.gb
  br i1 %min.iters.check2172, label %.lr.ph.i287.preheader, label %vector.main.loop.iter.check2173

vector.main.loop.iter.check2173:                  ; preds = %iter.check2224
  br i1 %min.iters.check2174, label %vec.epilog.ph2228, label %vector.ph2175

vector.ph2175:                                    ; preds = %vector.main.loop.iter.check2173
  %i.bxj = add i32 %i.bxh, %n.vec2177             ; 3 uses
  %broadcast.splatinsert2180 = insertelement <16 x i32> poison, i32 %i.bxh, i64 0
  %broadcast.splat2181 = shufflevector <16 x i32> %broadcast.splatinsert2180, <16 x i32> poison, <16 x i32> zeroinitializer
  %induction2182 = add nsw <16 x i32> %broadcast.splat2181, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  br label %vector.body2183

vector.body2183:                                  ; preds = %pred.store.continue2217, %vector.ph2175
  %index2184 = phi i32 [ 0, %vector.ph2175 ], [ %index.next2218, %pred.store.continue2217 ] ; 2 uses
  %vec.ind2185 = phi <16 x i32> [ %induction2182, %vector.ph2175 ], [ %vec.ind.next2219, %pred.store.continue2217 ] ; 2 uses
  %i.bxk = add i32 %i.bxh, %index2184             ; 16 uses
  %i.bxl = icmp slt <16 x i32> %vec.ind2185, %broadcast.splat2179 ; 16 uses
  %i.bxm = extractelement <16 x i1> %i.bxl, i64 0
  br i1 %i.bxm, label %pred.store.if2186, label %pred.store.continue2187

pred.store.if2186:                                ; preds = %vector.body2183
  %i.bxn = sext i32 %i.bxk to i64
  %i.bxo = getelementptr inbounds i8, ptr %0, i64 %i.bxn
  store i8 32, ptr %i.bxo, align 1
  br label %pred.store.continue2187

pred.store.continue2187:                          ; preds = %pred.store.if2186, %vector.body2183
  %i.bxp = extractelement <16 x i1> %i.bxl, i64 1
  br i1 %i.bxp, label %pred.store.if2188, label %pred.store.continue2189

pred.store.if2188:                                ; preds = %pred.store.continue2187
  %i.bxq = add i32 %i.bxk, 1
  %i.bxr = sext i32 %i.bxq to i64
  %i.bxs = getelementptr inbounds i8, ptr %0, i64 %i.bxr
  store i8 32, ptr %i.bxs, align 1
  br label %pred.store.continue2189

pred.store.continue2189:                          ; preds = %pred.store.if2188, %pred.store.continue2187
  %i.bxt = extractelement <16 x i1> %i.bxl, i64 2
  br i1 %i.bxt, label %pred.store.if2190, label %pred.store.continue2191

pred.store.if2190:                                ; preds = %pred.store.continue2189
  %i.bxu = add i32 %i.bxk, 2
  %i.bxv = sext i32 %i.bxu to i64
  %i.bxw = getelementptr inbounds i8, ptr %0, i64 %i.bxv
  store i8 32, ptr %i.bxw, align 1
  br label %pred.store.continue2191

pred.store.continue2191:                          ; preds = %pred.store.if2190, %pred.store.continue2189
  %i.bxx = extractelement <16 x i1> %i.bxl, i64 3
  br i1 %i.bxx, label %pred.store.if2192, label %pred.store.continue2193

pred.store.if2192:                                ; preds = %pred.store.continue2191
  %i.bxy = add i32 %i.bxk, 3
  %i.bxz = sext i32 %i.bxy to i64
  %i.bya = getelementptr inbounds i8, ptr %0, i64 %i.bxz
  store i8 32, ptr %i.bya, align 1
  br label %pred.store.continue2193

pred.store.continue2193:                          ; preds = %pred.store.if2192, %pred.store.continue2191
  %i.byb = extractelement <16 x i1> %i.bxl, i64 4
  br i1 %i.byb, label %pred.store.if2194, label %pred.store.continue2195

pred.store.if2194:                                ; preds = %pred.store.continue2193
  %i.byc = add i32 %i.bxk, 4
  %i.byd = sext i32 %i.byc to i64
  %i.bye = getelementptr inbounds i8, ptr %0, i64 %i.byd
  store i8 32, ptr %i.bye, align 1
  br label %pred.store.continue2195

pred.store.continue2195:                          ; preds = %pred.store.if2194, %pred.store.continue2193
  %i.byf = extractelement <16 x i1> %i.bxl, i64 5
  br i1 %i.byf, label %pred.store.if2196, label %pred.store.continue2197

pred.store.if2196:                                ; preds = %pred.store.continue2195
  %i.byg = add i32 %i.bxk, 5
  %i.byh = sext i32 %i.byg to i64
  %i.byi = getelementptr inbounds i8, ptr %0, i64 %i.byh
  store i8 32, ptr %i.byi, align 1
  br label %pred.store.continue2197

pred.store.continue2197:                          ; preds = %pred.store.if2196, %pred.store.continue2195
  %i.byj = extractelement <16 x i1> %i.bxl, i64 6
  br i1 %i.byj, label %pred.store.if2198, label %pred.store.continue2199

pred.store.if2198:                                ; preds = %pred.store.continue2197
  %i.byk = add i32 %i.bxk, 6
  %i.byl = sext i32 %i.byk to i64
  %i.bym = getelementptr inbounds i8, ptr %0, i64 %i.byl
  store i8 32, ptr %i.bym, align 1
  br label %pred.store.continue2199

pred.store.continue2199:                          ; preds = %pred.store.if2198, %pred.store.continue2197
  %i.byn = extractelement <16 x i1> %i.bxl, i64 7
  br i1 %i.byn, label %pred.store.if2200, label %pred.store.continue2201

pred.store.if2200:                                ; preds = %pred.store.continue2199
  %i.byo = add i32 %i.bxk, 7
  %i.byp = sext i32 %i.byo to i64
  %i.byq = getelementptr inbounds i8, ptr %0, i64 %i.byp
  store i8 32, ptr %i.byq, align 1
  br label %pred.store.continue2201

pred.store.continue2201:                          ; preds = %pred.store.if2200, %pred.store.continue2199
  %i.byr = extractelement <16 x i1> %i.bxl, i64 8
  br i1 %i.byr, label %pred.store.if2202, label %pred.store.continue2203

pred.store.if2202:                                ; preds = %pred.store.continue2201
  %i.bys = add i32 %i.bxk, 8
  %i.byt = sext i32 %i.bys to i64
  %i.byu = getelementptr inbounds i8, ptr %0, i64 %i.byt
  store i8 32, ptr %i.byu, align 1
  br label %pred.store.continue2203

pred.store.continue2203:                          ; preds = %pred.store.if2202, %pred.store.continue2201
  %i.byv = extractelement <16 x i1> %i.bxl, i64 9
  br i1 %i.byv, label %pred.store.if2204, label %pred.store.continue2205

pred.store.if2204:                                ; preds = %pred.store.continue2203
  %i.byw = add i32 %i.bxk, 9
  %i.byx = sext i32 %i.byw to i64
  %i.byy = getelementptr inbounds i8, ptr %0, i64 %i.byx
  store i8 32, ptr %i.byy, align 1
  br label %pred.store.continue2205

pred.store.continue2205:                          ; preds = %pred.store.if2204, %pred.store.continue2203
  %i.byz = extractelement <16 x i1> %i.bxl, i64 10
  br i1 %i.byz, label %pred.store.if2206, label %pred.store.continue2207

pred.store.if2206:                                ; preds = %pred.store.continue2205
  %i.bza = add i32 %i.bxk, 10
  %i.bzb = sext i32 %i.bza to i64
  %i.bzc = getelementptr inbounds i8, ptr %0, i64 %i.bzb
  store i8 32, ptr %i.bzc, align 1
  br label %pred.store.continue2207

pred.store.continue2207:                          ; preds = %pred.store.if2206, %pred.store.continue2205
  %i.bzd = extractelement <16 x i1> %i.bxl, i64 11
  br i1 %i.bzd, label %pred.store.if2208, label %pred.store.continue2209

pred.store.if2208:                                ; preds = %pred.store.continue2207
  %i.bze = add i32 %i.bxk, 11
  %i.bzf = sext i32 %i.bze to i64
  %i.bzg = getelementptr inbounds i8, ptr %0, i64 %i.bzf
  store i8 32, ptr %i.bzg, align 1
  br label %pred.store.continue2209

pred.store.continue2209:                          ; preds = %pred.store.if2208, %pred.store.continue2207
  %i.bzh = extractelement <16 x i1> %i.bxl, i64 12
  br i1 %i.bzh, label %pred.store.if2210, label %pred.store.continue2211

pred.store.if2210:                                ; preds = %pred.store.continue2209
  %i.bzi = add i32 %i.bxk, 12
  %i.bzj = sext i32 %i.bzi to i64
  %i.bzk = getelementptr inbounds i8, ptr %0, i64 %i.bzj
  store i8 32, ptr %i.bzk, align 1
  br label %pred.store.continue2211

pred.store.continue2211:                          ; preds = %pred.store.if2210, %pred.store.continue2209
  %i.bzl = extractelement <16 x i1> %i.bxl, i64 13
  br i1 %i.bzl, label %pred.store.if2212, label %pred.store.continue2213

pred.store.if2212:                                ; preds = %pred.store.continue2211
  %i.bzm = add i32 %i.bxk, 13
  %i.bzn = sext i32 %i.bzm to i64
  %i.bzo = getelementptr inbounds i8, ptr %0, i64 %i.bzn
  store i8 32, ptr %i.bzo, align 1
  br label %pred.store.continue2213

pred.store.continue2213:                          ; preds = %pred.store.if2212, %pred.store.continue2211
  %i.bzp = extractelement <16 x i1> %i.bxl, i64 14
  br i1 %i.bzp, label %pred.store.if2214, label %pred.store.continue2215

pred.store.if2214:                                ; preds = %pred.store.continue2213
  %i.bzq = add i32 %i.bxk, 14
  %i.bzr = sext i32 %i.bzq to i64
  %i.bzs = getelementptr inbounds i8, ptr %0, i64 %i.bzr
  store i8 32, ptr %i.bzs, align 1
  br label %pred.store.continue2215

pred.store.continue2215:                          ; preds = %pred.store.if2214, %pred.store.continue2213
  %i.bzt = extractelement <16 x i1> %i.bxl, i64 15
  br i1 %i.bzt, label %pred.store.if2216, label %pred.store.continue2217

pred.store.if2216:                                ; preds = %pred.store.continue2215
  %i.bzu = add i32 %i.bxk, 15
  %i.bzv = sext i32 %i.bzu to i64
  %i.bzw = getelementptr inbounds i8, ptr %0, i64 %i.bzv
  store i8 32, ptr %i.bzw, align 1
  br label %pred.store.continue2217

pred.store.continue2217:                          ; preds = %pred.store.if2216, %pred.store.continue2215
  %index.next2218 = add nuw i32 %index2184, 16    ; 2 uses
  %vec.ind.next2219 = add nsw <16 x i32> %vec.ind2185, splat (i32 16)
  %i.bzx = icmp eq i32 %index.next2218, %n.vec2177
  br i1 %i.bzx, label %middle.block2220, label %vector.body2183, !llvm.loop !59

middle.block2220:                                 ; preds = %pred.store.continue2217
  br i1 %cmp.n2221, label %.loopexit.i285, label %vec.epilog.iter.check2226

vec.epilog.iter.check2226:                        ; preds = %middle.block2220
  br i1 %min.epilog.iters.check2227, label %.lr.ph.i287.preheader, label %vec.epilog.ph2228, !prof !14

vec.epilog.ph2228:                                ; preds = %vector.main.loop.iter.check2173, %vec.epilog.iter.check2226
  %vec.epilog.resume.val2222 = phi i32 [ %n.vec2177, %vec.epilog.iter.check2226 ], [ 0, %vector.main.loop.iter.check2173 ]
  %bc.resume.val2223 = phi i32 [ %i.bxj, %vec.epilog.iter.check2226 ], [ %i.bxh, %vector.main.loop.iter.check2173 ]
  %i.bzy = add i32 %i.bxh, %n.vec2230             ; 2 uses
  %broadcast.splatinsert2233 = insertelement <4 x i32> poison, i32 %bc.resume.val2223, i64 0
  %broadcast.splat2234 = shufflevector <4 x i32> %broadcast.splatinsert2233, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction2235 = add nsw <4 x i32> %broadcast.splat2234, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body2236

vec.epilog.vector.body2236:                       ; preds = %pred.store.continue2246, %vec.epilog.ph2228
  %index2237 = phi i32 [ %vec.epilog.resume.val2222, %vec.epilog.ph2228 ], [ %index.next2247, %pred.store.continue2246 ] ; 2 uses
  %vec.ind2238 = phi <4 x i32> [ %induction2235, %vec.epilog.ph2228 ], [ %vec.ind.next2248, %pred.store.continue2246 ] ; 2 uses
  %i.bzz = add i32 %i.bxh, %index2237             ; 4 uses
  %i.caa = icmp slt <4 x i32> %vec.ind2238, %broadcast.splat2232 ; 4 uses
  %i.cab = extractelement <4 x i1> %i.caa, i64 0
  br i1 %i.cab, label %pred.store.if2239, label %pred.store.continue2240

pred.store.if2239:                                ; preds = %vec.epilog.vector.body2236
  %i.cac = sext i32 %i.bzz to i64
  %i.cad = getelementptr inbounds i8, ptr %0, i64 %i.cac
  store i8 32, ptr %i.cad, align 1
  br label %pred.store.continue2240

pred.store.continue2240:                          ; preds = %pred.store.if2239, %vec.epilog.vector.body2236
  %i.cae = extractelement <4 x i1> %i.caa, i64 1
  br i1 %i.cae, label %pred.store.if2241, label %pred.store.continue2242

pred.store.if2241:                                ; preds = %pred.store.continue2240
  %i.caf = add i32 %i.bzz, 1
  %i.cag = sext i32 %i.caf to i64
  %i.cah = getelementptr inbounds i8, ptr %0, i64 %i.cag
  store i8 32, ptr %i.cah, align 1
  br label %pred.store.continue2242

pred.store.continue2242:                          ; preds = %pred.store.if2241, %pred.store.continue2240
  %i.cai = extractelement <4 x i1> %i.caa, i64 2
  br i1 %i.cai, label %pred.store.if2243, label %pred.store.continue2244

pred.store.if2243:                                ; preds = %pred.store.continue2242
  %i.caj = add i32 %i.bzz, 2
  %i.cak = sext i32 %i.caj to i64
  %i.cal = getelementptr inbounds i8, ptr %0, i64 %i.cak
  store i8 32, ptr %i.cal, align 1
  br label %pred.store.continue2244

pred.store.continue2244:                          ; preds = %pred.store.if2243, %pred.store.continue2242
  %i.cam = extractelement <4 x i1> %i.caa, i64 3
  br i1 %i.cam, label %pred.store.if2245, label %pred.store.continue2246

pred.store.if2245:                                ; preds = %pred.store.continue2244
  %i.can = add i32 %i.bzz, 3
  %i.cao = sext i32 %i.can to i64
  %i.cap = getelementptr inbounds i8, ptr %0, i64 %i.cao
  store i8 32, ptr %i.cap, align 1
  br label %pred.store.continue2246

pred.store.continue2246:                          ; preds = %pred.store.if2245, %pred.store.continue2244
  %index.next2247 = add nuw i32 %index2237, 4     ; 2 uses
  %vec.ind.next2248 = add nsw <4 x i32> %vec.ind2238, splat (i32 4)
  %i.caq = icmp eq i32 %index.next2247, %n.vec2230
  br i1 %i.caq, label %vec.epilog.middle.block2249, label %vec.epilog.vector.body2236, !llvm.loop !60

vec.epilog.middle.block2249:                      ; preds = %pred.store.continue2246
  br i1 %cmp.n2250, label %.loopexit.i285, label %.lr.ph.i287.preheader

.lr.ph.i287.preheader:                            ; preds = %iter.check2224, %vec.epilog.iter.check2226, %vec.epilog.middle.block2249
  %.pre.i290438.ph = phi i32 [ %i.bxh, %iter.check2224 ], [ %i.bxj, %vec.epilog.iter.check2226 ], [ %i.bzy, %vec.epilog.middle.block2249 ]
  %.030.i288.ph = phi i32 [ 0, %iter.check2224 ], [ %n.vec2177, %vec.epilog.iter.check2226 ], [ %n.vec2230, %vec.epilog.middle.block2249 ]
  br label %.lr.ph.i287

.lr.ph.i287:                                      ; preds = %.lr.ph.i287.preheader, %bb.ge
  %.pre.i290438 = phi i32 [ %i.cau, %bb.ge ], [ %.pre.i290438.ph, %.lr.ph.i287.preheader ] ; 3 uses
  %.030.i288 = phi i32 [ %i.cav, %bb.ge ], [ %.030.i288.ph, %.lr.ph.i287.preheader ]
  %i.car = icmp slt i32 %.pre.i290438, %1
  br i1 %i.car, label %bb.gd, label %bb.ge

bb.gd:                                            ; preds = %.lr.ph.i287
  %i.cas = sext i32 %.pre.i290438 to i64
  %i.cat = getelementptr inbounds i8, ptr %0, i64 %i.cas
  store i8 32, ptr %i.cat, align 1
  br label %bb.ge

bb.ge:                                            ; preds = %bb.gd, %.lr.ph.i287
  %i.cau = add nsw i32 %.pre.i290438, 1           ; 2 uses
  %i.cav = add nuw nsw i32 %.030.i288, 1          ; 2 uses
  %exitcond.not.i289 = icmp eq i32 %i.cav, %2
  br i1 %exitcond.not.i289, label %.loopexit.i285, label %.lr.ph.i287, !llvm.loop !61

.loopexit.i285:                                   ; preds = %bb.ge, %middle.block2220, %vec.epilog.middle.block2249, %bb.gc, %bb.gb
  %i.caw = phi i32 [ %i.bxh, %bb.gb ], [ 0, %bb.gc ], [ %i.bzy, %vec.epilog.middle.block2249 ], [ %i.bxj, %middle.block2220 ], [ %i.cau, %bb.ge ] ; 3 uses
  %i.cax = icmp slt i32 %i.caw, %1
  br i1 %i.cax, label %bb.gf, label %_ZL10outputCharcPcPiii.exit292

bb.gf:                                            ; preds = %.loopexit.i285
  %i.cay = sext i32 %i.caw to i64
  %i.caz = getelementptr inbounds i8, ptr %0, i64 %i.cay
  store i8 10, ptr %i.caz, align 1
  br label %_ZL10outputCharcPcPiii.exit292

_ZL10outputCharcPcPiii.exit292:                   ; preds = %.loopexit.i285, %bb.gf
  %i.cba = add nsw i32 %i.caw, 1
  store i32 %i.cba, ptr %i.a, align 4
  %i.cbb = load ptr, ptr %.0131465, align 8
  %i.cbc = icmp ne ptr %i.cbb, null
  %i.cbd = zext i1 %i.cbc to i64
  %i.cbe = getelementptr inbounds nuw i8, ptr %.0131465, i64 8
  br label %.thread

bb.gg:                                            ; preds = %.lr.ph468
  %.not160 = icmp eq i32 %.0130466, 0
  br i1 %.not160, label %.thread, label %.thread382

.thread382:                                       ; preds = %bb.ex, %bb.ew, %bb.ev, %bb.eu, %bb.gg
  %.1397 = phi i32 [ %.0130466, %bb.gg ], [ 16, %bb.ex ], [ 8, %bb.ew ], [ 4, %bb.ev ], [ 2, %bb.eu ] ; 2 uses
  %.1134395 = phi ptr [ %.0133464, %bb.gg ], [ %i.bkn, %bb.ex ], [ %.0133464, %bb.ew ], [ %.0133464, %bb.ev ], [ %.0133464, %bb.eu ]
  %.1136394 = phi ptr [ %.0135463, %bb.gg ], [ %.0135463, %bb.ex ], [ %i.bkk, %bb.ew ], [ %.0135463, %bb.ev ], [ %.0135463, %bb.eu ]
  %.1138393 = phi ptr [ %.0137462, %bb.gg ], [ %.0137462, %bb.ex ], [ %.0137462, %bb.ew ], [ %i.bkh, %bb.ev ], [ %.0137462, %bb.eu ]
  %.1140392 = phi ptr [ %.0139461, %bb.gg ], [ %.0139461, %bb.ex ], [ %.0139461, %bb.ew ], [ %.0139461, %bb.ev ], [ %i.bke, %bb.eu ]
  %.2145391 = phi i64 [ %.1144460, %bb.gg ], [ %i.bko, %bb.ex ], [ %i.bkm, %bb.ew ], [ %i.bkj, %bb.ev ], [ %i.bkg, %bb.eu ] ; 2 uses
  %i.cbf = shl nuw nsw i32 %.1397, 2
  %i.cbg = zext nneg i32 %i.cbf to i64
  %.pre.i293 = load i32, ptr %i.a, align 4
  %i.cbh = sext i32 %.pre.i293 to i64
  br label %.loopexit.i.i294

.loopexit.i.i294:                                 ; preds = %_ZL10outputCharcPcPiii.exit.i297, %.thread382
  %indvars.iv551 = phi i64 [ %indvars.iv.next552, %_ZL10outputCharcPcPiii.exit.i297 ], [ %i.cbh, %.thread382 ] ; 4 uses
  %indvars.iv.i295 = phi i64 [ %indvars.iv.next.i296, %_ZL10outputCharcPcPiii.exit.i297 ], [ %i.cbg, %.thread382 ] ; 2 uses
  %indvars.iv.next.i296 = add nsw i64 %indvars.iv.i295, -4 ; 2 uses
  %i.cbi = icmp slt i64 %indvars.iv551, %i.d
  br i1 %i.cbi, label %bb.gh, label %_ZL10outputCharcPcPiii.exit.i297

bb.gh:                                            ; preds = %.loopexit.i.i294
  %i.cbj = ashr i64 %.2145391, %indvars.iv.next.i296
  %i.cbk = and i64 %i.cbj, 15
  %i.cbl = getelementptr inbounds nuw i8, ptr @_ZZL14outputHexBytesliPcPiiE9gHexChars, i64 %i.cbk
  %i.cbm = load i8, ptr %i.cbl, align 1
  %i.cbn = getelementptr inbounds i8, ptr %0, i64 %indvars.iv551
  store i8 %i.cbm, ptr %i.cbn, align 1
  br label %_ZL10outputCharcPcPiii.exit.i297

_ZL10outputCharcPcPiii.exit.i297:                 ; preds = %bb.gh, %.loopexit.i.i294
  %indvars.iv.next552 = add nsw i64 %indvars.iv551, 1 ; 3 uses
  %i.cbo = icmp samesign ugt i64 %indvars.iv.i295, 7
  br i1 %i.cbo, label %.loopexit.i.i294, label %_ZL14outputHexBytesliPcPii.exit299, !llvm.loop !62

_ZL14outputHexBytesliPcPii.exit299:               ; preds = %_ZL10outputCharcPcPiii.exit.i297
  %i.cbp = trunc nsw i64 %indvars.iv.next552 to i32 ; 10 uses
  %i.cbq = icmp eq i64 %indvars.iv.next552, 0
  br i1 %i.cbq, label %bb.gk, label %bb.gi

bb.gi:                                            ; preds = %_ZL14outputHexBytesliPcPii.exit299
  %i.cbr = icmp sgt i32 %1, %i.cbp
  br i1 %i.cbr, label %bb.gj, label %.loopexit.i303

bb.gj:                                            ; preds = %bb.gi
  %i.cbs = getelementptr i8, ptr %0, i64 %indvars.iv551
  %i.cbt = load i8, ptr %i.cbs, align 1
  %i.cbu = icmp eq i8 %i.cbt, 10
  %or.cond399 = and i1 %.old.i, %i.cbu
  br i1 %or.cond399, label %iter.check1900, label %.loopexit.i303

bb.gk:                                            ; preds = %_ZL14outputHexBytesliPcPii.exit299
  br i1 %.old.i, label %iter.check1900, label %.loopexit.i303

iter.check1900:                                   ; preds = %bb.gj, %bb.gk
  br i1 %min.iters.check1848, label %.lr.ph.i305.preheader, label %vector.main.loop.iter.check1849

vector.main.loop.iter.check1849:                  ; preds = %iter.check1900
  br i1 %min.iters.check1850, label %vec.epilog.ph1904, label %vector.ph1851

vector.ph1851:                                    ; preds = %vector.main.loop.iter.check1849
  %i.cbv = add i32 %n.vec1853, %i.cbp             ; 3 uses
  %broadcast.splatinsert1856 = insertelement <16 x i32> poison, i32 %i.cbp, i64 0
  %broadcast.splat1857 = shufflevector <16 x i32> %broadcast.splatinsert1856, <16 x i32> poison, <16 x i32> zeroinitializer
  %induction1858 = add nsw <16 x i32> %broadcast.splat1857, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  br label %vector.body1859

vector.body1859:                                  ; preds = %pred.store.continue1893, %vector.ph1851
  %index1860 = phi i32 [ 0, %vector.ph1851 ], [ %index.next1894, %pred.store.continue1893 ] ; 2 uses
  %vec.ind1861 = phi <16 x i32> [ %induction1858, %vector.ph1851 ], [ %vec.ind.next1895, %pred.store.continue1893 ] ; 2 uses
  %i.cbw = add i32 %index1860, %i.cbp             ; 16 uses
  %i.cbx = icmp slt <16 x i32> %vec.ind1861, %broadcast.splat1855 ; 16 uses
  %i.cby = extractelement <16 x i1> %i.cbx, i64 0
  br i1 %i.cby, label %pred.store.if1862, label %pred.store.continue1863

pred.store.if1862:                                ; preds = %vector.body1859
  %i.cbz = sext i32 %i.cbw to i64
  %i.cca = getelementptr inbounds i8, ptr %0, i64 %i.cbz
  store i8 32, ptr %i.cca, align 1
  br label %pred.store.continue1863

pred.store.continue1863:                          ; preds = %pred.store.if1862, %vector.body1859
  %i.ccb = extractelement <16 x i1> %i.cbx, i64 1
  br i1 %i.ccb, label %pred.store.if1864, label %pred.store.continue1865

pred.store.if1864:                                ; preds = %pred.store.continue1863
  %i.ccc = add i32 %i.cbw, 1
  %i.ccd = sext i32 %i.ccc to i64
  %i.cce = getelementptr inbounds i8, ptr %0, i64 %i.ccd
  store i8 32, ptr %i.cce, align 1
  br label %pred.store.continue1865

pred.store.continue1865:                          ; preds = %pred.store.if1864, %pred.store.continue1863
  %i.ccf = extractelement <16 x i1> %i.cbx, i64 2
  br i1 %i.ccf, label %pred.store.if1866, label %pred.store.continue1867

pred.store.if1866:                                ; preds = %pred.store.continue1865
  %i.ccg = add i32 %i.cbw, 2
  %i.cch = sext i32 %i.ccg to i64
  %i.cci = getelementptr inbounds i8, ptr %0, i64 %i.cch
  store i8 32, ptr %i.cci, align 1
  br label %pred.store.continue1867

pred.store.continue1867:                          ; preds = %pred.store.if1866, %pred.store.continue1865
  %i.ccj = extractelement <16 x i1> %i.cbx, i64 3
  br i1 %i.ccj, label %pred.store.if1868, label %pred.store.continue1869

pred.store.if1868:                                ; preds = %pred.store.continue1867
  %i.cck = add i32 %i.cbw, 3
  %i.ccl = sext i32 %i.cck to i64
  %i.ccm = getelementptr inbounds i8, ptr %0, i64 %i.ccl
  store i8 32, ptr %i.ccm, align 1
  br label %pred.store.continue1869

pred.store.continue1869:                          ; preds = %pred.store.if1868, %pred.store.continue1867
  %i.ccn = extractelement <16 x i1> %i.cbx, i64 4
  br i1 %i.ccn, label %pred.store.if1870, label %pred.store.continue1871

pred.store.if1870:                                ; preds = %pred.store.continue1869
  %i.cco = add i32 %i.cbw, 4
  %i.ccp = sext i32 %i.cco to i64
  %i.ccq = getelementptr inbounds i8, ptr %0, i64 %i.ccp
  store i8 32, ptr %i.ccq, align 1
  br label %pred.store.continue1871

pred.store.continue1871:                          ; preds = %pred.store.if1870, %pred.store.continue1869
  %i.ccr = extractelement <16 x i1> %i.cbx, i64 5
  br i1 %i.ccr, label %pred.store.if1872, label %pred.store.continue1873

pred.store.if1872:                                ; preds = %pred.store.continue1871
  %i.ccs = add i32 %i.cbw, 5
  %i.cct = sext i32 %i.ccs to i64
  %i.ccu = getelementptr inbounds i8, ptr %0, i64 %i.cct
  store i8 32, ptr %i.ccu, align 1
  br label %pred.store.continue1873

pred.store.continue1873:                          ; preds = %pred.store.if1872, %pred.store.continue1871
  %i.ccv = extractelement <16 x i1> %i.cbx, i64 6
  br i1 %i.ccv, label %pred.store.if1874, label %pred.store.continue1875

pred.store.if1874:                                ; preds = %pred.store.continue1873
  %i.ccw = add i32 %i.cbw, 6
  %i.ccx = sext i32 %i.ccw to i64
  %i.ccy = getelementptr inbounds i8, ptr %0, i64 %i.ccx
  store i8 32, ptr %i.ccy, align 1
  br label %pred.store.continue1875

pred.store.continue1875:                          ; preds = %pred.store.if1874, %pred.store.continue1873
  %i.ccz = extractelement <16 x i1> %i.cbx, i64 7
  br i1 %i.ccz, label %pred.store.if1876, label %pred.store.continue1877

pred.store.if1876:                                ; preds = %pred.store.continue1875
  %i.cda = add i32 %i.cbw, 7
  %i.cdb = sext i32 %i.cda to i64
  %i.cdc = getelementptr inbounds i8, ptr %0, i64 %i.cdb
  store i8 32, ptr %i.cdc, align 1
  br label %pred.store.continue1877

pred.store.continue1877:                          ; preds = %pred.store.if1876, %pred.store.continue1875
  %i.cdd = extractelement <16 x i1> %i.cbx, i64 8
  br i1 %i.cdd, label %pred.store.if1878, label %pred.store.continue1879

pred.store.if1878:                                ; preds = %pred.store.continue1877
  %i.cde = add i32 %i.cbw, 8
  %i.cdf = sext i32 %i.cde to i64
  %i.cdg = getelementptr inbounds i8, ptr %0, i64 %i.cdf
  store i8 32, ptr %i.cdg, align 1
  br label %pred.store.continue1879

pred.store.continue1879:                          ; preds = %pred.store.if1878, %pred.store.continue1877
  %i.cdh = extractelement <16 x i1> %i.cbx, i64 9
  br i1 %i.cdh, label %pred.store.if1880, label %pred.store.continue1881

pred.store.if1880:                                ; preds = %pred.store.continue1879
  %i.cdi = add i32 %i.cbw, 9
end_hunk_2
begin_hunk_3_@utrace_vformat_78:bb.a
  %i.cnp = extractelement <16 x i1> %i.clt, i64 12
  br i1 %i.cnp, label %pred.store.if1049, label %pred.store.continue1050

pred.store.if1049:                                ; preds = %pred.store.continue1048
  %i.cnq = add i32 %i.cls, 12
  %i.cnr = sext i32 %i.cnq to i64
  %i.cns = getelementptr inbounds i8, ptr %0, i64 %i.cnr
  store i8 32, ptr %i.cns, align 1
  br label %pred.store.continue1050

pred.store.continue1050:                          ; preds = %pred.store.if1049, %pred.store.continue1048
  %i.cnt = extractelement <16 x i1> %i.clt, i64 13
  br i1 %i.cnt, label %pred.store.if1051, label %pred.store.continue1052

pred.store.if1051:                                ; preds = %pred.store.continue1050
  %i.cnu = add i32 %i.cls, 13
  %i.cnv = sext i32 %i.cnu to i64
  %i.cnw = getelementptr inbounds i8, ptr %0, i64 %i.cnv
  store i8 32, ptr %i.cnw, align 1
  br label %pred.store.continue1052

pred.store.continue1052:                          ; preds = %pred.store.if1051, %pred.store.continue1050
  %i.cnx = extractelement <16 x i1> %i.clt, i64 14
  br i1 %i.cnx, label %pred.store.if1053, label %pred.store.continue1054

pred.store.if1053:                                ; preds = %pred.store.continue1052
  %i.cny = add i32 %i.cls, 14
  %i.cnz = sext i32 %i.cny to i64
  %i.coa = getelementptr inbounds i8, ptr %0, i64 %i.cnz
  store i8 32, ptr %i.coa, align 1
  br label %pred.store.continue1054

pred.store.continue1054:                          ; preds = %pred.store.if1053, %pred.store.continue1052
  %i.cob = extractelement <16 x i1> %i.clt, i64 15
  br i1 %i.cob, label %pred.store.if1055, label %pred.store.continue1056

pred.store.if1055:                                ; preds = %pred.store.continue1054
  %i.coc = add i32 %i.cls, 15
  %i.cod = sext i32 %i.coc to i64
  %i.coe = getelementptr inbounds i8, ptr %0, i64 %i.cod
  store i8 32, ptr %i.coe, align 1
  br label %pred.store.continue1056

pred.store.continue1056:                          ; preds = %pred.store.if1055, %pred.store.continue1054
  %index.next1057 = add nuw i32 %index1023, 16    ; 2 uses
  %vec.ind.next1058 = add nsw <16 x i32> %vec.ind1024, splat (i32 16)
  %i.cof = icmp eq i32 %index.next1057, %n.vec1016
  br i1 %i.cof, label %middle.block1059, label %vector.body1022, !llvm.loop !69

middle.block1059:                                 ; preds = %pred.store.continue1056
  br i1 %cmp.n1060, label %.loopexit.i332, label %vec.epilog.iter.check1065

vec.epilog.iter.check1065:                        ; preds = %middle.block1059
  br i1 %min.epilog.iters.check1066, label %.lr.ph.i334.preheader, label %vec.epilog.ph1067, !prof !14

vec.epilog.ph1067:                                ; preds = %vector.main.loop.iter.check1012, %vec.epilog.iter.check1065
  %vec.epilog.resume.val1061 = phi i32 [ %n.vec1016, %vec.epilog.iter.check1065 ], [ 0, %vector.main.loop.iter.check1012 ]
  %bc.resume.val1062 = phi i32 [ %i.clr, %vec.epilog.iter.check1065 ], [ %i.clk, %vector.main.loop.iter.check1012 ]
  %i.cog = add i32 %n.vec1069, %i.clk             ; 2 uses
  %broadcast.splatinsert1072 = insertelement <4 x i32> poison, i32 %bc.resume.val1062, i64 0
  %broadcast.splat1073 = shufflevector <4 x i32> %broadcast.splatinsert1072, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction1074 = add nsw <4 x i32> %broadcast.splat1073, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body1075

vec.epilog.vector.body1075:                       ; preds = %pred.store.continue1085, %vec.epilog.ph1067
  %index1076 = phi i32 [ %vec.epilog.resume.val1061, %vec.epilog.ph1067 ], [ %index.next1086, %pred.store.continue1085 ] ; 2 uses
  %vec.ind1077 = phi <4 x i32> [ %induction1074, %vec.epilog.ph1067 ], [ %vec.ind.next1087, %pred.store.continue1085 ] ; 2 uses
  %i.coh = add i32 %index1076, %i.clk             ; 4 uses
  %i.coi = icmp slt <4 x i32> %vec.ind1077, %broadcast.splat1071 ; 4 uses
  %i.coj = extractelement <4 x i1> %i.coi, i64 0
  br i1 %i.coj, label %pred.store.if1078, label %pred.store.continue1079

pred.store.if1078:                                ; preds = %vec.epilog.vector.body1075
  %i.cok = sext i32 %i.coh to i64
  %i.col = getelementptr inbounds i8, ptr %0, i64 %i.cok
  store i8 32, ptr %i.col, align 1
  br label %pred.store.continue1079

pred.store.continue1079:                          ; preds = %pred.store.if1078, %vec.epilog.vector.body1075
  %i.com = extractelement <4 x i1> %i.coi, i64 1
  br i1 %i.com, label %pred.store.if1080, label %pred.store.continue1081

pred.store.if1080:                                ; preds = %pred.store.continue1079
  %i.con = add i32 %i.coh, 1
  %i.coo = sext i32 %i.con to i64
  %i.cop = getelementptr inbounds i8, ptr %0, i64 %i.coo
  store i8 32, ptr %i.cop, align 1
  br label %pred.store.continue1081

pred.store.continue1081:                          ; preds = %pred.store.if1080, %pred.store.continue1079
  %i.coq = extractelement <4 x i1> %i.coi, i64 2
  br i1 %i.coq, label %pred.store.if1082, label %pred.store.continue1083

pred.store.if1082:                                ; preds = %pred.store.continue1081
  %i.cor = add i32 %i.coh, 2
  %i.cos = sext i32 %i.cor to i64
  %i.cot = getelementptr inbounds i8, ptr %0, i64 %i.cos
  store i8 32, ptr %i.cot, align 1
  br label %pred.store.continue1083

pred.store.continue1083:                          ; preds = %pred.store.if1082, %pred.store.continue1081
  %i.cou = extractelement <4 x i1> %i.coi, i64 3
  br i1 %i.cou, label %pred.store.if1084, label %pred.store.continue1085

pred.store.if1084:                                ; preds = %pred.store.continue1083
  %i.cov = add i32 %i.coh, 3
  %i.cow = sext i32 %i.cov to i64
  %i.cox = getelementptr inbounds i8, ptr %0, i64 %i.cow
  store i8 32, ptr %i.cox, align 1
  br label %pred.store.continue1085

pred.store.continue1085:                          ; preds = %pred.store.if1084, %pred.store.continue1083
  %index.next1086 = add nuw i32 %index1076, 4     ; 2 uses
  %vec.ind.next1087 = add nsw <4 x i32> %vec.ind1077, splat (i32 4)
  %i.coy = icmp eq i32 %index.next1086, %n.vec1069
  br i1 %i.coy, label %vec.epilog.middle.block1088, label %vec.epilog.vector.body1075, !llvm.loop !70

vec.epilog.middle.block1088:                      ; preds = %pred.store.continue1085
  br i1 %cmp.n1089, label %.loopexit.i332, label %.lr.ph.i334.preheader

.lr.ph.i334.preheader:                            ; preds = %iter.check1063, %vec.epilog.iter.check1065, %vec.epilog.middle.block1088
  %.pre.i337486.ph = phi i32 [ %i.clk, %iter.check1063 ], [ %i.clr, %vec.epilog.iter.check1065 ], [ %i.cog, %vec.epilog.middle.block1088 ]
  %.030.i335.ph = phi i32 [ 0, %iter.check1063 ], [ %n.vec1016, %vec.epilog.iter.check1065 ], [ %n.vec1069, %vec.epilog.middle.block1088 ]
  br label %.lr.ph.i334

.lr.ph.i334:                                      ; preds = %.lr.ph.i334.preheader, %bb.hf
  %.pre.i337486 = phi i32 [ %i.cpc, %bb.hf ], [ %.pre.i337486.ph, %.lr.ph.i334.preheader ] ; 3 uses
  %.030.i335 = phi i32 [ %i.cpd, %bb.hf ], [ %.030.i335.ph, %.lr.ph.i334.preheader ]
  %i.coz = icmp slt i32 %.pre.i337486, %1
  br i1 %i.coz, label %bb.he, label %bb.hf

bb.he:                                            ; preds = %.lr.ph.i334
  %i.cpa = sext i32 %.pre.i337486 to i64
  %i.cpb = getelementptr inbounds i8, ptr %0, i64 %i.cpa
  store i8 32, ptr %i.cpb, align 1
  br label %bb.hf

bb.hf:                                            ; preds = %bb.he, %.lr.ph.i334
  %i.cpc = add nsw i32 %.pre.i337486, 1           ; 2 uses
  %i.cpd = add nuw nsw i32 %.030.i335, 1          ; 2 uses
  %exitcond.not.i336 = icmp eq i32 %i.cpd, %2
  br i1 %exitcond.not.i336, label %.loopexit.i332, label %.lr.ph.i334, !llvm.loop !71

.loopexit.i332:                                   ; preds = %bb.hf, %middle.block1059, %vec.epilog.middle.block1088, %bb.hb, %bb.hc, %bb.hd
  %i.cpe = phi i32 [ %i.clk, %bb.hb ], [ 0, %bb.hd ], [ %i.clk, %bb.hc ], [ %i.cog, %vec.epilog.middle.block1088 ], [ %i.clr, %middle.block1059 ], [ %i.cpc, %bb.hf ] ; 3 uses
  %i.cpf = icmp slt i32 %i.cpe, %1
  br i1 %i.cpf, label %bb.hg, label %_ZL10outputCharcPcPiii.exit339

bb.hg:                                            ; preds = %.loopexit.i332
  %i.cpg = sext i32 %i.cpe to i64
  %i.cph = getelementptr inbounds i8, ptr %0, i64 %i.cpg
  store i8 93, ptr %i.cph, align 1
  br label %_ZL10outputCharcPcPiii.exit339

_ZL10outputCharcPcPiii.exit339:                   ; preds = %.loopexit.i332, %bb.hg
  %i.cpi = add nsw i32 %i.cpe, 1
  store i32 %i.cpi, ptr %i.a, align 4
  br label %_ZL10outputCharcPcPiii.exit175

bb.hh:                                            ; preds = %._crit_edge
  %i.cpj = icmp eq i32 %.promoted514, 0
  br i1 %i.cpj, label %bb.hn, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  switch i8 %i.dl, label %bb.hj [
    i8 10, label %bb.hm
    i8 0, label %.loopexit.i340
  ]

bb.hj:                                            ; preds = %bb.hi
  %i.cpk = icmp slt i32 %.promoted514, %1
  br i1 %i.cpk, label %bb.hk, label %bb.hl

bb.hk:                                            ; preds = %bb.hj
  %i.cpl = sext i32 %.promoted514 to i64
  %i.cpm = getelementptr i8, ptr %0, i64 %i.cpl
  %i.cpn = getelementptr i8, ptr %i.cpm, i64 -1
  %i.cpo = load i8, ptr %i.cpn, align 1
  %i.cpp = icmp eq i8 %i.cpo, 10
  br i1 %i.cpp, label %bb.hn, label %bb.hl

bb.hl:                                            ; preds = %bb.hk, %bb.hj
  %i.cpq = icmp eq i8 %i.dl, 10
  %.not.i350 = icmp sge i32 %.promoted514, %1
  %or.cond.not34.i351 = and i1 %i.cpq, %.not.i350
  %or.cond31.i352 = and i1 %.old.i, %or.cond.not34.i351
  br i1 %or.cond31.i352, label %iter.check, label %.loopexit.i340

bb.hm:                                            ; preds = %bb.hi
  %.not.old.i342 = icmp sge i32 %.promoted514, %1
  %or.cond32.i344 = and i1 %.old.i, %.not.old.i342
  br i1 %or.cond32.i344, label %iter.check, label %.loopexit.i340

bb.hn:                                            ; preds = %bb.hk, %bb.hh
  br i1 %.old.i, label %iter.check, label %.loopexit.i340

iter.check:                                       ; preds = %bb.hn, %bb.hm, %bb.hl
  br i1 %min.iters.check, label %.lr.ph.i346.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check713, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cpr = add i32 %.promoted514, %n.vec          ; 3 uses
  %broadcast.splatinsert714 = insertelement <16 x i32> poison, i32 %.promoted514, i64 0
  %broadcast.splat715 = shufflevector <16 x i32> %broadcast.splatinsert714, <16 x i32> poison, <16 x i32> zeroinitializer
  %induction = add nsw <16 x i32> %broadcast.splat715, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue745, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %pred.store.continue745 ] ; 2 uses
  %vec.ind = phi <16 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %pred.store.continue745 ] ; 2 uses
  %i.cps = add i32 %.promoted514, %index          ; 16 uses
  %i.cpt = icmp slt <16 x i32> %vec.ind, %broadcast.splat ; 16 uses
  %i.cpu = extractelement <16 x i1> %i.cpt, i64 0
  br i1 %i.cpu, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.cpv = sext i32 %i.cps to i64
  %i.cpw = getelementptr inbounds i8, ptr %0, i64 %i.cpv
  store i8 32, ptr %i.cpw, align 1
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.cpx = extractelement <16 x i1> %i.cpt, i64 1
  br i1 %i.cpx, label %pred.store.if716, label %pred.store.continue717

pred.store.if716:                                 ; preds = %pred.store.continue
  %i.cpy = add i32 %i.cps, 1
  %i.cpz = sext i32 %i.cpy to i64
  %i.cqa = getelementptr inbounds i8, ptr %0, i64 %i.cpz
  store i8 32, ptr %i.cqa, align 1
  br label %pred.store.continue717

pred.store.continue717:                           ; preds = %pred.store.if716, %pred.store.continue
  %i.cqb = extractelement <16 x i1> %i.cpt, i64 2
  br i1 %i.cqb, label %pred.store.if718, label %pred.store.continue719

pred.store.if718:                                 ; preds = %pred.store.continue717
  %i.cqc = add i32 %i.cps, 2
  %i.cqd = sext i32 %i.cqc to i64
  %i.cqe = getelementptr inbounds i8, ptr %0, i64 %i.cqd
  store i8 32, ptr %i.cqe, align 1
  br label %pred.store.continue719

pred.store.continue719:                           ; preds = %pred.store.if718, %pred.store.continue717
  %i.cqf = extractelement <16 x i1> %i.cpt, i64 3
  br i1 %i.cqf, label %pred.store.if720, label %pred.store.continue721

pred.store.if720:                                 ; preds = %pred.store.continue719
  %i.cqg = add i32 %i.cps, 3
  %i.cqh = sext i32 %i.cqg to i64
  %i.cqi = getelementptr inbounds i8, ptr %0, i64 %i.cqh
  store i8 32, ptr %i.cqi, align 1
  br label %pred.store.continue721

pred.store.continue721:                           ; preds = %pred.store.if720, %pred.store.continue719
  %i.cqj = extractelement <16 x i1> %i.cpt, i64 4
  br i1 %i.cqj, label %pred.store.if722, label %pred.store.continue723

pred.store.if722:                                 ; preds = %pred.store.continue721
  %i.cqk = add i32 %i.cps, 4
  %i.cql = sext i32 %i.cqk to i64
  %i.cqm = getelementptr inbounds i8, ptr %0, i64 %i.cql
  store i8 32, ptr %i.cqm, align 1
  br label %pred.store.continue723

pred.store.continue723:                           ; preds = %pred.store.if722, %pred.store.continue721
  %i.cqn = extractelement <16 x i1> %i.cpt, i64 5
  br i1 %i.cqn, label %pred.store.if724, label %pred.store.continue725

pred.store.if724:                                 ; preds = %pred.store.continue723
  %i.cqo = add i32 %i.cps, 5
  %i.cqp = sext i32 %i.cqo to i64
  %i.cqq = getelementptr inbounds i8, ptr %0, i64 %i.cqp
  store i8 32, ptr %i.cqq, align 1
  br label %pred.store.continue725

pred.store.continue725:                           ; preds = %pred.store.if724, %pred.store.continue723
  %i.cqr = extractelement <16 x i1> %i.cpt, i64 6
  br i1 %i.cqr, label %pred.store.if726, label %pred.store.continue727

pred.store.if726:                                 ; preds = %pred.store.continue725
  %i.cqs = add i32 %i.cps, 6
  %i.cqt = sext i32 %i.cqs to i64
  %i.cqu = getelementptr inbounds i8, ptr %0, i64 %i.cqt
  store i8 32, ptr %i.cqu, align 1
  br label %pred.store.continue727

pred.store.continue727:                           ; preds = %pred.store.if726, %pred.store.continue725
  %i.cqv = extractelement <16 x i1> %i.cpt, i64 7
  br i1 %i.cqv, label %pred.store.if728, label %pred.store.continue729

pred.store.if728:                                 ; preds = %pred.store.continue727
  %i.cqw = add i32 %i.cps, 7
  %i.cqx = sext i32 %i.cqw to i64
  %i.cqy = getelementptr inbounds i8, ptr %0, i64 %i.cqx
  store i8 32, ptr %i.cqy, align 1
  br label %pred.store.continue729

pred.store.continue729:                           ; preds = %pred.store.if728, %pred.store.continue727
  %i.cqz = extractelement <16 x i1> %i.cpt, i64 8
  br i1 %i.cqz, label %pred.store.if730, label %pred.store.continue731

pred.store.if730:                                 ; preds = %pred.store.continue729
  %i.cra = add i32 %i.cps, 8
  %i.crb = sext i32 %i.cra to i64
  %i.crc = getelementptr inbounds i8, ptr %0, i64 %i.crb
  store i8 32, ptr %i.crc, align 1
  br label %pred.store.continue731

pred.store.continue731:                           ; preds = %pred.store.if730, %pred.store.continue729
  %i.crd = extractelement <16 x i1> %i.cpt, i64 9
  br i1 %i.crd, label %pred.store.if732, label %pred.store.continue733

pred.store.if732:                                 ; preds = %pred.store.continue731
  %i.cre = add i32 %i.cps, 9
  %i.crf = sext i32 %i.cre to i64
  %i.crg = getelementptr inbounds i8, ptr %0, i64 %i.crf
  store i8 32, ptr %i.crg, align 1
  br label %pred.store.continue733

pred.store.continue733:                           ; preds = %pred.store.if732, %pred.store.continue731
  %i.crh = extractelement <16 x i1> %i.cpt, i64 10
  br i1 %i.crh, label %pred.store.if734, label %pred.store.continue735

pred.store.if734:                                 ; preds = %pred.store.continue733
  %i.cri = add i32 %i.cps, 10
  %i.crj = sext i32 %i.cri to i64
  %i.crk = getelementptr inbounds i8, ptr %0, i64 %i.crj
  store i8 32, ptr %i.crk, align 1
  br label %pred.store.continue735

pred.store.continue735:                           ; preds = %pred.store.if734, %pred.store.continue733
  %i.crl = extractelement <16 x i1> %i.cpt, i64 11
  br i1 %i.crl, label %pred.store.if736, label %pred.store.continue737

pred.store.if736:                                 ; preds = %pred.store.continue735
  %i.crm = add i32 %i.cps, 11
  %i.crn = sext i32 %i.crm to i64
  %i.cro = getelementptr inbounds i8, ptr %0, i64 %i.crn
  store i8 32, ptr %i.cro, align 1
  br label %pred.store.continue737

pred.store.continue737:                           ; preds = %pred.store.if736, %pred.store.continue735
  %i.crp = extractelement <16 x i1> %i.cpt, i64 12
  br i1 %i.crp, label %pred.store.if738, label %pred.store.continue739

pred.store.if738:                                 ; preds = %pred.store.continue737
  %i.crq = add i32 %i.cps, 12
  %i.crr = sext i32 %i.crq to i64
  %i.crs = getelementptr inbounds i8, ptr %0, i64 %i.crr
  store i8 32, ptr %i.crs, align 1
  br label %pred.store.continue739

pred.store.continue739:                           ; preds = %pred.store.if738, %pred.store.continue737
  %i.crt = extractelement <16 x i1> %i.cpt, i64 13
  br i1 %i.crt, label %pred.store.if740, label %pred.store.continue741

pred.store.if740:                                 ; preds = %pred.store.continue739
  %i.cru = add i32 %i.cps, 13
  %i.crv = sext i32 %i.cru to i64
  %i.crw = getelementptr inbounds i8, ptr %0, i64 %i.crv
  store i8 32, ptr %i.crw, align 1
  br label %pred.store.continue741

pred.store.continue741:                           ; preds = %pred.store.if740, %pred.store.continue739
  %i.crx = extractelement <16 x i1> %i.cpt, i64 14
  br i1 %i.crx, label %pred.store.if742, label %pred.store.continue743

pred.store.if742:                                 ; preds = %pred.store.continue741
  %i.cry = add i32 %i.cps, 14
  %i.crz = sext i32 %i.cry to i64
  %i.csa = getelementptr inbounds i8, ptr %0, i64 %i.crz
  store i8 32, ptr %i.csa, align 1
  br label %pred.store.continue743

pred.store.continue743:                           ; preds = %pred.store.if742, %pred.store.continue741
  %i.csb = extractelement <16 x i1> %i.cpt, i64 15
  br i1 %i.csb, label %pred.store.if744, label %pred.store.continue745

pred.store.if744:                                 ; preds = %pred.store.continue743
  %i.csc = add i32 %i.cps, 15
  %i.csd = sext i32 %i.csc to i64
  %i.cse = getelementptr inbounds i8, ptr %0, i64 %i.csd
  store i8 32, ptr %i.cse, align 1
  br label %pred.store.continue745

pred.store.continue745:                           ; preds = %pred.store.if744, %pred.store.continue743
  %index.next = add nuw i32 %index, 16            ; 2 uses
  %vec.ind.next = add nsw <16 x i32> %vec.ind, splat (i32 16)
  %i.csf = icmp eq i32 %index.next, %n.vec
  br i1 %i.csf, label %middle.block, label %vector.body, !llvm.loop !72

middle.block:                                     ; preds = %pred.store.continue745
  br i1 %cmp.n, label %.loopexit.i340.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.lr.ph.i346.preheader, label %vec.epilog.ph, !prof !14

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i32 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi i32 [ %i.cpr, %vec.epilog.iter.check ], [ %.promoted514, %vector.main.loop.iter.check ]
  %i.csg = add i32 %.promoted514, %n.vec747       ; 2 uses
  %broadcast.splatinsert750 = insertelement <4 x i32> poison, i32 %bc.resume.val, i64 0
  %broadcast.splat751 = shufflevector <4 x i32> %broadcast.splatinsert750, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction752 = add nsw <4 x i32> %broadcast.splat751, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %pred.store.continue762, %vec.epilog.ph
  %index753 = phi i32 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next763, %pred.store.continue762 ] ; 2 uses
  %vec.ind754 = phi <4 x i32> [ %induction752, %vec.epilog.ph ], [ %vec.ind.next764, %pred.store.continue762 ] ; 2 uses
  %i.csh = add i32 %.promoted514, %index753       ; 4 uses
  %i.csi = icmp slt <4 x i32> %vec.ind754, %broadcast.splat749 ; 4 uses
  %i.csj = extractelement <4 x i1> %i.csi, i64 0
  br i1 %i.csj, label %pred.store.if755, label %pred.store.continue756

pred.store.if755:                                 ; preds = %vec.epilog.vector.body
  %i.csk = sext i32 %i.csh to i64
  %i.csl = getelementptr inbounds i8, ptr %0, i64 %i.csk
  store i8 32, ptr %i.csl, align 1
  br label %pred.store.continue756

pred.store.continue756:                           ; preds = %pred.store.if755, %vec.epilog.vector.body
  %i.csm = extractelement <4 x i1> %i.csi, i64 1
  br i1 %i.csm, label %pred.store.if757, label %pred.store.continue758

pred.store.if757:                                 ; preds = %pred.store.continue756
  %i.csn = add i32 %i.csh, 1
  %i.cso = sext i32 %i.csn to i64
  %i.csp = getelementptr inbounds i8, ptr %0, i64 %i.cso
  store i8 32, ptr %i.csp, align 1
  br label %pred.store.continue758

pred.store.continue758:                           ; preds = %pred.store.if757, %pred.store.continue756
  %i.csq = extractelement <4 x i1> %i.csi, i64 2
  br i1 %i.csq, label %pred.store.if759, label %pred.store.continue760

pred.store.if759:                                 ; preds = %pred.store.continue758
  %i.csr = add i32 %i.csh, 2
  %i.css = sext i32 %i.csr to i64
  %i.cst = getelementptr inbounds i8, ptr %0, i64 %i.css
  store i8 32, ptr %i.cst, align 1
  br label %pred.store.continue760

pred.store.continue760:                           ; preds = %pred.store.if759, %pred.store.continue758
  %i.csu = extractelement <4 x i1> %i.csi, i64 3
  br i1 %i.csu, label %pred.store.if761, label %pred.store.continue762

pred.store.if761:                                 ; preds = %pred.store.continue760
  %i.csv = add i32 %i.csh, 3
  %i.csw = sext i32 %i.csv to i64
  %i.csx = getelementptr inbounds i8, ptr %0, i64 %i.csw
  store i8 32, ptr %i.csx, align 1
  br label %pred.store.continue762

pred.store.continue762:                           ; preds = %pred.store.if761, %pred.store.continue760
  %index.next763 = add nuw i32 %index753, 4       ; 2 uses
  %vec.ind.next764 = add nsw <4 x i32> %vec.ind754, splat (i32 4)
  %i.csy = icmp eq i32 %index.next763, %n.vec747
  br i1 %i.csy, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !73

vec.epilog.middle.block:                          ; preds = %pred.store.continue762
  br i1 %cmp.n765, label %.loopexit.i340.loopexit, label %.lr.ph.i346.preheader

.lr.ph.i346.preheader:                            ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.pre.i349515.ph = phi i32 [ %.promoted514, %iter.check ], [ %i.cpr, %vec.epilog.iter.check ], [ %i.csg, %vec.epilog.middle.block ]
  %.030.i347.ph = phi i32 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec747, %vec.epilog.middle.block ]
  br label %.lr.ph.i346

.lr.ph.i346:                                      ; preds = %.lr.ph.i346.preheader, %bb.hp
  %.pre.i349515 = phi i32 [ %i.ctc, %bb.hp ], [ %.pre.i349515.ph, %.lr.ph.i346.preheader ] ; 3 uses
  %.030.i347 = phi i32 [ %i.ctd, %bb.hp ], [ %.030.i347.ph, %.lr.ph.i346.preheader ]
  %i.csz = icmp slt i32 %.pre.i349515, %1
  br i1 %i.csz, label %bb.ho, label %bb.hp

bb.ho:                                            ; preds = %.lr.ph.i346
  %i.cta = sext i32 %.pre.i349515 to i64
  %i.ctb = getelementptr inbounds i8, ptr %0, i64 %i.cta
  store i8 32, ptr %i.ctb, align 1
  br label %bb.hp

bb.hp:                                            ; preds = %bb.ho, %.lr.ph.i346
  %i.ctc = add nsw i32 %.pre.i349515, 1           ; 2 uses
  %i.ctd = add nuw nsw i32 %.030.i347, 1          ; 2 uses
  %exitcond.not.i348 = icmp eq i32 %i.ctd, %2
  br i1 %exitcond.not.i348, label %.loopexit.i340.loopexit, label %.lr.ph.i346, !llvm.loop !74

.loopexit.i340.loopexit:                          ; preds = %bb.hp, %vec.epilog.middle.block, %middle.block
  %.lcssa712 = phi i32 [ %i.csg, %vec.epilog.middle.block ], [ %i.cpr, %middle.block ], [ %i.ctc, %bb.hp ] ; 2 uses
  store i32 %.lcssa712, ptr %i.a, align 4
  br label %.loopexit.i340

.loopexit.i340:                                   ; preds = %.loopexit.i340.loopexit, %bb.hn, %bb.hm, %bb.hl, %bb.hi
  %i.cte = phi i32 [ %.promoted514, %bb.hl ], [ %.promoted514, %bb.hn ], [ %.promoted514, %bb.hi ], [ %.promoted514, %bb.hm ], [ %.lcssa712, %.loopexit.i340.loopexit ] ; 3 uses
  %i.ctf = icmp slt i32 %i.cte, %1
  br i1 %i.ctf, label %bb.hq, label %bb.hr

bb.hq:                                            ; preds = %.loopexit.i340
  %i.ctg = sext i32 %i.cte to i64
  %i.cth = getelementptr inbounds i8, ptr %0, i64 %i.ctg
  store i8 %i.dl, ptr %i.cth, align 1
  br label %bb.hr

bb.hr:                                            ; preds = %bb.hq, %.loopexit.i340
  %.not29.i341 = icmp eq i8 %i.dl, 0
  br i1 %.not29.i341, label %_ZL10outputCharcPcPiii.exit175, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  %i.cti = add nsw i32 %i.cte, 1
  store i32 %i.cti, ptr %i.a, align 4
  br label %_ZL10outputCharcPcPiii.exit175

_ZL10outputCharcPcPiii.exit175.loopexit:          ; preds = %_ZL10outputCharcPcPiii.exit.us35.i
  store i32 %.lcssa507510, ptr %i.a, align 4
  br label %_ZL10outputCharcPcPiii.exit175

_ZL10outputCharcPcPiii.exit175.loopexit403:       ; preds = %_ZL10outputCharcPcPiii.exit.us.i
  store i32 %i.ii, ptr %i.a, align 4
  br label %_ZL10outputCharcPcPiii.exit175

_ZL10outputCharcPcPiii.exit175:                   ; preds = %_ZL10outputCharcPcPiii.exit.i197.15, %_ZL10outputCharcPcPiii.exit.i190.7, %_ZL10outputCharcPcPiii.exit.i183.3, %_ZL10outputCharcPcPiii.exit.i.1, %_ZL10outputCharcPcPiii.exit175.loopexit403, %_ZL10outputCharcPcPiii.exit175.loopexit, %bb.hs, %bb.hr, %bb.z, %bb.y, %_ZL10outputCharcPcPiii.exit339, %_ZL10outputCharcPcPiii.exit210, %bb.cl, %bb.ar
  %.4 = phi i64 [ %.0143.ph, %_ZL10outputCharcPcPiii.exit.i190.7 ], [ %.3650, %_ZL10outputCharcPcPiii.exit339 ], [ %.0143.ph, %bb.z ], [ %.0143.ph, %bb.ar ], [ %.0143.ph, %bb.hs ], [ %.0143.ph, %_ZL10outputCharcPcPiii.exit175.loopexit403 ], [ %.0143.ph, %_ZL10outputCharcPcPiii.exit.i.1 ], [ %.0143.ph, %_ZL10outputCharcPcPiii.exit.i183.3 ], [ %.0143.ph, %bb.cl ], [ %.0143.ph, %_ZL10outputCharcPcPiii.exit210 ], [ %.0143.ph, %bb.y ], [ %.0143.ph, %_ZL10outputCharcPcPiii.exit175.loopexit ], [ %.0143.ph, %bb.hr ], [ %i.sg, %_ZL10outputCharcPcPiii.exit.i197.15 ]
  %.2 = phi i32 [ %i.di, %_ZL10outputCharcPcPiii.exit.i190.7 ], [ %spec.select, %_ZL10outputCharcPcPiii.exit339 ], [ %i.di, %bb.z ], [ %i.di, %bb.ar ], [ %i.di, %bb.hs ], [ %i.di, %_ZL10outputCharcPcPiii.exit175.loopexit403 ], [ %i.di, %_ZL10outputCharcPcPiii.exit.i.1 ], [ %i.di, %_ZL10outputCharcPcPiii.exit.i183.3 ], [ %i.di, %bb.cl ], [ %.lcssa411, %_ZL10outputCharcPcPiii.exit210 ], [ %i.di, %bb.y ], [ %i.di, %_ZL10outputCharcPcPiii.exit175.loopexit ], [ %i.di, %bb.hr ], [ %i.di, %_ZL10outputCharcPcPiii.exit.i197.15 ]
  %.promoted430.pre = load i32, ptr %i.a, align 4
  br label %.outer, !llvm.loop !12

bb.ht:                                            ; preds = %bb.k
  %i.ctj = icmp eq i32 %.promoted517, 0
  %brmerge.not = and i1 %i.ctj, %.old.i
  br i1 %brmerge.not, label %iter.check2424, label %.loopexit.i355

iter.check2424:                                   ; preds = %bb.ht
  %min.iters.check2343 = icmp ult i32 %2, 4
  br i1 %min.iters.check2343, label %.lr.ph.i358.preheader, label %vector.main.loop.iter.check2344

vector.main.loop.iter.check2344:                  ; preds = %iter.check2424
  %min.iters.check2345 = icmp ult i32 %2, 32
  br i1 %min.iters.check2345, label %vec.epilog.ph2428, label %vector.ph2346

vector.ph2346:                                    ; preds = %vector.main.loop.iter.check2344
  %n.mod.vf2347 = and i32 %2, 28
  %n.vec2348 = and i32 %2, 2147483616             ; 5 uses
  %broadcast.splatinsert2349 = insertelement <16 x i32> poison, i32 %1, i64 0
  %broadcast.splat2350 = shufflevector <16 x i32> %broadcast.splatinsert2349, <16 x i32> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body2351

vector.body2351:                                  ; preds = %pred.store.continue2418, %vector.ph2346
  %index2352 = phi i32 [ 0, %vector.ph2346 ], [ %index.next2419, %pred.store.continue2418 ] ; 33 uses
  %vec.ind2353 = phi <16 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, %vector.ph2346 ], [ %vec.ind.next2420, %pred.store.continue2418 ] ; 3 uses
  %step.add2354 = add nuw <16 x i32> %vec.ind2353, splat (i32 16)
  %i.ctk = icmp slt <16 x i32> %vec.ind2353, %broadcast.splat2350 ; 16 uses
  %i.ctl = icmp slt <16 x i32> %step.add2354, %broadcast.splat2350 ; 16 uses
  %i.ctm = extractelement <16 x i1> %i.ctk, i64 0
  br i1 %i.ctm, label %pred.store.if2355, label %pred.store.continue2356

pred.store.if2355:                                ; preds = %vector.body2351
  %i.ctn = zext nneg i32 %index2352 to i64
  %i.cto = getelementptr inbounds nuw i8, ptr %0, i64 %i.ctn
  store i8 32, ptr %i.cto, align 1
  br label %pred.store.continue2356

pred.store.continue2356:                          ; preds = %pred.store.if2355, %vector.body2351
  %i.ctp = extractelement <16 x i1> %i.ctk, i64 1
  br i1 %i.ctp, label %pred.store.if2357, label %pred.store.continue2358

pred.store.if2357:                                ; preds = %pred.store.continue2356
  %i.ctq = sext i32 %index2352 to i64
  %i.ctr = getelementptr inbounds nuw i8, ptr %0, i64 %i.ctq
  %i.cts = getelementptr inbounds nuw i8, ptr %i.ctr, i64 1
  store i8 32, ptr %i.cts, align 1
  br label %pred.store.continue2358

pred.store.continue2358:                          ; preds = %pred.store.if2357, %pred.store.continue2356
  %i.ctt = extractelement <16 x i1> %i.ctk, i64 2
  br i1 %i.ctt, label %pred.store.if2359, label %pred.store.continue2360

pred.store.if2359:                                ; preds = %pred.store.continue2358
  %i.ctu = sext i32 %index2352 to i64
  %i.ctv = getelementptr inbounds nuw i8, ptr %0, i64 %i.ctu
  %i.ctw = getelementptr inbounds nuw i8, ptr %i.ctv, i64 2
  store i8 32, ptr %i.ctw, align 1
  br label %pred.store.continue2360

pred.store.continue2360:                          ; preds = %pred.store.if2359, %pred.store.continue2358
  %i.ctx = extractelement <16 x i1> %i.ctk, i64 3
  br i1 %i.ctx, label %pred.store.if2361, label %pred.store.continue2362

pred.store.if2361:                                ; preds = %pred.store.continue2360
  %i.cty = sext i32 %index2352 to i64
  %i.ctz = getelementptr inbounds nuw i8, ptr %0, i64 %i.cty
  %i.cua = getelementptr inbounds nuw i8, ptr %i.ctz, i64 3
  store i8 32, ptr %i.cua, align 1
  br label %pred.store.continue2362

pred.store.continue2362:                          ; preds = %pred.store.if2361, %pred.store.continue2360
  %i.cub = extractelement <16 x i1> %i.ctk, i64 4
  br i1 %i.cub, label %pred.store.if2363, label %pred.store.continue2364

pred.store.if2363:                                ; preds = %pred.store.continue2362
  %i.cuc = sext i32 %index2352 to i64
  %i.cud = getelementptr inbounds nuw i8, ptr %0, i64 %i.cuc
  %i.cue = getelementptr inbounds nuw i8, ptr %i.cud, i64 4
  store i8 32, ptr %i.cue, align 1
  br label %pred.store.continue2364

pred.store.continue2364:                          ; preds = %pred.store.if2363, %pred.store.continue2362
  %i.cuf = extractelement <16 x i1> %i.ctk, i64 5
  br i1 %i.cuf, label %pred.store.if2365, label %pred.store.continue2366

pred.store.if2365:                                ; preds = %pred.store.continue2364
  %i.cug = sext i32 %index2352 to i64
  %i.cuh = getelementptr inbounds nuw i8, ptr %0, i64 %i.cug
  %i.cui = getelementptr inbounds nuw i8, ptr %i.cuh, i64 5
  store i8 32, ptr %i.cui, align 1
  br label %pred.store.continue2366

pred.store.continue2366:                          ; preds = %pred.store.if2365, %pred.store.continue2364
  %i.cuj = extractelement <16 x i1> %i.ctk, i64 6
  br i1 %i.cuj, label %pred.store.if2367, label %pred.store.continue2368

pred.store.if2367:                                ; preds = %pred.store.continue2366
  %i.cuk = sext i32 %index2352 to i64
  %i.cul = getelementptr inbounds nuw i8, ptr %0, i64 %i.cuk
  %i.cum = getelementptr inbounds nuw i8, ptr %i.cul, i64 6
  store i8 32, ptr %i.cum, align 1
  br label %pred.store.continue2368

pred.store.continue2368:                          ; preds = %pred.store.if2367, %pred.store.continue2366
  %i.cun = extractelement <16 x i1> %i.ctk, i64 7
  br i1 %i.cun, label %pred.store.if2369, label %pred.store.continue2370

pred.store.if2369:                                ; preds = %pred.store.continue2368
  %i.cuo = sext i32 %index2352 to i64
  %i.cup = getelementptr inbounds nuw i8, ptr %0, i64 %i.cuo
  %i.cuq = getelementptr inbounds nuw i8, ptr %i.cup, i64 7
  store i8 32, ptr %i.cuq, align 1
  br label %pred.store.continue2370

pred.store.continue2370:                          ; preds = %pred.store.if2369, %pred.store.continue2368
  %i.cur = extractelement <16 x i1> %i.ctk, i64 8
  br i1 %i.cur, label %pred.store.if2371, label %pred.store.continue2372

pred.store.if2371:                                ; preds = %pred.store.continue2370
  %i.cus = sext i32 %index2352 to i64
  %i.cut = getelementptr inbounds nuw i8, ptr %0, i64 %i.cus
  %i.cuu = getelementptr inbounds nuw i8, ptr %i.cut, i64 8
  store i8 32, ptr %i.cuu, align 1
  br label %pred.store.continue2372

pred.store.continue2372:                          ; preds = %pred.store.if2371, %pred.store.continue2370
  %i.cuv = extractelement <16 x i1> %i.ctk, i64 9
  br i1 %i.cuv, label %pred.store.if2373, label %pred.store.continue2374

pred.store.if2373:                                ; preds = %pred.store.continue2372
  %i.cuw = sext i32 %index2352 to i64
  %i.cux = getelementptr inbounds nuw i8, ptr %0, i64 %i.cuw
  %i.cuy = getelementptr inbounds nuw i8, ptr %i.cux, i64 9
  store i8 32, ptr %i.cuy, align 1
  br label %pred.store.continue2374

pred.store.continue2374:                          ; preds = %pred.store.if2373, %pred.store.continue2372
  %i.cuz = extractelement <16 x i1> %i.ctk, i64 10
  br i1 %i.cuz, label %pred.store.if2375, label %pred.store.continue2376

pred.store.if2375:                                ; preds = %pred.store.continue2374
  %i.cva = sext i32 %index2352 to i64
  %i.cvb = getelementptr inbounds nuw i8, ptr %0, i64 %i.cva
  %i.cvc = getelementptr inbounds nuw i8, ptr %i.cvb, i64 10
  store i8 32, ptr %i.cvc, align 1
  br label %pred.store.continue2376

pred.store.continue2376:                          ; preds = %pred.store.if2375, %pred.store.continue2374
  %i.cvd = extractelement <16 x i1> %i.ctk, i64 11
  br i1 %i.cvd, label %pred.store.if2377, label %pred.store.continue2378

pred.store.if2377:                                ; preds = %pred.store.continue2376
  %i.cve = sext i32 %index2352 to i64
  %i.cvf = getelementptr inbounds nuw i8, ptr %0, i64 %i.cve
  %i.cvg = getelementptr inbounds nuw i8, ptr %i.cvf, i64 11
  store i8 32, ptr %i.cvg, align 1
  br label %pred.store.continue2378

pred.store.continue2378:                          ; preds = %pred.store.if2377, %pred.store.continue2376
  %i.cvh = extractelement <16 x i1> %i.ctk, i64 12
  br i1 %i.cvh, label %pred.store.if2379, label %pred.store.continue2380
end_hunk_3
begin_hunk_4_@utrace_vformat_78:bb.a

pred.store.continue2408:                          ; preds = %pred.store.if2407, %pred.store.continue2406
  %i.cxp = extractelement <16 x i1> %i.ctl, i64 11
  br i1 %i.cxp, label %pred.store.if2409, label %pred.store.continue2410

pred.store.if2409:                                ; preds = %pred.store.continue2408
  %i.cxq = sext i32 %index2352 to i64
  %i.cxr = getelementptr inbounds nuw i8, ptr %0, i64 %i.cxq
  %i.cxs = getelementptr inbounds nuw i8, ptr %i.cxr, i64 27
  store i8 32, ptr %i.cxs, align 1
  br label %pred.store.continue2410

pred.store.continue2410:                          ; preds = %pred.store.if2409, %pred.store.continue2408
  %i.cxt = extractelement <16 x i1> %i.ctl, i64 12
  br i1 %i.cxt, label %pred.store.if2411, label %pred.store.continue2412

pred.store.if2411:                                ; preds = %pred.store.continue2410
  %i.cxu = sext i32 %index2352 to i64
  %i.cxv = getelementptr inbounds nuw i8, ptr %0, i64 %i.cxu
  %i.cxw = getelementptr inbounds nuw i8, ptr %i.cxv, i64 28
  store i8 32, ptr %i.cxw, align 1
  br label %pred.store.continue2412

pred.store.continue2412:                          ; preds = %pred.store.if2411, %pred.store.continue2410
  %i.cxx = extractelement <16 x i1> %i.ctl, i64 13
  br i1 %i.cxx, label %pred.store.if2413, label %pred.store.continue2414

pred.store.if2413:                                ; preds = %pred.store.continue2412
  %i.cxy = sext i32 %index2352 to i64
  %i.cxz = getelementptr inbounds nuw i8, ptr %0, i64 %i.cxy
  %i.cya = getelementptr inbounds nuw i8, ptr %i.cxz, i64 29
  store i8 32, ptr %i.cya, align 1
  br label %pred.store.continue2414

pred.store.continue2414:                          ; preds = %pred.store.if2413, %pred.store.continue2412
  %i.cyb = extractelement <16 x i1> %i.ctl, i64 14
  br i1 %i.cyb, label %pred.store.if2415, label %pred.store.continue2416

pred.store.if2415:                                ; preds = %pred.store.continue2414
  %i.cyc = sext i32 %index2352 to i64
  %i.cyd = getelementptr inbounds nuw i8, ptr %0, i64 %i.cyc
  %i.cye = getelementptr inbounds nuw i8, ptr %i.cyd, i64 30
  store i8 32, ptr %i.cye, align 1
  br label %pred.store.continue2416

pred.store.continue2416:                          ; preds = %pred.store.if2415, %pred.store.continue2414
  %i.cyf = extractelement <16 x i1> %i.ctl, i64 15
  br i1 %i.cyf, label %pred.store.if2417, label %pred.store.continue2418

pred.store.if2417:                                ; preds = %pred.store.continue2416
  %i.cyg = sext i32 %index2352 to i64
  %i.cyh = getelementptr inbounds nuw i8, ptr %0, i64 %i.cyg
  %i.cyi = getelementptr inbounds nuw i8, ptr %i.cyh, i64 31
  store i8 32, ptr %i.cyi, align 1
  br label %pred.store.continue2418

pred.store.continue2418:                          ; preds = %pred.store.if2417, %pred.store.continue2416
  %index.next2419 = add nuw i32 %index2352, 32    ; 2 uses
  %vec.ind.next2420 = add nuw <16 x i32> %vec.ind2353, splat (i32 32)
  %i.cyj = icmp eq i32 %index.next2419, %n.vec2348
  br i1 %i.cyj, label %middle.block2421, label %vector.body2351, !llvm.loop !75

middle.block2421:                                 ; preds = %pred.store.continue2418
  %cmp.n2422 = icmp eq i32 %2, %n.vec2348
  br i1 %cmp.n2422, label %.loopexit.i355, label %vec.epilog.iter.check2426

vec.epilog.iter.check2426:                        ; preds = %middle.block2421
  %min.epilog.iters.check2427 = icmp eq i32 %n.mod.vf2347, 0
  br i1 %min.epilog.iters.check2427, label %.lr.ph.i358.preheader, label %vec.epilog.ph2428, !prof !46

vec.epilog.ph2428:                                ; preds = %vector.main.loop.iter.check2344, %vec.epilog.iter.check2426
  %vec.epilog.resume.val2423 = phi i32 [ %n.vec2348, %vec.epilog.iter.check2426 ], [ 0, %vector.main.loop.iter.check2344 ] ; 2 uses
  %n.vec2430 = and i32 %2, 2147483644             ; 4 uses
  %broadcast.splatinsert2431 = insertelement <4 x i32> poison, i32 %1, i64 0
  %broadcast.splat2432 = shufflevector <4 x i32> %broadcast.splatinsert2431, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert2433 = insertelement <4 x i32> poison, i32 %vec.epilog.resume.val2423, i64 0
  %broadcast.splat2434 = shufflevector <4 x i32> %broadcast.splatinsert2433, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction2435 = or disjoint <4 x i32> %broadcast.splat2434, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body2436

vec.epilog.vector.body2436:                       ; preds = %pred.store.continue2446, %vec.epilog.ph2428
  %index2437 = phi i32 [ %vec.epilog.resume.val2423, %vec.epilog.ph2428 ], [ %index.next2447, %pred.store.continue2446 ] ; 5 uses
  %vec.ind2438 = phi <4 x i32> [ %induction2435, %vec.epilog.ph2428 ], [ %vec.ind.next2448, %pred.store.continue2446 ] ; 2 uses
  %i.cyk = icmp slt <4 x i32> %vec.ind2438, %broadcast.splat2432 ; 4 uses
  %i.cyl = extractelement <4 x i1> %i.cyk, i64 0
  br i1 %i.cyl, label %pred.store.if2439, label %pred.store.continue2440

pred.store.if2439:                                ; preds = %vec.epilog.vector.body2436
  %i.cym = zext nneg i32 %index2437 to i64
  %i.cyn = getelementptr inbounds nuw i8, ptr %0, i64 %i.cym
  store i8 32, ptr %i.cyn, align 1
  br label %pred.store.continue2440

pred.store.continue2440:                          ; preds = %pred.store.if2439, %vec.epilog.vector.body2436
  %i.cyo = extractelement <4 x i1> %i.cyk, i64 1
  br i1 %i.cyo, label %pred.store.if2441, label %pred.store.continue2442

pred.store.if2441:                                ; preds = %pred.store.continue2440
  %i.cyp = sext i32 %index2437 to i64
  %i.cyq = getelementptr inbounds nuw i8, ptr %0, i64 %i.cyp
  %i.cyr = getelementptr inbounds nuw i8, ptr %i.cyq, i64 1
  store i8 32, ptr %i.cyr, align 1
  br label %pred.store.continue2442

pred.store.continue2442:                          ; preds = %pred.store.if2441, %pred.store.continue2440
  %i.cys = extractelement <4 x i1> %i.cyk, i64 2
  br i1 %i.cys, label %pred.store.if2443, label %pred.store.continue2444

pred.store.if2443:                                ; preds = %pred.store.continue2442
  %i.cyt = sext i32 %index2437 to i64
  %i.cyu = getelementptr inbounds nuw i8, ptr %0, i64 %i.cyt
  %i.cyv = getelementptr inbounds nuw i8, ptr %i.cyu, i64 2
  store i8 32, ptr %i.cyv, align 1
  br label %pred.store.continue2444

pred.store.continue2444:                          ; preds = %pred.store.if2443, %pred.store.continue2442
  %i.cyw = extractelement <4 x i1> %i.cyk, i64 3
  br i1 %i.cyw, label %pred.store.if2445, label %pred.store.continue2446

pred.store.if2445:                                ; preds = %pred.store.continue2444
  %i.cyx = sext i32 %index2437 to i64
  %i.cyy = getelementptr inbounds nuw i8, ptr %0, i64 %i.cyx
  %i.cyz = getelementptr inbounds nuw i8, ptr %i.cyy, i64 3
  store i8 32, ptr %i.cyz, align 1
  br label %pred.store.continue2446

pred.store.continue2446:                          ; preds = %pred.store.if2445, %pred.store.continue2444
  %index.next2447 = add nuw i32 %index2437, 4     ; 2 uses
  %vec.ind.next2448 = add nuw nsw <4 x i32> %vec.ind2438, splat (i32 4)
  %i.cza = icmp eq i32 %index.next2447, %n.vec2430
  br i1 %i.cza, label %vec.epilog.middle.block2449, label %vec.epilog.vector.body2436, !llvm.loop !76

vec.epilog.middle.block2449:                      ; preds = %pred.store.continue2446
  %cmp.n2450 = icmp eq i32 %2, %n.vec2430
  br i1 %cmp.n2450, label %.loopexit.i355, label %.lr.ph.i358.preheader

.lr.ph.i358.preheader:                            ; preds = %iter.check2424, %vec.epilog.iter.check2426, %vec.epilog.middle.block2449
  %.030.i359.ph = phi i32 [ 0, %iter.check2424 ], [ %n.vec2348, %vec.epilog.iter.check2426 ], [ %n.vec2430, %vec.epilog.middle.block2449 ] ; 2 uses
  br label %.lr.ph.i358

.lr.ph.i358:                                      ; preds = %.lr.ph.i358.preheader, %bb.hv
  %.pre.i361518 = phi i32 [ %i.cze, %bb.hv ], [ %.030.i359.ph, %.lr.ph.i358.preheader ] ; 3 uses
  %.030.i359 = phi i32 [ %i.czf, %bb.hv ], [ %.030.i359.ph, %.lr.ph.i358.preheader ]
  %i.czb = icmp slt i32 %.pre.i361518, %1
  br i1 %i.czb, label %bb.hu, label %bb.hv

bb.hu:                                            ; preds = %.lr.ph.i358
  %i.czc = zext nneg i32 %.pre.i361518 to i64
  %i.czd = getelementptr inbounds nuw i8, ptr %0, i64 %i.czc
  store i8 32, ptr %i.czd, align 1
  br label %bb.hv

bb.hv:                                            ; preds = %bb.hu, %.lr.ph.i358
  %i.cze = add nuw nsw i32 %.pre.i361518, 1       ; 2 uses
  %i.czf = add nuw nsw i32 %.030.i359, 1          ; 2 uses
  %exitcond.not.i360 = icmp eq i32 %i.czf, %2
  br i1 %exitcond.not.i360, label %.loopexit.i355, label %.lr.ph.i358, !llvm.loop !77

.loopexit.i355:                                   ; preds = %bb.hv, %middle.block2421, %vec.epilog.middle.block2449, %bb.ht
  %i.czg = phi i32 [ %.promoted517, %bb.ht ], [ %n.vec2430, %vec.epilog.middle.block2449 ], [ %n.vec2348, %middle.block2421 ], [ %i.cze, %bb.hv ] ; 3 uses
  %i.czh = icmp slt i32 %i.czg, %1
  br i1 %i.czh, label %bb.hw, label %_ZL10outputCharcPcPiii.exit362

bb.hw:                                            ; preds = %.loopexit.i355
  %i.czi = sext i32 %i.czg to i64
  %i.czj = getelementptr inbounds i8, ptr %0, i64 %i.czi
  store i8 0, ptr %i.czj, align 1
  br label %_ZL10outputCharcPcPiii.exit362

_ZL10outputCharcPcPiii.exit362:                   ; preds = %.loopexit.i355, %bb.hw
  %i.czk = add nsw i32 %i.czg, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 %i.czk
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZL13outputUStringPKDsiPcPiii(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef nonnull captures(none) %3, i32 noundef %4, i32 noundef %5) unnamed_addr #5 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = icmp eq i32 %1, -1                       ; 3 uses
  %i.c = icmp sgt i32 %1, 0
  %i.d = or i1 %i.b, %i.c
  br i1 %i.d, label %.lr.ph, label %_ZL12outputStringPKcPcPiii.exit

.lr.ph:                                           ; preds = %.preheader
  %.old.old.i = icmp sgt i32 %5, 0                ; 2 uses
  %.pre.i.pre = load i32, ptr %3, align 4
  %xtraiter = and i32 %5, 1
  %i.e = icmp eq i32 %5, 1
  %unroll_iter = and i32 %5, -2
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod136 = trunc i32 %5 to i1
  br label %.loopexit.i.i

bb.b:                                             ; preds = %bb.a
  %.pr.i = load i32, ptr %3, align 4              ; 10 uses
  %.old.i.i = icmp sgt i32 %5, 0
  br i1 %.old.i.i, label %.split.split.split.us.i.preheader, label %.split.us.i.preheader

.split.us.i.preheader:                            ; preds = %bb.b
  %i.f = icmp slt i32 %.pr.i, %4
  br i1 %i.f, label %bb.c, label %_ZL10outputCharcPcPiii.exit.us.i

.split.split.split.us.i.preheader:                ; preds = %bb.b
  %i.g = icmp eq i32 %.pr.i, 0
  br i1 %i.g, label %.lr.ph.i.us29.i.preheader, label %bb.i

bb.c:                                             ; preds = %.split.us.i.preheader
  %i.h = sext i32 %.pr.i to i64
  %i.i = getelementptr inbounds i8, ptr %2, i64 %i.h
  store i8 42, ptr %i.i, align 1
  %.pre38 = load i32, ptr %3, align 4
  br label %_ZL10outputCharcPcPiii.exit.us.i

_ZL10outputCharcPcPiii.exit.us.i:                 ; preds = %bb.c, %.split.us.i.preheader
  %i.j = phi i32 [ %.pre38, %bb.c ], [ %.pr.i, %.split.us.i.preheader ]
  %i.k = add nsw i32 %i.j, 1                      ; 4 uses
  store i32 %i.k, ptr %3, align 4
  %i.l = icmp slt i32 %i.k, %4
  br i1 %i.l, label %bb.d, label %_ZL10outputCharcPcPiii.exit.us.i.1

bb.d:                                             ; preds = %_ZL10outputCharcPcPiii.exit.us.i
  %i.m = sext i32 %i.k to i64
  %i.n = getelementptr inbounds i8, ptr %2, i64 %i.m
  store i8 78, ptr %i.n, align 1
  %.pre39 = load i32, ptr %3, align 4
  br label %_ZL10outputCharcPcPiii.exit.us.i.1

_ZL10outputCharcPcPiii.exit.us.i.1:               ; preds = %bb.d, %_ZL10outputCharcPcPiii.exit.us.i
  %i.o = phi i32 [ %.pre39, %bb.d ], [ %i.k, %_ZL10outputCharcPcPiii.exit.us.i ]
  %i.p = add nsw i32 %i.o, 1                      ; 4 uses
  store i32 %i.p, ptr %3, align 4
  %i.q = icmp slt i32 %i.p, %4
  br i1 %i.q, label %bb.e, label %_ZL10outputCharcPcPiii.exit.us.i.2

bb.e:                                             ; preds = %_ZL10outputCharcPcPiii.exit.us.i.1
  %i.r = sext i32 %i.p to i64
  %i.s = getelementptr inbounds i8, ptr %2, i64 %i.r
  store i8 85, ptr %i.s, align 1
  %.pre40 = load i32, ptr %3, align 4
  br label %_ZL10outputCharcPcPiii.exit.us.i.2

_ZL10outputCharcPcPiii.exit.us.i.2:               ; preds = %bb.e, %_ZL10outputCharcPcPiii.exit.us.i.1
  %i.t = phi i32 [ %.pre40, %bb.e ], [ %i.p, %_ZL10outputCharcPcPiii.exit.us.i.1 ]
  %i.u = add nsw i32 %i.t, 1                      ; 4 uses
  store i32 %i.u, ptr %3, align 4
  %i.v = icmp slt i32 %i.u, %4
  br i1 %i.v, label %bb.f, label %_ZL10outputCharcPcPiii.exit.us.i.3

bb.f:                                             ; preds = %_ZL10outputCharcPcPiii.exit.us.i.2
  %i.w = sext i32 %i.u to i64
  %i.x = getelementptr inbounds i8, ptr %2, i64 %i.w
  store i8 76, ptr %i.x, align 1
  %.pre41 = load i32, ptr %3, align 4
  br label %_ZL10outputCharcPcPiii.exit.us.i.3

_ZL10outputCharcPcPiii.exit.us.i.3:               ; preds = %bb.f, %_ZL10outputCharcPcPiii.exit.us.i.2
  %i.y = phi i32 [ %.pre41, %bb.f ], [ %i.u, %_ZL10outputCharcPcPiii.exit.us.i.2 ]
  %i.z = add nsw i32 %i.y, 1                      ; 4 uses
  store i32 %i.z, ptr %3, align 4
  %i.aa = icmp slt i32 %i.z, %4
  br i1 %i.aa, label %bb.g, label %_ZL10outputCharcPcPiii.exit.us.i.4

bb.g:                                             ; preds = %_ZL10outputCharcPcPiii.exit.us.i.3
  %i.ab = sext i32 %i.z to i64
  %i.ac = getelementptr inbounds i8, ptr %2, i64 %i.ab
  store i8 76, ptr %i.ac, align 1
  %.pre42 = load i32, ptr %3, align 4
  br label %_ZL10outputCharcPcPiii.exit.us.i.4

_ZL10outputCharcPcPiii.exit.us.i.4:               ; preds = %bb.g, %_ZL10outputCharcPcPiii.exit.us.i.3
  %i.ad = phi i32 [ %.pre42, %bb.g ], [ %i.z, %_ZL10outputCharcPcPiii.exit.us.i.3 ]
  %i.ae = add nsw i32 %i.ad, 1                    ; 4 uses
  store i32 %i.ae, ptr %3, align 4
  %i.af = icmp slt i32 %i.ae, %4
  br i1 %i.af, label %bb.h, label %_ZL10outputCharcPcPiii.exit.us.i.5

bb.h:                                             ; preds = %_ZL10outputCharcPcPiii.exit.us.i.4
  %i.ag = sext i32 %i.ae to i64
  %i.ah = getelementptr inbounds i8, ptr %2, i64 %i.ag
  store i8 42, ptr %i.ah, align 1
  %.pre43 = load i32, ptr %3, align 4
  br label %_ZL10outputCharcPcPiii.exit.us.i.5

_ZL10outputCharcPcPiii.exit.us.i.5:               ; preds = %bb.h, %_ZL10outputCharcPcPiii.exit.us.i.4
  %i.ai = phi i32 [ %.pre43, %bb.h ], [ %i.ae, %_ZL10outputCharcPcPiii.exit.us.i.4 ]
  %i.aj = add nsw i32 %i.ai, 1                    ; 3 uses
  store i32 %i.aj, ptr %3, align 4
  %i.ak = icmp slt i32 %i.aj, %4
  br i1 %i.ak, label %_ZL12outputStringPKcPcPiii.exit.sink.split, label %_ZL12outputStringPKcPcPiii.exit

bb.i:                                             ; preds = %.split.split.split.us.i.preheader
  %i.al = icmp slt i32 %.pr.i, %4
  br i1 %i.al, label %bb.j, label %.loopexit.i.us33.i

bb.j:                                             ; preds = %bb.i
  %i.am = sext i32 %.pr.i to i64
  %i.an = getelementptr i8, ptr %2, i64 %i.am
  %i.ao = getelementptr i8, ptr %i.an, i64 -1
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = icmp eq i8 %i.ap, 10
  br i1 %i.aq, label %.lr.ph.i.us29.i.preheader, label %.loopexit.i.us33.i

.lr.ph.i.us29.i.preheader:                        ; preds = %bb.j, %.split.split.split.us.i.preheader
  %xtraiter137 = and i32 %5, 1
  %i.ar = icmp eq i32 %5, 1
  br i1 %i.ar, label %.lr.ph.i.us29.i.epil.preheader, label %.lr.ph.i.us29.i.preheader.new

.lr.ph.i.us29.i.preheader.new:                    ; preds = %.lr.ph.i.us29.i.preheader
  %unroll_iter143 = and i32 %5, 2147483646
  br label %.lr.ph.i.us29.i

.lr.ph.i.us29.i:                                  ; preds = %bb.m, %.lr.ph.i.us29.i.preheader.new
  %i.as = phi i32 [ %.pr.i, %.lr.ph.i.us29.i.preheader.new ], [ %i.bc, %bb.m ] ; 3 uses
  %niter144 = phi i32 [ 0, %.lr.ph.i.us29.i.preheader.new ], [ %niter144.next.1, %bb.m ]
  %i.at = icmp slt i32 %i.as, %4
  br i1 %i.at, label %bb.k, label %.lr.ph.i.us29.i.1146

bb.k:                                             ; preds = %.lr.ph.i.us29.i
  %i.au = sext i32 %i.as to i64
  %i.av = getelementptr inbounds i8, ptr %2, i64 %i.au
  store i8 32, ptr %i.av, align 1
  %.pre.i.us31.i = load i32, ptr %3, align 4
  br label %.lr.ph.i.us29.i.1146

.lr.ph.i.us29.i.1146:                             ; preds = %bb.k, %.lr.ph.i.us29.i
  %i.aw = phi i32 [ %.pre.i.us31.i, %bb.k ], [ %i.as, %.lr.ph.i.us29.i ]
  %i.ax = add nsw i32 %i.aw, 1                    ; 4 uses
  store i32 %i.ax, ptr %3, align 4
  %i.ay = icmp slt i32 %i.ax, %4
  br i1 %i.ay, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph.i.us29.i.1146
  %i.az = sext i32 %i.ax to i64
  %i.ba = getelementptr inbounds i8, ptr %2, i64 %i.az
  store i8 32, ptr %i.ba, align 1
  %.pre.i.us31.i.1147 = load i32, ptr %3, align 4
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph.i.us29.i.1146
  %i.bb = phi i32 [ %.pre.i.us31.i.1147, %bb.l ], [ %i.ax, %.lr.ph.i.us29.i.1146 ]
  %i.bc = add nsw i32 %i.bb, 1                    ; 4 uses
  store i32 %i.bc, ptr %3, align 4
  %niter144.next.1 = add i32 %niter144, 2         ; 2 uses
  %niter144.ncmp.1 = icmp eq i32 %niter144.next.1, %unroll_iter143
  br i1 %niter144.ncmp.1, label %.loopexit.i.us33.i.loopexit.unr-lcssa, label %.lr.ph.i.us29.i, !llvm.loop !78

.loopexit.i.us33.i.loopexit.unr-lcssa:            ; preds = %bb.m
  %lcmp.mod140.not = icmp eq i32 %xtraiter137, 0
  br i1 %lcmp.mod140.not, label %.loopexit.i.us33.i, label %.lr.ph.i.us29.i.epil.preheader

.lr.ph.i.us29.i.epil.preheader:                   ; preds = %.loopexit.i.us33.i.loopexit.unr-lcssa, %.lr.ph.i.us29.i.preheader
  %.epil.init139 = phi i32 [ %.pr.i, %.lr.ph.i.us29.i.preheader ], [ %i.bc, %.loopexit.i.us33.i.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod142 = trunc i32 %5 to i1
  tail call void @llvm.assume(i1 %lcmp.mod142)
  %i.bd = icmp slt i32 %.epil.init139, %4
  br i1 %i.bd, label %bb.n, label %.loopexit.i.us33.i.loopexit.epilog-lcssa

bb.n:                                             ; preds = %.lr.ph.i.us29.i.epil.preheader
  %i.be = sext i32 %.epil.init139 to i64
  %i.bf = getelementptr inbounds i8, ptr %2, i64 %i.be
  store i8 32, ptr %i.bf, align 1
  %.pre.i.us31.i.epil = load i32, ptr %3, align 4
  br label %.loopexit.i.us33.i.loopexit.epilog-lcssa

.loopexit.i.us33.i.loopexit.epilog-lcssa:         ; preds = %bb.n, %.lr.ph.i.us29.i.epil.preheader
  %i.bg = phi i32 [ %.pre.i.us31.i.epil, %bb.n ], [ %.epil.init139, %.lr.ph.i.us29.i.epil.preheader ]
  %i.bh = add nsw i32 %i.bg, 1                    ; 2 uses
  store i32 %i.bh, ptr %3, align 4
  br label %.loopexit.i.us33.i

.loopexit.i.us33.i:                               ; preds = %.loopexit.i.us33.i.loopexit.epilog-lcssa, %.loopexit.i.us33.i.loopexit.unr-lcssa, %bb.i, %bb.j
  %i.bi = phi i32 [ %.pr.i, %bb.i ], [ %.pr.i, %bb.j ], [ %i.bc, %.loopexit.i.us33.i.loopexit.unr-lcssa ], [ %i.bh, %.loopexit.i.us33.i.loopexit.epilog-lcssa ] ; 3 uses
  %i.bj = icmp slt i32 %i.bi, %4
  br i1 %i.bj, label %bb.o, label %_ZL10outputCharcPcPiii.exit.us35.i

bb.o:                                             ; preds = %.loopexit.i.us33.i
  %i.bk = sext i32 %i.bi to i64
  %i.bl = getelementptr inbounds i8, ptr %2, i64 %i.bk
  store i8 42, ptr %i.bl, align 1
  %.pre44 = load i32, ptr %3, align 4
  br label %_ZL10outputCharcPcPiii.exit.us35.i

_ZL10outputCharcPcPiii.exit.us35.i:               ; preds = %bb.o, %.loopexit.i.us33.i
  %i.bm = phi i32 [ %.pre44, %bb.o ], [ %i.bi, %.loopexit.i.us33.i ]
  %i.bn = add nsw i32 %i.bm, 1                    ; 8 uses
  store i32 %i.bn, ptr %3, align 4
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %.lr.ph.i.us29.i.1.preheader, label %bb.p

bb.p:                                             ; preds = %_ZL10outputCharcPcPiii.exit.us35.i
  %i.bp = icmp slt i32 %i.bn, %4
  br i1 %i.bp, label %bb.q, label %.loopexit.i.us33.i.1

bb.q:                                             ; preds = %bb.p
  %i.bq = sext i32 %i.bn to i64
  %i.br = getelementptr i8, ptr %2, i64 %i.bq
  %i.bs = getelementptr i8, ptr %i.br, i64 -1
  %i.bt = load i8, ptr %i.bs, align 1
  %i.bu = icmp eq i8 %i.bt, 10
  br i1 %i.bu, label %.lr.ph.i.us29.i.1.preheader, label %.loopexit.i.us33.i.1

.lr.ph.i.us29.i.1.preheader:                      ; preds = %bb.q, %_ZL10outputCharcPcPiii.exit.us35.i
  %xtraiter149 = and i32 %5, 1
  %i.bv = icmp eq i32 %5, 1
  br i1 %i.bv, label %.lr.ph.i.us29.i.1.epil.preheader, label %.lr.ph.i.us29.i.1.preheader.new

.lr.ph.i.us29.i.1.preheader.new:                  ; preds = %.lr.ph.i.us29.i.1.preheader
  %unroll_iter155 = and i32 %5, 2147483646
  br label %.lr.ph.i.us29.i.1

.lr.ph.i.us29.i.1:                                ; preds = %bb.t, %.lr.ph.i.us29.i.1.preheader.new
  %i.bw = phi i32 [ %i.bn, %.lr.ph.i.us29.i.1.preheader.new ], [ %i.cg, %bb.t ] ; 3 uses
  %niter156 = phi i32 [ 0, %.lr.ph.i.us29.i.1.preheader.new ], [ %niter156.next.1, %bb.t ]
  %i.bx = icmp slt i32 %i.bw, %4
  br i1 %i.bx, label %bb.r, label %.lr.ph.i.us29.i.1.1

bb.r:                                             ; preds = %.lr.ph.i.us29.i.1
  %i.by = sext i32 %i.bw to i64
  %i.bz = getelementptr inbounds i8, ptr %2, i64 %i.by
  store i8 32, ptr %i.bz, align 1
  %.pre.i.us31.i.1 = load i32, ptr %3, align 4
  br label %.lr.ph.i.us29.i.1.1

.lr.ph.i.us29.i.1.1:                              ; preds = %bb.r, %.lr.ph.i.us29.i.1
  %i.ca = phi i32 [ %.pre.i.us31.i.1, %bb.r ], [ %i.bw, %.lr.ph.i.us29.i.1 ]
  %i.cb = add nsw i32 %i.ca, 1                    ; 4 uses
  store i32 %i.cb, ptr %3, align 4
  %i.cc = icmp slt i32 %i.cb, %4
  br i1 %i.cc, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph.i.us29.i.1.1
  %i.cd = sext i32 %i.cb to i64
  %i.ce = getelementptr inbounds i8, ptr %2, i64 %i.cd
  store i8 32, ptr %i.ce, align 1
  %.pre.i.us31.i.1.1 = load i32, ptr %3, align 4
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph.i.us29.i.1.1
  %i.cf = phi i32 [ %.pre.i.us31.i.1.1, %bb.s ], [ %i.cb, %.lr.ph.i.us29.i.1.1 ]
  %i.cg = add nsw i32 %i.cf, 1                    ; 4 uses
  store i32 %i.cg, ptr %3, align 4
  %niter156.next.1 = add i32 %niter156, 2         ; 2 uses
  %niter156.ncmp.1 = icmp eq i32 %niter156.next.1, %unroll_iter155
  br i1 %niter156.ncmp.1, label %.loopexit.i.us33.i.1.loopexit.unr-lcssa, label %.lr.ph.i.us29.i.1, !llvm.loop !78

.loopexit.i.us33.i.1.loopexit.unr-lcssa:          ; preds = %bb.t
  %lcmp.mod152.not = icmp eq i32 %xtraiter149, 0
  br i1 %lcmp.mod152.not, label %.loopexit.i.us33.i.1, label %.lr.ph.i.us29.i.1.epil.preheader

.lr.ph.i.us29.i.1.epil.preheader:                 ; preds = %.loopexit.i.us33.i.1.loopexit.unr-lcssa, %.lr.ph.i.us29.i.1.preheader
  %.epil.init151 = phi i32 [ %i.bn, %.lr.ph.i.us29.i.1.preheader ], [ %i.cg, %.loopexit.i.us33.i.1.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod154 = trunc i32 %5 to i1
  tail call void @llvm.assume(i1 %lcmp.mod154)
  %i.ch = icmp slt i32 %.epil.init151, %4
  br i1 %i.ch, label %bb.u, label %.loopexit.i.us33.i.1.loopexit.epilog-lcssa

bb.u:                                             ; preds = %.lr.ph.i.us29.i.1.epil.preheader
  %i.ci = sext i32 %.epil.init151 to i64
  %i.cj = getelementptr inbounds i8, ptr %2, i64 %i.ci
  store i8 32, ptr %i.cj, align 1
  %.pre.i.us31.i.1.epil = load i32, ptr %3, align 4
  br label %.loopexit.i.us33.i.1.loopexit.epilog-lcssa

.loopexit.i.us33.i.1.loopexit.epilog-lcssa:       ; preds = %bb.u, %.lr.ph.i.us29.i.1.epil.preheader
  %i.ck = phi i32 [ %.pre.i.us31.i.1.epil, %bb.u ], [ %.epil.init151, %.lr.ph.i.us29.i.1.epil.preheader ]
  %i.cl = add nsw i32 %i.ck, 1                    ; 2 uses
  store i32 %i.cl, ptr %3, align 4
  br label %.loopexit.i.us33.i.1

.loopexit.i.us33.i.1:                             ; preds = %.loopexit.i.us33.i.1.loopexit.epilog-lcssa, %.loopexit.i.us33.i.1.loopexit.unr-lcssa, %bb.q, %bb.p
  %i.cm = phi i32 [ %i.bn, %bb.p ], [ %i.bn, %bb.q ], [ %i.cg, %.loopexit.i.us33.i.1.loopexit.unr-lcssa ], [ %i.cl, %.loopexit.i.us33.i.1.loopexit.epilog-lcssa ] ; 3 uses
  %i.cn = icmp slt i32 %i.cm, %4
  br i1 %i.cn, label %bb.v, label %_ZL10outputCharcPcPiii.exit.us35.i.1

bb.v:                                             ; preds = %.loopexit.i.us33.i.1
  %i.co = sext i32 %i.cm to i64
  %i.cp = getelementptr inbounds i8, ptr %2, i64 %i.co
  store i8 78, ptr %i.cp, align 1
  %.pre45 = load i32, ptr %3, align 4
  br label %_ZL10outputCharcPcPiii.exit.us35.i.1

_ZL10outputCharcPcPiii.exit.us35.i.1:             ; preds = %bb.v, %.loopexit.i.us33.i.1
  %i.cq = phi i32 [ %.pre45, %bb.v ], [ %i.cm, %.loopexit.i.us33.i.1 ]
  %i.cr = add nsw i32 %i.cq, 1                    ; 8 uses
  store i32 %i.cr, ptr %3, align 4
  %i.cs = icmp eq i32 %i.cr, 0
  br i1 %i.cs, label %.lr.ph.i.us29.i.2.preheader, label %bb.w

bb.w:                                             ; preds = %_ZL10outputCharcPcPiii.exit.us35.i.1
  %i.ct = icmp slt i32 %i.cr, %4
  br i1 %i.ct, label %bb.x, label %.loopexit.i.us33.i.2

bb.x:                                             ; preds = %bb.w
  %i.cu = sext i32 %i.cr to i64
  %i.cv = getelementptr i8, ptr %2, i64 %i.cu
  %i.cw = getelementptr i8, ptr %i.cv, i64 -1
  %i.cx = load i8, ptr %i.cw, align 1
  %i.cy = icmp eq i8 %i.cx, 10
  br i1 %i.cy, label %.lr.ph.i.us29.i.2.preheader, label %.loopexit.i.us33.i.2

.lr.ph.i.us29.i.2.preheader:                      ; preds = %bb.x, %_ZL10outputCharcPcPiii.exit.us35.i.1
  %xtraiter157 = and i32 %5, 1
  %i.cz = icmp eq i32 %5, 1
  br i1 %i.cz, label %.lr.ph.i.us29.i.2.epil.preheader, label %.lr.ph.i.us29.i.2.preheader.new

.lr.ph.i.us29.i.2.preheader.new:                  ; preds = %.lr.ph.i.us29.i.2.preheader
  %unroll_iter163 = and i32 %5, 2147483646
  br label %.lr.ph.i.us29.i.2

.lr.ph.i.us29.i.2:                                ; preds = %bb.aa, %.lr.ph.i.us29.i.2.preheader.new
  %i.da = phi i32 [ %i.cr, %.lr.ph.i.us29.i.2.preheader.new ], [ %i.dk, %bb.aa ] ; 3 uses
  %niter164 = phi i32 [ 0, %.lr.ph.i.us29.i.2.preheader.new ], [ %niter164.next.1, %bb.aa ]
  %i.db = icmp slt i32 %i.da, %4
  br i1 %i.db, label %bb.y, label %.lr.ph.i.us29.i.2.1

bb.y:                                             ; preds = %.lr.ph.i.us29.i.2
  %i.dc = sext i32 %i.da to i64
  %i.dd = getelementptr inbounds i8, ptr %2, i64 %i.dc
  store i8 32, ptr %i.dd, align 1
  %.pre.i.us31.i.2 = load i32, ptr %3, align 4
  br label %.lr.ph.i.us29.i.2.1

.lr.ph.i.us29.i.2.1:                              ; preds = %bb.y, %.lr.ph.i.us29.i.2
  %i.de = phi i32 [ %.pre.i.us31.i.2, %bb.y ], [ %i.da, %.lr.ph.i.us29.i.2 ]
  %i.df = add nsw i32 %i.de, 1                    ; 4 uses
  store i32 %i.df, ptr %3, align 4
  %i.dg = icmp slt i32 %i.df, %4
  br i1 %i.dg, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.lr.ph.i.us29.i.2.1
  %i.dh = sext i32 %i.df to i64
  %i.di = getelementptr inbounds i8, ptr %2, i64 %i.dh
  store i8 32, ptr %i.di, align 1
  %.pre.i.us31.i.2.1 = load i32, ptr %3, align 4
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.lr.ph.i.us29.i.2.1
  %i.dj = phi i32 [ %.pre.i.us31.i.2.1, %bb.z ], [ %i.df, %.lr.ph.i.us29.i.2.1 ]
  %i.dk = add nsw i32 %i.dj, 1                    ; 4 uses
  store i32 %i.dk, ptr %3, align 4
  %niter164.next.1 = add i32 %niter164, 2         ; 2 uses
  %niter164.ncmp.1 = icmp eq i32 %niter164.next.1, %unroll_iter163
  br i1 %niter164.ncmp.1, label %.loopexit.i.us33.i.2.loopexit.unr-lcssa, label %.lr.ph.i.us29.i.2, !llvm.loop !78

.loopexit.i.us33.i.2.loopexit.unr-lcssa:          ; preds = %bb.aa
  %lcmp.mod160.not = icmp eq i32 %xtraiter157, 0
  br i1 %lcmp.mod160.not, label %.loopexit.i.us33.i.2, label %.lr.ph.i.us29.i.2.epil.preheader

.lr.ph.i.us29.i.2.epil.preheader:                 ; preds = %.loopexit.i.us33.i.2.loopexit.unr-lcssa, %.lr.ph.i.us29.i.2.preheader
  %.epil.init159 = phi i32 [ %i.cr, %.lr.ph.i.us29.i.2.preheader ], [ %i.dk, %.loopexit.i.us33.i.2.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod162 = trunc i32 %5 to i1
  tail call void @llvm.assume(i1 %lcmp.mod162)
  %i.dl = icmp slt i32 %.epil.init159, %4
  br i1 %i.dl, label %bb.ab, label %.loopexit.i.us33.i.2.loopexit.epilog-lcssa

bb.ab:                                            ; preds = %.lr.ph.i.us29.i.2.epil.preheader
  %i.dm = sext i32 %.epil.init159 to i64
  %i.dn = getelementptr inbounds i8, ptr %2, i64 %i.dm
  store i8 32, ptr %i.dn, align 1
  %.pre.i.us31.i.2.epil = load i32, ptr %3, align 4
  br label %.loopexit.i.us33.i.2.loopexit.epilog-lcssa

.loopexit.i.us33.i.2.loopexit.epilog-lcssa:       ; preds = %bb.ab, %.lr.ph.i.us29.i.2.epil.preheader
  %i.do = phi i32 [ %.pre.i.us31.i.2.epil, %bb.ab ], [ %.epil.init159, %.lr.ph.i.us29.i.2.epil.preheader ]
  %i.dp = add nsw i32 %i.do, 1                    ; 2 uses
  store i32 %i.dp, ptr %3, align 4
  br label %.loopexit.i.us33.i.2

.loopexit.i.us33.i.2:                             ; preds = %.loopexit.i.us33.i.2.loopexit.epilog-lcssa, %.loopexit.i.us33.i.2.loopexit.unr-lcssa, %bb.x, %bb.w
  %i.dq = phi i32 [ %i.cr, %bb.w ], [ %i.cr, %bb.x ], [ %i.dk, %.loopexit.i.us33.i.2.loopexit.unr-lcssa ], [ %i.dp, %.loopexit.i.us33.i.2.loopexit.epilog-lcssa ] ; 3 uses
  %i.dr = icmp slt i32 %i.dq, %4
  br i1 %i.dr, label %bb.ac, label %_ZL10outputCharcPcPiii.exit.us35.i.2

bb.ac:                                            ; preds = %.loopexit.i.us33.i.2
  %i.ds = sext i32 %i.dq to i64
  %i.dt = getelementptr inbounds i8, ptr %2, i64 %i.ds
  store i8 85, ptr %i.dt, align 1
  %.pre46 = load i32, ptr %3, align 4
  br label %_ZL10outputCharcPcPiii.exit.us35.i.2

_ZL10outputCharcPcPiii.exit.us35.i.2:             ; preds = %bb.ac, %.loopexit.i.us33.i.2
  %i.du = phi i32 [ %.pre46, %bb.ac ], [ %i.dq, %.loopexit.i.us33.i.2 ]
  %i.dv = add nsw i32 %i.du, 1                    ; 8 uses
  store i32 %i.dv, ptr %3, align 4
  %i.dw = icmp eq i32 %i.dv, 0
  br i1 %i.dw, label %.lr.ph.i.us29.i.3.preheader, label %bb.ad

bb.ad:                                            ; preds = %_ZL10outputCharcPcPiii.exit.us35.i.2
  %i.dx = icmp slt i32 %i.dv, %4
  br i1 %i.dx, label %bb.ae, label %.loopexit.i.us33.i.3

bb.ae:                                            ; preds = %bb.ad
  %i.dy = sext i32 %i.dv to i64
  %i.dz = getelementptr i8, ptr %2, i64 %i.dy
  %i.ea = getelementptr i8, ptr %i.dz, i64 -1
  %i.eb = load i8, ptr %i.ea, align 1
  %i.ec = icmp eq i8 %i.eb, 10
  br i1 %i.ec, label %.lr.ph.i.us29.i.3.preheader, label %.loopexit.i.us33.i.3

.lr.ph.i.us29.i.3.preheader:                      ; preds = %bb.ae, %_ZL10outputCharcPcPiii.exit.us35.i.2
  %xtraiter165 = and i32 %5, 1
  %i.ed = icmp eq i32 %5, 1
  br i1 %i.ed, label %.lr.ph.i.us29.i.3.epil.preheader, label %.lr.ph.i.us29.i.3.preheader.new

.lr.ph.i.us29.i.3.preheader.new:                  ; preds = %.lr.ph.i.us29.i.3.preheader
  %unroll_iter171 = and i32 %5, 2147483646
  br label %.lr.ph.i.us29.i.3

.lr.ph.i.us29.i.3:                                ; preds = %bb.ah, %.lr.ph.i.us29.i.3.preheader.new
  %i.ee = phi i32 [ %i.dv, %.lr.ph.i.us29.i.3.preheader.new ], [ %i.eo, %bb.ah ] ; 3 uses
  %niter172 = phi i32 [ 0, %.lr.ph.i.us29.i.3.preheader.new ], [ %niter172.next.1, %bb.ah ]
  %i.ef = icmp slt i32 %i.ee, %4
  br i1 %i.ef, label %bb.af, label %.lr.ph.i.us29.i.3.1

bb.af:                                            ; preds = %.lr.ph.i.us29.i.3
  %i.eg = sext i32 %i.ee to i64
  %i.eh = getelementptr inbounds i8, ptr %2, i64 %i.eg
  store i8 32, ptr %i.eh, align 1
  %.pre.i.us31.i.3 = load i32, ptr %3, align 4
  br label %.lr.ph.i.us29.i.3.1

.lr.ph.i.us29.i.3.1:                              ; preds = %bb.af, %.lr.ph.i.us29.i.3
  %i.ei = phi i32 [ %.pre.i.us31.i.3, %bb.af ], [ %i.ee, %.lr.ph.i.us29.i.3 ]
  %i.ej = add nsw i32 %i.ei, 1                    ; 4 uses
  store i32 %i.ej, ptr %3, align 4
  %i.ek = icmp slt i32 %i.ej, %4
  br i1 %i.ek, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.lr.ph.i.us29.i.3.1
  %i.el = sext i32 %i.ej to i64
  %i.em = getelementptr inbounds i8, ptr %2, i64 %i.el
  store i8 32, ptr %i.em, align 1
  %.pre.i.us31.i.3.1 = load i32, ptr %3, align 4
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.lr.ph.i.us29.i.3.1
  %i.en = phi i32 [ %.pre.i.us31.i.3.1, %bb.ag ], [ %i.ej, %.lr.ph.i.us29.i.3.1 ]
  %i.eo = add nsw i32 %i.en, 1                    ; 4 uses
  store i32 %i.eo, ptr %3, align 4
  %niter172.next.1 = add i32 %niter172, 2         ; 2 uses
  %niter172.ncmp.1 = icmp eq i32 %niter172.next.1, %unroll_iter171
  br i1 %niter172.ncmp.1, label %.loopexit.i.us33.i.3.loopexit.unr-lcssa, label %.lr.ph.i.us29.i.3, !llvm.loop !78

.loopexit.i.us33.i.3.loopexit.unr-lcssa:          ; preds = %bb.ah
  %lcmp.mod168.not = icmp eq i32 %xtraiter165, 0
  br i1 %lcmp.mod168.not, label %.loopexit.i.us33.i.3, label %.lr.ph.i.us29.i.3.epil.preheader

.lr.ph.i.us29.i.3.epil.preheader:                 ; preds = %.loopexit.i.us33.i.3.loopexit.unr-lcssa, %.lr.ph.i.us29.i.3.preheader
  %.epil.init167 = phi i32 [ %i.dv, %.lr.ph.i.us29.i.3.preheader ], [ %i.eo, %.loopexit.i.us33.i.3.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod170 = trunc i32 %5 to i1
  tail call void @llvm.assume(i1 %lcmp.mod170)
  %i.ep = icmp slt i32 %.epil.init167, %4
  br i1 %i.ep, label %bb.ai, label %.loopexit.i.us33.i.3.loopexit.epilog-lcssa

bb.ai:                                            ; preds = %.lr.ph.i.us29.i.3.epil.preheader
  %i.eq = sext i32 %.epil.init167 to i64
  %i.er = getelementptr inbounds i8, ptr %2, i64 %i.eq
  store i8 32, ptr %i.er, align 1
  %.pre.i.us31.i.3.epil = load i32, ptr %3, align 4
  br label %.loopexit.i.us33.i.3.loopexit.epilog-lcssa

.loopexit.i.us33.i.3.loopexit.epilog-lcssa:       ; preds = %bb.ai, %.lr.ph.i.us29.i.3.epil.preheader
  %i.es = phi i32 [ %.pre.i.us31.i.3.epil, %bb.ai ], [ %.epil.init167, %.lr.ph.i.us29.i.3.epil.preheader ]
  %i.et = add nsw i32 %i.es, 1                    ; 2 uses
  store i32 %i.et, ptr %3, align 4
  br label %.loopexit.i.us33.i.3

.loopexit.i.us33.i.3:                             ; preds = %.loopexit.i.us33.i.3.loopexit.epilog-lcssa, %.loopexit.i.us33.i.3.loopexit.unr-lcssa, %bb.ae, %bb.ad
  %i.eu = phi i32 [ %i.dv, %bb.ad ], [ %i.dv, %bb.ae ], [ %i.eo, %.loopexit.i.us33.i.3.loopexit.unr-lcssa ], [ %i.et, %.loopexit.i.us33.i.3.loopexit.epilog-lcssa ] ; 3 uses
  %i.ev = icmp slt i32 %i.eu, %4
  br i1 %i.ev, label %bb.aj, label %_ZL10outputCharcPcPiii.exit.us35.i.3

bb.aj:                                            ; preds = %.loopexit.i.us33.i.3
  %i.ew = sext i32 %i.eu to i64
  %i.ex = getelementptr inbounds i8, ptr %2, i64 %i.ew
  store i8 76, ptr %i.ex, align 1
  %.pre47 = load i32, ptr %3, align 4
  br label %_ZL10outputCharcPcPiii.exit.us35.i.3

_ZL10outputCharcPcPiii.exit.us35.i.3:             ; preds = %bb.aj, %.loopexit.i.us33.i.3
  %i.ey = phi i32 [ %.pre47, %bb.aj ], [ %i.eu, %.loopexit.i.us33.i.3 ]
  %i.ez = add nsw i32 %i.ey, 1                    ; 8 uses
  store i32 %i.ez, ptr %3, align 4
  %i.fa = icmp eq i32 %i.ez, 0
  br i1 %i.fa, label %.lr.ph.i.us29.i.4.preheader, label %bb.ak

bb.ak:                                            ; preds = %_ZL10outputCharcPcPiii.exit.us35.i.3
  %i.fb = icmp slt i32 %i.ez, %4
  br i1 %i.fb, label %bb.al, label %.loopexit.i.us33.i.4

bb.al:                                            ; preds = %bb.ak
  %i.fc = sext i32 %i.ez to i64
  %i.fd = getelementptr i8, ptr %2, i64 %i.fc
  %i.fe = getelementptr i8, ptr %i.fd, i64 -1
  %i.ff = load i8, ptr %i.fe, align 1
  %i.fg = icmp eq i8 %i.ff, 10
  br i1 %i.fg, label %.lr.ph.i.us29.i.4.preheader, label %.loopexit.i.us33.i.4

.lr.ph.i.us29.i.4.preheader:                      ; preds = %bb.al, %_ZL10outputCharcPcPiii.exit.us35.i.3
  %xtraiter173 = and i32 %5, 1
  %i.fh = icmp eq i32 %5, 1
  br i1 %i.fh, label %.lr.ph.i.us29.i.4.epil.preheader, label %.lr.ph.i.us29.i.4.preheader.new

.lr.ph.i.us29.i.4.preheader.new:                  ; preds = %.lr.ph.i.us29.i.4.preheader
  %unroll_iter179 = and i32 %5, 2147483646
  br label %.lr.ph.i.us29.i.4

.lr.ph.i.us29.i.4:                                ; preds = %bb.ao, %.lr.ph.i.us29.i.4.preheader.new
  %i.fi = phi i32 [ %i.ez, %.lr.ph.i.us29.i.4.preheader.new ], [ %i.fs, %bb.ao ] ; 3 uses
  %niter180 = phi i32 [ 0, %.lr.ph.i.us29.i.4.preheader.new ], [ %niter180.next.1, %bb.ao ]
  %i.fj = icmp slt i32 %i.fi, %4
  br i1 %i.fj, label %bb.am, label %.lr.ph.i.us29.i.4.1

bb.am:                                            ; preds = %.lr.ph.i.us29.i.4
  %i.fk = sext i32 %i.fi to i64
  %i.fl = getelementptr inbounds i8, ptr %2, i64 %i.fk
  store i8 32, ptr %i.fl, align 1
  %.pre.i.us31.i.4 = load i32, ptr %3, align 4
  br label %.lr.ph.i.us29.i.4.1

.lr.ph.i.us29.i.4.1:                              ; preds = %bb.am, %.lr.ph.i.us29.i.4
  %i.fm = phi i32 [ %.pre.i.us31.i.4, %bb.am ], [ %i.fi, %.lr.ph.i.us29.i.4 ]
  %i.fn = add nsw i32 %i.fm, 1                    ; 4 uses
  store i32 %i.fn, ptr %3, align 4
  %i.fo = icmp slt i32 %i.fn, %4
  br i1 %i.fo, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %.lr.ph.i.us29.i.4.1
  %i.fp = sext i32 %i.fn to i64
  %i.fq = getelementptr inbounds i8, ptr %2, i64 %i.fp
  store i8 32, ptr %i.fq, align 1
  %.pre.i.us31.i.4.1 = load i32, ptr %3, align 4
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %.lr.ph.i.us29.i.4.1
  %i.fr = phi i32 [ %.pre.i.us31.i.4.1, %bb.an ], [ %i.fn, %.lr.ph.i.us29.i.4.1 ]
  %i.fs = add nsw i32 %i.fr, 1                    ; 4 uses
  store i32 %i.fs, ptr %3, align 4
  %niter180.next.1 = add i32 %niter180, 2         ; 2 uses
  %niter180.ncmp.1 = icmp eq i32 %niter180.next.1, %unroll_iter179
  br i1 %niter180.ncmp.1, label %.loopexit.i.us33.i.4.loopexit.unr-lcssa, label %.lr.ph.i.us29.i.4, !llvm.loop !78

.loopexit.i.us33.i.4.loopexit.unr-lcssa:          ; preds = %bb.ao
  %lcmp.mod176.not = icmp eq i32 %xtraiter173, 0
  br i1 %lcmp.mod176.not, label %.loopexit.i.us33.i.4, label %.lr.ph.i.us29.i.4.epil.preheader

.lr.ph.i.us29.i.4.epil.preheader:                 ; preds = %.loopexit.i.us33.i.4.loopexit.unr-lcssa, %.lr.ph.i.us29.i.4.preheader
  %.epil.init175 = phi i32 [ %i.ez, %.lr.ph.i.us29.i.4.preheader ], [ %i.fs, %.loopexit.i.us33.i.4.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod178 = trunc i32 %5 to i1
  tail call void @llvm.assume(i1 %lcmp.mod178)
  %i.ft = icmp slt i32 %.epil.init175, %4
  br i1 %i.ft, label %bb.ap, label %.loopexit.i.us33.i.4.loopexit.epilog-lcssa

bb.ap:                                            ; preds = %.lr.ph.i.us29.i.4.epil.preheader
  %i.fu = sext i32 %.epil.init175 to i64
  %i.fv = getelementptr inbounds i8, ptr %2, i64 %i.fu
  store i8 32, ptr %i.fv, align 1
  %.pre.i.us31.i.4.epil = load i32, ptr %3, align 4
  br label %.loopexit.i.us33.i.4.loopexit.epilog-lcssa

.loopexit.i.us33.i.4.loopexit.epilog-lcssa:       ; preds = %bb.ap, %.lr.ph.i.us29.i.4.epil.preheader
  %i.fw = phi i32 [ %.pre.i.us31.i.4.epil, %bb.ap ], [ %.epil.init175, %.lr.ph.i.us29.i.4.epil.preheader ]
  %i.fx = add nsw i32 %i.fw, 1                    ; 2 uses
  store i32 %i.fx, ptr %3, align 4
  br label %.loopexit.i.us33.i.4

.loopexit.i.us33.i.4:                             ; preds = %.loopexit.i.us33.i.4.loopexit.epilog-lcssa, %.loopexit.i.us33.i.4.loopexit.unr-lcssa, %bb.al, %bb.ak
  %i.fy = phi i32 [ %i.ez, %bb.ak ], [ %i.ez, %bb.al ], [ %i.fs, %.loopexit.i.us33.i.4.loopexit.unr-lcssa ], [ %i.fx, %.loopexit.i.us33.i.4.loopexit.epilog-lcssa ] ; 3 uses
  %i.fz = icmp slt i32 %i.fy, %4
  br i1 %i.fz, label %bb.aq, label %_ZL10outputCharcPcPiii.exit.us35.i.4

bb.aq:                                            ; preds = %.loopexit.i.us33.i.4
  %i.ga = sext i32 %i.fy to i64
  %i.gb = getelementptr inbounds i8, ptr %2, i64 %i.ga
  store i8 76, ptr %i.gb, align 1
  %.pre48 = load i32, ptr %3, align 4
  br label %_ZL10outputCharcPcPiii.exit.us35.i.4

_ZL10outputCharcPcPiii.exit.us35.i.4:             ; preds = %bb.aq, %.loopexit.i.us33.i.4
  %i.gc = phi i32 [ %.pre48, %bb.aq ], [ %i.fy, %.loopexit.i.us33.i.4 ]
  %i.gd = add nsw i32 %i.gc, 1                    ; 8 uses
  store i32 %i.gd, ptr %3, align 4
  %i.ge = icmp eq i32 %i.gd, 0
  br i1 %i.ge, label %.lr.ph.i.us29.i.5.preheader, label %bb.ar

bb.ar:                                            ; preds = %_ZL10outputCharcPcPiii.exit.us35.i.4
  %i.gf = icmp slt i32 %i.gd, %4
  br i1 %i.gf, label %bb.as, label %.loopexit.i.us33.i.5

bb.as:                                            ; preds = %bb.ar
  %i.gg = sext i32 %i.gd to i64
  %i.gh = getelementptr i8, ptr %2, i64 %i.gg
  %i.gi = getelementptr i8, ptr %i.gh, i64 -1
  %i.gj = load i8, ptr %i.gi, align 1
  %i.gk = icmp eq i8 %i.gj, 10
  br i1 %i.gk, label %.lr.ph.i.us29.i.5.preheader, label %.loopexit.i.us33.i.5

.lr.ph.i.us29.i.5.preheader:                      ; preds = %bb.as, %_ZL10outputCharcPcPiii.exit.us35.i.4
  %xtraiter181 = and i32 %5, 1
  %i.gl = icmp eq i32 %5, 1
  br i1 %i.gl, label %.lr.ph.i.us29.i.5.epil.preheader, label %.lr.ph.i.us29.i.5.preheader.new

.lr.ph.i.us29.i.5.preheader.new:                  ; preds = %.lr.ph.i.us29.i.5.preheader
  %unroll_iter187 = and i32 %5, 2147483646
  br label %.lr.ph.i.us29.i.5

.lr.ph.i.us29.i.5:                                ; preds = %bb.av, %.lr.ph.i.us29.i.5.preheader.new
  %i.gm = phi i32 [ %i.gd, %.lr.ph.i.us29.i.5.preheader.new ], [ %i.gw, %bb.av ] ; 3 uses
  %niter188 = phi i32 [ 0, %.lr.ph.i.us29.i.5.preheader.new ], [ %niter188.next.1, %bb.av ]
  %i.gn = icmp slt i32 %i.gm, %4
  br i1 %i.gn, label %bb.at, label %.lr.ph.i.us29.i.5.1

bb.at:                                            ; preds = %.lr.ph.i.us29.i.5
  %i.go = sext i32 %i.gm to i64
  %i.gp = getelementptr inbounds i8, ptr %2, i64 %i.go
  store i8 32, ptr %i.gp, align 1
  %.pre.i.us31.i.5 = load i32, ptr %3, align 4
  br label %.lr.ph.i.us29.i.5.1

.lr.ph.i.us29.i.5.1:                              ; preds = %bb.at, %.lr.ph.i.us29.i.5
  %i.gq = phi i32 [ %.pre.i.us31.i.5, %bb.at ], [ %i.gm, %.lr.ph.i.us29.i.5 ]
  %i.gr = add nsw i32 %i.gq, 1                    ; 4 uses
  store i32 %i.gr, ptr %3, align 4
  %i.gs = icmp slt i32 %i.gr, %4
  br i1 %i.gs, label %bb.au, label %bb.av

bb.au:                                            ; preds = %.lr.ph.i.us29.i.5.1
  %i.gt = sext i32 %i.gr to i64
  %i.gu = getelementptr inbounds i8, ptr %2, i64 %i.gt
  store i8 32, ptr %i.gu, align 1
  %.pre.i.us31.i.5.1 = load i32, ptr %3, align 4
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %.lr.ph.i.us29.i.5.1
  %i.gv = phi i32 [ %.pre.i.us31.i.5.1, %bb.au ], [ %i.gr, %.lr.ph.i.us29.i.5.1 ]
  %i.gw = add nsw i32 %i.gv, 1                    ; 4 uses
  store i32 %i.gw, ptr %3, align 4
  %niter188.next.1 = add i32 %niter188, 2         ; 2 uses
  %niter188.ncmp.1 = icmp eq i32 %niter188.next.1, %unroll_iter187
  br i1 %niter188.ncmp.1, label %.loopexit.i.us33.i.5.loopexit.unr-lcssa, label %.lr.ph.i.us29.i.5, !llvm.loop !78

.loopexit.i.us33.i.5.loopexit.unr-lcssa:          ; preds = %bb.av
  %lcmp.mod184.not = icmp eq i32 %xtraiter181, 0
  br i1 %lcmp.mod184.not, label %.loopexit.i.us33.i.5, label %.lr.ph.i.us29.i.5.epil.preheader

.lr.ph.i.us29.i.5.epil.preheader:                 ; preds = %.loopexit.i.us33.i.5.loopexit.unr-lcssa, %.lr.ph.i.us29.i.5.preheader
  %.epil.init183 = phi i32 [ %i.gd, %.lr.ph.i.us29.i.5.preheader ], [ %i.gw, %.loopexit.i.us33.i.5.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod186 = trunc i32 %5 to i1
  tail call void @llvm.assume(i1 %lcmp.mod186)
  %i.gx = icmp slt i32 %.epil.init183, %4
  br i1 %i.gx, label %bb.aw, label %.loopexit.i.us33.i.5.loopexit.epilog-lcssa

bb.aw:                                            ; preds = %.lr.ph.i.us29.i.5.epil.preheader
  %i.gy = sext i32 %.epil.init183 to i64
  %i.gz = getelementptr inbounds i8, ptr %2, i64 %i.gy
  store i8 32, ptr %i.gz, align 1
  %.pre.i.us31.i.5.epil = load i32, ptr %3, align 4
  br label %.loopexit.i.us33.i.5.loopexit.epilog-lcssa

.loopexit.i.us33.i.5.loopexit.epilog-lcssa:       ; preds = %bb.aw, %.lr.ph.i.us29.i.5.epil.preheader
  %i.ha = phi i32 [ %.pre.i.us31.i.5.epil, %bb.aw ], [ %.epil.init183, %.lr.ph.i.us29.i.5.epil.preheader ]
  %i.hb = add nsw i32 %i.ha, 1                    ; 2 uses
  store i32 %i.hb, ptr %3, align 4
  br label %.loopexit.i.us33.i.5

.loopexit.i.us33.i.5:                             ; preds = %.loopexit.i.us33.i.5.loopexit.epilog-lcssa, %.loopexit.i.us33.i.5.loopexit.unr-lcssa, %bb.as, %bb.ar
  %i.hc = phi i32 [ %i.gd, %bb.ar ], [ %i.gd, %bb.as ], [ %i.gw, %.loopexit.i.us33.i.5.loopexit.unr-lcssa ], [ %i.hb, %.loopexit.i.us33.i.5.loopexit.epilog-lcssa ] ; 3 uses
  %i.hd = icmp slt i32 %i.hc, %4
  br i1 %i.hd, label %bb.ax, label %_ZL10outputCharcPcPiii.exit.us35.i.5

bb.ax:                                            ; preds = %.loopexit.i.us33.i.5
  %i.he = sext i32 %i.hc to i64
  %i.hf = getelementptr inbounds i8, ptr %2, i64 %i.he
  store i8 42, ptr %i.hf, align 1
  %.pre49 = load i32, ptr %3, align 4
  br label %_ZL10outputCharcPcPiii.exit.us35.i.5

_ZL10outputCharcPcPiii.exit.us35.i.5:             ; preds = %bb.ax, %.loopexit.i.us33.i.5
  %i.hg = phi i32 [ %.pre49, %bb.ax ], [ %i.hc, %.loopexit.i.us33.i.5 ]
  %i.hh = add nsw i32 %i.hg, 1                    ; 3 uses
  store i32 %i.hh, ptr %3, align 4
  %i.hi = icmp eq i32 %i.hh, 0
  br i1 %i.hi, label %.lr.ph.i.us29.i.6.preheader, label %.loopexit.i.us33.i.6

.lr.ph.i.us29.i.6.preheader:                      ; preds = %_ZL10outputCharcPcPiii.exit.us35.i.5
  %xtraiter189 = and i32 %5, 1
  %i.hj = icmp eq i32 %5, 1
  br i1 %i.hj, label %.lr.ph.i.us29.i.6.epil.preheader, label %.lr.ph.i.us29.i.6.preheader.new

.lr.ph.i.us29.i.6.preheader.new:                  ; preds = %.lr.ph.i.us29.i.6.preheader
  %unroll_iter195 = and i32 %5, 2147483646
  br label %.lr.ph.i.us29.i.6

.lr.ph.i.us29.i.6:                                ; preds = %bb.ba, %.lr.ph.i.us29.i.6.preheader.new
  %i.hk = phi i32 [ 0, %.lr.ph.i.us29.i.6.preheader.new ], [ %i.hu, %bb.ba ] ; 3 uses
  %niter196 = phi i32 [ 0, %.lr.ph.i.us29.i.6.preheader.new ], [ %niter196.next.1, %bb.ba ]
  %i.hl = icmp slt i32 %i.hk, %4
  br i1 %i.hl, label %bb.ay, label %.lr.ph.i.us29.i.6.1

bb.ay:                                            ; preds = %.lr.ph.i.us29.i.6
  %i.hm = sext i32 %i.hk to i64
  %i.hn = getelementptr inbounds i8, ptr %2, i64 %i.hm
  store i8 32, ptr %i.hn, align 1
  %.pre.i.us31.i.6 = load i32, ptr %3, align 4
  br label %.lr.ph.i.us29.i.6.1

.lr.ph.i.us29.i.6.1:                              ; preds = %bb.ay, %.lr.ph.i.us29.i.6
  %i.ho = phi i32 [ %.pre.i.us31.i.6, %bb.ay ], [ %i.hk, %.lr.ph.i.us29.i.6 ]
  %i.hp = add nsw i32 %i.ho, 1                    ; 4 uses
  store i32 %i.hp, ptr %3, align 4
  %i.hq = icmp slt i32 %i.hp, %4
  br i1 %i.hq, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %.lr.ph.i.us29.i.6.1
  %i.hr = sext i32 %i.hp to i64
  %i.hs = getelementptr inbounds i8, ptr %2, i64 %i.hr
  store i8 32, ptr %i.hs, align 1
  %.pre.i.us31.i.6.1 = load i32, ptr %3, align 4
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %.lr.ph.i.us29.i.6.1
  %i.ht = phi i32 [ %.pre.i.us31.i.6.1, %bb.az ], [ %i.hp, %.lr.ph.i.us29.i.6.1 ]
  %i.hu = add nsw i32 %i.ht, 1                    ; 4 uses
  store i32 %i.hu, ptr %3, align 4
  %niter196.next.1 = add i32 %niter196, 2         ; 2 uses
  %niter196.ncmp.1 = icmp eq i32 %niter196.next.1, %unroll_iter195
  br i1 %niter196.ncmp.1, label %.loopexit.i.us33.i.6.loopexit.unr-lcssa, label %.lr.ph.i.us29.i.6, !llvm.loop !78

.loopexit.i.us33.i.6.loopexit.unr-lcssa:          ; preds = %bb.ba
  %lcmp.mod192.not = icmp eq i32 %xtraiter189, 0
  br i1 %lcmp.mod192.not, label %.loopexit.i.us33.i.6, label %.lr.ph.i.us29.i.6.epil.preheader

.lr.ph.i.us29.i.6.epil.preheader:                 ; preds = %.loopexit.i.us33.i.6.loopexit.unr-lcssa, %.lr.ph.i.us29.i.6.preheader
  %.epil.init191 = phi i32 [ 0, %.lr.ph.i.us29.i.6.preheader ], [ %i.hu, %.loopexit.i.us33.i.6.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod194 = trunc i32 %5 to i1
  tail call void @llvm.assume(i1 %lcmp.mod194)
  %i.hv = icmp slt i32 %.epil.init191, %4
  br i1 %i.hv, label %bb.bb, label %.loopexit.i.us33.i.6.loopexit.epilog-lcssa

bb.bb:                                            ; preds = %.lr.ph.i.us29.i.6.epil.preheader
  %i.hw = sext i32 %.epil.init191 to i64
  %i.hx = getelementptr inbounds i8, ptr %2, i64 %i.hw
  store i8 32, ptr %i.hx, align 1
  %.pre.i.us31.i.6.epil = load i32, ptr %3, align 4
  br label %.loopexit.i.us33.i.6.loopexit.epilog-lcssa

.loopexit.i.us33.i.6.loopexit.epilog-lcssa:       ; preds = %bb.bb, %.lr.ph.i.us29.i.6.epil.preheader
  %i.hy = phi i32 [ %.pre.i.us31.i.6.epil, %bb.bb ], [ %.epil.init191, %.lr.ph.i.us29.i.6.epil.preheader ]
  %i.hz = add nsw i32 %i.hy, 1                    ; 2 uses
  store i32 %i.hz, ptr %3, align 4
  br label %.loopexit.i.us33.i.6

.loopexit.i.us33.i.6:                             ; preds = %.loopexit.i.us33.i.6.loopexit.epilog-lcssa, %.loopexit.i.us33.i.6.loopexit.unr-lcssa, %_ZL10outputCharcPcPiii.exit.us35.i.5
  %i.ia = phi i32 [ %i.hh, %_ZL10outputCharcPcPiii.exit.us35.i.5 ], [ %i.hu, %.loopexit.i.us33.i.6.loopexit.unr-lcssa ], [ %i.hz, %.loopexit.i.us33.i.6.loopexit.epilog-lcssa ] ; 2 uses
  %i.ib = icmp slt i32 %i.ia, %4
  br i1 %i.ib, label %_ZL12outputStringPKcPcPiii.exit.sink.split, label %_ZL12outputStringPKcPcPiii.exit

bb.bc:                                            ; preds = %_ZL10outputCharcPcPiii.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ic = trunc nuw i64 %indvars.iv.next to i32
  %i.id = icmp sgt i32 %1, %i.ic
  %i.ie = or i1 %i.b, %i.id
  br i1 %i.ie, label %.loopexit.i.i, label %_ZL12outputStringPKcPcPiii.exit, !llvm.loop !79

.loopexit.i.i:                                    ; preds = %.lr.ph, %bb.bc
  %.pre.i = phi i32 [ %.pre.i.pre, %.lr.ph ], [ %i.ks, %bb.bc ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.bc ] ; 2 uses
  %i.if = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  %i.ig = load i16, ptr %i.if, align 2            ; 2 uses
  %i.ih = zext i16 %i.ig to i64                   ; 4 uses
  %i.ii = icmp slt i32 %.pre.i, %4
  br i1 %i.ii, label %bb.bd, label %_ZL10outputCharcPcPiii.exit.i

bb.bd:                                            ; preds = %.loopexit.i.i
  %i.ij = lshr i64 %i.ih, 12
  %i.ik = getelementptr inbounds nuw i8, ptr @_ZZL14outputHexBytesliPcPiiE9gHexChars, i64 %i.ij
  %i.il = load i8, ptr %i.ik, align 1
  %i.im = sext i32 %.pre.i to i64
  %i.in = getelementptr inbounds i8, ptr %2, i64 %i.im
  store i8 %i.il, ptr %i.in, align 1
  %.pre10.i = load i32, ptr %3, align 4
  br label %_ZL10outputCharcPcPiii.exit.i

_ZL10outputCharcPcPiii.exit.i:                    ; preds = %bb.bd, %.loopexit.i.i
  %i.io = phi i32 [ %.pre.i, %.loopexit.i.i ], [ %.pre10.i, %bb.bd ]
  %i.ip = add nsw i32 %i.io, 1                    ; 4 uses
  store i32 %i.ip, ptr %3, align 4
  %i.iq = icmp slt i32 %i.ip, %4
  br i1 %i.iq, label %bb.be, label %_ZL10outputCharcPcPiii.exit.i.1

bb.be:                                            ; preds = %_ZL10outputCharcPcPiii.exit.i
  %i.ir = lshr i64 %i.ih, 8
  %i.is = and i64 %i.ir, 15
  %i.it = getelementptr inbounds nuw i8, ptr @_ZZL14outputHexBytesliPcPiiE9gHexChars, i64 %i.is
  %i.iu = load i8, ptr %i.it, align 1
  %i.iv = sext i32 %i.ip to i64
  %i.iw = getelementptr inbounds i8, ptr %2, i64 %i.iv
  store i8 %i.iu, ptr %i.iw, align 1
  %.pre10.i.1 = load i32, ptr %3, align 4
  br label %_ZL10outputCharcPcPiii.exit.i.1

_ZL10outputCharcPcPiii.exit.i.1:                  ; preds = %bb.be, %_ZL10outputCharcPcPiii.exit.i
  %i.ix = phi i32 [ %i.ip, %_ZL10outputCharcPcPiii.exit.i ], [ %.pre10.i.1, %bb.be ]
  %i.iy = add nsw i32 %i.ix, 1                    ; 4 uses
  store i32 %i.iy, ptr %3, align 4
  %i.iz = icmp slt i32 %i.iy, %4
  br i1 %i.iz, label %bb.bf, label %_ZL10outputCharcPcPiii.exit.i.2

bb.bf:                                            ; preds = %_ZL10outputCharcPcPiii.exit.i.1
  %i.ja = lshr i64 %i.ih, 4
  %i.jb = and i64 %i.ja, 15
  %i.jc = getelementptr inbounds nuw i8, ptr @_ZZL14outputHexBytesliPcPiiE9gHexChars, i64 %i.jb
  %i.jd = load i8, ptr %i.jc, align 1
  %i.je = sext i32 %i.iy to i64
  %i.jf = getelementptr inbounds i8, ptr %2, i64 %i.je
  store i8 %i.jd, ptr %i.jf, align 1
  %.pre10.i.2 = load i32, ptr %3, align 4
  br label %_ZL10outputCharcPcPiii.exit.i.2

_ZL10outputCharcPcPiii.exit.i.2:                  ; preds = %bb.bf, %_ZL10outputCharcPcPiii.exit.i.1
  %i.jg = phi i32 [ %i.iy, %_ZL10outputCharcPcPiii.exit.i.1 ], [ %.pre10.i.2, %bb.bf ]
  %i.jh = add nsw i32 %i.jg, 1                    ; 4 uses
  store i32 %i.jh, ptr %3, align 4
  %i.ji = icmp slt i32 %i.jh, %4
  br i1 %i.ji, label %bb.bg, label %_ZL10outputCharcPcPiii.exit.i.3

bb.bg:                                            ; preds = %_ZL10outputCharcPcPiii.exit.i.2
  %i.jj = and i64 %i.ih, 15
  %i.jk = getelementptr inbounds nuw i8, ptr @_ZZL14outputHexBytesliPcPiiE9gHexChars, i64 %i.jj
  %i.jl = load i8, ptr %i.jk, align 1
  %i.jm = sext i32 %i.jh to i64
  %i.jn = getelementptr inbounds i8, ptr %2, i64 %i.jm
  store i8 %i.jl, ptr %i.jn, align 1
  %.pre10.i.3 = load i32, ptr %3, align 4
  br label %_ZL10outputCharcPcPiii.exit.i.3

_ZL10outputCharcPcPiii.exit.i.3:                  ; preds = %bb.bg, %_ZL10outputCharcPcPiii.exit.i.2
  %i.jo = phi i32 [ %i.jh, %_ZL10outputCharcPcPiii.exit.i.2 ], [ %.pre10.i.3, %bb.bg ]
  %i.jp = add nsw i32 %i.jo, 1                    ; 8 uses
  store i32 %i.jp, ptr %3, align 4
  %i.jq = icmp eq i32 %i.jp, 0
  br i1 %i.jq, label %bb.bj, label %bb.bh

bb.bh:                                            ; preds = %_ZL10outputCharcPcPiii.exit.i.3
  %i.jr = icmp slt i32 %i.jp, %4
  br i1 %i.jr, label %bb.bi, label %.loopexit.i

bb.bi:                                            ; preds = %bb.bh
  %i.js = sext i32 %i.jp to i64
  %i.jt = getelementptr i8, ptr %2, i64 %i.js
  %i.ju = getelementptr i8, ptr %i.jt, i64 -1
  %i.jv = load i8, ptr %i.ju, align 1
  %i.jw = icmp eq i8 %i.jv, 10
  %or.cond26 = and i1 %.old.old.i, %i.jw
  br i1 %or.cond26, label %.lr.ph.i.preheader, label %.loopexit.i

bb.bj:                                            ; preds = %_ZL10outputCharcPcPiii.exit.i.3
  br i1 %.old.old.i, label %.lr.ph.i.preheader, label %.loopexit.i

.lr.ph.i.preheader:                               ; preds = %bb.bi, %bb.bj
  br i1 %i.e, label %.lr.ph.i.epil.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.bm
  %i.jx = phi i32 [ %i.kh, %bb.bm ], [ %i.jp, %.lr.ph.i.preheader ] ; 3 uses
  %niter = phi i32 [ %niter.next.1, %bb.bm ], [ 0, %.lr.ph.i.preheader ]
  %i.jy = icmp slt i32 %i.jx, %4
  br i1 %i.jy, label %bb.bk, label %.lr.ph.i.1

bb.bk:                                            ; preds = %.lr.ph.i
  %i.jz = sext i32 %i.jx to i64
  %i.ka = getelementptr inbounds i8, ptr %2, i64 %i.jz
  store i8 32, ptr %i.ka, align 1
  %.pre.i25 = load i32, ptr %3, align 4
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.bk, %.lr.ph.i
  %i.kb = phi i32 [ %.pre.i25, %bb.bk ], [ %i.jx, %.lr.ph.i ]
  %i.kc = add nsw i32 %i.kb, 1                    ; 4 uses
  store i32 %i.kc, ptr %3, align 4
  %i.kd = icmp slt i32 %i.kc, %4
  br i1 %i.kd, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %.lr.ph.i.1
  %i.ke = sext i32 %i.kc to i64
  %i.kf = getelementptr inbounds i8, ptr %2, i64 %i.ke
  store i8 32, ptr %i.kf, align 1
  %.pre.i25.1 = load i32, ptr %3, align 4
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %.lr.ph.i.1
  %i.kg = phi i32 [ %.pre.i25.1, %bb.bl ], [ %i.kc, %.lr.ph.i.1 ]
  %i.kh = add nsw i32 %i.kg, 1                    ; 4 uses
  store i32 %i.kh, ptr %3, align 4
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !78

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %bb.bm
  br i1 %lcmp.mod.not, label %.loopexit.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.epil.init = phi i32 [ %i.jp, %.lr.ph.i.preheader ], [ %i.kh, %.loopexit.i.loopexit.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod136)
  %i.ki = icmp slt i32 %.epil.init, %4
  br i1 %i.ki, label %bb.bn, label %.loopexit.i.loopexit.epilog-lcssa

bb.bn:                                            ; preds = %.lr.ph.i.epil.preheader
  %i.kj = sext i32 %.epil.init to i64
  %i.kk = getelementptr inbounds i8, ptr %2, i64 %i.kj
  store i8 32, ptr %i.kk, align 1
  %.pre.i25.epil = load i32, ptr %3, align 4
  br label %.loopexit.i.loopexit.epilog-lcssa

.loopexit.i.loopexit.epilog-lcssa:                ; preds = %bb.bn, %.lr.ph.i.epil.preheader
  %i.kl = phi i32 [ %.pre.i25.epil, %bb.bn ], [ %.epil.init, %.lr.ph.i.epil.preheader ]
  %i.km = add nsw i32 %i.kl, 1                    ; 2 uses
  store i32 %i.km, ptr %3, align 4
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit.epilog-lcssa, %.loopexit.i.loopexit.unr-lcssa, %bb.bh, %bb.bi, %bb.bj
  %i.kn = phi i32 [ %i.jp, %bb.bh ], [ 0, %bb.bj ], [ %i.jp, %bb.bi ], [ %i.kh, %.loopexit.i.loopexit.unr-lcssa ], [ %i.km, %.loopexit.i.loopexit.epilog-lcssa ] ; 3 uses
  %i.ko = icmp slt i32 %i.kn, %4
  br i1 %i.ko, label %bb.bo, label %_ZL10outputCharcPcPiii.exit

bb.bo:                                            ; preds = %.loopexit.i
  %i.kp = sext i32 %i.kn to i64
  %i.kq = getelementptr inbounds i8, ptr %2, i64 %i.kp
  store i8 32, ptr %i.kq, align 1
  %.pre = load i32, ptr %3, align 4
  br label %_ZL10outputCharcPcPiii.exit

_ZL10outputCharcPcPiii.exit:                      ; preds = %.loopexit.i, %bb.bo
  %i.kr = phi i32 [ %i.kn, %.loopexit.i ], [ %.pre, %bb.bo ]
  %i.ks = add nsw i32 %i.kr, 1                    ; 2 uses
  store i32 %i.ks, ptr %3, align 4
end_hunk_4
