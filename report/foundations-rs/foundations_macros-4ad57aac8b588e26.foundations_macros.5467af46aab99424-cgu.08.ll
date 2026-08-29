Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/foundations-rs/original/foundations_macros-4ad57aac8b588e26.foundations_macros.5467af46aab99424-cgu.08?download=true
inline.NumInlined: 599
inline.NumDeleted: 217
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [45 x i8] c"foundations-macros/src/metrics/validation.rs\00", align 1
@1 = private unnamed_addr constant [93 x i8] c"PHistogram buckets must be strictly increasing. Found invalid bucket at position \C0\02: \C0\04 <= \C0\00", align 1
@2 = private unnamed_addr constant [7 x i8] c"buckets", align 1
@3 = private unnamed_addr constant [45 x i8] c"histogram builder must have a 'buckets' field", align 1
@4 = private unnamed_addr constant [15 x i8] c"classic_buckets", align 1
@5 = private unnamed_addr constant [4 x i8] c"Some", align 1
@6 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @5, [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
@7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c",\00\00\00\00\00\00\00\22\00\00\00%\00\00\00" }>, align 8
@8 = private unnamed_addr constant [42 x i8] c"foundations-macros/src/metrics/parsing.rs\00", align 1
@9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @8, [16 x i8] c")\00\00\00\00\00\00\00\C2\00\00\00#\00\00\00" }>, align 8
@10 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @8, [16 x i8] c")\00\00\00\00\00\00\00\CB\00\00\00-\00\00\00" }>, align 8
@11 = private unnamed_addr constant [4 x i8] c"Into", align 1
@12 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @11, [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
@13 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @8, [16 x i8] c")\00\00\00\00\00\00\00\DE\00\00\00\1C\00\00\00" }>, align 8
@14 = private unnamed_addr constant [30 x i8] c"Only `impl Into<T>` is allowed", align 1
@15 = private unnamed_addr constant [5 x i8] c"serde", align 1
@16 = private unnamed_addr constant [8 x i8] c"serde_as", align 1
@17 = private unnamed_addr constant [67 x i8] c"Only `#[serde]` and `#[serde_as]` are allowed on function arguments", align 1
@18 = private unnamed_addr constant [33 x i8] c"Duplicate `#[serde_as]` attribute", align 1
@19 = private unnamed_addr constant [30 x i8] c"Duplicate `#[serde]` attribute", align 1

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs3_NtCs6bAnw1I7Lci_3syn3litNtB6_6LitInt12base10_parsejECs7fhJ7v7hOxk_18foundations_macros(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !8 {
bb.a:
  %i.a = tail call { ptr, i64 } @_RNvMs3_NtCs6bAnw1I7Lci_3syn3litNtB5_6LitInt13base10_digits(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1), !dbg !15 ; 2 uses
  %i.b = extractvalue { ptr, i64 } %i.a, 0, !dbg !15 ; 3 uses
  %i.c = extractvalue { ptr, i64 } %i.a, 1, !dbg !15 ; 2 uses
  switch i64 %i.c, label %thread-pre-split.i.i.i [
    i64 0, label %.loopexit
    i64 1, label %bb.b
  ], !dbg !16

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.b, align 1, !dbg !33, !alias.scope !35, !noalias !42, !noundef !14 ; 2 uses
  switch i8 %i.d, label %bb.c [
    i8 43, label %.loopexit
    i8 45, label %.loopexit
  ], !dbg !33

thread-pre-split.i.i.i:                           ; preds = %bb.a
  %.pr.i.i.i = load i8, ptr %i.b, align 1, !dbg !33, !alias.scope !35, !noalias !42
  br label %bb.c, !dbg !33

bb.c:                                             ; preds = %thread-pre-split.i.i.i, %bb.b
  %i.e = phi i8 [ %.pr.i.i.i, %thread-pre-split.i.i.i ], [ %i.d, %bb.b ], !dbg !33
  %cond.i.i.i = icmp eq i8 %i.e, 43, !dbg !33     ; 2 uses
  %i.f = sext i1 %cond.i.i.i to i64, !dbg !33
  %.sroa.15.0.i.i.i = add nsw i64 %i.c, %i.f, !dbg !33 ; 4 uses
  %.sroa.0.0.idx.i.i.i = zext i1 %cond.i.i.i to i64, !dbg !33
  %.sroa.0.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.0.0.idx.i.i.i, !dbg !33 ; 2 uses
  %i.g = icmp samesign ult i64 %.sroa.15.0.i.i.i, 17
  br i1 %i.g, label %.preheader.i.i.i, label %.preheader56.i.i.i.preheader, !dbg !46

.preheader.i.i.i:                                 ; preds = %bb.c
  %.not5366.i.i.i = icmp eq i64 %.sroa.15.0.i.i.i, 0, !dbg !51
  br i1 %.not5366.i.i.i, label %.loopexit5, label %.lr.ph.i.i.i, !dbg !51

.preheader56.i.i.i:                               ; preds = %bb.f
  %.not52.i.i.i = icmp eq i64 %i.i, 0, !dbg !53
  br i1 %.not52.i.i.i, label %.loopexit5, label %.preheader56.i.i.i.preheader, !dbg !53

.preheader56.i.i.i.preheader:                     ; preds = %bb.c, %.preheader56.i.i.i
  %.sroa.0.1.i.i.i35 = phi ptr [ %i.h, %.preheader56.i.i.i ], [ %.sroa.0.0.i.i.i, %bb.c ] ; 2 uses
  %.sroa.15.1.i.i.i34 = phi i64 [ %i.i, %.preheader56.i.i.i ], [ %.sroa.15.0.i.i.i, %bb.c ]
  %.sroa.042.0.i.i.i33 = phi i64 [ %i.q, %.preheader56.i.i.i ], [ 0, %bb.c ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i35, i64 1, !dbg !55
  %i.i = add nsw i64 %.sroa.15.1.i.i.i34, -1, !dbg !55 ; 2 uses
  %2 = mul nuw i64 %.sroa.042.0.i.i.i33, 10, !dbg !56 ; 2 uses
  %3 = icmp ugt i64 %.sroa.042.0.i.i.i33, 1844674407370955161, !dbg !56
  %i.j = load i8, ptr %.sroa.0.1.i.i.i35, align 1, !dbg !63, !alias.scope !35, !noalias !42, !noundef !14 ; 2 uses
  br i1 %3, label %bb.e, label %bb.d, !dbg !65, !prof !71

bb.d:                                             ; preds = %.preheader56.i.i.i.preheader
  %i.k = zext i8 %i.j to i32, !dbg !72
  %i.l = add nsw i32 %i.k, -48, !dbg !73          ; 2 uses
  %i.m = icmp ult i32 %i.l, 10, !dbg !83
  br i1 %i.m, label %bb.f, label %.loopexit, !dbg !85

bb.e:                                             ; preds = %.preheader56.i.i.i.preheader
  %i.n = add i8 %i.j, -48, !dbg !86
  %i.o = icmp ult i8 %i.n, 10, !dbg !86
  %spec.select = select i1 %i.o, i8 2, i8 1, !dbg !85
  br label %.loopexit, !dbg !85

bb.f:                                             ; preds = %bb.d
  %i.p = zext nneg i32 %i.l to i64, !dbg !88
  %i.q = add i64 %2, %i.p, !dbg !89               ; 3 uses
  %i.r = icmp ult i64 %i.q, %2, !dbg !89
  br i1 %i.r, label %.loopexit, label %.preheader56.i.i.i, !dbg !93, !prof !71

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.g
  %.sroa.0.269.i.i.i = phi ptr [ %i.y, %bb.g ], [ %.sroa.0.0.i.i.i, %.preheader.i.i.i ] ; 2 uses
  %.sroa.15.268.i.i.i = phi i64 [ %i.x, %bb.g ], [ %.sroa.15.0.i.i.i, %.preheader.i.i.i ]
  %.sroa.042.267.i.i.i = phi i64 [ %i.aa, %bb.g ], [ 0, %.preheader.i.i.i ]
  %i.s = load i8, ptr %.sroa.0.269.i.i.i, align 1, !dbg !95, !alias.scope !35, !noalias !42, !noundef !14
  %i.t = zext i8 %i.s to i32, !dbg !96
  %i.u = add nsw i32 %i.t, -48, !dbg !97          ; 2 uses
  %i.v = icmp ult i32 %i.u, 10, !dbg !100
  br i1 %i.v, label %bb.g, label %.loopexit, !dbg !101

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %i.w = mul i64 %.sroa.042.267.i.i.i, 10, !dbg !102
  %i.x = add nsw i64 %.sroa.15.268.i.i.i, -1, !dbg !103 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i.i.i, i64 1, !dbg !103
  %i.z = zext nneg i32 %i.u to i64, !dbg !104
  %i.aa = add i64 %i.w, %i.z, !dbg !106           ; 2 uses
  %.not53.i.i.i = icmp eq i64 %i.x, 0, !dbg !51
  br i1 %.not53.i.i.i, label %.loopexit5, label %.lr.ph.i.i.i, !dbg !51

.loopexit:                                        ; preds = %bb.d, %bb.f, %.lr.ph.i.i.i, %bb.e, %bb.a, %bb.b, %bb.b
  %.sroa.2.0.ph = phi i8 [ 1, %bb.b ], [ %spec.select, %bb.e ], [ 1, %bb.b ], [ 0, %bb.a ], [ 1, %.lr.ph.i.i.i ], [ 1, %bb.d ], [ 2, %bb.f ]
  %i.ab = tail call noundef i32 @_RNvMs3_NtCs6bAnw1I7Lci_3syn3litNtB5_6LitInt4span(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1), !dbg !107, !noalias !118
  tail call void @_RINvMNtCs6bAnw1I7Lci_3syn5errorNtB3_5Error3newNtNtNtCs3oUPovFnLWP_4core3num5error13ParseIntErrorECs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, i32 noundef %i.ab, i8 noundef range(i8 0, 6) %.sroa.2.0.ph), !dbg !124, !noalias !125
  br label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultjNtNtNtB5_3num5error13ParseIntErrorE7map_errNtNtCs6bAnw1I7Lci_3syn5error5ErrorNCINvMs3_NtB1u_3litNtB27_6LitInt12base10_parsejE0ECs7fhJ7v7hOxk_18foundations_macros.exit, !dbg !126

.loopexit5:                                       ; preds = %.preheader56.i.i.i, %bb.g, %.preheader.i.i.i
  %.sroa.9.0 = phi i64 [ %i.aa, %bb.g ], [ 0, %.preheader.i.i.i ], [ %i.q, %.preheader56.i.i.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127), !dbg !128
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !129
  store i64 %.sroa.9.0, ptr %i.ac, align 8, !dbg !129, !alias.scope !127, !noalias !131
  store i64 -1, ptr %0, align 8, !dbg !129, !alias.scope !127, !noalias !131
  br label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultjNtNtNtB5_3num5error13ParseIntErrorE7map_errNtNtCs6bAnw1I7Lci_3syn5error5ErrorNCINvMs3_NtB1u_3litNtB27_6LitInt12base10_parsejE0ECs7fhJ7v7hOxk_18foundations_macros.exit, !dbg !133

_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultjNtNtNtB5_3num5error13ParseIntErrorE7map_errNtNtCs6bAnw1I7Lci_3syn5error5ErrorNCINvMs3_NtB1u_3litNtB27_6LitInt12base10_parsejE0ECs7fhJ7v7hOxk_18foundations_macros.exit: ; preds = %.loopexit, %.loopexit5
  ret void, !dbg !134
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCs6bAnw1I7Lci_3syn2ty4TypeEEECs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !135 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !138, !align !139, !noundef !14 ; 4 uses
  %i.b = icmp eq ptr %i.a, null, !dbg !138
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !138

bb.b:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCs6bAnw1I7Lci_3syn2ty4TypeEECs7fhJ7v7hOxk_18foundations_macros.exit, %bb.a
  ret void, !dbg !138

bb.c:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6bAnw1I7Lci_3syn2ty4TypeECs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef align 8 dereferenceable(224) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCs6bAnw1I7Lci_3syn2ty4TypeEECs7fhJ7v7hOxk_18foundations_macros.exit unwind label %bb.d, !dbg !140, !noalias !143, !inline_history !146

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 224, i64 noundef 8) #9, !dbg !147, !noalias !143
  resume { ptr, i32 } %i.c, !dbg !140

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCs6bAnw1I7Lci_3syn2ty4TypeEECs7fhJ7v7hOxk_18foundations_macros.exit: ; preds = %bb.c
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 224, i64 noundef 8) #9, !dbg !169, !noalias !143
  br label %bb.b, !dbg !138
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCs6bAnw1I7Lci_3syn3pat3PatEEECs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !175 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !176, !align !139, !noundef !14 ; 4 uses
  %i.b = icmp eq ptr %i.a, null, !dbg !176
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !176

bb.b:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCs6bAnw1I7Lci_3syn3pat3PatEECs7fhJ7v7hOxk_18foundations_macros.exit, %bb.a
  ret void, !dbg !176

bb.c:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6bAnw1I7Lci_3syn3pat3PatECs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef align 8 dereferenceable(184) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCs6bAnw1I7Lci_3syn3pat3PatEECs7fhJ7v7hOxk_18foundations_macros.exit unwind label %bb.d, !dbg !177, !noalias !180, !inline_history !183

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 184, i64 noundef 8) #9, !dbg !184, !noalias !180
  resume { ptr, i32 } %i.c, !dbg !177

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCs6bAnw1I7Lci_3syn3pat3PatEECs7fhJ7v7hOxk_18foundations_macros.exit: ; preds = %bb.c
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 184, i64 noundef 8) #9, !dbg !193, !noalias !180
  br label %bb.b, !dbg !176
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCs6bAnw1I7Lci_3syn4expr4ExprEEECs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !199 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !200, !align !139, !noundef !14 ; 4 uses
  %i.b = icmp eq ptr %i.a, null, !dbg !200
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !200

bb.b:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCs6bAnw1I7Lci_3syn4expr4ExprEECs7fhJ7v7hOxk_18foundations_macros.exit, %bb.a
  ret void, !dbg !200

bb.c:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6bAnw1I7Lci_3syn4expr4ExprECs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef align 8 dereferenceable(176) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCs6bAnw1I7Lci_3syn4expr4ExprEECs7fhJ7v7hOxk_18foundations_macros.exit unwind label %bb.d, !dbg !201, !noalias !204, !inline_history !207

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 176, i64 noundef 8) #9, !dbg !208, !noalias !204
  resume { ptr, i32 } %i.c, !dbg !201

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCs6bAnw1I7Lci_3syn4expr4ExprEECs7fhJ7v7hOxk_18foundations_macros.exit: ; preds = %bb.c
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 176, i64 noundef 8) #9, !dbg !217, !noalias !204
  br label %bb.b, !dbg !200
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCs6bAnw1I7Lci_3syn4path11PathSegmentEEECs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !223 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !224, !align !139, !noundef !14 ; 11 uses
  %i.b = icmp eq ptr %i.a, null, !dbg !224
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !224

bb.b:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCs6bAnw1I7Lci_3syn4path11PathSegmentEECs7fhJ7v7hOxk_18foundations_macros.exit, %bb.a
  ret void, !dbg !224

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !225), !dbg !228
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 64, !dbg !231
  tail call void @llvm.experimental.noalias.scope.decl(metadata !234), !dbg !231, !noalias !237
  tail call void @llvm.experimental.noalias.scope.decl(metadata !240), !dbg !243, !noalias !237
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 80, !dbg !246
  %i.e = load i8, ptr %i.d, align 8, !dbg !246, !range !249, !alias.scope !250, !noalias !237, !noundef !14
  %i.f = icmp eq i8 %i.e, 2, !dbg !246
  br i1 %i.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCse4VeaA6Ikg_11proc_macro25IdentECs7fhJ7v7hOxk_18foundations_macros.exit.i, label %bb.d, !dbg !246

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 72, !dbg !246
  %.val1.i.i.i = load i64, ptr %i.g, align 8, !dbg !246, !alias.scope !250, !noalias !237, !noundef !14 ; 2 uses
  %i.h = icmp eq i64 %.val1.i.i.i, 0, !dbg !251
  br i1 %i.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCse4VeaA6Ikg_11proc_macro25IdentECs7fhJ7v7hOxk_18foundations_macros.exit.i, label %bb.e, !dbg !251

bb.e:                                             ; preds = %bb.d
  %.val.i.i.i = load ptr, ptr %i.c, align 8, !dbg !246, !alias.scope !250, !noalias !237, !nonnull !14, !noundef !14
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i, i64 noundef 1) #9, !dbg !260, !noalias !265, !inline_history !266
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCse4VeaA6Ikg_11proc_macro25IdentECs7fhJ7v7hOxk_18foundations_macros.exit.i, !dbg !267

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCse4VeaA6Ikg_11proc_macro25IdentECs7fhJ7v7hOxk_18foundations_macros.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.i = load i64, ptr %i.a, align 8, !dbg !268, !range !271, !alias.scope !272, !noalias !237, !noundef !14 ; 2 uses
  %i.j = xor i64 %i.i, -9223372036854775808, !dbg !268
  %i.k = icmp slt i64 %i.i, 0, !dbg !268
  %i.l = select i1 %i.k, i64 %i.j, i64 2, !dbg !268
  switch i64 %i.l, label %bb.f [
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCs6bAnw1I7Lci_3syn4path11PathSegmentEECs7fhJ7v7hOxk_18foundations_macros.exit
    i64 1, label %bb.g
  ], !dbg !268

bb.f:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCse4VeaA6Ikg_11proc_macro25IdentECs7fhJ7v7hOxk_18foundations_macros.exit.i
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6bAnw1I7Lci_3syn4path29ParenthesizedGenericArgumentsECs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCs6bAnw1I7Lci_3syn4path11PathSegmentEECs7fhJ7v7hOxk_18foundations_macros.exit unwind label %bb.o, !dbg !268, !inline_history !266

bb.g:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCse4VeaA6Ikg_11proc_macro25IdentECs7fhJ7v7hOxk_18foundations_macros.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !268 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtCs6bAnw1I7Lci_3syn4path15GenericArgumentNtNtBK_5token5CommaEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.m)
          to label %bb.i unwind label %bb.h, !dbg !275, !inline_history !282

bb.h:                                             ; preds = %bb.g
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTNtNtCs6bAnw1I7Lci_3syn4path15GenericArgumentNtNtBR_5token5CommaEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.m)
          to label %.body.i unwind label %bb.j, !dbg !283, !inline_history !282

bb.i:                                             ; preds = %bb.g
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTNtNtCs6bAnw1I7Lci_3syn4path15GenericArgumentNtNtBR_5token5CommaEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.m)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtCs6bAnw1I7Lci_3syn4path15GenericArgumentNtNtB1d_5token5CommaEEECs7fhJ7v7hOxk_18foundations_macros.exit.i unwind label %bb.k, !dbg !286, !inline_history !282

bb.j:                                             ; preds = %bb.h
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #10, !dbg !275, !inline_history !282
  unreachable, !dbg !275

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtCs6bAnw1I7Lci_3syn4path15GenericArgumentNtNtB1d_5token5CommaEEECs7fhJ7v7hOxk_18foundations_macros.exit.i: ; preds = %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !288
  tail call void @llvm.experimental.noalias.scope.decl(metadata !289), !dbg !288
  %i.q = load ptr, ptr %i.p, align 8, !dbg !292, !alias.scope !295, !align !139, !noundef !14 ; 4 uses
  %i.r = icmp eq ptr %i.q, null, !dbg !292
  br i1 %i.r, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCs6bAnw1I7Lci_3syn4path11PathSegmentEECs7fhJ7v7hOxk_18foundations_macros.exit, label %bb.m, !dbg !292

bb.k:                                             ; preds = %bb.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %.body.i, !dbg !288

.body.i:                                          ; preds = %bb.h, %bb.k
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.s, %bb.k ], [ %i.n, %bb.h ]
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !288
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCs6bAnw1I7Lci_3syn4path15GenericArgumentEEECs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef align 8 dereferenceable(8) %i.t) #11
          to label %bb.p unwind label %bb.l, !dbg !288, !inline_history !298

bb.l:                                             ; preds = %.body.i
  %i.u = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_RNvXNtCs6bAnw1I7Lci_3syn7spannedNtNtB4_3lit3LitNtB2_7Spanned4spanCs7fhJ7v7hOxk_18foundations_macros:bb.a
  invoke void @_RNvXsl_NtCs6bAnw1I7Lci_3syn3litNtB5_3LitNtNtCsk5uxfcyCLQt_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_RNvXs0_NtCsk5uxfcyCLQt_5quote7spannedNtNtCs6bAnw1I7Lci_3syn3lit3LitNtB5_7Spanned6___spanCs7fhJ7v7hOxk_18foundations_macros.exit unwind label %bb.b, !dbg !5416, !noalias !5421

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCse4VeaA6Ikg_11proc_macro211TokenStreamECs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef align 8 dereferenceable(32) %i.a) #11
          to label %bb.d unwind label %bb.c, !dbg !5422, !noalias !5421

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #10, !dbg !5423, !noalias !5421
  unreachable, !dbg !5423

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.c, !dbg !5423

_RNvXs0_NtCsk5uxfcyCLQt_5quote7spannedNtNtCs6bAnw1I7Lci_3syn3lit3LitNtB5_7Spanned6___spanCs7fhJ7v7hOxk_18foundations_macros.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !dbg !5424, !noalias !5425
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !5426, !noalias !5407
  %i.e = call noundef i32 @_RNvNtCsk5uxfcyCLQt_5quote7spanned10join_spans(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b), !dbg !5427
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !5428
  ret i32 %i.e, !dbg !5429
}

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvXs2_NtNtCs3oUPovFnLWP_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #2

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMs3_NtCs6bAnw1I7Lci_3syn3litNtB5_6LitInt13base10_digits(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMs6_NtCs6bAnw1I7Lci_3syn3litNtB5_8LitFloat13base10_digits(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs6bAnw1I7Lci_3syn4attr9AttributeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs6bAnw1I7Lci_3syn4expr3ArmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs6bAnw1I7Lci_3syn4stmt4StmtENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtCs6bAnw1I7Lci_3syn2ty4TypeNtNtBK_5token5CommaEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtCs6bAnw1I7Lci_3syn2ty9BareFnArgNtNtBK_5token5CommaEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtCs6bAnw1I7Lci_3syn3pat3PatNtNtBK_5token2OrEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtCs6bAnw1I7Lci_3syn3pat3PatNtNtBK_5token5CommaEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtCs6bAnw1I7Lci_3syn3pat8FieldPatNtNtBK_5token5CommaEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtCs6bAnw1I7Lci_3syn4expr10FieldValueNtNtBK_5token5CommaEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtCs6bAnw1I7Lci_3syn4expr4ExprNtNtBK_5token5CommaEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtCs6bAnw1I7Lci_3syn4path11PathSegmentNtNtBK_5token7PathSepEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtCs6bAnw1I7Lci_3syn4path15GenericArgumentNtNtBK_5token5CommaEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtCs6bAnw1I7Lci_3syn8generics12GenericParamNtNtBK_5token5CommaEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtCs6bAnw1I7Lci_3syn8generics13CapturedParamNtNtBK_5token5CommaEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtCs6bAnw1I7Lci_3syn8generics14TypeParamBoundNtNtBK_5token4PlusEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtCs6bAnw1I7Lci_3syn8lifetime8LifetimeNtNtBK_5token4PlusEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTdNtCse4VeaA6Ikg_11proc_macro24SpanEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs6bAnw1I7Lci_3syn4attr9AttributeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs6bAnw1I7Lci_3syn4expr3ArmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs6bAnw1I7Lci_3syn4stmt4StmtENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTNtNtCs6bAnw1I7Lci_3syn2ty4TypeNtNtBR_5token5CommaEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTNtNtCs6bAnw1I7Lci_3syn2ty9BareFnArgNtNtBR_5token5CommaEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTNtNtCs6bAnw1I7Lci_3syn3pat3PatNtNtBR_5token2OrEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTNtNtCs6bAnw1I7Lci_3syn3pat3PatNtNtBR_5token5CommaEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTNtNtCs6bAnw1I7Lci_3syn3pat8FieldPatNtNtBR_5token5CommaEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTNtNtCs6bAnw1I7Lci_3syn4expr10FieldValueNtNtBR_5token5CommaEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTNtNtCs6bAnw1I7Lci_3syn4expr4ExprNtNtBR_5token5CommaEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTNtNtCs6bAnw1I7Lci_3syn4path11PathSegmentNtNtBR_5token7PathSepEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTNtNtCs6bAnw1I7Lci_3syn4path15GenericArgumentNtNtBR_5token5CommaEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTNtNtCs6bAnw1I7Lci_3syn8generics12GenericParamNtNtBR_5token5CommaEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTNtNtCs6bAnw1I7Lci_3syn8generics13CapturedParamNtNtBR_5token5CommaEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTNtNtCs6bAnw1I7Lci_3syn8generics14TypeParamBoundNtNtBR_5token4PlusEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTNtNtCs6bAnw1I7Lci_3syn8lifetime8LifetimeNtNtBR_5token4PlusEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTdNtCse4VeaA6Ikg_11proc_macro24SpanEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs6bAnw1I7Lci_3syn4attr9AttributeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_NtCse4VeaA6Ikg_11proc_macro28fallbackNtB5_11TokenStreamNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_NtNtCsa5ERaWwhjCQ_10proc_macro6bridge6clientNtB5_11TokenStreamNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 4 dereferenceable(4)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvXst_NtCs6bAnw1I7Lci_3syn10punctuatedINtB5_4IterNtNtB7_4expr10FieldValueENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i32 @_RNvMs3_NtCs6bAnw1I7Lci_3syn3litNtB5_6LitInt4span(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtCs6bAnw1I7Lci_3syn5errorNtB3_5Error3newNtNtNtCs3oUPovFnLWP_4core3num5error13ParseIntErrorECs7fhJ7v7hOxk_18foundations_macros(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), i32 noundef, i8 noundef range(i8 0, 6)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i32 @_RNvMs6_NtCs6bAnw1I7Lci_3syn3litNtB5_8LitFloat4span(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtCs6bAnw1I7Lci_3syn5errorNtB3_5Error3newNtNtNtCs3oUPovFnLWP_4core3num11float_parse15ParseFloatErrorECs7fhJ7v7hOxk_18foundations_macros(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), i32 noundef, i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNvNtCs1xwejQucwHj_5alloc3fmt6format12format_inner(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXss_NtCse4VeaA6Ikg_11proc_macro23impNtB5_5IdentINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eqCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare hidden void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTdNtCse4VeaA6Ikg_11proc_macro24SpanEE8grow_oneCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvMNtCs6bAnw1I7Lci_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4expr10FieldValueNtNtB4_5token5CommaE4iterCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYRNtNtCs6bAnw1I7Lci_3syn4expr4ExprNtNtCsk5uxfcyCLQt_5quote9to_tokens8ToTokens17into_token_streamCs7fhJ7v7hOxk_18foundations_macros(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(176)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i32 @_RNvNtCsk5uxfcyCLQt_5quote7spanned10join_spans(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvMNtCs6bAnw1I7Lci_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4expr4ExprNtNtB4_5token5CommaE4iterCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvXst_NtCs6bAnw1I7Lci_3syn10punctuatedINtB5_4IterNtNtB7_4expr4ExprENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtRdNtB6_7Display3fmtCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs7_NtNtCs3oUPovFnLWP_4core3fmt5floatdNtB7_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtCs6bAnw1I7Lci_3syn5errorNtB3_5Error3newNtNtCs1xwejQucwHj_5alloc6string6StringECs7fhJ7v7hOxk_18foundations_macros(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), i32 noundef, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtCs6bAnw1I7Lci_3syn5errorNtB3_5Error11new_spannedRNtNtB5_4expr10ExprStructReECs7fhJ7v7hOxk_18foundations_macros(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(168), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvMNtCs6bAnw1I7Lci_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4path11PathSegmentNtNtB4_5token7PathSepE4lastCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXss_NtCse4VeaA6Ikg_11proc_macro23impNtB5_5IdentINtNtCs3oUPovFnLWP_4core3cmp9PartialEqRReE2eqCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvMNtCs6bAnw1I7Lci_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4expr4ExprNtNtB4_5token5CommaE3lenCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvXsN_NtCs6bAnw1I7Lci_3syn10punctuatedINtB5_10PunctuatedNtNtB7_4expr4ExprNtNtB7_5token5CommaEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexjE5indexCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvMNtCs6bAnw1I7Lci_3syn10punctuatedINtB2_10PunctuatedNtNtB4_8generics14TypeParamBoundNtNtB4_5token4PlusE3lenCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvXsN_NtCs6bAnw1I7Lci_3syn10punctuatedINtB5_10PunctuatedNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexjE5indexCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvMNtCs6bAnw1I7Lci_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4path11PathSegmentNtNtB4_5token7PathSepE3lenCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvXsN_NtCs6bAnw1I7Lci_3syn10punctuatedINtB5_10PunctuatedNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexjE5indexCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvMNtCs6bAnw1I7Lci_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4path15GenericArgumentNtNtB4_5token5CommaE3lenCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvXsN_NtCs6bAnw1I7Lci_3syn10punctuatedINtB5_10PunctuatedNtNtB7_4path15GenericArgumentNtNtB7_5token5CommaEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexjE5indexCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYRRNtNtCs6bAnw1I7Lci_3syn2ty13TypeImplTraitNtNtCsk5uxfcyCLQt_5quote9to_tokens8ToTokens17into_token_streamCs7fhJ7v7hOxk_18foundations_macros(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtCs6bAnw1I7Lci_3syn5errorNtB3_5Error3newReECs7fhJ7v7hOxk_18foundations_macros(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), i32 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMNtCs6bAnw1I7Lci_3syn4attrNtB2_9Attribute4path(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(256)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvMs_NtCs6bAnw1I7Lci_3syn4pathNtB5_4Path8is_identeECs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYRNtNtCs6bAnw1I7Lci_3syn4attr9AttributeNtNtCsk5uxfcyCLQt_5quote9to_tokens8ToTokens17into_token_streamCs7fhJ7v7hOxk_18foundations_macros(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(256)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs2p_NtNtCs6bAnw1I7Lci_3syn3gen5cloneNtNtBa_2ty4TypeNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef writable sret([224 x i8]) align 8 captures(address) dereferenceable(224), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(224)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsl_NtCs6bAnw1I7Lci_3syn3litNtB5_3LitNtNtCsk5uxfcyCLQt_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #6

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcINtNtB7_3vec3VecNtCse4VeaA6Ikg_11proc_macro29TokenTreeEE9drop_slowBV_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvMCse4VeaA6Ikg_11proc_macro2NtB2_11TokenStream3new(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #8

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #9 = { nounwind }
attributes #10 = { cold noreturn nounwind }
attributes #11 = { cold }
attributes #12 = { noinline }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.dbg.cu = !{!6}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{!"rustc version 1.100.0-nightly (787af2b8c 2026-08-25)"}
!6 = distinct !DICompileUnit(language: DW_LANG_Rust, file: !7, producer: "clang LLVM (rustc version 1.100.0-nightly (787af2b8c 2026-08-25))", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!7 = !DIFile(filename: "foundations-macros/src/lib.rs/@/foundations_macros.5467af46aab99424-cgu.08", directory: "/opt-bench/work/foundations-rs/foundations")
!8 = distinct !DISubprogram(name: "base10_parse<usize>", linkageName: "_RINvMs3_NtCs6bAnw1I7Lci_3syn3litNtB6_6LitInt12base10_parsejECs7fhJ7v7hOxk_18foundations_macros", scope: !10, file: !9, line: 467, type: !13, scopeLine: 467, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!9 = !DIFile(filename: "src/lit.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/syn-2.0.119", checksumkind: CSK_MD5, checksum: "73500a4ac1fae8e47b6d66b4c97f5f71")
!10 = !DINamespace(name: "LitInt", scope: !11)
!11 = !DINamespace(name: "lit", scope: !12)
!12 = !DINamespace(name: "syn", scope: null)
!13 = !DISubroutineType(types: !14)
!14 = !{}
!15 = !DILocation(line: 472, column: 14, scope: !8)
!16 = !DILocation(line: 1781, column: 20, scope: !17, inlinedAt: !22)
!17 = distinct !DISubprogram(name: "from_ascii_bytes_radix_impl", linkageName: "_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl", scope: !19, file: !18, line: 1773, type: !13, scopeLine: 1773, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!18 = !DIFile(filename: "library/core/src/num/mod.rs", directory: "/rustc/787af2b8c80638c51a4fc8e44f84e6891f243ec7", checksumkind: CSK_MD5, checksum: "c9961333aebae8d95a82edbd7ff5dc10")
!19 = !DINamespace(name: "{impl#33}", scope: !20)
!20 = !DINamespace(name: "num", scope: !21)
!21 = !DINamespace(name: "core", scope: null)
!22 = distinct !DILocation(line: 1682, column: 17, scope: !23, inlinedAt: !24)
!23 = distinct !DISubprogram(name: "from_str_radix", linkageName: "_RNvMsv_NtCs3oUPovFnLWP_4core3numj14from_str_radix", scope: !19, file: !18, line: 1681, type: !13, scopeLine: 1681, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!24 = distinct !DILocation(line: 1631, column: 17, scope: !25, inlinedAt: !27)
!25 = distinct !DISubprogram(name: "from_str", linkageName: "_RNvXsu_NtCs3oUPovFnLWP_4core3numjNtNtNtB7_3str6traits7FromStr8from_str", scope: !26, file: !18, line: 1630, type: !13, scopeLine: 1630, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!26 = !DINamespace(name: "{impl#32}", scope: !20)
!27 = distinct !DILocation(line: 2783, column: 9, scope: !28, inlinedAt: !32)
!28 = distinct !DISubprogram(name: "parse<usize>", linkageName: "_RINvMNtCs3oUPovFnLWP_4core3stre5parsejECs7fhJ7v7hOxk_18foundations_macros", scope: !30, file: !29, line: 2782, type: !13, scopeLine: 2782, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!29 = !DIFile(filename: "library/core/src/str/mod.rs", directory: "/rustc/787af2b8c80638c51a4fc8e44f84e6891f243ec7", checksumkind: CSK_MD5, checksum: "ee5db8a06788b44667bc8f81edc68c2b")
!30 = !DINamespace(name: "{impl#0}", scope: !31)
!31 = !DINamespace(name: "str", scope: !21)
!32 = distinct !DILocation(line: 473, column: 14, scope: !8)
!33 = !DILocation(line: 1788, column: 49, scope: !34, inlinedAt: !22)
!34 = distinct !DILexicalBlock(scope: !17, file: !18, line: 1786, column: 17)
!35 = !{!36, !38, !40}
!36 = distinct !{!36, !37, !"_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl: argument 1"}
!37 = distinct !{!37, !"_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl"}
!38 = distinct !{!38, !39, !"_RNvXsu_NtCs3oUPovFnLWP_4core3numjNtNtNtB7_3str6traits7FromStr8from_str: argument 1"}
!39 = distinct !{!39, !"_RNvXsu_NtCs3oUPovFnLWP_4core3numjNtNtNtB7_3str6traits7FromStr8from_str"}
!40 = distinct !{!40, !41, !"_RINvMNtCs3oUPovFnLWP_4core3stre5parsejECs7fhJ7v7hOxk_18foundations_macros: argument 1"}
!41 = distinct !{!41, !"_RINvMNtCs3oUPovFnLWP_4core3stre5parsejECs7fhJ7v7hOxk_18foundations_macros"}
!42 = !{!43, !44, !45}
!43 = distinct !{!43, !37, !"_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl: argument 0"}
!44 = distinct !{!44, !39, !"_RNvXsu_NtCs3oUPovFnLWP_4core3numjNtNtNtB7_3str6traits7FromStr8from_str: argument 0"}
!45 = distinct !{!45, !41, !"_RINvMNtCs3oUPovFnLWP_4core3stre5parsejECs7fhJ7v7hOxk_18foundations_macros: argument 0"}
!46 = !DILocation(line: 1574, column: 5, scope: !47, inlinedAt: !48)
!47 = distinct !DISubprogram(name: "can_not_overflow<usize>", linkageName: "_RINvNtCs3oUPovFnLWP_4core3num16can_not_overflowjECs7fhJ7v7hOxk_18foundations_macros", scope: !20, file: !18, line: 1573, type: !13, scopeLine: 1573, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!48 = distinct !DILocation(line: 1808, column: 20, scope: !49, inlinedAt: !22)
!49 = distinct !DILexicalBlock(scope: !50, file: !18, line: 1797, column: 17)
!50 = distinct !DILexicalBlock(scope: !34, file: !18, line: 1788, column: 17)
!51 = !DILocation(line: 1819, column: 39, scope: !52, inlinedAt: !22)
!52 = distinct !DILexicalBlock(scope: !49, file: !18, line: 1819, column: 63)
!53 = !DILocation(line: 1835, column: 39, scope: !54, inlinedAt: !22)
!54 = distinct !DILexicalBlock(scope: !49, file: !18, line: 1835, column: 63)
!55 = !DILocation(line: 1835, column: 43, scope: !54, inlinedAt: !22)
!56 = !DILocation(line: 3242, column: 26, scope: !57, inlinedAt: !60)
!57 = distinct !DISubprogram(name: "overflowing_mul", linkageName: "_RNvMs9_NtCs3oUPovFnLWP_4core3numj15overflowing_mul", scope: !59, file: !58, line: 3241, type: !13, scopeLine: 3241, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!58 = !DIFile(filename: "library/core/src/num/uint_macros.rs", directory: "/rustc/787af2b8c80638c51a4fc8e44f84e6891f243ec7", checksumkind: CSK_MD5, checksum: "346a9515419f6590f35e1630dc7e24c4")
!59 = !DINamespace(name: "{impl#11}", scope: !20)
!60 = distinct !DILocation(line: 1360, column: 31, scope: !61, inlinedAt: !62)
!61 = distinct !DISubprogram(name: "checked_mul", linkageName: "_RNvMs9_NtCs3oUPovFnLWP_4core3numj11checked_mul", scope: !59, file: !58, line: 1359, type: !13, scopeLine: 1359, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!62 = distinct !DILocation(line: 1846, column: 50, scope: !54, inlinedAt: !22)
!63 = !DILocation(line: 1847, column: 57, scope: !64, inlinedAt: !22)
!64 = distinct !DILexicalBlock(scope: !54, file: !18, line: 1846, column: 33)
!65 = !DILocation(line: 483, column: 8, scope: !66, inlinedAt: !69)
!66 = distinct !DISubprogram(name: "unlikely", linkageName: "_RNvNtCs3oUPovFnLWP_4core10intrinsics8unlikely", scope: !68, file: !67, line: 482, type: !13, scopeLine: 482, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!67 = !DIFile(filename: "library/core/src/intrinsics/mod.rs", directory: "/rustc/787af2b8c80638c51a4fc8e44f84e6891f243ec7", checksumkind: CSK_MD5, checksum: "cdd76b41ea32a17eb38c53512f90b3b6")
!68 = !DINamespace(name: "intrinsics", scope: !21)
!69 = distinct !DILocation(line: 1361, column: 16, scope: !70, inlinedAt: !62)
!70 = distinct !DILexicalBlock(scope: !61, file: !58, line: 1360, column: 13)
!71 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!72 = !DILocation(line: 1847, column: 56, scope: !64, inlinedAt: !22)
!73 = !DILocation(line: 2719, column: 13, scope: !74, inlinedAt: !76)
!74 = distinct !DISubprogram(name: "wrapping_sub", linkageName: "_RNvMs6_NtCs3oUPovFnLWP_4core3numm12wrapping_sub", scope: !75, file: !58, line: 2718, type: !13, scopeLine: 2718, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!75 = !DINamespace(name: "{impl#8}", scope: !20)
!76 = distinct !DILocation(line: 424, column: 27, scope: !77, inlinedAt: !82)
!77 = distinct !DISubprogram(name: "to_digit", linkageName: "_RNvMNtNtCs3oUPovFnLWP_4core4char7methodsc8to_digit", scope: !79, file: !78, line: 406, type: !13, scopeLine: 406, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!78 = !DIFile(filename: "library/core/src/char/methods.rs", directory: "/rustc/787af2b8c80638c51a4fc8e44f84e6891f243ec7", checksumkind: CSK_MD5, checksum: "c381eae6cf3a72bdac180e2569a5879d")
!79 = !DINamespace(name: "{impl#0}", scope: !80)
!80 = !DINamespace(name: "methods", scope: !81)
!81 = !DINamespace(name: "char", scope: !21)
!82 = distinct !DILocation(line: 1847, column: 69, scope: !64, inlinedAt: !22)
!83 = !DILocation(line: 427, column: 12, scope: !84, inlinedAt: !82)
!84 = distinct !DILexicalBlock(scope: !77, file: !78, line: 412, column: 9)
!85 = !DILocation(line: 1801, column: 25, scope: !64, inlinedAt: !22)
!86 = !DILocation(line: 427, column: 12, scope: !84, inlinedAt: !87)
!87 = distinct !DILocation(line: 1847, column: 69, scope: !64, inlinedAt: !22)
!88 = !DILocation(line: 1847, column: 41, scope: !64, inlinedAt: !22)
!89 = !DILocation(line: 968, column: 37, scope: !90, inlinedAt: !91)
!90 = distinct !DISubprogram(name: "checked_add", linkageName: "_RNvMs9_NtCs3oUPovFnLWP_4core3numj11checked_add", scope: !59, file: !58, line: 960, type: !13, scopeLine: 960, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!91 = distinct !DILocation(line: 1849, column: 68, scope: !92, inlinedAt: !22)
!92 = distinct !DILexicalBlock(scope: !64, file: !18, line: 1847, column: 33)
!93 = !DILocation(line: 483, column: 8, scope: !66, inlinedAt: !94)
!94 = distinct !DILocation(line: 968, column: 16, scope: !90, inlinedAt: !91)
!95 = !DILocation(line: 1821, column: 57, scope: !52, inlinedAt: !22)
!96 = !DILocation(line: 1821, column: 56, scope: !52, inlinedAt: !22)
!97 = !DILocation(line: 2719, column: 13, scope: !74, inlinedAt: !98)
!98 = distinct !DILocation(line: 424, column: 27, scope: !77, inlinedAt: !99)
!99 = distinct !DILocation(line: 1821, column: 69, scope: !52, inlinedAt: !22)
!100 = !DILocation(line: 427, column: 12, scope: !84, inlinedAt: !99)
!101 = !DILocation(line: 1801, column: 25, scope: !52, inlinedAt: !22)
!102 = !DILocation(line: 1820, column: 33, scope: !52, inlinedAt: !22)
!103 = !DILocation(line: 1819, column: 43, scope: !52, inlinedAt: !22)
!104 = !DILocation(line: 1822, column: 72, scope: !105, inlinedAt: !22)
!105 = distinct !DILexicalBlock(scope: !52, file: !18, line: 1821, column: 33)
!106 = !DILocation(line: 1822, column: 33, scope: !105, inlinedAt: !22)
!107 = !DILocation(line: 474, column: 44, scope: !108, inlinedAt: !111)
!108 = distinct !DISubprogram(name: "{closure#0}<usize>", linkageName: "_RNCINvMs3_NtCs6bAnw1I7Lci_3syn3litNtB8_6LitInt12base10_parsejE0Cs7fhJ7v7hOxk_18foundations_macros", scope: !109, file: !9, line: 474, type: !13, scopeLine: 474, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!109 = !DINamespace(name: "base10_parse", scope: !110)
!110 = !DINamespace(name: "{impl#5}", scope: !11)
!111 = distinct !DILocation(line: 967, column: 27, scope: !112, inlinedAt: !117)
!112 = distinct !DILexicalBlock(scope: !114, file: !113, line: 967, column: 13)
!113 = !DIFile(filename: "library/core/src/result.rs", directory: "/rustc/787af2b8c80638c51a4fc8e44f84e6891f243ec7", checksumkind: CSK_MD5, checksum: "5af8c7c98761d3bc099f026809edb96a")
!114 = distinct !DISubprogram(name: "map_err<usize, core::num::error::ParseIntError, syn::error::Error, syn::lit::{impl#5}::base10_parse::{closure_env#0}<usize>>", linkageName: "_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultjNtNtNtB5_3num5error13ParseIntErrorE7map_errNtNtCs6bAnw1I7Lci_3syn5error5ErrorNCINvMs3_NtB1u_3litNtB27_6LitInt12base10_parsejE0ECs7fhJ7v7hOxk_18foundations_macros", scope: !115, file: !113, line: 961, type: !13, scopeLine: 961, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!115 = !DINamespace(name: "Result", scope: !116)
!116 = !DINamespace(name: "result", scope: !21)
!117 = distinct !DILocation(line: 474, column: 14, scope: !8)
!118 = !{!119, !121, !123}
!119 = distinct !{!119, !120, !"_RNCINvMs3_NtCs6bAnw1I7Lci_3syn3litNtB8_6LitInt12base10_parsejE0Cs7fhJ7v7hOxk_18foundations_macros: argument 0"}
!120 = distinct !{!120, !"_RNCINvMs3_NtCs6bAnw1I7Lci_3syn3litNtB8_6LitInt12base10_parsejE0Cs7fhJ7v7hOxk_18foundations_macros"}
!121 = distinct !{!121, !122, !"_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultjNtNtNtB5_3num5error13ParseIntErrorE7map_errNtNtCs6bAnw1I7Lci_3syn5error5ErrorNCINvMs3_NtB1u_3litNtB27_6LitInt12base10_parsejE0ECs7fhJ7v7hOxk_18foundations_macros: argument 0"}
!122 = distinct !{!122, !"_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultjNtNtNtB5_3num5error13ParseIntErrorE7map_errNtNtCs6bAnw1I7Lci_3syn5error5ErrorNCINvMs3_NtB1u_3litNtB27_6LitInt12base10_parsejE0ECs7fhJ7v7hOxk_18foundations_macros"}
!123 = distinct !{!123, !122, !"_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultjNtNtNtB5_3num5error13ParseIntErrorE7map_errNtNtCs6bAnw1I7Lci_3syn5error5ErrorNCINvMs3_NtB1u_3litNtB27_6LitInt12base10_parsejE0ECs7fhJ7v7hOxk_18foundations_macros: argument 1"}
!124 = !DILocation(line: 474, column: 28, scope: !108, inlinedAt: !111)
!125 = !{!123}
!126 = !DILocation(line: 967, column: 32, scope: !114, inlinedAt: !117)
!127 = !{!121}
!128 = !DILocation(line: 474, column: 14, scope: !8)
!129 = !DILocation(line: 966, column: 22, scope: !130, inlinedAt: !117)
!130 = distinct !DILexicalBlock(scope: !114, file: !113, line: 966, column: 13)
!131 = !{!123, !132}
!132 = distinct !{!132, !122, !"_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultjNtNtNtB5_3num5error13ParseIntErrorE7map_errNtNtCs6bAnw1I7Lci_3syn5error5ErrorNCINvMs3_NtB1u_3litNtB27_6LitInt12base10_parsejE0ECs7fhJ7v7hOxk_18foundations_macros: argument 2"}
!133 = !DILocation(line: 969, column: 5, scope: !114, inlinedAt: !117)
!134 = !DILocation(line: 475, column: 6, scope: !8)
!135 = distinct !DISubprogram(name: "drop_glue<core::option::Option<alloc::boxed::Box<syn::ty::Type, alloc::alloc::Global>>>", linkageName: "_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCs6bAnw1I7Lci_3syn2ty4TypeEEECs7fhJ7v7hOxk_18foundations_macros", scope: !137, file: !136, line: 848, type: !13, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!136 = !DIFile(filename: "library/core/src/ptr/mod.rs", directory: "/rustc/787af2b8c80638c51a4fc8e44f84e6891f243ec7", checksumkind: CSK_MD5, checksum: "12e6c19690090f0e2a4a613812116df7")
!137 = !DINamespace(name: "ptr", scope: !21)
!138 = !DILocation(line: 848, column: 1, scope: !135)
!139 = !{i64 8}
!140 = !DILocation(line: 848, column: 1, scope: !141, inlinedAt: !142)
!141 = distinct !DISubprogram(name: "drop_glue<alloc::boxed::Box<syn::ty::Type, alloc::alloc::Global>>", linkageName: "_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCs6bAnw1I7Lci_3syn2ty4TypeEECs7fhJ7v7hOxk_18foundations_macros", scope: !137, file: !136, line: 848, type: !13, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!142 = distinct !DILocation(line: 848, column: 1, scope: !135)
!143 = !{!144}
!144 = distinct !{!144, !145, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCs6bAnw1I7Lci_3syn2ty4TypeEECs7fhJ7v7hOxk_18foundations_macros: argument 0"}
!145 = distinct !{!145, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCs6bAnw1I7Lci_3syn2ty4TypeEECs7fhJ7v7hOxk_18foundations_macros"}
!146 = !{ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCs6bAnw1I7Lci_3syn2ty4TypeEECs7fhJ7v7hOxk_18foundations_macros}
!147 = !DILocation(line: 175, column: 14, scope: !148, inlinedAt: !152)
!148 = distinct !DISubprogram(name: "dealloc_nonnull", linkageName: "_RNvNtCs1xwejQucwHj_5alloc5alloc15dealloc_nonnull", scope: !150, file: !149, line: 174, type: !13, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!149 = !DIFile(filename: "library/alloc/src/alloc.rs", directory: "/rustc/787af2b8c80638c51a4fc8e44f84e6891f243ec7", checksumkind: CSK_MD5, checksum: "87b4d0ba26e1dfe94542079de6981d97")
!150 = !DINamespace(name: "alloc", scope: !151)
!151 = !DINamespace(name: "alloc", scope: null)
!152 = distinct !DILocation(line: 321, column: 22, scope: !153, inlinedAt: !155)
!153 = distinct !DISubprogram(name: "deallocate_impl_runtime", linkageName: "_RNvMs0_NtCs1xwejQucwHj_5alloc5allocNtB5_6Global23deallocate_impl_runtime", scope: !154, file: !149, line: 311, type: !13, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!154 = !DINamespace(name: "Global", scope: !150)
!155 = distinct !DILocation(line: 436, column: 9, scope: !156, inlinedAt: !157)
!156 = distinct !DISubprogram(name: "deallocate_impl", linkageName: "_RNvMs0_NtCs1xwejQucwHj_5alloc5allocNtB5_6Global15deallocate_impl", scope: !154, file: !149, line: 435, type: !13, scopeLine: 435, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!157 = distinct !DILocation(line: 554, column: 23, scope: !158, inlinedAt: !161)
!158 = distinct !DISubprogram(name: "deallocate", linkageName: "_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate", scope: !159, file: !149, line: 552, type: !160, scopeLine: 552, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!159 = !DINamespace(name: "{impl#3}", scope: !150)
!160 = !DISubroutineType(cc: DW_CC_nocall, types: !14)
!161 = distinct !DILocation(line: 1995, column: 24, scope: !162, inlinedAt: !168)
!162 = distinct !DILexicalBlock(scope: !164, file: !163, line: 1993, column: 13)
!163 = !DIFile(filename: "library/alloc/src/boxed.rs", directory: "/rustc/787af2b8c80638c51a4fc8e44f84e6891f243ec7", checksumkind: CSK_MD5, checksum: "65407215dcd5339fcbd8a1149aa3d75e")
!164 = distinct !DILexicalBlock(scope: !165, file: !163, line: 1990, column: 9)
!165 = distinct !DISubprogram(name: "drop<syn::ty::Type, alloc::alloc::Global>", linkageName: "_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxNtNtCs6bAnw1I7Lci_3syn2ty4TypeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7fhJ7v7hOxk_18foundations_macros", scope: !166, file: !163, line: 1987, type: !160, scopeLine: 1987, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!166 = !DINamespace(name: "{impl#10}", scope: !167)
!167 = !DINamespace(name: "boxed", scope: !151)
!168 = distinct !DILocation(line: 848, column: 1, scope: !141, inlinedAt: !142)
!169 = !DILocation(line: 175, column: 14, scope: !148, inlinedAt: !170)
!170 = distinct !DILocation(line: 321, column: 22, scope: !153, inlinedAt: !171)
!171 = distinct !DILocation(line: 436, column: 9, scope: !156, inlinedAt: !172)
!172 = distinct !DILocation(line: 554, column: 23, scope: !158, inlinedAt: !173)
!173 = distinct !DILocation(line: 1995, column: 24, scope: !162, inlinedAt: !174)
!174 = distinct !DILocation(line: 848, column: 1, scope: !141, inlinedAt: !142)
!175 = distinct !DISubprogram(name: "drop_glue<core::option::Option<alloc::boxed::Box<syn::pat::Pat, alloc::alloc::Global>>>", linkageName: "_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCs6bAnw1I7Lci_3syn3pat3PatEEECs7fhJ7v7hOxk_18foundations_macros", scope: !137, file: !136, line: 848, type: !13, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!176 = !DILocation(line: 848, column: 1, scope: !175)
!177 = !DILocation(line: 848, column: 1, scope: !178, inlinedAt: !179)
!178 = distinct !DISubprogram(name: "drop_glue<alloc::boxed::Box<syn::pat::Pat, alloc::alloc::Global>>", linkageName: "_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCs6bAnw1I7Lci_3syn3pat3PatEECs7fhJ7v7hOxk_18foundations_macros", scope: !137, file: !136, line: 848, type: !13, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !14)
!179 = distinct !DILocation(line: 848, column: 1, scope: !175)
!180 = !{!181}
!181 = distinct !{!181, !182, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCs6bAnw1I7Lci_3syn3pat3PatEECs7fhJ7v7hOxk_18foundations_macros: argument 0"}
!182 = distinct !{!182, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCs6bAnw1I7Lci_3syn3pat3PatEECs7fhJ7v7hOxk_18foundations_macros"}
!183 = !{ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCs6bAnw1I7Lci_3syn3pat3PatEECs7fhJ7v7hOxk_18foundations_macros}
!184 = !DILocation(line: 175, column: 14, scope: !148, inlinedAt: !185)
!185 = distinct !DILocation(line: 321, column: 22, scope: !153, inlinedAt: !186)
!186 = distinct !DILocation(line: 436, column: 9, scope: !156, inlinedAt: !187)
!187 = distinct !DILocation(line: 554, column: 23, scope: !158, inlinedAt: !188)
!188 = distinct !DILocation(line: 1995, column: 24, scope: !189, inlinedAt: !192)
!189 = distinct !DILexicalBlock(scope: !190, file: !163, line: 1993, column: 13)
end_hunk_1
