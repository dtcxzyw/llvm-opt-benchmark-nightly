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
  %i.b = load i64, ptr %i.a, align 8, !noundef !5 ; 8 uses
  %i.c = icmp ult i64 %i.b, 384307168202282326
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp ugt i64 %1, %i.b
  br i1 %i.d, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29)
  %i.e = sub nuw nsw i64 %i.b, %1                 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !29, !nonnull !5, !noundef !5
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %1 ; 2 uses
  store i64 %1, ptr %i.a, align 8, !alias.scope !29
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
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEEB1b_.exit.i.i unwind label %bb.c, !noalias !29

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
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEEB1b_.exit7.i.i unwind label %bb.d, !noalias !29

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEEB1b_.exit7.i.i._crit_edge: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEEB1b_.exit7.i.i, %bb.c
  resume { ptr, i32 } %i.o

bb.d:                                             ; preds = %.lr.ph13
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19, !noalias !29
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.s = sub nuw i64 %1, %i.b                     ; 6 uses
  %i.t = load i64, ptr %0, align 8, !range !6, !alias.scope !30, !noundef !5
  %i.u = sub nsw i64 %i.t, %i.b
  %i.v = icmp ugt i64 %i.s, %i.u
  br i1 %i.v, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecIBu_NtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEE7reserveBL_.exit.thread.i, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecIBu_NtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEE7reserveBL_.exit.i, !prof !7

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecIBu_NtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEE7reserveBL_.exit.thread.i: ; preds = %bb.e
  tail call void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsC8CapfvpQ1_5salsa(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %i.s, i64 noundef 8, i64 noundef 24)
  %i.w = load i64, ptr %i.a, align 8, !alias.scope !31, !noundef !5
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecIBu_NtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEE7reserveBL_.exit.i

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecIBu_NtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEE7reserveBL_.exit.i: ; preds = %bb.e, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecIBu_NtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEE7reserveBL_.exit.thread.i
  %i.x = phi i64 [ %i.w, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecIBu_NtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEE7reserveBL_.exit.thread.i ], [ %i.b, %bb.e ] ; 3 uses
  %.in.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %.in.i, align 8, !alias.scope !31, !nonnull !5, !noundef !5 ; 3 uses
  %xtraiter = and i64 %i.s, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecIBu_NtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEE7reserveBL_.exit.i
  %.sroa.0.0.i.i.i.i.prol = add nsw i64 %i.s, -1
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %i.x ; 3 uses
  store i64 0, ptr %i.z, align 8, !noalias !32
  %.sroa.52.8..sroa_idx.i.i.i.i.prol = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.52.8..sroa_idx.i.i.i.i.prol, align 8, !noalias !32
  %.sroa.63.8..sroa_idx.i.i.i.i.prol = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i64 0, ptr %.sroa.63.8..sroa_idx.i.i.i.i.prol, align 8, !noalias !32
  %i.aa = add i64 %i.x, 1                         ; 2 uses
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecIBu_NtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEE7reserveBL_.exit.i
  %.lcssa.unr = phi i64 [ poison, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecIBu_NtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEE7reserveBL_.exit.i ], [ %i.aa, %.prol.loopexit.unr-lcssa ]
  %.unr = phi i64 [ %i.x, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecIBu_NtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEE7reserveBL_.exit.i ], [ %i.aa, %.prol.loopexit.unr-lcssa ]
  %.sroa.0.0.i.in.i.i.i.unr = phi i64 [ %i.s, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecIBu_NtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEE7reserveBL_.exit.i ], [ %.sroa.0.0.i.i.i.i.prol, %.prol.loopexit.unr-lcssa ]
  %i.ab = icmp eq i64 %i.s, 1
  br i1 %i.ab, label %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecIBw_NtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtNtB1S_7sources11repeat_with10RepeatWithNvMB6_BF_3newEEEBN_.exit, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecIBu_NtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEE7reserveBL_.exit.i.new

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecIBu_NtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEE7reserveBL_.exit.i.new: ; preds = %.prol.loopexit, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecIBu_NtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEE7reserveBL_.exit.i.new
  %i.ac = phi i64 [ %i.ag, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecIBu_NtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEE7reserveBL_.exit.i.new ], [ %.unr, %.prol.loopexit ] ; 3 uses
  %.sroa.0.0.i.in.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i.1, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecIBu_NtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEE7reserveBL_.exit.i.new ], [ %.sroa.0.0.i.in.i.i.i.unr, %.prol.loopexit ]
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %i.ac ; 3 uses
  store i64 0, ptr %i.ad, align 8, !noalias !32
  %.sroa.52.8..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.52.8..sroa_idx.i.i.i.i, align 8, !noalias !32
  %.sroa.63.8..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i64 0, ptr %.sroa.63.8..sroa_idx.i.i.i.i, align 8, !noalias !32
  %.sroa.0.0.i.i.i.i.1 = add i64 %.sroa.0.0.i.in.i.i.i, -2 ; 2 uses
  %i.ae = getelementptr [24 x i8], ptr %i.y, i64 %i.ac ; 3 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 24
  store i64 0, ptr %i.af, align 8, !noalias !32
  %.sroa.52.8..sroa_idx.i.i.i.i.1 = getelementptr i8, ptr %i.ae, i64 32
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.52.8..sroa_idx.i.i.i.i.1, align 8, !noalias !32
  %.sroa.63.8..sroa_idx.i.i.i.i.1 = getelementptr i8, ptr %i.ae, i64 40
  store i64 0, ptr %.sroa.63.8..sroa_idx.i.i.i.i.1, align 8, !noalias !32
  %i.ag = add i64 %i.ac, 2                        ; 2 uses
  %i.ah = icmp eq i64 %.sroa.0.0.i.i.i.i.1, 0
  br i1 %i.ah, label %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecIBw_NtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtNtB1S_7sources11repeat_with10RepeatWithNvMB6_BF_3newEEEBN_.exit, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecIBu_NtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEE7reserveBL_.exit.i.new

_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecIBw_NtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtNtB1S_7sources11repeat_with10RepeatWithNvMB6_BF_3newEEEBN_.exit: ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecIBu_NtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEE7reserveBL_.exit.i.new, %.prol.loopexit
  %.lcssa = phi i64 [ %.lcssa.unr, %.prol.loopexit ], [ %i.ag, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecIBu_NtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEE7reserveBL_.exit.i.new ]
  store i64 %.lcssa, ptr %i.a, align 8, !alias.scope !31, !noalias !33
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecIBu_NtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEE8truncateBL_.exit

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecIBu_NtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEE8truncateBL_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEEB1b_.exit.i.i, %bb.b, %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecIBw_NtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtNtB1S_7sources11repeat_with10RepeatWithNvMB6_BF_3newEEEBN_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuEE5drainINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB1f_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noalias noundef align 8 dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !5 ; 3 uses
  %i.c = icmp ult i64 %i.b, 384307168202282326
  tail call void @llvm.assume(i1 %i.c)
  %i.d = tail call { i64, i64 } @_RINvNtNtCs4NRVxsYgnAr_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECsC8CapfvpQ1_5salsa(i64 noundef %2, i64 noundef %3, i64 noundef %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 3 uses
  store i64 %i.e, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !5, !noundef !5 ; 2 uses
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
  %i.b = load i64, ptr %i.a, align 8, !noundef !5 ; 8 uses
  %i.c = icmp ult i64 %i.b, 192153584101141163
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp ugt i64 %1, %i.b
  br i1 %i.d, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51)
  %i.e = sub nuw nsw i64 %i.b, %1                 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !51, !nonnull !5, !noundef !5
  %i.h = getelementptr inbounds nuw [48 x i8], ptr %i.g, i64 %1 ; 2 uses
  store i64 %1, ptr %i.a, align 8, !alias.scope !51
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
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs36qfJazsBC0_6boxcar3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterEEB1l_.exit.i.i unwind label %bb.c, !noalias !51

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
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs36qfJazsBC0_6boxcar3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterEEB1l_.exit7.i.i unwind label %bb.d, !noalias !51

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs36qfJazsBC0_6boxcar3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterEEB1l_.exit7.i.i._crit_edge: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs36qfJazsBC0_6boxcar3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterEEB1l_.exit7.i.i, %bb.c
  resume { ptr, i32 } %i.o

bb.d:                                             ; preds = %.lr.ph13
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19, !noalias !51
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.s = sub nuw i64 %1, %i.b                     ; 6 uses
  %i.t = load i64, ptr %0, align 8, !range !6, !alias.scope !52, !noundef !5
  %i.u = sub nsw i64 %i.t, %i.b
  %i.v = icmp ugt i64 %i.s, %i.u
  br i1 %i.v, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtNtCs36qfJazsBC0_6boxcar3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterEE7reserveB1n_.exit.thread.i, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtNtCs36qfJazsBC0_6boxcar3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterEE7reserveB1n_.exit.i, !prof !7

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtNtCs36qfJazsBC0_6boxcar3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterEE7reserveB1n_.exit.thread.i: ; preds = %bb.e
  tail call void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsC8CapfvpQ1_5salsa(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %i.s, i64 noundef 8, i64 noundef 48)
  %i.w = load i64, ptr %i.a, align 8, !alias.scope !53, !noundef !5
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtNtCs36qfJazsBC0_6boxcar3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterEE7reserveB1n_.exit.i

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtNtCs36qfJazsBC0_6boxcar3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterEE7reserveB1n_.exit.i: ; preds = %bb.e, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtNtCs36qfJazsBC0_6boxcar3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterEE7reserveB1n_.exit.thread.i
  %i.x = phi i64 [ %i.w, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtNtCs36qfJazsBC0_6boxcar3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterEE7reserveB1n_.exit.thread.i ], [ %i.b, %bb.e ] ; 2 uses
  %.in.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %.in.i, align 8, !alias.scope !53, !nonnull !5, !noundef !5 ; 5 uses
  %2 = add i64 %i.s, -1
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
  store i8 0, ptr %.sroa.52.8..sroa_idx.i.i.i.i.prol, align 8, !noalias !54
  %i.ab = add i64 %i.z, 1                         ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !50

.prol.loopexit:                                   ; preds = %.prol.preheader, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtNtCs36qfJazsBC0_6boxcar3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterEE7reserveB1n_.exit.i
  %.lcssa.unr = phi i64 [ poison, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtNtCs36qfJazsBC0_6boxcar3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterEE7reserveB1n_.exit.i ], [ %i.ab, %.prol.preheader ]
  %.unr = phi i64 [ %i.x, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtNtCs36qfJazsBC0_6boxcar3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterEE7reserveB1n_.exit.i ], [ %i.ab, %.prol.preheader ]
  %.sroa.0.0.i.in.i.i.i.unr = phi i64 [ %i.s, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtNtCs36qfJazsBC0_6boxcar3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterEE7reserveB1n_.exit.i ], [ %.sroa.0.0.i.i.i.i.prol, %.prol.preheader ]
  %3 = icmp ult i64 %2, 3
  br i1 %3, label %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecINtNtNtCs36qfJazsBC0_6boxcar3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterEE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtNtB2p_7sources11repeat_with10RepeatWithNvYBF_NtNtB2r_7default7Default7defaultEEEB1p_.exit, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtNtCs36qfJazsBC0_6boxcar3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterEE7reserveB1n_.exit.i.new

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtNtCs36qfJazsBC0_6boxcar3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterEE7reserveB1n_.exit.i.new: ; preds = %.prol.loopexit, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtNtCs36qfJazsBC0_6boxcar3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterEE7reserveB1n_.exit.i.new
  %i.ac = phi i64 [ %i.ah, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtNtCs36qfJazsBC0_6boxcar3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterEE7reserveB1n_.exit.i.new ], [ %.unr, %.prol.loopexit ] ; 5 uses
  %.sroa.0.0.i.in.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i.3, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtNtCs36qfJazsBC0_6boxcar3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterEE7reserveB1n_.exit.i.new ], [ %.sroa.0.0.i.in.i.i.i.unr, %.prol.loopexit ]
  %i.ad = getelementptr inbounds nuw [48 x i8], ptr %i.y, i64 %i.ac
  %.sroa.52.8..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  store i8 0, ptr %.sroa.52.8..sroa_idx.i.i.i.i, align 8, !noalias !54
  %i.ae = getelementptr [48 x i8], ptr %i.y, i64 %i.ac
  %.sroa.52.8..sroa_idx.i.i.i.i.1 = getelementptr i8, ptr %i.ae, i64 88
  store i8 0, ptr %.sroa.52.8..sroa_idx.i.i.i.i.1, align 8, !noalias !54
  %i.af = getelementptr [48 x i8], ptr %i.y, i64 %i.ac
  %.sroa.52.8..sroa_idx.i.i.i.i.2 = getelementptr i8, ptr %i.af, i64 136
  store i8 0, ptr %.sroa.52.8..sroa_idx.i.i.i.i.2, align 8, !noalias !54
  %.sroa.0.0.i.i.i.i.3 = add i64 %.sroa.0.0.i.in.i.i.i, -4 ; 2 uses
  %i.ag = getelementptr [48 x i8], ptr %i.y, i64 %i.ac
  %.sroa.52.8..sroa_idx.i.i.i.i.3 = getelementptr i8, ptr %i.ag, i64 184
  store i8 0, ptr %.sroa.52.8..sroa_idx.i.i.i.i.3, align 8, !noalias !54
  %i.ah = add i64 %i.ac, 4                        ; 2 uses
  %i.ai = icmp eq i64 %.sroa.0.0.i.i.i.i.3, 0
  br i1 %i.ai, label %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecINtNtNtCs36qfJazsBC0_6boxcar3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterEE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtNtB2p_7sources11repeat_with10RepeatWithNvYBF_NtNtB2r_7default7Default7defaultEEEB1p_.exit, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtNtCs36qfJazsBC0_6boxcar3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterEE7reserveB1n_.exit.i.new

_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecINtNtNtCs36qfJazsBC0_6boxcar3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterEE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtNtB2p_7sources11repeat_with10RepeatWithNvYBF_NtNtB2r_7default7Default7defaultEEEB1p_.exit: ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtNtCs36qfJazsBC0_6boxcar3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterEE7reserveB1n_.exit.i.new, %.prol.loopexit
  %.lcssa = phi i64 [ %.lcssa.unr, %.prol.loopexit ], [ %i.ah, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtNtCs36qfJazsBC0_6boxcar3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterEE7reserveB1n_.exit.i.new ]
  store i64 %.lcssa, ptr %i.a, align 8, !alias.scope !53, !noalias !56
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtNtCs36qfJazsBC0_6boxcar3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterEE8truncateB1n_.exit

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtNtCs36qfJazsBC0_6boxcar3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterEE8truncateB1n_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs36qfJazsBC0_6boxcar3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterEEB1l_.exit.i.i, %bb.b, %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecINtNtNtCs36qfJazsBC0_6boxcar3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterEE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtNtB2p_7sources11repeat_with10RepeatWithNvYBF_NtNtB2r_7default7Default7defaultEEEB1p_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsC8CapfvpQ1_5salsa(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %.0.val, null
  br i1 %i.a, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsC8CapfvpQ1_5salsa.exit, label %bb.b

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsC8CapfvpQ1_5salsa.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCs2AWtUsOyxgP_3std2io5error6CustomEECsC8CapfvpQ1_5salsa.exit.i.i.i.i, %bb.c, %bb.b, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %.0.val to i64              ; 2 uses
  %i.c = and i64 %i.b, 3
  switch i64 %i.c, label %default.unreachable [
    i64 2, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsC8CapfvpQ1_5salsa.exit
    i64 3, label %bb.c
    i64 0, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsC8CapfvpQ1_5salsa.exit
    i64 1, label %bb.d
  ], !prof !57

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.d = icmp ult ptr %.0.val, inttoptr (i64 180388626432 to ptr)
  %i.e = and i64 %i.b, 1095216660480
  %i.f = icmp ne i64 %i.e, 1095216660480
  tail call void @llvm.assume(i1 %i.d)
  tail call void @llvm.assume(i1 %i.f)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsC8CapfvpQ1_5salsa.exit

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %.0.val, i64 -1    ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %.val.i.i.i.i.i = load ptr, ptr %i.g, align 8   ; 5 uses
  %i.h = getelementptr i8, ptr %.0.val, i64 7
  %.val1.i.i.i.i.i = load ptr, ptr %i.h, align 8, !nonnull !5, !align !8, !noundef !5 ; 5 uses
  %i.i = load ptr, ptr %.val1.i.i.i.i.i, align 8, !invariant.load !5 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ]
  invoke void %i.i(ptr noundef nonnull %.val.i.i.i.i.i)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !6, !invariant.load !5 ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCs2AWtUsOyxgP_3std2io5error6CustomEECsC8CapfvpQ1_5salsa.exit.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 16
  %i.n = load i64, ptr %i.m, align 8, !range !9, !invariant.load !5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.k, i64 noundef range(i64 1, 536870913) %i.n) #20
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCs2AWtUsOyxgP_3std2io5error6CustomEECsC8CapfvpQ1_5salsa.exit.i.i.i.i

bb.h:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 8
  %i.q = load i64, ptr %i.p, align 8, !range !6, !invariant.load !5 ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 16
  %i.t = load i64, ptr %i.s, align 8, !range !9, !invariant.load !5
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.q, i64 noundef range(i64 1, 536870913) %i.t) #20
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.g, i64 noundef 24, i64 noundef 8) #20
  resume { ptr, i32 } %i.o

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCs2AWtUsOyxgP_3std2io5error6CustomEECsC8CapfvpQ1_5salsa.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.g, i64 noundef 24, i64 noundef 8) #20
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsC8CapfvpQ1_5salsa.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtCsksLH4kKx6iM_15crossbeam_utils12cache_padded11CachePaddedINtNtCsUsIPftNhTL_8lock_api5mutex5MutexNtNtCscHkFMvyoPQb_11parking_lot9raw_mutex8RawMutexNtNtCsC8CapfvpQ1_5salsa8interned15IngredientShardEEEEB3D_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !5 ; 4 uses
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtCsksLH4kKx6iM_15crossbeam_utils12cache_padded11CachePaddedINtNtCsUsIPftNhTL_8lock_api5mutex5MutexNtNtCscHkFMvyoPQb_11parking_lot9raw_mutex8RawMutexNtNtCsC8CapfvpQ1_5salsa8interned15IngredientShardEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB3a_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsksLH4kKx6iM_15crossbeam_utils12cache_padded11CachePaddedINtNtCsUsIPftNhTL_8lock_api5mutex5MutexNtNtCscHkFMvyoPQb_11parking_lot9raw_mutex8RawMutexNtNtCsC8CapfvpQ1_5salsa8interned15IngredientShardEEEB37_.exit.i.i
  %.sroa.0.08.i.i = phi i64 [ %i.e, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsksLH4kKx6iM_15crossbeam_utils12cache_padded11CachePaddedINtNtCsUsIPftNhTL_8lock_api5mutex5MutexNtNtCscHkFMvyoPQb_11parking_lot9raw_mutex8RawMutexNtNtCsC8CapfvpQ1_5salsa8interned15IngredientShardEEEB37_.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [128 x i8], ptr %.val, i64 %.sroa.0.08.i.i ; 2 uses
  %i.e = add nuw nsw i64 %.sroa.0.08.i.i, 1       ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 5 uses
  invoke void @_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableNtNtCsC8CapfvpQ1_5salsa8interned8ValueKeyNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalEB1g_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef 8, i64 noundef 16)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown5table9HashTableNtNtCsC8CapfvpQ1_5salsa8interned8ValueKeyEEB1o_.exit.i.i.i.i.i.i unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82)
  %i.i = load ptr, ptr %i.g, align 8, !alias.scope !83, !noundef !5 ; 2 uses
  %.not2.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.i, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false), !alias.scope !83
  br i1 %.not2.i.i.i.i.i.i.i.i.i, label %.body.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.b, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.sroa.0.03.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.val.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.i, %bb.b ] ; 2 uses
  %.sroa.0.0.val.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.0.03.i.i.i.i.i.i.i.i.i, align 8, !noalias !84, !noundef !5 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.0.03.i.i.i.i.i.i.i.i.i, align 8, !noalias !84
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.0.0.val.i.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.body.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown5table9HashTableNtNtCsC8CapfvpQ1_5salsa8interned8ValueKeyEEB1o_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !87)
  %i.j = load ptr, ptr %i.g, align 8, !alias.scope !88, !noundef !5 ; 2 uses
  %.not2.i.i.i1.i.i.i.i.i.i = icmp eq ptr %i.j, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false), !alias.scope !88
  br i1 %.not2.i.i.i1.i.i.i.i.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsksLH4kKx6iM_15crossbeam_utils12cache_padded11CachePaddedINtNtCsUsIPftNhTL_8lock_api5mutex5MutexNtNtCscHkFMvyoPQb_11parking_lot9raw_mutex8RawMutexNtNtCsC8CapfvpQ1_5salsa8interned15IngredientShardEEEB37_.exit.i.i, label %.lr.ph.i.i.i2.i.i.i.i.i.i

.lr.ph.i.i.i2.i.i.i.i.i.i:                        ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown5table9HashTableNtNtCsC8CapfvpQ1_5salsa8interned8ValueKeyEEB1o_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i2.i.i.i.i.i.i
  %.sroa.0.03.i.i.i3.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.val.i.i.i4.i.i.i.i.i.i, %.lr.ph.i.i.i2.i.i.i.i.i.i ], [ %i.j, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown5table9HashTableNtNtCsC8CapfvpQ1_5salsa8interned8ValueKeyEEB1o_.exit.i.i.i.i.i.i ] ; 2 uses
  %.sroa.0.0.val.i.i.i4.i.i.i.i.i.i = load ptr, ptr %.sroa.0.03.i.i.i3.i.i.i.i.i.i, align 8, !noalias !89, !noundef !5 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.0.03.i.i.i3.i.i.i.i.i.i, align 8, !noalias !89
  %.not.i.i.i5.i.i.i.i.i.i = icmp eq ptr %.sroa.0.0.val.i.i.i4.i.i.i.i.i.i, null
  br i1 %.not.i.i.i5.i.i.i.i.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsksLH4kKx6iM_15crossbeam_utils12cache_padded11CachePaddedINtNtCsUsIPftNhTL_8lock_api5mutex5MutexNtNtCscHkFMvyoPQb_11parking_lot9raw_mutex8RawMutexNtNtCsC8CapfvpQ1_5salsa8interned15IngredientShardEEEB37_.exit.i.i, label %.lr.ph.i.i.i2.i.i.i.i.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsksLH4kKx6iM_15crossbeam_utils12cache_padded11CachePaddedINtNtCsUsIPftNhTL_8lock_api5mutex5MutexNtNtCscHkFMvyoPQb_11parking_lot9raw_mutex8RawMutexNtNtCsC8CapfvpQ1_5salsa8interned15IngredientShardEEEB37_.exit.i.i: ; preds = %.lr.ph.i.i.i2.i.i.i.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown5table9HashTableNtNtCsC8CapfvpQ1_5salsa8interned8ValueKeyEEB1o_.exit.i.i.i.i.i.i
  %i.k = icmp eq i64 %i.e, %.val1
  br i1 %i.k, label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtCsksLH4kKx6iM_15crossbeam_utils12cache_padded11CachePaddedINtNtCsUsIPftNhTL_8lock_api5mutex5MutexNtNtCscHkFMvyoPQb_11parking_lot9raw_mutex8RawMutexNtNtCsC8CapfvpQ1_5salsa8interned15IngredientShardEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB3a_.exit, label %.lr.ph.i.i

bb.c:                                             ; preds = %.lr.ph
  %i.l = add i64 %.sroa.0.1.i.i16, 1              ; 2 uses
  %i.m = icmp eq i64 %i.l, %.val1
  br i1 %i.m, label %.body, label %.lr.ph

.body.i.i:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %bb.b
  %i.n = icmp eq i64 %i.e, %.val1
  br i1 %i.n, label %.body, label %.lr.ph

.lr.ph:                                           ; preds = %.body.i.i, %bb.c
  %.sroa.0.1.i.i16 = phi i64 [ %i.l, %bb.c ], [ %i.e, %.body.i.i ] ; 2 uses
  %i.o = getelementptr inbounds nuw [128 x i8], ptr %.val, i64 %.sroa.0.1.i.i16
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsksLH4kKx6iM_15crossbeam_utils12cache_padded11CachePaddedINtNtCsUsIPftNhTL_8lock_api5mutex5MutexNtNtCscHkFMvyoPQb_11parking_lot9raw_mutex8RawMutexNtNtCsC8CapfvpQ1_5salsa8interned15IngredientShardEEEB37_(ptr noalias noundef align 128 dereferenceable(128) %i.o) #21
          to label %bb.c unwind label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable

.body:                                            ; preds = %bb.c, %.body.i.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCsksLH4kKx6iM_15crossbeam_utils12cache_padded11CachePaddedINtNtCsUsIPftNhTL_8lock_api5mutex5MutexNtNtCscHkFMvyoPQb_11parking_lot9raw_mutex8RawMutexNtNtCsC8CapfvpQ1_5salsa8interned15IngredientShardEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB3h_(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecINtNtCsksLH4kKx6iM_15crossbeam_utils12cache_padded11CachePaddedINtNtCsUsIPftNhTL_8lock_api5mutex5MutexNtNtCscHkFMvyoPQb_11parking_lot9raw_mutex8RawMutexNtNtCsC8CapfvpQ1_5salsa8interned15IngredientShardEEEEB3K_.exit unwind label %bb.e

_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtCsksLH4kKx6iM_15crossbeam_utils12cache_padded11CachePaddedINtNtCsUsIPftNhTL_8lock_api5mutex5MutexNtNtCscHkFMvyoPQb_11parking_lot9raw_mutex8RawMutexNtNtCsC8CapfvpQ1_5salsa8interned15IngredientShardEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB3a_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsksLH4kKx6iM_15crossbeam_utils12cache_padded11CachePaddedINtNtCsUsIPftNhTL_8lock_api5mutex5MutexNtNtCscHkFMvyoPQb_11parking_lot9raw_mutex8RawMutexNtNtCsC8CapfvpQ1_5salsa8interned15IngredientShardEEEB37_.exit.i.i, %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCsksLH4kKx6iM_15crossbeam_utils12cache_padded11CachePaddedINtNtCsUsIPftNhTL_8lock_api5mutex5MutexNtNtCscHkFMvyoPQb_11parking_lot9raw_mutex8RawMutexNtNtCsC8CapfvpQ1_5salsa8interned15IngredientShardEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB3h_(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.e:                                             ; preds = %.body
  %i.q = landingpad { ptr, i32 }
end_hunk_0
