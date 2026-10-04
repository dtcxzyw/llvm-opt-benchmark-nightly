Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pingora-rs/original/pingora_ketama-0493fb5657f227ed.pingora_ketama.a7fe488d8f229c0c-cgu.0?download=true
inline.NumInlined: 181
inline.NumDeleted: 100
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvNtNtB4_2io5write17default_write_fmt7AdapterINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECseqdUst8juhI_14pingora_ketama, [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNvNtNtCskKLDkoKarTP_4core2io5write17default_write_fmtINtB2_7AdapterINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB8_3fmt5Write9write_strCseqdUst8juhI_14pingora_ketama, ptr @_RNvYINtNvNtNtCskKLDkoKarTP_4core2io5write17default_write_fmt7AdapterINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtBb_3fmt5Write10write_charCseqdUst8juhI_14pingora_ketama, ptr @_RNvYINtNvNtNtCskKLDkoKarTP_4core2io5write17default_write_fmt7AdapterINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtBb_3fmt5Write9write_fmtCseqdUst8juhI_14pingora_ketama }>, align 8
@1 = private unnamed_addr constant [86 x i8] c"a formatting trait implementation returned an error when the underlying stream did not", align 1
@2 = private unnamed_addr constant [77 x i8] c"/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed/library/core/src/io/write.rs\00", align 1
@3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"L\00\00\00\00\00\00\00\9B\01\00\00\11\00\00\00" }>, align 8
@4 = private unnamed_addr constant [27 x i8] c"weight must be at least one", align 1
@5 = private unnamed_addr constant [26 x i8] c"pingora-ketama/src/lib.rs\00", align 1
@6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @5, [16 x i8] c"\19\00\00\00\00\00\00\00_\00\00\00\09\00\00\00" }>, align 8
@7 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECseqdUst8juhI_14pingora_ketama, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNtNtCskKLDkoKarTP_4core2io5errorNtB2_5ErrorNtNtB6_3fmt5Debug3fmt }>, align 8
@8 = private unnamed_addr constant [43 x i8] c"called `Result::unwrap()` on an `Err` value", align 1
@9 = private unnamed_addr constant [2 x i8] c"\C0\00", align 1
@10 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @5, [16 x i8] c"\19\00\00\00\00\00\00\00Q\01\00\00=\00\00\00" }>, align 8
@11 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @5, [16 x i8] c"\19\00\00\00\00\00\00\00S\01\00\00?\00\00\00" }>, align 8
@12 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @5, [16 x i8] c"\19\00\00\00\00\00\00\00|\01\00\00\16\00\00\00" }>, align 8
@13 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @5, [16 x i8] c"\19\00\00\00\00\00\00\00\90\01\00\00\18\00\00\00" }>, align 8

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvNtNtB4_2io5write17default_write_fmt7AdapterINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECseqdUst8juhI_14pingora_ketama(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.b, align 8, !noundef !4 ; 4 uses
  %i.c = icmp eq ptr %.val, null
  br i1 %i.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECseqdUst8juhI_14pingora_ketama.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18
  %i.d = ptrtoint ptr %.val to i64                ; 2 uses
  %i.e = and i64 %i.d, 3
  switch i64 %i.e, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECseqdUst8juhI_14pingora_ketama.exit.i
    i64 3, label %bb.c
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECseqdUst8juhI_14pingora_ketama.exit.i
    i64 1, label %bb.d
  ], !prof !5

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = icmp ult ptr %.val, inttoptr (i64 188978561024 to ptr)
  %i.g = and i64 %i.d, 1095216660480
  %i.h = icmp ne i64 %i.g, 1095216660480
  tail call void @llvm.assume(i1 %i.f)
  tail call void @llvm.assume(i1 %i.h)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECseqdUst8juhI_14pingora_ketama.exit.i

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %.val, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.i) ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !alias.scope !19, !noalias !18
  store i8 3, ptr %i.a, align 8, !alias.scope !19, !noalias !18
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j), !noalias !18
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECseqdUst8juhI_14pingora_ketama.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECseqdUst8juhI_14pingora_ketama.exit.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !18
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECseqdUst8juhI_14pingora_ketama.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECseqdUst8juhI_14pingora_ketama.exit: ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECseqdUst8juhI_14pingora_ketama.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECseqdUst8juhI_14pingora_ketama(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = ptrtoint ptr %.val to i64                ; 2 uses
  %i.c = and i64 %i.b, 3
  switch i64 %i.c, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECseqdUst8juhI_14pingora_ketama.exit
    i64 3, label %bb.b
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECseqdUst8juhI_14pingora_ketama.exit
    i64 1, label %bb.c
  ], !prof !5

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult ptr %.val, inttoptr (i64 188978561024 to ptr)
  %i.e = and i64 %i.b, 1095216660480
  %i.f = icmp ne i64 %i.e, 1095216660480
  tail call void @llvm.assume(i1 %i.d)
  tail call void @llvm.assume(i1 %i.f)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECseqdUst8juhI_14pingora_ketama.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %.val, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.g, ptr %i.h, align 8, !alias.scope !22
  store i8 3, ptr %i.a, align 8, !alias.scope !22
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECseqdUst8juhI_14pingora_ketama.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECseqdUst8juhI_14pingora_ketama.exit: ; preds = %bb.a, %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable7ipnsortNtCseqdUst8juhI_14pingora_ketama7PointV1NvYBT_NtNtB8_3cmp10PartialOrd2ltEBV_(ptr noalias nofree noundef nonnull align 4 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2) unnamed_addr #1 {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtCseqdUst8juhI_14pingora_ketama7PointV17reverseBw_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 12
  %.val5 = load i32, ptr %i.b, align 4, !noundef !4 ; 3 uses
  %i.c = getelementptr i8, ptr %0, i64 4
  %.val6 = load i32, ptr %i.c, align 4, !noundef !4
  %i.d = icmp ult i32 %.val5, %.val6              ; 2 uses
  %.not21 = icmp eq i64 %1, 2                     ; 2 uses
  br i1 %i.d, label %.preheader, label %.preheader11

.preheader11:                                     ; preds = %bb.b
  br i1 %.not21, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB12_NtNtB8_3cmp10PartialOrd2ltEB14_.exit, label %.lr.ph

.preheader:                                       ; preds = %bb.b
  br i1 %.not21, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB12_NtNtB8_3cmp10PartialOrd2ltEB14_.exit, label %.lr.ph17

.lr.ph:                                           ; preds = %.preheader11, %bb.c
  %.val4 = phi i32 [ %.val3, %bb.c ], [ %.val5, %.preheader11 ]
  %.sroa.01.0.i13 = phi i64 [ %i.h, %bb.c ], [ 2, %.preheader11 ] ; 3 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i13
  %i.f = getelementptr i8, ptr %i.e, i64 4
  %.val3 = load i32, ptr %i.f, align 4, !noundef !4 ; 2 uses
  %i.g = icmp ult i32 %.val3, %.val4
  br i1 %i.g, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB12_NtNtB8_3cmp10PartialOrd2ltEB14_.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.h = add nuw nsw i64 %.sroa.01.0.i13, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %i.h, %1
  br i1 %exitcond.not, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB12_NtNtB8_3cmp10PartialOrd2ltEB14_.exit.thread, label %.lr.ph

.lr.ph17:                                         ; preds = %.preheader, %bb.d
  %.val2 = phi i32 [ %.val, %bb.d ], [ %.val5, %.preheader ]
  %.sroa.01.1.i16 = phi i64 [ %i.l, %bb.d ], [ 2, %.preheader ] ; 3 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.1.i16
  %i.j = getelementptr i8, ptr %i.i, i64 4
  %.val = load i32, ptr %i.j, align 4, !noundef !4 ; 2 uses
  %i.k = icmp ult i32 %.val, %.val2
  br i1 %i.k, label %bb.d, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB12_NtNtB8_3cmp10PartialOrd2ltEB14_.exit

bb.d:                                             ; preds = %.lr.ph17
  %i.l = add nuw nsw i64 %.sroa.01.1.i16, 1       ; 2 uses
  %exitcond24.not = icmp eq i64 %i.l, %1
  br i1 %exitcond24.not, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB12_NtNtB8_3cmp10PartialOrd2ltEB14_.exit.thread, label %.lr.ph17

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB12_NtNtB8_3cmp10PartialOrd2ltEB14_.exit: ; preds = %.lr.ph, %.lr.ph17, %.preheader11, %.preheader
  %.sroa.0.0.i = phi i64 [ 2, %.preheader11 ], [ 2, %.preheader ], [ %.sroa.01.1.i16, %.lr.ph17 ], [ %.sroa.01.0.i13, %.lr.ph ] ; 2 uses
  %i.m = icmp samesign ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.m)
  %i.n = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.n, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB12_NtNtB8_3cmp10PartialOrd2ltEB14_.exit.thread, label %bb.e

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB12_NtNtB8_3cmp10PartialOrd2ltEB14_.exit.thread: ; preds = %bb.c, %bb.d, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB12_NtNtB8_3cmp10PartialOrd2ltEB14_.exit
  br i1 %i.d, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtCseqdUst8juhI_14pingora_ketama7PointV112split_at_mutBw_.exit11.preheader.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtCseqdUst8juhI_14pingora_ketama7PointV17reverseBw_.exit

bb.e:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB12_NtNtB8_3cmp10PartialOrd2ltEB14_.exit
  %i.o = or i64 %1, 1
  %i.p = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.o, i1 true)
  %i.q = trunc nuw nsw i64 %i.p to i32
  %i.r = shl nuw nsw i32 %i.q, 1
  %i.s = xor i32 %i.r, 126
  tail call fastcc void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort9quicksortNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB17_NtNtBa_3cmp10PartialOrd2ltEB19_(ptr noalias nofree noundef nonnull align 4 %0, i64 noundef %1, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) null, i32 noundef %i.s, ptr noalias nofree noundef nonnull %2)
  br label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtCseqdUst8juhI_14pingora_ketama7PointV17reverseBw_.exit

_RNvMNtCskKLDkoKarTP_4core5sliceSNtCseqdUst8juhI_14pingora_ketama7PointV17reverseBw_.exit: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSNtCseqdUst8juhI_14pingora_ketama7PointV112split_at_mutBw_.exit11.i.i, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtCseqdUst8juhI_14pingora_ketama7PointV112split_at_mutBw_.exit11.i.i.preheader.a, %bb.a, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB12_NtNtB8_3cmp10PartialOrd2ltEB14_.exit.thread, %bb.e
  ret void

_RNvMNtCskKLDkoKarTP_4core5sliceSNtCseqdUst8juhI_14pingora_ketama7PointV112split_at_mutBw_.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB12_NtNtB8_3cmp10PartialOrd2ltEB14_.exit.thread
  %i.t = lshr i64 %1, 1                           ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31)
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1 ; 2 uses
  %min.iters.check = icmp samesign ult i64 %1, 4
  br i1 %min.iters.check, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtCseqdUst8juhI_14pingora_ketama7PointV112split_at_mutBw_.exit11.i.i.prol.loopexit, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSNtCseqdUst8juhI_14pingora_ketama7PointV112split_at_mutBw_.exit11.preheader.i.i
  %n.vec = and i64 %i.t, 576460752303423486       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.v = xor i64 %index, -1
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.x = getelementptr [8 x i8], ptr %i.u, i64 %i.v ; 2 uses
  %wide.vec = load <4 x i32>, ptr %i.w, align 4, !alias.scope !32, !noalias !31
  %i.y = getelementptr i8, ptr %i.x, i64 -8
  %wide.load = load <2 x i64>, ptr %i.y, align 4, !alias.scope !33, !noalias !30
  %reverse = shufflevector <2 x i64> %wide.load, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %reverse, ptr %i.w, align 4, !alias.scope !32, !noalias !31
  %i.z = getelementptr inbounds i8, ptr %i.x, i64 -8
  %interleaved.vec = shufflevector <4 x i32> %wide.vec, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec, ptr %i.z, align 4, !alias.scope !33, !noalias !30
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtCseqdUst8juhI_14pingora_ketama7PointV112split_at_mutBw_.exit11.i.i.preheader.a, label %vector.body, !llvm.loop !28

_RNvMNtCskKLDkoKarTP_4core5sliceSNtCseqdUst8juhI_14pingora_ketama7PointV112split_at_mutBw_.exit11.i.i.preheader.a: ; preds = %vector.body
  %lcmp.mod.not = icmp eq i64 %i.t, %n.vec
  br i1 %lcmp.mod.not, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtCseqdUst8juhI_14pingora_ketama7PointV17reverseBw_.exit, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtCseqdUst8juhI_14pingora_ketama7PointV112split_at_mutBw_.exit11.i.i.prol.loopexit

_RNvMNtCskKLDkoKarTP_4core5sliceSNtCseqdUst8juhI_14pingora_ketama7PointV112split_at_mutBw_.exit11.i.i.prol.loopexit: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSNtCseqdUst8juhI_14pingora_ketama7PointV112split_at_mutBw_.exit11.preheader.i.i, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtCseqdUst8juhI_14pingora_ketama7PointV112split_at_mutBw_.exit11.i.i.preheader.a
  %.sroa.0.016.i.i.unr = phi i64 [ 0, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtCseqdUst8juhI_14pingora_ketama7PointV112split_at_mutBw_.exit11.preheader.i.i ], [ %n.vec, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtCseqdUst8juhI_14pingora_ketama7PointV112split_at_mutBw_.exit11.i.i.preheader.a ]
  br label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtCseqdUst8juhI_14pingora_ketama7PointV112split_at_mutBw_.exit11.i.i

_RNvMNtCskKLDkoKarTP_4core5sliceSNtCseqdUst8juhI_14pingora_ketama7PointV112split_at_mutBw_.exit11.i.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSNtCseqdUst8juhI_14pingora_ketama7PointV112split_at_mutBw_.exit11.i.i.prol.loopexit, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtCseqdUst8juhI_14pingora_ketama7PointV112split_at_mutBw_.exit11.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.ag, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtCseqdUst8juhI_14pingora_ketama7PointV112split_at_mutBw_.exit11.i.i ], [ %.sroa.0.016.i.i.unr, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtCseqdUst8juhI_14pingora_ketama7PointV112split_at_mutBw_.exit11.i.i.prol.loopexit ] ; 3 uses
  %i.ab = xor i64 %.sroa.0.016.i.i, -1
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.016.i.i ; 2 uses
  %i.ad = getelementptr [8 x i8], ptr %i.u, i64 %i.ab ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 4, !alias.scope !33, !noalias !30
  %i.af = load <2 x i32>, ptr %i.ac, align 4, !alias.scope !32, !noalias !31
  store i64 %i.ae, ptr %i.ac, align 4, !alias.scope !32, !noalias !31
  store <2 x i32> %i.af, ptr %i.ad, align 4, !alias.scope !33, !noalias !30
  %i.ag = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.ag, %i.t
  br i1 %exitcond.not.i.i.1, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtCseqdUst8juhI_14pingora_ketama7PointV17reverseBw_.exit, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtCseqdUst8juhI_14pingora_ketama7PointV112split_at_mutBw_.exit11.i.i, !llvm.loop !29
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef nonnull ptr @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot11median3_recNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB14_NtNtBa_3cmp10PartialOrd2ltEB16_(ptr nofree noundef nonnull readonly %0, ptr nofree noundef nonnull readonly %1, ptr nofree noundef nonnull readonly %2, i64 noundef range(i64 0, 144115188075855872) %3) unnamed_addr #2 {
bb.a:
  %i.a = icmp samesign ugt i64 %3, 7
  br i1 %i.a, label %bb.b, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot7median3NtCseqdUst8juhI_14pingora_ketama7PointV1NvYBZ_NtNtBa_3cmp10PartialOrd2ltEB11_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.c
  %i.e = mul nuw nsw i64 %i.b, 7                  ; 3 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.e
  %i.g = tail call fastcc noundef ptr @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot11median3_recNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB14_NtNtBa_3cmp10PartialOrd2ltEB16_(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b)
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.e
  %i.j = tail call fastcc noundef ptr @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot11median3_recNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB14_NtNtBa_3cmp10PartialOrd2ltEB16_(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b)
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.e
  %i.m = tail call fastcc noundef ptr @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot11median3_recNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB14_NtNtBa_3cmp10PartialOrd2ltEB16_(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b)
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot7median3NtCseqdUst8juhI_14pingora_ketama7PointV1NvYBZ_NtNtBa_3cmp10PartialOrd2ltEB11_.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot7median3NtCseqdUst8juhI_14pingora_ketama7PointV1NvYBZ_NtNtBa_3cmp10PartialOrd2ltEB11_.exit: ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 2 uses
  %i.n = getelementptr i8, ptr %.sroa.0.0, i64 4
  %.sroa.0.0.val13 = load i32, ptr %i.n, align 4, !noundef !4 ; 2 uses
  %i.o = getelementptr i8, ptr %.sroa.04.0, i64 4
  %.sroa.04.0.val14 = load i32, ptr %i.o, align 4, !noundef !4 ; 2 uses
  %i.p = icmp ult i32 %.sroa.0.0.val13, %.sroa.04.0.val14 ; 2 uses
  %i.q = getelementptr i8, ptr %.sroa.08.0, i64 4
  %.sroa.08.0.val12 = load i32, ptr %i.q, align 4, !noundef !4 ; 2 uses
  %i.r = icmp ult i32 %.sroa.0.0.val13, %.sroa.08.0.val12
  %i.s = xor i1 %i.p, %i.r
  %i.t = icmp ult i32 %.sroa.04.0.val14, %.sroa.08.0.val12
  %i.u = xor i1 %i.p, %i.t
  %..i = select i1 %i.u, ptr %.sroa.08.0, ptr %.sroa.04.0
  %.sroa.0.0.i = select i1 %i.s, ptr %.sroa.0.0, ptr %..i
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort12sort8_stableNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB19_NtNtBa_3cmp10PartialOrd2ltEB1b_(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 64)) %1, ptr nofree noundef nonnull captures(address) initializes((0, 64)) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
.lr.ph.i:
  %i.a = getelementptr i8, ptr %0, i64 12
  %.val8.i = load i32, ptr %i.a, align 4, !noundef !4
  %i.b = getelementptr i8, ptr %0, i64 4
  %.val9.i = load i32, ptr %i.b, align 4, !noundef !4
  %i.c = icmp ult i32 %.val8.i, %.val9.i          ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 28
  %.val6.i = load i32, ptr %i.d, align 4, !noundef !4
  %i.e = getelementptr i8, ptr %0, i64 20
  %.val7.i = load i32, ptr %i.e, align 4, !noundef !4
  %i.f = icmp ult i32 %.val6.i, %.val7.i          ; 2 uses
  %i.g = zext i1 %i.c to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.g ; 3 uses
  %i.i = xor i1 %i.c, true
  %i.j = zext i1 %i.i to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.j ; 4 uses
  %i.l = select i1 %i.f, i64 3, i64 2
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.l ; 4 uses
  %i.n = select i1 %i.f, i64 2, i64 3
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.n ; 3 uses
  %i.p = getelementptr i8, ptr %i.m, i64 4
  %.val4.i = load i32, ptr %i.p, align 4, !noundef !4
  %i.q = getelementptr i8, ptr %i.h, i64 4
  %.val5.i = load i32, ptr %i.q, align 4, !noundef !4
  %i.r = icmp ult i32 %.val4.i, %.val5.i          ; 3 uses
  %i.s = getelementptr i8, ptr %i.o, i64 4
  %.val2.i = load i32, ptr %i.s, align 4, !noundef !4
  %i.t = getelementptr i8, ptr %i.k, i64 4
  %.val3.i = load i32, ptr %i.t, align 4, !noundef !4
  %i.u = icmp ult i32 %.val2.i, %.val3.i          ; 3 uses
  %i.v = select i1 %i.r, ptr %i.m, ptr %i.h, !unpredictable !4
  %i.w = select i1 %i.u, ptr %i.k, ptr %i.o, !unpredictable !4
  %i.x = select i1 %i.u, ptr %i.m, ptr %i.k, !unpredictable !4
  %i.y = select i1 %i.r, ptr %i.h, ptr %i.x, !unpredictable !4 ; 3 uses
  %i.z = select i1 %i.r, ptr %i.k, ptr %i.m, !unpredictable !4
  %i.aa = select i1 %i.u, ptr %i.o, ptr %i.z, !unpredictable !4 ; 3 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 4
  %.val.i = load i32, ptr %i.ab, align 4, !noundef !4
  %i.ac = getelementptr i8, ptr %i.y, i64 4
  %.val1.i = load i32, ptr %i.ac, align 4, !noundef !4
  %i.ad = icmp ult i32 %.val.i, %.val1.i          ; 2 uses
  %i.ae = select i1 %i.ad, ptr %i.aa, ptr %i.y, !unpredictable !4
  %i.af = select i1 %i.ad, ptr %i.y, ptr %i.aa, !unpredictable !4
  %i.ag = load i64, ptr %i.v, align 4             ; 3 uses
  store i64 %i.ag, ptr %2, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ai = load i64, ptr %i.ae, align 4
  store i64 %i.ai, ptr %i.ah, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ak = load i64, ptr %i.af, align 4
  store i64 %i.ak, ptr %i.aj, align 4
  %i.al = getelementptr i8, ptr %2, i64 24        ; 2 uses
  %i.am = load i64, ptr %i.w, align 4             ; 3 uses
  store i64 %i.am, ptr %i.al, align 4
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.ao = getelementptr i8, ptr %2, i64 32        ; 2 uses
  %i.ap = getelementptr i8, ptr %0, i64 44
  %.val8.i1 = load i32, ptr %i.ap, align 4, !noundef !4
  %i.aq = getelementptr i8, ptr %0, i64 36
  %.val9.i2 = load i32, ptr %i.aq, align 4, !noundef !4
  %i.ar = icmp ult i32 %.val8.i1, %.val9.i2       ; 2 uses
  %i.as = getelementptr i8, ptr %0, i64 60
  %.val6.i3 = load i32, ptr %i.as, align 4, !noundef !4
  %i.at = getelementptr i8, ptr %0, i64 52
  %.val7.i4 = load i32, ptr %i.at, align 4, !noundef !4
  %i.au = icmp ult i32 %.val6.i3, %.val7.i4       ; 2 uses
  %i.av = zext i1 %i.ar to i64
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.av ; 3 uses
  %i.ax = xor i1 %i.ar, true
  %i.ay = zext i1 %i.ax to i64
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.ay ; 4 uses
  %i.ba = select i1 %i.au, i64 3, i64 2
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.ba ; 4 uses
  %i.bc = select i1 %i.au, i64 2, i64 3
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.bc ; 3 uses
  %i.be = getelementptr i8, ptr %i.bb, i64 4
  %.val4.i5 = load i32, ptr %i.be, align 4, !noundef !4
  %i.bf = getelementptr i8, ptr %i.aw, i64 4
  %.val5.i6 = load i32, ptr %i.bf, align 4, !noundef !4
  %i.bg = icmp ult i32 %.val4.i5, %.val5.i6       ; 3 uses
  %i.bh = getelementptr i8, ptr %i.bd, i64 4
  %.val2.i7 = load i32, ptr %i.bh, align 4, !noundef !4
  %i.bi = getelementptr i8, ptr %i.az, i64 4
  %.val3.i8 = load i32, ptr %i.bi, align 4, !noundef !4
  %i.bj = icmp ult i32 %.val2.i7, %.val3.i8       ; 3 uses
  %i.bk = select i1 %i.bg, ptr %i.bb, ptr %i.aw, !unpredictable !4
  %i.bl = select i1 %i.bj, ptr %i.az, ptr %i.bd, !unpredictable !4
  %i.bm = select i1 %i.bj, ptr %i.bb, ptr %i.az, !unpredictable !4
  %i.bn = select i1 %i.bg, ptr %i.aw, ptr %i.bm, !unpredictable !4 ; 3 uses
  %i.bo = select i1 %i.bg, ptr %i.az, ptr %i.bb, !unpredictable !4
  %i.bp = select i1 %i.bj, ptr %i.bd, ptr %i.bo, !unpredictable !4 ; 3 uses
  %i.bq = getelementptr i8, ptr %i.bp, i64 4
  %.val.i9 = load i32, ptr %i.bq, align 4, !noundef !4
  %i.br = getelementptr i8, ptr %i.bn, i64 4
  %.val1.i10 = load i32, ptr %i.br, align 4, !noundef !4
  %i.bs = icmp ult i32 %.val.i9, %.val1.i10       ; 2 uses
  %i.bt = select i1 %i.bs, ptr %i.bp, ptr %i.bn, !unpredictable !4
  %i.bu = select i1 %i.bs, ptr %i.bn, ptr %i.bp, !unpredictable !4
  %i.bv = load i64, ptr %i.bk, align 4            ; 3 uses
  store i64 %i.bv, ptr %i.ao, align 4
  %i.bw = getelementptr i8, ptr %2, i64 40
  %i.bx = load i64, ptr %i.bt, align 4
  store i64 %i.bx, ptr %i.bw, align 4
  %i.by = getelementptr i8, ptr %2, i64 48
  %i.bz = load i64, ptr %i.bu, align 4
  store i64 %i.bz, ptr %i.by, align 4
  %i.ca = getelementptr i8, ptr %2, i64 56        ; 2 uses
  %i.cb = load i64, ptr %i.bl, align 4            ; 3 uses
  store i64 %i.cb, ptr %i.ca, align 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42)
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.cd = lshr i64 %i.bv, 32
  %i.ce = lshr i64 %i.ag, 32
  %i.cf = icmp samesign ult i64 %i.cd, %i.ce      ; 3 uses
  %i.cg = xor i1 %i.cf, true
  %i.ch = select i1 %i.cf, i64 %i.bv, i64 %i.ag
  store i64 %i.ch, ptr %1, align 4, !noalias !43
  %i.ci = zext i1 %i.cf to i64
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.ci ; 3 uses
  %i.ck = zext i1 %i.cg to i64
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ck ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cn = lshr i64 %i.cb, 32
  %i.co = lshr i64 %i.am, 32
  %i.cp = icmp samesign ult i64 %i.cn, %i.co      ; 3 uses
  %i.cq = xor i1 %i.cp, true
  %i.cr = select i1 %i.cp, i64 %i.am, i64 %i.cb
  store i64 %i.cr, ptr %i.cc, align 4, !noalias !44
  %.neg.i.i = sext i1 %i.cq to i64
  %i.cs = getelementptr [8 x i8], ptr %i.ca, i64 %.neg.i.i ; 3 uses
  %.neg13.i.i = sext i1 %i.cp to i64
  %i.ct = getelementptr [8 x i8], ptr %i.al, i64 %.neg13.i.i ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cv = getelementptr i8, ptr %i.cj, i64 4
  %.sroa.011.0.val.i.1 = load i32, ptr %i.cv, align 4, !alias.scope !42, !noundef !4
  %i.cw = getelementptr i8, ptr %i.cl, i64 4
  %.sroa.06.0.val.i.1 = load i32, ptr %i.cw, align 4, !alias.scope !42, !noundef !4
  %i.cx = icmp ult i32 %.sroa.011.0.val.i.1, %.sroa.06.0.val.i.1 ; 3 uses
  %..i21.i.1 = select i1 %i.cx, ptr %i.cj, ptr %i.cl
  %i.cy = xor i1 %i.cx, true
  %i.cz = load i64, ptr %..i21.i.1, align 4, !alias.scope !42, !noalias !45
  store i64 %i.cz, ptr %i.cm, align 4, !noalias !43
  %i.da = zext i1 %i.cx to i64
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.da ; 3 uses
  %i.dc = zext i1 %i.cy to i64
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.dc ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.df = getelementptr i8, ptr %i.cs, i64 4
  %.sroa.017.0.val.i.1 = load i32, ptr %i.df, align 4, !alias.scope !42, !noundef !4
  %i.dg = getelementptr i8, ptr %i.ct, i64 4
  %.sroa.015.0.val.i.1 = load i32, ptr %i.dg, align 4, !alias.scope !42, !noundef !4
  %i.dh = icmp ult i32 %.sroa.017.0.val.i.1, %.sroa.015.0.val.i.1 ; 3 uses
  %..i.i.1 = select i1 %i.dh, ptr %i.ct, ptr %i.cs
end_hunk_0
begin_hunk_1_@_RNvYINtNvNtNtCskKLDkoKarTP_4core2io5write17default_write_fmt7AdapterINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtBb_3fmt5Write10write_charCseqdUst8juhI_14pingora_ketama:bb.a
  %.sroa.0.1..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 1
  store i8 %i.m, ptr %.sroa.0.1..sroa_idx, align 1, !alias.scope !325
  %.sroa.0.2..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 2
  store i8 %i.i, ptr %.sroa.0.2..sroa_idx, align 2, !alias.scope !325
  %.sroa.0.3..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 3
  store i8 %i.e, ptr %.sroa.0.3..sroa_idx, align 1, !alias.scope !325
  br label %_RNvNtNtCskKLDkoKarTP_4core4char7methods15encode_utf8_raw.exit

_RNvNtNtCskKLDkoKarTP_4core4char7methods15encode_utf8_raw.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.05.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !326)
  %i.u = load ptr, ptr %0, align 8, !alias.scope !326, !noalias !327, !nonnull !4, !align !13, !noundef !4 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !328)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !329)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !330)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !331)
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 3 uses
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !332, !noalias !333, !noundef !4 ; 3 uses
  %i.x = load i64, ptr %i.u, align 8, !range !9, !alias.scope !332, !noalias !333, !noundef !4
  %i.y = sub i64 %i.x, %i.w
  %i.z = icmp ugt i64 %.sroa.0.05.i, %i.y
  br i1 %i.z, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCseqdUst8juhI_14pingora_ketama.exit.thread.i.i.i.i.i, label %_RNvXNvNtNtCskKLDkoKarTP_4core2io5write17default_write_fmtINtB2_7AdapterINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB8_3fmt5Write9write_strCseqdUst8juhI_14pingora_ketama.exit, !prof !12

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCseqdUst8juhI_14pingora_ketama.exit.thread.i.i.i.i.i: ; preds = %_RNvNtNtCskKLDkoKarTP_4core4char7methods15encode_utf8_raw.exit
  tail call fastcc void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECseqdUst8juhI_14pingora_ketama(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u, i64 noundef %i.w, i64 noundef range(i64 0, -9223372036854775808) %.sroa.0.05.i)
  %i.aa = load i64, ptr %i.v, align 8, !alias.scope !334, !noalias !333, !noundef !4
  br label %_RNvXNvNtNtCskKLDkoKarTP_4core2io5write17default_write_fmtINtB2_7AdapterINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB8_3fmt5Write9write_strCseqdUst8juhI_14pingora_ketama.exit

_RNvXNvNtNtCskKLDkoKarTP_4core2io5write17default_write_fmtINtB2_7AdapterINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB8_3fmt5Write9write_strCseqdUst8juhI_14pingora_ketama.exit: ; preds = %_RNvNtNtCskKLDkoKarTP_4core4char7methods15encode_utf8_raw.exit, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCseqdUst8juhI_14pingora_ketama.exit.thread.i.i.i.i.i
  %.sink10 = phi i64 [ %i.aa, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCseqdUst8juhI_14pingora_ketama.exit.thread.i.i.i.i.i ], [ %i.w, %_RNvNtNtCskKLDkoKarTP_4core4char7methods15encode_utf8_raw.exit ] ; 3 uses
  %i.ab = icmp sgt i64 %.sink10, -1
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !334, !noalias !333, !nonnull !4, !noundef !4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.sink10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ae, ptr noundef nonnull readonly align 4 dereferenceable(1) %.sroa.0, i64 range(i64 0, -9223372036854775808) %.sroa.0.05.i, i1 false), !noalias !335
  %i.af = add nuw i64 %.sink10, %.sroa.0.05.i
  store i64 %i.af, ptr %i.v, align 8, !alias.scope !334, !noalias !333
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYINtNvNtNtCskKLDkoKarTP_4core2io5write17default_write_fmt7AdapterINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtBb_3fmt5Write9write_fmtCseqdUst8juhI_14pingora_ketama(ptr noalias nofree noundef align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 personality ptr @rust_eh_personality {
_RNvXs_NvNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtQINtNvNtNtBa_2io5write17default_write_fmt7AdapterINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtB4_12SpecWriteFmt14spec_write_fmtCseqdUst8juhI_14pingora_ketama.exit:
  %i.a = tail call noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @0, ptr noundef nonnull %1, ptr noundef nonnull %2), !inline_history !336
  ret i1 %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #9

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #13

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #14

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort22panic_on_ord_violation() unnamed_addr #12

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #15

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #16

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtCskKLDkoKarTP_4core2io5errorNtB2_5ErrorNtNtB6_3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #17

; Function Attrs: nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable
declare noalias noundef ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr allocptr noundef nonnull, i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #18

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #8

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #20

; Function Attrs: nonlazybind uwtable
declare void @_RNvMCsJiEHfkegEo_9crc32fastNtB2_6Hasher3new(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs2_NtNtCskKLDkoKarTP_4core3net7ip_addrNtB5_6IpAddrNtNtB9_3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(17), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs3_NtNtNtCskKLDkoKarTP_4core3fmt3num3imptNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(2), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMCsJiEHfkegEo_9crc32fastNtB2_6Hasher6update(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i32 @_RNvCsJiEHfkegEo_9crc32fast4hash(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #20

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { cold nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #15 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #22 = { noinline noreturn }
attributes #23 = { noinline }
attributes #24 = { noreturn }
attributes #25 = { nounwind }
attributes #26 = { cold }
attributes #27 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (bff8e12ff 2026-08-26)"}
!4 = !{}
!5 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000, i32 2000}
!6 = !{!"llvm.loop.isvectorized", i32 1}
!7 = !{!"llvm.loop.unroll.runtime.disable"}
!8 = !{!"branch_weights", i32 4001, i32 4000000}
!9 = !{i64 0, i64 -9223372036854775808}
!10 = !{i64 0, i64 2}
!11 = !{i64 0, i64 -9223372036854775807}
!12 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!13 = !{i64 8}
!14 = distinct !{!14, i1 false, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECseqdUst8juhI_14pingora_ketama"}
!15 = distinct !{!15, !14, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECseqdUst8juhI_14pingora_ketama: argument 0"}
!16 = distinct !{!16, i1 false, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECseqdUst8juhI_14pingora_ketama"}
!17 = distinct !{!17, !16, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECseqdUst8juhI_14pingora_ketama: argument 0"}
!18 = !{!15}
!19 = !{!17}
!20 = distinct !{!20, i1 false, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECseqdUst8juhI_14pingora_ketama"}
!21 = distinct !{!21, !20, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECseqdUst8juhI_14pingora_ketama: argument 0"}
!22 = !{!21}
!23 = distinct !{!23, i1 false, !"_RINvNvMNtCskKLDkoKarTP_4core5sliceSp7reverse7revswapNtCseqdUst8juhI_14pingora_ketama7PointV1EBQ_"}
!24 = distinct !{!24, !23, !"_RINvNvMNtCskKLDkoKarTP_4core5sliceSp7reverse7revswapNtCseqdUst8juhI_14pingora_ketama7PointV1EBQ_: argument 0"}
!25 = distinct !{!25, !23, !"_RINvNvMNtCskKLDkoKarTP_4core5sliceSp7reverse7revswapNtCseqdUst8juhI_14pingora_ketama7PointV1EBQ_: argument 1"}
!26 = distinct !{!26, i1 false, !"_RNvMNtCskKLDkoKarTP_4core5sliceSNtCseqdUst8juhI_14pingora_ketama7PointV17reverseBw_"}
!27 = distinct !{!27, !26, !"_RNvMNtCskKLDkoKarTP_4core5sliceSNtCseqdUst8juhI_14pingora_ketama7PointV17reverseBw_: argument 0"}
!28 = distinct !{!28, !6, !7}
!29 = distinct !{!29, !7, !6}
!30 = !{!24}
!31 = !{!25}
!32 = !{!24, !27}
!33 = !{!25, !27}
!34 = distinct !{!34, i1 false, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort19bidirectional_mergeNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB1g_NtNtBa_3cmp10PartialOrd2ltEB1i_"}
!35 = distinct !{!35, !34, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort19bidirectional_mergeNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB1g_NtNtBa_3cmp10PartialOrd2ltEB1i_: argument 0"}
!36 = distinct !{!36, i1 false, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort8merge_upNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB14_NtNtBa_3cmp10PartialOrd2ltEB16_"}
!37 = distinct !{!37, !36, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort8merge_upNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB14_NtNtBa_3cmp10PartialOrd2ltEB16_: argument 1"}
!38 = distinct !{!38, !36, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort8merge_upNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB14_NtNtBa_3cmp10PartialOrd2ltEB16_: argument 0"}
!39 = distinct !{!39, i1 false, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort10merge_downNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB17_NtNtBa_3cmp10PartialOrd2ltEB19_"}
!40 = distinct !{!40, !39, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort10merge_downNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB17_NtNtBa_3cmp10PartialOrd2ltEB19_: argument 1"}
!41 = distinct !{!41, !39, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort10merge_downNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB17_NtNtBa_3cmp10PartialOrd2ltEB19_: argument 0"}
!42 = !{!35}
!43 = !{!38, !37, !35}
!44 = !{!41, !40, !35}
!45 = !{!38, !37}
!46 = !{!41, !40}
!47 = distinct !{!47, i1 false, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropNtCseqdUst8juhI_14pingora_ketama7PointV1EEB1v_"}
!48 = distinct !{!48, !47, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropNtCseqdUst8juhI_14pingora_ketama7PointV1EEB1v_: argument 0"}
!49 = distinct !{!49, i1 false, !"_RNvXs5_NtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropNtCseqdUst8juhI_14pingora_ketama7PointV1ENtNtNtBd_3ops4drop4Drop4dropB1i_"}
!50 = distinct !{!50, !49, !"_RNvXs5_NtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropNtCseqdUst8juhI_14pingora_ketama7PointV1ENtNtNtBd_3ops4drop4Drop4dropB1i_: argument 0"}
!51 = !{!50, !48}
!52 = distinct !{!52, i1 false, !"_RNvMNtCskKLDkoKarTP_4core5sliceSNtCseqdUst8juhI_14pingora_ketama7PointV114swap_uncheckedBw_"}
!53 = distinct !{!53, !52, !"_RNvMNtCskKLDkoKarTP_4core5sliceSNtCseqdUst8juhI_14pingora_ketama7PointV114swap_uncheckedBw_: argument 0"}
!54 = distinct !{!54, i1 false, !"_RINvNtCskKLDkoKarTP_4core3ptr10swap_chunkKj8_ECseqdUst8juhI_14pingora_ketama"}
!55 = distinct !{!55, !54, !"_RINvNtCskKLDkoKarTP_4core3ptr10swap_chunkKj8_ECseqdUst8juhI_14pingora_ketama: argument 0"}
!56 = distinct !{!56, !54, !"_RINvNtCskKLDkoKarTP_4core3ptr10swap_chunkKj8_ECseqdUst8juhI_14pingora_ketama: argument 1"}
!57 = !{!53}
!58 = !{!55}
!59 = !{!56}
!60 = distinct !{!60, i1 false, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort18small_sort_generalNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB1f_NtNtBa_3cmp10PartialOrd2ltEB1h_"}
!61 = distinct !{!61, !60, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort18small_sort_generalNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB1f_NtNtBa_3cmp10PartialOrd2ltEB1h_: argument 0"}
!62 = distinct !{!62, i1 false, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB1s_NtNtBa_3cmp10PartialOrd2ltEB1u_"}
!63 = distinct !{!63, !62, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB1s_NtNtBa_3cmp10PartialOrd2ltEB1u_: argument 0"}
!64 = distinct !{!64, !62, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB1s_NtNtBa_3cmp10PartialOrd2ltEB1u_: argument 1"}
!65 = distinct !{!65, i1 false, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropNtCseqdUst8juhI_14pingora_ketama7PointV1EEB1v_"}
!66 = distinct !{!66, !65, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropNtCseqdUst8juhI_14pingora_ketama7PointV1EEB1v_: argument 0"}
!67 = distinct !{!67, i1 false, !"_RNvXs5_NtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropNtCseqdUst8juhI_14pingora_ketama7PointV1ENtNtNtBd_3ops4drop4Drop4dropB1i_"}
!68 = distinct !{!68, !67, !"_RNvXs5_NtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropNtCseqdUst8juhI_14pingora_ketama7PointV1ENtNtNtBd_3ops4drop4Drop4dropB1i_: argument 0"}
!69 = distinct !{!69, i1 false, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort19bidirectional_mergeNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB1g_NtNtBa_3cmp10PartialOrd2ltEB1i_"}
!70 = distinct !{!70, !69, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort19bidirectional_mergeNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB1g_NtNtBa_3cmp10PartialOrd2ltEB1i_: argument 0"}
!71 = distinct !{!71, i1 false, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort8merge_upNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB14_NtNtBa_3cmp10PartialOrd2ltEB16_"}
!72 = distinct !{!72, !71, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort8merge_upNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB14_NtNtBa_3cmp10PartialOrd2ltEB16_: argument 1"}
!73 = distinct !{!73, !71, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort8merge_upNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB14_NtNtBa_3cmp10PartialOrd2ltEB16_: argument 0"}
!74 = distinct !{!74, i1 false, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort10merge_downNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB17_NtNtBa_3cmp10PartialOrd2ltEB19_"}
!75 = distinct !{!75, !74, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort10merge_downNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB17_NtNtBa_3cmp10PartialOrd2ltEB19_: argument 1"}
!76 = distinct !{!76, !74, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort10merge_downNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB17_NtNtBa_3cmp10PartialOrd2ltEB19_: argument 0"}
!77 = distinct !{!77, i1 false, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropNtCseqdUst8juhI_14pingora_ketama7PointV1EEB1v_"}
!78 = distinct !{!78, !77, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropNtCseqdUst8juhI_14pingora_ketama7PointV1EEB1v_: argument 0"}
!79 = distinct !{!79, i1 false, !"_RNvXs5_NtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropNtCseqdUst8juhI_14pingora_ketama7PointV1ENtNtNtBd_3ops4drop4Drop4dropB1i_"}
!80 = distinct !{!80, !79, !"_RNvXs5_NtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropNtCseqdUst8juhI_14pingora_ketama7PointV1ENtNtNtBd_3ops4drop4Drop4dropB1i_: argument 0"}
!81 = distinct !{!81, i1 false, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB15_NtNtBa_3cmp10PartialOrd2ltEB17_"}
!82 = distinct !{!82, !81, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB15_NtNtBa_3cmp10PartialOrd2ltEB17_: argument 0"}
!83 = distinct !{!83, i1 false, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort9partitionNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB17_NtNtBa_3cmp10PartialOrd2ltEB19_"}
!84 = distinct !{!84, !83, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort9partitionNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB17_NtNtBa_3cmp10PartialOrd2ltEB19_: argument 0"}
!85 = distinct !{!85, i1 false, !"_RNvMNtCskKLDkoKarTP_4core5sliceSNtCseqdUst8juhI_14pingora_ketama7PointV114swap_uncheckedBw_"}
!86 = distinct !{!86, !85, !"_RNvMNtCskKLDkoKarTP_4core5sliceSNtCseqdUst8juhI_14pingora_ketama7PointV114swap_uncheckedBw_: argument 0"}
!87 = distinct !{!87, i1 false, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB1x_NtNtBa_3cmp10PartialOrd2ltEB1z_"}
!88 = distinct !{!88, !87, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB1x_NtNtBa_3cmp10PartialOrd2ltEB1z_: argument 0"}
!89 = distinct !{!89, !87, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB1x_NtNtBa_3cmp10PartialOrd2ltEB1z_: argument 1"}
!90 = distinct !{!90, i1 false, !"_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB1z_NtNtBc_3cmp10PartialOrd2ltE0B1B_"}
!91 = distinct !{!91, !90, !"_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB1z_NtNtBc_3cmp10PartialOrd2ltE0B1B_: argument 0"}
!92 = distinct !{!92, i1 false, !"_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB1z_NtNtBc_3cmp10PartialOrd2ltE0B1B_"}
!93 = distinct !{!93, !92, !"_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB1z_NtNtBc_3cmp10PartialOrd2ltE0B1B_: argument 0"}
!94 = distinct !{!94, i1 false, !"_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB1z_NtNtBc_3cmp10PartialOrd2ltE0B1B_"}
!95 = distinct !{!95, !94, !"_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB1z_NtNtBc_3cmp10PartialOrd2ltE0B1B_: argument 0"}
!96 = distinct !{!96, i1 false, !"_RNvMNtCskKLDkoKarTP_4core5sliceSNtCseqdUst8juhI_14pingora_ketama7PointV114swap_uncheckedBw_"}
!97 = distinct !{!97, !96, !"_RNvMNtCskKLDkoKarTP_4core5sliceSNtCseqdUst8juhI_14pingora_ketama7PointV114swap_uncheckedBw_: argument 0"}
!98 = distinct !{!98, i1 false, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort9partitionNtCseqdUst8juhI_14pingora_ketama7PointV1NCINvB2_9quicksortB17_NvYB17_NtNtBa_3cmp10PartialOrd2ltE0EB19_"}
!99 = distinct !{!99, !98, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort9partitionNtCseqdUst8juhI_14pingora_ketama7PointV1NCINvB2_9quicksortB17_NvYB17_NtNtBa_3cmp10PartialOrd2ltE0EB19_: argument 0"}
!100 = distinct !{!100, i1 false, !"_RNvMNtCskKLDkoKarTP_4core5sliceSNtCseqdUst8juhI_14pingora_ketama7PointV114swap_uncheckedBw_"}
!101 = distinct !{!101, !100, !"_RNvMNtCskKLDkoKarTP_4core5sliceSNtCseqdUst8juhI_14pingora_ketama7PointV114swap_uncheckedBw_: argument 0"}
!102 = distinct !{!102, i1 false, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtCseqdUst8juhI_14pingora_ketama7PointV1NCINvB2_9quicksortB1x_NvYB1x_NtNtBa_3cmp10PartialOrd2ltE0EB1z_"}
!103 = distinct !{!103, !102, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtCseqdUst8juhI_14pingora_ketama7PointV1NCINvB2_9quicksortB1x_NvYB1x_NtNtBa_3cmp10PartialOrd2ltE0EB1z_: argument 0"}
!104 = distinct !{!104, !102, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtCseqdUst8juhI_14pingora_ketama7PointV1NCINvB2_9quicksortB1x_NvYB1x_NtNtBa_3cmp10PartialOrd2ltE0EB1z_: argument 1"}
!105 = distinct !{!105, i1 false, !"_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtCseqdUst8juhI_14pingora_ketama7PointV1NCINvB4_9quicksortB1z_NvYB1z_NtNtBc_3cmp10PartialOrd2ltE0E0B1B_"}
!106 = distinct !{!106, !105, !"_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtCseqdUst8juhI_14pingora_ketama7PointV1NCINvB4_9quicksortB1z_NvYB1z_NtNtBc_3cmp10PartialOrd2ltE0E0B1B_: argument 0"}
!107 = distinct !{!107, i1 false, !"_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtCseqdUst8juhI_14pingora_ketama7PointV1NCINvB4_9quicksortB1z_NvYB1z_NtNtBc_3cmp10PartialOrd2ltE0E0B1B_"}
!108 = distinct !{!108, !107, !"_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtCseqdUst8juhI_14pingora_ketama7PointV1NCINvB4_9quicksortB1z_NvYB1z_NtNtBc_3cmp10PartialOrd2ltE0E0B1B_: argument 0"}
!109 = distinct !{!109, i1 false, !"_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtCseqdUst8juhI_14pingora_ketama7PointV1NCINvB4_9quicksortB1z_NvYB1z_NtNtBc_3cmp10PartialOrd2ltE0E0B1B_"}
!110 = distinct !{!110, !109, !"_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtCseqdUst8juhI_14pingora_ketama7PointV1NCINvB4_9quicksortB1z_NvYB1z_NtNtBc_3cmp10PartialOrd2ltE0E0B1B_: argument 0"}
!111 = distinct !{!111, i1 false, !"_RNvMNtCskKLDkoKarTP_4core5sliceSNtCseqdUst8juhI_14pingora_ketama7PointV114swap_uncheckedBw_"}
!112 = distinct !{!112, !111, !"_RNvMNtCskKLDkoKarTP_4core5sliceSNtCseqdUst8juhI_14pingora_ketama7PointV114swap_uncheckedBw_: argument 0"}
!113 = !{!61}
!114 = !{!63}
!115 = !{!64}
!116 = !{!63, !61}
!117 = !{!68, !66, !63, !61}
!118 = !{!70}
!119 = !{!70, !64}
!120 = !{!73, !72, !63, !61}
!121 = !{!73, !72, !70, !64}
!122 = !{!76, !75, !63, !61}
!123 = !{!76, !75, !70, !64}
!124 = !{!63, !64, !61}
!125 = !{!63, !64}
!126 = !{!80, !78}
!127 = !{!82}
!128 = !{!84}
!129 = !{!86, !84}
!130 = !{!88}
!131 = !{!89}
!132 = !{!88, !84}
!133 = !{!88, !89, !84}
!134 = !{!89, !84}
!135 = !{!91, !89}
!136 = !{!93, !89}
!137 = !{!95, !89}
!138 = !{!97, !84}
!139 = !{!99}
!140 = !{!101, !99}
!141 = !{!103}
!142 = !{!104}
!143 = !{!103, !99}
!144 = !{!103, !104, !99}
!145 = !{!104, !99}
!146 = !{!106, !104}
!147 = !{!108, !104}
!148 = !{!110, !104}
!149 = !{!112, !99}
!150 = distinct !{!150, i1 false, !"_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCseqdUst8juhI_14pingora_ketama"}
!151 = distinct !{!151, !150, !"_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCseqdUst8juhI_14pingora_ketama: argument 0"}
!152 = !{!151}
!153 = distinct !{!153, i1 false, !"_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCseqdUst8juhI_14pingora_ketama"}
!154 = distinct !{!154, !153, !"_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCseqdUst8juhI_14pingora_ketama: argument 0"}
!155 = !{!154}
!156 = distinct !{!156, i1 false, !"_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCseqdUst8juhI_14pingora_ketama"}
!157 = distinct !{!157, !156, !"_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCseqdUst8juhI_14pingora_ketama: argument 0"}
!158 = !{!157}
!159 = !{!"branch_weights", i32 2002, i32 2000}
!160 = distinct !{!160, !6, !7}
!161 = distinct !{!161, !7, !6}
!162 = distinct !{!162, i1 false, !"_RNvMs3_CseqdUst8juhI_14pingora_ketamaNtB5_11RingBuilder3new"}
!163 = distinct !{!163, !162, !"_RNvMs3_CseqdUst8juhI_14pingora_ketamaNtB5_11RingBuilder3new: argument 0"}
!164 = distinct !{!164, i1 false, !"_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCseqdUst8juhI_14pingora_ketama"}
!165 = distinct !{!165, !164, !"_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCseqdUst8juhI_14pingora_ketama: argument 0"}
!166 = distinct !{!166, i1 false, !"_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCseqdUst8juhI_14pingora_ketama"}
!167 = distinct !{!167, !166, !"_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCseqdUst8juhI_14pingora_ketama: argument 0"}
!168 = distinct !{!168, i1 false, !"_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrE16into_boxed_sliceCseqdUst8juhI_14pingora_ketama"}
!169 = distinct !{!169, !168, !"_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrE16into_boxed_sliceCseqdUst8juhI_14pingora_ketama: argument 0"}
!170 = distinct !{!170, i1 false, !"_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner6shrinkCseqdUst8juhI_14pingora_ketama"}
!171 = distinct !{!171, !170, !"_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner6shrinkCseqdUst8juhI_14pingora_ketama: argument 0"}
!172 = distinct !{!172, i1 false, !"_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCseqdUst8juhI_14pingora_ketama"}
!173 = distinct !{!173, !172, !"_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCseqdUst8juhI_14pingora_ketama: argument 0"}
!174 = distinct !{!174, i1 false, !"_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCseqdUst8juhI_14pingora_ketama"}
!175 = distinct !{!175, !174, !"_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCseqdUst8juhI_14pingora_ketama: argument 0"}
!176 = distinct !{!176, i1 false, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCseqdUst8juhI_14pingora_ketama"}
!177 = distinct !{!177, !176, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCseqdUst8juhI_14pingora_ketama: argument 0"}
!178 = distinct !{!178, i1 false, !"_RNvYINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_fmtCseqdUst8juhI_14pingora_ketama"}
!179 = distinct !{!179, !178, !"_RNvYINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_fmtCseqdUst8juhI_14pingora_ketama: argument 0"}
!180 = distinct !{!180, i1 false, !"_RNvXs7_NtNtCsexYYUdYSQU6_5alloc2io5implsINtNtB9_3vec3VechENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCseqdUst8juhI_14pingora_ketama"}
!181 = distinct !{!181, !180, !"_RNvXs7_NtNtCsexYYUdYSQU6_5alloc2io5implsINtNtB9_3vec3VechENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCseqdUst8juhI_14pingora_ketama: argument 0"}
!182 = distinct !{!182, i1 false, !"_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCseqdUst8juhI_14pingora_ketama"}
!183 = distinct !{!183, !182, !"_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCseqdUst8juhI_14pingora_ketama: argument 0"}
!184 = distinct !{!184, i1 false, !"_RNvXs2_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhEE11spec_extendCseqdUst8juhI_14pingora_ketama"}
!185 = distinct !{!185, !184, !"_RNvXs2_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhEE11spec_extendCseqdUst8juhI_14pingora_ketama: argument 0"}
!186 = distinct !{!186, i1 false, !"_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCseqdUst8juhI_14pingora_ketama"}
!187 = distinct !{!187, !186, !"_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCseqdUst8juhI_14pingora_ketama: argument 0"}
!188 = distinct !{!188, i1 false, !"_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCseqdUst8juhI_14pingora_ketama"}
!189 = distinct !{!189, !188, !"_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCseqdUst8juhI_14pingora_ketama: argument 0"}
!190 = distinct !{!190, !180, !"_RNvXs7_NtNtCsexYYUdYSQU6_5alloc2io5implsINtNtB9_3vec3VechENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCseqdUst8juhI_14pingora_ketama: argument 1"}
!191 = distinct !{!191, !182, !"_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCseqdUst8juhI_14pingora_ketama: argument 1"}
!192 = distinct !{!192, i1 false, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCseqdUst8juhI_14pingora_ketama"}
!193 = distinct !{!193, !192, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCseqdUst8juhI_14pingora_ketama: argument 0"}
!194 = distinct !{!194, i1 false, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrE8push_mutCseqdUst8juhI_14pingora_ketama"}
!195 = distinct !{!195, !194, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrE8push_mutCseqdUst8juhI_14pingora_ketama: argument 0"}
!196 = distinct !{!196, !194, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrE8push_mutCseqdUst8juhI_14pingora_ketama: argument 1"}
!197 = distinct !{!197, i1 false, !"_RNvMs3_CseqdUst8juhI_14pingora_ketamaNtB5_11RingBuilder4push"}
!198 = distinct !{!198, !197, !"_RNvMs3_CseqdUst8juhI_14pingora_ketamaNtB5_11RingBuilder4push: argument 0"}
!199 = distinct !{!199, i1 false, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtCseqdUst8juhI_14pingora_ketama7PointV1E8push_mutBH_"}
!200 = distinct !{!200, !199, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtCseqdUst8juhI_14pingora_ketama7PointV1E8push_mutBH_: argument 0"}
!201 = distinct !{!201, i1 false, !"_RNvMs3_CseqdUst8juhI_14pingora_ketamaNtB5_11RingBuilder4sort"}
!202 = distinct !{!202, !201, !"_RNvMs3_CseqdUst8juhI_14pingora_ketamaNtB5_11RingBuilder4sort: argument 0"}
!203 = distinct !{!203, i1 false, !"_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtCseqdUst8juhI_14pingora_ketama7PointV1E8dedup_byNCNvMs3_BH_NtBH_11RingBuilder4sort0EBH_"}
!204 = distinct !{!204, !203, !"_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtCseqdUst8juhI_14pingora_ketama7PointV1E8dedup_byNCNvMs3_BH_NtBH_11RingBuilder4sort0EBH_: argument 0"}
!205 = distinct !{!205, i1 false, !"_RNvXs4_CseqdUst8juhI_14pingora_ketamaNtB5_13VersionedRingINtNtCskKLDkoKarTP_4core7convert4FromNtB5_11RingBuilderE4from"}
!206 = distinct !{!206, !205, !"_RNvXs4_CseqdUst8juhI_14pingora_ketamaNtB5_13VersionedRingINtNtCskKLDkoKarTP_4core7convert4FromNtB5_11RingBuilderE4from: argument 0"}
!207 = distinct !{!207, i1 false, !"_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtCseqdUst8juhI_14pingora_ketama7PointV1E16into_boxed_sliceBG_"}
!208 = distinct !{!208, !207, !"_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtCseqdUst8juhI_14pingora_ketama7PointV1E16into_boxed_sliceBG_: argument 0"}
!209 = distinct !{!209, i1 false, !"_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner6shrinkCseqdUst8juhI_14pingora_ketama"}
!210 = distinct !{!210, !209, !"_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner6shrinkCseqdUst8juhI_14pingora_ketama: argument 0"}
!211 = distinct !{!211, i1 false, !"_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCseqdUst8juhI_14pingora_ketama"}
!212 = distinct !{!212, !211, !"_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCseqdUst8juhI_14pingora_ketama: argument 0"}
!213 = !{!163}
!214 = !{!165, !163}
!215 = !{!167}
!216 = !{!173, !171, !169}
!217 = !{!169}
!218 = !{!175}
!219 = !{i16 0, i16 2}
!220 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!221 = !{!177}
!222 = !{!179}
!223 = !{!181}
!224 = !{!183}
!225 = !{!185}
!226 = !{!187}
!227 = !{!189, !187, !185, !183, !181, !179}
!228 = !{!191, !190}
!229 = !{!187, !185, !183, !181, !179}
end_hunk_1
