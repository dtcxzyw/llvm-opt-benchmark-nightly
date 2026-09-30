Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_parquet-d174a6a0d1de3d93.polars_parquet.b72545e931dce2ac-cgu.08?download=true
inline.NumInlined: 3445
inline.NumDeleted: 1834
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata19file_metadata_serde12rg_from_wire:bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !17661 ; 2 uses
  br i1 %i.n, label %bb.b, label %bb.c, !dbg !17660, !prof !880

bb.b:                                             ; preds = %.noexc.i
  %i.r = load i64, ptr %i.q, align 8, !dbg !17662, !noalias !17616
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.p, i64 %i.r) #36
          to label %.noexc4.i unwind label %bb.i, !dbg !17663, !noalias !17616

.noexc4.i:                                        ; preds = %bb.b
  unreachable, !dbg !17663

bb.c:                                             ; preds = %.noexc.i
  %i.s = load ptr, ptr %i.q, align 8, !dbg !17664, !noalias !17616, !nonnull !859, !noundef !859 ; 2 uses
  %i.t = icmp ule i64 %.sroa.3.0.copyload, %i.p, !dbg !17665
  tail call void @llvm.assume(i1 %i.t), !dbg !17666
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !17667, !noalias !17616
  store i64 %i.p, ptr %i.d, align 8, !dbg !17668, !noalias !17616
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !17668 ; 2 uses
  store ptr %i.s, ptr %i.u, align 8, !dbg !17668, !noalias !17616
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !17668 ; 3 uses
  store i64 0, ptr %i.v, align 8, !dbg !17668, !noalias !17616
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !17669, !noalias !17616
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %i.h, i64 40, i1 false), !dbg !17669, !noalias !17620
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17621), !dbg !17670
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17622), !dbg !17670
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17623), !dbg !17671
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17624), !dbg !17671
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !17672
  %.val.i.i.i = load ptr, ptr %i.w, align 8, !dbg !17672, !alias.scope !17625, !noalias !17626, !nonnull !859, !noundef !859
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !17672
  %.val5.i.i.i = load ptr, ptr %i.x, align 8, !dbg !17672, !alias.scope !17625, !noalias !17626, !nonnull !859, !noundef !859
  %i.y = ptrtoint ptr %.val5.i.i.i to i64, !dbg !17673
  %i.z = ptrtoint ptr %.val.i.i.i to i64, !dbg !17673
  %i.aa = sub nuw i64 %i.y, %i.z, !dbg !17673
  %i.ab = udiv exact i64 %i.aa, 96, !dbg !17673   ; 2 uses
  %i.ac = icmp ugt i64 %i.ab, %i.p, !dbg !17674
  br i1 %i.ac, label %bb.d, label %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata7compact18CompactColumnChunkE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtBK_19file_metadata_serde9ChunkWireENCNvB3z_12rg_from_wire0EEBO_.exit.i.i, !dbg !17675, !prof !880

bb.d:                                             ; preds = %bb.c
  invoke void @_RINvNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef 0, i64 noundef %i.ab, i64 noundef 8, i64 noundef 208)
          to label %._RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata7compact18CompactColumnChunkE7reserveBM_.exit_crit_edge.i.i.i unwind label %bb.e, !dbg !17676, !noalias !17627

._RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata7compact18CompactColumnChunkE7reserveBM_.exit_crit_edge.i.i.i: ; preds = %bb.d
  %.pre.i.i.i = load i64, ptr %i.v, align 8, !dbg !17677, !alias.scope !17628, !noalias !17627
  %.pre.i = load ptr, ptr %i.u, align 8, !dbg !17678, !alias.scope !17628, !noalias !17627
  br label %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata7compact18CompactColumnChunkE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtBK_19file_metadata_serde9ChunkWireENCNvB3z_12rg_from_wire0EEBO_.exit.i.i, !dbg !17676

bb.e:                                             ; preds = %bb.d
  %lpad.thr_comm.i.i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata19file_metadata_serde9ChunkWireENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropB14_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %.body.i unwind label %bb.f, !dbg !17679, !noalias !17616

bb.f:                                             ; preds = %bb.e
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #38, !dbg !17680, !noalias !17616
  unreachable, !dbg !17680

_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata7compact18CompactColumnChunkE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtBK_19file_metadata_serde9ChunkWireENCNvB3z_12rg_from_wire0EEBO_.exit.i.i: ; preds = %._RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata7compact18CompactColumnChunkE7reserveBM_.exit_crit_edge.i.i.i, %bb.c
  %i.ae = phi ptr [ %.pre.i, %._RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata7compact18CompactColumnChunkE7reserveBM_.exit_crit_edge.i.i.i ], [ %i.s, %bb.c ], !dbg !17678
  %i.af = phi i64 [ %.pre.i.i.i, %._RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata7compact18CompactColumnChunkE7reserveBM_.exit_crit_edge.i.i.i ], [ 0, %bb.c ], !dbg !17677
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !17681, !noalias !17629
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !17681
  store ptr %i.ae, ptr %i.ag, align 8, !dbg !17681, !noalias !17629
  store ptr %i.v, ptr %i.a, align 8, !dbg !17681, !noalias !17629
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !17681
  store i64 %i.af, ptr %i.ah, align 8, !dbg !17681, !noalias !17629
  invoke void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata19file_metadata_serde9ChunkWireENCNvB1N_12rg_from_wire0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3y_8for_each4callNtNtB1P_7compact18CompactColumnChunkNCINvMsj_B12_INtB12_3VecB4B_E14extend_trustedBN_E0E0EB1T_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.h, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %bb.j unwind label %bb.g, !dbg !17682, !noalias !17620

bb.g:                                             ; preds = %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata7compact18CompactColumnChunkE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtBK_19file_metadata_serde9ChunkWireENCNvB3z_12rg_from_wire0EEBO_.exit.i.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body.i, !dbg !17683

.body.i:                                          ; preds = %bb.g, %bb.e
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ai, %bb.g ], [ %lpad.thr_comm.i.i.i, %bb.e ]
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata7compact18CompactColumnChunkENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBU_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.thread unwind label %bb.h, !dbg !17684, !noalias !17616

bb.h:                                             ; preds = %bb.i, %.body.i
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #38, !dbg !17685, !noalias !17620
  unreachable, !dbg !17685

bb.i:                                             ; preds = %bb.b, %bb.a
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata19file_metadata_serde9ChunkWireENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropB14_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.h)
          to label %.thread unwind label %bb.h, !dbg !17686, !noalias !17620

bb.j:                                             ; preds = %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata7compact18CompactColumnChunkE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtBK_19file_metadata_serde9ChunkWireENCNvB3z_12rg_from_wire0EEBO_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !17687, !noalias !17629
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !17688, !noalias !17616
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !17689
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !17690
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !17683, !noalias !17616
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !17691
  %i.am = load i64, ptr %i.al, align 8, !dbg !17691, !noundef !859
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.54), !dbg !17692
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !17692
  %.sroa.06.0.copyload = load i64, ptr %i.an, align 8, !dbg !17692 ; 3 uses
  %.not = icmp eq i64 %.sroa.06.0.copyload, -9223372036854775808, !dbg !17693
  br i1 %.not, label %bb.l, label %bb.k, !dbg !17694

bb.k:                                             ; preds = %bb.j
  %.sroa.69.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !17692
  %.sroa.69.0.copyload = load i64, ptr %.sroa.69.0..sroa_idx, align 8, !dbg !17692 ; 2 uses
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !17692
  %.sroa.58.0.copyload = load ptr, ptr %.sroa.58.0..sroa_idx, align 8, !dbg !17692, !nonnull !859, !noundef !859 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !17632
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !17632
  %i.ao = icmp ult i64 %.sroa.69.0.copyload, 1152921504606846976, !dbg !17695
  call void @llvm.assume(i1 %i.ao), !dbg !17696
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.sroa.58.0.copyload, i64 %.sroa.69.0.copyload, !dbg !17697
  %i.aq = icmp sgt i64 %.sroa.06.0.copyload, -1, !dbg !17698
  call void @llvm.assume(i1 %i.aq), !dbg !17698
  store ptr %.sroa.58.0.copyload, ptr %i.e, align 8, !dbg !17699
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !17699
  store ptr %.sroa.58.0.copyload, ptr %.sroa.412.0..sroa_idx, align 8, !dbg !17699
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !17699
  store i64 %.sroa.06.0.copyload, ptr %.sroa.513.0..sroa_idx, align 8, !dbg !17699
  %.sroa.614.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24, !dbg !17699
  store ptr %i.ap, ptr %.sroa.614.0..sroa_idx, align 8, !dbg !17699
  invoke void @_RINvNtNtCsgZ49sUHp3tW_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata19file_metadata_serde17SortingColumnWireENvYB2l_INtNtB1f_7convert4IntoNtNtCs1gC9x3uey1Y_21polars_parquet_format14parquet_format13SortingColumnE4intoEB4m_EB2t_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.e)
          to label %bb.n unwind label %bb.m, !dbg !17700

bb.l:                                             ; preds = %bb.j, %bb.n
  %.sroa.02.0 = phi i64 [ %.sroa.02.0.copyload3, %bb.n ], [ -9223372036854775808, %bb.j ], !dbg !17701
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !dbg !17702
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !17702
  store i64 0, ptr %i.ar, align 8, !dbg !17702
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !17702
  store i64 %i.am, ptr %i.as, align 8, !dbg !17702
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !17702
  store i64 %.sroa.02.0, ptr %i.at, align 8, !dbg !17702
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !17702
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.54.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.54, i64 16, i1 false), !dbg !17702
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.54), !dbg !17703
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !17703
  ret void, !dbg !17704

bb.m:                                             ; preds = %bb.k
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata7compact18CompactColumnChunkENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBU_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata19file_metadata_serde17SortingColumnWireEEEB1H_.exit unwind label %bb.o, !dbg !17705

bb.n:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !17632
  %.sroa.02.0.copyload3 = load i64, ptr %i.f, align 8, !dbg !17706
  %.sroa.54.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !17706
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.54, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.54.0..sroa_idx5, i64 16, i1 false), !dbg !17706
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !17707
  br label %bb.l, !dbg !17708

bb.o:                                             ; preds = %bb.p, %bb.m
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #38, !dbg !17709
  unreachable, !dbg !17709

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata19file_metadata_serde17SortingColumnWireEEEB1H_.exit: ; preds = %.thread, %bb.p, %bb.m
  %.pn20 = phi { ptr, i32 } [ %i.au, %bb.m ], [ %eh.lpad-body, %bb.p ], [ %eh.lpad-body, %.thread ]
  resume { ptr, i32 } %.pn20, !dbg !17709

.thread:                                          ; preds = %.body.i, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.ak, %bb.i ], [ %eh.lpad-body.i, %.body.i ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !17710 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !dbg !17711, !range !1014, !alias.scope !17651, !noundef !859
  %i.ay = icmp eq i64 %i.ax, -9223372036854775808, !dbg !17711
  br i1 %i.ay, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata19file_metadata_serde17SortingColumnWireEEEB1H_.exit, label %bb.p, !dbg !17711

bb.p:                                             ; preds = %.thread
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata19file_metadata_serde17SortingColumnWireENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBU_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aw)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata19file_metadata_serde17SortingColumnWireEEEB1H_.exit unwind label %bb.o, !dbg !17712
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata19file_metadata_serde13chunk_to_wire(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(224) %1, ptr noalias noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !17713 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [64 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !17825
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !17826
  %i.f = load i64, ptr %i.e, align 8, !dbg !17826, !range !1013, !noundef !859 ; 2 uses
  %.not = icmp eq i64 %i.f, 2, !dbg !17826
  br i1 %.not, label %bb.t, label %bb.b, !dbg !17827

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17812), !dbg !17828
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !17829
  %i.h = load i64, ptr %i.g, align 8, !dbg !17829, !alias.scope !17812, !noalias !17815
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !17830, !noalias !17816
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 92, !dbg !17830
  %.sroa.0.0.copyload.i = load i32, ptr %i.i, align 4, !dbg !17830, !alias.scope !17812, !noalias !17815
  %i.j = trunc i32 %.sroa.0.0.copyload.i to i1, !dbg !17831
  br i1 %i.j, label %bb.c, label %bb.i, !dbg !17831

bb.c:                                             ; preds = %bb.b
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 100, !dbg !17830
  %.sroa.5.0.copyload.i = load i32, ptr %.sroa.5.0..sroa_idx.i, align 4, !dbg !17830, !alias.scope !17812, !noalias !17815 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 96, !dbg !17830
  %.sroa.4.0.copyload.i = load i32, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !17830, !alias.scope !17812, !noalias !17815
  %i.k = zext i32 %.sroa.4.0.copyload.i to i64, !dbg !17832 ; 3 uses
  %i.l = zext i32 %.sroa.5.0.copyload.i to i64, !dbg !17833 ; 5 uses
  %i.m = add nuw nsw i64 %i.k, %i.l, !dbg !17834  ; 2 uses
  %.not.i.i = icmp samesign ugt i64 %i.m, %3, !dbg !17835
  br i1 %.not.i.i, label %bb.e, label %bb.d, !dbg !17835, !prof !880

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 %i.k, !dbg !17836
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !17837, !noalias !17821
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.l, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !dbg !17837, !noalias !17821
  %i.o = load i64, ptr %i.b, align 8, !dbg !17837, !range !869, !noalias !17821, !noundef !859
  %i.p = trunc nuw i64 %i.o to i1, !dbg !17838
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !17839
  %i.r = load i64, ptr %i.q, align 8, !dbg !17839, !range !1014, !noalias !17821, !noundef !859 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !17839 ; 2 uses
  br i1 %i.p, label %bb.f, label %bb.g, !dbg !17838, !prof !880

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.k, i64 noundef %i.m, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #35, !dbg !17840, !noalias !17821
  unreachable, !dbg !17840

bb.f:                                             ; preds = %bb.d
  %i.t = load i64, ptr %i.s, align 8, !dbg !17841, !noalias !17821
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.r, i64 %i.t) #36, !dbg !17842, !noalias !17821
  unreachable, !dbg !17842

bb.g:                                             ; preds = %bb.d
  %i.u = load ptr, ptr %i.s, align 8, !dbg !17843, !noalias !17821, !nonnull !859, !noundef !859 ; 2 uses
  %i.v = icmp samesign uge i64 %i.r, %i.l, !dbg !17844
  tail call void @llvm.assume(i1 %i.v), !dbg !17845
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !17846, !noalias !17821
  %.not3.i.i = icmp eq i32 %.sroa.5.0.copyload.i, 0, !dbg !17847
  br i1 %.not3.i.i, label %_RNCNCNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata19file_metadata_serde13chunk_to_wire00Bb_.exit.i, label %bb.h, !dbg !17847

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.u, ptr nonnull readonly align 1 %i.n, i64 %i.l, i1 false), !dbg !17848, !noalias !17822
  br label %_RNCNCNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata19file_metadata_serde13chunk_to_wire00Bb_.exit.i, !dbg !17849

_RNCNCNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata19file_metadata_serde13chunk_to_wire00Bb_.exit.i: ; preds = %bb.h, %bb.g
  store i64 %i.r, ptr %i.c, align 8, !dbg !17850, !noalias !17816
  %.sroa.4.0..sroa_idx16.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !17850
  store ptr %i.u, ptr %.sroa.4.0..sroa_idx16.i, align 8, !dbg !17850, !noalias !17816
  %.sroa.5.0..sroa_idx18.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !17850
  store i64 %i.l, ptr %.sroa.5.0..sroa_idx18.i, align 8, !dbg !17850, !noalias !17816
  %4 = icmp eq i64 %i.r, -9223372036854775808, !dbg !17851
  br label %bb.j, !dbg !17852

bb.i:                                             ; preds = %bb.b
  store i64 -9223372036854775808, ptr %i.c, align 8, !dbg !17853, !noalias !17816
  br label %bb.j, !dbg !17854

bb.j:                                             ; preds = %bb.i, %_RNCNCNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata19file_metadata_serde13chunk_to_wire00Bb_.exit.i
  %5 = phi i1 [ true, %bb.i ], [ %4, %_RNCNCNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata19file_metadata_serde13chunk_to_wire00Bb_.exit.i ]
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !17855
  %.sroa.05.0.copyload.i = load i32, ptr %i.w, align 8, !dbg !17855, !alias.scope !17812, !noalias !17815
  %i.x = trunc i32 %.sroa.05.0.copyload.i to i1, !dbg !17856
  br i1 %i.x, label %bb.k, label %_RNCNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata19file_metadata_serde13chunk_to_wire0B9_.exit, !dbg !17856

bb.k:                                             ; preds = %bb.j
  %.sroa.57.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 88, !dbg !17855
  %.sroa.57.0.copyload.i = load i32, ptr %.sroa.57.0..sroa_idx.i, align 8, !dbg !17855, !alias.scope !17812, !noalias !17815 ; 2 uses
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 84, !dbg !17855
  %.sroa.46.0.copyload.i = load i32, ptr %.sroa.46.0..sroa_idx.i, align 4, !dbg !17855, !alias.scope !17812, !noalias !17815
  %i.y = zext i32 %.sroa.46.0.copyload.i to i64, !dbg !17857 ; 3 uses
  %i.z = zext i32 %.sroa.57.0.copyload.i to i64, !dbg !17858 ; 5 uses
  %i.aa = add nuw nsw i64 %i.y, %i.z, !dbg !17859 ; 2 uses
  %.not.i10.i = icmp samesign ugt i64 %i.aa, %3, !dbg !17860
  br i1 %.not.i10.i, label %bb.m, label %bb.l, !dbg !17860, !prof !880

bb.l:                                             ; preds = %bb.k
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 %i.y, !dbg !17861
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !17862, !noalias !17823
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.z, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i unwind label %bb.q, !dbg !17862, !noalias !17816

.noexc.i:                                         ; preds = %bb.l
  %i.ac = load i64, ptr %i.a, align 8, !dbg !17862, !range !869, !noalias !17823, !noundef !859
  %i.ad = trunc nuw i64 %i.ac to i1, !dbg !17863
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !17864
  %i.af = load i64, ptr %i.ae, align 8, !dbg !17864, !range !1014, !noalias !17823, !noundef !859 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !17864 ; 2 uses
  br i1 %i.ad, label %bb.n, label %bb.o, !dbg !17863, !prof !880

bb.m:                                             ; preds = %bb.k
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.y, i64 noundef %i.aa, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #35
          to label %.noexc12.i unwind label %bb.q, !dbg !17865, !noalias !17816

.noexc12.i:                                       ; preds = %bb.m
  unreachable, !dbg !17865

bb.n:                                             ; preds = %.noexc.i
  %i.ah = load i64, ptr %i.ag, align 8, !dbg !17866, !noalias !17823
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.af, i64 %i.ah) #36
          to label %.noexc13.i unwind label %bb.q, !dbg !17867, !noalias !17816

.noexc13.i:                                       ; preds = %bb.n
  unreachable, !dbg !17867

bb.o:                                             ; preds = %.noexc.i
  %i.ai = load ptr, ptr %i.ag, align 8, !dbg !17868, !noalias !17823, !nonnull !859, !noundef !859 ; 3 uses
  %i.aj = icmp samesign uge i64 %i.af, %i.z, !dbg !17869
  tail call void @llvm.assume(i1 %i.aj), !dbg !17870
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !17871, !noalias !17823
  %.not3.i11.i = icmp eq i32 %.sroa.57.0.copyload.i, 0, !dbg !17872
  br i1 %.not3.i11.i, label %_RNCNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata19file_metadata_serde13chunk_to_wire0B9_.exit, label %bb.p, !dbg !17872

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ai, ptr nonnull readonly align 1 %i.ab, i64 %i.z, i1 false), !dbg !17873, !noalias !17824
  br label %_RNCNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata19file_metadata_serde13chunk_to_wire0B9_.exit, !dbg !17874

bb.q:                                             ; preds = %bb.n, %bb.m, %bb.l
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %5, label %common.resume, label %bb.r, !dbg !17851

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume unwind label %bb.s, !dbg !17875, !noalias !17816

bb.s:                                             ; preds = %bb.r
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #38, !dbg !17876, !noalias !17816
  unreachable, !dbg !17876

common.resume:                                    ; preds = %bb.v, %bb.q, %bb.r
  %common.resume.op = phi { ptr, i32 } [ %i.ak, %bb.q ], [ %i.ak, %bb.r ], [ %i.an, %bb.v ]
  resume { ptr, i32 } %common.resume.op, !dbg !17877

_RNCNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata19file_metadata_serde13chunk_to_wire0B9_.exit: ; preds = %bb.j, %bb.o, %bb.p
  %.sroa.53.sroa.4.0.i = phi i64 [ undef, %bb.j ], [ 0, %bb.o ], [ %i.z, %bb.p ], !dbg !17878
  %.sroa.53.sroa.0.0.i = phi ptr [ undef, %bb.j ], [ %i.ai, %bb.o ], [ %i.ai, %bb.p ], !dbg !17878
  %.sroa.01.0.i = phi i64 [ -9223372036854775808, %bb.j ], [ %i.af, %bb.o ], [ %i.af, %bb.p ], !dbg !17879
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !17880
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !17881
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !17882, !noalias !17816
  store i64 %i.f, ptr %i.d, align 8, !dbg !17880
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !17880
  store i64 %i.h, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !17880
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40, !dbg !17880
  store i64 %.sroa.01.0.i, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !17880
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 48, !dbg !17880
  store ptr %.sroa.53.sroa.0.0.i, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !17880
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 56, !dbg !17880
  store i64 %.sroa.53.sroa.4.0.i, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !17880
  br label %bb.u, !dbg !17883

bb.t:                                             ; preds = %bb.a
  store i64 2, ptr %i.d, align 8, !dbg !17884
  br label %bb.u, !dbg !17885

bb.u:                                             ; preds = %bb.t, %_RNCNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata19file_metadata_serde13chunk_to_wire0B9_.exit
  %i.am = invoke { i64, i64 } @_RNvMNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata21column_chunk_metadataNtB2_19ColumnChunkMetadata10byte_range(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(224) %1)
          to label %bb.w unwind label %bb.v, !dbg !17886

bb.v:                                             ; preds = %bb.u
  %i.an = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata19file_metadata_serde8StatWireEEB1a_(ptr noalias noundef align 8 dereferenceable(64) %i.d) #37
          to label %common.resume unwind label %bb.x, !dbg !17887

bb.w:                                             ; preds = %bb.u
  %i.ao = extractvalue { i64, i64 } %i.am, 0, !dbg !17888
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 152, !dbg !17889
  %i.aq = load i8, ptr %i.ap, align 8, !dbg !17889, !range !1212, !noundef !859
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 120, !dbg !17890
  %i.as = load i64, ptr %i.ar, align 8, !dbg !17890, !noundef !859
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 136, !dbg !17891
  %i.au = load i64, ptr %i.at, align 8, !dbg !17891, !noundef !859
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.d, i64 64, i1 false), !dbg !17892
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !17893
  store i8 %i.aq, ptr %i.av, align 8, !dbg !17893
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !17893
  store i64 %i.as, ptr %i.aw, align 8, !dbg !17893
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !17893
  store i64 %i.ao, ptr %i.ax, align 8, !dbg !17893
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !17893
  store i64 %i.au, ptr %i.ay, align 8, !dbg !17893
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !17887
  ret void, !dbg !17894

bb.x:                                             ; preds = %bb.v
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #38, !dbg !17895
  unreachable, !dbg !17895
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata19file_metadata_serde15chunk_from_wire(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([208 x i8]) align 8 captures(none) dereferenceable(208) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(96) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !17896 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [64 x i8], align 8                ; 7 uses
  %.sroa.03.0.copyload = load i64, ptr %1, align 8, !dbg !18045 ; 3 uses
  %.not = icmp eq i64 %.sroa.03.0.copyload, 2, !dbg !18046
  br i1 %.not, label %bb.o, label %bb.b, !dbg !18047

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !18045
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !18048 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !18048
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.410.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5.0..sroa_idx, i64 56, i1 false), !dbg !18049
  store i64 %.sroa.03.0.copyload, ptr %i.c, align 8, !dbg !18048
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18020), !dbg !18048
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18021), !dbg !18048
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !18050
  %.sroa.01.0.copyload.i = load i64, ptr %i.d, align 8, !dbg !18050, !alias.scope !18021, !noalias !18023 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.01.0.copyload.i, -9223372036854775808, !dbg !18051
  br i1 %.not.i, label %bb.h, label %bb.c, !dbg !18052

bb.c:                                             ; preds = %bb.b
  %.sroa.413.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !18053 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !18053, !noalias !18024
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !18054
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.413.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false), !dbg !18054
  store i64 %.sroa.01.0.copyload.i, ptr %i.b, align 8, !dbg !18053, !noalias !18024
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18025), !dbg !18053
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18026), !dbg !18053
  %i.f = load ptr, ptr %.sroa.413.0..sroa_idx.i, align 8, !dbg !18055, !alias.scope !18026, !noalias !18027, !nonnull !859, !noundef !859
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !18056
  %i.h = load i64, ptr %i.g, align 8, !dbg !18056, !alias.scope !18026, !noalias !18027, !noundef !859 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !18057 ; 4 uses
  %i.j = load i64, ptr %i.i, align 8, !dbg !18057, !alias.scope !18029, !noalias !18030, !noundef !859 ; 6 uses
  %i.k = icmp sgt i64 %i.j, -1, !dbg !18058
  tail call void @llvm.assume(i1 %i.k), !dbg !18059
  %i.l = load i64, ptr %2, align 8, !dbg !18060, !range !945, !alias.scope !18031, !noalias !18030, !noundef !859
  %i.m = sub nsw i64 %i.l, %i.j, !dbg !18061
  %i.n = icmp ugt i64 %i.h, %i.m, !dbg !18062
  br i1 %i.n, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet.exit.thread.i.i.i.i, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i.i, !dbg !18063, !prof !880

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet.exit.thread.i.i.i.i: ; preds = %bb.c
  invoke void @_RINvNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.j, i64 noundef range(i64 0, -9223372036854775808) %i.h, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i.i unwind label %bb.e, !dbg !18064, !noalias !18032

.noexc.i.i:                                       ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet.exit.thread.i.i.i.i
  %i.o = load i64, ptr %i.i, align 8, !dbg !18065, !alias.scope !18033, !noalias !18030, !noundef !859 ; 2 uses
  %i.p = icmp sgt i64 %i.o, -1, !dbg !18066
  tail call void @llvm.assume(i1 %i.p), !dbg !18067
  br label %bb.d, !dbg !18068

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i.i: ; preds = %bb.c
  %.not.i.i.i.i = icmp eq i64 %i.h, 0, !dbg !18068
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.d, !dbg !18068

bb.d:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i.i, %.noexc.i.i
  %i.q = phi i64 [ %i.o, %.noexc.i.i ], [ %i.j, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !18069
  %i.s = load ptr, ptr %i.r, align 8, !dbg !18069, !alias.scope !18033, !noalias !18030, !nonnull !859, !noundef !859
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q, !dbg !18070
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.t, ptr nonnull readonly align 1 %i.f, i64 range(i64 0, -9223372036854775808) %i.h, i1 false), !dbg !18071, !noalias !18032
  %.pre.i.i.i.i = load i64, ptr %i.i, align 8, !dbg !18072, !alias.scope !18033, !noalias !18030
  br label %bb.f, !dbg !18073

bb.e:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet.exit.thread.i.i.i.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body.thread.i unwind label %bb.g, !dbg !18074, !noalias !18034

bb.f:                                             ; preds = %bb.d, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i.i
  %i.v = phi i64 [ %.pre.i.i.i.i, %bb.d ], [ %i.j, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i.i ], !dbg !18072
  %i.w = add i64 %i.v, %i.h, !dbg !18072
  store i64 %i.w, ptr %i.i, align 8, !dbg !18072, !alias.scope !18033, !noalias !18030
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RNCNCNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata19file_metadata_serde15chunk_from_wire00Bb_.exit.i unwind label %.body.thread35.i, !dbg !18075, !noalias !18034

.body.thread35.i:                                 ; preds = %bb.f
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i, !dbg !18076

bb.g:                                             ; preds = %bb.e
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #38, !dbg !18077, !noalias !18034
  unreachable, !dbg !18077

bb.h:                                             ; preds = %_RNCNCNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata19file_metadata_serde15chunk_from_wire00Bb_.exit.i, %bb.b
  %.sroa.4.0.i = phi i32 [ %i.aa, %_RNCNCNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata19file_metadata_serde15chunk_from_wire00Bb_.exit.i ], [ undef, %bb.b ]
  %.sroa.3.0.i = phi i32 [ %i.ab, %_RNCNCNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata19file_metadata_serde15chunk_from_wire00Bb_.exit.i ], [ undef, %bb.b ]
  %.sroa.0.0.i = phi i32 [ 1, %_RNCNCNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata19file_metadata_serde15chunk_from_wire00Bb_.exit.i ], [ 0, %bb.b ], !dbg !18078
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 40, !dbg !18079
  %.sroa.07.0.copyload.i = load i64, ptr %i.z, align 8, !dbg !18079, !alias.scope !18021, !noalias !18023 ; 2 uses
  %.not18.i = icmp eq i64 %.sroa.07.0.copyload.i, -9223372036854775808, !dbg !18080
  br i1 %.not18.i, label %_RNCNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata19file_metadata_serde15chunk_from_wire0B9_.exit, label %bb.i, !dbg !18081

_RNCNCNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata19file_metadata_serde15chunk_from_wire00Bb_.exit.i: ; preds = %bb.f
  %i.aa = trunc i64 %i.h to i32, !dbg !18082
  %i.ab = trunc i64 %i.j to i32, !dbg !18083
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !18084, !noalias !18024
  br label %bb.h, !dbg !18085

bb.i:                                             ; preds = %bb.h
  %.sroa.415.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !18086 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !18086, !noalias !18024
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !18087
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.415.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i64 16, i1 false), !dbg !18087
  store i64 %.sroa.07.0.copyload.i, ptr %i.a, align 8, !dbg !18086, !noalias !18024
  call void @llvm.experimental.noalias.scope.decl(metadata !18035), !dbg !18086
  call void @llvm.experimental.noalias.scope.decl(metadata !18036), !dbg !18086
  %i.ad = load ptr, ptr %.sroa.415.0..sroa_idx.i, align 8, !dbg !18088, !alias.scope !18036, !noalias !18037, !nonnull !859, !noundef !859
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !18089
  %i.af = load i64, ptr %i.ae, align 8, !dbg !18089, !alias.scope !18036, !noalias !18037, !noundef !859 ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !18090 ; 4 uses
  %i.ah = load i64, ptr %i.ag, align 8, !dbg !18090, !alias.scope !18038, !noalias !18039, !noundef !859 ; 6 uses
  %i.ai = icmp sgt i64 %i.ah, -1, !dbg !18091
  call void @llvm.assume(i1 %i.ai), !dbg !18092
  %i.aj = load i64, ptr %2, align 8, !dbg !18093, !range !945, !alias.scope !18040, !noalias !18039, !noundef !859
  %i.ak = sub nsw i64 %i.aj, %i.ah, !dbg !18094
  %i.al = icmp ugt i64 %i.af, %i.ak, !dbg !18095
  br i1 %i.al, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet.exit.thread.i.i.i22.i, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i19.i, !dbg !18096, !prof !880

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet.exit.thread.i.i.i22.i: ; preds = %bb.i
end_hunk_0
begin_hunk_1_@llvm.smax.i32
!17565 = distinct !DILocation(line: 4026, column: 32, scope: !17553, inlinedAt: !17539)
!17566 = distinct !DILocation(line: 2026, column: 18, scope: !17564, inlinedAt: !17565)
!17567 = distinct !DILocation(line: 296, column: 20, scope: !17563, inlinedAt: !17566)
!17568 = distinct !DILocation(line: 609, column: 14, scope: !17562, inlinedAt: !17567)
!17569 = distinct !DISubprogram(name: "drop_in_place<alloc::vec::into_iter::IntoIter<polars_parquet::parquet::metadata::file_metadata_serde::ChunkWire, alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata19file_metadata_serde9ChunkWireEEB1C_", scope: !882, file: !885, line: 810, type: !860, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !859)
!17570 = distinct !DISubprogram(name: "drop_in_place<core::iter::adapters::map::Map<alloc::vec::into_iter::IntoIter<polars_parquet::parquet::metadata::file_metadata_serde::ChunkWire, alloc::alloc::Global>, polars_parquet::parquet::metadata::file_metadata_serde::rg_from_wire::{closure_env#0}>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata19file_metadata_serde9ChunkWireENCNvB24_12rg_from_wire0EEB2a_", scope: !882, file: !885, line: 810, type: !860, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !859)
!17571 = distinct !DILocation(line: 4044, column: 5, scope: !17538, inlinedAt: !17539)
!17572 = distinct !DILocation(line: 810, column: 1, scope: !17570, inlinedAt: !17571)
!17573 = distinct !DILexicalBlock(scope: !17559, file: !917, line: 4027, column: 17)
!17574 = distinct !DISubprogram(name: "for_each<core::iter::adapters::map::Map<alloc::vec::into_iter::IntoIter<polars_parquet::parquet::metadata::file_metadata_serde::ChunkWire, alloc::alloc::Global>, polars_parquet::parquet::metadata::file_metadata_serde::rg_from_wire::{closure_env#0}>, alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<polars_parquet::parquet::metadata::compact::CompactColumnChunk, alloc::alloc::Global, core::iter::adapters::map::Map<alloc::vec::into_iter::IntoIter<polars_parquet::parquet::metadata::file_metadata_serde::ChunkWire, alloc::alloc::Global>, polars_parquet::parquet::metadata::file_metadata_serde::rg_from_wire::{closure_env#0}>>>", linkageName: "_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata19file_metadata_serde9ChunkWireENCNvB1H_12rg_from_wire0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvMsj_BW_INtBW_3VecNtNtB1J_7compact18CompactColumnChunkE14extend_trustedB3_E0EB1N_", scope: !953, file: !949, line: 877, type: !860, scopeLine: 877, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !859)
!17575 = distinct !DILocation(line: 4028, column: 26, scope: !17573, inlinedAt: !17539)
!17576 = distinct !DILocation(line: 62, column: 5, scope: !17512, inlinedAt: !17517)
!17577 = distinct !DILocation(line: 810, column: 1, scope: !329, inlinedAt: !17576)
!17578 = distinct !DILocation(line: 62, column: 5, scope: !17512, inlinedAt: !17517)
!17579 = distinct !DILocation(line: 810, column: 1, scope: !17570, inlinedAt: !17578)
!17580 = distinct !DILexicalBlock(scope: !17494, file: !1258, line: 210, column: 5)
!17581 = distinct !DISubprogram(name: "map<alloc::vec::Vec<polars_parquet::parquet::metadata::file_metadata_serde::SortingColumnWire, alloc::alloc::Global>, alloc::vec::Vec<polars_parquet_format::parquet_format::SortingColumn, alloc::alloc::Global>, polars_parquet::parquet::metadata::file_metadata_serde::rg_from_wire::{closure_env#1}>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata19file_metadata_serde17SortingColumnWireEE3mapIBJ_NtNtCs1gC9x3uey1Y_21polars_parquet_format14parquet_format13SortingColumnENCNvB1h_12rg_from_wires_0EB1n_", scope: !868, file: !866, line: 1160, type: !860, scopeLine: 1160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !859)
!17582 = distinct !DILexicalBlock(scope: !17581, file: !866, line: 1165, column: 13)
!17583 = distinct !DISubprogram(name: "len<polars_parquet::parquet::metadata::file_metadata_serde::SortingColumnWire, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata19file_metadata_serde17SortingColumnWireE3lenBM_", scope: !920, file: !917, line: 3023, type: !860, scopeLine: 3023, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !859)
!17584 = distinct !DILexicalBlock(scope: !17583, file: !917, line: 3024, column: 9)
!17585 = distinct !DISubprogram(name: "{closure#1}", linkageName: "_RNCNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata19file_metadata_serde12rg_from_wires_0B9_", scope: !17635, file: !1258, line: 224, type: !860, scopeLine: 224, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !859)
!17586 = distinct !DISubprogram(name: "into_iter<polars_parquet::parquet::metadata::file_metadata_serde::SortingColumnWire, alloc::alloc::Global>", linkageName: "_RNvXsf_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata19file_metadata_serde17SortingColumnWireENtNtNtNtCscgRAwXFJnXP_4core4iter6traits7collect12IntoIterator9into_iterBN_", scope: !1262, file: !917, line: 3918, type: !860, scopeLine: 3918, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !859)
!17587 = distinct !DILexicalBlock(scope: !17586, file: !917, line: 3920, column: 13)
!17588 = distinct !DILexicalBlock(scope: !17587, file: !917, line: 3921, column: 13)
!17589 = distinct !DILexicalBlock(scope: !17588, file: !917, line: 3922, column: 13)
!17590 = distinct !DILexicalBlock(scope: !17589, file: !917, line: 3923, column: 13)
!17591 = distinct !DISubprogram(name: "add<polars_parquet::parquet::metadata::file_metadata_serde::SortingColumnWire>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrONtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata19file_metadata_serde17SortingColumnWire3addBK_", scope: !884, file: !881, line: 927, type: !860, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !859)
!17592 = distinct !DILexicalBlock(scope: !17590, file: !917, line: 3924, column: 13)
!17593 = distinct !DISubprogram(name: "capacity<polars_parquet::parquet::metadata::file_metadata_serde::SortingColumnWire, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata19file_metadata_serde17SortingColumnWireE8capacityBU_", scope: !928, file: !925, line: 308, type: !860, scopeLine: 308, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !859)
!17594 = distinct !DISubprogram(name: "new<alloc::vec::into_iter::IntoIter<polars_parquet::parquet::metadata::file_metadata_serde::SortingColumnWire, alloc::alloc::Global>, fn(polars_parquet::parquet::metadata::file_metadata_serde::SortingColumnWire) -> polars_parquet_format::parquet_format::SortingColumn>", linkageName: "_RNvMNtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB2_3MapINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata19file_metadata_serde17SortingColumnWireENvYB1H_INtNtB8_7convert4IntoNtNtCs1gC9x3uey1Y_21polars_parquet_format14parquet_format13SortingColumnE4intoE3newB1P_", scope: !1261, file: !967, line: 68, type: !860, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !859)
!17595 = distinct !DISubprogram(name: "map<alloc::vec::into_iter::IntoIter<polars_parquet::parquet::metadata::file_metadata_serde::SortingColumnWire, alloc::alloc::Global>, polars_parquet_format::parquet_format::SortingColumn, fn(polars_parquet::parquet::metadata::file_metadata_serde::SortingColumnWire) -> polars_parquet_format::parquet_format::SortingColumn>", linkageName: "_RINvYINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata19file_metadata_serde17SortingColumnWireENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3mapNtNtCs1gC9x3uey1Y_21polars_parquet_format14parquet_format13SortingColumnNvYBR_INtNtB2x_7convert4IntoB3o_E4intoEBZ_", scope: !953, file: !949, line: 831, type: !860, scopeLine: 831, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !859)
!17596 = distinct !DISubprogram(name: "from_iter<polars_parquet_format::parquet_format::SortingColumn, core::iter::adapters::map::Map<alloc::vec::into_iter::IntoIter<polars_parquet::parquet::metadata::file_metadata_serde::SortingColumnWire, alloc::alloc::Global>, fn(polars_parquet::parquet::metadata::file_metadata_serde::SortingColumnWire) -> polars_parquet_format::parquet_format::SortingColumn>>", linkageName: "_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec16in_place_collectINtB6_3VecNtNtCs1gC9x3uey1Y_21polars_parquet_format14parquet_format13SortingColumnEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata19file_metadata_serde17SortingColumnWireENvYB43_INtNtB2X_7convert4IntoBY_E4intoEE9from_iterB4b_", scope: !1268, file: !1266, line: 232, type: !860, scopeLine: 232, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !859)
!17597 = distinct !DILexicalBlock(scope: !17596, file: !1266, line: 234, column: 9)
!17598 = distinct !DISubprogram(name: "collect<core::iter::adapters::map::Map<alloc::vec::into_iter::IntoIter<polars_parquet::parquet::metadata::file_metadata_serde::SortingColumnWire, alloc::alloc::Global>, fn(polars_parquet::parquet::metadata::file_metadata_serde::SortingColumnWire) -> polars_parquet_format::parquet_format::SortingColumn>, alloc::vec::Vec<polars_parquet_format::parquet_format::SortingColumn, alloc::alloc::Global>>", linkageName: "_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata19file_metadata_serde17SortingColumnWireENvYB1F_INtNtBc_7convert4IntoNtNtCs1gC9x3uey1Y_21polars_parquet_format14parquet_format13SortingColumnE4intoENtNtNtBa_6traits8iterator8Iterator7collectINtBW_3VecB3F_EEB1N_", scope: !953, file: !949, line: 2091, type: !860, scopeLine: 2091, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !859)
!17599 = distinct !DISubprogram(name: "from_iter<polars_parquet_format::parquet_format::SortingColumn, core::iter::adapters::map::Map<alloc::vec::into_iter::IntoIter<polars_parquet::parquet::metadata::file_metadata_serde::SortingColumnWire, alloc::alloc::Global>, fn(polars_parquet::parquet::metadata::file_metadata_serde::SortingColumnWire) -> polars_parquet_format::parquet_format::SortingColumn>>", linkageName: "_RINvXse_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecNtNtCs1gC9x3uey1Y_21polars_parquet_format14parquet_format13SortingColumnEINtNtNtNtCscgRAwXFJnXP_4core4iter6traits7collect12FromIteratorBG_E9from_iterINtNtNtB1Y_8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata19file_metadata_serde17SortingColumnWireENvYB3Y_INtNtB20_7convert4IntoBG_E4intoEEB46_", scope: !1247, file: !917, line: 3891, type: !860, scopeLine: 3891, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !859)
!17600 = distinct !DILocation(line: 225, column: 5, scope: !17580)
!17601 = distinct !DILocation(line: 810, column: 1, scope: !329, inlinedAt: !17600)
!17602 = distinct !{!17602, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata19file_metadata_serde17SortingColumnWireEEEB1H_"}
!17603 = distinct !{!17603, !17602, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata19file_metadata_serde17SortingColumnWireEEEB1H_: argument 0"}
!17604 = distinct !DISubprogram(name: "drop_in_place<core::option::Option<alloc::vec::Vec<polars_parquet::parquet::metadata::file_metadata_serde::SortingColumnWire, alloc::alloc::Global>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata19file_metadata_serde17SortingColumnWireEEEB1H_", scope: !882, file: !885, line: 810, type: !860, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !859)
!17605 = distinct !DILocation(line: 226, column: 1, scope: !17494)
!17606 = distinct !DILocation(line: 810, column: 1, scope: !17604, inlinedAt: !17605)
!17607 = distinct !DILocation(line: 810, column: 1, scope: !674, inlinedAt: !17606)
!17608 = !DILocation(line: 212, column: 10, scope: !17494)
!17609 = !DILocation(line: 3927, column: 30, scope: !17501, inlinedAt: !17608)
!17610 = !DILocation(line: 3927, column: 23, scope: !17501, inlinedAt: !17608)
!17611 = !DILocation(line: 3929, column: 30, scope: !17504, inlinedAt: !17608)
!17612 = !DILocation(line: 309, column: 20, scope: !17505, inlinedAt: !17611)
!17613 = !DILocation(line: 619, column: 58, scope: !17506, inlinedAt: !17612)
!17614 = !DILocation(line: 213, column: 10, scope: !17494)
!17615 = !DILocation(line: 836, column: 9, scope: !17508, inlinedAt: !17614)
!17616 = !{!17511, !17510}
!17617 = !DILocation(line: 214, column: 10, scope: !17494)
!17618 = !DILocation(line: 2104, column: 9, scope: !17515, inlinedAt: !17617)
!17619 = !DILocation(line: 3892, column: 9, scope: !17516, inlinedAt: !17618)
!17620 = !{!17511}
!17621 = !{!17531}
!17622 = !{!17532}
!17623 = !{!17534}
!17624 = !{!17537}
!17625 = !{!17537, !17532}
!17626 = !{!17534, !17531, !17511, !17510}
!17627 = !{!17537, !17532, !17511, !17510}
!17628 = !{!17534, !17531}
!17629 = !{!17534, !17537, !17531, !17532, !17511, !17510}
!17630 = !DILocation(line: 224, column: 14, scope: !17580)
!17631 = !DILexicalBlockFile(scope: !17590, file: !917, discriminator: 2)
!17632 = !DILocation(line: 1165, column: 29, scope: !17582, inlinedAt: !17630)
!17633 = !DILocation(line: 224, column: 24, scope: !17585, inlinedAt: !17632)
!17634 = !DILocation(line: 3927, column: 30, scope: !17631, inlinedAt: !17633)
!17635 = !DINamespace(name: "rg_from_wire", scope: !1260)
!17636 = !DILocation(line: 3927, column: 23, scope: !17631, inlinedAt: !17633)
!17637 = !DILexicalBlockFile(scope: !17506, file: !925, discriminator: 2)
!17638 = !DILexicalBlockFile(scope: !17593, file: !925, discriminator: 2)
!17639 = !DILexicalBlockFile(scope: !17592, file: !917, discriminator: 2)
!17640 = !DILocation(line: 3929, column: 30, scope: !17639, inlinedAt: !17633)
!17641 = !DILocation(line: 309, column: 20, scope: !17638, inlinedAt: !17640)
!17642 = !DILocation(line: 619, column: 58, scope: !17637, inlinedAt: !17641)
!17643 = !DILexicalBlockFile(scope: !17595, file: !949, discriminator: 2)
!17644 = !DILocation(line: 224, column: 36, scope: !17585, inlinedAt: !17632)
!17645 = !DILocation(line: 836, column: 9, scope: !17643, inlinedAt: !17644)
!17646 = !DILexicalBlockFile(scope: !17599, file: !917, discriminator: 2)
!17647 = !DILexicalBlockFile(scope: !17598, file: !949, discriminator: 2)
!17648 = !DILocation(line: 224, column: 52, scope: !17585, inlinedAt: !17632)
!17649 = !DILocation(line: 2104, column: 9, scope: !17647, inlinedAt: !17648)
!17650 = !DILocation(line: 3892, column: 9, scope: !17646, inlinedAt: !17649)
!17651 = !{!17603}
!17652 = !DILocation(line: 210, column: 19, scope: !17494)
!17653 = !DILocation(line: 3029, column: 37, scope: !17496, inlinedAt: !17609)
!17654 = !DILocation(line: 3029, column: 18, scope: !17496, inlinedAt: !17609)
!17655 = !DILocation(line: 961, column: 18, scope: !17502, inlinedAt: !17610)
!17656 = !DILocation(line: 49, column: 26, scope: !17503, inlinedAt: !17613)
!17657 = !DILocation(line: 69, column: 9, scope: !17507, inlinedAt: !17615)
!17658 = !DILocation(line: 51, column: 13, scope: !17512, inlinedAt: !17517)
!17659 = !DILocation(line: 434, column: 15, scope: !344, inlinedAt: !17525)
!17660 = !DILocation(line: 434, column: 9, scope: !344, inlinedAt: !17525)
!17661 = !DILocation(line: 0, scope: !344, inlinedAt: !17525)
!17662 = !DILocation(line: 442, column: 17, scope: !344, inlinedAt: !17525)
!17663 = !DILocation(line: 442, column: 25, scope: !345, inlinedAt: !17525)
!17664 = !DILocation(line: 435, column: 16, scope: !344, inlinedAt: !17525)
!17665 = !DILocation(line: 619, column: 12, scope: !346, inlinedAt: !17527)
!17666 = !DILocation(line: 210, column: 9, scope: !349, inlinedAt: !17528)
!17667 = !DILocation(line: 443, column: 9, scope: !344, inlinedAt: !17525)
!17668 = !DILocation(line: 977, column: 9, scope: !17519, inlinedAt: !17523)
!17669 = !DILocation(line: 60, column: 28, scope: !17529, inlinedAt: !17517)
!17670 = !DILocation(line: 60, column: 16, scope: !17529, inlinedAt: !17517)
!17671 = !DILocation(line: 27, column: 14, scope: !17535, inlinedAt: !17536)
!17672 = !DILocation(line: 4016, column: 36, scope: !17538, inlinedAt: !17539)
!17673 = !DILocation(line: 729, column: 18, scope: !17541, inlinedAt: !17550)
!17674 = !DILocation(line: 767, column: 9, scope: !17551, inlinedAt: !17557)
!17675 = !DILocation(line: 673, column: 12, scope: !675, inlinedAt: !17556)
!17676 = !DILocation(line: 675, column: 17, scope: !675, inlinedAt: !17556)
!17677 = !DILocation(line: 14, column: 35, scope: !17558, inlinedAt: !17560)
!17678 = !DILocation(line: 614, column: 9, scope: !17561, inlinedAt: !17568)
!17679 = !DILocation(line: 810, column: 1, scope: !17569, inlinedAt: !17572)
!17680 = !DILocation(line: 4015, column: 5, scope: !17538, inlinedAt: !17539)
!17681 = !DILocation(line: 4028, column: 35, scope: !17573, inlinedAt: !17539)
!17682 = !DILocation(line: 887, column: 14, scope: !17574, inlinedAt: !17575)
!17683 = !DILocation(line: 62, column: 5, scope: !17512, inlinedAt: !17517)
!17684 = !DILocation(line: 810, column: 1, scope: !328, inlinedAt: !17577)
!17685 = !DILocation(line: 50, column: 5, scope: !17512, inlinedAt: !17517)
!17686 = !DILocation(line: 810, column: 1, scope: !17569, inlinedAt: !17579)
!17687 = !DILocation(line: 4034, column: 18, scope: !17573, inlinedAt: !17539)
!17688 = !DILocation(line: 60, column: 36, scope: !17529, inlinedAt: !17517)
!17689 = !DILocation(line: 216, column: 9, scope: !17580)
!17690 = !DILocation(line: 61, column: 9, scope: !17529, inlinedAt: !17517)
!17691 = !DILocation(line: 221, column: 19, scope: !17580)
!17692 = !DILocation(line: 222, column: 26, scope: !17580)
!17693 = !DILocation(line: 1164, column: 15, scope: !17581, inlinedAt: !17630)
!17694 = !DILocation(line: 1164, column: 9, scope: !17581, inlinedAt: !17630)
!17695 = !DILocation(line: 3029, column: 37, scope: !17584, inlinedAt: !17634)
!17696 = !DILocation(line: 3029, column: 18, scope: !17584, inlinedAt: !17634)
!17697 = !DILocation(line: 961, column: 18, scope: !17591, inlinedAt: !17636)
!17698 = !DILocation(line: 49, column: 26, scope: !17503, inlinedAt: !17642)
!17699 = !DILocation(line: 69, column: 9, scope: !17594, inlinedAt: !17645)
!17700 = !DILocation(line: 245, column: 9, scope: !17597, inlinedAt: !17650)
!17701 = !DILocation(line: 0, scope: !17581, inlinedAt: !17630)
!17702 = !DILocation(line: 215, column: 5, scope: !17580)
!17703 = !DILocation(line: 225, column: 5, scope: !17580)
!17704 = !DILocation(line: 226, column: 2, scope: !17494)
!17705 = !DILocation(line: 810, column: 1, scope: !328, inlinedAt: !17601)
!17706 = !DILocation(line: 1165, column: 24, scope: !17582, inlinedAt: !17630)
!17707 = !DILocation(line: 1165, column: 33, scope: !17582, inlinedAt: !17630)
!17708 = !DILocation(line: 1165, column: 33, scope: !17581, inlinedAt: !17630)
!17709 = !DILocation(line: 209, column: 1, scope: !17494)
!17710 = !DILocation(line: 226, column: 1, scope: !17494)
!17711 = !DILocation(line: 810, column: 1, scope: !17604, inlinedAt: !17605)
!17712 = !DILocation(line: 810, column: 1, scope: !673, inlinedAt: !17607)
!17713 = distinct !DISubprogram(name: "chunk_to_wire", linkageName: "_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata19file_metadata_serde13chunk_to_wire", scope: !1260, file: !1258, line: 126, type: !860, scopeLine: 126, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !859)
!17714 = distinct !DILexicalBlock(scope: !17713, file: !1258, line: 127, column: 5)
!17715 = distinct !DISubprogram(name: "as_ref<polars_parquet::parquet::metadata::compact::CompactStatistics>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core6optionINtB2_6OptionNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata7compact17CompactStatisticsE6as_refBP_", scope: !868, file: !866, line: 744, type: !860, scopeLine: 744, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !859)
!17716 = distinct !{!17716, !"_RNCNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata19file_metadata_serde13chunk_to_wire0B9_"}
!17717 = distinct !{!17717, !17716, !"_RNCNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata19file_metadata_serde13chunk_to_wire0B9_: argument 2"}
!17718 = distinct !DISubprogram(name: "map<&polars_parquet::parquet::metadata::compact::CompactStatistics, polars_parquet::parquet::metadata::file_metadata_serde::StatWire, polars_parquet::parquet::metadata::file_metadata_serde::chunk_to_wire::{closure_env#0}>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata7compact17CompactStatisticsE3mapNtNtBN_19file_metadata_serde8StatWireNCNvB2a_13chunk_to_wire0EBR_", scope: !868, file: !866, line: 1160, type: !860, scopeLine: 1160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !859)
!17719 = distinct !DILexicalBlock(scope: !17718, file: !866, line: 1165, column: 13)
!17720 = distinct !DISubprogram(name: "{closure#0}", linkageName: "_RNCNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata19file_metadata_serde13chunk_to_wire0B9_", scope: !17814, file: !1258, line: 128, type: !860, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !859)
!17721 = distinct !DILocation(line: 1165, column: 29, scope: !17719, inlinedAt: !17813)
!17722 = distinct !{!17722, !17716, !"_RNCNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata19file_metadata_serde13chunk_to_wire0B9_: argument 1"}
!17723 = distinct !{!17723, !17716, !"_RNCNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata19file_metadata_serde13chunk_to_wire0B9_: argument 0"}
!17724 = distinct !DISubprogram(name: "map<polars_parquet::parquet::metadata::compact::ByteRange, alloc::vec::Vec<u8, alloc::alloc::Global>, polars_parquet::parquet::metadata::file_metadata_serde::chunk_to_wire::{closure#0}::{closure_env#0}>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata7compact9ByteRangeE3mapINtNtCsgZ49sUHp3tW_5alloc3vec3VechENCNCNvNtBM_19file_metadata_serde13chunk_to_wire00EBQ_", scope: !868, file: !866, line: 1160, type: !860, scopeLine: 1160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !859)
!17725 = distinct !DILocation(line: 130, column: 32, scope: !17720, inlinedAt: !17721)
!17726 = distinct !DISubprogram(name: "resolve", linkageName: "_RNvMNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata7compactNtB2_9ByteRange7resolve", scope: !17819, file: !17817, line: 44, type: !860, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !859)
!17727 = distinct !DISubprogram(name: "{closure#0}", linkageName: "_RNCNCNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata19file_metadata_serde13chunk_to_wire00Bb_", scope: !17820, file: !1258, line: 130, type: !860, scopeLine: 130, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !859)
!17728 = distinct !DILexicalBlock(scope: !17724, file: !866, line: 1165, column: 13)
!17729 = distinct !DILocation(line: 1165, column: 29, scope: !17728, inlinedAt: !17725)
!17730 = distinct !DILocation(line: 130, column: 42, scope: !17727, inlinedAt: !17729)
!17731 = distinct !DISubprogram(name: "index<u8>", linkageName: "_RNvXs2_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range5RangejEINtB5_10SliceIndexShE5indexCsfISxE4fmY1Y_14polars_parquet", scope: !903, file: !899, line: 435, type: !860, scopeLine: 435, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !859)
!17732 = distinct !DISubprogram(name: "index<u8, core::ops::range::Range<usize>>", linkageName: "_RNvXNtNtCscgRAwXFJnXP_4core5slice5indexShINtNtNtB6_3ops5index5IndexINtNtBI_5range5RangejEE5indexCsfISxE4fmY1Y_14polars_parquet", scope: !902, file: !899, line: 18, type: !860, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !859)
!17733 = distinct !DILocation(line: 45, column: 13, scope: !17726, inlinedAt: !17730)
!17734 = distinct !DILocation(line: 19, column: 15, scope: !17732, inlinedAt: !17733)
!17735 = distinct !DISubprogram(name: "get_offset_len_noubcheck<u8>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core5slice5index24get_offset_len_noubcheckhECsfISxE4fmY1Y_14polars_parquet", scope: !901, file: !899, line: 82, type: !860, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !859)
!17736 = distinct !DILexicalBlock(scope: !17735, file: !899, line: 87, column: 5)
!17737 = distinct !DILocation(line: 441, column: 24, scope: !17731, inlinedAt: !17734)
!17738 = distinct !{!17738, !"_RNCNCNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata19file_metadata_serde13chunk_to_wire00Bb_"}
!17739 = distinct !{!17739, !17738, !"_RNCNCNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata19file_metadata_serde13chunk_to_wire00Bb_: argument 1"}
!17740 = distinct !{!17740, !17738, !"_RNCNCNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata19file_metadata_serde13chunk_to_wire00Bb_: argument 0"}
!17741 = distinct !DISubprogram(name: "with_capacity_in<alloc::alloc::Global>", linkageName: "_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfISxE4fmY1Y_14polars_parquet", scope: !927, file: !925, line: 433, type: !860, scopeLine: 433, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !859)
!17742 = distinct !DISubprogram(name: "with_capacity_in<u8, alloc::alloc::Global>", linkageName: "_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechE16with_capacity_inCsfISxE4fmY1Y_14polars_parquet", scope: !928, file: !925, line: 175, type: !860, scopeLine: 175, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !859)
!17743 = distinct !DISubprogram(name: "with_capacity_in<u8, alloc::alloc::Global>", linkageName: "_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE16with_capacity_inCsfISxE4fmY1Y_14polars_parquet", scope: !920, file: !917, line: 976, type: !860, scopeLine: 976, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !859)
!17744 = distinct !DISubprogram(name: "to_vec<u8, alloc::alloc::Global>", linkageName: "_RINvXs_NvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet", scope: !1217, file: !1213, line: 446, type: !860, scopeLine: 446, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !859)
!17745 = distinct !DILexicalBlock(scope: !17744, file: !1213, line: 447, column: 17)
!17746 = distinct !DISubprogram(name: "to_vec_in<u8, alloc::alloc::Global>", linkageName: "_RINvMNtCsgZ49sUHp3tW_5alloc5sliceSh9to_vec_inNtNtB5_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet", scope: !1215, file: !1213, line: 396, type: !860, scopeLine: 396, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !859)
!17747 = distinct !DISubprogram(name: "to_vec<u8>", linkageName: "_RNvMNtCsgZ49sUHp3tW_5alloc5sliceSh6to_vecCsfISxE4fmY1Y_14polars_parquet", scope: !1215, file: !1213, line: 372, type: !860, scopeLine: 372, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !859)
!17748 = distinct !DILocation(line: 130, column: 58, scope: !17727, inlinedAt: !17729)
!17749 = distinct !DILocation(line: 376, column: 14, scope: !17747, inlinedAt: !17748)
!17750 = distinct !DILocation(line: 400, column: 16, scope: !17746, inlinedAt: !17749)
!17751 = distinct !DILocation(line: 448, column: 29, scope: !17745, inlinedAt: !17750)
!17752 = distinct !DILocation(line: 977, column: 20, scope: !17743, inlinedAt: !17751)
!17753 = distinct !DILocation(line: 177, column: 20, scope: !17742, inlinedAt: !17752)
!17754 = distinct !DILexicalBlock(scope: !17741, file: !925, line: 442, column: 13)
!17755 = distinct !DISubprogram(name: "needs_to_grow<alloc::alloc::Global>", linkageName: "_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner13needs_to_growCsfISxE4fmY1Y_14polars_parquet", scope: !927, file: !925, line: 766, type: !860, scopeLine: 766, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !859)
!17756 = distinct !DILexicalBlock(scope: !17741, file: !925, line: 435, column: 13)
!17757 = distinct !DILocation(line: 438, column: 50, scope: !17756, inlinedAt: !17753)
!17758 = distinct !DISubprogram(name: "assert_unchecked", linkageName: "_RNvNtCscgRAwXFJnXP_4core4hint16assert_unchecked", scope: !1076, file: !1075, line: 202, type: !860, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !859)
!17759 = distinct !DILocation(line: 438, column: 21, scope: !17756, inlinedAt: !17753)
!17760 = distinct !DILexicalBlock(scope: !17745, file: !1213, line: 448, column: 17)
!17761 = distinct !DISubprogram(name: "copy_nonoverlapping<u8>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr19copy_nonoverlappinghECsfISxE4fmY1Y_14polars_parquet", scope: !882, file: !885, line: 531, type: !860, scopeLine: 531, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !859)
!17762 = distinct !DISubprogram(name: "copy_to_nonoverlapping<u8>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr9const_ptrPh22copy_to_nonoverlappingCsfISxE4fmY1Y_14polars_parquet", scope: !939, file: !937, line: 1247, type: !860, scopeLine: 1247, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !859)
!17763 = distinct !DILocation(line: 454, column: 36, scope: !17760, inlinedAt: !17750)
!17764 = distinct !DILocation(line: 1252, column: 18, scope: !17762, inlinedAt: !17763)
!17765 = distinct !DILocation(line: 132, column: 5, scope: !17720, inlinedAt: !17721)
!17766 = distinct !DISubprogram(name: "map<polars_parquet::parquet::metadata::compact::ByteRange, alloc::vec::Vec<u8, alloc::alloc::Global>, polars_parquet::parquet::metadata::file_metadata_serde::chunk_to_wire::{closure#0}::{closure_env#1}>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata7compact9ByteRangeE3mapINtNtCsgZ49sUHp3tW_5alloc3vec3VechENCNCNvNtBM_19file_metadata_serde13chunk_to_wire0s_0EBQ_", scope: !868, file: !866, line: 1160, type: !860, scopeLine: 1160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !859)
!17767 = distinct !DILocation(line: 131, column: 32, scope: !17720, inlinedAt: !17721)
!17768 = distinct !DISubprogram(name: "resolve", linkageName: "_RNvMNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata7compactNtB2_9ByteRange7resolve", scope: !17819, file: !17817, line: 44, type: !860, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !859)
!17769 = distinct !DISubprogram(name: "{closure#1}", linkageName: "_RNCNCNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata19file_metadata_serde13chunk_to_wire0s_0Bb_", scope: !17820, file: !1258, line: 131, type: !860, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !859)
!17770 = distinct !DILexicalBlock(scope: !17766, file: !866, line: 1165, column: 13)
!17771 = distinct !DILocation(line: 1165, column: 29, scope: !17770, inlinedAt: !17767)
!17772 = distinct !DILocation(line: 131, column: 42, scope: !17769, inlinedAt: !17771)
!17773 = distinct !DISubprogram(name: "index<u8>", linkageName: "_RNvXs2_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range5RangejEINtB5_10SliceIndexShE5indexCsfISxE4fmY1Y_14polars_parquet", scope: !903, file: !899, line: 435, type: !860, scopeLine: 435, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !859)
!17774 = distinct !DISubprogram(name: "index<u8, core::ops::range::Range<usize>>", linkageName: "_RNvXNtNtCscgRAwXFJnXP_4core5slice5indexShINtNtNtB6_3ops5index5IndexINtNtBI_5range5RangejEE5indexCsfISxE4fmY1Y_14polars_parquet", scope: !902, file: !899, line: 18, type: !860, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !859)
!17775 = distinct !DILocation(line: 45, column: 13, scope: !17768, inlinedAt: !17772)
!17776 = distinct !DILocation(line: 19, column: 15, scope: !17774, inlinedAt: !17775)
!17777 = distinct !DISubprogram(name: "get_offset_len_noubcheck<u8>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core5slice5index24get_offset_len_noubcheckhECsfISxE4fmY1Y_14polars_parquet", scope: !901, file: !899, line: 82, type: !860, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !859)
!17778 = distinct !DILexicalBlock(scope: !17777, file: !899, line: 87, column: 5)
!17779 = distinct !DILocation(line: 441, column: 24, scope: !17773, inlinedAt: !17776)
!17780 = distinct !{!17780, !"_RNCNCNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata19file_metadata_serde13chunk_to_wire0s_0Bb_"}
!17781 = distinct !{!17781, !17780, !"_RNCNCNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata19file_metadata_serde13chunk_to_wire0s_0Bb_: argument 1"}
!17782 = distinct !{!17782, !17780, !"_RNCNCNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata19file_metadata_serde13chunk_to_wire0s_0Bb_: argument 0"}
!17783 = distinct !DISubprogram(name: "with_capacity_in<alloc::alloc::Global>", linkageName: "_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfISxE4fmY1Y_14polars_parquet", scope: !927, file: !925, line: 433, type: !860, scopeLine: 433, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !859)
!17784 = distinct !DISubprogram(name: "with_capacity_in<u8, alloc::alloc::Global>", linkageName: "_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechE16with_capacity_inCsfISxE4fmY1Y_14polars_parquet", scope: !928, file: !925, line: 175, type: !860, scopeLine: 175, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !859)
!17785 = distinct !DISubprogram(name: "with_capacity_in<u8, alloc::alloc::Global>", linkageName: "_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE16with_capacity_inCsfISxE4fmY1Y_14polars_parquet", scope: !920, file: !917, line: 976, type: !860, scopeLine: 976, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !859)
!17786 = distinct !DISubprogram(name: "to_vec<u8, alloc::alloc::Global>", linkageName: "_RINvXs_NvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet", scope: !1217, file: !1213, line: 446, type: !860, scopeLine: 446, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !859)
!17787 = distinct !DILexicalBlock(scope: !17786, file: !1213, line: 447, column: 17)
!17788 = distinct !DISubprogram(name: "to_vec_in<u8, alloc::alloc::Global>", linkageName: "_RINvMNtCsgZ49sUHp3tW_5alloc5sliceSh9to_vec_inNtNtB5_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet", scope: !1215, file: !1213, line: 396, type: !860, scopeLine: 396, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !859)
!17789 = distinct !DISubprogram(name: "to_vec<u8>", linkageName: "_RNvMNtCsgZ49sUHp3tW_5alloc5sliceSh6to_vecCsfISxE4fmY1Y_14polars_parquet", scope: !1215, file: !1213, line: 372, type: !860, scopeLine: 372, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !859)
!17790 = distinct !DILocation(line: 131, column: 58, scope: !17769, inlinedAt: !17771)
!17791 = distinct !DILocation(line: 376, column: 14, scope: !17789, inlinedAt: !17790)
!17792 = distinct !DILocation(line: 400, column: 16, scope: !17788, inlinedAt: !17791)
!17793 = distinct !DILocation(line: 448, column: 29, scope: !17787, inlinedAt: !17792)
!17794 = distinct !DILocation(line: 977, column: 20, scope: !17785, inlinedAt: !17793)
!17795 = distinct !DILocation(line: 177, column: 20, scope: !17784, inlinedAt: !17794)
!17796 = distinct !DILexicalBlock(scope: !17783, file: !925, line: 442, column: 13)
!17797 = distinct !DISubprogram(name: "needs_to_grow<alloc::alloc::Global>", linkageName: "_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner13needs_to_growCsfISxE4fmY1Y_14polars_parquet", scope: !927, file: !925, line: 766, type: !860, scopeLine: 766, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !859)
!17798 = distinct !DILexicalBlock(scope: !17783, file: !925, line: 435, column: 13)
!17799 = distinct !DILocation(line: 438, column: 50, scope: !17798, inlinedAt: !17795)
!17800 = distinct !DISubprogram(name: "assert_unchecked", linkageName: "_RNvNtCscgRAwXFJnXP_4core4hint16assert_unchecked", scope: !1076, file: !1075, line: 202, type: !860, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !859)
!17801 = distinct !DILocation(line: 438, column: 21, scope: !17798, inlinedAt: !17795)
!17802 = distinct !DILexicalBlock(scope: !17787, file: !1213, line: 448, column: 17)
!17803 = distinct !DISubprogram(name: "copy_nonoverlapping<u8>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr19copy_nonoverlappinghECsfISxE4fmY1Y_14polars_parquet", scope: !882, file: !885, line: 531, type: !860, scopeLine: 531, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !859)
!17804 = distinct !DISubprogram(name: "copy_to_nonoverlapping<u8>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr9const_ptrPh22copy_to_nonoverlappingCsfISxE4fmY1Y_14polars_parquet", scope: !939, file: !937, line: 1247, type: !860, scopeLine: 1247, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !859)
!17805 = distinct !DILocation(line: 454, column: 36, scope: !17802, inlinedAt: !17792)
!17806 = distinct !DILocation(line: 1252, column: 18, scope: !17804, inlinedAt: !17805)
!17807 = distinct !DILocation(line: 810, column: 1, scope: !126, inlinedAt: !17765)
!17808 = distinct !DILocation(line: 810, column: 1, scope: !128, inlinedAt: !17807)
!17809 = distinct !DILexicalBlock(scope: !17714, file: !1258, line: 128, column: 5)
!17810 = distinct !DILexicalBlock(scope: !17809, file: !1258, line: 136, column: 5)
!17811 = !DILocation(line: 128, column: 35, scope: !17714)
!17812 = !{!17717}
!17813 = !DILocation(line: 128, column: 44, scope: !17714)
!17814 = !DINamespace(name: "chunk_to_wire", scope: !1260)
!17815 = !{!17723, !17722}
!17816 = !{!17723, !17722, !17717}
!17817 = !DIFile(filename: "crates/polars-parquet/src/parquet/metadata/compact.rs", directory: "/opt-bench/work/pola-rs/polars", checksumkind: CSK_MD5, checksum: "1163b7b3d66933f17b80f04514c372da")
!17818 = !DINamespace(name: "compact", scope: !1259)
!17819 = !DINamespace(name: "ByteRange", scope: !17818)
!17820 = !DINamespace(name: "{closure#0}", scope: !17814)
!17821 = !{!17740, !17739, !17723, !17722, !17717}
!17822 = !{!17740, !17723, !17717}
!17823 = !{!17782, !17781, !17723, !17722, !17717}
!17824 = !{!17782, !17723, !17717}
!17825 = !DILocation(line: 128, column: 9, scope: !17714)
!17826 = !DILocation(line: 745, column: 15, scope: !17715, inlinedAt: !17811)
!17827 = !DILocation(line: 745, column: 9, scope: !17715, inlinedAt: !17811)
!17828 = !DILocation(line: 1165, column: 29, scope: !17719, inlinedAt: !17813)
!17829 = !DILocation(line: 129, column: 21, scope: !17720, inlinedAt: !17721)
!17830 = !DILocation(line: 130, column: 20, scope: !17720, inlinedAt: !17721)
!17831 = !DILocation(line: 1164, column: 9, scope: !17724, inlinedAt: !17725)
!17832 = !DILocation(line: 45, column: 14, scope: !17726, inlinedAt: !17730)
!17833 = !DILocation(line: 45, column: 60, scope: !17726, inlinedAt: !17730)
!17834 = !DILocation(line: 45, column: 36, scope: !17726, inlinedAt: !17730)
!17835 = !DILocation(line: 438, column: 16, scope: !17731, inlinedAt: !17734)
!17836 = !DILocation(line: 89, column: 24, scope: !17736, inlinedAt: !17737)
!17837 = !DILocation(line: 434, column: 15, scope: !17741, inlinedAt: !17753)
!17838 = !DILocation(line: 434, column: 9, scope: !17741, inlinedAt: !17753)
!17839 = !DILocation(line: 0, scope: !17741, inlinedAt: !17753)
!17840 = !DILocation(line: 443, column: 13, scope: !17731, inlinedAt: !17734)
!17841 = !DILocation(line: 442, column: 17, scope: !17741, inlinedAt: !17753)
!17842 = !DILocation(line: 442, column: 25, scope: !17754, inlinedAt: !17753)
!17843 = !DILocation(line: 435, column: 16, scope: !17741, inlinedAt: !17753)
!17844 = !DILocation(line: 767, column: 9, scope: !17755, inlinedAt: !17757)
!17845 = !DILocation(line: 210, column: 9, scope: !17758, inlinedAt: !17759)
!17846 = !DILocation(line: 443, column: 9, scope: !17741, inlinedAt: !17753)
!17847 = !DILocation(line: 452, column: 20, scope: !17760, inlinedAt: !17750)
!17848 = !DILocation(line: 552, column: 14, scope: !17761, inlinedAt: !17764)
!17849 = !DILocation(line: 452, column: 17, scope: !17760, inlinedAt: !17750)
!17850 = !DILocation(line: 1165, column: 24, scope: !17728, inlinedAt: !17725)
!17851 = !DILocation(line: 810, column: 1, scope: !126, inlinedAt: !17765)
!17852 = !DILocation(line: 1165, column: 33, scope: !17724, inlinedAt: !17725)
!17853 = !DILocation(line: 1166, column: 21, scope: !17724, inlinedAt: !17725)
!17854 = !DILocation(line: 1168, column: 5, scope: !17724, inlinedAt: !17725)
!17855 = !DILocation(line: 131, column: 20, scope: !17720, inlinedAt: !17721)
!17856 = !DILocation(line: 1164, column: 9, scope: !17766, inlinedAt: !17767)
!17857 = !DILocation(line: 45, column: 14, scope: !17768, inlinedAt: !17772)
!17858 = !DILocation(line: 45, column: 60, scope: !17768, inlinedAt: !17772)
!17859 = !DILocation(line: 45, column: 36, scope: !17768, inlinedAt: !17772)
!17860 = !DILocation(line: 438, column: 16, scope: !17773, inlinedAt: !17776)
!17861 = !DILocation(line: 89, column: 24, scope: !17778, inlinedAt: !17779)
!17862 = !DILocation(line: 434, column: 15, scope: !17783, inlinedAt: !17795)
!17863 = !DILocation(line: 434, column: 9, scope: !17783, inlinedAt: !17795)
!17864 = !DILocation(line: 0, scope: !17783, inlinedAt: !17795)
!17865 = !DILocation(line: 443, column: 13, scope: !17773, inlinedAt: !17776)
!17866 = !DILocation(line: 442, column: 17, scope: !17783, inlinedAt: !17795)
!17867 = !DILocation(line: 442, column: 25, scope: !17796, inlinedAt: !17795)
!17868 = !DILocation(line: 435, column: 16, scope: !17783, inlinedAt: !17795)
!17869 = !DILocation(line: 767, column: 9, scope: !17797, inlinedAt: !17799)
!17870 = !DILocation(line: 210, column: 9, scope: !17800, inlinedAt: !17801)
!17871 = !DILocation(line: 443, column: 9, scope: !17783, inlinedAt: !17795)
!17872 = !DILocation(line: 452, column: 20, scope: !17802, inlinedAt: !17792)
!17873 = !DILocation(line: 552, column: 14, scope: !17803, inlinedAt: !17806)
!17874 = !DILocation(line: 452, column: 17, scope: !17802, inlinedAt: !17792)
!17875 = !DILocation(line: 810, column: 1, scope: !127, inlinedAt: !17808)
!17876 = !DILocation(line: 128, column: 48, scope: !17720, inlinedAt: !17721)
!17877 = !DILocation(line: 0, scope: !17713)
!17878 = !DILocation(line: 131, scope: !17720, inlinedAt: !17721)
!17879 = !DILocation(line: 0, scope: !17766, inlinedAt: !17767)
!17880 = !DILocation(line: 1165, column: 24, scope: !17719, inlinedAt: !17813)
!17881 = !DILocation(line: 128, column: 52, scope: !17720, inlinedAt: !17721)
!17882 = !DILocation(line: 132, column: 5, scope: !17720, inlinedAt: !17721)
!17883 = !DILocation(line: 1165, column: 33, scope: !17718, inlinedAt: !17813)
!17884 = !DILocation(line: 1166, column: 21, scope: !17718, inlinedAt: !17813)
!17885 = !DILocation(line: 1168, column: 5, scope: !17718, inlinedAt: !17813)
!17886 = !DILocation(line: 136, column: 24, scope: !17809)
!17887 = !DILocation(line: 144, column: 1, scope: !17714)
!17888 = !DILocation(line: 136, column: 22, scope: !17809)
!17889 = !DILocation(line: 138, column: 16, scope: !17810)
!17890 = !DILocation(line: 139, column: 21, scope: !17810)
!17891 = !DILocation(line: 141, column: 21, scope: !17810)
!17892 = !DILocation(line: 142, column: 9, scope: !17810)
!17893 = !DILocation(line: 137, column: 5, scope: !17810)
!17894 = !DILocation(line: 144, column: 2, scope: !17713)
!17895 = !DILocation(line: 126, column: 1, scope: !17713)
!17896 = distinct !DISubprogram(name: "chunk_from_wire", linkageName: "_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata19file_metadata_serde15chunk_from_wire", scope: !1260, file: !1258, line: 228, type: !860, scopeLine: 228, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !859)
!17897 = distinct !DISubprogram(name: "map<polars_parquet::parquet::metadata::file_metadata_serde::StatWire, polars_parquet::parquet::metadata::compact::CompactStatistics, polars_parquet::parquet::metadata::file_metadata_serde::chunk_from_wire::{closure_env#0}>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata19file_metadata_serde8StatWireE3mapNtNtBM_7compact17CompactStatisticsNCNvBK_15chunk_from_wire0EBQ_", scope: !868, file: !866, line: 1160, type: !860, scopeLine: 1160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !859)
!17898 = distinct !DILexicalBlock(scope: !17897, file: !866, line: 1165, column: 13)
!17899 = distinct !{!17899, !"_RNCNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata19file_metadata_serde15chunk_from_wire0B9_"}
!17900 = distinct !{!17900, !17899, !"_RNCNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata19file_metadata_serde15chunk_from_wire0B9_: argument 1"}
!17901 = distinct !{!17901, !17899, !"_RNCNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata19file_metadata_serde15chunk_from_wire0B9_: argument 2"}
!17902 = distinct !DISubprogram(name: "{closure#0}", linkageName: "_RNCNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata19file_metadata_serde15chunk_from_wire0B9_", scope: !18022, file: !1258, line: 229, type: !860, scopeLine: 229, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !859)
!17903 = distinct !DILocation(line: 1165, column: 29, scope: !17898, inlinedAt: !18019)
!17904 = distinct !{!17904, !17899, !"_RNCNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata19file_metadata_serde15chunk_from_wire0B9_: argument 0"}
!17905 = distinct !DISubprogram(name: "map<alloc::vec::Vec<u8, alloc::alloc::Global>, polars_parquet::parquet::metadata::compact::ByteRange, polars_parquet::parquet::metadata::file_metadata_serde::chunk_from_wire::{closure#0}::{closure_env#0}>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VechEE3mapNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata7compact9ByteRangeNCNCNvNtB1q_19file_metadata_serde15chunk_from_wire00EB1u_", scope: !868, file: !866, line: 1160, type: !860, scopeLine: 1160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !859)
!17906 = distinct !DILocation(line: 230, column: 37, scope: !17902, inlinedAt: !17903)
!17907 = distinct !DILexicalBlock(scope: !17905, file: !866, line: 1165, column: 13)
!17908 = distinct !{!17908, !"_RNCNCNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata19file_metadata_serde15chunk_from_wire00Bb_"}
!17909 = distinct !{!17909, !17908, !"_RNCNCNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata19file_metadata_serde15chunk_from_wire00Bb_: argument 0"}
!17910 = distinct !{!17910, !17908, !"_RNCNCNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata19file_metadata_serde15chunk_from_wire00Bb_: argument 1"}
!17911 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, u8>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner8non_nullhECsfISxE4fmY1Y_14polars_parquet", scope: !927, file: !925, line: 613, type: !860, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !859)
!17912 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, u8>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner3ptrhECsfISxE4fmY1Y_14polars_parquet", scope: !927, file: !925, line: 608, type: !860, scopeLine: 608, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !859)
!17913 = distinct !DISubprogram(name: "ptr<u8, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechE3ptrCsfISxE4fmY1Y_14polars_parquet", scope: !928, file: !925, line: 295, type: !860, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !859)
!17914 = distinct !DISubprogram(name: "as_ptr<u8, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE6as_ptrCsfISxE4fmY1Y_14polars_parquet", scope: !920, file: !917, line: 1939, type: !860, scopeLine: 1939, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !859)
!17915 = distinct !DISubprogram(name: "as_slice<u8, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE8as_sliceCsfISxE4fmY1Y_14polars_parquet", scope: !920, file: !917, line: 1824, type: !860, scopeLine: 1824, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !859)
!17916 = distinct !DISubprogram(name: "deref<u8, alloc::alloc::Global>", linkageName: "_RNvXs7_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops5deref5Deref5derefCsfISxE4fmY1Y_14polars_parquet", scope: !924, file: !917, line: 3755, type: !860, scopeLine: 3755, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !859)
!17917 = distinct !DISubprogram(name: "{closure#0}", linkageName: "_RNCNCNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata19file_metadata_serde15chunk_from_wire00Bb_", scope: !18028, file: !1258, line: 230, type: !860, scopeLine: 230, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !859)
!17918 = distinct !DILocation(line: 1165, column: 29, scope: !17907, inlinedAt: !17906)
!17919 = distinct !DILocation(line: 230, column: 74, scope: !17917, inlinedAt: !17918)
!17920 = distinct !DILocation(line: 3756, column: 14, scope: !17916, inlinedAt: !17919)
!17921 = distinct !DILocation(line: 1841, column: 76, scope: !17915, inlinedAt: !17920)
!17922 = distinct !DILocation(line: 1942, column: 18, scope: !17914, inlinedAt: !17921)
!17923 = distinct !DILocation(line: 296, column: 20, scope: !17913, inlinedAt: !17922)
!17924 = distinct !DILocation(line: 609, column: 14, scope: !17912, inlinedAt: !17923)
!17925 = distinct !DISubprogram(name: "len<u8, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE3lenCsfISxE4fmY1Y_14polars_parquet", scope: !920, file: !917, line: 3023, type: !860, scopeLine: 3023, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !859)
!17926 = distinct !DISubprogram(name: "append_to_footer", linkageName: "_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata19file_metadata_serde16append_to_footer", scope: !1260, file: !1258, line: 269, type: !860, scopeLine: 269, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !859)
!17927 = distinct !DILocation(line: 230, column: 49, scope: !17917, inlinedAt: !17918)
!17928 = distinct !DILocation(line: 270, column: 25, scope: !17926, inlinedAt: !17927)
!17929 = distinct !{!17929, !"_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata19file_metadata_serde16append_to_footer"}
!17930 = distinct !{!17930, !17929, !"_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata19file_metadata_serde16append_to_footer: argument 0"}
!17931 = distinct !{!17931, !17929, !"_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata19file_metadata_serde16append_to_footer: argument 1"}
!17932 = distinct !DILexicalBlock(scope: !17925, file: !917, line: 3024, column: 9)
!17933 = distinct !{!17933, !"_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet"}
!17934 = distinct !{!17934, !17933, !"_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet: argument 0"}
!17935 = distinct !{!17935, !"_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet"}
!17936 = distinct !{!17936, !17935, !"_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet: argument 0"}
!17937 = distinct !DISubprogram(name: "spec_extend<u8, alloc::alloc::Global>", linkageName: "_RNvXs2_NtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterhEE11spec_extendCsfISxE4fmY1Y_14polars_parquet", scope: !1153, file: !1151, line: 54, type: !860, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !859)
!17938 = distinct !DILexicalBlock(scope: !17937, file: !1151, line: 55, column: 9)
!17939 = distinct !DISubprogram(name: "extend_from_slice<u8, alloc::alloc::Global>", linkageName: "_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE17extend_from_sliceCsfISxE4fmY1Y_14polars_parquet", scope: !920, file: !917, line: 3526, type: !860, scopeLine: 3526, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !859)
!17940 = distinct !DILexicalBlock(scope: !17926, file: !1258, line: 270, column: 5)
!17941 = distinct !DILocation(line: 271, column: 12, scope: !17940, inlinedAt: !17927)
!17942 = distinct !DILocation(line: 3527, column: 14, scope: !17939, inlinedAt: !17941)
!17943 = distinct !DILocation(line: 56, column: 23, scope: !17938, inlinedAt: !17942)
!17944 = distinct !DILocation(line: 2906, column: 14, scope: !430, inlinedAt: !17943)
!17945 = distinct !DILocation(line: 1472, column: 18, scope: !29, inlinedAt: !17944)
!17946 = distinct !DILocation(line: 341, column: 29, scope: !33, inlinedAt: !17945)
!17947 = distinct !DILocation(line: 673, column: 17, scope: !32, inlinedAt: !17946)
!17948 = distinct !DILocation(line: 767, column: 27, scope: !31, inlinedAt: !17947)
!17949 = distinct !DILocation(line: 767, column: 56, scope: !31, inlinedAt: !17947)
!17950 = distinct !DILocation(line: 2907, column: 24, scope: !430, inlinedAt: !17943)
!17951 = distinct !DILocation(line: 2910, column: 66, scope: !433, inlinedAt: !17943)
!17952 = distinct !DILocation(line: 2026, column: 18, scope: !437, inlinedAt: !17951)
!17953 = distinct !DILocation(line: 296, column: 20, scope: !436, inlinedAt: !17952)
!17954 = distinct !DILocation(line: 609, column: 14, scope: !435, inlinedAt: !17953)
!17955 = distinct !DILocation(line: 2910, column: 79, scope: !433, inlinedAt: !17943)
!17956 = distinct !DILocation(line: 2910, column: 17, scope: !433, inlinedAt: !17943)
!17957 = distinct !DILocation(line: 230, column: 80, scope: !17917, inlinedAt: !17918)
!17958 = distinct !DILocation(line: 810, column: 1, scope: !128, inlinedAt: !17957)
!17959 = distinct !DILocation(line: 230, column: 80, scope: !17917, inlinedAt: !17918)
!17960 = distinct !DILocation(line: 810, column: 1, scope: !128, inlinedAt: !17959)
!17961 = distinct !DILexicalBlock(scope: !17902, file: !1258, line: 230, column: 9)
!17962 = distinct !DISubprogram(name: "map<alloc::vec::Vec<u8, alloc::alloc::Global>, polars_parquet::parquet::metadata::compact::ByteRange, polars_parquet::parquet::metadata::file_metadata_serde::chunk_from_wire::{closure#0}::{closure_env#1}>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VechEE3mapNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata7compact9ByteRangeNCNCNvNtB1q_19file_metadata_serde15chunk_from_wire0s_0EB1u_", scope: !868, file: !866, line: 1160, type: !860, scopeLine: 1160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !859)
!17963 = distinct !DILocation(line: 231, column: 37, scope: !17961, inlinedAt: !17903)
!17964 = distinct !DILexicalBlock(scope: !17962, file: !866, line: 1165, column: 13)
!17965 = distinct !{!17965, !"_RNCNCNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata19file_metadata_serde15chunk_from_wire0s_0Bb_"}
!17966 = distinct !{!17966, !17965, !"_RNCNCNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata19file_metadata_serde15chunk_from_wire0s_0Bb_: argument 0"}
!17967 = distinct !{!17967, !17965, !"_RNCNCNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata19file_metadata_serde15chunk_from_wire0s_0Bb_: argument 1"}
!17968 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, u8>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner8non_nullhECsfISxE4fmY1Y_14polars_parquet", scope: !927, file: !925, line: 613, type: !860, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !859)
!17969 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, u8>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner3ptrhECsfISxE4fmY1Y_14polars_parquet", scope: !927, file: !925, line: 608, type: !860, scopeLine: 608, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !859)
!17970 = distinct !DISubprogram(name: "ptr<u8, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechE3ptrCsfISxE4fmY1Y_14polars_parquet", scope: !928, file: !925, line: 295, type: !860, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !859)
!17971 = distinct !DISubprogram(name: "as_ptr<u8, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE6as_ptrCsfISxE4fmY1Y_14polars_parquet", scope: !920, file: !917, line: 1939, type: !860, scopeLine: 1939, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !859)
!17972 = distinct !DISubprogram(name: "as_slice<u8, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE8as_sliceCsfISxE4fmY1Y_14polars_parquet", scope: !920, file: !917, line: 1824, type: !860, scopeLine: 1824, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !859)
!17973 = distinct !DISubprogram(name: "deref<u8, alloc::alloc::Global>", linkageName: "_RNvXs7_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops5deref5Deref5derefCsfISxE4fmY1Y_14polars_parquet", scope: !924, file: !917, line: 3755, type: !860, scopeLine: 3755, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !859)
!17974 = distinct !DISubprogram(name: "{closure#1}", linkageName: "_RNCNCNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata19file_metadata_serde15chunk_from_wire0s_0Bb_", scope: !18028, file: !1258, line: 231, type: !860, scopeLine: 231, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !859)
!17975 = distinct !DILocation(line: 1165, column: 29, scope: !17964, inlinedAt: !17963)
!17976 = distinct !DILocation(line: 231, column: 74, scope: !17974, inlinedAt: !17975)
!17977 = distinct !DILocation(line: 3756, column: 14, scope: !17973, inlinedAt: !17976)
!17978 = distinct !DILocation(line: 1841, column: 76, scope: !17972, inlinedAt: !17977)
!17979 = distinct !DILocation(line: 1942, column: 18, scope: !17971, inlinedAt: !17978)
!17980 = distinct !DILocation(line: 296, column: 20, scope: !17970, inlinedAt: !17979)
!17981 = distinct !DILocation(line: 609, column: 14, scope: !17969, inlinedAt: !17980)
!17982 = distinct !DILocation(line: 231, column: 49, scope: !17974, inlinedAt: !17975)
!17983 = distinct !DILocation(line: 270, column: 25, scope: !17926, inlinedAt: !17982)
!17984 = distinct !{!17984, !"_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata19file_metadata_serde16append_to_footer"}
!17985 = distinct !{!17985, !17984, !"_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata19file_metadata_serde16append_to_footer: argument 0"}
!17986 = distinct !{!17986, !17984, !"_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata19file_metadata_serde16append_to_footer: argument 1"}
!17987 = distinct !{!17987, !"_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet"}
!17988 = distinct !{!17988, !17987, !"_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet: argument 0"}
!17989 = distinct !{!17989, !"_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet"}
!17990 = distinct !{!17990, !17989, !"_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet: argument 0"}
!17991 = distinct !DILocation(line: 271, column: 12, scope: !17940, inlinedAt: !17982)
!17992 = distinct !DILocation(line: 3527, column: 14, scope: !17939, inlinedAt: !17991)
!17993 = distinct !DILocation(line: 56, column: 23, scope: !17938, inlinedAt: !17992)
!17994 = distinct !DILocation(line: 2906, column: 14, scope: !430, inlinedAt: !17993)
!17995 = distinct !DILocation(line: 1472, column: 18, scope: !29, inlinedAt: !17994)
!17996 = distinct !DILocation(line: 341, column: 29, scope: !33, inlinedAt: !17995)
!17997 = distinct !DILocation(line: 673, column: 17, scope: !32, inlinedAt: !17996)
!17998 = distinct !DILocation(line: 767, column: 27, scope: !31, inlinedAt: !17997)
!17999 = distinct !DILocation(line: 767, column: 56, scope: !31, inlinedAt: !17997)
!18000 = distinct !DILocation(line: 2907, column: 24, scope: !430, inlinedAt: !17993)
!18001 = distinct !DILocation(line: 2910, column: 66, scope: !433, inlinedAt: !17993)
!18002 = distinct !DILocation(line: 2026, column: 18, scope: !437, inlinedAt: !18001)
!18003 = distinct !DILocation(line: 296, column: 20, scope: !436, inlinedAt: !18002)
!18004 = distinct !DILocation(line: 609, column: 14, scope: !435, inlinedAt: !18003)
!18005 = distinct !DILocation(line: 2910, column: 79, scope: !433, inlinedAt: !17993)
!18006 = distinct !DILocation(line: 2910, column: 17, scope: !433, inlinedAt: !17993)
!18007 = distinct !DILocation(line: 231, column: 80, scope: !17974, inlinedAt: !17975)
!18008 = distinct !DILocation(line: 810, column: 1, scope: !128, inlinedAt: !18007)
!18009 = distinct !DILocation(line: 231, column: 80, scope: !17974, inlinedAt: !17975)
!18010 = distinct !DILocation(line: 810, column: 1, scope: !128, inlinedAt: !18009)
!18011 = distinct !{!18011, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEECsfISxE4fmY1Y_14polars_parquet"}
!18012 = distinct !{!18012, !18011, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEECsfISxE4fmY1Y_14polars_parquet: argument 0"}
!18013 = distinct !DILocation(line: 240, column: 5, scope: !17902, inlinedAt: !17903)
!18014 = distinct !DILocation(line: 810, column: 1, scope: !126, inlinedAt: !18013)
!18015 = distinct !DILocation(line: 810, column: 1, scope: !128, inlinedAt: !18014)
!18016 = distinct !DILexicalBlock(scope: !17961, file: !1258, line: 231, column: 9)
!18017 = distinct !DILexicalBlock(scope: !17896, file: !1258, line: 229, column: 5)
!18018 = distinct !DILexicalBlock(scope: !18017, file: !1258, line: 247, column: 5)
!18019 = !DILocation(line: 229, column: 35, scope: !17896)
!18020 = !{!17900}
!18021 = !{!17901}
!18022 = !DINamespace(name: "chunk_from_wire", scope: !1260)
!18023 = !{!17904, !17900}
!18024 = !{!17904, !17900, !17901}
!18025 = !{!17909}
!18026 = !{!17910}
!18027 = !{!17909, !17904, !17900, !17901}
!18028 = !DINamespace(name: "{closure#0}", scope: !18022)
!18029 = !{!17930, !17909, !17900}
!18030 = !{!17931, !17910, !17904, !17901}
!18031 = !{!17936, !17934, !17930, !17909, !17900}
!18032 = !{!17910, !17904, !17901}
!18033 = !{!17934, !17930, !17909, !17900}
!18034 = !{!17904, !17901}
!18035 = !{!17966}
!18036 = !{!17967}
!18037 = !{!17966, !17904, !17900, !17901}
!18038 = !{!17985, !17966, !17900}
!18039 = !{!17986, !17967, !17904, !17901}
!18040 = !{!17990, !17988, !17985, !17966, !17900}
!18041 = !{!17967, !17904, !17901}
!18042 = !{!17988, !17985, !17966, !17900}
!18043 = !{!18012, !17901}
!18044 = !{!17904}
!18045 = !DILocation(line: 229, column: 22, scope: !17896)
!18046 = !DILocation(line: 1164, column: 15, scope: !17897, inlinedAt: !18019)
!18047 = !DILocation(line: 1164, column: 9, scope: !17897, inlinedAt: !18019)
!18048 = !DILocation(line: 1165, column: 29, scope: !17898, inlinedAt: !18019)
!18049 = !DILocation(line: 1165, column: 18, scope: !17897, inlinedAt: !18019)
!18050 = !DILocation(line: 230, column: 25, scope: !17902, inlinedAt: !17903)
!18051 = !DILocation(line: 1164, column: 15, scope: !17905, inlinedAt: !17906)
!18052 = !DILocation(line: 1164, column: 9, scope: !17905, inlinedAt: !17906)
!18053 = !DILocation(line: 1165, column: 29, scope: !17907, inlinedAt: !17906)
!18054 = !DILocation(line: 1165, column: 18, scope: !17905, inlinedAt: !17906)
!18055 = !DILocation(line: 614, column: 9, scope: !17911, inlinedAt: !17924)
!18056 = !DILocation(line: 1841, column: 86, scope: !17915, inlinedAt: !17920)
!18057 = !DILocation(line: 3024, column: 19, scope: !17925, inlinedAt: !17928)
!18058 = !DILocation(line: 3029, column: 37, scope: !17932, inlinedAt: !17928)
!18059 = !DILocation(line: 3029, column: 18, scope: !17932, inlinedAt: !17928)
!18060 = !DILocation(line: 619, column: 49, scope: !30, inlinedAt: !17948)
!18061 = !DILocation(line: 2548, column: 13, scope: !34, inlinedAt: !17949)
!18062 = !DILocation(line: 767, column: 9, scope: !31, inlinedAt: !17947)
!18063 = !DILocation(line: 673, column: 12, scope: !32, inlinedAt: !17946)
!18064 = !DILocation(line: 675, column: 17, scope: !32, inlinedAt: !17946)
!18065 = !DILocation(line: 3024, column: 19, scope: !431, inlinedAt: !17950)
!18066 = !DILocation(line: 3029, column: 37, scope: !432, inlinedAt: !17950)
!18067 = !DILocation(line: 3029, column: 18, scope: !432, inlinedAt: !17950)
!18068 = !DILocation(line: 2908, column: 12, scope: !433, inlinedAt: !17943)
!18069 = !DILocation(line: 614, column: 9, scope: !434, inlinedAt: !17954)
!18070 = !DILocation(line: 961, column: 18, scope: !438, inlinedAt: !17955)
!18071 = !DILocation(line: 552, column: 14, scope: !439, inlinedAt: !17956)
!18072 = !DILocation(line: 2913, column: 9, scope: !433, inlinedAt: !17943)
!18073 = !DILocation(line: 2908, column: 9, scope: !433, inlinedAt: !17943)
!18074 = !DILocation(line: 810, column: 1, scope: !127, inlinedAt: !17958)
!18075 = !DILocation(line: 810, column: 1, scope: !127, inlinedAt: !17960)
!18076 = !DILocation(line: 240, column: 5, scope: !17902, inlinedAt: !17903)
!18077 = !DILocation(line: 230, column: 41, scope: !17917, inlinedAt: !17918)
!18078 = !DILocation(line: 0, scope: !17905, inlinedAt: !17906)
!18079 = !DILocation(line: 231, column: 25, scope: !17961, inlinedAt: !17903)
end_hunk_1
