Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_realize-4a354b9ff5239a8d.typst_realize.d3c69a4675098945-cgu.0?download=true
inline.NumInlined: 1838
inline.NumDeleted: 1082
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 11
begin_hunk_0
@65 = private unnamed_addr constant [35 x i8] c"crates/typst-realize/src/spaces.rs\00", align 1
@66 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @65, [16 x i8] c"\22\00\00\00\00\00\00\00E\00\00\00\0D\00\00\00" }>, align 8
@67 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @65, [16 x i8] c"\22\00\00\00\00\00\00\00.\00\00\00\19\00\00\00" }>, align 8
@68 = private unnamed_addr constant [55 x i8] c"4tried to find regex match in a non-textual element: \C0\00", align 1
@69 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @65, [16 x i8] c"\22\00\00\00\00\00\00\00x\00\00\00\09\00\00\00" }>, align 8
@70 = private unnamed_addr constant [1 x i8] c"'", align 1
@71 = private unnamed_addr constant [1 x i8] c"\22", align 1
@72 = private unnamed_addr constant [1 x i8] c" ", align 1
@73 = private unnamed_addr constant [1 x i8] c"\0A", align 1
@74 = private unnamed_addr constant [80 x i8] c"/rustc/787af2b8c80638c51a4fc8e44f84e6891f243ec7/library/core/src/slice/index.rs\00", align 1
@75 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @74, [16 x i8] c"O\00\00\00\00\00\00\00\F1\03\00\003\00\00\00" }>, align 8
@76 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @74, [16 x i8] c"O\00\00\00\00\00\00\00\FC\03\00\007\00\00\00" }>, align 8
@_RNvNvNtNtNtCsiL9kQKV5x1F_15portable_atomic3imp9atomic1286x86_6412atomic_store4FUNC = external local_unnamed_addr global { { { ptr } } }
@_RNvNtNtNtCs7lTeezpKIYd_14regex_automata4util4pool5inner7COUNTER = external global { { { i64 } } }
@77 = private unnamed_addr constant [43 x i8] c"regex: thread ID allocation space exhausted", align 1
@78 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @57, [16 x i8] c"j\00\00\00\00\00\00\00^\01\00\00\11\00\00\00" }>, align 8
@79 = private unnamed_addr constant [21 x i8] c"insufficient capacity", align 1
@80 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @79, [8 x i8] c"\15\00\00\00\00\00\00\00" }>, align 8
@81 = private unnamed_addr constant [18 x i8] c"\0FCapacityError: \C0\00", align 1
@82 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @19, [16 x i8] c"\1D\00\00\00\00\00\00\00\F4\00\00\00'\00\00\00" }>, align 8
@_RNvCsieRLDaoupkO_8thin_vec12EMPTY_HEADER = external global { i64, i64 }

; Function Attrs: nonlazybind uwtable
define internal { ptr, i64 } @_RINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtCsdaEETE4DqmE_13typst_library5model4list8ListElemEB2_(ptr noalias nofree noundef align 8 dereferenceable(168) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [240 x i8], align 16              ; 18 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [136 x i8], align 8               ; 12 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 9 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.p = load i64, ptr %i.o, align 8, !noundef !11 ; 8 uses
  %i.q = icmp ugt i64 %1, %i.p
  br i1 %i.q, label %bb.b, label %_RNvMs_CsibhcYuwTAtB_13typst_realizeNtB4_7Grouped3get.exit, !prof !12

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %1, i64 noundef %i.p, i64 noundef %i.p, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #27
  unreachable

_RNvMs_CsibhcYuwTAtB_13typst_realizeNtB4_7Grouped3get.exit: ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %1 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !147)
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %i.p ; 8 uses
  %i.v = icmp samesign eq i64 %1, %i.p
  br i1 %i.v, label %_RNvCsibhcYuwTAtB_13typst_realize11select_span.exit, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.w = getelementptr inbounds nuw i8, ptr %i.y, i64 32 ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.u
  br i1 %i.x, label %_RNvCsibhcYuwTAtB_13typst_realize11select_span.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMs_CsibhcYuwTAtB_13typst_realizeNtB4_7Grouped3get.exit, %bb.c
  %i.y = phi ptr [ %i.w, %bb.c ], [ %i.t, %_RNvMs_CsibhcYuwTAtB_13typst_realizeNtB4_7Grouped3get.exit ] ; 2 uses
  %.val.i.i.i.i.i = load ptr, ptr %i.y, align 8, !alias.scope !147, !noalias !148, !nonnull !11, !align !13, !noundef !11
  %i.z = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !range !14, !noalias !149, !noundef !11 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.aa, 1
  br i1 %.not.i.i.i.i.i.i.i, label %bb.c, label %_RNvCsibhcYuwTAtB_13typst_realize11select_span.exit

_RNvCsibhcYuwTAtB_13typst_realize11select_span.exit: ; preds = %.lr.ph, %bb.c, %_RNvMs_CsibhcYuwTAtB_13typst_realizeNtB4_7Grouped3get.exit
  %i.ab = phi i64 [ 1, %_RNvMs_CsibhcYuwTAtB_13typst_realizeNtB4_7Grouped3get.exit ], [ %i.aa, %.lr.ph ], [ 1, %bb.c ]
  %.not.not.not.i.not192 = icmp samesign eq i64 %1, %i.p
  br i1 %.not.not.not.i.not192, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBW_6styles10StyleChainEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtBY_5model4list8ListElemE0EB3a_.exit, label %.lr.ph194

bb.d:                                             ; preds = %.lr.ph194
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ad, i64 32 ; 2 uses
  %.not.not.not.i.not = icmp eq ptr %i.ac, %i.u
  br i1 %.not.not.not.i.not, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBW_6styles10StyleChainEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtBY_5model4list8ListElemE0EB3a_.exit, label %.lr.ph194

.lr.ph194:                                        ; preds = %_RNvCsibhcYuwTAtB_13typst_realize11select_span.exit, %bb.d
  %i.ad = phi ptr [ %i.ac, %bb.d ], [ %i.t, %_RNvCsibhcYuwTAtB_13typst_realize11select_span.exit ] ; 2 uses
  %.val.i = load ptr, ptr %i.ad, align 8, !noalias !150, !nonnull !11, !align !13, !noundef !11
  %i.ae = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !150, !nonnull !11, !align !13, !noundef !11
  %i.ag = icmp eq ptr %i.af, @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library5model3pars_1__NtB9_12ParbreakElemNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE
  br i1 %i.ag, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBW_6styles10StyleChainEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtBY_5model4list8ListElemE0EB3a_.exit, label %bb.d

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBW_6styles10StyleChainEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtBY_5model4list8ListElemE0EB3a_.exit: ; preds = %.lr.ph194, %bb.d, %_RNvCsibhcYuwTAtB_13typst_realize11select_span.exit
  %.not.not.not.i.not.lcssa = phi i8 [ 1, %_RNvCsibhcYuwTAtB_13typst_realize11select_span.exit ], [ 0, %.lr.ph194 ], [ 1, %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.ah = icmp samesign eq i64 %1, %i.p
  br i1 %i.ah, label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain5trunkINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB1p_6filter6FilterINtNtNtB1t_5slice4iter4IterTRNtNtB8_7content7ContentBX_EENCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtBa_5model4list8ListElemEs_0ENCB3s_s0_0EEB3v_.exit.thread, label %.lr.ph198

bb.e:                                             ; preds = %.lr.ph198
  %i.ai = icmp eq ptr %i.ak, %i.u
  br i1 %i.ai, label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain5trunkINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB1p_6filter6FilterINtNtNtB1t_5slice4iter4IterTRNtNtB8_7content7ContentBX_EENCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtBa_5model4list8ListElemEs_0ENCB3s_s0_0EEB3v_.exit.thread, label %.lr.ph198

.lr.ph198:                                        ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBW_6styles10StyleChainEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtBY_5model4list8ListElemE0EB3a_.exit, %bb.e
  %i.aj = phi ptr [ %i.ak, %bb.e ], [ %i.t, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBW_6styles10StyleChainEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtBY_5model4list8ListElemE0EB3a_.exit ] ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 32 ; 3 uses
  %i.al = load ptr, ptr %i.aj, align 8, !noalias !151, !nonnull !11, !align !13, !noundef !11
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !noalias !151, !nonnull !11, !align !13, !noundef !11
  %i.ao = icmp eq ptr %i.an, @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library5model4lists_1__NtB9_8ListItemNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE
  br i1 %i.ao, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1O_6styles10StyleChainEENCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtB1Q_5model4list8ListElemEs_0ENCB3h_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB3k_.exit.i, label %bb.e

_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1O_6styles10StyleChainEENCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtB1Q_5model4list8ListElemEs_0ENCB3h_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB3k_.exit.i: ; preds = %.lr.ph198
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.sroa.098.0.copyload.i = load ptr, ptr %i.ap, align 8, !noalias !152 ; 2 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !152
  %.sroa.799.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %.sroa.799.0.copyload.i = load ptr, ptr %.sroa.799.0..sroa_idx.i, align 8, !noalias !152 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.098.0.copyload.i, null
  br i1 %.not.i, label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain5trunkINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB1p_6filter6FilterINtNtNtB1t_5slice4iter4IterTRNtNtB8_7content7ContentBX_EENCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtBa_5model4list8ListElemEs_0ENCB3s_s0_0EEB3v_.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1O_6styles10StyleChainEENCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtB1Q_5model4list8ListElemEs_0ENCB3h_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB3k_.exit.i, %bb.f
  %.sroa.6101.0.i = phi ptr [ %.sroa.6101.8.copyload.i, %bb.f ], [ %.sroa.799.0.copyload.i, %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1O_6styles10StyleChainEENCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtB1Q_5model4list8ListElemEs_0ENCB3h_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB3k_.exit.i ] ; 3 uses
  %.sroa.0.012.i.i = phi i64 [ %i.as, %bb.f ], [ 0, %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1O_6styles10StyleChainEENCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtB1Q_5model4list8ListElemEs_0ENCB3h_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB3k_.exit.i ] ; 2 uses
  %.not16.i.i.i = icmp eq ptr %.sroa.6101.0.i, null
  br i1 %.not16.i.i.i, label %.thread.i.i, label %bb.f

.thread.i.i:                                      ; preds = %.lr.ph.i.i
  %i.aq = add i64 %.sroa.0.012.i.i, 1
  br label %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.preheader

bb.f:                                             ; preds = %.lr.ph.i.i
  %.sroa.012.0.copyload.i.i.i = load ptr, ptr %.sroa.6101.0.i, align 8, !noalias !153
  %.sroa.6101.8..sroa.413.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.6101.0.i, i64 16
  %.sroa.6101.8.copyload.i = load ptr, ptr %.sroa.6101.8..sroa.413.0..sroa_idx.i.i.sroa_idx.i, align 8, !noalias !154
  %i.ar = icmp eq ptr %.sroa.012.0.copyload.i.i.i, null
  %i.as = add i64 %.sroa.0.012.i.i, 1             ; 2 uses
  br i1 %i.ar, label %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.preheader, label %.lr.ph.i.i

_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.preheader: ; preds = %bb.f, %.thread.i.i
  %.sroa.0.0.i.ph212 = phi i64 [ %i.aq, %.thread.i.i ], [ %i.as, %bb.f ]
  br label %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i

_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i: ; preds = %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.backedge, %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.preheader
  %.sroa.0102.0.i = phi ptr [ %i.ak, %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.preheader ], [ %i.av, %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.backedge ]
  %.sroa.11.0.i = phi ptr [ %.sroa.799.0.copyload.i, %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.preheader ], [ %.sroa.11.0.i.be, %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.backedge ] ; 8 uses
  %.sroa.8.0.i = phi i64 [ %.sroa.6.0.copyload.i, %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.preheader ], [ %.sroa.8.0.i.be, %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.backedge ] ; 5 uses
  %.sroa.019.0.i = phi ptr [ %.sroa.098.0.copyload.i, %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.preheader ], [ %.sroa.019.0.i.be, %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.backedge ] ; 6 uses
  %.sroa.0.0.i = phi i64 [ %.sroa.0.0.i.ph212, %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.preheader ], [ %.sroa.0.0.i.be, %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.backedge ] ; 10 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i
  %i.at = phi ptr [ %i.av, %bb.h ], [ %.sroa.0102.0.i, %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i ] ; 6 uses
  %i.au = icmp eq ptr %i.at, %i.u
  br i1 %i.au, label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain5trunkINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB1p_6filter6FilterINtNtNtB1t_5slice4iter4IterTRNtNtB8_7content7ContentBX_EENCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtBa_5model4list8ListElemEs_0ENCB3s_s0_0EEB3v_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 32 ; 2 uses
  %i.aw = load ptr, ptr %i.at, align 8, !noalias !155, !nonnull !11, !align !13, !noundef !11
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !noalias !155, !nonnull !11, !align !13, !noundef !11
  %i.az = icmp eq ptr %i.ay, @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library5model4lists_1__NtB9_8ListItemNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE
  br i1 %i.az, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1O_6styles10StyleChainEENCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtB1Q_5model4list8ListElemEs_0ENCB3h_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB3k_.exit83.i, label %bb.g

_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1O_6styles10StyleChainEENCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtB1Q_5model4list8ListElemEs_0ENCB3h_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB3k_.exit83.i: ; preds = %bb.h
  %i.ba = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.sroa.0103.0.copyload.i = load ptr, ptr %i.ba, align 8, !noalias !156 ; 5 uses
  %.sroa.6104.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %.sroa.6104.0.copyload.i = load i64, ptr %.sroa.6104.0..sroa_idx.i, align 8, !noalias !156 ; 4 uses
  %.sroa.7105.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %.sroa.7105.0.copyload.i = load ptr, ptr %.sroa.7105.0..sroa_idx.i, align 8, !noalias !156 ; 7 uses
  %.not73.i = icmp eq ptr %.sroa.0103.0.copyload.i, null
  br i1 %.not73.i, label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain5trunkINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB1p_6filter6FilterINtNtNtB1t_5slice4iter4IterTRNtNtB8_7content7ContentBX_EENCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtBa_5model4list8ListElemEs_0ENCB3s_s0_0EEB3v_.exit, label %.lr.ph.i88.i

.lr.ph.i88.i:                                     ; preds = %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1O_6styles10StyleChainEENCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtB1Q_5model4list8ListElemEs_0ENCB3h_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB3k_.exit83.i, %bb.i
  %.sroa.6108.0.i = phi ptr [ %.sroa.6108.8.copyload.i, %bb.i ], [ %.sroa.7105.0.copyload.i, %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1O_6styles10StyleChainEENCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtB1Q_5model4list8ListElemEs_0ENCB3h_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB3k_.exit83.i ] ; 3 uses
  %.sroa.0.012.i89.i = phi i64 [ %i.bd, %bb.i ], [ 0, %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1O_6styles10StyleChainEENCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtB1Q_5model4list8ListElemEs_0ENCB3h_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB3k_.exit83.i ] ; 2 uses
  %.not16.i.i91.i = icmp eq ptr %.sroa.6108.0.i, null
  br i1 %.not16.i.i91.i, label %.thread.i95.i, label %bb.i

.thread.i95.i:                                    ; preds = %.lr.ph.i88.i
  %i.bb = add i64 %.sroa.0.012.i89.i, 1
  br label %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit96.i

bb.i:                                             ; preds = %.lr.ph.i88.i
  %.sroa.012.0.copyload.i.i92.i = load ptr, ptr %.sroa.6108.0.i, align 8, !noalias !157
  %.sroa.6108.8..sroa.413.0..sroa_idx.i.i93.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.6108.0.i, i64 16
  %.sroa.6108.8.copyload.i = load ptr, ptr %.sroa.6108.8..sroa.413.0..sroa_idx.i.i93.sroa_idx.i, align 8, !noalias !154
  %i.bc = icmp eq ptr %.sroa.012.0.copyload.i.i92.i, null
  %i.bd = add i64 %.sroa.0.012.i89.i, 1           ; 2 uses
  br i1 %i.bc, label %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit96.i, label %.lr.ph.i88.i

_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit96.i: ; preds = %bb.i, %.thread.i95.i
  %.sroa.0.0.lcssa.i94.i = phi i64 [ %i.bb, %.thread.i95.i ], [ %i.bd, %bb.i ] ; 9 uses
  %i.be = icmp ult i64 %.sroa.0.0.lcssa.i94.i, %.sroa.0.0.i
  br i1 %i.be, label %.lr.ph155.preheader.i, label %bb.j

bb.j:                                             ; preds = %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit96.i
  %i.bf = icmp ugt i64 %.sroa.0.0.lcssa.i94.i, %.sroa.0.0.i
  br i1 %i.bf, label %.lr.ph.preheader.i, label %.loopexit.i

.lr.ph155.preheader.i:                            ; preds = %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit96.i
  %i.bg = sub nuw i64 %.sroa.0.0.i, %.sroa.0.0.lcssa.i94.i ; 3 uses
  %.neg243 = add i64 %.sroa.0.0.lcssa.i94.i, 1
  %xtraiter235 = and i64 %i.bg, 1
  %i.bh = icmp eq i64 %.sroa.0.0.i, %.neg243
  br i1 %i.bh, label %.lr.ph155.i.epil.preheader, label %.lr.ph155.preheader.i.new

.lr.ph155.preheader.i.new:                        ; preds = %.lr.ph155.preheader.i
  %unroll_iter241 = and i64 %i.bg, -2
  br label %.lr.ph155.i

.lr.ph.preheader.i:                               ; preds = %bb.j
  %i.bi = sub nuw i64 %.sroa.0.0.lcssa.i94.i, %.sroa.0.0.i ; 3 uses
  %.neg = add i64 %.sroa.0.0.i, 1
  %xtraiter = and i64 %i.bi, 1
  %i.bj = icmp eq i64 %.sroa.0.0.lcssa.i94.i, %.neg
  br i1 %i.bj, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %i.bi, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.o, %.lr.ph.preheader.i.new
  %.sroa.10.0149.i = phi ptr [ %.sroa.7105.0.copyload.i, %.lr.ph.preheader.i.new ], [ %.sroa.10.2.i.1, %bb.o ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %bb.o ]
  %.not74.i = icmp eq ptr %.sroa.10.0149.i, null
  br i1 %.not74.i, label %.lr.ph.i.1, label %bb.m

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %bb.x
  %lcmp.mod236.not = icmp eq i64 %xtraiter235, 0
  br i1 %lcmp.mod236.not, label %.loopexit.i, label %.lr.ph155.i.epil.preheader

.lr.ph155.i.epil.preheader:                       ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph155.preheader.i
  %.sroa.11.2154.i.epil.init = phi ptr [ %.sroa.11.0.i, %.lr.ph155.preheader.i ], [ %.sroa.11.5.i.1, %.loopexit.i.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod240 = trunc i64 %i.bg to i1
  tail call void @llvm.assume(i1 %lcmp.mod240)
  %.not80.i.epil = icmp eq ptr %.sroa.11.2154.i.epil.init, null
  br i1 %.not80.i.epil, label %.loopexit.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph155.i.epil.preheader
  %.sroa.019.0.copyload23.i.epil = load ptr, ptr %.sroa.11.2154.i.epil.init, align 8, !noalias !154
  %.sroa.8.0..sroa.07.0.8.sroa_idx.i.epil = getelementptr inbounds nuw i8, ptr %.sroa.11.2154.i.epil.init, i64 8
  %.sroa.8.0.copyload29.i.epil = load i64, ptr %.sroa.8.0..sroa.07.0.8.sroa_idx.i.epil, align 8, !noalias !154
  %.sroa.11.0..sroa.07.0.8.sroa_idx.i.epil = getelementptr inbounds nuw i8, ptr %.sroa.11.2154.i.epil.init, i64 16
  %.sroa.11.0.copyload35.i.epil = load ptr, ptr %.sroa.11.0..sroa.07.0.8.sroa_idx.i.epil, align 8, !noalias !154
  br label %.loopexit.i

.loopexit.i.loopexit211.unr-lcssa:                ; preds = %bb.o
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.loopexit.i.loopexit211.unr-lcssa, %.lr.ph.preheader.i
  %.sroa.10.0149.i.epil.init = phi ptr [ %.sroa.7105.0.copyload.i, %.lr.ph.preheader.i ], [ %.sroa.10.2.i.1, %.loopexit.i.loopexit211.unr-lcssa ] ; 4 uses
  %lcmp.mod234 = trunc i64 %i.bi to i1
  tail call void @llvm.assume(i1 %lcmp.mod234)
  %.not74.i.epil = icmp eq ptr %.sroa.10.0149.i.epil.init, null
  br i1 %.not74.i.epil, label %.loopexit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.epil.preheader
  %.sroa.049.0.copyload51.i.epil = load ptr, ptr %.sroa.10.0149.i.epil.init, align 8, !noalias !154
  %.sroa.7.0..sroa.09.0.10.sroa_idx.i.epil = getelementptr inbounds nuw i8, ptr %.sroa.10.0149.i.epil.init, i64 8
  %.sroa.7.0.copyload55.i.epil = load i64, ptr %.sroa.7.0..sroa.09.0.10.sroa_idx.i.epil, align 8, !noalias !154
  %.sroa.10.0..sroa.09.0.10.sroa_idx.i.epil = getelementptr inbounds nuw i8, ptr %.sroa.10.0149.i.epil.init, i64 16
  %.sroa.10.0.copyload59.i.epil = load ptr, ptr %.sroa.10.0..sroa.09.0.10.sroa_idx.i.epil, align 8, !noalias !154
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit211.unr-lcssa, %bb.l, %.lr.ph.i.epil.preheader, %.loopexit.i.loopexit.unr-lcssa, %bb.k, %.lr.ph155.i.epil.preheader, %bb.j
  %.sroa.049.1.i = phi ptr [ %.sroa.0103.0.copyload.i, %bb.j ], [ %.sroa.0103.0.copyload.i, %.loopexit.i.loopexit.unr-lcssa ], [ %.sroa.0103.0.copyload.i, %.lr.ph155.i.epil.preheader ], [ %.sroa.0103.0.copyload.i, %bb.k ], [ %.sroa.049.2.i.1, %.loopexit.i.loopexit211.unr-lcssa ], [ %.sroa.049.0.copyload51.i.epil, %bb.l ], [ inttoptr (i64 16 to ptr), %.lr.ph.i.epil.preheader ]
  %.sroa.7.1.i = phi i64 [ %.sroa.6104.0.copyload.i, %bb.j ], [ %.sroa.6104.0.copyload.i, %.loopexit.i.loopexit.unr-lcssa ], [ %.sroa.6104.0.copyload.i, %.lr.ph155.i.epil.preheader ], [ %.sroa.6104.0.copyload.i, %bb.k ], [ %.sroa.7.2.i.1, %.loopexit.i.loopexit211.unr-lcssa ], [ %.sroa.7.0.copyload55.i.epil, %bb.l ], [ 0, %.lr.ph.i.epil.preheader ]
  %.sroa.10.1.i = phi ptr [ %.sroa.7105.0.copyload.i, %bb.j ], [ %.sroa.7105.0.copyload.i, %.loopexit.i.loopexit.unr-lcssa ], [ %.sroa.7105.0.copyload.i, %.lr.ph155.i.epil.preheader ], [ %.sroa.7105.0.copyload.i, %bb.k ], [ %.sroa.10.2.i.1, %.loopexit.i.loopexit211.unr-lcssa ], [ %.sroa.10.0.copyload59.i.epil, %bb.l ], [ null, %.lr.ph.i.epil.preheader ]
  %.sroa.11.1.i = phi ptr [ %.sroa.11.0.i, %bb.j ], [ null, %.lr.ph155.i.epil.preheader ], [ %.sroa.11.5.i.1, %.loopexit.i.loopexit.unr-lcssa ], [ %.sroa.11.0.copyload35.i.epil, %bb.k ], [ %.sroa.11.0.i, %.lr.ph.i.epil.preheader ], [ %.sroa.11.0.i, %bb.l ], [ %.sroa.11.0.i, %.loopexit.i.loopexit211.unr-lcssa ] ; 2 uses
  %.sroa.8.1.i = phi i64 [ %.sroa.8.0.i, %bb.j ], [ 0, %.lr.ph155.i.epil.preheader ], [ %.sroa.8.5.i.1, %.loopexit.i.loopexit.unr-lcssa ], [ %.sroa.8.0.copyload29.i.epil, %bb.k ], [ %.sroa.8.0.i, %.lr.ph.i.epil.preheader ], [ %.sroa.8.0.i, %bb.l ], [ %.sroa.8.0.i, %.loopexit.i.loopexit211.unr-lcssa ] ; 2 uses
  %.sroa.019.1.i = phi ptr [ %.sroa.019.0.i, %bb.j ], [ inttoptr (i64 16 to ptr), %.lr.ph155.i.epil.preheader ], [ %.sroa.019.5.i.1, %.loopexit.i.loopexit.unr-lcssa ], [ %.sroa.019.0.copyload23.i.epil, %bb.k ], [ %.sroa.019.0.i, %.lr.ph.i.epil.preheader ], [ %.sroa.019.0.i, %bb.l ], [ %.sroa.019.0.i, %.loopexit.i.loopexit211.unr-lcssa ] ; 2 uses
  %.sroa.0.1.i = phi i64 [ %.sroa.0.0.i, %bb.j ], [ %.sroa.0.0.lcssa.i94.i, %.loopexit.i.loopexit.unr-lcssa ], [ %.sroa.0.0.lcssa.i94.i, %.lr.ph155.i.epil.preheader ], [ %.sroa.0.0.lcssa.i94.i, %bb.k ], [ %.sroa.0.0.i, %.lr.ph.i.epil.preheader ], [ %.sroa.0.0.i, %bb.l ], [ %.sroa.0.0.i, %.loopexit.i.loopexit211.unr-lcssa ] ; 2 uses
  %.not75159.i = icmp eq i64 %.sroa.0.1.i, 0
  br i1 %.not75159.i, label %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.backedge, label %.lr.ph171.i

_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.backedge: ; preds = %bb.r, %.split.i, %bb.u, %.loopexit.i
  %.sroa.11.0.i.be = phi ptr [ %.sroa.11.1.i, %.loopexit.i ], [ null, %bb.r ], [ %.sroa.11.3163.i, %.split.i ], [ %.sroa.11.4128.i, %bb.u ]
  %.sroa.8.0.i.be = phi i64 [ %.sroa.8.1.i, %.loopexit.i ], [ %.sroa.8.3164.i, %bb.r ], [ %.sroa.8.3164.i, %.split.i ], [ %.sroa.8.4130.i, %bb.u ]
  %.sroa.019.0.i.be = phi ptr [ %.sroa.019.1.i, %.loopexit.i ], [ %.sroa.019.3165.i, %bb.r ], [ %.sroa.019.3165.i, %.split.i ], [ %.sroa.019.4132.i, %bb.u ]
  %.sroa.0.0.i.be = phi i64 [ 0, %.loopexit.i ], [ %.sroa.0.2166.i, %bb.r ], [ %.sroa.0.2166.i, %.split.i ], [ 0, %bb.u ]
  br label %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i

bb.m:                                             ; preds = %.lr.ph.i
  %.sroa.10.0..sroa.09.0.10.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0149.i, i64 16
  %.sroa.10.0.copyload59.i = load ptr, ptr %.sroa.10.0..sroa.09.0.10.sroa_idx.i, align 8, !noalias !154
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.m, %.lr.ph.i
  %.sroa.10.2.i = phi ptr [ %.sroa.10.0.copyload59.i, %bb.m ], [ null, %.lr.ph.i ] ; 4 uses
  %.not74.i.1 = icmp eq ptr %.sroa.10.2.i, null
  br i1 %.not74.i.1, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.1
  %.sroa.049.0.copyload51.i.1 = load ptr, ptr %.sroa.10.2.i, align 8, !noalias !154
  %.sroa.7.0..sroa.09.0.10.sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.10.2.i, i64 8
  %.sroa.7.0.copyload55.i.1 = load i64, ptr %.sroa.7.0..sroa.09.0.10.sroa_idx.i.1, align 8, !noalias !154
  %.sroa.10.0..sroa.09.0.10.sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.10.2.i, i64 16
  %.sroa.10.0.copyload59.i.1 = load ptr, ptr %.sroa.10.0..sroa.09.0.10.sroa_idx.i.1, align 8, !noalias !154
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph.i.1
  %.sroa.049.2.i.1 = phi ptr [ %.sroa.049.0.copyload51.i.1, %bb.n ], [ inttoptr (i64 16 to ptr), %.lr.ph.i.1 ]
  %.sroa.7.2.i.1 = phi i64 [ %.sroa.7.0.copyload55.i.1, %bb.n ], [ 0, %.lr.ph.i.1 ]
  %.sroa.10.2.i.1 = phi ptr [ %.sroa.10.0.copyload59.i.1, %bb.n ], [ null, %.lr.ph.i.1 ] ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.i.loopexit211.unr-lcssa, label %.lr.ph.i

.lr.ph155.i:                                      ; preds = %bb.x, %.lr.ph155.preheader.i.new
  %.sroa.11.2154.i = phi ptr [ %.sroa.11.0.i, %.lr.ph155.preheader.i.new ], [ %.sroa.11.5.i.1, %bb.x ] ; 2 uses
  %niter242 = phi i64 [ 0, %.lr.ph155.preheader.i.new ], [ %niter242.next.1, %bb.x ]
  %.not80.i = icmp eq ptr %.sroa.11.2154.i, null
  br i1 %.not80.i, label %.lr.ph155.i.1, label %bb.v

.lr.ph171.i:                                      ; preds = %.loopexit.i, %bb.u
  %.sroa.0.2166.i = phi i64 [ %i.bp, %bb.u ], [ %.sroa.0.1.i, %.loopexit.i ] ; 3 uses
  %.sroa.019.3165.i = phi ptr [ %.sroa.019.4132.i, %bb.u ], [ %.sroa.019.1.i, %.loopexit.i ] ; 4 uses
  %.sroa.8.3164.i = phi i64 [ %.sroa.8.4130.i, %bb.u ], [ %.sroa.8.1.i, %.loopexit.i ] ; 3 uses
  %.sroa.11.3163.i = phi ptr [ %.sroa.11.4128.i, %bb.u ], [ %.sroa.11.1.i, %.loopexit.i ] ; 7 uses
  %.sroa.10.3162.i = phi ptr [ %.sroa.10.4.i, %bb.u ], [ %.sroa.10.1.i, %.loopexit.i ] ; 6 uses
  %.sroa.7.3161.i = phi i64 [ %.sroa.7.4.i, %bb.u ], [ %.sroa.7.1.i, %.loopexit.i ]
  %.sroa.049.3160.i = phi ptr [ %.sroa.049.4.i, %bb.u ], [ %.sroa.049.1.i, %.loopexit.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.049.3160.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.019.3165.i) ]
  %i.bk = icmp eq ptr %.sroa.049.3160.i, %.sroa.019.3165.i
  %i.bl = icmp eq i64 %.sroa.7.3161.i, %.sroa.8.3164.i
  %i.bm = and i1 %i.bl, %i.bk
  br i1 %i.bm, label %bb.p, label %bb.s

bb.p:                                             ; preds = %.lr.ph171.i
  %.not76.i = icmp eq ptr %.sroa.10.3162.i, null
  %i.bn = icmp eq ptr %.sroa.11.3163.i, null      ; 2 uses
  br i1 %.not76.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  br i1 %i.bn, label %.thread122.i, label %.split.i

bb.r:                                             ; preds = %bb.p
  br i1 %i.bn, label %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.backedge, label %.thread.i

.split.i:                                         ; preds = %bb.q
  %i.bo = icmp eq ptr %.sroa.10.3162.i, %.sroa.11.3163.i
  br i1 %i.bo, label %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.backedge, label %.thread.i

bb.s:                                             ; preds = %.lr.ph171.i
  %.not78.i = icmp eq ptr %.sroa.11.3163.i, null
  br i1 %.not78.i, label %bb.t, label %.thread.i

.thread.i:                                        ; preds = %bb.s, %.split.i, %bb.r
  %.sroa.019.0.copyload22.i = load ptr, ptr %.sroa.11.3163.i, align 8, !noalias !154
  %.sroa.8.0..sroa.017.0.18.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.11.3163.i, i64 8
  %.sroa.8.0.copyload28.i = load i64, ptr %.sroa.8.0..sroa.017.0.18.sroa_idx.i, align 8, !noalias !154
  %.sroa.11.0..sroa.017.0.18.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.11.3163.i, i64 16
  %.sroa.11.0.copyload34.i = load ptr, ptr %.sroa.11.0..sroa.017.0.18.sroa_idx.i, align 8, !noalias !154
  br label %bb.t

bb.t:                                             ; preds = %.thread.i, %bb.s
  %.sroa.11.4.i = phi ptr [ %.sroa.11.0.copyload34.i, %.thread.i ], [ null, %bb.s ] ; 2 uses
  %.sroa.8.4.i = phi i64 [ %.sroa.8.0.copyload28.i, %.thread.i ], [ 0, %bb.s ] ; 2 uses
  %.sroa.019.4.i = phi ptr [ %.sroa.019.0.copyload22.i, %.thread.i ], [ inttoptr (i64 16 to ptr), %bb.s ] ; 2 uses
  %.not79.i = icmp eq ptr %.sroa.10.3162.i, null
  br i1 %.not79.i, label %bb.u, label %.thread122.i

.thread122.i:                                     ; preds = %bb.t, %bb.q
  %.sroa.019.4131.i = phi ptr [ %.sroa.019.4.i, %bb.t ], [ inttoptr (i64 16 to ptr), %bb.q ]
  %.sroa.8.4129.i = phi i64 [ %.sroa.8.4.i, %bb.t ], [ 0, %bb.q ]
  %.sroa.11.4127.i = phi ptr [ %.sroa.11.4.i, %bb.t ], [ null, %bb.q ]
  %.sroa.049.0.copyload52.i = load ptr, ptr %.sroa.10.3162.i, align 8, !noalias !154
  %.sroa.7.0..sroa.047.0.48.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.10.3162.i, i64 8
  %.sroa.7.0.copyload56.i = load i64, ptr %.sroa.7.0..sroa.047.0.48.sroa_idx.i, align 8, !noalias !154
  %.sroa.10.0..sroa.047.0.48.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.10.3162.i, i64 16
  %.sroa.10.0.copyload60.i = load ptr, ptr %.sroa.10.0..sroa.047.0.48.sroa_idx.i, align 8, !noalias !154
  br label %bb.u

bb.u:                                             ; preds = %.thread122.i, %bb.t
  %.sroa.019.4132.i = phi ptr [ %.sroa.019.4131.i, %.thread122.i ], [ %.sroa.019.4.i, %bb.t ] ; 2 uses
  %.sroa.8.4130.i = phi i64 [ %.sroa.8.4129.i, %.thread122.i ], [ %.sroa.8.4.i, %bb.t ] ; 2 uses
  %.sroa.11.4128.i = phi ptr [ %.sroa.11.4127.i, %.thread122.i ], [ %.sroa.11.4.i, %bb.t ] ; 2 uses
  %.sroa.049.4.i = phi ptr [ %.sroa.049.0.copyload52.i, %.thread122.i ], [ inttoptr (i64 16 to ptr), %bb.t ]
  %.sroa.7.4.i = phi i64 [ %.sroa.7.0.copyload56.i, %.thread122.i ], [ 0, %bb.t ]
  %.sroa.10.4.i = phi ptr [ %.sroa.10.0.copyload60.i, %.thread122.i ], [ null, %bb.t ]
  %i.bp = add i64 %.sroa.0.2166.i, -1             ; 2 uses
  %.not75.i = icmp eq i64 %i.bp, 0
  br i1 %.not75.i, label %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.backedge, label %.lr.ph171.i

bb.v:                                             ; preds = %.lr.ph155.i
  %.sroa.11.0..sroa.07.0.8.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.11.2154.i, i64 16
  %.sroa.11.0.copyload35.i = load ptr, ptr %.sroa.11.0..sroa.07.0.8.sroa_idx.i, align 8, !noalias !154
  br label %.lr.ph155.i.1

.lr.ph155.i.1:                                    ; preds = %bb.v, %.lr.ph155.i
  %.sroa.11.5.i = phi ptr [ %.sroa.11.0.copyload35.i, %bb.v ], [ null, %.lr.ph155.i ] ; 4 uses
  %.not80.i.1 = icmp eq ptr %.sroa.11.5.i, null
  br i1 %.not80.i.1, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph155.i.1
  %.sroa.019.0.copyload23.i.1 = load ptr, ptr %.sroa.11.5.i, align 8, !noalias !154
  %.sroa.8.0..sroa.07.0.8.sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.11.5.i, i64 8
  %.sroa.8.0.copyload29.i.1 = load i64, ptr %.sroa.8.0..sroa.07.0.8.sroa_idx.i.1, align 8, !noalias !154
  %.sroa.11.0..sroa.07.0.8.sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.11.5.i, i64 16
  %.sroa.11.0.copyload35.i.1 = load ptr, ptr %.sroa.11.0..sroa.07.0.8.sroa_idx.i.1, align 8, !noalias !154
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.lr.ph155.i.1
  %.sroa.11.5.i.1 = phi ptr [ %.sroa.11.0.copyload35.i.1, %bb.w ], [ null, %.lr.ph155.i.1 ] ; 3 uses
  %.sroa.8.5.i.1 = phi i64 [ %.sroa.8.0.copyload29.i.1, %bb.w ], [ 0, %.lr.ph155.i.1 ]
  %.sroa.019.5.i.1 = phi ptr [ %.sroa.019.0.copyload23.i.1, %bb.w ], [ inttoptr (i64 16 to ptr), %.lr.ph155.i.1 ]
  %niter242.next.1 = add i64 %niter242, 2         ; 2 uses
  %niter242.ncmp.1 = icmp eq i64 %niter242.next.1, %unroll_iter241
  br i1 %niter242.ncmp.1, label %.loopexit.i.loopexit.unr-lcssa, label %.lr.ph155.i

_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain5trunkINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB1p_6filter6FilterINtNtNtB1t_5slice4iter4IterTRNtNtB8_7content7ContentBX_EENCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtBa_5model4list8ListElemEs_0ENCB3s_s0_0EEB3v_.exit: ; preds = %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1O_6styles10StyleChainEENCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtB1Q_5model4list8ListElemEs_0ENCB3h_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB3k_.exit83.i, %bb.g
  %.not = icmp eq ptr %.sroa.019.0.i, null
  br i1 %.not, label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain5trunkINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB1p_6filter6FilterINtNtNtB1t_5slice4iter4IterTRNtNtB8_7content7ContentBX_EENCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtBa_5model4list8ListElemEs_0ENCB3s_s0_0EEB3v_.exit.thread, label %bb.y, !prof !15

bb.y:                                             ; preds = %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain5trunkINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB1p_6filter6FilterINtNtNtB1t_5slice4iter4IterTRNtNtB8_7content7ContentBX_EENCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtBa_5model4list8ListElemEs_0ENCB3s_s0_0EEB3v_.exit
  store ptr %.sroa.019.0.i, ptr %i.n, align 8
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %.sroa.8.0.i, ptr %.sroa.512.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %.sroa.11.0.i, ptr %.sroa.6.0..sroa_idx, align 8
  br label %.lr.ph.i5

.lr.ph.i5:                                        ; preds = %bb.y, %bb.z
  %.sroa.618.0 = phi ptr [ %.sroa.11.0.i, %bb.y ], [ %.sroa.618.8.copyload, %bb.z ] ; 3 uses
  %.sroa.0.012.i = phi i64 [ 0, %bb.y ], [ %i.bs, %bb.z ] ; 2 uses
  %.not16.i.i = icmp eq ptr %.sroa.618.0, null
  br i1 %.not16.i.i, label %.thread.i6, label %bb.z

.thread.i6:                                       ; preds = %.lr.ph.i5
  %i.bq = add i64 %.sroa.0.012.i, 1
  br label %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit

bb.z:                                             ; preds = %.lr.ph.i5
  %.sroa.012.0.copyload.i.i = load ptr, ptr %.sroa.618.0, align 8, !noalias !158
  %.sroa.618.8..sroa.413.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.618.0, i64 16
  %.sroa.618.8.copyload = load ptr, ptr %.sroa.618.8..sroa.413.0..sroa_idx.i.i.sroa_idx, align 8
  %i.br = icmp eq ptr %.sroa.012.0.copyload.i.i, null
  %i.bs = add i64 %.sroa.0.012.i, 1               ; 2 uses
  br i1 %i.br, label %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit, label %.lr.ph.i5

_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.z, %.thread.i6
  %.sroa.0.0.lcssa.i = phi i64 [ %i.bq, %.thread.i6 ], [ %i.bs, %bb.z ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !159
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit, %bb.ad
  %i.bt = phi ptr [ %i.bu, %bb.ad ], [ %i.t, %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit ] ; 3 uses
end_hunk_0
begin_hunk_1_@_RINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtCsdaEETE4DqmE_13typst_library5model4list8ListElemEB2_:bb.a
  %i.dt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28, !noalias !186
  unreachable

bb.ba:                                            ; preds = %bb.au
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(240) %i.do, ptr noundef nonnull align 16 dereferenceable(240) %i.a, i64 240, i1 false), !noalias !186
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !186
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !186
  store ptr %i.do, ptr %i.m, align 8, !alias.scope !185, !noalias !189
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library5model4list1__NtB9_8ListElemNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !185, !noalias !189
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 %i.ab, ptr %.sroa.5.0..sroa_idx.i, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val = load ptr, ptr %i.du, align 8, !nonnull !11, !align !13, !noundef !11
  %i.dv = call fastcc noundef nonnull align 8 ptr @_RNvMCsibhcYuwTAtB_13typst_realizeNtB2_5State5store(ptr nonnull %.val, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.m)
  %i.dw = call fastcc { ptr, i64 } @_RNvCsibhcYuwTAtB_13typst_realize5visit(ptr noalias nofree noundef align 8 dereferenceable(168) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dv, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  ret { ptr, i64 } %i.dw
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, i64 } @_RINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtCsdaEETE4DqmE_13typst_library5model5enum_8EnumElemEB2_(ptr noalias nofree noundef align 8 dereferenceable(168) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 21 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [160 x i8], align 8               ; 15 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 9 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.p = load i64, ptr %i.o, align 8, !noundef !11 ; 8 uses
  %i.q = icmp ugt i64 %1, %i.p
  br i1 %i.q, label %bb.b, label %_RNvMs_CsibhcYuwTAtB_13typst_realizeNtB4_7Grouped3get.exit, !prof !12

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %1, i64 noundef %i.p, i64 noundef %i.p, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #27
  unreachable

_RNvMs_CsibhcYuwTAtB_13typst_realizeNtB4_7Grouped3get.exit: ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %1 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !304)
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %i.p ; 8 uses
  %i.v = icmp samesign eq i64 %1, %i.p
  br i1 %i.v, label %_RNvCsibhcYuwTAtB_13typst_realize11select_span.exit, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.w = getelementptr inbounds nuw i8, ptr %i.y, i64 32 ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.u
  br i1 %i.x, label %_RNvCsibhcYuwTAtB_13typst_realize11select_span.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMs_CsibhcYuwTAtB_13typst_realizeNtB4_7Grouped3get.exit, %bb.c
  %i.y = phi ptr [ %i.w, %bb.c ], [ %i.t, %_RNvMs_CsibhcYuwTAtB_13typst_realizeNtB4_7Grouped3get.exit ] ; 2 uses
  %.val.i.i.i.i.i = load ptr, ptr %i.y, align 8, !alias.scope !304, !noalias !305, !nonnull !11, !align !13, !noundef !11
  %i.z = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !range !14, !noalias !306, !noundef !11 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.aa, 1
  br i1 %.not.i.i.i.i.i.i.i, label %bb.c, label %_RNvCsibhcYuwTAtB_13typst_realize11select_span.exit

_RNvCsibhcYuwTAtB_13typst_realize11select_span.exit: ; preds = %.lr.ph, %bb.c, %_RNvMs_CsibhcYuwTAtB_13typst_realizeNtB4_7Grouped3get.exit
  %i.ab = phi i64 [ 1, %_RNvMs_CsibhcYuwTAtB_13typst_realizeNtB4_7Grouped3get.exit ], [ %i.aa, %.lr.ph ], [ 1, %bb.c ]
  %.not.not.not.i.not203 = icmp samesign eq i64 %1, %i.p
  br i1 %.not.not.not.i.not203, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBW_6styles10StyleChainEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtBY_5model5enum_8EnumElemE0EB3a_.exit, label %.lr.ph205

bb.d:                                             ; preds = %.lr.ph205
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ad, i64 32 ; 2 uses
  %.not.not.not.i.not = icmp eq ptr %i.ac, %i.u
  br i1 %.not.not.not.i.not, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBW_6styles10StyleChainEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtBY_5model5enum_8EnumElemE0EB3a_.exit, label %.lr.ph205

.lr.ph205:                                        ; preds = %_RNvCsibhcYuwTAtB_13typst_realize11select_span.exit, %bb.d
  %i.ad = phi ptr [ %i.ac, %bb.d ], [ %i.t, %_RNvCsibhcYuwTAtB_13typst_realize11select_span.exit ] ; 2 uses
  %.val.i = load ptr, ptr %i.ad, align 8, !noalias !307, !nonnull !11, !align !13, !noundef !11
  %i.ae = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !307, !nonnull !11, !align !13, !noundef !11
  %i.ag = icmp eq ptr %i.af, @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library5model3pars_1__NtB9_12ParbreakElemNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE
  br i1 %i.ag, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBW_6styles10StyleChainEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtBY_5model5enum_8EnumElemE0EB3a_.exit, label %bb.d

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBW_6styles10StyleChainEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtBY_5model5enum_8EnumElemE0EB3a_.exit: ; preds = %.lr.ph205, %bb.d, %_RNvCsibhcYuwTAtB_13typst_realize11select_span.exit
  %.not.not.not.i.not.lcssa = phi i8 [ 1, %_RNvCsibhcYuwTAtB_13typst_realize11select_span.exit ], [ 0, %.lr.ph205 ], [ 1, %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.ah = icmp samesign eq i64 %1, %i.p
  br i1 %i.ah, label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain5trunkINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB1p_6filter6FilterINtNtNtB1t_5slice4iter4IterTRNtNtB8_7content7ContentBX_EENCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtBa_5model5enum_8EnumElemEs_0ENCB3s_s0_0EEB3v_.exit.thread, label %.lr.ph209

bb.e:                                             ; preds = %.lr.ph209
  %i.ai = icmp eq ptr %i.ak, %i.u
  br i1 %i.ai, label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain5trunkINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB1p_6filter6FilterINtNtNtB1t_5slice4iter4IterTRNtNtB8_7content7ContentBX_EENCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtBa_5model5enum_8EnumElemEs_0ENCB3s_s0_0EEB3v_.exit.thread, label %.lr.ph209

.lr.ph209:                                        ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBW_6styles10StyleChainEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtBY_5model5enum_8EnumElemE0EB3a_.exit, %bb.e
  %i.aj = phi ptr [ %i.ak, %bb.e ], [ %i.t, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBW_6styles10StyleChainEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtBY_5model5enum_8EnumElemE0EB3a_.exit ] ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 32 ; 3 uses
  %i.al = load ptr, ptr %i.aj, align 8, !noalias !308, !nonnull !11, !align !13, !noundef !11
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !noalias !308, !nonnull !11, !align !13, !noundef !11
  %i.ao = icmp eq ptr %i.an, @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library5model5enum_s_1__NtB9_8EnumItemNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE
  br i1 %i.ao, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1O_6styles10StyleChainEENCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtB1Q_5model5enum_8EnumElemEs_0ENCB3h_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB3k_.exit.i, label %bb.e

_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1O_6styles10StyleChainEENCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtB1Q_5model5enum_8EnumElemEs_0ENCB3h_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB3k_.exit.i: ; preds = %.lr.ph209
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.sroa.098.0.copyload.i = load ptr, ptr %i.ap, align 8, !noalias !309 ; 2 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !309
  %.sroa.799.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %.sroa.799.0.copyload.i = load ptr, ptr %.sroa.799.0..sroa_idx.i, align 8, !noalias !309 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.098.0.copyload.i, null
  br i1 %.not.i, label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain5trunkINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB1p_6filter6FilterINtNtNtB1t_5slice4iter4IterTRNtNtB8_7content7ContentBX_EENCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtBa_5model5enum_8EnumElemEs_0ENCB3s_s0_0EEB3v_.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1O_6styles10StyleChainEENCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtB1Q_5model5enum_8EnumElemEs_0ENCB3h_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB3k_.exit.i, %bb.f
  %.sroa.6101.0.i = phi ptr [ %.sroa.6101.8.copyload.i, %bb.f ], [ %.sroa.799.0.copyload.i, %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1O_6styles10StyleChainEENCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtB1Q_5model5enum_8EnumElemEs_0ENCB3h_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB3k_.exit.i ] ; 3 uses
  %.sroa.0.012.i.i = phi i64 [ %i.as, %bb.f ], [ 0, %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1O_6styles10StyleChainEENCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtB1Q_5model5enum_8EnumElemEs_0ENCB3h_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB3k_.exit.i ] ; 2 uses
  %.not16.i.i.i = icmp eq ptr %.sroa.6101.0.i, null
  br i1 %.not16.i.i.i, label %.thread.i.i, label %bb.f

.thread.i.i:                                      ; preds = %.lr.ph.i.i
  %i.aq = add i64 %.sroa.0.012.i.i, 1
  br label %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.preheader

bb.f:                                             ; preds = %.lr.ph.i.i
  %.sroa.012.0.copyload.i.i.i = load ptr, ptr %.sroa.6101.0.i, align 8, !noalias !310
  %.sroa.6101.8..sroa.413.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.6101.0.i, i64 16
  %.sroa.6101.8.copyload.i = load ptr, ptr %.sroa.6101.8..sroa.413.0..sroa_idx.i.i.sroa_idx.i, align 8, !noalias !311
  %i.ar = icmp eq ptr %.sroa.012.0.copyload.i.i.i, null
  %i.as = add i64 %.sroa.0.012.i.i, 1             ; 2 uses
  br i1 %i.ar, label %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.preheader, label %.lr.ph.i.i

_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.preheader: ; preds = %bb.f, %.thread.i.i
  %.sroa.0.0.i.ph223 = phi i64 [ %i.aq, %.thread.i.i ], [ %i.as, %bb.f ]
  br label %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i

_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i: ; preds = %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.backedge, %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.preheader
  %.sroa.0102.0.i = phi ptr [ %i.ak, %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.preheader ], [ %i.av, %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.backedge ]
  %.sroa.11.0.i = phi ptr [ %.sroa.799.0.copyload.i, %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.preheader ], [ %.sroa.11.0.i.be, %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.backedge ] ; 8 uses
  %.sroa.8.0.i = phi i64 [ %.sroa.6.0.copyload.i, %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.preheader ], [ %.sroa.8.0.i.be, %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.backedge ] ; 5 uses
  %.sroa.019.0.i = phi ptr [ %.sroa.098.0.copyload.i, %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.preheader ], [ %.sroa.019.0.i.be, %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.backedge ] ; 6 uses
  %.sroa.0.0.i = phi i64 [ %.sroa.0.0.i.ph223, %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.preheader ], [ %.sroa.0.0.i.be, %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.backedge ] ; 10 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i
  %i.at = phi ptr [ %i.av, %bb.h ], [ %.sroa.0102.0.i, %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i ] ; 6 uses
  %i.au = icmp eq ptr %i.at, %i.u
  br i1 %i.au, label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain5trunkINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB1p_6filter6FilterINtNtNtB1t_5slice4iter4IterTRNtNtB8_7content7ContentBX_EENCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtBa_5model5enum_8EnumElemEs_0ENCB3s_s0_0EEB3v_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 32 ; 2 uses
  %i.aw = load ptr, ptr %i.at, align 8, !noalias !312, !nonnull !11, !align !13, !noundef !11
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !noalias !312, !nonnull !11, !align !13, !noundef !11
  %i.az = icmp eq ptr %i.ay, @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library5model5enum_s_1__NtB9_8EnumItemNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE
  br i1 %i.az, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1O_6styles10StyleChainEENCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtB1Q_5model5enum_8EnumElemEs_0ENCB3h_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB3k_.exit83.i, label %bb.g

_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1O_6styles10StyleChainEENCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtB1Q_5model5enum_8EnumElemEs_0ENCB3h_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB3k_.exit83.i: ; preds = %bb.h
  %i.ba = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.sroa.0103.0.copyload.i = load ptr, ptr %i.ba, align 8, !noalias !313 ; 5 uses
  %.sroa.6104.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %.sroa.6104.0.copyload.i = load i64, ptr %.sroa.6104.0..sroa_idx.i, align 8, !noalias !313 ; 4 uses
  %.sroa.7105.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %.sroa.7105.0.copyload.i = load ptr, ptr %.sroa.7105.0..sroa_idx.i, align 8, !noalias !313 ; 7 uses
  %.not73.i = icmp eq ptr %.sroa.0103.0.copyload.i, null
  br i1 %.not73.i, label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain5trunkINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB1p_6filter6FilterINtNtNtB1t_5slice4iter4IterTRNtNtB8_7content7ContentBX_EENCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtBa_5model5enum_8EnumElemEs_0ENCB3s_s0_0EEB3v_.exit, label %.lr.ph.i88.i

.lr.ph.i88.i:                                     ; preds = %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1O_6styles10StyleChainEENCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtB1Q_5model5enum_8EnumElemEs_0ENCB3h_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB3k_.exit83.i, %bb.i
  %.sroa.6108.0.i = phi ptr [ %.sroa.6108.8.copyload.i, %bb.i ], [ %.sroa.7105.0.copyload.i, %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1O_6styles10StyleChainEENCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtB1Q_5model5enum_8EnumElemEs_0ENCB3h_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB3k_.exit83.i ] ; 3 uses
  %.sroa.0.012.i89.i = phi i64 [ %i.bd, %bb.i ], [ 0, %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1O_6styles10StyleChainEENCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtB1Q_5model5enum_8EnumElemEs_0ENCB3h_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB3k_.exit83.i ] ; 2 uses
  %.not16.i.i91.i = icmp eq ptr %.sroa.6108.0.i, null
  br i1 %.not16.i.i91.i, label %.thread.i95.i, label %bb.i

.thread.i95.i:                                    ; preds = %.lr.ph.i88.i
  %i.bb = add i64 %.sroa.0.012.i89.i, 1
  br label %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit96.i

bb.i:                                             ; preds = %.lr.ph.i88.i
  %.sroa.012.0.copyload.i.i92.i = load ptr, ptr %.sroa.6108.0.i, align 8, !noalias !314
  %.sroa.6108.8..sroa.413.0..sroa_idx.i.i93.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.6108.0.i, i64 16
  %.sroa.6108.8.copyload.i = load ptr, ptr %.sroa.6108.8..sroa.413.0..sroa_idx.i.i93.sroa_idx.i, align 8, !noalias !311
  %i.bc = icmp eq ptr %.sroa.012.0.copyload.i.i92.i, null
  %i.bd = add i64 %.sroa.0.012.i89.i, 1           ; 2 uses
  br i1 %i.bc, label %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit96.i, label %.lr.ph.i88.i

_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit96.i: ; preds = %bb.i, %.thread.i95.i
  %.sroa.0.0.lcssa.i94.i = phi i64 [ %i.bb, %.thread.i95.i ], [ %i.bd, %bb.i ] ; 9 uses
  %i.be = icmp ult i64 %.sroa.0.0.lcssa.i94.i, %.sroa.0.0.i
  br i1 %i.be, label %.lr.ph155.preheader.i, label %bb.j

bb.j:                                             ; preds = %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit96.i
  %i.bf = icmp ugt i64 %.sroa.0.0.lcssa.i94.i, %.sroa.0.0.i
  br i1 %i.bf, label %.lr.ph.preheader.i, label %.loopexit.i

.lr.ph155.preheader.i:                            ; preds = %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit96.i
  %i.bg = sub nuw i64 %.sroa.0.0.i, %.sroa.0.0.lcssa.i94.i ; 3 uses
  %.neg254 = add i64 %.sroa.0.0.lcssa.i94.i, 1
  %xtraiter246 = and i64 %i.bg, 1
  %i.bh = icmp eq i64 %.sroa.0.0.i, %.neg254
  br i1 %i.bh, label %.lr.ph155.i.epil.preheader, label %.lr.ph155.preheader.i.new

.lr.ph155.preheader.i.new:                        ; preds = %.lr.ph155.preheader.i
  %unroll_iter252 = and i64 %i.bg, -2
  br label %.lr.ph155.i

.lr.ph.preheader.i:                               ; preds = %bb.j
  %i.bi = sub nuw i64 %.sroa.0.0.lcssa.i94.i, %.sroa.0.0.i ; 3 uses
  %.neg = add i64 %.sroa.0.0.i, 1
  %xtraiter = and i64 %i.bi, 1
  %i.bj = icmp eq i64 %.sroa.0.0.lcssa.i94.i, %.neg
  br i1 %i.bj, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %i.bi, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.o, %.lr.ph.preheader.i.new
  %.sroa.10.0149.i = phi ptr [ %.sroa.7105.0.copyload.i, %.lr.ph.preheader.i.new ], [ %.sroa.10.2.i.1, %bb.o ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %bb.o ]
  %.not74.i = icmp eq ptr %.sroa.10.0149.i, null
  br i1 %.not74.i, label %.lr.ph.i.1, label %bb.m

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %bb.x
  %lcmp.mod247.not = icmp eq i64 %xtraiter246, 0
  br i1 %lcmp.mod247.not, label %.loopexit.i, label %.lr.ph155.i.epil.preheader

.lr.ph155.i.epil.preheader:                       ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph155.preheader.i
  %.sroa.11.2154.i.epil.init = phi ptr [ %.sroa.11.0.i, %.lr.ph155.preheader.i ], [ %.sroa.11.5.i.1, %.loopexit.i.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod251 = trunc i64 %i.bg to i1
  tail call void @llvm.assume(i1 %lcmp.mod251)
  %.not80.i.epil = icmp eq ptr %.sroa.11.2154.i.epil.init, null
  br i1 %.not80.i.epil, label %.loopexit.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph155.i.epil.preheader
  %.sroa.019.0.copyload23.i.epil = load ptr, ptr %.sroa.11.2154.i.epil.init, align 8, !noalias !311
  %.sroa.8.0..sroa.07.0.8.sroa_idx.i.epil = getelementptr inbounds nuw i8, ptr %.sroa.11.2154.i.epil.init, i64 8
  %.sroa.8.0.copyload29.i.epil = load i64, ptr %.sroa.8.0..sroa.07.0.8.sroa_idx.i.epil, align 8, !noalias !311
  %.sroa.11.0..sroa.07.0.8.sroa_idx.i.epil = getelementptr inbounds nuw i8, ptr %.sroa.11.2154.i.epil.init, i64 16
  %.sroa.11.0.copyload35.i.epil = load ptr, ptr %.sroa.11.0..sroa.07.0.8.sroa_idx.i.epil, align 8, !noalias !311
  br label %.loopexit.i

.loopexit.i.loopexit222.unr-lcssa:                ; preds = %bb.o
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.loopexit.i.loopexit222.unr-lcssa, %.lr.ph.preheader.i
  %.sroa.10.0149.i.epil.init = phi ptr [ %.sroa.7105.0.copyload.i, %.lr.ph.preheader.i ], [ %.sroa.10.2.i.1, %.loopexit.i.loopexit222.unr-lcssa ] ; 4 uses
  %lcmp.mod245 = trunc i64 %i.bi to i1
  tail call void @llvm.assume(i1 %lcmp.mod245)
  %.not74.i.epil = icmp eq ptr %.sroa.10.0149.i.epil.init, null
  br i1 %.not74.i.epil, label %.loopexit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.epil.preheader
  %.sroa.049.0.copyload51.i.epil = load ptr, ptr %.sroa.10.0149.i.epil.init, align 8, !noalias !311
  %.sroa.7.0..sroa.09.0.10.sroa_idx.i.epil = getelementptr inbounds nuw i8, ptr %.sroa.10.0149.i.epil.init, i64 8
  %.sroa.7.0.copyload55.i.epil = load i64, ptr %.sroa.7.0..sroa.09.0.10.sroa_idx.i.epil, align 8, !noalias !311
  %.sroa.10.0..sroa.09.0.10.sroa_idx.i.epil = getelementptr inbounds nuw i8, ptr %.sroa.10.0149.i.epil.init, i64 16
  %.sroa.10.0.copyload59.i.epil = load ptr, ptr %.sroa.10.0..sroa.09.0.10.sroa_idx.i.epil, align 8, !noalias !311
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit222.unr-lcssa, %bb.l, %.lr.ph.i.epil.preheader, %.loopexit.i.loopexit.unr-lcssa, %bb.k, %.lr.ph155.i.epil.preheader, %bb.j
  %.sroa.049.1.i = phi ptr [ %.sroa.0103.0.copyload.i, %bb.j ], [ %.sroa.0103.0.copyload.i, %.loopexit.i.loopexit.unr-lcssa ], [ %.sroa.0103.0.copyload.i, %.lr.ph155.i.epil.preheader ], [ %.sroa.0103.0.copyload.i, %bb.k ], [ %.sroa.049.2.i.1, %.loopexit.i.loopexit222.unr-lcssa ], [ %.sroa.049.0.copyload51.i.epil, %bb.l ], [ inttoptr (i64 16 to ptr), %.lr.ph.i.epil.preheader ]
  %.sroa.7.1.i = phi i64 [ %.sroa.6104.0.copyload.i, %bb.j ], [ %.sroa.6104.0.copyload.i, %.loopexit.i.loopexit.unr-lcssa ], [ %.sroa.6104.0.copyload.i, %.lr.ph155.i.epil.preheader ], [ %.sroa.6104.0.copyload.i, %bb.k ], [ %.sroa.7.2.i.1, %.loopexit.i.loopexit222.unr-lcssa ], [ %.sroa.7.0.copyload55.i.epil, %bb.l ], [ 0, %.lr.ph.i.epil.preheader ]
  %.sroa.10.1.i = phi ptr [ %.sroa.7105.0.copyload.i, %bb.j ], [ %.sroa.7105.0.copyload.i, %.loopexit.i.loopexit.unr-lcssa ], [ %.sroa.7105.0.copyload.i, %.lr.ph155.i.epil.preheader ], [ %.sroa.7105.0.copyload.i, %bb.k ], [ %.sroa.10.2.i.1, %.loopexit.i.loopexit222.unr-lcssa ], [ %.sroa.10.0.copyload59.i.epil, %bb.l ], [ null, %.lr.ph.i.epil.preheader ]
  %.sroa.11.1.i = phi ptr [ %.sroa.11.0.i, %bb.j ], [ null, %.lr.ph155.i.epil.preheader ], [ %.sroa.11.5.i.1, %.loopexit.i.loopexit.unr-lcssa ], [ %.sroa.11.0.copyload35.i.epil, %bb.k ], [ %.sroa.11.0.i, %.lr.ph.i.epil.preheader ], [ %.sroa.11.0.i, %bb.l ], [ %.sroa.11.0.i, %.loopexit.i.loopexit222.unr-lcssa ] ; 2 uses
  %.sroa.8.1.i = phi i64 [ %.sroa.8.0.i, %bb.j ], [ 0, %.lr.ph155.i.epil.preheader ], [ %.sroa.8.5.i.1, %.loopexit.i.loopexit.unr-lcssa ], [ %.sroa.8.0.copyload29.i.epil, %bb.k ], [ %.sroa.8.0.i, %.lr.ph.i.epil.preheader ], [ %.sroa.8.0.i, %bb.l ], [ %.sroa.8.0.i, %.loopexit.i.loopexit222.unr-lcssa ] ; 2 uses
  %.sroa.019.1.i = phi ptr [ %.sroa.019.0.i, %bb.j ], [ inttoptr (i64 16 to ptr), %.lr.ph155.i.epil.preheader ], [ %.sroa.019.5.i.1, %.loopexit.i.loopexit.unr-lcssa ], [ %.sroa.019.0.copyload23.i.epil, %bb.k ], [ %.sroa.019.0.i, %.lr.ph.i.epil.preheader ], [ %.sroa.019.0.i, %bb.l ], [ %.sroa.019.0.i, %.loopexit.i.loopexit222.unr-lcssa ] ; 2 uses
  %.sroa.0.1.i = phi i64 [ %.sroa.0.0.i, %bb.j ], [ %.sroa.0.0.lcssa.i94.i, %.loopexit.i.loopexit.unr-lcssa ], [ %.sroa.0.0.lcssa.i94.i, %.lr.ph155.i.epil.preheader ], [ %.sroa.0.0.lcssa.i94.i, %bb.k ], [ %.sroa.0.0.i, %.lr.ph.i.epil.preheader ], [ %.sroa.0.0.i, %bb.l ], [ %.sroa.0.0.i, %.loopexit.i.loopexit222.unr-lcssa ] ; 2 uses
  %.not75159.i = icmp eq i64 %.sroa.0.1.i, 0
  br i1 %.not75159.i, label %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.backedge, label %.lr.ph171.i

_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.backedge: ; preds = %bb.r, %.split.i, %bb.u, %.loopexit.i
  %.sroa.11.0.i.be = phi ptr [ %.sroa.11.1.i, %.loopexit.i ], [ null, %bb.r ], [ %.sroa.11.3163.i, %.split.i ], [ %.sroa.11.4128.i, %bb.u ]
  %.sroa.8.0.i.be = phi i64 [ %.sroa.8.1.i, %.loopexit.i ], [ %.sroa.8.3164.i, %bb.r ], [ %.sroa.8.3164.i, %.split.i ], [ %.sroa.8.4130.i, %bb.u ]
  %.sroa.019.0.i.be = phi ptr [ %.sroa.019.1.i, %.loopexit.i ], [ %.sroa.019.3165.i, %bb.r ], [ %.sroa.019.3165.i, %.split.i ], [ %.sroa.019.4132.i, %bb.u ]
  %.sroa.0.0.i.be = phi i64 [ 0, %.loopexit.i ], [ %.sroa.0.2166.i, %bb.r ], [ %.sroa.0.2166.i, %.split.i ], [ 0, %bb.u ]
  br label %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i

bb.m:                                             ; preds = %.lr.ph.i
  %.sroa.10.0..sroa.09.0.10.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0149.i, i64 16
  %.sroa.10.0.copyload59.i = load ptr, ptr %.sroa.10.0..sroa.09.0.10.sroa_idx.i, align 8, !noalias !311
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.m, %.lr.ph.i
  %.sroa.10.2.i = phi ptr [ %.sroa.10.0.copyload59.i, %bb.m ], [ null, %.lr.ph.i ] ; 4 uses
  %.not74.i.1 = icmp eq ptr %.sroa.10.2.i, null
  br i1 %.not74.i.1, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.1
  %.sroa.049.0.copyload51.i.1 = load ptr, ptr %.sroa.10.2.i, align 8, !noalias !311
  %.sroa.7.0..sroa.09.0.10.sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.10.2.i, i64 8
  %.sroa.7.0.copyload55.i.1 = load i64, ptr %.sroa.7.0..sroa.09.0.10.sroa_idx.i.1, align 8, !noalias !311
  %.sroa.10.0..sroa.09.0.10.sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.10.2.i, i64 16
  %.sroa.10.0.copyload59.i.1 = load ptr, ptr %.sroa.10.0..sroa.09.0.10.sroa_idx.i.1, align 8, !noalias !311
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph.i.1
  %.sroa.049.2.i.1 = phi ptr [ %.sroa.049.0.copyload51.i.1, %bb.n ], [ inttoptr (i64 16 to ptr), %.lr.ph.i.1 ]
  %.sroa.7.2.i.1 = phi i64 [ %.sroa.7.0.copyload55.i.1, %bb.n ], [ 0, %.lr.ph.i.1 ]
  %.sroa.10.2.i.1 = phi ptr [ %.sroa.10.0.copyload59.i.1, %bb.n ], [ null, %.lr.ph.i.1 ] ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.i.loopexit222.unr-lcssa, label %.lr.ph.i

.lr.ph155.i:                                      ; preds = %bb.x, %.lr.ph155.preheader.i.new
  %.sroa.11.2154.i = phi ptr [ %.sroa.11.0.i, %.lr.ph155.preheader.i.new ], [ %.sroa.11.5.i.1, %bb.x ] ; 2 uses
  %niter253 = phi i64 [ 0, %.lr.ph155.preheader.i.new ], [ %niter253.next.1, %bb.x ]
  %.not80.i = icmp eq ptr %.sroa.11.2154.i, null
  br i1 %.not80.i, label %.lr.ph155.i.1, label %bb.v

.lr.ph171.i:                                      ; preds = %.loopexit.i, %bb.u
  %.sroa.0.2166.i = phi i64 [ %i.bp, %bb.u ], [ %.sroa.0.1.i, %.loopexit.i ] ; 3 uses
  %.sroa.019.3165.i = phi ptr [ %.sroa.019.4132.i, %bb.u ], [ %.sroa.019.1.i, %.loopexit.i ] ; 4 uses
  %.sroa.8.3164.i = phi i64 [ %.sroa.8.4130.i, %bb.u ], [ %.sroa.8.1.i, %.loopexit.i ] ; 3 uses
  %.sroa.11.3163.i = phi ptr [ %.sroa.11.4128.i, %bb.u ], [ %.sroa.11.1.i, %.loopexit.i ] ; 7 uses
  %.sroa.10.3162.i = phi ptr [ %.sroa.10.4.i, %bb.u ], [ %.sroa.10.1.i, %.loopexit.i ] ; 6 uses
  %.sroa.7.3161.i = phi i64 [ %.sroa.7.4.i, %bb.u ], [ %.sroa.7.1.i, %.loopexit.i ]
  %.sroa.049.3160.i = phi ptr [ %.sroa.049.4.i, %bb.u ], [ %.sroa.049.1.i, %.loopexit.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.049.3160.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.019.3165.i) ]
  %i.bk = icmp eq ptr %.sroa.049.3160.i, %.sroa.019.3165.i
  %i.bl = icmp eq i64 %.sroa.7.3161.i, %.sroa.8.3164.i
  %i.bm = and i1 %i.bl, %i.bk
  br i1 %i.bm, label %bb.p, label %bb.s

bb.p:                                             ; preds = %.lr.ph171.i
  %.not76.i = icmp eq ptr %.sroa.10.3162.i, null
  %i.bn = icmp eq ptr %.sroa.11.3163.i, null      ; 2 uses
  br i1 %.not76.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  br i1 %i.bn, label %.thread122.i, label %.split.i

bb.r:                                             ; preds = %bb.p
  br i1 %i.bn, label %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.backedge, label %.thread.i

.split.i:                                         ; preds = %bb.q
  %i.bo = icmp eq ptr %.sroa.10.3162.i, %.sroa.11.3163.i
  br i1 %i.bo, label %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.backedge, label %.thread.i

bb.s:                                             ; preds = %.lr.ph171.i
  %.not78.i = icmp eq ptr %.sroa.11.3163.i, null
  br i1 %.not78.i, label %bb.t, label %.thread.i

.thread.i:                                        ; preds = %bb.s, %.split.i, %bb.r
  %.sroa.019.0.copyload22.i = load ptr, ptr %.sroa.11.3163.i, align 8, !noalias !311
  %.sroa.8.0..sroa.017.0.18.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.11.3163.i, i64 8
  %.sroa.8.0.copyload28.i = load i64, ptr %.sroa.8.0..sroa.017.0.18.sroa_idx.i, align 8, !noalias !311
  %.sroa.11.0..sroa.017.0.18.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.11.3163.i, i64 16
  %.sroa.11.0.copyload34.i = load ptr, ptr %.sroa.11.0..sroa.017.0.18.sroa_idx.i, align 8, !noalias !311
  br label %bb.t

bb.t:                                             ; preds = %.thread.i, %bb.s
  %.sroa.11.4.i = phi ptr [ %.sroa.11.0.copyload34.i, %.thread.i ], [ null, %bb.s ] ; 2 uses
  %.sroa.8.4.i = phi i64 [ %.sroa.8.0.copyload28.i, %.thread.i ], [ 0, %bb.s ] ; 2 uses
  %.sroa.019.4.i = phi ptr [ %.sroa.019.0.copyload22.i, %.thread.i ], [ inttoptr (i64 16 to ptr), %bb.s ] ; 2 uses
  %.not79.i = icmp eq ptr %.sroa.10.3162.i, null
  br i1 %.not79.i, label %bb.u, label %.thread122.i

.thread122.i:                                     ; preds = %bb.t, %bb.q
  %.sroa.019.4131.i = phi ptr [ %.sroa.019.4.i, %bb.t ], [ inttoptr (i64 16 to ptr), %bb.q ]
  %.sroa.8.4129.i = phi i64 [ %.sroa.8.4.i, %bb.t ], [ 0, %bb.q ]
  %.sroa.11.4127.i = phi ptr [ %.sroa.11.4.i, %bb.t ], [ null, %bb.q ]
  %.sroa.049.0.copyload52.i = load ptr, ptr %.sroa.10.3162.i, align 8, !noalias !311
  %.sroa.7.0..sroa.047.0.48.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.10.3162.i, i64 8
  %.sroa.7.0.copyload56.i = load i64, ptr %.sroa.7.0..sroa.047.0.48.sroa_idx.i, align 8, !noalias !311
  %.sroa.10.0..sroa.047.0.48.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.10.3162.i, i64 16
  %.sroa.10.0.copyload60.i = load ptr, ptr %.sroa.10.0..sroa.047.0.48.sroa_idx.i, align 8, !noalias !311
  br label %bb.u

bb.u:                                             ; preds = %.thread122.i, %bb.t
  %.sroa.019.4132.i = phi ptr [ %.sroa.019.4131.i, %.thread122.i ], [ %.sroa.019.4.i, %bb.t ] ; 2 uses
  %.sroa.8.4130.i = phi i64 [ %.sroa.8.4129.i, %.thread122.i ], [ %.sroa.8.4.i, %bb.t ] ; 2 uses
  %.sroa.11.4128.i = phi ptr [ %.sroa.11.4127.i, %.thread122.i ], [ %.sroa.11.4.i, %bb.t ] ; 2 uses
  %.sroa.049.4.i = phi ptr [ %.sroa.049.0.copyload52.i, %.thread122.i ], [ inttoptr (i64 16 to ptr), %bb.t ]
  %.sroa.7.4.i = phi i64 [ %.sroa.7.0.copyload56.i, %.thread122.i ], [ 0, %bb.t ]
  %.sroa.10.4.i = phi ptr [ %.sroa.10.0.copyload60.i, %.thread122.i ], [ null, %bb.t ]
  %i.bp = add i64 %.sroa.0.2166.i, -1             ; 2 uses
  %.not75.i = icmp eq i64 %i.bp, 0
  br i1 %.not75.i, label %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.backedge, label %.lr.ph171.i

bb.v:                                             ; preds = %.lr.ph155.i
  %.sroa.11.0..sroa.07.0.8.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.11.2154.i, i64 16
  %.sroa.11.0.copyload35.i = load ptr, ptr %.sroa.11.0..sroa.07.0.8.sroa_idx.i, align 8, !noalias !311
  br label %.lr.ph155.i.1

.lr.ph155.i.1:                                    ; preds = %bb.v, %.lr.ph155.i
  %.sroa.11.5.i = phi ptr [ %.sroa.11.0.copyload35.i, %bb.v ], [ null, %.lr.ph155.i ] ; 4 uses
  %.not80.i.1 = icmp eq ptr %.sroa.11.5.i, null
  br i1 %.not80.i.1, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph155.i.1
  %.sroa.019.0.copyload23.i.1 = load ptr, ptr %.sroa.11.5.i, align 8, !noalias !311
  %.sroa.8.0..sroa.07.0.8.sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.11.5.i, i64 8
  %.sroa.8.0.copyload29.i.1 = load i64, ptr %.sroa.8.0..sroa.07.0.8.sroa_idx.i.1, align 8, !noalias !311
  %.sroa.11.0..sroa.07.0.8.sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.11.5.i, i64 16
  %.sroa.11.0.copyload35.i.1 = load ptr, ptr %.sroa.11.0..sroa.07.0.8.sroa_idx.i.1, align 8, !noalias !311
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.lr.ph155.i.1
  %.sroa.11.5.i.1 = phi ptr [ %.sroa.11.0.copyload35.i.1, %bb.w ], [ null, %.lr.ph155.i.1 ] ; 3 uses
  %.sroa.8.5.i.1 = phi i64 [ %.sroa.8.0.copyload29.i.1, %bb.w ], [ 0, %.lr.ph155.i.1 ]
  %.sroa.019.5.i.1 = phi ptr [ %.sroa.019.0.copyload23.i.1, %bb.w ], [ inttoptr (i64 16 to ptr), %.lr.ph155.i.1 ]
  %niter253.next.1 = add i64 %niter253, 2         ; 2 uses
  %niter253.ncmp.1 = icmp eq i64 %niter253.next.1, %unroll_iter252
  br i1 %niter253.ncmp.1, label %.loopexit.i.loopexit.unr-lcssa, label %.lr.ph155.i

_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain5trunkINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB1p_6filter6FilterINtNtNtB1t_5slice4iter4IterTRNtNtB8_7content7ContentBX_EENCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtBa_5model5enum_8EnumElemEs_0ENCB3s_s0_0EEB3v_.exit: ; preds = %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1O_6styles10StyleChainEENCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtB1Q_5model5enum_8EnumElemEs_0ENCB3h_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB3k_.exit83.i, %bb.g
  %.not = icmp eq ptr %.sroa.019.0.i, null
  br i1 %.not, label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain5trunkINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB1p_6filter6FilterINtNtNtB1t_5slice4iter4IterTRNtNtB8_7content7ContentBX_EENCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtBa_5model5enum_8EnumElemEs_0ENCB3s_s0_0EEB3v_.exit.thread, label %bb.y, !prof !15

bb.y:                                             ; preds = %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain5trunkINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB1p_6filter6FilterINtNtNtB1t_5slice4iter4IterTRNtNtB8_7content7ContentBX_EENCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtBa_5model5enum_8EnumElemEs_0ENCB3s_s0_0EEB3v_.exit
  store ptr %.sroa.019.0.i, ptr %i.n, align 8
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %.sroa.8.0.i, ptr %.sroa.512.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %.sroa.11.0.i, ptr %.sroa.6.0..sroa_idx, align 8
  br label %.lr.ph.i5

.lr.ph.i5:                                        ; preds = %bb.y, %bb.z
  %.sroa.618.0 = phi ptr [ %.sroa.11.0.i, %bb.y ], [ %.sroa.618.8.copyload, %bb.z ] ; 3 uses
  %.sroa.0.012.i = phi i64 [ 0, %bb.y ], [ %i.bs, %bb.z ] ; 2 uses
  %.not16.i.i = icmp eq ptr %.sroa.618.0, null
  br i1 %.not16.i.i, label %.thread.i6, label %bb.z

.thread.i6:                                       ; preds = %.lr.ph.i5
  %i.bq = add i64 %.sroa.0.012.i, 1
  br label %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit

bb.z:                                             ; preds = %.lr.ph.i5
  %.sroa.012.0.copyload.i.i = load ptr, ptr %.sroa.618.0, align 8, !noalias !315
  %.sroa.618.8..sroa.413.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.618.0, i64 16
  %.sroa.618.8.copyload = load ptr, ptr %.sroa.618.8..sroa.413.0..sroa_idx.i.i.sroa_idx, align 8
  %i.br = icmp eq ptr %.sroa.012.0.copyload.i.i, null
  %i.bs = add i64 %.sroa.0.012.i, 1               ; 2 uses
  br i1 %i.br, label %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit, label %.lr.ph.i5

_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.z, %.thread.i6
  %.sroa.0.0.lcssa.i = phi i64 [ %i.bq, %.thread.i6 ], [ %i.bs, %bb.z ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !316
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit, %bb.ad
  %i.bt = phi ptr [ %i.bu, %bb.ad ], [ %i.t, %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit ] ; 3 uses
end_hunk_1
begin_hunk_2_@_RINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtCsdaEETE4DqmE_13typst_library5model5enum_8EnumElemEB2_:bb.a
  %i.dt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28, !noalias !343
  unreachable

bb.ba:                                            ; preds = %bb.au
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.do, ptr noundef nonnull align 16 dereferenceable(256) %i.a, i64 256, i1 false), !noalias !343
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !343
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !343
  store ptr %i.do, ptr %i.m, align 8, !alias.scope !342, !noalias !346
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library5model5enum_1__NtB9_8EnumElemNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !342, !noalias !346
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 %i.ab, ptr %.sroa.5.0..sroa_idx.i, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val = load ptr, ptr %i.du, align 8, !nonnull !11, !align !13, !noundef !11
  %i.dv = call fastcc noundef nonnull align 8 ptr @_RNvMCsibhcYuwTAtB_13typst_realizeNtB2_5State5store(ptr nonnull %.val, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.m)
  %i.dw = call fastcc { ptr, i64 } @_RNvCsibhcYuwTAtB_13typst_realize5visit(ptr noalias nofree noundef align 8 dereferenceable(168) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dv, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  ret { ptr, i64 } %i.dw
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, i64 } @_RINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtCsdaEETE4DqmE_13typst_library5model5terms9TermsElemEB2_(ptr noalias nofree noundef align 8 dereferenceable(168) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [224 x i8], align 16              ; 17 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [128 x i8], align 8               ; 11 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 9 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.p = load i64, ptr %i.o, align 8, !noundef !11 ; 8 uses
  %i.q = icmp ugt i64 %1, %i.p
  br i1 %i.q, label %bb.b, label %_RNvMs_CsibhcYuwTAtB_13typst_realizeNtB4_7Grouped3get.exit, !prof !12

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %1, i64 noundef %i.p, i64 noundef %i.p, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #27
  unreachable

_RNvMs_CsibhcYuwTAtB_13typst_realizeNtB4_7Grouped3get.exit: ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %1 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !461)
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %i.p ; 8 uses
  %i.v = icmp samesign eq i64 %1, %i.p
  br i1 %i.v, label %_RNvCsibhcYuwTAtB_13typst_realize11select_span.exit, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.w = getelementptr inbounds nuw i8, ptr %i.y, i64 32 ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.u
  br i1 %i.x, label %_RNvCsibhcYuwTAtB_13typst_realize11select_span.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMs_CsibhcYuwTAtB_13typst_realizeNtB4_7Grouped3get.exit, %bb.c
  %i.y = phi ptr [ %i.w, %bb.c ], [ %i.t, %_RNvMs_CsibhcYuwTAtB_13typst_realizeNtB4_7Grouped3get.exit ] ; 2 uses
  %.val.i.i.i.i.i = load ptr, ptr %i.y, align 8, !alias.scope !461, !noalias !462, !nonnull !11, !align !13, !noundef !11
  %i.z = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !range !14, !noalias !463, !noundef !11 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.aa, 1
  br i1 %.not.i.i.i.i.i.i.i, label %bb.c, label %_RNvCsibhcYuwTAtB_13typst_realize11select_span.exit

_RNvCsibhcYuwTAtB_13typst_realize11select_span.exit: ; preds = %.lr.ph, %bb.c, %_RNvMs_CsibhcYuwTAtB_13typst_realizeNtB4_7Grouped3get.exit
  %i.ab = phi i64 [ 1, %_RNvMs_CsibhcYuwTAtB_13typst_realizeNtB4_7Grouped3get.exit ], [ %i.aa, %.lr.ph ], [ 1, %bb.c ]
  %.not.not.not.i.not190 = icmp samesign eq i64 %1, %i.p
  br i1 %.not.not.not.i.not190, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBW_6styles10StyleChainEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtBY_5model5terms9TermsElemE0EB3a_.exit, label %.lr.ph192

bb.d:                                             ; preds = %.lr.ph192
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ad, i64 32 ; 2 uses
  %.not.not.not.i.not = icmp eq ptr %i.ac, %i.u
  br i1 %.not.not.not.i.not, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBW_6styles10StyleChainEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtBY_5model5terms9TermsElemE0EB3a_.exit, label %.lr.ph192

.lr.ph192:                                        ; preds = %_RNvCsibhcYuwTAtB_13typst_realize11select_span.exit, %bb.d
  %i.ad = phi ptr [ %i.ac, %bb.d ], [ %i.t, %_RNvCsibhcYuwTAtB_13typst_realize11select_span.exit ] ; 2 uses
  %.val.i = load ptr, ptr %i.ad, align 8, !noalias !464, !nonnull !11, !align !13, !noundef !11
  %i.ae = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !464, !nonnull !11, !align !13, !noundef !11
  %i.ag = icmp eq ptr %i.af, @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library5model3pars_1__NtB9_12ParbreakElemNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE
  br i1 %i.ag, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBW_6styles10StyleChainEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtBY_5model5terms9TermsElemE0EB3a_.exit, label %bb.d

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBW_6styles10StyleChainEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtBY_5model5terms9TermsElemE0EB3a_.exit: ; preds = %.lr.ph192, %bb.d, %_RNvCsibhcYuwTAtB_13typst_realize11select_span.exit
  %.not.not.not.i.not.lcssa = phi i8 [ 1, %_RNvCsibhcYuwTAtB_13typst_realize11select_span.exit ], [ 0, %.lr.ph192 ], [ 1, %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.ah = icmp samesign eq i64 %1, %i.p
  br i1 %i.ah, label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain5trunkINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB1p_6filter6FilterINtNtNtB1t_5slice4iter4IterTRNtNtB8_7content7ContentBX_EENCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtBa_5model5terms9TermsElemEs_0ENCB3s_s0_0EEB3v_.exit.thread, label %.lr.ph196

bb.e:                                             ; preds = %.lr.ph196
  %i.ai = icmp eq ptr %i.ak, %i.u
  br i1 %i.ai, label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain5trunkINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB1p_6filter6FilterINtNtNtB1t_5slice4iter4IterTRNtNtB8_7content7ContentBX_EENCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtBa_5model5terms9TermsElemEs_0ENCB3s_s0_0EEB3v_.exit.thread, label %.lr.ph196

.lr.ph196:                                        ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBW_6styles10StyleChainEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtBY_5model5terms9TermsElemE0EB3a_.exit, %bb.e
  %i.aj = phi ptr [ %i.ak, %bb.e ], [ %i.t, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBW_6styles10StyleChainEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtBY_5model5terms9TermsElemE0EB3a_.exit ] ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 32 ; 3 uses
  %i.al = load ptr, ptr %i.aj, align 8, !noalias !465, !nonnull !11, !align !13, !noundef !11
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !noalias !465, !nonnull !11, !align !13, !noundef !11
  %i.ao = icmp eq ptr %i.an, @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library5model5termss_1__NtB9_8TermItemNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE
  br i1 %i.ao, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1O_6styles10StyleChainEENCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtB1Q_5model5terms9TermsElemEs_0ENCB3h_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB3k_.exit.i, label %bb.e

_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1O_6styles10StyleChainEENCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtB1Q_5model5terms9TermsElemEs_0ENCB3h_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB3k_.exit.i: ; preds = %.lr.ph196
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.sroa.098.0.copyload.i = load ptr, ptr %i.ap, align 8, !noalias !466 ; 2 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !466
  %.sroa.799.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %.sroa.799.0.copyload.i = load ptr, ptr %.sroa.799.0..sroa_idx.i, align 8, !noalias !466 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.098.0.copyload.i, null
  br i1 %.not.i, label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain5trunkINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB1p_6filter6FilterINtNtNtB1t_5slice4iter4IterTRNtNtB8_7content7ContentBX_EENCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtBa_5model5terms9TermsElemEs_0ENCB3s_s0_0EEB3v_.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1O_6styles10StyleChainEENCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtB1Q_5model5terms9TermsElemEs_0ENCB3h_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB3k_.exit.i, %bb.f
  %.sroa.6101.0.i = phi ptr [ %.sroa.6101.8.copyload.i, %bb.f ], [ %.sroa.799.0.copyload.i, %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1O_6styles10StyleChainEENCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtB1Q_5model5terms9TermsElemEs_0ENCB3h_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB3k_.exit.i ] ; 3 uses
  %.sroa.0.012.i.i = phi i64 [ %i.as, %bb.f ], [ 0, %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1O_6styles10StyleChainEENCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtB1Q_5model5terms9TermsElemEs_0ENCB3h_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB3k_.exit.i ] ; 2 uses
  %.not16.i.i.i = icmp eq ptr %.sroa.6101.0.i, null
  br i1 %.not16.i.i.i, label %.thread.i.i, label %bb.f

.thread.i.i:                                      ; preds = %.lr.ph.i.i
  %i.aq = add i64 %.sroa.0.012.i.i, 1
  br label %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.preheader

bb.f:                                             ; preds = %.lr.ph.i.i
  %.sroa.012.0.copyload.i.i.i = load ptr, ptr %.sroa.6101.0.i, align 8, !noalias !467
  %.sroa.6101.8..sroa.413.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.6101.0.i, i64 16
  %.sroa.6101.8.copyload.i = load ptr, ptr %.sroa.6101.8..sroa.413.0..sroa_idx.i.i.sroa_idx.i, align 8, !noalias !468
  %i.ar = icmp eq ptr %.sroa.012.0.copyload.i.i.i, null
  %i.as = add i64 %.sroa.0.012.i.i, 1             ; 2 uses
  br i1 %i.ar, label %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.preheader, label %.lr.ph.i.i

_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.preheader: ; preds = %bb.f, %.thread.i.i
  %.sroa.0.0.i.ph210 = phi i64 [ %i.aq, %.thread.i.i ], [ %i.as, %bb.f ]
  br label %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i

_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i: ; preds = %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.backedge, %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.preheader
  %.sroa.0102.0.i = phi ptr [ %i.ak, %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.preheader ], [ %i.av, %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.backedge ]
  %.sroa.11.0.i = phi ptr [ %.sroa.799.0.copyload.i, %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.preheader ], [ %.sroa.11.0.i.be, %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.backedge ] ; 8 uses
  %.sroa.8.0.i = phi i64 [ %.sroa.6.0.copyload.i, %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.preheader ], [ %.sroa.8.0.i.be, %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.backedge ] ; 5 uses
  %.sroa.019.0.i = phi ptr [ %.sroa.098.0.copyload.i, %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.preheader ], [ %.sroa.019.0.i.be, %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.backedge ] ; 6 uses
  %.sroa.0.0.i = phi i64 [ %.sroa.0.0.i.ph210, %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.preheader ], [ %.sroa.0.0.i.be, %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.backedge ] ; 10 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i
  %i.at = phi ptr [ %i.av, %bb.h ], [ %.sroa.0102.0.i, %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i ] ; 6 uses
  %i.au = icmp eq ptr %i.at, %i.u
  br i1 %i.au, label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain5trunkINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB1p_6filter6FilterINtNtNtB1t_5slice4iter4IterTRNtNtB8_7content7ContentBX_EENCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtBa_5model5terms9TermsElemEs_0ENCB3s_s0_0EEB3v_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 32 ; 2 uses
  %i.aw = load ptr, ptr %i.at, align 8, !noalias !469, !nonnull !11, !align !13, !noundef !11
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !noalias !469, !nonnull !11, !align !13, !noundef !11
  %i.az = icmp eq ptr %i.ay, @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library5model5termss_1__NtB9_8TermItemNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE
  br i1 %i.az, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1O_6styles10StyleChainEENCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtB1Q_5model5terms9TermsElemEs_0ENCB3h_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB3k_.exit83.i, label %bb.g

_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1O_6styles10StyleChainEENCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtB1Q_5model5terms9TermsElemEs_0ENCB3h_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB3k_.exit83.i: ; preds = %bb.h
  %i.ba = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.sroa.0103.0.copyload.i = load ptr, ptr %i.ba, align 8, !noalias !470 ; 5 uses
  %.sroa.6104.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %.sroa.6104.0.copyload.i = load i64, ptr %.sroa.6104.0..sroa_idx.i, align 8, !noalias !470 ; 4 uses
  %.sroa.7105.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %.sroa.7105.0.copyload.i = load ptr, ptr %.sroa.7105.0..sroa_idx.i, align 8, !noalias !470 ; 7 uses
  %.not73.i = icmp eq ptr %.sroa.0103.0.copyload.i, null
  br i1 %.not73.i, label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain5trunkINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB1p_6filter6FilterINtNtNtB1t_5slice4iter4IterTRNtNtB8_7content7ContentBX_EENCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtBa_5model5terms9TermsElemEs_0ENCB3s_s0_0EEB3v_.exit, label %.lr.ph.i88.i

.lr.ph.i88.i:                                     ; preds = %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1O_6styles10StyleChainEENCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtB1Q_5model5terms9TermsElemEs_0ENCB3h_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB3k_.exit83.i, %bb.i
  %.sroa.6108.0.i = phi ptr [ %.sroa.6108.8.copyload.i, %bb.i ], [ %.sroa.7105.0.copyload.i, %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1O_6styles10StyleChainEENCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtB1Q_5model5terms9TermsElemEs_0ENCB3h_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB3k_.exit83.i ] ; 3 uses
  %.sroa.0.012.i89.i = phi i64 [ %i.bd, %bb.i ], [ 0, %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1O_6styles10StyleChainEENCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtB1Q_5model5terms9TermsElemEs_0ENCB3h_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB3k_.exit83.i ] ; 2 uses
  %.not16.i.i91.i = icmp eq ptr %.sroa.6108.0.i, null
  br i1 %.not16.i.i91.i, label %.thread.i95.i, label %bb.i

.thread.i95.i:                                    ; preds = %.lr.ph.i88.i
  %i.bb = add i64 %.sroa.0.012.i89.i, 1
  br label %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit96.i

bb.i:                                             ; preds = %.lr.ph.i88.i
  %.sroa.012.0.copyload.i.i92.i = load ptr, ptr %.sroa.6108.0.i, align 8, !noalias !471
  %.sroa.6108.8..sroa.413.0..sroa_idx.i.i93.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.6108.0.i, i64 16
  %.sroa.6108.8.copyload.i = load ptr, ptr %.sroa.6108.8..sroa.413.0..sroa_idx.i.i93.sroa_idx.i, align 8, !noalias !468
  %i.bc = icmp eq ptr %.sroa.012.0.copyload.i.i92.i, null
  %i.bd = add i64 %.sroa.0.012.i89.i, 1           ; 2 uses
  br i1 %i.bc, label %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit96.i, label %.lr.ph.i88.i

_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit96.i: ; preds = %bb.i, %.thread.i95.i
  %.sroa.0.0.lcssa.i94.i = phi i64 [ %i.bb, %.thread.i95.i ], [ %i.bd, %bb.i ] ; 9 uses
  %i.be = icmp ult i64 %.sroa.0.0.lcssa.i94.i, %.sroa.0.0.i
  br i1 %i.be, label %.lr.ph155.preheader.i, label %bb.j

bb.j:                                             ; preds = %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit96.i
  %i.bf = icmp ugt i64 %.sroa.0.0.lcssa.i94.i, %.sroa.0.0.i
  br i1 %i.bf, label %.lr.ph.preheader.i, label %.loopexit.i

.lr.ph155.preheader.i:                            ; preds = %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit96.i
  %i.bg = sub nuw i64 %.sroa.0.0.i, %.sroa.0.0.lcssa.i94.i ; 3 uses
  %.neg241 = add i64 %.sroa.0.0.lcssa.i94.i, 1
  %xtraiter233 = and i64 %i.bg, 1
  %i.bh = icmp eq i64 %.sroa.0.0.i, %.neg241
  br i1 %i.bh, label %.lr.ph155.i.epil.preheader, label %.lr.ph155.preheader.i.new

.lr.ph155.preheader.i.new:                        ; preds = %.lr.ph155.preheader.i
  %unroll_iter239 = and i64 %i.bg, -2
  br label %.lr.ph155.i

.lr.ph.preheader.i:                               ; preds = %bb.j
  %i.bi = sub nuw i64 %.sroa.0.0.lcssa.i94.i, %.sroa.0.0.i ; 3 uses
  %.neg = add i64 %.sroa.0.0.i, 1
  %xtraiter = and i64 %i.bi, 1
  %i.bj = icmp eq i64 %.sroa.0.0.lcssa.i94.i, %.neg
  br i1 %i.bj, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %i.bi, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.o, %.lr.ph.preheader.i.new
  %.sroa.10.0149.i = phi ptr [ %.sroa.7105.0.copyload.i, %.lr.ph.preheader.i.new ], [ %.sroa.10.2.i.1, %bb.o ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %bb.o ]
  %.not74.i = icmp eq ptr %.sroa.10.0149.i, null
  br i1 %.not74.i, label %.lr.ph.i.1, label %bb.m

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %bb.x
  %lcmp.mod234.not = icmp eq i64 %xtraiter233, 0
  br i1 %lcmp.mod234.not, label %.loopexit.i, label %.lr.ph155.i.epil.preheader

.lr.ph155.i.epil.preheader:                       ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph155.preheader.i
  %.sroa.11.2154.i.epil.init = phi ptr [ %.sroa.11.0.i, %.lr.ph155.preheader.i ], [ %.sroa.11.5.i.1, %.loopexit.i.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod238 = trunc i64 %i.bg to i1
  tail call void @llvm.assume(i1 %lcmp.mod238)
  %.not80.i.epil = icmp eq ptr %.sroa.11.2154.i.epil.init, null
  br i1 %.not80.i.epil, label %.loopexit.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph155.i.epil.preheader
  %.sroa.019.0.copyload23.i.epil = load ptr, ptr %.sroa.11.2154.i.epil.init, align 8, !noalias !468
  %.sroa.8.0..sroa.07.0.8.sroa_idx.i.epil = getelementptr inbounds nuw i8, ptr %.sroa.11.2154.i.epil.init, i64 8
  %.sroa.8.0.copyload29.i.epil = load i64, ptr %.sroa.8.0..sroa.07.0.8.sroa_idx.i.epil, align 8, !noalias !468
  %.sroa.11.0..sroa.07.0.8.sroa_idx.i.epil = getelementptr inbounds nuw i8, ptr %.sroa.11.2154.i.epil.init, i64 16
  %.sroa.11.0.copyload35.i.epil = load ptr, ptr %.sroa.11.0..sroa.07.0.8.sroa_idx.i.epil, align 8, !noalias !468
  br label %.loopexit.i

.loopexit.i.loopexit209.unr-lcssa:                ; preds = %bb.o
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.loopexit.i.loopexit209.unr-lcssa, %.lr.ph.preheader.i
  %.sroa.10.0149.i.epil.init = phi ptr [ %.sroa.7105.0.copyload.i, %.lr.ph.preheader.i ], [ %.sroa.10.2.i.1, %.loopexit.i.loopexit209.unr-lcssa ] ; 4 uses
  %lcmp.mod232 = trunc i64 %i.bi to i1
  tail call void @llvm.assume(i1 %lcmp.mod232)
  %.not74.i.epil = icmp eq ptr %.sroa.10.0149.i.epil.init, null
  br i1 %.not74.i.epil, label %.loopexit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.epil.preheader
  %.sroa.049.0.copyload51.i.epil = load ptr, ptr %.sroa.10.0149.i.epil.init, align 8, !noalias !468
  %.sroa.7.0..sroa.09.0.10.sroa_idx.i.epil = getelementptr inbounds nuw i8, ptr %.sroa.10.0149.i.epil.init, i64 8
  %.sroa.7.0.copyload55.i.epil = load i64, ptr %.sroa.7.0..sroa.09.0.10.sroa_idx.i.epil, align 8, !noalias !468
  %.sroa.10.0..sroa.09.0.10.sroa_idx.i.epil = getelementptr inbounds nuw i8, ptr %.sroa.10.0149.i.epil.init, i64 16
  %.sroa.10.0.copyload59.i.epil = load ptr, ptr %.sroa.10.0..sroa.09.0.10.sroa_idx.i.epil, align 8, !noalias !468
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit209.unr-lcssa, %bb.l, %.lr.ph.i.epil.preheader, %.loopexit.i.loopexit.unr-lcssa, %bb.k, %.lr.ph155.i.epil.preheader, %bb.j
  %.sroa.049.1.i = phi ptr [ %.sroa.0103.0.copyload.i, %bb.j ], [ %.sroa.0103.0.copyload.i, %.loopexit.i.loopexit.unr-lcssa ], [ %.sroa.0103.0.copyload.i, %.lr.ph155.i.epil.preheader ], [ %.sroa.0103.0.copyload.i, %bb.k ], [ %.sroa.049.2.i.1, %.loopexit.i.loopexit209.unr-lcssa ], [ %.sroa.049.0.copyload51.i.epil, %bb.l ], [ inttoptr (i64 16 to ptr), %.lr.ph.i.epil.preheader ]
  %.sroa.7.1.i = phi i64 [ %.sroa.6104.0.copyload.i, %bb.j ], [ %.sroa.6104.0.copyload.i, %.loopexit.i.loopexit.unr-lcssa ], [ %.sroa.6104.0.copyload.i, %.lr.ph155.i.epil.preheader ], [ %.sroa.6104.0.copyload.i, %bb.k ], [ %.sroa.7.2.i.1, %.loopexit.i.loopexit209.unr-lcssa ], [ %.sroa.7.0.copyload55.i.epil, %bb.l ], [ 0, %.lr.ph.i.epil.preheader ]
  %.sroa.10.1.i = phi ptr [ %.sroa.7105.0.copyload.i, %bb.j ], [ %.sroa.7105.0.copyload.i, %.loopexit.i.loopexit.unr-lcssa ], [ %.sroa.7105.0.copyload.i, %.lr.ph155.i.epil.preheader ], [ %.sroa.7105.0.copyload.i, %bb.k ], [ %.sroa.10.2.i.1, %.loopexit.i.loopexit209.unr-lcssa ], [ %.sroa.10.0.copyload59.i.epil, %bb.l ], [ null, %.lr.ph.i.epil.preheader ]
  %.sroa.11.1.i = phi ptr [ %.sroa.11.0.i, %bb.j ], [ null, %.lr.ph155.i.epil.preheader ], [ %.sroa.11.5.i.1, %.loopexit.i.loopexit.unr-lcssa ], [ %.sroa.11.0.copyload35.i.epil, %bb.k ], [ %.sroa.11.0.i, %.lr.ph.i.epil.preheader ], [ %.sroa.11.0.i, %bb.l ], [ %.sroa.11.0.i, %.loopexit.i.loopexit209.unr-lcssa ] ; 2 uses
  %.sroa.8.1.i = phi i64 [ %.sroa.8.0.i, %bb.j ], [ 0, %.lr.ph155.i.epil.preheader ], [ %.sroa.8.5.i.1, %.loopexit.i.loopexit.unr-lcssa ], [ %.sroa.8.0.copyload29.i.epil, %bb.k ], [ %.sroa.8.0.i, %.lr.ph.i.epil.preheader ], [ %.sroa.8.0.i, %bb.l ], [ %.sroa.8.0.i, %.loopexit.i.loopexit209.unr-lcssa ] ; 2 uses
  %.sroa.019.1.i = phi ptr [ %.sroa.019.0.i, %bb.j ], [ inttoptr (i64 16 to ptr), %.lr.ph155.i.epil.preheader ], [ %.sroa.019.5.i.1, %.loopexit.i.loopexit.unr-lcssa ], [ %.sroa.019.0.copyload23.i.epil, %bb.k ], [ %.sroa.019.0.i, %.lr.ph.i.epil.preheader ], [ %.sroa.019.0.i, %bb.l ], [ %.sroa.019.0.i, %.loopexit.i.loopexit209.unr-lcssa ] ; 2 uses
  %.sroa.0.1.i = phi i64 [ %.sroa.0.0.i, %bb.j ], [ %.sroa.0.0.lcssa.i94.i, %.loopexit.i.loopexit.unr-lcssa ], [ %.sroa.0.0.lcssa.i94.i, %.lr.ph155.i.epil.preheader ], [ %.sroa.0.0.lcssa.i94.i, %bb.k ], [ %.sroa.0.0.i, %.lr.ph.i.epil.preheader ], [ %.sroa.0.0.i, %bb.l ], [ %.sroa.0.0.i, %.loopexit.i.loopexit209.unr-lcssa ] ; 2 uses
  %.not75159.i = icmp eq i64 %.sroa.0.1.i, 0
  br i1 %.not75159.i, label %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.backedge, label %.lr.ph171.i

_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.backedge: ; preds = %bb.r, %.split.i, %bb.u, %.loopexit.i
  %.sroa.11.0.i.be = phi ptr [ %.sroa.11.1.i, %.loopexit.i ], [ null, %bb.r ], [ %.sroa.11.3163.i, %.split.i ], [ %.sroa.11.4128.i, %bb.u ]
  %.sroa.8.0.i.be = phi i64 [ %.sroa.8.1.i, %.loopexit.i ], [ %.sroa.8.3164.i, %bb.r ], [ %.sroa.8.3164.i, %.split.i ], [ %.sroa.8.4130.i, %bb.u ]
  %.sroa.019.0.i.be = phi ptr [ %.sroa.019.1.i, %.loopexit.i ], [ %.sroa.019.3165.i, %bb.r ], [ %.sroa.019.3165.i, %.split.i ], [ %.sroa.019.4132.i, %bb.u ]
  %.sroa.0.0.i.be = phi i64 [ 0, %.loopexit.i ], [ %.sroa.0.2166.i, %bb.r ], [ %.sroa.0.2166.i, %.split.i ], [ 0, %bb.u ]
  br label %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i

bb.m:                                             ; preds = %.lr.ph.i
  %.sroa.10.0..sroa.09.0.10.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0149.i, i64 16
  %.sroa.10.0.copyload59.i = load ptr, ptr %.sroa.10.0..sroa.09.0.10.sroa_idx.i, align 8, !noalias !468
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.m, %.lr.ph.i
  %.sroa.10.2.i = phi ptr [ %.sroa.10.0.copyload59.i, %bb.m ], [ null, %.lr.ph.i ] ; 4 uses
  %.not74.i.1 = icmp eq ptr %.sroa.10.2.i, null
  br i1 %.not74.i.1, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.1
  %.sroa.049.0.copyload51.i.1 = load ptr, ptr %.sroa.10.2.i, align 8, !noalias !468
  %.sroa.7.0..sroa.09.0.10.sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.10.2.i, i64 8
  %.sroa.7.0.copyload55.i.1 = load i64, ptr %.sroa.7.0..sroa.09.0.10.sroa_idx.i.1, align 8, !noalias !468
  %.sroa.10.0..sroa.09.0.10.sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.10.2.i, i64 16
  %.sroa.10.0.copyload59.i.1 = load ptr, ptr %.sroa.10.0..sroa.09.0.10.sroa_idx.i.1, align 8, !noalias !468
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph.i.1
  %.sroa.049.2.i.1 = phi ptr [ %.sroa.049.0.copyload51.i.1, %bb.n ], [ inttoptr (i64 16 to ptr), %.lr.ph.i.1 ]
  %.sroa.7.2.i.1 = phi i64 [ %.sroa.7.0.copyload55.i.1, %bb.n ], [ 0, %.lr.ph.i.1 ]
  %.sroa.10.2.i.1 = phi ptr [ %.sroa.10.0.copyload59.i.1, %bb.n ], [ null, %.lr.ph.i.1 ] ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.i.loopexit209.unr-lcssa, label %.lr.ph.i

.lr.ph155.i:                                      ; preds = %bb.x, %.lr.ph155.preheader.i.new
  %.sroa.11.2154.i = phi ptr [ %.sroa.11.0.i, %.lr.ph155.preheader.i.new ], [ %.sroa.11.5.i.1, %bb.x ] ; 2 uses
  %niter240 = phi i64 [ 0, %.lr.ph155.preheader.i.new ], [ %niter240.next.1, %bb.x ]
  %.not80.i = icmp eq ptr %.sroa.11.2154.i, null
  br i1 %.not80.i, label %.lr.ph155.i.1, label %bb.v

.lr.ph171.i:                                      ; preds = %.loopexit.i, %bb.u
  %.sroa.0.2166.i = phi i64 [ %i.bp, %bb.u ], [ %.sroa.0.1.i, %.loopexit.i ] ; 3 uses
  %.sroa.019.3165.i = phi ptr [ %.sroa.019.4132.i, %bb.u ], [ %.sroa.019.1.i, %.loopexit.i ] ; 4 uses
  %.sroa.8.3164.i = phi i64 [ %.sroa.8.4130.i, %bb.u ], [ %.sroa.8.1.i, %.loopexit.i ] ; 3 uses
  %.sroa.11.3163.i = phi ptr [ %.sroa.11.4128.i, %bb.u ], [ %.sroa.11.1.i, %.loopexit.i ] ; 7 uses
  %.sroa.10.3162.i = phi ptr [ %.sroa.10.4.i, %bb.u ], [ %.sroa.10.1.i, %.loopexit.i ] ; 6 uses
  %.sroa.7.3161.i = phi i64 [ %.sroa.7.4.i, %bb.u ], [ %.sroa.7.1.i, %.loopexit.i ]
  %.sroa.049.3160.i = phi ptr [ %.sroa.049.4.i, %bb.u ], [ %.sroa.049.1.i, %.loopexit.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.049.3160.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.019.3165.i) ]
  %i.bk = icmp eq ptr %.sroa.049.3160.i, %.sroa.019.3165.i
  %i.bl = icmp eq i64 %.sroa.7.3161.i, %.sroa.8.3164.i
  %i.bm = and i1 %i.bl, %i.bk
  br i1 %i.bm, label %bb.p, label %bb.s

bb.p:                                             ; preds = %.lr.ph171.i
  %.not76.i = icmp eq ptr %.sroa.10.3162.i, null
  %i.bn = icmp eq ptr %.sroa.11.3163.i, null      ; 2 uses
  br i1 %.not76.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  br i1 %i.bn, label %.thread122.i, label %.split.i

bb.r:                                             ; preds = %bb.p
  br i1 %i.bn, label %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.backedge, label %.thread.i

.split.i:                                         ; preds = %bb.q
  %i.bo = icmp eq ptr %.sroa.10.3162.i, %.sroa.11.3163.i
  br i1 %i.bo, label %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.backedge, label %.thread.i

bb.s:                                             ; preds = %.lr.ph171.i
  %.not78.i = icmp eq ptr %.sroa.11.3163.i, null
  br i1 %.not78.i, label %bb.t, label %.thread.i

.thread.i:                                        ; preds = %bb.s, %.split.i, %bb.r
  %.sroa.019.0.copyload22.i = load ptr, ptr %.sroa.11.3163.i, align 8, !noalias !468
  %.sroa.8.0..sroa.017.0.18.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.11.3163.i, i64 8
  %.sroa.8.0.copyload28.i = load i64, ptr %.sroa.8.0..sroa.017.0.18.sroa_idx.i, align 8, !noalias !468
  %.sroa.11.0..sroa.017.0.18.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.11.3163.i, i64 16
  %.sroa.11.0.copyload34.i = load ptr, ptr %.sroa.11.0..sroa.017.0.18.sroa_idx.i, align 8, !noalias !468
  br label %bb.t

bb.t:                                             ; preds = %.thread.i, %bb.s
  %.sroa.11.4.i = phi ptr [ %.sroa.11.0.copyload34.i, %.thread.i ], [ null, %bb.s ] ; 2 uses
  %.sroa.8.4.i = phi i64 [ %.sroa.8.0.copyload28.i, %.thread.i ], [ 0, %bb.s ] ; 2 uses
  %.sroa.019.4.i = phi ptr [ %.sroa.019.0.copyload22.i, %.thread.i ], [ inttoptr (i64 16 to ptr), %bb.s ] ; 2 uses
  %.not79.i = icmp eq ptr %.sroa.10.3162.i, null
  br i1 %.not79.i, label %bb.u, label %.thread122.i

.thread122.i:                                     ; preds = %bb.t, %bb.q
  %.sroa.019.4131.i = phi ptr [ %.sroa.019.4.i, %bb.t ], [ inttoptr (i64 16 to ptr), %bb.q ]
  %.sroa.8.4129.i = phi i64 [ %.sroa.8.4.i, %bb.t ], [ 0, %bb.q ]
  %.sroa.11.4127.i = phi ptr [ %.sroa.11.4.i, %bb.t ], [ null, %bb.q ]
  %.sroa.049.0.copyload52.i = load ptr, ptr %.sroa.10.3162.i, align 8, !noalias !468
  %.sroa.7.0..sroa.047.0.48.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.10.3162.i, i64 8
  %.sroa.7.0.copyload56.i = load i64, ptr %.sroa.7.0..sroa.047.0.48.sroa_idx.i, align 8, !noalias !468
  %.sroa.10.0..sroa.047.0.48.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.10.3162.i, i64 16
  %.sroa.10.0.copyload60.i = load ptr, ptr %.sroa.10.0..sroa.047.0.48.sroa_idx.i, align 8, !noalias !468
  br label %bb.u

bb.u:                                             ; preds = %.thread122.i, %bb.t
  %.sroa.019.4132.i = phi ptr [ %.sroa.019.4131.i, %.thread122.i ], [ %.sroa.019.4.i, %bb.t ] ; 2 uses
  %.sroa.8.4130.i = phi i64 [ %.sroa.8.4129.i, %.thread122.i ], [ %.sroa.8.4.i, %bb.t ] ; 2 uses
  %.sroa.11.4128.i = phi ptr [ %.sroa.11.4127.i, %.thread122.i ], [ %.sroa.11.4.i, %bb.t ] ; 2 uses
  %.sroa.049.4.i = phi ptr [ %.sroa.049.0.copyload52.i, %.thread122.i ], [ inttoptr (i64 16 to ptr), %bb.t ]
  %.sroa.7.4.i = phi i64 [ %.sroa.7.0.copyload56.i, %.thread122.i ], [ 0, %bb.t ]
  %.sroa.10.4.i = phi ptr [ %.sroa.10.0.copyload60.i, %.thread122.i ], [ null, %bb.t ]
  %i.bp = add i64 %.sroa.0.2166.i, -1             ; 2 uses
  %.not75.i = icmp eq i64 %i.bp, 0
  br i1 %.not75.i, label %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit.i.backedge, label %.lr.ph171.i

bb.v:                                             ; preds = %.lr.ph155.i
  %.sroa.11.0..sroa.07.0.8.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.11.2154.i, i64 16
  %.sroa.11.0.copyload35.i = load ptr, ptr %.sroa.11.0..sroa.07.0.8.sroa_idx.i, align 8, !noalias !468
  br label %.lr.ph155.i.1

.lr.ph155.i.1:                                    ; preds = %bb.v, %.lr.ph155.i
  %.sroa.11.5.i = phi ptr [ %.sroa.11.0.copyload35.i, %bb.v ], [ null, %.lr.ph155.i ] ; 4 uses
  %.not80.i.1 = icmp eq ptr %.sroa.11.5.i, null
  br i1 %.not80.i.1, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph155.i.1
  %.sroa.019.0.copyload23.i.1 = load ptr, ptr %.sroa.11.5.i, align 8, !noalias !468
  %.sroa.8.0..sroa.07.0.8.sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.11.5.i, i64 8
  %.sroa.8.0.copyload29.i.1 = load i64, ptr %.sroa.8.0..sroa.07.0.8.sroa_idx.i.1, align 8, !noalias !468
  %.sroa.11.0..sroa.07.0.8.sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.11.5.i, i64 16
  %.sroa.11.0.copyload35.i.1 = load ptr, ptr %.sroa.11.0..sroa.07.0.8.sroa_idx.i.1, align 8, !noalias !468
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.lr.ph155.i.1
  %.sroa.11.5.i.1 = phi ptr [ %.sroa.11.0.copyload35.i.1, %bb.w ], [ null, %.lr.ph155.i.1 ] ; 3 uses
  %.sroa.8.5.i.1 = phi i64 [ %.sroa.8.0.copyload29.i.1, %bb.w ], [ 0, %.lr.ph155.i.1 ]
  %.sroa.019.5.i.1 = phi ptr [ %.sroa.019.0.copyload23.i.1, %bb.w ], [ inttoptr (i64 16 to ptr), %.lr.ph155.i.1 ]
  %niter240.next.1 = add i64 %niter240, 2         ; 2 uses
  %niter240.ncmp.1 = icmp eq i64 %niter240.next.1, %unroll_iter239
  br i1 %niter240.ncmp.1, label %.loopexit.i.loopexit.unr-lcssa, label %.lr.ph155.i

_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain5trunkINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB1p_6filter6FilterINtNtNtB1t_5slice4iter4IterTRNtNtB8_7content7ContentBX_EENCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtBa_5model5terms9TermsElemEs_0ENCB3s_s0_0EEB3v_.exit: ; preds = %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1O_6styles10StyleChainEENCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtB1Q_5model5terms9TermsElemEs_0ENCB3h_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB3k_.exit83.i, %bb.g
  %.not = icmp eq ptr %.sroa.019.0.i, null
  br i1 %.not, label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain5trunkINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB1p_6filter6FilterINtNtNtB1t_5slice4iter4IterTRNtNtB8_7content7ContentBX_EENCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtBa_5model5terms9TermsElemEs_0ENCB3s_s0_0EEB3v_.exit.thread, label %bb.y, !prof !15

bb.y:                                             ; preds = %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain5trunkINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB1p_6filter6FilterINtNtNtB1t_5slice4iter4IterTRNtNtB8_7content7ContentBX_EENCINvCsibhcYuwTAtB_13typst_realize16finish_list_likeNtNtNtBa_5model5terms9TermsElemEs_0ENCB3s_s0_0EEB3v_.exit
  store ptr %.sroa.019.0.i, ptr %i.n, align 8
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %.sroa.8.0.i, ptr %.sroa.512.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %.sroa.11.0.i, ptr %.sroa.6.0..sroa_idx, align 8
  br label %.lr.ph.i5

.lr.ph.i5:                                        ; preds = %bb.y, %bb.z
  %.sroa.618.0 = phi ptr [ %.sroa.11.0.i, %bb.y ], [ %.sroa.618.8.copyload, %bb.z ] ; 3 uses
  %.sroa.0.012.i = phi i64 [ 0, %bb.y ], [ %i.bs, %bb.z ] ; 2 uses
  %.not16.i.i = icmp eq ptr %.sroa.618.0, null
  br i1 %.not16.i.i, label %.thread.i6, label %bb.z

.thread.i6:                                       ; preds = %.lr.ph.i5
  %i.bq = add i64 %.sroa.0.012.i, 1
  br label %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit

bb.z:                                             ; preds = %.lr.ph.i5
  %.sroa.012.0.copyload.i.i = load ptr, ptr %.sroa.618.0, align 8, !noalias !472
  %.sroa.618.8..sroa.413.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.618.0, i64 16
  %.sroa.618.8.copyload = load ptr, ptr %.sroa.618.8..sroa.413.0..sroa_idx.i.i.sroa_idx, align 8
  %i.br = icmp eq ptr %.sroa.012.0.copyload.i.i, null
  %i.bs = add i64 %.sroa.0.012.i, 1               ; 2 uses
  br i1 %i.br, label %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit, label %.lr.ph.i5

_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.z, %.thread.i6
  %.sroa.0.0.lcssa.i = phi i64 [ %i.bq, %.thread.i6 ], [ %i.bs, %bb.z ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !473
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit, %bb.ad
  %i.bt = phi ptr [ %i.bu, %bb.ad ], [ %i.t, %_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5LinksNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B12_5count0ECsibhcYuwTAtB_13typst_realize.exit ] ; 3 uses
end_hunk_2
begin_hunk_3_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgECsibhcYuwTAtB_13typst_realize:bb.a
; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 288230376151711744) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.b = icmp eq i64 %i.d, %1
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.07 = phi i64 [ %i.d, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.0.07
  %i.d = add nuw nsw i64 %.sroa.0.07, 1           ; 4 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef align 8 dereferenceable(32) %i.c)
          to label %bb.b unwind label %bb.d

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.c:                                             ; preds = %.lr.ph10
  %i.e = add i64 %.sroa.0.18, 1                   ; 2 uses
  %i.f = icmp eq i64 %i.e, %1
  br i1 %i.f, label %._crit_edge11, label %.lr.ph10

bb.d:                                             ; preds = %.lr.ph
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = icmp eq i64 %i.d, %1
  br i1 %i.h, label %._crit_edge11, label %.lr.ph10

.lr.ph10:                                         ; preds = %bb.d, %bb.c
  %.sroa.0.18 = phi i64 [ %i.e, %bb.c ], [ %i.d, %bb.d ] ; 2 uses
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.0.18
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef align 8 dereferenceable(32) %i.i) #31
          to label %bb.c unwind label %bb.e

._crit_edge11:                                    ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.g

bb.e:                                             ; preds = %.lr.ph10
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueINtNtB4_6option6OptionNtNtBG_6styles6StylesEEECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef align 8 dereferenceable(32) %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !1595, !noundef !11
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles6StylesEECsibhcYuwTAtB_13typst_realize.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke fastcc void @_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles6StylesEECsibhcYuwTAtB_13typst_realize.exit unwind label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !1596, !noundef !11
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles6StylesEECsibhcYuwTAtB_13typst_realize.exit1, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.e), !inline_history !4
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles6StylesEECsibhcYuwTAtB_13typst_realize.exit1

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles6StylesEECsibhcYuwTAtB_13typst_realize.exit1: ; preds = %bb.d, %bb.e
  ret void

bb.f:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles6StylesEECsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.a
}

; Function Attrs: cold noreturn nonlazybind uwtable
define internal fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB4_6string9EcoStringNtBO_8DiagSpanEECsibhcYuwTAtB_13typst_realize(ptr noundef nonnull %0, i64 noundef %1) unnamed_addr #2 {
bb.a:
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBG_6string9EcoStringNtB1d_8DiagSpanEEECsibhcYuwTAtB_13typst_realize(ptr nonnull %0, i64 %1)
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @15, ptr noundef nonnull inttoptr (i64 49 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #27
  unreachable
}

; Function Attrs: cold noreturn nonlazybind uwtable
define internal fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEECsibhcYuwTAtB_13typst_realize(ptr noundef nonnull %0, i64 noundef %1) unnamed_addr #2 {
bb.a:
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEEECsibhcYuwTAtB_13typst_realize(ptr nonnull %0, i64 %1)
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @15, ptr noundef nonnull inttoptr (i64 49 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #27
  unreachable
}

; Function Attrs: cold noreturn nonlazybind uwtable
define internal fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEECsibhcYuwTAtB_13typst_realize(ptr noundef nonnull %0, i64 noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %1, ptr %i.b, align 8
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEEECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @15, ptr noundef nonnull inttoptr (i64 49 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #27
  unreachable
}

; Function Attrs: cold noreturn nonlazybind uwtable
define internal fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticECsibhcYuwTAtB_13typst_realize(ptr noundef nonnull %0, i64 noundef %1) unnamed_addr #2 {
bb.a:
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEECsibhcYuwTAtB_13typst_realize(ptr nonnull %0, i64 %1)
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @15, ptr noundef nonnull inttoptr (i64 49 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #27
  unreachable
}

; Function Attrs: cold noreturn nonlazybind uwtable
define internal fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowhECsibhcYuwTAtB_13typst_realize(ptr noundef nonnull %0) unnamed_addr #2 {
bb.a:
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVechEECsibhcYuwTAtB_13typst_realize(ptr nonnull %0)
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @15, ptr noundef nonnull inttoptr (i64 49 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #27
  unreachable
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort8unstable7ipnsortNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyNvYBT_NtNtB8_3cmp10PartialOrd2ltECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 16 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2) unnamed_addr #3 {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKey7reverseCsibhcYuwTAtB_13typst_realize.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val5 = load i128, ptr %i.b, align 16, !noundef !11 ; 3 uses
  %.val6 = load i128, ptr %0, align 16, !noundef !11
  %i.c = icmp ult i128 %.val5, %.val6             ; 2 uses
  %.not21 = icmp eq i64 %1, 2                     ; 2 uses
  br i1 %i.c, label %.preheader, label %.preheader11

.preheader11:                                     ; preds = %bb.b
  br i1 %.not21, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyNvYB12_NtNtB8_3cmp10PartialOrd2ltECsibhcYuwTAtB_13typst_realize.exit, label %.lr.ph

.preheader:                                       ; preds = %bb.b
  br i1 %.not21, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyNvYB12_NtNtB8_3cmp10PartialOrd2ltECsibhcYuwTAtB_13typst_realize.exit, label %.lr.ph17

.lr.ph:                                           ; preds = %.preheader11, %bb.c
  %.val4 = phi i128 [ %.val3, %bb.c ], [ %.val5, %.preheader11 ]
  %.sroa.01.0.i13 = phi i64 [ %i.f, %bb.c ], [ 2, %.preheader11 ] ; 3 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i13
  %.val3 = load i128, ptr %i.d, align 16, !noundef !11 ; 2 uses
  %i.e = icmp ult i128 %.val3, %.val4
  br i1 %i.e, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyNvYB12_NtNtB8_3cmp10PartialOrd2ltECsibhcYuwTAtB_13typst_realize.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.f = add nuw nsw i64 %.sroa.01.0.i13, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %i.f, %1
  br i1 %exitcond.not, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyNvYB12_NtNtB8_3cmp10PartialOrd2ltECsibhcYuwTAtB_13typst_realize.exit.thread, label %.lr.ph

.lr.ph17:                                         ; preds = %.preheader, %bb.d
  %.val2 = phi i128 [ %.val, %bb.d ], [ %.val5, %.preheader ]
  %.sroa.01.1.i16 = phi i64 [ %i.i, %bb.d ], [ 2, %.preheader ] ; 3 uses
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.1.i16
  %.val = load i128, ptr %i.g, align 16, !noundef !11 ; 2 uses
  %i.h = icmp ult i128 %.val, %.val2
  br i1 %i.h, label %bb.d, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyNvYB12_NtNtB8_3cmp10PartialOrd2ltECsibhcYuwTAtB_13typst_realize.exit

bb.d:                                             ; preds = %.lr.ph17
  %i.i = add nuw nsw i64 %.sroa.01.1.i16, 1       ; 2 uses
  %exitcond24.not = icmp eq i64 %i.i, %1
  br i1 %exitcond24.not, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyNvYB12_NtNtB8_3cmp10PartialOrd2ltECsibhcYuwTAtB_13typst_realize.exit.thread, label %.lr.ph17

_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyNvYB12_NtNtB8_3cmp10PartialOrd2ltECsibhcYuwTAtB_13typst_realize.exit: ; preds = %.lr.ph, %.lr.ph17, %.preheader11, %.preheader
  %.sroa.0.0.i = phi i64 [ 2, %.preheader11 ], [ 2, %.preheader ], [ %.sroa.01.1.i16, %.lr.ph17 ], [ %.sroa.01.0.i13, %.lr.ph ] ; 2 uses
  %i.j = icmp samesign ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.j)
  %i.k = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.k, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyNvYB12_NtNtB8_3cmp10PartialOrd2ltECsibhcYuwTAtB_13typst_realize.exit.thread, label %bb.e

_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyNvYB12_NtNtB8_3cmp10PartialOrd2ltECsibhcYuwTAtB_13typst_realize.exit.thread: ; preds = %bb.c, %bb.d, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyNvYB12_NtNtB8_3cmp10PartialOrd2ltECsibhcYuwTAtB_13typst_realize.exit
  br i1 %i.c, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKey12split_at_mutCsibhcYuwTAtB_13typst_realize.exit11.preheader.i.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKey7reverseCsibhcYuwTAtB_13typst_realize.exit

bb.e:                                             ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyNvYB12_NtNtB8_3cmp10PartialOrd2ltECsibhcYuwTAtB_13typst_realize.exit
  %i.l = or i64 %1, 1
  %i.m = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.l, i1 true)
  %i.n = trunc nuw nsw i64 %i.m to i32
  %i.o = shl nuw nsw i32 %i.n, 1
  %i.p = xor i32 %i.o, 126
  tail call fastcc void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort8unstable9quicksort9quicksortNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyNvYB17_NtNtBa_3cmp10PartialOrd2ltECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 16 %0, i64 noundef %1, ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable_or_null(16) null, i32 noundef %i.p, ptr noalias nofree noundef nonnull %2)
  br label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKey7reverseCsibhcYuwTAtB_13typst_realize.exit

_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKey7reverseCsibhcYuwTAtB_13typst_realize.exit.loopexit.unr-lcssa: ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKey12split_at_mutCsibhcYuwTAtB_13typst_realize.exit11.i.i
  %3 = and i64 %1, 2
  %lcmp.mod.not = icmp eq i64 %3, 0
  br i1 %lcmp.mod.not, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKey7reverseCsibhcYuwTAtB_13typst_realize.exit, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKey12split_at_mutCsibhcYuwTAtB_13typst_realize.exit11.i.i.epil.preheader

_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKey12split_at_mutCsibhcYuwTAtB_13typst_realize.exit11.i.i.epil.preheader: ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKey7reverseCsibhcYuwTAtB_13typst_realize.exit.loopexit.unr-lcssa, %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKey12split_at_mutCsibhcYuwTAtB_13typst_realize.exit11.preheader.i.i
  %.sroa.0.016.i.i.epil.init = phi i64 [ 0, %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKey12split_at_mutCsibhcYuwTAtB_13typst_realize.exit11.preheader.i.i ], [ %i.ag, %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKey7reverseCsibhcYuwTAtB_13typst_realize.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod43 = trunc i64 %i.u to i1
  tail call void @llvm.assume(i1 %lcmp.mod43)
  %i.q = xor i64 %.sroa.0.016.i.i.epil.init, -1
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.016.i.i.epil.init ; 2 uses
  %i.s = getelementptr [16 x i8], ptr %i.v, i64 %i.q ; 2 uses
  %i.t = load i128, ptr %i.r, align 16, !alias.scope !1602, !noalias !1603, !noundef !11
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.r, ptr noundef nonnull align 16 dereferenceable(16) %i.s, i64 16, i1 false), !alias.scope !1604
  store i128 %i.t, ptr %i.s, align 16, !alias.scope !1605, !noalias !1606
  br label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKey7reverseCsibhcYuwTAtB_13typst_realize.exit

_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKey7reverseCsibhcYuwTAtB_13typst_realize.exit: ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKey12split_at_mutCsibhcYuwTAtB_13typst_realize.exit11.i.i.epil.preheader, %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKey7reverseCsibhcYuwTAtB_13typst_realize.exit.loopexit.unr-lcssa, %bb.a, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyNvYB12_NtNtB8_3cmp10PartialOrd2ltECsibhcYuwTAtB_13typst_realize.exit.thread, %bb.e
  ret void

_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKey12split_at_mutCsibhcYuwTAtB_13typst_realize.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyNvYB12_NtNtB8_3cmp10PartialOrd2ltECsibhcYuwTAtB_13typst_realize.exit.thread
  %i.u = lshr i64 %1, 1                           ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1606)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1603)
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %1 ; 3 uses
  %i.w = icmp eq i64 %i.u, 1
  br i1 %i.w, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKey12split_at_mutCsibhcYuwTAtB_13typst_realize.exit11.i.i.epil.preheader, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKey12split_at_mutCsibhcYuwTAtB_13typst_realize.exit11.preheader.i.i.new

_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKey12split_at_mutCsibhcYuwTAtB_13typst_realize.exit11.preheader.i.i.new: ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKey12split_at_mutCsibhcYuwTAtB_13typst_realize.exit11.preheader.i.i
  %unroll_iter = and i64 %i.u, 288230376151711742
  br label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKey12split_at_mutCsibhcYuwTAtB_13typst_realize.exit11.i.i

_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKey12split_at_mutCsibhcYuwTAtB_13typst_realize.exit11.i.i: ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKey12split_at_mutCsibhcYuwTAtB_13typst_realize.exit11.i.i, %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKey12split_at_mutCsibhcYuwTAtB_13typst_realize.exit11.preheader.i.i.new
  %.sroa.0.016.i.i = phi i64 [ 0, %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKey12split_at_mutCsibhcYuwTAtB_13typst_realize.exit11.preheader.i.i.new ], [ %i.ag, %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKey12split_at_mutCsibhcYuwTAtB_13typst_realize.exit11.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKey12split_at_mutCsibhcYuwTAtB_13typst_realize.exit11.preheader.i.i.new ], [ %niter.next.1, %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKey12split_at_mutCsibhcYuwTAtB_13typst_realize.exit11.i.i ]
  %i.x = xor i64 %.sroa.0.016.i.i, -1
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.016.i.i ; 2 uses
  %i.z = getelementptr [16 x i8], ptr %i.v, i64 %i.x ; 2 uses
  %i.aa = load i128, ptr %i.y, align 16, !alias.scope !1602, !noalias !1603, !noundef !11
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.y, ptr noundef nonnull align 16 dereferenceable(16) %i.z, i64 16, i1 false), !alias.scope !1604
  store i128 %i.aa, ptr %i.z, align 16, !alias.scope !1605, !noalias !1606
  %i.ab = xor i64 %.sroa.0.016.i.i, -2
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.016.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %i.ae = getelementptr [16 x i8], ptr %i.v, i64 %i.ab ; 2 uses
  %i.af = load i128, ptr %i.ad, align 16, !alias.scope !1602, !noalias !1603, !noundef !11
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ad, ptr noundef nonnull align 16 dereferenceable(16) %i.ae, i64 16, i1 false), !alias.scope !1604
  store i128 %i.af, ptr %i.ae, align 16, !alias.scope !1605, !noalias !1606
  %i.ag = add nuw nsw i64 %.sroa.0.016.i.i, 2     ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKey7reverseCsibhcYuwTAtB_13typst_realize.exit.loopexit.unr-lcssa, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKey12split_at_mutCsibhcYuwTAtB_13typst_realize.exit11.i.i
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef nonnull ptr @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot11median3_recNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyNvYB14_NtNtBa_3cmp10PartialOrd2ltECsibhcYuwTAtB_13typst_realize(ptr nofree noundef nonnull readonly %0, ptr nofree noundef nonnull readonly %1, ptr nofree noundef nonnull readonly %2, i64 noundef range(i64 0, 72057594037927936) %3) unnamed_addr #4 {
bb.a:
  %i.a = icmp samesign ugt i64 %3, 7
  br i1 %i.a, label %bb.b, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot7median3NtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyNvYBZ_NtNtBa_3cmp10PartialOrd2ltECsibhcYuwTAtB_13typst_realize.exit

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.c
  %i.e = mul nuw nsw i64 %i.b, 7                  ; 3 uses
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.e
  %i.g = tail call fastcc noundef ptr @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot11median3_recNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyNvYB14_NtNtBa_3cmp10PartialOrd2ltECsibhcYuwTAtB_13typst_realize(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b)
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.e
  %i.j = tail call fastcc noundef ptr @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot11median3_recNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyNvYB14_NtNtBa_3cmp10PartialOrd2ltECsibhcYuwTAtB_13typst_realize(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b)
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.e
  %i.m = tail call fastcc noundef ptr @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot11median3_recNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyNvYB14_NtNtBa_3cmp10PartialOrd2ltECsibhcYuwTAtB_13typst_realize(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b)
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot7median3NtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyNvYBZ_NtNtBa_3cmp10PartialOrd2ltECsibhcYuwTAtB_13typst_realize.exit

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot7median3NtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyNvYBZ_NtNtBa_3cmp10PartialOrd2ltECsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 2 uses
  %.sroa.0.0.val13 = load i128, ptr %.sroa.0.0, align 16, !noundef !11 ; 2 uses
  %.sroa.04.0.val14 = load i128, ptr %.sroa.04.0, align 16, !noundef !11 ; 2 uses
  %i.n = icmp ult i128 %.sroa.0.0.val13, %.sroa.04.0.val14 ; 2 uses
  %.sroa.08.0.val12 = load i128, ptr %.sroa.08.0, align 16, !noundef !11 ; 2 uses
  %i.o = icmp ult i128 %.sroa.0.0.val13, %.sroa.08.0.val12
  %i.p = xor i1 %i.n, %i.o
  %i.q = icmp ult i128 %.sroa.04.0.val14, %.sroa.08.0.val12
  %i.r = xor i1 %i.n, %i.q
  %..i = select i1 %i.r, ptr %.sroa.08.0, ptr %.sroa.04.0
  %.sroa.0.0.i = select i1 %i.p, ptr %.sroa.0.0, ptr %..i
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort12sort8_stableNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyNvYB19_NtNtBa_3cmp10PartialOrd2ltECsibhcYuwTAtB_13typst_realize(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 128)) %1, ptr nofree noundef nonnull captures(address) initializes((0, 128)) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
.lr.ph.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val8.i = load i128, ptr %i.a, align 16, !noundef !11
  %.val9.i = load i128, ptr %0, align 16, !noundef !11
  %i.b = icmp ult i128 %.val8.i, %.val9.i         ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val6.i = load i128, ptr %i.c, align 16, !noundef !11
  %.val7.i = load i128, ptr %i.d, align 16, !noundef !11
  %i.e = icmp ult i128 %.val6.i, %.val7.i         ; 2 uses
  %i.f = zext i1 %i.b to i64
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.f ; 3 uses
  %i.h = xor i1 %i.b, true
  %i.i = zext i1 %i.h to i64
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.i ; 4 uses
  %i.k = select i1 %i.e, i64 3, i64 2
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.k ; 4 uses
  %i.m = select i1 %i.e, i64 2, i64 3
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.m ; 3 uses
  %.val4.i = load i128, ptr %i.l, align 16, !noundef !11
  %.val5.i = load i128, ptr %i.g, align 16, !noundef !11
  %i.o = icmp ult i128 %.val4.i, %.val5.i         ; 3 uses
  %.val2.i = load i128, ptr %i.n, align 16, !noundef !11
  %.val3.i = load i128, ptr %i.j, align 16, !noundef !11
  %i.p = icmp ult i128 %.val2.i, %.val3.i         ; 3 uses
  %i.q = select i1 %i.o, ptr %i.l, ptr %i.g, !unpredictable !11
  %i.r = select i1 %i.p, ptr %i.j, ptr %i.n, !unpredictable !11
  %i.s = select i1 %i.p, ptr %i.l, ptr %i.j, !unpredictable !11
  %i.t = select i1 %i.o, ptr %i.g, ptr %i.s, !unpredictable !11 ; 3 uses
  %i.u = select i1 %i.o, ptr %i.j, ptr %i.l, !unpredictable !11
  %i.v = select i1 %i.p, ptr %i.n, ptr %i.u, !unpredictable !11 ; 3 uses
  %.val.i = load i128, ptr %i.v, align 16, !noundef !11
  %.val1.i = load i128, ptr %i.t, align 16, !noundef !11
  %i.w = icmp ult i128 %.val.i, %.val1.i          ; 2 uses
  %i.x = select i1 %i.w, ptr %i.v, ptr %i.t, !unpredictable !11
  %i.y = select i1 %i.w, ptr %i.t, ptr %i.v, !unpredictable !11
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %2, ptr noundef nonnull align 16 dereferenceable(16) %i.q, i64 16, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.z, ptr noundef nonnull align 16 dereferenceable(16) %i.x, i64 16, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.aa, ptr noundef nonnull align 16 dereferenceable(16) %i.y, i64 16, i1 false)
  %i.ab = getelementptr i8, ptr %2, i64 48        ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ab, ptr noundef nonnull align 16 dereferenceable(16) %i.r, i64 16, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.ad = getelementptr i8, ptr %2, i64 64        ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val8.i1 = load i128, ptr %i.ae, align 16, !noundef !11
  %.val9.i2 = load i128, ptr %i.ac, align 16, !noundef !11
  %i.af = icmp ult i128 %.val8.i1, %.val9.i2      ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val6.i3 = load i128, ptr %i.ag, align 16, !noundef !11
  %.val7.i4 = load i128, ptr %i.ah, align 16, !noundef !11
  %i.ai = icmp ult i128 %.val6.i3, %.val7.i4      ; 2 uses
  %i.aj = zext i1 %i.af to i64
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %i.aj ; 3 uses
  %i.al = xor i1 %i.af, true
  %i.am = zext i1 %i.al to i64
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %i.am ; 4 uses
  %i.ao = select i1 %i.ai, i64 3, i64 2
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %i.ao ; 4 uses
  %i.aq = select i1 %i.ai, i64 2, i64 3
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %i.aq ; 3 uses
  %.val4.i5 = load i128, ptr %i.ap, align 16, !noundef !11
  %.val5.i6 = load i128, ptr %i.ak, align 16, !noundef !11
  %i.as = icmp ult i128 %.val4.i5, %.val5.i6      ; 3 uses
  %.val2.i7 = load i128, ptr %i.ar, align 16, !noundef !11
  %.val3.i8 = load i128, ptr %i.an, align 16, !noundef !11
  %i.at = icmp ult i128 %.val2.i7, %.val3.i8      ; 3 uses
  %i.au = select i1 %i.as, ptr %i.ap, ptr %i.ak, !unpredictable !11
  %i.av = select i1 %i.at, ptr %i.an, ptr %i.ar, !unpredictable !11
  %i.aw = select i1 %i.at, ptr %i.ap, ptr %i.an, !unpredictable !11
  %i.ax = select i1 %i.as, ptr %i.ak, ptr %i.aw, !unpredictable !11 ; 3 uses
  %i.ay = select i1 %i.as, ptr %i.an, ptr %i.ap, !unpredictable !11
  %i.az = select i1 %i.at, ptr %i.ar, ptr %i.ay, !unpredictable !11 ; 3 uses
  %.val.i9 = load i128, ptr %i.az, align 16, !noundef !11
  %.val1.i10 = load i128, ptr %i.ax, align 16, !noundef !11
  %i.ba = icmp ult i128 %.val.i9, %.val1.i10      ; 2 uses
  %i.bb = select i1 %i.ba, ptr %i.az, ptr %i.ax, !unpredictable !11
  %i.bc = select i1 %i.ba, ptr %i.ax, ptr %i.az, !unpredictable !11
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ad, ptr noundef nonnull align 16 dereferenceable(16) %i.au, i64 16, i1 false)
  %i.bd = getelementptr i8, ptr %2, i64 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.bd, ptr noundef nonnull align 16 dereferenceable(16) %i.bb, i64 16, i1 false)
  %i.be = getelementptr i8, ptr %2, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.be, ptr noundef nonnull align 16 dereferenceable(16) %i.bc, i64 16, i1 false)
  %i.bf = getelementptr i8, ptr %2, i64 112       ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.bf, ptr noundef nonnull align 16 dereferenceable(16) %i.av, i64 16, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1615)
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.sroa.011.0.val.i = load i128, ptr %i.ad, align 16, !alias.scope !1615, !noundef !11
  %.sroa.06.0.val.i = load i128, ptr %2, align 16, !alias.scope !1615, !noundef !11
  %i.bh = icmp ult i128 %.sroa.011.0.val.i, %.sroa.06.0.val.i ; 3 uses
  %..i21.i = select i1 %i.bh, ptr %i.ad, ptr %2
  %i.bi = xor i1 %i.bh, true
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %1, ptr noundef nonnull align 16 dereferenceable(16) %..i21.i, i64 16, i1 false), !noalias !1616
  %i.bj = zext i1 %i.bh to i64
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %i.bj ; 3 uses
  %i.bl = zext i1 %i.bi to i64
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.bl ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.017.0.val.i = load i128, ptr %i.bf, align 16, !alias.scope !1615, !noundef !11
  %.sroa.015.0.val.i = load i128, ptr %i.ab, align 16, !alias.scope !1615, !noundef !11
  %i.bo = icmp ult i128 %.sroa.017.0.val.i, %.sroa.015.0.val.i ; 3 uses
  %..i.i = select i1 %i.bo, ptr %i.ab, ptr %i.bf
  %i.bp = xor i1 %i.bo, true
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.bg, ptr noundef nonnull align 16 dereferenceable(16) %..i.i, i64 16, i1 false), !noalias !1617
  %.neg.i.i = sext i1 %i.bp to i64
  %i.bq = getelementptr [16 x i8], ptr %i.bf, i64 %.neg.i.i ; 3 uses
  %.neg13.i.i = sext i1 %i.bo to i64
  %i.br = getelementptr [16 x i8], ptr %i.ab, i64 %.neg13.i.i ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.sroa.011.0.val.i.1 = load i128, ptr %i.bk, align 16, !alias.scope !1615, !noundef !11
  %.sroa.06.0.val.i.1 = load i128, ptr %i.bm, align 16, !alias.scope !1615, !noundef !11
  %i.bt = icmp ult i128 %.sroa.011.0.val.i.1, %.sroa.06.0.val.i.1 ; 3 uses
  %..i21.i.1 = select i1 %i.bt, ptr %i.bk, ptr %i.bm
  %i.bu = xor i1 %i.bt, true
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.bn, ptr noundef nonnull align 16 dereferenceable(16) %..i21.i.1, i64 16, i1 false), !noalias !1616
  %i.bv = zext i1 %i.bt to i64
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.bk, i64 %i.bv ; 3 uses
  %i.bx = zext i1 %i.bu to i64
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %i.bm, i64 %i.bx ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.017.0.val.i.1 = load i128, ptr %i.bq, align 16, !alias.scope !1615, !noundef !11
  %.sroa.015.0.val.i.1 = load i128, ptr %i.br, align 16, !alias.scope !1615, !noundef !11
  %i.ca = icmp ult i128 %.sroa.017.0.val.i.1, %.sroa.015.0.val.i.1 ; 3 uses
  %..i.i.1 = select i1 %i.ca, ptr %i.br, ptr %i.bq
  %i.cb = xor i1 %i.ca, true
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.bs, ptr noundef nonnull align 16 dereferenceable(16) %..i.i.1, i64 16, i1 false), !noalias !1617
end_hunk_3
begin_hunk_4_@_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort8unstable9quicksort9quicksortNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyNvYB17_NtNtBa_3cmp10PartialOrd2ltECsibhcYuwTAtB_13typst_realize:bb.a
  %i.d = alloca [16 x i8], align 16               ; 4 uses
  %i.e = alloca [16 x i8], align 16               ; 4 uses
  %i.f = alloca [16 x i8], align 16               ; 4 uses
  %i.g = alloca [768 x i8], align 16              ; 20 uses
  %i.h = icmp samesign ult i64 %1, 33
  br i1 %i.h, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.i = icmp eq i32 %3, 0
  br i1 %i.i, label %.lr.ph._crit_edge, label %.lr.ph158

.lr.ph:                                           ; preds = %.backedge
  %i.j = icmp eq i32 %i.do, 0
  br i1 %i.j, label %.lr.ph._crit_edge, label %.lr.ph158

._crit_edge:                                      ; preds = %.backedge, %bb.a
  %.sroa.15.0.lcssa = phi i64 [ %1, %bb.a ], [ %.sroa.15.0.be, %.backedge ] ; 9 uses
  %.sroa.0.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.0.0.be, %.backedge ] ; 18 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1683)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1683
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1684)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1685)
  %i.k = icmp samesign ult i64 %.sroa.15.0.lcssa, 2
  br i1 %i.k, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort18small_sort_generalNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyNvYB1f_NtNtBa_3cmp10PartialOrd2ltECsibhcYuwTAtB_13typst_realize.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.l = lshr i64 %.sroa.15.0.lcssa, 1            ; 12 uses
  %i.m = icmp samesign ugt i64 %.sroa.15.0.lcssa, 15
  br i1 %i.m, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = icmp samesign ugt i64 %.sroa.15.0.lcssa, 7
  br i1 %i.n, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.sroa.15.0.lcssa ; 2 uses
  call fastcc void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort12sort8_stableNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyNvYB19_NtNtBa_3cmp10PartialOrd2ltECsibhcYuwTAtB_13typst_realize(ptr noundef nonnull align 16 %.sroa.0.0.lcssa, ptr noundef nonnull align 16 %i.g, ptr noundef %i.o)
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.lcssa, i64 %i.l
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.l
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 128
  call fastcc void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort12sort8_stableNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyNvYB19_NtNtBa_3cmp10PartialOrd2ltECsibhcYuwTAtB_13typst_realize(ptr noundef %i.p, ptr noundef %i.q, ptr noundef %i.r)
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa, i64 16
  %.val8.i.i.i = load i128, ptr %i.s, align 16, !alias.scope !1686, !noalias !1685, !noundef !11
  %.val9.i.i.i = load i128, ptr %.sroa.0.0.lcssa, align 16, !alias.scope !1686, !noalias !1685, !noundef !11
  %i.t = icmp ult i128 %.val8.i.i.i, %.val9.i.i.i ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa, i64 48
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa, i64 32
  %.val6.i.i.i = load i128, ptr %i.u, align 16, !alias.scope !1686, !noalias !1685, !noundef !11
  %.val7.i.i.i = load i128, ptr %i.v, align 16, !alias.scope !1686, !noalias !1685, !noundef !11
  %i.w = icmp ult i128 %.val6.i.i.i, %.val7.i.i.i ; 2 uses
  %i.x = zext i1 %i.t to i64
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.lcssa, i64 %i.x ; 3 uses
  %i.z = xor i1 %i.t, true
  %i.aa = zext i1 %i.z to i64
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.lcssa, i64 %i.aa ; 4 uses
  %i.ac = select i1 %i.w, i64 3, i64 2
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.lcssa, i64 %i.ac ; 4 uses
  %i.ae = select i1 %i.w, i64 2, i64 3
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.lcssa, i64 %i.ae ; 3 uses
  %.val4.i.i.i = load i128, ptr %i.ad, align 16, !alias.scope !1686, !noalias !1685, !noundef !11
  %.val5.i.i.i = load i128, ptr %i.y, align 16, !alias.scope !1686, !noalias !1685, !noundef !11
  %i.ag = icmp ult i128 %.val4.i.i.i, %.val5.i.i.i ; 3 uses
  %.val2.i.i.i = load i128, ptr %i.af, align 16, !alias.scope !1686, !noalias !1685, !noundef !11
  %.val3.i.i.i = load i128, ptr %i.ab, align 16, !alias.scope !1686, !noalias !1685, !noundef !11
  %i.ah = icmp ult i128 %.val2.i.i.i, %.val3.i.i.i ; 3 uses
  %i.ai = select i1 %i.ag, ptr %i.ad, ptr %i.y, !unpredictable !11
  %i.aj = select i1 %i.ah, ptr %i.ab, ptr %i.af, !unpredictable !11
  %i.ak = select i1 %i.ah, ptr %i.ad, ptr %i.ab, !unpredictable !11
  %i.al = select i1 %i.ag, ptr %i.y, ptr %i.ak, !unpredictable !11 ; 3 uses
  %i.am = select i1 %i.ag, ptr %i.ab, ptr %i.ad, !unpredictable !11
  %i.an = select i1 %i.ah, ptr %i.af, ptr %i.am, !unpredictable !11 ; 3 uses
  %.val.i.i.i = load i128, ptr %i.an, align 16, !alias.scope !1686, !noalias !1685, !noundef !11
  %.val1.i.i.i = load i128, ptr %i.al, align 16, !alias.scope !1686, !noalias !1685, !noundef !11
  %i.ao = icmp ult i128 %.val.i.i.i, %.val1.i.i.i ; 2 uses
  %i.ap = select i1 %i.ao, ptr %i.an, ptr %i.al, !unpredictable !11
  %i.aq = select i1 %i.ao, ptr %i.al, ptr %i.an, !unpredictable !11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.g, ptr noundef nonnull align 16 dereferenceable(16) %i.ai, i64 16, i1 false), !alias.scope !1687
  %i.ar = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ar, ptr noundef nonnull align 16 dereferenceable(16) %i.ap, i64 16, i1 false), !alias.scope !1687
  %i.as = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.as, ptr noundef nonnull align 16 dereferenceable(16) %i.aq, i64 16, i1 false), !alias.scope !1687
  %i.at = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.at, ptr noundef nonnull align 16 dereferenceable(16) %i.aj, i64 16, i1 false), !alias.scope !1687
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.lcssa, i64 %i.l ; 8 uses
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.l ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %.val8.i30.i.i = load i128, ptr %i.aw, align 16, !alias.scope !1686, !noalias !1685, !noundef !11
  %.val9.i31.i.i = load i128, ptr %i.au, align 16, !alias.scope !1686, !noalias !1685, !noundef !11
  %i.ax = icmp ult i128 %.val8.i30.i.i, %.val9.i31.i.i ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 48
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %.val6.i32.i.i = load i128, ptr %i.ay, align 16, !alias.scope !1686, !noalias !1685, !noundef !11
  %.val7.i33.i.i = load i128, ptr %i.az, align 16, !alias.scope !1686, !noalias !1685, !noundef !11
  %i.ba = icmp ult i128 %.val6.i32.i.i, %.val7.i33.i.i ; 2 uses
  %i.bb = zext i1 %i.ax to i64
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %i.au, i64 %i.bb ; 3 uses
  %i.bd = xor i1 %i.ax, true
  %i.be = zext i1 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.au, i64 %i.be ; 4 uses
  %i.bg = select i1 %i.ba, i64 3, i64 2
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.au, i64 %i.bg ; 4 uses
  %i.bi = select i1 %i.ba, i64 2, i64 3
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %i.au, i64 %i.bi ; 3 uses
  %.val4.i34.i.i = load i128, ptr %i.bh, align 16, !alias.scope !1686, !noalias !1685, !noundef !11
  %.val5.i35.i.i = load i128, ptr %i.bc, align 16, !alias.scope !1686, !noalias !1685, !noundef !11
  %i.bk = icmp ult i128 %.val4.i34.i.i, %.val5.i35.i.i ; 3 uses
  %.val2.i36.i.i = load i128, ptr %i.bj, align 16, !alias.scope !1686, !noalias !1685, !noundef !11
  %.val3.i37.i.i = load i128, ptr %i.bf, align 16, !alias.scope !1686, !noalias !1685, !noundef !11
  %i.bl = icmp ult i128 %.val2.i36.i.i, %.val3.i37.i.i ; 3 uses
  %i.bm = select i1 %i.bk, ptr %i.bh, ptr %i.bc, !unpredictable !11
  %i.bn = select i1 %i.bl, ptr %i.bf, ptr %i.bj, !unpredictable !11
  %i.bo = select i1 %i.bl, ptr %i.bh, ptr %i.bf, !unpredictable !11
  %i.bp = select i1 %i.bk, ptr %i.bc, ptr %i.bo, !unpredictable !11 ; 3 uses
  %i.bq = select i1 %i.bk, ptr %i.bf, ptr %i.bh, !unpredictable !11
  %i.br = select i1 %i.bl, ptr %i.bj, ptr %i.bq, !unpredictable !11 ; 3 uses
  %.val.i38.i.i = load i128, ptr %i.br, align 16, !alias.scope !1686, !noalias !1685, !noundef !11
  %.val1.i39.i.i = load i128, ptr %i.bp, align 16, !alias.scope !1686, !noalias !1685, !noundef !11
  %i.bs = icmp ult i128 %.val.i38.i.i, %.val1.i39.i.i ; 2 uses
  %i.bt = select i1 %i.bs, ptr %i.br, ptr %i.bp, !unpredictable !11
  %i.bu = select i1 %i.bs, ptr %i.bp, ptr %i.br, !unpredictable !11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.av, ptr noundef nonnull align 16 dereferenceable(16) %i.bm, i64 16, i1 false), !alias.scope !1687
  %i.bv = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.bv, ptr noundef nonnull align 16 dereferenceable(16) %i.bt, i64 16, i1 false), !alias.scope !1687
  %i.bw = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.bw, ptr noundef nonnull align 16 dereferenceable(16) %i.bu, i64 16, i1 false), !alias.scope !1687
  %i.bx = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.bx, ptr noundef nonnull align 16 dereferenceable(16) %i.bn, i64 16, i1 false), !alias.scope !1687
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.g, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.0.0.lcssa, i64 16, i1 false), !alias.scope !1687
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.lcssa, i64 %i.l
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.bz, ptr noundef nonnull align 16 dereferenceable(16) %i.by, i64 16, i1 false), !alias.scope !1687
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.sroa.0.0.i.i = phi i64 [ 8, %bb.d ], [ 4, %bb.e ], [ 1, %bb.f ] ; 4 uses
  %i.ca = sub nuw nsw i64 %.sroa.15.0.lcssa, %i.l ; 2 uses
  %i.cb = icmp samesign ult i64 %.sroa.0.0.i.i, %i.l
  br i1 %i.cb, label %.lr.ph.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyNvYB18_NtNtBa_3cmp10PartialOrd2ltECsibhcYuwTAtB_13typst_realize.exit.i.i, %bb.g
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.lcssa, i64 %i.l
  %i.cd = getelementptr [16 x i8], ptr %i.g, i64 %i.l ; 6 uses
  %i.ce = icmp samesign ult i64 %.sroa.0.0.i.i, %i.ca
  br i1 %i.ce, label %.lr.ph.1.i.i, label %.loopexit.1.i.i

.lr.ph.1.i.i:                                     ; preds = %.loopexit.i.i, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyNvYB18_NtNtBa_3cmp10PartialOrd2ltECsibhcYuwTAtB_13typst_realize.exit.1.i.i
  %.sroa.05.08.1.i.i = phi i64 [ %i.cn, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyNvYB18_NtNtBa_3cmp10PartialOrd2ltECsibhcYuwTAtB_13typst_realize.exit.1.i.i ], [ %.sroa.0.0.i.i, %.loopexit.i.i ] ; 4 uses
  %i.cf = getelementptr inbounds nuw [16 x i8], ptr %i.cc, i64 %.sroa.05.08.1.i.i
  %.idx170 = shl nuw nsw i64 %.sroa.05.08.1.i.i, 4
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.idx170 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.cg, ptr noundef nonnull align 16 dereferenceable(16) %i.cf, i64 16, i1 false), !alias.scope !1687
  %i.ch = getelementptr inbounds i8, ptr %i.cg, i64 -16 ; 3 uses
  %.val9.i40.1.i.i = load i128, ptr %i.cg, align 16, !alias.scope !1685, !noalias !1686, !noundef !11 ; 3 uses
  %.val10.i.1.i.i = load i128, ptr %i.ch, align 16, !alias.scope !1685, !noalias !1686, !noundef !11
  %i.ci = icmp ult i128 %.val9.i40.1.i.i, %.val10.i.1.i.i
  br i1 %i.ci, label %.preheader.1.i.i.preheader, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyNvYB18_NtNtBa_3cmp10PartialOrd2ltECsibhcYuwTAtB_13typst_realize.exit.1.i.i

.preheader.1.i.i.preheader:                       ; preds = %.lr.ph.1.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.cg, ptr noundef nonnull align 16 dereferenceable(16) %i.ch, i64 16, i1 false), !alias.scope !1685, !noalias !1686
  %i.cj = icmp eq i64 %.sroa.05.08.1.i.i, 1
  br i1 %i.cj, label %._crit_edge167, label %.lr.ph166

.preheader.1.i.i:                                 ; preds = %.lr.ph166
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.0.0.i41.1.i.i165, ptr noundef nonnull align 16 dereferenceable(16) %i.cl, i64 16, i1 false), !alias.scope !1685, !noalias !1686
  %i.ck = icmp eq ptr %i.cl, %i.cd
  br i1 %i.ck, label %._crit_edge167, label %.lr.ph166

.lr.ph166:                                        ; preds = %.preheader.1.i.i.preheader, %.preheader.1.i.i
  %.sroa.0.0.i41.1.i.i165 = phi ptr [ %i.cl, %.preheader.1.i.i ], [ %i.ch, %.preheader.1.i.i.preheader ] ; 3 uses
  %i.cl = getelementptr inbounds i8, ptr %.sroa.0.0.i41.1.i.i165, i64 -16 ; 4 uses
  %.val8.i42.1.i.i = load i128, ptr %i.cl, align 16, !alias.scope !1685, !noalias !1686, !noundef !11
  %i.cm = icmp ult i128 %.val9.i40.1.i.i, %.val8.i42.1.i.i
  br i1 %i.cm, label %.preheader.1.i.i, label %._crit_edge167

._crit_edge167:                                   ; preds = %.preheader.1.i.i, %.lr.ph166, %.preheader.1.i.i.preheader
  %.sroa.0.0.i41.lcssa.1.i.i = phi ptr [ %i.cd, %.preheader.1.i.i.preheader ], [ %i.cd, %.preheader.1.i.i ], [ %.sroa.0.0.i41.1.i.i165, %.lr.ph166 ]
  store i128 %.val9.i40.1.i.i, ptr %.sroa.0.0.i41.lcssa.1.i.i, align 16, !alias.scope !1685, !noalias !1688
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyNvYB18_NtNtBa_3cmp10PartialOrd2ltECsibhcYuwTAtB_13typst_realize.exit.1.i.i

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyNvYB18_NtNtBa_3cmp10PartialOrd2ltECsibhcYuwTAtB_13typst_realize.exit.1.i.i: ; preds = %._crit_edge167, %.lr.ph.1.i.i
  %i.cn = add nuw nsw i64 %.sroa.05.08.1.i.i, 1   ; 2 uses
  %exitcond.1.not.i.i = icmp eq i64 %i.cn, %i.ca
  br i1 %exitcond.1.not.i.i, label %.loopexit.1.i.i, label %.lr.ph.1.i.i

.loopexit.1.i.i:                                  ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyNvYB18_NtNtBa_3cmp10PartialOrd2ltECsibhcYuwTAtB_13typst_realize.exit.1.i.i, %.loopexit.i.i
  %i.co = add nsw i64 %.sroa.15.0.lcssa, -1       ; 2 uses
  %i.cp = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.lcssa, i64 %i.co
  %i.cq = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.co
  %i.cr = getelementptr i8, ptr %i.cd, i64 -16
  br label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i
  %i.cs = getelementptr i8, ptr %i.cz, i64 16     ; 2 uses
  %i.ct = getelementptr i8, ptr %i.cy, i64 16
  %5 = and i64 %.sroa.15.0.lcssa, 1
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %bb.i, label %bb.h

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.loopexit.1.i.i
  %.sroa.0.010.i.i.i = phi ptr [ %i.cv, %.lr.ph.i.i.i ], [ %.sroa.0.0.lcssa, %.loopexit.1.i.i ] ; 2 uses
  %.sroa.04.09.i.i.i = phi i64 [ %i.cu, %.lr.ph.i.i.i ], [ 0, %.loopexit.1.i.i ]
  %.sroa.06.08.i.i.i = phi ptr [ %.sroa.sel4.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, %.lr.ph.i.i.i ], [ %i.g, %.loopexit.1.i.i ] ; 3 uses
  %.sroa.011.07.i.i.i = phi ptr [ %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, %.lr.ph.i.i.i ], [ %i.cd, %.loopexit.1.i.i ] ; 3 uses
  %.sroa.015.06.i.i.i = phi ptr [ %i.cz, %.lr.ph.i.i.i ], [ %i.cr, %.loopexit.1.i.i ] ; 3 uses
  %.sroa.017.05.i.i.i = phi ptr [ %i.cy, %.lr.ph.i.i.i ], [ %i.cq, %.loopexit.1.i.i ] ; 3 uses
  %.sroa.019.04.i.i.i = phi ptr [ %i.da, %.lr.ph.i.i.i ], [ %i.cp, %.loopexit.1.i.i ] ; 2 uses
  %i.cu = add nuw nsw i64 %.sroa.04.09.i.i.i, 1   ; 2 uses
  %.sroa.011.0.val.i.i.i = load i128, ptr %.sroa.011.07.i.i.i, align 16, !alias.scope !1689, !noalias !1686, !noundef !11
  %.sroa.06.0.val.i.i.i = load i128, ptr %.sroa.06.08.i.i.i, align 16, !alias.scope !1689, !noalias !1686, !noundef !11
  %.not.i = icmp ult i128 %.sroa.011.0.val.i.i.i, %.sroa.06.0.val.i.i.i ; 3 uses
  %..i21.i.i.i = select i1 %.not.i, ptr %.sroa.011.07.i.i.i, ptr %.sroa.06.08.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.0.010.i.i.i, ptr noundef nonnull align 16 dereferenceable(16) %..i21.i.i.i, i64 16, i1 false), !alias.scope !1687, !noalias !1690
  %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = select i1 %.not.i, i64 16, i64 0
  %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.011.07.i.i.i, i64 %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx ; 4 uses
  %.sroa.sel4.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = select i1 %.not.i, i64 0, i64 16
  %.sroa.sel4.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i.i.i, i64 %.sroa.sel4.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx ; 5 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i, i64 16 ; 2 uses
  %.sroa.017.0.val.i.i.i = load i128, ptr %.sroa.017.05.i.i.i, align 16, !alias.scope !1689, !noalias !1686, !noundef !11
  %.sroa.015.0.val.i.i.i = load i128, ptr %.sroa.015.06.i.i.i, align 16, !alias.scope !1689, !noalias !1686, !noundef !11
  %i.cw = icmp ult i128 %.sroa.017.0.val.i.i.i, %.sroa.015.0.val.i.i.i ; 3 uses
  %..i.i.i.i = select i1 %i.cw, ptr %.sroa.015.06.i.i.i, ptr %.sroa.017.05.i.i.i
  %i.cx = xor i1 %i.cw, true
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.019.04.i.i.i, ptr noundef nonnull align 16 dereferenceable(16) %..i.i.i.i, i64 16, i1 false), !alias.scope !1687, !noalias !1691
  %.neg.i.i.i.i = sext i1 %i.cx to i64
  %i.cy = getelementptr [16 x i8], ptr %.sroa.017.05.i.i.i, i64 %.neg.i.i.i.i ; 2 uses
  %.neg13.i.i.i.i = sext i1 %i.cw to i64
  %i.cz = getelementptr [16 x i8], ptr %.sroa.015.06.i.i.i, i64 %.neg13.i.i.i.i ; 2 uses
  %i.da = getelementptr inbounds i8, ptr %.sroa.019.04.i.i.i, i64 -16
  %exitcond.not.i.i.i = icmp eq i64 %i.cu, %i.l
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.h:                                             ; preds = %._crit_edge.i.i.i
  %.not23.i = icmp ult ptr %.sroa.sel4.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, %i.cs ; 3 uses
  %.sroa.06.0..sroa.011.0.i.i.i = select i1 %.not23.i, ptr %.sroa.sel4.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, ptr %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.cv, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.06.0..sroa.011.0.i.i.i, i64 16, i1 false), !alias.scope !1687
  %.sroa.sel16.idx.i.sroa.sel.idx.sroa.sel.idx = select i1 %.not23.i, i64 16, i64 0
  %.sroa.sel16.idx.i.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel4.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, i64 %.sroa.sel16.idx.i.sroa.sel.idx.sroa.sel.idx
  %.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx = select i1 %.not23.i, i64 0, i64 16
  %.sroa.sel.idx.i.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, i64 %.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i.i.i
  %.sroa.011.1.i.i.i = phi ptr [ %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, %._crit_edge.i.i.i ], [ %.sroa.sel.idx.i.sroa.sel.idx.sroa.sel, %bb.h ]
  %.sroa.06.1.i.i.i = phi ptr [ %.sroa.sel4.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, %._crit_edge.i.i.i ], [ %.sroa.sel16.idx.i.sroa.sel.idx.sroa.sel, %bb.h ]
  %i.db = icmp ne ptr %.sroa.06.1.i.i.i, %i.cs
  %i.dc = icmp ne ptr %.sroa.011.1.i.i.i, %i.ct
  %or.cond.i.i.i = select i1 %i.db, i1 true, i1 %i.dc, !prof !19
  br i1 %or.cond.i.i.i, label %bb.j, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort18small_sort_generalNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyNvYB1f_NtNtBa_3cmp10PartialOrd2ltECsibhcYuwTAtB_13typst_realize.exit, !prof !19

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #27
          to label %.noexc.i.i unwind label %bb.k, !noalias !1686

.noexc.i.i:                                       ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.dd = landingpad { ptr, i32 }
          cleanup
  %i.de = shl nuw nsw i64 %.sroa.15.0.lcssa, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %.sroa.0.0.lcssa, ptr nonnull align 16 %i.g, i64 %i.de, i1 false), !alias.scope !1687, !noalias !1692
  resume { ptr, i32 } %i.dd

.lr.ph.i.i:                                       ; preds = %bb.g, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyNvYB18_NtNtBa_3cmp10PartialOrd2ltECsibhcYuwTAtB_13typst_realize.exit.i.i
  %.sroa.05.08.i.i = phi i64 [ %i.dn, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyNvYB18_NtNtBa_3cmp10PartialOrd2ltECsibhcYuwTAtB_13typst_realize.exit.i.i ], [ %.sroa.0.0.i.i, %bb.g ] ; 4 uses
  %i.df = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.lcssa, i64 %.sroa.05.08.i.i
  %.idx = shl nuw nsw i64 %.sroa.05.08.i.i, 4
  %i.dg = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.dg, ptr noundef nonnull align 16 dereferenceable(16) %i.df, i64 16, i1 false), !alias.scope !1687
  %i.dh = getelementptr inbounds i8, ptr %i.dg, i64 -16 ; 3 uses
  %.val9.i40.i.i = load i128, ptr %i.dg, align 16, !alias.scope !1685, !noalias !1686, !noundef !11 ; 3 uses
  %.val10.i.i.i = load i128, ptr %i.dh, align 16, !alias.scope !1685, !noalias !1686, !noundef !11
  %i.di = icmp ult i128 %.val9.i40.i.i, %.val10.i.i.i
  br i1 %i.di, label %.preheader.i.i.preheader, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyNvYB18_NtNtBa_3cmp10PartialOrd2ltECsibhcYuwTAtB_13typst_realize.exit.i.i

.preheader.i.i.preheader:                         ; preds = %.lr.ph.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.dg, ptr noundef nonnull align 16 dereferenceable(16) %i.dh, i64 16, i1 false), !alias.scope !1685, !noalias !1686
  %i.dj = icmp eq i64 %.sroa.05.08.i.i, 1
  br i1 %i.dj, label %._crit_edge162, label %.lr.ph161

.preheader.i.i:                                   ; preds = %.lr.ph161
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.0.0.i41.i.i160, ptr noundef nonnull align 16 dereferenceable(16) %i.dl, i64 16, i1 false), !alias.scope !1685, !noalias !1686
  %i.dk = icmp eq ptr %i.dl, %i.g
  br i1 %i.dk, label %._crit_edge162, label %.lr.ph161

.lr.ph161:                                        ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %.sroa.0.0.i41.i.i160 = phi ptr [ %i.dl, %.preheader.i.i ], [ %i.dh, %.preheader.i.i.preheader ] ; 3 uses
  %i.dl = getelementptr inbounds i8, ptr %.sroa.0.0.i41.i.i160, i64 -16 ; 4 uses
  %.val8.i42.i.i = load i128, ptr %i.dl, align 16, !alias.scope !1685, !noalias !1686, !noundef !11
  %i.dm = icmp ult i128 %.val9.i40.i.i, %.val8.i42.i.i
  br i1 %i.dm, label %.preheader.i.i, label %._crit_edge162

._crit_edge162:                                   ; preds = %.preheader.i.i, %.lr.ph161, %.preheader.i.i.preheader
  %.sroa.0.0.i41.lcssa.i.i = phi ptr [ %i.g, %.preheader.i.i.preheader ], [ %i.g, %.preheader.i.i ], [ %.sroa.0.0.i41.i.i160, %.lr.ph161 ]
  store i128 %.val9.i40.i.i, ptr %.sroa.0.0.i41.lcssa.i.i, align 16, !alias.scope !1685, !noalias !1688
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyNvYB18_NtNtBa_3cmp10PartialOrd2ltECsibhcYuwTAtB_13typst_realize.exit.i.i

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyNvYB18_NtNtBa_3cmp10PartialOrd2ltECsibhcYuwTAtB_13typst_realize.exit.i.i: ; preds = %._crit_edge162, %.lr.ph.i.i
  %i.dn = add nuw nsw i64 %.sroa.05.08.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.dn, %i.l
  br i1 %exitcond.not.i.i, label %.loopexit.i.i, label %.lr.ph.i.i

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort18small_sort_generalNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyNvYB1f_NtNtBa_3cmp10PartialOrd2ltECsibhcYuwTAtB_13typst_realize.exit: ; preds = %._crit_edge, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1683
  br label %bb.m

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.sroa.0.091.lcssa = phi ptr [ %0, %.lr.ph.preheader ], [ %.sroa.0.0.be, %.lr.ph ]
  %.sroa.15.090.lcssa = phi i64 [ %1, %.lr.ph.preheader ], [ %.sroa.15.0.be, %.lr.ph ]
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort8unstable8heapsort8heapsortNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyNvYB15_NtNtBa_3cmp10PartialOrd2ltECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 16 %.sroa.0.091.lcssa, i64 noundef %.sroa.15.090.lcssa, ptr noalias nofree nonnull poison) #33
  br label %bb.m

.lr.ph158:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.026.088157 = phi i32 [ %i.do, %.lr.ph ], [ %3, %.lr.ph.preheader ]
  %.sroa.023.089156 = phi ptr [ %.sroa.023.0.be, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 3 uses
  %.sroa.15.090155 = phi i64 [ %.sroa.15.0.be, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 9 uses
  %.sroa.0.091154 = phi ptr [ %.sroa.0.0.be, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 28 uses
  %i.do = add nsw i32 %.sroa.026.088157, -1       ; 3 uses
  %i.dp = lshr i64 %.sroa.15.090155, 3            ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.dp, 6
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.0.091154, i64 %.idx.i ; 3 uses
  %.idx2.i = mul nuw nsw i64 %i.dp, 112
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.0.091154, i64 %.idx2.i ; 3 uses
  %i.ds = icmp samesign ult i64 %.sroa.15.090155, 64
  br i1 %i.ds, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot7median3NtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyNvYBZ_NtNtBa_3cmp10PartialOrd2ltECsibhcYuwTAtB_13typst_realize.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph158
  %i.dt = tail call fastcc noundef ptr @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot11median3_recNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyNvYB14_NtNtBa_3cmp10PartialOrd2ltECsibhcYuwTAtB_13typst_realize(ptr noundef nonnull readonly align 16 %.sroa.0.091154, ptr noundef readonly %i.dq, ptr noundef readonly %i.dr, i64 noundef %i.dp)
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot12choose_pivotNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyNvYB15_NtNtBa_3cmp10PartialOrd2ltECsibhcYuwTAtB_13typst_realize.exit

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot7median3NtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyNvYBZ_NtNtBa_3cmp10PartialOrd2ltECsibhcYuwTAtB_13typst_realize.exit.i: ; preds = %.lr.ph158
  %.val6.i = load i128, ptr %.sroa.0.091154, align 16, !alias.scope !1693, !noundef !11 ; 2 uses
  %.val7.i = load i128, ptr %i.dq, align 16, !alias.scope !1693, !noundef !11 ; 2 uses
  %i.du = icmp ult i128 %.val6.i, %.val7.i        ; 2 uses
  %.val5.i = load i128, ptr %i.dr, align 16, !alias.scope !1693, !noundef !11 ; 2 uses
  %i.dv = icmp ult i128 %.val6.i, %.val5.i
  %i.dw = xor i1 %i.du, %i.dv
  %i.dx = icmp ult i128 %.val7.i, %.val5.i
  %i.dy = xor i1 %i.du, %i.dx
  %..i.i = select i1 %i.dy, ptr %i.dr, ptr %i.dq
  %.sroa.0.0.i.i34 = select i1 %i.dw, ptr %.sroa.0.091154, ptr %..i.i
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot12choose_pivotNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyNvYB15_NtNtBa_3cmp10PartialOrd2ltECsibhcYuwTAtB_13typst_realize.exit

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot12choose_pivotNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyNvYB15_NtNtBa_3cmp10PartialOrd2ltECsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.l, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot7median3NtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyNvYBZ_NtNtBa_3cmp10PartialOrd2ltECsibhcYuwTAtB_13typst_realize.exit.i
  %.sroa.0.0.i.sink.i = phi ptr [ %.sroa.0.0.i.i34, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot7median3NtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyNvYBZ_NtNtBa_3cmp10PartialOrd2ltECsibhcYuwTAtB_13typst_realize.exit.i ], [ %i.dt, %bb.l ]
  %i.dz = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.ea = ptrtoint ptr %.sroa.0.091154 to i64
  %i.eb = sub nuw i64 %i.dz, %i.ea                ; 3 uses
  %.sroa.0.0.i = lshr exact i64 %i.eb, 4
  %i.ec = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.15.090155
  tail call void @llvm.assume(i1 %i.ec)
  %.not = icmp eq ptr %.sroa.023.089156, null
  br i1 %.not, label %bb.n, label %bb.p

bb.m:                                             ; preds = %.lr.ph._crit_edge, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort18small_sort_generalNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyNvYB1f_NtNtBa_3cmp10PartialOrd2ltECsibhcYuwTAtB_13typst_realize.exit
  ret void

bb.n:                                             ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot12choose_pivotNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyNvYB15_NtNtBa_3cmp10PartialOrd2ltECsibhcYuwTAtB_13typst_realize.exit, %bb.p
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1694)
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.0.091154, i64 %i.eb ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.f, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.0.091154, i64 16, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.0.091154, ptr noundef nonnull align 16 dereferenceable(16) %i.ed, i64 16, i1 false), !alias.scope !1695
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ed, ptr noundef nonnull align 16 dereferenceable(16) %i.f, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.0.091154, i64 16 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1696)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1697)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1698
  %i.ef = load i128, ptr %i.ee, align 16, !alias.scope !1699, !noalias !1697, !noundef !11
  store i128 %i.ef, ptr %i.e, align 16, !noalias !1698
  %i.eg = getelementptr [16 x i8], ptr %.sroa.0.091154, i64 %.sroa.15.090155 ; 2 uses
  %i.eh = getelementptr i8, ptr %i.eg, i64 -16    ; 2 uses
  %.sroa.13.030.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.091154, i64 32 ; 3 uses
  %i.ei = icmp ult ptr %.sroa.13.030.i.i, %i.eh
  %.val1.i.pre.i.i = load i128, ptr %.sroa.0.091154, align 16, !alias.scope !1700, !noalias !1696 ; 3 uses
  br i1 %i.ei, label %.lr.ph.i.i38, label %.preheader.i.i36.preheader

.preheader.i.i36.preheader:                       ; preds = %.lr.ph.i.i38, %bb.n
  %.sroa.23.1.i.i.ph = phi i64 [ 0, %bb.n ], [ %i.ew, %.lr.ph.i.i38 ]
  %.sroa.13.1.i.i.ph = phi ptr [ %.sroa.13.030.i.i, %bb.n ], [ %.sroa.13.0.i.i, %.lr.ph.i.i38 ]
  %.sroa.015.1.i.i.ph = phi ptr [ %i.ee, %bb.n ], [ %i.es, %.lr.ph.i.i38 ]
  br label %.preheader.i.i36

.preheader.i.i36:                                 ; preds = %.preheader.i.i36.preheader, %.preheader.i.i36
  %.sroa.23.1.i.i = phi i64 [ %i.en, %.preheader.i.i36 ], [ %.sroa.23.1.i.i.ph, %.preheader.i.i36.preheader ] ; 2 uses
  %.sroa.13.1.i.i = phi ptr [ %.sroa.13.1.sroa.gep.i.i, %.preheader.i.i36 ], [ %.sroa.13.1.i.i.ph, %.preheader.i.i36.preheader ] ; 4 uses
  %.sroa.015.1.i.i = phi ptr [ %.sroa.13.1.i.i, %.preheader.i.i36 ], [ %.sroa.015.1.i.i.ph, %.preheader.i.i36.preheader ]
  %i.ej = icmp eq ptr %.sroa.13.1.i.i, %i.eg      ; 2 uses
  %.sroa.01.0.i.i = select i1 %i.ej, ptr %i.e, ptr %.sroa.13.1.i.i ; 2 uses
  %.val.i.i.i37 = load i128, ptr %.sroa.01.0.i.i, align 16, !noalias !1701, !noundef !11
  %i.ek = icmp ult i128 %.val.i.i.i37, %.val1.i.pre.i.i
  %i.el = getelementptr inbounds nuw [16 x i8], ptr %i.ee, i64 %.sroa.23.1.i.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.015.1.i.i, ptr noundef nonnull align 16 dereferenceable(16) %i.el, i64 16, i1 false), !alias.scope !1699, !noalias !1701
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.el, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.01.0.i.i, i64 16, i1 false), !noalias !1701
  %i.em = zext i1 %i.ek to i64
  %i.en = add i64 %.sroa.23.1.i.i, %i.em          ; 5 uses
end_hunk_4
begin_hunk_5_@_RNvCsibhcYuwTAtB_13typst_realize23find_regex_match_in_str:bb.a
  switch i64 %i.ad, label %bb.w [
    i64 0, label %.backedge
    i64 1, label %bb.x
    i64 2, label %bb.y
  ]

bb.h:                                             ; preds = %.lr.ph.i
  %.not45 = icmp eq ptr %.sroa.019.0.ph, null
  br i1 %.not45, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0.ph) ]
  %i.ae = icmp ugt i64 %.sroa.624.0.ph, %.sroa.7.0.ph
  %i.af = icmp ugt i64 %.sroa.7.0.ph, %2
  %or.cond.i.i = or i1 %i.af, %i.ae
  br i1 %or.cond.i.i, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread3.i, label %bb.j, !prof !3230

bb.j:                                             ; preds = %bb.i
  %i.ag = icmp eq i64 %.sroa.624.0.ph, %2
  br i1 %i.ag, label %bb.q, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = icmp eq i64 %.sroa.624.0.ph, 0
  br i1 %i.ah, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.m, %bb.k
  %i.ai = icmp eq i64 %.sroa.7.0.ph, %2
  br i1 %i.ai, label %bb.q, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.i

bb.m:                                             ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.019.0.ph, i64 %.sroa.624.0.ph
  %i.ak = load i8, ptr %i.aj, align 1, !alias.scope !3231, !noalias !3232, !noundef !11
  %i.al = icmp sgt i8 %i.ak, -65
  br i1 %i.al, label %bb.l, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread3.i, !prof !3233

_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.i: ; preds = %bb.l
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.019.0.ph, i64 %.sroa.7.0.ph
  %i.an = load i8, ptr %i.am, align 1, !alias.scope !3231, !noalias !3232, !noundef !11
  %i.ao = icmp sgt i8 %i.an, -65
  br i1 %i.ao, label %bb.q, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread3.i, !prof !31

_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread3.i: ; preds = %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.i, %bb.m, %bb.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.019.0.ph, i64 noundef %2, i64 noundef %.sroa.624.0.ph, i64 noundef %.sroa.7.0.ph, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @63) #27
          to label %.noexc50 unwind label %.loopexit.split-lp

.noexc50:                                         ; preds = %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread3.i
  unreachable

bb.n:                                             ; preds = %bb.h
  store ptr null, ptr %0, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.v, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.ap = load ptr, ptr %i.h, align 8, !alias.scope !3234, !nonnull !11, !noundef !11
  %i.aq = icmp eq ptr %i.ap, @_RNvCsieRLDaoupkO_8thin_vec12EMPTY_HEADER
  br i1 %i.aq, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6xpQEr8gLsQ_11typst_utils6bitset11SmallBitSetECsibhcYuwTAtB_13typst_realize.exit51, label %bb.p, !prof !21

bb.p:                                             ; preds = %bb.o
  call void @_RINvNvXs6_CsieRLDaoupkO_8thin_vecINtB8_7ThinVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop18drop_non_singletonjECsdaEETE4DqmE_13typst_library(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.h) #33
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6xpQEr8gLsQ_11typst_utils6bitset11SmallBitSetECsibhcYuwTAtB_13typst_realize.exit51

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6xpQEr8gLsQ_11typst_utils6bitset11SmallBitSetECsibhcYuwTAtB_13typst_realize.exit51: ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void

bb.q:                                             ; preds = %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.i, %bb.l, %bb.j
  %i.ar = sub nuw i64 %.sroa.7.0.ph, %.sroa.624.0.ph ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.019.0.ph, i64 %.sroa.624.0.ph ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.at = icmp samesign ugt i64 %i.ar, 15
  br i1 %i.at, label %.lr.ph.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.f, i8 0, i64 15, i1 false), !noalias !3235
  %.not.i.i = icmp eq i64 %.sroa.7.0.ph, %.sroa.624.0.ph
  br i1 %.not.i.i, label %bb.u, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.f, ptr nonnull readonly align 1 %i.as, i64 range(i64 0, -9223372036854775808) %i.ar, i1 false), !noalias !3236
  %.0..0..0..sroa.063.0.copyload64.pre = load ptr, ptr %i.f, align 8, !noalias !3237
  %.8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.8..8..8..sroa.565.0.copyload67.pre = load i56, ptr %.8..8..8..sroa_idx, align 8, !noalias !3237
  %i.au = zext i56 %.8..8..8..sroa.565.0.copyload67.pre to i64
  br label %bb.u

.lr.ph.i.i.i:                                     ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3238
  store ptr inttoptr (i64 16 to ptr), ptr %i.e, align 8, !noalias !3238
  %i.av = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store i64 0, ptr %i.av, align 8, !noalias !3238
  call void @llvm.experimental.noalias.scope.decl(metadata !3239)
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVechE7reserveCsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e, i64 noundef range(i64 0, -9223372036854775808) %i.ar)
          to label %_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechEINtNtCs3oUPovFnLWP_4core7convert4FromRShE4fromCsibhcYuwTAtB_13typst_realize.exit.i unwind label %bb.s, !noalias !3238

bb.s:                                             ; preds = %.lr.ph.i.i.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  %.val.i.i = load ptr, ptr %i.e, align 8, !noalias !3238, !nonnull !11, !noundef !11
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVechEECsibhcYuwTAtB_13typst_realize(ptr nonnull %.val.i.i) #31
          to label %.body unwind label %bb.t, !noalias !3238

bb.t:                                             ; preds = %bb.s
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28, !noalias !3238
  unreachable

_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechEINtNtCs3oUPovFnLWP_4core7convert4FromRShE4fromCsibhcYuwTAtB_13typst_realize.exit.i: ; preds = %.lr.ph.i.i.i
  %i.ay = load ptr, ptr %i.e, align 8, !alias.scope !3239, !noalias !3240, !nonnull !11, !noundef !11 ; 2 uses
  %.promoted.i.i.i = load i64, ptr %i.av, align 8, !alias.scope !3239, !noalias !3240 ; 2 uses
  %scevgep.i.i.i = getelementptr nuw i8, ptr %i.ay, i64 %.promoted.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %scevgep.i.i.i, ptr nonnull readonly align 1 %i.as, i64 range(i64 0, -9223372036854775808) %i.ar, i1 false), !noalias !3241
  %i.az = add i64 %.promoted.i.i.i, %i.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3238
  br label %bb.v

bb.u:                                             ; preds = %.lr.ph.preheader.i.i, %bb.r
  %.8..8..sroa.565.0.copyload67 = phi i64 [ %i.au, %.lr.ph.preheader.i.i ], [ 0, %bb.r ]
  %.0..0..sroa.063.0.copyload64 = phi ptr [ %.0..0..0..sroa.063.0.copyload64.pre, %.lr.ph.preheader.i.i ], [ null, %bb.r ]
  %.sroa.565.15.insert.ext = shl nuw nsw i64 %i.ar, 56
  %.sroa.565.15.insert.shift = or disjoint i64 %.sroa.565.15.insert.ext, %.8..8..sroa.565.0.copyload67
  %.sroa.565.15.insert.insert = or disjoint i64 %.sroa.565.15.insert.shift, -9223372036854775808
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechEINtNtCs3oUPovFnLWP_4core7convert4FromRShE4fromCsibhcYuwTAtB_13typst_realize.exit.i
  %.sroa.565.0 = phi i64 [ %i.az, %_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechEINtNtCs3oUPovFnLWP_4core7convert4FromRShE4fromCsibhcYuwTAtB_13typst_realize.exit.i ], [ %.sroa.565.15.insert.insert, %bb.u ]
  %.sroa.063.0 = phi ptr [ %i.ay, %_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechEINtNtCs3oUPovFnLWP_4core7convert4FromRShE4fromCsibhcYuwTAtB_13typst_realize.exit.i ], [ %.0..0..sroa.063.0.copyload64, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.9.0.ph, ptr %.sroa.434.0..sroa_idx, align 8
  %.sroa.535.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.624.0.ph, ptr %.sroa.535.0..sroa_idx, align 8
  %.sroa.636.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.sroa.063.0, ptr %.sroa.636.0..sroa_idx, align 8
  %.sroa.636.sroa.4.0..sroa.636.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.565.0, ptr %.sroa.636.sroa.4.0..sroa.636.0..sroa_idx.sroa_idx, align 8
  %.sroa.737.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.8.0.ph, ptr %.sroa.737.0..sroa_idx, align 8
  br label %bb.o

default.unreachable305:                           ; preds = %bb.as
  unreachable

bb.w:                                             ; preds = %bb.g
  unreachable

bb.x:                                             ; preds = %bb.g
  %i.ba = add i64 %.sroa.0.0.ph524, 1             ; 2 uses
  %i.bb = getelementptr inbounds i8, ptr %.lcssa.i, i64 -80
  %i.bc = load i64, ptr %i.bb, align 16, !range !25, !noundef !11
  %cond = icmp eq i64 %i.bc, 4
  br i1 %cond, label %bb.z, label %.outer518.backedge

.outer518.backedge:                               ; preds = %bb.x, %bb.aq, %bb.aw, %bb.ar
  br label %.outer518

bb.y:                                             ; preds = %bb.g
  %i.bd = getelementptr inbounds i8, ptr %.lcssa.i, i64 -104
  %i.be = load i64, ptr %i.bd, align 8, !noundef !11
  invoke void @_RNvMs1_NtCs6xpQEr8gLsQ_11typst_utils6bitsetNtB5_11SmallBitSet6insert(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.h, i64 noundef %i.be)
          to label %.backedge unwind label %.loopexit85.loopexit

.backedge:                                        ; preds = %bb.y, %bb.g
  br label %bb.b

bb.z:                                             ; preds = %bb.x
  %i.bf = getelementptr inbounds i8, ptr %.lcssa.i, i64 -72
  %.val = load ptr, ptr %i.bf, align 8, !nonnull !11, !noundef !11 ; 5 uses
  %i.bg = getelementptr i8, ptr %.lcssa.i, i64 -64
  %.val49 = load ptr, ptr %i.bg, align 16         ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3242
  store i32 0, ptr %i.d, align 8, !noalias !3242
  store ptr %1, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !3242
  store i64 %2, ptr %.sroa.5.0..sroa_idx3.i, align 8, !noalias !3242
  store i64 0, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !3242
  store i64 %2, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !3242
  store i8 0, ptr %.sroa.11.0..sroa_idx.i, align 8, !noalias !3242
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3242
  call void @llvm.experimental.noalias.scope.decl(metadata !3243)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3242
  %i.bh = getelementptr inbounds nuw i8, ptr %.val, i64 32
  call void @llvm.experimental.noalias.scope.decl(metadata !3244)
  %.pre.pre.i.i = load ptr, ptr %i.bh, align 8, !alias.scope !3244, !noalias !3245
  %i.bi = getelementptr inbounds nuw i8, ptr %.pre.pre.i.i, i64 168
  %i.bj = load ptr, ptr %i.bi, align 8, !noalias !3246 ; 6 uses
  %i.bk = load i64, ptr %i.bj, align 8, !range !28, !noalias !3246, !noundef !11
  %i.bl = trunc nuw i64 %i.bk to i1
  br i1 %i.bl, label %bb.aa, label %_RNvMs4_NtNtCs7lTeezpKIYd_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread.i.i

bb.aa:                                            ; preds = %bb.z
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !noalias !3246
  %i.bo = icmp ult i64 %2, %i.bn
  br i1 %i.bo, label %_RNvMs4_NtNtCs7lTeezpKIYd_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread13.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 60
  %i.bq = load i32, ptr %i.bp, align 4, !noalias !3246, !noundef !11
  %4 = and i32 %i.bq, 1
  %.not8.i.i.i = icmp eq i32 %4, 0
  br i1 %.not8.i.i.i, label %_RNvMs4_NtNtCs7lTeezpKIYd_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.br = getelementptr inbounds nuw i8, ptr %i.bj, i64 64
  %i.bs = load i32, ptr %i.br, align 8, !noalias !3246, !noundef !11
  %i.bt = and i32 %i.bs, 2
  %.not9.i.i.i = icmp eq i32 %i.bt, 0
  br i1 %.not9.i.i.i, label %_RNvMs4_NtNtCs7lTeezpKIYd_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bv = load i64, ptr %i.bu, align 8, !range !28, !noalias !3246, !noundef !11
  %i.bw = trunc nuw i64 %i.bv to i1
  br i1 %i.bw, label %_RNvMs4_NtNtCs7lTeezpKIYd_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.i.i, label %_RNvMs4_NtNtCs7lTeezpKIYd_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread.i.i

_RNvMs4_NtNtCs7lTeezpKIYd_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.i.i: ; preds = %bb.ad
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.by = load i64, ptr %i.bx, align 8, !noalias !3246
  %i.bz = icmp ugt i64 %2, %i.by
  br i1 %i.bz, label %_RNvMs4_NtNtCs7lTeezpKIYd_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread13.i.i, label %_RNvMs4_NtNtCs7lTeezpKIYd_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread.i.i

_RNvMs4_NtNtCs7lTeezpKIYd_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread.i.i: ; preds = %_RNvMs4_NtNtCs7lTeezpKIYd_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.i.i, %bb.ad, %bb.ac, %bb.ab, %bb.z
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val49) ]
  %i.ca = load i8, ptr %i.k, align 8, !range !18, !noalias !3247, !noundef !11
  %i.cb = trunc nuw i8 %i.ca to i1
  br i1 %i.cb, label %._RNvYNCNKNvNtNtNtCs7lTeezpKIYd_14regex_automata4util4pool5inner9THREAD_ID0s_0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1j_6option6OptionQIB1Y_jEEEE9call_onceCsibhcYuwTAtB_13typst_realize.exit_crit_edge.i.i.i.i.i, label %bb.ae, !prof !21

._RNvYNCNKNvNtNtNtCs7lTeezpKIYd_14regex_automata4util4pool5inner9THREAD_ID0s_0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1j_6option6OptionQIB1Y_jEEEE9call_onceCsibhcYuwTAtB_13typst_realize.exit_crit_edge.i.i.i.i.i: ; preds = %_RNvMs4_NtNtCs7lTeezpKIYd_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread.i.i
  %.val.pre.i.i.i.i.i = load i64, ptr %i.j, align 8, !noalias !3248
  br label %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyjE4withNCNvMs2_NtNtNtCs7lTeezpKIYd_14regex_automata4util4pool5innerINtB19_4PoolNtNtNtB1f_4meta5regex5CacheINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnuEp6OutputB2b_NtNtB3j_6marker4SendNtNtNtB3j_5panic11unwind_safe13RefUnwindSafeNtB4s_10UnwindSafeNtB48_4SyncEL_EE3get0jECsibhcYuwTAtB_13typst_realize.exit.i.i.i

bb.ae:                                            ; preds = %_RNvMs4_NtNtCs7lTeezpKIYd_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread.i.i
  %i.cc = atomicrmw add ptr @_RNvNtNtNtCs7lTeezpKIYd_14regex_automata4util4pool5inner7COUNTER, i64 1 monotonic, align 8, !noalias !3249 ; 3 uses
  %i.cd = icmp eq i64 %i.cc, 0
  br i1 %i.cd, label %bb.af, label %_RINvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native4lazyINtB6_7StoragejzE16get_or_init_slowNvNvNtNtNtCs7lTeezpKIYd_14regex_automata4util4pool5inner9THREAD_ID27___rust_std_internal_init_fnECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i, !prof !12

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @77, ptr noundef nonnull inttoptr (i64 87 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @78) #27
          to label %.noexc53 unwind label %.loopexit.split-lp

.noexc53:                                         ; preds = %bb.af
  unreachable

_RINvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native4lazyINtB6_7StoragejzE16get_or_init_slowNvNvNtNtNtCs7lTeezpKIYd_14regex_automata4util4pool5inner9THREAD_ID27___rust_std_internal_init_fnECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i: ; preds = %bb.ae
  store i64 %i.cc, ptr %i.j, align 8, !noalias !3249
  store i8 1, ptr %i.k, align 8, !noalias !3249
  br label %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyjE4withNCNvMs2_NtNtNtCs7lTeezpKIYd_14regex_automata4util4pool5innerINtB19_4PoolNtNtNtB1f_4meta5regex5CacheINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnuEp6OutputB2b_NtNtB3j_6marker4SendNtNtNtB3j_5panic11unwind_safe13RefUnwindSafeNtB4s_10UnwindSafeNtB48_4SyncEL_EE3get0jECsibhcYuwTAtB_13typst_realize.exit.i.i.i

_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyjE4withNCNvMs2_NtNtNtCs7lTeezpKIYd_14regex_automata4util4pool5innerINtB19_4PoolNtNtNtB1f_4meta5regex5CacheINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnuEp6OutputB2b_NtNtB3j_6marker4SendNtNtNtB3j_5panic11unwind_safe13RefUnwindSafeNtB4s_10UnwindSafeNtB48_4SyncEL_EE3get0jECsibhcYuwTAtB_13typst_realize.exit.i.i.i: ; preds = %_RINvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native4lazyINtB6_7StoragejzE16get_or_init_slowNvNvNtNtNtCs7lTeezpKIYd_14regex_automata4util4pool5inner9THREAD_ID27___rust_std_internal_init_fnECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i, %._RNvYNCNKNvNtNtNtCs7lTeezpKIYd_14regex_automata4util4pool5inner9THREAD_ID0s_0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1j_6option6OptionQIB1Y_jEEEE9call_onceCsibhcYuwTAtB_13typst_realize.exit_crit_edge.i.i.i.i.i
  %.val.i.i.i.i.i = phi i64 [ %.val.pre.i.i.i.i.i, %._RNvYNCNKNvNtNtNtCs7lTeezpKIYd_14regex_automata4util4pool5inner9THREAD_ID0s_0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1j_6option6OptionQIB1Y_jEEEE9call_onceCsibhcYuwTAtB_13typst_realize.exit_crit_edge.i.i.i.i.i ], [ %i.cc, %_RINvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native4lazyINtB6_7StoragejzE16get_or_init_slowNvNvNtNtNtCs7lTeezpKIYd_14regex_automata4util4pool5inner9THREAD_ID27___rust_std_internal_init_fnECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i ] ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.val49, i64 40 ; 2 uses
  %i.cf = load atomic i64, ptr %i.ce acquire, align 8, !noalias !3248 ; 2 uses
  %i.cg = icmp eq i64 %.val.i.i.i.i.i, %i.cf
  br i1 %i.cg, label %_RNvMs2_NtNtNtCs7lTeezpKIYd_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3m_10UnwindSafeNtB32_4SyncEL_EE3getCsibhcYuwTAtB_13typst_realize.exit.i.thread.i, label %_RNvMs2_NtNtNtCs7lTeezpKIYd_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3m_10UnwindSafeNtB32_4SyncEL_EE3getCsibhcYuwTAtB_13typst_realize.exit.i.i, !prof !21

_RNvMs2_NtNtNtCs7lTeezpKIYd_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3m_10UnwindSafeNtB32_4SyncEL_EE3getCsibhcYuwTAtB_13typst_realize.exit.i.thread.i: ; preds = %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyjE4withNCNvMs2_NtNtNtCs7lTeezpKIYd_14regex_automata4util4pool5innerINtB19_4PoolNtNtNtB1f_4meta5regex5CacheINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnuEp6OutputB2b_NtNtB3j_6marker4SendNtNtNtB3j_5panic11unwind_safe13RefUnwindSafeNtB4s_10UnwindSafeNtB48_4SyncEL_EE3get0jECsibhcYuwTAtB_13typst_realize.exit.i.i.i
  store atomic i64 1, ptr %i.ce release, align 8, !noalias !3248
  %i.ch = inttoptr i64 %.val.i.i.i.i.i to ptr
  store ptr %.val49, ptr %i.m, align 8, !noalias !3250
  store i64 1, ptr %i.b, align 8, !noalias !3250
  store ptr %i.ch, ptr %i.l, align 8, !noalias !3250
  store i8 0, ptr %i.n, align 8, !noalias !3250
  %i.ci = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8, !noalias !3250, !nonnull !11, !noundef !11
  %i.ck = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !noalias !3250, !nonnull !11, !align !13, !noundef !11 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cn = load i64, ptr %i.cm, align 8, !range !24, !invariant.load !11, !noalias !3251
  %i.co = add nsw i64 %i.cn, -1
  %i.cp = and i64 %i.co, -16
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  br label %bb.ag

_RNvMs2_NtNtNtCs7lTeezpKIYd_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3m_10UnwindSafeNtB32_4SyncEL_EE3getCsibhcYuwTAtB_13typst_realize.exit.i.i: ; preds = %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyjE4withNCNvMs2_NtNtNtCs7lTeezpKIYd_14regex_automata4util4pool5innerINtB19_4PoolNtNtNtB1f_4meta5regex5CacheINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnuEp6OutputB2b_NtNtB3j_6marker4SendNtNtNtB3j_5panic11unwind_safe13RefUnwindSafeNtB4s_10UnwindSafeNtB48_4SyncEL_EE3get0jECsibhcYuwTAtB_13typst_realize.exit.i.i.i
  invoke fastcc void @_RNvMs2_NtNtNtCs7lTeezpKIYd_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3m_10UnwindSafeNtB32_4SyncEL_EE8get_slowCsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %i.b, ptr noundef nonnull align 8 %.val49, i64 noundef %.val.i.i.i.i.i, i64 noundef %i.cf)
          to label %.noexc54 unwind label %.loopexit85.loopexit.split-lp

.noexc54:                                         ; preds = %_RNvMs2_NtNtNtCs7lTeezpKIYd_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3m_10UnwindSafeNtB32_4SyncEL_EE3getCsibhcYuwTAtB_13typst_realize.exit.i.i
  %.pre.i = load i64, ptr %i.b, align 8, !range !28, !noalias !3250
  %i.cs = trunc nuw i64 %.pre.i to i1
  %i.ct = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8, !noalias !3250, !nonnull !11, !noundef !11
  %i.cv = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8, !noalias !3250, !nonnull !11, !align !13, !noundef !11 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.cy = load i64, ptr %i.cx, align 8, !range !24, !invariant.load !11, !noalias !3251
  %i.cz = add nsw i64 %i.cy, -1
  %i.da = and i64 %i.cz, -16
  %i.db = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16 ; 2 uses
  br i1 %i.cs, label %.noexc54._crit_edge, label %bb.ah

.noexc54._crit_edge:                              ; preds = %.noexc54
  %.pre = load ptr, ptr %i.m, align 8, !noalias !3250
  br label %bb.ag

_RNvMs4_NtNtCs7lTeezpKIYd_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread13.i.i: ; preds = %_RNvMs4_NtNtCs7lTeezpKIYd_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.i.i, %bb.aa
  store i64 0, ptr %i.c, align 8, !alias.scope !3243, !noalias !3252
  br label %_RNvMs0_NtNtCs7lTeezpKIYd_14regex_automata4meta5regexNtB5_5Regex6search.exit.i

bb.ag:                                            ; preds = %.noexc54._crit_edge, %_RNvMs2_NtNtNtCs7lTeezpKIYd_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3m_10UnwindSafeNtB32_4SyncEL_EE3getCsibhcYuwTAtB_13typst_realize.exit.i.thread.i
  %i.dd = phi ptr [ %.val49, %_RNvMs2_NtNtNtCs7lTeezpKIYd_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3m_10UnwindSafeNtB32_4SyncEL_EE3getCsibhcYuwTAtB_13typst_realize.exit.i.thread.i ], [ %.pre, %.noexc54._crit_edge ]
  %i.de = phi ptr [ %i.cr, %_RNvMs2_NtNtNtCs7lTeezpKIYd_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3m_10UnwindSafeNtB32_4SyncEL_EE3getCsibhcYuwTAtB_13typst_realize.exit.i.thread.i ], [ %i.dc, %.noexc54._crit_edge ]
  %i.df = phi ptr [ %i.cl, %_RNvMs2_NtNtNtCs7lTeezpKIYd_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3m_10UnwindSafeNtB32_4SyncEL_EE3getCsibhcYuwTAtB_13typst_realize.exit.i.thread.i ], [ %i.cw, %.noexc54._crit_edge ]
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 48
  br label %bb.ai

bb.ah:                                            ; preds = %.noexc54
  %i.dh = load ptr, ptr %i.l, align 8, !noalias !3250, !nonnull !11, !noundef !11
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.di = phi ptr [ %i.de, %bb.ag ], [ %i.dc, %bb.ah ]
  %i.dj = phi ptr [ %i.df, %bb.ag ], [ %i.cw, %bb.ah ]
  %i.dk = phi i1 [ true, %bb.ag ], [ false, %bb.ah ]
  %.sroa.0.0.i.i = phi ptr [ %i.dg, %bb.ag ], [ %i.dh, %bb.ah ]
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 72
  %i.dm = load ptr, ptr %i.dl, align 8, !invariant.load !11, !noalias !3251, !nonnull !11
  invoke void %i.dm(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.c, ptr noundef nonnull %i.di, ptr noalias nofree noundef nonnull align 8 dereferenceable(1400) %.sroa.0.0.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.d)
          to label %bb.aj unwind label %bb.ao, !noalias !3253

bb.aj:                                            ; preds = %bb.ai
  %.sroa.46.0.copyload.i.i = load ptr, ptr %i.l, align 8, !noalias !3250 ; 7 uses
  %.sroa.57.0.copyload.i.i = load ptr, ptr %i.m, align 8, !noalias !3250 ; 4 uses
  %i.dn = ptrtoint ptr %.sroa.46.0.copyload.i.i to i64 ; 2 uses
  br i1 %i.dk, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3254
  store i64 %i.dn, ptr %i.a, align 8, !noalias !3254
  %i.do = icmp eq ptr %.sroa.46.0.copyload.i.i, inttoptr (i64 2 to ptr)
  br i1 %i.do, label %.noexc6.i.i, label %.noexc7.i.i, !prof !12

bb.al:                                            ; preds = %bb.aj
  %.sroa.68.0.copyload.i.i = load i8, ptr %i.n, align 8, !noalias !3250
  %i.dp = trunc nuw i8 %.sroa.68.0.copyload.i.i to i1
  br i1 %i.dp, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.57.0.copyload.i.i) ]
  invoke fastcc void @_RNvMs2_NtNtNtCs7lTeezpKIYd_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3m_10UnwindSafeNtB32_4SyncEL_EE9put_valueCsibhcYuwTAtB_13typst_realize(ptr noundef nonnull align 8 %.sroa.57.0.copyload.i.i, ptr noalias noundef nonnull align 8 %.sroa.46.0.copyload.i.i) #32
          to label %_RNvMs0_NtNtCs7lTeezpKIYd_14regex_automata4meta5regexNtB5_5Regex6search.exit.i unwind label %.loopexit85.loopexit.split-lp

bb.an:                                            ; preds = %bb.al
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.46.0.copyload.i.i) ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 dereferenceable(1400) %.sroa.46.0.copyload.i.i)
          to label %.noexc5.i.i unwind label %.body.thread.i.i, !noalias !3255

.body.thread.i.i:                                 ; preds = %bb.an
  %i.dq = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.46.0.copyload.i.i, i64 noundef 1400, i64 noundef 8) #29, !noalias !3255
  br label %.body

.noexc5.i.i:                                      ; preds = %bb.an
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.46.0.copyload.i.i, i64 noundef 1400, i64 noundef 8) #29, !noalias !3255
  br label %_RNvMs0_NtNtCs7lTeezpKIYd_14regex_automata4meta5regexNtB5_5Regex6search.exit.i

.noexc6.i.i:                                      ; preds = %bb.ak
  invoke void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedjjEB4_(i8 noundef 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @_RNvNtNtNtCs7lTeezpKIYd_14regex_automata4util4pool5inner17THREAD_ID_DROPPED, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @61) #27
          to label %.noexc56 unwind label %.loopexit.split-lp

.noexc56:                                         ; preds = %.noexc6.i.i
  unreachable

.noexc7.i.i:                                      ; preds = %bb.ak
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.57.0.copyload.i.i) ]
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.57.0.copyload.i.i, i64 40
  store atomic i64 %i.dn, ptr %i.dr release, align 8, !noalias !3255
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3254
  br label %_RNvMs0_NtNtCs7lTeezpKIYd_14regex_automata4meta5regexNtB5_5Regex6search.exit.i

bb.ao:                                            ; preds = %bb.ai
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs7lTeezpKIYd_14regex_automata4util4pool9PoolGuardNtNtNtBI_4meta5regex5CacheINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputB1w_NtNtB4_6marker4SendNtNtNtB4_5panic11unwind_safe13RefUnwindSafeNtB3v_10UnwindSafeNtB3c_4SyncEL_EEECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef align 8 dereferenceable(32) %i.b) #31
          to label %.body unwind label %bb.ap, !noalias !3255

bb.ap:                                            ; preds = %bb.ao
  %i.ds = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28, !noalias !3255
  unreachable

_RNvMs0_NtNtCs7lTeezpKIYd_14regex_automata4meta5regexNtB5_5Regex6search.exit.i: ; preds = %bb.am, %.noexc7.i.i, %.noexc5.i.i, %_RNvMs4_NtNtCs7lTeezpKIYd_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread13.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3242
  %i.dt = load i64, ptr %i.c, align 8, !range !28, !noalias !3242, !noundef !11
  %i.du = trunc nuw i64 %i.dt to i1
  br i1 %i.du, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %_RNvMs0_NtNtCs7lTeezpKIYd_14regex_automata4meta5regexNtB5_5Regex6search.exit.i
  %i.dv = load i64, ptr %i.o, align 8, !noalias !3242, !noundef !11 ; 3 uses
  %i.dw = load i64, ptr %i.p, align 8, !noalias !3242, !noundef !11 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3242
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3242
  %.not48 = icmp uge i64 %i.dv, %i.dw
  %i.dx = icmp ule i64 %.sroa.624.0.ph, %i.dv
  %or.cond = and i1 %i.r, %i.dx
  %or.cond192 = or i1 %.not48, %or.cond
  br i1 %or.cond192, label %.outer518.backedge, label %bb.as
end_hunk_5
