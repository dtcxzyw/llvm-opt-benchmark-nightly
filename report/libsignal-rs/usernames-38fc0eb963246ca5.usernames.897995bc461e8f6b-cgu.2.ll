Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libsignal-rs/original/usernames-38fc0eb963246ca5.usernames.897995bc461e8f6b-cgu.2?download=true
inline.NumInlined: 161
inline.NumDeleted: 95
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRhNtB6_5Debug3fmtCsbNM6vbj4kjf_9usernames }>, align 8
@1 = private unnamed_addr constant [105 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/prost-0.14.4/src/encoding/varint.rs\00", align 1
@2 = private unnamed_addr constant [40 x i8] c"\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 8
@3 = private unnamed_addr constant [107 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/curve25519-dalek-5.0.0/src/edwards.rs\00", align 1
@4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @3, [16 x i8] c"j\00\00\00\00\00\00\00\DA\03\00\00\09\00\00\00" }>, align 8
@5 = private unnamed_addr constant [32 x i8] c"rust/usernames/src/constants.rs\00", align 1
@6 = private unnamed_addr constant [24 x i8] c"can decompress ristretto", align 1
@7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @5, [16 x i8] c"\1F\00\00\00\00\00\00\00\0E\00\00\00!\00\00\00" }>, align 8
@8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"h\00\00\00\00\00\00\00Y\00\00\00\05\00\00\00" }>, align 8
@9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"h\00\00\00\00\00\00\00_\00\00\00\05\00\00\00" }>, align 8
@10 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"h\00\00\00\00\00\00\00e\00\00\00\05\00\00\00" }>, align 8
@11 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"h\00\00\00\00\00\00\00s\00\00\00\05\00\00\00" }>, align 8
@12 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"h\00\00\00\00\00\00\00y\00\00\00\05\00\00\00" }>, align 8
@13 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"h\00\00\00\00\00\00\00\7F\00\00\00\05\00\00\00" }>, align 8
@14 = private unnamed_addr constant [2 x i8] c"()", align 1

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvNtCs43OB2dM8s8d_5prost8encoding10skip_fieldQRShECsbNM6vbj4kjf_9usernames(i8 noundef range(i8 0, 6) %0, i32 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 5 uses
  %i.d = alloca [48 x i8], align 8                ; 4 uses
  %i.e = alloca [48 x i8], align 8                ; 4 uses
  %i.f = alloca [48 x i8], align 8                ; 4 uses
  %i.g = alloca [48 x i8], align 8                ; 4 uses
  %i.h = icmp eq i32 %3, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 -9223372036854775806, ptr %i.d, align 8
  %i.i = call noundef nonnull align 8 ptr @_RNvXs1_NtCs43OB2dM8s8d_5prost5errorNtB5_11DecodeErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %.loopexit34

bb.c:                                             ; preds = %bb.a
  switch i8 %0, label %default.unreachable76 [
    i8 0, label %bb.d
    i8 1, label %bb.o
    i8 2, label %bb.e
    i8 3, label %.preheader
    i8 4, label %bb.m
    i8 5, label %bb.n
  ]

.preheader:                                       ; preds = %bb.c
  %i.j = add i32 %3, -1
  br label %bb.f

.loopexit34:                                      ; preds = %bb.t, %bb.e, %bb.d, %bb.s, %bb.m, %.loopexit, %bb.u, %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsbNM6vbj4kjf_9usernames.exit, %bb.b
  %.sroa.0.0 = phi ptr [ %i.i, %bb.b ], [ %i.ah, %bb.m ], [ %i.at, %bb.u ], [ null, %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsbNM6vbj4kjf_9usernames.exit ], [ %i.m, %bb.d ], [ %.sroa.11.0.ph, %.loopexit ], [ %i.an, %bb.s ], [ %i.q, %bb.e ], [ %i.ao, %bb.t ]
  ret ptr %.sroa.0.0

default.unreachable76:                            ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.k = tail call fastcc { i64, ptr } @_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef align 8 dereferenceable(8) %2) #23 ; 2 uses
  %i.l = extractvalue { i64, ptr } %i.k, 0
  %i.m = extractvalue { i64, ptr } %i.k, 1
  %i.n = trunc nuw i64 %i.l to i1
  br i1 %i.n, label %.loopexit34, label %.thread

bb.e:                                             ; preds = %bb.c
  %i.o = tail call fastcc { i64, ptr } @_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef align 8 dereferenceable(8) %2) #23 ; 2 uses
  %i.p = extractvalue { i64, ptr } %i.o, 0
  %i.q = extractvalue { i64, ptr } %i.o, 1        ; 2 uses
  %i.r = trunc nuw i64 %i.p to i1
  br i1 %i.r, label %.loopexit34, label %bb.p

bb.f:                                             ; preds = %.preheader, %bb.t
  %i.s = tail call fastcc { i64, ptr } @_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %2) #23, !noalias !19 ; 2 uses
  %i.t = extractvalue { i64, ptr } %i.s, 0
  %i.u = extractvalue { i64, ptr } %i.s, 1        ; 3 uses
  %i.v = ptrtoint ptr %i.u to i64                 ; 3 uses
  %i.w = trunc nuw i64 %i.t to i1
  br i1 %i.w, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = icmp ugt ptr %i.u, inttoptr (i64 4294967295 to ptr)
  br i1 %i.x, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = and i64 %i.v, 7                          ; 4 uses
  %switch = icmp samesign ult i64 %i.y, 6
  br i1 %switch, label %bb.k, label %bb.j

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !20
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.v, ptr %i.z, align 8, !noalias !20
  store i64 -9223372036854775804, ptr %i.c, align 8, !noalias !20
  %i.aa = call noundef nonnull align 8 ptr @_RNvXs1_NtCs43OB2dM8s8d_5prost5errorNtB5_11DecodeErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.c), !noalias !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !20
  br label %.loopexit

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !20
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.y, ptr %i.ab, align 8, !noalias !20
  store i64 -9223372036854775805, ptr %i.a, align 8, !noalias !20
  %i.ac = call noundef nonnull align 8 ptr @_RNvXs1_NtCs43OB2dM8s8d_5prost5errorNtB5_11DecodeErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.a), !noalias !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !20
  br label %.loopexit

bb.k:                                             ; preds = %bb.h
  %i.ad = trunc nuw i64 %i.v to i32
  %i.ae = lshr i32 %i.ad, 3                       ; 3 uses
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !20
  store i64 -9223372036854775803, ptr %i.b, align 8, !noalias !20
  %i.ag = call noundef nonnull align 8 ptr @_RNvXs1_NtCs43OB2dM8s8d_5prost5errorNtB5_11DecodeErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.b), !noalias !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !20
  br label %.loopexit

bb.m:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 -9223372036854775799, ptr %i.f, align 8
  %i.ah = call noundef nonnull align 8 ptr @_RNvXs1_NtCs43OB2dM8s8d_5prost5errorNtB5_11DecodeErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %.loopexit34

bb.n:                                             ; preds = %bb.c
  br label %bb.o

.thread:                                          ; preds = %bb.d, %bb.r
  %.val2229 = load ptr, ptr %2, align 8, !nonnull !4, !align !5, !noundef !4 ; 2 uses
  %i.ai = getelementptr i8, ptr %.val2229, i64 8  ; 2 uses
  %.val.i30 = load i64, ptr %i.ai, align 8, !noundef !4
  br label %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsbNM6vbj4kjf_9usernames.exit

bb.o:                                             ; preds = %bb.c, %bb.p, %bb.n
  %.sroa.013.0 = phi i64 [ 8, %bb.c ], [ 4, %bb.n ], [ %i.al, %bb.p ] ; 2 uses
  %.val22 = load ptr, ptr %2, align 8, !nonnull !4, !align !5, !noundef !4 ; 2 uses
  %i.aj = getelementptr i8, ptr %.val22, i64 8    ; 2 uses
  %.val.i = load i64, ptr %i.aj, align 8, !noundef !4 ; 2 uses
  %i.ak = icmp ugt i64 %.sroa.013.0, %.val.i
  br i1 %i.ak, label %bb.u, label %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsbNM6vbj4kjf_9usernames.exit

bb.p:                                             ; preds = %bb.e
  %i.al = ptrtoint ptr %i.q to i64
  br label %bb.o

.loopexit:                                        ; preds = %bb.f, %bb.i, %bb.j, %bb.l
  %.sroa.11.0.ph = phi ptr [ %i.aa, %bb.i ], [ %i.ag, %bb.l ], [ %i.ac, %bb.j ], [ %i.u, %bb.f ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11.0.ph) ]
  br label %.loopexit34

bb.q:                                             ; preds = %bb.k
  %i.am = icmp eq i64 %i.y, 4
  br i1 %i.am, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %.not21 = icmp eq i32 %i.ae, %1
  br i1 %.not21, label %.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 -9223372036854775799, ptr %i.g, align 8
  %i.an = call noundef nonnull align 8 ptr @_RNvXs1_NtCs43OB2dM8s8d_5prost5errorNtB5_11DecodeErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %.loopexit34

bb.t:                                             ; preds = %bb.q
  %.sroa.11.8.extract.trunc = trunc nuw nsw i64 %i.y to i8
  %i.ao = tail call noundef align 8 ptr @_RINvNtCs43OB2dM8s8d_5prost8encoding10skip_fieldQRShECsbNM6vbj4kjf_9usernames(i8 noundef %.sroa.11.8.extract.trunc, i32 noundef %i.ae, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %i.j) ; 2 uses
  %.not = icmp eq ptr %i.ao, null
  br i1 %.not, label %bb.f, label %.loopexit34

_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsbNM6vbj4kjf_9usernames.exit: ; preds = %bb.o, %.thread
  %.val.i33 = phi i64 [ %.val.i30, %.thread ], [ %.val.i, %bb.o ]
  %i.ap = phi ptr [ %i.ai, %.thread ], [ %i.aj, %bb.o ]
  %.val2232 = phi ptr [ %.val2229, %.thread ], [ %.val22, %bb.o ] ; 2 uses
  %.sroa.013.031 = phi i64 [ 0, %.thread ], [ %.sroa.013.0, %bb.o ] ; 2 uses
  %i.aq = load ptr, ptr %.val2232, align 8, !alias.scope !21, !nonnull !4, !noundef !4
  %i.ar = sub nuw i64 %.val.i33, %.sroa.013.031
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.sroa.013.031
  store ptr %i.as, ptr %.val2232, align 8, !alias.scope !21, !captures !6
  store i64 %i.ar, ptr %i.ap, align 8, !alias.scope !21
  br label %.loopexit34

bb.u:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 -9223372036854775801, ptr %i.e, align 8
  %i.at = call noundef nonnull align 8 ptr @_RNvXs1_NtCs43OB2dM8s8d_5prost5errorNtB5_11DecodeErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %.loopexit34
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecAaj40_EECsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecAaj40_ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %.val2 = load i64, ptr %0, align 8, !range !7, !alias.scope !28, !noundef !4 ; 2 uses
  %i.b = icmp eq i64 %.val2, 0
  br i1 %i.b, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVecAaj40_EECsbNM6vbj4kjf_9usernames.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3 = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4
  %i.d = shl nuw i64 %.val2, 6
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) 1) #24, !noalias !29
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVecAaj40_EECsbNM6vbj4kjf_9usernames.exit

bb.d:                                             ; preds = %bb.a
  %.val = load i64, ptr %0, align 8, !range !7, !alias.scope !28, !noundef !4 ; 2 uses
end_hunk_0
begin_hunk_1_@_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc6borrow3CoweEECsbNM6vbj4kjf_9usernames:bb.a
bb.e:                                             ; preds = %bb.b
  %.val.i.i = load i64, ptr %0, align 8, !range !7, !alias.scope !50, !noundef !4 ; 2 uses
  %i.f = icmp eq i64 %.val.i.i, 0
  br i1 %i.f, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECsbNM6vbj4kjf_9usernames.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i = load ptr, ptr %i.g, align 8, !alias.scope !51, !nonnull !4, !noundef !4
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #24, !noalias !53
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECsbNM6vbj4kjf_9usernames.exit

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVechEECsbNM6vbj4kjf_9usernames.exit.i.i: ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { i64, ptr } @_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !align !5, !noundef !4 ; 4 uses
  %.val.i = load ptr, ptr %.val, align 8, !nonnull !4, !noundef !4 ; 13 uses
  %i.c = getelementptr i8, ptr %.val, i64 8       ; 3 uses
  %.val1.i = load i64, ptr %i.c, align 8, !noundef !4 ; 14 uses
  %i.d = icmp eq i64 %.val1.i, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 -9223372036854775807, ptr %i.b, align 8
  %i.e = call noundef nonnull align 8 ptr @_RNvXs1_NtCs43OB2dM8s8d_5prost5errorNtB5_11DecodeErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.f = ptrtoint ptr %i.e to i64
  br label %bb.al

bb.c:                                             ; preds = %bb.a
  %i.g = load i8, ptr %.val.i, align 1, !noundef !4 ; 3 uses
  %i.h = icmp sgt i8 %i.g, -1
  br i1 %i.h, label %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsbNM6vbj4kjf_9usernames.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = icmp ugt i64 %.val1.i, 10
  br i1 %i.i, label %.thread, label %bb.ai

_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsbNM6vbj4kjf_9usernames.exit: ; preds = %bb.c
  %i.j = add i64 %.val1.i, -1
  %i.k = getelementptr inbounds nuw i8, ptr %.val.i, i64 1
  store ptr %i.k, ptr %.val, align 8, !alias.scope !61, !captures !6
  store i64 %i.j, ptr %i.c, align 8, !alias.scope !61
  %i.l = zext nneg i8 %i.g to i64
  br label %bb.al

bb.e:                                             ; preds = %bb.ai
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62)
  br label %.thread

.thread:                                          ; preds = %bb.e, %bb.d
  %i.m = zext i8 %i.g to i32
  %i.n = add nsw i32 %i.m, -128
  %i.o = icmp ne i64 %.val1.i, 1
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %.val.i, i64 1
  %i.q = load i8, ptr %i.p, align 1, !alias.scope !62, !noalias !63, !noundef !4 ; 2 uses
  %i.r = zext i8 %i.q to i32
  %i.s = shl nuw nsw i32 %i.r, 7
  %i.t = or disjoint i32 %i.s, %i.n               ; 3 uses
  %i.u = icmp sgt i8 %i.q, -1
  br i1 %i.u, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.thread
  %i.v = icmp samesign ult i32 %i.t, 16384
  br i1 %i.v, label %bb.i, label %bb.h

bb.g:                                             ; preds = %.thread
  %i.w = zext nneg i32 %i.t to i64
  br label %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsbNM6vbj4kjf_9usernames.exit6

bb.h:                                             ; preds = %bb.f
  %i.x = add nsw i32 %i.t, -16384
  %i.y = icmp samesign ugt i64 %.val1.i, 2
  tail call void @llvm.assume(i1 %i.y)
  %i.z = getelementptr inbounds nuw i8, ptr %.val.i, i64 2
  %i.aa = load i8, ptr %i.z, align 1, !alias.scope !62, !noalias !63, !noundef !4 ; 2 uses
  %i.ab = zext i8 %i.aa to i32
  %i.ac = shl nuw nsw i32 %i.ab, 14
  %i.ad = or disjoint i32 %i.ac, %i.x             ; 3 uses
  %i.ae = icmp sgt i8 %i.aa, -1
  br i1 %i.ae, label %bb.k, label %bb.j

bb.i:                                             ; preds = %bb.f
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #25, !noalias !64
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.af = icmp samesign ult i32 %i.ad, 2097152
  br i1 %i.af, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.ag = zext nneg i32 %i.ad to i64
  br label %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsbNM6vbj4kjf_9usernames.exit6

bb.l:                                             ; preds = %bb.j
  %i.ah = add nsw i32 %i.ad, -2097152
  %i.ai = icmp samesign ugt i64 %.val1.i, 3
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = getelementptr inbounds nuw i8, ptr %.val.i, i64 3
  %i.ak = load i8, ptr %i.aj, align 1, !alias.scope !62, !noalias !63, !noundef !4 ; 2 uses
  %i.al = zext i8 %i.ak to i32
  %i.am = shl nuw nsw i32 %i.al, 21
  %i.an = add nuw nsw i32 %i.ah, %i.am            ; 3 uses
  %i.ao = icmp sgt i8 %i.ak, -1
  br i1 %i.ao, label %bb.o, label %bb.n

bb.m:                                             ; preds = %bb.j
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #25, !noalias !64
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.ap = icmp samesign ult i32 %i.an, 268435456
  br i1 %i.ap, label %bb.q, label %bb.p

bb.o:                                             ; preds = %bb.l
  %i.aq = zext nneg i32 %i.an to i64
  br label %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsbNM6vbj4kjf_9usernames.exit6

bb.p:                                             ; preds = %bb.n
  %i.ar = add nsw i32 %i.an, -268435456
  %i.as = zext nneg i32 %i.ar to i64              ; 5 uses
  %i.at = icmp samesign ugt i64 %.val1.i, 4
  tail call void @llvm.assume(i1 %i.at)
  %i.au = getelementptr inbounds nuw i8, ptr %.val.i, i64 4
  %i.av = load i8, ptr %i.au, align 1, !alias.scope !62, !noalias !63, !noundef !4 ; 3 uses
  %i.aw = icmp sgt i8 %i.av, -1
  br i1 %i.aw, label %bb.ah, label %bb.r

bb.q:                                             ; preds = %bb.n
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #25, !noalias !64
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.ax = zext i8 %i.av to i32
  %i.ay = add nsw i32 %i.ax, -128
  %i.az = icmp samesign ugt i64 %.val1.i, 5
  tail call void @llvm.assume(i1 %i.az)
  %i.ba = getelementptr inbounds nuw i8, ptr %.val.i, i64 5
  %i.bb = load i8, ptr %i.ba, align 1, !alias.scope !62, !noalias !63, !noundef !4 ; 2 uses
  %i.bc = zext i8 %i.bb to i32
  %i.bd = shl nuw nsw i32 %i.bc, 7
  %i.be = or disjoint i32 %i.bd, %i.ay            ; 3 uses
  %i.bf = icmp sgt i8 %i.bb, -1
  br i1 %i.bf, label %bb.ag, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bg = icmp samesign ult i32 %i.be, 16384
  br i1 %i.bg, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bh = add nsw i32 %i.be, -16384
  %i.bi = icmp samesign ugt i64 %.val1.i, 6
  tail call void @llvm.assume(i1 %i.bi)
  %i.bj = getelementptr inbounds nuw i8, ptr %.val.i, i64 6
  %i.bk = load i8, ptr %i.bj, align 1, !alias.scope !62, !noalias !63, !noundef !4 ; 2 uses
  %i.bl = zext i8 %i.bk to i32
  %i.bm = shl nuw nsw i32 %i.bl, 14
  %i.bn = or disjoint i32 %i.bm, %i.bh            ; 3 uses
  %i.bo = icmp sgt i8 %i.bk, -1
  br i1 %i.bo, label %bb.af, label %bb.v

bb.u:                                             ; preds = %bb.s
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #25, !noalias !64
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.bp = icmp samesign ult i32 %i.bn, 2097152
  br i1 %i.bp, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bq = add nsw i32 %i.bn, -2097152
  %i.br = icmp samesign ugt i64 %.val1.i, 7
  tail call void @llvm.assume(i1 %i.br)
  %i.bs = getelementptr inbounds nuw i8, ptr %.val.i, i64 7
  %i.bt = load i8, ptr %i.bs, align 1, !alias.scope !62, !noalias !63, !noundef !4 ; 2 uses
  %i.bu = zext i8 %i.bt to i32
  %i.bv = shl nuw nsw i32 %i.bu, 21
  %i.bw = add nuw nsw i32 %i.bq, %i.bv            ; 3 uses
  %i.bx = icmp sgt i8 %i.bt, -1
  br i1 %i.bx, label %bb.ae, label %bb.y

bb.x:                                             ; preds = %bb.v
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #25, !noalias !64
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.by = icmp samesign ult i32 %i.bw, 268435456
  br i1 %i.by, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bz = add nsw i32 %i.bw, -268435456
  %i.ca = zext nneg i32 %i.bz to i64
  %i.cb = shl nuw nsw i64 %i.ca, 28
  %i.cc = add nuw nsw i64 %i.cb, %i.as            ; 2 uses
  %i.cd = icmp samesign ugt i64 %.val1.i, 8
  tail call void @llvm.assume(i1 %i.cd)
  %i.ce = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.cf = load i8, ptr %i.ce, align 1, !alias.scope !62, !noalias !63, !noundef !4 ; 3 uses
  %i.cg = icmp sgt i8 %i.cf, -1
  br i1 %i.cg, label %bb.ad, label %bb.ab

bb.aa:                                            ; preds = %bb.y
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #25, !noalias !64
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.ch = icmp samesign ugt i64 %.val1.i, 9
  tail call void @llvm.assume(i1 %i.ch)
  %i.ci = getelementptr inbounds nuw i8, ptr %.val.i, i64 9
  %i.cj = load i8, ptr %i.ci, align 1, !alias.scope !62, !noalias !63, !noundef !4 ; 2 uses
  %i.ck = icmp ult i8 %i.cj, 2
  br i1 %i.ck, label %bb.ac, label %bb.ak

bb.ac:                                            ; preds = %bb.ab
  %i.cl = zext nneg i8 %i.cj to i64
  %1 = shl nuw i64 %i.cl, 63
  %i.cm = and i8 %i.cf, 127
  %i.cn = zext nneg i8 %i.cm to i64
  %i.co = shl nuw nsw i64 %i.cn, 56
  %i.cp = add nuw nsw i64 %i.co, %i.cc
  %i.cq = or disjoint i64 %1, %i.cp
  br label %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsbNM6vbj4kjf_9usernames.exit6

bb.ad:                                            ; preds = %bb.z
  %i.cr = zext nneg i8 %i.cf to i64
  %i.cs = shl nuw nsw i64 %i.cr, 56
  %i.ct = add nuw nsw i64 %i.cs, %i.cc
  br label %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsbNM6vbj4kjf_9usernames.exit6

bb.ae:                                            ; preds = %bb.w
  %i.cu = zext nneg i32 %i.bw to i64
  %i.cv = shl nuw nsw i64 %i.cu, 28
  %i.cw = add nuw nsw i64 %i.cv, %i.as
  br label %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsbNM6vbj4kjf_9usernames.exit6

bb.af:                                            ; preds = %bb.t
  %i.cx = zext nneg i32 %i.bn to i64
  %i.cy = shl nuw nsw i64 %i.cx, 28
  %i.cz = add nuw nsw i64 %i.cy, %i.as
  br label %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsbNM6vbj4kjf_9usernames.exit6

bb.ag:                                            ; preds = %bb.r
  %i.da = zext nneg i32 %i.be to i64
  %i.db = shl nuw nsw i64 %i.da, 28
  %i.dc = add nuw nsw i64 %i.db, %i.as
  br label %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsbNM6vbj4kjf_9usernames.exit6

bb.ah:                                            ; preds = %bb.p
  %i.dd = zext nneg i8 %i.av to i64
  %i.de = shl nuw nsw i64 %i.dd, 28
  %i.df = add nuw nsw i64 %i.de, %i.as
  br label %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsbNM6vbj4kjf_9usernames.exit6

bb.ai:                                            ; preds = %bb.d
  %i.dg = getelementptr i8, ptr %.val.i, i64 %.val1.i
  %i.dh = getelementptr i8, ptr %i.dg, i64 -1
  %i.di = load i8, ptr %i.dh, align 1, !noundef !4
  %i.dj = icmp sgt i8 %i.di, -1
  br i1 %i.dj, label %bb.e, label %bb.aj, !prof !9

bb.aj:                                            ; preds = %bb.ai
  %i.dk = tail call { i64, ptr } @_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint18decode_varint_slowQRShECsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #26 ; 2 uses
  %i.dl = extractvalue { i64, ptr } %i.dk, 0
  %i.dm = extractvalue { i64, ptr } %i.dk, 1
  %i.dn = ptrtoint ptr %i.dm to i64
  br label %bb.al

bb.ak:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !64
  store i64 -9223372036854775807, ptr %i.a, align 8, !noalias !64
  %i.do = call noundef nonnull align 8 ptr @_RNvXs1_NtCs43OB2dM8s8d_5prost5errorNtB5_11DecodeErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.a), !noalias !64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !64
  %i.dp = ptrtoint ptr %i.do to i64
  br label %bb.al

_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsbNM6vbj4kjf_9usernames.exit6: ; preds = %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.ad, %bb.ac, %bb.o, %bb.k, %bb.g
  %.sroa.18.0.ph = phi i64 [ 10, %bb.ac ], [ 9, %bb.ad ], [ 8, %bb.ae ], [ 7, %bb.af ], [ 6, %bb.ag ], [ 5, %bb.ah ], [ 4, %bb.o ], [ 3, %bb.k ], [ 2, %bb.g ] ; 2 uses
  %.sroa.5.0.ph = phi i64 [ %i.cq, %bb.ac ], [ %i.ct, %bb.ad ], [ %i.cw, %bb.ae ], [ %i.cz, %bb.af ], [ %i.dc, %bb.ag ], [ %i.df, %bb.ah ], [ %i.aq, %bb.o ], [ %i.ag, %bb.k ], [ %i.w, %bb.g ]
  %i.dq = sub nuw i64 %.val1.i, %.sroa.18.0.ph
  %i.dr = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.18.0.ph
  store ptr %i.dr, ptr %.val, align 8, !alias.scope !65, !captures !6
  store i64 %i.dq, ptr %i.c, align 8, !alias.scope !65
  br label %bb.al

bb.al:                                            ; preds = %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsbNM6vbj4kjf_9usernames.exit, %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsbNM6vbj4kjf_9usernames.exit6, %bb.aj, %bb.b, %bb.ak
  %.sroa.6.0 = phi i64 [ %i.f, %bb.b ], [ %i.l, %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsbNM6vbj4kjf_9usernames.exit ], [ %i.dp, %bb.ak ], [ %.sroa.5.0.ph, %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsbNM6vbj4kjf_9usernames.exit6 ], [ %i.dn, %bb.aj ]
  %.sroa.0.0 = phi i64 [ 1, %bb.b ], [ 0, %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsbNM6vbj4kjf_9usernames.exit ], [ 1, %bb.ak ], [ 0, %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsbNM6vbj4kjf_9usernames.exit6 ], [ %i.dl, %bb.aj ]
  %i.ds = inttoptr i64 %.sroa.6.0 to ptr
  %i.dt = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.du = insertvalue { i64, ptr } %i.dt, ptr %i.ds, 1
  ret { i64, ptr } %i.du
}

; Function Attrs: cold noinline nonlazybind uwtable
define { i64, ptr } @_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint18decode_varint_slowQRShECsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !align !5, !noundef !4 ; 11 uses
  %i.c = getelementptr i8, ptr %.val, i64 8
  %.val.i = load i64, ptr %i.c, align 8, !noundef !4 ; 10 uses
  %exitcond.not = icmp eq i64 %.val.i, 0
  br i1 %exitcond.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.v, %bb.u, %bb.s, %bb.q, %bb.o, %bb.m, %bb.k, %bb.i, %bb.g, %bb.e, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 -9223372036854775807, ptr %i.a, align 8
  %i.d = call noundef nonnull align 8 ptr @_RNvXs1_NtCs43OB2dM8s8d_5prost5errorNtB5_11DecodeErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.c

bb.c:                                             ; preds = %.thread, %bb.x, %bb.b
  %.sroa.4.0 = phi ptr [ %i.d, %bb.b ], [ %i.bn, %bb.x ], [ %i.bm, %.thread ]
  %.sroa.0.0 = phi i64 [ 1, %bb.b ], [ 1, %bb.x ], [ 0, %.thread ]
  %i.e = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.f = insertvalue { i64, ptr } %i.e, ptr %.sroa.4.0, 1
  ret { i64, ptr } %i.f

bb.d:                                             ; preds = %bb.a
  %i.g = tail call noundef i8 @_RNvYRShNtNtNtCs17cqnTMcAHA_5bytes3buf8buf_impl3Buf6get_u8CsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.val) ; 2 uses
  %i.h = and i8 %i.g, 127
  %i.i = zext nneg i8 %i.h to i64                 ; 2 uses
  %i.j = icmp sgt i8 %i.g, -1
  br i1 %i.j, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %exitcond.1.not = icmp eq i64 %.val.i, 1
  br i1 %exitcond.1.not, label %bb.b, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = tail call noundef i8 @_RNvYRShNtNtNtCs17cqnTMcAHA_5bytes3buf8buf_impl3Buf6get_u8CsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.val) ; 2 uses
  %i.l = and i8 %i.k, 127
  %i.m = zext nneg i8 %i.l to i64
  %i.n = shl nuw nsw i64 %i.m, 7
  %i.o = or disjoint i64 %i.n, %i.i               ; 2 uses
  %i.p = icmp sgt i8 %i.k, -1
  br i1 %i.p, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %exitcond.2.not = icmp eq i64 %.val.i, 2
  br i1 %exitcond.2.not, label %bb.b, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = tail call noundef i8 @_RNvYRShNtNtNtCs17cqnTMcAHA_5bytes3buf8buf_impl3Buf6get_u8CsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.val) ; 2 uses
  %i.r = and i8 %i.q, 127
  %i.s = zext nneg i8 %i.r to i64
  %i.t = shl nuw nsw i64 %i.s, 14
  %i.u = or disjoint i64 %i.t, %i.o               ; 2 uses
  %i.v = icmp sgt i8 %i.q, -1
  br i1 %i.v, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %exitcond.3.not = icmp eq i64 %.val.i, 3
  br i1 %exitcond.3.not, label %bb.b, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = tail call noundef i8 @_RNvYRShNtNtNtCs17cqnTMcAHA_5bytes3buf8buf_impl3Buf6get_u8CsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.val) ; 2 uses
  %i.x = and i8 %i.w, 127
  %i.y = zext nneg i8 %i.x to i64
  %i.z = shl nuw nsw i64 %i.y, 21
  %i.aa = or disjoint i64 %i.z, %i.u              ; 2 uses
  %i.ab = icmp sgt i8 %i.w, -1
  br i1 %i.ab, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %exitcond.4.not = icmp eq i64 %.val.i, 4
  br i1 %exitcond.4.not, label %bb.b, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = tail call noundef i8 @_RNvYRShNtNtNtCs17cqnTMcAHA_5bytes3buf8buf_impl3Buf6get_u8CsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.val) ; 2 uses
  %i.ad = and i8 %i.ac, 127
  %i.ae = zext nneg i8 %i.ad to i64
  %i.af = shl nuw nsw i64 %i.ae, 28
  %i.ag = or disjoint i64 %i.af, %i.aa            ; 2 uses
  %i.ah = icmp sgt i8 %i.ac, -1
  br i1 %i.ah, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %exitcond.5.not = icmp eq i64 %.val.i, 5
  br i1 %exitcond.5.not, label %bb.b, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ai = tail call noundef i8 @_RNvYRShNtNtNtCs17cqnTMcAHA_5bytes3buf8buf_impl3Buf6get_u8CsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.val) ; 2 uses
  %i.aj = and i8 %i.ai, 127
  %i.ak = zext nneg i8 %i.aj to i64
  %i.al = shl nuw nsw i64 %i.ak, 35
  %i.am = or i64 %i.al, %i.ag                     ; 2 uses
  %i.an = icmp sgt i8 %i.ai, -1
  br i1 %i.an, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %exitcond.6.not = icmp eq i64 %.val.i, 6
  br i1 %exitcond.6.not, label %bb.b, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ao = tail call noundef i8 @_RNvYRShNtNtNtCs17cqnTMcAHA_5bytes3buf8buf_impl3Buf6get_u8CsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.val) ; 2 uses
  %i.ap = and i8 %i.ao, 127
  %i.aq = zext nneg i8 %i.ap to i64
  %i.ar = shl nuw nsw i64 %i.aq, 42
  %i.as = or i64 %i.ar, %i.am                     ; 2 uses
  %i.at = icmp sgt i8 %i.ao, -1
  br i1 %i.at, label %.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %exitcond.7.not = icmp eq i64 %.val.i, 7
  br i1 %exitcond.7.not, label %bb.b, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.au = tail call noundef i8 @_RNvYRShNtNtNtCs17cqnTMcAHA_5bytes3buf8buf_impl3Buf6get_u8CsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.val) ; 2 uses
  %i.av = and i8 %i.au, 127
  %i.aw = zext nneg i8 %i.av to i64
  %i.ax = shl nuw nsw i64 %i.aw, 49
  %i.ay = or i64 %i.ax, %i.as                     ; 2 uses
  %i.az = icmp sgt i8 %i.au, -1
  br i1 %i.az, label %.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %exitcond.8.not = icmp eq i64 %.val.i, 8
  br i1 %exitcond.8.not, label %bb.b, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ba = tail call noundef i8 @_RNvYRShNtNtNtCs17cqnTMcAHA_5bytes3buf8buf_impl3Buf6get_u8CsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.val) ; 2 uses
  %i.bb = and i8 %i.ba, 127
  %i.bc = zext nneg i8 %i.bb to i64
  %i.bd = shl nuw nsw i64 %i.bc, 56
  %i.be = or i64 %i.bd, %i.ay                     ; 2 uses
  %i.bf = icmp sgt i8 %i.ba, -1
  br i1 %i.bf, label %.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %exitcond.9.not = icmp eq i64 %.val.i, 9
  br i1 %exitcond.9.not, label %bb.b, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bg = tail call noundef i8 @_RNvYRShNtNtNtCs17cqnTMcAHA_5bytes3buf8buf_impl3Buf6get_u8CsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.val) ; 3 uses
  %i.bh = icmp sgt i8 %i.bg, -1
  br i1 %i.bh, label %bb.w, label %bb.b

bb.w:                                             ; preds = %bb.v
  %i.bi = zext nneg i8 %i.bg to i64
  %i.bj = shl i64 %i.bi, 63
  %i.bk = or i64 %i.bj, %i.be
  %i.bl = icmp samesign ugt i8 %i.bg, 1
  br i1 %i.bl, label %bb.x, label %.thread

.thread:                                          ; preds = %bb.t, %bb.r, %bb.p, %bb.n, %bb.l, %bb.j, %bb.h, %bb.f, %bb.d, %bb.w
  %.lcssa1943 = phi i64 [ %i.bk, %bb.w ], [ %i.be, %bb.t ], [ %i.ay, %bb.r ], [ %i.as, %bb.p ], [ %i.am, %bb.n ], [ %i.ag, %bb.l ], [ %i.aa, %bb.j ], [ %i.u, %bb.h ], [ %i.o, %bb.f ], [ %i.i, %bb.d ]
  %i.bm = inttoptr i64 %.lcssa1943 to ptr
  br label %bb.c

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 -9223372036854775807, ptr %i.b, align 8
  %i.bn = call noundef nonnull align 8 ptr @_RNvXs1_NtCs43OB2dM8s8d_5prost5errorNtB5_11DecodeErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsgxBkk5gSRhY_4core4iter8adapters11try_processINtNtB2_3map3MapNtNtNtB6_3str4iter5CharsNvNtCsbNM6vbj4kjf_9usernames8username12char_to_byteEhINtNtB6_6option6OptionNtNtB6_7convert10InfallibleENCINvXsI_B2o_IB2m_INtNtCs6i54tJFfzR_5alloc3vec3VechEEINtNtNtB4_6traits7collect12FromIteratorIB2m_hEE9from_iterBQ_E0B3r_EB1y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [1 x i8], align 1                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 0, ptr %i.c, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !85
  store ptr %1, ptr %i.a, align 8, !alias.scope !86, !noalias !87
  %.sroa.4.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %2, ptr %.sroa.4.0..sroa_idx6, align 8, !alias.scope !86, !noalias !87
  %.sroa.5.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %.sroa.5.0..sroa_idx7, align 8, !alias.scope !86, !noalias !87
  call void @_RNvXNtNtCs6i54tJFfzR_5alloc3vec14spec_from_iterINtB4_3VechEINtB2_12SpecFromIterhINtNtNtCsgxBkk5gSRhY_4core4iter8adapters12GenericShuntINtNtB1j_3map3MapNtNtNtB1n_3str4iter5CharsNvNtCsbNM6vbj4kjf_9usernames8username12char_to_byteEINtNtB1n_6option6OptionNtNtB1n_7convert10InfallibleEEE9from_iterB2S_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !85
  %i.d = load i8, ptr %i.c, align 1, !range !10, !noundef !4
end_hunk_1
begin_hunk_2_@_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecAaj40_ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames:bb.a
_RNvMs3_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsbNM6vbj4kjf_9usernames.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecINtNtB7_6borrow3CoweEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #5 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !7, !noundef !4 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsbNM6vbj4kjf_9usernames.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = mul nuw i64 %.val, 24
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #24
  br label %_RNvMs3_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsbNM6vbj4kjf_9usernames.exit

_RNvMs3_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsbNM6vbj4kjf_9usernames.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecINtNtCsdRrpXuHtjOb_16curve25519_dalek6window11LookupTableNtNtNtNtBQ_7backend6serial12curve_models20ProjectiveNielsPointEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #5 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !7, !noundef !4 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsbNM6vbj4kjf_9usernames.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = mul nuw i64 %.val, 1280
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #24
  br label %_RNvMs3_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsbNM6vbj4kjf_9usernames.exit

_RNvMs3_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsbNM6vbj4kjf_9usernames.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecINtNtCsdRrpXuHtjOb_16curve25519_dalek6window11LookupTableNtNtNtNtNtBQ_7backend6vector4avx27edwards11CachedPointEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #5 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !7, !noundef !4 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsbNM6vbj4kjf_9usernames.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = mul nuw i64 %.val, 1280
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 32) #24
  br label %_RNvMs3_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsbNM6vbj4kjf_9usernames.exit

_RNvMs3_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsbNM6vbj4kjf_9usernames.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #5 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !7, !noundef !4 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsbNM6vbj4kjf_9usernames.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = shl nuw i64 %.val, 5
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 1) #24
  br label %_RNvMs3_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsbNM6vbj4kjf_9usernames.exit

_RNvMs3_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsbNM6vbj4kjf_9usernames.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtCsfFEWD1QhNwv_6poksho9statement4TermENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #5 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !7, !noundef !4 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsbNM6vbj4kjf_9usernames.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = shl nuw i64 %.val, 1
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 1) #24
  br label %_RNvMs3_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsbNM6vbj4kjf_9usernames.exit

_RNvMs3_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsbNM6vbj4kjf_9usernames.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtCsfFEWD1QhNwv_6poksho9statement8EquationENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #5 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !7, !noundef !4 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsbNM6vbj4kjf_9usernames.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = shl nuw i64 %.val, 5
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #24
  br label %_RNvMs3_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsbNM6vbj4kjf_9usernames.exit

_RNvMs3_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsbNM6vbj4kjf_9usernames.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecTReBM_EENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #5 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !7, !noundef !4 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsbNM6vbj4kjf_9usernames.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = shl nuw i64 %.val, 5
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #24
  br label %_RNvMs3_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsbNM6vbj4kjf_9usernames.exit

_RNvMs3_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsbNM6vbj4kjf_9usernames.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #5 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !7, !noundef !4 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsbNM6vbj4kjf_9usernames.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #24
  br label %_RNvMs3_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsbNM6vbj4kjf_9usernames.exit

_RNvMs3_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsbNM6vbj4kjf_9usernames.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXs1_NtNtCsgxBkk5gSRhY_4core5array5drainINtB5_5DrainAhj20_NCINvMNtNtB9_3ops9try_traitINtB12_17NeverShortCircuitNtNtCsdRrpXuHtjOb_16curve25519_dalek9ristretto14RistrettoPointE10wrap_mut_1BQ_NCNCNvNtCsbNM6vbj4kjf_9usernames9constants11BASE_POINTS00E0ENtNtB14_4drop4Drop4dropB3b_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #7 {
bb.a:
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRNtNtCs6i54tJFfzR_5alloc6string6StringNtB6_5Debug3fmtCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !5, !noundef !4 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %.val1 = load i64, ptr %i.c, align 8, !noundef !4
  %i.d = tail call noundef zeroext i1 @_RNvXsh_NtCsgxBkk5gSRhY_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRhNtB6_5Debug3fmtCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i32, ptr %i.b, align 8, !alias.scope !222, !noalias !223, !noundef !4 ; 2 uses
  %i.d = and i32 %i.c, 33554432
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = and i32 %i.c, 67108864
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_RNvXse_NtNtCsgxBkk5gSRhY_4core3fmt3numhNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsU_NtNtCsgxBkk5gSRhY_4core3fmt3numhNtB7_5Debug3fmt.exit

bb.d:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @_RNvXNtNtNtCsgxBkk5gSRhY_4core3fmt3num3imphNtB6_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsU_NtNtCsgxBkk5gSRhY_4core3fmt3numhNtB7_5Debug3fmt.exit

bb.e:                                             ; preds = %bb.b
  %i.j = tail call noundef zeroext i1 @_RNvXsg_NtNtCsgxBkk5gSRhY_4core3fmt3numhNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsU_NtNtCsgxBkk5gSRhY_4core3fmt3numhNtB7_5Debug3fmt.exit

_RNvXsU_NtNtCsgxBkk5gSRhY_4core3fmt3numhNtB7_5Debug3fmt.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.0.in.i = phi i1 [ %i.i, %bb.d ], [ %i.j, %bb.e ], [ %i.h, %bb.c ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRuNtB6_5Debug3fmtCsbNM6vbj4kjf_9usernames(ptr noalias nofree readonly align 8 captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter3pad(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 2)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4ItermEEINtB5_7ZipImplBW_B1z_E3newCsbNM6vbj4kjf_9usernames(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) initializes((0, 72)) %0, ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(40) %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %3, ptr %i.b, align 8
  %i.c = tail call noundef i64 @_RNvYINtNtNtCsgxBkk5gSRhY_4core5slice4iter14ChunksExactMuthENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1)
  %i.d = call noundef i64 @_RNvYINtNtNtCsgxBkk5gSRhY_4core5slice4iter4ItermENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a)
  %.sroa.0.0.i = call noundef i64 @llvm.umin.i64(i64 %i.d, i64 %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %2, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %3, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 0, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %.sroa.0.0.i, ptr %i.h, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4IteryEEINtB5_7ZipImplBW_B1z_E3newCsbNM6vbj4kjf_9usernames(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) initializes((0, 72)) %0, ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(40) %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %3, ptr %i.b, align 8
  %i.c = tail call noundef i64 @_RNvYINtNtNtCsgxBkk5gSRhY_4core5slice4iter14ChunksExactMuthENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1)
  %i.d = call noundef i64 @_RNvYINtNtNtCsgxBkk5gSRhY_4core5slice4iter4IteryENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a)
  %.sroa.0.0.i = call noundef i64 @llvm.umin.i64(i64 %i.d, i64 %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %2, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %3, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 0, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %.sroa.0.0.i, ptr %i.h, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAaj40_EIBX_INtNtCsdRrpXuHtjOb_16curve25519_dalek6window11LookupTableNtNtNtNtNtB1C_7backend6vector4avx27edwards11CachedPointEEEINtB5_7ZipImplBW_B1t_E3newCsbNM6vbj4kjf_9usernames(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 48)) %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %2, ptr %i.c, align 8
  store ptr %3, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %4, ptr %i.d, align 8
  %i.e = call noundef i64 @_RNvYINtNtNtCsgxBkk5gSRhY_4core5slice4iter4IterAaj40_ENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b)
  %i.f = call noundef i64 @_RNvYINtNtNtCsgxBkk5gSRhY_4core5slice4iter4IterINtNtCsdRrpXuHtjOb_16curve25519_dalek6window11LookupTableNtNtNtNtNtBN_7backend6vector4avx27edwards11CachedPointEENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a)
  %.sroa.0.0.i = call noundef i64 @llvm.umin.i64(i64 %i.f, i64 %i.e)
  store ptr %1, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %3, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %4, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.0.0.i, ptr %i.k, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCsbNM6vbj4kjf_9usernames(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 48)) %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %2, ptr %i.c, align 8
  store ptr %3, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %4, ptr %i.d, align 8
  %i.e = call noundef i64 @_RNvYINtNtNtCsgxBkk5gSRhY_4core5slice4iter4IterhENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b)
  %i.f = call noundef i64 @_RNvYINtNtNtCsgxBkk5gSRhY_4core5slice4iter4IterhENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a)
  %.sroa.0.0.i = call noundef i64 @llvm.umin.i64(i64 %i.f, i64 %i.e)
  store ptr %1, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %3, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %4, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.0.0.i, ptr %i.k, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @_RNvXs8_CseNmJmsPJ47l_7zeroizeSINtNtNtCsgxBkk5gSRhY_4core3mem12maybe_uninit11MaybeUninitAaj40_ENtB5_7Zeroize7zeroizeCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull %0, i64 noundef range(i64 0, 144115188075855872) %1) unnamed_addr #8 {
bb.a:
  %i.a = shl nuw nsw i64 %1, 6
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  tail call void asm sideeffect inteldialect "# ${0:q}", "r,~{memory}"(ptr nonnull %0) #30, !srcloc !224
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.02.04 = phi i64 [ %i.o, %.lr.ph ], [ 0, %bb.a ] ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.02.04
  store volatile i8 0, ptr %i.b, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.02.04
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store volatile i8 0, ptr %i.d, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.02.04
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  store volatile i8 0, ptr %i.f, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.02.04
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 3
  store volatile i8 0, ptr %i.h, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.02.04
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  store volatile i8 0, ptr %i.j, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.02.04
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 5
  store volatile i8 0, ptr %i.l, align 1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.02.04
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 6
  store volatile i8 0, ptr %i.n, align 1
  %i.o = add nuw nsw i64 %.sroa.02.04, 8          ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.02.04
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 7
  store volatile i8 0, ptr %i.q, align 1
  %exitcond.not.7 = icmp eq i64 %i.o, %i.a
  br i1 %exitcond.not.7, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCsfBDUjroi3FF_9hashbrown3rawINtB5_8RawTableTINtNtCs6i54tJFfzR_5alloc6borrow3CoweENtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !247)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !247, !noundef !4 ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTINtNtCs6i54tJFfzR_5alloc6borrow3CoweENtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarENtNtB1i_5alloc6GlobalECsbNM6vbj4kjf_9usernames.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !248)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !249, !noundef !4 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTINtNtCs6i54tJFfzR_5alloc6borrow3CoweENtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEECsbNM6vbj4kjf_9usernames.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !249, !nonnull !4, !noundef !4 ; 3 uses
  %.val13.i.i.i = load <16 x i8>, ptr %i.g, align 16, !noalias !250
  %i.h = icmp sgt <16 x i8> %.val13.i.i.i, splat (i8 -1)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = bitcast <16 x i1> %i.h to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTINtNtCs6i54tJFfzR_5alloc6borrow3CoweENtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEECsbNM6vbj4kjf_9usernames.exit.i.i, %bb.c
  %.sroa.05.018.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTINtNtCs6i54tJFfzR_5alloc6borrow3CoweENtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEECsbNM6vbj4kjf_9usernames.exit.i.i ] ; 2 uses
  %.sroa.6.017.i.i = phi ptr [ %i.i, %bb.c ], [ %.sroa.6.1.i.i, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTINtNtCs6i54tJFfzR_5alloc6borrow3CoweENtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEECsbNM6vbj4kjf_9usernames.exit.i.i ] ; 2 uses
  %.sroa.86.016.i.i = phi i16 [ %i.j, %bb.c ], [ %i.s, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTINtNtCs6i54tJFfzR_5alloc6borrow3CoweENtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEECsbNM6vbj4kjf_9usernames.exit.i.i ] ; 2 uses
  %.sroa.107.015.i.i = phi i64 [ %i.e, %bb.c ], [ %i.v, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTINtNtCs6i54tJFfzR_5alloc6borrow3CoweENtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEECsbNM6vbj4kjf_9usernames.exit.i.i ]
  %.not11.i.i.i = icmp eq i16 %.sroa.86.016.i.i, 0
  br i1 %.not11.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsfBDUjroi3FF_9hashbrown3rawINtB6_12RawIterRangeTINtNtCs6i54tJFfzR_5alloc6borrow3CoweENtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEE9next_implKb0_ECsbNM6vbj4kjf_9usernames.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.k = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %.sroa.6.017.i.i, %bb.d ] ; 2 uses
  %i.l = phi ptr [ %i.n, %.lr.ph.i.i.i ], [ %.sroa.05.018.i.i, %bb.d ]
  %.val79.i.i.i = load <16 x i8>, ptr %i.k, align 16, !noalias !251
  %i.m = icmp sgt <16 x i8> %.val79.i.i.i, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -896 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.m to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsfBDUjroi3FF_9hashbrown3rawINtB6_12RawIterRangeTINtNtCs6i54tJFfzR_5alloc6borrow3CoweENtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEE9next_implKb0_ECsbNM6vbj4kjf_9usernames.exit.i.i

_RINvMsi_NtCsfBDUjroi3FF_9hashbrown3rawINtB6_12RawIterRangeTINtNtCs6i54tJFfzR_5alloc6borrow3CoweENtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEE9next_implKb0_ECsbNM6vbj4kjf_9usernames.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.017.i.i, %bb.d ], [ %i.o, %.lr.ph.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.018.i.i, %bb.d ], [ %i.n, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.016.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.p = add i16 %.lcssa.i.i.i, -1
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = and i16 %i.p, %.lcssa.i.i.i
  %i.t = sub nsw i64 0, %i.r
  %i.u = getelementptr inbounds [56 x i8], ptr %.sroa.05.1.i.i, i64 %i.t ; 3 uses
  %i.v = add i64 %.sroa.107.015.i.i, -1           ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -56 ; 4 uses
  %i.x = load i64, ptr %i.w, align 8, !range !8, !alias.scope !252, !noalias !249, !noundef !4
end_hunk_2
begin_hunk_3_@_RNvXsg_NtCsfBDUjroi3FF_9hashbrown3rawINtB5_8RawTableTINtNtCs6i54tJFfzR_5alloc6borrow3CoweEhEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames:bb.a
  %i.x = load i64, ptr %i.w, align 8, !range !8, !alias.scope !316, !noalias !313, !noundef !4
  %i.y = icmp eq i64 %i.x, -1
  br i1 %i.y, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTINtNtCs6i54tJFfzR_5alloc6borrow3CoweEhEECsbNM6vbj4kjf_9usernames.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_RINvMsi_NtCsfBDUjroi3FF_9hashbrown3rawINtB6_12RawIterRangeTINtNtCs6i54tJFfzR_5alloc6borrow3CoweEhEE9next_implKb0_ECsbNM6vbj4kjf_9usernames.exit.i.i
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.w)
          to label %bb.h unwind label %bb.f, !noalias !313

bb.f:                                             ; preds = %bb.e
  %i.z = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i.i.i.i.i = load i64, ptr %i.w, align 8, !range !7, !alias.scope !317, !noalias !313, !noundef !4 ; 2 uses
  %i.aa = icmp eq i64 %.val2.i.i.i.i.i.i, 0
  br i1 %i.aa, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVechEECsbNM6vbj4kjf_9usernames.exit.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds i8, ptr %i.u, i64 -24
  %.val3.i.i.i.i.i.i = load ptr, ptr %i.ab, align 8, !alias.scope !318, !noalias !313, !nonnull !4, !noundef !4
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i.i, i64 noundef %.val2.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #24, !noalias !319
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVechEECsbNM6vbj4kjf_9usernames.exit.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.e
  %.val.i.i.i.i.i.i = load i64, ptr %i.w, align 8, !range !7, !alias.scope !317, !noalias !313, !noundef !4 ; 2 uses
  %i.ac = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.ac, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTINtNtCs6i54tJFfzR_5alloc6borrow3CoweEhEECsbNM6vbj4kjf_9usernames.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds i8, ptr %i.u, i64 -24
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.ad, align 8, !alias.scope !318, !noalias !313, !nonnull !4, !noundef !4
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #24, !noalias !320
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTINtNtCs6i54tJFfzR_5alloc6borrow3CoweEhEECsbNM6vbj4kjf_9usernames.exit.i.i

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVechEECsbNM6vbj4kjf_9usernames.exit.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.z

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTINtNtCs6i54tJFfzR_5alloc6borrow3CoweEhEECsbNM6vbj4kjf_9usernames.exit.i.i: ; preds = %bb.i, %bb.h, %_RINvMsi_NtCsfBDUjroi3FF_9hashbrown3rawINtB6_12RawIterRangeTINtNtCs6i54tJFfzR_5alloc6borrow3CoweEhEE9next_implKb0_ECsbNM6vbj4kjf_9usernames.exit.i.i
  %i.ae = icmp eq i64 %i.v, 0
  br i1 %i.ae, label %_RINvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTINtNtCs6i54tJFfzR_5alloc6borrow3CoweEhEECsbNM6vbj4kjf_9usernames.exit.i, label %bb.d

_RINvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTINtNtCs6i54tJFfzR_5alloc6borrow3CoweEhEECsbNM6vbj4kjf_9usernames.exit.i: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTINtNtCs6i54tJFfzR_5alloc6borrow3CoweEhEECsbNM6vbj4kjf_9usernames.exit.i.i, %bb.b
  %i.af = shl i64 %i.b, 5                         ; 2 uses
  %i.ag = add i64 %i.af, 32                       ; 2 uses
  %i.ah = add i64 %i.b, 17
  %i.ai = add i64 %i.ah, %i.ag                    ; 4 uses
  %i.aj = icmp uge i64 %i.ai, %i.ag
  %i.ak = icmp ult i64 %i.ai, 9223372036854775793
  tail call void @llvm.assume(i1 %i.aj)
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = icmp eq i64 %i.ai, 0
  br i1 %i.al, label %_RINvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTINtNtCs6i54tJFfzR_5alloc6borrow3CoweEhENtNtB1i_5alloc6GlobalECsbNM6vbj4kjf_9usernames.exit, label %bb.j

bb.j:                                             ; preds = %_RINvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTINtNtCs6i54tJFfzR_5alloc6borrow3CoweEhEECsbNM6vbj4kjf_9usernames.exit.i
  %i.am = load ptr, ptr %0, align 8, !alias.scope !311, !nonnull !4, !noundef !4
  %i.an = sub nuw nsw i64 -32, %i.af
  %i.ao = getelementptr inbounds i8, ptr %i.am, i64 %i.an
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ao, i64 noundef %i.ai, i64 noundef range(i64 1, -9223372036854775807) 16) #24, !noalias !311
  br label %_RINvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTINtNtCs6i54tJFfzR_5alloc6borrow3CoweEhENtNtB1i_5alloc6GlobalECsbNM6vbj4kjf_9usernames.exit

_RINvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTINtNtCs6i54tJFfzR_5alloc6borrow3CoweEhENtNtB1i_5alloc6GlobalECsbNM6vbj4kjf_9usernames.exit: ; preds = %bb.a, %_RINvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTINtNtCs6i54tJFfzR_5alloc6borrow3CoweEhEECsbNM6vbj4kjf_9usernames.exit.i, %bb.j
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCsgxBkk5gSRhY_4core3fmtShNtB5_5Debug3fmtCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.d = icmp samesign eq i64 %1, 0
  br i1 %i.d, label %_RINvMs5_NtNtCsgxBkk5gSRhY_4core3fmt8buildersNtB6_9DebugList7entriesRhINtNtNtBa_5slice4iter4IterhEECsbNM6vbj4kjf_9usernames.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.0.07.i = phi ptr [ %i.e, %.lr.ph.i ], [ %0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !323
  store ptr %.sroa.0.07.i, ptr %i.a, align 8, !noalias !323, !captures !6
  %i.f = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCsgxBkk5gSRhY_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !323
  %i.g = icmp eq ptr %i.e, %i.c
  br i1 %i.g, label %_RINvMs5_NtNtCsgxBkk5gSRhY_4core3fmt8buildersNtB6_9DebugList7entriesRhINtNtNtBa_5slice4iter4IterhEECsbNM6vbj4kjf_9usernames.exit, label %.lr.ph.i

_RINvMs5_NtNtCsgxBkk5gSRhY_4core3fmt8buildersNtB6_9DebugList7entriesRhINtNtNtBa_5slice4iter4IterhEECsbNM6vbj4kjf_9usernames.exit: ; preds = %.lr.ph.i, %bb.a
  %i.h = call noundef zeroext i1 @_RNvMs5_NtNtCsgxBkk5gSRhY_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.h
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #9

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs5_NtNtCsgxBkk5gSRhY_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @_RINvMs6_NtCsfBDUjroi3FF_9hashbrown3rawINtB6_8RawTableTINtNtCs6i54tJFfzR_5alloc6borrow3CoweENtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1r_NtNtNtCs9k3SxhrAWiO_3std4hash6random11RandomStateE0ECsfFEWD1QhNwv_6poksho(ptr noalias nofree noundef align 8 dereferenceable(32), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), i1 noundef zeroext) unnamed_addr #2

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @_RINvMs6_NtCsfBDUjroi3FF_9hashbrown3rawINtB6_8RawTableTINtNtCs6i54tJFfzR_5alloc6borrow3CoweENtNtCsdRrpXuHtjOb_16curve25519_dalek9ristretto14RistrettoPointEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1r_NtNtNtCs9k3SxhrAWiO_3std4hash6random11RandomStateE0ECsfFEWD1QhNwv_6poksho(ptr noalias nofree noundef align 8 dereferenceable(32), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), i1 noundef zeroext) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #11

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvXs1_NtCs43OB2dM8s8d_5prost5errorNtB5_11DecodeErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecAaj40_ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecINtNtCsdRrpXuHtjOb_16curve25519_dalek6window11LookupTableNtNtNtNtBJ_7backend6serial12curve_models20ProjectiveNielsPointEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #14

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs6i54tJFfzR_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare hidden { i8, i8 } @_RINvXs0_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3mapINtB6_3MapNtNtNtBc_3str4iter5CharsNvNtCsbNM6vbj4kjf_9usernames8username12char_to_byteENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6option6OptionNtNtBc_7convert10InfallibleEEB2b_8try_folduNCINvNvB2b_12try_for_each4callhINtNtNtBc_3ops12control_flow11ControlFlowhENcNtB4X_5Break0E0B4X_E0IB4Y_B4X_EEB1p_(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef nonnull, ptr noalias nofree noundef dereferenceable(1)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCs6i54tJFfzR_5alloc3vec14spec_from_iterINtB4_3VecINtNtCsdRrpXuHtjOb_16curve25519_dalek6window11LookupTableNtNtNtNtBY_7backend6serial12curve_models20ProjectiveNielsPointEEINtB2_12SpecFromIterBT_INtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters3map3MapIB3e_INtNtNtB3m_5slice4iter4IterNtNtBY_9ristretto14RistrettoPointENCINvXsq_B4z_B4x_NtNtBY_6traits14MultiscalarMul15multiscalar_mulRSNtNtBY_6scalar6ScalarB46_E0ENCINvXNtNtB1S_10scalar_mul6strausNtB6H_6StrausB5m_15multiscalar_mulIB47_B69_EB41_E0EE9from_iterCsbNM6vbj4kjf_9usernames(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCs6i54tJFfzR_5alloc3vec14spec_from_iterINtB4_3VecAaj40_EINtB2_12SpecFromIterBT_INtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters3map3MapINtNtNtB1w_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarENCINvXNtNtNtNtB2G_7backend6serial10scalar_mul6strausNtB3x_6StrausNtNtB2G_6traits14MultiscalarMul15multiscalar_mulB2b_IB1o_IB2c_NtNtB2G_9ristretto14RistrettoPointENCINvXsq_B5w_B5u_B4u_15multiscalar_mulRSB2C_B5p_E0EEs_0EE9from_iterCsbNM6vbj4kjf_9usernames(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsd_CseNmJmsPJ47l_7zeroizeINtNtCs6i54tJFfzR_5alloc3vec3VecAaj40_ENtB5_7Zeroize7zeroizeCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsB_NtCsdRrpXuHtjOb_16curve25519_dalek7edwardsNtB5_12EdwardsPoint12mul_by_pow_2(ptr dead_on_unwind noalias nofree noundef writable sret([160 x i8]) align 8 captures(address) dereferenceable(160), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(160), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs6_NtCsdRrpXuHtjOb_16curve25519_dalek6windowINtB5_11LookupTableNtNtNtNtB7_7backend6serial12curve_models20ProjectiveNielsPointE6selectCsbNM6vbj4kjf_9usernames(ptr dead_on_unwind noalias nofree noundef writable sret([160 x i8]) align 8 captures(none) dereferenceable(160), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(1280), i8 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsb_NtNtNtCsdRrpXuHtjOb_16curve25519_dalek7backend6serial12curve_modelsRNtNtBb_7edwards12EdwardsPointINtNtNtCsgxBkk5gSRhY_4core3ops5arith3AddRNtB5_20ProjectiveNielsPointE3add(ptr dead_on_unwind noalias nofree noundef writable sret([160 x i8]) align 8 captures(none) dereferenceable(160), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(160), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(160)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs9_NtNtNtCsdRrpXuHtjOb_16curve25519_dalek7backend6serial12curve_modelsNtB5_14CompletedPoint11as_extended(ptr dead_on_unwind noalias nofree noundef writable sret([160 x i8]) align 8 captures(none) dereferenceable(160), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(160)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCs6i54tJFfzR_5alloc3vec14spec_from_iterINtB4_3VechEINtB2_12SpecFromIterhINtNtNtCsgxBkk5gSRhY_4core4iter8adapters12GenericShuntINtNtB1j_3map3MapNtNtNtB1n_3str4iter5CharsNvNtCsbNM6vbj4kjf_9usernames8username12char_to_byteEINtNtB1n_6option6OptionNtNtB1n_7convert10InfallibleEEE9from_iterB2S_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RINvNtCsgxBkk5gSRhY_4core9panicking13assert_failedjjEB4_(i8 noundef range(i8 0, 3), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noundef, ptr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #16

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsdRrpXuHtjOb_16curve25519_dalek7backend22straus_multiscalar_mulINtNtNtCsgxBkk5gSRhY_4core5slice4iter4IterNtNtB4_6scalar6ScalarEINtNtNtNtB1d_4iter8adapters3map3MapIB17_NtNtB4_9ristretto14RistrettoPointENCINvXsq_B2O_B2M_NtNtB4_6traits14MultiscalarMul15multiscalar_mulRSB1M_B2H_E0EECsbNM6vbj4kjf_9usernames(ptr dead_on_unwind noalias nofree noundef writable sret([160 x i8]) align 8 captures(address) dereferenceable(160), ptr noundef nonnull, ptr noundef, ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXCsfBDUjroi3FF_9hashbrownINtNtCs6i54tJFfzR_5alloc6borrow3CoweEINtB2_10EquivalentBq_E10equivalentCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs1_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoNtB5_19CompressedRistretto10decompress(ptr dead_on_unwind noalias nofree noundef writable sret([168 x i8]) align 8 captures(none) dereferenceable(168), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsgxBkk5gSRhY_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #17

; Function Attrs: nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable
declare noalias noundef ptr @_RNvCs1njKG4L9aB3_7___rustc14___rust_realloc(ptr allocptr noundef nonnull, i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #18

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCs1njKG4L9aB3_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #5

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCs1njKG4L9aB3_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #19

; Function Attrs: nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCs1njKG4L9aB3_7___rustc19___rust_alloc_zeroed(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #20

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCs9k3SxhrAWiO_3std4hash6random11RandomStateNtNtCsgxBkk5gSRhY_4core4hash11BuildHasher8hash_oneRINtNtCs6i54tJFfzR_5alloc6borrow3CoweEECsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i8 @_RNvYRShNtNtNtCs17cqnTMcAHA_5bytes3buf8buf_impl3Buf6get_u8CsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvYINtNtNtCsgxBkk5gSRhY_4core5slice4iter14ChunksExactMuthENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvYINtNtNtCsgxBkk5gSRhY_4core5slice4iter4ItermENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvYINtNtNtCsgxBkk5gSRhY_4core5slice4iter4IteryENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvYINtNtNtCsgxBkk5gSRhY_4core5slice4iter4IterAaj40_ENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvYINtNtNtCsgxBkk5gSRhY_4core5slice4iter4IterINtNtCsdRrpXuHtjOb_16curve25519_dalek6window11LookupTableNtNtNtNtBN_7backend6serial12curve_models20ProjectiveNielsPointEENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvYINtNtNtCsgxBkk5gSRhY_4core5slice4iter4IterINtNtCsdRrpXuHtjOb_16curve25519_dalek6window11LookupTableNtNtNtNtNtBN_7backend6vector4avx27edwards11CachedPointEENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvYINtNtNtCsgxBkk5gSRhY_4core5slice4iter4IterhENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtNtCsgxBkk5gSRhY_4core3fmt3num3imphNtB6_7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsg_NtNtCsgxBkk5gSRhY_4core3fmt3numhNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXse_NtNtCsgxBkk5gSRhY_4core3fmt3numhNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsh_NtCsgxBkk5gSRhY_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter10debug_list(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs5_NtNtCsgxBkk5gSRhY_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter3pad(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #22

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { cold nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCs1njKG4L9aB3_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #23 = { inlinehint }
attributes #24 = { nounwind }
attributes #25 = { noinline noreturn }
attributes #26 = { noinline }
attributes #27 = { noreturn }
attributes #28 = { cold }
attributes #29 = { cold noreturn nounwind }
attributes #30 = { nounwind memory(read, inaccessiblemem: readwrite) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.98.1 (48a229cea 2026-09-01)"}
!4 = !{}
!5 = !{i64 8}
!6 = !{!"address", !"read_provenance"}
!7 = !{i64 0, i64 -9223372036854775808}
!8 = !{i64 -1, i64 -9223372036854775808}
!9 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!10 = !{i8 0, i8 2}
!11 = !{i64 0, i64 2}
!12 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!13 = !{!"branch_weights", i32 2002, i32 2000}
!14 = distinct !{!14, !"_RINvNtCs43OB2dM8s8d_5prost8encoding10decode_keyQRShECsbNM6vbj4kjf_9usernames"}
!15 = distinct !{!15, !14, !"_RINvNtCs43OB2dM8s8d_5prost8encoding10decode_keyQRShECsbNM6vbj4kjf_9usernames: argument 0"}
!16 = distinct !{!16, !14, !"_RINvNtCs43OB2dM8s8d_5prost8encoding10decode_keyQRShECsbNM6vbj4kjf_9usernames: argument 1"}
!17 = distinct !{!17, !"_RNvXs0_NtNtCs17cqnTMcAHA_5bytes3buf8buf_implRShNtB5_3Buf7advance"}
!18 = distinct !{!18, !17, !"_RNvXs0_NtNtCs17cqnTMcAHA_5bytes3buf8buf_implRShNtB5_3Buf7advance: argument 0"}
!19 = !{!15}
!20 = !{!15, !16}
!21 = !{!18}
!22 = distinct !{!22, !"_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecAaj40_ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames"}
!23 = distinct !{!23, !22, !"_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecAaj40_ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames: argument 0"}
!24 = distinct !{!24, !"_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecAaj40_ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames"}
!25 = distinct !{!25, !24, !"_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecAaj40_ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames: argument 0"}
!26 = distinct !{!26, !"_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecAaj40_ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames"}
!27 = distinct !{!27, !26, !"_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecAaj40_ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames: argument 0"}
!28 = !{!23}
!29 = !{!25}
!30 = !{!27}
!31 = distinct !{!31, !"_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecINtNtCsdRrpXuHtjOb_16curve25519_dalek6window11LookupTableNtNtNtNtBQ_7backend6serial12curve_models20ProjectiveNielsPointEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames"}
!32 = distinct !{!32, !31, !"_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecINtNtCsdRrpXuHtjOb_16curve25519_dalek6window11LookupTableNtNtNtNtBQ_7backend6serial12curve_models20ProjectiveNielsPointEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames: argument 0"}
!33 = distinct !{!33, !"_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecINtNtCsdRrpXuHtjOb_16curve25519_dalek6window11LookupTableNtNtNtNtBQ_7backend6serial12curve_models20ProjectiveNielsPointEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames"}
!34 = distinct !{!34, !33, !"_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecINtNtCsdRrpXuHtjOb_16curve25519_dalek6window11LookupTableNtNtNtNtBQ_7backend6serial12curve_models20ProjectiveNielsPointEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames: argument 0"}
!35 = distinct !{!35, !"_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecINtNtCsdRrpXuHtjOb_16curve25519_dalek6window11LookupTableNtNtNtNtBQ_7backend6serial12curve_models20ProjectiveNielsPointEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames"}
!36 = distinct !{!36, !35, !"_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecINtNtCsdRrpXuHtjOb_16curve25519_dalek6window11LookupTableNtNtNtNtBQ_7backend6serial12curve_models20ProjectiveNielsPointEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames: argument 0"}
!37 = !{!32}
!38 = !{!34}
!39 = !{!36}
!40 = distinct !{!40, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECsbNM6vbj4kjf_9usernames"}
!41 = distinct !{!41, !40, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECsbNM6vbj4kjf_9usernames: argument 0"}
!42 = distinct !{!42, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECsbNM6vbj4kjf_9usernames"}
!43 = distinct !{!43, !42, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECsbNM6vbj4kjf_9usernames: argument 0"}
!44 = distinct !{!44, !"_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames"}
!45 = distinct !{!45, !44, !"_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames: argument 0"}
!46 = distinct !{!46, !"_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames"}
!47 = distinct !{!47, !46, !"_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames: argument 0"}
!48 = distinct !{!48, !"_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames"}
!49 = distinct !{!49, !48, !"_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames: argument 0"}
!50 = !{!45, !43, !41}
!51 = !{!43, !41}
!52 = !{!47}
!53 = !{!49}
!54 = distinct !{!54, !"_RNvXs0_NtNtCs17cqnTMcAHA_5bytes3buf8buf_implRShNtB5_3Buf7advance"}
!55 = distinct !{!55, !54, !"_RNvXs0_NtNtCs17cqnTMcAHA_5bytes3buf8buf_implRShNtB5_3Buf7advance: argument 0"}
!56 = distinct !{!56, !"_RNvNtNtCs43OB2dM8s8d_5prost8encoding6varint19decode_varint_slice"}
!57 = distinct !{!57, !56, !"_RNvNtNtCs43OB2dM8s8d_5prost8encoding6varint19decode_varint_slice: argument 1"}
!58 = distinct !{!58, !56, !"_RNvNtNtCs43OB2dM8s8d_5prost8encoding6varint19decode_varint_slice: argument 0"}
!59 = distinct !{!59, !"_RNvXs0_NtNtCs17cqnTMcAHA_5bytes3buf8buf_implRShNtB5_3Buf7advance"}
!60 = distinct !{!60, !59, !"_RNvXs0_NtNtCs17cqnTMcAHA_5bytes3buf8buf_implRShNtB5_3Buf7advance: argument 0"}
!61 = !{!55}
!62 = !{!57}
!63 = !{!58}
!64 = !{!58, !57}
!65 = !{!60}
!66 = distinct !{!66, !"_RNCINvXsI_NtCsgxBkk5gSRhY_4core6optionINtB8_6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEINtNtNtNtBa_4iter6traits7collect12FromIteratorIBB_hEE9from_iterINtNtNtB1t_8adapters3map3MapNtNtNtBa_3str4iter5CharsNvNtCsbNM6vbj4kjf_9usernames8username12char_to_byteEE0B3h_"}
!67 = distinct !{!67, !66, !"_RNCINvXsI_NtCsgxBkk5gSRhY_4core6optionINtB8_6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEINtNtNtNtBa_4iter6traits7collect12FromIteratorIBB_hEE9from_iterINtNtNtB1t_8adapters3map3MapNtNtNtBa_3str4iter5CharsNvNtCsbNM6vbj4kjf_9usernames8username12char_to_byteEE0B3h_: argument 1"}
!68 = distinct !{!68, !66, !"_RNCINvXsI_NtCsgxBkk5gSRhY_4core6optionINtB8_6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEINtNtNtNtBa_4iter6traits7collect12FromIteratorIBB_hEE9from_iterINtNtNtB1t_8adapters3map3MapNtNtNtBa_3str4iter5CharsNvNtCsbNM6vbj4kjf_9usernames8username12char_to_byteEE0B3h_: argument 0"}
!69 = distinct !{!69, !"_RINvXse_NtCs6i54tJFfzR_5alloc3vecINtB6_3VechEINtNtNtNtCsgxBkk5gSRhY_4core4iter6traits7collect12FromIteratorhE9from_iterINtNtBO_8adapters12GenericShuntINtNtB1W_3map3MapNtNtNtBQ_3str4iter5CharsNvNtCsbNM6vbj4kjf_9usernames8username12char_to_byteEINtNtBQ_6option6OptionNtNtBQ_7convert10InfallibleEEEB37_"}
!70 = distinct !{!70, !69, !"_RINvXse_NtCs6i54tJFfzR_5alloc3vecINtB6_3VechEINtNtNtNtCsgxBkk5gSRhY_4core4iter6traits7collect12FromIteratorhE9from_iterINtNtBO_8adapters12GenericShuntINtNtB1W_3map3MapNtNtNtBQ_3str4iter5CharsNvNtCsbNM6vbj4kjf_9usernames8username12char_to_byteEINtNtBQ_6option6OptionNtNtBQ_7convert10InfallibleEEEB37_: argument 1"}
!71 = distinct !{!71, !69, !"_RINvXse_NtCs6i54tJFfzR_5alloc3vecINtB6_3VechEINtNtNtNtCsgxBkk5gSRhY_4core4iter6traits7collect12FromIteratorhE9from_iterINtNtBO_8adapters12GenericShuntINtNtB1W_3map3MapNtNtNtBQ_3str4iter5CharsNvNtCsbNM6vbj4kjf_9usernames8username12char_to_byteEINtNtBQ_6option6OptionNtNtBQ_7convert10InfallibleEEEB37_: argument 0"}
!72 = distinct !{!72, !"_RNvXNtNtNtCsgxBkk5gSRhY_4core4iter6traits7collectINtNtB6_8adapters12GenericShuntINtNtBO_3map3MapNtNtNtB8_3str4iter5CharsNvNtCsbNM6vbj4kjf_9usernames8username12char_to_byteEINtNtB8_6option6OptionNtNtB8_7convert10InfallibleEENtB2_12IntoIterator9into_iterB1Y_"}
!73 = distinct !{!73, !72, !"_RNvXNtNtNtCsgxBkk5gSRhY_4core4iter6traits7collectINtNtB6_8adapters12GenericShuntINtNtBO_3map3MapNtNtNtB8_3str4iter5CharsNvNtCsbNM6vbj4kjf_9usernames8username12char_to_byteEINtNtB8_6option6OptionNtNtB8_7convert10InfallibleEENtB2_12IntoIterator9into_iterB1Y_: argument 1"}
!74 = distinct !{!74, !72, !"_RNvXNtNtNtCsgxBkk5gSRhY_4core4iter6traits7collectINtNtB6_8adapters12GenericShuntINtNtBO_3map3MapNtNtNtB8_3str4iter5CharsNvNtCsbNM6vbj4kjf_9usernames8username12char_to_byteEINtNtB8_6option6OptionNtNtB8_7convert10InfallibleEENtB2_12IntoIterator9into_iterB1Y_: argument 0"}
!75 = distinct !{!75, !"_RNvXsK_NtCsgxBkk5gSRhY_4core6optionINtB5_6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleEE13from_residualCsbNM6vbj4kjf_9usernames"}
!76 = distinct !{!76, !75, !"_RNvXsK_NtCsgxBkk5gSRhY_4core6optionINtB5_6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleEE13from_residualCsbNM6vbj4kjf_9usernames: argument 0"}
!77 = distinct !{!77, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECsbNM6vbj4kjf_9usernames"}
!78 = distinct !{!78, !77, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECsbNM6vbj4kjf_9usernames: argument 0"}
!79 = distinct !{!79, !"_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames"}
!80 = distinct !{!80, !79, !"_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames: argument 0"}
!81 = distinct !{!81, !"_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames"}
!82 = distinct !{!82, !81, !"_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames: argument 0"}
!83 = distinct !{!83, !"_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames"}
!84 = distinct !{!84, !83, !"_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames: argument 0"}
!85 = !{!71, !70, !68, !67}
!86 = !{!74, !73}
!87 = !{!71, !68}
!88 = !{!70, !67}
!89 = !{!76}
!90 = !{!80, !78}
!91 = !{!78}
!92 = !{!82}
!93 = !{!84}
!94 = distinct !{!94, !"_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsbNM6vbj4kjf_9usernames"}
!95 = distinct !{!95, !94, !"_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsbNM6vbj4kjf_9usernames: argument 0"}
!96 = !{!95}
!97 = !{i64 0, i64 -9223372036854775807}
!98 = distinct !{!98, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecAaj40_EECsbNM6vbj4kjf_9usernames"}
!99 = distinct !{!99, !98, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecAaj40_EECsbNM6vbj4kjf_9usernames: argument 0"}
!100 = distinct !{!100, !"_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecAaj40_ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames"}
!101 = distinct !{!101, !100, !"_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecAaj40_ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames: argument 0"}
!102 = distinct !{!102, !"_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecAaj40_ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames"}
!103 = distinct !{!103, !102, !"_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecAaj40_ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames: argument 0"}
!104 = distinct !{!104, !"_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecAaj40_ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames"}
!105 = distinct !{!105, !104, !"_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecAaj40_ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames: argument 0"}
!106 = distinct !{!106, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecINtNtCsdRrpXuHtjOb_16curve25519_dalek6window11LookupTableNtNtNtNtB1c_7backend6serial12curve_models20ProjectiveNielsPointEEECsbNM6vbj4kjf_9usernames"}
!107 = distinct !{!107, !106, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecINtNtCsdRrpXuHtjOb_16curve25519_dalek6window11LookupTableNtNtNtNtB1c_7backend6serial12curve_models20ProjectiveNielsPointEEECsbNM6vbj4kjf_9usernames: argument 0"}
end_hunk_3
