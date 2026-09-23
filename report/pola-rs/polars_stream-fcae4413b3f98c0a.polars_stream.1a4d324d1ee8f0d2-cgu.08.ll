Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_stream-fcae4413b3f98c0a.polars_stream.1a4d324d1ee8f0d2-cgu.08?download=true
inline.NumInlined: 6106
inline.NumDeleted: 2143
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_RNvXs1_NtNtCs8774dFTUdNv_12polars_arrow5array6binaryINtB5_11BinaryArrayxENtB7_9Splitable19__split_at_uncheckedCs2g09Ig8GZd6_13polars_stream:bb.a
bb.i:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 24, !dbg !88035
  %i.ad = atomicrmw add ptr %i.ac, i64 1 monotonic, align 8, !dbg !88036 ; 0 uses
  br label %bb.h, !dbg !88037

bb.j:                                             ; preds = %bb.h
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array6binary11BinaryArrayxEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.c) #41
          to label %bb.d unwind label %bb.n, !dbg !88038

bb.k:                                             ; preds = %bb.h
  %i.af = load ptr, ptr %i.r, align 8, !dbg !88039, !nonnull !3602, !noundef !3602 ; 3 uses
  %i.ag = load i64, ptr %i.af, align 8, !dbg !88040, !range !4072, !noundef !3602
  %i.ah = icmp eq i64 %i.ag, 3, !dbg !88041
  br i1 %i.ah, label %bb.l, label %bb.m, !dbg !88041

bb.l:                                             ; preds = %bb.m, %bb.k
  %i.ai = load ptr, ptr %i.v, align 8, !dbg !88042, !noundef !3602
  %i.aj = load i64, ptr %i.x, align 8, !dbg !88043, !noundef !3602
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 192, !dbg !88044
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false), !dbg !88045
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.04, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !dbg !88032
  %.sroa.04.32..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.04, i64 32, !dbg !88032
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.32..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !dbg !88032
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !88046
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.c, i64 112, i1 false), !dbg !88044
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !88044
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ak, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.04, i64 56, i1 false), !dbg !88044
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168, !dbg !88044
  store ptr %i.af, ptr %.sroa.55.0..sroa_idx, align 8, !dbg !88044
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 176, !dbg !88044
  store ptr %i.ai, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !88044
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 184, !dbg !88044
  store i64 %i.aj, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !88044
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.04), !dbg !88038
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !88038
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !88047
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !88047
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !88048
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !88048
  ret void, !dbg !88049

bb.m:                                             ; preds = %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 24, !dbg !88050
  %i.am = atomicrmw add ptr %i.al, i64 1 monotonic, align 8, !dbg !88051 ; 0 uses
  br label %bb.l, !dbg !88052

bb.n:                                             ; preds = %bb.q, %bb.p, %bb.e, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECs2g09Ig8GZd6_13polars_stream.exit15, %bb.j
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !88053
  unreachable, !dbg !88053

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %bb.d, %bb.e
  br i1 %.sroa.06.0, label %bb.o, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECs2g09Ig8GZd6_13polars_stream.exit15, !dbg !88047

bb.o:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECs2g09Ig8GZd6_13polars_stream.exit
  %i.ao = load ptr, ptr %i.f, align 8, !dbg !88054, !alias.scope !88004, !noundef !3602
  %i.ap = icmp eq ptr %i.ao, null, !dbg !88054
  br i1 %i.ap, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECs2g09Ig8GZd6_13polars_stream.exit15, label %bb.p, !dbg !88054

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECs2g09Ig8GZd6_13polars_stream.exit15 unwind label %bb.n, !dbg !88055

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8774dFTUdNv_12polars_arrow6offset13OffsetsBufferxEECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECs2g09Ig8GZd6_13polars_stream.exit15
  br i1 %.sroa.07.0, label %bb.q, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8774dFTUdNv_12polars_arrow6offset13OffsetsBufferxEECs2g09Ig8GZd6_13polars_stream.exit17, !dbg !88048

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8774dFTUdNv_12polars_arrow6offset13OffsetsBufferxEECs2g09Ig8GZd6_13polars_stream.exit17: ; preds = %bb.q, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8774dFTUdNv_12polars_arrow6offset13OffsetsBufferxEECs2g09Ig8GZd6_13polars_stream.exit
  resume { ptr, i32 } %.pn.pn, !dbg !88053

bb.q:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8774dFTUdNv_12polars_arrow6offset13OffsetsBufferxEECs2g09Ig8GZd6_13polars_stream.exit
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragexENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8774dFTUdNv_12polars_arrow6offset13OffsetsBufferxEECs2g09Ig8GZd6_13polars_stream.exit17 unwind label %bb.n, !dbg !88056
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB5_22BinaryViewArrayGenericShENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) initializes((0, 128)) %0, ptr nofree noundef nonnull align 8 captures(address, read_provenance) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2013 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !88095
  call fastcc void @_RNvXs3_NtCs8774dFTUdNv_12polars_arrow9datatypesNtB5_13ArrowDataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) #45, !dbg !88096
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !88097
  %i.c = load ptr, ptr %i.b, align 8, !dbg !88097, !nonnull !3602, !noundef !3602 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !dbg !88098, !range !4072, !noundef !3602
  %i.e = icmp eq i64 %i.d, 3, !dbg !88099
  br i1 %i.e, label %bb.b, label %bb.c, !dbg !88099

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !88100
  %i.g = load ptr, ptr %i.f, align 8, !dbg !88100, !noundef !3602
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !88101
  %i.i = load i64, ptr %i.h, align 8, !dbg !88101, !noundef !3602
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !88102
  %i.k = load ptr, ptr %i.j, align 8, !dbg !88102, !nonnull !3602, !noundef !3602 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !dbg !88103, !range !4072, !noundef !3602
  %i.m = icmp eq i64 %i.l, 3, !dbg !88104
  br i1 %i.m, label %bb.d, label %bb.e, !dbg !88104

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !88105
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !dbg !88106 ; 0 uses
  br label %bb.b, !dbg !88107

bb.d:                                             ; preds = %bb.e, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !88108
  %i.q = load ptr, ptr %i.p, align 8, !dbg !88108, !noundef !3602
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !88109
  %i.s = load i64, ptr %i.r, align 8, !dbg !88109, !noundef !3602
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !88110
  %i.u = load ptr, ptr %i.t, align 8, !dbg !88110, !noundef !3602 ; 4 uses
  %.not = icmp eq ptr %i.u, null, !dbg !88110
  br i1 %.not, label %bb.i, label %bb.f, !dbg !88111

bb.e:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 24, !dbg !88112
  %i.w = atomicrmw add ptr %i.v, i64 1 monotonic, align 8, !dbg !88113 ; 0 uses
  br label %bb.d, !dbg !88114

bb.f:                                             ; preds = %bb.d
  %i.x = load i64, ptr %i.u, align 8, !dbg !88115, !range !4072, !noalias !88088, !noundef !3602
  %i.y = icmp eq i64 %i.x, 3, !dbg !88116
  br i1 %i.y, label %bb.h, label %bb.g, !dbg !88116

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 24, !dbg !88117
  %i.aa = atomicrmw add ptr %i.z, i64 1 monotonic, align 8, !dbg !88118, !noalias !88088 ; 0 uses
  br label %bb.h, !dbg !88119

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 88, !dbg !88120
  %i.ac = load <2 x i64>, ptr %i.ab, align 8, !dbg !88120, !noalias !88088
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 104, !dbg !88121
  %i.ae = load atomic i64, ptr %i.ad monotonic, align 8, !dbg !88122, !noalias !88088
  br label %bb.i, !dbg !88123

bb.i:                                             ; preds = %bb.d, %bb.h
  %.sroa.7.0 = phi i64 [ %i.ae, %bb.h ], [ undef, %bb.d ], !dbg !88124
  %i.af = phi <2 x i64> [ %i.ac, %bb.h ], [ undef, %bb.d ], !dbg !88124
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 112, !dbg !88125
  %i.ah = load atomic i64, ptr %i.ag monotonic, align 8, !dbg !88126
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 120, !dbg !88127
  %i.aj = load i64, ptr %i.ai, align 8, !dbg !88127, !noundef !3602
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !dbg !88128
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !88128
  store ptr %i.c, ptr %i.ak, align 8, !dbg !88128
  %.sroa.4.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !88128
  store ptr %i.g, ptr %.sroa.4.0..sroa_idx8, align 8, !dbg !88128
  %.sroa.5.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !88128
  store i64 %i.i, ptr %.sroa.5.0..sroa_idx9, align 8, !dbg !88128
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !88128
  store ptr %i.k, ptr %i.al, align 8, !dbg !88128
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !88128
  store ptr %i.q, ptr %.sroa.411.0..sroa_idx, align 8, !dbg !88128
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !88128
  store i64 %i.s, ptr %.sroa.512.0..sroa_idx, align 8, !dbg !88128
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !88128
  store ptr %i.u, ptr %i.am, align 8, !dbg !88128
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !88128
  store <2 x i64> %i.af, ptr %.sroa.514.0..sroa_idx, align 8, !dbg !88128
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104, !dbg !88128
  store i64 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !88128
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !88128
  store i64 %i.ah, ptr %i.an, align 8, !dbg !88128
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !88128
  store i64 %i.aj, ptr %i.ao, align 8, !dbg !88128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !88129
  ret void, !dbg !88130
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtCse67t6KqNqGQ_5rayon4iter8try_foldINtB5_15TryFoldConsumerINtNtCscgRAwXFJnXP_4core6result6ResultNtNtCs2mZqlW55729_12polars_utils18cardinality_sketch17CardinalitySketchNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtB7_3map11MapConsumerINtNtB7_15try_reduce_with21TryReduceWithConsumerNCNCNvNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins9equi_join20estimate_cardinality0s0_0ENCB4K_s_0ENvMs_B1I_B1G_3newNCB4K_0EINtNtB7_8plumbing8ConsumerTjRNtNtB4U_6morsel6MorselEE11into_folderB4U_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([368 x i8]) align 8 captures(none) dereferenceable(368) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !88131 {
bb.a:
  tail call void @_RNvXs4_NtNtCse67t6KqNqGQ_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_15try_reduce_with21TryReduceWithConsumerNCNCNvNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins9equi_join20estimate_cardinality0s0_0ENCB1J_s_0EINtNtB7_8plumbing8ConsumerINtNtCscgRAwXFJnXP_4core6result6ResultNtNtCs2mZqlW55729_12polars_utils18cardinality_sketch17CardinalitySketchNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE11into_folderB1T_(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1), !dbg !88140
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 97, !dbg !88141
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %.sroa.4.0..sroa_idx, i8 0, i64 256, i1 false), !dbg !88142
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !88143
  %i.b = load ptr, ptr %i.a, align 8, !dbg !88143, !nonnull !3602, !align !3643, !noundef !3602
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 360, !dbg !88141
  store ptr %i.b, ptr %i.c, align 8, !dbg !88141
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !88141
  store i8 0, ptr %i.d, align 8, !dbg !88141
  ret void, !dbg !88144
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1_NtNtCse67t6KqNqGQ_5rayon4iter8try_foldINtB5_15TryFoldConsumerINtNtCscgRAwXFJnXP_4core6result6ResultNtNtCs2mZqlW55729_12polars_utils18cardinality_sketch17CardinalitySketchNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtB7_3map11MapConsumerINtNtB7_15try_reduce_with21TryReduceWithConsumerNCNCNvNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins9equi_join20estimate_cardinality0s0_0ENCB4K_s_0ENvMs_B1I_B1G_3newNCB4K_0EINtNtB7_8plumbing8ConsumerTjRNtNtB4U_6morsel6MorselEE4fullB4U_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0) unnamed_addr #0 !dbg !88145 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXs4_NtNtCse67t6KqNqGQ_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_15try_reduce_with21TryReduceWithConsumerNCNCNvNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins9equi_join20estimate_cardinality0s0_0ENCB1J_s_0EINtNtB7_8plumbing8ConsumerINtNtCscgRAwXFJnXP_4core6result6ResultNtNtCs2mZqlW55729_12polars_utils18cardinality_sketch17CardinalitySketchNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE4fullB1T_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0), !dbg !88146
  ret i1 %i.a, !dbg !88147
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtCse67t6KqNqGQ_5rayon4iter8try_foldINtB5_15TryFoldConsumerINtNtCscgRAwXFJnXP_4core6result6ResultNtNtCs2mZqlW55729_12polars_utils18cardinality_sketch17CardinalitySketchNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtB7_3map11MapConsumerINtNtB7_15try_reduce_with21TryReduceWithConsumerNCNCNvNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins9equi_join20estimate_cardinality0s0_0ENCB4K_s_0ENvMs_B1I_B1G_3newNCB4K_0EINtNtB7_8plumbing8ConsumerTjRNtNtB4U_6morsel6MorselEE8split_atB4U_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) initializes((0, 96)) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1, i64 noundef %2) unnamed_addr #0 !dbg !88148 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @_RNvXs4_NtNtCse67t6KqNqGQ_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_15try_reduce_with21TryReduceWithConsumerNCNCNvNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins9equi_join20estimate_cardinality0s0_0ENCB1J_s_0EINtNtB7_8plumbing8ConsumerINtNtCscgRAwXFJnXP_4core6result6ResultNtNtCs2mZqlW55729_12polars_utils18cardinality_sketch17CardinalitySketchNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE8split_atB1T_(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.a, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i64 noundef %2), !dbg !88150
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 48, !dbg !88151
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !88152 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !88152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !88153
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !88153
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !88153
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !88153
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !88153
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !88153
  %3 = load <2 x ptr>, ptr %i.c, align 8, !dbg !88151
  %4 = load <2 x ptr>, ptr %i.d, align 8, !dbg !88152
  %5 = load ptr, ptr %i.e, align 8, !dbg !88152, !nonnull !3602, !align !3643, !noundef !3602
  %6 = load ptr, ptr %i.d, align 8, !dbg !88152, !nonnull !3602, !noundef !3602
  store ptr %6, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !88153
  store ptr %5, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !88153
  %7 = shufflevector <2 x ptr> %4, <2 x ptr> %3, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !88153
  store <4 x ptr> %7, ptr %.sroa.42.0..sroa_idx, align 8, !dbg !88153
  ret void, !dbg !88154
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvXs1_NtNtCse67t6KqNqGQ_5rayon4iter9enumerateINtB5_17EnumerateProducerINtNtB7_3len14MaxLenProducerINtNtNtB9_5slice6chunks17ChunksMutProducerTNtNtCs2g09Ig8GZd6_13polars_stream6morsel9MorselSeqNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEEEENtNtB7_8plumbing8Producer7max_lenB2k_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0) unnamed_addr #0 !dbg !88155 {
bb.a:
  %i.a = tail call noundef i64 @_RNvXs5_NtNtCse67t6KqNqGQ_5rayon4iter3lenINtB5_14MaxLenProducerINtNtNtB9_5slice6chunks17ChunksMutProducerTNtNtCs2g09Ig8GZd6_13polars_stream6morsel9MorselSeqNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEEENtNtB7_8plumbing8Producer7max_lenB1J_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0), !dbg !88156
  ret i64 %i.a, !dbg !88157
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvXs1_NtNtCse67t6KqNqGQ_5rayon4iter9enumerateINtB5_17EnumerateProducerINtNtB7_3len14MaxLenProducerINtNtNtB9_5slice6chunks17ChunksMutProducerTNtNtCs2g09Ig8GZd6_13polars_stream6morsel9MorselSeqNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEEEENtNtB7_8plumbing8Producer7min_lenB2k_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0) unnamed_addr #0 !dbg !88158 {
bb.a:
  %i.a = tail call noundef i64 @_RNvXs5_NtNtCse67t6KqNqGQ_5rayon4iter3lenINtB5_14MaxLenProducerINtNtNtB9_5slice6chunks17ChunksMutProducerTNtNtCs2g09Ig8GZd6_13polars_stream6morsel9MorselSeqNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEEENtNtB7_8plumbing8Producer7min_lenB1J_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0), !dbg !88159
  ret i64 %i.a, !dbg !88160
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtCse67t6KqNqGQ_5rayon4iter9enumerateINtB5_17EnumerateProducerINtNtB7_3len14MaxLenProducerINtNtNtB9_5slice6chunks17ChunksMutProducerTNtNtCs2g09Ig8GZd6_13polars_stream6morsel9MorselSeqNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEEEENtNtB7_8plumbing8Producer8split_atB2k_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) initializes((0, 80)) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1, i64 noundef %2) unnamed_addr #0 !dbg !88161 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @_RNvXs5_NtNtCse67t6KqNqGQ_5rayon4iter3lenINtB5_14MaxLenProducerINtNtNtB9_5slice6chunks17ChunksMutProducerTNtNtCs2g09Ig8GZd6_13polars_stream6morsel9MorselSeqNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEEENtNtB7_8plumbing8Producer8split_atB1J_(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.a, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2), !dbg !88163
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !88164
  %i.d = load i64, ptr %i.c, align 8, !dbg !88164, !noundef !3602 ; 2 uses
  %i.e = add i64 %i.d, %2, !dbg !88165
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !dbg !88166
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !88166
  store i64 %i.d, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !88166
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !88166
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !dbg !88166
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !88166
  store i64 %i.e, ptr %.sroa.42.0..sroa_idx, align 8, !dbg !88166
  ret void, !dbg !88167
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef i64 @_RNvXs1_NtNtCse67t6KqNqGQ_5rayon4iter9enumerateINtB5_17EnumerateProducerINtNtB9_5slice12IterProducerNtNtCs2g09Ig8GZd6_13polars_stream6morsel6MorselEENtNtB7_8plumbing8Producer7max_lenB1D_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #6 !dbg !88168 {
bb.a:
  ret i64 -1, !dbg !88169
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef i64 @_RNvXs1_NtNtCse67t6KqNqGQ_5rayon4iter9enumerateINtB5_17EnumerateProducerINtNtB9_5slice12IterProducerNtNtCs2g09Ig8GZd6_13polars_stream6morsel6MorselEENtNtB7_8plumbing8Producer7min_lenB1D_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #6 !dbg !88170 {
bb.a:
  ret i64 1, !dbg !88171
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtCse67t6KqNqGQ_5rayon4iter9enumerateINtB5_17EnumerateProducerINtNtB9_5slice12IterProducerNtNtCs2g09Ig8GZd6_13polars_stream6morsel6MorselEENtNtB7_8plumbing8Producer8split_atB1D_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 48)) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, i64 noundef %2) unnamed_addr #0 !dbg !88172 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !88174
  %i.b = load ptr, ptr %1, align 8, !dbg !88174, !nonnull !3602, !align !3643, !noundef !3602
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !88174
  %i.d = load i64, ptr %i.c, align 8, !dbg !88174, !noundef !3602
  call void @_RNvXs7_NtCse67t6KqNqGQ_5rayon5sliceINtB5_12IterProducerNtNtCs2g09Ig8GZd6_13polars_stream6morsel6MorselENtNtNtB7_4iter8plumbing8Producer8split_atBV_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.b, i64 noundef %i.d, i64 noundef %2), !dbg !88175
  %i.e = load ptr, ptr %i.a, align 8, !dbg !88176, !nonnull !3602, !align !3643, !noundef !3602
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !88176
  %i.g = load i64, ptr %i.f, align 8, !dbg !88176, !noundef !3602
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !88177
  %i.i = load ptr, ptr %i.h, align 8, !dbg !88177, !nonnull !3602, !align !3643, !noundef !3602
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !88177
  %i.k = load i64, ptr %i.j, align 8, !dbg !88177, !noundef !3602
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !88178
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !88179
  %i.m = load i64, ptr %i.l, align 8, !dbg !88179, !noundef !3602 ; 2 uses
  %i.n = add i64 %i.m, %2, !dbg !88180
  store ptr %i.e, ptr %0, align 8, !dbg !88181
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !88181
  store i64 %i.g, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !88181
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !88181
  store i64 %i.m, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !88181
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !88181
  store ptr %i.i, ptr %i.o, align 8, !dbg !88181
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !88181
  store i64 %i.k, ptr %.sroa.42.0..sroa_idx, align 8, !dbg !88181
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !88181
  store i64 %i.n, ptr %.sroa.53.0..sroa_idx, align 8, !dbg !88181
  ret void, !dbg !88182
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXs1_NtNtCslFlrwjHoTci_14polars_compute3ewm3covINtB5_11EwmVarStateNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtB7_14EwmStateUpdate16ewm_state_updateCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(40) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(192) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !88183 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [80 x i8], align 8                ; 10 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 8 uses
  %i.e = alloca [88 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 16               ; 4 uses
  %i.g = alloca [56 x i8], align 8                ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = alloca [88 x i8], align 8                ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 32, !dbg !88298
  %i.k = load ptr, ptr %i.j, align 8, !dbg !88298, !invariant.load !3602, !nonnull !3602
  %i.l = tail call { ptr, ptr } %i.k(ptr noundef nonnull %1) #45, !dbg !88299 ; 2 uses
  %i.m = extractvalue { ptr, ptr } %i.l, 0, !dbg !88299 ; 5 uses
  %i.n = extractvalue { ptr, ptr } %i.l, 1, !dbg !88299
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !88264
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24, !dbg !88300
  %i.p = load ptr, ptr %i.o, align 8, !dbg !88300, !invariant.load !3602, !nonnull !3602
  call void %i.p(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.f, ptr noundef %i.m) #45, !dbg !88301
  %i.q = load i128, ptr %i.f, align 16, !dbg !88302, !noundef !3602
  %i.r = icmp eq i128 %i.q, 125610970236382096683274800577014174990, !dbg !88303
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !88264
  br i1 %i.r, label %bb.c, label %bb.b, !dbg !88304, !prof !3609

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @374) #44, !dbg !88305
  unreachable, !dbg !88305

bb.c:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.m) ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 40, !dbg !88306
  %i.t = load ptr, ptr %i.s, align 8, !dbg !88306, !nonnull !3602, !noundef !3602 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 48, !dbg !88307
  %i.v = load i64, ptr %i.u, align 8, !dbg !88307, !noundef !3602
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 56, !dbg !88308 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !dbg !88308, !noundef !3602
  %.not = icmp eq ptr %i.x, null, !dbg !88308
  %. = select i1 %.not, ptr null, ptr %i.w, !dbg !88309
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.v, !dbg !88310
  call void @_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRNtNtCs2mZqlW55729_12polars_utils7float164pf16INtNtNtCscgRAwXFJnXP_4core5slice4iter4IterB1o_ENtNtB7_8iterator10BitmapIterE17new_with_validityCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.g, ptr noundef nonnull %i.t, ptr noundef nonnull %i.y, ptr noundef align 8 %.), !dbg !88311
  %.sroa.04.0.copyload = load ptr, ptr %i.g, align 8, !dbg !88312 ; 3 uses
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !88312
  %.sroa.45.0.copyload = load ptr, ptr %.sroa.45.0..sroa_idx, align 8, !dbg !88312, !nonnull !3602, !noundef !3602 ; 3 uses
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !88312
  %.sroa.56.0.copyload = load ptr, ptr %.sroa.56.0..sroa_idx, align 8, !dbg !88312 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 30, !dbg !88313
  %i.aa = load i8, ptr %i.z, align 2, !dbg !88313, !range !3801, !alias.scope !88280, !noalias !88281, !noundef !3602
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 28, !dbg !88313
  %i.ac = load i16, ptr %i.ab, align 4, !dbg !88313, !alias.scope !88280, !noalias !88281
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !88314
  call void @llvm.experimental.noalias.scope.decl(metadata !88284), !dbg !88314
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !88315
  %.not.i.i.i.i = icmp eq ptr %.sroa.04.0.copyload, null, !dbg !88316 ; 2 uses
  %.val1.sink.i.i.i.i = select i1 %.not.i.i.i.i, ptr %.sroa.56.0.copyload, ptr %.sroa.45.0.copyload, !dbg !88317
  %.val.sink.i.i.i.i = select i1 %.not.i.i.i.i, ptr %.sroa.45.0.copyload, ptr %.sroa.04.0.copyload, !dbg !88317
  %i.ad = ptrtoint ptr %.val1.sink.i.i.i.i to i64, !dbg !88318
  %i.ae = ptrtoint ptr %.val.sink.i.i.i.i to i64, !dbg !88318
  %i.af = sub nuw i64 %i.ad, %i.ae, !dbg !88318
  %.sink4.i.i.i.i = lshr exact i64 %i.af, 1, !dbg !88318
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !88319, !noalias !88285
  call void @llvm.experimental.noalias.scope.decl(metadata !88286), !dbg !88320
  %i.ag = add nuw i64 %.sink4.i.i.i.i, 7, !dbg !88321
  %i.ah = lshr i64 %i.ag, 3, !dbg !88322          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !88323, !noalias !88287
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.ah, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !dbg !88323, !noalias !88287
  %i.ai = load i64, ptr %i.a, align 8, !dbg !88323, !range !3947, !noalias !88287, !noundef !3602
  %i.aj = trunc nuw i64 %i.ai to i1, !dbg !88324
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !88325
  %i.al = load i64, ptr %i.ak, align 8, !dbg !88325, !range !3697, !noalias !88287, !noundef !3602 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !88325 ; 2 uses
  br i1 %i.aj, label %bb.d, label %bb.e, !dbg !88324, !prof !3663

bb.d:                                             ; preds = %bb.c
  %i.an = load i64, ptr %i.am, align 8, !dbg !88326, !noalias !88287
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.al, i64 %i.an) #40, !dbg !88327, !noalias !88287
  unreachable, !dbg !88327

bb.e:                                             ; preds = %bb.c
  %i.ao = trunc nuw i8 %i.aa to i1, !dbg !88313
  %.sroa.0.0.i = select i1 %i.ao, i16 15360, i16 %i.ac, !dbg !88313
  %i.ap = load ptr, ptr %i.am, align 8, !dbg !88328, !noalias !88287, !nonnull !3602, !noundef !3602
  %i.aq = icmp samesign ule i64 %i.ah, %i.al, !dbg !88329
  call void @llvm.assume(i1 %i.aq), !dbg !88330
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !88331, !noalias !88287
  store i64 %i.al, ptr %i.d, align 8, !dbg !88332, !alias.scope !88286, !noalias !88285
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !88332
  store ptr %i.ap, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !88332, !alias.scope !88286, !noalias !88285
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !88332
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i, i8 0, i64 16, i1 false), !dbg !88332, !alias.scope !88286, !noalias !88285
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !88333, !noalias !88285
  %.sroa.719.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !88334
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.719.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false), !dbg !88335
  call void @llvm.experimental.noalias.scope.decl(metadata !88288), !dbg !88336
  store ptr %0, ptr %i.b, align 8, !dbg !88334, !alias.scope !88289, !noalias !88290
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !88334
  store i16 %.sroa.0.0.i, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !88334, !alias.scope !88289, !noalias !88290
  %.sroa.416.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !88334
  store ptr %.sroa.04.0.copyload, ptr %.sroa.416.0..sroa_idx.i, align 8, !dbg !88334, !alias.scope !88289, !noalias !88291
  %.sroa.517.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !88334
  store ptr %.sroa.45.0.copyload, ptr %.sroa.517.0..sroa_idx.i, align 8, !dbg !88334, !alias.scope !88289, !noalias !88291
  %.sroa.618.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !88334
  store ptr %.sroa.56.0.copyload, ptr %.sroa.618.0..sroa_idx.i, align 8, !dbg !88334, !alias.scope !88289, !noalias !88291
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 72, !dbg !88334
  store ptr %i.d, ptr %i.ar, align 8, !dbg !88334, !alias.scope !88292, !noalias !88293
  invoke void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs2mZqlW55729_12polars_utils7float164pf16EINtB2_12SpecFromIterBU_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapIB22_IB22_INtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRBU_INtNtNtB2a_5slice4iter4IterBU_ENtNtB34_8iterator10BitmapIterENCNvXs1_NtNtCslFlrwjHoTci_14polars_compute3ewm3covINtB5p_11EwmVarStateBU_ENtB5r_14EwmStateUpdate16ewm_state_update0ENCINvMs_B5p_INtB5p_11EwmCovStateBU_E11update_iterB2U_E0ENCINvXsb_NtNtNtB38_5array9primitive7mutableINtB8c_21MutablePrimitiveArrayBU_EINtNtNtB28_6traits7collect12FromIteratorINtNtB2a_6option6OptionBU_EE9from_iterB2P_E0EE9from_iterCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(80) %i.b)
          to label %_RINvXsb_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB6_21MutablePrimitiveArrayNtNtCs2mZqlW55729_12polars_utils7float164pf16EINtNtNtNtCscgRAwXFJnXP_4core4iter6traits7collect12FromIteratorINtNtB2o_6option6OptionB1v_EE9from_iterINtNtNtB2m_8adapters3map3MapIB3T_INtNtNtNtBc_6bitmap5utils12zip_validity11ZipValidityRB1v_INtNtNtB2o_5slice4iter4IterB1v_ENtNtB4u_8iterator10BitmapIterENCNvXs1_NtNtCslFlrwjHoTci_14polars_compute3ewm3covINtB6s_11EwmVarStateB1v_ENtB6u_14EwmStateUpdate16ewm_state_update0ENCINvMs_B6s_INtB6s_11EwmCovStateB1v_E11update_iterB4k_E0EECs2g09Ig8GZd6_13polars_stream.exit unwind label %bb.g, !dbg !88337, !noalias !88285

bb.f:                                             ; preds = %bb.g
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !88338, !noalias !88285
  unreachable, !dbg !88338

bb.g:                                             ; preds = %bb.e
  %i.at = landingpad { ptr, i32 }
          cleanup
end_hunk_0
