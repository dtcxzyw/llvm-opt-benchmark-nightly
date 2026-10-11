Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_expr-c150671a77946377.polars_expr.f440eb239ff47e82-cgu.09?download=true
inline.NumInlined: 10247
inline.NumDeleted: 3945
loop-unroll.NumRuntimeUnrolled: 48
loop-unroll.NumUnrolled: 48
begin_hunk_0_@_RNvXs1_NtNtNtCs8774dFTUdNv_12polars_arrow5array7binview7mutableINtB7_22BinaryViewArrayGenericeEINtNtCscgRAwXFJnXP_4core7convert4FromINtB5_22MutableBinaryViewArrayeEE4fromCskY9G75ZWc4U_11polars_expr:bb.a
  %eh.lpad-body21 = phi { ptr, i32 } [ %i.ad, %bb.u ], [ %i.w, %bb.k ]
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 104, !dbg !180858
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 136, !dbg !180873
  invoke void @_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTjmENtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.ae, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.af, i64 noundef 16, i64 noundef 16)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown3map7HashMapjmNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECskY9G75ZWc4U_11polars_expr.exit unwind label %bb.v, !dbg !180874

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.l
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 104, !dbg !180858
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 136, !dbg !180875
  call void @_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTjmENtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.ag, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ah, i64 noundef 16, i64 noundef 16), !dbg !180876
  ret void, !dbg !180877

bb.v:                                             ; preds = %bb.aa, %.body20, %.body, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferIBH_hEEECskY9G75ZWc4U_11polars_expr.exit, %bb.ab, %.thread33, %bb.y, %bb.x, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewEECskY9G75ZWc4U_11polars_expr.exit
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !180878
  unreachable, !dbg !180878

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown3map7HashMapjmNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.aa, %.body20
  %.pn18 = phi { ptr, i32 } [ %eh.lpad-body21, %.body20 ], [ %.pn.pn.pn2739, %bb.aa ]
  resume { ptr, i32 } %.pn18, !dbg !180878

bb.w:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewEECskY9G75ZWc4U_11polars_expr.exit
  br i1 %.sroa.09.1, label %.thread33, label %bb.y, !dbg !180858

bb.x:                                             ; preds = %bb.a
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %1) #41
          to label %.thread33 unwind label %bb.v, !dbg !180858

bb.y:                                             ; preds = %.thread33, %bb.w
  %.pn.pn.pn2739 = phi { ptr, i32 } [ %.pn.pn.pn2740, %.thread33 ], [ %.pn.pn, %bb.w ]
  %.sroa.08.03137 = phi i1 [ %.sroa.08.03138, %.thread33 ], [ %.sroa.08.1, %bb.w ]
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !180858
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.ak) #41
          to label %bb.z unwind label %bb.v, !dbg !180858

.thread33:                                        ; preds = %bb.x, %bb.w
  %.pn.pn.pn2740 = phi { ptr, i32 } [ %.pn.pn, %bb.w ], [ %i.aj, %bb.x ]
  %.sroa.08.03138 = phi i1 [ %.sroa.08.1, %bb.w ], [ true, %bb.x ]
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !180858
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.al) #41
          to label %bb.y unwind label %bb.v, !dbg !180858

bb.z:                                             ; preds = %bb.y
  br i1 %.sroa.08.03137, label %bb.ab, label %bb.aa, !dbg !180858

bb.aa:                                            ; preds = %bb.ab, %bb.z
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 104, !dbg !180858
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 136, !dbg !180879
  invoke void @_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTjmENtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.am, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.an, i64 noundef 16, i64 noundef 16)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown3map7HashMapjmNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECskY9G75ZWc4U_11polars_expr.exit unwind label %bb.v, !dbg !180880

bb.ab:                                            ; preds = %bb.z
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !180858
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutable13MutableBitmapEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.ao) #41
          to label %bb.aa unwind label %bb.v, !dbg !180858
}

; Function Attrs: nonlazybind uwtable
define hidden { i16, i16 } @_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float16TypeNvYNtNtCs2mZqlW55729_12polars_utils7float164pf16NtNtB3e_7min_max6MinMax17max_propagate_nanE0INtB7_5FnMutTRINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayB3a_EEE8call_mutCskY9G75ZWc4U_11polars_expr(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !180881 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [56 x i8], align 8                ; 4 uses
  %i.c = alloca [56 x i8], align 8                ; 9 uses
  %i.d = tail call fastcc noundef zeroext i1 @_RNvXs5_NtCs8774dFTUdNv_12polars_arrow9datatypesNtB5_13ArrowDataTypeNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @227) #40, !dbg !181035
  br i1 %i.d, label %bb.c, label %bb.b, !dbg !181036

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !181037 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !dbg !181037, !noundef !3008
  %.not.i.i.i = icmp eq ptr %i.f, null, !dbg !181037
  br i1 %.not.i.i.i, label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtB7_5Array10null_countCskY9G75ZWc4U_11polars_expr.exit.thread.i, label %bb.d, !dbg !181038

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !181039
  %i.h = load i64, ptr %i.g, align 8, !dbg !181039, !noundef !3008
  br label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtB7_5Array10null_countCskY9G75ZWc4U_11polars_expr.exit.i, !dbg !181040

bb.d:                                             ; preds = %bb.b
  %i.i = tail call noundef i64 @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap10unset_bits(ptr noundef nonnull align 8 %i.e), !dbg !181041
  br label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtB7_5Array10null_countCskY9G75ZWc4U_11polars_expr.exit.i, !dbg !181042

_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtB7_5Array10null_countCskY9G75ZWc4U_11polars_expr.exit.i: ; preds = %bb.d, %bb.c
  %.sroa.0.1.i.i = phi i64 [ %i.h, %bb.c ], [ %i.i, %bb.d ], !dbg !181043
  %i.j = icmp eq i64 %.sroa.0.1.i.i, 0, !dbg !181044
  br i1 %i.j, label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtB7_5Array10null_countCskY9G75ZWc4U_11polars_expr.exit.thread.i, label %bb.f, !dbg !181044

_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtB7_5Array10null_countCskY9G75ZWc4U_11polars_expr.exit.thread.i: ; preds = %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtB7_5Array10null_countCskY9G75ZWc4U_11polars_expr.exit.i, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !181045
  %i.l = load ptr, ptr %i.k, align 8, !dbg !181045, !nonnull !3008, !noundef !3008 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !181046
  %i.n = load i64, ptr %i.m, align 8, !dbg !181046, !noundef !3008
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.n, !dbg !181047
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.l, ptr %i.a, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.o, ptr %i.p, align 8
  %i.q = call { i16, i16 } @_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16EENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a), !dbg !181048 ; 2 uses
  %i.r = extractvalue { i16, i16 } %i.q, 0, !dbg !181049
  %i.s = trunc i16 %i.r to i1, !dbg !181050
  br i1 %i.s, label %bb.e, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16EENtNtNtBa_6traits8iterator8Iterator6reduceNvYB1n_NtNtB1r_7min_max6MinMax17max_propagate_nanECskY9G75ZWc4U_11polars_expr.exit.i, !dbg !181050

bb.e:                                             ; preds = %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtB7_5Array10null_countCskY9G75ZWc4U_11polars_expr.exit.thread.i
  %i.t = extractvalue { i16, i16 } %i.q, 1, !dbg !181049
  %i.u = load ptr, ptr %i.a, align 8, !dbg !181051, !nonnull !3008, !noundef !3008
  %i.v = load ptr, ptr %i.p, align 8, !dbg !181051, !noundef !3008
  %i.w = call noundef i16 @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16EENtNtNtB9_6traits8iterator8Iterator4foldB1s_NvYB1s_NtNtB1w_7min_max6MinMax17max_propagate_nanECskY9G75ZWc4U_11polars_expr(ptr noundef nonnull %i.u, ptr noundef %i.v, i16 noundef %i.t), !dbg !181052
  br label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16EENtNtNtBa_6traits8iterator8Iterator6reduceNvYB1n_NtNtB1r_7min_max6MinMax17max_propagate_nanECskY9G75ZWc4U_11polars_expr.exit.i, !dbg !181053

_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16EENtNtNtBa_6traits8iterator8Iterator6reduceNvYB1n_NtNtB1r_7min_max6MinMax17max_propagate_nanECskY9G75ZWc4U_11polars_expr.exit.i: ; preds = %bb.e, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtB7_5Array10null_countCskY9G75ZWc4U_11polars_expr.exit.thread.i
  %.sroa.3.0.i.i = phi i16 [ %i.w, %bb.e ], [ undef, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtB7_5Array10null_countCskY9G75ZWc4U_11polars_expr.exit.thread.i ]
  %.sroa.0.0.i.i = phi i16 [ 1, %bb.e ], [ 0, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtB7_5Array10null_countCskY9G75ZWc4U_11polars_expr.exit.thread.i ], !dbg !181054
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !181055
  br label %_RNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float16TypeNvYNtNtCs2mZqlW55729_12polars_utils7float164pf16NtNtB2p_7min_max6MinMax17max_propagate_nanE0CskY9G75ZWc4U_11polars_expr.exit, !dbg !181056

bb.f:                                             ; preds = %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtB7_5Array10null_countCskY9G75ZWc4U_11polars_expr.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !181057
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !181057
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !181058
  %i.y = load ptr, ptr %i.x, align 8, !dbg !181058, !nonnull !3008, !noundef !3008 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !181059
  %i.aa = load i64, ptr %i.z, align 8, !dbg !181059, !noundef !3008
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %i.aa, !dbg !181060
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !181061 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !dbg !181061, !noundef !3008
  %.not.i = icmp eq ptr %i.ad, null, !dbg !181061
  %..i = select i1 %.not.i, ptr null, ptr %i.ac, !dbg !181062
  call void @_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRNtNtCs2mZqlW55729_12polars_utils7float164pf16INtNtNtCscgRAwXFJnXP_4core5slice4iter4IterB1o_ENtNtB7_8iterator10BitmapIterE17new_with_validityCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.b, ptr noundef nonnull %i.y, ptr noundef nonnull %i.ab, ptr noundef align 8 %..i), !dbg !181063
  call void @_RNvMs9_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRNtNtCs2mZqlW55729_12polars_utils7float164pf16INtNtNtCscgRAwXFJnXP_4core5slice4iter4IterB1o_ENtNtB7_8iterator10BitmapIterE15unwrap_optionalCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.c, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.b), !dbg !181064
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !181065
  %.sroa.0.0.copyload.i = load ptr, ptr %i.c, align 8, !dbg !181066
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !181066
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !181066, !nonnull !3008, !noundef !3008 ; 2 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !181066
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !181066
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !181066
  %.sroa.10.0.copyload.i = load i64, ptr %.sroa.10.0..sroa_idx.i, align 8, !dbg !181066
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40, !dbg !181066
  %.sroa.12.0.copyload.i = load i64, ptr %.sroa.12.0..sroa_idx.i, align 8, !dbg !181066 ; 2 uses
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48, !dbg !181066
  %.sroa.14.0.copyload.i = load i64, ptr %.sroa.14.0..sroa_idx.i, align 8, !dbg !181066 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !181067
  br label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8find_map5checkINtNtBe_6option6OptionRNtNtCs2mZqlW55729_12polars_utils7float164pf16EB1D_QNCNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float16TypeNvYB1D_NtNtB1H_7min_max6MinMax17max_propagate_nanE00E0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i, !dbg !181068

_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8find_map5checkINtNtBe_6option6OptionRNtNtCs2mZqlW55729_12polars_utils7float164pf16EB1D_QNCNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float16TypeNvYB1D_NtNtB1H_7min_max6MinMax17max_propagate_nanE00E0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i: ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i, %bb.f
  %.sroa.8.0.copyload21.i.i = phi i64 [ %.sroa.8.0.copyload.i.i, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i ], [ %.sroa.14.0.copyload.i, %bb.f ] ; 2 uses
  %.sroa.7.0.copyload17.i.i = phi i64 [ %.sroa.7.0.copyload.i.i, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i ], [ %.sroa.12.0.copyload.i, %bb.f ]
  %i.ae = phi i64 [ %i.av, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i ], [ %.sroa.14.0.copyload.i, %bb.f ] ; 4 uses
  %.pre.i.i19.i.i.i.i.i = phi i64 [ %.sroa.69.0.copyload.i.i, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i ], [ %.sroa.10.0.copyload.i, %bb.f ] ; 2 uses
  %i.af = phi ptr [ %.sroa.5.0.copyload.i.i, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i ], [ %.sroa.6.0.copyload.i, %bb.f ] ; 4 uses
  %i.ag = phi i64 [ %i.aw, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i ], [ %.sroa.12.0.copyload.i, %bb.f ] ; 2 uses
  %i.ah = phi ptr [ %spec.select.i, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i ], [ %.sroa.0.0.copyload.i, %bb.f ] ; 3 uses
  %i.ai = icmp eq ptr %i.ah, %.sroa.5.0.copyload.i, !dbg !181069 ; 2 uses
  %spec.select.idx.i = select i1 %i.ai, i64 0, i64 2, !dbg !181070
  %spec.select.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 %spec.select.idx.i, !dbg !181070 ; 2 uses
  %spec.select2.i = select i1 %i.ai, ptr null, ptr %i.ah, !dbg !181070
  %i.aj = icmp eq i64 %i.ag, 0, !dbg !181071
  br i1 %i.aj, label %bb.g, label %._crit_edge.i.i.i.i.i.i.i, !dbg !181071

bb.g:                                             ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8find_map5checkINtNtBe_6option6OptionRNtNtCs2mZqlW55729_12polars_utils7float164pf16EB1D_QNCNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float16TypeNvYB1D_NtNtB1H_7min_max6MinMax17max_propagate_nanE00E0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i
  %i.ak = icmp eq i64 %i.ae, 0, !dbg !181072
  br i1 %i.ak, label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.i, !dbg !181072

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.i: ; preds = %bb.g
  %.sroa.0.0.i.i.i.i.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.ae, i64 64), !dbg !181073 ; 2 uses
  %i.al = sub nuw i64 %i.ae, %.sroa.0.0.i.i.i.i.i.i.i.i, !dbg !181074 ; 2 uses
  %.sroa.02.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.af, align 1, !dbg !181075, !noalias !181027
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 8, !dbg !181076
  br label %._crit_edge.i.i.i.i.i.i.i, !dbg !181077

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.i, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8find_map5checkINtNtBe_6option6OptionRNtNtCs2mZqlW55729_12polars_utils7float164pf16EB1D_QNCNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float16TypeNvYB1D_NtNtB1H_7min_max6MinMax17max_propagate_nanE00E0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i
  %.sroa.8.0.copyload20.i.i = phi i64 [ %i.al, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.i ], [ %.sroa.8.0.copyload21.i.i, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8find_map5checkINtNtBe_6option6OptionRNtNtCs2mZqlW55729_12polars_utils7float164pf16EB1D_QNCNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float16TypeNvYB1D_NtNtB1H_7min_max6MinMax17max_propagate_nanE00E0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ]
  %i.an = phi i64 [ %i.al, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.i ], [ %i.ae, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8find_map5checkINtNtBe_6option6OptionRNtNtCs2mZqlW55729_12polars_utils7float164pf16EB1D_QNCNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float16TypeNvYB1D_NtNtB1H_7min_max6MinMax17max_propagate_nanE00E0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ]
  %i.ao = phi ptr [ %i.am, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.i ], [ %i.af, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8find_map5checkINtNtBe_6option6OptionRNtNtCs2mZqlW55729_12polars_utils7float164pf16EB1D_QNCNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float16TypeNvYB1D_NtNtB1H_7min_max6MinMax17max_propagate_nanE00E0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ]
  %i.ap = phi i64 [ %.sroa.0.0.i.i.i.i.i.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.i ], [ %i.ag, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8find_map5checkINtNtBe_6option6OptionRNtNtCs2mZqlW55729_12polars_utils7float164pf16EB1D_QNCNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float16TypeNvYB1D_NtNtB1H_7min_max6MinMax17max_propagate_nanE00E0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ], !dbg !181078
  %i.aq = phi i64 [ %.sroa.02.0.copyload.i.i.i.i.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.i ], [ %.pre.i.i19.i.i.i.i.i, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8find_map5checkINtNtBe_6option6OptionRNtNtCs2mZqlW55729_12polars_utils7float164pf16EB1D_QNCNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float16TypeNvYB1D_NtNtB1H_7min_max6MinMax17max_propagate_nanE00E0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ], !dbg !181079 ; 2 uses
  %i.ar = trunc i64 %i.aq to i8, !dbg !181079
  %i.as = lshr i64 %i.aq, 1, !dbg !181080
  %i.at = add i64 %i.ap, -1, !dbg !181078         ; 2 uses
  %i.au = and i8 %i.ar, 1, !dbg !181081
  br label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i, !dbg !181082

_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i, %bb.g
  %.sroa.8.0.copyload.i.i = phi i64 [ %.sroa.8.0.copyload20.i.i, %._crit_edge.i.i.i.i.i.i.i ], [ %.sroa.8.0.copyload21.i.i, %bb.g ] ; 2 uses
  %.sroa.7.0.copyload.i.i = phi i64 [ %i.at, %._crit_edge.i.i.i.i.i.i.i ], [ %.sroa.7.0.copyload17.i.i, %bb.g ] ; 2 uses
  %i.av = phi i64 [ %i.an, %._crit_edge.i.i.i.i.i.i.i ], [ 0, %bb.g ]
  %.sroa.69.0.copyload.i.i = phi i64 [ %i.as, %._crit_edge.i.i.i.i.i.i.i ], [ %.pre.i.i19.i.i.i.i.i, %bb.g ] ; 2 uses
  %.sroa.5.0.copyload.i.i = phi ptr [ %i.ao, %._crit_edge.i.i.i.i.i.i.i ], [ %i.af, %bb.g ] ; 2 uses
  %i.aw = phi i64 [ %i.at, %._crit_edge.i.i.i.i.i.i.i ], [ 0, %bb.g ]
  %.sroa.0.0.i8.i.i.i.i.i.i = phi i8 [ %i.au, %._crit_edge.i.i.i.i.i.i.i ], [ 2, %bb.g ], !dbg !181083
  %i.ax = tail call { i8, ptr } @_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionbE3zipRNtNtCs2mZqlW55729_12polars_utils7float164pf16ECskY9G75ZWc4U_11polars_expr(i8 noundef %.sroa.0.0.i8.i.i.i.i.i.i, ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable_or_null(2) %spec.select2.i), !dbg !181084, !noalias !181028 ; 2 uses
  %i.ay = extractvalue { i8, ptr } %i.ax, 0, !dbg !181085
  switch i8 %i.ay, label %bb.h [
    i8 2, label %_RNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float16TypeNvYNtNtCs2mZqlW55729_12polars_utils7float164pf16NtNtB2p_7min_max6MinMax17max_propagate_nanE0CskY9G75ZWc4U_11polars_expr.exit
    i8 0, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8find_map5checkINtNtBe_6option6OptionRNtNtCs2mZqlW55729_12polars_utils7float164pf16EB1D_QNCNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float16TypeNvYB1D_NtNtB1H_7min_max6MinMax17max_propagate_nanE00E0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i
  ], !dbg !181086

bb.h:                                             ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i
  %i.az = extractvalue { i8, ptr } %i.ax, 1, !dbg !181085 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.az) ]
  %i.ba = load i16, ptr %i.az, align 2, !dbg !181087, !alias.scope !181029, !noalias !181030, !noundef !3008
  br label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.outer, !dbg !181088

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.outer: ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.outer.backedge, %bb.h
  %.ph = phi i64 [ %.sroa.8.0.copyload.i.i, %bb.h ], [ %i.bu, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.outer.backedge ]
  %.pre.i.i14.i.i.i.i.ph = phi i64 [ %.sroa.69.0.copyload.i.i, %bb.h ], [ %.pre.i.i13.i.i.i.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.outer.backedge ]
  %.ph34 = phi ptr [ %.sroa.5.0.copyload.i.i, %bb.h ], [ %i.bv, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.outer.backedge ]
  %.ph35 = phi i64 [ %.sroa.7.0.copyload.i.i, %bb.h ], [ %i.bw, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.outer.backedge ]
  %.ph36 = phi ptr [ %spec.select.i, %bb.h ], [ %spec.select.i.i.i.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.outer.backedge ]
  %.sroa.0.0.i.i.i.i.ph = phi i16 [ %i.ba, %bb.h ], [ %.sroa.0.0.i.i.i.i.ph.be, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.outer.backedge ] ; 7 uses
  %i.bb = and i16 %.sroa.0.0.i.i.i.i.ph, 32767
  %i.bc = icmp samesign ugt i16 %i.bb, 31744
  br label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i, !dbg !181089

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.backedge, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.outer
  %i.bd = phi i64 [ %.ph, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.outer ], [ %i.bu, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.backedge ] ; 4 uses
  %.pre.i.i14.i.i.i.i = phi i64 [ %.pre.i.i14.i.i.i.i.ph, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.outer ], [ %.pre.i.i13.i.i.i.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.backedge ] ; 2 uses
  %i.be = phi ptr [ %.ph34, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.outer ], [ %i.bv, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.backedge ] ; 4 uses
  %i.bf = phi i64 [ %.ph35, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.outer ], [ %i.bw, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.backedge ] ; 2 uses
  %i.bg = phi ptr [ %.ph36, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.outer ], [ %spec.select.i.i.i.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.backedge ] ; 3 uses
  %i.bh = icmp eq ptr %i.bg, %.sroa.5.0.copyload.i, !dbg !181090 ; 2 uses
  %spec.select.idx.i.i.i.i = select i1 %i.bh, i64 0, i64 2, !dbg !181091
  %spec.select.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 %spec.select.idx.i.i.i.i, !dbg !181091 ; 2 uses
  %spec.select21.i.i.i.i = select i1 %i.bh, ptr null, ptr %i.bg, !dbg !181091
  %i.bi = icmp eq i64 %i.bf, 0, !dbg !181089
  br i1 %i.bi, label %bb.i, label %._crit_edge.i.i.i.i.i.i, !dbg !181089

bb.i:                                             ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i
  %i.bj = icmp eq i64 %i.bd, 0, !dbg !181092
  br i1 %i.bj, label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i, !dbg !181092

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i: ; preds = %bb.i
  %.sroa.0.0.i.i.i.i.i8.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.bd, i64 64), !dbg !181093 ; 2 uses
  %i.bk = sub nuw i64 %i.bd, %.sroa.0.0.i.i.i.i.i8.i.i, !dbg !181094
  %.sroa.02.0.copyload.i.i.i.i.i.i = load i64, ptr %i.be, align 1, !dbg !181095, !noalias !181031
  %i.bl = getelementptr inbounds nuw i8, ptr %i.be, i64 8, !dbg !181096
  br label %._crit_edge.i.i.i.i.i.i, !dbg !181097

._crit_edge.i.i.i.i.i.i:                          ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i
  %i.bm = phi i64 [ %i.bk, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i ], [ %i.bd, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ]
  %i.bn = phi ptr [ %i.bl, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i ], [ %i.be, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ]
  %i.bo = phi i64 [ %.sroa.0.0.i.i.i.i.i8.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i ], [ %i.bf, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ], !dbg !181098
  %i.bp = phi i64 [ %.sroa.02.0.copyload.i.i.i.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i ], [ %.pre.i.i14.i.i.i.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ], !dbg !181099 ; 2 uses
  %i.bq = trunc i64 %i.bp to i8, !dbg !181099
  %i.br = lshr i64 %i.bp, 1, !dbg !181100
  %i.bs = add i64 %i.bo, -1, !dbg !181098
  %i.bt = and i8 %i.bq, 1, !dbg !181101
  br label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i, !dbg !181102

_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i, %bb.i
  %i.bu = phi i64 [ %i.bm, %._crit_edge.i.i.i.i.i.i ], [ 0, %bb.i ] ; 2 uses
  %.pre.i.i13.i.i.i.i = phi i64 [ %i.br, %._crit_edge.i.i.i.i.i.i ], [ %.pre.i.i14.i.i.i.i, %bb.i ] ; 2 uses
  %i.bv = phi ptr [ %i.bn, %._crit_edge.i.i.i.i.i.i ], [ %i.be, %bb.i ] ; 2 uses
  %i.bw = phi i64 [ %i.bs, %._crit_edge.i.i.i.i.i.i ], [ 0, %bb.i ] ; 2 uses
  %.sroa.0.0.i8.i.i.i.i.i = phi i8 [ %i.bt, %._crit_edge.i.i.i.i.i.i ], [ 2, %bb.i ], !dbg !181103
  %i.bx = tail call { i8, ptr } @_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionbE3zipRNtNtCs2mZqlW55729_12polars_utils7float164pf16ECskY9G75ZWc4U_11polars_expr(i8 noundef %.sroa.0.0.i8.i.i.i.i.i, ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable_or_null(2) %spec.select21.i.i.i.i), !dbg !181104, !noalias !181032 ; 2 uses
  %i.by = extractvalue { i8, ptr } %i.bx, 0, !dbg !181105
  switch i8 %i.by, label %bb.j [
    i8 2, label %_RNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float16TypeNvYNtNtCs2mZqlW55729_12polars_utils7float164pf16NtNtB2p_7min_max6MinMax17max_propagate_nanE0CskY9G75ZWc4U_11polars_expr.exit
    i8 0, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.backedge
  ], !dbg !181106

bb.j:                                             ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i
  %i.bz = extractvalue { i8, ptr } %i.bx, 1, !dbg !181105 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bz) ]
  %i.ca = load i16, ptr %i.bz, align 2, !dbg !181107, !alias.scope !181033, !noalias !181034, !noundef !3008 ; 6 uses
  br i1 %i.bc, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.backedge, label %bb.k, !dbg !181108

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.backedge: ; preds = %bb.j, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i
  br label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i, !dbg !181090

bb.k:                                             ; preds = %bb.j
  %i.cb = and i16 %i.ca, 32767, !dbg !181109      ; 2 uses
  %i.cc = icmp samesign ugt i16 %i.cb, 31744, !dbg !181109
  br i1 %i.cc, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.outer.backedge, label %bb.l, !dbg !181110

bb.l:                                             ; preds = %bb.k
  %.not.i2.i.i.i.i.i.i = icmp slt i16 %i.ca, 0, !dbg !181111 ; 2 uses
  %i.cd = icmp sgt i16 %.sroa.0.0.i.i.i.i.ph, -1, !dbg !181112
  br i1 %i.cd, label %bb.m, label %bb.n, !dbg !181112

bb.m:                                             ; preds = %bb.l
  br i1 %.not.i2.i.i.i.i.i.i, label %bb.p, label %bb.o, !dbg !181112

bb.n:                                             ; preds = %bb.l
  %i.ce = icmp ugt i16 %i.ca, %.sroa.0.0.i.i.i.i.ph
  %spec.select.i.i.i.i.i.i = and i1 %.not.i2.i.i.i.i.i.i, %i.ce, !dbg !181112
  br label %_RNvXs4_NtCshdiYQzaKNQ1_4half8binary16NtB5_3f16NtNtCscgRAwXFJnXP_4core3cmp10PartialOrd11partial_cmp.exit.thread.i.i.i.i.i.i, !dbg !181112

bb.o:                                             ; preds = %bb.m
  %i.cf = icmp samesign ugt i16 %.sroa.0.0.i.i.i.i.ph, %i.ca, !dbg !181113
  br label %_RNvXs4_NtCshdiYQzaKNQ1_4half8binary16NtB5_3f16NtNtCscgRAwXFJnXP_4core3cmp10PartialOrd11partial_cmp.exit.thread.i.i.i.i.i.i, !dbg !181114

bb.p:                                             ; preds = %bb.m
  %i.cg = or i16 %i.cb, %.sroa.0.0.i.i.i.i.ph, !dbg !181115
  %i.ch = icmp ne i16 %i.cg, 0, !dbg !181115
  br label %_RNvXs4_NtCshdiYQzaKNQ1_4half8binary16NtB5_3f16NtNtCscgRAwXFJnXP_4core3cmp10PartialOrd11partial_cmp.exit.thread.i.i.i.i.i.i, !dbg !181116

_RNvXs4_NtCshdiYQzaKNQ1_4half8binary16NtB5_3f16NtNtCscgRAwXFJnXP_4core3cmp10PartialOrd11partial_cmp.exit.thread.i.i.i.i.i.i: ; preds = %bb.p, %bb.o, %bb.n
  %.sroa.0.0.i3.ph.i.i.i.i.i.i = phi i1 [ %i.ch, %bb.p ], [ %spec.select.i.i.i.i.i.i, %bb.n ], [ %i.cf, %bb.o ]
  %i.ci = select i1 %.sroa.0.0.i3.ph.i.i.i.i.i.i, i16 %.sroa.0.0.i.i.i.i.ph, i16 %i.ca, !dbg !181117
  br label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.outer.backedge, !dbg !181113

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.outer.backedge: ; preds = %_RNvXs4_NtCshdiYQzaKNQ1_4half8binary16NtB5_3f16NtNtCscgRAwXFJnXP_4core3cmp10PartialOrd11partial_cmp.exit.thread.i.i.i.i.i.i, %bb.k
  %.sroa.0.0.i.i.i.i.ph.be = phi i16 [ %i.ca, %bb.k ], [ %i.ci, %_RNvXs4_NtCshdiYQzaKNQ1_4half8binary16NtB5_3f16NtNtCscgRAwXFJnXP_4core3cmp10PartialOrd11partial_cmp.exit.thread.i.i.i.i.i.i ]
  br label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.outer, !dbg !181089

_RNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float16TypeNvYNtNtCs2mZqlW55729_12polars_utils7float164pf16NtNtB2p_7min_max6MinMax17max_propagate_nanE0CskY9G75ZWc4U_11polars_expr.exit: ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i, %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16EENtNtNtBa_6traits8iterator8Iterator6reduceNvYB1n_NtNtB1r_7min_max6MinMax17max_propagate_nanECskY9G75ZWc4U_11polars_expr.exit.i
  %.sroa.0.0.i.pn.i = phi i16 [ %.sroa.0.0.i.i, %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16EENtNtNtBa_6traits8iterator8Iterator6reduceNvYB1n_NtNtB1r_7min_max6MinMax17max_propagate_nanECskY9G75ZWc4U_11polars_expr.exit.i ], [ 1, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i ], [ 0, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i ]
  %.sroa.3.0.i.pn.i = phi i16 [ %.sroa.3.0.i.i, %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16EENtNtNtBa_6traits8iterator8Iterator6reduceNvYB1n_NtNtB1r_7min_max6MinMax17max_propagate_nanECskY9G75ZWc4U_11polars_expr.exit.i ], [ %.sroa.0.0.i.i.i.i.ph, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i ], [ undef, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i ]
  %.pn3.i = insertvalue { i16, i16 } poison, i16 %.sroa.0.0.i.pn.i, 0, !dbg !181118
  %.pn.i = insertvalue { i16, i16 } %.pn3.i, i16 %.sroa.3.0.i.pn.i, 1, !dbg !181118
  ret { i16, i16 } %.pn.i, !dbg !181119
}

; Function Attrs: nonlazybind uwtable
define hidden { i16, i16 } @_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float16TypeNvYNtNtCs2mZqlW55729_12polars_utils7float164pf16NtNtB3e_7min_max6MinMax17min_propagate_nanE0INtB7_5FnMutTRINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayB3a_EEE8call_mutCskY9G75ZWc4U_11polars_expr(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !181120 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [56 x i8], align 8                ; 4 uses
  %i.c = alloca [56 x i8], align 8                ; 9 uses
  %i.d = tail call fastcc noundef zeroext i1 @_RNvXs5_NtCs8774dFTUdNv_12polars_arrow9datatypesNtB5_13ArrowDataTypeNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @227) #40, !dbg !181274
  br i1 %i.d, label %bb.c, label %bb.b, !dbg !181275

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !181276 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !dbg !181276, !noundef !3008
  %.not.i.i.i = icmp eq ptr %i.f, null, !dbg !181276
  br i1 %.not.i.i.i, label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtB7_5Array10null_countCskY9G75ZWc4U_11polars_expr.exit.thread.i, label %bb.d, !dbg !181277

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !181278
  %i.h = load i64, ptr %i.g, align 8, !dbg !181278, !noundef !3008
  br label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtB7_5Array10null_countCskY9G75ZWc4U_11polars_expr.exit.i, !dbg !181279

bb.d:                                             ; preds = %bb.b
  %i.i = tail call noundef i64 @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap10unset_bits(ptr noundef nonnull align 8 %i.e), !dbg !181280
  br label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtB7_5Array10null_countCskY9G75ZWc4U_11polars_expr.exit.i, !dbg !181281

_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtB7_5Array10null_countCskY9G75ZWc4U_11polars_expr.exit.i: ; preds = %bb.d, %bb.c
  %.sroa.0.1.i.i = phi i64 [ %i.h, %bb.c ], [ %i.i, %bb.d ], !dbg !181282
  %i.j = icmp eq i64 %.sroa.0.1.i.i, 0, !dbg !181283
  br i1 %i.j, label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtB7_5Array10null_countCskY9G75ZWc4U_11polars_expr.exit.thread.i, label %bb.f, !dbg !181283

_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtB7_5Array10null_countCskY9G75ZWc4U_11polars_expr.exit.thread.i: ; preds = %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtB7_5Array10null_countCskY9G75ZWc4U_11polars_expr.exit.i, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !181284
  %i.l = load ptr, ptr %i.k, align 8, !dbg !181284, !nonnull !3008, !noundef !3008 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !181285
  %i.n = load i64, ptr %i.m, align 8, !dbg !181285, !noundef !3008
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.n, !dbg !181286
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.l, ptr %i.a, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.o, ptr %i.p, align 8
  %i.q = call { i16, i16 } @_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16EENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a), !dbg !181287 ; 2 uses
  %i.r = extractvalue { i16, i16 } %i.q, 0, !dbg !181288
  %i.s = trunc i16 %i.r to i1, !dbg !181289
  br i1 %i.s, label %bb.e, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16EENtNtNtBa_6traits8iterator8Iterator6reduceNvYB1n_NtNtB1r_7min_max6MinMax17min_propagate_nanECskY9G75ZWc4U_11polars_expr.exit.i, !dbg !181289

bb.e:                                             ; preds = %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtB7_5Array10null_countCskY9G75ZWc4U_11polars_expr.exit.thread.i
  %i.t = extractvalue { i16, i16 } %i.q, 1, !dbg !181288
  %i.u = load ptr, ptr %i.a, align 8, !dbg !181290, !nonnull !3008, !noundef !3008
  %i.v = load ptr, ptr %i.p, align 8, !dbg !181290, !noundef !3008
  %i.w = call noundef i16 @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16EENtNtNtB9_6traits8iterator8Iterator4foldB1s_NvYB1s_NtNtB1w_7min_max6MinMax17min_propagate_nanECskY9G75ZWc4U_11polars_expr(ptr noundef nonnull %i.u, ptr noundef %i.v, i16 noundef %i.t), !dbg !181291
  br label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16EENtNtNtBa_6traits8iterator8Iterator6reduceNvYB1n_NtNtB1r_7min_max6MinMax17min_propagate_nanECskY9G75ZWc4U_11polars_expr.exit.i, !dbg !181292

_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16EENtNtNtBa_6traits8iterator8Iterator6reduceNvYB1n_NtNtB1r_7min_max6MinMax17min_propagate_nanECskY9G75ZWc4U_11polars_expr.exit.i: ; preds = %bb.e, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtB7_5Array10null_countCskY9G75ZWc4U_11polars_expr.exit.thread.i
  %.sroa.3.0.i.i = phi i16 [ %i.w, %bb.e ], [ undef, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtB7_5Array10null_countCskY9G75ZWc4U_11polars_expr.exit.thread.i ]
  %.sroa.0.0.i.i = phi i16 [ 1, %bb.e ], [ 0, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtB7_5Array10null_countCskY9G75ZWc4U_11polars_expr.exit.thread.i ], !dbg !181293
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !181294
  br label %_RNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float16TypeNvYNtNtCs2mZqlW55729_12polars_utils7float164pf16NtNtB2p_7min_max6MinMax17min_propagate_nanE0CskY9G75ZWc4U_11polars_expr.exit, !dbg !181295

bb.f:                                             ; preds = %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtB7_5Array10null_countCskY9G75ZWc4U_11polars_expr.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !181296
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !181296
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !181297
  %i.y = load ptr, ptr %i.x, align 8, !dbg !181297, !nonnull !3008, !noundef !3008 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !181298
  %i.aa = load i64, ptr %i.z, align 8, !dbg !181298, !noundef !3008
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %i.aa, !dbg !181299
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !181300 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !dbg !181300, !noundef !3008
  %.not.i = icmp eq ptr %i.ad, null, !dbg !181300
  %..i = select i1 %.not.i, ptr null, ptr %i.ac, !dbg !181301
  call void @_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRNtNtCs2mZqlW55729_12polars_utils7float164pf16INtNtNtCscgRAwXFJnXP_4core5slice4iter4IterB1o_ENtNtB7_8iterator10BitmapIterE17new_with_validityCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.b, ptr noundef nonnull %i.y, ptr noundef nonnull %i.ab, ptr noundef align 8 %..i), !dbg !181302
  call void @_RNvMs9_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRNtNtCs2mZqlW55729_12polars_utils7float164pf16INtNtNtCscgRAwXFJnXP_4core5slice4iter4IterB1o_ENtNtB7_8iterator10BitmapIterE15unwrap_optionalCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.c, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.b), !dbg !181303
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !181304
  %.sroa.0.0.copyload.i = load ptr, ptr %i.c, align 8, !dbg !181305
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !181305
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !181305, !nonnull !3008, !noundef !3008 ; 2 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !181305
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !181305
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !181305
  %.sroa.10.0.copyload.i = load i64, ptr %.sroa.10.0..sroa_idx.i, align 8, !dbg !181305
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40, !dbg !181305
  %.sroa.12.0.copyload.i = load i64, ptr %.sroa.12.0..sroa_idx.i, align 8, !dbg !181305 ; 2 uses
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48, !dbg !181305
  %.sroa.14.0.copyload.i = load i64, ptr %.sroa.14.0..sroa_idx.i, align 8, !dbg !181305 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !181306
  br label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8find_map5checkINtNtBe_6option6OptionRNtNtCs2mZqlW55729_12polars_utils7float164pf16EB1D_QNCNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float16TypeNvYB1D_NtNtB1H_7min_max6MinMax17min_propagate_nanE00E0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i, !dbg !181307

_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8find_map5checkINtNtBe_6option6OptionRNtNtCs2mZqlW55729_12polars_utils7float164pf16EB1D_QNCNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float16TypeNvYB1D_NtNtB1H_7min_max6MinMax17min_propagate_nanE00E0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i: ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i, %bb.f
  %.sroa.8.0.copyload21.i.i = phi i64 [ %.sroa.8.0.copyload.i.i, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i ], [ %.sroa.14.0.copyload.i, %bb.f ] ; 2 uses
  %.sroa.7.0.copyload17.i.i = phi i64 [ %.sroa.7.0.copyload.i.i, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i ], [ %.sroa.12.0.copyload.i, %bb.f ]
  %i.ae = phi i64 [ %i.av, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i ], [ %.sroa.14.0.copyload.i, %bb.f ] ; 4 uses
  %.pre.i.i19.i.i.i.i.i = phi i64 [ %.sroa.69.0.copyload.i.i, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i ], [ %.sroa.10.0.copyload.i, %bb.f ] ; 2 uses
  %i.af = phi ptr [ %.sroa.5.0.copyload.i.i, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i ], [ %.sroa.6.0.copyload.i, %bb.f ] ; 4 uses
  %i.ag = phi i64 [ %i.aw, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i ], [ %.sroa.12.0.copyload.i, %bb.f ] ; 2 uses
  %i.ah = phi ptr [ %spec.select.i, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i ], [ %.sroa.0.0.copyload.i, %bb.f ] ; 3 uses
  %i.ai = icmp eq ptr %i.ah, %.sroa.5.0.copyload.i, !dbg !181308 ; 2 uses
  %spec.select.idx.i = select i1 %i.ai, i64 0, i64 2, !dbg !181309
  %spec.select.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 %spec.select.idx.i, !dbg !181309 ; 2 uses
  %spec.select2.i = select i1 %i.ai, ptr null, ptr %i.ah, !dbg !181309
  %i.aj = icmp eq i64 %i.ag, 0, !dbg !181310
  br i1 %i.aj, label %bb.g, label %._crit_edge.i.i.i.i.i.i.i, !dbg !181310

bb.g:                                             ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8find_map5checkINtNtBe_6option6OptionRNtNtCs2mZqlW55729_12polars_utils7float164pf16EB1D_QNCNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float16TypeNvYB1D_NtNtB1H_7min_max6MinMax17min_propagate_nanE00E0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i
  %i.ak = icmp eq i64 %i.ae, 0, !dbg !181311
  br i1 %i.ak, label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.i, !dbg !181311

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.i: ; preds = %bb.g
  %.sroa.0.0.i.i.i.i.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.ae, i64 64), !dbg !181312 ; 2 uses
  %i.al = sub nuw i64 %i.ae, %.sroa.0.0.i.i.i.i.i.i.i.i, !dbg !181313 ; 2 uses
  %.sroa.02.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.af, align 1, !dbg !181314, !noalias !181266
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 8, !dbg !181315
  br label %._crit_edge.i.i.i.i.i.i.i, !dbg !181316

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.i, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8find_map5checkINtNtBe_6option6OptionRNtNtCs2mZqlW55729_12polars_utils7float164pf16EB1D_QNCNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float16TypeNvYB1D_NtNtB1H_7min_max6MinMax17min_propagate_nanE00E0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i
  %.sroa.8.0.copyload20.i.i = phi i64 [ %i.al, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.i ], [ %.sroa.8.0.copyload21.i.i, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8find_map5checkINtNtBe_6option6OptionRNtNtCs2mZqlW55729_12polars_utils7float164pf16EB1D_QNCNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float16TypeNvYB1D_NtNtB1H_7min_max6MinMax17min_propagate_nanE00E0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ]
  %i.an = phi i64 [ %i.al, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.i ], [ %i.ae, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8find_map5checkINtNtBe_6option6OptionRNtNtCs2mZqlW55729_12polars_utils7float164pf16EB1D_QNCNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float16TypeNvYB1D_NtNtB1H_7min_max6MinMax17min_propagate_nanE00E0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ]
  %i.ao = phi ptr [ %i.am, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.i ], [ %i.af, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8find_map5checkINtNtBe_6option6OptionRNtNtCs2mZqlW55729_12polars_utils7float164pf16EB1D_QNCNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float16TypeNvYB1D_NtNtB1H_7min_max6MinMax17min_propagate_nanE00E0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ]
  %i.ap = phi i64 [ %.sroa.0.0.i.i.i.i.i.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.i ], [ %i.ag, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8find_map5checkINtNtBe_6option6OptionRNtNtCs2mZqlW55729_12polars_utils7float164pf16EB1D_QNCNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float16TypeNvYB1D_NtNtB1H_7min_max6MinMax17min_propagate_nanE00E0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ], !dbg !181317
  %i.aq = phi i64 [ %.sroa.02.0.copyload.i.i.i.i.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.i ], [ %.pre.i.i19.i.i.i.i.i, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8find_map5checkINtNtBe_6option6OptionRNtNtCs2mZqlW55729_12polars_utils7float164pf16EB1D_QNCNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float16TypeNvYB1D_NtNtB1H_7min_max6MinMax17min_propagate_nanE00E0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ], !dbg !181318 ; 2 uses
  %i.ar = trunc i64 %i.aq to i8, !dbg !181318
  %i.as = lshr i64 %i.aq, 1, !dbg !181319
  %i.at = add i64 %i.ap, -1, !dbg !181317         ; 2 uses
  %i.au = and i8 %i.ar, 1, !dbg !181320
  br label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i, !dbg !181321

_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i, %bb.g
  %.sroa.8.0.copyload.i.i = phi i64 [ %.sroa.8.0.copyload20.i.i, %._crit_edge.i.i.i.i.i.i.i ], [ %.sroa.8.0.copyload21.i.i, %bb.g ] ; 2 uses
  %.sroa.7.0.copyload.i.i = phi i64 [ %i.at, %._crit_edge.i.i.i.i.i.i.i ], [ %.sroa.7.0.copyload17.i.i, %bb.g ] ; 2 uses
  %i.av = phi i64 [ %i.an, %._crit_edge.i.i.i.i.i.i.i ], [ 0, %bb.g ]
  %.sroa.69.0.copyload.i.i = phi i64 [ %i.as, %._crit_edge.i.i.i.i.i.i.i ], [ %.pre.i.i19.i.i.i.i.i, %bb.g ] ; 2 uses
  %.sroa.5.0.copyload.i.i = phi ptr [ %i.ao, %._crit_edge.i.i.i.i.i.i.i ], [ %i.af, %bb.g ] ; 2 uses
  %i.aw = phi i64 [ %i.at, %._crit_edge.i.i.i.i.i.i.i ], [ 0, %bb.g ]
  %.sroa.0.0.i8.i.i.i.i.i.i = phi i8 [ %i.au, %._crit_edge.i.i.i.i.i.i.i ], [ 2, %bb.g ], !dbg !181322
  %i.ax = tail call { i8, ptr } @_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionbE3zipRNtNtCs2mZqlW55729_12polars_utils7float164pf16ECskY9G75ZWc4U_11polars_expr(i8 noundef %.sroa.0.0.i8.i.i.i.i.i.i, ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable_or_null(2) %spec.select2.i), !dbg !181323, !noalias !181267 ; 2 uses
  %i.ay = extractvalue { i8, ptr } %i.ax, 0, !dbg !181324
  switch i8 %i.ay, label %bb.h [
    i8 2, label %_RNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float16TypeNvYNtNtCs2mZqlW55729_12polars_utils7float164pf16NtNtB2p_7min_max6MinMax17min_propagate_nanE0CskY9G75ZWc4U_11polars_expr.exit
    i8 0, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8find_map5checkINtNtBe_6option6OptionRNtNtCs2mZqlW55729_12polars_utils7float164pf16EB1D_QNCNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float16TypeNvYB1D_NtNtB1H_7min_max6MinMax17min_propagate_nanE00E0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i
  ], !dbg !181325

bb.h:                                             ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i
  %i.az = extractvalue { i8, ptr } %i.ax, 1, !dbg !181324 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.az) ]
  %i.ba = load i16, ptr %i.az, align 2, !dbg !181326, !alias.scope !181268, !noalias !181269, !noundef !3008
  br label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.outer, !dbg !181327

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.outer: ; preds = %_RNvYNvYNtNtCs2mZqlW55729_12polars_utils7float164pf16NtNtB9_7min_max6MinMax17min_propagate_nanINtNtNtCscgRAwXFJnXP_4core3ops8function5FnMutTB5_B5_EE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i, %bb.h
  %.ph = phi i64 [ %i.bs, %_RNvYNvYNtNtCs2mZqlW55729_12polars_utils7float164pf16NtNtB9_7min_max6MinMax17min_propagate_nanINtNtNtCscgRAwXFJnXP_4core3ops8function5FnMutTB5_B5_EE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ], [ %.sroa.8.0.copyload.i.i, %bb.h ]
  %.pre.i.i15.i.i.i.i.ph = phi i64 [ %.pre.i.i14.i.i.i.i, %_RNvYNvYNtNtCs2mZqlW55729_12polars_utils7float164pf16NtNtB9_7min_max6MinMax17min_propagate_nanINtNtNtCscgRAwXFJnXP_4core3ops8function5FnMutTB5_B5_EE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ], [ %.sroa.69.0.copyload.i.i, %bb.h ]
  %.ph34 = phi ptr [ %i.bt, %_RNvYNvYNtNtCs2mZqlW55729_12polars_utils7float164pf16NtNtB9_7min_max6MinMax17min_propagate_nanINtNtNtCscgRAwXFJnXP_4core3ops8function5FnMutTB5_B5_EE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ], [ %.sroa.5.0.copyload.i.i, %bb.h ]
  %.ph35 = phi i64 [ %i.bu, %_RNvYNvYNtNtCs2mZqlW55729_12polars_utils7float164pf16NtNtB9_7min_max6MinMax17min_propagate_nanINtNtNtCscgRAwXFJnXP_4core3ops8function5FnMutTB5_B5_EE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ], [ %.sroa.7.0.copyload.i.i, %bb.h ]
  %.ph36 = phi ptr [ %spec.select.i.i.i.i, %_RNvYNvYNtNtCs2mZqlW55729_12polars_utils7float164pf16NtNtB9_7min_max6MinMax17min_propagate_nanINtNtNtCscgRAwXFJnXP_4core3ops8function5FnMutTB5_B5_EE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ], [ %spec.select.i, %bb.h ]
  %.sroa.0.0.i.i.i.i.ph = phi i16 [ %.sroa.0.0.i.i.i6.i.i.i.i, %_RNvYNvYNtNtCs2mZqlW55729_12polars_utils7float164pf16NtNtB9_7min_max6MinMax17min_propagate_nanINtNtNtCscgRAwXFJnXP_4core3ops8function5FnMutTB5_B5_EE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ], [ %i.ba, %bb.h ] ; 6 uses
  br label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i, !dbg !181328

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.outer, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i
  %i.bb = phi i64 [ %i.bs, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i ], [ %.ph, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.outer ] ; 4 uses
  %.pre.i.i15.i.i.i.i = phi i64 [ %.pre.i.i14.i.i.i.i, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i ], [ %.pre.i.i15.i.i.i.i.ph, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.outer ] ; 2 uses
  %i.bc = phi ptr [ %i.bt, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i ], [ %.ph34, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.outer ] ; 4 uses
  %i.bd = phi i64 [ %i.bu, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i ], [ %.ph35, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.outer ] ; 2 uses
  %i.be = phi ptr [ %spec.select.i.i.i.i, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i ], [ %.ph36, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.outer ] ; 3 uses
  %i.bf = icmp eq ptr %i.be, %.sroa.5.0.copyload.i, !dbg !181329 ; 2 uses
  %spec.select.idx.i.i.i.i = select i1 %i.bf, i64 0, i64 2, !dbg !181330
  %spec.select.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 %spec.select.idx.i.i.i.i, !dbg !181330 ; 2 uses
  %spec.select23.i.i.i.i = select i1 %i.bf, ptr null, ptr %i.be, !dbg !181330
  %i.bg = icmp eq i64 %i.bd, 0, !dbg !181328
  br i1 %i.bg, label %bb.i, label %._crit_edge.i.i.i.i.i.i, !dbg !181328

bb.i:                                             ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i
  %i.bh = icmp eq i64 %i.bb, 0, !dbg !181331
  br i1 %i.bh, label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i, !dbg !181331

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i: ; preds = %bb.i
  %.sroa.0.0.i.i.i.i.i8.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.bb, i64 64), !dbg !181332 ; 2 uses
  %i.bi = sub nuw i64 %i.bb, %.sroa.0.0.i.i.i.i.i8.i.i, !dbg !181333
  %.sroa.02.0.copyload.i.i.i.i.i.i = load i64, ptr %i.bc, align 1, !dbg !181334, !noalias !181270
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bc, i64 8, !dbg !181335
  br label %._crit_edge.i.i.i.i.i.i, !dbg !181336

._crit_edge.i.i.i.i.i.i:                          ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i
  %i.bk = phi i64 [ %i.bi, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i ], [ %i.bb, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ]
  %i.bl = phi ptr [ %i.bj, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i ], [ %i.bc, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ]
  %i.bm = phi i64 [ %.sroa.0.0.i.i.i.i.i8.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i ], [ %i.bd, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ], !dbg !181337
  %i.bn = phi i64 [ %.sroa.02.0.copyload.i.i.i.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i ], [ %.pre.i.i15.i.i.i.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ], !dbg !181338 ; 2 uses
  %i.bo = trunc i64 %i.bn to i8, !dbg !181338
  %i.bp = lshr i64 %i.bn, 1, !dbg !181339
  %i.bq = add i64 %i.bm, -1, !dbg !181337
  %i.br = and i8 %i.bo, 1, !dbg !181340
  br label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i, !dbg !181341

_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i, %bb.i
  %i.bs = phi i64 [ %i.bk, %._crit_edge.i.i.i.i.i.i ], [ 0, %bb.i ] ; 2 uses
  %.pre.i.i14.i.i.i.i = phi i64 [ %i.bp, %._crit_edge.i.i.i.i.i.i ], [ %.pre.i.i15.i.i.i.i, %bb.i ] ; 2 uses
  %i.bt = phi ptr [ %i.bl, %._crit_edge.i.i.i.i.i.i ], [ %i.bc, %bb.i ] ; 2 uses
  %i.bu = phi i64 [ %i.bq, %._crit_edge.i.i.i.i.i.i ], [ 0, %bb.i ] ; 2 uses
  %.sroa.0.0.i8.i.i.i.i.i = phi i8 [ %i.br, %._crit_edge.i.i.i.i.i.i ], [ 2, %bb.i ], !dbg !181342
  %i.bv = tail call { i8, ptr } @_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionbE3zipRNtNtCs2mZqlW55729_12polars_utils7float164pf16ECskY9G75ZWc4U_11polars_expr(i8 noundef %.sroa.0.0.i8.i.i.i.i.i, ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable_or_null(2) %spec.select23.i.i.i.i), !dbg !181343, !noalias !181271 ; 2 uses
  %i.bw = extractvalue { i8, ptr } %i.bv, 0, !dbg !181344
  switch i8 %i.bw, label %bb.j [
    i8 2, label %_RNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float16TypeNvYNtNtCs2mZqlW55729_12polars_utils7float164pf16NtNtB2p_7min_max6MinMax17min_propagate_nanE0CskY9G75ZWc4U_11polars_expr.exit
    i8 0, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i
  ], !dbg !181345

bb.j:                                             ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i
  %i.bx = extractvalue { i8, ptr } %i.bv, 1, !dbg !181344 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bx) ]
  %i.by = load i16, ptr %i.bx, align 2, !dbg !181346, !alias.scope !181272, !noalias !181273, !noundef !3008 ; 6 uses
  %i.bz = and i16 %.sroa.0.0.i.i.i.i.ph, 32767, !dbg !181347 ; 2 uses
  %i.ca = icmp samesign ugt i16 %i.bz, 31744, !dbg !181347 ; 2 uses
  %i.cb = and i16 %i.by, 32767
  %i.cc = icmp samesign ugt i16 %i.cb, 31744
  %or.cond.i.i.i.i.i.i = select i1 %i.ca, i1 true, i1 %i.cc, !dbg !181348
  br i1 %or.cond.i.i.i.i.i.i, label %_RNvYNvYNtNtCs2mZqlW55729_12polars_utils7float164pf16NtNtB9_7min_max6MinMax17min_propagate_nanINtNtNtCscgRAwXFJnXP_4core3ops8function5FnMutTB5_B5_EE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i, label %bb.k, !dbg !181348

bb.k:                                             ; preds = %bb.j
  %.not.i2.i.i.i.i.i.i = icmp sgt i16 %i.by, -1, !dbg !181349 ; 2 uses
  %i.cd = icmp sgt i16 %.sroa.0.0.i.i.i.i.ph, -1, !dbg !181350
  br i1 %i.cd, label %bb.l, label %bb.m, !dbg !181350

bb.l:                                             ; preds = %bb.k
  %i.ce = icmp ult i16 %.sroa.0.0.i.i.i.i.ph, %i.by
  %spec.select.i.i.i.i.i.i = and i1 %.not.i2.i.i.i.i.i.i, %i.ce, !dbg !181350
  br label %_RNvYNvYNtNtCs2mZqlW55729_12polars_utils7float164pf16NtNtB9_7min_max6MinMax17min_propagate_nanINtNtNtCscgRAwXFJnXP_4core3ops8function5FnMutTB5_B5_EE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i, !dbg !181350

bb.m:                                             ; preds = %bb.k
  br i1 %.not.i2.i.i.i.i.i.i, label %bb.n, label %bb.o, !dbg !181350

bb.n:                                             ; preds = %bb.m
  %i.cf = or i16 %i.by, %i.bz, !dbg !181351
  %i.cg = icmp ne i16 %i.cf, 0, !dbg !181351
  br label %_RNvYNvYNtNtCs2mZqlW55729_12polars_utils7float164pf16NtNtB9_7min_max6MinMax17min_propagate_nanINtNtNtCscgRAwXFJnXP_4core3ops8function5FnMutTB5_B5_EE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i, !dbg !181352

bb.o:                                             ; preds = %bb.m
  %i.ch = icmp samesign ult i16 %i.by, %.sroa.0.0.i.i.i.i.ph, !dbg !181353
  br label %_RNvYNvYNtNtCs2mZqlW55729_12polars_utils7float164pf16NtNtB9_7min_max6MinMax17min_propagate_nanINtNtNtCscgRAwXFJnXP_4core3ops8function5FnMutTB5_B5_EE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i, !dbg !181354

_RNvYNvYNtNtCs2mZqlW55729_12polars_utils7float164pf16NtNtB9_7min_max6MinMax17min_propagate_nanINtNtNtCscgRAwXFJnXP_4core3ops8function5FnMutTB5_B5_EE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i: ; preds = %bb.o, %bb.n, %bb.l, %bb.j
  %.sroa.0.0.i3.i.i.i.i.i.i = phi i1 [ %i.cg, %bb.n ], [ %i.ch, %bb.o ], [ false, %bb.j ], [ %spec.select.i.i.i.i.i.i, %bb.l ], !dbg !181355
  %i.ci = or i1 %i.ca, %.sroa.0.0.i3.i.i.i.i.i.i, !dbg !181356
  %.sroa.0.0.i.i.i6.i.i.i.i = select i1 %i.ci, i16 %.sroa.0.0.i.i.i.i.ph, i16 %i.by, !dbg !181356
  br label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.outer, !dbg !181357

_RNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float16TypeNvYNtNtCs2mZqlW55729_12polars_utils7float164pf16NtNtB2p_7min_max6MinMax17min_propagate_nanE0CskY9G75ZWc4U_11polars_expr.exit: ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i, %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16EENtNtNtBa_6traits8iterator8Iterator6reduceNvYB1n_NtNtB1r_7min_max6MinMax17min_propagate_nanECskY9G75ZWc4U_11polars_expr.exit.i
  %.sroa.0.0.i.pn.i = phi i16 [ %.sroa.0.0.i.i, %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16EENtNtNtBa_6traits8iterator8Iterator6reduceNvYB1n_NtNtB1r_7min_max6MinMax17min_propagate_nanECskY9G75ZWc4U_11polars_expr.exit.i ], [ 1, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i ], [ 0, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i ]
  %.sroa.3.0.i.pn.i = phi i16 [ %.sroa.3.0.i.i, %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16EENtNtNtBa_6traits8iterator8Iterator6reduceNvYB1n_NtNtB1r_7min_max6MinMax17min_propagate_nanECskY9G75ZWc4U_11polars_expr.exit.i ], [ %.sroa.0.0.i.i.i.i.ph, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i ], [ undef, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i ]
  %.pn3.i = insertvalue { i16, i16 } poison, i16 %.sroa.0.0.i.pn.i, 0, !dbg !181358
  %.pn.i = insertvalue { i16, i16 } %.pn3.i, i16 %.sroa.3.0.i.pn.i, 1, !dbg !181358
  ret { i16, i16 } %.pn.i, !dbg !181359
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, float } @_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeNvYfNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanE0INtB7_5FnMutTRINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayfEEE8call_mutCskY9G75ZWc4U_11polars_expr(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !181360 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [56 x i8], align 8                ; 4 uses
  %i.c = alloca [56 x i8], align 8                ; 9 uses
  %i.d = tail call fastcc noundef zeroext i1 @_RNvXs5_NtCs8774dFTUdNv_12polars_arrow9datatypesNtB5_13ArrowDataTypeNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @227) #40, !dbg !181508
  br i1 %i.d, label %bb.c, label %bb.b, !dbg !181509

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !181510 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !dbg !181510, !noundef !3008
  %.not.i.i.i = icmp eq ptr %i.f, null, !dbg !181510
  br i1 %.not.i.i.i, label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayfENtB7_5Array10null_countCskY9G75ZWc4U_11polars_expr.exit.thread.i, label %bb.d, !dbg !181511

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !181512
  %i.h = load i64, ptr %i.g, align 8, !dbg !181512, !noundef !3008
  br label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayfENtB7_5Array10null_countCskY9G75ZWc4U_11polars_expr.exit.i, !dbg !181513

bb.d:                                             ; preds = %bb.b
  %i.i = tail call noundef i64 @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap10unset_bits(ptr noundef nonnull align 8 %i.e), !dbg !181514
  br label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayfENtB7_5Array10null_countCskY9G75ZWc4U_11polars_expr.exit.i, !dbg !181515

_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayfENtB7_5Array10null_countCskY9G75ZWc4U_11polars_expr.exit.i: ; preds = %bb.d, %bb.c
  %.sroa.0.1.i.i = phi i64 [ %i.h, %bb.c ], [ %i.i, %bb.d ], !dbg !181516
  %i.j = icmp eq i64 %.sroa.0.1.i.i, 0, !dbg !181517
  br i1 %i.j, label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayfENtB7_5Array10null_countCskY9G75ZWc4U_11polars_expr.exit.thread.i, label %bb.f, !dbg !181517

_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayfENtB7_5Array10null_countCskY9G75ZWc4U_11polars_expr.exit.thread.i: ; preds = %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayfENtB7_5Array10null_countCskY9G75ZWc4U_11polars_expr.exit.i, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !181518
  %i.l = load ptr, ptr %i.k, align 8, !dbg !181518, !nonnull !3008, !noundef !3008 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !181519
  %i.n = load i64, ptr %i.m, align 8, !dbg !181519, !noundef !3008
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.n, !dbg !181520
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.l, ptr %i.a, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.o, ptr %i.p, align 8
  %i.q = call { i32, float } @_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterfEENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a), !dbg !181521 ; 2 uses
  %i.r = extractvalue { i32, float } %i.q, 0, !dbg !181522
  %i.s = trunc i32 %i.r to i1, !dbg !181523
  br i1 %i.s, label %bb.e, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterfEENtNtNtBa_6traits8iterator8Iterator6reduceNvYfNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanECskY9G75ZWc4U_11polars_expr.exit.i, !dbg !181523

bb.e:                                             ; preds = %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayfENtB7_5Array10null_countCskY9G75ZWc4U_11polars_expr.exit.thread.i
  %i.t = extractvalue { i32, float } %i.q, 1, !dbg !181522
  %i.u = load ptr, ptr %i.a, align 8, !dbg !181524, !nonnull !3008, !noundef !3008
  %i.v = load ptr, ptr %i.p, align 8, !dbg !181524, !noundef !3008
  %i.w = call noundef float @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterfEENtNtNtB9_6traits8iterator8Iterator4foldfNvYfNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanECskY9G75ZWc4U_11polars_expr(ptr noundef nonnull %i.u, ptr noundef %i.v, float noundef %i.t), !dbg !181525
  br label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterfEENtNtNtBa_6traits8iterator8Iterator6reduceNvYfNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanECskY9G75ZWc4U_11polars_expr.exit.i, !dbg !181526

_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterfEENtNtNtBa_6traits8iterator8Iterator6reduceNvYfNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanECskY9G75ZWc4U_11polars_expr.exit.i: ; preds = %bb.e, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayfENtB7_5Array10null_countCskY9G75ZWc4U_11polars_expr.exit.thread.i
  %.sroa.3.0.i.i = phi float [ %i.w, %bb.e ], [ undef, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayfENtB7_5Array10null_countCskY9G75ZWc4U_11polars_expr.exit.thread.i ]
  %.sroa.0.0.i.i = phi i32 [ 1, %bb.e ], [ 0, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayfENtB7_5Array10null_countCskY9G75ZWc4U_11polars_expr.exit.thread.i ], !dbg !181527
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !181528
  br label %_RNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeNvYfNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanE0CskY9G75ZWc4U_11polars_expr.exit, !dbg !181529

bb.f:                                             ; preds = %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayfENtB7_5Array10null_countCskY9G75ZWc4U_11polars_expr.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !181530
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !181530
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !181531
  %i.y = load ptr, ptr %i.x, align 8, !dbg !181531, !nonnull !3008, !noundef !3008 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !181532
  %i.aa = load i64, ptr %i.z, align 8, !dbg !181532, !noundef !3008
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.aa, !dbg !181533
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !181534 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !dbg !181534, !noundef !3008
  %.not.i = icmp eq ptr %i.ad, null, !dbg !181534
  %..i = select i1 %.not.i, ptr null, ptr %i.ac, !dbg !181535
  call void @_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRfINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterfENtNtB7_8iterator10BitmapIterE17new_with_validityCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.b, ptr noundef nonnull %i.y, ptr noundef nonnull %i.ab, ptr noundef align 8 %..i), !dbg !181536
  call void @_RNvMs9_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRfINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterfENtNtB7_8iterator10BitmapIterE15unwrap_optionalCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.c, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.b), !dbg !181537
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !181538
  %.sroa.0.0.copyload.i = load ptr, ptr %i.c, align 8, !dbg !181539
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !181539
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !181539, !nonnull !3008, !noundef !3008 ; 2 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !181539
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !181539
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !181539
  %.sroa.10.0.copyload.i = load i64, ptr %.sroa.10.0..sroa_idx.i, align 8, !dbg !181539
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40, !dbg !181539
  %.sroa.12.0.copyload.i = load i64, ptr %.sroa.12.0..sroa_idx.i, align 8, !dbg !181539 ; 2 uses
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48, !dbg !181539
  %.sroa.14.0.copyload.i = load i64, ptr %.sroa.14.0..sroa_idx.i, align 8, !dbg !181539 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !181540
  br label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8find_map5checkINtNtBe_6option6OptionRfEfQNCNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeNvYfNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanE00E0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i, !dbg !181541

_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8find_map5checkINtNtBe_6option6OptionRfEfQNCNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeNvYfNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanE00E0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i: ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i, %bb.f
  %.sroa.8.0.copyload21.i.i = phi i64 [ %.sroa.8.0.copyload.i.i, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i ], [ %.sroa.14.0.copyload.i, %bb.f ] ; 2 uses
  %.sroa.7.0.copyload17.i.i = phi i64 [ %.sroa.7.0.copyload.i.i, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i ], [ %.sroa.12.0.copyload.i, %bb.f ]
  %i.ae = phi i64 [ %i.av, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i ], [ %.sroa.14.0.copyload.i, %bb.f ] ; 4 uses
  %.pre.i.i19.i.i.i.i.i = phi i64 [ %.sroa.69.0.copyload.i.i, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i ], [ %.sroa.10.0.copyload.i, %bb.f ] ; 2 uses
  %i.af = phi ptr [ %.sroa.5.0.copyload.i.i, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i ], [ %.sroa.6.0.copyload.i, %bb.f ] ; 4 uses
  %i.ag = phi i64 [ %i.aw, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i ], [ %.sroa.12.0.copyload.i, %bb.f ] ; 2 uses
  %i.ah = phi ptr [ %spec.select.i, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i ], [ %.sroa.0.0.copyload.i, %bb.f ] ; 3 uses
  %i.ai = icmp eq ptr %i.ah, %.sroa.5.0.copyload.i, !dbg !181542 ; 2 uses
  %spec.select.idx.i = select i1 %i.ai, i64 0, i64 4, !dbg !181543
  %spec.select.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 %spec.select.idx.i, !dbg !181543 ; 2 uses
  %spec.select2.i = select i1 %i.ai, ptr null, ptr %i.ah, !dbg !181543
  %i.aj = icmp eq i64 %i.ag, 0, !dbg !181544
  br i1 %i.aj, label %bb.g, label %._crit_edge.i.i.i.i.i.i.i, !dbg !181544

bb.g:                                             ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8find_map5checkINtNtBe_6option6OptionRfEfQNCNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeNvYfNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanE00E0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i
  %i.ak = icmp eq i64 %i.ae, 0, !dbg !181545
  br i1 %i.ak, label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.i, !dbg !181545

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.i: ; preds = %bb.g
  %.sroa.0.0.i.i.i.i.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.ae, i64 64), !dbg !181546 ; 2 uses
  %i.al = sub nuw i64 %i.ae, %.sroa.0.0.i.i.i.i.i.i.i.i, !dbg !181547 ; 2 uses
  %.sroa.02.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.af, align 1, !dbg !181548, !noalias !181500
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 8, !dbg !181549
  br label %._crit_edge.i.i.i.i.i.i.i, !dbg !181550

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.i, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8find_map5checkINtNtBe_6option6OptionRfEfQNCNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeNvYfNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanE00E0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i
  %.sroa.8.0.copyload20.i.i = phi i64 [ %i.al, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.i ], [ %.sroa.8.0.copyload21.i.i, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8find_map5checkINtNtBe_6option6OptionRfEfQNCNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeNvYfNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanE00E0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ]
  %i.an = phi i64 [ %i.al, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.i ], [ %i.ae, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8find_map5checkINtNtBe_6option6OptionRfEfQNCNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeNvYfNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanE00E0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ]
  %i.ao = phi ptr [ %i.am, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.i ], [ %i.af, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8find_map5checkINtNtBe_6option6OptionRfEfQNCNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeNvYfNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanE00E0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ]
  %i.ap = phi i64 [ %.sroa.0.0.i.i.i.i.i.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.i ], [ %i.ag, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8find_map5checkINtNtBe_6option6OptionRfEfQNCNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeNvYfNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanE00E0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ], !dbg !181551
  %i.aq = phi i64 [ %.sroa.02.0.copyload.i.i.i.i.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.i ], [ %.pre.i.i19.i.i.i.i.i, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8find_map5checkINtNtBe_6option6OptionRfEfQNCNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeNvYfNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanE00E0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ], !dbg !181552 ; 2 uses
  %i.ar = trunc i64 %i.aq to i8, !dbg !181552
  %i.as = lshr i64 %i.aq, 1, !dbg !181553
  %i.at = add i64 %i.ap, -1, !dbg !181551         ; 2 uses
  %i.au = and i8 %i.ar, 1, !dbg !181554
  br label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i, !dbg !181555

_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i, %bb.g
  %.sroa.8.0.copyload.i.i = phi i64 [ %.sroa.8.0.copyload20.i.i, %._crit_edge.i.i.i.i.i.i.i ], [ %.sroa.8.0.copyload21.i.i, %bb.g ] ; 2 uses
  %.sroa.7.0.copyload.i.i = phi i64 [ %i.at, %._crit_edge.i.i.i.i.i.i.i ], [ %.sroa.7.0.copyload17.i.i, %bb.g ] ; 2 uses
  %i.av = phi i64 [ %i.an, %._crit_edge.i.i.i.i.i.i.i ], [ 0, %bb.g ]
  %.sroa.69.0.copyload.i.i = phi i64 [ %i.as, %._crit_edge.i.i.i.i.i.i.i ], [ %.pre.i.i19.i.i.i.i.i, %bb.g ] ; 2 uses
  %.sroa.5.0.copyload.i.i = phi ptr [ %i.ao, %._crit_edge.i.i.i.i.i.i.i ], [ %i.af, %bb.g ] ; 2 uses
  %i.aw = phi i64 [ %i.at, %._crit_edge.i.i.i.i.i.i.i ], [ 0, %bb.g ]
  %.sroa.0.0.i8.i.i.i.i.i.i = phi i8 [ %i.au, %._crit_edge.i.i.i.i.i.i.i ], [ 2, %bb.g ], !dbg !181556
  %i.ax = tail call { i8, ptr } @_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionbE3zipRfECskY9G75ZWc4U_11polars_expr(i8 noundef %.sroa.0.0.i8.i.i.i.i.i.i, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) %spec.select2.i), !dbg !181557, !noalias !181501 ; 2 uses
  %i.ay = extractvalue { i8, ptr } %i.ax, 0, !dbg !181558
  switch i8 %i.ay, label %bb.h [
    i8 2, label %_RNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeNvYfNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanE0CskY9G75ZWc4U_11polars_expr.exit
    i8 0, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8find_map5checkINtNtBe_6option6OptionRfEfQNCNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeNvYfNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanE00E0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i
  ], !dbg !181559

bb.h:                                             ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i
  %i.az = extractvalue { i8, ptr } %i.ax, 1, !dbg !181558 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.az) ]
  %i.ba = load float, ptr %i.az, align 4, !dbg !181560, !alias.scope !181502, !noalias !181503, !noundef !3008
  br label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.outer, !dbg !181561

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.outer: ; preds = %bb.j, %bb.h
  %.ph = phi i64 [ %i.bs, %bb.j ], [ %.sroa.8.0.copyload.i.i, %bb.h ]
  %.pre.i.i14.i.i.i.i.ph = phi i64 [ %.pre.i.i13.i.i.i.i, %bb.j ], [ %.sroa.69.0.copyload.i.i, %bb.h ]
  %.ph32 = phi ptr [ %i.bt, %bb.j ], [ %.sroa.5.0.copyload.i.i, %bb.h ]
  %.ph33 = phi i64 [ %i.bu, %bb.j ], [ %.sroa.7.0.copyload.i.i, %bb.h ]
  %.ph34 = phi ptr [ %spec.select.i.i.i.i, %bb.j ], [ %spec.select.i, %bb.h ]
  %.sroa.0.0.i.i.i.i.ph = phi float [ %..i.i.i.i.i.i.i, %bb.j ], [ %i.ba, %bb.h ] ; 4 uses
  br label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i, !dbg !181562

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.outer, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i
  %i.bb = phi i64 [ %i.bs, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i ], [ %.ph, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.outer ] ; 4 uses
  %.pre.i.i14.i.i.i.i = phi i64 [ %.pre.i.i13.i.i.i.i, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i ], [ %.pre.i.i14.i.i.i.i.ph, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.outer ] ; 2 uses
  %i.bc = phi ptr [ %i.bt, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i ], [ %.ph32, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.outer ] ; 4 uses
  %i.bd = phi i64 [ %i.bu, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i ], [ %.ph33, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.outer ] ; 2 uses
  %i.be = phi ptr [ %spec.select.i.i.i.i, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i ], [ %.ph34, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.outer ] ; 3 uses
  %i.bf = icmp eq ptr %i.be, %.sroa.5.0.copyload.i, !dbg !181563 ; 2 uses
  %spec.select.idx.i.i.i.i = select i1 %i.bf, i64 0, i64 4, !dbg !181564
  %spec.select.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 %spec.select.idx.i.i.i.i, !dbg !181564 ; 2 uses
  %spec.select19.i.i.i.i = select i1 %i.bf, ptr null, ptr %i.be, !dbg !181564
  %i.bg = icmp eq i64 %i.bd, 0, !dbg !181562
  br i1 %i.bg, label %bb.i, label %._crit_edge.i.i.i.i.i.i, !dbg !181562

bb.i:                                             ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i
  %i.bh = icmp eq i64 %i.bb, 0, !dbg !181565
  br i1 %i.bh, label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i, !dbg !181565

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i: ; preds = %bb.i
  %.sroa.0.0.i.i.i.i.i8.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.bb, i64 64), !dbg !181566 ; 2 uses
  %i.bi = sub nuw i64 %i.bb, %.sroa.0.0.i.i.i.i.i8.i.i, !dbg !181567
  %.sroa.02.0.copyload.i.i.i.i.i.i = load i64, ptr %i.bc, align 1, !dbg !181568, !noalias !181504
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bc, i64 8, !dbg !181569
  br label %._crit_edge.i.i.i.i.i.i, !dbg !181570

._crit_edge.i.i.i.i.i.i:                          ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i
  %i.bk = phi i64 [ %i.bi, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i ], [ %i.bb, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ]
  %i.bl = phi ptr [ %i.bj, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i ], [ %i.bc, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ]
  %i.bm = phi i64 [ %.sroa.0.0.i.i.i.i.i8.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i ], [ %i.bd, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ], !dbg !181571
  %i.bn = phi i64 [ %.sroa.02.0.copyload.i.i.i.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i ], [ %.pre.i.i14.i.i.i.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ], !dbg !181572 ; 2 uses
  %i.bo = trunc i64 %i.bn to i8, !dbg !181572
  %i.bp = lshr i64 %i.bn, 1, !dbg !181573
  %i.bq = add i64 %i.bm, -1, !dbg !181571
  %i.br = and i8 %i.bo, 1, !dbg !181574
  br label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i, !dbg !181575

_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i, %bb.i
  %i.bs = phi i64 [ %i.bk, %._crit_edge.i.i.i.i.i.i ], [ 0, %bb.i ] ; 2 uses
  %.pre.i.i13.i.i.i.i = phi i64 [ %i.bp, %._crit_edge.i.i.i.i.i.i ], [ %.pre.i.i14.i.i.i.i, %bb.i ] ; 2 uses
  %i.bt = phi ptr [ %i.bl, %._crit_edge.i.i.i.i.i.i ], [ %i.bc, %bb.i ] ; 2 uses
  %i.bu = phi i64 [ %i.bq, %._crit_edge.i.i.i.i.i.i ], [ 0, %bb.i ] ; 2 uses
  %.sroa.0.0.i8.i.i.i.i.i = phi i8 [ %i.br, %._crit_edge.i.i.i.i.i.i ], [ 2, %bb.i ], !dbg !181576
  %i.bv = tail call { i8, ptr } @_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionbE3zipRfECskY9G75ZWc4U_11polars_expr(i8 noundef %.sroa.0.0.i8.i.i.i.i.i, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) %spec.select19.i.i.i.i), !dbg !181577, !noalias !181505 ; 2 uses
  %i.bw = extractvalue { i8, ptr } %i.bv, 0, !dbg !181578
  switch i8 %i.bw, label %bb.j [
    i8 2, label %_RNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeNvYfNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanE0CskY9G75ZWc4U_11polars_expr.exit
    i8 0, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i
  ], !dbg !181579

bb.j:                                             ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i
  %i.bx = extractvalue { i8, ptr } %i.bv, 1, !dbg !181578 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bx) ]
  %i.by = load float, ptr %i.bx, align 4, !dbg !181580, !alias.scope !181506, !noalias !181507, !noundef !3008 ; 2 uses
  %i.bz = fcmp ogt float %.sroa.0.0.i.i.i.i.ph, %i.by, !dbg !181581
  %i.ca = fcmp uno float %.sroa.0.0.i.i.i.i.ph, 0.000000e+00, !dbg !181582
  %i.cb = or i1 %i.ca, %i.bz, !dbg !181581
  %..i.i.i.i.i.i.i = select i1 %i.cb, float %.sroa.0.0.i.i.i.i.ph, float %i.by, !dbg !181583
  br label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.outer, !dbg !181584

_RNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeNvYfNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanE0CskY9G75ZWc4U_11polars_expr.exit: ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i, %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterfEENtNtNtBa_6traits8iterator8Iterator6reduceNvYfNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanECskY9G75ZWc4U_11polars_expr.exit.i
  %.sroa.0.0.i.pn.i = phi i32 [ %.sroa.0.0.i.i, %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterfEENtNtNtBa_6traits8iterator8Iterator6reduceNvYfNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanECskY9G75ZWc4U_11polars_expr.exit.i ], [ 1, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i ], [ 0, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i ]
  %.sroa.3.0.i.pn.i = phi float [ %.sroa.3.0.i.i, %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterfEENtNtNtBa_6traits8iterator8Iterator6reduceNvYfNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanECskY9G75ZWc4U_11polars_expr.exit.i ], [ %.sroa.0.0.i.i.i.i.ph, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i ], [ undef, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i ]
  %.pn3.i = insertvalue { i32, float } poison, i32 %.sroa.0.0.i.pn.i, 0, !dbg !181585
  %.pn.i = insertvalue { i32, float } %.pn3.i, float %.sroa.3.0.i.pn.i, 1, !dbg !181585
  ret { i32, float } %.pn.i, !dbg !181586
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, float } @_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeNvYfNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanE0INtB7_5FnMutTRINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayfEEE8call_mutCskY9G75ZWc4U_11polars_expr(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !181587 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [56 x i8], align 8                ; 4 uses
  %i.c = alloca [56 x i8], align 8                ; 9 uses
  %i.d = tail call fastcc noundef zeroext i1 @_RNvXs5_NtCs8774dFTUdNv_12polars_arrow9datatypesNtB5_13ArrowDataTypeNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @227) #40, !dbg !181735
  br i1 %i.d, label %bb.c, label %bb.b, !dbg !181736

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !181737 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !dbg !181737, !noundef !3008
  %.not.i.i.i = icmp eq ptr %i.f, null, !dbg !181737
  br i1 %.not.i.i.i, label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayfENtB7_5Array10null_countCskY9G75ZWc4U_11polars_expr.exit.thread.i, label %bb.d, !dbg !181738

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !181739
  %i.h = load i64, ptr %i.g, align 8, !dbg !181739, !noundef !3008
  br label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayfENtB7_5Array10null_countCskY9G75ZWc4U_11polars_expr.exit.i, !dbg !181740

bb.d:                                             ; preds = %bb.b
  %i.i = tail call noundef i64 @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap10unset_bits(ptr noundef nonnull align 8 %i.e), !dbg !181741
  br label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayfENtB7_5Array10null_countCskY9G75ZWc4U_11polars_expr.exit.i, !dbg !181742

_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayfENtB7_5Array10null_countCskY9G75ZWc4U_11polars_expr.exit.i: ; preds = %bb.d, %bb.c
  %.sroa.0.1.i.i = phi i64 [ %i.h, %bb.c ], [ %i.i, %bb.d ], !dbg !181743
  %i.j = icmp eq i64 %.sroa.0.1.i.i, 0, !dbg !181744
  br i1 %i.j, label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayfENtB7_5Array10null_countCskY9G75ZWc4U_11polars_expr.exit.thread.i, label %bb.f, !dbg !181744

_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayfENtB7_5Array10null_countCskY9G75ZWc4U_11polars_expr.exit.thread.i: ; preds = %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayfENtB7_5Array10null_countCskY9G75ZWc4U_11polars_expr.exit.i, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !181745
  %i.l = load ptr, ptr %i.k, align 8, !dbg !181745, !nonnull !3008, !noundef !3008 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !181746
  %i.n = load i64, ptr %i.m, align 8, !dbg !181746, !noundef !3008
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.n, !dbg !181747
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.l, ptr %i.a, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.o, ptr %i.p, align 8
  %i.q = call { i32, float } @_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterfEENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a), !dbg !181748 ; 2 uses
  %i.r = extractvalue { i32, float } %i.q, 0, !dbg !181749
  %i.s = trunc i32 %i.r to i1, !dbg !181750
  br i1 %i.s, label %bb.e, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterfEENtNtNtBa_6traits8iterator8Iterator6reduceNvYfNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECskY9G75ZWc4U_11polars_expr.exit.i, !dbg !181750

bb.e:                                             ; preds = %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayfENtB7_5Array10null_countCskY9G75ZWc4U_11polars_expr.exit.thread.i
  %i.t = extractvalue { i32, float } %i.q, 1, !dbg !181749
  %i.u = load ptr, ptr %i.a, align 8, !dbg !181751, !nonnull !3008, !noundef !3008
  %i.v = load ptr, ptr %i.p, align 8, !dbg !181751, !noundef !3008
  %i.w = call noundef float @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterfEENtNtNtB9_6traits8iterator8Iterator4foldfNvYfNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECskY9G75ZWc4U_11polars_expr(ptr noundef nonnull %i.u, ptr noundef %i.v, float noundef %i.t), !dbg !181752
  br label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterfEENtNtNtBa_6traits8iterator8Iterator6reduceNvYfNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECskY9G75ZWc4U_11polars_expr.exit.i, !dbg !181753

_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterfEENtNtNtBa_6traits8iterator8Iterator6reduceNvYfNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECskY9G75ZWc4U_11polars_expr.exit.i: ; preds = %bb.e, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayfENtB7_5Array10null_countCskY9G75ZWc4U_11polars_expr.exit.thread.i
  %.sroa.3.0.i.i = phi float [ %i.w, %bb.e ], [ undef, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayfENtB7_5Array10null_countCskY9G75ZWc4U_11polars_expr.exit.thread.i ]
  %.sroa.0.0.i.i = phi i32 [ 1, %bb.e ], [ 0, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayfENtB7_5Array10null_countCskY9G75ZWc4U_11polars_expr.exit.thread.i ], !dbg !181754
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !181755
  br label %_RNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeNvYfNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanE0CskY9G75ZWc4U_11polars_expr.exit, !dbg !181756

bb.f:                                             ; preds = %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayfENtB7_5Array10null_countCskY9G75ZWc4U_11polars_expr.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !181757
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !181757
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !181758
  %i.y = load ptr, ptr %i.x, align 8, !dbg !181758, !nonnull !3008, !noundef !3008 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !181759
  %i.aa = load i64, ptr %i.z, align 8, !dbg !181759, !noundef !3008
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.aa, !dbg !181760
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !181761 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !dbg !181761, !noundef !3008
  %.not.i = icmp eq ptr %i.ad, null, !dbg !181761
  %..i = select i1 %.not.i, ptr null, ptr %i.ac, !dbg !181762
  call void @_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRfINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterfENtNtB7_8iterator10BitmapIterE17new_with_validityCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.b, ptr noundef nonnull %i.y, ptr noundef nonnull %i.ab, ptr noundef align 8 %..i), !dbg !181763
  call void @_RNvMs9_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRfINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterfENtNtB7_8iterator10BitmapIterE15unwrap_optionalCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.c, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.b), !dbg !181764
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !181765
  %.sroa.0.0.copyload.i = load ptr, ptr %i.c, align 8, !dbg !181766
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !181766
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !181766, !nonnull !3008, !noundef !3008 ; 2 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !181766
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !181766
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !181766
  %.sroa.10.0.copyload.i = load i64, ptr %.sroa.10.0..sroa_idx.i, align 8, !dbg !181766
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40, !dbg !181766
  %.sroa.12.0.copyload.i = load i64, ptr %.sroa.12.0..sroa_idx.i, align 8, !dbg !181766 ; 2 uses
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48, !dbg !181766
  %.sroa.14.0.copyload.i = load i64, ptr %.sroa.14.0..sroa_idx.i, align 8, !dbg !181766 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !181767
  br label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8find_map5checkINtNtBe_6option6OptionRfEfQNCNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeNvYfNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanE00E0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i, !dbg !181768

_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8find_map5checkINtNtBe_6option6OptionRfEfQNCNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeNvYfNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanE00E0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i: ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i, %bb.f
  %.sroa.8.0.copyload21.i.i = phi i64 [ %.sroa.8.0.copyload.i.i, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i ], [ %.sroa.14.0.copyload.i, %bb.f ] ; 2 uses
  %.sroa.7.0.copyload17.i.i = phi i64 [ %.sroa.7.0.copyload.i.i, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i ], [ %.sroa.12.0.copyload.i, %bb.f ]
  %i.ae = phi i64 [ %i.av, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i ], [ %.sroa.14.0.copyload.i, %bb.f ] ; 4 uses
  %.pre.i.i19.i.i.i.i.i = phi i64 [ %.sroa.69.0.copyload.i.i, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i ], [ %.sroa.10.0.copyload.i, %bb.f ] ; 2 uses
  %i.af = phi ptr [ %.sroa.5.0.copyload.i.i, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i ], [ %.sroa.6.0.copyload.i, %bb.f ] ; 4 uses
  %i.ag = phi i64 [ %i.aw, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i ], [ %.sroa.12.0.copyload.i, %bb.f ] ; 2 uses
  %i.ah = phi ptr [ %spec.select.i, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i ], [ %.sroa.0.0.copyload.i, %bb.f ] ; 3 uses
  %i.ai = icmp eq ptr %i.ah, %.sroa.5.0.copyload.i, !dbg !181769 ; 2 uses
  %spec.select.idx.i = select i1 %i.ai, i64 0, i64 4, !dbg !181770
  %spec.select.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 %spec.select.idx.i, !dbg !181770 ; 2 uses
  %spec.select2.i = select i1 %i.ai, ptr null, ptr %i.ah, !dbg !181770
  %i.aj = icmp eq i64 %i.ag, 0, !dbg !181771
  br i1 %i.aj, label %bb.g, label %._crit_edge.i.i.i.i.i.i.i, !dbg !181771

bb.g:                                             ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8find_map5checkINtNtBe_6option6OptionRfEfQNCNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeNvYfNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanE00E0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i
  %i.ak = icmp eq i64 %i.ae, 0, !dbg !181772
  br i1 %i.ak, label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.i, !dbg !181772

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.i: ; preds = %bb.g
  %.sroa.0.0.i.i.i.i.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.ae, i64 64), !dbg !181773 ; 2 uses
  %i.al = sub nuw i64 %i.ae, %.sroa.0.0.i.i.i.i.i.i.i.i, !dbg !181774 ; 2 uses
  %.sroa.02.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.af, align 1, !dbg !181775, !noalias !181727
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 8, !dbg !181776
  br label %._crit_edge.i.i.i.i.i.i.i, !dbg !181777

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.i, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8find_map5checkINtNtBe_6option6OptionRfEfQNCNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeNvYfNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanE00E0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i
  %.sroa.8.0.copyload20.i.i = phi i64 [ %i.al, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.i ], [ %.sroa.8.0.copyload21.i.i, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8find_map5checkINtNtBe_6option6OptionRfEfQNCNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeNvYfNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanE00E0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ]
  %i.an = phi i64 [ %i.al, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.i ], [ %i.ae, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8find_map5checkINtNtBe_6option6OptionRfEfQNCNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeNvYfNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanE00E0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ]
  %i.ao = phi ptr [ %i.am, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.i ], [ %i.af, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8find_map5checkINtNtBe_6option6OptionRfEfQNCNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeNvYfNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanE00E0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ]
  %i.ap = phi i64 [ %.sroa.0.0.i.i.i.i.i.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.i ], [ %i.ag, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8find_map5checkINtNtBe_6option6OptionRfEfQNCNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeNvYfNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanE00E0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ], !dbg !181778
  %i.aq = phi i64 [ %.sroa.02.0.copyload.i.i.i.i.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.i ], [ %.pre.i.i19.i.i.i.i.i, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8find_map5checkINtNtBe_6option6OptionRfEfQNCNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeNvYfNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanE00E0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ], !dbg !181779 ; 2 uses
  %i.ar = trunc i64 %i.aq to i8, !dbg !181779
  %i.as = lshr i64 %i.aq, 1, !dbg !181780
  %i.at = add i64 %i.ap, -1, !dbg !181778         ; 2 uses
  %i.au = and i8 %i.ar, 1, !dbg !181781
  br label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i, !dbg !181782

_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i, %bb.g
  %.sroa.8.0.copyload.i.i = phi i64 [ %.sroa.8.0.copyload20.i.i, %._crit_edge.i.i.i.i.i.i.i ], [ %.sroa.8.0.copyload21.i.i, %bb.g ] ; 2 uses
  %.sroa.7.0.copyload.i.i = phi i64 [ %i.at, %._crit_edge.i.i.i.i.i.i.i ], [ %.sroa.7.0.copyload17.i.i, %bb.g ] ; 2 uses
  %i.av = phi i64 [ %i.an, %._crit_edge.i.i.i.i.i.i.i ], [ 0, %bb.g ]
  %.sroa.69.0.copyload.i.i = phi i64 [ %i.as, %._crit_edge.i.i.i.i.i.i.i ], [ %.pre.i.i19.i.i.i.i.i, %bb.g ] ; 2 uses
  %.sroa.5.0.copyload.i.i = phi ptr [ %i.ao, %._crit_edge.i.i.i.i.i.i.i ], [ %i.af, %bb.g ] ; 2 uses
  %i.aw = phi i64 [ %i.at, %._crit_edge.i.i.i.i.i.i.i ], [ 0, %bb.g ]
  %.sroa.0.0.i8.i.i.i.i.i.i = phi i8 [ %i.au, %._crit_edge.i.i.i.i.i.i.i ], [ 2, %bb.g ], !dbg !181783
  %i.ax = tail call { i8, ptr } @_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionbE3zipRfECskY9G75ZWc4U_11polars_expr(i8 noundef %.sroa.0.0.i8.i.i.i.i.i.i, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) %spec.select2.i), !dbg !181784, !noalias !181728 ; 2 uses
  %i.ay = extractvalue { i8, ptr } %i.ax, 0, !dbg !181785
  switch i8 %i.ay, label %bb.h [
    i8 2, label %_RNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeNvYfNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanE0CskY9G75ZWc4U_11polars_expr.exit
    i8 0, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8find_map5checkINtNtBe_6option6OptionRfEfQNCNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeNvYfNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanE00E0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i
  ], !dbg !181786

bb.h:                                             ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i
  %i.az = extractvalue { i8, ptr } %i.ax, 1, !dbg !181785 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.az) ]
  %i.ba = load float, ptr %i.az, align 4, !dbg !181787, !alias.scope !181729, !noalias !181730, !noundef !3008
  br label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.outer, !dbg !181788

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.outer: ; preds = %bb.j, %bb.h
  %.ph = phi i64 [ %i.bs, %bb.j ], [ %.sroa.8.0.copyload.i.i, %bb.h ]
  %.pre.i.i14.i.i.i.i.ph = phi i64 [ %.pre.i.i13.i.i.i.i, %bb.j ], [ %.sroa.69.0.copyload.i.i, %bb.h ]
  %.ph32 = phi ptr [ %i.bt, %bb.j ], [ %.sroa.5.0.copyload.i.i, %bb.h ]
  %.ph33 = phi i64 [ %i.bu, %bb.j ], [ %.sroa.7.0.copyload.i.i, %bb.h ]
  %.ph34 = phi ptr [ %spec.select.i.i.i.i, %bb.j ], [ %spec.select.i, %bb.h ]
  %.sroa.0.0.i.i.i.i.ph = phi float [ %..i.i.i.i.i.i.i, %bb.j ], [ %i.ba, %bb.h ] ; 4 uses
  br label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i, !dbg !181789

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.outer, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i
  %i.bb = phi i64 [ %i.bs, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i ], [ %.ph, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.outer ] ; 4 uses
  %.pre.i.i14.i.i.i.i = phi i64 [ %.pre.i.i13.i.i.i.i, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i ], [ %.pre.i.i14.i.i.i.i.ph, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.outer ] ; 2 uses
  %i.bc = phi ptr [ %i.bt, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i ], [ %.ph32, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.outer ] ; 4 uses
  %i.bd = phi i64 [ %i.bu, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i ], [ %.ph33, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.outer ] ; 2 uses
  %i.be = phi ptr [ %spec.select.i.i.i.i, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i ], [ %.ph34, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.outer ] ; 3 uses
  %i.bf = icmp eq ptr %i.be, %.sroa.5.0.copyload.i, !dbg !181790 ; 2 uses
  %spec.select.idx.i.i.i.i = select i1 %i.bf, i64 0, i64 4, !dbg !181791
  %spec.select.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 %spec.select.idx.i.i.i.i, !dbg !181791 ; 2 uses
  %spec.select19.i.i.i.i = select i1 %i.bf, ptr null, ptr %i.be, !dbg !181791
  %i.bg = icmp eq i64 %i.bd, 0, !dbg !181789
  br i1 %i.bg, label %bb.i, label %._crit_edge.i.i.i.i.i.i, !dbg !181789

bb.i:                                             ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i
  %i.bh = icmp eq i64 %i.bb, 0, !dbg !181792
  br i1 %i.bh, label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i, !dbg !181792

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i: ; preds = %bb.i
  %.sroa.0.0.i.i.i.i.i8.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.bb, i64 64), !dbg !181793 ; 2 uses
  %i.bi = sub nuw i64 %i.bb, %.sroa.0.0.i.i.i.i.i8.i.i, !dbg !181794
  %.sroa.02.0.copyload.i.i.i.i.i.i = load i64, ptr %i.bc, align 1, !dbg !181795, !noalias !181731
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bc, i64 8, !dbg !181796
  br label %._crit_edge.i.i.i.i.i.i, !dbg !181797

._crit_edge.i.i.i.i.i.i:                          ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i
  %i.bk = phi i64 [ %i.bi, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i ], [ %i.bb, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ]
  %i.bl = phi ptr [ %i.bj, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i ], [ %i.bc, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ]
  %i.bm = phi i64 [ %.sroa.0.0.i.i.i.i.i8.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i ], [ %i.bd, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ], !dbg !181798
  %i.bn = phi i64 [ %.sroa.02.0.copyload.i.i.i.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i ], [ %.pre.i.i14.i.i.i.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ], !dbg !181799 ; 2 uses
  %i.bo = trunc i64 %i.bn to i8, !dbg !181799
  %i.bp = lshr i64 %i.bn, 1, !dbg !181800
  %i.bq = add i64 %i.bm, -1, !dbg !181798
  %i.br = and i8 %i.bo, 1, !dbg !181801
  br label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i, !dbg !181802

_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i, %bb.i
  %i.bs = phi i64 [ %i.bk, %._crit_edge.i.i.i.i.i.i ], [ 0, %bb.i ] ; 2 uses
  %.pre.i.i13.i.i.i.i = phi i64 [ %i.bp, %._crit_edge.i.i.i.i.i.i ], [ %.pre.i.i14.i.i.i.i, %bb.i ] ; 2 uses
  %i.bt = phi ptr [ %i.bl, %._crit_edge.i.i.i.i.i.i ], [ %i.bc, %bb.i ] ; 2 uses
  %i.bu = phi i64 [ %i.bq, %._crit_edge.i.i.i.i.i.i ], [ 0, %bb.i ] ; 2 uses
  %.sroa.0.0.i8.i.i.i.i.i = phi i8 [ %i.br, %._crit_edge.i.i.i.i.i.i ], [ 2, %bb.i ], !dbg !181803
  %i.bv = tail call { i8, ptr } @_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionbE3zipRfECskY9G75ZWc4U_11polars_expr(i8 noundef %.sroa.0.0.i8.i.i.i.i.i, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) %spec.select19.i.i.i.i), !dbg !181804, !noalias !181732 ; 2 uses
  %i.bw = extractvalue { i8, ptr } %i.bv, 0, !dbg !181805
  switch i8 %i.bw, label %bb.j [
    i8 2, label %_RNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeNvYfNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanE0CskY9G75ZWc4U_11polars_expr.exit
    i8 0, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i
  ], !dbg !181806

bb.j:                                             ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i
  %i.bx = extractvalue { i8, ptr } %i.bv, 1, !dbg !181805 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bx) ]
  %i.by = load float, ptr %i.bx, align 4, !dbg !181807, !alias.scope !181733, !noalias !181734, !noundef !3008 ; 2 uses
  %i.bz = fcmp olt float %.sroa.0.0.i.i.i.i.ph, %i.by, !dbg !181808
  %i.ca = fcmp uno float %.sroa.0.0.i.i.i.i.ph, 0.000000e+00, !dbg !181809
  %i.cb = or i1 %i.ca, %i.bz, !dbg !181808
  %..i.i.i.i.i.i.i = select i1 %i.cb, float %.sroa.0.0.i.i.i.i.ph, float %i.by, !dbg !181810
  br label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.outer, !dbg !181811

_RNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeNvYfNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanE0CskY9G75ZWc4U_11polars_expr.exit: ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i, %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterfEENtNtNtBa_6traits8iterator8Iterator6reduceNvYfNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECskY9G75ZWc4U_11polars_expr.exit.i
  %.sroa.0.0.i.pn.i = phi i32 [ %.sroa.0.0.i.i, %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterfEENtNtNtBa_6traits8iterator8Iterator6reduceNvYfNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECskY9G75ZWc4U_11polars_expr.exit.i ], [ 1, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i ], [ 0, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i ]
  %.sroa.3.0.i.pn.i = phi float [ %.sroa.3.0.i.i, %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterfEENtNtNtBa_6traits8iterator8Iterator6reduceNvYfNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECskY9G75ZWc4U_11polars_expr.exit.i ], [ %.sroa.0.0.i.i.i.i.ph, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i ], [ undef, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i ]
  %.pn3.i = insertvalue { i32, float } poison, i32 %.sroa.0.0.i.pn.i, 0, !dbg !181812
  %.pn.i = insertvalue { i32, float } %.pn3.i, float %.sroa.3.0.i.pn.i, 1, !dbg !181812
  ret { i32, float } %.pn.i, !dbg !181813
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, double } @_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeNvYdNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanE0INtB7_5FnMutTRINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraydEEE8call_mutCskY9G75ZWc4U_11polars_expr(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !181814 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [56 x i8], align 8                ; 4 uses
  %i.c = alloca [56 x i8], align 8                ; 9 uses
  %i.d = tail call fastcc noundef zeroext i1 @_RNvXs5_NtCs8774dFTUdNv_12polars_arrow9datatypesNtB5_13ArrowDataTypeNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @227) #40, !dbg !181962
  br i1 %i.d, label %bb.c, label %bb.b, !dbg !181963

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !181964 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !dbg !181964, !noundef !3008
  %.not.i.i.i = icmp eq ptr %i.f, null, !dbg !181964
  br i1 %.not.i.i.i, label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraydENtB7_5Array10null_countCskY9G75ZWc4U_11polars_expr.exit.thread.i, label %bb.d, !dbg !181965

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !181966
  %i.h = load i64, ptr %i.g, align 8, !dbg !181966, !noundef !3008
  br label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraydENtB7_5Array10null_countCskY9G75ZWc4U_11polars_expr.exit.i, !dbg !181967

bb.d:                                             ; preds = %bb.b
  %i.i = tail call noundef i64 @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap10unset_bits(ptr noundef nonnull align 8 %i.e), !dbg !181968
  br label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraydENtB7_5Array10null_countCskY9G75ZWc4U_11polars_expr.exit.i, !dbg !181969

_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraydENtB7_5Array10null_countCskY9G75ZWc4U_11polars_expr.exit.i: ; preds = %bb.d, %bb.c
  %.sroa.0.1.i.i = phi i64 [ %i.h, %bb.c ], [ %i.i, %bb.d ], !dbg !181970
  %i.j = icmp eq i64 %.sroa.0.1.i.i, 0, !dbg !181971
  br i1 %i.j, label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraydENtB7_5Array10null_countCskY9G75ZWc4U_11polars_expr.exit.thread.i, label %bb.f, !dbg !181971

_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraydENtB7_5Array10null_countCskY9G75ZWc4U_11polars_expr.exit.thread.i: ; preds = %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraydENtB7_5Array10null_countCskY9G75ZWc4U_11polars_expr.exit.i, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !181972
  %i.l = load ptr, ptr %i.k, align 8, !dbg !181972, !nonnull !3008, !noundef !3008 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !181973
  %i.n = load i64, ptr %i.m, align 8, !dbg !181973, !noundef !3008
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.n, !dbg !181974
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.l, ptr %i.a, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.o, ptr %i.p, align 8
  %i.q = call { i64, double } @_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterdEENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a), !dbg !181975 ; 2 uses
  %i.r = extractvalue { i64, double } %i.q, 0, !dbg !181976
  %i.s = trunc nuw i64 %i.r to i1, !dbg !181977
  br i1 %i.s, label %bb.e, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterdEENtNtNtBa_6traits8iterator8Iterator6reduceNvYdNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanECskY9G75ZWc4U_11polars_expr.exit.i, !dbg !181977

bb.e:                                             ; preds = %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraydENtB7_5Array10null_countCskY9G75ZWc4U_11polars_expr.exit.thread.i
  %i.t = extractvalue { i64, double } %i.q, 1, !dbg !181976
  %i.u = load ptr, ptr %i.a, align 8, !dbg !181978, !nonnull !3008, !noundef !3008
  %i.v = load ptr, ptr %i.p, align 8, !dbg !181978, !noundef !3008
  %i.w = call noundef double @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterdEENtNtNtB9_6traits8iterator8Iterator4folddNvYdNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanECskY9G75ZWc4U_11polars_expr(ptr noundef nonnull %i.u, ptr noundef %i.v, double noundef %i.t), !dbg !181979
  br label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterdEENtNtNtBa_6traits8iterator8Iterator6reduceNvYdNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanECskY9G75ZWc4U_11polars_expr.exit.i, !dbg !181980

_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterdEENtNtNtBa_6traits8iterator8Iterator6reduceNvYdNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanECskY9G75ZWc4U_11polars_expr.exit.i: ; preds = %bb.e, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraydENtB7_5Array10null_countCskY9G75ZWc4U_11polars_expr.exit.thread.i
  %.sroa.3.0.i.i = phi double [ %i.w, %bb.e ], [ undef, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraydENtB7_5Array10null_countCskY9G75ZWc4U_11polars_expr.exit.thread.i ]
  %.sroa.0.0.i.i = phi i64 [ 1, %bb.e ], [ 0, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraydENtB7_5Array10null_countCskY9G75ZWc4U_11polars_expr.exit.thread.i ], !dbg !181981
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !181982
  br label %_RNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeNvYdNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanE0CskY9G75ZWc4U_11polars_expr.exit, !dbg !181983

bb.f:                                             ; preds = %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraydENtB7_5Array10null_countCskY9G75ZWc4U_11polars_expr.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !181984
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !181984
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !181985
  %i.y = load ptr, ptr %i.x, align 8, !dbg !181985, !nonnull !3008, !noundef !3008 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !181986
  %i.aa = load i64, ptr %i.z, align 8, !dbg !181986, !noundef !3008
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.aa, !dbg !181987
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !181988 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !dbg !181988, !noundef !3008
  %.not.i = icmp eq ptr %i.ad, null, !dbg !181988
  %..i = select i1 %.not.i, ptr null, ptr %i.ac, !dbg !181989
  call void @_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRdINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterdENtNtB7_8iterator10BitmapIterE17new_with_validityCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.b, ptr noundef nonnull %i.y, ptr noundef nonnull %i.ab, ptr noundef align 8 %..i), !dbg !181990
  call void @_RNvMs9_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRdINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterdENtNtB7_8iterator10BitmapIterE15unwrap_optionalCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.c, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.b), !dbg !181991
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !181992
  %.sroa.0.0.copyload.i = load ptr, ptr %i.c, align 8, !dbg !181993
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !181993
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !181993, !nonnull !3008, !noundef !3008 ; 2 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !181993
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !181993
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !181993
  %.sroa.10.0.copyload.i = load i64, ptr %.sroa.10.0..sroa_idx.i, align 8, !dbg !181993
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40, !dbg !181993
  %.sroa.12.0.copyload.i = load i64, ptr %.sroa.12.0..sroa_idx.i, align 8, !dbg !181993 ; 2 uses
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48, !dbg !181993
  %.sroa.14.0.copyload.i = load i64, ptr %.sroa.14.0..sroa_idx.i, align 8, !dbg !181993 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !181994
  br label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8find_map5checkINtNtBe_6option6OptionRdEdQNCNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeNvYdNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanE00E0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i, !dbg !181995

_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8find_map5checkINtNtBe_6option6OptionRdEdQNCNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeNvYdNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanE00E0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i: ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i, %bb.f
  %.sroa.8.0.copyload21.i.i = phi i64 [ %.sroa.8.0.copyload.i.i, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i ], [ %.sroa.14.0.copyload.i, %bb.f ] ; 2 uses
  %.sroa.7.0.copyload17.i.i = phi i64 [ %.sroa.7.0.copyload.i.i, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i ], [ %.sroa.12.0.copyload.i, %bb.f ]
  %i.ae = phi i64 [ %i.av, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i ], [ %.sroa.14.0.copyload.i, %bb.f ] ; 4 uses
  %.pre.i.i19.i.i.i.i.i = phi i64 [ %.sroa.69.0.copyload.i.i, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i ], [ %.sroa.10.0.copyload.i, %bb.f ] ; 2 uses
  %i.af = phi ptr [ %.sroa.5.0.copyload.i.i, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i ], [ %.sroa.6.0.copyload.i, %bb.f ] ; 4 uses
  %i.ag = phi i64 [ %i.aw, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i ], [ %.sroa.12.0.copyload.i, %bb.f ] ; 2 uses
  %i.ah = phi ptr [ %spec.select.i, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i ], [ %.sroa.0.0.copyload.i, %bb.f ] ; 3 uses
  %i.ai = icmp eq ptr %i.ah, %.sroa.5.0.copyload.i, !dbg !181996 ; 2 uses
  %spec.select.idx.i = select i1 %i.ai, i64 0, i64 8, !dbg !181997
  %spec.select.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 %spec.select.idx.i, !dbg !181997 ; 2 uses
  %spec.select2.i = select i1 %i.ai, ptr null, ptr %i.ah, !dbg !181997
  %i.aj = icmp eq i64 %i.ag, 0, !dbg !181998
  br i1 %i.aj, label %bb.g, label %._crit_edge.i.i.i.i.i.i.i, !dbg !181998

bb.g:                                             ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8find_map5checkINtNtBe_6option6OptionRdEdQNCNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeNvYdNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanE00E0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i
  %i.ak = icmp eq i64 %i.ae, 0, !dbg !181999
  br i1 %i.ak, label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.i, !dbg !181999

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.i: ; preds = %bb.g
  %.sroa.0.0.i.i.i.i.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.ae, i64 64), !dbg !182000 ; 2 uses
  %i.al = sub nuw i64 %i.ae, %.sroa.0.0.i.i.i.i.i.i.i.i, !dbg !182001 ; 2 uses
  %.sroa.02.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.af, align 1, !dbg !182002, !noalias !181954
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 8, !dbg !182003
  br label %._crit_edge.i.i.i.i.i.i.i, !dbg !182004

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.i, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8find_map5checkINtNtBe_6option6OptionRdEdQNCNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeNvYdNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanE00E0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i
  %.sroa.8.0.copyload20.i.i = phi i64 [ %i.al, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.i ], [ %.sroa.8.0.copyload21.i.i, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8find_map5checkINtNtBe_6option6OptionRdEdQNCNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeNvYdNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanE00E0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ]
  %i.an = phi i64 [ %i.al, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.i ], [ %i.ae, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8find_map5checkINtNtBe_6option6OptionRdEdQNCNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeNvYdNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanE00E0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ]
  %i.ao = phi ptr [ %i.am, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.i ], [ %i.af, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8find_map5checkINtNtBe_6option6OptionRdEdQNCNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeNvYdNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanE00E0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ]
  %i.ap = phi i64 [ %.sroa.0.0.i.i.i.i.i.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.i ], [ %i.ag, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8find_map5checkINtNtBe_6option6OptionRdEdQNCNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeNvYdNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanE00E0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ], !dbg !182005
  %i.aq = phi i64 [ %.sroa.02.0.copyload.i.i.i.i.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.i ], [ %.pre.i.i19.i.i.i.i.i, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8find_map5checkINtNtBe_6option6OptionRdEdQNCNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeNvYdNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanE00E0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ], !dbg !182006 ; 2 uses
  %i.ar = trunc i64 %i.aq to i8, !dbg !182006
  %i.as = lshr i64 %i.aq, 1, !dbg !182007
  %i.at = add i64 %i.ap, -1, !dbg !182005         ; 2 uses
  %i.au = and i8 %i.ar, 1, !dbg !182008
  br label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i, !dbg !182009

_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i, %bb.g
  %.sroa.8.0.copyload.i.i = phi i64 [ %.sroa.8.0.copyload20.i.i, %._crit_edge.i.i.i.i.i.i.i ], [ %.sroa.8.0.copyload21.i.i, %bb.g ] ; 2 uses
  %.sroa.7.0.copyload.i.i = phi i64 [ %i.at, %._crit_edge.i.i.i.i.i.i.i ], [ %.sroa.7.0.copyload17.i.i, %bb.g ] ; 2 uses
  %i.av = phi i64 [ %i.an, %._crit_edge.i.i.i.i.i.i.i ], [ 0, %bb.g ]
  %.sroa.69.0.copyload.i.i = phi i64 [ %i.as, %._crit_edge.i.i.i.i.i.i.i ], [ %.pre.i.i19.i.i.i.i.i, %bb.g ] ; 2 uses
  %.sroa.5.0.copyload.i.i = phi ptr [ %i.ao, %._crit_edge.i.i.i.i.i.i.i ], [ %i.af, %bb.g ] ; 2 uses
  %i.aw = phi i64 [ %i.at, %._crit_edge.i.i.i.i.i.i.i ], [ 0, %bb.g ]
  %.sroa.0.0.i8.i.i.i.i.i.i = phi i8 [ %i.au, %._crit_edge.i.i.i.i.i.i.i ], [ 2, %bb.g ], !dbg !182010
  %i.ax = tail call { i8, ptr } @_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionbE3zipRdECskY9G75ZWc4U_11polars_expr(i8 noundef %.sroa.0.0.i8.i.i.i.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) %spec.select2.i), !dbg !182011, !noalias !181955 ; 2 uses
  %i.ay = extractvalue { i8, ptr } %i.ax, 0, !dbg !182012
  switch i8 %i.ay, label %bb.h [
    i8 2, label %_RNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeNvYdNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanE0CskY9G75ZWc4U_11polars_expr.exit
    i8 0, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8find_map5checkINtNtBe_6option6OptionRdEdQNCNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeNvYdNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanE00E0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i
  ], !dbg !182013

bb.h:                                             ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i
  %i.az = extractvalue { i8, ptr } %i.ax, 1, !dbg !182012 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.az) ]
  %i.ba = load double, ptr %i.az, align 8, !dbg !182014, !alias.scope !181956, !noalias !181957, !noundef !3008
  br label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterdENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.outer, !dbg !182015

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterdENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.outer: ; preds = %bb.j, %bb.h
  %.ph = phi i64 [ %i.bs, %bb.j ], [ %.sroa.8.0.copyload.i.i, %bb.h ]
  %.pre.i.i14.i.i.i.i.ph = phi i64 [ %.pre.i.i13.i.i.i.i, %bb.j ], [ %.sroa.69.0.copyload.i.i, %bb.h ]
  %.ph32 = phi ptr [ %i.bt, %bb.j ], [ %.sroa.5.0.copyload.i.i, %bb.h ]
  %.ph33 = phi i64 [ %i.bu, %bb.j ], [ %.sroa.7.0.copyload.i.i, %bb.h ]
  %.ph34 = phi ptr [ %spec.select.i.i.i.i, %bb.j ], [ %spec.select.i, %bb.h ]
  %.sroa.0.0.i.i.i.i.ph = phi double [ %..i.i.i.i.i.i.i, %bb.j ], [ %i.ba, %bb.h ] ; 4 uses
  br label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterdENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i, !dbg !182016

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterdENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterdENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.outer, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i
  %i.bb = phi i64 [ %i.bs, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i ], [ %.ph, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterdENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.outer ] ; 4 uses
  %.pre.i.i14.i.i.i.i = phi i64 [ %.pre.i.i13.i.i.i.i, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i ], [ %.pre.i.i14.i.i.i.i.ph, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterdENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.outer ] ; 2 uses
  %i.bc = phi ptr [ %i.bt, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i ], [ %.ph32, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterdENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.outer ] ; 4 uses
  %i.bd = phi i64 [ %i.bu, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i ], [ %.ph33, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterdENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.outer ] ; 2 uses
  %i.be = phi ptr [ %spec.select.i.i.i.i, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i ], [ %.ph34, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterdENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.outer ] ; 3 uses
  %i.bf = icmp eq ptr %i.be, %.sroa.5.0.copyload.i, !dbg !182017 ; 2 uses
  %spec.select.idx.i.i.i.i = select i1 %i.bf, i64 0, i64 8, !dbg !182018
  %spec.select.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 %spec.select.idx.i.i.i.i, !dbg !182018 ; 2 uses
  %spec.select19.i.i.i.i = select i1 %i.bf, ptr null, ptr %i.be, !dbg !182018
  %i.bg = icmp eq i64 %i.bd, 0, !dbg !182016
  br i1 %i.bg, label %bb.i, label %._crit_edge.i.i.i.i.i.i, !dbg !182016

bb.i:                                             ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterdENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i
  %i.bh = icmp eq i64 %i.bb, 0, !dbg !182019
  br i1 %i.bh, label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i, !dbg !182019

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i: ; preds = %bb.i
  %.sroa.0.0.i.i.i.i.i8.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.bb, i64 64), !dbg !182020 ; 2 uses
  %i.bi = sub nuw i64 %i.bb, %.sroa.0.0.i.i.i.i.i8.i.i, !dbg !182021
  %.sroa.02.0.copyload.i.i.i.i.i.i = load i64, ptr %i.bc, align 1, !dbg !182022, !noalias !181958
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bc, i64 8, !dbg !182023
  br label %._crit_edge.i.i.i.i.i.i, !dbg !182024

._crit_edge.i.i.i.i.i.i:                          ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterdENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i
  %i.bk = phi i64 [ %i.bi, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i ], [ %i.bb, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterdENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ]
  %i.bl = phi ptr [ %i.bj, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i ], [ %i.bc, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterdENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ]
  %i.bm = phi i64 [ %.sroa.0.0.i.i.i.i.i8.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i ], [ %i.bd, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterdENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ], !dbg !182025
  %i.bn = phi i64 [ %.sroa.02.0.copyload.i.i.i.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i ], [ %.pre.i.i14.i.i.i.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterdENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ], !dbg !182026 ; 2 uses
  %i.bo = trunc i64 %i.bn to i8, !dbg !182026
  %i.bp = lshr i64 %i.bn, 1, !dbg !182027
  %i.bq = add i64 %i.bm, -1, !dbg !182025
  %i.br = and i8 %i.bo, 1, !dbg !182028
  br label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i, !dbg !182029

_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i, %bb.i
  %i.bs = phi i64 [ %i.bk, %._crit_edge.i.i.i.i.i.i ], [ 0, %bb.i ] ; 2 uses
  %.pre.i.i13.i.i.i.i = phi i64 [ %i.bp, %._crit_edge.i.i.i.i.i.i ], [ %.pre.i.i14.i.i.i.i, %bb.i ] ; 2 uses
  %i.bt = phi ptr [ %i.bl, %._crit_edge.i.i.i.i.i.i ], [ %i.bc, %bb.i ] ; 2 uses
  %i.bu = phi i64 [ %i.bq, %._crit_edge.i.i.i.i.i.i ], [ 0, %bb.i ] ; 2 uses
  %.sroa.0.0.i8.i.i.i.i.i = phi i8 [ %i.br, %._crit_edge.i.i.i.i.i.i ], [ 2, %bb.i ], !dbg !182030
  %i.bv = tail call { i8, ptr } @_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionbE3zipRdECskY9G75ZWc4U_11polars_expr(i8 noundef %.sroa.0.0.i8.i.i.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) %spec.select19.i.i.i.i), !dbg !182031, !noalias !181959 ; 2 uses
  %i.bw = extractvalue { i8, ptr } %i.bv, 0, !dbg !182032
  switch i8 %i.bw, label %bb.j [
    i8 2, label %_RNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeNvYdNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanE0CskY9G75ZWc4U_11polars_expr.exit
    i8 0, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterdENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i
  ], !dbg !182033

bb.j:                                             ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i
  %i.bx = extractvalue { i8, ptr } %i.bv, 1, !dbg !182032 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bx) ]
  %i.by = load double, ptr %i.bx, align 8, !dbg !182034, !alias.scope !181960, !noalias !181961, !noundef !3008 ; 2 uses
  %i.bz = fcmp ogt double %.sroa.0.0.i.i.i.i.ph, %i.by, !dbg !182035
  %i.ca = fcmp uno double %.sroa.0.0.i.i.i.i.ph, 0.000000e+00, !dbg !182036
  %i.cb = or i1 %i.ca, %i.bz, !dbg !182035
  %..i.i.i.i.i.i.i = select i1 %i.cb, double %.sroa.0.0.i.i.i.i.ph, double %i.by, !dbg !182037
  br label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterdENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.outer, !dbg !182038

_RNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeNvYdNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanE0CskY9G75ZWc4U_11polars_expr.exit: ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i, %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterdEENtNtNtBa_6traits8iterator8Iterator6reduceNvYdNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanECskY9G75ZWc4U_11polars_expr.exit.i
  %.sroa.0.0.i.pn.i = phi i64 [ %.sroa.0.0.i.i, %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterdEENtNtNtBa_6traits8iterator8Iterator6reduceNvYdNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanECskY9G75ZWc4U_11polars_expr.exit.i ], [ 1, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i ], [ 0, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i ]
  %.sroa.3.0.i.pn.i = phi double [ %.sroa.3.0.i.i, %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterdEENtNtNtBa_6traits8iterator8Iterator6reduceNvYdNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanECskY9G75ZWc4U_11polars_expr.exit.i ], [ %.sroa.0.0.i.i.i.i.ph, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i ], [ undef, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i ]
  %.pn3.i = insertvalue { i64, double } poison, i64 %.sroa.0.0.i.pn.i, 0, !dbg !182039
  %.pn.i = insertvalue { i64, double } %.pn3.i, double %.sroa.3.0.i.pn.i, 1, !dbg !182039
  ret { i64, double } %.pn.i, !dbg !182040
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, double } @_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeNvYdNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanE0INtB7_5FnMutTRINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraydEEE8call_mutCskY9G75ZWc4U_11polars_expr(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !182041 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [56 x i8], align 8                ; 4 uses
  %i.c = alloca [56 x i8], align 8                ; 9 uses
  %i.d = tail call fastcc noundef zeroext i1 @_RNvXs5_NtCs8774dFTUdNv_12polars_arrow9datatypesNtB5_13ArrowDataTypeNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @227) #40, !dbg !182189
  br i1 %i.d, label %bb.c, label %bb.b, !dbg !182190

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !182191 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !dbg !182191, !noundef !3008
  %.not.i.i.i = icmp eq ptr %i.f, null, !dbg !182191
  br i1 %.not.i.i.i, label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraydENtB7_5Array10null_countCskY9G75ZWc4U_11polars_expr.exit.thread.i, label %bb.d, !dbg !182192

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !182193
  %i.h = load i64, ptr %i.g, align 8, !dbg !182193, !noundef !3008
  br label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraydENtB7_5Array10null_countCskY9G75ZWc4U_11polars_expr.exit.i, !dbg !182194

bb.d:                                             ; preds = %bb.b
  %i.i = tail call noundef i64 @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap10unset_bits(ptr noundef nonnull align 8 %i.e), !dbg !182195
  br label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraydENtB7_5Array10null_countCskY9G75ZWc4U_11polars_expr.exit.i, !dbg !182196

_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraydENtB7_5Array10null_countCskY9G75ZWc4U_11polars_expr.exit.i: ; preds = %bb.d, %bb.c
  %.sroa.0.1.i.i = phi i64 [ %i.h, %bb.c ], [ %i.i, %bb.d ], !dbg !182197
  %i.j = icmp eq i64 %.sroa.0.1.i.i, 0, !dbg !182198
  br i1 %i.j, label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraydENtB7_5Array10null_countCskY9G75ZWc4U_11polars_expr.exit.thread.i, label %bb.f, !dbg !182198

_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraydENtB7_5Array10null_countCskY9G75ZWc4U_11polars_expr.exit.thread.i: ; preds = %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraydENtB7_5Array10null_countCskY9G75ZWc4U_11polars_expr.exit.i, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !182199
  %i.l = load ptr, ptr %i.k, align 8, !dbg !182199, !nonnull !3008, !noundef !3008 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !182200
  %i.n = load i64, ptr %i.m, align 8, !dbg !182200, !noundef !3008
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.n, !dbg !182201
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.l, ptr %i.a, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.o, ptr %i.p, align 8
  %i.q = call { i64, double } @_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterdEENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a), !dbg !182202 ; 2 uses
  %i.r = extractvalue { i64, double } %i.q, 0, !dbg !182203
  %i.s = trunc nuw i64 %i.r to i1, !dbg !182204
  br i1 %i.s, label %bb.e, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterdEENtNtNtBa_6traits8iterator8Iterator6reduceNvYdNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECskY9G75ZWc4U_11polars_expr.exit.i, !dbg !182204

bb.e:                                             ; preds = %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraydENtB7_5Array10null_countCskY9G75ZWc4U_11polars_expr.exit.thread.i
  %i.t = extractvalue { i64, double } %i.q, 1, !dbg !182203
  %i.u = load ptr, ptr %i.a, align 8, !dbg !182205, !nonnull !3008, !noundef !3008
  %i.v = load ptr, ptr %i.p, align 8, !dbg !182205, !noundef !3008
  %i.w = call noundef double @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterdEENtNtNtB9_6traits8iterator8Iterator4folddNvYdNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECskY9G75ZWc4U_11polars_expr(ptr noundef nonnull %i.u, ptr noundef %i.v, double noundef %i.t), !dbg !182206
  br label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterdEENtNtNtBa_6traits8iterator8Iterator6reduceNvYdNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECskY9G75ZWc4U_11polars_expr.exit.i, !dbg !182207

_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterdEENtNtNtBa_6traits8iterator8Iterator6reduceNvYdNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECskY9G75ZWc4U_11polars_expr.exit.i: ; preds = %bb.e, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraydENtB7_5Array10null_countCskY9G75ZWc4U_11polars_expr.exit.thread.i
  %.sroa.3.0.i.i = phi double [ %i.w, %bb.e ], [ undef, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraydENtB7_5Array10null_countCskY9G75ZWc4U_11polars_expr.exit.thread.i ]
  %.sroa.0.0.i.i = phi i64 [ 1, %bb.e ], [ 0, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraydENtB7_5Array10null_countCskY9G75ZWc4U_11polars_expr.exit.thread.i ], !dbg !182208
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !182209
  br label %_RNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeNvYdNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanE0CskY9G75ZWc4U_11polars_expr.exit, !dbg !182210

bb.f:                                             ; preds = %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraydENtB7_5Array10null_countCskY9G75ZWc4U_11polars_expr.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !182211
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !182211
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !182212
  %i.y = load ptr, ptr %i.x, align 8, !dbg !182212, !nonnull !3008, !noundef !3008 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !182213
  %i.aa = load i64, ptr %i.z, align 8, !dbg !182213, !noundef !3008
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.aa, !dbg !182214
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !182215 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !dbg !182215, !noundef !3008
  %.not.i = icmp eq ptr %i.ad, null, !dbg !182215
  %..i = select i1 %.not.i, ptr null, ptr %i.ac, !dbg !182216
  call void @_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRdINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterdENtNtB7_8iterator10BitmapIterE17new_with_validityCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.b, ptr noundef nonnull %i.y, ptr noundef nonnull %i.ab, ptr noundef align 8 %..i), !dbg !182217
  call void @_RNvMs9_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRdINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterdENtNtB7_8iterator10BitmapIterE15unwrap_optionalCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.c, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.b), !dbg !182218
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !182219
  %.sroa.0.0.copyload.i = load ptr, ptr %i.c, align 8, !dbg !182220
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !182220
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !182220, !nonnull !3008, !noundef !3008 ; 2 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !182220
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !182220
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !182220
  %.sroa.10.0.copyload.i = load i64, ptr %.sroa.10.0..sroa_idx.i, align 8, !dbg !182220
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40, !dbg !182220
  %.sroa.12.0.copyload.i = load i64, ptr %.sroa.12.0..sroa_idx.i, align 8, !dbg !182220 ; 2 uses
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48, !dbg !182220
  %.sroa.14.0.copyload.i = load i64, ptr %.sroa.14.0..sroa_idx.i, align 8, !dbg !182220 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !182221
  br label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8find_map5checkINtNtBe_6option6OptionRdEdQNCNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeNvYdNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanE00E0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i, !dbg !182222

_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8find_map5checkINtNtBe_6option6OptionRdEdQNCNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeNvYdNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanE00E0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i: ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i, %bb.f
  %.sroa.8.0.copyload21.i.i = phi i64 [ %.sroa.8.0.copyload.i.i, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i ], [ %.sroa.14.0.copyload.i, %bb.f ] ; 2 uses
  %.sroa.7.0.copyload17.i.i = phi i64 [ %.sroa.7.0.copyload.i.i, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i ], [ %.sroa.12.0.copyload.i, %bb.f ]
  %i.ae = phi i64 [ %i.av, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i ], [ %.sroa.14.0.copyload.i, %bb.f ] ; 4 uses
  %.pre.i.i19.i.i.i.i.i = phi i64 [ %.sroa.69.0.copyload.i.i, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i ], [ %.sroa.10.0.copyload.i, %bb.f ] ; 2 uses
  %i.af = phi ptr [ %.sroa.5.0.copyload.i.i, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i ], [ %.sroa.6.0.copyload.i, %bb.f ] ; 4 uses
  %i.ag = phi i64 [ %i.aw, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i ], [ %.sroa.12.0.copyload.i, %bb.f ] ; 2 uses
  %i.ah = phi ptr [ %spec.select.i, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i ], [ %.sroa.0.0.copyload.i, %bb.f ] ; 3 uses
  %i.ai = icmp eq ptr %i.ah, %.sroa.5.0.copyload.i, !dbg !182223 ; 2 uses
  %spec.select.idx.i = select i1 %i.ai, i64 0, i64 8, !dbg !182224
  %spec.select.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 %spec.select.idx.i, !dbg !182224 ; 2 uses
  %spec.select2.i = select i1 %i.ai, ptr null, ptr %i.ah, !dbg !182224
  %i.aj = icmp eq i64 %i.ag, 0, !dbg !182225
  br i1 %i.aj, label %bb.g, label %._crit_edge.i.i.i.i.i.i.i, !dbg !182225

bb.g:                                             ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8find_map5checkINtNtBe_6option6OptionRdEdQNCNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeNvYdNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanE00E0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i
  %i.ak = icmp eq i64 %i.ae, 0, !dbg !182226
  br i1 %i.ak, label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.i, !dbg !182226

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.i: ; preds = %bb.g
  %.sroa.0.0.i.i.i.i.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.ae, i64 64), !dbg !182227 ; 2 uses
  %i.al = sub nuw i64 %i.ae, %.sroa.0.0.i.i.i.i.i.i.i.i, !dbg !182228 ; 2 uses
  %.sroa.02.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.af, align 1, !dbg !182229, !noalias !182181
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 8, !dbg !182230
  br label %._crit_edge.i.i.i.i.i.i.i, !dbg !182231

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.i, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8find_map5checkINtNtBe_6option6OptionRdEdQNCNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeNvYdNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanE00E0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i
  %.sroa.8.0.copyload20.i.i = phi i64 [ %i.al, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.i ], [ %.sroa.8.0.copyload21.i.i, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8find_map5checkINtNtBe_6option6OptionRdEdQNCNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeNvYdNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanE00E0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ]
  %i.an = phi i64 [ %i.al, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.i ], [ %i.ae, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8find_map5checkINtNtBe_6option6OptionRdEdQNCNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeNvYdNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanE00E0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ]
  %i.ao = phi ptr [ %i.am, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.i ], [ %i.af, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8find_map5checkINtNtBe_6option6OptionRdEdQNCNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeNvYdNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanE00E0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ]
  %i.ap = phi i64 [ %.sroa.0.0.i.i.i.i.i.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.i ], [ %i.ag, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8find_map5checkINtNtBe_6option6OptionRdEdQNCNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeNvYdNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanE00E0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ], !dbg !182232
  %i.aq = phi i64 [ %.sroa.02.0.copyload.i.i.i.i.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.i ], [ %.pre.i.i19.i.i.i.i.i, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8find_map5checkINtNtBe_6option6OptionRdEdQNCNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeNvYdNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanE00E0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ], !dbg !182233 ; 2 uses
  %i.ar = trunc i64 %i.aq to i8, !dbg !182233
  %i.as = lshr i64 %i.aq, 1, !dbg !182234
  %i.at = add i64 %i.ap, -1, !dbg !182232         ; 2 uses
  %i.au = and i8 %i.ar, 1, !dbg !182235
  br label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i, !dbg !182236

_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i, %bb.g
  %.sroa.8.0.copyload.i.i = phi i64 [ %.sroa.8.0.copyload20.i.i, %._crit_edge.i.i.i.i.i.i.i ], [ %.sroa.8.0.copyload21.i.i, %bb.g ] ; 2 uses
  %.sroa.7.0.copyload.i.i = phi i64 [ %i.at, %._crit_edge.i.i.i.i.i.i.i ], [ %.sroa.7.0.copyload17.i.i, %bb.g ] ; 2 uses
  %i.av = phi i64 [ %i.an, %._crit_edge.i.i.i.i.i.i.i ], [ 0, %bb.g ]
  %.sroa.69.0.copyload.i.i = phi i64 [ %i.as, %._crit_edge.i.i.i.i.i.i.i ], [ %.pre.i.i19.i.i.i.i.i, %bb.g ] ; 2 uses
  %.sroa.5.0.copyload.i.i = phi ptr [ %i.ao, %._crit_edge.i.i.i.i.i.i.i ], [ %i.af, %bb.g ] ; 2 uses
  %i.aw = phi i64 [ %i.at, %._crit_edge.i.i.i.i.i.i.i ], [ 0, %bb.g ]
  %.sroa.0.0.i8.i.i.i.i.i.i = phi i8 [ %i.au, %._crit_edge.i.i.i.i.i.i.i ], [ 2, %bb.g ], !dbg !182237
  %i.ax = tail call { i8, ptr } @_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionbE3zipRdECskY9G75ZWc4U_11polars_expr(i8 noundef %.sroa.0.0.i8.i.i.i.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) %spec.select2.i), !dbg !182238, !noalias !182182 ; 2 uses
  %i.ay = extractvalue { i8, ptr } %i.ax, 0, !dbg !182239
  switch i8 %i.ay, label %bb.h [
    i8 2, label %_RNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeNvYdNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanE0CskY9G75ZWc4U_11polars_expr.exit
    i8 0, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8find_map5checkINtNtBe_6option6OptionRdEdQNCNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeNvYdNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanE00E0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i
  ], !dbg !182240

bb.h:                                             ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i
  %i.az = extractvalue { i8, ptr } %i.ax, 1, !dbg !182239 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.az) ]
  %i.ba = load double, ptr %i.az, align 8, !dbg !182241, !alias.scope !182183, !noalias !182184, !noundef !3008
  br label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterdENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.outer, !dbg !182242

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterdENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.outer: ; preds = %bb.j, %bb.h
  %.ph = phi i64 [ %i.bs, %bb.j ], [ %.sroa.8.0.copyload.i.i, %bb.h ]
  %.pre.i.i14.i.i.i.i.ph = phi i64 [ %.pre.i.i13.i.i.i.i, %bb.j ], [ %.sroa.69.0.copyload.i.i, %bb.h ]
  %.ph32 = phi ptr [ %i.bt, %bb.j ], [ %.sroa.5.0.copyload.i.i, %bb.h ]
  %.ph33 = phi i64 [ %i.bu, %bb.j ], [ %.sroa.7.0.copyload.i.i, %bb.h ]
  %.ph34 = phi ptr [ %spec.select.i.i.i.i, %bb.j ], [ %spec.select.i, %bb.h ]
  %.sroa.0.0.i.i.i.i.ph = phi double [ %..i.i.i.i.i.i.i, %bb.j ], [ %i.ba, %bb.h ] ; 4 uses
  br label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterdENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i, !dbg !182243

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterdENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterdENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.outer, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i
  %i.bb = phi i64 [ %i.bs, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i ], [ %.ph, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterdENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.outer ] ; 4 uses
  %.pre.i.i14.i.i.i.i = phi i64 [ %.pre.i.i13.i.i.i.i, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i ], [ %.pre.i.i14.i.i.i.i.ph, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterdENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.outer ] ; 2 uses
  %i.bc = phi ptr [ %i.bt, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i ], [ %.ph32, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterdENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.outer ] ; 4 uses
  %i.bd = phi i64 [ %i.bu, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i ], [ %.ph33, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterdENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.outer ] ; 2 uses
  %i.be = phi ptr [ %spec.select.i.i.i.i, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i ], [ %.ph34, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterdENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.outer ] ; 3 uses
  %i.bf = icmp eq ptr %i.be, %.sroa.5.0.copyload.i, !dbg !182244 ; 2 uses
  %spec.select.idx.i.i.i.i = select i1 %i.bf, i64 0, i64 8, !dbg !182245
  %spec.select.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 %spec.select.idx.i.i.i.i, !dbg !182245 ; 2 uses
  %spec.select19.i.i.i.i = select i1 %i.bf, ptr null, ptr %i.be, !dbg !182245
  %i.bg = icmp eq i64 %i.bd, 0, !dbg !182243
  br i1 %i.bg, label %bb.i, label %._crit_edge.i.i.i.i.i.i, !dbg !182243

bb.i:                                             ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterdENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i
  %i.bh = icmp eq i64 %i.bb, 0, !dbg !182246
  br i1 %i.bh, label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i, !dbg !182246

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i: ; preds = %bb.i
  %.sroa.0.0.i.i.i.i.i8.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.bb, i64 64), !dbg !182247 ; 2 uses
  %i.bi = sub nuw i64 %i.bb, %.sroa.0.0.i.i.i.i.i8.i.i, !dbg !182248
  %.sroa.02.0.copyload.i.i.i.i.i.i = load i64, ptr %i.bc, align 1, !dbg !182249, !noalias !182185
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bc, i64 8, !dbg !182250
  br label %._crit_edge.i.i.i.i.i.i, !dbg !182251

._crit_edge.i.i.i.i.i.i:                          ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterdENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i
  %i.bk = phi i64 [ %i.bi, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i ], [ %i.bb, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterdENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ]
  %i.bl = phi ptr [ %i.bj, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i ], [ %i.bc, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterdENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ]
  %i.bm = phi i64 [ %.sroa.0.0.i.i.i.i.i8.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i ], [ %i.bd, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterdENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ], !dbg !182252
  %i.bn = phi i64 [ %.sroa.02.0.copyload.i.i.i.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i ], [ %.pre.i.i14.i.i.i.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterdENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ], !dbg !182253 ; 2 uses
  %i.bo = trunc i64 %i.bn to i8, !dbg !182253
  %i.bp = lshr i64 %i.bn, 1, !dbg !182254
  %i.bq = add i64 %i.bm, -1, !dbg !182252
  %i.br = and i8 %i.bo, 1, !dbg !182255
  br label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i, !dbg !182256

_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i, %bb.i
  %i.bs = phi i64 [ %i.bk, %._crit_edge.i.i.i.i.i.i ], [ 0, %bb.i ] ; 2 uses
  %.pre.i.i13.i.i.i.i = phi i64 [ %i.bp, %._crit_edge.i.i.i.i.i.i ], [ %.pre.i.i14.i.i.i.i, %bb.i ] ; 2 uses
  %i.bt = phi ptr [ %i.bl, %._crit_edge.i.i.i.i.i.i ], [ %i.bc, %bb.i ] ; 2 uses
  %i.bu = phi i64 [ %i.bq, %._crit_edge.i.i.i.i.i.i ], [ 0, %bb.i ] ; 2 uses
  %.sroa.0.0.i8.i.i.i.i.i = phi i8 [ %i.br, %._crit_edge.i.i.i.i.i.i ], [ 2, %bb.i ], !dbg !182257
  %i.bv = tail call { i8, ptr } @_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionbE3zipRdECskY9G75ZWc4U_11polars_expr(i8 noundef %.sroa.0.0.i8.i.i.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) %spec.select19.i.i.i.i), !dbg !182258, !noalias !182186 ; 2 uses
  %i.bw = extractvalue { i8, ptr } %i.bv, 0, !dbg !182259
  switch i8 %i.bw, label %bb.j [
    i8 2, label %_RNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeNvYdNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanE0CskY9G75ZWc4U_11polars_expr.exit
    i8 0, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterdENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i
  ], !dbg !182260

bb.j:                                             ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i
  %i.bx = extractvalue { i8, ptr } %i.bv, 1, !dbg !182259 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bx) ]
  %i.by = load double, ptr %i.bx, align 8, !dbg !182261, !alias.scope !182187, !noalias !182188, !noundef !3008 ; 2 uses
  %i.bz = fcmp olt double %.sroa.0.0.i.i.i.i.ph, %i.by, !dbg !182262
  %i.ca = fcmp uno double %.sroa.0.0.i.i.i.i.ph, 0.000000e+00, !dbg !182263
  %i.cb = or i1 %i.ca, %i.bz, !dbg !182262
  %..i.i.i.i.i.i.i = select i1 %i.cb, double %.sroa.0.0.i.i.i.i.ph, double %i.by, !dbg !182264
  br label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterdENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.outer, !dbg !182265

_RNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeNvYdNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanE0CskY9G75ZWc4U_11polars_expr.exit: ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i, %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterdEENtNtNtBa_6traits8iterator8Iterator6reduceNvYdNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECskY9G75ZWc4U_11polars_expr.exit.i
  %.sroa.0.0.i.pn.i = phi i64 [ %.sroa.0.0.i.i, %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterdEENtNtNtBa_6traits8iterator8Iterator6reduceNvYdNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECskY9G75ZWc4U_11polars_expr.exit.i ], [ 1, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i ], [ 0, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i ]
  %.sroa.3.0.i.pn.i = phi double [ %.sroa.3.0.i.i, %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterdEENtNtNtBa_6traits8iterator8Iterator6reduceNvYdNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECskY9G75ZWc4U_11polars_expr.exit.i ], [ %.sroa.0.0.i.i.i.i.ph, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i ], [ undef, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i ]
  %.pn3.i = insertvalue { i64, double } poison, i64 %.sroa.0.0.i.pn.i, 0, !dbg !182266
  %.pn.i = insertvalue { i64, double } %.pn3.i, double %.sroa.3.0.i.pn.i, 1, !dbg !182266
  ret { i64, double } %.pn.i, !dbg !182267
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileNtNtCs2mZqlW55729_12polars_utils7float164pf16FjjjETjjEE0INtB7_5FnMutTRTjRdEEE8call_mutCskY9G75ZWc4U_11polars_expr(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #12 !dbg !182268 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !182275
  %.val = load ptr, ptr %i.a, align 8, !dbg !182275, !nonnull !3008, !align !3163, !noundef !3008
  %i.b = load double, ptr %.val, align 8, !dbg !182276, !noundef !3008
  %i.c = fcmp une double %i.b, 0.000000e+00, !dbg !182276
  ret i1 %i.c, !dbg !182277
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantiledFjjjETjjEE0INtB7_5FnMutTRTjRdEEE8call_mutCskY9G75ZWc4U_11polars_expr(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #12 !dbg !182278 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !182285
  %.val = load ptr, ptr %i.a, align 8, !dbg !182285, !nonnull !3008, !align !3163, !noundef !3008
  %i.b = load double, ptr %.val, align 8, !dbg !182286, !noundef !3008
  %i.c = fcmp une double %i.b, 0.000000e+00, !dbg !182286
  ret i1 %i.c, !dbg !182287
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantilefFjjjETjjEE0INtB7_5FnMutTRTjRdEEE8call_mutCskY9G75ZWc4U_11polars_expr(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #12 !dbg !182288 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !182295
  %.val = load ptr, ptr %i.a, align 8, !dbg !182295, !nonnull !3008, !align !3163, !noundef !3008
  %i.b = load double, ptr %.val, align 8, !dbg !182296, !noundef !3008
  %i.c = fcmp une double %i.b, 0.000000e+00, !dbg !182296
  ret i1 %i.c, !dbg !182297
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { i16, i16 } @_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float16TypeNvYNtNtCs2mZqlW55729_12polars_utils7float164pf16NtNtB3g_7min_max6MinMax17max_propagate_nanE00INtB7_5FnMutTINtNtBb_6option6OptionRB3c_EEE8call_mutCskY9G75ZWc4U_11polars_expr(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 2 captures(address_is_null) dereferenceable_or_null(2) %1) unnamed_addr #6 !dbg !2263 {
bb.a:
  %.not.i = icmp eq ptr %1, null, !dbg !182303
  br i1 %.not.i, label %_RNCNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float16TypeNvYNtNtCs2mZqlW55729_12polars_utils7float164pf16NtNtB2r_7min_max6MinMax17max_propagate_nanE00CskY9G75ZWc4U_11polars_expr.exit, label %bb.b, !dbg !182304

bb.b:                                             ; preds = %bb.a
  %i.a = load i16, ptr %1, align 2, !dbg !182305, !alias.scope !182302, !noundef !3008
  br label %_RNCNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float16TypeNvYNtNtCs2mZqlW55729_12polars_utils7float164pf16NtNtB2r_7min_max6MinMax17max_propagate_nanE00CskY9G75ZWc4U_11polars_expr.exit, !dbg !182306

_RNCNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float16TypeNvYNtNtCs2mZqlW55729_12polars_utils7float164pf16NtNtB2r_7min_max6MinMax17max_propagate_nanE00CskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.a, %bb.b
  %.sroa.02.0.i = phi i16 [ 1, %bb.b ], [ 0, %bb.a ], !dbg !182307
  %.sroa.3.0.i = phi i16 [ %i.a, %bb.b ], [ undef, %bb.a ]
  %i.b = insertvalue { i16, i16 } poison, i16 %.sroa.02.0.i, 0, !dbg !182308
  %i.c = insertvalue { i16, i16 } %i.b, i16 %.sroa.3.0.i, 1, !dbg !182308
  ret { i16, i16 } %i.c, !dbg !182309
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { i16, i16 } @_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float16TypeNvYNtNtCs2mZqlW55729_12polars_utils7float164pf16NtNtB3g_7min_max6MinMax17min_propagate_nanE00INtB7_5FnMutTINtNtBb_6option6OptionRB3c_EEE8call_mutCskY9G75ZWc4U_11polars_expr(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 2 captures(address_is_null) dereferenceable_or_null(2) %1) unnamed_addr #6 !dbg !2270 {
bb.a:
  %.not.i = icmp eq ptr %1, null, !dbg !182315
  br i1 %.not.i, label %_RNCNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float16TypeNvYNtNtCs2mZqlW55729_12polars_utils7float164pf16NtNtB2r_7min_max6MinMax17min_propagate_nanE00CskY9G75ZWc4U_11polars_expr.exit, label %bb.b, !dbg !182316

bb.b:                                             ; preds = %bb.a
  %i.a = load i16, ptr %1, align 2, !dbg !182317, !alias.scope !182314, !noundef !3008
  br label %_RNCNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float16TypeNvYNtNtCs2mZqlW55729_12polars_utils7float164pf16NtNtB2r_7min_max6MinMax17min_propagate_nanE00CskY9G75ZWc4U_11polars_expr.exit, !dbg !182318

_RNCNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float16TypeNvYNtNtCs2mZqlW55729_12polars_utils7float164pf16NtNtB2r_7min_max6MinMax17min_propagate_nanE00CskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.a, %bb.b
  %.sroa.02.0.i = phi i16 [ 1, %bb.b ], [ 0, %bb.a ], !dbg !182319
  %.sroa.3.0.i = phi i16 [ %i.a, %bb.b ], [ undef, %bb.a ]
  %i.b = insertvalue { i16, i16 } poison, i16 %.sroa.02.0.i, 0, !dbg !182320
  %i.c = insertvalue { i16, i16 } %i.b, i16 %.sroa.3.0.i, 1, !dbg !182320
  ret { i16, i16 } %i.c, !dbg !182321
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { i32, float } @_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeNvYfNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanE00INtB7_5FnMutTINtNtBb_6option6OptionRfEEE8call_mutCskY9G75ZWc4U_11polars_expr(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 4 captures(address_is_null) dereferenceable_or_null(4) %1) unnamed_addr #6 !dbg !2273 {
bb.a:
  %.not.i = icmp eq ptr %1, null, !dbg !182327
  br i1 %.not.i, label %_RNCNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeNvYfNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanE00CskY9G75ZWc4U_11polars_expr.exit, label %bb.b, !dbg !182328

bb.b:                                             ; preds = %bb.a
  %i.a = load float, ptr %1, align 4, !dbg !182329, !alias.scope !182326, !noundef !3008
  br label %_RNCNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeNvYfNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanE00CskY9G75ZWc4U_11polars_expr.exit, !dbg !182330

_RNCNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeNvYfNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanE00CskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.a, %bb.b
  %.sroa.02.0.i = phi i32 [ 1, %bb.b ], [ 0, %bb.a ], !dbg !182331
  %.sroa.3.0.i = phi float [ %i.a, %bb.b ], [ undef, %bb.a ]
  %i.b = insertvalue { i32, float } poison, i32 %.sroa.02.0.i, 0, !dbg !182332
  %i.c = insertvalue { i32, float } %i.b, float %.sroa.3.0.i, 1, !dbg !182332
  ret { i32, float } %i.c, !dbg !182333
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { i32, float } @_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeNvYfNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanE00INtB7_5FnMutTINtNtBb_6option6OptionRfEEE8call_mutCskY9G75ZWc4U_11polars_expr(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 4 captures(address_is_null) dereferenceable_or_null(4) %1) unnamed_addr #6 !dbg !2276 {
bb.a:
  %.not.i = icmp eq ptr %1, null, !dbg !182339
  br i1 %.not.i, label %_RNCNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeNvYfNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanE00CskY9G75ZWc4U_11polars_expr.exit, label %bb.b, !dbg !182340

bb.b:                                             ; preds = %bb.a
  %i.a = load float, ptr %1, align 4, !dbg !182341, !alias.scope !182338, !noundef !3008
  br label %_RNCNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeNvYfNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanE00CskY9G75ZWc4U_11polars_expr.exit, !dbg !182342

_RNCNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeNvYfNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanE00CskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.a, %bb.b
  %.sroa.02.0.i = phi i32 [ 1, %bb.b ], [ 0, %bb.a ], !dbg !182343
  %.sroa.3.0.i = phi float [ %i.a, %bb.b ], [ undef, %bb.a ]
  %i.b = insertvalue { i32, float } poison, i32 %.sroa.02.0.i, 0, !dbg !182344
  %i.c = insertvalue { i32, float } %i.b, float %.sroa.3.0.i, 1, !dbg !182344
  ret { i32, float } %i.c, !dbg !182345
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { i64, double } @_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeNvYdNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanE00INtB7_5FnMutTINtNtBb_6option6OptionRdEEE8call_mutCskY9G75ZWc4U_11polars_expr(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(address_is_null) dereferenceable_or_null(8) %1) unnamed_addr #6 !dbg !2279 {
bb.a:
  %.not.i = icmp eq ptr %1, null, !dbg !182351
  br i1 %.not.i, label %_RNCNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeNvYdNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanE00CskY9G75ZWc4U_11polars_expr.exit, label %bb.b, !dbg !182352

bb.b:                                             ; preds = %bb.a
  %i.a = load double, ptr %1, align 8, !dbg !182353, !alias.scope !182350, !noundef !3008
  br label %_RNCNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeNvYdNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanE00CskY9G75ZWc4U_11polars_expr.exit, !dbg !182354

_RNCNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeNvYdNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanE00CskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.a, %bb.b
  %.sroa.02.0.i = phi i64 [ 1, %bb.b ], [ 0, %bb.a ], !dbg !182355
  %.sroa.3.0.i = phi double [ %i.a, %bb.b ], [ undef, %bb.a ]
  %i.b = insertvalue { i64, double } poison, i64 %.sroa.02.0.i, 0, !dbg !182356
  %i.c = insertvalue { i64, double } %i.b, double %.sroa.3.0.i, 1, !dbg !182356
  ret { i64, double } %i.c, !dbg !182357
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { i64, double } @_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeNvYdNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanE00INtB7_5FnMutTINtNtBb_6option6OptionRdEEE8call_mutCskY9G75ZWc4U_11polars_expr(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(address_is_null) dereferenceable_or_null(8) %1) unnamed_addr #6 !dbg !2282 {
bb.a:
  %.not.i = icmp eq ptr %1, null, !dbg !182363
  br i1 %.not.i, label %_RNCNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeNvYdNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanE00CskY9G75ZWc4U_11polars_expr.exit, label %bb.b, !dbg !182364

bb.b:                                             ; preds = %bb.a
  %i.a = load double, ptr %1, align 8, !dbg !182365, !alias.scope !182362, !noundef !3008
  br label %_RNCNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeNvYdNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanE00CskY9G75ZWc4U_11polars_expr.exit, !dbg !182366

_RNCNCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array25nan_propagating_aggregate10ca_nan_aggNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeNvYdNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanE00CskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.a, %bb.b
  %.sroa.02.0.i = phi i64 [ 1, %bb.b ], [ 0, %bb.a ], !dbg !182367
  %.sroa.3.0.i = phi double [ %i.a, %bb.b ], [ undef, %bb.a ]
  %i.b = insertvalue { i64, double } poison, i64 %.sroa.02.0.i, 0, !dbg !182368
  %i.c = insertvalue { i64, double } %i.b, double %.sroa.3.0.i, 1, !dbg !182368
  ret { i64, double } %i.c, !dbg !182369
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRNtNtCs2mZqlW55729_12polars_utils7float164pf16NtB6_5Debug3fmtCskY9G75ZWc4U_11polars_expr(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !182370 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !dbg !182379, !nonnull !3008, !align !3346, !noundef !3008
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !182380, !noalias !182377
  store ptr %i.b, ptr %i.a, align 8, !dbg !182380, !noalias !182377
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @225, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @224), !dbg !182381
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !182382, !noalias !182377
  ret i1 %i.c, !dbg !182383
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_listNtB5_18FixedSizeListArrayNtB7_5Array10as_any_mut(ptr noalias noundef align 8 dereferenceable(96) %0) unnamed_addr #10 !dbg !182384 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0, !dbg !182385
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @169, 1, !dbg !182385
  ret { ptr, ptr } %i.b, !dbg !182385
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, ptr } @_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_listNtB5_18FixedSizeListArrayNtB7_5Array13with_validity(ptr noundef nonnull align 8 captures(address, read_provenance) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !182386 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [96 x i8], align 8                ; 11 uses
  %i.d = alloca [96 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !182451
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !182451
  tail call void @llvm.experimental.noalias.scope.decl(metadata !182437), !dbg !182452
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !182453
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !182454
  %i.g = load i64, ptr %i.f, align 8, !dbg !182454, !noalias !182437, !noundef !3008
  %i.h = load <2 x i64>, ptr %i.e, align 8, !dbg !182453, !noalias !182437
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !182455, !noalias !182437
  invoke fastcc void @_RNvXs3_NtCs8774dFTUdNv_12polars_arrow9datatypesNtB5_13ArrowDataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) #40
          to label %.noexc unwind label %bb.h, !dbg !182455

.noexc:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !182456
  %i.j = invoke { ptr, ptr } @_RNvXs5_NtCs8774dFTUdNv_12polars_arrow5arrayINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtB5_5ArrayEL_ENtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.i)
          to label %bb.c unwind label %bb.b, !dbg !182456, !noalias !182437 ; 2 uses

bb.b:                                             ; preds = %.noexc
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.a) #41
end_hunk_0
