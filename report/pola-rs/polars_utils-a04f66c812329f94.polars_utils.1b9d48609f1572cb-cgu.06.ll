Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_utils-a04f66c812329f94.polars_utils.1b9d48609f1572cb-cgu.06?download=true
inline.NumInlined: 120
inline.NumDeleted: 87
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMNtCs2mZqlW55729_12polars_utils10slice_enumNtB2_5Slice9offsetted
define void @_RNvMNtCs2mZqlW55729_12polars_utils10slice_enumNtB2_5Slice9offsetted(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, i64 noundef %2) unnamed_addr #0 !dbg !789 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !dbg !795, !range !79, !noundef !77
  %i.b = trunc nuw i64 %i.a to i1, !dbg !796
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !796, !prof !188

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @8, ptr noundef nonnull inttoptr (i64 85 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #23, !dbg !797
  unreachable, !dbg !797

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !798
  %i.d = load i64, ptr %i.c, align 8, !dbg !798, !noundef !77 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !799
  %i.f = load i64, ptr %i.e, align 8, !dbg !799, !noundef !77 ; 2 uses
  %.not = icmp ugt i64 %2, %i.d, !dbg !800
  br i1 %.not, label %bb.d, label %bb.e, !dbg !800

bb.d:                                             ; preds = %bb.c
  %i.g = sub nuw i64 %2, %i.d, !dbg !801
  %i.h = tail call i64 @llvm.usub.sat.i64(i64 %i.f, i64 %i.g), !dbg !802
  br label %bb.f, !dbg !803

bb.e:                                             ; preds = %bb.c
  %i.i = sub nuw i64 %i.d, %2, !dbg !804
  br label %bb.f, !dbg !803

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.02.0 = phi i64 [ %i.i, %bb.e ], [ 0, %bb.d ], !dbg !805
  %.sroa.0.0 = phi i64 [ %i.f, %bb.e ], [ %i.h, %bb.d ], !dbg !806
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !807
  store i64 %.sroa.02.0, ptr %i.j, align 8, !dbg !807
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !807
  store i64 %.sroa.0.0, ptr %i.k, align 8, !dbg !807
  store i64 0, ptr %0, align 8, !dbg !807
  ret void, !dbg !808
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvMNtCs2mZqlW55729_12polars_utils17calc_morsel_splitNtB2_13PartSizesIter19new_from_total_size(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #4 personality ptr @rust_eh_personality !dbg !809 {
bb.a:
  %i.a = icmp eq i64 %2, 0, !dbg !813
  br i1 %i.a, label %bb.b, label %bb.c, !dbg !813

bb.b:                                             ; preds = %bb.a, %bb.c
  %.sink2 = phi i64 [ %i.d, %bb.c ], [ 0, %bb.a ], !dbg !814
  %.sink = phi i64 [ %i.f, %bb.c ], [ 0, %bb.a ], !dbg !814
  store i64 %.sink2, ptr %0, align 8, !dbg !814
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !814
  store i64 %2, ptr %i.b, align 8, !dbg !814
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !814
  store i64 %.sink, ptr %i.c, align 8, !dbg !814
  ret void, !dbg !815

bb.c:                                             ; preds = %bb.a
  %i.d = udiv i64 %1, %2, !dbg !816
  %i.e = urem i64 %1, %2, !dbg !817
  %i.f = sub nuw i64 %2, %i.e, !dbg !818
  br label %bb.b, !dbg !815
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvMs_NtCs2mZqlW55729_12polars_utils18cardinality_sketchNtB4_17CardinalitySketch6insert(ptr noalias nofree noundef captures(none) dereferenceable(256) %0, i64 noundef %1) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !819 {
bb.a:
  %i.a = mul i64 %1, 2887833722462635776, !dbg !828
  %i.b = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.a, i1 false), !dbg !829
  %i.c = trunc nuw nsw i64 %i.b to i8, !dbg !828
  %i.d = add nuw nsw i8 %i.c, 1, !dbg !830
  %i.e = mul i64 %1, -8059169931769559161, !dbg !831
  %i.f = lshr i64 %i.e, 56, !dbg !832
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %i.f, !dbg !833 ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !dbg !833, !noundef !77
  %.sroa.0.0.i = tail call noundef range(i8 1, 0) i8 @llvm.umax.i8(i8 range(i8 1, 66) %i.d, i8 %i.h), !dbg !834
  store i8 %.sroa.0.0.i, ptr %i.g, align 1, !dbg !835
  ret void, !dbg !836
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtCs2mZqlW55729_12polars_utils18cardinality_sketchNtB4_17CardinalitySketch7combine(ptr noalias noundef dereferenceable(256) %0, ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(256) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !837 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [256 x i8], align 1               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !864
  store ptr %0, ptr %i.a, align 8, !noalias !865
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.c, align 8, !noalias !865
  br label %bb.b, !dbg !880

bb.b:                                             ; preds = %bb.b, %bb.a
  %storemerge5.i.i = phi i64 [ 0, %bb.a ], [ %i.f, %bb.b ] ; 3 uses
  %i.d = call noundef i8 @_RNvXs_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB4_7WrappedhjNCNvMs_NtCs2mZqlW55729_12polars_utils18cardinality_sketchNtB12_17CardinalitySketch7combine0EINtNtB6_8function5FnMutTjEE8call_mutB14_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef %storemerge5.i.i), !dbg !881, !noalias !869
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %storemerge5.i.i, !dbg !882
  store i8 %i.d, ptr %i.e, align 1, !dbg !883
  %i.f = add nuw nsw i64 %storemerge5.i.i, 1, !dbg !884 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.f, 256, !dbg !880
  br i1 %exitcond.not.i.i, label %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuithEKj100_INtBJ_7WrappedhjNCNvMs_NtCs2mZqlW55729_12polars_utils18cardinality_sketchNtB1S_17CardinalitySketch7combine0EEB1U_.exit, label %bb.b, !dbg !880

_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuithEKj100_INtBJ_7WrappedhjNCNvMs_NtCs2mZqlW55729_12polars_utils18cardinality_sketchNtB1S_17CardinalitySketch7combine0EEB1U_.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !885, !noalias !864
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %0, ptr noundef nonnull align 1 dereferenceable(256) %i.b, i64 256, i1 false), !dbg !886
  ret void, !dbg !887
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable
define noundef i64 @_RNvMs_NtCs2mZqlW55729_12polars_utils18cardinality_sketchNtB4_17CardinalitySketch8estimate(ptr noalias noundef readonly captures(none) dereferenceable(256) %0) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !888 {
vector.ph:
  br label %vector.body, !dbg !912

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !927 ; 2 uses
  %vec.phi = phi <2 x double> [ zeroinitializer, %vector.ph ], [ %i.k, %vector.body ]
  %vec.phi20 = phi <2 x double> [ zeroinitializer, %vector.ph ], [ %i.l, %vector.body ]
  %vec.phi21 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.q, %vector.body ]
  %vec.phi22 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.r, %vector.body ]
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %index, !dbg !928 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 2, !dbg !929
  %wide.load = load <2 x i8>, ptr %i.a, align 1, !dbg !929 ; 2 uses
  %wide.load23 = load <2 x i8>, ptr %i.b, align 1, !dbg !929 ; 2 uses
  %i.c = zext <2 x i8> %wide.load to <2 x i64>, !dbg !930
  %i.d = zext <2 x i8> %wide.load23 to <2 x i64>, !dbg !930
  %i.e = shl nuw nsw <2 x i64> %i.c, splat (i64 52), !dbg !931
  %i.f = shl nuw nsw <2 x i64> %i.d, splat (i64 52), !dbg !931
  %i.g = sub nuw nsw <2 x i64> splat (i64 4607182418800017408), %i.e, !dbg !932
  %i.h = sub nuw nsw <2 x i64> splat (i64 4607182418800017408), %i.f, !dbg !932
  %i.i = bitcast <2 x i64> %i.g to <2 x double>, !dbg !933
  %i.j = bitcast <2 x i64> %i.h to <2 x double>, !dbg !933
  %i.k = fadd reassoc nsz arcp contract <2 x double> %vec.phi, %i.i, !dbg !934 ; 2 uses
  %i.l = fadd reassoc nsz arcp contract <2 x double> %vec.phi20, %i.j, !dbg !934 ; 2 uses
  %i.m = icmp eq <2 x i8> %wide.load, zeroinitializer, !dbg !935
  %i.n = icmp eq <2 x i8> %wide.load23, zeroinitializer, !dbg !935
  %i.o = zext <2 x i1> %i.m to <2 x i64>, !dbg !935
  %i.p = zext <2 x i1> %i.n to <2 x i64>, !dbg !935
  %i.q = add <2 x i64> %vec.phi21, %i.o, !dbg !936 ; 2 uses
  %i.r = add <2 x i64> %vec.phi22, %i.p, !dbg !936 ; 2 uses
  %index.next = add nuw i64 %index, 4, !dbg !927  ; 2 uses
  %i.s = icmp eq i64 %index.next, 256, !dbg !912
  br i1 %i.s, label %middle.block, label %vector.body, !dbg !912, !llvm.loop !904

middle.block:                                     ; preds = %vector.body
  %bin.rdx24 = add <2 x i64> %i.r, %i.q, !dbg !912
  %i.t = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx24), !dbg !912 ; 3 uses
  %bin.rdx = fadd reassoc nsz arcp contract <2 x double> %i.l, %i.k, !dbg !912
  %i.u = tail call reassoc nsz arcp contract double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %bin.rdx), !dbg !912
  %i.v = fdiv double f0x40E6B2ABA7F5EE9A, %i.u, !dbg !937 ; 2 uses
  %i.w = fcmp ugt double %i.v, 6.400000e+02, !dbg !938
  %i.x = icmp eq i64 %i.t, 0
  %or.cond = select i1 %i.w, i1 true, i1 %i.x, !dbg !938
  br i1 %or.cond, label %bb.b, label %bb.a, !dbg !938

bb.a:                                             ; preds = %middle.block
  %i.y = uitofp i64 %i.t to float, !dbg !939
  %i.z = fdiv nnan float 2.560000e+02, %i.y, !dbg !940
  %i.aa = tail call nnan float @llvm.log.f32(float %i.z), !dbg !941
  %i.ab = fpext nnan float %i.aa to double, !dbg !940
  %i.ac = fmul nnan double %i.ab, 2.560000e+02, !dbg !942
  br label %bb.b, !dbg !943

bb.b:                                             ; preds = %middle.block, %bb.a
  %.sroa.010.0 = phi double [ %i.v, %middle.block ], [ %i.ac, %bb.a ], !dbg !944
  %i.ad = icmp eq i64 %i.t, 256, !dbg !945
  br i1 %i.ad, label %bb.d, label %bb.c, !dbg !945

bb.c:                                             ; preds = %bb.b
  %i.ae = fadd double %.sroa.010.0, 5.000000e-01, !dbg !946
  %i.af = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.ae), !dbg !947
  %.sroa.0.0.i = tail call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 %i.af, i64 1), !dbg !948
  br label %bb.d, !dbg !949

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.i, %bb.c ], [ 0, %bb.b ], !dbg !950
  ret i64 %.sroa.0.0, !dbg !951
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts(i64 noundef %0, i64 noundef range(i64 1, 0) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !952 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 8 uses
  %i.f = alloca [8 x i8], align 8                 ; 2 uses
  %i.g = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %0, ptr %i.g, align 8
  store i64 %1, ptr %i.f, align 8
  %.not = icmp ugt i64 %0, %1, !dbg !1094
  br i1 %.not, label %bb.c, label %bb.b, !dbg !1094

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ne i64 %0, 0, !dbg !1095
  %. = zext i1 %i.h to i64, !dbg !1096
  br label %bb.e, !dbg !1096

bb.c:                                             ; preds = %bb.a
  %i.i = udiv i64 %0, %1, !dbg !1097              ; 7 uses
  %i.j = tail call i64 @llvm.uadd.sat.i64(i64 %i.i, i64 1), !dbg !1098 ; 7 uses
  %i.k = icmp uge i64 %i.i, %i.j, !dbg !1099      ; 2 uses
  %not..i.i = xor i1 %i.k, true, !dbg !1100
  %i.l = zext i1 %not..i.i to i64, !dbg !1100
  %.sroa.58.0.copyload.i.i = add nuw i64 %i.i, %i.l, !dbg !1100 ; 3 uses
  %i.m = udiv i64 %0, %i.i, !dbg !1101            ; 3 uses
  %2 = icmp ult i64 %i.m, %1, !dbg !1102
  %3 = sub nuw i64 %1, %i.m, !dbg !1102
  %i.n = sub nuw i64 %i.m, %1, !dbg !1102
  %.sroa.0.0.i.i3.i.i.i = select i1 %2, i64 %3, i64 %i.n, !dbg !1102 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1066
  store ptr %i.g, ptr %i.e, align 8, !noalias !1067
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  store ptr %i.f, ptr %i.o, align 8, !noalias !1067
  %.not.i.i.i6.i.i = icmp ugt i64 %.sroa.58.0.copyload.i.i, %i.j
  %or.cond.i.i.i = select i1 %i.k, i1 true, i1 %.not.i.i.i6.i.i, !dbg !1103
  br i1 %or.cond.i.i.i, label %bb.d, label %.preheader.i.i.i.i.i, !dbg !1103

.preheader.i.i.i.i.i:                             ; preds = %bb.c
  %i.p = icmp ult i64 %.sroa.58.0.copyload.i.i, %i.j, !dbg !1104
  br i1 %i.p, label %.lr.ph.i.i.i.i.i, label %_RNCINvMs0_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB8_17NeverShortCircuitTyyEE10wrap_mut_2B18_yNCINvNtNtNtBc_4iter8adapters3map8map_foldyB18_B18_NCINvNvNtNtNtB1D_6traits8iterator8Iterator10min_by_key3keyyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0E0NCINvNvB2p_6min_by4foldB18_INvB2n_7compareyyEE0E0E0B3m_.exit30.i.i.i.i.i, !dbg !1105

.lr.ph.i.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %_RNCINvMs0_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB8_17NeverShortCircuitTyyEE10wrap_mut_2B18_yNCINvNtNtNtBc_4iter8adapters3map8map_foldyB18_B18_NCINvNvNtNtNtB1D_6traits8iterator8Iterator10min_by_key3keyyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0E0NCINvNvB2p_6min_by4foldB18_INvB2n_7compareyyEE0E0E0B3m_.exit.i.i.i.i.i, !dbg !1105

_RNCINvMs0_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB8_17NeverShortCircuitTyyEE10wrap_mut_2B18_yNCINvNtNtNtBc_4iter8adapters3map8map_foldyB18_B18_NCINvNvNtNtNtB1D_6traits8iterator8Iterator10min_by_key3keyyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0E0NCINvNvB2p_6min_by4foldB18_INvB2n_7compareyyEE0E0E0B3m_.exit.i.i.i.i.i: ; preds = %_RNCINvMs0_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB8_17NeverShortCircuitTyyEE10wrap_mut_2B18_yNCINvNtNtNtBc_4iter8adapters3map8map_foldyB18_B18_NCINvNvNtNtNtB1D_6traits8iterator8Iterator10min_by_key3keyyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0E0NCINvNvB2p_6min_by4foldB18_INvB2n_7compareyyEE0E0E0B3m_.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.sroa.01.036.i.i.i.i.i = phi i64 [ %.sroa.0.0.i.i3.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.0.i.i6.i.i.i.i.i.i.i, %_RNCINvMs0_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB8_17NeverShortCircuitTyyEE10wrap_mut_2B18_yNCINvNtNtNtBc_4iter8adapters3map8map_foldyB18_B18_NCINvNvNtNtNtB1D_6traits8iterator8Iterator10min_by_key3keyyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0E0NCINvNvB2p_6min_by4foldB18_INvB2n_7compareyyEE0E0E0B3m_.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.8.035.i.i.i.i.i = phi i64 [ %i.i, %.lr.ph.i.i.i.i.i ], [ %.sroa.3.0.i.i.i.i.i.i.i.i.i, %_RNCINvMs0_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB8_17NeverShortCircuitTyyEE10wrap_mut_2B18_yNCINvNtNtNtBc_4iter8adapters3map8map_foldyB18_B18_NCINvNvNtNtNtB1D_6traits8iterator8Iterator10min_by_key3keyyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0E0NCINvNvB2p_6min_by4foldB18_INvB2n_7compareyyEE0E0E0B3m_.exit.i.i.i.i.i ] ; 2 uses
  %i.t = phi i64 [ %.sroa.58.0.copyload.i.i, %.lr.ph.i.i.i.i.i ], [ %i.u, %_RNCINvMs0_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB8_17NeverShortCircuitTyyEE10wrap_mut_2B18_yNCINvNtNtNtBc_4iter8adapters3map8map_foldyB18_B18_NCINvNvNtNtNtB1D_6traits8iterator8Iterator10min_by_key3keyyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0E0NCINvNvB2p_6min_by4foldB18_INvB2n_7compareyyEE0E0E0B3m_.exit.i.i.i.i.i ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1072), !dbg !1106
  call void @llvm.experimental.noalias.scope.decl(metadata !1073), !dbg !1107
  %i.u = add i64 %i.t, 1, !dbg !1108              ; 2 uses
  %.val5.i.i.i.i.i.i.i = load ptr, ptr %i.o, align 8, !dbg !1109, !alias.scope !1079, !noalias !1067, !nonnull !77, !noundef !77
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !dbg !1109, !alias.scope !1079, !noalias !1067, !nonnull !77, !noundef !77
  %i.v = load i64, ptr %.val.i.i.i.i.i.i.i, align 8, !dbg !1110, !noalias !1080, !noundef !77
  %i.w = udiv i64 %i.v, %i.t, !dbg !1111          ; 3 uses
  %i.x = load i64, ptr %.val5.i.i.i.i.i.i.i, align 8, !dbg !1112, !range !1081, !noalias !1080, !noundef !77 ; 3 uses
  %4 = icmp ult i64 %i.w, %i.x, !dbg !1113
  %5 = sub nuw i64 %i.x, %i.w, !dbg !1113
  %i.y = sub nuw i64 %i.w, %i.x, !dbg !1113
  %.sroa.0.0.i.i.i.i.i.i.i.i.i = select i1 %4, i64 %5, i64 %i.y, !dbg !1113 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1082
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1082
  store i64 %.sroa.01.036.i.i.i.i.i, ptr %i.d, align 8, !noalias !1083
  store i64 %.sroa.8.035.i.i.i.i.i, ptr %i.r, align 8, !noalias !1083
  store i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i, ptr %i.c, align 8, !noalias !1083
  store i64 %i.t, ptr %i.s, align 8, !noalias !1083
  %i.z = call noundef i8 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator10min_by_key7compareyyEINtB7_6FnOnceTRTyyEB29_EE9call_onceCs2mZqlW55729_12polars_utils(ptr noalias noundef nonnull %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c), !dbg !1114, !noalias !1084
  %i.aa = icmp slt i8 %i.z, 1, !dbg !1115         ; 2 uses
  %.sroa.3.0.i.i.i.i.i.i.i.i.i = select i1 %i.aa, i64 %.sroa.8.035.i.i.i.i.i, i64 %i.t, !dbg !1114 ; 2 uses
  %.sroa.0.0.i.i6.i.i.i.i.i.i.i = select i1 %i.aa, i64 %.sroa.01.036.i.i.i.i.i, i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i, !dbg !1114 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !1116, !noalias !1082
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !1116, !noalias !1082
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.u, %i.j, !dbg !1104
  br i1 %exitcond.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %_RNCINvMs0_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB8_17NeverShortCircuitTyyEE10wrap_mut_2B18_yNCINvNtNtNtBc_4iter8adapters3map8map_foldyB18_B18_NCINvNvNtNtNtB1D_6traits8iterator8Iterator10min_by_key3keyyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0E0NCINvNvB2p_6min_by4foldB18_INvB2n_7compareyyEE0E0E0B3m_.exit.i.i.i.i.i, !dbg !1105

._crit_edge.i.i.i.i.i:                            ; preds = %_RNCINvMs0_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB8_17NeverShortCircuitTyyEE10wrap_mut_2B18_yNCINvNtNtNtBc_4iter8adapters3map8map_foldyB18_B18_NCINvNvNtNtNtB1D_6traits8iterator8Iterator10min_by_key3keyyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0E0NCINvNvB2p_6min_by4foldB18_INvB2n_7compareyyEE0E0E0B3m_.exit.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1088), !dbg !1117
  call void @llvm.experimental.noalias.scope.decl(metadata !1089), !dbg !1118
  %.val5.i.i25.i.i.i.i.pre.i = load ptr, ptr %i.o, align 8, !dbg !1119, !alias.scope !1090, !noalias !1067
  %.val.i.i26.i.i.i.i.pre.i = load ptr, ptr %i.e, align 8, !dbg !1119, !alias.scope !1090, !noalias !1067
  %.pre.i = load i64, ptr %.val.i.i26.i.i.i.i.pre.i, align 8, !dbg !1120, !noalias !1091
  %.pre10.i = load i64, ptr %.val5.i.i25.i.i.i.i.pre.i, align 8, !dbg !1121, !range !1081, !noalias !1091
  br label %_RNCINvMs0_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB8_17NeverShortCircuitTyyEE10wrap_mut_2B18_yNCINvNtNtNtBc_4iter8adapters3map8map_foldyB18_B18_NCINvNvNtNtNtB1D_6traits8iterator8Iterator10min_by_key3keyyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0E0NCINvNvB2p_6min_by4foldB18_INvB2n_7compareyyEE0E0E0B3m_.exit30.i.i.i.i.i, !dbg !1122

_RNCINvMs0_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB8_17NeverShortCircuitTyyEE10wrap_mut_2B18_yNCINvNtNtNtBc_4iter8adapters3map8map_foldyB18_B18_NCINvNvNtNtNtB1D_6traits8iterator8Iterator10min_by_key3keyyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0E0NCINvNvB2p_6min_by4foldB18_INvB2n_7compareyyEE0E0E0B3m_.exit30.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i, %.preheader.i.i.i.i.i
  %i.ab = phi i64 [ %.pre10.i, %._crit_edge.i.i.i.i.i ], [ %1, %.preheader.i.i.i.i.i ], !dbg !1121 ; 3 uses
  %i.ac = phi i64 [ %.pre.i, %._crit_edge.i.i.i.i.i ], [ %0, %.preheader.i.i.i.i.i ], !dbg !1120
  %.sroa.8.0.lcssa47.i.i.i21.i.i = phi i64 [ %.sroa.3.0.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ %i.i, %.preheader.i.i.i.i.i ] ; 2 uses
  %.sroa.01.0.lcssa48.i.i.i20.i.i = phi i64 [ %.sroa.0.0.i.i6.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ %.sroa.0.0.i.i3.i.i.i, %.preheader.i.i.i.i.i ]
  %i.ad = udiv i64 %i.ac, %i.j, !dbg !1122        ; 3 uses
  %6 = icmp ult i64 %i.ad, %i.ab, !dbg !1123
  %7 = sub nuw i64 %i.ab, %i.ad, !dbg !1123
  %i.ae = sub nuw i64 %i.ad, %i.ab, !dbg !1123
  %.sroa.0.0.i.i.i.i27.i.i.i.i.i = select i1 %6, i64 %7, i64 %i.ae, !dbg !1123
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !1124
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1092
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1092
  store i64 %.sroa.01.0.lcssa48.i.i.i20.i.i, ptr %i.b, align 8, !noalias !1093
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.8.0.lcssa47.i.i.i21.i.i, ptr %i.ag, align 8, !noalias !1093
  store i64 %.sroa.0.0.i.i.i.i27.i.i.i.i.i, ptr %i.a, align 8, !noalias !1093
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.j, ptr %i.ah, align 8, !noalias !1093
  %i.ai = call noundef i8 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator10min_by_key7compareyyEINtB7_6FnOnceTRTyyEB29_EE9call_onceCs2mZqlW55729_12polars_utils(ptr noalias noundef nonnull %i.af, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a), !dbg !1125, !noalias !1084
  %i.aj = icmp slt i8 %i.ai, 1, !dbg !1126
  %.sroa.3.0.i.i.i.i28.i.i.i.i.i = select i1 %i.aj, i64 %.sroa.8.0.lcssa47.i.i.i21.i.i, i64 %i.j, !dbg !1125
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !1127, !noalias !1092
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !1127, !noalias !1092
  br label %bb.d, !dbg !1128

bb.d:                                             ; preds = %_RNCINvMs0_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB8_17NeverShortCircuitTyyEE10wrap_mut_2B18_yNCINvNtNtNtBc_4iter8adapters3map8map_foldyB18_B18_NCINvNvNtNtNtB1D_6traits8iterator8Iterator10min_by_key3keyyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0E0NCINvNvB2p_6min_by4foldB18_INvB2n_7compareyyEE0E0E0B3m_.exit30.i.i.i.i.i, %bb.c
  %.sroa.8.1.pn.i.i.i.i.i = phi i64 [ %.sroa.3.0.i.i.i.i28.i.i.i.i.i, %_RNCINvMs0_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB8_17NeverShortCircuitTyyEE10wrap_mut_2B18_yNCINvNtNtNtBc_4iter8adapters3map8map_foldyB18_B18_NCINvNvNtNtNtB1D_6traits8iterator8Iterator10min_by_key3keyyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0E0NCINvNvB2p_6min_by4foldB18_INvB2n_7compareyyEE0E0E0B3m_.exit30.i.i.i.i.i ], [ %i.i, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !1129, !noalias !1066
  br label %bb.e, !dbg !1130

bb.e:                                             ; preds = %bb.b, %bb.d
  %.sroa.0.0 = phi i64 [ %., %bb.b ], [ %.sroa.8.1.pn.i.i.i.i.i, %bb.d ], !dbg !1131
  ret i64 %.sroa.0.0, !dbg !1130
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCs2mZqlW55729_12polars_utils6pl_str18unique_column_name(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1132 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !1174
  %i.e = atomicrmw add ptr @_RNvNvNtCs2mZqlW55729_12polars_utils6pl_str18unique_column_name7COUNTER, i64 1 monotonic, align 8, !dbg !1175
  store i64 %i.e, ptr %i.d, align 8, !dbg !1175
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !1176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) @13, i64 24, i1 false), !dbg !1177
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !1178
  store ptr %i.d, ptr %i.b, align 8, !dbg !1178
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !1178
  store ptr @_RNvXsd_NtNtNtCscgRAwXFJnXP_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8, !dbg !1178
  %i.f = invoke noundef zeroext i1 @_RNvXs11_Cs7VARH73bmU_11compact_strNtB6_13CompactStringNtNtCscgRAwXFJnXP_4core3fmt5Write9write_fmt(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull @14, ptr noundef nonnull %i.b)
          to label %bb.d unwind label %bb.b, !dbg !1179

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 23, !dbg !1180
  %i.i = load i8, ptr %i.h, align 1, !dbg !1180, !range !207, !alias.scope !1173, !noundef !77
  %i.j = icmp eq i8 %i.i, -40, !dbg !1181
  br i1 %i.j, label %bb.c, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEBK_.exit, !dbg !1181, !prof !188

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEBK_.exit unwind label %bb.f, !dbg !1182

bb.d:                                             ; preds = %bb.a
  br i1 %i.f, label %bb.e, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs2mZqlW55729_12polars_utils.exit, !dbg !1183, !prof !188

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @12, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #24
          to label %.noexc unwind label %bb.b, !dbg !1184

.noexc:                                           ; preds = %bb.e
  unreachable

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs2mZqlW55729_12polars_utils.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !1185
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !1186
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !1187
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !1188
  ret void, !dbg !1189

bb.f:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #20, !dbg !1190
  unreachable, !dbg !1190

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEBK_.exit: ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.g, !dbg !1190
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull ptr @_RNvXNtNtCs2mZqlW55729_12polars_utils6pl_str12__python_implNtB4_10PlSmallStrNtNtCsbm5zPlkZccl_4pyo310conversion12IntoPyObject13into_pyobject(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1191 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 23, !dbg !1217
  %i.b = load i8, ptr %i.a, align 1, !dbg !1217, !range !207, !alias.scope !1215, !noundef !77 ; 4 uses
  %i.c = icmp ugt i8 %i.b, -41, !dbg !1218
  br i1 %i.c, label %bb.c, label %bb.b, !dbg !1218

bb.b:                                             ; preds = %bb.a
  %i.d = add i8 %i.b, 64, !dbg !1219
  %i.e = tail call i8 @llvm.umin.i8(i8 %i.d, i8 24), !dbg !1220
  %.sroa.0.0.i.i = zext nneg i8 %i.e to i64, !dbg !1220
  br label %bb.f, !dbg !1221

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !dbg !1222, !alias.scope !1215, !noundef !77
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1223
  %i.h = load i64, ptr %i.g, align 8, !dbg !1223, !alias.scope !1215, !noundef !77
  br label %bb.f, !dbg !1224

bb.d:                                             ; preds = %bb.f
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = icmp eq i8 %i.b, -40, !dbg !1225
  br i1 %i.j, label %bb.e, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEBK_.exit, !dbg !1225, !prof !188

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEBK_.exit unwind label %bb.i, !dbg !1226

bb.f:                                             ; preds = %bb.c, %bb.b
  %.sroa.01.0.i = phi i64 [ %i.h, %bb.c ], [ %.sroa.0.0.i.i, %bb.b ], !dbg !1227
  %.sroa.0.0.i = phi ptr [ %i.f, %bb.c ], [ %0, %bb.b ], !dbg !1228
  %i.k = invoke noundef nonnull ptr @_RNvMNtNtCsbm5zPlkZccl_4pyo35types6stringNtB2_8PyString3new(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %.sroa.01.0.i)
          to label %bb.g unwind label %bb.d, !dbg !1229

bb.g:                                             ; preds = %bb.f
  %i.l = icmp eq i8 %i.b, -40, !dbg !1230
  br i1 %i.l, label %bb.h, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEBK_.exit1, !dbg !1230, !prof !188

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %0), !dbg !1231
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEBK_.exit1, !dbg !1231

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEBK_.exit1: ; preds = %bb.g, %bb.h
  ret ptr %i.k, !dbg !1232

bb.i:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #20, !dbg !1233
  unreachable, !dbg !1233

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEBK_.exit: ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.i, !dbg !1233
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXNvNtCs2mZqlW55729_12polars_utils10slice_enums_1__NtB7_5SliceNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB15_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !1234 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 18), !dbg !1236
  ret i1 %i.a, !dbg !1237
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXs0_NvXNvNtCs2mZqlW55729_12polars_utils10slice_enums_1__NtBd_5SliceNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtB8_9___VisitorNtB1b_7Visitor10visit_enumNtB2_14___FieldVisitorB2m_9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !1238 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 16), !dbg !1240
  ret i1 %i.a, !dbg !1241
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtCs2mZqlW55729_12polars_utils10slice_enumNtB5_5SliceINtNtCscgRAwXFJnXP_4core7convert4FromTxjEE4from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1242 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = icmp sgt i64 %1, -1, !dbg !1251
  br i1 %i.b, label %.split, label %bb.b, !dbg !1251

bb.b:                                             ; preds = %bb.a
  %i.c = sub i64 0, %1, !dbg !1252                ; 2 uses
  %i.d = icmp sgt i64 %i.c, -1, !dbg !1253
  br i1 %i.d, label %.split, label %.split2, !dbg !1253

.split2:                                          ; preds = %bb.b
  call void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #24, !dbg !1254
  unreachable

.split:                                           ; preds = %bb.b, %bb.a
  %.sink = phi i64 [ %1, %bb.a ], [ %i.c, %bb.b ]
  %storemerge = phi i64 [ 0, %bb.a ], [ 1, %bb.b ], !dbg !1255
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1255
  store i64 %.sink, ptr %i.e, align 8, !dbg !1255
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !1255
  store i64 %2, ptr %i.f, align 8, !dbg !1255
  store i64 %storemerge, ptr %0, align 8, !dbg !1255
  ret void, !dbg !1256
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtNtCs2mZqlW55729_12polars_utils6pl_str12__python_implNtB7_10PlSmallStrNtNtCsbm5zPlkZccl_4pyo310conversion12FromPyObject7extract(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1257 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [72 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !1354
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !1384, !noalias !1346
  call void @_RINvNvMsb_NtCsbm5zPlkZccl_4pyo38instanceINtB8_8BorrowedpE4cast5innerNtNtNtBa_5types6string8PyStringECs2mZqlW55729_12polars_utils(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b, ptr noundef nonnull %1), !dbg !1385, !noalias !1346
  %i.d = load ptr, ptr %i.b, align 8, !dbg !1386, !noalias !1346, !noundef !77 ; 2 uses
  %.not.i = icmp eq ptr %i.d, null, !dbg !1386
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !1387
  %i.f = load ptr, ptr %i.e, align 8, !dbg !1387, !noalias !1346, !nonnull !77, !noundef !77 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !1388, !noalias !1346
  br i1 %.not.i, label %_RNvXs7_NtCsbm5zPlkZccl_4pyo38pybackedNtB5_11PyBackedStrNtNtB7_10conversion12FromPyObject7extract.exit, label %_RNvXs7_NtCsbm5zPlkZccl_4pyo38pybackedNtB5_11PyBackedStrNtNtB7_10conversion12FromPyObject7extract.exit.thread, !dbg !1389

_RNvXs7_NtCsbm5zPlkZccl_4pyo38pybackedNtB5_11PyBackedStrNtNtB7_10conversion12FromPyObject7extract.exit.thread: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !1390
end_hunk_0
begin_hunk_1_@_RNvXs5_NtNtCscgRAwXFJnXP_4core3num5errorNtB5_15TryFromIntErrorNtNtB9_3fmt5Debug3fmt:bb.a

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsK_NtCscgRAwXFJnXP_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt(ptr noalias nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #6 !dbg !1464 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 5), !dbg !1468
  ret i1 %i.a, !dbg !1469
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull ptr @_RNvXs_NtNtCs2mZqlW55729_12polars_utils6pl_str12__python_implRNtB6_10PlSmallStrNtNtCsbm5zPlkZccl_4pyo310conversion12IntoPyObject13into_pyobject(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1470 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 23, !dbg !1488
  %i.b = load i8, ptr %i.a, align 1, !dbg !1488, !range !207, !alias.scope !1486, !noundef !77 ; 2 uses
  %i.c = icmp ugt i8 %i.b, -41, !dbg !1489
  br i1 %i.c, label %bb.c, label %bb.b, !dbg !1489

bb.b:                                             ; preds = %bb.a
  %i.d = add i8 %i.b, 64, !dbg !1490
  %i.e = tail call i8 @llvm.umin.i8(i8 %i.d, i8 24), !dbg !1491
  %.sroa.0.0.i.i = zext nneg i8 %i.e to i64, !dbg !1491
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit, !dbg !1492

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !dbg !1493, !alias.scope !1486, !noundef !77
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1494
  %i.h = load i64, ptr %i.g, align 8, !dbg !1494, !alias.scope !1486, !noundef !77
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit, !dbg !1495

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit: ; preds = %bb.b, %bb.c
  %.sroa.01.0.i = phi i64 [ %i.h, %bb.c ], [ %.sroa.0.0.i.i, %bb.b ], !dbg !1496
  %.sroa.0.0.i = phi ptr [ %i.f, %bb.c ], [ %0, %bb.b ], !dbg !1497
  %i.i = tail call noundef nonnull ptr @_RNvMNtNtCsbm5zPlkZccl_4pyo35types6stringNtB2_8PyString3new(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %.sroa.01.0.i), !dbg !1498
  ret ptr %i.i, !dbg !1499
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #8

; Function Attrs: nonlazybind uwtable
declare hidden noundef i32 @_RNvXs_Cs61SnqI2q75L_7memmap2RNtNtCsh8eZTKRCwoO_3std2fs4FileNtB4_13MmapAsRawDesc11as_raw_descCs2mZqlW55729_12polars_utils(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCs61SnqI2q75L_7memmap22osNtB2_9MmapInner18map_copy_read_only(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), i64 noundef, i32 noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCs61SnqI2q75L_7memmap22osNtB2_9MmapInner3map(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), i64 noundef, i32 noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvNtCs61SnqI2q75L_7memmap22os8file_len(i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvMs0_Cs61SnqI2q75L_7memmap2NtB5_11MmapOptions12validate_len(i64 noundef) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare noundef nonnull ptr @_RINvMs5_NtNtCsh8eZTKRCwoO_3std2io5errorNtB6_5Error3newReEBa_(i8 noundef range(i8 0, 42), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare hidden noundef range(i8 -1, 2) i8 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator10min_by_key7compareyyEINtB7_6FnOnceTRTyyEB29_EE9call_onceCs2mZqlW55729_12polars_utils(ptr noalias noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2mZqlW55729_12polars_utils(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque7StealerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2mZqlW55729_12polars_utils(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2mZqlW55729_12polars_utils(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque7StealerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2mZqlW55729_12polars_utils(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nonlazybind uwtable
declare hidden noundef i8 @_RNvXs_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB4_7WrappedhjNCNvMs_NtCs2mZqlW55729_12polars_utils18cardinality_sketchNtB12_17CardinalitySketch7combine0EINtNtB6_8function5FnMutTjEE8call_mutB14_(ptr noalias noundef align 8 dereferenceable(16), i64 noundef) unnamed_addr #0

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #13

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterReEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldB1s_TB1s_uEuNCINvXsb_NtCs7tGzs63DEEy_9hashbrown3setINtB2S_7HashSetB1s_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtB1A_7collect6ExtendB1s_E6extendBP_E0NCINvNvB1w_8for_each4callB2B_NCINvXs1l_NtB2U_3mapINtB5K_7HashMapB1s_uB3F_EIB4t_B2B_E6extendINtB2f_3MapBP_B2J_EE0E0E0ECs2mZqlW55729_12polars_utils(ptr noundef nonnull, ptr noundef, ptr noalias noundef align 8 dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB6_8IntoIterINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque7StealerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB2y_8adapters3map8map_foldBX_NtNtB1P_8registry10ThreadInfouNvMs5_B47_B45_3newNCINvNvB2s_8for_each4callB45_NCINvMsj_B8_INtB8_3VecB45_E14extend_trustedINtB3y_3MapBI_B4z_EE0E0E0ECs2mZqlW55729_12polars_utils(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NvNtNtNtCscgRAwXFJnXP_4core4iter6traits7collect14default_extendTINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEIB17_INtB1G_7StealerB2q_EEEINtB4_10SpecExtendINtNtNtBa_8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvMs4_NtB2u_8registryNtB4S_8Registry3newNtB4S_12DefaultSpawnE0EE6extendCs2mZqlW55729_12polars_utils(ptr noalias noundef align 8 dereferenceable(48), ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NvNtNtNtCscgRAwXFJnXP_4core4iter6traits7collect14default_extendTINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEIB17_INtB1G_7StealerB2q_EEEINtB4_10SpecExtendINtNtNtBa_8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvMs4_NtB2u_8registryNtB4S_8Registry3newNtB4S_12DefaultSpawnEs_0EE6extendCs2mZqlW55729_12polars_utils(ptr noalias noundef align 8 dereferenceable(48), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs4_NtCs8RCgFHiPUyX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefE8new_lifoCs2mZqlW55729_12polars_utils(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs4_NtCs8RCgFHiPUyX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefE8new_fifoCs2mZqlW55729_12polars_utils(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter6traits7collectTINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEIBQ_INtB1p_7StealerB29_EEEINtB5_6ExtendTB1m_B2U_EE20extend_one_uncheckedCs2mZqlW55729_12polars_utils(ptr noalias noundef align 8 dereferenceable(48), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter6traits7collectTINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEIBQ_INtB1p_7StealerB29_EEEINtB5_6ExtendTB1m_B2U_EE10extend_oneCs2mZqlW55729_12polars_utils(ptr noalias noundef align 8 dereferenceable(48), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.uadd.sat.i64(i64, i64) #15

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #15

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log.f32(float) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fptoui.sat.i64.f64(double) #15

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsd_NtNtNtCscgRAwXFJnXP_4core3fmt3num3impyNtB9_7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs11_Cs7VARH73bmU_11compact_strNtB6_13CompactStringNtNtCscgRAwXFJnXP_4core3fmt5Write9write_fmt(ptr noalias noundef align 8 dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef ptr @_RNvNtNtNtCs7VARH73bmU_11compact_str4repr4heap15inline_capacity5alloc(i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_Py_DecRef(ptr noundef) unnamed_addr #7

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvNvXsA_NtCsbm5zPlkZccl_4pyo38instanceINtB7_2PypENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull) unnamed_addr #17

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvMNtNtCsbm5zPlkZccl_4pyo35types6stringNtB2_8PyString3new(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RINvCs7VARH73bmU_11compact_str20unwrap_with_msg_failNtB2_12ReserveErrorEB2_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #16

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #17

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRuNtB6_5Debug3fmtCs2mZqlW55729_12polars_utils(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNvMsb_NtCsbm5zPlkZccl_4pyo38instanceINtB8_8BorrowedpE4cast5innerNtNtNtBa_5types6string8PyStringECs2mZqlW55729_12polars_utils(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_Py_IncRef(ptr noundef) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs6_NtCsbm5zPlkZccl_4pyo38pybackedNtB5_11PyBackedStrINtNtCscgRAwXFJnXP_4core7convert7TryFromINtNtB7_8instance5BoundNtNtNtB7_5types6string8PyStringEE8try_from(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs1_NtNtCsbm5zPlkZccl_4pyo33err10cast_errorNtB7_5PyErrINtNtCscgRAwXFJnXP_4core7convert4FromNtB5_9CastErrorE4from(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fadd.v2f64(double, <2 x double>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #15

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #19 = { noinline }
attributes #20 = { cold noreturn nounwind }
attributes #21 = { nounwind }
attributes #22 = { cold }
attributes #23 = { noinline noreturn }
attributes #24 = { noreturn }

!llvm.module.flags = !{!68, !69, !70, !71}
!llvm.ident = !{!72}
!llvm.dbg.cu = !{!0}

!0 = distinct !DICompileUnit(language: DW_LANG_Rust, file: !73, producer: "clang LLVM (rustc version 1.96.0-nightly (48cc71ee8 2026-03-31))", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!1 = distinct !DISubprogram(name: "get_len<&std::fs::File>", linkageName: "_RINvMs0_Cs61SnqI2q75L_7memmap2NtB6_11MmapOptions7get_lenRNtNtCsh8eZTKRCwoO_3std2fs4FileECs2mZqlW55729_12polars_utils", scope: !76, file: !74, line: 265, type: !78, scopeLine: 265, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!2 = distinct !DILexicalBlock(scope: !1, file: !74, line: 266, column: 47)
!3 = distinct !DILexicalBlock(scope: !1, file: !74, line: 269, column: 13)
!4 = distinct !DISubprogram(name: "branch<u64, std::io::error::Error>", linkageName: "_RNvXsp_NtCscgRAwXFJnXP_4core6resultINtB5_6ResultyNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCs2mZqlW55729_12polars_utils", scope: !83, file: !80, line: 2172, type: !78, scopeLine: 2172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!5 = distinct !DILexicalBlock(scope: !1, file: !74, line: 266, column: 9)
!6 = distinct !DILexicalBlock(scope: !3, file: !74, line: 270, column: 13)
!7 = distinct !DISubprogram(name: "drop_in_place<alloc::vec::Vec<crossbeam_deque::deque::Stealer<rayon_core::job::JobRef>, alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque7StealerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEECs2mZqlW55729_12polars_utils", scope: !90, file: !89, line: 810, type: !78, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!8 = distinct !DISubprogram(name: "drop_in_place<alloc::raw_vec::RawVec<crossbeam_deque::deque::Stealer<rayon_core::job::JobRef>, alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque7StealerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEECs2mZqlW55729_12polars_utils", scope: !90, file: !89, line: 810, type: !78, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!9 = distinct !DISubprogram(name: "drop_in_place<pyo3::pybacked::PyBackedStr>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsbm5zPlkZccl_4pyo38pybacked11PyBackedStrECs2mZqlW55729_12polars_utils", scope: !90, file: !89, line: 810, type: !91, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!10 = distinct !DISubprogram(name: "{closure#1}", linkageName: "_RNCNKNvNtNtCsbm5zPlkZccl_4pyo38internal5state12ATTACH_COUNT0s_0Cs2mZqlW55729_12polars_utils", scope: !97, file: !92, line: 71, type: !91, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!11 = distinct !DISubprogram(name: "call_once<pyo3::internal::state::ATTACH_COUNT::{constant#0}::{closure_env#1}, (core::option::Option<&mut core::option::Option<core::cell::Cell<isize>>>)>", linkageName: "_RNvYNCNKNvNtNtCsbm5zPlkZccl_4pyo38internal5state12ATTACH_COUNT0s_0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB19_6option6OptionQIB1O_INtNtB19_4cell4CelliEEEEE9call_onceCs2mZqlW55729_12polars_utils", scope: !101, file: !98, line: 250, type: !78, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!12 = distinct !DISubprogram(name: "try_with<core::cell::Cell<isize>, pyo3::internal::state::thread_is_attached::{closure_env#0}, bool>", linkageName: "_RINvMs2_NtNtCsh8eZTKRCwoO_3std6thread5localINtB6_8LocalKeyINtNtCscgRAwXFJnXP_4core4cell4CelliEE8try_withNCNvNtNtCsbm5zPlkZccl_4pyo38internal5state18thread_is_attached0bECs2mZqlW55729_12polars_utils", scope: !106, file: !102, line: 457, type: !91, scopeLine: 457, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!13 = distinct !DISubprogram(name: "thread_is_attached", linkageName: "_RNvNtNtCsbm5zPlkZccl_4pyo38internal5state18thread_is_attached", scope: !95, file: !107, line: 38, type: !78, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!14 = distinct !DISubprogram(name: "inner", linkageName: "_RNvNvXsA_NtCsbm5zPlkZccl_4pyo38instanceINtB7_2PypENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop5inner", scope: !111, file: !108, line: 2287, type: !78, scopeLine: 2287, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!15 = distinct !DISubprogram(name: "drop<pyo3::types::string::PyString>", linkageName: "_RNvXsA_NtCsbm5zPlkZccl_4pyo38instanceINtB5_2PyNtNtNtB7_5types6string8PyStringENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2mZqlW55729_12polars_utils", scope: !110, file: !108, line: 2284, type: !91, scopeLine: 2284, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!16 = distinct !DISubprogram(name: "drop_in_place<pyo3::instance::Py<pyo3::types::string::PyString>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtNtBL_5types6string8PyStringEECs2mZqlW55729_12polars_utils", scope: !90, file: !89, line: 810, type: !91, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!17 = distinct !DILexicalBlock(scope: !12, file: !102, line: 461, column: 9)
!18 = distinct !DISubprogram(name: "{closure#0}", linkageName: "_RNCNvNtNtCsbm5zPlkZccl_4pyo38internal5state18thread_is_attached0Cs2mZqlW55729_12polars_utils", scope: !112, file: !107, line: 39, type: !91, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!19 = distinct !DISubprogram(name: "unwrap_or<bool, std::thread::local::AccessError>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultbNtNtNtCsh8eZTKRCwoO_3std6thread5local11AccessErrorE9unwrap_orCs2mZqlW55729_12polars_utils", scope: !88, file: !80, line: 1590, type: !78, scopeLine: 1590, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!20 = distinct !DISubprogram(name: "Py_DECREF", linkageName: "_RNvNtCsfueLBegRnmY_8pyo3_ffi8refcount9Py_DECREF", scope: !116, file: !114, line: 255, type: !78, scopeLine: 255, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!21 = distinct !DISubprogram(name: "lt", linkageName: "_RNvXsU_NtNtCscgRAwXFJnXP_4core3cmp5implsjNtB7_10PartialOrd2lt", scope: !125, file: !122, line: 1917, type: !78, scopeLine: 1917, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!22 = distinct !DISubprogram(name: "spec_next<usize>", linkageName: "_RNvXs3_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtB5_17RangeIteratorImpl9spec_nextCs2mZqlW55729_12polars_utils", scope: !128, file: !126, line: 780, type: !78, scopeLine: 780, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!23 = distinct !DISubprogram(name: "next<usize>", linkageName: "_RNvXs4_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits8iterator8Iterator4nextCs2mZqlW55729_12polars_utils", scope: !129, file: !126, line: 865, type: !78, scopeLine: 865, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!24 = distinct !DISubprogram(name: "{closure#0}<rayon_core::registry::DefaultSpawn>", linkageName: "_RNCINvMs4_NtCs4BcJZGCY6Ba_10rayon_core8registryNtB8_8Registry3newNtB8_12DefaultSpawnE0Cs2mZqlW55729_12polars_utils", scope: !138, file: !134, line: 251, type: !91, scopeLine: 251, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!25 = distinct !DISubprogram(name: "as_ref<alloc::sync::ArcInner<crossbeam_utils::cache_padded::CachePadded<crossbeam_deque::deque::Inner<rayon_core::job::JobRef>>>>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullINtNtCsgZ49sUHp3tW_5alloc4sync8ArcInnerINtNtCsi07hmUMJW4u_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque5InnerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEEE6as_refCs2mZqlW55729_12polars_utils", scope: !142, file: !140, line: 440, type: !78, scopeLine: 440, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!26 = distinct !DISubprogram(name: "inner<crossbeam_utils::cache_padded::CachePadded<crossbeam_deque::deque::Inner<rayon_core::job::JobRef>>, alloc::alloc::Global>", linkageName: "_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCsi07hmUMJW4u_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque5InnerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEE5innerCs2mZqlW55729_12polars_utils", scope: !146, file: !143, line: 2104, type: !78, scopeLine: 2104, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!27 = distinct !DISubprogram(name: "clone<crossbeam_utils::cache_padded::CachePadded<crossbeam_deque::deque::Inner<rayon_core::job::JobRef>>, alloc::alloc::Global>", linkageName: "_RNvXsu_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCsi07hmUMJW4u_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque5InnerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2mZqlW55729_12polars_utils", scope: !147, file: !143, line: 2382, type: !78, scopeLine: 2382, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!28 = distinct !DISubprogram(name: "stealer<rayon_core::job::JobRef>", linkageName: "_RNvMs4_NtCs8RCgFHiPUyX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefE7stealerCs2mZqlW55729_12polars_utils", scope: !151, file: !148, line: 278, type: !78, scopeLine: 278, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!29 = distinct !DILexicalBlock(scope: !24, file: !134, line: 252, column: 17)
!30 = distinct !DISubprogram(name: "atomic_add<usize, usize>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core4sync6atomic10atomic_addjjECs2mZqlW55729_12polars_utils", scope: !154, file: !152, line: 3933, type: !78, scopeLine: 3933, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!31 = distinct !DISubprogram(name: "fetch_add", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE9fetch_add", scope: !155, file: !152, line: 3160, type: !78, scopeLine: 3160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!32 = distinct !DILexicalBlock(scope: !27, file: !143, line: 2394, column: 9)
!33 = distinct !DISubprogram(name: "unchecked_add", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj13unchecked_add", scope: !158, file: !156, line: 886, type: !78, scopeLine: 886, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!34 = distinct !DISubprogram(name: "forward_unchecked", linkageName: "_RNvXsF_NtNtCscgRAwXFJnXP_4core4iter5rangejNtB5_4Step17forward_unchecked", scope: !159, file: !126, line: 212, type: !78, scopeLine: 212, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!35 = distinct !DILexicalBlock(scope: !22, file: !126, line: 782, column: 13)
!36 = distinct !DISubprogram(name: "{closure#0}<(crossbeam_deque::deque::Worker<rayon_core::job::JobRef>, crossbeam_deque::deque::Stealer<rayon_core::job::JobRef>), core::iter::traits::collect::default_extend::unchecked_extender::{closure_env#0}<(alloc::vec::Vec<crossbeam_deque::deque::Worker<rayon_core::job::JobRef>, alloc::alloc::Global>, alloc::vec::Vec<crossbeam_deque::deque::Stealer<rayon_core::job::JobRef>, alloc::alloc::Global>), (crossbeam_deque::deque::Worker<rayon_core::job::JobRef>, crossbeam_deque::deque::Stealer<rayon_core::job::JobRef>)>>", linkageName: "_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtB1j_7StealerB23_EENCINvNvNtBa_7collect14default_extend18unchecked_extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecB1g_EIB40_B2J_EEB1f_E0E0Cs2mZqlW55729_12polars_utils", scope: !161, file: !130, line: 884, type: !91, scopeLine: 884, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!37 = distinct !DILexicalBlock(scope: !29, file: !134, line: 258, column: 17)
!38 = distinct !DISubprogram(name: "{closure#0}<(alloc::vec::Vec<crossbeam_deque::deque::Worker<rayon_core::job::JobRef>, alloc::alloc::Global>, alloc::vec::Vec<crossbeam_deque::deque::Stealer<rayon_core::job::JobRef>, alloc::alloc::Global>), (crossbeam_deque::deque::Worker<rayon_core::job::JobRef>, crossbeam_deque::deque::Stealer<rayon_core::job::JobRef>)>", linkageName: "_RNCINvNvNtNtNtCscgRAwXFJnXP_4core4iter6traits7collect14default_extend18unchecked_extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEIB1r_INtB20_7StealerB2K_EEETB1X_B3w_EE0Cs2mZqlW55729_12polars_utils", scope: !165, file: !162, line: 571, type: !91, scopeLine: 571, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!39 = distinct !DISubprogram(name: "{closure#0}<(crossbeam_deque::deque::Worker<rayon_core::job::JobRef>, crossbeam_deque::deque::Stealer<rayon_core::job::JobRef>), core::iter::traits::collect::default_extend::extender::{closure_env#0}<(alloc::vec::Vec<crossbeam_deque::deque::Worker<rayon_core::job::JobRef>, alloc::alloc::Global>, alloc::vec::Vec<crossbeam_deque::deque::Stealer<rayon_core::job::JobRef>, alloc::alloc::Global>), (crossbeam_deque::deque::Worker<rayon_core::job::JobRef>, crossbeam_deque::deque::Stealer<rayon_core::job::JobRef>)>>", linkageName: "_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtB1j_7StealerB23_EENCINvNvNtBa_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecB1g_EIB3P_B2J_EEB1f_E0E0Cs2mZqlW55729_12polars_utils", scope: !161, file: !130, line: 884, type: !91, scopeLine: 884, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!40 = distinct !DISubprogram(name: "{closure#0}<(alloc::vec::Vec<crossbeam_deque::deque::Worker<rayon_core::job::JobRef>, alloc::alloc::Global>, alloc::vec::Vec<crossbeam_deque::deque::Stealer<rayon_core::job::JobRef>, alloc::alloc::Global>), (crossbeam_deque::deque::Worker<rayon_core::job::JobRef>, crossbeam_deque::deque::Stealer<rayon_core::job::JobRef>)>", linkageName: "_RNCINvNvNtNtNtCscgRAwXFJnXP_4core4iter6traits7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEIB1g_INtB1P_7StealerB2z_EEETB1M_B3l_EE0Cs2mZqlW55729_12polars_utils", scope: !166, file: !162, line: 560, type: !91, scopeLine: 560, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!41 = distinct !DISubprogram(name: "{closure#1}<rayon_core::registry::DefaultSpawn>", linkageName: "_RNCINvMs4_NtCs4BcJZGCY6Ba_10rayon_core8registryNtB8_8Registry3newNtB8_12DefaultSpawnEs_0Cs2mZqlW55729_12polars_utils", scope: !138, file: !134, line: 264, type: !91, scopeLine: 264, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!42 = distinct !DISubprogram(name: "as_ref<alloc::sync::ArcInner<crossbeam_utils::cache_padded::CachePadded<crossbeam_deque::deque::Inner<rayon_core::job::JobRef>>>>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullINtNtCsgZ49sUHp3tW_5alloc4sync8ArcInnerINtNtCsi07hmUMJW4u_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque5InnerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEEE6as_refCs2mZqlW55729_12polars_utils", scope: !142, file: !140, line: 440, type: !78, scopeLine: 440, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!43 = distinct !DISubprogram(name: "inner<crossbeam_utils::cache_padded::CachePadded<crossbeam_deque::deque::Inner<rayon_core::job::JobRef>>, alloc::alloc::Global>", linkageName: "_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCsi07hmUMJW4u_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque5InnerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEE5innerCs2mZqlW55729_12polars_utils", scope: !146, file: !143, line: 2104, type: !78, scopeLine: 2104, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!44 = distinct !DISubprogram(name: "clone<crossbeam_utils::cache_padded::CachePadded<crossbeam_deque::deque::Inner<rayon_core::job::JobRef>>, alloc::alloc::Global>", linkageName: "_RNvXsu_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCsi07hmUMJW4u_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque5InnerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2mZqlW55729_12polars_utils", scope: !147, file: !143, line: 2382, type: !78, scopeLine: 2382, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!45 = distinct !DISubprogram(name: "stealer<rayon_core::job::JobRef>", linkageName: "_RNvMs4_NtCs8RCgFHiPUyX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefE7stealerCs2mZqlW55729_12polars_utils", scope: !151, file: !148, line: 278, type: !78, scopeLine: 278, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!46 = distinct !DILexicalBlock(scope: !41, file: !134, line: 265, column: 17)
!47 = distinct !DISubprogram(name: "atomic_add<usize, usize>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core4sync6atomic10atomic_addjjECs2mZqlW55729_12polars_utils", scope: !154, file: !152, line: 3933, type: !78, scopeLine: 3933, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!48 = distinct !DISubprogram(name: "fetch_add", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE9fetch_add", scope: !155, file: !152, line: 3160, type: !78, scopeLine: 3160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!49 = distinct !DILexicalBlock(scope: !44, file: !143, line: 2394, column: 9)
!50 = distinct !DILexicalBlock(scope: !46, file: !134, line: 266, column: 17)
!51 = distinct !DISubprogram(name: "drop", linkageName: "_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec15set_len_on_dropNtB4_12SetLenOnDropNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop", scope: !170, file: !167, line: 30, type: !91, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!52 = distinct !DISubprogram(name: "drop_in_place<alloc::vec::set_len_on_drop::SetLenOnDrop>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsgZ49sUHp3tW_5alloc3vec15set_len_on_drop12SetLenOnDropECs2mZqlW55729_12polars_utils", scope: !90, file: !89, line: 810, type: !91, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!53 = distinct !DISubprogram(name: "default<alloc::vec::Vec<crossbeam_deque::deque::Worker<rayon_core::job::JobRef>, alloc::alloc::Global>, alloc::vec::Vec<crossbeam_deque::deque::Stealer<rayon_core::job::JobRef>, alloc::alloc::Global>>", linkageName: "_RNvXse_NtCscgRAwXFJnXP_4core5tupleTINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEIBy_INtB17_7StealerB1R_EEENtNtB7_7default7Default7defaultCs2mZqlW55729_12polars_utils", scope: !181, file: !179, line: 126, type: !78, scopeLine: 126, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!54 = distinct !DISubprogram(name: "min<usize>", linkageName: "_RNvYjNtNtCscgRAwXFJnXP_4core3cmp3Ord3minCs2mZqlW55729_12polars_utils", scope: !189, file: !122, line: 1073, type: !78, scopeLine: 1073, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!55 = distinct !DISubprogram(name: "max<usize>", linkageName: "_RNvYjNtNtCscgRAwXFJnXP_4core3cmp3Ord3maxCs2mZqlW55729_12polars_utils", scope: !189, file: !122, line: 1034, type: !78, scopeLine: 1034, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!56 = distinct !DISubprogram(name: "drop", linkageName: "_RNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB5_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop", scope: !206, file: !202, line: 776, type: !78, scopeLine: 776, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!57 = distinct !DISubprogram(name: "drop_in_place<compact_str::repr::Repr>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs7VARH73bmU_11compact_str4repr4ReprECs2mZqlW55729_12polars_utils", scope: !90, file: !89, line: 810, type: !78, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!58 = distinct !DISubprogram(name: "drop_in_place<compact_str::CompactString>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCs7VARH73bmU_11compact_str13CompactStringECs2mZqlW55729_12polars_utils", scope: !90, file: !89, line: 810, type: !78, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!59 = distinct !DISubprogram(name: "drop_in_place<polars_utils::pl_str::PlSmallStr>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEBK_", scope: !90, file: !89, line: 810, type: !78, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!60 = distinct !DISubprogram(name: "last_byte", linkageName: "_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr9last_byte", scope: !205, file: !202, line: 609, type: !78, scopeLine: 609, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!61 = distinct !DISubprogram(name: "as_slice", linkageName: "_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice", scope: !205, file: !202, line: 355, type: !78, scopeLine: 355, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!62 = distinct !DILexicalBlock(scope: !61, file: !202, line: 357, column: 9)
!63 = distinct !DILexicalBlock(scope: !62, file: !202, line: 358, column: 9)
!64 = distinct !DISubprogram(name: "wrapping_sub", linkageName: "_RNvMs4_NtCscgRAwXFJnXP_4core3numh12wrapping_sub", scope: !212, file: !156, line: 2547, type: !78, scopeLine: 2547, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!65 = distinct !DISubprogram(name: "min<usize>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3cmp3minjECs2mZqlW55729_12polars_utils", scope: !123, file: !122, line: 1575, type: !78, scopeLine: 1575, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!66 = distinct !DILexicalBlock(scope: !63, file: !202, line: 364, column: 9)
!67 = distinct !DILexicalBlock(scope: !66, file: !202, line: 368, column: 9)
!68 = !{i32 8, !"PIC Level", i32 2}
!69 = !{i32 2, !"RtLibUseGOT", i32 1}
!70 = !{i32 7, !"Dwarf Version", i32 4}
!71 = !{i32 2, !"Debug Info Version", i32 3}
!72 = !{!"rustc version 1.96.0-nightly (48cc71ee8 2026-03-31)"}
!73 = !DIFile(filename: "crates/polars-utils/src/lib.rs/@/polars_utils.1b9d48609f1572cb-cgu.06", directory: "/opt-bench/work/pola-rs/polars")
!74 = !DIFile(filename: "src/lib.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/memmap2-0.9.11", checksumkind: CSK_MD5, checksum: "bcdf74a411aa4e676d0037c05ee788ef")
!75 = !DINamespace(name: "memmap2", scope: null)
!76 = !DINamespace(name: "MmapOptions", scope: !75)
!77 = !{}
!78 = !DISubroutineType(types: !77)
!79 = !{i64 0, i64 2}
!80 = !DIFile(filename: "library/core/src/result.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "7ebc974a4b69a504d7e902d792c422dd")
!81 = !DINamespace(name: "core", scope: null)
!82 = !DINamespace(name: "result", scope: !81)
!83 = !DINamespace(name: "{impl#27}", scope: !82)
!84 = !DIFile(filename: "crates/polars-utils/src/lib.rs", directory: "/opt-bench/work/pola-rs/polars", checksumkind: CSK_MD5, checksum: "166f19075a2797604bb6b50c0b859353")
!85 = !DILexicalBlockFile(scope: !3, file: !84, discriminator: 0)
!86 = !DILexicalBlockFile(scope: !6, file: !84, discriminator: 0)
!87 = !{i8 0, i8 2}
!88 = !DINamespace(name: "Result", scope: !82)
!89 = !DIFile(filename: "library/core/src/ptr/mod.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "e257ba3fa91f9f150d8872ddddab6def")
!90 = !DINamespace(name: "ptr", scope: !81)
!91 = !DISubroutineType(cc: DW_CC_nocall, types: !77)
!92 = !DIFile(filename: "library/std/src/sys/thread_local/native/mod.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "f45b912659b967b327e1af351608d593")
!93 = !DINamespace(name: "pyo3", scope: null)
!94 = !DINamespace(name: "internal", scope: !93)
!95 = !DINamespace(name: "state", scope: !94)
!96 = !DINamespace(name: "ATTACH_COUNT", scope: !95)
!97 = !DINamespace(name: "{constant#0}", scope: !96)
!98 = !DIFile(filename: "library/core/src/ops/function.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "7165aec212fc528edf645f7f5c1c91bb")
!99 = !DINamespace(name: "ops", scope: !81)
!100 = !DINamespace(name: "function", scope: !99)
!101 = !DINamespace(name: "FnOnce", scope: !100)
!102 = !DIFile(filename: "library/std/src/thread/local.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "a9256a1d70f734e1147910659b28fa84")
!103 = !DINamespace(name: "std", scope: null)
!104 = !DINamespace(name: "thread", scope: !103)
!105 = !DINamespace(name: "local", scope: !104)
!106 = !DINamespace(name: "LocalKey", scope: !105)
!107 = !DIFile(filename: "src/internal/state.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/pyo3-0.29.0", checksumkind: CSK_MD5, checksum: "61078dcb539a5195ea650af11e687497")
!108 = !DIFile(filename: "src/instance.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/pyo3-0.29.0", checksumkind: CSK_MD5, checksum: "a9445dd2946120d03be07b6023684263")
!109 = !DINamespace(name: "instance", scope: !93)
!110 = !DINamespace(name: "{impl#38}", scope: !109)
!111 = !DINamespace(name: "drop", scope: !110)
!112 = !DINamespace(name: "thread_is_attached", scope: !95)
!113 = !{!"branch_weights", i32 4000000, i32 4001}
!114 = !DIFile(filename: "src/refcount.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/pyo3-ffi-0.29.0", checksumkind: CSK_MD5, checksum: "274518e7fddcb930011602272ef77a4d")
!115 = !DINamespace(name: "pyo3_ffi", scope: null)
!116 = !DINamespace(name: "refcount", scope: !115)
!117 = !DIFile(filename: "library/core/src/iter/adapters/map.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "47fd4c3c8424e034238ec6bb5a169812")
!118 = !DINamespace(name: "iter", scope: !81)
!119 = !DINamespace(name: "adapters", scope: !118)
!120 = !DINamespace(name: "map", scope: !119)
!121 = !DINamespace(name: "{impl#2}", scope: !120)
!122 = !DIFile(filename: "library/core/src/cmp.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "93720ae7898ae8b09789e408e6950d44")
!123 = !DINamespace(name: "cmp", scope: !81)
!124 = !DINamespace(name: "impls", scope: !123)
!125 = !DINamespace(name: "{impl#58}", scope: !124)
!126 = !DIFile(filename: "library/core/src/iter/range.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "7915aa40df45185604e056d6562b6895")
!127 = !DINamespace(name: "range", scope: !118)
!128 = !DINamespace(name: "{impl#5}", scope: !127)
!129 = !DINamespace(name: "{impl#6}", scope: !127)
!130 = !DIFile(filename: "library/core/src/iter/traits/iterator.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "d5544ea6028134339a685b720f104b0d")
!131 = !DINamespace(name: "traits", scope: !118)
!132 = !DINamespace(name: "iterator", scope: !131)
!133 = !DINamespace(name: "Iterator", scope: !132)
!134 = !DIFile(filename: "src/registry.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/rayon-core-1.13.0", checksumkind: CSK_MD5, checksum: "6888c8a0f0069d8eefec6378d7e62199")
!135 = !DINamespace(name: "rayon_core", scope: null)
!136 = !DINamespace(name: "registry", scope: !135)
!137 = !DINamespace(name: "{impl#6}", scope: !136)
!138 = !DINamespace(name: "new", scope: !137)
!139 = !DINamespace(name: "map_fold", scope: !120)
!140 = !DIFile(filename: "library/core/src/ptr/non_null.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "84a86787d0c87de0d69993189aea0a0d")
!141 = !DINamespace(name: "non_null", scope: !90)
!142 = !DINamespace(name: "NonNull", scope: !141)
!143 = !DIFile(filename: "library/alloc/src/sync.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "31e6877a7610d12a2aea9713b050cee7")
!144 = !DINamespace(name: "alloc", scope: null)
!145 = !DINamespace(name: "sync", scope: !144)
!146 = !DINamespace(name: "Arc", scope: !145)
!147 = !DINamespace(name: "{impl#32}", scope: !145)
!148 = !DIFile(filename: "src/deque.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/crossbeam-deque-0.8.6", checksumkind: CSK_MD5, checksum: "b8d32914b88fa199b7cde34030e7042f")
!149 = !DINamespace(name: "crossbeam_deque", scope: null)
!150 = !DINamespace(name: "deque", scope: !149)
!151 = !DINamespace(name: "Worker", scope: !150)
!152 = !DIFile(filename: "library/core/src/sync/atomic.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "0fa055d022a09bf85eb4fa0bc0114101")
!153 = !DINamespace(name: "sync", scope: !81)
!154 = !DINamespace(name: "atomic", scope: !153)
!155 = !DINamespace(name: "Atomic", scope: !154)
!156 = !DIFile(filename: "library/core/src/num/uint_macros.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "7da08fe6de751b90c62a398311fb672e")
!157 = !DINamespace(name: "num", scope: !81)
!158 = !DINamespace(name: "{impl#11}", scope: !157)
!159 = !DINamespace(name: "{impl#43}", scope: !127)
!160 = !DINamespace(name: "for_each", scope: !133)
end_hunk_1
