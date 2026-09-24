Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_stream-fcae4413b3f98c0a.polars_stream.1a4d324d1ee8f0d2-cgu.10?download=true
inline.NumInlined: 7694
inline.NumDeleted: 2630
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_RNvXs7_NtNtCs1LHh8CLbVkQ_11polars_core5frame6columnNtB5_6ColumnNtNtCscgRAwXFJnXP_4core5clone5Clone5clone:bb.a

bb.s:                                             ; preds = %_RINvMNtNtCsh8eZTKRCwoO_3std4sync9once_lockINtB3_8OnceLockNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesE15get_or_try_initNCINvB2_11get_or_initNCNvB2_10try_insert0E0zECs2g09Ig8GZd6_13polars_stream.exit.i.i.i
  %i.ap = load ptr, ptr %i.af, align 8, !dbg !132747, !noalias !132688, !nonnull !2595, !align !2800, !noundef !2595
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !132738, !noalias !132688
  store ptr %i.an, ptr %i.b, align 8, !dbg !132748, !noalias !132687
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !132748
  store ptr %i.ap, ptr %i.aq, align 8, !dbg !132748, !noalias !132687
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @214, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @631) #36
          to label %bb.w unwind label %bb.u, !dbg !132749, !noalias !132687

bb.t:                                             ; preds = %_RINvMNtNtCsh8eZTKRCwoO_3std4sync9once_lockINtB3_8OnceLockNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesE15get_or_try_initNCINvB2_11get_or_initNCNvB2_10try_insert0E0zECs2g09Ig8GZd6_13polars_stream.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !132738, !noalias !132688
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !132750, !noalias !132687
  br label %_RNvXs2_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalarNtB5_12ScalarColumnNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit, !dbg !132751

bb.u:                                             ; preds = %bb.s
  %i.ar = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.as = atomicrmw sub ptr %i.an, i64 1 release, align 8, !dbg !132752, !noalias !132693
  %i.at = icmp eq i64 %i.as, 1, !dbg !132753
  br i1 %i.at, label %bb.v, label %.body.i.i, !dbg !132753

bb.v:                                             ; preds = %bb.u
  fence acquire, !dbg !132754
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b) #39
          to label %.body.i.i unwind label %bb.x, !dbg !132755, !noalias !132687

bb.w:                                             ; preds = %bb.s
  unreachable

bb.x:                                             ; preds = %bb.v, %.body.i.i
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #38, !dbg !132756, !noalias !132687
  unreachable, !dbg !132756

.body3.i:                                         ; preds = %.body.i.i
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6scalar6ScalarECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 16 dereferenceable(96) %i.g) #37
          to label %.body.i unwind label %bb.y, !dbg !132757, !noalias !132682

bb.y:                                             ; preds = %.body3.i, %bb.h
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #38, !dbg !132758, !noalias !132682
  unreachable, !dbg !132758

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit.i: ; preds = %bb.h, %.body.i
  resume { ptr, i32 } %.pn.i, !dbg !132758

_RNvXs2_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalarNtB5_12ScalarColumnNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit: ; preds = %bb.j, %bb.t
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !132759
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !132760
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !132726, !noalias !132687
  %.sroa.0.96..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 96, !dbg !132758
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.0.96..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !dbg !132758
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %.sroa.0, ptr noundef nonnull align 16 dereferenceable(96) %i.g, i64 96, i1 false), !dbg !132758
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !132757, !noalias !132682
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !132757, !noalias !132682
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !132761
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(120) %0, ptr noundef nonnull align 16 dereferenceable(120) %.sroa.0, i64 120, i1 false), !dbg !132759
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !132759
  store i64 %i.w, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !132759
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0), !dbg !132762
  br label %bb.ac, !dbg !132763

bb.z:                                             ; preds = %bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !132764 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !dbg !132764, !nonnull !2595, !noundef !2595
  %i.ay = atomicrmw add ptr %i.ax, i64 1 monotonic, align 8, !dbg !132765
  %i.az = icmp slt i64 %i.ay, 0, !dbg !132766
  br i1 %i.az, label %bb.ab, label %bb.aa, !dbg !132766

bb.aa:                                            ; preds = %bb.z
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !132767
  %i.bb = load <2 x ptr>, ptr %i.aw, align 8, !dbg !132768
  store <2 x ptr> %i.bb, ptr %i.ba, align 8, !dbg !132767
  store i8 31, ptr %0, align 16, !dbg !132767
  br label %bb.ac, !dbg !132763

bb.ab:                                            ; preds = %bb.z
  tail call void @llvm.trap(), !dbg !132769
  unreachable, !dbg !132769

bb.ac:                                            ; preds = %bb.aa, %_RNvXs2_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalarNtB5_12ScalarColumnNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit
  ret void, !dbg !132770
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs7_NtNtCs8774dFTUdNv_12polars_arrow9datatypes13physical_typeNtB5_11IntegerTypeNtNtCscgRAwXFJnXP_4core3fmt5Debug3fmt(ptr noalias noundef readonly captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !dbg !132771 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !dbg !132775, !range !2962, !noundef !2595 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64, !dbg !132775
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs7_NtNtCs8774dFTUdNv_12polars_arrow9datatypes13physical_typeNtB5_11IntegerTypeNtNtCscgRAwXFJnXP_4core3fmt5Debug3fmt, i64 %i.b, !dbg !132775
  %switch.load = load i8, ptr %switch.gep, align 1, !dbg !132775
  %switch.ext = zext i8 %switch.load to i64, !dbg !132775
  %i.c = zext nneg i8 %i.a to i64, !dbg !132775
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs7_NtNtCs8774dFTUdNv_12polars_arrow9datatypes13physical_typeNtB5_11IntegerTypeNtNtCscgRAwXFJnXP_4core3fmt5Debug3fmt.655, i64 %i.c, !dbg !132775
  %switch.load3 = load ptr, ptr %switch.gep2, align 8, !dbg !132775
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext), !dbg !132775
  ret i1 %i.d, !dbg !132776
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneNtB7_9PartialEq2eqCs2g09Ig8GZd6_13polars_stream(ptr nofree readonly captures(none) %.0.val, ptr nofree readonly captures(none) %.0.val1) unnamed_addr #13 personality ptr @rust_eh_personality !dbg !132777 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val1) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !132812), !dbg !132818
  tail call void @llvm.experimental.noalias.scope.decl(metadata !132813), !dbg !132818
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 23, !dbg !132819
  %i.b = load i8, ptr %i.a, align 1, !dbg !132819, !range !2747, !alias.scope !132815, !noalias !132816, !noundef !2595 ; 2 uses
  %i.c = icmp ugt i8 %i.b, -41, !dbg !132820
  br i1 %i.c, label %bb.c, label %bb.b, !dbg !132820

bb.b:                                             ; preds = %bb.a
  %i.d = add i8 %i.b, 64, !dbg !132821
  %i.e = tail call i8 @llvm.umin.i8(i8 %i.d, i8 24), !dbg !132822
  %.sroa.0.0.i.i.i = zext nneg i8 %i.e to i64, !dbg !132822
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i, !dbg !132823

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %.0.val, align 8, !dbg !132824, !alias.scope !132815, !noalias !132816, !noundef !2595
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val, i64 8, !dbg !132825
  %i.h = load i64, ptr %i.g, align 8, !dbg !132825, !alias.scope !132815, !noalias !132816, !noundef !2595
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i, !dbg !132826

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i: ; preds = %bb.c, %bb.b
  %.sroa.01.0.i.i = phi i64 [ %i.h, %bb.c ], [ %.sroa.0.0.i.i.i, %bb.b ], !dbg !132827 ; 2 uses
  %.sroa.0.0.i1.i = phi ptr [ %i.f, %bb.c ], [ %.0.val, %bb.b ], !dbg !132828
  %i.i = getelementptr inbounds nuw i8, ptr %.0.val1, i64 23, !dbg !132829
  %i.j = load i8, ptr %i.i, align 1, !dbg !132829, !range !2747, !alias.scope !132817, !noalias !132812, !noundef !2595 ; 2 uses
  %i.k = icmp ugt i8 %i.j, -41, !dbg !132830
  br i1 %i.k, label %bb.e, label %bb.d, !dbg !132830

bb.d:                                             ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i
  %i.l = add i8 %i.j, 64, !dbg !132831
  %i.m = tail call i8 @llvm.umin.i8(i8 %i.l, i8 24), !dbg !132832
  %.sroa.0.0.i.i2.i = zext nneg i8 %i.m to i64, !dbg !132832
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit5.i, !dbg !132833

bb.e:                                             ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i
  %i.n = load ptr, ptr %.0.val1, align 8, !dbg !132834, !alias.scope !132817, !noalias !132812, !noundef !2595
  %i.o = getelementptr inbounds nuw i8, ptr %.0.val1, i64 8, !dbg !132835
  %i.p = load i64, ptr %i.o, align 8, !dbg !132835, !alias.scope !132817, !noalias !132812, !noundef !2595
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit5.i, !dbg !132836

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit5.i: ; preds = %bb.e, %bb.d
  %.sroa.01.0.i3.i = phi i64 [ %i.p, %bb.e ], [ %.sroa.0.0.i.i2.i, %bb.d ], !dbg !132837
  %.sroa.0.0.i4.i = phi ptr [ %i.n, %bb.e ], [ %.0.val1, %bb.d ], !dbg !132838
  %i.q = icmp eq i64 %.sroa.01.0.i.i, %.sroa.01.0.i3.i, !dbg !132839
  br i1 %i.q, label %bb.f, label %_RNvXs5_NtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zoneNtB5_8TimeZoneNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit, !dbg !132839

bb.f:                                             ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit5.i
  %bcmp.i.i = tail call i32 @bcmp(ptr %.sroa.0.0.i1.i, ptr %.sroa.0.0.i4.i, i64 %.sroa.01.0.i.i), !dbg !132840
  %i.r = icmp eq i32 %bcmp.i.i, 0, !dbg !132840
  br label %_RNvXs5_NtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zoneNtB5_8TimeZoneNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit, !dbg !132841

_RNvXs5_NtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zoneNtB5_8TimeZoneNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit: ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit5.i, %bb.f
  %.sroa.0.0.i.i = phi i1 [ %i.r, %bb.f ], [ false, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit5.i ], !dbg !132842
  ret i1 %.sroa.0.0.i.i, !dbg !132843
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs7_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata7compactNtB5_18CompactColumnChunkNtNtCscgRAwXFJnXP_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(208) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !dbg !132844 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 160, !dbg !132846
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192, !dbg !132847
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 176, !dbg !132848
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !132849
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 200, !dbg !132849
  store ptr %i.e, ptr %i.a, align 8, !dbg !132849
  %i.f = call noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter26debug_struct_field5_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @674, i64 noundef 18, ptr noalias noundef nonnull readonly captures(address, read_provenance) @675, i64 noundef 9, ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @672, ptr noalias noundef nonnull readonly captures(address, read_provenance) @676, i64 noundef 19, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @613, ptr noalias noundef nonnull readonly captures(address, read_provenance) @677, i64 noundef 19, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @673, ptr noalias noundef nonnull readonly captures(address, read_provenance) @678, i64 noundef 19, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @613, ptr noalias noundef nonnull readonly captures(address, read_provenance) @679, i64 noundef 19, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @656), !dbg !132850
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !132851
  ret i1 %i.f, !dbg !132852
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs9_NtCse67t6KqNqGQ_5rayon3vecINtB5_13DrainProducerNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8group_by21LocalGroupBySinkStateENtNtNtB7_4iter8plumbing8Producer8split_atBW_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !132853 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.a, align 8, !dbg !132865
  store i64 0, ptr %i.b, align 8, !dbg !132865
  %.not.i = icmp ugt i64 %3, %2, !dbg !132866
  br i1 %.not.i, label %bb.b, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCse67t6KqNqGQ_5rayon3vec13DrainProducerNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8group_by21LocalGroupBySinkStateEEB1u_.exit, !dbg !132866, !prof !2619

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @276, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @682) #41
          to label %.noexc unwind label %bb.c, !dbg !132867

.noexc:                                           ; preds = %bb.b
  unreachable, !dbg !132867

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCse67t6KqNqGQ_5rayon3vec13DrainProducerNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8group_by21LocalGroupBySinkStateEEB1u_(ptr noalias noundef align 8 dereferenceable(16) %i.a) #37
          to label %common.resume unwind label %bb.d, !dbg !132868

common.resume:                                    ; preds = %bb.c
  resume { ptr, i32 } %i.c, !dbg !132869

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCse67t6KqNqGQ_5rayon3vec13DrainProducerNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8group_by21LocalGroupBySinkStateEEB1u_.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw [216 x i8], ptr %1, i64 %3, !dbg !132870
  %i.e = sub nuw nsw i64 %2, %3, !dbg !132871
  store ptr %1, ptr %0, align 8, !dbg !132872
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !132872
  store i64 %3, ptr %i.f, align 8, !dbg !132872
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !132872
  store ptr %i.d, ptr %i.g, align 8, !dbg !132872
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !132872
  store i64 %i.e, ptr %i.h, align 8, !dbg !132872
  ret void, !dbg !132873

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #38, !dbg !132874
  unreachable, !dbg !132874
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsA_NtCs9o5SvTbM2BP_6chrono8datetimeINtB5_8DateTimeNtNtNtB7_6offset3utc3UtcENtNtCscgRAwXFJnXP_4core3fmt7Display3fmtCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(12) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !132875 {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 4 uses
  %i.b = alloca [12 x i8], align 4                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !132884
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !132886
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %0, i64 12, i1 false), !dbg !132886
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12, !dbg !132887
  call void @_RNvMNtNtCs9o5SvTbM2BP_6chrono5naive8datetimeNtB2_13NaiveDateTime22overflowing_add_offset(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.b, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.a, i32 noundef 0), !dbg !132888
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !132889
  %i.d = call noundef zeroext i1 @_RNvXsi_NtNtCs9o5SvTbM2BP_6chrono5naive8datetimeNtB5_13NaiveDateTimeNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !dbg !132890
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !132891
  br i1 %i.d, label %bb.d, label %bb.b, !dbg !132892

bb.b:                                             ; preds = %bb.a
  %i.e = call noundef zeroext i1 @_RNvXsb_NtCscgRAwXFJnXP_4core3fmtNtB5_9FormatterNtB5_5Write10write_char(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 32), !dbg !132893
  br i1 %i.e, label %bb.d, label %bb.c, !dbg !132894

bb.c:                                             ; preds = %bb.b
  %i.f = call noundef zeroext i1 @_RNvXs2_NtNtCs9o5SvTbM2BP_6chrono6offset3utcNtB5_3UtcNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !dbg !132895
  br label %bb.d, !dbg !132896

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.0.0 = phi i1 [ true, %bb.b ], [ %i.f, %bb.c ], [ true, %bb.a ], !dbg !132897
  ret i1 %.sroa.0.0, !dbg !132896
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsE_NtCsgZ49sUHp3tW_5alloc3vecAINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_Ej1_INtNtCscgRAwXFJnXP_4core7convert7TryFromINtB5_3VecBw_EE8try_fromCs2g09Ig8GZd6_13polars_stream(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !132898 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !132919 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !132919, !noundef !2595 ; 2 uses
  %i.c = icmp ult i64 %i.b, 576460752303423488, !dbg !132920
  tail call void @llvm.assume(i1 %i.c), !dbg !132921
  %.not = icmp eq i64 %i.b, 1, !dbg !132922
  br i1 %.not, label %bb.c, label %bb.b, !dbg !132922

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !132923
  br label %bb.f, !dbg !132924

bb.c:                                             ; preds = %bb.a
  store i64 0, ptr %i.a, align 8, !dbg !132925
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !132926
  %i.e = load ptr, ptr %i.d, align 8, !dbg !132926, !nonnull !2595, !noundef !2595
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !132927
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false), !dbg !132928
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !132927
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtBL_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEECs2g09Ig8GZd6_13polars_stream.exit unwind label %bb.d, !dbg !132929

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecINtNtBL_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEECs2g09Ig8GZd6_13polars_stream.exit.i unwind label %bb.e, !dbg !132930

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #38, !dbg !132929
  unreachable, !dbg !132929

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecINtNtBL_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEECs2g09Ig8GZd6_13polars_stream.exit.i: ; preds = %bb.d
  resume { ptr, i32 } %i.g, !dbg !132929

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtBL_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !dbg !132931
  br label %bb.f, !dbg !132924

bb.f:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtBL_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEECs2g09Ig8GZd6_13polars_stream.exit, %bb.b
  ret void, !dbg !132932
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsK_NtCscgRAwXFJnXP_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt(ptr noalias nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !dbg !132933 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @688, i64 noundef 5), !dbg !132935
  ret i1 %i.a, !dbg !132936
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VeclEENtNtB7_3fmt5Debug3fmtCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !dbg !132937 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !dbg !132939, !range !2649, !noundef !2595
  %.not = icmp eq i64 %i.b, -9223372036854775808, !dbg !132939
  br i1 %.not, label %bb.c, label %bb.b, !dbg !132939

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !132940
  store ptr %0, ptr %i.a, align 8, !dbg !132940
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @691, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @690), !dbg !132941
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !132942
  br label %bb.d, !dbg !132942

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @689, i64 noundef 4), !dbg !132939
  br label %bb.d, !dbg !132939

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in, !dbg !132943
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCs7tGzs63DEEy_9hashbrown3map7HashMapjNtNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan10components10projection19ProjectionTransformNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEEENtNtB7_3fmt5Debug3fmtB2a_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !dbg !132944 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !dbg !132946, !noundef !2595
  %.not = icmp eq ptr %i.b, null, !dbg !132946
  br i1 %.not, label %bb.c, label %bb.b, !dbg !132946

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !132947
  store ptr %0, ptr %i.a, align 8, !dbg !132947
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @691, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @692), !dbg !132948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !132949
  br label %bb.d, !dbg !132949

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @689, i64 noundef 4), !dbg !132946
  br label %bb.d, !dbg !132946

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in, !dbg !132950
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapENtNtB7_3fmt5Debug3fmtCs2g09Ig8GZd6_13polars_stream(ptr noundef nonnull align 8 %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !dbg !132951 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !dbg !132953, !noundef !2595
  %.not = icmp eq ptr %i.b, null, !dbg !132953
  br i1 %.not, label %bb.c, label %bb.b, !dbg !132953

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !132954
  store ptr %0, ptr %i.a, align 8, !dbg !132954
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @691, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @693), !dbg !132955
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !132956
  br label %bb.d, !dbg !132956

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @689, i64 noundef 4), !dbg !132953
  br label %bb.d, !dbg !132953

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in, !dbg !132957
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionNtNtNtCslpwjCj2YNBy_9polars_io5cloud7options12CloudOptionsENtNtB7_3fmt5Debug3fmtCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !dbg !132958 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !dbg !132960, !range !2846, !noundef !2595
  %.not = icmp eq i64 %i.b, 2, !dbg !132960
  br i1 %.not, label %bb.c, label %bb.b, !dbg !132960

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !132961
  store ptr %0, ptr %i.a, align 8, !dbg !132961
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @691, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @694), !dbg !132962
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !132963
  br label %bb.d, !dbg !132963

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @689, i64 noundef 4), !dbg !132960
  br label %bb.d, !dbg !132960

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in, !dbg !132964
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata7compact17CompactStatisticsENtNtB7_3fmt5Debug3fmtCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !dbg !132965 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !dbg !132967, !range !2846, !noundef !2595
  %.not = icmp eq i64 %i.b, 2, !dbg !132967
  br i1 %.not, label %bb.c, label %bb.b, !dbg !132967

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !132968
  store ptr %0, ptr %i.a, align 8, !dbg !132968
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @691, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @695), !dbg !132969
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !132970
  br label %bb.d, !dbg !132970
end_hunk_0
begin_hunk_1_@llvm.abs.i128
!132669 = distinct !DILocation(line: 3193, column: 26, scope: !133, inlinedAt: !132668)
!132670 = distinct !DILocation(line: 64, column: 9, scope: !131, inlinedAt: !132667)
!132671 = distinct !DISubprogram(name: "as_ref<alloc::sync::ArcInner<dyn polars_core::series::series_trait::SeriesTrait>>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullINtNtCsgZ49sUHp3tW_5alloc4sync8ArcInnerDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_EE6as_refCs2g09Ig8GZd6_13polars_stream", scope: !2798, file: !2796, line: 440, type: !2596, scopeLine: 440, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2595)
!132672 = distinct !DILexicalBlock(scope: !132556, file: !3296, line: 38, column: 17)
!132673 = distinct !DISubprogram(name: "clone", linkageName: "_RNvXs3_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6seriesNtB5_12SeriesColumnNtNtCscgRAwXFJnXP_4core5clone5Clone5clone", scope: !132699, file: !3303, line: 9, type: !2596, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2595)
!132674 = distinct !DISubprogram(name: "clone", linkageName: "_RNvXs7_NtCs1LHh8CLbVkQ_11polars_core6seriesNtB5_6SeriesNtNtCscgRAwXFJnXP_4core5clone5Clone5clone", scope: !3612, file: !3306, line: 148, type: !2596, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2595)
!132675 = distinct !DISubprogram(name: "clone<dyn polars_core::series::series_trait::SeriesTrait, alloc::alloc::Global>", linkageName: "_RNvXsu_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_ENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream", scope: !3041, file: !2790, line: 2382, type: !2596, scopeLine: 2382, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2595)
!132676 = distinct !DISubprogram(name: "inner<dyn polars_core::series::series_trait::SeriesTrait, alloc::alloc::Global>", linkageName: "_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E5innerCs2g09Ig8GZd6_13polars_stream", scope: !2799, file: !2790, line: 2104, type: !2596, scopeLine: 2104, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2595)
!132677 = distinct !DISubprogram(name: "atomic_add<usize, usize>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core4sync6atomic10atomic_addjjECs2g09Ig8GZd6_13polars_stream", scope: !2702, file: !2700, line: 3933, type: !2596, scopeLine: 3933, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2595)
!132678 = distinct !DISubprogram(name: "fetch_add", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE9fetch_add", scope: !2703, file: !2700, line: 3160, type: !2596, scopeLine: 3160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2595)
!132679 = distinct !DILexicalBlock(scope: !132675, file: !2790, line: 2394, column: 9)
!132680 = !DINamespace(name: "{impl#9}", scope: !3298)
!132681 = !DINamespace(name: "{impl#4}", scope: !3301)
!132682 = !{!132561}
!132683 = !{!132576, !132575, !132561}
!132684 = !{!132576, !132561}
!132685 = !{!132591, !132589, !132587, !132585}
!132686 = !{!132575, !132561}
!132687 = !{!132593, !132561}
!132688 = !{!132626, !132625, !132593, !132561}
!132689 = !{!132631, !132626, !132625, !132593, !132561}
!132690 = !{!132626, !132593, !132561}
!132691 = !{!132641}
!132692 = !{!132648, !132646, !132644, !132641, !132626, !132593, !132561}
!132693 = !{!132663, !132661, !132659, !132657, !132593, !132561}
!132694 = !DILocation(line: 42, column: 12, scope: !132672)
!132695 = !DILocation(line: 9, column: 17, scope: !132673, inlinedAt: !132694)
!132696 = !DILocation(line: 148, column: 10, scope: !132674, inlinedAt: !132695)
!132697 = !DILocation(line: 2394, column: 29, scope: !132675, inlinedAt: !132696)
!132698 = !DILocation(line: 2110, column: 27, scope: !132676, inlinedAt: !132697)
!132699 = !DINamespace(name: "{impl#5}", scope: !3304)
!132700 = !DILocation(line: 2394, column: 44, scope: !132675, inlinedAt: !132696)
!132701 = !DILocation(line: 3162, column: 26, scope: !132678, inlinedAt: !132700)
!132702 = !DILocation(line: 38, column: 17, scope: !132556)
!132703 = !DILocation(line: 43, column: 12, scope: !132557)
!132704 = !DILocation(line: 14, column: 5, scope: !132558, inlinedAt: !132559)
!132705 = !DILocation(line: 1955, column: 14, scope: !132562, inlinedAt: !132565)
!132706 = !DILocation(line: 612, column: 33, scope: !132566, inlinedAt: !132571)
!132707 = !DILocation(line: 744, column: 12, scope: !132568, inlinedAt: !132569)
!132708 = !DILocation(line: 745, column: 13, scope: !132568, inlinedAt: !132569)
!132709 = !DILocation(line: 1721, column: 9, scope: !132572, inlinedAt: !132573)
!132710 = !DILocation(line: 744, column: 9, scope: !132568, inlinedAt: !132569)
!132711 = !DILocation(line: 20, column: 10, scope: !132563, inlinedAt: !132564)
!132712 = !DILocation(line: 16, column: 5, scope: !132558, inlinedAt: !132559)
!132713 = !DILocation(line: 18, column: 5, scope: !2218, inlinedAt: !132577)
!132714 = !DILocation(line: 19, column: 5, scope: !2218, inlinedAt: !132577)
!132715 = !DILocation(line: 16, column: 14, scope: !2218, inlinedAt: !132577)
!132716 = !DILocation(line: 16, column: 10, scope: !2218, inlinedAt: !132577)
!132717 = !DILocation(line: 612, column: 33, scope: !1695, inlinedAt: !132583)
!132718 = !DILocation(line: 779, column: 12, scope: !378, inlinedAt: !132581)
!132719 = !DILocation(line: 780, column: 13, scope: !378, inlinedAt: !132581)
!132720 = !DILocation(line: 17, column: 5, scope: !132558, inlinedAt: !132559)
!132721 = !DILocation(line: 629, column: 13, scope: !132594, inlinedAt: !132595)
!132722 = !DILocation(line: 141, column: 9, scope: !132596, inlinedAt: !132597)
!132723 = !DILocation(line: 2447, column: 9, scope: !132598, inlinedAt: !132613)
!132724 = !DILocation(line: 3905, column: 24, scope: !1940, inlinedAt: !132614)
!132725 = !DILocation(line: 156, column: 12, scope: !132604, inlinedAt: !132607)
!132726 = !DILocation(line: 637, column: 5, scope: !132594, inlinedAt: !132595)
!132727 = !DILocation(line: 25, column: 5, scope: !132558, inlinedAt: !132559)
!132728 = !DILocation(line: 631, column: 19, scope: !132606, inlinedAt: !132595)
!132729 = !DILocation(line: 631, column: 34, scope: !132606, inlinedAt: !132595)
!132730 = !DILocation(line: 3937, column: 24, scope: !132615, inlinedAt: !132622)
!132731 = !DILocation(line: 2411, column: 12, scope: !132623, inlinedAt: !132620)
!132732 = !DILocation(line: 2412, column: 13, scope: !132623, inlinedAt: !132620)
!132733 = !DILocation(line: 279, column: 13, scope: !2485, inlinedAt: !132629)
!132734 = !DILocation(line: 279, column: 25, scope: !2485, inlinedAt: !132629)
!132735 = !DILocation(line: 3905, column: 24, scope: !1940, inlinedAt: !132639)
!132736 = !DILocation(line: 156, column: 12, scope: !2490, inlinedAt: !132634)
!132737 = !DILocation(line: 410, column: 14, scope: !2491, inlinedAt: !132633)
!132738 = !DILocation(line: 285, column: 5, scope: !2485, inlinedAt: !132629)
!132739 = !DILocation(line: 810, column: 1, scope: !2495, inlinedAt: !132642)
!132740 = !DILocation(line: 3956, column: 24, scope: !132, inlinedAt: !132653)
!132741 = !DILocation(line: 2814, column: 12, scope: !131, inlinedAt: !132651)
!132742 = !DILocation(line: 4387, column: 24, scope: !105, inlinedAt: !132654)
!132743 = !DILocation(line: 2857, column: 18, scope: !131, inlinedAt: !132651)
!132744 = !DILocation(line: 281, column: 15, scope: !2496, inlinedAt: !132629)
!132745 = !DILocation(line: 281, column: 9, scope: !2496, inlinedAt: !132629)
!132746 = !DILocation(line: 278, column: 5, scope: !2485, inlinedAt: !132629)
!132747 = !DILocation(line: 283, column: 18, scope: !2496, inlinedAt: !132629)
!132748 = !DILocation(line: 241, column: 32, scope: !132655, inlinedAt: !132628)
!132749 = !DILocation(line: 633, column: 27, scope: !132606, inlinedAt: !132595)
!132750 = !DILocation(line: 634, column: 13, scope: !132606, inlinedAt: !132595)
!132751 = !DILocation(line: 630, column: 9, scope: !132605, inlinedAt: !132595)
!132752 = !DILocation(line: 3956, column: 24, scope: !132, inlinedAt: !132669)
!132753 = !DILocation(line: 2814, column: 12, scope: !131, inlinedAt: !132667)
!132754 = !DILocation(line: 4387, column: 24, scope: !105, inlinedAt: !132670)
!132755 = !DILocation(line: 2857, column: 18, scope: !131, inlinedAt: !132667)
!132756 = !DILocation(line: 628, column: 5, scope: !132594, inlinedAt: !132595)
!132757 = !DILocation(line: 12, column: 21, scope: !132558, inlinedAt: !132559)
!132758 = !DILocation(line: 12, column: 17, scope: !132558, inlinedAt: !132559)
!132759 = !DILocation(line: 38, column: 17, scope: !132557)
!132760 = !DILocation(line: 636, column: 9, scope: !132605, inlinedAt: !132595)
!132761 = !DILocation(line: 12, column: 22, scope: !132558, inlinedAt: !132559)
!132762 = !DILocation(line: 38, column: 21, scope: !132557)
!132763 = !DILocation(line: 38, column: 21, scope: !132556)
!132764 = !DILocation(line: 444, column: 20, scope: !132671, inlinedAt: !132698)
!132765 = !DILocation(line: 3937, column: 24, scope: !132677, inlinedAt: !132701)
!132766 = !DILocation(line: 2411, column: 12, scope: !132679, inlinedAt: !132696)
!132767 = !DILocation(line: 38, column: 17, scope: !132672)
!132768 = !DILocation(line: 2415, column: 38, scope: !132679, inlinedAt: !132696)
!132769 = !DILocation(line: 2412, column: 13, scope: !132679, inlinedAt: !132696)
!132770 = !DILocation(line: 38, column: 22, scope: !132556)
!132771 = distinct !DISubprogram(name: "fmt", linkageName: "_RNvXs7_NtNtCs8774dFTUdNv_12polars_arrow9datatypes13physical_typeNtB5_11IntegerTypeNtNtCscgRAwXFJnXP_4core3fmt5Debug3fmt", scope: !132774, file: !132772, line: 68, type: !2596, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2595)
!132772 = !DIFile(filename: "crates/polars-arrow/src/datatypes/physical_type.rs", directory: "/opt-bench/work/pola-rs/polars", checksumkind: CSK_MD5, checksum: "aa3b6f94d33d92116471192d3e12da26")
!132773 = !DINamespace(name: "physical_type", scope: !3574)
!132774 = !DINamespace(name: "{impl#9}", scope: !132773)
!132775 = !DILocation(line: 68, column: 10, scope: !132771)
!132776 = !DILocation(line: 68, column: 15, scope: !132771)
!132777 = distinct !DISubprogram(name: "eq<polars_core::datatypes::temporal::time_zone::TimeZone, polars_core::datatypes::temporal::time_zone::TimeZone>", linkageName: "_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneNtB7_9PartialEq2eqCs2g09Ig8GZd6_13polars_stream", scope: !3295, file: !2749, line: 2123, type: !2614, scopeLine: 2123, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2595)
!132778 = distinct !{!132778, !"_RNvXs5_NtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zoneNtB5_8TimeZoneNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq"}
!132779 = distinct !{!132779, !132778, !"_RNvXs5_NtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zoneNtB5_8TimeZoneNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq: argument 0"}
!132780 = distinct !{!132780, !132778, !"_RNvXs5_NtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zoneNtB5_8TimeZoneNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq: argument 1"}
!132781 = distinct !DISubprogram(name: "eq", linkageName: "_RNvXs5_NtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zoneNtB5_8TimeZoneNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq", scope: !132814, file: !3263, line: 6, type: !2596, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2595)
!132782 = distinct !DILocation(line: 2124, column: 13, scope: !132777)
!132783 = distinct !DILocation(line: 11, column: 5, scope: !132781, inlinedAt: !132782)
!132784 = distinct !DILocation(line: 259, column: 14, scope: !2366, inlinedAt: !132783)
!132785 = distinct !DILocation(line: 67, column: 16, scope: !2365, inlinedAt: !132784)
!132786 = distinct !DILocation(line: 558, column: 16, scope: !2364, inlinedAt: !132785)
!132787 = distinct !DILocation(line: 381, column: 54, scope: !2363, inlinedAt: !132786)
!132788 = distinct !DILocation(line: 359, column: 17, scope: !88, inlinedAt: !132787)
!132789 = distinct !{!132789, !"_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice"}
!132790 = distinct !{!132790, !132789, !"_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice: argument 0"}
!132791 = distinct !{!132791, !"_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCs2g09Ig8GZd6_13polars_stream"}
!132792 = distinct !{!132792, !132791, !"_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCs2g09Ig8GZd6_13polars_stream: argument 1"}
!132793 = distinct !DILocation(line: 365, column: 30, scope: !88, inlinedAt: !132787)
!132794 = distinct !DILocation(line: 364, column: 26, scope: !88, inlinedAt: !132787)
!132795 = distinct !DILocation(line: 1576, column: 8, scope: !91, inlinedAt: !132794)
!132796 = distinct !DILocation(line: 259, column: 32, scope: !2366, inlinedAt: !132783)
!132797 = distinct !DILocation(line: 99, column: 14, scope: !2370, inlinedAt: !132796)
!132798 = distinct !DILocation(line: 67, column: 16, scope: !2369, inlinedAt: !132797)
!132799 = distinct !DILocation(line: 558, column: 16, scope: !2368, inlinedAt: !132798)
!132800 = distinct !DILocation(line: 381, column: 54, scope: !2367, inlinedAt: !132799)
!132801 = distinct !DILocation(line: 359, column: 17, scope: !88, inlinedAt: !132800)
!132802 = distinct !{!132802, !"_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice"}
!132803 = distinct !{!132803, !132802, !"_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice: argument 0"}
!132804 = distinct !DILocation(line: 365, column: 30, scope: !88, inlinedAt: !132800)
!132805 = distinct !DILocation(line: 364, column: 26, scope: !88, inlinedAt: !132800)
!132806 = distinct !DILocation(line: 1576, column: 8, scope: !91, inlinedAt: !132805)
!132807 = distinct !DILocation(line: 259, column: 9, scope: !2366, inlinedAt: !132783)
!132808 = distinct !DILocation(line: 2124, column: 13, scope: !2375, inlinedAt: !132807)
!132809 = distinct !DILocation(line: 30, column: 9, scope: !2374, inlinedAt: !132808)
!132810 = distinct !DILocation(line: 2124, column: 13, scope: !3526, inlinedAt: !132809)
!132811 = distinct !DILocation(line: 25, column: 22, scope: !2372, inlinedAt: !132810)
!132812 = !{!132779}
!132813 = !{!132780}
!132814 = !DINamespace(name: "{impl#7}", scope: !3265)
!132815 = !{!132790, !132779}
!132816 = !{!132792, !132780}
!132817 = !{!132803, !132780}
!132818 = !DILocation(line: 2124, column: 13, scope: !132777)
!132819 = !DILocation(line: 612, column: 33, scope: !85, inlinedAt: !132788)
!132820 = !DILocation(line: 359, column: 12, scope: !88, inlinedAt: !132787)
!132821 = !DILocation(line: 2548, column: 13, scope: !89, inlinedAt: !132793)
!132822 = !DILocation(line: 1077, column: 12, scope: !90, inlinedAt: !132795)
!132823 = !DILocation(line: 369, column: 12, scope: !93, inlinedAt: !132787)
!132824 = !DILocation(line: 358, column: 28, scope: !87, inlinedAt: !132787)
!132825 = !DILocation(line: 368, column: 27, scope: !92, inlinedAt: !132787)
!132826 = !DILocation(line: 369, column: 9, scope: !93, inlinedAt: !132787)
!132827 = !DILocation(line: 0, scope: !88, inlinedAt: !132787)
!132828 = !DILocation(line: 0, scope: !86, inlinedAt: !132787)
!132829 = !DILocation(line: 612, column: 33, scope: !85, inlinedAt: !132801)
!132830 = !DILocation(line: 359, column: 12, scope: !88, inlinedAt: !132800)
!132831 = !DILocation(line: 2548, column: 13, scope: !89, inlinedAt: !132804)
!132832 = !DILocation(line: 1077, column: 12, scope: !90, inlinedAt: !132806)
!132833 = !DILocation(line: 369, column: 12, scope: !93, inlinedAt: !132800)
!132834 = !DILocation(line: 358, column: 28, scope: !87, inlinedAt: !132800)
!132835 = !DILocation(line: 368, column: 27, scope: !92, inlinedAt: !132800)
!132836 = !DILocation(line: 369, column: 9, scope: !93, inlinedAt: !132800)
!132837 = !DILocation(line: 0, scope: !88, inlinedAt: !132800)
!132838 = !DILocation(line: 0, scope: !86, inlinedAt: !132800)
!132839 = !DILocation(line: 22, column: 12, scope: !2372, inlinedAt: !132810)
!132840 = !DILocation(line: 158, column: 13, scope: !2377, inlinedAt: !132811)
!132841 = !DILocation(line: 22, column: 9, scope: !2372, inlinedAt: !132810)
!132842 = !DILocation(line: 0, scope: !2372, inlinedAt: !132810)
!132843 = !DILocation(line: 2125, column: 10, scope: !132777)
!132844 = distinct !DISubprogram(name: "fmt", linkageName: "_RNvXs7_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata7compactNtB5_18CompactColumnChunkNtNtCscgRAwXFJnXP_4core3fmt5Debug3fmt", scope: !132845, file: !3585, line: 96, type: !2596, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2595)
!132845 = !DINamespace(name: "{impl#9}", scope: !3586)
!132846 = !DILocation(line: 99, column: 5, scope: !132844)
!132847 = !DILocation(line: 100, column: 5, scope: !132844)
!132848 = !DILocation(line: 101, column: 5, scope: !132844)
!132849 = !DILocation(line: 102, column: 5, scope: !132844)
!132850 = !DILocation(line: 96, column: 10, scope: !132844)
!132851 = !DILocation(line: 96, column: 14, scope: !132844)
!132852 = !DILocation(line: 96, column: 15, scope: !132844)
!132853 = distinct !DISubprogram(name: "split_at<polars_stream::nodes::group_by::LocalGroupBySinkState>", linkageName: "_RNvXs9_NtCse67t6KqNqGQ_5rayon3vecINtB5_13DrainProducerNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8group_by21LocalGroupBySinkStateENtNtNtB7_4iter8plumbing8Producer8split_atBW_", scope: !3180, file: !2871, line: 227, type: !2596, scopeLine: 227, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2595)
!132854 = distinct !DISubprogram(name: "replace<&mut [polars_stream::nodes::group_by::LocalGroupBySinkState]>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3mem7replaceQSNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8group_by21LocalGroupBySinkStateEBH_", scope: !2802, file: !2801, line: 915, type: !2596, scopeLine: 915, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2595)
!132855 = distinct !DILexicalBlock(scope: !132854, file: !2801, line: 929, column: 9)
!132856 = distinct !DISubprogram(name: "take<&mut [polars_stream::nodes::group_by::LocalGroupBySinkState]>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3mem4takeQSNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8group_by21LocalGroupBySinkStateEBE_", scope: !2802, file: !2801, line: 848, type: !2596, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2595)
!132857 = distinct !DILexicalBlock(scope: !132853, file: !2871, line: 229, column: 9)
!132858 = distinct !DILocation(line: 230, column: 35, scope: !132857)
!132859 = distinct !DILocation(line: 1987, column: 20, scope: !2559, inlinedAt: !132858)
!132860 = distinct !DILocation(line: 2196, column: 32, scope: !2558, inlinedAt: !132859)
!132861 = distinct !DILocation(line: 2109, column: 40, scope: !2563, inlinedAt: !132860)
!132862 = distinct !DILexicalBlock(scope: !132857, file: !2871, line: 230, column: 9)
!132863 = !DILocation(line: 229, column: 21, scope: !132853)
!132864 = !DILocation(line: 849, column: 5, scope: !132856, inlinedAt: !132863)
!132865 = !DILocation(line: 930, column: 49, scope: !132855, inlinedAt: !132864)
!132866 = !DILocation(line: 2193, column: 12, scope: !2558, inlinedAt: !132859)
!132867 = !DILocation(line: 1989, column: 21, scope: !2559, inlinedAt: !132858)
!132868 = !DILocation(line: 232, column: 5, scope: !132853)
!132869 = !DILocation(line: 0, scope: !132853)
!132870 = !DILocation(line: 961, column: 18, scope: !2560, inlinedAt: !132861)
!132871 = !DILocation(line: 2109, column: 50, scope: !2563, inlinedAt: !132860)
!132872 = !DILocation(line: 231, column: 18, scope: !132862)
!132873 = !DILocation(line: 232, column: 6, scope: !132853)
!132874 = !DILocation(line: 227, column: 5, scope: !132853)
!132875 = distinct !DISubprogram(name: "fmt<chrono::offset::utc::Utc>", linkageName: "_RNvXsA_NtCs9o5SvTbM2BP_6chrono8datetimeINtB5_8DateTimeNtNtNtB7_6offset3utc3UtcENtNtCscgRAwXFJnXP_4core3fmt7Display3fmtCs2g09Ig8GZd6_13polars_stream", scope: !132881, file: !132878, line: 1869, type: !2596, scopeLine: 1869, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2595)
!132876 = distinct !DISubprogram(name: "overflowing_naive_local<chrono::offset::utc::Utc>", linkageName: "_RNvMNtCs9o5SvTbM2BP_6chrono8datetimeINtB2_8DateTimeNtNtNtB4_6offset3utc3UtcE23overflowing_naive_localCs2g09Ig8GZd6_13polars_stream", scope: !132882, file: !132878, line: 589, type: !2596, scopeLine: 589, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2595)
!132877 = distinct !DISubprogram(name: "branch<(), core::fmt::Error>", linkageName: "_RNvXsp_NtCscgRAwXFJnXP_4core6resultINtB5_6ResultuNtNtB7_3fmt5ErrorENtNtNtB7_3ops9try_trait3Try6branchCs2g09Ig8GZd6_13polars_stream", scope: !2631, file: !2629, line: 2172, type: !2596, scopeLine: 2172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2595)
!132878 = !DIFile(filename: "src/datetime/mod.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/chrono-0.4.44", checksumkind: CSK_MD5, checksum: "46d31204d6c7fd0b6c0211a27c301886")
!132879 = !DINamespace(name: "chrono", scope: null)
!132880 = !DINamespace(name: "datetime", scope: !132879)
!132881 = !DINamespace(name: "{impl#38}", scope: !132880)
!132882 = !DINamespace(name: "DateTime", scope: !132880)
!132883 = !DILocation(line: 1870, column: 14, scope: !132875)
!132884 = !DILocation(line: 1870, column: 9, scope: !132875)
!132885 = !DILocation(line: 1871, column: 9, scope: !132875)
!132886 = !DILocation(line: 590, column: 9, scope: !132876, inlinedAt: !132883)
!132887 = !DILocation(line: 590, column: 46, scope: !132876, inlinedAt: !132883)
!132888 = !DILocation(line: 590, column: 23, scope: !132876, inlinedAt: !132883)
!132889 = !DILocation(line: 590, column: 63, scope: !132876, inlinedAt: !132883)
!132890 = !DILocation(line: 1870, column: 40, scope: !132875)
!132891 = !DILocation(line: 1870, column: 47, scope: !132875)
!132892 = !DILocation(line: 2173, column: 9, scope: !132877, inlinedAt: !132884)
!132893 = !DILocation(line: 1871, column: 11, scope: !132875)
!132894 = !DILocation(line: 2173, column: 9, scope: !132877, inlinedAt: !132885)
!132895 = !DILocation(line: 1872, column: 21, scope: !132875)
!132896 = !DILocation(line: 1873, column: 6, scope: !132875)
!132897 = !DILocation(line: 0, scope: !132875)
!132898 = distinct !DISubprogram(name: "try_from<alloc::boxed::Box<dyn polars_arrow::array::Array, alloc::alloc::Global>, alloc::alloc::Global, 1>", linkageName: "_RNvXsE_NtCsgZ49sUHp3tW_5alloc3vecAINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_Ej1_INtNtCscgRAwXFJnXP_4core7convert7TryFromINtB5_3VecBw_EE8try_fromCs2g09Ig8GZd6_13polars_stream", scope: !132911, file: !2636, line: 4493, type: !2596, scopeLine: 4493, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2595)
!132899 = distinct !DISubprogram(name: "len<alloc::boxed::Box<dyn polars_arrow::array::Array, alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtNtB6_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE3lenCs2g09Ig8GZd6_13polars_stream", scope: !2638, file: !2636, line: 3023, type: !2596, scopeLine: 3023, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2595)
!132900 = distinct !DILexicalBlock(scope: !132899, file: !2636, line: 3024, column: 9)
!132901 = distinct !DISubprogram(name: "set_len<alloc::boxed::Box<dyn polars_arrow::array::Array, alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtNtB6_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE7set_lenCs2g09Ig8GZd6_13polars_stream", scope: !2638, file: !2636, line: 2188, type: !2596, scopeLine: 2188, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2595)
!132902 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, alloc::boxed::Box<dyn polars_arrow::array::Array, alloc::alloc::Global>>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner8non_nullINtNtB8_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECs2g09Ig8GZd6_13polars_stream", scope: !2634, file: !2632, line: 613, type: !2596, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2595)
!132903 = distinct !DISubprogram(name: "as_ptr<alloc::boxed::Box<dyn polars_arrow::array::Array, alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtNtB6_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE6as_ptrCs2g09Ig8GZd6_13polars_stream", scope: !2638, file: !2636, line: 1939, type: !2596, scopeLine: 1939, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2595)
!132904 = distinct !DISubprogram(name: "ptr<alloc::boxed::Box<dyn polars_arrow::array::Array, alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE3ptrCs2g09Ig8GZd6_13polars_stream", scope: !2635, file: !2632, line: 295, type: !2596, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2595)
!132905 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, alloc::boxed::Box<dyn polars_arrow::array::Array, alloc::alloc::Global>>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner3ptrINtNtB8_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECs2g09Ig8GZd6_13polars_stream", scope: !2634, file: !2632, line: 608, type: !2596, scopeLine: 608, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2595)
!132906 = distinct !DILexicalBlock(scope: !132898, file: !2636, line: 4506, column: 9)
!132907 = distinct !DISubprogram(name: "read<[alloc::boxed::Box<dyn polars_arrow::array::Array, alloc::alloc::Global>; 1]>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr4readAINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_Ej1_ECs2g09Ig8GZd6_13polars_stream", scope: !2622, file: !2621, line: 1682, type: !2596, scopeLine: 1682, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2595)
!132908 = distinct !DILocation(line: 4508, column: 5, scope: !132898)
!132909 = distinct !DILocation(line: 810, column: 1, scope: !409, inlinedAt: !132908)
!132910 = distinct !DILocation(line: 810, column: 1, scope: !409, inlinedAt: !132908)
!132911 = !DINamespace(name: "{impl#42}", scope: !2637)
!132912 = !DILocation(line: 4494, column: 16, scope: !132898)
!132913 = !DILocation(line: 4499, column: 22, scope: !132898)
!132914 = !DILocation(line: 4506, column: 44, scope: !132898)
!132915 = !DILocation(line: 1942, column: 18, scope: !132903, inlinedAt: !132914)
!132916 = !DILocation(line: 296, column: 20, scope: !132904, inlinedAt: !132915)
!132917 = !DILocation(line: 609, column: 14, scope: !132905, inlinedAt: !132916)
!132918 = !DILocation(line: 4506, column: 30, scope: !132898)
!132919 = !DILocation(line: 3024, column: 19, scope: !132899, inlinedAt: !132912)
!132920 = !DILocation(line: 3029, column: 37, scope: !132900, inlinedAt: !132912)
!132921 = !DILocation(line: 3029, column: 18, scope: !132900, inlinedAt: !132912)
!132922 = !DILocation(line: 4494, column: 12, scope: !132898)
!132923 = !DILocation(line: 4495, column: 24, scope: !132898)
!132924 = !DILocation(line: 4508, column: 5, scope: !132898)
!132925 = !DILocation(line: 2195, column: 9, scope: !132901, inlinedAt: !132913)
!132926 = !DILocation(line: 614, column: 9, scope: !132902, inlinedAt: !132917)
!132927 = !DILocation(line: 4507, column: 9, scope: !132906)
!132928 = !DILocation(line: 1721, column: 9, scope: !132907, inlinedAt: !132918)
!132929 = !DILocation(line: 810, column: 1, scope: !409, inlinedAt: !132908)
!132930 = !DILocation(line: 810, column: 1, scope: !410, inlinedAt: !132909)
!132931 = !DILocation(line: 810, column: 1, scope: !410, inlinedAt: !132910)
!132932 = !DILocation(line: 4508, column: 6, scope: !132898)
!132933 = distinct !DISubprogram(name: "fmt", linkageName: "_RNvXsK_NtCscgRAwXFJnXP_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt", scope: !132934, file: !3564, line: 108, type: !2596, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2595)
!132934 = !DINamespace(name: "{impl#48}", scope: !3565)
!132935 = !DILocation(line: 108, column: 23, scope: !132933)
!132936 = !DILocation(line: 108, column: 28, scope: !132933)
!132937 = distinct !DISubprogram(name: "fmt<alloc::vec::Vec<i32, alloc::alloc::Global>>", linkageName: "_RNvXsR_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VeclEENtNtB7_3fmt5Debug3fmtCs2g09Ig8GZd6_13polars_stream", scope: !3613, file: !2597, line: 594, type: !2596, scopeLine: 594, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2595)
!132938 = distinct !DILexicalBlock(scope: !132937, file: !2597, line: 594, column: 16)
!132939 = !DILocation(line: 594, column: 16, scope: !132937)
!132940 = !DILocation(line: 608, column: 56, scope: !132937)
!132941 = !DILocation(line: 594, column: 16, scope: !132938)
!132942 = !DILocation(line: 594, column: 20, scope: !132937)
!132943 = !DILocation(line: 594, column: 21, scope: !132937)
!132944 = distinct !DISubprogram(name: "fmt<alloc::sync::Arc<hashbrown::map::HashMap<usize, polars_stream::nodes::io_sources::multi_scan::components::projection::ProjectionTransform, foldhash::quality::RandomState, allocator_api2::stable::alloc::global::Global>, alloc::alloc::Global>>", linkageName: "_RNvXsR_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCs7tGzs63DEEy_9hashbrown3map7HashMapjNtNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan10components10projection19ProjectionTransformNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEEENtNtB7_3fmt5Debug3fmtB2a_", scope: !3613, file: !2597, line: 594, type: !2596, scopeLine: 594, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2595)
!132945 = distinct !DILexicalBlock(scope: !132944, file: !2597, line: 594, column: 16)
!132946 = !DILocation(line: 594, column: 16, scope: !132944)
!132947 = !DILocation(line: 608, column: 56, scope: !132944)
!132948 = !DILocation(line: 594, column: 16, scope: !132945)
!132949 = !DILocation(line: 594, column: 20, scope: !132944)
!132950 = !DILocation(line: 594, column: 21, scope: !132944)
!132951 = distinct !DISubprogram(name: "fmt<polars_arrow::bitmap::immutable::Bitmap>", linkageName: "_RNvXsR_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapENtNtB7_3fmt5Debug3fmtCs2g09Ig8GZd6_13polars_stream", scope: !3613, file: !2597, line: 594, type: !2596, scopeLine: 594, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2595)
!132952 = distinct !DILexicalBlock(scope: !132951, file: !2597, line: 594, column: 16)
!132953 = !DILocation(line: 594, column: 16, scope: !132951)
!132954 = !DILocation(line: 608, column: 56, scope: !132951)
!132955 = !DILocation(line: 594, column: 16, scope: !132952)
!132956 = !DILocation(line: 594, column: 20, scope: !132951)
!132957 = !DILocation(line: 594, column: 21, scope: !132951)
!132958 = distinct !DISubprogram(name: "fmt<polars_io::cloud::options::CloudOptions>", linkageName: "_RNvXsR_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionNtNtNtCslpwjCj2YNBy_9polars_io5cloud7options12CloudOptionsENtNtB7_3fmt5Debug3fmtCs2g09Ig8GZd6_13polars_stream", scope: !3613, file: !2597, line: 594, type: !2596, scopeLine: 594, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2595)
!132959 = distinct !DILexicalBlock(scope: !132958, file: !2597, line: 594, column: 16)
!132960 = !DILocation(line: 594, column: 16, scope: !132958)
!132961 = !DILocation(line: 608, column: 56, scope: !132958)
!132962 = !DILocation(line: 594, column: 16, scope: !132959)
!132963 = !DILocation(line: 594, column: 20, scope: !132958)
!132964 = !DILocation(line: 594, column: 21, scope: !132958)
!132965 = distinct !DISubprogram(name: "fmt<polars_parquet::parquet::metadata::compact::CompactStatistics>", linkageName: "_RNvXsR_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata7compact17CompactStatisticsENtNtB7_3fmt5Debug3fmtCs2g09Ig8GZd6_13polars_stream", scope: !3613, file: !2597, line: 594, type: !2596, scopeLine: 594, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2595)
!132966 = distinct !DILexicalBlock(scope: !132965, file: !2597, line: 594, column: 16)
!132967 = !DILocation(line: 594, column: 16, scope: !132965)
!132968 = !DILocation(line: 608, column: 56, scope: !132965)
!132969 = !DILocation(line: 594, column: 16, scope: !132966)
!132970 = !DILocation(line: 594, column: 20, scope: !132965)
!132971 = !DILocation(line: 594, column: 21, scope: !132965)
!132972 = distinct !DISubprogram(name: "fmt<polars_parquet::parquet::metadata::compact::ByteRange>", linkageName: "_RNvXsR_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata7compact9ByteRangeENtNtB7_3fmt5Debug3fmtCs2g09Ig8GZd6_13polars_stream", scope: !3613, file: !2597, line: 594, type: !2596, scopeLine: 594, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2595)
!132973 = distinct !DILexicalBlock(scope: !132972, file: !2597, line: 594, column: 16)
!132974 = !DILocation(line: 594, column: 16, scope: !132972)
!132975 = !DILocation(line: 608, column: 56, scope: !132972)
!132976 = !DILocation(line: 594, column: 16, scope: !132973)
!132977 = !DILocation(line: 594, column: 20, scope: !132972)
!132978 = !DILocation(line: 594, column: 21, scope: !132972)
!132979 = distinct !DISubprogram(name: "fmt<bool>", linkageName: "_RNvXsR_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionbENtNtB7_3fmt5Debug3fmtCs2g09Ig8GZd6_13polars_stream", scope: !3613, file: !2597, line: 594, type: !2596, scopeLine: 594, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2595)
!132980 = distinct !DILexicalBlock(scope: !132979, file: !2597, line: 594, column: 16)
!132981 = !DILocation(line: 594, column: 16, scope: !132979)
!132982 = !DILocation(line: 608, column: 56, scope: !132979)
!132983 = !DILocation(line: 594, column: 16, scope: !132980)
!132984 = !DILocation(line: 594, column: 20, scope: !132979)
!132985 = !DILocation(line: 594, column: 21, scope: !132979)
!132986 = distinct !DISubprogram(name: "fmt<i32>", linkageName: "_RNvXsR_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionlENtNtB7_3fmt5Debug3fmtCs2g09Ig8GZd6_13polars_stream", scope: !3613, file: !2597, line: 594, type: !2596, scopeLine: 594, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2595)
!132987 = distinct !DILexicalBlock(scope: !132986, file: !2597, line: 594, column: 16)
!132988 = !DILocation(line: 594, column: 16, scope: !132986)
!132989 = !DILocation(line: 608, column: 56, scope: !132986)
!132990 = !DILocation(line: 594, column: 16, scope: !132987)
!132991 = !DILocation(line: 594, column: 20, scope: !132986)
!132992 = !DILocation(line: 594, column: 21, scope: !132986)
!132993 = distinct !DISubprogram(name: "fmt<i64>", linkageName: "_RNvXsR_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionxENtNtB7_3fmt5Debug3fmtCs2g09Ig8GZd6_13polars_stream", scope: !3613, file: !2597, line: 594, type: !2596, scopeLine: 594, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2595)
!132994 = distinct !DILexicalBlock(scope: !132993, file: !2597, line: 594, column: 16)
!132995 = !DILocation(line: 594, column: 16, scope: !132993)
!132996 = !DILocation(line: 608, column: 56, scope: !132993)
!132997 = !DILocation(line: 594, column: 16, scope: !132994)
!132998 = !DILocation(line: 594, column: 20, scope: !132993)
!132999 = !DILocation(line: 594, column: 21, scope: !132993)
!133000 = distinct !DISubprogram(name: "fmt", linkageName: "_RNvXsR_NtNtCscgRAwXFJnXP_4core3fmt3numxNtB7_5Debug3fmt", scope: !133003, file: !3614, line: 85, type: !2596, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2595)
!133001 = distinct !DISubprogram(name: "debug_lower_hex", linkageName: "_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter15debug_lower_hex", scope: !3616, file: !3564, line: 2398, type: !2596, scopeLine: 2398, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2595)
!133002 = distinct !DISubprogram(name: "debug_upper_hex", linkageName: "_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter15debug_upper_hex", scope: !3616, file: !3564, line: 2401, type: !2596, scopeLine: 2401, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2595)
!133003 = !DINamespace(name: "{impl#55}", scope: !3615)
!133004 = !DILocation(line: 86, column: 26, scope: !133000)
!133005 = !DILocation(line: 88, column: 33, scope: !133000)
!133006 = !DILocation(line: 2399, column: 9, scope: !133001, inlinedAt: !133004)
!133007 = !DILocation(line: 86, column: 24, scope: !133000)
!133008 = !DILocation(line: 2402, column: 9, scope: !133002, inlinedAt: !133005)
!133009 = !DILocation(line: 88, column: 31, scope: !133000)
!133010 = !DILocation(line: 87, column: 25, scope: !133000)
!133011 = !DILocation(line: 91, column: 25, scope: !133000)
!133012 = !DILocation(line: 89, column: 25, scope: !133000)
!133013 = !DILocation(line: 93, column: 18, scope: !133000)
!133014 = distinct !DISubprogram(name: "fmt", linkageName: "_RNvXsS_NtNtCscgRAwXFJnXP_4core3fmt3numnNtB7_5Debug3fmt", scope: !133017, file: !3614, line: 85, type: !2596, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2595)
!133015 = distinct !DISubprogram(name: "debug_lower_hex", linkageName: "_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter15debug_lower_hex", scope: !3616, file: !3564, line: 2398, type: !2596, scopeLine: 2398, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2595)
!133016 = distinct !DISubprogram(name: "debug_upper_hex", linkageName: "_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter15debug_upper_hex", scope: !3616, file: !3564, line: 2401, type: !2596, scopeLine: 2401, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2595)
!133017 = !DINamespace(name: "{impl#56}", scope: !3615)
!133018 = !DILocation(line: 86, column: 26, scope: !133014)
!133019 = !DILocation(line: 88, column: 33, scope: !133014)
!133020 = !DILocation(line: 2399, column: 9, scope: !133015, inlinedAt: !133018)
!133021 = !DILocation(line: 86, column: 24, scope: !133014)
!133022 = !DILocation(line: 2402, column: 9, scope: !133016, inlinedAt: !133019)
!133023 = !DILocation(line: 88, column: 31, scope: !133014)
!133024 = !DILocation(line: 87, column: 25, scope: !133014)
!133025 = !DILocation(line: 91, column: 25, scope: !133014)
!133026 = !DILocation(line: 89, column: 25, scope: !133014)
!133027 = !DILocation(line: 93, column: 18, scope: !133014)
!133028 = distinct !DISubprogram(name: "fmt", linkageName: "_RNvXsW_NtNtCscgRAwXFJnXP_4core3fmt3nummNtB7_5Debug3fmt", scope: !133031, file: !3614, line: 85, type: !2596, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2595)
!133029 = distinct !DISubprogram(name: "debug_lower_hex", linkageName: "_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter15debug_lower_hex", scope: !3616, file: !3564, line: 2398, type: !2596, scopeLine: 2398, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2595)
!133030 = distinct !DISubprogram(name: "debug_upper_hex", linkageName: "_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter15debug_upper_hex", scope: !3616, file: !3564, line: 2401, type: !2596, scopeLine: 2401, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2595)
!133031 = !DINamespace(name: "{impl#60}", scope: !3615)
!133032 = !DILocation(line: 86, column: 26, scope: !133028)
!133033 = !DILocation(line: 88, column: 33, scope: !133028)
!133034 = !DILocation(line: 2399, column: 9, scope: !133029, inlinedAt: !133032)
!133035 = !DILocation(line: 86, column: 24, scope: !133028)
!133036 = !DILocation(line: 2402, column: 9, scope: !133030, inlinedAt: !133033)
!133037 = !DILocation(line: 88, column: 31, scope: !133028)
!133038 = !DILocation(line: 87, column: 25, scope: !133028)
!133039 = !DILocation(line: 91, column: 25, scope: !133028)
!133040 = !DILocation(line: 89, column: 25, scope: !133028)
!133041 = !DILocation(line: 93, column: 18, scope: !133028)
!133042 = distinct !DISubprogram(name: "fmt", linkageName: "_RNvXsZ_NtNtCscgRAwXFJnXP_4core3fmt3numjNtB7_5Debug3fmt", scope: !133045, file: !3614, line: 85, type: !2596, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2595)
!133043 = distinct !DISubprogram(name: "debug_lower_hex", linkageName: "_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter15debug_lower_hex", scope: !3616, file: !3564, line: 2398, type: !2596, scopeLine: 2398, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2595)
!133044 = distinct !DISubprogram(name: "debug_upper_hex", linkageName: "_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter15debug_upper_hex", scope: !3616, file: !3564, line: 2401, type: !2596, scopeLine: 2401, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2595)
!133045 = !DINamespace(name: "{impl#63}", scope: !3615)
!133046 = !DILocation(line: 86, column: 26, scope: !133042)
!133047 = !DILocation(line: 88, column: 33, scope: !133042)
!133048 = !DILocation(line: 2399, column: 9, scope: !133043, inlinedAt: !133046)
!133049 = !DILocation(line: 86, column: 24, scope: !133042)
!133050 = !DILocation(line: 2402, column: 9, scope: !133044, inlinedAt: !133047)
!133051 = !DILocation(line: 88, column: 31, scope: !133042)
!133052 = !DILocation(line: 87, column: 25, scope: !133042)
!133053 = !DILocation(line: 91, column: 25, scope: !133042)
!133054 = !DILocation(line: 89, column: 25, scope: !133042)
!133055 = !DILocation(line: 93, column: 18, scope: !133042)
!133056 = distinct !DISubprogram(name: "fmt<serde_core::de::impls::{impl#19}::deserialize::VecVisitor<u32>>", linkageName: "_RNvXs_NtCs40veMcpUDl8_10serde_core2deINtNvXsh_NtB4_5implsINtNtCsgZ49sUHp3tW_5alloc3vec3VecpENtB4_11Deserialize11deserialize10VecVisitormENtB4_8Expected3fmtCs2g09Ig8GZd6_13polars_stream", scope: !3617, file: !3211, line: 494, type: !2596, scopeLine: 494, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2595)
!133057 = distinct !DISubprogram(name: "expecting<u32>", linkageName: "_RNvXNvXsh_NtNtCs40veMcpUDl8_10serde_core2de5implsINtNtCsgZ49sUHp3tW_5alloc3vec3VecpENtBa_11Deserialize11deserializeINtB2_10VecVisitormENtBa_7Visitor9expectingCs2g09Ig8GZd6_13polars_stream", scope: !3210, file: !3204, line: 1153, type: !2614, scopeLine: 1153, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2595)
!133058 = distinct !DILocation(line: 495, column: 14, scope: !133056)
!133059 = !DILocation(line: 1154, column: 27, scope: !133057, inlinedAt: !133058)
!133060 = !DILocation(line: 496, column: 6, scope: !133056)
!133061 = distinct !DISubprogram(name: "fmt<serde_core::de::impls::{impl#70}::deserialize::PrimitiveVisitor>", linkageName: "_RNvXs_NtCs40veMcpUDl8_10serde_core2deNtNvXs16_NtB4_5implsmNtB4_11Deserialize11deserialize16PrimitiveVisitorNtB4_8Expected3fmtCs2g09Ig8GZd6_13polars_stream", scope: !3617, file: !3211, line: 494, type: !2596, scopeLine: 494, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2595)
!133062 = !DILocation(line: 495, column: 14, scope: !133061)
!133063 = !DILocation(line: 496, column: 6, scope: !133061)
!133064 = distinct !DISubprogram(name: "update_state", linkageName: "_RNvXs_NtNtCs2g09Ig8GZd6_13polars_stream5nodes13dynamic_sliceNtB4_16DynamicSliceNodeNtB6_11ComputeNode12update_state", scope: !3618, file: !3310, line: 37, type: !2596, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2595)
!133065 = distinct !DISubprogram(name: "eq", linkageName: "_RNvXsz_NtCs2g09Ig8GZd6_13polars_stream5graphNtB5_9PortStateNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq", scope: !3547, file: !3545, line: 190, type: !2596, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2595)
!133066 = distinct !DILexicalBlock(scope: !133064, file: !3310, line: 46, column: 68)
!133067 = distinct !DISubprogram(name: "branch<core::option::Option<polars_core::frame::dataframe::DataFrame>, polars_error::PolarsError>", linkageName: "_RNvXsp_NtCscgRAwXFJnXP_4core6resultINtB5_6ResultINtNtB7_6option6OptionNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameENtCsgjwxzEoLG5s_12polars_error11PolarsErrorENtNtNtB7_3ops9try_trait3Try6branchCs2g09Ig8GZd6_13polars_stream", scope: !2631, file: !2629, line: 2172, type: !2596, scopeLine: 2172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2595)
!133068 = distinct !DISubprogram(name: "from_residual<(), polars_error::PolarsError, polars_error::PolarsError>", linkageName: "_RNvXsq_NtCscgRAwXFJnXP_4core6resultINtB5_6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleBL_EE13from_residualCs2g09Ig8GZd6_13polars_stream", scope: !3108, file: !2629, line: 2187, type: !2596, scopeLine: 2187, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2595)
!133069 = distinct !DILexicalBlock(scope: !133068, file: !2629, line: 2189, column: 13)
!133070 = distinct !DILexicalBlock(scope: !133066, file: !3310, line: 47, column: 49)
!133071 = distinct !DILexicalBlock(scope: !133070, file: !3310, line: 47, column: 49)
!133072 = distinct !DISubprogram(name: "unwrap<polars_core::frame::dataframe::DataFrame>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core6optionINtB2_6OptionNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameE6unwrapCs2g09Ig8GZd6_13polars_stream", scope: !2600, file: !2597, line: 1013, type: !2596, scopeLine: 1013, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2595)
!133073 = distinct !DILexicalBlock(scope: !133066, file: !3310, line: 47, column: 17)
end_hunk_1
