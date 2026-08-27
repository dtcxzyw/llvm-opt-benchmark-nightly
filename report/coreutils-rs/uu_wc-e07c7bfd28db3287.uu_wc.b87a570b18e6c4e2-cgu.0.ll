Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_wc-e07c7bfd28db3287.uu_wc.b87a570b18e6c4e2-cgu.0?download=true
inline.NumInlined: 1243
inline.NumDeleted: 653
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 19
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RNvCsfPYenFzdTHO_5uu_wc2wc:bb.a
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !1091
  %i.gr = call noundef align 8 dereferenceable_or_null(88) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 88, i64 noundef 8) #28, !noalias !1091 ; 3 uses
  %i.gs = icmp eq ptr %i.gr, null
  br i1 %i.gs, label %bb.u, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit58.i, !prof !185

bb.u:                                             ; preds = %bb.t
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 88) #30, !noalias !1091
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit58.i: ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.gr, ptr noundef nonnull align 8 dereferenceable(88) %i.as, i64 88, i1 false), !noalias !1088
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !1088
  br label %bb.s

bb.v:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !1088
  %.sroa.013.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.013.0.i = load ptr, ptr %.sroa.013.0.in.i, align 8, !alias.scope !1078, !noalias !1083, !nonnull !7, !noundef !7
  %.sroa.3.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.3.0.i = load i64, ptr %.sroa.3.0.in.i, align 8, !alias.scope !1078, !noalias !1083, !noundef !7
  call fastcc void @_RNvCsfPYenFzdTHO_5uu_wc16files0_iter_file(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %i.at, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.013.0.i, i64 noundef %.sroa.3.0.i) #28, !noalias !1088
  %i.gt = load i64, ptr %i.at, align 8, !range !523, !noalias !1088, !noundef !7 ; 2 uses
  %i.gu = icmp eq i64 %i.gt, -2
  %i.gv = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.gw = load ptr, ptr %i.gv, align 8, !noalias !1088 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.gy = load ptr, ptr %i.gx, align 8, !noalias !1088 ; 2 uses
  br i1 %i.gu, label %bb.hf, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.sroa.646.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.461.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.646.0..sroa_idx.i, i64 56, i1 false), !noalias !1088
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !1088
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !1094
  %i.gz = call noundef align 8 dereferenceable_or_null(80) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 80, i64 noundef 8) #28, !noalias !1094 ; 6 uses
  %i.ha = icmp eq ptr %i.gz, null
  br i1 %i.ha, label %bb.x, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit59.i, !prof !185

bb.x:                                             ; preds = %bb.w
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 80) #30, !noalias !1094
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit59.i: ; preds = %bb.w
  store i64 %i.gt, ptr %i.gz, align 8, !noalias !1088
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  store ptr %i.gw, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !1088
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  store ptr %i.gy, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !1088
  %.sroa.461.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gz, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.461.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.461.i, i64 56, i1 false), !noalias !1088
  br label %bb.s

bb.y:                                             ; preds = %bb.s
  %i.hb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.hc = load i8, ptr %i.hb, align 8, !range !310, !alias.scope !1081, !noalias !1090, !noundef !7
  br label %bb.hg

bb.z:                                             ; preds = %bb.s
  %.sroa.554.0.in.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.554.0.i = load i64, ptr %.sroa.554.0.in.i, align 8, !alias.scope !1081, !noalias !1090, !noundef !7
  %.sroa.053.0.in.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.053.0.i = load ptr, ptr %.sroa.053.0.in.i, align 8, !alias.scope !1081, !noalias !1090, !nonnull !7, !noundef !7
  %i.hd = ptrtoint ptr %.sroa.053.0.i to i64      ; 2 uses
  %.sroa.451.0.extract.trunc.i = trunc i64 %i.hd to i8
  %.sroa.451.1.extract.shift.i = and i64 %i.hd, -256
  br label %bb.hg

bb.aa:                                            ; preds = %_RNvCsfPYenFzdTHO_5uu_wc20compute_number_width.exit
  %i.he = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCsh036I4OHgIr_6uucore8features8hardwareNtB5_10SimdPolicy6detect() #28 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !1097
  call void @_RNvXs2_NtNtCsh036I4OHgIr_6uucore8features8hardwareNtB5_10SimdPolicyNtB5_19HasHardwareFeatures13iter_features(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(none) dereferenceable(160) %i.ar, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.he) #28, !noalias !1101
  call void @llvm.experimental.noalias.scope.decl(metadata !1102)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !1105
  br label %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6copied13copy_try_foldNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureuINtNtNtBa_3ops12control_flow11ControlFlowB13_ENCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB13_QNCNvCsfPYenFzdTHO_5uu_wc16wc_simd_features0E0E0B3N_.exit.i.i.i.i.i.i

_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6copied13copy_try_foldNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureuINtNtNtBa_3ops12control_flow11ControlFlowB13_ENCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB13_QNCNvCsfPYenFzdTHO_5uu_wc16wc_simd_features0E0E0B3N_.exit.i.i.i.i.i.i: ; preds = %bb.ab, %bb.aa
  %i.hf = call fastcc noundef ptr @_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.ar) #28, !noalias !1107 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.hf, null
  br i1 %.not.i.i.i.i.i.i, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filter6FilterINtNtB2B_6copied6CopiedINtNtNtNtB6_11collections5btree3set10DifferenceB11_EENCNvCsfPYenFzdTHO_5uu_wc16wc_simd_features0EE9from_iterB4I_.exit.i, label %bb.ab

bb.ab:                                            ; preds = %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6copied13copy_try_foldNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureuINtNtNtBa_3ops12control_flow11ControlFlowB13_ENCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB13_QNCNvCsfPYenFzdTHO_5uu_wc16wc_simd_features0E0E0B3N_.exit.i.i.i.i.i.i
  %.val.i.i.i.i.i.i = load i8, ptr %i.hf, align 1, !range !439, !noalias !1108, !noundef !7 ; 2 uses
  switch i8 %.val.i.i.i.i.i.i, label %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6copied13copy_try_foldNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureuINtNtNtBa_3ops12control_flow11ControlFlowB13_ENCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB13_QNCNvCsfPYenFzdTHO_5uu_wc16wc_simd_features0E0E0B3N_.exit.i.i.i.i.i.i [
    i8 1, label %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filterINtB5_6FilterINtNtB7_6copied6CopiedINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENCNvCsfPYenFzdTHO_5uu_wc16wc_simd_features0ENtNtNtB9_6traits8iterator8Iterator4nextB3w_.exit.i.i
    i8 4, label %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filterINtB5_6FilterINtNtB7_6copied6CopiedINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENCNvCsfPYenFzdTHO_5uu_wc16wc_simd_features0ENtNtNtB9_6traits8iterator8Iterator4nextB3w_.exit.i.i
    i8 5, label %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filterINtB5_6FilterINtNtB7_6copied6CopiedINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENCNvCsfPYenFzdTHO_5uu_wc16wc_simd_features0ENtNtNtB9_6traits8iterator8Iterator4nextB3w_.exit.i.i
  ]

_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filterINtB5_6FilterINtNtB7_6copied6CopiedINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENCNvCsfPYenFzdTHO_5uu_wc16wc_simd_features0ENtNtNtB9_6traits8iterator8Iterator4nextB3w_.exit.i.i: ; preds = %bb.ab, %bb.ab, %bb.ab
  call void @llvm.experimental.noalias.scope.decl(metadata !1117)
  call void @llvm.experimental.noalias.scope.decl(metadata !1120)
  call void @llvm.experimental.noalias.scope.decl(metadata !1123)
  %i.hg = load i64, ptr %i.ar, align 8, !range !1126, !alias.scope !1127, !noalias !1128, !noundef !7 ; 2 uses
  %i.hh = icmp samesign ult i64 %i.hg, 2
  br i1 %i.hh, label %bb.ac, label %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filterINtB5_6FilterINtNtB7_6copied6CopiedINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENCNvCsfPYenFzdTHO_5uu_wc16wc_simd_features0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3w_.exit.i.i

bb.ac:                                            ; preds = %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filterINtB5_6FilterINtNtB7_6copied6CopiedINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENCNvCsfPYenFzdTHO_5uu_wc16wc_simd_features0ENtNtNtB9_6traits8iterator8Iterator4nextB3w_.exit.i.i
  %i.hi = getelementptr inbounds nuw i8, ptr %i.ar, i64 144
  %i.hj = load i64, ptr %i.hi, align 8, !range !407, !alias.scope !1132, !noalias !1135, !noundef !7
  %i.hk = trunc nuw i64 %i.hj to i1
  br i1 %i.hk, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.hl = getelementptr inbounds nuw i8, ptr %i.ar, i64 152
  %i.hm = load ptr, ptr %i.hl, align 8, !alias.scope !1132, !noalias !1135, !noundef !7
  %.not.i.i.i.i6.i.i = icmp eq ptr %i.hm, null
  br i1 %.not.i.i.i.i6.i.i, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB4_8PeekableINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENtNtNtB8_6traits8iterator8Iterator9size_hintCsfPYenFzdTHO_5uu_wc.exit.i.i.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.sroa.0.0.i.i.i.i4.i.i = phi i64 [ 0, %bb.ac ], [ 1, %bb.ad ] ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.ar, i64 136
  %.val.i.i.i.i5.i.i = load i64, ptr %i.hn, align 8, !alias.scope !1132, !noalias !1135, !noundef !7 ; 3 uses
  %i.ho = call i64 @llvm.uadd.sat.i64(i64 %.val.i.i.i.i5.i.i, i64 %.sroa.0.0.i.i.i.i4.i.i)
  %i.hp = add i64 %.val.i.i.i.i5.i.i, %.sroa.0.0.i.i.i.i4.i.i ; 2 uses
  %i.hq = icmp uge i64 %i.hp, %.val.i.i.i.i5.i.i
  %.7.i.i.i.i.i.i = zext i1 %i.hq to i64
  br label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB4_8PeekableINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENtNtNtB8_6traits8iterator8Iterator9size_hintCsfPYenFzdTHO_5uu_wc.exit.i.i.i.i.i

_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB4_8PeekableINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENtNtNtB8_6traits8iterator8Iterator9size_hintCsfPYenFzdTHO_5uu_wc.exit.i.i.i.i.i: ; preds = %bb.ae, %bb.ad
  %.sink10.i.i.i.i.i.i = phi i64 [ %i.ho, %bb.ae ], [ 0, %bb.ad ] ; 2 uses
  %.7.sink.i.i.i.i.i.i = phi i64 [ %.7.i.i.i.i.i.i, %bb.ae ], [ 1, %bb.ad ] ; 2 uses
  %.sink.i.i.i.i.i.i = phi i64 [ %i.hp, %bb.ae ], [ 0, %bb.ad ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !1137
  store i64 %.7.sink.i.i.i.i.i.i, ptr %i.am, align 8, !noalias !1137
  %i.hr = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i64 %.sink.i.i.i.i.i.i, ptr %i.hr, align 8, !noalias !1137
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !1137
  %i.hs = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i64 %.sink10.i.i.i.i.i.i, ptr %i.hs, align 8, !noalias !1137
  store i64 1, ptr %i.al, align 8, !noalias !1137
  %i.ht = trunc nuw i64 %.7.sink.i.i.i.i.i.i to i1
  %i.hu = icmp eq i64 %.sink.i.i.i.i.i.i, %.sink10.i.i.i.i.i.i
  %or.cond.i.i.i.i.i = and i1 %i.hu, %i.ht
  br i1 %or.cond.i.i.i.i.i, label %bb.ag, label %bb.af, !prof !541

bb.af:                                            ; preds = %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB4_8PeekableINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENtNtNtB8_6traits8iterator8Iterator9size_hintCsfPYenFzdTHO_5uu_wc.exit.i.i.i.i.i
  call void @_RINvNtCs6JMX4GRUq9U_4core9panicking13assert_failedINtNtB4_6option6OptionjEBM_EB4_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.am, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.al, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @115) #29, !noalias !1138
  unreachable

bb.ag:                                            ; preds = %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB4_8PeekableINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENtNtNtB8_6traits8iterator8Iterator9size_hintCsfPYenFzdTHO_5uu_wc.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !1137
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !1137
  br label %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filterINtB5_6FilterINtNtB7_6copied6CopiedINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENCNvCsfPYenFzdTHO_5uu_wc16wc_simd_features0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3w_.exit.i.i

_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filterINtB5_6FilterINtNtB7_6copied6CopiedINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENCNvCsfPYenFzdTHO_5uu_wc16wc_simd_features0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3w_.exit.i.i: ; preds = %bb.ag, %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filterINtB5_6FilterINtNtB7_6copied6CopiedINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENCNvCsfPYenFzdTHO_5uu_wc16wc_simd_features0ENtNtNtB9_6traits8iterator8Iterator4nextB3w_.exit.i.i
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !1139
  %i.hv = call noundef dereferenceable_or_null(8) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 8, i64 noundef range(i64 1, 9) 1) #28, !noalias !1139 ; 4 uses
  %i.hw = icmp eq ptr %i.hv, null
  br i1 %i.hw, label %bb.ah, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfPYenFzdTHO_5uu_wc.exit.i.i

bb.ah:                                            ; preds = %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filterINtB5_6FilterINtNtB7_6copied6CopiedINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENCNvCsfPYenFzdTHO_5uu_wc16wc_simd_features0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3w_.exit.i.i
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 8) #30, !noalias !1142
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfPYenFzdTHO_5uu_wc.exit.i.i: ; preds = %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filterINtB5_6FilterINtNtB7_6copied6CopiedINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENCNvCsfPYenFzdTHO_5uu_wc16wc_simd_features0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3w_.exit.i.i
  store i8 %.val.i.i.i.i.i.i, ptr %i.hv, align 1, !noalias !1142
  store i64 8, ptr %i.an, align 8, !noalias !1105
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 3 uses
  store ptr %i.hv, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !1105
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !1105
  %.sroa.48.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.sroa.48.0.copyload.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i.i, align 8, !alias.scope !1102, !noalias !1143
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %.sroa.11.0.copyload.i.i = load i64, ptr %.sroa.11.0..sroa_idx.i.i, align 8, !alias.scope !1102, !noalias !1143
  %.sroa.20.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %.sroa.20.0.copyload.i.i = load i64, ptr %.sroa.20.0..sroa_idx.i.i, align 8, !alias.scope !1102, !noalias !1143
  %.sroa.31.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %.sroa.31.0.copyload.i.i = load i64, ptr %.sroa.31.0..sroa_idx.i.i, align 8, !alias.scope !1102, !noalias !1143
  %.sroa.3212.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 64
  %.sroa.3212.0.copyload.i.i = load i64, ptr %.sroa.3212.0..sroa_idx.i.i, align 8, !alias.scope !1102, !noalias !1143
  %.sroa.33.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 72
  %.sroa.33.0.copyload.i.i = load i64, ptr %.sroa.33.0..sroa_idx.i.i, align 8, !alias.scope !1102, !noalias !1143
  %.sroa.34.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 80
  %.sroa.34.0.copyload.i.i = load ptr, ptr %.sroa.34.0..sroa_idx.i.i, align 8, !alias.scope !1102, !noalias !1143
  %.sroa.35.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 88
  %.sroa.35.0.copyload.i.i = load i64, ptr %.sroa.35.0..sroa_idx.i.i, align 8, !alias.scope !1102, !noalias !1143
  %.sroa.38.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 96
  %.sroa.38.0.copyload.i.i = load i64, ptr %.sroa.38.0..sroa_idx.i.i, align 8, !alias.scope !1102, !noalias !1143
  %.sroa.3913.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 136
  %.sroa.3913.0.copyload.i.i = load i64, ptr %.sroa.3913.0..sroa_idx.i.i, align 8, !alias.scope !1102, !noalias !1143
  %.sroa.40.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 144
  %.sroa.40.0.copyload.i.i = load i64, ptr %.sroa.40.0..sroa_idx.i.i, align 8, !alias.scope !1102, !noalias !1143
  %.sroa.41.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 152
  %.sroa.41.0.copyload.i.i = load ptr, ptr %.sroa.41.0..sroa_idx.i.i, align 8, !alias.scope !1102, !noalias !1143
  call void @llvm.experimental.noalias.scope.decl(metadata !1144)
  call void @llvm.experimental.noalias.scope.decl(metadata !1147)
  %i.hx = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.hy = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  br label %bb.ai

bb.ai:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureE7reserveCsfPYenFzdTHO_5uu_wc.exit.i.i.i.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfPYenFzdTHO_5uu_wc.exit.i.i
  %i.hz = phi ptr [ %i.hv, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfPYenFzdTHO_5uu_wc.exit.i.i ], [ %i.uo, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureE7reserveCsfPYenFzdTHO_5uu_wc.exit.i.i.i.i ]
  %.sroa.6.0.copyload11.i = phi i64 [ 1, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfPYenFzdTHO_5uu_wc.exit.i.i ], [ %i.uq, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureE7reserveCsfPYenFzdTHO_5uu_wc.exit.i.i.i.i ] ; 6 uses
  %.sroa.35.0.i.i = phi i64 [ %.sroa.35.0.copyload.i.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfPYenFzdTHO_5uu_wc.exit.i.i ], [ %.sroa.35.3.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureE7reserveCsfPYenFzdTHO_5uu_wc.exit.i.i.i.i ]
  %.sroa.20.0.i.i = phi i64 [ %.sroa.20.0.copyload.i.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfPYenFzdTHO_5uu_wc.exit.i.i ], [ %.sroa.20.3.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureE7reserveCsfPYenFzdTHO_5uu_wc.exit.i.i.i.i ]
  %.sroa.11.0.i.i = phi i64 [ %.sroa.11.0.copyload.i.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfPYenFzdTHO_5uu_wc.exit.i.i ], [ %.sroa.11.3.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureE7reserveCsfPYenFzdTHO_5uu_wc.exit.i.i.i.i ]
  %.sroa.48.0.i.i = phi i64 [ %.sroa.48.0.copyload.i.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfPYenFzdTHO_5uu_wc.exit.i.i ], [ %.sroa.48.4.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureE7reserveCsfPYenFzdTHO_5uu_wc.exit.i.i.i.i ]
  %.sroa.59.0..sroa_idx.i.phi.trans.insert.i88.promoted690752.i.i.i.i = phi i64 [ %.sroa.38.0.copyload.i.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfPYenFzdTHO_5uu_wc.exit.i.i ], [ %.sroa.59.0..sroa_idx.i.phi.trans.insert.i88.promoted696752.i.i.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureE7reserveCsfPYenFzdTHO_5uu_wc.exit.i.i.i.i ] ; 2 uses
  %.sroa.59.0..sroa_idx.i.phi.trans.insert.i125.promoted745.i.i.i.i = phi i64 [ %.sroa.31.0.copyload.i.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfPYenFzdTHO_5uu_wc.exit.i.i ], [ %.sroa.59.0..sroa_idx.i.phi.trans.insert.i125.promoted748.i.i.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureE7reserveCsfPYenFzdTHO_5uu_wc.exit.i.i.i.i ] ; 2 uses
  %.promoted363740.i.i.i.i = phi i64 [ %.sroa.3913.0.copyload.i.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfPYenFzdTHO_5uu_wc.exit.i.i ], [ %.promoted366740.i.i.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureE7reserveCsfPYenFzdTHO_5uu_wc.exit.i.i.i.i ] ; 2 uses
  %.promoted733.i.i.i.i = phi ptr [ %.sroa.41.0.copyload.i.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfPYenFzdTHO_5uu_wc.exit.i.i ], [ %.promoted734.i.i.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureE7reserveCsfPYenFzdTHO_5uu_wc.exit.i.i.i.i ] ; 2 uses
  %i.ia = phi i64 [ %.sroa.40.0.copyload.i.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfPYenFzdTHO_5uu_wc.exit.i.i ], [ %8, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureE7reserveCsfPYenFzdTHO_5uu_wc.exit.i.i.i.i ] ; 3 uses
  %.promoted345725.i.i.i.i = phi i64 [ %.sroa.3212.0.copyload.i.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfPYenFzdTHO_5uu_wc.exit.i.i ], [ %.promoted348728.i.i.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureE7reserveCsfPYenFzdTHO_5uu_wc.exit.i.i.i.i ] ; 2 uses
  %.sroa.07.0.i.i.i110720.i.i.i.i.a = phi ptr [ %.sroa.34.0.copyload.i.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfPYenFzdTHO_5uu_wc.exit.i.i ], [ %.sroa.07.0.i.i.i110720.i.i.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureE7reserveCsfPYenFzdTHO_5uu_wc.exit.i.i.i.i ] ; 2 uses
  %i.ib = phi i64 [ %.sroa.33.0.copyload.i.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfPYenFzdTHO_5uu_wc.exit.i.i ], [ %9, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureE7reserveCsfPYenFzdTHO_5uu_wc.exit.i.i.i.i ] ; 2 uses
  %.promoted325711.i.i.i.i = phi i64 [ %i.hg, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfPYenFzdTHO_5uu_wc.exit.i.i ], [ %.promoted328713.i.i.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureE7reserveCsfPYenFzdTHO_5uu_wc.exit.i.i.i.i ] ; 3 uses
  br label %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6copied13copy_try_foldNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureuINtNtNtBa_3ops12control_flow11ControlFlowB13_ENCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB13_QNCNvCsfPYenFzdTHO_5uu_wc16wc_simd_features0E0E0B3N_.exit.i.i.i.i.i.i.i.i

_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6copied13copy_try_foldNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureuINtNtNtBa_3ops12control_flow11ControlFlowB13_ENCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB13_QNCNvCsfPYenFzdTHO_5uu_wc16wc_simd_features0E0E0B3N_.exit.i.i.i.i.i.i.i.i: ; preds = %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250.i.i.i.i, %bb.ai
  %.sroa.35.1.i.i = phi i64 [ %.sroa.35.0.i.i, %bb.ai ], [ %.sroa.35.3.i.i, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250.i.i.i.i ] ; 4 uses
  %.sroa.20.1.i.i = phi i64 [ %.sroa.20.0.i.i, %bb.ai ], [ %.sroa.20.3.i.i, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250.i.i.i.i ] ; 10 uses
  %.sroa.11.1.i.i = phi i64 [ %.sroa.11.0.i.i, %bb.ai ], [ %.sroa.11.3.i.i, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250.i.i.i.i ] ; 6 uses
  %.sroa.48.1.i.i = phi i64 [ %.sroa.48.0.i.i, %bb.ai ], [ %.sroa.48.4.i.i, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250.i.i.i.i ] ; 4 uses
  %.sroa.59.0..sroa_idx.i.phi.trans.insert.i88.promoted690751.i.i.i.i = phi i64 [ %.sroa.59.0..sroa_idx.i.phi.trans.insert.i88.promoted690752.i.i.i.i, %bb.ai ], [ %.sroa.59.0..sroa_idx.i.phi.trans.insert.i88.promoted696752.i.i.i.i, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250.i.i.i.i ] ; 4 uses
  %.sroa.59.0..sroa_idx.i.phi.trans.insert.i125.promoted744.i.i.i.i = phi i64 [ %.sroa.59.0..sroa_idx.i.phi.trans.insert.i125.promoted745.i.i.i.i, %bb.ai ], [ %.sroa.59.0..sroa_idx.i.phi.trans.insert.i125.promoted748.i.i.i.i, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250.i.i.i.i ] ; 2 uses
  %.promoted363739.i.i.i.i = phi i64 [ %.promoted363740.i.i.i.i, %bb.ai ], [ %.promoted366740.i.i.i.i, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250.i.i.i.i ] ; 4 uses
  %.promoted732.i.i.i.i = phi ptr [ %.promoted733.i.i.i.i, %bb.ai ], [ %.promoted734.i.i.i.i, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250.i.i.i.i ] ; 4 uses
  %i.ic = phi i64 [ %i.ia, %bb.ai ], [ %8, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250.i.i.i.i ] ; 4 uses
  %.promoted345724.i.i.i.i = phi i64 [ %.promoted345725.i.i.i.i, %bb.ai ], [ %.promoted348728.i.i.i.i, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250.i.i.i.i ] ; 3 uses
  %.sroa.07.0.i.i.i110719.i.i.i.i = phi ptr [ %.sroa.07.0.i.i.i110720.i.i.i.i.a, %bb.ai ], [ %.sroa.07.0.i.i.i110720.i.i.i.i, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250.i.i.i.i ] ; 4 uses
  %i.id = phi i64 [ %i.ib, %bb.ai ], [ %9, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250.i.i.i.i ]
  %.promoted325710.i.i.i.i = phi i64 [ %.promoted325711.i.i.i.i, %bb.ai ], [ %.promoted328713.i.i.i.i, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250.i.i.i.i ] ; 4 uses
  %.sroa.59.0..sroa_idx.i.phi.trans.insert.i88.promoted696.i.i.i.i = phi i64 [ %.sroa.59.0..sroa_idx.i.phi.trans.insert.i88.promoted690752.i.i.i.i, %bb.ai ], [ %.sroa.59.0..sroa_idx.i.phi.trans.insert.i88.promoted697.i.i.i.i, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250.i.i.i.i ] ; 5 uses
  %.sroa.78.0.i.i.i689.i.i.i.i = phi i64 [ %.sroa.59.0..sroa_idx.i.phi.trans.insert.i125.promoted745.i.i.i.i, %bb.ai ], [ %.sroa.78.0.i.i.i693.i.i.i.i, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250.i.i.i.i ] ; 14 uses
  %i.ie = phi i64 [ %i.ia, %bb.ai ], [ %10, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250.i.i.i.i ] ; 4 uses
  %i.if = phi i64 [ %.promoted325711.i.i.i.i, %bb.ai ], [ %11, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250.i.i.i.i ] ; 4 uses
  %.promoted320371.i.i.i.i = phi i64 [ %.promoted363740.i.i.i.i, %bb.ai ], [ %.val.i.i.i.i4.i.i.i.i, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250.i.i.i.i ] ; 5 uses
  %.promoted315362.i.i.i.i = phi ptr [ %.promoted733.i.i.i.i, %bb.ai ], [ %12, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250.i.i.i.i ] ; 5 uses
  %.promoted356.i.i.i.i = phi i64 [ %i.ia, %bb.ai ], [ %.promoted354.i.i.i.i, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250.i.i.i.i ] ; 4 uses
  %.promoted318349.i.i.i.i = phi i64 [ %.promoted345725.i.i.i.i, %bb.ai ], [ %.promoted321349.i.i.i.i, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250.i.i.i.i ] ; 5 uses
  %i.ig = phi ptr [ %.sroa.07.0.i.i.i110720.i.i.i.i.a, %bb.ai ], [ %13, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250.i.i.i.i ] ; 7 uses
  %i.ih = phi i64 [ %i.ib, %bb.ai ], [ %14, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250.i.i.i.i ] ; 6 uses
  %.promoted319330.i.i.i.i = phi i64 [ %.promoted325711.i.i.i.i, %bb.ai ], [ %.promoted322334.i.i.i.i, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250.i.i.i.i ] ; 5 uses
  %i.ii = call i64 @llvm.usub.sat.i64(i64 %.promoted319330.i.i.i.i, i64 1)
  switch i64 %i.ii, label %default.unreachable1396 [
    i64 0, label %bb.ar
    i64 1, label %.preheader.i.i.i.i.i
    i64 2, label %bb.ba
  ]

.preheader.i.i.i.i.i:                             ; preds = %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6copied13copy_try_foldNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureuINtNtNtBa_3ops12control_flow11ControlFlowB13_ENCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB13_QNCNvCsfPYenFzdTHO_5uu_wc16wc_simd_features0E0E0B3N_.exit.i.i.i.i.i.i.i.i
  %i.ij = icmp eq i64 %i.ih, 0
  br i1 %i.ij, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filter6FilterINtNtB2i_6copied6CopiedINtNtNtNtB6_11collections5btree3set10DifferenceBR_EENCNvCsfPYenFzdTHO_5uu_wc16wc_simd_features0EE11spec_extendB4o_.exit.i.i, label %bb.aj

bb.aj:                                            ; preds = %.preheader.i.i.i.i.i
  %i.ik = add i64 %i.ih, -1                       ; 3 uses
  %i.il = trunc nuw i64 %.sroa.48.1.i.i to i1
  br i1 %i.il, label %bb.ak, label %.critedge.i195.i.i.i.i

bb.ak:                                            ; preds = %bb.aj
  %i.im = inttoptr i64 %.sroa.11.1.i.i to ptr
  %.not.i.i196.i.i.i.i = icmp eq i64 %.sroa.11.1.i.i, 0
  br i1 %.not.i.i196.i.i.i.i, label %bb.al, label %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTE10init_frontCsfPYenFzdTHO_5uu_wc.exit.i201.i.i.i.i

bb.al:                                            ; preds = %bb.ak
  %i.in = inttoptr i64 %.sroa.20.1.i.i to ptr     ; 3 uses
  %i.io = icmp eq i64 %.sroa.78.0.i.i.i689.i.i.i.i, 0
  br i1 %i.io, label %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTE10init_frontCsfPYenFzdTHO_5uu_wc.exit.i201.i.i.i.i, label %.lr.ph.i.i225.i.i.i.i.preheader

.lr.ph.i.i225.i.i.i.i.preheader:                  ; preds = %bb.al
  %xtraiter2224.a = and i64 %.sroa.78.0.i.i.i689.i.i.i.i, 7 ; 2 uses
  %lcmp.mod2225.not.a = icmp eq i64 %xtraiter2224.a, 0
  br i1 %lcmp.mod2225.not.a, label %.lr.ph.i.i225.i.i.i.i.prol.loopexit, label %.lr.ph.i.i225.i.i.i.i.prol

.lr.ph.i.i225.i.i.i.i.prol:                       ; preds = %.lr.ph.i.i225.i.i.i.i.preheader, %.lr.ph.i.i225.i.i.i.i.prol
  %.sroa.013.017.i.i226.i.i.i.i.prol = phi ptr [ %.sroa.013.0.i.i228.i.i.i.i.prol, %.lr.ph.i.i225.i.i.i.i.prol ], [ %i.in, %.lr.ph.i.i225.i.i.i.i.preheader ]
  %.sroa.011.016.i.i227.i.i.i.i.prol = phi i64 [ %i.iq, %.lr.ph.i.i225.i.i.i.i.prol ], [ %.sroa.78.0.i.i.i689.i.i.i.i, %.lr.ph.i.i225.i.i.i.i.preheader ]
  %prol.iter2226.a = phi i64 [ %prol.iter2226.next.a, %.lr.ph.i.i225.i.i.i.i.prol ], [ 0, %.lr.ph.i.i225.i.i.i.i.preheader ]
  %i.ip = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i226.i.i.i.i.prol, i64 24
  %i.iq = add i64 %.sroa.011.016.i.i227.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.013.0.i.i228.i.i.i.i.prol = load ptr, ptr %i.ip, align 8, !noalias !1150, !nonnull !7, !noundef !7 ; 3 uses
  %prol.iter2226.next.a = add i64 %prol.iter2226.a, 1 ; 2 uses
  %prol.iter2226.cmp.not.a = icmp eq i64 %prol.iter2226.next.a, %xtraiter2224.a
  br i1 %prol.iter2226.cmp.not.a, label %.lr.ph.i.i225.i.i.i.i.prol.loopexit, label %.lr.ph.i.i225.i.i.i.i.prol, !llvm.loop !1157

.lr.ph.i.i225.i.i.i.i.prol.loopexit:              ; preds = %.lr.ph.i.i225.i.i.i.i.prol, %.lr.ph.i.i225.i.i.i.i.preheader
  %.sroa.013.0.i.i228.i.i.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i225.i.i.i.i.preheader ], [ %.sroa.013.0.i.i228.i.i.i.i.prol, %.lr.ph.i.i225.i.i.i.i.prol ]
  %.sroa.013.017.i.i226.i.i.i.i.unr = phi ptr [ %i.in, %.lr.ph.i.i225.i.i.i.i.preheader ], [ %.sroa.013.0.i.i228.i.i.i.i.prol, %.lr.ph.i.i225.i.i.i.i.prol ]
  %.sroa.011.016.i.i227.i.i.i.i.unr = phi i64 [ %.sroa.78.0.i.i.i689.i.i.i.i, %.lr.ph.i.i225.i.i.i.i.preheader ], [ %i.iq, %.lr.ph.i.i225.i.i.i.i.prol ]
  %i.ir = icmp ult i64 %.sroa.78.0.i.i.i689.i.i.i.i, 8
  br i1 %i.ir, label %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTE10init_frontCsfPYenFzdTHO_5uu_wc.exit.i201.i.i.i.i, label %.lr.ph.i.i225.i.i.i.i

.lr.ph.i.i225.i.i.i.i:                            ; preds = %.lr.ph.i.i225.i.i.i.i.prol.loopexit, %.lr.ph.i.i225.i.i.i.i
  %.sroa.013.017.i.i226.i.i.i.i = phi ptr [ %.sroa.013.0.i.i228.i.i.i.i.7, %.lr.ph.i.i225.i.i.i.i ], [ %.sroa.013.017.i.i226.i.i.i.i.unr, %.lr.ph.i.i225.i.i.i.i.prol.loopexit ]
  %.sroa.011.016.i.i227.i.i.i.i = phi i64 [ %i.ja, %.lr.ph.i.i225.i.i.i.i ], [ %.sroa.011.016.i.i227.i.i.i.i.unr, %.lr.ph.i.i225.i.i.i.i.prol.loopexit ]
  %i.is = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i226.i.i.i.i, i64 24
  %.sroa.013.0.i.i228.i.i.i.i = load ptr, ptr %i.is, align 8, !noalias !1150, !nonnull !7, !noundef !7
  %i.it = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i228.i.i.i.i, i64 24
  %.sroa.013.0.i.i228.i.i.i.i.1 = load ptr, ptr %i.it, align 8, !noalias !1150, !nonnull !7, !noundef !7
  %i.iu = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i228.i.i.i.i.1, i64 24
  %.sroa.013.0.i.i228.i.i.i.i.2 = load ptr, ptr %i.iu, align 8, !noalias !1150, !nonnull !7, !noundef !7
  %i.iv = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i228.i.i.i.i.2, i64 24
  %.sroa.013.0.i.i228.i.i.i.i.3 = load ptr, ptr %i.iv, align 8, !noalias !1150, !nonnull !7, !noundef !7
  %i.iw = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i228.i.i.i.i.3, i64 24
  %.sroa.013.0.i.i228.i.i.i.i.4 = load ptr, ptr %i.iw, align 8, !noalias !1150, !nonnull !7, !noundef !7
  %i.ix = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i228.i.i.i.i.4, i64 24
  %.sroa.013.0.i.i228.i.i.i.i.5 = load ptr, ptr %i.ix, align 8, !noalias !1150, !nonnull !7, !noundef !7
  %i.iy = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i228.i.i.i.i.5, i64 24
  %.sroa.013.0.i.i228.i.i.i.i.6 = load ptr, ptr %i.iy, align 8, !noalias !1150, !nonnull !7, !noundef !7
  %i.iz = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i228.i.i.i.i.6, i64 24
  %i.ja = add i64 %.sroa.011.016.i.i227.i.i.i.i, -8 ; 2 uses
  %.sroa.013.0.i.i228.i.i.i.i.7 = load ptr, ptr %i.iz, align 8, !noalias !1150, !nonnull !7, !noundef !7 ; 2 uses
  %i.jb = icmp eq i64 %i.ja, 0
  br i1 %i.jb, label %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTE10init_frontCsfPYenFzdTHO_5uu_wc.exit.i201.i.i.i.i, label %.lr.ph.i.i225.i.i.i.i

_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTE10init_frontCsfPYenFzdTHO_5uu_wc.exit.i201.i.i.i.i: ; preds = %.lr.ph.i.i225.i.i.i.i.prol.loopexit, %.lr.ph.i.i225.i.i.i.i, %bb.al, %bb.ak
  %.sroa.59.0.copyload.i.i202.i.i.i.i = phi i64 [ %.sroa.78.0.i.i.i689.i.i.i.i, %bb.ak ], [ 0, %bb.al ], [ 0, %.lr.ph.i.i225.i.i.i.i ], [ 0, %.lr.ph.i.i225.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.48.0.copyload.i.i203.i.i.i.i = phi i64 [ %.sroa.20.1.i.i, %bb.ak ], [ 0, %bb.al ], [ 0, %.lr.ph.i.i225.i.i.i.i ], [ 0, %.lr.ph.i.i225.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.07.0.copyload.i.i204.i.i.i.i = phi ptr [ %i.im, %bb.ak ], [ %i.in, %bb.al ], [ %.sroa.013.0.i.i228.i.i.i.i.lcssa.unr, %.lr.ph.i.i225.i.i.i.i.prol.loopexit ], [ %.sroa.013.0.i.i228.i.i.i.i.7, %.lr.ph.i.i225.i.i.i.i ] ; 3 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload.i.i204.i.i.i.i, i64 10
  %i.jd = load i16, ptr %i.jc, align 2, !noalias !1159, !noundef !7
  %i.je = zext i16 %i.jd to i64
  %i.jf = icmp ult i64 %.sroa.59.0.copyload.i.i202.i.i.i.i, %i.je
  br i1 %i.jf, label %bb.ao, label %.lr.ph.i.i.i.i207.i.i.i.i

.lr.ph.i.i.i.i207.i.i.i.i:                        ; preds = %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTE10init_frontCsfPYenFzdTHO_5uu_wc.exit.i201.i.i.i.i, %bb.am
  %.sroa.0.022.i.i.i.i208.i.i.i.i = phi ptr [ %i.jg, %bb.am ], [ %.sroa.07.0.copyload.i.i204.i.i.i.i, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTE10init_frontCsfPYenFzdTHO_5uu_wc.exit.i201.i.i.i.i ] ; 2 uses
  %.sroa.5.021.i.i.i.i209.i.i.i.i = phi i64 [ %i.ji, %bb.am ], [ %.sroa.48.0.copyload.i.i203.i.i.i.i, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTE10init_frontCsfPYenFzdTHO_5uu_wc.exit.i201.i.i.i.i ]
  %i.jg = load ptr, ptr %.sroa.0.022.i.i.i.i208.i.i.i.i, align 8, !noalias !1168, !noundef !7 ; 4 uses
  %.not.i.i.i.i.i210.i.i.i.i = icmp eq ptr %i.jg, null
  br i1 %.not.i.i.i.i.i210.i.i.i.i, label %bb.an, label %bb.am

._crit_edge.loopexit.i.i.i.i211.i.i.i.i:          ; preds = %bb.am
  %i.jh = zext i16 %i.jk to i64
  br label %bb.ao

bb.am:                                            ; preds = %.lr.ph.i.i.i.i207.i.i.i.i
  %i.ji = add i64 %.sroa.5.021.i.i.i.i209.i.i.i.i, 1 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i208.i.i.i.i, i64 8
  %i.jk = load i16, ptr %i.jj, align 8, !noalias !1168 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jg, i64 10
  %i.jm = load i16, ptr %i.jl, align 2, !noalias !1159, !noundef !7
  %i.jn = icmp ult i16 %i.jk, %i.jm
  br i1 %i.jn, label %._crit_edge.loopexit.i.i.i.i211.i.i.i.i, label %.lr.ph.i.i.i.i207.i.i.i.i

bb.an:                                            ; preds = %.lr.ph.i.i.i.i207.i.i.i.i
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #29, !noalias !1171
  unreachable

bb.ao:                                            ; preds = %._crit_edge.loopexit.i.i.i.i211.i.i.i.i, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTE10init_frontCsfPYenFzdTHO_5uu_wc.exit.i201.i.i.i.i
  %.sroa.10.0.ph.i.i.i212.i.i.i.i = phi i64 [ %i.jh, %._crit_edge.loopexit.i.i.i.i211.i.i.i.i ], [ %.sroa.59.0.copyload.i.i202.i.i.i.i, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTE10init_frontCsfPYenFzdTHO_5uu_wc.exit.i201.i.i.i.i ] ; 5 uses
  %.sroa.7.0.ph.i.i.i213.i.i.i.i = phi i64 [ %i.ji, %._crit_edge.loopexit.i.i.i.i211.i.i.i.i ], [ %.sroa.48.0.copyload.i.i203.i.i.i.i, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTE10init_frontCsfPYenFzdTHO_5uu_wc.exit.i201.i.i.i.i ] ; 5 uses
  %.sroa.06.0.ph.i.i.i214.i.i.i.i = phi ptr [ %i.jg, %._crit_edge.loopexit.i.i.i.i211.i.i.i.i ], [ %.sroa.07.0.copyload.i.i204.i.i.i.i, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTE10init_frontCsfPYenFzdTHO_5uu_wc.exit.i201.i.i.i.i ] ; 3 uses
  %i.jo = icmp eq i64 %.sroa.7.0.ph.i.i.i213.i.i.i.i, 0
  br i1 %i.jo, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.jp = add nuw nsw i64 %.sroa.10.0.ph.i.i.i212.i.i.i.i, 1
  br label %.lr.ph.i.i.i.i.i

bb.aq:                                            ; preds = %bb.ao
  %i.jq = icmp samesign ult i64 %.sroa.10.0.ph.i.i.i212.i.i.i.i, 11
  call void @llvm.assume(i1 %i.jq)
  %i.jr = getelementptr i8, ptr %.sroa.06.0.ph.i.i.i214.i.i.i.i, i64 32
  %i.js = getelementptr [8 x i8], ptr %i.jr, i64 %.sroa.10.0.ph.i.i.i212.i.i.i.i ; 2 uses
  %xtraiter2230 = and i64 %.sroa.7.0.ph.i.i.i213.i.i.i.i, 7 ; 2 uses
  %lcmp.mod2231.not = icmp eq i64 %xtraiter2230, 0
  br i1 %lcmp.mod2231.not, label %.prol.loopexit2228.a, label %.prol.preheader2227.a

.prol.preheader2227.a:                            ; preds = %bb.aq, %.prol.preheader2227.a
  %.sroa.017.0.in.i.i.i.i215.i.i.i.i.prol = phi ptr [ %i.jt, %.prol.preheader2227.a ], [ %i.js, %bb.aq ]
  %.sroa.019.0.in.i.i.i.i216.i.i.i.i.prol = phi i64 [ %.sroa.019.0.i.i.i.i217.i.i.i.i.prol, %.prol.preheader2227.a ], [ %.sroa.7.0.ph.i.i.i213.i.i.i.i, %bb.aq ]
  %prol.iter2232 = phi i64 [ %prol.iter2232.next, %.prol.preheader2227.a ], [ 0, %bb.aq ]
  %.sroa.019.0.i.i.i.i217.i.i.i.i.prol = add i64 %.sroa.019.0.in.i.i.i.i216.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.017.0.i.i.i.i218.i.i.i.i.prol = load ptr, ptr %.sroa.017.0.in.i.i.i.i215.i.i.i.i.prol, align 8, !noalias !1172, !nonnull !7, !noundef !7 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i218.i.i.i.i.prol, i64 24 ; 2 uses
  %prol.iter2232.next = add i64 %prol.iter2232, 1 ; 2 uses
  %prol.iter2232.cmp.not = icmp eq i64 %prol.iter2232.next, %xtraiter2230
  br i1 %prol.iter2232.cmp.not, label %.prol.loopexit2228.a, label %.prol.preheader2227.a, !llvm.loop !1176

.prol.loopexit2228.a:                             ; preds = %.prol.preheader2227.a, %bb.aq
  %.sroa.017.0.i.i.i.i218.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.aq ], [ %.sroa.017.0.i.i.i.i218.i.i.i.i.prol, %.prol.preheader2227.a ]
  %.sroa.017.0.in.i.i.i.i215.i.i.i.i.unr = phi ptr [ %i.js, %bb.aq ], [ %i.jt, %.prol.preheader2227.a ]
  %.sroa.019.0.in.i.i.i.i216.i.i.i.i.unr = phi i64 [ %.sroa.7.0.ph.i.i.i213.i.i.i.i, %bb.aq ], [ %.sroa.019.0.i.i.i.i217.i.i.i.i.prol, %.prol.preheader2227.a ]
  %i.ju = icmp ult i64 %.sroa.7.0.ph.i.i.i213.i.i.i.i, 8
  br i1 %i.ju, label %.lr.ph.i.i.i.i.i, label %.new2229.a

.new2229.a:                                       ; preds = %.prol.loopexit2228.a, %.new2229.a
  %.sroa.017.0.in.i.i.i.i215.i.i.i.i = phi ptr [ %i.kd, %.new2229.a ], [ %.sroa.017.0.in.i.i.i.i215.i.i.i.i.unr, %.prol.loopexit2228.a ]
  %.sroa.019.0.in.i.i.i.i216.i.i.i.i = phi i64 [ %.sroa.019.0.i.i.i.i217.i.i.i.i.7, %.new2229.a ], [ %.sroa.019.0.in.i.i.i.i216.i.i.i.i.unr, %.prol.loopexit2228.a ]
  %.sroa.017.0.i.i.i.i218.i.i.i.i = load ptr, ptr %.sroa.017.0.in.i.i.i.i215.i.i.i.i, align 8, !noalias !1172, !nonnull !7, !noundef !7
  %i.jv = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i218.i.i.i.i, i64 24
  %.sroa.017.0.i.i.i.i218.i.i.i.i.1 = load ptr, ptr %i.jv, align 8, !noalias !1172, !nonnull !7, !noundef !7
  %i.jw = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i218.i.i.i.i.1, i64 24
  %.sroa.017.0.i.i.i.i218.i.i.i.i.2 = load ptr, ptr %i.jw, align 8, !noalias !1172, !nonnull !7, !noundef !7
  %i.jx = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i218.i.i.i.i.2, i64 24
  %.sroa.017.0.i.i.i.i218.i.i.i.i.3 = load ptr, ptr %i.jx, align 8, !noalias !1172, !nonnull !7, !noundef !7
  %i.jy = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i218.i.i.i.i.3, i64 24
  %.sroa.017.0.i.i.i.i218.i.i.i.i.4 = load ptr, ptr %i.jy, align 8, !noalias !1172, !nonnull !7, !noundef !7
  %i.jz = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i218.i.i.i.i.4, i64 24
  %.sroa.017.0.i.i.i.i218.i.i.i.i.5 = load ptr, ptr %i.jz, align 8, !noalias !1172, !nonnull !7, !noundef !7
  %i.ka = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i218.i.i.i.i.5, i64 24
  %.sroa.017.0.i.i.i.i218.i.i.i.i.6 = load ptr, ptr %i.ka, align 8, !noalias !1172, !nonnull !7, !noundef !7
  %i.kb = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i218.i.i.i.i.6, i64 24
  %.sroa.019.0.i.i.i.i217.i.i.i.i.7 = add i64 %.sroa.019.0.in.i.i.i.i216.i.i.i.i, -8 ; 2 uses
  %.sroa.017.0.i.i.i.i218.i.i.i.i.7 = load ptr, ptr %i.kb, align 8, !noalias !1172, !nonnull !7, !noundef !7 ; 2 uses
  %i.kc = icmp eq i64 %.sroa.019.0.i.i.i.i217.i.i.i.i.7, 0
  %i.kd = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i218.i.i.i.i.7, i64 24
  br i1 %i.kc, label %.lr.ph.i.i.i.i.i, label %.new2229.a

.critedge.i195.i.i.i.i:                           ; preds = %bb.aj
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @156) #29, !noalias !1177
  unreachable

.lr.ph.i.i.i.i.i:                                 ; preds = %.prol.loopexit2228.a, %.new2229.a, %bb.ap
  %.sroa.78.0.i.i.i220.i.i.i.i = phi i64 [ %i.jp, %bb.ap ], [ 0, %.new2229.a ], [ 0, %.prol.loopexit2228.a ] ; 3 uses
  %.sroa.07.0.i.i.i221.i.i.i.i = phi ptr [ %.sroa.06.0.ph.i.i.i214.i.i.i.i, %bb.ap ], [ %.sroa.017.0.i.i.i.i218.i.i.i.i.lcssa.unr, %.prol.loopexit2228.a ], [ %.sroa.017.0.i.i.i.i218.i.i.i.i.7, %.new2229.a ] ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %.sroa.06.0.ph.i.i.i214.i.i.i.i, i64 12
  %i.kf = icmp samesign ult i64 %.sroa.10.0.ph.i.i.i212.i.i.i.i, 11
  call void @llvm.assume(i1 %i.kf)
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ke, i64 %.sroa.10.0.ph.i.i.i212.i.i.i.i
  %i.kh = ptrtoint ptr %.sroa.07.0.i.i.i221.i.i.i.i to i64 ; 2 uses
  %.val.i311.i.i.i.i = load ptr, ptr %i.ig, align 8, !noalias !1178, !noundef !7 ; 2 uses
  %.val47.i313.i.i.i.i = load i8, ptr %i.kg, align 1, !noalias !1181 ; 2 uses
  %.not.i.i312.i.i.i.i = icmp eq ptr %.val.i311.i.i.i.i, null
  br i1 %.not.i.i312.i.i.i.i, label %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.i
  %i.ki = getelementptr i8, ptr %i.ig, i64 8
  %.val46.i.i.i.i.i = load i64, ptr %i.ki, align 8, !noalias !1178
  br label %bb.bx

.loopexit.i.i.i.i.i:                              ; preds = %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRRNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureE6map_orNtNtB5_3cmp8OrderingNCNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB2k_10DifferenceBK_ENtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsfPYenFzdTHO_5uu_wc.exit.i.i.i.i.i
  unreachable

bb.ar:                                            ; preds = %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6copied13copy_try_foldNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureuINtNtNtBa_3ops12control_flow11ControlFlowB13_ENCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB13_QNCNvCsfPYenFzdTHO_5uu_wc16wc_simd_features0E0E0B3N_.exit.i.i.i.i.i.i.i.i
  %i.kj = icmp eq i64 %.promoted318349.i.i.i.i, 0
  br i1 %i.kj, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filter6FilterINtNtB2i_6copied6CopiedINtNtNtNtB6_11collections5btree3set10DifferenceBR_EENCNvCsfPYenFzdTHO_5uu_wc16wc_simd_features0EE11spec_extendB4o_.exit.i.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.kk = trunc nuw i64 %.promoted319330.i.i.i.i to i1
  br i1 %i.kk, label %bb.at, label %.critedge.i158.i.i.i.i

bb.at:                                            ; preds = %bb.as
  %i.kl = inttoptr i64 %.sroa.48.1.i.i to ptr
  %.not.i.i159.i.i.i.i = icmp eq i64 %.sroa.48.1.i.i, 0
  br i1 %.not.i.i159.i.i.i.i, label %bb.au, label %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTE10init_frontCsfPYenFzdTHO_5uu_wc.exit.i164.i.i.i.i

bb.au:                                            ; preds = %bb.at
  %i.km = inttoptr i64 %.sroa.11.1.i.i to ptr     ; 3 uses
  %i.kn = icmp eq i64 %.sroa.20.1.i.i, 0
  br i1 %i.kn, label %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTE10init_frontCsfPYenFzdTHO_5uu_wc.exit.i164.i.i.i.i, label %.lr.ph.i.i188.i.i.i.i.preheader

.lr.ph.i.i188.i.i.i.i.preheader:                  ; preds = %bb.au
  %xtraiter2240.a = and i64 %.sroa.20.1.i.i, 7    ; 2 uses
  %lcmp.mod2241.not.a = icmp eq i64 %xtraiter2240.a, 0
  br i1 %lcmp.mod2241.not.a, label %.lr.ph.i.i188.i.i.i.i.prol.loopexit, label %.lr.ph.i.i188.i.i.i.i.prol

.lr.ph.i.i188.i.i.i.i.prol:                       ; preds = %.lr.ph.i.i188.i.i.i.i.preheader, %.lr.ph.i.i188.i.i.i.i.prol
  %.sroa.013.017.i.i189.i.i.i.i.prol = phi ptr [ %.sroa.013.0.i.i191.i.i.i.i.prol, %.lr.ph.i.i188.i.i.i.i.prol ], [ %i.km, %.lr.ph.i.i188.i.i.i.i.preheader ]
  %.sroa.011.016.i.i190.i.i.i.i.prol = phi i64 [ %i.kp, %.lr.ph.i.i188.i.i.i.i.prol ], [ %.sroa.20.1.i.i, %.lr.ph.i.i188.i.i.i.i.preheader ]
  %prol.iter2242.a = phi i64 [ %prol.iter2242.next.a, %.lr.ph.i.i188.i.i.i.i.prol ], [ 0, %.lr.ph.i.i188.i.i.i.i.preheader ]
  %i.ko = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i189.i.i.i.i.prol, i64 24
  %i.kp = add i64 %.sroa.011.016.i.i190.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.013.0.i.i191.i.i.i.i.prol = load ptr, ptr %i.ko, align 8, !noalias !1182, !nonnull !7, !noundef !7 ; 3 uses
  %prol.iter2242.next.a = add i64 %prol.iter2242.a, 1 ; 2 uses
  %prol.iter2242.cmp.not.a = icmp eq i64 %prol.iter2242.next.a, %xtraiter2240.a
  br i1 %prol.iter2242.cmp.not.a, label %.lr.ph.i.i188.i.i.i.i.prol.loopexit, label %.lr.ph.i.i188.i.i.i.i.prol, !llvm.loop !1187

.lr.ph.i.i188.i.i.i.i.prol.loopexit:              ; preds = %.lr.ph.i.i188.i.i.i.i.prol, %.lr.ph.i.i188.i.i.i.i.preheader
  %.sroa.013.0.i.i191.i.i.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i188.i.i.i.i.preheader ], [ %.sroa.013.0.i.i191.i.i.i.i.prol, %.lr.ph.i.i188.i.i.i.i.prol ]
  %.sroa.013.017.i.i189.i.i.i.i.unr = phi ptr [ %i.km, %.lr.ph.i.i188.i.i.i.i.preheader ], [ %.sroa.013.0.i.i191.i.i.i.i.prol, %.lr.ph.i.i188.i.i.i.i.prol ]
  %.sroa.011.016.i.i190.i.i.i.i.unr = phi i64 [ %.sroa.20.1.i.i, %.lr.ph.i.i188.i.i.i.i.preheader ], [ %i.kp, %.lr.ph.i.i188.i.i.i.i.prol ]
  %i.kq = icmp ult i64 %.sroa.20.1.i.i, 8
  br i1 %i.kq, label %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTE10init_frontCsfPYenFzdTHO_5uu_wc.exit.i164.i.i.i.i, label %.lr.ph.i.i188.i.i.i.i

.lr.ph.i.i188.i.i.i.i:                            ; preds = %.lr.ph.i.i188.i.i.i.i.prol.loopexit, %.lr.ph.i.i188.i.i.i.i
  %.sroa.013.017.i.i189.i.i.i.i = phi ptr [ %.sroa.013.0.i.i191.i.i.i.i.7, %.lr.ph.i.i188.i.i.i.i ], [ %.sroa.013.017.i.i189.i.i.i.i.unr, %.lr.ph.i.i188.i.i.i.i.prol.loopexit ]
  %.sroa.011.016.i.i190.i.i.i.i = phi i64 [ %i.kz, %.lr.ph.i.i188.i.i.i.i ], [ %.sroa.011.016.i.i190.i.i.i.i.unr, %.lr.ph.i.i188.i.i.i.i.prol.loopexit ]
  %i.kr = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i189.i.i.i.i, i64 24
  %.sroa.013.0.i.i191.i.i.i.i = load ptr, ptr %i.kr, align 8, !noalias !1182, !nonnull !7, !noundef !7
  %i.ks = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i191.i.i.i.i, i64 24
  %.sroa.013.0.i.i191.i.i.i.i.1 = load ptr, ptr %i.ks, align 8, !noalias !1182, !nonnull !7, !noundef !7
  %i.kt = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i191.i.i.i.i.1, i64 24
  %.sroa.013.0.i.i191.i.i.i.i.2 = load ptr, ptr %i.kt, align 8, !noalias !1182, !nonnull !7, !noundef !7
  %i.ku = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i191.i.i.i.i.2, i64 24
  %.sroa.013.0.i.i191.i.i.i.i.3 = load ptr, ptr %i.ku, align 8, !noalias !1182, !nonnull !7, !noundef !7
  %i.kv = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i191.i.i.i.i.3, i64 24
  %.sroa.013.0.i.i191.i.i.i.i.4 = load ptr, ptr %i.kv, align 8, !noalias !1182, !nonnull !7, !noundef !7
  %i.kw = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i191.i.i.i.i.4, i64 24
  %.sroa.013.0.i.i191.i.i.i.i.5 = load ptr, ptr %i.kw, align 8, !noalias !1182, !nonnull !7, !noundef !7
  %i.kx = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i191.i.i.i.i.5, i64 24
  %.sroa.013.0.i.i191.i.i.i.i.6 = load ptr, ptr %i.kx, align 8, !noalias !1182, !nonnull !7, !noundef !7
  %i.ky = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i191.i.i.i.i.6, i64 24
  %i.kz = add i64 %.sroa.011.016.i.i190.i.i.i.i, -8 ; 2 uses
  %.sroa.013.0.i.i191.i.i.i.i.7 = load ptr, ptr %i.ky, align 8, !noalias !1182, !nonnull !7, !noundef !7 ; 2 uses
  %i.la = icmp eq i64 %i.kz, 0
  br i1 %i.la, label %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTE10init_frontCsfPYenFzdTHO_5uu_wc.exit.i164.i.i.i.i, label %.lr.ph.i.i188.i.i.i.i

_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTE10init_frontCsfPYenFzdTHO_5uu_wc.exit.i164.i.i.i.i: ; preds = %.lr.ph.i.i188.i.i.i.i.prol.loopexit, %.lr.ph.i.i188.i.i.i.i, %bb.au, %bb.at
  %.promoted325709.i.i.i.i = phi i64 [ 1, %bb.au ], [ %.promoted325710.i.i.i.i, %bb.at ], [ 1, %.lr.ph.i.i188.i.i.i.i ], [ 1, %.lr.ph.i.i188.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.lb = phi i64 [ 1, %bb.au ], [ %i.if, %bb.at ], [ 1, %.lr.ph.i.i188.i.i.i.i ], [ 1, %.lr.ph.i.i188.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.59.0.copyload.i.i165.i.i.i.i = phi i64 [ 0, %bb.au ], [ %.sroa.20.1.i.i, %bb.at ], [ 0, %.lr.ph.i.i188.i.i.i.i ], [ 0, %.lr.ph.i.i188.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.48.0.copyload.i.i166.i.i.i.i = phi i64 [ 0, %bb.au ], [ %.sroa.11.1.i.i, %bb.at ], [ 0, %.lr.ph.i.i188.i.i.i.i ], [ 0, %.lr.ph.i.i188.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.07.0.copyload.i.i167.i.i.i.i = phi ptr [ %i.km, %bb.au ], [ %i.kl, %bb.at ], [ %.sroa.013.0.i.i191.i.i.i.i.lcssa.unr, %.lr.ph.i.i188.i.i.i.i.prol.loopexit ], [ %.sroa.013.0.i.i191.i.i.i.i.7, %.lr.ph.i.i188.i.i.i.i ] ; 3 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload.i.i167.i.i.i.i, i64 10
  %i.ld = load i16, ptr %i.lc, align 2, !noalias !1188, !noundef !7
  %i.le = zext i16 %i.ld to i64
  %i.lf = icmp ult i64 %.sroa.59.0.copyload.i.i165.i.i.i.i, %i.le
  br i1 %i.lf, label %bb.ax, label %.lr.ph.i.i.i.i170.i.i.i.i

.lr.ph.i.i.i.i170.i.i.i.i:                        ; preds = %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTE10init_frontCsfPYenFzdTHO_5uu_wc.exit.i164.i.i.i.i, %bb.av
  %.sroa.0.022.i.i.i.i171.i.i.i.i = phi ptr [ %i.lg, %bb.av ], [ %.sroa.07.0.copyload.i.i167.i.i.i.i, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTE10init_frontCsfPYenFzdTHO_5uu_wc.exit.i164.i.i.i.i ] ; 2 uses
  %.sroa.5.021.i.i.i.i172.i.i.i.i = phi i64 [ %i.li, %bb.av ], [ %.sroa.48.0.copyload.i.i166.i.i.i.i, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTE10init_frontCsfPYenFzdTHO_5uu_wc.exit.i164.i.i.i.i ]
  %i.lg = load ptr, ptr %.sroa.0.022.i.i.i.i171.i.i.i.i, align 8, !noalias !1197, !noundef !7 ; 4 uses
  %.not.i.i.i.i.i173.i.i.i.i = icmp eq ptr %i.lg, null
  br i1 %.not.i.i.i.i.i173.i.i.i.i, label %bb.aw, label %bb.av

._crit_edge.loopexit.i.i.i.i174.i.i.i.i:          ; preds = %bb.av
  %i.lh = zext i16 %i.lk to i64
  br label %bb.ax

bb.av:                                            ; preds = %.lr.ph.i.i.i.i170.i.i.i.i
  %i.li = add i64 %.sroa.5.021.i.i.i.i172.i.i.i.i, 1 ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i171.i.i.i.i, i64 8
  %i.lk = load i16, ptr %i.lj, align 8, !noalias !1197 ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lg, i64 10
  %i.lm = load i16, ptr %i.ll, align 2, !noalias !1188, !noundef !7
  %i.ln = icmp ult i16 %i.lk, %i.lm
  br i1 %i.ln, label %._crit_edge.loopexit.i.i.i.i174.i.i.i.i, label %.lr.ph.i.i.i.i170.i.i.i.i

bb.aw:                                            ; preds = %.lr.ph.i.i.i.i170.i.i.i.i
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #29, !noalias !1200
  unreachable

bb.ax:                                            ; preds = %._crit_edge.loopexit.i.i.i.i174.i.i.i.i, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTE10init_frontCsfPYenFzdTHO_5uu_wc.exit.i164.i.i.i.i
  %.sroa.10.0.ph.i.i.i175.i.i.i.i = phi i64 [ %i.lh, %._crit_edge.loopexit.i.i.i.i174.i.i.i.i ], [ %.sroa.59.0.copyload.i.i165.i.i.i.i, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTE10init_frontCsfPYenFzdTHO_5uu_wc.exit.i164.i.i.i.i ] ; 5 uses
  %.sroa.7.0.ph.i.i.i176.i.i.i.i = phi i64 [ %i.li, %._crit_edge.loopexit.i.i.i.i174.i.i.i.i ], [ %.sroa.48.0.copyload.i.i166.i.i.i.i, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTE10init_frontCsfPYenFzdTHO_5uu_wc.exit.i164.i.i.i.i ] ; 5 uses
  %.sroa.06.0.ph.i.i.i177.i.i.i.i = phi ptr [ %i.lg, %._crit_edge.loopexit.i.i.i.i174.i.i.i.i ], [ %.sroa.07.0.copyload.i.i167.i.i.i.i, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTE10init_frontCsfPYenFzdTHO_5uu_wc.exit.i164.i.i.i.i ] ; 3 uses
  %i.lo = icmp eq i64 %.sroa.7.0.ph.i.i.i176.i.i.i.i, 0
  br i1 %i.lo, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.lp = add nuw nsw i64 %.sroa.10.0.ph.i.i.i175.i.i.i.i, 1
  br label %.loopexit260.i.i.i.i

bb.az:                                            ; preds = %bb.ax
  %i.lq = icmp samesign ult i64 %.sroa.10.0.ph.i.i.i175.i.i.i.i, 11
  call void @llvm.assume(i1 %i.lq)
  %i.lr = getelementptr i8, ptr %.sroa.06.0.ph.i.i.i177.i.i.i.i, i64 32
  %i.ls = getelementptr [8 x i8], ptr %i.lr, i64 %.sroa.10.0.ph.i.i.i175.i.i.i.i ; 2 uses
  %xtraiter2246 = and i64 %.sroa.7.0.ph.i.i.i176.i.i.i.i, 7 ; 2 uses
  %lcmp.mod2247.not = icmp eq i64 %xtraiter2246, 0
  br i1 %lcmp.mod2247.not, label %.prol.loopexit2244, label %.prol.preheader2243

.prol.preheader2243:                              ; preds = %bb.az, %.prol.preheader2243
  %.sroa.017.0.in.i.i.i.i178.i.i.i.i.prol = phi ptr [ %i.lt, %.prol.preheader2243 ], [ %i.ls, %bb.az ]
  %.sroa.019.0.in.i.i.i.i179.i.i.i.i.prol = phi i64 [ %.sroa.019.0.i.i.i.i180.i.i.i.i.prol, %.prol.preheader2243 ], [ %.sroa.7.0.ph.i.i.i176.i.i.i.i, %bb.az ]
  %prol.iter2248 = phi i64 [ %prol.iter2248.next, %.prol.preheader2243 ], [ 0, %bb.az ]
  %.sroa.019.0.i.i.i.i180.i.i.i.i.prol = add i64 %.sroa.019.0.in.i.i.i.i179.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.017.0.i.i.i.i181.i.i.i.i.prol = load ptr, ptr %.sroa.017.0.in.i.i.i.i178.i.i.i.i.prol, align 8, !noalias !1201, !nonnull !7, !noundef !7 ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i181.i.i.i.i.prol, i64 24 ; 2 uses
  %prol.iter2248.next = add i64 %prol.iter2248, 1 ; 2 uses
  %prol.iter2248.cmp.not = icmp eq i64 %prol.iter2248.next, %xtraiter2246
  br i1 %prol.iter2248.cmp.not, label %.prol.loopexit2244, label %.prol.preheader2243, !llvm.loop !1205

.prol.loopexit2244:                               ; preds = %.prol.preheader2243, %bb.az
  %.sroa.017.0.i.i.i.i181.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.az ], [ %.sroa.017.0.i.i.i.i181.i.i.i.i.prol, %.prol.preheader2243 ]
  %.sroa.017.0.in.i.i.i.i178.i.i.i.i.unr = phi ptr [ %i.ls, %bb.az ], [ %i.lt, %.prol.preheader2243 ]
  %.sroa.019.0.in.i.i.i.i179.i.i.i.i.unr = phi i64 [ %.sroa.7.0.ph.i.i.i176.i.i.i.i, %bb.az ], [ %.sroa.019.0.i.i.i.i180.i.i.i.i.prol, %.prol.preheader2243 ]
  %i.lu = icmp ult i64 %.sroa.7.0.ph.i.i.i176.i.i.i.i, 8
  br i1 %i.lu, label %.loopexit260.i.i.i.i, label %.new2245

.new2245:                                         ; preds = %.prol.loopexit2244, %.new2245
  %.sroa.017.0.in.i.i.i.i178.i.i.i.i = phi ptr [ %i.md, %.new2245 ], [ %.sroa.017.0.in.i.i.i.i178.i.i.i.i.unr, %.prol.loopexit2244 ]
  %.sroa.019.0.in.i.i.i.i179.i.i.i.i = phi i64 [ %.sroa.019.0.i.i.i.i180.i.i.i.i.7, %.new2245 ], [ %.sroa.019.0.in.i.i.i.i179.i.i.i.i.unr, %.prol.loopexit2244 ]
  %.sroa.017.0.i.i.i.i181.i.i.i.i = load ptr, ptr %.sroa.017.0.in.i.i.i.i178.i.i.i.i, align 8, !noalias !1201, !nonnull !7, !noundef !7
  %i.lv = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i181.i.i.i.i, i64 24
  %.sroa.017.0.i.i.i.i181.i.i.i.i.1 = load ptr, ptr %i.lv, align 8, !noalias !1201, !nonnull !7, !noundef !7
  %i.lw = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i181.i.i.i.i.1, i64 24
  %.sroa.017.0.i.i.i.i181.i.i.i.i.2 = load ptr, ptr %i.lw, align 8, !noalias !1201, !nonnull !7, !noundef !7
  %i.lx = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i181.i.i.i.i.2, i64 24
  %.sroa.017.0.i.i.i.i181.i.i.i.i.3 = load ptr, ptr %i.lx, align 8, !noalias !1201, !nonnull !7, !noundef !7
  %i.ly = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i181.i.i.i.i.3, i64 24
  %.sroa.017.0.i.i.i.i181.i.i.i.i.4 = load ptr, ptr %i.ly, align 8, !noalias !1201, !nonnull !7, !noundef !7
  %i.lz = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i181.i.i.i.i.4, i64 24
  %.sroa.017.0.i.i.i.i181.i.i.i.i.5 = load ptr, ptr %i.lz, align 8, !noalias !1201, !nonnull !7, !noundef !7
  %i.ma = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i181.i.i.i.i.5, i64 24
  %.sroa.017.0.i.i.i.i181.i.i.i.i.6 = load ptr, ptr %i.ma, align 8, !noalias !1201, !nonnull !7, !noundef !7
  %i.mb = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i181.i.i.i.i.6, i64 24
  %.sroa.019.0.i.i.i.i180.i.i.i.i.7 = add i64 %.sroa.019.0.in.i.i.i.i179.i.i.i.i, -8 ; 2 uses
  %.sroa.017.0.i.i.i.i181.i.i.i.i.7 = load ptr, ptr %i.mb, align 8, !noalias !1201, !nonnull !7, !noundef !7 ; 2 uses
  %i.mc = icmp eq i64 %.sroa.019.0.i.i.i.i180.i.i.i.i.7, 0
  %i.md = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i181.i.i.i.i.7, i64 24
  br i1 %i.mc, label %.loopexit260.i.i.i.i, label %.new2245

.critedge.i158.i.i.i.i:                           ; preds = %bb.as
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @156) #29, !noalias !1206
  unreachable

bb.ba:                                            ; preds = %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6copied13copy_try_foldNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureuINtNtNtBa_3ops12control_flow11ControlFlowB13_ENCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB13_QNCNvCsfPYenFzdTHO_5uu_wc16wc_simd_features0E0E0B3N_.exit.i.i.i.i.i.i.i.i
  %i.me = icmp eq i64 %i.ih, 0
  br i1 %i.me, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filter6FilterINtNtB2i_6copied6CopiedINtNtNtNtB6_11collections5btree3set10DifferenceBR_EENCNvCsfPYenFzdTHO_5uu_wc16wc_simd_features0EE11spec_extendB4o_.exit.i.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.mf = add i64 %i.ih, -1                       ; 2 uses
  %i.mg = trunc nuw i64 %.sroa.48.1.i.i to i1
  br i1 %i.mg, label %bb.bc, label %.critedge.i121.i.i.i.i

bb.bc:                                            ; preds = %bb.bb
  %i.mh = inttoptr i64 %.sroa.11.1.i.i to ptr
  %.not.i.i122.i.i.i.i = icmp eq i64 %.sroa.11.1.i.i, 0
  br i1 %.not.i.i122.i.i.i.i, label %bb.bd, label %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTE10init_frontCsfPYenFzdTHO_5uu_wc.exit.i127.i.i.i.i

bb.bd:                                            ; preds = %bb.bc
  %i.mi = inttoptr i64 %.sroa.20.1.i.i to ptr     ; 3 uses
  %i.mj = icmp eq i64 %.sroa.78.0.i.i.i689.i.i.i.i, 0
  br i1 %i.mj, label %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTE10init_frontCsfPYenFzdTHO_5uu_wc.exit.i127.i.i.i.i, label %.lr.ph.i.i151.i.i.i.i.preheader

.lr.ph.i.i151.i.i.i.i.preheader:                  ; preds = %bb.bd
  %xtraiter = and i64 %.sroa.78.0.i.i.i689.i.i.i.i, 7 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i151.i.i.i.i.prol.loopexit, label %.lr.ph.i.i151.i.i.i.i.prol

.lr.ph.i.i151.i.i.i.i.prol:                       ; preds = %.lr.ph.i.i151.i.i.i.i.preheader, %.lr.ph.i.i151.i.i.i.i.prol
  %.sroa.013.017.i.i152.i.i.i.i.prol = phi ptr [ %.sroa.013.0.i.i154.i.i.i.i.prol, %.lr.ph.i.i151.i.i.i.i.prol ], [ %i.mi, %.lr.ph.i.i151.i.i.i.i.preheader ]
  %.sroa.011.016.i.i153.i.i.i.i.prol = phi i64 [ %i.ml, %.lr.ph.i.i151.i.i.i.i.prol ], [ %.sroa.78.0.i.i.i689.i.i.i.i, %.lr.ph.i.i151.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i151.i.i.i.i.prol ], [ 0, %.lr.ph.i.i151.i.i.i.i.preheader ]
  %i.mk = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i152.i.i.i.i.prol, i64 24
  %i.ml = add i64 %.sroa.011.016.i.i153.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.013.0.i.i154.i.i.i.i.prol = load ptr, ptr %i.mk, align 8, !noalias !1207, !nonnull !7, !noundef !7 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i151.i.i.i.i.prol.loopexit, label %.lr.ph.i.i151.i.i.i.i.prol, !llvm.loop !1212

.lr.ph.i.i151.i.i.i.i.prol.loopexit:              ; preds = %.lr.ph.i.i151.i.i.i.i.prol, %.lr.ph.i.i151.i.i.i.i.preheader
  %.sroa.013.0.i.i154.i.i.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i151.i.i.i.i.preheader ], [ %.sroa.013.0.i.i154.i.i.i.i.prol, %.lr.ph.i.i151.i.i.i.i.prol ]
  %.sroa.013.017.i.i152.i.i.i.i.unr = phi ptr [ %i.mi, %.lr.ph.i.i151.i.i.i.i.preheader ], [ %.sroa.013.0.i.i154.i.i.i.i.prol, %.lr.ph.i.i151.i.i.i.i.prol ]
  %.sroa.011.016.i.i153.i.i.i.i.unr = phi i64 [ %.sroa.78.0.i.i.i689.i.i.i.i, %.lr.ph.i.i151.i.i.i.i.preheader ], [ %i.ml, %.lr.ph.i.i151.i.i.i.i.prol ]
  %i.mm = icmp ult i64 %.sroa.78.0.i.i.i689.i.i.i.i, 8
  br i1 %i.mm, label %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTE10init_frontCsfPYenFzdTHO_5uu_wc.exit.i127.i.i.i.i, label %.lr.ph.i.i151.i.i.i.i

.lr.ph.i.i151.i.i.i.i:                            ; preds = %.lr.ph.i.i151.i.i.i.i.prol.loopexit, %.lr.ph.i.i151.i.i.i.i
  %.sroa.013.017.i.i152.i.i.i.i = phi ptr [ %.sroa.013.0.i.i154.i.i.i.i.7, %.lr.ph.i.i151.i.i.i.i ], [ %.sroa.013.017.i.i152.i.i.i.i.unr, %.lr.ph.i.i151.i.i.i.i.prol.loopexit ]
  %.sroa.011.016.i.i153.i.i.i.i = phi i64 [ %i.mv, %.lr.ph.i.i151.i.i.i.i ], [ %.sroa.011.016.i.i153.i.i.i.i.unr, %.lr.ph.i.i151.i.i.i.i.prol.loopexit ]
  %i.mn = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i152.i.i.i.i, i64 24
  %.sroa.013.0.i.i154.i.i.i.i = load ptr, ptr %i.mn, align 8, !noalias !1207, !nonnull !7, !noundef !7
  %i.mo = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i154.i.i.i.i, i64 24
  %.sroa.013.0.i.i154.i.i.i.i.1 = load ptr, ptr %i.mo, align 8, !noalias !1207, !nonnull !7, !noundef !7
  %i.mp = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i154.i.i.i.i.1, i64 24
  %.sroa.013.0.i.i154.i.i.i.i.2 = load ptr, ptr %i.mp, align 8, !noalias !1207, !nonnull !7, !noundef !7
  %i.mq = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i154.i.i.i.i.2, i64 24
  %.sroa.013.0.i.i154.i.i.i.i.3 = load ptr, ptr %i.mq, align 8, !noalias !1207, !nonnull !7, !noundef !7
  %i.mr = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i154.i.i.i.i.3, i64 24
  %.sroa.013.0.i.i154.i.i.i.i.4 = load ptr, ptr %i.mr, align 8, !noalias !1207, !nonnull !7, !noundef !7
  %i.ms = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i154.i.i.i.i.4, i64 24
  %.sroa.013.0.i.i154.i.i.i.i.5 = load ptr, ptr %i.ms, align 8, !noalias !1207, !nonnull !7, !noundef !7
  %i.mt = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i154.i.i.i.i.5, i64 24
  %.sroa.013.0.i.i154.i.i.i.i.6 = load ptr, ptr %i.mt, align 8, !noalias !1207, !nonnull !7, !noundef !7
  %i.mu = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i154.i.i.i.i.6, i64 24
  %i.mv = add i64 %.sroa.011.016.i.i153.i.i.i.i, -8 ; 2 uses
  %.sroa.013.0.i.i154.i.i.i.i.7 = load ptr, ptr %i.mu, align 8, !noalias !1207, !nonnull !7, !noundef !7 ; 2 uses
  %i.mw = icmp eq i64 %i.mv, 0
  br i1 %i.mw, label %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTE10init_frontCsfPYenFzdTHO_5uu_wc.exit.i127.i.i.i.i, label %.lr.ph.i.i151.i.i.i.i

_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTE10init_frontCsfPYenFzdTHO_5uu_wc.exit.i127.i.i.i.i: ; preds = %.lr.ph.i.i151.i.i.i.i.prol.loopexit, %.lr.ph.i.i151.i.i.i.i, %bb.bd, %bb.bc
  %.sroa.59.0.copyload.i.i128.i.i.i.i = phi i64 [ %.sroa.78.0.i.i.i689.i.i.i.i, %bb.bc ], [ 0, %bb.bd ], [ 0, %.lr.ph.i.i151.i.i.i.i ], [ 0, %.lr.ph.i.i151.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.48.0.copyload.i.i129.i.i.i.i = phi i64 [ %.sroa.20.1.i.i, %bb.bc ], [ 0, %bb.bd ], [ 0, %.lr.ph.i.i151.i.i.i.i ], [ 0, %.lr.ph.i.i151.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.07.0.copyload.i.i130.i.i.i.i = phi ptr [ %i.mh, %bb.bc ], [ %i.mi, %bb.bd ], [ %.sroa.013.0.i.i154.i.i.i.i.lcssa.unr, %.lr.ph.i.i151.i.i.i.i.prol.loopexit ], [ %.sroa.013.0.i.i154.i.i.i.i.7, %.lr.ph.i.i151.i.i.i.i ] ; 3 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload.i.i130.i.i.i.i, i64 10
  %i.my = load i16, ptr %i.mx, align 2, !noalias !1213, !noundef !7
  %i.mz = zext i16 %i.my to i64
  %i.na = icmp ult i64 %.sroa.59.0.copyload.i.i128.i.i.i.i, %i.mz
  br i1 %i.na, label %bb.bg, label %.lr.ph.i.i.i.i133.i.i.i.i

.lr.ph.i.i.i.i133.i.i.i.i:                        ; preds = %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTE10init_frontCsfPYenFzdTHO_5uu_wc.exit.i127.i.i.i.i, %bb.be
  %.sroa.0.022.i.i.i.i134.i.i.i.i = phi ptr [ %i.nb, %bb.be ], [ %.sroa.07.0.copyload.i.i130.i.i.i.i, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTE10init_frontCsfPYenFzdTHO_5uu_wc.exit.i127.i.i.i.i ] ; 2 uses
  %.sroa.5.021.i.i.i.i135.i.i.i.i = phi i64 [ %i.nd, %bb.be ], [ %.sroa.48.0.copyload.i.i129.i.i.i.i, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTE10init_frontCsfPYenFzdTHO_5uu_wc.exit.i127.i.i.i.i ]
  %i.nb = load ptr, ptr %.sroa.0.022.i.i.i.i134.i.i.i.i, align 8, !noalias !1222, !noundef !7 ; 4 uses
  %.not.i.i.i.i.i136.i.i.i.i = icmp eq ptr %i.nb, null
  br i1 %.not.i.i.i.i.i136.i.i.i.i, label %bb.bf, label %bb.be

._crit_edge.loopexit.i.i.i.i137.i.i.i.i:          ; preds = %bb.be
  %i.nc = zext i16 %i.nf to i64
  br label %bb.bg

bb.be:                                            ; preds = %.lr.ph.i.i.i.i133.i.i.i.i
  %i.nd = add i64 %.sroa.5.021.i.i.i.i135.i.i.i.i, 1 ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i134.i.i.i.i, i64 8
  %i.nf = load i16, ptr %i.ne, align 8, !noalias !1222 ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nb, i64 10
  %i.nh = load i16, ptr %i.ng, align 2, !noalias !1213, !noundef !7
  %i.ni = icmp ult i16 %i.nf, %i.nh
  br i1 %i.ni, label %._crit_edge.loopexit.i.i.i.i137.i.i.i.i, label %.lr.ph.i.i.i.i133.i.i.i.i

bb.bf:                                            ; preds = %.lr.ph.i.i.i.i133.i.i.i.i
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #29, !noalias !1225
  unreachable

bb.bg:                                            ; preds = %._crit_edge.loopexit.i.i.i.i137.i.i.i.i, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTE10init_frontCsfPYenFzdTHO_5uu_wc.exit.i127.i.i.i.i
  %.sroa.10.0.ph.i.i.i138.i.i.i.i = phi i64 [ %i.nc, %._crit_edge.loopexit.i.i.i.i137.i.i.i.i ], [ %.sroa.59.0.copyload.i.i128.i.i.i.i, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTE10init_frontCsfPYenFzdTHO_5uu_wc.exit.i127.i.i.i.i ] ; 5 uses
  %.sroa.7.0.ph.i.i.i139.i.i.i.i = phi i64 [ %i.nd, %._crit_edge.loopexit.i.i.i.i137.i.i.i.i ], [ %.sroa.48.0.copyload.i.i129.i.i.i.i, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTE10init_frontCsfPYenFzdTHO_5uu_wc.exit.i127.i.i.i.i ] ; 5 uses
  %.sroa.06.0.ph.i.i.i140.i.i.i.i = phi ptr [ %i.nb, %._crit_edge.loopexit.i.i.i.i137.i.i.i.i ], [ %.sroa.07.0.copyload.i.i130.i.i.i.i, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTE10init_frontCsfPYenFzdTHO_5uu_wc.exit.i127.i.i.i.i ] ; 3 uses
  %i.nj = icmp eq i64 %.sroa.7.0.ph.i.i.i139.i.i.i.i, 0
  br i1 %i.nj, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.nk = add nuw nsw i64 %.sroa.10.0.ph.i.i.i138.i.i.i.i, 1
  br label %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread601.i.i.i.i

bb.bi:                                            ; preds = %bb.bg
  %i.nl = icmp samesign ult i64 %.sroa.10.0.ph.i.i.i138.i.i.i.i, 11
  call void @llvm.assume(i1 %i.nl)
  %i.nm = getelementptr i8, ptr %.sroa.06.0.ph.i.i.i140.i.i.i.i, i64 32
  %i.nn = getelementptr [8 x i8], ptr %i.nm, i64 %.sroa.10.0.ph.i.i.i138.i.i.i.i ; 2 uses
  %xtraiter2221 = and i64 %.sroa.7.0.ph.i.i.i139.i.i.i.i, 7 ; 2 uses
  %lcmp.mod2222.not = icmp eq i64 %xtraiter2221, 0
  br i1 %lcmp.mod2222.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.bi, %.prol.preheader
  %.sroa.017.0.in.i.i.i.i141.i.i.i.i.prol = phi ptr [ %i.no, %.prol.preheader ], [ %i.nn, %bb.bi ]
  %.sroa.019.0.in.i.i.i.i142.i.i.i.i.prol = phi i64 [ %.sroa.019.0.i.i.i.i143.i.i.i.i.prol, %.prol.preheader ], [ %.sroa.7.0.ph.i.i.i139.i.i.i.i, %bb.bi ]
  %prol.iter2223 = phi i64 [ %prol.iter2223.next, %.prol.preheader ], [ 0, %bb.bi ]
  %.sroa.019.0.i.i.i.i143.i.i.i.i.prol = add i64 %.sroa.019.0.in.i.i.i.i142.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.017.0.i.i.i.i144.i.i.i.i.prol = load ptr, ptr %.sroa.017.0.in.i.i.i.i141.i.i.i.i.prol, align 8, !noalias !1226, !nonnull !7, !noundef !7 ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i144.i.i.i.i.prol, i64 24 ; 2 uses
  %prol.iter2223.next = add i64 %prol.iter2223, 1 ; 2 uses
  %prol.iter2223.cmp.not = icmp eq i64 %prol.iter2223.next, %xtraiter2221
  br i1 %prol.iter2223.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !1230

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.bi
  %.sroa.017.0.i.i.i.i144.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.bi ], [ %.sroa.017.0.i.i.i.i144.i.i.i.i.prol, %.prol.preheader ]
  %.sroa.017.0.in.i.i.i.i141.i.i.i.i.unr = phi ptr [ %i.nn, %bb.bi ], [ %i.no, %.prol.preheader ]
  %.sroa.019.0.in.i.i.i.i142.i.i.i.i.unr = phi i64 [ %.sroa.7.0.ph.i.i.i139.i.i.i.i, %bb.bi ], [ %.sroa.019.0.i.i.i.i143.i.i.i.i.prol, %.prol.preheader ]
  %i.np = icmp ult i64 %.sroa.7.0.ph.i.i.i139.i.i.i.i, 8
  br i1 %i.np, label %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread601.i.i.i.i, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.sroa.017.0.in.i.i.i.i141.i.i.i.i = phi ptr [ %i.ny, %.new ], [ %.sroa.017.0.in.i.i.i.i141.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.019.0.in.i.i.i.i142.i.i.i.i = phi i64 [ %.sroa.019.0.i.i.i.i143.i.i.i.i.7, %.new ], [ %.sroa.019.0.in.i.i.i.i142.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.017.0.i.i.i.i144.i.i.i.i = load ptr, ptr %.sroa.017.0.in.i.i.i.i141.i.i.i.i, align 8, !noalias !1226, !nonnull !7, !noundef !7
  %i.nq = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i144.i.i.i.i, i64 24
  %.sroa.017.0.i.i.i.i144.i.i.i.i.1 = load ptr, ptr %i.nq, align 8, !noalias !1226, !nonnull !7, !noundef !7
  %i.nr = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i144.i.i.i.i.1, i64 24
  %.sroa.017.0.i.i.i.i144.i.i.i.i.2 = load ptr, ptr %i.nr, align 8, !noalias !1226, !nonnull !7, !noundef !7
  %i.ns = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i144.i.i.i.i.2, i64 24
  %.sroa.017.0.i.i.i.i144.i.i.i.i.3 = load ptr, ptr %i.ns, align 8, !noalias !1226, !nonnull !7, !noundef !7
  %i.nt = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i144.i.i.i.i.3, i64 24
  %.sroa.017.0.i.i.i.i144.i.i.i.i.4 = load ptr, ptr %i.nt, align 8, !noalias !1226, !nonnull !7, !noundef !7
  %i.nu = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i144.i.i.i.i.4, i64 24
  %.sroa.017.0.i.i.i.i144.i.i.i.i.5 = load ptr, ptr %i.nu, align 8, !noalias !1226, !nonnull !7, !noundef !7
  %i.nv = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i144.i.i.i.i.5, i64 24
  %.sroa.017.0.i.i.i.i144.i.i.i.i.6 = load ptr, ptr %i.nv, align 8, !noalias !1226, !nonnull !7, !noundef !7
  %i.nw = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i144.i.i.i.i.6, i64 24
  %.sroa.019.0.i.i.i.i143.i.i.i.i.7 = add i64 %.sroa.019.0.in.i.i.i.i142.i.i.i.i, -8 ; 2 uses
  %.sroa.017.0.i.i.i.i144.i.i.i.i.7 = load ptr, ptr %i.nw, align 8, !noalias !1226, !nonnull !7, !noundef !7 ; 2 uses
  %i.nx = icmp eq i64 %.sroa.019.0.i.i.i.i143.i.i.i.i.7, 0
  %i.ny = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i144.i.i.i.i.7, i64 24
  br i1 %i.nx, label %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread601.i.i.i.i, label %.new

_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread601.i.i.i.i: ; preds = %.prol.loopexit, %.new, %bb.bh
  %.sroa.78.0.i.i.i146.i.i.i.i = phi i64 [ %i.nk, %bb.bh ], [ 0, %.new ], [ 0, %.prol.loopexit ] ; 2 uses
  %.sroa.07.0.i.i.i147.i.i.i.i = phi ptr [ %.sroa.06.0.ph.i.i.i140.i.i.i.i, %bb.bh ], [ %.sroa.017.0.i.i.i.i144.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.sroa.017.0.i.i.i.i144.i.i.i.i.7, %.new ]
  %i.nz = getelementptr inbounds nuw i8, ptr %.sroa.06.0.ph.i.i.i140.i.i.i.i, i64 12
  %i.oa = icmp samesign ult i64 %.sroa.10.0.ph.i.i.i138.i.i.i.i, 11
  call void @llvm.assume(i1 %i.oa)
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nz, i64 %.sroa.10.0.ph.i.i.i138.i.i.i.i
  %i.oc = ptrtoint ptr %.sroa.07.0.i.i.i147.i.i.i.i to i64
  br label %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250thread-pre-split.i.i.i.i

.critedge.i121.i.i.i.i:                           ; preds = %bb.bb
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @156) #29, !noalias !1231
  unreachable

.loopexit260.i.i.i.i:                             ; preds = %.prol.loopexit2244, %.new2245, %bb.ay
  %.sroa.78.0.i.i.i183.i.i.i.i = phi i64 [ %i.lp, %bb.ay ], [ 0, %.new2245 ], [ 0, %.prol.loopexit2244 ]
  %.sroa.07.0.i.i.i184.i.i.i.i = phi ptr [ %.sroa.06.0.ph.i.i.i177.i.i.i.i, %bb.ay ], [ %.sroa.017.0.i.i.i.i181.i.i.i.i.lcssa.unr, %.prol.loopexit2244 ], [ %.sroa.017.0.i.i.i.i181.i.i.i.i.7, %.new2245 ]
  %i.od = getelementptr inbounds nuw i8, ptr %.sroa.06.0.ph.i.i.i177.i.i.i.i, i64 12
  %i.oe = icmp samesign ult i64 %.sroa.10.0.ph.i.i.i175.i.i.i.i, 11
  call void @llvm.assume(i1 %i.oe)
  %i.of = getelementptr inbounds nuw i8, ptr %i.od, i64 %.sroa.10.0.ph.i.i.i175.i.i.i.i
  %i.og = trunc nuw i64 %.promoted356.i.i.i.i to i1
  br label %_RNvXsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit46.thread.i.i.i.i.outer

_RNvXsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit46.thread.i.i.i.i.outer: ; preds = %.loopexit259.i.i.i.i, %.loopexit260.i.i.i.i
  %.sroa.35.4.i.i.ph = phi i64 [ %.sroa.35.539.i.i, %.loopexit259.i.i.i.i ], [ %.sroa.35.1.i.i, %.loopexit260.i.i.i.i ]
  %.sroa.59.0..sroa_idx.i.phi.trans.insert.i88.promoted690750.i.i.i.i.ph = phi i64 [ %.sroa.59.0..sroa_idx.i.phi.trans.insert.i88.promoted690749.i.i40.i.i, %.loopexit259.i.i.i.i ], [ %.sroa.59.0..sroa_idx.i.phi.trans.insert.i88.promoted690751.i.i.i.i, %.loopexit260.i.i.i.i ]
  %.promoted363738.i.i.i.i.ph = phi i64 [ %.promoted363737.i.i41.i.i, %.loopexit259.i.i.i.i ], [ %.promoted363739.i.i.i.i, %.loopexit260.i.i.i.i ]
  %.promoted731.i.i.i.i.ph = phi ptr [ %.promoted730.i.i42.i.i, %.loopexit259.i.i.i.i ], [ %.promoted732.i.i.i.i, %.loopexit260.i.i.i.i ]
  %.ph2028.a = phi i64 [ 0, %.loopexit259.i.i.i.i ], [ %i.ic, %.loopexit260.i.i.i.i ]
  %.sroa.07.0.i.i.i110718.i.i.i.i.ph = phi ptr [ %.sroa.07.0.i.i.i110717.i.i43.i.i, %.loopexit259.i.i.i.i ], [ %.sroa.07.0.i.i.i110719.i.i.i.i, %.loopexit260.i.i.i.i ]
  %.ph2029.a = phi i64 [ %i.qu, %.loopexit259.i.i.i.i ], [ %i.id, %.loopexit260.i.i.i.i ]
  %.sroa.59.0..sroa_idx.i.phi.trans.insert.i88.promoted695.i.i.i.i.ph = phi i64 [ %.sroa.59.0..sroa_idx.i.phi.trans.insert.i88.promoted694.i.i44.i.i, %.loopexit259.i.i.i.i ], [ %.sroa.59.0..sroa_idx.i.phi.trans.insert.i88.promoted696.i.i.i.i, %.loopexit260.i.i.i.i ]
  %.sroa.78.0.i.i.i109686.i.i.i.i.ph = phi i64 [ %.sroa.78.0.i.i.i109685.i.i45.i.i, %.loopexit259.i.i.i.i ], [ %.sroa.59.0..sroa_idx.i.phi.trans.insert.i88.promoted696.i.i.i.i, %.loopexit260.i.i.i.i ]
  %.ph2030.a = phi i64 [ 0, %.loopexit259.i.i.i.i ], [ %i.ie, %.loopexit260.i.i.i.i ]
  %.ph2031.a = phi i64 [ %.sroa.78.0.i.i.i72.i.i.i.i, %.loopexit259.i.i.i.i ], [ %.sroa.78.0.i.i.i183.i.i.i.i, %.loopexit260.i.i.i.i ] ; 4 uses
  %.promoted320370.i.i.i.i.ph = phi i64 [ %.promoted320368.i.i46.i.i, %.loopexit259.i.i.i.i ], [ %.promoted320371.i.i.i.i, %.loopexit260.i.i.i.i ]
  %.promoted315361.i.i.i.i.ph = phi ptr [ %.promoted315360.i.i47.i.i, %.loopexit259.i.i.i.i ], [ %.promoted315362.i.i.i.i, %.loopexit260.i.i.i.i ]
  %.promoted355.i.i.i.i.ph = phi i1 [ false, %.loopexit259.i.i.i.i ], [ %i.og, %.loopexit260.i.i.i.i ]
  %.ph2032.a = phi ptr [ %i.qs, %.loopexit259.i.i.i.i ], [ %i.ig, %.loopexit260.i.i.i.i ]
  %.ph2033 = phi i64 [ %i.qr, %.loopexit259.i.i.i.i ], [ %i.ih, %.loopexit260.i.i.i.i ]
  %.sroa.013.0.lcssa.i.i82324.i.i.i.i.ph = phi ptr [ %.sroa.07.0.i.i.i73.i.i.i.i, %.loopexit259.i.i.i.i ], [ %.sroa.07.0.i.i.i184.i.i.i.i, %.loopexit260.i.i.i.i ] ; 5 uses
  %.ph2034 = phi ptr [ %i.qq, %.loopexit259.i.i.i.i ], [ %i.ig, %.loopexit260.i.i.i.i ]
  %.ph2035 = phi i64 [ %i.qp, %.loopexit259.i.i.i.i ], [ %.promoted320371.i.i.i.i, %.loopexit260.i.i.i.i ]
  %.ph2036.in = phi i64 [ %.ph2036, %.loopexit259.i.i.i.i ], [ %.promoted318349.i.i.i.i, %.loopexit260.i.i.i.i ]
  %.pr.i317.i.i.i.i.ph = phi ptr [ %.pr.i316.i.i48.i.i, %.loopexit259.i.i.i.i ], [ %.promoted315362.i.i.i.i, %.loopexit260.i.i.i.i ]
  %.ph2037 = phi i64 [ %i.qo, %.loopexit259.i.i.i.i ], [ %i.ih, %.loopexit260.i.i.i.i ]
  %.sroa.06.0.i.i.i.i.i.ph = phi ptr [ %i.sc, %.loopexit259.i.i.i.i ], [ %i.of, %.loopexit260.i.i.i.i ] ; 2 uses
  %.ph2036 = add i64 %.ph2036.in, -1              ; 6 uses
  br label %_RNvXsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit46.thread.i.i.i.i

_RNvXsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit46.thread.i.i.i.i: ; preds = %_RNvXsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit46.thread.i.i.i.i.outer, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRRNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureE6map_orNtNtB5_3cmp8OrderingNCNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB2k_10DifferenceBK_ENtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsfPYenFzdTHO_5uu_wc.exit.i.i.i.i.i
  %.sroa.35.4.i.i = phi i64 [ %.sroa.35.539.i.i, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRRNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureE6map_orNtNtB5_3cmp8OrderingNCNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB2k_10DifferenceBK_ENtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsfPYenFzdTHO_5uu_wc.exit.i.i.i.i.i ], [ %.sroa.35.4.i.i.ph, %_RNvXsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit46.thread.i.i.i.i.outer ] ; 4 uses
  %.sroa.59.0..sroa_idx.i.phi.trans.insert.i88.promoted690750.i.i.i.i = phi i64 [ %.sroa.59.0..sroa_idx.i.phi.trans.insert.i88.promoted690749.i.i40.i.i, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRRNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureE6map_orNtNtB5_3cmp8OrderingNCNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB2k_10DifferenceBK_ENtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsfPYenFzdTHO_5uu_wc.exit.i.i.i.i.i ], [ %.sroa.59.0..sroa_idx.i.phi.trans.insert.i88.promoted690750.i.i.i.i.ph, %_RNvXsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit46.thread.i.i.i.i.outer ] ; 2 uses
  %.promoted363738.i.i.i.i = phi i64 [ %.promoted363737.i.i41.i.i, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRRNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureE6map_orNtNtB5_3cmp8OrderingNCNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB2k_10DifferenceBK_ENtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsfPYenFzdTHO_5uu_wc.exit.i.i.i.i.i ], [ %.promoted363738.i.i.i.i.ph, %_RNvXsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit46.thread.i.i.i.i.outer ] ; 2 uses
  %.promoted731.i.i.i.i = phi ptr [ %.promoted730.i.i42.i.i, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRRNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureE6map_orNtNtB5_3cmp8OrderingNCNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB2k_10DifferenceBK_ENtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsfPYenFzdTHO_5uu_wc.exit.i.i.i.i.i ], [ %.promoted731.i.i.i.i.ph, %_RNvXsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit46.thread.i.i.i.i.outer ] ; 2 uses
  %i.oh = phi i64 [ 0, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRRNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureE6map_orNtNtB5_3cmp8OrderingNCNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB2k_10DifferenceBK_ENtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsfPYenFzdTHO_5uu_wc.exit.i.i.i.i.i ], [ %.ph2028.a, %_RNvXsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit46.thread.i.i.i.i.outer ] ; 2 uses
  %.sroa.07.0.i.i.i110718.i.i.i.i = phi ptr [ %.sroa.07.0.i.i.i110717.i.i43.i.i, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRRNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureE6map_orNtNtB5_3cmp8OrderingNCNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB2k_10DifferenceBK_ENtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsfPYenFzdTHO_5uu_wc.exit.i.i.i.i.i ], [ %.sroa.07.0.i.i.i110718.i.i.i.i.ph, %_RNvXsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit46.thread.i.i.i.i.outer ] ; 2 uses
  %i.oi = phi i64 [ %i.qu, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRRNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureE6map_orNtNtB5_3cmp8OrderingNCNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB2k_10DifferenceBK_ENtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsfPYenFzdTHO_5uu_wc.exit.i.i.i.i.i ], [ %.ph2029.a, %_RNvXsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit46.thread.i.i.i.i.outer ] ; 3 uses
  %.sroa.59.0..sroa_idx.i.phi.trans.insert.i88.promoted695.i.i.i.i = phi i64 [ %.sroa.59.0..sroa_idx.i.phi.trans.insert.i88.promoted694.i.i44.i.i, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRRNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureE6map_orNtNtB5_3cmp8OrderingNCNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB2k_10DifferenceBK_ENtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsfPYenFzdTHO_5uu_wc.exit.i.i.i.i.i ], [ %.sroa.59.0..sroa_idx.i.phi.trans.insert.i88.promoted695.i.i.i.i.ph, %_RNvXsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit46.thread.i.i.i.i.outer ] ; 2 uses
  %.sroa.78.0.i.i.i109686.i.i.i.i = phi i64 [ %.sroa.78.0.i.i.i109685.i.i45.i.i, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRRNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureE6map_orNtNtB5_3cmp8OrderingNCNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB2k_10DifferenceBK_ENtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsfPYenFzdTHO_5uu_wc.exit.i.i.i.i.i ], [ %.sroa.78.0.i.i.i109686.i.i.i.i.ph, %_RNvXsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit46.thread.i.i.i.i.outer ] ; 7 uses
  %i.oj = phi i64 [ 0, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRRNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureE6map_orNtNtB5_3cmp8OrderingNCNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB2k_10DifferenceBK_ENtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsfPYenFzdTHO_5uu_wc.exit.i.i.i.i.i ], [ %.ph2030.a, %_RNvXsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit46.thread.i.i.i.i.outer ] ; 2 uses
  %.promoted320370.i.i.i.i = phi i64 [ %.promoted320368.i.i46.i.i, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRRNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureE6map_orNtNtB5_3cmp8OrderingNCNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB2k_10DifferenceBK_ENtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsfPYenFzdTHO_5uu_wc.exit.i.i.i.i.i ], [ %.promoted320370.i.i.i.i.ph, %_RNvXsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit46.thread.i.i.i.i.outer ] ; 2 uses
  %.promoted315361.i.i.i.i = phi ptr [ %.promoted315360.i.i47.i.i, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRRNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureE6map_orNtNtB5_3cmp8OrderingNCNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB2k_10DifferenceBK_ENtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsfPYenFzdTHO_5uu_wc.exit.i.i.i.i.i ], [ %.promoted315361.i.i.i.i.ph, %_RNvXsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit46.thread.i.i.i.i.outer ] ; 2 uses
  %.promoted355.i.i.i.i = phi i1 [ false, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRRNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureE6map_orNtNtB5_3cmp8OrderingNCNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB2k_10DifferenceBK_ENtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsfPYenFzdTHO_5uu_wc.exit.i.i.i.i.i ], [ %.promoted355.i.i.i.i.ph, %_RNvXsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit46.thread.i.i.i.i.outer ]
  %i.ok = phi ptr [ %i.qs, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRRNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureE6map_orNtNtB5_3cmp8OrderingNCNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB2k_10DifferenceBK_ENtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsfPYenFzdTHO_5uu_wc.exit.i.i.i.i.i ], [ %.ph2032.a, %_RNvXsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit46.thread.i.i.i.i.outer ] ; 2 uses
  %i.ol = phi i64 [ %i.qr, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRRNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureE6map_orNtNtB5_3cmp8OrderingNCNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB2k_10DifferenceBK_ENtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsfPYenFzdTHO_5uu_wc.exit.i.i.i.i.i ], [ %.ph2033, %_RNvXsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit46.thread.i.i.i.i.outer ] ; 3 uses
  %i.om = phi ptr [ %i.qq, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRRNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureE6map_orNtNtB5_3cmp8OrderingNCNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB2k_10DifferenceBK_ENtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsfPYenFzdTHO_5uu_wc.exit.i.i.i.i.i ], [ %.ph2034, %_RNvXsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit46.thread.i.i.i.i.outer ] ; 3 uses
  %i.on = phi i64 [ %i.qp, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRRNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureE6map_orNtNtB5_3cmp8OrderingNCNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB2k_10DifferenceBK_ENtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsfPYenFzdTHO_5uu_wc.exit.i.i.i.i.i ], [ %.ph2035, %_RNvXsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit46.thread.i.i.i.i.outer ] ; 3 uses
  %.pr.i317.i.i.i.i = phi ptr [ %.pr.i316.i.i48.i.i, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRRNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureE6map_orNtNtB5_3cmp8OrderingNCNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB2k_10DifferenceBK_ENtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsfPYenFzdTHO_5uu_wc.exit.i.i.i.i.i ], [ %.pr.i317.i.i.i.i.ph, %_RNvXsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit46.thread.i.i.i.i.outer ] ; 2 uses
  %i.oo = phi i64 [ %i.qo, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRRNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureE6map_orNtNtB5_3cmp8OrderingNCNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB2k_10DifferenceBK_ENtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsfPYenFzdTHO_5uu_wc.exit.i.i.i.i.i ], [ %.ph2037, %_RNvXsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit46.thread.i.i.i.i.outer ] ; 2 uses
  br i1 %.promoted355.i.i.i.i, label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_RNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2h_8PeekableINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set4IterBN_EE4peek0ECsfPYenFzdTHO_5uu_wc.exit.i.i.i.i.i, label %bb.bj

bb.bj:                                            ; preds = %_RNvXsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit46.thread.i.i.i.i
  %i.op = icmp eq i64 %i.on, 0
  br i1 %i.op, label %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250thread-pre-split.i.i.i.i.loopexit2026, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.oq = add i64 %i.on, -1                       ; 3 uses
  %i.or = trunc nuw i64 %i.oo to i1
  br i1 %i.or, label %bb.bl, label %.critedge.i84.i.i.i.i

bb.bl:                                            ; preds = %bb.bk
  %.not.i.i85.i.i.i.i = icmp eq ptr %i.om, null
  br i1 %.not.i.i85.i.i.i.i, label %bb.bm, label %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTE10init_frontCsfPYenFzdTHO_5uu_wc.exit.i90.i.i.i.i

bb.bm:                                            ; preds = %bb.bl
  %i.os = inttoptr i64 %.sroa.35.4.i.i to ptr     ; 3 uses
  %i.ot = icmp eq i64 %.sroa.78.0.i.i.i109686.i.i.i.i, 0
  br i1 %i.ot, label %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTE10init_frontCsfPYenFzdTHO_5uu_wc.exit.i90.i.i.i.i, label %.lr.ph.i.i114.i.i.i.i.preheader

.lr.ph.i.i114.i.i.i.i.preheader:                  ; preds = %bb.bm
  %xtraiter2249.a = and i64 %.sroa.78.0.i.i.i109686.i.i.i.i, 7 ; 2 uses
  %lcmp.mod2250.not.a = icmp eq i64 %xtraiter2249.a, 0
  br i1 %lcmp.mod2250.not.a, label %.lr.ph.i.i114.i.i.i.i.prol.loopexit, label %.lr.ph.i.i114.i.i.i.i.prol

.lr.ph.i.i114.i.i.i.i.prol:                       ; preds = %.lr.ph.i.i114.i.i.i.i.preheader, %.lr.ph.i.i114.i.i.i.i.prol
  %.sroa.013.017.i.i115.i.i.i.i.prol = phi ptr [ %.sroa.013.0.i.i117.i.i.i.i.prol, %.lr.ph.i.i114.i.i.i.i.prol ], [ %i.os, %.lr.ph.i.i114.i.i.i.i.preheader ]
  %.sroa.011.016.i.i116.i.i.i.i.prol = phi i64 [ %i.ov, %.lr.ph.i.i114.i.i.i.i.prol ], [ %.sroa.78.0.i.i.i109686.i.i.i.i, %.lr.ph.i.i114.i.i.i.i.preheader ]
  %prol.iter2251.a = phi i64 [ %prol.iter2251.next.a, %.lr.ph.i.i114.i.i.i.i.prol ], [ 0, %.lr.ph.i.i114.i.i.i.i.preheader ]
  %i.ou = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i115.i.i.i.i.prol, i64 24
  %i.ov = add i64 %.sroa.011.016.i.i116.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.013.0.i.i117.i.i.i.i.prol = load ptr, ptr %i.ou, align 8, !noalias !1232, !nonnull !7, !noundef !7 ; 3 uses
  %prol.iter2251.next.a = add i64 %prol.iter2251.a, 1 ; 2 uses
  %prol.iter2251.cmp.not.a = icmp eq i64 %prol.iter2251.next.a, %xtraiter2249.a
  br i1 %prol.iter2251.cmp.not.a, label %.lr.ph.i.i114.i.i.i.i.prol.loopexit, label %.lr.ph.i.i114.i.i.i.i.prol, !llvm.loop !1239

.lr.ph.i.i114.i.i.i.i.prol.loopexit:              ; preds = %.lr.ph.i.i114.i.i.i.i.prol, %.lr.ph.i.i114.i.i.i.i.preheader
  %.sroa.013.0.i.i117.i.i.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i114.i.i.i.i.preheader ], [ %.sroa.013.0.i.i117.i.i.i.i.prol, %.lr.ph.i.i114.i.i.i.i.prol ]
  %.sroa.013.017.i.i115.i.i.i.i.unr = phi ptr [ %i.os, %.lr.ph.i.i114.i.i.i.i.preheader ], [ %.sroa.013.0.i.i117.i.i.i.i.prol, %.lr.ph.i.i114.i.i.i.i.prol ]
  %.sroa.011.016.i.i116.i.i.i.i.unr = phi i64 [ %.sroa.78.0.i.i.i109686.i.i.i.i, %.lr.ph.i.i114.i.i.i.i.preheader ], [ %i.ov, %.lr.ph.i.i114.i.i.i.i.prol ]
  %i.ow = icmp ult i64 %.sroa.78.0.i.i.i109686.i.i.i.i, 8
  br i1 %i.ow, label %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTE10init_frontCsfPYenFzdTHO_5uu_wc.exit.i90.i.i.i.i, label %.lr.ph.i.i114.i.i.i.i

.lr.ph.i.i114.i.i.i.i:                            ; preds = %.lr.ph.i.i114.i.i.i.i.prol.loopexit, %.lr.ph.i.i114.i.i.i.i
  %.sroa.013.017.i.i115.i.i.i.i = phi ptr [ %.sroa.013.0.i.i117.i.i.i.i.7, %.lr.ph.i.i114.i.i.i.i ], [ %.sroa.013.017.i.i115.i.i.i.i.unr, %.lr.ph.i.i114.i.i.i.i.prol.loopexit ]
  %.sroa.011.016.i.i116.i.i.i.i = phi i64 [ %i.pf, %.lr.ph.i.i114.i.i.i.i ], [ %.sroa.011.016.i.i116.i.i.i.i.unr, %.lr.ph.i.i114.i.i.i.i.prol.loopexit ]
  %i.ox = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i115.i.i.i.i, i64 24
  %.sroa.013.0.i.i117.i.i.i.i = load ptr, ptr %i.ox, align 8, !noalias !1232, !nonnull !7, !noundef !7
  %i.oy = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i117.i.i.i.i, i64 24
  %.sroa.013.0.i.i117.i.i.i.i.1 = load ptr, ptr %i.oy, align 8, !noalias !1232, !nonnull !7, !noundef !7
  %i.oz = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i117.i.i.i.i.1, i64 24
  %.sroa.013.0.i.i117.i.i.i.i.2 = load ptr, ptr %i.oz, align 8, !noalias !1232, !nonnull !7, !noundef !7
  %i.pa = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i117.i.i.i.i.2, i64 24
  %.sroa.013.0.i.i117.i.i.i.i.3 = load ptr, ptr %i.pa, align 8, !noalias !1232, !nonnull !7, !noundef !7
  %i.pb = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i117.i.i.i.i.3, i64 24
  %.sroa.013.0.i.i117.i.i.i.i.4 = load ptr, ptr %i.pb, align 8, !noalias !1232, !nonnull !7, !noundef !7
  %i.pc = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i117.i.i.i.i.4, i64 24
  %.sroa.013.0.i.i117.i.i.i.i.5 = load ptr, ptr %i.pc, align 8, !noalias !1232, !nonnull !7, !noundef !7
  %i.pd = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i117.i.i.i.i.5, i64 24
  %.sroa.013.0.i.i117.i.i.i.i.6 = load ptr, ptr %i.pd, align 8, !noalias !1232, !nonnull !7, !noundef !7
  %i.pe = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i117.i.i.i.i.6, i64 24
  %i.pf = add i64 %.sroa.011.016.i.i116.i.i.i.i, -8 ; 2 uses
  %.sroa.013.0.i.i117.i.i.i.i.7 = load ptr, ptr %i.pe, align 8, !noalias !1232, !nonnull !7, !noundef !7 ; 2 uses
  %i.pg = icmp eq i64 %i.pf, 0
  br i1 %i.pg, label %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTE10init_frontCsfPYenFzdTHO_5uu_wc.exit.i90.i.i.i.i, label %.lr.ph.i.i114.i.i.i.i

_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTE10init_frontCsfPYenFzdTHO_5uu_wc.exit.i90.i.i.i.i: ; preds = %.lr.ph.i.i114.i.i.i.i.prol.loopexit, %.lr.ph.i.i114.i.i.i.i, %bb.bm, %bb.bl
  %i.ph = phi i64 [ 1, %bb.bm ], [ %i.oi, %bb.bl ], [ 1, %.lr.ph.i.i114.i.i.i.i ], [ 1, %.lr.ph.i.i114.i.i.i.i.prol.loopexit ]
  %i.pi = phi i64 [ 1, %bb.bm ], [ %i.ol, %bb.bl ], [ 1, %.lr.ph.i.i114.i.i.i.i ], [ 1, %.lr.ph.i.i114.i.i.i.i.prol.loopexit ]
  %.sroa.59.0.copyload.i.i91.i.i.i.i = phi i64 [ 0, %bb.bm ], [ %.sroa.78.0.i.i.i109686.i.i.i.i, %bb.bl ], [ 0, %.lr.ph.i.i114.i.i.i.i ], [ 0, %.lr.ph.i.i114.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.48.0.copyload.i.i92.i.i.i.i = phi i64 [ 0, %bb.bm ], [ %.sroa.35.4.i.i, %bb.bl ], [ 0, %.lr.ph.i.i114.i.i.i.i ], [ 0, %.lr.ph.i.i114.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.07.0.copyload.i.i93.i.i.i.i = phi ptr [ %i.os, %bb.bm ], [ %i.om, %bb.bl ], [ %.sroa.013.0.i.i117.i.i.i.i.lcssa.unr, %.lr.ph.i.i114.i.i.i.i.prol.loopexit ], [ %.sroa.013.0.i.i117.i.i.i.i.7, %.lr.ph.i.i114.i.i.i.i ] ; 3 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload.i.i93.i.i.i.i, i64 10
  %i.pk = load i16, ptr %i.pj, align 2, !noalias !1240, !noundef !7
  %i.pl = zext i16 %i.pk to i64
  %i.pm = icmp ult i64 %.sroa.59.0.copyload.i.i91.i.i.i.i, %i.pl
  br i1 %i.pm, label %bb.bp, label %.lr.ph.i.i.i.i96.i.i.i.i

.lr.ph.i.i.i.i96.i.i.i.i:                         ; preds = %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTE10init_frontCsfPYenFzdTHO_5uu_wc.exit.i90.i.i.i.i, %bb.bn
  %.sroa.0.022.i.i.i.i97.i.i.i.i = phi ptr [ %i.pn, %bb.bn ], [ %.sroa.07.0.copyload.i.i93.i.i.i.i, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTE10init_frontCsfPYenFzdTHO_5uu_wc.exit.i90.i.i.i.i ] ; 2 uses
  %.sroa.5.021.i.i.i.i98.i.i.i.i = phi i64 [ %i.pp, %bb.bn ], [ %.sroa.48.0.copyload.i.i92.i.i.i.i, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTE10init_frontCsfPYenFzdTHO_5uu_wc.exit.i90.i.i.i.i ]
  %i.pn = load ptr, ptr %.sroa.0.022.i.i.i.i97.i.i.i.i, align 8, !noalias !1249, !noundef !7 ; 4 uses
  %.not.i.i.i.i.i99.i.i.i.i = icmp eq ptr %i.pn, null
  br i1 %.not.i.i.i.i.i99.i.i.i.i, label %bb.bo, label %bb.bn

._crit_edge.loopexit.i.i.i.i100.i.i.i.i:          ; preds = %bb.bn
  %i.po = zext i16 %i.pr to i64
  br label %bb.bp

bb.bn:                                            ; preds = %.lr.ph.i.i.i.i96.i.i.i.i
  %i.pp = add i64 %.sroa.5.021.i.i.i.i98.i.i.i.i, 1 ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i97.i.i.i.i, i64 8
  %i.pr = load i16, ptr %i.pq, align 8, !noalias !1249 ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pn, i64 10
  %i.pt = load i16, ptr %i.ps, align 2, !noalias !1240, !noundef !7
  %i.pu = icmp ult i16 %i.pr, %i.pt
  br i1 %i.pu, label %._crit_edge.loopexit.i.i.i.i100.i.i.i.i, label %.lr.ph.i.i.i.i96.i.i.i.i

bb.bo:                                            ; preds = %.lr.ph.i.i.i.i96.i.i.i.i
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #29, !noalias !1252
  unreachable

bb.bp:                                            ; preds = %._crit_edge.loopexit.i.i.i.i100.i.i.i.i, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTE10init_frontCsfPYenFzdTHO_5uu_wc.exit.i90.i.i.i.i
  %.sroa.10.0.ph.i.i.i101.i.i.i.i = phi i64 [ %i.po, %._crit_edge.loopexit.i.i.i.i100.i.i.i.i ], [ %.sroa.59.0.copyload.i.i91.i.i.i.i, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTE10init_frontCsfPYenFzdTHO_5uu_wc.exit.i90.i.i.i.i ] ; 5 uses
  %.sroa.7.0.ph.i.i.i102.i.i.i.i = phi i64 [ %i.pp, %._crit_edge.loopexit.i.i.i.i100.i.i.i.i ], [ %.sroa.48.0.copyload.i.i92.i.i.i.i, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTE10init_frontCsfPYenFzdTHO_5uu_wc.exit.i90.i.i.i.i ] ; 5 uses
  %.sroa.06.0.ph.i.i.i103.i.i.i.i = phi ptr [ %i.pn, %._crit_edge.loopexit.i.i.i.i100.i.i.i.i ], [ %.sroa.07.0.copyload.i.i93.i.i.i.i, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTE10init_frontCsfPYenFzdTHO_5uu_wc.exit.i90.i.i.i.i ] ; 3 uses
  %i.pv = icmp eq i64 %.sroa.7.0.ph.i.i.i102.i.i.i.i, 0
  br i1 %i.pv, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.pw = add nuw nsw i64 %.sroa.10.0.ph.i.i.i101.i.i.i.i, 1
  br label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_RNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2h_8PeekableINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set4IterBN_EE4peek0ECsfPYenFzdTHO_5uu_wc.exit.i.i.i.thread27.i.i

bb.br:                                            ; preds = %bb.bp
  %i.px = icmp samesign ult i64 %.sroa.10.0.ph.i.i.i101.i.i.i.i, 11
  call void @llvm.assume(i1 %i.px), !noalias !1253
  %i.py = getelementptr i8, ptr %.sroa.06.0.ph.i.i.i103.i.i.i.i, i64 32
  %i.pz = getelementptr [8 x i8], ptr %i.py, i64 %.sroa.10.0.ph.i.i.i101.i.i.i.i ; 2 uses
  %xtraiter2255 = and i64 %.sroa.7.0.ph.i.i.i102.i.i.i.i, 7 ; 2 uses
  %lcmp.mod2256.not = icmp eq i64 %xtraiter2255, 0
  br i1 %lcmp.mod2256.not, label %.prol.loopexit2253.a, label %.prol.preheader2252.a

.prol.preheader2252.a:                            ; preds = %bb.br, %.prol.preheader2252.a
  %.sroa.017.0.in.i.i.i.i104.i.i.i.i.prol = phi ptr [ %i.qa, %.prol.preheader2252.a ], [ %i.pz, %bb.br ]
  %.sroa.019.0.in.i.i.i.i105.i.i.i.i.prol = phi i64 [ %.sroa.019.0.i.i.i.i106.i.i.i.i.prol, %.prol.preheader2252.a ], [ %.sroa.7.0.ph.i.i.i102.i.i.i.i, %bb.br ]
  %prol.iter2257 = phi i64 [ %prol.iter2257.next, %.prol.preheader2252.a ], [ 0, %bb.br ]
  %.sroa.019.0.i.i.i.i106.i.i.i.i.prol = add i64 %.sroa.019.0.in.i.i.i.i105.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.017.0.i.i.i.i107.i.i.i.i.prol = load ptr, ptr %.sroa.017.0.in.i.i.i.i104.i.i.i.i.prol, align 8, !noalias !1254, !nonnull !7, !noundef !7 ; 2 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i107.i.i.i.i.prol, i64 24 ; 2 uses
  %prol.iter2257.next = add i64 %prol.iter2257, 1 ; 2 uses
  %prol.iter2257.cmp.not = icmp eq i64 %prol.iter2257.next, %xtraiter2255
  br i1 %prol.iter2257.cmp.not, label %.prol.loopexit2253.a, label %.prol.preheader2252.a, !llvm.loop !1258

.prol.loopexit2253.a:                             ; preds = %.prol.preheader2252.a, %bb.br
  %.sroa.017.0.i.i.i.i107.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.br ], [ %.sroa.017.0.i.i.i.i107.i.i.i.i.prol, %.prol.preheader2252.a ]
  %.sroa.017.0.in.i.i.i.i104.i.i.i.i.unr = phi ptr [ %i.pz, %bb.br ], [ %i.qa, %.prol.preheader2252.a ]
  %.sroa.019.0.in.i.i.i.i105.i.i.i.i.unr = phi i64 [ %.sroa.7.0.ph.i.i.i102.i.i.i.i, %bb.br ], [ %.sroa.019.0.i.i.i.i106.i.i.i.i.prol, %.prol.preheader2252.a ]
  %i.qb = icmp ult i64 %.sroa.7.0.ph.i.i.i102.i.i.i.i, 8
  br i1 %i.qb, label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_RNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2h_8PeekableINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set4IterBN_EE4peek0ECsfPYenFzdTHO_5uu_wc.exit.i.i.i.thread27.i.i, label %.new2254.a

.new2254.a:                                       ; preds = %.prol.loopexit2253.a, %.new2254.a
  %.sroa.017.0.in.i.i.i.i104.i.i.i.i = phi ptr [ %i.qk, %.new2254.a ], [ %.sroa.017.0.in.i.i.i.i104.i.i.i.i.unr, %.prol.loopexit2253.a ]
  %.sroa.019.0.in.i.i.i.i105.i.i.i.i = phi i64 [ %.sroa.019.0.i.i.i.i106.i.i.i.i.7, %.new2254.a ], [ %.sroa.019.0.in.i.i.i.i105.i.i.i.i.unr, %.prol.loopexit2253.a ]
  %.sroa.017.0.i.i.i.i107.i.i.i.i = load ptr, ptr %.sroa.017.0.in.i.i.i.i104.i.i.i.i, align 8, !noalias !1254, !nonnull !7, !noundef !7
  %i.qc = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i107.i.i.i.i, i64 24
  %.sroa.017.0.i.i.i.i107.i.i.i.i.1 = load ptr, ptr %i.qc, align 8, !noalias !1254, !nonnull !7, !noundef !7
  %i.qd = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i107.i.i.i.i.1, i64 24
  %.sroa.017.0.i.i.i.i107.i.i.i.i.2 = load ptr, ptr %i.qd, align 8, !noalias !1254, !nonnull !7, !noundef !7
  %i.qe = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i107.i.i.i.i.2, i64 24
  %.sroa.017.0.i.i.i.i107.i.i.i.i.3 = load ptr, ptr %i.qe, align 8, !noalias !1254, !nonnull !7, !noundef !7
  %i.qf = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i107.i.i.i.i.3, i64 24
  %.sroa.017.0.i.i.i.i107.i.i.i.i.4 = load ptr, ptr %i.qf, align 8, !noalias !1254, !nonnull !7, !noundef !7
  %i.qg = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i107.i.i.i.i.4, i64 24
  %.sroa.017.0.i.i.i.i107.i.i.i.i.5 = load ptr, ptr %i.qg, align 8, !noalias !1254, !nonnull !7, !noundef !7
  %i.qh = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i107.i.i.i.i.5, i64 24
  %.sroa.017.0.i.i.i.i107.i.i.i.i.6 = load ptr, ptr %i.qh, align 8, !noalias !1254, !nonnull !7, !noundef !7
  %i.qi = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i107.i.i.i.i.6, i64 24
  %.sroa.019.0.i.i.i.i106.i.i.i.i.7 = add i64 %.sroa.019.0.in.i.i.i.i105.i.i.i.i, -8 ; 2 uses
  %.sroa.017.0.i.i.i.i107.i.i.i.i.7 = load ptr, ptr %i.qi, align 8, !noalias !1254, !nonnull !7, !noundef !7 ; 2 uses
  %i.qj = icmp eq i64 %.sroa.019.0.i.i.i.i106.i.i.i.i.7, 0
  %i.qk = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i107.i.i.i.i.7, i64 24
  br i1 %i.qj, label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_RNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2h_8PeekableINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set4IterBN_EE4peek0ECsfPYenFzdTHO_5uu_wc.exit.i.i.i.thread27.i.i, label %.new2254.a

_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_RNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2h_8PeekableINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set4IterBN_EE4peek0ECsfPYenFzdTHO_5uu_wc.exit.i.i.i.thread27.i.i: ; preds = %.prol.loopexit2253.a, %.new2254.a, %bb.bq
  %.sroa.78.0.i.i.i109.i.i.i.i = phi i64 [ %i.pw, %bb.bq ], [ 0, %.new2254.a ], [ 0, %.prol.loopexit2253.a ] ; 3 uses
  %.sroa.07.0.i.i.i110.i.i.i.i = phi ptr [ %.sroa.06.0.ph.i.i.i103.i.i.i.i, %bb.bq ], [ %.sroa.017.0.i.i.i.i107.i.i.i.i.lcssa.unr, %.prol.loopexit2253.a ], [ %.sroa.017.0.i.i.i.i107.i.i.i.i.7, %.new2254.a ] ; 3 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %.sroa.06.0.ph.i.i.i103.i.i.i.i, i64 12
  %i.qm = icmp samesign ult i64 %.sroa.10.0.ph.i.i.i101.i.i.i.i, 11
  call void @llvm.assume(i1 %i.qm), !noalias !1253
  %i.qn = getelementptr inbounds nuw i8, ptr %i.ql, i64 %.sroa.10.0.ph.i.i.i101.i.i.i.i ; 3 uses
  br label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRRNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureE6map_orNtNtB5_3cmp8OrderingNCNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB2k_10DifferenceBK_ENtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsfPYenFzdTHO_5uu_wc.exit.i.i.i.i.i

.critedge.i84.i.i.i.i:                            ; preds = %bb.bk
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @156) #29, !noalias !1259
  unreachable

_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_RNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2h_8PeekableINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set4IterBN_EE4peek0ECsfPYenFzdTHO_5uu_wc.exit.i.i.i.i.i: ; preds = %_RNvXsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit46.thread.i.i.i.i
  %.not42.i.i.i.i.i = icmp eq ptr %.pr.i317.i.i.i.i, null
  br i1 %.not42.i.i.i.i.i, label %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250thread-pre-split.i.i.i.i.loopexit2026, label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRRNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureE6map_orNtNtB5_3cmp8OrderingNCNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB2k_10DifferenceBK_ENtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsfPYenFzdTHO_5uu_wc.exit.i.i.i.i.i

_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRRNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureE6map_orNtNtB5_3cmp8OrderingNCNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB2k_10DifferenceBK_ENtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsfPYenFzdTHO_5uu_wc.exit.i.i.i.i.i: ; preds = %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_RNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2h_8PeekableINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set4IterBN_EE4peek0ECsfPYenFzdTHO_5uu_wc.exit.i.i.i.i.i, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_RNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2h_8PeekableINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set4IterBN_EE4peek0ECsfPYenFzdTHO_5uu_wc.exit.i.i.i.thread27.i.i
  %i.qo = phi i64 [ 1, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_RNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2h_8PeekableINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set4IterBN_EE4peek0ECsfPYenFzdTHO_5uu_wc.exit.i.i.i.thread27.i.i ], [ %i.oo, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_RNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2h_8PeekableINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set4IterBN_EE4peek0ECsfPYenFzdTHO_5uu_wc.exit.i.i.i.i.i ] ; 2 uses
  %.pr.i316.i.i48.i.i = phi ptr [ %i.qn, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_RNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2h_8PeekableINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set4IterBN_EE4peek0ECsfPYenFzdTHO_5uu_wc.exit.i.i.i.thread27.i.i ], [ %.pr.i317.i.i.i.i, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_RNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2h_8PeekableINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set4IterBN_EE4peek0ECsfPYenFzdTHO_5uu_wc.exit.i.i.i.i.i ] ; 3 uses
  %i.qp = phi i64 [ %i.oq, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_RNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2h_8PeekableINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set4IterBN_EE4peek0ECsfPYenFzdTHO_5uu_wc.exit.i.i.i.thread27.i.i ], [ %i.on, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_RNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2h_8PeekableINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set4IterBN_EE4peek0ECsfPYenFzdTHO_5uu_wc.exit.i.i.i.i.i ] ; 2 uses
  %i.qq = phi ptr [ %.sroa.07.0.i.i.i110.i.i.i.i, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_RNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2h_8PeekableINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set4IterBN_EE4peek0ECsfPYenFzdTHO_5uu_wc.exit.i.i.i.thread27.i.i ], [ %i.om, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_RNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2h_8PeekableINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set4IterBN_EE4peek0ECsfPYenFzdTHO_5uu_wc.exit.i.i.i.i.i ] ; 2 uses
  %i.qr = phi i64 [ %i.pi, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_RNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2h_8PeekableINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set4IterBN_EE4peek0ECsfPYenFzdTHO_5uu_wc.exit.i.i.i.thread27.i.i ], [ %i.ol, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_RNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2h_8PeekableINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set4IterBN_EE4peek0ECsfPYenFzdTHO_5uu_wc.exit.i.i.i.i.i ] ; 3 uses
  %i.qs = phi ptr [ %.sroa.07.0.i.i.i110.i.i.i.i, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_RNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2h_8PeekableINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set4IterBN_EE4peek0ECsfPYenFzdTHO_5uu_wc.exit.i.i.i.thread27.i.i ], [ %i.ok, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_RNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2h_8PeekableINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set4IterBN_EE4peek0ECsfPYenFzdTHO_5uu_wc.exit.i.i.i.i.i ] ; 3 uses
  %.promoted315360.i.i47.i.i = phi ptr [ %i.qn, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_RNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2h_8PeekableINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set4IterBN_EE4peek0ECsfPYenFzdTHO_5uu_wc.exit.i.i.i.thread27.i.i ], [ %.promoted315361.i.i.i.i, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_RNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2h_8PeekableINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set4IterBN_EE4peek0ECsfPYenFzdTHO_5uu_wc.exit.i.i.i.i.i ] ; 3 uses
  %.promoted320368.i.i46.i.i = phi i64 [ %i.oq, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_RNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2h_8PeekableINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set4IterBN_EE4peek0ECsfPYenFzdTHO_5uu_wc.exit.i.i.i.thread27.i.i ], [ %.promoted320370.i.i.i.i, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_RNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2h_8PeekableINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set4IterBN_EE4peek0ECsfPYenFzdTHO_5uu_wc.exit.i.i.i.i.i ] ; 3 uses
  %i.qt = phi i64 [ 1, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_RNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2h_8PeekableINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set4IterBN_EE4peek0ECsfPYenFzdTHO_5uu_wc.exit.i.i.i.thread27.i.i ], [ %i.oj, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_RNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2h_8PeekableINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set4IterBN_EE4peek0ECsfPYenFzdTHO_5uu_wc.exit.i.i.i.i.i ]
  %.sroa.78.0.i.i.i109685.i.i45.i.i = phi i64 [ %.sroa.78.0.i.i.i109.i.i.i.i, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_RNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2h_8PeekableINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set4IterBN_EE4peek0ECsfPYenFzdTHO_5uu_wc.exit.i.i.i.thread27.i.i ], [ %.sroa.78.0.i.i.i109686.i.i.i.i, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_RNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2h_8PeekableINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set4IterBN_EE4peek0ECsfPYenFzdTHO_5uu_wc.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.59.0..sroa_idx.i.phi.trans.insert.i88.promoted694.i.i44.i.i = phi i64 [ %.sroa.78.0.i.i.i109.i.i.i.i, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_RNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2h_8PeekableINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set4IterBN_EE4peek0ECsfPYenFzdTHO_5uu_wc.exit.i.i.i.thread27.i.i ], [ %.sroa.59.0..sroa_idx.i.phi.trans.insert.i88.promoted695.i.i.i.i, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_RNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2h_8PeekableINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set4IterBN_EE4peek0ECsfPYenFzdTHO_5uu_wc.exit.i.i.i.i.i ] ; 3 uses
  %i.qu = phi i64 [ %i.ph, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_RNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2h_8PeekableINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set4IterBN_EE4peek0ECsfPYenFzdTHO_5uu_wc.exit.i.i.i.thread27.i.i ], [ %i.oi, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_RNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2h_8PeekableINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set4IterBN_EE4peek0ECsfPYenFzdTHO_5uu_wc.exit.i.i.i.i.i ] ; 3 uses
  %.sroa.07.0.i.i.i110717.i.i43.i.i = phi ptr [ %.sroa.07.0.i.i.i110.i.i.i.i, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_RNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2h_8PeekableINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set4IterBN_EE4peek0ECsfPYenFzdTHO_5uu_wc.exit.i.i.i.thread27.i.i ], [ %.sroa.07.0.i.i.i110718.i.i.i.i, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_RNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2h_8PeekableINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set4IterBN_EE4peek0ECsfPYenFzdTHO_5uu_wc.exit.i.i.i.i.i ] ; 3 uses
  %i.qv = phi i64 [ 1, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_RNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2h_8PeekableINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set4IterBN_EE4peek0ECsfPYenFzdTHO_5uu_wc.exit.i.i.i.thread27.i.i ], [ %i.oh, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_RNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2h_8PeekableINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set4IterBN_EE4peek0ECsfPYenFzdTHO_5uu_wc.exit.i.i.i.i.i ]
  %.promoted730.i.i42.i.i = phi ptr [ %i.qn, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_RNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2h_8PeekableINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set4IterBN_EE4peek0ECsfPYenFzdTHO_5uu_wc.exit.i.i.i.thread27.i.i ], [ %.promoted731.i.i.i.i, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_RNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2h_8PeekableINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set4IterBN_EE4peek0ECsfPYenFzdTHO_5uu_wc.exit.i.i.i.i.i ] ; 3 uses
  %.promoted363737.i.i41.i.i = phi i64 [ %i.oq, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_RNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2h_8PeekableINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set4IterBN_EE4peek0ECsfPYenFzdTHO_5uu_wc.exit.i.i.i.thread27.i.i ], [ %.promoted363738.i.i.i.i, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_RNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2h_8PeekableINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set4IterBN_EE4peek0ECsfPYenFzdTHO_5uu_wc.exit.i.i.i.i.i ] ; 3 uses
  %.sroa.59.0..sroa_idx.i.phi.trans.insert.i88.promoted690749.i.i40.i.i = phi i64 [ %.sroa.78.0.i.i.i109.i.i.i.i, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_RNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2h_8PeekableINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set4IterBN_EE4peek0ECsfPYenFzdTHO_5uu_wc.exit.i.i.i.thread27.i.i ], [ %.sroa.59.0..sroa_idx.i.phi.trans.insert.i88.promoted690750.i.i.i.i, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_RNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2h_8PeekableINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set4IterBN_EE4peek0ECsfPYenFzdTHO_5uu_wc.exit.i.i.i.i.i ] ; 3 uses
  %.sroa.35.539.i.i = phi i64 [ 0, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_RNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2h_8PeekableINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set4IterBN_EE4peek0ECsfPYenFzdTHO_5uu_wc.exit.i.i.i.thread27.i.i ], [ %.sroa.35.4.i.i, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_RNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2h_8PeekableINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set4IterBN_EE4peek0ECsfPYenFzdTHO_5uu_wc.exit.i.i.i.i.i ] ; 3 uses
  %.sroa.06.0.val.i.i.i.i.i = load i8, ptr %.sroa.06.0.i.i.i.i.i.ph, align 1, !noalias !1181 ; 2 uses
  %.val1.i.i.i.i.i.i.i = load i8, ptr %.pr.i316.i.i48.i.i, align 1, !range !439, !noalias !1260, !noundef !7
  %i.qw = call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i8(i8 %.sroa.06.0.val.i.i.i.i.i, i8 %.val1.i.i.i.i.i.i.i)
  switch i8 %i.qw, label %.loopexit.i.i.i.i.i [
    i8 -1, label %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250.i.i.i.i.loopexit
    i8 0, label %bb.bs
    i8 1, label %_RNvXsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit46.thread.i.i.i.i
  ]

bb.bs:                                            ; preds = %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRRNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureE6map_orNtNtB5_3cmp8OrderingNCNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB2k_10DifferenceBK_ENtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsfPYenFzdTHO_5uu_wc.exit.i.i.i.i.i
  %i.qx = icmp eq i64 %.ph2036, 0
  br i1 %i.qx, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filter6FilterINtNtB2i_6copied6CopiedINtNtNtNtB6_11collections5btree3set10DifferenceBR_EENCNvCsfPYenFzdTHO_5uu_wc16wc_simd_features0EE11spec_extendB4o_.exit.i.i, label %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTE10init_frontCsfPYenFzdTHO_5uu_wc.exit.i53.i.i.i.i

_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTE10init_frontCsfPYenFzdTHO_5uu_wc.exit.i53.i.i.i.i: ; preds = %bb.bs
  %i.qy = getelementptr inbounds nuw i8, ptr %.sroa.013.0.lcssa.i.i82324.i.i.i.i.ph, i64 10
  %i.qz = load i16, ptr %i.qy, align 2, !noalias !1263, !noundef !7
  %i.ra = zext i16 %i.qz to i64
  %i.rb = icmp ult i64 %.ph2031.a, %i.ra
  br i1 %i.rb, label %.thread.i.i.i.i, label %.lr.ph.i.i.i.i59.i.i.i.i

.lr.ph.i.i.i.i59.i.i.i.i:                         ; preds = %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTE10init_frontCsfPYenFzdTHO_5uu_wc.exit.i53.i.i.i.i, %bb.bt
  %.sroa.0.022.i.i.i.i60.i.i.i.i = phi ptr [ %i.rc, %bb.bt ], [ %.sroa.013.0.lcssa.i.i82324.i.i.i.i.ph, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTE10init_frontCsfPYenFzdTHO_5uu_wc.exit.i53.i.i.i.i ] ; 2 uses
  %.sroa.5.021.i.i.i.i61.i.i.i.i = phi i64 [ %i.rd, %bb.bt ], [ 0, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTE10init_frontCsfPYenFzdTHO_5uu_wc.exit.i53.i.i.i.i ] ; 2 uses
  %i.rc = load ptr, ptr %.sroa.0.022.i.i.i.i60.i.i.i.i, align 8, !noalias !1274, !noundef !7 ; 7 uses
  %.not.i.i.i.i.i62.i.i.i.i = icmp eq ptr %i.rc, null
  br i1 %.not.i.i.i.i.i62.i.i.i.i, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %.lr.ph.i.i.i.i59.i.i.i.i
  %i.rd = add i64 %.sroa.5.021.i.i.i.i61.i.i.i.i, 1 ; 5 uses
  %i.re = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i60.i.i.i.i, i64 8
  %i.rf = load i16, ptr %i.re, align 8, !noalias !1274 ; 3 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rc, i64 10
  %i.rh = load i16, ptr %i.rg, align 2, !noalias !1263, !noundef !7
  %i.ri = icmp ult i16 %i.rf, %i.rh
  br i1 %i.ri, label %bb.bv, label %.lr.ph.i.i.i.i59.i.i.i.i

bb.bu:                                            ; preds = %.lr.ph.i.i.i.i59.i.i.i.i
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #29, !noalias !1277
  unreachable

bb.bv:                                            ; preds = %bb.bt
  %i.rj = zext i16 %i.rf to i64                   ; 4 uses
  %i.rk = icmp eq i64 %i.rd, 0
  br i1 %i.rk, label %.thread.i.i.i.i, label %bb.bw

.thread.i.i.i.i:                                  ; preds = %bb.bv, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTE10init_frontCsfPYenFzdTHO_5uu_wc.exit.i53.i.i.i.i
  %.sroa.06.0.ph.i.i.i66584.i.i.i.i.a = phi ptr [ %i.rc, %bb.bv ], [ %.sroa.013.0.lcssa.i.i82324.i.i.i.i.ph, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTE10init_frontCsfPYenFzdTHO_5uu_wc.exit.i53.i.i.i.i ] ; 2 uses
  %.sroa.10.0.ph.i.i.i64582.i.i.i.i.a = phi i64 [ %i.rj, %bb.bv ], [ %.ph2031.a, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTE10init_frontCsfPYenFzdTHO_5uu_wc.exit.i53.i.i.i.i ] ; 2 uses
  %i.rl = add nuw nsw i64 %.sroa.10.0.ph.i.i.i64582.i.i.i.i.a, 1
  br label %.loopexit259.i.i.i.i

bb.bw:                                            ; preds = %bb.bv
  %i.rm = icmp ult i16 %i.rf, 11
  call void @llvm.assume(i1 %i.rm)
  %i.rn = getelementptr i8, ptr %i.rc, i64 32
  %i.ro = getelementptr [8 x i8], ptr %i.rn, i64 %i.rj ; 2 uses
  %xtraiter2262.a = and i64 %i.rd, 7              ; 2 uses
  %lcmp.mod2263.not = icmp eq i64 %xtraiter2262.a, 0
  br i1 %lcmp.mod2263.not, label %.prol.loopexit2259, label %.prol.preheader2258

.prol.preheader2258:                              ; preds = %bb.bw, %.prol.preheader2258
  %.sroa.017.0.in.i.i.i.i67.i.i.i.i.prol = phi ptr [ %i.rp, %.prol.preheader2258 ], [ %i.ro, %bb.bw ]
  %.sroa.019.0.in.i.i.i.i68.i.i.i.i.prol = phi i64 [ %.sroa.019.0.i.i.i.i69.i.i.i.i.prol, %.prol.preheader2258 ], [ %i.rd, %bb.bw ]
  %prol.iter2264 = phi i64 [ %prol.iter2264.next, %.prol.preheader2258 ], [ 0, %bb.bw ]
  %.sroa.019.0.i.i.i.i69.i.i.i.i.prol = add i64 %.sroa.019.0.in.i.i.i.i68.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.017.0.i.i.i.i70.i.i.i.i.prol = load ptr, ptr %.sroa.017.0.in.i.i.i.i67.i.i.i.i.prol, align 8, !noalias !1278, !nonnull !7, !noundef !7 ; 2 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i70.i.i.i.i.prol, i64 24 ; 2 uses
  %prol.iter2264.next = add i64 %prol.iter2264, 1 ; 2 uses
  %prol.iter2264.cmp.not = icmp eq i64 %prol.iter2264.next, %xtraiter2262.a
  br i1 %prol.iter2264.cmp.not, label %.prol.loopexit2259, label %.prol.preheader2258, !llvm.loop !1282

.prol.loopexit2259:                               ; preds = %.prol.preheader2258, %bb.bw
  %.sroa.017.0.i.i.i.i70.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.bw ], [ %.sroa.017.0.i.i.i.i70.i.i.i.i.prol, %.prol.preheader2258 ]
  %.sroa.017.0.in.i.i.i.i67.i.i.i.i.unr = phi ptr [ %i.ro, %bb.bw ], [ %i.rp, %.prol.preheader2258 ]
  %.sroa.019.0.in.i.i.i.i68.i.i.i.i.unr = phi i64 [ %i.rd, %bb.bw ], [ %.sroa.019.0.i.i.i.i69.i.i.i.i.prol, %.prol.preheader2258 ]
  %i.rq = icmp ult i64 %.sroa.5.021.i.i.i.i61.i.i.i.i, 7
  br i1 %i.rq, label %.loopexit259.i.i.i.i, label %.new2260

.new2260:                                         ; preds = %.prol.loopexit2259, %.new2260
  %.sroa.017.0.in.i.i.i.i67.i.i.i.i = phi ptr [ %i.rz, %.new2260 ], [ %.sroa.017.0.in.i.i.i.i67.i.i.i.i.unr, %.prol.loopexit2259 ]
  %.sroa.019.0.in.i.i.i.i68.i.i.i.i = phi i64 [ %.sroa.019.0.i.i.i.i69.i.i.i.i.7, %.new2260 ], [ %.sroa.019.0.in.i.i.i.i68.i.i.i.i.unr, %.prol.loopexit2259 ]
  %.sroa.017.0.i.i.i.i70.i.i.i.i = load ptr, ptr %.sroa.017.0.in.i.i.i.i67.i.i.i.i, align 8, !noalias !1278, !nonnull !7, !noundef !7
  %i.rr = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i70.i.i.i.i, i64 24
  %.sroa.017.0.i.i.i.i70.i.i.i.i.1 = load ptr, ptr %i.rr, align 8, !noalias !1278, !nonnull !7, !noundef !7
  %i.rs = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i70.i.i.i.i.1, i64 24
  %.sroa.017.0.i.i.i.i70.i.i.i.i.2 = load ptr, ptr %i.rs, align 8, !noalias !1278, !nonnull !7, !noundef !7
  %i.rt = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i70.i.i.i.i.2, i64 24
  %.sroa.017.0.i.i.i.i70.i.i.i.i.3 = load ptr, ptr %i.rt, align 8, !noalias !1278, !nonnull !7, !noundef !7
  %i.ru = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i70.i.i.i.i.3, i64 24
  %.sroa.017.0.i.i.i.i70.i.i.i.i.4 = load ptr, ptr %i.ru, align 8, !noalias !1278, !nonnull !7, !noundef !7
  %i.rv = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i70.i.i.i.i.4, i64 24
  %.sroa.017.0.i.i.i.i70.i.i.i.i.5 = load ptr, ptr %i.rv, align 8, !noalias !1278, !nonnull !7, !noundef !7
  %i.rw = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i70.i.i.i.i.5, i64 24
  %.sroa.017.0.i.i.i.i70.i.i.i.i.6 = load ptr, ptr %i.rw, align 8, !noalias !1278, !nonnull !7, !noundef !7
  %i.rx = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i70.i.i.i.i.6, i64 24
  %.sroa.019.0.i.i.i.i69.i.i.i.i.7 = add i64 %.sroa.019.0.in.i.i.i.i68.i.i.i.i, -8 ; 2 uses
  %.sroa.017.0.i.i.i.i70.i.i.i.i.7 = load ptr, ptr %i.rx, align 8, !noalias !1278, !nonnull !7, !noundef !7 ; 2 uses
  %i.ry = icmp eq i64 %.sroa.019.0.i.i.i.i69.i.i.i.i.7, 0
  %i.rz = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i70.i.i.i.i.7, i64 24
  br i1 %i.ry, label %.loopexit259.i.i.i.i, label %.new2260

.loopexit259.i.i.i.i:                             ; preds = %.prol.loopexit2259, %.new2260, %.thread.i.i.i.i
  %.sroa.06.0.ph.i.i.i66583.i.i.i.i = phi ptr [ %.sroa.06.0.ph.i.i.i66584.i.i.i.i.a, %.thread.i.i.i.i ], [ %i.rc, %.new2260 ], [ %i.rc, %.prol.loopexit2259 ]
  %.sroa.10.0.ph.i.i.i64581.i.i.i.i = phi i64 [ %.sroa.10.0.ph.i.i.i64582.i.i.i.i.a, %.thread.i.i.i.i ], [ %i.rj, %.new2260 ], [ %i.rj, %.prol.loopexit2259 ] ; 2 uses
  %.sroa.78.0.i.i.i72.i.i.i.i = phi i64 [ %i.rl, %.thread.i.i.i.i ], [ 0, %.new2260 ], [ 0, %.prol.loopexit2259 ]
  %.sroa.07.0.i.i.i73.i.i.i.i = phi ptr [ %.sroa.06.0.ph.i.i.i66584.i.i.i.i.a, %.thread.i.i.i.i ], [ %.sroa.017.0.i.i.i.i70.i.i.i.i.lcssa.unr, %.prol.loopexit2259 ], [ %.sroa.017.0.i.i.i.i70.i.i.i.i.7, %.new2260 ]
  %i.sa = getelementptr inbounds nuw i8, ptr %.sroa.06.0.ph.i.i.i66583.i.i.i.i, i64 12
  %i.sb = icmp samesign ult i64 %.sroa.10.0.ph.i.i.i64581.i.i.i.i, 11
  call void @llvm.assume(i1 %i.sb)
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sa, i64 %.sroa.10.0.ph.i.i.i64581.i.i.i.i
  br label %_RNvXsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit46.thread.i.i.i.i.outer

bb.bx:                                            ; preds = %_RNvXsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %.sroa.11.4.i.i = phi i64 [ %i.kh, %.lr.ph.i.i.i.i ], [ %i.ud, %_RNvXsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.i.i.i.i ]
  %i.sd = phi i64 [ %.sroa.78.0.i.i.i220.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.sroa.78.0.i.i.i.i.i.i.i, %_RNvXsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.i.i.i.i ] ; 4 uses
  %i.se = phi ptr [ %.sroa.07.0.i.i.i221.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.sroa.07.0.i.i.i.i.i.i.i, %_RNvXsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.i.i.i.i ] ; 3 uses
  %i.sf = phi i64 [ %i.ik, %.lr.ph.i.i.i.i ], [ %i.sx, %_RNvXsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.i.i.i.i ] ; 4 uses
  %.val47.i316.i.i.i.i = phi i8 [ %.val47.i313.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.val47.i.i.i.i.i, %_RNvXsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.i.i.i.i ] ; 2 uses
  br label %bb.by

bb.by:                                            ; preds = %bb.cb, %bb.bx
  %.sroa.3.0.i.i.i.i.i.i.i = phi i64 [ %i.sv, %bb.cb ], [ %.val46.i.i.i.i.i, %bb.bx ] ; 2 uses
  %.sroa.0.0.i.i.i6.i.i.i.i = phi ptr [ %i.su, %bb.cb ], [ %.val.i311.i.i.i.i, %bb.bx ] ; 3 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i6.i.i.i.i, i64 12 ; 2 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i6.i.i.i.i, i64 10
  %i.si = load i16, ptr %i.sh, align 2, !noalias !1283, !noundef !7 ; 2 uses
  %i.sj = zext i16 %i.si to i64                   ; 3 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sg, i64 %i.sj
  %i.sl = icmp eq i16 %i.si, 0
  br i1 %i.sl, label %._crit_edge1946, label %.lr.ph1945

bb.bz:                                            ; preds = %.lr.ph1945
  %i.sm = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.i.i.i.i.i.i1943, i64 1 ; 2 uses
  %i.sn = add nuw nsw i64 %.sroa.8.0.i.i.i.i.i.i.i.i1942, 1
  %i.so = icmp eq ptr %i.sm, %i.sk
  br i1 %i.so, label %._crit_edge1946, label %.lr.ph1945

.lr.ph1945:                                       ; preds = %bb.by, %bb.bz
  %.sroa.0.03.i.i.i.i.i.i.i.i1943 = phi ptr [ %i.sm, %bb.bz ], [ %i.sg, %bb.by ] ; 2 uses
  %.sroa.8.0.i.i.i.i.i.i.i.i1942 = phi i64 [ %i.sn, %bb.bz ], [ 0, %bb.by ] ; 2 uses
  %.val6.i.i.i.i.i.i.i.i = load i8, ptr %.sroa.0.03.i.i.i.i.i.i.i.i1943, align 1, !range !439, !noalias !1283, !noundef !7
  %i.sp = call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i8(i8 %.val47.i316.i.i.i.i, i8 %.val6.i.i.i.i.i.i.i.i)
  switch i8 %i.sp, label %bb.ca [
    i8 -1, label %._crit_edge1946
    i8 0, label %_RINvMsi_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB8_7set_val9SetValZSTE3getB18_ECsfPYenFzdTHO_5uu_wc.exit.i.i.i.i.i
    i8 1, label %bb.bz
  ]

bb.ca:                                            ; preds = %.lr.ph1945
  unreachable

._crit_edge1946:                                  ; preds = %bb.bz, %.lr.ph1945, %bb.by
  %.sroa.4.0.i.ph.i.i.i.i.i.i.i = phi i64 [ %i.sj, %bb.by ], [ %i.sj, %bb.bz ], [ %.sroa.8.0.i.i.i.i.i.i.i.i1942, %.lr.ph1945 ] ; 2 uses
  %i.sq = icmp eq i64 %.sroa.3.0.i.i.i.i.i.i.i, 0
  br i1 %i.sq, label %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250.i.i.i.i, label %bb.cb

bb.cb:                                            ; preds = %._crit_edge1946
  %i.sr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i6.i.i.i.i, i64 24
  %i.ss = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i.i.i.i.i.i, 12
  call void @llvm.assume(i1 %i.ss)
  %i.st = getelementptr inbounds nuw [8 x i8], ptr %i.sr, i64 %.sroa.4.0.i.ph.i.i.i.i.i.i.i
  %i.su = load ptr, ptr %i.st, align 8, !noalias !1283, !nonnull !7, !noundef !7
  %i.sv = add i64 %.sroa.3.0.i.i.i.i.i.i.i, -1
  br label %bb.by

_RINvMsi_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB8_7set_val9SetValZSTE3getB18_ECsfPYenFzdTHO_5uu_wc.exit.i.i.i.i.i: ; preds = %.lr.ph1945
  %i.sw = icmp eq i64 %i.sf, 0
  br i1 %i.sw, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filter6FilterINtNtB2i_6copied6CopiedINtNtNtNtB6_11collections5btree3set10DifferenceBR_EENCNvCsfPYenFzdTHO_5uu_wc16wc_simd_features0EE11spec_extendB4o_.exit.i.i, label %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTE10init_frontCsfPYenFzdTHO_5uu_wc.exit.i.i.i.i.i

_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTE10init_frontCsfPYenFzdTHO_5uu_wc.exit.i.i.i.i.i: ; preds = %_RINvMsi_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB8_7set_val9SetValZSTE3getB18_ECsfPYenFzdTHO_5uu_wc.exit.i.i.i.i.i
  %i.sx = add i64 %i.sf, -1
  %i.sy = getelementptr inbounds nuw i8, ptr %i.se, i64 10
  %i.sz = load i16, ptr %i.sy, align 2, !noalias !1286, !noundef !7
  %i.ta = zext i16 %i.sz to i64
  %i.tb = icmp ult i64 %i.sd, %i.ta
  br i1 %i.tb, label %.thread585.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTE10init_frontCsfPYenFzdTHO_5uu_wc.exit.i.i.i.i.i, %bb.cc
  %.sroa.0.022.i.i.i.i.i.i.i.i = phi ptr [ %i.tc, %bb.cc ], [ %i.se, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTE10init_frontCsfPYenFzdTHO_5uu_wc.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.5.021.i.i.i.i.i.i.i.i = phi i64 [ %i.td, %bb.cc ], [ 0, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTE10init_frontCsfPYenFzdTHO_5uu_wc.exit.i.i.i.i.i ] ; 2 uses
  %i.tc = load ptr, ptr %.sroa.0.022.i.i.i.i.i.i.i.i, align 8, !noalias !1297, !noundef !7 ; 7 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.tc, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.td = add i64 %.sroa.5.021.i.i.i.i.i.i.i.i, 1 ; 5 uses
  %i.te = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i.i.i.i.i, i64 8
  %i.tf = load i16, ptr %i.te, align 8, !noalias !1297 ; 3 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tc, i64 10
  %i.th = load i16, ptr %i.tg, align 2, !noalias !1286, !noundef !7
  %i.ti = icmp ult i16 %i.tf, %i.th
  br i1 %i.ti, label %bb.ce, label %.lr.ph.i.i.i.i.i.i.i.i

bb.cd:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #29, !noalias !1300
  unreachable

bb.ce:                                            ; preds = %bb.cc
  %i.tj = zext i16 %i.tf to i64                   ; 4 uses
  %i.tk = icmp eq i64 %i.td, 0
  br i1 %i.tk, label %.thread585.i.i.i.i, label %bb.cf

.thread585.i.i.i.i:                               ; preds = %bb.ce, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTE10init_frontCsfPYenFzdTHO_5uu_wc.exit.i.i.i.i.i
  %.sroa.06.0.ph.i.i.i592.i.i.i.i.a = phi ptr [ %i.tc, %bb.ce ], [ %i.se, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTE10init_frontCsfPYenFzdTHO_5uu_wc.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.10.0.ph.i.i.i590.i.i.i.i.a = phi i64 [ %i.tj, %bb.ce ], [ %i.sd, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTE10init_frontCsfPYenFzdTHO_5uu_wc.exit.i.i.i.i.i ] ; 2 uses
  %i.tl = add nuw nsw i64 %.sroa.10.0.ph.i.i.i590.i.i.i.i.a, 1
  br label %_RNvXsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.i.i.i.i

bb.cf:                                            ; preds = %bb.ce
  %i.tm = icmp ult i16 %i.tf, 11
  call void @llvm.assume(i1 %i.tm)
  %i.tn = getelementptr i8, ptr %i.tc, i64 32
  %i.to = getelementptr [8 x i8], ptr %i.tn, i64 %i.tj ; 2 uses
  %xtraiter2237 = and i64 %i.td, 7                ; 2 uses
  %lcmp.mod2238.not = icmp eq i64 %xtraiter2237, 0
  br i1 %lcmp.mod2238.not, label %.prol.loopexit2234, label %.prol.preheader2233

.prol.preheader2233:                              ; preds = %bb.cf, %.prol.preheader2233
  %.sroa.017.0.in.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.tp, %.prol.preheader2233 ], [ %i.to, %bb.cf ]
  %.sroa.019.0.in.i.i.i.i.i.i.i.i.prol = phi i64 [ %.sroa.019.0.i.i.i.i.i.i.i.i.prol, %.prol.preheader2233 ], [ %i.td, %bb.cf ]
  %prol.iter2239 = phi i64 [ %prol.iter2239.next, %.prol.preheader2233 ], [ 0, %bb.cf ]
  %.sroa.019.0.i.i.i.i.i.i.i.i.prol = add i64 %.sroa.019.0.in.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.017.0.i.i.i.i.i.i.i.i.prol = load ptr, ptr %.sroa.017.0.in.i.i.i.i.i.i.i.i.prol, align 8, !noalias !1301, !nonnull !7, !noundef !7 ; 2 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.prol, i64 24 ; 2 uses
  %prol.iter2239.next = add i64 %prol.iter2239, 1 ; 2 uses
  %prol.iter2239.cmp.not = icmp eq i64 %prol.iter2239.next, %xtraiter2237
  br i1 %prol.iter2239.cmp.not, label %.prol.loopexit2234, label %.prol.preheader2233, !llvm.loop !1305

.prol.loopexit2234:                               ; preds = %.prol.preheader2233, %bb.cf
  %.sroa.017.0.i.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.cf ], [ %.sroa.017.0.i.i.i.i.i.i.i.i.prol, %.prol.preheader2233 ]
  %.sroa.017.0.in.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.to, %bb.cf ], [ %i.tp, %.prol.preheader2233 ]
  %.sroa.019.0.in.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.td, %bb.cf ], [ %.sroa.019.0.i.i.i.i.i.i.i.i.prol, %.prol.preheader2233 ]
  %i.tq = icmp ult i64 %.sroa.5.021.i.i.i.i.i.i.i.i, 7
  br i1 %i.tq, label %_RNvXsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.i.i.i.i, label %.new2235

.new2235:                                         ; preds = %.prol.loopexit2234, %.new2235
  %.sroa.017.0.in.i.i.i.i.i.i.i.i = phi ptr [ %i.tz, %.new2235 ], [ %.sroa.017.0.in.i.i.i.i.i.i.i.i.unr, %.prol.loopexit2234 ]
  %.sroa.019.0.in.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.019.0.i.i.i.i.i.i.i.i.7, %.new2235 ], [ %.sroa.019.0.in.i.i.i.i.i.i.i.i.unr, %.prol.loopexit2234 ]
  %.sroa.017.0.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.017.0.in.i.i.i.i.i.i.i.i, align 8, !noalias !1301, !nonnull !7, !noundef !7
  %i.tr = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i, i64 24
  %.sroa.017.0.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.tr, align 8, !noalias !1301, !nonnull !7, !noundef !7
  %i.ts = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.1, i64 24
  %.sroa.017.0.i.i.i.i.i.i.i.i.2 = load ptr, ptr %i.ts, align 8, !noalias !1301, !nonnull !7, !noundef !7
  %i.tt = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.2, i64 24
  %.sroa.017.0.i.i.i.i.i.i.i.i.3 = load ptr, ptr %i.tt, align 8, !noalias !1301, !nonnull !7, !noundef !7
  %i.tu = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.3, i64 24
  %.sroa.017.0.i.i.i.i.i.i.i.i.4 = load ptr, ptr %i.tu, align 8, !noalias !1301, !nonnull !7, !noundef !7
  %i.tv = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.4, i64 24
  %.sroa.017.0.i.i.i.i.i.i.i.i.5 = load ptr, ptr %i.tv, align 8, !noalias !1301, !nonnull !7, !noundef !7
  %i.tw = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.5, i64 24
  %.sroa.017.0.i.i.i.i.i.i.i.i.6 = load ptr, ptr %i.tw, align 8, !noalias !1301, !nonnull !7, !noundef !7
  %i.tx = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.6, i64 24
  %.sroa.019.0.i.i.i.i.i.i.i.i.7 = add i64 %.sroa.019.0.in.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %.sroa.017.0.i.i.i.i.i.i.i.i.7 = load ptr, ptr %i.tx, align 8, !noalias !1301, !nonnull !7, !noundef !7 ; 2 uses
  %i.ty = icmp eq i64 %.sroa.019.0.i.i.i.i.i.i.i.i.7, 0
  %i.tz = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.7, i64 24
  br i1 %i.ty, label %_RNvXsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.i.i.i.i, label %.new2235

_RNvXsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.i.i.i.i: ; preds = %.prol.loopexit2234, %.new2235, %.thread585.i.i.i.i
  %.sroa.06.0.ph.i.i.i591.i.i.i.i = phi ptr [ %.sroa.06.0.ph.i.i.i592.i.i.i.i.a, %.thread585.i.i.i.i ], [ %i.tc, %.new2235 ], [ %i.tc, %.prol.loopexit2234 ]
  %.sroa.10.0.ph.i.i.i589.i.i.i.i = phi i64 [ %.sroa.10.0.ph.i.i.i590.i.i.i.i.a, %.thread585.i.i.i.i ], [ %i.tj, %.new2235 ], [ %i.tj, %.prol.loopexit2234 ] ; 2 uses
  %.sroa.78.0.i.i.i.i.i.i.i = phi i64 [ %i.tl, %.thread585.i.i.i.i ], [ 0, %.new2235 ], [ 0, %.prol.loopexit2234 ]
  %.sroa.07.0.i.i.i.i.i.i.i = phi ptr [ %.sroa.06.0.ph.i.i.i592.i.i.i.i.a, %.thread585.i.i.i.i ], [ %.sroa.017.0.i.i.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit2234 ], [ %.sroa.017.0.i.i.i.i.i.i.i.i.7, %.new2235 ] ; 2 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %.sroa.06.0.ph.i.i.i591.i.i.i.i, i64 12
  %i.ub = icmp samesign ult i64 %.sroa.10.0.ph.i.i.i589.i.i.i.i, 11
  call void @llvm.assume(i1 %i.ub)
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ua, i64 %.sroa.10.0.ph.i.i.i589.i.i.i.i
  %i.ud = ptrtoint ptr %.sroa.07.0.i.i.i.i.i.i.i to i64
  %.val47.i.i.i.i.i = load i8, ptr %i.uc, align 1, !noalias !1181
  br label %bb.bx

_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250thread-pre-split.i.i.i.i.loopexit2026: ; preds = %bb.bj, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_RNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2h_8PeekableINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set4IterBN_EE4peek0ECsfPYenFzdTHO_5uu_wc.exit.i.i.i.i.i
  %.promoted729.i.i.i.i.ph = phi ptr [ %.promoted731.i.i.i.i, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_RNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2h_8PeekableINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set4IterBN_EE4peek0ECsfPYenFzdTHO_5uu_wc.exit.i.i.i.i.i ], [ null, %bb.bj ]
  %.ph = phi i64 [ %i.oh, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_RNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2h_8PeekableINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set4IterBN_EE4peek0ECsfPYenFzdTHO_5uu_wc.exit.i.i.i.i.i ], [ 1, %bb.bj ]
  %.promoted318362611.i.i.i.i.ph = phi ptr [ %.promoted315361.i.i.i.i, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_RNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2h_8PeekableINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set4IterBN_EE4peek0ECsfPYenFzdTHO_5uu_wc.exit.i.i.i.i.i ], [ null, %bb.bj ]
  %.ph2021 = phi i64 [ %i.oj, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_RNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2h_8PeekableINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set4IterBN_EE4peek0ECsfPYenFzdTHO_5uu_wc.exit.i.i.i.i.i ], [ 1, %bb.bj ]
  %.sroa.48.6.i.i.ph.le2511 = ptrtoint ptr %.sroa.013.0.lcssa.i.i82324.i.i.i.i.ph to i64
  br label %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250thread-pre-split.i.i.i.i

_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250thread-pre-split.i.i.i.i: ; preds = %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250thread-pre-split.i.i.i.i.loopexit2026, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread601.i.i.i.i
  %.sroa.35.2.i.i = phi i64 [ %.sroa.35.1.i.i, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread601.i.i.i.i ], [ %.sroa.35.4.i.i, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250thread-pre-split.i.i.i.i.loopexit2026 ]
  %.sroa.20.2.i.i = phi i64 [ 0, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread601.i.i.i.i ], [ %.ph2031.a, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250thread-pre-split.i.i.i.i.loopexit2026 ]
  %.sroa.11.2.i.i = phi i64 [ %i.oc, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread601.i.i.i.i ], [ 0, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250thread-pre-split.i.i.i.i.loopexit2026 ]
  %.sroa.48.3.i.i = phi i64 [ 1, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread601.i.i.i.i ], [ %.sroa.48.6.i.i.ph.le2511, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250thread-pre-split.i.i.i.i.loopexit2026 ]
  %.sroa.59.0..sroa_idx.i.phi.trans.insert.i88.promoted696753.i.i.i.i = phi i64 [ %.sroa.59.0..sroa_idx.i.phi.trans.insert.i88.promoted690751.i.i.i.i, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread601.i.i.i.i ], [ %.sroa.59.0..sroa_idx.i.phi.trans.insert.i88.promoted690750.i.i.i.i, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250thread-pre-split.i.i.i.i.loopexit2026 ]
  %.sroa.59.0..sroa_idx.i.phi.trans.insert.i125.promoted749.i.i.i.i = phi i64 [ %.sroa.78.0.i.i.i146.i.i.i.i, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread601.i.i.i.i ], [ %.sroa.59.0..sroa_idx.i.phi.trans.insert.i125.promoted744.i.i.i.i, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250thread-pre-split.i.i.i.i.loopexit2026 ]
  %.promoted366741.i.i.i.i = phi i64 [ %.promoted363739.i.i.i.i, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread601.i.i.i.i ], [ %.promoted363738.i.i.i.i, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250thread-pre-split.i.i.i.i.loopexit2026 ]
  %.promoted735.i.i.i.i = phi ptr [ %.promoted732.i.i.i.i, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread601.i.i.i.i ], [ %.promoted729.i.i.i.i.ph, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250thread-pre-split.i.i.i.i.loopexit2026 ]
  %2 = phi i64 [ %i.ic, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread601.i.i.i.i ], [ %.ph, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250thread-pre-split.i.i.i.i.loopexit2026 ]
  %.promoted348729.i.i.i.i = phi i64 [ %.promoted345724.i.i.i.i, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread601.i.i.i.i ], [ %.ph2036, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250thread-pre-split.i.i.i.i.loopexit2026 ]
  %.sroa.07.0.i.i.i110721.i.i.i.i = phi ptr [ %.sroa.07.0.i.i.i110719.i.i.i.i, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread601.i.i.i.i ], [ %.sroa.07.0.i.i.i110718.i.i.i.i, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250thread-pre-split.i.i.i.i.loopexit2026 ]
  %3 = phi i64 [ %i.mf, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread601.i.i.i.i ], [ %i.oi, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250thread-pre-split.i.i.i.i.loopexit2026 ]
  %.promoted328714.i.i.i.i = phi i64 [ %.promoted325710.i.i.i.i, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread601.i.i.i.i ], [ %.promoted325709.i.i.i.i, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250thread-pre-split.i.i.i.i.loopexit2026 ]
  %.sroa.59.0..sroa_idx.i.phi.trans.insert.i88.promoted698.i.i.i.i = phi i64 [ %.sroa.59.0..sroa_idx.i.phi.trans.insert.i88.promoted696.i.i.i.i, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread601.i.i.i.i ], [ %.sroa.59.0..sroa_idx.i.phi.trans.insert.i88.promoted695.i.i.i.i, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250thread-pre-split.i.i.i.i.loopexit2026 ]
  %.sroa.78.0.i.i.i694.i.i.i.i = phi i64 [ %.sroa.78.0.i.i.i146.i.i.i.i, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread601.i.i.i.i ], [ %.sroa.78.0.i.i.i689.i.i.i.i, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250thread-pre-split.i.i.i.i.loopexit2026 ]
  %.sroa.0.0.i615.i.i.i.i = phi ptr [ %i.ob, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread601.i.i.i.i ], [ %.sroa.06.0.i.i.i.i.i.ph, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250thread-pre-split.i.i.i.i.loopexit2026 ]
  %.promoted322332614.i.i.i.i = phi i64 [ %.promoted319330.i.i.i.i, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread601.i.i.i.i ], [ 1, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250thread-pre-split.i.i.i.i.loopexit2026 ]
  %4 = phi i64 [ %i.mf, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread601.i.i.i.i ], [ %i.ol, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250thread-pre-split.i.i.i.i.loopexit2026 ]
  %5 = phi ptr [ %i.ig, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread601.i.i.i.i ], [ %i.ok, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250thread-pre-split.i.i.i.i.loopexit2026 ]
  %.promoted321351613.i.i.i.i = phi i64 [ %.promoted318349.i.i.i.i, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread601.i.i.i.i ], [ %.ph2036, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250thread-pre-split.i.i.i.i.loopexit2026 ]
  %.promoted356612.i.i.i.i = phi i64 [ %.promoted356.i.i.i.i, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread601.i.i.i.i ], [ 1, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250thread-pre-split.i.i.i.i.loopexit2026 ]
  %.promoted318362611.i.i.i.i = phi ptr [ %.promoted315362.i.i.i.i, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread601.i.i.i.i ], [ %.promoted318362611.i.i.i.i.ph, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250thread-pre-split.i.i.i.i.loopexit2026 ]
  %.promoted323369610.i.i.i.i = phi i64 [ %.promoted320371.i.i.i.i, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread601.i.i.i.i ], [ %.promoted320370.i.i.i.i, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250thread-pre-split.i.i.i.i.loopexit2026 ]
  %6 = phi i64 [ %i.if, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread601.i.i.i.i ], [ %i.lb, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250thread-pre-split.i.i.i.i.loopexit2026 ]
  %7 = phi i64 [ %i.ie, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread601.i.i.i.i ], [ %.ph2021, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250thread-pre-split.i.i.i.i.loopexit2026 ]
  %.val.i.i.i.i.pr.i.i.i.i = load i8, ptr %.sroa.0.0.i615.i.i.i.i, align 1, !noalias !1306
  br label %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250.i.i.i.i

_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250.i.i.i.i.loopexit: ; preds = %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRRNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureE6map_orNtNtB5_3cmp8OrderingNCNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB2k_10DifferenceBK_ENtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsfPYenFzdTHO_5uu_wc.exit.i.i.i.i.i
  %.sroa.48.6.i.i.ph.le = ptrtoint ptr %.sroa.013.0.lcssa.i.i82324.i.i.i.i.ph to i64
  br label %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250.i.i.i.i

_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250.i.i.i.i: ; preds = %._crit_edge1946, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250.i.i.i.i.loopexit, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250thread-pre-split.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.sroa.35.3.i.i = phi i64 [ %.sroa.35.2.i.i, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250thread-pre-split.i.i.i.i ], [ %.sroa.35.539.i.i, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250.i.i.i.i.loopexit ], [ %.sroa.35.1.i.i, %.lr.ph.i.i.i.i.i ], [ %.sroa.35.1.i.i, %._crit_edge1946 ] ; 2 uses
  %.sroa.20.3.i.i = phi i64 [ %.sroa.20.2.i.i, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250thread-pre-split.i.i.i.i ], [ %.ph2031.a, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250.i.i.i.i.loopexit ], [ 0, %.lr.ph.i.i.i.i.i ], [ 0, %._crit_edge1946 ] ; 2 uses
  %.sroa.11.3.i.i = phi i64 [ %.sroa.11.2.i.i, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250thread-pre-split.i.i.i.i ], [ 0, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250.i.i.i.i.loopexit ], [ %i.kh, %.lr.ph.i.i.i.i.i ], [ %.sroa.11.4.i.i, %._crit_edge1946 ] ; 2 uses
  %.sroa.48.4.i.i = phi i64 [ %.sroa.48.3.i.i, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250thread-pre-split.i.i.i.i ], [ %.sroa.48.6.i.i.ph.le, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250.i.i.i.i.loopexit ], [ 1, %.lr.ph.i.i.i.i.i ], [ 1, %._crit_edge1946 ] ; 2 uses
  %.sroa.59.0..sroa_idx.i.phi.trans.insert.i88.promoted696752.i.i.i.i = phi i64 [ %.sroa.59.0..sroa_idx.i.phi.trans.insert.i88.promoted696753.i.i.i.i, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250thread-pre-split.i.i.i.i ], [ %.sroa.59.0..sroa_idx.i.phi.trans.insert.i88.promoted690749.i.i40.i.i, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250.i.i.i.i.loopexit ], [ %.sroa.59.0..sroa_idx.i.phi.trans.insert.i88.promoted690751.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.sroa.59.0..sroa_idx.i.phi.trans.insert.i88.promoted690751.i.i.i.i, %._crit_edge1946 ] ; 2 uses
  %.sroa.59.0..sroa_idx.i.phi.trans.insert.i125.promoted748.i.i.i.i = phi i64 [ %.sroa.59.0..sroa_idx.i.phi.trans.insert.i125.promoted749.i.i.i.i, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250thread-pre-split.i.i.i.i ], [ %.sroa.59.0..sroa_idx.i.phi.trans.insert.i125.promoted744.i.i.i.i, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250.i.i.i.i.loopexit ], [ %.sroa.78.0.i.i.i220.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.sd, %._crit_edge1946 ] ; 2 uses
  %.promoted366740.i.i.i.i = phi i64 [ %.promoted366741.i.i.i.i, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250thread-pre-split.i.i.i.i ], [ %.promoted363737.i.i41.i.i, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250.i.i.i.i.loopexit ], [ %.promoted363739.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.promoted363739.i.i.i.i, %._crit_edge1946 ] ; 2 uses
  %.promoted734.i.i.i.i = phi ptr [ %.promoted735.i.i.i.i, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250thread-pre-split.i.i.i.i ], [ %.promoted730.i.i42.i.i, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250.i.i.i.i.loopexit ], [ %.promoted732.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.promoted732.i.i.i.i, %._crit_edge1946 ] ; 2 uses
  %8 = phi i64 [ %2, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250thread-pre-split.i.i.i.i ], [ %i.qv, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250.i.i.i.i.loopexit ], [ %i.ic, %.lr.ph.i.i.i.i.i ], [ %i.ic, %._crit_edge1946 ] ; 2 uses
  %.promoted348728.i.i.i.i = phi i64 [ %.promoted348729.i.i.i.i, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250thread-pre-split.i.i.i.i ], [ %.ph2036, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250.i.i.i.i.loopexit ], [ %.promoted345724.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.promoted345724.i.i.i.i, %._crit_edge1946 ] ; 2 uses
  %.sroa.07.0.i.i.i110720.i.i.i.i = phi ptr [ %.sroa.07.0.i.i.i110721.i.i.i.i, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250thread-pre-split.i.i.i.i ], [ %.sroa.07.0.i.i.i110717.i.i43.i.i, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250.i.i.i.i.loopexit ], [ %.sroa.07.0.i.i.i110719.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.sroa.07.0.i.i.i110719.i.i.i.i, %._crit_edge1946 ] ; 2 uses
  %9 = phi i64 [ %3, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250thread-pre-split.i.i.i.i ], [ %i.qu, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250.i.i.i.i.loopexit ], [ %i.ik, %.lr.ph.i.i.i.i.i ], [ %i.sf, %._crit_edge1946 ] ; 2 uses
  %.promoted328713.i.i.i.i = phi i64 [ %.promoted328714.i.i.i.i, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250thread-pre-split.i.i.i.i ], [ %.promoted325709.i.i.i.i, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250.i.i.i.i.loopexit ], [ %.promoted325710.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.promoted325710.i.i.i.i, %._crit_edge1946 ] ; 2 uses
  %.sroa.59.0..sroa_idx.i.phi.trans.insert.i88.promoted697.i.i.i.i = phi i64 [ %.sroa.59.0..sroa_idx.i.phi.trans.insert.i88.promoted698.i.i.i.i, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250thread-pre-split.i.i.i.i ], [ %.sroa.59.0..sroa_idx.i.phi.trans.insert.i88.promoted694.i.i44.i.i, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250.i.i.i.i.loopexit ], [ %.sroa.59.0..sroa_idx.i.phi.trans.insert.i88.promoted696.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.sroa.59.0..sroa_idx.i.phi.trans.insert.i88.promoted696.i.i.i.i, %._crit_edge1946 ]
  %.sroa.78.0.i.i.i693.i.i.i.i = phi i64 [ %.sroa.78.0.i.i.i694.i.i.i.i, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250thread-pre-split.i.i.i.i ], [ %.sroa.78.0.i.i.i689.i.i.i.i, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250.i.i.i.i.loopexit ], [ %.sroa.78.0.i.i.i220.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.sd, %._crit_edge1946 ]
  %10 = phi i64 [ %7, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250thread-pre-split.i.i.i.i ], [ %i.qt, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250.i.i.i.i.loopexit ], [ %i.ie, %.lr.ph.i.i.i.i.i ], [ %i.ie, %._crit_edge1946 ] ; 2 uses
  %11 = phi i64 [ %6, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250thread-pre-split.i.i.i.i ], [ %i.lb, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250.i.i.i.i.loopexit ], [ %i.if, %.lr.ph.i.i.i.i.i ], [ %i.if, %._crit_edge1946 ] ; 2 uses
  %.val.i.i.i.i4.i.i.i.i = phi i64 [ %.promoted323369610.i.i.i.i, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250thread-pre-split.i.i.i.i ], [ %.promoted320368.i.i46.i.i, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250.i.i.i.i.loopexit ], [ %.promoted320371.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.promoted320371.i.i.i.i, %._crit_edge1946 ] ; 4 uses
  %12 = phi ptr [ %.promoted318362611.i.i.i.i, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250thread-pre-split.i.i.i.i ], [ %.promoted315360.i.i47.i.i, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250.i.i.i.i.loopexit ], [ %.promoted315362.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.promoted315362.i.i.i.i, %._crit_edge1946 ] ; 2 uses
  %.promoted354.i.i.i.i = phi i64 [ %.promoted356612.i.i.i.i, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250thread-pre-split.i.i.i.i ], [ 1, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250.i.i.i.i.loopexit ], [ %.promoted356.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.promoted356.i.i.i.i, %._crit_edge1946 ]
  %.promoted321349.i.i.i.i = phi i64 [ %.promoted321351613.i.i.i.i, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250thread-pre-split.i.i.i.i ], [ %.ph2036, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250.i.i.i.i.loopexit ], [ %.promoted318349.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.promoted318349.i.i.i.i, %._crit_edge1946 ]
  %13 = phi ptr [ %5, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250thread-pre-split.i.i.i.i ], [ %i.qs, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250.i.i.i.i.loopexit ], [ %i.ig, %.lr.ph.i.i.i.i.i ], [ %i.ig, %._crit_edge1946 ]
  %14 = phi i64 [ %4, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250thread-pre-split.i.i.i.i ], [ %i.qr, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250.i.i.i.i.loopexit ], [ %i.ik, %.lr.ph.i.i.i.i.i ], [ %i.sf, %._crit_edge1946 ]
  %.promoted322334.i.i.i.i = phi i64 [ %.promoted322332614.i.i.i.i, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250thread-pre-split.i.i.i.i ], [ 1, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250.i.i.i.i.loopexit ], [ %.promoted319330.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.promoted319330.i.i.i.i, %._crit_edge1946 ]
  %.val.i.i.i.i.i.i.i.i = phi i8 [ %.val.i.i.i.i.pr.i.i.i.i, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250thread-pre-split.i.i.i.i ], [ %.sroa.06.0.val.i.i.i.i.i, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250.i.i.i.i.loopexit ], [ %.val47.i313.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.val47.i316.i.i.i.i, %._crit_edge1946 ] ; 2 uses
  switch i8 %.val.i.i.i.i.i.i.i.i, label %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6copied13copy_try_foldNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureuINtNtNtBa_3ops12control_flow11ControlFlowB13_ENCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB13_QNCNvCsfPYenFzdTHO_5uu_wc16wc_simd_features0E0E0B3N_.exit.i.i.i.i.i.i.i.i [
    i8 1, label %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filterINtB5_6FilterINtNtB7_6copied6CopiedINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENCNvCsfPYenFzdTHO_5uu_wc16wc_simd_features0ENtNtNtB9_6traits8iterator8Iterator4nextB3w_.exit.i.i.i.i
    i8 4, label %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filterINtB5_6FilterINtNtB7_6copied6CopiedINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENCNvCsfPYenFzdTHO_5uu_wc16wc_simd_features0ENtNtNtB9_6traits8iterator8Iterator4nextB3w_.exit.i.i.i.i
    i8 5, label %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filterINtB5_6FilterINtNtB7_6copied6CopiedINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENCNvCsfPYenFzdTHO_5uu_wc16wc_simd_features0ENtNtNtB9_6traits8iterator8Iterator4nextB3w_.exit.i.i.i.i
  ]

_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filterINtB5_6FilterINtNtB7_6copied6CopiedINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENCNvCsfPYenFzdTHO_5uu_wc16wc_simd_features0ENtNtNtB9_6traits8iterator8Iterator4nextB3w_.exit.i.i.i.i: ; preds = %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250.i.i.i.i, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250.i.i.i.i, %_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread250.i.i.i.i
  %i.ue = icmp sgt i64 %.sroa.6.0.copyload11.i, -1
  call void @llvm.assume(i1 %i.ue)
  %i.uf = load i64, ptr %i.an, align 8, !range !76, !alias.scope !1315, !noalias !1316, !noundef !7
  %i.ug = icmp eq i64 %.sroa.6.0.copyload11.i, %i.uf
  br i1 %i.ug, label %bb.cg, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureE7reserveCsfPYenFzdTHO_5uu_wc.exit.i.i.i.i

bb.cg:                                            ; preds = %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filterINtB5_6FilterINtNtB7_6copied6CopiedINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENCNvCsfPYenFzdTHO_5uu_wc16wc_simd_features0ENtNtNtB9_6traits8iterator8Iterator4nextB3w_.exit.i.i.i.i
  %i.uh = icmp samesign ult i64 %11, 2
  br i1 %i.uh, label %bb.ch, label %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filterINtB5_6FilterINtNtB7_6copied6CopiedINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENCNvCsfPYenFzdTHO_5uu_wc16wc_simd_features0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3w_.exit.i.i.i.i

bb.ch:                                            ; preds = %bb.cg
  %i.ui = trunc nuw i64 %10 to i1
  br i1 %i.ui, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %.not.i.i.i.i5.i.i.i.i = icmp eq ptr %12, null
  br i1 %.not.i.i.i.i5.i.i.i.i, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB4_8PeekableINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENtNtNtB8_6traits8iterator8Iterator9size_hintCsfPYenFzdTHO_5uu_wc.exit.i.i.i.i.i.i.i, label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %.sroa.0.0.i.i.i.i3.i.i.i.i = phi i64 [ 0, %bb.ch ], [ 1, %bb.ci ] ; 2 uses
  %i.uj = call i64 @llvm.uadd.sat.i64(i64 %.val.i.i.i.i4.i.i.i.i, i64 %.sroa.0.0.i.i.i.i3.i.i.i.i)
  %i.uk = add i64 %.sroa.0.0.i.i.i.i3.i.i.i.i, %.val.i.i.i.i4.i.i.i.i ; 2 uses
  %i.ul = icmp uge i64 %i.uk, %.val.i.i.i.i4.i.i.i.i
  %.7.i.i.i.i.i.i.i.i = zext i1 %i.ul to i64
  br label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB4_8PeekableINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENtNtNtB8_6traits8iterator8Iterator9size_hintCsfPYenFzdTHO_5uu_wc.exit.i.i.i.i.i.i.i

_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB4_8PeekableINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENtNtNtB8_6traits8iterator8Iterator9size_hintCsfPYenFzdTHO_5uu_wc.exit.i.i.i.i.i.i.i: ; preds = %bb.cj, %bb.ci
  %.sink10.i.i.i.i.i.i.i.i = phi i64 [ %i.uj, %bb.cj ], [ 0, %bb.ci ] ; 2 uses
  %.7.sink.i.i.i.i.i.i.i.i = phi i64 [ %.7.i.i.i.i.i.i.i.i, %bb.cj ], [ 1, %bb.ci ] ; 2 uses
  %.sink.i.i.i.i.i.i.i.i = phi i64 [ %i.uk, %bb.cj ], [ 0, %bb.ci ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !1317
  store i64 %.7.sink.i.i.i.i.i.i.i.i, ptr %i.ak, align 8, !noalias !1317
  store i64 %.sink.i.i.i.i.i.i.i.i, ptr %i.hx, align 8, !noalias !1317
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !1317
  store i64 %.sink10.i.i.i.i.i.i.i.i, ptr %i.hy, align 8, !noalias !1317
  store i64 1, ptr %i.aj, align 8, !noalias !1317
  %i.um = trunc nuw i64 %.7.sink.i.i.i.i.i.i.i.i to i1
  %i.un = icmp eq i64 %.sink.i.i.i.i.i.i.i.i, %.sink10.i.i.i.i.i.i.i.i
  %or.cond.i.i.i.i.i.i.i = and i1 %i.un, %i.um
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.cl, label %bb.ck, !prof !541

bb.ck:                                            ; preds = %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB4_8PeekableINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENtNtNtB8_6traits8iterator8Iterator9size_hintCsfPYenFzdTHO_5uu_wc.exit.i.i.i.i.i.i.i
  call void @_RINvNtCs6JMX4GRUq9U_4core9panicking13assert_failedINtNtB4_6option6OptionjEBM_EB4_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ak, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.aj, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @115) #29, !noalias !1327
  unreachable

bb.cl:                                            ; preds = %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB4_8PeekableINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENtNtNtB8_6traits8iterator8Iterator9size_hintCsfPYenFzdTHO_5uu_wc.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !1317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !1317
  br label %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filterINtB5_6FilterINtNtB7_6copied6CopiedINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENCNvCsfPYenFzdTHO_5uu_wc16wc_simd_features0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3w_.exit.i.i.i.i

_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filterINtB5_6FilterINtNtB7_6copied6CopiedINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENCNvCsfPYenFzdTHO_5uu_wc16wc_simd_features0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3w_.exit.i.i.i.i: ; preds = %bb.cl, %bb.cg
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfPYenFzdTHO_5uu_wc(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.an, i64 noundef %.sroa.6.0.copyload11.i, i64 noundef range(i64 1, 0) 1, i64 noundef 1, i64 noundef 1) #28, !noalias !1328
  %.pre.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !1315, !noalias !1316
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureE7reserveCsfPYenFzdTHO_5uu_wc.exit.i.i.i.i

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureE7reserveCsfPYenFzdTHO_5uu_wc.exit.i.i.i.i: ; preds = %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filterINtB5_6FilterINtNtB7_6copied6CopiedINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENCNvCsfPYenFzdTHO_5uu_wc16wc_simd_features0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3w_.exit.i.i.i.i, %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filterINtB5_6FilterINtNtB7_6copied6CopiedINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENCNvCsfPYenFzdTHO_5uu_wc16wc_simd_features0ENtNtNtB9_6traits8iterator8Iterator4nextB3w_.exit.i.i.i.i
  %i.uo = phi ptr [ %.pre.i.i, %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filterINtB5_6FilterINtNtB7_6copied6CopiedINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENCNvCsfPYenFzdTHO_5uu_wc16wc_simd_features0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3w_.exit.i.i.i.i ], [ %i.hz, %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filterINtB5_6FilterINtNtB7_6copied6CopiedINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENCNvCsfPYenFzdTHO_5uu_wc16wc_simd_features0ENtNtNtB9_6traits8iterator8Iterator4nextB3w_.exit.i.i.i.i ] ; 2 uses
  %i.up = getelementptr inbounds nuw i8, ptr %i.uo, i64 %.sroa.6.0.copyload11.i
  store i8 %.val.i.i.i.i.i.i.i.i, ptr %i.up, align 1, !noalias !1181
  %i.uq = add nuw i64 %.sroa.6.0.copyload11.i, 1  ; 2 uses
  store i64 %i.uq, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !1315, !noalias !1316
  br label %bb.ai

_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filter6FilterINtNtB2i_6copied6CopiedINtNtNtNtB6_11collections5btree3set10DifferenceBR_EENCNvCsfPYenFzdTHO_5uu_wc16wc_simd_features0EE11spec_extendB4o_.exit.i.i: ; preds = %bb.ba, %bb.ar, %.preheader.i.i.i.i.i, %_RINvMsi_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB8_7set_val9SetValZSTE3getB18_ECsfPYenFzdTHO_5uu_wc.exit.i.i.i.i.i, %bb.bs
  %.sroa.0.0.copyload5.i = load i64, ptr %i.an, align 8, !noalias !1329
  %.sroa.5.0.copyload8.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !1329
  br label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filter6FilterINtNtB2B_6copied6CopiedINtNtNtNtB6_11collections5btree3set10DifferenceB11_EENCNvCsfPYenFzdTHO_5uu_wc16wc_simd_features0EE9from_iterB4I_.exit.i

_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filter6FilterINtNtB2B_6copied6CopiedINtNtNtNtB6_11collections5btree3set10DifferenceB11_EENCNvCsfPYenFzdTHO_5uu_wc16wc_simd_features0EE9from_iterB4I_.exit.i: ; preds = %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6copied13copy_try_foldNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureuINtNtNtBa_3ops12control_flow11ControlFlowB13_ENCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB13_QNCNvCsfPYenFzdTHO_5uu_wc16wc_simd_features0E0E0B3N_.exit.i.i.i.i.i.i, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filter6FilterINtNtB2i_6copied6CopiedINtNtNtNtB6_11collections5btree3set10DifferenceBR_EENCNvCsfPYenFzdTHO_5uu_wc16wc_simd_features0EE11spec_extendB4o_.exit.i.i
  %.sroa.6.0.i = phi i64 [ %.sroa.6.0.copyload11.i, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filter6FilterINtNtB2i_6copied6CopiedINtNtNtNtB6_11collections5btree3set10DifferenceBR_EENCNvCsfPYenFzdTHO_5uu_wc16wc_simd_features0EE11spec_extendB4o_.exit.i.i ], [ 0, %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6copied13copy_try_foldNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureuINtNtNtBa_3ops12control_flow11ControlFlowB13_ENCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB13_QNCNvCsfPYenFzdTHO_5uu_wc16wc_simd_features0E0E0B3N_.exit.i.i.i.i.i.i ] ; 12 uses
  %.sroa.5.0.i = phi ptr [ %.sroa.5.0.copyload8.i, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filter6FilterINtNtB2i_6copied6CopiedINtNtNtNtB6_11collections5btree3set10DifferenceBR_EENCNvCsfPYenFzdTHO_5uu_wc16wc_simd_features0EE11spec_extendB4o_.exit.i.i ], [ inttoptr (i64 1 to ptr), %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6copied13copy_try_foldNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureuINtNtNtBa_3ops12control_flow11ControlFlowB13_ENCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB13_QNCNvCsfPYenFzdTHO_5uu_wc16wc_simd_features0E0E0B3N_.exit.i.i.i.i.i.i ] ; 5 uses
  %.sroa.0.0.i186 = phi i64 [ %.sroa.0.0.copyload5.i, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filter6FilterINtNtB2i_6copied6CopiedINtNtNtNtB6_11collections5btree3set10DifferenceBR_EENCNvCsfPYenFzdTHO_5uu_wc16wc_simd_features0EE11spec_extendB4o_.exit.i.i ], [ 0, %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6copied13copy_try_foldNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureuINtNtNtBa_3ops12control_flow11ControlFlowB13_ENCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB13_QNCNvCsfPYenFzdTHO_5uu_wc16wc_simd_features0E0E0B3N_.exit.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !1105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !1097
  store i64 0, ptr %i.ap, align 8, !noalias !1097
  %i.ur = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.ur, align 8, !noalias !1097
  %i.us = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 2 uses
  store i64 0, ptr %i.us, align 8, !noalias !1097
  store i64 0, ptr %i.ao, align 8, !noalias !1097
  %i.ut = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.ut, align 8, !noalias !1097
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 4 uses
  store i64 0, ptr %i.uu, align 8, !noalias !1097
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !1097
  call void @_RNvMs1_NtNtCsh036I4OHgIr_6uucore8features8hardwareNtB5_10SimdPolicy17disabled_features(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.aq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.he) #28, !noalias !1101
  %i.uv = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.uw = load ptr, ptr %i.uv, align 8, !noalias !1097, !nonnull !7, !noundef !7 ; 3 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.uy = load i64, ptr %i.ux, align 8, !noalias !1097, !noundef !7 ; 3 uses
  %i.uz = icmp sgt i64 %i.uy, -1
  call void @llvm.assume(i1 %i.uz)
  %i.va = getelementptr inbounds nuw i8, ptr %i.uw, i64 %i.uy
  %i.vb = load i64, ptr %i.aq, align 8, !range !76, !noalias !1097, !noundef !7 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !1097
  %i.vc = icmp samesign eq i64 %i.uy, 0
  br i1 %i.vc, label %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread.i, label %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.i

_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.i: ; preds = %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filter6FilterINtNtB2B_6copied6CopiedINtNtNtNtB6_11collections5btree3set10DifferenceB11_EENCNvCsfPYenFzdTHO_5uu_wc16wc_simd_features0EE9from_iterB4I_.exit.i, %bb.cr
  %i.vd = phi ptr [ %i.vu, %bb.cr ], [ inttoptr (i64 1 to ptr), %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filter6FilterINtNtB2B_6copied6CopiedINtNtNtNtB6_11collections5btree3set10DifferenceB11_EENCNvCsfPYenFzdTHO_5uu_wc16wc_simd_features0EE9from_iterB4I_.exit.i ] ; 2 uses
  %i.ve = phi i64 [ %i.vv, %bb.cr ], [ 0, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filter6FilterINtNtB2B_6copied6CopiedINtNtNtNtB6_11collections5btree3set10DifferenceB11_EENCNvCsfPYenFzdTHO_5uu_wc16wc_simd_features0EE9from_iterB4I_.exit.i ] ; 4 uses
  %.sroa.4.0186.i = phi ptr [ %i.vf, %bb.cr ], [ %i.uw, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filter6FilterINtNtB2B_6copied6CopiedINtNtNtNtB6_11collections5btree3set10DifferenceB11_EENCNvCsfPYenFzdTHO_5uu_wc16wc_simd_features0EE9from_iterB4I_.exit.i ] ; 2 uses
  %i.vf = getelementptr inbounds nuw i8, ptr %.sroa.4.0186.i, i64 1 ; 2 uses
  %i.vg = load i8, ptr %.sroa.4.0186.i, align 1, !range !439, !noalias !1330, !noundef !7 ; 4 uses
  %i.vh = and i8 %i.vg, 6
  %switch.i = icmp eq i8 %i.vh, 2
  br i1 %switch.i, label %bb.cr, label %bb.cn

_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread.i: ; preds = %bb.cr, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filter6FilterINtNtB2B_6copied6CopiedINtNtNtNtB6_11collections5btree3set10DifferenceB11_EENCNvCsfPYenFzdTHO_5uu_wc16wc_simd_features0EE9from_iterB4I_.exit.i
  %.sroa.13.24.copyload = phi i64 [ 0, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filter6FilterINtNtB2B_6copied6CopiedINtNtNtNtB6_11collections5btree3set10DifferenceB11_EENCNvCsfPYenFzdTHO_5uu_wc16wc_simd_features0EE9from_iterB4I_.exit.i ], [ %i.vv, %bb.cr ] ; 12 uses
  %i.vi = icmp eq i64 %i.vb, 0
  br i1 %i.vi, label %_RNvCsfPYenFzdTHO_5uu_wc16wc_simd_features.exit, label %bb.cm

bb.cm:                                            ; preds = %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread.i
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.uw, i64 noundef %i.vb, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !1333
  br label %_RNvCsfPYenFzdTHO_5uu_wc16wc_simd_features.exit

bb.cn:                                            ; preds = %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.i
  %i.vj = load i64, ptr %i.ap, align 8, !range !76, !noalias !1097, !noundef !7
  %i.vk = icmp eq i64 %i.ve, %i.vj
  br i1 %i.vk, label %bb.co, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureE8push_mutCsfPYenFzdTHO_5uu_wc.exit.i

bb.co:                                            ; preds = %bb.cn
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureE8grow_oneCsfPYenFzdTHO_5uu_wc(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ap) #27, !noalias !1101
  %.pre.i = load ptr, ptr %i.ur, align 8, !noalias !1097
  br label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureE8push_mutCsfPYenFzdTHO_5uu_wc.exit.i

_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureE8push_mutCsfPYenFzdTHO_5uu_wc.exit.i: ; preds = %bb.co, %bb.cn
  %i.vl = phi ptr [ %i.vd, %bb.cn ], [ %.pre.i, %bb.co ] ; 3 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vl, i64 %i.ve
  store i8 %i.vg, ptr %i.vm, align 1, !noalias !1336
  %i.vn = add i64 %i.ve, 1                        ; 3 uses
  store i64 %i.vn, ptr %i.us, align 8, !noalias !1097
  switch i8 %i.vg, label %bb.cr [
    i8 1, label %bb.cp
    i8 4, label %bb.cp
    i8 5, label %bb.cp
  ]

bb.cp:                                            ; preds = %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureE8push_mutCsfPYenFzdTHO_5uu_wc.exit.i, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureE8push_mutCsfPYenFzdTHO_5uu_wc.exit.i, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureE8push_mutCsfPYenFzdTHO_5uu_wc.exit.i
  %i.vo = load i64, ptr %i.uu, align 8, !noalias !1097, !noundef !7 ; 3 uses
  %i.vp = load i64, ptr %i.ao, align 8, !range !76, !noalias !1097, !noundef !7
  %i.vq = icmp eq i64 %i.vo, %i.vp
  br i1 %i.vq, label %bb.cq, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureE8push_mutCsfPYenFzdTHO_5uu_wc.exit4.i

bb.cq:                                            ; preds = %bb.cp
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureE8grow_oneCsfPYenFzdTHO_5uu_wc(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ao) #27, !noalias !1101
  br label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureE8push_mutCsfPYenFzdTHO_5uu_wc.exit4.i

_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureE8push_mutCsfPYenFzdTHO_5uu_wc.exit4.i: ; preds = %bb.cq, %bb.cp
  %i.vr = load ptr, ptr %i.ut, align 8, !noalias !1097, !nonnull !7, !noundef !7
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vr, i64 %i.vo
  store i8 %i.vg, ptr %i.vs, align 1, !noalias !1339
  %i.vt = add i64 %i.vo, 1
  store i64 %i.vt, ptr %i.uu, align 8, !noalias !1097
  br label %bb.cr

bb.cr:                                            ; preds = %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureE8push_mutCsfPYenFzdTHO_5uu_wc.exit4.i, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureE8push_mutCsfPYenFzdTHO_5uu_wc.exit.i, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.i
  %i.vu = phi ptr [ %i.vd, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.i ], [ %i.vl, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureE8push_mutCsfPYenFzdTHO_5uu_wc.exit.i ], [ %i.vl, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureE8push_mutCsfPYenFzdTHO_5uu_wc.exit4.i ]
  %i.vv = phi i64 [ %i.ve, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.i ], [ %i.vn, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureE8push_mutCsfPYenFzdTHO_5uu_wc.exit.i ], [ %i.vn, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureE8push_mutCsfPYenFzdTHO_5uu_wc.exit4.i ] ; 2 uses
  %i.vw = icmp eq ptr %i.vf, %i.va
  br i1 %i.vw, label %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread.i, label %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.i

_RNvCsfPYenFzdTHO_5uu_wc16wc_simd_features.exit:  ; preds = %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc.exit.thread.i, %bb.cm
  %.sroa.9.24.copyload = load i64, ptr %i.ap, align 8, !noalias !1342 ; 2 uses
  %.sroa.11.24.copyload = load ptr, ptr %i.ur, align 8, !noalias !1342 ; 5 uses
  %.sroa.14.48.copyload = load i64, ptr %i.ao, align 8, !noalias !1342 ; 2 uses
  %.sroa.16.48.copyload = load ptr, ptr %i.ut, align 8, !noalias !1342 ; 2 uses
  %.sroa.17.48.copyload = load i64, ptr %i.uu, align 8, !noalias !1342 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.i) ]
  %i.vx = shl i64 %.sroa.6.0.i, 4                 ; 4 uses
  %i.vy = icmp ugt i64 %.sroa.6.0.i, 1152921504606846975
  %.not.i.i.i = icmp ugt i64 %i.vx, 9223372036854775800
  %or.cond.i.i.i = or i1 %i.vy, %.not.i.i.i
  br i1 %or.cond.i.i.i, label %bb.ct, label %bb.cs, !prof !377

bb.cs:                                            ; preds = %_RNvCsfPYenFzdTHO_5uu_wc16wc_simd_features.exit
  %i.vz = icmp eq i64 %i.vx, 0
  br i1 %i.vz, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecReE7reserveCsfPYenFzdTHO_5uu_wc.exit.i.i.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %bb.cs
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !1343
  %i.wa = call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.vx, i64 noundef range(i64 1, 9) 8) #28, !noalias !1343 ; 2 uses
  %i.wb = icmp eq ptr %i.wa, null
  br i1 %i.wb, label %bb.ct, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecReE7reserveCsfPYenFzdTHO_5uu_wc.exit.i.i.i

bb.ct:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i, %_RNvCsfPYenFzdTHO_5uu_wc16wc_simd_features.exit
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i ], [ 0, %_RNvCsfPYenFzdTHO_5uu_wc16wc_simd_features.exit ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.vx) #30, !noalias !1348
  unreachable

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecReE7reserveCsfPYenFzdTHO_5uu_wc.exit.i.i.i: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i, %bb.cs
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.cs ], [ %i.wa, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i ] ; 6 uses
  %.sroa.4.0.i.i = phi i64 [ 0, %bb.cs ], [ %.sroa.6.0.i, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i ] ; 3 uses
  %i.wc = icmp samesign ule i64 %.sroa.6.0.i, %.sroa.4.0.i.i
  call void @llvm.assume(i1 %i.wc)
  %i.wd = icmp eq i64 %.sroa.6.0.i, 0             ; 2 uses
  br i1 %i.wd, label %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB1F_6copied6CopiedINtNtNtB1J_5slice4iter4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENvCsfPYenFzdTHO_5uu_wc22hardware_feature_labelEE9from_iterB4g_.exit, label %.preheader.i.i.i.preheader

.preheader.i.i.i.preheader:                       ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecReE7reserveCsfPYenFzdTHO_5uu_wc.exit.i.i.i
  %xtraiter2265 = and i64 %.sroa.6.0.i, 1
  %i.we = icmp eq i64 %.sroa.6.0.i, 1
  br i1 %i.we, label %.preheader.i.i.i.epil.preheader, label %.preheader.i.i.i.preheader.new

.preheader.i.i.i.preheader.new:                   ; preds = %.preheader.i.i.i.preheader
  %unroll_iter = and i64 %.sroa.6.0.i, 1152921504606846974
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i, %.preheader.i.i.i.preheader.new
  %i.wf = phi i64 [ 0, %.preheader.i.i.i.preheader.new ], [ %i.wr, %.preheader.i.i.i ] ; 4 uses
  %niter = phi i64 [ 0, %.preheader.i.i.i.preheader.new ], [ %niter.next.1, %.preheader.i.i.i ]
  %i.wg = getelementptr inbounds nuw i8, ptr %.sroa.5.0.i, i64 %i.wf
  %.val11.i.i.i.i.i.i.i = load i8, ptr %i.wg, align 1, !range !439, !noalias !1349, !noundef !7 ; 2 uses
  %i.wh = zext nneg i8 %.val11.i.i.i.i.i.i.i to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvCsfPYenFzdTHO_5uu_wc2wc.290, i64 %i.wh
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.wi = zext nneg i8 %.val11.i.i.i.i.i.i.i to i64
  %switch.gep1949.a = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvCsfPYenFzdTHO_5uu_wc2wc.291, i64 %i.wi
  %switch.load1950.a = load ptr, ptr %switch.gep1949.a, align 8
  %i.wj = getelementptr inbounds nuw [16 x i8], ptr %.sroa.10.0.i.i, i64 %i.wf ; 2 uses
  store ptr %switch.load1950.a, ptr %i.wj, align 8, !noalias !1362, !captures !419
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wj, i64 8
  store i64 %switch.ext, ptr %i.wk, align 8, !noalias !1373
  %i.wl = or disjoint i64 %i.wf, 1                ; 2 uses
  %i.wm = getelementptr inbounds nuw i8, ptr %.sroa.5.0.i, i64 %i.wl
  %.val11.i.i.i.i.i.i.i.1 = load i8, ptr %i.wm, align 1, !range !439, !noalias !1349, !noundef !7 ; 2 uses
  %i.wn = zext nneg i8 %.val11.i.i.i.i.i.i.i.1 to i64
  %switch.gep.1 = getelementptr inbounds nuw i8, ptr @switch.table._RNvCsfPYenFzdTHO_5uu_wc2wc.290, i64 %i.wn
  %switch.load.1 = load i8, ptr %switch.gep.1, align 1
  %switch.ext.1 = zext i8 %switch.load.1 to i64
  %i.wo = zext nneg i8 %.val11.i.i.i.i.i.i.i.1 to i64
  %switch.gep1949.1.a = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvCsfPYenFzdTHO_5uu_wc2wc.291, i64 %i.wo
  %switch.load1950.1.a = load ptr, ptr %switch.gep1949.1.a, align 8
  %i.wp = getelementptr inbounds nuw [16 x i8], ptr %.sroa.10.0.i.i, i64 %i.wl ; 2 uses
  store ptr %switch.load1950.1.a, ptr %i.wp, align 8, !noalias !1362, !captures !419
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wp, i64 8
  store i64 %switch.ext.1, ptr %i.wq, align 8, !noalias !1373
  %i.wr = add nuw i64 %i.wf, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB1F_6copied6CopiedINtNtNtB1J_5slice4iter4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENvCsfPYenFzdTHO_5uu_wc22hardware_feature_labelEE9from_iterB4g_.exit.loopexit.unr-lcssa, label %.preheader.i.i.i

_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB1F_6copied6CopiedINtNtNtB1J_5slice4iter4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENvCsfPYenFzdTHO_5uu_wc22hardware_feature_labelEE9from_iterB4g_.exit.loopexit.unr-lcssa: ; preds = %.preheader.i.i.i
  %lcmp.mod2266.not = icmp eq i64 %xtraiter2265, 0
  br i1 %lcmp.mod2266.not, label %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB1F_6copied6CopiedINtNtNtB1J_5slice4iter4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENvCsfPYenFzdTHO_5uu_wc22hardware_feature_labelEE9from_iterB4g_.exit, label %.preheader.i.i.i.epil.preheader

.preheader.i.i.i.epil.preheader:                  ; preds = %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB1F_6copied6CopiedINtNtNtB1J_5slice4iter4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENvCsfPYenFzdTHO_5uu_wc22hardware_feature_labelEE9from_iterB4g_.exit.loopexit.unr-lcssa, %.preheader.i.i.i.preheader
  %.epil.init = phi i64 [ 0, %.preheader.i.i.i.preheader ], [ %i.wr, %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB1F_6copied6CopiedINtNtNtB1J_5slice4iter4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENvCsfPYenFzdTHO_5uu_wc22hardware_feature_labelEE9from_iterB4g_.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod2267 = trunc i64 %.sroa.6.0.i to i1
  call void @llvm.assume(i1 %lcmp.mod2267)
  %i.ws = getelementptr inbounds nuw i8, ptr %.sroa.5.0.i, i64 %.epil.init
  %.val11.i.i.i.i.i.i.i.epil = load i8, ptr %i.ws, align 1, !range !439, !noalias !1349, !noundef !7 ; 2 uses
  %i.wt = zext nneg i8 %.val11.i.i.i.i.i.i.i.epil to i64
  %switch.gep.epil = getelementptr inbounds nuw i8, ptr @switch.table._RNvCsfPYenFzdTHO_5uu_wc2wc.290, i64 %i.wt
  %switch.load.epil = load i8, ptr %switch.gep.epil, align 1
  %switch.ext.epil = zext i8 %switch.load.epil to i64
end_hunk_0
begin_hunk_1_@_RNvXs1g_NtCs6JMX4GRUq9U_4core3fmtRRShNtB6_5Debug3fmtCsfPYenFzdTHO_5uu_wc:bb.a
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !7, !align !175, !noundef !7 ; 2 uses
  %.val = load ptr, ptr %i.c, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 8
  %.val1 = load i64, ptr %i.d, align 8, !noundef !7 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2845
  call void @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #28, !noalias !2851
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 %.val1
  %i.f = icmp samesign eq i64 %.val1, 0
  br i1 %i.f, label %_RNvXs1g_NtCs6JMX4GRUq9U_4core3fmtRShNtB6_5Debug3fmtCsfPYenFzdTHO_5uu_wc.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.sroa.0.05.i.i.i = phi ptr [ %i.g, %.lr.ph.i.i.i ], [ %.val, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i, i64 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2852
  store ptr %.sroa.0.05.i.i.i, ptr %i.a, align 8, !noalias !2852, !captures !419
  %i.h = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCs6JMX4GRUq9U_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @19) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2852
  %i.i = icmp eq ptr %i.g, %i.e
  br i1 %i.i, label %_RNvXs1g_NtCs6JMX4GRUq9U_4core3fmtRShNtB6_5Debug3fmtCsfPYenFzdTHO_5uu_wc.exit, label %.lr.ph.i.i.i

_RNvXs1g_NtCs6JMX4GRUq9U_4core3fmtRShNtB6_5Debug3fmtCsfPYenFzdTHO_5uu_wc.exit: ; preds = %.lr.ph.i.i.i, %bb.a
  %i.j = call noundef zeroext i1 @_RNvMs6_NtNtCs6JMX4GRUq9U_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2845
  ret i1 %i.j
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs6JMX4GRUq9U_4core3fmtRhNtB6_5Debug3fmtCsfPYenFzdTHO_5uu_wc(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i32, ptr %i.b, align 8, !alias.scope !2855, !noalias !2858, !noundef !7 ; 2 uses
  %i.d = and i32 %i.c, 33554432
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.c, 67108864
  %.not1.i = icmp eq i32 %i.e, 0
  br i1 %.not1.i, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvXse_NtNtCs6JMX4GRUq9U_4core3fmt3numhNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #28
  br label %_RNvXsU_NtNtCs6JMX4GRUq9U_4core3fmt3numhNtB7_5Debug3fmt.exit

bb.d:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXNtNtNtCs6JMX4GRUq9U_4core3fmt3num3imphNtB6_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #28
  br label %_RNvXsU_NtNtCs6JMX4GRUq9U_4core3fmt3numhNtB7_5Debug3fmt.exit

bb.e:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvXsg_NtNtCs6JMX4GRUq9U_4core3fmt3numhNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #28
  br label %_RNvXsU_NtNtCs6JMX4GRUq9U_4core3fmt3numhNtB7_5Debug3fmt.exit

_RNvXsU_NtNtCs6JMX4GRUq9U_4core3fmt3numhNtB7_5Debug3fmt.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.0.in.i = phi i1 [ %i.f, %bb.c ], [ %i.h, %bb.e ], [ %i.g, %bb.d ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs6JMX4GRUq9U_4core3fmtRjNtB6_5Debug3fmtCsfPYenFzdTHO_5uu_wc(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !7, !align !175, !noundef !7 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i32, ptr %i.b, align 8, !alias.scope !2860, !noalias !2863, !noundef !7 ; 2 uses
  %i.d = and i32 %i.c, 33554432
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.c, 67108864
  %.not1.i = icmp eq i32 %i.e, 0
  br i1 %.not1.i, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvXs6_NtNtCs6JMX4GRUq9U_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #28
  br label %_RNvXsZ_NtNtCs6JMX4GRUq9U_4core3fmt3numjNtB7_5Debug3fmt.exit

bb.d:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXsi_NtNtNtCs6JMX4GRUq9U_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #28
  br label %_RNvXsZ_NtNtCs6JMX4GRUq9U_4core3fmt3numjNtB7_5Debug3fmt.exit

bb.e:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvXs8_NtNtCs6JMX4GRUq9U_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #28
  br label %_RNvXsZ_NtNtCs6JMX4GRUq9U_4core3fmt3numjNtB7_5Debug3fmt.exit

_RNvXsZ_NtNtCs6JMX4GRUq9U_4core3fmt3numjNtB7_5Debug3fmt.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.0.in.i = phi i1 [ %i.f, %bb.c ], [ %i.h, %bb.e ], [ %i.g, %bb.d ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCsfPYenFzdTHO_5uu_wc(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !7
  %i.d = tail call noundef zeroext i1 @_RNvXsi_NtCs6JMX4GRUq9U_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #28
  ret i1 %i.d
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtRjNtB6_7Display3fmtCsfPYenFzdTHO_5uu_wc(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !7, !align !175, !noundef !7
  %i.b = tail call noundef zeroext i1 @_RNvXsi_NtNtNtCs6JMX4GRUq9U_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #28
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_RNvXs7_CsfPYenFzdTHO_5uu_wcNtB5_7WcErrorNtNtNtCsh036I4OHgIr_6uucore4mods5error6UError5usage(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #10 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !321, !noundef !7
  %i.b = icmp eq i64 %i.a, -9223372036854775808
  ret i1 %i.b
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsK_NtCs6JMX4GRUq9U_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @142, i64 noundef 5) #28
  ret i1 %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc noundef ptr @_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(160) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !1126, !noundef !7
  %i.b = tail call i64 @llvm.usub.sat.i64(i64 %i.a, i64 1)
  switch i64 %i.b, label %default.unreachable [
    i64 0, label %bb.b
    i64 1, label %.preheader
    i64 2, label %bb.c
  ]

.preheader:                                       ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = tail call fastcc { ptr, ptr } @_RNvXsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc(ptr noalias nofree noundef align 8 dereferenceable(72) %i.c) #28
  %i.e = extractvalue { ptr, ptr } %i.d, 0        ; 2 uses
  %.not3958 = icmp eq ptr %i.e, null
  br i1 %.not3958, label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRRNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureE6map_orNtNtB5_3cmp8OrderingNCNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB2k_10DifferenceBK_ENtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsfPYenFzdTHO_5uu_wc.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %bb.k

default.unreachable:                              ; preds = %bb.a
  unreachable

.loopexit:                                        ; preds = %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRRNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureE6map_orNtNtB5_3cmp8OrderingNCNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB2k_10DifferenceBK_ENtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsfPYenFzdTHO_5uu_wc.exit
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.g = tail call fastcc { ptr, ptr } @_RNvXsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc(ptr noalias nofree noundef align 8 dereferenceable(72) %0) #28
  %i.h = extractvalue { ptr, ptr } %i.g, 0        ; 2 uses
  %.not41 = icmp eq ptr %i.h, null
  br i1 %.not41, label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRRNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureE6map_orNtNtB5_3cmp8OrderingNCNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB2k_10DifferenceBK_ENtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsfPYenFzdTHO_5uu_wc.exit.thread, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = tail call fastcc { ptr, ptr } @_RNvXsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc(ptr noalias nofree noundef align 8 dereferenceable(72) %i.i) #28
  %i.k = extractvalue { ptr, ptr } %i.j, 0
  br label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRRNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureE6map_orNtNtB5_3cmp8OrderingNCNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB2k_10DifferenceBK_ENtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsfPYenFzdTHO_5uu_wc.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  br label %.outer

.outer:                                           ; preds = %.outer.backedge, %bb.d
  %.sroa.06.0.ph = phi ptr [ %i.h, %bb.d ], [ %i.u, %.outer.backedge ] ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %.outer, %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2865)
  %i.o = load i64, ptr %i.m, align 8, !range !407, !alias.scope !2865, !noalias !2868, !noundef !7
  %i.p = trunc nuw i64 %i.o to i1
  br i1 %i.p, label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_RNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2h_8PeekableINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set4IterBN_EE4peek0ECsfPYenFzdTHO_5uu_wc.exitthread-pre-split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = tail call fastcc { ptr, ptr } @_RNvXsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.l) #28, !noalias !2865
  %i.r = extractvalue { ptr, ptr } %i.q, 0        ; 2 uses
  store i64 1, ptr %i.m, align 8, !alias.scope !2865, !noalias !2868
  store ptr %i.r, ptr %i.n, align 8, !alias.scope !2865, !noalias !2868
  br label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_RNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2h_8PeekableINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set4IterBN_EE4peek0ECsfPYenFzdTHO_5uu_wc.exit

_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_RNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2h_8PeekableINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set4IterBN_EE4peek0ECsfPYenFzdTHO_5uu_wc.exitthread-pre-split: ; preds = %bb.e
  %.pr = load ptr, ptr %i.n, align 8
  br label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_RNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2h_8PeekableINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set4IterBN_EE4peek0ECsfPYenFzdTHO_5uu_wc.exit

_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_RNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2h_8PeekableINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set4IterBN_EE4peek0ECsfPYenFzdTHO_5uu_wc.exit: ; preds = %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_RNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2h_8PeekableINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set4IterBN_EE4peek0ECsfPYenFzdTHO_5uu_wc.exitthread-pre-split, %bb.f
  %.val4.i = phi ptr [ %.pr, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_RNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2h_8PeekableINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set4IterBN_EE4peek0ECsfPYenFzdTHO_5uu_wc.exitthread-pre-split ], [ %i.r, %bb.f ] ; 2 uses
  %.not42 = icmp eq ptr %.val4.i, null
  br i1 %.not42, label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRRNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureE6map_orNtNtB5_3cmp8OrderingNCNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB2k_10DifferenceBK_ENtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsfPYenFzdTHO_5uu_wc.exit.thread, label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRRNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureE6map_orNtNtB5_3cmp8OrderingNCNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB2k_10DifferenceBK_ENtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsfPYenFzdTHO_5uu_wc.exit

_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRRNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureE6map_orNtNtB5_3cmp8OrderingNCNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB2k_10DifferenceBK_ENtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsfPYenFzdTHO_5uu_wc.exit: ; preds = %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_RNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2h_8PeekableINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set4IterBN_EE4peek0ECsfPYenFzdTHO_5uu_wc.exit
  %.sroa.06.0.val = load i8, ptr %.sroa.06.0.ph, align 1
  %.val1.i.i = load i8, ptr %.val4.i, align 1, !range !439, !noalias !2870, !noundef !7
  %i.s = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i8(i8 %.sroa.06.0.val, i8 %.val1.i.i)
  switch i8 %i.s, label %.loopexit [
    i8 -1, label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRRNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureE6map_orNtNtB5_3cmp8OrderingNCNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB2k_10DifferenceBK_ENtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsfPYenFzdTHO_5uu_wc.exit.thread
    i8 0, label %bb.g
    i8 1, label %bb.h
  ]

bb.g:                                             ; preds = %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRRNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureE6map_orNtNtB5_3cmp8OrderingNCNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB2k_10DifferenceBK_ENtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsfPYenFzdTHO_5uu_wc.exit
  %i.t = tail call fastcc { ptr, ptr } @_RNvXsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc(ptr noalias nofree noundef align 8 dereferenceable(72) %0) #28
  %i.u = extractvalue { ptr, ptr } %i.t, 0        ; 2 uses
  %.not44 = icmp eq ptr %i.u, null
  br i1 %.not44, label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRRNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureE6map_orNtNtB5_3cmp8OrderingNCNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB2k_10DifferenceBK_ENtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsfPYenFzdTHO_5uu_wc.exit.thread, label %bb.i

bb.h:                                             ; preds = %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRRNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureE6map_orNtNtB5_3cmp8OrderingNCNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB2k_10DifferenceBK_ENtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsfPYenFzdTHO_5uu_wc.exit
  store i64 0, ptr %i.m, align 8
  br label %bb.e

bb.i:                                             ; preds = %bb.g
  %i.v = load i64, ptr %i.m, align 8, !range !407, !noundef !7
  store i64 0, ptr %i.m, align 8
  %i.w = trunc nuw i64 %i.v to i1
  br i1 %i.w, label %.outer.backedge, label %bb.j

.outer.backedge:                                  ; preds = %bb.i, %bb.j
  br label %.outer

_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRRNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureE6map_orNtNtB5_3cmp8OrderingNCNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB2k_10DifferenceBK_ENtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsfPYenFzdTHO_5uu_wc.exit.thread: ; preds = %_RINvMsi_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB8_7set_val9SetValZSTE3getB18_ECsfPYenFzdTHO_5uu_wc.exit, %bb.k, %._crit_edge, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_RNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2h_8PeekableINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set4IterBN_EE4peek0ECsfPYenFzdTHO_5uu_wc.exit, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRRNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureE6map_orNtNtB5_3cmp8OrderingNCNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB2k_10DifferenceBK_ENtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsfPYenFzdTHO_5uu_wc.exit, %bb.g, %.preheader, %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ null, %bb.b ], [ %i.k, %bb.c ], [ %i.y, %._crit_edge ], [ null, %.preheader ], [ null, %bb.g ], [ %.sroa.06.0.ph, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRRNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureE6map_orNtNtB5_3cmp8OrderingNCNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB2k_10DifferenceBK_ENtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsfPYenFzdTHO_5uu_wc.exit ], [ %.sroa.06.0.ph, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_RNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2h_8PeekableINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set4IterBN_EE4peek0ECsfPYenFzdTHO_5uu_wc.exit ], [ %i.y, %bb.k ], [ null, %_RINvMsi_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB8_7set_val9SetValZSTE3getB18_ECsfPYenFzdTHO_5uu_wc.exit ]
  ret ptr %.sroa.0.0

bb.j:                                             ; preds = %bb.i
  %i.x = tail call fastcc { ptr, ptr } @_RNvXsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc(ptr noalias nofree noundef align 8 dereferenceable(72) %i.l) #28 ; 0 uses
  br label %.outer.backedge

bb.k:                                             ; preds = %.lr.ph, %_RINvMsi_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB8_7set_val9SetValZSTE3getB18_ECsfPYenFzdTHO_5uu_wc.exit
  %i.y = phi ptr [ %i.e, %.lr.ph ], [ %i.as, %_RINvMsi_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB8_7set_val9SetValZSTE3getB18_ECsfPYenFzdTHO_5uu_wc.exit ] ; 3 uses
  %i.z = load ptr, ptr %i.f, align 8, !nonnull !7, !align !175, !noundef !7 ; 2 uses
  %.val = load ptr, ptr %i.z, align 8, !noundef !7 ; 2 uses
  %.val47 = load i8, ptr %i.y, align 1
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRRNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureE6map_orNtNtB5_3cmp8OrderingNCNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB2k_10DifferenceBK_ENtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsfPYenFzdTHO_5uu_wc.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = getelementptr i8, ptr %i.z, i64 8
  %.val46 = load i64, ptr %i.aa, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.p
  %.sroa.3.0.i.i = phi i64 [ %i.aq, %bb.p ], [ %.val46, %bb.l ] ; 2 uses
  %.sroa.0.0.i.i = phi ptr [ %i.ap, %bb.p ], [ %.val, %bb.l ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 12 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 10
  %i.ad = load i16, ptr %i.ac, align 2, !noalias !2873, !noundef !7 ; 2 uses
  %i.ae = zext i16 %i.ad to i64                   ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ae
  %i.ag = icmp eq i16 %i.ad, 0
  br i1 %i.ag, label %._crit_edge, label %.lr.ph87

bb.n:                                             ; preds = %.lr.ph87
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.i86, i64 1 ; 2 uses
  %i.ai = add nuw nsw i64 %.sroa.8.0.i.i.i85, 1
  %i.aj = icmp eq ptr %i.ah, %i.af
  br i1 %i.aj, label %._crit_edge, label %.lr.ph87

.lr.ph87:                                         ; preds = %bb.m, %bb.n
  %.sroa.0.03.i.i.i86 = phi ptr [ %i.ah, %bb.n ], [ %i.ab, %bb.m ] ; 2 uses
  %.sroa.8.0.i.i.i85 = phi i64 [ %i.ai, %bb.n ], [ 0, %bb.m ] ; 2 uses
  %.val6.i.i.i = load i8, ptr %.sroa.0.03.i.i.i86, align 1, !range !439, !noalias !2873, !noundef !7
  %i.ak = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i8(i8 %.val47, i8 %.val6.i.i.i)
  switch i8 %i.ak, label %bb.o [
    i8 -1, label %._crit_edge
    i8 0, label %_RINvMsi_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB8_7set_val9SetValZSTE3getB18_ECsfPYenFzdTHO_5uu_wc.exit
    i8 1, label %bb.n
  ]

bb.o:                                             ; preds = %.lr.ph87
  unreachable

._crit_edge:                                      ; preds = %bb.n, %.lr.ph87, %bb.m
  %.sroa.4.0.i.ph.i.i = phi i64 [ %i.ae, %bb.m ], [ %i.ae, %bb.n ], [ %.sroa.8.0.i.i.i85, %.lr.ph87 ] ; 2 uses
  %i.al = icmp eq i64 %.sroa.3.0.i.i, 0
  br i1 %i.al, label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRRNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureE6map_orNtNtB5_3cmp8OrderingNCNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB2k_10DifferenceBK_ENtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsfPYenFzdTHO_5uu_wc.exit.thread, label %bb.p

bb.p:                                             ; preds = %._crit_edge
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 24
  %i.an = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i, 12
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %.sroa.4.0.i.ph.i.i
  %i.ap = load ptr, ptr %i.ao, align 8, !noalias !2873, !nonnull !7, !noundef !7
  %i.aq = add i64 %.sroa.3.0.i.i, -1
  br label %bb.m

_RINvMsi_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB8_7set_val9SetValZSTE3getB18_ECsfPYenFzdTHO_5uu_wc.exit: ; preds = %.lr.ph87
  %i.ar = tail call fastcc { ptr, ptr } @_RNvXsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc(ptr noalias nofree noundef align 8 dereferenceable(72) %i.c) #28
  %i.as = extractvalue { ptr, ptr } %i.ar, 0      ; 2 uses
  %.not39 = icmp eq ptr %i.as, null
  br i1 %.not39, label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRRNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureE6map_orNtNtB5_3cmp8OrderingNCNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB2k_10DifferenceBK_ENtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsfPYenFzdTHO_5uu_wc.exit.thread, label %bb.k
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCs6JMX4GRUq9U_4core6optionINtB5_6OptionNtNtCs7tKScEop1B6_5alloc6string6StringENtNtB7_3fmt5Debug3fmtCsfPYenFzdTHO_5uu_wc(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !238, !noundef !7
  %.not = icmp eq i64 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @145, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @144) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @143, i64 noundef 4) #28
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt5Write10write_char(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2876)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !2876, !noundef !7 ; 5 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i32 %1, 128            ; 2 uses
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i32 %1, 2048
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp samesign ult i32 %1, 65536
  %..i = select i1 %i.f, i64 3, i64 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.0.0.i = phi i64 [ 2, %bb.b ], [ %..i, %bb.c ], [ 1, %bb.a ] ; 3 uses
  %i.g = load i64, ptr %0, align 8, !range !76, !alias.scope !2879, !noundef !7
  %i.h = sub nsw i64 %i.g, %i.b
  %i.i = icmp ugt i64 %.sroa.0.0.i, %i.h
  br i1 %i.i, label %bb.e, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsfPYenFzdTHO_5uu_wc.exit.i, !prof !185

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfPYenFzdTHO_5uu_wc(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %.sroa.0.0.i, i64 noundef 1, i64 noundef 1) #28
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsfPYenFzdTHO_5uu_wc.exit.i

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsfPYenFzdTHO_5uu_wc.exit.i: ; preds = %bb.e, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !2876, !nonnull !7, !noundef !7
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.b ; 10 uses
  br i1 %i.d, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsfPYenFzdTHO_5uu_wc.exit.i
  %i.m = icmp samesign ult i32 %1, 2048
  %i.n = trunc i32 %1 to i8
  %i.o = and i8 %i.n, 63
  %i.p = or disjoint i8 %i.o, -128                ; 3 uses
  %i.q = lshr i32 %1, 6
  %i.r = trunc i32 %i.q to i8                     ; 2 uses
  %i.s = and i8 %i.r, 63
  %i.t = or disjoint i8 %i.s, -128                ; 2 uses
  %i.u = lshr i32 %1, 12
  %i.v = trunc i32 %i.u to i8                     ; 2 uses
  %i.w = and i8 %i.v, 63
  %i.x = or disjoint i8 %i.w, -128
  %i.y = lshr i32 %1, 18
  %i.z = trunc nuw nsw i32 %i.y to i8
  %i.aa = or disjoint i8 %i.z, -16
  br i1 %i.m, label %bb.h, label %bb.i

bb.g:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsfPYenFzdTHO_5uu_wc.exit.i
  %i.ab = trunc nuw nsw i32 %1 to i8
  store i8 %i.ab, ptr %i.l, align 1, !noalias !2876
  br label %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit

bb.h:                                             ; preds = %bb.f
  %i.ac = or disjoint i8 %i.r, -64
  store i8 %i.ac, ptr %i.l, align 1, !noalias !2876
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  store i8 %i.p, ptr %i.ad, align 1, !noalias !2876
  br label %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit

bb.i:                                             ; preds = %bb.f
  %i.ae = icmp samesign ult i32 %1, 65536
  br i1 %i.ae, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.af = or disjoint i8 %i.v, -32
  store i8 %i.af, ptr %i.l, align 1, !noalias !2876
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  store i8 %i.t, ptr %i.ag, align 1, !noalias !2876
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  store i8 %i.p, ptr %i.ah, align 1, !noalias !2876
  br label %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit

bb.k:                                             ; preds = %bb.i
  store i8 %i.aa, ptr %i.l, align 1, !noalias !2876
  %i.ai = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  store i8 %i.x, ptr %i.ai, align 1, !noalias !2876
  %i.aj = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  store i8 %i.t, ptr %i.aj, align 1, !noalias !2876
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 3
  store i8 %i.p, ptr %i.ak, align 1, !noalias !2876
  br label %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit

_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit: ; preds = %bb.g, %bb.h, %bb.j, %bb.k
  %i.al = add nuw i64 %.sroa.0.0.i, %i.b
  store i64 %i.al, ptr %i.a, align 8, !alias.scope !2876
  ret i1 false
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt5Write9write_str(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #3 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2882)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2885)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !2888, !noalias !2891, !noundef !7 ; 5 uses
  %i.c = load i64, ptr %0, align 8, !range !76, !alias.scope !2888, !noalias !2891, !noundef !7
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %2, %i.d
  br i1 %i.e, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsfPYenFzdTHO_5uu_wc.exit.thread.i.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsfPYenFzdTHO_5uu_wc.exit.i.i, !prof !185

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsfPYenFzdTHO_5uu_wc.exit.thread.i.i: ; preds = %bb.a
  tail call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfPYenFzdTHO_5uu_wc(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %2, i64 noundef 1, i64 noundef 1) #28, !noalias !2891
  %i.f = load i64, ptr %i.a, align 8, !alias.scope !2893, !noalias !2891, !noundef !7 ; 2 uses
  %i.g = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.g)
  br label %bb.b

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsfPYenFzdTHO_5uu_wc.exit.i.i: ; preds = %bb.a
  %i.h = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.h)
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String8push_str.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsfPYenFzdTHO_5uu_wc.exit.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsfPYenFzdTHO_5uu_wc.exit.thread.i.i
  %i.i = phi i64 [ %i.f, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsfPYenFzdTHO_5uu_wc.exit.thread.i.i ], [ %i.b, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsfPYenFzdTHO_5uu_wc.exit.i.i ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !2893, !noalias !2891, !nonnull !7, !noundef !7
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr nonnull readonly align 1 %1, i64 %2, i1 false), !noalias !2893
  br label %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String8push_str.exit

_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String8push_str.exit: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsfPYenFzdTHO_5uu_wc.exit.i.i, %bb.b
  %i.m = phi i64 [ %i.i, %bb.b ], [ %i.b, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsfPYenFzdTHO_5uu_wc.exit.i.i ]
  %i.n = add i64 %i.m, %2
  store i64 %i.n, ptr %i.a, align 8, !alias.scope !2893, !noalias !2891
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXs_NtCsfPYenFzdTHO_5uu_wc10word_countNtB4_9WordCountNtNtNtCs6JMX4GRUq9U_4core3ops5arith9AddAssign10add_assign(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.75.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.sroa.75.0.copyload = load i64, ptr %.sroa.75.0..sroa_idx, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !2894, !noalias !2897, !noundef !7
  %..i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.c, i64 %.sroa.75.0.copyload)
end_hunk_1
begin_hunk_2_@_RNvNtNtCs6JMX4GRUq9U_4core9panicking11panic_const23panic_const_rem_by_zero
declare void @_RNvNtNtCs6JMX4GRUq9U_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #16

; Function Attrs: nounwind nonlazybind uwtable
declare { i64, ptr } @_RNvXsc_NtCs2vKOLqTMYjT_3std2fsNtB5_4FileNtNtNtCs6JMX4GRUq9U_4core2io4seek4Seek4seek(ptr noalias nofree noundef align 4 dereferenceable(4), i64 noundef range(i64 0, 3), i64 noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #19

; Function Attrs: nounwind nonlazybind uwtable
declare { i64, ptr } @_RNvXsa_NtCs2vKOLqTMYjT_3std2fsNtB5_4FileNtNtNtCs7tKScEop1B6_5alloc2io4read4Read4read(ptr noalias nofree noundef align 4 dereferenceable(4), ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare { i64, ptr } @_RNvXs6_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_9StdinLockNtNtNtCs7tKScEop1B6_5alloc2io4read4Read4read(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, -1) i32 @_RNvXs3_NtNtNtCs2vKOLqTMYjT_3std3sys2fd4unixNtB5_8FileDescNtNtNtNtBb_2os2fd5owned4AsFd5as_fd(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, -1) i32 @_RNvXsA_NtNtNtCs2vKOLqTMYjT_3std2os2fd5ownedNtNtNtBb_2io4pipe10PipeWriterNtB5_4AsFd5as_fd(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, -1) i32 @_RNvXsy_NtNtNtCs2vKOLqTMYjT_3std2os2fd5ownedNtNtNtBb_2io4pipe10PipeReaderNtB5_4AsFd5as_fd(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs1_NtNtCsh036I4OHgIr_6uucore8features8hardwareNtB5_10SimdPolicy6detect() unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i64 @_RNvNtCs4yUM5x5lkvE_9bytecount5naive11naive_count(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), i8 noundef) unnamed_addr #1

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #16

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i64 @_RNvCs4yUM5x5lkvE_9bytecount5count(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), i8 noundef) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i64 @_RNvNtCs4yUM5x5lkvE_9bytecount5naive15naive_num_chars(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i64 @_RNvCs4yUM5x5lkvE_9bytecount9num_chars(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNtNtNtCs2vKOLqTMYjT_3std3sys4pipe4unix4pipe(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16)) unnamed_addr #1

; Function Attrs: cold minsize noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #20

; Function Attrs: mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @memcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #21

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsa_NtNtCsh036I4OHgIr_6uucore4mods5errorNtB5_8UIoErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #16

; Function Attrs: noinline nounwind nonlazybind uwtable
declare void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #5

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNtNtCsh036I4OHgIr_6uucore8features13quoting_style24locale_aware_escape_name(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, i24) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String15from_utf8_lossy(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_RNvNtNtCs2vKOLqTMYjT_3std4sync9lazy_lock14panic_poisoned() unnamed_addr #16

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNvNtCs7tKScEop1B6_5alloc3fmt6format12format_inner(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvNtNtCs2vKOLqTMYjT_3std2io5stdio6stdout() unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMsa_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6Stdout4lock(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare noundef ptr @_RNvXsi_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_10StdoutLockNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_all(ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMs1_NtNtCsh036I4OHgIr_6uucore8features8hardwareNtB5_10SimdPolicy17disabled_features(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvXs2_NtNtCsh036I4OHgIr_6uucore8features8hardwareNtB5_10SimdPolicyNtB5_19HasHardwareFeatures13iter_features(ptr dead_on_unwind noalias nofree noundef writable sret([160 x i8]) align 8 captures(none) dereferenceable(160), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvNtNtCs2vKOLqTMYjT_3std2io5stdio5stdin() unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare { ptr, i1 } @_RNvMs1_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_5Stdin4lock(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNtNtCsh036I4OHgIr_6uucore8features7signals21capture_startup_state() unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare noundef ptr @_RNvXso_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6StderrNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_fmt(ptr noalias nofree noundef align 8 dereferenceable(8), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNtNtCsh036I4OHgIr_6uucore4mods5error13set_exit_code(i32 noundef) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMsk_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6Stderr4lock(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare { ptr, i64 } @_RNvCsh036I4OHgIr_6uucore9util_name() unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare noundef ptr @_RNvXse_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6StdoutNtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flush(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsh036I4OHgIr_6uucore23localized_help_template(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsh036I4OHgIr_6uucore12format_usage(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMNtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB2_7Command12arg_internal(ptr noalias nofree noundef align 8 dereferenceable(712), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(640)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs7_NtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsStringNtNtCs6JMX4GRUq9U_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #16

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #22

; Function Attrs: nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable
declare noalias noundef ptr @_RNvCsjSVV5GABoor_7___rustc14___rust_realloc(ptr allocptr noundef nonnull, i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #23

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #1

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #24

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNtNtCs6JMX4GRUq9U_4core3str8converts9from_utf8(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: cold noinline nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() unnamed_addr #4

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvXs8_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_9StdinLockNtNtNtCs7tKScEop1B6_5alloc2io8buf_read7BufRead7consume(ptr noalias nofree noundef align 8 dereferenceable(16), i64 noundef) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvXs8_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_9StdinLockNtNtNtCs7tKScEop1B6_5alloc2io8buf_read7BufRead8fill_buf(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RINvNtCs6JMX4GRUq9U_4core9panicking13assert_failedINtNtB4_6option6OptionjEBM_EB4_(i8 noundef range(i8 0, 3), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noundef, ptr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #17

; Function Attrs: nounwind nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions16get_os_functions() unnamed_addr #1

; Function Attrs: noinline nounwind nonlazybind uwtable
declare void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value10AnyValueIdE8grow_oneBS_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #5

; Function Attrs: noinline nounwind nonlazybind uwtable
declare void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value8AnyValueE8grow_oneBS_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #5

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #15

; Function Attrs: noinline nounwind nonlazybind uwtable
declare void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecTINtNtB7_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE8grow_oneCsh036I4OHgIr_6uucore(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #18

; Function Attrs: cold minsize noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #18

; Function Attrs: nounwind nonlazybind uwtable
declare { i64, i64 } @_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr14memchr_aligned(i8 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtNtNtCs6JMX4GRUq9U_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare noundef ptr @_RNvXsa_NtCs2vKOLqTMYjT_3std2fsNtB5_4FileNtNtNtCs7tKScEop1B6_5alloc2io4read4Read8read_buf(ptr noalias nofree noundef align 4 dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare noundef ptr @_RNvXs6_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_9StdinLockNtNtNtCs7tKScEop1B6_5alloc2io4read4Read8read_buf(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare noundef ptr @_RNvXss_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_10StderrLockNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_all(ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtCs6JMX4GRUq9U_4core2io5errorNtB2_5ErrorNtNtB6_3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtCs6JMX4GRUq9U_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvXs4_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @close(i32 noundef) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_Cs46VsjAK4zfE_10os_displayNtB4_6QuotedNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs3_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: noinline nounwind nonlazybind uwtable
declare void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcDNtNtCs6JMX4GRUq9U_4core3any3AnyNtNtBL_6marker4SyncNtB1e_4SendEL_E9drop_slowCsgNwXemyrBWj_12clap_builder(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #5

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtNtCs6JMX4GRUq9U_4core3fmt3num3imphNtB6_7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsg_NtNtCs6JMX4GRUq9U_4core3fmt3numhNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXse_NtNtCs6JMX4GRUq9U_4core3fmt3numhNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtCs6JMX4GRUq9U_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtNtCs6JMX4GRUq9U_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsM_NtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_5OsStrNtNtCs6JMX4GRUq9U_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsh_NtCs6JMX4GRUq9U_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold nounwind nonlazybind uwtable
declare void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4) unnamed_addr #2

; Function Attrs: nounwind nonlazybind uwtable
declare { ptr, ptr } @_RNvXs_NtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parserNtB4_19ShortcutValueParserNtNtNtCsgNwXemyrBWj_12clap_builder7builder12value_parser16TypedValueParser15possible_values(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvXs_NtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parserNtB4_19ShortcutValueParserNtNtNtCsgNwXemyrBWj_12clap_builder7builder12value_parser16TypedValueParser9parse_ref(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(640), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare { ptr, i64 } @_RNvMsk_NtNtNtCs6JMX4GRUq9U_4core3fmt3num3impj4__fmt(i64 noundef, ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter10debug_list(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs6_NtNtCs6JMX4GRUq9U_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.ucmp.i8.i8(i8, i8) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

attributes #0 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { cold nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { inlinehint nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { cold noinline nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { noinline nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #16 = { cold noinline noreturn nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #20 = { cold minsize noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #22 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #24 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsjSVV5GABoor_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #26 = { inlinehint nounwind }
attributes #27 = { noinline nounwind }
attributes #28 = { nounwind }
attributes #29 = { noinline noreturn nounwind }
attributes #30 = { noreturn nounwind }
attributes #31 = { nounwind memory(read, inaccessiblemem: readwrite) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.99.0-nightly (7608eb7b0 2026-08-05)"}
!4 = !{!5}
!5 = distinct !{!5, !6, !"_RINvNtNtCs6JMX4GRUq9U_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsfPYenFzdTHO_5uu_wc: argument 0"}
!6 = distinct !{!6, !"_RINvNtNtCs6JMX4GRUq9U_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsfPYenFzdTHO_5uu_wc"}
!7 = !{}
!8 = !{!9}
!9 = distinct !{!9, !10, !"_RINvNtNtCs6JMX4GRUq9U_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsfPYenFzdTHO_5uu_wc: argument 0"}
!10 = distinct !{!10, !"_RINvNtNtCs6JMX4GRUq9U_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsfPYenFzdTHO_5uu_wc"}
!11 = !{!12}
!12 = distinct !{!12, !13, !"_RINvNtNtCs6JMX4GRUq9U_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsfPYenFzdTHO_5uu_wc: argument 0"}
!13 = distinct !{!13, !"_RINvNtNtCs6JMX4GRUq9U_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsfPYenFzdTHO_5uu_wc"}
!14 = !{!15}
!15 = distinct !{!15, !16, !"_RINvNtNtCs6JMX4GRUq9U_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsfPYenFzdTHO_5uu_wc: argument 0"}
!16 = distinct !{!16, !"_RINvNtNtCs6JMX4GRUq9U_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsfPYenFzdTHO_5uu_wc"}
!17 = !{!18}
!18 = distinct !{!18, !19, !"_RINvNtNtCs6JMX4GRUq9U_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsfPYenFzdTHO_5uu_wc: argument 0"}
!19 = distinct !{!19, !"_RINvNtNtCs6JMX4GRUq9U_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsfPYenFzdTHO_5uu_wc"}
!20 = !{!21}
!21 = distinct !{!21, !22, !"_RINvNtNtCs6JMX4GRUq9U_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsfPYenFzdTHO_5uu_wc: argument 0"}
!22 = distinct !{!22, !"_RINvNtNtCs6JMX4GRUq9U_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsfPYenFzdTHO_5uu_wc"}
!23 = !{!24}
!24 = distinct !{!24, !25, !"_RINvNtNtCs6JMX4GRUq9U_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsfPYenFzdTHO_5uu_wc: argument 0"}
!25 = distinct !{!25, !"_RINvNtNtCs6JMX4GRUq9U_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsfPYenFzdTHO_5uu_wc"}
!26 = !{!27}
!27 = distinct !{!27, !28, !"_RINvNtNtCs6JMX4GRUq9U_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsfPYenFzdTHO_5uu_wc: argument 0"}
!28 = distinct !{!28, !"_RINvNtNtCs6JMX4GRUq9U_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsfPYenFzdTHO_5uu_wc"}
!29 = !{!30}
!30 = distinct !{!30, !31, !"_RINvNtNtCs6JMX4GRUq9U_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsfPYenFzdTHO_5uu_wc: argument 0"}
!31 = distinct !{!31, !"_RINvNtNtCs6JMX4GRUq9U_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsfPYenFzdTHO_5uu_wc"}
!32 = !{!33}
!33 = distinct !{!33, !34, !"_RINvNtNtCs6JMX4GRUq9U_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsfPYenFzdTHO_5uu_wc: argument 0"}
!34 = distinct !{!34, !"_RINvNtNtCs6JMX4GRUq9U_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsfPYenFzdTHO_5uu_wc"}
!35 = !{!36}
!36 = distinct !{!36, !37, !"_RINvNtNtCs6JMX4GRUq9U_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsfPYenFzdTHO_5uu_wc: argument 0"}
!37 = distinct !{!37, !"_RINvNtNtCs6JMX4GRUq9U_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsfPYenFzdTHO_5uu_wc"}
!38 = !{!39}
!39 = distinct !{!39, !40, !"_RINvNtNtCs6JMX4GRUq9U_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsfPYenFzdTHO_5uu_wc: argument 0"}
!40 = distinct !{!40, !"_RINvNtNtCs6JMX4GRUq9U_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsfPYenFzdTHO_5uu_wc"}
!41 = !{!42}
!42 = distinct !{!42, !43, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2v_10FluentArgs3setReNtNtBB_6string6StringE0ECsfPYenFzdTHO_5uu_wc: argument 0"}
!43 = distinct !{!43, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2v_10FluentArgs3setReNtNtBB_6string6StringE0ECsfPYenFzdTHO_5uu_wc"}
!44 = !{!45}
!45 = distinct !{!45, !46, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE16binary_search_byNCINvB2_20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2V_10FluentArgs3setReNtNtBB_6string6StringE0E0ECsfPYenFzdTHO_5uu_wc: argument 0"}
!46 = distinct !{!46, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE16binary_search_byNCINvB2_20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2V_10FluentArgs3setReNtNtBB_6string6StringE0E0ECsfPYenFzdTHO_5uu_wc"}
!47 = !{!48}
!48 = distinct !{!48, !49, !"_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBy_NCINvMNtB1e_4argsNtB2x_10FluentArgs3setReNtNtBD_6string6StringE0E0CsfPYenFzdTHO_5uu_wc: argument 0"}
!49 = distinct !{!49, !"_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBy_NCINvMNtB1e_4argsNtB2x_10FluentArgs3setReNtNtBD_6string6StringE0E0CsfPYenFzdTHO_5uu_wc"}
!50 = !{!51}
!51 = distinct !{!51, !52, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCsfPYenFzdTHO_5uu_wc: argument 0"}
!52 = distinct !{!52, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCsfPYenFzdTHO_5uu_wc"}
!53 = !{!51, !48, !45, !42}
!54 = !{!55, !56}
!55 = distinct !{!55, !52, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCsfPYenFzdTHO_5uu_wc: argument 1"}
!56 = distinct !{!56, !46, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE16binary_search_byNCINvB2_20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2V_10FluentArgs3setReNtNtBB_6string6StringE0E0ECsfPYenFzdTHO_5uu_wc: argument 1"}
!57 = !{!58, !60}
!58 = distinct !{!58, !59, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 0"}
!59 = distinct !{!59, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp"}
!60 = distinct !{!60, !59, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 1"}
!61 = !{!51, !55, !48, !45, !56, !42}
!62 = !{!63}
!63 = distinct !{!63, !64, !"_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBy_NCINvMNtB1e_4argsNtB2x_10FluentArgs3setReNtNtBD_6string6StringE0E0CsfPYenFzdTHO_5uu_wc: argument 0"}
!64 = distinct !{!64, !"_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBy_NCINvMNtB1e_4argsNtB2x_10FluentArgs3setReNtNtBD_6string6StringE0E0CsfPYenFzdTHO_5uu_wc"}
!65 = !{!66}
!66 = distinct !{!66, !67, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCsfPYenFzdTHO_5uu_wc: argument 0"}
!67 = distinct !{!67, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCsfPYenFzdTHO_5uu_wc"}
!68 = !{!66, !63, !45, !42}
!69 = !{!70, !56}
!70 = distinct !{!70, !67, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCsfPYenFzdTHO_5uu_wc: argument 1"}
!71 = !{!72, !74}
!72 = distinct !{!72, !73, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 0"}
!73 = distinct !{!73, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp"}
!74 = distinct !{!74, !73, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 1"}
!75 = !{!66, !70, !63, !45, !56, !42}
!76 = !{i64 0, i64 -9223372036854775808}
!77 = !{!78}
!78 = distinct !{!78, !79, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCsfPYenFzdTHO_5uu_wc: argument 0"}
!79 = distinct !{!79, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCsfPYenFzdTHO_5uu_wc"}
!80 = !{!81}
!81 = distinct !{!81, !79, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCsfPYenFzdTHO_5uu_wc: argument 1"}
!82 = !{!83}
!83 = distinct !{!83, !84, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2v_10FluentArgs3setRedE0ECsfPYenFzdTHO_5uu_wc: argument 0"}
!84 = distinct !{!84, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2v_10FluentArgs3setRedE0ECsfPYenFzdTHO_5uu_wc"}
!85 = !{!86}
!86 = distinct !{!86, !87, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE16binary_search_byNCINvB2_20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2V_10FluentArgs3setRedE0E0ECsfPYenFzdTHO_5uu_wc: argument 0"}
!87 = distinct !{!87, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE16binary_search_byNCINvB2_20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2V_10FluentArgs3setRedE0E0ECsfPYenFzdTHO_5uu_wc"}
!88 = !{!89}
!89 = distinct !{!89, !90, !"_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBy_NCINvMNtB1e_4argsNtB2x_10FluentArgs3setRedE0E0CsfPYenFzdTHO_5uu_wc: argument 0"}
!90 = distinct !{!90, !"_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBy_NCINvMNtB1e_4argsNtB2x_10FluentArgs3setRedE0E0CsfPYenFzdTHO_5uu_wc"}
!91 = !{!92}
!92 = distinct !{!92, !93, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCsfPYenFzdTHO_5uu_wc: argument 0"}
!93 = distinct !{!93, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCsfPYenFzdTHO_5uu_wc"}
!94 = !{!92, !89, !86, !83}
!95 = !{!96, !97}
!96 = distinct !{!96, !93, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCsfPYenFzdTHO_5uu_wc: argument 1"}
!97 = distinct !{!97, !87, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE16binary_search_byNCINvB2_20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2V_10FluentArgs3setRedE0E0ECsfPYenFzdTHO_5uu_wc: argument 1"}
!98 = !{!99, !101}
!99 = distinct !{!99, !100, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 0"}
!100 = distinct !{!100, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp"}
!101 = distinct !{!101, !100, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 1"}
!102 = !{!92, !96, !89, !86, !97, !83}
!103 = !{!104}
!104 = distinct !{!104, !105, !"_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBy_NCINvMNtB1e_4argsNtB2x_10FluentArgs3setRedE0E0CsfPYenFzdTHO_5uu_wc: argument 0"}
!105 = distinct !{!105, !"_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBy_NCINvMNtB1e_4argsNtB2x_10FluentArgs3setRedE0E0CsfPYenFzdTHO_5uu_wc"}
!106 = !{!107}
!107 = distinct !{!107, !108, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCsfPYenFzdTHO_5uu_wc: argument 0"}
!108 = distinct !{!108, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCsfPYenFzdTHO_5uu_wc"}
!109 = !{!107, !104, !86, !83}
!110 = !{!111, !97}
!111 = distinct !{!111, !108, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCsfPYenFzdTHO_5uu_wc: argument 1"}
!112 = !{!113, !115}
!113 = distinct !{!113, !114, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 0"}
!114 = distinct !{!114, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp"}
!115 = distinct !{!115, !114, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 1"}
!116 = !{!107, !111, !104, !86, !97, !83}
!117 = !{!118}
!118 = distinct !{!118, !119, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCsfPYenFzdTHO_5uu_wc: argument 0"}
!119 = distinct !{!119, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCsfPYenFzdTHO_5uu_wc"}
!120 = !{!121}
!121 = distinct !{!121, !119, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCsfPYenFzdTHO_5uu_wc: argument 1"}
!122 = !{!123}
!123 = distinct !{!123, !124, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2v_10FluentArgs3setRexE0ECsfPYenFzdTHO_5uu_wc: argument 0"}
!124 = distinct !{!124, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2v_10FluentArgs3setRexE0ECsfPYenFzdTHO_5uu_wc"}
!125 = !{!126}
!126 = distinct !{!126, !127, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE16binary_search_byNCINvB2_20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2V_10FluentArgs3setRexE0E0ECsfPYenFzdTHO_5uu_wc: argument 0"}
!127 = distinct !{!127, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE16binary_search_byNCINvB2_20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2V_10FluentArgs3setRexE0E0ECsfPYenFzdTHO_5uu_wc"}
!128 = !{!129}
!129 = distinct !{!129, !130, !"_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBy_NCINvMNtB1e_4argsNtB2x_10FluentArgs3setRexE0E0CsfPYenFzdTHO_5uu_wc: argument 0"}
!130 = distinct !{!130, !"_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBy_NCINvMNtB1e_4argsNtB2x_10FluentArgs3setRexE0E0CsfPYenFzdTHO_5uu_wc"}
!131 = !{!132}
!132 = distinct !{!132, !133, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCsfPYenFzdTHO_5uu_wc: argument 0"}
!133 = distinct !{!133, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCsfPYenFzdTHO_5uu_wc"}
!134 = !{!132, !129, !126, !123}
!135 = !{!136, !137}
!136 = distinct !{!136, !133, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCsfPYenFzdTHO_5uu_wc: argument 1"}
!137 = distinct !{!137, !127, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE16binary_search_byNCINvB2_20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2V_10FluentArgs3setRexE0E0ECsfPYenFzdTHO_5uu_wc: argument 1"}
!138 = !{!139, !141}
!139 = distinct !{!139, !140, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 0"}
!140 = distinct !{!140, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp"}
!141 = distinct !{!141, !140, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 1"}
!142 = !{!132, !136, !129, !126, !137, !123}
!143 = !{!144}
!144 = distinct !{!144, !145, !"_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBy_NCINvMNtB1e_4argsNtB2x_10FluentArgs3setRexE0E0CsfPYenFzdTHO_5uu_wc: argument 0"}
!145 = distinct !{!145, !"_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBy_NCINvMNtB1e_4argsNtB2x_10FluentArgs3setRexE0E0CsfPYenFzdTHO_5uu_wc"}
!146 = !{!147}
!147 = distinct !{!147, !148, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCsfPYenFzdTHO_5uu_wc: argument 0"}
!148 = distinct !{!148, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCsfPYenFzdTHO_5uu_wc"}
!149 = !{!147, !144, !126, !123}
!150 = !{!151, !137}
!151 = distinct !{!151, !148, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCsfPYenFzdTHO_5uu_wc: argument 1"}
!152 = !{!153, !155}
!153 = distinct !{!153, !154, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 0"}
!154 = distinct !{!154, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp"}
!155 = distinct !{!155, !154, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 1"}
!156 = !{!147, !151, !144, !126, !137, !123}
!157 = !{!158}
end_hunk_2
begin_hunk_3_@llvm.umax.i64
!981 = distinct !{!981, !982, !"_RNvXs_NtCsfPYenFzdTHO_5uu_wc9countableNtNtCs2vKOLqTMYjT_3std2fs4FileNtB4_13WordCountable8buffered: argument 0"}
!982 = distinct !{!982, !"_RNvXs_NtCsfPYenFzdTHO_5uu_wc9countableNtNtCs2vKOLqTMYjT_3std2fs4FileNtB4_13WordCountable8buffered"}
!983 = !{!979, !981, !974, !685}
!984 = !{!974, !685}
!985 = !{!986, !988}
!986 = distinct !{!986, !987, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEECsfPYenFzdTHO_5uu_wc: argument 0"}
!987 = distinct !{!987, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEECsfPYenFzdTHO_5uu_wc"}
!988 = distinct !{!988, !989, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCsfPYenFzdTHO_5uu_wc4utf84read14BufReadDecoderINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEEEBI_: argument 0"}
!989 = distinct !{!989, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCsfPYenFzdTHO_5uu_wc4utf84read14BufReadDecoderINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEEEBI_"}
!990 = !{!991, !993}
!991 = distinct !{!991, !992, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEECsfPYenFzdTHO_5uu_wc: argument 0"}
!992 = distinct !{!992, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEECsfPYenFzdTHO_5uu_wc"}
!993 = distinct !{!993, !994, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCsfPYenFzdTHO_5uu_wc4utf84read14BufReadDecoderINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEEEBI_: argument 0"}
!994 = distinct !{!994, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCsfPYenFzdTHO_5uu_wc4utf84read14BufReadDecoderINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEEEBI_"}
!995 = !{!996, !998, !688, !685}
!996 = distinct !{!996, !997, !"_RINvNtCsfPYenFzdTHO_5uu_wc10count_fast32count_bytes_chars_and_lines_fastNtNtCs2vKOLqTMYjT_3std2fs4FileKb1_KB1D_KB1D_EB4_: argument 0"}
!997 = distinct !{!997, !"_RINvNtCsfPYenFzdTHO_5uu_wc10count_fast32count_bytes_chars_and_lines_fastNtNtCs2vKOLqTMYjT_3std2fs4FileKb1_KB1D_KB1D_EB4_"}
!998 = distinct !{!998, !997, !"_RINvNtCsfPYenFzdTHO_5uu_wc10count_fast32count_bytes_chars_and_lines_fastNtNtCs2vKOLqTMYjT_3std2fs4FileKb1_KB1D_KB1D_EB4_: argument 1"}
!999 = !{!996, !998, !685}
!1000 = !{!996, !685}
!1001 = distinct !{null, null, null}
!1002 = !{!1003}
!1003 = distinct !{!1003, !1004, !"_RINvNtNtNtCs6JMX4GRUq9U_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsfPYenFzdTHO_5uu_wc: argument 0"}
!1004 = distinct !{!1004, !"_RINvNtNtNtCs6JMX4GRUq9U_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsfPYenFzdTHO_5uu_wc"}
!1005 = !{!1006, !688, !685}
!1006 = distinct !{!1006, !1007, !"_RINvCsfPYenFzdTHO_5uu_wc34word_count_from_reader_specializedNtNtCs2vKOLqTMYjT_3std2fs4FileKb1_KB1r_KB1r_Kb0_EB2_: argument 0"}
!1007 = distinct !{!1007, !"_RINvCsfPYenFzdTHO_5uu_wc34word_count_from_reader_specializedNtNtCs2vKOLqTMYjT_3std2fs4FileKb1_KB1r_KB1r_Kb0_EB2_"}
!1008 = !{!1009, !1011, !1013, !1006, !685}
!1009 = distinct !{!1009, !1010, !"_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfPYenFzdTHO_5uu_wc: argument 0"}
!1010 = distinct !{!1010, !"_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfPYenFzdTHO_5uu_wc"}
!1011 = distinct !{!1011, !1012, !"_RNvMNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB2_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileE13with_capacityCsfPYenFzdTHO_5uu_wc: argument 0"}
!1012 = distinct !{!1012, !"_RNvMNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB2_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileE13with_capacityCsfPYenFzdTHO_5uu_wc"}
!1013 = distinct !{!1013, !1014, !"_RNvXs_NtCsfPYenFzdTHO_5uu_wc9countableNtNtCs2vKOLqTMYjT_3std2fs4FileNtB4_13WordCountable8buffered: argument 0"}
!1014 = distinct !{!1014, !"_RNvXs_NtCsfPYenFzdTHO_5uu_wc9countableNtNtCs2vKOLqTMYjT_3std2fs4FileNtB4_13WordCountable8buffered"}
!1015 = !{!1011, !1013, !1006, !685}
!1016 = !{!1006, !685}
!1017 = !{!1018, !1020}
!1018 = distinct !{!1018, !1019, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEECsfPYenFzdTHO_5uu_wc: argument 0"}
!1019 = distinct !{!1019, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEECsfPYenFzdTHO_5uu_wc"}
!1020 = distinct !{!1020, !1021, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCsfPYenFzdTHO_5uu_wc4utf84read14BufReadDecoderINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEEEBI_: argument 0"}
!1021 = distinct !{!1021, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCsfPYenFzdTHO_5uu_wc4utf84read14BufReadDecoderINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEEEBI_"}
!1022 = !{!1023, !1025}
!1023 = distinct !{!1023, !1024, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEECsfPYenFzdTHO_5uu_wc: argument 0"}
!1024 = distinct !{!1024, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEECsfPYenFzdTHO_5uu_wc"}
!1025 = distinct !{!1025, !1026, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCsfPYenFzdTHO_5uu_wc4utf84read14BufReadDecoderINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEEEBI_: argument 0"}
!1026 = distinct !{!1026, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCsfPYenFzdTHO_5uu_wc4utf84read14BufReadDecoderINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEEEBI_"}
!1027 = !{!1028, !688, !685}
!1028 = distinct !{!1028, !1029, !"_RINvCsfPYenFzdTHO_5uu_wc34word_count_from_reader_specializedNtNtCs2vKOLqTMYjT_3std2fs4FileKb1_KB1r_KB1r_KB1r_EB2_: argument 0"}
!1029 = distinct !{!1029, !"_RINvCsfPYenFzdTHO_5uu_wc34word_count_from_reader_specializedNtNtCs2vKOLqTMYjT_3std2fs4FileKb1_KB1r_KB1r_KB1r_EB2_"}
!1030 = !{!1031, !1033, !1035, !1028, !685}
!1031 = distinct !{!1031, !1032, !"_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfPYenFzdTHO_5uu_wc: argument 0"}
!1032 = distinct !{!1032, !"_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfPYenFzdTHO_5uu_wc"}
!1033 = distinct !{!1033, !1034, !"_RNvMNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB2_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileE13with_capacityCsfPYenFzdTHO_5uu_wc: argument 0"}
!1034 = distinct !{!1034, !"_RNvMNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB2_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileE13with_capacityCsfPYenFzdTHO_5uu_wc"}
!1035 = distinct !{!1035, !1036, !"_RNvXs_NtCsfPYenFzdTHO_5uu_wc9countableNtNtCs2vKOLqTMYjT_3std2fs4FileNtB4_13WordCountable8buffered: argument 0"}
!1036 = distinct !{!1036, !"_RNvXs_NtCsfPYenFzdTHO_5uu_wc9countableNtNtCs2vKOLqTMYjT_3std2fs4FileNtB4_13WordCountable8buffered"}
!1037 = !{!1033, !1035, !1028, !685}
!1038 = !{!1028, !685}
!1039 = !{!1040, !1042}
!1040 = distinct !{!1040, !1041, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEECsfPYenFzdTHO_5uu_wc: argument 0"}
!1041 = distinct !{!1041, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEECsfPYenFzdTHO_5uu_wc"}
!1042 = distinct !{!1042, !1043, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCsfPYenFzdTHO_5uu_wc4utf84read14BufReadDecoderINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEEEBI_: argument 0"}
!1043 = distinct !{!1043, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCsfPYenFzdTHO_5uu_wc4utf84read14BufReadDecoderINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEEEBI_"}
!1044 = !{!1045, !1047}
!1045 = distinct !{!1045, !1046, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEECsfPYenFzdTHO_5uu_wc: argument 0"}
!1046 = distinct !{!1046, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEECsfPYenFzdTHO_5uu_wc"}
!1047 = distinct !{!1047, !1048, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCsfPYenFzdTHO_5uu_wc4utf84read14BufReadDecoderINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEEEBI_: argument 0"}
!1048 = distinct !{!1048, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCsfPYenFzdTHO_5uu_wc4utf84read14BufReadDecoderINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEEEBI_"}
!1049 = !{!1050}
!1050 = distinct !{!1050, !1051, !"_RNvXs1_NtCsfPYenFzdTHO_5uu_wc10word_countNtB5_9WordCountNtNtCs6JMX4GRUq9U_4core7default7Default7default: argument 0"}
!1051 = distinct !{!1051, !"_RNvXs1_NtCsfPYenFzdTHO_5uu_wc10word_countNtB5_9WordCountNtNtCs6JMX4GRUq9U_4core7default7Default7default"}
!1052 = !{i8 0, i8 4}
!1053 = !{!1054}
!1054 = distinct !{!1054, !1055, !"_RNvCsfPYenFzdTHO_5uu_wc20compute_number_width: argument 0"}
!1055 = distinct !{!1055, !"_RNvCsfPYenFzdTHO_5uu_wc20compute_number_width"}
!1056 = !{!1057}
!1057 = distinct !{!1057, !1055, !"_RNvCsfPYenFzdTHO_5uu_wc20compute_number_width: argument 1"}
!1058 = !{!1059, !1057}
!1059 = distinct !{!1059, !1060, !"_RNvMs_CsfPYenFzdTHO_5uu_wcNtB4_8Settings14number_enabled: argument 0"}
!1060 = distinct !{!1060, !"_RNvMs_CsfPYenFzdTHO_5uu_wcNtB4_8Settings14number_enabled"}
!1061 = !{!1062, !1057}
!1062 = distinct !{!1062, !1063, !"_RNvMs_CsfPYenFzdTHO_5uu_wcNtB4_8Settings14number_enabled: argument 0"}
!1063 = distinct !{!1063, !"_RNvMs_CsfPYenFzdTHO_5uu_wcNtB4_8Settings14number_enabled"}
!1064 = !{!1054, !1057}
!1065 = !{!1066}
!1066 = distinct !{!1066, !1067, !"_RINvNtCs2vKOLqTMYjT_3std2fs8metadataRINtNtCs7tKScEop1B6_5alloc6borrow3CowNtNtB4_4path4PathEECsfPYenFzdTHO_5uu_wc: argument 1"}
!1067 = distinct !{!1067, !"_RINvNtCs2vKOLqTMYjT_3std2fs8metadataRINtNtCs7tKScEop1B6_5alloc6borrow3CowNtNtB4_4path4PathEECsfPYenFzdTHO_5uu_wc"}
!1068 = !{!1069, !1066, !1054, !1057}
!1069 = distinct !{!1069, !1067, !"_RINvNtCs2vKOLqTMYjT_3std2fs8metadataRINtNtCs7tKScEop1B6_5alloc6borrow3CowNtNtB4_4path4PathEECsfPYenFzdTHO_5uu_wc: argument 0"}
!1070 = !{!1071, !1066}
!1071 = distinct !{!1071, !1072, !"_RNvXse_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CowNtNtCs2vKOLqTMYjT_3std4path4PathEINtNtCs6JMX4GRUq9U_4core7convert5AsRefBI_E6as_refCsfPYenFzdTHO_5uu_wc: argument 0"}
!1072 = distinct !{!1072, !"_RNvXse_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CowNtNtCs2vKOLqTMYjT_3std4path4PathEINtNtCs6JMX4GRUq9U_4core7convert5AsRefBI_E6as_refCsfPYenFzdTHO_5uu_wc"}
!1073 = !{!1069, !1054, !1057}
!1074 = !{!1066, !1054, !1057}
!1075 = !{!1076}
!1076 = distinct !{!1076, !1077, !"_RINvNtNtNtCs6JMX4GRUq9U_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsfPYenFzdTHO_5uu_wc: argument 0"}
!1077 = distinct !{!1077, !"_RINvNtNtNtCs6JMX4GRUq9U_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsfPYenFzdTHO_5uu_wc"}
!1078 = !{!1079}
!1079 = distinct !{!1079, !1080, !"_RNvMs0_CsfPYenFzdTHO_5uu_wcNtB5_6Inputs8try_iter: argument 1"}
!1080 = distinct !{!1080, !"_RNvMs0_CsfPYenFzdTHO_5uu_wcNtB5_6Inputs8try_iter"}
!1081 = !{!1082}
!1082 = distinct !{!1082, !1080, !"_RNvMs0_CsfPYenFzdTHO_5uu_wcNtB5_6Inputs8try_iter: argument 2"}
!1083 = !{!1084, !1082}
!1084 = distinct !{!1084, !1080, !"_RNvMs0_CsfPYenFzdTHO_5uu_wcNtB5_6Inputs8try_iter: argument 0"}
!1085 = !{!1086, !1084, !1079, !1082}
!1086 = distinct !{!1086, !1087, !"_RNvMNtCs7tKScEop1B6_5alloc5boxedINtB2_3BoxINtNtNtNtCs6JMX4GRUq9U_4core4iter7sources4once4OnceINtNtBN_6result6ResultNtCsfPYenFzdTHO_5uu_wc5InputIBv_DNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEE3newB1R_: argument 0"}
!1087 = distinct !{!1087, !"_RNvMNtCs7tKScEop1B6_5alloc5boxedINtB2_3BoxINtNtNtNtCs6JMX4GRUq9U_4core4iter7sources4once4OnceINtNtBN_6result6ResultNtCsfPYenFzdTHO_5uu_wc5InputIBv_DNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEE3newB1R_"}
!1088 = !{!1084, !1079, !1082}
!1089 = !{i64 -3, i64 -9223372036854775808}
!1090 = !{!1084, !1079}
!1091 = !{!1092, !1084, !1079, !1082}
!1092 = distinct !{!1092, !1093, !"_RNvMNtCs7tKScEop1B6_5alloc5boxedINtB2_3BoxINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtBL_7sources7from_fn6FromFnNCINvCsfPYenFzdTHO_5uu_wc11files0_iterNtNtNtCs2vKOLqTMYjT_3std2io5stdio9StdinLockEs_0ENCNvB24_17files0_iter_stdin0EE3newB24_: argument 0"}
!1093 = distinct !{!1093, !"_RNvMNtCs7tKScEop1B6_5alloc5boxedINtB2_3BoxINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtBL_7sources7from_fn6FromFnNCINvCsfPYenFzdTHO_5uu_wc11files0_iterNtNtNtCs2vKOLqTMYjT_3std2io5stdio9StdinLockEs_0ENCNvB24_17files0_iter_stdin0EE3newB24_"}
!1094 = !{!1095, !1084, !1079, !1082}
!1095 = distinct !{!1095, !1096, !"_RNvMNtCs7tKScEop1B6_5alloc5boxedINtB2_3BoxINtNtNtNtCs6JMX4GRUq9U_4core4iter7sources7from_fn6FromFnNCINvCsfPYenFzdTHO_5uu_wc11files0_iterNtNtCs2vKOLqTMYjT_3std2fs4FileEs_0EE3newB1D_: argument 0"}
!1096 = distinct !{!1096, !"_RNvMNtCs7tKScEop1B6_5alloc5boxedINtB2_3BoxINtNtNtNtCs6JMX4GRUq9U_4core4iter7sources7from_fn6FromFnNCINvCsfPYenFzdTHO_5uu_wc11files0_iterNtNtCs2vKOLqTMYjT_3std2fs4FileEs_0EE3newB1D_"}
!1097 = !{!1098, !1100}
!1098 = distinct !{!1098, !1099, !"_RNvCsfPYenFzdTHO_5uu_wc16wc_simd_features: argument 0"}
!1099 = distinct !{!1099, !"_RNvCsfPYenFzdTHO_5uu_wc16wc_simd_features"}
!1100 = distinct !{!1100, !1099, !"_RNvCsfPYenFzdTHO_5uu_wc16wc_simd_features: argument 1"}
!1101 = !{!1098}
!1102 = !{!1103}
!1103 = distinct !{!1103, !1104, !"_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filter6FilterINtNtB2B_6copied6CopiedINtNtNtNtB6_11collections5btree3set10DifferenceB11_EENCNvCsfPYenFzdTHO_5uu_wc16wc_simd_features0EE9from_iterB4I_: argument 1"}
!1104 = distinct !{!1104, !"_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filter6FilterINtNtB2B_6copied6CopiedINtNtNtNtB6_11collections5btree3set10DifferenceB11_EENCNvCsfPYenFzdTHO_5uu_wc16wc_simd_features0EE9from_iterB4I_"}
!1105 = !{!1106, !1103, !1098, !1100}
!1106 = distinct !{!1106, !1104, !"_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filter6FilterINtNtB2B_6copied6CopiedINtNtNtNtB6_11collections5btree3set10DifferenceB11_EENCNvCsfPYenFzdTHO_5uu_wc16wc_simd_features0EE9from_iterB4I_: argument 0"}
!1107 = !{!1106, !1098}
!1108 = !{!1109, !1111, !1113, !1115, !1106, !1103, !1098}
!1109 = distinct !{!1109, !1110, !"_RINvYINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB2c_8adapters6copied13copy_try_foldB15_uINtNtNtB2e_3ops12control_flow11ControlFlowB15_ENCINvNvB26_4find5checkB15_QNCNvCsfPYenFzdTHO_5uu_wc16wc_simd_features0E0E0B3Y_EB5e_: argument 0"}
!1110 = distinct !{!1110, !"_RINvYINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB2c_8adapters6copied13copy_try_foldB15_uINtNtNtB2e_3ops12control_flow11ControlFlowB15_ENCINvNvB26_4find5checkB15_QNCNvCsfPYenFzdTHO_5uu_wc16wc_simd_features0E0E0B3Y_EB5e_"}
!1111 = distinct !{!1111, !1112, !"_RINvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB36_4find5checkB24_QNCNvCsfPYenFzdTHO_5uu_wc16wc_simd_features0E0INtNtNtBb_3ops12control_flow11ControlFlowB24_EEB4j_: argument 0"}
!1112 = distinct !{!1112, !"_RINvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB36_4find5checkB24_QNCNvCsfPYenFzdTHO_5uu_wc16wc_simd_features0E0INtNtNtBb_3ops12control_flow11ControlFlowB24_EEB4j_"}
!1113 = distinct !{!1113, !1114, !"_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6copied6CopiedINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENtNtNtBa_6traits8iterator8Iterator4findQNCNvCsfPYenFzdTHO_5uu_wc16wc_simd_features0EB3J_: argument 0"}
!1114 = distinct !{!1114, !"_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6copied6CopiedINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENtNtNtBa_6traits8iterator8Iterator4findQNCNvCsfPYenFzdTHO_5uu_wc16wc_simd_features0EB3J_"}
!1115 = distinct !{!1115, !1116, !"_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filterINtB5_6FilterINtNtB7_6copied6CopiedINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENCNvCsfPYenFzdTHO_5uu_wc16wc_simd_features0ENtNtNtB9_6traits8iterator8Iterator4nextB3w_: argument 0"}
!1116 = distinct !{!1116, !"_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filterINtB5_6FilterINtNtB7_6copied6CopiedINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENCNvCsfPYenFzdTHO_5uu_wc16wc_simd_features0ENtNtNtB9_6traits8iterator8Iterator4nextB3w_"}
!1117 = !{!1118}
!1118 = distinct !{!1118, !1119, !"_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filterINtB5_6FilterINtNtB7_6copied6CopiedINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENCNvCsfPYenFzdTHO_5uu_wc16wc_simd_features0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3w_: argument 1"}
!1119 = distinct !{!1119, !"_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filterINtB5_6FilterINtNtB7_6copied6CopiedINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENCNvCsfPYenFzdTHO_5uu_wc16wc_simd_features0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3w_"}
!1120 = !{!1121}
!1121 = distinct !{!1121, !1122, !"_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENtNtNtB8_6traits8iterator8Iterator9size_hintCsfPYenFzdTHO_5uu_wc: argument 1"}
!1122 = distinct !{!1122, !"_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENtNtNtB8_6traits8iterator8Iterator9size_hintCsfPYenFzdTHO_5uu_wc"}
!1123 = !{!1124}
!1124 = distinct !{!1124, !1125, !"_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator9size_hintCsfPYenFzdTHO_5uu_wc: argument 1"}
!1125 = distinct !{!1125, !"_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator9size_hintCsfPYenFzdTHO_5uu_wc"}
!1126 = !{i64 0, i64 4}
!1127 = !{!1124, !1121, !1118, !1103}
!1128 = !{!1129, !1130, !1131, !1106, !1098, !1100}
!1129 = distinct !{!1129, !1125, !"_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator9size_hintCsfPYenFzdTHO_5uu_wc: argument 0"}
!1130 = distinct !{!1130, !1122, !"_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENtNtNtB8_6traits8iterator8Iterator9size_hintCsfPYenFzdTHO_5uu_wc: argument 0"}
!1131 = distinct !{!1131, !1119, !"_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filterINtB5_6FilterINtNtB7_6copied6CopiedINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENCNvCsfPYenFzdTHO_5uu_wc16wc_simd_features0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3w_: argument 0"}
!1132 = !{!1133, !1124, !1121, !1118, !1103}
!1133 = distinct !{!1133, !1134, !"_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB4_8PeekableINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENtNtNtB8_6traits8iterator8Iterator9size_hintCsfPYenFzdTHO_5uu_wc: argument 1"}
!1134 = distinct !{!1134, !"_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB4_8PeekableINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENtNtNtB8_6traits8iterator8Iterator9size_hintCsfPYenFzdTHO_5uu_wc"}
!1135 = !{!1136, !1129, !1130, !1131, !1106, !1098, !1100}
!1136 = distinct !{!1136, !1134, !"_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB4_8PeekableINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENtNtNtB8_6traits8iterator8Iterator9size_hintCsfPYenFzdTHO_5uu_wc: argument 0"}
!1137 = !{!1129, !1124, !1130, !1121, !1131, !1118, !1106, !1103, !1098, !1100}
!1138 = !{!1129, !1124, !1130, !1121, !1131, !1118, !1106, !1103, !1098}
!1139 = !{!1140, !1106, !1103, !1098}
!1140 = distinct !{!1140, !1141, !"_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfPYenFzdTHO_5uu_wc: argument 0"}
!1141 = distinct !{!1141, !"_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfPYenFzdTHO_5uu_wc"}
!1142 = !{!1106, !1103, !1098}
!1143 = !{!1106, !1098, !1100}
!1144 = !{!1145}
!1145 = distinct !{!1145, !1146, !"_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filter6FilterINtNtB2i_6copied6CopiedINtNtNtNtB6_11collections5btree3set10DifferenceBR_EENCNvCsfPYenFzdTHO_5uu_wc16wc_simd_features0EE11spec_extendB4o_: argument 0"}
!1146 = distinct !{!1146, !"_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filter6FilterINtNtB2i_6copied6CopiedINtNtNtNtB6_11collections5btree3set10DifferenceBR_EENCNvCsfPYenFzdTHO_5uu_wc16wc_simd_features0EE11spec_extendB4o_"}
!1147 = !{!1148}
!1148 = distinct !{!1148, !1149, !"_RINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB6_3VecNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureE16extend_desugaredINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filter6FilterINtNtB24_6copied6CopiedINtNtNtNtB8_11collections5btree3set10DifferenceBG_EENCNvCsfPYenFzdTHO_5uu_wc16wc_simd_features0EEB4a_: argument 0"}
!1149 = distinct !{!1149, !"_RINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB6_3VecNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureE16extend_desugaredINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filter6FilterINtNtB24_6copied6CopiedINtNtNtNtB8_11collections5btree3set10DifferenceBG_EENCNvCsfPYenFzdTHO_5uu_wc16wc_simd_features0EEB4a_"}
!1150 = !{!1151, !1153, !1148, !1155, !1145, !1156, !1106, !1103, !1098}
!1151 = distinct !{!1151, !1152, !"_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTE10init_frontCsfPYenFzdTHO_5uu_wc: argument 0"}
!1152 = distinct !{!1152, !"_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTE10init_frontCsfPYenFzdTHO_5uu_wc"}
!1153 = distinct !{!1153, !1154, !"_RNvXsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc: argument 0"}
!1154 = distinct !{!1154, !"_RNvXsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc"}
!1155 = distinct !{!1155, !1149, !"_RINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB6_3VecNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureE16extend_desugaredINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filter6FilterINtNtB24_6copied6CopiedINtNtNtNtB8_11collections5btree3set10DifferenceBG_EENCNvCsfPYenFzdTHO_5uu_wc16wc_simd_features0EEB4a_: argument 1"}
!1156 = distinct !{!1156, !1146, !"_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filter6FilterINtNtB2i_6copied6CopiedINtNtNtNtB6_11collections5btree3set10DifferenceBR_EENCNvCsfPYenFzdTHO_5uu_wc16wc_simd_features0EE11spec_extendB4o_: argument 1"}
!1157 = distinct !{!1157, !1158}
!1158 = !{!"llvm.loop.unroll.disable"}
!1159 = !{!1160, !1162, !1163, !1165, !1166, !1153, !1148, !1155, !1145, !1156, !1106, !1103, !1098}
!1160 = distinct !{!1160, !1161, !"_RNvMsh_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTNtB1y_4LeafENtB1y_4EdgeE7next_kvCsfPYenFzdTHO_5uu_wc: argument 0"}
!1161 = distinct !{!1161, !"_RNvMsh_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTNtB1y_4LeafENtB1y_4EdgeE7next_kvCsfPYenFzdTHO_5uu_wc"}
!1162 = distinct !{!1162, !1161, !"_RNvMsh_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTNtB1y_4LeafENtB1y_4EdgeE7next_kvCsfPYenFzdTHO_5uu_wc: argument 1"}
!1163 = distinct !{!1163, !1164, !"_RNCNvMsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtNtB9_4node6HandleINtB12_7NodeRefNtNtB12_6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB9_7set_val9SetValZSTNtB1A_4LeafENtB1A_4EdgeE14next_unchecked0CsfPYenFzdTHO_5uu_wc: argument 0"}
!1164 = distinct !{!1164, !"_RNCNvMsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtNtB9_4node6HandleINtB12_7NodeRefNtNtB12_6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB9_7set_val9SetValZSTNtB1A_4LeafENtB1A_4EdgeE14next_unchecked0CsfPYenFzdTHO_5uu_wc"}
!1165 = distinct !{!1165, !1164, !"_RNCNvMsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtNtB9_4node6HandleINtB12_7NodeRefNtNtB12_6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB9_7set_val9SetValZSTNtB1A_4LeafENtB1A_4EdgeE14next_unchecked0CsfPYenFzdTHO_5uu_wc: argument 1"}
!1166 = distinct !{!1166, !1167, !"_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB4_7set_val9SetValZSTNtB1y_4LeafENtB1y_4EdgeETRB1R_RB2R_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0ECsfPYenFzdTHO_5uu_wc: argument 0"}
!1167 = distinct !{!1167, !"_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB4_7set_val9SetValZSTNtB1y_4LeafENtB1y_4EdgeETRB1R_RB2R_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0ECsfPYenFzdTHO_5uu_wc"}
!1168 = !{!1169, !1160, !1162, !1163, !1165, !1166, !1153, !1148, !1155, !1145, !1156, !1106, !1103, !1098}
!1169 = distinct !{!1169, !1170, !"_RNvMse_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTNtB19_14LeafOrInternalE6ascendCsfPYenFzdTHO_5uu_wc: argument 0"}
!1170 = distinct !{!1170, !"_RNvMse_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTNtB19_14LeafOrInternalE6ascendCsfPYenFzdTHO_5uu_wc"}
!1171 = !{!1163, !1165, !1166, !1153, !1148, !1155, !1145, !1156, !1106, !1103, !1098}
!1172 = !{!1173, !1175, !1163, !1165, !1166, !1153, !1148, !1155, !1145, !1156, !1106, !1103, !1098}
!1173 = distinct !{!1173, !1174, !"_RNvMsp_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTNtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeCsfPYenFzdTHO_5uu_wc: argument 0"}
!1174 = distinct !{!1174, !"_RNvMsp_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTNtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeCsfPYenFzdTHO_5uu_wc"}
!1175 = distinct !{!1175, !1174, !"_RNvMsp_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTNtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeCsfPYenFzdTHO_5uu_wc: argument 1"}
!1176 = distinct !{!1176, !1158}
!1177 = !{!1153, !1148, !1155, !1145, !1156, !1106, !1103, !1098}
!1178 = !{!1179, !1148, !1155, !1145, !1156, !1106, !1103, !1098}
!1179 = distinct !{!1179, !1180, !"_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc: argument 0"}
!1180 = distinct !{!1180, !"_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc"}
!1181 = !{!1148, !1155, !1145, !1156, !1106, !1103, !1098}
!1182 = !{!1183, !1185, !1148, !1155, !1145, !1156, !1106, !1103, !1098}
!1183 = distinct !{!1183, !1184, !"_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTE10init_frontCsfPYenFzdTHO_5uu_wc: argument 0"}
!1184 = distinct !{!1184, !"_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTE10init_frontCsfPYenFzdTHO_5uu_wc"}
!1185 = distinct !{!1185, !1186, !"_RNvXsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc: argument 0"}
!1186 = distinct !{!1186, !"_RNvXsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc"}
!1187 = distinct !{!1187, !1158}
!1188 = !{!1189, !1191, !1192, !1194, !1195, !1185, !1148, !1155, !1145, !1156, !1106, !1103, !1098}
!1189 = distinct !{!1189, !1190, !"_RNvMsh_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTNtB1y_4LeafENtB1y_4EdgeE7next_kvCsfPYenFzdTHO_5uu_wc: argument 0"}
!1190 = distinct !{!1190, !"_RNvMsh_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTNtB1y_4LeafENtB1y_4EdgeE7next_kvCsfPYenFzdTHO_5uu_wc"}
!1191 = distinct !{!1191, !1190, !"_RNvMsh_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTNtB1y_4LeafENtB1y_4EdgeE7next_kvCsfPYenFzdTHO_5uu_wc: argument 1"}
!1192 = distinct !{!1192, !1193, !"_RNCNvMsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtNtB9_4node6HandleINtB12_7NodeRefNtNtB12_6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB9_7set_val9SetValZSTNtB1A_4LeafENtB1A_4EdgeE14next_unchecked0CsfPYenFzdTHO_5uu_wc: argument 0"}
!1193 = distinct !{!1193, !"_RNCNvMsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtNtB9_4node6HandleINtB12_7NodeRefNtNtB12_6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB9_7set_val9SetValZSTNtB1A_4LeafENtB1A_4EdgeE14next_unchecked0CsfPYenFzdTHO_5uu_wc"}
!1194 = distinct !{!1194, !1193, !"_RNCNvMsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtNtB9_4node6HandleINtB12_7NodeRefNtNtB12_6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB9_7set_val9SetValZSTNtB1A_4LeafENtB1A_4EdgeE14next_unchecked0CsfPYenFzdTHO_5uu_wc: argument 1"}
!1195 = distinct !{!1195, !1196, !"_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB4_7set_val9SetValZSTNtB1y_4LeafENtB1y_4EdgeETRB1R_RB2R_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0ECsfPYenFzdTHO_5uu_wc: argument 0"}
!1196 = distinct !{!1196, !"_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB4_7set_val9SetValZSTNtB1y_4LeafENtB1y_4EdgeETRB1R_RB2R_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0ECsfPYenFzdTHO_5uu_wc"}
!1197 = !{!1198, !1189, !1191, !1192, !1194, !1195, !1185, !1148, !1155, !1145, !1156, !1106, !1103, !1098}
!1198 = distinct !{!1198, !1199, !"_RNvMse_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTNtB19_14LeafOrInternalE6ascendCsfPYenFzdTHO_5uu_wc: argument 0"}
!1199 = distinct !{!1199, !"_RNvMse_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTNtB19_14LeafOrInternalE6ascendCsfPYenFzdTHO_5uu_wc"}
!1200 = !{!1192, !1194, !1195, !1185, !1148, !1155, !1145, !1156, !1106, !1103, !1098}
!1201 = !{!1202, !1204, !1192, !1194, !1195, !1185, !1148, !1155, !1145, !1156, !1106, !1103, !1098}
!1202 = distinct !{!1202, !1203, !"_RNvMsp_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTNtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeCsfPYenFzdTHO_5uu_wc: argument 0"}
!1203 = distinct !{!1203, !"_RNvMsp_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTNtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeCsfPYenFzdTHO_5uu_wc"}
!1204 = distinct !{!1204, !1203, !"_RNvMsp_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTNtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeCsfPYenFzdTHO_5uu_wc: argument 1"}
!1205 = distinct !{!1205, !1158}
!1206 = !{!1185, !1148, !1155, !1145, !1156, !1106, !1103, !1098}
!1207 = !{!1208, !1210, !1148, !1155, !1145, !1156, !1106, !1103, !1098}
!1208 = distinct !{!1208, !1209, !"_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTE10init_frontCsfPYenFzdTHO_5uu_wc: argument 0"}
!1209 = distinct !{!1209, !"_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTE10init_frontCsfPYenFzdTHO_5uu_wc"}
!1210 = distinct !{!1210, !1211, !"_RNvXsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc: argument 0"}
!1211 = distinct !{!1211, !"_RNvXsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc"}
!1212 = distinct !{!1212, !1158}
!1213 = !{!1214, !1216, !1217, !1219, !1220, !1210, !1148, !1155, !1145, !1156, !1106, !1103, !1098}
!1214 = distinct !{!1214, !1215, !"_RNvMsh_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTNtB1y_4LeafENtB1y_4EdgeE7next_kvCsfPYenFzdTHO_5uu_wc: argument 0"}
!1215 = distinct !{!1215, !"_RNvMsh_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTNtB1y_4LeafENtB1y_4EdgeE7next_kvCsfPYenFzdTHO_5uu_wc"}
!1216 = distinct !{!1216, !1215, !"_RNvMsh_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTNtB1y_4LeafENtB1y_4EdgeE7next_kvCsfPYenFzdTHO_5uu_wc: argument 1"}
!1217 = distinct !{!1217, !1218, !"_RNCNvMsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtNtB9_4node6HandleINtB12_7NodeRefNtNtB12_6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB9_7set_val9SetValZSTNtB1A_4LeafENtB1A_4EdgeE14next_unchecked0CsfPYenFzdTHO_5uu_wc: argument 0"}
!1218 = distinct !{!1218, !"_RNCNvMsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtNtB9_4node6HandleINtB12_7NodeRefNtNtB12_6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB9_7set_val9SetValZSTNtB1A_4LeafENtB1A_4EdgeE14next_unchecked0CsfPYenFzdTHO_5uu_wc"}
!1219 = distinct !{!1219, !1218, !"_RNCNvMsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtNtB9_4node6HandleINtB12_7NodeRefNtNtB12_6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB9_7set_val9SetValZSTNtB1A_4LeafENtB1A_4EdgeE14next_unchecked0CsfPYenFzdTHO_5uu_wc: argument 1"}
!1220 = distinct !{!1220, !1221, !"_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB4_7set_val9SetValZSTNtB1y_4LeafENtB1y_4EdgeETRB1R_RB2R_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0ECsfPYenFzdTHO_5uu_wc: argument 0"}
!1221 = distinct !{!1221, !"_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB4_7set_val9SetValZSTNtB1y_4LeafENtB1y_4EdgeETRB1R_RB2R_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0ECsfPYenFzdTHO_5uu_wc"}
!1222 = !{!1223, !1214, !1216, !1217, !1219, !1220, !1210, !1148, !1155, !1145, !1156, !1106, !1103, !1098}
!1223 = distinct !{!1223, !1224, !"_RNvMse_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTNtB19_14LeafOrInternalE6ascendCsfPYenFzdTHO_5uu_wc: argument 0"}
!1224 = distinct !{!1224, !"_RNvMse_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTNtB19_14LeafOrInternalE6ascendCsfPYenFzdTHO_5uu_wc"}
!1225 = !{!1217, !1219, !1220, !1210, !1148, !1155, !1145, !1156, !1106, !1103, !1098}
!1226 = !{!1227, !1229, !1217, !1219, !1220, !1210, !1148, !1155, !1145, !1156, !1106, !1103, !1098}
!1227 = distinct !{!1227, !1228, !"_RNvMsp_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTNtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeCsfPYenFzdTHO_5uu_wc: argument 0"}
!1228 = distinct !{!1228, !"_RNvMsp_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTNtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeCsfPYenFzdTHO_5uu_wc"}
!1229 = distinct !{!1229, !1228, !"_RNvMsp_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTNtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeCsfPYenFzdTHO_5uu_wc: argument 1"}
!1230 = distinct !{!1230, !1158}
!1231 = !{!1210, !1148, !1155, !1145, !1156, !1106, !1103, !1098}
!1232 = !{!1233, !1235, !1237, !1148, !1155, !1145, !1156, !1106, !1103, !1098}
!1233 = distinct !{!1233, !1234, !"_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTE10init_frontCsfPYenFzdTHO_5uu_wc: argument 0"}
!1234 = distinct !{!1234, !"_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTE10init_frontCsfPYenFzdTHO_5uu_wc"}
!1235 = distinct !{!1235, !1236, !"_RNvXsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc: argument 0"}
!1236 = distinct !{!1236, !"_RNvXsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc"}
!1237 = distinct !{!1237, !1238, !"_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_RNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2h_8PeekableINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set4IterBN_EE4peek0ECsfPYenFzdTHO_5uu_wc: argument 0"}
!1238 = distinct !{!1238, !"_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_RNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2h_8PeekableINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set4IterBN_EE4peek0ECsfPYenFzdTHO_5uu_wc"}
!1239 = distinct !{!1239, !1158}
!1240 = !{!1241, !1243, !1244, !1246, !1247, !1235, !1237, !1148, !1155, !1145, !1156, !1106, !1103, !1098}
!1241 = distinct !{!1241, !1242, !"_RNvMsh_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTNtB1y_4LeafENtB1y_4EdgeE7next_kvCsfPYenFzdTHO_5uu_wc: argument 0"}
!1242 = distinct !{!1242, !"_RNvMsh_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTNtB1y_4LeafENtB1y_4EdgeE7next_kvCsfPYenFzdTHO_5uu_wc"}
!1243 = distinct !{!1243, !1242, !"_RNvMsh_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTNtB1y_4LeafENtB1y_4EdgeE7next_kvCsfPYenFzdTHO_5uu_wc: argument 1"}
!1244 = distinct !{!1244, !1245, !"_RNCNvMsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtNtB9_4node6HandleINtB12_7NodeRefNtNtB12_6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB9_7set_val9SetValZSTNtB1A_4LeafENtB1A_4EdgeE14next_unchecked0CsfPYenFzdTHO_5uu_wc: argument 0"}
!1245 = distinct !{!1245, !"_RNCNvMsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtNtB9_4node6HandleINtB12_7NodeRefNtNtB12_6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB9_7set_val9SetValZSTNtB1A_4LeafENtB1A_4EdgeE14next_unchecked0CsfPYenFzdTHO_5uu_wc"}
!1246 = distinct !{!1246, !1245, !"_RNCNvMsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtNtB9_4node6HandleINtB12_7NodeRefNtNtB12_6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB9_7set_val9SetValZSTNtB1A_4LeafENtB1A_4EdgeE14next_unchecked0CsfPYenFzdTHO_5uu_wc: argument 1"}
!1247 = distinct !{!1247, !1248, !"_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB4_7set_val9SetValZSTNtB1y_4LeafENtB1y_4EdgeETRB1R_RB2R_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0ECsfPYenFzdTHO_5uu_wc: argument 0"}
!1248 = distinct !{!1248, !"_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB4_7set_val9SetValZSTNtB1y_4LeafENtB1y_4EdgeETRB1R_RB2R_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0ECsfPYenFzdTHO_5uu_wc"}
!1249 = !{!1250, !1241, !1243, !1244, !1246, !1247, !1235, !1237, !1148, !1155, !1145, !1156, !1106, !1103, !1098}
!1250 = distinct !{!1250, !1251, !"_RNvMse_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTNtB19_14LeafOrInternalE6ascendCsfPYenFzdTHO_5uu_wc: argument 0"}
!1251 = distinct !{!1251, !"_RNvMse_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTNtB19_14LeafOrInternalE6ascendCsfPYenFzdTHO_5uu_wc"}
!1252 = !{!1244, !1246, !1247, !1235, !1237, !1148, !1155, !1145, !1156, !1106, !1103, !1098}
!1253 = !{!1237}
!1254 = !{!1255, !1257, !1244, !1246, !1247, !1235, !1237, !1148, !1155, !1145, !1156, !1106, !1103, !1098}
!1255 = distinct !{!1255, !1256, !"_RNvMsp_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTNtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeCsfPYenFzdTHO_5uu_wc: argument 0"}
!1256 = distinct !{!1256, !"_RNvMsp_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTNtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeCsfPYenFzdTHO_5uu_wc"}
!1257 = distinct !{!1257, !1256, !"_RNvMsp_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTNtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeCsfPYenFzdTHO_5uu_wc: argument 1"}
!1258 = distinct !{!1258, !1158}
!1259 = !{!1235, !1237, !1148, !1155, !1145, !1156, !1106, !1103, !1098}
!1260 = !{!1261, !1179, !1148, !1155, !1145, !1156, !1106, !1103, !1098}
!1261 = distinct !{!1261, !1262, !"_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRRNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureE6map_orNtNtB5_3cmp8OrderingNCNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB2k_10DifferenceBK_ENtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsfPYenFzdTHO_5uu_wc: argument 0"}
!1262 = distinct !{!1262, !"_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRRNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureE6map_orNtNtB5_3cmp8OrderingNCNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB2k_10DifferenceBK_ENtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsfPYenFzdTHO_5uu_wc"}
!1263 = !{!1264, !1266, !1267, !1269, !1270, !1272, !1148, !1155, !1145, !1156, !1106, !1103, !1098}
!1264 = distinct !{!1264, !1265, !"_RNvMsh_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTNtB1y_4LeafENtB1y_4EdgeE7next_kvCsfPYenFzdTHO_5uu_wc: argument 0"}
!1265 = distinct !{!1265, !"_RNvMsh_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTNtB1y_4LeafENtB1y_4EdgeE7next_kvCsfPYenFzdTHO_5uu_wc"}
!1266 = distinct !{!1266, !1265, !"_RNvMsh_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTNtB1y_4LeafENtB1y_4EdgeE7next_kvCsfPYenFzdTHO_5uu_wc: argument 1"}
!1267 = distinct !{!1267, !1268, !"_RNCNvMsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtNtB9_4node6HandleINtB12_7NodeRefNtNtB12_6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB9_7set_val9SetValZSTNtB1A_4LeafENtB1A_4EdgeE14next_unchecked0CsfPYenFzdTHO_5uu_wc: argument 0"}
!1268 = distinct !{!1268, !"_RNCNvMsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtNtB9_4node6HandleINtB12_7NodeRefNtNtB12_6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB9_7set_val9SetValZSTNtB1A_4LeafENtB1A_4EdgeE14next_unchecked0CsfPYenFzdTHO_5uu_wc"}
!1269 = distinct !{!1269, !1268, !"_RNCNvMsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtNtB9_4node6HandleINtB12_7NodeRefNtNtB12_6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB9_7set_val9SetValZSTNtB1A_4LeafENtB1A_4EdgeE14next_unchecked0CsfPYenFzdTHO_5uu_wc: argument 1"}
!1270 = distinct !{!1270, !1271, !"_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB4_7set_val9SetValZSTNtB1y_4LeafENtB1y_4EdgeETRB1R_RB2R_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0ECsfPYenFzdTHO_5uu_wc: argument 0"}
!1271 = distinct !{!1271, !"_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB4_7set_val9SetValZSTNtB1y_4LeafENtB1y_4EdgeETRB1R_RB2R_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0ECsfPYenFzdTHO_5uu_wc"}
!1272 = distinct !{!1272, !1273, !"_RNvXsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc: argument 0"}
!1273 = distinct !{!1273, !"_RNvXsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc"}
!1274 = !{!1275, !1264, !1266, !1267, !1269, !1270, !1272, !1148, !1155, !1145, !1156, !1106, !1103, !1098}
!1275 = distinct !{!1275, !1276, !"_RNvMse_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTNtB19_14LeafOrInternalE6ascendCsfPYenFzdTHO_5uu_wc: argument 0"}
!1276 = distinct !{!1276, !"_RNvMse_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTNtB19_14LeafOrInternalE6ascendCsfPYenFzdTHO_5uu_wc"}
!1277 = !{!1267, !1269, !1270, !1272, !1148, !1155, !1145, !1156, !1106, !1103, !1098}
!1278 = !{!1279, !1281, !1267, !1269, !1270, !1272, !1148, !1155, !1145, !1156, !1106, !1103, !1098}
!1279 = distinct !{!1279, !1280, !"_RNvMsp_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTNtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeCsfPYenFzdTHO_5uu_wc: argument 0"}
!1280 = distinct !{!1280, !"_RNvMsp_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTNtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeCsfPYenFzdTHO_5uu_wc"}
!1281 = distinct !{!1281, !1280, !"_RNvMsp_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTNtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeCsfPYenFzdTHO_5uu_wc: argument 1"}
!1282 = distinct !{!1282, !1158}
!1283 = !{!1284, !1179, !1148, !1155, !1145, !1156, !1106, !1103, !1098}
!1284 = distinct !{!1284, !1285, !"_RINvMs_NtNtNtCs7tKScEop1B6_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTNtB1i_14LeafOrInternalE11search_treeB1A_ECsfPYenFzdTHO_5uu_wc: argument 0"}
!1285 = distinct !{!1285, !"_RINvMs_NtNtNtCs7tKScEop1B6_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTNtB1i_14LeafOrInternalE11search_treeB1A_ECsfPYenFzdTHO_5uu_wc"}
!1286 = !{!1287, !1289, !1290, !1292, !1293, !1295, !1148, !1155, !1145, !1156, !1106, !1103, !1098}
!1287 = distinct !{!1287, !1288, !"_RNvMsh_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTNtB1y_4LeafENtB1y_4EdgeE7next_kvCsfPYenFzdTHO_5uu_wc: argument 0"}
!1288 = distinct !{!1288, !"_RNvMsh_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTNtB1y_4LeafENtB1y_4EdgeE7next_kvCsfPYenFzdTHO_5uu_wc"}
!1289 = distinct !{!1289, !1288, !"_RNvMsh_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTNtB1y_4LeafENtB1y_4EdgeE7next_kvCsfPYenFzdTHO_5uu_wc: argument 1"}
!1290 = distinct !{!1290, !1291, !"_RNCNvMsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtNtB9_4node6HandleINtB12_7NodeRefNtNtB12_6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB9_7set_val9SetValZSTNtB1A_4LeafENtB1A_4EdgeE14next_unchecked0CsfPYenFzdTHO_5uu_wc: argument 0"}
!1291 = distinct !{!1291, !"_RNCNvMsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtNtB9_4node6HandleINtB12_7NodeRefNtNtB12_6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB9_7set_val9SetValZSTNtB1A_4LeafENtB1A_4EdgeE14next_unchecked0CsfPYenFzdTHO_5uu_wc"}
!1292 = distinct !{!1292, !1291, !"_RNCNvMsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtNtB9_4node6HandleINtB12_7NodeRefNtNtB12_6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB9_7set_val9SetValZSTNtB1A_4LeafENtB1A_4EdgeE14next_unchecked0CsfPYenFzdTHO_5uu_wc: argument 1"}
!1293 = distinct !{!1293, !1294, !"_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB4_7set_val9SetValZSTNtB1y_4LeafENtB1y_4EdgeETRB1R_RB2R_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0ECsfPYenFzdTHO_5uu_wc: argument 0"}
!1294 = distinct !{!1294, !"_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB4_7set_val9SetValZSTNtB1y_4LeafENtB1y_4EdgeETRB1R_RB2R_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0ECsfPYenFzdTHO_5uu_wc"}
!1295 = distinct !{!1295, !1296, !"_RNvXsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc: argument 0"}
!1296 = distinct !{!1296, !"_RNvXsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc"}
!1297 = !{!1298, !1287, !1289, !1290, !1292, !1293, !1295, !1148, !1155, !1145, !1156, !1106, !1103, !1098}
!1298 = distinct !{!1298, !1299, !"_RNvMse_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTNtB19_14LeafOrInternalE6ascendCsfPYenFzdTHO_5uu_wc: argument 0"}
!1299 = distinct !{!1299, !"_RNvMse_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTNtB19_14LeafOrInternalE6ascendCsfPYenFzdTHO_5uu_wc"}
!1300 = !{!1290, !1292, !1293, !1295, !1148, !1155, !1145, !1156, !1106, !1103, !1098}
!1301 = !{!1302, !1304, !1290, !1292, !1293, !1295, !1148, !1155, !1145, !1156, !1106, !1103, !1098}
!1302 = distinct !{!1302, !1303, !"_RNvMsp_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTNtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeCsfPYenFzdTHO_5uu_wc: argument 0"}
!1303 = distinct !{!1303, !"_RNvMsp_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTNtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeCsfPYenFzdTHO_5uu_wc"}
!1304 = distinct !{!1304, !1303, !"_RNvMsp_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureNtNtB7_7set_val9SetValZSTNtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeCsfPYenFzdTHO_5uu_wc: argument 1"}
!1305 = distinct !{!1305, !1158}
!1306 = !{!1307, !1309, !1311, !1313, !1148, !1155, !1145, !1156, !1106, !1103, !1098}
!1307 = distinct !{!1307, !1308, !"_RINvYINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB2c_8adapters6copied13copy_try_foldB15_uINtNtNtB2e_3ops12control_flow11ControlFlowB15_ENCINvNvB26_4find5checkB15_QNCNvCsfPYenFzdTHO_5uu_wc16wc_simd_features0E0E0B3Y_EB5e_: argument 0"}
!1308 = distinct !{!1308, !"_RINvYINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB2c_8adapters6copied13copy_try_foldB15_uINtNtNtB2e_3ops12control_flow11ControlFlowB15_ENCINvNvB26_4find5checkB15_QNCNvCsfPYenFzdTHO_5uu_wc16wc_simd_features0E0E0B3Y_EB5e_"}
!1309 = distinct !{!1309, !1310, !"_RINvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB36_4find5checkB24_QNCNvCsfPYenFzdTHO_5uu_wc16wc_simd_features0E0INtNtNtBb_3ops12control_flow11ControlFlowB24_EEB4j_: argument 0"}
!1310 = distinct !{!1310, !"_RINvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB36_4find5checkB24_QNCNvCsfPYenFzdTHO_5uu_wc16wc_simd_features0E0INtNtNtBb_3ops12control_flow11ControlFlowB24_EEB4j_"}
!1311 = distinct !{!1311, !1312, !"_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6copied6CopiedINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENtNtNtBa_6traits8iterator8Iterator4findQNCNvCsfPYenFzdTHO_5uu_wc16wc_simd_features0EB3J_: argument 0"}
!1312 = distinct !{!1312, !"_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6copied6CopiedINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENtNtNtBa_6traits8iterator8Iterator4findQNCNvCsfPYenFzdTHO_5uu_wc16wc_simd_features0EB3J_"}
!1313 = distinct !{!1313, !1314, !"_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filterINtB5_6FilterINtNtB7_6copied6CopiedINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENCNvCsfPYenFzdTHO_5uu_wc16wc_simd_features0ENtNtNtB9_6traits8iterator8Iterator4nextB3w_: argument 0"}
!1314 = distinct !{!1314, !"_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filterINtB5_6FilterINtNtB7_6copied6CopiedINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENCNvCsfPYenFzdTHO_5uu_wc16wc_simd_features0ENtNtNtB9_6traits8iterator8Iterator4nextB3w_"}
!1315 = !{!1148, !1145}
!1316 = !{!1155, !1156, !1106, !1103, !1098, !1100}
!1317 = !{!1318, !1320, !1321, !1323, !1324, !1326, !1148, !1155, !1145, !1156, !1106, !1103, !1098, !1100}
!1318 = distinct !{!1318, !1319, !"_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator9size_hintCsfPYenFzdTHO_5uu_wc: argument 0"}
!1319 = distinct !{!1319, !"_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator9size_hintCsfPYenFzdTHO_5uu_wc"}
!1320 = distinct !{!1320, !1319, !"_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator9size_hintCsfPYenFzdTHO_5uu_wc: argument 1"}
!1321 = distinct !{!1321, !1322, !"_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENtNtNtB8_6traits8iterator8Iterator9size_hintCsfPYenFzdTHO_5uu_wc: argument 0"}
!1322 = distinct !{!1322, !"_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENtNtNtB8_6traits8iterator8Iterator9size_hintCsfPYenFzdTHO_5uu_wc"}
!1323 = distinct !{!1323, !1322, !"_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENtNtNtB8_6traits8iterator8Iterator9size_hintCsfPYenFzdTHO_5uu_wc: argument 1"}
!1324 = distinct !{!1324, !1325, !"_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filterINtB5_6FilterINtNtB7_6copied6CopiedINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENCNvCsfPYenFzdTHO_5uu_wc16wc_simd_features0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3w_: argument 0"}
!1325 = distinct !{!1325, !"_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filterINtB5_6FilterINtNtB7_6copied6CopiedINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENCNvCsfPYenFzdTHO_5uu_wc16wc_simd_features0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3w_"}
!1326 = distinct !{!1326, !1325, !"_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filterINtB5_6FilterINtNtB7_6copied6CopiedINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENCNvCsfPYenFzdTHO_5uu_wc16wc_simd_features0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3w_: argument 1"}
!1327 = !{!1318, !1320, !1321, !1323, !1324, !1326, !1148, !1155, !1145, !1156, !1106, !1103, !1098}
!1328 = !{!1155, !1156, !1106, !1103, !1098}
!1329 = !{!1103, !1098, !1100}
!1330 = !{!1331, !1098}
!1331 = distinct !{!1331, !1332, !"_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc: argument 0"}
!1332 = distinct !{!1332, !"_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc"}
!1333 = !{!1334, !1098}
!1334 = distinct !{!1334, !1335, !"_RNvXse_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsfPYenFzdTHO_5uu_wc: argument 0"}
!1335 = distinct !{!1335, !"_RNvXse_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsfPYenFzdTHO_5uu_wc"}
!1336 = !{!1337, !1098}
!1337 = distinct !{!1337, !1338, !"_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureE8push_mutCsfPYenFzdTHO_5uu_wc: argument 0"}
!1338 = distinct !{!1338, !"_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureE8push_mutCsfPYenFzdTHO_5uu_wc"}
!1339 = !{!1340, !1098}
!1340 = distinct !{!1340, !1341, !"_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureE8push_mutCsfPYenFzdTHO_5uu_wc: argument 0"}
!1341 = distinct !{!1341, !"_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureE8push_mutCsfPYenFzdTHO_5uu_wc"}
!1342 = !{!1100}
!1343 = !{!1344, !1346}
!1344 = distinct !{!1344, !1345, !"_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfPYenFzdTHO_5uu_wc: argument 0"}
!1345 = distinct !{!1345, !"_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfPYenFzdTHO_5uu_wc"}
!1346 = distinct !{!1346, !1347, !"_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB1F_6copied6CopiedINtNtNtB1J_5slice4iter4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENvCsfPYenFzdTHO_5uu_wc22hardware_feature_labelEE9from_iterB4g_: argument 0"}
!1347 = distinct !{!1347, !"_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB1F_6copied6CopiedINtNtNtB1J_5slice4iter4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENvCsfPYenFzdTHO_5uu_wc22hardware_feature_labelEE9from_iterB4g_"}
!1348 = !{!1346}
!1349 = !{!1350, !1352, !1354, !1356, !1358, !1360, !1346}
!1350 = distinct !{!1350, !1351, !"_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1X_8adapters6copied9copy_foldBQ_uNCINvNtB2J_3map8map_foldBQ_ReuNvCsfPYenFzdTHO_5uu_wc22hardware_feature_labelNCINvNvB1R_8for_each4callB3K_NCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB59_3VecB3K_E14extend_trustedINtB3o_3MapINtB2H_6CopiedBF_EB3N_EE0E0E0E0EB3P_: argument 0"}
!1351 = distinct !{!1351, !"_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1X_8adapters6copied9copy_foldBQ_uNCINvNtB2J_3map8map_foldBQ_ReuNvCsfPYenFzdTHO_5uu_wc22hardware_feature_labelNCINvNvB1R_8for_each4callB3K_NCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB59_3VecB3K_E14extend_trustedINtB3o_3MapINtB2H_6CopiedBF_EB3N_EE0E0E0E0EB3P_"}
!1352 = distinct !{!1352, !1353, !"_RINvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldB1s_ReuNvCsfPYenFzdTHO_5uu_wc22hardware_feature_labelNCINvNvB2u_8for_each4callB3z_NCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4Y_3VecB3z_E14extend_trustedINtB3d_3MapBP_B3C_EE0E0E0EB3E_: argument 0"}
!1353 = distinct !{!1353, !"_RINvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldB1s_ReuNvCsfPYenFzdTHO_5uu_wc22hardware_feature_labelNCINvNvB2u_8for_each4callB3z_NCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4Y_3VecB3z_E14extend_trustedINtB3d_3MapBP_B3C_EE0E0E0EB3E_"}
!1354 = distinct !{!1354, !1355, !"_RINvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB6_3MapINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENvCsfPYenFzdTHO_5uu_wc22hardware_feature_labelENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3w_8for_each4callReNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4K_3VecB4z_E14extend_trustedBN_E0E0EB2N_: argument 0"}
!1355 = distinct !{!1355, !"_RINvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB6_3MapINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENvCsfPYenFzdTHO_5uu_wc22hardware_feature_labelENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3w_8for_each4callReNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4K_3VecB4z_E14extend_trustedBN_E0E0EB2N_"}
!1356 = distinct !{!1356, !1357, !"_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENvCsfPYenFzdTHO_5uu_wc22hardware_feature_labelENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4g_3VecReE14extend_trustedB3_E0EB2H_: argument 0"}
!1357 = distinct !{!1357, !"_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENvCsfPYenFzdTHO_5uu_wc22hardware_feature_labelENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4g_3VecReE14extend_trustedB3_E0EB2H_"}
!1358 = distinct !{!1358, !1359, !"_RINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB6_3VecReE14extend_trustedINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB14_6copied6CopiedINtNtNtB18_5slice4iter4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENvCsfPYenFzdTHO_5uu_wc22hardware_feature_labelEEB3F_: argument 0"}
!1359 = distinct !{!1359, !"_RINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB6_3VecReE14extend_trustedINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB14_6copied6CopiedINtNtNtB18_5slice4iter4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENvCsfPYenFzdTHO_5uu_wc22hardware_feature_labelEEB3F_"}
!1360 = distinct !{!1360, !1361, !"_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB6_3VecReEINtB4_10SpecExtendBT_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB1m_6copied6CopiedINtNtNtB1q_5slice4iter4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENvCsfPYenFzdTHO_5uu_wc22hardware_feature_labelEE11spec_extendB3X_: argument 0"}
!1361 = distinct !{!1361, !"_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB6_3VecReEINtB4_10SpecExtendBT_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB1m_6copied6CopiedINtNtNtB1q_5slice4iter4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENvCsfPYenFzdTHO_5uu_wc22hardware_feature_labelEE11spec_extendB3X_"}
!1362 = !{!1363, !1365, !1366, !1368, !1369, !1371, !1350, !1352, !1354, !1356, !1358, !1360, !1346}
!1363 = distinct !{!1363, !1364, !"_RNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB8_3VecReE14extend_trustedINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB16_6copied6CopiedINtNtNtB1a_5slice4iter4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENvCsfPYenFzdTHO_5uu_wc22hardware_feature_labelEE0B3H_: argument 0"}
!1364 = distinct !{!1364, !"_RNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB8_3VecReE14extend_trustedINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB16_6copied6CopiedINtNtNtB1a_5slice4iter4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENvCsfPYenFzdTHO_5uu_wc22hardware_feature_labelEE0B3H_"}
!1365 = distinct !{!1365, !1364, !"_RNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB8_3VecReE14extend_trustedINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB16_6copied6CopiedINtNtNtB1a_5slice4iter4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENvCsfPYenFzdTHO_5uu_wc22hardware_feature_labelEE0B3H_: argument 1"}
!1366 = distinct !{!1366, !1367, !"_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator8for_each4callReNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB1q_3VecB1f_E14extend_trustedINtNtNtBc_8adapters3map3MapINtNtB2r_6copied6CopiedINtNtNtBe_5slice4iter4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENvCsfPYenFzdTHO_5uu_wc22hardware_feature_labelEE0E0B4E_: argument 0"}
!1367 = distinct !{!1367, !"_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator8for_each4callReNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB1q_3VecB1f_E14extend_trustedINtNtNtBc_8adapters3map3MapINtNtB2r_6copied6CopiedINtNtNtBe_5slice4iter4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENvCsfPYenFzdTHO_5uu_wc22hardware_feature_labelEE0E0B4E_"}
!1368 = distinct !{!1368, !1367, !"_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator8for_each4callReNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB1q_3VecB1f_E14extend_trustedINtNtNtBc_8adapters3map3MapINtNtB2r_6copied6CopiedINtNtNtBe_5slice4iter4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENvCsfPYenFzdTHO_5uu_wc22hardware_feature_labelEE0E0B4E_: argument 1"}
!1369 = distinct !{!1369, !1370, !"_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureReuNvCsfPYenFzdTHO_5uu_wc22hardware_feature_labelNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1U_NCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB3N_3VecB1U_E14extend_trustedINtB4_3MapINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterBU_EEB1X_EE0E0E0B1Z_: argument 0"}
!1370 = distinct !{!1370, !"_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureReuNvCsfPYenFzdTHO_5uu_wc22hardware_feature_labelNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1U_NCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB3N_3VecB1U_E14extend_trustedINtB4_3MapINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterBU_EEB1X_EE0E0E0B1Z_"}
!1371 = distinct !{!1371, !1372, !"_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6copied9copy_foldNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureuNCINvNtB6_3map8map_foldBY_ReuNvCsfPYenFzdTHO_5uu_wc22hardware_feature_labelNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2p_NCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4i_3VecB2p_E14extend_trustedINtB24_3MapINtB4_6CopiedINtNtNtBa_5slice4iter4IterBY_EEB2s_EE0E0E0E0B2u_: argument 0"}
!1372 = distinct !{!1372, !"_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6copied9copy_foldNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureuNCINvNtB6_3map8map_foldBY_ReuNvCsfPYenFzdTHO_5uu_wc22hardware_feature_labelNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2p_NCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4i_3VecB2p_E14extend_trustedINtB24_3MapINtB4_6CopiedINtNtNtBa_5slice4iter4IterBY_EEB2s_EE0E0E0E0B2u_"}
!1373 = !{!1363, !1366, !1369, !1371, !1350, !1352, !1354, !1356, !1358, !1360, !1346}
!1374 = !{!1375, !1377}
!1375 = distinct !{!1375, !1376, !"_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfPYenFzdTHO_5uu_wc: argument 0"}
!1376 = distinct !{!1376, !"_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfPYenFzdTHO_5uu_wc"}
!1377 = distinct !{!1377, !1378, !"_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB1F_6copied6CopiedINtNtNtB1J_5slice4iter4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENvCsfPYenFzdTHO_5uu_wc22hardware_feature_labelEE9from_iterB4g_: argument 0"}
!1378 = distinct !{!1378, !"_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB1F_6copied6CopiedINtNtNtB1J_5slice4iter4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENvCsfPYenFzdTHO_5uu_wc22hardware_feature_labelEE9from_iterB4g_"}
!1379 = !{!1377}
!1380 = !{!1381, !1383, !1385, !1387, !1389, !1391, !1377}
!1381 = distinct !{!1381, !1382, !"_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1X_8adapters6copied9copy_foldBQ_uNCINvNtB2J_3map8map_foldBQ_ReuNvCsfPYenFzdTHO_5uu_wc22hardware_feature_labelNCINvNvB1R_8for_each4callB3K_NCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB59_3VecB3K_E14extend_trustedINtB3o_3MapINtB2H_6CopiedBF_EB3N_EE0E0E0E0EB3P_: argument 0"}
!1382 = distinct !{!1382, !"_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1X_8adapters6copied9copy_foldBQ_uNCINvNtB2J_3map8map_foldBQ_ReuNvCsfPYenFzdTHO_5uu_wc22hardware_feature_labelNCINvNvB1R_8for_each4callB3K_NCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB59_3VecB3K_E14extend_trustedINtB3o_3MapINtB2H_6CopiedBF_EB3N_EE0E0E0E0EB3P_"}
!1383 = distinct !{!1383, !1384, !"_RINvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldB1s_ReuNvCsfPYenFzdTHO_5uu_wc22hardware_feature_labelNCINvNvB2u_8for_each4callB3z_NCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4Y_3VecB3z_E14extend_trustedINtB3d_3MapBP_B3C_EE0E0E0EB3E_: argument 0"}
!1384 = distinct !{!1384, !"_RINvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldB1s_ReuNvCsfPYenFzdTHO_5uu_wc22hardware_feature_labelNCINvNvB2u_8for_each4callB3z_NCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4Y_3VecB3z_E14extend_trustedINtB3d_3MapBP_B3C_EE0E0E0EB3E_"}
!1385 = distinct !{!1385, !1386, !"_RINvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB6_3MapINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENvCsfPYenFzdTHO_5uu_wc22hardware_feature_labelENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3w_8for_each4callReNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4K_3VecB4z_E14extend_trustedBN_E0E0EB2N_: argument 0"}
!1386 = distinct !{!1386, !"_RINvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB6_3MapINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENvCsfPYenFzdTHO_5uu_wc22hardware_feature_labelENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3w_8for_each4callReNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4K_3VecB4z_E14extend_trustedBN_E0E0EB2N_"}
!1387 = distinct !{!1387, !1388, !"_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENvCsfPYenFzdTHO_5uu_wc22hardware_feature_labelENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4g_3VecReE14extend_trustedB3_E0EB2H_: argument 0"}
!1388 = distinct !{!1388, !"_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENvCsfPYenFzdTHO_5uu_wc22hardware_feature_labelENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4g_3VecReE14extend_trustedB3_E0EB2H_"}
!1389 = distinct !{!1389, !1390, !"_RINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB6_3VecReE14extend_trustedINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB14_6copied6CopiedINtNtNtB18_5slice4iter4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENvCsfPYenFzdTHO_5uu_wc22hardware_feature_labelEEB3F_: argument 0"}
!1390 = distinct !{!1390, !"_RINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB6_3VecReE14extend_trustedINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB14_6copied6CopiedINtNtNtB18_5slice4iter4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENvCsfPYenFzdTHO_5uu_wc22hardware_feature_labelEEB3F_"}
!1391 = distinct !{!1391, !1392, !"_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB6_3VecReEINtB4_10SpecExtendBT_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB1m_6copied6CopiedINtNtNtB1q_5slice4iter4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENvCsfPYenFzdTHO_5uu_wc22hardware_feature_labelEE11spec_extendB3X_: argument 0"}
!1392 = distinct !{!1392, !"_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB6_3VecReEINtB4_10SpecExtendBT_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB1m_6copied6CopiedINtNtNtB1q_5slice4iter4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENvCsfPYenFzdTHO_5uu_wc22hardware_feature_labelEE11spec_extendB3X_"}
!1393 = !{!1394, !1396, !1397, !1399, !1400, !1402, !1381, !1383, !1385, !1387, !1389, !1391, !1377}
!1394 = distinct !{!1394, !1395, !"_RNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB8_3VecReE14extend_trustedINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB16_6copied6CopiedINtNtNtB1a_5slice4iter4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENvCsfPYenFzdTHO_5uu_wc22hardware_feature_labelEE0B3H_: argument 0"}
!1395 = distinct !{!1395, !"_RNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB8_3VecReE14extend_trustedINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB16_6copied6CopiedINtNtNtB1a_5slice4iter4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENvCsfPYenFzdTHO_5uu_wc22hardware_feature_labelEE0B3H_"}
!1396 = distinct !{!1396, !1395, !"_RNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB8_3VecReE14extend_trustedINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB16_6copied6CopiedINtNtNtB1a_5slice4iter4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENvCsfPYenFzdTHO_5uu_wc22hardware_feature_labelEE0B3H_: argument 1"}
!1397 = distinct !{!1397, !1398, !"_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator8for_each4callReNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB1q_3VecB1f_E14extend_trustedINtNtNtBc_8adapters3map3MapINtNtB2r_6copied6CopiedINtNtNtBe_5slice4iter4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENvCsfPYenFzdTHO_5uu_wc22hardware_feature_labelEE0E0B4E_: argument 0"}
!1398 = distinct !{!1398, !"_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator8for_each4callReNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB1q_3VecB1f_E14extend_trustedINtNtNtBc_8adapters3map3MapINtNtB2r_6copied6CopiedINtNtNtBe_5slice4iter4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENvCsfPYenFzdTHO_5uu_wc22hardware_feature_labelEE0E0B4E_"}
!1399 = distinct !{!1399, !1398, !"_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator8for_each4callReNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB1q_3VecB1f_E14extend_trustedINtNtNtBc_8adapters3map3MapINtNtB2r_6copied6CopiedINtNtNtBe_5slice4iter4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENvCsfPYenFzdTHO_5uu_wc22hardware_feature_labelEE0E0B4E_: argument 1"}
!1400 = distinct !{!1400, !1401, !"_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureReuNvCsfPYenFzdTHO_5uu_wc22hardware_feature_labelNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1U_NCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB3N_3VecB1U_E14extend_trustedINtB4_3MapINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterBU_EEB1X_EE0E0E0B1Z_: argument 0"}
!1401 = distinct !{!1401, !"_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureReuNvCsfPYenFzdTHO_5uu_wc22hardware_feature_labelNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1U_NCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB3N_3VecB1U_E14extend_trustedINtB4_3MapINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterBU_EEB1X_EE0E0E0B1Z_"}
!1402 = distinct !{!1402, !1403, !"_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6copied9copy_foldNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureuNCINvNtB6_3map8map_foldBY_ReuNvCsfPYenFzdTHO_5uu_wc22hardware_feature_labelNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2p_NCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4i_3VecB2p_E14extend_trustedINtB24_3MapINtB4_6CopiedINtNtNtBa_5slice4iter4IterBY_EEB2s_EE0E0E0E0B2u_: argument 0"}
!1403 = distinct !{!1403, !"_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6copied9copy_foldNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureuNCINvNtB6_3map8map_foldBY_ReuNvCsfPYenFzdTHO_5uu_wc22hardware_feature_labelNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2p_NCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4i_3VecB2p_E14extend_trustedINtB24_3MapINtB4_6CopiedINtNtNtBa_5slice4iter4IterBY_EEB2s_EE0E0E0E0B2u_"}
!1404 = !{!1394, !1397, !1400, !1402, !1381, !1383, !1385, !1387, !1389, !1391, !1377}
!1405 = !{!1406}
!1406 = distinct !{!1406, !1407, !"_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfPYenFzdTHO_5uu_wc: argument 0"}
!1407 = distinct !{!1407, !"_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfPYenFzdTHO_5uu_wc"}
!1408 = !{!1409}
!1409 = distinct !{!1409, !1410, !"_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfPYenFzdTHO_5uu_wc: argument 0"}
!1410 = distinct !{!1410, !"_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfPYenFzdTHO_5uu_wc"}
!1411 = !{!1412}
!1412 = distinct !{!1412, !1413, !"_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfPYenFzdTHO_5uu_wc: argument 0"}
!1413 = distinct !{!1413, !"_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfPYenFzdTHO_5uu_wc"}
!1414 = !{!1415}
!1415 = distinct !{!1415, !1416, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfPYenFzdTHO_5uu_wc: argument 0"}
!1416 = distinct !{!1416, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfPYenFzdTHO_5uu_wc"}
!1417 = !{!1418}
!1418 = distinct !{!1418, !1419, !"_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl: argument 1"}
!1419 = distinct !{!1419, !"_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl"}
!1420 = !{!1421}
!1421 = distinct !{!1421, !1419, !"_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl: argument 0"}
!1422 = !{!1423}
!1423 = distinct !{!1423, !1424, !"_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfPYenFzdTHO_5uu_wc: argument 0"}
!1424 = distinct !{!1424, !"_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfPYenFzdTHO_5uu_wc"}
!1425 = !{!1426}
!1426 = distinct !{!1426, !1427, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfPYenFzdTHO_5uu_wc: argument 0"}
!1427 = distinct !{!1427, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfPYenFzdTHO_5uu_wc"}
!1428 = !{!1429}
!1429 = distinct !{!1429, !1430, !"_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl: argument 1"}
!1430 = distinct !{!1430, !"_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl"}
!1431 = !{!1432}
!1432 = distinct !{!1432, !1430, !"_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl: argument 0"}
!1433 = !{!1434}
!1434 = distinct !{!1434, !1435, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfPYenFzdTHO_5uu_wc: argument 0"}
!1435 = distinct !{!1435, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfPYenFzdTHO_5uu_wc"}
!1436 = !{!1437}
!1437 = distinct !{!1437, !1438, !"_RINvNtNtNtCs6JMX4GRUq9U_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsfPYenFzdTHO_5uu_wc: argument 0"}
!1438 = distinct !{!1438, !"_RINvNtNtNtCs6JMX4GRUq9U_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsfPYenFzdTHO_5uu_wc"}
!1439 = !{!1440}
!1440 = distinct !{!1440, !1441, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfPYenFzdTHO_5uu_wc: argument 0"}
!1441 = distinct !{!1441, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfPYenFzdTHO_5uu_wc"}
!1442 = !{!1443}
!1443 = distinct !{!1443, !1444, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfPYenFzdTHO_5uu_wc: argument 0"}
!1444 = distinct !{!1444, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfPYenFzdTHO_5uu_wc"}
!1445 = !{!1446}
!1446 = distinct !{!1446, !1447, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsfPYenFzdTHO_5uu_wc14WcSimdFeaturesEBD_: argument 0"}
!1447 = distinct !{!1447, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsfPYenFzdTHO_5uu_wc14WcSimdFeaturesEBD_"}
!1448 = !{!1449}
!1449 = distinct !{!1449, !1450, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfPYenFzdTHO_5uu_wc: argument 0"}
!1450 = distinct !{!1450, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfPYenFzdTHO_5uu_wc"}
!1451 = !{!1452}
!1452 = distinct !{!1452, !1453, !"_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl: argument 1"}
!1453 = distinct !{!1453, !"_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl"}
!1454 = !{!1455}
!1455 = distinct !{!1455, !1453, !"_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl: argument 0"}
!1456 = !{!1457}
!1457 = distinct !{!1457, !1458, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfPYenFzdTHO_5uu_wc: argument 0"}
!1458 = distinct !{!1458, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfPYenFzdTHO_5uu_wc"}
!1459 = !{!1460}
end_hunk_3
