Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raft-rs/original/raft-bbaa2c867252f069.raft.b69bdf7286237635-cgu.07?download=true
inline.NumInlined: 130
inline.NumDeleted: 56
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [96 x i8] c"/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed/library/core/src/slice/sort/stable/quicksort.rs\00", align 1
@1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"_\00\00\00\00\00\00\00M\00\00\00\1F\00\00\00" }>, align 8
@2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"_\00\00\00\00\00\00\00G\00\00\00\17\00\00\00" }>, align 8
@3 = private unnamed_addr constant [9 x i8] c"mid > len", align 1
@4 = private unnamed_addr constant [80 x i8] c"/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed/library/core/src/slice/index.rs\00", align 1
@5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"O\00\00\00\00\00\00\00\F1\03\00\003\00\00\00" }>, align 8
@6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"O\00\00\00\00\00\00\00\FC\03\00\007\00\00\00" }>, align 8

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RINvNtNtCskKLDkoKarTP_4core5slice5index5rangeINtNtNtB6_3ops5range7RangeTojEECsfG1pxJcRFT5_4raft(i64 noundef %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp ugt i64 %0, %1
  br i1 %i.a, label %bb.b, label %_RNvNtNtCskKLDkoKarTP_4core5slice5index16into_slice_range.exit, !prof !4

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #14, !noalias !9
  unreachable

_RNvNtNtCskKLDkoKarTP_4core5slice5index16into_slice_range.exit: ; preds = %bb.a
  %i.b = insertvalue { i64, i64 } { i64 0, i64 poison }, i64 %0, 1
  ret { i64, i64 } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RINvNtNtCskKLDkoKarTP_4core5slice5index5rangeINtNtNtB6_3ops5range9RangeFromjEECsfG1pxJcRFT5_4raft(i64 noundef %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp ugt i64 %0, %1
  br i1 %i.a, label %bb.b, label %_RNvNtNtCskKLDkoKarTP_4core5slice5index16into_slice_range.exit, !prof !4

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %0, i64 noundef %1, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #14, !noalias !12
  unreachable

_RNvNtNtCskKLDkoKarTP_4core5slice5index16into_slice_range.exit: ; preds = %bb.a
  %i.b = insertvalue { i64, i64 } poison, i64 %0, 0
  %i.c = insertvalue { i64, i64 } %i.b, i64 %1, 1
  ret { i64, i64 } %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { i64, i64 } @_RINvNtNtCskKLDkoKarTP_4core5slice5index5rangeNtNtNtB6_3ops5range9RangeFullECsfG1pxJcRFT5_4raft(i64 noundef %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
_RNvNtNtCskKLDkoKarTP_4core5slice5index16into_slice_range.exit:
  %i.a = insertvalue { i64, i64 } { i64 0, i64 poison }, i64 %0, 1
  ret { i64, i64 } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortNtNtCsfG1pxJcRFT5_4raft6quorum5IndexNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBW_7sort_byNCINvMs_NtBY_8majorityNtB2o_13Configuration15committed_indexINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtB10_7tracker8progress8ProgressINtNtBa_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEE0E0EB10_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i1 noundef zeroext %4, ptr noalias nofree noundef align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i77 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i82 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.cm, %bb.y ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.ck, %bb.y ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCsfG1pxJcRFT5_4raft6quorum5IndexNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCINvMs_NtB15_8majorityNtB2w_13Configuration15committed_indexINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtB17_7tracker8progress8ProgressINtNtBa_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEE0E0EB17_.exit
  %.sroa.021.0 = phi i8 [ %i.bd, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCsfG1pxJcRFT5_4raft6quorum5IndexNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCINvMs_NtB15_8majorityNtB2w_13Configuration15committed_indexINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtB17_7tracker8progress8ProgressINtNtBa_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEE0E0EB17_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCsfG1pxJcRFT5_4raft6quorum5IndexNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCINvMs_NtB15_8majorityNtB2w_13Configuration15committed_indexINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtB17_7tracker8progress8ProgressINtNtBa_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEE0E0EB17_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph55, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 9 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  %.not.i31 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCsfG1pxJcRFT5_4raft6quorum5IndexNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvMs_NtB14_8majorityNtB2v_13Configuration15committed_indexINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtB16_7tracker8progress8ProgressINtNtB8_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEE0E0EB16_.exit.i.thread80, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCsfG1pxJcRFT5_4raft6quorum5IndexNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvMs_NtB14_8majorityNtB2v_13Configuration15committed_indexINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtB16_7tracker8progress8ProgressINtNtB8_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEE0E0EB16_.exit.i.thread, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCsfG1pxJcRFT5_4raft6quorum5IndexNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvMs_NtB14_8majorityNtB2v_13Configuration15committed_indexINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtB16_7tracker8progress8ProgressINtNtB8_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEE0E0EB16_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
  br i1 %i.o, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsfG1pxJcRFT5_4raft6quorum5Index7reverseBy_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.val10.i = load i64, ptr %i.p, align 8, !alias.scope !24, !noalias !25, !noundef !5 ; 3 uses
  %.val11.i = load i64, ptr %i.n, align 8, !alias.scope !24, !noalias !25, !noundef !5
  %i.q = icmp ult i64 %.val11.i, %.val10.i        ; 2 uses
  %.not62 = icmp eq i64 %i.m, 2                   ; 2 uses
  br i1 %i.q, label %.preheader, label %.preheader43

.preheader43:                                     ; preds = %bb.k
  br i1 %.not62, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCsfG1pxJcRFT5_4raft6quorum5IndexNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvMs_NtB14_8majorityNtB2v_13Configuration15committed_indexINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtB16_7tracker8progress8ProgressINtNtB8_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEE0E0EB16_.exit.i.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader43
  %smax = tail call i64 @llvm.smax.i64(i64 %i.m, i64 3) ; 2 uses
  br label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not62, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCsfG1pxJcRFT5_4raft6quorum5IndexNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvMs_NtB14_8majorityNtB2v_13Configuration15committed_indexINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtB16_7tracker8progress8ProgressINtNtB8_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEE0E0EB16_.exit.i.thread80, label %.lr.ph49.preheader

.lr.ph49.preheader:                               ; preds = %.preheader
  %smax65 = tail call i64 @llvm.smax.i64(i64 %i.m, i64 3) ; 2 uses
  br label %.lr.ph49

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.l
  %.val9.i = phi i64 [ %.val8.i, %bb.l ], [ %.val10.i, %.lr.ph.preheader ]
  %.sroa.01.0.i.i45 = phi i64 [ %i.t, %bb.l ], [ 2, %.lr.ph.preheader ] ; 3 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.01.0.i.i45
  %.val8.i = load i64, ptr %i.r, align 8, !alias.scope !24, !noalias !25, !noundef !5 ; 2 uses
  %i.s = icmp ult i64 %.val9.i, %.val8.i
  br i1 %i.s, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCsfG1pxJcRFT5_4raft6quorum5IndexNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvMs_NtB14_8majorityNtB2v_13Configuration15committed_indexINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtB16_7tracker8progress8ProgressINtNtB8_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEE0E0EB16_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.t = add nuw nsw i64 %.sroa.01.0.i.i45, 1     ; 2 uses
  %exitcond.not = icmp eq i64 %i.t, %smax
  br i1 %exitcond.not, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCsfG1pxJcRFT5_4raft6quorum5IndexNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvMs_NtB14_8majorityNtB2v_13Configuration15committed_indexINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtB16_7tracker8progress8ProgressINtNtB8_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEE0E0EB16_.exit.i, label %.lr.ph

.lr.ph49:                                         ; preds = %.lr.ph49.preheader, %bb.m
  %.val7.i = phi i64 [ %.val.i, %bb.m ], [ %.val10.i, %.lr.ph49.preheader ]
  %.sroa.01.1.i.i48 = phi i64 [ %i.w, %bb.m ], [ 2, %.lr.ph49.preheader ] ; 3 uses
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.01.1.i.i48
  %.val.i = load i64, ptr %i.u, align 8, !alias.scope !24, !noalias !25, !noundef !5 ; 2 uses
  %i.v = icmp ult i64 %.val7.i, %.val.i
  br i1 %i.v, label %bb.m, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCsfG1pxJcRFT5_4raft6quorum5IndexNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvMs_NtB14_8majorityNtB2v_13Configuration15committed_indexINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtB16_7tracker8progress8ProgressINtNtB8_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEE0E0EB16_.exit.i

bb.m:                                             ; preds = %.lr.ph49
  %i.w = add nuw nsw i64 %.sroa.01.1.i.i48, 1     ; 2 uses
  %exitcond65.not = icmp eq i64 %i.w, %smax65
  br i1 %exitcond65.not, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCsfG1pxJcRFT5_4raft6quorum5IndexNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvMs_NtB14_8majorityNtB2v_13Configuration15committed_indexINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtB16_7tracker8progress8ProgressINtNtB8_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEE0E0EB16_.exit.i, label %.lr.ph49

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCsfG1pxJcRFT5_4raft6quorum5IndexNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvMs_NtB14_8majorityNtB2v_13Configuration15committed_indexINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtB16_7tracker8progress8ProgressINtNtB8_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEE0E0EB16_.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph49
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i48, %.lr.ph49 ], [ %smax65, %bb.m ], [ %.sroa.01.0.i.i45, %.lr.ph ], [ %smax, %bb.l ] ; 6 uses
  %i.x = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.x)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCsfG1pxJcRFT5_4raft6quorum5IndexNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvMs_NtB14_8majorityNtB2v_13Configuration15committed_indexINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtB16_7tracker8progress8ProgressINtNtB8_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEE0E0EB16_.exit.i.thread80: ; preds = %.preheader
  br i1 %.not5.i82, label %bb.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsfG1pxJcRFT5_4raft6quorum5Index12split_at_mutBy_.exit11.preheader.i.i

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCsfG1pxJcRFT5_4raft6quorum5IndexNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvMs_NtB14_8majorityNtB2v_13Configuration15committed_indexINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtB16_7tracker8progress8ProgressINtNtB8_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEE0E0EB16_.exit.i.thread: ; preds = %.preheader43
  br i1 %.not5.i77, label %bb.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsfG1pxJcRFT5_4raft6quorum5Index7reverseBy_.exit

bb.n:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCsfG1pxJcRFT5_4raft6quorum5IndexNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvMs_NtB14_8majorityNtB2v_13Configuration15committed_indexINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtB16_7tracker8progress8ProgressINtNtB8_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEE0E0EB16_.exit.i
  br i1 %i.q, label %bb.q, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsfG1pxJcRFT5_4raft6quorum5Index7reverseBy_.exit

bb.o:                                             ; preds = %bb.i
  %..i34 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 576460752303423488) %i.m, i64 %.sroa.01.0)
  %i.y = shl nuw nsw i64 %..i34, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCsfG1pxJcRFT5_4raft6quorum5IndexNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCINvMs_NtB15_8majorityNtB2w_13Configuration15committed_indexINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtB17_7tracker8progress8ProgressINtNtBa_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEE0E0EB17_.exit

bb.p:                                             ; preds = %bb.i
  %..i33 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 576460752303423488) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCsfG1pxJcRFT5_4raft6quorum5IndexNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCINvMs_NtB17_8majorityNtB2y_13Configuration15committed_indexINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtB19_7tracker8progress8ProgressINtNtBa_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEE0E0EB19_(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef %..i33, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #15, !inline_history !17
  %i.z = shl nuw nsw i64 %..i33, 1
  %i.aa = or disjoint i64 %i.z, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCsfG1pxJcRFT5_4raft6quorum5IndexNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCINvMs_NtB15_8majorityNtB2w_13Configuration15committed_indexINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtB17_7tracker8progress8ProgressINtNtBa_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEE0E0EB17_.exit

_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsfG1pxJcRFT5_4raft6quorum5Index7reverseBy_.exit.loopexit.unr-lcssa: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsfG1pxJcRFT5_4raft6quorum5Index12split_at_mutBy_.exit11.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsfG1pxJcRFT5_4raft6quorum5Index7reverseBy_.exit, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsfG1pxJcRFT5_4raft6quorum5Index12split_at_mutBy_.exit11.i.i.epil.preheader

_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsfG1pxJcRFT5_4raft6quorum5Index12split_at_mutBy_.exit11.i.i.epil.preheader: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsfG1pxJcRFT5_4raft6quorum5Index7reverseBy_.exit.loopexit.unr-lcssa, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsfG1pxJcRFT5_4raft6quorum5Index12split_at_mutBy_.exit11.preheader.i.i
  %.sroa.0.016.i.i.epil.init = phi i64 [ 0, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsfG1pxJcRFT5_4raft6quorum5Index12split_at_mutBy_.exit11.preheader.i.i ], [ %i.au, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsfG1pxJcRFT5_4raft6quorum5Index7reverseBy_.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod96 = trunc i64 %i.ai to i1
  tail call void @llvm.assume(i1 %lcmp.mod96)
  %i.ab = xor i64 %.sroa.0.016.i.i.epil.init, -1
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.0.016.i.i.epil.init ; 2 uses
  %i.ad = getelementptr [16 x i8], ptr %i.aj, i64 %i.ab ; 2 uses
  %i.ae = load <2 x i64>, ptr %i.ac, align 8, !alias.scope !26, !noalias !27
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i64 16, i1 false), !alias.scope !28, !noalias !25
  store <2 x i64> %i.ae, ptr %i.ad, align 8, !alias.scope !29, !noalias !30
  br label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsfG1pxJcRFT5_4raft6quorum5Index7reverseBy_.exit

_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsfG1pxJcRFT5_4raft6quorum5Index7reverseBy_.exit: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsfG1pxJcRFT5_4raft6quorum5Index12split_at_mutBy_.exit11.i.i.epil.preheader, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsfG1pxJcRFT5_4raft6quorum5Index7reverseBy_.exit.loopexit.unr-lcssa, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCsfG1pxJcRFT5_4raft6quorum5IndexNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvMs_NtB14_8majorityNtB2v_13Configuration15committed_indexINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtB16_7tracker8progress8ProgressINtNtB8_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEE0E0EB16_.exit.i.thread, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i3942 = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCsfG1pxJcRFT5_4raft6quorum5IndexNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvMs_NtB14_8majorityNtB2v_13Configuration15committed_indexINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtB16_7tracker8progress8ProgressINtNtB8_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEE0E0EB16_.exit.i.thread ], [ %.sroa.0.0.i.i788589, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsfG1pxJcRFT5_4raft6quorum5Index7reverseBy_.exit.loopexit.unr-lcssa ], [ %.sroa.0.0.i.i788589, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsfG1pxJcRFT5_4raft6quorum5Index12split_at_mutBy_.exit11.i.i.epil.preheader ]
  %i.af = shl nuw nsw i64 %.sroa.0.0.i.i3942, 1
  %i.ag = or disjoint i64 %i.af, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCsfG1pxJcRFT5_4raft6quorum5IndexNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCINvMs_NtB15_8majorityNtB2w_13Configuration15committed_indexINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtB17_7tracker8progress8ProgressINtNtBa_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEE0E0EB17_.exit

bb.q:                                             ; preds = %bb.n
  %i.ah = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31), !noalias !25
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32), !noalias !25
  %.not.i.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsfG1pxJcRFT5_4raft6quorum5Index7reverseBy_.exit, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsfG1pxJcRFT5_4raft6quorum5Index12split_at_mutBy_.exit11.preheader.i.i

_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsfG1pxJcRFT5_4raft6quorum5Index12split_at_mutBy_.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCsfG1pxJcRFT5_4raft6quorum5IndexNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvMs_NtB14_8majorityNtB2v_13Configuration15committed_indexINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtB16_7tracker8progress8ProgressINtNtB8_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEE0E0EB16_.exit.i.thread80, %bb.q
  %i.ai = phi i64 [ %i.ah, %bb.q ], [ 1, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCsfG1pxJcRFT5_4raft6quorum5IndexNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvMs_NtB14_8majorityNtB2v_13Configuration15committed_indexINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtB16_7tracker8progress8ProgressINtNtB8_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEE0E0EB16_.exit.i.thread80 ] ; 4 uses
  %.sroa.0.0.i.i788589 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCsfG1pxJcRFT5_4raft6quorum5IndexNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvMs_NtB14_8majorityNtB2v_13Configuration15committed_indexINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtB16_7tracker8progress8ProgressINtNtB8_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEE0E0EB16_.exit.i.thread80 ] ; 3 uses
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.0.0.i.i788589 ; 3 uses
  %xtraiter = and i64 %i.ai, 1
  %i.ak = icmp eq i64 %i.ai, 1
  br i1 %i.ak, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsfG1pxJcRFT5_4raft6quorum5Index12split_at_mutBy_.exit11.i.i.epil.preheader, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsfG1pxJcRFT5_4raft6quorum5Index12split_at_mutBy_.exit11.preheader.i.i.new

_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsfG1pxJcRFT5_4raft6quorum5Index12split_at_mutBy_.exit11.preheader.i.i.new: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsfG1pxJcRFT5_4raft6quorum5Index12split_at_mutBy_.exit11.preheader.i.i
  %unroll_iter = and i64 %i.ai, 9223372036854775806
  br label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsfG1pxJcRFT5_4raft6quorum5Index12split_at_mutBy_.exit11.i.i

_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsfG1pxJcRFT5_4raft6quorum5Index12split_at_mutBy_.exit11.i.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsfG1pxJcRFT5_4raft6quorum5Index12split_at_mutBy_.exit11.i.i, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsfG1pxJcRFT5_4raft6quorum5Index12split_at_mutBy_.exit11.preheader.i.i.new
  %.sroa.0.016.i.i = phi i64 [ 0, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsfG1pxJcRFT5_4raft6quorum5Index12split_at_mutBy_.exit11.preheader.i.i.new ], [ %i.au, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsfG1pxJcRFT5_4raft6quorum5Index12split_at_mutBy_.exit11.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsfG1pxJcRFT5_4raft6quorum5Index12split_at_mutBy_.exit11.preheader.i.i.new ], [ %niter.next.1, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsfG1pxJcRFT5_4raft6quorum5Index12split_at_mutBy_.exit11.i.i ]
  %i.al = xor i64 %.sroa.0.016.i.i, -1
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.0.016.i.i ; 2 uses
  %i.an = getelementptr [16 x i8], ptr %i.aj, i64 %i.al ; 2 uses
  %i.ao = load <2 x i64>, ptr %i.am, align 8, !alias.scope !26, !noalias !27
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull align 8 dereferenceable(16) %i.an, i64 16, i1 false), !alias.scope !28, !noalias !25
  store <2 x i64> %i.ao, ptr %i.an, align 8, !alias.scope !29, !noalias !30
  %i.ap = xor i64 %.sroa.0.016.i.i, -2
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.0.016.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 2 uses
  %i.as = getelementptr [16 x i8], ptr %i.aj, i64 %i.ap ; 2 uses
  %i.at = load <2 x i64>, ptr %i.ar, align 8, !alias.scope !26, !noalias !27
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noundef nonnull align 8 dereferenceable(16) %i.as, i64 16, i1 false), !alias.scope !28, !noalias !25
  store <2 x i64> %i.at, ptr %i.as, align 8, !alias.scope !29, !noalias !30
  %i.au = add nuw nsw i64 %.sroa.0.016.i.i, 2     ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsfG1pxJcRFT5_4raft6quorum5Index7reverseBy_.exit.loopexit.unr-lcssa, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsfG1pxJcRFT5_4raft6quorum5Index12split_at_mutBy_.exit11.i.i

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCsfG1pxJcRFT5_4raft6quorum5IndexNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCINvMs_NtB15_8majorityNtB2w_13Configuration15committed_indexINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtB17_7tracker8progress8ProgressINtNtBa_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEE0E0EB17_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsfG1pxJcRFT5_4raft6quorum5Index7reverseBy_.exit
  %.sroa.0.0.i32 = phi i64 [ %i.ag, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsfG1pxJcRFT5_4raft6quorum5Index7reverseBy_.exit ], [ %i.aa, %bb.p ], [ %i.y, %bb.o ] ; 2 uses
  %i.av = lshr i64 %.sroa.023.0, 1
  %i.aw = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.ax = sub nsw i64 %factor, %i.av
  %i.ay = add nuw nsw i64 %i.aw, %factor
  %i.az = mul i64 %i.ax, %.sroa.0.0
  %i.ba = mul i64 %i.ay, %.sroa.0.0
  %i.bb = xor i64 %i.ba, %i.az
  %i.bc = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bb, i1 false)
  %i.bd = trunc nuw nsw i64 %i.bc to i8
  br label %bb.g

.lr.ph55:                                         ; preds = %bb.g, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCsfG1pxJcRFT5_4raft6quorum5IndexNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCINvMs_NtB18_8majorityNtB2z_13Configuration15committed_indexINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtB1a_7tracker8progress8ProgressINtNtBa_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEE0E0EB1a_.exit
  %.sroa.02.154 = phi i64 [ %i.be, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCsfG1pxJcRFT5_4raft6quorum5IndexNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCINvMs_NtB18_8majorityNtB2z_13Configuration15committed_indexINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtB1a_7tracker8progress8ProgressINtNtBa_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEE0E0EB1a_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.153 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCsfG1pxJcRFT5_4raft6quorum5IndexNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCINvMs_NtB18_8majorityNtB2z_13Configuration15committed_indexINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtB1a_7tracker8progress8ProgressINtNtBa_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEE0E0EB1a_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.be = add i64 %.sroa.02.154, -1               ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !noundef !5
  %.not28 = icmp ult i8 %i.bg, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCsfG1pxJcRFT5_4raft6quorum5IndexNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCINvMs_NtB18_8majorityNtB2z_13Configuration15committed_indexINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtB1a_7tracker8progress8ProgressINtNtBa_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEE0E0EB1a_.exit, %.lr.ph55, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.153, %.lr.ph55 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCsfG1pxJcRFT5_4raft6quorum5IndexNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCINvMs_NtB18_8majorityNtB2z_13Configuration15committed_indexINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtB1a_7tracker8progress8ProgressINtNtBa_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEE0E0EB1a_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.154, %.lr.ph55 ], [ 1, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCsfG1pxJcRFT5_4raft6quorum5IndexNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCINvMs_NtB18_8majorityNtB2z_13Configuration15committed_indexINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtB1a_7tracker8progress8ProgressINtNtBa_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEE0E0EB1a_.exit ] ; 3 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bh, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bi, align 1
  br i1 %i.k, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph55
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.be
  %i.bk = load i64, ptr %i.bj, align 8, !noundef !5 ; 3 uses
  %i.bl = lshr i64 %i.bk, 1                       ; 5 uses
  %i.bm = lshr i64 %.sroa.023.153, 1              ; 3 uses
  %i.bn = add nuw i64 %i.bl, %i.bm                ; 5 uses
  %i.bo = sub i64 %.sroa.09.0, %i.bn
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.bo ; 3 uses
  %i.bq = icmp samesign ugt i64 %i.bn, %3
  %i.br = trunc i64 %.sroa.023.153 to i1
  %i.bs = or i64 %i.bk, %.sroa.023.153
  %i.bt = trunc i64 %i.bs to i1
  %or.cond3.i = or i1 %i.bq, %i.bt
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bu = trunc i64 %i.bk to i1
  br i1 %i.bu, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.bv = shl nuw nsw i64 %i.bn, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCsfG1pxJcRFT5_4raft6quorum5IndexNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCINvMs_NtB18_8majorityNtB2z_13Configuration15committed_indexINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtB1a_7tracker8progress8ProgressINtNtBa_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEE0E0EB1a_.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.br, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.bw = or i64 %i.bl, 1
  %i.bx = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.bw, i1 true)
  %i.by = trunc nuw nsw i64 %i.bx to i32
  %i.bz = shl nuw nsw i32 %i.by, 1
  %i.ca = xor i32 %i.bz, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCsfG1pxJcRFT5_4raft6quorum5IndexNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCINvMs_NtB17_8majorityNtB2y_13Configuration15committed_indexINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtB19_7tracker8progress8ProgressINtNtBa_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEE0E0EB19_(ptr noalias nofree noundef nonnull align 8 %i.bp, i64 noundef range(i64 0, 576460752303423488) %i.bl, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.ca, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #15, !inline_history !23
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %i.bp, i64 %i.bl
  %i.cc = or i64 %i.bm, 1
  %i.cd = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cc, i1 true)
  %i.ce = trunc nuw nsw i64 %i.cd to i32
  %i.cf = shl nuw nsw i32 %i.ce, 1
  %i.cg = xor i32 %i.cf, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCsfG1pxJcRFT5_4raft6quorum5IndexNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCINvMs_NtB17_8majorityNtB2y_13Configuration15committed_indexINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtB19_7tracker8progress8ProgressINtNtBa_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEE0E0EB19_(ptr noalias nofree noundef nonnull align 8 %i.cb, i64 noundef range(i64 0, 576460752303423488) %i.bm, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.cg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #15, !inline_history !23
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeNtNtCsfG1pxJcRFT5_4raft6quorum5IndexNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBX_7sort_byNCINvMs_NtBZ_8majorityNtB2p_13Configuration15committed_indexINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtB11_7tracker8progress8ProgressINtNtBa_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEE0E0EB11_(ptr noalias nofree noundef nonnull align 8 %i.bp, i64 noundef range(i64 0, 576460752303423488) %i.bn, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i64 noundef %i.bl, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5)
  %i.ch = shl nuw nsw i64 %i.bn, 1
  %i.ci = or disjoint i64 %i.ch, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCsfG1pxJcRFT5_4raft6quorum5IndexNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCINvMs_NtB18_8majorityNtB2z_13Configuration15committed_indexINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtB1a_7tracker8progress8ProgressINtNtBa_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEE0E0EB1a_.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCsfG1pxJcRFT5_4raft6quorum5IndexNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCINvMs_NtB18_8majorityNtB2z_13Configuration15committed_indexINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtB1a_7tracker8progress8ProgressINtNtBa_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEE0E0EB1a_.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.ci, %bb.x ], [ %i.bv, %bb.t ] ; 2 uses
  %i.cj = icmp ugt i64 %i.be, 1
  br i1 %i.cj, label %.lr.ph55, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.ck = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.cl = lshr i64 %.sroa.018.0, 1
  %i.cm = add nuw i64 %i.cl, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.cn = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.cn, 0
  br i1 %.not30, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.co = or i64 %1, 1
  %i.cp = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.co, i1 true)
  %i.cq = trunc nuw nsw i64 %i.cp to i32
  %i.cr = shl nuw nsw i32 %i.cq, 1
  %i.cs = xor i32 %i.cr, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCsfG1pxJcRFT5_4raft6quorum5IndexNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCINvMs_NtB17_8majorityNtB2y_13Configuration15committed_indexINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtB19_7tracker8progress8ProgressINtNtBa_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEE0E0EB19_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.cs, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #15, !inline_history !23
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac
end_hunk_0
begin_hunk_1_@_RINvYINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherENtB6_11BuildHasher8hash_oneRShECsfG1pxJcRFT5_4raft:bb.a
_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCsfG1pxJcRFT5_4raft.exit29.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i
  %.sroa.07.0.val24.i.i.i.i.i = load i32, ptr %.sroa.07.0.lcssa.i.i.i.i.i, align 1, !alias.scope !123, !noalias !124
  %i.ae = zext i32 %.sroa.07.0.val24.i.i.i.i.i to i64
  %i.af = tail call noundef i64 @llvm.fshl.i64(i64 %.sroa.0.0.lcssa.i.i.i.i.i, i64 %.sroa.0.0.lcssa.i.i.i.i.i, i64 5)
  %i.ag = xor i64 %i.af, %i.ae
  %i.ah = mul i64 %i.ag, 5871781006564002453
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.07.0.lcssa.i.i.i.i.i, i64 4
  %i.aj = add nsw i64 %.sroa.11.0.lcssa.i.i.i.i.i, -4
  br label %bb.b

bb.b:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCsfG1pxJcRFT5_4raft.exit29.i.i.i.i.i, %._crit_edge.i.i.i.i.i
  %.sroa.11.1.i.i.i.i.i = phi i64 [ %i.aj, %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCsfG1pxJcRFT5_4raft.exit29.i.i.i.i.i ], [ %.sroa.11.0.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 4 uses
  %.sroa.07.1.i.i.i.i.i = phi ptr [ %i.ai, %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCsfG1pxJcRFT5_4raft.exit29.i.i.i.i.i ], [ %.sroa.07.0.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 3 uses
  %.sroa.0.1.i.i.i.i.i = phi i64 [ %i.ah, %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCsfG1pxJcRFT5_4raft.exit29.i.i.i.i.i ], [ %.sroa.0.0.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i.i.i.i.i, i64 %.sroa.11.1.i.i.i.i.i
  %i.al = icmp samesign eq i64 %.sroa.11.1.i.i.i.i.i, 0
  br i1 %i.al, label %_RINvXs3_NtNtCskKLDkoKarTP_4core4hash5implsRShNtB8_4Hash4hashNtCs7k0fNi3XRdX_6fxhash8FxHasherECsfG1pxJcRFT5_4raft.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.b
  %xtraiter21 = and i64 %.sroa.11.1.i.i.i.i.i, 3  ; 2 uses
  %lcmp.mod22.not = icmp eq i64 %xtraiter21, 0
  br i1 %lcmp.mod22.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.sroa.0.240.i.i.i.i.i.prol = phi i64 [ %i.ar, %.lr.ph.i.i.i.i.i.prol ], [ %.sroa.0.1.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.022.039.i.i.i.i.i.prol = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.prol ], [ %.sroa.07.1.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter23 = phi i64 [ %prol.iter23.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.022.039.i.i.i.i.i.prol, i64 1 ; 2 uses
  %i.an = load i8, ptr %.sroa.022.039.i.i.i.i.i.prol, align 1, !alias.scope !123, !noalias !124, !noundef !5
  %i.ao = zext i8 %i.an to i64
  %i.ap = tail call noundef i64 @llvm.fshl.i64(i64 %.sroa.0.240.i.i.i.i.i.prol, i64 %.sroa.0.240.i.i.i.i.i.prol, i64 5)
  %i.aq = xor i64 %i.ap, %i.ao
  %i.ar = mul i64 %i.aq, 5871781006564002453      ; 3 uses
  %prol.iter23.next = add i64 %prol.iter23, 1     ; 2 uses
  %prol.iter23.cmp.not = icmp eq i64 %prol.iter23.next, %xtraiter21
  br i1 %prol.iter23.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !122

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ar, %.lr.ph.i.i.i.i.i.prol ]
  %.sroa.0.240.i.i.i.i.i.unr = phi i64 [ %.sroa.0.1.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ar, %.lr.ph.i.i.i.i.i.prol ]
  %.sroa.022.039.i.i.i.i.i.unr = phi ptr [ %.sroa.07.1.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader ], [ %i.am, %.lr.ph.i.i.i.i.i.prol ]
  %i.as = icmp ult i64 %.sroa.11.1.i.i.i.i.i, 4
  br i1 %i.as, label %_RINvXs3_NtNtCskKLDkoKarTP_4core4hash5implsRShNtB8_4Hash4hashNtCs7k0fNi3XRdX_6fxhash8FxHasherECsfG1pxJcRFT5_4raft.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.sroa.0.240.i.i.i.i.i = phi i64 [ %i.bq, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.240.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.022.039.i.i.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i.i.i ], [ %.sroa.022.039.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.022.039.i.i.i.i.i, i64 1
  %i.au = load i8, ptr %.sroa.022.039.i.i.i.i.i, align 1, !alias.scope !123, !noalias !124, !noundef !5
  %i.av = zext i8 %i.au to i64
  %i.aw = tail call noundef i64 @llvm.fshl.i64(i64 %.sroa.0.240.i.i.i.i.i, i64 %.sroa.0.240.i.i.i.i.i, i64 5)
  %i.ax = xor i64 %i.aw, %i.av
  %i.ay = mul i64 %i.ax, 5871781006564002453      ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.022.039.i.i.i.i.i, i64 2
  %i.ba = load i8, ptr %i.at, align 1, !alias.scope !123, !noalias !124, !noundef !5
  %i.bb = zext i8 %i.ba to i64
  %i.bc = tail call noundef i64 @llvm.fshl.i64(i64 %i.ay, i64 %i.ay, i64 5)
  %i.bd = xor i64 %i.bc, %i.bb
  %i.be = mul i64 %i.bd, 5871781006564002453      ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.022.039.i.i.i.i.i, i64 3
  %i.bg = load i8, ptr %i.az, align 1, !alias.scope !123, !noalias !124, !noundef !5
  %i.bh = zext i8 %i.bg to i64
  %i.bi = tail call noundef i64 @llvm.fshl.i64(i64 %i.be, i64 %i.be, i64 5)
  %i.bj = xor i64 %i.bi, %i.bh
  %i.bk = mul i64 %i.bj, 5871781006564002453      ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.022.039.i.i.i.i.i, i64 4 ; 2 uses
  %i.bm = load i8, ptr %i.bf, align 1, !alias.scope !123, !noalias !124, !noundef !5
  %i.bn = zext i8 %i.bm to i64
  %i.bo = tail call noundef i64 @llvm.fshl.i64(i64 %i.bk, i64 %i.bk, i64 5)
  %i.bp = xor i64 %i.bo, %i.bn
  %i.bq = mul i64 %i.bp, 5871781006564002453      ; 2 uses
  %i.br = icmp eq ptr %i.bl, %i.ak
  br i1 %i.br, label %_RINvXs3_NtNtCskKLDkoKarTP_4core4hash5implsRShNtB8_4Hash4hashNtCs7k0fNi3XRdX_6fxhash8FxHasherECsfG1pxJcRFT5_4raft.exit, label %.lr.ph.i.i.i.i.i

_RINvXs3_NtNtCskKLDkoKarTP_4core4hash5implsRShNtB8_4Hash4hashNtCs7k0fNi3XRdX_6fxhash8FxHasherECsfG1pxJcRFT5_4raft.exit: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %bb.b
  %.sroa.0.2.lcssa.i.i.i.i.i = phi i64 [ %.sroa.0.1.i.i.i.i.i, %bb.b ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.bq, %.lr.ph.i.i.i.i.i ]
  ret i64 %.sroa.0.2.lcssa.i.i.i.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_RINvYINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherENtB6_11BuildHasher8hash_oneRyECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %.val.i = load i64, ptr %1, align 8, !noalias !127, !noundef !5
  %i.a = mul i64 %.val.i, 5871781006564002453
  ret i64 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_RINvYINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherENtB6_11BuildHasher8hash_oneRmECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
_RINvXs3_NtNtCskKLDkoKarTP_4core4hash5implsRmNtB8_4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECsfG1pxJcRFT5_4raft.exit:
  %.val.i = load i32, ptr %1, align 4, !noalias !130, !noundef !5
  %.pre.i.i.i = zext i32 %.val.i to i64           ; 2 uses
  %i.a = or disjoint i64 %.pre.i.i.i, 288230376151711744
  %i.b = xor i64 %.pre.i.i.i, 8098989879002948979 ; 3 uses
  %i.c = add nuw i64 %i.b, 7816392313619706465
  %i.d = tail call noundef i64 @llvm.fshl.i64(i64 %i.b, i64 8098989876965277696, i64 16)
  %i.e = xor i64 %i.d, %i.c                       ; 3 uses
  %i.f = add nsw i64 %i.b, -6481707427168261424   ; 3 uses
  %i.g = add nsw i64 %i.e, -2389207006547353658   ; 2 uses
  %i.h = xor i64 %i.f, -2011800112340241627       ; 2 uses
  %i.i = tail call noundef i64 @llvm.fshl.i64(i64 %i.e, i64 %i.e, i64 21)
  %i.j = xor i64 %i.i, %i.g                       ; 3 uses
  %i.k = tail call noundef i64 @llvm.fshl.i64(i64 %i.f, i64 %i.f, i64 32)
  %i.l = xor i64 %i.g, %i.a
  %i.m = xor i64 %i.k, 255
  %i.n = add nsw i64 %i.l, %i.h                   ; 3 uses
  %i.o = add i64 %i.j, %i.m                       ; 2 uses
  %i.p = tail call noundef i64 @llvm.fshl.i64(i64 %i.h, i64 -980346952694628352, i64 13)
  %i.q = xor i64 %i.n, %i.p                       ; 3 uses
  %i.r = tail call noundef i64 @llvm.fshl.i64(i64 %i.j, i64 %i.j, i64 16)
  %i.s = xor i64 %i.r, %i.o                       ; 3 uses
  %i.t = tail call noundef i64 @llvm.fshl.i64(i64 %i.n, i64 %i.n, i64 32)
  %i.u = add i64 %i.q, %i.o                       ; 3 uses
  %i.v = add i64 %i.s, %i.t                       ; 2 uses
  %i.w = tail call noundef i64 @llvm.fshl.i64(i64 %i.q, i64 %i.q, i64 17)
  %i.x = xor i64 %i.u, %i.w                       ; 3 uses
  %i.y = tail call noundef i64 @llvm.fshl.i64(i64 %i.s, i64 %i.s, i64 21)
  %i.z = xor i64 %i.y, %i.v                       ; 3 uses
  %i.aa = tail call noundef i64 @llvm.fshl.i64(i64 %i.u, i64 %i.u, i64 32)
  %i.ab = add i64 %i.x, %i.v                      ; 3 uses
  %i.ac = add i64 %i.z, %i.aa                     ; 2 uses
  %i.ad = tail call noundef i64 @llvm.fshl.i64(i64 %i.x, i64 %i.x, i64 13)
  %i.ae = xor i64 %i.ad, %i.ab                    ; 3 uses
  %i.af = tail call noundef i64 @llvm.fshl.i64(i64 %i.z, i64 %i.z, i64 16)
  %i.ag = xor i64 %i.af, %i.ac                    ; 3 uses
  %i.ah = tail call noundef i64 @llvm.fshl.i64(i64 %i.ab, i64 %i.ab, i64 32)
  %i.ai = add i64 %i.ae, %i.ac                    ; 3 uses
  %i.aj = add i64 %i.ag, %i.ah                    ; 2 uses
  %i.ak = tail call noundef i64 @llvm.fshl.i64(i64 %i.ae, i64 %i.ae, i64 17)
  %i.al = xor i64 %i.ak, %i.ai                    ; 3 uses
  %i.am = tail call noundef i64 @llvm.fshl.i64(i64 %i.ag, i64 %i.ag, i64 21)
  %i.an = xor i64 %i.am, %i.aj                    ; 3 uses
  %i.ao = tail call noundef i64 @llvm.fshl.i64(i64 %i.ai, i64 %i.ai, i64 32)
  %i.ap = add i64 %i.al, %i.aj
  %i.aq = add i64 %i.an, %i.ao                    ; 2 uses
  %i.ar = tail call noundef i64 @llvm.fshl.i64(i64 %i.al, i64 %i.al, i64 13)
  %i.as = xor i64 %i.ar, %i.ap                    ; 3 uses
  %i.at = tail call noundef i64 @llvm.fshl.i64(i64 %i.an, i64 %i.an, i64 16)
  %i.au = xor i64 %i.at, %i.aq                    ; 2 uses
  %i.av = add i64 %i.as, %i.aq                    ; 3 uses
  %i.aw = tail call noundef i64 @llvm.fshl.i64(i64 %i.as, i64 %i.as, i64 17)
  %i.ax = tail call noundef i64 @llvm.fshl.i64(i64 %i.au, i64 %i.au, i64 21)
  %i.ay = tail call noundef i64 @llvm.fshl.i64(i64 %i.av, i64 %i.av, i64 32)
  %i.az = xor i64 %i.ax, %i.aw
  %i.ba = xor i64 %i.az, %i.ay
  %i.bb = xor i64 %i.ba, %i.av
  ret i64 %i.bb
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot11median3_recNtNtCsfG1pxJcRFT5_4raft6quorum5IndexNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB14_7sort_byNCINvMs_NtB16_8majorityNtB2x_13Configuration15committed_indexINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtB18_7tracker8progress8ProgressINtNtBa_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEE0E0EB18_(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #10

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeNtNtCsfG1pxJcRFT5_4raft6quorum5IndexNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBX_7sort_byNCINvMs_NtBZ_8majorityNtB2p_13Configuration15committed_indexINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtB11_7tracker8progress8ProgressINtNtBa_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEE0E0EB11_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 576460752303423488), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 576460752303423488), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #12

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #7

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtCsfG1pxJcRFT5_4raft6quorum5IndexNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1s_7sort_byNCINvMs_NtB1u_8majorityNtB2V_13Configuration15committed_indexINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtB1w_7tracker8progress8ProgressINtNtBa_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEE0E0EB1w_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 576460752303423488), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 576460752303423488), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #7

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #11 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #14 = { noinline noreturn }
attributes #15 = { noinline }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (bff8e12ff 2026-08-26)"}
!4 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!5 = !{}
!6 = !{!"llvm.loop.unroll.disable"}
!7 = distinct !{!7, !"_RNvNtNtCskKLDkoKarTP_4core5slice5index16into_slice_range"}
!8 = distinct !{!8, !7, !"_RNvNtNtCskKLDkoKarTP_4core5slice5index16into_slice_range: argument 0"}
!9 = !{!8}
!10 = distinct !{!10, !"_RNvNtNtCskKLDkoKarTP_4core5slice5index16into_slice_range"}
!11 = distinct !{!11, !10, !"_RNvNtNtCskKLDkoKarTP_4core5slice5index16into_slice_range: argument 0"}
!12 = !{!11}
!13 = distinct !{!13, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCsfG1pxJcRFT5_4raft6quorum5IndexNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCINvMs_NtB15_8majorityNtB2w_13Configuration15committed_indexINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtB17_7tracker8progress8ProgressINtNtBa_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEE0E0EB17_"}
!14 = distinct !{!14, !13, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCsfG1pxJcRFT5_4raft6quorum5IndexNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCINvMs_NtB15_8majorityNtB2w_13Configuration15committed_indexINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtB17_7tracker8progress8ProgressINtNtBa_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEE0E0EB17_: argument 0"}
!15 = distinct !{!15, !13, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCsfG1pxJcRFT5_4raft6quorum5IndexNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCINvMs_NtB15_8majorityNtB2w_13Configuration15committed_indexINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtB17_7tracker8progress8ProgressINtNtBa_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEE0E0EB17_: argument 2"}
!16 = distinct !{!16, !13, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCsfG1pxJcRFT5_4raft6quorum5IndexNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCINvMs_NtB15_8majorityNtB2w_13Configuration15committed_indexINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtB17_7tracker8progress8ProgressINtNtBa_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEE0E0EB17_: argument 1"}
!17 = distinct !{null}
!18 = distinct !{!18, !"_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsfG1pxJcRFT5_4raft6quorum5Index7reverseBy_"}
!19 = distinct !{!19, !18, !"_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsfG1pxJcRFT5_4raft6quorum5Index7reverseBy_: argument 0"}
!20 = distinct !{!20, !"_RINvNvMNtCskKLDkoKarTP_4core5sliceSp7reverse7revswapNtNtCsfG1pxJcRFT5_4raft6quorum5IndexEBS_"}
!21 = distinct !{!21, !20, !"_RINvNvMNtCskKLDkoKarTP_4core5sliceSp7reverse7revswapNtNtCsfG1pxJcRFT5_4raft6quorum5IndexEBS_: argument 0"}
!22 = distinct !{!22, !20, !"_RINvNvMNtCskKLDkoKarTP_4core5sliceSp7reverse7revswapNtNtCsfG1pxJcRFT5_4raft6quorum5IndexEBS_: argument 1"}
!23 = distinct !{null}
!24 = !{!14}
!25 = !{!16, !15}
!26 = !{!21, !19}
!27 = !{!22, !16, !15}
!28 = !{!21, !22, !19}
!29 = !{!22, !19}
!30 = !{!21, !16, !15}
!31 = !{!21}
!32 = !{!22}
!33 = distinct !{!33, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotNtNtCsfG1pxJcRFT5_4raft6quorum5IndexNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCINvMs_NtB17_8majorityNtB2y_13Configuration15committed_indexINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtB19_7tracker8progress8ProgressINtNtBa_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEE0E0EB19_"}
!34 = distinct !{!34, !33, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotNtNtCsfG1pxJcRFT5_4raft6quorum5IndexNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCINvMs_NtB17_8majorityNtB2y_13Configuration15committed_indexINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtB19_7tracker8progress8ProgressINtNtBa_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEE0E0EB19_: argument 0"}
!35 = distinct !{!35, !33, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotNtNtCsfG1pxJcRFT5_4raft6quorum5IndexNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCINvMs_NtB17_8majorityNtB2y_13Configuration15committed_indexINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtB19_7tracker8progress8ProgressINtNtBa_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEE0E0EB19_: argument 1"}
!36 = distinct !{!36, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsfG1pxJcRFT5_4raft6quorum5IndexNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvMs_NtB1f_8majorityNtB2G_13Configuration15committed_indexINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtB1h_7tracker8progress8ProgressINtNtBa_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEE0E0EB1h_"}
!37 = distinct !{!37, !36, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsfG1pxJcRFT5_4raft6quorum5IndexNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvMs_NtB1f_8majorityNtB2G_13Configuration15committed_indexINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtB1h_7tracker8progress8ProgressINtNtBa_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEE0E0EB1h_: argument 1"}
!38 = distinct !{!38, !36, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsfG1pxJcRFT5_4raft6quorum5IndexNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvMs_NtB1f_8majorityNtB2G_13Configuration15committed_indexINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtB1h_7tracker8progress8ProgressINtNtBa_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEE0E0EB1h_: argument 0"}
!39 = distinct !{!39, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfG1pxJcRFT5_4raft6quorum5IndexE13partition_oneB1l_"}
!40 = distinct !{!40, !39, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfG1pxJcRFT5_4raft6quorum5IndexE13partition_oneB1l_: argument 0"}
!41 = distinct !{!41, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfG1pxJcRFT5_4raft6quorum5IndexE13partition_oneB1l_"}
!42 = distinct !{!42, !41, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfG1pxJcRFT5_4raft6quorum5IndexE13partition_oneB1l_: argument 0"}
!43 = distinct !{!43, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfG1pxJcRFT5_4raft6quorum5IndexE13partition_oneB1l_"}
!44 = distinct !{!44, !43, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfG1pxJcRFT5_4raft6quorum5IndexE13partition_oneB1l_: argument 0"}
!45 = distinct !{!45, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfG1pxJcRFT5_4raft6quorum5IndexE13partition_oneB1l_"}
!46 = distinct !{!46, !45, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfG1pxJcRFT5_4raft6quorum5IndexE13partition_oneB1l_: argument 0"}
!47 = distinct !{!47, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfG1pxJcRFT5_4raft6quorum5IndexE13partition_oneB1l_"}
!48 = distinct !{!48, !47, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfG1pxJcRFT5_4raft6quorum5IndexE13partition_oneB1l_: argument 0"}
!49 = distinct !{!49, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfG1pxJcRFT5_4raft6quorum5IndexE13partition_oneB1l_"}
!50 = distinct !{!50, !49, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfG1pxJcRFT5_4raft6quorum5IndexE13partition_oneB1l_: argument 0"}
!51 = distinct !{!51, !"_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsfG1pxJcRFT5_4raft6quorum5Index12split_at_mutBy_"}
!52 = distinct !{!52, !51, !"_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsfG1pxJcRFT5_4raft6quorum5Index12split_at_mutBy_: argument 1"}
!53 = distinct !{!53, !51, !"_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsfG1pxJcRFT5_4raft6quorum5Index12split_at_mutBy_: argument 0"}
!54 = distinct !{!54, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsfG1pxJcRFT5_4raft6quorum5IndexNCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvMs_NtB1f_8majorityNtB32_13Configuration15committed_indexINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtB1h_7tracker8progress8ProgressINtNtBa_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEE0E0E0EB1h_"}
!55 = distinct !{!55, !54, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsfG1pxJcRFT5_4raft6quorum5IndexNCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvMs_NtB1f_8majorityNtB32_13Configuration15committed_indexINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtB1h_7tracker8progress8ProgressINtNtBa_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEE0E0E0EB1h_: argument 1"}
!56 = distinct !{!56, !54, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsfG1pxJcRFT5_4raft6quorum5IndexNCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvMs_NtB1f_8majorityNtB32_13Configuration15committed_indexINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtB1h_7tracker8progress8ProgressINtNtBa_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEE0E0E0EB1h_: argument 0"}
!57 = distinct !{!57, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfG1pxJcRFT5_4raft6quorum5IndexE13partition_oneB1l_"}
!58 = distinct !{!58, !57, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfG1pxJcRFT5_4raft6quorum5IndexE13partition_oneB1l_: argument 0"}
!59 = distinct !{!59, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfG1pxJcRFT5_4raft6quorum5IndexE13partition_oneB1l_"}
!60 = distinct !{!60, !59, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfG1pxJcRFT5_4raft6quorum5IndexE13partition_oneB1l_: argument 0"}
!61 = distinct !{!61, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfG1pxJcRFT5_4raft6quorum5IndexE13partition_oneB1l_"}
!62 = distinct !{!62, !61, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfG1pxJcRFT5_4raft6quorum5IndexE13partition_oneB1l_: argument 0"}
!63 = distinct !{!63, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfG1pxJcRFT5_4raft6quorum5IndexE13partition_oneB1l_"}
!64 = distinct !{!64, !63, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfG1pxJcRFT5_4raft6quorum5IndexE13partition_oneB1l_: argument 0"}
!65 = distinct !{!65, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfG1pxJcRFT5_4raft6quorum5IndexE13partition_oneB1l_"}
!66 = distinct !{!66, !65, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfG1pxJcRFT5_4raft6quorum5IndexE13partition_oneB1l_: argument 0"}
!67 = distinct !{!67, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfG1pxJcRFT5_4raft6quorum5IndexE13partition_oneB1l_"}
!68 = distinct !{!68, !67, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfG1pxJcRFT5_4raft6quorum5IndexE13partition_oneB1l_: argument 0"}
!69 = !{!34}
!70 = !{!35}
!71 = !{!37}
!72 = !{!"branch_weights", i32 4001, i32 4000000}
!73 = !{!38}
!74 = !{!38, !37}
!75 = !{!40}
!76 = !{!42}
!77 = !{!44}
!78 = !{!46}
!79 = !{!48}
!80 = !{!50}
!81 = !{!53, !52}
!82 = !{!55}
!83 = !{!56}
!84 = !{!56, !55}
!85 = !{!58}
!86 = !{!60}
!87 = !{!62}
!88 = !{!64}
!89 = !{!66}
!90 = !{!68}
!91 = distinct !{!91, !"_RINvXs3_NtNtCskKLDkoKarTP_4core4hash5implsRINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB8_4Hash4hashNtCs7k0fNi3XRdX_6fxhash8FxHasherECsfG1pxJcRFT5_4raft"}
!92 = distinct !{!92, !91, !"_RINvXs3_NtNtCskKLDkoKarTP_4core4hash5implsRINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB8_4Hash4hashNtCs7k0fNi3XRdX_6fxhash8FxHasherECsfG1pxJcRFT5_4raft: argument 0"}
!93 = distinct !{!93, !"_RINvXs7_NtNtCskKLDkoKarTP_4core4hash5implshNtB8_4Hash10hash_sliceNtCs7k0fNi3XRdX_6fxhash8FxHasherECsfG1pxJcRFT5_4raft"}
!94 = distinct !{!94, !93, !"_RINvXs7_NtNtCskKLDkoKarTP_4core4hash5implshNtB8_4Hash10hash_sliceNtCs7k0fNi3XRdX_6fxhash8FxHasherECsfG1pxJcRFT5_4raft: argument 0"}
!95 = distinct !{!95, !"_RNvXs_Cs7k0fNi3XRdX_6fxhashNtB4_8FxHasherNtNtCskKLDkoKarTP_4core4hash6Hasher5write"}
!96 = distinct !{!96, !95, !"_RNvXs_Cs7k0fNi3XRdX_6fxhashNtB4_8FxHasherNtNtCskKLDkoKarTP_4core4hash6Hasher5write: argument 1"}
!97 = distinct !{!97, !"_RNvCs7k0fNi3XRdX_6fxhash7write64"}
!98 = distinct !{!98, !97, !"_RNvCs7k0fNi3XRdX_6fxhash7write64: argument 0"}
!99 = distinct !{!99, !"_RINvXsc_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VechENtNtCskKLDkoKarTP_4core4hash4Hash4hashNtCs7k0fNi3XRdX_6fxhash8FxHasherECsfG1pxJcRFT5_4raft"}
!100 = distinct !{!100, !99, !"_RINvXsc_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VechENtNtCskKLDkoKarTP_4core4hash4Hash4hashNtCs7k0fNi3XRdX_6fxhash8FxHasherECsfG1pxJcRFT5_4raft: argument 0"}
!101 = distinct !{!101, !93, !"_RINvXs7_NtNtCskKLDkoKarTP_4core4hash5implshNtB8_4Hash10hash_sliceNtCs7k0fNi3XRdX_6fxhash8FxHasherECsfG1pxJcRFT5_4raft: argument 1"}
!102 = distinct !{!102, !95, !"_RNvXs_Cs7k0fNi3XRdX_6fxhashNtB4_8FxHasherNtNtCskKLDkoKarTP_4core4hash6Hasher5write: argument 0"}
!103 = distinct !{!103, !6}
!104 = distinct !{!104, !6}
!105 = !{!92}
!106 = !{!98, !96, !94}
!107 = !{!102, !101, !100, !92}
!108 = distinct !{!108, !"_RINvXs2_NtNtCskKLDkoKarTP_4core4hash5implsShNtB8_4Hash4hashNtCs7k0fNi3XRdX_6fxhash8FxHasherECsfG1pxJcRFT5_4raft"}
!109 = distinct !{!109, !108, !"_RINvXs2_NtNtCskKLDkoKarTP_4core4hash5implsShNtB8_4Hash4hashNtCs7k0fNi3XRdX_6fxhash8FxHasherECsfG1pxJcRFT5_4raft: argument 0"}
!110 = distinct !{!110, !"_RINvXs7_NtNtCskKLDkoKarTP_4core4hash5implshNtB8_4Hash10hash_sliceNtCs7k0fNi3XRdX_6fxhash8FxHasherECsfG1pxJcRFT5_4raft"}
!111 = distinct !{!111, !110, !"_RINvXs7_NtNtCskKLDkoKarTP_4core4hash5implshNtB8_4Hash10hash_sliceNtCs7k0fNi3XRdX_6fxhash8FxHasherECsfG1pxJcRFT5_4raft: argument 0"}
!112 = distinct !{!112, !"_RNvXs_Cs7k0fNi3XRdX_6fxhashNtB4_8FxHasherNtNtCskKLDkoKarTP_4core4hash6Hasher5write"}
!113 = distinct !{!113, !112, !"_RNvXs_Cs7k0fNi3XRdX_6fxhashNtB4_8FxHasherNtNtCskKLDkoKarTP_4core4hash6Hasher5write: argument 1"}
!114 = distinct !{!114, !"_RNvCs7k0fNi3XRdX_6fxhash7write64"}
!115 = distinct !{!115, !114, !"_RNvCs7k0fNi3XRdX_6fxhash7write64: argument 0"}
!116 = distinct !{!116, !"_RINvXs3_NtNtCskKLDkoKarTP_4core4hash5implsRShNtB8_4Hash4hashNtCs7k0fNi3XRdX_6fxhash8FxHasherECsfG1pxJcRFT5_4raft"}
!117 = distinct !{!117, !116, !"_RINvXs3_NtNtCskKLDkoKarTP_4core4hash5implsRShNtB8_4Hash4hashNtCs7k0fNi3XRdX_6fxhash8FxHasherECsfG1pxJcRFT5_4raft: argument 0"}
!118 = distinct !{!118, !108, !"_RINvXs2_NtNtCskKLDkoKarTP_4core4hash5implsShNtB8_4Hash4hashNtCs7k0fNi3XRdX_6fxhash8FxHasherECsfG1pxJcRFT5_4raft: argument 1"}
!119 = distinct !{!119, !110, !"_RINvXs7_NtNtCskKLDkoKarTP_4core4hash5implshNtB8_4Hash10hash_sliceNtCs7k0fNi3XRdX_6fxhash8FxHasherECsfG1pxJcRFT5_4raft: argument 1"}
!120 = distinct !{!120, !112, !"_RNvXs_Cs7k0fNi3XRdX_6fxhashNtB4_8FxHasherNtNtCskKLDkoKarTP_4core4hash6Hasher5write: argument 0"}
!121 = distinct !{!121, !6}
!122 = distinct !{!122, !6}
!123 = !{!115, !113, !111, !109}
!124 = !{!120, !119, !118, !117}
!125 = distinct !{!125, !"_RINvXs3_NtNtCskKLDkoKarTP_4core4hash5implsRyNtB8_4Hash4hashNtCs7k0fNi3XRdX_6fxhash8FxHasherECsfG1pxJcRFT5_4raft"}
!126 = distinct !{!126, !125, !"_RINvXs3_NtNtCskKLDkoKarTP_4core4hash5implsRyNtB8_4Hash4hashNtCs7k0fNi3XRdX_6fxhash8FxHasherECsfG1pxJcRFT5_4raft: argument 0"}
!127 = !{!126}
!128 = distinct !{!128, !"_RINvXs3_NtNtCskKLDkoKarTP_4core4hash5implsRmNtB8_4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECsfG1pxJcRFT5_4raft"}
!129 = distinct !{!129, !128, !"_RINvXs3_NtNtCskKLDkoKarTP_4core4hash5implsRmNtB8_4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECsfG1pxJcRFT5_4raft: argument 0"}
!130 = !{!129}
end_hunk_1
