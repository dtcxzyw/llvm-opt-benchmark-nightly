Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/insta-7da102944296d43e.insta.f5d9918fc0a28c4d-cgu.13?download=true
inline.NumInlined: 648
inline.NumDeleted: 334
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [17 x i8] c"capacity overflow", align 1
@1 = private unnamed_addr constant [77 x i8] c"/rustc/8bab26f4f68e0e26f0bb7960be334d5b520ea452/library/alloc/src/vec/mod.rs\00", align 1
@2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"L\00\00\00\00\00\00\00\EC\0F\00\00\0D\00\00\00" }>, align 8
@3 = private unnamed_addr constant [80 x i8] c"/rustc/8bab26f4f68e0e26f0bb7960be334d5b520ea452/library/core/src/str/pattern.rs\00", align 1
@4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @3, [16 x i8] c"O\00\00\00\00\00\00\00>\06\00\00\14\00\00\00" }>, align 8
@5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @3, [16 x i8] c"O\00\00\00\00\00\00\00>\06\00\00!\00\00\00" }>, align 8
@6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @3, [16 x i8] c"O\00\00\00\00\00\00\002\06\00\00\14\00\00\00" }>, align 8
@7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @3, [16 x i8] c"O\00\00\00\00\00\00\002\06\00\00!\00\00\00" }>, align 8
@8 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXNtCsl6EuCK7xub1_5insta10comparatorNtB2_17DefaultComparatorNtB2_10Comparator7matches, ptr @_RNvXNtCsl6EuCK7xub1_5insta10comparatorNtB2_17DefaultComparatorNtB2_10Comparator13matches_fully, ptr @_RNvXNtCsl6EuCK7xub1_5insta10comparatorNtB2_17DefaultComparatorNtB2_10Comparator9dyn_clone }>, align 8
@9 = private unnamed_addr constant [95 x i8] c"/rustc/8bab26f4f68e0e26f0bb7960be334d5b520ea452/library/alloc/src/vec/spec_from_iter_nested.rs\00", align 1
@10 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @9, [16 x i8] c"^\00\00\00\00\00\00\009\00\00\00\12\00\00\00" }>, align 8
@11 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @3, [16 x i8] c"O\00\00\00\00\00\00\00\BF\04\00\00$\00\00\00" }>, align 8

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecIBv_TbReEEE11resize_withNvMB5_BE_3newECsl6EuCK7xub1_5insta(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !5 ; 9 uses
  %i.c = icmp ult i64 %i.b, 384307168202282326
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp ugt i64 %1, %i.b
  br i1 %i.d, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36)
  %i.e = sub nuw nsw i64 %i.b, %1                 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !36, !nonnull !5, !noundef !5
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %1 ; 2 uses
  store i64 %1, ptr %i.a, align 8, !alias.scope !36
  %i.i = icmp eq i64 %i.b, %1
  br i1 %i.i, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecIBu_TbReEEE8truncateCsl6EuCK7xub1_5insta.exit, label %.lr.ph

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTbReEEECsl6EuCK7xub1_5insta.exit.i.i: ; preds = %.lr.ph
  %i.j = icmp eq i64 %i.l, %i.e
  br i1 %i.j, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecIBu_TbReEEE8truncateCsl6EuCK7xub1_5insta.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTbReEEECsl6EuCK7xub1_5insta.exit.i.i
  %.sroa.0.0.i.i11 = phi i64 [ %i.l, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTbReEEECsl6EuCK7xub1_5insta.exit.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %.sroa.0.0.i.i11
  %i.l = add nuw nsw i64 %.sroa.0.0.i.i11, 1      ; 4 uses
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTbReEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTbReEEECsl6EuCK7xub1_5insta.exit.i.i unwind label %bb.c, !noalias !36

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTbReEEECsl6EuCK7xub1_5insta.exit7.i.i: ; preds = %.lr.ph13
  %i.m = add i64 %.sroa.0.1.i.i12, 1              ; 2 uses
  %i.n = icmp eq i64 %i.m, %i.e
  br i1 %i.n, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTbReEEECsl6EuCK7xub1_5insta.exit7.i.i._crit_edge, label %.lr.ph13

bb.c:                                             ; preds = %.lr.ph
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = icmp eq i64 %i.l, %i.e
  br i1 %i.p, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTbReEEECsl6EuCK7xub1_5insta.exit7.i.i._crit_edge, label %.lr.ph13

.lr.ph13:                                         ; preds = %bb.c, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTbReEEECsl6EuCK7xub1_5insta.exit7.i.i
  %.sroa.0.1.i.i12 = phi i64 [ %i.m, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTbReEEECsl6EuCK7xub1_5insta.exit7.i.i ], [ %i.l, %bb.c ] ; 2 uses
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %.sroa.0.1.i.i12
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTbReEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTbReEEECsl6EuCK7xub1_5insta.exit7.i.i unwind label %bb.d, !noalias !36

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTbReEEECsl6EuCK7xub1_5insta.exit7.i.i._crit_edge: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTbReEEECsl6EuCK7xub1_5insta.exit7.i.i, %bb.c
  resume { ptr, i32 } %i.o

bb.d:                                             ; preds = %.lr.ph13
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21, !noalias !36
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.s = sub nuw i64 %1, %i.b                     ; 5 uses
  %i.t = load i64, ptr %0, align 8, !range !6, !alias.scope !37, !noundef !5
  %i.u = sub nsw i64 %i.t, %i.b
  %i.v = icmp ugt i64 %i.s, %i.u
  br i1 %i.v, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecIBu_TbReEEE7reserveCsl6EuCK7xub1_5insta.exit.thread.i, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecIBu_TbReEEE7reserveCsl6EuCK7xub1_5insta.exit.i, !prof !7

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecIBu_TbReEEE7reserveCsl6EuCK7xub1_5insta.exit.thread.i: ; preds = %bb.e
  tail call void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %i.s, i64 noundef 8, i64 noundef 24)
  %i.w = load i64, ptr %i.a, align 8, !alias.scope !38, !noundef !5
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecIBu_TbReEEE7reserveCsl6EuCK7xub1_5insta.exit.i

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecIBu_TbReEEE7reserveCsl6EuCK7xub1_5insta.exit.i: ; preds = %bb.e, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecIBu_TbReEEE7reserveCsl6EuCK7xub1_5insta.exit.thread.i
  %i.x = phi i64 [ %i.w, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecIBu_TbReEEE7reserveCsl6EuCK7xub1_5insta.exit.thread.i ], [ %i.b, %bb.e ] ; 3 uses
  %.in.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %.in.i, align 8, !alias.scope !38, !nonnull !5, !noundef !5 ; 3 uses
  %.neg = add nuw nsw i64 %i.b, 1
  %xtraiter = and i64 %i.s, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecIBu_TbReEEE7reserveCsl6EuCK7xub1_5insta.exit.i
  %.sroa.0.0.i.i.i.i.prol = add nsw i64 %i.s, -1
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %i.x ; 3 uses
  store i64 0, ptr %i.z, align 8, !noalias !39
  %.sroa.52.8..sroa_idx.i.i.i.i.prol = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.52.8..sroa_idx.i.i.i.i.prol, align 8, !noalias !39
  %.sroa.63.8..sroa_idx.i.i.i.i.prol = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i64 0, ptr %.sroa.63.8..sroa_idx.i.i.i.i.prol, align 8, !noalias !39
  %i.aa = add i64 %i.x, 1                         ; 2 uses
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecIBu_TbReEEE7reserveCsl6EuCK7xub1_5insta.exit.i
  %.lcssa.unr = phi i64 [ poison, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecIBu_TbReEEE7reserveCsl6EuCK7xub1_5insta.exit.i ], [ %i.aa, %.prol.loopexit.unr-lcssa ]
  %.unr = phi i64 [ %i.x, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecIBu_TbReEEE7reserveCsl6EuCK7xub1_5insta.exit.i ], [ %i.aa, %.prol.loopexit.unr-lcssa ]
  %.sroa.0.0.i.in.i.i.i.unr = phi i64 [ %i.s, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecIBu_TbReEEE7reserveCsl6EuCK7xub1_5insta.exit.i ], [ %.sroa.0.0.i.i.i.i.prol, %.prol.loopexit.unr-lcssa ]
  %i.ab = icmp eq i64 %1, %.neg
  br i1 %i.ab, label %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecIBw_TbReEEE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtNtB1d_7sources11repeat_with10RepeatWithNvMB6_BF_3newEEECsl6EuCK7xub1_5insta.exit, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecIBu_TbReEEE7reserveCsl6EuCK7xub1_5insta.exit.i.new

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecIBu_TbReEEE7reserveCsl6EuCK7xub1_5insta.exit.i.new: ; preds = %.prol.loopexit, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecIBu_TbReEEE7reserveCsl6EuCK7xub1_5insta.exit.i.new
  %i.ac = phi i64 [ %i.ag, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecIBu_TbReEEE7reserveCsl6EuCK7xub1_5insta.exit.i.new ], [ %.unr, %.prol.loopexit ] ; 3 uses
  %.sroa.0.0.i.in.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i.1, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecIBu_TbReEEE7reserveCsl6EuCK7xub1_5insta.exit.i.new ], [ %.sroa.0.0.i.in.i.i.i.unr, %.prol.loopexit ]
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %i.ac ; 3 uses
  store i64 0, ptr %i.ad, align 8, !noalias !39
  %.sroa.52.8..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.52.8..sroa_idx.i.i.i.i, align 8, !noalias !39
  %.sroa.63.8..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i64 0, ptr %.sroa.63.8..sroa_idx.i.i.i.i, align 8, !noalias !39
  %.sroa.0.0.i.i.i.i.1 = add i64 %.sroa.0.0.i.in.i.i.i, -2 ; 2 uses
  %i.ae = getelementptr [24 x i8], ptr %i.y, i64 %i.ac ; 3 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 24
  store i64 0, ptr %i.af, align 8, !noalias !39
  %.sroa.52.8..sroa_idx.i.i.i.i.1 = getelementptr i8, ptr %i.ae, i64 32
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.52.8..sroa_idx.i.i.i.i.1, align 8, !noalias !39
  %.sroa.63.8..sroa_idx.i.i.i.i.1 = getelementptr i8, ptr %i.ae, i64 40
  store i64 0, ptr %.sroa.63.8..sroa_idx.i.i.i.i.1, align 8, !noalias !39
  %i.ag = add i64 %i.ac, 2                        ; 2 uses
  %i.ah = icmp eq i64 %.sroa.0.0.i.i.i.i.1, 0
  br i1 %i.ah, label %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecIBw_TbReEEE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtNtB1d_7sources11repeat_with10RepeatWithNvMB6_BF_3newEEECsl6EuCK7xub1_5insta.exit, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecIBu_TbReEEE7reserveCsl6EuCK7xub1_5insta.exit.i.new

_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecIBw_TbReEEE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtNtB1d_7sources11repeat_with10RepeatWithNvMB6_BF_3newEEECsl6EuCK7xub1_5insta.exit: ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecIBu_TbReEEE7reserveCsl6EuCK7xub1_5insta.exit.i.new, %.prol.loopexit
  %.lcssa = phi i64 [ %.lcssa.unr, %.prol.loopexit ], [ %i.ag, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecIBu_TbReEEE7reserveCsl6EuCK7xub1_5insta.exit.i.new ]
  store i64 %.lcssa, ptr %i.a, align 8, !alias.scope !38, !noalias !40
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecIBu_TbReEEE8truncateCsl6EuCK7xub1_5insta.exit

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecIBu_TbReEEE8truncateCsl6EuCK7xub1_5insta.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTbReEEECsl6EuCK7xub1_5insta.exit.i.i, %bb.b, %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecIBw_TbReEEE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtNtB1d_7sources11repeat_with10RepeatWithNvMB6_BF_3newEEECsl6EuCK7xub1_5insta.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtCs2AWtUsOyxgP_3std4path9ComponentE16extend_desugaredQNtBH_10ComponentsECsl6EuCK7xub1_5insta(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [56 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.c, align 8
  call void @_RNvXsi_NtCs2AWtUsOyxgP_3std4pathNtB5_10ComponentsNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(64) %1)
  %i.d = load i8, ptr %i.b, align 8, !range !43, !noundef !5
  %.not4 = icmp eq i8 %i.d, -1
  br i1 %.not4, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs2AWtUsOyxgP_3std4path9ComponentE7reserveCsl6EuCK7xub1_5insta.exit
  %i.g = load i64, ptr %i.e, align 8, !noundef !5 ; 4 uses
  %i.h = icmp ult i64 %i.g, 164703072086692426
  call void @llvm.assume(i1 %i.h)
  %i.i = load i64, ptr %0, align 8, !range !6, !noundef !5
  %i.j = icmp eq i64 %i.g, %i.i
  br i1 %i.j, label %bb.c, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs2AWtUsOyxgP_3std4path9ComponentE7reserveCsl6EuCK7xub1_5insta.exit

._crit_edge:                                      ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs2AWtUsOyxgP_3std4path9ComponentE7reserveCsl6EuCK7xub1_5insta.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter6traits8iteratorQNtNtCs2AWtUsOyxgP_3std4path10ComponentsNtB5_8Iterator9size_hintCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c)
  %i.k = load i64, ptr %i.a, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.l = call i64 @llvm.uadd.sat.i64(i64 %i.k, i64 1) ; 2 uses
  %i.m = load i64, ptr %i.e, align 8, !alias.scope !44, !noundef !5 ; 2 uses
  %i.n = load i64, ptr %0, align 8, !range !6, !alias.scope !44, !noundef !5
  %i.o = sub i64 %i.n, %i.m
  %i.p = icmp ugt i64 %i.l, %i.o
  br i1 %i.p, label %bb.d, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs2AWtUsOyxgP_3std4path9ComponentE7reserveCsl6EuCK7xub1_5insta.exit, !prof !7

bb.d:                                             ; preds = %bb.c
  call void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.m, i64 noundef range(i64 1, 0) %i.l, i64 noundef 8, i64 noundef 56)
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs2AWtUsOyxgP_3std4path9ComponentE7reserveCsl6EuCK7xub1_5insta.exit

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs2AWtUsOyxgP_3std4path9ComponentE7reserveCsl6EuCK7xub1_5insta.exit: ; preds = %bb.d, %bb.c, %bb.b
  %i.q = load ptr, ptr %i.f, align 8, !nonnull !5, !noundef !5
  %i.r = getelementptr inbounds nuw [56 x i8], ptr %i.q, i64 %i.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.r, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false)
  %i.s = add nuw nsw i64 %i.g, 1
  store i64 %i.s, ptr %i.e, align 8
  call void @_RNvXsi_NtCs2AWtUsOyxgP_3std4pathNtB5_10ComponentsNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(64) %1)
  %i.t = load i8, ptr %i.b, align 8, !range !43, !noundef !5
  %.not = icmp eq i8 %i.t, -1
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvMsx_NtNtCs4NRVxsYgnAr_4core3str7patternNtB6_14TwoWaySearcher9next_backNtB6_9MatchOnlyECsl6EuCK7xub1_5insta(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(64) %1, ptr noalias noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias noundef nonnull readonly captures(none) %4, i64 noundef range(i64 0, -9223372036854775808) %5, i1 noundef zeroext %6) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 6 uses
  %.promoted = load i64, ptr %i.a, align 8        ; 2 uses
  %i.b = sub i64 %.promoted, %5                   ; 2 uses
  %i.c = icmp ult i64 %i.b, %3
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !5
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8              ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %.promoted45 = load i64, ptr %i.h, align 8
  %umax = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %5) ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.f, %bb.a
  store i64 0, ptr %i.a, align 8
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %i.k = phi i64 [ %.promoted45, %.lr.ph ], [ %i.v, %bb.f ] ; 5 uses
  %i.l = phi i64 [ %i.b, %.lr.ph ], [ %i.x, %bb.f ] ; 9 uses
  %i.m = phi i64 [ %.promoted, %.lr.ph ], [ %i.w, %bb.f ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 %i.l
  %i.o = load i8, ptr %i.n, align 1, !noundef !5
  %i.p = and i8 %i.o, 63
  %i.q = zext nneg i8 %i.p to i64
  %i.r = shl nuw i64 1, %i.q
  %i.s = and i64 %i.r, %i.e
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.j, %._crit_edge
  %storemerge = phi i64 [ 0, %._crit_edge ], [ 1, %bb.j ]
  store i64 %storemerge, ptr %0, align 8
  ret void

bb.d:                                             ; preds = %bb.b
  store i64 %i.l, ptr %i.a, align 8
  br i1 %6, label %bb.f, label %.sink.split

bb.e:                                             ; preds = %bb.b
  %.sroa.0.0.i = tail call i64 @llvm.umin.i64(i64 %i.k, i64 %i.g)
  %.sroa.01.0 = select i1 %6, i64 %i.g, i64 %.sroa.0.0.i ; 3 uses
  %i.u = add i64 %.sroa.01.0, -1
  %.first_iter = icmp ult i64 %i.u, %5
  %.not109 = icmp eq i64 %.sroa.01.0, 0
  br i1 %.not109, label %._crit_edge113, label %.lr.ph112

.sink.split:                                      ; preds = %bb.d, %bb.t, %bb.o
  %.sink = phi i64 [ %i.j, %bb.o ], [ %5, %bb.t ], [ %5, %bb.d ] ; 2 uses
  %.ph92 = phi i64 [ %i.ak, %bb.o ], [ %i.ar, %bb.t ], [ %i.l, %bb.d ]
  store i64 %.sink, ptr %i.h, align 8
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.t, %bb.o, %bb.d
  %i.v = phi i64 [ %i.k, %bb.t ], [ %i.k, %bb.d ], [ %i.k, %bb.o ], [ %.sink, %.sink.split ]
  %i.w = phi i64 [ %i.ar, %bb.t ], [ %i.l, %bb.d ], [ %i.ak, %bb.o ], [ %.ph92, %.sink.split ] ; 2 uses
  %i.x = sub i64 %i.w, %5                         ; 2 uses
  %i.y = icmp ult i64 %i.x, %3
  br i1 %i.y, label %bb.b, label %._crit_edge

bb.g:                                             ; preds = %bb.r
  %.not = icmp eq i64 %i.z, 0
  br i1 %.not, label %._crit_edge113, label %.lr.ph112

._crit_edge113:                                   ; preds = %bb.g, %bb.e
  %.sroa.06.0 = select i1 %6, i64 %5, i64 %i.k    ; 2 uses
  %umax68 = tail call i64 @llvm.umax.i64(i64 %.sroa.06.0, i64 %i.g)
  %exitcond.not114.not = icmp ult i64 %i.g, %.sroa.06.0
  br i1 %exitcond.not114.not, label %.lr.ph117, label %._crit_edge118

.lr.ph112:                                        ; preds = %bb.e, %bb.g
  %.sroa.2.0110 = phi i64 [ %i.z, %bb.g ], [ %.sroa.01.0, %bb.e ]
  %i.z = add i64 %.sroa.2.0110, -1                ; 6 uses
  br i1 %.first_iter, label %bb.p, label %bb.q

bb.h:                                             ; preds = %bb.m
  %exitcond.not = icmp eq i64 %i.aa, %umax68
  br i1 %exitcond.not, label %._crit_edge118, label %.lr.ph117

._crit_edge118:                                   ; preds = %._crit_edge113, %bb.h
  store i64 %i.l, ptr %i.a, align 8
  br i1 %6, label %bb.j, label %bb.i

.lr.ph117:                                        ; preds = %._crit_edge113, %bb.h
  %.sroa.07.0115 = phi i64 [ %i.aa, %bb.h ], [ %i.g, %._crit_edge113 ] ; 4 uses
  %i.aa = add i64 %.sroa.07.0115, 1               ; 2 uses
  %exitcond69.not = icmp eq i64 %.sroa.07.0115, %umax
  br i1 %exitcond69.not, label %bb.l, label %bb.k

bb.i:                                             ; preds = %._crit_edge118
  store i64 %5, ptr %i.h, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge118
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.ab, align 8, !alias.scope !47
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.m, ptr %i.ac, align 8, !alias.scope !47
  br label %bb.c

bb.k:                                             ; preds = %.lr.ph117
  %i.ad = add i64 %.sroa.07.0115, %i.l            ; 2 uses
  %i.ae = icmp ult i64 %i.ad, %3
  br i1 %i.ae, label %bb.m, label %bb.n
end_hunk_0
