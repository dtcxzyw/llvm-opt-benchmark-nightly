Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_parquet-d174a6a0d1de3d93.polars_parquet.b72545e931dce2ac-cgu.06?download=true
inline.NumInlined: 2903
inline.NumDeleted: 754
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 47
begin_hunk_0_@_RNvMsc_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalINtB5_9PriorEvalNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE14choose_bitmaskCsfISxE4fmY1Y_14polars_parquet:bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.b, i8 0, i64 32, i1 false), !dbg !22700
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !22701
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(8192) %i.a, i8 0, i64 8192, i1 false), !dbg !22703
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 240, !dbg !22704
  %.val = load ptr, ptr %i.c, align 8, !dbg !22706, !nonnull !14, !noundef !14 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 248, !dbg !22706
  %.val20 = load i64, ptr %i.d, align 8, !dbg !22706, !noundef !14 ; 2 uses
  %.idx = shl nuw nsw i64 %.val20, 5, !dbg !22707
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 %.idx, !dbg !22707
  %i.f = icmp eq i64 %.val20, 0, !dbg !22716
  br i1 %i.f, label %._crit_edge, label %.lr.ph, !dbg !22729

.lr.ph:                                           ; preds = %bb.a, %bb.w
  %.sroa.010.041 = phi i8 [ %.sroa.010.1, %bb.w ], [ 0, %bb.a ] ; 3 uses
  %.sroa.09.040 = phi i32 [ %.sroa.09.1, %bb.w ], [ 0, %bb.a ] ; 3 uses
  %.sroa.0.039 = phi ptr [ %i.g, %bb.w ], [ %.val, %bb.a ] ; 9 uses
  %.sroa.7.038 = phi i64 [ %i.h, %bb.w ], [ 0, %bb.a ] ; 16 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.039, i64 32, !dbg !22730 ; 2 uses
  %i.h = add nuw nsw i64 %.sroa.7.038, 1, !dbg !22733
  %i.i = load float, ptr %.sroa.0.039, align 4, !dbg !22736, !noundef !14 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.039, i64 8, !dbg !22738
  %i.k = load float, ptr %i.j, align 4, !dbg !22755, !noundef !14 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.039, i64 12, !dbg !22756
  %i.m = load float, ptr %i.l, align 4, !dbg !22765, !noundef !14
  %i.n = fadd float %i.m, 1.600000e+01, !dbg !22765 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.039, i64 16, !dbg !22766
  %i.p = load float, ptr %i.o, align 4, !dbg !22775, !noundef !14
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.039, i64 20, !dbg !22776
  %i.r = load float, ptr %i.q, align 4, !dbg !22785, !noundef !14
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.039, i64 24, !dbg !22786
  %i.t = load float, ptr %i.s, align 4, !dbg !22795, !noundef !14
  %i.u = fadd float %i.t, 1.600000e+01, !dbg !22795
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.039, i64 28, !dbg !22796
  %i.w = load float, ptr %i.v, align 4, !dbg !22805, !noundef !14 ; 2 uses
  %i.x = fadd float %i.w, 1.000000e+00, !dbg !22806
  %i.y = tail call i64 @llvm.fptoui.sat.i64.f32(float %i.p), !dbg !22808 ; 2 uses
  %i.z = tail call i64 @llvm.fptoui.sat.i64.f32(float %i.r), !dbg !22810 ; 2 uses
  %i.aa = tail call i64 @llvm.fptoui.sat.i64.f32(float %i.u), !dbg !22811 ; 2 uses
  %i.ab = tail call i64 @llvm.fptoui.sat.i64.f32(float %i.w), !dbg !22812 ; 2 uses
  %i.ac = tail call i64 @llvm.fptoui.sat.i64.f32(float %i.x), !dbg !22813
  %.sroa.0.0.i23 = tail call noundef i64 @llvm.umin.i64(i64 %i.ac, i64 %i.ab), !dbg !22814
  %.sroa.0.0.i24 = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.0.0.i23, i64 %i.aa), !dbg !22818
  %.sroa.0.0.i25 = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.0.0.i24, i64 %i.z), !dbg !22821 ; 2 uses
  %.sroa.0.0.i26 = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.0.0.i25, i64 %i.y), !dbg !22824 ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.039, i64 4, !dbg !22827
  %i.ae = load float, ptr %i.ad, align 4, !dbg !22836, !noundef !14
  %i.af = fadd float %i.ae, 6.000000e+00, !dbg !22837 ; 4 uses
  %i.ag = uitofp i64 %.sroa.0.0.i26 to float, !dbg !22839 ; 4 uses
  %i.ah = fcmp olt float %i.af, %i.ag, !dbg !22837
  %i.ai = fcmp olt float %i.af, %i.i
  %or.cond = and i1 %i.ai, %i.ah, !dbg !22837
  %i.aj = fcmp olt float %i.af, %i.k
  %or.cond1 = and i1 %i.aj, %or.cond, !dbg !22837
  %i.ak = fcmp olt float %i.af, %i.n
  %or.cond2 = and i1 %i.ak, %or.cond1, !dbg !22837
  br i1 %or.cond2, label %bb.d, label %bb.c, !dbg !22837

._crit_edge:                                      ; preds = %bb.w, %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !22840
  %.val22 = load i64, ptr %i.al, align 8, !dbg !22840, !noundef !14 ; 2 uses
  %i.am = icmp ugt i64 %.val22, 8195, !dbg !22841
  br i1 %i.am, label %_RNvMs1_NtNtCsk4ZPsEfLtLH_6brotli3enc9interfaceINtB5_24PredictionModeContextMapNtNtB7_10input_pair17InputReferenceMutE17set_mixing_valuesCsfISxE4fmY1Y_14polars_parquet.exit, label %bb.b, !dbg !22841, !prof !5547

bb.b:                                             ; preds = %._crit_edge
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 4, i64 noundef 8196, i64 noundef %.val22, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @131) #31, !dbg !22852, !noalias !22853
  unreachable, !dbg !22852

_RNvMs1_NtNtCsk4ZPsEfLtLH_6brotli3enc9interfaceINtB5_24PredictionModeContextMapNtNtB7_10input_pair17InputReferenceMutE17set_mixing_valuesCsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %._crit_edge
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !22840
  %.val21 = load ptr, ptr %i.an, align 8, !dbg !22840, !nonnull !14, !noundef !14
  %i.ao = getelementptr inbounds nuw i8, ptr %.val21, i64 4, !dbg !22856
  call void @_RINvNtCscgRAwXFJnXP_4core5slice20copy_from_slice_implhECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull %i.ao, i64 noundef 8192, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(8192) %i.a, i64 noundef 8192, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @132), !dbg !22860
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !22865
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !22866
  ret void, !dbg !22867

bb.c:                                             ; preds = %.lr.ph
  %i.ap = fadd float %i.k, 6.000000e+00, !dbg !22868 ; 3 uses
  %i.aq = fcmp olt float %i.ap, %i.ag, !dbg !22868
  %i.ar = fcmp olt float %i.ap, %i.i
  %or.cond3 = and i1 %i.ar, %i.aq, !dbg !22868
  %i.as = fcmp olt float %i.ap, %i.n
  %or.cond4 = and i1 %i.as, %or.cond3, !dbg !22868
  br i1 %or.cond4, label %bb.f, label %bb.e, !dbg !22868

bb.d:                                             ; preds = %.lr.ph
  %i.at = icmp samesign ult i64 %.sroa.7.038, 8192, !dbg !22869
  br i1 %i.at, label %bb.t, label %bb.u, !dbg !22869

bb.e:                                             ; preds = %bb.c
  %i.au = fadd float %i.n, 6.000000e+00, !dbg !22870 ; 2 uses
  %i.av = fcmp olt float %i.au, %i.ag, !dbg !22870
  %i.aw = fcmp olt float %i.au, %i.i
  %or.cond5 = and i1 %i.aw, %i.av, !dbg !22870
  br i1 %or.cond5, label %bb.h, label %bb.g, !dbg !22870

bb.f:                                             ; preds = %bb.c
  %i.ax = icmp samesign ult i64 %.sroa.7.038, 8192, !dbg !22871
  br i1 %i.ax, label %bb.q, label %bb.r, !dbg !22871

bb.g:                                             ; preds = %bb.e
  %i.ay = fadd float %i.ag, 6.000000e+00, !dbg !22872
  %i.az = fcmp olt float %i.ay, %i.i, !dbg !22872
  %i.ba = icmp samesign ult i64 %.sroa.7.038, 8192, !dbg !22873 ; 2 uses
  br i1 %i.az, label %bb.j, label %bb.i, !dbg !22872

bb.h:                                             ; preds = %bb.e
  %i.bb = icmp samesign ult i64 %.sroa.7.038, 8192, !dbg !22874
  br i1 %i.bb, label %bb.o, label %bb.p, !dbg !22874

bb.i:                                             ; preds = %bb.g
  br i1 %i.ba, label %bb.k, label %bb.l, !dbg !22875

bb.j:                                             ; preds = %bb.g
  br i1 %i.ba, label %bb.m, label %bb.n, !dbg !22876

bb.k:                                             ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.7.038, !dbg !22875
  store i8 0, ptr %i.bc, align 1, !dbg !22875
  br label %bb.s, !dbg !22877

bb.l:                                             ; preds = %bb.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.7.038, i64 noundef 8192, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @147) #31, !dbg !22875
  unreachable, !dbg !22875

bb.m:                                             ; preds = %bb.j
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.7.038, !dbg !22876
  %i.be = icmp eq i64 %.sroa.0.0.i26, %i.ab, !dbg !22878
  %spec.select = select i1 %i.be, i8 7, i8 4, !dbg !22878
  %i.bf = icmp eq i64 %.sroa.0.0.i26, %i.aa, !dbg !22879
  %storemerge16 = select i1 %i.bf, i8 6, i8 %spec.select, !dbg !22879
  %i.bg = icmp eq i64 %.sroa.0.0.i26, %i.z, !dbg !22880
  %storemerge17 = select i1 %i.bg, i8 5, i8 %storemerge16, !dbg !22880
  %.not = icmp ugt i64 %i.y, %.sroa.0.0.i25, !dbg !22881
  %spec.store.select = select i1 %.not, i8 %storemerge17, i8 4, !dbg !22881 ; 2 uses
  store i8 %spec.store.select, ptr %i.bd, align 1, !dbg !22873
  br label %bb.s, !dbg !22881

bb.n:                                             ; preds = %bb.j
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.7.038, i64 noundef 8192, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @148) #31, !dbg !22876
  unreachable, !dbg !22876

bb.o:                                             ; preds = %bb.h
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.7.038, !dbg !22874
  store i8 3, ptr %i.bh, align 1, !dbg !22874
  br label %bb.s, !dbg !22882

bb.p:                                             ; preds = %bb.h
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.7.038, i64 noundef 8192, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @149) #31, !dbg !22874
  unreachable, !dbg !22874

bb.q:                                             ; preds = %bb.f
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.7.038, !dbg !22871
  store i8 2, ptr %i.bi, align 1, !dbg !22871
  br label %bb.s, !dbg !22883

bb.r:                                             ; preds = %bb.f
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.7.038, i64 noundef 8192, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @150) #31, !dbg !22871
  unreachable, !dbg !22871

bb.s:                                             ; preds = %bb.m, %bb.q, %bb.k, %bb.o, %bb.t
  %i.bj = phi i8 [ %spec.store.select, %bb.m ], [ 2, %bb.q ], [ 0, %bb.k ], [ 3, %bb.o ], [ 1, %bb.t ] ; 2 uses
  %i.bk = icmp eq i64 %.sroa.0.0.i26, 0, !dbg !22884
  br i1 %i.bk, label %bb.v, label %bb.x, !dbg !22884

bb.t:                                             ; preds = %bb.d
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.7.038, !dbg !22869
  store i8 1, ptr %i.bl, align 1, !dbg !22869
  br label %bb.s, !dbg !22885

bb.u:                                             ; preds = %bb.d
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.7.038, i64 noundef 8192, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @151) #31, !dbg !22869
  unreachable, !dbg !22869

bb.v:                                             ; preds = %bb.s
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.7.038, !dbg !22886
  store i8 %.sroa.010.041, ptr %i.bm, align 1, !dbg !22886
  br label %bb.w, !dbg !22887

bb.w:                                             ; preds = %bb.x, %bb.v
  %.sroa.09.1 = phi i32 [ %.sroa.09.040, %bb.v ], [ %spec.select18, %bb.x ], !dbg !22888
  %.sroa.010.1 = phi i8 [ %.sroa.010.041, %bb.v ], [ %spec.select19, %bb.x ], !dbg !22889
  %i.bn = icmp eq ptr %i.g, %i.e, !dbg !22716
  br i1 %i.bn, label %._crit_edge, label %.lr.ph, !dbg !22729

bb.x:                                             ; preds = %bb.s
  %i.bo = zext nneg i8 %i.bj to i64, !dbg !22890
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bo, !dbg !22891 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !dbg !22891, !noundef !14
  %i.br = add i32 %i.bq, 1, !dbg !22891           ; 3 uses
  store i32 %i.br, ptr %i.bp, align 4, !dbg !22891
  %i.bs = icmp ugt i32 %i.br, %.sroa.09.040, !dbg !22892
  %spec.select18 = tail call i32 @llvm.umax.i32(i32 %i.br, i32 %.sroa.09.040), !dbg !22892
  %spec.select19 = select i1 %i.bs, i8 %i.bj, i8 %.sroa.010.041, !dbg !22892
  br label %bb.w, !dbg !22892
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsc_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalINtB5_9PriorEvalNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE16update_cost_baseCsfISxE4fmY1Y_14polars_parquet(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(296) %0, i64 noundef %1, i64 noundef %2, i8 noundef %3, i64 noundef %4, i8 noundef %5) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !22893 {
bb.a:
  %.sroa.0 = alloca i64, align 8                  ; 6 uses
  store i64 %1, ptr %.sroa.0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 289, !dbg !22894
  %i.b = load i8, ptr %i.a, align 1, !dbg !22894, !noundef !14
  %i.c = zext i8 %i.b to i64, !dbg !22894
  %i.d = sub i64 %2, %i.c, !dbg !22897
  %i.e = and i64 %i.d, 7, !dbg !22900
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 %i.e, !dbg !22901
  %i.g = load i8, ptr %i.f, align 1, !dbg !22901  ; 2 uses
  %i.h = lshr i8 %i.g, 4, !dbg !22902
  %i.i = zext nneg i8 %i.h to i64, !dbg !22902
  %i.j = shl nuw nsw i64 %i.i, 8, !dbg !22906
  %i.k = add i64 %i.j, %4, !dbg !22907            ; 3 uses
  %i.l = lshr i8 %5, 4, !dbg !22908               ; 4 uses
  %i.m = add i64 %4, 4096, !dbg !22910
  %i.n = zext nneg i8 %i.l to i64, !dbg !22913    ; 12 uses
  %i.o = shl nuw nsw i64 %i.n, 8, !dbg !22914
  %i.p = add i64 %i.m, %i.o, !dbg !22910          ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !22915
  %.val2514 = load ptr, ptr %i.q, align 8, !dbg !22917, !nonnull !14, !noundef !14 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !22917
  %.val2515.a = load i64, ptr %i.r, align 8, !dbg !22917, !noundef !14 ; 4 uses
  %i.s = mul i64 %4, 17, !dbg !22918              ; 7 uses
  %i.t = icmp ult i64 %i.s, %.val2515.a, !dbg !22925
  br i1 %i.t, label %bb.b, label %bb.e, !dbg !22925

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %.val2514, i64 %i.s, !dbg !22927 ; 5 uses
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %i.n, !dbg !22928 ; 2 uses
  %i.w = load i16, ptr %i.v, align 2, !dbg !22943, !noalias !22944, !noundef !14 ; 2 uses
  %i.x = icmp eq i8 %i.l, 0, !dbg !22947          ; 8 uses
  br i1 %i.x, label %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF4cost.exit129, label %bb.c, !dbg !22947

bb.c:                                             ; preds = %bb.b
  %i.y = getelementptr i8, ptr %i.v, i64 -2, !dbg !22949
  %i.z = load i16, ptr %i.y, align 2, !dbg !22957, !noalias !22944, !noundef !14
  %i.aa = sub i16 %i.w, %i.z, !dbg !22958
  br label %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF4cost.exit129, !dbg !22959

_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF4cost.exit129: ; preds = %bb.b, %bb.c
  %.sroa.0.0.i128 = phi i16 [ %i.w, %bb.b ], [ %i.aa, %bb.c ], !dbg !22960
  %i.ab = zext i16 %.sroa.0.0.i128 to i64, !dbg !22961
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 30, !dbg !22964
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc12log_table_167logs_16, i64 %i.ab, !dbg !22972
  %i.ae = load float, ptr %i.ad, align 4, !dbg !22972, !noalias !22944, !noundef !14
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 276, !dbg !22973
  %i.ag = load i16, ptr %i.af, align 4, !dbg !22973, !noundef !14 ; 7 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 278, !dbg !22973
  %i.ai = load i16, ptr %i.ah, align 2, !dbg !22973, !noundef !14
  %.sroa.0.i985.sroa.16.0..sroa.0.0.2520.sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !22974 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 272, !dbg !22973
  %i.ak = icmp ult i8 %5, 32, !dbg !22977
  %i.al = insertelement <2 x i8> poison, i8 %5, i64 0, !dbg !22984
  %i.am = shufflevector <2 x i8> %i.al, <2 x i8> poison, <2 x i32> zeroinitializer, !dbg !22984
  %i.an = icmp ult <2 x i8> %i.am, <i8 48, i8 64>, !dbg !22984
  %i.ao = insertelement <4 x i8> poison, i8 %5, i64 0, !dbg !22985
  %i.ap = shufflevector <4 x i8> %i.ao, <4 x i8> poison, <4 x i32> zeroinitializer, !dbg !22985 ; 3 uses
  %i.aq = icmp ult <4 x i8> %i.ap, <i8 80, i8 96, i8 112, i8 -1>, !dbg !22985
  %i.ar = icmp sgt <4 x i8> %i.ap, <i8 80, i8 96, i8 112, i8 -1>, !dbg !22985
  %i.as = icmp ult <4 x i8> %i.ap, <i8 -112, i8 -96, i8 -80, i8 -64>, !dbg !22986 ; 6 uses
  %i.at = icmp ult i8 %5, -48, !dbg !22987        ; 3 uses
  %i.au = icmp ult i8 %5, -32, !dbg !22988        ; 3 uses
  %.not = icmp eq i8 %i.l, 15, !dbg !22989        ; 3 uses
  %.inv.not = icmp eq i8 %i.l, 0, !dbg !22990
  %i.av = load <8 x i16>, ptr %i.u, align 2, !dbg !22974, !noalias !22997
  %i.aw = insertelement <8 x i1> poison, i1 %.inv.not, i64 0, !dbg !22990
  %i.ax = insertelement <8 x i1> %i.aw, i1 %i.ak, i64 1, !dbg !22990
  %i.ay = shufflevector <2 x i1> %i.an, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>, !dbg !22990
  %i.az = shufflevector <8 x i1> %i.ax, <8 x i1> %i.ay, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 poison, i32 poison, i32 poison, i32 poison>, !dbg !22990
  %i.ba = shufflevector <4 x i1> %i.aq, <4 x i1> %i.ar, <8 x i32> <i32 0, i32 1, i32 2, i32 7, i32 poison, i32 poison, i32 poison, i32 poison>, !dbg !22990
  %i.bb = shufflevector <8 x i1> %i.az, <8 x i1> %i.ba, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>, !dbg !22990 ; 3 uses
  %i.bc = insertelement <8 x i16> poison, i16 %i.ag, i64 0, !dbg !22990
  %i.bd = shufflevector <8 x i16> %i.bc, <8 x i16> poison, <8 x i32> zeroinitializer, !dbg !22990
  %i.be = select <8 x i1> %i.bb, <8 x i16> %i.bd, <8 x i16> zeroinitializer, !dbg !22990
  %i.bf = select i1 %i.at, i16 %i.ag, i16 0, !dbg !23000
  %i.bg = select i1 %i.au, i16 %i.ag, i16 0, !dbg !23002
  %i.bh = select i1 %.not, i16 0, i16 %i.ag, !dbg !23004
  %i.bi = add <8 x i16> %i.be, %i.av, !dbg !23006 ; 2 uses
  %i.bj = load i16, ptr %i.ac, align 2, !dbg !23016, !noalias !22944, !noundef !14 ; 2 uses
  %i.bk = load <8 x i16>, ptr %.sroa.0.i985.sroa.16.0..sroa.0.0.2520.sroa_idx, align 2, !dbg !22974, !noalias !14
  %i.bl = zext i16 %i.bj to i64, !dbg !23017
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc12log_table_167logs_16, i64 %i.bl, !dbg !23019
  %i.bn = load float, ptr %i.bm, align 4, !dbg !23019, !noalias !22944, !noundef !14
  %i.bo = insertelement <4 x i16> poison, i16 %i.ag, i64 0, !dbg !23020
  %i.bp = shufflevector <4 x i16> %i.bo, <4 x i16> poison, <4 x i32> zeroinitializer, !dbg !23020
  %i.bq = select <4 x i1> %i.as, <4 x i16> %i.bp, <4 x i16> zeroinitializer, !dbg !23020
  %i.br = add i16 %i.ag, %i.bj, !dbg !23022
  %i.bs = insertelement <8 x i16> poison, i16 %i.bf, i64 4, !dbg !23026
  %i.bt = insertelement <8 x i16> %i.bs, i16 %i.bg, i64 5, !dbg !23026
  %i.bu = insertelement <8 x i16> %i.bt, i16 %i.bh, i64 6, !dbg !23026
  %i.bv = insertelement <8 x i16> %i.bu, i16 %i.ag, i64 7, !dbg !23026
  %i.bw = shufflevector <4 x i16> %i.bq, <4 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>, !dbg !23026
  %i.bx = shufflevector <8 x i16> %i.bw, <8 x i16> %i.bv, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>, !dbg !23026
  %i.by = add <8 x i16> %i.bx, %i.bk, !dbg !23026 ; 2 uses
  %.not.i1037 = icmp slt i16 %i.br, %i.ai, !dbg !23030
  br i1 %.not.i1037, label %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF6update.exit1044, label %bb.d, !dbg !23030

bb.d:                                             ; preds = %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF4cost.exit129
  %i.bz = add <8 x i16> %i.bi, <i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8>, !dbg !23031 ; 2 uses
  %i.ca = add <8 x i16> %i.by, <i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16>, !dbg !23036 ; 2 uses
  %i.cb = ashr <8 x i16> %i.bz, splat (i16 2), !dbg !23039
  %i.cc = ashr <8 x i16> %i.ca, splat (i16 2), !dbg !23045
  %i.cd = sub <8 x i16> %i.bz, %i.cb, !dbg !23047
  %i.ce = sub <8 x i16> %i.ca, %i.cc, !dbg !23055
  br label %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF6update.exit1044, !dbg !23059

_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF6update.exit1044: ; preds = %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF4cost.exit129, %bb.d
  %i.cf = phi <8 x i16> [ %i.bi, %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF4cost.exit129 ], [ %i.cd, %bb.d ], !dbg !23060
  %i.cg = phi <8 x i16> [ %i.by, %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF4cost.exit129 ], [ %i.ce, %bb.d ], !dbg !23060
  store <8 x i16> %i.cf, ptr %i.u, align 2, !dbg !23061, !noalias !22997
  store <8 x i16> %i.cg, ptr %.sroa.0.i985.sroa.16.0..sroa.0.0.2520.sroa_idx, align 2, !dbg !23061, !noalias !22997
  %i.ch = add nuw i64 %i.s, 1, !dbg !23062
  %i.ci = add i64 %i.ch, %i.n, !dbg !23062        ; 6 uses
  %i.cj = icmp ult i64 %i.ci, %.val2515.a, !dbg !23067
  br i1 %i.cj, label %bb.f, label %bb.i, !dbg !23067

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.s, i64 noundef %.val2515.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @152) #31, !dbg !22925
  unreachable, !dbg !22925

bb.f:                                             ; preds = %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF6update.exit1044
  %i.ck = getelementptr inbounds nuw [32 x i8], ptr %.val2514, i64 %i.ci, !dbg !23069 ; 5 uses
  %i.cl = and i8 %5, 15, !dbg !23070              ; 10 uses
  %i.cm = zext nneg i8 %i.cl to i64, !dbg !23072  ; 8 uses
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %i.ck, i64 %i.cm, !dbg !23074 ; 2 uses
  %i.co = load i16, ptr %i.cn, align 2, !dbg !23079, !noalias !23080, !noundef !14 ; 2 uses
  %i.cp = icmp eq i8 %i.cl, 0, !dbg !23083        ; 8 uses
  br i1 %i.cp, label %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF4cost.exit127, label %bb.g, !dbg !23083

bb.g:                                             ; preds = %bb.f
  %i.cq = getelementptr i8, ptr %i.cn, i64 -2, !dbg !23084
  %i.cr = load i16, ptr %i.cq, align 2, !dbg !23089, !noalias !23080, !noundef !14
  %i.cs = sub i16 %i.co, %i.cr, !dbg !23090
  br label %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF4cost.exit127, !dbg !23091

_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF4cost.exit127: ; preds = %bb.f, %bb.g
  %.sroa.0.0.i126 = phi i16 [ %i.co, %bb.f ], [ %i.cs, %bb.g ], !dbg !23092
  %i.ct = zext i16 %.sroa.0.0.i126 to i64, !dbg !23093
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ck, i64 30, !dbg !23095
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc12log_table_167logs_16, i64 %i.ct, !dbg !23100
  %i.cw = load float, ptr %i.cv, align 4, !dbg !23100, !noalias !23080, !noundef !14
  %i.cx = load i16, ptr %i.aj, align 8, !dbg !23101, !noundef !14 ; 17 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 274, !dbg !23101
  %i.cz = load i16, ptr %i.cy, align 2, !dbg !23101, !noundef !14 ; 3 uses
  %.sroa.0.i924.sroa.16.0..sroa.02522.0.2523.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ck, i64 16, !dbg !23102 ; 2 uses
  %i.da = icmp samesign ult i8 %i.cl, 2, !dbg !23104
  %i.db = icmp samesign ult i8 %i.cl, 3, !dbg !23106
  %i.dc = icmp samesign ult i8 %i.cl, 4, !dbg !23107
  %i.dd = insertelement <4 x i8> poison, i8 %i.cl, i64 0, !dbg !23108
  %i.de = shufflevector <4 x i8> %i.dd, <4 x i8> poison, <4 x i32> zeroinitializer, !dbg !23108 ; 2 uses
  %i.df = icmp samesign ult <4 x i8> %i.de, <i8 5, i8 6, i8 7, i8 8>, !dbg !23108
  %i.dg = icmp samesign ult <4 x i8> %i.de, <i8 9, i8 10, i8 11, i8 12>, !dbg !23109 ; 2 uses
  %i.dh = icmp samesign ult i8 %i.cl, 13, !dbg !23110 ; 2 uses
  %i.di = icmp samesign ult i8 %i.cl, 14, !dbg !23111 ; 2 uses
  %.not9571 = icmp eq i8 %i.cl, 15, !dbg !23112   ; 2 uses
  %.inv9008.not = icmp eq i8 %i.cl, 0, !dbg !23113
  %i.dj = load <8 x i16>, ptr %i.ck, align 2, !dbg !23102, !noalias !23116
  %i.dk = insertelement <8 x i1> poison, i1 %.inv9008.not, i64 0, !dbg !23113
  %i.dl = insertelement <8 x i1> %i.dk, i1 %i.da, i64 1, !dbg !23113
  %i.dm = insertelement <8 x i1> %i.dl, i1 %i.db, i64 2, !dbg !23113
  %i.dn = insertelement <8 x i1> %i.dm, i1 %i.dc, i64 3, !dbg !23113
  %i.do = shufflevector <4 x i1> %i.df, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>, !dbg !23113
  %i.dp = shufflevector <8 x i1> %i.dn, <8 x i1> %i.do, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>, !dbg !23113 ; 2 uses
  %i.dq = insertelement <8 x i16> poison, i16 %i.cx, i64 0, !dbg !23113
  %i.dr = shufflevector <8 x i16> %i.dq, <8 x i16> poison, <8 x i32> zeroinitializer, !dbg !23113 ; 2 uses
  %i.ds = select <8 x i1> %i.dp, <8 x i16> %i.dr, <8 x i16> zeroinitializer, !dbg !23113 ; 2 uses
  %i.dt = insertelement <4 x i16> poison, i16 %i.cx, i64 0, !dbg !23119
  %i.du = shufflevector <4 x i16> %i.dt, <4 x i16> poison, <4 x i32> zeroinitializer, !dbg !23119
  %i.dv = select <4 x i1> %i.dg, <4 x i16> %i.du, <4 x i16> zeroinitializer, !dbg !23119
  %i.dw = select i1 %i.dh, i16 %i.cx, i16 0, !dbg !23121
  %i.dx = select i1 %i.di, i16 %i.cx, i16 0, !dbg !23123
  %i.dy = select i1 %.not9571, i16 0, i16 %i.cx, !dbg !23125
  %i.dz = add <8 x i16> %i.ds, %i.dj, !dbg !23127 ; 2 uses
  %i.ea = load i16, ptr %i.cu, align 2, !dbg !23131, !noalias !23080, !noundef !14 ; 2 uses
  %i.eb = load <8 x i16>, ptr %.sroa.0.i924.sroa.16.0..sroa.02522.0.2523.sroa_idx, align 2, !dbg !23102, !noalias !14
  %i.ec = zext i16 %i.ea to i64, !dbg !23132
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc12log_table_167logs_16, i64 %i.ec, !dbg !23134
  %i.ee = load float, ptr %i.ed, align 4, !dbg !23134, !noalias !23080, !noundef !14
  %i.ef = fsub float %i.ee, %i.cw, !dbg !23135
  %i.eg = add i16 %i.cx, %i.ea, !dbg !23136
  %i.eh = insertelement <8 x i16> poison, i16 %i.dw, i64 4, !dbg !23139
  %i.ei = insertelement <8 x i16> %i.eh, i16 %i.dx, i64 5, !dbg !23139
  %i.ej = insertelement <8 x i16> %i.ei, i16 %i.dy, i64 6, !dbg !23139
  %i.ek = insertelement <8 x i16> %i.ej, i16 %i.cx, i64 7, !dbg !23139
  %i.el = shufflevector <4 x i16> %i.dv, <4 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>, !dbg !23139
  %i.em = shufflevector <8 x i16> %i.el, <8 x i16> %i.ek, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>, !dbg !23139 ; 2 uses
  %i.en = add <8 x i16> %i.em, %i.eb, !dbg !23139 ; 2 uses
  %.not.i976 = icmp slt i16 %i.eg, %i.cz, !dbg !23142
  br i1 %.not.i976, label %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF6update.exit983, label %bb.h, !dbg !23142

bb.h:                                             ; preds = %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF4cost.exit127
  %i.eo = add <8 x i16> %i.dz, <i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8>, !dbg !23143 ; 2 uses
  %i.ep = add <8 x i16> %i.en, <i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16>, !dbg !23147 ; 2 uses
  %i.eq = ashr <8 x i16> %i.eo, splat (i16 2), !dbg !23150
  %i.er = ashr <8 x i16> %i.ep, splat (i16 2), !dbg !23153
  %i.es = sub <8 x i16> %i.eo, %i.eq, !dbg !23155
  %i.et = sub <8 x i16> %i.ep, %i.er, !dbg !23159
  br label %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF6update.exit983, !dbg !23162

_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF6update.exit983: ; preds = %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF4cost.exit127, %bb.h
  %i.eu = phi <8 x i16> [ %i.dz, %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF4cost.exit127 ], [ %i.es, %bb.h ], !dbg !23163
  %i.ev = phi <8 x i16> [ %i.en, %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF4cost.exit127 ], [ %i.et, %bb.h ], !dbg !23163
  store <8 x i16> %i.eu, ptr %i.ck, align 2, !dbg !23164, !noalias !23116
  store <8 x i16> %i.ev, ptr %.sroa.0.i924.sroa.16.0..sroa.02522.0.2523.sroa_idx, align 2, !dbg !23164, !noalias !23116
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !23165
  %.val2510 = load ptr, ptr %i.ew, align 8, !dbg !23166, !nonnull !14, !noundef !14 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 136, !dbg !23166
  %.val2511.a = load i64, ptr %i.ex, align 8, !dbg !23166, !noundef !14 ; 4 uses
  %i.ey = icmp ult i64 %i.s, %.val2511.a, !dbg !23167
end_hunk_0
begin_hunk_1_@_RNvMsc_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalINtB5_9PriorEvalNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE16update_cost_baseCsfISxE4fmY1Y_14polars_parquet:bb.a
  %i.fo = load float, ptr %i.fn, align 4, !dbg !23209, !noalias !23180, !noundef !14
  %.not.i915 = icmp slt i16 %i.fk, 1024, !dbg !23210
  br i1 %.not.i915, label %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF6update.exit922, label %bb.l, !dbg !23210

bb.l:                                             ; preds = %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF4cost.exit125
  %i.fp = add <8 x i16> %i.fj, <i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8>, !dbg !23211 ; 2 uses
  %i.fq = add <8 x i16> %i.fl, <i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16>, !dbg !23215 ; 2 uses
  %i.fr = ashr <8 x i16> %i.fp, splat (i16 2), !dbg !23218
  %i.fs = ashr <8 x i16> %i.fq, splat (i16 2), !dbg !23221
  %i.ft = sub <8 x i16> %i.fp, %i.fr, !dbg !23223
  %i.fu = sub <8 x i16> %i.fq, %i.fs, !dbg !23227
  br label %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF6update.exit922, !dbg !23230

_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF6update.exit922: ; preds = %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF4cost.exit125, %bb.l
  %i.fv = phi <8 x i16> [ %i.fj, %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF4cost.exit125 ], [ %i.ft, %bb.l ], !dbg !23231
  %i.fw = phi <8 x i16> [ %i.fl, %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF4cost.exit125 ], [ %i.fu, %bb.l ], !dbg !23231
  store <8 x i16> %i.fv, ptr %i.ez, align 2, !dbg !23232, !noalias !23203
  store <8 x i16> %i.fw, ptr %.sroa.0.i863.sroa.16.0..sroa.02525.0.2526.sroa_idx, align 2, !dbg !23232, !noalias !23203
  %i.fx = icmp ult i64 %i.ci, %.val2511.a, !dbg !23233
  br i1 %i.fx, label %bb.n, label %bb.q, !dbg !23233

bb.m:                                             ; preds = %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF6update.exit983
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.s, i64 noundef %.val2511.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @152) #31, !dbg !23167
  unreachable, !dbg !23167

bb.n:                                             ; preds = %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF6update.exit922
  %i.fy = getelementptr inbounds nuw [32 x i8], ptr %.val2510, i64 %i.ci, !dbg !23236 ; 5 uses
  %i.fz = getelementptr inbounds nuw [2 x i8], ptr %i.fy, i64 %i.cm, !dbg !23237 ; 2 uses
  %i.ga = load i16, ptr %i.fz, align 2, !dbg !23244, !noalias !23245, !noundef !14 ; 2 uses
  br i1 %i.cp, label %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF4cost.exit123, label %bb.o, !dbg !23248

bb.o:                                             ; preds = %bb.n
  %i.gb = getelementptr i8, ptr %i.fz, i64 -2, !dbg !23249
  %i.gc = load i16, ptr %i.gb, align 2, !dbg !23254, !noalias !23245, !noundef !14
  %i.gd = sub i16 %i.ga, %i.gc, !dbg !23255
  br label %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF4cost.exit123, !dbg !23256

_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF4cost.exit123: ; preds = %bb.n, %bb.o
  %.sroa.0.0.i122 = phi i16 [ %i.ga, %bb.n ], [ %i.gd, %bb.o ], !dbg !23257
  %i.ge = zext i16 %.sroa.0.0.i122 to i64, !dbg !23258
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fy, i64 30, !dbg !23260
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc12log_table_167logs_16, i64 %i.ge, !dbg !23265
  %i.gh = load float, ptr %i.gg, align 4, !dbg !23265, !noalias !23245, !noundef !14
  %i.gi = load <8 x i16>, ptr %i.fy, align 2, !dbg !23266, !noalias !23268 ; 2 uses
  %.sroa.0.i802.sroa.16.0..sroa.02528.0.2529.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fy, i64 16, !dbg !23266 ; 2 uses
  %i.gj = load i16, ptr %i.gf, align 2, !dbg !23271, !noalias !23245, !noundef !14 ; 2 uses
  %i.gk = load <8 x i16>, ptr %.sroa.0.i802.sroa.16.0..sroa.02528.0.2529.sroa_idx, align 2, !dbg !23266, !noalias !14 ; 2 uses
  %i.gl = zext i16 %i.gj to i64, !dbg !23272
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc12log_table_167logs_16, i64 %i.gl, !dbg !23274
  %i.gn = load float, ptr %i.gm, align 4, !dbg !23274, !noalias !23245, !noundef !14
  %i.go = fsub float %i.gn, %i.gh, !dbg !23275
  %.not.i854 = icmp slt i16 %i.gj, 1024, !dbg !23276
  br i1 %.not.i854, label %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF6update.exit861, label %bb.p, !dbg !23276

bb.p:                                             ; preds = %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF4cost.exit123
  %i.gp = add <8 x i16> %i.gi, <i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8>, !dbg !23277 ; 2 uses
  %i.gq = add <8 x i16> %i.gk, <i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16>, !dbg !23281 ; 2 uses
  %i.gr = ashr <8 x i16> %i.gp, splat (i16 2), !dbg !23284
  %i.gs = ashr <8 x i16> %i.gq, splat (i16 2), !dbg !23287
  %i.gt = sub <8 x i16> %i.gp, %i.gr, !dbg !23289
  %i.gu = sub <8 x i16> %i.gq, %i.gs, !dbg !23293
  br label %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF6update.exit861, !dbg !23296

_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF6update.exit861: ; preds = %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF4cost.exit123, %bb.p
  %i.gv = phi <8 x i16> [ %i.gi, %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF4cost.exit123 ], [ %i.gt, %bb.p ], !dbg !23297
  %i.gw = phi <8 x i16> [ %i.gk, %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF4cost.exit123 ], [ %i.gu, %bb.p ], !dbg !23297
  store <8 x i16> %i.gv, ptr %i.fy, align 2, !dbg !23298, !noalias !23268
  store <8 x i16> %i.gw, ptr %.sroa.0.i802.sroa.16.0..sroa.02528.0.2529.sroa_idx, align 2, !dbg !23298, !noalias !23268
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 144, !dbg !23299
  %.val2506 = load ptr, ptr %i.gx, align 8, !dbg !23300, !nonnull !14, !noundef !14 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 152, !dbg !23300
  %.val2507.a = load i64, ptr %i.gy, align 8, !dbg !23300, !noundef !14 ; 2 uses
  %i.gz = shl i64 %4, 1, !dbg !23301              ; 6 uses
  %i.ha = or disjoint i64 %i.gz, 1, !dbg !23301   ; 3 uses
  %i.hb = icmp ult i64 %i.ha, %.val2507.a, !dbg !23308
  br i1 %i.hb, label %bb.r, label %bb.u, !dbg !23308

bb.q:                                             ; preds = %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF6update.exit922
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.ci, i64 noundef %.val2511.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @152) #31, !dbg !23233
  unreachable, !dbg !23233

bb.r:                                             ; preds = %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF6update.exit861
  %i.hc = getelementptr inbounds nuw [32 x i8], ptr %.val2506, i64 %i.ha, !dbg !23310 ; 5 uses
  %i.hd = getelementptr inbounds nuw [2 x i8], ptr %i.hc, i64 %i.n, !dbg !23311 ; 2 uses
  %i.he = load i16, ptr %i.hd, align 2, !dbg !23318, !noalias !23319, !noundef !14 ; 2 uses
  br i1 %i.x, label %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF4cost.exit121, label %bb.s, !dbg !23322

bb.s:                                             ; preds = %bb.r
  %i.hf = getelementptr i8, ptr %i.hd, i64 -2, !dbg !23323
  %i.hg = load i16, ptr %i.hf, align 2, !dbg !23328, !noalias !23319, !noundef !14
  %i.hh = sub i16 %i.he, %i.hg, !dbg !23329
  br label %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF4cost.exit121, !dbg !23330

_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF4cost.exit121: ; preds = %bb.r, %bb.s
  %.sroa.0.0.i120 = phi i16 [ %i.he, %bb.r ], [ %i.hh, %bb.s ], !dbg !23331
  %i.hi = zext i16 %.sroa.0.0.i120 to i64, !dbg !23332
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hc, i64 30, !dbg !23334
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc12log_table_167logs_16, i64 %i.hi, !dbg !23339
  %i.hl = load float, ptr %i.hk, align 4, !dbg !23339, !noalias !23319, !noundef !14
  %i.hm = load <8 x i16>, ptr %i.hc, align 2, !dbg !23340, !noalias !23342
  %.sroa.0.i741.sroa.16.0..sroa.02531.0.2532.sroa_idx = getelementptr inbounds nuw i8, ptr %i.hc, i64 16, !dbg !23340 ; 2 uses
  %i.hn = select <8 x i1> %i.bb, <8 x i16> %i.dr, <8 x i16> zeroinitializer, !dbg !23345
  %i.ho = extractelement <4 x i1> %i.as, i64 0, !dbg !23348
  %i.hp = select i1 %i.ho, i16 %i.cx, i16 0, !dbg !23348
  %i.hq = extractelement <4 x i1> %i.as, i64 1, !dbg !23350
  %i.hr = select i1 %i.hq, i16 %i.cx, i16 0, !dbg !23350
  %i.hs = extractelement <4 x i1> %i.as, i64 2, !dbg !23352
  %i.ht = select i1 %i.hs, i16 %i.cx, i16 0, !dbg !23352
  %i.hu = extractelement <4 x i1> %i.as, i64 3, !dbg !23354
  %i.hv = select i1 %i.hu, i16 %i.cx, i16 0, !dbg !23354
  %i.hw = select i1 %i.at, i16 %i.cx, i16 0, !dbg !23356
  %i.hx = select i1 %i.au, i16 %i.cx, i16 0, !dbg !23358
  %i.hy = select i1 %.not, i16 0, i16 %i.cx, !dbg !23360
  %i.hz = add <8 x i16> %i.hn, %i.hm, !dbg !23362 ; 2 uses
  %i.ia = load i16, ptr %i.hj, align 2, !dbg !23366, !noalias !23319, !noundef !14 ; 2 uses
  %i.ib = load <8 x i16>, ptr %.sroa.0.i741.sroa.16.0..sroa.02531.0.2532.sroa_idx, align 2, !dbg !23340, !noalias !14
  %i.ic = zext i16 %i.ia to i64, !dbg !23367
  %i.id = getelementptr inbounds nuw [4 x i8], ptr @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc12log_table_167logs_16, i64 %i.ic, !dbg !23369
  %i.ie = load float, ptr %i.id, align 4, !dbg !23369, !noalias !23319, !noundef !14
  %i.if = add i16 %i.cx, %i.ia, !dbg !23370
  %i.ig = insertelement <8 x i16> poison, i16 %i.hp, i64 0, !dbg !23373
  %i.ih = insertelement <8 x i16> %i.ig, i16 %i.hr, i64 1, !dbg !23373
  %i.ii = insertelement <8 x i16> %i.ih, i16 %i.ht, i64 2, !dbg !23373
  %i.ij = insertelement <8 x i16> %i.ii, i16 %i.hv, i64 3, !dbg !23373
  %i.ik = insertelement <8 x i16> %i.ij, i16 %i.hw, i64 4, !dbg !23373
  %i.il = insertelement <8 x i16> %i.ik, i16 %i.hx, i64 5, !dbg !23373
  %i.im = insertelement <8 x i16> %i.il, i16 %i.hy, i64 6, !dbg !23373
  %i.in = insertelement <8 x i16> %i.im, i16 %i.cx, i64 7, !dbg !23373
  %i.io = add <8 x i16> %i.in, %i.ib, !dbg !23373 ; 2 uses
  %.not.i793 = icmp slt i16 %i.if, %i.cz, !dbg !23376
  br i1 %.not.i793, label %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF6update.exit800, label %bb.t, !dbg !23376

bb.t:                                             ; preds = %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF4cost.exit121
  %i.ip = add <8 x i16> %i.hz, <i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8>, !dbg !23377 ; 2 uses
  %i.iq = add <8 x i16> %i.io, <i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16>, !dbg !23381 ; 2 uses
  %i.ir = ashr <8 x i16> %i.ip, splat (i16 2), !dbg !23384
  %i.is = ashr <8 x i16> %i.iq, splat (i16 2), !dbg !23387
  %i.it = sub <8 x i16> %i.ip, %i.ir, !dbg !23389
  %i.iu = sub <8 x i16> %i.iq, %i.is, !dbg !23393
  br label %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF6update.exit800, !dbg !23396

_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF6update.exit800: ; preds = %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF4cost.exit121, %bb.t
  %i.iv = phi <8 x i16> [ %i.hz, %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF4cost.exit121 ], [ %i.it, %bb.t ], !dbg !23397
  %i.iw = phi <8 x i16> [ %i.io, %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF4cost.exit121 ], [ %i.iu, %bb.t ], !dbg !23397
  store <8 x i16> %i.iv, ptr %i.hc, align 2, !dbg !23398, !noalias !23342
  store <8 x i16> %i.iw, ptr %.sroa.0.i741.sroa.16.0..sroa.02531.0.2532.sroa_idx, align 2, !dbg !23398, !noalias !23342
  %i.ix = getelementptr inbounds nuw [32 x i8], ptr %.val2506, i64 %i.gz, !dbg !23399 ; 5 uses
  %i.iy = getelementptr inbounds nuw [2 x i8], ptr %i.ix, i64 %i.cm, !dbg !23402 ; 2 uses
  %i.iz = load i16, ptr %i.iy, align 2, !dbg !23409, !noalias !23410, !noundef !14 ; 2 uses
  br i1 %i.cp, label %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF4cost.exit119, label %bb.v, !dbg !23413

bb.u:                                             ; preds = %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF6update.exit861
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.ha, i64 noundef %.val2507.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @152) #31, !dbg !23308
  unreachable, !dbg !23308

bb.v:                                             ; preds = %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF6update.exit800
  %i.ja = getelementptr i8, ptr %i.iy, i64 -2, !dbg !23414
  %i.jb = load i16, ptr %i.ja, align 2, !dbg !23419, !noalias !23410, !noundef !14
  %i.jc = sub i16 %i.iz, %i.jb, !dbg !23420
  br label %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF4cost.exit119, !dbg !23421

_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF4cost.exit119: ; preds = %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF6update.exit800, %bb.v
  %.sroa.0.0.i118 = phi i16 [ %i.iz, %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF6update.exit800 ], [ %i.jc, %bb.v ], !dbg !23422
  %i.jd = zext i16 %.sroa.0.0.i118 to i64, !dbg !23423
  %i.je = getelementptr inbounds nuw i8, ptr %i.ix, i64 30, !dbg !23425
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc12log_table_167logs_16, i64 %i.jd, !dbg !23430
  %i.jg = load float, ptr %i.jf, align 4, !dbg !23430, !noalias !23410, !noundef !14
  %i.jh = load <8 x i16>, ptr %i.ix, align 2, !dbg !23431, !noalias !23433
  %.sroa.0.i680.sroa.16.0..sroa.02534.0.2535.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ix, i64 16, !dbg !23431 ; 2 uses
  %i.ji = add <8 x i16> %i.ds, %i.jh, !dbg !23436 ; 2 uses
  %i.jj = load i16, ptr %i.je, align 2, !dbg !23440, !noalias !23410, !noundef !14 ; 2 uses
  %i.jk = load <8 x i16>, ptr %.sroa.0.i680.sroa.16.0..sroa.02534.0.2535.sroa_idx, align 2, !dbg !23431, !noalias !14
  %i.jl = zext i16 %i.jj to i64, !dbg !23441
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc12log_table_167logs_16, i64 %i.jl, !dbg !23443
  %i.jn = load float, ptr %i.jm, align 4, !dbg !23443, !noalias !23410, !noundef !14
  %i.jo = fsub float %i.jn, %i.jg, !dbg !23444
  %i.jp = add i16 %i.cx, %i.jj, !dbg !23445
  %i.jq = add <8 x i16> %i.em, %i.jk, !dbg !23448 ; 2 uses
  %.not.i732 = icmp slt i16 %i.jp, %i.cz, !dbg !23451
  br i1 %.not.i732, label %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF6update.exit739, label %bb.w, !dbg !23451

bb.w:                                             ; preds = %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF4cost.exit119
  %i.jr = add <8 x i16> %i.ji, <i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8>, !dbg !23452 ; 2 uses
  %i.js = add <8 x i16> %i.jq, <i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16>, !dbg !23456 ; 2 uses
  %i.jt = ashr <8 x i16> %i.jr, splat (i16 2), !dbg !23459
  %i.ju = ashr <8 x i16> %i.js, splat (i16 2), !dbg !23462
  %i.jv = sub <8 x i16> %i.jr, %i.jt, !dbg !23464
  %i.jw = sub <8 x i16> %i.js, %i.ju, !dbg !23468
  br label %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF6update.exit739, !dbg !23471

_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF6update.exit739: ; preds = %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF4cost.exit119, %bb.w
  %i.jx = phi <8 x i16> [ %i.ji, %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF4cost.exit119 ], [ %i.jv, %bb.w ], !dbg !23472
  %i.jy = phi <8 x i16> [ %i.jq, %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF4cost.exit119 ], [ %i.jw, %bb.w ], !dbg !23472
  store <8 x i16> %i.jx, ptr %i.ix, align 2, !dbg !23473, !noalias !23433
  store <8 x i16> %i.jy, ptr %.sroa.0.i680.sroa.16.0..sroa.02534.0.2535.sroa_idx, align 2, !dbg !23473, !noalias !23433
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 160, !dbg !23474
  %.val2502 = load ptr, ptr %i.jz, align 8, !dbg !23475, !nonnull !14, !noundef !14 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 168, !dbg !23475
  %.val2503.a = load i64, ptr %i.ka, align 8, !dbg !23475, !noundef !14 ; 4 uses
  %i.kb = and i64 %2, 7, !dbg !23476
  %i.kc = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 %i.kb, !dbg !23477
  %i.kd = load i8, ptr %i.kc, align 1, !dbg !23477
  %i.ke = zext i8 %i.kd to i64, !dbg !23478       ; 2 uses
  %i.kf = shl nuw nsw i64 %i.ke, 9, !dbg !23487
  %i.kg = or i64 %i.kf, %i.gz, !dbg !23487        ; 3 uses
  %i.kh = icmp ult i64 %i.kg, %.val2503.a, !dbg !23488
  br i1 %i.kh, label %bb.x, label %bb.aa, !dbg !23488

bb.x:                                             ; preds = %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF6update.exit739
  %i.ki = getelementptr inbounds nuw [32 x i8], ptr %.val2502, i64 %i.kg, !dbg !23490 ; 5 uses
  %i.kj = getelementptr inbounds nuw [2 x i8], ptr %i.ki, i64 %i.n, !dbg !23491 ; 2 uses
  %i.kk = load i16, ptr %i.kj, align 2, !dbg !23498, !noalias !23499, !noundef !14 ; 2 uses
  br i1 %i.x, label %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF4cost.exit117, label %bb.y, !dbg !23502

bb.y:                                             ; preds = %bb.x
  %i.kl = getelementptr i8, ptr %i.kj, i64 -2, !dbg !23503
  %i.km = load i16, ptr %i.kl, align 2, !dbg !23508, !noalias !23499, !noundef !14
  %i.kn = sub i16 %i.kk, %i.km, !dbg !23509
  br label %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF4cost.exit117, !dbg !23510

_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF4cost.exit117: ; preds = %bb.x, %bb.y
  %.sroa.0.0.i116 = phi i16 [ %i.kk, %bb.x ], [ %i.kn, %bb.y ], !dbg !23511
  %i.ko = zext i16 %.sroa.0.0.i116 to i64, !dbg !23512
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ki, i64 30, !dbg !23514
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc12log_table_167logs_16, i64 %i.ko, !dbg !23519
  %i.kr = load float, ptr %i.kq, align 4, !dbg !23519, !noalias !23499, !noundef !14
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 284, !dbg !23520
  %i.kt = load i16, ptr %i.ks, align 4, !dbg !23520, !noundef !14 ; 11 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 286, !dbg !23520
  %i.kv = load i16, ptr %i.ku, align 2, !dbg !23520, !noundef !14 ; 5 uses
  %i.kw = load <8 x i16>, ptr %i.ki, align 2, !dbg !23521, !noalias !23523
  %.sroa.0.i619.sroa.16.0..sroa.02537.0.2538.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ki, i64 16, !dbg !23521 ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 280, !dbg !23520
  %i.ky = insertelement <8 x i16> poison, i16 %i.kt, i64 0, !dbg !23526
  %i.kz = shufflevector <8 x i16> %i.ky, <8 x i16> poison, <8 x i32> zeroinitializer, !dbg !23526
  %i.la = select <8 x i1> %i.bb, <8 x i16> %i.kz, <8 x i16> zeroinitializer, !dbg !23526 ; 5 uses
  %i.lb = insertelement <4 x i16> poison, i16 %i.kt, i64 0, !dbg !23529
  %i.lc = shufflevector <4 x i16> %i.lb, <4 x i16> poison, <4 x i32> zeroinitializer, !dbg !23529
  %i.ld = select <4 x i1> %i.as, <4 x i16> %i.lc, <4 x i16> zeroinitializer, !dbg !23529
  %i.le = select i1 %i.at, i16 %i.kt, i16 0, !dbg !23531
  %i.lf = select i1 %i.au, i16 %i.kt, i16 0, !dbg !23533
  %i.lg = select i1 %.not, i16 0, i16 %i.kt, !dbg !23535
  %i.lh = add <8 x i16> %i.la, %i.kw, !dbg !23537 ; 2 uses
  %i.li = load i16, ptr %i.kp, align 2, !dbg !23541, !noalias !23499, !noundef !14 ; 2 uses
  %i.lj = load <8 x i16>, ptr %.sroa.0.i619.sroa.16.0..sroa.02537.0.2538.sroa_idx, align 2, !dbg !23521, !noalias !14
  %i.lk = zext i16 %i.li to i64, !dbg !23542
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc12log_table_167logs_16, i64 %i.lk, !dbg !23544
  %i.lm = load float, ptr %i.ll, align 4, !dbg !23544, !noalias !23499, !noundef !14
  %i.ln = add i16 %i.kt, %i.li, !dbg !23545
  %i.lo = insertelement <8 x i16> poison, i16 %i.le, i64 4, !dbg !23548
  %i.lp = insertelement <8 x i16> %i.lo, i16 %i.lf, i64 5, !dbg !23548
  %i.lq = insertelement <8 x i16> %i.lp, i16 %i.lg, i64 6, !dbg !23548
  %i.lr = insertelement <8 x i16> %i.lq, i16 %i.kt, i64 7, !dbg !23548
  %i.ls = shufflevector <4 x i16> %i.ld, <4 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>, !dbg !23548
  %i.lt = shufflevector <8 x i16> %i.ls, <8 x i16> %i.lr, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>, !dbg !23548 ; 5 uses
  %i.lu = add <8 x i16> %i.lt, %i.lj, !dbg !23548 ; 2 uses
  %.not.i671 = icmp slt i16 %i.ln, %i.kv, !dbg !23551
  br i1 %.not.i671, label %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF6update.exit678, label %bb.z, !dbg !23551

bb.z:                                             ; preds = %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF4cost.exit117
  %i.lv = add <8 x i16> %i.lh, <i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8>, !dbg !23552 ; 2 uses
  %i.lw = add <8 x i16> %i.lu, <i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16>, !dbg !23556 ; 2 uses
  %i.lx = ashr <8 x i16> %i.lv, splat (i16 2), !dbg !23559
  %i.ly = ashr <8 x i16> %i.lw, splat (i16 2), !dbg !23562
  %i.lz = sub <8 x i16> %i.lv, %i.lx, !dbg !23564
  %i.ma = sub <8 x i16> %i.lw, %i.ly, !dbg !23568
  br label %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF6update.exit678, !dbg !23571

_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF6update.exit678: ; preds = %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF4cost.exit117, %bb.z
  %i.mb = phi <8 x i16> [ %i.lh, %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF4cost.exit117 ], [ %i.lz, %bb.z ], !dbg !23572
  %i.mc = phi <8 x i16> [ %i.lu, %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF4cost.exit117 ], [ %i.ma, %bb.z ], !dbg !23572
  store <8 x i16> %i.mb, ptr %i.ki, align 2, !dbg !23573, !noalias !23523
  store <8 x i16> %i.mc, ptr %.sroa.0.i619.sroa.16.0..sroa.02537.0.2538.sroa_idx, align 2, !dbg !23573, !noalias !23523
  %i.md = shl nuw nsw i64 %i.ke, 8, !dbg !23574
  %i.me = and i64 %i.md, 3840, !dbg !23574
  %i.mf = shl nuw nsw i64 %i.n, 12, !dbg !23581   ; 4 uses
  %i.mg = or i64 %4, %i.me, !dbg !23582
  %i.mh = or i64 %i.mg, %i.mf, !dbg !23582
  %i.mi = shl i64 %i.mh, 1, !dbg !23583
  %i.mj = or disjoint i64 %i.mi, 1, !dbg !23584   ; 3 uses
  %i.mk = icmp ult i64 %i.mj, %.val2503.a, !dbg !23585
  br i1 %i.mk, label %bb.ab, label %bb.ae, !dbg !23585

bb.aa:                                            ; preds = %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF6update.exit739
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.kg, i64 noundef %.val2503.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @152) #31, !dbg !23488
  unreachable, !dbg !23488

bb.ab:                                            ; preds = %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF6update.exit678
  %i.ml = getelementptr inbounds nuw [32 x i8], ptr %.val2502, i64 %i.mj, !dbg !23587 ; 5 uses
  %i.mm = getelementptr inbounds nuw [2 x i8], ptr %i.ml, i64 %i.cm, !dbg !23588 ; 2 uses
  %i.mn = load i16, ptr %i.mm, align 2, !dbg !23595, !noalias !23596, !noundef !14 ; 2 uses
  br i1 %i.cp, label %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF4cost.exit115, label %bb.ac, !dbg !23599

bb.ac:                                            ; preds = %bb.ab
  %i.mo = getelementptr i8, ptr %i.mm, i64 -2, !dbg !23600
  %i.mp = load i16, ptr %i.mo, align 2, !dbg !23605, !noalias !23596, !noundef !14
  %i.mq = sub i16 %i.mn, %i.mp, !dbg !23606
  br label %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF4cost.exit115, !dbg !23607

_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF4cost.exit115: ; preds = %bb.ab, %bb.ac
  %.sroa.0.0.i114 = phi i16 [ %i.mn, %bb.ab ], [ %i.mq, %bb.ac ], !dbg !23608
  %i.mr = zext i16 %.sroa.0.0.i114 to i64, !dbg !23609
  %i.ms = getelementptr inbounds nuw i8, ptr %i.ml, i64 30, !dbg !23611
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc12log_table_167logs_16, i64 %i.mr, !dbg !23616
  %i.mu = load float, ptr %i.mt, align 4, !dbg !23616, !noalias !23596, !noundef !14
  %i.mv = load i16, ptr %i.kx, align 8, !dbg !23617, !noundef !14 ; 11 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %0, i64 282, !dbg !23617
  %i.mx = load i16, ptr %i.mw, align 2, !dbg !23617, !noundef !14 ; 5 uses
  %.sroa.0.i558.sroa.16.0..sroa.02540.0.2541.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ml, i64 16, !dbg !23618 ; 2 uses
  %i.my = load <8 x i16>, ptr %i.ml, align 2, !dbg !23618, !noalias !23620
  %i.mz = insertelement <8 x i16> poison, i16 %i.mv, i64 0, !dbg !23623
  %i.na = shufflevector <8 x i16> %i.mz, <8 x i16> poison, <8 x i32> zeroinitializer, !dbg !23623
  %i.nb = select <8 x i1> %i.dp, <8 x i16> %i.na, <8 x i16> zeroinitializer, !dbg !23623 ; 5 uses
  %i.nc = insertelement <4 x i16> poison, i16 %i.mv, i64 0, !dbg !23626
  %i.nd = shufflevector <4 x i16> %i.nc, <4 x i16> poison, <4 x i32> zeroinitializer, !dbg !23626
  %i.ne = select <4 x i1> %i.dg, <4 x i16> %i.nd, <4 x i16> zeroinitializer, !dbg !23626
  %i.nf = select i1 %i.dh, i16 %i.mv, i16 0, !dbg !23628
  %i.ng = select i1 %i.di, i16 %i.mv, i16 0, !dbg !23630
  %i.nh = select i1 %.not9571, i16 0, i16 %i.mv, !dbg !23632
  %i.ni = add <8 x i16> %i.nb, %i.my, !dbg !23634 ; 2 uses
  %i.nj = load i16, ptr %i.ms, align 2, !dbg !23638, !noalias !23596, !noundef !14 ; 2 uses
  %i.nk = load <8 x i16>, ptr %.sroa.0.i558.sroa.16.0..sroa.02540.0.2541.sroa_idx, align 2, !dbg !23618, !noalias !14
  %i.nl = zext i16 %i.nj to i64, !dbg !23639
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc12log_table_167logs_16, i64 %i.nl, !dbg !23641
  %i.nn = load float, ptr %i.nm, align 4, !dbg !23641, !noalias !23596, !noundef !14
  %i.no = fsub float %i.nn, %i.mu, !dbg !23642
  %i.np = add i16 %i.mv, %i.nj, !dbg !23643
  %i.nq = insertelement <8 x i16> poison, i16 %i.nf, i64 4, !dbg !23646
  %i.nr = insertelement <8 x i16> %i.nq, i16 %i.ng, i64 5, !dbg !23646
  %i.ns = insertelement <8 x i16> %i.nr, i16 %i.nh, i64 6, !dbg !23646
  %i.nt = insertelement <8 x i16> %i.ns, i16 %i.mv, i64 7, !dbg !23646
  %i.nu = shufflevector <4 x i16> %i.ne, <4 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>, !dbg !23646
  %i.nv = shufflevector <8 x i16> %i.nu, <8 x i16> %i.nt, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>, !dbg !23646 ; 5 uses
  %i.nw = add <8 x i16> %i.nv, %i.nk, !dbg !23646 ; 2 uses
  %.not.i610 = icmp slt i16 %i.np, %i.mx, !dbg !23649
  br i1 %.not.i610, label %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF6update.exit617, label %bb.ad, !dbg !23649

bb.ad:                                            ; preds = %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF4cost.exit115
  %i.nx = add <8 x i16> %i.ni, <i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8>, !dbg !23650 ; 2 uses
  %i.ny = add <8 x i16> %i.nw, <i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16>, !dbg !23654 ; 2 uses
  %i.nz = ashr <8 x i16> %i.nx, splat (i16 2), !dbg !23657
  %i.oa = ashr <8 x i16> %i.ny, splat (i16 2), !dbg !23660
  %i.ob = sub <8 x i16> %i.nx, %i.nz, !dbg !23662
  %i.oc = sub <8 x i16> %i.ny, %i.oa, !dbg !23666
  br label %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF6update.exit617, !dbg !23669

_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF6update.exit617: ; preds = %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF4cost.exit115, %bb.ad
  %i.od = phi <8 x i16> [ %i.ni, %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF4cost.exit115 ], [ %i.ob, %bb.ad ], !dbg !23670
  %i.oe = phi <8 x i16> [ %i.nw, %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF4cost.exit115 ], [ %i.oc, %bb.ad ], !dbg !23670
  store <8 x i16> %i.od, ptr %i.ml, align 2, !dbg !23671, !noalias !23620
  store <8 x i16> %i.oe, ptr %.sroa.0.i558.sroa.16.0..sroa.02540.0.2541.sroa_idx, align 2, !dbg !23671, !noalias !23620
  %i.of = getelementptr inbounds nuw i8, ptr %0, i64 176, !dbg !23672
  %.val2498 = load ptr, ptr %i.of, align 8, !dbg !23673, !nonnull !14, !noundef !14 ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %0, i64 184, !dbg !23673
  %.val2499 = load i64, ptr %i.og, align 8, !dbg !23673, !noundef !14 ; 4 uses
  %i.oh = add i64 %2, 7, !dbg !23674
  %i.oi = and i64 %i.oh, 7, !dbg !23676
  %i.oj = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 %i.oi, !dbg !23677
  %i.ok = load i8, ptr %i.oj, align 1, !dbg !23677
  %i.ol = zext i8 %i.ok to i64, !dbg !23678       ; 2 uses
  %i.om = shl nuw nsw i64 %i.ol, 9, !dbg !23686
  %i.on = or i64 %i.om, %i.gz, !dbg !23686        ; 3 uses
  %i.oo = icmp ult i64 %i.on, %.val2499, !dbg !23687
  br i1 %i.oo, label %bb.af, label %bb.ai, !dbg !23687

bb.ae:                                            ; preds = %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF6update.exit678
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.mj, i64 noundef %.val2503.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @152) #31, !dbg !23585
  unreachable, !dbg !23585

bb.af:                                            ; preds = %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF6update.exit617
  %i.op = getelementptr inbounds nuw [32 x i8], ptr %.val2498, i64 %i.on, !dbg !23689 ; 5 uses
  %i.oq = getelementptr inbounds nuw [2 x i8], ptr %i.op, i64 %i.n, !dbg !23690 ; 2 uses
  %i.or = load i16, ptr %i.oq, align 2, !dbg !23697, !noalias !23698, !noundef !14 ; 2 uses
  br i1 %i.x, label %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF4cost.exit113, label %bb.ag, !dbg !23701

bb.ag:                                            ; preds = %bb.af
  %i.os = getelementptr i8, ptr %i.oq, i64 -2, !dbg !23702
  %i.ot = load i16, ptr %i.os, align 2, !dbg !23707, !noalias !23698, !noundef !14
  %i.ou = sub i16 %i.or, %i.ot, !dbg !23708
  br label %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF4cost.exit113, !dbg !23709

_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF4cost.exit113: ; preds = %bb.af, %bb.ag
  %.sroa.0.0.i112 = phi i16 [ %i.or, %bb.af ], [ %i.ou, %bb.ag ], !dbg !23710
  %i.ov = zext i16 %.sroa.0.0.i112 to i64, !dbg !23711
  %i.ow = getelementptr inbounds nuw i8, ptr %i.op, i64 30, !dbg !23713
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc12log_table_167logs_16, i64 %i.ov, !dbg !23718
  %i.oy = load float, ptr %i.ox, align 4, !dbg !23718, !noalias !23698, !noundef !14
  %i.oz = load <8 x i16>, ptr %i.op, align 2, !dbg !23719, !noalias !23721
  %.sroa.0.i497.sroa.16.0..sroa.02543.0.2544.sroa_idx = getelementptr inbounds nuw i8, ptr %i.op, i64 16, !dbg !23719 ; 2 uses
  %i.pa = add <8 x i16> %i.la, %i.oz, !dbg !23724 ; 2 uses
  %i.pb = load i16, ptr %i.ow, align 2, !dbg !23728, !noalias !23698, !noundef !14 ; 2 uses
  %i.pc = load <8 x i16>, ptr %.sroa.0.i497.sroa.16.0..sroa.02543.0.2544.sroa_idx, align 2, !dbg !23719, !noalias !14
  %i.pd = zext i16 %i.pb to i64, !dbg !23729
  %i.pe = getelementptr inbounds nuw [4 x i8], ptr @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc12log_table_167logs_16, i64 %i.pd, !dbg !23731
  %i.pf = load float, ptr %i.pe, align 4, !dbg !23731, !noalias !23698, !noundef !14
  %i.pg = add i16 %i.kt, %i.pb, !dbg !23732
  %i.ph = add <8 x i16> %i.lt, %i.pc, !dbg !23735 ; 2 uses
  %.not.i549 = icmp slt i16 %i.pg, %i.kv, !dbg !23738
  br i1 %.not.i549, label %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF6update.exit556, label %bb.ah, !dbg !23738

bb.ah:                                            ; preds = %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF4cost.exit113
  %i.pi = add <8 x i16> %i.pa, <i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8>, !dbg !23739 ; 2 uses
  %i.pj = add <8 x i16> %i.ph, <i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16>, !dbg !23743 ; 2 uses
  %i.pk = ashr <8 x i16> %i.pi, splat (i16 2), !dbg !23746
  %i.pl = ashr <8 x i16> %i.pj, splat (i16 2), !dbg !23749
  %i.pm = sub <8 x i16> %i.pi, %i.pk, !dbg !23751
  %i.pn = sub <8 x i16> %i.pj, %i.pl, !dbg !23755
  br label %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF6update.exit556, !dbg !23758

_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF6update.exit556: ; preds = %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF4cost.exit113, %bb.ah
  %i.po = phi <8 x i16> [ %i.pa, %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF4cost.exit113 ], [ %i.pm, %bb.ah ], !dbg !23759
  %i.pp = phi <8 x i16> [ %i.ph, %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF4cost.exit113 ], [ %i.pn, %bb.ah ], !dbg !23759
  store <8 x i16> %i.po, ptr %i.op, align 2, !dbg !23760, !noalias !23721
  store <8 x i16> %i.pp, ptr %.sroa.0.i497.sroa.16.0..sroa.02543.0.2544.sroa_idx, align 2, !dbg !23760, !noalias !23721
  %i.pq = shl nuw nsw i64 %i.ol, 8, !dbg !23761
  %i.pr = and i64 %i.pq, 3840, !dbg !23761
  %i.ps = or i64 %4, %i.pr, !dbg !23768
  %i.pt = or i64 %i.ps, %i.mf, !dbg !23768
  %i.pu = shl i64 %i.pt, 1, !dbg !23769
  %i.pv = or disjoint i64 %i.pu, 1, !dbg !23770   ; 3 uses
  %i.pw = icmp ult i64 %i.pv, %.val2499, !dbg !23771
  br i1 %i.pw, label %bb.aj, label %bb.am, !dbg !23771

bb.ai:                                            ; preds = %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF6update.exit617
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.on, i64 noundef %.val2499, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @152) #31, !dbg !23687
  unreachable, !dbg !23687

bb.aj:                                            ; preds = %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF6update.exit556
  %i.px = getelementptr inbounds nuw [32 x i8], ptr %.val2498, i64 %i.pv, !dbg !23773 ; 5 uses
  %i.py = getelementptr inbounds nuw [2 x i8], ptr %i.px, i64 %i.cm, !dbg !23774 ; 2 uses
  %i.pz = load i16, ptr %i.py, align 2, !dbg !23781, !noalias !23782, !noundef !14 ; 2 uses
  br i1 %i.cp, label %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF4cost.exit111, label %bb.ak, !dbg !23785

bb.ak:                                            ; preds = %bb.aj
  %i.qa = getelementptr i8, ptr %i.py, i64 -2, !dbg !23786
  %i.qb = load i16, ptr %i.qa, align 2, !dbg !23791, !noalias !23782, !noundef !14
  %i.qc = sub i16 %i.pz, %i.qb, !dbg !23792
  br label %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF4cost.exit111, !dbg !23793

_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF4cost.exit111: ; preds = %bb.aj, %bb.ak
  %.sroa.0.0.i110 = phi i16 [ %i.pz, %bb.aj ], [ %i.qc, %bb.ak ], !dbg !23794
  %i.qd = zext i16 %.sroa.0.0.i110 to i64, !dbg !23795
  %i.qe = getelementptr inbounds nuw i8, ptr %i.px, i64 30, !dbg !23797
  %i.qf = getelementptr inbounds nuw [4 x i8], ptr @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc12log_table_167logs_16, i64 %i.qd, !dbg !23802
  %i.qg = load float, ptr %i.qf, align 4, !dbg !23802, !noalias !23782, !noundef !14
  %i.qh = load <8 x i16>, ptr %i.px, align 2, !dbg !23803, !noalias !23805
  %.sroa.0.i436.sroa.16.0..sroa.02546.0.2547.sroa_idx = getelementptr inbounds nuw i8, ptr %i.px, i64 16, !dbg !23803 ; 2 uses
  %i.qi = add <8 x i16> %i.nb, %i.qh, !dbg !23808 ; 2 uses
  %i.qj = load i16, ptr %i.qe, align 2, !dbg !23812, !noalias !23782, !noundef !14 ; 2 uses
  %i.qk = load <8 x i16>, ptr %.sroa.0.i436.sroa.16.0..sroa.02546.0.2547.sroa_idx, align 2, !dbg !23803, !noalias !14
  %i.ql = zext i16 %i.qj to i64, !dbg !23813
  %i.qm = getelementptr inbounds nuw [4 x i8], ptr @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc12log_table_167logs_16, i64 %i.ql, !dbg !23815
  %i.qn = load float, ptr %i.qm, align 4, !dbg !23815, !noalias !23782, !noundef !14
  %i.qo = fsub float %i.qn, %i.qg, !dbg !23816
  %i.qp = add i16 %i.mv, %i.qj, !dbg !23817
  %i.qq = add <8 x i16> %i.nv, %i.qk, !dbg !23820 ; 2 uses
  %.not.i488 = icmp slt i16 %i.qp, %i.mx, !dbg !23823
  br i1 %.not.i488, label %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF6update.exit495, label %bb.al, !dbg !23823

bb.al:                                            ; preds = %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF4cost.exit111
  %i.qr = add <8 x i16> %i.qi, <i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8>, !dbg !23824 ; 2 uses
  %i.qs = add <8 x i16> %i.qq, <i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16>, !dbg !23828 ; 2 uses
  %i.qt = ashr <8 x i16> %i.qr, splat (i16 2), !dbg !23831
  %i.qu = ashr <8 x i16> %i.qs, splat (i16 2), !dbg !23834
  %i.qv = sub <8 x i16> %i.qr, %i.qt, !dbg !23836
  %i.qw = sub <8 x i16> %i.qs, %i.qu, !dbg !23840
  br label %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF6update.exit495, !dbg !23843

_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF6update.exit495: ; preds = %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF4cost.exit111, %bb.al
  %i.qx = phi <8 x i16> [ %i.qi, %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF4cost.exit111 ], [ %i.qv, %bb.al ], !dbg !23844
  %i.qy = phi <8 x i16> [ %i.qq, %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF4cost.exit111 ], [ %i.qw, %bb.al ], !dbg !23844
  store <8 x i16> %i.qx, ptr %i.px, align 2, !dbg !23845, !noalias !23805
  store <8 x i16> %i.qy, ptr %.sroa.0.i436.sroa.16.0..sroa.02546.0.2547.sroa_idx, align 2, !dbg !23845, !noalias !23805
  %i.qz = getelementptr inbounds nuw i8, ptr %0, i64 192, !dbg !23846
  %.val2494 = load ptr, ptr %i.qz, align 8, !dbg !23847, !nonnull !14, !noundef !14 ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %0, i64 200, !dbg !23847
  %.val2495 = load i64, ptr %i.ra, align 8, !dbg !23847, !noundef !14 ; 4 uses
  %i.rb = add i64 %2, 6, !dbg !23848
  %i.rc = and i64 %i.rb, 7, !dbg !23850
  %i.rd = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 %i.rc, !dbg !23851
  %i.re = load i8, ptr %i.rd, align 1, !dbg !23851
  %i.rf = zext i8 %i.re to i64, !dbg !23852       ; 2 uses
  %i.rg = shl nuw nsw i64 %i.rf, 9, !dbg !23860
  %i.rh = or i64 %i.rg, %i.gz, !dbg !23860        ; 3 uses
  %i.ri = icmp ult i64 %i.rh, %.val2495, !dbg !23861
  br i1 %i.ri, label %bb.an, label %bb.aq, !dbg !23861

bb.am:                                            ; preds = %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF6update.exit556
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.pv, i64 noundef %.val2499, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @152) #31, !dbg !23771
  unreachable, !dbg !23771

bb.an:                                            ; preds = %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF6update.exit495
  %i.rj = getelementptr inbounds nuw [32 x i8], ptr %.val2494, i64 %i.rh, !dbg !23863 ; 5 uses
  %i.rk = getelementptr inbounds nuw [2 x i8], ptr %i.rj, i64 %i.n, !dbg !23864 ; 2 uses
  %i.rl = load i16, ptr %i.rk, align 2, !dbg !23871, !noalias !23872, !noundef !14 ; 2 uses
  br i1 %i.x, label %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF4cost.exit109, label %bb.ao, !dbg !23875

bb.ao:                                            ; preds = %bb.an
  %i.rm = getelementptr i8, ptr %i.rk, i64 -2, !dbg !23876
  %i.rn = load i16, ptr %i.rm, align 2, !dbg !23881, !noalias !23872, !noundef !14
  %i.ro = sub i16 %i.rl, %i.rn, !dbg !23882
  br label %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF4cost.exit109, !dbg !23883

_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF4cost.exit109: ; preds = %bb.an, %bb.ao
  %.sroa.0.0.i108 = phi i16 [ %i.rl, %bb.an ], [ %i.ro, %bb.ao ], !dbg !23884
  %i.rp = zext i16 %.sroa.0.0.i108 to i64, !dbg !23885
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rj, i64 30, !dbg !23887
  %i.rr = getelementptr inbounds nuw [4 x i8], ptr @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc12log_table_167logs_16, i64 %i.rp, !dbg !23892
  %i.rs = load float, ptr %i.rr, align 4, !dbg !23892, !noalias !23872, !noundef !14
  %i.rt = load <8 x i16>, ptr %i.rj, align 2, !dbg !23893, !noalias !23895
  %.sroa.0.i375.sroa.16.0..sroa.02549.0.2550.sroa_idx = getelementptr inbounds nuw i8, ptr %i.rj, i64 16, !dbg !23893 ; 2 uses
  %i.ru = add <8 x i16> %i.la, %i.rt, !dbg !23898 ; 2 uses
  %i.rv = load i16, ptr %i.rq, align 2, !dbg !23902, !noalias !23872, !noundef !14 ; 2 uses
  %i.rw = load <8 x i16>, ptr %.sroa.0.i375.sroa.16.0..sroa.02549.0.2550.sroa_idx, align 2, !dbg !23893, !noalias !14
  %i.rx = zext i16 %i.rv to i64, !dbg !23903
  %i.ry = getelementptr inbounds nuw [4 x i8], ptr @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc12log_table_167logs_16, i64 %i.rx, !dbg !23905
  %i.rz = load float, ptr %i.ry, align 4, !dbg !23905, !noalias !23872, !noundef !14
  %i.sa = add i16 %i.kt, %i.rv, !dbg !23906
  %i.sb = add <8 x i16> %i.lt, %i.rw, !dbg !23909 ; 2 uses
  %.not.i427 = icmp slt i16 %i.sa, %i.kv, !dbg !23912
  br i1 %.not.i427, label %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF6update.exit434, label %bb.ap, !dbg !23912

bb.ap:                                            ; preds = %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF4cost.exit109
  %i.sc = add <8 x i16> %i.ru, <i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8>, !dbg !23913 ; 2 uses
  %i.sd = add <8 x i16> %i.sb, <i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16>, !dbg !23917 ; 2 uses
  %i.se = ashr <8 x i16> %i.sc, splat (i16 2), !dbg !23920
  %i.sf = ashr <8 x i16> %i.sd, splat (i16 2), !dbg !23923
  %i.sg = sub <8 x i16> %i.sc, %i.se, !dbg !23925
  %i.sh = sub <8 x i16> %i.sd, %i.sf, !dbg !23929
  br label %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF6update.exit434, !dbg !23932

_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF6update.exit434: ; preds = %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF4cost.exit109, %bb.ap
  %i.si = phi <8 x i16> [ %i.ru, %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF4cost.exit109 ], [ %i.sg, %bb.ap ], !dbg !23933
  %i.sj = phi <8 x i16> [ %i.sb, %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF4cost.exit109 ], [ %i.sh, %bb.ap ], !dbg !23933
  store <8 x i16> %i.si, ptr %i.rj, align 2, !dbg !23934, !noalias !23895
  store <8 x i16> %i.sj, ptr %.sroa.0.i375.sroa.16.0..sroa.02549.0.2550.sroa_idx, align 2, !dbg !23934, !noalias !23895
  %i.sk = shl nuw nsw i64 %i.rf, 8, !dbg !23935
  %i.sl = and i64 %i.sk, 3840, !dbg !23935
  %i.sm = or i64 %4, %i.sl, !dbg !23942
  %i.sn = or i64 %i.sm, %i.mf, !dbg !23942
  %i.so = shl i64 %i.sn, 1, !dbg !23943
  %i.sp = or disjoint i64 %i.so, 1, !dbg !23944   ; 3 uses
  %i.sq = icmp ult i64 %i.sp, %.val2495, !dbg !23945
  br i1 %i.sq, label %bb.ar, label %bb.au, !dbg !23945

bb.aq:                                            ; preds = %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF6update.exit495
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.rh, i64 noundef %.val2495, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @152) #31, !dbg !23861
  unreachable, !dbg !23861

bb.ar:                                            ; preds = %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF6update.exit434
  %i.sr = getelementptr inbounds nuw [32 x i8], ptr %.val2494, i64 %i.sp, !dbg !23947 ; 5 uses
  %i.ss = getelementptr inbounds nuw [2 x i8], ptr %i.sr, i64 %i.cm, !dbg !23948 ; 2 uses
  %i.st = load i16, ptr %i.ss, align 2, !dbg !23955, !noalias !23956, !noundef !14 ; 2 uses
  br i1 %i.cp, label %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF4cost.exit107, label %bb.as, !dbg !23959

bb.as:                                            ; preds = %bb.ar
  %i.su = getelementptr i8, ptr %i.ss, i64 -2, !dbg !23960
  %i.sv = load i16, ptr %i.su, align 2, !dbg !23965, !noalias !23956, !noundef !14
  %i.sw = sub i16 %i.st, %i.sv, !dbg !23966
  br label %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF4cost.exit107, !dbg !23967

_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF4cost.exit107: ; preds = %bb.ar, %bb.as
  %.sroa.0.0.i106 = phi i16 [ %i.st, %bb.ar ], [ %i.sw, %bb.as ], !dbg !23968
  %i.sx = zext i16 %.sroa.0.0.i106 to i64, !dbg !23969
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sr, i64 30, !dbg !23971
  %i.sz = getelementptr inbounds nuw [4 x i8], ptr @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc12log_table_167logs_16, i64 %i.sx, !dbg !23976
  %i.ta = load float, ptr %i.sz, align 4, !dbg !23976, !noalias !23956, !noundef !14
  %i.tb = load <8 x i16>, ptr %i.sr, align 2, !dbg !23977, !noalias !23979
  %.sroa.0.i314.sroa.16.0..sroa.02552.0.2553.sroa_idx = getelementptr inbounds nuw i8, ptr %i.sr, i64 16, !dbg !23977 ; 2 uses
  %i.tc = add <8 x i16> %i.nb, %i.tb, !dbg !23982 ; 2 uses
  %i.td = load i16, ptr %i.sy, align 2, !dbg !23986, !noalias !23956, !noundef !14 ; 2 uses
  %i.te = load <8 x i16>, ptr %.sroa.0.i314.sroa.16.0..sroa.02552.0.2553.sroa_idx, align 2, !dbg !23977, !noalias !14
  %i.tf = zext i16 %i.td to i64, !dbg !23987
  %i.tg = getelementptr inbounds nuw [4 x i8], ptr @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc12log_table_167logs_16, i64 %i.tf, !dbg !23989
  %i.th = load float, ptr %i.tg, align 4, !dbg !23989, !noalias !23956, !noundef !14
  %i.ti = fsub float %i.th, %i.ta, !dbg !23990
  %i.tj = add i16 %i.mv, %i.td, !dbg !23991
  %i.tk = add <8 x i16> %i.nv, %i.te, !dbg !23994 ; 2 uses
  %.not.i366 = icmp slt i16 %i.tj, %i.mx, !dbg !23997
  br i1 %.not.i366, label %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF6update.exit373, label %bb.at, !dbg !23997

bb.at:                                            ; preds = %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF4cost.exit107
  %i.tl = add <8 x i16> %i.tc, <i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8>, !dbg !23998 ; 2 uses
  %i.tm = add <8 x i16> %i.tk, <i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16>, !dbg !24002 ; 2 uses
  %i.tn = ashr <8 x i16> %i.tl, splat (i16 2), !dbg !24005
  %i.to = ashr <8 x i16> %i.tm, splat (i16 2), !dbg !24008
  %i.tp = sub <8 x i16> %i.tl, %i.tn, !dbg !24010
  %i.tq = sub <8 x i16> %i.tm, %i.to, !dbg !24014
  br label %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF6update.exit373, !dbg !24017

_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF6update.exit373: ; preds = %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF4cost.exit107, %bb.at
  %i.tr = phi <8 x i16> [ %i.tc, %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF4cost.exit107 ], [ %i.tp, %bb.at ], !dbg !24018
  %i.ts = phi <8 x i16> [ %i.tk, %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF4cost.exit107 ], [ %i.tq, %bb.at ], !dbg !24018
  store <8 x i16> %i.tr, ptr %i.sr, align 2, !dbg !24019, !noalias !23979
  store <8 x i16> %i.ts, ptr %.sroa.0.i314.sroa.16.0..sroa.02552.0.2553.sroa_idx, align 2, !dbg !24019, !noalias !23979
  %i.tt = getelementptr inbounds nuw i8, ptr %0, i64 208, !dbg !24020
  %.val2490 = load ptr, ptr %i.tt, align 8, !dbg !24021, !nonnull !14, !noundef !14 ; 2 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %0, i64 216, !dbg !24021
  %.val2491 = load i64, ptr %i.tu, align 8, !dbg !24021, !noundef !14 ; 4 uses
  %i.tv = add i64 %2, 5, !dbg !24022
  %i.tw = and i64 %i.tv, 7, !dbg !24024
  %i.tx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 %i.tw, !dbg !24025
  %i.ty = load i8, ptr %i.tx, align 1, !dbg !24025
  %i.tz = zext i8 %i.ty to i64, !dbg !24026       ; 2 uses
  %i.ua = shl nuw nsw i64 %i.tz, 9, !dbg !24034
  %i.ub = or i64 %i.ua, %i.gz, !dbg !24034        ; 3 uses
  %i.uc = icmp ult i64 %i.ub, %.val2491, !dbg !24035
  br i1 %i.uc, label %bb.av, label %bb.ay, !dbg !24035

bb.au:                                            ; preds = %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF6update.exit434
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.sp, i64 noundef %.val2495, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @152) #31, !dbg !23945
  unreachable, !dbg !23945

bb.av:                                            ; preds = %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF6update.exit373
  %i.ud = getelementptr inbounds nuw [32 x i8], ptr %.val2490, i64 %i.ub, !dbg !24037 ; 5 uses
  %i.ue = getelementptr inbounds nuw [2 x i8], ptr %i.ud, i64 %i.n, !dbg !24038 ; 2 uses
  %i.uf = load i16, ptr %i.ue, align 2, !dbg !24045, !noalias !24046, !noundef !14 ; 2 uses
  br i1 %i.x, label %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF4cost.exit105, label %bb.aw, !dbg !24049

bb.aw:                                            ; preds = %bb.av
  %i.ug = getelementptr i8, ptr %i.ue, i64 -2, !dbg !24050
  %i.uh = load i16, ptr %i.ug, align 2, !dbg !24055, !noalias !24046, !noundef !14
  %i.ui = sub i16 %i.uf, %i.uh, !dbg !24056
  br label %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF4cost.exit105, !dbg !24057

_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF4cost.exit105: ; preds = %bb.av, %bb.aw
  %.sroa.0.0.i104 = phi i16 [ %i.uf, %bb.av ], [ %i.ui, %bb.aw ], !dbg !24058
  %i.uj = zext i16 %.sroa.0.0.i104 to i64, !dbg !24059
  %i.uk = getelementptr inbounds nuw i8, ptr %i.ud, i64 30, !dbg !24061
  %i.ul = getelementptr inbounds nuw [4 x i8], ptr @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc12log_table_167logs_16, i64 %i.uj, !dbg !24066
  %i.um = load float, ptr %i.ul, align 4, !dbg !24066, !noalias !24046, !noundef !14
  %i.un = load <8 x i16>, ptr %i.ud, align 2, !dbg !24067, !noalias !24069
  %.sroa.0.i253.sroa.16.0..sroa.02555.0.2556.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ud, i64 16, !dbg !24067 ; 2 uses
  %i.uo = add <8 x i16> %i.la, %i.un, !dbg !24072 ; 2 uses
  %i.up = load i16, ptr %i.uk, align 2, !dbg !24076, !noalias !24046, !noundef !14 ; 2 uses
  %i.uq = load <8 x i16>, ptr %.sroa.0.i253.sroa.16.0..sroa.02555.0.2556.sroa_idx, align 2, !dbg !24067, !noalias !14
  %i.ur = zext i16 %i.up to i64, !dbg !24077
  %i.us = getelementptr inbounds nuw [4 x i8], ptr @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc12log_table_167logs_16, i64 %i.ur, !dbg !24079
  %i.ut = load float, ptr %i.us, align 4, !dbg !24079, !noalias !24046, !noundef !14
  %i.uu = add i16 %i.kt, %i.up, !dbg !24080
  %i.uv = add <8 x i16> %i.lt, %i.uq, !dbg !24083 ; 2 uses
  %.not.i305 = icmp slt i16 %i.uu, %i.kv, !dbg !24086
  br i1 %.not.i305, label %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF6update.exit312, label %bb.ax, !dbg !24086

bb.ax:                                            ; preds = %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF4cost.exit105
  %i.uw = add <8 x i16> %i.uo, <i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8>, !dbg !24087 ; 2 uses
  %i.ux = add <8 x i16> %i.uv, <i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16>, !dbg !24091 ; 2 uses
  %i.uy = ashr <8 x i16> %i.uw, splat (i16 2), !dbg !24094
  %i.uz = ashr <8 x i16> %i.ux, splat (i16 2), !dbg !24097
  %i.va = sub <8 x i16> %i.uw, %i.uy, !dbg !24099
  %i.vb = sub <8 x i16> %i.ux, %i.uz, !dbg !24103
  br label %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF6update.exit312, !dbg !24106

_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF6update.exit312: ; preds = %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF4cost.exit105, %bb.ax
  %i.vc = phi <8 x i16> [ %i.uo, %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF4cost.exit105 ], [ %i.va, %bb.ax ], !dbg !24107
  %i.vd = phi <8 x i16> [ %i.uv, %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF4cost.exit105 ], [ %i.vb, %bb.ax ], !dbg !24107
  store <8 x i16> %i.vc, ptr %i.ud, align 2, !dbg !24108, !noalias !24069
  store <8 x i16> %i.vd, ptr %.sroa.0.i253.sroa.16.0..sroa.02555.0.2556.sroa_idx, align 2, !dbg !24108, !noalias !24069
  %i.ve = shl nuw nsw i64 %i.tz, 8, !dbg !24109
  %i.vf = and i64 %i.ve, 3840, !dbg !24109
  %i.vg = or i64 %4, %i.vf, !dbg !24116
  %i.vh = or i64 %i.vg, %i.mf, !dbg !24116
  %i.vi = shl i64 %i.vh, 1, !dbg !24117
  %i.vj = or disjoint i64 %i.vi, 1, !dbg !24118   ; 3 uses
  %i.vk = icmp ult i64 %i.vj, %.val2491, !dbg !24119
  br i1 %i.vk, label %bb.az, label %bb.bc, !dbg !24119

bb.ay:                                            ; preds = %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF6update.exit373
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.ub, i64 noundef %.val2491, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @152) #31, !dbg !24035
  unreachable, !dbg !24035

bb.az:                                            ; preds = %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF6update.exit312
  %i.vl = getelementptr inbounds nuw [32 x i8], ptr %.val2490, i64 %i.vj, !dbg !24121 ; 5 uses
  %i.vm = getelementptr inbounds nuw [2 x i8], ptr %i.vl, i64 %i.cm, !dbg !24122 ; 2 uses
  %i.vn = load i16, ptr %i.vm, align 2, !dbg !24129, !noalias !24130, !noundef !14 ; 2 uses
  br i1 %i.cp, label %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF4cost.exit103, label %bb.ba, !dbg !24133

bb.ba:                                            ; preds = %bb.az
  %i.vo = getelementptr i8, ptr %i.vm, i64 -2, !dbg !24134
  %i.vp = load i16, ptr %i.vo, align 2, !dbg !24139, !noalias !24130, !noundef !14
  %i.vq = sub i16 %i.vn, %i.vp, !dbg !24140
  br label %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF4cost.exit103, !dbg !24141

_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF4cost.exit103: ; preds = %bb.az, %bb.ba
  %.sroa.0.0.i102 = phi i16 [ %i.vn, %bb.az ], [ %i.vq, %bb.ba ], !dbg !24142
  %i.vr = zext i16 %.sroa.0.0.i102 to i64, !dbg !24143
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vl, i64 30, !dbg !24145
  %i.vt = getelementptr inbounds nuw [4 x i8], ptr @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc12log_table_167logs_16, i64 %i.vr, !dbg !24150
  %i.vu = load float, ptr %i.vt, align 4, !dbg !24150, !noalias !24130, !noundef !14
  %i.vv = load <8 x i16>, ptr %i.vl, align 2, !dbg !24151, !noalias !24153
  %.sroa.0.i192.sroa.16.0..sroa.02558.0.2559.sroa_idx = getelementptr inbounds nuw i8, ptr %i.vl, i64 16, !dbg !24151 ; 2 uses
  %i.vw = add <8 x i16> %i.nb, %i.vv, !dbg !24156 ; 2 uses
  %i.vx = load i16, ptr %i.vs, align 2, !dbg !24160, !noalias !24130, !noundef !14 ; 2 uses
  %i.vy = load <8 x i16>, ptr %.sroa.0.i192.sroa.16.0..sroa.02558.0.2559.sroa_idx, align 2, !dbg !24151, !noalias !14
  %i.vz = zext i16 %i.vx to i64, !dbg !24161
  %i.wa = getelementptr inbounds nuw [4 x i8], ptr @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc12log_table_167logs_16, i64 %i.vz, !dbg !24163
  %i.wb = load float, ptr %i.wa, align 4, !dbg !24163, !noalias !24130, !noundef !14
  %i.wc = fsub float %i.wb, %i.vu, !dbg !24164
  %i.wd = add i16 %i.mv, %i.vx, !dbg !24165
  %i.we = add <8 x i16> %i.nv, %i.vy, !dbg !24168 ; 2 uses
  %.not.i244 = icmp slt i16 %i.wd, %i.mx, !dbg !24171
  br i1 %.not.i244, label %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF6update.exit251, label %bb.bb, !dbg !24171

bb.bb:                                            ; preds = %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF4cost.exit103
  %i.wf = add <8 x i16> %i.vw, <i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8>, !dbg !24172 ; 2 uses
  %i.wg = add <8 x i16> %i.we, <i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16>, !dbg !24176 ; 2 uses
  %i.wh = ashr <8 x i16> %i.wf, splat (i16 2), !dbg !24179
  %i.wi = ashr <8 x i16> %i.wg, splat (i16 2), !dbg !24182
  %i.wj = sub <8 x i16> %i.wf, %i.wh, !dbg !24184
  %i.wk = sub <8 x i16> %i.wg, %i.wi, !dbg !24188
  br label %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF6update.exit251, !dbg !24191

_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF6update.exit251: ; preds = %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF4cost.exit103, %bb.bb
  %i.wl = phi <8 x i16> [ %i.vw, %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF4cost.exit103 ], [ %i.wj, %bb.bb ], !dbg !24192
  %i.wm = phi <8 x i16> [ %i.we, %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF4cost.exit103 ], [ %i.wk, %bb.bb ], !dbg !24192
  store <8 x i16> %i.wl, ptr %i.vl, align 2, !dbg !24193, !noalias !24153
  store <8 x i16> %i.wm, ptr %.sroa.0.i192.sroa.16.0..sroa.02558.0.2559.sroa_idx, align 2, !dbg !24193, !noalias !24153
  %i.wn = getelementptr inbounds nuw i8, ptr %0, i64 224, !dbg !24194
  %.val2486 = load ptr, ptr %i.wn, align 8, !dbg !24195, !nonnull !14, !noundef !14 ; 2 uses
  %i.wo = getelementptr inbounds nuw i8, ptr %0, i64 232, !dbg !24195
  %.val2487 = load i64, ptr %i.wo, align 8, !dbg !24195, !noundef !14 ; 4 uses
  %i.wp = zext i8 %i.g to i64, !dbg !24196
  %i.wq = shl nuw nsw i64 %i.wp, 8, !dbg !24203   ; 2 uses
  %i.wr = and i64 %i.wq, 61440, !dbg !24203
  %i.ws = or i64 %i.wr, %4, !dbg !24204           ; 3 uses
  %i.wt = icmp ult i64 %i.ws, %.val2487, !dbg !24205
  br i1 %i.wt, label %bb.bd, label %bb.bg, !dbg !24205

bb.bc:                                            ; preds = %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF6update.exit312
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.vj, i64 noundef %.val2491, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @152) #31, !dbg !24119
  unreachable, !dbg !24119

bb.bd:                                            ; preds = %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF6update.exit251
  %i.wu = getelementptr inbounds nuw [32 x i8], ptr %.val2486, i64 %i.ws, !dbg !24207 ; 5 uses
  %i.wv = getelementptr inbounds nuw [2 x i8], ptr %i.wu, i64 %i.n, !dbg !24208 ; 2 uses
  %i.ww = load i16, ptr %i.wv, align 2, !dbg !24215, !noalias !24216, !noundef !14 ; 2 uses
  br i1 %i.x, label %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF4cost.exit101, label %bb.be, !dbg !24219

bb.be:                                            ; preds = %bb.bd
  %i.wx = getelementptr i8, ptr %i.wv, i64 -2, !dbg !24220
  %i.wy = load i16, ptr %i.wx, align 2, !dbg !24225, !noalias !24216, !noundef !14
  %i.wz = sub i16 %i.ww, %i.wy, !dbg !24226
  br label %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF4cost.exit101, !dbg !24227

_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF4cost.exit101: ; preds = %bb.bd, %bb.be
  %.sroa.0.0.i100 = phi i16 [ %i.ww, %bb.bd ], [ %i.wz, %bb.be ], !dbg !24228
  %i.xa = zext i16 %.sroa.0.0.i100 to i64, !dbg !24229
  %i.xb = getelementptr inbounds nuw i8, ptr %i.wu, i64 30, !dbg !24231
  %i.xc = getelementptr inbounds nuw [4 x i8], ptr @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc12log_table_167logs_16, i64 %i.xa, !dbg !24236
  %i.xd = load float, ptr %i.xc, align 4, !dbg !24236, !noalias !24216, !noundef !14
  %i.xe = load <8 x i16>, ptr %i.wu, align 2, !dbg !24237, !noalias !24239
  %.sroa.0.i131.sroa.16.0..sroa.02561.0.2562.sroa_idx = getelementptr inbounds nuw i8, ptr %i.wu, i64 16, !dbg !24237 ; 2 uses
  %i.xf = add <8 x i16> %i.la, %i.xe, !dbg !24242 ; 2 uses
  %i.xg = load i16, ptr %i.xb, align 2, !dbg !24246, !noalias !24216, !noundef !14 ; 2 uses
  %i.xh = load <8 x i16>, ptr %.sroa.0.i131.sroa.16.0..sroa.02561.0.2562.sroa_idx, align 2, !dbg !24237, !noalias !14
  %i.xi = zext i16 %i.xg to i64, !dbg !24247
  %i.xj = getelementptr inbounds nuw [4 x i8], ptr @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc12log_table_167logs_16, i64 %i.xi, !dbg !24249
  %i.xk = load float, ptr %i.xj, align 4, !dbg !24249, !noalias !24216, !noundef !14
  %i.xl = add i16 %i.kt, %i.xg, !dbg !24250
  %i.xm = add <8 x i16> %i.lt, %i.xh, !dbg !24253 ; 2 uses
  %.not.i183 = icmp slt i16 %i.xl, %i.kv, !dbg !24256
  br i1 %.not.i183, label %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF6update.exit190, label %bb.bf, !dbg !24256

bb.bf:                                            ; preds = %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF4cost.exit101
  %i.xn = add <8 x i16> %i.xf, <i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8>, !dbg !24257 ; 2 uses
  %i.xo = add <8 x i16> %i.xm, <i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16>, !dbg !24261 ; 2 uses
  %i.xp = ashr <8 x i16> %i.xn, splat (i16 2), !dbg !24264
  %i.xq = ashr <8 x i16> %i.xo, splat (i16 2), !dbg !24267
  %i.xr = sub <8 x i16> %i.xn, %i.xp, !dbg !24269
  %i.xs = sub <8 x i16> %i.xo, %i.xq, !dbg !24273
  br label %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF6update.exit190, !dbg !24276

_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF6update.exit190: ; preds = %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF4cost.exit101, %bb.bf
  %i.xt = phi <8 x i16> [ %i.xf, %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF4cost.exit101 ], [ %i.xr, %bb.bf ], !dbg !24277
  %i.xu = phi <8 x i16> [ %i.xm, %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF4cost.exit101 ], [ %i.xs, %bb.bf ], !dbg !24277
  store <8 x i16> %i.xt, ptr %i.wu, align 2, !dbg !24278, !noalias !24239
  store <8 x i16> %i.xu, ptr %.sroa.0.i131.sroa.16.0..sroa.02561.0.2562.sroa_idx, align 2, !dbg !24278, !noalias !24239
  %i.xv = shl nuw nsw i64 %i.n, 16, !dbg !24279
  %i.xw = or disjoint i64 %i.wq, %i.xv, !dbg !24284
  %i.xx = or i64 %i.xw, %4, !dbg !24284
  %i.xy = add i64 %i.xx, 65536, !dbg !24285       ; 3 uses
  %i.xz = icmp ult i64 %i.xy, %.val2487, !dbg !24286
  br i1 %i.xz, label %bb.bh, label %bb.bk, !dbg !24286

bb.bg:                                            ; preds = %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF6update.exit251
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.ws, i64 noundef %.val2487, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @152) #31, !dbg !24205
  unreachable, !dbg !24205

bb.bh:                                            ; preds = %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF6update.exit190
  %i.ya = getelementptr inbounds nuw [32 x i8], ptr %.val2486, i64 %i.xy, !dbg !24288 ; 5 uses
  %i.yb = getelementptr inbounds nuw [2 x i8], ptr %i.ya, i64 %i.cm, !dbg !24289 ; 2 uses
  %i.yc = load i16, ptr %i.yb, align 2, !dbg !24296, !noalias !24297, !noundef !14 ; 2 uses
  br i1 %i.cp, label %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF4cost.exit, label %bb.bi, !dbg !24300

bb.bi:                                            ; preds = %bb.bh
  %i.yd = getelementptr i8, ptr %i.yb, i64 -2, !dbg !24301
  %i.ye = load i16, ptr %i.yd, align 2, !dbg !24306, !noalias !24297, !noundef !14
  %i.yf = sub i16 %i.yc, %i.ye, !dbg !24307
  br label %_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF4cost.exit, !dbg !24308

_RNvMsa_NtNtCsk4ZPsEfLtLH_6brotli3enc10prior_evalNtB5_3CDF4cost.exit: ; preds = %bb.bh, %bb.bi
  %.sroa.0.0.i = phi i16 [ %i.yc, %bb.bh ], [ %i.yf, %bb.bi ], !dbg !24309
  %i.yg = zext i16 %.sroa.0.0.i to i64, !dbg !24310
end_hunk_1
