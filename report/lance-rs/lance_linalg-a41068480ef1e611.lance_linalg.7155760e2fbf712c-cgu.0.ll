Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_linalg-a41068480ef1e611.lance_linalg.7155760e2fbf712c-cgu.0?download=true
inline.NumInlined: 5334
inline.NumDeleted: 2333
loop-unroll.NumCompletelyUnrolled: 56
loop-unroll.NumRuntimeUnrolled: 92
loop-unroll.NumUnrolled: 148
begin_hunk_0_@_RINvNtNtCs9JgWGBoX3PY_12lance_linalg8distance6cosine30do_cosine_distance_arrow_batchNtNtCs4ytUTZt2Gw9_11arrow_array5types11Float32TypeEB6_:.split
  store i64 -9223372036854775794, ptr %0, align 8
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.423.0.copyload, ptr %.sroa.432.0..sroa_idx, align 8
  br label %bb.f

bb.f:                                             ; preds = %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB17_5types11Float32TypeEEE3newCs9JgWGBoX3PY_12lance_linalg.exit, %bb.e
  ret void

bb.g:                                             ; preds = %_RNvXs5_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalarINtB5_12ScalarBufferfEINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VecfEE4fromCs9JgWGBoX3PY_12lance_linalg.exit
  %i.aw = atomicrmw add ptr %i.av, i64 1 monotonic, align 8
  %i.ax = icmp slt i64 %i.aw, 0
  br i1 %i.ax, label %bb.r, label %bb.q

bb.h:                                             ; preds = %_RNvXs5_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalarINtB5_12ScalarBufferfEINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VecfEE4fromCs9JgWGBoX3PY_12lance_linalg.exit
  store ptr null, ptr %i.g, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.q, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call fastcc void @_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float32TypeE7try_newCs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef align 8 captures(none) dereferenceable(96) %i.d, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.g)
  call void @llvm.experimental.noalias.scope.decl(metadata !1949)
  %i.ay = load i8, ptr %i.d, align 8, !range !41, !alias.scope !1949, !noalias !1950, !noundef !18
  %i.az = icmp eq i8 %i.ay, -1
  br i1 %i.az, label %bb.j, label %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBO_5types11Float32TypeENtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorE6unwrapCs9JgWGBoX3PY_12lance_linalg.exit, !prof !23

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1951
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.ba, i64 32, i1 false), !noalias !1950
  invoke void @_RNvNtCscI6d9CVNmLh_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @126, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @125, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #74
          to label %bb.l unwind label %bb.k, !noalias !1951

bb.k:                                             ; preds = %bb.j
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorECs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b) #77
          to label %common.resume unwind label %bb.m, !noalias !1951

bb.l:                                             ; preds = %bb.j
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #75, !noalias !1951
  unreachable

_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBO_5types11Float32TypeENtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorE6unwrapCs9JgWGBoX3PY_12lance_linalg.exit: ; preds = %bb.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.bd, ptr noundef nonnull readonly align 8 dereferenceable(96) %i.d, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  store i64 1, ptr %i.c, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %i.be, align 8
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !1952
  %i.bf = call noundef align 8 dereferenceable_or_null(112) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 112, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !1952 ; 3 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %bb.n, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB17_5types11Float32TypeEEE3newCs9JgWGBoX3PY_12lance_linalg.exit, !prof !23

bb.n:                                             ; preds = %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBO_5types11Float32TypeENtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorE6unwrapCs9JgWGBoX3PY_12lance_linalg.exit
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 112) #74
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.n
  %i.bh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBI_5types11Float32TypeEECs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.bd)
          to label %common.resume unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #75
  unreachable

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB17_5types11Float32TypeEEE3newCs9JgWGBoX3PY_12lance_linalg.exit: ; preds = %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBO_5types11Float32TypeENtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorE6unwrapCs9JgWGBoX3PY_12lance_linalg.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.bf, ptr noundef nonnull align 8 dereferenceable(112) %i.c, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bf, ptr %i.bj, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.f

bb.q:                                             ; preds = %bb.g
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bl = load ptr, ptr %i.bk, align 8, !noundef !18
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 72
  store ptr %i.av, ptr %i.g, align 8
  %.sroa.034.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.bl, ptr %.sroa.034.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.034.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.bo = load <2 x i64>, ptr %i.bm, align 8
  store <2 x i64> %i.bo, ptr %.sroa.034.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.034.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.bp = load <2 x i64>, ptr %i.bn, align 8
  store <2 x i64> %i.bp, ptr %.sroa.034.sroa.5.0..sroa_idx, align 8
  br label %bb.i

bb.r:                                             ; preds = %bb.g
  call void @llvm.trap()
  unreachable
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable14driftsort_mainNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSBZ_11sort_by_keyyNCINvB11_13cluster_edgesINtNtNtNtB8_4iter8adapters3map3MapINtNtB3f_3zip3ZipINtNtB6_4iter4IteryEB3Z_ENCNvB11_23cluster_pairwise_result0EEs_0E0INtNtB24_3vec3VecBZ_EEB15_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 288230376151711744) %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %2) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [4096 x i8], align 8              ; 3 uses
  %i.c = lshr i64 %1, 1
  %i.d = sub nuw nsw i64 %1, %i.c
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %1, i64 250000)
  %.sroa.0.0.i8 = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i, i64 %i.d) ; 2 uses
  %.sroa.0.0.i9 = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i8, i64 48) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = icmp samesign ugt i64 %.sroa.0.0.i8, 128 ; 3 uses
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = shl nuw nsw i64 %.sroa.0.0.i9, 5         ; 2 uses
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !1959
  %i.g = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.f, i64 noundef range(i64 1, 9) 8) #76, !noalias !1959 ; 4 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %.noexc, label %bb.d

.noexc:                                           ; preds = %bb.b
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.f) #74
  unreachable

bb.c:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  br i1 %i.e, label %bb.i, label %bb.h

bb.d:                                             ; preds = %bb.b
  store i64 %.sroa.0.0.i9, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.g, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %i.j = phi ptr [ undef, %bb.a ], [ %i.g, %bb.d ]
  %.sroa.4.0 = phi i64 [ 128, %bb.a ], [ %.sroa.0.0.i9, %bb.d ]
  %.pn14 = phi ptr [ %i.b, %bb.a ], [ %i.g, %bb.d ]
  %i.k = icmp samesign ult i64 %1, 65
  invoke fastcc void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift4sortNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSBW_11sort_by_keyyNCINvBY_13cluster_edgesINtNtNtNtBa_4iter8adapters3map3MapINtNtB3b_3zip3ZipINtNtB8_4iter4IteryEB3V_ENCNvBY_23cluster_pairwise_result0EEs_0E0EB12_(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %.pn14, i64 noundef %.sroa.4.0, i1 noundef zeroext %i.k, ptr noalias noundef align 8 dereferenceable(8) %2)
          to label %bb.f unwind label %bb.c

bb.f:                                             ; preds = %bb.e
  br i1 %i.e, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterEEB1e_.exit, label %bb.g

bb.g:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterEEB1e_.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterEEB1e_.exit: ; preds = %bb.f
  %i.l = shl nuw nsw i64 %.sroa.0.0.i9, 5
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !1960
  br label %bb.g

bb.h:                                             ; preds = %bb.i, %bb.c
  resume { ptr, i32 } %i.i

bb.i:                                             ; preds = %bb.c
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterEEB1e_(ptr noalias noundef align 8 dereferenceable(24) %i.a) #77
  br label %bb.h
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort8unstable7ipnsortyNvYyNtNtB8_3cmp10PartialOrd2ltECs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2) unnamed_addr #7 {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSy7reverseCs9JgWGBoX3PY_12lance_linalg.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val6 = load i64, ptr %i.b, align 8, !alias.scope !43, !noalias !44, !noundef !18 ; 3 uses
  %.val7 = load i64, ptr %0, align 8, !alias.scope !44, !noalias !43, !noundef !18
  %i.c = icmp ult i64 %.val6, %.val7              ; 2 uses
  %.not22 = icmp eq i64 %1, 2                     ; 2 uses
  br i1 %i.c, label %.preheader, label %.preheader12

.preheader12:                                     ; preds = %bb.b
  br i1 %.not22, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runyNvYyNtNtB8_3cmp10PartialOrd2ltECs9JgWGBoX3PY_12lance_linalg.exit, label %.lr.ph

.preheader:                                       ; preds = %bb.b
  br i1 %.not22, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runyNvYyNtNtB8_3cmp10PartialOrd2ltECs9JgWGBoX3PY_12lance_linalg.exit, label %.lr.ph18

.lr.ph:                                           ; preds = %.preheader12, %bb.c
  %.val5 = phi i64 [ %.val4, %bb.c ], [ %.val6, %.preheader12 ]
  %.sroa.01.0.i14 = phi i64 [ %i.f, %bb.c ], [ 2, %.preheader12 ] ; 4 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i14
  %3 = add nsw i64 %.sroa.01.0.i14, -1
  %4 = icmp samesign ult i64 %3, %1
  tail call void @llvm.assume(i1 %4)
  %.val4 = load i64, ptr %i.d, align 8, !alias.scope !43, !noalias !44, !noundef !18 ; 2 uses
  %i.e = icmp ult i64 %.val4, %.val5
  br i1 %i.e, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runyNvYyNtNtB8_3cmp10PartialOrd2ltECs9JgWGBoX3PY_12lance_linalg.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.f = add nuw nsw i64 %.sroa.01.0.i14, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %i.f, %1
  br i1 %exitcond.not, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runyNvYyNtNtB8_3cmp10PartialOrd2ltECs9JgWGBoX3PY_12lance_linalg.exit.thread, label %.lr.ph

.lr.ph18:                                         ; preds = %.preheader, %bb.d
  %.val3 = phi i64 [ %.val, %bb.d ], [ %.val6, %.preheader ]
  %.sroa.01.1.i17 = phi i64 [ %i.i, %bb.d ], [ 2, %.preheader ] ; 4 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.1.i17
  %5 = add nsw i64 %.sroa.01.1.i17, -1
  %6 = icmp samesign ult i64 %5, %1
  tail call void @llvm.assume(i1 %6)
  %.val = load i64, ptr %i.g, align 8, !alias.scope !43, !noalias !44, !noundef !18 ; 2 uses
  %i.h = icmp ult i64 %.val, %.val3
  br i1 %i.h, label %bb.d, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runyNvYyNtNtB8_3cmp10PartialOrd2ltECs9JgWGBoX3PY_12lance_linalg.exit

bb.d:                                             ; preds = %.lr.ph18
  %i.i = add nuw nsw i64 %.sroa.01.1.i17, 1       ; 2 uses
  %exitcond25.not = icmp eq i64 %i.i, %1
  br i1 %exitcond25.not, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runyNvYyNtNtB8_3cmp10PartialOrd2ltECs9JgWGBoX3PY_12lance_linalg.exit.thread, label %.lr.ph18

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runyNvYyNtNtB8_3cmp10PartialOrd2ltECs9JgWGBoX3PY_12lance_linalg.exit: ; preds = %.lr.ph, %.lr.ph18, %.preheader12, %.preheader
  %.sroa.0.0.i = phi i64 [ 2, %.preheader12 ], [ 2, %.preheader ], [ %.sroa.01.1.i17, %.lr.ph18 ], [ %.sroa.01.0.i14, %.lr.ph ] ; 2 uses
  %i.j = icmp samesign ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.j)
  %i.k = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.k, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runyNvYyNtNtB8_3cmp10PartialOrd2ltECs9JgWGBoX3PY_12lance_linalg.exit.thread, label %bb.e

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runyNvYyNtNtB8_3cmp10PartialOrd2ltECs9JgWGBoX3PY_12lance_linalg.exit.thread: ; preds = %bb.c, %bb.d, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runyNvYyNtNtB8_3cmp10PartialOrd2ltECs9JgWGBoX3PY_12lance_linalg.exit
  br i1 %i.c, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSy12split_at_mutCs9JgWGBoX3PY_12lance_linalg.exit11.preheader.i.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSy7reverseCs9JgWGBoX3PY_12lance_linalg.exit

bb.e:                                             ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runyNvYyNtNtB8_3cmp10PartialOrd2ltECs9JgWGBoX3PY_12lance_linalg.exit
  %i.l = or i64 %1, 1
  %i.m = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.l, i1 true)
  %i.n = trunc nuw nsw i64 %i.m to i32
  %i.o = shl nuw nsw i32 %i.n, 1
  %i.p = xor i32 %i.o, 126
  tail call fastcc void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort8unstable9quicksort9quicksortyNvYyNtNtBa_3cmp10PartialOrd2ltECs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, i32 noundef %i.p, ptr noalias noundef nonnull %2)
  br label %_RNvMNtCscI6d9CVNmLh_4core5sliceSy7reverseCs9JgWGBoX3PY_12lance_linalg.exit

_RNvMNtCscI6d9CVNmLh_4core5sliceSy7reverseCs9JgWGBoX3PY_12lance_linalg.exit: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSy12split_at_mutCs9JgWGBoX3PY_12lance_linalg.exit11.i.i, %middle.block, %bb.a, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runyNvYyNtNtB8_3cmp10PartialOrd2ltECs9JgWGBoX3PY_12lance_linalg.exit.thread, %bb.e
  ret void

_RNvMNtCscI6d9CVNmLh_4core5sliceSy12split_at_mutCs9JgWGBoX3PY_12lance_linalg.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runyNvYyNtNtB8_3cmp10PartialOrd2ltECs9JgWGBoX3PY_12lance_linalg.exit.thread
  %i.q = lshr i64 %1, 1                           ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1968)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1969)
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1 ; 2 uses
  %min.iters.check = icmp samesign ult i64 %1, 8
  br i1 %min.iters.check, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSy12split_at_mutCs9JgWGBoX3PY_12lance_linalg.exit11.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSy12split_at_mutCs9JgWGBoX3PY_12lance_linalg.exit11.preheader.i.i
  %n.vec = and i64 %i.q, 576460752303423484       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.s = xor i64 %index, -1
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 3 uses
  %i.u = getelementptr [8 x i8], ptr %i.r, i64 %i.s ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.t, align 8, !alias.scope !1970, !noalias !1969
  %wide.load40 = load <2 x i64>, ptr %i.v, align 8, !alias.scope !1970, !noalias !1969
  %i.w = getelementptr i8, ptr %i.u, i64 -8       ; 2 uses
  %i.x = getelementptr i8, ptr %i.u, i64 -24      ; 2 uses
  %wide.load41 = load <2 x i64>, ptr %i.w, align 8, !alias.scope !1971, !noalias !1968
  %wide.load42 = load <2 x i64>, ptr %i.x, align 8, !alias.scope !1971, !noalias !1968
  %reverse = shufflevector <2 x i64> %wide.load41, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse43 = shufflevector <2 x i64> %wide.load42, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %reverse, ptr %i.t, align 8, !alias.scope !1970, !noalias !1969
  store <2 x i64> %reverse43, ptr %i.v, align 8, !alias.scope !1970, !noalias !1969
  %reverse44 = shufflevector <2 x i64> %wide.load, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse45 = shufflevector <2 x i64> %wide.load40, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %reverse44, ptr %i.w, align 8, !alias.scope !1971, !noalias !1968
  store <2 x i64> %reverse45, ptr %i.x, align 8, !alias.scope !1971, !noalias !1968
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !1966

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.q, %n.vec
  br i1 %cmp.n, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSy7reverseCs9JgWGBoX3PY_12lance_linalg.exit, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSy12split_at_mutCs9JgWGBoX3PY_12lance_linalg.exit11.i.i.preheader

_RNvMNtCscI6d9CVNmLh_4core5sliceSy12split_at_mutCs9JgWGBoX3PY_12lance_linalg.exit11.i.i.preheader: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSy12split_at_mutCs9JgWGBoX3PY_12lance_linalg.exit11.preheader.i.i, %middle.block
  %.sroa.0.016.i.i.ph = phi i64 [ 0, %_RNvMNtCscI6d9CVNmLh_4core5sliceSy12split_at_mutCs9JgWGBoX3PY_12lance_linalg.exit11.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCscI6d9CVNmLh_4core5sliceSy12split_at_mutCs9JgWGBoX3PY_12lance_linalg.exit11.i.i

_RNvMNtCscI6d9CVNmLh_4core5sliceSy12split_at_mutCs9JgWGBoX3PY_12lance_linalg.exit11.i.i: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSy12split_at_mutCs9JgWGBoX3PY_12lance_linalg.exit11.i.i.preheader, %_RNvMNtCscI6d9CVNmLh_4core5sliceSy12split_at_mutCs9JgWGBoX3PY_12lance_linalg.exit11.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.ae, %_RNvMNtCscI6d9CVNmLh_4core5sliceSy12split_at_mutCs9JgWGBoX3PY_12lance_linalg.exit11.i.i ], [ %.sroa.0.016.i.i.ph, %_RNvMNtCscI6d9CVNmLh_4core5sliceSy12split_at_mutCs9JgWGBoX3PY_12lance_linalg.exit11.i.i.preheader ] ; 3 uses
  %i.z = xor i64 %.sroa.0.016.i.i, -1
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.016.i.i ; 2 uses
  %i.ab = getelementptr [8 x i8], ptr %i.r, i64 %i.z ; 2 uses
  %i.ac = load i64, ptr %i.aa, align 8, !alias.scope !1970, !noalias !1969, !noundef !18
  %i.ad = load i64, ptr %i.ab, align 8, !alias.scope !1971, !noalias !1968
  store i64 %i.ad, ptr %i.aa, align 8, !alias.scope !1970, !noalias !1969
  store i64 %i.ac, ptr %i.ab, align 8, !alias.scope !1971, !noalias !1968
  %i.ae = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ae, %i.q
  br i1 %exitcond.not.i.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSy7reverseCs9JgWGBoX3PY_12lance_linalg.exit, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSy12split_at_mutCs9JgWGBoX3PY_12lance_linalg.exit11.i.i, !llvm.loop !1967
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_RINvNtNtNtCscI6d9CVNmLh_4core9core_arch3x863avx17__mm256_permute_pdKl5_ECs9JgWGBoX3PY_12lance_linalg(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 32 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias nofree noundef nonnull readonly align 32 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #8 {
bb.a:
  %i.a = load <4 x double>, ptr %1, align 32
  %i.b = shufflevector <4 x double> %i.a, <4 x double> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  store <4 x double> %i.b, ptr %0, align 32
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_RINvNtNtNtCscI6d9CVNmLh_4core9core_arch3x863avx17__mm256_permute_psKl1_ECs9JgWGBoX3PY_12lance_linalg(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 32 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias nofree noundef nonnull readonly align 32 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #8 {
bb.a:
  %i.a = load <8 x float>, ptr %1, align 32
  %i.b = shufflevector <8 x float> %i.a, <8 x float> poison, <8 x i32> <i32 1, i32 0, i32 0, i32 0, i32 5, i32 4, i32 4, i32 4>
  store <8 x float> %i.b, ptr %0, align 32
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_RINvNtNtNtCscI6d9CVNmLh_4core9core_arch3x863avx17__mm256_permute_psKle_ECs9JgWGBoX3PY_12lance_linalg(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 32 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias nofree noundef nonnull readonly align 32 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #8 {
bb.a:
  %i.a = load <8 x float>, ptr %1, align 32
  %i.b = shufflevector <8 x float> %i.a, <8 x float> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 0, i32 6, i32 7, i32 4, i32 4>
  store <8 x float> %i.b, ptr %0, align 32
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_RINvNtNtNtCscI6d9CVNmLh_4core9core_arch3x863avx22__mm256_permute2f128_pdKl1_ECs9JgWGBoX3PY_12lance_linalg(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 32 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias noundef nonnull readonly align 32 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #8 {
bb.a:
  %i.a = load <4 x i64>, ptr %1, align 32
  %i.b = shufflevector <4 x i64> %i.a, <4 x i64> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i64> %i.b, ptr %0, align 32
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_RINvNtNtNtCscI6d9CVNmLh_4core9core_arch3x863avx22__mm256_permute2f128_psKl1_ECs9JgWGBoX3PY_12lance_linalg(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 32 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias noundef nonnull readonly align 32 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #8 {
bb.a:
  %i.a = load <4 x i64>, ptr %1, align 32
  %i.b = shufflevector <4 x i64> %i.a, <4 x i64> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i64> %i.b, ptr %0, align 32
  ret void
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef nonnull ptr @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared5pivot11median3_recNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSB14_11sort_by_keyyNCINvB16_13cluster_edgesINtNtNtNtBa_4iter8adapters3map3MapINtNtB3l_3zip3ZipINtNtB8_4iter4IteryEB45_ENCNvB16_23cluster_pairwise_result0EEs_0E0EB1a_(ptr nofree noundef nonnull readonly %0, ptr nofree noundef nonnull readonly %1, ptr nofree noundef nonnull readonly %2, i64 noundef range(i64 0, 36028797018963968) %3) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ugt i64 %3, 7
  br i1 %i.a, label %bb.b, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared5pivot7median3NtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSBZ_11sort_by_keyyNCINvB11_13cluster_edgesINtNtNtNtBa_4iter8adapters3map3MapINtNtB3f_3zip3ZipINtNtB8_4iter4IteryEB3Z_ENCNvB11_23cluster_pairwise_result0EEs_0E0EB15_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.c
  %i.e = mul nuw nsw i64 %i.b, 7                  ; 3 uses
  %i.f = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.e
  %i.g = tail call fastcc noundef ptr @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared5pivot11median3_recNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSB14_11sort_by_keyyNCINvB16_13cluster_edgesINtNtNtNtBa_4iter8adapters3map3MapINtNtB3l_3zip3ZipINtNtB8_4iter4IteryEB45_ENCNvB16_23cluster_pairwise_result0EEs_0E0EB1a_(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b)
  %i.h = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %i.e
  %i.j = tail call fastcc noundef ptr @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared5pivot11median3_recNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSB14_11sort_by_keyyNCINvB16_13cluster_edgesINtNtNtNtBa_4iter8adapters3map3MapINtNtB3l_3zip3ZipINtNtB8_4iter4IteryEB45_ENCNvB16_23cluster_pairwise_result0EEs_0E0EB1a_(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b)
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %i.e
  %i.m = tail call fastcc noundef ptr @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared5pivot11median3_recNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSB14_11sort_by_keyyNCINvB16_13cluster_edgesINtNtNtNtBa_4iter8adapters3map3MapINtNtB3l_3zip3ZipINtNtB8_4iter4IteryEB45_ENCNvB16_23cluster_pairwise_result0EEs_0E0EB1a_(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b)
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared5pivot7median3NtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSBZ_11sort_by_keyyNCINvB11_13cluster_edgesINtNtNtNtBa_4iter8adapters3map3MapINtNtB3f_3zip3ZipINtNtB8_4iter4IteryEB3Z_ENCNvB11_23cluster_pairwise_result0EEs_0E0EB15_.exit

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared5pivot7median3NtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSBZ_11sort_by_keyyNCINvB11_13cluster_edgesINtNtNtNtBa_4iter8adapters3map3MapINtNtB3f_3zip3ZipINtNtB8_4iter4IteryEB3Z_ENCNvB11_23cluster_pairwise_result0EEs_0E0EB15_.exit: ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 2 uses
  %i.n = getelementptr i8, ptr %.sroa.0.0, i64 24
  %.sroa.0.0.val13 = load i64, ptr %i.n, align 8, !noundef !18 ; 2 uses
  %i.o = getelementptr i8, ptr %.sroa.04.0, i64 24
  %.sroa.04.0.val14 = load i64, ptr %i.o, align 8, !noundef !18 ; 2 uses
  %i.p = icmp ult i64 %.sroa.0.0.val13, %.sroa.04.0.val14 ; 2 uses
  %i.q = getelementptr i8, ptr %.sroa.08.0, i64 24
  %.sroa.08.0.val12 = load i64, ptr %i.q, align 8, !noundef !18 ; 2 uses
  %i.r = icmp ult i64 %.sroa.0.0.val13, %.sroa.08.0.val12
  %i.s = xor i1 %i.p, %i.r
  %i.t = icmp ult i64 %.sroa.04.0.val14, %.sroa.08.0.val12
  %i.u = xor i1 %i.p, %i.t
  %..i = select i1 %i.u, ptr %.sroa.08.0, ptr %.sroa.04.0
  %.sroa.0.0.i = select i1 %i.s, ptr %.sroa.0.0, ptr %..i
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef nonnull ptr @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared5pivot11median3_recyNvYyNtNtBa_3cmp10PartialOrd2ltECs9JgWGBoX3PY_12lance_linalg(ptr nofree noundef nonnull readonly %0, ptr nofree noundef nonnull readonly %1, ptr nofree noundef nonnull readonly %2, i64 noundef range(i64 0, 144115188075855872) %3) unnamed_addr #9 {
bb.a:
  %i.a = icmp samesign ugt i64 %3, 7
  br i1 %i.a, label %bb.b, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared5pivot7median3yNvYyNtNtBa_3cmp10PartialOrd2ltECs9JgWGBoX3PY_12lance_linalg.exit

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.c
  %i.e = mul nuw nsw i64 %i.b, 7                  ; 3 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.e
  %i.g = tail call fastcc noundef ptr @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared5pivot11median3_recyNvYyNtNtBa_3cmp10PartialOrd2ltECs9JgWGBoX3PY_12lance_linalg(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b)
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.e
  %i.j = tail call fastcc noundef ptr @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared5pivot11median3_recyNvYyNtNtBa_3cmp10PartialOrd2ltECs9JgWGBoX3PY_12lance_linalg(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b)
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.e
  %i.m = tail call fastcc noundef ptr @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared5pivot11median3_recyNvYyNtNtBa_3cmp10PartialOrd2ltECs9JgWGBoX3PY_12lance_linalg(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b)
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared5pivot7median3yNvYyNtNtBa_3cmp10PartialOrd2ltECs9JgWGBoX3PY_12lance_linalg.exit

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared5pivot7median3yNvYyNtNtBa_3cmp10PartialOrd2ltECs9JgWGBoX3PY_12lance_linalg.exit: ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 2 uses
  %.sroa.0.0.val13 = load i64, ptr %.sroa.0.0, align 8, !alias.scope !43, !noalias !44, !noundef !18 ; 2 uses
  %.sroa.04.0.val14 = load i64, ptr %.sroa.04.0, align 8, !alias.scope !44, !noalias !43, !noundef !18 ; 2 uses
  %i.n = icmp ult i64 %.sroa.0.0.val13, %.sroa.04.0.val14 ; 2 uses
  %.sroa.08.0.val12 = load i64, ptr %.sroa.08.0, align 8, !alias.scope !44, !noalias !43, !noundef !18 ; 2 uses
  %i.o = icmp ult i64 %.sroa.0.0.val13, %.sroa.08.0.val12
  %i.p = xor i1 %i.n, %i.o
  %i.q = icmp ult i64 %.sroa.04.0.val14, %.sroa.08.0.val12
  %i.r = xor i1 %i.n, %i.q
  %..i = select i1 %i.r, ptr %.sroa.08.0, ptr %.sroa.04.0
  %.sroa.0.0.i = select i1 %i.p, ptr %.sroa.0.0, ptr %..i
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftyNvYyNtNtBa_3cmp10PartialOrd2ltECs9JgWGBoX3PY_12lance_linalg(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 1, 32) %1, i64 noundef range(i64 1, 14) %2) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ugt i64 %2, %1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1
  %.not1 = icmp samesign eq i64 %2, %1
  br i1 %.not1, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %2
  br label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailyNvYyNtNtBa_3cmp10PartialOrd2ltECs9JgWGBoX3PY_12lance_linalg.exit, %bb.c
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailyNvYyNtNtBa_3cmp10PartialOrd2ltECs9JgWGBoX3PY_12lance_linalg.exit
  %.sroa.0.02 = phi ptr [ %i.j, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailyNvYyNtNtBa_3cmp10PartialOrd2ltECs9JgWGBoX3PY_12lance_linalg.exit ], [ %i.c, %.lr.ph.preheader ] ; 4 uses
  %i.d = getelementptr inbounds i8, ptr %.sroa.0.02, i64 -8 ; 3 uses
  %.val9.i = load i64, ptr %.sroa.0.02, align 8, !alias.scope !1979, !noalias !1980, !noundef !18 ; 3 uses
  %.val10.i = load i64, ptr %i.d, align 8, !alias.scope !1980, !noalias !1979, !noundef !18 ; 2 uses
  %i.e = icmp ult i64 %.val9.i, %.val10.i
  br i1 %i.e, label %.preheader.preheader, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailyNvYyNtNtBa_3cmp10PartialOrd2ltECs9JgWGBoX3PY_12lance_linalg.exit

.preheader.preheader:                             ; preds = %.lr.ph
  store i64 %.val10.i, ptr %.sroa.0.02, align 8
  %i.f = icmp eq ptr %i.d, %0
  br i1 %i.f, label %._crit_edge8, label %.lr.ph7

.preheader:                                       ; preds = %.lr.ph7
  store i64 %.val8.i, ptr %.sroa.0.0.i6, align 8
  %i.g = icmp eq ptr %i.h, %0
  br i1 %i.g, label %._crit_edge8, label %.lr.ph7

.lr.ph7:                                          ; preds = %.preheader.preheader, %.preheader
  %.sroa.0.0.i6 = phi ptr [ %i.h, %.preheader ], [ %i.d, %.preheader.preheader ] ; 3 uses
  %i.h = getelementptr inbounds i8, ptr %.sroa.0.0.i6, i64 -8 ; 3 uses
  %.val8.i = load i64, ptr %i.h, align 8, !alias.scope !1980, !noalias !1979, !noundef !18 ; 2 uses
  %i.i = icmp ult i64 %.val9.i, %.val8.i
  br i1 %i.i, label %.preheader, label %._crit_edge8

._crit_edge8:                                     ; preds = %.preheader, %.lr.ph7, %.preheader.preheader
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %.preheader.preheader ], [ %0, %.preheader ], [ %.sroa.0.0.i6, %.lr.ph7 ]
  store i64 %.val9.i, ptr %.sroa.0.0.i.lcssa, align 8, !noalias !1981
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailyNvYyNtNtBa_3cmp10PartialOrd2ltECs9JgWGBoX3PY_12lance_linalg.exit

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailyNvYyNtNtBa_3cmp10PartialOrd2ltECs9JgWGBoX3PY_12lance_linalg.exit: ; preds = %.lr.ph, %._crit_edge8
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.j, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift4sortNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSBW_11sort_by_keyyNCINvBY_13cluster_edgesINtNtNtNtBa_4iter8adapters3map3MapINtNtB3b_3zip3ZipINtNtB8_4iter4IteryEB3V_ENCNvBY_23cluster_pairwise_result0EEs_0E0EB12_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 288230376151711744) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i93 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i98 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.aa, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.aa ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.dw, %bb.aa ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.du, %bb.aa ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyyNCINvB15_13cluster_edgesINtNtNtNtBa_4iter8adapters3map3MapINtNtB3k_3zip3ZipINtNtB8_4iter4IteryEB44_ENCNvB15_23cluster_pairwise_result0EEs_0E0EB19_.exit
  %.sroa.021.0 = phi i8 [ %i.bc, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyyNCINvB15_13cluster_edgesINtNtNtNtBa_4iter8adapters3map3MapINtNtB3k_3zip3ZipINtNtB8_4iter4IteryEB44_ENCNvB15_23cluster_pairwise_result0EEs_0E0EB19_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyyNCINvB15_13cluster_edgesINtNtNtNtBa_4iter8adapters3map3MapINtNtB3k_3zip3ZipINtNtB8_4iter4IteryEB44_ENCNvB15_23cluster_pairwise_result0EEs_0E0EB19_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph63, label %._crit_edge

.lr.ph63:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 13 uses
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.09.0 ; 7 uses
  %.not.i33 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i33, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCINvB14_13cluster_edgesINtNtNtNtB8_4iter8adapters3map3MapINtNtB3j_3zip3ZipINtNtB6_4iter4IteryEB43_ENCNvB14_23cluster_pairwise_result0EEs_0E0EB18_.exit.i.thread96, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCINvB14_13cluster_edgesINtNtNtNtB8_4iter8adapters3map3MapINtNtB3j_3zip3ZipINtNtB6_4iter4IteryEB43_ENCNvB14_23cluster_pairwise_result0EEs_0E0EB18_.exit.i.thread, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCINvB14_13cluster_edgesINtNtNtNtB8_4iter8adapters3map3MapINtNtB3j_3zip3ZipINtNtB6_4iter4IteryEB43_ENCNvB14_23cluster_pairwise_result0EEs_0E0EB18_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7Cluster7reverseBA_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr i8, ptr %i.o, i64 56
  %.val10.i = load i64, ptr %i.q, align 8, !alias.scope !2013, !noalias !2014, !noundef !18 ; 3 uses
  %i.r = getelementptr i8, ptr %i.o, i64 24
  %.val11.i = load i64, ptr %i.r, align 8, !alias.scope !2013, !noalias !2014, !noundef !18
  %i.s = icmp ult i64 %.val10.i, %.val11.i        ; 2 uses
  %.not70 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %i.s, label %.preheader, label %.preheader48

.preheader48:                                     ; preds = %bb.k
  br i1 %.not70, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCINvB14_13cluster_edgesINtNtNtNtB8_4iter8adapters3map3MapINtNtB3j_3zip3ZipINtNtB6_4iter4IteryEB43_ENCNvB14_23cluster_pairwise_result0EEs_0E0EB18_.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not70, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCINvB14_13cluster_edgesINtNtNtNtB8_4iter8adapters3map3MapINtNtB3j_3zip3ZipINtNtB6_4iter4IteryEB43_ENCNvB14_23cluster_pairwise_result0EEs_0E0EB18_.exit.i.thread96, label %.lr.ph57

.lr.ph:                                           ; preds = %.preheader48, %bb.l
  %.val9.i = phi i64 [ %.val8.i, %bb.l ], [ %.val10.i, %.preheader48 ]
  %.sroa.01.0.i.i53 = phi i64 [ %i.w, %bb.l ], [ 2, %.preheader48 ] ; 4 uses
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.01.0.i.i53
  %6 = add nsw i64 %.sroa.01.0.i.i53, -1
  %7 = icmp ult i64 %6, %i.n
  tail call void @llvm.assume(i1 %7)
  %i.u = getelementptr i8, ptr %i.t, i64 24
  %.val8.i = load i64, ptr %i.u, align 8, !alias.scope !2013, !noalias !2014, !noundef !18 ; 2 uses
  %i.v = icmp ult i64 %.val8.i, %.val9.i
  br i1 %i.v, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCINvB14_13cluster_edgesINtNtNtNtB8_4iter8adapters3map3MapINtNtB3j_3zip3ZipINtNtB6_4iter4IteryEB43_ENCNvB14_23cluster_pairwise_result0EEs_0E0EB18_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.w = add nuw i64 %.sroa.01.0.i.i53, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.w, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCINvB14_13cluster_edgesINtNtNtNtB8_4iter8adapters3map3MapINtNtB3j_3zip3ZipINtNtB6_4iter4IteryEB43_ENCNvB14_23cluster_pairwise_result0EEs_0E0EB18_.exit.i, label %.lr.ph

.lr.ph57:                                         ; preds = %.preheader, %bb.m
  %.val7.i = phi i64 [ %.val.i, %bb.m ], [ %.val10.i, %.preheader ]
  %.sroa.01.1.i.i56 = phi i64 [ %i.aa, %bb.m ], [ 2, %.preheader ] ; 4 uses
  %i.x = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.01.1.i.i56
  %8 = add nsw i64 %.sroa.01.1.i.i56, -1
  %9 = icmp ult i64 %8, %i.n
  tail call void @llvm.assume(i1 %9)
  %i.y = getelementptr i8, ptr %i.x, i64 24
  %.val.i = load i64, ptr %i.y, align 8, !alias.scope !2013, !noalias !2014, !noundef !18 ; 2 uses
  %i.z = icmp ult i64 %.val.i, %.val7.i
  br i1 %i.z, label %bb.m, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCINvB14_13cluster_edgesINtNtNtNtB8_4iter8adapters3map3MapINtNtB3j_3zip3ZipINtNtB6_4iter4IteryEB43_ENCNvB14_23cluster_pairwise_result0EEs_0E0EB18_.exit.i

bb.m:                                             ; preds = %.lr.ph57
  %i.aa = add nuw i64 %.sroa.01.1.i.i56, 1        ; 2 uses
  %exitcond77.not = icmp eq i64 %i.aa, %i.n
  br i1 %exitcond77.not, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCINvB14_13cluster_edgesINtNtNtNtB8_4iter8adapters3map3MapINtNtB3j_3zip3ZipINtNtB6_4iter4IteryEB43_ENCNvB14_23cluster_pairwise_result0EEs_0E0EB18_.exit.i, label %.lr.ph57

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCINvB14_13cluster_edgesINtNtNtNtB8_4iter8adapters3map3MapINtNtB3j_3zip3ZipINtNtB6_4iter4IteryEB43_ENCNvB14_23cluster_pairwise_result0EEs_0E0EB18_.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph57
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i56, %.lr.ph57 ], [ %i.n, %bb.m ], [ %.sroa.01.0.i.i53, %.lr.ph ], [ %i.n, %bb.l ] ; 6 uses
  %i.ab = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.ab)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCINvB14_13cluster_edgesINtNtNtNtB8_4iter8adapters3map3MapINtNtB3j_3zip3ZipINtNtB6_4iter4IteryEB43_ENCNvB14_23cluster_pairwise_result0EEs_0E0EB18_.exit.i.thread96: ; preds = %.preheader
  br i1 %.not5.i98, label %bb.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7Cluster12split_at_mutBA_.exit11.preheader.i.i

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCINvB14_13cluster_edgesINtNtNtNtB8_4iter8adapters3map3MapINtNtB3j_3zip3ZipINtNtB6_4iter4IteryEB43_ENCNvB14_23cluster_pairwise_result0EEs_0E0EB18_.exit.i.thread: ; preds = %.preheader48
  br i1 %.not5.i93, label %bb.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7Cluster7reverseBA_.exit

bb.n:                                             ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCINvB14_13cluster_edgesINtNtNtNtB8_4iter8adapters3map3MapINtNtB3j_3zip3ZipINtNtB6_4iter4IteryEB43_ENCNvB14_23cluster_pairwise_result0EEs_0E0EB18_.exit.i
  br i1 %i.s, label %bb.q, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7Cluster7reverseBA_.exit

bb.o:                                             ; preds = %bb.i
  %.sroa.0.0.i38 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 288230376151711744) %i.n, i64 %.sroa.01.0)
  %i.ac = shl nuw nsw i64 %.sroa.0.0.i38, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyyNCINvB15_13cluster_edgesINtNtNtNtBa_4iter8adapters3map3MapINtNtB3k_3zip3ZipINtNtB8_4iter4IteryEB44_ENCNvB15_23cluster_pairwise_result0EEs_0E0EB19_.exit

bb.p:                                             ; preds = %bb.i
  %.sroa.0.0.i37 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 288230376151711744) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_11sort_by_keyyNCINvB17_13cluster_edgesINtNtNtNtBa_4iter8adapters3map3MapINtNtB3m_3zip3ZipINtNtB8_4iter4IteryEB46_ENCNvB17_23cluster_pairwise_result0EEs_0E0EB1b_(ptr noalias noundef nonnull align 8 %i.o, i64 noundef %.sroa.0.0.i37, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !1986
  %i.ad = shl nuw nsw i64 %.sroa.0.0.i37, 1
  %i.ae = or disjoint i64 %i.ad, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyyNCINvB15_13cluster_edgesINtNtNtNtBa_4iter8adapters3map3MapINtNtB3k_3zip3ZipINtNtB8_4iter4IteryEB44_ENCNvB15_23cluster_pairwise_result0EEs_0E0EB19_.exit

_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7Cluster7reverseBA_.exit: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7Cluster12split_at_mutBA_.exit11.i.i, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCINvB14_13cluster_edgesINtNtNtNtB8_4iter8adapters3map3MapINtNtB3j_3zip3ZipINtNtB6_4iter4IteryEB43_ENCNvB14_23cluster_pairwise_result0EEs_0E0EB18_.exit.i.thread, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i4346 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCINvB14_13cluster_edgesINtNtNtNtB8_4iter8adapters3map3MapINtNtB3j_3zip3ZipINtNtB6_4iter4IteryEB43_ENCNvB14_23cluster_pairwise_result0EEs_0E0EB18_.exit.i.thread ], [ %.sroa.0.0.i.i94101105, %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7Cluster12split_at_mutBA_.exit11.i.i ]
  %i.af = shl nuw nsw i64 %.sroa.0.0.i.i4346, 1
  %i.ag = or disjoint i64 %i.af, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyyNCINvB15_13cluster_edgesINtNtNtNtBa_4iter8adapters3map3MapINtNtB3k_3zip3ZipINtNtB8_4iter4IteryEB44_ENCNvB15_23cluster_pairwise_result0EEs_0E0EB19_.exit

bb.q:                                             ; preds = %bb.n
  %i.ah = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2015), !noalias !2014
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2016), !noalias !2014
  %.not.i.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7Cluster7reverseBA_.exit, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7Cluster12split_at_mutBA_.exit11.preheader.i.i

_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7Cluster12split_at_mutBA_.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCINvB14_13cluster_edgesINtNtNtNtB8_4iter8adapters3map3MapINtNtB3j_3zip3ZipINtNtB6_4iter4IteryEB43_ENCNvB14_23cluster_pairwise_result0EEs_0E0EB18_.exit.i.thread96, %bb.q
  %i.ai = phi i64 [ %i.ah, %bb.q ], [ 1, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCINvB14_13cluster_edgesINtNtNtNtB8_4iter8adapters3map3MapINtNtB3j_3zip3ZipINtNtB6_4iter4IteryEB43_ENCNvB14_23cluster_pairwise_result0EEs_0E0EB18_.exit.i.thread96 ]
  %.sroa.0.0.i.i94101105 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCINvB14_13cluster_edgesINtNtNtNtB8_4iter8adapters3map3MapINtNtB3j_3zip3ZipINtNtB6_4iter4IteryEB43_ENCNvB14_23cluster_pairwise_result0EEs_0E0EB18_.exit.i.thread96 ] ; 2 uses
  %i.aj = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.0.0.i.i94101105
  br label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7Cluster12split_at_mutBA_.exit11.i.i

_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7Cluster12split_at_mutBA_.exit11.i.i: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7Cluster12split_at_mutBA_.exit11.i.i, %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7Cluster12split_at_mutBA_.exit11.preheader.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.at, %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7Cluster12split_at_mutBA_.exit11.i.i ], [ 0, %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7Cluster12split_at_mutBA_.exit11.preheader.i.i ] ; 3 uses
  %i.ak = xor i64 %.sroa.0.016.i.i, -1
  %i.al = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 3 uses
  %i.am = getelementptr [32 x i8], ptr %i.aj, i64 %i.ak ; 3 uses
  %i.an = load <2 x i64>, ptr %i.al, align 8, !alias.scope !2017, !noalias !2018
  %i.ao = load <2 x i64>, ptr %i.am, align 8, !alias.scope !2019, !noalias !2020
  store <2 x i64> %i.ao, ptr %i.al, align 8, !alias.scope !2017, !noalias !2018
  store <2 x i64> %i.an, ptr %i.am, align 8, !alias.scope !2019, !noalias !2020
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %i.ar = load <2 x i64>, ptr %i.ap, align 8, !alias.scope !2021, !noalias !2018
  %i.as = load <2 x i64>, ptr %i.aq, align 8, !alias.scope !2022, !noalias !2020
  store <2 x i64> %i.as, ptr %i.ap, align 8, !alias.scope !2021, !noalias !2018
  store <2 x i64> %i.ar, ptr %i.aq, align 8, !alias.scope !2022, !noalias !2020
  %i.at = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.at, %i.ai
  br i1 %exitcond.not.i.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7Cluster7reverseBA_.exit, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7Cluster12split_at_mutBA_.exit11.i.i

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyyNCINvB15_13cluster_edgesINtNtNtNtBa_4iter8adapters3map3MapINtNtB3k_3zip3ZipINtNtB8_4iter4IteryEB44_ENCNvB15_23cluster_pairwise_result0EEs_0E0EB19_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7Cluster7reverseBA_.exit
  %.sroa.0.0.i34 = phi i64 [ %i.ag, %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7Cluster7reverseBA_.exit ], [ %i.ae, %bb.p ], [ %i.ac, %bb.o ] ; 2 uses
  %i.au = lshr i64 %.sroa.023.0, 1
  %i.av = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.aw = sub nsw i64 %factor, %i.au
  %i.ax = add nuw nsw i64 %i.av, %factor
  %i.ay = mul i64 %i.aw, %.sroa.0.0
  %i.az = mul i64 %i.ax, %.sroa.0.0
  %i.ba = xor i64 %i.az, %i.ay
  %i.bb = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ba, i1 false)
  %i.bc = trunc nuw nsw i64 %i.bb to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph63, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyyNCINvB18_13cluster_edgesINtNtNtNtBa_4iter8adapters3map3MapINtNtB3n_3zip3ZipINtNtB8_4iter4IteryEB47_ENCNvB18_23cluster_pairwise_result0EEs_0E0EB1c_.exit
  %.sroa.02.162 = phi i64 [ %.sroa.02.0, %.lr.ph63 ], [ %i.bd, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyyNCINvB18_13cluster_edgesINtNtNtNtBa_4iter8adapters3map3MapINtNtB3n_3zip3ZipINtNtB8_4iter4IteryEB47_ENCNvB18_23cluster_pairwise_result0EEs_0E0EB1c_.exit ] ; 2 uses
  %.sroa.023.161 = phi i64 [ %.sroa.023.0, %.lr.ph63 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyyNCINvB18_13cluster_edgesINtNtNtNtBa_4iter8adapters3map3MapINtNtB3n_3zip3ZipINtNtB8_4iter4IteryEB47_ENCNvB18_23cluster_pairwise_result0EEs_0E0EB1c_.exit ] ; 4 uses
  %i.bd = add i64 %.sroa.02.162, -1               ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !noundef !18
  %.not29 = icmp ult i8 %i.bf, %.sroa.021.0
  br i1 %.not29, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyyNCINvB18_13cluster_edgesINtNtNtNtBa_4iter8adapters3map3MapINtNtB3n_3zip3ZipINtNtB8_4iter4IteryEB47_ENCNvB18_23cluster_pairwise_result0EEs_0E0EB1c_.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.161, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyyNCINvB18_13cluster_edgesINtNtNtNtBa_4iter8adapters3map3MapINtNtB3n_3zip3ZipINtNtB8_4iter4IteryEB47_ENCNvB18_23cluster_pairwise_result0EEs_0E0EB1c_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.162, %bb.r ], [ 1, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyyNCINvB18_13cluster_edgesINtNtNtNtBa_4iter8adapters3map3MapINtNtB3n_3zip3ZipINtNtB8_4iter4IteryEB47_ENCNvB18_23cluster_pairwise_result0EEs_0E0EB1c_.exit ] ; 3 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bh, align 1
  br i1 %i.k, label %bb.aa, label %bb.ab

bb.s:                                             ; preds = %bb.r
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bd
  %i.bj = load i64, ptr %i.bi, align 8, !noundef !18 ; 3 uses
  %i.bk = lshr i64 %i.bj, 1                       ; 8 uses
  %i.bl = lshr i64 %.sroa.023.161, 1              ; 6 uses
  %i.bm = add nuw i64 %i.bk, %i.bl                ; 4 uses
  %i.bn = sub i64 %.sroa.09.0, %i.bm
  %i.bo = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.bn ; 6 uses
  %i.bp = icmp samesign ugt i64 %i.bm, %3
  %i.bq = trunc i64 %.sroa.023.161 to i1
  %i.br = or i64 %i.bj, %.sroa.023.161
  %i.bs = trunc i64 %i.br to i1
  %or.cond3.i = or i1 %i.bp, %i.bs
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bt = trunc i64 %i.bj to i1
  br i1 %i.bt, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.bu = shl nuw nsw i64 %i.bm, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyyNCINvB18_13cluster_edgesINtNtNtNtBa_4iter8adapters3map3MapINtNtB3n_3zip3ZipINtNtB8_4iter4IteryEB47_ENCNvB18_23cluster_pairwise_result0EEs_0E0EB1c_.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.bq, label %bb.x, label %bb.z

bb.w:                                             ; preds = %bb.t
  %i.bv = or i64 %i.bk, 1
  %i.bw = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.bv, i1 true)
  %i.bx = trunc nuw nsw i64 %i.bw to i32
  %i.by = shl nuw nsw i32 %i.bx, 1
  %i.bz = xor i32 %i.by, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_11sort_by_keyyNCINvB17_13cluster_edgesINtNtNtNtBa_4iter8adapters3map3MapINtNtB3m_3zip3ZipINtNtB8_4iter4IteryEB46_ENCNvB17_23cluster_pairwise_result0EEs_0E0EB1b_(ptr noalias noundef nonnull align 8 %i.bo, i64 noundef range(i64 0, 288230376151711744) %i.bk, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i32 noundef %i.bz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !2001
  br label %bb.v

bb.x:                                             ; preds = %bb.z, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2023)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2024)
  %i.ca = icmp eq i64 %i.bk, 0
  %i.cb = icmp eq i64 %i.bl, 0
  %or.cond.i = or i1 %i.cb, %i.ca
  br i1 %or.cond.i, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyyNCINvBZ_13cluster_edgesINtNtNtNtBa_4iter8adapters3map3MapINtNtB3c_3zip3ZipINtNtB8_4iter4IteryEB3W_ENCNvBZ_23cluster_pairwise_result0EEs_0E0EB13_.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.sroa.0.0.i.i35 = tail call i64 @llvm.umin.i64(i64 %i.bl, i64 range(i64 0, -9223372036854775808) %i.bk) ; 2 uses
  %i.cc = icmp samesign ult i64 %3, %.sroa.0.0.i.i35
  br i1 %i.cc, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyyNCINvBZ_13cluster_edgesINtNtNtNtBa_4iter8adapters3map3MapINtNtB3c_3zip3ZipINtNtB8_4iter4IteryEB3W_ENCNvBZ_23cluster_pairwise_result0EEs_0E0EB13_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.y
  %i.cd = getelementptr inbounds nuw [32 x i8], ptr %i.bo, i64 %i.bk ; 3 uses
  %.not.i36 = icmp samesign ugt i64 %i.bk, %i.bl  ; 2 uses
  %spec.select.i = select i1 %.not.i36, ptr %i.cd, ptr %i.bo
  %i.ce = shl nuw nsw i64 %.sroa.0.0.i.i35, 5     ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.ce, i1 false), !alias.scope !2025
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 %i.ce ; 3 uses
  br i1 %.not.i36, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %.preheader.i
  %i.cg = phi ptr [ %i.cs, %.preheader.i ], [ %i.cf, %.critedge.i ] ; 2 uses
  %i.ch = phi ptr [ %i.cq, %.preheader.i ], [ %i.cd, %.critedge.i ] ; 2 uses
  %.sroa.0.0.i17.i = phi ptr [ %i.ck, %.preheader.i ], [ %i.m, %.critedge.i ]
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 -32 ; 2 uses
  %i.cj = getelementptr inbounds i8, ptr %i.cg, i64 -32 ; 2 uses
  %i.ck = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -32 ; 2 uses
  %i.cl = getelementptr i8, ptr %i.cg, i64 -8
  %.val.i.i = load i64, ptr %i.cl, align 8, !alias.scope !2024, !noalias !2026, !noundef !18
  %i.cm = getelementptr i8, ptr %i.ch, i64 -8
  %.val10.i.i = load i64, ptr %i.cm, align 8, !alias.scope !2023, !noalias !2027, !noundef !18
  %i.cn = icmp ult i64 %.val.i.i, %.val10.i.i     ; 3 uses
  %..i.i = select i1 %i.cn, ptr %i.ci, ptr %i.cj
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ck, ptr noundef nonnull align 8 dereferenceable(32) %..i.i, i64 32, i1 false), !alias.scope !2025, !noalias !2028
  %i.co = xor i1 %i.cn, true
  %i.cp = zext i1 %i.co to i64
  %i.cq = getelementptr inbounds nuw [32 x i8], ptr %i.ci, i64 %i.cp ; 3 uses
  %i.cr = zext i1 %i.cn to i64
  %i.cs = getelementptr inbounds nuw [32 x i8], ptr %i.cj, i64 %i.cr ; 3 uses
  %i.ct = icmp eq ptr %i.cq, %i.bo
  %i.cu = icmp eq ptr %i.cs, %2
  %or.cond.i.i = select i1 %i.ct, i1 true, i1 %i.cu
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_11sort_by_keyyNCINvB1c_13cluster_edgesINtNtNtNtBb_4iter8adapters3map3MapINtNtB3E_3zip3ZipINtNtB9_4iter4IteryEB4o_ENCNvB1c_23cluster_pairwise_result0EEs_0E0EB1g_.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.lr.ph.i.i
  %i.cv = phi ptr [ %i.df, %.lr.ph.i.i ], [ %i.bo, %.critedge.i ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.de, %.lr.ph.i.i ], [ %i.cd, %.critedge.i ] ; 3 uses
  %i.cw = phi ptr [ %i.dc, %.lr.ph.i.i ], [ %2, %.critedge.i ] ; 3 uses
  %i.cx = getelementptr i8, ptr %.sroa.0.02.i.i, i64 24
  %.sroa.0.0.val.i.i = load i64, ptr %i.cx, align 8, !alias.scope !2023, !noalias !2029, !noundef !18
  %i.cy = getelementptr i8, ptr %i.cw, i64 24
  %.val.i19.i = load i64, ptr %i.cy, align 8, !alias.scope !2024, !noalias !2030, !noundef !18
  %i.cz = icmp ult i64 %.sroa.0.0.val.i.i, %.val.i19.i ; 3 uses
  %i.da = xor i1 %i.cz, true
  %spec.select.i.i = select i1 %i.cz, ptr %.sroa.0.02.i.i, ptr %i.cw
end_hunk_0
