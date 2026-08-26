Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_arrow_format-6415dcf21f571bfe.polars_arrow_format.769c7c95a65d747b-cgu.4?download=true
inline.NumInlined: 180
inline.NumDeleted: 164
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00 \00\00\00\00\00\00\00\10\00\00\00\00\00\00\00", ptr @_RNvXsk_NtCsfyRUffk9zcp_6planus6errorsNtB5_9ErrorKindNtNtCscgRAwXFJnXP_4core3fmt5Debug3fmt }>, align 8
@1 = private unnamed_addr constant [46 x i8] c"IMPOSSIBLE: the length was checked on creation", align 1
@2 = private unnamed_addr constant [104 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/planus-1.1.1/src/vectors/vector.rs\00", align 1
@3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"g\00\00\00\00\00\00\00\CB\01\00\00\12\00\00\00" }>, align 8
@4 = private unnamed_addr constant [13 x i8] c"InvalidOffset", align 1
@5 = private unnamed_addr constant [13 x i8] c"InvalidLength", align 1
@6 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsZ_NtNtCscgRAwXFJnXP_4core3fmt3numjNtB7_5Debug3fmt }>, align 8
@7 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRjNtB6_5Debug3fmtCsabmDd0H9iBj_19polars_arrow_format }>, align 8
@8 = private unnamed_addr constant [28 x i8] c"UnionVectorLengthsMismatched", align 1
@9 = private unnamed_addr constant [8 x i8] c"tags_len", align 1
@10 = private unnamed_addr constant [10 x i8] c"values_len", align 1
@11 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRNtNtCsfyRUffk9zcp_6planus6errors18UnknownEnumTagKindNtB6_5Debug3fmtCsabmDd0H9iBj_19polars_arrow_format }>, align 8
@12 = private unnamed_addr constant [14 x i8] c"UnknownEnumTag", align 1
@13 = private unnamed_addr constant [6 x i8] c"source", align 1
@14 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRhNtB6_5Debug3fmtCsabmDd0H9iBj_19polars_arrow_format }>, align 8
@15 = private unnamed_addr constant [15 x i8] c"UnknownUnionTag", align 1
@16 = private unnamed_addr constant [3 x i8] c"tag", align 1
@17 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRtNtB6_5Debug3fmtCsabmDd0H9iBj_19polars_arrow_format }>, align 8
@18 = private unnamed_addr constant [19 x i8] c"InvalidVtableLength", align 1
@19 = private unnamed_addr constant [6 x i8] c"length", align 1
@20 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRNtNtNtB8_3str5error9Utf8ErrorNtB6_5Debug3fmtCsabmDd0H9iBj_19polars_arrow_format }>, align 8
@21 = private unnamed_addr constant [11 x i8] c"InvalidUtf8", align 1
@22 = private unnamed_addr constant [15 x i8] c"MissingRequired", align 1
@23 = private unnamed_addr constant [21 x i8] c"MissingNullTerminator", align 1

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtCsfyRUffk9zcp_6planus7vectors9iterators4IterINtNtBc_6result6ResultNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf11KeyValueRefNtNtB14_6errors5ErrorEENCINvMs3_NtB12_6vectorINtB4o_6VectorB1M_E13to_vec_resultNtB2a_8KeyValueE0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_IB1N_NtNtBc_7convert10InfallibleB3S_EEB5r_8try_folduNCINvNvB5r_12try_for_each4callB59_INtNtNtBc_3ops12control_flow11ControlFlowB59_ENcNtB83_5Break0E0B83_E0IB84_B83_EEB2o_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2, ptr noalias nofree noundef writeonly align 16 captures(none) dereferenceable(80) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !7 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  %i.b = alloca [80 x i8], align 16               ; 8 uses
  %.sroa.6.i3.i = alloca [7 x i8], align 1        ; 7 uses
  %.sroa.10.i.i = alloca [64 x i8], align 16      ; 12 uses
  %i.c = alloca [32 x i8], align 16               ; 3 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [80 x i8], align 16               ; 8 uses
  %.sroa.6.i.sroa.0.i = alloca [7 x i8], align 1  ; 6 uses
  %.sroa.6.i.sroa.5.i = alloca [32 x i8], align 1 ; 6 uses
  %.sroa.6.i.sroa.6.i = alloca [32 x i8], align 1 ; 6 uses
  %.sroa.4.i = alloca [7 x i8], align 1           ; 6 uses
  %.sroa.79.i = alloca [32 x i8], align 16        ; 7 uses
  %.sroa.9.i = alloca [32 x i8], align 16         ; 6 uses
  %.sroa.5.i = alloca [40 x i8], align 8          ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16), !dbg !19
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20), !dbg !19
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.68.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.promoted.i = load ptr, ptr %1, align 8, !alias.scope !22, !noalias !25
  %.sroa.5.0..sroa_idx.i.promoted.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !22, !noalias !25
  %.sroa.68.0..sroa_idx.i.promoted.i = load i64, ptr %.sroa.68.0..sroa_idx.i.i, align 8, !alias.scope !22, !noalias !25
  %.sroa.7.0..sroa_idx.i.promoted.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !alias.scope !22, !noalias !25 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.sroa.0.i), !dbg !27
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.sroa.5.i), !dbg !27
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.sroa.6.i), !dbg !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !45, !noalias !51
  %i.f = icmp eq i64 %.sroa.7.0..sroa_idx.i.promoted.i, 0, !dbg !45
  br i1 %i.f, label %_RNvMs1_NtNtCsfyRUffk9zcp_6planus7vectors6vectorINtB5_6VectorINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf11KeyValueRefNtNtB9_6errors5ErrorEE11split_firstB1O_.exit.thread.i.i, label %.lr.ph.i, !dbg !45

.lr.ph.i:                                         ; preds = %bb.a
  %.sroa.5.0..sroa_idx6.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.68.0..sroa_idx9.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.6.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %.sroa.6.i.sroa.4.0..sroa.6.0..sroa_idx2.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.6.i.sroa.5.0..sroa.6.0..sroa_idx2.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.6.i.sroa.6.0..sroa.6.0..sroa_idx2.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %.sroa.75.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.sroa.10.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br label %bb.b, !dbg !45

_RNvMs1_NtNtCsfyRUffk9zcp_6planus7vectors6vectorINtB5_6VectorINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf11KeyValueRefNtNtB9_6errors5ErrorEE11split_firstB1O_.exit.thread.i.i: ; preds = %bb.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !53, !noalias !54
  br label %.loopexit.i, !dbg !55

bb.b:                                             ; preds = %bb.i, %.lr.ph.i
  %.sroa.04.0.copyload.i3839.i = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.n, %bb.i ] ; 3 uses
  %i.h = phi i64 [ %.sroa.5.0..sroa_idx.i.promoted.i, %.lr.ph.i ], [ %i.o, %bb.i ] ; 3 uses
  %i.i = phi i64 [ %.sroa.68.0..sroa_idx.i.promoted.i, %.lr.ph.i ], [ %i.m, %bb.i ] ; 2 uses
  %i.j = phi i64 [ %.sroa.7.0..sroa_idx.i.promoted.i, %.lr.ph.i ], [ %i.l, %bb.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !56), !dbg !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !58, !noalias !59
  store ptr %.sroa.04.0.copyload.i3839.i, ptr %i.d, align 8, !dbg !58, !noalias !63
  store i64 %i.h, ptr %.sroa.5.0..sroa_idx6.i.i, align 8, !dbg !58, !noalias !63
  store i64 %i.i, ptr %.sroa.68.0..sroa_idx9.i.i, align 8, !dbg !58, !noalias !63
  call void @_RNvXNtNtCsfyRUffk9zcp_6planus5impls6resultINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf11KeyValueRefNtNtB6_6errors5ErrorENtNtB6_6traits10VectorRead11from_bufferB1w_(ptr noalias noundef nonnull sret([80 x i8]) align 16 captures(none) dereferenceable(80) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d, i64 noundef 0), !dbg !64, !noalias !59
  %i.k = icmp ult i64 %i.h, 4, !dbg !70
  br i1 %i.k, label %bb.c, label %_RNvMs1_NtNtCsfyRUffk9zcp_6planus7vectors6vectorINtB5_6VectorINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf11KeyValueRefNtNtB9_6errors5ErrorEE11split_firstB1O_.exit.i.i, !dbg !70

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !103, !noalias !109
  store i8 0, ptr %i.c, align 16, !dbg !103, !noalias !113
  call void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 46, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #7, !dbg !114, !noalias !109
  unreachable

_RNvMs1_NtNtCsfyRUffk9zcp_6planus7vectors6vectorINtB5_6VectorINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf11KeyValueRefNtNtB9_6errors5ErrorEE11split_firstB1O_.exit.i.i: ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.04.0.copyload.i3839.i) ]
  %.sroa.0.0.copyload1.i.i = load i8, ptr %i.e, align 16, !dbg !116, !noalias !117 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.i.sroa.0.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.0..sroa_idx2.i.i, i64 7, i1 false), !dbg !116, !noalias !117
  %.sroa.6.i.sroa.4.0.copyload.i = load i64, ptr %.sroa.6.i.sroa.4.0..sroa.6.0..sroa_idx2.i.sroa_idx.i, align 8, !dbg !116, !noalias !117 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %.sroa.6.i.sroa.5.i, ptr noundef nonnull align 16 dereferenceable(32) %.sroa.6.i.sroa.5.0..sroa.6.0..sroa_idx2.i.sroa_idx.i, i64 32, i1 false), !dbg !116, !noalias !117
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %.sroa.6.i.sroa.6.i, ptr noundef nonnull align 16 dereferenceable(32) %.sroa.6.i.sroa.6.0..sroa.6.0..sroa_idx2.i.sroa_idx.i, i64 32, i1 false), !dbg !116, !noalias !117
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !118, !noalias !59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !53, !noalias !54
  %.not.i.i = icmp eq i8 %.sroa.0.0.copyload1.i.i, 10, !dbg !27
  br i1 %.not.i.i, label %.loopexit.i, label %bb.d, !dbg !55

bb.d:                                             ; preds = %_RNvMs1_NtNtCsfyRUffk9zcp_6planus7vectors6vectorINtB5_6VectorINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf11KeyValueRefNtNtB9_6errors5ErrorEE11split_firstB1O_.exit.i.i
  %i.l = add i64 %i.j, -1, !dbg !119              ; 3 uses
  %i.m = add i64 %i.i, 4, !dbg !120               ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.04.0.copyload.i3839.i, i64 4, !dbg !122 ; 2 uses
  %i.o = add i64 %i.h, -4, !dbg !126              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i), !dbg !127
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.i.sroa.0.i, i64 7, i1 false), !dbg !128, !noalias !129
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.79.i), !dbg !127
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.79.i, ptr noundef nonnull align 1 dereferenceable(32) %.sroa.6.i.sroa.5.i, i64 32, i1 false), !dbg !128, !noalias !129
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i), !dbg !127
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.9.i, ptr noundef nonnull align 1 dereferenceable(32) %.sroa.6.i.sroa.6.i, i64 32, i1 false), !dbg !128, !noalias !129
  store ptr %i.n, ptr %1, align 8, !dbg !130, !alias.scope !22, !noalias !25
  store i64 %i.o, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !130, !alias.scope !22, !noalias !25
  store i64 %i.m, ptr %.sroa.68.0..sroa_idx.i.i, align 8, !dbg !130, !alias.scope !22, !noalias !25
  store i64 %i.l, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !dbg !130, !alias.scope !22, !noalias !25
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.sroa.0.i), !dbg !131
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.sroa.5.i), !dbg !131
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.sroa.6.i), !dbg !131
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i), !dbg !127
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i3.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i), !noalias !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !132, !noalias !140
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !132, !noalias !144
  %.not.i.i.i = icmp eq i8 %.sroa.0.0.copyload1.i.i, 9, !dbg !148
  br i1 %.not.i.i.i, label %bb.f, label %bb.e, !dbg !152

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.10.i.i, i64 40
  %.sroa.10.48..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.i.i, i64 32, !dbg !153
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.10.48..sroa_idx.i.i, ptr noundef nonnull align 16 dereferenceable(32) %.sroa.9.i, i64 32, i1 false), !dbg !153, !noalias !154
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.i3.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4.i, i64 7, i1 false), !dbg !155, !noalias !154
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.10.i.i, ptr noundef nonnull align 16 dereferenceable(32) %.sroa.79.i, i64 32, i1 false), !dbg !155, !noalias !154
  br label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldINtNtBa_6result6ResultNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf11KeyValueRefNtNtCsfyRUffk9zcp_6planus6errors5ErrorEIB10_NtB1n_8KeyValueB35_EuINtNtNtBa_3ops12control_flow11ControlFlowIB49_B3N_EENCINvMs3_NtNtB39_7vectors6vectorINtB57_6VectorBZ_E13to_vec_resultB3N_E0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB59_9iterators4IterBZ_EB4Y_EIB10_NtNtBa_7convert10InfallibleB35_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7T_12try_for_each4callB3N_B4N_NcNtB4N_5Break0E0B4N_E0E0B1B_.exit.thread21.i, !dbg !156

bb.f:                                             ; preds = %bb.d
  store i64 %.sroa.6.i.sroa.4.0.copyload.i, ptr %i.a, align 8, !dbg !157, !noalias !158
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.75.8..sroa_idx.i.i, ptr noundef nonnull align 16 dereferenceable(32) %.sroa.79.i, i64 32, i1 false), !dbg !157, !noalias !154
  call void @_RNvXsa0_NtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbufNtB6_8KeyValueINtNtCscgRAwXFJnXP_4core7convert7TryFromNtB6_11KeyValueRefE8try_from(ptr noalias noundef nonnull sret([80 x i8]) align 16 captures(none) dereferenceable(80) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.a), !dbg !132, !noalias !144
  %i.q = load i8, ptr %i.b, align 16, !dbg !159, !range !162, !noalias !144, !noundef !15 ; 2 uses
  %.not10.i.i.i = icmp eq i8 %i.q, 9, !dbg !159
  br i1 %.not10.i.i.i, label %bb.h, label %bb.g, !dbg !163

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.10.i.i, i64 40
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1, !dbg !164
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.i3.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.0..sroa_idx.i.i, i64 7, i1 false), !dbg !164, !noalias !140
  %.sroa.8.0.copyload.i.i = load i64, ptr %i.g, align 8, !dbg !164, !noalias !165
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.10.i.i, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.10.8..sroa_idx.i.i, i64 64, i1 false), !dbg !164, !noalias !140
  br label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldINtNtBa_6result6ResultNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf11KeyValueRefNtNtCsfyRUffk9zcp_6planus6errors5ErrorEIB10_NtB1n_8KeyValueB35_EuINtNtNtBa_3ops12control_flow11ControlFlowIB49_B3N_EENCINvMs3_NtNtB39_7vectors6vectorINtB57_6VectorBZ_E13to_vec_resultB3N_E0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB59_9iterators4IterBZ_EB4Y_EIB10_NtNtBa_7convert10InfallibleB35_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7T_12try_for_each4callB3N_B4N_NcNtB4N_5Break0E0B4N_E0E0B1B_.exit.thread21.i, !dbg !166

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldINtNtBa_6result6ResultNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf11KeyValueRefNtNtCsfyRUffk9zcp_6planus6errors5ErrorEIB10_NtB1n_8KeyValueB35_EuINtNtNtBa_3ops12control_flow11ControlFlowIB49_B3N_EENCINvMs3_NtNtB39_7vectors6vectorINtB57_6VectorBZ_E13to_vec_resultB3N_E0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB59_9iterators4IterBZ_EB4Y_EIB10_NtNtBa_7convert10InfallibleB35_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7T_12try_for_each4callB3N_B4N_NcNtB4N_5Break0E0B4N_E0E0B1B_.exit.thread21.i: ; preds = %bb.g, %bb.e
  %i.s = phi ptr [ %i.r, %bb.g ], [ %i.p, %bb.e ]
  %.sroa.8.1.i.ph.i = phi i64 [ %.sroa.8.0.copyload.i.i, %bb.g ], [ %.sroa.6.i.sroa.4.0.copyload.i, %bb.e ]
  %.sroa.01.1.i.ph.i = phi i8 [ %i.q, %bb.g ], [ %.sroa.0.0.copyload1.i.i, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !156, !noalias !144
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !167, !noalias !140
  store i8 %.sroa.01.1.i.ph.i, ptr %3, align 16, !dbg !168, !noalias !175
  %.sroa.416.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 1, !dbg !168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.416.0..8.val.sroa_idx.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.i3.i, i64 7, i1 false), !dbg !168, !noalias !140
  %.sroa.517.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !168
  store i64 %.sroa.8.1.i.ph.i, ptr %.sroa.517.0..8.val.sroa_idx.i.i.i, align 8, !dbg !168, !noalias !175
  %.sroa.6.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %.sroa.6.0..8.val.sroa_idx.i.i.i, ptr noundef nonnull align 16 dereferenceable(40) %.sroa.10.i.i, i64 40, i1 false), !dbg !168, !noalias !140
  %.sroa.7.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 56, !dbg !168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..8.val.sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !dbg !168, !noalias !140
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i3.i), !dbg !179
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i), !dbg !179, !noalias !129
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i), !dbg !180
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.79.i), !dbg !180
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i), !dbg !180
  br label %.loopexit27.i, !dbg !181

bb.h:                                             ; preds = %bb.f
  %.sroa.8.8.copyload.i.i = load i64, ptr %i.g, align 8, !dbg !188, !noalias !165 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %.sroa.10.i.i, ptr noundef nonnull align 16 dereferenceable(40) %.sroa.10.8..sroa_idx.i.i, i64 40, i1 false), !dbg !188, !noalias !140
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !156, !noalias !144
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !167, !noalias !140
  %.not.i3.i.i.i = icmp eq i64 %.sroa.8.8.copyload.i.i, -9223372036854775807, !dbg !189
  br i1 %.not.i3.i.i.i, label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldINtNtBa_6result6ResultNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf11KeyValueRefNtNtCsfyRUffk9zcp_6planus6errors5ErrorEIB10_NtB1n_8KeyValueB35_EuINtNtNtBa_3ops12control_flow11ControlFlowIB49_B3N_EENCINvMs3_NtNtB39_7vectors6vectorINtB57_6VectorBZ_E13to_vec_resultB3N_E0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB59_9iterators4IterBZ_EB4Y_EIB10_NtNtBa_7convert10InfallibleB35_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7T_12try_for_each4callB3N_B4N_NcNtB4N_5Break0E0B4N_E0E0B1B_.exit.thread.i, label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldINtNtBa_6result6ResultNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf11KeyValueRefNtNtCsfyRUffk9zcp_6planus6errors5ErrorEIB10_NtB1n_8KeyValueB35_EuINtNtNtBa_3ops12control_flow11ControlFlowIB49_B3N_EENCINvMs3_NtNtB39_7vectors6vectorINtB57_6VectorBZ_E13to_vec_resultB3N_E0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB59_9iterators4IterBZ_EB4Y_EIB10_NtNtBa_7convert10InfallibleB35_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7T_12try_for_each4callB3N_B4N_NcNtB4N_5Break0E0B4N_E0E0B1B_.exit.i, !dbg !196

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldINtNtBa_6result6ResultNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf11KeyValueRefNtNtCsfyRUffk9zcp_6planus6errors5ErrorEIB10_NtB1n_8KeyValueB35_EuINtNtNtBa_3ops12control_flow11ControlFlowIB49_B3N_EENCINvMs3_NtNtB39_7vectors6vectorINtB57_6VectorBZ_E13to_vec_resultB3N_E0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB59_9iterators4IterBZ_EB4Y_EIB10_NtNtBa_7convert10InfallibleB35_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7T_12try_for_each4callB3N_B4N_NcNtB4N_5Break0E0B4N_E0E0B1B_.exit.thread.i: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i3.i), !dbg !179
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i), !dbg !179, !noalias !129
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i), !dbg !180
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.79.i), !dbg !180
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i), !dbg !180
  br label %bb.i, !dbg !181

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldINtNtBa_6result6ResultNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf11KeyValueRefNtNtCsfyRUffk9zcp_6planus6errors5ErrorEIB10_NtB1n_8KeyValueB35_EuINtNtNtBa_3ops12control_flow11ControlFlowIB49_B3N_EENCINvMs3_NtNtB39_7vectors6vectorINtB57_6VectorBZ_E13to_vec_resultB3N_E0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB59_9iterators4IterBZ_EB4Y_EIB10_NtNtBa_7convert10InfallibleB35_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7T_12try_for_each4callB3N_B4N_NcNtB4N_5Break0E0B4N_E0E0B1B_.exit.i: ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.i, ptr noundef nonnull align 16 dereferenceable(40) %.sroa.10.i.i, i64 40, i1 false), !dbg !197, !noalias !199
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i3.i), !dbg !179
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i), !dbg !179, !noalias !129
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i), !dbg !180
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.79.i), !dbg !180
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i), !dbg !180
  %.not.i4.i = icmp eq i64 %.sroa.8.8.copyload.i.i, -9223372036854775806, !dbg !200
  br i1 %.not.i4.i, label %bb.i, label %.loopexit27.i, !dbg !181

.loopexit.i:                                      ; preds = %_RNvMs1_NtNtCsfyRUffk9zcp_6planus7vectors6vectorINtB5_6VectorINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf11KeyValueRefNtNtB9_6errors5ErrorEE11split_firstB1O_.exit.i.i, %_RNvMs1_NtNtCsfyRUffk9zcp_6planus7vectors6vectorINtB5_6VectorINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf11KeyValueRefNtNtB9_6errors5ErrorEE11split_firstB1O_.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.sroa.0.i), !dbg !131
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.sroa.5.i), !dbg !131
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.sroa.6.i), !dbg !131
  br label %_RINvYINtNtNtCsfyRUffk9zcp_6planus7vectors9iterators4IterINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf11KeyValueRefNtNtBa_6errors5ErrorEENtNtNtNtBX_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB3G_8adapters3map12map_try_foldBS_IBT_NtB1w_8KeyValueB3e_EuINtNtNtBX_3ops12control_flow11ControlFlowIB5w_B5a_EENCINvMs3_NtB8_6vectorINtB6u_6VectorBS_E13to_vec_resultB5a_E0NCINvXB4w_INtB4w_12GenericShuntINtB4u_3MapB3_B6l_EIBT_NtNtBX_7convert10InfallibleB3e_EEB3A_8try_folduNCINvNvB3A_12try_for_each4callB5a_B6a_NcNtB6a_5Break0E0B6a_E0E0B5v_EB1K_.exit, !dbg !201

.loopexit27.i:                                    ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldINtNtBa_6result6ResultNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf11KeyValueRefNtNtCsfyRUffk9zcp_6planus6errors5ErrorEIB10_NtB1n_8KeyValueB35_EuINtNtNtBa_3ops12control_flow11ControlFlowIB49_B3N_EENCINvMs3_NtNtB39_7vectors6vectorINtB57_6VectorBZ_E13to_vec_resultB3N_E0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB59_9iterators4IterBZ_EB4Y_EIB10_NtNtBa_7convert10InfallibleB35_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7T_12try_for_each4callB3N_B4N_NcNtB4N_5Break0E0B4N_E0E0B1B_.exit.i, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldINtNtBa_6result6ResultNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf11KeyValueRefNtNtCsfyRUffk9zcp_6planus6errors5ErrorEIB10_NtB1n_8KeyValueB35_EuINtNtNtBa_3ops12control_flow11ControlFlowIB49_B3N_EENCINvMs3_NtNtB39_7vectors6vectorINtB57_6VectorBZ_E13to_vec_resultB3N_E0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB59_9iterators4IterBZ_EB4Y_EIB10_NtNtBa_7convert10InfallibleB35_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7T_12try_for_each4callB3N_B4N_NcNtB4N_5Break0E0B4N_E0E0B1B_.exit.thread21.i
  %storemerge.i.i24.i = phi i64 [ -9223372036854775807, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldINtNtBa_6result6ResultNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf11KeyValueRefNtNtCsfyRUffk9zcp_6planus6errors5ErrorEIB10_NtB1n_8KeyValueB35_EuINtNtNtBa_3ops12control_flow11ControlFlowIB49_B3N_EENCINvMs3_NtNtB39_7vectors6vectorINtB57_6VectorBZ_E13to_vec_resultB3N_E0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB59_9iterators4IterBZ_EB4Y_EIB10_NtNtBa_7convert10InfallibleB35_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7T_12try_for_each4callB3N_B4N_NcNtB4N_5Break0E0B4N_E0E0B1B_.exit.thread21.i ], [ %.sroa.8.8.copyload.i.i, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldINtNtBa_6result6ResultNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf11KeyValueRefNtNtCsfyRUffk9zcp_6planus6errors5ErrorEIB10_NtB1n_8KeyValueB35_EuINtNtNtBa_3ops12control_flow11ControlFlowIB49_B3N_EENCINvMs3_NtNtB39_7vectors6vectorINtB57_6VectorBZ_E13to_vec_resultB3N_E0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB59_9iterators4IterBZ_EB4Y_EIB10_NtNtBa_7convert10InfallibleB35_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7T_12try_for_each4callB3N_B4N_NcNtB4N_5Break0E0B4N_E0E0B1B_.exit.i ]
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !202
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.2.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.i, i64 40, i1 false), !dbg !209, !noalias !20
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i), !dbg !211
  br label %_RINvYINtNtNtCsfyRUffk9zcp_6planus7vectors9iterators4IterINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf11KeyValueRefNtNtBa_6errors5ErrorEENtNtNtNtBX_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB3G_8adapters3map12map_try_foldBS_IBT_NtB1w_8KeyValueB3e_EuINtNtNtBX_3ops12control_flow11ControlFlowIB5w_B5a_EENCINvMs3_NtB8_6vectorINtB6u_6VectorBS_E13to_vec_resultB5a_E0NCINvXB4w_INtB4w_12GenericShuntINtB4u_3MapB3_B6l_EIBT_NtNtBX_7convert10InfallibleB3e_EEB3A_8try_folduNCINvNvB3A_12try_for_each4callB5a_B6a_NcNtB6a_5Break0E0B6a_E0E0B5v_EB1K_.exit, !dbg !212

bb.i:                                             ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldINtNtBa_6result6ResultNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf11KeyValueRefNtNtCsfyRUffk9zcp_6planus6errors5ErrorEIB10_NtB1n_8KeyValueB35_EuINtNtNtBa_3ops12control_flow11ControlFlowIB49_B3N_EENCINvMs3_NtNtB39_7vectors6vectorINtB57_6VectorBZ_E13to_vec_resultB3N_E0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB59_9iterators4IterBZ_EB4Y_EIB10_NtNtBa_7convert10InfallibleB35_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7T_12try_for_each4callB3N_B4N_NcNtB4N_5Break0E0B4N_E0E0B1B_.exit.i, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldINtNtBa_6result6ResultNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf11KeyValueRefNtNtCsfyRUffk9zcp_6planus6errors5ErrorEIB10_NtB1n_8KeyValueB35_EuINtNtNtBa_3ops12control_flow11ControlFlowIB49_B3N_EENCINvMs3_NtNtB39_7vectors6vectorINtB57_6VectorBZ_E13to_vec_resultB3N_E0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB59_9iterators4IterBZ_EB4Y_EIB10_NtNtBa_7convert10InfallibleB35_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7T_12try_for_each4callB3N_B4N_NcNtB4N_5Break0E0B4N_E0E0B1B_.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i), !dbg !211
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.sroa.0.i), !dbg !27
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.sroa.5.i), !dbg !27
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.sroa.6.i), !dbg !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !45, !noalias !213
  %i.t = icmp eq i64 %i.l, 0, !dbg !45
  br i1 %i.t, label %_RNvMs1_NtNtCsfyRUffk9zcp_6planus7vectors6vectorINtB5_6VectorINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf11KeyValueRefNtNtB9_6errors5ErrorEE11split_firstB1O_.exit.thread.i.i, label %bb.b, !dbg !45

_RINvYINtNtNtCsfyRUffk9zcp_6planus7vectors9iterators4IterINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf11KeyValueRefNtNtBa_6errors5ErrorEENtNtNtNtBX_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB3G_8adapters3map12map_try_foldBS_IBT_NtB1w_8KeyValueB3e_EuINtNtNtBX_3ops12control_flow11ControlFlowIB5w_B5a_EENCINvMs3_NtB8_6vectorINtB6u_6VectorBS_E13to_vec_resultB5a_E0NCINvXB4w_INtB4w_12GenericShuntINtB4u_3MapB3_B6l_EIBT_NtNtBX_7convert10InfallibleB3e_EEB3A_8try_folduNCINvNvB3A_12try_for_each4callB5a_B6a_NcNtB6a_5Break0E0B6a_E0E0B5v_EB1K_.exit: ; preds = %.loopexit.i, %.loopexit27.i
  %storemerge.i = phi i64 [ %storemerge.i.i24.i, %.loopexit27.i ], [ -9223372036854775806, %.loopexit.i ], !dbg !215
  store i64 %storemerge.i, ptr %0, align 8, !dbg !215, !alias.scope !16, !noalias !20
  ret void, !dbg !216
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtCsfyRUffk9zcp_6planus7vectors9iterators4IterINtNtBc_6result6ResultNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf12TensorDimRefNtNtB14_6errors5ErrorEENCINvMs3_NtB12_6vectorINtB4p_6VectorB1M_E13to_vec_resultNtB2a_9TensorDimE0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_IB1N_NtNtBc_7convert10InfallibleB3T_EEB5t_8try_folduNCINvNvB5t_12try_for_each4callB5a_INtNtNtBc_3ops12control_flow11ControlFlowB5a_ENcNtB85_5Break0E0B85_E0IB86_B85_EEB2o_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2, ptr noalias nofree noundef writeonly align 16 captures(none) dereferenceable(80) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !217 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 7 uses
  %i.b = alloca [80 x i8], align 16               ; 10 uses
  %.sroa.6.i3.i = alloca [7 x i8], align 1        ; 7 uses
  %.sroa.10.i.i = alloca [24 x i8], align 16      ; 9 uses
  %.sroa.11.sroa.5.i.i = alloca [32 x i8], align 8 ; 7 uses
  %i.c = alloca [32 x i8], align 16               ; 3 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [80 x i8], align 16               ; 9 uses
  %.sroa.6.i.sroa.0.i = alloca [7 x i8], align 1  ; 6 uses
  %.sroa.6.i.sroa.5.i = alloca [24 x i8], align 1 ; 6 uses
  %.sroa.6.i.sroa.7.i = alloca [32 x i8], align 1 ; 6 uses
  %.sroa.4.i = alloca [7 x i8], align 1           ; 6 uses
  %.sroa.79.i = alloca [24 x i8], align 16        ; 7 uses
  %.sroa.10.i = alloca [32 x i8], align 16        ; 6 uses
  %.sroa.5.i = alloca [24 x i8], align 8          ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !218), !dbg !221
  tail call void @llvm.experimental.noalias.scope.decl(metadata !222), !dbg !221
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.68.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.promoted.i = load ptr, ptr %1, align 8, !alias.scope !224, !noalias !227
  %.sroa.5.0..sroa_idx.i.promoted.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !224, !noalias !227
  %.sroa.68.0..sroa_idx.i.promoted.i = load i64, ptr %.sroa.68.0..sroa_idx.i.i, align 8, !alias.scope !224, !noalias !227
  %.sroa.7.0..sroa_idx.i.promoted.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !alias.scope !224, !noalias !227 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.sroa.0.i), !dbg !229
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.sroa.5.i), !dbg !229
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.sroa.7.i), !dbg !229
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !237, !noalias !240
  %i.f = icmp eq i64 %.sroa.7.0..sroa_idx.i.promoted.i, 0, !dbg !237
  br i1 %i.f, label %_RNvMs1_NtNtCsfyRUffk9zcp_6planus7vectors6vectorINtB5_6VectorINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf12TensorDimRefNtNtB9_6errors5ErrorEE11split_firstB1O_.exit.thread.i.i, label %.lr.ph.i, !dbg !237

.lr.ph.i:                                         ; preds = %bb.a
  %.sroa.5.0..sroa_idx6.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.68.0..sroa_idx9.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.6.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %.sroa.6.i.sroa.4.0..sroa.6.0..sroa_idx2.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.6.i.sroa.5.0..sroa.6.0..sroa_idx2.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.6.i.sroa.6.0..sroa.6.0..sroa_idx2.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.6.i.sroa.7.0..sroa.6.0..sroa_idx2.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %.sroa.75.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.86.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.sroa.10.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br label %bb.b, !dbg !237

_RNvMs1_NtNtCsfyRUffk9zcp_6planus7vectors6vectorINtB5_6VectorINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf12TensorDimRefNtNtB9_6errors5ErrorEE11split_firstB1O_.exit.thread.i.i: ; preds = %bb.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !242, !noalias !243
  br label %.loopexit.i, !dbg !244

bb.b:                                             ; preds = %bb.i, %.lr.ph.i
  %.sroa.04.0.copyload.i4142.i = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.n, %bb.i ] ; 3 uses
  %i.h = phi i64 [ %.sroa.5.0..sroa_idx.i.promoted.i, %.lr.ph.i ], [ %i.o, %bb.i ] ; 3 uses
  %i.i = phi i64 [ %.sroa.68.0..sroa_idx.i.promoted.i, %.lr.ph.i ], [ %i.m, %bb.i ] ; 2 uses
  %i.j = phi i64 [ %.sroa.7.0..sroa_idx.i.promoted.i, %.lr.ph.i ], [ %i.l, %bb.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !245), !dbg !246
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !247, !noalias !248
  store ptr %.sroa.04.0.copyload.i4142.i, ptr %i.d, align 8, !dbg !247, !noalias !252
  store i64 %i.h, ptr %.sroa.5.0..sroa_idx6.i.i, align 8, !dbg !247, !noalias !252
  store i64 %i.i, ptr %.sroa.68.0..sroa_idx9.i.i, align 8, !dbg !247, !noalias !252
  call void @_RNvXNtNtCsfyRUffk9zcp_6planus5impls6resultINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf12TensorDimRefNtNtB6_6errors5ErrorENtNtB6_6traits10VectorRead11from_bufferB1w_(ptr noalias noundef nonnull sret([80 x i8]) align 16 captures(none) dereferenceable(80) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d, i64 noundef 0), !dbg !253, !noalias !248
  %i.k = icmp ult i64 %i.h, 4, !dbg !258
  br i1 %i.k, label %bb.c, label %_RNvMs1_NtNtCsfyRUffk9zcp_6planus7vectors6vectorINtB5_6VectorINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf12TensorDimRefNtNtB9_6errors5ErrorEE11split_firstB1O_.exit.i.i, !dbg !258

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !271, !noalias !273
  store i8 0, ptr %i.c, align 16, !dbg !271, !noalias !277
  call void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 46, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #7, !dbg !278, !noalias !273
  unreachable

_RNvMs1_NtNtCsfyRUffk9zcp_6planus7vectors6vectorINtB5_6VectorINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf12TensorDimRefNtNtB9_6errors5ErrorEE11split_firstB1O_.exit.i.i: ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.04.0.copyload.i4142.i) ]
  %.sroa.0.0.copyload1.i.i = load i8, ptr %i.e, align 16, !dbg !279, !noalias !280 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.i.sroa.0.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.0..sroa_idx2.i.i, i64 7, i1 false), !dbg !279, !noalias !280
  %.sroa.6.i.sroa.4.0.copyload.i = load i64, ptr %.sroa.6.i.sroa.4.0..sroa.6.0..sroa_idx2.i.sroa_idx.i, align 8, !dbg !279, !noalias !280 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.6.i.sroa.5.i, ptr noundef nonnull align 16 dereferenceable(24) %.sroa.6.i.sroa.5.0..sroa.6.0..sroa_idx2.i.sroa_idx.i, i64 24, i1 false), !dbg !279, !noalias !280
  %.sroa.6.i.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.i.sroa.6.0..sroa.6.0..sroa_idx2.i.sroa_idx.i, align 8, !dbg !279, !noalias !280 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %.sroa.6.i.sroa.7.i, ptr noundef nonnull align 16 dereferenceable(32) %.sroa.6.i.sroa.7.0..sroa.6.0..sroa_idx2.i.sroa_idx.i, i64 32, i1 false), !dbg !279, !noalias !280
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !281, !noalias !248
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !242, !noalias !243
  %.not.i.i = icmp eq i8 %.sroa.0.0.copyload1.i.i, 10, !dbg !229
  br i1 %.not.i.i, label %.loopexit.i, label %bb.d, !dbg !244

bb.d:                                             ; preds = %_RNvMs1_NtNtCsfyRUffk9zcp_6planus7vectors6vectorINtB5_6VectorINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf12TensorDimRefNtNtB9_6errors5ErrorEE11split_firstB1O_.exit.i.i
  %i.l = add i64 %i.j, -1, !dbg !282              ; 3 uses
  %i.m = add i64 %i.i, 4, !dbg !283               ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.04.0.copyload.i4142.i, i64 4, !dbg !284 ; 2 uses
  %i.o = add i64 %i.h, -4, !dbg !286              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i), !dbg !287
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.i.sroa.0.i, i64 7, i1 false), !dbg !288, !noalias !289
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.79.i), !dbg !287
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.79.i, ptr noundef nonnull align 1 dereferenceable(24) %.sroa.6.i.sroa.5.i, i64 24, i1 false), !dbg !288, !noalias !289
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i), !dbg !287
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.10.i, ptr noundef nonnull align 1 dereferenceable(32) %.sroa.6.i.sroa.7.i, i64 32, i1 false), !dbg !288, !noalias !289
  store ptr %i.n, ptr %1, align 8, !dbg !290, !alias.scope !224, !noalias !227
  store i64 %i.o, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !290, !alias.scope !224, !noalias !227
  store i64 %i.m, ptr %.sroa.68.0..sroa_idx.i.i, align 8, !dbg !290, !alias.scope !224, !noalias !227
  store i64 %i.l, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !dbg !290, !alias.scope !224, !noalias !227
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.sroa.0.i), !dbg !291
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.sroa.5.i), !dbg !291
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.sroa.7.i), !dbg !291
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i), !dbg !287
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i3.i), !dbg !292
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i), !dbg !292
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11.sroa.5.i.i), !dbg !292
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !295, !noalias !298
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !295, !noalias !302
  %.not.i.i.i = icmp eq i8 %.sroa.0.0.copyload1.i.i, 9, !dbg !306
  br i1 %.not.i.i.i, label %bb.f, label %bb.e, !dbg !309

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.11.sroa.5.i.i, ptr noundef nonnull align 16 dereferenceable(32) %.sroa.10.i, i64 32, i1 false), !dbg !310, !noalias !311
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.i3.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4.i, i64 7, i1 false), !dbg !312, !noalias !311
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.10.i.i, ptr noundef nonnull align 16 dereferenceable(24) %.sroa.79.i, i64 24, i1 false), !dbg !312, !noalias !311
  br label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldINtNtBa_6result6ResultNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf12TensorDimRefNtNtCsfyRUffk9zcp_6planus6errors5ErrorEIB10_NtB1n_9TensorDimB36_EuINtNtNtBa_3ops12control_flow11ControlFlowIB4b_B3O_EENCINvMs3_NtNtB3a_7vectors6vectorINtB59_6VectorBZ_E13to_vec_resultB3O_E0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB5b_9iterators4IterBZ_EB50_EIB10_NtNtBa_7convert10InfallibleB36_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7V_12try_for_each4callB3O_B4P_NcNtB4P_5Break0E0B4P_E0E0B1B_.exit.thread24.i, !dbg !313

bb.f:                                             ; preds = %bb.d
  store i64 %.sroa.6.i.sroa.4.0.copyload.i, ptr %i.a, align 8, !dbg !314, !noalias !315
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.75.8..sroa_idx.i.i, ptr noundef nonnull align 16 dereferenceable(24) %.sroa.79.i, i64 24, i1 false), !dbg !314, !noalias !311
  store i64 %.sroa.6.i.sroa.6.0.copyload.i, ptr %.sroa.86.8..sroa_idx.i.i, align 8, !dbg !314, !noalias !315
  call void @_RNvXsfP_NtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbufNtB6_9TensorDimINtNtCscgRAwXFJnXP_4core7convert7TryFromNtB6_12TensorDimRefE8try_from(ptr noalias noundef nonnull sret([80 x i8]) align 16 captures(none) dereferenceable(80) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.a), !dbg !295, !noalias !302
  %i.p = load i8, ptr %i.b, align 16, !dbg !316, !range !162, !noalias !302, !noundef !15 ; 2 uses
  %.not10.i.i.i = icmp eq i8 %i.p, 9, !dbg !316
  br i1 %.not10.i.i.i, label %bb.h, label %bb.g, !dbg !319

bb.g:                                             ; preds = %bb.f
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1, !dbg !320
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.i3.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.0..sroa_idx.i.i, i64 7, i1 false), !dbg !320, !noalias !298
  %.sroa.8.0.copyload.i.i = load i64, ptr %i.g, align 8, !dbg !320, !noalias !321
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.10.i.i, ptr noundef nonnull align 16 dereferenceable(24) %.sroa.10.8..sroa_idx.i.i, i64 24, i1 false), !dbg !320, !noalias !298
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !320
  %.sroa.11.sroa.0.0.copyload.i.i = load i64, ptr %.sroa.11.0..sroa_idx.i.i, align 8, !dbg !320, !noalias !321
  %.sroa.11.sroa.5.0..sroa.11.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !320
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.11.sroa.5.i.i, ptr noundef nonnull align 16 dereferenceable(32) %.sroa.11.sroa.5.0..sroa.11.0..sroa_idx.sroa_idx.i.i, i64 32, i1 false), !dbg !320, !noalias !298
  br label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldINtNtBa_6result6ResultNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf12TensorDimRefNtNtCsfyRUffk9zcp_6planus6errors5ErrorEIB10_NtB1n_9TensorDimB36_EuINtNtNtBa_3ops12control_flow11ControlFlowIB4b_B3O_EENCINvMs3_NtNtB3a_7vectors6vectorINtB59_6VectorBZ_E13to_vec_resultB3O_E0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB5b_9iterators4IterBZ_EB50_EIB10_NtNtBa_7convert10InfallibleB36_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7V_12try_for_each4callB3O_B4P_NcNtB4P_5Break0E0B4P_E0E0B1B_.exit.thread24.i, !dbg !322

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldINtNtBa_6result6ResultNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf12TensorDimRefNtNtCsfyRUffk9zcp_6planus6errors5ErrorEIB10_NtB1n_9TensorDimB36_EuINtNtNtBa_3ops12control_flow11ControlFlowIB4b_B3O_EENCINvMs3_NtNtB3a_7vectors6vectorINtB59_6VectorBZ_E13to_vec_resultB3O_E0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB5b_9iterators4IterBZ_EB50_EIB10_NtNtBa_7convert10InfallibleB36_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7V_12try_for_each4callB3O_B4P_NcNtB4P_5Break0E0B4P_E0E0B1B_.exit.thread24.i: ; preds = %bb.g, %bb.e
  %.sroa.11.sroa.0.1.i.ph.i = phi i64 [ %.sroa.11.sroa.0.0.copyload.i.i, %bb.g ], [ %.sroa.6.i.sroa.6.0.copyload.i, %bb.e ]
  %.sroa.8.1.i.ph.i = phi i64 [ %.sroa.8.0.copyload.i.i, %bb.g ], [ %.sroa.6.i.sroa.4.0.copyload.i, %bb.e ]
  %.sroa.01.1.i.ph.i = phi i8 [ %i.p, %bb.g ], [ %.sroa.0.0.copyload1.i.i, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !313, !noalias !302
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !323, !noalias !298
  store i8 %.sroa.01.1.i.ph.i, ptr %3, align 16, !dbg !324, !noalias !328
  %.sroa.416.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 1, !dbg !324
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.416.0..8.val.sroa_idx.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.i3.i, i64 7, i1 false), !dbg !324, !noalias !298
  %.sroa.517.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !324
  store i64 %.sroa.8.1.i.ph.i, ptr %.sroa.517.0..8.val.sroa_idx.i.i.i, align 8, !dbg !324, !noalias !328
  %.sroa.6.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !324
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.6.0..8.val.sroa_idx.i.i.i, ptr noundef nonnull align 16 dereferenceable(24) %.sroa.10.i.i, i64 24, i1 false), !dbg !324, !noalias !298
  %.sroa.7.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 40, !dbg !324
  store i64 %.sroa.11.sroa.0.1.i.ph.i, ptr %.sroa.7.0..8.val.sroa_idx.i.i.i, align 8, !dbg !324, !noalias !332
  %.sroa.9.sroa.4.0..sroa.7.0..8.val.sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 48, !dbg !324
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.9.sroa.4.0..sroa.7.0..8.val.sroa_idx.i.sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.11.sroa.5.i.i, i64 32, i1 false), !dbg !324, !noalias !298
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i3.i), !dbg !333
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i), !dbg !333
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.sroa.5.i.i), !dbg !333
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i), !dbg !334
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.79.i), !dbg !334
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i), !dbg !334
  br label %.loopexit30.i, !dbg !335

bb.h:                                             ; preds = %bb.f
  %.sroa.8.8.copyload.i.i = load i64, ptr %i.g, align 8, !dbg !338, !noalias !321 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.10.i.i, ptr noundef nonnull align 16 dereferenceable(24) %.sroa.10.8..sroa_idx.i.i, i64 24, i1 false), !dbg !338, !noalias !298
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !313, !noalias !302
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !323, !noalias !298
  %.not.i3.i.i.i = icmp eq i64 %.sroa.8.8.copyload.i.i, -9223372036854775807, !dbg !339
  br i1 %.not.i3.i.i.i, label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldINtNtBa_6result6ResultNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf12TensorDimRefNtNtCsfyRUffk9zcp_6planus6errors5ErrorEIB10_NtB1n_9TensorDimB36_EuINtNtNtBa_3ops12control_flow11ControlFlowIB4b_B3O_EENCINvMs3_NtNtB3a_7vectors6vectorINtB59_6VectorBZ_E13to_vec_resultB3O_E0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB5b_9iterators4IterBZ_EB50_EIB10_NtNtBa_7convert10InfallibleB36_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7V_12try_for_each4callB3O_B4P_NcNtB4P_5Break0E0B4P_E0E0B1B_.exit.thread.i, label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldINtNtBa_6result6ResultNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf12TensorDimRefNtNtCsfyRUffk9zcp_6planus6errors5ErrorEIB10_NtB1n_9TensorDimB36_EuINtNtNtBa_3ops12control_flow11ControlFlowIB4b_B3O_EENCINvMs3_NtNtB3a_7vectors6vectorINtB59_6VectorBZ_E13to_vec_resultB3O_E0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB5b_9iterators4IterBZ_EB50_EIB10_NtNtBa_7convert10InfallibleB36_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7V_12try_for_each4callB3O_B4P_NcNtB4P_5Break0E0B4P_E0E0B1B_.exit.i, !dbg !345

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldINtNtBa_6result6ResultNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf12TensorDimRefNtNtCsfyRUffk9zcp_6planus6errors5ErrorEIB10_NtB1n_9TensorDimB36_EuINtNtNtBa_3ops12control_flow11ControlFlowIB4b_B3O_EENCINvMs3_NtNtB3a_7vectors6vectorINtB59_6VectorBZ_E13to_vec_resultB3O_E0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB5b_9iterators4IterBZ_EB50_EIB10_NtNtBa_7convert10InfallibleB36_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7V_12try_for_each4callB3O_B4P_NcNtB4P_5Break0E0B4P_E0E0B1B_.exit.thread.i: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i3.i), !dbg !333
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i), !dbg !333
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.sroa.5.i.i), !dbg !333
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i), !dbg !334
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.79.i), !dbg !334
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i), !dbg !334
  br label %bb.i, !dbg !335

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldINtNtBa_6result6ResultNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf12TensorDimRefNtNtCsfyRUffk9zcp_6planus6errors5ErrorEIB10_NtB1n_9TensorDimB36_EuINtNtNtBa_3ops12control_flow11ControlFlowIB4b_B3O_EENCINvMs3_NtNtB3a_7vectors6vectorINtB59_6VectorBZ_E13to_vec_resultB3O_E0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB5b_9iterators4IterBZ_EB50_EIB10_NtNtBa_7convert10InfallibleB36_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7V_12try_for_each4callB3O_B4P_NcNtB4P_5Break0E0B4P_E0E0B1B_.exit.i: ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i, ptr noundef nonnull align 16 dereferenceable(24) %.sroa.10.i.i, i64 24, i1 false), !dbg !346, !noalias !348
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i3.i), !dbg !333
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i), !dbg !333
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.sroa.5.i.i), !dbg !333
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i), !dbg !334
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.79.i), !dbg !334
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i), !dbg !334
  %.not.i4.i = icmp eq i64 %.sroa.8.8.copyload.i.i, -9223372036854775806, !dbg !349
  br i1 %.not.i4.i, label %bb.i, label %.loopexit30.i, !dbg !335

.loopexit.i:                                      ; preds = %_RNvMs1_NtNtCsfyRUffk9zcp_6planus7vectors6vectorINtB5_6VectorINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf12TensorDimRefNtNtB9_6errors5ErrorEE11split_firstB1O_.exit.i.i, %_RNvMs1_NtNtCsfyRUffk9zcp_6planus7vectors6vectorINtB5_6VectorINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf12TensorDimRefNtNtB9_6errors5ErrorEE11split_firstB1O_.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.sroa.0.i), !dbg !291
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.sroa.5.i), !dbg !291
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.sroa.7.i), !dbg !291
  br label %_RINvYINtNtNtCsfyRUffk9zcp_6planus7vectors9iterators4IterINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf12TensorDimRefNtNtBa_6errors5ErrorEENtNtNtNtBX_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB3H_8adapters3map12map_try_foldBS_IBT_NtB1w_9TensorDimB3f_EuINtNtNtBX_3ops12control_flow11ControlFlowIB5y_B5b_EENCINvMs3_NtB8_6vectorINtB6w_6VectorBS_E13to_vec_resultB5b_E0NCINvXB4x_INtB4x_12GenericShuntINtB4v_3MapB3_B6n_EIBT_NtNtBX_7convert10InfallibleB3f_EEB3B_8try_folduNCINvNvB3B_12try_for_each4callB5b_B6c_NcNtB6c_5Break0E0B6c_E0E0B5x_EB1K_.exit, !dbg !350

.loopexit30.i:                                    ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldINtNtBa_6result6ResultNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf12TensorDimRefNtNtCsfyRUffk9zcp_6planus6errors5ErrorEIB10_NtB1n_9TensorDimB36_EuINtNtNtBa_3ops12control_flow11ControlFlowIB4b_B3O_EENCINvMs3_NtNtB3a_7vectors6vectorINtB59_6VectorBZ_E13to_vec_resultB3O_E0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB5b_9iterators4IterBZ_EB50_EIB10_NtNtBa_7convert10InfallibleB36_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7V_12try_for_each4callB3O_B4P_NcNtB4P_5Break0E0B4P_E0E0B1B_.exit.i, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldINtNtBa_6result6ResultNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf12TensorDimRefNtNtCsfyRUffk9zcp_6planus6errors5ErrorEIB10_NtB1n_9TensorDimB36_EuINtNtNtBa_3ops12control_flow11ControlFlowIB4b_B3O_EENCINvMs3_NtNtB3a_7vectors6vectorINtB59_6VectorBZ_E13to_vec_resultB3O_E0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB5b_9iterators4IterBZ_EB50_EIB10_NtNtBa_7convert10InfallibleB36_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7V_12try_for_each4callB3O_B4P_NcNtB4P_5Break0E0B4P_E0E0B1B_.exit.thread24.i
  %storemerge.i.i27.i = phi i64 [ -9223372036854775807, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldINtNtBa_6result6ResultNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf12TensorDimRefNtNtCsfyRUffk9zcp_6planus6errors5ErrorEIB10_NtB1n_9TensorDimB36_EuINtNtNtBa_3ops12control_flow11ControlFlowIB4b_B3O_EENCINvMs3_NtNtB3a_7vectors6vectorINtB59_6VectorBZ_E13to_vec_resultB3O_E0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB5b_9iterators4IterBZ_EB50_EIB10_NtNtBa_7convert10InfallibleB36_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7V_12try_for_each4callB3O_B4P_NcNtB4P_5Break0E0B4P_E0E0B1B_.exit.thread24.i ], [ %.sroa.8.8.copyload.i.i, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldINtNtBa_6result6ResultNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf12TensorDimRefNtNtCsfyRUffk9zcp_6planus6errors5ErrorEIB10_NtB1n_9TensorDimB36_EuINtNtNtBa_3ops12control_flow11ControlFlowIB4b_B3O_EENCINvMs3_NtNtB3a_7vectors6vectorINtB59_6VectorBZ_E13to_vec_resultB3O_E0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB5b_9iterators4IterBZ_EB50_EIB10_NtNtBa_7convert10InfallibleB36_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7V_12try_for_each4callB3O_B4P_NcNtB4P_5Break0E0B4P_E0E0B1B_.exit.i ]
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !351
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i, i64 24, i1 false), !dbg !357, !noalias !222
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i), !dbg !359
  br label %_RINvYINtNtNtCsfyRUffk9zcp_6planus7vectors9iterators4IterINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf12TensorDimRefNtNtBa_6errors5ErrorEENtNtNtNtBX_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB3H_8adapters3map12map_try_foldBS_IBT_NtB1w_9TensorDimB3f_EuINtNtNtBX_3ops12control_flow11ControlFlowIB5y_B5b_EENCINvMs3_NtB8_6vectorINtB6w_6VectorBS_E13to_vec_resultB5b_E0NCINvXB4x_INtB4x_12GenericShuntINtB4v_3MapB3_B6n_EIBT_NtNtBX_7convert10InfallibleB3f_EEB3B_8try_folduNCINvNvB3B_12try_for_each4callB5b_B6c_NcNtB6c_5Break0E0B6c_E0E0B5x_EB1K_.exit, !dbg !360

bb.i:                                             ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldINtNtBa_6result6ResultNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf12TensorDimRefNtNtCsfyRUffk9zcp_6planus6errors5ErrorEIB10_NtB1n_9TensorDimB36_EuINtNtNtBa_3ops12control_flow11ControlFlowIB4b_B3O_EENCINvMs3_NtNtB3a_7vectors6vectorINtB59_6VectorBZ_E13to_vec_resultB3O_E0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB5b_9iterators4IterBZ_EB50_EIB10_NtNtBa_7convert10InfallibleB36_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7V_12try_for_each4callB3O_B4P_NcNtB4P_5Break0E0B4P_E0E0B1B_.exit.i, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldINtNtBa_6result6ResultNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf12TensorDimRefNtNtCsfyRUffk9zcp_6planus6errors5ErrorEIB10_NtB1n_9TensorDimB36_EuINtNtNtBa_3ops12control_flow11ControlFlowIB4b_B3O_EENCINvMs3_NtNtB3a_7vectors6vectorINtB59_6VectorBZ_E13to_vec_resultB3O_E0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB5b_9iterators4IterBZ_EB50_EIB10_NtNtBa_7convert10InfallibleB36_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7V_12try_for_each4callB3O_B4P_NcNtB4P_5Break0E0B4P_E0E0B1B_.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i), !dbg !359
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.sroa.0.i), !dbg !229
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.sroa.5.i), !dbg !229
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.sroa.7.i), !dbg !229
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !237, !noalias !361
  %i.q = icmp eq i64 %i.l, 0, !dbg !237
  br i1 %i.q, label %_RNvMs1_NtNtCsfyRUffk9zcp_6planus7vectors6vectorINtB5_6VectorINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf12TensorDimRefNtNtB9_6errors5ErrorEE11split_firstB1O_.exit.thread.i.i, label %bb.b, !dbg !237

_RINvYINtNtNtCsfyRUffk9zcp_6planus7vectors9iterators4IterINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf12TensorDimRefNtNtBa_6errors5ErrorEENtNtNtNtBX_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB3H_8adapters3map12map_try_foldBS_IBT_NtB1w_9TensorDimB3f_EuINtNtNtBX_3ops12control_flow11ControlFlowIB5y_B5b_EENCINvMs3_NtB8_6vectorINtB6w_6VectorBS_E13to_vec_resultB5b_E0NCINvXB4x_INtB4x_12GenericShuntINtB4v_3MapB3_B6n_EIBT_NtNtBX_7convert10InfallibleB3f_EEB3B_8try_folduNCINvNvB3B_12try_for_each4callB5b_B6c_NcNtB6c_5Break0E0B6c_E0E0B5x_EB1K_.exit: ; preds = %.loopexit.i, %.loopexit30.i
  %storemerge.i = phi i64 [ %storemerge.i.i27.i, %.loopexit30.i ], [ -9223372036854775806, %.loopexit.i ], !dbg !363
  store i64 %storemerge.i, ptr %0, align 8, !dbg !363, !alias.scope !218, !noalias !222
  ret void, !dbg !364
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i64 0, 5) i64 @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtCsfyRUffk9zcp_6planus7vectors9iterators4IterINtNtBc_6result6ResultNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf7FeatureNtNtB14_6errors14UnknownEnumTagEENCINvMs3_NtB12_6vectorINtB4t_6VectorB1M_E13to_vec_resultB28_E0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_IB1N_NtNtBc_7convert10InfallibleNtB3P_5ErrorEEB5l_8try_folduNCINvNvB5l_12try_for_each4callB28_INtNtNtBc_3ops12control_flow11ControlFlowB28_ENcNtB85_5Break0E0B85_E0IB86_B85_EEB2o_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readnone captures(none) %1, ptr noalias nofree noundef writeonly align 16 captures(none) dereferenceable(80) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !365 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [64 x i8], align 16               ; 7 uses
  %.sroa.6.i = alloca [32 x i8], align 8          ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !366), !dbg !369
  tail call void @llvm.experimental.noalias.scope.decl(metadata !370), !dbg !373
  %.sroa.01.0.copyload.i.i = load ptr, ptr %0, align 8, !dbg !378, !alias.scope !382, !noalias !383 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !378 ; 2 uses
  %.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !378, !alias.scope !382, !noalias !383 ; 3 uses
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !378 ; 2 uses
  %.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !dbg !378, !alias.scope !382, !noalias !383 ; 2 uses
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !378 ; 2 uses
  %.sroa.7.0.copyload.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !dbg !378, !alias.scope !382, !noalias !383 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !385, !noalias !388
  %i.d = icmp eq i64 %.sroa.7.0.copyload.i.i, 0, !dbg !385
  br i1 %i.d, label %bb.f, label %bb.b, !dbg !385

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !389, !noalias !390
  store ptr %.sroa.01.0.copyload.i.i, ptr %i.b, align 8, !dbg !389, !noalias !394
  %.sroa.5.0..sroa_idx3.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !389
  store i64 %.sroa.5.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx3.i.i, align 8, !dbg !389, !noalias !394
  %.sroa.6.0..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !389
  store i64 %.sroa.6.0.copyload.i.i, ptr %.sroa.6.0..sroa_idx5.i.i, align 8, !dbg !389, !noalias !394
  call void @_RNvXNtNtCsfyRUffk9zcp_6planus5impls6resultINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf7FeatureNtNtB6_6errors14UnknownEnumTagENtNtB6_6traits10VectorRead11from_bufferB1w_(ptr noalias noundef nonnull sret([64 x i8]) align 16 captures(none) dereferenceable(64) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, i64 noundef 0), !dbg !395, !noalias !390
  %i.e = icmp ult i64 %.sroa.5.0.copyload.i.i, 8, !dbg !400
  br i1 %i.e, label %bb.c, label %bb.d, !dbg !400

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !413, !noalias !415
  store i8 0, ptr %i.a, align 16, !dbg !413, !noalias !419
  call void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 46, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #7, !dbg !420, !noalias !415
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.0.copyload.i.i) ]
  %i.f = add i64 %.sroa.5.0.copyload.i.i, -8, !dbg !421
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload.i.i, i64 8, !dbg !422
  %i.h = add i64 %.sroa.6.0.copyload.i.i, 8, !dbg !424
  %i.i = add i64 %.sroa.7.0.copyload.i.i, -1, !dbg !425
  %.sroa.5.sroa.0.0.copyload.i = load i64, ptr %i.c, align 16, !dbg !426, !noalias !382 ; 2 uses
  %.sroa.5.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !426
  %.sroa.5.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.sroa.5.0..sroa_idx.i, align 8, !dbg !426, !noalias !382
  %.sroa.5.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !426
  %.sroa.5.sroa.6.0.copyload.i = load ptr, ptr %.sroa.5.sroa.6.0..sroa_idx.i, align 16, !dbg !426, !noalias !382 ; 2 uses
  %.sroa.5.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !426
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i), !dbg !427
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.sroa.7.0..sroa_idx.i, i64 32, i1 false), !dbg !426, !noalias !366
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !428, !noalias !390
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !429, !noalias !388
  store ptr %i.g, ptr %0, align 8, !dbg !430, !alias.scope !382, !noalias !383
  store i64 %i.f, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !430, !alias.scope !382, !noalias !383
  store i64 %i.h, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !dbg !430, !alias.scope !382, !noalias !383
  store i64 %i.i, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !dbg !430, !alias.scope !382, !noalias !383
  %.not.i.i.i = icmp eq ptr %.sroa.5.sroa.6.0.copyload.i, null, !dbg !431
  br i1 %.not.i.i.i, label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldINtNtBa_6result6ResultNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf7FeatureNtNtCsfyRUffk9zcp_6planus6errors14UnknownEnumTagEIB10_B1l_NtB32_5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4b_B1l_EENCINvMs3_NtNtB34_7vectors6vectorINtB59_6VectorBZ_E13to_vec_resultB1l_E0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB5b_9iterators4IterBZ_EB50_EIB10_NtNtBa_7convert10InfallibleB3W_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7V_12try_for_each4callB1l_B4P_NcNtB4P_5Break0E0B4P_E0E0B1B_.exit.i, label %bb.e, !dbg !438

bb.e:                                             ; preds = %bb.d
  %.sroa.0.0.insert.ext.i.i.i = zext i64 %.sroa.5.sroa.0.0.copyload.i to i128, !dbg !439
  %.sroa.0.8.insert.ext.i.i.i = zext i64 %.sroa.5.sroa.5.0.copyload.i to i128, !dbg !439
  %.sroa.0.8.insert.shift.i.i.i = shl nuw i128 %.sroa.0.8.insert.ext.i.i.i, 64, !dbg !439
  %.sroa.0.8.insert.insert.i.i.i = or disjoint i128 %.sroa.0.8.insert.shift.i.i.i, %.sroa.0.0.insert.ext.i.i.i, !dbg !439
  store i8 3, ptr %2, align 16, !dbg !446, !noalias !450
  %.sroa.610.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !446
  store i128 %.sroa.0.8.insert.insert.i.i.i, ptr %.sroa.610.0..8.val.sroa_idx.i.i.i, align 16, !dbg !446, !noalias !455
  %.sroa.7.sroa.4.0..sroa.610.0..8.val.sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 32, !dbg !446
  store ptr %.sroa.5.sroa.6.0.copyload.i, ptr %.sroa.7.sroa.4.0..sroa.610.0..8.val.sroa_idx.i.sroa_idx.i.i, align 16, !dbg !446, !noalias !455
  %.sroa.7.sroa.5.0..sroa.610.0..8.val.sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 40, !dbg !446
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.sroa.5.0..sroa.610.0..8.val.sroa_idx.i.sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i, i64 32, i1 false), !dbg !446, !noalias !366
  br label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldINtNtBa_6result6ResultNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf7FeatureNtNtCsfyRUffk9zcp_6planus6errors14UnknownEnumTagEIB10_B1l_NtB32_5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4b_B1l_EENCINvMs3_NtNtB34_7vectors6vectorINtB59_6VectorBZ_E13to_vec_resultB1l_E0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB5b_9iterators4IterBZ_EB50_EIB10_NtNtBa_7convert10InfallibleB3W_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7V_12try_for_each4callB1l_B4P_NcNtB4P_5Break0E0B4P_E0E0B1B_.exit.i, !dbg !456

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldINtNtBa_6result6ResultNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf7FeatureNtNtCsfyRUffk9zcp_6planus6errors14UnknownEnumTagEIB10_B1l_NtB32_5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4b_B1l_EENCINvMs3_NtNtB34_7vectors6vectorINtB59_6VectorBZ_E13to_vec_resultB1l_E0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB5b_9iterators4IterBZ_EB50_EIB10_NtNtBa_7convert10InfallibleB3W_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7V_12try_for_each4callB1l_B4P_NcNtB4P_5Break0E0B4P_E0E0B1B_.exit.i: ; preds = %bb.e, %bb.d
  %.sroa.0.1.i.i.i = phi i64 [ 3, %bb.e ], [ %.sroa.5.sroa.0.0.copyload.i, %bb.d ], !dbg !457
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i), !dbg !458
  br label %_RINvYINtNtNtCsfyRUffk9zcp_6planus7vectors9iterators4IterINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf7FeatureNtNtBa_6errors14UnknownEnumTagEENtNtNtNtBX_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB3L_8adapters3map12map_try_foldBS_IBT_B1u_NtB3b_5ErrorEuINtNtNtBX_3ops12control_flow11ControlFlowIB5y_B1u_EENCINvMs3_NtB8_6vectorINtB6w_6VectorBS_E13to_vec_resultB1u_E0NCINvXB4B_INtB4B_12GenericShuntINtB4z_3MapB3_B6n_EIBT_NtNtBX_7convert10InfallibleB5j_EEB3F_8try_folduNCINvNvB3F_12try_for_each4callB1u_B6c_NcNtB6c_5Break0E0B6c_E0E0B5x_EB1K_.exit, !dbg !459

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !429, !noalias !388
  br label %_RINvYINtNtNtCsfyRUffk9zcp_6planus7vectors9iterators4IterINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf7FeatureNtNtBa_6errors14UnknownEnumTagEENtNtNtNtBX_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB3L_8adapters3map12map_try_foldBS_IBT_B1u_NtB3b_5ErrorEuINtNtNtBX_3ops12control_flow11ControlFlowIB5y_B1u_EENCINvMs3_NtB8_6vectorINtB6w_6VectorBS_E13to_vec_resultB1u_E0NCINvXB4B_INtB4B_12GenericShuntINtB4z_3MapB3_B6n_EIBT_NtNtBX_7convert10InfallibleB5j_EEB3F_8try_folduNCINvNvB3F_12try_for_each4callB1u_B6c_NcNtB6c_5Break0E0B6c_E0E0B5x_EB1K_.exit, !dbg !459

_RINvYINtNtNtCsfyRUffk9zcp_6planus7vectors9iterators4IterINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf7FeatureNtNtBa_6errors14UnknownEnumTagEENtNtNtNtBX_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB3L_8adapters3map12map_try_foldBS_IBT_B1u_NtB3b_5ErrorEuINtNtNtBX_3ops12control_flow11ControlFlowIB5y_B1u_EENCINvMs3_NtB8_6vectorINtB6w_6VectorBS_E13to_vec_resultB1u_E0NCINvXB4B_INtB4B_12GenericShuntINtB4z_3MapB3_B6n_EIBT_NtNtBX_7convert10InfallibleB5j_EEB3F_8try_folduNCINvNvB3F_12try_for_each4callB1u_B6c_NcNtB6c_5Break0E0B6c_E0E0B5x_EB1K_.exit: ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldINtNtBa_6result6ResultNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf7FeatureNtNtCsfyRUffk9zcp_6planus6errors14UnknownEnumTagEIB10_B1l_NtB32_5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4b_B1l_EENCINvMs3_NtNtB34_7vectors6vectorINtB59_6VectorBZ_E13to_vec_resultB1l_E0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB5b_9iterators4IterBZ_EB50_EIB10_NtNtBa_7convert10InfallibleB3W_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7V_12try_for_each4callB1l_B4P_NcNtB4P_5Break0E0B4P_E0E0B1B_.exit.i, %bb.f
  %.sroa.0.0.i = phi i64 [ %.sroa.0.1.i.i.i, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldINtNtBa_6result6ResultNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf7FeatureNtNtCsfyRUffk9zcp_6planus6errors14UnknownEnumTagEIB10_B1l_NtB32_5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4b_B1l_EENCINvMs3_NtNtB34_7vectors6vectorINtB59_6VectorBZ_E13to_vec_resultB1l_E0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB5b_9iterators4IterBZ_EB50_EIB10_NtNtBa_7convert10InfallibleB3W_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7V_12try_for_each4callB1l_B4P_NcNtB4P_5Break0E0B4P_E0E0B1B_.exit.i ], [ 4, %bb.f ], !dbg !460
  ret i64 %.sroa.0.0.i, !dbg !461
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtCsfyRUffk9zcp_6planus7vectors9iterators4IterINtNtBc_6result6ResultNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf8FieldRefNtNtB14_6errors5ErrorEENCINvMs3_NtB12_6vectorINtB4k_6VectorB1M_E13to_vec_resultNtB2a_5FieldE0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_IB1N_NtNtBc_7convert10InfallibleB3O_EEB5k_8try_folduNCINvNvB5k_12try_for_each4callB55_INtNtNtBc_3ops12control_flow11ControlFlowB55_ENcNtB7W_5Break0E0B7W_E0IB7X_B7W_EEB2o_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2, ptr noalias nofree noundef writeonly align 16 captures(none) dereferenceable(80) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !462 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [112 x i8], align 16              ; 10 uses
  %.sroa.9.i.i = alloca [47 x i8], align 1        ; 9 uses
  %.sroa.10.i.i = alloca [32 x i8], align 16      ; 9 uses
  %.sroa.5.sroa.7.i.i = alloca [16 x i8], align 16 ; 6 uses
  %i.c = alloca [32 x i8], align 16               ; 3 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [80 x i8], align 16               ; 5 uses
  %.sroa.6.i.i = alloca [79 x i8], align 1        ; 6 uses
  %.sroa.4.i = alloca [79 x i8], align 1          ; 8 uses
  %.sroa.78.i = alloca [47 x i8], align 1         ; 5 uses
  %.sroa.8.i = alloca [32 x i8], align 8          ; 5 uses
  %.sroa.9.i = alloca [16 x i8], align 8          ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !463), !dbg !466
  tail call void @llvm.experimental.noalias.scope.decl(metadata !467), !dbg !466
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.68.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.promoted.i = load ptr, ptr %1, align 8, !alias.scope !469, !noalias !472
  %.sroa.5.0..sroa_idx.i.promoted.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !469, !noalias !472
  %.sroa.68.0..sroa_idx.i.promoted.i = load i64, ptr %.sroa.68.0..sroa_idx.i.i, align 8, !alias.scope !469, !noalias !472
  %.sroa.7.0..sroa_idx.i.promoted.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !alias.scope !469, !noalias !472 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i), !dbg !474
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !482, !noalias !485
  %i.f = icmp eq i64 %.sroa.7.0..sroa_idx.i.promoted.i, 0, !dbg !482
  br i1 %i.f, label %_RNvMs1_NtNtCsfyRUffk9zcp_6planus7vectors6vectorINtB5_6VectorINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf8FieldRefNtNtB9_6errors5ErrorEE11split_firstB1O_.exit.thread.i.i, label %.lr.ph.i, !dbg !482

.lr.ph.i:                                         ; preds = %bb.a
  %.sroa.5.0..sroa_idx6.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.68.0..sroa_idx9.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.6.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %.sroa.4.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i, i64 7
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.6.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.9.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 17 ; 2 uses
  %.sroa.10.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %.sroa.11.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  br label %bb.b, !dbg !482

_RNvMs1_NtNtCsfyRUffk9zcp_6planus7vectors6vectorINtB5_6VectorINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf8FieldRefNtNtB9_6errors5ErrorEE11split_firstB1O_.exit.thread.i.i: ; preds = %bb.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !487, !noalias !488
  br label %.loopexit.i, !dbg !489

bb.b:                                             ; preds = %bb.i, %.lr.ph.i
  %.sroa.04.0.copyload.i3233.i = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.n, %bb.i ] ; 3 uses
  %i.h = phi i64 [ %.sroa.5.0..sroa_idx.i.promoted.i, %.lr.ph.i ], [ %i.o, %bb.i ] ; 3 uses
  %i.i = phi i64 [ %.sroa.68.0..sroa_idx.i.promoted.i, %.lr.ph.i ], [ %i.m, %bb.i ] ; 2 uses
  %i.j = phi i64 [ %.sroa.7.0..sroa_idx.i.promoted.i, %.lr.ph.i ], [ %i.l, %bb.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !490), !dbg !491
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !492, !noalias !493
  store ptr %.sroa.04.0.copyload.i3233.i, ptr %i.d, align 8, !dbg !492, !noalias !497
  store i64 %i.h, ptr %.sroa.5.0..sroa_idx6.i.i, align 8, !dbg !492, !noalias !497
  store i64 %i.i, ptr %.sroa.68.0..sroa_idx9.i.i, align 8, !dbg !492, !noalias !497
  call void @_RNvXNtNtCsfyRUffk9zcp_6planus5impls6resultINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf8FieldRefNtNtB6_6errors5ErrorENtNtB6_6traits10VectorRead11from_bufferB1w_(ptr noalias noundef nonnull sret([80 x i8]) align 16 captures(none) dereferenceable(80) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d, i64 noundef 0), !dbg !498, !noalias !493
  %i.k = icmp ult i64 %i.h, 4, !dbg !503
  br i1 %i.k, label %bb.c, label %_RNvMs1_NtNtCsfyRUffk9zcp_6planus7vectors6vectorINtB5_6VectorINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf8FieldRefNtNtB9_6errors5ErrorEE11split_firstB1O_.exit.i.i, !dbg !503

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !516, !noalias !518
  store i8 0, ptr %i.c, align 16, !dbg !516, !noalias !522
  call void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 46, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #7, !dbg !523, !noalias !518
  unreachable

_RNvMs1_NtNtCsfyRUffk9zcp_6planus7vectors6vectorINtB5_6VectorINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf8FieldRefNtNtB9_6errors5ErrorEE11split_firstB1O_.exit.i.i: ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.04.0.copyload.i3233.i) ]
  %.sroa.0.0.copyload1.i.i = load i8, ptr %i.e, align 16, !dbg !524, !noalias !525 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(79) %.sroa.6.i.i, ptr noundef nonnull align 1 dereferenceable(79) %.sroa.6.0..sroa_idx2.i.i, i64 79, i1 false), !dbg !524, !noalias !525
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !526, !noalias !493
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !487, !noalias !488
  %.not.i.i = icmp eq i8 %.sroa.0.0.copyload1.i.i, 10, !dbg !474
  br i1 %.not.i.i, label %.loopexit.i, label %bb.d, !dbg !489

bb.d:                                             ; preds = %_RNvMs1_NtNtCsfyRUffk9zcp_6planus7vectors6vectorINtB5_6VectorINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf8FieldRefNtNtB9_6errors5ErrorEE11split_firstB1O_.exit.i.i
  %i.l = add i64 %i.j, -1, !dbg !527              ; 3 uses
  %i.m = add i64 %i.i, 4, !dbg !528               ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.04.0.copyload.i3233.i, i64 4, !dbg !529 ; 2 uses
  %i.o = add i64 %i.h, -4, !dbg !531              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i), !dbg !532
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(79) %.sroa.4.i, ptr noundef nonnull align 1 dereferenceable(79) %.sroa.6.i.i, i64 79, i1 false), !dbg !533, !noalias !534
  store ptr %i.n, ptr %1, align 8, !dbg !535, !alias.scope !469, !noalias !472
  store i64 %i.o, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !535, !alias.scope !469, !noalias !472
  store i64 %i.m, ptr %.sroa.68.0..sroa_idx.i.i, align 8, !dbg !535, !alias.scope !469, !noalias !472
  store i64 %i.l, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !dbg !535, !alias.scope !469, !noalias !472
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i), !dbg !536
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.78.i), !dbg !532
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i), !dbg !532
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i), !dbg !532
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.sroa.7.i.i), !dbg !537
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i.i), !dbg !540
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i), !dbg !540
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !541, !noalias !544
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !541, !noalias !548
  %.not.i.i.i = icmp eq i8 %.sroa.0.0.copyload1.i.i, 9, !dbg !552
  br i1 %.not.i.i.i, label %bb.f, label %bb.e, !dbg !555

bb.e:                                             ; preds = %bb.d
  %.sroa.4.48..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i, i64 47, !dbg !556
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.10.i.i, ptr noundef nonnull align 1 dereferenceable(32) %.sroa.4.48..sroa_idx.i, i64 32, i1 false), !dbg !556, !noalias !557
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(47) %.sroa.9.i.i, ptr noundef nonnull align 1 dereferenceable(47) %.sroa.4.i, i64 47, i1 false), !dbg !558, !noalias !557
  br label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldINtNtBa_6result6ResultNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf8FieldRefNtNtCsfyRUffk9zcp_6planus6errors5ErrorEIB10_NtB1n_5FieldB31_EuINtNtNtBa_3ops12control_flow11ControlFlowIB42_B3J_EENCINvMs3_NtNtB35_7vectors6vectorINtB50_6VectorBZ_E13to_vec_resultB3J_E0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB52_9iterators4IterBZ_EB4R_EIB10_NtNtBa_7convert10InfallibleB31_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7M_12try_for_each4callB3J_B4G_NcNtB4G_5Break0E0B4G_E0E0B1B_.exit.thread19.i, !dbg !559

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 1 dereferenceable(40) %.sroa.4.8..sroa_idx.i, i64 40, i1 false), !dbg !560, !noalias !557
  call void @_RNvXsaR_NtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbufNtB6_5FieldINtNtCscgRAwXFJnXP_4core7convert7TryFromNtB6_8FieldRefE8try_from(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.a), !dbg !541, !noalias !548
  %i.p = load i64, ptr %i.b, align 16, !dbg !561, !range !564, !noalias !548, !noundef !15
  %i.q = trunc nuw i64 %i.p to i1, !dbg !565
  br i1 %i.q, label %bb.g, label %bb.h, !dbg !565

bb.g:                                             ; preds = %bb.f
  %.sroa.6.16.copyload3.i.i = load i8, ptr %.sroa.6.8..sroa_idx.i.i, align 16, !dbg !566, !noalias !567
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(47) %.sroa.9.i.i, ptr noundef nonnull align 1 dereferenceable(47) %.sroa.9.8..sroa_idx.i.i, i64 47, i1 false), !dbg !566, !noalias !567
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.10.i.i, ptr noundef nonnull align 16 dereferenceable(32) %.sroa.10.8..sroa_idx.i.i, i64 32, i1 false), !dbg !566, !noalias !567
  br label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldINtNtBa_6result6ResultNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf8FieldRefNtNtCsfyRUffk9zcp_6planus6errors5ErrorEIB10_NtB1n_5FieldB31_EuINtNtNtBa_3ops12control_flow11ControlFlowIB42_B3J_EENCINvMs3_NtNtB35_7vectors6vectorINtB50_6VectorBZ_E13to_vec_resultB3J_E0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB52_9iterators4IterBZ_EB4R_EIB10_NtNtBa_7convert10InfallibleB31_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7M_12try_for_each4callB3J_B4G_NcNtB4G_5Break0E0B4G_E0E0B1B_.exit.thread19.i, !dbg !568

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldINtNtBa_6result6ResultNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf8FieldRefNtNtCsfyRUffk9zcp_6planus6errors5ErrorEIB10_NtB1n_5FieldB31_EuINtNtNtBa_3ops12control_flow11ControlFlowIB42_B3J_EENCINvMs3_NtNtB35_7vectors6vectorINtB50_6VectorBZ_E13to_vec_resultB3J_E0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB52_9iterators4IterBZ_EB4R_EIB10_NtNtBa_7convert10InfallibleB31_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7M_12try_for_each4callB3J_B4G_NcNtB4G_5Break0E0B4G_E0E0B1B_.exit.thread19.i: ; preds = %bb.g, %bb.e
  %.sroa.6.1.ph.i.i = phi i8 [ %.sroa.6.16.copyload3.i.i, %bb.g ], [ %.sroa.0.0.copyload1.i.i, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !559, !noalias !548
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !569, !noalias !544
  store i8 %.sroa.6.1.ph.i.i, ptr %3, align 16, !dbg !570, !noalias !574
  %.sroa.5.sroa.5.0..8.val.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 1, !dbg !570
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(47) %.sroa.5.sroa.5.0..8.val.sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(47) %.sroa.9.i.i, i64 47, i1 false), !dbg !570, !noalias !544
  %.sroa.5.sroa.6.0..8.val.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 48, !dbg !570
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.5.sroa.6.0..8.val.sroa_idx.i.i, ptr noundef nonnull align 16 dereferenceable(32) %.sroa.10.i.i, i64 32, i1 false), !dbg !570, !noalias !544
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i.i), !dbg !577
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i), !dbg !577
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.7.i.i), !dbg !577
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i), !dbg !578
  br label %.loopexit28.i, !dbg !579

bb.h:                                             ; preds = %bb.f
  %.sroa.42.8.copyload.i.i = load i64, ptr %i.g, align 8, !dbg !582, !noalias !567 ; 3 uses
  %.sroa.6.8.copyload.i.i = load i8, ptr %.sroa.6.8..sroa_idx.i.i, align 16, !dbg !582, !noalias !567
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(47) %.sroa.9.i.i, ptr noundef nonnull align 1 dereferenceable(47) %.sroa.9.8..sroa_idx.i.i, i64 47, i1 false), !dbg !582, !noalias !567
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.10.i.i, ptr noundef nonnull align 16 dereferenceable(32) %.sroa.10.8..sroa_idx.i.i, i64 32, i1 false), !dbg !582, !noalias !567
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.5.sroa.7.i.i, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.11.8..sroa_idx.i.i, i64 16, i1 false), !dbg !582, !noalias !544
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !559, !noalias !548
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !569, !noalias !544
  call void @llvm.experimental.noalias.scope.decl(metadata !583), !dbg !537
  %.not.i.i.i.i = icmp eq i64 %.sroa.42.8.copyload.i.i, 27, !dbg !584
  br i1 %.not.i.i.i.i, label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldINtNtBa_6result6ResultNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf8FieldRefNtNtCsfyRUffk9zcp_6planus6errors5ErrorEIB10_NtB1n_5FieldB31_EuINtNtNtBa_3ops12control_flow11ControlFlowIB42_B3J_EENCINvMs3_NtNtB35_7vectors6vectorINtB50_6VectorBZ_E13to_vec_resultB3J_E0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB52_9iterators4IterBZ_EB4R_EIB10_NtNtBa_7convert10InfallibleB31_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7M_12try_for_each4callB3J_B4G_NcNtB4G_5Break0E0B4G_E0E0B1B_.exit.thread.i, label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldINtNtBa_6result6ResultNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf8FieldRefNtNtCsfyRUffk9zcp_6planus6errors5ErrorEIB10_NtB1n_5FieldB31_EuINtNtNtBa_3ops12control_flow11ControlFlowIB42_B3J_EENCINvMs3_NtNtB35_7vectors6vectorINtB50_6VectorBZ_E13to_vec_resultB3J_E0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB52_9iterators4IterBZ_EB4R_EIB10_NtNtBa_7convert10InfallibleB31_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7M_12try_for_each4callB3J_B4G_NcNtB4G_5Break0E0B4G_E0E0B1B_.exit.i, !dbg !590

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldINtNtBa_6result6ResultNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf8FieldRefNtNtCsfyRUffk9zcp_6planus6errors5ErrorEIB10_NtB1n_5FieldB31_EuINtNtNtBa_3ops12control_flow11ControlFlowIB42_B3J_EENCINvMs3_NtNtB35_7vectors6vectorINtB50_6VectorBZ_E13to_vec_resultB3J_E0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB52_9iterators4IterBZ_EB4R_EIB10_NtNtBa_7convert10InfallibleB31_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7M_12try_for_each4callB3J_B4G_NcNtB4G_5Break0E0B4G_E0E0B1B_.exit.thread.i: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i.i), !dbg !577
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i), !dbg !577
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.7.i.i), !dbg !577
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i), !dbg !578
  br label %bb.i, !dbg !579

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldINtNtBa_6result6ResultNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf8FieldRefNtNtCsfyRUffk9zcp_6planus6errors5ErrorEIB10_NtB1n_5FieldB31_EuINtNtNtBa_3ops12control_flow11ControlFlowIB42_B3J_EENCINvMs3_NtNtB35_7vectors6vectorINtB50_6VectorBZ_E13to_vec_resultB3J_E0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB52_9iterators4IterBZ_EB4R_EIB10_NtNtBa_7convert10InfallibleB31_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7M_12try_for_each4callB3J_B4G_NcNtB4G_5Break0E0B4G_E0E0B1B_.exit.i: ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(47) %.sroa.78.i, ptr noundef nonnull align 1 dereferenceable(47) %.sroa.9.i.i, i64 47, i1 false), !dbg !591, !noalias !593
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8.i, ptr noundef nonnull align 16 dereferenceable(32) %.sroa.10.i.i, i64 32, i1 false), !dbg !591, !noalias !593
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.i, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.5.sroa.7.i.i, i64 16, i1 false), !dbg !591, !alias.scope !594, !noalias !593
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i.i), !dbg !577
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i), !dbg !577
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.7.i.i), !dbg !577
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i), !dbg !578
  %.not.i3.i = icmp eq i64 %.sroa.42.8.copyload.i.i, 28, !dbg !596
  br i1 %.not.i3.i, label %bb.i, label %.loopexit28.i, !dbg !579

.loopexit.i:                                      ; preds = %_RNvMs1_NtNtCsfyRUffk9zcp_6planus7vectors6vectorINtB5_6VectorINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf8FieldRefNtNtB9_6errors5ErrorEE11split_firstB1O_.exit.i.i, %_RNvMs1_NtNtCsfyRUffk9zcp_6planus7vectors6vectorINtB5_6VectorINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf8FieldRefNtNtB9_6errors5ErrorEE11split_firstB1O_.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i), !dbg !536
  store i64 28, ptr %0, align 8, !dbg !597, !alias.scope !600, !noalias !467
  br label %_RINvYINtNtNtCsfyRUffk9zcp_6planus7vectors9iterators4IterINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf8FieldRefNtNtBa_6errors5ErrorEENtNtNtNtBX_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB3C_8adapters3map12map_try_foldBS_IBT_NtB1w_5FieldB3a_EuINtNtNtBX_3ops12control_flow11ControlFlowIB5p_B56_EENCINvMs3_NtB8_6vectorINtB6n_6VectorBS_E13to_vec_resultB56_E0NCINvXB4s_INtB4s_12GenericShuntINtB4q_3MapB3_B6e_EIBT_NtNtBX_7convert10InfallibleB3a_EEB3w_8try_folduNCINvNvB3w_12try_for_each4callB56_B63_NcNtB63_5Break0E0B63_E0E0B5o_EB1K_.exit, !dbg !603

.loopexit28.i:                                    ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldINtNtBa_6result6ResultNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf8FieldRefNtNtCsfyRUffk9zcp_6planus6errors5ErrorEIB10_NtB1n_5FieldB31_EuINtNtNtBa_3ops12control_flow11ControlFlowIB42_B3J_EENCINvMs3_NtNtB35_7vectors6vectorINtB50_6VectorBZ_E13to_vec_resultB3J_E0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB52_9iterators4IterBZ_EB4R_EIB10_NtNtBa_7convert10InfallibleB31_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7M_12try_for_each4callB3J_B4G_NcNtB4G_5Break0E0B4G_E0E0B1B_.exit.i, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldINtNtBa_6result6ResultNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf8FieldRefNtNtCsfyRUffk9zcp_6planus6errors5ErrorEIB10_NtB1n_5FieldB31_EuINtNtNtBa_3ops12control_flow11ControlFlowIB42_B3J_EENCINvMs3_NtNtB35_7vectors6vectorINtB50_6VectorBZ_E13to_vec_resultB3J_E0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB52_9iterators4IterBZ_EB4R_EIB10_NtNtBa_7convert10InfallibleB31_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7M_12try_for_each4callB3J_B4G_NcNtB4G_5Break0E0B4G_E0E0B1B_.exit.thread19.i
  %storemerge.i2.i24.i = phi i64 [ 27, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldINtNtBa_6result6ResultNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf8FieldRefNtNtCsfyRUffk9zcp_6planus6errors5ErrorEIB10_NtB1n_5FieldB31_EuINtNtNtBa_3ops12control_flow11ControlFlowIB42_B3J_EENCINvMs3_NtNtB35_7vectors6vectorINtB50_6VectorBZ_E13to_vec_resultB3J_E0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB52_9iterators4IterBZ_EB4R_EIB10_NtNtBa_7convert10InfallibleB31_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7M_12try_for_each4callB3J_B4G_NcNtB4G_5Break0E0B4G_E0E0B1B_.exit.thread19.i ], [ %.sroa.42.8.copyload.i.i, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldINtNtBa_6result6ResultNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf8FieldRefNtNtCsfyRUffk9zcp_6planus6errors5ErrorEIB10_NtB1n_5FieldB31_EuINtNtNtBa_3ops12control_flow11ControlFlowIB42_B3J_EENCINvMs3_NtNtB35_7vectors6vectorINtB50_6VectorBZ_E13to_vec_resultB3J_E0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB52_9iterators4IterBZ_EB4R_EIB10_NtNtBa_7convert10InfallibleB31_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7M_12try_for_each4callB3J_B4G_NcNtB4G_5Break0E0B4G_E0E0B1B_.exit.i ]
  %.sroa.5.023.i = phi i8 [ undef, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldINtNtBa_6result6ResultNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf8FieldRefNtNtCsfyRUffk9zcp_6planus6errors5ErrorEIB10_NtB1n_5FieldB31_EuINtNtNtBa_3ops12control_flow11ControlFlowIB42_B3J_EENCINvMs3_NtNtB35_7vectors6vectorINtB50_6VectorBZ_E13to_vec_resultB3J_E0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB52_9iterators4IterBZ_EB4R_EIB10_NtNtBa_7convert10InfallibleB31_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7M_12try_for_each4callB3J_B4G_NcNtB4G_5Break0E0B4G_E0E0B1B_.exit.thread19.i ], [ %.sroa.6.8.copyload.i.i, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldINtNtBa_6result6ResultNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf8FieldRefNtNtCsfyRUffk9zcp_6planus6errors5ErrorEIB10_NtB1n_5FieldB31_EuINtNtNtBa_3ops12control_flow11ControlFlowIB42_B3J_EENCINvMs3_NtNtB35_7vectors6vectorINtB50_6VectorBZ_E13to_vec_resultB3J_E0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB52_9iterators4IterBZ_EB4R_EIB10_NtNtBa_7convert10InfallibleB31_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7M_12try_for_each4callB3J_B4G_NcNtB4G_5Break0E0B4G_E0E0B1B_.exit.i ]
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 9, !dbg !604
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(47) %.sroa.3.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(47) %.sroa.78.i, i64 47, i1 false), !dbg !610, !noalias !467
  %.sroa.412.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !604
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.412.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8.i, i64 32, i1 false), !dbg !610, !noalias !467
  %.sroa.513.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !604
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.513.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.i, i64 16, i1 false), !dbg !610, !noalias !467
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.78.i), !dbg !612
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i), !dbg !612
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i), !dbg !612
  store i64 %storemerge.i2.i24.i, ptr %0, align 8, !dbg !604, !alias.scope !613, !noalias !467
  %.sroa.211.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !604
  store i8 %.sroa.5.023.i, ptr %.sroa.211.0..sroa_idx.i, align 8, !dbg !604, !alias.scope !613, !noalias !467
  br label %_RINvYINtNtNtCsfyRUffk9zcp_6planus7vectors9iterators4IterINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf8FieldRefNtNtBa_6errors5ErrorEENtNtNtNtBX_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB3C_8adapters3map12map_try_foldBS_IBT_NtB1w_5FieldB3a_EuINtNtNtBX_3ops12control_flow11ControlFlowIB5p_B56_EENCINvMs3_NtB8_6vectorINtB6n_6VectorBS_E13to_vec_resultB56_E0NCINvXB4s_INtB4s_12GenericShuntINtB4q_3MapB3_B6e_EIBT_NtNtBX_7convert10InfallibleB3a_EEB3w_8try_folduNCINvNvB3w_12try_for_each4callB56_B63_NcNtB63_5Break0E0B63_E0E0B5o_EB1K_.exit, !dbg !617

bb.i:                                             ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldINtNtBa_6result6ResultNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf8FieldRefNtNtCsfyRUffk9zcp_6planus6errors5ErrorEIB10_NtB1n_5FieldB31_EuINtNtNtBa_3ops12control_flow11ControlFlowIB42_B3J_EENCINvMs3_NtNtB35_7vectors6vectorINtB50_6VectorBZ_E13to_vec_resultB3J_E0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB52_9iterators4IterBZ_EB4R_EIB10_NtNtBa_7convert10InfallibleB31_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7M_12try_for_each4callB3J_B4G_NcNtB4G_5Break0E0B4G_E0E0B1B_.exit.i, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldINtNtBa_6result6ResultNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf8FieldRefNtNtCsfyRUffk9zcp_6planus6errors5ErrorEIB10_NtB1n_5FieldB31_EuINtNtNtBa_3ops12control_flow11ControlFlowIB42_B3J_EENCINvMs3_NtNtB35_7vectors6vectorINtB50_6VectorBZ_E13to_vec_resultB3J_E0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB52_9iterators4IterBZ_EB4R_EIB10_NtNtBa_7convert10InfallibleB31_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7M_12try_for_each4callB3J_B4G_NcNtB4G_5Break0E0B4G_E0E0B1B_.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.78.i), !dbg !612
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i), !dbg !612
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i), !dbg !612
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i), !dbg !474
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !482, !noalias !618
  %i.r = icmp eq i64 %i.l, 0, !dbg !482
  br i1 %i.r, label %_RNvMs1_NtNtCsfyRUffk9zcp_6planus7vectors6vectorINtB5_6VectorINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf8FieldRefNtNtB9_6errors5ErrorEE11split_firstB1O_.exit.thread.i.i, label %bb.b, !dbg !482

_RINvYINtNtNtCsfyRUffk9zcp_6planus7vectors9iterators4IterINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf8FieldRefNtNtBa_6errors5ErrorEENtNtNtNtBX_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB3C_8adapters3map12map_try_foldBS_IBT_NtB1w_5FieldB3a_EuINtNtNtBX_3ops12control_flow11ControlFlowIB5p_B56_EENCINvMs3_NtB8_6vectorINtB6n_6VectorBS_E13to_vec_resultB56_E0NCINvXB4s_INtB4s_12GenericShuntINtB4q_3MapB3_B6e_EIBT_NtNtBX_7convert10InfallibleB3a_EEB3w_8try_folduNCINvNvB3w_12try_for_each4callB56_B63_NcNtB63_5Break0E0B63_E0E0B5o_EB1K_.exit: ; preds = %.loopexit.i, %.loopexit28.i
  ret void, !dbg !620
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtCsfyRUffk9zcp_6planus7vectors9iterators4IterNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf12FieldNodeRefENCINvMs2_NtB12_6vectorINtB3H_6VectorB1M_E6to_vecNtB1O_9FieldNodeE0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtB14_6errors5ErrorEEB4D_8try_folduNCINvNvB4D_12try_for_each4callB4k_INtNtNtBc_3ops12control_flow11ControlFlowB4k_ENcNtB7N_5Break0E0B7N_E0IB7O_B7N_EEB22_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2, ptr noalias nofree noundef readnone align 16 captures(none) dereferenceable(80) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !621 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !622), !dbg !625
  tail call void @llvm.experimental.noalias.scope.decl(metadata !626), !dbg !625
  tail call void @llvm.experimental.noalias.scope.decl(metadata !628), !dbg !631
  %.sroa.01.0.copyload.i.i = load ptr, ptr %1, align 8, !dbg !636, !alias.scope !640, !noalias !622 ; 3 uses
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !636 ; 2 uses
  %.sroa.53.0.copyload.i.i = load i64, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !dbg !636, !alias.scope !640, !noalias !622 ; 3 uses
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !636 ; 2 uses
  %.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !dbg !636, !alias.scope !640, !noalias !622 ; 2 uses
  %.sroa.78.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !636 ; 2 uses
  %.sroa.78.0.copyload.i.i = load i64, ptr %.sroa.78.0..sroa_idx.i.i, align 8, !dbg !636, !alias.scope !640, !noalias !622 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !641, !noalias !644
  %i.c = icmp eq i64 %.sroa.78.0.copyload.i.i, 0, !dbg !641
  br i1 %i.c, label %_RNvMs1_NtNtCsfyRUffk9zcp_6planus7vectors6vectorINtB5_6VectorNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf12FieldNodeRefE11split_firstB1c_.exit.thread.i.i, label %bb.b, !dbg !641

_RNvMs1_NtNtCsfyRUffk9zcp_6planus7vectors6vectorINtB5_6VectorNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf12FieldNodeRefE11split_firstB1c_.exit.thread.i.i: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !645, !noalias !644
  br label %bb.d, !dbg !646

bb.b:                                             ; preds = %bb.a
  store ptr %.sroa.01.0.copyload.i.i, ptr %i.b, align 8, !dbg !647, !noalias !648
  %.sroa.53.0..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !647
  store i64 %.sroa.53.0.copyload.i.i, ptr %.sroa.53.0..sroa_idx4.i.i, align 8, !dbg !647, !noalias !648
  %.sroa.6.0..sroa_idx6.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !647
  store i64 %.sroa.6.0.copyload.i.i, ptr %.sroa.6.0..sroa_idx6.i.i, align 8, !dbg !647, !noalias !648
  %i.d = call { ptr, i64 } @_RINvMNtCsfyRUffk9zcp_6planus13slice_helpersNtB3_20SliceWithStartOffset26unchecked_advance_as_arrayKj10_ECsabmDd0H9iBj_19polars_arrow_format(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b, i64 noundef 0), !dbg !651, !noalias !668 ; 2 uses
  %i.e = icmp ult i64 %.sroa.53.0.copyload.i.i, 16, !dbg !670
  br i1 %i.e, label %bb.c, label %_RNvMs1_NtNtCsfyRUffk9zcp_6planus7vectors6vectorINtB5_6VectorNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf12FieldNodeRefE11split_firstB1c_.exit.i.i, !dbg !670

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !683, !noalias !685
  store i8 0, ptr %i.a, align 16, !dbg !683, !noalias !689
  call void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 46, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #7, !dbg !690, !noalias !685
  unreachable

_RNvMs1_NtNtCsfyRUffk9zcp_6planus7vectors6vectorINtB5_6VectorNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf12FieldNodeRefE11split_firstB1c_.exit.i.i: ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.0.copyload.i.i) ]
  %i.f = extractvalue { ptr, i64 } %i.d, 0, !dbg !691 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !645, !noalias !644
  %.not.i.i = icmp eq ptr %i.f, null, !dbg !636
  br i1 %.not.i.i, label %bb.d, label %bb.e, !dbg !646

bb.d:                                             ; preds = %_RNvMs1_NtNtCsfyRUffk9zcp_6planus7vectors6vectorINtB5_6VectorNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf12FieldNodeRefE11split_firstB1c_.exit.i.i, %_RNvMs1_NtNtCsfyRUffk9zcp_6planus7vectors6vectorINtB5_6VectorNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf12FieldNodeRefE11split_firstB1c_.exit.thread.i.i
  store i64 2, ptr %0, align 8, !dbg !692, !alias.scope !695, !noalias !626
  br label %_RINvYINtNtNtCsfyRUffk9zcp_6planus7vectors9iterators4IterNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf12FieldNodeRefENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB2K_8adapters3map12map_try_foldBS_INtNtB2M_6result6ResultNtBU_9FieldNodeNtNtBa_6errors5ErrorEuINtNtNtB2M_3ops12control_flow11ControlFlowIB5p_B4N_EENCINvMs2_NtB8_6vectorINtB6o_6VectorBS_E6to_vecB4N_E0NCINvXB3Q_INtB3Q_12GenericShuntINtB3O_3MapB3_B6f_EIB4r_NtNtB2M_7convert10InfallibleB52_EEB2E_8try_folduNCINvNvB2E_12try_for_each4callB4N_B64_NcNtB64_5Break0E0B64_E0E0B5o_EB18_.exit, !dbg !698

bb.e:                                             ; preds = %_RNvMs1_NtNtCsfyRUffk9zcp_6planus7vectors6vectorINtB5_6VectorNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf12FieldNodeRefE11split_firstB1c_.exit.i.i
  %i.g = add i64 %.sroa.78.0.copyload.i.i, -1, !dbg !699
  %i.h = add i64 %.sroa.6.0.copyload.i.i, 16, !dbg !700
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload.i.i, i64 16, !dbg !701
  %i.j = add i64 %.sroa.53.0.copyload.i.i, -16, !dbg !703
  %i.k = extractvalue { ptr, i64 } %i.d, 1, !dbg !691
  store ptr %i.i, ptr %1, align 8, !dbg !704, !alias.scope !640, !noalias !622
  store i64 %i.j, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !dbg !704, !alias.scope !640, !noalias !622
  store i64 %i.h, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !dbg !704, !alias.scope !640, !noalias !622
  store i64 %i.g, ptr %.sroa.78.0..sroa_idx.i.i, align 8, !dbg !704, !alias.scope !640, !noalias !622
  %i.l = call { i64, i64 } @_RNvXsbQ_NtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbufNtB6_9FieldNodeINtNtCscgRAwXFJnXP_4core7convert4FromNtB6_12FieldNodeRefE4from(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(16) %i.f, i64 noundef %i.k), !dbg !705, !noalias !720 ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0, !dbg !725
  %i.n = extractvalue { i64, i64 } %i.l, 1, !dbg !725
  store i64 1, ptr %0, align 8, !dbg !726, !alias.scope !732, !noalias !626
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !726
  store i64 %i.m, ptr %.sroa.2.0..sroa_idx.i, align 8, !dbg !726, !alias.scope !732, !noalias !626
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !726
  store i64 %i.n, ptr %.sroa.3.0..sroa_idx.i, align 8, !dbg !726, !alias.scope !732, !noalias !626
  br label %_RINvYINtNtNtCsfyRUffk9zcp_6planus7vectors9iterators4IterNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf12FieldNodeRefENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB2K_8adapters3map12map_try_foldBS_INtNtB2M_6result6ResultNtBU_9FieldNodeNtNtBa_6errors5ErrorEuINtNtNtB2M_3ops12control_flow11ControlFlowIB5p_B4N_EENCINvMs2_NtB8_6vectorINtB6o_6VectorBS_E6to_vecB4N_E0NCINvXB3Q_INtB3Q_12GenericShuntINtB3O_3MapB3_B6f_EIB4r_NtNtB2M_7convert10InfallibleB52_EEB2E_8try_folduNCINvNvB2E_12try_for_each4callB4N_B64_NcNtB64_5Break0E0B64_E0E0B5o_EB18_.exit, !dbg !736

_RINvYINtNtNtCsfyRUffk9zcp_6planus7vectors9iterators4IterNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf12FieldNodeRefENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB2K_8adapters3map12map_try_foldBS_INtNtB2M_6result6ResultNtBU_9FieldNodeNtNtBa_6errors5ErrorEuINtNtNtB2M_3ops12control_flow11ControlFlowIB5p_B4N_EENCINvMs2_NtB8_6vectorINtB6o_6VectorBS_E6to_vecB4N_E0NCINvXB3Q_INtB3Q_12GenericShuntINtB3O_3MapB3_B6f_EIB4r_NtNtB2M_7convert10InfallibleB52_EEB2E_8try_folduNCINvNvB2E_12try_for_each4callB4N_B64_NcNtB64_5Break0E0B64_E0E0B5o_EB18_.exit: ; preds = %bb.d, %bb.e
  ret void, !dbg !737
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtCsfyRUffk9zcp_6planus7vectors9iterators4IterNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf8BlockRefENCINvMs2_NtB12_6vectorINtB3C_6VectorB1M_E6to_vecNtB1O_5BlockE0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtB14_6errors5ErrorEEB4u_8try_folduNCINvNvB4u_12try_for_each4callB4f_INtNtNtBc_3ops12control_flow11ControlFlowB4f_ENcNtB7E_5Break0E0B7E_E0IB7F_B7E_EEB22_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2, ptr noalias nofree noundef readnone align 16 captures(none) dereferenceable(80) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !738 {
bb.a:
  %i.a = alloca [80 x i8], align 16               ; 3 uses
  %i.b = alloca [32 x i8], align 16               ; 3 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !739), !dbg !742
  tail call void @llvm.experimental.noalias.scope.decl(metadata !743), !dbg !742
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !745), !dbg !748
  %.sroa.01.0.copyload.i.i = load ptr, ptr %1, align 8, !dbg !753, !alias.scope !757, !noalias !739 ; 3 uses
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !753 ; 2 uses
  %.sroa.53.0.copyload.i.i = load i64, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !dbg !753, !alias.scope !757, !noalias !739 ; 3 uses
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !753 ; 2 uses
  %.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !dbg !753, !alias.scope !757, !noalias !739 ; 2 uses
  %.sroa.78.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !753 ; 2 uses
  %.sroa.78.0.copyload.i.i = load i64, ptr %.sroa.78.0..sroa_idx.i.i, align 8, !dbg !753, !alias.scope !757, !noalias !739 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !758, !noalias !761
  %i.e = icmp eq i64 %.sroa.78.0.copyload.i.i, 0, !dbg !758
  br i1 %i.e, label %_RNvMs1_NtNtCsfyRUffk9zcp_6planus7vectors6vectorINtB5_6VectorNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf8BlockRefE11split_firstB1c_.exit.thread.i.i, label %bb.b, !dbg !758

_RNvMs1_NtNtCsfyRUffk9zcp_6planus7vectors6vectorINtB5_6VectorNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf8BlockRefE11split_firstB1c_.exit.thread.i.i: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !762, !noalias !761
  br label %bb.d, !dbg !763

bb.b:                                             ; preds = %bb.a
  store ptr %.sroa.01.0.copyload.i.i, ptr %i.c, align 8, !dbg !764, !noalias !765
  %.sroa.53.0..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !764
  store i64 %.sroa.53.0.copyload.i.i, ptr %.sroa.53.0..sroa_idx4.i.i, align 8, !dbg !764, !noalias !765
  %.sroa.6.0..sroa_idx6.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !764
  store i64 %.sroa.6.0.copyload.i.i, ptr %.sroa.6.0..sroa_idx6.i.i, align 8, !dbg !764, !noalias !765
  %i.f = call { ptr, i64 } @_RINvMNtCsfyRUffk9zcp_6planus13slice_helpersNtB3_20SliceWithStartOffset26unchecked_advance_as_arrayKj18_ECsabmDd0H9iBj_19polars_arrow_format(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c, i64 noundef 0), !dbg !768, !noalias !776 ; 2 uses
  %i.g = icmp ult i64 %.sroa.53.0.copyload.i.i, 24, !dbg !778
  br i1 %i.g, label %bb.c, label %_RNvMs1_NtNtCsfyRUffk9zcp_6planus7vectors6vectorINtB5_6VectorNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf8BlockRefE11split_firstB1c_.exit.i.i, !dbg !778

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !791, !noalias !793
  store i8 0, ptr %i.b, align 16, !dbg !791, !noalias !797
  call void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 46, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #7, !dbg !798, !noalias !793
  unreachable

_RNvMs1_NtNtCsfyRUffk9zcp_6planus7vectors6vectorINtB5_6VectorNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf8BlockRefE11split_firstB1c_.exit.i.i: ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.0.copyload.i.i) ]
  %i.h = extractvalue { ptr, i64 } %i.f, 0, !dbg !799 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !762, !noalias !761
  %.not.i.i = icmp eq ptr %i.h, null, !dbg !753
  br i1 %.not.i.i, label %bb.d, label %bb.e, !dbg !763

bb.d:                                             ; preds = %_RNvMs1_NtNtCsfyRUffk9zcp_6planus7vectors6vectorINtB5_6VectorNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf8BlockRefE11split_firstB1c_.exit.i.i, %_RNvMs1_NtNtCsfyRUffk9zcp_6planus7vectors6vectorINtB5_6VectorNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf8BlockRefE11split_firstB1c_.exit.thread.i.i
  store i64 2, ptr %0, align 8, !dbg !800, !alias.scope !803, !noalias !743
  br label %_RINvYINtNtNtCsfyRUffk9zcp_6planus7vectors9iterators4IterNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf8BlockRefENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB2F_8adapters3map12map_try_foldBS_INtNtB2H_6result6ResultNtBU_5BlockNtNtBa_6errors5ErrorEuINtNtNtB2H_3ops12control_flow11ControlFlowIB5g_B4I_EENCINvMs2_NtB8_6vectorINtB6f_6VectorBS_E6to_vecB4I_E0NCINvXB3L_INtB3L_12GenericShuntINtB3J_3MapB3_B66_EIB4m_NtNtB2H_7convert10InfallibleB4T_EEB2z_8try_folduNCINvNvB2z_12try_for_each4callB4I_B5V_NcNtB5V_5Break0E0B5V_E0E0B5f_EB18_.exit, !dbg !806

bb.e:                                             ; preds = %_RNvMs1_NtNtCsfyRUffk9zcp_6planus7vectors6vectorINtB5_6VectorNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf8BlockRefE11split_firstB1c_.exit.i.i
  %i.i = add i64 %.sroa.78.0.copyload.i.i, -1, !dbg !807
  %i.j = add i64 %.sroa.6.0.copyload.i.i, 24, !dbg !808
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload.i.i, i64 24, !dbg !809
  %i.l = add i64 %.sroa.53.0.copyload.i.i, -24, !dbg !811
  %i.m = extractvalue { ptr, i64 } %i.f, 1, !dbg !799
  store ptr %i.k, ptr %1, align 8, !dbg !812, !alias.scope !757, !noalias !739
  store i64 %i.l, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !dbg !812, !alias.scope !757, !noalias !739
  store i64 %i.j, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !dbg !812, !alias.scope !757, !noalias !739
  store i64 %i.i, ptr %.sroa.78.0..sroa_idx.i.i, align 8, !dbg !812, !alias.scope !757, !noalias !739
  call void @_RNvXsr_NtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbufNtB5_5BlockINtNtCscgRAwXFJnXP_4core7convert4FromNtB5_8BlockRefE4from(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(24) %i.h, i64 noundef %i.m), !dbg !813, !noalias !822
  store i64 1, ptr %0, align 8, !dbg !823, !alias.scope !829, !noalias !743
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !823
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !823, !noalias !743
  br label %_RINvYINtNtNtCsfyRUffk9zcp_6planus7vectors9iterators4IterNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf8BlockRefENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB2F_8adapters3map12map_try_foldBS_INtNtB2H_6result6ResultNtBU_5BlockNtNtBa_6errors5ErrorEuINtNtNtB2H_3ops12control_flow11ControlFlowIB5g_B4I_EENCINvMs2_NtB8_6vectorINtB6f_6VectorBS_E6to_vecB4I_E0NCINvXB3L_INtB3L_12GenericShuntINtB3J_3MapB3_B66_EIB4m_NtNtB2H_7convert10InfallibleB4T_EEB2z_8try_folduNCINvNvB2z_12try_for_each4callB4I_B5V_NcNtB5V_5Break0E0B5V_E0E0B5f_EB18_.exit, !dbg !833

_RINvYINtNtNtCsfyRUffk9zcp_6planus7vectors9iterators4IterNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf8BlockRefENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB2F_8adapters3map12map_try_foldBS_INtNtB2H_6result6ResultNtBU_5BlockNtNtBa_6errors5ErrorEuINtNtNtB2H_3ops12control_flow11ControlFlowIB5g_B4I_EENCINvMs2_NtB8_6vectorINtB6f_6VectorBS_E6to_vecB4I_E0NCINvXB3L_INtB3L_12GenericShuntINtB3J_3MapB3_B66_EIB4m_NtNtB2H_7convert10InfallibleB4T_EEB2z_8try_folduNCINvNvB2z_12try_for_each4callB4I_B5V_NcNtB5V_5Break0E0B5V_E0E0B5f_EB18_.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !834
  ret void, !dbg !835
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtCsfyRUffk9zcp_6planus7vectors9iterators4IterNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf9BufferRefENCINvMs2_NtB12_6vectorINtB3D_6VectorB1M_E6to_vecNtB1O_6BufferE0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtB14_6errors5ErrorEEB4w_8try_folduNCINvNvB4w_12try_for_each4callB4g_INtNtNtBc_3ops12control_flow11ControlFlowB4g_ENcNtB7G_5Break0E0B7G_E0IB7H_B7G_EEB22_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2, ptr noalias nofree noundef readnone align 16 captures(none) dereferenceable(80) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !836 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !837), !dbg !840
  tail call void @llvm.experimental.noalias.scope.decl(metadata !841), !dbg !840
  tail call void @llvm.experimental.noalias.scope.decl(metadata !843), !dbg !846
  %.sroa.01.0.copyload.i.i = load ptr, ptr %1, align 8, !dbg !851, !alias.scope !855, !noalias !837 ; 3 uses
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !851 ; 2 uses
  %.sroa.53.0.copyload.i.i = load i64, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !dbg !851, !alias.scope !855, !noalias !837 ; 3 uses
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !851 ; 2 uses
  %.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !dbg !851, !alias.scope !855, !noalias !837 ; 2 uses
  %.sroa.78.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !851 ; 2 uses
  %.sroa.78.0.copyload.i.i = load i64, ptr %.sroa.78.0..sroa_idx.i.i, align 8, !dbg !851, !alias.scope !855, !noalias !837 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !856, !noalias !859
  %i.c = icmp eq i64 %.sroa.78.0.copyload.i.i, 0, !dbg !856
  br i1 %i.c, label %_RNvMs1_NtNtCsfyRUffk9zcp_6planus7vectors6vectorINtB5_6VectorNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf9BufferRefE11split_firstB1c_.exit.thread.i.i, label %bb.b, !dbg !856

_RNvMs1_NtNtCsfyRUffk9zcp_6planus7vectors6vectorINtB5_6VectorNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf9BufferRefE11split_firstB1c_.exit.thread.i.i: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !860, !noalias !859
  br label %bb.d, !dbg !861

bb.b:                                             ; preds = %bb.a
  store ptr %.sroa.01.0.copyload.i.i, ptr %i.b, align 8, !dbg !862, !noalias !863
  %.sroa.53.0..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !862
  store i64 %.sroa.53.0.copyload.i.i, ptr %.sroa.53.0..sroa_idx4.i.i, align 8, !dbg !862, !noalias !863
  %.sroa.6.0..sroa_idx6.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !862
  store i64 %.sroa.6.0.copyload.i.i, ptr %.sroa.6.0..sroa_idx6.i.i, align 8, !dbg !862, !noalias !863
  %i.d = call { ptr, i64 } @_RINvMNtCsfyRUffk9zcp_6planus13slice_helpersNtB3_20SliceWithStartOffset26unchecked_advance_as_arrayKj10_ECsabmDd0H9iBj_19polars_arrow_format(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b, i64 noundef 0), !dbg !866, !noalias !874 ; 2 uses
  %i.e = icmp ult i64 %.sroa.53.0.copyload.i.i, 16, !dbg !876
  br i1 %i.e, label %bb.c, label %_RNvMs1_NtNtCsfyRUffk9zcp_6planus7vectors6vectorINtB5_6VectorNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf9BufferRefE11split_firstB1c_.exit.i.i, !dbg !876

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !889, !noalias !891
  store i8 0, ptr %i.a, align 16, !dbg !889, !noalias !895
  call void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 46, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #7, !dbg !896, !noalias !891
  unreachable

_RNvMs1_NtNtCsfyRUffk9zcp_6planus7vectors6vectorINtB5_6VectorNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf9BufferRefE11split_firstB1c_.exit.i.i: ; preds = %bb.b
end_hunk_0
