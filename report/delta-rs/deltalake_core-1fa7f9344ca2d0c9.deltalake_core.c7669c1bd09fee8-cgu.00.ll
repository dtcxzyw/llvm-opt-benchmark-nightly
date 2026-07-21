inline.NumInlined: 17049
inline.NumDeleted: 6599
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEINtB2_12SpecFromIterBU_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtB2p_6filter6FilterINtNtNtB2t_5slice4iter4IterNtNtNtB10_8snapshot9iterators15LogicalFileViewENCNCNvNtNtB12_10operations7restore7execute0s2_0ENCB4J_s3_0EE9from_iterB12_:bb.a
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26, !noalias !21781
  unreachable

.loopexit.i:                                      ; preds = %bb.j
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.i:                             ; preds = %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewENCNCNvNtNtB1Q_10operations7restore7execute0s2_0ENCB34_s3_0ENtNtNtB9_6traits8iterator8Iterator4nextB1Q_.exit.i.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.loopexit.split-lp.i, %.loopexit.i, %bb.l
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.au, %bb.l ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEEB1l_(ptr noalias noundef align 8 dereferenceable(24) %i.k) #29
          to label %bb.p unwind label %bb.o, !noalias !21781

.loopexit15.i:                                    ; preds = %.noexc9.i, %_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewENCNCNvNtNtB1A_10operations7restore7execute0s2_0ENtNtNtB9_6traits8iterator8Iterator4nextB1A_.exit.i.i.i.i, %_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewENCNCNvNtNtB1A_10operations7restore7execute0s2_0ENtNtNtB9_6traits8iterator8Iterator4nextB1A_.exit.thread.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !21786
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !21784
  br label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtB2D_6filter6FilterINtNtNtB2H_5slice4iter4IterNtNtNtB17_8snapshot9iterators15LogicalFileViewENCNCNvNtNtB19_10operations7restore7execute0s2_0ENCB4X_s3_0EE9from_iterB19_.exit

bb.o:                                             ; preds = %.body.i, %bb.d
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26, !noalias !21781
  unreachable

bb.p:                                             ; preds = %.body.i, %bb.d
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.w, %bb.d ]
  resume { ptr, i32 } %.pn.i

_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtB2D_6filter6FilterINtNtNtB2H_5slice4iter4IterNtNtNtB17_8snapshot9iterators15LogicalFileViewENCNCNvNtNtB19_10operations7restore7execute0s2_0ENCB4X_s3_0EE9from_iterB19_.exit: ; preds = %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewENCNCNvNtNtB1Q_10operations7restore7execute0s2_0ENCB34_s3_0ENtNtNtB9_6traits8iterator8Iterator4nextB1Q_.exit.thread.i, %.loopexit15.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !21786
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEINtB2_12SpecFromIterBU_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtB2p_7flatten7FlatMapINtNtNtB2t_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEIB2l_INtNtNtB2t_3ops5range5RangejENCNCNvMs1_NtNtB10_8snapshot8log_dataNtB5D_14LogDataHandler4iter00ENCB5x_0ENCNCNvNtNtB12_16delta_datafusion10find_files17scan_memory_table00EE9from_iterB12_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [272 x i8], align 8               ; 8 uses
  %i.b = alloca [272 x i8], align 8               ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [64 x i8], align 8                ; 11 uses
  %i.e = alloca [272 x i8], align 8               ; 6 uses
  %i.f = alloca [272 x i8], align 8               ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21838)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21841)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !21843
  call fastcc void @_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEIBN_INtNtNtBb_3ops5range5RangejENCNCNvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataNtB3n_14LogDataHandler4iter00ENCB3h_0ENCNCNvNtNtB3t_16delta_datafusion10find_files17scan_memory_table00ENtNtNtB9_6traits8iterator8Iterator4nextB3t_(ptr noalias noundef align 8 captures(none) dereferenceable(272) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(64) %1), !noalias !21838
  %i.h = load i64, ptr %i.e, align 8, !range !242, !noalias !21843, !noundef !8
  %.not.i = icmp eq i64 %i.h, 2
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !21843
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %i.f, ptr noundef nonnull align 8 dereferenceable(272) %i.e, i64 272, i1 false), !noalias !21843
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !21844, !noalias !21851, !noundef !8
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range5RangejENCNCNvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataNtB1T_14LogDataHandler4iter00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1Z_.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val.i.i.i.i.i = load i64, ptr %i.k, align 8, !alias.scope !21855, !noalias !21860, !noundef !8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val4.i.i.i.i.i = load i64, ptr %i.l, align 8, !alias.scope !21864, !noalias !21865, !noundef !8
  %spec.select.i.i.i.i.i.i.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.val4.i.i.i.i.i, i64 %.val.i.i.i.i.i)
  br label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range5RangejENCNCNvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataNtB1T_14LogDataHandler4iter00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1Z_.exit.i.i.i.i

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range5RangejENCNCNvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataNtB1T_14LogDataHandler4iter00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1Z_.exit.i.i.i.i: ; preds = %bb.c, %bb.b
  %.sroa.7.0.i.i.i.i = phi i64 [ %spec.select.i.i.i.i.i.i.i.i, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !21844, !noalias !21851, !noundef !8
  %.not54.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not54.i.i.i.i, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range5RangejENCNCNvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataNtB1T_14LogDataHandler4iter00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1Z_.exit66.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range5RangejENCNCNvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataNtB1T_14LogDataHandler4iter00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1Z_.exit.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val.i63.i.i.i.i = load i64, ptr %i.o, align 8, !alias.scope !21866, !noalias !21871, !noundef !8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val4.i64.i.i.i.i = load i64, ptr %i.p, align 8, !alias.scope !21875, !noalias !21876, !noundef !8
  %spec.select.i.i.i.i65.i.i.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.val4.i64.i.i.i.i, i64 %.val.i63.i.i.i.i)
  %i.q = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.7.0.i.i.i.i, i64 %spec.select.i.i.i.i65.i.i.i.i)
  br label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range5RangejENCNCNvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataNtB1T_14LogDataHandler4iter00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1Z_.exit66.i.i.i.i

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range5RangejENCNCNvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataNtB1T_14LogDataHandler4iter00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1Z_.exit66.i.i.i.i: ; preds = %bb.d, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range5RangejENCNCNvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataNtB1T_14LogDataHandler4iter00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1Z_.exit.i.i.i.i
  %.sroa.073.0.i.i.i.i = phi i64 [ %i.q, %bb.d ], [ %.sroa.7.0.i.i.i.i, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range5RangejENCNCNvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataNtB1T_14LogDataHandler4iter00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1Z_.exit.i.i.i.i ]
  %i.r = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.073.0.i.i.i.i, i64 1)
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.r, i64 4) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !21843
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %.sroa.0.0.i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 272)
          to label %.noexc.i unwind label %bb.f, !noalias !21843

bb.e:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !21838, !noalias !21841
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.s, align 8, !alias.scope !21838, !noalias !21841
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.t, align 8, !alias.scope !21838, !noalias !21841
  br label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtB2D_7flatten7FlatMapINtNtNtB2H_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEIB2z_INtNtNtB2H_3ops5range5RangejENCNCNvMs1_NtNtB17_8snapshot8log_dataNtB5R_14LogDataHandler4iter00ENCB5L_0ENCNCNvNtNtB19_16delta_datafusion10find_files17scan_memory_table00EE9from_iterB19_.exit

bb.f:                                             ; preds = %bb.g, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range5RangejENCNCNvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataNtB1T_14LogDataHandler4iter00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1Z_.exit66.i.i.i.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEBO_(ptr noalias noundef align 8 dereferenceable(272) %i.f) #29
          to label %bb.p unwind label %bb.o, !noalias !21843

.noexc.i:                                         ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range5RangejENCNCNvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataNtB1T_14LogDataHandler4iter00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1Z_.exit66.i.i.i.i
  %i.v = load i64, ptr %i.c, align 8, !range !79, !noalias !21843, !noundef !8
  %i.w = trunc nuw i64 %i.v to i1
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.y = load i64, ptr %i.x, align 8, !range !107, !noalias !21843, !noundef !8 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.w, label %bb.g, label %bb.h, !prof !84

bb.g:                                             ; preds = %.noexc.i
  %i.aa = load i64, ptr %i.z, align 8, !noalias !21843
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.y, i64 %i.aa) #27
          to label %.noexc6.i unwind label %bb.f, !noalias !21843

.noexc6.i:                                        ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %.noexc.i
  %i.ab = load ptr, ptr %i.z, align 8, !noalias !21843, !nonnull !8, !noundef !8 ; 2 uses
  %i.ac = icmp ule i64 %.sroa.0.0.i.i, %i.y
  tail call void @llvm.assume(i1 %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !21843
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %i.ab, ptr noundef nonnull align 8 dereferenceable(272) %i.e, i64 272, i1 false), !noalias !21843
  store i64 %i.y, ptr %i.g, align 8, !noalias !21843
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %i.ab, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !21843
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !21843
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !21843
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !21843
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false), !noalias !21838
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21877)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21880)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21882)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21885)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !21887
  invoke fastcc void @_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEIBN_INtNtNtBb_3ops5range5RangejENCNCNvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataNtB3n_14LogDataHandler4iter00ENCB3h_0ENCNCNvNtNtB3t_16delta_datafusion10find_files17scan_memory_table00ENtNtNtB9_6traits8iterator8Iterator4nextB3t_(ptr noalias noundef align 8 captures(none) dereferenceable(272) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.d)
          to label %.noexc7.i unwind label %.loopexit.split-lp.i, !noalias !21843

.noexc7.i:                                        ; preds = %bb.h
  %i.ad = load i64, ptr %i.a, align 8, !range !242, !noalias !21888, !noundef !8
  %.not4.i.i.i = icmp eq i64 %i.ad, 2
  br i1 %.not4.i.i.i, label %.loopexit9.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.noexc7.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  br label %bb.i

bb.i:                                             ; preds = %.noexc8.i, %.lr.ph.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !21888
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %i.b, ptr noundef nonnull align 8 dereferenceable(272) %i.a, i64 272, i1 false), !noalias !21888
  %i.ak = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !21889, !noalias !21890, !noundef !8 ; 5 uses
  %i.al = icmp ult i64 %i.ak, 33909456017848441
  call void @llvm.assume(i1 %i.al)
  %i.am = load i64, ptr %i.g, align 8, !range !83, !alias.scope !21889, !noalias !21890, !noundef !8
  %i.an = icmp eq i64 %i.ak, %i.am
  br i1 %i.an, label %bb.j, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddE7reserveBM_.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.ao = load ptr, ptr %i.ae, align 8, !alias.scope !21891, !noalias !21898, !noundef !8
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i.i.i.i, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range5RangejENCNCNvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataNtB1T_14LogDataHandler4iter00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1Z_.exit.i.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.af, align 8, !alias.scope !21902, !noalias !21907, !noundef !8
  %.val4.i.i.i.i.i.i.i = load i64, ptr %i.ag, align 8, !alias.scope !21911, !noalias !21912, !noundef !8
  %spec.select.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.usub.sat.i64(i64 %.val4.i.i.i.i.i.i.i, i64 %.val.i.i.i.i.i.i.i)
  br label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range5RangejENCNCNvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataNtB1T_14LogDataHandler4iter00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1Z_.exit.i.i.i.i.i.i

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range5RangejENCNCNvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataNtB1T_14LogDataHandler4iter00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1Z_.exit.i.i.i.i.i.i: ; preds = %bb.k, %bb.j
  %.sroa.7.0.i.i.i.i.i.i = phi i64 [ %spec.select.i.i.i.i.i.i.i.i.i.i, %bb.k ], [ 0, %bb.j ] ; 2 uses
  %i.ap = load ptr, ptr %i.ah, align 8, !alias.scope !21891, !noalias !21898, !noundef !8
  %.not54.i.i.i.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not54.i.i.i.i.i.i, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range5RangejENCNCNvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataNtB1T_14LogDataHandler4iter00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1Z_.exit66.i.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range5RangejENCNCNvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataNtB1T_14LogDataHandler4iter00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1Z_.exit.i.i.i.i.i.i
  %.val.i63.i.i.i.i.i.i = load i64, ptr %i.ai, align 8, !alias.scope !21913, !noalias !21918, !noundef !8
  %.val4.i64.i.i.i.i.i.i = load i64, ptr %i.aj, align 8, !alias.scope !21922, !noalias !21923, !noundef !8
  %spec.select.i.i.i.i65.i.i.i.i.i.i = call i64 @llvm.usub.sat.i64(i64 %.val4.i64.i.i.i.i.i.i, i64 %.val.i63.i.i.i.i.i.i)
  %i.aq = call i64 @llvm.uadd.sat.i64(i64 %.sroa.7.0.i.i.i.i.i.i, i64 %spec.select.i.i.i.i65.i.i.i.i.i.i)
  br label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range5RangejENCNCNvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataNtB1T_14LogDataHandler4iter00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1Z_.exit66.i.i.i.i.i.i

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range5RangejENCNCNvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataNtB1T_14LogDataHandler4iter00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1Z_.exit66.i.i.i.i.i.i: ; preds = %bb.l, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range5RangejENCNCNvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataNtB1T_14LogDataHandler4iter00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1Z_.exit.i.i.i.i.i.i
  %.sroa.073.0.i.i.i.i.i.i = phi i64 [ %i.aq, %bb.l ], [ %.sroa.7.0.i.i.i.i.i.i, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range5RangejENCNCNvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataNtB1T_14LogDataHandler4iter00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1Z_.exit.i.i.i.i.i.i ]
  %2 = call i64 @llvm.uadd.sat.i64(i64 %.sroa.073.0.i.i.i.i.i.i, i64 1)
  invoke void @_RINvNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.ak, i64 noundef %2, i64 noundef 8, i64 noundef 272)
          to label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddE7reserveBM_.exit.i.i.i unwind label %bb.m, !noalias !21890

_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddE7reserveBM_.exit.i.i.i: ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range5RangejENCNCNvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataNtB1T_14LogDataHandler4iter00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1Z_.exit66.i.i.i.i.i.i, %bb.i
  %i.ar = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !21889, !noalias !21890, !nonnull !8, !noundef !8
  %i.as = getelementptr inbounds nuw [272 x i8], ptr %i.ar, i64 %i.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %i.as, ptr noundef nonnull align 8 dereferenceable(272) %i.a, i64 272, i1 false), !noalias !21890
  %i.at = add nuw nsw i64 %i.ak, 1
  store i64 %i.at, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !21889, !noalias !21890
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !21888
  invoke fastcc void @_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEIBN_INtNtNtBb_3ops5range5RangejENCNCNvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataNtB3n_14LogDataHandler4iter00ENCB3h_0ENCNCNvNtNtB3t_16delta_datafusion10find_files17scan_memory_table00ENtNtNtB9_6traits8iterator8Iterator4nextB3t_(ptr noalias noundef align 8 captures(none) dereferenceable(272) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.d)
          to label %.noexc8.i unwind label %.loopexit.i, !noalias !21843

.noexc8.i:                                        ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddE7reserveBM_.exit.i.i.i
  %i.au = load i64, ptr %i.a, align 8, !range !242, !noalias !21888, !noundef !8
  %.not.i.i.i = icmp eq i64 %i.au, 2
  br i1 %.not.i.i.i, label %.loopexit9.i, label %bb.i

bb.m:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range5RangejENCNCNvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataNtB1T_14LogDataHandler4iter00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1Z_.exit66.i.i.i.i.i.i
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEBO_(ptr noalias noundef align 8 dereferenceable(272) %i.b) #29
          to label %.body.i unwind label %bb.n, !noalias !21890

bb.n:                                             ; preds = %bb.m
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26, !noalias !21890
  unreachable

.loopexit.i:                                      ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddE7reserveBM_.exit.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.i:                             ; preds = %bb.h
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.loopexit.split-lp.i, %.loopexit.i, %bb.m
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.av, %bb.m ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEEB1l_(ptr noalias noundef align 8 dereferenceable(24) %i.g) #29
          to label %bb.p unwind label %bb.o, !noalias !21843

.loopexit9.i:                                     ; preds = %.noexc8.i, %.noexc7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !21887
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !21843
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !21841
  br label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtB2D_7flatten7FlatMapINtNtNtB2H_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEIB2z_INtNtNtB2H_3ops5range5RangejENCNCNvMs1_NtNtB17_8snapshot8log_dataNtB5R_14LogDataHandler4iter00ENCB5L_0ENCNCNvNtNtB19_16delta_datafusion10find_files17scan_memory_table00EE9from_iterB19_.exit

bb.o:                                             ; preds = %.body.i, %bb.f
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26, !noalias !21843
  unreachable

bb.p:                                             ; preds = %.body.i, %bb.f
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.u, %bb.f ]
  resume { ptr, i32 } %.pn.i

_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtB2D_7flatten7FlatMapINtNtNtB2H_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEIB2z_INtNtNtB2H_3ops5range5RangejENCNCNvMs1_NtNtB17_8snapshot8log_dataNtB5R_14LogDataHandler4iter00ENCB5L_0ENCNCNvNtNtB19_16delta_datafusion10find_files17scan_memory_table00EE9from_iterB19_.exit: ; preds = %bb.e, %.loopexit9.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !21843
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEINtB2_12SpecFromIterBU_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map10IntoValuesNtNtB6_6string6StringBU_ENCNCNvMs_NtNtB12_10operations16filesystem_checkNtB4F_22FileSystemCheckBuilder16create_fsck_plan0s0_0EE9from_iterB12_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [296 x i8], align 8               ; 4 uses
  %i.b = alloca [296 x i8], align 8               ; 7 uses
  %i.c = alloca [272 x i8], align 8               ; 7 uses
  %i.d = alloca [272 x i8], align 8               ; 5 uses
  %i.e = alloca [272 x i8], align 8               ; 6 uses
  %.sroa.7.i.i.i = alloca [264 x i8], align 8     ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [296 x i8], align 8               ; 4 uses
  %i.h = alloca [296 x i8], align 8               ; 7 uses
  %i.i = alloca [272 x i8], align 8               ; 7 uses
  %i.j = alloca [272 x i8], align 8               ; 5 uses
  %i.k = alloca [64 x i8], align 8                ; 7 uses
  %i.l = alloca [272 x i8], align 8               ; 6 uses
  %.sroa.7.i = alloca [264 x i8], align 8         ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21924)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21927)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !21929
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !21930
  invoke void @_RNvXsE_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextB1D_(ptr noalias noundef nonnull sret([296 x i8]) align 8 captures(none) dereferenceable(296) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(64) %1)
          to label %.noexc.i unwind label %bb.e, !noalias !21924

.noexc.i:                                         ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.o = load i64, ptr %i.n, align 8, !range !242, !noalias !21930, !noundef !8 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.o, 2
  br i1 %.not.i.i.i, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map10IntoValuesNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNCNvMs_NtNtB2F_10operations16filesystem_checkNtB3J_22FileSystemCheckBuilder16create_fsck_plan0s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB2F_.exit.thread.i, label %bb.b

bb.b:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !21930
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %i.g, ptr noundef nonnull align 8 dereferenceable(296) %i.h, i64 296, i1 false), !noalias !21930
  %.sroa.6.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !21937
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %.sroa.4.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(264) %.sroa.6.0..sroa_idx2.i.i, i64 264, i1 false), !noalias !21937
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.noexc5.i unwind label %bb.e, !noalias !21924

.noexc5.i:                                        ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !21930
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !21930
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !21937
  store i64 %i.o, ptr %i.i, align 8, !noalias !21937
  invoke fastcc void @_RNvXsC_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB5_3AddNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(272) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.i)
          to label %_RNCNCNvMs_NtNtCs14kWLkQVSKO_14deltalake_core10operations16filesystem_checkNtB8_22FileSystemCheckBuilder16create_fsck_plan0s0_0Bc_.exit.i.i unwind label %bb.c, !noalias !21938

bb.c:                                             ; preds = %.noexc5.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEBO_(ptr noalias noundef nonnull align 8 dereferenceable(272) %i.i) #29
          to label %bb.v unwind label %bb.d, !noalias !21939

bb.d:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26, !noalias !21939
  unreachable

_RNCNCNvMs_NtNtCs14kWLkQVSKO_14deltalake_core10operations16filesystem_checkNtB8_22FileSystemCheckBuilder16create_fsck_plan0s0_0Bc_.exit.i.i: ; preds = %.noexc5.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEBO_(ptr noalias noundef nonnull align 8 dereferenceable(272) %i.i)
          to label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map10IntoValuesNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNCNvMs_NtNtB2F_10operations16filesystem_checkNtB3J_22FileSystemCheckBuilder16create_fsck_plan0s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB2F_.exit.i unwind label %bb.e, !noalias !21924

_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map10IntoValuesNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNCNvMs_NtNtB2F_10operations16filesystem_checkNtB3J_22FileSystemCheckBuilder16create_fsck_plan0s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB2F_.exit.thread.i: ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !21930
  br label %bb.f

bb.e:                                             ; preds = %_RNCNCNvMs_NtNtCs14kWLkQVSKO_14deltalake_core10operations16filesystem_checkNtB8_22FileSystemCheckBuilder16create_fsck_plan0s0_0Bc_.exit.i.i, %bb.b, %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map10IntoValuesNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNCNvMs_NtNtB2F_10operations16filesystem_checkNtB3J_22FileSystemCheckBuilder16create_fsck_plan0s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB2F_.exit.i: ; preds = %_RNCNCNvMs_NtNtCs14kWLkQVSKO_14deltalake_core10operations16filesystem_checkNtB8_22FileSystemCheckBuilder16create_fsck_plan0s0_0Bc_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !21937
  %.sroa.0.0.copyload15.i = load i64, ptr %i.j, align 8, !noalias !21942 ; 2 uses
  %.sroa.7.0..sroa_idx16.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(264) %.sroa.7.0..sroa_idx16.i, i64 264, i1 false), !noalias !21942
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !21937
  %.not.i = icmp eq i64 %.sroa.0.0.copyload15.i, 2
  br i1 %.not.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map10IntoValuesNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNCNvMs_NtNtB2F_10operations16filesystem_checkNtB3J_22FileSystemCheckBuilder16create_fsck_plan0s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB2F_.exit.i, %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map10IntoValuesNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNCNvMs_NtNtB2F_10operations16filesystem_checkNtB3J_22FileSystemCheckBuilder16create_fsck_plan0s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB2F_.exit.thread.i
  store i64 0, ptr %0, align 8, !alias.scope !21924, !noalias !21927
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.s, align 8, !alias.scope !21924, !noalias !21927
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.t, align 8, !alias.scope !21924, !noalias !21927
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !21929
  call void @_RNvXsC_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB1D_(ptr noalias noundef nonnull align 8 dereferenceable(64) %1), !noalias !21924
  br label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map10IntoValuesNtNtB6_6string6StringB11_ENCNCNvMs_NtNtB19_10operations16filesystem_checkNtB4U_22FileSystemCheckBuilder16create_fsck_plan0s0_0EE9from_iterB19_.exit

bb.g:                                             ; preds = %bb.i, %bb.h
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEBO_(ptr noalias noundef align 8 dereferenceable(272) %i.l) #29
          to label %bb.v unwind label %bb.u, !noalias !21924

bb.h:                                             ; preds = %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map10IntoValuesNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNCNvMs_NtNtB2F_10operations16filesystem_checkNtB3J_22FileSystemCheckBuilder16create_fsck_plan0s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB2F_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !21929
  store i64 %.sroa.0.0.copyload15.i, ptr %i.l, align 8, !noalias !21929
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %.sroa.7.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(264) %.sroa.7.i, i64 264, i1 false), !noalias !21929
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val.i = load i64, ptr %i.v, align 8, !alias.scope !21927, !noalias !21924, !noundef !8
  %i.w = call i64 @llvm.uadd.sat.i64(i64 %.val.i, i64 1)
  %.sroa.0.0.i.i = call noundef i64 @llvm.umax.i64(i64 %i.w, i64 4) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !21929
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, i64 noundef %.sroa.0.0.i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 272)
          to label %.noexc8.i unwind label %bb.g, !noalias !21924

.noexc8.i:                                        ; preds = %bb.h
  %i.x = load i64, ptr %i.f, align 8, !range !79, !noalias !21929, !noundef !8
  %i.y = trunc nuw i64 %i.x to i1
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !range !107, !noalias !21929, !noundef !8 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  br i1 %i.y, label %bb.i, label %bb.j, !prof !84

bb.i:                                             ; preds = %.noexc8.i
  %i.ac = load i64, ptr %i.ab, align 8, !noalias !21929
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.aa, i64 %i.ac) #27
          to label %.noexc9.i unwind label %bb.g, !noalias !21924

.noexc9.i:                                        ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %.noexc8.i
  %i.ad = load ptr, ptr %i.ab, align 8, !noalias !21929, !nonnull !8, !noundef !8 ; 2 uses
  %i.ae = icmp ule i64 %.sroa.0.0.i.i, %i.aa
  call void @llvm.assume(i1 %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !21929
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %i.ad, ptr noundef nonnull align 8 dereferenceable(272) %i.l, i64 272, i1 false), !noalias !21924
  store i64 %i.aa, ptr %i.m, align 8, !noalias !21929
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  store ptr %i.ad, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !21929
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !21929
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !21929
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !21929
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.k, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false), !noalias !21924
  call void @llvm.experimental.noalias.scope.decl(metadata !21943)
  call void @llvm.experimental.noalias.scope.decl(metadata !21946)
  call void @llvm.experimental.noalias.scope.decl(metadata !21948)
  call void @llvm.experimental.noalias.scope.decl(metadata !21951)
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.6.0..sroa_idx2.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7.0..sroa_idx9.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  br label %bb.k

end_hunk_0
