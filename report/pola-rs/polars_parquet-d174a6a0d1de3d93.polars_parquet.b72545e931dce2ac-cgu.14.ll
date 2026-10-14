Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_parquet-d174a6a0d1de3d93.polars_parquet.b72545e931dce2ac-cgu.14?download=true
inline.NumInlined: 3543
inline.NumDeleted: 1197
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_RINvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean12BooleanArrayENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropINtNtBa_5boxed3BoxDNtB11_5ArrayEL_EENCINvNtNtB24_8adapters3map12map_try_foldBX_B3C_B32_INtNtB26_6result6ResultB32_zENCNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize6simple18page_iter_to_array0NCINvNtB8_16in_place_collect24write_in_place_with_dropB3C_E0E0B51_EB5G_:bb.a

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !25520, !noalias !25496
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !25520, !noalias !25496
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !25520, !noalias !25496
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !25521, !noalias !25496
  call void @llvm.experimental.noalias.scope.decl(metadata !25497), !dbg !25522
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !25523, !noalias !25498
  invoke fastcc void @_RNvXs3_NtCs8774dFTUdNv_12polars_arrow9datatypesNtB5_13ArrowDataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.r) #42
          to label %.noexc.i.i unwind label %bb.m, !dbg !25523, !noalias !25496

.noexc.i.i:                                       ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !25524, !noalias !25498
  invoke void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g)
          to label %bb.h unwind label %bb.g, !dbg !25524, !noalias !25498

bb.g:                                             ; preds = %.noexc.i.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b) #45
          to label %.body.i.i unwind label %bb.l, !dbg !25525, !noalias !25498

bb.h:                                             ; preds = %.noexc.i.i
  %i.af = load i64, ptr %i.s, align 8, !dbg !25526, !noalias !25498, !noundef !2656
  %i.ag = load ptr, ptr %i.t, align 8, !dbg !25527, !noalias !25498, !noundef !2656 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.ag, null, !dbg !25527
  br i1 %.not.i.i.i, label %bb.n, label %bb.i, !dbg !25528

bb.i:                                             ; preds = %bb.h
  %i.ah = load i64, ptr %i.ag, align 8, !dbg !25529, !range !2970, !noalias !25499, !noundef !2656
  %i.ai = icmp eq i64 %i.ah, 3, !dbg !25530
  br i1 %i.ai, label %bb.k, label %bb.j, !dbg !25530

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 24, !dbg !25531
  %i.ak = atomicrmw add ptr %i.aj, i64 1 monotonic, align 8, !dbg !25532, !noalias !25499 ; 0 uses
  br label %bb.k, !dbg !25533

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.al = load <2 x i64>, ptr %i.u, align 8, !dbg !25534, !noalias !25499
  %i.am = load atomic i64, ptr %i.v monotonic, align 8, !dbg !25535, !noalias !25499
  br label %bb.n, !dbg !25536

bb.l:                                             ; preds = %bb.g
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #43, !dbg !25537, !noalias !25498
  unreachable, !dbg !25537

bb.m:                                             ; preds = %bb.f
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i, !dbg !25538

.body.i.i:                                        ; preds = %bb.p, %bb.m, %bb.g
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.ae, %bb.g ], [ %i.ao, %bb.m ], [ %i.as, %bb.p ]
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow5array7struct_11StructArrayECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.g) #45
          to label %bb.c unwind label %bb.z, !dbg !25538, !noalias !25496

bb.n:                                             ; preds = %bb.k, %bb.h
  %.sroa.5.sroa.5.0.i.i.i = phi i64 [ undef, %bb.h ], [ %i.am, %bb.k ], !dbg !25539
  %i.ap = phi <2 x i64> [ undef, %bb.h ], [ %i.al, %bb.k ], !dbg !25539
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !dbg !25537, !noalias !25496
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !25537, !noalias !25496
  store i64 %i.af, ptr %i.x, align 8, !dbg !25537, !alias.scope !25497, !noalias !25496
  store ptr %i.ag, ptr %i.y, align 8, !dbg !25537, !alias.scope !25497, !noalias !25496
  store <2 x i64> %i.ap, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !dbg !25537, !alias.scope !25497, !noalias !25496
  store i64 %.sroa.5.sroa.5.0.i.i.i, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i, align 8, !dbg !25537, !alias.scope !25497, !noalias !25496
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !25525, !noalias !25498
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !25525, !noalias !25498
  call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !dbg !25540, !noalias !25500
  %i.aq = call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 32, 641) 96, i64 noundef 8) #40, !dbg !25541, !noalias !25500 ; 3 uses
  %i.ar = icmp eq ptr %i.aq, null, !dbg !25542
  br i1 %i.ar, label %bb.o, label %bb.r, !dbg !25543, !prof !2693

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 96) #39
          to label %.noexc5.i.i unwind label %bb.p, !dbg !25544, !noalias !25496

.noexc5.i.i:                                      ; preds = %bb.o
  unreachable, !dbg !25544

bb.p:                                             ; preds = %bb.o
  %i.as = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow5array7struct_11StructArrayECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.c) #45
          to label %.body.i.i unwind label %bb.q, !dbg !25545, !noalias !25496

bb.q:                                             ; preds = %bb.p
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #43, !dbg !25546, !noalias !25496
  unreachable, !dbg !25546

bb.r:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.aq, ptr noundef nonnull align 8 dereferenceable(96) %i.c, i64 96, i1 false), !dbg !25547, !noalias !25496
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !25548, !noalias !25496
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow5array7struct_11StructArrayECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.g)
          to label %bb.s unwind label %bb.d, !dbg !25538, !noalias !25496

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !25538, !noalias !25496
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.h)
          to label %bb.u unwind label %bb.t, !dbg !25549, !noalias !25490

bb.t:                                             ; preds = %bb.s
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit.i.i.i unwind label %bb.y, !dbg !25550, !noalias !25490

bb.u:                                             ; preds = %bb.s
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit2.i.i.i unwind label %bb.w, !dbg !25551, !noalias !25490

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit.i.i.i: ; preds = %bb.w, %bb.t
  %.pn.i.i.i = phi { ptr, i32 } [ %i.ax, %bb.w ], [ %i.au, %bb.t ] ; 2 uses
  %i.av = load ptr, ptr %i.q, align 8, !dbg !25552, !alias.scope !25501, !noalias !25490, !noundef !2656
  %i.aw = icmp eq ptr %i.av, null, !dbg !25552
  br i1 %i.aw, label %.body.i, label %bb.v, !dbg !25552

bb.v:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit.i.i.i
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.q)
          to label %.body.i unwind label %bb.y, !dbg !25553, !noalias !25490

bb.w:                                             ; preds = %bb.u
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit.i.i.i

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit2.i.i.i: ; preds = %bb.u
  %i.ay = load ptr, ptr %i.q, align 8, !dbg !25554, !alias.scope !25502, !noalias !25490, !noundef !2656
  %i.az = icmp eq ptr %i.ay, null, !dbg !25554
  br i1 %i.az, label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldNtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean12BooleanArrayINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtB13_5ArrayEL_EINtNtNtB24_3vec13in_place_drop11InPlaceDropB1Z_EINtNtBa_6result6ResultB2P_zENCNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize6simple18page_iter_to_array0NCINvNtB2U_16in_place_collect24write_in_place_with_dropB1Z_E0E0B4f_.exit, label %bb.x, !dbg !25554

bb.x:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit2.i.i.i
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.q)
          to label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldNtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean12BooleanArrayINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtB13_5ArrayEL_EINtNtNtB24_3vec13in_place_drop11InPlaceDropB1Z_EINtNtBa_6result6ResultB2P_zENCNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize6simple18page_iter_to_array0NCINvNtB2U_16in_place_collect24write_in_place_with_dropB1Z_E0E0B4f_.exit unwind label %bb.aa, !dbg !25555, !noalias !25490

bb.y:                                             ; preds = %bb.v, %bb.t
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #43, !dbg !25549, !noalias !25490
  unreachable, !dbg !25549

bb.z:                                             ; preds = %.body.i.i, %bb.c
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #43, !dbg !25556, !noalias !25490
  unreachable, !dbg !25556

bb.aa:                                            ; preds = %bb.x
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %.body.i, !dbg !25557

bb.ab:                                            ; preds = %.body.i
  resume { ptr, i32 } %eh.lpad-body.i, !dbg !25558

.body.i:                                          ; preds = %bb.aa, %bb.v, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit.i.i.i, %bb.c
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.bc, %bb.aa ], [ %.pn.i.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit.i.i.i ], [ %.pn.i.i.i, %bb.v ], [ %.pn.i.i, %bb.c ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsgZ49sUHp3tW_5alloc3vec13in_place_drop11InPlaceDropINtNtBN_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 dereferenceable(16) %i.i) #45
          to label %bb.ab unwind label %bb.ac, !dbg !25557, !noalias !25490

bb.ac:                                            ; preds = %.body.i
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #43, !dbg !25558, !noalias !25490
  unreachable, !dbg !25558

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldNtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean12BooleanArrayINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtB13_5ArrayEL_EINtNtNtB24_3vec13in_place_drop11InPlaceDropB1Z_EINtNtBa_6result6ResultB2P_zENCNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize6simple18page_iter_to_array0NCINvNtB2U_16in_place_collect24write_in_place_with_dropB1Z_E0E0B4f_.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit2.i.i.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !25559, !noalias !25490
  store ptr %i.aq, ptr %.sroa.4.024, align 8, !dbg !25560, !noalias !25503
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.4.024, i64 8, !dbg !25560
  store ptr @61, ptr %i.be, align 8, !dbg !25560, !noalias !25503
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.4.024, i64 16, !dbg !25561 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !25557, !noalias !25490
  %.not = icmp eq ptr %i.ab, %i.k, !dbg !25504
  br i1 %.not, label %._crit_edge, label %bb.b, !dbg !25488

._crit_edge:                                      ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldNtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean12BooleanArrayINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtB13_5ArrayEL_EINtNtNtB24_3vec13in_place_drop11InPlaceDropB1Z_EINtNtBa_6result6ResultB2P_zENCNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize6simple18page_iter_to_array0NCINvNtB2U_16in_place_collect24write_in_place_with_dropB1Z_E0E0B4f_.exit, %bb.a
  %.sroa.4.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.bf, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldNtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean12BooleanArrayINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtB13_5ArrayEL_EINtNtNtB24_3vec13in_place_drop11InPlaceDropB1Z_EINtNtBa_6result6ResultB2P_zENCNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize6simple18page_iter_to_array0NCINvNtB2U_16in_place_collect24write_in_place_with_dropB1Z_E0E0B4f_.exit ]
  %i.bg = insertvalue { ptr, ptr } poison, ptr %1, 0, !dbg !25562
  %i.bh = insertvalue { ptr, ptr } %i.bg, ptr %.sroa.4.0.lcssa, 1, !dbg !25562
  ret { ptr, ptr } %i.bh, !dbg !25563
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden { ptr, ptr } @_RINvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata19file_metadata_serde17SortingColumnWireENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropNtNtCs1gC9x3uey1Y_21polars_parquet_format14parquet_format13SortingColumnENCINvNtNtB2B_8adapters3map12map_try_foldBX_B49_B3z_INtNtB2D_6result6ResultB3z_zENvYBX_INtNtB2D_7convert4IntoB49_E4intoNCINvNtB8_16in_place_collect24write_in_place_with_dropB49_E0E0B69_EB15_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noalias nofree noundef nonnull readnone captures(none) %3, ptr nofree noundef readnone captures(none) %4) unnamed_addr #8 personality ptr @rust_eh_personality !dbg !25564 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !2656, !noundef !2656 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.c, align 8        ; 5 uses
  %.not15 = icmp eq ptr %.promoted, %i.b, !dbg !25599
  br i1 %.not15, label %bb.b, label %.lr.ph.preheader, !dbg !25589

.lr.ph.preheader:                                 ; preds = %bb.a
  %.promoted21 = ptrtoaddr ptr %.promoted to i64, !dbg !25599 ; 2 uses
  %i.d = ptrtoaddr ptr %2 to i64
  %i.e = ptrtoaddr ptr %i.b to i64, !dbg !25589
  %i.f = add i64 %i.e, -8, !dbg !25589
  %i.g = sub i64 %i.f, %.promoted21, !dbg !25589  ; 2 uses
  %i.h = lshr i64 %i.g, 3, !dbg !25589
  %i.i = add nuw nsw i64 %i.h, 1, !dbg !25589     ; 2 uses
  %min.iters.check = icmp ult i64 %i.g, 56, !dbg !25589
  %i.j = sub i64 %.promoted21, %i.d, !dbg !25589
  %diff.check = icmp ugt i64 %i.j, -32, !dbg !25589
  %or.cond = or i1 %min.iters.check, %diff.check, !dbg !25589
  br i1 %or.cond, label %.lr.ph.preheader25, label %vector.ph, !dbg !25589

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.i, 4611686018427387900      ; 3 uses
  %i.k = shl i64 %n.vec, 3                        ; 2 uses
  %i.l = getelementptr i8, ptr %2, i64 %i.k       ; 2 uses
  %i.m = getelementptr i8, ptr %.promoted, i64 %i.k ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.n = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %2, i64 %i.n  ; 2 uses
  %next.gep22 = getelementptr i8, ptr %.promoted, i64 %i.n ; 2 uses
  %i.o = getelementptr i8, ptr %next.gep22, i64 16, !dbg !25600
  %wide.load = load <2 x i64>, ptr %next.gep22, align 4, !dbg !25600
  %wide.load23 = load <2 x i64>, ptr %i.o, align 4, !dbg !25600
  %i.p = and <2 x i64> %wide.load, splat (i64 281474976710655), !dbg !25601
  %i.q = and <2 x i64> %wide.load23, splat (i64 281474976710655), !dbg !25601
  %i.r = getelementptr i8, ptr %next.gep, i64 16, !dbg !25602
  store <2 x i64> %i.p, ptr %next.gep, align 4, !dbg !25602
  store <2 x i64> %i.q, ptr %i.r, align 4, !dbg !25602
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec, !dbg !25589
  br i1 %i.s, label %middle.block, label %vector.body, !dbg !25589, !llvm.loop !25582

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.i, %n.vec, !dbg !25589
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader25, !dbg !25589

.lr.ph.preheader25:                               ; preds = %.lr.ph.preheader, %middle.block
  %.sroa.4.016.ph = phi ptr [ %2, %.lr.ph.preheader ], [ %i.l, %middle.block ]
  %.ph = phi ptr [ %.promoted, %.lr.ph.preheader ], [ %i.m, %middle.block ]
  br label %.lr.ph, !dbg !25589

.lr.ph:                                           ; preds = %.lr.ph.preheader25, %.lr.ph
  %.sroa.4.016 = phi ptr [ %i.v, %.lr.ph ], [ %.sroa.4.016.ph, %.lr.ph.preheader25 ] ; 2 uses
  %i.t = phi ptr [ %i.u, %.lr.ph ], [ %.ph, %.lr.ph.preheader25 ] ; 2 uses
  %.sroa.01.0.copyload = load i64, ptr %i.t, align 4, !dbg !25600
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8, !dbg !25603 ; 3 uses
  %.sroa.03.0.insert.insert.i.i.i.i = and i64 %.sroa.01.0.copyload, 281474976710655, !dbg !25601
  store i64 %.sroa.03.0.insert.insert.i.i.i.i, ptr %.sroa.4.016, align 4, !dbg !25602
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.4.016, i64 8, !dbg !25604 ; 2 uses
  %.not = icmp eq ptr %i.u, %i.b, !dbg !25599
  br i1 %.not, label %._crit_edge, label %.lr.ph, !dbg !25589, !llvm.loop !25586

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %.lcssa20 = phi ptr [ %i.m, %middle.block ], [ %i.u, %.lr.ph ], !dbg !25603
  %.lcssa = phi ptr [ %i.l, %middle.block ], [ %i.v, %.lr.ph ], !dbg !25604
  store ptr %.lcssa20, ptr %i.c, align 8, !dbg !25605
  br label %bb.b, !dbg !25589

bb.b:                                             ; preds = %._crit_edge, %bb.a
  %.sroa.4.0.lcssa = phi ptr [ %.lcssa, %._crit_edge ], [ %2, %bb.a ]
  %i.w = insertvalue { ptr, ptr } poison, ptr %1, 0, !dbg !25606
  %i.x = insertvalue { ptr, ptr } %i.w, ptr %.sroa.4.0.lcssa, 1, !dbg !25606
  ret { ptr, ptr } %i.x, !dbg !25607
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata19file_metadata_serde9ChunkWireENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB2s_8adapters3map8map_foldBX_NtNtB11_7compact18CompactColumnChunkuNCNvBZ_12rg_from_wire0NCINvNvB2m_8for_each4callB3Z_NCINvMsj_B8_INtB8_3VecB3Z_E14extend_trustedINtB3s_3MapBI_B4A_EE0E0E0EB15_(ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !25608 {
bb.a:
  %i.a = alloca [208 x i8], align 8               ; 4 uses
  %i.b = alloca [96 x i8], align 8                ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !2656, !noundef !2656 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.e, align 8        ; 2 uses
  %.not6 = icmp eq ptr %.promoted, %i.d, !dbg !25663
  br i1 %.not6, label %.._crit_edge_crit_edge, label %.lr.ph, !dbg !25652

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val5.pre = load i64, ptr %.phi.trans.insert, align 8, !dbg !25664
  br label %._crit_edge, !dbg !25652

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val.i = load ptr, ptr %i.f, align 8, !alias.scope !25654, !noalias !25655, !nonnull !2656, !align !2980, !noundef !2656
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.promoted7 = load i64, ptr %i.i, align 8
  br label %bb.b, !dbg !25652

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.val3 = phi i64 [ %.promoted7, %.lr.ph ], [ %i.n, %bb.d ] ; 3 uses
  %i.j = phi ptr [ %.promoted, %.lr.ph ], [ %i.k, %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !25665
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(96) %i.j, i64 96, i1 false), !dbg !25666
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 96, !dbg !25667 ; 3 uses
  store ptr %i.k, ptr %i.e, align 8, !dbg !25668
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25654), !dbg !25665
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !25669, !noalias !25660
  invoke void @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata19file_metadata_serde15chunk_from_wire(ptr noalias noundef nonnull sret([208 x i8]) align 8 captures(none) dereferenceable(208) %i.a, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(96) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i)
          to label %bb.d unwind label %bb.c, !dbg !25670

._crit_edge:                                      ; preds = %bb.d, %.._crit_edge_crit_edge
  %.val5 = phi i64 [ %.val5.pre, %.._crit_edge_crit_edge ], [ %i.n, %bb.d ], !dbg !25664
  %.val4 = load ptr, ptr %1, align 8, !dbg !25664, !nonnull !2656, !align !2980, !noundef !2656
  store i64 %.val5, ptr %.val4, align 8, !dbg !25671
  tail call void @_RNvXse_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata19file_metadata_serde9ChunkWireENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropB14_(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %0), !dbg !25672
  ret void, !dbg !25673

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  %.val = load ptr, ptr %1, align 8, !dbg !25664, !nonnull !2656, !align !2980, !noundef !2656
  store i64 %.val3, ptr %.val, align 8, !dbg !25674
  invoke void @_RNvXse_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata19file_metadata_serde9ChunkWireENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropB14_(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata19file_metadata_serde9ChunkWireEEB1C_.exit unwind label %bb.e, !dbg !25675

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw [208 x i8], ptr %i.h, i64 %.val3, !dbg !25676
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.m, ptr noundef nonnull readonly align 8 dereferenceable(208) %i.a, i64 208, i1 false), !dbg !25677, !noalias !25662
  %i.n = add i64 %.val3, 1, !dbg !25678           ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !25679, !noalias !25660
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !25680
  %.not = icmp eq ptr %i.k, %i.d, !dbg !25663
  br i1 %.not, label %._crit_edge, label %bb.b, !dbg !25652

bb.e:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #43, !dbg !25681
  unreachable, !dbg !25681

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata19file_metadata_serde9ChunkWireEEB1C_.exit: ; preds = %bb.c
  resume { ptr, i32 } %i.l, !dbg !25681
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata7compact15CompactRowGroupENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB2m_8adapters3map12map_try_foldBX_INtNtB2o_6result6ResultNtNtB11_12row_metadata16RowGroupMetadataNtNtB13_5error12ParquetErrorEuINtNtNtB2o_3ops12control_flow11ControlFlowIB5y_B4p_EENCNvMNtB11_13file_metadataNtB6t_12FileMetadata12from_compact0NCINvXB3s_INtB3s_12GenericShuntINtB3q_3MapBI_B6o_EIB43_NtNtB2o_7convert10InfallibleB53_EEB2g_8try_folduNCINvNvB2g_12try_for_each4callB4p_B6d_NcNtB6d_5Break0E0B6d_E0E0B5x_EB15_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !25682 {
bb.a:
  %.sroa.4.i.sroa.0.i = alloca [64 x i8], align 8 ; 3 uses
  %i.a = alloca [104 x i8], align 8               ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.c = alloca [64 x i8], align 8                ; 5 uses
  %.sroa.9 = alloca [24 x i8], align 8            ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !25742
  %i.e = load ptr, ptr %i.d, align 8, !dbg !25743, !nonnull !2656, !noundef !2656
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !25744 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !dbg !25744, !nonnull !2656, !noundef !2656 ; 3 uses
  %.not = icmp eq ptr %i.g, %i.e, !dbg !25744
  br i1 %.not, label %bb.g, label %bb.b, !dbg !25729

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !25745, !noalias !25731
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %i.g, i64 64, i1 false), !dbg !25746
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 64, !dbg !25747
  store ptr %i.h, ptr %i.f, align 8, !dbg !25748
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !25749
  %.val = load ptr, ptr %i.i, align 8, !dbg !25749 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !25749
  %.val3 = load ptr, ptr %i.j, align 8, !dbg !25749, !nonnull !2656, !align !2980, !noundef !2656 ; 2 uses
  %.val.i = load ptr, ptr %.val3, align 8, !dbg !25745, !noalias !25731, !nonnull !2656, !align !2980, !noundef !2656
  %i.k = getelementptr i8, ptr %.val3, i64 8, !dbg !25745
  %.val2.i = load ptr, ptr %i.k, align 8, !dbg !25745, !noalias !25731 ; 3 uses
  call void @_RNvMNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata12row_metadataNtB2_16RowGroupMetadata12from_compact(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.val.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.c), !dbg !25750
  %i.l = load i64, ptr %i.a, align 8, !dbg !25751, !range !2967, !noundef !2656 ; 2 uses
  %i.m = icmp eq i64 %i.l, -9223372036854775807, !dbg !25751
  br i1 %i.m, label %bb.c, label %bb.e, !dbg !25752

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !25753, !noalias !25731
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.n = load i64, ptr %.val, align 8, !dbg !25754, !range !3036, !alias.scope !25736, !noalias !25737, !noundef !2656
  %i.o = icmp eq i64 %i.n, -9223372036854775803, !dbg !25754
  br i1 %i.o, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5error12ParquetErrorEEEB1V_.exit.i.i, label %bb.d, !dbg !25754

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5error12ParquetErrorEBM_(ptr noalias noundef nonnull align 8 dereferenceable(32) %.val)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5error12ParquetErrorEEEB1V_.exit.i.i unwind label %bb.f, !dbg !25755, !noalias !25737

bb.e:                                             ; preds = %bb.b
  %.sroa.67.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !25756
  %.sroa.4.i.sroa.0.32..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i.sroa.0.i, i64 32, !dbg !25757
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.i.sroa.0.32..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.67.0..sroa_idx.i.i, i64 32, i1 false), !dbg !25756
  %.sroa.67.sroa.5.0..sroa.67.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 72, !dbg !25756
  %.sroa.67.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.67.sroa.5.0..sroa.67.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !25756 ; 2 uses
  %.sroa.67.sroa.6.0..sroa.67.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 80, !dbg !25756
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.67.sroa.6.0..sroa.67.0..sroa_idx.sroa_idx.i.i, i64 24, i1 false), !dbg !25756
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  %i.p = load i64, ptr %.val2.i, align 8, !dbg !25758, !noalias !25738, !noundef !2656
  %.sroa.0.0.i.i.i = call noundef i64 @llvm.umax.i64(i64 %.sroa.67.sroa.5.0.copyload.i.i, i64 %i.p), !dbg !25759
  store i64 %.sroa.0.0.i.i.i, ptr %.val2.i, align 8, !dbg !25760, !noalias !25738
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !25753, !noalias !25731
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5error12ParquetErrorEEEB1V_.exit.i.i, !dbg !25761

bb.f:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
end_hunk_0
