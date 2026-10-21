Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/clap_builder-34152f4bce63195d.clap_builder.9b2a128d1b545da0-cgu.07?download=true
inline.NumInlined: 382
inline.NumDeleted: 173
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [109 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/clap_builder-4.6.2/src/util/flat_map.rs\00", align 1
@1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"l\00\00\00\00\00\00\00c\00\00\00)\00\00\00" }>, align 8
@2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"l\00\00\00\00\00\00\00J\00\00\00\1D\00\00\00" }>, align 8
@3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"l\00\00\00\00\00\00\00K\00\00\00!\00\00\00" }>, align 8
@4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"l\00\00\00\00\00\00\00p\00\00\00-\00\00\00" }>, align 8
@5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"l\00\00\00\00\00\00\00\16\00\00\000\00\00\00" }>, align 8
@6 = private unnamed_addr constant [99 x i8] c"Fatal internal error. Please consider filing a bug report at https://github.com/clap-rs/clap/issues", align 1
@7 = private unnamed_addr constant [114 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/clap_builder-4.6.2/src/parser/arg_matcher.rs\00", align 1
@8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"q\00\00\00\00\00\00\00\A9\00\00\00$\00\00\00" }>, align 8
@9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"q\00\00\00\00\00\00\00\AE\00\00\00$\00\00\00" }>, align 8
@10 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"q\00\00\00\00\00\00\00\BD\00\00\00)\00\00\00" }>, align 8
@11 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00 \00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsc_NtNtCsdjW2DEjcQy2_12clap_builder7builder12value_parserINtB5_20RangedI64ValueParserhENtB5_14AnyValueParser9parse_refB9_, ptr @_RNvXsc_NtNtCsdjW2DEjcQy2_12clap_builder7builder12value_parserINtB5_20RangedI64ValueParserhENtB5_14AnyValueParser10parse_ref_B9_, ptr @_RNvXsc_NtNtCsdjW2DEjcQy2_12clap_builder7builder12value_parserINtB5_20RangedI64ValueParserhENtB5_14AnyValueParser7type_idB9_, ptr @_RNvXsc_NtNtCsdjW2DEjcQy2_12clap_builder7builder12value_parserINtB5_20RangedI64ValueParserhENtB5_14AnyValueParser15possible_valuesB9_, ptr @_RNvXsc_NtNtCsdjW2DEjcQy2_12clap_builder7builder12value_parserINtB5_20RangedI64ValueParserhENtB5_14AnyValueParser9clone_anyB9_ }>, align 8
@12 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"l\00\00\00\00\00\00\00\A2\00\00\00+\00\00\00" }>, align 8
@13 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"l\00\00\00\00\00\00\00\9E\00\00\00:\00\00\00" }>, align 8
@14 = private unnamed_addr constant [106 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/clap_builder-4.6.2/src/util/graph.rs\00", align 1
@15 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @14, [16 x i8] c"i\00\00\00\00\00\00\00&\00\00\00\0F\00\00\00" }>, align 8
@16 = private unnamed_addr constant [3 x i8] c"Set", align 1
@17 = private unnamed_addr constant [6 x i8] c"Append", align 1
@18 = private unnamed_addr constant [7 x i8] c"SetTrue", align 1
@19 = private unnamed_addr constant [8 x i8] c"SetFalse", align 1
@20 = private unnamed_addr constant [5 x i8] c"Count", align 1
@21 = private unnamed_addr constant [4 x i8] c"Help", align 1
@22 = private unnamed_addr constant [9 x i8] c"HelpShort", align 1
@23 = private unnamed_addr constant [8 x i8] c"HelpLong", align 1
@24 = private unnamed_addr constant [7 x i8] c"Version", align 1
@25 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"l\00\00\00\00\00\00\00\C8\00\00\00,\00\00\00" }>, align 8
@26 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"l\00\00\00\00\00\00\00\EC\00\00\00,\00\00\00" }>, align 8
@27 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsdjW2DEjcQy2_12clap_builder4util9any_value10AnyValueIdEEB1d_, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsq_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsdjW2DEjcQy2_12clap_builder4util9any_value10AnyValueIdENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtBK_ }>, align 8
@28 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsdjW2DEjcQy2_12clap_builder4util9any_value8AnyValueENtB6_5Debug3fmtB18_ }>, align 8
@29 = private unnamed_addr constant [7 x i8] c"FlatMap", align 1
@30 = private unnamed_addr constant [4 x i8] c"keys", align 1
@31 = private unnamed_addr constant [6 x i8] c"values", align 1
@32 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 2823067676338150437 to ptr), ptr inttoptr (i64 -3480893085272704849 to ptr) }>, align 8
@switch.table._RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCsdjW2DEjcQy2_12clap_builder7builder6action9ArgActionNtB6_5Debug3fmtBC_ = private unnamed_addr constant [9 x i8] c"\03\06\07\08\05\04\09\08\07", align 8
@switch.table._RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCsdjW2DEjcQy2_12clap_builder7builder6action9ArgActionNtB6_5Debug3fmtBC_.57 = private unnamed_addr constant [9 x ptr] [ptr @16, ptr @17, ptr @18, ptr @19, ptr @20, ptr @21, ptr @22, ptr @23, ptr @24], align 8

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtCsdjW2DEjcQy2_12clap_builder4util8flat_mapINtB3_7FlatMapNtNtB5_2id2IdINtNtCscdodAO9FK5_5alloc3vec3VecB11_EE16extend_uncheckedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB2d_6filter6FilterINtB3_4IterB11_NtNtNtNtB7_6parser7matches11matched_arg10MatchedArgENCNvMs_NtB3E_9validatorNtB4v_9Conflicts9with_args0ENCB4q_s_0EEB7_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 16               ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [40 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.b

bb.b:                                             ; preds = %_RNvMNtNtCsdjW2DEjcQy2_12clap_builder4util8flat_mapINtB2_7FlatMapNtNtB4_2id2IdINtNtCscdodAO9FK5_5alloc3vec3VecB10_EE16insert_uncheckedB6_.exit, %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !54)
  call void @llvm.experimental.noalias.scope.decl(metadata !55)
  call void @llvm.experimental.noalias.scope.decl(metadata !56)
  call void @llvm.experimental.noalias.scope.decl(metadata !57)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !58
  store ptr %i.g, ptr %i.d, align 8, !noalias !59
  %i.p = load ptr, ptr %i.h, align 8, !alias.scope !60, !nonnull !5, !noundef !5
  %.promoted.i.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !60 ; 2 uses
  %2 = load ptr, ptr %i.j, align 8, !alias.scope !61, !nonnull !5
  %.promoted15.i.i.i.i.a = load ptr, ptr %i.i, align 8, !alias.scope !61 ; 2 uses
  %3 = insertelement <2 x ptr> poison, ptr %.promoted.i.i.i.i, i64 0
  %4 = insertelement <2 x ptr> %3, ptr %.promoted15.i.i.i.i.a, i64 1
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %bb.b
  %i.q = phi ptr [ %6, %bb.f ], [ %.promoted15.i.i.i.i.a, %bb.b ] ; 2 uses
  %i.r = phi ptr [ %i.t, %bb.f ], [ %.promoted.i.i.i.i, %bb.b ] ; 7 uses
  %5 = phi <2 x ptr> [ %7, %bb.f ], [ %4, %bb.b ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !62)
  %i.s = icmp eq ptr %i.r, %i.p
  br i1 %i.s, label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtNtCsdjW2DEjcQy2_12clap_builder4util8flat_map4IterNtNtB17_2id2IdNtNtNtNtB19_6parser7matches11matched_arg10MatchedArgENCNvMs_NtB2e_9validatorNtB36_9Conflicts9with_args0ENtNtNtB9_6traits8iterator8Iterator4nextB19_.exit.thread.i, label %bb.d

_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtNtCsdjW2DEjcQy2_12clap_builder4util8flat_map4IterNtNtB17_2id2IdNtNtNtNtB19_6parser7matches11matched_arg10MatchedArgENCNvMs_NtB2e_9validatorNtB36_9Conflicts9with_args0ENtNtNtB9_6traits8iterator8Iterator4nextB19_.exit.thread.i: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !58
  br label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 2 uses
  store ptr %i.t, ptr %i.f, align 8, !alias.scope !60
  %i.u = icmp eq ptr %i.q, %2
  br i1 %i.u, label %bb.e, label %bb.f, !prof !6

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #26, !noalias !63
  unreachable

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !59
  %6 = getelementptr inbounds nuw i8, ptr %i.q, i64 104 ; 2 uses
  %7 = getelementptr inbounds nuw i8, <2 x ptr> %5, <2 x i64> <i64 24, i64 104>
  store ptr %6, ptr %i.i, align 8, !alias.scope !60
  store <2 x ptr> %5, ptr %i.c, align 16, !noalias !64
  %i.v = call noundef zeroext i1 @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMs_NtNtCsdjW2DEjcQy2_12clap_builder6parser9validatorNtBV_9Conflicts9with_args0INtB7_5FnMutTRTRNtNtNtBZ_4util2id2IdRNtNtNtBX_7matches11matched_arg10MatchedArgEEE8call_mutBZ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c), !noalias !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !59
  br i1 %i.v, label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtNtCsdjW2DEjcQy2_12clap_builder4util8flat_map4IterNtNtB17_2id2IdNtNtNtNtB19_6parser7matches11matched_arg10MatchedArgENCNvMs_NtB2e_9validatorNtB36_9Conflicts9with_args0ENtNtNtB9_6traits8iterator8Iterator4nextB19_.exit.i, label %bb.c

_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtNtCsdjW2DEjcQy2_12clap_builder4util8flat_map4IterNtNtB17_2id2IdNtNtNtNtB19_6parser7matches11matched_arg10MatchedArgENCNvMs_NtB2e_9validatorNtB36_9Conflicts9with_args0ENtNtNtB9_6traits8iterator8Iterator4nextB19_.exit.i: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !58
  %.not.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtNtCsdjW2DEjcQy2_12clap_builder4util8flat_map4IterNtNtB17_2id2IdNtNtNtNtB19_6parser7matches11matched_arg10MatchedArgENCNvMs_NtB2e_9validatorNtB36_9Conflicts9with_args0ENtNtNtB9_6traits8iterator8Iterator4nextB19_.exit.i
  %.val.i = load ptr, ptr %i.g, align 8, !alias.scope !54, !nonnull !5, !align !7, !noundef !5
  call void @llvm.experimental.noalias.scope.decl(metadata !66)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !67
  call void @_RNvNtNtCsdjW2DEjcQy2_12clap_builder6parser9validator23gather_direct_conflicts(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(776) %.val.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.r), !noalias !68
  %i.w = load i64, ptr %i.r, align 8, !range !8, !alias.scope !66, !noalias !69, !noundef !5
  %i.x = trunc nuw i64 %i.w to i1                 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.z = invoke { ptr, i64 } @_RNvXsf_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxeENtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.y)
          to label %bb.k unwind label %bb.j, !noalias !68 ; 2 uses

bb.i:                                             ; preds = %bb.g
  %.sroa.5.0.copyload.i.i = load ptr, ptr %i.y, align 8, !alias.scope !66, !noalias !69
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !66, !noalias !69
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsdjW2DEjcQy2_12clap_builder4util2id2IdEEB1d_(ptr noalias noundef align 8 dereferenceable(24) %i.b) #27
          to label %common.resume unwind label %bb.l, !noalias !68

bb.k:                                             ; preds = %bb.h
  %i.ab = extractvalue { ptr, i64 } %i.z, 0
  %i.ac = extractvalue { ptr, i64 } %i.z, 1
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28, !noalias !68
  unreachable

common.resume:                                    ; preds = %bb.q, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsdjW2DEjcQy2_12clap_builder4util2id2IdEBH_.exit, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.aa, %bb.j ], [ %i.ap, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsdjW2DEjcQy2_12clap_builder4util2id2IdEBH_.exit ], [ %i.an, %bb.q ]
  resume { ptr, i32 } %common.resume.op

bb.m:                                             ; preds = %bb.k, %bb.i
  %.sroa.6.0.i.i = phi i64 [ %i.ac, %bb.k ], [ %.sroa.6.0.copyload.i.i, %bb.i ] ; 3 uses
  %.sroa.5.0.i.i = phi ptr [ %i.ab, %bb.k ], [ %.sroa.5.0.copyload.i.i, %bb.i ] ; 3 uses
  %.sroa.0.0.i.i = phi i64 [ 1, %bb.k ], [ 0, %bb.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !67
  call void @llvm.experimental.noalias.scope.decl(metadata !70)
  call void @llvm.experimental.noalias.scope.decl(metadata !71)
  %i.ae = load i64, ptr %i.k, align 8, !alias.scope !72, !noundef !5 ; 3 uses
  %i.af = load i64, ptr %0, align 8, !range !9, !alias.scope !72, !noundef !5
  %i.ag = icmp eq i64 %i.ae, %i.af
  br i1 %i.ag, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsdjW2DEjcQy2_12clap_builder4util2id2IdE8grow_oneBR_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0)
          to label %bb.o unwind label %bb.s, !noalias !73

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ah = load ptr, ptr %i.l, align 8, !alias.scope !72, !nonnull !5, !noundef !5
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %i.ae ; 3 uses
  store i64 %.sroa.0.0.i.i, ptr %i.ai, align 8, !noalias !74
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %.sroa.5.0.i.i, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !74
  %.sroa.72.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store i64 %.sroa.6.0.i.i, ptr %.sroa.72.0..sroa_idx, align 8, !noalias !74
  %i.aj = add i64 %i.ae, 1
  store i64 %i.aj, ptr %i.k, align 8, !alias.scope !72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !75
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !76
  call void @llvm.experimental.noalias.scope.decl(metadata !77)
  %i.ak = load i64, ptr %i.n, align 8, !alias.scope !78, !noundef !5 ; 3 uses
  %i.al = load i64, ptr %i.m, align 8, !range !9, !alias.scope !78, !noundef !5
  %i.am = icmp eq i64 %i.ak, %i.al
  br i1 %i.am, label %bb.p, label %_RNvMNtNtCsdjW2DEjcQy2_12clap_builder4util8flat_mapINtB2_7FlatMapNtNtB4_2id2IdINtNtCscdodAO9FK5_5alloc3vec3VecB10_EE16insert_uncheckedB6_.exit

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtNtCsdjW2DEjcQy2_12clap_builder4util2id2IdEE8grow_oneB17_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RNvMNtNtCsdjW2DEjcQy2_12clap_builder4util8flat_mapINtB2_7FlatMapNtNtB4_2id2IdINtNtCscdodAO9FK5_5alloc3vec3VecB10_EE16insert_uncheckedB6_.exit unwind label %bb.q, !noalias !79

bb.q:                                             ; preds = %bb.p
  %i.an = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsdjW2DEjcQy2_12clap_builder4util2id2IdEEB1d_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #27
          to label %common.resume unwind label %bb.r, !noalias !80

bb.r:                                             ; preds = %bb.q
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28, !noalias !80
  unreachable

bb.s:                                             ; preds = %bb.n
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = icmp ne i64 %.sroa.6.0.i.i, 0
  %or.cond.not = select i1 %i.x, i1 %i.aq, i1 false
  br i1 %or.cond.not, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsdjW2DEjcQy2_12clap_builder4util2id2IdEBH_.exit

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.s
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.i.i) ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.i.i, i64 noundef %.sroa.6.0.i.i, i64 noundef 1) #29, !noalias !81
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsdjW2DEjcQy2_12clap_builder4util2id2IdEBH_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsdjW2DEjcQy2_12clap_builder4util2id2IdEBH_.exit: ; preds = %bb.s, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsdjW2DEjcQy2_12clap_builder4util2id2IdEEB1d_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e) #27
          to label %common.resume unwind label %bb.t, !noalias !76

bb.t:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsdjW2DEjcQy2_12clap_builder4util2id2IdEBH_.exit
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28, !noalias !76
  unreachable

_RNvMNtNtCsdjW2DEjcQy2_12clap_builder4util8flat_mapINtB2_7FlatMapNtNtB4_2id2IdINtNtCscdodAO9FK5_5alloc3vec3VecB10_EE16insert_uncheckedB6_.exit: ; preds = %bb.o, %bb.p
  %i.as = load ptr, ptr %i.o, align 8, !alias.scope !78, !nonnull !5, !noundef !5
  %i.at = getelementptr inbounds nuw [24 x i8], ptr %i.as, i64 %i.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !76
  %i.au = add i64 %i.ak, 1
  store i64 %i.au, ptr %i.n, align 8, !alias.scope !78
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !75
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.b

.loopexit:                                        ; preds = %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtNtCsdjW2DEjcQy2_12clap_builder4util8flat_map4IterNtNtB17_2id2IdNtNtNtNtB19_6parser7matches11matched_arg10MatchedArgENCNvMs_NtB2e_9validatorNtB36_9Conflicts9with_args0ENtNtNtB9_6traits8iterator8Iterator4nextB19_.exit.i, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtNtCsdjW2DEjcQy2_12clap_builder4util8flat_map4IterNtNtB17_2id2IdNtNtNtNtB19_6parser7matches11matched_arg10MatchedArgENCNvMs_NtB2e_9validatorNtB36_9Conflicts9with_args0ENtNtNtB9_6traits8iterator8Iterator4nextB19_.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvMNtNtCsdjW2DEjcQy2_12clap_builder4util8flat_mapINtB3_7FlatMapNtNtB5_2id2IdINtNtCscdodAO9FK5_5alloc3vec3VecB11_EE3getB11_EB7_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 2 uses
  %.idx = mul nuw nsw i64 %i.d, 24
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val9 = load i64, ptr %i.g, align 8, !alias.scope !10, !noundef !5 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val8 = load ptr, ptr %i.h, align 8, !nonnull !5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RNvXsp_NtNtCsdjW2DEjcQy2_12clap_builder4util2idNtB5_2IdNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.backedge
  %.sroa.0.01018 = phi ptr [ %i.b, %.lr.ph ], [ %i.i, %_RNvXsp_NtNtCsdjW2DEjcQy2_12clap_builder4util2idNtB5_2IdNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.backedge ] ; 3 uses
  %.sroa.8.017 = phi i64 [ 0, %.lr.ph ], [ %i.j, %_RNvXsp_NtNtCsdjW2DEjcQy2_12clap_builder4util2idNtB5_2IdNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.backedge ] ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.01018, i64 24 ; 2 uses
  %i.j = add nuw nsw i64 %.sroa.8.017, 1
  %i.k = getelementptr i8, ptr %.sroa.0.01018, i64 16
  %.val7 = load i64, ptr %i.k, align 8, !noundef !5
  %i.l = icmp eq i64 %.val7, %.val9
  br i1 %i.l, label %.split, label %_RNvXsp_NtNtCsdjW2DEjcQy2_12clap_builder4util2idNtB5_2IdNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.backedge

.split:                                           ; preds = %bb.b
  %i.m = getelementptr i8, ptr %.sroa.0.01018, i64 8
  %.val = load ptr, ptr %i.m, align 8, !nonnull !5, !noundef !5
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val, ptr nonnull readonly %.val8, i64 %.val9), !noalias !84
  %i.n = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.n, label %bb.c, label %_RNvXsp_NtNtCsdjW2DEjcQy2_12clap_builder4util2idNtB5_2IdNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.backedge

_RNvXsp_NtNtCsdjW2DEjcQy2_12clap_builder4util2idNtB5_2IdNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.backedge: ; preds = %.split, %bb.b
  %i.o = icmp eq ptr %i.i, %i.e
  br i1 %i.o, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %_RNvXsp_NtNtCsdjW2DEjcQy2_12clap_builder4util2idNtB5_2IdNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.backedge, %bb.a, %bb.d
  %.sroa.0.0 = phi ptr [ %i.u, %bb.d ], [ null, %bb.a ], [ null, %_RNvXsp_NtNtCsdjW2DEjcQy2_12clap_builder4util2idNtB5_2IdNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.backedge ]
  ret ptr %.sroa.0.0

bb.c:                                             ; preds = %.split
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = load i64, ptr %i.p, align 8, !noundef !5 ; 2 uses
  %i.r = icmp ult i64 %.sroa.8.017, %i.q
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !5, !noundef !5
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %.sroa.8.017
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8.017, i64 noundef %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #26
  unreachable
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RINvMNtNtCsdjW2DEjcQy2_12clap_builder4util8flat_mapINtB3_7FlatMapNtNtB5_2id2IdNtNtNtNtB7_6parser7matches11matched_arg10MatchedArgE12contains_keyeEB7_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 2 uses
  %.idx = mul nuw nsw i64 %i.d, 24
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph
end_hunk_0
