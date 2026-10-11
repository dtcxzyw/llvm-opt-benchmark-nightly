Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/quiche_client.quiche_client.fa529efd9b26878d-cgu.10?download=true
inline.NumInlined: 224
inline.NumDeleted: 120
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [96 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/smallvec-1.15.2/src/lib.rs\00", align 1
@1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"_\00\00\00\00\00\00\00V\01\00\00.\00\00\00" }>, align 8
@2 = private unnamed_addr constant [17 x i8] c"capacity overflow", align 1
@3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"_\00\00\00\00\00\00\00E\01\00\006\00\00\00" }>, align 8
@4 = private constant <{ [24 x i8], ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCINvNtCsG258MDvU3F_3std2rt10lang_startuE0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuE9call_once6vtableCslusEaBCZKLp_13quiche_client, ptr @_RNCINvNtCsG258MDvU3F_3std2rt10lang_startuE0CslusEaBCZKLp_13quiche_client, ptr @_RNCINvNtCsG258MDvU3F_3std2rt10lang_startuE0CslusEaBCZKLp_13quiche_client }>, align 8, !dbg !425
@5 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsX_Cs5kGgRUzsVpH_8smallvecNtB5_18CollectionAllocErrNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt }>, align 8, !dbg !426
@6 = private unnamed_addr constant [43 x i8] c"called `Result::unwrap()` on an `Err` value", align 1
@7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"_\00\00\00\00\00\00\00\E6\04\00\00\0E\00\00\00" }>, align 8
@8 = private unnamed_addr constant [32 x i8] c"assertion failed: new_cap >= len", align 1
@9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"_\00\00\00\00\00\00\00\B1\04\00\00\0D\00\00\00" }>, align 8
@10 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsZ_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_5Debug3fmt }>, align 8, !dbg !427
@11 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_3mem9alignment9AlignmentNtB6_5Debug3fmtCslusEaBCZKLp_13quiche_client }>, align 8, !dbg !428
@12 = private unnamed_addr constant [6 x i8] c"Layout", align 1
@13 = private unnamed_addr constant [4 x i8] c"size", align 1
@14 = private unnamed_addr constant [5 x i8] c"align", align 1
@15 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsX_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_5Debug3fmt }>, align 8, !dbg !429
@16 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_5Debug3fmtCslusEaBCZKLp_13quiche_client }>, align 8, !dbg !430
@17 = private unnamed_addr constant [25 x i8] c"UnknownTransportParameter", align 1
@18 = private unnamed_addr constant [2 x i8] c"id", align 1
@19 = private unnamed_addr constant [5 x i8] c"value", align 1
@20 = private unnamed_addr constant [16 x i8] c"CapacityOverflow", align 1
@21 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_5alloc6layout6LayoutNtB6_5Debug3fmtCslusEaBCZKLp_13quiche_client }>, align 8, !dbg !431
@22 = private unnamed_addr constant [8 x i8] c"AllocErr", align 1
@23 = private unnamed_addr constant [6 x i8] c"layout", align 1
@24 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCs3f36owOmepS_6quiche16transport_params25UnknownTransportParameterIBx_hEEENtB6_5Debug3fmtCslusEaBCZKLp_13quiche_client }>, align 8, !dbg !432
@25 = private unnamed_addr constant [26 x i8] c"UnknownTransportParameters", align 1
@26 = private unnamed_addr constant [8 x i8] c"capacity", align 1
@27 = private unnamed_addr constant [10 x i8] c"parameters", align 1

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvNtCsG258MDvU3F_3std2rt10lang_startuECslusEaBCZKLp_13quiche_client(ptr noundef nonnull %0, i64 noundef %1, ptr noundef %2, i8 noundef %3) unnamed_addr #0 !dbg !1624 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
    #dbg_value(ptr %0, !1628, !DIExpression(), !1633)
    #dbg_value(i64 %1, !1629, !DIExpression(), !1633)
    #dbg_value(ptr %2, !1630, !DIExpression(), !1633)
    #dbg_value(i8 %3, !1631, !DIExpression(), !1633)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !1634
  store ptr %0, ptr %i.a, align 8, !dbg !1634
  %i.b = call noundef i64 @_RNvNtCsG258MDvU3F_3std2rt19lang_start_internal(ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @4, i64 noundef %1, ptr noundef %2, i8 noundef %3), !dbg !1635
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !1636
  ret i64 %i.b, !dbg !1637
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche5frame5FrameECslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1638 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
    #dbg_value(ptr %0, !1779, !DIExpression(), !1781)
  %i.b = load i64, ptr %0, align 8, !dbg !1899, !range !1782, !noundef !453 ; 4 uses
  %i.c = icmp ne i64 %i.b, 4, !dbg !1899
  tail call void @llvm.assume(i1 %i.c), !dbg !1899
  %i.d = add nsw i64 %i.b, -2, !dbg !1899
  %.inv = icmp samesign ult i64 %i.b, 2, !dbg !1899
  %i.e = select i1 %.inv, i64 2, i64 %i.d, !dbg !1899
  switch i64 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche6ranges8RangeSetECslusEaBCZKLp_13quiche_client.exit [
    i64 2, label %bb.b
    i64 5, label %bb.h
    i64 7, label %bb.j
    i64 8, label %bb.m
    i64 18, label %bb.o
    i64 22, label %bb.r
    i64 23, label %bb.u
    i64 25, label %bb.x
  ], !dbg !1899

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche6ranges8RangeSetECslusEaBCZKLp_13quiche_client.exit: ; preds = %bb.n, %bb.m, %bb.i, %bb.h, %bb.g, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTyyEEECslusEaBCZKLp_13quiche_client.exit.i.i.i.i, %bb.c, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECslusEaBCZKLp_13quiche_client.exit9, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECslusEaBCZKLp_13quiche_client.exit7, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECslusEaBCZKLp_13quiche_client.exit5, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECslusEaBCZKLp_13quiche_client.exit3, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECslusEaBCZKLp_13quiche_client.exit, %bb.a
  ret void, !dbg !1899

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1783), !dbg !1899
    #dbg_value(ptr %0, !1785, !DIExpression(), !1643)
  %1 = trunc nuw i64 %i.b to i1, !dbg !1900
  br i1 %1, label %bb.g, label %bb.c, !dbg !1900

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1791), !dbg !1900
    #dbg_value(ptr %0, !1793, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !1648)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1799), !dbg !1901
    #dbg_value(ptr %0, !1800, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !1653)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1804), !dbg !1902
    #dbg_value(ptr %0, !924, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !1657)
    #dbg_value(ptr %0, !929, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !1659)
    #dbg_declare(ptr %i.a, !936, !DIExpression(), !1661)
    #dbg_declare(ptr poison, !950, !DIExpression(), !1664)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !1903
  %i.g = load i64, ptr %i.f, align 8, !dbg !1903, !alias.scope !1805, !noundef !453 ; 2 uses
  %i.h = icmp ugt i64 %i.g, 4, !dbg !1903
  br i1 %i.h, label %bb.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche6ranges8RangeSetECslusEaBCZKLp_13quiche_client.exit, !dbg !1904

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1900
    #dbg_value(ptr %i.i, !1793, !DIExpression(), !1648)
    #dbg_value(ptr %i.i, !1800, !DIExpression(), !1653)
    #dbg_value(ptr %i.i, !924, !DIExpression(), !1657)
    #dbg_value(ptr %i.i, !929, !DIExpression(), !1659)
    #dbg_value(ptr %i.i, !967, !DIExpression(), !1666)
    #dbg_value(ptr %i.i, !976, !DIExpression(), !1667)
  %i.j = load ptr, ptr %i.i, align 8, !dbg !1905, !alias.scope !1805, !nonnull !453, !noundef !453
    #dbg_value(ptr %i.j, !926, !DIExpression(), !1668)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !1906
  %i.l = load i64, ptr %i.k, align 8, !dbg !1907, !alias.scope !1805, !noundef !453
    #dbg_value(i64 %i.l, !927, !DIExpression(), !1668)
    #dbg_value(i64 %i.l, !963, !DIExpression(), !1669)
    #dbg_value(i64 %i.l, !956, !DIExpression(), !1670)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !1908, !noalias !1805
    #dbg_value(ptr %i.j, !962, !DIExpression(), !1669)
    #dbg_value(ptr %i.j, !955, !DIExpression(), !1670)
    #dbg_value(i64 %i.g, !964, !DIExpression(), !1669)
    #dbg_value(i64 %i.g, !957, !DIExpression(), !1670)
  store i64 %i.g, ptr %i.a, align 8, !dbg !1909, !noalias !1805
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !1909
  store ptr %i.j, ptr %i.m, align 8, !dbg !1909, !noalias !1805
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !1909
  store i64 %i.l, ptr %i.n, align 8, !dbg !1909, !noalias !1805
    #dbg_value(ptr %i.a, !979, !DIExpression(), !1672)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTyyEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTyyEEECslusEaBCZKLp_13quiche_client.exit.i.i.i.i unwind label %bb.e, !dbg !1910, !noalias !1805

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.a, !984, !DIExpression(), !1674)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTyyEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume unwind label %bb.f, !dbg !1911, !noalias !1805

bb.f:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !dbg !1910, !noalias !1805
  unreachable, !dbg !1910

common.resume:                                    ; preds = %bb.y, %bb.v, %bb.s, %bb.p, %bb.k, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.aj, %bb.v ], [ %i.o, %bb.e ], [ %i.w, %bb.k ], [ %i.ad, %bb.p ], [ %i.ag, %bb.s ], [ %i.am, %bb.y ]
  resume { ptr, i32 } %common.resume.op, !dbg !1899

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTyyEEECslusEaBCZKLp_13quiche_client.exit.i.i.i.i: ; preds = %bb.d
    #dbg_value(ptr %i.a, !984, !DIExpression(), !1676)
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTyyEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !dbg !1912, !noalias !1805
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !1913, !noalias !1805
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche6ranges8RangeSetECslusEaBCZKLp_13quiche_client.exit, !dbg !1914

bb.g:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1900
    #dbg_value(ptr %i.q, !1807, !DIExpression(), !1679)
    #dbg_value(ptr %i.q, !1814, !DIExpression(), !1682)
  tail call void @_RNvXNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB2_8BTreeMapyyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.q), !dbg !1915
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche6ranges8RangeSetECslusEaBCZKLp_13quiche_client.exit, !dbg !1900

bb.h:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1899 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1818), !dbg !1899
    #dbg_value(ptr %i.r, !1820, !DIExpression(), !1687)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1826), !dbg !1916
    #dbg_value(ptr %i.r, !1828, !DIExpression(), !1692)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1834), !dbg !1917
    #dbg_value(ptr %i.r, !1836, !DIExpression(), !1697)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1842), !dbg !1918
    #dbg_value(ptr %i.r, !1844, !DIExpression(), !1702)
    #dbg_value(ptr %i.r, !1847, !DIExpression(), !1706)
    #dbg_value(i64 1, !1857, !DIExpression(), !1709)
    #dbg_value(i8 1, !1863, !DIExpression(), !1709)
    #dbg_value(i64 1, !1865, !DIExpression(), !1712)
    #dbg_value(i8 1, !1870, !DIExpression(), !1712)
  %i.s = load ptr, ptr %i.r, align 8, !dbg !1919, !alias.scope !1873, !nonnull !453, !noundef !453
    #dbg_value(ptr %i.s, !1862, !DIExpression(), !1715)
    #dbg_value(ptr %i.s, !1869, !DIExpression(), !1712)
  %i.t = atomicrmw sub ptr %i.s, i64 1 release, align 8, !dbg !1920, !noalias !1873
  %i.u = icmp eq i64 %i.t, 1, !dbg !1921
  br i1 %i.u, label %bb.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche6ranges8RangeSetECslusEaBCZKLp_13quiche_client.exit, !dbg !1921

bb.i:                                             ; preds = %bb.h
    #dbg_value(i8 2, !1878, !DIExpression(), !1718)
  fence acquire, !dbg !1922
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcShE9drop_slowCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.r) #22, !dbg !1923
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche6ranges8RangeSetECslusEaBCZKLp_13quiche_client.exit, !dbg !1923

bb.j:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1899 ; 3 uses
    #dbg_value(ptr %i.v, !1883, !DIExpression(), !1721)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECslusEaBCZKLp_13quiche_client.exit unwind label %bb.k, !dbg !1924

bb.k:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.v, !1888, !DIExpression(), !1724)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %common.resume unwind label %bb.l, !dbg !1925

bb.l:                                             ; preds = %bb.k
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !dbg !1924
  unreachable, !dbg !1924

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECslusEaBCZKLp_13quiche_client.exit: ; preds = %bb.j
    #dbg_value(ptr %i.v, !1888, !DIExpression(), !1726)
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v), !dbg !1926
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche6ranges8RangeSetECslusEaBCZKLp_13quiche_client.exit, !dbg !1899

bb.m:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !1899 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1894), !dbg !1899
    #dbg_value(ptr %i.y, !1820, !DIExpression(), !1730)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1895), !dbg !1927
    #dbg_value(ptr %i.y, !1828, !DIExpression(), !1734)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1896), !dbg !1928
    #dbg_value(ptr %i.y, !1836, !DIExpression(), !1738)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1897), !dbg !1929
    #dbg_value(ptr %i.y, !1844, !DIExpression(), !1742)
    #dbg_value(ptr %i.y, !1847, !DIExpression(), !1744)
    #dbg_value(i64 1, !1857, !DIExpression(), !1746)
    #dbg_value(i8 1, !1863, !DIExpression(), !1746)
    #dbg_value(i64 1, !1865, !DIExpression(), !1748)
    #dbg_value(i8 1, !1870, !DIExpression(), !1748)
  %i.z = load ptr, ptr %i.y, align 8, !dbg !1930, !alias.scope !1898, !nonnull !453, !noundef !453
    #dbg_value(ptr %i.z, !1862, !DIExpression(), !1750)
    #dbg_value(ptr %i.z, !1869, !DIExpression(), !1748)
  %i.aa = atomicrmw sub ptr %i.z, i64 1 release, align 8, !dbg !1931, !noalias !1898
  %i.ab = icmp eq i64 %i.aa, 1, !dbg !1932
  br i1 %i.ab, label %bb.n, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche6ranges8RangeSetECslusEaBCZKLp_13quiche_client.exit, !dbg !1932

bb.n:                                             ; preds = %bb.m
    #dbg_value(i8 2, !1878, !DIExpression(), !1752)
  fence acquire, !dbg !1933
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcShE9drop_slowCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.y) #22, !dbg !1934
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche6ranges8RangeSetECslusEaBCZKLp_13quiche_client.exit, !dbg !1934

bb.o:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1899 ; 3 uses
    #dbg_value(ptr %i.ac, !1883, !DIExpression(), !1754)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECslusEaBCZKLp_13quiche_client.exit3 unwind label %bb.p, !dbg !1935

bb.p:                                             ; preds = %bb.o
  %i.ad = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.ac, !1888, !DIExpression(), !1756)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %common.resume unwind label %bb.q, !dbg !1936

bb.q:                                             ; preds = %bb.p
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !dbg !1935
  unreachable, !dbg !1935

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECslusEaBCZKLp_13quiche_client.exit3: ; preds = %bb.o
    #dbg_value(ptr %i.ac, !1888, !DIExpression(), !1758)
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac), !dbg !1937
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche6ranges8RangeSetECslusEaBCZKLp_13quiche_client.exit, !dbg !1899

bb.r:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1899 ; 3 uses
    #dbg_value(ptr %i.af, !1883, !DIExpression(), !1760)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECslusEaBCZKLp_13quiche_client.exit5 unwind label %bb.s, !dbg !1938

bb.s:                                             ; preds = %bb.r
  %i.ag = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.af, !1888, !DIExpression(), !1762)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %common.resume unwind label %bb.t, !dbg !1939

bb.t:                                             ; preds = %bb.s
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !dbg !1938
  unreachable, !dbg !1938

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECslusEaBCZKLp_13quiche_client.exit5: ; preds = %bb.r
    #dbg_value(ptr %i.af, !1888, !DIExpression(), !1764)
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af), !dbg !1940
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche6ranges8RangeSetECslusEaBCZKLp_13quiche_client.exit, !dbg !1899

bb.u:                                             ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1899 ; 3 uses
    #dbg_value(ptr %i.ai, !1883, !DIExpression(), !1766)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECslusEaBCZKLp_13quiche_client.exit7 unwind label %bb.v, !dbg !1941

bb.v:                                             ; preds = %bb.u
  %i.aj = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.ai, !1888, !DIExpression(), !1768)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %common.resume unwind label %bb.w, !dbg !1942

bb.w:                                             ; preds = %bb.v
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !dbg !1941
  unreachable, !dbg !1941

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECslusEaBCZKLp_13quiche_client.exit7: ; preds = %bb.u
    #dbg_value(ptr %i.ai, !1888, !DIExpression(), !1770)
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai), !dbg !1943
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche6ranges8RangeSetECslusEaBCZKLp_13quiche_client.exit, !dbg !1899

bb.x:                                             ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1899 ; 3 uses
    #dbg_value(ptr %i.al, !1883, !DIExpression(), !1772)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECslusEaBCZKLp_13quiche_client.exit9 unwind label %bb.y, !dbg !1944

bb.y:                                             ; preds = %bb.x
  %i.am = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.al, !1888, !DIExpression(), !1774)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %common.resume unwind label %bb.z, !dbg !1945

bb.z:                                             ; preds = %bb.y
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !dbg !1944
  unreachable, !dbg !1944

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECslusEaBCZKLp_13quiche_client.exit9: ; preds = %bb.x
    #dbg_value(ptr %i.al, !1888, !DIExpression(), !1776)
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.al), !dbg !1946
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche6ranges8RangeSetECslusEaBCZKLp_13quiche_client.exit, !dbg !1899
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECslusEaBCZKLp_13quiche_client(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i64 noundef range(i64 1, 0) %2) unnamed_addr #1 !dbg !1956 {
bb.a:
    #dbg_value(ptr poison, !2008, !DIExpression(), !2019)
    #dbg_value(ptr poison, !2031, !DIExpression(), !2034)
    #dbg_value(ptr poison, !2026, !DIExpression(), !2035)
    #dbg_value(ptr %0, !1995, !DIExpression(), !2036)
    #dbg_value(ptr %0, !2037, !DIExpression(), !2045)
    #dbg_value(ptr %1, !1996, !DIExpression(), !2036)
    #dbg_value(ptr %1, !2037, !DIExpression(), !2047)
    #dbg_value(i64 %2, !1997, !DIExpression(), !2036)
    #dbg_value(i64 1, !2048, !DIExpression(), !2055)
    #dbg_value(i64 1, !2056, !DIExpression(), !2062)
    #dbg_value(i64 %2, !1998, !DIExpression(), !2063)
    #dbg_value(i64 0, !1999, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2064)
    #dbg_value(i64 %2, !1999, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2064)
    #dbg_value(ptr undef, !2026, !DIExpression(), !2035)
    #dbg_value(ptr undef, !2031, !DIExpression(), !2034)
    #dbg_value(ptr undef, !2008, !DIExpression(), !2019)
    #dbg_value(ptr undef, !2013, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !2065)
  %min.iters.check = icmp ult i64 %2, 8, !dbg !2018
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck, !dbg !2018

vector.memcheck:                                  ; preds = %bb.a
  %i.a = shl i64 %2, 3, !dbg !2018                ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 %i.a, !dbg !2018
  %i.c = getelementptr i8, ptr %1, i64 %i.a, !dbg !2018
  %bound0 = icmp ult ptr %0, %i.c, !dbg !2018
  %bound1 = icmp ult ptr %1, %i.b, !dbg !2018
  %found.conflict = and i1 %bound0, %bound1, !dbg !2018
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph, !dbg !2082

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %2, -4                         ; 3 uses
  br label %vector.body, !dbg !2082

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !2082 ; 3 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index, !dbg !2083 ; 3 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index, !dbg !2084 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2066), !dbg !2085
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2067), !dbg !2085
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !2086 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.d, align 1, !dbg !2086, !alias.scope !2074, !noalias !2075
  %wide.load14 = load <2 x i64>, ptr %i.f, align 1, !dbg !2086, !alias.scope !2074, !noalias !2075
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !2087 ; 2 uses
  %wide.load15 = load <2 x i64>, ptr %i.e, align 1, !dbg !2087, !alias.scope !2075, !noalias !2066
  %wide.load16 = load <2 x i64>, ptr %i.g, align 1, !dbg !2087, !alias.scope !2075, !noalias !2066
  store <2 x i64> %wide.load15, ptr %i.d, align 1, !dbg !2088, !alias.scope !2074, !noalias !2075
  store <2 x i64> %wide.load16, ptr %i.f, align 1, !dbg !2088, !alias.scope !2074, !noalias !2075
  store <2 x i64> %wide.load, ptr %i.e, align 1, !dbg !2089, !alias.scope !2075, !noalias !2066
  store <2 x i64> %wide.load14, ptr %i.g, align 1, !dbg !2089, !alias.scope !2075, !noalias !2066
  %index.next = add nuw i64 %index, 4, !dbg !2082 ; 2 uses
  %i.h = icmp eq i64 %index.next, %n.vec, !dbg !2018
  br i1 %i.h, label %middle.block, label %vector.body, !dbg !2018, !llvm.loop !1972

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec, !dbg !2018
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader, !dbg !2018

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %.sroa.0.012.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.sroa.0.012.ph, 1, !dbg !2018
  %lcmp.mod.not = trunc i64 %2 to i1, !dbg !2018
  br i1 %lcmp.mod.not, label %scalar.ph.prol, label %scalar.ph.prol.loopexit, !dbg !2018

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
    #dbg_value(i64 poison, !2032, !DIExpression(), !2078)
    #dbg_value(i64 poison, !2052, !DIExpression(), !2055)
    #dbg_value(i64 poison, !2059, !DIExpression(), !2062)
  %i.i = or disjoint i64 %.sroa.0.012.ph, 1, !dbg !2082
    #dbg_value(i64 %i.i, !1999, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2064)
    #dbg_value(i64 poison, !2000, !DIExpression(), !2079)
    #dbg_value(i64 poison, !2040, !DIExpression(), !2045)
    #dbg_value(i64 poison, !2040, !DIExpression(), !2047)
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.012.ph, !dbg !2083 ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.0.012.ph, !dbg !2084 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2066), !dbg !2085
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2067), !dbg !2085
    #dbg_value(ptr %i.j, !2071, !DIExpression(), !1973)
    #dbg_value(ptr %i.k, !2072, !DIExpression(), !1973)
  %.sroa.0.0.copyload.i.prol = load i64, ptr %i.j, align 1, !dbg !2086, !alias.scope !2066, !noalias !2067
  %.sroa.02.0.copyload.i.prol = load i64, ptr %i.k, align 1, !dbg !2087, !alias.scope !2067, !noalias !2066
  store i64 %.sroa.02.0.copyload.i.prol, ptr %i.j, align 1, !dbg !2088, !alias.scope !2066, !noalias !2067
  store i64 %.sroa.0.0.copyload.i.prol, ptr %i.k, align 1, !dbg !2089, !alias.scope !2067, !noalias !2066
    #dbg_value(ptr undef, !2026, !DIExpression(), !2035)
    #dbg_value(ptr undef, !2031, !DIExpression(), !2034)
    #dbg_value(ptr undef, !2008, !DIExpression(), !2019)
    #dbg_value(ptr undef, !2013, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !2065)
  br label %scalar.ph.prol.loopexit, !dbg !2018

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.0.012.unr = phi i64 [ %.sroa.0.012.ph, %scalar.ph.preheader ], [ %i.i, %scalar.ph.prol ]
  %i.l = icmp eq i64 %2, %.neg, !dbg !2018
  br i1 %i.l, label %.loopexit, label %scalar.ph, !dbg !2018

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  ret void, !dbg !2090

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.sroa.0.012 = phi i64 [ %i.p, %scalar.ph ], [ %.sroa.0.012.unr, %scalar.ph.prol.loopexit ] ; 4 uses
    #dbg_value(i64 %.sroa.0.012, !2032, !DIExpression(), !2078)
    #dbg_value(i64 %.sroa.0.012, !2052, !DIExpression(), !2055)
    #dbg_value(i64 %.sroa.0.012, !2059, !DIExpression(), !2062)
  %i.m = add nuw i64 %.sroa.0.012, 1, !dbg !2082  ; 2 uses
    #dbg_value(i64 %i.m, !1999, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2064)
    #dbg_value(i64 %.sroa.0.012, !2000, !DIExpression(), !2079)
    #dbg_value(i64 %.sroa.0.012, !2040, !DIExpression(), !2045)
    #dbg_value(i64 %.sroa.0.012, !2040, !DIExpression(), !2047)
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.012, !dbg !2083 ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.0.012, !dbg !2084 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2066), !dbg !2085
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2067), !dbg !2085
    #dbg_value(ptr %i.n, !2071, !DIExpression(), !1973)
    #dbg_value(ptr %i.o, !2072, !DIExpression(), !1973)
  %.sroa.0.0.copyload.i = load i64, ptr %i.n, align 1, !dbg !2086, !alias.scope !2066, !noalias !2067
  %.sroa.02.0.copyload.i = load i64, ptr %i.o, align 1, !dbg !2087, !alias.scope !2067, !noalias !2066
  store i64 %.sroa.02.0.copyload.i, ptr %i.n, align 1, !dbg !2088, !alias.scope !2066, !noalias !2067
  store i64 %.sroa.0.0.copyload.i, ptr %i.o, align 1, !dbg !2089, !alias.scope !2067, !noalias !2066
    #dbg_value(ptr undef, !2026, !DIExpression(), !2035)
    #dbg_value(ptr undef, !2031, !DIExpression(), !2034)
    #dbg_value(ptr undef, !2008, !DIExpression(), !2019)
    #dbg_value(ptr undef, !2013, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !2065)
    #dbg_value(i64 %i.m, !2032, !DIExpression(), !2078)
    #dbg_value(i64 %i.m, !2052, !DIExpression(), !2055)
    #dbg_value(i64 %i.m, !2059, !DIExpression(), !2062)
  %i.p = add nuw i64 %.sroa.0.012, 2, !dbg !2082  ; 2 uses
    #dbg_value(i64 %i.p, !1999, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2064)
    #dbg_value(i64 %i.m, !2000, !DIExpression(), !2079)
    #dbg_value(i64 %i.m, !2040, !DIExpression(), !2045)
    #dbg_value(i64 %i.m, !2040, !DIExpression(), !2047)
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.m, !dbg !2083 ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.m, !dbg !2084 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2080), !dbg !2085
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2081), !dbg !2085
    #dbg_value(ptr %i.q, !2071, !DIExpression(), !1973)
    #dbg_value(ptr %i.r, !2072, !DIExpression(), !1973)
  %.sroa.0.0.copyload.i.1 = load i64, ptr %i.q, align 1, !dbg !2086, !alias.scope !2080, !noalias !2081
  %.sroa.02.0.copyload.i.1 = load i64, ptr %i.r, align 1, !dbg !2087, !alias.scope !2081, !noalias !2080
  store i64 %.sroa.02.0.copyload.i.1, ptr %i.q, align 1, !dbg !2088, !alias.scope !2080, !noalias !2081
  store i64 %.sroa.0.0.copyload.i.1, ptr %i.r, align 1, !dbg !2089, !alias.scope !2081, !noalias !2080
  %exitcond.not.1 = icmp eq i64 %i.p, %2, !dbg !2091
  br i1 %exitcond.not.1, label %.loopexit, label %scalar.ph, !dbg !2018, !llvm.loop !1976
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXst_Cs5kGgRUzsVpH_8smallvecINtB6_8SmallVecANtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrj8_EINtNtNtNtBP_4iter6traits7collect6ExtendBJ_E6extendINtNtNtB1M_8adapters3map3MapINtNtB2y_6filter6FilterIB2W_IB2W_INtCs9Srk37lQfcB_4slab4IterNtNtCs3f36owOmepS_6quiche4path4PathENCNvMs1_B3X_NtB3X_10Connection10paths_iter0ENCB4v_s_0ENCB4v_s0_0ENCB4v_s1_0EECslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef align 8 captures(none) dereferenceable(264) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2271 {
_RINvCs5kGgRUzsVpH_8smallvec10infallibleuECslusEaBCZKLp_13quiche_client.exit:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.455 = alloca [30 x i8], align 2          ; 4 uses
    #dbg_declare(ptr %.sroa.455, !3469, !DIExpression(DW_OP_LLVM_fragment, 16, 240), !2278)
    #dbg_declare(ptr %.sroa.455, !3478, !DIExpression(DW_OP_LLVM_fragment, 16, 240), !2279)
    #dbg_declare(ptr %.sroa.455, !3464, !DIExpression(DW_OP_LLVM_fragment, 16, 240), !3485)
  %i.e = alloca [40 x i8], align 8                ; 7 uses
  %.sroa.449 = alloca [30 x i8], align 2          ; 4 uses
    #dbg_declare(ptr %.sroa.449, !3486, !DIExpression(DW_OP_LLVM_fragment, 16, 240), !3490)
    #dbg_declare(ptr %.sroa.449, !3462, !DIExpression(DW_OP_LLVM_fragment, 16, 240), !3491)
    #dbg_value(ptr poison, !3492, !DIExpression(), !3496)
  %i.f = alloca [40 x i8], align 8                ; 7 uses
    #dbg_value(ptr %0, !3453, !DIExpression(), !3497)
    #dbg_value(ptr %0, !3498, !DIExpression(), !3505)
    #dbg_declare(ptr %1, !3454, !DIExpression(), !3506)
    #dbg_declare(ptr %i.f, !3455, !DIExpression(), !3507)
    #dbg_declare(ptr %i.e, !3463, !DIExpression(), !3508)
    #dbg_value(i64 1, !3493, !DIExpression(), !3509)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !3858
    #dbg_declare(ptr %1, !3510, !DIExpression(), !2285)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(40) %1, i64 40, i1 false), !dbg !3859, !alias.scope !3515
    #dbg_value(i64 0, !3456, !DIExpression(), !3516)
    #dbg_value(i64 0, !3502, !DIExpression(), !3505)
    #dbg_value(ptr %0, !3517, !DIExpression(), !2295)
    #dbg_value(i64 0, !3519, !DIExpression(), !2295)
    #dbg_value(ptr %0, !1202, !DIExpression(), !2297)
    #dbg_value(ptr %0, !1213, !DIExpression(), !2299)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 256, !dbg !3860 ; 4 uses
  %i.h = load i64, ptr %i.g, align 8, !dbg !3860, !alias.scope !3526, !noalias !3527, !noundef !453 ; 2 uses
  %i.i = icmp ugt i64 %i.h, 8, !dbg !3860         ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3861 ; 4 uses
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 8), !dbg !3861 ; 3 uses
    #dbg_value(ptr %0, !1202, !DIExpression(), !2306)
    #dbg_value(ptr %0, !1213, !DIExpression(), !2308)
  %i.k = load ptr, ptr %0, align 8, !dbg !3862, !alias.scope !3528, !noalias !3529, !nonnull !453
  %.sink17.i = select i1 %i.i, ptr %i.k, ptr %0, !dbg !3862
  %.sink16.i = select i1 %i.i, ptr %i.j, ptr %i.g, !dbg !3862 ; 4 uses
    #dbg_value(ptr %.sink17.i, !3457, !DIExpression(), !3530)
    #dbg_value(ptr %.sink16.i, !3458, !DIExpression(), !3530)
    #dbg_value(ptr %.sink16.i, !3531, !DIExpression(), !3534)
    #dbg_value(i64 %.sink.i.i, !3459, !DIExpression(), !3530)
    #dbg_value(ptr %.sink17.i, !3460, !DIExpression(), !3535)
    #dbg_value(ptr %.sink17.i, !3536, !DIExpression(), !3542)
  %i.l = load i64, ptr %.sink16.i, align 8, !dbg !3863, !noundef !453 ; 3 uses
    #dbg_value(ptr %.sink16.i, !3461, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3543)
    #dbg_value(i64 %i.l, !3461, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3543)
  %i.m = icmp ult i64 %i.l, %.sink.i.i, !dbg !3864
  br i1 %i.m, label %.lr.ph, label %._crit_edge, !dbg !3864

.lr.ph:                                           ; preds = %_RINvCs5kGgRUzsVpH_8smallvec10infallibleuECslusEaBCZKLp_13quiche_client.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %bb.a, !dbg !3864

._crit_edge:                                      ; preds = %bb.i, %_RINvCs5kGgRUzsVpH_8smallvec10infallibleuECslusEaBCZKLp_13quiche_client.exit
  %.sroa.7.0.lcssa = phi i64 [ %i.l, %_RINvCs5kGgRUzsVpH_8smallvec10infallibleuECslusEaBCZKLp_13quiche_client.exit ], [ %.sink.i.i, %bb.i ], !dbg !3535
    #dbg_value(ptr poison, !1222, !DIExpression(), !2315)
    #dbg_value(ptr poison, !1228, !DIExpression(), !2317)
  store i64 %.sroa.7.0.lcssa, ptr %.sink16.i, align 8, !dbg !3865
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !3866
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(40) %i.f, i64 40, i1 false), !dbg !3866
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !3867, !noalias !3544
  store ptr %i.r, ptr %i.b, align 8, !dbg !3868, !noalias !3544
  store ptr %i.r, ptr %i.s, align 8, !dbg !3868, !noalias !3544
  store ptr %i.r, ptr %i.t, align 8, !dbg !3868, !noalias !3544
  %i.u = call { i64, ptr } @_RNvXsk_Cs9Srk37lQfcB_4slabINtB5_4IterNtNtCs3f36owOmepS_6quiche4path4PathENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.e), !dbg !3869, !noalias !3645 ; 2 uses
  %i.v = extractvalue { i64, ptr } %i.u, 1, !dbg !3869 ; 2 uses
  %.not22.i.i.i.i.i.i2077 = icmp eq ptr %i.v, null, !dbg !3870
  br i1 %.not22.i.i.i.i.i.i2077, label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterIBX_IBX_INtCs9Srk37lQfcB_4slab4IterNtNtCs3f36owOmepS_6quiche4path4PathENCNvMs1_B1V_NtB1V_10Connection10paths_iter0ENCB2t_s_0ENCB2t_s0_0ENCB2t_s1_0ENtNtNtB9_6traits8iterator8Iterator4nextCslusEaBCZKLp_13quiche_client.exit35.thread, label %.lr.ph.i.i.i.i.i.i21.lr.ph, !dbg !3871

.lr.ph.i.i.i.i.i.i21.lr.ph:                       ; preds = %._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %.lr.ph.i.i.i.i.i.i21, !dbg !3871

bb.a:                                             ; preds = %.lr.ph, %bb.i
  %.sroa.7.076 = phi i64 [ %i.l, %.lr.ph ], [ %i.bw, %bb.i ] ; 4 uses
    #dbg_value(i64 %.sroa.7.076, !3461, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3543)
    #dbg_value(ptr %i.f, !3629, !DIExpression(), !2374)
    #dbg_value(ptr %i.f, !3615, !DIExpression(), !2376)
    #dbg_value(ptr %i.f, !3606, !DIExpression(), !2378)
    #dbg_value(ptr %i.n, !3607, !DIExpression(), !2378)
    #dbg_value(ptr %i.f, !3589, !DIExpression(), !2380)
    #dbg_declare(ptr poison, !3590, !DIExpression(), !2381)
    #dbg_value(ptr %i.n, !3591, !DIExpression(), !2380)
    #dbg_value(ptr %i.f, !3578, !DIExpression(), !2383)
    #dbg_declare(ptr poison, !3579, !DIExpression(), !2384)
    #dbg_value(ptr %i.n, !3580, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2383)
    #dbg_value(ptr %i.n, !3640, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2386)
    #dbg_value(ptr %i.n, !3580, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2383)
    #dbg_value(ptr %i.n, !3640, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2386)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !3872, !noalias !3671
    #dbg_value(ptr %i.n, !3639, !DIExpression(), !2386)
  store ptr %i.n, ptr %i.d, align 8, !dbg !3873, !noalias !3671
  store ptr %i.n, ptr %i.o, align 8, !dbg !3873, !noalias !3671
  store ptr %i.n, ptr %i.p, align 8, !dbg !3873, !noalias !3671
    #dbg_value(ptr %i.f, !3649, !DIExpression(), !2403)
    #dbg_declare(ptr poison, !3650, !DIExpression(), !2404)
    #dbg_declare(ptr %i.d, !3651, !DIExpression(), !2405)
    #dbg_declare(ptr poison, !3652, !DIExpression(), !2406)
  %i.x = invoke { i64, ptr } @_RNvXsk_Cs9Srk37lQfcB_4slabINtB5_4IterNtNtCs3f36owOmepS_6quiche4path4PathENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.f)
          to label %.noexc unwind label %.loopexit.split-lp, !dbg !3874 ; 2 uses

.noexc:                                           ; preds = %bb.a
  %i.y = extractvalue { i64, ptr } %i.x, 1, !dbg !3874 ; 2 uses
  %.not22.i.i.i.i.i.i = icmp eq ptr %i.y, null, !dbg !3875
  br i1 %.not22.i.i.i.i.i.i, label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterIBX_IBX_INtCs9Srk37lQfcB_4slab4IterNtNtCs3f36owOmepS_6quiche4path4PathENCNvMs1_B1V_NtB1V_10Connection10paths_iter0ENCB2t_s_0ENCB2t_s0_0ENCB2t_s1_0ENtNtNtB9_6traits8iterator8Iterator4nextCslusEaBCZKLp_13quiche_client.exit.thread, label %.lr.ph.i.i.i.i.i.i, !dbg !3876

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc, %.noexc19
  %i.z = phi ptr [ %i.ap, %.noexc19 ], [ %i.y, %.noexc ] ; 8 uses
  %i.aa = phi { i64, ptr } [ %i.ao, %.noexc19 ], [ %i.x, %.noexc ]
  %i.ab = extractvalue { i64, ptr } %i.aa, 0, !dbg !3874
    #dbg_value(i64 %i.ab, !3653, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2407)
    #dbg_value(ptr %i.z, !3653, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2407)
  call void @llvm.experimental.noalias.scope.decl(metadata !3672), !dbg !3877
    #dbg_value(i64 %i.ab, !3673, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2412)
    #dbg_value(ptr %i.z, !3673, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2412)
    #dbg_value(ptr %i.d, !3678, !DIExpression(DW_OP_deref), !2412)
    #dbg_value(ptr poison, !3679, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_LLVM_fragment, 0, 64), !2412)
    #dbg_declare(ptr poison, !3677, !DIExpression(), !2413)
    #dbg_value(ptr poison, !3683, !DIExpression(), !2417)
    #dbg_value(ptr poison, !3689, !DIExpression(), !2417)
    #dbg_value(ptr poison, !3688, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !2418)
    #dbg_value(ptr %i.z, !3693, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !2421)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 16, !dbg !3878
  %i.ad = load i64, ptr %i.ac, align 8, !dbg !3878, !range !1235, !alias.scope !3672, !noalias !3698, !noundef !453
  %2 = trunc nuw i64 %i.ad to i1, !dbg !3879
  br i1 %2, label %bb.b, label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter15filter_try_foldTjRNtNtCs3f36owOmepS_6quiche4path4PathEuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs1_B1c_NtB1c_10Connection10paths_iter0NCIB2_B15_uB1J_NCB2v_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB2v_s0_0E0E0E0CslusEaBCZKLp_13quiche_client.exit.i.i.i.i.i.i, !dbg !3880

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !3700), !dbg !3881
    #dbg_value(i64 %i.ab, !3701, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2427)
    #dbg_value(ptr %i.z, !3701, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2427)
    #dbg_value(ptr %i.d, !3706, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_deref, DW_OP_stack_value), !2427)
    #dbg_value(ptr poison, !3707, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8), !2427)
    #dbg_declare(ptr poison, !3705, !DIExpression(), !2428)
    #dbg_value(ptr poison, !3714, !DIExpression(), !2432)
    #dbg_value(ptr poison, !3718, !DIExpression(), !2432)
    #dbg_value(ptr poison, !3721, !DIExpression(), !2441)
    #dbg_declare(ptr poison, !3745, !DIExpression(), !2449)
    #dbg_value(ptr poison, !3763, !DIExpression(), !2454)
    #dbg_value(i64 4, !3767, !DIExpression(), !2455)
    #dbg_value(ptr poison, !3717, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !2456)
    #dbg_value(ptr %i.z, !3740, !DIExpression(), !2457)
    #dbg_value(ptr %i.z, !3737, !DIExpression(), !2458)
    #dbg_value(ptr %i.z, !3734, !DIExpression(), !2459)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 2784, !dbg !3882
  %i.af = load i8, ptr %i.ae, align 8, !dbg !3882, !range !3769, !alias.scope !3770, !noalias !3771, !noundef !453
  %i.ag = trunc nuw i8 %i.af to i1, !dbg !3882
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 2791
  %i.ai = load i8, ptr %i.ah, align 1, !dbg !3883, !range !3772, !alias.scope !3770, !noalias !3771 ; 2 uses
    #dbg_value(ptr %i.z, !3773, !DIExpression(), !2463)
    #dbg_value(ptr %i.z, !3776, !DIExpression(), !2466)
  %.old.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 2584
  %.old6.i.i.i.i.i.i.i.i = load i64, ptr %.old.i.i.i.i.i.i.i.i, align 8, !alias.scope !3672, !noalias !3698 ; 2 uses
  br i1 %i.ag, label %bb.c, label %._crit_edge.i.i.i.i.i.i.i.i.i, !dbg !3882

bb.c:                                             ; preds = %bb.b
    #dbg_value(ptr %i.z, !3725, !DIExpression(DW_OP_plus_uconst, 2791, DW_OP_stack_value), !2467)
    #dbg_value(i8 poison, !3761, !DIExpression(), !2468)
    #dbg_value(i8 poison, !3780, !DIExpression(), !2474)
    #dbg_value(i8 poison, !3760, !DIExpression(), !2475)
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ai, 0, !dbg !3884
  %.old8.i.i.i.i.i.i.i.i = icmp eq i64 %.old6.i.i.i.i.i.i.i.i, 0
  %or.cond.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i, i1 %.old8.i.i.i.i.i.i.i.i, i1 false, !dbg !3885
  br i1 %or.cond.i.i.i.i.i.i.i, label %_RNCNvMs1_Cs3f36owOmepS_6quicheNtB7_10Connection10paths_iters_0CslusEaBCZKLp_13quiche_client.exit.i.i.i.i.i.i.i.i, label %_RNCNvMs1_Cs3f36owOmepS_6quicheNtB7_10Connection10paths_iters_0CslusEaBCZKLp_13quiche_client.exit.thread.i.i.i.i.i.i.i.i, !dbg !3885

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.b
    #dbg_value(ptr %i.z, !3765, !DIExpression(DW_OP_plus_uconst, 2791, DW_OP_stack_value), !2476)
    #dbg_value(i8 %i.ai, !3766, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !2477)
  %3 = icmp eq i8 %i.ai, 4, !dbg !3886
  %i.aj = icmp ne i64 %.old6.i.i.i.i.i.i.i.i, 0
  %or.cond8.i.i.i.i.i.i.i.i = select i1 %3, i1 true, i1 %i.aj, !dbg !3887
  br i1 %or.cond8.i.i.i.i.i.i.i.i, label %_RNCNvMs1_Cs3f36owOmepS_6quicheNtB7_10Connection10paths_iters_0CslusEaBCZKLp_13quiche_client.exit.thread.i.i.i.i.i.i.i.i, label %_RNCNvMs1_Cs3f36owOmepS_6quicheNtB7_10Connection10paths_iters_0CslusEaBCZKLp_13quiche_client.exit.i.i.i.i.i.i.i.i, !dbg !3887

_RNCNvMs1_Cs3f36owOmepS_6quicheNtB7_10Connection10paths_iters_0CslusEaBCZKLp_13quiche_client.exit.i.i.i.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i, %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 2787, !dbg !3888
  %i.al = load i8, ptr %i.ak, align 1, !dbg !3888, !range !3769, !alias.scope !3770, !noalias !3771, !noundef !453
  %i.am = trunc nuw i8 %i.al to i1, !dbg !3889
  br i1 %i.am, label %_RNCNvMs1_Cs3f36owOmepS_6quicheNtB7_10Connection10paths_iters_0CslusEaBCZKLp_13quiche_client.exit.thread.i.i.i.i.i.i.i.i, label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter15filter_try_foldTjRNtNtCs3f36owOmepS_6quiche4path4PathEuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs1_B1c_NtB1c_10Connection10paths_iter0NCIB2_B15_uB1J_NCB2v_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB2v_s0_0E0E0E0CslusEaBCZKLp_13quiche_client.exit.i.i.i.i.i.i, !dbg !3890

_RNCNvMs1_Cs3f36owOmepS_6quicheNtB7_10Connection10paths_iters_0CslusEaBCZKLp_13quiche_client.exit.thread.i.i.i.i.i.i.i.i: ; preds = %_RNCNvMs1_Cs3f36owOmepS_6quicheNtB7_10Connection10paths_iters_0CslusEaBCZKLp_13quiche_client.exit.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3791
  store i64 %i.ab, ptr %i.c, align 8, !noalias !3792
  store ptr %i.z, ptr %i.q, align 8, !noalias !3792
    #dbg_value(ptr %i.p, !3793, !DIExpression(DW_OP_deref), !2486)
    #dbg_declare(ptr poison, !3798, !DIExpression(), !2487)
    #dbg_declare(ptr %i.c, !3797, !DIExpression(), !2488)
  %i.an = invoke noundef zeroext i1 @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvMs1_Cs3f36owOmepS_6quicheNtBW_10Connection10paths_iters0_0INtB7_5FnMutTRTjRNtNtBW_4path4PathEEE8call_mutCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c)
          to label %.noexc18 unwind label %.loopexit61, !dbg !3891

.noexc18:                                         ; preds = %_RNCNvMs1_Cs3f36owOmepS_6quicheNtB7_10Connection10paths_iters_0CslusEaBCZKLp_13quiche_client.exit.thread.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !3892, !noalias !3791
  br i1 %i.an, label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterIBX_IBX_INtCs9Srk37lQfcB_4slab4IterNtNtCs3f36owOmepS_6quiche4path4PathENCNvMs1_B1V_NtB1V_10Connection10paths_iter0ENCB2t_s_0ENCB2t_s0_0ENCB2t_s1_0ENtNtNtB9_6traits8iterator8Iterator4nextCslusEaBCZKLp_13quiche_client.exit, label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter15filter_try_foldTjRNtNtCs3f36owOmepS_6quiche4path4PathEuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs1_B1c_NtB1c_10Connection10paths_iter0NCIB2_B15_uB1J_NCB2v_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB2v_s0_0E0E0E0CslusEaBCZKLp_13quiche_client.exit.i.i.i.i.i.i, !dbg !3893

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter15filter_try_foldTjRNtNtCs3f36owOmepS_6quiche4path4PathEuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs1_B1c_NtB1c_10Connection10paths_iter0NCIB2_B15_uB1J_NCB2v_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB2v_s0_0E0E0E0CslusEaBCZKLp_13quiche_client.exit.i.i.i.i.i.i: ; preds = %.noexc18, %_RNCNvMs1_Cs3f36owOmepS_6quicheNtB7_10Connection10paths_iters_0CslusEaBCZKLp_13quiche_client.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.ao = invoke { i64, ptr } @_RNvXsk_Cs9Srk37lQfcB_4slabINtB5_4IterNtNtCs3f36owOmepS_6quiche4path4PathENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.f)
          to label %.noexc19 unwind label %.loopexit61, !dbg !3874 ; 2 uses

.noexc19:                                         ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter15filter_try_foldTjRNtNtCs3f36owOmepS_6quiche4path4PathEuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs1_B1c_NtB1c_10Connection10paths_iter0NCIB2_B15_uB1J_NCB2v_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB2v_s0_0E0E0E0CslusEaBCZKLp_13quiche_client.exit.i.i.i.i.i.i
  %i.ap = extractvalue { i64, ptr } %i.ao, 1, !dbg !3874 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ap, null, !dbg !3875
  br i1 %.not.i.i.i.i.i.i, label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterIBX_IBX_INtCs9Srk37lQfcB_4slab4IterNtNtCs3f36owOmepS_6quiche4path4PathENCNvMs1_B1V_NtB1V_10Connection10paths_iter0ENCB2t_s_0ENCB2t_s0_0ENCB2t_s1_0ENtNtNtB9_6traits8iterator8Iterator4nextCslusEaBCZKLp_13quiche_client.exit.thread, label %.lr.ph.i.i.i.i.i.i, !dbg !3876

_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterIBX_IBX_INtCs9Srk37lQfcB_4slab4IterNtNtCs3f36owOmepS_6quiche4path4PathENCNvMs1_B1V_NtB1V_10Connection10paths_iter0ENCB2t_s_0ENCB2t_s0_0ENCB2t_s1_0ENtNtNtB9_6traits8iterator8Iterator4nextCslusEaBCZKLp_13quiche_client.exit.thread: ; preds = %.noexc, %.noexc19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !3894, !noalias !3671
    #dbg_value(i64 poison, !3802, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2492)
    #dbg_value(ptr null, !3802, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2492)
    #dbg_value(ptr %i.f, !3809, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !2492)
    #dbg_value(ptr %i.f, !3813, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !2496)
  br label %.loopexit63, !dbg !3895

.lr.ph.i.i.i.i.i.i21:                             ; preds = %.lr.ph.i.i.i.i.i.i21.backedge, %.lr.ph.i.i.i.i.i.i21.lr.ph
  %i.aq = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i.i21.lr.ph ], [ %.be, %.lr.ph.i.i.i.i.i.i21.backedge ] ; 8 uses
  %i.ar = phi { i64, ptr } [ %i.u, %.lr.ph.i.i.i.i.i.i21.lr.ph ], [ %.be128, %.lr.ph.i.i.i.i.i.i21.backedge ]
  %i.as = extractvalue { i64, ptr } %i.ar, 0, !dbg !3869
    #dbg_value(i64 %i.as, !3653, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2497)
    #dbg_value(ptr %i.aq, !3653, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2497)
  call void @llvm.experimental.noalias.scope.decl(metadata !3824), !dbg !3896
    #dbg_value(i64 %i.as, !3673, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2501)
    #dbg_value(ptr %i.aq, !3673, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2501)
    #dbg_value(ptr %i.b, !3678, !DIExpression(DW_OP_deref), !2501)
    #dbg_value(ptr poison, !3679, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_LLVM_fragment, 0, 64), !2501)
    #dbg_declare(ptr poison, !3677, !DIExpression(), !2502)
    #dbg_value(ptr poison, !3683, !DIExpression(), !2504)
    #dbg_value(ptr poison, !3689, !DIExpression(), !2504)
    #dbg_value(ptr poison, !3688, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !2505)
    #dbg_value(ptr %i.aq, !3693, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !2507)
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 16, !dbg !3897
  %i.au = load i64, ptr %i.at, align 8, !dbg !3897, !range !1235, !alias.scope !3824, !noalias !3825, !noundef !453
  %4 = trunc nuw i64 %i.au to i1, !dbg !3898
  br i1 %4, label %bb.d, label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter15filter_try_foldTjRNtNtCs3f36owOmepS_6quiche4path4PathEuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs1_B1c_NtB1c_10Connection10paths_iter0NCIB2_B15_uB1J_NCB2v_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB2v_s0_0E0E0E0CslusEaBCZKLp_13quiche_client.exit.i.i.i.i.i.i29, !dbg !3899

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.i21
  call void @llvm.experimental.noalias.scope.decl(metadata !3826), !dbg !3900
    #dbg_value(i64 %i.as, !3701, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2512)
    #dbg_value(ptr %i.aq, !3701, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2512)
    #dbg_value(ptr %i.b, !3706, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_deref, DW_OP_stack_value), !2512)
    #dbg_value(ptr poison, !3707, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8), !2512)
    #dbg_declare(ptr poison, !3705, !DIExpression(), !2513)
    #dbg_value(ptr poison, !3714, !DIExpression(), !2515)
    #dbg_value(ptr poison, !3718, !DIExpression(), !2515)
    #dbg_value(ptr poison, !3721, !DIExpression(), !2520)
    #dbg_declare(ptr poison, !3745, !DIExpression(), !2522)
    #dbg_value(ptr poison, !3763, !DIExpression(), !2524)
    #dbg_value(i64 4, !3767, !DIExpression(), !2525)
    #dbg_value(ptr poison, !3717, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !2526)
    #dbg_value(ptr %i.aq, !3740, !DIExpression(), !2527)
    #dbg_value(ptr %i.aq, !3737, !DIExpression(), !2528)
    #dbg_value(ptr %i.aq, !3734, !DIExpression(), !2529)
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 2784, !dbg !3901
  %i.aw = load i8, ptr %i.av, align 8, !dbg !3901, !range !3769, !alias.scope !3827, !noalias !3828, !noundef !453
  %i.ax = trunc nuw i8 %i.aw to i1, !dbg !3901
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aq, i64 2791
  %i.az = load i8, ptr %i.ay, align 1, !dbg !3902, !range !3772, !alias.scope !3827, !noalias !3828 ; 2 uses
    #dbg_value(ptr %i.aq, !3773, !DIExpression(), !2532)
    #dbg_value(ptr %i.aq, !3776, !DIExpression(), !2534)
  %.old.i.i.i.i.i.i.i.i23 = getelementptr inbounds nuw i8, ptr %i.aq, i64 2584
  %.old6.i.i.i.i.i.i.i.i24 = load i64, ptr %.old.i.i.i.i.i.i.i.i23, align 8, !alias.scope !3824, !noalias !3825 ; 2 uses
  br i1 %i.ax, label %bb.e, label %._crit_edge.i.i.i.i.i.i.i.i.i26, !dbg !3901

bb.e:                                             ; preds = %bb.d
    #dbg_value(ptr %i.aq, !3725, !DIExpression(DW_OP_plus_uconst, 2791, DW_OP_stack_value), !2535)
    #dbg_value(i8 poison, !3761, !DIExpression(), !2536)
    #dbg_value(i8 poison, !3780, !DIExpression(), !2539)
    #dbg_value(i8 poison, !3760, !DIExpression(), !2540)
  %.not.i.i.i.i.i.i.i.i.i33 = icmp eq i8 %i.az, 0, !dbg !3903
  %.old8.i.i.i.i.i.i.i.i32 = icmp eq i64 %.old6.i.i.i.i.i.i.i.i24, 0
  %or.cond.i.i.i.i.i.i.i34 = select i1 %.not.i.i.i.i.i.i.i.i.i33, i1 %.old8.i.i.i.i.i.i.i.i32, i1 false, !dbg !3904
  br i1 %or.cond.i.i.i.i.i.i.i34, label %_RNCNvMs1_Cs3f36owOmepS_6quicheNtB7_10Connection10paths_iters_0CslusEaBCZKLp_13quiche_client.exit.i.i.i.i.i.i.i.i32, label %_RNCNvMs1_Cs3f36owOmepS_6quicheNtB7_10Connection10paths_iters_0CslusEaBCZKLp_13quiche_client.exit.thread.i.i.i.i.i.i.i.i28, !dbg !3904

._crit_edge.i.i.i.i.i.i.i.i.i26:                  ; preds = %bb.d
    #dbg_value(ptr %i.aq, !3765, !DIExpression(DW_OP_plus_uconst, 2791, DW_OP_stack_value), !2541)
    #dbg_value(i8 %i.az, !3766, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !2542)
  %5 = icmp eq i8 %i.az, 4, !dbg !3905
  %i.ba = icmp ne i64 %.old6.i.i.i.i.i.i.i.i24, 0
  %or.cond8.i.i.i.i.i.i.i.i27 = select i1 %5, i1 true, i1 %i.ba, !dbg !3906
  br i1 %or.cond8.i.i.i.i.i.i.i.i27, label %_RNCNvMs1_Cs3f36owOmepS_6quicheNtB7_10Connection10paths_iters_0CslusEaBCZKLp_13quiche_client.exit.thread.i.i.i.i.i.i.i.i28, label %_RNCNvMs1_Cs3f36owOmepS_6quicheNtB7_10Connection10paths_iters_0CslusEaBCZKLp_13quiche_client.exit.i.i.i.i.i.i.i.i32, !dbg !3906

_RNCNvMs1_Cs3f36owOmepS_6quicheNtB7_10Connection10paths_iters_0CslusEaBCZKLp_13quiche_client.exit.i.i.i.i.i.i.i.i32: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i26, %bb.e
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aq, i64 2787, !dbg !3907
  %i.bc = load i8, ptr %i.bb, align 1, !dbg !3907, !range !3769, !alias.scope !3827, !noalias !3828, !noundef !453
  %i.bd = trunc nuw i8 %i.bc to i1, !dbg !3908
  br i1 %i.bd, label %_RNCNvMs1_Cs3f36owOmepS_6quicheNtB7_10Connection10paths_iters_0CslusEaBCZKLp_13quiche_client.exit.thread.i.i.i.i.i.i.i.i28, label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter15filter_try_foldTjRNtNtCs3f36owOmepS_6quiche4path4PathEuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs1_B1c_NtB1c_10Connection10paths_iter0NCIB2_B15_uB1J_NCB2v_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB2v_s0_0E0E0E0CslusEaBCZKLp_13quiche_client.exit.i.i.i.i.i.i29, !dbg !3909

_RNCNvMs1_Cs3f36owOmepS_6quicheNtB7_10Connection10paths_iters_0CslusEaBCZKLp_13quiche_client.exit.thread.i.i.i.i.i.i.i.i28: ; preds = %_RNCNvMs1_Cs3f36owOmepS_6quicheNtB7_10Connection10paths_iters_0CslusEaBCZKLp_13quiche_client.exit.i.i.i.i.i.i.i.i32, %._crit_edge.i.i.i.i.i.i.i.i.i26, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3829
  store i64 %i.as, ptr %i.a, align 8, !noalias !3830
  store ptr %i.aq, ptr %i.w, align 8, !noalias !3830
    #dbg_value(ptr %i.t, !3793, !DIExpression(DW_OP_deref), !2548)
    #dbg_declare(ptr poison, !3798, !DIExpression(), !2549)
    #dbg_declare(ptr %i.a, !3797, !DIExpression(), !2550)
  %i.be = call noundef zeroext i1 @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvMs1_Cs3f36owOmepS_6quicheNtBW_10Connection10paths_iters0_0INtB7_5FnMutTRTjRNtNtBW_4path4PathEEE8call_mutCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a), !dbg !3910, !noalias !3831
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !3911, !noalias !3829
  br i1 %i.be, label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterIBX_IBX_INtCs9Srk37lQfcB_4slab4IterNtNtCs3f36owOmepS_6quiche4path4PathENCNvMs1_B1V_NtB1V_10Connection10paths_iter0ENCB2t_s_0ENCB2t_s0_0ENCB2t_s1_0ENtNtNtB9_6traits8iterator8Iterator4nextCslusEaBCZKLp_13quiche_client.exit35, label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter15filter_try_foldTjRNtNtCs3f36owOmepS_6quiche4path4PathEuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs1_B1c_NtB1c_10Connection10paths_iter0NCIB2_B15_uB1J_NCB2v_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB2v_s0_0E0E0E0CslusEaBCZKLp_13quiche_client.exit.i.i.i.i.i.i29, !dbg !3912

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter15filter_try_foldTjRNtNtCs3f36owOmepS_6quiche4path4PathEuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs1_B1c_NtB1c_10Connection10paths_iter0NCIB2_B15_uB1J_NCB2v_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB2v_s0_0E0E0E0CslusEaBCZKLp_13quiche_client.exit.i.i.i.i.i.i29: ; preds = %_RNCNvMs1_Cs3f36owOmepS_6quicheNtB7_10Connection10paths_iters_0CslusEaBCZKLp_13quiche_client.exit.thread.i.i.i.i.i.i.i.i28, %_RNCNvMs1_Cs3f36owOmepS_6quicheNtB7_10Connection10paths_iters_0CslusEaBCZKLp_13quiche_client.exit.i.i.i.i.i.i.i.i32, %.lr.ph.i.i.i.i.i.i21
  %i.bf = call { i64, ptr } @_RNvXsk_Cs9Srk37lQfcB_4slabINtB5_4IterNtNtCs3f36owOmepS_6quiche4path4PathENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.e), !dbg !3869, !noalias !3831 ; 2 uses
  %i.bg = extractvalue { i64, ptr } %i.bf, 1, !dbg !3869 ; 2 uses
  %.not.i.i.i.i.i.i30 = icmp eq ptr %i.bg, null, !dbg !3870
  br i1 %.not.i.i.i.i.i.i30, label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterIBX_IBX_INtCs9Srk37lQfcB_4slab4IterNtNtCs3f36owOmepS_6quiche4path4PathENCNvMs1_B1V_NtB1V_10Connection10paths_iter0ENCB2t_s_0ENCB2t_s0_0ENCB2t_s1_0ENtNtNtB9_6traits8iterator8Iterator4nextCslusEaBCZKLp_13quiche_client.exit35.thread, label %.lr.ph.i.i.i.i.i.i21.backedge, !dbg !3871

.lr.ph.i.i.i.i.i.i21.backedge:                    ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter15filter_try_foldTjRNtNtCs3f36owOmepS_6quiche4path4PathEuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs1_B1c_NtB1c_10Connection10paths_iter0NCIB2_B15_uB1J_NCB2v_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB2v_s0_0E0E0E0CslusEaBCZKLp_13quiche_client.exit.i.i.i.i.i.i29, %_RNvMsd_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecANtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrj8_E4pushCslusEaBCZKLp_13quiche_client.exit
  %.be = phi ptr [ %i.bg, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter15filter_try_foldTjRNtNtCs3f36owOmepS_6quiche4path4PathEuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs1_B1c_NtB1c_10Connection10paths_iter0NCIB2_B15_uB1J_NCB2v_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB2v_s0_0E0E0E0CslusEaBCZKLp_13quiche_client.exit.i.i.i.i.i.i29 ], [ %i.bt, %_RNvMsd_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecANtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrj8_E4pushCslusEaBCZKLp_13quiche_client.exit ]
  %.be128 = phi { i64, ptr } [ %i.bf, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter15filter_try_foldTjRNtNtCs3f36owOmepS_6quiche4path4PathEuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs1_B1c_NtB1c_10Connection10paths_iter0NCIB2_B15_uB1J_NCB2v_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB2v_s0_0E0E0E0CslusEaBCZKLp_13quiche_client.exit.i.i.i.i.i.i29 ], [ %i.bs, %_RNvMsd_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecANtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrj8_E4pushCslusEaBCZKLp_13quiche_client.exit ]
  br label %.lr.ph.i.i.i.i.i.i21, !dbg !3869

_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterIBX_IBX_INtCs9Srk37lQfcB_4slab4IterNtNtCs3f36owOmepS_6quiche4path4PathENCNvMs1_B1V_NtB1V_10Connection10paths_iter0ENCB2t_s_0ENCB2t_s0_0ENCB2t_s1_0ENtNtNtB9_6traits8iterator8Iterator4nextCslusEaBCZKLp_13quiche_client.exit35.thread: ; preds = %_RNvMsd_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecANtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrj8_E4pushCslusEaBCZKLp_13quiche_client.exit, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter15filter_try_foldTjRNtNtCs3f36owOmepS_6quiche4path4PathEuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs1_B1c_NtB1c_10Connection10paths_iter0NCIB2_B15_uB1J_NCB2v_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB2v_s0_0E0E0E0CslusEaBCZKLp_13quiche_client.exit.i.i.i.i.i.i29, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !3913, !noalias !3544
    #dbg_value(i64 poison, !3802, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2552)
    #dbg_value(ptr null, !3802, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2552)
    #dbg_value(ptr %i.e, !3809, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !2552)
    #dbg_value(ptr %i.e, !3813, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !2554)
  br label %.loopexit, !dbg !3508

_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterIBX_IBX_INtCs9Srk37lQfcB_4slab4IterNtNtCs3f36owOmepS_6quiche4path4PathENCNvMs1_B1V_NtB1V_10Connection10paths_iter0ENCB2t_s_0ENCB2t_s0_0ENCB2t_s1_0ENtNtNtB9_6traits8iterator8Iterator4nextCslusEaBCZKLp_13quiche_client.exit35: ; preds = %_RNCNvMs1_Cs3f36owOmepS_6quicheNtB7_10Connection10paths_iters_0CslusEaBCZKLp_13quiche_client.exit.thread.i.i.i.i.i.i.i.i28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !3913, !noalias !3544
    #dbg_value(ptr %i.aq, !3802, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2552)
    #dbg_value(ptr %i.e, !3809, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !2552)
    #dbg_value(ptr %i.e, !3813, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !2554)
    #dbg_value(i64 poison, !3802, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2552)
    #dbg_value(i64 poison, !3810, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2555)
    #dbg_value(ptr %i.aq, !3810, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2555)
    #dbg_value(i64 poison, !3818, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2554)
    #dbg_value(ptr %i.aq, !3818, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2554)
    #dbg_value(ptr poison, !3832, !DIExpression(), !2559)
    #dbg_value(i64 poison, !3835, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2559)
    #dbg_value(ptr %i.aq, !3835, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2559)
    #dbg_value(ptr %i.aq, !3834, !DIExpression(), !2560)
    #dbg_value(ptr %i.aq, !3837, !DIExpression(), !2563)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aq, i64 2640, !dbg !3914
  %.sroa.050.0.copyload51 = load i16, ptr %i.bh, align 8, !dbg !3914 ; 2 uses
  %.not = icmp eq i16 %.sroa.050.0.copyload51, 2, !dbg !3508
  br i1 %.not, label %.loopexit, label %bb.f, !dbg !3508

bb.f:                                             ; preds = %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterIBX_IBX_INtCs9Srk37lQfcB_4slab4IterNtNtCs3f36owOmepS_6quiche4path4PathENCNvMs1_B1V_NtB1V_10Connection10paths_iter0ENCB2t_s_0ENCB2t_s0_0ENCB2t_s1_0ENtNtNtB9_6traits8iterator8Iterator4nextCslusEaBCZKLp_13quiche_client.exit35
  %.sroa.752.0..sroa_idx53 = getelementptr inbounds nuw i8, ptr %i.aq, i64 2642, !dbg !3914
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.455), !dbg !3915
    #dbg_value(i16 %.sroa.050.0.copyload51, !3464, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !3843)
    #dbg_value(i16 %.sroa.050.0.copyload51, !3478, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !3844)
    #dbg_value(i16 %.sroa.050.0.copyload51, !3469, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !3845)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.455, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.752.0..sroa_idx53, i64 30, i1 false), !dbg !3915
    #dbg_value(ptr %0, !3477, !DIExpression(), !2564)
    #dbg_value(ptr %0, !1202, !DIExpression(), !2566)
    #dbg_value(ptr %0, !1213, !DIExpression(), !2568)
  %i.bi = load i64, ptr %i.g, align 8, !dbg !3916, !alias.scope !3846, !noalias !3847, !noundef !453 ; 2 uses
  %i.bj = icmp ugt i64 %i.bi, 8, !dbg !3916       ; 2 uses
  %i.bk = load ptr, ptr %0, align 8, !dbg !3917, !alias.scope !3846, !noalias !3847, !nonnull !453
  %.sink17.i.i = select i1 %i.bj, ptr %i.bk, ptr %0, !dbg !3917
  %.sink16.i.i = select i1 %i.bj, ptr %i.j, ptr %i.g, !dbg !3917 ; 2 uses
  %.sink.i.i36 = call i64 @llvm.umax.i64(i64 %i.bi, i64 8), !dbg !3917
    #dbg_value(ptr %.sink17.i.i, !3479, !DIExpression(), !2575)
    #dbg_value(ptr %.sink16.i.i, !3480, !DIExpression(), !2575)
    #dbg_value(i64 %.sink.i.i36, !3481, !DIExpression(), !2575)
  %i.bl = load i64, ptr %.sink16.i.i, align 8, !dbg !3918, !alias.scope !3848, !noalias !3849, !noundef !453 ; 2 uses
  %i.bm = icmp eq i64 %i.bl, %.sink.i.i36, !dbg !3918
  br i1 %i.bm, label %bb.g, label %_RNvMsd_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecANtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrj8_E4pushCslusEaBCZKLp_13quiche_client.exit, !dbg !3918, !prof !1241

bb.g:                                             ; preds = %bb.f
  call fastcc void @_RNvMsd_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecANtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrj8_E21reserve_one_uncheckedCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(264) %0), !dbg !3919, !noalias !3849
    #dbg_value(ptr %0, !3850, !DIExpression(), !2579)
    #dbg_value(ptr %0, !3851, !DIExpression(), !2580)
  %i.bn = load ptr, ptr %0, align 8, !dbg !3920, !alias.scope !3848, !noalias !3849, !nonnull !453, !noundef !453
    #dbg_value(ptr %i.bn, !3479, !DIExpression(), !2575)
    #dbg_value(ptr %i.j, !3480, !DIExpression(), !2575)
  %.pre.i = load i64, ptr %i.j, align 8, !dbg !3921, !alias.scope !3848, !noalias !3849
  br label %_RNvMsd_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecANtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrj8_E4pushCslusEaBCZKLp_13quiche_client.exit, !dbg !3922

_RNvMsd_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecANtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrj8_E4pushCslusEaBCZKLp_13quiche_client.exit: ; preds = %bb.f, %bb.g
  %i.bo = phi i64 [ %.pre.i, %bb.g ], [ %i.bl, %bb.f ], !dbg !3921
  %.sroa.01.0.i = phi ptr [ %i.j, %bb.g ], [ %.sink16.i.i, %bb.f ], !dbg !3844 ; 2 uses
  %.sroa.0.0.i = phi ptr [ %i.bn, %bb.g ], [ %.sink17.i.i, %bb.f ], !dbg !3844
    #dbg_value(ptr %.sroa.0.0.i, !3479, !DIExpression(), !2575)
    #dbg_value(ptr %.sroa.01.0.i, !3480, !DIExpression(), !2575)
    #dbg_value(ptr %.sroa.0.0.i, !3853, !DIExpression(), !2583)
    #dbg_value(i64 %i.bo, !3854, !DIExpression(), !2583)
  %i.bp = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i, i64 %i.bo, !dbg !3923 ; 2 uses
    #dbg_value(ptr %i.bp, !3472, !DIExpression(), !2584)
  store i16 %.sroa.050.0.copyload51, ptr %i.bp, align 4, !dbg !3924
  %.sroa.455.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 2, !dbg !3924
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.455.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.455, i64 30, i1 false), !dbg !3924
  %i.bq = load i64, ptr %.sroa.01.0.i, align 8, !dbg !3925, !alias.scope !3848, !noalias !3849, !noundef !453
  %i.br = add i64 %i.bq, 1, !dbg !3925
  store i64 %i.br, ptr %.sroa.01.0.i, align 8, !dbg !3925, !alias.scope !3848, !noalias !3849
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.455), !dbg !3926
    #dbg_value(ptr %i.e, !3629, !DIExpression(), !2585)
    #dbg_value(ptr %i.e, !3615, !DIExpression(), !2586)
    #dbg_value(ptr %i.e, !3606, !DIExpression(), !2587)
    #dbg_value(ptr %i.r, !3607, !DIExpression(), !2587)
    #dbg_value(ptr %i.e, !3589, !DIExpression(), !2588)
    #dbg_declare(ptr poison, !3590, !DIExpression(), !2589)
    #dbg_value(ptr %i.r, !3591, !DIExpression(), !2588)
    #dbg_value(ptr %i.e, !3578, !DIExpression(), !2590)
    #dbg_declare(ptr poison, !3579, !DIExpression(), !2591)
    #dbg_value(ptr %i.r, !3580, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2590)
    #dbg_value(ptr %i.r, !3640, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2592)
    #dbg_value(ptr %i.r, !3580, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2590)
    #dbg_value(ptr %i.r, !3640, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2592)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !3867, !noalias !3544
    #dbg_value(ptr %i.r, !3639, !DIExpression(), !2592)
  store ptr %i.r, ptr %i.b, align 8, !dbg !3868, !noalias !3544
  store ptr %i.r, ptr %i.s, align 8, !dbg !3868, !noalias !3544
  store ptr %i.r, ptr %i.t, align 8, !dbg !3868, !noalias !3544
    #dbg_value(ptr %i.e, !3649, !DIExpression(), !2593)
    #dbg_declare(ptr poison, !3650, !DIExpression(), !2594)
    #dbg_declare(ptr %i.b, !3651, !DIExpression(), !2595)
    #dbg_declare(ptr poison, !3652, !DIExpression(), !2596)
  %i.bs = call { i64, ptr } @_RNvXsk_Cs9Srk37lQfcB_4slabINtB5_4IterNtNtCs3f36owOmepS_6quiche4path4PathENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.e), !dbg !3869, !noalias !3645 ; 2 uses
  %i.bt = extractvalue { i64, ptr } %i.bs, 1, !dbg !3869 ; 2 uses
  %.not22.i.i.i.i.i.i20 = icmp eq ptr %i.bt, null, !dbg !3870
  br i1 %.not22.i.i.i.i.i.i20, label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterIBX_IBX_INtCs9Srk37lQfcB_4slab4IterNtNtCs3f36owOmepS_6quiche4path4PathENCNvMs1_B1V_NtB1V_10Connection10paths_iter0ENCB2t_s_0ENCB2t_s0_0ENCB2t_s1_0ENtNtNtB9_6traits8iterator8Iterator4nextCslusEaBCZKLp_13quiche_client.exit35.thread, label %.lr.ph.i.i.i.i.i.i21.backedge, !dbg !3871

.loopexit:                                        ; preds = %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterIBX_IBX_INtCs9Srk37lQfcB_4slab4IterNtNtCs3f36owOmepS_6quiche4path4PathENCNvMs1_B1V_NtB1V_10Connection10paths_iter0ENCB2t_s_0ENCB2t_s0_0ENCB2t_s1_0ENtNtNtB9_6traits8iterator8Iterator4nextCslusEaBCZKLp_13quiche_client.exit35, %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterIBX_IBX_INtCs9Srk37lQfcB_4slab4IterNtNtCs3f36owOmepS_6quiche4path4PathENCNvMs1_B1V_NtB1V_10Connection10paths_iter0ENCB2t_s_0ENCB2t_s0_0ENCB2t_s1_0ENtNtNtB9_6traits8iterator8Iterator4nextCslusEaBCZKLp_13quiche_client.exit35.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !3927
  br label %bb.h, !dbg !3928

bb.h:                                             ; preds = %.loopexit63, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !3928
  ret void, !dbg !3929

_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterIBX_IBX_INtCs9Srk37lQfcB_4slab4IterNtNtCs3f36owOmepS_6quiche4path4PathENCNvMs1_B1V_NtB1V_10Connection10paths_iter0ENCB2t_s_0ENCB2t_s0_0ENCB2t_s1_0ENtNtNtB9_6traits8iterator8Iterator4nextCslusEaBCZKLp_13quiche_client.exit: ; preds = %.noexc18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !3894, !noalias !3671
    #dbg_value(ptr %i.z, !3802, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2492)
    #dbg_value(ptr %i.f, !3809, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !2492)
    #dbg_value(ptr %i.f, !3813, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !2496)
    #dbg_value(i64 poison, !3802, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2492)
    #dbg_value(i64 poison, !3810, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2597)
    #dbg_value(ptr %i.z, !3810, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2597)
    #dbg_value(i64 poison, !3818, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2496)
    #dbg_value(ptr %i.z, !3818, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2496)
    #dbg_value(ptr poison, !3832, !DIExpression(), !2599)
    #dbg_value(i64 poison, !3835, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2599)
    #dbg_value(ptr %i.z, !3835, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2599)
    #dbg_value(ptr %i.z, !3834, !DIExpression(), !2600)
    #dbg_value(ptr %i.z, !3837, !DIExpression(), !2602)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.z, i64 2640, !dbg !3930
  %.sroa.044.0.copyload45 = load i16, ptr %i.bu, align 8, !dbg !3930 ; 2 uses
  %.not11 = icmp eq i16 %.sroa.044.0.copyload45, 2, !dbg !3931
  br i1 %.not11, label %.loopexit63, label %bb.i, !dbg !3895

bb.i:                                             ; preds = %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterIBX_IBX_INtCs9Srk37lQfcB_4slab4IterNtNtCs3f36owOmepS_6quiche4path4PathENCNvMs1_B1V_NtB1V_10Connection10paths_iter0ENCB2t_s_0ENCB2t_s0_0ENCB2t_s1_0ENtNtNtB9_6traits8iterator8Iterator4nextCslusEaBCZKLp_13quiche_client.exit
  %.sroa.746.0..sroa_idx47 = getelementptr inbounds nuw i8, ptr %i.z, i64 2642, !dbg !3930
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.449), !dbg !3491
    #dbg_value(i16 %.sroa.044.0.copyload45, !3462, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !3856)
    #dbg_value(i16 %.sroa.044.0.copyload45, !3486, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !3857)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.449, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.746.0..sroa_idx47, i64 30, i1 false), !dbg !3491
    #dbg_value(i64 %.sroa.7.076, !3539, !DIExpression(), !3542)
  %i.bv = getelementptr inbounds nuw [32 x i8], ptr %.sink17.i, i64 %.sroa.7.076, !dbg !3932 ; 2 uses
    #dbg_value(ptr %i.bv, !3487, !DIExpression(), !3857)
  store i16 %.sroa.044.0.copyload45, ptr %i.bv, align 4, !dbg !3933
  %.sroa.449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 2, !dbg !3933
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.449.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.449, i64 30, i1 false), !dbg !3933
    #dbg_value(ptr undef, !3492, !DIExpression(), !3496)
  %i.bw = add nuw i64 %.sroa.7.076, 1, !dbg !3934 ; 2 uses
    #dbg_value(i64 %i.bw, !3461, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3543)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.449), !dbg !3935
  %exitcond.not = icmp eq i64 %i.bw, %.sink.i.i, !dbg !3864
  br i1 %exitcond.not, label %._crit_edge, label %bb.a, !dbg !3864

.loopexit63:                                      ; preds = %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterIBX_IBX_INtCs9Srk37lQfcB_4slab4IterNtNtCs3f36owOmepS_6quiche4path4PathENCNvMs1_B1V_NtB1V_10Connection10paths_iter0ENCB2t_s_0ENCB2t_s0_0ENCB2t_s1_0ENtNtNtB9_6traits8iterator8Iterator4nextCslusEaBCZKLp_13quiche_client.exit, %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterIBX_IBX_INtCs9Srk37lQfcB_4slab4IterNtNtCs3f36owOmepS_6quiche4path4PathENCNvMs1_B1V_NtB1V_10Connection10paths_iter0ENCB2t_s_0ENCB2t_s0_0ENCB2t_s1_0ENtNtNtB9_6traits8iterator8Iterator4nextCslusEaBCZKLp_13quiche_client.exit.thread
    #dbg_value(ptr poison, !1222, !DIExpression(), !2604)
    #dbg_value(ptr poison, !1228, !DIExpression(), !2606)
  store i64 %.sroa.7.076, ptr %.sink16.i, align 8, !dbg !3936
  br label %bb.h, !dbg !3928

.loopexit61:                                      ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter15filter_try_foldTjRNtNtCs3f36owOmepS_6quiche4path4PathEuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs1_B1c_NtB1c_10Connection10paths_iter0NCIB2_B15_uB1J_NCB2v_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB2v_s0_0E0E0E0CslusEaBCZKLp_13quiche_client.exit.i.i.i.i.i.i, %_RNCNvMs1_Cs3f36owOmepS_6quicheNtB7_10Connection10paths_iters_0CslusEaBCZKLp_13quiche_client.exit.thread.i.i.i.i.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

.loopexit.split-lp:                               ; preds = %bb.a
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %.loopexit.split-lp, %.loopexit61
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit61 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
    #dbg_value(ptr poison, !1222, !DIExpression(), !2608)
end_hunk_0
