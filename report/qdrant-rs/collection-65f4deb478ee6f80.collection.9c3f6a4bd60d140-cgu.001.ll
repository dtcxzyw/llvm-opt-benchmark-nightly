Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/collection-65f4deb478ee6f80.collection.9c3f6a4bd60d140-cgu.001?download=true
inline.NumInlined: 10308
inline.NumDeleted: 5297
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecmE16extend_desugaredINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter6FilterINtCsgNzSnKyKfuE_6either6EitherIB11_INtNtNtB19_3ops5range5RangemENCNvMNtNtCs607s0NAIaWN_7segment10id_tracker14point_mappingsNtB32_13PointMappings13iter_internal0EIB1V_IB11_B2u_NCNvMNtNtB34_10compressed25compressed_point_mappingsNtB4P_23CompressedPointMappings13iter_internal0EIB11_B2u_NCNvMs0_NtNtB34_15disk_id_tracker8mappingsINtB6D_15DiskMappingsRefNtNtNtCslmvYCXbQjWR_6common12universal_io4mmap8MmapFileE13iter_internal0EEENCNvMs0_NtNtB34_15id_tracker_base18point_mappings_refINtB8U_20PointMappingsRefEnumB7z_E23iter_internal_excluding0EECsPYQCUnoTxQ_10collection:bb.a
  ret void

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !951
  call void @_RNvXs0_NtCsgNzSnKyKfuE_6either8iteratorINtB7_6EitherINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter6FilterINtNtNtBX_3ops5range5RangemENCNvMNtNtCs607s0NAIaWN_7segment10id_tracker14point_mappingsNtB2f_13PointMappings13iter_internal0EIBC_IBP_B1I_NCNvMNtNtB2h_10compressed25compressed_point_mappingsNtB40_23CompressedPointMappings13iter_internal0EIBP_B1I_NCNvMs0_NtNtB2h_15disk_id_tracker8mappingsINtB5N_15DiskMappingsRefNtNtNtCslmvYCXbQjWR_6common12universal_io4mmap8MmapFileE13iter_internal0EEENtNtNtBV_6traits8iterator8Iterator9size_hintCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1), !noalias !952
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !951
  %i.m = load i64, ptr %i.f, align 8, !alias.scope !953, !noundef !32 ; 2 uses
  %i.n = load i64, ptr %0, align 8, !range !38, !alias.scope !953, !noundef !32
  %i.o = icmp eq i64 %i.n, %i.m
  br i1 %i.o, label %bb.d, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecmE7reserveCsPYQCUnoTxQ_10collection.exit, !prof !36

bb.d:                                             ; preds = %bb.c
  call void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.m, i64 noundef 1, i64 noundef 4, i64 noundef 4)
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecmE7reserveCsPYQCUnoTxQ_10collection.exit

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecmE7reserveCsPYQCUnoTxQ_10collection.exit: ; preds = %bb.d, %bb.c, %bb.b
  %i.p = load ptr, ptr %i.g, align 8, !nonnull !32, !noundef !32
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.i
  store i32 %i.h, ptr %i.q, align 4
  %i.r = add nuw nsw i64 %i.i, 1
  store i64 %i.r, ptr %i.f, align 8
  %i.s = call { i32, i32 } @_RINvXs0_NtCsgNzSnKyKfuE_6either8iteratorINtB8_6EitherINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter6FilterINtNtNtBY_3ops5range5RangemENCNvMNtNtCs607s0NAIaWN_7segment10id_tracker14point_mappingsNtB2g_13PointMappings13iter_internal0EIBD_IBQ_B1J_NCNvMNtNtB2i_10compressed25compressed_point_mappingsNtB41_23CompressedPointMappings13iter_internal0EIBQ_B1J_NCNvMs0_NtNtB2i_15disk_id_tracker8mappingsINtB5O_15DiskMappingsRefNtNtNtCslmvYCXbQjWR_6common12universal_io4mmap8MmapFileE13iter_internal0EEENtNtNtBW_6traits8iterator8Iterator4findQNCNvMs0_NtNtB2i_15id_tracker_base18point_mappings_refINtB8J_20PointMappingsRefEnumB6K_E23iter_internal_excluding0ECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) ; 2 uses
  %i.t = extractvalue { i32, i32 } %i.s, 0
  %i.u = trunc i32 %i.t to i1
  br i1 %i.u, label %bb.b, label %._crit_edge
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsexYYUdYSQU6_5alloc3vec9from_elemINtB2_3VecIBD_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEEECsPYQCUnoTxQ_10collection(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !965
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !965
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %2, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
          to label %.noexc.i unwind label %bb.q, !noalias !965

.noexc.i:                                         ; preds = %bb.a
  %i.g = load i64, ptr %i.d, align 8, !range !41, !noalias !965, !noundef !32
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !42, !noalias !965, !noundef !32 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.h, label %bb.b, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecIBv_IBv_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEEE7reserveCsPYQCUnoTxQ_10collection.exit.i.i, !prof !36

bb.b:                                             ; preds = %.noexc.i
  %i.l = load i64, ptr %i.k, align 8, !noalias !965
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.l) #30
          to label %.noexc3.i unwind label %bb.q, !noalias !965

.noexc3.i:                                        ; preds = %bb.b
  unreachable

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecIBv_IBv_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEEE7reserveCsPYQCUnoTxQ_10collection.exit.i.i: ; preds = %.noexc.i
  %i.m = load ptr, ptr %i.k, align 8, !noalias !965, !nonnull !32, !noundef !32 ; 3 uses
  %i.n = icmp ule i64 %2, %i.j
  tail call void @llvm.assume(i1 %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !965
  store i64 %i.j, ptr %i.f, align 8, !noalias !965
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.m, ptr %i.o, align 8, !noalias !965
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !965
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !noalias !966
  tail call void @llvm.experimental.noalias.scope.decl(metadata !967)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !968)
  %i.q = icmp ugt i64 %2, 1
  br i1 %i.q, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecIBv_IBv_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEEE7reserveCsPYQCUnoTxQ_10collection.exit.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.val14.i.i = load ptr, ptr %i.r, align 8, !alias.scope !968, !noalias !969, !nonnull !32, !noundef !32 ; 2 uses
  %.val15.i.i = load i64, ptr %i.s, align 8, !alias.scope !968, !noalias !969, !noundef !32 ; 4 uses
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %.val14.i.i, i64 %.val15.i.i
  br label %bb.c

._crit_edge.i.i:                                  ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecIBv_IBv_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEEE7reserveCsPYQCUnoTxQ_10collection.exit.i.i
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %bb.i, label %._crit_edge.thread.i.i

bb.c:                                             ; preds = %.loopexit.i.i, %.lr.ph.i.i
  %.sroa.0.039.i.i = phi ptr [ %i.m, %.lr.ph.i.i ], [ %i.ap, %.loopexit.i.i ] ; 2 uses
  %.sroa.03.038.i.i = phi i64 [ 1, %.lr.ph.i.i ], [ %i.ao, %.loopexit.i.i ]
  %storemerge36.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.aq, %.loopexit.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !970
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !970
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 384307168202282326) %.val15.i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
          to label %.noexc16.i.i unwind label %.loopexit22.i.i, !noalias !971

.noexc16.i.i:                                     ; preds = %bb.c
  %i.y = load i64, ptr %i.a, align 8, !range !41, !noalias !970, !noundef !32
  %i.z = trunc nuw i64 %i.y to i1
  %i.aa = load i64, ptr %i.t, align 8, !range !42, !noalias !970, !noundef !32 ; 5 uses
  br i1 %i.z, label %bb.d, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsPYQCUnoTxQ_10collection.exit.i.i.i.i, !prof !36

bb.d:                                             ; preds = %.noexc16.i.i
  %i.ab = load i64, ptr %i.u, align 8, !noalias !970
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.aa, i64 %i.ab) #30
          to label %.noexc17.i.i unwind label %.loopexit.split-lp.i.i, !noalias !971

.noexc17.i.i:                                     ; preds = %bb.d
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsPYQCUnoTxQ_10collection.exit.i.i.i.i: ; preds = %.noexc16.i.i
  %i.ac = load ptr, ptr %i.u, align 8, !noalias !970, !nonnull !32, !noundef !32 ; 2 uses
  %i.ad = icmp ule i64 %.val15.i.i, %i.aa
  tail call void @llvm.assume(i1 %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !970
  store i64 %i.aa, ptr %i.c, align 8, !noalias !970
  store ptr %i.ac, ptr %i.v, align 8, !noalias !970
  %i.ae = icmp eq i64 %i.aa, 0
  br i1 %i.ae, label %.loopexit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsPYQCUnoTxQ_10collection.exit.i.i.i.i, %bb.f
  %.sroa.012.023.i.i.i.i = phi ptr [ %i.ai, %bb.f ], [ %.val14.i.i, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsPYQCUnoTxQ_10collection.exit.i.i.i.i ] ; 3 uses
  %.sroa.7.022.i.i.i.i = phi i64 [ %i.ah, %bb.f ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsPYQCUnoTxQ_10collection.exit.i.i.i.i ] ; 3 uses
  %.sroa.10.021.i.i.i.i = phi i64 [ %i.af, %bb.f ], [ %i.aa, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsPYQCUnoTxQ_10collection.exit.i.i.i.i ]
  %i.af = add i64 %.sroa.10.021.i.i.i.i, -1       ; 2 uses
  %i.ag = icmp eq ptr %.sroa.012.023.i.i.i.i, %i.x
  br i1 %i.ag, label %.loopexit.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !970
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.012.023.i.i.i.i)
          to label %bb.f unwind label %bb.h, !noalias !972

bb.f:                                             ; preds = %bb.e
  %i.ah = add nuw nsw i64 %.sroa.7.022.i.i.i.i, 1
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i.i.i.i, i64 24
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %.sroa.7.022.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !973
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !970
  %i.ak = icmp eq i64 %i.af, 0
  br i1 %i.ak, label %.loopexit.i.i, label %.lr.ph.i.i.i.i

bb.g:                                             ; preds = %bb.h
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27, !noalias !973
  unreachable

bb.h:                                             ; preds = %bb.e
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.022.i.i.i.i, ptr %i.w, align 8, !noalias !970
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEEECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #29
          to label %bb.m unwind label %bb.g, !noalias !973

bb.i:                                             ; preds = %._crit_edge.i.i
  store i64 0, ptr %i.p, align 8, !alias.scope !967, !noalias !971
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecIBw_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEEECsPYQCUnoTxQ_10collection.exit.i.i unwind label %bb.j, !noalias !966

bb.j:                                             ; preds = %bb.i
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body.i unwind label %bb.k, !noalias !965

bb.k:                                             ; preds = %bb.j
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27, !noalias !965
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEEECsPYQCUnoTxQ_10collection.exit.i.i: ; preds = %bb.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemINtB5_3VecIBM_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECsPYQCUnoTxQ_10collection.exit unwind label %bb.n, !noalias !965

._crit_edge.thread.i.i:                           ; preds = %.loopexit.i.i, %._crit_edge.i.i
  %.sroa.0.0.lcssa57.i.i = phi ptr [ %i.m, %._crit_edge.i.i ], [ %i.ap, %.loopexit.i.i ]
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.lcssa57.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !965
  store i64 %2, ptr %i.p, align 8, !alias.scope !967, !noalias !971
  br label %_RINvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemINtB5_3VecIBM_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECsPYQCUnoTxQ_10collection.exit

.loopexit22.i.i:                                  ; preds = %bb.c
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

.loopexit.split-lp.i.i:                           ; preds = %bb.d
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

.loopexit.i.i:                                    ; preds = %bb.f, %.lr.ph.i.i.i.i, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsPYQCUnoTxQ_10collection.exit.i.i.i.i
  store i64 %.val15.i.i, ptr %i.w, align 8, !noalias !970
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.039.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !971
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !970
  %i.ao = add nuw i64 %.sroa.03.038.i.i, 1        ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.039.i.i, i64 24 ; 2 uses
  %i.aq = add nuw nsw i64 %storemerge36.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %i.ao, %2
  br i1 %exitcond.not.i.i, label %._crit_edge.thread.i.i, label %bb.c

bb.l:                                             ; preds = %bb.m
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27, !noalias !965
  unreachable

bb.m:                                             ; preds = %.loopexit.split-lp.i.i, %.loopexit22.i.i, %bb.h
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i, %bb.h ], [ %lpad.loopexit.i.i, %.loopexit22.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  store i64 %storemerge36.i.i, ptr %i.p, align 8, !alias.scope !967, !noalias !971
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEEECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #29
          to label %.body.i unwind label %bb.l, !noalias !965

bb.n:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEEECsPYQCUnoTxQ_10collection.exit.i.i
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.n, %bb.m, %bb.j
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.as, %bb.n ], [ %i.am, %bb.j ], [ %eh.lpad-body.i.i, %bb.m ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_IBC_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEEEECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #29
          to label %bb.p unwind label %bb.o, !noalias !965

bb.o:                                             ; preds = %bb.q, %.body.i
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27, !noalias !966
  unreachable

bb.p:                                             ; preds = %bb.q, %.body.i
  %.pn7.i = phi { ptr, i32 } [ %i.au, %bb.q ], [ %eh.lpad-body.i, %.body.i ]
  resume { ptr, i32 } %.pn7.i

bb.q:                                             ; preds = %bb.b, %bb.a
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEEECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #29
          to label %bb.p unwind label %bb.o, !noalias !966

_RINvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemINtB5_3VecIBM_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECsPYQCUnoTxQ_10collection.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEEECsPYQCUnoTxQ_10collection.exit.i.i, %._crit_edge.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !965
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !974
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !965
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsexYYUdYSQU6_5alloc3vec9from_elemINtB2_3VecbEECsPYQCUnoTxQ_10collection(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !986
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !986
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %2, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
          to label %.noexc.i unwind label %bb.g, !noalias !986

.noexc.i:                                         ; preds = %bb.a
  %i.e = load i64, ptr %i.b, align 8, !range !41, !noalias !986, !noundef !32
  %i.f = trunc nuw i64 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !42, !noalias !986, !noundef !32 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.f, label %bb.b, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecIBv_bEE7reserveCsPYQCUnoTxQ_10collection.exit.i.i, !prof !36

bb.b:                                             ; preds = %.noexc.i
  %i.j = load i64, ptr %i.i, align 8, !noalias !986
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.h, i64 %i.j) #30
          to label %.noexc3.i unwind label %bb.g, !noalias !986

.noexc3.i:                                        ; preds = %bb.b
  unreachable

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecIBv_bEE7reserveCsPYQCUnoTxQ_10collection.exit.i.i: ; preds = %.noexc.i
  %i.k = load ptr, ptr %i.i, align 8, !noalias !986, !nonnull !32, !noundef !32 ; 4 uses
  %i.l = icmp ule i64 %2, %i.h
  tail call void @llvm.assume(i1 %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !986
  store i64 %i.h, ptr %i.d, align 8, !noalias !986
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.k, ptr %i.m, align 8, !noalias !986
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !986
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !noalias !987
  tail call void @llvm.experimental.noalias.scope.decl(metadata !988)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !989)
  %i.o = icmp ugt i64 %2, 1
  br i1 %i.o, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecIBv_bEE7reserveCsPYQCUnoTxQ_10collection.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %.val14.i.i = load ptr, ptr %i.p, align 8, !alias.scope !989, !noalias !990, !nonnull !32, !noundef !32
  %.val15.i.i = load i64, ptr %i.q, align 8, !alias.scope !989, !noalias !990, !noundef !32 ; 5 uses
  %.not.i.i.i.i = icmp eq i64 %.val15.i.i, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.i.split.us.i, label %.lr.ph.i.split.i

.lr.ph.i.split.us.i:                              ; preds = %.lr.ph.i.i, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsPYQCUnoTxQ_10collection.exit.i.i.i.us.i
  %.sroa.0.032.i.us.i = phi ptr [ %i.y, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsPYQCUnoTxQ_10collection.exit.i.i.i.us.i ], [ %i.k, %.lr.ph.i.i ] ; 4 uses
  %.sroa.03.031.i.us.i = phi i64 [ %i.x, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsPYQCUnoTxQ_10collection.exit.i.i.i.us.i ], [ 1, %.lr.ph.i.i ]
  %storemerge30.i.us.i = phi i64 [ %i.z, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsPYQCUnoTxQ_10collection.exit.i.i.i.us.i ], [ 0, %.lr.ph.i.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !991
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) 0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc16.i.us.i unwind label %.loopexit.i.split.us.i, !noalias !992

.noexc16.i.us.i:                                  ; preds = %.lr.ph.i.split.us.i
  %i.t = load i64, ptr %i.a, align 8, !range !41, !noalias !991, !noundef !32
  %i.u = trunc nuw i64 %i.t to i1
  %i.v = load i64, ptr %i.r, align 8, !range !42, !noalias !991, !noundef !32 ; 2 uses
  br i1 %i.u, label %.split.us.i, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsPYQCUnoTxQ_10collection.exit.i.i.i.us.i, !prof !36

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsPYQCUnoTxQ_10collection.exit.i.i.i.us.i: ; preds = %.noexc16.i.us.i
  %i.w = load ptr, ptr %i.s, align 8, !noalias !991, !nonnull !32, !noundef !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !991
  %i.x = add nuw i64 %.sroa.03.031.i.us.i, 1      ; 2 uses
  store i64 %i.v, ptr %.sroa.0.032.i.us.i, align 8, !noalias !992
  %.sroa.4.0..sroa.0.0.sroa_idx.i.us.i = getelementptr inbounds nuw i8, ptr %.sroa.0.032.i.us.i, i64 8
  store ptr %i.w, ptr %.sroa.4.0..sroa.0.0.sroa_idx.i.us.i, align 8, !noalias !992
  %.sroa.5.0..sroa.0.0.sroa_idx.i.us.i = getelementptr inbounds nuw i8, ptr %.sroa.0.032.i.us.i, i64 16
  store i64 0, ptr %.sroa.5.0..sroa.0.0.sroa_idx.i.us.i, align 8, !noalias !992
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.032.i.us.i, i64 24 ; 2 uses
  %i.z = add nuw nsw i64 %storemerge30.i.us.i, 1
  %exitcond.not.i.us.i = icmp eq i64 %i.x, %2
  br i1 %exitcond.not.i.us.i, label %._crit_edge.thread.i.i, label %.lr.ph.i.split.us.i

.loopexit.i.split.us.i:                           ; preds = %.lr.ph.i.split.us.i
  %lpad.loopexit.i.us.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i.i

._crit_edge.i.i:                                  ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecIBv_bEE7reserveCsPYQCUnoTxQ_10collection.exit.i.i
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %bb.c, label %._crit_edge.thread.i.i

.lr.ph.i.split.i:                                 ; preds = %.lr.ph.i.i, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsPYQCUnoTxQ_10collection.exit.i.i.i.i
  %.sroa.0.032.i.i = phi ptr [ %i.ah, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsPYQCUnoTxQ_10collection.exit.i.i.i.i ], [ %i.k, %.lr.ph.i.i ] ; 4 uses
  %.sroa.03.031.i.i = phi i64 [ %i.ag, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsPYQCUnoTxQ_10collection.exit.i.i.i.i ], [ 1, %.lr.ph.i.i ]
  %storemerge30.i.i = phi i64 [ %i.ai, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsPYQCUnoTxQ_10collection.exit.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !991
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %.val15.i.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc16.i.i unwind label %.loopexit.i.split.i, !noalias !992

.noexc16.i.i:                                     ; preds = %.lr.ph.i.split.i
  %i.aa = load i64, ptr %i.a, align 8, !range !41, !noalias !991, !noundef !32
  %i.ab = trunc nuw i64 %i.aa to i1
  %i.ac = load i64, ptr %i.r, align 8, !range !42, !noalias !991, !noundef !32 ; 3 uses
  br i1 %i.ab, label %.split.us.i, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsPYQCUnoTxQ_10collection.exit.i.i.i.i, !prof !36

.split.us.i:                                      ; preds = %.noexc16.i.i, %.noexc16.i.us.i
  %.us-phi16.i = phi i64 [ %i.v, %.noexc16.i.us.i ], [ %i.ac, %.noexc16.i.i ]
  %.us-phi17.i = phi i64 [ %storemerge30.i.us.i, %.noexc16.i.us.i ], [ %storemerge30.i.i, %.noexc16.i.i ]
  %i.ad = load i64, ptr %i.s, align 8, !noalias !991
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %.us-phi16.i, i64 %i.ad) #30
          to label %.noexc17.i.i unwind label %.loopexit.split-lp.i.i, !noalias !992

.noexc17.i.i:                                     ; preds = %.split.us.i
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsPYQCUnoTxQ_10collection.exit.i.i.i.i: ; preds = %.noexc16.i.i
  %i.ae = load ptr, ptr %i.s, align 8, !noalias !991, !nonnull !32, !noundef !32 ; 2 uses
  %i.af = icmp ule i64 %.val15.i.i, %i.ac
  tail call void @llvm.assume(i1 %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !991
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ae, ptr nonnull readonly align 1 %.val14.i.i, i64 range(i64 0, -9223372036854775808) %.val15.i.i, i1 false), !noalias !993
  %i.ag = add nuw i64 %.sroa.03.031.i.i, 1        ; 2 uses
  store i64 %i.ac, ptr %.sroa.0.032.i.i, align 8, !noalias !992
  %.sroa.4.0..sroa.0.0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.032.i.i, i64 8
  store ptr %i.ae, ptr %.sroa.4.0..sroa.0.0.sroa_idx.i.i, align 8, !noalias !992
  %.sroa.5.0..sroa.0.0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.032.i.i, i64 16
  store i64 %.val15.i.i, ptr %.sroa.5.0..sroa.0.0.sroa_idx.i.i, align 8, !noalias !992
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.032.i.i, i64 24 ; 2 uses
  %i.ai = add nuw nsw i64 %storemerge30.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %i.ag, %2
  br i1 %exitcond.not.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.i.split.i

bb.c:                                             ; preds = %._crit_edge.i.i
  store i64 0, ptr %i.n, align 8, !alias.scope !988, !noalias !992
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecbENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemINtB5_3VecbENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECsPYQCUnoTxQ_10collection.exit unwind label %bb.e, !noalias !986

._crit_edge.thread.i.i:                           ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsPYQCUnoTxQ_10collection.exit.i.i.i.i, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsPYQCUnoTxQ_10collection.exit.i.i.i.us.i, %._crit_edge.i.i
  %.sroa.0.0.lcssa46.i.i = phi ptr [ %i.k, %._crit_edge.i.i ], [ %i.y, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsPYQCUnoTxQ_10collection.exit.i.i.i.us.i ], [ %i.ah, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsPYQCUnoTxQ_10collection.exit.i.i.i.i ]
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.lcssa46.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !986
  store i64 %2, ptr %i.n, align 8, !alias.scope !988, !noalias !992
  br label %_RINvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemINtB5_3VecbENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECsPYQCUnoTxQ_10collection.exit

.loopexit.i.split.i:                              ; preds = %.lr.ph.i.split.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i.i

.loopexit.split-lp.i.i:                           ; preds = %.split.us.i
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i.i

bb.d:                                             ; preds = %.loopexit.i.i
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27, !noalias !986
  unreachable

.loopexit.i.i:                                    ; preds = %.loopexit.split-lp.i.i, %.loopexit.i.split.i, %.loopexit.i.split.us.i
  %storemerge30.i12.i = phi i64 [ %.us-phi17.i, %.loopexit.split-lp.i.i ], [ %storemerge30.i.i, %.loopexit.i.split.i ], [ %storemerge30.i.us.i, %.loopexit.i.split.us.i ]
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ], [ %lpad.loopexit.i.i, %.loopexit.i.split.i ], [ %lpad.loopexit.i.us.i, %.loopexit.i.split.us.i ]
  store i64 %storemerge30.i12.i, ptr %i.n, align 8, !alias.scope !988, !noalias !992
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecbENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body.i unwind label %bb.d, !noalias !986

bb.e:                                             ; preds = %bb.c
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.e, %.loopexit.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ak, %bb.e ], [ %lpad.phi.i.i, %.loopexit.i.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_bEEECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #29
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecbEECsPYQCUnoTxQ_10collection.exit.i unwind label %bb.f, !noalias !986

bb.f:                                             ; preds = %bb.g, %.body.i
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27, !noalias !987
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecbEECsPYQCUnoTxQ_10collection.exit.i: ; preds = %bb.g, %.body.i
  %.pn8.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.am, %bb.g ]
  resume { ptr, i32 } %.pn8.i

bb.g:                                             ; preds = %bb.b, %bb.a
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecbENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecbEECsPYQCUnoTxQ_10collection.exit.i unwind label %bb.f, !noalias !987

_RINvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemINtB5_3VecbENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECsPYQCUnoTxQ_10collection.exit: ; preds = %bb.c, %._crit_edge.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !986
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !994
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !986
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs2WYkopDsXpd_4slab5EntryINtNtNtNtCsgwvynAR9gqy_2h25proto7streams6buffer4SlotINtNtB1c_5frame5FrameINtNtNtCs3WWrd2JY12C_5hyper5proto2h27SendBufNtNtCs14kzo5Se9zC_5bytes5bytes5BytesEEEEECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(312) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !43, !noundef !32
  %i.b = icmp eq i64 %i.a, 2
  br i1 %i.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsgwvynAR9gqy_2h25proto7streams6buffer4SlotINtNtBK_5frame5FrameINtNtNtCs3WWrd2JY12C_5hyper5proto2h27SendBufNtNtCs14kzo5Se9zC_5bytes5bytes5BytesEEEECsPYQCUnoTxQ_10collection.exit, label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsgwvynAR9gqy_2h25proto7streams6buffer4SlotINtNtBK_5frame5FrameINtNtNtCs3WWrd2JY12C_5hyper5proto2h27SendBufNtNtCs14kzo5Se9zC_5bytes5bytes5BytesEEEECsPYQCUnoTxQ_10collection.exit: ; preds = %bb.m, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgwvynAR9gqy_2h25frame7headers11PushPromiseECsPYQCUnoTxQ_10collection.exit.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgwvynAR9gqy_2h25frame7headers7HeadersECsPYQCUnoTxQ_10collection.exit.i.i, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1015)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1016)
  %i.d = load i8, ptr %i.c, align 8, !range !1017, !alias.scope !1018, !noundef !32
  switch i8 %i.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsgwvynAR9gqy_2h25proto7streams6buffer4SlotINtNtBK_5frame5FrameINtNtNtCs3WWrd2JY12C_5hyper5proto2h27SendBufNtNtCs14kzo5Se9zC_5bytes5bytes5BytesEEEECsPYQCUnoTxQ_10collection.exit [
    i8 0, label %bb.c
    i8 1, label %bb.g
    i8 3, label %bb.j
    i8 6, label %bb.m
  ]

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1019)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1020)
  %i.f = load i64, ptr %i.e, align 8, !range !43, !alias.scope !1021, !noundef !32
  switch i64 %i.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsgwvynAR9gqy_2h25proto7streams6buffer4SlotINtNtBK_5frame5FrameINtNtNtCs3WWrd2JY12C_5hyper5proto2h27SendBufNtNtCs14kzo5Se9zC_5bytes5bytes5BytesEEEECsPYQCUnoTxQ_10collection.exit [
    i64 0, label %bb.d
    i64 1, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1022)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1023)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !1024, !noundef !32
  %i.j = load ptr, ptr %i.g, align 8, !alias.scope !1024, !nonnull !32, !align !33, !noundef !32
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !noalias !1024, !nonnull !32, !noundef !32
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !1024, !noundef !32
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !1024, !noundef !32
  tail call void %i.l(ptr noundef %i.i, ptr noundef %i.n, i64 noundef %i.p), !noalias !1024, !inline_history !1007
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsgwvynAR9gqy_2h25proto7streams6buffer4SlotINtNtBK_5frame5FrameINtNtNtCs3WWrd2JY12C_5hyper5proto2h27SendBufNtNtCs14kzo5Se9zC_5bytes5bytes5BytesEEEECsPYQCUnoTxQ_10collection.exit

bb.e:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val1.i.i.i.i = load i64, ptr %i.q, align 8, !alias.scope !1021, !noundef !32 ; 2 uses
  %i.r = icmp eq i64 %.val1.i.i.i.i, 0
  br i1 %i.r, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsgwvynAR9gqy_2h25proto7streams6buffer4SlotINtNtBK_5frame5FrameINtNtNtCs3WWrd2JY12C_5hyper5proto2h27SendBufNtNtCs14kzo5Se9zC_5bytes5bytes5BytesEEEECsPYQCUnoTxQ_10collection.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i.i.i.i = load ptr, ptr %i.s, align 8, !alias.scope !1021, !nonnull !32, !noundef !32
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i.i, i64 noundef 1) #31, !noalias !1021
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsgwvynAR9gqy_2h25proto7streams6buffer4SlotINtNtBK_5frame5FrameINtNtNtCs3WWrd2JY12C_5hyper5proto2h27SendBufNtNtCs14kzo5Se9zC_5bytes5bytes5BytesEEEECsPYQCUnoTxQ_10collection.exit

bb.g:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header3map9HeaderMapECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(288) %i.t)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgwvynAR9gqy_2h25frame7headers7HeadersECsPYQCUnoTxQ_10collection.exit.i.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 120
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgwvynAR9gqy_2h25frame7headers6PseudoECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(160) %i.v) #29
          to label %common.resume.i.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

common.resume.i.i:                                ; preds = %bb.k, %bb.h
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.u, %bb.h ], [ %i.z, %bb.k ]
  resume { ptr, i32 } %common.resume.op.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgwvynAR9gqy_2h25frame7headers7HeadersECsPYQCUnoTxQ_10collection.exit.i.i: ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgwvynAR9gqy_2h25frame7headers6PseudoECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(160) %i.x)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsgwvynAR9gqy_2h25proto7streams6buffer4SlotINtNtBK_5frame5FrameINtNtNtCs3WWrd2JY12C_5hyper5proto2h27SendBufNtNtCs14kzo5Se9zC_5bytes5bytes5BytesEEEECsPYQCUnoTxQ_10collection.exit

bb.j:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header3map9HeaderMapECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(288) %i.y)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgwvynAR9gqy_2h25frame7headers11PushPromiseECsPYQCUnoTxQ_10collection.exit.i.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 120
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgwvynAR9gqy_2h25frame7headers6PseudoECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(160) %i.aa) #29
          to label %common.resume.i.i unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgwvynAR9gqy_2h25frame7headers11PushPromiseECsPYQCUnoTxQ_10collection.exit.i.i: ; preds = %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgwvynAR9gqy_2h25frame7headers6PseudoECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(160) %i.ac)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsgwvynAR9gqy_2h25proto7streams6buffer4SlotINtNtBK_5frame5FrameINtNtNtCs3WWrd2JY12C_5hyper5proto2h27SendBufNtNtCs14kzo5Se9zC_5bytes5bytes5BytesEEEECsPYQCUnoTxQ_10collection.exit

bb.m:                                             ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1025)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1026)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1027)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !1028, !noundef !32
  %i.ag = load ptr, ptr %i.ad, align 8, !alias.scope !1028, !nonnull !32, !align !33, !noundef !32
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !1028, !nonnull !32, !noundef !32
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !1028, !noundef !32
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !1028, !noundef !32
  tail call void %i.ai(ptr noundef %i.af, ptr noundef %i.ak, i64 noundef %i.am), !noalias !1028, !inline_history !1014
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsgwvynAR9gqy_2h25proto7streams6buffer4SlotINtNtBK_5frame5FrameINtNtNtCs3WWrd2JY12C_5hyper5proto2h27SendBufNtNtCs14kzo5Se9zC_5bytes5bytes5BytesEEEECsPYQCUnoTxQ_10collection.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsTDF2gVAVRz_8arc_swap5GuardINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsjZG7hsAZr3B_5tokio4sync4mpsc7bounded6SenderNtNtCsPYQCUnoTxQ_10collection14update_handler12UpdateSignalEEEEB2A_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 {
end_hunk_0
begin_hunk_1_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTyINtNtNtCsiHzErX7aQFk_12futures_util6future6either6EitherINtNtBI_6future3MapNCNCINvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set22execute_read_operationNtB20_15ShardReplicaSet30execute_cluster_read_operationINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternalENCNCNvMNtB20_8read_opsB3b_18local_scroll_by_id0s_0E0s_0NCB1S_s0_0EIB1y_INtNtB4_3pin3PinINtNtB49_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultB44_NtNtNtB24_10operations5types15CollectionErrorENtNtB4_6marker4SendEL_EENCNCB1S_s2_00EEEEB24_:bb.a

bb.o:                                             ; preds = %bb.n
  %i.ae = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !range !44, !invariant.load !32
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.ac, i64 noundef range(i64 1, 536870913) %i.af) #31
  br label %common.resume.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsiHzErX7aQFk_12futures_util6future6either6EitherINtNtBG_6future3MapNCNCINvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set22execute_read_operationNtB1Y_15ShardReplicaSet30execute_cluster_read_operationINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternalENCNCNvMNtB1Y_8read_opsB39_18local_scroll_by_id0s_0E0s_0NCB1Q_s0_0EIB1w_INtNtB4_3pin3PinINtNtB47_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultB42_NtNtNtB22_10operations5types15CollectionErrorENtNtB4_6marker4SendEL_EENCNCB1Q_s2_00EEEB22_.exit: ; preds = %bb.a, %bb.b, %bb.e, %bb.f, %bb.i, %bb.l, %bb.m
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTyINtNtNtCsiHzErX7aQFk_12futures_util6future6either6EitherINtNtBI_6future3MapNCNCINvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set22execute_read_operationNtB20_15ShardReplicaSet30execute_cluster_read_operationINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternalENCNCNvMNtB20_8read_opsB3b_8retrieve00E0s_0NCB1S_s0_0EIB1y_INtNtB4_3pin3PinINtNtB49_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultB44_NtNtNtB24_10operations5types15CollectionErrorENtNtB4_6marker4SendEL_EENCNCB1S_s2_00EEEEB24_(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !range !43, !noundef !32
  switch i64 %i.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsiHzErX7aQFk_12futures_util6future6either6EitherINtNtBG_6future3MapNCNCINvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set22execute_read_operationNtB1Y_15ShardReplicaSet30execute_cluster_read_operationINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternalENCNCNvMNtB1Y_8read_opsB39_8retrieve00E0s_0NCB1Q_s0_0EIB1w_INtNtB4_3pin3PinINtNtB47_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultB42_NtNtNtB22_10operations5types15CollectionErrorENtNtB4_6marker4SendEL_EENCNCB1Q_s2_00EEEB22_.exit [
    i64 2, label %bb.i
    i64 0, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load i8, ptr %i.c, align 8, !range !81, !noundef !32
  %cond.i.i.i.i = icmp eq i8 %i.d, 3
  br i1 %cond.i.i.i.i, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsiHzErX7aQFk_12futures_util6future6either6EitherINtNtBG_6future3MapNCNCINvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set22execute_read_operationNtB1Y_15ShardReplicaSet30execute_cluster_read_operationINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternalENCNCNvMNtB1Y_8read_opsB39_8retrieve00E0s_0NCB1Q_s0_0EIB1w_INtNtB4_3pin3PinINtNtB47_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultB42_NtNtNtB22_10operations5types15CollectionErrorENtNtB4_6marker4SendEL_EENCNCB1Q_s2_00EEEB22_.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val.i.i.i.i = load ptr, ptr %i.e, align 8     ; 5 uses
  %i.f = getelementptr i8, ptr %0, i64 48
  %.val1.i.i.i.i = load ptr, ptr %i.f, align 8, !nonnull !32, !align !33, !noundef !32 ; 5 uses
  %i.g = load ptr, ptr %.val1.i.i.i.i, align 8, !invariant.load !32 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  invoke void %i.g(ptr noundef nonnull %.val.i.i.i.i)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !38, !invariant.load !32 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsiHzErX7aQFk_12futures_util6future6either6EitherINtNtBG_6future3MapNCNCINvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set22execute_read_operationNtB1Y_15ShardReplicaSet30execute_cluster_read_operationINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternalENCNCNvMNtB1Y_8read_opsB39_8retrieve00E0s_0NCB1Q_s0_0EIB1w_INtNtB4_3pin3PinINtNtB47_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultB42_NtNtNtB22_10operations5types15CollectionErrorENtNtB4_6marker4SendEL_EENCNCB1Q_s2_00EEEB22_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !44, !invariant.load !32
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, 0) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #31
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsiHzErX7aQFk_12futures_util6future6either6EitherINtNtBG_6future3MapNCNCINvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set22execute_read_operationNtB1Y_15ShardReplicaSet30execute_cluster_read_operationINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternalENCNCNvMNtB1Y_8read_opsB39_8retrieve00E0s_0NCB1Q_s0_0EIB1w_INtNtB4_3pin3PinINtNtB47_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultB42_NtNtNtB22_10operations5types15CollectionErrorENtNtB4_6marker4SendEL_EENCNCB1Q_s2_00EEEB22_.exit

bb.g:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !38, !invariant.load !32 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %common.resume.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.r = load i64, ptr %i.q, align 8, !range !44, !invariant.load !32
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, 0) %i.o, i64 noundef range(i64 1, 536870913) %i.r) #31
  br label %common.resume.i

common.resume.i:                                  ; preds = %bb.o, %bb.n, %bb.h, %bb.g
  %common.resume.op.i = phi { ptr, i32 } [ %i.m, %bb.g ], [ %i.m, %bb.h ], [ %i.aa, %bb.o ], [ %i.aa, %bb.n ]
  resume { ptr, i32 } %common.resume.op.i

bb.i:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i = load ptr, ptr %i.s, align 8, !noundef !32 ; 4 uses
  %i.t = getelementptr i8, ptr %0, i64 24
  %.val1.i = load ptr, ptr %i.t, align 8          ; 6 uses
  %.not.i.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsiHzErX7aQFk_12futures_util6future6either6EitherINtNtBG_6future3MapNCNCINvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set22execute_read_operationNtB1Y_15ShardReplicaSet30execute_cluster_read_operationINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternalENCNCNvMNtB1Y_8read_opsB39_8retrieve00E0s_0NCB1Q_s0_0EIB1w_INtNtB4_3pin3PinINtNtB47_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultB42_NtNtNtB22_10operations5types15CollectionErrorENtNtB4_6marker4SendEL_EENCNCB1Q_s2_00EEEB22_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i) ]
  %i.u = load ptr, ptr %.val1.i, align 8, !invariant.load !32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void %i.u(ptr noundef nonnull %.val.i)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.v = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.w = load i64, ptr %i.v, align 8, !range !38, !invariant.load !32 ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsiHzErX7aQFk_12futures_util6future6either6EitherINtNtBG_6future3MapNCNCINvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set22execute_read_operationNtB1Y_15ShardReplicaSet30execute_cluster_read_operationINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternalENCNCNvMNtB1Y_8read_opsB39_8retrieve00E0s_0NCB1Q_s0_0EIB1w_INtNtB4_3pin3PinINtNtB47_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultB42_NtNtNtB22_10operations5types15CollectionErrorENtNtB4_6marker4SendEL_EENCNCB1Q_s2_00EEEB22_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.y = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.z = load i64, ptr %i.y, align 8, !range !44, !invariant.load !32
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.w, i64 noundef range(i64 1, 536870913) %i.z) #31
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsiHzErX7aQFk_12futures_util6future6either6EitherINtNtBG_6future3MapNCNCINvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set22execute_read_operationNtB1Y_15ShardReplicaSet30execute_cluster_read_operationINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternalENCNCNvMNtB1Y_8read_opsB39_8retrieve00E0s_0NCB1Q_s0_0EIB1w_INtNtB4_3pin3PinINtNtB47_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultB42_NtNtNtB22_10operations5types15CollectionErrorENtNtB4_6marker4SendEL_EENCNCB1Q_s2_00EEEB22_.exit

bb.n:                                             ; preds = %bb.k
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !range !38, !invariant.load !32 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %common.resume.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ae = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !range !44, !invariant.load !32
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.ac, i64 noundef range(i64 1, 536870913) %i.af) #31
  br label %common.resume.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsiHzErX7aQFk_12futures_util6future6either6EitherINtNtBG_6future3MapNCNCINvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set22execute_read_operationNtB1Y_15ShardReplicaSet30execute_cluster_read_operationINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternalENCNCNvMNtB1Y_8read_opsB39_8retrieve00E0s_0NCB1Q_s0_0EIB1w_INtNtB4_3pin3PinINtNtB47_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultB42_NtNtNtB22_10operations5types15CollectionErrorENtNtB4_6marker4SendEL_EENCNCB1Q_s2_00EEEB22_.exit: ; preds = %bb.a, %bb.b, %bb.e, %bb.f, %bb.i, %bb.l, %bb.m
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemINtB5_3VecfENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECsPYQCUnoTxQ_10collection(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %2, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.a
  %i.e = load i64, ptr %i.b, align 8, !range !41, !noundef !32
  %i.f = trunc nuw i64 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !42, !noundef !32 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.f, label %bb.b, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecIBv_fEE7reserveCsPYQCUnoTxQ_10collection.exit.i, !prof !36

bb.b:                                             ; preds = %.noexc
  %i.j = load i64, ptr %i.i, align 8
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.h, i64 %i.j) #30
          to label %.noexc3 unwind label %bb.g

.noexc3:                                          ; preds = %bb.b
  unreachable

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecIBv_fEE7reserveCsPYQCUnoTxQ_10collection.exit.i: ; preds = %.noexc
  %i.k = load ptr, ptr %i.i, align 8, !nonnull !32, !noundef !32 ; 4 uses
  %i.l = icmp ule i64 %2, %i.h
  tail call void @llvm.assume(i1 %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.h, ptr %i.d, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.k, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9531)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9532)
  %i.o = icmp ugt i64 %2, 1
  br i1 %i.o, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecIBv_fEE7reserveCsPYQCUnoTxQ_10collection.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.t = load ptr, ptr %i.q, align 8, !alias.scope !9533, !noalias !9534, !nonnull !32, !noundef !32
  %i.u = load i64, ptr %i.p, align 8, !alias.scope !9533, !noalias !9534, !noundef !32 ; 5 uses
  %.not.i.i.i = icmp eq i64 %i.u, 0
  %i.v = shl nuw nsw i64 %i.u, 2
  br i1 %.not.i.i.i, label %.lr.ph.i.split.us, label %.lr.ph.i.split

.lr.ph.i.split.us:                                ; preds = %.lr.ph.i, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsPYQCUnoTxQ_10collection.exit.i.i.i.us
  %.sroa.0.030.i.us = phi ptr [ %i.ab, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsPYQCUnoTxQ_10collection.exit.i.i.i.us ], [ %i.k, %.lr.ph.i ] ; 4 uses
  %.sroa.03.029.i.us = phi i64 [ %i.aa, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsPYQCUnoTxQ_10collection.exit.i.i.i.us ], [ 1, %.lr.ph.i ]
  %storemerge28.i.us = phi i64 [ %i.ac, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsPYQCUnoTxQ_10collection.exit.i.i.i.us ], [ 0, %.lr.ph.i ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9535)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9536
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 2305843009213693952) 0, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc14.i.us unwind label %.loopexit.i.split.us, !noalias !9532

.noexc14.i.us:                                    ; preds = %.lr.ph.i.split.us
  %i.w = load i64, ptr %i.a, align 8, !range !41, !noalias !9536, !noundef !32
  %i.x = trunc nuw i64 %i.w to i1
  %i.y = load i64, ptr %i.r, align 8, !range !42, !noalias !9536, !noundef !32 ; 2 uses
  br i1 %i.x, label %.split.us, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsPYQCUnoTxQ_10collection.exit.i.i.i.us, !prof !36

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsPYQCUnoTxQ_10collection.exit.i.i.i.us: ; preds = %.noexc14.i.us
  %i.z = load ptr, ptr %i.s, align 8, !noalias !9536, !nonnull !32, !noundef !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9536
  %i.aa = add nuw i64 %.sroa.03.029.i.us, 1       ; 2 uses
  store i64 %i.y, ptr %.sroa.0.030.i.us, align 8, !noalias !9532
  %.sroa.4.0..sroa.0.0.sroa_idx.i.us = getelementptr inbounds nuw i8, ptr %.sroa.0.030.i.us, i64 8
  store ptr %i.z, ptr %.sroa.4.0..sroa.0.0.sroa_idx.i.us, align 8, !noalias !9532
  %.sroa.5.0..sroa.0.0.sroa_idx.i.us = getelementptr inbounds nuw i8, ptr %.sroa.0.030.i.us, i64 16
  store i64 0, ptr %.sroa.5.0..sroa.0.0.sroa_idx.i.us, align 8, !noalias !9532
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.030.i.us, i64 24 ; 2 uses
  %i.ac = add nuw nsw i64 %storemerge28.i.us, 1
  %exitcond.not.i.us = icmp eq i64 %i.aa, %2
  br i1 %exitcond.not.i.us, label %._crit_edge.thread.i, label %.lr.ph.i.split.us

.loopexit.i.split.us:                             ; preds = %.lr.ph.i.split.us
  %lpad.loopexit.i.us = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i

._crit_edge.i:                                    ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecIBv_fEE7reserveCsPYQCUnoTxQ_10collection.exit.i
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %bb.c, label %._crit_edge.thread.i

.lr.ph.i.split:                                   ; preds = %.lr.ph.i, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsPYQCUnoTxQ_10collection.exit.i.i.i
  %.sroa.0.030.i = phi ptr [ %i.ak, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsPYQCUnoTxQ_10collection.exit.i.i.i ], [ %i.k, %.lr.ph.i ] ; 4 uses
  %.sroa.03.029.i = phi i64 [ %i.aj, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsPYQCUnoTxQ_10collection.exit.i.i.i ], [ 1, %.lr.ph.i ]
  %storemerge28.i = phi i64 [ %i.al, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsPYQCUnoTxQ_10collection.exit.i.i.i ], [ 0, %.lr.ph.i ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9535)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9536
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 2305843009213693952) %i.u, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc14.i unwind label %.loopexit.i.split, !noalias !9532

.noexc14.i:                                       ; preds = %.lr.ph.i.split
  %i.ad = load i64, ptr %i.a, align 8, !range !41, !noalias !9536, !noundef !32
  %i.ae = trunc nuw i64 %i.ad to i1
  %i.af = load i64, ptr %i.r, align 8, !range !42, !noalias !9536, !noundef !32 ; 3 uses
  br i1 %i.ae, label %.split.us, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsPYQCUnoTxQ_10collection.exit.i.i.i, !prof !36

.split.us:                                        ; preds = %.noexc14.i, %.noexc14.i.us
  %.us-phi16 = phi i64 [ %i.y, %.noexc14.i.us ], [ %i.af, %.noexc14.i ]
  %.us-phi17 = phi i64 [ %storemerge28.i.us, %.noexc14.i.us ], [ %storemerge28.i, %.noexc14.i ]
  %i.ag = load i64, ptr %i.s, align 8, !noalias !9536
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %.us-phi16, i64 %i.ag) #30
          to label %.noexc15.i unwind label %.loopexit.split-lp.i, !noalias !9532

.noexc15.i:                                       ; preds = %.split.us
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsPYQCUnoTxQ_10collection.exit.i.i.i: ; preds = %.noexc14.i
  %i.ah = load ptr, ptr %i.s, align 8, !noalias !9536, !nonnull !32, !noundef !32 ; 2 uses
  %i.ai = icmp ule i64 %i.u, %i.af
  tail call void @llvm.assume(i1 %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9536
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ah, ptr nonnull readonly align 4 %i.t, i64 %i.v, i1 false), !noalias !9537
  %i.aj = add nuw i64 %.sroa.03.029.i, 1          ; 2 uses
  store i64 %i.af, ptr %.sroa.0.030.i, align 8, !noalias !9532
  %.sroa.4.0..sroa.0.0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.030.i, i64 8
  store ptr %i.ah, ptr %.sroa.4.0..sroa.0.0.sroa_idx.i, align 8, !noalias !9532
  %.sroa.5.0..sroa.0.0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.030.i, i64 16
  store i64 %i.u, ptr %.sroa.5.0..sroa.0.0.sroa_idx.i, align 8, !noalias !9532
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.030.i, i64 24 ; 2 uses
  %i.al = add nuw nsw i64 %storemerge28.i, 1
  %exitcond.not.i = icmp eq i64 %i.aj, %2
  br i1 %exitcond.not.i, label %._crit_edge.thread.i, label %.lr.ph.i.split

bb.c:                                             ; preds = %._crit_edge.i
  store i64 0, ptr %i.n, align 8, !alias.scope !9531, !noalias !9532
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecfENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RNvMs4_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecIBw_fEE11extend_withCsPYQCUnoTxQ_10collection.exit unwind label %bb.e

._crit_edge.thread.i:                             ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsPYQCUnoTxQ_10collection.exit.i.i.i, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsPYQCUnoTxQ_10collection.exit.i.i.i.us, %._crit_edge.i
  %.sroa.0.0.lcssa44.i = phi ptr [ %i.k, %._crit_edge.i ], [ %i.ab, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsPYQCUnoTxQ_10collection.exit.i.i.i.us ], [ %i.ak, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsPYQCUnoTxQ_10collection.exit.i.i.i ]
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.lcssa44.i, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  store i64 %2, ptr %i.n, align 8, !alias.scope !9531, !noalias !9532
  br label %_RNvMs4_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecIBw_fEE11extend_withCsPYQCUnoTxQ_10collection.exit

.loopexit.i.split:                                ; preds = %.lr.ph.i.split
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i

.loopexit.split-lp.i:                             ; preds = %.split.us
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i

bb.d:                                             ; preds = %.loopexit.i
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

.loopexit.i:                                      ; preds = %.loopexit.i.split, %.loopexit.i.split.us, %.loopexit.split-lp.i
  %storemerge28.i12 = phi i64 [ %.us-phi17, %.loopexit.split-lp.i ], [ %storemerge28.i, %.loopexit.i.split ], [ %storemerge28.i.us, %.loopexit.i.split.us ]
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ], [ %lpad.loopexit.i, %.loopexit.i.split ], [ %lpad.loopexit.i.us, %.loopexit.i.split.us ]
  store i64 %storemerge28.i12, ptr %i.n, align 8, !alias.scope !9531, !noalias !9532
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecfENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body unwind label %bb.d

bb.e:                                             ; preds = %bb.c
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.i, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.an, %bb.e ], [ %lpad.phi.i, %.loopexit.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_fEEECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #29
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecfEECsPYQCUnoTxQ_10collection.exit unwind label %bb.f

_RNvMs4_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecIBw_fEE11extend_withCsPYQCUnoTxQ_10collection.exit: ; preds = %._crit_edge.thread.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.f:                                             ; preds = %bb.g, %.body
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecfEECsPYQCUnoTxQ_10collection.exit: ; preds = %bb.g, %.body
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.ap, %bb.g ]
  resume { ptr, i32 } %.pn8

bb.g:                                             ; preds = %bb.b, %bb.a
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecfENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecfEECsPYQCUnoTxQ_10collection.exit unwind label %bb.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemINtB5_3VecjENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECsPYQCUnoTxQ_10collection(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %2, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.a
  %i.e = load i64, ptr %i.b, align 8, !range !41, !noundef !32
  %i.f = trunc nuw i64 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !42, !noundef !32 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.f, label %bb.b, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecIBv_jEE7reserveCsPYQCUnoTxQ_10collection.exit.i, !prof !36

bb.b:                                             ; preds = %.noexc
  %i.j = load i64, ptr %i.i, align 8
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.h, i64 %i.j) #30
          to label %.noexc3 unwind label %bb.g

.noexc3:                                          ; preds = %bb.b
  unreachable

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecIBv_jEE7reserveCsPYQCUnoTxQ_10collection.exit.i: ; preds = %.noexc
  %i.k = load ptr, ptr %i.i, align 8, !nonnull !32, !noundef !32 ; 4 uses
  %i.l = icmp ule i64 %2, %i.h
  tail call void @llvm.assume(i1 %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.h, ptr %i.d, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.k, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9547)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9548)
  %i.o = icmp ugt i64 %2, 1
  br i1 %i.o, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecIBv_jEE7reserveCsPYQCUnoTxQ_10collection.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.t = load ptr, ptr %i.q, align 8, !alias.scope !9549, !noalias !9550, !nonnull !32, !noundef !32
  %i.u = load i64, ptr %i.p, align 8, !alias.scope !9549, !noalias !9550, !noundef !32 ; 5 uses
  %.not.i.i.i = icmp eq i64 %i.u, 0
  %i.v = shl nuw nsw i64 %i.u, 3
  br i1 %.not.i.i.i, label %.lr.ph.i.split.us, label %.lr.ph.i.split

.lr.ph.i.split.us:                                ; preds = %.lr.ph.i, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsPYQCUnoTxQ_10collection.exit.i.i.i.us
  %.sroa.0.030.i.us = phi ptr [ %i.ab, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsPYQCUnoTxQ_10collection.exit.i.i.i.us ], [ %i.k, %.lr.ph.i ] ; 4 uses
  %.sroa.03.029.i.us = phi i64 [ %i.aa, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsPYQCUnoTxQ_10collection.exit.i.i.i.us ], [ 1, %.lr.ph.i ]
  %storemerge28.i.us = phi i64 [ %i.ac, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsPYQCUnoTxQ_10collection.exit.i.i.i.us ], [ 0, %.lr.ph.i ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9551)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9552
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 1152921504606846976) 0, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
          to label %.noexc14.i.us unwind label %.loopexit.i.split.us, !noalias !9548

.noexc14.i.us:                                    ; preds = %.lr.ph.i.split.us
  %i.w = load i64, ptr %i.a, align 8, !range !41, !noalias !9552, !noundef !32
  %i.x = trunc nuw i64 %i.w to i1
  %i.y = load i64, ptr %i.r, align 8, !range !42, !noalias !9552, !noundef !32 ; 2 uses
  br i1 %i.x, label %.split.us, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsPYQCUnoTxQ_10collection.exit.i.i.i.us, !prof !36

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsPYQCUnoTxQ_10collection.exit.i.i.i.us: ; preds = %.noexc14.i.us
  %i.z = load ptr, ptr %i.s, align 8, !noalias !9552, !nonnull !32, !noundef !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9552
  %i.aa = add nuw i64 %.sroa.03.029.i.us, 1       ; 2 uses
  store i64 %i.y, ptr %.sroa.0.030.i.us, align 8, !noalias !9548
  %.sroa.4.0..sroa.0.0.sroa_idx.i.us = getelementptr inbounds nuw i8, ptr %.sroa.0.030.i.us, i64 8
  store ptr %i.z, ptr %.sroa.4.0..sroa.0.0.sroa_idx.i.us, align 8, !noalias !9548
  %.sroa.5.0..sroa.0.0.sroa_idx.i.us = getelementptr inbounds nuw i8, ptr %.sroa.0.030.i.us, i64 16
  store i64 0, ptr %.sroa.5.0..sroa.0.0.sroa_idx.i.us, align 8, !noalias !9548
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.030.i.us, i64 24 ; 2 uses
  %i.ac = add nuw nsw i64 %storemerge28.i.us, 1
  %exitcond.not.i.us = icmp eq i64 %i.aa, %2
  br i1 %exitcond.not.i.us, label %._crit_edge.thread.i, label %.lr.ph.i.split.us

.loopexit.i.split.us:                             ; preds = %.lr.ph.i.split.us
  %lpad.loopexit.i.us = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i

._crit_edge.i:                                    ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecIBv_jEE7reserveCsPYQCUnoTxQ_10collection.exit.i
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %bb.c, label %._crit_edge.thread.i

.lr.ph.i.split:                                   ; preds = %.lr.ph.i, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsPYQCUnoTxQ_10collection.exit.i.i.i
  %.sroa.0.030.i = phi ptr [ %i.ak, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsPYQCUnoTxQ_10collection.exit.i.i.i ], [ %i.k, %.lr.ph.i ] ; 4 uses
  %.sroa.03.029.i = phi i64 [ %i.aj, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsPYQCUnoTxQ_10collection.exit.i.i.i ], [ 1, %.lr.ph.i ]
  %storemerge28.i = phi i64 [ %i.al, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsPYQCUnoTxQ_10collection.exit.i.i.i ], [ 0, %.lr.ph.i ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9551)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9552
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 1152921504606846976) %i.u, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
          to label %.noexc14.i unwind label %.loopexit.i.split, !noalias !9548

.noexc14.i:                                       ; preds = %.lr.ph.i.split
  %i.ad = load i64, ptr %i.a, align 8, !range !41, !noalias !9552, !noundef !32
  %i.ae = trunc nuw i64 %i.ad to i1
  %i.af = load i64, ptr %i.r, align 8, !range !42, !noalias !9552, !noundef !32 ; 3 uses
  br i1 %i.ae, label %.split.us, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsPYQCUnoTxQ_10collection.exit.i.i.i, !prof !36

.split.us:                                        ; preds = %.noexc14.i, %.noexc14.i.us
  %.us-phi16 = phi i64 [ %i.y, %.noexc14.i.us ], [ %i.af, %.noexc14.i ]
  %.us-phi17 = phi i64 [ %storemerge28.i.us, %.noexc14.i.us ], [ %storemerge28.i, %.noexc14.i ]
  %i.ag = load i64, ptr %i.s, align 8, !noalias !9552
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %.us-phi16, i64 %i.ag) #30
          to label %.noexc15.i unwind label %.loopexit.split-lp.i, !noalias !9548

.noexc15.i:                                       ; preds = %.split.us
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsPYQCUnoTxQ_10collection.exit.i.i.i: ; preds = %.noexc14.i
  %i.ah = load ptr, ptr %i.s, align 8, !noalias !9552, !nonnull !32, !noundef !32 ; 2 uses
  %i.ai = icmp ule i64 %i.u, %i.af
  tail call void @llvm.assume(i1 %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9552
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr nonnull readonly align 8 %i.t, i64 %i.v, i1 false), !noalias !9553
  %i.aj = add nuw i64 %.sroa.03.029.i, 1          ; 2 uses
  store i64 %i.af, ptr %.sroa.0.030.i, align 8, !noalias !9548
  %.sroa.4.0..sroa.0.0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.030.i, i64 8
  store ptr %i.ah, ptr %.sroa.4.0..sroa.0.0.sroa_idx.i, align 8, !noalias !9548
  %.sroa.5.0..sroa.0.0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.030.i, i64 16
  store i64 %i.u, ptr %.sroa.5.0..sroa.0.0.sroa_idx.i, align 8, !noalias !9548
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.030.i, i64 24 ; 2 uses
  %i.al = add nuw nsw i64 %storemerge28.i, 1
  %exitcond.not.i = icmp eq i64 %i.aj, %2
  br i1 %exitcond.not.i, label %._crit_edge.thread.i, label %.lr.ph.i.split

bb.c:                                             ; preds = %._crit_edge.i
  store i64 0, ptr %i.n, align 8, !alias.scope !9547, !noalias !9548
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecjENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RNvMs4_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecIBw_jEE11extend_withCsPYQCUnoTxQ_10collection.exit unwind label %bb.e

._crit_edge.thread.i:                             ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsPYQCUnoTxQ_10collection.exit.i.i.i, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsPYQCUnoTxQ_10collection.exit.i.i.i.us, %._crit_edge.i
  %.sroa.0.0.lcssa44.i = phi ptr [ %i.k, %._crit_edge.i ], [ %i.ab, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsPYQCUnoTxQ_10collection.exit.i.i.i.us ], [ %i.ak, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsPYQCUnoTxQ_10collection.exit.i.i.i ]
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.lcssa44.i, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  store i64 %2, ptr %i.n, align 8, !alias.scope !9547, !noalias !9548
  br label %_RNvMs4_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecIBw_jEE11extend_withCsPYQCUnoTxQ_10collection.exit

.loopexit.i.split:                                ; preds = %.lr.ph.i.split
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i

.loopexit.split-lp.i:                             ; preds = %.split.us
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i

bb.d:                                             ; preds = %.loopexit.i
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

.loopexit.i:                                      ; preds = %.loopexit.i.split, %.loopexit.i.split.us, %.loopexit.split-lp.i
  %storemerge28.i12 = phi i64 [ %.us-phi17, %.loopexit.split-lp.i ], [ %storemerge28.i, %.loopexit.i.split ], [ %storemerge28.i.us, %.loopexit.i.split.us ]
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ], [ %lpad.loopexit.i, %.loopexit.i.split ], [ %lpad.loopexit.i.us, %.loopexit.i.split.us ]
  store i64 %storemerge28.i12, ptr %i.n, align 8, !alias.scope !9547, !noalias !9548
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecjENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body unwind label %bb.d

bb.e:                                             ; preds = %bb.c
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.i, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.an, %bb.e ], [ %lpad.phi.i, %.loopexit.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_jEEECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #29
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecjEECsPYQCUnoTxQ_10collection.exit unwind label %bb.f

_RNvMs4_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecIBw_jEE11extend_withCsPYQCUnoTxQ_10collection.exit: ; preds = %._crit_edge.thread.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.f:                                             ; preds = %bb.g, %.body
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecjEECsPYQCUnoTxQ_10collection.exit: ; preds = %bb.g, %.body
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.ap, %bb.g ]
  resume { ptr, i32 } %.pn8

bb.g:                                             ; preds = %bb.b, %bb.a
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecjENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecjEECsPYQCUnoTxQ_10collection.exit unwind label %bb.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemINtB5_3VecyENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECsPYQCUnoTxQ_10collection(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %2, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.a
  %i.e = load i64, ptr %i.b, align 8, !range !41, !noundef !32
  %i.f = trunc nuw i64 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !42, !noundef !32 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.f, label %bb.b, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecIBv_yEE7reserveCsPYQCUnoTxQ_10collection.exit.i, !prof !36

bb.b:                                             ; preds = %.noexc
  %i.j = load i64, ptr %i.i, align 8
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.h, i64 %i.j) #30
          to label %.noexc3 unwind label %bb.g

.noexc3:                                          ; preds = %bb.b
  unreachable

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecIBv_yEE7reserveCsPYQCUnoTxQ_10collection.exit.i: ; preds = %.noexc
  %i.k = load ptr, ptr %i.i, align 8, !nonnull !32, !noundef !32 ; 4 uses
  %i.l = icmp ule i64 %2, %i.h
  tail call void @llvm.assume(i1 %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.h, ptr %i.d, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.k, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9562)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9563)
  %i.o = icmp ugt i64 %2, 1
  br i1 %i.o, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecIBv_yEE7reserveCsPYQCUnoTxQ_10collection.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %.val14.i = load ptr, ptr %i.p, align 8, !alias.scope !9563, !noalias !9562, !nonnull !32, !noundef !32
  %.val15.i = load i64, ptr %i.q, align 8, !alias.scope !9563, !noalias !9562, !noundef !32 ; 5 uses
  %.not.i.i.i = icmp eq i64 %.val15.i, 0
  %i.t = shl nuw nsw i64 %.val15.i, 3
  br i1 %.not.i.i.i, label %.lr.ph.i.split.us, label %.lr.ph.i.split

.lr.ph.i.split.us:                                ; preds = %.lr.ph.i, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsPYQCUnoTxQ_10collection.exit.i.i.i.us
  %.sroa.0.032.i.us = phi ptr [ %i.z, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsPYQCUnoTxQ_10collection.exit.i.i.i.us ], [ %i.k, %.lr.ph.i ] ; 4 uses
  %.sroa.03.031.i.us = phi i64 [ %i.y, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsPYQCUnoTxQ_10collection.exit.i.i.i.us ], [ 1, %.lr.ph.i ]
  %storemerge30.i.us = phi i64 [ %i.aa, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsPYQCUnoTxQ_10collection.exit.i.i.i.us ], [ 0, %.lr.ph.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9564
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 1152921504606846976) 0, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
          to label %.noexc16.i.us unwind label %.loopexit.i.split.us, !noalias !9563

.noexc16.i.us:                                    ; preds = %.lr.ph.i.split.us
  %i.u = load i64, ptr %i.a, align 8, !range !41, !noalias !9564, !noundef !32
  %i.v = trunc nuw i64 %i.u to i1
  %i.w = load i64, ptr %i.r, align 8, !range !42, !noalias !9564, !noundef !32 ; 2 uses
  br i1 %i.v, label %.split.us, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsPYQCUnoTxQ_10collection.exit.i.i.i.us, !prof !36

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsPYQCUnoTxQ_10collection.exit.i.i.i.us: ; preds = %.noexc16.i.us
  %i.x = load ptr, ptr %i.s, align 8, !noalias !9564, !nonnull !32, !noundef !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9564
  %i.y = add nuw i64 %.sroa.03.031.i.us, 1        ; 2 uses
  store i64 %i.w, ptr %.sroa.0.032.i.us, align 8, !noalias !9563
  %.sroa.4.0..sroa.0.0.sroa_idx.i.us = getelementptr inbounds nuw i8, ptr %.sroa.0.032.i.us, i64 8
  store ptr %i.x, ptr %.sroa.4.0..sroa.0.0.sroa_idx.i.us, align 8, !noalias !9563
  %.sroa.5.0..sroa.0.0.sroa_idx.i.us = getelementptr inbounds nuw i8, ptr %.sroa.0.032.i.us, i64 16
  store i64 0, ptr %.sroa.5.0..sroa.0.0.sroa_idx.i.us, align 8, !noalias !9563
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.032.i.us, i64 24 ; 2 uses
  %i.aa = add nuw nsw i64 %storemerge30.i.us, 1
  %exitcond.not.i.us = icmp eq i64 %i.y, %2
  br i1 %exitcond.not.i.us, label %._crit_edge.thread.i, label %.lr.ph.i.split.us

.loopexit.i.split.us:                             ; preds = %.lr.ph.i.split.us
  %lpad.loopexit.i.us = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i

._crit_edge.i:                                    ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecIBv_yEE7reserveCsPYQCUnoTxQ_10collection.exit.i
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %bb.c, label %._crit_edge.thread.i

.lr.ph.i.split:                                   ; preds = %.lr.ph.i, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsPYQCUnoTxQ_10collection.exit.i.i.i
  %.sroa.0.032.i = phi ptr [ %i.ai, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsPYQCUnoTxQ_10collection.exit.i.i.i ], [ %i.k, %.lr.ph.i ] ; 4 uses
  %.sroa.03.031.i = phi i64 [ %i.ah, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsPYQCUnoTxQ_10collection.exit.i.i.i ], [ 1, %.lr.ph.i ]
  %storemerge30.i = phi i64 [ %i.aj, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsPYQCUnoTxQ_10collection.exit.i.i.i ], [ 0, %.lr.ph.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9564
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 1152921504606846976) %.val15.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
          to label %.noexc16.i unwind label %.loopexit.i.split, !noalias !9563

.noexc16.i:                                       ; preds = %.lr.ph.i.split
  %i.ab = load i64, ptr %i.a, align 8, !range !41, !noalias !9564, !noundef !32
  %i.ac = trunc nuw i64 %i.ab to i1
  %i.ad = load i64, ptr %i.r, align 8, !range !42, !noalias !9564, !noundef !32 ; 3 uses
  br i1 %i.ac, label %.split.us, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsPYQCUnoTxQ_10collection.exit.i.i.i, !prof !36

.split.us:                                        ; preds = %.noexc16.i, %.noexc16.i.us
  %.us-phi16 = phi i64 [ %i.w, %.noexc16.i.us ], [ %i.ad, %.noexc16.i ]
  %.us-phi17 = phi i64 [ %storemerge30.i.us, %.noexc16.i.us ], [ %storemerge30.i, %.noexc16.i ]
  %i.ae = load i64, ptr %i.s, align 8, !noalias !9564
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %.us-phi16, i64 %i.ae) #30
          to label %.noexc17.i unwind label %.loopexit.split-lp.i, !noalias !9563

.noexc17.i:                                       ; preds = %.split.us
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsPYQCUnoTxQ_10collection.exit.i.i.i: ; preds = %.noexc16.i
  %i.af = load ptr, ptr %i.s, align 8, !noalias !9564, !nonnull !32, !noundef !32 ; 2 uses
  %i.ag = icmp ule i64 %.val15.i, %i.ad
  tail call void @llvm.assume(i1 %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9564
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.af, ptr nonnull readonly align 8 %.val14.i, i64 %i.t, i1 false), !noalias !9565
  %i.ah = add nuw i64 %.sroa.03.031.i, 1          ; 2 uses
  store i64 %i.ad, ptr %.sroa.0.032.i, align 8, !noalias !9563
  %.sroa.4.0..sroa.0.0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.032.i, i64 8
  store ptr %i.af, ptr %.sroa.4.0..sroa.0.0.sroa_idx.i, align 8, !noalias !9563
  %.sroa.5.0..sroa.0.0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.032.i, i64 16
  store i64 %.val15.i, ptr %.sroa.5.0..sroa.0.0.sroa_idx.i, align 8, !noalias !9563
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.032.i, i64 24 ; 2 uses
  %i.aj = add nuw nsw i64 %storemerge30.i, 1
  %exitcond.not.i = icmp eq i64 %i.ah, %2
  br i1 %exitcond.not.i, label %._crit_edge.thread.i, label %.lr.ph.i.split

bb.c:                                             ; preds = %._crit_edge.i
  store i64 0, ptr %i.n, align 8, !alias.scope !9562, !noalias !9563
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RNvMs4_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecIBw_yEE11extend_withCsPYQCUnoTxQ_10collection.exit unwind label %bb.e

._crit_edge.thread.i:                             ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsPYQCUnoTxQ_10collection.exit.i.i.i, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsPYQCUnoTxQ_10collection.exit.i.i.i.us, %._crit_edge.i
  %.sroa.0.0.lcssa46.i = phi ptr [ %i.k, %._crit_edge.i ], [ %i.z, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsPYQCUnoTxQ_10collection.exit.i.i.i.us ], [ %i.ai, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsPYQCUnoTxQ_10collection.exit.i.i.i ]
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.lcssa46.i, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  store i64 %2, ptr %i.n, align 8, !alias.scope !9562, !noalias !9563
  br label %_RNvMs4_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecIBw_yEE11extend_withCsPYQCUnoTxQ_10collection.exit

.loopexit.i.split:                                ; preds = %.lr.ph.i.split
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i

.loopexit.split-lp.i:                             ; preds = %.split.us
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i

bb.d:                                             ; preds = %.loopexit.i
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

.loopexit.i:                                      ; preds = %.loopexit.i.split, %.loopexit.i.split.us, %.loopexit.split-lp.i
  %storemerge30.i12 = phi i64 [ %.us-phi17, %.loopexit.split-lp.i ], [ %storemerge30.i, %.loopexit.i.split ], [ %storemerge30.i.us, %.loopexit.i.split.us ]
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ], [ %lpad.loopexit.i, %.loopexit.i.split ], [ %lpad.loopexit.i.us, %.loopexit.i.split.us ]
  store i64 %storemerge30.i12, ptr %i.n, align 8, !alias.scope !9562, !noalias !9563
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body unwind label %bb.d

bb.e:                                             ; preds = %bb.c
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.i, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.al, %bb.e ], [ %lpad.phi.i, %.loopexit.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_yEEECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #29
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECsPYQCUnoTxQ_10collection.exit unwind label %bb.f

_RNvMs4_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecIBw_yEE11extend_withCsPYQCUnoTxQ_10collection.exit: ; preds = %._crit_edge.thread.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.f:                                             ; preds = %bb.g, %.body
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECsPYQCUnoTxQ_10collection.exit: ; preds = %bb.g, %.body
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.an, %bb.g ]
  resume { ptr, i32 } %.pn8

bb.g:                                             ; preds = %bb.b, %bb.a
  %i.an = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECsPYQCUnoTxQ_10collection.exit unwind label %bb.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant9ConditionNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsPYQCUnoTxQ_10collection(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 22171567396285519) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [416 x i8], align 8               ; 5 uses
  %.sroa.5.i = alloca [408 x i8], align 8         ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.421 = alloca [408 x i8], align 8         ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %2, i1 noundef zeroext false, i64 noundef 8, i64 noundef 416)
  %i.d = load i64, ptr %i.b, align 8, !range !41, !noundef !32
  %i.e = trunc nuw i64 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !42, !noundef !32 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.e, label %bb.b, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsPYQCUnoTxQ_10collection.exit, !prof !36

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.g, i64 %i.i) #30
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsPYQCUnoTxQ_10collection.exit: ; preds = %bb.a
  %i.j = load ptr, ptr %i.h, align 8, !nonnull !32, !noundef !32 ; 2 uses
  %i.k = icmp ule i64 %2, %i.g
  tail call void @llvm.assume(i1 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.g, ptr %i.c, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.j, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw [416 x i8], ptr %1, i64 %2
  %i.o = icmp eq i64 %i.g, 0
  br i1 %i.o, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsPYQCUnoTxQ_10collection.exit
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.f
  %.sroa.013.032 = phi ptr [ %1, %.lr.ph ], [ %i.r, %bb.f ] ; 4 uses
  %.sroa.7.031 = phi i64 [ 0, %.lr.ph ], [ %i.s, %bb.f ] ; 3 uses
  %.sroa.10.030 = phi i64 [ %i.g, %.lr.ph ], [ %i.p, %bb.f ]
  %i.p = add i64 %.sroa.10.030, -1                ; 2 uses
  %i.q = icmp eq ptr %.sroa.013.032, %i.n
  br i1 %i.q, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.f, %bb.c, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsPYQCUnoTxQ_10collection.exit
  store i64 %2, ptr %i.m, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.013.032, i64 416
  %i.s = add nuw nsw i64 %.sroa.7.031, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9570)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  %i.t = load i64, ptr %.sroa.013.032, align 8, !range !77, !alias.scope !9570, !noalias !9571, !noundef !32
  %.not.i = icmp eq i64 %i.t, -1
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9572
  invoke fastcc void @_RNvXNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant9conditionNtB2_14ConditionOneOfNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(416) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(416) %.sroa.013.032) #36
          to label %.noexc unwind label %bb.h, !inline_history !9569

.noexc:                                           ; preds = %bb.e
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8, !noalias !9572
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(408) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(408) %.sroa.5.0..sroa_idx.i, i64 408, i1 false), !noalias !9572
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9572
  br label %bb.f

bb.f:                                             ; preds = %.noexc, %bb.d
  %.sroa.0.0.i12 = phi i64 [ %.sroa.0.0.copyload.i, %.noexc ], [ -1, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.421)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(408) %.sroa.421, ptr noundef nonnull align 8 dereferenceable(408) %.sroa.5.i, i64 408, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  %i.u = getelementptr inbounds nuw [416 x i8], ptr %i.j, i64 %.sroa.7.031 ; 2 uses
  store i64 %.sroa.0.0.i12, ptr %i.u, align 8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(408) %.sroa.421.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(408) %.sroa.421, i64 408, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.421)
  %i.v = icmp eq i64 %i.p, 0
  br i1 %i.v, label %.thread, label %bb.c

bb.g:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.h:                                             ; preds = %bb.e
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.031, ptr %i.m, align 8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant9ConditionEECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #29
          to label %bb.i unwind label %bb.g

bb.i:                                             ; preds = %bb.h
  resume { ptr, i32 } %lpad.loopexit
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtCslmvYCXbQjWR_6common3extINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCs4ByaKcm8ifS_6sparse5index23compressed_posting_list21CompressedPostingListNtNtCseUPaKcRZYeZ_4half8binary163f16EEEINtB6_6VecExtB14_E18transform_in_placeB1G_NvMB17_B14_6unwrapECsPYQCUnoTxQ_10collection(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !32, !noundef !32 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !32 ; 2 uses
  %i.f = icmp ult i64 %i.e, 115292150460684698
  tail call void @llvm.assume(i1 %i.f)
  %i.g = getelementptr inbounds nuw [80 x i8], ptr %i.c, i64 %i.e
  %i.h = load i64, ptr %1, align 8, !range !38, !noundef !32
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.c, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.h, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.g, ptr %.sroa.6.0..sroa_idx, align 8
  call void @_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterINtNtB1f_6option6OptionINtNtNtCs4ByaKcm8ifS_6sparse5index23compressed_posting_list21CompressedPostingListNtNtCseUPaKcRZYeZ_4half8binary163f16EEENvMB2o_B2l_6unwrapEB2I_ECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
end_hunk_1
begin_hunk_2_@_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecIBL_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEEINtB2_12SpecFromIterBU_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapIB27_INtNtNtB2f_5slice4iter7IterMutINtNtNtCsiHzErX7aQFk_12futures_util6future14try_maybe_done12TryMaybeDoneINtNtNtB3y_10try_future11into_future10IntoFutureNCNvMNtNtCsPYQCUnoTxQ_10collection10collection6searchNtB5w_10Collection31fill_search_result_with_payload0EEENCINvNtB3y_8join_all12iter_pin_mutB3t_E0ENCNvXs_NtB3y_12try_join_allINtB7V_10TryJoinAllB5p_ENtNtNtB2f_6future6future6Future4poll0EE9from_iterB5y_:bb.a
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27, !noalias !10333
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.t

_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecIBU_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapIB2n_INtNtNtB2v_5slice4iter7IterMutINtNtNtCsiHzErX7aQFk_12futures_util6future14try_maybe_done12TryMaybeDoneINtNtNtB3O_10try_future11into_future10IntoFutureNCNvMNtNtCsPYQCUnoTxQ_10collection10collection6searchNtB5M_10Collection31fill_search_result_with_payload0EEENCINvNtB3O_8join_all12iter_pin_mutB3J_E0ENCNvXs_NtB3O_12try_join_allINtB8b_10TryJoinAllB5F_ENtNtNtB2v_6future6future6Future4poll0EE9from_iterB5O_.exit: ; preds = %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecIBx_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapIB1M_INtNtNtB1U_5slice4iter7IterMutINtNtNtCsiHzErX7aQFk_12futures_util6future14try_maybe_done12TryMaybeDoneINtNtNtB3d_10try_future11into_future10IntoFutureNCNvMNtNtCsPYQCUnoTxQ_10collection10collection6searchNtB5b_10Collection31fill_search_result_with_payload0EEENCINvNtB3d_8join_all12iter_pin_mutB38_E0ENCNvXs_NtB3d_12try_join_allINtB7A_10TryJoinAllB54_ENtNtNtB1U_6future6future6Future4poll0EEB5d_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10334
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10333
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecIBL_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEEINtB2_12SpecFromIterBU_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapIB27_INtNtNtB2f_5slice4iter7IterMutINtNtNtCsiHzErX7aQFk_12futures_util6future14try_maybe_done12TryMaybeDoneINtNtNtB3y_10try_future11into_future10IntoFutureNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard6scrollNtB5w_10LocalShard12query_scroll0EEENCINvNtB3y_8join_all12iter_pin_mutB3t_E0ENCNvXs_NtB3y_12try_join_allINtB7M_10TryJoinAllB5p_ENtNtNtB2f_6future6future6Future4poll0EE9from_iterB5A_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10341
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.d = ptrtoint ptr %2 to i64
  %i.e = ptrtoint ptr %1 to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 1296                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10341
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.g, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24), !noalias !10341
  %i.h = load i64, ptr %i.b, align 8, !range !41, !noalias !10341, !noundef !32
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !42, !noalias !10341, !noundef !32 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.i, label %bb.b, label %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecIBx_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapIB1M_INtNtNtB1U_5slice4iter7IterMutINtNtNtCsiHzErX7aQFk_12futures_util6future14try_maybe_done12TryMaybeDoneINtNtNtB3d_10try_future11into_future10IntoFutureNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard6scrollNtB5b_10LocalShard12query_scroll0EEENCINvNtB3d_8join_all12iter_pin_mutB38_E0ENCNvXs_NtB3d_12try_join_allINtB7r_10TryJoinAllB54_ENtNtNtB1U_6future6future6Future4poll0EEB5f_.exit.i.i, !prof !36

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8, !noalias !10341
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #30, !noalias !10341
  unreachable

_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecIBx_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapIB1M_INtNtNtB1U_5slice4iter7IterMutINtNtNtCsiHzErX7aQFk_12futures_util6future14try_maybe_done12TryMaybeDoneINtNtNtB3d_10try_future11into_future10IntoFutureNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard6scrollNtB5b_10LocalShard12query_scroll0EEENCINvNtB3d_8join_all12iter_pin_mutB38_E0ENCNvXs_NtB3d_12try_join_allINtB7r_10TryJoinAllB54_ENtNtNtB1U_6future6future6Future4poll0EEB5f_.exit.i.i: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !noalias !10341, !nonnull !32, !noundef !32 ; 2 uses
  %i.o = icmp ule i64 %i.g, %i.k
  tail call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10341
  store i64 %i.k, ptr %i.c, align 8, !noalias !10341
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.n, ptr %i.p, align 8, !noalias !10341
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %i.q, align 8, !noalias !10341
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10342
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.n, ptr %i.r, align 8, !noalias !10342
  store ptr %i.q, ptr %i.a, align 8, !noalias !10342
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.s, align 8, !noalias !10342
  invoke void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtBc_5slice4iter7IterMutINtNtNtCsiHzErX7aQFk_12futures_util6future14try_maybe_done12TryMaybeDoneINtNtNtB1z_10try_future11into_future10IntoFutureNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard6scrollNtB3x_10LocalShard12query_scroll0EEENCINvNtB1z_8join_all12iter_pin_mutB1u_E0ENCNvXs_NtB1z_12try_join_allINtB5N_10TryJoinAllB3q_ENtNtNtBc_6future6future6Future4poll0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB76_8for_each4callINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointENCINvMsk_B8c_IB8a_B89_E14extend_trustedBN_E0E0EB3B_(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecIBU_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapIB2n_INtNtNtB2v_5slice4iter7IterMutINtNtNtCsiHzErX7aQFk_12futures_util6future14try_maybe_done12TryMaybeDoneINtNtNtB3O_10try_future11into_future10IntoFutureNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard6scrollNtB5M_10LocalShard12query_scroll0EEENCINvNtB3O_8join_all12iter_pin_mutB3J_E0ENCNvXs_NtB3O_12try_join_allINtB82_10TryJoinAllB5F_ENtNtNtB2v_6future6future6Future4poll0EE9from_iterB5Q_.exit unwind label %bb.c, !noalias !10341

bb.c:                                             ; preds = %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecIBx_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapIB1M_INtNtNtB1U_5slice4iter7IterMutINtNtNtCsiHzErX7aQFk_12futures_util6future14try_maybe_done12TryMaybeDoneINtNtNtB3d_10try_future11into_future10IntoFutureNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard6scrollNtB5b_10LocalShard12query_scroll0EEENCINvNtB3d_8join_all12iter_pin_mutB38_E0ENCNvXs_NtB3d_12try_join_allINtB7r_10TryJoinAllB54_ENtNtNtB1U_6future6future6Future4poll0EEB5f_.exit.i.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEEECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #29
          to label %bb.e unwind label %bb.d, !noalias !10341

bb.d:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27, !noalias !10341
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.t

_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecIBU_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapIB2n_INtNtNtB2v_5slice4iter7IterMutINtNtNtCsiHzErX7aQFk_12futures_util6future14try_maybe_done12TryMaybeDoneINtNtNtB3O_10try_future11into_future10IntoFutureNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard6scrollNtB5M_10LocalShard12query_scroll0EEENCINvNtB3O_8join_all12iter_pin_mutB3J_E0ENCNvXs_NtB3O_12try_join_allINtB82_10TryJoinAllB5F_ENtNtNtB2v_6future6future6Future4poll0EE9from_iterB5Q_.exit: ; preds = %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecIBx_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapIB1M_INtNtNtB1U_5slice4iter7IterMutINtNtNtCsiHzErX7aQFk_12futures_util6future14try_maybe_done12TryMaybeDoneINtNtNtB3d_10try_future11into_future10IntoFutureNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard6scrollNtB5b_10LocalShard12query_scroll0EEENCINvNtB3d_8join_all12iter_pin_mutB38_E0ENCNvXs_NtB3d_12try_join_allINtB7r_10TryJoinAllB54_ENtNtNtB1U_6future6future6Future4poll0EEB5f_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10342
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10341
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecIBL_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEEINtB2_12SpecFromIterBU_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2f_5slice4iter7IterMutINtNtB4_9into_iter8IntoIterBU_EENCNCINvNtNtCsPYQCUnoTxQ_10collection6common18transpose_iterator15transposed_iterBU_Es_00EE9from_iterB45_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10349
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.d = ptrtoint ptr %2 to i64
  %i.e = ptrtoint ptr %1 to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 5                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10349
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.g, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24), !noalias !10349
  %i.h = load i64, ptr %i.b, align 8, !range !41, !noalias !10349, !noundef !32
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !42, !noalias !10349, !noundef !32 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.i, label %bb.b, label %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecIBx_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1U_5slice4iter7IterMutINtNtB6_9into_iter8IntoIterBG_EENCNCINvNtNtCsPYQCUnoTxQ_10collection6common18transpose_iterator15transposed_iterBG_Es_00EEB3K_.exit.i.i, !prof !36

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8, !noalias !10349
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #30, !noalias !10349
  unreachable

_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecIBx_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1U_5slice4iter7IterMutINtNtB6_9into_iter8IntoIterBG_EENCNCINvNtNtCsPYQCUnoTxQ_10collection6common18transpose_iterator15transposed_iterBG_Es_00EEB3K_.exit.i.i: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !noalias !10349, !nonnull !32, !noundef !32 ; 2 uses
  %i.o = icmp ule i64 %i.g, %i.k
  tail call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10349
  store i64 %i.k, ptr %i.c, align 8, !noalias !10349
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.n, ptr %i.p, align 8, !noalias !10349
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %i.q, align 8, !noalias !10349
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10350
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.n, ptr %i.r, align 8, !noalias !10350
  store ptr %i.q, ptr %i.a, align 8, !noalias !10350
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.s, align 8, !noalias !10350
  invoke void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter7IterMutINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtB1v_3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEEENCNCINvNtNtCsPYQCUnoTxQ_10collection6common18transpose_iterator15transposed_iterB2e_Es_00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4D_8for_each4callB2e_NCINvMsk_B1v_IB2f_B2e_E14extend_trustedBN_E0E0EB3m_(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecIBU_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2v_5slice4iter7IterMutINtNtB6_9into_iter8IntoIterB13_EENCNCINvNtNtCsPYQCUnoTxQ_10collection6common18transpose_iterator15transposed_iterB13_Es_00EE9from_iterB4m_.exit unwind label %bb.c, !noalias !10349

bb.c:                                             ; preds = %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecIBx_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1U_5slice4iter7IterMutINtNtB6_9into_iter8IntoIterBG_EENCNCINvNtNtCsPYQCUnoTxQ_10collection6common18transpose_iterator15transposed_iterBG_Es_00EEB3K_.exit.i.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEEECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #29
          to label %bb.e unwind label %bb.d, !noalias !10349

bb.d:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27, !noalias !10349
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.t

_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecIBU_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2v_5slice4iter7IterMutINtNtB6_9into_iter8IntoIterB13_EENCNCINvNtNtCsPYQCUnoTxQ_10collection6common18transpose_iterator15transposed_iterB13_Es_00EE9from_iterB4m_.exit: ; preds = %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecIBx_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1U_5slice4iter7IterMutINtNtB6_9into_iter8IntoIterBG_EENCNCINvNtNtCsPYQCUnoTxQ_10collection6common18transpose_iterator15transposed_iterBG_Es_00EEB3K_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10350
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10349
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecIBL_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEEINtB2_12SpecFromIterBU_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters4take4TakeINtNtNtB2d_7sources11repeat_with10RepeatWithNvMB4_BU_3newEEE9from_iterCsPYQCUnoTxQ_10collection(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10363)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10363
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %1, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24), !noalias !10363
  %i.b = load i64, ptr %i.a, align 8, !range !41, !noalias !10363, !noundef !32
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !42, !noalias !10363, !noundef !32 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.b, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecIBv_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEE7reserveCsPYQCUnoTxQ_10collection.exit.i.i.i, !prof !36

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8, !noalias !10363
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.e, i64 %i.g) #30, !noalias !10363
  unreachable

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecIBv_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEE7reserveCsPYQCUnoTxQ_10collection.exit.i.i.i: ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8, !noalias !10363, !nonnull !32, !noundef !32 ; 4 uses
  %i.i = icmp ule i64 %1, %i.e
  tail call void @llvm.assume(i1 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10363
  %.not.i.i.i.i.i = icmp eq i64 %1, 0
  br i1 %.not.i.i.i.i.i, label %_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecIBU_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters4take4TakeINtNtNtB2t_7sources11repeat_with10RepeatWithNvMB6_B13_3newEEE9from_iterCsPYQCUnoTxQ_10collection.exit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecIBv_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEE7reserveCsPYQCUnoTxQ_10collection.exit.i.i.i
  %xtraiter = and i64 %1, 1
  %i.j = icmp eq i64 %1, 1
  br i1 %i.j, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i64 %1, -2
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %i.k = phi i64 [ 0, %.preheader.preheader.new ], [ %i.o, %.preheader ] ; 3 uses
  %niter = phi i64 [ 0, %.preheader.preheader.new ], [ %niter.next.1, %.preheader ]
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.k ; 3 uses
  store i64 0, ptr %i.l, align 8, !noalias !10364
  %.sroa.52.8..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.52.8..sroa_idx.i.i.i.i.i.i, align 8, !noalias !10364
  %.sroa.63.8..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 0, ptr %.sroa.63.8..sroa_idx.i.i.i.i.i.i, align 8, !noalias !10364
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.k ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i64 0, ptr %i.n, align 8, !noalias !10364
  %.sroa.52.8..sroa_idx.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.52.8..sroa_idx.i.i.i.i.i.i.1, align 8, !noalias !10364
  %.sroa.63.8..sroa_idx.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store i64 0, ptr %.sroa.63.8..sroa_idx.i.i.i.i.i.i.1, align 8, !noalias !10364
  %i.o = add nuw i64 %i.k, 2                      ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecIBU_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters4take4TakeINtNtNtB2t_7sources11repeat_with10RepeatWithNvMB6_B13_3newEEE9from_iterCsPYQCUnoTxQ_10collection.exit.loopexit.unr-lcssa, label %.preheader

_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecIBU_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters4take4TakeINtNtNtB2t_7sources11repeat_with10RepeatWithNvMB6_B13_3newEEE9from_iterCsPYQCUnoTxQ_10collection.exit.loopexit.unr-lcssa: ; preds = %.preheader
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecIBU_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters4take4TakeINtNtNtB2t_7sources11repeat_with10RepeatWithNvMB6_B13_3newEEE9from_iterCsPYQCUnoTxQ_10collection.exit, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecIBU_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters4take4TakeINtNtNtB2t_7sources11repeat_with10RepeatWithNvMB6_B13_3newEEE9from_iterCsPYQCUnoTxQ_10collection.exit.loopexit.unr-lcssa, %.preheader.preheader
  %.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %i.o, %_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecIBU_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters4take4TakeINtNtNtB2t_7sources11repeat_with10RepeatWithNvMB6_B13_3newEEE9from_iterCsPYQCUnoTxQ_10collection.exit.loopexit.unr-lcssa ]
  %lcmp.mod1 = trunc i64 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod1)
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %.epil.init ; 3 uses
  store i64 0, ptr %i.p, align 8, !noalias !10364
  %.sroa.52.8..sroa_idx.i.i.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.52.8..sroa_idx.i.i.i.i.i.i.epil, align 8, !noalias !10364
  %.sroa.63.8..sroa_idx.i.i.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 0, ptr %.sroa.63.8..sroa_idx.i.i.i.i.i.i.epil, align 8, !noalias !10364
  br label %_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecIBU_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters4take4TakeINtNtNtB2t_7sources11repeat_with10RepeatWithNvMB6_B13_3newEEE9from_iterCsPYQCUnoTxQ_10collection.exit

_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecIBU_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters4take4TakeINtNtNtB2t_7sources11repeat_with10RepeatWithNvMB6_B13_3newEEE9from_iterCsPYQCUnoTxQ_10collection.exit: ; preds = %.preheader.epil.preheader, %_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecIBU_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters4take4TakeINtNtNtB2t_7sources11repeat_with10RepeatWithNvMB6_B13_3newEEE9from_iterCsPYQCUnoTxQ_10collection.exit.loopexit.unr-lcssa, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecIBv_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEE7reserveCsPYQCUnoTxQ_10collection.exit.i.i.i
  store i64 %i.e, ptr %0, align 8, !alias.scope !10363
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !10363
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %1, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !10363
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecIBL_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEEINtB2_12SpecFromIterBU_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters7flatten7FlattenINtNtB4_9into_iter8IntoIterBK_EEE9from_iterCsPYQCUnoTxQ_10collection(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(96) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5.i.i.i = alloca i64, align 8            ; 3 uses
  %.sroa.7.i.i.i = alloca i64, align 8            ; 3 uses
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [96 x i8], align 8                ; 15 uses
  %.sroa.5.i = alloca i64, align 8                ; 3 uses
  %.sroa.7.i = alloca i64, align 8                ; 3 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10402)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10403)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !10404
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !10404
  invoke fastcc void @_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtB19_3VecIB1T_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEEEENtNtNtB9_6traits8iterator8Iterator4nextCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1)
          to label %bb.c unwind label %bb.b, !noalias !10402

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.c:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.f, align 8, !range !37, !noalias !10404, !noundef !32
  %.not.i = icmp eq i64 %i.i, -1
  br i1 %.not.i, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !10404
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !10404
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10405)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10406)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10407)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10408)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !10409, !noalias !10410, !noundef !32
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtBO_3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECsPYQCUnoTxQ_10collection.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !10411, !noalias !10412, !nonnull !32, !noundef !32
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val3.i.i.i.i = load ptr, ptr %i.m, align 8, !alias.scope !10411, !noalias !10412, !nonnull !32, !noundef !32
  %i.n = ptrtoint ptr %.val3.i.i.i.i to i64
  %i.o = ptrtoint ptr %.val.i.i.i.i to i64
  %i.p = sub nuw i64 %i.n, %i.o
  %i.q = udiv exact i64 %i.p, 24
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtBO_3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECsPYQCUnoTxQ_10collection.exit.i.i.i

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtBO_3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECsPYQCUnoTxQ_10collection.exit.i.i.i: ; preds = %bb.e, %bb.d
  %.sroa.7.0.i.i.i = phi i64 [ %i.q, %bb.e ], [ 0, %bb.d ]
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !10409, !noalias !10410, !noundef !32
  %.not53.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not53.i.i.i, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtBO_3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECsPYQCUnoTxQ_10collection.exit64.i.i.i, label %bb.f

bb.f:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtBO_3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECsPYQCUnoTxQ_10collection.exit.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val.i62.i.i.i = load ptr, ptr %i.t, align 8, !alias.scope !10413, !noalias !10414, !nonnull !32, !noundef !32
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.val3.i63.i.i.i = load ptr, ptr %i.u, align 8, !alias.scope !10413, !noalias !10414, !nonnull !32, !noundef !32
  %i.v = ptrtoint ptr %.val3.i63.i.i.i to i64
  %i.w = ptrtoint ptr %.val.i62.i.i.i to i64
  %i.x = sub nuw i64 %i.v, %i.w
  %i.y = udiv exact i64 %i.x, 24
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtBO_3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECsPYQCUnoTxQ_10collection.exit64.i.i.i

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtBO_3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECsPYQCUnoTxQ_10collection.exit64.i.i.i: ; preds = %bb.f, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtBO_3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECsPYQCUnoTxQ_10collection.exit.i.i.i
  %.sroa.8.0.i.i.i = phi i64 [ %i.y, %bb.f ], [ 0, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtBO_3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECsPYQCUnoTxQ_10collection.exit.i.i.i ]
  %i.z = add nuw nsw i64 %.sroa.8.0.i.i.i, %.sroa.7.0.i.i.i ; 2 uses
  %i.aa = load ptr, ptr %1, align 8, !alias.scope !10409, !noalias !10410, !noundef !32
  %.not54.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not54.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtBO_3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECsPYQCUnoTxQ_10collection.exit64.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i.i = load ptr, ptr %i.ab, align 8, !alias.scope !10409, !noalias !10410, !nonnull !32, !noundef !32
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val61.i.i.i = load ptr, ptr %i.ac, align 8, !alias.scope !10409, !noalias !10410, !nonnull !32, !noundef !32
  %i.ad = icmp eq ptr %.val61.i.i.i, %.val.i.i.i
  br i1 %i.ad, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtBO_3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECsPYQCUnoTxQ_10collection.exit64.i.i.i
  br label %bb.k

bb.i:                                             ; preds = %bb.c
  store i64 0, ptr %0, align 8, !alias.scope !10402, !noalias !10403
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ae, align 8, !alias.scope !10402, !noalias !10403
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.af, align 8, !alias.scope !10402, !noalias !10403
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !10404
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !10404
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtB1m_3VecIB26_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEEEEECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1), !noalias !10402
  br label %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB4_3VecIBS_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters7flatten7FlattenINtNtB4_9into_iter8IntoIterBR_EEE9from_iterCsPYQCUnoTxQ_10collection.exit

bb.j:                                             ; preds = %bb.l, %bb.k
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #29
          to label %bb.ad unwind label %bb.ab, !noalias !10402

bb.k:                                             ; preds = %bb.h, %bb.g
  %.sink79.i.i.sroa.phi.i = phi ptr [ %.sroa.7.i, %bb.h ], [ %.sroa.5.i, %bb.g ]
  %.sink.i.i.i = phi i64 [ %i.z, %bb.h ], [ 0, %bb.g ]
  store i64 %.sink.i.i.i, ptr %.sink79.i.i.sroa.phi.i, align 8, !alias.scope !10415, !noalias !10416
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  %i.ah = tail call i64 @llvm.umax.i64(i64 %i.z, i64 3) ; 2 uses
  %..i.i = add nuw nsw i64 %i.ah, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10404
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %..i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
          to label %.noexc.i unwind label %bb.j, !noalias !10402

.noexc.i:                                         ; preds = %bb.k
  %i.ai = load i64, ptr %i.c, align 8, !range !41, !noalias !10404, !noundef !32
  %i.aj = trunc nuw i64 %i.ai to i1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !range !42, !noalias !10404, !noundef !32 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.aj, label %bb.l, label %bb.m, !prof !36

bb.l:                                             ; preds = %.noexc.i
  %i.an = load i64, ptr %i.am, align 8, !noalias !10404
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.al, i64 %i.an) #30
          to label %.noexc4.i unwind label %bb.j, !noalias !10402

.noexc4.i:                                        ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %.noexc.i
  %i.ao = load ptr, ptr %i.am, align 8, !noalias !10404, !nonnull !32, !noundef !32 ; 2 uses
  %i.ap = icmp ult i64 %i.ah, %i.al
  tail call void @llvm.assume(i1 %i.ap)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10404
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !10402
  store i64 %i.al, ptr %i.g, align 8, !noalias !10404
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %i.ao, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !10404
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !10404
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !10404
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !10404
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !10404
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.d, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false), !noalias !10402
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10417)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10418)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10419)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10420)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  br label %bb.n

bb.n:                                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecIBv_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEE7reserveCsPYQCUnoTxQ_10collection.exit.i.i.i, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10421
  invoke fastcc void @_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtB19_3VecIB1T_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEEEENtNtNtB9_6traits8iterator8Iterator4nextCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.d)
          to label %bb.q unwind label %bb.p, !noalias !10402

bb.o:                                             ; preds = %bb.x, %bb.p
end_hunk_2
