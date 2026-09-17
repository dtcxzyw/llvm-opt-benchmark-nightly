Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_datasets-6e6d6245fef4de79.candle_datasets.60f338b118604b5e-cgu.3?download=true
inline.NumInlined: 207
inline.NumDeleted: 141
begin_hunk_0_@_RINvXs0_NtNtCsVG4f6i5f9f_4rand3seq5sliceSRNtCs94aVKmQQwYh_7memmap24MmapNtB6_11SliceRandom15partial_shuffleNtNtNtBa_4rngs6thread9ThreadRngECs8k3UfHgJ3Xe_15candle_datasets:bb.a
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = tail call i64 @llvm.usub.sat.i64(i64 %2, i64 %4) ; 8 uses
  %i.c = icmp samesign ult i64 %2, 4294967295
  br i1 %i.c, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = icmp samesign ult i64 %i.b, %2
  br i1 %i.d, label %.lr.ph, label %.loopexit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = trunc nuw i64 %i.b to i32                ; 2 uses
  %.not = icmp ule i64 %2, %4
  %. = zext i1 %.not to i8                        ; 2 uses
  store ptr %3, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i32 %i.e, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 3 uses
  store i32 0, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i8 %., ptr %i.h, align 8
  %i.i = icmp samesign ult i64 %i.b, %2
  br i1 %i.i, label %.lr.ph20, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %bb.c
  %.sroa.08.017 = phi i64 [ %i.j, %bb.c ], [ %i.b, %.preheader ] ; 2 uses
  %i.j = add nuw nsw i64 %.sroa.08.017, 1         ; 3 uses
  %i.k = tail call noundef i64 @_RINvYNtNtNtCsVG4f6i5f9f_4rand4rngs6thread9ThreadRngNtNtB9_3rng3Rng12random_rangejINtNtNtCsf3Ta7LF998c_4core3ops5range7RangeTojEECs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) ; 3 uses
  %i.l = icmp ult i64 %i.k, %2
  br i1 %i.l, label %bb.c, label %bb.d

.loopexit:                                        ; preds = %bb.c, %.preheader, %._crit_edge
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.b
  %i.n = sub nuw nsw i64 %2, %i.b
  store ptr %i.m, ptr %0, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.n, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.b, ptr %i.q, align 8
  ret void

bb.c:                                             ; preds = %.lr.ph
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.08.017 ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.k ; 2 uses
  %.sroa.010.0.copyload = load i64, ptr %i.r, align 8
  %i.t = load i64, ptr %i.s, align 8
  store i64 %i.t, ptr %i.r, align 8
  store i64 %.sroa.010.0.copyload, ptr %i.s, align 8
  %exitcond.not = icmp eq i64 %i.j, %2
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.k, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #22
  unreachable

._crit_edge:                                      ; preds = %bb.k, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit

.lr.ph20:                                         ; preds = %bb.b, %bb.k
  %.sroa.04.019 = phi i64 [ %i.w, %bb.k ], [ %i.b, %bb.b ] ; 2 uses
  %i.u = phi i32 [ %i.x, %bb.k ], [ %i.e, %bb.b ] ; 2 uses
  %i.v = phi i32 [ %i.aq, %bb.k ], [ 0, %bb.b ]
  %.1518 = phi i8 [ %.sroa.01.0.i, %bb.k ], [ %., %bb.b ] ; 2 uses
  %i.w = add nuw nsw i64 %.sroa.04.019, 1         ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124)
  %i.x = add i32 %i.u, 1                          ; 9 uses
  %i.y = icmp eq i8 %.1518, 0
  br i1 %i.y, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph20
  %i.z = add i8 %.1518, -1
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph20
  %i.aa = icmp eq i32 %i.x, 2
  br i1 %i.aa, label %_RNCNvMNtNtCsVG4f6i5f9f_4rand3seq18increasing_uniformINtB4_17IncreasingUniformQNtNtNtB8_4rngs6thread9ThreadRngE10next_index0Cs8k3UfHgJ3Xe_15candle_datasets.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.f
  %.sroa.0.06.i.i = add i32 %i.u, 2               ; 3 uses
  %i.ab = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.x, i32 %.sroa.0.06.i.i) ; 2 uses
  %i.ac = extractvalue { i32, i1 } %i.ab, 1
  br i1 %i.ac, label %._crit_edge.i.i, label %.lr.ph.i.i, !prof !125

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %.lr.ph.i.i
  %i.ad = phi { i32, i1 } [ %i.af, %.lr.ph.i.i ], [ %i.ab, %.preheader.i.i ]
  %.sroa.0.07.i.i = phi i32 [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.sroa.0.06.i.i, %.preheader.i.i ]
  %i.ae = extractvalue { i32, i1 } %i.ad, 0       ; 2 uses
  %.sroa.0.0.i.i = add i32 %.sroa.0.07.i.i, 1     ; 3 uses
  %i.af = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.ae, i32 %.sroa.0.0.i.i) ; 2 uses
  %i.ag = extractvalue { i32, i1 } %i.af, 1
  br i1 %i.ag, label %._crit_edge.i.i, label %.lr.ph.i.i, !prof !126

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %.preheader.i.i
  %.sroa.03.1.lcssa.i.i = phi i32 [ %i.x, %.preheader.i.i ], [ %i.ae, %.lr.ph.i.i ]
  %.sroa.0.0.lcssa.i.i = phi i32 [ %.sroa.0.06.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %.lr.ph.i.i ]
  %i.ah = sub i32 %.sroa.0.0.lcssa.i.i, %i.x
  %i.ai = trunc i32 %i.ah to i8
  %i.aj = add i8 %i.ai, -1
  br label %_RNCNvMNtNtCsVG4f6i5f9f_4rand3seq18increasing_uniformINtB4_17IncreasingUniformQNtNtNtB8_4rngs6thread9ThreadRngE10next_index0Cs8k3UfHgJ3Xe_15candle_datasets.exit.i

_RNCNvMNtNtCsVG4f6i5f9f_4rand3seq18increasing_uniformINtB4_17IncreasingUniformQNtNtNtB8_4rngs6thread9ThreadRngE10next_index0Cs8k3UfHgJ3Xe_15candle_datasets.exit.i: ; preds = %._crit_edge.i.i, %bb.f
  %.sroa.05.0.i.i = phi i8 [ %i.aj, %._crit_edge.i.i ], [ 10, %bb.f ]
  %.sroa.03.0.i.i = phi i32 [ %.sroa.03.1.lcssa.i.i, %._crit_edge.i.i ], [ 479001600, %bb.f ]
  %i.ak = call noundef i32 @_RINvYQNtNtNtCsVG4f6i5f9f_4rand4rngs6thread9ThreadRngNtNtBa_3rng3Rng12random_rangemINtNtNtCsf3Ta7LF998c_4core3ops5range7RangeTomEECs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i32 noundef %.sroa.03.0.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7), !noalias !127 ; 2 uses
  store i32 %i.ak, ptr %i.g, align 4, !alias.scope !124, !noalias !127
  br label %bb.g

bb.g:                                             ; preds = %_RNCNvMNtNtCsVG4f6i5f9f_4rand3seq18increasing_uniformINtB4_17IncreasingUniformQNtNtNtB8_4rngs6thread9ThreadRngE10next_index0Cs8k3UfHgJ3Xe_15candle_datasets.exit.i, %bb.e
  %i.al = phi i32 [ %i.ak, %_RNCNvMNtNtCsVG4f6i5f9f_4rand3seq18increasing_uniformINtB4_17IncreasingUniformQNtNtNtB8_4rngs6thread9ThreadRngE10next_index0Cs8k3UfHgJ3Xe_15candle_datasets.exit.i ], [ %i.v, %bb.e ] ; 4 uses
  %.sroa.01.0.i = phi i8 [ %.sroa.05.0.i.i, %_RNCNvMNtNtCsVG4f6i5f9f_4rand3seq18increasing_uniformINtB4_17IncreasingUniformQNtNtNtB8_4rngs6thread9ThreadRngE10next_index0Cs8k3UfHgJ3Xe_15candle_datasets.exit.i ], [ %i.z, %bb.e ] ; 3 uses
  %i.am = icmp eq i8 %.sroa.01.0.i, 0
  br i1 %i.am, label %_RNvMNtNtCsVG4f6i5f9f_4rand3seq18increasing_uniformINtB2_17IncreasingUniformQNtNtNtB6_4rngs6thread9ThreadRngE10next_indexCs8k3UfHgJ3Xe_15candle_datasets.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = icmp eq i32 %i.x, 0
  br i1 %i.an, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = urem i32 %i.al, %i.x
  %i.ap = udiv i32 %i.al, %i.x                    ; 2 uses
  store i32 %i.ap, ptr %i.g, align 4, !alias.scope !124
  br label %_RNvMNtNtCsVG4f6i5f9f_4rand3seq18increasing_uniformINtB2_17IncreasingUniformQNtNtNtB6_4rngs6thread9ThreadRngE10next_indexCs8k3UfHgJ3Xe_15candle_datasets.exit

bb.j:                                             ; preds = %bb.h
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #22, !noalias !124
  unreachable

_RNvMNtNtCsVG4f6i5f9f_4rand3seq18increasing_uniformINtB2_17IncreasingUniformQNtNtNtB6_4rngs6thread9ThreadRngE10next_indexCs8k3UfHgJ3Xe_15candle_datasets.exit: ; preds = %bb.g, %bb.i
  %i.aq = phi i32 [ %i.ap, %bb.i ], [ %i.al, %bb.g ]
  %.sroa.0.0.in.i = phi i32 [ %i.ao, %bb.i ], [ %i.al, %bb.g ]
  %.sroa.0.0.i = zext i32 %.sroa.0.0.in.i to i64  ; 3 uses
  store i8 %.sroa.01.0.i, ptr %i.h, align 8, !alias.scope !124
  store i32 %i.x, ptr %i.f, align 8, !alias.scope !124
  %i.ar = icmp samesign ugt i64 %2, %.sroa.0.0.i
  br i1 %i.ar, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_RNvMNtNtCsVG4f6i5f9f_4rand3seq18increasing_uniformINtB2_17IncreasingUniformQNtNtNtB6_4rngs6thread9ThreadRngE10next_indexCs8k3UfHgJ3Xe_15candle_datasets.exit
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.04.019 ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.0.0.i ; 2 uses
  %.sroa.06.0.copyload = load i64, ptr %i.as, align 8
  %i.au = load i64, ptr %i.at, align 8
  store i64 %i.au, ptr %i.as, align 8
  store i64 %.sroa.06.0.copyload, ptr %i.at, align 8
  %exitcond24.not = icmp eq i64 %i.w, %2
  br i1 %exitcond24.not, label %._crit_edge, label %.lr.ph20

bb.l:                                             ; preds = %_RNvMNtNtCsVG4f6i5f9f_4rand3seq18increasing_uniformINtB2_17IncreasingUniformQNtNtNtB6_4rngs6thread9ThreadRngE10next_indexCs8k3UfHgJ3Xe_15candle_datasets.exit
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.0.i, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #22
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtB8_6filter6FilterINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtCsat2oUP5WrwS_6hf_hub3api8SiblingsENCNvNtCs8k3UfHgJ3Xe_15candle_datasets3hub8from_hub0ENCB2M_s_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB1o_13in_place_drop11InPlaceDropINtNtNtCsd5Y3rNriENo_7parquet4file17serialized_reader20SerializedFileReaderNtNtCs5Xr050g3D4S_3std2fs4FileEENCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultzNtB2O_5ErrorEEB3K_8try_foldB4r_NCINvNtB1o_16in_place_collect24write_in_place_with_dropB52_E0IB7i_B4r_zEE0INtNtNtBc_3ops12control_flow11ControlFlowB98_B4r_EEB2Q_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(40) %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 %4, ptr noundef nonnull align 8 %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !132
  store ptr %i.b, ptr %i.a, align 8, !noalias !132
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %4, ptr %i.c, align 8, !noalias !133
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %5, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !133
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.b, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !133
  call void @_RINvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB6_8IntoIterNtNtCsat2oUP5WrwS_6hf_hub3api8SiblingsENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropINtNtNtCsd5Y3rNriENo_7parquet4file17serialized_reader20SerializedFileReaderNtNtCs5Xr050g3D4S_3std2fs4FileEENCINvNtNtB1G_8adapters6filter15filter_try_foldBX_B2E_INtNtNtB1I_3ops12control_flow11ControlFlowINtNtB1I_6result6ResultB2E_zEB2E_ENCNvNtCs8k3UfHgJ3Xe_15candle_datasets3hub8from_hub0NCINvNtB54_3map12map_try_foldBX_IB6v_B3e_NtB76_5ErrorEB2E_B5O_NCB74_s_0NCINvXB54_INtB54_12GenericShuntINtB7W_3MapINtB52_6FilterBI_B72_EB8R_EIB6v_zB8w_EEB1A_8try_foldB2E_NCINvNtB8_16in_place_collect24write_in_place_with_dropB3e_E0B6u_E0E0E0B5O_EB78_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2, ptr noundef %3, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a), !noalias !134
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !132
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoItertENCNvXs0_NtNtCs8k3UfHgJ3Xe_15candle_datasets3nlp11tinystoriesNtB1V_17DatasetRandomIterNtNtNtBa_6traits8iterator8Iterator4next0EB3a_4folduNCINvNvB3a_8for_each4callmNCINvMsk_B12_INtB12_3VecmE14extend_trustedBN_E0E0EB1Z_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @_RINvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB6_8IntoItertENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB15_8adapters3map8map_foldtmuNCNvXs0_NtNtCs8k3UfHgJ3Xe_15candle_datasets3nlp11tinystoriesNtB2K_17DatasetRandomIterBZ_4next0NCINvNvBZ_8for_each4callmNCINvMsk_B8_INtB8_3VecmE14extend_trustedINtB25_3MapBI_B2C_EE0E0E0EB2O_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvYNtNtNtCsVG4f6i5f9f_4rand4rngs6thread9ThreadRngNtNtB9_3rng3Rng12random_rangejINtNtNtCsf3Ta7LF998c_4core3ops5range7RangeTojEECs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %bb.ac, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %.val1 = load ptr, ptr %0, align 8              ; 20 uses
  %i.b = icmp ugt i64 %1, 4294967295
  br i1 %i.b, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = trunc nuw i64 %1 to i32
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  %i.d = getelementptr inbounds nuw i8, ptr %.val1, i64 16 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.val1, i64 336 ; 3 uses
  %i.f = load i64, ptr %i.e, align 16, !noalias !197, !noundef !5 ; 2 uses
  %i.g = icmp ugt i64 %i.f, 63
  br i1 %i.g, label %bb.d, label %_RINvYNtNtNtCsVG4f6i5f9f_4rand4rngs6thread9ThreadRngNtNtB9_3rng3Rng6randommECs8k3UfHgJ3Xe_15candle_datasets.exit12.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %.val1, i64 272 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 328 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !198, !noalias !199, !noundef !5 ; 2 uses
  %i.k = icmp slt i64 %i.j, 1
  br i1 %i.k, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = add nsw i64 %i.j, -256
  store i64 %i.l, ptr %i.i, align 8, !alias.scope !198, !noalias !199
  tail call void @_RNvNtCscHeDkCj8TjV_11rand_chacha4guts11refill_wide(ptr noalias nofree noundef nonnull align 16 dereferenceable(64) %i.h, i32 noundef 6, ptr noalias nofree noundef nonnull align 16 dereferenceable(336) %i.d), !noalias !200
  br label %_RINvYNtNtNtCsVG4f6i5f9f_4rand4rngs6thread9ThreadRngNtNtB9_3rng3Rng6randommECs8k3UfHgJ3Xe_15candle_datasets.exit12.i.i.i.i

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvMs3_NtNtCsVG4f6i5f9f_4rand4rngs9reseedingINtB5_13ReseedingCoreNtNtCscHeDkCj8TjV_11rand_chacha6chacha12ChaCha12CoreNtNtCsaVVYlBCAE9B_9rand_core2os5OsRngE19reseed_and_generateCsat2oUP5WrwS_6hf_hub(ptr noalias nofree noundef nonnull align 16 dereferenceable(64) %i.h, ptr noalias nofree noundef nonnull align 16 dereferenceable(336) %i.d) #19, !noalias !200
  br label %_RINvYNtNtNtCsVG4f6i5f9f_4rand4rngs6thread9ThreadRngNtNtB9_3rng3Rng6randommECs8k3UfHgJ3Xe_15candle_datasets.exit12.i.i.i.i

_RINvYNtNtNtCsVG4f6i5f9f_4rand4rngs6thread9ThreadRngNtNtB9_3rng3Rng6randommECs8k3UfHgJ3Xe_15candle_datasets.exit12.i.i.i.i: ; preds = %bb.f, %bb.e, %bb.c
  %i.m = phi i64 [ %i.f, %bb.c ], [ 0, %bb.e ], [ 0, %bb.f ] ; 3 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !alias.scope !201, !noalias !200, !noundef !5
  %i.p = add nuw nsw i64 %i.m, 1                  ; 2 uses
  store i64 %i.p, ptr %i.e, align 16, !alias.scope !201, !noalias !200
  %i.q = zext i32 %i.o to i64
  %i.r = mul nuw i64 %1, %i.q                     ; 2 uses
  %i.s = lshr i64 %i.r, 32                        ; 2 uses
  %i.t = trunc i64 %i.r to i32                    ; 2 uses
  %i.u = sub i32 0, %i.c
  %i.v = icmp ult i32 %i.u, %i.t
  br i1 %i.v, label %bb.g, label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultjNtNtNtCsVG4f6i5f9f_4rand5distr7uniform5ErrorE6unwrapCs8k3UfHgJ3Xe_15candle_datasets.exit

bb.g:                                             ; preds = %_RINvYNtNtNtCsVG4f6i5f9f_4rand4rngs6thread9ThreadRngNtNtB9_3rng3Rng6randommECs8k3UfHgJ3Xe_15candle_datasets.exit12.i.i.i.i
  %i.w = icmp eq i64 %i.m, 63
  br i1 %i.w, label %bb.h, label %_RINvYNtNtNtCsVG4f6i5f9f_4rand4rngs6thread9ThreadRngNtNtB9_3rng3Rng6randommECs8k3UfHgJ3Xe_15candle_datasets.exit13.i.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %.val1, i64 272 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.val1, i64 328 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !202, !noalias !203, !noundef !5 ; 2 uses
  %i.aa = icmp slt i64 %i.z, 1
  br i1 %i.aa, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = add nsw i64 %i.z, -256
  store i64 %i.ab, ptr %i.y, align 8, !alias.scope !202, !noalias !203
  tail call void @_RNvNtCscHeDkCj8TjV_11rand_chacha4guts11refill_wide(ptr noalias nofree noundef nonnull align 16 dereferenceable(64) %i.x, i32 noundef 6, ptr noalias nofree noundef nonnull align 16 dereferenceable(336) %i.d), !noalias !204
  br label %_RINvYNtNtNtCsVG4f6i5f9f_4rand4rngs6thread9ThreadRngNtNtB9_3rng3Rng6randommECs8k3UfHgJ3Xe_15candle_datasets.exit13.i.i.i.i

bb.j:                                             ; preds = %bb.h
  tail call void @_RNvMs3_NtNtCsVG4f6i5f9f_4rand4rngs9reseedingINtB5_13ReseedingCoreNtNtCscHeDkCj8TjV_11rand_chacha6chacha12ChaCha12CoreNtNtCsaVVYlBCAE9B_9rand_core2os5OsRngE19reseed_and_generateCsat2oUP5WrwS_6hf_hub(ptr noalias nofree noundef nonnull align 16 dereferenceable(64) %i.x, ptr noalias nofree noundef nonnull align 16 dereferenceable(336) %i.d) #19, !noalias !204
  br label %_RINvYNtNtNtCsVG4f6i5f9f_4rand4rngs6thread9ThreadRngNtNtB9_3rng3Rng6randommECs8k3UfHgJ3Xe_15candle_datasets.exit13.i.i.i.i

_RINvYNtNtNtCsVG4f6i5f9f_4rand4rngs6thread9ThreadRngNtNtB9_3rng3Rng6randommECs8k3UfHgJ3Xe_15candle_datasets.exit13.i.i.i.i: ; preds = %bb.j, %bb.i, %bb.g
  %i.ac = phi i64 [ %i.p, %bb.g ], [ 0, %bb.i ], [ 0, %bb.j ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !alias.scope !205, !noalias !204, !noundef !5
  %i.af = add nuw nsw i64 %i.ac, 1
  store i64 %i.af, ptr %i.e, align 16, !alias.scope !205, !noalias !204
  %3 = zext i32 %i.ae to i64
  %4 = mul nuw i64 %1, %3
  %5 = lshr i64 %4, 32
  %6 = trunc nuw i64 %5 to i32
  %i.ag = xor i32 %i.t, -1
  %.not9.i.i.i.i = icmp ult i32 %i.ag, %6
  %i.ah = zext i1 %.not9.i.i.i.i to i64
  %i.ai = add nuw nsw i64 %i.s, %i.ah
  br label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultjNtNtNtCsVG4f6i5f9f_4rand5distr7uniform5ErrorE6unwrapCs8k3UfHgJ3Xe_15candle_datasets.exit

bb.k:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.val1, i64 16 ; 14 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.val1, i64 336 ; 7 uses
  %i.al = load i64, ptr %i.ak, align 16, !noalias !206, !noundef !5 ; 4 uses
  %i.am = icmp ult i64 %i.al, 63
  br i1 %i.am, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not.i.i.i9.i.i.i.i = icmp eq i64 %i.al, 63
  br i1 %.not.i.i.i9.i.i.i.i, label %bb.n, label %bb.q

bb.m:                                             ; preds = %bb.k
  %i.an = add nuw nsw i64 %i.al, 2                ; 2 uses
  store i64 %i.an, ptr %i.ak, align 16, !alias.scope !207, !noalias !208
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.al
  %i.ap = load i64, ptr %i.ao, align 4, !alias.scope !209, !noalias !208
  br label %_RINvYNtNtNtCsVG4f6i5f9f_4rand4rngs6thread9ThreadRngNtNtB9_3rng3Rng6randomyECs8k3UfHgJ3Xe_15candle_datasets.exit13.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.aq = getelementptr inbounds nuw i8, ptr %.val1, i64 268
  %i.ar = load i32, ptr %i.aq, align 4, !alias.scope !207, !noalias !208, !noundef !5
  %i.as = getelementptr inbounds nuw i8, ptr %.val1, i64 272 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.val1, i64 328 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !alias.scope !210, !noalias !211, !noundef !5 ; 2 uses
  %i.av = icmp slt i64 %i.au, 1
  br i1 %i.av, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aw = add nsw i64 %i.au, -256
  store i64 %i.aw, ptr %i.at, align 8, !alias.scope !210, !noalias !211
  tail call void @_RNvNtCscHeDkCj8TjV_11rand_chacha4guts11refill_wide(ptr noalias nofree noundef nonnull align 16 dereferenceable(64) %i.as, i32 noundef 6, ptr noalias nofree noundef nonnull align 16 dereferenceable(336) %i.aj), !noalias !208
  br label %_RNvMs_NtCsaVVYlBCAE9B_9rand_core5blockINtB4_8BlockRngINtNtNtCsVG4f6i5f9f_4rand4rngs9reseeding13ReseedingCoreNtNtCscHeDkCj8TjV_11rand_chacha6chacha12ChaCha12CoreNtNtB6_2os5OsRngEE16generate_and_setCs8k3UfHgJ3Xe_15candle_datasets.exit.i.i.i12.i.i.i.i

bb.p:                                             ; preds = %bb.n
  tail call void @_RNvMs3_NtNtCsVG4f6i5f9f_4rand4rngs9reseedingINtB5_13ReseedingCoreNtNtCscHeDkCj8TjV_11rand_chacha6chacha12ChaCha12CoreNtNtCsaVVYlBCAE9B_9rand_core2os5OsRngE19reseed_and_generateCsat2oUP5WrwS_6hf_hub(ptr noalias nofree noundef nonnull align 16 dereferenceable(64) %i.as, ptr noalias nofree noundef nonnull align 16 dereferenceable(336) %i.aj) #19, !noalias !208
  br label %_RNvMs_NtCsaVVYlBCAE9B_9rand_core5blockINtB4_8BlockRngINtNtNtCsVG4f6i5f9f_4rand4rngs9reseeding13ReseedingCoreNtNtCscHeDkCj8TjV_11rand_chacha6chacha12ChaCha12CoreNtNtB6_2os5OsRngEE16generate_and_setCs8k3UfHgJ3Xe_15candle_datasets.exit.i.i.i12.i.i.i.i

_RNvMs_NtCsaVVYlBCAE9B_9rand_core5blockINtB4_8BlockRngINtNtNtCsVG4f6i5f9f_4rand4rngs9reseeding13ReseedingCoreNtNtCscHeDkCj8TjV_11rand_chacha6chacha12ChaCha12CoreNtNtB6_2os5OsRngEE16generate_and_setCs8k3UfHgJ3Xe_15candle_datasets.exit.i.i.i12.i.i.i.i: ; preds = %bb.p, %bb.o
  store i64 1, ptr %i.ak, align 16, !alias.scope !212, !noalias !208
  %i.ax = zext i32 %i.ar to i64
  %i.ay = load i32, ptr %i.aj, align 16, !alias.scope !207, !noalias !208, !noundef !5
  %i.az = zext i32 %i.ay to i64
  %i.ba = shl nuw i64 %i.az, 32
  %i.bb = or disjoint i64 %i.ba, %i.ax
  br label %_RINvYNtNtNtCsVG4f6i5f9f_4rand4rngs6thread9ThreadRngNtNtB9_3rng3Rng6randomyECs8k3UfHgJ3Xe_15candle_datasets.exit13.i.i.i.i

bb.q:                                             ; preds = %bb.l
  %i.bc = getelementptr inbounds nuw i8, ptr %.val1, i64 272 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.val1, i64 328 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !alias.scope !213, !noalias !214, !noundef !5 ; 2 uses
  %i.bf = icmp slt i64 %i.be, 1
  br i1 %i.bf, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bg = add nsw i64 %i.be, -256
  store i64 %i.bg, ptr %i.bd, align 8, !alias.scope !213, !noalias !214
  tail call void @_RNvNtCscHeDkCj8TjV_11rand_chacha4guts11refill_wide(ptr noalias nofree noundef nonnull align 16 dereferenceable(64) %i.bc, i32 noundef 6, ptr noalias nofree noundef nonnull align 16 dereferenceable(336) %i.aj), !noalias !208
  br label %_RNvMs_NtCsaVVYlBCAE9B_9rand_core5blockINtB4_8BlockRngINtNtNtCsVG4f6i5f9f_4rand4rngs9reseeding13ReseedingCoreNtNtCscHeDkCj8TjV_11rand_chacha6chacha12ChaCha12CoreNtNtB6_2os5OsRngEE16generate_and_setCs8k3UfHgJ3Xe_15candle_datasets.exit8.i.i.i10.i.i.i.i

bb.s:                                             ; preds = %bb.q
  tail call void @_RNvMs3_NtNtCsVG4f6i5f9f_4rand4rngs9reseedingINtB5_13ReseedingCoreNtNtCscHeDkCj8TjV_11rand_chacha6chacha12ChaCha12CoreNtNtCsaVVYlBCAE9B_9rand_core2os5OsRngE19reseed_and_generateCsat2oUP5WrwS_6hf_hub(ptr noalias nofree noundef nonnull align 16 dereferenceable(64) %i.bc, ptr noalias nofree noundef nonnull align 16 dereferenceable(336) %i.aj) #19, !noalias !208
  br label %_RNvMs_NtCsaVVYlBCAE9B_9rand_core5blockINtB4_8BlockRngINtNtNtCsVG4f6i5f9f_4rand4rngs9reseeding13ReseedingCoreNtNtCscHeDkCj8TjV_11rand_chacha6chacha12ChaCha12CoreNtNtB6_2os5OsRngEE16generate_and_setCs8k3UfHgJ3Xe_15candle_datasets.exit8.i.i.i10.i.i.i.i

_RNvMs_NtCsaVVYlBCAE9B_9rand_core5blockINtB4_8BlockRngINtNtNtCsVG4f6i5f9f_4rand4rngs9reseeding13ReseedingCoreNtNtCscHeDkCj8TjV_11rand_chacha6chacha12ChaCha12CoreNtNtB6_2os5OsRngEE16generate_and_setCs8k3UfHgJ3Xe_15candle_datasets.exit8.i.i.i10.i.i.i.i: ; preds = %bb.s, %bb.r
  store i64 2, ptr %i.ak, align 16, !alias.scope !215, !noalias !208
  %i.bh = load i64, ptr %i.aj, align 16, !alias.scope !216, !noalias !208
  br label %_RINvYNtNtNtCsVG4f6i5f9f_4rand4rngs6thread9ThreadRngNtNtB9_3rng3Rng6randomyECs8k3UfHgJ3Xe_15candle_datasets.exit13.i.i.i.i

_RINvYNtNtNtCsVG4f6i5f9f_4rand4rngs6thread9ThreadRngNtNtB9_3rng3Rng6randomyECs8k3UfHgJ3Xe_15candle_datasets.exit13.i.i.i.i: ; preds = %_RNvMs_NtCsaVVYlBCAE9B_9rand_core5blockINtB4_8BlockRngINtNtNtCsVG4f6i5f9f_4rand4rngs9reseeding13ReseedingCoreNtNtCscHeDkCj8TjV_11rand_chacha6chacha12ChaCha12CoreNtNtB6_2os5OsRngEE16generate_and_setCs8k3UfHgJ3Xe_15candle_datasets.exit8.i.i.i10.i.i.i.i, %_RNvMs_NtCsaVVYlBCAE9B_9rand_core5blockINtB4_8BlockRngINtNtNtCsVG4f6i5f9f_4rand4rngs9reseeding13ReseedingCoreNtNtCscHeDkCj8TjV_11rand_chacha6chacha12ChaCha12CoreNtNtB6_2os5OsRngEE16generate_and_setCs8k3UfHgJ3Xe_15candle_datasets.exit.i.i.i12.i.i.i.i, %bb.m
  %i.bi = phi i64 [ %i.an, %bb.m ], [ 2, %_RNvMs_NtCsaVVYlBCAE9B_9rand_core5blockINtB4_8BlockRngINtNtNtCsVG4f6i5f9f_4rand4rngs9reseeding13ReseedingCoreNtNtCscHeDkCj8TjV_11rand_chacha6chacha12ChaCha12CoreNtNtB6_2os5OsRngEE16generate_and_setCs8k3UfHgJ3Xe_15candle_datasets.exit8.i.i.i10.i.i.i.i ], [ 1, %_RNvMs_NtCsaVVYlBCAE9B_9rand_core5blockINtB4_8BlockRngINtNtNtCsVG4f6i5f9f_4rand4rngs9reseeding13ReseedingCoreNtNtCscHeDkCj8TjV_11rand_chacha6chacha12ChaCha12CoreNtNtB6_2os5OsRngEE16generate_and_setCs8k3UfHgJ3Xe_15candle_datasets.exit.i.i.i12.i.i.i.i ] ; 4 uses
  %.sroa.0.0.i.i.i11.i.i.i.i = phi i64 [ %i.ap, %bb.m ], [ %i.bh, %_RNvMs_NtCsaVVYlBCAE9B_9rand_core5blockINtB4_8BlockRngINtNtNtCsVG4f6i5f9f_4rand4rngs9reseeding13ReseedingCoreNtNtCscHeDkCj8TjV_11rand_chacha6chacha12ChaCha12CoreNtNtB6_2os5OsRngEE16generate_and_setCs8k3UfHgJ3Xe_15candle_datasets.exit8.i.i.i10.i.i.i.i ], [ %i.bb, %_RNvMs_NtCsaVVYlBCAE9B_9rand_core5blockINtB4_8BlockRngINtNtNtCsVG4f6i5f9f_4rand4rngs9reseeding13ReseedingCoreNtNtCscHeDkCj8TjV_11rand_chacha6chacha12ChaCha12CoreNtNtB6_2os5OsRngEE16generate_and_setCs8k3UfHgJ3Xe_15candle_datasets.exit.i.i.i12.i.i.i.i ]
  %i.bj = zext i64 %.sroa.0.0.i.i.i11.i.i.i.i to i128
  %i.bk = zext i64 %1 to i128                     ; 2 uses
  %i.bl = mul nuw i128 %i.bj, %i.bk               ; 2 uses
  %i.bm = lshr i128 %i.bl, 64
  %i.bn = trunc nuw i128 %i.bm to i64             ; 2 uses
  %i.bo = trunc i128 %i.bl to i64                 ; 2 uses
  %i.bp = sub i64 0, %1
  %i.bq = icmp ult i64 %i.bp, %i.bo
  br i1 %i.bq, label %bb.t, label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultjNtNtNtCsVG4f6i5f9f_4rand5distr7uniform5ErrorE6unwrapCs8k3UfHgJ3Xe_15candle_datasets.exit

bb.t:                                             ; preds = %_RINvYNtNtNtCsVG4f6i5f9f_4rand4rngs6thread9ThreadRngNtNtB9_3rng3Rng6randomyECs8k3UfHgJ3Xe_15candle_datasets.exit13.i.i.i.i
  %i.br = icmp samesign ult i64 %i.bi, 63
  br i1 %i.br, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.not.i.i.i14.i.i.i.i = icmp eq i64 %i.bi, 63
  br i1 %.not.i.i.i14.i.i.i.i, label %bb.w, label %bb.z

bb.v:                                             ; preds = %bb.t
  %i.bs = add nuw nsw i64 %i.bi, 2
  store i64 %i.bs, ptr %i.ak, align 16, !alias.scope !217, !noalias !218
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.bi
  %i.bu = load i64, ptr %i.bt, align 4, !alias.scope !219, !noalias !218
  br label %_RINvYNtNtNtCsVG4f6i5f9f_4rand4rngs6thread9ThreadRngNtNtB9_3rng3Rng6randomyECs8k3UfHgJ3Xe_15candle_datasets.exit18.i.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.bv = getelementptr inbounds nuw i8, ptr %.val1, i64 268
  %i.bw = load i32, ptr %i.bv, align 4, !alias.scope !217, !noalias !218, !noundef !5
  %i.bx = getelementptr inbounds nuw i8, ptr %.val1, i64 272 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.val1, i64 328 ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !alias.scope !220, !noalias !221, !noundef !5 ; 2 uses
  %i.ca = icmp slt i64 %i.bz, 1
  br i1 %i.ca, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cb = add nsw i64 %i.bz, -256
  store i64 %i.cb, ptr %i.by, align 8, !alias.scope !220, !noalias !221
  tail call void @_RNvNtCscHeDkCj8TjV_11rand_chacha4guts11refill_wide(ptr noalias nofree noundef nonnull align 16 dereferenceable(64) %i.bx, i32 noundef 6, ptr noalias nofree noundef nonnull align 16 dereferenceable(336) %i.aj), !noalias !218
  br label %_RNvMs_NtCsaVVYlBCAE9B_9rand_core5blockINtB4_8BlockRngINtNtNtCsVG4f6i5f9f_4rand4rngs9reseeding13ReseedingCoreNtNtCscHeDkCj8TjV_11rand_chacha6chacha12ChaCha12CoreNtNtB6_2os5OsRngEE16generate_and_setCs8k3UfHgJ3Xe_15candle_datasets.exit.i.i.i17.i.i.i.i

bb.y:                                             ; preds = %bb.w
  tail call void @_RNvMs3_NtNtCsVG4f6i5f9f_4rand4rngs9reseedingINtB5_13ReseedingCoreNtNtCscHeDkCj8TjV_11rand_chacha6chacha12ChaCha12CoreNtNtCsaVVYlBCAE9B_9rand_core2os5OsRngE19reseed_and_generateCsat2oUP5WrwS_6hf_hub(ptr noalias nofree noundef nonnull align 16 dereferenceable(64) %i.bx, ptr noalias nofree noundef nonnull align 16 dereferenceable(336) %i.aj) #19, !noalias !218
  br label %_RNvMs_NtCsaVVYlBCAE9B_9rand_core5blockINtB4_8BlockRngINtNtNtCsVG4f6i5f9f_4rand4rngs9reseeding13ReseedingCoreNtNtCscHeDkCj8TjV_11rand_chacha6chacha12ChaCha12CoreNtNtB6_2os5OsRngEE16generate_and_setCs8k3UfHgJ3Xe_15candle_datasets.exit.i.i.i17.i.i.i.i

_RNvMs_NtCsaVVYlBCAE9B_9rand_core5blockINtB4_8BlockRngINtNtNtCsVG4f6i5f9f_4rand4rngs9reseeding13ReseedingCoreNtNtCscHeDkCj8TjV_11rand_chacha6chacha12ChaCha12CoreNtNtB6_2os5OsRngEE16generate_and_setCs8k3UfHgJ3Xe_15candle_datasets.exit.i.i.i17.i.i.i.i: ; preds = %bb.y, %bb.x
  store i64 1, ptr %i.ak, align 16, !alias.scope !222, !noalias !218
  %i.cc = zext i32 %i.bw to i64
  %i.cd = load i32, ptr %i.aj, align 16, !alias.scope !217, !noalias !218, !noundef !5
  %i.ce = zext i32 %i.cd to i64
  %i.cf = shl nuw i64 %i.ce, 32
  %i.cg = or disjoint i64 %i.cf, %i.cc
  br label %_RINvYNtNtNtCsVG4f6i5f9f_4rand4rngs6thread9ThreadRngNtNtB9_3rng3Rng6randomyECs8k3UfHgJ3Xe_15candle_datasets.exit18.i.i.i.i

bb.z:                                             ; preds = %bb.u
  %i.ch = getelementptr inbounds nuw i8, ptr %.val1, i64 272 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.val1, i64 328 ; 2 uses
  %i.cj = load i64, ptr %i.ci, align 8, !alias.scope !223, !noalias !224, !noundef !5 ; 2 uses
  %i.ck = icmp slt i64 %i.cj, 1
  br i1 %i.ck, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cl = add nsw i64 %i.cj, -256
  store i64 %i.cl, ptr %i.ci, align 8, !alias.scope !223, !noalias !224
  tail call void @_RNvNtCscHeDkCj8TjV_11rand_chacha4guts11refill_wide(ptr noalias nofree noundef nonnull align 16 dereferenceable(64) %i.ch, i32 noundef 6, ptr noalias nofree noundef nonnull align 16 dereferenceable(336) %i.aj), !noalias !218
  br label %_RNvMs_NtCsaVVYlBCAE9B_9rand_core5blockINtB4_8BlockRngINtNtNtCsVG4f6i5f9f_4rand4rngs9reseeding13ReseedingCoreNtNtCscHeDkCj8TjV_11rand_chacha6chacha12ChaCha12CoreNtNtB6_2os5OsRngEE16generate_and_setCs8k3UfHgJ3Xe_15candle_datasets.exit8.i.i.i15.i.i.i.i

bb.ab:                                            ; preds = %bb.z
  tail call void @_RNvMs3_NtNtCsVG4f6i5f9f_4rand4rngs9reseedingINtB5_13ReseedingCoreNtNtCscHeDkCj8TjV_11rand_chacha6chacha12ChaCha12CoreNtNtCsaVVYlBCAE9B_9rand_core2os5OsRngE19reseed_and_generateCsat2oUP5WrwS_6hf_hub(ptr noalias nofree noundef nonnull align 16 dereferenceable(64) %i.ch, ptr noalias nofree noundef nonnull align 16 dereferenceable(336) %i.aj) #19, !noalias !218
  br label %_RNvMs_NtCsaVVYlBCAE9B_9rand_core5blockINtB4_8BlockRngINtNtNtCsVG4f6i5f9f_4rand4rngs9reseeding13ReseedingCoreNtNtCscHeDkCj8TjV_11rand_chacha6chacha12ChaCha12CoreNtNtB6_2os5OsRngEE16generate_and_setCs8k3UfHgJ3Xe_15candle_datasets.exit8.i.i.i15.i.i.i.i

_RNvMs_NtCsaVVYlBCAE9B_9rand_core5blockINtB4_8BlockRngINtNtNtCsVG4f6i5f9f_4rand4rngs9reseeding13ReseedingCoreNtNtCscHeDkCj8TjV_11rand_chacha6chacha12ChaCha12CoreNtNtB6_2os5OsRngEE16generate_and_setCs8k3UfHgJ3Xe_15candle_datasets.exit8.i.i.i15.i.i.i.i: ; preds = %bb.ab, %bb.aa
  store i64 2, ptr %i.ak, align 16, !alias.scope !225, !noalias !218
  %i.cm = load i64, ptr %i.aj, align 16, !alias.scope !226, !noalias !218
  br label %_RINvYNtNtNtCsVG4f6i5f9f_4rand4rngs6thread9ThreadRngNtNtB9_3rng3Rng6randomyECs8k3UfHgJ3Xe_15candle_datasets.exit18.i.i.i.i

_RINvYNtNtNtCsVG4f6i5f9f_4rand4rngs6thread9ThreadRngNtNtB9_3rng3Rng6randomyECs8k3UfHgJ3Xe_15candle_datasets.exit18.i.i.i.i: ; preds = %_RNvMs_NtCsaVVYlBCAE9B_9rand_core5blockINtB4_8BlockRngINtNtNtCsVG4f6i5f9f_4rand4rngs9reseeding13ReseedingCoreNtNtCscHeDkCj8TjV_11rand_chacha6chacha12ChaCha12CoreNtNtB6_2os5OsRngEE16generate_and_setCs8k3UfHgJ3Xe_15candle_datasets.exit8.i.i.i15.i.i.i.i, %_RNvMs_NtCsaVVYlBCAE9B_9rand_core5blockINtB4_8BlockRngINtNtNtCsVG4f6i5f9f_4rand4rngs9reseeding13ReseedingCoreNtNtCscHeDkCj8TjV_11rand_chacha6chacha12ChaCha12CoreNtNtB6_2os5OsRngEE16generate_and_setCs8k3UfHgJ3Xe_15candle_datasets.exit.i.i.i17.i.i.i.i, %bb.v
  %.sroa.0.0.i.i.i16.i.i.i.i = phi i64 [ %i.bu, %bb.v ], [ %i.cm, %_RNvMs_NtCsaVVYlBCAE9B_9rand_core5blockINtB4_8BlockRngINtNtNtCsVG4f6i5f9f_4rand4rngs9reseeding13ReseedingCoreNtNtCscHeDkCj8TjV_11rand_chacha6chacha12ChaCha12CoreNtNtB6_2os5OsRngEE16generate_and_setCs8k3UfHgJ3Xe_15candle_datasets.exit8.i.i.i15.i.i.i.i ], [ %i.cg, %_RNvMs_NtCsaVVYlBCAE9B_9rand_core5blockINtB4_8BlockRngINtNtNtCsVG4f6i5f9f_4rand4rngs9reseeding13ReseedingCoreNtNtCscHeDkCj8TjV_11rand_chacha6chacha12ChaCha12CoreNtNtB6_2os5OsRngEE16generate_and_setCs8k3UfHgJ3Xe_15candle_datasets.exit.i.i.i17.i.i.i.i ]
  %7 = zext i64 %.sroa.0.0.i.i.i16.i.i.i.i to i128
  %8 = mul nuw i128 %7, %i.bk
  %9 = lshr i128 %8, 64
  %10 = trunc nuw i128 %9 to i64
  %i.cn = xor i64 %i.bo, -1
  %.not6.i.i.i.i = icmp ult i64 %i.cn, %10
  %i.co = zext i1 %.not6.i.i.i.i to i64
  %i.cp = add nuw i64 %i.co, %i.bn
  br label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultjNtNtNtCsVG4f6i5f9f_4rand5distr7uniform5ErrorE6unwrapCs8k3UfHgJ3Xe_15candle_datasets.exit

_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultjNtNtNtCsVG4f6i5f9f_4rand5distr7uniform5ErrorE6unwrapCs8k3UfHgJ3Xe_15candle_datasets.exit: ; preds = %_RINvYNtNtNtCsVG4f6i5f9f_4rand4rngs6thread9ThreadRngNtNtB9_3rng3Rng6randommECs8k3UfHgJ3Xe_15candle_datasets.exit13.i.i.i.i, %_RINvYNtNtNtCsVG4f6i5f9f_4rand4rngs6thread9ThreadRngNtNtB9_3rng3Rng6randommECs8k3UfHgJ3Xe_15candle_datasets.exit12.i.i.i.i, %_RINvYNtNtNtCsVG4f6i5f9f_4rand4rngs6thread9ThreadRngNtNtB9_3rng3Rng6randomyECs8k3UfHgJ3Xe_15candle_datasets.exit18.i.i.i.i, %_RINvYNtNtNtCsVG4f6i5f9f_4rand4rngs6thread9ThreadRngNtNtB9_3rng3Rng6randomyECs8k3UfHgJ3Xe_15candle_datasets.exit13.i.i.i.i
  %.sroa.63.0 = phi i64 [ %i.s, %_RINvYNtNtNtCsVG4f6i5f9f_4rand4rngs6thread9ThreadRngNtNtB9_3rng3Rng6randommECs8k3UfHgJ3Xe_15candle_datasets.exit12.i.i.i.i ], [ %i.ai, %_RINvYNtNtNtCsVG4f6i5f9f_4rand4rngs6thread9ThreadRngNtNtB9_3rng3Rng6randommECs8k3UfHgJ3Xe_15candle_datasets.exit13.i.i.i.i ], [ %i.cp, %_RINvYNtNtNtCsVG4f6i5f9f_4rand4rngs6thread9ThreadRngNtNtB9_3rng3Rng6randomyECs8k3UfHgJ3Xe_15candle_datasets.exit18.i.i.i.i ], [ %i.bn, %_RINvYNtNtNtCsVG4f6i5f9f_4rand4rngs6thread9ThreadRngNtNtB9_3rng3Rng6randomyECs8k3UfHgJ3Xe_15candle_datasets.exit13.i.i.i.i ]
  ret i64 %.sroa.63.0

bb.ac:                                            ; preds = %bb.a
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @5, ptr noundef nonnull inttoptr (i64 51 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) #22
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i32 @_RINvYQNtNtNtCsVG4f6i5f9f_4rand4rngs6thread9ThreadRngNtNtBa_3rng3Rng12random_rangemINtNtNtCsf3Ta7LF998c_4core3ops5range7RangeTomEECs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.j, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %.val5 = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !245)
  %i.b = load ptr, ptr %.val5, align 8, !alias.scope !245, !nonnull !5, !noundef !5 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 336 ; 2 uses
  %i.e = load i64, ptr %i.d, align 16, !alias.scope !246, !noalias !245, !noundef !5 ; 2 uses
  %i.f = icmp ugt i64 %i.e, 63
  br i1 %i.f, label %bb.c, label %_RINvYQNtNtNtCsVG4f6i5f9f_4rand4rngs6thread9ThreadRngNtNtBa_3rng3Rng6randommECs8k3UfHgJ3Xe_15candle_datasets.exit12.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 272 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 328 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !247, !noalias !248, !noundef !5 ; 2 uses
  %i.j = icmp slt i64 %i.i, 1
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = add nsw i64 %i.i, -256
  store i64 %i.k, ptr %i.h, align 8, !alias.scope !247, !noalias !248
  tail call void @_RNvNtCscHeDkCj8TjV_11rand_chacha4guts11refill_wide(ptr noalias nofree noundef nonnull align 16 dereferenceable(64) %i.g, i32 noundef 6, ptr noalias nofree noundef nonnull align 16 dereferenceable(336) %i.c), !noalias !245
  br label %_RINvYQNtNtNtCsVG4f6i5f9f_4rand4rngs6thread9ThreadRngNtNtBa_3rng3Rng6randommECs8k3UfHgJ3Xe_15candle_datasets.exit12.i.i.i

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvMs3_NtNtCsVG4f6i5f9f_4rand4rngs9reseedingINtB5_13ReseedingCoreNtNtCscHeDkCj8TjV_11rand_chacha6chacha12ChaCha12CoreNtNtCsaVVYlBCAE9B_9rand_core2os5OsRngE19reseed_and_generateCsat2oUP5WrwS_6hf_hub(ptr noalias nofree noundef nonnull align 16 dereferenceable(64) %i.g, ptr noalias nofree noundef nonnull align 16 dereferenceable(336) %i.c) #19, !noalias !245
  br label %_RINvYQNtNtNtCsVG4f6i5f9f_4rand4rngs6thread9ThreadRngNtNtBa_3rng3Rng6randommECs8k3UfHgJ3Xe_15candle_datasets.exit12.i.i.i

_RINvYQNtNtNtCsVG4f6i5f9f_4rand4rngs6thread9ThreadRngNtNtBa_3rng3Rng6randommECs8k3UfHgJ3Xe_15candle_datasets.exit12.i.i.i: ; preds = %bb.e, %bb.d, %bb.b
  %i.l = phi i64 [ %i.e, %bb.b ], [ 0, %bb.d ], [ 0, %bb.e ] ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !alias.scope !246, !noalias !245, !noundef !5
  %i.o = add nuw nsw i64 %i.l, 1
  store i64 %i.o, ptr %i.d, align 16, !alias.scope !246, !noalias !245
  %i.p = zext i32 %i.n to i64
  %i.q = zext i32 %1 to i64                       ; 2 uses
  %i.r = mul nuw i64 %i.p, %i.q                   ; 2 uses
  %i.s = lshr i64 %i.r, 32                        ; 2 uses
  %i.t = trunc i64 %i.r to i32                    ; 2 uses
  %i.u = sub i32 0, %1
  %i.v = icmp ugt i32 %i.t, %i.u
  br i1 %i.v, label %bb.f, label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultmNtNtNtCsVG4f6i5f9f_4rand5distr7uniform5ErrorE6unwrapCs8k3UfHgJ3Xe_15candle_datasets.exit

bb.f:                                             ; preds = %_RINvYQNtNtNtCsVG4f6i5f9f_4rand4rngs6thread9ThreadRngNtNtBa_3rng3Rng6randommECs8k3UfHgJ3Xe_15candle_datasets.exit12.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !249)
  %i.w = load ptr, ptr %.val5, align 8, !alias.scope !249, !nonnull !5, !noundef !5 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 336 ; 2 uses
  %i.z = load i64, ptr %i.y, align 16, !alias.scope !250, !noalias !249, !noundef !5 ; 2 uses
  %i.aa = icmp ugt i64 %i.z, 63
  br i1 %i.aa, label %bb.g, label %_RINvYQNtNtNtCsVG4f6i5f9f_4rand4rngs6thread9ThreadRngNtNtBa_3rng3Rng6randommECs8k3UfHgJ3Xe_15candle_datasets.exit13.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 272 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 328 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !251, !noalias !252, !noundef !5 ; 2 uses
  %i.ae = icmp slt i64 %i.ad, 1
  br i1 %i.ae, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = add nsw i64 %i.ad, -256
  store i64 %i.af, ptr %i.ac, align 8, !alias.scope !251, !noalias !252
  tail call void @_RNvNtCscHeDkCj8TjV_11rand_chacha4guts11refill_wide(ptr noalias nofree noundef nonnull align 16 dereferenceable(64) %i.ab, i32 noundef 6, ptr noalias nofree noundef nonnull align 16 dereferenceable(336) %i.x), !noalias !249
  br label %_RINvYQNtNtNtCsVG4f6i5f9f_4rand4rngs6thread9ThreadRngNtNtBa_3rng3Rng6randommECs8k3UfHgJ3Xe_15candle_datasets.exit13.i.i.i

bb.i:                                             ; preds = %bb.g
  tail call void @_RNvMs3_NtNtCsVG4f6i5f9f_4rand4rngs9reseedingINtB5_13ReseedingCoreNtNtCscHeDkCj8TjV_11rand_chacha6chacha12ChaCha12CoreNtNtCsaVVYlBCAE9B_9rand_core2os5OsRngE19reseed_and_generateCsat2oUP5WrwS_6hf_hub(ptr noalias nofree noundef nonnull align 16 dereferenceable(64) %i.ab, ptr noalias nofree noundef nonnull align 16 dereferenceable(336) %i.x) #19, !noalias !249
  br label %_RINvYQNtNtNtCsVG4f6i5f9f_4rand4rngs6thread9ThreadRngNtNtBa_3rng3Rng6randommECs8k3UfHgJ3Xe_15candle_datasets.exit13.i.i.i

_RINvYQNtNtNtCsVG4f6i5f9f_4rand4rngs6thread9ThreadRngNtNtBa_3rng3Rng6randommECs8k3UfHgJ3Xe_15candle_datasets.exit13.i.i.i: ; preds = %bb.i, %bb.h, %bb.f
  %i.ag = phi i64 [ %i.z, %bb.f ], [ 0, %bb.h ], [ 0, %bb.i ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !alias.scope !250, !noalias !249, !noundef !5
  %i.aj = add nuw nsw i64 %i.ag, 1
  store i64 %i.aj, ptr %i.y, align 16, !alias.scope !250, !noalias !249
  %3 = zext i32 %i.ai to i64
  %4 = mul nuw i64 %3, %i.q
  %5 = lshr i64 %4, 32
  %6 = trunc nuw i64 %5 to i32
  %i.ak = xor i32 %i.t, -1
  %.not9.i.i.i = icmp ult i32 %i.ak, %6
  %i.al = zext i1 %.not9.i.i.i to i64
  %i.am = add nuw nsw i64 %i.s, %i.al
  br label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultmNtNtNtCsVG4f6i5f9f_4rand5distr7uniform5ErrorE6unwrapCs8k3UfHgJ3Xe_15candle_datasets.exit

_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultmNtNtNtCsVG4f6i5f9f_4rand5distr7uniform5ErrorE6unwrapCs8k3UfHgJ3Xe_15candle_datasets.exit: ; preds = %_RINvYQNtNtNtCsVG4f6i5f9f_4rand4rngs6thread9ThreadRngNtNtBa_3rng3Rng6randommECs8k3UfHgJ3Xe_15candle_datasets.exit13.i.i.i, %_RINvYQNtNtNtCsVG4f6i5f9f_4rand4rngs6thread9ThreadRngNtNtBa_3rng3Rng6randommECs8k3UfHgJ3Xe_15candle_datasets.exit12.i.i.i
  %.sroa.04.0.i.i.i = phi i64 [ %i.am, %_RINvYQNtNtNtCsVG4f6i5f9f_4rand4rngs6thread9ThreadRngNtNtBa_3rng3Rng6randommECs8k3UfHgJ3Xe_15candle_datasets.exit13.i.i.i ], [ %i.s, %_RINvYQNtNtNtCsVG4f6i5f9f_4rand4rngs6thread9ThreadRngNtNtBa_3rng3Rng6randommECs8k3UfHgJ3Xe_15candle_datasets.exit12.i.i.i ]
  %.sroa.6.0.extract.trunc.i = trunc nuw i64 %.sroa.04.0.i.i.i to i32
  ret i32 %.sroa.6.0.extract.trunc.i

bb.j:                                             ; preds = %bb.a
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @5, ptr noundef nonnull inttoptr (i64 51 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) #22
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreaderINtB2_9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileE13with_capacityCs8k3UfHgJ3Xe_15candle_datasets(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, i64 noundef %1, i32 noundef range(i32 0, -1) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = invoke { ptr, i64 } @_RNvMs2_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxShE16new_uninit_sliceCs8k3UfHgJ3Xe_15candle_datasets(i64 noundef %1)
          to label %bb.b unwind label %bb.c       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.b = extractvalue { ptr, i64 } %i.a, 0
  %i.c = extractvalue { ptr, i64 } %i.a, 1
  store ptr %i.b, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %.sroa.5.0..sroa_idx, i8 0, i64 17, i1 false)
  store i32 %2, ptr %i.d, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = tail call noundef i32 @close(i32 noundef %2) #23 ; 0 uses
  resume { ptr, i32 } %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtNtCsd5Y3rNriENo_7parquet4file17serialized_readerINtB5_20SerializedFileReaderNtNtCs5Xr050g3D4S_3std2fs4FileE3newCs8k3UfHgJ3Xe_15candle_datasets(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i32 noundef range(i32 0, -1) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [184 x i8], align 8               ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [216 x i8], align 8               ; 9 uses
  %i.e = alloca [168 x i8], align 8               ; 7 uses
  %.sroa.6 = alloca [32 x i8], align 8            ; 6 uses
  %i.f = alloca [168 x i8], align 8               ; 8 uses
  %i.g = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %1, ptr %i.g, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i64 -1, ptr %i.h, align 8, !alias.scope !267
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 208
  store i8 0, ptr %i.i, align 8, !alias.scope !267
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 209
  store i8 0, ptr %i.j, align 1, !alias.scope !267
  store i64 0, ptr %i.d, align 8, !alias.scope !267
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 200
  store ptr null, ptr %i.k, align 8, !alias.scope !267
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %i.l, align 8, !alias.scope !267
  invoke void @_RINvMs_NtNtNtCsd5Y3rNriENo_7parquet4file8metadata6readerNtB5_21ParquetMetaDataReader16parse_and_finishNtNtCs5Xr050g3D4S_3std2fs4FileECs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef nonnull sret([168 x i8]) align 8 captures(address) dereferenceable(168) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(216) %i.d, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.g)
          to label %bb.c unwind label %.thread

bb.b:                                             ; preds = %bb.s
  br i1 %i.t, label %bb.t, label %.thread58

.thread:                                          ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.n = load i64, ptr %i.e, align 8, !range !7, !noundef !5 ; 2 uses
  %i.o = icmp eq i64 %i.n, -1
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 32, i1 false)
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.q = call noundef i32 @close(i32 noundef %1) #23 ; 0 uses
  br label %bb.q

.noexc37:                                         ; preds = %bb.j, %.body
  br i1 %i.v, label %bb.s, label %.thread58

.thread52:                                        ; preds = %bb.f
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.e:                                             ; preds = %bb.c
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.512.0..sroa_idx, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, i64 32, i1 false)
  store i64 %i.n, ptr %i.f, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23
  %i.s = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 24, 185) 24, i64 noundef 8) #23 ; 6 uses
  %i.t = icmp eq ptr %i.s, null                   ; 2 uses
  br i1 %i.t, label %bb.f, label %bb.g, !prof !10

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #24
          to label %.noexc unwind label %.thread52

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.e
  store i64 1, ptr %i.s, align 8
  %.sroa.442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 1, ptr %.sroa.442.0..sroa_idx, align 8
  %.sroa.543.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i24 1, ptr %.sroa.543.0..sroa_idx, align 8
  store ptr %i.s, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !268
  %i.u = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 24, 185) 24, i64 noundef 8) #23, !noalias !268 ; 7 uses
  %i.v = icmp eq ptr %i.u, null                   ; 2 uses
  br i1 %i.v, label %bb.h, label %bb.k, !prof !10

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #24
          to label %.noexc35 unwind label %bb.i

.noexc35:                                         ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = call noundef i32 @close(i32 noundef %1) #23 ; 0 uses
  br label %.body

.body:                                            ; preds = %.body31, %bb.o, %bb.i
  %.pn = phi { ptr, i32 } [ %i.w, %bb.i ], [ %i.af, %.body31 ], [ %i.af, %bb.o ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !269)
  call void @llvm.experimental.noalias.scope.decl(metadata !270)
  %i.y = load ptr, ptr %i.c, align 8, !alias.scope !271, !nonnull !5, !noundef !5
  %i.z = atomicrmw sub ptr %i.y, i64 1 release, align 8, !noalias !271
  %i.aa = icmp eq i64 %i.z, 1
  br i1 %i.aa, label %bb.j, label %.noexc37

bb.j:                                             ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCsd5Y3rNriENo_7parquet4file10properties16ReaderPropertiesE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #19
          to label %.noexc37 unwind label %bb.r

bb.k:                                             ; preds = %bb.g
  store i64 1, ptr %i.u, align 8
  %.sroa.446.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 1, ptr %.sroa.446.0..sroa_idx, align 8
  %.sroa.547.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i32 %1, ptr %.sroa.547.0..sroa_idx, align 8
  store ptr %i.u, ptr %i.b, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.ab, ptr noundef nonnull align 8 dereferenceable(168) %i.f, i64 168, i1 false)
  store i64 1, ptr %i.a, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.ac, align 8
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !272
  %i.ad = call noundef align 8 dereferenceable_or_null(184) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 24, 185) 184, i64 noundef 8) #23, !noalias !272 ; 3 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.l, label %bb.p, !prof !10

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 184) #24
          to label %.noexc38 unwind label %bb.m

.noexc38:                                         ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsd5Y3rNriENo_7parquet4file8metadata15ParquetMetaDataECs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef align 8 dereferenceable(168) %i.ab)
          to label %.body31 unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #20
  unreachable

end_hunk_0
begin_hunk_1_@_RINvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB6_8IntoIterNtNtCsat2oUP5WrwS_6hf_hub3api8SiblingsENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropINtNtNtCsd5Y3rNriENo_7parquet4file17serialized_reader20SerializedFileReaderNtNtCs5Xr050g3D4S_3std2fs4FileEENCINvNtNtB1G_8adapters6filter15filter_try_foldBX_B2E_INtNtNtB1I_3ops12control_flow11ControlFlowINtNtB1I_6result6ResultB2E_zEB2E_ENCNvNtCs8k3UfHgJ3Xe_15candle_datasets3hub8from_hub0NCINvNtB54_3map12map_try_foldBX_IB6v_B3e_NtB76_5ErrorEB2E_B5O_NCB74_s_0NCINvXB54_INtB54_12GenericShuntINtB7W_3MapINtB52_6FilterBI_B72_EB8R_EIB6v_zB8w_EEB1A_8try_foldB2E_NCINvNtB8_16in_place_collect24write_in_place_with_dropB3e_E0B6u_E0E0E0B5O_EB78_
declare hidden void @_RINvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB6_8IntoIterNtNtCsat2oUP5WrwS_6hf_hub3api8SiblingsENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropINtNtNtCsd5Y3rNriENo_7parquet4file17serialized_reader20SerializedFileReaderNtNtCs5Xr050g3D4S_3std2fs4FileEENCINvNtNtB1G_8adapters6filter15filter_try_foldBX_B2E_INtNtNtB1I_3ops12control_flow11ControlFlowINtNtB1I_6result6ResultB2E_zEB2E_ENCNvNtCs8k3UfHgJ3Xe_15candle_datasets3hub8from_hub0NCINvNtB54_3map12map_try_foldBX_IB6v_B3e_NtB76_5ErrorEB2E_B5O_NCB74_s_0NCINvXB54_INtB54_12GenericShuntINtB7W_3MapINtB52_6FilterBI_B72_EB8R_EIB6v_zB8w_EEB1A_8try_foldB2E_NCINvNtB8_16in_place_collect24write_in_place_with_dropB3e_E0B6u_E0E0E0B5O_EB78_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(32), ptr noundef, ptr noundef, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecjENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCs8k3UfHgJ3Xe_15candle_datasets(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #11

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvMs2_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxShE16new_uninit_sliceCs8k3UfHgJ3Xe_15candle_datasets(i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #4

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #14

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs_NtNtNtCsd5Y3rNriENo_7parquet4file8metadata6readerNtB5_21ParquetMetaDataReader16parse_and_finishNtNtCs5Xr050g3D4S_3std2fs4FileECs8k3UfHgJ3Xe_15candle_datasets(ptr dead_on_unwind noalias nofree noundef writable sret([168 x i8]) align 8 captures(address) dereferenceable(168), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(216), ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs6_NtNtCsat2oUP5WrwS_6hf_hub3api4syncNtB5_7ApiRepo3get(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(312), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs2_NtCs5Xr050g3D4S_3std2fsNtB6_4File4openNtNtB8_4path7PathBufECs8k3UfHgJ3Xe_15candle_datasets(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8k3UfHgJ3Xe_15candle_datasets(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs4_NtNtCsat2oUP5WrwS_6hf_hub3api4syncNtB5_3Api4repo(ptr dead_on_unwind noalias nofree noundef writable sret([312 x i8]) align 8 captures(none) dereferenceable(312), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(256), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs6_NtNtCsat2oUP5WrwS_6hf_hub3api4syncNtB5_7ApiRepo4info(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(312)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsf3Ta7LF998c_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtB2_6filter6FilterINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtCsat2oUP5WrwS_6hf_hub3api8SiblingsENCNvNtCs8k3UfHgJ3Xe_15candle_datasets3hub8from_hub0ENCB2V_s_0EINtNtNtCsd5Y3rNriENo_7parquet4file17serialized_reader20SerializedFileReaderNtNtCs5Xr050g3D4S_3std2fs4FileEINtNtB6_6result6ResultzNtB2X_5ErrorENCINvXso_B5E_IB5C_INtB1x_3VecB3T_EB5Y_EINtNtNtB4_6traits7collect12FromIteratorIB5C_B3T_B5Y_EE9from_iterBQ_E0B6t_EB2Z_(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #15

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtNtCs8k3UfHgJ3Xe_15candle_datasets6vision5mnist15load_mnist_like(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef ptr @_RNvXsa_NtCs5Xr050g3D4S_3std2fsNtB5_4FileNtNtNtCsgCecv3eZDcN_5alloc2io4read4Read8read_buf(ptr noalias nofree noundef align 4 dereferenceable(4), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #16

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsG_NtCs5Xr050g3D4S_3std4pathNtB5_7PathBufNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtCsf3Ta7LF998c_4core2io5errorNtB2_5ErrorNtNtB6_3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtCsd5Y3rNriENo_7parquet6errorsNtB2_12ParquetErrorNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs3_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsb_NtNtCsat2oUP5WrwS_6hf_hub3api4syncNtB5_8ApiErrorNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtNtCsVG4f6i5f9f_4rand4rngs9reseedingINtB5_13ReseedingCoreNtNtCscHeDkCj8TjV_11rand_chacha6chacha12ChaCha12CoreNtNtCsaVVYlBCAE9B_9rand_core2os5OsRngE19reseed_and_generateCsat2oUP5WrwS_6hf_hub(ptr noalias nofree noundef align 16 dereferenceable(64), ptr noalias nofree noundef align 4 dereferenceable(256)) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvNtNtCsgCecv3eZDcN_5alloc2io4read18default_read_exactINtNtNtB4_8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef align 8 dereferenceable(48), ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvXsa_NtCs5Xr050g3D4S_3std2fsNtB5_4FileNtNtNtCsgCecv3eZDcN_5alloc2io4read4Read4read(ptr noalias nofree noundef align 4 dereferenceable(4), ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @close(i32 noundef) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_field3_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtCsgCecv3eZDcN_5alloc6string6StringNtB6_5Debug3fmtCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcDG0_INtNtNtCsf3Ta7LF998c_4core3ops8function2FnTRL1_INtNtNtCs6xQOTQz36RB_4ureq11unversioned9transport17ConnectionDetailsL0_EEEp6OutputINtNtBR_6result6ResultINtNtB7_5boxed3BoxDNtB1y_9TransportEL_ENtNtB1C_5error5ErrorENtNtBR_6marker4SendNtB4b_4SyncEL_E9drop_slowB1C_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #7

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcDNtNtNtCs6xQOTQz36RB_4ureq11unversioned8resolver8ResolverEL_E9drop_slowBN_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #7

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCs5Xr050g3D4S_3std2fs4FileE9drop_slowCsd5Y3rNriENo_7parquet(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #7

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCs6xQOTQz36RB_4ureq4pool14ConnectionPoolE9drop_slowBK_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #7

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCs6xQOTQz36RB_4ureq6config6ConfigE9drop_slowBK_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #7

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #7

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCsd5Y3rNriENo_7parquet4file10properties16ReaderPropertiesE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #7

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCsd5Y3rNriENo_7parquet6schema5types16SchemaDescriptorE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtNtCs8jJy9Kok3op_5image2io6limits12LimitSupportNtB6_5Debug3fmtCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB8_5error5ErrorNtNtB8_6marker4SendNtB1r_4SyncEL_ENtB6_5Debug3fmtCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtNtCsf3Ta7LF998c_4core3fmt3num3imphNtB6_7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsg_NtNtCsf3Ta7LF998c_4core3fmt3numhNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXse_NtNtCsf3Ta7LF998c_4core3fmt3numhNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impmNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsw_NtNtCsf3Ta7LF998c_4core3fmt3nummNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsu_NtNtCsf3Ta7LF998c_4core3fmt3nummNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsd_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impyNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsE_NtNtCsf3Ta7LF998c_4core3fmt3numyNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsC_NtNtCsf3Ta7LF998c_4core3fmt3numyNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtCsf3Ta7LF998c_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtNtCsf3Ta7LF998c_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCsf3Ta7LF998c_4core3fmt5write(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_field4_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.uadd.sat.i64(i64, i64) #11

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCscHeDkCj8TjV_11rand_chacha4guts11refill_wide(ptr noalias nofree noundef align 16 dereferenceable(48), i32 noundef, ptr noalias nofree noundef align 4 dereferenceable(256)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter10debug_list(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCsf3Ta7LF998c_4core3fmt8buildersNtB6_9DebugList7entriesRjINtNtNtBa_5slice4iter4IterjEECs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs6_NtNtCsf3Ta7LF998c_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter3pad(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #18

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsh0WfaQiVYm0_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #19 = { noinline }
attributes #20 = { cold noreturn nounwind }
attributes #21 = { cold }
attributes #22 = { noinline noreturn }
attributes #23 = { nounwind }
attributes #24 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (809936eac 2026-09-12)"}
!4 = !{i64 0, i64 2}
!5 = !{}
!6 = !{i8 0, i8 2}
!7 = !{i64 -1, i64 -9223372036854775808}
!8 = !{i8 0, i8 4}
!9 = !{i64 0, i64 -9223372036854775802}
!10 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!11 = !{i32 0, i32 2}
!12 = !{i64 8}
!13 = distinct !{!13, !"_RINvMs0_Cs94aVKmQQwYh_7memmap2NtB6_11MmapOptions7get_lenRNtNtCs5Xr050g3D4S_3std2fs4FileECs8k3UfHgJ3Xe_15candle_datasets"}
!14 = distinct !{!14, !13, !"_RINvMs0_Cs94aVKmQQwYh_7memmap2NtB6_11MmapOptions7get_lenRNtNtCs5Xr050g3D4S_3std2fs4FileECs8k3UfHgJ3Xe_15candle_datasets: argument 0"}
!15 = distinct !{!15, !13, !"_RINvMs0_Cs94aVKmQQwYh_7memmap2NtB6_11MmapOptions7get_lenRNtNtCs5Xr050g3D4S_3std2fs4FileECs8k3UfHgJ3Xe_15candle_datasets: argument 1"}
!16 = !{!14}
!17 = !{!15}
!18 = distinct !{!18, !"_RNCINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB8_6Tensor7permuteTjjjjEEs_0Cs8k3UfHgJ3Xe_15candle_datasets"}
!19 = distinct !{!19, !18, !"_RNCINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB8_6Tensor7permuteTjjjjEEs_0Cs8k3UfHgJ3Xe_15candle_datasets: argument 0"}
!20 = distinct !{!20, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs8k3UfHgJ3Xe_15candle_datasets"}
!21 = distinct !{!21, !20, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs8k3UfHgJ3Xe_15candle_datasets: argument 0"}
!22 = distinct !{!22, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_EECs8k3UfHgJ3Xe_15candle_datasets"}
!23 = distinct !{!23, !22, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_EECs8k3UfHgJ3Xe_15candle_datasets: argument 0"}
!24 = distinct !{!24, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets"}
!25 = distinct !{!25, !24, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets: argument 0"}
!26 = !{i8 -1, i8 36}
!27 = !{!19}
!28 = !{!25, !23, !21, !19}
!29 = distinct !{!29, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6xQOTQz36RB_4ureq5agent5AgentECs8k3UfHgJ3Xe_15candle_datasets"}
!30 = distinct !{!30, !29, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6xQOTQz36RB_4ureq5agent5AgentECs8k3UfHgJ3Xe_15candle_datasets: argument 0"}
!31 = distinct !{!31, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs6xQOTQz36RB_4ureq6config6ConfigEECs8k3UfHgJ3Xe_15candle_datasets"}
!32 = distinct !{!32, !31, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs6xQOTQz36RB_4ureq6config6ConfigEECs8k3UfHgJ3Xe_15candle_datasets: argument 0"}
!33 = distinct !{!33, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCs6xQOTQz36RB_4ureq6config6ConfigENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets"}
!34 = distinct !{!34, !33, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCs6xQOTQz36RB_4ureq6config6ConfigENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets: argument 0"}
!35 = distinct !{!35, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs6xQOTQz36RB_4ureq4pool14ConnectionPoolEECs8k3UfHgJ3Xe_15candle_datasets"}
!36 = distinct !{!36, !35, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs6xQOTQz36RB_4ureq4pool14ConnectionPoolEECs8k3UfHgJ3Xe_15candle_datasets: argument 0"}
!37 = distinct !{!37, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCs6xQOTQz36RB_4ureq4pool14ConnectionPoolENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets"}
!38 = distinct !{!38, !37, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCs6xQOTQz36RB_4ureq4pool14ConnectionPoolENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets: argument 0"}
!39 = distinct !{!39, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs6xQOTQz36RB_4ureq4pool14ConnectionPoolEECs8k3UfHgJ3Xe_15candle_datasets"}
!40 = distinct !{!40, !39, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs6xQOTQz36RB_4ureq4pool14ConnectionPoolEECs8k3UfHgJ3Xe_15candle_datasets: argument 0"}
!41 = distinct !{!41, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCs6xQOTQz36RB_4ureq4pool14ConnectionPoolENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets"}
!42 = distinct !{!42, !41, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCs6xQOTQz36RB_4ureq4pool14ConnectionPoolENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets: argument 0"}
!43 = distinct !{!43, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcDNtNtNtCs6xQOTQz36RB_4ureq11unversioned8resolver8ResolverEL_EECs8k3UfHgJ3Xe_15candle_datasets"}
!44 = distinct !{!44, !43, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcDNtNtNtCs6xQOTQz36RB_4ureq11unversioned8resolver8ResolverEL_EECs8k3UfHgJ3Xe_15candle_datasets: argument 0"}
!45 = distinct !{!45, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcDNtNtNtCs6xQOTQz36RB_4ureq11unversioned8resolver8ResolverEL_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets"}
!46 = distinct !{!46, !45, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcDNtNtNtCs6xQOTQz36RB_4ureq11unversioned8resolver8ResolverEL_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets: argument 0"}
!47 = distinct !{!47, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcDNtNtNtCs6xQOTQz36RB_4ureq11unversioned8resolver8ResolverEL_EECs8k3UfHgJ3Xe_15candle_datasets"}
!48 = distinct !{!48, !47, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcDNtNtNtCs6xQOTQz36RB_4ureq11unversioned8resolver8ResolverEL_EECs8k3UfHgJ3Xe_15candle_datasets: argument 0"}
!49 = distinct !{!49, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcDNtNtNtCs6xQOTQz36RB_4ureq11unversioned8resolver8ResolverEL_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets"}
!50 = distinct !{!50, !49, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcDNtNtNtCs6xQOTQz36RB_4ureq11unversioned8resolver8ResolverEL_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets: argument 0"}
!51 = distinct !{!51, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_INtNtNtCs6xQOTQz36RB_4ureq11unversioned9transport17ConnectionDetailsL0_EEEp6OutputINtNtB4_6result6ResultINtNtBG_5boxed3BoxDNtB1L_9TransportEL_ENtNtB1P_5error5ErrorENtNtB4_6marker4SendNtB4o_4SyncEL_EECs8k3UfHgJ3Xe_15candle_datasets"}
!52 = distinct !{!52, !51, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_INtNtNtCs6xQOTQz36RB_4ureq11unversioned9transport17ConnectionDetailsL0_EEEp6OutputINtNtB4_6result6ResultINtNtBG_5boxed3BoxDNtB1L_9TransportEL_ENtNtB1P_5error5ErrorENtNtB4_6marker4SendNtB4o_4SyncEL_EECs8k3UfHgJ3Xe_15candle_datasets: argument 0"}
!53 = distinct !{!53, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcDG0_INtNtNtCsf3Ta7LF998c_4core3ops8function2FnTRL1_INtNtNtCs6xQOTQz36RB_4ureq11unversioned9transport17ConnectionDetailsL0_EEEp6OutputINtNtBR_6result6ResultINtNtB7_5boxed3BoxDNtB1y_9TransportEL_ENtNtB1C_5error5ErrorENtNtBR_6marker4SendNtB4b_4SyncEL_ENtNtBP_4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets"}
!54 = distinct !{!54, !53, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcDG0_INtNtNtCsf3Ta7LF998c_4core3ops8function2FnTRL1_INtNtNtCs6xQOTQz36RB_4ureq11unversioned9transport17ConnectionDetailsL0_EEEp6OutputINtNtBR_6result6ResultINtNtB7_5boxed3BoxDNtB1y_9TransportEL_ENtNtB1C_5error5ErrorENtNtBR_6marker4SendNtB4b_4SyncEL_ENtNtBP_4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets: argument 0"}
!55 = distinct !{!55, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_INtNtNtCs6xQOTQz36RB_4ureq11unversioned9transport17ConnectionDetailsL0_EEEp6OutputINtNtB4_6result6ResultINtNtBG_5boxed3BoxDNtB1L_9TransportEL_ENtNtB1P_5error5ErrorENtNtB4_6marker4SendNtB4o_4SyncEL_EECs8k3UfHgJ3Xe_15candle_datasets"}
!56 = distinct !{!56, !55, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_INtNtNtCs6xQOTQz36RB_4ureq11unversioned9transport17ConnectionDetailsL0_EEEp6OutputINtNtB4_6result6ResultINtNtBG_5boxed3BoxDNtB1L_9TransportEL_ENtNtB1P_5error5ErrorENtNtB4_6marker4SendNtB4o_4SyncEL_EECs8k3UfHgJ3Xe_15candle_datasets: argument 0"}
!57 = distinct !{!57, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcDG0_INtNtNtCsf3Ta7LF998c_4core3ops8function2FnTRL1_INtNtNtCs6xQOTQz36RB_4ureq11unversioned9transport17ConnectionDetailsL0_EEEp6OutputINtNtBR_6result6ResultINtNtB7_5boxed3BoxDNtB1y_9TransportEL_ENtNtB1C_5error5ErrorENtNtBR_6marker4SendNtB4b_4SyncEL_ENtNtBP_4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets"}
!58 = distinct !{!58, !57, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcDG0_INtNtNtCsf3Ta7LF998c_4core3ops8function2FnTRL1_INtNtNtCs6xQOTQz36RB_4ureq11unversioned9transport17ConnectionDetailsL0_EEEp6OutputINtNtBR_6result6ResultINtNtB7_5boxed3BoxDNtB1y_9TransportEL_ENtNtB1C_5error5ErrorENtNtBR_6marker4SendNtB4b_4SyncEL_ENtNtBP_4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets: argument 0"}
!59 = !{!30}
!60 = !{!32}
!61 = !{!34}
!62 = !{!34, !32, !30}
!63 = !{!36}
!64 = !{!38}
!65 = !{!38, !36, !30}
!66 = !{!38, !36}
!67 = !{!40}
!68 = !{!42}
!69 = !{!42, !40, !30}
!70 = !{!42, !40}
!71 = !{!44}
!72 = !{!46}
!73 = !{!46, !44, !30}
!74 = !{!46, !44}
!75 = !{!48}
!76 = !{!50}
!77 = !{!50, !48, !30}
!78 = !{!50, !48}
!79 = !{!52}
!80 = !{!54}
!81 = !{!54, !52, !30}
!82 = !{!54, !52}
!83 = !{!56}
!84 = !{!58}
!85 = !{!58, !56, !30}
!86 = !{!58, !56}
!87 = distinct !{!87, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsd5Y3rNriENo_7parquet4file8metadata12FileMetaDataECs8k3UfHgJ3Xe_15candle_datasets"}
!88 = distinct !{!88, !87, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsd5Y3rNriENo_7parquet4file8metadata12FileMetaDataECs8k3UfHgJ3Xe_15candle_datasets: argument 0"}
!89 = distinct !{!89, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECs8k3UfHgJ3Xe_15candle_datasets"}
!90 = distinct !{!90, !89, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECs8k3UfHgJ3Xe_15candle_datasets: argument 0"}
!91 = distinct !{!91, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCsd5Y3rNriENo_7parquet4file8metadata8KeyValueEEECs8k3UfHgJ3Xe_15candle_datasets"}
!92 = distinct !{!92, !91, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCsd5Y3rNriENo_7parquet4file8metadata8KeyValueEEECs8k3UfHgJ3Xe_15candle_datasets: argument 0"}
!93 = distinct !{!93, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCsd5Y3rNriENo_7parquet6schema5types16SchemaDescriptorEECs8k3UfHgJ3Xe_15candle_datasets"}
!94 = distinct !{!94, !93, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCsd5Y3rNriENo_7parquet6schema5types16SchemaDescriptorEECs8k3UfHgJ3Xe_15candle_datasets: argument 0"}
!95 = distinct !{!95, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCsd5Y3rNriENo_7parquet6schema5types16SchemaDescriptorENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets"}
!96 = distinct !{!96, !95, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCsd5Y3rNriENo_7parquet6schema5types16SchemaDescriptorENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets: argument 0"}
!97 = distinct !{!97, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCsd5Y3rNriENo_7parquet6schema5types16SchemaDescriptorEECs8k3UfHgJ3Xe_15candle_datasets"}
!98 = distinct !{!98, !97, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCsd5Y3rNriENo_7parquet6schema5types16SchemaDescriptorEECs8k3UfHgJ3Xe_15candle_datasets: argument 0"}
!99 = distinct !{!99, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCsd5Y3rNriENo_7parquet6schema5types16SchemaDescriptorENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets"}
!100 = distinct !{!100, !99, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCsd5Y3rNriENo_7parquet6schema5types16SchemaDescriptorENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets: argument 0"}
!101 = distinct !{!101, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsd5Y3rNriENo_7parquet5basic11ColumnOrderEEECs8k3UfHgJ3Xe_15candle_datasets"}
!102 = distinct !{!102, !101, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsd5Y3rNriENo_7parquet5basic11ColumnOrderEEECs8k3UfHgJ3Xe_15candle_datasets: argument 0"}
!103 = distinct !{!103, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc3vec3VecIBY_NtNtNtNtCsd5Y3rNriENo_7parquet4file10page_index12column_index19ColumnIndexMetaDataEEEECs8k3UfHgJ3Xe_15candle_datasets"}
!104 = distinct !{!104, !103, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc3vec3VecIBY_NtNtNtNtCsd5Y3rNriENo_7parquet4file10page_index12column_index19ColumnIndexMetaDataEEEECs8k3UfHgJ3Xe_15candle_datasets: argument 0"}
!105 = distinct !{!105, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc3vec3VecIBY_NtNtNtNtCsd5Y3rNriENo_7parquet4file10page_index12offset_index19OffsetIndexMetaDataEEEECs8k3UfHgJ3Xe_15candle_datasets"}
!106 = distinct !{!106, !105, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc3vec3VecIBY_NtNtNtNtCsd5Y3rNriENo_7parquet4file10page_index12offset_index19OffsetIndexMetaDataEEEECs8k3UfHgJ3Xe_15candle_datasets: argument 0"}
!107 = !{!90, !88}
!108 = !{!92, !88}
!109 = !{!94}
!110 = !{!96}
!111 = !{!96, !94, !88}
!112 = !{!96, !94}
!113 = !{!98}
!114 = !{!100}
!115 = !{!100, !98, !88}
!116 = !{!100, !98}
!117 = !{!102, !88}
!118 = !{!104}
!119 = !{!106}
!120 = distinct !{!120, !"_RNvMNtNtCsVG4f6i5f9f_4rand3seq18increasing_uniformINtB2_17IncreasingUniformQNtNtNtB6_4rngs6thread9ThreadRngE10next_indexCs8k3UfHgJ3Xe_15candle_datasets"}
!121 = distinct !{!121, !120, !"_RNvMNtNtCsVG4f6i5f9f_4rand3seq18increasing_uniformINtB2_17IncreasingUniformQNtNtNtB6_4rngs6thread9ThreadRngE10next_indexCs8k3UfHgJ3Xe_15candle_datasets: argument 0"}
!122 = distinct !{!122, !"_RNCNvMNtNtCsVG4f6i5f9f_4rand3seq18increasing_uniformINtB4_17IncreasingUniformQNtNtNtB8_4rngs6thread9ThreadRngE10next_index0Cs8k3UfHgJ3Xe_15candle_datasets"}
!123 = distinct !{!123, !122, !"_RNCNvMNtNtCsVG4f6i5f9f_4rand3seq18increasing_uniformINtB4_17IncreasingUniformQNtNtNtB8_4rngs6thread9ThreadRngE10next_index0Cs8k3UfHgJ3Xe_15candle_datasets: argument 0"}
!124 = !{!121}
!125 = !{!"branch_weights", i32 1, i32 127}
!126 = !{!"branch_weights", i32 127, i32 255873}
!127 = !{!123}
!128 = distinct !{!128, !"_RINvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6filterINtB6_6FilterINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtCsat2oUP5WrwS_6hf_hub3api8SiblingsENCNvNtCs8k3UfHgJ3Xe_15candle_datasets3hub8from_hub0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB18_13in_place_drop11InPlaceDropINtNtNtCsd5Y3rNriENo_7parquet4file17serialized_reader20SerializedFileReaderNtNtCs5Xr050g3D4S_3std2fs4FileEENCINvNtB8_3map12map_try_foldB1R_INtNtBc_6result6ResultB4C_NtB2y_5ErrorEB41_INtNtNtBc_3ops12control_flow11ControlFlowIB6S_B41_zEB41_ENCB2w_s_0NCINvXB8_INtB8_12GenericShuntINtB6q_3MapBQ_B8t_EIB6S_zB7h_EEB3k_8try_foldB41_NCINvNtB18_16in_place_collect24write_in_place_with_dropB4C_E0B8d_E0E0B7y_EB2A_"}
!129 = distinct !{!129, !128, !"_RINvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6filterINtB6_6FilterINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtCsat2oUP5WrwS_6hf_hub3api8SiblingsENCNvNtCs8k3UfHgJ3Xe_15candle_datasets3hub8from_hub0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB18_13in_place_drop11InPlaceDropINtNtNtCsd5Y3rNriENo_7parquet4file17serialized_reader20SerializedFileReaderNtNtCs5Xr050g3D4S_3std2fs4FileEENCINvNtB8_3map12map_try_foldB1R_INtNtBc_6result6ResultB4C_NtB2y_5ErrorEB41_INtNtNtBc_3ops12control_flow11ControlFlowIB6S_B41_zEB41_ENCB2w_s_0NCINvXB8_INtB8_12GenericShuntINtB6q_3MapBQ_B8t_EIB6S_zB7h_EEB3k_8try_foldB41_NCINvNtB18_16in_place_collect24write_in_place_with_dropB4C_E0B8d_E0E0B7y_EB2A_: argument 2"}
!130 = distinct !{!130, !128, !"_RINvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6filterINtB6_6FilterINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtCsat2oUP5WrwS_6hf_hub3api8SiblingsENCNvNtCs8k3UfHgJ3Xe_15candle_datasets3hub8from_hub0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB18_13in_place_drop11InPlaceDropINtNtNtCsd5Y3rNriENo_7parquet4file17serialized_reader20SerializedFileReaderNtNtCs5Xr050g3D4S_3std2fs4FileEENCINvNtB8_3map12map_try_foldB1R_INtNtBc_6result6ResultB4C_NtB2y_5ErrorEB41_INtNtNtBc_3ops12control_flow11ControlFlowIB6S_B41_zEB41_ENCB2w_s_0NCINvXB8_INtB8_12GenericShuntINtB6q_3MapBQ_B8t_EIB6S_zB7h_EEB3k_8try_foldB41_NCINvNtB18_16in_place_collect24write_in_place_with_dropB4C_E0B8d_E0E0B7y_EB2A_: argument 1"}
!131 = distinct !{!131, !128, !"_RINvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6filterINtB6_6FilterINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtCsat2oUP5WrwS_6hf_hub3api8SiblingsENCNvNtCs8k3UfHgJ3Xe_15candle_datasets3hub8from_hub0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB18_13in_place_drop11InPlaceDropINtNtNtCsd5Y3rNriENo_7parquet4file17serialized_reader20SerializedFileReaderNtNtCs5Xr050g3D4S_3std2fs4FileEENCINvNtB8_3map12map_try_foldB1R_INtNtBc_6result6ResultB4C_NtB2y_5ErrorEB41_INtNtNtBc_3ops12control_flow11ControlFlowIB6S_B41_zEB41_ENCB2w_s_0NCINvXB8_INtB8_12GenericShuntINtB6q_3MapBQ_B8t_EIB6S_zB7h_EEB3k_8try_foldB41_NCINvNtB18_16in_place_collect24write_in_place_with_dropB4C_E0B8d_E0E0B7y_EB2A_: argument 0"}
!132 = !{!131, !130, !129}
!133 = !{!131, !130}
!134 = !{!129}
!135 = distinct !{!135, !"_RINvXsv_NtNtCsVG4f6i5f9f_4rand5distr7uniformINtNtNtCsf3Ta7LF998c_4core3ops5range7RangeTojEINtB6_11SampleRangejE13sample_singleNtNtNtBa_4rngs6thread9ThreadRngECs8k3UfHgJ3Xe_15candle_datasets"}
!136 = distinct !{!136, !135, !"_RINvXsv_NtNtCsVG4f6i5f9f_4rand5distr7uniformINtNtNtCsf3Ta7LF998c_4core3ops5range7RangeTojEINtB6_11SampleRangejE13sample_singleNtNtNtBa_4rngs6thread9ThreadRngECs8k3UfHgJ3Xe_15candle_datasets: argument 0"}
!137 = distinct !{!137, !"_RINvXs_NtNtNtCsVG4f6i5f9f_4rand5distr7uniform3intNtB5_12UniformUsizeNtB7_14UniformSampler13sample_singleNtNtNtBb_4rngs6thread9ThreadRngjjECs8k3UfHgJ3Xe_15candle_datasets"}
!138 = distinct !{!138, !137, !"_RINvXs_NtNtNtCsVG4f6i5f9f_4rand5distr7uniform3intNtB5_12UniformUsizeNtB7_14UniformSampler13sample_singleNtNtNtBb_4rngs6thread9ThreadRngjjECs8k3UfHgJ3Xe_15candle_datasets: argument 0"}
!139 = distinct !{!139, !"_RNvXs0_NtCsaVVYlBCAE9B_9rand_core5blockINtB5_8BlockRngINtNtNtCsVG4f6i5f9f_4rand4rngs9reseeding13ReseedingCoreNtNtCscHeDkCj8TjV_11rand_chacha6chacha12ChaCha12CoreNtNtB7_2os5OsRngEENtB7_7RngCore8next_u32Cs8k3UfHgJ3Xe_15candle_datasets"}
!140 = distinct !{!140, !139, !"_RNvXs0_NtCsaVVYlBCAE9B_9rand_core5blockINtB5_8BlockRngINtNtNtCsVG4f6i5f9f_4rand4rngs9reseeding13ReseedingCoreNtNtCscHeDkCj8TjV_11rand_chacha6chacha12ChaCha12CoreNtNtB7_2os5OsRngEENtB7_7RngCore8next_u32Cs8k3UfHgJ3Xe_15candle_datasets: argument 0"}
!141 = distinct !{!141, !"_RNvMs_NtCsaVVYlBCAE9B_9rand_core5blockINtB4_8BlockRngINtNtNtCsVG4f6i5f9f_4rand4rngs9reseeding13ReseedingCoreNtNtCscHeDkCj8TjV_11rand_chacha6chacha12ChaCha12CoreNtNtB6_2os5OsRngEE16generate_and_setCs8k3UfHgJ3Xe_15candle_datasets"}
!142 = distinct !{!142, !141, !"_RNvMs_NtCsaVVYlBCAE9B_9rand_core5blockINtB4_8BlockRngINtNtNtCsVG4f6i5f9f_4rand4rngs9reseeding13ReseedingCoreNtNtCscHeDkCj8TjV_11rand_chacha6chacha12ChaCha12CoreNtNtB6_2os5OsRngEE16generate_and_setCs8k3UfHgJ3Xe_15candle_datasets: argument 0"}
!143 = distinct !{!143, !"_RNvXs2_NtNtCsVG4f6i5f9f_4rand4rngs9reseedingINtB5_13ReseedingCoreNtNtCscHeDkCj8TjV_11rand_chacha6chacha12ChaCha12CoreNtNtCsaVVYlBCAE9B_9rand_core2os5OsRngENtNtB1V_5block12BlockRngCore8generateCs8k3UfHgJ3Xe_15candle_datasets"}
!144 = distinct !{!144, !143, !"_RNvXs2_NtNtCsVG4f6i5f9f_4rand4rngs9reseedingINtB5_13ReseedingCoreNtNtCscHeDkCj8TjV_11rand_chacha6chacha12ChaCha12CoreNtNtCsaVVYlBCAE9B_9rand_core2os5OsRngENtNtB1V_5block12BlockRngCore8generateCs8k3UfHgJ3Xe_15candle_datasets: argument 0"}
!145 = distinct !{!145, !"_RNvXs1_NtNtCsVG4f6i5f9f_4rand4rngs6threadNtB5_9ThreadRngNtCsaVVYlBCAE9B_9rand_core7RngCore8next_u32"}
!146 = distinct !{!146, !145, !"_RNvXs1_NtNtCsVG4f6i5f9f_4rand4rngs6threadNtB5_9ThreadRngNtCsaVVYlBCAE9B_9rand_core7RngCore8next_u32: argument 0"}
!147 = distinct !{!147, !143, !"_RNvXs2_NtNtCsVG4f6i5f9f_4rand4rngs9reseedingINtB5_13ReseedingCoreNtNtCscHeDkCj8TjV_11rand_chacha6chacha12ChaCha12CoreNtNtCsaVVYlBCAE9B_9rand_core2os5OsRngENtNtB1V_5block12BlockRngCore8generateCs8k3UfHgJ3Xe_15candle_datasets: argument 1"}
!148 = distinct !{!148, !"_RNvXs0_NtCsaVVYlBCAE9B_9rand_core5blockINtB5_8BlockRngINtNtNtCsVG4f6i5f9f_4rand4rngs9reseeding13ReseedingCoreNtNtCscHeDkCj8TjV_11rand_chacha6chacha12ChaCha12CoreNtNtB7_2os5OsRngEENtB7_7RngCore8next_u32Cs8k3UfHgJ3Xe_15candle_datasets"}
!149 = distinct !{!149, !148, !"_RNvXs0_NtCsaVVYlBCAE9B_9rand_core5blockINtB5_8BlockRngINtNtNtCsVG4f6i5f9f_4rand4rngs9reseeding13ReseedingCoreNtNtCscHeDkCj8TjV_11rand_chacha6chacha12ChaCha12CoreNtNtB7_2os5OsRngEENtB7_7RngCore8next_u32Cs8k3UfHgJ3Xe_15candle_datasets: argument 0"}
!150 = distinct !{!150, !"_RNvMs_NtCsaVVYlBCAE9B_9rand_core5blockINtB4_8BlockRngINtNtNtCsVG4f6i5f9f_4rand4rngs9reseeding13ReseedingCoreNtNtCscHeDkCj8TjV_11rand_chacha6chacha12ChaCha12CoreNtNtB6_2os5OsRngEE16generate_and_setCs8k3UfHgJ3Xe_15candle_datasets"}
!151 = distinct !{!151, !150, !"_RNvMs_NtCsaVVYlBCAE9B_9rand_core5blockINtB4_8BlockRngINtNtNtCsVG4f6i5f9f_4rand4rngs9reseeding13ReseedingCoreNtNtCscHeDkCj8TjV_11rand_chacha6chacha12ChaCha12CoreNtNtB6_2os5OsRngEE16generate_and_setCs8k3UfHgJ3Xe_15candle_datasets: argument 0"}
!152 = distinct !{!152, !"_RNvXs2_NtNtCsVG4f6i5f9f_4rand4rngs9reseedingINtB5_13ReseedingCoreNtNtCscHeDkCj8TjV_11rand_chacha6chacha12ChaCha12CoreNtNtCsaVVYlBCAE9B_9rand_core2os5OsRngENtNtB1V_5block12BlockRngCore8generateCs8k3UfHgJ3Xe_15candle_datasets"}
!153 = distinct !{!153, !152, !"_RNvXs2_NtNtCsVG4f6i5f9f_4rand4rngs9reseedingINtB5_13ReseedingCoreNtNtCscHeDkCj8TjV_11rand_chacha6chacha12ChaCha12CoreNtNtCsaVVYlBCAE9B_9rand_core2os5OsRngENtNtB1V_5block12BlockRngCore8generateCs8k3UfHgJ3Xe_15candle_datasets: argument 0"}
!154 = distinct !{!154, !"_RNvXs1_NtNtCsVG4f6i5f9f_4rand4rngs6threadNtB5_9ThreadRngNtCsaVVYlBCAE9B_9rand_core7RngCore8next_u32"}
!155 = distinct !{!155, !154, !"_RNvXs1_NtNtCsVG4f6i5f9f_4rand4rngs6threadNtB5_9ThreadRngNtCsaVVYlBCAE9B_9rand_core7RngCore8next_u32: argument 0"}
!156 = distinct !{!156, !152, !"_RNvXs2_NtNtCsVG4f6i5f9f_4rand4rngs9reseedingINtB5_13ReseedingCoreNtNtCscHeDkCj8TjV_11rand_chacha6chacha12ChaCha12CoreNtNtCsaVVYlBCAE9B_9rand_core2os5OsRngENtNtB1V_5block12BlockRngCore8generateCs8k3UfHgJ3Xe_15candle_datasets: argument 1"}
!157 = distinct !{!157, !"_RINvXsw_NtNtNtCsVG4f6i5f9f_4rand5distr7uniform3intINtB6_10UniformIntyENtB8_14UniformSampler13sample_singleNtNtNtBc_4rngs6thread9ThreadRngyyECs8k3UfHgJ3Xe_15candle_datasets"}
!158 = distinct !{!158, !157, !"_RINvXsw_NtNtNtCsVG4f6i5f9f_4rand5distr7uniform3intINtB6_10UniformIntyENtB8_14UniformSampler13sample_singleNtNtNtBc_4rngs6thread9ThreadRngyyECs8k3UfHgJ3Xe_15candle_datasets: argument 0"}
!159 = distinct !{!159, !"_RINvXsw_NtNtNtCsVG4f6i5f9f_4rand5distr7uniform3intINtB6_10UniformIntyENtB8_14UniformSampler23sample_single_inclusiveNtNtNtBc_4rngs6thread9ThreadRngyyECs8k3UfHgJ3Xe_15candle_datasets"}
!160 = distinct !{!160, !159, !"_RINvXsw_NtNtNtCsVG4f6i5f9f_4rand5distr7uniform3intINtB6_10UniformIntyENtB8_14UniformSampler23sample_single_inclusiveNtNtNtBc_4rngs6thread9ThreadRngyyECs8k3UfHgJ3Xe_15candle_datasets: argument 0"}
!161 = distinct !{!161, !"_RNvXs0_NtCsaVVYlBCAE9B_9rand_core5blockINtB5_8BlockRngINtNtNtCsVG4f6i5f9f_4rand4rngs9reseeding13ReseedingCoreNtNtCscHeDkCj8TjV_11rand_chacha6chacha12ChaCha12CoreNtNtB7_2os5OsRngEENtB7_7RngCore8next_u64Cs8k3UfHgJ3Xe_15candle_datasets"}
!162 = distinct !{!162, !161, !"_RNvXs0_NtCsaVVYlBCAE9B_9rand_core5blockINtB5_8BlockRngINtNtNtCsVG4f6i5f9f_4rand4rngs9reseeding13ReseedingCoreNtNtCscHeDkCj8TjV_11rand_chacha6chacha12ChaCha12CoreNtNtB7_2os5OsRngEENtB7_7RngCore8next_u64Cs8k3UfHgJ3Xe_15candle_datasets: argument 0"}
!163 = distinct !{!163, !"_RNvXs1_NtNtCsVG4f6i5f9f_4rand4rngs6threadNtB5_9ThreadRngNtCsaVVYlBCAE9B_9rand_core7RngCore8next_u64"}
!164 = distinct !{!164, !163, !"_RNvXs1_NtNtCsVG4f6i5f9f_4rand4rngs6threadNtB5_9ThreadRngNtCsaVVYlBCAE9B_9rand_core7RngCore8next_u64: argument 0"}
end_hunk_1
