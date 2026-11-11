Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_plan-a78d50bf479d2301.polars_plan.b121b8564f397b47-cgu.10?download=true
inline.NumInlined: 10822
inline.NumDeleted: 3869
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtB4_4TakeQINtNtNtB4_8buffered9bufreader9BufReaderNtNtB6_2fs4FileEEECsfcROwRM8ZtH_11polars_plan:bb.a
.noexc:                                           ; preds = %bb.a, %.loopexit
  %i.p = phi i64 [ %i.n, %.loopexit ], [ 0, %bb.a ] ; 3 uses
  %.sroa.4.0.i.ph66 = phi ptr [ %.lcssa, %.loopexit ], [ null, %bb.a ] ; 2 uses
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.p), !dbg !30823
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !30824 ; 3 uses
  %i.r = load i64, ptr %i.q, align 8, !dbg !30824, !alias.scope !30802, !noundef !3674 ; 3 uses
  %i.s = icmp sgt i64 %i.r, -1, !dbg !30825
  call void @llvm.assume(i1 %i.s), !dbg !30826
  %.not.i5 = icmp eq ptr %.sroa.4.0.i.ph66, null, !dbg !30827
  br i1 %.not.i5, label %bb.e, label %bb.d, !dbg !30827

bb.d:                                             ; preds = %.noexc
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !30828
  %i.u = load ptr, ptr %i.t, align 8, !dbg !30828, !alias.scope !30802, !nonnull !3674, !noundef !3674
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.r, !dbg !30829
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.v, ptr nonnull readonly align 1 %i.a, i64 %i.p, i1 false), !dbg !30830
  %.pre.i = load i64, ptr %i.q, align 8, !dbg !30831, !alias.scope !30802
  br label %bb.e, !dbg !30832

bb.e:                                             ; preds = %bb.d, %.noexc
  %i.w = phi i64 [ %.pre.i, %bb.d ], [ %i.r, %.noexc ], !dbg !30831
  %i.x = add i64 %i.w, %i.p, !dbg !30831
  store i64 %i.x, ptr %i.q, align 8, !dbg !30831, !alias.scope !30802
  br label %.loopexit38, !dbg !30833

.loopexit38:                                      ; preds = %.split36, %.split35, %.split, %bb.f, %bb.e
  %.sroa.3.0 = phi ptr [ %.sroa.4.0.i.ph66, %bb.e ], [ %i.j, %bb.f ], [ %i.j, %.split ], [ %i.j, %.split35 ], [ %i.j, %.split36 ], !dbg !30834
  %.sroa.0.0 = phi i64 [ 0, %bb.e ], [ 1, %bb.f ], [ 1, %.split ], [ 1, %.split35 ], [ 1, %.split36 ], !dbg !30834
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !30835
  %i.y = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0, !dbg !30836
  %i.z = insertvalue { i64, ptr } %i.y, ptr %.sroa.3.0, 1, !dbg !30836
  ret { i64, ptr } %i.z, !dbg !30836

.split:                                           ; preds = %.lr.ph57
  %.mask37 = and i64 %i.k, -4294967296, !dbg !30837
  %i.aa = icmp eq i64 %.mask37, 17179869184, !dbg !30837
  br i1 %i.aa, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECsfcROwRM8ZtH_11polars_plan.exit, label %.loopexit38, !dbg !30838

.split36:                                         ; preds = %.lr.ph57
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 16, !dbg !30839
  %i.ac = load i8, ptr %i.ab, align 8, !dbg !30839, !range !4141, !noundef !3674
  %i.ad = icmp eq i8 %i.ac, 35, !dbg !30840
  br i1 %i.ad, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECsfcROwRM8ZtH_11polars_plan.exit, label %.loopexit38, !dbg !30838

.split35:                                         ; preds = %.lr.ph57
  %i.ae = getelementptr i8, ptr %i.j, i64 15, !dbg !30841
  %i.af = load i8, ptr %i.ae, align 8, !dbg !30841, !range !4141, !noundef !3674
  %i.ag = icmp eq i8 %i.af, 35, !dbg !30842
  br i1 %i.ag, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECsfcROwRM8ZtH_11polars_plan.exit, label %.loopexit38, !dbg !30838

bb.f:                                             ; preds = %.lr.ph57
  %i.ah = icmp ult ptr %i.j, inttoptr (i64 180388626432 to ptr), !dbg !30843
  call void @llvm.assume(i1 %i.ah), !dbg !30844
  %.mask = and i64 %i.k, -4294967296, !dbg !30845
  %i.ai = icmp eq i64 %.mask, 150323855360, !dbg !30845
  br i1 %i.ai, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECsfcROwRM8ZtH_11polars_plan.exit, label %.loopexit38, !dbg !30838

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %.split36, %.split35, %.split, %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECsfcROwRM8ZtH_11polars_plan(ptr nonnull %i.j), !dbg !30846
  %i.aj = call { i64, ptr } @_RNvXs3_NtNtNtCsh8eZTKRCwoO_3std2io8buffered9bufreaderINtB5_9BufReaderNtNtBb_2fs4FileENtB9_4Read4readCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(48) %.val.i, ptr noalias noundef nonnull %i.a, i64 noundef range(i64 0, 33) %.sroa.0.0.i.i), !dbg !30812, !noalias !30808 ; 2 uses
  %i.ak = extractvalue { i64, ptr } %i.aj, 0, !dbg !30813
  %i.al = extractvalue { i64, ptr } %i.aj, 1, !dbg !30813 ; 2 uses
  %i.am = trunc nuw i64 %i.ak to i1, !dbg !30814
  br i1 %i.am, label %.lr.ph57, label %.split53, !dbg !30814
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, ptr } @_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtB4_4TakeQINtNtNtB4_8buffered9bufreader9BufReaderRNtNtB6_2fs4FileEEECsfcROwRM8ZtH_11polars_plan(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !30847 !guid !30899 {
bb.a:
  %i.a = alloca [32 x i8], align 1                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !30918
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.a, i8 0, i64 32, i1 false), !dbg !30919
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !30900, !noundef !3674 ; 4 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %.noexc, label %.lr.ph, !dbg !30920

.lr.ph:                                           ; preds = %bb.a
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.c, i64 32) ; 2 uses
  %.val.i = load ptr, ptr %0, align 8, !alias.scope !30900, !nonnull !3674, !align !3709, !noundef !3674 ; 2 uses
  %i.e = call { i64, ptr } @_RNvXs3_NtNtNtCsh8eZTKRCwoO_3std2io8buffered9bufreaderINtB5_9BufReaderRNtNtBb_2fs4FileENtB9_4Read4readCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(48) %.val.i, ptr noalias noundef nonnull %i.a, i64 noundef range(i64 0, 33) %.sroa.0.0.i.i), !dbg !30921, !noalias !30901 ; 2 uses
  %i.f = extractvalue { i64, ptr } %i.e, 0, !dbg !30922
  %i.g = extractvalue { i64, ptr } %i.e, 1, !dbg !30922 ; 2 uses
  %i.h = trunc nuw i64 %i.f to i1, !dbg !30923
  br i1 %i.h, label %.lr.ph57, label %.split53, !dbg !30923

.split53:                                         ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECsfcROwRM8ZtH_11polars_plan.exit, %.lr.ph
  %.lcssa = phi ptr [ %i.g, %.lr.ph ], [ %i.al, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECsfcROwRM8ZtH_11polars_plan.exit ] ; 4 uses
  %i.i = ptrtoint ptr %.lcssa to i64              ; 2 uses
  %.not.i = icmp ult i64 %i.c, %i.i, !dbg !30924
  br i1 %.not.i, label %bb.b, label %.loopexit, !dbg !30924, !prof !3693

bb.b:                                             ; preds = %.split53
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @285, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @286) #37, !dbg !30925, !noalias !30900
  unreachable, !dbg !30925

.lr.ph57:                                         ; preds = %.lr.ph, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECsfcROwRM8ZtH_11polars_plan.exit
  %i.j = phi ptr [ %i.al, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECsfcROwRM8ZtH_11polars_plan.exit ], [ %i.g, %.lr.ph ] ; 11 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !30900), !dbg !30926
  %i.k = ptrtoint ptr %i.j to i64, !dbg !30926    ; 3 uses
  %i.l = and i64 %i.k, 3, !dbg !30927
  switch i64 %i.l, label %default.unreachable [
    i64 2, label %.split
    i64 3, label %bb.f
    i64 0, label %.split36
    i64 1, label %.split35
  ], !dbg !30928, !prof !4118

default.unreachable:                              ; preds = %.lr.ph57
  unreachable

.loopexit:                                        ; preds = %.split53
  %i.m = sub nuw i64 %i.c, %i.i, !dbg !30929
  store i64 %i.m, ptr %i.b, align 8, !dbg !30929, !alias.scope !30900
  %i.n = ptrtoint ptr %.lcssa to i64, !dbg !30926 ; 2 uses
  %i.o = icmp ult ptr %.lcssa, inttoptr (i64 33 to ptr)
  br i1 %i.o, label %.noexc, label %bb.c, !dbg !30930, !prof !4271

bb.c:                                             ; preds = %.loopexit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.n, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #35, !dbg !30931
  unreachable

.noexc:                                           ; preds = %bb.a, %.loopexit
  %i.p = phi i64 [ %i.n, %.loopexit ], [ 0, %bb.a ] ; 3 uses
  %.sroa.4.0.i.ph66 = phi ptr [ %.lcssa, %.loopexit ], [ null, %bb.a ] ; 2 uses
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.p), !dbg !30932
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !30933 ; 3 uses
  %i.r = load i64, ptr %i.q, align 8, !dbg !30933, !alias.scope !30911, !noundef !3674 ; 3 uses
  %i.s = icmp sgt i64 %i.r, -1, !dbg !30934
  call void @llvm.assume(i1 %i.s), !dbg !30935
  %.not.i5 = icmp eq ptr %.sroa.4.0.i.ph66, null, !dbg !30936
  br i1 %.not.i5, label %bb.e, label %bb.d, !dbg !30936

bb.d:                                             ; preds = %.noexc
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !30937
  %i.u = load ptr, ptr %i.t, align 8, !dbg !30937, !alias.scope !30911, !nonnull !3674, !noundef !3674
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.r, !dbg !30938
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.v, ptr nonnull readonly align 1 %i.a, i64 %i.p, i1 false), !dbg !30939
  %.pre.i = load i64, ptr %i.q, align 8, !dbg !30940, !alias.scope !30911
  br label %bb.e, !dbg !30941

bb.e:                                             ; preds = %bb.d, %.noexc
  %i.w = phi i64 [ %.pre.i, %bb.d ], [ %i.r, %.noexc ], !dbg !30940
  %i.x = add i64 %i.w, %i.p, !dbg !30940
  store i64 %i.x, ptr %i.q, align 8, !dbg !30940, !alias.scope !30911
  br label %.loopexit38, !dbg !30942

.loopexit38:                                      ; preds = %.split36, %.split35, %.split, %bb.f, %bb.e
  %.sroa.3.0 = phi ptr [ %.sroa.4.0.i.ph66, %bb.e ], [ %i.j, %bb.f ], [ %i.j, %.split ], [ %i.j, %.split35 ], [ %i.j, %.split36 ], !dbg !30943
  %.sroa.0.0 = phi i64 [ 0, %bb.e ], [ 1, %bb.f ], [ 1, %.split ], [ 1, %.split35 ], [ 1, %.split36 ], !dbg !30943
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !30944
  %i.y = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0, !dbg !30945
  %i.z = insertvalue { i64, ptr } %i.y, ptr %.sroa.3.0, 1, !dbg !30945
  ret { i64, ptr } %i.z, !dbg !30945

.split:                                           ; preds = %.lr.ph57
  %.mask37 = and i64 %i.k, -4294967296, !dbg !30946
  %i.aa = icmp eq i64 %.mask37, 17179869184, !dbg !30946
  br i1 %i.aa, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECsfcROwRM8ZtH_11polars_plan.exit, label %.loopexit38, !dbg !30947

.split36:                                         ; preds = %.lr.ph57
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 16, !dbg !30948
  %i.ac = load i8, ptr %i.ab, align 8, !dbg !30948, !range !4141, !noundef !3674
  %i.ad = icmp eq i8 %i.ac, 35, !dbg !30949
  br i1 %i.ad, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECsfcROwRM8ZtH_11polars_plan.exit, label %.loopexit38, !dbg !30947

.split35:                                         ; preds = %.lr.ph57
  %i.ae = getelementptr i8, ptr %i.j, i64 15, !dbg !30950
  %i.af = load i8, ptr %i.ae, align 8, !dbg !30950, !range !4141, !noundef !3674
  %i.ag = icmp eq i8 %i.af, 35, !dbg !30951
  br i1 %i.ag, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECsfcROwRM8ZtH_11polars_plan.exit, label %.loopexit38, !dbg !30947

bb.f:                                             ; preds = %.lr.ph57
  %i.ah = icmp ult ptr %i.j, inttoptr (i64 180388626432 to ptr), !dbg !30952
  call void @llvm.assume(i1 %i.ah), !dbg !30953
  %.mask = and i64 %i.k, -4294967296, !dbg !30954
  %i.ai = icmp eq i64 %.mask, 150323855360, !dbg !30954
  br i1 %i.ai, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECsfcROwRM8ZtH_11polars_plan.exit, label %.loopexit38, !dbg !30947

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %.split36, %.split35, %.split, %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECsfcROwRM8ZtH_11polars_plan(ptr nonnull %i.j), !dbg !30955
  %i.aj = call { i64, ptr } @_RNvXs3_NtNtNtCsh8eZTKRCwoO_3std2io8buffered9bufreaderINtB5_9BufReaderRNtNtBb_2fs4FileENtB9_4Read4readCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(48) %.val.i, ptr noalias noundef nonnull %i.a, i64 noundef range(i64 0, 33) %.sroa.0.0.i.i), !dbg !30921, !noalias !30917 ; 2 uses
  %i.ak = extractvalue { i64, ptr } %i.aj, 0, !dbg !30922
  %i.al = extractvalue { i64, ptr } %i.aj, 1, !dbg !30922 ; 2 uses
  %i.am = trunc nuw i64 %i.ak to i1, !dbg !30923
  br i1 %i.am, label %.lr.ph57, label %.split53, !dbg !30923
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, ptr } @_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtNtNtCs9VoZUfg37wD_6flate22gz7bufread14MultiGzDecoderNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(320) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !30956 !guid !30994 {
bb.a:
  %i.a = alloca [32 x i8], align 1                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !31010
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.a, i8 0, i64 32, i1 false), !dbg !31011
  %i.b = call { i64, ptr } @_RNvXs8_NtNtCs9VoZUfg37wD_6flate22gz7bufreadINtB5_14MultiGzDecoderNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceENtNtCsh8eZTKRCwoO_3std2io4Read4readCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(320) %0, ptr noalias noundef nonnull %i.a, i64 noundef 32), !dbg !31012 ; 2 uses
  %i.c = extractvalue { i64, ptr } %i.b, 0, !dbg !31012
  %i.d = extractvalue { i64, ptr } %i.b, 1, !dbg !31012 ; 3 uses
  %2 = ptrtoint ptr %i.d to i64, !dbg !31012      ; 2 uses
  %i.e = trunc nuw i64 %i.c to i1, !dbg !31013
  br i1 %i.e, label %.lr.ph, label %._crit_edge, !dbg !31013

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECsfcROwRM8ZtH_11polars_plan.exit
  %3 = phi i64 [ %5, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECsfcROwRM8ZtH_11polars_plan.exit ], [ %2, %bb.a ] ; 3 uses
  %4 = phi ptr [ %i.ad, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECsfcROwRM8ZtH_11polars_plan.exit ], [ %i.d, %bb.a ] ; 10 uses
  %i.f = and i64 %3, 3, !dbg !31014
  switch i64 %i.f, label %default.unreachable [
    i64 2, label %.split
    i64 3, label %bb.e
    i64 0, label %.split31
    i64 1, label %.split30
  ], !dbg !31015, !prof !4118

default.unreachable:                              ; preds = %.lr.ph
  unreachable

._crit_edge:                                      ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECsfcROwRM8ZtH_11polars_plan.exit, %bb.a
  %.lcssa35 = phi ptr [ %i.d, %bb.a ], [ %i.ad, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECsfcROwRM8ZtH_11polars_plan.exit ], !dbg !31012 ; 3 uses
  %.lcssa = phi i64 [ %2, %bb.a ], [ %5, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECsfcROwRM8ZtH_11polars_plan.exit ], !dbg !31012 ; 4 uses
  %i.g = icmp ult ptr %.lcssa35, inttoptr (i64 33 to ptr)
  br i1 %i.g, label %.noexc, label %bb.b, !dbg !31016, !prof !3864

bb.b:                                             ; preds = %._crit_edge
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.lcssa, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #35, !dbg !31017
  unreachable

.noexc:                                           ; preds = %._crit_edge
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.lcssa), !dbg !31018
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !31019 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !dbg !31019, !alias.scope !31004, !noundef !3674 ; 3 uses
  %i.j = icmp sgt i64 %i.i, -1, !dbg !31020
  call void @llvm.assume(i1 %i.j), !dbg !31021
  %.not.i = icmp eq ptr %.lcssa35, null, !dbg !31022
  br i1 %.not.i, label %bb.d, label %bb.c, !dbg !31022

bb.c:                                             ; preds = %.noexc
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !31023
  %i.l = load ptr, ptr %i.k, align 8, !dbg !31023, !alias.scope !31004, !nonnull !3674, !noundef !3674
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.i, !dbg !31024
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr nonnull readonly align 1 %i.a, i64 %.lcssa, i1 false), !dbg !31025
  %.pre.i = load i64, ptr %i.h, align 8, !dbg !31026, !alias.scope !31004
  br label %bb.d, !dbg !31027

bb.d:                                             ; preds = %bb.c, %.noexc
  %i.n = phi i64 [ %.pre.i, %bb.c ], [ %i.i, %.noexc ], !dbg !31026
  %i.o = add i64 %i.n, %.lcssa, !dbg !31026
  store i64 %i.o, ptr %i.h, align 8, !dbg !31026, !alias.scope !31004
  br label %.loopexit, !dbg !31028

.loopexit:                                        ; preds = %bb.e, %.split, %.split30, %.split31, %bb.d
  %i.p = phi ptr [ %.lcssa35, %bb.d ], [ %4, %.split31 ], [ %4, %.split30 ], [ %4, %.split ], [ %4, %bb.e ]
  %.sroa.0.0 = phi i64 [ 0, %bb.d ], [ 1, %.split31 ], [ 1, %.split30 ], [ 1, %.split ], [ 1, %bb.e ], !dbg !31029
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !31030
  %i.q = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0, !dbg !31031
  %i.r = insertvalue { i64, ptr } %i.q, ptr %i.p, 1, !dbg !31031
  ret { i64, ptr } %i.r, !dbg !31031

.split:                                           ; preds = %.lr.ph
  %.mask32 = and i64 %3, -4294967296, !dbg !31032
  %i.s = icmp eq i64 %.mask32, 17179869184, !dbg !31032
  br i1 %i.s, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECsfcROwRM8ZtH_11polars_plan.exit, label %.loopexit, !dbg !31033

.split31:                                         ; preds = %.lr.ph
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %4) ]
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16, !dbg !31034
  %i.u = load i8, ptr %i.t, align 8, !dbg !31034, !range !4141, !noundef !3674
  %i.v = icmp eq i8 %i.u, 35, !dbg !31035
  br i1 %i.v, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECsfcROwRM8ZtH_11polars_plan.exit, label %.loopexit, !dbg !31033

.split30:                                         ; preds = %.lr.ph
  %i.w = getelementptr i8, ptr %4, i64 15, !dbg !31036
  %i.x = load i8, ptr %i.w, align 8, !dbg !31036, !range !4141, !noundef !3674
  %i.y = icmp eq i8 %i.x, 35, !dbg !31037
  br i1 %i.y, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECsfcROwRM8ZtH_11polars_plan.exit, label %.loopexit, !dbg !31033

bb.e:                                             ; preds = %.lr.ph
  %i.z = icmp ult ptr %4, inttoptr (i64 180388626432 to ptr), !dbg !31038
  call void @llvm.assume(i1 %i.z), !dbg !31039
  %.mask = and i64 %3, -4294967296, !dbg !31040
  %i.aa = icmp eq i64 %.mask, 150323855360, !dbg !31040
  br i1 %i.aa, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECsfcROwRM8ZtH_11polars_plan.exit, label %.loopexit, !dbg !31033

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %.split31, %.split30, %.split, %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %4) ]
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECsfcROwRM8ZtH_11polars_plan(ptr nonnull %4), !dbg !31041
  %i.ab = call { i64, ptr } @_RNvXs8_NtNtCs9VoZUfg37wD_6flate22gz7bufreadINtB5_14MultiGzDecoderNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceENtNtCsh8eZTKRCwoO_3std2io4Read4readCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(320) %0, ptr noalias noundef nonnull %i.a, i64 noundef 32), !dbg !31012 ; 2 uses
  %i.ac = extractvalue { i64, ptr } %i.ab, 0, !dbg !31012
  %i.ad = extractvalue { i64, ptr } %i.ab, 1, !dbg !31012 ; 3 uses
  %5 = ptrtoint ptr %i.ad to i64, !dbg !31012     ; 2 uses
  %i.ae = trunc nuw i64 %i.ac to i1, !dbg !31013
  br i1 %i.ae, label %.lr.ph, label %._crit_edge, !dbg !31013
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, ptr } @_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtNtNtCs9VoZUfg37wD_6flate24zlib7bufread11ZlibDecoderNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(192) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !31042 !guid !31080 {
bb.a:
  %i.a = alloca [32 x i8], align 1                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !31096
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.a, i8 0, i64 32, i1 false), !dbg !31097
  %i.b = call { i64, ptr } @_RNvXs4_NtNtCs9VoZUfg37wD_6flate24zlib7bufreadINtB5_11ZlibDecoderNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceENtNtCsh8eZTKRCwoO_3std2io4Read4readCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(192) %0, ptr noalias noundef nonnull %i.a, i64 noundef 32), !dbg !31098 ; 2 uses
  %i.c = extractvalue { i64, ptr } %i.b, 0, !dbg !31098
  %i.d = extractvalue { i64, ptr } %i.b, 1, !dbg !31098 ; 3 uses
  %2 = ptrtoint ptr %i.d to i64, !dbg !31098      ; 2 uses
  %i.e = trunc nuw i64 %i.c to i1, !dbg !31099
  br i1 %i.e, label %.lr.ph, label %._crit_edge, !dbg !31099

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECsfcROwRM8ZtH_11polars_plan.exit
  %3 = phi i64 [ %5, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECsfcROwRM8ZtH_11polars_plan.exit ], [ %2, %bb.a ] ; 3 uses
  %4 = phi ptr [ %i.ad, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECsfcROwRM8ZtH_11polars_plan.exit ], [ %i.d, %bb.a ] ; 10 uses
  %i.f = and i64 %3, 3, !dbg !31100
  switch i64 %i.f, label %default.unreachable [
    i64 2, label %.split
    i64 3, label %bb.e
    i64 0, label %.split31
    i64 1, label %.split30
  ], !dbg !31101, !prof !4118

default.unreachable:                              ; preds = %.lr.ph
  unreachable

._crit_edge:                                      ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECsfcROwRM8ZtH_11polars_plan.exit, %bb.a
  %.lcssa35 = phi ptr [ %i.d, %bb.a ], [ %i.ad, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECsfcROwRM8ZtH_11polars_plan.exit ], !dbg !31098 ; 3 uses
  %.lcssa = phi i64 [ %2, %bb.a ], [ %5, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECsfcROwRM8ZtH_11polars_plan.exit ], !dbg !31098 ; 4 uses
  %i.g = icmp ult ptr %.lcssa35, inttoptr (i64 33 to ptr)
  br i1 %i.g, label %.noexc, label %bb.b, !dbg !31102, !prof !3864

bb.b:                                             ; preds = %._crit_edge
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.lcssa, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #35, !dbg !31103
  unreachable

.noexc:                                           ; preds = %._crit_edge
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.lcssa), !dbg !31104
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !31105 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !dbg !31105, !alias.scope !31090, !noundef !3674 ; 3 uses
  %i.j = icmp sgt i64 %i.i, -1, !dbg !31106
  call void @llvm.assume(i1 %i.j), !dbg !31107
  %.not.i = icmp eq ptr %.lcssa35, null, !dbg !31108
  br i1 %.not.i, label %bb.d, label %bb.c, !dbg !31108

bb.c:                                             ; preds = %.noexc
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !31109
  %i.l = load ptr, ptr %i.k, align 8, !dbg !31109, !alias.scope !31090, !nonnull !3674, !noundef !3674
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.i, !dbg !31110
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr nonnull readonly align 1 %i.a, i64 %.lcssa, i1 false), !dbg !31111
  %.pre.i = load i64, ptr %i.h, align 8, !dbg !31112, !alias.scope !31090
  br label %bb.d, !dbg !31113

bb.d:                                             ; preds = %bb.c, %.noexc
  %i.n = phi i64 [ %.pre.i, %bb.c ], [ %i.i, %.noexc ], !dbg !31112
  %i.o = add i64 %i.n, %.lcssa, !dbg !31112
  store i64 %i.o, ptr %i.h, align 8, !dbg !31112, !alias.scope !31090
  br label %.loopexit, !dbg !31114

.loopexit:                                        ; preds = %bb.e, %.split, %.split30, %.split31, %bb.d
  %i.p = phi ptr [ %.lcssa35, %bb.d ], [ %4, %.split31 ], [ %4, %.split30 ], [ %4, %.split ], [ %4, %bb.e ]
  %.sroa.0.0 = phi i64 [ 0, %bb.d ], [ 1, %.split31 ], [ 1, %.split30 ], [ 1, %.split ], [ 1, %bb.e ], !dbg !31115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !31116
  %i.q = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0, !dbg !31117
  %i.r = insertvalue { i64, ptr } %i.q, ptr %i.p, 1, !dbg !31117
  ret { i64, ptr } %i.r, !dbg !31117

.split:                                           ; preds = %.lr.ph
  %.mask32 = and i64 %3, -4294967296, !dbg !31118
  %i.s = icmp eq i64 %.mask32, 17179869184, !dbg !31118
  br i1 %i.s, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECsfcROwRM8ZtH_11polars_plan.exit, label %.loopexit, !dbg !31119

.split31:                                         ; preds = %.lr.ph
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %4) ]
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16, !dbg !31120
  %i.u = load i8, ptr %i.t, align 8, !dbg !31120, !range !4141, !noundef !3674
  %i.v = icmp eq i8 %i.u, 35, !dbg !31121
  br i1 %i.v, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECsfcROwRM8ZtH_11polars_plan.exit, label %.loopexit, !dbg !31119

.split30:                                         ; preds = %.lr.ph
  %i.w = getelementptr i8, ptr %4, i64 15, !dbg !31122
  %i.x = load i8, ptr %i.w, align 8, !dbg !31122, !range !4141, !noundef !3674
  %i.y = icmp eq i8 %i.x, 35, !dbg !31123
  br i1 %i.y, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECsfcROwRM8ZtH_11polars_plan.exit, label %.loopexit, !dbg !31119

bb.e:                                             ; preds = %.lr.ph
  %i.z = icmp ult ptr %4, inttoptr (i64 180388626432 to ptr), !dbg !31124
  call void @llvm.assume(i1 %i.z), !dbg !31125
  %.mask = and i64 %3, -4294967296, !dbg !31126
  %i.aa = icmp eq i64 %.mask, 150323855360, !dbg !31126
  br i1 %i.aa, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECsfcROwRM8ZtH_11polars_plan.exit, label %.loopexit, !dbg !31119

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %.split31, %.split30, %.split, %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %4) ]
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECsfcROwRM8ZtH_11polars_plan(ptr nonnull %4), !dbg !31127
  %i.ab = call { i64, ptr } @_RNvXs4_NtNtCs9VoZUfg37wD_6flate24zlib7bufreadINtB5_11ZlibDecoderNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceENtNtCsh8eZTKRCwoO_3std2io4Read4readCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(192) %0, ptr noalias noundef nonnull %i.a, i64 noundef 32), !dbg !31098 ; 2 uses
  %i.ac = extractvalue { i64, ptr } %i.ab, 0, !dbg !31098
  %i.ad = extractvalue { i64, ptr } %i.ab, 1, !dbg !31098 ; 3 uses
  %5 = ptrtoint ptr %i.ad to i64, !dbg !31098     ; 2 uses
  %i.ae = trunc nuw i64 %i.ac to i1, !dbg !31099
  br i1 %i.ae, label %.lr.ph, label %._crit_edge, !dbg !31099
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, ptr } @_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readINtNtNtCsi0YuHEPkLKL_4zstd6stream4read7DecoderNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(72) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !31128 !guid !31166 {
bb.a:
  %i.a = alloca [32 x i8], align 1                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !31182
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.a, i8 0, i64 32, i1 false), !dbg !31183
  %i.b = call { i64, ptr } @_RNvXs1_NtNtCsi0YuHEPkLKL_4zstd6stream4readINtB5_7DecoderNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceENtNtCsh8eZTKRCwoO_3std2io4Read4readCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(72) %0, ptr noalias noundef nonnull %i.a, i64 noundef 32), !dbg !31184 ; 2 uses
  %i.c = extractvalue { i64, ptr } %i.b, 0, !dbg !31184
  %i.d = extractvalue { i64, ptr } %i.b, 1, !dbg !31184 ; 3 uses
  %2 = ptrtoint ptr %i.d to i64, !dbg !31184      ; 2 uses
  %i.e = trunc nuw i64 %i.c to i1, !dbg !31185
  br i1 %i.e, label %.lr.ph, label %._crit_edge, !dbg !31185

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECsfcROwRM8ZtH_11polars_plan.exit
  %3 = phi i64 [ %5, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECsfcROwRM8ZtH_11polars_plan.exit ], [ %2, %bb.a ] ; 3 uses
  %4 = phi ptr [ %i.ad, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECsfcROwRM8ZtH_11polars_plan.exit ], [ %i.d, %bb.a ] ; 10 uses
  %i.f = and i64 %3, 3, !dbg !31186
  switch i64 %i.f, label %default.unreachable [
    i64 2, label %.split
    i64 3, label %bb.e
    i64 0, label %.split31
    i64 1, label %.split30
  ], !dbg !31187, !prof !4118

default.unreachable:                              ; preds = %.lr.ph
  unreachable

._crit_edge:                                      ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECsfcROwRM8ZtH_11polars_plan.exit, %bb.a
  %.lcssa35 = phi ptr [ %i.d, %bb.a ], [ %i.ad, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECsfcROwRM8ZtH_11polars_plan.exit ], !dbg !31184 ; 3 uses
  %.lcssa = phi i64 [ %2, %bb.a ], [ %5, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECsfcROwRM8ZtH_11polars_plan.exit ], !dbg !31184 ; 4 uses
  %i.g = icmp ult ptr %.lcssa35, inttoptr (i64 33 to ptr)
  br i1 %i.g, label %.noexc, label %bb.b, !dbg !31188, !prof !3864

bb.b:                                             ; preds = %._crit_edge
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.lcssa, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #35, !dbg !31189
  unreachable

.noexc:                                           ; preds = %._crit_edge
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.lcssa), !dbg !31190
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !31191 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !dbg !31191, !alias.scope !31176, !noundef !3674 ; 3 uses
  %i.j = icmp sgt i64 %i.i, -1, !dbg !31192
  call void @llvm.assume(i1 %i.j), !dbg !31193
  %.not.i = icmp eq ptr %.lcssa35, null, !dbg !31194
  br i1 %.not.i, label %bb.d, label %bb.c, !dbg !31194

bb.c:                                             ; preds = %.noexc
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !31195
  %i.l = load ptr, ptr %i.k, align 8, !dbg !31195, !alias.scope !31176, !nonnull !3674, !noundef !3674
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.i, !dbg !31196
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr nonnull readonly align 1 %i.a, i64 %.lcssa, i1 false), !dbg !31197
  %.pre.i = load i64, ptr %i.h, align 8, !dbg !31198, !alias.scope !31176
  br label %bb.d, !dbg !31199

bb.d:                                             ; preds = %bb.c, %.noexc
  %i.n = phi i64 [ %.pre.i, %bb.c ], [ %i.i, %.noexc ], !dbg !31198
  %i.o = add i64 %i.n, %.lcssa, !dbg !31198
  store i64 %i.o, ptr %i.h, align 8, !dbg !31198, !alias.scope !31176
  br label %.loopexit, !dbg !31200

.loopexit:                                        ; preds = %bb.e, %.split, %.split30, %.split31, %bb.d
  %i.p = phi ptr [ %.lcssa35, %bb.d ], [ %4, %.split31 ], [ %4, %.split30 ], [ %4, %.split ], [ %4, %bb.e ]
  %.sroa.0.0 = phi i64 [ 0, %bb.d ], [ 1, %.split31 ], [ 1, %.split30 ], [ 1, %.split ], [ 1, %bb.e ], !dbg !31201
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !31202
  %i.q = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0, !dbg !31203
  %i.r = insertvalue { i64, ptr } %i.q, ptr %i.p, 1, !dbg !31203
  ret { i64, ptr } %i.r, !dbg !31203

.split:                                           ; preds = %.lr.ph
  %.mask32 = and i64 %3, -4294967296, !dbg !31204
  %i.s = icmp eq i64 %.mask32, 17179869184, !dbg !31204
  br i1 %i.s, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECsfcROwRM8ZtH_11polars_plan.exit, label %.loopexit, !dbg !31205

.split31:                                         ; preds = %.lr.ph
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %4) ]
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16, !dbg !31206
  %i.u = load i8, ptr %i.t, align 8, !dbg !31206, !range !4141, !noundef !3674
  %i.v = icmp eq i8 %i.u, 35, !dbg !31207
  br i1 %i.v, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECsfcROwRM8ZtH_11polars_plan.exit, label %.loopexit, !dbg !31205

.split30:                                         ; preds = %.lr.ph
  %i.w = getelementptr i8, ptr %4, i64 15, !dbg !31208
  %i.x = load i8, ptr %i.w, align 8, !dbg !31208, !range !4141, !noundef !3674
  %i.y = icmp eq i8 %i.x, 35, !dbg !31209
  br i1 %i.y, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECsfcROwRM8ZtH_11polars_plan.exit, label %.loopexit, !dbg !31205

bb.e:                                             ; preds = %.lr.ph
  %i.z = icmp ult ptr %4, inttoptr (i64 180388626432 to ptr), !dbg !31210
  call void @llvm.assume(i1 %i.z), !dbg !31211
  %.mask = and i64 %3, -4294967296, !dbg !31212
  %i.aa = icmp eq i64 %.mask, 150323855360, !dbg !31212
  br i1 %i.aa, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECsfcROwRM8ZtH_11polars_plan.exit, label %.loopexit, !dbg !31205

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %.split31, %.split30, %.split, %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %4) ]
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECsfcROwRM8ZtH_11polars_plan(ptr nonnull %4), !dbg !31213
  %i.ab = call { i64, ptr } @_RNvXs1_NtNtCsi0YuHEPkLKL_4zstd6stream4readINtB5_7DecoderNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceENtNtCsh8eZTKRCwoO_3std2io4Read4readCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(72) %0, ptr noalias noundef nonnull %i.a, i64 noundef 32), !dbg !31184 ; 2 uses
  %i.ac = extractvalue { i64, ptr } %i.ab, 0, !dbg !31184
  %i.ad = extractvalue { i64, ptr } %i.ab, 1, !dbg !31184 ; 3 uses
  %5 = ptrtoint ptr %i.ad to i64, !dbg !31184     ; 2 uses
  %i.ae = trunc nuw i64 %i.ac to i1, !dbg !31185
  br i1 %i.ae, label %.lr.ph, label %._crit_edge, !dbg !31185
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, ptr } @_RINvNvNtCsh8eZTKRCwoO_3std2io19default_read_to_end16small_probe_readNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !31214 !guid !31252 {
bb.a:
  %i.a = alloca [32 x i8], align 1                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !31268
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.a, i8 0, i64 32, i1 false), !dbg !31269
  %i.b = call { i64, ptr } @_RNvXs1_NtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_readerNtB5_12ReaderSourceNtNtCsh8eZTKRCwoO_3std2io4Read4read(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull %i.a, i64 noundef 32), !dbg !31270 ; 2 uses
  %i.c = extractvalue { i64, ptr } %i.b, 0, !dbg !31270
  %i.d = extractvalue { i64, ptr } %i.b, 1, !dbg !31270 ; 3 uses
  %2 = ptrtoint ptr %i.d to i64, !dbg !31270      ; 2 uses
  %i.e = trunc nuw i64 %i.c to i1, !dbg !31271
  br i1 %i.e, label %.lr.ph, label %._crit_edge, !dbg !31271

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECsfcROwRM8ZtH_11polars_plan.exit
  %3 = phi i64 [ %5, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECsfcROwRM8ZtH_11polars_plan.exit ], [ %2, %bb.a ] ; 3 uses
  %4 = phi ptr [ %i.ad, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECsfcROwRM8ZtH_11polars_plan.exit ], [ %i.d, %bb.a ] ; 10 uses
  %i.f = and i64 %3, 3, !dbg !31272
  switch i64 %i.f, label %default.unreachable [
    i64 2, label %.split
    i64 3, label %bb.e
    i64 0, label %.split31
    i64 1, label %.split30
  ], !dbg !31273, !prof !4118

default.unreachable:                              ; preds = %.lr.ph
  unreachable

._crit_edge:                                      ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECsfcROwRM8ZtH_11polars_plan.exit, %bb.a
  %.lcssa35 = phi ptr [ %i.d, %bb.a ], [ %i.ad, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECsfcROwRM8ZtH_11polars_plan.exit ], !dbg !31270 ; 3 uses
  %.lcssa = phi i64 [ %2, %bb.a ], [ %5, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECsfcROwRM8ZtH_11polars_plan.exit ], !dbg !31270 ; 4 uses
  %i.g = icmp ult ptr %.lcssa35, inttoptr (i64 33 to ptr)
  br i1 %i.g, label %.noexc, label %bb.b, !dbg !31274, !prof !3864

bb.b:                                             ; preds = %._crit_edge
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.lcssa, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #35, !dbg !31275
  unreachable

.noexc:                                           ; preds = %._crit_edge
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.lcssa), !dbg !31276
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !31277 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !dbg !31277, !alias.scope !31262, !noundef !3674 ; 3 uses
  %i.j = icmp sgt i64 %i.i, -1, !dbg !31278
  call void @llvm.assume(i1 %i.j), !dbg !31279
  %.not.i = icmp eq ptr %.lcssa35, null, !dbg !31280
  br i1 %.not.i, label %bb.d, label %bb.c, !dbg !31280

bb.c:                                             ; preds = %.noexc
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !31281
  %i.l = load ptr, ptr %i.k, align 8, !dbg !31281, !alias.scope !31262, !nonnull !3674, !noundef !3674
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.i, !dbg !31282
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr nonnull readonly align 1 %i.a, i64 %.lcssa, i1 false), !dbg !31283
  %.pre.i = load i64, ptr %i.h, align 8, !dbg !31284, !alias.scope !31262
  br label %bb.d, !dbg !31285

bb.d:                                             ; preds = %bb.c, %.noexc
  %i.n = phi i64 [ %.pre.i, %bb.c ], [ %i.i, %.noexc ], !dbg !31284
  %i.o = add i64 %i.n, %.lcssa, !dbg !31284
  store i64 %i.o, ptr %i.h, align 8, !dbg !31284, !alias.scope !31262
  br label %.loopexit, !dbg !31286

.loopexit:                                        ; preds = %bb.e, %.split, %.split30, %.split31, %bb.d
  %i.p = phi ptr [ %.lcssa35, %bb.d ], [ %4, %.split31 ], [ %4, %.split30 ], [ %4, %.split ], [ %4, %bb.e ]
  %.sroa.0.0 = phi i64 [ 0, %bb.d ], [ 1, %.split31 ], [ 1, %.split30 ], [ 1, %.split ], [ 1, %bb.e ], !dbg !31287
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !31288
  %i.q = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0, !dbg !31289
  %i.r = insertvalue { i64, ptr } %i.q, ptr %i.p, 1, !dbg !31289
  ret { i64, ptr } %i.r, !dbg !31289

.split:                                           ; preds = %.lr.ph
  %.mask32 = and i64 %3, -4294967296, !dbg !31290
  %i.s = icmp eq i64 %.mask32, 17179869184, !dbg !31290
  br i1 %i.s, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECsfcROwRM8ZtH_11polars_plan.exit, label %.loopexit, !dbg !31291

.split31:                                         ; preds = %.lr.ph
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %4) ]
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16, !dbg !31292
  %i.u = load i8, ptr %i.t, align 8, !dbg !31292, !range !4141, !noundef !3674
  %i.v = icmp eq i8 %i.u, 35, !dbg !31293
  br i1 %i.v, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECsfcROwRM8ZtH_11polars_plan.exit, label %.loopexit, !dbg !31291

.split30:                                         ; preds = %.lr.ph
  %i.w = getelementptr i8, ptr %4, i64 15, !dbg !31294
  %i.x = load i8, ptr %i.w, align 8, !dbg !31294, !range !4141, !noundef !3674
  %i.y = icmp eq i8 %i.x, 35, !dbg !31295
  br i1 %i.y, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECsfcROwRM8ZtH_11polars_plan.exit, label %.loopexit, !dbg !31291

bb.e:                                             ; preds = %.lr.ph
  %i.z = icmp ult ptr %4, inttoptr (i64 180388626432 to ptr), !dbg !31296
  call void @llvm.assume(i1 %i.z), !dbg !31297
  %.mask = and i64 %3, -4294967296, !dbg !31298
  %i.aa = icmp eq i64 %.mask, 150323855360, !dbg !31298
  br i1 %i.aa, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECsfcROwRM8ZtH_11polars_plan.exit, label %.loopexit, !dbg !31291

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %.split31, %.split30, %.split, %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %4) ]
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECsfcROwRM8ZtH_11polars_plan(ptr nonnull %4), !dbg !31299
  %i.ab = call { i64, ptr } @_RNvXs1_NtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_readerNtB5_12ReaderSourceNtNtCsh8eZTKRCwoO_3std2io4Read4read(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull %i.a, i64 noundef 32), !dbg !31270 ; 2 uses
  %i.ac = extractvalue { i64, ptr } %i.ab, 0, !dbg !31270
  %i.ad = extractvalue { i64, ptr } %i.ab, 1, !dbg !31270 ; 3 uses
  %5 = ptrtoint ptr %i.ad to i64, !dbg !31270     ; 2 uses
  %i.ae = trunc nuw i64 %i.ac to i1, !dbg !31271
  br i1 %i.ae, label %.lr.ph, label %._crit_edge, !dbg !31271
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNvNtNtCse67t6KqNqGQ_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB6_3zip11ZipProducerINtNtB8_3vec13DrainProducerRINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayNtNtCs2mZqlW55729_12polars_utils7float164pf16EEIB1D_jEEINtNtB6_8flat_map15FlatMapConsumerINtNtB6_6filter14FilterConsumerINtNtB6_3map11MapConsumerINtNtNtB6_7collect8consumer15CollectConsumermENCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti26hash_join_tuples_left_antiINtNtCscgRAwXFJnXP_4core6option6OptionRB39_EB23_Es_0ENCB6g_0ENCINvB6j_14semi_anti_implB81_B23_E0EECsfcROwRM8ZtH_11polars_plan(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, i64 noundef %1, i1 noundef zeroext %2, i64 noundef %3, i64 noundef %4, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %5, ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(40) %6) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !31300 !guid !31325 {
bb.a:
  %i.a = alloca [184 x i8], align 8               ; 18 uses
  %i.b = alloca [72 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [72 x i8], align 8                ; 4 uses
  %i.e = alloca [80 x i8], align 8                ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.g = alloca [48 x i8], align 8                ; 8 uses
  %i.h = alloca [32 x i8], align 8                ; 4 uses
  %i.i = alloca [64 x i8], align 8                ; 11 uses
  %i.j = alloca [8 x i8], align 8                 ; 5 uses
  %i.k = alloca [72 x i8], align 8                ; 6 uses
  %i.l = alloca [16 x i8], align 8                ; 4 uses
  %i.m = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %1, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %4, ptr %i.n, align 8
  %i.o = tail call noundef zeroext i1 @_RNvXs2_NtNtCse67t6KqNqGQ_5rayon4iter8flat_mapINtB5_15FlatMapConsumerINtNtB7_6filter14FilterConsumerINtNtB7_3map11MapConsumerINtNtNtB7_7collect8consumer15CollectConsumermENCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti26hash_join_tuples_left_antiINtNtCscgRAwXFJnXP_4core6option6OptionRNtNtCs2mZqlW55729_12polars_utils7float164pf16ERINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayB58_EEs_0ENCB2K_0ENCINvB2N_14semi_anti_implB4v_B5S_E0EINtNtB7_8plumbing8ConsumerTB5S_jEE4fullCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %6), !dbg !31336
  br i1 %i.o, label %bb.i, label %bb.b, !dbg !31337

bb.b:                                             ; preds = %bb.a
  %i.p = lshr i64 %1, 1, !dbg !31338              ; 4 uses
  %.not = icmp ult i64 %i.p, %4, !dbg !31338
  br i1 %.not, label %bb.g, label %bb.c, !dbg !31338

bb.c:                                             ; preds = %bb.b
  br i1 %2, label %.noexc, label %bb.d, !dbg !31339

bb.d:                                             ; preds = %bb.c
  %.not.i = icmp eq i64 %3, 0, !dbg !31340
  br i1 %.not.i, label %bb.g, label %bb.e, !dbg !31340

.noexc:                                           ; preds = %bb.c
  %i.q = tail call noundef i64 @_RNvCs4BcJZGCY6Ba_10rayon_core19current_num_threads(), !dbg !31341
  %i.r = lshr i64 %3, 1, !dbg !31342
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.r, i64 %i.q), !dbg !31343
  br label %bb.f, !dbg !31344

bb.e:                                             ; preds = %bb.d
  %i.s = lshr i64 %3, 1, !dbg !31345
  br label %bb.f, !dbg !31346

bb.f:                                             ; preds = %.noexc, %bb.e
  %.sink.i = phi i64 [ %i.s, %bb.e ], [ %.sroa.0.0.i.i, %.noexc ]
  store i64 %.sink.i, ptr %i.l, align 8, !dbg !31347, !alias.scope !31327
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !31348
  store i64 %i.p, ptr %i.j, align 8, !dbg !31349
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !31350
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !31350
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !31350
  call void @_RNvXs1_NtNtCse67t6KqNqGQ_5rayon4iter3zipINtB5_11ZipProducerINtNtB9_3vec13DrainProducerRINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayNtNtCs2mZqlW55729_12polars_utils7float164pf16EEIBW_jEENtNtB7_8plumbing8Producer8split_atCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.h, i64 noundef %i.p), !dbg !31351
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !31352
  %.sroa.0.0.copyload = load ptr, ptr %i.i, align 8, !dbg !31353
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !31353
  %.sroa.516.0.copyload = load i64, ptr %.sroa.516.0..sroa_idx, align 8, !dbg !31353
  %.sroa.618.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !31353
  %.sroa.618.0.copyload = load ptr, ptr %.sroa.618.0..sroa_idx, align 8, !dbg !31353
  %.sroa.720.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24, !dbg !31353
  %.sroa.720.0.copyload = load i64, ptr %.sroa.720.0..sroa_idx, align 8, !dbg !31353
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 32, !dbg !31354
  %.sroa.022.0.copyload = load ptr, ptr %i.t, align 8, !dbg !31354
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 40, !dbg !31354
  %.sroa.524.0.copyload = load i64, ptr %.sroa.524.0..sroa_idx, align 8, !dbg !31354
  %.sroa.626.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 48, !dbg !31354
  %.sroa.626.0.copyload = load ptr, ptr %.sroa.626.0..sroa_idx, align 8, !dbg !31354
  %.sroa.728.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 56, !dbg !31354
  %.sroa.728.0.copyload = load i64, ptr %.sroa.728.0..sroa_idx, align 8, !dbg !31354
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !31355
  call void @_RNvXs2_NtNtCse67t6KqNqGQ_5rayon4iter8flat_mapINtB5_15FlatMapConsumerINtNtB7_6filter14FilterConsumerINtNtB7_3map11MapConsumerINtNtNtB7_7collect8consumer15CollectConsumermENCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti26hash_join_tuples_left_antiINtNtCscgRAwXFJnXP_4core6option6OptionRNtNtCs2mZqlW55729_12polars_utils7float164pf16ERINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayB58_EEs_0ENCB2K_0ENCINvB2N_14semi_anti_implB4v_B5S_E0EINtNtB7_8plumbing8ConsumerTB5S_jEE8split_atCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.e, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %6, i64 noundef %i.p), !dbg !31356
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !31328
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !31357
  store ptr %i.m, ptr %i.a, align 8, !dbg !31357
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !31357
  store ptr %i.j, ptr %.sroa.42.0..sroa_idx, align 8, !dbg !31357
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !31357
  store ptr %i.l, ptr %.sroa.53.0..sroa_idx, align 8, !dbg !31357
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !31357
  store ptr %.sroa.022.0.copyload, ptr %.sroa.64.0..sroa_idx, align 8, !dbg !31357
  %.sroa.64.sroa.4.0..sroa.64.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !31357
  store i64 %.sroa.524.0.copyload, ptr %.sroa.64.sroa.4.0..sroa.64.0..sroa_idx.sroa_idx, align 8, !dbg !31357
  %.sroa.64.sroa.5.0..sroa.64.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !31357
  store ptr %.sroa.626.0.copyload, ptr %.sroa.64.sroa.5.0..sroa.64.0..sroa_idx.sroa_idx, align 8, !dbg !31357
  %.sroa.64.sroa.6.0..sroa.64.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48, !dbg !31357
  store i64 %.sroa.728.0.copyload, ptr %.sroa.64.sroa.6.0..sroa.64.0..sroa_idx.sroa_idx, align 8, !dbg !31357
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56, !dbg !31357
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %i.f, i64 40, i1 false), !dbg !31357
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 96, !dbg !31357
  store ptr %i.j, ptr %i.u, align 8, !dbg !31357
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 104, !dbg !31357
  store ptr %i.l, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !31357
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 112, !dbg !31357
  store ptr %.sroa.0.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !31357
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 120, !dbg !31357
  store i64 %.sroa.516.0.copyload, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8, !dbg !31357
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 128, !dbg !31357
  store ptr %.sroa.618.0.copyload, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8, !dbg !31357
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 136, !dbg !31357
  store i64 %.sroa.720.0.copyload, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, align 8, !dbg !31357
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 144, !dbg !31357
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %i.e, i64 40, i1 false), !dbg !31357
  call void @_RINvNtCs4BcJZGCY6Ba_10rayon_core8registry9in_workerNCINvNtB4_4join12join_contextNCINvNvNtNtCse67t6KqNqGQ_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1p_3zip11ZipProducerINtNtB1r_3vec13DrainProducerRINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayNtNtCs2mZqlW55729_12polars_utils7float164pf16EEIB2X_jEEINtNtB1p_8flat_map15FlatMapConsumerINtNtB1p_6filter14FilterConsumerINtNtB1p_3map11MapConsumerINtNtNtB1p_7collect8consumer15CollectConsumermENCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti26hash_join_tuples_left_antiINtNtCscgRAwXFJnXP_4core6option6OptionRB4u_EB3o_Es_0ENCB7F_0ENCINvB7I_14semi_anti_implB9q_B3o_E0EE0NCB1i_s_0INtB6V_13CollectResultmEBba_E0TBba_Bba_EECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(184) %i.a), !dbg !31358
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !31359
  %.sroa.030.0.copyload = load ptr, ptr %i.g, align 8, !dbg !31360 ; 2 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !31360
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !31360
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 24, !dbg !31361
  %.sroa.037.0.copyload = load ptr, ptr %i.v, align 8, !dbg !31361
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32, !dbg !31361
  %.sroa.3.0..sroa_idx32 = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !31362
  %.sroa.534.0.copyload = load i64, ptr %.sroa.534.0..sroa_idx, align 8, !dbg !31360
  %i.w = load <2 x i64>, ptr %.sroa.3.0..sroa_idx, align 8, !dbg !31360
  %i.x = load <2 x i64>, ptr %.sroa.2.0..sroa_idx, align 8, !dbg !31361
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !31363
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.sroa.030.0.copyload, i64 %.sroa.534.0.copyload, !dbg !31364
  %i.z = icmp eq ptr %i.y, %.sroa.037.0.copyload, !dbg !31365
  %i.aa = insertelement <2 x i1> poison, i1 %i.z, i64 0, !dbg !31365
  %i.ab = shufflevector <2 x i1> %i.aa, <2 x i1> poison, <2 x i32> zeroinitializer, !dbg !31365
  %i.ac = select <2 x i1> %i.ab, <2 x i64> %i.x, <2 x i64> zeroinitializer, !dbg !31365
  %i.ad = add <2 x i64> %i.ac, %i.w, !dbg !31365
  store ptr %.sroa.030.0.copyload, ptr %0, align 8, !dbg !31362, !alias.scope !31329
  store <2 x i64> %i.ad, ptr %.sroa.3.0..sroa_idx32, align 8, !dbg !31362, !alias.scope !31329
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !31366
  br label %bb.h, !dbg !31367

bb.g:                                             ; preds = %bb.b, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !31368
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !31368
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !31368
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !31369
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31330), !dbg !31370
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31331), !dbg !31370
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 32, !dbg !31371
  %i.af = load ptr, ptr %i.ae, align 8, !dbg !31371, !alias.scope !31331, !nonnull !3674, !align !3709, !noundef !3674
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !31372
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ag, ptr noundef nonnull readonly align 8 dereferenceable(40) %6, i64 32, i1 false), !dbg !31372, !alias.scope !31332
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 64, !dbg !31372
  store ptr %i.af, ptr %i.ah, align 8, !dbg !31372, !alias.scope !31330
  store i64 0, ptr %i.b, align 8, !dbg !31372, !alias.scope !31330
  call void @_RINvYINtNtNtCse67t6KqNqGQ_5rayon4iter3zip11ZipProducerINtNtBa_3vec13DrainProducerRINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayNtNtCs2mZqlW55729_12polars_utils7float164pf16EEIBR_jEENtNtB8_8plumbing8Producer9fold_withINtNtB8_8flat_map13FlatMapFolderINtNtB8_6filter14FilterConsumerINtNtB8_3map11MapConsumerINtNtNtB8_7collect8consumer15CollectConsumermENCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti26hash_join_tuples_left_antiINtNtCscgRAwXFJnXP_4core6option6OptionRB2n_EB1h_Es_0ENCB60_0ENCINvB63_14semi_anti_implB7L_B1h_E0INtB5h_13CollectResultmEEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.c, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(72) %i.b), !dbg !31373
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !31374
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !31374
  call void @_RNvXs4_NtNtCse67t6KqNqGQ_5rayon4iter8flat_mapINtB5_13FlatMapFolderINtNtB7_6filter14FilterConsumerINtNtB7_3map11MapConsumerINtNtNtB7_7collect8consumer15CollectConsumermENCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti26hash_join_tuples_left_antiINtNtCscgRAwXFJnXP_4core6option6OptionRNtNtCs2mZqlW55729_12polars_utils7float164pf16ERINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayB56_EEs_0ENCB2I_0ENCINvB2L_14semi_anti_implB4t_B5Q_E0INtB1Z_13CollectResultmEEINtNtB7_8plumbing6FolderTB5Q_jEE8completeCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.d), !dbg !31375
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !31376
  br label %bb.h, !dbg !31367

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.i
  ret void, !dbg !31377

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !31378
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31333), !dbg !31379
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31334), !dbg !31379
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 32, !dbg !31380
  %i.aj = load ptr, ptr %i.ai, align 8, !dbg !31380, !alias.scope !31334, !nonnull !3674, !align !3709, !noundef !3674
  %i.ak = getelementptr inbounds nuw i8, ptr %i.k, i64 32, !dbg !31381
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ak, ptr noundef nonnull readonly align 8 dereferenceable(40) %6, i64 32, i1 false), !dbg !31381, !alias.scope !31335
  %i.al = getelementptr inbounds nuw i8, ptr %i.k, i64 64, !dbg !31381
  store ptr %i.aj, ptr %i.al, align 8, !dbg !31381, !alias.scope !31333
  store i64 0, ptr %i.k, align 8, !dbg !31381, !alias.scope !31333
  call void @_RNvXs4_NtNtCse67t6KqNqGQ_5rayon4iter8flat_mapINtB5_13FlatMapFolderINtNtB7_6filter14FilterConsumerINtNtB7_3map11MapConsumerINtNtNtB7_7collect8consumer15CollectConsumermENCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti26hash_join_tuples_left_antiINtNtCscgRAwXFJnXP_4core6option6OptionRNtNtCs2mZqlW55729_12polars_utils7float164pf16ERINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayB56_EEs_0ENCB2I_0ENCINvB2L_14semi_anti_implB4t_B5Q_E0INtB1Z_13CollectResultmEEINtNtB7_8plumbing6FolderTB5Q_jEE8completeCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.k), !dbg !31382
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !31383
  br label %bb.h, !dbg !31384
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNvNtNtCse67t6KqNqGQ_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB6_3zip11ZipProducerINtNtB8_3vec13DrainProducerRINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayNtNtCs2mZqlW55729_12polars_utils7float164pf16EEIB1D_jEEINtNtB6_8flat_map15FlatMapConsumerINtNtB6_6filter14FilterConsumerINtNtB6_3map11MapConsumerINtNtNtB6_7collect8consumer15CollectConsumermENCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti26hash_join_tuples_left_semiINtNtCscgRAwXFJnXP_4core6option6OptionRB39_EB23_Es_0ENCB6g_0ENCINvB6j_14semi_anti_implB81_B23_E0EECsfcROwRM8ZtH_11polars_plan(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, i64 noundef %1, i1 noundef zeroext %2, i64 noundef %3, i64 noundef %4, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %5, ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(40) %6) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !31385 !guid !31410 {
bb.a:
  %i.a = alloca [184 x i8], align 8               ; 18 uses
  %i.b = alloca [72 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [72 x i8], align 8                ; 4 uses
  %i.e = alloca [80 x i8], align 8                ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.g = alloca [48 x i8], align 8                ; 8 uses
  %i.h = alloca [32 x i8], align 8                ; 4 uses
  %i.i = alloca [64 x i8], align 8                ; 11 uses
  %i.j = alloca [8 x i8], align 8                 ; 5 uses
  %i.k = alloca [72 x i8], align 8                ; 6 uses
  %i.l = alloca [16 x i8], align 8                ; 4 uses
  %i.m = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %1, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %4, ptr %i.n, align 8
  %i.o = tail call noundef zeroext i1 @_RNvXs2_NtNtCse67t6KqNqGQ_5rayon4iter8flat_mapINtB5_15FlatMapConsumerINtNtB7_6filter14FilterConsumerINtNtB7_3map11MapConsumerINtNtNtB7_7collect8consumer15CollectConsumermENCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti26hash_join_tuples_left_semiINtNtCscgRAwXFJnXP_4core6option6OptionRNtNtCs2mZqlW55729_12polars_utils7float164pf16ERINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayB58_EEs_0ENCB2K_0ENCINvB2N_14semi_anti_implB4v_B5S_E0EINtNtB7_8plumbing8ConsumerTB5S_jEE4fullCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %6), !dbg !31421
  br i1 %i.o, label %bb.i, label %bb.b, !dbg !31422

bb.b:                                             ; preds = %bb.a
  %i.p = lshr i64 %1, 1, !dbg !31423              ; 4 uses
  %.not = icmp ult i64 %i.p, %4, !dbg !31423
  br i1 %.not, label %bb.g, label %bb.c, !dbg !31423

bb.c:                                             ; preds = %bb.b
  br i1 %2, label %.noexc, label %bb.d, !dbg !31424

end_hunk_0
