Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/xet_core_structures-4322d96ee0466804.xet_core_structures.235076a0606dc26f-cgu.12?download=true
inline.NumInlined: 367
inline.NumDeleted: 199
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6stable14driftsort_mainTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB16_14metadata_shard12xorb_structs11MDBXorbInfoEENCINvMNtB2f_5sliceSBZ_7sort_byNCINvXs1o_NtNtNtB2f_11collections5btree3mapINtB4f_8BTreeMapB10_B2a_EINtNtNtNtB8_4iter6traits7collect12FromIteratorBZ_E9from_iterINtNtNtB5i_8adapters3map3MapINtNtB6e_6filter6FilterINtB4f_4IterB10_B2a_ENCNvMNtB2M_15shard_in_memoryNtB7o_16MDBInMemoryShard10difference0ENCB7l_s_0EE0E0INtNtB2f_3vec3VecBZ_EEB16_:bb.a
  br i1 %i.e, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtBG_4sync3ArcNtNtNtB1f_14metadata_shard12xorb_structs11MDBXorbInfoEEEEB1f_.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.h:                                             ; preds = %bb.f
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtB7_4sync3ArcNtNtNtBM_14metadata_shard12xorb_structs11MDBXorbInfoEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtBG_4sync3ArcNtNtNtB1f_14metadata_shard12xorb_structs11MDBXorbInfoEEEEB1f_.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtB7_4sync3ArcNtNtNtBT_14metadata_shard12xorb_structs11MDBXorbInfoEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

common.resume:                                    ; preds = %bb.c, %bb.k, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.l, %bb.i ], [ %i.n, %bb.k ], [ %i.g, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtBG_4sync3ArcNtNtNtB1f_14metadata_shard12xorb_structs11MDBXorbInfoEEEEB1f_.exit: ; preds = %bb.h
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtB7_4sync3ArcNtNtNtBT_14metadata_shard12xorb_structs11MDBXorbInfoEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  br label %bb.g

bb.k:                                             ; preds = %.thread, %bb.c
  %i.n = phi { ptr, i32 } [ %i.h, %.thread ], [ %i.g, %bb.c ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtBG_4sync3ArcNtNtNtB1f_14metadata_shard12xorb_structs11MDBXorbInfoEEEEB1f_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #24
          to label %common.resume unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6stable14driftsort_mainTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB16_14metadata_shard12file_structs11MDBFileInfoENCINvMNtCsexYYUdYSQU6_5alloc5sliceSBZ_7sort_byNCINvXs1o_NtNtNtB3a_11collections5btree3mapINtB3W_8BTreeMapB10_B2a_EINtNtNtNtB8_4iter6traits7collect12FromIteratorBZ_E9from_iterINtNtNtB4Z_8adapters3map3MapINtNtB5V_6filter6FilterINtB3W_4IterB10_B2a_ENCNvMNtB2e_15shard_in_memoryNtB75_16MDBInMemoryShard10differences0_0ENCB72_s1_0EE0E0INtNtB3a_3vec3VecBZ_EEB16_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 50127021939428130) %1, ptr noalias nofree noundef align 8 dereferenceable(8) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = lshr i64 %1, 1
  %i.c = sub nuw nsw i64 %1, %i.b
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %1, i64 43478)
  %..i8 = tail call noundef i64 @llvm.umax.i64(i64 %..i, i64 %i.c)
  %..i9 = tail call noundef i64 @llvm.umax.i64(i64 %..i8, i64 48)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs8_NtCsexYYUdYSQU6_5alloc5sliceINtNtB7_3vec3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtBU_14metadata_shard12file_structs11MDBFileInfoEEINtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable8BufGuardBN_E13with_capacityBU_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %..i9)
  %i.d = invoke { ptr, i64 } @_RNvXs8_NtCsexYYUdYSQU6_5alloc5sliceINtNtB7_3vec3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtBU_14metadata_shard12file_structs11MDBFileInfoEEINtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable8BufGuardBN_E19as_uninit_slice_mutBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.b unwind label %bb.g       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.e = extractvalue { ptr, i64 } %i.d, 1
  %.sroa.0.0 = extractvalue { ptr, i64 } %i.d, 0
  %i.f = icmp samesign ult i64 %1, 65
  invoke void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB13_14metadata_shard12file_structs11MDBFileInfoENCINvMNtCsexYYUdYSQU6_5alloc5sliceSBW_7sort_byNCINvXs1o_NtNtNtB37_11collections5btree3mapINtB3T_8BTreeMapBX_B27_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBW_E9from_iterINtNtNtB4V_8adapters3map3MapINtNtB5R_6filter6FilterINtB3T_4IterBX_B27_ENCNvMNtB2b_15shard_in_memoryNtB70_16MDBInMemoryShard10differences0_0ENCB6X_s1_0EE0E0EB13_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %1, ptr noalias nofree noundef nonnull align 8 %.sroa.0.0, i64 noundef %i.e, i1 noundef zeroext %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.d unwind label %bb.g

bb.c:                                             ; preds = %bb.d
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtBT_14metadata_shard12file_structs11MDBFileInfoEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.d:                                             ; preds = %bb.b
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtBM_14metadata_shard12file_structs11MDBFileInfoEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtBT_14metadata_shard12file_structs11MDBFileInfoEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

common.resume:                                    ; preds = %bb.g, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.g, %bb.e ], [ %lpad.thr_comm, %bb.g ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.b, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB1f_14metadata_shard12file_structs11MDBFileInfoEEEB1f_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #24
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6stable14driftsort_mainTyTmmEENvYBZ_NtNtB8_3cmp10PartialOrd2ltINtNtCsexYYUdYSQU6_5alloc3vec3VecBZ_EECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [4096 x i8], align 8              ; 3 uses
  %i.c = lshr i64 %1, 1
  %i.d = sub nuw nsw i64 %1, %i.c
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %1, i64 500000)
  %..i8 = tail call noundef i64 @llvm.umax.i64(i64 %..i, i64 %i.d) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = icmp samesign ugt i64 %..i8, 256         ; 3 uses
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @_RNvXs8_NtCsexYYUdYSQU6_5alloc5sliceINtNtB7_3vec3VecTyTmmEEEINtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable8BufGuardBN_E13with_capacityCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %..i8)
  %i.f = invoke { ptr, i64 } @_RNvXs8_NtCsexYYUdYSQU6_5alloc5sliceINtNtB7_3vec3VecTyTmmEEEINtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable8BufGuardBN_E19as_uninit_slice_mutCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.d unwind label %.thread    ; 2 uses

bb.c:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.e, label %bb.k, label %common.resume

.thread:                                          ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.d:                                             ; preds = %bb.b
  %i.i = extractvalue { ptr, i64 } %i.f, 1
  %i.j = extractvalue { ptr, i64 } %i.f, 0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %.sroa.4.0 = phi i64 [ 256, %bb.a ], [ %i.i, %bb.d ]
  %.pn = phi ptr [ %i.b, %bb.a ], [ %i.j, %bb.d ]
  %i.k = icmp samesign ult i64 %1, 65
  invoke void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortTyTmmEENvYBW_NtNtBa_3cmp10PartialOrd2ltECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %1, ptr noalias nofree noundef nonnull align 8 %.pn, i64 noundef %.sroa.4.0, i1 noundef zeroext %i.k, ptr noalias nofree noundef nonnull %2)
          to label %bb.f unwind label %bb.c

bb.f:                                             ; preds = %bb.e
  br i1 %i.e, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTyTmmEEEECs31YAwBA1AlL_19xet_core_structures.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.h:                                             ; preds = %bb.f
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTyTmmEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTyTmmEEEECs31YAwBA1AlL_19xet_core_structures.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTyTmmEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

common.resume:                                    ; preds = %bb.c, %bb.k, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.l, %bb.i ], [ %i.n, %bb.k ], [ %i.g, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTyTmmEEEECs31YAwBA1AlL_19xet_core_structures.exit: ; preds = %bb.h
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTyTmmEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  br label %bb.g

bb.k:                                             ; preds = %.thread, %bb.c
  %i.n = phi { ptr, i32 } [ %i.h, %.thread ], [ %i.g, %bb.c ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTyTmmEEEECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #24
          to label %common.resume unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXsn_NtNtNtCs4DkaUnCZMGd_4rand5distr7uniform3intINtB6_10UniformIntyENtB8_14UniformSampler23sample_single_inclusiveNtNtNtBc_4rngs3std6StdRngyyECs31YAwBA1AlL_19xet_core_structures(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) initializes((0, 1)) %0, i64 noundef %1, i64 noundef %2, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.not = icmp ugt i64 %1, %2
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.a, align 1
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.b = sub nuw i64 %2, %1                       ; 2 uses
  %i.c = add i64 %i.b, 1                          ; 3 uses
  %i.d = icmp eq i64 %i.c, 0
  %i.e = load i32, ptr %3, align 4, !noundef !4   ; 7 uses
  %i.f = icmp ult i32 %i.e, 63                    ; 2 uses
  br i1 %i.d, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  br i1 %i.f, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 252
  %i.h = load i32, ptr %i.g, align 4, !alias.scope !102, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 256
  tail call void @_RNvXs_NtCs1OzvMeFnvWA_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCsenQHu2qVDfv_9rand_core5block9Generator8generateCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.i, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %3)
  %i.j = load i32, ptr %3, align 4, !alias.scope !102, !noundef !4 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.e, 63
  br i1 %.not.i.i.i.i, label %_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randomyECs31YAwBA1AlL_19xet_core_structures.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.l = load i32, ptr %i.k, align 4, !alias.scope !102, !noundef !4
  br label %_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randomyECs31YAwBA1AlL_19xet_core_structures.exit

bb.g:                                             ; preds = %bb.d
  %i.m = zext nneg i32 %i.e to i64
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.m ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !alias.scope !102, !noundef !4
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.q = load i32, ptr %i.p, align 4, !alias.scope !102, !noundef !4
  %i.r = add nuw nsw i32 %i.e, 2
  br label %_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randomyECs31YAwBA1AlL_19xet_core_structures.exit

_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randomyECs31YAwBA1AlL_19xet_core_structures.exit: ; preds = %bb.e, %bb.f, %bb.g
  %.sroa.0.018.i.i.i.i = phi i32 [ %i.r, %bb.g ], [ 1, %bb.e ], [ 2, %bb.f ]
  %.sroa.02.017.i.i.i.i = phi i32 [ %i.o, %bb.g ], [ %i.h, %bb.e ], [ %i.j, %bb.f ]
  %.sroa.03.016.i.i.i.i = phi i32 [ %i.q, %bb.g ], [ %i.j, %bb.e ], [ %i.l, %bb.f ]
  store i32 %.sroa.0.018.i.i.i.i, ptr %3, align 4, !alias.scope !102
  %i.s = zext i32 %.sroa.03.016.i.i.i.i to i64
  %i.t = shl nuw i64 %i.s, 32
  %i.u = zext i32 %.sroa.02.017.i.i.i.i to i64
  %i.v = or disjoint i64 %i.t, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.v, ptr %i.w, align 8
  br label %bb.l

bb.h:                                             ; preds = %bb.c
  br i1 %i.f, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 252
  %i.y = load i32, ptr %i.x, align 4, !alias.scope !103, !noundef !4
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 256
  tail call void @_RNvXs_NtCs1OzvMeFnvWA_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCsenQHu2qVDfv_9rand_core5block9Generator8generateCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.z, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %3)
  %i.aa = load i32, ptr %3, align 4, !alias.scope !103, !noundef !4 ; 2 uses
  %.not.i.i.i.i7 = icmp eq i32 %i.e, 63
  br i1 %.not.i.i.i.i7, label %_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randomyECs31YAwBA1AlL_19xet_core_structures.exit11, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !alias.scope !103, !noundef !4
  br label %_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randomyECs31YAwBA1AlL_19xet_core_structures.exit11

bb.k:                                             ; preds = %bb.h
  %i.ad = zext nneg i32 %i.e to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ad ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !alias.scope !103, !noundef !4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !alias.scope !103, !noundef !4
  %i.ai = add nuw nsw i32 %i.e, 2
  br label %_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randomyECs31YAwBA1AlL_19xet_core_structures.exit11

_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randomyECs31YAwBA1AlL_19xet_core_structures.exit11: ; preds = %bb.i, %bb.j, %bb.k
  %.sroa.0.018.i.i.i.i8 = phi i32 [ %i.ai, %bb.k ], [ 1, %bb.i ], [ 2, %bb.j ] ; 5 uses
  %.sroa.02.017.i.i.i.i9 = phi i32 [ %i.af, %bb.k ], [ %i.y, %bb.i ], [ %i.aa, %bb.j ]
  %.sroa.03.016.i.i.i.i10 = phi i32 [ %i.ah, %bb.k ], [ %i.aa, %bb.i ], [ %i.ac, %bb.j ]
  store i32 %.sroa.0.018.i.i.i.i8, ptr %3, align 4, !alias.scope !103
  %i.aj = zext i32 %.sroa.03.016.i.i.i.i10 to i64
  %i.ak = shl nuw i64 %i.aj, 32
  %i.al = zext i32 %.sroa.02.017.i.i.i.i9 to i64
  %i.am = or disjoint i64 %i.ak, %i.al
  %i.an = zext i64 %i.am to i128
  %i.ao = zext i64 %i.c to i128
  %i.ap = mul nuw i128 %i.an, %i.ao               ; 2 uses
  %i.aq = lshr i128 %i.ap, 64
  %i.ar = trunc nuw i128 %i.aq to i64             ; 2 uses
  %i.as = trunc i128 %i.ap to i64                 ; 2 uses
  %i.at = xor i64 %i.b, -1
  %i.au = icmp ugt i64 %i.as, %i.at
  br i1 %i.au, label %bb.m, label %bb.q

bb.l:                                             ; preds = %_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randomyECs31YAwBA1AlL_19xet_core_structures.exit, %bb.b, %bb.q
  %.sink = phi i8 [ 0, %_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randomyECs31YAwBA1AlL_19xet_core_structures.exit ], [ 1, %bb.b ], [ 0, %bb.q ]
  store i8 %.sink, ptr %0, align 8
  ret void

bb.m:                                             ; preds = %_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randomyECs31YAwBA1AlL_19xet_core_structures.exit11
  %i.av = icmp samesign ult i32 %.sroa.0.018.i.i.i.i8, 63
  br i1 %i.av, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 252
  %i.ax = load i32, ptr %i.aw, align 4, !alias.scope !104, !noundef !4
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 256
  tail call void @_RNvXs_NtCs1OzvMeFnvWA_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCsenQHu2qVDfv_9rand_core5block9Generator8generateCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.ay, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %3)
  %i.az = load i32, ptr %3, align 4, !alias.scope !104, !noundef !4 ; 2 uses
  %.not.i.i.i.i12 = icmp eq i32 %.sroa.0.018.i.i.i.i8, 63
  br i1 %.not.i.i.i.i12, label %_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randomyECs31YAwBA1AlL_19xet_core_structures.exit16, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.bb = load i32, ptr %i.ba, align 4, !alias.scope !104, !noundef !4
  br label %_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randomyECs31YAwBA1AlL_19xet_core_structures.exit16

bb.p:                                             ; preds = %bb.m
  %i.bc = zext nneg i32 %.sroa.0.018.i.i.i.i8 to i64
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bc ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !alias.scope !104, !noundef !4
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %i.bg = load i32, ptr %i.bf, align 4, !alias.scope !104, !noundef !4
  %i.bh = add nuw nsw i32 %.sroa.0.018.i.i.i.i8, 2
  br label %_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randomyECs31YAwBA1AlL_19xet_core_structures.exit16

_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randomyECs31YAwBA1AlL_19xet_core_structures.exit16: ; preds = %bb.n, %bb.o, %bb.p
  %.sroa.0.018.i.i.i.i13 = phi i32 [ %i.bh, %bb.p ], [ 1, %bb.n ], [ 2, %bb.o ]
  %.sroa.02.017.i.i.i.i14 = phi i32 [ %i.be, %bb.p ], [ %i.ax, %bb.n ], [ %i.az, %bb.o ]
  %.sroa.03.016.i.i.i.i15 = phi i32 [ %i.bg, %bb.p ], [ %i.az, %bb.n ], [ %i.bb, %bb.o ]
  store i32 %.sroa.0.018.i.i.i.i13, ptr %3, align 4, !alias.scope !104
  %i.bi = zext i32 %.sroa.03.016.i.i.i.i15 to i64
  %i.bj = shl nuw i64 %i.bi, 32
  %i.bk = zext i32 %.sroa.02.017.i.i.i.i14 to i64
  %i.bl = or disjoint i64 %i.bj, %i.bk
  %4 = tail call i64 @llvm.umulh.i64(i64 %i.bl, i64 %i.c)
  %i.bm = xor i64 %i.as, -1
  %.not6 = icmp ugt i64 %4, %i.bm
  %i.bn = zext i1 %.not6 to i64
  %i.bo = add nuw i64 %i.bn, %i.ar
  br label %bb.q

bb.q:                                             ; preds = %_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randomyECs31YAwBA1AlL_19xet_core_structures.exit11, %_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randomyECs31YAwBA1AlL_19xet_core_structures.exit16
  %.sroa.01.0 = phi i64 [ %i.bo, %_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randomyECs31YAwBA1AlL_19xet_core_structures.exit16 ], [ %i.ar, %_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randomyECs31YAwBA1AlL_19xet_core_structures.exit11 ]
  %i.bp = add i64 %.sroa.01.0, %1
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bp, ptr %i.bq, align 8
  br label %bb.l
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt12random_rangejINtNtNtCskKLDkoKarTP_4core3ops5range14RangeInclusivejEECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 4 dereferenceable(320) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %.val = load i64, ptr %1, align 8, !alias.scope !145, !noalias !146, !noundef !4 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load i64, ptr %i.c, align 8, !alias.scope !146, !noalias !145, !noundef !4 ; 4 uses
  %.not.i = icmp ugt i64 %.val, %.val1
  br i1 %.not.i, label %bb.m, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !147)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148)
  %i.d = icmp ugt i64 %.val1, 4294967295
  br i1 %i.d, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = trunc i64 %.val to i32                   ; 3 uses
  %i.f = trunc nuw i64 %.val1 to i32              ; 2 uses
  %.not.i.i.i = icmp ugt i32 %i.e, %i.f
  br i1 %.not.i.i.i, label %_RINvXs7_NtNtCs4DkaUnCZMGd_4rand5distr7uniformINtNtNtCskKLDkoKarTP_4core3ops5range14RangeInclusivejEINtB6_11SampleRangejE13sample_singleNtNtNtBa_4rngs3std6StdRngECs31YAwBA1AlL_19xet_core_structures.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = sub nuw i32 %i.f, %i.e                   ; 2 uses
  %i.h = add i32 %i.g, 1                          ; 3 uses
  %i.i = icmp eq i32 %i.h, 0
  %i.j = load i32, ptr %0, align 4, !alias.scope !149, !noalias !150, !noundef !4 ; 5 uses
  %i.k = icmp ugt i32 %i.j, 63                    ; 2 uses
  br i1 %i.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  br i1 %i.k, label %.thread.i.i.i.i.i.i.i, label %bb.f

.thread.i.i.i.i.i.i.i:                            ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @_RNvXs_NtCs1OzvMeFnvWA_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCsenQHu2qVDfv_9rand_core5block9Generator8generateCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.l, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %0), !noalias !150
  br label %_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randommECs31YAwBA1AlL_19xet_core_structures.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.m = zext nneg i32 %i.j to i64
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.m
  %i.o = add nuw nsw i32 %i.j, 1
  br label %_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randommECs31YAwBA1AlL_19xet_core_structures.exit.i.i.i

_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randommECs31YAwBA1AlL_19xet_core_structures.exit.i.i.i: ; preds = %bb.f, %.thread.i.i.i.i.i.i.i
  %.sroa.6.0.extract.trunc.i.i.i.i.i.i.i.i.i = phi i32 [ 1, %.thread.i.i.i.i.i.i.i ], [ %i.o, %bb.f ]
  %.in.i.i.i.i.i.i.i = phi ptr [ %0, %.thread.i.i.i.i.i.i.i ], [ %i.n, %bb.f ]
  %i.p = load i32, ptr %.in.i.i.i.i.i.i.i, align 4, !alias.scope !151, !noalias !150, !noundef !4
  store i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i.i.i.i, ptr %0, align 4, !alias.scope !151, !noalias !150
  br label %_RINvXs7_NtNtCs4DkaUnCZMGd_4rand5distr7uniformINtNtNtCskKLDkoKarTP_4core3ops5range14RangeInclusivejEINtB6_11SampleRangejE13sample_singleNtNtNtBa_4rngs3std6StdRngECs31YAwBA1AlL_19xet_core_structures.exit.thread10

bb.g:                                             ; preds = %bb.d
  br i1 %i.k, label %.thread.i.i.i.i12.i.i.i, label %bb.h

.thread.i.i.i.i12.i.i.i:                          ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @_RNvXs_NtCs1OzvMeFnvWA_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCsenQHu2qVDfv_9rand_core5block9Generator8generateCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.q, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %0), !noalias !150
  br label %_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randommECs31YAwBA1AlL_19xet_core_structures.exit13.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.r = zext nneg i32 %i.j to i64
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.r
  %i.t = add nuw nsw i32 %i.j, 1
  br label %_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randommECs31YAwBA1AlL_19xet_core_structures.exit13.i.i.i

_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randommECs31YAwBA1AlL_19xet_core_structures.exit13.i.i.i: ; preds = %bb.h, %.thread.i.i.i.i12.i.i.i
  %.sroa.6.0.extract.trunc.i.i.i.i.i.i10.i.i.i = phi i32 [ 1, %.thread.i.i.i.i12.i.i.i ], [ %i.t, %bb.h ] ; 4 uses
  %.in.i.i.i.i11.i.i.i = phi ptr [ %0, %.thread.i.i.i.i12.i.i.i ], [ %i.s, %bb.h ]
  %i.u = load i32, ptr %.in.i.i.i.i11.i.i.i, align 4, !alias.scope !152, !noalias !150, !noundef !4
  store i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i10.i.i.i, ptr %0, align 4, !alias.scope !152, !noalias !150
  %i.v = zext i32 %i.u to i64
  %i.w = zext i32 %i.h to i64
  %i.x = mul nuw i64 %i.v, %i.w                   ; 2 uses
  %i.y = lshr i64 %i.x, 32
  %i.z = trunc nuw i64 %i.y to i32                ; 2 uses
  %i.aa = trunc i64 %i.x to i32                   ; 2 uses
  %i.ab = xor i32 %i.g, -1
  %i.ac = icmp ugt i32 %i.aa, %i.ab
  br i1 %i.ac, label %bb.i, label %bb.k

bb.i:                                             ; preds = %_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randommECs31YAwBA1AlL_19xet_core_structures.exit13.i.i.i
  %i.ad = icmp samesign ugt i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i10.i.i.i, 63
  br i1 %i.ad, label %.thread.i.i.i.i16.i.i.i, label %bb.j

.thread.i.i.i.i16.i.i.i:                          ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @_RNvXs_NtCs1OzvMeFnvWA_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCsenQHu2qVDfv_9rand_core5block9Generator8generateCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.ae, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %0), !noalias !150
  br label %_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randommECs31YAwBA1AlL_19xet_core_structures.exit17.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.af = zext nneg i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i10.i.i.i to i64
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.af
  %i.ah = add nuw nsw i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i10.i.i.i, 1
  br label %_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randommECs31YAwBA1AlL_19xet_core_structures.exit17.i.i.i

_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randommECs31YAwBA1AlL_19xet_core_structures.exit17.i.i.i: ; preds = %bb.j, %.thread.i.i.i.i16.i.i.i
  %.sroa.6.0.extract.trunc.i.i.i.i.i.i14.i.i.i = phi i32 [ 1, %.thread.i.i.i.i16.i.i.i ], [ %i.ah, %bb.j ]
  %.in.i.i.i.i15.i.i.i = phi ptr [ %0, %.thread.i.i.i.i16.i.i.i ], [ %i.ag, %bb.j ]
  %i.ai = load i32, ptr %.in.i.i.i.i15.i.i.i, align 4, !alias.scope !153, !noalias !150, !noundef !4
  store i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i14.i.i.i, ptr %0, align 4, !alias.scope !153, !noalias !150
  %3 = tail call i32 @llvm.umulh.i32(i32 %i.ai, i32 %i.h)
  %i.aj = xor i32 %i.aa, -1
  %.not9.i.i.i = icmp ugt i32 %3, %i.aj
  %i.ak = zext i1 %.not9.i.i.i to i32
  %i.al = add nuw i32 %i.ak, %i.z
  br label %bb.k

bb.k:                                             ; preds = %_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randommECs31YAwBA1AlL_19xet_core_structures.exit17.i.i.i, %_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randommECs31YAwBA1AlL_19xet_core_structures.exit13.i.i.i
  %.sroa.04.0.i.i.i = phi i32 [ %i.al, %_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randommECs31YAwBA1AlL_19xet_core_structures.exit17.i.i.i ], [ %i.z, %_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randommECs31YAwBA1AlL_19xet_core_structures.exit13.i.i.i ]
  %i.am = add i32 %.sroa.04.0.i.i.i, %i.e
  br label %_RINvXs7_NtNtCs4DkaUnCZMGd_4rand5distr7uniformINtNtNtCskKLDkoKarTP_4core3ops5range14RangeInclusivejEINtB6_11SampleRangejE13sample_singleNtNtNtBa_4rngs3std6StdRngECs31YAwBA1AlL_19xet_core_structures.exit.thread10

bb.l:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !154
  call fastcc void @_RINvXsn_NtNtNtCs4DkaUnCZMGd_4rand5distr7uniform3intINtB6_10UniformIntyENtB8_14UniformSampler23sample_single_inclusiveNtNtNtBc_4rngs3std6StdRngyyECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.a, i64 noundef %.val, i64 noundef %.val1, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %0) #25, !noalias !150
  %i.an = load i8, ptr %i.a, align 8, !range !13, !noalias !154, !noundef !4
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %_RINvXs7_NtNtCs4DkaUnCZMGd_4rand5distr7uniformINtNtNtCskKLDkoKarTP_4core3ops5range14RangeInclusivejEINtB6_11SampleRangejE13sample_singleNtNtNtBa_4rngs3std6StdRngECs31YAwBA1AlL_19xet_core_structures.exit.thread15, label %_RINvXs7_NtNtCs4DkaUnCZMGd_4rand5distr7uniformINtNtNtCskKLDkoKarTP_4core3ops5range14RangeInclusivejEINtB6_11SampleRangejE13sample_singleNtNtNtBa_4rngs3std6StdRngECs31YAwBA1AlL_19xet_core_structures.exit

_RINvXs7_NtNtCs4DkaUnCZMGd_4rand5distr7uniformINtNtNtCskKLDkoKarTP_4core3ops5range14RangeInclusivejEINtB6_11SampleRangejE13sample_singleNtNtNtBa_4rngs3std6StdRngECs31YAwBA1AlL_19xet_core_structures.exit.thread10: ; preds = %_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randommECs31YAwBA1AlL_19xet_core_structures.exit.i.i.i, %bb.k
  %.sroa.51.0.i.i.i = phi i32 [ %i.p, %_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randommECs31YAwBA1AlL_19xet_core_structures.exit.i.i.i ], [ %i.am, %bb.k ]
  %.sroa.51.0.insert.ext.i.i.i = zext i32 %.sroa.51.0.i.i.i to i64
  br label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultjNtNtNtCs4DkaUnCZMGd_4rand5distr7uniform5ErrorE6unwrapCs31YAwBA1AlL_19xet_core_structures.exit

_RINvXs7_NtNtCs4DkaUnCZMGd_4rand5distr7uniformINtNtNtCskKLDkoKarTP_4core3ops5range14RangeInclusivejEINtB6_11SampleRangejE13sample_singleNtNtNtBa_4rngs3std6StdRngECs31YAwBA1AlL_19xet_core_structures.exit.thread15: ; preds = %bb.l
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.aq = load i8, ptr %i.ap, align 1, !range !13, !noalias !154, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !154
  br label %_RINvXs7_NtNtCs4DkaUnCZMGd_4rand5distr7uniformINtNtNtCskKLDkoKarTP_4core3ops5range14RangeInclusivejEINtB6_11SampleRangejE13sample_singleNtNtNtBa_4rngs3std6StdRngECs31YAwBA1AlL_19xet_core_structures.exit.thread

_RINvXs7_NtNtCs4DkaUnCZMGd_4rand5distr7uniformINtNtNtCskKLDkoKarTP_4core3ops5range14RangeInclusivejEINtB6_11SampleRangejE13sample_singleNtNtNtBa_4rngs3std6StdRngECs31YAwBA1AlL_19xet_core_structures.exit: ; preds = %bb.l
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !noalias !154, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !154
  br label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultjNtNtNtCs4DkaUnCZMGd_4rand5distr7uniform5ErrorE6unwrapCs31YAwBA1AlL_19xet_core_structures.exit

_RINvXs7_NtNtCs4DkaUnCZMGd_4rand5distr7uniformINtNtNtCskKLDkoKarTP_4core3ops5range14RangeInclusivejEINtB6_11SampleRangejE13sample_singleNtNtNtBa_4rngs3std6StdRngECs31YAwBA1AlL_19xet_core_structures.exit.thread: ; preds = %bb.c, %_RINvXs7_NtNtCs4DkaUnCZMGd_4rand5distr7uniformINtNtNtCskKLDkoKarTP_4core3ops5range14RangeInclusivejEINtB6_11SampleRangejE13sample_singleNtNtNtBa_4rngs3std6StdRngECs31YAwBA1AlL_19xet_core_structures.exit.thread15
  %.sroa.6.29 = phi i8 [ %i.aq, %_RINvXs7_NtNtCs4DkaUnCZMGd_4rand5distr7uniformINtNtNtCskKLDkoKarTP_4core3ops5range14RangeInclusivejEINtB6_11SampleRangejE13sample_singleNtNtNtBa_4rngs3std6StdRngECs31YAwBA1AlL_19xet_core_structures.exit.thread15 ], [ 0, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !155
  store i8 %.sroa.6.29, ptr %i.b, align 1, !noalias !155
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @56, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @57, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) #26, !noalias !156
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultjNtNtNtCs4DkaUnCZMGd_4rand5distr7uniform5ErrorE6unwrapCs31YAwBA1AlL_19xet_core_structures.exit: ; preds = %_RINvXs7_NtNtCs4DkaUnCZMGd_4rand5distr7uniformINtNtNtCskKLDkoKarTP_4core3ops5range14RangeInclusivejEINtB6_11SampleRangejE13sample_singleNtNtNtBa_4rngs3std6StdRngECs31YAwBA1AlL_19xet_core_structures.exit, %_RINvXs7_NtNtCs4DkaUnCZMGd_4rand5distr7uniformINtNtNtCskKLDkoKarTP_4core3ops5range14RangeInclusivejEINtB6_11SampleRangejE13sample_singleNtNtNtBa_4rngs3std6StdRngECs31YAwBA1AlL_19xet_core_structures.exit.thread10
  %.sroa.104.214 = phi i64 [ %.sroa.51.0.insert.ext.i.i.i, %_RINvXs7_NtNtCs4DkaUnCZMGd_4rand5distr7uniformINtNtNtCskKLDkoKarTP_4core3ops5range14RangeInclusivejEINtB6_11SampleRangejE13sample_singleNtNtNtBa_4rngs3std6StdRngECs31YAwBA1AlL_19xet_core_structures.exit.thread10 ], [ %i.as, %_RINvXs7_NtNtCs4DkaUnCZMGd_4rand5distr7uniformINtNtNtCskKLDkoKarTP_4core3ops5range14RangeInclusivejEINtB6_11SampleRangejE13sample_singleNtNtNtBa_4rngs3std6StdRngECs31YAwBA1AlL_19xet_core_structures.exit ]
  ret i64 %.sroa.104.214

bb.m:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @53, ptr noundef nonnull inttoptr (i64 51 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) #26
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt12random_rangejINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 4 dereferenceable(320) %0, i64 noundef %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %.not = icmp ult i64 %1, %2
  br i1 %.not, label %bb.b, label %bb.h, !prof !14

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !187)
  %i.c = icmp ugt i64 %2, 4294967295
  br i1 %i.c, label %_RINvXsn_NtNtNtCs4DkaUnCZMGd_4rand5distr7uniform3intINtB6_10UniformIntyENtB8_14UniformSampler13sample_singleNtNtNtBc_4rngs3std6StdRngyyECs31YAwBA1AlL_19xet_core_structures.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = trunc i64 %1 to i32                      ; 3 uses
  %i.e = trunc nuw i64 %2 to i32                  ; 3 uses
  %i.f = icmp ult i32 %i.d, %i.e
  br i1 %i.f, label %bb.d, label %_RINvXs6_NtNtCs4DkaUnCZMGd_4rand5distr7uniformINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEINtB6_11SampleRangejE13sample_singleNtNtNtBa_4rngs3std6StdRngECs31YAwBA1AlL_19xet_core_structures.exit.thread

bb.d:                                             ; preds = %bb.c
  %4 = sub nuw i32 %i.e, %i.d                     ; 2 uses
  %i.g = load i32, ptr %0, align 4, !alias.scope !188, !noalias !189, !noundef !4 ; 3 uses
  %i.h = icmp ugt i32 %i.g, 63
  br i1 %i.h, label %.thread.i.i.i.i12.i.i.i.i, label %bb.e

.thread.i.i.i.i12.i.i.i.i:                        ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @_RNvXs_NtCs1OzvMeFnvWA_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCsenQHu2qVDfv_9rand_core5block9Generator8generateCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.i, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %0), !noalias !189
  br label %_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randommECs31YAwBA1AlL_19xet_core_structures.exit13.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.j = zext nneg i32 %i.g to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.j
  %i.l = add nuw nsw i32 %i.g, 1
  br label %_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randommECs31YAwBA1AlL_19xet_core_structures.exit13.i.i.i.i

_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randommECs31YAwBA1AlL_19xet_core_structures.exit13.i.i.i.i: ; preds = %bb.e, %.thread.i.i.i.i12.i.i.i.i
  %.sroa.6.0.extract.trunc.i.i.i.i.i.i10.i.i.i.i = phi i32 [ 1, %.thread.i.i.i.i12.i.i.i.i ], [ %i.l, %bb.e ] ; 4 uses
  %.in.i.i.i.i11.i.i.i.i = phi ptr [ %0, %.thread.i.i.i.i12.i.i.i.i ], [ %i.k, %bb.e ]
  %i.m = load i32, ptr %.in.i.i.i.i11.i.i.i.i, align 4, !alias.scope !190, !noalias !189, !noundef !4
  store i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i10.i.i.i.i, ptr %0, align 4, !alias.scope !190, !noalias !189
  %5 = zext i32 %i.m to i64
  %i.n = zext i32 %4 to i64
  %i.o = mul nuw i64 %5, %i.n                     ; 2 uses
  %i.p = lshr i64 %i.o, 32                        ; 2 uses
  %i.q = trunc i64 %i.o to i32                    ; 2 uses
  %i.r = sub i32 %i.d, %i.e
  %i.s = icmp ult i32 %i.r, %i.q
  br i1 %i.s, label %bb.f, label %_RINvXs6_NtNtCs4DkaUnCZMGd_4rand5distr7uniformINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEINtB6_11SampleRangejE13sample_singleNtNtNtBa_4rngs3std6StdRngECs31YAwBA1AlL_19xet_core_structures.exit.thread8

bb.f:                                             ; preds = %_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randommECs31YAwBA1AlL_19xet_core_structures.exit13.i.i.i.i
  %i.t = icmp samesign ugt i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i10.i.i.i.i, 63
  br i1 %i.t, label %.thread.i.i.i.i16.i.i.i.i, label %bb.g

.thread.i.i.i.i16.i.i.i.i:                        ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @_RNvXs_NtCs1OzvMeFnvWA_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCsenQHu2qVDfv_9rand_core5block9Generator8generateCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.u, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %0), !noalias !189
  br label %_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randommECs31YAwBA1AlL_19xet_core_structures.exit17.i.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.v = zext nneg i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i10.i.i.i.i to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.v
  %i.x = add nuw nsw i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i10.i.i.i.i, 1
  br label %_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randommECs31YAwBA1AlL_19xet_core_structures.exit17.i.i.i.i

_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randommECs31YAwBA1AlL_19xet_core_structures.exit17.i.i.i.i: ; preds = %bb.g, %.thread.i.i.i.i16.i.i.i.i
  %.sroa.6.0.extract.trunc.i.i.i.i.i.i14.i.i.i.i = phi i32 [ 1, %.thread.i.i.i.i16.i.i.i.i ], [ %i.x, %bb.g ]
  %.in.i.i.i.i15.i.i.i.i = phi ptr [ %0, %.thread.i.i.i.i16.i.i.i.i ], [ %i.w, %bb.g ]
  %i.y = load i32, ptr %.in.i.i.i.i15.i.i.i.i, align 4, !alias.scope !191, !noalias !189, !noundef !4
  store i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i14.i.i.i.i, ptr %0, align 4, !alias.scope !191, !noalias !189
  %6 = tail call i32 @llvm.umulh.i32(i32 %i.y, i32 %4)
  %i.z = xor i32 %i.q, -1
  %.not9.i.i.i.i = icmp ugt i32 %6, %i.z
  %i.aa = zext i1 %.not9.i.i.i.i to i64
  %i.ab = add nuw nsw i64 %i.p, %i.aa
  br label %_RINvXs6_NtNtCs4DkaUnCZMGd_4rand5distr7uniformINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEINtB6_11SampleRangejE13sample_singleNtNtNtBa_4rngs3std6StdRngECs31YAwBA1AlL_19xet_core_structures.exit.thread8

_RINvXsn_NtNtNtCs4DkaUnCZMGd_4rand5distr7uniform3intINtB6_10UniformIntyENtB8_14UniformSampler13sample_singleNtNtNtBc_4rngs3std6StdRngyyECs31YAwBA1AlL_19xet_core_structures.exit.i.i: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !192
  %i.ac = add i64 %2, -1
  call fastcc void @_RINvXsn_NtNtNtCs4DkaUnCZMGd_4rand5distr7uniform3intINtB6_10UniformIntyENtB8_14UniformSampler23sample_single_inclusiveNtNtNtBc_4rngs3std6StdRngyyECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %i.a, i64 noundef %1, i64 noundef %i.ac, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %0) #25, !noalias !189
  %i.ad = load i8, ptr %i.a, align 8, !range !13, !noalias !192, !noundef !4
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %_RINvXs6_NtNtCs4DkaUnCZMGd_4rand5distr7uniformINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEINtB6_11SampleRangejE13sample_singleNtNtNtBa_4rngs3std6StdRngECs31YAwBA1AlL_19xet_core_structures.exit.thread13, label %_RINvXs6_NtNtCs4DkaUnCZMGd_4rand5distr7uniformINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEINtB6_11SampleRangejE13sample_singleNtNtNtBa_4rngs3std6StdRngECs31YAwBA1AlL_19xet_core_structures.exit

_RINvXs6_NtNtCs4DkaUnCZMGd_4rand5distr7uniformINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEINtB6_11SampleRangejE13sample_singleNtNtNtBa_4rngs3std6StdRngECs31YAwBA1AlL_19xet_core_structures.exit.thread8: ; preds = %_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randommECs31YAwBA1AlL_19xet_core_structures.exit13.i.i.i.i, %_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randommECs31YAwBA1AlL_19xet_core_structures.exit17.i.i.i.i
  %.sroa.04.0.i.i.i.i = phi i64 [ %i.ab, %_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randommECs31YAwBA1AlL_19xet_core_structures.exit17.i.i.i.i ], [ %i.p, %_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randommECs31YAwBA1AlL_19xet_core_structures.exit13.i.i.i.i ]
  %i.af = add i64 %.sroa.04.0.i.i.i.i, %1
  %.sroa.6.0.extract.shift.i.i = and i64 %i.af, 4294967295
  br label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultjNtNtNtCs4DkaUnCZMGd_4rand5distr7uniform5ErrorE6unwrapCs31YAwBA1AlL_19xet_core_structures.exit

_RINvXs6_NtNtCs4DkaUnCZMGd_4rand5distr7uniformINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEINtB6_11SampleRangejE13sample_singleNtNtNtBa_4rngs3std6StdRngECs31YAwBA1AlL_19xet_core_structures.exit.thread13: ; preds = %_RINvXsn_NtNtNtCs4DkaUnCZMGd_4rand5distr7uniform3intINtB6_10UniformIntyENtB8_14UniformSampler13sample_singleNtNtNtBc_4rngs3std6StdRngyyECs31YAwBA1AlL_19xet_core_structures.exit.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.ah = load i8, ptr %i.ag, align 1, !range !13, !noalias !192, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !192
  br label %_RINvXs6_NtNtCs4DkaUnCZMGd_4rand5distr7uniformINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEINtB6_11SampleRangejE13sample_singleNtNtNtBa_4rngs3std6StdRngECs31YAwBA1AlL_19xet_core_structures.exit.thread

_RINvXs6_NtNtCs4DkaUnCZMGd_4rand5distr7uniformINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEINtB6_11SampleRangejE13sample_singleNtNtNtBa_4rngs3std6StdRngECs31YAwBA1AlL_19xet_core_structures.exit: ; preds = %_RINvXsn_NtNtNtCs4DkaUnCZMGd_4rand5distr7uniform3intINtB6_10UniformIntyENtB8_14UniformSampler13sample_singleNtNtNtBc_4rngs3std6StdRngyyECs31YAwBA1AlL_19xet_core_structures.exit.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !noalias !192, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !192
  br label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultjNtNtNtCs4DkaUnCZMGd_4rand5distr7uniform5ErrorE6unwrapCs31YAwBA1AlL_19xet_core_structures.exit

_RINvXs6_NtNtCs4DkaUnCZMGd_4rand5distr7uniformINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEINtB6_11SampleRangejE13sample_singleNtNtNtBa_4rngs3std6StdRngECs31YAwBA1AlL_19xet_core_structures.exit.thread: ; preds = %bb.c, %_RINvXs6_NtNtCs4DkaUnCZMGd_4rand5distr7uniformINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEINtB6_11SampleRangejE13sample_singleNtNtNtBa_4rngs3std6StdRngECs31YAwBA1AlL_19xet_core_structures.exit.thread13
  %.sroa.6.27 = phi i8 [ %i.ah, %_RINvXs6_NtNtCs4DkaUnCZMGd_4rand5distr7uniformINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEINtB6_11SampleRangejE13sample_singleNtNtNtBa_4rngs3std6StdRngECs31YAwBA1AlL_19xet_core_structures.exit.thread13 ], [ 0, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !193
  store i8 %.sroa.6.27, ptr %i.b, align 1, !noalias !193
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @56, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @57, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #26, !noalias !194
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultjNtNtNtCs4DkaUnCZMGd_4rand5distr7uniform5ErrorE6unwrapCs31YAwBA1AlL_19xet_core_structures.exit: ; preds = %_RINvXs6_NtNtCs4DkaUnCZMGd_4rand5distr7uniformINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEINtB6_11SampleRangejE13sample_singleNtNtNtBa_4rngs3std6StdRngECs31YAwBA1AlL_19xet_core_structures.exit, %_RINvXs6_NtNtCs4DkaUnCZMGd_4rand5distr7uniformINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEINtB6_11SampleRangejE13sample_singleNtNtNtBa_4rngs3std6StdRngECs31YAwBA1AlL_19xet_core_structures.exit.thread8
  %.sroa.103.212 = phi i64 [ %.sroa.6.0.extract.shift.i.i, %_RINvXs6_NtNtCs4DkaUnCZMGd_4rand5distr7uniformINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEINtB6_11SampleRangejE13sample_singleNtNtNtBa_4rngs3std6StdRngECs31YAwBA1AlL_19xet_core_structures.exit.thread8 ], [ %i.aj, %_RINvXs6_NtNtCs4DkaUnCZMGd_4rand5distr7uniformINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEINtB6_11SampleRangejE13sample_singleNtNtNtBa_4rngs3std6StdRngECs31YAwBA1AlL_19xet_core_structures.exit ]
  ret i64 %.sroa.103.212

bb.h:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @53, ptr noundef nonnull inttoptr (i64 51 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #26
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i32 @_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt12random_rangelINtNtNtCskKLDkoKarTP_4core3ops5range5RangelEECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 4 dereferenceable(320) %0, i32 noundef %1, i32 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.not = icmp slt i32 %1, %2
  br i1 %.not, label %bb.b, label %bb.f, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.a = sub i32 %2, %1                           ; 2 uses
  %i.b = load i32, ptr %0, align 4, !alias.scope !217, !noundef !4 ; 3 uses
  %i.c = icmp ugt i32 %i.b, 63
  br i1 %i.c, label %.thread.i.i.i.i.i.i.i, label %bb.c

.thread.i.i.i.i.i.i.i:                            ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @_RNvXs_NtCs1OzvMeFnvWA_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCsenQHu2qVDfv_9rand_core5block9Generator8generateCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.d, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %0)
  br label %_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randommECs31YAwBA1AlL_19xet_core_structures.exit.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.e = zext nneg i32 %i.b to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.e
  %i.g = add nuw nsw i32 %i.b, 1
  br label %_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randommECs31YAwBA1AlL_19xet_core_structures.exit.i.i.i

_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randommECs31YAwBA1AlL_19xet_core_structures.exit.i.i.i: ; preds = %bb.c, %.thread.i.i.i.i.i.i.i
  %.sroa.6.0.extract.trunc.i.i.i.i.i.i.i.i.i = phi i32 [ 1, %.thread.i.i.i.i.i.i.i ], [ %i.g, %bb.c ] ; 4 uses
  %.in.i.i.i.i.i.i.i = phi ptr [ %0, %.thread.i.i.i.i.i.i.i ], [ %i.f, %bb.c ]
  %i.h = load i32, ptr %.in.i.i.i.i.i.i.i, align 4, !alias.scope !218, !noundef !4
  store i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i.i.i.i, ptr %0, align 4, !alias.scope !218
  %i.i = zext i32 %i.h to i64
  %i.j = zext i32 %i.a to i64
  %i.k = mul nuw i64 %i.i, %i.j                   ; 2 uses
  %i.l = lshr i64 %i.k, 32
  %i.m = trunc nuw i64 %i.l to i32                ; 2 uses
  %i.n = trunc i64 %i.k to i32                    ; 2 uses
  %i.o = sub i32 %1, %2
  %i.p = icmp ult i32 %i.o, %i.n
  br i1 %i.p, label %bb.d, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultlNtNtNtCs4DkaUnCZMGd_4rand5distr7uniform5ErrorE6unwrapCs31YAwBA1AlL_19xet_core_structures.exit

bb.d:                                             ; preds = %_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randommECs31YAwBA1AlL_19xet_core_structures.exit.i.i.i
  %i.q = icmp samesign ugt i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i.i.i.i, 63
  br i1 %i.q, label %.thread.i.i.i.i12.i.i.i, label %bb.e

.thread.i.i.i.i12.i.i.i:                          ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @_RNvXs_NtCs1OzvMeFnvWA_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCsenQHu2qVDfv_9rand_core5block9Generator8generateCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.r, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %0)
  br label %_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randommECs31YAwBA1AlL_19xet_core_structures.exit13.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.s = zext nneg i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i.i.i.i to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.s
  %i.u = add nuw nsw i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i.i.i.i, 1
  br label %_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randommECs31YAwBA1AlL_19xet_core_structures.exit13.i.i.i

_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randommECs31YAwBA1AlL_19xet_core_structures.exit13.i.i.i: ; preds = %bb.e, %.thread.i.i.i.i12.i.i.i
  %.sroa.6.0.extract.trunc.i.i.i.i.i.i10.i.i.i = phi i32 [ 1, %.thread.i.i.i.i12.i.i.i ], [ %i.u, %bb.e ]
  %.in.i.i.i.i11.i.i.i = phi ptr [ %0, %.thread.i.i.i.i12.i.i.i ], [ %i.t, %bb.e ]
  %i.v = load i32, ptr %.in.i.i.i.i11.i.i.i, align 4, !alias.scope !219, !noundef !4
  store i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i10.i.i.i, ptr %0, align 4, !alias.scope !219
  %4 = tail call i32 @llvm.umulh.i32(i32 %i.v, i32 %i.a)
  %i.w = xor i32 %i.n, -1
  %.not9.i.i.i = icmp ugt i32 %4, %i.w
  %i.x = zext i1 %.not9.i.i.i to i32
  %i.y = add nuw i32 %i.x, %i.m
  br label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultlNtNtNtCs4DkaUnCZMGd_4rand5distr7uniform5ErrorE6unwrapCs31YAwBA1AlL_19xet_core_structures.exit

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultlNtNtNtCs4DkaUnCZMGd_4rand5distr7uniform5ErrorE6unwrapCs31YAwBA1AlL_19xet_core_structures.exit: ; preds = %_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randommECs31YAwBA1AlL_19xet_core_structures.exit13.i.i.i, %_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randommECs31YAwBA1AlL_19xet_core_structures.exit.i.i.i
  %.sroa.04.0.i.i.i = phi i32 [ %i.y, %_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randommECs31YAwBA1AlL_19xet_core_structures.exit13.i.i.i ], [ %i.m, %_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randommECs31YAwBA1AlL_19xet_core_structures.exit.i.i.i ]
  %i.z = add i32 %.sroa.04.0.i.i.i, %1
  ret i32 %i.z

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @53, ptr noundef nonnull inttoptr (i64 51 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #26
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i32 @_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt12random_rangemINtNtNtCskKLDkoKarTP_4core3ops5range14RangeInclusivemEECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(12) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load i32, ptr %1, align 4, !alias.scope !247, !noalias !248, !noundef !4 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val5 = load i32, ptr %i.a, align 4, !alias.scope !248, !noalias !247, !noundef !4 ; 2 uses
  %.not.i = icmp ugt i32 %.val, %.val5
  br i1 %.not.i, label %bb.p, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %.val8 = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 7 uses
  %i.b = sub nuw i32 %.val5, %.val                ; 2 uses
  %i.c = add i32 %i.b, 1                          ; 3 uses
  %i.d = icmp eq i32 %i.c, 0
  %i.e = getelementptr inbounds nuw i8, ptr %.val8, i64 16 ; 13 uses
  %i.f = load i32, ptr %i.e, align 4, !noalias !249, !noundef !4 ; 5 uses
  %i.g = icmp ugt i32 %i.f, 63                    ; 2 uses
  br i1 %i.d, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  br i1 %i.g, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %.val8, i64 272 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val8, i64 320
  %i.j = load i64, ptr %i.i, align 4, !alias.scope !250, !noalias !251
  %i.k = icmp ugt i64 %i.j, 1023
  br i1 %i.k, label %bb.e, label %.thread.i.i.i.i.i.i, !prof !12

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvMs_NtNtCs4DkaUnCZMGd_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.h) #27, !noalias !251
  br label %.thread.i.i.i.i.i.i

.thread.i.i.i.i.i.i:                              ; preds = %bb.e, %bb.d
  tail call void @_RNvXs_NtCs1OzvMeFnvWA_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCsenQHu2qVDfv_9rand_core5block9Generator8generateCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.h, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.e), !noalias !252
  br label %_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECs31YAwBA1AlL_19xet_core_structures.exit.i.i

bb.f:                                             ; preds = %bb.c
  %i.l = zext nneg i32 %i.f to i64
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.l
  %i.n = add nuw nsw i32 %i.f, 1
  br label %_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECs31YAwBA1AlL_19xet_core_structures.exit.i.i

_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECs31YAwBA1AlL_19xet_core_structures.exit.i.i: ; preds = %bb.f, %.thread.i.i.i.i.i.i
  %.sroa.6.0.extract.trunc.i.i.i.i.i.i.i.i = phi i32 [ 1, %.thread.i.i.i.i.i.i ], [ %i.n, %bb.f ]
  %.in.i.i.i.i.i.i = phi ptr [ %i.e, %.thread.i.i.i.i.i.i ], [ %i.m, %bb.f ]
  %i.o = load i32, ptr %.in.i.i.i.i.i.i, align 4, !alias.scope !253, !noalias !252, !noundef !4
  store i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i.i.i, ptr %i.e, align 4, !alias.scope !253, !noalias !252
  br label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultmNtNtNtCs4DkaUnCZMGd_4rand5distr7uniform5ErrorE6unwrapCs31YAwBA1AlL_19xet_core_structures.exit

bb.g:                                             ; preds = %bb.b
  br i1 %i.g, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %.val8, i64 272 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.val8, i64 320
  %i.r = load i64, ptr %i.q, align 4, !alias.scope !254, !noalias !255
  %i.s = icmp ugt i64 %i.r, 1023
  br i1 %i.s, label %bb.i, label %.thread.i.i.i.i14.i.i, !prof !12

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvMs_NtNtCs4DkaUnCZMGd_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.p) #27, !noalias !255
  br label %.thread.i.i.i.i14.i.i

.thread.i.i.i.i14.i.i:                            ; preds = %bb.i, %bb.h
  tail call void @_RNvXs_NtCs1OzvMeFnvWA_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCsenQHu2qVDfv_9rand_core5block9Generator8generateCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.p, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.e), !noalias !256
  br label %_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECs31YAwBA1AlL_19xet_core_structures.exit15.i.i

bb.j:                                             ; preds = %bb.g
  %i.t = zext nneg i32 %i.f to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.t
  %i.v = add nuw nsw i32 %i.f, 1
  br label %_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECs31YAwBA1AlL_19xet_core_structures.exit15.i.i

_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECs31YAwBA1AlL_19xet_core_structures.exit15.i.i: ; preds = %bb.j, %.thread.i.i.i.i14.i.i
  %.sroa.6.0.extract.trunc.i.i.i.i.i.i12.i.i = phi i32 [ 1, %.thread.i.i.i.i14.i.i ], [ %i.v, %bb.j ] ; 4 uses
  %.in.i.i.i.i13.i.i = phi ptr [ %i.e, %.thread.i.i.i.i14.i.i ], [ %i.u, %bb.j ]
  %i.w = load i32, ptr %.in.i.i.i.i13.i.i, align 4, !alias.scope !257, !noalias !256, !noundef !4
  store i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i12.i.i, ptr %i.e, align 4, !alias.scope !257, !noalias !256
  %i.x = zext i32 %i.w to i64
  %i.y = zext i32 %i.c to i64
  %i.z = mul nuw i64 %i.x, %i.y                   ; 2 uses
  %i.aa = lshr i64 %i.z, 32
  %i.ab = trunc nuw i64 %i.aa to i32              ; 2 uses
  %i.ac = trunc i64 %i.z to i32                   ; 2 uses
  %i.ad = xor i32 %i.b, -1
  %i.ae = icmp ugt i32 %i.ac, %i.ad
  br i1 %i.ae, label %bb.k, label %bb.o

bb.k:                                             ; preds = %_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECs31YAwBA1AlL_19xet_core_structures.exit15.i.i
  %i.af = icmp samesign ugt i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i12.i.i, 63
  br i1 %i.af, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %.val8, i64 272 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.val8, i64 320
  %i.ai = load i64, ptr %i.ah, align 4, !alias.scope !258, !noalias !259
  %i.aj = icmp ugt i64 %i.ai, 1023
  br i1 %i.aj, label %bb.m, label %.thread.i.i.i.i18.i.i, !prof !12

bb.m:                                             ; preds = %bb.l
  tail call void @_RNvMs_NtNtCs4DkaUnCZMGd_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.ag) #27, !noalias !259
  br label %.thread.i.i.i.i18.i.i

.thread.i.i.i.i18.i.i:                            ; preds = %bb.m, %bb.l
  tail call void @_RNvXs_NtCs1OzvMeFnvWA_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCsenQHu2qVDfv_9rand_core5block9Generator8generateCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.ag, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.e), !noalias !260
  br label %_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECs31YAwBA1AlL_19xet_core_structures.exit19.i.i

bb.n:                                             ; preds = %bb.k
  %i.ak = zext nneg i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i12.i.i to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.ak
  %i.am = add nuw nsw i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i12.i.i, 1
  br label %_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECs31YAwBA1AlL_19xet_core_structures.exit19.i.i

_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECs31YAwBA1AlL_19xet_core_structures.exit19.i.i: ; preds = %bb.n, %.thread.i.i.i.i18.i.i
  %.sroa.6.0.extract.trunc.i.i.i.i.i.i16.i.i = phi i32 [ 1, %.thread.i.i.i.i18.i.i ], [ %i.am, %bb.n ]
  %.in.i.i.i.i17.i.i = phi ptr [ %i.e, %.thread.i.i.i.i18.i.i ], [ %i.al, %bb.n ]
  %i.an = load i32, ptr %.in.i.i.i.i17.i.i, align 4, !alias.scope !261, !noalias !260, !noundef !4
  store i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i16.i.i, ptr %i.e, align 4, !alias.scope !261, !noalias !260
  %3 = tail call i32 @llvm.umulh.i32(i32 %i.an, i32 %i.c)
  %i.ao = xor i32 %i.ac, -1
  %.not9.i.i = icmp ugt i32 %3, %i.ao
  %i.ap = zext i1 %.not9.i.i to i32
  %i.aq = add nuw i32 %i.ap, %i.ab
  br label %bb.o

bb.o:                                             ; preds = %_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECs31YAwBA1AlL_19xet_core_structures.exit19.i.i, %_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECs31YAwBA1AlL_19xet_core_structures.exit15.i.i
  %.sroa.04.0.i.i = phi i32 [ %i.aq, %_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECs31YAwBA1AlL_19xet_core_structures.exit19.i.i ], [ %i.ab, %_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECs31YAwBA1AlL_19xet_core_structures.exit15.i.i ]
  %i.ar = add i32 %.sroa.04.0.i.i, %.val
  br label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultmNtNtNtCs4DkaUnCZMGd_4rand5distr7uniform5ErrorE6unwrapCs31YAwBA1AlL_19xet_core_structures.exit

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultmNtNtNtCs4DkaUnCZMGd_4rand5distr7uniform5ErrorE6unwrapCs31YAwBA1AlL_19xet_core_structures.exit: ; preds = %bb.o, %_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECs31YAwBA1AlL_19xet_core_structures.exit.i.i
  %.sroa.51.0.i.i = phi i32 [ %i.o, %_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECs31YAwBA1AlL_19xet_core_structures.exit.i.i ], [ %i.ar, %bb.o ]
  ret i32 %.sroa.51.0.i.i

bb.p:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @53, ptr noundef nonnull inttoptr (i64 51 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) #26
  unreachable
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_RNvMNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15streaming_shardNtB2_15MDBMinimalShard15serialized_size(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %0, i1 noundef zeroext %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  br i1 %1, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8 ; 3 uses
  %.phi.trans.insert11 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre12 = load i64, ptr %.phi.trans.insert11, align 8 ; 5 uses
  %i.a = icmp eq i64 %.pre12, 0
  br i1 %i.a, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs15MDBFileInfoViewENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCNvMNtBU_15streaming_shardNtB37_15MDBMinimalShard15serialized_size0EBW_.exit, label %.split.us.i.preheader

.split.us.i.preheader:                            ; preds = %bb.b
  %xtraiter = and i64 %.pre12, 1
  %i.b = icmp eq i64 %.pre12, 1
  br i1 %i.b, label %.split.us.i.epil.preheader, label %.split.us.i.preheader.new

.split.us.i.preheader.new:                        ; preds = %.split.us.i.preheader
  %unroll_iter = and i64 %.pre12, -2
  br label %.split.us.i

.split.us.i:                                      ; preds = %.split.us.i, %.split.us.i.preheader.new
  %.sroa.04.0.us.i = phi i64 [ 0, %.split.us.i.preheader.new ], [ %i.y, %.split.us.i ] ; 3 uses
  %.sroa.02.0.us.i = phi i64 [ 0, %.split.us.i.preheader.new ], [ %i.x, %.split.us.i ]
  %niter = phi i64 [ 0, %.split.us.i.preheader.new ], [ %niter.next.1, %.split.us.i ]
  %i.c = getelementptr inbounds nuw [80 x i8], ptr %.pre, i64 %.sroa.04.0.us.i ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 68
  %i.e = load i32, ptr %i.d, align 4, !noalias !266, !noundef !4
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.h = load i32, ptr %i.g, align 8, !noalias !266
  %i.i = lshr i32 %i.h, 30
  %.lobit.i.us.i = and i32 %i.i, 1
  %..i.us.i = zext nneg i32 %.lobit.i.us.i to i64
  %i.j = add nuw nsw i64 %i.f, 1
  %i.k = add nuw nsw i64 %i.j, %..i.us.i
  %i.l = mul nuw nsw i64 %i.k, 48
  %i.m = add i64 %i.l, %.sroa.02.0.us.i
  %i.n = getelementptr inbounds nuw [80 x i8], ptr %.pre, i64 %.sroa.04.0.us.i ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 148
  %i.p = load i32, ptr %i.o, align 4, !noalias !266, !noundef !4
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 144
  %i.s = load i32, ptr %i.r, align 8, !noalias !266
  %i.t = lshr i32 %i.s, 30
  %.lobit.i.us.i.1 = and i32 %i.t, 1
  %..i.us.i.1 = zext nneg i32 %.lobit.i.us.i.1 to i64
  %i.u = add nuw nsw i64 %i.q, 1
  %i.v = add nuw nsw i64 %i.u, %..i.us.i.1
  %i.w = mul nuw nsw i64 %i.v, 48
  %i.x = add i64 %i.w, %i.m                       ; 3 uses
  %i.y = add nuw i64 %.sroa.04.0.us.i, 2          ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs15MDBFileInfoViewENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCNvMNtBU_15streaming_shardNtB37_15MDBMinimalShard15serialized_size0EBW_.exit.loopexit27.unr-lcssa, label %.split.us.i

.split.i:                                         ; preds = %.split.i, %.split.i.preheader.new
  %.sroa.04.0.i = phi i64 [ 0, %.split.i.preheader.new ], [ %i.ax, %.split.i ] ; 3 uses
  %.sroa.02.0.i = phi i64 [ 0, %.split.i.preheader.new ], [ %i.aw, %.split.i ]
  %niter36 = phi i64 [ 0, %.split.i.preheader.new ], [ %niter36.next.1, %.split.i ]
  %i.z = getelementptr inbounds nuw [80 x i8], ptr %i.dn, i64 %.sroa.04.0.i ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 68
  %i.ab = load i32, ptr %i.aa, align 4, !noalias !266, !noundef !4
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  %i.ae = load i32, ptr %i.ad, align 8, !noalias !266 ; 2 uses
  %.not.i.i = icmp slt i32 %i.ae, 0
  %spec.select.i = select i1 %.not.i.i, i64 %i.ac, i64 0
  %i.af = lshr i32 %i.ae, 30
  %.lobit.i.i = and i32 %i.af, 1
  %..i.i = zext nneg i32 %.lobit.i.i to i64
  %i.ag = add nuw nsw i64 %i.ac, 1
  %i.ah = add nuw nsw i64 %i.ag, %spec.select.i
  %i.ai = add nuw nsw i64 %i.ah, %..i.i
  %i.aj = mul nuw nsw i64 %i.ai, 48
  %i.ak = add i64 %i.aj, %.sroa.02.0.i
  %i.al = getelementptr inbounds nuw [80 x i8], ptr %i.dn, i64 %.sroa.04.0.i ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 148
  %i.an = load i32, ptr %i.am, align 4, !noalias !266, !noundef !4
  %i.ao = zext i32 %i.an to i64                   ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 144
  %i.aq = load i32, ptr %i.ap, align 8, !noalias !266 ; 2 uses
  %.not.i.i.1 = icmp slt i32 %i.aq, 0
  %spec.select.i.1 = select i1 %.not.i.i.1, i64 %i.ao, i64 0
  %i.ar = lshr i32 %i.aq, 30
  %.lobit.i.i.1 = and i32 %i.ar, 1
  %..i.i.1 = zext nneg i32 %.lobit.i.i.1 to i64
  %i.as = add nuw nsw i64 %i.ao, 1
  %i.at = add nuw nsw i64 %i.as, %spec.select.i.1
  %i.au = add nuw nsw i64 %i.at, %..i.i.1
  %i.av = mul nuw nsw i64 %i.au, 48
  %i.aw = add i64 %i.av, %i.ak                    ; 3 uses
  %i.ax = add nuw i64 %.sroa.04.0.i, 2            ; 2 uses
  %niter36.next.1 = add nuw i64 %niter36, 2       ; 2 uses
  %niter36.ncmp.1 = icmp eq i64 %niter36.next.1, %unroll_iter35
  br i1 %niter36.ncmp.1, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs15MDBFileInfoViewENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCNvMNtBU_15streaming_shardNtB37_15MDBMinimalShard15serialized_size0EBW_.exit.loopexit.unr-lcssa, label %.split.i

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs15MDBFileInfoViewENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCNvMNtBU_15streaming_shardNtB37_15MDBMinimalShard15serialized_size0EBW_.exit.loopexit.unr-lcssa: ; preds = %.split.i
  %lcmp.mod32.not = icmp eq i64 %xtraiter31, 0
  br i1 %lcmp.mod32.not, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs15MDBFileInfoViewENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCNvMNtBU_15streaming_shardNtB37_15MDBMinimalShard15serialized_size0EBW_.exit, label %.split.i.epil.preheader

.split.i.epil.preheader:                          ; preds = %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs15MDBFileInfoViewENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCNvMNtBU_15streaming_shardNtB37_15MDBMinimalShard15serialized_size0EBW_.exit.loopexit.unr-lcssa, %.split.i.preheader
  %.sroa.04.0.i.epil.init = phi i64 [ 0, %.split.i.preheader ], [ %i.ax, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs15MDBFileInfoViewENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCNvMNtBU_15streaming_shardNtB37_15MDBMinimalShard15serialized_size0EBW_.exit.loopexit.unr-lcssa ]
  %.sroa.02.0.i.epil.init = phi i64 [ 0, %.split.i.preheader ], [ %i.aw, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs15MDBFileInfoViewENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCNvMNtBU_15streaming_shardNtB37_15MDBMinimalShard15serialized_size0EBW_.exit.loopexit.unr-lcssa ]
  %lcmp.mod34 = trunc i64 %i.dl to i1
  tail call void @llvm.assume(i1 %lcmp.mod34)
  %i.ay = getelementptr inbounds nuw [80 x i8], ptr %i.dn, i64 %.sroa.04.0.i.epil.init ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 68
  %i.ba = load i32, ptr %i.az, align 4, !noalias !266, !noundef !4
  %i.bb = zext i32 %i.ba to i64                   ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 64
  %i.bd = load i32, ptr %i.bc, align 8, !noalias !266 ; 2 uses
  %.not.i.i.epil = icmp slt i32 %i.bd, 0
  %spec.select.i.epil = select i1 %.not.i.i.epil, i64 %i.bb, i64 0
  %i.be = lshr i32 %i.bd, 30
  %.lobit.i.i.epil = and i32 %i.be, 1
  %..i.i.epil = zext nneg i32 %.lobit.i.i.epil to i64
  %i.bf = add nuw nsw i64 %i.bb, 1
  %i.bg = add nuw nsw i64 %i.bf, %spec.select.i.epil
  %i.bh = add nuw nsw i64 %i.bg, %..i.i.epil
  %i.bi = mul nuw nsw i64 %i.bh, 48
  %i.bj = add i64 %i.bi, %.sroa.02.0.i.epil.init
  br label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs15MDBFileInfoViewENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCNvMNtBU_15streaming_shardNtB37_15MDBMinimalShard15serialized_size0EBW_.exit

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs15MDBFileInfoViewENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCNvMNtBU_15streaming_shardNtB37_15MDBMinimalShard15serialized_size0EBW_.exit.loopexit27.unr-lcssa: ; preds = %.split.us.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs15MDBFileInfoViewENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCNvMNtBU_15streaming_shardNtB37_15MDBMinimalShard15serialized_size0EBW_.exit, label %.split.us.i.epil.preheader

.split.us.i.epil.preheader:                       ; preds = %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs15MDBFileInfoViewENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCNvMNtBU_15streaming_shardNtB37_15MDBMinimalShard15serialized_size0EBW_.exit.loopexit27.unr-lcssa, %.split.us.i.preheader
  %.sroa.04.0.us.i.epil.init = phi i64 [ 0, %.split.us.i.preheader ], [ %i.y, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs15MDBFileInfoViewENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCNvMNtBU_15streaming_shardNtB37_15MDBMinimalShard15serialized_size0EBW_.exit.loopexit27.unr-lcssa ]
  %.sroa.02.0.us.i.epil.init = phi i64 [ 0, %.split.us.i.preheader ], [ %i.x, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs15MDBFileInfoViewENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCNvMNtBU_15streaming_shardNtB37_15MDBMinimalShard15serialized_size0EBW_.exit.loopexit27.unr-lcssa ]
  %lcmp.mod30 = trunc i64 %.pre12 to i1
  tail call void @llvm.assume(i1 %lcmp.mod30)
  %i.bk = getelementptr inbounds nuw [80 x i8], ptr %.pre, i64 %.sroa.04.0.us.i.epil.init ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 68
  %i.bm = load i32, ptr %i.bl, align 4, !noalias !266, !noundef !4
  %i.bn = zext i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 64
  %i.bp = load i32, ptr %i.bo, align 8, !noalias !266
  %i.bq = lshr i32 %i.bp, 30
  %.lobit.i.us.i.epil = and i32 %i.bq, 1
  %..i.us.i.epil = zext nneg i32 %.lobit.i.us.i.epil to i64
  %i.br = add nuw nsw i64 %i.bn, 1
  %i.bs = add nuw nsw i64 %i.br, %..i.us.i.epil
  %i.bt = mul nuw nsw i64 %i.bs, 48
  %i.bu = add i64 %i.bt, %.sroa.02.0.us.i.epil.init
  br label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs15MDBFileInfoViewENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCNvMNtBU_15streaming_shardNtB37_15MDBMinimalShard15serialized_size0EBW_.exit

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs15MDBFileInfoViewENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCNvMNtBU_15streaming_shardNtB37_15MDBMinimalShard15serialized_size0EBW_.exit: ; preds = %.split.us.i.epil.preheader, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs15MDBFileInfoViewENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCNvMNtBU_15streaming_shardNtB37_15MDBMinimalShard15serialized_size0EBW_.exit.loopexit27.unr-lcssa, %.split.i.epil.preheader, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs15MDBFileInfoViewENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCNvMNtBU_15streaming_shardNtB37_15MDBMinimalShard15serialized_size0EBW_.exit.loopexit.unr-lcssa, %bb.b
  %.sroa.0.0.i = phi i64 [ 0, %bb.b ], [ %i.bj, %.split.i.epil.preheader ], [ %i.aw, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs15MDBFileInfoViewENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCNvMNtBU_15streaming_shardNtB37_15MDBMinimalShard15serialized_size0EBW_.exit.loopexit.unr-lcssa ], [ %i.x, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs15MDBFileInfoViewENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCNvMNtBU_15streaming_shardNtB37_15MDBMinimalShard15serialized_size0EBW_.exit.loopexit27.unr-lcssa ], [ %i.bu, %.split.us.i.epil.preheader ]
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bw = load ptr, ptr %i.bv, align 8, !nonnull !4, !noundef !4 ; 5 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.by = load i64, ptr %i.bx, align 8, !noundef !4 ; 5 uses
  %i.bz = icmp eq i64 %i.by, 0
  br i1 %i.bz, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs15MDBXorbInfoViewENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCNvMNtBU_15streaming_shardNtB37_15MDBMinimalShard15serialized_sizes_0EBW_.exit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs15MDBFileInfoViewENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCNvMNtBU_15streaming_shardNtB37_15MDBMinimalShard15serialized_size0EBW_.exit
  %min.iters.check = icmp ult i64 %i.by, 4
  br i1 %min.iters.check, label %.preheader.preheader23, label %vector.ph

vector.ph:                                        ; preds = %.preheader.preheader
  %n.vec = and i64 %i.by, -4                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.cw, %vector.body ]
  %vec.phi22 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.cx, %vector.body ]
  %i.ca = getelementptr inbounds nuw [80 x i8], ptr %i.bw, i64 %index
  %i.cb = getelementptr inbounds nuw [80 x i8], ptr %i.bw, i64 %index
  %i.cc = getelementptr inbounds nuw [80 x i8], ptr %i.bw, i64 %index
  %i.cd = getelementptr inbounds nuw [80 x i8], ptr %i.bw, i64 %index
  %i.ce = getelementptr i8, ptr %i.ca, i64 68
  %i.cf = getelementptr i8, ptr %i.cb, i64 148
  %i.cg = getelementptr i8, ptr %i.cc, i64 228
  %i.ch = getelementptr i8, ptr %i.cd, i64 308
  %i.ci = load i32, ptr %i.ce, align 4, !noundef !4
  %i.cj = load i32, ptr %i.cf, align 4, !noundef !4
  %i.ck = insertelement <2 x i32> poison, i32 %i.ci, i64 0
  %i.cl = insertelement <2 x i32> %i.ck, i32 %i.cj, i64 1
end_hunk_0
begin_hunk_1_@_RNvNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12shard_format13test_routines21gen_random_shard_impl:bb.a

bb.u:                                             ; preds = %bb.r, %bb.q
  %i.hn = load ptr, ptr %i.cz, align 8, !alias.scope !417, !noalias !418, !nonnull !4, !noundef !4
  %i.ho = getelementptr inbounds nuw [72 x i8], ptr %i.hn, i64 %i.hi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ho, ptr noundef nonnull align 8 dereferenceable(72) %i.k, i64 72, i1 false)
  %i.hp = add i64 %i.hi, 1
  store i64 %i.hp, ptr %i.da, align 8, !alias.scope !417, !noalias !418
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.o

bb.v:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.hq = load i64, ptr %i.j, align 8, !range !16, !noundef !4
  %.not = icmp eq i64 %i.hq, -1
  br i1 %.not, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.hr, ptr noundef nonnull align 8 dereferenceable(40) %i.j, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.hs = icmp eq ptr %i.dk, %i.db
  br i1 %i.hs, label %._crit_edge103, label %bb.c

bb.y:                                             ; preds = %.split109.us, %bb.w
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs11MDBXorbInfoENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %bb.aa unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ht = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs11MDBXorbInfoENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %.thread74 unwind label %bb.ab

bb.aa:                                            ; preds = %bb.y
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs11MDBXorbInfoENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %bb.as unwind label %.thread80

.thread80:                                        ; preds = %bb.aa
  %i.hu = landingpad { ptr, i32 }
          cleanup
  br label %.thread74

bb.ab:                                            ; preds = %bb.z
  %i.hv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

.body.thread:                                     ; preds = %bb.s, %.body.thread89
  %eh.lpad-body88 = phi { ptr, i32 } [ %i.hg, %.body.thread89 ], [ %i.hl, %bb.s ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs11MDBXorbInfoEBH_(ptr noalias nofree noundef align 8 dereferenceable(72) %i.n) #24
          to label %.thread82 unwind label %bb.ac

bb.ac:                                            ; preds = %.thread74, %bb.al, %.thread82, %.body.thread
  %i.hw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.ad:                                            ; preds = %.noexc45, %bb.k, %bb.l
  %.sroa.0.018.i42 = phi i32 [ %i.eq, %bb.l ], [ 1, %.noexc45 ], [ 2, %bb.k ] ; 5 uses
  %.sroa.02.017.i43 = phi i32 [ %i.en, %bb.l ], [ %i.ei, %.noexc45 ], [ %i.ej, %bb.k ]
  %.sroa.03.016.i44 = phi i32 [ %i.ep, %bb.l ], [ %i.ej, %.noexc45 ], [ %i.ek, %bb.k ]
  store i32 %.sroa.0.018.i42, ptr %i.s, align 4, !alias.scope !415
  %i.hx = zext i32 %.sroa.03.016.i44 to i64
  %i.hy = shl nuw i64 %i.hx, 32
  %i.hz = zext i32 %.sroa.02.017.i43 to i64
  %i.ia = or disjoint i64 %i.hy, %i.hz            ; 4 uses
  %i.ib = add i64 %i.ia, -7046029254386353131     ; 2 uses
  %i.ic = lshr i64 %i.ib, 30
  %i.id = xor i64 %i.ic, %i.ib
  %i.ie = mul i64 %i.id, -4658895280553007687     ; 2 uses
  %i.if = lshr i64 %i.ie, 27
  %i.ig = xor i64 %i.if, %i.ie
  %i.ih = mul i64 %i.ig, -7723592293110705685     ; 2 uses
  %i.ii = lshr i64 %i.ih, 31
  %i.ij = xor i64 %i.ii, %i.ih                    ; 4 uses
  %i.ik = add i64 %i.ia, 4354685564936845354      ; 2 uses
  %i.il = lshr i64 %i.ik, 30
  %i.im = xor i64 %i.il, %i.ik
  %i.in = mul i64 %i.im, -4658895280553007687     ; 2 uses
  %i.io = lshr i64 %i.in, 27
  %i.ip = xor i64 %i.io, %i.in
  %i.iq = mul i64 %i.ip, -7723592293110705685     ; 2 uses
  %i.ir = lshr i64 %i.iq, 31
  %i.is = xor i64 %i.ir, %i.iq                    ; 3 uses
  %i.it = add i64 %i.ia, -2691343689449507777     ; 2 uses
  %i.iu = lshr i64 %i.it, 30
  %i.iv = xor i64 %i.iu, %i.it
  %i.iw = mul i64 %i.iv, -4658895280553007687     ; 2 uses
  %i.ix = lshr i64 %i.iw, 27
  %i.iy = xor i64 %i.ix, %i.iw
  %i.iz = mul i64 %i.iy, -7723592293110705685     ; 2 uses
  %i.ja = lshr i64 %i.iz, 31
  %i.jb = xor i64 %i.ja, %i.iz
  %i.jc = add i64 %i.ia, 8709371129873690708      ; 2 uses
  %i.jd = lshr i64 %i.jc, 30
  %i.je = xor i64 %i.jd, %i.jc
  %i.jf = mul i64 %i.je, -4658895280553007687     ; 2 uses
  %i.jg = lshr i64 %i.jf, 27
  %i.jh = xor i64 %i.jg, %i.jf
  %i.ji = mul i64 %i.jh, -7723592293110705685     ; 2 uses
  %i.jj = lshr i64 %i.ji, 31
  %i.jk = xor i64 %i.jj, %i.ji                    ; 2 uses
  %i.jl = add i64 %i.ij, %i.jk                    ; 2 uses
  %i.jm = call noundef i64 @llvm.fshl.i64(i64 %i.jl, i64 %i.jl, i64 23)
  %i.jn = add i64 %i.jm, %i.ij
  %i.jo = shl i64 %i.is, 17
  %i.jp = xor i64 %i.jb, %i.ij                    ; 2 uses
  %i.jq = xor i64 %i.jk, %i.is                    ; 3 uses
  %i.jr = xor i64 %i.jp, %i.is                    ; 2 uses
  %i.js = xor i64 %i.jq, %i.ij                    ; 4 uses
  %i.jt = xor i64 %i.jp, %i.jo
  %i.ju = call noundef i64 @llvm.fshl.i64(i64 %i.jq, i64 %i.jq, i64 45) ; 2 uses
  %i.jv = add i64 %i.js, %i.ju                    ; 2 uses
  %i.jw = call noundef i64 @llvm.fshl.i64(i64 %i.jv, i64 %i.jv, i64 23)
  %i.jx = add i64 %i.jw, %i.js
  %i.jy = xor i64 %i.jt, %i.js
  %i.jz = xor i64 %i.ju, %i.jr                    ; 3 uses
  %i.ka = xor i64 %i.jy, %i.jr
  %i.kb = xor i64 %i.jz, %i.js                    ; 3 uses
  %i.kc = call noundef i64 @llvm.fshl.i64(i64 %i.jz, i64 %i.jz, i64 45) ; 2 uses
  %i.kd = add i64 %i.kb, %i.kc                    ; 2 uses
  %i.ke = call noundef i64 @llvm.fshl.i64(i64 %i.kd, i64 %i.kd, i64 23)
  %i.kf = add i64 %i.ke, %i.kb
  %i.kg = xor i64 %i.ka, %i.kc                    ; 3 uses
  %i.kh = xor i64 %i.kg, %i.kb                    ; 2 uses
  %i.ki = call noundef i64 @llvm.fshl.i64(i64 %i.kg, i64 %i.kg, i64 45)
  %i.kj = add i64 %i.kh, %i.ki                    ; 2 uses
  %i.kk = call noundef i64 @llvm.fshl.i64(i64 %i.kj, i64 %i.kj, i64 23)
  %i.kl = add i64 %i.kk, %i.kh
  store i64 %i.jn, ptr %i.o, align 8, !alias.scope !419
  store i64 %i.jx, ptr %.sroa.4.0..sroa_idx.i50, align 8, !alias.scope !419
  store i64 %i.kf, ptr %.sroa.5.0..sroa_idx.i51, align 8, !alias.scope !419
  store i64 %i.kl, ptr %.sroa.6.0..sroa_idx.i52, align 8, !alias.scope !419
  %i.km = icmp samesign ugt i32 %.sroa.0.018.i42, 63
  br i1 %i.km, label %.thread.i.i.i.i.i.i.i.i, label %_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randommECs31YAwBA1AlL_19xet_core_structures.exit.i.i.i.i

.thread.i.i.i.i.i.i.i.i:                          ; preds = %bb.ad
  invoke void @_RNvXs_NtCs1OzvMeFnvWA_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCsenQHu2qVDfv_9rand_core5block9Generator8generateCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.dg, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.s)
          to label %_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randommECs31YAwBA1AlL_19xet_core_structures.exit.i.i.i.i.thread unwind label %.loopexit

_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randommECs31YAwBA1AlL_19xet_core_structures.exit.i.i.i.i: ; preds = %bb.ad
  %i.kn = zext nneg i32 %.sroa.0.018.i42 to i64
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.kn
  %i.kp = add nuw nsw i32 %.sroa.0.018.i42, 1     ; 2 uses
  %i.kq = load i32, ptr %i.ko, align 4, !alias.scope !420, !noalias !421, !noundef !4
  store i32 %i.kp, ptr %i.s, align 4, !alias.scope !420, !noalias !421
  %i.kr = zext i32 %i.kq to i64
  %i.ks = mul nuw nsw i64 %i.kr, 10000            ; 2 uses
  %i.kt = lshr i64 %i.ks, 32
  %i.ku = trunc nuw nsw i64 %i.kt to i32          ; 3 uses
  %i.kv = trunc i64 %i.ks to i32                  ; 3 uses
  %i.kw = icmp ugt i32 %i.kv, -10000
  br i1 %i.kw, label %bb.ae, label %bb.af

_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randommECs31YAwBA1AlL_19xet_core_structures.exit.i.i.i.i.thread: ; preds = %.thread.i.i.i.i.i.i.i.i
  %i.kx = load i32, ptr %i.s, align 4, !alias.scope !420, !noalias !421, !noundef !4
  store i32 1, ptr %i.s, align 4, !alias.scope !420, !noalias !421
  %i.ky = zext i32 %i.kx to i64
  %i.kz = mul nuw nsw i64 %i.ky, 10000            ; 2 uses
  %i.la = lshr i64 %i.kz, 32
  %i.lb = trunc nuw nsw i64 %i.la to i32          ; 2 uses
  %i.lc = trunc i64 %i.kz to i32                  ; 2 uses
  %i.ld = icmp ugt i32 %i.lc, -10000
  br i1 %i.ld, label %.thread94, label %bb.af

bb.ae:                                            ; preds = %_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randommECs31YAwBA1AlL_19xet_core_structures.exit.i.i.i.i
  %i.le = icmp eq i32 %.sroa.0.018.i42, 63
  br i1 %i.le, label %.thread.i.i.i.i12.i.i.i.i, label %.thread94

.thread.i.i.i.i12.i.i.i.i:                        ; preds = %bb.ae
  invoke void @_RNvXs_NtCs1OzvMeFnvWA_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCsenQHu2qVDfv_9rand_core5block9Generator8generateCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.dg, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.s)
          to label %_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randommECs31YAwBA1AlL_19xet_core_structures.exit13.i.i.i.i unwind label %.loopexit

.thread94:                                        ; preds = %_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randommECs31YAwBA1AlL_19xet_core_structures.exit.i.i.i.i.thread, %bb.ae
  %.sroa.6.0.extract.trunc.i.i.i.i.i.i.i.i.i.i9396 = phi i32 [ %i.kp, %bb.ae ], [ 1, %_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randommECs31YAwBA1AlL_19xet_core_structures.exit.i.i.i.i.thread ] ; 2 uses
  %i.lf = phi i32 [ %i.ku, %bb.ae ], [ %i.lb, %_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randommECs31YAwBA1AlL_19xet_core_structures.exit.i.i.i.i.thread ]
  %i.lg = phi i32 [ %i.kv, %bb.ae ], [ %i.lc, %_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randommECs31YAwBA1AlL_19xet_core_structures.exit.i.i.i.i.thread ]
  %i.lh = zext nneg i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i.i.i.i.i9396 to i64
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.lh
  %i.lj = add nuw nsw i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i.i.i.i.i9396, 1
  br label %_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randommECs31YAwBA1AlL_19xet_core_structures.exit13.i.i.i.i

_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randommECs31YAwBA1AlL_19xet_core_structures.exit13.i.i.i.i: ; preds = %.thread.i.i.i.i12.i.i.i.i, %.thread94
  %i.lk = phi i32 [ %i.lf, %.thread94 ], [ %i.ku, %.thread.i.i.i.i12.i.i.i.i ]
  %i.ll = phi i32 [ %i.lg, %.thread94 ], [ %i.kv, %.thread.i.i.i.i12.i.i.i.i ]
  %.sroa.6.0.extract.trunc.i.i.i.i.i.i10.i.i.i.i = phi i32 [ %i.lj, %.thread94 ], [ 1, %.thread.i.i.i.i12.i.i.i.i ]
  %.in.i.i.i.i11.i.i.i.i = phi ptr [ %i.li, %.thread94 ], [ %i.s, %.thread.i.i.i.i12.i.i.i.i ]
  %i.lm = load i32, ptr %.in.i.i.i.i11.i.i.i.i, align 4, !alias.scope !422, !noalias !421, !noundef !4
  store i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i10.i.i.i.i, ptr %i.s, align 4, !alias.scope !422, !noalias !421
  %9 = call i32 @llvm.umulh.i32(i32 %i.lm, i32 10000)
  %i.ln = xor i32 %i.ll, -1
  %.not9.i.i.i.i = icmp ugt i32 %9, %i.ln
  %i.lo = zext i1 %.not9.i.i.i.i to i32
  %i.lp = add nuw nsw i32 %i.lk, %i.lo
  br label %bb.af

bb.af:                                            ; preds = %_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randommECs31YAwBA1AlL_19xet_core_structures.exit13.i.i.i.i, %_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randommECs31YAwBA1AlL_19xet_core_structures.exit.i.i.i.i, %_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randommECs31YAwBA1AlL_19xet_core_structures.exit.i.i.i.i.thread
  %.sroa.04.0.i.i.i.i = phi i32 [ %i.lp, %_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randommECs31YAwBA1AlL_19xet_core_structures.exit13.i.i.i.i ], [ %i.ku, %_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randommECs31YAwBA1AlL_19xet_core_structures.exit.i.i.i.i ], [ %i.lb, %_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randommECs31YAwBA1AlL_19xet_core_structures.exit.i.i.i.i.thread ]
  %i.lq = add nuw nsw i32 %.sroa.04.0.i.i.i.i, 10000
  invoke void @_RINvMs_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structsNtB5_22XorbChunkSequenceEntry3newlmEB9_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.o, i32 noundef %i.lq, i32 noundef %.sroa.02.099)
          to label %bb.ag unwind label %.loopexit

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.lr = load i64, ptr %i.de, align 8, !alias.scope !423, !noalias !424, !noundef !4 ; 3 uses
  %i.ls = load i64, ptr %i.q, align 8, !range !5, !alias.scope !423, !noalias !424, !noundef !4
  %i.lt = icmp eq i64 %i.lr, %i.ls
  br i1 %i.lt, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs22XorbChunkSequenceEntryE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q) #27
          to label %bb.ai unwind label %.loopexit

bb.ai:                                            ; preds = %bb.ag, %bb.ah
  %i.lu = load ptr, ptr %i.dd, align 8, !alias.scope !423, !noalias !424, !nonnull !4, !noundef !4
  %i.lv = getelementptr inbounds nuw [48 x i8], ptr %i.lu, i64 %i.lr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.lv, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.p, i64 48, i1 false)
  %i.lw = add i64 %i.lr, 1
  store i64 %i.lw, ptr %i.de, align 8, !alias.scope !423, !noalias !424
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.lx = load i32, ptr %i.s, align 4, !alias.scope !425, !noundef !4 ; 4 uses
  %i.ly = icmp ugt i32 %i.lx, 63
  br i1 %i.ly, label %_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randommECs31YAwBA1AlL_19xet_core_structures.exit13.i.i.thread.i.i, label %_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randommECs31YAwBA1AlL_19xet_core_structures.exit13.i.i.i.i56

_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randommECs31YAwBA1AlL_19xet_core_structures.exit13.i.i.i.i56: ; preds = %bb.ai
  %i.lz = zext nneg i32 %i.lx to i64
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.lz
  %i.mb = add nuw nsw i32 %i.lx, 1                ; 3 uses
  %i.mc = load i32, ptr %i.ma, align 4, !alias.scope !426, !noundef !4
  store i32 %i.mb, ptr %i.s, align 4, !alias.scope !426
  %i.md = zext i32 %i.mc to i64
  %i.me = mul nuw nsw i64 %i.md, 10000            ; 2 uses
  %i.mf = lshr i64 %i.me, 32                      ; 3 uses
  %i.mg = trunc i64 %i.me to i32                  ; 3 uses
  %i.mh = icmp ugt i32 %i.mg, -10000
  br i1 %i.mh, label %bb.aj, label %bb.ak

_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randommECs31YAwBA1AlL_19xet_core_structures.exit13.i.i.thread.i.i: ; preds = %bb.ai
  invoke void @_RNvXs_NtCs1OzvMeFnvWA_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCsenQHu2qVDfv_9rand_core5block9Generator8generateCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.dg, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.s)
          to label %.noexc59 unwind label %.loopexit

.noexc59:                                         ; preds = %_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randommECs31YAwBA1AlL_19xet_core_structures.exit13.i.i.thread.i.i
  %i.mi = load i32, ptr %i.s, align 4, !alias.scope !426, !noundef !4
  store i32 1, ptr %i.s, align 4, !alias.scope !426
  %i.mj = zext i32 %i.mi to i64
  %i.mk = mul nuw nsw i64 %i.mj, 10000            ; 2 uses
  %i.ml = lshr i64 %i.mk, 32                      ; 2 uses
  %i.mm = trunc i64 %i.mk to i32                  ; 2 uses
  %i.mn = icmp ugt i32 %i.mm, -10000
  br i1 %i.mn, label %.thread.i.i, label %bb.ak

bb.aj:                                            ; preds = %_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randommECs31YAwBA1AlL_19xet_core_structures.exit13.i.i.i.i56
  %i.mo = icmp eq i32 %i.lx, 63
  br i1 %i.mo, label %.thread.i.i.i.i16.i.i.i.i, label %.thread.i.i

.thread.i.i.i.i16.i.i.i.i:                        ; preds = %bb.aj
  invoke void @_RNvXs_NtCs1OzvMeFnvWA_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCsenQHu2qVDfv_9rand_core5block9Generator8generateCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.dg, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.s)
          to label %_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randommECs31YAwBA1AlL_19xet_core_structures.exit17.i.i.i.i unwind label %.loopexit

.thread.i.i:                                      ; preds = %bb.aj, %.noexc59
  %.sroa.6.0.extract.trunc.i.i.i.i.i.i10.i.i46.i.i = phi i32 [ %i.mb, %bb.aj ], [ 1, %.noexc59 ] ; 2 uses
  %i.mp = phi i64 [ %i.mf, %bb.aj ], [ %i.ml, %.noexc59 ]
  %i.mq = phi i32 [ %i.mg, %bb.aj ], [ %i.mm, %.noexc59 ]
  %i.mr = zext nneg i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i10.i.i46.i.i to i64
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.mr
  %i.mt = add nuw nsw i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i10.i.i46.i.i, 1
  br label %_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randommECs31YAwBA1AlL_19xet_core_structures.exit17.i.i.i.i

_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randommECs31YAwBA1AlL_19xet_core_structures.exit17.i.i.i.i: ; preds = %.thread.i.i.i.i16.i.i.i.i, %.thread.i.i
  %i.mu = phi i64 [ %i.mp, %.thread.i.i ], [ %i.mf, %.thread.i.i.i.i16.i.i.i.i ]
  %i.mv = phi i32 [ %i.mq, %.thread.i.i ], [ %i.mg, %.thread.i.i.i.i16.i.i.i.i ]
  %.sroa.6.0.extract.trunc.i.i.i.i.i.i14.i.i.i.i = phi i32 [ %i.mt, %.thread.i.i ], [ 1, %.thread.i.i.i.i16.i.i.i.i ] ; 2 uses
  %.in.i.i.i.i15.i.i.i.i = phi ptr [ %i.ms, %.thread.i.i ], [ %i.s, %.thread.i.i.i.i16.i.i.i.i ]
  %i.mw = load i32, ptr %.in.i.i.i.i15.i.i.i.i, align 4, !alias.scope !427, !noundef !4
  store i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i14.i.i.i.i, ptr %i.s, align 4, !alias.scope !427
  %10 = call i32 @llvm.umulh.i32(i32 %i.mw, i32 10000)
  %i.mx = xor i32 %i.mv, -1
  %.not9.i.i.i.i58 = icmp ugt i32 %10, %i.mx
  %i.my = zext i1 %.not9.i.i.i.i58 to i64
  %i.mz = add nuw nsw i64 %i.mu, %i.my
  br label %bb.ak

bb.ak:                                            ; preds = %_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randommECs31YAwBA1AlL_19xet_core_structures.exit17.i.i.i.i, %.noexc59, %_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randommECs31YAwBA1AlL_19xet_core_structures.exit13.i.i.i.i56
  %i.na = phi i32 [ %.sroa.6.0.extract.trunc.i.i.i.i.i.i14.i.i.i.i, %_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randommECs31YAwBA1AlL_19xet_core_structures.exit17.i.i.i.i ], [ %i.mb, %_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randommECs31YAwBA1AlL_19xet_core_structures.exit13.i.i.i.i56 ], [ 1, %.noexc59 ] ; 2 uses
  %.sroa.04.0.i.i.i.i57 = phi i64 [ %i.mz, %_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randommECs31YAwBA1AlL_19xet_core_structures.exit17.i.i.i.i ], [ %i.mf, %_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randommECs31YAwBA1AlL_19xet_core_structures.exit13.i.i.i.i56 ], [ %i.ml, %.noexc59 ]
  %i.nb = trunc nuw nsw i64 %.sroa.04.0.i.i.i.i57 to i32
  %.sroa.6.0.extract.trunc.i.i = add i32 %.sroa.02.099, 10000
  %i.nc = add i32 %.sroa.6.0.extract.trunc.i.i, %i.nb ; 2 uses
  %exitcond.not = icmp eq i64 %i.eg, %i.dl
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

.thread82:                                        ; preds = %.split, %.split.us, %.body, %.body.thread, %bb.al
  %.pn25 = phi { ptr, i32 } [ %eh.lpad-body88, %.body.thread ], [ %lpad.phi, %bb.al ], [ %i.hh, %.body ], [ %i.ng, %.split ], [ %i.dt, %.split.us ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs11MDBXorbInfoEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.r) #24
          to label %.thread74 unwind label %bb.ac

.loopexit:                                        ; preds = %bb.af, %bb.j, %.thread.i.i.i.i.i.i.i.i, %.thread.i.i.i.i12.i.i.i.i, %bb.ah, %_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randommECs31YAwBA1AlL_19xet_core_structures.exit13.i.i.thread.i.i, %.thread.i.i.i.i16.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.loopexit.split-lp:                               ; preds = %bb.m, %bb.g
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.al:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs22XorbChunkSequenceEntryEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.q) #24
          to label %.thread82 unwind label %bb.ac

.lr.ph106.split:                                  ; preds = %.lr.ph106, %bb.ar
  %.sroa.05.0104 = phi ptr [ %i.nd, %bb.ar ], [ %4, %.lr.ph106 ] ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %.sroa.05.0104, i64 8 ; 2 uses
  invoke void @_RNvNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12shard_format13test_routines20gen_random_file_info(ptr noalias nofree noundef nonnull sret([152 x i8]) align 8 captures(none) dereferenceable(152) %i.h, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.05.0104, i1 noundef zeroext %6, i1 noundef zeroext %7)
          to label %bb.ap unwind label %.split

._crit_edge107:                                   ; preds = %bb.ar, %bb.f, %._crit_edge103
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %i.t, i64 96, i1 false)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs11MDBXorbInfoENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %bb.an unwind label %bb.am

bb.am:                                            ; preds = %._crit_edge107
  %i.ne = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs11MDBXorbInfoENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %common.resume unwind label %bb.ao

bb.an:                                            ; preds = %._crit_edge107
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs11MDBXorbInfoENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.aw

bb.ao:                                            ; preds = %bb.am
  %i.nf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

.split:                                           ; preds = %bb.ap, %.lr.ph106.split
  %i.ng = landingpad { ptr, i32 }
          cleanup
  br label %.thread82

bb.ap:                                            ; preds = %.lr.ph106.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke void @_RNvMNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memoryNtB2_16MDBInMemoryShard28add_file_reconstruction_info(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.t, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(152) %i.h)
          to label %bb.aq unwind label %.split

bb.aq:                                            ; preds = %bb.ap
  %i.nh = load i64, ptr %i.g, align 8, !range !16, !noundef !4
  %.not27 = icmp eq i64 %i.nh, -1
  br i1 %.not27, label %bb.ar, label %.split109.us

.split109.us:                                     ; preds = %bb.aq, %bb.e
  %i.ni = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ni, ptr noundef nonnull align 8 dereferenceable(40) %i.g, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store ptr null, ptr %0, align 8
  br label %bb.y

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.nj = icmp eq ptr %i.nd, %i.dm
  br i1 %i.nj, label %._crit_edge107, label %.lr.ph106.split

bb.as:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  invoke void @_RNvXNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtB8_4sync3ArcNtNtNtB1a_14metadata_shard12xorb_structs11MDBXorbInfoEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1a_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtBK_4sync3ArcNtNtNtB1G_14metadata_shard12xorb_structs11MDBXorbInfoEEEB1G_.exit.i unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.nk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB1a_14metadata_shard12file_structs11MDBFileInfoENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1a_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB1G_14metadata_shard12file_structs11MDBFileInfoEEB1G_.exit.i unwind label %bb.av

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtBK_4sync3ArcNtNtNtB1G_14metadata_shard12xorb_structs11MDBXorbInfoEEEB1G_.exit.i: ; preds = %bb.as
  invoke void @_RNvXNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB1a_14metadata_shard12file_structs11MDBFileInfoENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1a_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardEBH_.exit unwind label %bb.au

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB1G_14metadata_shard12file_structs11MDBFileInfoEEB1G_.exit.i: ; preds = %bb.au, %bb.at
  %.pn.i = phi { ptr, i32 } [ %i.nl, %bb.au ], [ %i.nk, %bb.at ]
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashTINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBV_14metadata_shard12xorb_structs11MDBXorbInfoEyEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBV_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.t)
          to label %common.resume unwind label %bb.av

bb.au:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtBK_4sync3ArcNtNtNtB1G_14metadata_shard12xorb_structs11MDBXorbInfoEEEB1G_.exit.i
  %i.nl = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB1G_14metadata_shard12file_structs11MDBFileInfoEEB1G_.exit.i

bb.av:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB1G_14metadata_shard12file_structs11MDBFileInfoEEB1G_.exit.i, %bb.at
  %i.nm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

common.resume:                                    ; preds = %.thread74, %bb.am, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB1G_14metadata_shard12file_structs11MDBFileInfoEEB1G_.exit.i
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB1G_14metadata_shard12file_structs11MDBFileInfoEEB1G_.exit.i ], [ %.pn3070, %.thread74 ], [ %i.ne, %bb.am ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardEBH_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtBK_4sync3ArcNtNtNtB1G_14metadata_shard12xorb_structs11MDBXorbInfoEEEB1G_.exit.i
  call void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashTINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBV_14metadata_shard12xorb_structs11MDBXorbInfoEyEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBV_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.t)
  br label %bb.aw

bb.aw:                                            ; preds = %bb.an, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardEBH_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  ret void

.thread74:                                        ; preds = %.thread82, %bb.z, %.thread80, %.thread
  %.pn3070 = phi { ptr, i32 } [ %i.cy, %.thread ], [ %i.hu, %.thread80 ], [ %i.ht, %bb.z ], [ %.pn25, %.thread82 ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardEBH_(ptr noalias nofree noundef align 8 dereferenceable(96) %i.t) #24
          to label %common.resume unwind label %bb.ac
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12shard_format13test_routines21verify_metadata_shard(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [80 x i8], align 8                ; 7 uses
  %i.e = alloca [80 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 13 uses
  %i.h = alloca [48 x i8], align 8                ; 10 uses
  %i.i = alloca [56 x i8], align 8                ; 11 uses
  %i.j = alloca [48 x i8], align 8                ; 7 uses
  %i.k = alloca [80 x i8], align 8                ; 8 uses
  %i.l = alloca [32 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [32 x i8], align 8                ; 4 uses
  %i.p = alloca [80 x i8], align 8                ; 7 uses
  %i.q = alloca [80 x i8], align 8                ; 9 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %i.s = alloca [24 x i8], align 8                ; 13 uses
  %i.t = alloca [48 x i8], align 8                ; 11 uses
  %i.u = alloca [56 x i8], align 8                ; 11 uses
  %i.v = alloca [48 x i8], align 8                ; 7 uses
  %i.w = alloca [24 x i8], align 8                ; 13 uses
  %i.x = alloca [48 x i8], align 8                ; 10 uses
  %i.y = alloca [24 x i8], align 8                ; 13 uses
  %i.z = alloca [56 x i8], align 8                ; 9 uses
  %i.aa = alloca [40 x i8], align 8               ; 7 uses
  %i.ab = alloca [48 x i8], align 8               ; 13 uses
  %i.ac = alloca [56 x i8], align 8               ; 7 uses
  %i.ad = alloca [48 x i8], align 8               ; 13 uses
  %i.ae = alloca [8 x i8], align 8                ; 4 uses
  %i.af = alloca [8 x i8], align 8                ; 4 uses
  %i.ag = alloca [8 x i8], align 8                ; 4 uses
  %i.ah = alloca [8 x i8], align 8                ; 5 uses
  %i.ai = alloca [48 x i8], align 8               ; 5 uses
  %i.aj = alloca [56 x i8], align 8               ; 7 uses
  %i.ak = alloca [48 x i8], align 8               ; 7 uses
  %i.al = alloca [8 x i8], align 8                ; 4 uses
  %i.am = alloca [8 x i8], align 8                ; 4 uses
  %i.an = alloca [8 x i8], align 8                ; 4 uses
  %i.ao = alloca [8 x i8], align 8                ; 4 uses
  %i.ap = alloca [8 x i8], align 8                ; 4 uses
  %i.aq = alloca [8 x i8], align 8                ; 4 uses
  %i.ar = alloca [8 x i8], align 8                ; 4 uses
  %i.as = alloca [8 x i8], align 8                ; 5 uses
  %i.at = alloca [32 x i8], align 8               ; 5 uses
  %.sroa.13.i = alloca [32 x i8], align 8         ; 7 uses
  %i.au = alloca [40 x i8], align 8               ; 11 uses
  %i.av = alloca [8 x i8], align 8                ; 4 uses
  %i.aw = alloca [8 x i8], align 8                ; 4 uses
  %i.ax = alloca [8 x i8], align 8                ; 4 uses
  %i.ay = alloca [8 x i8], align 8                ; 4 uses
  %i.az = alloca [40 x i8], align 8               ; 7 uses
  %.sroa.696.i = alloca [24 x i8], align 8        ; 6 uses
  %i.ba = alloca [24 x i8], align 8               ; 8 uses
  %i.bb = alloca [48 x i8], align 8               ; 12 uses
  %i.bc = alloca [8 x i8], align 8                ; 4 uses
  %i.bd = alloca [8 x i8], align 8                ; 4 uses
end_hunk_1
begin_hunk_2_@llvm.cttz.i16
declare i16 @llvm.cttz.i16(i16, i1 immarg) #17

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs2_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12shard_formatNtB6_12MDBShardInfo14serialize_fromINtNtCsexYYUdYSQU6_5alloc3vec3VechEEBa_(ptr dead_on_unwind noalias nofree noundef writable sret([256 x i8]) align 8 captures(none) dereferenceable(256), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96), i64, i32 noundef range(i32 -1, 1000000000)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structsNtB5_22XorbChunkSequenceEntry3newmmEB9_(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32), i32 noundef, i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structsNtB3_23XorbChunkSequenceHeader3newjmEB7_(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32), i64 noundef, i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memoryNtB3_16MDBInMemoryShard14add_xorb_blockNtNtB5_12xorb_structs11MDBXorbInfoEB7_(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(96), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileDataSequenceEntryEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB3d_5slice4iter4IterTyTmmEEENCNvNtNtB17_12shard_format13test_routines18gen_specific_shard0EE9from_iterB19_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileVerificationEntryEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB3d_5slice4iter4IteryENCNvNtNtB17_12shard_format13test_routines18gen_specific_shards_0EE9from_iterB19_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs1_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structsNtB5_15FileMetadataExt3new(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structsNtB3_22FileDataSequenceHeader3newjEB7_(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32), i64 noundef, i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memoryNtB2_16MDBInMemoryShard28add_file_reconstruction_info(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(96), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(152)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileDataSequenceEntryEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB3d_5slice4iter4IterTyTmmEEENCNvNtNtB17_12shard_format13test_routines18gen_specific_shards1_0EE9from_iterB19_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileDataSequenceEntryEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB3d_3ops5range5RangejENCNvNtNtB17_12shard_format13test_routines20gen_random_file_info0EE9from_iterB19_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileVerificationEntryEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB3d_5slice4iter4IterNtB15_21FileDataSequenceEntryENCNvNtNtB17_12shard_format13test_routines20gen_random_file_infos_0EE9from_iterB19_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs22XorbChunkSequenceEntryENtNtCskKLDkoKarTP_4core5clone5Clone5cloneBL_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structsNtB5_22XorbChunkSequenceEntry3newlmEB9_(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32), i32 noundef, i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileDataSequenceEntryEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB3d_3ops5range5RangejENCNvNtNtB17_12shard_format13test_routines41gen_random_file_info_with_xorb_references0EE9from_iterB19_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileVerificationEntryEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB3d_5slice4iter4IterNtB15_21FileDataSequenceEntryENCNvNtNtB17_12shard_format13test_routines41gen_random_file_info_with_xorb_referencess_0EE9from_iterB19_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline nonlazybind uwtable
declare void @_RNvMs_NtNtCs4DkaUnCZMGd_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias nofree noundef align 4 dereferenceable(64)) unnamed_addr #18

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter11debug_tuple(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs3_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs3_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_10DebugTuple6finish(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #19

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NtCs6f1wo00zwKs_8lz4_flex5frameNtB5_5ErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtCskKLDkoKarTP_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtNtCskKLDkoKarTP_4core3fmt3num3impmNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsd_NtNtNtCskKLDkoKarTP_4core3fmt3num3impyNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXse_NtNtCskKLDkoKarTP_4core3fmt3numhNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_2io5error5ErrorNtB6_5Debug3fmtCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvYINtNtNtCskKLDkoKarTP_4core5slice4iter11ChunksExacthENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvYINtNtNtCskKLDkoKarTP_4core5slice4iter7IterMutmENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterTyRSTyTmmEEEENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterRSyENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IteryENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterTmmEENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvYINtNtNtCskKLDkoKarTP_4core5slice4iter4ItermENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs1_Cs1OzvMeFnvWA_8chacha20INtB5_10ChaChaCoreNtB5_3R12NtNtB5_8variants6LegacyE12new_internalCs31YAwBA1AlL_19xet_core_structures(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 4 captures(none) dereferenceable(64), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsexYYUdYSQU6_5alloc6string6StringNtB6_5Debug3fmtCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtB6_5Debug3fmtBC_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash5error13DataHashErrorNtB6_5Debug3fmtBC_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsarFSTFZzLuM_11xet_runtime5error12RuntimeErrorNtB6_5Debug3fmtCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCsarFSTFZzLuM_11xet_runtime5utils12rw_task_lock15RwTaskLockErrorNtB6_5Debug3fmtCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtNtCsUrhh0HcRih_5tokio7runtime4task5error9JoinErrorNtB6_5Debug3fmtCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCskKLDkoKarTP_4core5slice3cmpNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileDataSequenceEntryINtB5_14SlicePartialEqBC_E17equal_same_lengthBI_(ptr noundef, ptr noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCskKLDkoKarTP_4core5slice3cmpNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileVerificationEntryINtB5_14SlicePartialEqBC_E17equal_same_lengthBI_(ptr noundef, ptr noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoNtB6_5Debug3fmtBC_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs15FileMetadataExtNtB6_5Debug3fmtBC_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtNtCskKLDkoKarTP_4core3fmt3num3imphNtB6_7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsg_NtNtCskKLDkoKarTP_4core3fmt3numhNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsw_NtNtCskKLDkoKarTP_4core3fmt3nummNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsu_NtNtCskKLDkoKarTP_4core3fmt3nummNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsE_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsC_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCskKLDkoKarTP_4core5slice3cmpNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs22XorbChunkSequenceEntryINtB5_14SlicePartialEqBC_E17equal_same_lengthBI_(ptr noundef, ptr noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter10debug_list(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRTyTmmEEINtNtNtBa_5slice4iter4IterB14_EECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRhINtNtNtBa_5slice4iter4IterhEECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRmINtNtNtBa_5slice4iter4ItermEECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRyINtNtNtBa_5slice4iter4IteryEECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter3pad(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umulh.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umulh.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #12

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @memcmp(ptr captures(none), ptr captures(none), i64) #21

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #21 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #22 = { nounwind }
attributes #23 = { cold noreturn nounwind }
attributes #24 = { cold }
attributes #25 = { inlinehint }
attributes #26 = { noinline noreturn }
attributes #27 = { noinline }
attributes #28 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (bff8e12ff 2026-08-26)"}
!4 = !{}
!5 = !{i64 0, i64 -9223372036854775808}
!6 = !{i64 1, i64 536870913}
!7 = !{i64 -1, i64 -9223372036854775808}
!8 = !{i64 0, i64 21}
!9 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000, i32 2000}
!10 = !{i64 0, i64 20}
!11 = !{i64 0, i64 2}
!12 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!13 = !{i8 0, i8 2}
!14 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!15 = !{i64 8}
!16 = !{i64 -1, i64 21}
!17 = !{i64 0, i64 3}
!18 = !{i64 4}
!19 = distinct !{!19, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs31YAwBA1AlL_19xet_core_structures"}
!20 = distinct !{!20, !19, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs31YAwBA1AlL_19xet_core_structures: argument 0"}
!21 = distinct !{!21, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs31YAwBA1AlL_19xet_core_structures"}
!22 = distinct !{!22, !21, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs31YAwBA1AlL_19xet_core_structures: argument 0"}
!23 = distinct !{!23, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs31YAwBA1AlL_19xet_core_structures"}
!24 = distinct !{!24, !23, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs31YAwBA1AlL_19xet_core_structures: argument 0"}
!25 = distinct !{!25, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs31YAwBA1AlL_19xet_core_structures"}
!26 = distinct !{!26, !25, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs31YAwBA1AlL_19xet_core_structures: argument 0"}
!27 = distinct !{!27, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash5error13DataHashErrorEBH_"}
!28 = distinct !{!28, !27, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash5error13DataHashErrorEBH_: argument 0"}
!29 = distinct !{!29, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsarFSTFZzLuM_11xet_runtime5error12RuntimeErrorECs31YAwBA1AlL_19xet_core_structures"}
!30 = distinct !{!30, !29, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsarFSTFZzLuM_11xet_runtime5error12RuntimeErrorECs31YAwBA1AlL_19xet_core_structures: argument 0"}
!31 = distinct !{!31, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs31YAwBA1AlL_19xet_core_structures"}
!32 = distinct !{!32, !31, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs31YAwBA1AlL_19xet_core_structures: argument 0"}
!33 = distinct !{!33, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs31YAwBA1AlL_19xet_core_structures"}
!34 = distinct !{!34, !33, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs31YAwBA1AlL_19xet_core_structures: argument 0"}
!35 = distinct !{!35, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfaKIfeYzQZw_7reqwest5error5InnerECs31YAwBA1AlL_19xet_core_structures"}
!36 = distinct !{!36, !35, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfaKIfeYzQZw_7reqwest5error5InnerECs31YAwBA1AlL_19xet_core_structures: argument 0"}
!37 = distinct !{!37, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfaKIfeYzQZw_7reqwest5error4KindECs31YAwBA1AlL_19xet_core_structures"}
!38 = distinct !{!38, !37, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfaKIfeYzQZw_7reqwest5error4KindECs31YAwBA1AlL_19xet_core_structures: argument 0"}
!39 = distinct !{!39, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9ekcjykjQb7_5hyper3ext16h1_reason_phrase12ReasonPhraseEECs31YAwBA1AlL_19xet_core_structures"}
!40 = distinct !{!40, !39, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9ekcjykjQb7_5hyper3ext16h1_reason_phrase12ReasonPhraseEECs31YAwBA1AlL_19xet_core_structures: argument 0"}
!41 = distinct !{!41, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs9ekcjykjQb7_5hyper3ext16h1_reason_phrase12ReasonPhraseECs31YAwBA1AlL_19xet_core_structures"}
!42 = distinct !{!42, !41, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs9ekcjykjQb7_5hyper3ext16h1_reason_phrase12ReasonPhraseECs31YAwBA1AlL_19xet_core_structures: argument 0"}
!43 = distinct !{!43, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslc8SwK8fohf_5bytes5bytes5BytesECs31YAwBA1AlL_19xet_core_structures"}
!44 = distinct !{!44, !43, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslc8SwK8fohf_5bytes5bytes5BytesECs31YAwBA1AlL_19xet_core_structures: argument 0"}
!45 = distinct !{!45, !"_RNvXs1_NtCslc8SwK8fohf_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!46 = distinct !{!46, !45, !"_RNvXs1_NtCslc8SwK8fohf_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!47 = distinct !{null}
!48 = distinct !{!48, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsbc8Eb5TzBdy_3url3UrlEECs31YAwBA1AlL_19xet_core_structures"}
!49 = distinct !{!49, !48, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsbc8Eb5TzBdy_3url3UrlEECs31YAwBA1AlL_19xet_core_structures: argument 0"}
!50 = distinct !{!50, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsarFSTFZzLuM_11xet_runtime5utils12rw_task_lock15RwTaskLockErrorECs31YAwBA1AlL_19xet_core_structures"}
!51 = distinct !{!51, !50, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsarFSTFZzLuM_11xet_runtime5utils12rw_task_lock15RwTaskLockErrorECs31YAwBA1AlL_19xet_core_structures: argument 0"}
!52 = !{!20}
!53 = !{!22}
!54 = !{!24}
!55 = !{!26}
!56 = !{!28}
!57 = !{!30}
!58 = !{i64 0, i64 9}
!59 = !{!32}
!60 = !{!32, !30}
!61 = !{!34}
!62 = !{!36}
!63 = !{!38}
!64 = !{i16 0, i16 7}
!65 = !{!38, !36}
!66 = !{!40}
!67 = !{!40, !38, !36}
!68 = !{!42}
!69 = !{!44}
!70 = !{!46}
!71 = !{!46, !44, !42, !40, !38, !36, !30}
!72 = !{!46, !44, !42, !40, !38, !36}
!73 = !{!49, !36}
!74 = !{!51}
!75 = distinct !{!75, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs31YAwBA1AlL_19xet_core_structures"}
!76 = distinct !{!76, !75, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs31YAwBA1AlL_19xet_core_structures: argument 0"}
!77 = !{!76}
!78 = distinct !{!78, !"_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randomyECs31YAwBA1AlL_19xet_core_structures"}
!79 = distinct !{!79, !78, !"_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randomyECs31YAwBA1AlL_19xet_core_structures: argument 0"}
!80 = distinct !{!80, !"_RINvXs1_NtNtCs4DkaUnCZMGd_4rand5distr7integerNtB8_15StandardUniformINtNtB8_12distribution12DistributionyE6sampleNtNtNtBa_4rngs3std6StdRngECs31YAwBA1AlL_19xet_core_structures"}
!81 = distinct !{!81, !80, !"_RINvXs1_NtNtCs4DkaUnCZMGd_4rand5distr7integerNtB8_15StandardUniformINtNtB8_12distribution12DistributionyE6sampleNtNtNtBa_4rngs3std6StdRngECs31YAwBA1AlL_19xet_core_structures: argument 0"}
!82 = distinct !{!82, !"_RNvXCsenQHu2qVDfv_9rand_coreNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtB2_3Rng8next_u64Cs31YAwBA1AlL_19xet_core_structures"}
!83 = distinct !{!83, !82, !"_RNvXCsenQHu2qVDfv_9rand_coreNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtB2_3Rng8next_u64Cs31YAwBA1AlL_19xet_core_structures: argument 0"}
!84 = distinct !{!84, !"_RNvMs2_NtCsenQHu2qVDfv_9rand_core5blockINtB5_8BlockRngINtCs1OzvMeFnvWA_8chacha2010ChaChaCoreNtBT_3R12NtNtBT_8variants6LegacyEE17next_u64_from_u32Cs31YAwBA1AlL_19xet_core_structures"}
!85 = distinct !{!85, !84, !"_RNvMs2_NtCsenQHu2qVDfv_9rand_core5blockINtB5_8BlockRngINtCs1OzvMeFnvWA_8chacha2010ChaChaCoreNtBT_3R12NtNtBT_8variants6LegacyEE17next_u64_from_u32Cs31YAwBA1AlL_19xet_core_structures: argument 0"}
!86 = distinct !{!86, !"_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randomyECs31YAwBA1AlL_19xet_core_structures"}
!87 = distinct !{!87, !86, !"_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randomyECs31YAwBA1AlL_19xet_core_structures: argument 0"}
!88 = distinct !{!88, !"_RINvXs1_NtNtCs4DkaUnCZMGd_4rand5distr7integerNtB8_15StandardUniformINtNtB8_12distribution12DistributionyE6sampleNtNtNtBa_4rngs3std6StdRngECs31YAwBA1AlL_19xet_core_structures"}
!89 = distinct !{!89, !88, !"_RINvXs1_NtNtCs4DkaUnCZMGd_4rand5distr7integerNtB8_15StandardUniformINtNtB8_12distribution12DistributionyE6sampleNtNtNtBa_4rngs3std6StdRngECs31YAwBA1AlL_19xet_core_structures: argument 0"}
!90 = distinct !{!90, !"_RNvXCsenQHu2qVDfv_9rand_coreNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtB2_3Rng8next_u64Cs31YAwBA1AlL_19xet_core_structures"}
!91 = distinct !{!91, !90, !"_RNvXCsenQHu2qVDfv_9rand_coreNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtB2_3Rng8next_u64Cs31YAwBA1AlL_19xet_core_structures: argument 0"}
!92 = distinct !{!92, !"_RNvMs2_NtCsenQHu2qVDfv_9rand_core5blockINtB5_8BlockRngINtCs1OzvMeFnvWA_8chacha2010ChaChaCoreNtBT_3R12NtNtBT_8variants6LegacyEE17next_u64_from_u32Cs31YAwBA1AlL_19xet_core_structures"}
!93 = distinct !{!93, !92, !"_RNvMs2_NtCsenQHu2qVDfv_9rand_core5blockINtB5_8BlockRngINtCs1OzvMeFnvWA_8chacha2010ChaChaCoreNtBT_3R12NtNtBT_8variants6LegacyEE17next_u64_from_u32Cs31YAwBA1AlL_19xet_core_structures: argument 0"}
!94 = distinct !{!94, !"_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randomyECs31YAwBA1AlL_19xet_core_structures"}
!95 = distinct !{!95, !94, !"_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randomyECs31YAwBA1AlL_19xet_core_structures: argument 0"}
!96 = distinct !{!96, !"_RINvXs1_NtNtCs4DkaUnCZMGd_4rand5distr7integerNtB8_15StandardUniformINtNtB8_12distribution12DistributionyE6sampleNtNtNtBa_4rngs3std6StdRngECs31YAwBA1AlL_19xet_core_structures"}
!97 = distinct !{!97, !96, !"_RINvXs1_NtNtCs4DkaUnCZMGd_4rand5distr7integerNtB8_15StandardUniformINtNtB8_12distribution12DistributionyE6sampleNtNtNtBa_4rngs3std6StdRngECs31YAwBA1AlL_19xet_core_structures: argument 0"}
!98 = distinct !{!98, !"_RNvXCsenQHu2qVDfv_9rand_coreNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtB2_3Rng8next_u64Cs31YAwBA1AlL_19xet_core_structures"}
!99 = distinct !{!99, !98, !"_RNvXCsenQHu2qVDfv_9rand_coreNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtB2_3Rng8next_u64Cs31YAwBA1AlL_19xet_core_structures: argument 0"}
!100 = distinct !{!100, !"_RNvMs2_NtCsenQHu2qVDfv_9rand_core5blockINtB5_8BlockRngINtCs1OzvMeFnvWA_8chacha2010ChaChaCoreNtBT_3R12NtNtBT_8variants6LegacyEE17next_u64_from_u32Cs31YAwBA1AlL_19xet_core_structures"}
!101 = distinct !{!101, !100, !"_RNvMs2_NtCsenQHu2qVDfv_9rand_core5blockINtB5_8BlockRngINtCs1OzvMeFnvWA_8chacha2010ChaChaCoreNtBT_3R12NtNtBT_8variants6LegacyEE17next_u64_from_u32Cs31YAwBA1AlL_19xet_core_structures: argument 0"}
!102 = !{!85, !83, !81, !79}
!103 = !{!93, !91, !89, !87}
!104 = !{!101, !99, !97, !95}
!105 = distinct !{!105, !"_RNvXsU_NtNtCskKLDkoKarTP_4core3cmp5implsjNtB7_10PartialOrd2le"}
!106 = distinct !{!106, !105, !"_RNvXsU_NtNtCskKLDkoKarTP_4core3cmp5implsjNtB7_10PartialOrd2le: argument 0"}
!107 = distinct !{!107, !105, !"_RNvXsU_NtNtCskKLDkoKarTP_4core3cmp5implsjNtB7_10PartialOrd2le: argument 1"}
!108 = distinct !{!108, !"_RINvXs7_NtNtCs4DkaUnCZMGd_4rand5distr7uniformINtNtNtCskKLDkoKarTP_4core3ops5range14RangeInclusivejEINtB6_11SampleRangejE13sample_singleNtNtNtBa_4rngs3std6StdRngECs31YAwBA1AlL_19xet_core_structures"}
!109 = distinct !{!109, !108, !"_RINvXs7_NtNtCs4DkaUnCZMGd_4rand5distr7uniformINtNtNtCskKLDkoKarTP_4core3ops5range14RangeInclusivejEINtB6_11SampleRangejE13sample_singleNtNtNtBa_4rngs3std6StdRngECs31YAwBA1AlL_19xet_core_structures: argument 1"}
!110 = distinct !{!110, !"_RINvXs_NtNtNtCs4DkaUnCZMGd_4rand5distr7uniform3intNtB5_12UniformUsizeNtB7_14UniformSampler23sample_single_inclusiveNtNtNtBb_4rngs3std6StdRngRjB2e_ECs31YAwBA1AlL_19xet_core_structures"}
!111 = distinct !{!111, !110, !"_RINvXs_NtNtNtCs4DkaUnCZMGd_4rand5distr7uniform3intNtB5_12UniformUsizeNtB7_14UniformSampler23sample_single_inclusiveNtNtNtBb_4rngs3std6StdRngRjB2e_ECs31YAwBA1AlL_19xet_core_structures: argument 3"}
!112 = distinct !{!112, !"_RINvXsl_NtNtNtCs4DkaUnCZMGd_4rand5distr7uniform3intINtB6_10UniformIntmENtB8_14UniformSampler23sample_single_inclusiveNtNtNtBc_4rngs3std6StdRngmmECs31YAwBA1AlL_19xet_core_structures"}
!113 = distinct !{!113, !112, !"_RINvXsl_NtNtNtCs4DkaUnCZMGd_4rand5distr7uniform3intINtB6_10UniformIntmENtB8_14UniformSampler23sample_single_inclusiveNtNtNtBc_4rngs3std6StdRngmmECs31YAwBA1AlL_19xet_core_structures: argument 0"}
!114 = distinct !{!114, !108, !"_RINvXs7_NtNtCs4DkaUnCZMGd_4rand5distr7uniformINtNtNtCskKLDkoKarTP_4core3ops5range14RangeInclusivejEINtB6_11SampleRangejE13sample_singleNtNtNtBa_4rngs3std6StdRngECs31YAwBA1AlL_19xet_core_structures: argument 0"}
!115 = distinct !{!115, !110, !"_RINvXs_NtNtNtCs4DkaUnCZMGd_4rand5distr7uniform3intNtB5_12UniformUsizeNtB7_14UniformSampler23sample_single_inclusiveNtNtNtBb_4rngs3std6StdRngRjB2e_ECs31YAwBA1AlL_19xet_core_structures: argument 2"}
!116 = distinct !{!116, !110, !"_RINvXs_NtNtNtCs4DkaUnCZMGd_4rand5distr7uniform3intNtB5_12UniformUsizeNtB7_14UniformSampler23sample_single_inclusiveNtNtNtBb_4rngs3std6StdRngRjB2e_ECs31YAwBA1AlL_19xet_core_structures: argument 1"}
!117 = distinct !{!117, !110, !"_RINvXs_NtNtNtCs4DkaUnCZMGd_4rand5distr7uniform3intNtB5_12UniformUsizeNtB7_14UniformSampler23sample_single_inclusiveNtNtNtBb_4rngs3std6StdRngRjB2e_ECs31YAwBA1AlL_19xet_core_structures: argument 0"}
!118 = distinct !{!118, !"_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randommECs31YAwBA1AlL_19xet_core_structures"}
!119 = distinct !{!119, !118, !"_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randommECs31YAwBA1AlL_19xet_core_structures: argument 0"}
!120 = distinct !{!120, !"_RINvXs0_NtNtCs4DkaUnCZMGd_4rand5distr7integerNtB8_15StandardUniformINtNtB8_12distribution12DistributionmE6sampleNtNtNtBa_4rngs3std6StdRngECs31YAwBA1AlL_19xet_core_structures"}
!121 = distinct !{!121, !120, !"_RINvXs0_NtNtCs4DkaUnCZMGd_4rand5distr7integerNtB8_15StandardUniformINtNtB8_12distribution12DistributionmE6sampleNtNtNtBa_4rngs3std6StdRngECs31YAwBA1AlL_19xet_core_structures: argument 0"}
!122 = distinct !{!122, !"_RNvXCsenQHu2qVDfv_9rand_coreNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtB2_3Rng8next_u32Cs31YAwBA1AlL_19xet_core_structures"}
!123 = distinct !{!123, !122, !"_RNvXCsenQHu2qVDfv_9rand_coreNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtB2_3Rng8next_u32Cs31YAwBA1AlL_19xet_core_structures: argument 0"}
!124 = distinct !{!124, !"_RNvMs1_NtCsenQHu2qVDfv_9rand_core5blockINtB5_8BlockRngINtCs1OzvMeFnvWA_8chacha2010ChaChaCoreNtBT_3R12NtNtBT_8variants6LegacyEE9next_wordCs31YAwBA1AlL_19xet_core_structures"}
!125 = distinct !{!125, !124, !"_RNvMs1_NtCsenQHu2qVDfv_9rand_core5blockINtB5_8BlockRngINtCs1OzvMeFnvWA_8chacha2010ChaChaCoreNtBT_3R12NtNtBT_8variants6LegacyEE9next_wordCs31YAwBA1AlL_19xet_core_structures: argument 0"}
!126 = distinct !{!126, !"_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randommECs31YAwBA1AlL_19xet_core_structures"}
!127 = distinct !{!127, !126, !"_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randommECs31YAwBA1AlL_19xet_core_structures: argument 0"}
!128 = distinct !{!128, !"_RINvXs0_NtNtCs4DkaUnCZMGd_4rand5distr7integerNtB8_15StandardUniformINtNtB8_12distribution12DistributionmE6sampleNtNtNtBa_4rngs3std6StdRngECs31YAwBA1AlL_19xet_core_structures"}
!129 = distinct !{!129, !128, !"_RINvXs0_NtNtCs4DkaUnCZMGd_4rand5distr7integerNtB8_15StandardUniformINtNtB8_12distribution12DistributionmE6sampleNtNtNtBa_4rngs3std6StdRngECs31YAwBA1AlL_19xet_core_structures: argument 0"}
!130 = distinct !{!130, !"_RNvXCsenQHu2qVDfv_9rand_coreNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtB2_3Rng8next_u32Cs31YAwBA1AlL_19xet_core_structures"}
!131 = distinct !{!131, !130, !"_RNvXCsenQHu2qVDfv_9rand_coreNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtB2_3Rng8next_u32Cs31YAwBA1AlL_19xet_core_structures: argument 0"}
!132 = distinct !{!132, !"_RNvMs1_NtCsenQHu2qVDfv_9rand_core5blockINtB5_8BlockRngINtCs1OzvMeFnvWA_8chacha2010ChaChaCoreNtBT_3R12NtNtBT_8variants6LegacyEE9next_wordCs31YAwBA1AlL_19xet_core_structures"}
!133 = distinct !{!133, !132, !"_RNvMs1_NtCsenQHu2qVDfv_9rand_core5blockINtB5_8BlockRngINtCs1OzvMeFnvWA_8chacha2010ChaChaCoreNtBT_3R12NtNtBT_8variants6LegacyEE9next_wordCs31YAwBA1AlL_19xet_core_structures: argument 0"}
!134 = distinct !{!134, !"_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randommECs31YAwBA1AlL_19xet_core_structures"}
!135 = distinct !{!135, !134, !"_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randommECs31YAwBA1AlL_19xet_core_structures: argument 0"}
!136 = distinct !{!136, !"_RINvXs0_NtNtCs4DkaUnCZMGd_4rand5distr7integerNtB8_15StandardUniformINtNtB8_12distribution12DistributionmE6sampleNtNtNtBa_4rngs3std6StdRngECs31YAwBA1AlL_19xet_core_structures"}
!137 = distinct !{!137, !136, !"_RINvXs0_NtNtCs4DkaUnCZMGd_4rand5distr7integerNtB8_15StandardUniformINtNtB8_12distribution12DistributionmE6sampleNtNtNtBa_4rngs3std6StdRngECs31YAwBA1AlL_19xet_core_structures: argument 0"}
!138 = distinct !{!138, !"_RNvXCsenQHu2qVDfv_9rand_coreNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtB2_3Rng8next_u32Cs31YAwBA1AlL_19xet_core_structures"}
!139 = distinct !{!139, !138, !"_RNvXCsenQHu2qVDfv_9rand_coreNtNtNtCs4DkaUnCZMGd_4rand4rngs3std6StdRngNtB2_3Rng8next_u32Cs31YAwBA1AlL_19xet_core_structures: argument 0"}
!140 = distinct !{!140, !"_RNvMs1_NtCsenQHu2qVDfv_9rand_core5blockINtB5_8BlockRngINtCs1OzvMeFnvWA_8chacha2010ChaChaCoreNtBT_3R12NtNtBT_8variants6LegacyEE9next_wordCs31YAwBA1AlL_19xet_core_structures"}
!141 = distinct !{!141, !140, !"_RNvMs1_NtCsenQHu2qVDfv_9rand_core5blockINtB5_8BlockRngINtCs1OzvMeFnvWA_8chacha2010ChaChaCoreNtBT_3R12NtNtBT_8variants6LegacyEE9next_wordCs31YAwBA1AlL_19xet_core_structures: argument 0"}
!142 = distinct !{!142, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultjNtNtNtCs4DkaUnCZMGd_4rand5distr7uniform5ErrorE6unwrapCs31YAwBA1AlL_19xet_core_structures"}
!143 = distinct !{!143, !142, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultjNtNtNtCs4DkaUnCZMGd_4rand5distr7uniform5ErrorE6unwrapCs31YAwBA1AlL_19xet_core_structures: argument 1"}
!144 = distinct !{!144, !142, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultjNtNtNtCs4DkaUnCZMGd_4rand5distr7uniform5ErrorE6unwrapCs31YAwBA1AlL_19xet_core_structures: argument 0"}
!145 = !{!106}
!146 = !{!107}
!147 = !{!109}
!148 = !{!111}
!149 = !{!113, !111, !109}
!150 = !{!117, !116, !115, !114}
!151 = !{!125, !123, !121, !119, !113, !111, !109}
end_hunk_2
