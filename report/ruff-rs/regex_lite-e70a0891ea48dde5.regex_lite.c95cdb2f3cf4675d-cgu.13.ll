Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/regex_lite-e70a0891ea48dde5.regex_lite.c95cdb2f3cf4675d-cgu.13?download=true
inline.NumInlined: 21
inline.NumDeleted: 14
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_RNvNtNtCs2AWtUsOyxgP_3std9panicking11panic_count18GLOBAL_PANIC_COUNT = external local_unnamed_addr global { { { i64 } } }
@0 = private unnamed_addr constant [2 x i8] c"\C0\00", align 1

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift4sortNtNtCshhQDFPpdXZx_10regex_lite3hir10ClassRangeNvYBW_NtNtBa_3cmp10PartialOrd2ltEB10_(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef nonnull align 4 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i1 noundef zeroext %4, ptr noalias noundef nonnull %5) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.cq, %bb.y ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.co, %bb.y ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtNtCshhQDFPpdXZx_10regex_lite3hir10ClassRangeNvYB13_NtNtBa_3cmp10PartialOrd2ltEB17_.exit
  %.sroa.021.0 = phi i8 [ %i.bh, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtNtCshhQDFPpdXZx_10regex_lite3hir10ClassRangeNvYB13_NtNtBa_3cmp10PartialOrd2ltEB17_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtNtCshhQDFPpdXZx_10regex_lite3hir10ClassRangeNvYB13_NtNtBa_3cmp10PartialOrd2ltEB17_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 11 uses
  %.not.i33 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i33, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtCshhQDFPpdXZx_10regex_lite3hir10ClassRangeNvYB12_NtNtB8_3cmp10PartialOrd2ltEB16_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
  br i1 %i.o, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCshhQDFPpdXZx_10regex_lite3hir10ClassRange7reverseBy_.exit.i.a, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.val14.i = load i32, ptr %i.p, align 4, !range !13, !alias.scope !14, !noalias !15, !noundef !3 ; 4 uses
  %i.q = getelementptr i8, ptr %i.n, i64 12
  %.val15.i = load i32, ptr %i.q, align 4, !alias.scope !14, !noalias !15 ; 3 uses
  %.val16.i = load i32, ptr %i.n, align 4, !range !13, !alias.scope !14, !noalias !15, !noundef !3 ; 2 uses
  %i.r = getelementptr i8, ptr %i.n, i64 4
  %.val17.i = load i32, ptr %i.r, align 4, !alias.scope !14, !noalias !15
  %i.s = icmp eq i32 %.val14.i, %.val16.i
  %i.t = icmp ult i32 %.val15.i, %.val17.i
  %i.u = icmp samesign ult i32 %.val14.i, %.val16.i
  %i.v = select i1 %i.s, i1 %i.t, i1 %i.u         ; 2 uses
  %.not39.i = icmp eq i64 %i.m, 2                 ; 2 uses
  br i1 %i.v, label %.preheader.i, label %.preheader28.i

.preheader28.i:                                   ; preds = %bb.k
  br i1 %.not39.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCshhQDFPpdXZx_10regex_lite3hir10ClassRange7reverseBy_.exit.i.a, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not39.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCshhQDFPpdXZx_10regex_lite3hir10ClassRange12split_at_mutBy_.exit11.preheader.i.i.i.a, label %.lr.ph34.i

.lr.ph.i:                                         ; preds = %.preheader28.i, %bb.l
  %.val13.i = phi i32 [ %.val11.i, %bb.l ], [ %.val15.i, %.preheader28.i ]
  %.val12.i = phi i32 [ %.val10.i, %bb.l ], [ %.val14.i, %.preheader28.i ] ; 2 uses
  %.sroa.01.0.i30.i = phi i64 [ %i.ac, %bb.l ], [ 2, %.preheader28.i ] ; 3 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.01.0.i30.i ; 2 uses
  %.val10.i = load i32, ptr %i.w, align 4, !range !13, !alias.scope !14, !noalias !15, !noundef !3 ; 3 uses
  %i.x = getelementptr i8, ptr %i.w, i64 4
  %.val11.i = load i32, ptr %i.x, align 4, !alias.scope !14, !noalias !15 ; 2 uses
  %i.y = icmp eq i32 %.val10.i, %.val12.i
  %i.z = icmp ult i32 %.val11.i, %.val13.i
  %i.aa = icmp samesign ult i32 %.val10.i, %.val12.i
  %i.ab = select i1 %i.y, i1 %i.z, i1 %i.aa
  br i1 %i.ab, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtCshhQDFPpdXZx_10regex_lite3hir10ClassRangeNvYB12_NtNtB8_3cmp10PartialOrd2ltEB16_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.ac = add nuw nsw i64 %.sroa.01.0.i30.i, 1    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ac, %i.m
  br i1 %exitcond.not.i, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtCshhQDFPpdXZx_10regex_lite3hir10ClassRangeNvYB12_NtNtB8_3cmp10PartialOrd2ltEB16_.exit.i, label %.lr.ph.i

.lr.ph34.i:                                       ; preds = %.preheader.i, %bb.m
  %.val9.i = phi i32 [ %.val7.i, %bb.m ], [ %.val15.i, %.preheader.i ]
  %.val8.i = phi i32 [ %.val.i, %bb.m ], [ %.val14.i, %.preheader.i ] ; 2 uses
  %.sroa.01.1.i33.i = phi i64 [ %i.aj, %bb.m ], [ 2, %.preheader.i ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.01.1.i33.i ; 2 uses
  %.val.i = load i32, ptr %i.ad, align 4, !range !13, !alias.scope !14, !noalias !15, !noundef !3 ; 3 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 4
  %.val7.i = load i32, ptr %i.ae, align 4, !alias.scope !14, !noalias !15 ; 2 uses
  %i.af = icmp eq i32 %.val.i, %.val8.i
  %i.ag = icmp ult i32 %.val7.i, %.val9.i
  %i.ah = icmp samesign ult i32 %.val.i, %.val8.i
  %i.ai = select i1 %i.af, i1 %i.ag, i1 %i.ah
  br i1 %i.ai, label %bb.m, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtCshhQDFPpdXZx_10regex_lite3hir10ClassRangeNvYB12_NtNtB8_3cmp10PartialOrd2ltEB16_.exit.i

bb.m:                                             ; preds = %.lr.ph34.i
  %i.aj = add nuw nsw i64 %.sroa.01.1.i33.i, 1    ; 2 uses
  %exitcond42.not.i = icmp eq i64 %i.aj, %i.m
  br i1 %exitcond42.not.i, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtCshhQDFPpdXZx_10regex_lite3hir10ClassRangeNvYB12_NtNtB8_3cmp10PartialOrd2ltEB16_.exit.i, label %.lr.ph34.i

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtCshhQDFPpdXZx_10regex_lite3hir10ClassRangeNvYB12_NtNtB8_3cmp10PartialOrd2ltEB16_.exit.i: ; preds = %bb.l, %.lr.ph.i, %bb.m, %.lr.ph34.i
  %.sroa.0.0.i.i = phi i64 [ %i.m, %bb.m ], [ %.sroa.01.1.i33.i, %.lr.ph34.i ], [ %.sroa.01.0.i30.i, %.lr.ph.i ], [ %i.m, %bb.l ] ; 6 uses
  %i.ak = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.ak)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtCshhQDFPpdXZx_10regex_lite3hir10ClassRangeNvYB12_NtNtB8_3cmp10PartialOrd2ltEB16_.exit.i
  br i1 %i.v, label %bb.q, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCshhQDFPpdXZx_10regex_lite3hir10ClassRange7reverseBy_.exit.i.a

bb.o:                                             ; preds = %bb.i
  %.sroa.0.0.i18.i = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.m, i64 %.sroa.01.0)
  %i.al = shl nuw nsw i64 %.sroa.0.0.i18.i, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtNtCshhQDFPpdXZx_10regex_lite3hir10ClassRangeNvYB13_NtNtBa_3cmp10PartialOrd2ltEB17_.exit

bb.p:                                             ; preds = %bb.i
  %.sroa.0.0.i19.i = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortNtNtCshhQDFPpdXZx_10regex_lite3hir10ClassRangeNvYB15_NtNtBa_3cmp10PartialOrd2ltEB19_(ptr noalias noundef nonnull align 4 %i.n, i64 noundef %.sroa.0.0.i19.i, ptr noalias noundef nonnull align 4 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef 0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull %5)
  %i.am = shl nuw nsw i64 %.sroa.0.0.i19.i, 1
  %i.an = or disjoint i64 %i.am, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtNtCshhQDFPpdXZx_10regex_lite3hir10ClassRangeNvYB13_NtNtBa_3cmp10PartialOrd2ltEB17_.exit

_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCshhQDFPpdXZx_10regex_lite3hir10ClassRange7reverseBy_.exit.i.loopexit.unr-lcssa: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCshhQDFPpdXZx_10regex_lite3hir10ClassRange12split_at_mutBy_.exit11.i.i.i
  %lcmp.mod.not.a = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not.a, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCshhQDFPpdXZx_10regex_lite3hir10ClassRange7reverseBy_.exit.i.a, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCshhQDFPpdXZx_10regex_lite3hir10ClassRange12split_at_mutBy_.exit11.i.i.i.epil.preheader

_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCshhQDFPpdXZx_10regex_lite3hir10ClassRange12split_at_mutBy_.exit11.i.i.i.epil.preheader: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCshhQDFPpdXZx_10regex_lite3hir10ClassRange7reverseBy_.exit.i.loopexit.unr-lcssa, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCshhQDFPpdXZx_10regex_lite3hir10ClassRange12split_at_mutBy_.exit11.preheader.i.i.i.a
  %.sroa.0.016.i.i.i.epil.init = phi i64 [ 0, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCshhQDFPpdXZx_10regex_lite3hir10ClassRange12split_at_mutBy_.exit11.preheader.i.i.i.a ], [ %17, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCshhQDFPpdXZx_10regex_lite3hir10ClassRange7reverseBy_.exit.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod58 = trunc i64 %14 to i1
  tail call void @llvm.assume(i1 %lcmp.mod58)
  %6 = xor i64 %.sroa.0.016.i.i.i.epil.init, -1
  %7 = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.0.016.i.i.i.epil.init ; 2 uses
  %8 = getelementptr [8 x i8], ptr %i.ao, i64 %6  ; 2 uses
  %9 = load i64, ptr %8, align 4, !alias.scope !16, !noalias !17
  %10 = load <2 x i32>, ptr %7, align 4, !alias.scope !18, !noalias !19
  store i64 %9, ptr %7, align 4, !alias.scope !18, !noalias !19
  store <2 x i32> %10, ptr %8, align 4, !alias.scope !16, !noalias !17
  br label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCshhQDFPpdXZx_10regex_lite3hir10ClassRange7reverseBy_.exit.i.a

_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCshhQDFPpdXZx_10regex_lite3hir10ClassRange7reverseBy_.exit.i.a: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCshhQDFPpdXZx_10regex_lite3hir10ClassRange12split_at_mutBy_.exit11.i.i.i.epil.preheader, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCshhQDFPpdXZx_10regex_lite3hir10ClassRange7reverseBy_.exit.i.loopexit.unr-lcssa, %.preheader28.i, %bb.q, %bb.n, %bb.j
  %.sroa.0.0.i25.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %.preheader28.i ], [ %.sroa.0.0.i576468.i, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCshhQDFPpdXZx_10regex_lite3hir10ClassRange7reverseBy_.exit.i.loopexit.unr-lcssa ], [ %.sroa.0.0.i576468.i, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCshhQDFPpdXZx_10regex_lite3hir10ClassRange12split_at_mutBy_.exit11.i.i.i.epil.preheader ]
  %11 = shl nuw nsw i64 %.sroa.0.0.i25.i, 1
  %12 = or disjoint i64 %11, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtNtCshhQDFPpdXZx_10regex_lite3hir10ClassRangeNvYB13_NtNtBa_3cmp10PartialOrd2ltEB17_.exit

bb.q:                                             ; preds = %bb.n
  %13 = lshr i64 %.sroa.0.0.i.i, 1                ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21)
  %.not.i.i.i = icmp eq i64 %13, 0
  br i1 %.not.i.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCshhQDFPpdXZx_10regex_lite3hir10ClassRange7reverseBy_.exit.i.a, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCshhQDFPpdXZx_10regex_lite3hir10ClassRange12split_at_mutBy_.exit11.preheader.i.i.i.a

_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCshhQDFPpdXZx_10regex_lite3hir10ClassRange12split_at_mutBy_.exit11.preheader.i.i.i.a: ; preds = %.preheader.i, %bb.q
  %14 = phi i64 [ %13, %bb.q ], [ 1, %.preheader.i ] ; 4 uses
  %.sroa.0.0.i576468.i = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %.preheader.i ] ; 3 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.0.0.i576468.i ; 3 uses
  %xtraiter = and i64 %14, 1
  %15 = icmp eq i64 %14, 1
  br i1 %15, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCshhQDFPpdXZx_10regex_lite3hir10ClassRange12split_at_mutBy_.exit11.i.i.i.epil.preheader, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCshhQDFPpdXZx_10regex_lite3hir10ClassRange12split_at_mutBy_.exit11.preheader.i.i.i.new

_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCshhQDFPpdXZx_10regex_lite3hir10ClassRange12split_at_mutBy_.exit11.preheader.i.i.i.new: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCshhQDFPpdXZx_10regex_lite3hir10ClassRange12split_at_mutBy_.exit11.preheader.i.i.i.a
  %unroll_iter = and i64 %14, 9223372036854775806
  br label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCshhQDFPpdXZx_10regex_lite3hir10ClassRange12split_at_mutBy_.exit11.i.i.i

_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCshhQDFPpdXZx_10regex_lite3hir10ClassRange12split_at_mutBy_.exit11.i.i.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCshhQDFPpdXZx_10regex_lite3hir10ClassRange12split_at_mutBy_.exit11.i.i.i, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCshhQDFPpdXZx_10regex_lite3hir10ClassRange12split_at_mutBy_.exit11.preheader.i.i.i.new
  %.sroa.0.016.i.i.i = phi i64 [ 0, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCshhQDFPpdXZx_10regex_lite3hir10ClassRange12split_at_mutBy_.exit11.preheader.i.i.i.new ], [ %17, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCshhQDFPpdXZx_10regex_lite3hir10ClassRange12split_at_mutBy_.exit11.i.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCshhQDFPpdXZx_10regex_lite3hir10ClassRange12split_at_mutBy_.exit11.preheader.i.i.i.new ], [ %niter.next.1, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCshhQDFPpdXZx_10regex_lite3hir10ClassRange12split_at_mutBy_.exit11.i.i.i ]
  %i.ap = xor i64 %.sroa.0.016.i.i.i, -1
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.0.016.i.i.i ; 2 uses
  %i.ar = getelementptr [8 x i8], ptr %i.ao, i64 %i.ap ; 2 uses
  %i.as = load i64, ptr %i.ar, align 4, !alias.scope !16, !noalias !17
  %i.at = load <2 x i32>, ptr %i.aq, align 4, !alias.scope !18, !noalias !19
  store i64 %i.as, ptr %i.aq, align 4, !alias.scope !18, !noalias !19
  store <2 x i32> %i.at, ptr %i.ar, align 4, !alias.scope !16, !noalias !17
  %16 = xor i64 %.sroa.0.016.i.i.i, -2
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.0.016.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 2 uses
  %i.aw = getelementptr [8 x i8], ptr %i.ao, i64 %16 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 4, !alias.scope !16, !noalias !17
  %i.ay = load <2 x i32>, ptr %i.av, align 4, !alias.scope !18, !noalias !19
  store i64 %i.ax, ptr %i.av, align 4, !alias.scope !18, !noalias !19
  store <2 x i32> %i.ay, ptr %i.aw, align 4, !alias.scope !16, !noalias !17
  %17 = add nuw nsw i64 %.sroa.0.016.i.i.i, 2     ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCshhQDFPpdXZx_10regex_lite3hir10ClassRange7reverseBy_.exit.i.loopexit.unr-lcssa, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCshhQDFPpdXZx_10regex_lite3hir10ClassRange12split_at_mutBy_.exit11.i.i.i

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtNtCshhQDFPpdXZx_10regex_lite3hir10ClassRangeNvYB13_NtNtBa_3cmp10PartialOrd2ltEB17_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCshhQDFPpdXZx_10regex_lite3hir10ClassRange7reverseBy_.exit.i.a
  %.sroa.0.0.i34 = phi i64 [ %12, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCshhQDFPpdXZx_10regex_lite3hir10ClassRange7reverseBy_.exit.i.a ], [ %i.an, %bb.p ], [ %i.al, %bb.o ] ; 2 uses
  %i.az = lshr i64 %.sroa.023.0, 1
  %i.ba = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bb = sub nsw i64 %factor, %i.az
  %i.bc = add nuw nsw i64 %i.ba, %factor
  %i.bd = mul i64 %i.bb, %.sroa.0.0
  %i.be = mul i64 %i.bc, %.sroa.0.0
  %i.bf = xor i64 %i.be, %i.bd
  %i.bg = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bf, i1 false)
  %i.bh = trunc nuw nsw i64 %i.bg to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtNtCshhQDFPpdXZx_10regex_lite3hir10ClassRangeNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1a_.exit
  %.sroa.02.138 = phi i64 [ %i.bi, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtNtCshhQDFPpdXZx_10regex_lite3hir10ClassRangeNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1a_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.137 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtNtCshhQDFPpdXZx_10regex_lite3hir10ClassRangeNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1a_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.bi = add i64 %.sroa.02.138, -1               ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !noundef !3
  %.not29 = icmp ult i8 %i.bk, %.sroa.021.0
  br i1 %.not29, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtNtCshhQDFPpdXZx_10regex_lite3hir10ClassRangeNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1a_.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.137, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtNtCshhQDFPpdXZx_10regex_lite3hir10ClassRangeNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1a_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.138, %.lr.ph ], [ 1, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtNtCshhQDFPpdXZx_10regex_lite3hir10ClassRangeNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1a_.exit ] ; 3 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bm, align 1
  br i1 %i.k, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bi
  %i.bo = load i64, ptr %i.bn, align 8, !noundef !3 ; 3 uses
  %i.bp = lshr i64 %i.bo, 1                       ; 5 uses
  %i.bq = lshr i64 %.sroa.023.137, 1              ; 3 uses
  %i.br = add nuw i64 %i.bp, %i.bq                ; 5 uses
  %i.bs = sub i64 %.sroa.09.0, %i.br
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bs ; 3 uses
  %i.bu = icmp samesign ugt i64 %i.br, %3
  %i.bv = trunc i64 %.sroa.023.137 to i1
  %i.bw = or i64 %i.bo, %.sroa.023.137
  %i.bx = trunc i64 %i.bw to i1
  %or.cond3.i = or i1 %i.bu, %i.bx
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.by = trunc i64 %i.bo to i1
  br i1 %i.by, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.bz = shl nuw nsw i64 %i.br, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtNtCshhQDFPpdXZx_10regex_lite3hir10ClassRangeNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1a_.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.bv, label %bb.w, label %bb.x

bb.v:                                             ; preds = %bb.s
  %i.ca = or i64 %i.bp, 1
  %i.cb = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.ca, i1 true)
  %i.cc = trunc nuw nsw i64 %i.cb to i32
  %i.cd = shl nuw nsw i32 %i.cc, 1
  %i.ce = xor i32 %i.cd, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortNtNtCshhQDFPpdXZx_10regex_lite3hir10ClassRangeNvYB15_NtNtBa_3cmp10PartialOrd2ltEB19_(ptr noalias noundef nonnull align 4 %i.bt, i64 noundef range(i64 0, 1152921504606846976) %i.bp, ptr noalias noundef nonnull align 4 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.ce, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull %5)
  br label %bb.u

bb.w:                                             ; preds = %bb.x, %bb.u
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5merge5mergeNtNtCshhQDFPpdXZx_10regex_lite3hir10ClassRangeNvYBX_NtNtBa_3cmp10PartialOrd2ltEB11_(ptr noalias noundef nonnull align 4 %i.bt, i64 noundef range(i64 0, 1152921504606846976) %i.br, ptr noalias noundef nonnull align 4 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i64 noundef %i.bp, ptr noalias noundef nonnull %5)
  %i.cf = shl nuw nsw i64 %i.br, 1
  %i.cg = or disjoint i64 %i.cf, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtNtCshhQDFPpdXZx_10regex_lite3hir10ClassRangeNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1a_.exit

bb.x:                                             ; preds = %bb.u
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.bp
  %i.ci = or i64 %i.bq, 1
  %i.cj = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.ci, i1 true)
  %i.ck = trunc nuw nsw i64 %i.cj to i32
  %i.cl = shl nuw nsw i32 %i.ck, 1
  %i.cm = xor i32 %i.cl, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortNtNtCshhQDFPpdXZx_10regex_lite3hir10ClassRangeNvYB15_NtNtBa_3cmp10PartialOrd2ltEB19_(ptr noalias noundef nonnull align 4 %i.ch, i64 noundef range(i64 0, 1152921504606846976) %i.bq, ptr noalias noundef nonnull align 4 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.cm, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull %5)
  br label %bb.w

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtNtCshhQDFPpdXZx_10regex_lite3hir10ClassRangeNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1a_.exit: ; preds = %bb.t, %bb.w
  %.sroa.0.0.i = phi i64 [ %i.cg, %bb.w ], [ %i.bz, %bb.t ] ; 2 uses
  %i.cn = icmp ugt i64 %i.bi, 1
  br i1 %i.cn, label %.lr.ph, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.co = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.cp = lshr i64 %.sroa.018.0, 1
  %i.cq = add nuw i64 %i.cp, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.cr = and i64 %.sroa.023.1.lcssa, 1
  %.not31 = icmp eq i64 %i.cr, 0
  br i1 %.not31, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cs = or i64 %1, 1
  %i.ct = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.cs, i1 true)
  %i.cu = trunc nuw nsw i64 %i.ct to i32
  %i.cv = shl nuw nsw i32 %i.cu, 1
  %i.cw = xor i32 %i.cv, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortNtNtCshhQDFPpdXZx_10regex_lite3hir10ClassRangeNvYB15_NtNtBa_3cmp10PartialOrd2ltEB19_(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef nonnull align 4 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.cw, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull %5)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs5_NtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutexINtB5_5MutexINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB12_5boxed3BoxNtNtCshhQDFPpdXZx_10regex_lite6pikevm5CacheEEE4lockB1Q_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = cmpxchg ptr %1, i32 0, i32 1 acquire monotonic, align 4
  %i.b = extractvalue { i32, i1 } %i.a, 1
  br i1 %i.b, label %bb.c, label %bb.b, !prof !22

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 4 %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = load atomic i64, ptr @_RNvNtNtCs2AWtUsOyxgP_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.d = and i64 %i.c, 9223372036854775807
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag5guard.exit, label %bb.d, !prof !22

bb.d:                                             ; preds = %bb.c
  %i.f = tail call noundef zeroext i1 @_RNvNtNtCs2AWtUsOyxgP_3std9panicking11panic_count17is_zero_slow_path()
  %i.g = xor i1 %i.f, true
  %i.h = zext i1 %i.g to i8
  br label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag5guard.exit

_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag5guard.exit: ; preds = %bb.c, %bb.d
  %.sroa.01.0.i = phi i8 [ %i.h, %bb.d ], [ 0, %bb.c ]
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load atomic i8, ptr %i.i monotonic, align 4
  %i.k = icmp ne i8 %i.j, 0
  tail call void @_RINvNtNtCs2AWtUsOyxgP_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB1s_5boxed3BoxNtNtCshhQDFPpdXZx_10regex_lite6pikevm5CacheEEENCNvMs9_B10_BX_3new0EB2g_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i1 noundef zeroext %i.k, i8 noundef %.sroa.01.0.i, ptr noundef nonnull align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NtCshhQDFPpdXZx_10regex_lite5errorNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCshhQDFPpdXZx_10regex_lite, ptr %.sroa.43.0..sroa_idx, align 8
  %i.b = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !3, !align !23, !noundef !3
  %i.e = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.d, ptr noundef nonnull @0, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.e
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #3

; Function Attrs: noinline nonlazybind uwtable
declare void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortNtNtCshhQDFPpdXZx_10regex_lite3hir10ClassRangeNvYB15_NtNtBa_3cmp10PartialOrd2ltEB19_(ptr noalias noundef nonnull align 4, i64 noundef range(i64 0, 1152921504606846976), ptr noalias noundef nonnull align 4, i64 noundef range(i64 0, 1152921504606846976), i32 noundef, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8), ptr noalias noundef nonnull) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5merge5mergeNtNtCshhQDFPpdXZx_10regex_lite3hir10ClassRangeNvYBX_NtNtBa_3cmp10PartialOrd2ltEB11_(ptr noalias noundef nonnull align 4, i64 noundef range(i64 0, 1152921504606846976), ptr noalias noundef nonnull align 4, i64 noundef range(i64 0, 1152921504606846976), i64 noundef, ptr noalias noundef nonnull) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #5

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef) unnamed_addr #0

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtNtCs2AWtUsOyxgP_3std9panicking11panic_count17is_zero_slow_path() unnamed_addr #6

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 4) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCs2AWtUsOyxgP_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB1s_5boxed3BoxNtNtCshhQDFPpdXZx_10regex_lite6pikevm5CacheEEENCNvMs9_B10_BX_3new0EB2g_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i1 noundef zeroext, i8 noundef, ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCshhQDFPpdXZx_10regex_lite(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #4 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.97.1 (8bab26f4f 2026-07-14)"}
!3 = !{}
!4 = distinct !{!4, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtNtCshhQDFPpdXZx_10regex_lite3hir10ClassRangeNvYB13_NtNtBa_3cmp10PartialOrd2ltEB17_"}
!5 = distinct !{!5, !4, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtNtCshhQDFPpdXZx_10regex_lite3hir10ClassRangeNvYB13_NtNtBa_3cmp10PartialOrd2ltEB17_: argument 0"}
!6 = distinct !{!6, !4, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtNtCshhQDFPpdXZx_10regex_lite3hir10ClassRangeNvYB13_NtNtBa_3cmp10PartialOrd2ltEB17_: argument 2"}
!7 = distinct !{!7, !4, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtNtCshhQDFPpdXZx_10regex_lite3hir10ClassRangeNvYB13_NtNtBa_3cmp10PartialOrd2ltEB17_: argument 1"}
!8 = distinct !{!8, !"_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCshhQDFPpdXZx_10regex_lite3hir10ClassRange7reverseBy_"}
!9 = distinct !{!9, !8, !"_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCshhQDFPpdXZx_10regex_lite3hir10ClassRange7reverseBy_: argument 0"}
!10 = distinct !{!10, !"_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapNtNtCshhQDFPpdXZx_10regex_lite3hir10ClassRangeEBS_"}
!11 = distinct !{!11, !10, !"_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapNtNtCshhQDFPpdXZx_10regex_lite3hir10ClassRangeEBS_: argument 1"}
!12 = distinct !{!12, !10, !"_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapNtNtCshhQDFPpdXZx_10regex_lite3hir10ClassRangeEBS_: argument 0"}
!13 = !{i32 0, i32 1114112}
!14 = !{!5}
!15 = !{!7, !6}
!16 = !{!11, !9, !5}
!17 = !{!12, !7, !6}
!18 = !{!12, !9, !5}
!19 = !{!11, !7, !6}
!20 = !{!12}
!21 = !{!11}
!22 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!23 = !{i64 8}
end_hunk_0
