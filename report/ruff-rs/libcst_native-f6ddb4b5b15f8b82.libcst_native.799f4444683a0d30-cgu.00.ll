Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/libcst_native-f6ddb4b5b15f8b82.libcst_native.799f4444683a0d30-cgu.00?download=true
inline.NumInlined: 2779
inline.NumDeleted: 1045
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_RNvNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL = external thread_local global { { { [2 x i64] } }, i8, [7 x i8] }
@0 = private unnamed_addr constant [12 x i8] c"expected sum", align 1, !guid !18
@1 = private unnamed_addr constant [5 x i8] c"utf-8", align 1, !guid !18
@2 = private unnamed_addr constant [13 x i8] c"expected term", align 1, !guid !18
@3 = private unnamed_addr constant [14 x i8] c"expected power", align 1, !guid !18
@4 = private unnamed_addr constant [15 x i8] c"expected factor", align 1, !guid !18
@5 = private unnamed_addr constant [18 x i8] c"expected inversion", align 1, !guid !18
@6 = private unnamed_addr constant [19 x i8] c"expected bitwise_or", align 1, !guid !18
@7 = private unnamed_addr constant [1 x i8] c"|", align 1, !guid !18
@8 = private unnamed_addr constant [19 x i8] c"expected shift_expr", align 1, !guid !18
@9 = private unnamed_addr constant [20 x i8] c"expected bitwise_and", align 1, !guid !18
@10 = private unnamed_addr constant [20 x i8] c"expected bitwise_xor", align 1, !guid !18
@11 = private unnamed_addr constant [20 x i8] c"expected conjunction", align 1, !guid !18
@12 = private unnamed_addr constant [20 x i8] c"expected disjunction", align 1, !guid !18
@13 = private unnamed_addr constant [1 x i8] c";", align 1, !guid !18
@14 = private unnamed_addr constant [13 x i8] c"signed number", align 1, !guid !18
@15 = private unnamed_addr constant [10 x i8] c"comparison", align 1, !guid !18
@16 = private unnamed_addr constant [3 x i8] c"EOF", align 1, !guid !18
@17 = private unnamed_addr constant [7 x i8] c"NEWLINE", align 1, !guid !18
@18 = private unnamed_addr constant ptr @_RNvYNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsarohYtwVpE2_13libcst_native, align 8, !guid !18
@19 = private unnamed_addr constant [16 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 16, !guid !18
@20 = private unnamed_addr constant <{ ptr, [24 x i8] }> <{ ptr @19, [24 x i8] zeroinitializer }>, align 8, !guid !18
@21 = private unnamed_addr constant [2 x i8] c"is", align 1, !guid !18
@22 = private unnamed_addr constant [3 x i8] c"not", align 1, !guid !18
@23 = private unnamed_addr constant [2 x i8] c"in", align 1, !guid !18
@24 = private unnamed_addr constant [3 x i8] c"[t]", align 1, !guid !18
@25 = private unnamed_addr constant [1 x i8] c"+", align 1, !guid !18
@26 = private unnamed_addr constant [1 x i8] c"-", align 1, !guid !18
@27 = private unnamed_addr constant [4 x i8] c"True", align 1, !guid !18
@28 = private unnamed_addr constant [5 x i8] c"False", align 1, !guid !18
@29 = private unnamed_addr constant [4 x i8] c"None", align 1, !guid !18
@30 = private unnamed_addr constant [6 x i8] c"NUMBER", align 1, !guid !18
@31 = private unnamed_addr constant [1 x i8] c"(", align 1, !guid !18
@32 = private unnamed_addr constant [1 x i8] c"[", align 1, !guid !18
@33 = private unnamed_addr constant [1 x i8] c"{", align 1, !guid !18
@34 = private unnamed_addr constant [3 x i8] c"...", align 1, !guid !18
@35 = private unnamed_addr constant [1 x i8] c".", align 1, !guid !18
@36 = private unnamed_addr constant [2 x i8] c"**", align 1, !guid !18
@37 = private unnamed_addr constant [3 x i8] c"and", align 1, !guid !18
@38 = private unnamed_addr constant [2 x i8] c"as", align 1, !guid !18
@39 = private unnamed_addr constant [6 x i8] c"assert", align 1, !guid !18
@40 = private unnamed_addr constant [5 x i8] c"async", align 1, !guid !18
@41 = private unnamed_addr constant [5 x i8] c"await", align 1, !guid !18
@42 = private unnamed_addr constant [5 x i8] c"break", align 1, !guid !18
@43 = private unnamed_addr constant [5 x i8] c"class", align 1, !guid !18
@44 = private unnamed_addr constant [8 x i8] c"continue", align 1, !guid !18
@45 = private unnamed_addr constant [3 x i8] c"def", align 1, !guid !18
@46 = private unnamed_addr constant [3 x i8] c"del", align 1, !guid !18
@47 = private unnamed_addr constant [4 x i8] c"elif", align 1, !guid !18
@48 = private unnamed_addr constant [4 x i8] c"else", align 1, !guid !18
@49 = private unnamed_addr constant [6 x i8] c"except", align 1, !guid !18
@50 = private unnamed_addr constant [7 x i8] c"finally", align 1, !guid !18
@51 = private unnamed_addr constant [3 x i8] c"for", align 1, !guid !18
@52 = private unnamed_addr constant [4 x i8] c"from", align 1, !guid !18
@53 = private unnamed_addr constant [6 x i8] c"global", align 1, !guid !18
@54 = private unnamed_addr constant [2 x i8] c"if", align 1, !guid !18
@55 = private unnamed_addr constant [6 x i8] c"import", align 1, !guid !18
@56 = private unnamed_addr constant [6 x i8] c"lambda", align 1, !guid !18
@57 = private unnamed_addr constant [8 x i8] c"nonlocal", align 1, !guid !18
@58 = private unnamed_addr constant [2 x i8] c"or", align 1, !guid !18
@59 = private unnamed_addr constant [4 x i8] c"pass", align 1, !guid !18
@60 = private unnamed_addr constant [5 x i8] c"raise", align 1, !guid !18
@61 = private unnamed_addr constant [6 x i8] c"return", align 1, !guid !18
@62 = private unnamed_addr constant [3 x i8] c"try", align 1, !guid !18
@63 = private unnamed_addr constant [5 x i8] c"while", align 1, !guid !18
@64 = private unnamed_addr constant [4 x i8] c"with", align 1, !guid !18
@65 = private unnamed_addr constant [5 x i8] c"yield", align 1, !guid !18
@66 = private unnamed_addr constant [4 x i8] c"NAME", align 1, !guid !18
@67 = private unnamed_addr constant [1 x i8] c")", align 1, !guid !18
@68 = private unnamed_addr constant [1 x i8] c"*", align 1, !guid !18
@69 = private unnamed_addr constant [1 x i8] c"/", align 1, !guid !18
@70 = private unnamed_addr constant [2 x i8] c"//", align 1, !guid !18
@71 = private unnamed_addr constant [1 x i8] c"%", align 1, !guid !18
@72 = private unnamed_addr constant [1 x i8] c"@", align 1, !guid !18
@73 = private unnamed_addr constant [6 x i8] c"INDENT", align 1, !guid !18
@74 = private unnamed_addr constant [6 x i8] c"DEDENT", align 1, !guid !18
@75 = private unnamed_addr constant [1 x i8] c",", align 1, !guid !18
@76 = private unnamed_addr constant [1 x i8] c"]", align 1, !guid !18
@77 = private unnamed_addr constant [1 x i8] c":", align 1, !guid !18
@78 = private unnamed_addr constant [5 x i8] c"ASYNC", align 1, !guid !18
@79 = private unnamed_addr constant [1 x i8] c"=", align 1, !guid !18
@80 = private unnamed_addr constant [1 x i8] c"~", align 1, !guid !18
@81 = private unnamed_addr constant [1 x i8] c"}", align 1, !guid !18
@82 = private unnamed_addr constant [2 x i8] c"f\22", align 1, !guid !18
@83 = private unnamed_addr constant [1 x i8] c"\22", align 1, !guid !18
@84 = private unnamed_addr constant [6 x i8] c"STRING", align 1, !guid !18
@85 = private unnamed_addr constant [2 x i8] c"t\22", align 1, !guid !18
@86 = private unnamed_addr constant [71 x i8] c"Parser is nondeterministic: succeeded when reparsing for error position", align 1, !guid !18
@87 = private unnamed_addr constant [104 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/libcst-1.8.6/src/parser/grammar.rs\00", align 1, !guid !18
@88 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @87, [16 x i8] c"g\00\00\00\00\00\00\00\\\00\00\00\01\00\00\00" }>, align 8, !guid !18
@89 = private unnamed_addr constant [2 x i8] c"->", align 1, !guid !18
@90 = private unnamed_addr constant [17 x i8] c"f-string contents", align 1, !guid !18
@91 = private unnamed_addr constant [17 x i8] c"t-string contents", align 1, !guid !18
@92 = private unnamed_addr constant [2 x i8] c"+=", align 1, !guid !18
@93 = private unnamed_addr constant [2 x i8] c"-=", align 1, !guid !18
@94 = private unnamed_addr constant [2 x i8] c"*=", align 1, !guid !18
@95 = private unnamed_addr constant [2 x i8] c"@=", align 1, !guid !18
@96 = private unnamed_addr constant [2 x i8] c"/=", align 1, !guid !18
@97 = private unnamed_addr constant [2 x i8] c"%=", align 1, !guid !18
@98 = private unnamed_addr constant [2 x i8] c"&=", align 1, !guid !18
@99 = private unnamed_addr constant [2 x i8] c"|=", align 1, !guid !18
@100 = private unnamed_addr constant [2 x i8] c"^=", align 1, !guid !18
@101 = private unnamed_addr constant [3 x i8] c"<<=", align 1, !guid !18
@102 = private unnamed_addr constant [3 x i8] c">>=", align 1, !guid !18
@103 = private unnamed_addr constant [3 x i8] c"**=", align 1, !guid !18
@104 = private unnamed_addr constant [3 x i8] c"//=", align 1, !guid !18
@105 = private unnamed_addr constant [6 x i8] c"aug_op", align 1, !guid !18
@106 = private unnamed_addr constant [4 x i8] c"type", align 1, !guid !18
@107 = private unnamed_addr constant [4 x i8] c"case", align 1, !guid !18
@108 = private unnamed_addr constant [5 x i8] c"match", align 1, !guid !18
@109 = private unnamed_addr constant [2 x i8] c"<<", align 1, !guid !18
@110 = private unnamed_addr constant [2 x i8] c">>", align 1, !guid !18
@111 = private unnamed_addr constant [1 x i8] c"&", align 1, !guid !18
@112 = private unnamed_addr constant [1 x i8] c"^", align 1, !guid !18
@113 = private unnamed_addr constant [6 x i8] c"number", align 1, !guid !18
@114 = private unnamed_addr constant [1 x i8] c"r", align 1, !guid !18
@115 = private unnamed_addr constant [1 x i8] c"s", align 1, !guid !18
@116 = private unnamed_addr constant [1 x i8] c"a", align 1, !guid !18
@117 = private unnamed_addr constant [5 x i8] c"AWAIT", align 1, !guid !18
@118 = private unnamed_addr constant [1 x i8] c"!", align 1, !guid !18
@119 = private unnamed_addr constant [14 x i8] c"complex number", align 1, !guid !18
@120 = private unnamed_addr constant [2 x i8] c":=", align 1, !guid !18
@121 = private unnamed_addr constant [1 x i8] c"_", align 1, !guid !18
@122 = private unnamed_addr constant [18 x i8] c"signed real number", align 1, !guid !18
@123 = private unnamed_addr constant [2 x i8] c"==", align 1, !guid !18
@124 = private unnamed_addr constant [2 x i8] c"!=", align 1, !guid !18
@125 = private unnamed_addr constant [2 x i8] c"<=", align 1, !guid !18
@126 = private unnamed_addr constant [1 x i8] c"<", align 1, !guid !18
@127 = private unnamed_addr constant [2 x i8] c">=", align 1, !guid !18
@128 = private unnamed_addr constant [1 x i8] c">", align 1, !guid !18
@switch.table._RNvNtNtNtCsarohYtwVpE2_13libcst_native6parser7grammar6python19___parse_del_targets.336 = private unnamed_addr constant [5 x i8] c"\00\09\0A\10\13", align 8
@switch.table._RNvNtNtNtCsarohYtwVpE2_13libcst_native6parser7grammar6python29___parse_target_with_star_atom.339 = private unnamed_addr constant [6 x i64] [i64 0, i64 9, i64 -1, i64 10, i64 16, i64 19], align 8

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEEB1n_(i64 %.0.val, ptr %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality !guid !50 {
bb.a:
  %.not = icmp eq i64 %.0.val, 2
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %0 = icmp eq i64 %.0.val, 0
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  br i1 %0, label %1, label %bb.d

1:                                                ; preds = %bb.b
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression12DeflatedNameEBH_(ptr noalias noundef nonnull align 8 dereferenceable(64) %.8.val)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEBH_.exit unwind label %bb.c

common.resume.i:                                  ; preds = %bb.e, %bb.c
  %.sink.i = phi i64 [ 128, %bb.e ], [ 64, %bb.c ]
  %common.resume.op.i = phi { ptr, i32 } [ %i.b, %bb.e ], [ %i.a, %bb.c ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef %.sink.i, i64 noundef 8) #17
  resume { ptr, i32 } %common.resume.op.i

bb.c:                                             ; preds = %1
  %i.a = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i

bb.d:                                             ; preds = %bb.b
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression17DeflatedAttributeEBH_(ptr noalias noundef nonnull align 8 dereferenceable(128) %.8.val)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEBH_.exit unwind label %bb.e, !inline_history !0

bb.e:                                             ; preds = %bb.d
  %i.b = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEBH_.exit: ; preds = %1, %bb.d
  %.sink1.i = phi i64 [ 64, %1 ], [ 128, %bb.d ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef %.sink1.i, i64 noundef 8) #17
  br label %bb.f

bb.f:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEBH_.exit, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression11DeflatedArgEEEB1z_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !51 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !19, !noundef !20
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression11DeflatedArgEEB1d_.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression11DeflatedArgENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression11DeflatedArgEEB1d_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression11DeflatedArgENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression11DeflatedArgEEB1k_.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression11DeflatedArgEEB1k_.exit.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression11DeflatedArgEEB1d_.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression11DeflatedArgENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression15DeflatedElementEEEB1z_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !52 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !19, !noundef !20
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression15DeflatedElementEEB1d_.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression15DeflatedElementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression15DeflatedElementEEB1d_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression15DeflatedElementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression15DeflatedElementEEB1k_.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression15DeflatedElementEEB1k_.exit.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression15DeflatedElementEEB1d_.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression15DeflatedElementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression19DeflatedDictElementEEEB1z_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !53 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !19, !noundef !20
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression19DeflatedDictElementEEB1d_.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression19DeflatedDictElementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression19DeflatedDictElementEEB1d_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression19DeflatedDictElementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression19DeflatedDictElementEEB1k_.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression19DeflatedDictElementEEB1k_.exit.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression19DeflatedDictElementEEB1d_.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression19DeflatedDictElementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression30DeflatedFormattedStringContentEEEB1z_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !54 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !19, !noundef !20
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression30DeflatedFormattedStringContentEEB1d_.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression30DeflatedFormattedStringContentENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression30DeflatedFormattedStringContentEEB1d_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression30DeflatedFormattedStringContentENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression30DeflatedFormattedStringContentEEB1k_.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression30DeflatedFormattedStringContentEEB1k_.exit.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression30DeflatedFormattedStringContentEEB1d_.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression30DeflatedFormattedStringContentENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression30DeflatedTemplatedStringContentEEEB1z_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !55 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !19, !noundef !20
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression30DeflatedTemplatedStringContentEEB1d_.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression30DeflatedTemplatedStringContentENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression30DeflatedTemplatedStringContentEEB1d_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression30DeflatedTemplatedStringContentENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression30DeflatedTemplatedStringContentEEB1k_.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression30DeflatedTemplatedStringContentEEB1k_.exit.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression30DeflatedTemplatedStringContentEEB1d_.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression30DeflatedTemplatedStringContentENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes2op11DeflatedDotEEEB1z_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !56 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !19, !noundef !20
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes2op11DeflatedDotEEB1d_.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes2op11DeflatedDotENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes2op11DeflatedDotEEB1d_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes2op11DeflatedDotENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes2op11DeflatedDotEEB1k_.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes2op11DeflatedDotEEB1k_.exit.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes2op11DeflatedDotEEB1d_.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes2op11DeflatedDotENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement17DeflatedStatementEEEB1z_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !57 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !19, !noundef !20
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement17DeflatedStatementEEB1d_.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement17DeflatedStatementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement17DeflatedStatementEEB1d_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement17DeflatedStatementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement17DeflatedStatementEEB1k_.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement17DeflatedStatementEEB1k_.exit.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement17DeflatedStatementEEB1d_.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement17DeflatedStatementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement37DeflatedStarrableMatchSequenceElementEEEB1z_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !58 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !19, !noundef !20
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement37DeflatedStarrableMatchSequenceElementEEB1d_.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement37DeflatedStarrableMatchSequenceElementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement37DeflatedStarrableMatchSequenceElementEEB1d_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement37DeflatedStarrableMatchSequenceElementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement37DeflatedStarrableMatchSequenceElementEEB1k_.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement37DeflatedStarrableMatchSequenceElementEEB1k_.exit.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement37DeflatedStarrableMatchSequenceElementEEB1d_.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement37DeflatedStarrableMatchSequenceElementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEEEB1B_(ptr captures(address) %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality !guid !61 {
bb.a:
  %i.a = icmp eq ptr %.0.val, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEEB1f_.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEBH_(ptr noalias noundef align 8 dereferenceable(16) %.0.val) #19
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEEB1f_.exit unwind label %bb.d, !noalias !62, !inline_history !21

bb.d:                                             ; preds = %bb.c
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 16, i64 noundef 8) #17, !noalias !62, !inline_history !21
  resume { ptr, i32 } %i.b

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEEB1f_.exit: ; preds = %bb.c
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 16, i64 noundef 8) #17, !noalias !62, !inline_history !21
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedYieldValueEEEB1B_(ptr captures(address) %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality !guid !71 {
bb.a:
  %i.a = icmp eq ptr %.0.val, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedYieldValueEEB1f_.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = load i64, ptr %.0.val, align 8, !range !22, !alias.scope !72, !noundef !20
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val, i64 8 ; 2 uses
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73)
  %i.e = load ptr, ptr %i.c, align 8, !alias.scope !73, !nonnull !20, !noundef !20 ; 3 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEBH_(ptr noalias noundef align 8 dereferenceable(16) %i.e) #19
          to label %.noexc.i unwind label %bb.e, !noalias !73, !inline_history !67

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef 16, i64 noundef 8) #17, !noalias !73, !inline_history !67
  br label %bb.h

.noexc.i:                                         ; preds = %bb.d
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef 16, i64 noundef 8) #17, !noalias !73, !inline_history !67
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedYieldValueEEB1f_.exit

bb.f:                                             ; preds = %bb.c
  %.val3.i = load ptr, ptr %i.c, align 8, !nonnull !20, !noundef !20 ; 3 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEBH_(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val3.i)
          to label %.noexc2.i unwind label %bb.g, !inline_history !68

bb.g:                                             ; preds = %bb.f
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef 24, i64 noundef 8) #17, !inline_history !69
  br label %bb.h

.noexc2.i:                                        ; preds = %bb.f
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef 24, i64 noundef 8) #17, !inline_history !69
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedYieldValueEEB1f_.exit

bb.h:                                             ; preds = %bb.g, %bb.e
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.f, %bb.e ], [ %i.g, %bb.g ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 16, i64 noundef 8) #17, !inline_history !70
  resume { ptr, i32 } %eh.lpad-body.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedYieldValueEEB1f_.exit: ; preds = %.noexc.i, %.noexc2.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 16, i64 noundef 8) #17, !inline_history !70
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression15DeflatedStarArgEEB13_(i64 %.0.val, ptr %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality !guid !79 {
bb.a:
  switch i64 %.0.val, label %bb.c [
    i64 2, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression15DeflatedStarArgEBH_.exit
    i64 0, label %bb.b
  ]

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression15DeflatedStarArgEBH_.exit.sink.split: ; preds = %bb.c, %bb.b
  %.sink = phi i64 [ 8, %bb.b ], [ 144, %bb.c ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef %.sink, i64 noundef 8) #17, !noalias !80
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression15DeflatedStarArgEBH_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression15DeflatedStarArgEBH_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression15DeflatedStarArgEBH_.exit.sink.split, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression15DeflatedStarArgEBH_.exit.sink.split

bb.c:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression13DeflatedParamEBH_(ptr noalias noundef align 8 dereferenceable(144) %.8.val) #19
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression15DeflatedStarArgEBH_.exit.sink.split unwind label %bb.d, !noalias !81, !inline_history !78

bb.d:                                             ; preds = %bb.c
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef 144, i64 noundef 8) #17, !noalias !81, !inline_history !82
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEEB13_(i64 %.0.val, ptr %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality !guid !83 {
bb.a:
  %0 = icmp eq i64 %.0.val, 2
  br i1 %0, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEBH_.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %1 = icmp eq i64 %.0.val, 0
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  br i1 %1, label %2, label %bb.e

2:                                                ; preds = %bb.c
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression12DeflatedNameEBH_(ptr noalias noundef nonnull align 8 dereferenceable(64) %.8.val)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEBH_.exit unwind label %bb.d

common.resume.i:                                  ; preds = %bb.f, %bb.d
  %.sink.i = phi i64 [ 128, %bb.f ], [ 64, %bb.d ]
  %common.resume.op.i = phi { ptr, i32 } [ %i.b, %bb.f ], [ %i.a, %bb.d ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef %.sink.i, i64 noundef 8) #17
  resume { ptr, i32 } %common.resume.op.i

bb.d:                                             ; preds = %2
  %i.a = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i

bb.e:                                             ; preds = %bb.c
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression17DeflatedAttributeEBH_(ptr noalias noundef nonnull align 8 dereferenceable(128) %.8.val)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEBH_.exit unwind label %bb.f, !inline_history !0

bb.f:                                             ; preds = %bb.e
  %i.b = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEBH_.exit: ; preds = %2, %bb.e
  %.sink1.i = phi i64 [ 64, %2 ], [ 128, %bb.e ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef %.sink1.i, i64 noundef 8) #17
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement22DeflatedTypeParametersEEB13_(ptr noalias noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !84 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !19, !noundef !20
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement22DeflatedTypeParametersEBH_.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement17DeflatedTypeParamENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef nonnull align 8 dereferenceable(40) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement22DeflatedTypeParametersEBH_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement17DeflatedTypeParamENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(40) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement17DeflatedTypeParamEEB1k_.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement17DeflatedTypeParamEEB1k_.exit.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement22DeflatedTypeParametersEBH_.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement17DeflatedTypeParamENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(40) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsarohYtwVpE2_13libcst_native6parser7grammar7StarEtcEEB13_(ptr noalias noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !96 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !23, !noundef !20 ; 2 uses
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native6parser7grammar7StarEtcEBH_.exit, label %bb.b

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native6parser7grammar7StarEtcEBH_.exit: ; preds = %bb.j, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression13DeflatedParamEEB1d_.exit.i, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !97)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2.i = load ptr, ptr %i.c, align 8, !alias.scope !97 ; 5 uses
  switch i64 %i.a, label %bb.d [
    i64 2, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression15DeflatedStarArgEEB13_.exit.i
    i64 0, label %bb.c
  ]

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression15DeflatedStarArgEBH_.exit.sink.split.i.i: ; preds = %bb.d, %bb.c
  %.sink.i.i = phi i64 [ 8, %bb.c ], [ 144, %bb.d ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i, i64 noundef %.sink.i.i, i64 noundef 8) #17, !noalias !98, !inline_history !99
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression15DeflatedStarArgEEB13_.exit.i

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression15DeflatedStarArgEBH_.exit.sink.split.i.i

bb.d:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression13DeflatedParamEBH_(ptr noalias noundef align 8 dereferenceable(144) %.val2.i) #19
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression15DeflatedStarArgEBH_.exit.sink.split.i.i unwind label %.body.i, !noalias !100, !inline_history !91

.body.i:                                          ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i, i64 noundef 144, i64 noundef 8) #17, !noalias !100, !inline_history !101
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 160
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression13DeflatedParamEEB1d_(ptr noalias noundef align 8 dereferenceable(24) %i.e) #20
          to label %.body3.i unwind label %bb.k

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression15DeflatedStarArgEEB13_.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression15DeflatedStarArgEBH_.exit.sink.split.i.i, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression13DeflatedParamENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression15DeflatedStarArgEEB13_.exit.i
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression13DeflatedParamENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body3.i unwind label %bb.g

bb.f:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression15DeflatedStarArgEEB13_.exit.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression13DeflatedParamENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression13DeflatedParamEEB1d_.exit.i unwind label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18
  unreachable

.body3.i:                                         ; preds = %bb.i, %bb.e, %.body.i
  %.pn.i = phi { ptr, i32 } [ %i.d, %.body.i ], [ %i.l, %bb.i ], [ %i.g, %bb.e ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !range !24, !alias.scope !102, !noundef !20
  %i.k = icmp eq i64 %i.j, -2
  br i1 %i.k, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression13DeflatedParamEEB13_.exit.i, label %bb.h

bb.h:                                             ; preds = %.body3.i
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression13DeflatedParamEBH_(ptr noalias noundef nonnull align 8 dereferenceable(144) %i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression13DeflatedParamEEB13_.exit.i unwind label %bb.k, !inline_history !1

bb.i:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.body3.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression13DeflatedParamEEB1d_.exit.i: ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !range !24, !alias.scope !103, !noundef !20
  %i.o = icmp eq i64 %i.n, -2
  br i1 %i.o, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native6parser7grammar7StarEtcEBH_.exit, label %bb.j

bb.j:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression13DeflatedParamEEB1d_.exit.i
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression13DeflatedParamEBH_(ptr noalias noundef nonnull align 8 dereferenceable(144) %i.m), !inline_history !1
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native6parser7grammar7StarEtcEBH_.exit

bb.k:                                             ; preds = %bb.h, %.body.i
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression13DeflatedParamEEB13_.exit.i: ; preds = %bb.h, %.body3.i
  resume { ptr, i32 } %.pn.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionTINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression13DeflatedParamENtB1w_18DeflatedParamSlashEEEB1A_(ptr noalias noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !104 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !19, !noundef !20
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression13DeflatedParamENtB1a_18DeflatedParamSlashEEB1e_.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression13DeflatedParamENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef nonnull align 8 dereferenceable(40) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression13DeflatedParamENtB1a_18DeflatedParamSlashEEB1e_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression13DeflatedParamENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(40) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression13DeflatedParamEEB1k_.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression13DeflatedParamEEB1k_.exit.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression13DeflatedParamENtB1a_18DeflatedParamSlashEEB1e_.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression13DeflatedParamENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(40) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression17DeflatedLeftParenIBC_INtNtCscdodAO9FK5_5alloc3vec3VecNtB10_11DeflatedArgEENtB10_18DeflatedRightParenEEEB14_(ptr noalias noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !105 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !25, !noundef !20
  %switch = icmp ugt i64 %i.a, -3
  br i1 %switch, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression17DeflatedLeftParenINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtBE_11DeflatedArgEENtBE_18DeflatedRightParenEEBI_.exit, label %bb.b

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression17DeflatedLeftParenINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtBE_11DeflatedArgEENtBE_18DeflatedRightParenEEBI_.exit: ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression11DeflatedArgEEB1d_.exit.i.i
  ret void

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression11DeflatedArgENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef nonnull align 8 dereferenceable(40) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression11DeflatedArgEEB1d_.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression11DeflatedArgENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(40) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression11DeflatedArgEEB1k_.exit.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression11DeflatedArgEEB1k_.exit.i.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.b

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression11DeflatedArgEEB1d_.exit.i.i: ; preds = %bb.b
end_hunk_0
begin_hunk_1_@_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement21DeflatedExceptHandlerEBH_:bb.a

bb.f:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEEB13_.exit
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement30DeflatedAssignTargetExpressionEBH_(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement14DeflatedAsNameEEB13_.exit unwind label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEEB13_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEEB13_.exit3: ; preds = %bb.d, %bb.e
  %i.l = load i64, ptr %0, align 8, !range !33, !alias.scope !702, !noundef !20
  %i.m = icmp eq i64 %i.l, -1
  br i1 %i.m, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement14DeflatedAsNameEEB13_.exit5, label %bb.h

bb.h:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEEB13_.exit3
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement30DeflatedAssignTargetExpressionEBH_(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %0)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement14DeflatedAsNameEEB13_.exit5

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement14DeflatedAsNameEEB13_.exit5: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEEB13_.exit3, %bb.h
  ret void

bb.i:                                             ; preds = %bb.f, %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement14DeflatedAsNameEEB13_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEEB13_.exit, %bb.f
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement22DeflatedSmallStatementEBH_(ptr noalias noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !740 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !35, !noundef !20 ; 2 uses
  %i.b = xor i64 %i.a, -9223372036854775808
  %i.c = icmp slt i64 %i.a, 0
  %i.d = select i1 %i.c, i64 %i.b, i64 15
  switch i64 %i.d, label %bb.b [
    i64 0, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement17DeflatedTypeAliasEBH_.exit
    i64 1, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement17DeflatedTypeAliasEBH_.exit
    i64 2, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement17DeflatedTypeAliasEBH_.exit
    i64 3, label %bb.k
    i64 4, label %bb.m
    i64 5, label %bb.n
    i64 6, label %bb.t
    i64 7, label %bb.w
    i64 8, label %bb.ai
    i64 9, label %bb.ao
    i64 10, label %bb.av
    i64 11, label %bb.bb
    i64 12, label %bb.be
    i64 13, label %bb.bh
    i64 14, label %bb.bk
  ]

bb.b:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression12DeflatedNameEBH_(ptr noalias noundef nonnull align 8 dereferenceable(144) %0)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEEB1f_(ptr noalias noundef align 8 dereferenceable(8) %i.f) #20
          to label %.body.i unwind label %bb.j

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.experimental.noalias.scope.decl(metadata !741)
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !742, !nonnull !20, !noundef !20 ; 3 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEBH_(ptr noalias noundef align 8 dereferenceable(16) %i.h) #19
          to label %bb.f unwind label %bb.e, !noalias !741, !inline_history !21

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.h, i64 noundef 16, i64 noundef 8) #17, !noalias !741, !inline_history !21
  br label %.body.i

.body.i:                                          ; preds = %bb.e, %bb.c
  %.pn.i = phi { ptr, i32 } [ %i.e, %bb.c ], [ %i.i, %bb.e ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement22DeflatedTypeParametersEEB13_(ptr noalias noundef align 8 dereferenceable(40) %i.j) #20
          to label %common.resume unwind label %bb.j

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.h, i64 noundef 16, i64 noundef 8) #17, !noalias !741, !inline_history !21
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.l = load i64, ptr %i.k, align 8, !range !19, !alias.scope !743, !noundef !20
  %i.m = icmp eq i64 %i.l, -1
  br i1 %i.m, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement17DeflatedTypeAliasEBH_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement17DeflatedTypeParamENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.k)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement22DeflatedTypeParametersEBH_.exit.i.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement17DeflatedTypeParamENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.k)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18
  unreachable

common.resume:                                    ; preds = %bb.bi, %bb.bf, %bb.bc, %bb.ax, %bb.ay, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement18DeflatedAnnotationEBH_.exit.i, %bb.ar, %.body.i5, %.body3.i, %bb.af, %bb.u, %bb.o, %bb.p, %.body.i, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.cd, %bb.bf ], [ %.pn.i, %.body.i ], [ %i.v, %bb.o ], [ %i.ae, %bb.u ], [ %.pn.i2, %.body3.i ], [ %eh.lpad-body.i, %.body.i5 ], [ %.pn.i6, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement18DeflatedAnnotationEBH_.exit.i ], [ %i.br, %bb.ax ], [ %i.ca, %bb.bc ], [ %i.n, %bb.h ], [ %i.v, %bb.p ], [ %i.at, %bb.af ], [ %.pn.i6, %bb.ar ], [ %i.br, %bb.ay ], [ %i.cg, %bb.bi ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement22DeflatedTypeParametersEBH_.exit.i.i: ; preds = %bb.g
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement17DeflatedTypeParamENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.k)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement17DeflatedTypeAliasEBH_.exit

bb.j:                                             ; preds = %.body.i, %bb.c
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement17DeflatedTypeAliasEBH_.exit: ; preds = %bb.az, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEEB13_.exit.i8, %bb.at, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement18DeflatedAnnotationEBH_.exit2.i, %bb.r, %bb.q, %bb.l, %bb.k, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement22DeflatedTypeParametersEBH_.exit.i.i, %bb.f, %bb.bk, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement17DeflatedAugAssignEBH_.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement16DeflatedNonlocalEBH_.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement14DeflatedGlobalEBH_.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement14DeflatedAssignEBH_.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement18DeflatedImportFromEBH_.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement14DeflatedImportEBH_.exit, %bb.m, %bb.a, %bb.a, %bb.a
  ret void

bb.k:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !range !27, !alias.scope !744, !noundef !20
  %i.s = icmp eq i64 %i.r, -1
  br i1 %i.s, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement17DeflatedTypeAliasEBH_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEBH_(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.q), !inline_history !3
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement17DeflatedTypeAliasEBH_.exit

bb.m:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEBH_(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.t)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement17DeflatedTypeAliasEBH_.exit

bb.n:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !745)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEBH_(ptr noalias noundef nonnull readonly align 8 dereferenceable(56) %i.u)
          to label %bb.q unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !range !27, !alias.scope !746, !noundef !20
  %i.y = icmp eq i64 %i.x, -1
  br i1 %i.y, label %common.resume, label %bb.p

bb.p:                                             ; preds = %bb.o
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEBH_(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.w)
          to label %common.resume unwind label %bb.s, !inline_history !3

bb.q:                                             ; preds = %bb.n
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !range !27, !alias.scope !747, !noundef !20
  %i.ab = icmp eq i64 %i.aa, -1
  br i1 %i.ab, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement17DeflatedTypeAliasEBH_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEBH_(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.z), !inline_history !3
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement17DeflatedTypeAliasEBH_.exit

bb.s:                                             ; preds = %bb.p
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18, !noalias !745
  unreachable

bb.t:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement19DeflatedImportAliasENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.ad)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement14DeflatedImportEBH_.exit unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement19DeflatedImportAliasENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.ad)
          to label %common.resume unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement14DeflatedImportEBH_.exit: ; preds = %bb.t
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement19DeflatedImportAliasENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.ad)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement17DeflatedTypeAliasEBH_.exit

bb.w:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !748)
  %.val.i = load i64, ptr %i.ag, align 8, !range !32, !alias.scope !748, !noundef !20 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val2.i = load ptr, ptr %i.ah, align 8, !alias.scope !748 ; 5 uses
  %1 = icmp eq i64 %.val.i, 2
  br i1 %1, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEEB13_.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %2 = icmp eq i64 %.val.i, 0
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  br i1 %2, label %3, label %bb.z

3:                                                ; preds = %bb.x
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression12DeflatedNameEBH_(ptr noalias noundef nonnull align 8 dereferenceable(64) %.val2.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEBH_.exit.i.i unwind label %bb.y, !noalias !748

common.resume.i.i.i:                              ; preds = %bb.aa, %bb.y
  %.sink.i.i.i = phi i64 [ 128, %bb.aa ], [ 64, %bb.y ]
  %common.resume.op.i.i.i = phi { ptr, i32 } [ %i.ak, %bb.aa ], [ %i.aj, %bb.y ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i, i64 noundef %.sink.i.i.i, i64 noundef 8) #17, !noalias !748
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement19DeflatedImportNamesEBH_(ptr noalias noundef align 8 dereferenceable(24) %i.ai) #20
          to label %.body3.i unwind label %bb.ah

bb.y:                                             ; preds = %3
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i.i.i

bb.z:                                             ; preds = %bb.x
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression17DeflatedAttributeEBH_(ptr noalias noundef nonnull align 8 dereferenceable(128) %.val2.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEBH_.exit.i.i unwind label %bb.aa, !noalias !748, !inline_history !0

bb.aa:                                            ; preds = %bb.z
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEBH_.exit.i.i: ; preds = %bb.z, %3
  %.sink1.i.i.i = phi i64 [ 64, %3 ], [ 128, %bb.z ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i, i64 noundef %.sink1.i.i.i, i64 noundef 8) #17, !noalias !748
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEEB13_.exit.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEEB13_.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEBH_.exit.i.i, %bb.w
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.am = load i64, ptr %i.al, align 8, !range !19, !alias.scope !749, !noundef !20
  %i.an = icmp eq i64 %i.am, -1
  br i1 %i.an, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement19DeflatedImportNamesEBH_.exit.i, label %bb.ab

bb.ab:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEEB13_.exit.i
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement19DeflatedImportAliasENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement19DeflatedImportAliasEEB1d_.exit.i.i unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ao = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement19DeflatedImportAliasENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %.body3.i unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement19DeflatedImportAliasEEB1d_.exit.i.i: ; preds = %bb.ab
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement19DeflatedImportAliasENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement19DeflatedImportNamesEBH_.exit.i unwind label %bb.ae

.body3.i:                                         ; preds = %bb.ae, %bb.ac, %common.resume.i.i.i
  %.pn.i2 = phi { ptr, i32 } [ %common.resume.op.i.i.i, %common.resume.i.i.i ], [ %i.ar, %bb.ae ], [ %i.ao, %bb.ac ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes2op11DeflatedDotEEB1d_(ptr noalias noundef align 8 dereferenceable(24) %i.aq) #20
          to label %common.resume unwind label %bb.ah

bb.ae:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement19DeflatedImportAliasEEB1d_.exit.i.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body3.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement19DeflatedImportNamesEBH_.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement19DeflatedImportAliasEEB1d_.exit.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEEB13_.exit.i
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes2op11DeflatedDotENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.as)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement18DeflatedImportFromEBH_.exit unwind label %bb.af

bb.af:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement19DeflatedImportNamesEBH_.exit.i
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes2op11DeflatedDotENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.as)
          to label %common.resume unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.ah:                                            ; preds = %.body3.i, %common.resume.i.i.i
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement18DeflatedImportFromEBH_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement19DeflatedImportNamesEBH_.exit.i
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes2op11DeflatedDotENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.as)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement17DeflatedTypeAliasEBH_.exit

bb.ai:                                            ; preds = %bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement20DeflatedAssignTargetENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ax)
          to label %bb.ak unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ay = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement20DeflatedAssignTargetENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ax)
          to label %.body.i5 unwind label %bb.al

bb.ak:                                            ; preds = %bb.ai
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement20DeflatedAssignTargetENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ax)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement14DeflatedAssignEBH_.exit unwind label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.am:                                            ; preds = %bb.ak
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %.body.i5

.body.i5:                                         ; preds = %bb.am, %bb.aj
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ba, %bb.am ], [ %i.ay, %bb.aj ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEBH_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.aw) #20
          to label %common.resume unwind label %bb.an

bb.an:                                            ; preds = %.body.i5
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement14DeflatedAssignEBH_.exit: ; preds = %bb.ak
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEBH_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.aw)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement17DeflatedTypeAliasEBH_.exit

bb.ao:                                            ; preds = %bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !750)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement30DeflatedAssignTargetExpressionEBH_(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.bc)
          to label %bb.aq unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.bd = landingpad { ptr, i32 }
          cleanup
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEBH_(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.be)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement18DeflatedAnnotationEBH_.exit.i unwind label %bb.au, !inline_history !5

bb.aq:                                            ; preds = %bb.ao
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEBH_(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.bf)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement18DeflatedAnnotationEBH_.exit2.i unwind label %bb.as, !inline_history !5

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement18DeflatedAnnotationEBH_.exit.i: ; preds = %bb.as, %bb.ap
  %.pn.i6 = phi { ptr, i32 } [ %i.bj, %bb.as ], [ %i.bd, %bb.ap ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !range !27, !alias.scope !751, !noundef !20
  %i.bi = icmp eq i64 %i.bh, -1
  br i1 %i.bi, label %common.resume, label %bb.ar

bb.ar:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement18DeflatedAnnotationEBH_.exit.i
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEBH_(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.bg)
          to label %common.resume unwind label %bb.au, !inline_history !3

bb.as:                                            ; preds = %bb.aq
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement18DeflatedAnnotationEBH_.exit.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement18DeflatedAnnotationEBH_.exit2.i: ; preds = %bb.aq
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !range !27, !alias.scope !752, !noundef !20
  %i.bm = icmp eq i64 %i.bl, -1
  br i1 %i.bm, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement17DeflatedTypeAliasEBH_.exit, label %bb.at

bb.at:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement18DeflatedAnnotationEBH_.exit2.i
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEBH_(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.bk), !inline_history !3
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement17DeflatedTypeAliasEBH_.exit

bb.au:                                            ; preds = %bb.ar, %bb.ap
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18, !noalias !750
  unreachable

bb.av:                                            ; preds = %bb.a
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !753)
  %i.bp = load i64, ptr %i.bo, align 8, !range !27, !alias.scope !754, !noundef !20
  %i.bq = icmp eq i64 %i.bp, -1
  br i1 %i.bq, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEEB13_.exit.i8, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEBH_(ptr noalias noundef nonnull readonly align 8 dereferenceable(56) %i.bo)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEEB13_.exit.i8 unwind label %bb.ax, !inline_history !3

bb.ax:                                            ; preds = %bb.aw
  %i.br = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !range !27, !alias.scope !755, !noundef !20
  %i.bu = icmp eq i64 %i.bt, -1
  br i1 %i.bu, label %common.resume, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEBH_(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.bs)
          to label %common.resume unwind label %bb.ba

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEEB13_.exit.i8: ; preds = %bb.aw, %bb.av
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 8, !range !27, !alias.scope !756, !noundef !20
  %i.bx = icmp eq i64 %i.bw, -1
  br i1 %i.bx, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement17DeflatedTypeAliasEBH_.exit, label %bb.az

bb.az:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEEB13_.exit.i8
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEBH_(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.bv), !inline_history !737
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement17DeflatedTypeAliasEBH_.exit

bb.ba:                                            ; preds = %bb.ay
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18, !noalias !753
  unreachable

bb.bb:                                            ; preds = %bb.a
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
end_hunk_1
begin_hunk_2_@_RNvNtNtNtCsarohYtwVpE2_13libcst_native6parser7grammar6python19___parse_type_params:bb.a
  %i.eo = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtNtNtCsarohYtwVpE2_13libcst_native5nodes2op13DeflatedCommaNtNtBQ_9statement17DeflatedTypeParamEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBS_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.en)
          to label %common.resume unwind label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ep = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtNtCsarohYtwVpE2_13libcst_native5nodes2op13DeflatedCommaNtNtB1c_9statement17DeflatedTypeParamEEEB1e_.exit: ; preds = %bb.bi
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtNtNtCsarohYtwVpE2_13libcst_native5nodes2op13DeflatedCommaNtNtBQ_9statement17DeflatedTypeParamEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBS_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.en)
  br label %bb.bg

bb.bl:                                            ; preds = %bb.bn, %bb.bm, %bb.bh
  %i.eq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.bm:                                            ; preds = %.invoke
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement17DeflatedTypeParamEBH_(ptr noalias noundef align 8 dereferenceable(136) %i.j) #20
          to label %bb.bn unwind label %bb.bl

bb.bn:                                            ; preds = %bb.bm
  %i.er = getelementptr inbounds nuw i8, ptr %i.j, i64 136
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtNtCsarohYtwVpE2_13libcst_native5nodes2op13DeflatedCommaNtNtB1c_9statement17DeflatedTypeParamEEEB1e_(ptr noalias noundef align 8 dereferenceable(24) %i.er) #20
          to label %common.resume unwind label %bb.bl

bb.bo:                                            ; preds = %_RINvNtNtNtCsarohYtwVpE2_13libcst_native6parser7grammar6python25___parse_separated_trailerNtNtNtB8_5nodes9statement17DeflatedTypeParamNtNtB1t_2op13DeflatedCommaNCNvB2_19___parse_type_params0NCB2z_s_0EB8_.exit.thread, %bb.bg, %bb.n
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtNtCsarohYtwVpE2_13libcst_native6parser7grammar6python20___parse__bare_genexp(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef nonnull align 8 dereferenceable(1008) %2, ptr noalias noundef nonnull align 8 dereferenceable(48) %3, i64 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality !guid !5540 {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 4 uses
  %i.b = alloca [104 x i8], align 8               ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call fastcc void @_RNvNtNtNtCsarohYtwVpE2_13libcst_native6parser7grammar6python24___parse_named_expression(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias noundef align 8 dereferenceable(1008) %2, ptr noalias noundef align 8 dereferenceable(48) %3, i64 noundef %4)
  %i.e = load i64, ptr %i.d, align 8, !range !27, !noundef !20 ; 3 uses
  %i.f = icmp eq i64 %i.e, -1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !noundef !20 ; 2 uses
  store i64 %i.e, ptr %i.c, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.j, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke fastcc void @_RNvNtNtNtCsarohYtwVpE2_13libcst_native6parser7grammar6python22___parse_for_if_clauses(ptr noalias noundef align 8 captures(none) dereferenceable(104) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias noundef align 8 dereferenceable(1008) %2, ptr noalias noundef align 8 dereferenceable(48) %3, i64 noundef %i.h)
          to label %bb.d unwind label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.l = load i64, ptr %i.b, align 8, !range !33, !noundef !20
  %i.m = icmp eq i64 %i.l, -1
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEBH_(ptr noalias noundef align 8 dereferenceable(16) %i.c)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.o = load i64, ptr %i.n, align 8, !noundef !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5541
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(96) %i.b, i64 96, i1 false)
  call void @_RNvNtNtCsarohYtwVpE2_13libcst_native6parser7grammar16make_bare_genexp(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, i64 noundef %i.e, ptr noundef %i.j, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(96) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5541
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.o, ptr %i.p, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.i:                                             ; preds = %bb.j
  resume { ptr, i32 } %i.q

bb.j:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEBH_(ptr noalias noundef align 8 dereferenceable(16) %i.c) #20
          to label %bb.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtNtCsarohYtwVpE2_13libcst_native6parser7grammar6python20___parse_name_or_attr(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef nonnull align 8 dereferenceable(1008) %2, ptr noalias noundef nonnull align 8 dereferenceable(48) %3, i64 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality !guid !5564 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 4 uses
  %i.b = alloca [128 x i8], align 8               ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [72 x i8], align 8                ; 5 uses
  %i.g = alloca [88 x i8], align 8                ; 6 uses
  %i.h = alloca [72 x i8], align 8                ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = alloca [24 x i8], align 8                ; 5 uses
  %i.k = alloca [8 x i8], align 8                 ; 3 uses
  store i64 %4, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !5565, !noundef !20
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %select.unfold, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.q = call noundef i64 @_RINvYNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRjECsarohYtwVpE2_13libcst_native(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.k) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5566)
  call void @llvm.experimental.noalias.scope.decl(metadata !5567)
  %i.r = lshr i64 %i.q, 57
  %i.s = trunc nuw nsw i64 %i.r to i8
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !5568, !noundef !20 ; 2 uses
  %i.v = load ptr, ptr %i.l, align 8, !alias.scope !5568, !nonnull !20, !noundef !20 ; 2 uses
  %i.w = insertelement <16 x i8> poison, i8 %i.s, i64 0
  %i.x = shufflevector <16 x i8> %i.w, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.sroa.9.0.i.i.i = phi i64 [ 0, %bb.b ], [ %i.ao, %bb.e ]
  %.pn.i.i.i = phi i64 [ %i.q, %bb.b ], [ %i.ap, %bb.e ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i.i, %i.u    ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i26.i.i = load <16 x i8>, ptr %i.y, align 1, !noalias !5569 ; 2 uses
  %i.z = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, %i.x
  %i.aa = bitcast <16 x i1> %i.z to i16           ; 2 uses
  %.not.i.not32.i.i = icmp eq i16 %i.aa, 0
  br i1 %.not.i.not32.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.d
  %.sroa.06.0.i33.i.i = phi i16 [ %i.an, %bb.d ], [ %i.aa, %bb.c ] ; 3 uses
  %i.ab = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i, i1 true)
  %i.ac = zext nneg i16 %i.ab to i64
  %i.ad = add i64 %.sroa.01.0.i.i.i, %i.ac
  %i.ae = and i64 %i.ad, %i.u
  %i.af = sub nsw i64 0, %i.ae
  %i.ag = getelementptr inbounds [32 x i8], ptr %i.v, i64 %i.af ; 4 uses
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -32
  %i.ai = call noundef zeroext i1 @_RNvXCsgQfI1edjipl_9hashbrownjINtB2_10EquivalentjE10equivalentCsarohYtwVpE2_13libcst_native(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ah), !noalias !5570
  br i1 %i.ai, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeENtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE3getjEB1B_.exit, label %bb.d, !prof !41

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.c
  %i.aj = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, splat (i8 -1)
  %i.ak = bitcast <16 x i1> %i.aj to i16
  %i.al = icmp eq i16 %i.ak, 0
  br i1 %i.al, label %bb.e, label %select.unfold, !prof !40

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.am = add i16 %.sroa.06.0.i33.i.i, -1
  %i.an = and i16 %i.am, %.sroa.06.0.i33.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.an, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.ao = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.ap = add i64 %.sroa.01.0.i.i.i, %i.ao
  br label %bb.c

_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeENtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE3getjEB1B_.exit: ; preds = %.lr.ph.i.i
  %i.aq = getelementptr inbounds i8, ptr %i.ag, i64 -24
  %i.ar = load i64, ptr %i.aq, align 8, !range !32, !noundef !20 ; 2 uses
  %i.as = icmp eq i64 %i.ar, 2
  br i1 %i.as, label %bb.j, label %bb.k

select.unfold:                                    ; preds = %._crit_edge.i.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 2, ptr %i.c, align 8
  call void @_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeENtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE6insertB1A_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.l, i64 noundef %4, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.val67 = load i64, ptr %i.j, align 8, !range !23, !noundef !20 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.val68 = load ptr, ptr %i.at, align 8          ; 5 uses
  switch i64 %.val67, label %bb.f [
    i64 -1, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEEEB1J_.exit
    i64 2, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEEEB1J_.exit
  ]

bb.f:                                             ; preds = %select.unfold
  %5 = icmp eq i64 %.val67, 0
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val68) ]
  br i1 %5, label %6, label %bb.h

6:                                                ; preds = %bb.f
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression12DeflatedNameEBH_(ptr noalias noundef nonnull align 8 dereferenceable(64) %.val68)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEBH_.exit.i.i unwind label %bb.g

common.resume:                                    ; preds = %.body73, %common.resume.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %common.resume.op.i.i.i, %common.resume.i.i.i ], [ %.pn42, %.body73 ]
  resume { ptr, i32 } %common.resume.op

common.resume.i.i.i:                              ; preds = %bb.i, %bb.g
  %.sink.i.i.i = phi i64 [ 128, %bb.i ], [ 64, %bb.g ]
  %common.resume.op.i.i.i = phi { ptr, i32 } [ %i.av, %bb.i ], [ %i.au, %bb.g ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val68, i64 noundef %.sink.i.i.i, i64 noundef 8) #17
  br label %common.resume

bb.g:                                             ; preds = %6
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i.i.i

bb.h:                                             ; preds = %bb.f
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression17DeflatedAttributeEBH_(ptr noalias noundef nonnull align 8 dereferenceable(128) %.val68)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEBH_.exit.i.i unwind label %bb.i, !inline_history !0

bb.i:                                             ; preds = %bb.h
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEBH_.exit.i.i: ; preds = %bb.h, %6
  %.sink1.i.i.i = phi i64 [ 64, %6 ], [ 128, %bb.h ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val68, i64 noundef %.sink1.i.i.i, i64 noundef 8) #17
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEEEB1J_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEEEB1J_.exit: ; preds = %select.unfold, %select.unfold, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEBH_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.ay, align 8            ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val44 = load i64, ptr %i.az, align 8          ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %i.bf = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.bi = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEEB1n_.exit97

bb.j:                                             ; preds = %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeENtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE3getjEB1B_.exit
  store i64 2, ptr %0, align 8
  br label %bb.l

bb.k:                                             ; preds = %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeENtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE3getjEB1B_.exit
  %i.bk = getelementptr inbounds i8, ptr %i.ag, i64 -8
  %i.bl = load i64, ptr %i.bk, align 8, !noundef !20
  %i.bm = getelementptr i8, ptr %i.ag, i64 -16
  %.val52 = load ptr, ptr %i.bm, align 8
  %i.bn = call fastcc { i64, ptr } @_RNvXs5U_NtNtCsarohYtwVpE2_13libcst_native5nodes10expressionNtB6_23DeflatedNameOrAttributeNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(i64 %i.ar, ptr %.val52) ; 2 uses
  %i.bo = extractvalue { i64, ptr } %i.bn, 0
  %i.bp = extractvalue { i64, ptr } %i.bn, 1
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bl, ptr %i.bq, align 8
  store i64 %i.bo, ptr %0, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bp, ptr %i.br, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEEB1n_.exit
  ret void

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEEB1n_.exit97: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEEB1n_.exit97.backedge, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEEEB1J_.exit
  %.sroa.11.0 = phi i64 [ undef, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEEEB1J_.exit ], [ %.sroa.17.039264, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEEB1n_.exit97.backedge ] ; 3 uses
  %.sroa.9.0 = phi ptr [ undef, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEEEB1J_.exit ], [ %.sroa.12.040261, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEEB1n_.exit97.backedge ] ; 13 uses
  %.sroa.0.0 = phi i64 [ 2, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEEEB1J_.exit ], [ %.sroa.011.045259, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEEB1n_.exit97.backedge ] ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke fastcc void @_RNvNtNtNtCsarohYtwVpE2_13libcst_native6parser7grammar6python20___parse_name_or_attr(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias noundef align 8 dereferenceable(1008) %2, ptr noalias noundef align 8 dereferenceable(48) %3, i64 noundef %4)
          to label %bb.m unwind label %.body

.body73:                                          ; preds = %common.resume.i.i90, %bb.ap, %bb.ad, %.body, %common.resume.i, %common.resume.i.i, %.thread57, %bb.aj
  %.sroa.9.1 = phi ptr [ %.sroa.9.0, %.body ], [ %.sroa.9.0, %.thread57 ], [ %.sroa.9.0, %bb.ap ], [ %.sroa.9.0, %bb.aj ], [ %.sroa.9.0, %bb.ad ], [ %.sroa.9.0, %common.resume.i.i ], [ %.sroa.12.040261, %common.resume.i.i90 ], [ %.sroa.9.0, %common.resume.i ]
  %.sroa.0.1 = phi i64 [ %.sroa.0.0, %.body ], [ %.sroa.0.0, %.thread57 ], [ %.sroa.0.0, %bb.ap ], [ %.sroa.0.0, %bb.aj ], [ %.sroa.0.0, %bb.ad ], [ %.sroa.0.0, %common.resume.i.i ], [ %.sroa.011.045259, %common.resume.i.i90 ], [ %.sroa.0.0, %common.resume.i ]
  %.pn42 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %.body ], [ %eh.lpad-body87, %.thread57 ], [ %i.dl, %bb.ap ], [ %lpad.thr_comm, %bb.aj ], [ %i.da, %bb.ad ], [ %common.resume.op.i.i, %common.resume.i.i ], [ %common.resume.op.i.i92, %common.resume.i.i90 ], [ %common.resume.op.i, %common.resume.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEEB1n_(i64 %.sroa.0.1, ptr %.sroa.9.1) #20
          to label %common.resume unwind label %bb.ak

bb.m:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEEB1n_.exit97
  %i.bs = load i64, ptr %i.i, align 8, !range !32, !noundef !20 ; 5 uses
  %i.bt = icmp eq i64 %i.bs, 2
  br i1 %i.bt, label %bb.al, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bu = load i64, ptr %i.aw, align 8, !noundef !20 ; 7 uses
  %i.bv = load ptr, ptr %i.ax, align 8, !noundef !20 ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5571)
  %i.bw = icmp ult i64 %i.bu, %.val44
  br i1 %i.bw, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bx = load i64, ptr %i.ba, align 8, !alias.scope !5571, !noundef !20
  %i.by = icmp eq i64 %i.bx, 0
  br i1 %i.by, label %bb.q, label %.thread

bb.p:                                             ; preds = %bb.n
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %i.bu
  %i.ca = add nuw i64 %i.bu, 1                    ; 3 uses
  %i.cb = load ptr, ptr %i.bz, align 8, !noalias !5572, !nonnull !20, !noundef !20 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.cd = load i64, ptr %i.cc, align 8, !noalias !5572, !noundef !20
  %i.ce = icmp eq i64 %i.cd, 1
  br i1 %i.ce, label %bb.t, label %bb.u

bb.q:                                             ; preds = %bb.o
  %i.cf = load i8, ptr %i.bb, align 8, !range !37, !alias.scope !5571, !noundef !20
  %i.cg = trunc nuw i8 %i.cf to i1
  br i1 %i.cg, label %.invoke, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ch = load i64, ptr %3, align 8, !alias.scope !5571, !noundef !20
  %i.ci = icmp ugt i64 %i.bu, %i.ch
  br i1 %i.ci, label %bb.s, label %.thread

bb.s:                                             ; preds = %bb.r
  store i64 %i.bu, ptr %3, align 8, !alias.scope !5571
  br label %.thread

bb.t:                                             ; preds = %bb.p
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cb, i64 16 ; 3 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !noalias !5572, !nonnull !20, !noundef !20
  %lhsc = load i8, ptr %i.ck, align 1
  %i.cl = icmp eq i8 %lhsc, 46
  br i1 %i.cl, label %bb.y, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.p
  %i.cm = load i64, ptr %i.ba, align 8, !alias.scope !5571, !noundef !20
  %i.cn = icmp eq i64 %i.cm, 0
  br i1 %i.cn, label %bb.v, label %.thread

bb.v:                                             ; preds = %bb.u
  %i.co = load i8, ptr %i.bb, align 8, !range !37, !alias.scope !5571, !noundef !20
  %i.cp = trunc nuw i8 %i.co to i1
  br i1 %i.cp, label %.invoke, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cq = load i64, ptr %3, align 8, !alias.scope !5571, !noundef !20
  %.not.i70 = icmp ult i64 %i.bu, %i.cq
  br i1 %.not.i70, label %.thread, label %bb.x

.invoke:                                          ; preds = %bb.v, %bb.q
  %i.cr = phi i64 [ %i.bu, %bb.q ], [ %i.ca, %bb.v ]
  %i.cs = phi ptr [ @24, %bb.q ], [ @35, %bb.v ]
  %i.ct = phi i64 [ 3, %bb.q ], [ 1, %bb.v ]
  invoke void @_RNvMs2_NtCslbOqntPwjz2_11peg_runtime5errorNtB5_10ErrorState22mark_failure_slow_path(ptr noalias noundef nonnull align 8 dereferenceable(48) %3, i64 noundef %i.cr, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cs, i64 noundef %i.ct)
          to label %.thread unwind label %bb.aj

bb.x:                                             ; preds = %bb.w
  store i64 %i.ca, ptr %3, align 8, !alias.scope !5571
  br label %.thread

.body:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEEB1n_.exit97, %bb.al, %bb.ab
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body73

bb.y:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke fastcc void @_RNvNtNtNtCsarohYtwVpE2_13libcst_native6parser7grammar6python12___parse_name(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.h, ptr nonnull %.val, i64 %.val44, ptr noalias noundef align 8 dereferenceable(48) %3, i64 noundef %i.ca)
          to label %bb.z unwind label %bb.aj

bb.z:                                             ; preds = %bb.y
  %i.cu = load i64, ptr %i.h, align 8, !range !19, !noundef !20
  %i.cv = icmp eq i64 %i.cu, -1
  br i1 %i.cv, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %.thread

bb.ab:                                            ; preds = %bb.z
  %i.cw = load i64, ptr %i.bc, align 8, !noundef !20 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bf, ptr noundef nonnull align 8 dereferenceable(64) %i.h, i64 64, i1 false)
  store i64 %i.bs, ptr %i.g, align 8
  store ptr %i.bv, ptr %i.bd, align 8
  store ptr %i.cj, ptr %i.be, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5573
  %i.cx = trunc nuw i64 %i.bs to i1
  %..i = select i1 %i.cx, i64 9, i64 0
  invoke void @_RNvNtNtCsarohYtwVpE2_13libcst_native6parser7grammar14make_attribute(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(none) dereferenceable(128) %i.b, i64 noundef %..i, ptr noundef nonnull %i.bv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.cj, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(64) %i.bf)
          to label %.noexc72 unwind label %.body

.noexc72:                                         ; preds = %bb.ab
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #17, !noalias !5574
  %i.cy = call noundef align 8 dereferenceable_or_null(128) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 8, 145) 128, i64 noundef 8) #17, !noalias !5574 ; 6 uses
  %i.cz = icmp eq ptr %i.cy, null
  br i1 %i.cz, label %bb.ac, label %.thread254, !prof !40

bb.ac:                                            ; preds = %.noexc72
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 128) #21
          to label %.noexc.i unwind label %bb.ad, !noalias !5573

.noexc.i:                                         ; preds = %bb.ac
  unreachable

bb.ad:                                            ; preds = %bb.ac
  %i.da = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression17DeflatedAttributeEBH_(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.b) #20
          to label %.body73 unwind label %bb.ae, !noalias !5573

bb.ae:                                            ; preds = %bb.ad
  %i.db = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18, !noalias !5573
  unreachable

.thread:                                          ; preds = %.invoke, %bb.x, %bb.w, %bb.s, %bb.r, %bb.u, %bb.o, %bb.aa
  %i.dc = icmp eq i64 %i.bs, 0
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bv) ]
  br i1 %i.dc, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %.thread
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression12DeflatedNameEBH_(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.bv)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEBH_.exit unwind label %bb.ag

common.resume.i:                                  ; preds = %bb.ai, %bb.ag
  %.sink.i = phi i64 [ 128, %bb.ai ], [ 64, %bb.ag ]
  %common.resume.op.i = phi { ptr, i32 } [ %i.de, %bb.ai ], [ %i.dd, %bb.ag ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bv, i64 noundef %.sink.i, i64 noundef 8) #17
  br label %.body73

bb.ag:                                            ; preds = %bb.af
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i

bb.ah:                                            ; preds = %.thread
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression17DeflatedAttributeEBH_(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.bv)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEBH_.exit unwind label %bb.ai, !inline_history !0

bb.ai:                                            ; preds = %bb.ah
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEBH_.exit: ; preds = %bb.af, %bb.ah
  %.sink1.i = phi i64 [ 64, %bb.af ], [ 128, %bb.ah ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bv, i64 noundef %.sink1.i, i64 noundef 8) #17
  br label %bb.al

bb.aj:                                            ; preds = %bb.y, %.invoke
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEBH_(i64 %i.bs, ptr %i.bv) #20
          to label %.body73 unwind label %bb.ak

bb.ak:                                            ; preds = %.body73, %.thread57, %bb.aj
  %i.df = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.al:                                            ; preds = %bb.m, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEBH_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  invoke fastcc void @_RNvNtNtNtCsarohYtwVpE2_13libcst_native6parser7grammar6python12___parse_name(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.f, ptr %.val, i64 %.val44, ptr noalias noundef align 8 dereferenceable(48) %3, i64 noundef %4)
          to label %bb.am unwind label %.body

bb.am:                                            ; preds = %bb.al
  %i.dg = load i64, ptr %i.f, align 8, !range !19, !noundef !20
  %i.dh = icmp eq i64 %i.dg, -1
  br i1 %i.dh, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEEB1n_.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.di = load i64, ptr %i.bg, align 8, !noundef !20 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5575
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %i.f, i64 64, i1 false)
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #17, !noalias !5576
  %i.dj = call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 8, 145) 64, i64 noundef 8) #17, !noalias !5576 ; 6 uses
  %i.dk = icmp eq ptr %i.dj, null
  br i1 %i.dk, label %bb.ao, label %bb.av, !prof !40

bb.ao:                                            ; preds = %bb.an
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #21
          to label %.noexc.i75 unwind label %bb.ap, !noalias !5575

.noexc.i75:                                       ; preds = %bb.ao
  unreachable

bb.ap:                                            ; preds = %bb.ao
  %i.dl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression12DeflatedNameEBH_(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.a) #20
          to label %.body73 unwind label %bb.aq, !noalias !5575

bb.aq:                                            ; preds = %bb.ap
  %i.dm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18, !noalias !5575
  unreachable

bb.ar:                                            ; preds = %bb.av
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression12DeflatedNameEBH_(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.dj)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEBH_.exit.i unwind label %bb.as

common.resume.i.i:                                ; preds = %bb.au, %bb.as
  %.sroa.12.040263269.a = phi ptr [ %i.cy, %bb.au ], [ %i.dj, %bb.as ]
  %.sink.i.i = phi i64 [ 128, %bb.au ], [ 64, %bb.as ]
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.do, %bb.au ], [ %i.dn, %bb.as ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.12.040263269.a, i64 noundef %.sink.i.i, i64 noundef 8) #17
  br label %.body73

bb.as:                                            ; preds = %bb.ar
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i.i

bb.at:                                            ; preds = %.thread254
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression17DeflatedAttributeEBH_(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.cy)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEBH_.exit.i unwind label %bb.au, !inline_history !0

bb.au:                                            ; preds = %bb.at
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEBH_.exit.i: ; preds = %bb.at, %bb.ar
  %.sroa.12.040263268 = phi ptr [ %i.dj, %bb.ar ], [ %i.cy, %bb.at ]
  %.sink1.i.i = phi i64 [ 64, %bb.ar ], [ 128, %bb.at ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.12.040263268, i64 noundef %.sink1.i.i, i64 noundef 8) #17
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEEB1n_.exit

bb.av:                                            ; preds = %bb.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.dj, ptr noundef nonnull align 8 dereferenceable(64) %i.f, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5575
  %i.dp = icmp ne i64 %.sroa.0.0, 2               ; 2 uses
  %i.dq = icmp ule i64 %i.di, %.sroa.11.0
  %or.cond = and i1 %i.dp, %i.dq
  br i1 %or.cond, label %bb.ar, label %bb.aw

.thread254:                                       ; preds = %.noexc72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.cy, ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 128, i1 false), !noalias !5573
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5573
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.dr = icmp ne i64 %.sroa.0.0, 2               ; 2 uses
  %i.ds = icmp ule i64 %i.cw, %.sroa.11.0
  %or.cond258 = and i1 %i.dr, %i.ds
  br i1 %or.cond258, label %bb.at, label %bb.aw

bb.aw:                                            ; preds = %.thread254, %bb.av
  %7 = phi i1 [ %i.dr, %.thread254 ], [ %i.dp, %bb.av ]
  %.sroa.17.039264 = phi i64 [ %i.cw, %.thread254 ], [ %i.di, %bb.av ] ; 2 uses
  %.sroa.12.040261 = phi ptr [ %i.cy, %.thread254 ], [ %i.dj, %bb.av ] ; 4 uses
  %.sroa.011.045259 = phi i64 [ 1, %.thread254 ], [ 0, %bb.av ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.dt = invoke fastcc { i64, ptr } @_RNvXs5U_NtNtCsarohYtwVpE2_13libcst_native5nodes10expressionNtB6_23DeflatedNameOrAttributeNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(i64 %.sroa.011.045259, ptr nonnull %.sroa.12.040261)
          to label %bb.ay unwind label %bb.ax     ; 2 uses

bb.ax:                                            ; preds = %bb.aw, %bb.ay
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %.thread57

bb.ay:                                            ; preds = %bb.aw
  %i.dv = extractvalue { i64, ptr } %i.dt, 0
  %i.dw = extractvalue { i64, ptr } %i.dt, 1
  store i64 %.sroa.17.039264, ptr %i.bh, align 8
  store i64 %i.dv, ptr %i.d, align 8
  store ptr %i.dw, ptr %i.bi, align 8
  invoke void @_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapjINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeENtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE6insertB1A_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.l, i64 noundef %4, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.az unwind label %bb.ax

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.val65 = load i64, ptr %i.e, align 8, !range !23, !noundef !20 ; 2 uses
  %.val66 = load ptr, ptr %i.bj, align 8          ; 5 uses
  switch i64 %.val65, label %bb.ba [
    i64 -1, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEEEB1J_.exit88
    i64 2, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEEEB1J_.exit88
  ]

bb.ba:                                            ; preds = %bb.az
  %8 = icmp eq i64 %.val65, 0
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val66) ]
  br i1 %8, label %9, label %bb.bc

9:                                                ; preds = %bb.ba
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression12DeflatedNameEBH_(ptr noalias noundef nonnull align 8 dereferenceable(64) %.val66)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEBH_.exit.i.i84 unwind label %bb.bb

common.resume.i.i.i81:                            ; preds = %bb.bd, %bb.bb
  %.sink.i.i.i82 = phi i64 [ 128, %bb.bd ], [ 64, %bb.bb ]
  %common.resume.op.i.i.i83 = phi { ptr, i32 } [ %i.dy, %bb.bd ], [ %i.dx, %bb.bb ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val66, i64 noundef %.sink.i.i.i82, i64 noundef 8) #17
  br label %.thread57

bb.bb:                                            ; preds = %9
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i.i.i81

bb.bc:                                            ; preds = %bb.ba
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression17DeflatedAttributeEBH_(ptr noalias noundef nonnull align 8 dereferenceable(128) %.val66)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEBH_.exit.i.i84 unwind label %bb.bd, !inline_history !0

bb.bd:                                            ; preds = %bb.bc
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i.i.i81

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEBH_.exit.i.i84: ; preds = %bb.bc, %9
  %.sink1.i.i.i85 = phi i64 [ 64, %9 ], [ 128, %bb.bc ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val66, i64 noundef %.sink1.i.i.i85, i64 noundef 8) #17
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEEEB1J_.exit88

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEEEB1J_.exit88: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEBH_.exit.i.i84, %bb.az, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br i1 %7, label %bb.be, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEEB1n_.exit97.backedge

bb.be:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEEEB1J_.exit88
  %10 = icmp eq i64 %.sroa.0.0, 0
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0) ]
  br i1 %10, label %11, label %bb.bg

11:                                               ; preds = %bb.be
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression12DeflatedNameEBH_(ptr noalias noundef nonnull align 8 dereferenceable(64) %.sroa.9.0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEBH_.exit.i93 unwind label %bb.bf

common.resume.i.i90:                              ; preds = %bb.bh, %bb.bf
  %.sink.i.i91 = phi i64 [ 128, %bb.bh ], [ 64, %bb.bf ]
  %common.resume.op.i.i92 = phi { ptr, i32 } [ %i.ea, %bb.bh ], [ %i.dz, %bb.bf ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.9.0, i64 noundef %.sink.i.i91, i64 noundef 8) #17
  br label %.body73

bb.bf:                                            ; preds = %11
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i.i90

bb.bg:                                            ; preds = %bb.be
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression17DeflatedAttributeEBH_(ptr noalias noundef nonnull align 8 dereferenceable(128) %.sroa.9.0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEBH_.exit.i93 unwind label %bb.bh, !inline_history !0

bb.bh:                                            ; preds = %bb.bg
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i.i90

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEBH_.exit.i93: ; preds = %bb.bg, %11
  %.sink1.i.i94 = phi i64 [ 64, %11 ], [ 128, %bb.bg ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.9.0, i64 noundef %.sink1.i.i94, i64 noundef 8) #17
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEEB1n_.exit97.backedge

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEEB1n_.exit97.backedge: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEBH_.exit.i93, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEEEB1J_.exit88
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEEB1n_.exit97

.thread57:                                        ; preds = %common.resume.i.i.i81, %bb.ax
  %eh.lpad-body87 = phi { ptr, i32 } [ %i.du, %bb.ax ], [ %common.resume.op.i.i.i83, %common.resume.i.i.i81 ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEEB1n_(i64 %.sroa.011.045259, ptr nonnull %.sroa.12.040261) #20
          to label %.body73 unwind label %bb.ak

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCslbOqntPwjz2_11peg_runtime10RuleResultNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEEB1n_.exit: ; preds = %bb.am, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEBH_.exit.i
  store i64 %.sroa.0.0, ptr %0, align 8
  %.sroa.9.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.9.0, ptr %.sroa.9.0..sroa_idx5, align 8
  %.sroa.11.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.11.0, ptr %.sroa.11.0..sroa_idx9, align 8
  br label %bb.l
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtNtCsarohYtwVpE2_13libcst_native6parser7grammar6python20___parse_simple_stmts(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(200) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef nonnull align 8 dereferenceable(1008) %2, ptr noalias noundef nonnull align 8 dereferenceable(48) %3, i64 noundef %4, ptr noalias noundef nonnull readonly captures(none) %5) unnamed_addr #0 personality ptr @rust_eh_personality !guid !5601 {
bb.a:
  %.sroa.040.i.sroa.4 = alloca [160 x i8], align 8 ; 4 uses
  %i.a = alloca [24 x i8], align 8                ; 12 uses
  %i.b = alloca [24 x i8], align 8                ; 11 uses
  %i.c = alloca [152 x i8], align 8               ; 6 uses
  %i.d = alloca [152 x i8], align 8               ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 15 uses
  %i.f = alloca [144 x i8], align 8               ; 4 uses
  %i.g = alloca [152 x i8], align 8               ; 8 uses
  %.sroa.020 = alloca [168 x i8], align 8         ; 5 uses
  %i.h = alloca [176 x i8], align 8               ; 13 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 11 uses
  %i.j = load i64, ptr %i.i, align 8, !noundef !20 ; 3 uses
  %i.k = add i64 %i.j, 1                          ; 2 uses
  store i64 %i.k, ptr %i.i, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.l, align 8             ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val13 = load i64, ptr %i.m, align 8, !noundef !20 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5602)
  %i.n = icmp ult i64 %4, %.val13
  br i1 %i.n, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = icmp eq i64 %i.k, 0
  br i1 %i.o, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.q = load i8, ptr %i.p, align 8, !range !37, !alias.scope !5602, !noundef !20
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = load i64, ptr %3, align 8, !alias.scope !5602, !noundef !20
  %i.t = icmp ugt i64 %4, %i.s
  br i1 %i.t, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvMs2_NtCslbOqntPwjz2_11peg_runtime5errorNtB5_10ErrorState22mark_failure_slow_path(ptr noalias noundef nonnull align 8 dereferenceable(48) %3, i64 noundef %4, ptr noalias noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 3)
  %.pre = load i64, ptr %i.i, align 8
  %i.u = add i64 %.pre, -1
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  store i64 %4, ptr %3, align 8, !alias.scope !5602
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.f, %bb.b
  %i.v = phi i64 [ %i.u, %bb.e ], [ -1, %bb.d ], [ -1, %bb.f ], [ %i.j, %bb.b ]
  store i64 %i.v, ptr %i.i, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.bi

bb.h:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %4
  %i.x = load ptr, ptr %i.w, align 8, !noalias !5602, !nonnull !20, !noundef !20
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 %i.j, ptr %i.i, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5603)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !5604
  call fastcc void @_RNCNvNtNtNtCsarohYtwVpE2_13libcst_native6parser7grammar6python20___parse_simple_stmts0B9_(ptr noalias noundef align 8 captures(address) dereferenceable(152) %i.g, ptr nonnull readonly %5, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias noundef nonnull align 8 dereferenceable(1008) %2, ptr noalias noundef nonnull align 8 dereferenceable(48) %3, i64 noundef %4)
  %i.z = load i64, ptr %i.g, align 8, !range !42, !noalias !5604, !noundef !20
  %i.aa = icmp eq i64 %i.z, -1
  br i1 %i.aa, label %_RINvNtNtNtCsarohYtwVpE2_13libcst_native6parser7grammar6python25___parse_separated_trailerNtNtNtB8_5nodes9statement22DeflatedSmallStatementRNtNtNtB8_9tokenizer4core5TokenNCNvB2_20___parse_simple_stmts0NCB2J_s_0EB8_.exit.thread, label %bb.i

_RINvNtNtNtCsarohYtwVpE2_13libcst_native6parser7grammar6python25___parse_separated_trailerNtNtNtB8_5nodes9statement22DeflatedSmallStatementRNtNtNtB8_9tokenizer4core5TokenNCNvB2_20___parse_simple_stmts0NCB2J_s_0EB8_.exit.thread: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !5604
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ap

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 144
  %i.ac = load i64, ptr %i.ab, align 8, !noalias !5604, !noundef !20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !5604
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.f, ptr noundef nonnull align 8 dereferenceable(144) %i.g, i64 144, i1 false), !noalias !5604
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !5604
  store i64 0, ptr %i.e, align 8, !noalias !5604
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.ad, align 8, !noalias !5604
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  store i64 0, ptr %i.ae, align 8, !noalias !5604
  %i.af = icmp ult i64 %i.ac, %.val13
  br i1 %i.af, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  %.sroa.425.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.5.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.86.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %bb.j

._crit_edge.i:                                    ; preds = %bb.al, %bb.i
  %.sroa.026.0.lcssa.i = phi i64 [ %i.ac, %bb.i ], [ %i.by, %bb.al ] ; 11 uses
  %i.ah = load i64, ptr %i.i, align 8, !alias.scope !5605, !noundef !20
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %bb.k, label %.thread44.i

.thread44.i:                                      ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !5604
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5604
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5604
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !5604
  br label %_RINvNtNtNtCsarohYtwVpE2_13libcst_native6parser7grammar6python25___parse_separated_trailerNtNtNtB8_5nodes9statement22DeflatedSmallStatementRNtNtNtB8_9tokenizer4core5TokenNCNvB2_20___parse_simple_stmts0NCB2J_s_0EB8_.exit

bb.j:                                             ; preds = %bb.al, %.lr.ph.i
  %.sroa.026.026.i = phi i64 [ %i.ac, %.lr.ph.i ], [ %i.by, %bb.al ] ; 10 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5606)
  call void @llvm.experimental.noalias.scope.decl(metadata !5607)
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %.sroa.026.026.i
  %i.ak = add nuw i64 %.sroa.026.026.i, 1         ; 10 uses
  %i.al = load ptr, ptr %i.aj, align 8, !noalias !5608, !nonnull !20, !noundef !20 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load i64, ptr %i.am, align 8, !noalias !5608, !noundef !20
  %i.ao = icmp eq i64 %i.an, 1
  br i1 %i.ao, label %bb.o, label %bb.p

bb.k:                                             ; preds = %._crit_edge.i
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 8, !range !37, !alias.scope !5605, !noundef !20
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = load i64, ptr %3, align 8, !alias.scope !5605, !noundef !20
  %i.at = icmp ugt i64 %.sroa.026.0.lcssa.i, %i.as
  br i1 %i.at, label %bb.n, label %.thread

bb.m:                                             ; preds = %bb.k
  invoke void @_RNvMs2_NtCslbOqntPwjz2_11peg_runtime5errorNtB5_10ErrorState22mark_failure_slow_path(ptr noalias noundef nonnull align 8 dereferenceable(48) %3, i64 noundef %.sroa.026.0.lcssa.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 3)
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !5609

bb.n:                                             ; preds = %bb.l
  store i64 %.sroa.026.0.lcssa.i, ptr %3, align 8, !alias.scope !5605
  br label %.thread

bb.o:                                             ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !noalias !5608, !nonnull !20, !noundef !20
  %lhsc.i.i = load i8, ptr %i.av, align 1, !noalias !5610
  %i.aw = icmp eq i8 %lhsc.i.i, 59
  br i1 %i.aw, label %bb.u, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.j
  %i.ax = load i64, ptr %i.i, align 8, !alias.scope !5605, !noundef !20
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %bb.q, label %.thread11.i

bb.q:                                             ; preds = %bb.p
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ba = load i8, ptr %i.az, align 8, !range !37, !alias.scope !5605, !noundef !20
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bc = load i64, ptr %3, align 8, !alias.scope !5605, !noundef !20
  %.not.i.i.i = icmp ult i64 %.sroa.026.026.i, %i.bc
  br i1 %.not.i.i.i, label %.thread11.i, label %bb.t

bb.s:                                             ; preds = %bb.q
  invoke void @_RNvMs2_NtCslbOqntPwjz2_11peg_runtime5errorNtB5_10ErrorState22mark_failure_slow_path(ptr noalias noundef nonnull align 8 dereferenceable(48) %3, i64 noundef %i.ak, ptr noalias noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 1)
          to label %.thread11.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !5609

bb.t:                                             ; preds = %bb.r
  store i64 %i.ak, ptr %3, align 8, !alias.scope !5605
  br label %.thread11.i

bb.u:                                             ; preds = %bb.o
  %i.bd = ptrtoint ptr %i.au to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5604
  invoke fastcc void @_RNCNvNtNtNtCsarohYtwVpE2_13libcst_native6parser7grammar6python20___parse_simple_stmts0B9_(ptr noalias noundef align 8 captures(address) dereferenceable(152) %i.d, ptr nonnull readonly %5, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias noundef nonnull align 8 dereferenceable(1008) %2, ptr noalias noundef nonnull align 8 dereferenceable(48) %3, i64 noundef %i.ak)
          to label %bb.v unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.u, %bb.s, %bb.m
  %lpad.loopexit.split-lp12 = landingpad { ptr, i32 }
          cleanup
end_hunk_2
