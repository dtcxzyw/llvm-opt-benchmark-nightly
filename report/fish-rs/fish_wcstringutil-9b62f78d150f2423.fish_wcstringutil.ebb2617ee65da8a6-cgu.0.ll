Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish_wcstringutil-9b62f78d150f2423.fish_wcstringutil.ebb2617ee65da8a6-cgu.0?download=true
inline.NumInlined: 208
inline.NumDeleted: 131
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [103 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/widestring-1.2.1/src/utfstring.rs\00", align 1
@1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"f\00\00\00\00\00\00\00\B5\09\00\00/\00\00\00" }>, align 8
@2 = private unnamed_addr constant [89 x i8] c"/rustc/787af2b8c80638c51a4fc8e44f84e6891f243ec7/library/core/src/iter/traits/iterator.rs\00", align 1
@3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"X\00\00\00\00\00\00\00I\0C\00\00\15\00\00\00" }>, align 8
@4 = private unnamed_addr constant [31 x i8] c"crates/wcstringutil/src/lib.rs\00", align 1
@5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"\1E\00\00\00\00\00\00\00q\01\00\00\1E\00\00\00" }>, align 8
@6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"\1E\00\00\00\00\00\00\00\0E\02\00\00,\00\00\00" }>, align 8
@7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"X\00\00\00\00\00\00\00\E8\00\00\00\22\00\00\00" }>, align 8
@8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"\1E\00\00\00\00\00\00\00\BA\01\00\00\1E\00\00\00" }>, align 8
@9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"\1E\00\00\00\00\00\00\00\BA\01\00\00\1D\00\00\00" }>, align 8
@10 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"\1E\00\00\00\00\00\00\00\B6\01\00\008\00\00\00" }>, align 8
@11 = private unnamed_addr constant [20 x i8] c"\09\00\00\00\0B\00\00\00 \00\00\00\0D\00\00\00\0A\00\00\00", align 4
@12 = private unnamed_addr constant [37 x i8] c"Should have one non-trimmed character", align 1
@13 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"\1E\00\00\00\00\00\00\00\D6\01\00\00\0A\00\00\00" }>, align 8
@14 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"\1E\00\00\00\00\00\00\00\D7\01\00\00\0D\00\00\00" }>, align 8
@15 = private unnamed_addr constant [25 x i8] c"Should have split the max", align 1
@16 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"\1E\00\00\00\00\00\00\00x\01\00\00\09\00\00\00" }>, align 8
@17 = private unnamed_addr constant [20 x i8] c"Got too many results", align 1
@18 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"\1E\00\00\00\00\00\00\00{\01\00\00\05\00\00\00" }>, align 8
@19 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"\1E\00\00\00\00\00\00\00f\01\00\00\18\00\00\00" }>, align 8
@20 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"\1E\00\00\00\00\00\00\00u\01\00\00\0F\00\00\00" }>, align 8
@21 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"\1E\00\00\00\00\00\00\00r\01\00\00,\00\00\00" }>, align 8
@22 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"\1E\00\00\00\00\00\00\00n\01\00\00\1B\00\00\00" }>, align 8
@23 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"\1E\00\00\00\00\00\00\00\1F\02\00\004\00\00\00" }>, align 8
@24 = private unnamed_addr constant [13 x i8] c"Out of bounds", align 1
@25 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"\1E\00\00\00\00\00\00\00\ED\01\00\00\05\00\00\00" }>, align 8
@26 = private unnamed_addr constant [19 x i8] c"index out of bounds", align 1
@27 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"\1E\00\00\00\00\00\00\00\DE\01\00\00\0B\00\00\00" }>, align 8
@28 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"\1E\00\00\00\00\00\00\00\C8\01\00\00\1E\00\00\00" }>, align 8
@29 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00", ptr @_RNvXsw_NtCslLGyqsphxMB_10widestring5errorNtB5_16DecodeUtf32ErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt }>, align 8
@30 = private unnamed_addr constant [43 x i8] c"called `Result::unwrap()` on an `Err` value", align 1
@31 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs5_NtNtCs3oUPovFnLWP_4core3num5errorNtB5_15TryFromIntErrorNtNtB9_3fmt5Debug3fmt }>, align 8
@32 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"\1E\00\00\00\00\00\00\00\14\02\00\00\0D\00\00\00" }>, align 8
@33 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"\1E\00\00\00\00\00\00\00\0F\02\00\00 \00\00\00" }>, align 8
@34 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"\1E\00\00\00\00\00\00\00\0B\02\00\00'\00\00\00" }>, align 8
@35 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCskeBJdk8gjxq_17fish_wcstringutil }>, align 8
@36 = private unnamed_addr constant [15 x i8] c"TryFromIntError", align 1
@37 = private unnamed_addr constant [105 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/widestring-1.2.1/src/utfstr/iter.rs\00", align 1
@38 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @37, [16 x i8] c"h\00\00\00\00\00\00\00_\00\00\00$\00\00\00" }>, align 8
@39 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @37, [16 x i8] c"h\00\00\00\00\00\00\00l\00\00\00)\00\00\00" }>, align 8
@40 = private unnamed_addr constant [5 x i8] c"Empty", align 1
@41 = private unnamed_addr constant [12 x i8] c"InvalidDigit", align 1
@42 = private unnamed_addr constant [11 x i8] c"PosOverflow", align 1
@43 = private unnamed_addr constant [11 x i8] c"NegOverflow", align 1
@44 = private unnamed_addr constant [4 x i8] c"Zero", align 1
@45 = private unnamed_addr constant [14 x i8] c"NotAPowerOfTwo", align 1
@46 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRmNtB6_5Debug3fmtCskeBJdk8gjxq_17fish_wcstringutil }>, align 8
@47 = private unnamed_addr constant [16 x i8] c"DecodeUtf32Error", align 1
@48 = private unnamed_addr constant [4 x i8] c"code", align 1
@switch.table._RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCskeBJdk8gjxq_17fish_wcstringutil = private unnamed_addr constant [6 x i8] c"\05\0C\0B\0B\04\0E", align 8
@switch.table._RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCskeBJdk8gjxq_17fish_wcstringutil.68 = private unnamed_addr constant [6 x ptr] [ptr @40, ptr @41, ptr @42, ptr @43, ptr @44, ptr @45], align 8

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef range(i32 0, 1114112) i32 @_RINvNtCs3oUPovFnLWP_4core7convert8identitycECskeBJdk8gjxq_17fish_wcstringutil(i32 noundef returned range(i32 0, 1114112) %0) unnamed_addr #0 {
bb.a:
  ret i32 %0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RINvYNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvBX_3any5checkcNCNvNvMCskeBJdk8gjxq_17fish_wcstringutilNtB2u_16StringFuzzyMatch10try_create13get_case_fold0E0INtNtNtB15_3ops12control_flow11ControlFlowuEEB2u_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !16, !nonnull !4, !noundef !4 ; 2 uses
  %.promoted = load ptr, ptr %0, align 8, !alias.scope !16 ; 2 uses
  %.not = icmp eq ptr %.promoted, %i.c
  br i1 %.not, label %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkcNCNvNvMCskeBJdk8gjxq_17fish_wcstringutilNtB1j_16StringFuzzyMatch10try_create13get_case_fold0E0B1j_.exit.backedge
  %i.d = phi ptr [ %i.e, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkcNCNvNvMCskeBJdk8gjxq_17fish_wcstringutilNtB1j_16StringFuzzyMatch10try_create13get_case_fold0E0B1j_.exit.backedge ], [ %.promoted, %bb.a ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 3 uses
  store ptr %i.e, ptr %0, align 8, !alias.scope !16
  %i.f = load i32, ptr %i.d, align 4, !noalias !16, !noundef !4 ; 6 uses
  %i.g = xor i32 %i.f, 55296
  %i.h = add i32 %i.g, -1114112
  %i.i = icmp ult i32 %i.h, -1112064
  br i1 %i.i, label %.split.i, label %bb.b

.split.i:                                         ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !17
  store i32 %i.f, ptr %i.a, align 4, !noalias !17
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @29, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #20, !noalias !16
  unreachable

bb.b:                                             ; preds = %.lr.ph
  %i.j = icmp ult i32 %i.f, 1114112
  tail call void @llvm.assume(i1 %i.j)
  %i.k = add nsw i32 %i.f, -65
  %or.cond.i.i = icmp ult i32 %i.k, 26
  br i1 %or.cond.i.i, label %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = icmp samesign ult i32 %i.f, 192
  br i1 %i.l, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkcNCNvNvMCskeBJdk8gjxq_17fish_wcstringutilNtB1j_16StringFuzzyMatch10try_create13get_case_fold0E0B1j_.exit.backedge, label %.split

.split:                                           ; preds = %bb.c
  %i.m = tail call noundef zeroext i1 @_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data9uppercase6lookup(i32 noundef range(i32 0, 1114112) %i.f)
  br i1 %i.m, label %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkcNCNvNvMCskeBJdk8gjxq_17fish_wcstringutilNtB1j_16StringFuzzyMatch10try_create13get_case_fold0E0B1j_.exit.backedge

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkcNCNvNvMCskeBJdk8gjxq_17fish_wcstringutilNtB1j_16StringFuzzyMatch10try_create13get_case_fold0E0B1j_.exit.backedge: ; preds = %.split, %bb.c
  %.not15 = icmp eq ptr %i.e, %i.c
  br i1 %.not15, label %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit, label %.lr.ph

_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit: ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkcNCNvNvMCskeBJdk8gjxq_17fish_wcstringutilNtB1j_16StringFuzzyMatch10try_create13get_case_fold0E0B1j_.exit.backedge, %.split, %bb.b, %bb.a
  %.lcssa11 = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ true, %.split ], [ false, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkcNCNvNvMCskeBJdk8gjxq_17fish_wcstringutilNtB1j_16StringFuzzyMatch10try_create13get_case_fold0E0B1j_.exit.backedge ]
  ret i1 %.lcssa11
}

; Function Attrs: nonlazybind uwtable
define void @_RNvCskeBJdk8gjxq_17fish_wcstringutil11split_about(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 4 captures(none) %3, i64 noundef %4, i64 noundef %5, i1 noundef zeroext %6) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 6 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 5 uses
  store i64 0, ptr %i.c, align 8
  %.not4495 = icmp eq i64 %5, 0
  %i.d = icmp eq i64 %2, 0                        ; 2 uses
  %or.cond96 = or i1 %.not4495, %i.d
  br i1 %or.cond96, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = icmp eq i64 %4, 0
  %i.f = shl nuw nsw i64 %4, 2                    ; 2 uses
  br i1 %i.e, label %.lr.ph.split.us.split, label %.lr.ph.split

.lr.ph.split.us.split:                            ; preds = %.lr.ph, %bb.d
  %i.g = phi ptr [ %i.l, %bb.d ], [ inttoptr (i64 8 to ptr), %.lr.ph ]
  %i.h = phi i64 [ %i.o, %bb.d ], [ 0, %.lr.ph ]  ; 4 uses
  %.sroa.0.099.us = phi i64 [ %i.p, %bb.d ], [ %5, %.lr.ph ]
  %.sroa.019.098.us = phi ptr [ %i.r, %bb.d ], [ %1, %.lr.ph ] ; 3 uses
  %.sroa.11.097.us = phi i64 [ %i.q, %bb.d ], [ %2, %.lr.ph ] ; 2 uses
  %i.i = icmp eq i64 %.sroa.11.097.us, 1
  br i1 %i.i, label %.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us.split
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29)
  %i.j = load i64, ptr %i.a, align 8, !range !5, !alias.scope !29, !noundef !4
  %i.k = icmp eq i64 %i.h, %i.j
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE8grow_oneCskeBJdk8gjxq_17fish_wcstringutil(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #21
          to label %..noexc48.us_crit_edge unwind label %.loopexit64.split.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

..noexc48.us_crit_edge:                           ; preds = %bb.c
  %.pre262 = load ptr, ptr %i.b, align 8, !alias.scope !29
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %..noexc48.us_crit_edge
  %i.l = phi ptr [ %.pre262, %..noexc48.us_crit_edge ], [ %i.g, %bb.b ] ; 2 uses
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.h ; 2 uses
  store ptr %.sroa.019.098.us, ptr %i.m, align 8, !noalias !30, !captures !6
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 1, ptr %i.n, align 8, !noalias !29
  %i.o = add i64 %i.h, 1                          ; 3 uses
  store i64 %i.o, ptr %i.c, align 8, !alias.scope !29
  %i.p = add i64 %.sroa.0.099.us, -1              ; 2 uses
  %i.q = add i64 %.sroa.11.097.us, -1             ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.019.098.us, i64 4 ; 2 uses
  %.not44.us = icmp eq i64 %i.p, 0
  br i1 %.not44.us, label %.thread, label %.lr.ph.split.us.split

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %6, label %.lr.ph.split.split, label %.lr.ph.split.split.us

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %bb.i
  %i.s = phi ptr [ %i.ag, %bb.i ], [ inttoptr (i64 8 to ptr), %.lr.ph.split ]
  %i.t = phi i64 [ %i.aj, %bb.i ], [ 0, %.lr.ph.split ] ; 6 uses
  %.sroa.0.099.us135 = phi i64 [ %i.an, %bb.i ], [ %5, %.lr.ph.split ]
  %.sroa.019.098.us136 = phi ptr [ %i.ap, %bb.i ], [ %1, %.lr.ph.split ] ; 6 uses
  %.sroa.11.097.us137 = phi i64 [ %i.ao, %bb.i ], [ %2, %.lr.ph.split ] ; 12 uses
  %i.u = icmp ugt i64 %4, %.sroa.11.097.us137
  br i1 %i.u, label %.thread, label %_RNCNvCskeBJdk8gjxq_17fish_wcstringutil11split_about0B3_.exit.i.us.i.us

_RNCNvCskeBJdk8gjxq_17fish_wcstringutil11split_about0B3_.exit.i.us.i.us: ; preds = %.lr.ph.split.split.us, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8position5checkRScNCNvCskeBJdk8gjxq_17fish_wcstringutil11split_about0E0B1n_.exit.us.i.us
  %.sroa.0.054.us = phi i64 [ %i.ab, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8position5checkRScNCNvCskeBJdk8gjxq_17fish_wcstringutil11split_about0E0B1n_.exit.us.i.us ], [ 0, %.lr.ph.split.split.us ] ; 8 uses
  %i.v = phi i64 [ %i.x, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8position5checkRScNCNvCskeBJdk8gjxq_17fish_wcstringutil11split_about0E0B1n_.exit.us.i.us ], [ %.sroa.11.097.us137, %.lr.ph.split.split.us ]
  %i.w = phi ptr [ %i.y, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8position5checkRScNCNvCskeBJdk8gjxq_17fish_wcstringutil11split_about0E0B1n_.exit.us.i.us ], [ %.sroa.019.098.us136, %.lr.ph.split.split.us ] ; 2 uses
  %i.x = add i64 %i.v, -1                         ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %bcmp.i.i.us.i.us = tail call i32 @bcmp(ptr noundef nonnull readonly align 4 dereferenceable(1) %i.w, ptr noundef nonnull readonly dereferenceable(1) %3, i64 %i.f), !noalias !31
  %i.z = icmp eq i32 %bcmp.i.i.us.i.us, 0
  br i1 %i.z, label %bb.e, label %_RNCNvCskeBJdk8gjxq_17fish_wcstringutil11split_about0B3_.exit.thread.i.us.i.us

_RNCNvCskeBJdk8gjxq_17fish_wcstringutil11split_about0B3_.exit.thread.i.us.i.us: ; preds = %_RNCNvCskeBJdk8gjxq_17fish_wcstringutil11split_about0B3_.exit.i.us.i.us
  %i.aa = icmp eq i64 %.sroa.0.054.us, -1
  br i1 %i.aa, label %.split21.us.i, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8position5checkRScNCNvCskeBJdk8gjxq_17fish_wcstringutil11split_about0E0B1n_.exit.us.i.us

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8position5checkRScNCNvCskeBJdk8gjxq_17fish_wcstringutil11split_about0E0B1n_.exit.us.i.us: ; preds = %_RNCNvCskeBJdk8gjxq_17fish_wcstringutil11split_about0B3_.exit.thread.i.us.i.us
  %i.ab = add nuw i64 %.sroa.0.054.us, 1
  %i.ac = icmp ugt i64 %4, %i.x
  br i1 %i.ac, label %.thread, label %_RNCNvCskeBJdk8gjxq_17fish_wcstringutil11split_about0B3_.exit.i.us.i.us

bb.e:                                             ; preds = %_RNCNvCskeBJdk8gjxq_17fish_wcstringutil11split_about0B3_.exit.i.us.i.us
  %i.ad = icmp eq i64 %.sroa.11.097.us137, %.sroa.0.054.us
  br i1 %i.ad, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not.us138 = icmp ugt i64 %.sroa.0.054.us, %.sroa.11.097.us137
  br i1 %.not.us138, label %.split.us.invoke, label %bb.g, !prof !7

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29)
  %i.ae = load i64, ptr %i.a, align 8, !range !5, !alias.scope !29, !noundef !4
  %i.af = icmp eq i64 %i.t, %i.ae
  br i1 %i.af, label %bb.h, label %.noexc48.us139

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE8grow_oneCskeBJdk8gjxq_17fish_wcstringutil(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #21
          to label %..noexc48.us139_crit_edge unwind label %.loopexit64.split.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

..noexc48.us139_crit_edge:                        ; preds = %bb.h
  %.pre = load ptr, ptr %i.b, align 8, !alias.scope !29
  br label %.noexc48.us139

.noexc48.us139:                                   ; preds = %..noexc48.us139_crit_edge, %bb.g
  %i.ag = phi ptr [ %.pre, %..noexc48.us139_crit_edge ], [ %i.s, %bb.g ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %i.t ; 2 uses
  store ptr %.sroa.019.098.us136, ptr %i.ah, align 8, !noalias !30, !captures !6
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i64 %.sroa.0.054.us, ptr %i.ai, align 8, !noalias !29
  %i.aj = add i64 %i.t, 1                         ; 3 uses
  store i64 %i.aj, ptr %i.c, align 8, !alias.scope !29
  %i.ak = add i64 %.sroa.0.054.us, %4             ; 5 uses
  %i.al = icmp ult i64 %i.ak, %.sroa.0.054.us
  br i1 %i.al, label %.split111, label %.thread59.us140

.thread59.us140:                                  ; preds = %.noexc48.us139
  %i.am = icmp ugt i64 %i.ak, %.sroa.11.097.us137
  br i1 %i.am, label %.split.us.invoke, label %bb.i, !prof !8

bb.i:                                             ; preds = %.thread59.us140
  %i.an = add i64 %.sroa.0.099.us135, -1          ; 2 uses
  %i.ao = sub nuw i64 %.sroa.11.097.us137, %i.ak  ; 3 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %.sroa.019.098.us136, i64 %i.ak ; 2 uses
  %.not44.us141 = icmp eq i64 %i.an, 0
  %i.aq = icmp eq i64 %i.ao, 0                    ; 2 uses
  %or.cond.us142 = select i1 %.not44.us141, i1 true, i1 %i.aq
  br i1 %or.cond.us142, label %.loopexit, label %.lr.ph.split.split.us

.loopexit:                                        ; preds = %bb.i, %bb.q, %bb.a
  %i.ar = phi i64 [ 0, %bb.a ], [ %i.bv, %bb.q ], [ %i.aj, %bb.i ]
  %.sroa.11.093 = phi i64 [ %2, %bb.a ], [ %i.bz, %bb.q ], [ %i.ao, %bb.i ]
  %.sroa.019.084 = phi ptr [ %1, %bb.a ], [ %i.ca, %bb.q ], [ %i.ap, %bb.i ]
  %i.as = phi i1 [ %i.d, %bb.a ], [ %i.cb, %bb.q ], [ %i.aq, %bb.i ]
  %or.cond46 = select i1 %6, i1 %i.as, i1 false
  br i1 %or.cond46, label %bb.s, label %.thread

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %bb.q
  %i.at = phi ptr [ %i.bu, %bb.q ], [ inttoptr (i64 8 to ptr), %.lr.ph.split ] ; 2 uses
  %i.au = phi i64 [ %i.bv, %bb.q ], [ 0, %.lr.ph.split ] ; 7 uses
  %.sroa.0.099 = phi i64 [ %i.by, %bb.q ], [ %5, %.lr.ph.split ]
  %.sroa.019.098 = phi ptr [ %i.ca, %bb.q ], [ %1, %.lr.ph.split ] ; 6 uses
  %.sroa.11.097 = phi i64 [ %i.bz, %bb.q ], [ %2, %.lr.ph.split ] ; 12 uses
  %i.av = icmp ugt i64 %4, %.sroa.11.097
  br i1 %i.av, label %.thread, label %_RNCNvCskeBJdk8gjxq_17fish_wcstringutil11split_about0B3_.exit.i.us.i

_RNCNvCskeBJdk8gjxq_17fish_wcstringutil11split_about0B3_.exit.i.us.i: ; preds = %.lr.ph.split.split, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8position5checkRScNCNvCskeBJdk8gjxq_17fish_wcstringutil11split_about0E0B1n_.exit.us.i
  %.sroa.0.054 = phi i64 [ %i.bc, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8position5checkRScNCNvCskeBJdk8gjxq_17fish_wcstringutil11split_about0E0B1n_.exit.us.i ], [ 0, %.lr.ph.split.split ] ; 9 uses
  %i.aw = phi i64 [ %i.ay, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8position5checkRScNCNvCskeBJdk8gjxq_17fish_wcstringutil11split_about0E0B1n_.exit.us.i ], [ %.sroa.11.097, %.lr.ph.split.split ]
  %i.ax = phi ptr [ %i.az, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8position5checkRScNCNvCskeBJdk8gjxq_17fish_wcstringutil11split_about0E0B1n_.exit.us.i ], [ %.sroa.019.098, %.lr.ph.split.split ] ; 2 uses
  %i.ay = add i64 %i.aw, -1                       ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %bcmp.i.i.us.i = tail call i32 @bcmp(ptr noundef nonnull readonly align 4 dereferenceable(1) %i.ax, ptr noundef nonnull readonly dereferenceable(1) %3, i64 %i.f), !noalias !31
  %i.ba = icmp eq i32 %bcmp.i.i.us.i, 0
  br i1 %i.ba, label %bb.l, label %_RNCNvCskeBJdk8gjxq_17fish_wcstringutil11split_about0B3_.exit.thread.i.us.i

_RNCNvCskeBJdk8gjxq_17fish_wcstringutil11split_about0B3_.exit.thread.i.us.i: ; preds = %_RNCNvCskeBJdk8gjxq_17fish_wcstringutil11split_about0B3_.exit.i.us.i
  %i.bb = icmp eq i64 %.sroa.0.054, -1
  br i1 %i.bb, label %.split21.us.i, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8position5checkRScNCNvCskeBJdk8gjxq_17fish_wcstringutil11split_about0E0B1n_.exit.us.i

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8position5checkRScNCNvCskeBJdk8gjxq_17fish_wcstringutil11split_about0E0B1n_.exit.us.i: ; preds = %_RNCNvCskeBJdk8gjxq_17fish_wcstringutil11split_about0B3_.exit.thread.i.us.i
  %i.bc = add nuw i64 %.sroa.0.054, 1
  %i.bd = icmp ugt i64 %4, %i.ay
  br i1 %i.bd, label %.thread, label %_RNCNvCskeBJdk8gjxq_17fish_wcstringutil11split_about0B3_.exit.i.us.i

.split21.us.i:                                    ; preds = %_RNCNvCskeBJdk8gjxq_17fish_wcstringutil11split_about0B3_.exit.thread.i.us.i.us, %_RNCNvCskeBJdk8gjxq_17fish_wcstringutil11split_about0B3_.exit.thread.i.us.i
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #20
          to label %.noexc unwind label %.loopexit64.split.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %.split21.us.i
  unreachable

.loopexit64.split.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.p, %bb.c, %bb.h, %.split.us.invoke, %.split111, %.split21.us.i, %bb.r
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  %.val = load i64, ptr %i.a, align 8             ; 2 uses
  %i.be = icmp eq i64 %.val, 0
  br i1 %i.be, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECskeBJdk8gjxq_17fish_wcstringutil.exit, label %bb.j

bb.j:                                             ; preds = %.loopexit64.split.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.val47 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.bf = shl nuw i64 %.val, 4
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val47, i64 noundef %i.bf, i64 noundef range(i64 1, -9223372036854775807) 8) #22
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECskeBJdk8gjxq_17fish_wcstringutil.exit

bb.k:                                             ; preds = %.split111
  unreachable

bb.l:                                             ; preds = %_RNCNvCskeBJdk8gjxq_17fish_wcstringutil11split_about0B3_.exit.i.us.i
  %i.bg = icmp eq i64 %.sroa.11.097, %.sroa.0.054
  br i1 %i.bg, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bh = icmp eq i64 %.sroa.0.054, 0
  br i1 %i.bh, label %.thread59, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not = icmp ugt i64 %.sroa.0.054, %.sroa.11.097
  br i1 %.not, label %.split.us.invoke, label %bb.o, !prof !7

.noexc48:                                         ; preds = %..noexc48_crit_edge, %bb.o
  %i.bi = phi ptr [ %.pre261, %..noexc48_crit_edge ], [ %i.at, %bb.o ] ; 2 uses
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %i.bi, i64 %i.au ; 2 uses
  store ptr %.sroa.019.098, ptr %i.bj, align 8, !noalias !30, !captures !6
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store i64 %.sroa.0.054, ptr %i.bk, align 8, !noalias !29
  %i.bl = add i64 %i.au, 1                        ; 2 uses
  store i64 %i.bl, ptr %i.c, align 8, !alias.scope !29
  %i.bm = add i64 %.sroa.0.054, %4                ; 2 uses
  %i.bn = icmp ult i64 %i.bm, %.sroa.0.054
  br i1 %i.bn, label %.split111, label %.thread59

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29)
  %i.bo = load i64, ptr %i.a, align 8, !range !5, !alias.scope !29, !noundef !4
  %i.bp = icmp eq i64 %i.au, %i.bo
  br i1 %i.bp, label %bb.p, label %.noexc48

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE8grow_oneCskeBJdk8gjxq_17fish_wcstringutil(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #21
          to label %..noexc48_crit_edge unwind label %.loopexit64.split.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

..noexc48_crit_edge:                              ; preds = %bb.p
  %.pre261 = load ptr, ptr %i.b, align 8, !alias.scope !29
  br label %.noexc48

.split.us.invoke:                                 ; preds = %.thread59.us140, %bb.f, %.thread59, %bb.n
  %i.bq = phi i64 [ 0, %bb.n ], [ %i.bw, %.thread59 ], [ %i.ak, %.thread59.us140 ], [ 0, %bb.f ]
  %i.br = phi i64 [ %.sroa.0.054, %bb.n ], [ %.sroa.11.097, %.thread59 ], [ %.sroa.11.097.us137, %.thread59.us140 ], [ %.sroa.0.054.us, %bb.f ]
  %i.bs = phi i64 [ %.sroa.11.097, %.thread59 ], [ %.sroa.11.097, %bb.n ], [ %.sroa.11.097.us137, %bb.f ], [ %.sroa.11.097.us137, %.thread59.us140 ]
  %i.bt = phi ptr [ @10, %bb.n ], [ @9, %.thread59 ], [ @9, %.thread59.us140 ], [ @10, %bb.f ]
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %i.bq, i64 noundef %i.br, i64 noundef %i.bs, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bt) #23
          to label %.split.us.cont unwind label %.loopexit64.split.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.split.us.cont:                                   ; preds = %.split.us.invoke
  unreachable

.thread59:                                        ; preds = %bb.m, %.noexc48
  %i.bu = phi ptr [ %i.bi, %.noexc48 ], [ %i.at, %bb.m ]
  %i.bv = phi i64 [ %i.bl, %.noexc48 ], [ %i.au, %bb.m ] ; 2 uses
  %i.bw = phi i64 [ %i.bm, %.noexc48 ], [ %4, %bb.m ] ; 4 uses
  %i.bx = icmp ugt i64 %i.bw, %.sroa.11.097
  br i1 %i.bx, label %.split.us.invoke, label %bb.q, !prof !8

.split111:                                        ; preds = %.noexc48.us139, %.noexc48
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #23
          to label %bb.k unwind label %.loopexit64.split.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %.thread59
  %i.by = add i64 %.sroa.0.099, -1                ; 2 uses
  %i.bz = sub nuw i64 %.sroa.11.097, %i.bw        ; 3 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %.sroa.019.098, i64 %i.bw ; 2 uses
  %.not44 = icmp eq i64 %i.by, 0
  %i.cb = icmp eq i64 %i.bz, 0                    ; 2 uses
  %or.cond = select i1 %.not44, i1 true, i1 %i.cb
  br i1 %or.cond, label %.loopexit, label %.lr.ph.split.split

.thread:                                          ; preds = %bb.e, %.lr.ph.split.split.us, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8position5checkRScNCNvCskeBJdk8gjxq_17fish_wcstringutil11split_about0E0B1n_.exit.us.i.us, %bb.l, %.lr.ph.split.split, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8position5checkRScNCNvCskeBJdk8gjxq_17fish_wcstringutil11split_about0E0B1n_.exit.us.i, %bb.d, %.lr.ph.split.us.split, %.loopexit
  %i.cc = phi i64 [ %i.ar, %.loopexit ], [ %i.h, %.lr.ph.split.us.split ], [ %i.au, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8position5checkRScNCNvCskeBJdk8gjxq_17fish_wcstringutil11split_about0E0B1n_.exit.us.i ], [ %i.t, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8position5checkRScNCNvCskeBJdk8gjxq_17fish_wcstringutil11split_about0E0B1n_.exit.us.i.us ], [ %i.au, %bb.l ], [ %i.o, %bb.d ], [ %i.au, %.lr.ph.split.split ], [ %i.t, %.lr.ph.split.split.us ], [ %i.t, %bb.e ] ; 3 uses
  %.sroa.11.092 = phi i64 [ %.sroa.11.093, %.loopexit ], [ 1, %.lr.ph.split.us.split ], [ %.sroa.11.097, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8position5checkRScNCNvCskeBJdk8gjxq_17fish_wcstringutil11split_about0E0B1n_.exit.us.i ], [ %.sroa.11.097.us137, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8position5checkRScNCNvCskeBJdk8gjxq_17fish_wcstringutil11split_about0E0B1n_.exit.us.i.us ], [ %.sroa.11.097, %bb.l ], [ %i.q, %bb.d ], [ %.sroa.11.097, %.lr.ph.split.split ], [ %.sroa.11.097.us137, %.lr.ph.split.split.us ], [ %.sroa.11.097.us137, %bb.e ]
  %.sroa.019.083 = phi ptr [ %.sroa.019.084, %.loopexit ], [ %.sroa.019.098.us, %.lr.ph.split.us.split ], [ %.sroa.019.098, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8position5checkRScNCNvCskeBJdk8gjxq_17fish_wcstringutil11split_about0E0B1n_.exit.us.i ], [ %.sroa.019.098.us136, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8position5checkRScNCNvCskeBJdk8gjxq_17fish_wcstringutil11split_about0E0B1n_.exit.us.i.us ], [ %.sroa.019.098, %bb.l ], [ %i.r, %bb.d ], [ %.sroa.019.098, %.lr.ph.split.split ], [ %.sroa.019.098.us136, %.lr.ph.split.split.us ], [ %.sroa.019.098.us136, %bb.e ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32)
  %i.cd = load i64, ptr %i.a, align 8, !range !5, !alias.scope !32, !noundef !4
  %i.ce = icmp eq i64 %i.cc, %i.cd
  br i1 %i.ce, label %bb.r, label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE8push_mutCskeBJdk8gjxq_17fish_wcstringutil.exit50

bb.r:                                             ; preds = %.thread
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE8grow_oneCskeBJdk8gjxq_17fish_wcstringutil(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #21
          to label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE8push_mutCskeBJdk8gjxq_17fish_wcstringutil.exit50 unwind label %.loopexit64.split.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE8push_mutCskeBJdk8gjxq_17fish_wcstringutil.exit50: ; preds = %bb.r, %.thread
  %7 = load ptr, ptr %i.b, align 8, !alias.scope !32, !nonnull !4, !noundef !4
  %i.cf = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %i.cc ; 2 uses
  store ptr %.sroa.019.083, ptr %i.cf, align 8, !noalias !33, !captures !6
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store i64 %.sroa.11.092, ptr %i.cg, align 8, !noalias !32
  %i.ch = add i64 %i.cc, 1
  store i64 %i.ch, ptr %i.c, align 8, !alias.scope !32
  br label %bb.s

bb.s:                                             ; preds = %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE8push_mutCskeBJdk8gjxq_17fish_wcstringutil.exit50, %.loopexit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECskeBJdk8gjxq_17fish_wcstringutil.exit: ; preds = %bb.j, %.loopexit64.split.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvCskeBJdk8gjxq_17fish_wcstringutil12trim_indices(ptr noalias nofree noundef nonnull readonly align 4 captures(address) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 4 captures(address) %2, i64 %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 3 uses
  %i.b = alloca [4 x i8], align 4                 ; 3 uses
  %.not = icmp eq ptr %2, null                    ; 2 uses
  %spec.select15 = select i1 %.not, ptr @11, ptr %2 ; 3 uses
  %.idx = shl nuw nsw i64 %1, 2
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68)
  %i.d = icmp eq i64 %1, 0
  br i1 %i.d, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %spec.select = select i1 %.not, i64 5, i64 %3   ; 2 uses
  %i.e = and i64 %spec.select, 2305843009213693936 ; 5 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %spec.select15, i64 %i.e ; 3 uses
  %i.g = shl i64 %spec.select, 2
  %.idx87 = and i64 %i.g, 60                      ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx87 ; 2 uses
  %.not.i.i.i.i.i75 = icmp eq i64 %i.e, 0
  %.not.not.not.i.not.not.i.i.i.i.i78 = icmp samesign eq i64 %.idx87, 0
  br label %bb.b

bb.b:                                             ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator9rposition5checkcNCNvCskeBJdk8gjxq_17fish_wcstringutil12trim_indices0E0B1m_.exit.i.i, %.lr.ph.i.i
  %.sroa.01.018.i.i = phi i64 [ %1, %.lr.ph.i.i ], [ %i.z, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator9rposition5checkcNCNvCskeBJdk8gjxq_17fish_wcstringutil12trim_indices0E0B1m_.exit.i.i ] ; 3 uses
  %i.i = phi ptr [ %i.c, %.lr.ph.i.i ], [ %i.j, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator9rposition5checkcNCNvCskeBJdk8gjxq_17fish_wcstringutil12trim_indices0E0B1m_.exit.i.i ]
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 -4 ; 3 uses
  %i.k = load i32, ptr %i.j, align 4, !noalias !69, !noundef !4 ; 5 uses
  %i.l = xor i32 %i.k, 55296
  %i.m = add i32 %i.l, -1114112
  %i.n = icmp ult i32 %i.m, -1112064
  br i1 %i.n, label %.split.i.i.i, label %bb.c

.split.i.i.i:                                     ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !70
  store i32 %i.k, ptr %i.b, align 4, !noalias !70
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @29, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #20, !noalias !69
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.o = icmp ult i32 %i.k, 1114112
  tail call void @llvm.assume(i1 %i.o)
  br i1 %.not.i.i.i.i.i75, label %.preheader.i.i.preheader, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsK_NtB9_3cmpcNtB1L_13SliceContains14slice_contains0ECskeBJdk8gjxq_17fish_wcstringutil.exit.i.i.i.i.i.preheader

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsK_NtB9_3cmpcNtB1L_13SliceContains14slice_contains0ECskeBJdk8gjxq_17fish_wcstringutil.exit.i.i.i.i.i.preheader: ; preds = %bb.c
  %i.p = insertelement <16 x i32> poison, i32 %i.k, i64 0
  %i.q = shufflevector <16 x i32> %i.p, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsK_NtB9_3cmpcNtB1L_13SliceContains14slice_contains0ECskeBJdk8gjxq_17fish_wcstringutil.exit.i.i.i.i.i

bb.d:                                             ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsK_NtB9_3cmpcNtB1L_13SliceContains14slice_contains0ECskeBJdk8gjxq_17fish_wcstringutil.exit.i.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i.i77, i64 64
  %i.s = add nsw i64 %.sroa.5.0.i.i.i.i.i76, -16  ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.s, 0
  br i1 %.not.i.i.i.i.i, label %.preheader.i.i.preheader, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsK_NtB9_3cmpcNtB1L_13SliceContains14slice_contains0ECskeBJdk8gjxq_17fish_wcstringutil.exit.i.i.i.i.i

.preheader.i.i.preheader:                         ; preds = %bb.d, %bb.c
  br i1 %.not.not.not.i.not.not.i.i.i.i.i78, label %.lr.ph.i.preheader, label %.lr.ph

.lr.ph.i.preheader:                               ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %.not.i.i.i.i80 = icmp eq i64 %i.e, 0
  %.not.not.not.i.not.not.i.i.i.i83 = icmp samesign eq i64 %.idx87, 0
  br label %.lr.ph.i

.preheader.i.i:                                   ; preds = %.lr.ph
  %i.t = getelementptr inbounds nuw i8, ptr %i.u, i64 4 ; 2 uses
  %.not.not.not.i.not.not.i.i.i.i.i = icmp eq ptr %i.t, %i.h
  br i1 %.not.not.not.i.not.not.i.i.i.i.i, label %.lr.ph.i.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %i.u = phi ptr [ %i.t, %.preheader.i.i ], [ %i.f, %.preheader.i.i.preheader ] ; 2 uses
  %.val2.i.i.i.i.i.i = load i32, ptr %i.u, align 4, !range !9, !alias.scope !71, !noalias !72, !noundef !4
  %i.v = icmp eq i32 %.val2.i.i.i.i.i.i, %i.k
  br i1 %i.v, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator9rposition5checkcNCNvCskeBJdk8gjxq_17fish_wcstringutil12trim_indices0E0B1m_.exit.i.i, label %.preheader.i.i

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsK_NtB9_3cmpcNtB1L_13SliceContains14slice_contains0ECskeBJdk8gjxq_17fish_wcstringutil.exit.i.i.i.i.i: ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsK_NtB9_3cmpcNtB1L_13SliceContains14slice_contains0ECskeBJdk8gjxq_17fish_wcstringutil.exit.i.i.i.i.i.preheader, %bb.d
  %.sroa.0.05.i.i.i.i.i77 = phi ptr [ %i.r, %bb.d ], [ %spec.select15, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsK_NtB9_3cmpcNtB1L_13SliceContains14slice_contains0ECskeBJdk8gjxq_17fish_wcstringutil.exit.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.5.0.i.i.i.i.i76 = phi i64 [ %i.s, %bb.d ], [ %i.e, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsK_NtB9_3cmpcNtB1L_13SliceContains14slice_contains0ECskeBJdk8gjxq_17fish_wcstringutil.exit.i.i.i.i.i.preheader ]
  %i.w = load <16 x i32>, ptr %.sroa.0.05.i.i.i.i.i77, align 4, !alias.scope !71, !noalias !73
  %i.x = icmp eq <16 x i32> %i.w, %i.q
  %i.y = bitcast <16 x i1> %i.x to i16
  %.not88 = icmp eq i16 %i.y, 0
  br i1 %.not88, label %bb.d, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator9rposition5checkcNCNvCskeBJdk8gjxq_17fish_wcstringutil12trim_indices0E0B1m_.exit.i.i

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator9rposition5checkcNCNvCskeBJdk8gjxq_17fish_wcstringutil12trim_indices0E0B1m_.exit.i.i: ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsK_NtB9_3cmpcNtB1L_13SliceContains14slice_contains0ECskeBJdk8gjxq_17fish_wcstringutil.exit.i.i.i.i.i, %.lr.ph
  %i.z = add i64 %.sroa.01.018.i.i, -1
  %i.aa = icmp eq ptr %0, %i.j
  br i1 %i.aa, label %.loopexit, label %bb.b

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8position5checkcNCNvCskeBJdk8gjxq_17fish_wcstringutil12trim_indicess_0E0B1l_.exit.i
  %.sroa.0.0 = phi i64 [ %i.as, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8position5checkcNCNvCskeBJdk8gjxq_17fish_wcstringutil12trim_indicess_0E0B1l_.exit.i ], [ 0, %.lr.ph.i.preheader ] ; 2 uses
  %i.ab = phi ptr [ %i.ac, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8position5checkcNCNvCskeBJdk8gjxq_17fish_wcstringutil12trim_indicess_0E0B1l_.exit.i ], [ %0, %.lr.ph.i.preheader ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 4 ; 2 uses
  %i.ad = load i32, ptr %i.ab, align 4, !noalias !74, !noundef !4 ; 5 uses
  %i.ae = xor i32 %i.ad, 55296
  %i.af = add i32 %i.ae, -1114112
  %i.ag = icmp ult i32 %i.af, -1112064
  br i1 %i.ag, label %.split.i.i, label %bb.e

.split.i.i:                                       ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !75
  store i32 %i.ad, ptr %i.a, align 4, !noalias !75
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @29, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #20, !noalias !74
  unreachable

bb.e:                                             ; preds = %.lr.ph.i
  %i.ah = icmp ult i32 %i.ad, 1114112
  tail call void @llvm.assume(i1 %i.ah)
  br i1 %.not.i.i.i.i80, label %.preheader.i.preheader, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsK_NtB9_3cmpcNtB1L_13SliceContains14slice_contains0ECskeBJdk8gjxq_17fish_wcstringutil.exit.i.i.i.i.preheader

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsK_NtB9_3cmpcNtB1L_13SliceContains14slice_contains0ECskeBJdk8gjxq_17fish_wcstringutil.exit.i.i.i.i.preheader: ; preds = %bb.e
  %i.ai = insertelement <16 x i32> poison, i32 %i.ad, i64 0
  %i.aj = shufflevector <16 x i32> %i.ai, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsK_NtB9_3cmpcNtB1L_13SliceContains14slice_contains0ECskeBJdk8gjxq_17fish_wcstringutil.exit.i.i.i.i

bb.f:                                             ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsK_NtB9_3cmpcNtB1L_13SliceContains14slice_contains0ECskeBJdk8gjxq_17fish_wcstringutil.exit.i.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i82, i64 64
  %i.al = add nsw i64 %.sroa.5.0.i.i.i.i81, -16   ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.al, 0
  br i1 %.not.i.i.i.i, label %.preheader.i.preheader, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsK_NtB9_3cmpcNtB1L_13SliceContains14slice_contains0ECskeBJdk8gjxq_17fish_wcstringutil.exit.i.i.i.i

.preheader.i.preheader:                           ; preds = %bb.f, %bb.e
  br i1 %.not.not.not.i.not.not.i.i.i.i83, label %.preheader.i.preheader._crit_edge, label %.lr.ph84

.preheader.i:                                     ; preds = %.lr.ph84
  %i.am = getelementptr inbounds nuw i8, ptr %i.an, i64 4 ; 2 uses
  %.not.not.not.i.not.not.i.i.i.i = icmp eq ptr %i.am, %i.h
  br i1 %.not.not.not.i.not.not.i.i.i.i, label %.preheader.i.preheader._crit_edge, label %.lr.ph84

.lr.ph84:                                         ; preds = %.preheader.i.preheader, %.preheader.i
  %i.an = phi ptr [ %i.am, %.preheader.i ], [ %i.f, %.preheader.i.preheader ] ; 2 uses
  %.val2.i.i.i.i.i = load i32, ptr %i.an, align 4, !range !9, !alias.scope !76, !noalias !77, !noundef !4
  %i.ao = icmp eq i32 %.val2.i.i.i.i.i, %i.ad
  br i1 %i.ao, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8position5checkcNCNvCskeBJdk8gjxq_17fish_wcstringutil12trim_indicess_0E0B1l_.exit.i, label %.preheader.i

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsK_NtB9_3cmpcNtB1L_13SliceContains14slice_contains0ECskeBJdk8gjxq_17fish_wcstringutil.exit.i.i.i.i: ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsK_NtB9_3cmpcNtB1L_13SliceContains14slice_contains0ECskeBJdk8gjxq_17fish_wcstringutil.exit.i.i.i.i.preheader, %bb.f
  %.sroa.0.05.i.i.i.i82 = phi ptr [ %i.ak, %bb.f ], [ %spec.select15, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsK_NtB9_3cmpcNtB1L_13SliceContains14slice_contains0ECskeBJdk8gjxq_17fish_wcstringutil.exit.i.i.i.i.preheader ] ; 2 uses
  %.sroa.5.0.i.i.i.i81 = phi i64 [ %i.al, %bb.f ], [ %i.e, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsK_NtB9_3cmpcNtB1L_13SliceContains14slice_contains0ECskeBJdk8gjxq_17fish_wcstringutil.exit.i.i.i.i.preheader ]
  %i.ap = load <16 x i32>, ptr %.sroa.0.05.i.i.i.i82, align 4, !alias.scope !76, !noalias !78
  %i.aq = icmp eq <16 x i32> %i.ap, %i.aj
  %i.ar = bitcast <16 x i1> %i.aq to i16
  %.not89 = icmp eq i16 %i.ar, 0
  br i1 %.not89, label %bb.f, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8position5checkcNCNvCskeBJdk8gjxq_17fish_wcstringutil12trim_indicess_0E0B1l_.exit.i

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8position5checkcNCNvCskeBJdk8gjxq_17fish_wcstringutil12trim_indicess_0E0B1l_.exit.i: ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsK_NtB9_3cmpcNtB1L_13SliceContains14slice_contains0ECskeBJdk8gjxq_17fish_wcstringutil.exit.i.i.i.i, %.lr.ph84
  %i.as = add nuw nsw i64 %.sroa.0.0, 1
  %i.at = icmp eq ptr %i.ac, %i.c
  br i1 %i.at, label %bb.g, label %.lr.ph.i

.preheader.i.preheader._crit_edge:                ; preds = %.preheader.i.preheader, %.preheader.i
  %i.au = icmp eq i64 %.sroa.01.018.i.i, 0
  br i1 %i.au, label %bb.h, label %.loopexit

bb.g:                                             ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8position5checkcNCNvCskeBJdk8gjxq_17fish_wcstringutil12trim_indicess_0E0B1l_.exit.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 37, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #20
  unreachable

bb.h:                                             ; preds = %.preheader.i.preheader._crit_edge
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #20
  unreachable

.loopexit:                                        ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator9rposition5checkcNCNvCskeBJdk8gjxq_17fish_wcstringutil12trim_indices0E0B1m_.exit.i.i, %.preheader.i.preheader._crit_edge, %bb.a
  %.sroa.34.0 = phi i64 [ %.sroa.01.018.i.i, %.preheader.i.preheader._crit_edge ], [ 0, %bb.a ], [ 0, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator9rposition5checkcNCNvCskeBJdk8gjxq_17fish_wcstringutil12trim_indices0E0B1m_.exit.i.i ]
  %.sroa.03.0 = phi i64 [ %.sroa.0.0, %.preheader.i.preheader._crit_edge ], [ 0, %bb.a ], [ 0, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator9rposition5checkcNCNvCskeBJdk8gjxq_17fish_wcstringutil12trim_indices0E0B1m_.exit.i.i ]
  %i.av = insertvalue { i64, i64 } poison, i64 %.sroa.03.0, 0
  %i.aw = insertvalue { i64, i64 } %i.av, i64 %.sroa.34.0, 1
  ret { i64, i64 } %i.aw
}

; Function Attrs: nonlazybind uwtable
define void @_RNvCskeBJdk8gjxq_17fish_wcstringutil13trim_in_place(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 4 captures(address) %1, i64 %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !4 ; 3 uses
  %i.f = tail call fastcc { i64, i64 } @_RNvCskeBJdk8gjxq_17fish_wcstringutil12trim_indices(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.c, i64 noundef %i.e, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) %1, i64 %2) ; 2 uses
  %i.g = extractvalue { i64, i64 } %i.f, 0        ; 4 uses
  %i.h = extractvalue { i64, i64 } %i.f, 1        ; 3 uses
  %i.i = icmp ugt i64 %i.h, %i.e
  br i1 %i.i, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE8truncateCskeBJdk8gjxq_17fish_wcstringutil.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %i.h, ptr %i.d, align 8, !alias.scope !84
  br label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE8truncateCskeBJdk8gjxq_17fish_wcstringutil.exit

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE8truncateCskeBJdk8gjxq_17fish_wcstringutil.exit: ; preds = %bb.a, %bb.b
  %i.j = phi i64 [ %i.e, %bb.a ], [ %i.h, %bb.b ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85)
  %i.k = icmp ult i64 %i.j, 2305843009213693952
  tail call void @llvm.assume(i1 %i.k)
  %i.l = icmp ugt i64 %i.g, %i.j
  br i1 %i.l, label %bb.c, label %_RINvMs_NtCslLGyqsphxMB_10widestring9utfstringNtB5_11Utf32String5drainINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEECskeBJdk8gjxq_17fish_wcstringutil.exit, !prof !8

bb.c:                                             ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE8truncateCskeBJdk8gjxq_17fish_wcstringutil.exit
  tail call void @_RNvNvCslLGyqsphxMB_10widestring5range24slice_end_index_len_fail(i64 noundef %i.g, i64 noundef range(i64 0, 2305843009213693952) %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #20, !noalias !86
  unreachable

_RINvMs_NtCslLGyqsphxMB_10widestring9utfstringNtB5_11Utf32String5drainINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEECskeBJdk8gjxq_17fish_wcstringutil.exit: ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE8truncateCskeBJdk8gjxq_17fish_wcstringutil.exit
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.g
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.n, align 8, !alias.scope !85
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.g, ptr %i.o, align 8, !alias.scope !85
  store ptr %i.c, ptr %i.a, align 8, !alias.scope !85
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.m, ptr %i.p, align 8, !alias.scope !85
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %0, ptr %i.q, align 8, !alias.scope !85
  call void @_RNvXs8_NtNtCslLGyqsphxMB_10widestring9utfstring4iterNtB5_10DrainUtf32NtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvCskeBJdk8gjxq_17fish_wcstringutil16bool_from_string(ptr noalias nofree noundef nonnull readonly align 4 captures(none) %0, i64 noundef %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 3 uses
  %i.b = icmp eq i64 %1, 0
  br i1 %i.b, label %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %0, align 4, !noalias !91, !noundef !4 ; 4 uses
  %i.d = xor i32 %i.c, 55296
  %i.e = add i32 %i.d, -1114112
  %i.f = icmp ult i32 %i.e, -1112064
  br i1 %i.f, label %.split.i, label %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit

.split.i:                                         ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !92
  store i32 %i.c, ptr %i.a, align 4, !noalias !92
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @29, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #20, !noalias !91
  unreachable

_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit: ; preds = %bb.b
  %i.g = icmp ult i32 %i.c, 1114112
  tail call void @llvm.assume(i1 %i.g)
  switch i32 %i.c, label %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread [
    i32 49, label %bb.c
    i32 89, label %bb.c
    i32 84, label %bb.c
    i32 121, label %bb.c
    i32 116, label %bb.c
  ]

bb.c:                                             ; preds = %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit, %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit, %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit, %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit, %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit
  br label %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread

_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread: ; preds = %bb.a, %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit, %bb.c
  %.sroa.0.0 = phi i1 [ true, %bb.c ], [ false, %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define void @_RNvCskeBJdk8gjxq_17fish_wcstringutil16split_string_tok(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 4 captures(address) %3, i64 noundef %4, i64 noundef range(i64 0, 2) %5, i64 %6) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  store i64 0, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = trunc nuw i64 %5 to i1
  %. = select i1 %i.f, i64 %6, i64 -1             ; 8 uses
  store i64 %., ptr %i.b, align 8
  %.not86 = icmp eq i64 %2, 0
  br i1 %.not86, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx = shl nuw nsw i64 %2, 2                   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %.idx ; 2 uses
  %i.h = and i64 %4, 2305843009213693936          ; 5 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.h ; 3 uses
  %i.j = shl i64 %4, 2
  %.idx169 = and i64 %i.j, 60                     ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx169 ; 2 uses
  %i.l = icmp ugt i64 %., 1
  br i1 %i.l, label %.lr.ph.i.preheader, label %._crit_edge

.lr.ph.i.preheader:                               ; preds = %.lr.ph
  %.not.i.i.i153 = icmp eq i64 %i.h, 0
  %.not.not.not.i.not.not.i.i.i156 = icmp samesign eq i64 %.idx169, 0
  %.not.i.i.i22159 = icmp eq i64 %i.h, 0
  %.not.not.not.i.not.not.i.not.i.i162 = icmp samesign eq i64 %.idx169, 0
  br label %.lr.ph.i

bb.b:                                             ; preds = %bb.t
  %i.m = icmp samesign ult i64 %i.u, 576460752303423488
  tail call void @llvm.assume(i1 %i.m)
  %i.n = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %i.o = icmp ult i64 %i.n, %.
  br i1 %i.o, label %.lr.ph.i, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %bb.t, %.lr.ph, %bb.a
  %i.p = phi i64 [ 0, %bb.a ], [ 0, %.lr.ph ], [ %i.u, %bb.t ], [ %i.u, %bb.b ] ; 5 uses
  %.lcssa = phi i64 [ 0, %bb.a ], [ 0, %.lr.ph ], [ %i.ci, %bb.t ], [ %i.ci, %bb.b ] ; 3 uses
  %i.q = icmp ult i64 %.lcssa, %2
  %i.r = icmp ne i64 %., 0
  %or.cond = select i1 %i.q, i1 %i.r, i1 false
  br i1 %or.cond, label %bb.g, label %.thread

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.r, %.invoke135, %.invoke, %bb.p, %bb.j, %bb.k, %bb.h
  %lpad.loopexit.split-lp175 = landingpad { ptr, i32 }
          cleanup
  %.val = load i64, ptr %i.c, align 8             ; 2 uses
  %i.s = icmp eq i64 %.val, 0
  br i1 %i.s, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECskeBJdk8gjxq_17fish_wcstringutil.exit, label %bb.c

bb.c:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.val16 = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4
  %i.t = shl nuw i64 %.val, 4
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val16, i64 noundef %i.t, i64 noundef range(i64 1, -9223372036854775807) 8) #22
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECskeBJdk8gjxq_17fish_wcstringutil.exit

bb.d:                                             ; preds = %bb.k, %bb.h
  unreachable

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.b
  %i.u = phi i64 [ %i.n, %bb.b ], [ 1, %.lr.ph.i.preheader ] ; 6 uses
  %i.v = phi i64 [ %i.ci, %bb.b ], [ 0, %.lr.ph.i.preheader ] ; 4 uses
  %i.w = phi i64 [ %i.u, %bb.b ], [ 0, %.lr.ph.i.preheader ] ; 3 uses
  %i.x = phi ptr [ %i.ce, %bb.b ], [ inttoptr (i64 8 to ptr), %.lr.ph.i.preheader ]
  %.idx58 = shl nuw nsw i64 %i.v, 2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !119)
  %i.y = sub nuw nsw i64 %2, %i.v
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %.idx58
  br label %bb.e

bb.e:                                             ; preds = %.loopexit.i, %.lr.ph.i
  %.sroa.02.011.i = phi i64 [ 0, %.lr.ph.i ], [ %i.am, %.loopexit.i ] ; 3 uses
  %i.aa = phi ptr [ %i.z, %.lr.ph.i ], [ %i.ab, %.loopexit.i ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4 ; 2 uses
  %.val7.i = load i32, ptr %i.aa, align 4, !range !9, !noalias !120, !noundef !4 ; 2 uses
  br i1 %.not.i.i.i153, label %.preheader.i.preheader, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsK_NtB9_3cmpcNtB1L_13SliceContains14slice_contains0ECskeBJdk8gjxq_17fish_wcstringutil.exit.i.i.i.preheader

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsK_NtB9_3cmpcNtB1L_13SliceContains14slice_contains0ECskeBJdk8gjxq_17fish_wcstringutil.exit.i.i.i.preheader: ; preds = %bb.e
  %i.ac = insertelement <16 x i32> poison, i32 %.val7.i, i64 0
  %i.ad = shufflevector <16 x i32> %i.ac, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsK_NtB9_3cmpcNtB1L_13SliceContains14slice_contains0ECskeBJdk8gjxq_17fish_wcstringutil.exit.i.i.i

bb.f:                                             ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsK_NtB9_3cmpcNtB1L_13SliceContains14slice_contains0ECskeBJdk8gjxq_17fish_wcstringutil.exit.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i155, i64 64
  %i.af = add nsw i64 %.sroa.5.0.i.i.i154, -16    ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.af, 0
  br i1 %.not.i.i.i, label %.preheader.i.preheader, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsK_NtB9_3cmpcNtB1L_13SliceContains14slice_contains0ECskeBJdk8gjxq_17fish_wcstringutil.exit.i.i.i

.preheader.i.preheader:                           ; preds = %bb.f, %bb.e
  br i1 %.not.not.not.i.not.not.i.i.i156, label %.preheader.i.preheader._crit_edge, label %.lr.ph157

.preheader.i:                                     ; preds = %.lr.ph157
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ah, i64 4 ; 2 uses
  %.not.not.not.i.not.not.i.i.i = icmp eq ptr %i.ag, %i.k
  br i1 %.not.not.not.i.not.not.i.i.i, label %.preheader.i.preheader._crit_edge, label %.lr.ph157

.lr.ph157:                                        ; preds = %.preheader.i.preheader, %.preheader.i
  %i.ah = phi ptr [ %i.ag, %.preheader.i ], [ %i.i, %.preheader.i.preheader ] ; 2 uses
  %.val2.i.i.i.i = load i32, ptr %i.ah, align 4, !range !9, !alias.scope !121, !noalias !122, !noundef !4
  %i.ai = icmp eq i32 %.val2.i.i.i.i, %.val7.i
  br i1 %i.ai, label %.loopexit.i, label %.preheader.i

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsK_NtB9_3cmpcNtB1L_13SliceContains14slice_contains0ECskeBJdk8gjxq_17fish_wcstringutil.exit.i.i.i: ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsK_NtB9_3cmpcNtB1L_13SliceContains14slice_contains0ECskeBJdk8gjxq_17fish_wcstringutil.exit.i.i.i.preheader, %bb.f
  %.sroa.0.05.i.i.i155 = phi ptr [ %i.ae, %bb.f ], [ %3, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsK_NtB9_3cmpcNtB1L_13SliceContains14slice_contains0ECskeBJdk8gjxq_17fish_wcstringutil.exit.i.i.i.preheader ] ; 2 uses
  %.sroa.5.0.i.i.i154 = phi i64 [ %i.af, %bb.f ], [ %i.h, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsK_NtB9_3cmpcNtB1L_13SliceContains14slice_contains0ECskeBJdk8gjxq_17fish_wcstringutil.exit.i.i.i.preheader ]
  %i.aj = load <16 x i32>, ptr %.sroa.0.05.i.i.i155, align 4, !alias.scope !121, !noalias !123
  %i.ak = icmp eq <16 x i32> %i.aj, %i.ad
  %i.al = bitcast <16 x i1> %i.ak to i16
  %.not170 = icmp eq i16 %i.al, 0
  br i1 %.not170, label %bb.f, label %.loopexit.i

.loopexit.i:                                      ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsK_NtB9_3cmpcNtB1L_13SliceContains14slice_contains0ECskeBJdk8gjxq_17fish_wcstringutil.exit.i.i.i, %.lr.ph157
  %i.am = add nuw nsw i64 %.sroa.02.011.i, 1
  %i.an = icmp eq ptr %i.ab, %i.g
  br i1 %i.an, label %.thread, label %bb.e

.preheader.i.preheader._crit_edge:                ; preds = %.preheader.i.preheader, %.preheader.i
  %i.ao = icmp ult i64 %.sroa.02.011.i, %i.y
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = add i64 %.sroa.02.011.i, %i.v           ; 9 uses
  %i.aq = icmp ult i64 %i.ap, %i.v
  br i1 %i.aq, label %.invoke, label %bb.m

.thread:                                          ; preds = %.loopexit.i, %._crit_edge
  %i.ar = phi i64 [ %i.p, %._crit_edge ], [ %i.w, %.loopexit.i ] ; 2 uses
  %i.as = icmp ult i64 %i.ar, 576460752303423488
  tail call void @llvm.assume(i1 %i.as)
  %.not = icmp ugt i64 %i.ar, %.
  br i1 %.not, label %bb.k, label %bb.l, !prof !124

bb.g:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.at = icmp samesign ult i64 %i.p, 576460752303423488
  tail call void @llvm.assume(i1 %i.at)
  %i.au = add nuw nsw i64 %i.p, 1                 ; 2 uses
  store i64 %i.au, ptr %i.a, align 8
  %i.av = icmp eq i64 %i.au, %.
  br i1 %i.av, label %bb.i, label %bb.h, !prof !10

bb.h:                                             ; preds = %bb.g
  invoke void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noundef nonnull @15, ptr nonnull inttoptr (i64 51 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #23
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.aw = sub nuw i64 %2, %.lcssa
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.lcssa
  tail call void @llvm.experimental.noalias.scope.decl(metadata !125)
  %i.ay = load i64, ptr %i.c, align 8, !range !5, !alias.scope !125, !noundef !4
  %i.az = icmp eq i64 %i.p, %i.ay
  br i1 %i.az, label %bb.j, label %.thread.thread

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE8grow_oneCskeBJdk8gjxq_17fish_wcstringutil(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #21
          to label %.thread.thread unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread.thread:                                   ; preds = %bb.i, %bb.j
  %7 = load ptr, ptr %i.d, align 8, !alias.scope !125, !nonnull !4, !noundef !4
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %i.p ; 2 uses
  store ptr %i.ax, ptr %i.ba, align 8, !noalias !126, !captures !6
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store i64 %i.aw, ptr %i.bb, align 8, !noalias !125
  store i64 %., ptr %i.e, align 8, !alias.scope !125
  %i.bc = icmp samesign ult i64 %., 576460752303423488
  tail call void @llvm.assume(i1 %i.bc)
  br label %bb.l

bb.k:                                             ; preds = %.thread
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @17, ptr noundef nonnull inttoptr (i64 41 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #23
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.l:                                             ; preds = %.thread.thread, %.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.m:                                             ; preds = %.preheader.i.preheader._crit_edge
  %i.bd = icmp ugt i64 %i.ap, %2
  br i1 %i.bd, label %.invoke135, label %bb.n, !prof !8

bb.n:                                             ; preds = %bb.m
  %.idx59 = shl nuw nsw i64 %i.ap, 2              ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 %.idx59 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127)
  %i.bf = sub nuw nsw i64 %2, %i.ap
  %i.bg = icmp samesign eq i64 %.idx59, %.idx
  br i1 %i.bg, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionjE6map_orjNCNvCskeBJdk8gjxq_17fish_wcstringutil16split_string_toks0_0EBW_.exit, label %.lr.ph.i18

.lr.ph.i18:                                       ; preds = %bb.n, %_RNCNvCskeBJdk8gjxq_17fish_wcstringutil16split_string_toks_0B3_.exit.i
  %.sroa.02.014.i = phi i64 [ %i.bt, %_RNCNvCskeBJdk8gjxq_17fish_wcstringutil16split_string_toks_0B3_.exit.i ], [ 0, %bb.n ] ; 3 uses
  %i.bh = phi ptr [ %i.bi, %_RNCNvCskeBJdk8gjxq_17fish_wcstringutil16split_string_toks_0B3_.exit.i ], [ %i.be, %bb.n ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 4 ; 2 uses
  %.val7.i19 = load i32, ptr %i.bh, align 4, !range !9, !noalias !128, !noundef !4 ; 2 uses
  br i1 %.not.i.i.i22159, label %.preheader.i43.preheader, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsK_NtB9_3cmpcNtB1L_13SliceContains14slice_contains0ECskeBJdk8gjxq_17fish_wcstringutil.exit.i.i.i23.preheader

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsK_NtB9_3cmpcNtB1L_13SliceContains14slice_contains0ECskeBJdk8gjxq_17fish_wcstringutil.exit.i.i.i23.preheader: ; preds = %.lr.ph.i18
  %i.bj = insertelement <16 x i32> poison, i32 %.val7.i19, i64 0
  %i.bk = shufflevector <16 x i32> %i.bj, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsK_NtB9_3cmpcNtB1L_13SliceContains14slice_contains0ECskeBJdk8gjxq_17fish_wcstringutil.exit.i.i.i23

bb.o:                                             ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsK_NtB9_3cmpcNtB1L_13SliceContains14slice_contains0ECskeBJdk8gjxq_17fish_wcstringutil.exit.i.i.i23
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i21161, i64 64
  %i.bm = add nsw i64 %.sroa.5.0.i.i.i20160, -16  ; 2 uses
  %.not.i.i.i22 = icmp eq i64 %i.bm, 0
  br i1 %.not.i.i.i22, label %.preheader.i43.preheader, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsK_NtB9_3cmpcNtB1L_13SliceContains14slice_contains0ECskeBJdk8gjxq_17fish_wcstringutil.exit.i.i.i23

.preheader.i43.preheader:                         ; preds = %bb.o, %.lr.ph.i18
  br i1 %.not.not.not.i.not.not.i.not.i.i162, label %_RNCNvCskeBJdk8gjxq_17fish_wcstringutil16split_string_toks_0B3_.exit.i, label %.lr.ph163

.preheader.i43:                                   ; preds = %.lr.ph163
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bo, i64 4 ; 2 uses
  %.not.not.not.i.not.not.i.not.i.i = icmp eq ptr %i.bn, %i.k
  br i1 %.not.not.not.i.not.not.i.not.i.i, label %_RNCNvCskeBJdk8gjxq_17fish_wcstringutil16split_string_toks_0B3_.exit.i, label %.lr.ph163

.lr.ph163:                                        ; preds = %.preheader.i43.preheader, %.preheader.i43
  %i.bo = phi ptr [ %i.bn, %.preheader.i43 ], [ %i.i, %.preheader.i43.preheader ] ; 2 uses
  %.val2.i.i.i.i44 = load i32, ptr %i.bo, align 4, !range !9, !alias.scope !129, !noalias !130, !noundef !4
  %i.bp = icmp eq i32 %.val2.i.i.i.i44, %.val7.i19
  br i1 %i.bp, label %.loopexit, label %.preheader.i43

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsK_NtB9_3cmpcNtB1L_13SliceContains14slice_contains0ECskeBJdk8gjxq_17fish_wcstringutil.exit.i.i.i23: ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsK_NtB9_3cmpcNtB1L_13SliceContains14slice_contains0ECskeBJdk8gjxq_17fish_wcstringutil.exit.i.i.i23.preheader, %bb.o
  %.sroa.0.05.i.i.i21161 = phi ptr [ %i.bl, %bb.o ], [ %3, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsK_NtB9_3cmpcNtB1L_13SliceContains14slice_contains0ECskeBJdk8gjxq_17fish_wcstringutil.exit.i.i.i23.preheader ] ; 2 uses
  %.sroa.5.0.i.i.i20160 = phi i64 [ %i.bm, %bb.o ], [ %i.h, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsK_NtB9_3cmpcNtB1L_13SliceContains14slice_contains0ECskeBJdk8gjxq_17fish_wcstringutil.exit.i.i.i23.preheader ]
  %i.bq = load <16 x i32>, ptr %.sroa.0.05.i.i.i21161, align 4, !alias.scope !129, !noalias !131
  %i.br = icmp eq <16 x i32> %i.bq, %i.bk
  %i.bs = bitcast <16 x i1> %i.br to i16
  %.not171 = icmp eq i16 %i.bs, 0
  br i1 %.not171, label %bb.o, label %.loopexit

_RNCNvCskeBJdk8gjxq_17fish_wcstringutil16split_string_toks_0B3_.exit.i: ; preds = %.preheader.i43, %.preheader.i43.preheader
  %i.bt = add nuw nsw i64 %.sroa.02.014.i, 1
  %i.bu = icmp eq ptr %i.bi, %i.g
  br i1 %i.bu, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionjE6map_orjNCNvCskeBJdk8gjxq_17fish_wcstringutil16split_string_toks0_0EBW_.exit, label %.lr.ph.i18

.loopexit:                                        ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsK_NtB9_3cmpcNtB1L_13SliceContains14slice_contains0ECskeBJdk8gjxq_17fish_wcstringutil.exit.i.i.i23, %.lr.ph163
  %i.bv = icmp ult i64 %.sroa.02.014.i, %i.bf
  tail call void @llvm.assume(i1 %i.bv)
  %i.bw = add i64 %.sroa.02.014.i, %i.ap          ; 2 uses
  %i.bx = icmp ult i64 %i.bw, %i.ap
  br i1 %i.bx, label %bb.p, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionjE6map_orjNCNvCskeBJdk8gjxq_17fish_wcstringutil16split_string_toks0_0EBW_.exit

bb.p:                                             ; preds = %.loopexit
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #20
          to label %.noexc45 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc45:                                         ; preds = %bb.p
  unreachable

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionjE6map_orjNCNvCskeBJdk8gjxq_17fish_wcstringutil16split_string_toks0_0EBW_.exit: ; preds = %_RNCNvCskeBJdk8gjxq_17fish_wcstringutil16split_string_toks_0B3_.exit.i, %bb.n, %.loopexit
  %.sroa.02.0.i = phi i64 [ %i.bw, %.loopexit ], [ %2, %bb.n ], [ %2, %_RNCNvCskeBJdk8gjxq_17fish_wcstringutil16split_string_toks_0B3_.exit.i ] ; 6 uses
  %i.by = icmp ult i64 %.sroa.02.0.i, %i.ap
  %.not14 = icmp ugt i64 %.sroa.02.0.i, %2
  %or.cond15 = or i1 %i.by, %.not14
  br i1 %or.cond15, label %.invoke135, label %bb.q, !prof !7

.invoke135:                                       ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionjE6map_orjNCNvCskeBJdk8gjxq_17fish_wcstringutil16split_string_toks0_0EBW_.exit, %bb.m
  %i.bz = phi i64 [ %2, %bb.m ], [ %.sroa.02.0.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionjE6map_orjNCNvCskeBJdk8gjxq_17fish_wcstringutil16split_string_toks0_0EBW_.exit ]
  %i.ca = phi ptr [ @22, %bb.m ], [ @21, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionjE6map_orjNCNvCskeBJdk8gjxq_17fish_wcstringutil16split_string_toks0_0EBW_.exit ]
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %i.ap, i64 noundef %i.bz, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ca) #23
          to label %.cont136 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont136:                                         ; preds = %.invoke135
  unreachable

bb.q:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionjE6map_orjNCNvCskeBJdk8gjxq_17fish_wcstringutil16split_string_toks0_0EBW_.exit
  %i.cb = sub nuw i64 %.sroa.02.0.i, %i.ap
  tail call void @llvm.experimental.noalias.scope.decl(metadata !132)
  %i.cc = load i64, ptr %i.c, align 8, !range !5, !alias.scope !132, !noundef !4
  %i.cd = icmp eq i64 %i.w, %i.cc
  br i1 %i.cd, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE8grow_oneCskeBJdk8gjxq_17fish_wcstringutil(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #21
          to label %._crit_edge102 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._crit_edge102:                                   ; preds = %bb.r
  %.pre = load ptr, ptr %i.d, align 8, !alias.scope !132
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge102, %bb.q
  %i.ce = phi ptr [ %.pre, %._crit_edge102 ], [ %i.x, %bb.q ] ; 2 uses
  %i.cf = getelementptr inbounds nuw [16 x i8], ptr %i.ce, i64 %i.w ; 2 uses
  store ptr %i.be, ptr %i.cf, align 8, !noalias !133, !captures !6
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store i64 %i.cb, ptr %i.cg, align 8, !noalias !132
  store i64 %i.u, ptr %i.e, align 8, !alias.scope !132
  %i.ch = icmp eq i64 %.sroa.02.0.i, -1
  br i1 %i.ch, label %.invoke, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ci = add nuw i64 %.sroa.02.0.i, 1            ; 4 uses
  %i.cj = icmp ult i64 %i.ci, %2
  br i1 %i.cj, label %bb.b, label %._crit_edge

.invoke:                                          ; preds = %bb.s, %.preheader.i.preheader._crit_edge
  %i.ck = phi ptr [ @19, %.preheader.i.preheader._crit_edge ], [ @20, %bb.s ]
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ck) #23
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECskeBJdk8gjxq_17fish_wcstringutil.exit: ; preds = %bb.c, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp175
}

; Function Attrs: nonlazybind uwtable
define noundef range(i64 -1, -9223372036854775808) i64 @_RNvCskeBJdk8gjxq_17fish_wcstringutil20fish_wcwidth_visible(i32 noundef range(i32 0, 1114112) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = icmp eq i32 %0, 8
  br i1 %i.b, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultiNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCskeBJdk8gjxq_17fish_wcstringutil.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call { i64, i64 } @_RNvCsiolMeYWJ97s_13fish_fallback12fish_wcwidth(i32 noundef %0) ; 2 uses
  %i.d = extractvalue { i64, i64 } %i.c, 0
  %i.e = trunc nuw i64 %i.d to i1
  %i.f = extractvalue { i64, i64 } %i.c, 1
  %.sroa.01.0 = select i1 %i.e, i64 %i.f, i64 0   ; 2 uses
  %i.g = icmp slt i64 %.sroa.01.0, 0
  br i1 %i.g, label %bb.c, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultiNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCskeBJdk8gjxq_17fish_wcstringutil.exit

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultiNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCskeBJdk8gjxq_17fish_wcstringutil.exit: ; preds = %bb.b, %bb.a
  %.sroa.0.0 = phi i64 [ -1, %bb.a ], [ %.sroa.01.0, %bb.b ]
  ret i64 %.sroa.0.0

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !136
  store i8 2, ptr %i.a, align 1, !noalias !136
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @31, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #20, !noalias !136
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvCskeBJdk8gjxq_17fish_wcstringutil21subsequence_in_string(ptr noalias nofree noundef nonnull readonly align 4 captures(address) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address) %2, i64 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 3 uses
  %i.b = alloca [4 x i8], align 4                 ; 3 uses
  %i.c = alloca [4 x i8], align 4                 ; 3 uses
  %i.d = alloca [4 x i8], align 4                 ; 3 uses
  %i.e = icmp ugt i64 %1, %3
  br i1 %i.e, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECskeBJdk8gjxq_17fish_wcstringutil.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %1, 0
  br i1 %i.f, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECskeBJdk8gjxq_17fish_wcstringutil.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.idx82 = shl nuw nsw i64 %1, 2
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %.idx82 ; 2 uses
  %.idx = shl nuw nsw i64 %3, 2
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %.idx
  %i.i = icmp eq i64 %3, 0
  br i1 %i.i, label %bb.j, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECskeBJdk8gjxq_17fish_wcstringutil.exit
  %.sroa.0.02459 = phi ptr [ %.sroa.0.539, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECskeBJdk8gjxq_17fish_wcstringutil.exit ], [ %0, %bb.c ] ; 5 uses
  %.sroa.14.058 = phi i32 [ %.sroa.14.238, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECskeBJdk8gjxq_17fish_wcstringutil.exit ], [ -2, %bb.c ] ; 2 uses
  %.sroa.022.057 = phi ptr [ %i.j, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECskeBJdk8gjxq_17fish_wcstringutil.exit ], [ %2, %bb.c ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.022.057, i64 4 ; 2 uses
  %i.k = load i32, ptr %.sroa.022.057, align 4, !noalias !165, !noundef !4 ; 4 uses
  %i.l = xor i32 %i.k, 55296
  %i.m = add i32 %i.l, -1114112
  %i.n = icmp ult i32 %i.m, -1112064
  br i1 %i.n, label %.split.i, label %bb.d

.split.i:                                         ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !166
  store i32 %i.k, ptr %i.d, align 4, !noalias !166
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 43, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @29, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #20, !noalias !165
  unreachable

bb.d:                                             ; preds = %.lr.ph
  %i.o = icmp ult i32 %i.k, 1114112
  tail call void @llvm.assume(i1 %i.o)
  %cond = icmp eq i32 %.sroa.14.058, -2
  br i1 %cond, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.02459) ]
  %i.p = icmp eq ptr %.sroa.0.02459, %i.g
  br i1 %i.p, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECskeBJdk8gjxq_17fish_wcstringutil.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = load i32, ptr %.sroa.0.02459, align 4, !noalias !167, !noundef !4 ; 4 uses
  %i.r = xor i32 %i.q, 55296
  %i.s = add i32 %i.r, -1114112
  %i.t = icmp ult i32 %i.s, -1112064
  br i1 %i.t, label %.split.i.i, label %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread2.i

_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread2.i: ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.02459, i64 4
  %i.v = icmp ult i32 %i.q, 1114112
  tail call void @llvm.assume(i1 %i.v)
  br label %bb.g

.split.i.i:                                       ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !168
  store i32 %i.q, ptr %i.c, align 4, !noalias !168
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @29, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #20, !noalias !167
  unreachable

bb.g:                                             ; preds = %bb.d, %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread2.i
  %.sroa.0.2 = phi ptr [ %.sroa.0.02459, %bb.d ], [ %i.u, %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread2.i ] ; 5 uses
  %i.w = phi i32 [ %.sroa.14.058, %bb.d ], [ %i.q, %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread2.i ] ; 2 uses
  %i.x = icmp eq i32 %i.w, %i.k
  br i1 %i.x, label %bb.h, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECskeBJdk8gjxq_17fish_wcstringutil.exit

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.2) ]
  %i.y = icmp eq ptr %.sroa.0.2, %i.g
  br i1 %i.y, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECskeBJdk8gjxq_17fish_wcstringutil.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = load i32, ptr %.sroa.0.2, align 4, !noalias !169, !noundef !4 ; 4 uses
  %i.aa = xor i32 %i.z, 55296
  %i.ab = add i32 %i.aa, -1114112
  %i.ac = icmp ult i32 %i.ab, -1112064
  br i1 %i.ac, label %.split.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECskeBJdk8gjxq_17fish_wcstringutil.exit.thread34

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECskeBJdk8gjxq_17fish_wcstringutil.exit.thread34: ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 4
  %i.ae = icmp ult i32 %i.z, 1114112
  tail call void @llvm.assume(i1 %i.ae)
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECskeBJdk8gjxq_17fish_wcstringutil.exit

.split.i.i.i:                                     ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !170
  store i32 %i.z, ptr %i.b, align 4, !noalias !170
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @29, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #20, !noalias !169
  unreachable

bb.j:                                             ; preds = %bb.c
  %i.af = load i32, ptr %0, align 4, !noalias !171, !noundef !4 ; 3 uses
  %i.ag = xor i32 %i.af, 55296
  %i.ah = add i32 %i.ag, -1114112
  %i.ai = icmp ult i32 %i.ah, -1112064
  br i1 %i.ai, label %.split.i.i.i12, label %.split7.i.i.i9

.split7.i.i.i9:                                   ; preds = %bb.j
  %i.aj = icmp ult i32 %i.af, 1114112
  tail call void @llvm.assume(i1 %i.aj)
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECskeBJdk8gjxq_17fish_wcstringutil.exit.thread

.split.i.i.i12:                                   ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !172
  store i32 %i.af, ptr %i.a, align 4, !noalias !172
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @29, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #20, !noalias !171
  unreachable

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECskeBJdk8gjxq_17fish_wcstringutil.exit13.loopexit: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECskeBJdk8gjxq_17fish_wcstringutil.exit
  %i.ak = icmp eq i32 %.sroa.14.238, -1
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECskeBJdk8gjxq_17fish_wcstringutil.exit.thread

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECskeBJdk8gjxq_17fish_wcstringutil.exit.thread: ; preds = %bb.e, %bb.h, %.split7.i.i.i9, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECskeBJdk8gjxq_17fish_wcstringutil.exit13.loopexit, %bb.b, %bb.a
  %.sroa.0.0 = phi i1 [ %i.ak, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECskeBJdk8gjxq_17fish_wcstringutil.exit13.loopexit ], [ false, %bb.a ], [ true, %bb.b ], [ false, %.split7.i.i.i9 ], [ true, %bb.h ], [ true, %bb.e ]
  ret i1 %.sroa.0.0

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECskeBJdk8gjxq_17fish_wcstringutil.exit: ; preds = %bb.g, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECskeBJdk8gjxq_17fish_wcstringutil.exit.thread34
  %.sroa.0.539 = phi ptr [ %i.ad, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECskeBJdk8gjxq_17fish_wcstringutil.exit.thread34 ], [ %.sroa.0.2, %bb.g ]
  %.sroa.14.238 = phi i32 [ %i.z, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECskeBJdk8gjxq_17fish_wcstringutil.exit.thread34 ], [ %i.w, %bb.g ] ; 2 uses
  %i.al = icmp eq ptr %i.j, %i.h
  br i1 %i.al, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECskeBJdk8gjxq_17fish_wcstringutil.exit13.loopexit, label %.lr.ph
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_RNvCskeBJdk8gjxq_17fish_wcstringutil22string_prefixes_string(ptr noalias nofree noundef nonnull readonly align 4 captures(none) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly align 4 captures(none) %2, i64 noundef %3) unnamed_addr #3 {
bb.a:
  %.not.i = icmp samesign ult i64 %3, %1
  br i1 %.not.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSm11starts_withCskeBJdk8gjxq_17fish_wcstringutil.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = shl nuw nsw i64 %1, 2
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull readonly align 4 %0, ptr nonnull readonly align 4 %2, i64 %i.a), !alias.scope !176
  %i.b = icmp eq i32 %bcmp.i.i, 0
  br label %_RNvMNtCs3oUPovFnLWP_4core5sliceSm11starts_withCskeBJdk8gjxq_17fish_wcstringutil.exit

_RNvMNtCs3oUPovFnLWP_4core5sliceSm11starts_withCskeBJdk8gjxq_17fish_wcstringutil.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi i1 [ %i.b, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0.i
}
end_hunk_0
