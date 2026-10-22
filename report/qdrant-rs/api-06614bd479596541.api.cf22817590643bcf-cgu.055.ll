Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/api-06614bd479596541.api.cf22817590643bcf-cgu.055?download=true
inline.NumInlined: 123
inline.NumDeleted: 48
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [12 x i8] c"StopwordsSet", align 1
@1 = private unnamed_addr constant [9 x i8] c"languages", align 1
@2 = private unnamed_addr constant [6 x i8] c"custom", align 1
@3 = private unnamed_addr constant [14 x i8] c"SnowballParams", align 1
@4 = private unnamed_addr constant [4 x i8] c"type", align 1
@5 = private unnamed_addr constant [8 x i8] c"language", align 1
@6 = private unnamed_addr constant [21 x i8] c"DisabledStemmerParams", align 1
@7 = private unnamed_addr constant [6 x i8] c"arabic", align 1
@8 = private unnamed_addr constant [6 x i8] c"danish", align 1
@9 = private unnamed_addr constant [5 x i8] c"dutch", align 1
@10 = private unnamed_addr constant [7 x i8] c"english", align 1
@11 = private unnamed_addr constant [7 x i8] c"finnish", align 1
@12 = private unnamed_addr constant [6 x i8] c"french", align 1
@13 = private unnamed_addr constant [6 x i8] c"german", align 1
@14 = private unnamed_addr constant [5 x i8] c"greek", align 1
@15 = private unnamed_addr constant [9 x i8] c"hungarian", align 1
@16 = private unnamed_addr constant [7 x i8] c"italian", align 1
@17 = private unnamed_addr constant [9 x i8] c"norwegian", align 1
@18 = private unnamed_addr constant [10 x i8] c"portuguese", align 1
@19 = private unnamed_addr constant [7 x i8] c"russian", align 1
@20 = private unnamed_addr constant [7 x i8] c"spanish", align 1
@21 = private unnamed_addr constant [7 x i8] c"swedish", align 1
@22 = private unnamed_addr constant [5 x i8] c"tamil", align 1
@23 = private unnamed_addr constant [7 x i8] c"turkish", align 1
@24 = private unnamed_addr constant [11 x i8] c"azerbaijani", align 1
@25 = private unnamed_addr constant [6 x i8] c"basque", align 1
@26 = private unnamed_addr constant [7 x i8] c"bengali", align 1
@27 = private unnamed_addr constant [7 x i8] c"catalan", align 1
@28 = private unnamed_addr constant [7 x i8] c"chinese", align 1
@29 = private unnamed_addr constant [6 x i8] c"hebrew", align 1
@30 = private unnamed_addr constant [10 x i8] c"indonesian", align 1
@31 = private unnamed_addr constant [6 x i8] c"kazakh", align 1
@32 = private unnamed_addr constant [6 x i8] c"nepali", align 1
@33 = private unnamed_addr constant [7 x i8] c"slovene", align 1
@34 = private unnamed_addr constant [5 x i8] c"tajik", align 1
@35 = private unnamed_addr constant [6 x i8] c"prefix", align 1
@36 = private unnamed_addr constant [10 x i8] c"whitespace", align 1
@37 = private unnamed_addr constant [12 x i8] c"multilingual", align 1
@38 = private unnamed_addr constant [21 x i8] c"\12unknown language: \C0\00", align 1
@39 = private unnamed_addr constant [24 x i8] c"\09Language \C0\0B not found.\00", align 1
@40 = private unnamed_addr constant [22 x i8] c"unknown tokenizer type", align 1

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !4, !noundef !5
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECshMzyYDJGtjv_3api.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECshMzyYDJGtjv_3api.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECshMzyYDJGtjv_3api.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECshMzyYDJGtjv_3api.exit.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECshMzyYDJGtjv_3api.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs607s0NAIaWN_7segment10data_types5index18StopwordsInterfaceEECshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !6, !noundef !5
  switch i64 %i.a, label %bb.b [
    i64 -1, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs607s0NAIaWN_7segment10data_types5index18StopwordsInterfaceECshMzyYDJGtjv_3api.exit
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs607s0NAIaWN_7segment10data_types5index18StopwordsInterfaceECshMzyYDJGtjv_3api.exit
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3set8BTreeSetNtNtNtCs607s0NAIaWN_7segment10data_types5index8LanguageEEECshMzyYDJGtjv_3api.exit.i.i
  ]

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs607s0NAIaWN_7segment10data_types5index18StopwordsInterfaceECshMzyYDJGtjv_3api.exit: ; preds = %bb.a, %bb.a, %bb.e, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3set8BTreeSetNtNtNtCs607s0NAIaWN_7segment10data_types5index8LanguageEEECshMzyYDJGtjv_3api.exit.i.i
  ret void

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_RNvXNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtNtCs607s0NAIaWN_7segment10data_types5index8LanguageNtNtB4_7set_val9SetValZSTENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3set8BTreeSetNtNtNtCs607s0NAIaWN_7segment10data_types5index8LanguageEEECshMzyYDJGtjv_3api.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i64, ptr %i.d, align 8, !range !7, !alias.scope !25, !noundef !5
  %1 = icmp eq i64 %i.e, 0
  br i1 %1, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3set8BTreeSetNtNtB16_6string6StringEEECshMzyYDJGtjv_3api.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke void @_RNvXNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtB4_7set_val9SetValZSTENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3set8BTreeSetNtNtB16_6string6StringEEECshMzyYDJGtjv_3api.exit.i.i unwind label %bb.f

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3set8BTreeSetNtNtNtCs607s0NAIaWN_7segment10data_types5index8LanguageEEECshMzyYDJGtjv_3api.exit.i.i: ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load i64, ptr %i.g, align 8, !range !7, !alias.scope !26, !noundef !5
  %2 = icmp eq i64 %i.h, 0
  br i1 %2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs607s0NAIaWN_7segment10data_types5index18StopwordsInterfaceECshMzyYDJGtjv_3api.exit, label %bb.e

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3set8BTreeSetNtNtNtCs607s0NAIaWN_7segment10data_types5index8LanguageEEECshMzyYDJGtjv_3api.exit.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_RNvXNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtB4_7set_val9SetValZSTENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs607s0NAIaWN_7segment10data_types5index18StopwordsInterfaceECshMzyYDJGtjv_3api.exit

bb.f:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3set8BTreeSetNtNtB16_6string6StringEEECshMzyYDJGtjv_3api.exit.i.i: ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant17StemmingAlgorithmEEB13_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !8, !noundef !5
  %i.b = icmp ugt i64 %i.a, -4
  br i1 %i.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant17StemmingAlgorithmEBH_.exit, label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant17StemmingAlgorithmEBH_.exit: ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant14SnowballParamsEBH_.exit.i.i.i
  ret void

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant14SnowballParamsEBH_.exit.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECshMzyYDJGtjv_3api.exit.i.i.i.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECshMzyYDJGtjv_3api.exit.i.i.i.i.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.c

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant14SnowballParamsEBH_.exit.i.i.i: ; preds = %bb.b
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant17StemmingAlgorithmEBH_.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtCshqfBqtY9aGF_8indexmap6BucketNtNtBG_6string6StringNtNtCs8O45qwFIwQX_10serde_json5value5ValueEEECshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtCshqfBqtY9aGF_8indexmap6BucketNtNtB7_6string6StringNtNtCs8O45qwFIwQX_10serde_json5value5ValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtCshqfBqtY9aGF_8indexmap6BucketNtNtB7_6string6StringNtNtCs8O45qwFIwQX_10serde_json5value5ValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecINtCshqfBqtY9aGF_8indexmap6BucketNtNtBG_6string6StringNtNtCs8O45qwFIwQX_10serde_json5value5ValueEEECshMzyYDJGtjv_3api.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtCshqfBqtY9aGF_8indexmap6BucketNtNtB7_6string6StringNtNtCs8O45qwFIwQX_10serde_json5value5ValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecINtCshqfBqtY9aGF_8indexmap6BucketNtNtBG_6string6StringNtNtCs8O45qwFIwQX_10serde_json5value5ValueEEECshMzyYDJGtjv_3api.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtBG_6string6StringEECshMzyYDJGtjv_3api.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtBG_6string6StringEECshMzyYDJGtjv_3api.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs8O45qwFIwQX_10serde_json5error5ErrorECshMzyYDJGtjv_3api(ptr captures(address) %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34)
  %i.b = load i64, ptr %.0.val, align 8, !range !35, !alias.scope !36, !noundef !5
  switch i64 %i.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs8O45qwFIwQX_10serde_json5error9ErrorImplEECshMzyYDJGtjv_3api.exit [
    i64 0, label %bb.b
    i64 1, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %.val1.i.i.i = load i64, ptr %i.c, align 8, !alias.scope !36, !noundef !5 ; 2 uses
  %i.d = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs8O45qwFIwQX_10serde_json5error9ErrorImplEECshMzyYDJGtjv_3api.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %.val.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !36, !nonnull !5, !noundef !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i, i64 noundef 1) #10, !noalias !36
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs8O45qwFIwQX_10serde_json5error9ErrorImplEECshMzyYDJGtjv_3api.exit

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %.val2.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !36, !nonnull !5, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !36
  %i.g = ptrtoint ptr %.val2.i.i.i to i64         ; 2 uses
  %i.h = and i64 %i.g, 3
  switch i64 %i.h, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshMzyYDJGtjv_3api.exit.i.i.i
    i64 3, label %bb.e
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshMzyYDJGtjv_3api.exit.i.i.i
    i64 1, label %bb.f
  ], !prof !37

default.unreachable:                              ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.i = icmp ult ptr %.val2.i.i.i, inttoptr (i64 188978561024 to ptr)
  %i.j = and i64 %i.g, 1095216660480
  %i.k = icmp ne i64 %i.j, 1095216660480
  tail call void @llvm.assume(i1 %i.i)
  tail call void @llvm.assume(i1 %i.k)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshMzyYDJGtjv_3api.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.l = getelementptr i8, ptr %.val2.i.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !alias.scope !38, !noalias !36
  store i8 3, ptr %i.a, align 8, !alias.scope !38, !noalias !36
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshMzyYDJGtjv_3api.exit.i.i.i unwind label %bb.g

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshMzyYDJGtjv_3api.exit.i.i.i: ; preds = %bb.f, %bb.e, %bb.d, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !36
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs8O45qwFIwQX_10serde_json5error9ErrorImplEECshMzyYDJGtjv_3api.exit

bb.g:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 40, i64 noundef 8) #10
  resume { ptr, i32 } %i.n

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs8O45qwFIwQX_10serde_json5error9ErrorImplEECshMzyYDJGtjv_3api.exit: ; preds = %bb.a, %bb.b, %bb.c, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshMzyYDJGtjv_3api.exit.i.i.i
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 40, i64 noundef 8) #10
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8O45qwFIwQX_10serde_json5value3ser12SerializeMapECshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke void @_RINvMsa_NtCsjpNT60X9mgn_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tablejNtNtNtB8_5alloc5inner6GlobalECshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 8, i64 noundef 16)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjpNT60X9mgn_9hashbrown5table9HashTablejEECshMzyYDJGtjv_3api.exit.i.i.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtCshqfBqtY9aGF_8indexmap6BucketNtNtBG_6string6StringNtNtCs8O45qwFIwQX_10serde_json5value5ValueEEECshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0) #11
          to label %.body unwind label %bb.e

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjpNT60X9mgn_9hashbrown5table9HashTablejEECshMzyYDJGtjv_3api.exit.i.i.i: ; preds = %bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtCshqfBqtY9aGF_8indexmap6BucketNtNtB7_6string6StringNtNtCs8O45qwFIwQX_10serde_json5value5ValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCshqfBqtY9aGF_8indexmap3map8IndexMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs8O45qwFIwQX_10serde_json5value5ValueEECshMzyYDJGtjv_3api.exit.i unwind label %bb.c

bb.c:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjpNT60X9mgn_9hashbrown5table9HashTablejEECshMzyYDJGtjv_3api.exit.i.i.i
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtCshqfBqtY9aGF_8indexmap6BucketNtNtB7_6string6StringNtNtCs8O45qwFIwQX_10serde_json5value5ValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0)
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
end_hunk_0
begin_hunk_1_@_RINvXNvNtNtCs607s0NAIaWN_7segment10data_types5indexsR_1__NtB5_16SnowballLanguageNtNtCs4NSHK7GLW4I_10serde_core3ser9Serialize9serializeNtNtNtCs8O45qwFIwQX_10serde_json5value3ser10SerializerECshMzyYDJGtjv_3api:bb.a
_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant.exit44: ; preds = %bb.x
  %i.dk = load ptr, ptr %i.di, align 8, !noalias !207, !nonnull !5, !noundef !5 ; 2 uses
  %i.dl = icmp samesign ugt i64 %i.dh, 8
  tail call void @llvm.assume(i1 %i.dl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !207
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.dk, ptr noundef nonnull readonly align 1 dereferenceable(9) @17, i64 range(i64 4, 13) 9, i1 false), !noalias !208
  br label %bb.an

bb.z:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !209
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef range(i64 4, 13) 10, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !209
  %i.dm = load i64, ptr %i.g, align 8, !range !7, !noalias !209, !noundef !5
  %i.dn = trunc nuw i64 %i.dm to i1
  %i.do = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.dp = load i64, ptr %i.do, align 8, !range !9, !noalias !209, !noundef !5 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  br i1 %i.dn, label %bb.aa, label %_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant.exit48, !prof !10

bb.aa:                                            ; preds = %bb.z
  %i.dr = load i64, ptr %i.dq, align 8, !noalias !209
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.dp, i64 %i.dr) #12, !noalias !209
  unreachable

_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant.exit48: ; preds = %bb.z
  %i.ds = load ptr, ptr %i.dq, align 8, !noalias !209, !nonnull !5, !noundef !5 ; 2 uses
  %i.dt = icmp samesign ugt i64 %i.dp, 9
  tail call void @llvm.assume(i1 %i.dt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !209
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.ds, ptr noundef nonnull readonly align 1 dereferenceable(10) @18, i64 range(i64 4, 13) 10, i1 false), !noalias !210
  br label %bb.an

bb.ab:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !211
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, i64 noundef range(i64 4, 13) 8, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !211
  %i.du = load i64, ptr %i.f, align 8, !range !7, !noalias !211, !noundef !5
  %i.dv = trunc nuw i64 %i.du to i1
  %i.dw = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.dx = load i64, ptr %i.dw, align 8, !range !9, !noalias !211, !noundef !5 ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  br i1 %i.dv, label %bb.ac, label %_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant.exit52, !prof !10

bb.ac:                                            ; preds = %bb.ab
  %i.dz = load i64, ptr %i.dy, align 8, !noalias !211
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.dx, i64 %i.dz) #12, !noalias !211
  unreachable

_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant.exit52: ; preds = %bb.ab
  %i.ea = load ptr, ptr %i.dy, align 8, !noalias !211, !nonnull !5, !noundef !5 ; 2 uses
  %i.eb = icmp samesign ugt i64 %i.dx, 7
  tail call void @llvm.assume(i1 %i.eb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !211
  store i64 7953754339714887538, ptr %i.ea, align 1, !noalias !212
  br label %bb.an

bb.ad:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !213
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef range(i64 4, 13) 7, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !213
  %i.ec = load i64, ptr %i.e, align 8, !range !7, !noalias !213, !noundef !5
  %i.ed = trunc nuw i64 %i.ec to i1
  %i.ee = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ef = load i64, ptr %i.ee, align 8, !range !9, !noalias !213, !noundef !5 ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br i1 %i.ed, label %bb.ae, label %_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant.exit56, !prof !10

bb.ae:                                            ; preds = %bb.ad
  %i.eh = load i64, ptr %i.eg, align 8, !noalias !213
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.ef, i64 %i.eh) #12, !noalias !213
  unreachable

_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant.exit56: ; preds = %bb.ad
  %i.ei = load ptr, ptr %i.eg, align 8, !noalias !213, !nonnull !5, !noundef !5 ; 2 uses
  %i.ej = icmp samesign ugt i64 %i.ef, 6
  tail call void @llvm.assume(i1 %i.ej)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !213
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.ei, ptr noundef nonnull readonly align 1 dereferenceable(7) @19, i64 range(i64 4, 13) 7, i1 false), !noalias !214
  br label %bb.an

bb.af:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !215
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef range(i64 4, 13) 7, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !215
  %i.ek = load i64, ptr %i.d, align 8, !range !7, !noalias !215, !noundef !5
  %i.el = trunc nuw i64 %i.ek to i1
  %i.em = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.en = load i64, ptr %i.em, align 8, !range !9, !noalias !215, !noundef !5 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.el, label %bb.ag, label %_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant.exit60, !prof !10

bb.ag:                                            ; preds = %bb.af
  %i.ep = load i64, ptr %i.eo, align 8, !noalias !215
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.en, i64 %i.ep) #12, !noalias !215
  unreachable

_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant.exit60: ; preds = %bb.af
  %i.eq = load ptr, ptr %i.eo, align 8, !noalias !215, !nonnull !5, !noundef !5 ; 2 uses
  %i.er = icmp samesign ugt i64 %i.en, 6
  tail call void @llvm.assume(i1 %i.er)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !215
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.eq, ptr noundef nonnull readonly align 1 dereferenceable(7) @20, i64 range(i64 4, 13) 7, i1 false), !noalias !216
  br label %bb.an

bb.ah:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !217
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef range(i64 4, 13) 7, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !217
  %i.es = load i64, ptr %i.c, align 8, !range !7, !noalias !217, !noundef !5
  %i.et = trunc nuw i64 %i.es to i1
  %i.eu = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ev = load i64, ptr %i.eu, align 8, !range !9, !noalias !217, !noundef !5 ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.et, label %bb.ai, label %_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant.exit64, !prof !10

bb.ai:                                            ; preds = %bb.ah
  %i.ex = load i64, ptr %i.ew, align 8, !noalias !217
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.ev, i64 %i.ex) #12, !noalias !217
  unreachable

_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant.exit64: ; preds = %bb.ah
  %i.ey = load ptr, ptr %i.ew, align 8, !noalias !217, !nonnull !5, !noundef !5 ; 2 uses
  %i.ez = icmp samesign ugt i64 %i.ev, 6
  tail call void @llvm.assume(i1 %i.ez)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !217
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.ey, ptr noundef nonnull readonly align 1 dereferenceable(7) @21, i64 range(i64 4, 13) 7, i1 false), !noalias !218
  br label %bb.an

bb.aj:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !219
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef range(i64 4, 13) 5, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !219
  %i.fa = load i64, ptr %i.b, align 8, !range !7, !noalias !219, !noundef !5
  %i.fb = trunc nuw i64 %i.fa to i1
  %i.fc = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.fd = load i64, ptr %i.fc, align 8, !range !9, !noalias !219, !noundef !5 ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.fb, label %bb.ak, label %_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant.exit68, !prof !10

bb.ak:                                            ; preds = %bb.aj
  %i.ff = load i64, ptr %i.fe, align 8, !noalias !219
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.fd, i64 %i.ff) #12, !noalias !219
  unreachable

_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant.exit68: ; preds = %bb.aj
  %i.fg = load ptr, ptr %i.fe, align 8, !noalias !219, !nonnull !5, !noundef !5 ; 2 uses
  %i.fh = icmp samesign ugt i64 %i.fd, 4
  tail call void @llvm.assume(i1 %i.fh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !219
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.fg, ptr noundef nonnull readonly align 1 dereferenceable(5) @22, i64 range(i64 4, 13) 5, i1 false), !noalias !220
  br label %bb.an

bb.al:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !221
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 4, 13) 7, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !221
  %i.fi = load i64, ptr %i.a, align 8, !range !7, !noalias !221, !noundef !5
  %i.fj = trunc nuw i64 %i.fi to i1
  %i.fk = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.fl = load i64, ptr %i.fk, align 8, !range !9, !noalias !221, !noundef !5 ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.fj, label %bb.am, label %_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant.exit72, !prof !10

bb.am:                                            ; preds = %bb.al
  %i.fn = load i64, ptr %i.fm, align 8, !noalias !221
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.fl, i64 %i.fn) #12, !noalias !221
  unreachable

_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant.exit72: ; preds = %bb.al
  %i.fo = load ptr, ptr %i.fm, align 8, !noalias !221, !nonnull !5, !noundef !5 ; 2 uses
  %i.fp = icmp samesign ugt i64 %i.fl, 6
  tail call void @llvm.assume(i1 %i.fp)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !221
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.fo, ptr noundef nonnull readonly align 1 dereferenceable(7) @23, i64 range(i64 4, 13) 7, i1 false), !noalias !222
  br label %bb.an

bb.an:                                            ; preds = %_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant.exit72, %_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant.exit68, %_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant.exit64, %_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant.exit60, %_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant.exit56, %_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant.exit52, %_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant.exit48, %_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant.exit44, %_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant.exit40, %_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant.exit36, %_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant.exit32, %_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant.exit28, %_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant.exit24, %_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant.exit20, %_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant.exit16, %_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant.exit12, %_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant.exit8, %_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant.exit4, %_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant.exit
  %.sink75 = phi i64 [ %i.fl, %_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant.exit72 ], [ %i.fd, %_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant.exit68 ], [ %i.ev, %_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant.exit64 ], [ %i.en, %_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant.exit60 ], [ %i.ef, %_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant.exit56 ], [ %i.dx, %_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant.exit52 ], [ %i.dp, %_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant.exit48 ], [ %i.dh, %_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant.exit44 ], [ %i.cz, %_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant.exit40 ], [ %i.cr, %_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant.exit36 ], [ %i.cj, %_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant.exit32 ], [ %i.cb, %_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant.exit28 ], [ %i.bt, %_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant.exit24 ], [ %i.bl, %_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant.exit20 ], [ %i.bd, %_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant.exit16 ], [ %i.av, %_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant.exit12 ], [ %i.an, %_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant.exit8 ], [ %i.af, %_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant.exit4 ], [ %i.x, %_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant.exit ]
  %.sink74 = phi ptr [ %i.fo, %_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant.exit72 ], [ %i.fg, %_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant.exit68 ], [ %i.ey, %_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant.exit64 ], [ %i.eq, %_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant.exit60 ], [ %i.ei, %_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant.exit56 ], [ %i.ea, %_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant.exit52 ], [ %i.ds, %_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant.exit48 ], [ %i.dk, %_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant.exit44 ], [ %i.dc, %_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant.exit40 ], [ %i.cu, %_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant.exit36 ], [ %i.cm, %_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant.exit32 ], [ %i.ce, %_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant.exit28 ], [ %i.bw, %_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant.exit24 ], [ %i.bo, %_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant.exit20 ], [ %i.bg, %_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant.exit16 ], [ %i.ay, %_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant.exit12 ], [ %i.aq, %_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant.exit8 ], [ %i.ai, %_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant.exit4 ], [ %i.aa, %_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant.exit ]
  %.sink = phi i64 [ 7, %_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant.exit72 ], [ 5, %_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant.exit68 ], [ 7, %_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant.exit64 ], [ 7, %_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant.exit60 ], [ 7, %_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant.exit56 ], [ 8, %_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant.exit52 ], [ 10, %_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant.exit48 ], [ 9, %_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant.exit44 ], [ 7, %_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant.exit40 ], [ 9, %_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant.exit36 ], [ 5, %_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant.exit32 ], [ 6, %_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant.exit28 ], [ 6, %_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant.exit24 ], [ 7, %_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant.exit20 ], [ 7, %_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant.exit16 ], [ 5, %_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant.exit12 ], [ 6, %_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant.exit8 ], [ 8, %_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant.exit4 ], [ 6, %_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant.exit ]
  store i64 -9223372036854775805, ptr %0, align 8
  %.sroa.4.0..sroa_idx.i69 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink75, ptr %.sroa.4.0..sroa_idx.i69, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i70 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sink74, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i70, align 8
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i71 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sink, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i71, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtNtCs607s0NAIaWN_7segment10data_types5indexsT_1__NtB5_18StopwordsInterfaceNtNtCs4NSHK7GLW4I_10serde_core3ser9Serialize9serializeNtNtNtCs8O45qwFIwQX_10serde_json5value3ser10SerializerECshMzyYDJGtjv_3api(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 4 uses
  %i.b = alloca [96 x i8], align 8                ; 8 uses
  %i.c = alloca [96 x i8], align 8                ; 10 uses
  %i.d = load i64, ptr %1, align 8, !range !226, !noundef !5 ; 3 uses
  %.not = icmp eq i64 %i.d, 2
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !227)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !228)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !229
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !229
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !range !7, !alias.scope !228, !noundef !5 ; 2 uses
  %.not27.not.i = icmp eq i64 %i.f, 0
  %i.g = add nuw nsw i64 %i.f, %i.d
  call void @_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer16serialize_struct(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 12, i64 noundef %i.g), !noalias !229
  %i.h = load i64, ptr %i.b, align 8, !range !4, !noalias !229, !noundef !5 ; 2 uses
  %i.i = icmp eq i64 %i.h, -1
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !noalias !229, !nonnull !5, !align !12, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !229
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.l, align 8, !alias.scope !227
  store i64 -1, ptr %0, align 8, !alias.scope !227
  br label %_RINvXNvNtNtCs607s0NAIaWN_7segment10data_types5indexs10_1__NtB5_12StopwordsSetNtNtCs4NSHK7GLW4I_10serde_core3ser9Serialize9serializeNtNtNtCs8O45qwFIwQX_10serde_json5value3ser10SerializerECshMzyYDJGtjv_3api.exit

bb.d:                                             ; preds = %bb.b
  %.not.not.i = icmp eq i64 %i.d, 0
  %.sroa.422.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.422.0.copyload.i = load ptr, ptr %.sroa.422.0..sroa_idx.i, align 8, !noalias !229
  %.sroa.523.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.523.0..sroa_idx.i, i64 80, i1 false), !noalias !229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !229
  store i64 %i.h, ptr %i.c, align 8, !noalias !229
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.422.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !229
  br i1 %.not.not.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = invoke noundef align 8 ptr @_RINvXs6_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB6_12SerializeMapNtNtCs4NSHK7GLW4I_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3set8BTreeSetNtNtNtCs607s0NAIaWN_7segment10data_types5index8LanguageEEECshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 9, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1)
          to label %bb.f unwind label %bb.m, !noalias !227 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %.not29.i = icmp eq ptr %i.m, null
  br i1 %.not29.i, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f, %bb.d
  br i1 %.not27.not.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = invoke noundef align 8 ptr @_RINvXs6_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB6_12SerializeMapNtNtCs4NSHK7GLW4I_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3set8BTreeSetNtNtB2U_6string6StringEEECshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 6, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.e)
          to label %bb.i unwind label %bb.m, !noalias !227 ; 2 uses

bb.i:                                             ; preds = %bb.h
  %.not31.i = icmp eq ptr %i.n, null
  br i1 %.not31.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !229
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(96) %i.c, i64 96, i1 false), !noalias !229
  call void @_RNvXs6_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB5_12SerializeMapNtNtCs4NSHK7GLW4I_10serde_core3ser15SerializeStruct3end(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(96) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !229
  br label %_RINvXNvNtNtCs607s0NAIaWN_7segment10data_types5indexs10_1__NtB5_12StopwordsSetNtNtCs4NSHK7GLW4I_10serde_core3ser9Serialize9serializeNtNtNtCs8O45qwFIwQX_10serde_json5value3ser10SerializerECshMzyYDJGtjv_3api.exit

bb.k:                                             ; preds = %bb.i, %bb.f
  %.sink.i = phi ptr [ %i.m, %bb.f ], [ %i.n, %bb.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink.i, ptr %i.o, align 8, !alias.scope !227
  store i64 -1, ptr %0, align 8, !alias.scope !227
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8O45qwFIwQX_10serde_json5value3ser12SerializeMapECshMzyYDJGtjv_3api(ptr noalias nofree noundef align 8 dereferenceable(96) %i.c), !noalias !227
  br label %_RINvXNvNtNtCs607s0NAIaWN_7segment10data_types5indexs10_1__NtB5_12StopwordsSetNtNtCs4NSHK7GLW4I_10serde_core3ser9Serialize9serializeNtNtNtCs8O45qwFIwQX_10serde_json5value3ser10SerializerECshMzyYDJGtjv_3api.exit

bb.l:                                             ; preds = %bb.m
  resume { ptr, i32 } %lpad.thr_comm.i

bb.m:                                             ; preds = %bb.h, %bb.e
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8O45qwFIwQX_10serde_json5value3ser12SerializeMapECshMzyYDJGtjv_3api(ptr noalias nofree noundef align 8 dereferenceable(96) %i.c) #11
          to label %bb.l unwind label %bb.n, !noalias !227

bb.n:                                             ; preds = %bb.m
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9, !noalias !227
  unreachable

_RINvXNvNtNtCs607s0NAIaWN_7segment10data_types5indexs10_1__NtB5_12StopwordsSetNtNtCs4NSHK7GLW4I_10serde_core3ser9Serialize9serializeNtNtNtCs8O45qwFIwQX_10serde_json5value3ser10SerializerECshMzyYDJGtjv_3api.exit: ; preds = %bb.c, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !229
  br label %bb.p

bb.o:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RINvXNvNtNtCs607s0NAIaWN_7segment10data_types5indexsW_1__NtB5_8LanguageNtNtCs4NSHK7GLW4I_10serde_core3ser9Serialize9serializeNtNtNtCs8O45qwFIwQX_10serde_json5value3ser10SerializerECshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.q)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_RINvXNvNtNtCs607s0NAIaWN_7segment10data_types5indexs10_1__NtB5_12StopwordsSetNtNtCs4NSHK7GLW4I_10serde_core3ser9Serialize9serializeNtNtNtCs8O45qwFIwQX_10serde_json5value3ser10SerializerECshMzyYDJGtjv_3api.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtNtCs607s0NAIaWN_7segment10data_types5indexsW_1__NtB5_8LanguageNtNtCs4NSHK7GLW4I_10serde_core3ser9Serialize9serializeNtNtNtCs8O45qwFIwQX_10serde_json5value3ser10SerializerECshMzyYDJGtjv_3api(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [24 x i8], align 8                ; 6 uses
  %i.q = alloca [24 x i8], align 8                ; 6 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %i.s = alloca [24 x i8], align 8                ; 6 uses
  %i.t = alloca [24 x i8], align 8                ; 6 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [24 x i8], align 8                ; 6 uses
  %i.w = alloca [24 x i8], align 8                ; 6 uses
  %i.x = alloca [24 x i8], align 8                ; 6 uses
  %i.y = alloca [24 x i8], align 8                ; 6 uses
  %i.z = alloca [24 x i8], align 8                ; 6 uses
  %i.aa = alloca [24 x i8], align 8               ; 6 uses
  %i.ab = alloca [24 x i8], align 8               ; 6 uses
  %i.ac = alloca [24 x i8], align 8               ; 6 uses
  %i.ad = alloca [24 x i8], align 8               ; 6 uses
  %i.ae = load i8, ptr %1, align 1, !range !410, !noundef !5
  switch i8 %i.ae, label %default.unreachable117 [
    i8 0, label %bb.b
    i8 1, label %bb.d
    i8 2, label %bb.f
    i8 3, label %bb.h
    i8 4, label %bb.j
    i8 5, label %bb.l
    i8 6, label %bb.n
    i8 7, label %bb.p
    i8 8, label %bb.r
    i8 9, label %bb.t
    i8 10, label %bb.v
    i8 11, label %bb.x
    i8 12, label %bb.z
    i8 13, label %bb.ab
    i8 14, label %bb.ad
    i8 15, label %bb.af
    i8 16, label %bb.ah
    i8 17, label %bb.aj
    i8 18, label %bb.al
    i8 19, label %bb.an
    i8 20, label %bb.ap
    i8 21, label %bb.ar
    i8 22, label %bb.at
    i8 23, label %bb.av
    i8 24, label %bb.ax
    i8 25, label %bb.az
    i8 26, label %bb.bb
    i8 27, label %bb.bd
    i8 28, label %bb.bf
    i8 29, label %bb.bh
  ]

default.unreachable117:                           ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !411
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ad, i64 noundef range(i64 4, 13) 6, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !411
  %i.af = load i64, ptr %i.ad, align 8, !range !7, !noalias !411, !noundef !5
  %i.ag = trunc nuw i64 %i.af to i1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !range !9, !noalias !411, !noundef !5 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  br i1 %i.ag, label %bb.c, label %_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant.exit, !prof !10

bb.c:                                             ; preds = %bb.b
  %i.ak = load i64, ptr %i.aj, align 8, !noalias !411
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.ai, i64 %i.ak) #12, !noalias !411
  unreachable

_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant.exit: ; preds = %bb.b
  %i.al = load ptr, ptr %i.aj, align 8, !noalias !411, !nonnull !5, !noundef !5 ; 2 uses
  %i.am = icmp samesign ugt i64 %i.ai, 5
  tail call void @llvm.assume(i1 %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !411
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.al, ptr noundef nonnull readonly align 1 dereferenceable(6) @7, i64 range(i64 4, 13) 6, i1 false), !noalias !412
  br label %bb.bj

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !413
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ac, i64 noundef range(i64 4, 13) 11, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !413
  %i.an = load i64, ptr %i.ac, align 8, !range !7, !noalias !413, !noundef !5
  %i.ao = trunc nuw i64 %i.an to i1
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !range !9, !noalias !413, !noundef !5 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  br i1 %i.ao, label %bb.e, label %_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant.exit4, !prof !10

bb.e:                                             ; preds = %bb.d
  %i.as = load i64, ptr %i.ar, align 8, !noalias !413
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.aq, i64 %i.as) #12, !noalias !413
  unreachable

_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant.exit4: ; preds = %bb.d
  %i.at = load ptr, ptr %i.ar, align 8, !noalias !413, !nonnull !5, !noundef !5 ; 2 uses
  %i.au = icmp samesign ugt i64 %i.aq, 10
  tail call void @llvm.assume(i1 %i.au)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !413
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.at, ptr noundef nonnull readonly align 1 dereferenceable(11) @24, i64 range(i64 4, 13) 11, i1 false), !noalias !414
  br label %bb.bj

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !415
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ab, i64 noundef range(i64 4, 13) 6, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !415
  %i.av = load i64, ptr %i.ab, align 8, !range !7, !noalias !415, !noundef !5
  %i.aw = trunc nuw i64 %i.av to i1
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !range !9, !noalias !415, !noundef !5 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  br i1 %i.aw, label %bb.g, label %_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant.exit8, !prof !10

bb.g:                                             ; preds = %bb.f
  %i.ba = load i64, ptr %i.az, align 8, !noalias !415
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.ay, i64 %i.ba) #12, !noalias !415
  unreachable

_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant.exit8: ; preds = %bb.f
  %i.bb = load ptr, ptr %i.az, align 8, !noalias !415, !nonnull !5, !noundef !5 ; 2 uses
  %i.bc = icmp samesign ugt i64 %i.ay, 5
  tail call void @llvm.assume(i1 %i.bc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !415
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.bb, ptr noundef nonnull readonly align 1 dereferenceable(6) @25, i64 range(i64 4, 13) 6, i1 false), !noalias !416
  br label %bb.bj

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !417
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aa, i64 noundef range(i64 4, 13) 7, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !417
  %i.bd = load i64, ptr %i.aa, align 8, !range !7, !noalias !417, !noundef !5
  %i.be = trunc nuw i64 %i.bd to i1
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !range !9, !noalias !417, !noundef !5 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  br i1 %i.be, label %bb.i, label %_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant.exit12, !prof !10
end_hunk_1
begin_hunk_2_@_RNvXsk_NtNtCshMzyYDJGtjv_3api4grpc11conversionsNtNtNtCs607s0NAIaWN_7segment10data_types5index18IntegerIndexParamsINtNtCskKLDkoKarTP_4core7convert7TryFromNtNtB7_6qdrant18IntegerIndexParamsE8try_from:bb.a
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i8 %i.o, ptr %.sroa.9.0..sroa_idx, align 2
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %storemerge = phi i8 [ 0, %bb.c ], [ 1, %bb.b ]
  store i8 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsl_NtNtCshMzyYDJGtjv_3api4grpc11conversionsNtNtNtCs607s0NAIaWN_7segment10data_types5index16FloatIndexParamsINtNtCskKLDkoKarTP_4core7convert7TryFromNtNtB7_6qdrant16FloatIndexParamsE8try_from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 1)) %0, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(12) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i8, ptr %i.b, align 4, !range !13, !noundef !5
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.e = load i8, ptr %i.d, align 1, !range !13, !noundef !5
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.g = load i8, ptr %i.f, align 2, !range !13, !noundef !5
  %i.h = load i32, ptr %1, align 4, !range !15, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load i32, ptr %i.i, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvNtNtCshMzyYDJGtjv_3api4grpc11conversions25convert_memory_from_proto(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, i32 noundef %i.h, i32 %i.j)
  %i.k = load i8, ptr %i.a, align 8, !range !14, !noundef !5
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !5, !align !12, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %i.o, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.q = load i8, ptr %i.p, align 1, !range !16, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.e, ptr %i.r, align 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.c, ptr %.sroa.5.0..sroa_idx, align 2
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %i.g, ptr %.sroa.6.0..sroa_idx, align 1
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.q, ptr %.sroa.7.0..sroa_idx, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %storemerge = phi i8 [ 0, %bb.c ], [ 1, %bb.b ]
  store i8 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsm_NtNtCshMzyYDJGtjv_3api4grpc11conversionsNtNtNtCs607s0NAIaWN_7segment10data_types5index14GeoIndexParamsINtNtCskKLDkoKarTP_4core7convert7TryFromNtNtB7_6qdrant14GeoIndexParamsE8try_from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 1)) %0, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(12) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i8, ptr %i.b, align 4, !range !13, !noundef !5
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.e = load i8, ptr %i.d, align 1, !range !13, !noundef !5
  %i.f = load i32, ptr %1, align 4, !range !15, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.h = load i32, ptr %i.g, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvNtNtCshMzyYDJGtjv_3api4grpc11conversions25convert_memory_from_proto(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, i32 noundef %i.f, i32 %i.h)
  %i.i = load i8, ptr %i.a, align 8, !range !14, !noundef !5
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !5, !align !12, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.m, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.o = load i8, ptr %i.n, align 1, !range !16, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.c, ptr %i.p, align 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.e, ptr %.sroa.5.0..sroa_idx, align 2
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %i.o, ptr %.sroa.6.0..sroa_idx, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %storemerge = phi i8 [ 0, %bb.c ], [ 1, %bb.b ]
  store i8 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsn_NtNtCshMzyYDJGtjv_3api4grpc11conversionsNtNtNtCs607s0NAIaWN_7segment10data_types5index18StopwordsInterfaceINtNtCskKLDkoKarTP_4core7convert7TryFromNtNtB7_6qdrant12StopwordsSetE8try_from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.514 = alloca [24 x i8], align 8          ; 2 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  %.sroa.6.sroa.5 = alloca [16 x i8], align 8     ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 11 uses
  %i.j = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.sroa.5)
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noundef !5 ; 3 uses
  %i.n = icmp ult i64 %i.m, 384307168202282326
  tail call void @llvm.assume(i1 %i.n)
  %i.o = icmp eq i64 %i.m, 0                      ; 3 uses
  br i1 %i.o, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.r = load i64, ptr %i.j, align 8, !range !506, !noundef !5
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %i.m
  store ptr %i.q, ptr %i.g, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.q, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %i.r, ptr %.sroa.510.0..sroa_idx, align 8
  %.sroa.611.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %i.s, ptr %.sroa.611.0..sroa_idx, align 8
  invoke void @_RINvNtNtCskKLDkoKarTP_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtB1d_6string6StringENCNvXsn_NtNtCshMzyYDJGtjv_3api4grpc11conversionsNtNtNtCs607s0NAIaWN_7segment10data_types5index18StopwordsInterfaceINtNtB6_7convert7TryFromNtNtB2r_6qdrant12StopwordsSetE8try_from0ENtB35_8LanguageINtNtB6_6result6ResultzNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENCINvXso_B5s_IB5q_INtNtNtNtB1d_11collections5btree3set8BTreeSetB5a_EB5M_EINtNtNtB4_6traits7collect12FromIteratorIB5q_B5a_B5M_EE9from_iterBQ_E0B6L_EB2t_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.g)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.g, %bb.b
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.u = load i64, ptr %i.h, align 8, !range !7, !noundef !5
  %i.v = trunc nuw i64 %i.u to i1
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  br i1 %i.v, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.x, ptr %i.c, align 8, !noalias !507
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !507
  store ptr %i.c, ptr %i.a, align 8, !noalias !507
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs3_NtCs8O45qwFIwQX_10serde_json5errorNtB5_5ErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !507
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @38, ptr noundef nonnull %i.a)
          to label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECshMzyYDJGtjv_3api.exit.i unwind label %bb.f

bb.f:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECshMzyYDJGtjv_3api.exit.i, %bb.e
  %i.y = landingpad { ptr, i32 }
          cleanup
  %.val8.i = load ptr, ptr %i.c, align 8, !noalias !507, !nonnull !5, !noundef !5
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs8O45qwFIwQX_10serde_json5error5ErrorECshMzyYDJGtjv_3api(ptr nonnull %.val8.i) #11
          to label %.thread unwind label %bb.h

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECshMzyYDJGtjv_3api.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !507
  %i.z = invoke noundef nonnull align 8 ptr @_RINvMs1_NtCsgOCJwUSa4vG_5tonic6statusNtB6_6Status3newNtNtCsexYYUdYSQU6_5alloc6string6StringECshMzyYDJGtjv_3api(i8 noundef 3, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.g unwind label %bb.f

bb.g:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECshMzyYDJGtjv_3api.exit.i
  %.val7.i = load ptr, ptr %i.c, align 8, !noalias !507, !nonnull !5, !noundef !5
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs8O45qwFIwQX_10serde_json5error5ErrorECshMzyYDJGtjv_3api(ptr nonnull %.val7.i)
          to label %bb.k unwind label %bb.c

bb.h:                                             ; preds = %bb.f
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable

bb.i:                                             ; preds = %bb.d
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.425.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.i
  %.sroa.6.sroa.0.0 = phi ptr [ %i.x, %bb.i ], [ undef, %bb.a ]
  %i.ab = phi i64 [ 1, %bb.i ], [ 0, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 %i.ab, ptr %i.f, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %.sroa.6.sroa.0.0, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.5, i64 16, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !5 ; 3 uses
  %i.ae = icmp ult i64 %i.ad, 384307168202282326
  call void @llvm.assume(i1 %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.ah = load i64, ptr %i.i, align 8, !range !506, !noundef !5
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.ag, i64 %i.ad
  store ptr %i.ag, ptr %i.d, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.ah, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.ag, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %i.ai, ptr %i.al, align 8
  invoke void @_RINvXsd_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3setINtB6_8BTreeSetNtNtBc_6string6StringEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtBc_3vec9into_iter8IntoIterB18_EECshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.d)
          to label %bb.q unwind label %bb.o

bb.k:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.z, ptr %i.am, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.5)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECshMzyYDJGtjv_3api.exit unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %common.resume unwind label %bb.m

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECshMzyYDJGtjv_3api.exit: ; preds = %bb.k
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable

bb.n:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3set8BTreeSetNtNtBK_6string6StringEECshMzyYDJGtjv_3api.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECshMzyYDJGtjv_3api.exit35, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECshMzyYDJGtjv_3api.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void

bb.o:                                             ; preds = %bb.r, %bb.j
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.o, label %.noexc.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvXNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtNtCs607s0NAIaWN_7segment10data_types5index8LanguageNtNtB4_7set_val9SetValZSTENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx)
          to label %common.resume unwind label %bb.w

bb.q:                                             ; preds = %bb.j
  %.not = icmp eq i64 %i.ad, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %.not, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvXNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtB4_7set_val9SetValZSTENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3set8BTreeSetNtNtBK_6string6StringEECshMzyYDJGtjv_3api.exit unwind label %bb.o

bb.s:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.514, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3set8BTreeSetNtNtBK_6string6StringEECshMzyYDJGtjv_3api.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3set8BTreeSetNtNtBK_6string6StringEECshMzyYDJGtjv_3api.exit: ; preds = %bb.r, %bb.s
  %.sroa.013.0 = phi i64 [ 1, %bb.s ], [ 0, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.013.0, ptr %.sroa.419.0..sroa_idx, align 8
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.520.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.514, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br i1 %i.o, label %bb.t, label %bb.n

bb.t:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3set8BTreeSetNtNtBK_6string6StringEECshMzyYDJGtjv_3api.exit
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECshMzyYDJGtjv_3api.exit35 unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %common.resume unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable

common.resume:                                    ; preds = %bb.p, %.noexc.thread, %.thread, %bb.l, %bb.u
  %common.resume.op = phi { ptr, i32 } [ %i.aq, %bb.u ], [ %i.an, %bb.l ], [ %i.ap, %.noexc.thread ], [ %eh.lpad-body, %.thread ], [ %i.ap, %bb.p ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECshMzyYDJGtjv_3api.exit35: ; preds = %bb.t
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
  br label %bb.n

bb.w:                                             ; preds = %bb.p, %.noexc.thread, %.thread
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable

.thread:                                          ; preds = %bb.f, %bb.c
  %eh.lpad-body = phi { ptr, i32 } [ %i.t, %bb.c ], [ %i.y, %bb.f ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECshMzyYDJGtjv_3api(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i) #11
          to label %common.resume unwind label %bb.w

.noexc.thread:                                    ; preds = %bb.o
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECshMzyYDJGtjv_3api(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #11
          to label %common.resume unwind label %bb.w
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXso_NtNtCshMzyYDJGtjv_3api4grpc11conversionsNtNtNtCs607s0NAIaWN_7segment10data_types5index15TextIndexParamsINtNtCskKLDkoKarTP_4core7convert7TryFromNtNtB7_6qdrant15TextIndexParamsE8try_from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(128) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [64 x i8], align 8                ; 7 uses
  %i.e = alloca [48 x i8], align 8                ; 6 uses
  %i.f = alloca [64 x i8], align 8                ; 16 uses
  %i.g = alloca [24 x i8], align 8                ; 10 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.i = load i32, ptr %i.h, align 8, !noundef !5 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.k = load i64, ptr %1, align 8, !range !7, !noundef !5 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load i64, ptr %i.n, align 8, !range !7, !noundef !5 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load i64, ptr %i.p, align 8
  %i.r = load <4 x i8>, ptr %i.j, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.05.0.copyload = load i64, ptr %i.s, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.v = load i8, ptr %i.u, align 8, !range !13, !noundef !5
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.x = load i32, ptr %i.w, align 8, !range !15, !noundef !5
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.z = load i32, ptr %i.y, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %.not = icmp eq i64 %.sroa.05.0.copyload, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 %.sroa.05.0.copyload, ptr %i.e, align 8
  %.sroa.6.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx7, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvXsn_NtNtCshMzyYDJGtjv_3api4grpc11conversionsNtNtNtCs607s0NAIaWN_7segment10data_types5index18StopwordsInterfaceINtNtCskKLDkoKarTP_4core7convert7TryFromNtNtB7_6qdrant12StopwordsSetE8try_from(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.e)
          to label %bb.d unwind label %bb.ae

bb.c:                                             ; preds = %bb.a
  store i64 -1, ptr %i.f, align 8
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  %i.aa = load i64, ptr %i.d, align 8, !range !6, !noundef !5 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, -1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8            ; 2 uses
  br i1 %i.ab, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ad, ptr %i.ae, align 8
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.af = load i64, ptr %i.g, align 8, !range !8, !alias.scope !520, !noundef !5
  %i.ag = icmp ugt i64 %i.af, -4
  br i1 %i.ag, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant17StemmingAlgorithmEEB13_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant14SnowballParamsEBH_.exit.i.i.i.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable

common.resume:                                    ; preds = %bb.ae, %bb.m, %bb.z, %bb.aa, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.ah, %bb.g ], [ %i.aj, %bb.m ], [ %i.bj, %bb.ae ], [ %i.ba, %bb.aa ], [ %i.ba, %bb.z ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant14SnowballParamsEBH_.exit.i.i.i.i: ; preds = %bb.f
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant17StemmingAlgorithmEEB13_.exit

bb.i:                                             ; preds = %bb.d
  %.sroa.560.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.560.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 %i.aa, ptr %i.f, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.ad, ptr %.sroa.2.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.c
  %.sroa.025.0.copyload = load i64, ptr %i.g, align 8 ; 2 uses
  %.sroa.025.0.copyload.off = add i64 %.sroa.025.0.copyload, 3
  %switch86 = icmp ult i64 %.sroa.025.0.copyload.off, 2
  br i1 %switch86, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.sroa.627.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %.sroa.025.0.copyload, ptr %i.b, align 8
  %.sroa.362.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.362.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.627.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvXsp_NtNtCshMzyYDJGtjv_3api4grpc11conversionsNtNtNtCs607s0NAIaWN_7segment10data_types5index17StemmingAlgorithmINtNtCskKLDkoKarTP_4core7convert7TryFromNtNtNtB7_6qdrant18stemming_algorithm14StemmingParamsE8try_from(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b)
          to label %bb.n unwind label %bb.m

bb.l:                                             ; preds = %bb.j, %bb.p
  %.sroa.619.0 = phi i8 [ %.sroa.522.0.copyload, %bb.p ], [ -2, %bb.j ]
  %switch = icmp ult i32 %i.i, 5
  br i1 %switch, label %bb.q, label %.invoke

bb.m:                                             ; preds = %.invoke, %bb.u, %bb.k
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs607s0NAIaWN_7segment10data_types5index18StopwordsInterfaceEECshMzyYDJGtjv_3api(ptr noalias nofree noundef align 8 dereferenceable(64) %i.f) #11
          to label %common.resume unwind label %bb.ad

bb.n:                                             ; preds = %bb.k
  %.sroa.021.0.copyload = load i8, ptr %i.a, align 8
  %.sroa.522.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.sroa.522.0.copyload = load i8, ptr %.sroa.522.0..sroa_idx, align 1 ; 2 uses
  %.sroa.624.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.624.0.copyload = load ptr, ptr %.sroa.624.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ak = trunc nuw i8 %.sroa.021.0.copyload to i1
  br i1 %i.ak, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.624.0.copyload) ]
  br label %_RNvXsh_NtNtCshMzyYDJGtjv_3api4grpc11conversionsNtNtNtCs607s0NAIaWN_7segment10data_types5index13TokenizerTypeINtNtCskKLDkoKarTP_4core7convert7TryFromNtNtB7_6qdrant13TokenizerTypeE8try_from.exit

bb.p:                                             ; preds = %bb.n
  %i.al = add i8 %.sroa.522.0.copyload, 1
  %i.am = icmp ult i8 %i.al, 20
  tail call void @llvm.assume(i1 %i.am)
  br label %bb.l

bb.q:                                             ; preds = %bb.l
  switch i32 %i.i, label %default.unreachable [
    i32 0, label %.invoke
    i32 1, label %bb.u
    i32 2, label %bb.r
    i32 3, label %bb.s
    i32 4, label %bb.t
  ]

default.unreachable:                              ; preds = %bb.q
  unreachable

.invoke:                                          ; preds = %bb.q, %bb.l
  %i.an = invoke noundef nonnull align 8 ptr @_RINvMs1_NtCsgOCJwUSa4vG_5tonic6statusNtB6_6Status3newReECshMzyYDJGtjv_3api(i8 noundef 3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 22)
          to label %_RNvXsh_NtNtCshMzyYDJGtjv_3api4grpc11conversionsNtNtNtCs607s0NAIaWN_7segment10data_types5index13TokenizerTypeINtNtCskKLDkoKarTP_4core7convert7TryFromNtNtB7_6qdrant13TokenizerTypeE8try_from.exit unwind label %bb.m

bb.r:                                             ; preds = %bb.q
  br label %bb.u

bb.s:                                             ; preds = %bb.q
  br label %bb.u

bb.t:                                             ; preds = %bb.q
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r, %bb.q
  %.sroa.4.0.ph = phi i8 [ 0, %bb.q ], [ 2, %bb.s ], [ 1, %bb.r ], [ 3, %bb.t ]
  %i.ao = trunc nuw i64 %i.k to i1
  %. = select i1 %i.ao, i64 %i.m, i64 undef
  %i.ap = trunc nuw i64 %i.o to i1
  %.sroa.652.0 = select i1 %i.ap, i64 %i.q, i64 undef
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvNtNtCshMzyYDJGtjv_3api4grpc11conversions25convert_memory_from_proto(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.c, i32 noundef %i.x, i32 %i.z)
          to label %bb.v unwind label %bb.m

bb.v:                                             ; preds = %bb.u
  %i.aq = load i8, ptr %i.c, align 8, !range !14, !noundef !5
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !nonnull !5, !align !12, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RNvXsh_NtNtCshMzyYDJGtjv_3api4grpc11conversionsNtNtNtCs607s0NAIaWN_7segment10data_types5index13TokenizerTypeINtNtCskKLDkoKarTP_4core7convert7TryFromNtNtB7_6qdrant13TokenizerTypeE8try_from.exit

bb.x:                                             ; preds = %bb.v
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.av = load i8, ptr %i.au, align 1, !range !16, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.sroa.833.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.833.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %i.f, i64 64, i1 false)
  store i64 %i.k, ptr %0, align 8
  %.sroa.530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %., ptr %.sroa.530.0..sroa_idx, align 8
  %.sroa.631.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.o, ptr %.sroa.631.0..sroa_idx, align 8
  %.sroa.732.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.652.0, ptr %.sroa.732.0..sroa_idx, align 8
  %.sroa.934.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.aw = shufflevector <4 x i8> %i.r, <4 x i8> poison, <4 x i32> <i32 0, i32 3, i32 2, i32 1>
  store <4 x i8> %i.aw, ptr %.sroa.934.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i8 %i.v, ptr %.sroa.13.0..sroa_idx, align 4
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 101
  store i8 %.sroa.4.0.ph, ptr %.sroa.14.0..sroa_idx, align 1
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 102
  store i8 %i.av, ptr %.sroa.15.0..sroa_idx, align 2
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 103
  store i8 %.sroa.619.0, ptr %.sroa.16.0..sroa_idx, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant17StemmingAlgorithmEEB13_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant17StemmingAlgorithmEEB13_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs607s0NAIaWN_7segment10data_types5index18StopwordsInterfaceEECshMzyYDJGtjv_3api.exit, %bb.e, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant14SnowballParamsEBH_.exit.i.i.i.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

_RNvXsh_NtNtCshMzyYDJGtjv_3api4grpc11conversionsNtNtNtCs607s0NAIaWN_7segment10data_types5index13TokenizerTypeINtNtCskKLDkoKarTP_4core7convert7TryFromNtNtB7_6qdrant13TokenizerTypeE8try_from.exit: ; preds = %bb.w, %.invoke, %bb.o
  %.sink.sink = phi ptr [ %.sroa.624.0.copyload, %bb.o ], [ %i.at, %bb.w ], [ %i.an, %.invoke ]
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink.sink, ptr %i.ax, align 8
  store i64 2, ptr %0, align 8
  %i.ay = load i64, ptr %i.f, align 8, !range !6, !alias.scope !521, !noundef !5
  switch i64 %i.ay, label %bb.y [
    i64 -1, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs607s0NAIaWN_7segment10data_types5index18StopwordsInterfaceEECshMzyYDJGtjv_3api.exit
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs607s0NAIaWN_7segment10data_types5index18StopwordsInterfaceEECshMzyYDJGtjv_3api.exit
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3set8BTreeSetNtNtNtCs607s0NAIaWN_7segment10data_types5index8LanguageEEECshMzyYDJGtjv_3api.exit.i.i.i
  ]

bb.y:                                             ; preds = %_RNvXsh_NtNtCshMzyYDJGtjv_3api4grpc11conversionsNtNtNtCs607s0NAIaWN_7segment10data_types5index13TokenizerTypeINtNtCskKLDkoKarTP_4core7convert7TryFromNtNtB7_6qdrant13TokenizerTypeE8try_from.exit
  %i.az = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  invoke void @_RNvXNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtNtCs607s0NAIaWN_7segment10data_types5index8LanguageNtNtB4_7set_val9SetValZSTENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.az)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3set8BTreeSetNtNtNtCs607s0NAIaWN_7segment10data_types5index8LanguageEEECshMzyYDJGtjv_3api.exit.i.i.i unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ba = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.bc = load i64, ptr %i.bb, align 8, !range !7, !alias.scope !522, !noundef !5
  %2 = icmp eq i64 %i.bc, 0
  br i1 %2, label %common.resume, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bd = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  invoke void @_RNvXNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtB4_7set_val9SetValZSTENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bd)
          to label %common.resume unwind label %bb.ac

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3set8BTreeSetNtNtNtCs607s0NAIaWN_7segment10data_types5index8LanguageEEECshMzyYDJGtjv_3api.exit.i.i.i: ; preds = %bb.y, %_RNvXsh_NtNtCshMzyYDJGtjv_3api4grpc11conversionsNtNtNtCs607s0NAIaWN_7segment10data_types5index13TokenizerTypeINtNtCskKLDkoKarTP_4core7convert7TryFromNtNtB7_6qdrant13TokenizerTypeE8try_from.exit
  %i.be = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.bf = load i64, ptr %i.be, align 8, !range !7, !alias.scope !523, !noundef !5
  %3 = icmp eq i64 %i.bf, 0
  br i1 %3, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs607s0NAIaWN_7segment10data_types5index18StopwordsInterfaceEECshMzyYDJGtjv_3api.exit, label %bb.ab

bb.ab:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3set8BTreeSetNtNtNtCs607s0NAIaWN_7segment10data_types5index8LanguageEEECshMzyYDJGtjv_3api.exit.i.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  call void @_RNvXNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtB4_7set_val9SetValZSTENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs607s0NAIaWN_7segment10data_types5index18StopwordsInterfaceEECshMzyYDJGtjv_3api.exit

bb.ac:                                            ; preds = %bb.aa
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs607s0NAIaWN_7segment10data_types5index18StopwordsInterfaceEECshMzyYDJGtjv_3api.exit: ; preds = %bb.ab, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3set8BTreeSetNtNtNtCs607s0NAIaWN_7segment10data_types5index8LanguageEEECshMzyYDJGtjv_3api.exit.i.i.i, %_RNvXsh_NtNtCshMzyYDJGtjv_3api4grpc11conversionsNtNtNtCs607s0NAIaWN_7segment10data_types5index13TokenizerTypeINtNtCskKLDkoKarTP_4core7convert7TryFromNtNtB7_6qdrant13TokenizerTypeE8try_from.exit, %_RNvXsh_NtNtCshMzyYDJGtjv_3api4grpc11conversionsNtNtNtCs607s0NAIaWN_7segment10data_types5index13TokenizerTypeINtNtCskKLDkoKarTP_4core7convert7TryFromNtNtB7_6qdrant13TokenizerTypeE8try_from.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant17StemmingAlgorithmEEB13_.exit

bb.ad:                                            ; preds = %bb.ae, %bb.m
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable

bb.ae:                                            ; preds = %bb.b
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant17StemmingAlgorithmEEB13_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #11
          to label %common.resume unwind label %bb.ad
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsp_NtNtCshMzyYDJGtjv_3api4grpc11conversionsNtNtNtCs607s0NAIaWN_7segment10data_types5index17StemmingAlgorithmINtNtCskKLDkoKarTP_4core7convert7TryFromNtNtNtB7_6qdrant18stemming_algorithm14StemmingParamsE8try_from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 14 uses
  %i.e = load i64, ptr %1, align 8, !range !4, !noundef !5
  %i.f = icmp eq i64 %i.e, -1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 -1, ptr %i.g, align 1
  store i8 0, ptr %0, align 8
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !5, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noundef !5
  invoke void @_RNvXs1_NtNtCs607s0NAIaWN_7segment10data_types5indexNtB5_16SnowballLanguageNtNtNtCskKLDkoKarTP_4core3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef %i.k)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.h, %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.l, %bb.d ], [ %i.q, %bb.g ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant14SnowballParamsEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #11
          to label %common.resume unwind label %bb.q

bb.e:                                             ; preds = %bb.c
  %i.m = load i8, ptr %i.c, align 8, !range !14, !noundef !5
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !5, !align !12, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !527
  store ptr %i.d, ptr %i.a, align 8, !noalias !527
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsr_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !527
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @39, ptr noundef nonnull %i.a)
          to label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECshMzyYDJGtjv_3api.exit.i unwind label %bb.g, !noalias !528

bb.g:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECshMzyYDJGtjv_3api.exit.i, %bb.f
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs8O45qwFIwQX_10serde_json5error5ErrorECshMzyYDJGtjv_3api(ptr nonnull align 8 %i.p) #11
          to label %.body unwind label %bb.i

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECshMzyYDJGtjv_3api.exit.i: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !527
  %i.r = invoke noundef nonnull align 8 ptr @_RINvMs1_NtCsgOCJwUSa4vG_5tonic6statusNtB6_6Status3newNtNtCsexYYUdYSQU6_5alloc6string6StringECshMzyYDJGtjv_3api(i8 noundef 3, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.h unwind label %bb.g, !noalias !528

bb.h:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECshMzyYDJGtjv_3api.exit.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs8O45qwFIwQX_10serde_json5error5ErrorECshMzyYDJGtjv_3api(ptr nonnull align 8 %i.p)
          to label %bb.n unwind label %bb.d

bb.i:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9, !noalias !528
  unreachable

bb.j:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.u = load i8, ptr %i.t, align 1, !range !11, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.u, ptr %i.v, align 1
  store i8 0, ptr %0, align 8
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant14SnowballParamsEBH_.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable

common.resume:                                    ; preds = %.body, %bb.o, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.z, %bb.o ], [ %i.w, %bb.k ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant14SnowballParamsEBH_.exit: ; preds = %bb.j
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.m

bb.m:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant14SnowballParamsEBH_.exit8, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant14SnowballParamsEBH_.exit, %bb.b
  ret void

bb.n:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.r, ptr %i.y, align 8
  store i8 1, ptr %0, align 8
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant14SnowballParamsEBH_.exit8 unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant14SnowballParamsEBH_.exit8: ; preds = %bb.n
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.m

bb.q:                                             ; preds = %.body
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsq_NtNtCshMzyYDJGtjv_3api4grpc11conversionsNtNtNtCs607s0NAIaWN_7segment10data_types5index15BoolIndexParamsINtNtCskKLDkoKarTP_4core7convert7TryFromNtNtB7_6qdrant15BoolIndexParamsE8try_from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 1)) %0, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(12) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i8, ptr %i.b, align 4, !range !13, !noundef !5
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.e = load i8, ptr %i.d, align 1, !range !13, !noundef !5
  %i.f = load i32, ptr %1, align 4, !range !15, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.h = load i32, ptr %i.g, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvNtNtCshMzyYDJGtjv_3api4grpc11conversions25convert_memory_from_proto(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, i32 noundef %i.f, i32 %i.h)
  %i.i = load i8, ptr %i.a, align 8, !range !14, !noundef !5
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !5, !align !12, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.m, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.o = load i8, ptr %i.n, align 1, !range !16, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
end_hunk_2
