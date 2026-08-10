inline.NumInlined: 2
inline.NumDeleted: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [8 x i8] c"Effects(", align 1
@1 = private unnamed_addr constant [1 x i8] c")", align 1
@2 = private unnamed_addr constant [3 x i8] c" | ", align 1
@3 = private unnamed_addr constant [98 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/anstyle-1.0.14/src/effect.rs\00", align 1
@4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @3, [16 x i8] c"a\00\00\00\00\00\00\00\C6\00\00\00\1D\00\00\00" }>, align 8
@5 = private unnamed_addr constant [4 x i8] c"BOLD", align 1
@6 = private unnamed_addr constant [4 x i8] c"\1B[1m", align 1
@7 = private unnamed_addr constant [6 x i8] c"DIMMED", align 1
@8 = private unnamed_addr constant [4 x i8] c"\1B[2m", align 1
@9 = private unnamed_addr constant [6 x i8] c"ITALIC", align 1
@10 = private unnamed_addr constant [4 x i8] c"\1B[3m", align 1
@11 = private unnamed_addr constant [9 x i8] c"UNDERLINE", align 1
@12 = private unnamed_addr constant [4 x i8] c"\1B[4m", align 1
@13 = private unnamed_addr constant [16 x i8] c"DOUBLE_UNDERLINE", align 1
@14 = private unnamed_addr constant [5 x i8] c"\1B[21m", align 1
@15 = private unnamed_addr constant [15 x i8] c"CURLY_UNDERLINE", align 1
@16 = private unnamed_addr constant [6 x i8] c"\1B[4:3m", align 1
@17 = private unnamed_addr constant [16 x i8] c"DOTTED_UNDERLINE", align 1
@18 = private unnamed_addr constant [6 x i8] c"\1B[4:4m", align 1
@19 = private unnamed_addr constant [16 x i8] c"DASHED_UNDERLINE", align 1
@20 = private unnamed_addr constant [6 x i8] c"\1B[4:5m", align 1
@21 = private unnamed_addr constant [5 x i8] c"BLINK", align 1
@22 = private unnamed_addr constant [4 x i8] c"\1B[5m", align 1
@23 = private unnamed_addr constant [6 x i8] c"INVERT", align 1
@24 = private unnamed_addr constant [4 x i8] c"\1B[7m", align 1
@25 = private unnamed_addr constant [6 x i8] c"HIDDEN", align 1
@26 = private unnamed_addr constant [4 x i8] c"\1B[8m", align 1
@27 = private unnamed_addr constant [13 x i8] c"STRIKETHROUGH", align 1
@28 = private unnamed_addr constant [4 x i8] c"\1B[9m", align 1
@29 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @5, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @6, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @7, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @8, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @9, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @10, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @11, [8 x i8] c"\09\00\00\00\00\00\00\00", ptr @12, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @13, [8 x i8] c"\10\00\00\00\00\00\00\00", ptr @14, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @15, [8 x i8] c"\0F\00\00\00\00\00\00\00", ptr @16, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @17, [8 x i8] c"\10\00\00\00\00\00\00\00", ptr @18, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @19, [8 x i8] c"\10\00\00\00\00\00\00\00", ptr @20, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @21, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @22, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @23, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @24, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @25, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @26, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @27, [8 x i8] c"\0D\00\00\00\00\00\00\00", ptr @28, [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
@30 = private unnamed_addr constant [2 x i8] c"\C0\00", align 1

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs_NtCseR46qigP5Cu_7anstyle6effectNtB4_7EffectsNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 2 captures(none) dereferenceable(2) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !3, !align !4, !noundef !3 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !invariant.load !3, !nonnull !3 ; 3 uses
  %i.g = tail call noundef zeroext i1 %i.f(ptr noundef nonnull %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 8)
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load i16, ptr %0, align 2, !noundef !3   ; 2 uses
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %broadcast.splatinsert = insertelement <16 x i16> poison, i16 %i.h, i64 0
  %broadcast.splat = shufflevector <16 x i16> %broadcast.splatinsert, <16 x i16> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %bb.b
  %.sroa.857.0 = phi i64 [ 0, %bb.b ], [ %i.z, %bb.g ] ; 2 uses
  %.sroa.0.061 = phi i64 [ 0, %bb.b ], [ %.lcssa85, %bb.g ] ; 7 uses
  %exitcond.not.i.i86 = icmp eq i64 %.sroa.0.061, 12
  br i1 %exitcond.not.i.i86, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtCseR46qigP5Cu_7anstyle6effect15EffectIndexIterENtNtNtB8_6traits8iterator8Iterator4nextB1b_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.i = sub i64 12, %.sroa.0.061                 ; 3 uses
  %min.iters.check = icmp ult i64 %i.i, 48
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.i, -16                      ; 3 uses
  %i.j = add i64 %.sroa.0.061, %n.vec
  %broadcast.splatinsert88 = insertelement <16 x i64> poison, i64 %.sroa.0.061, i64 0
  %broadcast.splat89 = shufflevector <16 x i64> %broadcast.splatinsert88, <16 x i64> poison, <16 x i32> zeroinitializer
  %induction = add <16 x i64> %broadcast.splat89, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  %i.k = trunc i64 %.sroa.0.061 to i16
  %broadcast.splatinsert90 = insertelement <16 x i16> poison, i16 %i.k, i64 0
  %broadcast.splat91 = shufflevector <16 x i16> %broadcast.splatinsert90, <16 x i16> poison, <16 x i32> zeroinitializer
  %induction92 = add <16 x i16> %broadcast.splat91, <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15>
  br label %vector.body

vector.body:                                      ; preds = %vector.body.interim, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body.interim ] ; 2 uses
  %vec.ind = phi <16 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body.interim ] ; 2 uses
  %vec.ind93 = phi <16 x i16> [ %induction92, %vector.ph ], [ %vec.ind.next94, %vector.body.interim ] ; 2 uses
  %i.l = shl nuw nsw <16 x i16> splat (i16 1), %vec.ind93
  %.fr97 = freeze <16 x i16> %i.l
  %i.m = and <16 x i16> %.fr97, %broadcast.splat
  %i.n = icmp ne <16 x i16> %i.m, zeroinitializer ; 2 uses
  %i.o = bitcast <16 x i1> %i.n to i16
  %.not = icmp eq i16 %i.o, 0
  br i1 %.not, label %vector.body.interim, label %vector.early.exit

vector.body.interim:                              ; preds = %vector.body
  %vec.ind.next94 = add <16 x i16> %vec.ind93, splat (i16 16)
  %vec.ind.next = add <16 x i64> %vec.ind, splat (i64 16)
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !5

middle.block:                                     ; preds = %vector.body.interim
  %cmp.n = icmp eq i64 %i.i, %n.vec
  br i1 %cmp.n, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtCseR46qigP5Cu_7anstyle6effect15EffectIndexIterENtNtNtB8_6traits8iterator8Iterator4nextB1b_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.ph = phi i64 [ %.sroa.0.061, %.lr.ph ], [ %i.j, %middle.block ]
  br label %scalar.ph

vector.early.exit:                                ; preds = %vector.body
  %first.active.lane = call i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1> %i.n, i1 false) ; 2 uses
  %i.q = extractelement <16 x i64> %vec.ind, i64 %first.active.lane
  %i.r = add i64 %i.q, 1
  %i.s = add i64 %index, %first.active.lane
  %i.t = add i64 %.sroa.0.061, %i.s
  br label %.loopexit95

bb.d:                                             ; preds = %scalar.ph
  %exitcond.not.i.i = icmp eq i64 %i.v, 12
  br i1 %exitcond.not.i.i, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtCseR46qigP5Cu_7anstyle6effect15EffectIndexIterENtNtNtB8_6traits8iterator8Iterator4nextB1b_.exit, label %scalar.ph, !llvm.loop !8

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.d
  %i.u = phi i64 [ %i.v, %bb.d ], [ %.ph, %scalar.ph.preheader ] ; 3 uses
  %i.v = add i64 %i.u, 1                          ; 3 uses
  %i.w = trunc nuw nsw i64 %i.u to i16
  %i.x = shl nuw nsw i16 1, %i.w
  %i.y = and i16 %i.x, %i.h
  %.not.i.i = icmp eq i16 %i.y, 0
  br i1 %.not.i.i, label %bb.d, label %.loopexit95

.loopexit95:                                      ; preds = %scalar.ph, %vector.early.exit
  %.lcssa85 = phi i64 [ %i.r, %vector.early.exit ], [ %i.v, %scalar.ph ]
  %.lcssa83 = phi i64 [ %i.t, %vector.early.exit ], [ %i.u, %scalar.ph ] ; 3 uses
  %i.z = add i64 %.sroa.857.0, 1
  %i.aa = icmp eq i64 %.sroa.857.0, 0
  br i1 %i.aa, label %bb.e, label %bb.f

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtCseR46qigP5Cu_7anstyle6effect15EffectIndexIterENtNtNtB8_6traits8iterator8Iterator4nextB1b_.exit: ; preds = %middle.block, %bb.c, %bb.d
  %i.ab = call noundef zeroext i1 %i.f(ptr noundef nonnull %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 1)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.g, %bb.f, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtCseR46qigP5Cu_7anstyle6effect15EffectIndexIterENtNtNtB8_6traits8iterator8Iterator4nextB1b_.exit, %bb.a
  %.sroa.0.0 = phi i1 [ %i.ab, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtCseR46qigP5Cu_7anstyle6effect15EffectIndexIterENtNtNtB8_6traits8iterator8Iterator4nextB1b_.exit ], [ true, %bb.a ], [ true, %bb.f ], [ true, %bb.g ]
  ret i1 %.sroa.0.0

bb.e:                                             ; preds = %bb.f, %.loopexit95
  %i.ac = icmp ult i64 %.lcssa83, 12
  br i1 %i.ac, label %bb.g, label %bb.h

bb.f:                                             ; preds = %.loopexit95
  %i.ad = call noundef zeroext i1 %i.f(ptr noundef nonnull %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 3)
  br i1 %i.ad, label %.loopexit, label %bb.e

bb.g:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw [32 x i8], ptr @29, i64 %.lcssa83
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.ae, ptr %i.a, align 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCseR46qigP5Cu_7anstyle, ptr %.sroa.432.0..sroa_idx, align 8
  %i.af = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.d, ptr noundef nonnull @30, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.af, label %.loopexit, label %bb.c

bb.h:                                             ; preds = %bb.e
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.lcssa83, i64 noundef 12, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #5
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCseR46qigP5Cu_7anstyle(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1>, i1 immarg) #4

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.97.1 (8bab26f4f 2026-07-14)"}
!3 = !{}
!4 = !{i64 8}
!5 = distinct !{!5, !6, !7}
!6 = !{!"llvm.loop.isvectorized", i32 1}
!7 = !{!"llvm.loop.unroll.runtime.disable"}
!8 = distinct !{!8, !7, !6}
end_hunk_0
