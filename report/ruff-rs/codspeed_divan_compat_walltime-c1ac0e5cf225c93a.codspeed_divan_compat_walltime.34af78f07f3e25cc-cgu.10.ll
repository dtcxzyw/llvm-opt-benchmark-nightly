inline.NumInlined: 198
inline.NumDeleted: 143
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [2 x i8] c"::", align 1
@1 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\80\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsX_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_5SplitReENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs4wrugdhLTku_30codspeed_divan_compat_walltime, ptr @_RNvYINtNtNtCs4NRVxsYgnAr_4core3str4iter5SplitReENtNtNtNtB9_4iter6traits8iterator8Iterator9size_hintCs4wrugdhLTku_30codspeed_divan_compat_walltime, ptr @_RNvYINtNtNtCs4NRVxsYgnAr_4core3str4iter5SplitReENtNtNtNtB9_4iter6traits8iterator8Iterator10advance_byCs4wrugdhLTku_30codspeed_divan_compat_walltime, ptr @_RNvYINtNtNtCs4NRVxsYgnAr_4core3str4iter5SplitReENtNtNtNtB9_4iter6traits8iterator8Iterator3nthCs4wrugdhLTku_30codspeed_divan_compat_walltime }>, align 8
@2 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\B0\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainIBO_INtNtNtBa_3str4iter5SplitReEINtNtBa_6option8IntoIterB1s_EEB1v_ENtNtNtB8_6traits8iterator8Iterator4nextCs4wrugdhLTku_30codspeed_divan_compat_walltime, ptr @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainIBO_INtNtNtBa_3str4iter5SplitReEINtNtBa_6option8IntoIterB1s_EEB1v_ENtNtNtB8_6traits8iterator8Iterator9size_hintCs4wrugdhLTku_30codspeed_divan_compat_walltime, ptr @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainIBO_INtNtNtBa_3str4iter5SplitReEINtNtBa_6option8IntoIterB1s_EEB1v_ENtNtNtB8_6traits8iterator8Iterator10advance_byCs4wrugdhLTku_30codspeed_divan_compat_walltime, ptr @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainIBO_INtNtNtBa_3str4iter5SplitReEINtNtBa_6option8IntoIterB1s_EEB1v_ENtNtNtB8_6traits8iterator8Iterator3nthCs4wrugdhLTku_30codspeed_divan_compat_walltime }>, align 8
@3 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -7115830799289837041 to ptr), ptr inttoptr (i64 3133915959283021804 to ptr) }>, align 8
@4 = private unnamed_addr constant [34 x i8] c"`Extensions` tracks values by type", align 1
@5 = private unnamed_addr constant [107 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/clap_builder-4.6.2/src/builder/ext.rs\00", align 1
@6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @5, [16 x i8] c"j\00\00\00\00\00\00\00\10\00\00\00\12\00\00\00" }>, align 8
@7 = private unnamed_addr constant <{ [24 x i8], ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCINvMs0_NtNtCs2AWtUsOyxgP_3std4sync4onceNtBd_4Once15call_once_forceNCNvMNtBf_9lazy_lockINtB1f_8LazyLockNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5bench7options12BenchOptionsE5force0E0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB1Q_, ptr @_RNCINvMs0_NtNtCs2AWtUsOyxgP_3std4sync4onceNtB8_4Once15call_once_forceNCNvMNtBa_9lazy_lockINtB1a_8LazyLockNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5bench7options12BenchOptionsE5force0E0B1L_ }>, align 8
@8 = private unnamed_addr constant [77 x i8] c"/rustc/8bab26f4f68e0e26f0bb7960be334d5b520ea452/library/std/src/sync/once.rs\00", align 1
@9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @8, [16 x i8] c"L\00\00\00\00\00\00\00\E2\00\00\00\14\00\00\00" }>, align 8
@10 = private unnamed_addr constant [80 x i8] c"/rustc/8bab26f4f68e0e26f0bb7960be334d5b520ea452/library/std/src/thread/local.rs\00", align 1
@11 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @10, [16 x i8] c"O\00\00\00\00\00\00\00\AC\01\00\00\19\00\00\00" }>, align 8
@12 = private unnamed_addr constant [80 x i8] c"/rustc/8bab26f4f68e0e26f0bb7960be334d5b520ea452/library/core/src/str/pattern.rs\00", align 1
@13 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @12, [16 x i8] c"O\00\00\00\00\00\00\00\E7\05\00\00\14\00\00\00" }>, align 8
@14 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @12, [16 x i8] c"O\00\00\00\00\00\00\00\E7\05\00\00!\00\00\00" }>, align 8
@15 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @12, [16 x i8] c"O\00\00\00\00\00\00\00\DB\05\00\00!\00\00\00" }>, align 8
@16 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @8, [16 x i8] c"L\00\00\00\00\00\00\00\E2\00\00\001\00\00\00" }>, align 8
@17 = private unnamed_addr constant [2 x i8] c"r#", align 1
@18 = private unnamed_addr constant [7 x i8] c"decimal", align 1
@19 = private unnamed_addr constant [6 x i8] c"binary", align 1
@20 = private unnamed_addr constant [9 x i8] c"SendError", align 1
@21 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @12, [16 x i8] c"O\00\00\00\00\00\00\00k\04\00\00$\00\00\00" }>, align 8

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5entry4treeNtB3_9EntryTree12from_benchesINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtB1A_3map3MapINtNtB1A_7flatten7FlattenINtNtNtB1C_7sources7from_fn6FromFnNCNvMs_NtB5_4listINtB3I_9EntryListNtB5_10BenchEntryE4iter0EENcNtNtB5_13AnyBenchEntry5Bench0EINtB2H_7FlatMapIB2F_IB34_NCNvMs_B3I_IB3T_NtB5_10GroupEntryE4iter0EEIB2o_IB56_INtNtNtB1E_5slice4iter4IterRSNtNtB5_7generic17GenericBenchEntryEIB6l_B6N_ENCNvMB5_B5K_20generic_benches_iter0ENcNtB4D_12GenericBench0ENCNvMs_NtB7_5divanNtB8B_5Divan10run_actions_0EEEB7_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(208) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 4 uses
  %i.b = alloca [176 x i8], align 8               ; 4 uses
  %i.c = alloca [128 x i8], align 8               ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 0, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %i.f, align 8
  %.sroa.019.0.copyload = load i64, ptr %1, align 8, !alias.scope !3
  %.sroa.4.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx20, align 8, !alias.scope !3
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !3 ; 2 uses
  %.sroa.722.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.722.0.copyload = load ptr, ptr %.sroa.722.0..sroa_idx, align 8, !alias.scope !3
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !alias.scope !3
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.9.0.copyload = load ptr, ptr %.sroa.9.0..sroa_idx, align 8, !alias.scope !3
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.10.0.copyload = load ptr, ptr %.sroa.10.0..sroa_idx, align 8, !alias.scope !3
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.11.0.copyload = load ptr, ptr %.sroa.11.0..sroa_idx, align 8, !alias.scope !3
  %.sroa.1223.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.sroa.1223.0.copyload = load ptr, ptr %.sroa.1223.0..sroa_idx, align 8, !alias.scope !3 ; 3 uses
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.sroa.13.0.copyload = load i64, ptr %.sroa.13.0..sroa_idx, align 8, !alias.scope !3
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.sroa.14.0.copyload = load ptr, ptr %.sroa.14.0..sroa_idx, align 8, !alias.scope !3
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 120
  %.sroa.15.0.copyload = load ptr, ptr %.sroa.15.0..sroa_idx, align 8, !alias.scope !3
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 128
  %.sroa.16.0.copyload = load ptr, ptr %.sroa.16.0..sroa_idx, align 8, !alias.scope !3
  %.sroa.1724.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 136
  %.sroa.1724.0.copyload = load ptr, ptr %.sroa.1724.0..sroa_idx, align 8, !alias.scope !3
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 144
  %.sroa.18.0.copyload = load ptr, ptr %.sroa.18.0..sroa_idx, align 8, !alias.scope !3
  %.sroa.1925.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 152
  %.sroa.1925.0.copyload = load ptr, ptr %.sroa.1925.0..sroa_idx, align 8, !alias.scope !3 ; 2 uses
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 160
  %.sroa.20.0.copyload = load i64, ptr %.sroa.20.0..sroa_idx, align 8, !alias.scope !3
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 168
  %.sroa.21.0.copyload = load ptr, ptr %.sroa.21.0..sroa_idx, align 8, !alias.scope !3
  %.sroa.20.0.copyload.fr = freeze i64 %.sroa.20.0.copyload
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %.sroa.612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 121
  %i.g = trunc nuw i64 %.sroa.13.0.copyload to i1
  br label %bb.b

bb.b:                                             ; preds = %bb.o, %bb.a
  %.sroa.5.0 = phi ptr [ %.sroa.4.0.copyload, %bb.a ], [ %i.i, %bb.o ]
  switch i64 %.sroa.019.0.copyload, label %.split.us.i.i.i.i.i.i [
    i64 2, label %.split8.us.i.i.i.i.i.i.preheader
    i64 0, label %.split8.us.i.i.i.i.i.i.preheader
  ]

.split8.us.i.i.i.i.i.i:                           ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not.i.i.i = icmp eq i64 %.sroa.718.7.ph, 2
  br i1 %.not.i.i.i, label %select.unfold.i18.i.i.i.i.i, label %.lr.ph

.split.us.i.i.i.i.i.i:                            ; preds = %bb.b, %bb.c
  %.sroa.5.3 = phi ptr [ %i.i, %bb.c ], [ %.sroa.5.0, %bb.b ] ; 3 uses
  %.not.i.i.i.i.i.us.i.i.i.i.i.i = icmp eq ptr %.sroa.5.3, null
  br i1 %.not.i.i.i.i.i.us.i.i.i.i.i.i, label %.split8.us.i.i.i.i.i.i.preheader, label %bb.c

bb.c:                                             ; preds = %.split.us.i.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.5.3, i64 8
  %i.i = load atomic ptr, ptr %i.h monotonic, align 8, !noalias !7 ; 2 uses
  %i.j = load ptr, ptr %.sroa.5.3, align 8, !noalias !7, !align !30, !noundef !31 ; 4 uses
  %.not.us.i.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.us.i.i.i.i.i.i, label %.split.us.i.i.i.i.i.i, label %bb.m

.split8.us.i.i.i.i.i.i.preheader:                 ; preds = %bb.b, %bb.b, %.split.us.i.i.i.i.i.i
  %.not.i.i.i296 = icmp eq i64 %.sroa.6.0.copyload, 2
  br i1 %.not.i.i.i296, label %select.unfold.i18.i.i.i.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %.split8.us.i.i.i.i.i.i.preheader, %.split8.us.i.i.i.i.i.i
  %.sroa.47.0191308 = phi ptr [ %.sroa.47.2.ph, %.split8.us.i.i.i.i.i.i ], [ %.sroa.18.0.copyload, %.split8.us.i.i.i.i.i.i.preheader ] ; 11 uses
  %.sroa.45.0192307 = phi ptr [ %.sroa.45.2.ph, %.split8.us.i.i.i.i.i.i ], [ %.sroa.1724.0.copyload, %.split8.us.i.i.i.i.i.i.preheader ] ; 9 uses
  %.sroa.42.0193306 = phi ptr [ %.sroa.42.3.ph, %.split8.us.i.i.i.i.i.i ], [ %.sroa.16.0.copyload, %.split8.us.i.i.i.i.i.i.preheader ] ; 9 uses
  %.sroa.50.0194305 = phi i64 [ %.sroa.50.2.ph, %.split8.us.i.i.i.i.i.i ], [ %.sroa.20.0.copyload.fr, %.split8.us.i.i.i.i.i.i.preheader ] ; 6 uses
  %.sroa.39.0195304 = phi ptr [ %.sroa.39.2.ph, %.split8.us.i.i.i.i.i.i ], [ %.sroa.14.0.copyload, %.split8.us.i.i.i.i.i.i.preheader ] ; 8 uses
  %.sroa.52.0196303 = phi ptr [ %.sroa.52.5.ph, %.split8.us.i.i.i.i.i.i ], [ %.sroa.21.0.copyload, %.split8.us.i.i.i.i.i.i.preheader ] ; 9 uses
  %.sroa.31.0197302 = phi ptr [ %.sroa.31.10.ph, %.split8.us.i.i.i.i.i.i ], [ %.sroa.11.0.copyload, %.split8.us.i.i.i.i.i.i.preheader ] ; 13 uses
  %.sroa.27.0198301 = phi ptr [ %.sroa.27.10.ph, %.split8.us.i.i.i.i.i.i ], [ %.sroa.10.0.copyload, %.split8.us.i.i.i.i.i.i.preheader ] ; 10 uses
  %.sroa.19.0199300 = phi ptr [ %.sroa.19.13.ph, %.split8.us.i.i.i.i.i.i ], [ %.sroa.9.0.copyload, %.split8.us.i.i.i.i.i.i.preheader ] ; 9 uses
  %.sroa.17.0200299 = phi ptr [ %.sroa.17.4.ph, %.split8.us.i.i.i.i.i.i ], [ %.sroa.8.0.copyload, %.split8.us.i.i.i.i.i.i.preheader ] ; 11 uses
  %.sroa.12.0201298 = phi ptr [ %.sroa.12.10.ph, %.split8.us.i.i.i.i.i.i ], [ %.sroa.722.0.copyload, %.split8.us.i.i.i.i.i.i.preheader ] ; 7 uses
  %.sroa.718.0202297 = phi i64 [ %.sroa.718.7.ph, %.split8.us.i.i.i.i.i.i ], [ %.sroa.6.0.copyload, %.split8.us.i.i.i.i.i.i.preheader ] ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.sroa.50.0194305, 2
  %i.k = trunc nuw i64 %.sroa.718.0202297 to i1   ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i, label %.split.us.i.i.i.i.i, label %.split.i.i.i.i.i

.split.us.i.i.i.i.i:                              ; preds = %.lr.ph
  br i1 %i.k, label %.preheader120.preheader, label %.split8.us.i.i.i.i.i.i.i.i.i.i.i

.preheader120.preheader:                          ; preds = %.split.us.i.i.i.i.i
  %.not.i.i.i.i.i.i.us.i.i.i.i.i282 = icmp eq ptr %.sroa.19.0199300, null
  %i.l = icmp eq ptr %.sroa.19.0199300, %.sroa.27.0198301
  %or.cond228283 = select i1 %.not.i.i.i.i.i.i.us.i.i.i.i.i282, i1 true, i1 %i.l
  br i1 %or.cond228283, label %select.unfold.i.i.i.i.i.us.i.i.i.i.i, label %.loopexit121

select.unfold.i.i.i.i.i.us.i.i.i.i.i:             ; preds = %.preheader120.preheader, %.preheader120
  %.sroa.12.9285 = phi ptr [ %i.n, %.preheader120 ], [ %.sroa.12.0201298, %.preheader120.preheader ] ; 7 uses
  %.sroa.27.9284 = phi ptr [ %i.p, %.preheader120 ], [ %.sroa.27.0198301, %.preheader120.preheader ] ; 2 uses
  %.not.i5.i.i.i.i.i.us.i.i.i.i.i = icmp eq ptr %.sroa.12.9285, null
  %i.m = icmp eq ptr %.sroa.12.9285, %.sroa.17.0200299
  %or.cond = select i1 %.not.i5.i.i.i.i.i.us.i.i.i.i.i, i1 true, i1 %i.m
  br i1 %or.cond, label %bb.d, label %.preheader120

.preheader120:                                    ; preds = %select.unfold.i.i.i.i.i.us.i.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.12.9285, i64 16 ; 2 uses
  %.val.i.i.i.i.i.i.i.us.i.i.i.i.i = load ptr, ptr %.sroa.12.9285, align 8, !noalias !32, !nonnull !31, !align !30, !noundef !31 ; 2 uses
  %i.o = getelementptr i8, ptr %.sroa.12.9285, i64 8
  %.val3.i.i.i.i.i.i.i.us.i.i.i.i.i = load i64, ptr %i.o, align 8, !noalias !32, !noundef !31 ; 2 uses
  %.idx310.a = mul nuw nsw i64 %.val3.i.i.i.i.i.i.i.us.i.i.i.i.i, 88
  %i.p = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.us.i.i.i.i.i, i64 %.idx310.a ; 2 uses
  %i.q = icmp eq i64 %.val3.i.i.i.i.i.i.i.us.i.i.i.i.i, 0
  br i1 %i.q, label %select.unfold.i.i.i.i.i.us.i.i.i.i.i, label %.loopexit121

bb.d:                                             ; preds = %select.unfold.i.i.i.i.i.us.i.i.i.i.i
  %.not.i7.i.i.i.i.i.us.i.i.i.i.i = icmp eq ptr %.sroa.31.0197302, null
  %i.r = icmp eq ptr %.sroa.31.0197302, %.sroa.1223.0.copyload
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.31.0197302, i64 88
  %or.cond112 = select i1 %.not.i7.i.i.i.i.i.us.i.i.i.i.i, i1 true, i1 %i.r
  br i1 %or.cond112, label %.split8.us.i.i.i.i.i.i.i.i.i.i.i, label %bb.l

.split.i.i.i.i.i:                                 ; preds = %.lr.ph
  %i.t = trunc i64 %.sroa.50.0194305 to i1
  br i1 %i.t, label %.split.split.us.i.i.i.i.i, label %.split.split.i.i.i.i.i

.split.split.us.i.i.i.i.i:                        ; preds = %.split.i.i.i.i.i, %bb.h
  %.sroa.52.3 = phi ptr [ %i.ag, %bb.h ], [ %.sroa.52.0196303, %.split.i.i.i.i.i ] ; 3 uses
  %.sroa.31.5 = phi ptr [ null, %bb.h ], [ %.sroa.31.0197302, %.split.i.i.i.i.i ] ; 6 uses
  %.sroa.27.5 = phi ptr [ %.sroa.27.6, %bb.h ], [ %.sroa.27.0198301, %.split.i.i.i.i.i ] ; 3 uses
  %.sroa.19.6 = phi ptr [ null, %bb.h ], [ %.sroa.19.0199300, %.split.i.i.i.i.i ] ; 4 uses
  %.sroa.17.3 = phi ptr [ %i.am, %bb.h ], [ %.sroa.17.0200299, %.split.i.i.i.i.i ] ; 4 uses
  %.sroa.12.5 = phi ptr [ %.sroa.0.0.i.i.i.i.i.us.i.i.i.i.i, %bb.h ], [ %.sroa.12.0201298, %.split.i.i.i.i.i ] ; 3 uses
  %.sroa.718.4 = phi i64 [ 1, %bb.h ], [ %.sroa.718.0202297, %.split.i.i.i.i.i ] ; 3 uses
  %i.u = phi ptr [ %i.ae, %bb.h ], [ %.sroa.27.0198301, %.split.i.i.i.i.i ] ; 3 uses
  %i.v = phi i1 [ true, %bb.h ], [ %i.k, %.split.i.i.i.i.i ]
  br i1 %i.v, label %.preheader.preheader, label %.split.us.preheader.i.i.i.i.i.i.us.i.i.i.i.i

.preheader.preheader:                             ; preds = %.split.split.us.i.i.i.i.i
  %.not.i.i.i.i.i.i.us64.i.i.i.i.i264 = icmp eq ptr %.sroa.19.6, null
  %i.w = icmp eq ptr %.sroa.19.6, %i.u
  %or.cond229265 = select i1 %.not.i.i.i.i.i.i.us64.i.i.i.i.i264, i1 true, i1 %i.w
  br i1 %or.cond229265, label %select.unfold.i.i.i.i.i.us67.i.i.i.i.i, label %.loopexit

select.unfold.i.i.i.i.i.us67.i.i.i.i.i:           ; preds = %.preheader.preheader, %.preheader
  %i.x = phi ptr [ %i.ab, %.preheader ], [ %i.u, %.preheader.preheader ]
  %.sroa.12.7267 = phi ptr [ %i.z, %.preheader ], [ %.sroa.12.5, %.preheader.preheader ] ; 7 uses
  %.sroa.27.7266 = phi ptr [ %i.ab, %.preheader ], [ %.sroa.27.5, %.preheader.preheader ] ; 2 uses
  %.not.i5.i.i.i.i.i.us68.i.i.i.i.i = icmp eq ptr %.sroa.12.7267, null
  %i.y = icmp eq ptr %.sroa.12.7267, %.sroa.17.3
  %or.cond113 = select i1 %.not.i5.i.i.i.i.i.us68.i.i.i.i.i, i1 true, i1 %i.y
  br i1 %or.cond113, label %bb.e, label %.preheader

.preheader:                                       ; preds = %select.unfold.i.i.i.i.i.us67.i.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.12.7267, i64 16 ; 2 uses
  %.val.i.i.i.i.i.i.i.us69.i.i.i.i.i = load ptr, ptr %.sroa.12.7267, align 8, !noalias !32, !nonnull !31, !align !30, !noundef !31 ; 2 uses
  %i.aa = getelementptr i8, ptr %.sroa.12.7267, i64 8
  %.val3.i.i.i.i.i.i.i.us70.i.i.i.i.i = load i64, ptr %i.aa, align 8, !noalias !32, !noundef !31 ; 2 uses
  %.idx309 = mul nuw nsw i64 %.val3.i.i.i.i.i.i.i.us70.i.i.i.i.i, 88
  %i.ab = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.us69.i.i.i.i.i, i64 %.idx309 ; 3 uses
  %i.ac = icmp eq i64 %.val3.i.i.i.i.i.i.i.us70.i.i.i.i.i, 0
  br i1 %i.ac, label %select.unfold.i.i.i.i.i.us67.i.i.i.i.i, label %.loopexit

bb.e:                                             ; preds = %select.unfold.i.i.i.i.i.us67.i.i.i.i.i
  %.not.i7.i.i.i.i.i.us72.i.i.i.i.i = icmp eq ptr %.sroa.31.5, null
  %i.ad = icmp eq ptr %.sroa.31.5, %.sroa.1223.0.copyload
  %or.cond230 = select i1 %.not.i7.i.i.i.i.i.us72.i.i.i.i.i, i1 true, i1 %i.ad
  br i1 %or.cond230, label %.split.us.preheader.i.i.i.i.i.i.us.i.i.i.i.i, label %.loopexit122

.split.us.preheader.i.i.i.i.i.i.us.i.i.i.i.i:     ; preds = %bb.e, %.split.split.us.i.i.i.i.i
  %.sroa.31.6 = phi ptr [ %.sroa.31.5, %.split.split.us.i.i.i.i.i ], [ null, %bb.e ]
  %.sroa.27.6 = phi ptr [ %.sroa.27.5, %.split.split.us.i.i.i.i.i ], [ %.sroa.27.7266, %bb.e ] ; 2 uses
  %.sroa.19.7 = phi ptr [ %.sroa.19.6, %.split.split.us.i.i.i.i.i ], [ null, %bb.e ]
  %.sroa.12.6 = phi ptr [ %.sroa.12.5, %.split.split.us.i.i.i.i.i ], [ %.sroa.12.7267, %bb.e ]
  %.sroa.718.5 = phi i64 [ %.sroa.718.4, %.split.split.us.i.i.i.i.i ], [ 0, %bb.e ]
  %i.ae = phi ptr [ %i.u, %.split.split.us.i.i.i.i.i ], [ %i.x, %bb.e ]
  br label %.split.us.i.i.i.i.i.i.us.i.i.i.i.i

.split.us.i.i.i.i.i.i.us.i.i.i.i.i:               ; preds = %bb.f, %.split.us.preheader.i.i.i.i.i.i.us.i.i.i.i.i
  %.sroa.52.4 = phi ptr [ %.sroa.52.3, %.split.us.preheader.i.i.i.i.i.i.us.i.i.i.i.i ], [ %i.ag, %bb.f ] ; 3 uses
  %.not.i.i.i.i.i.us.i.i.i.i.i.i.us.i.i.i.i.i = icmp eq ptr %.sroa.52.4, null
  br i1 %.not.i.i.i.i.i.us.i.i.i.i.i.i.us.i.i.i.i.i, label %.split8.us.i.i.i.i.i.i.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %.split.us.i.i.i.i.i.i.us.i.i.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.52.4, i64 8
  %i.ag = load atomic ptr, ptr %i.af monotonic, align 8, !noalias !55 ; 2 uses
  %i.ah = load ptr, ptr %.sroa.52.4, align 8, !noalias !55, !align !30, !noundef !31 ; 3 uses
  %.not.us.i.i.i.i.i.i.us.i.i.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.us.i.i.i.i.i.i.us.i.i.i.i.i, label %.split.us.i.i.i.i.i.i.us.i.i.i.i.i, label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtB9_7sources7from_fn6FromFnNCNvMs_NtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5entry4listINtB1I_9EntryListNtB1K_10GroupEntryE4iter0EENtNtNtB9_6traits8iterator8Iterator4nextB1M_.exit.i.i.i.i.us.i.i.i.i.i

_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtB9_7sources7from_fn6FromFnNCNvMs_NtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5entry4listINtB1I_9EntryListNtB1K_10GroupEntryE4iter0EENtNtNtB9_6traits8iterator8Iterator4nextB1M_.exit.i.i.i.i.us.i.i.i.i.i: ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 232
  %i.aj = load ptr, ptr %i.ai, align 8, !noalias !82, !align !30, !noundef !31 ; 2 uses
  %.not.i.i.i.i.i.us.i.i.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i.i.us.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtB9_7sources7from_fn6FromFnNCNvMs_NtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5entry4listINtB1I_9EntryListNtB1K_10GroupEntryE4iter0EENtNtNtB9_6traits8iterator8Iterator4nextB1M_.exit.i.i.i.i.us.i.i.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 240
  %i.al = load i64, ptr %i.ak, align 8, !noalias !82
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtB9_7sources7from_fn6FromFnNCNvMs_NtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5entry4listINtB1I_9EntryListNtB1K_10GroupEntryE4iter0EENtNtNtB9_6traits8iterator8Iterator4nextB1M_.exit.i.i.i.i.us.i.i.i.i.i
  %.sroa.6.0.i.i.i.i.i.us.i.i.i.i.i = phi i64 [ %i.al, %bb.g ], [ 0, %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtB9_7sources7from_fn6FromFnNCNvMs_NtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5entry4listINtB1I_9EntryListNtB1K_10GroupEntryE4iter0EENtNtNtB9_6traits8iterator8Iterator4nextB1M_.exit.i.i.i.i.us.i.i.i.i.i ]
  %.sroa.0.0.i.i.i.i.i.us.i.i.i.i.i = phi ptr [ %i.aj, %bb.g ], [ inttoptr (i64 8 to ptr), %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtB9_7sources7from_fn6FromFnNCNvMs_NtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5entry4listINtB1I_9EntryListNtB1K_10GroupEntryE4iter0EENtNtNtB9_6traits8iterator8Iterator4nextB1M_.exit.i.i.i.i.us.i.i.i.i.i ] ; 2 uses
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.i.i.i.i.i.us.i.i.i.i.i, i64 %.sroa.6.0.i.i.i.i.i.us.i.i.i.i.i
  br label %.split.split.us.i.i.i.i.i

.split.split.i.i.i.i.i:                           ; preds = %.split.i.i.i.i.i
  br i1 %i.k, label %.preheader123.preheader, label %.split8.us.i.i.i.i.i.i.i.i.i.i.i

.preheader123.preheader:                          ; preds = %.split.split.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i.i.i.i258 = icmp eq ptr %.sroa.19.0199300, null
  %i.an = icmp eq ptr %.sroa.19.0199300, %.sroa.27.0198301
  %or.cond231259 = select i1 %.not.i.i.i.i.i.i.i.i.i.i.i258, i1 true, i1 %i.an
  br i1 %or.cond231259, label %select.unfold.i.i.i.i.i.i.i.i.i.i, label %.loopexit124

select.unfold.i.i.i.i.i.i.i.i.i.i:                ; preds = %.preheader123.preheader, %.preheader123
  %.sroa.12.4261 = phi ptr [ %i.ap, %.preheader123 ], [ %.sroa.12.0201298, %.preheader123.preheader ] ; 7 uses
  %.sroa.27.4260 = phi ptr [ %i.ar, %.preheader123 ], [ %.sroa.27.0198301, %.preheader123.preheader ] ; 2 uses
  %.not.i5.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.12.4261, null
  %i.ao = icmp eq ptr %.sroa.12.4261, %.sroa.17.0200299
  %or.cond114 = select i1 %.not.i5.i.i.i.i.i.i.i.i.i.i, i1 true, i1 %i.ao
  br i1 %or.cond114, label %bb.i, label %.preheader123

.preheader123:                                    ; preds = %select.unfold.i.i.i.i.i.i.i.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.12.4261, i64 16 ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.12.4261, align 8, !noalias !32, !nonnull !31, !align !30, !noundef !31 ; 2 uses
  %i.aq = getelementptr i8, ptr %.sroa.12.4261, i64 8
  %.val3.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.aq, align 8, !noalias !32, !noundef !31 ; 2 uses
  %.idx = mul nuw nsw i64 %.val3.i.i.i.i.i.i.i.i.i.i.i.i, 88
  %i.ar = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.idx ; 2 uses
  %i.as = icmp eq i64 %.val3.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.as, label %select.unfold.i.i.i.i.i.i.i.i.i.i, label %.loopexit124

bb.i:                                             ; preds = %select.unfold.i.i.i.i.i.i.i.i.i.i
  %.not.i7.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.31.0197302, null
  %i.at = icmp eq ptr %.sroa.31.0197302, %.sroa.1223.0.copyload
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.31.0197302, i64 88
  %or.cond116 = select i1 %.not.i7.i.i.i.i.i.i.i.i.i.i, i1 true, i1 %i.at
  br i1 %or.cond116, label %.split8.us.i.i.i.i.i.i.i.i.i.i.i, label %bb.l

.split8.us.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.split.us.i.i.i.i.i.i.us.i.i.i.i.i, %.split.split.i.i.i.i.i, %bb.i, %.split.us.i.i.i.i.i, %bb.d
  %.sroa.52.2 = phi ptr [ %.sroa.52.0196303, %.split.split.i.i.i.i.i ], [ %.sroa.52.0196303, %.split.us.i.i.i.i.i ], [ %.sroa.52.0196303, %bb.d ], [ %.sroa.52.0196303, %bb.i ], [ null, %.split.us.i.i.i.i.i.i.us.i.i.i.i.i ] ; 2 uses
  %.sroa.31.3 = phi ptr [ %.sroa.31.0197302, %.split.split.i.i.i.i.i ], [ %.sroa.31.0197302, %.split.us.i.i.i.i.i ], [ null, %bb.d ], [ null, %bb.i ], [ %.sroa.31.6, %.split.us.i.i.i.i.i.i.us.i.i.i.i.i ] ; 2 uses
  %.sroa.27.3 = phi ptr [ %.sroa.27.0198301, %.split.split.i.i.i.i.i ], [ %.sroa.27.0198301, %.split.us.i.i.i.i.i ], [ %.sroa.27.9284, %bb.d ], [ %.sroa.27.4260, %bb.i ], [ %.sroa.27.6, %.split.us.i.i.i.i.i.i.us.i.i.i.i.i ] ; 2 uses
  %.sroa.19.3 = phi ptr [ %.sroa.19.0199300, %.split.split.i.i.i.i.i ], [ %.sroa.19.0199300, %.split.us.i.i.i.i.i ], [ null, %bb.d ], [ null, %bb.i ], [ %.sroa.19.7, %.split.us.i.i.i.i.i.i.us.i.i.i.i.i ] ; 2 uses
  %.sroa.17.2 = phi ptr [ %.sroa.17.0200299, %.split.split.i.i.i.i.i ], [ %.sroa.17.0200299, %.split.us.i.i.i.i.i ], [ %.sroa.17.0200299, %bb.d ], [ %.sroa.17.0200299, %bb.i ], [ %.sroa.17.3, %.split.us.i.i.i.i.i.i.us.i.i.i.i.i ] ; 2 uses
  %.sroa.12.3 = phi ptr [ %.sroa.12.0201298, %.split.split.i.i.i.i.i ], [ %.sroa.12.0201298, %.split.us.i.i.i.i.i ], [ %.sroa.12.9285, %bb.d ], [ %.sroa.12.4261, %bb.i ], [ %.sroa.12.6, %.split.us.i.i.i.i.i.i.us.i.i.i.i.i ] ; 2 uses
  %.sroa.718.3 = phi i64 [ 0, %.split.split.i.i.i.i.i ], [ 0, %.split.us.i.i.i.i.i ], [ 0, %bb.d ], [ 0, %bb.i ], [ %.sroa.718.5, %.split.us.i.i.i.i.i.i.us.i.i.i.i.i ] ; 2 uses
  br i1 %i.g, label %.preheader118.preheader, label %select.unfold.i18.i.i.i.i.i

.preheader118.preheader:                          ; preds = %.split8.us.i.i.i.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i8.i.i.i.i.i289 = icmp eq ptr %.sroa.42.0193306, null
  %i.av = icmp eq ptr %.sroa.42.0193306, %.sroa.45.0192307
  %or.cond232290 = select i1 %.not.i.i.i.i.i.i8.i.i.i.i.i289, i1 true, i1 %i.av
  br i1 %or.cond232290, label %select.unfold.i.i.i.i.i11.i.i.i.i.i, label %.loopexit119

select.unfold.i.i.i.i.i11.i.i.i.i.i:              ; preds = %.preheader118.preheader, %.preheader118
  %.sroa.39.1292 = phi ptr [ %i.ax, %.preheader118 ], [ %.sroa.39.0195304, %.preheader118.preheader ] ; 6 uses
  %.sroa.45.1291 = phi ptr [ %i.az, %.preheader118 ], [ %.sroa.45.0192307, %.preheader118.preheader ]
  %.not.i5.i.i.i.i.i12.i.i.i.i.i = icmp eq ptr %.sroa.39.1292, null
  %i.aw = icmp eq ptr %.sroa.39.1292, %.sroa.15.0.copyload
  %or.cond117 = select i1 %.not.i5.i.i.i.i.i12.i.i.i.i.i, i1 true, i1 %i.aw
  br i1 %or.cond117, label %bb.j, label %.preheader118

.preheader118:                                    ; preds = %select.unfold.i.i.i.i.i11.i.i.i.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.39.1292, i64 16 ; 2 uses
  %.val.i.i.i.i.i.i.i13.i.i.i.i.i = load ptr, ptr %.sroa.39.1292, align 8, !noalias !85, !nonnull !31, !align !30, !noundef !31 ; 2 uses
  %i.ay = getelementptr i8, ptr %.sroa.39.1292, i64 8
  %.val3.i.i.i.i.i.i.i14.i.i.i.i.i = load i64, ptr %i.ay, align 8, !noalias !85, !noundef !31 ; 2 uses
  %.idx311 = mul nuw nsw i64 %.val3.i.i.i.i.i.i.i14.i.i.i.i.i, 88
  %i.az = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i13.i.i.i.i.i, i64 %.idx311 ; 2 uses
  %i.ba = icmp eq i64 %.val3.i.i.i.i.i.i.i14.i.i.i.i.i, 0
  br i1 %i.ba, label %select.unfold.i.i.i.i.i11.i.i.i.i.i, label %.loopexit119

bb.j:                                             ; preds = %select.unfold.i.i.i.i.i11.i.i.i.i.i
  %.not.i7.i.i.i.i.i15.i.i.i.i.i = icmp eq ptr %.sroa.47.0191308, null
  br i1 %.not.i7.i.i.i.i.i15.i.i.i.i.i, label %select.unfold.i18.i.i.i.i.i, label %.sink.split.i8.i.i.i.i.i16.i.i.i.i.i

.sink.split.i8.i.i.i.i.i16.i.i.i.i.i:             ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1925.0.copyload) ]
  %i.bb = icmp eq ptr %.sroa.47.0191308, %.sroa.1925.0.copyload
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.47.0191308, i64 88
  br i1 %i.bb, label %select.unfold.i18.i.i.i.i.i, label %bb.l

.loopexit203:                                     ; preds = %bb.l, %bb.p
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

.loopexit.split-lp:                               ; preds = %bb.m, %bb.n
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.k:                                             ; preds = %.loopexit.split-lp, %.loopexit203
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit203 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5entry4tree9EntryTreeEEB1d_(ptr noalias noundef align 8 dereferenceable(24) %i.d) #23
          to label %bb.r unwind label %bb.q

select.unfold.i18.i.i.i.i.i:                      ; preds = %.split8.us.i.i.i.i.i.i.i.i.i.i.i, %bb.j, %.split8.us.i.i.i.i.i.i, %.sink.split.i8.i.i.i.i.i16.i.i.i.i.i, %.split8.us.i.i.i.i.i.i.preheader
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

.loopexit:                                        ; preds = %.preheader.preheader, %.preheader
  %.sroa.27.7.lcssa = phi ptr [ %i.ab, %.preheader ], [ %.sroa.27.5, %.preheader.preheader ]
  %.sroa.19.8.lcssa = phi ptr [ %.val.i.i.i.i.i.i.i.us69.i.i.i.i.i, %.preheader ], [ %.sroa.19.6, %.preheader.preheader ] ; 2 uses
  %.sroa.12.7.lcssa = phi ptr [ %i.z, %.preheader ], [ %.sroa.12.5, %.preheader.preheader ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.19.8.lcssa, i64 88
  br label %bb.l

.loopexit119:                                     ; preds = %.preheader118, %.preheader118.preheader
  %.sroa.45.1.lcssa = phi ptr [ %.sroa.45.0192307, %.preheader118.preheader ], [ %i.az, %.preheader118 ]
  %.sroa.42.1.lcssa = phi ptr [ %.sroa.42.0193306, %.preheader118.preheader ], [ %.val.i.i.i.i.i.i.i13.i.i.i.i.i, %.preheader118 ] ; 2 uses
  %.sroa.39.1.lcssa = phi ptr [ %.sroa.39.0195304, %.preheader118.preheader ], [ %i.ax, %.preheader118 ]
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.42.1.lcssa, i64 88
  br label %bb.l

.loopexit121:                                     ; preds = %.preheader120, %.preheader120.preheader
  %.sroa.27.9.lcssa = phi ptr [ %.sroa.27.0198301, %.preheader120.preheader ], [ %i.p, %.preheader120 ]
  %.sroa.19.11.lcssa = phi ptr [ %.sroa.19.0199300, %.preheader120.preheader ], [ %.val.i.i.i.i.i.i.i.us.i.i.i.i.i, %.preheader120 ] ; 2 uses
  %.sroa.12.9.lcssa = phi ptr [ %.sroa.12.0201298, %.preheader120.preheader ], [ %i.n, %.preheader120 ]
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.19.11.lcssa, i64 88
  br label %bb.l

.loopexit122:                                     ; preds = %bb.e
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.31.5, i64 88
  br label %bb.l

.loopexit124:                                     ; preds = %.preheader123, %.preheader123.preheader
  %.sroa.27.4.lcssa = phi ptr [ %.sroa.27.0198301, %.preheader123.preheader ], [ %i.ar, %.preheader123 ]
  %.sroa.19.4.lcssa = phi ptr [ %.sroa.19.0199300, %.preheader123.preheader ], [ %.val.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader123 ] ; 2 uses
  %.sroa.12.4.lcssa = phi ptr [ %.sroa.12.0201298, %.preheader123.preheader ], [ %i.ap, %.preheader123 ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.19.4.lcssa, i64 88
  br label %bb.l

bb.l:                                             ; preds = %.loopexit124, %.loopexit122, %.loopexit121, %.loopexit119, %.loopexit, %bb.i, %bb.d, %.sink.split.i8.i.i.i.i.i16.i.i.i.i.i
  %.sroa.47.2.ph = phi ptr [ %.sroa.47.0191308, %.loopexit122 ], [ %.sroa.47.0191308, %bb.i ], [ %i.bc, %.sink.split.i8.i.i.i.i.i16.i.i.i.i.i ], [ %.sroa.47.0191308, %.loopexit121 ], [ %.sroa.47.0191308, %.loopexit119 ], [ %.sroa.47.0191308, %bb.d ], [ %.sroa.47.0191308, %.loopexit ], [ %.sroa.47.0191308, %.loopexit124 ]
  %.sroa.45.2.ph = phi ptr [ %.sroa.45.0192307, %.loopexit122 ], [ %.sroa.45.0192307, %bb.i ], [ %.sroa.45.1291, %.sink.split.i8.i.i.i.i.i16.i.i.i.i.i ], [ %.sroa.45.0192307, %.loopexit121 ], [ %.sroa.45.1.lcssa, %.loopexit119 ], [ %.sroa.45.0192307, %bb.d ], [ %.sroa.45.0192307, %.loopexit ], [ %.sroa.45.0192307, %.loopexit124 ]
  %.sroa.42.3.ph = phi ptr [ %.sroa.42.0193306, %.loopexit122 ], [ %.sroa.42.0193306, %bb.i ], [ null, %.sink.split.i8.i.i.i.i.i16.i.i.i.i.i ], [ %.sroa.42.0193306, %.loopexit121 ], [ %i.be, %.loopexit119 ], [ %.sroa.42.0193306, %bb.d ], [ %.sroa.42.0193306, %.loopexit ], [ %.sroa.42.0193306, %.loopexit124 ]
  %.sroa.50.2.ph = phi i64 [ %.sroa.50.0194305, %.loopexit122 ], [ %.sroa.50.0194305, %bb.i ], [ 2, %.sink.split.i8.i.i.i.i.i16.i.i.i.i.i ], [ 2, %.loopexit121 ], [ 2, %.loopexit119 ], [ 2, %bb.d ], [ %.sroa.50.0194305, %.loopexit ], [ %.sroa.50.0194305, %.loopexit124 ]
  %.sroa.39.2.ph = phi ptr [ %.sroa.39.0195304, %.loopexit122 ], [ %.sroa.39.0195304, %bb.i ], [ %.sroa.39.1292, %.sink.split.i8.i.i.i.i.i16.i.i.i.i.i ], [ %.sroa.39.0195304, %.loopexit121 ], [ %.sroa.39.1.lcssa, %.loopexit119 ], [ %.sroa.39.0195304, %bb.d ], [ %.sroa.39.0195304, %.loopexit ], [ %.sroa.39.0195304, %.loopexit124 ]
  %.sroa.52.5.ph = phi ptr [ %.sroa.52.3, %.loopexit122 ], [ %.sroa.52.0196303, %bb.i ], [ %.sroa.52.2, %.sink.split.i8.i.i.i.i.i16.i.i.i.i.i ], [ %.sroa.52.0196303, %.loopexit121 ], [ %.sroa.52.2, %.loopexit119 ], [ %.sroa.52.0196303, %bb.d ], [ %.sroa.52.3, %.loopexit ], [ %.sroa.52.0196303, %.loopexit124 ]
  %.sroa.31.10.ph = phi ptr [ %i.bg, %.loopexit122 ], [ %i.au, %bb.i ], [ %.sroa.31.3, %.sink.split.i8.i.i.i.i.i16.i.i.i.i.i ], [ %.sroa.31.0197302, %.loopexit121 ], [ %.sroa.31.3, %.loopexit119 ], [ %i.s, %bb.d ], [ %.sroa.31.5, %.loopexit ], [ %.sroa.31.0197302, %.loopexit124 ]
  %.sroa.27.10.ph = phi ptr [ %.sroa.27.7266, %.loopexit122 ], [ %.sroa.27.4260, %bb.i ], [ %.sroa.27.3, %.sink.split.i8.i.i.i.i.i16.i.i.i.i.i ], [ %.sroa.27.9.lcssa, %.loopexit121 ], [ %.sroa.27.3, %.loopexit119 ], [ %.sroa.27.9284, %bb.d ], [ %.sroa.27.7.lcssa, %.loopexit ], [ %.sroa.27.4.lcssa, %.loopexit124 ]
  %.sroa.19.13.ph = phi ptr [ null, %.loopexit122 ], [ null, %bb.i ], [ %.sroa.19.3, %.sink.split.i8.i.i.i.i.i16.i.i.i.i.i ], [ %i.bf, %.loopexit121 ], [ %.sroa.19.3, %.loopexit119 ], [ null, %bb.d ], [ %i.bd, %.loopexit ], [ %i.bh, %.loopexit124 ]
  %.sroa.17.4.ph = phi ptr [ %.sroa.17.3, %.loopexit122 ], [ %.sroa.17.0200299, %bb.i ], [ %.sroa.17.2, %.sink.split.i8.i.i.i.i.i16.i.i.i.i.i ], [ %.sroa.17.0200299, %.loopexit121 ], [ %.sroa.17.2, %.loopexit119 ], [ %.sroa.17.0200299, %bb.d ], [ %.sroa.17.3, %.loopexit ], [ %.sroa.17.0200299, %.loopexit124 ]
  %.sroa.12.10.ph = phi ptr [ %.sroa.12.7267, %.loopexit122 ], [ %.sroa.12.4261, %bb.i ], [ %.sroa.12.3, %.sink.split.i8.i.i.i.i.i16.i.i.i.i.i ], [ %.sroa.12.9.lcssa, %.loopexit121 ], [ %.sroa.12.3, %.loopexit119 ], [ %.sroa.12.9285, %bb.d ], [ %.sroa.12.7.lcssa, %.loopexit ], [ %.sroa.12.4.lcssa, %.loopexit124 ]
  %.sroa.718.7.ph = phi i64 [ %.sroa.718.4, %.loopexit122 ], [ 1, %bb.i ], [ %.sroa.718.3, %.sink.split.i8.i.i.i.i.i16.i.i.i.i.i ], [ 1, %.loopexit121 ], [ %.sroa.718.3, %.loopexit119 ], [ 1, %bb.d ], [ %.sroa.718.4, %.loopexit ], [ 1, %.loopexit124 ] ; 2 uses
  %.pn3.i.i.ph = phi ptr [ %.sroa.31.5, %.loopexit122 ], [ %.sroa.31.0197302, %bb.i ], [ %.sroa.47.0191308, %.sink.split.i8.i.i.i.i.i16.i.i.i.i.i ], [ %.sroa.19.11.lcssa, %.loopexit121 ], [ %.sroa.42.1.lcssa, %.loopexit119 ], [ %.sroa.31.0197302, %bb.d ], [ %.sroa.19.8.lcssa, %.loopexit ], [ %.sroa.19.4.lcssa, %.loopexit124 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5entry7genericNtB2_17GenericBenchEntry15path_components(ptr noalias noundef nonnull sret([176 x i8]) align 8 captures(address) dereferenceable(176) %i.b, ptr noundef nonnull align 8 %.pn3.i.i.ph)
          to label %bb.p unwind label %.loopexit203

bb.m:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.j, i64 192
  %i.bj = load ptr, ptr %i.bi, align 8, !nonnull !31, !noundef !31
  %i.bk = getelementptr inbounds nuw i8, ptr %i.j, i64 200
  %i.bl = load i64, ptr %i.bk, align 8, !noundef !31 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMsu_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcher3new(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bj, i64 noundef %i.bl, ptr noalias noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 2)
          to label %bb.n unwind label %.loopexit.split-lp

bb.n:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.c, ptr noundef nonnull align 8 dereferenceable(104) %i.a, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 %i.bl, ptr %.sroa.5.0..sroa_idx, align 8
  store i8 1, ptr %.sroa.612.0..sroa_idx, align 8
  store i8 0, ptr %.sroa.7.0..sroa_idx, align 1
  invoke fastcc void @_RNvMNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5entry4treeNtB2_9EntryTree12insert_entry(ptr noalias noundef align 8 dereferenceable(24) %i.d, i64 noundef 0, ptr noundef %i.j, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) @1)
          to label %bb.o unwind label %.loopexit.split-lp

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.b

bb.p:                                             ; preds = %bb.l
  invoke fastcc void @_RNvMNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5entry4treeNtB2_9EntryTree12insert_entry(ptr noalias noundef align 8 dereferenceable(24) %i.d, i64 noundef 1, ptr noundef %.pn3.i.i.ph, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) @2)
          to label %.split8.us.i.i.i.i.i.i unwind label %.loopexit203

bb.q:                                             ; preds = %bb.k
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.r:                                             ; preds = %bb.k
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5entry4treeNtB3_9EntryTree6retainNCNvMs_NtB7_5divanNtB1v_5Divan10run_actions0_0EB7_(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(200) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr inttoptr (i64 1 to ptr), ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.c, align 8
  call void @_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5entry4tree9EntryTreeE10retain_mutNCINvNvMBG_BE_6retain6retainNCNvMs_NtBK_5divanNtB2B_5Divan10run_actions0_0E0EBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 2 ptr @_RINvMNtNtCsdjW2DEjcQy2_12clap_builder7builder3extNtB3_10Extensions3getNtNtB5_7styling6StylesECs4wrugdhLTku_30codspeed_divan_compat_walltime(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) @3, i64 16, i1 false)
  %i.b = call noundef align 8 ptr @_RINvMNtNtCsdjW2DEjcQy2_12clap_builder4util8flat_mapINtB3_7FlatMapNtNtB5_9any_value10AnyValueIdNtB13_8AnyValueE3getB11_ECs4wrugdhLTku_30codspeed_divan_compat_walltime(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a) ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = call noundef align 2 ptr @_RINvMNtNtCsdjW2DEjcQy2_12clap_builder4util9any_valueNtB3_8AnyValue12downcast_refNtNtNtB7_7builder7styling6StylesECs4wrugdhLTku_30codspeed_divan_compat_walltime(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.b) ; 2 uses
  %.not4 = icmp eq ptr %i.c, null
  br i1 %.not4, label %bb.d, label %bb.c, !prof !100

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %.sroa.0.0

bb.d:                                             ; preds = %bb.b
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 34, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #25
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs4wrugdhLTku_30codspeed_divan_compat_walltime(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !31, !noundef !31
  %i.a = tail call noundef ptr %.val(ptr noalias noundef align 8 dereferenceable_or_null(24) null), !noalias !101, !inline_history !104 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread5local18panic_access_error(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = load i64, ptr %i.a, align 8, !noalias !101, !noundef !31 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noalias !101, !noundef !31
  %i.f = add i64 %i.c, 1
  store i64 %i.f, ptr %i.a, align 8, !noalias !101
  %i.g = insertvalue { i64, i64 } poison, i64 %i.c, 0
  %i.h = insertvalue { i64, i64 } %i.g, i64 %i.e, 1
  ret { i64, i64 } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyhE4withNCNvNtNtNtBa_4sync4mpmc5waker17current_thread_id0jECs4wrugdhLTku_30codspeed_divan_compat_walltime(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !31, !noundef !31
  %i.a = tail call noundef ptr %.val(ptr noalias noundef dereferenceable_or_null(2) null), !inline_history !105 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !100

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread5local18panic_access_error(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %i.a to i64
  ret i64 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvMsx_NtNtCs4NRVxsYgnAr_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs4wrugdhLTku_30codspeed_divan_compat_walltime(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(64) %1, ptr noalias noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias noundef nonnull readonly captures(none) %4, i64 noundef range(i64 0, -9223372036854775808) %5, i1 noundef zeroext %6) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 6 uses
  %i.b = add nsw i64 %5, -1                       ; 2 uses
  %.promoted = load i64, ptr %i.a, align 8        ; 2 uses
  %i.c = add i64 %i.b, %.promoted                 ; 2 uses
  %i.d = icmp ult i64 %i.c, %3
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i64, ptr %i.e, align 8, !noundef !31
  %i.g = load i64, ptr %1, align 8                ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %i.k = sub i64 %5, %i.j
  %.promoted35 = load i64, ptr %i.h, align 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.f, %bb.a
  store i64 %3, ptr %i.a, align 8
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %i.l = phi i64 [ %.promoted35, %.lr.ph ], [ %i.w, %bb.f ] ; 5 uses
  %i.m = phi i64 [ %i.c, %.lr.ph ], [ %i.y, %bb.f ]
  %i.n = phi i64 [ %.promoted, %.lr.ph ], [ %i.x, %bb.f ] ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 %i.m
  %i.p = load i8, ptr %i.o, align 1, !noundef !31
  %i.q = and i8 %i.p, 63
  %i.r = zext nneg i8 %i.q to i64
  %i.s = shl nuw i64 1, %i.r
  %i.t = and i64 %i.s, %i.f
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.j, %._crit_edge
  %storemerge = phi i64 [ 0, %._crit_edge ], [ 1, %bb.j ]
  store i64 %storemerge, ptr %0, align 8
  ret void

bb.d:                                             ; preds = %bb.b
  %i.v = add i64 %i.n, %5                         ; 3 uses
  store i64 %i.v, ptr %i.a, align 8
  br i1 %6, label %bb.f, label %.sink.split

bb.e:                                             ; preds = %bb.b
  %.sroa.0.0.i = tail call i64 @llvm.umax.i64(i64 %i.l, i64 %i.g)
  %.sroa.01.0 = select i1 %6, i64 %i.g, i64 %.sroa.0.0.i ; 4 uses
  %umax49 = tail call i64 @llvm.umax.i64(i64 %.sroa.01.0, i64 %5)
  %exitcond.not86.not = icmp ult i64 %.sroa.01.0, %5
  br i1 %exitcond.not86.not, label %.lr.ph89, label %._crit_edge90

.sink.split:                                      ; preds = %bb.d, %bb.r, %bb.o
  %.sink = phi i64 [ %i.k, %bb.o ], [ 0, %bb.r ], [ 0, %bb.d ] ; 2 uses
  %.ph71 = phi i64 [ %i.aq, %bb.o ], [ %i.ay, %bb.r ], [ %i.v, %bb.d ]
  store i64 %.sink, ptr %i.h, align 8
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.r, %bb.o, %bb.d
  %i.w = phi i64 [ %i.l, %bb.r ], [ %i.l, %bb.d ], [ %i.l, %bb.o ], [ %.sink, %.sink.split ]
  %i.x = phi i64 [ %i.ay, %bb.r ], [ %i.v, %bb.d ], [ %i.aq, %bb.o ], [ %.ph71, %.sink.split ] ; 2 uses
  %i.y = add i64 %i.b, %i.x                       ; 2 uses
  %i.z = icmp ult i64 %i.y, %3
  br i1 %i.z, label %bb.b, label %._crit_edge

bb.g:                                             ; preds = %bb.p
  %i.aa = add i64 %.sroa.02.087, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.aa, %umax49
  br i1 %exitcond.not, label %._crit_edge90, label %.lr.ph89

._crit_edge90:                                    ; preds = %bb.g, %bb.e
  %.sroa.05.0 = select i1 %6, i64 0, i64 %i.l     ; 2 uses
  %i.ab = icmp ult i64 %.sroa.05.0, %i.g
  br i1 %i.ab, label %.lr.ph93, label %._crit_edge94

.lr.ph89:                                         ; preds = %bb.e, %bb.g
  %.sroa.02.087 = phi i64 [ %i.aa, %bb.g ], [ %.sroa.01.0, %bb.e ] ; 4 uses
  %i.ac = add i64 %.sroa.02.087, %i.n             ; 2 uses
  %i.ad = icmp ult i64 %i.ac, %3
  br i1 %i.ad, label %bb.p, label %bb.q

bb.h:                                             ; preds = %bb.m
  %i.ae = icmp ult i64 %.sroa.05.0, %i.ag
  br i1 %i.ae, label %.lr.ph93, label %._crit_edge94

._crit_edge94:                                    ; preds = %._crit_edge90, %bb.h
  %i.af = add i64 %i.n, %5                        ; 2 uses
  store i64 %i.af, ptr %i.a, align 8
  br i1 %6, label %bb.j, label %bb.i

.lr.ph93:                                         ; preds = %._crit_edge90, %bb.h
  %.sroa.2.091 = phi i64 [ %i.ag, %bb.h ], [ %i.g, %._crit_edge90 ]
  %i.ag = add i64 %.sroa.2.091, -1                ; 6 uses
  %i.ah = icmp ult i64 %i.ag, %5
  br i1 %i.ah, label %bb.k, label %bb.l

bb.i:                                             ; preds = %._crit_edge94
  store i64 0, ptr %i.h, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge94
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_0
