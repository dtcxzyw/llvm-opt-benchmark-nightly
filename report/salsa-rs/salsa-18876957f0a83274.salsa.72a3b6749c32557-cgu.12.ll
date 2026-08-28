Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/salsa-rs/original/salsa-18876957f0a83274.salsa.72a3b6749c32557-cgu.12?download=true
inline.NumInlined: 302
inline.NumDeleted: 213
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [77 x i8] c"/rustc/8bab26f4f68e0e26f0bb7960be334d5b520ea452/library/alloc/src/vec/mod.rs\00", align 1
@1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"L\00\00\00\00\00\00\00\AE\0B\00\00$\00\00\00" }>, align 8
@2 = private unnamed_addr constant [61 x i8] c"fatal runtime error: thread local panicked on drop, aborting\0A", align 1
@_RNvCsa3bo7ChGFM8_8thin_vec12EMPTY_HEADER = external global { i64, i64 }

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecIBv_NtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEE11resize_withNvMB5_BE_3newEBM_(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 9 uses
  %i.c = icmp ult i64 %i.b, 384307168202282326
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp ugt i64 %1, %i.b
  br i1 %i.d, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4)
  %i.e = sub nuw nsw i64 %i.b, %1                 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !4, !nonnull !3, !noundef !3
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %1 ; 2 uses
  store i64 %1, ptr %i.a, align 8, !alias.scope !4
  %i.i = icmp eq i64 %i.b, %1
  br i1 %i.i, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecIBu_NtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEE8truncateBL_.exit, label %.lr.ph

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEEB1b_.exit.i.i: ; preds = %.lr.ph
  %i.j = icmp eq i64 %i.l, %i.e
  br i1 %i.j, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecIBu_NtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEE8truncateBL_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEEB1b_.exit.i.i
  %.sroa.0.0.i.i11 = phi i64 [ %i.l, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEEB1b_.exit.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %.sroa.0.0.i.i11
  %i.l = add nuw nsw i64 %.sroa.0.0.i.i11, 1      ; 4 uses
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEEB1b_.exit.i.i unwind label %bb.c, !noalias !4

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEEB1b_.exit7.i.i: ; preds = %.lr.ph13
  %i.m = add i64 %.sroa.0.1.i.i12, 1              ; 2 uses
  %i.n = icmp eq i64 %i.m, %i.e
  br i1 %i.n, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEEB1b_.exit7.i.i._crit_edge, label %.lr.ph13

bb.c:                                             ; preds = %.lr.ph
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = icmp eq i64 %i.l, %i.e
  br i1 %i.p, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEEB1b_.exit7.i.i._crit_edge, label %.lr.ph13

.lr.ph13:                                         ; preds = %bb.c, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEEB1b_.exit7.i.i
  %.sroa.0.1.i.i12 = phi i64 [ %i.m, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEEB1b_.exit7.i.i ], [ %i.l, %bb.c ] ; 2 uses
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %.sroa.0.1.i.i12
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEEB1b_.exit7.i.i unwind label %bb.d, !noalias !4

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEEB1b_.exit7.i.i._crit_edge: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEEB1b_.exit7.i.i, %bb.c
  resume { ptr, i32 } %i.o

bb.d:                                             ; preds = %.lr.ph13
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19, !noalias !4
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.s = sub nuw i64 %1, %i.b                     ; 5 uses
  %i.t = load i64, ptr %0, align 8, !range !7, !alias.scope !8, !noundef !3
  %i.u = sub nsw i64 %i.t, %i.b
  %i.v = icmp ugt i64 %i.s, %i.u
  br i1 %i.v, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecIBu_NtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEE7reserveBL_.exit.thread.i, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecIBu_NtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEE7reserveBL_.exit.i, !prof !13

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecIBu_NtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEE7reserveBL_.exit.thread.i: ; preds = %bb.e
  tail call void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsC8CapfvpQ1_5salsa(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %i.s, i64 noundef 8, i64 noundef 24)
  %i.w = load i64, ptr %i.a, align 8, !alias.scope !14, !noundef !3
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecIBu_NtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEE7reserveBL_.exit.i

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecIBu_NtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEE7reserveBL_.exit.i: ; preds = %bb.e, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecIBu_NtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEE7reserveBL_.exit.thread.i
  %i.x = phi i64 [ %i.w, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecIBu_NtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEE7reserveBL_.exit.thread.i ], [ %i.b, %bb.e ] ; 3 uses
  %.in.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %.in.i, align 8, !alias.scope !14, !nonnull !3, !noundef !3 ; 3 uses
  %.neg = add nuw nsw i64 %i.b, 1
  %xtraiter = and i64 %i.s, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecIBu_NtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEE7reserveBL_.exit.i
  %.sroa.0.0.i.i.i.i.prol = add nsw i64 %i.s, -1
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %i.x ; 3 uses
  store i64 0, ptr %i.z, align 8, !noalias !15
  %.sroa.52.8..sroa_idx.i.i.i.i.prol = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.52.8..sroa_idx.i.i.i.i.prol, align 8, !noalias !15
  %.sroa.63.8..sroa_idx.i.i.i.i.prol = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i64 0, ptr %.sroa.63.8..sroa_idx.i.i.i.i.prol, align 8, !noalias !15
  %i.aa = add i64 %i.x, 1                         ; 2 uses
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecIBu_NtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEE7reserveBL_.exit.i
  %.lcssa.unr = phi i64 [ poison, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecIBu_NtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEE7reserveBL_.exit.i ], [ %i.aa, %.prol.loopexit.unr-lcssa ]
  %.unr = phi i64 [ %i.x, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecIBu_NtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEE7reserveBL_.exit.i ], [ %i.aa, %.prol.loopexit.unr-lcssa ]
  %.sroa.0.0.i.in.i.i.i.unr = phi i64 [ %i.s, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecIBu_NtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEE7reserveBL_.exit.i ], [ %.sroa.0.0.i.i.i.i.prol, %.prol.loopexit.unr-lcssa ]
  %i.ab = icmp eq i64 %1, %.neg
  br i1 %i.ab, label %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecIBw_NtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtNtB1S_7sources11repeat_with10RepeatWithNvMB6_BF_3newEEEBN_.exit, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecIBu_NtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEE7reserveBL_.exit.i.new

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecIBu_NtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEE7reserveBL_.exit.i.new: ; preds = %.prol.loopexit, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecIBu_NtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEE7reserveBL_.exit.i.new
  %i.ac = phi i64 [ %i.ag, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecIBu_NtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEE7reserveBL_.exit.i.new ], [ %.unr, %.prol.loopexit ] ; 3 uses
  %.sroa.0.0.i.in.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i.1, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecIBu_NtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEE7reserveBL_.exit.i.new ], [ %.sroa.0.0.i.in.i.i.i.unr, %.prol.loopexit ]
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %i.ac ; 3 uses
  store i64 0, ptr %i.ad, align 8, !noalias !15
  %.sroa.52.8..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.52.8..sroa_idx.i.i.i.i, align 8, !noalias !15
  %.sroa.63.8..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i64 0, ptr %.sroa.63.8..sroa_idx.i.i.i.i, align 8, !noalias !15
  %.sroa.0.0.i.i.i.i.1 = add i64 %.sroa.0.0.i.in.i.i.i, -2 ; 2 uses
  %i.ae = getelementptr [24 x i8], ptr %i.y, i64 %i.ac ; 3 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 24
  store i64 0, ptr %i.af, align 8, !noalias !15
  %.sroa.52.8..sroa_idx.i.i.i.i.1 = getelementptr i8, ptr %i.ae, i64 32
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.52.8..sroa_idx.i.i.i.i.1, align 8, !noalias !15
  %.sroa.63.8..sroa_idx.i.i.i.i.1 = getelementptr i8, ptr %i.ae, i64 40
  store i64 0, ptr %.sroa.63.8..sroa_idx.i.i.i.i.1, align 8, !noalias !15
  %i.ag = add i64 %i.ac, 2                        ; 2 uses
  %i.ah = icmp eq i64 %.sroa.0.0.i.i.i.i.1, 0
  br i1 %i.ah, label %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecIBw_NtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtNtB1S_7sources11repeat_with10RepeatWithNvMB6_BF_3newEEEBN_.exit, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecIBu_NtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEE7reserveBL_.exit.i.new

_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecIBw_NtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtNtB1S_7sources11repeat_with10RepeatWithNvMB6_BF_3newEEEBN_.exit: ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecIBu_NtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEE7reserveBL_.exit.i.new, %.prol.loopexit
  %.lcssa = phi i64 [ %.lcssa.unr, %.prol.loopexit ], [ %i.ag, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecIBu_NtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEE7reserveBL_.exit.i.new ]
  store i64 %.lcssa, ptr %i.a, align 8, !alias.scope !14, !noalias !26
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecIBu_NtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEE8truncateBL_.exit

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecIBu_NtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEE8truncateBL_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEEB1b_.exit.i.i, %bb.b, %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecIBw_NtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtNtB1S_7sources11repeat_with10RepeatWithNvMB6_BF_3newEEEBN_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuEE5drainINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB1f_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noalias noundef align 8 dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 3 uses
  %i.c = icmp ult i64 %i.b, 384307168202282326
  tail call void @llvm.assume(i1 %i.c)
  %i.d = tail call { i64, i64 } @_RINvNtNtCs4NRVxsYgnAr_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECsC8CapfvpQ1_5salsa(i64 noundef %2, i64 noundef %3, i64 noundef %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 3 uses
  store i64 %i.e, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.e
  %i.j = sub i64 %i.b, %i.f
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.f, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.j, ptr %i.m, align 8
  store ptr %i.i, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.o, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCs36qfJazsBC0_6boxcar3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterEE11resize_withNvYBE_NtNtCs4NRVxsYgnAr_4core7default7Default7defaultEB1o_(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 9 uses
  %i.c = icmp ult i64 %i.b, 192153584101141163
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp ugt i64 %1, %i.b
  br i1 %i.d, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27)
  %i.e = sub nuw nsw i64 %i.b, %1                 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !27, !nonnull !3, !noundef !3
  %i.h = getelementptr inbounds nuw [48 x i8], ptr %i.g, i64 %1 ; 2 uses
  store i64 %1, ptr %i.a, align 8, !alias.scope !27
  %i.i = icmp eq i64 %i.b, %1
  br i1 %i.i, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtNtCs36qfJazsBC0_6boxcar3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterEE8truncateB1n_.exit, label %.lr.ph

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs36qfJazsBC0_6boxcar3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterEEB1l_.exit.i.i: ; preds = %.lr.ph
  %i.j = icmp eq i64 %i.l, %i.e
  br i1 %i.j, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtNtCs36qfJazsBC0_6boxcar3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterEE8truncateB1n_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs36qfJazsBC0_6boxcar3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterEEB1l_.exit.i.i
  %.sroa.0.0.i.i11 = phi i64 [ %i.l, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs36qfJazsBC0_6boxcar3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterEEB1l_.exit.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.k = getelementptr inbounds nuw [48 x i8], ptr %i.h, i64 %.sroa.0.0.i.i11
  %i.l = add nuw nsw i64 %.sroa.0.0.i.i11, 1      ; 4 uses
  invoke void @_RNvXs6_NtNtCs36qfJazsBC0_6boxcar3vec3rawINtB5_5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBS_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.k)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs36qfJazsBC0_6boxcar3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterEEB1l_.exit.i.i unwind label %bb.c, !noalias !27

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs36qfJazsBC0_6boxcar3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterEEB1l_.exit7.i.i: ; preds = %.lr.ph13
  %i.m = add i64 %.sroa.0.1.i.i12, 1              ; 2 uses
  %i.n = icmp eq i64 %i.m, %i.e
  br i1 %i.n, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs36qfJazsBC0_6boxcar3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterEEB1l_.exit7.i.i._crit_edge, label %.lr.ph13

bb.c:                                             ; preds = %.lr.ph
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = icmp eq i64 %i.l, %i.e
  br i1 %i.p, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs36qfJazsBC0_6boxcar3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterEEB1l_.exit7.i.i._crit_edge, label %.lr.ph13

.lr.ph13:                                         ; preds = %bb.c, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs36qfJazsBC0_6boxcar3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterEEB1l_.exit7.i.i
  %.sroa.0.1.i.i12 = phi i64 [ %i.m, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs36qfJazsBC0_6boxcar3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterEEB1l_.exit7.i.i ], [ %i.l, %bb.c ] ; 2 uses
  %i.q = getelementptr inbounds nuw [48 x i8], ptr %i.h, i64 %.sroa.0.1.i.i12
  invoke void @_RNvXs6_NtNtCs36qfJazsBC0_6boxcar3vec3rawINtB5_5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBS_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.q)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs36qfJazsBC0_6boxcar3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterEEB1l_.exit7.i.i unwind label %bb.d, !noalias !27

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs36qfJazsBC0_6boxcar3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterEEB1l_.exit7.i.i._crit_edge: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs36qfJazsBC0_6boxcar3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterEEB1l_.exit7.i.i, %bb.c
  resume { ptr, i32 } %i.o

bb.d:                                             ; preds = %.lr.ph13
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19, !noalias !27
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.s = sub nuw i64 %1, %i.b                     ; 5 uses
  %i.t = load i64, ptr %0, align 8, !range !7, !alias.scope !30, !noundef !3
  %i.u = sub nsw i64 %i.t, %i.b
  %i.v = icmp ugt i64 %i.s, %i.u
  br i1 %i.v, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtNtCs36qfJazsBC0_6boxcar3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterEE7reserveB1n_.exit.thread.i, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtNtCs36qfJazsBC0_6boxcar3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterEE7reserveB1n_.exit.i, !prof !13

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtNtCs36qfJazsBC0_6boxcar3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterEE7reserveB1n_.exit.thread.i: ; preds = %bb.e
  tail call void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsC8CapfvpQ1_5salsa(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %i.s, i64 noundef 8, i64 noundef 48)
  %i.w = load i64, ptr %i.a, align 8, !alias.scope !35, !noundef !3
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtNtCs36qfJazsBC0_6boxcar3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterEE7reserveB1n_.exit.i

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtNtCs36qfJazsBC0_6boxcar3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterEE7reserveB1n_.exit.i: ; preds = %bb.e, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtNtCs36qfJazsBC0_6boxcar3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterEE7reserveB1n_.exit.thread.i
  %i.x = phi i64 [ %i.w, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtNtCs36qfJazsBC0_6boxcar3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterEE7reserveB1n_.exit.thread.i ], [ %i.b, %bb.e ] ; 2 uses
  %.in.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %.in.i, align 8, !alias.scope !35, !nonnull !3, !noundef !3 ; 5 uses
  %xtraiter = and i64 %i.s, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtNtCs36qfJazsBC0_6boxcar3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterEE7reserveB1n_.exit.i, %.prol.preheader
  %i.z = phi i64 [ %i.ab, %.prol.preheader ], [ %i.x, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtNtCs36qfJazsBC0_6boxcar3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterEE7reserveB1n_.exit.i ] ; 2 uses
  %.sroa.0.0.i.in.i.i.i.prol = phi i64 [ %.sroa.0.0.i.i.i.i.prol, %.prol.preheader ], [ %i.s, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtNtCs36qfJazsBC0_6boxcar3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterEE7reserveB1n_.exit.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtNtCs36qfJazsBC0_6boxcar3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterEE7reserveB1n_.exit.i ]
  %.sroa.0.0.i.i.i.i.prol = add i64 %.sroa.0.0.i.in.i.i.i.prol, -1 ; 2 uses
  %i.aa = getelementptr inbounds nuw [48 x i8], ptr %i.y, i64 %i.z
  %.sroa.52.8..sroa_idx.i.i.i.i.prol = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  store i8 0, ptr %.sroa.52.8..sroa_idx.i.i.i.i.prol, align 8, !noalias !36
  %i.ab = add i64 %i.z, 1                         ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !47

.prol.loopexit:                                   ; preds = %.prol.preheader, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtNtCs36qfJazsBC0_6boxcar3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterEE7reserveB1n_.exit.i
  %.lcssa.unr = phi i64 [ poison, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtNtCs36qfJazsBC0_6boxcar3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterEE7reserveB1n_.exit.i ], [ %i.ab, %.prol.preheader ]
  %.unr = phi i64 [ %i.x, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtNtCs36qfJazsBC0_6boxcar3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterEE7reserveB1n_.exit.i ], [ %i.ab, %.prol.preheader ]
  %.sroa.0.0.i.in.i.i.i.unr = phi i64 [ %i.s, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtNtCs36qfJazsBC0_6boxcar3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterEE7reserveB1n_.exit.i ], [ %.sroa.0.0.i.i.i.i.prol, %.prol.preheader ]
  %i.ac = sub i64 %i.b, %1
  %i.ad = icmp ugt i64 %i.ac, -4
  br i1 %i.ad, label %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecINtNtNtCs36qfJazsBC0_6boxcar3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterEE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtNtB2p_7sources11repeat_with10RepeatWithNvYBF_NtNtB2r_7default7Default7defaultEEEB1p_.exit, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtNtCs36qfJazsBC0_6boxcar3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterEE7reserveB1n_.exit.i.new

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtNtCs36qfJazsBC0_6boxcar3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterEE7reserveB1n_.exit.i.new: ; preds = %.prol.loopexit, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtNtCs36qfJazsBC0_6boxcar3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterEE7reserveB1n_.exit.i.new
  %i.ae = phi i64 [ %i.aj, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtNtCs36qfJazsBC0_6boxcar3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterEE7reserveB1n_.exit.i.new ], [ %.unr, %.prol.loopexit ] ; 5 uses
  %.sroa.0.0.i.in.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i.3, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtNtCs36qfJazsBC0_6boxcar3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterEE7reserveB1n_.exit.i.new ], [ %.sroa.0.0.i.in.i.i.i.unr, %.prol.loopexit ]
  %i.af = getelementptr inbounds nuw [48 x i8], ptr %i.y, i64 %i.ae
  %.sroa.52.8..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  store i8 0, ptr %.sroa.52.8..sroa_idx.i.i.i.i, align 8, !noalias !36
  %i.ag = getelementptr [48 x i8], ptr %i.y, i64 %i.ae
  %.sroa.52.8..sroa_idx.i.i.i.i.1 = getelementptr i8, ptr %i.ag, i64 88
  store i8 0, ptr %.sroa.52.8..sroa_idx.i.i.i.i.1, align 8, !noalias !36
  %i.ah = getelementptr [48 x i8], ptr %i.y, i64 %i.ae
  %.sroa.52.8..sroa_idx.i.i.i.i.2 = getelementptr i8, ptr %i.ah, i64 136
  store i8 0, ptr %.sroa.52.8..sroa_idx.i.i.i.i.2, align 8, !noalias !36
  %.sroa.0.0.i.i.i.i.3 = add i64 %.sroa.0.0.i.in.i.i.i, -4 ; 2 uses
  %i.ai = getelementptr [48 x i8], ptr %i.y, i64 %i.ae
  %.sroa.52.8..sroa_idx.i.i.i.i.3 = getelementptr i8, ptr %i.ai, i64 184
  store i8 0, ptr %.sroa.52.8..sroa_idx.i.i.i.i.3, align 8, !noalias !36
  %i.aj = add i64 %i.ae, 4                        ; 2 uses
  %i.ak = icmp eq i64 %.sroa.0.0.i.i.i.i.3, 0
  br i1 %i.ak, label %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecINtNtNtCs36qfJazsBC0_6boxcar3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterEE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtNtB2p_7sources11repeat_with10RepeatWithNvYBF_NtNtB2r_7default7Default7defaultEEEB1p_.exit, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtNtCs36qfJazsBC0_6boxcar3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterEE7reserveB1n_.exit.i.new

_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecINtNtNtCs36qfJazsBC0_6boxcar3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterEE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtNtB2p_7sources11repeat_with10RepeatWithNvYBF_NtNtB2r_7default7Default7defaultEEEB1p_.exit: ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtNtCs36qfJazsBC0_6boxcar3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterEE7reserveB1n_.exit.i.new, %.prol.loopexit
  %.lcssa = phi i64 [ %.lcssa.unr, %.prol.loopexit ], [ %i.aj, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtNtCs36qfJazsBC0_6boxcar3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterEE7reserveB1n_.exit.i.new ]
  store i64 %.lcssa, ptr %i.a, align 8, !alias.scope !35, !noalias !49
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtNtCs36qfJazsBC0_6boxcar3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterEE8truncateB1n_.exit

end_hunk_0
begin_hunk_1_@_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsC8CapfvpQ1_5salsa10ingredient10IngredientEL_EEB1f_:bb.a
  ret void

bb.g:                                             ; preds = %.lr.ph25
  %i.r = add i64 %.sroa.0.124, 1                  ; 2 uses
  %i.s = icmp eq i64 %i.r, %1
  br i1 %i.s, label %._crit_edge26, label %.lr.ph25

.body:                                            ; preds = %bb.e, %bb.f
  %i.t = icmp eq i64 %i.c, %1
  br i1 %i.t, label %._crit_edge26, label %.lr.ph25

.lr.ph25:                                         ; preds = %.body, %bb.g
  %.sroa.0.124 = phi i64 [ %i.r, %bb.g ], [ %i.c, %.body ] ; 2 uses
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.124 ; 2 uses
  %.val = load ptr, ptr %i.u, align 8
  %i.v = getelementptr i8, ptr %i.u, i64 8
  %.val7 = load ptr, ptr %i.v, align 8, !nonnull !3, !align !51, !noundef !3
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsC8CapfvpQ1_5salsa10ingredient10IngredientEL_EEB1e_(ptr %.val, ptr nonnull %.val7) #21
          to label %bb.g unwind label %bb.h

._crit_edge26:                                    ; preds = %bb.g, %.body
  resume { ptr, i32 } %i.k

bb.h:                                             ; preds = %.lr.ph25
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable14driftsort_mainNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSBZ_7sort_byNCINvMs1_B11_NtB11_5Zalsa3newNtNtB13_13database_impl12DatabaseImplE0E0INtNtB1K_3vec3VecBZ_EEB13_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 230584300921369396) %1, ptr noalias noundef align 8 dereferenceable(8) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [4096 x i8], align 8              ; 3 uses
  %i.d = lshr i64 %1, 1
  %i.e = sub nuw nsw i64 %1, %i.d
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %1, i64 200000)
  %.sroa.0.0.i8 = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i, i64 %i.e) ; 2 uses
  %.sroa.0.0.i9 = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i8, i64 48) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = icmp samesign ugt i64 %.sroa.0.0.i8, 102 ; 3 uses
  br i1 %i.f, label %.noexc, label %bb.d

.noexc:                                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !157
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsC8CapfvpQ1_5salsa(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 103, 0) %.sroa.0.0.i9, i1 noundef zeroext false, i64 noundef 8, i64 noundef 40)
  %i.g = load i64, ptr %i.a, align 8, !range !160, !noalias !157, !noundef !3
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !161, !noalias !157, !noundef !3 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.h, label %.noexc10, label %bb.c, !prof !13

.noexc10:                                         ; preds = %.noexc
  %i.l = load i64, ptr %i.k, align 8, !noalias !157
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.l) #22
  unreachable

bb.b:                                             ; preds = %bb.d
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br i1 %i.f, label %bb.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarEEB1b_.exit

bb.c:                                             ; preds = %.noexc
  %i.m = load ptr, ptr %i.k, align 8, !noalias !157, !nonnull !3, !noundef !3 ; 2 uses
  %i.n = icmp ule i64 %.sroa.0.0.i9, %i.j
  tail call void @llvm.assume(i1 %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !157
  store i64 %i.j, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.m, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.4.0 = phi i64 [ 102, %bb.a ], [ %i.j, %bb.c ]
  %.pn18 = phi ptr [ %i.c, %bb.a ], [ %i.m, %bb.c ]
  %i.o = icmp samesign ult i64 %1, 65
  invoke void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift4sortNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSBW_7sort_byNCINvMs1_BY_NtBY_5Zalsa3newNtNtB10_13database_impl12DatabaseImplE0E0EB10_(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %.pn18, i64 noundef %.sroa.4.0, i1 noundef zeroext %i.o, ptr noalias noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.e unwind label %bb.b

bb.e:                                             ; preds = %bb.d
  br i1 %i.f, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.g:                                             ; preds = %bb.e
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %bb.f

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarEEB1b_.exit: ; preds = %bb.h, %bb.b
  resume { ptr, i32 } %lpad.thr_comm.split-lp

bb.h:                                             ; preds = %bb.b
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarEEB1b_.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native5eager7destroyINtNtCs4NRVxsYgnAr_4core4cell4CellINtNtB1a_6option6OptionTINtNtCsffXo9NmvYC7_8indexmap3set8IndexSetNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeINtNtB1a_4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEEINtNtNtNtBa_11collections4hash3set7HashSetNtNtB2K_3key16DatabaseKeyIndexB3q_EEEEEB2K_(ptr noundef initializes((88, 89)) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 2, ptr %i.a, align 1
  %i.b = load i64, ptr %0, align 8, !range !162, !alias.scope !163, !noundef !3
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %_RINvNtNtCs2AWtUsOyxgP_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native5eager7destroyINtNtCs4NRVxsYgnAr_4core4cell4CellINtNtB1E_6option6OptionTINtNtCsffXo9NmvYC7_8indexmap3set8IndexSetNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeINtNtB1E_4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEEINtNtNtNtB6_11collections4hash3set7HashSetNtNtB3e_3key16DatabaseKeyIndexB3U_EEEEE0EB3e_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  invoke void @_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tablejNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalECsC8CapfvpQ1_5salsa(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef 8, i64 noundef 16)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsffXo9NmvYC7_8indexmap3map8IndexMapNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuINtNtB4_4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEEEB1k_.exit.i.i.i.i.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1m_(ptr noalias noundef nonnull align 8 dereferenceable(88) %0)
          to label %.body.i.i.i.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsffXo9NmvYC7_8indexmap3map8IndexMapNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuINtNtB4_4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEEEB1k_.exit.i.i.i.i.i.i.i: ; preds = %bb.b
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1m_(ptr noalias noundef nonnull align 8 dereferenceable(88) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTINtNtCsffXo9NmvYC7_8indexmap3set8IndexSetNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeINtNtB4_4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEEINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set7HashSetNtNtB1l_3key16DatabaseKeyIndexB21_EEEB1l_.exit.i.i.i.i.i unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsffXo9NmvYC7_8indexmap3map8IndexMapNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuINtNtB4_4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEEEB1k_.exit.i.i.i.i.i.i.i
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body.i.i.i.i.i.i

.body.i.i.i.i.i.i:                                ; preds = %bb.e, %bb.c
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBT_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %.body.i unwind label %bb.f

bb.f:                                             ; preds = %.body.i.i.i.i.i.i
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTINtNtCsffXo9NmvYC7_8indexmap3set8IndexSetNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeINtNtB4_4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEEINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set7HashSetNtNtB1l_3key16DatabaseKeyIndexB21_EEEB1l_.exit.i.i.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsffXo9NmvYC7_8indexmap3map8IndexMapNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuINtNtB4_4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEEEB1k_.exit.i.i.i.i.i.i.i
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBT_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %_RINvNtNtCs2AWtUsOyxgP_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native5eager7destroyINtNtCs4NRVxsYgnAr_4core4cell4CellINtNtB1E_6option6OptionTINtNtCsffXo9NmvYC7_8indexmap3set8IndexSetNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeINtNtB1E_4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEEINtNtNtNtB6_11collections4hash3set7HashSetNtNtB3e_3key16DatabaseKeyIndexB3U_EEEEE0EB3e_.exit unwind label %bb.g

bb.g:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTINtNtCsffXo9NmvYC7_8indexmap3set8IndexSetNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeINtNtB4_4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEEINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set7HashSetNtNtB1l_3key16DatabaseKeyIndexB21_EEEB1l_.exit.i.i.i.i.i
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body.i

.body.i:                                          ; preds = %bb.g, %.body.i.i.i.i.i.i
  invoke fastcc void @_RNvXNvNtNtCs2AWtUsOyxgP_3std3sys12thread_local20abort_on_dtor_unwindNtB2_15DtorUnwindGuardNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop()
          to label %.noexc1.i unwind label %bb.h

.noexc1.i:                                        ; preds = %.body.i
  unreachable

bb.h:                                             ; preds = %.body.i
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtNtCs2AWtUsOyxgP_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native5eager7destroyINtNtCs4NRVxsYgnAr_4core4cell4CellINtNtB1E_6option6OptionTINtNtCsffXo9NmvYC7_8indexmap3set8IndexSetNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeINtNtB1E_4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEEINtNtNtNtB6_11collections4hash3set7HashSetNtNtB3e_3key16DatabaseKeyIndexB3U_EEEEE0EB3e_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTINtNtCsffXo9NmvYC7_8indexmap3set8IndexSetNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeINtNtB4_4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEEINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set7HashSetNtNtB1l_3key16DatabaseKeyIndexB21_EEEB1l_.exit.i.i.i.i.i, %bb.a
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native5eager7destroyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateECsC8CapfvpQ1_5salsa(ptr noundef initializes((40, 41)) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 2, ptr %i.a, align 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !170)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !173)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !176)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !179)
  %i.c = load i64, ptr %i.b, align 8, !range !182, !alias.scope !183, !noundef !3 ; 2 uses
  %i.d = icmp eq i64 %i.c, 2
  br i1 %i.d, label %_RINvNtNtCs2AWtUsOyxgP_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native5eager7destroyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE0ECsC8CapfvpQ1_5salsa.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !184)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !187)
  %1 = icmp eq i64 %i.c, 0
  br i1 %1, label %_RINvNtNtCs2AWtUsOyxgP_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native5eager7destroyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE0ECsC8CapfvpQ1_5salsa.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !190)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !193)
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !196, !nonnull !3, !noundef !3
  %i.g = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !196
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.d, label %_RINvNtNtCs2AWtUsOyxgP_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native5eager7destroyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE0ECsC8CapfvpQ1_5salsa.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtNtCsjvLTWb8VeNU_12tracing_core10subscriber10SubscriberNtNtCs4NRVxsYgnAr_4core6marker4SendNtB1C_4SyncEL_E9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %_RINvNtNtCs2AWtUsOyxgP_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native5eager7destroyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE0ECsC8CapfvpQ1_5salsa.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke fastcc void @_RNvXNvNtNtCs2AWtUsOyxgP_3std3sys12thread_local20abort_on_dtor_unwindNtB2_15DtorUnwindGuardNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop()
          to label %.noexc1.i unwind label %bb.f

.noexc1.i:                                        ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtNtCs2AWtUsOyxgP_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native5eager7destroyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE0ECsC8CapfvpQ1_5salsa.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort8heapsortTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1a_2id2IdENCINvMB8_SB15_16sort_unstable_byNCNvMs1_B18_NtB18_11IdentityMap5drain0E0EB1a_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = lshr i64 %1, 1
  %i.c = add nuw nsw i64 %i.b, %1                 ; 2 uses
  %.not17 = icmp eq i64 %i.c, 0
  br i1 %.not17, label %._crit_edge, label %.lr.ph19

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort9sift_downTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1b_2id2IdENCINvMB8_SB16_16sort_unstable_byNCNvMs1_B19_NtB19_11IdentityMap5drain0E0EB1b_.exit, %bb.a
  ret void

.lr.ph19:                                         ; preds = %bb.a, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort9sift_downTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1b_2id2IdENCINvMB8_SB16_16sort_unstable_byNCNvMs1_B19_NtB19_11IdentityMap5drain0E0EB1b_.exit
  %.sroa.2.018 = phi i64 [ %i.d, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort9sift_downTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1b_2id2IdENCINvMB8_SB16_16sort_unstable_byNCNvMs1_B19_NtB19_11IdentityMap5drain0E0EB1b_.exit ], [ %i.c, %bb.a ]
  %i.d = add nsw i64 %.sroa.2.018, -1             ; 6 uses
  %.not9 = icmp ult i64 %i.d, %1
  br i1 %.not9, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph19
  %i.e = sub nuw nsw i64 %i.d, %1
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph19
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.d ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.04.0 = phi i64 [ %i.e, %bb.b ], [ 0, %bb.c ] ; 3 uses
  %.sroa.0.0.i11 = tail call noundef i64 @llvm.umin.i64(i64 %1, i64 %i.d) ; 4 uses
  %i.g = icmp ule i64 %.sroa.04.0, %.sroa.0.0.i11
  tail call void @llvm.assume(i1 %i.g)
  %i.h = shl nuw nsw i64 %.sroa.04.0, 1           ; 2 uses
  %i.i = or disjoint i64 %i.h, 1                  ; 2 uses
  %.not.i15 = icmp samesign ult i64 %i.i, %.sroa.0.0.i11
  br i1 %.not.i15, label %.lr.ph, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort9sift_downTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1b_2id2IdENCINvMB8_SB16_16sort_unstable_byNCNvMs1_B19_NtB19_11IdentityMap5drain0E0EB1b_.exit

.lr.ph:                                           ; preds = %bb.d, %bb.h
  %i.j = phi i64 [ %i.bc, %bb.h ], [ %i.i, %bb.d ] ; 3 uses
  %i.k = phi i64 [ %i.bb, %bb.h ], [ %i.h, %bb.d ]
  %.sroa.0.0.i16 = phi i64 [ %.sroa.04.0.i, %bb.h ], [ %.sroa.04.0, %bb.d ]
  %i.l = add nuw nsw i64 %i.k, 2                  ; 2 uses
  %i.m = icmp samesign ult i64 %i.l, %.sroa.0.0.i11
  br i1 %i.m, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.j ; 3 uses
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.l ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !197)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !200)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !202)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !205)
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.q = load i32, ptr %i.p, align 8, !alias.scope !207, !noalias !208, !noundef !3 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.s = load i32, ptr %i.r, align 8, !alias.scope !208, !noalias !207, !noundef !3 ; 2 uses
  %i.t = icmp eq i32 %i.q, %i.s
  %i.u = icmp ult i32 %i.q, %i.s
  br i1 %i.t, label %bb.f, label %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 20
  %i.w = load i32, ptr %i.v, align 4, !alias.scope !208, !noalias !207, !noundef !3
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 20
  %i.y = load i32, ptr %i.x, align 4, !alias.scope !207, !noalias !208, !noundef !3
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.aa = load i32, ptr %i.z, align 8, !range !209, !alias.scope !208, !noalias !207, !noundef !3 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.ac = load i32, ptr %i.ab, align 8, !range !209, !alias.scope !207, !noalias !208, !noundef !3 ; 2 uses
  %i.ad = icmp eq i32 %i.ac, %i.aa
  %i.ae = icmp ult i32 %i.ac, %i.aa
  %i.af = icmp ult i32 %i.y, %i.w
  %spec.select.i = select i1 %i.ad, i1 %i.af, i1 %i.ae
  br label %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit

_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit: ; preds = %bb.e, %bb.f
  %.sroa.0.0.i.i = phi i1 [ %i.u, %bb.e ], [ %spec.select.i, %bb.f ]
  %i.ag = zext i1 %.sroa.0.0.i.i to i64
  %i.ah = add nuw nsw i64 %i.j, %i.ag
  br label %bb.g

bb.g:                                             ; preds = %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit, %.lr.ph
  %.sroa.04.0.i = phi i64 [ %i.ah, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit ], [ %i.j, %.lr.ph ] ; 3 uses
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.0.0.i16 ; 4 uses
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.04.0.i ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !210)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !213)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !215)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !218)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.al = load i32, ptr %i.ak, align 8, !alias.scope !220, !noalias !221, !noundef !3 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.an = load i32, ptr %i.am, align 8, !alias.scope !221, !noalias !220, !noundef !3 ; 2 uses
  %i.ao = icmp eq i32 %i.al, %i.an
  br i1 %i.ao, label %.split, label %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit14

.split:                                           ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 20
  %i.aq = load i32, ptr %i.ap, align 4, !alias.scope !221, !noalias !220, !noundef !3
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ai, i64 20
  %i.as = load i32, ptr %i.ar, align 4, !alias.scope !220, !noalias !221, !noundef !3
  %i.at = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.au = load i32, ptr %i.at, align 8, !range !209, !alias.scope !221, !noalias !220, !noundef !3 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.aw = load i32, ptr %i.av, align 8, !range !209, !alias.scope !220, !noalias !221, !noundef !3 ; 2 uses
  %i.ax = icmp eq i32 %i.aw, %i.au
  %i.ay = icmp ult i32 %i.aw, %i.au
  %i.az = icmp ult i32 %i.as, %i.aq
  %spec.select.i13 = select i1 %i.ax, i1 %i.az, i1 %i.ay
  br i1 %spec.select.i13, label %bb.h, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort9sift_downTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1b_2id2IdENCINvMB8_SB16_16sort_unstable_byNCNvMs1_B19_NtB19_11IdentityMap5drain0E0EB1b_.exit

_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit14: ; preds = %bb.g
  %i.ba = icmp ult i32 %i.al, %i.an
  br i1 %i.ba, label %bb.h, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort9sift_downTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1b_2id2IdENCINvMB8_SB16_16sort_unstable_byNCNvMs1_B19_NtB19_11IdentityMap5drain0E0EB1b_.exit

bb.h:                                             ; preds = %.split, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit14
  tail call void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsC8CapfvpQ1_5salsa(ptr noundef nonnull %i.ai, ptr noundef nonnull %i.aj, i64 noundef 3)
  %i.bb = shl nuw nsw i64 %.sroa.04.0.i, 1        ; 2 uses
  %i.bc = or disjoint i64 %i.bb, 1                ; 2 uses
  %.not.i = icmp samesign ult i64 %i.bc, %.sroa.0.0.i11
  br i1 %.not.i, label %.lr.ph, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort9sift_downTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1b_2id2IdENCINvMB8_SB16_16sort_unstable_byNCNvMs1_B19_NtB19_11IdentityMap5drain0E0EB1b_.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort9sift_downTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1b_2id2IdENCINvMB8_SB16_16sort_unstable_byNCNvMs1_B19_NtB19_11IdentityMap5drain0E0EB1b_.exit: ; preds = %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit14, %bb.h, %.split, %bb.d
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph19
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort8heapsortjNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = lshr i64 %1, 1
  %i.b = add nuw nsw i64 %i.a, %1                 ; 2 uses
  %.not18 = icmp eq i64 %i.b, 0
  br i1 %.not18, label %._crit_edge, label %.lr.ph20

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort9sift_downjNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa.exit, %bb.a
  ret void

.lr.ph20:                                         ; preds = %bb.a, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort9sift_downjNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa.exit
  %.sroa.2.019 = phi i64 [ %i.c, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort9sift_downjNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa.exit ], [ %i.b, %bb.a ]
  %i.c = add nsw i64 %.sroa.2.019, -1             ; 6 uses
  %.not9 = icmp ult i64 %i.c, %1
  br i1 %.not9, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph20
  %i.d = sub nuw nsw i64 %i.c, %1
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph20
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.c ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8
  %i.f = load i64, ptr %i.e, align 8
  store i64 %i.f, ptr %0, align 8
  store i64 %.sroa.0.0.copyload.i, ptr %i.e, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.04.0 = phi i64 [ %i.d, %bb.b ], [ 0, %bb.c ] ; 3 uses
  %.sroa.0.0.i14 = tail call noundef i64 @llvm.umin.i64(i64 %1, i64 %i.c) ; 4 uses
  %i.g = icmp ule i64 %.sroa.04.0, %.sroa.0.0.i14
  tail call void @llvm.assume(i1 %i.g)
  %i.h = shl nuw nsw i64 %.sroa.04.0, 1           ; 2 uses
end_hunk_1
