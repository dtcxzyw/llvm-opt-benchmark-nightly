Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jiff-rs/original/jiff_cli.jiff_cli.28936ee66da4cb41-cgu.07?download=true
inline.NumInlined: 73
inline.NumDeleted: 50
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [80 x i8] c"/rustc/787af2b8c80638c51a4fc8e44f84e6891f243ec7/library/core/src/str/pattern.rs\00", align 1
@1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"O\00\00\00\00\00\00\00A\06\00\00\14\00\00\00" }>, align 8
@2 = private unnamed_addr constant [2 x i8] c", ", align 1
@3 = private unnamed_addr constant [2 x i8] c"\C0\00", align 1
@4 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs5_NtCs8WPnInWCYsb_6anyhow7contextINtB5_6QuotedQNtNtCs3oUPovFnLWP_4core3fmt9FormatterENtBQ_5Write9write_str, ptr @_RNvYINtNtCs8WPnInWCYsb_6anyhow7context6QuotedQNtNtCs3oUPovFnLWP_4core3fmt9FormatterENtBK_5Write10write_charCs3tZ2SXJA1qv_8jiff_cli, ptr @_RNvYINtNtCs8WPnInWCYsb_6anyhow7context6QuotedQNtNtCs3oUPovFnLWP_4core3fmt9FormatterENtBK_5Write9write_fmtCs3tZ2SXJA1qv_8jiff_cli }>, align 8
@5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"O\00\00\00\00\00\00\00|\04\00\00$\00\00\00" }>, align 8

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift4sortNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSBW_11sort_by_keyReNCNvBY_9configure0E0EB10_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 192153584101141163) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 192153584101141163) %3, i1 noundef zeroext %4, ptr noalias nofree noundef align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef range(i64 0, 384307168202282326) i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.df, %bb.y ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.dd, %bb.y ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_11sort_by_keyReNCNvB15_9configure0E0EB17_.exit
  %.sroa.021.0 = phi i8 [ %i.bw, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_11sort_by_keyReNCNvB15_9configure0E0EB17_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_11sort_by_keyReNCNvB15_9configure0E0EB17_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.n = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37)
  %.not.i31 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyReNCNvB14_9configure0E0EB16_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
  br i1 %i.o, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs3tZ2SXJA1qv_8jiff_cli4args5Usage7reverseBy_.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %.val14.i = load ptr, ptr %i.p, align 8, !alias.scope !37, !noalias !38, !nonnull !5, !noundef !5
  %i.q = getelementptr i8, ptr %i.n, i64 56
  %.val15.i = load i64, ptr %i.q, align 8, !alias.scope !37, !noalias !38, !noundef !5
  %.val16.i = load ptr, ptr %i.n, align 8, !alias.scope !37, !noalias !38 ; 2 uses
  %i.r = getelementptr i8, ptr %i.n, i64 8
  %.val17.i = load i64, ptr %i.r, align 8, !alias.scope !37, !noalias !38
  %i.s = tail call fastcc { ptr, i64 } @_RNCNvNtCs3tZ2SXJA1qv_8jiff_cli4args9configure0B5_(ptr %.val14.i, i64 %.val15.i) #13, !noalias !39 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val16.i) ]
  %6 = extractvalue { ptr, i64 } %i.s, 0          ; 2 uses
  %7 = extractvalue { ptr, i64 } %i.s, 1          ; 2 uses
  %i.t = tail call fastcc { ptr, i64 } @_RNCNvNtCs3tZ2SXJA1qv_8jiff_cli4args9configure0B5_(ptr %.val16.i, i64 %.val17.i) #13, !noalias !39 ; 2 uses
  %i.u = extractvalue { ptr, i64 } %i.t, 0        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %6), "nonnull"(ptr %i.u) ]
  %8 = extractvalue { ptr, i64 } %i.t, 1          ; 2 uses
  %spec.store.select.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %7, i64 %8)
  %i.v = tail call i32 @memcmp(ptr nonnull readonly %6, ptr nonnull readonly %i.u, i64 %spec.store.select.i.i.i.i.i.i), !alias.scope !40, !noalias !39 ; 2 uses
  %i.w = sext i32 %i.v to i64
  %i.x = icmp eq i32 %i.v, 0
  %i.y = sub i64 %7, %8
  %spec.select.i.i.i.i.i.i = select i1 %i.x, i64 %i.y, i64 %i.w
  %i.z = icmp sgt i64 %spec.select.i.i.i.i.i.i, -1 ; 2 uses
  %.not42.i = icmp eq i64 %i.m, 2                 ; 2 uses
  br i1 %i.z, label %.preheader31.i, label %.preheader.i

.preheader31.i:                                   ; preds = %bb.k
  br i1 %.not42.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs3tZ2SXJA1qv_8jiff_cli4args5Usage7reverseBy_.exit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not42.i, label %.lr.ph.preheader.i.i.i, label %.lr.ph37.i

.lr.ph.i:                                         ; preds = %.preheader31.i, %bb.l
  %.sroa.01.0.i33.i = phi i64 [ %i.am, %bb.l ], [ 2, %.preheader31.i ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [48 x i8], ptr %i.n, i64 %.sroa.01.0.i33.i ; 4 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 -48
  %.val10.i = load ptr, ptr %i.aa, align 8, !alias.scope !37, !noalias !38, !nonnull !5, !noundef !5
  %i.ac = getelementptr i8, ptr %i.aa, i64 8
  %.val11.i = load i64, ptr %i.ac, align 8, !alias.scope !37, !noalias !38, !noundef !5
  %.val12.i = load ptr, ptr %i.ab, align 8, !alias.scope !37, !noalias !38 ; 2 uses
  %i.ad = getelementptr i8, ptr %i.aa, i64 -40
  %.val13.i = load i64, ptr %i.ad, align 8, !alias.scope !37, !noalias !38
  %i.ae = tail call fastcc { ptr, i64 } @_RNCNvNtCs3tZ2SXJA1qv_8jiff_cli4args9configure0B5_(ptr %.val10.i, i64 %.val11.i) #13, !noalias !39 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val12.i) ]
  %9 = extractvalue { ptr, i64 } %i.ae, 0         ; 2 uses
  %10 = extractvalue { ptr, i64 } %i.ae, 1        ; 2 uses
  %i.af = tail call fastcc { ptr, i64 } @_RNCNvNtCs3tZ2SXJA1qv_8jiff_cli4args9configure0B5_(ptr %.val12.i, i64 %.val13.i) #13, !noalias !39 ; 2 uses
  %i.ag = extractvalue { ptr, i64 } %i.af, 0      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %9), "nonnull"(ptr %i.ag) ]
  %11 = extractvalue { ptr, i64 } %i.af, 1        ; 2 uses
  %spec.store.select.i.i.i.i.i18.i = tail call i64 @llvm.umin.i64(i64 %10, i64 %11)
  %i.ah = tail call i32 @memcmp(ptr nonnull readonly %9, ptr nonnull readonly %i.ag, i64 %spec.store.select.i.i.i.i.i18.i), !alias.scope !41, !noalias !39 ; 2 uses
  %i.ai = sext i32 %i.ah to i64
  %i.aj = icmp eq i32 %i.ah, 0
  %i.ak = sub i64 %10, %11
  %spec.select.i.i.i.i.i19.i = select i1 %i.aj, i64 %i.ak, i64 %i.ai
  %i.al = icmp slt i64 %spec.select.i.i.i.i.i19.i, 0
  br i1 %i.al, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyReNCNvB14_9configure0E0EB16_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.am = add nuw nsw i64 %.sroa.01.0.i33.i, 1    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.am, %i.m
  br i1 %exitcond.not.i, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyReNCNvB14_9configure0E0EB16_.exit.i, label %.lr.ph.i

.lr.ph37.i:                                       ; preds = %.preheader.i, %bb.m
  %.sroa.01.1.i36.i = phi i64 [ %i.az, %bb.m ], [ 2, %.preheader.i ] ; 3 uses
  %i.an = getelementptr inbounds nuw [48 x i8], ptr %i.n, i64 %.sroa.01.1.i36.i ; 4 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 -48
  %.val.i = load ptr, ptr %i.an, align 8, !alias.scope !37, !noalias !38, !nonnull !5, !noundef !5
  %i.ap = getelementptr i8, ptr %i.an, i64 8
  %.val7.i = load i64, ptr %i.ap, align 8, !alias.scope !37, !noalias !38, !noundef !5
  %.val8.i = load ptr, ptr %i.ao, align 8, !alias.scope !37, !noalias !38 ; 2 uses
  %i.aq = getelementptr i8, ptr %i.an, i64 -40
  %.val9.i = load i64, ptr %i.aq, align 8, !alias.scope !37, !noalias !38
  %i.ar = tail call fastcc { ptr, i64 } @_RNCNvNtCs3tZ2SXJA1qv_8jiff_cli4args9configure0B5_(ptr %.val.i, i64 %.val7.i) #13, !noalias !39 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i) ]
  %12 = extractvalue { ptr, i64 } %i.ar, 0        ; 2 uses
  %13 = extractvalue { ptr, i64 } %i.ar, 1        ; 2 uses
  %i.as = tail call fastcc { ptr, i64 } @_RNCNvNtCs3tZ2SXJA1qv_8jiff_cli4args9configure0B5_(ptr %.val8.i, i64 %.val9.i) #13, !noalias !39 ; 2 uses
  %i.at = extractvalue { ptr, i64 } %i.as, 0      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %12), "nonnull"(ptr %i.at) ]
  %14 = extractvalue { ptr, i64 } %i.as, 1        ; 2 uses
  %spec.store.select.i.i.i.i.i20.i = tail call i64 @llvm.umin.i64(i64 %13, i64 %14)
  %i.au = tail call i32 @memcmp(ptr nonnull readonly %12, ptr nonnull readonly %i.at, i64 %spec.store.select.i.i.i.i.i20.i), !alias.scope !42, !noalias !39 ; 2 uses
  %i.av = sext i32 %i.au to i64
  %i.aw = icmp eq i32 %i.au, 0
  %i.ax = sub i64 %13, %14
  %spec.select.i.i.i.i.i21.i = select i1 %i.aw, i64 %i.ax, i64 %i.av
  %i.ay = icmp slt i64 %spec.select.i.i.i.i.i21.i, 0
  br i1 %i.ay, label %bb.m, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyReNCNvB14_9configure0E0EB16_.exit.i

bb.m:                                             ; preds = %.lr.ph37.i
  %i.az = add nuw nsw i64 %.sroa.01.1.i36.i, 1    ; 2 uses
  %exitcond45.not.i = icmp eq i64 %i.az, %i.m
  br i1 %exitcond45.not.i, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyReNCNvB14_9configure0E0EB16_.exit.i, label %.lr.ph37.i

_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyReNCNvB14_9configure0E0EB16_.exit.i: ; preds = %bb.m, %.lr.ph37.i, %bb.l, %.lr.ph.i
  %.sroa.0.0.i.i = phi i64 [ %i.m, %bb.l ], [ %.sroa.01.0.i33.i, %.lr.ph.i ], [ %.sroa.01.1.i36.i, %.lr.ph37.i ], [ %i.m, %bb.m ] ; 5 uses
  %i.ba = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.ba)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyReNCNvB14_9configure0E0EB16_.exit.i
  %i.bb = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.bb, 0
  %or.cond.i = or i1 %i.z, %.not.i.i.i
  br i1 %or.cond.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs3tZ2SXJA1qv_8jiff_cli4args5Usage7reverseBy_.exit.i, label %.lr.ph.preheader.i.i.i

bb.o:                                             ; preds = %bb.i
  %..i.i = tail call noundef range(i64 0, 384307168202282326) i64 @llvm.umin.i64(i64 range(i64 0, 192153584101141163) %i.m, i64 %.sroa.01.0)
  %i.bc = shl nuw nsw i64 %..i.i, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_11sort_by_keyReNCNvB15_9configure0E0EB17_.exit

bb.p:                                             ; preds = %bb.i
  %..i22.i = tail call noundef range(i64 0, 384307168202282326) i64 @llvm.umin.i64(i64 range(i64 0, 192153584101141163) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_11sort_by_keyReNCNvB17_9configure0E0EB19_(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef %..i22.i, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 192153584101141163) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #14
  %i.bd = shl nuw nsw i64 %..i22.i, 1
  %i.be = or disjoint i64 %i.bd, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_11sort_by_keyReNCNvB15_9configure0E0EB17_.exit

_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs3tZ2SXJA1qv_8jiff_cli4args5Usage7reverseBy_.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageEB14_.exit.i.i.i, %.preheader31.i, %bb.n, %bb.j
  %.sroa.0.0.i28.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader31.i ], [ %.sroa.0.0.i546165.i, %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageEB14_.exit.i.i.i ]
  %i.bf = shl nuw nsw i64 %.sroa.0.0.i28.i, 1
  %i.bg = or disjoint i64 %i.bf, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_11sort_by_keyReNCNvB15_9configure0E0EB17_.exit

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i, %bb.n
  %i.bh = phi i64 [ %i.bb, %bb.n ], [ 1, %.preheader.i ]
  %.sroa.0.0.i546165.i = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader.i ] ; 2 uses
  %i.bi = getelementptr inbounds nuw [48 x i8], ptr %i.n, i64 %.sroa.0.0.i546165.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageEB14_.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.0.017.i.i.i = phi i64 [ %i.bn, %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageEB14_.exit.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.bj = xor i64 %.sroa.0.017.i.i.i, -1
  %i.bk = getelementptr inbounds nuw [48 x i8], ptr %i.n, i64 %.sroa.0.017.i.i.i
  %i.bl = getelementptr [48 x i8], ptr %i.bi, i64 %i.bj
  invoke void @_RINvNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs3tZ2SXJA1qv_8jiff_cli(ptr noundef nonnull %i.bk, ptr noundef nonnull %i.bl, i64 noundef 6)
          to label %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageEB14_.exit.i.i.i unwind label %bb.q, !noalias !38

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking19panic_cannot_unwind() #15, !noalias !38
  unreachable

_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageEB14_.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.bn = add nuw nsw i64 %.sroa.0.017.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.bn, %i.bh
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs3tZ2SXJA1qv_8jiff_cli4args5Usage7reverseBy_.exit.i, label %.lr.ph.i.i.i

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_11sort_by_keyReNCNvB15_9configure0E0EB17_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs3tZ2SXJA1qv_8jiff_cli4args5Usage7reverseBy_.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.bg, %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs3tZ2SXJA1qv_8jiff_cli4args5Usage7reverseBy_.exit.i ], [ %i.be, %bb.p ], [ %i.bc, %bb.o ] ; 2 uses
  %i.bo = lshr i64 %.sroa.023.0, 1
  %i.bp = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bq = sub nsw i64 %factor, %i.bo
  %i.br = add nuw i64 %i.bp, %factor
  %i.bs = mul i64 %i.bq, %.sroa.0.0
  %i.bt = mul i64 %i.br, %.sroa.0.0
  %i.bu = xor i64 %i.bt, %i.bs
  %i.bv = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bu, i1 false)
  %i.bw = trunc nuw nsw i64 %i.bv to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyReNCNvB18_9configure0E0EB1a_.exit
  %.sroa.02.136 = phi i64 [ %i.bx, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyReNCNvB18_9configure0E0EB1a_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyReNCNvB18_9configure0E0EB1a_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.bx = add i64 %.sroa.02.136, -1               ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !noundef !5
  %.not28 = icmp ult i8 %i.bz, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyReNCNvB18_9configure0E0EB1a_.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyReNCNvB18_9configure0E0EB1a_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyReNCNvB18_9configure0E0EB1a_.exit ] ; 3 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.ca, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.cb, align 1
  br i1 %i.k, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bx
  %i.cd = load i64, ptr %i.cc, align 8, !noundef !5 ; 3 uses
  %i.ce = lshr i64 %i.cd, 1                       ; 5 uses
  %i.cf = lshr i64 %.sroa.023.135, 1              ; 3 uses
  %i.cg = add nuw i64 %i.ce, %i.cf                ; 5 uses
  %i.ch = sub i64 %.sroa.09.0, %i.cg
  %i.ci = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.ch ; 3 uses
  %i.cj = icmp samesign ugt i64 %i.cg, %3
  %i.ck = trunc i64 %.sroa.023.135 to i1
  %i.cl = or i64 %i.cd, %.sroa.023.135
  %i.cm = trunc i64 %i.cl to i1
  %or.cond3.i = or i1 %i.cj, %i.cm
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cn = trunc i64 %i.cd to i1
  br i1 %i.cn, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.co = shl nuw nsw i64 %i.cg, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyReNCNvB18_9configure0E0EB1a_.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.ck, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.cp = or i64 %i.ce, 1
  %i.cq = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.cp, i1 true)
  %i.cr = trunc nuw nsw i64 %i.cq to i32
  %i.cs = shl nuw nsw i32 %i.cr, 1
  %i.ct = xor i32 %i.cs, 126
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_11sort_by_keyReNCNvB17_9configure0E0EB19_(ptr noalias nofree noundef nonnull align 8 %i.ci, i64 noundef range(i64 0, 192153584101141163) %i.ce, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 192153584101141163) %3, i32 noundef %i.ct, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #14
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  %i.cu = getelementptr inbounds nuw [48 x i8], ptr %i.ci, i64 %i.ce
  %i.cv = or i64 %i.cf, 1
  %i.cw = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.cv, i1 true)
  %i.cx = trunc nuw nsw i64 %i.cw to i32
  %i.cy = shl nuw nsw i32 %i.cx, 1
  %i.cz = xor i32 %i.cy, 126
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_11sort_by_keyReNCNvB17_9configure0E0EB19_(ptr noalias nofree noundef nonnull align 8 %i.cu, i64 noundef range(i64 0, 192153584101141163) %i.cf, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 192153584101141163) %3, i32 noundef %i.cz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #14
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_11sort_by_keyReNCNvBZ_9configure0E0EB11_(ptr noalias nofree noundef nonnull align 8 %i.ci, i64 noundef range(i64 0, 192153584101141163) %i.cg, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 192153584101141163) %3, i64 noundef %i.ce, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5)
  %i.da = shl nuw nsw i64 %i.cg, 1
  %i.db = or disjoint i64 %i.da, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyReNCNvB18_9configure0E0EB1a_.exit

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyReNCNvB18_9configure0E0EB1a_.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.db, %bb.x ], [ %i.co, %bb.t ] ; 2 uses
  %i.dc = icmp ugt i64 %i.bx, 1
  br i1 %i.dc, label %.lr.ph, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.dd = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.de = lshr i64 %.sroa.018.0, 1
  %i.df = add nuw i64 %i.de, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.dg = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.dg, 0
  br i1 %.not30, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dh = or i64 %1, 1
  %i.di = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.dh, i1 true)
  %i.dj = trunc nuw nsw i64 %i.di to i32
  %i.dk = shl nuw nsw i32 %i.dj, 1
  %i.dl = xor i32 %i.dk, 126
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_11sort_by_keyReNCNvB17_9configure0E0EB19_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 192153584101141163) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 192153584101141163) %3, i32 noundef %i.dl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #14
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift4sortTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSBW_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2r_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i1 noundef zeroext %4, ptr noalias nofree noundef align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
end_hunk_0
