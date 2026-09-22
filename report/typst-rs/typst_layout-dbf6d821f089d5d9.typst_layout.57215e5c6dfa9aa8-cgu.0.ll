Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_layout-dbf6d821f089d5d9.typst_layout.57215e5c6dfa9aa8-cgu.0?download=true
inline.NumInlined: 19601
inline.NumDeleted: 9837
loop-unroll.NumCompletelyUnrolled: 50
loop-unroll.NumRuntimeUnrolled: 55
loop-unroll.NumUnrolled: 106
begin_hunk_0_@_RNvXs_NtCsloFShupyl5J_6comemo5inputINtNtB6_5track7TrackedNtNtNtCsdaEETE4DqmE_13typst_library13introspection7locator7LocatorNtNvBV_1__12___ComemoCallENtB4_5Input4callCs7tN9tvpkfrg_12typst_layout:bb.a
  br i1 %.not9, label %bb.t, label %bb.s

bb.r:                                             ; preds = %bb.h, %bb.c
  %i.db = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock21MappedRwLockReadGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtBG_5mutex5MutexNtNtB1B_9raw_mutex8RawMutexINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapooNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEEEECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api5mutex10MutexGuardNtNtCsg5ZWEykmiUC_11parking_lot9raw_mutex8RawMutexINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapooNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEEECs7tN9tvpkfrg_12typst_layout.exit, %bb.c
  resume { ptr, i32 } %.pn

bb.s:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock21MappedRwLockReadGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtBG_5mutex5MutexNtNtB1B_9raw_mutex8RawMutexINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapooNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEEEECs7tN9tvpkfrg_12typst_layout.exit21
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8, !nonnull !41, !align !46, !noundef !41
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = load ptr, ptr %i.de, align 8, !invariant.load !41, !nonnull !41
  %i.dg = tail call noundef zeroext i1 %i.df(ptr noundef nonnull %i.da, i128 noundef %.sroa.0.0) #59 ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock21MappedRwLockReadGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtBG_5mutex5MutexNtNtB1B_9raw_mutex8RawMutexINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapooNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEEEECs7tN9tvpkfrg_12typst_layout.exit21
  ret i128 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB6_3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtBY_5frame9FrameItemEEINtB4_10SpecExtendBT_QINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain5ChainINtNtB6_9into_iter8IntoIterBT_EINtNtB2C_3map3MapIB3q_TNtNtBY_3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityBU_B1M_EENCNvMs_NtB4A_8layouterNtB5L_12GridLayouter20render_fills_strokessi_0EEE11spec_extendB4C_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(64) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5.i.i.i.i.i.i.i = alloca [184 x i8], align 8 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51182)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51183)
  %i.a = load ptr, ptr %1, align 8, !alias.scope !51184, !noalias !51185, !noundef !41
  %.not.i.i.i = icmp eq ptr %i.a, null            ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !51184, !noalias !51185, !noundef !41
  %.not7.i.i.i = icmp eq ptr %i.c, null           ; 3 uses
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !51184, !noalias !51185, !nonnull !41, !noundef !41
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val10.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !51184, !noalias !51185, !nonnull !41, !noundef !41
  %i.f = ptrtoint ptr %.val10.i.i.i to i64
  %i.g = ptrtoint ptr %.val.i.i.i to i64
  %i.h = sub nuw i64 %i.f, %i.g
  %i.i = udiv exact i64 %i.h, 192                 ; 2 uses
  br i1 %.not7.i.i.i, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter6traits8iteratorQINtNtNtB9_8adapters5chain5ChainINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB2e_5frame9FrameItemEEINtNtBV_3map3MapIB1m_TNtNtB2e_3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityB2a_B32_EENCNvMs_NtB48_8layouterNtB5k_12GridLayouter20render_fills_strokessi_0EENtB5_8Iterator9size_hintB4a_.exit.i, label %bb.e

bb.c:                                             ; preds = %bb.a
  br i1 %.not7.i.i.i, label %.thread.i, label %bb.d

.thread.i:                                        ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !51182, !noalias !51183, !noundef !41
  br label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtBL_5frame9FrameItemEE14extend_trustedQINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain5ChainINtNtB6_9into_iter8IntoIterBG_EINtNtB2k_3map3MapIB38_TNtNtBL_3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityBH_B1z_EENCNvMs_NtB4i_8layouterNtB5t_12GridLayouter20render_fills_strokessi_0EEEB4k_.exit

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val15.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !51184, !noalias !51185, !nonnull !41, !noundef !41
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val16.i.i.i = load ptr, ptr %i.m, align 8, !alias.scope !51184, !noalias !51185, !nonnull !41, !noundef !41
  %i.n = ptrtoint ptr %.val16.i.i.i to i64
  %i.o = ptrtoint ptr %.val15.i.i.i to i64
  %i.p = sub nuw i64 %i.n, %i.o
  %i.q = udiv exact i64 %i.p, 208
  br label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter6traits8iteratorQINtNtNtB9_8adapters5chain5ChainINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB2e_5frame9FrameItemEEINtNtBV_3map3MapIB1m_TNtNtB2e_3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityB2a_B32_EENCNvMs_NtB48_8layouterNtB5k_12GridLayouter20render_fills_strokessi_0EENtB5_8Iterator9size_hintB4a_.exit.i

bb.e:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val13.i.i.i = load ptr, ptr %i.r, align 8, !alias.scope !51184, !noalias !51185, !nonnull !41, !noundef !41
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val14.i.i.i = load ptr, ptr %i.s, align 8, !alias.scope !51184, !noalias !51185, !nonnull !41, !noundef !41
  %i.t = ptrtoint ptr %.val14.i.i.i to i64
  %i.u = ptrtoint ptr %.val13.i.i.i to i64
  %i.v = sub nuw i64 %i.t, %i.u
  %i.w = udiv exact i64 %i.v, 208
  %i.x = add nuw nsw i64 %i.w, %i.i
  br label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter6traits8iteratorQINtNtNtB9_8adapters5chain5ChainINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB2e_5frame9FrameItemEEINtNtBV_3map3MapIB1m_TNtNtB2e_3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityB2a_B32_EENCNvMs_NtB48_8layouterNtB5k_12GridLayouter20render_fills_strokessi_0EENtB5_8Iterator9size_hintB4a_.exit.i

_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter6traits8iteratorQINtNtNtB9_8adapters5chain5ChainINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB2e_5frame9FrameItemEEINtNtBV_3map3MapIB1m_TNtNtB2e_3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityB2a_B32_EENCNvMs_NtB48_8layouterNtB5k_12GridLayouter20render_fills_strokessi_0EENtB5_8Iterator9size_hintB4a_.exit.i: ; preds = %bb.e, %bb.d, %bb.b
  %.sink22.i.i.i = phi i64 [ %i.x, %bb.e ], [ %i.q, %bb.d ], [ %i.i, %bb.b ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !51186, !noalias !51183, !noundef !41 ; 3 uses
  %i.aa = load i64, ptr %0, align 8, !range !45, !alias.scope !51186, !noalias !51183, !noundef !41
  %i.ab = sub i64 %i.aa, %i.z
  %i.ac = icmp ugt i64 %.sink22.i.i.i, %i.ab
  br i1 %i.ac, label %bb.f, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtBJ_5frame9FrameItemEE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i, !prof !143

bb.f:                                             ; preds = %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter6traits8iteratorQINtNtNtB9_8adapters5chain5ChainINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB2e_5frame9FrameItemEEINtNtBV_3map3MapIB1m_TNtNtB2e_3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityB2a_B32_EENCNvMs_NtB48_8layouterNtB5k_12GridLayouter20render_fills_strokessi_0EENtB5_8Iterator9size_hintB4a_.exit.i
  tail call fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.z, i64 noundef %.sink22.i.i.i, i64 noundef 16, i64 noundef 192), !noalias !51183
  %.pre.i = load i64, ptr %i.y, align 8, !alias.scope !51182, !noalias !51183
  br label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtBJ_5frame9FrameItemEE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtBJ_5frame9FrameItemEE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %bb.f, %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter6traits8iteratorQINtNtNtB9_8adapters5chain5ChainINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB2e_5frame9FrameItemEEINtNtBV_3map3MapIB1m_TNtNtB2e_3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityB2a_B32_EENCNvMs_NtB48_8layouterNtB5k_12GridLayouter20render_fills_strokessi_0EENtB5_8Iterator9size_hintB4a_.exit.i
  %i.ad = phi i64 [ %i.z, %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter6traits8iteratorQINtNtNtB9_8adapters5chain5ChainINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB2e_5frame9FrameItemEEINtNtBV_3map3MapIB1m_TNtNtB2e_3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityB2a_B32_EENCNvMs_NtB48_8layouterNtB5k_12GridLayouter20render_fills_strokessi_0EENtB5_8Iterator9size_hintB4a_.exit.i ], [ %.pre.i, %bb.f ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !51182, !noalias !51183, !nonnull !41, !noundef !41 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51187)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51188)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51189)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51190)
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtBJ_5frame9FrameItemEE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51191)
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !51192, !noalias !51193, !nonnull !41, !noundef !41 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted.i.i.i.i.i.i = load ptr, ptr %i.ai, align 8, !alias.scope !51192, !noalias !51193 ; 2 uses
  %.not1.i.i.i.i.i.i = icmp eq ptr %.promoted.i.i.i.i.i.i, %i.ah
  br i1 %.not1.i.i.i.i.i.i, label %bb.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i
  %i.aj = phi i64 [ %i.an, %.lr.ph.i.i.i.i.i.i ], [ %i.ad, %bb.g ] ; 2 uses
  %i.ak = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.i ], [ %.promoted.i.i.i.i.i.i, %bb.g ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 192 ; 3 uses
  %i.am = getelementptr inbounds nuw [192 x i8], ptr %i.af, i64 %i.aj
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(192) %i.am, ptr noundef nonnull align 16 dereferenceable(192) %i.ak, i64 192, i1 false), !noalias !51194
  %i.an = add i64 %i.aj, 1                        ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.al, %i.ah
  br i1 %.not.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i
  store ptr %i.al, ptr %i.ai, align 8, !alias.scope !51192, !noalias !51193
  br label %bb.i

bb.h:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1Q_5frame9FrameItemEEEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtBJ_5frame9FrameItemEE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i
  %.sroa.5.1.i.i.i.i = phi i64 [ %i.ad, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtBJ_5frame9FrameItemEE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i ], [ %.sroa.5.0.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1Q_5frame9FrameItemEEEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i ] ; 3 uses
  br i1 %.not7.i.i.i, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtBL_5frame9FrameItemEE14extend_trustedQINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain5ChainINtNtB6_9into_iter8IntoIterBG_EINtNtB2k_3map3MapIB38_TNtNtBL_3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityBH_B1z_EENCNvMs_NtB4i_8layouterNtB5t_12GridLayouter20render_fills_strokessi_0EEEB4k_.exit, label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i.i.i.i.i, %bb.g
  %.sroa.5.0.i.i.i.i = phi i64 [ %i.ad, %bb.g ], [ %i.an, %._crit_edge.i.i.i.i.i.i ] ; 2 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1u_5frame9FrameItemEEECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(64) %1)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1Q_5frame9FrameItemEEEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i unwind label %bb.l, !noalias !51195

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1Q_5frame9FrameItemEEEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i: ; preds = %bb.i
  store ptr null, ptr %1, align 8, !alias.scope !51196, !noalias !51195
  br label %bb.h

bb.j:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51197)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51198)
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ap = load ptr, ptr %i.ao, align 8, !alias.scope !51199, !noalias !51200, !nonnull !41, !noundef !41 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %.promoted.i.i.i.i.i.i.i = load ptr, ptr %i.aq, align 8, !alias.scope !51199, !noalias !51200 ; 2 uses
  %.not8.i.i.i.i.i.i.i = icmp eq ptr %.promoted.i.i.i.i.i.i.i, %i.ap
  br i1 %.not8.i.i.i.i.i.i.i, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtBL_5frame9FrameItemEE14extend_trustedQINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain5ChainINtNtB6_9into_iter8IntoIterBG_EINtNtB2k_3map3MapIB38_TNtNtBL_3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityBH_B1z_EENCNvMs_NtB4i_8layouterNtB5t_12GridLayouter20render_fills_strokessi_0EEEB4k_.exit, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.j
  %.sroa.5.32..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.5.i.i.i.i.i.i.i, i64 8
  br label %bb.k

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %bb.k
  store ptr %i.at, ptr %i.aq, align 8, !alias.scope !51199, !noalias !51200
  br label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtBL_5frame9FrameItemEE14extend_trustedQINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain5ChainINtNtB6_9into_iter8IntoIterBG_EINtNtB2k_3map3MapIB38_TNtNtBL_3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityBH_B1z_EENCNvMs_NtB4i_8layouterNtB5t_12GridLayouter20render_fills_strokessi_0EEEB4k_.exit

bb.k:                                             ; preds = %bb.k, %.lr.ph.i.i.i.i.i.i.i
  %i.ar = phi i64 [ %.sroa.5.1.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %i.aw, %bb.k ] ; 2 uses
  %i.as = phi ptr [ %.promoted.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %i.at, %bb.k ] ; 3 uses
  %.sroa.46.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %.sroa.5.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(184) %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i, i64 184, i1 false), !noalias !51201
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 208 ; 3 uses
  %i.au = getelementptr inbounds nuw [192 x i8], ptr %i.af, i64 %i.ar ; 2 uses
  %i.av = load <2 x double>, ptr %.sroa.46.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !51201
  store <2 x double> %i.av, ptr %i.au, align 16, !noalias !51202
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(176) %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(176) %.sroa.5.32..sroa_idx.i.i.i.i.i.i.i, i64 176, i1 false), !noalias !51203
  %i.aw = add i64 %i.ar, 1                        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.at, %i.ap
  br i1 %.not.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %bb.k

bb.l:                                             ; preds = %bb.i
  %i.ax = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %1, align 8, !alias.scope !51196, !noalias !51195
  store i64 %.sroa.5.0.i.i.i.i, ptr %i.y, align 8, !alias.scope !51182, !noalias !51204
  resume { ptr, i32 } %i.ax

_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtBL_5frame9FrameItemEE14extend_trustedQINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain5ChainINtNtB6_9into_iter8IntoIterBG_EINtNtB2k_3map3MapIB38_TNtNtBL_3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityBH_B1z_EENCNvMs_NtB4i_8layouterNtB5t_12GridLayouter20render_fills_strokessi_0EEEB4k_.exit: ; preds = %.thread.i, %bb.h, %bb.j, %._crit_edge.i.i.i.i.i.i.i
  %i.ay = phi ptr [ %i.j, %.thread.i ], [ %i.y, %bb.h ], [ %i.y, %._crit_edge.i.i.i.i.i.i.i ], [ %i.y, %bb.j ]
  %.val2.i.i.sink.i.i.i.i.i = phi i64 [ %i.k, %.thread.i ], [ %.sroa.5.1.i.i.i.i, %bb.h ], [ %i.aw, %._crit_edge.i.i.i.i.i.i.i ], [ %.sroa.5.1.i.i.i.i, %bb.j ]
  store i64 %.val2.i.i.sink.i.i.i.i.i, ptr %i.ay, align 8, !alias.scope !51182, !noalias !51204
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtCs7tN9tvpkfrg_12typst_layout6inline4decoNtB4_14BezPathBuilderNtCsdQl7XGSB5tC_10ttf_parser14OutlineBuilder5close(ptr noalias nofree noundef align 8 dereferenceable(48) %0) unnamed_addr #1 {
bb.a:
  tail call void @_RNvMNtCsdqxqgV7ixUt_5kurbo7bezpathNtB2_7BezPath10close_path(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtCs7tN9tvpkfrg_12typst_layout6inline4decoNtB4_14BezPathBuilderNtCsdQl7XGSB5tC_10ttf_parser14OutlineBuilder7line_to(ptr noalias nofree noundef align 8 dereferenceable(48) %0, float noundef %1, float noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = insertelement <2 x float> poison, float %2, i64 0
  %i.d = insertelement <2 x float> %i.c, float %1, i64 1
  %i.e = fpext <2 x float> %i.d to <2 x double>
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load double, ptr %i.f, align 8, !alias.scope !51207, !noundef !41
  %i.h = load <2 x double>, ptr %i.b, align 8, !alias.scope !51207 ; 2 uses
  %i.i = shufflevector <2 x double> %i.h, <2 x double> poison, <2 x i32> zeroinitializer
  %i.j = fdiv <2 x double> %i.e, %i.i             ; 2 uses
  %i.k = fcmp ord <2 x double> %i.j, zeroinitializer
  %i.l = select <2 x i1> %i.k, <2 x double> %i.j, <2 x double> zeroinitializer
  %i.m = shufflevector <2 x double> %i.h, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.n = fmul <2 x double> %i.m, %i.l             ; 3 uses
  %i.o = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.n)
  %i.p = fcmp one <2 x double> %i.o, splat (double +inf)
  %i.q = fneg <2 x double> %i.n
  %i.r = shufflevector <2 x double> %i.q, <2 x double> %i.n, <2 x i32> <i32 0, i32 3>
  %i.s = select <2 x i1> %i.p, <2 x double> %i.r, <2 x double> <double -0.000000e+00, double 0.000000e+00> ; 2 uses
  %i.t = extractelement <2 x double> %i.s, i64 1
  %i.u = fadd double %i.g, %i.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store double %i.u, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.x = extractelement <2 x double> %i.s, i64 0
  store double %i.x, ptr %i.w, align 8
  store i64 1, ptr %i.a, align 8
  call void @_RNvMNtCsdqxqgV7ixUt_5kurbo7bezpathNtB2_7BezPath4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtCs7tN9tvpkfrg_12typst_layout6inline4decoNtB4_14BezPathBuilderNtCsdQl7XGSB5tC_10ttf_parser14OutlineBuilder7move_to(ptr noalias nofree noundef align 8 dereferenceable(48) %0, float noundef %1, float noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = insertelement <2 x float> poison, float %2, i64 0
  %i.d = insertelement <2 x float> %i.c, float %1, i64 1
  %i.e = fpext <2 x float> %i.d to <2 x double>
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load double, ptr %i.f, align 8, !alias.scope !51210, !noundef !41
  %i.h = load <2 x double>, ptr %i.b, align 8, !alias.scope !51210 ; 2 uses
  %i.i = shufflevector <2 x double> %i.h, <2 x double> poison, <2 x i32> zeroinitializer
  %i.j = fdiv <2 x double> %i.e, %i.i             ; 2 uses
  %i.k = fcmp ord <2 x double> %i.j, zeroinitializer
  %i.l = select <2 x i1> %i.k, <2 x double> %i.j, <2 x double> zeroinitializer
  %i.m = shufflevector <2 x double> %i.h, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.n = fmul <2 x double> %i.m, %i.l             ; 3 uses
  %i.o = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.n)
  %i.p = fcmp one <2 x double> %i.o, splat (double +inf)
  %i.q = fneg <2 x double> %i.n
  %i.r = shufflevector <2 x double> %i.q, <2 x double> %i.n, <2 x i32> <i32 0, i32 3>
  %i.s = select <2 x i1> %i.p, <2 x double> %i.r, <2 x double> <double -0.000000e+00, double 0.000000e+00> ; 2 uses
  %i.t = extractelement <2 x double> %i.s, i64 1
  %i.u = fadd double %i.g, %i.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store double %i.u, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.x = extractelement <2 x double> %i.s, i64 0
  store double %i.x, ptr %i.w, align 8
  store i64 0, ptr %i.a, align 8
  call void @_RNvMNtCsdqxqgV7ixUt_5kurbo7bezpathNtB2_7BezPath4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtCs7tN9tvpkfrg_12typst_layout6inline4decoNtB4_14BezPathBuilderNtCsdQl7XGSB5tC_10ttf_parser14OutlineBuilder7quad_to(ptr noalias nofree noundef align 8 dereferenceable(48) %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = insertelement <4 x float> poison, float %4, i64 0
  %i.d = insertelement <4 x float> %i.c, float %3, i64 1
  %i.e = insertelement <4 x float> %i.d, float %2, i64 2
  %i.f = insertelement <4 x float> %i.e, float %1, i64 3
  %i.g = fpext <4 x float> %i.f to <4 x double>
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load double, ptr %i.h, align 8, !alias.scope !51215, !noundef !41
  %i.j = load <2 x double>, ptr %i.b, align 8, !alias.scope !51215 ; 2 uses
  %i.k = shufflevector <2 x double> %i.j, <2 x double> poison, <4 x i32> zeroinitializer
  %i.l = fdiv <4 x double> %i.g, %i.k             ; 2 uses
  %i.m = fcmp ord <4 x double> %i.l, zeroinitializer
  %i.n = select <4 x i1> %i.m, <4 x double> %i.l, <4 x double> zeroinitializer
  %i.o = shufflevector <2 x double> %i.j, <2 x double> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.p = fmul <4 x double> %i.o, %i.n             ; 4 uses
  %i.q = tail call <4 x double> @llvm.fabs.v4f64(<4 x double> %i.p)
  %i.r = fcmp one <4 x double> %i.q, splat (double +inf) ; 3 uses
  %i.s = extractelement <4 x double> %i.p, i64 2
  %.neg.i = fneg double %i.s
  %i.t = extractelement <4 x i1> %i.r, i64 2
  %i.u = select i1 %i.t, double %.neg.i, double -0.000000e+00
  %i.v = shufflevector <4 x i1> %i.r, <4 x i1> poison, <2 x i32> <i32 3, i32 1>
  %i.w = shufflevector <4 x double> %i.p, <4 x double> poison, <2 x i32> <i32 3, i32 1>
  %i.x = select <2 x i1> %i.v, <2 x double> %i.w, <2 x double> zeroinitializer
  %i.y = insertelement <2 x double> poison, double %i.i, i64 0
  %i.z = shufflevector <2 x double> %i.y, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aa = fadd <2 x double> %i.z, %i.x            ; 2 uses
  %i.ab = extractelement <4 x double> %i.p, i64 0
  %.neg.i6 = fneg double %i.ab
  %i.ac = extractelement <4 x i1> %i.r, i64 0
  %i.ad = select i1 %i.ac, double %.neg.i6, double -0.000000e+00
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !51216
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.af = extractelement <2 x double> %i.aa, i64 0
  store double %i.af, ptr %i.ae, align 8, !noalias !51216
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store double %i.u, ptr %i.ag, align 8, !noalias !51216
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ai = extractelement <2 x double> %i.aa, i64 1
  store double %i.ai, ptr %i.ah, align 8, !noalias !51216
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store double %i.ad, ptr %i.aj, align 8, !noalias !51216
  store i64 2, ptr %i.a, align 8, !noalias !51216
  call void @_RNvMNtCsdqxqgV7ixUt_5kurbo7bezpathNtB2_7BezPath4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !51216
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtCs7tN9tvpkfrg_12typst_layout6inline4decoNtB4_14BezPathBuilderNtCsdQl7XGSB5tC_10ttf_parser14OutlineBuilder8curve_to(ptr noalias nofree noundef align 8 dereferenceable(48) %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load <2 x double>, ptr %i.b, align 8
  %i.d = insertelement <2 x float> poison, float %1, i64 0
  %i.e = insertelement <2 x float> %i.d, float %2, i64 1
  %i.f = fpext <2 x float> %i.e to <2 x double>
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load <2 x double>, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load double, ptr %i.i, align 8, !alias.scope !51221, !noundef !41 ; 3 uses
  %i.k = shufflevector <2 x double> %i.c, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.l = fdiv <2 x double> %i.f, %i.k             ; 2 uses
  %i.m = fcmp ord <2 x double> %i.l, zeroinitializer
  %i.n = select <2 x i1> %i.m, <2 x double> %i.l, <2 x double> zeroinitializer
  %i.o = shufflevector <2 x double> %i.h, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.p = fmul <2 x double> %i.o, %i.n             ; 3 uses
  %i.q = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.p) ; 2 uses
  %i.r = extractelement <2 x double> %i.q, i64 0
  %i.s = fcmp one double %i.r, +inf
  %i.t = extractelement <2 x double> %i.p, i64 0
  %spec.store.select4.i = select i1 %i.s, double %i.t, double 0.000000e+00
  %i.u = fadd double %i.j, %spec.store.select4.i
  %i.v = extractelement <2 x double> %i.q, i64 1
  %i.w = fcmp one double %i.v, +inf
  %i.x = extractelement <2 x double> %i.p, i64 1
  %.neg.i = fneg double %i.x
  %i.y = select i1 %i.w, double %.neg.i, double -0.000000e+00
  %i.z = insertelement <2 x float> poison, float %3, i64 0
  %i.aa = insertelement <2 x float> %i.z, float %4, i64 1
  %i.ab = fpext <2 x float> %i.aa to <2 x double>
  %i.ac = fdiv <2 x double> %i.ab, %i.k           ; 2 uses
  %i.ad = fcmp ord <2 x double> %i.ac, zeroinitializer
  %i.ae = select <2 x i1> %i.ad, <2 x double> %i.ac, <2 x double> zeroinitializer
  %i.af = fmul <2 x double> %i.o, %i.ae           ; 3 uses
  %i.ag = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.af) ; 2 uses
  %i.ah = extractelement <2 x double> %i.ag, i64 0
  %i.ai = fcmp one double %i.ah, +inf
  %i.aj = extractelement <2 x double> %i.af, i64 0
  %spec.store.select4.i3 = select i1 %i.ai, double %i.aj, double 0.000000e+00
  %i.ak = fadd double %i.j, %spec.store.select4.i3
  %i.al = extractelement <2 x double> %i.ag, i64 1
  %i.am = fcmp one double %i.al, +inf
  %i.an = extractelement <2 x double> %i.af, i64 1
  %.neg.i6 = fneg double %i.an
  %i.ao = select i1 %i.am, double %.neg.i6, double -0.000000e+00
  %i.ap = insertelement <2 x float> poison, float %5, i64 0
  %i.aq = insertelement <2 x float> %i.ap, float %6, i64 1
  %i.ar = fpext <2 x float> %i.aq to <2 x double>
  %i.as = fdiv <2 x double> %i.ar, %i.k           ; 2 uses
  %i.at = fcmp ord <2 x double> %i.as, zeroinitializer
  %i.au = select <2 x i1> %i.at, <2 x double> %i.as, <2 x double> zeroinitializer
  %i.av = fmul <2 x double> %i.o, %i.au           ; 3 uses
  %i.aw = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.av) ; 2 uses
  %i.ax = extractelement <2 x double> %i.aw, i64 0
  %i.ay = fcmp one double %i.ax, +inf
  %i.az = extractelement <2 x double> %i.av, i64 0
  %spec.store.select4.i9 = select i1 %i.ay, double %i.az, double 0.000000e+00
  %i.ba = fadd double %i.j, %spec.store.select4.i9
  %i.bb = extractelement <2 x double> %i.aw, i64 1
  %i.bc = fcmp one double %i.bb, +inf
  %i.bd = extractelement <2 x double> %i.av, i64 1
  %.neg.i12 = fneg double %i.bd
  %i.be = select i1 %i.bc, double %.neg.i12, double -0.000000e+00
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !51222
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store double %i.u, ptr %i.bf, align 8, !noalias !51222
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store double %i.y, ptr %i.bg, align 8, !noalias !51222
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store double %i.ak, ptr %i.bh, align 8, !noalias !51222
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store double %i.ao, ptr %i.bi, align 8, !noalias !51222
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store double %i.ba, ptr %i.bj, align 8, !noalias !51222
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store double %i.be, ptr %i.bk, align 8, !noalias !51222
  store i64 3, ptr %i.a, align 8, !noalias !51222
  call void @_RNvMNtCsdqxqgV7ixUt_5kurbo7bezpathNtB2_7BezPath4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !51222
  ret void
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvXs_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB4_6GlyphsNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5.0.in = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0 = load i64, ptr %.sroa.5.0.in, align 8, !noundef !41 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load i64, ptr %i.a, align 8, !alias.scope !139, !noundef !41 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val7 = load i64, ptr %i.b, align 8, !alias.scope !140, !noundef !41 ; 4 uses
  %i.c = icmp ult i64 %.val7, %.val
  %.not6 = icmp ugt i64 %.val7, %.sroa.5.0
  %or.cond = or i1 %i.c, %.not6
  br i1 %or.cond, label %bb.c, label %bb.b, !prof !118

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0 = load ptr, ptr %.sroa.0.0.in, align 8, !nonnull !41, !noundef !41
  %i.d = sub nuw i64 %.val7, %.val
  %i.e = getelementptr inbounds nuw [104 x i8], ptr %.sroa.0.0, i64 %.val
  %i.f = insertvalue { ptr, i64 } poison, ptr %i.e, 0
  %i.g = insertvalue { ptr, i64 } %i.f, i64 %i.d, 1
  ret { ptr, i64 } %i.g

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %.val, i64 noundef %.val7, i64 noundef %.sroa.5.0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @857) #53
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtNtCsaL1QbXo9JQH_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_5mutex10MutexGuardbEENtNtCs3oUPovFnLWP_4core3fmt5Debug3fmtCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree readonly align 8 captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @858, i64 noundef 11)
  %i.b = call noundef zeroext i1 @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc { ptr, double } @_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB4_3ZipINtNtB6_5chain5ChainINtNtNtBa_5slice4iter7IterMutNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameEINtNtBa_6option8IntoIterQB1I_EEIBW_IBW_INtNtB6_3map3MapINtB1i_4IterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter21FinishedHeaderRowInfoENCNvMNtB3K_8rowspansNtB3I_12GridLayouter14layout_rowspans_0EIB2C_NtNtB1M_3abs3AbsEEINtNtNtB8_7sources6repeat6RepeatB5T_EEENtNtNtB8_6traits8iterator8Iterator3nthB3M_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(96) %0, i64 noundef range(i64 1, 0) %1) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51262)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51263)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %.promoted.i.i = load ptr, ptr %i.b, align 8, !alias.scope !51264 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !51265, !nonnull !41 ; 4 uses
  %i.e = load i64, ptr %0, align 8, !range !49, !alias.scope !51265
  %.fr44.i.i = freeze i64 %i.e
  %i.f = trunc i64 %.fr44.i.i to i1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 9 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
end_hunk_0
