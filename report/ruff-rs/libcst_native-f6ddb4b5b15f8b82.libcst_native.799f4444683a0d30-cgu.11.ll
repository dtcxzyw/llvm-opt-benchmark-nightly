Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/libcst_native-f6ddb4b5b15f8b82.libcst_native.799f4444683a0d30-cgu.11?download=true
inline.NumInlined: 599
inline.NumDeleted: 240
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [98 x i8] c"/rustc/8bab26f4f68e0e26f0bb7960be334d5b520ea452/library/core/src/slice/sort/unstable/quicksort.rs\00", align 1, !guid !6
@1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"a\00\00\00\00\00\00\00o\00\00\00\0B\00\00\00" }>, align 8, !guid !6
@2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"a\00\00\00\00\00\00\00\85\00\00\00\0B\00\00\00" }>, align 8, !guid !6
@3 = private unnamed_addr constant [9 x i8] c"mid > len", align 1, !guid !6
@_RNvNCNKNvNtNtCsarohYtwVpE2_13libcst_native6parser7numbers10INTEGER_RE0023___RUST_STD_INTERNAL_VAL = internal thread_local global <{ [32 x i8], [1 x i8], [7 x i8] }> <{ [32 x i8] undef, [1 x i8] zeroinitializer, [7 x i8] undef }>, align 8, !guid !7
@_RNvNCNKNvNtNtCsarohYtwVpE2_13libcst_native6parser7numbers12IMAGINARY_RE0023___RUST_STD_INTERNAL_VAL = internal thread_local global <{ [32 x i8], [1 x i8], [7 x i8] }> <{ [32 x i8] undef, [1 x i8] zeroinitializer, [7 x i8] undef }>, align 8, !guid !8
@_RNvNCNKNvNtNtCsarohYtwVpE2_13libcst_native6parser7numbers8FLOAT_RE0023___RUST_STD_INTERNAL_VAL = internal thread_local global <{ [32 x i8], [1 x i8], [7 x i8] }> <{ [32 x i8] undef, [1 x i8] zeroinitializer, [7 x i8] undef }>, align 8, !guid !9
@4 = private unnamed_addr constant [63 x i8] c"([0-9](?:_?[0-9])*\\.(?:[0-9](?:_?[0-9])*)?|\\.[0-9](?:_?[0-9])*)", align 1, !guid !6
@_RNvNtNtCsarohYtwVpE2_13libcst_native6parser7numbers11POINT_FLOAT = hidden local_unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @4, [8 x i8] c"?\00\00\00\00\00\00\00" }>, align 8, !guid !10
@5 = private unnamed_addr constant ptr @_RNvYNCNKNvNtNtCsarohYtwVpE2_13libcst_native6parser7numbers10INTEGER_RE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1f_6option6OptionQIB1U_NtNtNtCs44bUZaa7qIB_5regex5regex6string5RegexEEEE9call_onceBc_, align 8, !guid !6
@6 = private unnamed_addr constant ptr @_RNvYNCNKNvNtNtCsarohYtwVpE2_13libcst_native6parser7numbers8FLOAT_RE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtNtNtCs44bUZaa7qIB_5regex5regex6string5RegexEEEE9call_onceBc_, align 8, !guid !6
@7 = private unnamed_addr constant ptr @_RNvYNCNKNvNtNtCsarohYtwVpE2_13libcst_native6parser7numbers12IMAGINARY_RE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1h_6option6OptionQIB1W_NtNtNtCs44bUZaa7qIB_5regex5regex6string5RegexEEEE9call_onceBc_, align 8, !guid !6
@8 = private unnamed_addr constant [16 x i8] c"0[bB](?:_?[01])+", align 1, !guid !6
@_RNvNtNtCsarohYtwVpE2_13libcst_native6parser7numbers3BIN = hidden local_unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @8, [8 x i8] c"\10\00\00\00\00\00\00\00" }>, align 8, !guid !11
@9 = private unnamed_addr constant [23 x i8] c"0[xX](?:_?[0-9a-fA-F])+", align 1, !guid !6
@_RNvNtNtCsarohYtwVpE2_13libcst_native6parser7numbers3HEX = hidden local_unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @9, [8 x i8] c"\17\00\00\00\00\00\00\00" }>, align 8, !guid !12
@10 = private unnamed_addr constant [17 x i8] c"0[oO](?:_?[0-7])+", align 1, !guid !6
@_RNvNtNtCsarohYtwVpE2_13libcst_native6parser7numbers3OCT = hidden local_unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @10, [8 x i8] c"\11\00\00\00\00\00\00\00" }>, align 8, !guid !13
@11 = private unnamed_addr constant [31 x i8] c"(?:0(?:_?0)*|[1-9](?:_?[0-9])*)", align 1, !guid !6
@_RNvNtNtCsarohYtwVpE2_13libcst_native6parser7numbers7DECIMAL = hidden local_unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @11, [8 x i8] c"\1F\00\00\00\00\00\00\00" }>, align 8, !guid !14
@12 = private unnamed_addr constant [26 x i8] c"[eE][-+]?[0-9](?:_?[0-9])*", align 1, !guid !6
@_RNvNtNtCsarohYtwVpE2_13libcst_native6parser7numbers8EXPONENT = hidden local_unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @12, [8 x i8] c"\1A\00\00\00\00\00\00\00" }>, align 8, !guid !15
@13 = private unnamed_addr constant [17 x i8] c"[0-9](?:_?[0-9])*", align 1, !guid !6
@_RNvNtNtCsarohYtwVpE2_13libcst_native6parser7numbers9EXP_FLOAT = hidden local_unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @13, [8 x i8] c"\11\00\00\00\00\00\00\00" }>, align 8, !guid !16
@14 = private unnamed_addr constant [102 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/libcst-1.8.6/src/nodes/module.rs\00", align 1, !guid !6
@15 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @14, [16 x i8] c"e\00\00\00\00\00\00\00P\00\00\00(\00\00\00" }>, align 8, !guid !6
@16 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @14, [16 x i8] c"e\00\00\00\00\00\00\00?\00\00\004\00\00\00" }>, align 8, !guid !6
@switch.table._RNvXs_NtNtCsarohYtwVpE2_13libcst_native5nodes6moduleNtB4_14DeflatedModuleNtNtB6_6traits7Inflate7inflate = private unnamed_addr constant [9 x i16] [i16 1656, i16 24, i16 40, i16 24, i16 144, i16 32, i16 32, i16 32, i16 48], align 8

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEEB1n_(i64 %.0.val, ptr %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality !guid !29 {
bb.a:
  switch i64 %.0.val, label %bb.d [
    i64 2, label %bb.f
    i64 0, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression12DeflatedNameEBH_(ptr noalias noundef nonnull align 8 dereferenceable(64) %.8.val)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEBH_.exit unwind label %bb.c

common.resume.i:                                  ; preds = %bb.e, %bb.c
  %.sink.i = phi i64 [ 128, %bb.e ], [ 64, %bb.c ]
  %common.resume.op.i = phi { ptr, i32 } [ %i.b, %bb.e ], [ %i.a, %bb.c ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef %.sink.i, i64 noundef 8) #19
  resume { ptr, i32 } %common.resume.op.i

bb.c:                                             ; preds = %bb.b
  %i.a = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i

bb.d:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression17DeflatedAttributeEBH_(ptr noalias noundef nonnull align 8 dereferenceable(128) %.8.val)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEBH_.exit unwind label %bb.e, !inline_history !0

bb.e:                                             ; preds = %bb.d
  %i.b = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEBH_.exit: ; preds = %bb.b, %bb.d
  %.sink1.i = phi i64 [ 64, %bb.b ], [ 128, %bb.d ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef %.sink1.i, i64 noundef 8) #19
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEBH_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement13DeflatedSuiteEEB1n_(ptr noalias noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !30 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !31, !noundef !17
  switch i64 %i.a, label %bb.b [
    i64 -2, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement13DeflatedSuiteEBH_.exit
    i64 -1, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement17DeflatedStatementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef nonnull align 8 dereferenceable(64) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement21DeflatedIndentedBlockEBH_.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement17DeflatedStatementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(64) %0)
          to label %common.resume.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20
  unreachable

common.resume.i:                                  ; preds = %bb.f, %bb.c
  %common.resume.op.i = phi { ptr, i32 } [ %i.b, %bb.c ], [ %i.e, %bb.f ]
  resume { ptr, i32 } %common.resume.op.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement21DeflatedIndentedBlockEBH_.exit.i: ; preds = %bb.b
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement17DeflatedStatementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(64) %0)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement13DeflatedSuiteEBH_.exit

bb.e:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement22DeflatedSmallStatementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.d)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement28DeflatedSimpleStatementSuiteEBH_.exit.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement22DeflatedSmallStatementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.d)
          to label %common.resume.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement28DeflatedSimpleStatementSuiteEBH_.exit.i: ; preds = %bb.e
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement22DeflatedSmallStatementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.d)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement13DeflatedSuiteEBH_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement13DeflatedSuiteEBH_.exit: ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement28DeflatedSimpleStatementSuiteEBH_.exit.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement21DeflatedIndentedBlockEBH_.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement22DeflatedSmallStatementEEB1n_(ptr noalias noundef nonnull align 8 dereferenceable(152) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !72 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !73, !noundef !17 ; 3 uses
  %.not = icmp eq i64 %i.a, -1
  br i1 %.not, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement22DeflatedSmallStatementEBH_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74)
  %i.b = xor i64 %i.a, -9223372036854775808
  %i.c = icmp slt i64 %i.a, 0
  %i.d = select i1 %i.c, i64 %i.b, i64 15
  switch i64 %i.d, label %bb.c [
    i64 0, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement22DeflatedSmallStatementEBH_.exit
    i64 1, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement22DeflatedSmallStatementEBH_.exit
    i64 2, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement22DeflatedSmallStatementEBH_.exit
    i64 3, label %bb.l
    i64 4, label %bb.n
    i64 5, label %bb.o
    i64 6, label %bb.u
    i64 7, label %bb.x
    i64 8, label %bb.aj
    i64 9, label %bb.ap
    i64 10, label %bb.aw
    i64 11, label %bb.bc
    i64 12, label %bb.bf
    i64 13, label %bb.bi
    i64 14, label %bb.bl
  ]

bb.c:                                             ; preds = %bb.b
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression12DeflatedNameEBH_(ptr noalias noundef nonnull align 8 dereferenceable(144) %0)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEEB1f_(ptr noalias noundef align 8 dereferenceable(8) %i.f) #21
          to label %.body.i.i unwind label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75)
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !76, !nonnull !17, !noundef !17 ; 3 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEBH_(ptr noalias noundef align 8 dereferenceable(16) %i.h) #22
          to label %bb.g unwind label %bb.f, !noalias !75, !inline_history !18

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.h, i64 noundef 16, i64 noundef 8) #19, !noalias !75, !inline_history !18
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.f, %bb.d
  %.pn.i.i = phi { ptr, i32 } [ %i.e, %bb.d ], [ %i.i, %bb.f ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement22DeflatedTypeParametersEEB13_(ptr noalias noundef align 8 dereferenceable(40) %i.j) #21
          to label %common.resume.i unwind label %bb.k

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.h, i64 noundef 16, i64 noundef 8) #19, !noalias !75, !inline_history !18
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.l = load i64, ptr %i.k, align 8, !range !19, !alias.scope !77, !noundef !17
  %i.m = icmp eq i64 %i.l, -1
  br i1 %i.m, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement22DeflatedSmallStatementEBH_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement17DeflatedTypeParamENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.k)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement22DeflatedTypeParametersEBH_.exit.i.i.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement17DeflatedTypeParamENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.k)
          to label %common.resume.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20
  unreachable

common.resume.i:                                  ; preds = %common.resume.i.i.i, %bb.bj, %bb.bg, %bb.bd, %bb.az, %bb.ay, %bb.as, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement18DeflatedAnnotationEBH_.exit.i.i, %.body.i5.i, %bb.ag, %.body3.i.i, %bb.v, %bb.q, %bb.p, %bb.i, %.body.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %common.resume.op.i.i.i, %common.resume.i.i.i ], [ %.pn.i.i, %.body.i.i ], [ %i.v, %bb.p ], [ %i.ae, %bb.v ], [ %.pn.i2.i, %.body3.i.i ], [ %eh.lpad-body.i.i, %.body.i5.i ], [ %.pn.i6.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement18DeflatedAnnotationEBH_.exit.i.i ], [ %i.br, %bb.ay ], [ %i.ca, %bb.bd ], [ %i.cd, %bb.bg ], [ %i.n, %bb.i ], [ %i.v, %bb.q ], [ %i.at, %bb.ag ], [ %.pn.i6.i, %bb.as ], [ %i.br, %bb.az ], [ %i.cg, %bb.bj ]
  resume { ptr, i32 } %common.resume.op.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement22DeflatedTypeParametersEBH_.exit.i.i.i: ; preds = %bb.h
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement17DeflatedTypeParamENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.k)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement22DeflatedSmallStatementEBH_.exit

bb.k:                                             ; preds = %.body.i.i, %bb.d
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.l:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !range !20, !alias.scope !78, !noundef !17
  %i.s = icmp eq i64 %i.r, -1
  br i1 %i.s, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement22DeflatedSmallStatementEBH_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEBH_(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.q), !inline_history !1
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement22DeflatedSmallStatementEBH_.exit

bb.n:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEBH_(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.t)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement22DeflatedSmallStatementEBH_.exit

bb.o:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEBH_(ptr noalias noundef nonnull readonly align 8 dereferenceable(56) %i.u)
          to label %bb.r unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !range !20, !alias.scope !80, !noundef !17
  %i.y = icmp eq i64 %i.x, -1
  br i1 %i.y, label %common.resume.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEBH_(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.w)
          to label %common.resume.i unwind label %bb.t, !inline_history !1

bb.r:                                             ; preds = %bb.o
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !range !20, !alias.scope !81, !noundef !17
  %i.ab = icmp eq i64 %i.aa, -1
  br i1 %i.ab, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement22DeflatedSmallStatementEBH_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEBH_(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.z), !inline_history !1
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement22DeflatedSmallStatementEBH_.exit

bb.t:                                             ; preds = %bb.q
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20, !noalias !82
  unreachable

bb.u:                                             ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement19DeflatedImportAliasENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.ad)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement14DeflatedImportEBH_.exit.i unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement19DeflatedImportAliasENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.ad)
          to label %common.resume.i unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement14DeflatedImportEBH_.exit.i: ; preds = %bb.u
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement19DeflatedImportAliasENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.ad)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement22DeflatedSmallStatementEBH_.exit

bb.x:                                             ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83)
  %.val.i.i = load i64, ptr %i.ag, align 8, !range !21, !alias.scope !84, !noundef !17
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val2.i.i = load ptr, ptr %i.ah, align 8, !alias.scope !84 ; 6 uses
  switch i64 %.val.i.i, label %bb.aa [
    i64 2, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEEB13_.exit.i.i
    i64 0, label %bb.y
  ]

bb.y:                                             ; preds = %bb.x
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression12DeflatedNameEBH_(ptr noalias noundef nonnull align 8 dereferenceable(64) %.val2.i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEBH_.exit.i.i.i unwind label %bb.z, !noalias !84

common.resume.i.i.i.i:                            ; preds = %bb.ab, %bb.z
  %.sink.i.i.i.i = phi i64 [ 128, %bb.ab ], [ 64, %bb.z ]
  %common.resume.op.i.i.i.i = phi { ptr, i32 } [ %i.ak, %bb.ab ], [ %i.aj, %bb.z ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i, i64 noundef %.sink.i.i.i.i, i64 noundef 8) #19, !noalias !84
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement19DeflatedImportNamesEBH_(ptr noalias noundef align 8 dereferenceable(24) %i.ai) #21
          to label %.body3.i.i unwind label %bb.ai

bb.z:                                             ; preds = %bb.y
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i.i.i.i

bb.aa:                                            ; preds = %bb.x
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression17DeflatedAttributeEBH_(ptr noalias noundef nonnull align 8 dereferenceable(128) %.val2.i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEBH_.exit.i.i.i unwind label %bb.ab, !noalias !84, !inline_history !0

bb.ab:                                            ; preds = %bb.aa
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i.i.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEBH_.exit.i.i.i: ; preds = %bb.aa, %bb.y
  %.sink1.i.i.i.i = phi i64 [ 64, %bb.y ], [ 128, %bb.aa ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i, i64 noundef %.sink1.i.i.i.i, i64 noundef 8) #19, !noalias !84
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEEB13_.exit.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEEB13_.exit.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEBH_.exit.i.i.i, %bb.x
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.am = load i64, ptr %i.al, align 8, !range !19, !alias.scope !85, !noundef !17
  %i.an = icmp eq i64 %i.am, -1
  br i1 %i.an, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement19DeflatedImportNamesEBH_.exit.i.i, label %bb.ac

bb.ac:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEEB13_.exit.i.i
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement19DeflatedImportAliasENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement19DeflatedImportAliasEEB1d_.exit.i.i.i unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ao = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement19DeflatedImportAliasENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %.body3.i.i unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement19DeflatedImportAliasEEB1d_.exit.i.i.i: ; preds = %bb.ac
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement19DeflatedImportAliasENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement19DeflatedImportNamesEBH_.exit.i.i unwind label %bb.af

.body3.i.i:                                       ; preds = %bb.af, %bb.ad, %common.resume.i.i.i.i
  %.pn.i2.i = phi { ptr, i32 } [ %common.resume.op.i.i.i.i, %common.resume.i.i.i.i ], [ %i.ar, %bb.af ], [ %i.ao, %bb.ad ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes2op11DeflatedDotEEB1d_(ptr noalias noundef align 8 dereferenceable(24) %i.aq) #21
          to label %common.resume.i unwind label %bb.ai

bb.af:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement19DeflatedImportAliasEEB1d_.exit.i.i.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body3.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement19DeflatedImportNamesEBH_.exit.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement19DeflatedImportAliasEEB1d_.exit.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEEB13_.exit.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes2op11DeflatedDotENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.as)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement18DeflatedImportFromEBH_.exit.i unwind label %bb.ag

bb.ag:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement19DeflatedImportNamesEBH_.exit.i.i
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes2op11DeflatedDotENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.as)
          to label %common.resume.i unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.ai:                                            ; preds = %.body3.i.i, %common.resume.i.i.i.i
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement18DeflatedImportFromEBH_.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement19DeflatedImportNamesEBH_.exit.i.i
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes2op11DeflatedDotENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.as)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement22DeflatedSmallStatementEBH_.exit

bb.aj:                                            ; preds = %bb.b
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement20DeflatedAssignTargetENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ax)
          to label %bb.al unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ay = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement20DeflatedAssignTargetENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ax)
          to label %.body.i5.i unwind label %bb.am

bb.al:                                            ; preds = %bb.aj
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement20DeflatedAssignTargetENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ax)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement14DeflatedAssignEBH_.exit.i unwind label %bb.an

bb.am:                                            ; preds = %bb.ak
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.an:                                            ; preds = %bb.al
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %.body.i5.i

.body.i5.i:                                       ; preds = %bb.an, %bb.ak
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.ba, %bb.an ], [ %i.ay, %bb.ak ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEBH_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.aw) #21
          to label %common.resume.i unwind label %bb.ao

bb.ao:                                            ; preds = %.body.i5.i
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement14DeflatedAssignEBH_.exit.i: ; preds = %bb.al
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEBH_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.aw)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement22DeflatedSmallStatementEBH_.exit

bb.ap:                                            ; preds = %bb.b
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement30DeflatedAssignTargetExpressionEBH_(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.bc)
          to label %bb.ar unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.bd = landingpad { ptr, i32 }
          cleanup
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEBH_(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.be)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement18DeflatedAnnotationEBH_.exit.i.i unwind label %bb.av, !inline_history !56

bb.ar:                                            ; preds = %bb.ap
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEBH_(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.bf)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement18DeflatedAnnotationEBH_.exit2.i.i unwind label %bb.at, !inline_history !56

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement18DeflatedAnnotationEBH_.exit.i.i: ; preds = %bb.at, %bb.aq
  %.pn.i6.i = phi { ptr, i32 } [ %i.bj, %bb.at ], [ %i.bd, %bb.aq ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !range !20, !alias.scope !87, !noundef !17
  %i.bi = icmp eq i64 %i.bh, -1
  br i1 %i.bi, label %common.resume.i, label %bb.as

bb.as:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement18DeflatedAnnotationEBH_.exit.i.i
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEBH_(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.bg)
          to label %common.resume.i unwind label %bb.av, !inline_history !1

bb.at:                                            ; preds = %bb.ar
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement18DeflatedAnnotationEBH_.exit.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement18DeflatedAnnotationEBH_.exit2.i.i: ; preds = %bb.ar
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !range !20, !alias.scope !88, !noundef !17
  %i.bm = icmp eq i64 %i.bl, -1
  br i1 %i.bm, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement22DeflatedSmallStatementEBH_.exit, label %bb.au

bb.au:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement18DeflatedAnnotationEBH_.exit2.i.i
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEBH_(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.bk), !inline_history !1
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement22DeflatedSmallStatementEBH_.exit

bb.av:                                            ; preds = %bb.as, %bb.aq
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20, !noalias !89
  unreachable

bb.aw:                                            ; preds = %bb.b
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90)
  %i.bp = load i64, ptr %i.bo, align 8, !range !20, !alias.scope !91, !noundef !17
  %i.bq = icmp eq i64 %i.bp, -1
  br i1 %i.bq, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEEB13_.exit.i8.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEBH_(ptr noalias noundef nonnull readonly align 8 dereferenceable(56) %i.bo)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEEB13_.exit.i8.i unwind label %bb.ay, !inline_history !1

bb.ay:                                            ; preds = %bb.ax
  %i.br = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !range !20, !alias.scope !92, !noundef !17
  %i.bu = icmp eq i64 %i.bt, -1
  br i1 %i.bu, label %common.resume.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEBH_(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.bs)
          to label %common.resume.i unwind label %bb.bb

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEEB13_.exit.i8.i: ; preds = %bb.ax, %bb.aw
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 8, !range !20, !alias.scope !93, !noundef !17
  %i.bx = icmp eq i64 %i.bw, -1
  br i1 %i.bx, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement22DeflatedSmallStatementEBH_.exit, label %bb.ba

bb.ba:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEEB13_.exit.i8.i
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEBH_(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.bv), !inline_history !69
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement22DeflatedSmallStatementEBH_.exit

bb.bb:                                            ; preds = %bb.az
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20, !noalias !94
  unreachable

bb.bc:                                            ; preds = %bb.b
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
end_hunk_0
