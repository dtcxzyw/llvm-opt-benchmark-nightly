Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/html5ever-rs/original/html5ever-7c94b86f9147eabc.html5ever.8469159039506d9f-cgu.2?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [40 x i8] c"html5ever/src/tokenizer/char_ref/mod.rs\00", align 1
@1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"'\00\00\00\00\00\00\00'\01\00\003\00\00\00" }>, align 8
@2 = private unnamed_addr constant [45 x i8] c"name_buf missing in named character reference", align 1
@3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"'\00\00\00\00\00\00\00Y\00\00\00\0E\00\00\00" }>, align 8
@4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"'\00\00\00\00\00\00\00S\00\00\00\0E\00\00\00" }>, align 8
@_RNvCsdYyxaOYRLxS_3log20MAX_LOG_LEVEL_FILTER = external local_unnamed_addr global { { { i64 } } }
@5 = private unnamed_addr constant [29 x i8] c"\1Anode with weird namespace \C0\00", align 1
@6 = private unnamed_addr constant [31 x i8] c"html5ever/src/serialize/mod.rs\00", align 1
@7 = private unnamed_addr constant [20 x i8] c"html5ever::serialize", align 1
@8 = private unnamed_addr constant [43 x i8] c"invalid char missed by error handling cases", align 1
@9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"'\00\00\00\00\00\00\00\DE\00\00\00\19\00\00\00" }>, align 8
@10 = private unnamed_addr constant [202 x i8] c"InitialBeforeHtmlBeforeHeadInHeadInHeadNoscriptAfterHeadInBodyTextInTableInTableTextInCaptionInColumnGroupInTableBodyInRowInCellInTemplateAfterBodyInFramesetAfterFramesetAfterAfterBodyAfterAfterFrameset", align 1
@_RNvNvXs4_NtNtCsbmOI1VUejFP_9html5ever12tree_builder5typesNtB7_13InsertionModeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt7___NAMES = local_unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @10, [8 x i8] c"\CA\00\00\00\00\00\00\00" }>, align 8
@_RNvNvXs4_NtNtCsbmOI1VUejFP_9html5ever12tree_builder5typesNtB7_13InsertionModeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt8___OFFSET = local_unnamed_addr constant [176 x i8] c"\00\00\00\00\00\00\00\00\07\00\00\00\00\00\00\00\11\00\00\00\00\00\00\00\1B\00\00\00\00\00\00\00!\00\00\00\00\00\00\00/\00\00\00\00\00\00\008\00\00\00\00\00\00\00>\00\00\00\00\00\00\00B\00\00\00\00\00\00\00I\00\00\00\00\00\00\00T\00\00\00\00\00\00\00]\00\00\00\00\00\00\00j\00\00\00\00\00\00\00u\00\00\00\00\00\00\00z\00\00\00\00\00\00\00\80\00\00\00\00\00\00\00\8A\00\00\00\00\00\00\00\93\00\00\00\00\00\00\00\9D\00\00\00\00\00\00\00\AA\00\00\00\00\00\00\00\B8\00\00\00\00\00\00\00\CA\00\00\00\00\00\00\00", align 8
@_RNvNvXCsbN1FUDjLgAL_9web_atomsNtB4_18LocalNameStaticSetNtNtCsgv7xG79AfeB_12string_cache11static_sets13StaticAtomSet3get3SET = external local_unnamed_addr global { { ptr, i64 }, { ptr, i64 }, { ptr, i64 }, i64 }
@_RNvCsldpiDtalS19_7tendril5OFLOW = external local_unnamed_addr global { ptr, i64 }
@11 = private unnamed_addr constant [23 x i8] c"tendril/src/tendril.rs\00", align 1
@12 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @11, [16 x i8] c"\16\00\00\00\00\00\00\00U\00\00\00)\00\00\00" }>, align 8
@_RNvNvXs0_CsbN1FUDjLgAL_9web_atomsNtB7_18NamespaceStaticSetNtNtCsgv7xG79AfeB_12string_cache11static_sets13StaticAtomSet3get3SET = external local_unnamed_addr global { { ptr, i64 }, { ptr, i64 }, { ptr, i64 }, i64 }
@13 = private unnamed_addr constant [101 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/string_cache-0.11.0/src/atom.rs\00", align 1
@14 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @13, [16 x i8] c"d\00\00\00\00\00\00\00U\01\00\00\1F\00\00\00" }>, align 8
@15 = private unnamed_addr constant [7 x i8] c"dynamic", align 1
@16 = private unnamed_addr constant [6 x i8] c"inline", align 1
@17 = private unnamed_addr constant [6 x i8] c"static", align 1
@18 = private unnamed_addr constant [20 x i8] c"\06Atom('\C0\07' type=\C0\01)\00", align 1
@_RNvNvXs_CsbN1FUDjLgAL_9web_atomsNtB6_15PrefixStaticSetNtNtCsgv7xG79AfeB_12string_cache11static_sets13StaticAtomSet3get3SET = external local_unnamed_addr global { { ptr, i64 }, { ptr, i64 }, { ptr, i64 }, i64 }
@switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtB6_5Debug3fmtCsbmOI1VUejFP_9html5ever = private unnamed_addr constant [3 x ptr] [ptr @15, ptr @16, ptr @17], align 8
@switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtB6_5Debug3fmtCsbmOI1VUejFP_9html5ever.26 = private unnamed_addr constant [3 x i8] c"\07\06\06", align 8

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeEECsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeEECsbmOI1VUejFP_9html5ever.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeEECsbmOI1VUejFP_9html5ever.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6stable14driftsort_mainNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYBZ_NtNtB8_3cmp10PartialOrd2ltINtNtCsexYYUdYSQU6_5alloc3vec3VecBZ_EECsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 230584300921369396) %1, ptr noalias nofree noundef nonnull %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [4096 x i8], align 8              ; 3 uses
  %i.c = lshr i64 %1, 1
  %i.d = sub nsw i64 %1, %i.c
  %..i = tail call noundef range(i64 0, 230584300921369396) i64 @llvm.umin.i64(i64 range(i64 0, 230584300921369396) %1, i64 200000)
  %..i8 = tail call noundef range(i64 -230584300921369394, 230584300921369396) i64 @llvm.umax.i64(i64 range(i64 -230584300921369394, 230584300921369396) %..i, i64 range(i64 -230584300921369394, 230584300921369396) %i.d) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = icmp ugt i64 %..i8, 102                  ; 3 uses
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @_RNvXs8_NtCsexYYUdYSQU6_5alloc5sliceINtNtB7_3vec3VecNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeEINtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable8BufGuardBN_E13with_capacityCsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %..i8)
  %i.f = invoke { ptr, i64 } @_RNvXs8_NtCsexYYUdYSQU6_5alloc5sliceINtNtB7_3vec3VecNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeEINtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable8BufGuardBN_E19as_uninit_slice_mutCsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.d unwind label %.thread    ; 2 uses

bb.c:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.e, label %bb.k, label %common.resume

.thread:                                          ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.d:                                             ; preds = %bb.b
  %i.i = extractvalue { ptr, i64 } %i.f, 1
  %i.j = extractvalue { ptr, i64 } %i.f, 0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %.sroa.4.0 = phi i64 [ 102, %bb.a ], [ %i.i, %bb.d ]
  %.pn = phi ptr [ %i.b, %bb.a ], [ %i.j, %bb.d ]
  %i.k = icmp samesign ult i64 %1, 33
  invoke void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYBW_NtNtBa_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %1, ptr noalias nofree noundef nonnull align 8 %.pn, i64 noundef %.sroa.4.0, i1 noundef zeroext %i.k, ptr noalias nofree noundef nonnull %2)
          to label %bb.f unwind label %bb.c

bb.f:                                             ; preds = %bb.e
  br i1 %i.e, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeEECsbmOI1VUejFP_9html5ever.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.h:                                             ; preds = %bb.f
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeEECsbmOI1VUejFP_9html5ever.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

common.resume:                                    ; preds = %bb.c, %bb.k, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.l, %bb.i ], [ %i.n, %bb.k ], [ %i.g, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeEECsbmOI1VUejFP_9html5ever.exit: ; preds = %bb.h
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  br label %bb.g

bb.k:                                             ; preds = %.thread, %bb.c
  %i.n = phi { ptr, i32 } [ %i.h, %.thread ], [ %i.g, %bb.c ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeEECsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #21
          to label %common.resume unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot11median3_recNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB14_NtNtBa_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noalias nofree noundef nonnull %4) unnamed_addr #0 {
bb.a:
  %i.a = and i64 %3, 2305843009213693944
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %i.c
  %i.e = mul nuw i64 %i.b, 7                      ; 3 uses
  %i.f = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %i.e
  %i.g = tail call noundef ptr @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot11median3_recNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB14_NtNtBa_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b, ptr noalias nofree noundef nonnull %4)
  %i.h = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %i.e
  %i.j = tail call noundef ptr @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot11median3_recNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB14_NtNtBa_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b, ptr noalias nofree noundef nonnull %4)
  %i.k = getelementptr inbounds nuw [40 x i8], ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw [40 x i8], ptr %2, i64 %i.e
  %i.m = tail call noundef ptr @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot11median3_recNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB14_NtNtBa_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b, ptr noalias nofree noundef nonnull %4)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 3 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 3 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 3 uses
  %i.n = tail call fastcc noundef zeroext i1 @_RNvYNvYNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBY_3ops8function5FnMutTRB5_B24_EE8call_mutCsbmOI1VUejFP_9html5ever(ptr noundef nonnull align 8 %.sroa.0.0, ptr noundef nonnull align 8 %.sroa.04.0) #22 ; 2 uses
  %i.o = tail call fastcc noundef zeroext i1 @_RNvYNvYNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBY_3ops8function5FnMutTRB5_B24_EE8call_mutCsbmOI1VUejFP_9html5ever(ptr noundef nonnull align 8 %.sroa.0.0, ptr noundef nonnull align 8 %.sroa.08.0) #22
  %i.p = xor i1 %i.n, %i.o
  br i1 %i.p, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot7median3NtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYBZ_NtNtBa_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = tail call fastcc noundef zeroext i1 @_RNvYNvYNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBY_3ops8function5FnMutTRB5_B24_EE8call_mutCsbmOI1VUejFP_9html5ever(ptr noundef nonnull align 8 %.sroa.04.0, ptr noundef nonnull align 8 %.sroa.08.0) #22
  %i.r = xor i1 %i.n, %i.q
  %..i = select i1 %i.r, ptr %.sroa.08.0, ptr %.sroa.04.0
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot7median3NtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYBZ_NtNtBa_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot7median3NtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYBZ_NtNtBa_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0, %bb.c ], [ %..i, %bb.d ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYBX_NtNtBa_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 230584300921369396) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i64 noundef %4, ptr noalias nofree noundef nonnull readnone captures(none) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %4, 0
  %i.b = icmp uge i64 %4, %1
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sub nuw nsw i64 %1, %4                   ; 2 uses
  %..i = tail call i64 @llvm.umin.i64(i64 %i.c, i64 %4) ; 2 uses
  %i.d = icmp samesign ult i64 %3, %..i
  br i1 %i.d, label %bb.c, label %.critedge

.critedge:                                        ; preds = %bb.b
  %i.e = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %4 ; 3 uses
  %i.f = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %1 ; 2 uses
  %.not = icmp samesign ugt i64 %4, %i.c          ; 2 uses
  %spec.select = select i1 %.not, ptr %i.e, ptr %0
  %i.g = mul nuw nsw i64 %..i, 40                 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select, i64 %i.g, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %i.g ; 4 uses
  br i1 %.not, label %.preheader, label %.lr.ph.i

.preheader:                                       ; preds = %.critedge, %.noexc
  %.sroa.13.2 = phi ptr [ %i.o, %.noexc ], [ %i.e, %.critedge ] ; 2 uses
  %.sroa.7.2 = phi ptr [ %i.q, %.noexc ], [ %i.h, %.critedge ] ; 2 uses
  %.sroa.0.0.i = phi ptr [ %i.l, %.noexc ], [ %i.f, %.critedge ]
  %i.i = getelementptr inbounds i8, ptr %.sroa.13.2, i64 -40 ; 3 uses
  %i.j = getelementptr inbounds i8, ptr %.sroa.7.2, i64 -40 ; 3 uses
  %i.k = invoke fastcc noundef zeroext i1 @_RNvYNvYNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBY_3ops8function5FnMutTRB5_B24_EE8call_mutCsbmOI1VUejFP_9html5ever(ptr noundef nonnull align 8 %i.j, ptr noundef nonnull align 8 %i.i) #22
          to label %.noexc unwind label %.loopexit ; 3 uses

.noexc:                                           ; preds = %.preheader
  %i.l = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -40 ; 2 uses
  %..i17 = select i1 %i.k, ptr %i.i, ptr %i.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.l, ptr noundef nonnull align 8 dereferenceable(40) %..i17, i64 40, i1 false), !noalias !4
  %i.m = xor i1 %i.k, true
  %i.n = zext i1 %i.m to i64
  %i.o = getelementptr inbounds nuw [40 x i8], ptr %i.i, i64 %i.n ; 3 uses
  %i.p = zext i1 %i.k to i64
  %i.q = getelementptr inbounds nuw [40 x i8], ptr %i.j, i64 %i.p ; 3 uses
  %i.r = icmp eq ptr %i.o, %0
  %i.s = icmp eq ptr %i.q, %2
  %or.cond.i = select i1 %i.r, i1 true, i1 %i.s
  br i1 %or.cond.i, label %_RINvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever.exit, label %.preheader

.lr.ph.i:                                         ; preds = %.critedge, %.noexc20
  %.sroa.13.3 = phi ptr [ %i.z, %.noexc20 ], [ %0, %.critedge ] ; 3 uses
  %.sroa.0.2 = phi ptr [ %i.w, %.noexc20 ], [ %2, %.critedge ] ; 4 uses
  %.sroa.0.02.i = phi ptr [ %i.y, %.noexc20 ], [ %i.e, %.critedge ] ; 3 uses
  %i.t = invoke fastcc noundef zeroext i1 @_RNvYNvYNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBY_3ops8function5FnMutTRB5_B24_EE8call_mutCsbmOI1VUejFP_9html5ever(ptr noundef nonnull align 8 %.sroa.0.02.i, ptr noundef nonnull align 8 %.sroa.0.2) #22
          to label %.noexc20 unwind label %.loopexit.split-lp ; 3 uses

.noexc20:                                         ; preds = %.lr.ph.i
  %i.u = xor i1 %i.t, true
  %.sroa.05.0.i = select i1 %i.t, ptr %.sroa.0.02.i, ptr %.sroa.0.2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.13.3, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.05.0.i, i64 40, i1 false), !noalias !7
  %i.v = zext i1 %i.u to i64
  %i.w = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.2, i64 %i.v ; 3 uses
  %i.x = zext i1 %i.t to i64
  %i.y = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.02.i, i64 %i.x ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.13.3, i64 40 ; 2 uses
  %i.aa = icmp ne ptr %i.w, %i.h
  %i.ab = icmp ne ptr %i.y, %i.f
  %or.cond.i19 = select i1 %i.aa, i1 %i.ab, i1 false
  br i1 %or.cond.i19, label %.lr.ph.i, label %_RINvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever.exit

_RINvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever.exit: ; preds = %.noexc20, %.noexc
  %.sroa.13.1 = phi ptr [ %i.o, %.noexc ], [ %i.z, %.noexc20 ]
  %.sroa.7.1 = phi ptr [ %i.q, %.noexc ], [ %i.h, %.noexc20 ]
  %.sroa.0.1 = phi ptr [ %2, %.noexc ], [ %i.w, %.noexc20 ] ; 2 uses
  %i.ac = ptrtoint ptr %.sroa.7.1 to i64
  %i.ad = ptrtoint ptr %.sroa.0.1 to i64
  %i.ae = sub nuw i64 %i.ac, %i.ad
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1, ptr align 8 %.sroa.0.1, i64 %i.ae, i1 false), !noalias !10
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a, %_RINvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever.exit
  ret void

.loopexit:                                        ; preds = %.preheader
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.d
end_hunk_0
